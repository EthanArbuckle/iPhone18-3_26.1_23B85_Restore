void TTenuousComponentFont::CopyTraitsInternal(TTenuousComponentFont *this@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyAttributeInternal(this, @"NSCTFontTraitsAttribute", &v6);
  *a2 = atomic_exchange(&v6, 0);

  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    v5 = 0;
    v6 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 664))(&v6, this, &v5);
    if (atomic_load_explicit(&v6, memory_order_acquire))
    {
      if (!atomic_load_explicit(a2, memory_order_acquire))
      {
      }

      if (atomic_load_explicit(a2, memory_order_acquire))
      {
        v4 = atomic_load_explicit(a2, memory_order_acquire);
        TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v4, @"NSCTFontTraitsAttribute");
      }
    }
  }
}

uint64_t TBaseFont::CreateTraitsValues(TBaseFont *this)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 152))(&v4);
  v1 = atomic_exchange(&v4, 0);

  if (v1)
  {
    TBaseFont::CreateTraitsValuesFromTraitsDictionary(v1, v2);
  }

  return 0;
}

void CreateTraitValues(double a1@<D0>, double a2@<D1>, double a3@<D2>, const __CFString *a4@<X4>, int a5@<W0>, int a6@<W1>, int a7@<W2>, int a8@<W3>, void *a9@<X8>)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a5)
  {
    if (a1 > 0.239)
    {
      a8 |= 2u;
    }

    TCFNumber::TCFNumber<double>(&v22, a1);
    CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontWeightTrait", atomic_load_explicit(&v22, memory_order_acquire));

    if (!a6)
    {
LABEL_3:
      if (!a7)
      {
        goto LABEL_7;
      }

      goto LABEL_4;
    }
  }

  else if (!a6)
  {
    goto LABEL_3;
  }

  if (a2 <= 0.15)
  {
    if (a2 < -0.15)
    {
      a8 |= 0x40u;
    }
  }

  else
  {
    a8 |= 0x20u;
  }

  TCFNumber::TCFNumber<double>(&v22, a2);
  CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontProportionTrait", atomic_load_explicit(&v22, memory_order_acquire));

  if (a7)
  {
LABEL_4:
    v18 = fabs(a3);
    v19 = v18 <= 0.000001;
    v20 = v18 > 0.000001;
    v21 = 0.0;
    if (!v19)
    {
      v21 = a3;
    }

    a8 |= v20;
    TCFNumber::TCFNumber<double>(&v22, v21);
    CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontSlantTrait", atomic_load_explicit(&v22, memory_order_acquire));
  }

LABEL_7:
  TCFNumber::TCFNumber<unsigned int>(&v22, a8 | 0x4000);
  CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontSymbolicTrait", atomic_load_explicit(&v22, memory_order_acquire));

  if (a4)
  {
    CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontUIFontDesignTrait", a4);
  }

  *a9 = atomic_exchange(&Mutable, 0);
}

void *TCFNumber::TCFNumber<unsigned int>(void *a1, unsigned int a2)
{
  valuePtr = a2;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &valuePtr);
  *a1 = atomic_exchange(&v4, 0);

  return a1;
}

unsigned int *TComponentFont::GetSymbolicTraitsInternal(atomic_ullong *this)
{
  if ((*(*this + 848))(this))
  {
    return *(this + 163);
  }

  result = atomic_load_explicit(this + 30, memory_order_acquire);
  if (!result)
  {
    result = TBaseFont::CreateTraitsValues(this);
  }

  if (result)
  {
    return *result;
  }

  return result;
}

void TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(uint64_t a1, atomic_ullong *a2, const void *a3)
{
  os_unfair_lock_lock_with_options();
  if (atomic_load_explicit(a2, memory_order_acquire) && !atomic_load_explicit((a1 + 120), memory_order_acquire))
  {
    TBaseFont::InitAttributesDict(a1);
  }

  explicit = atomic_load_explicit((a1 + 120), memory_order_acquire);
  if (explicit)
  {
    if (atomic_load_explicit(a2, memory_order_acquire))
    {
      CFDictionarySetValue(explicit, a3, atomic_load_explicit(a2, memory_order_acquire));
    }

    else
    {
      CFDictionaryRemoveValue(explicit, a3);
    }
  }

  os_unfair_lock_unlock((a1 + 112));
}

uint64_t TFont::CompareExtras(atomic_ullong *this, atomic_ullong *a2)
{
  explicit = atomic_load_explicit(this + 21, memory_order_acquire);
  v5 = atomic_load_explicit(a2 + 21, memory_order_acquire);
  if (explicit != v5)
  {
    v6 = !explicit || v5 == 0;
    if (v6 || !CFEqual(explicit, v5))
    {
      v18 = 0xAAAAAAAAAAAAAAAALL;
      TCFMutableDictionary::TCFMutableDictionary(&v18, atomic_load_explicit(this + 21, memory_order_acquire));
      v17 = 0xAAAAAAAAAAAAAAAALL;
      TCFMutableDictionary::TCFMutableDictionary(&v17, atomic_load_explicit(a2 + 21, memory_order_acquire));
      CFDictionaryRemoveValue(atomic_load_explicit(&v18, memory_order_acquire), @"NSCTFontFeatureSettingsAttribute");
      CFDictionaryRemoveValue(atomic_load_explicit(&v17, memory_order_acquire), @"NSCTFontFeatureSettingsAttribute");
      v8 = atomic_load_explicit(&v18, memory_order_acquire);
      v9 = atomic_load_explicit(&v17, memory_order_acquire);
      if (v8 != v9)
      {
        v7 = 0;
        if (!v8 || !v9)
        {
          goto LABEL_23;
        }

        if (!CFEqual(v8, v9))
        {
          v7 = 0;
          goto LABEL_23;
        }
      }

      if (atomic_load_explicit(this + 22, memory_order_acquire))
      {
        v10 = a2 + 22;
        if (atomic_load_explicit(v10, memory_order_acquire))
        {
          v16 = 0xAAAAAAAAAAAAAAAALL;
          CreateSetWithArray(atomic_load_explicit(this + 22, memory_order_acquire), &v16);
          v15 = 0xAAAAAAAAAAAAAAAALL;
          CreateSetWithArray(atomic_load_explicit(v10, memory_order_acquire), &v15);
          v11 = atomic_load_explicit(&v16, memory_order_acquire);
          v12 = atomic_load_explicit(&v15, memory_order_acquire);
          if (v11 == v12)
          {

LABEL_19:
            v7 = 2;
LABEL_23:

            return v7;
          }

          if (v11 && v12)
          {
            v13 = CFEqual(v11, v12);

            if (v13)
            {
              goto LABEL_19;
            }
          }

          else
          {
          }
        }
      }

      v7 = 1;
      goto LABEL_23;
    }
  }

  return 2;
}

double CTSwapLineBreakEpsilon(double a1)
{
  v1 = 0.0002;
  if (a1 != 0.0002)
  {
    operator new();
  }

  v2 = SetThreadSpecificData(4, 0, PointerToEpsilonDestructor);
  if (v2)
  {
    v1 = *v2;
    MEMORY[0x1865F22D0]();
  }

  return v1;
}

uint64_t CTFontGetLatin1GlyphsAndAdvanceWidths(uint64_t a1, void *a2, void *a3)
{
  result = 0;
  if (a1 && a2 && a3)
  {
    v5 = *(a1 + 40);
    explicit = atomic_load_explicit(v5 + 49, memory_order_acquire);
    if (!explicit)
    {
      TFont::InitASCIIDataCache(v5);
    }

    *a2 = explicit + 8;
    *a3 = explicit + 392;
    return 1;
  }

  return result;
}

void TASCIIDataCache::TASCIIDataCache(TASCIIDataCache *this, const TFont *a2)
{
  *this = a2;
  *(this + 1928) = 0u;
  (*(**(a2 + 51) + 680))(*(a2 + 51), 32, 96, this + 8);
  (*(**(a2 + 51) + 680))();
  TFont::GetUnsummedAdvancesForGlyphs(a2, this + 8, this + 49, 1, 192, 0, 0);
  *(this + 113) = -1;
  *(this + 158) = 0;
}

void TComponentFont::GetGlyphsForCharacterRange(const __CFString **this, CFRange a2, unsigned __int16 *a3)
{
  length = a2.length;
  location = a2.location;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  TComponentFont::GetCharacterOverride(&v11, this, &v12);
  v7 = v12;
  if (v12 == @"cmapOverride")
  {
    v9 = atomic_exchange(&v11, 0);
    if (v9)
    {
      BytePtr = CFDataGetBytePtr(v9);
    }

    else
    {
      BytePtr = 0;
    }

    if (length >= 1)
    {
      do
      {
        LODWORD(location) = location + 1;
        --length;
      }

      while (length);
    }
  }

  else
  {
    v13.location = location;
    v13.length = length;
    TBaseFont::GetGlyphsForCharacterRange(this, v13, a3);
    if (v7 == @"UnicodeCharSet" && length >= 1)
    {
      do
      {
        if (*a3 && !CFCharacterSetIsLongCharacterMember(atomic_load_explicit(&v11, memory_order_acquire), location))
        {
          *a3 = 0;
        }

        LODWORD(location) = location + 1;
        ++a3;
        --length;
      }

      while (length);
    }
  }
}

double GetWeightForLocalTrait(unsigned int a1)
{
  if (a1 > 0x11)
  {
    v1 = &kCTFontWeightRegular;
  }

  else
  {
    v1 = *(&off_1E6E3DA50 + a1);
  }

  return *v1;
}

uint64_t DetermineLanguageSpecificParameters(void)
{
  v0 = dword_1ED56746C;
  result = GetLocaleChangedCount();
  if (v0 != result)
  {
    v10 = 0xAAAAAAAAAAAAAAAALL;
    CopyPreferredLanguageCode(&v10);
    if (atomic_load_explicit(&v10, memory_order_acquire))
    {
      v2 = atomic_load_explicit(&v10, memory_order_acquire);
      v3 = v2;
      if (v2 == @"zh" || v2 && CFEqual(v2, @"zh"))
      {
        byte_1ED567461 = 1;
      }

      else
      {
        v4 = atomic_load_explicit(&v10, memory_order_acquire);
        v5 = v4;
        if (v4 == @"ja" || v4 && CFEqual(v4, @"ja"))
        {
          byte_1ED567461 = 1;
        }

        else
        {
          v6 = atomic_load_explicit(&v10, memory_order_acquire);
          v7 = v6;
          if (v6 == @"ko")
          {
            v8 = 1;
          }

          else if (v6)
          {
            v8 = CFEqual(v6, @"ko") != 0;
          }

          else
          {
            v8 = 0;
          }

          byte_1ED567461 = v8;
        }
      }

      v9 = [&unk_1EF275D68 objectForKeyedSubscript:{atomic_load_explicit(&v10, memory_order_acquire)}];
      if (v9)
      {
        LODWORD(v9) = [v9 unsignedIntValue];
      }

      dword_1ED567468 = v9;
    }

    result = GetLocaleChangedCount();
    dword_1ED56746C = result;
  }

  return result;
}

const void *GetFontAttributeID(const __CFString *key)
{
  if (qword_1ED5681F0 != -1)
  {
    dispatch_once_f(&qword_1ED5681F0, 0, GetFontAttributeID(__CFString const*)::$_0::__invoke);
  }

  v2 = _MergedGlobals_34;

  return CFDictionaryGetValue(v2, key);
}

void GetFontAttributeID(__CFString const*)::$_0::__invoke()
{
  keys[68] = *MEMORY[0x1E69E9840];
  keys[0] = @"NSFontNameAttribute";
  keys[1] = @"NSFontVisibleNameAttribute";
  keys[2] = @"NSFontFamilyAttribute";
  keys[3] = @"NSFontFaceAttribute";
  keys[4] = @"NSCTFontTraitsAttribute";
  keys[5] = @"NSCTFontVariationAxesAttribute";
  keys[6] = @"NSCTFontVariationAttribute";
  keys[7] = @"NSFontSizeAttribute";
  keys[8] = @"NSCTFontOpticalSizeAttribute";
  keys[9] = @"NSCTFontTrackAttribute";
  keys[10] = @"NSCTFontUnscaledTrackingAttribute";
  keys[11] = @"NSCTFontMatrixAttribute";
  keys[12] = @"NSFontMatrixAttribute";
  keys[13] = @"NSCTFontCascadeListAttribute";
  keys[14] = @"NSCTFontCharacterSetAttribute";
  keys[15] = @"NSCTFontLanguagesAttribute";
  keys[16] = @"NSCTFontBaselineAdjustAttribute";
  keys[17] = @"NSCTFontMacintoshEncodingsAttribute";
  keys[18] = @"NSCTFontFeaturesAttribute";
  keys[19] = @"NSCTFontFeatureSettingsAttribute";
  keys[20] = @"NSCTFontFixedAdvanceAttribute";
  keys[21] = @"NSCTFontOrientationAttribute";
  keys[22] = @"NSCTFontDesignLanguagesAttribute";
  keys[23] = @"NSCTFontComponentListAttribute";
  keys[24] = @"NSCTFontFileURLAttribute";
  keys[25] = @"NSCTFontFormatAttribute";
  keys[26] = @"NSCTFontStringEncodingAttribute";
  keys[27] = @"CTFontIgnoreScriptAnalysisAttribute";
  keys[28] = @"NSCTFontRegistrationScopeAttribute";
  keys[29] = @"NSCTFontPriorityAttribute";
  keys[30] = @"NSCTFontDomainAttribute";
  keys[31] = @"NSCTFontEnabledAttribute";
  keys[32] = @"NSCTFontReferenceURLAttribute";
  keys[33] = @"NSCTFontPostScriptNameAttribute";
  keys[34] = @"NSCTFontDownloadableAttribute";
  keys[35] = @"NSCTFontDownloadedAttribute";
  keys[36] = @"CTFontOriginalFeatureSettingsAttribute";
  keys[37] = @"CTFontShapingGlyphsAttribute";
  keys[38] = @"CTFontVerticalShapingGlyphsAttribute";
  keys[39] = @"CTFontShapingGlyphsFFSAttribute";
  keys[40] = @"CTFontVerticalShapingGlyphsFFSAttribute";
  keys[41] = @"CTFontLangSysListAttribute";
  keys[42] = @"NSCTFontUIUsageAttribute";
  keys[43] = @"CTFontCacheGlyphImagesAttribute";
  keys[44] = @"CTFontOpticalPointSizesAttribute";
  keys[45] = @"CTFontCSSWeightAttribute";
  keys[46] = @"CTFontCSSWidthAttribute";
  keys[47] = @"NSCTFontSizeCategoryAttribute";
  keys[48] = @"CTFontPaletteAttribute";
  keys[49] = @"CTFontPaletteColorsAttribute";
  keys[50] = @"CTFontMorxConversionResultAttribute";
  keys[51] = @"CTFontDescriptorLanguageAttribute";
  keys[52] = @"CTFontPostScriptNameAliases";
  keys[53] = @"NSCTFontUserInstalledAttribute";
  keys[54] = @"NSCTFontFallbackOptionAttribute";
  keys[55] = @"NSCTFontTextStylePlatformAttribute";
  keys[56] = @"NSCTFontTextStyleTraitsAttribute";
  keys[57] = @"CTFontLanguageAwareLineHeightRatioAttribute";
  keys[58] = @"CTFontLineSpacingOverrideAttribute";
  keys[59] = @"CTFontLegibilityWeightAttribute";
  keys[60] = @"CTFontIgnoreLegibilityWeightAttribute";
  keys[61] = @"NSCTFontCodableVariationAttribute";
  keys[62] = @"CTFontDownloadableStubAttribute";
  keys[63] = @"CTFontWeightAxisValueAttribute";
  keys[64] = @"CTFontEmojiMLUpscalingTimeoutAttribute";
  keys[65] = @"CTFontDisableColorBitmapSizeModAttribute";
  keys[66] = @"CTFontAllowCellularDownloadAttribute";
  keys[67] = @"NSCTFontTargetEnvironmentAttribute";
  memcpy(__dst, &unk_18477B470, sizeof(__dst));
  v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, __dst, 68, MEMORY[0x1E695E9D8], 0);
  v0 = atomic_exchange(&v1, 0);

  _MergedGlobals_34 = v0;
}

void TDescriptorSource::CopyFontDescriptorPerPostScriptName(atomic_ullong **a1@<X0>, const __CFString *a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = a3;
  explicit = a2;
  v41 = 0;
  v11 = a4 & 4;
  if (!(a4 & 8 | a3 & 0x10400) && TDescriptorSource::ShouldSubstituteInvisibleFontName(a2, a2))
  {
    CTFontLogSystemFontNameRequest();
    explicit = @"TimesNewRomanPSMT";
  }

  v40 = 0;
  if (v11 | v8 & 0x400)
  {
    if ((v8 & 0x20) != 0)
    {
      goto LABEL_11;
    }
  }

  else
  {
    CopyNormalizedSystemFontPostScriptName(explicit, &v42);

    explicit = atomic_load_explicit(&v40, memory_order_acquire);
    if ((v8 & 0x20) != 0)
    {
LABEL_11:
      v36 = 0;
      goto LABEL_12;
    }
  }

  if (dispatch_get_specific(TDescriptorSource::DoNotCacheKey))
  {
    v36 = 0;
    v8 |= 0x20uLL;
    goto LABEL_12;
  }

  if (a5)
  {
    goto LABEL_11;
  }

  if (TDescriptorSource::HasMissedRequest(explicit, v8, 0, v16))
  {
LABEL_86:
    *a6 = atomic_exchange(&v41, 0);
    goto LABEL_80;
  }

  *&v42.var0 = 0;
  v17 = TPerThreadLRUCache<TRequestCacheNode,(ThreadSpecificKey)3,16ul>::TPerThreadLRUCache(v43);
  if (TRequestCache::CopyResultForRequest(v17, explicit, v8, &v42, 0))
  {
    if (atomic_load_explicit(&v42, memory_order_acquire))
    {
      v18 = CFGetTypeID(atomic_load_explicit(&v42, memory_order_acquire));
      if (v18 == CFURLGetTypeID())
      {
        ValueAtIndex = atomic_load_explicit(&v42, memory_order_acquire);
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(&v42, memory_order_acquire), 0);
      }

      TDescriptorSource::CopyDescriptor(a1, ValueAtIndex, 0, 0, v43);

      TDescriptorSource::CopyFontDescriptorWithOptions(&v41, v8, 0, v43);
    }

    goto LABEL_86;
  }

  v36 = 1;
LABEL_12:
  if (v8 & 0x10 | v11)
  {
    v12 = (v8 >> 4) & 1;
  }

  else
  {
    if ((a4 & 2) != 0)
    {
      goto LABEL_19;
    }

    if (explicit == @".")
    {
      goto LABEL_18;
    }

    if (!explicit)
    {
      goto LABEL_27;
    }

    if (CFStringHasPrefix(explicit, @"."))
    {
LABEL_18:
      LOBYTE(v12) = IsSystemFontPostScriptName(explicit);
    }

    else
    {
LABEL_19:
      LOBYTE(v12) = 1;
    }
  }

  if (explicit != @"LastResort" && explicit && !CFEqual(explicit, @"LastResort") && CFStringCompare(explicit, @"LastResort", 1uLL) == kCFCompareEqualTo)
  {
    TDescriptorSource::CopyLastResort(a6);
    goto LABEL_80;
  }

  if ((v12 & 1) != 0 || (TDescriptorSource::CopySplicedDescriptorForName(&v42), atomic_exchange(&v41, atomic_exchange(&v42, 0)), *&v42.var0, !atomic_load_explicit(&v41, memory_order_acquire)))
  {
LABEL_27:
    v43[0] = 0xAAAAAAAAAAAAAAAALL;
    v43[0] = GSFontCopyFontFilePath();
    if (atomic_load_explicit(v43, memory_order_acquire))
    {
      if (qword_1ED567B20 != -1)
      {
        dispatch_once(&qword_1ED567B20, &__block_literal_global_623);
      }

      v13 = explicit;
      if (_MergedGlobals_16 == 1)
      {
        v13 = explicit;
        if (CFStringHasSuffix(atomic_load_explicit(v43, memory_order_acquire), @"PingFangUI.ttc"))
        {
          if (qword_1ED567AF0 != -1)
          {
            dispatch_once(&qword_1ED567AF0, &__block_literal_global_0);
          }

          v13 = explicit;
          if (qword_1ED567AE8)
          {
            v14 = off_1E6E38D08;
            v15 = 288;
            while (!CFEqual(*(v14 - 1), explicit))
            {
              v14 += 2;
              v15 -= 16;
              if (!v15)
              {
                v13 = explicit;
                goto LABEL_49;
              }
            }

            v13 = *v14;
            TCFRef<__CTFont const*>::Retain(v43, qword_1ED567AE8);
          }
        }
      }

LABEL_49:
      atomic_load_explicit(v43, memory_order_acquire);
      v20 = CGFontURLCreate();
      if (v20)
      {
        v21 = v20;
        TDescriptorSource::CopyDescriptor(a1, v20, atomic_load_explicit(v43, memory_order_acquire), v13, &v42);

        TDescriptorSource::AddCachedDescriptor(explicit, v8, atomic_load_explicit(&v41, memory_order_acquire), v22);
        TDescriptorSource::CopyFontDescriptorWithOptions(&v41, v8, 0, a6);
        v23 = v21;
LABEL_79:

        goto LABEL_80;
      }
    }

    else if (!v11)
    {

      if (atomic_load_explicit(&v40, memory_order_acquire))
      {
        explicit = atomic_load_explicit(&v40, memory_order_acquire);
      }
    }

    v24 = CGFontCreateWithFontName(explicit);
    v25 = v24;
    if (v24)
    {
      if (a4)
      {
        v26 = CGFontCopyPostScriptName(v24);
        v27 = v26;
        if (!v26 || CFStringCompare(v26, explicit, 0) && ((v8 & 0x200) != 0 || !IsPostScriptNameAlias(explicit, v27)))
        {
          *a6 = 0;
          v35 = v27;
          goto LABEL_77;
        }
      }

      TDescriptorSource::CopyDescriptor(a1, v25, 0, &v42);
    }

    if (atomic_load_explicit(&v41, memory_order_acquire))
    {
      goto LABEL_61;
    }

    *&v42.var0 = 0xAAAAAAAAAAAAAAAALL;
    CopyLowercasedString(explicit, &v42);
    v39 = 0xAAAAAAAAAAAAAAAALL;
    CopyPostScriptNameForAliasLowercased(atomic_load_explicit(&v42, memory_order_acquire), &v39);
    if (!atomic_load_explicit(&v39, memory_order_acquire))
    {

LABEL_61:
      if (atomic_load_explicit(&v41, memory_order_acquire) | a4 & 0x11)
      {
LABEL_67:
        if (!atomic_load_explicit(&v41, memory_order_acquire))
        {
          TDescriptorSource::CopyFontDescriptorFromVariationPostScriptName(a1, explicit, v8, a4, &v42);
        }

        TDescriptorSource::CopyFontDescriptorWithOptions(&v41, v8, 0, &v42);

        if (v36)
        {
          v33 = atomic_load_explicit(&v41, memory_order_acquire);
          if (!a4 || v33)
          {
            TDescriptorSource::AddCachedDescriptor(explicit, v8, atomic_load_explicit(&v41, memory_order_acquire), v32);
          }
        }

        *a6 = atomic_exchange(&v41, 0);
        goto LABEL_78;
      }

      v39 = 0xAAAAAAAAAAAAAAAALL;
      TDescriptorSource::CopyDescriptorsForRequestWithFamilyName(&v39, a1, explicit, v8);
      v28 = atomic_load_explicit(&v39, memory_order_acquire);
      if (v28)
      {
        v29 = v28;
        Count = CFArrayGetCount(v28);

        if (!Count)
        {
LABEL_66:

          goto LABEL_67;
        }

        v31 = atomic_load_explicit(&v39, memory_order_acquire);
        *&v42.var0 = 0xAAAAAAAA00000000;
        memset(&v42.var1, 0, 24);
        TBaseFont::CreateVariantWithTraitsMatchingDescriptors(&v42, v31, &v38);

        v28 = v38;
      }

      goto LABEL_66;
    }

    v34 = atomic_load_explicit(&v39, memory_order_acquire);
    TDescriptorSource::CopyFontDescriptorPerPostScriptName(a6, a1, v34, v8, a4, 0, 0, 0, -1, *MEMORY[0x1E695E4C0]);

    v35 = *&v42.var0;
LABEL_77:

LABEL_78:
    v23 = v25;
    goto LABEL_79;
  }

  TDescriptorSource::CopyFontDescriptorWithOptions(&v41, v8, 0, a6);
LABEL_80:
}

void CopyNormalizedSystemFontPostScriptName(__CFString *a1@<X0>, void *a2@<X8>)
{
  if (a1)
  {
    if (qword_1ED568240 != -1)
    {
      dispatch_once(&qword_1ED568240, &__block_literal_global_110);
    }

    if (qword_1ED568238)
    {
      Value = CFDictionaryGetValue(qword_1ED568238, @"PSNames");
    }

    else
    {
      Value = 0;
    }

    v10 = 0xAAAAAAAAAAAAAAAALL;
    CopyLowercasedString(a1, &v10);
    v5 = atomic_load_explicit(&v10, memory_order_acquire);
    if (Value)
    {
      v6 = CFDictionaryGetValue(Value, v5);
    }

    else
    {
      v6 = 0;
    }

    v9 = v6;
    v7 = atomic_exchange(&v9, 0);

    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = a1;
    }

    *a2 = v8;
  }

  else
  {
    *a2 = 0;
  }
}

void CopyLowercasedString(CFStringRef theString@<X0>, void *a2@<X8>)
{
  if (theString)
  {
    if (qword_1ED5680B0 != -1)
    {
      dispatch_once_f(&qword_1ED5680B0, 0, CopyLowercasedString(__CFString const*)::$_0::__invoke);
    }

    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, theString);
    explicit = atomic_load_explicit(&MutableCopy, memory_order_acquire);
    CFStringFold(explicit, 1uLL, _MergedGlobals_29);
    *a2 = atomic_exchange(&MutableCopy, 0);
  }

  else
  {
    *a2 = 0;
  }
}

BOOL TDescriptorSource::HasMissedRequest(TDescriptorSource *this, void *a2, void *a3, CFComparisonResult (*a4)(const void *, const void *, void *))
{
  if (!this)
  {
    return 0;
  }

  os_unfair_lock_lock_with_options();
  MissedRequests = GetMissedRequests();
  v10[0] = this;
  v10[1] = a2;
  v10[2] = a3;

  os_unfair_lock_unlock(&sMissedRequestCacheLock);
  return v8;
}

void *GetMissedRequests(void)
{
  v0 = qword_1ED567B18;
  if (!qword_1ED567B18)
  {
    v1 = operator new(0x28uLL, MEMORY[0x1E69E5398]);
    v0 = v1;
    if (v1)
    {
      *v1 = 0u;
      *(v1 + 1) = 0u;
      *(v1 + 8) = 1065353216;
    }

    qword_1ED567B18 = v1;
  }

  if (TGenerationSeed::sGeneration != dword_1ED567A70)
  {
    if (v0[3])
    {
      v2 = v0[2];
      if (v2)
      {
        do
        {
          v3 = *v2;

          operator delete(v2);
          v2 = v3;
        }

        while (v3);
      }

      v0[2] = 0;
      v4 = v0[1];
      if (v4)
      {
        for (i = 0; i != v4; ++i)
        {
          *(*v0 + 8 * i) = 0;
        }
      }

      v0[3] = 0;
      v0 = qword_1ED567B18;
    }

    dword_1ED567A70 = TGenerationSeed::sGeneration;
  }

  return v0;
}

void *std::unordered_set<anonymous namespace::TMissedRequest,anonymous namespace::TMissedRequestHasher,std::equal_to<anonymous namespace::TMissedRequest>,std::allocator<anonymous namespace::TMissedRequest>>::find[abi:fn200100](void *a1, uint64_t a2)
{
  v4 = CFHash(atomic_load_explicit(a2, memory_order_acquire));
  v5 = STL::hash_val<unsigned long,unsigned long,CFComparisonResult (*)(void const*,void const*,void *)>(v4, *(a2 + 8), *(a2 + 16));
  v6 = a1[1];
  if (!*&v6)
  {
    return 0;
  }

  v7 = v5;
  v8 = vcnt_s8(v6);
  v8.i16[0] = vaddlv_u8(v8);
  v9 = v8.u32[0];
  if (v8.u32[0] > 1uLL)
  {
    v10 = v5;
    if (v5 >= *&v6)
    {
      v10 = v5 % *&v6;
    }
  }

  else
  {
    v10 = (*&v6 - 1) & v5;
  }

  v11 = *(*a1 + 8 * v10);
  if (!v11)
  {
    return 0;
  }

  v12 = *v11;
  if (*v11)
  {
    do
    {
      v13 = v12[1];
      if (v13 == v7)
      {
        {
          return v12;
        }
      }

      else
      {
        if (v9 > 1)
        {
          if (v13 >= *&v6)
          {
            v13 %= *&v6;
          }
        }

        else
        {
          v13 &= *&v6 - 1;
        }

        if (v13 != v10)
        {
          return 0;
        }
      }

      v12 = *v12;
    }

    while (v12);
  }

  return v12;
}

uint64_t STL::hash_val<unsigned long,unsigned long,CFComparisonResult (*)(void const*,void const*,void *)>(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v3 = (a2 + ((a1 + 2654435769) << 6) + ((a1 + 2654435769) >> 2) + 2654435769u) ^ (a1 + 2654435769);
  v4 = 0x9DDFEA08EB382D69 * ((8 * (a3 & 0x1FFFFFFF) + 8) ^ HIDWORD(a3));
  v5 = 0x9DDFEA08EB382D69 * (HIDWORD(a3) ^ (v4 >> 47) ^ v4);
  return ((v3 << 6) + (v3 >> 2) - 0x622015F714C7D297 * (v5 ^ (v5 >> 47)) + 2654435769u) ^ v3;
}

uint64_t TRequestCache::CopyResultForRequest(uint64_t *a1, id a2, void *a3, atomic_ullong *a4, void *a5)
{
  v22[0] = a2;
  v22[1] = a3;
  v23[0] = a5;
  v23[1] = 0;
  v9 = *a1;
  v10 = *(*a1 + 8);
  if (v10 <= 0xF)
  {
    v11 = 0;
    v12 = v9 + 24;
    while (1)
    {
      v13 = v10;
      v14 = v12 + 48 * v10;
      if (*(v14 + 24) == v22[1] && *(v14 + 32) == v23[0])
      {
        explicit = atomic_load_explicit((v14 + 16), memory_order_acquire);
        v16 = atomic_load_explicit(v22, memory_order_acquire);
        if (explicit == v16)
        {
          break;
        }

        v17 = !explicit || v16 == 0;
        if (!v17 && CFEqual(explicit, v16))
        {
          break;
        }
      }

      if (v13 == *(v9 + 16))
      {
        goto LABEL_14;
      }

      v10 = *(v14 + 8);
      v11 = v13;
      if (v10 >= 0x10)
      {
        goto LABEL_13;
      }
    }

    v19 = *(v9 + 8);
    if (v13 == v19)
    {
      goto LABEL_20;
    }

    *(v12 + 48 * v11 + 8) = *(v14 + 8);
    v20 = *(v9 + 16);
    if (v13 == v20)
    {
      *(v14 + 8) = v19;
      *(v9 + 8) = v13;
      *(v9 + 16) = v11;
LABEL_19:
      *(v12 + 48 * v11 + 8) = v13;
LABEL_20:
      TCFRef<__CTFont const*>::Retain(a4, atomic_load_explicit((v14 + 40), memory_order_acquire));
      v18 = 1;
      goto LABEL_21;
    }

    *(v14 + 8) = v19;
    *(v9 + 8) = v13;
    v11 = v20;
    if (v20 < 0x10)
    {
      goto LABEL_19;
    }
  }

LABEL_13:
  __break(1u);
LABEL_14:

  v18 = 0;
LABEL_21:

  return v18;
}

void TDescriptorSource::CopyFontDescriptorWithOptions(atomic_ullong *a1@<X0>, int a2@<W1>, const void *a3@<X2>, void *a4@<X8>)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if ((*&a2 & 0x10400) != 0 && explicit != 0)
  {
    v24 = a2 & 0x10485;
    v9 = atomic_load_explicit(a1, memory_order_acquire);
    v10 = v9[5];

    v11 = atomic_load_explicit(a1, memory_order_acquire);
    v12 = v11;
    v13 = v11[5];
    if ((*(v13 + 4) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(v11[5], 0, 0.0);
    }

    v14 = atomic_load_explicit(v13 + 4, memory_order_acquire);

    v23 = v14;
    if (a3)
    {
      v22 = 0xAAAAAAAAAAAAAAAALL;
      TDescriptor::CopyAttributes(v10, &v21);
      TCFMutableDictionary::TCFMutableDictionary(&v22, atomic_load_explicit(&v21, memory_order_acquire));

      CFDictionarySetValue(atomic_load_explicit(&v22, memory_order_acquire), @"NSFontSizeAttribute", a3);
      v15 = atomic_load_explicit(a1, memory_order_acquire);
      v16 = atomic_load_explicit(&v22, memory_order_acquire);
      v17 = TCFBase<TDescriptor>::Allocate();
      v18 = v17;
      if (v17)
      {
        v19 = v23;
        v17[2] = 0;
        v17[3] = TDescriptor::Hash;
        v17[4] = 0;
        v17[5] = v17 + 6;
        TDescriptor::TDescriptor((v17 + 6), *(v15 + 40), v19, v16);
      }

      v21 = v18;

      v20 = v21;
      goto LABEL_13;
    }

    if ((v24 & ~*(v10 + 16)) != 0)
    {
      TCFBase_NEW<CTFontDescriptor,TBaseFont const*&,unsigned int &>(&v23, &v24, &v22);
      v20 = atomic_exchange(a1, atomic_exchange(&v22, 0));
LABEL_13:
    }
  }

  *a4 = atomic_exchange(a1, 0);
}

uint64_t TBaseFont::IsAppleColorEmojiUI(TBaseFont *this)
{
  if ((*(this + 46) & 0x200) == 0)
  {
    TBaseFont::DetermineFontFlags(this, 0x200u);
  }

  return (*(this + 45) >> 9) & 1;
}

void TBaseFont::CopyName(atomic_ullong *this@<X0>, const __CFString *a2@<X1>, atomic_ullong *a3@<X8>)
{
  TBaseFont::CopyAttributeInternal(this, @"CTFontNames", &v20);
  v6 = atomic_exchange(&v20, 0);

  Value = v6;
  v8 = Value;
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, a2);
  }

  *a3 = Value;

  if (!atomic_load_explicit(a3, memory_order_acquire))
  {
    if (@"CTFontSyntheticName" == a2 || a2 && @"CTFontSyntheticName" && CFEqual(a2, @"CTFontSyntheticName"))
    {
      a2 = @"CTFontPostScriptName";
    }

    else if (@"CTFontSyntheticFamilyName" == a2 || a2 && @"CTFontSyntheticFamilyName" && CFEqual(a2, @"CTFontSyntheticFamilyName"))
    {
      a2 = @"CTFontFamilyName";
    }

    if (@"CTFontPostScriptName" == a2 || (a2 ? (v9 = @"CTFontPostScriptName" == 0) : (v9 = 1), !v9 && CFEqual(@"CTFontPostScriptName", a2)))
    {
      v20 = atomic_load_explicit(this + 12, memory_order_acquire);

      v10 = v20;
LABEL_37:

      goto LABEL_38;
    }

    if (TBaseFont::SkipMetadata(this))
    {
LABEL_38:
      if (!atomic_load_explicit(a3, memory_order_acquire))
      {
        v16 = (*(*this + 584))(this);
        v17 = FontNameCodeForKey(a2);
        CopyFontNameInternal(v16, 0, v17, &v20);
      }

      if (atomic_load_explicit(a3, memory_order_acquire))
      {
        v20 = 0xAAAAAAAAAAAAAAAALL;
        TCFMutableDictionary::TCFMutableDictionary(&v20, v6);
        CFDictionarySetValue(atomic_load_explicit(&v20, memory_order_acquire), a2, atomic_load_explicit(a3, memory_order_acquire));
        TBaseFont::SetAttributeInternal<__CFDictionary const*>(this, atomic_load_explicit(&v20, memory_order_acquire), @"CTFontNames");
      }

      goto LABEL_42;
    }

    if (@"CTFontMarketingName" == a2 || a2 && @"CTFontMarketingName" && CFEqual(a2, @"CTFontMarketingName"))
    {
      v20 = 0xAAAAAAAAAAAAAAAALL;
      TBaseFont::CopyMetadata(this, 0, &v20);
      v11 = atomic_load_explicit(&v20, memory_order_acquire);
      if (v11)
      {
        v12 = v11;
        v13 = CFDictionaryGetValue(v11, @"MTD_Typeface_ID_TypefaceMarketingName");

        if (v13)
        {
          v14 = CFGetTypeID(v13);
          if (v14 == CFStringGetTypeID())
          {
            v19 = v13;
            v18 = atomic_exchange(&v19, 0);
            v15 = v19;
LABEL_32:

LABEL_35:
            goto LABEL_36;
          }
        }
      }

      else
      {
      }

      v18 = 0;
      goto LABEL_35;
    }

    v18 = 0;
    if (!(*(*this + 712))(this))
    {
LABEL_36:

      v10 = v18;
      goto LABEL_37;
    }

    CopyAttributeForSystemFont(atomic_load_explicit(this + 12, memory_order_acquire), a2, &v20);
    v15 = atomic_exchange(&v18, atomic_exchange(&v20, 0));
    goto LABEL_32;
  }

LABEL_42:
}

uint64_t _CTFontCreateWithNameAndSymbolicTraits(__CFString *a1, unsigned int a2, CGFloat a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = a1;
  if ((a2 & 2) != 0)
  {
    v6 = 700;
  }

  else
  {
    v6 = 400;
  }

  TDescriptorSource::TDescriptorSource(&v36);
  if ((a2 & 0x1000) != 0)
  {
    v8 = a2 & 0xFFFFEFFF;
    v9 = 1026;
  }

  else
  {
    v5 = TDescriptorSource::SubstituteFontNameForInvisibleFontName(v5, v7);
    v9 = 2;
    v8 = a2;
  }

  v10 = a2 & 1;
  if (v5 == @"Helvetica")
  {
    goto LABEL_11;
  }

  v11 = 16;
  if (!v5)
  {
    goto LABEL_12;
  }

  if (CFEqual(v5, @"Helvetica"))
  {
LABEL_11:
    v11 = 18;
  }

  else
  {
    v11 = 16;
  }

LABEL_12:
  v35 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::CopyFontDescriptorPerPostScriptName(&v36, v5, v9, v11, 0, &v35);
  if (!atomic_load_explicit(&v35, memory_order_acquire))
  {
    v34 = 0xAAAAAAAAAAAAAAAALL;
    TDescriptorSource::CopyMatchingDescriptorsForFamily(&v36, v5, &v34);
    v21 = atomic_load_explicit(&v34, memory_order_acquire);
    if (v21)
    {
      v22 = v21;
      Count = CFArrayGetCount(v21);

      if (Count < 1)
      {
        goto LABEL_27;
      }

      if ((a2 & 0x1000) == 0)
      {
        goto LABEL_34;
      }

      TCFNumber::TCFNumber<unsigned int>(&v33, v8);
      values = atomic_load_explicit(&v33, memory_order_acquire);
      keys = @"NSCTFontSymbolicTrait";
      v25 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);

      TDescriptorSource::CreateVariantWithTraitsMatchingDescriptors(atomic_load_explicit(&v34, memory_order_acquire), v25, &keys);
      if (atomic_load_explicit(&v35, memory_order_acquire))
      {
        v6 = CTFontCreateWithFontDescriptor(atomic_load_explicit(&v35, memory_order_acquire), a3, 0);

LABEL_35:
        v28 = v34;
LABEL_44:

        goto LABEL_45;
      }
    }

    else
    {
      v25 = 0;
    }

LABEL_27:
    v26 = TDescriptorSource::UIFontNameForFullName(v5, v24);
    if (!v26 || (TDescriptorSource::CopyFontDescriptorPerPostScriptName(&v36, v26, 0x402uLL, 1, 0, &keys), atomic_exchange(&v35, atomic_exchange(&keys, 0)), keys, !atomic_load_explicit(&v35, memory_order_acquire)))
    {
      v6 = 0;
      goto LABEL_35;
    }

    v27 = CTFontCreateWithFontDescriptor(atomic_load_explicit(&v35, memory_order_acquire), a3, 0);
LABEL_34:
    v6 = v27;
    goto LABEL_35;
  }

  if ((a2 & 0x1000) != 0 || (a2 & 3) == 0)
  {
LABEL_38:
    explicit = atomic_load_explicit(&v35, memory_order_acquire);
    if (v8)
    {
      CopyWithSymbolicTraits = CTFontDescriptorCreateCopyWithSymbolicTraits(explicit, v8, v8);
    }

    else
    {
      CopyWithSymbolicTraits = explicit;
    }

    v31 = CopyWithSymbolicTraits;
    if (!CopyWithSymbolicTraits)
    {
      CopyWithSymbolicTraits = atomic_load_explicit(&v35, memory_order_acquire);
    }

    v6 = CTFontCreateWithFontDescriptor(CopyWithSymbolicTraits, a3, 0);
    v28 = v31;
    goto LABEL_44;
  }

  v12 = atomic_load_explicit(&v35, memory_order_acquire);
  v13 = v12[5];

  TDescriptor::CopyAttribute(v13, @"NSFontFamilyAttribute", &keys);
  v14 = atomic_exchange(&keys, 0);

  keys = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::CopyMatchingDescriptorsForFamily(&v36, v14, &keys);
  v15 = atomic_load_explicit(&keys, memory_order_acquire);
  v16 = v15;
  v17 = v15 == 0;
  if (!v15)
  {
    goto LABEL_32;
  }

  v18 = CFArrayGetCount(v15);

  if (v18 >= 1)
  {
    values = CTFontDescriptorCopyAttribute(atomic_load_explicit(&v35, memory_order_acquire), @"NSCTFontTraitsAttribute");
    v16 = atomic_exchange(&values, 0);

    v19 = GetSymbolicTraitsFromTraits(v16) & 0x61;
    if (v10 != v19)
    {
      v10 |= v19;
      values = CTFontDescriptorCreateCopyWithSymbolicTraits(atomic_load_explicit(&v35, memory_order_acquire), v10, 0x61u);
    }

    values = CTFontDescriptorCopyAttribute(atomic_load_explicit(&v35, memory_order_acquire), @"NSCTFontPostScriptNameAttribute");
    v20 = atomic_exchange(&values, 0);

LABEL_32:

    goto LABEL_37;
  }

  v17 = 1;
LABEL_37:

  if (v17)
  {
    goto LABEL_38;
  }

LABEL_45:

  return v6;
}

__CFString *TDescriptorSource::SubstituteFontNameForInvisibleFontName(const __CFString *this, const __CFString *a2)
{
  v2 = this;
  if (TDescriptorSource::ShouldSubstituteInvisibleFontName(this, a2))
  {
    CTFontLogSystemFontNameRequest();
    return @"TimesNewRomanPSMT";
  }

  return v2;
}

uint64_t TDescriptorSource::ShouldSubstituteInvisibleFontName(CFStringRef theString, const __CFString *a2)
{
  if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
  {
    dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
  }

  if ((IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter & 0x10) == 0)
  {
    return 0;
  }

  if (theString != @".")
  {
    if (!theString)
    {
      return 0;
    }

    result = CFStringHasPrefix(theString, @".");
    if (!result)
    {
      return result;
    }
  }

  if (theString == @".AppleSystemUIFont")
  {
    return 0;
  }

  result = 1;
  if (theString)
  {
    return CFStringHasPrefix(theString, @".AppleSystemUIFont") == 0;
  }

  return result;
}

CFLocaleRef CopyLowercasedString(__CFString const*)::$_0::__invoke()
{
  result = CFLocaleCreate(*MEMORY[0x1E695E480], @"en_US");
  _MergedGlobals_29 = result;
  return result;
}

uint64_t TPerThreadLRUCache<TRequestCacheNode,(ThreadSpecificKey)3,16ul>::DestroyCache(uint64_t result)
{
  if (result)
  {
    v1 = result;
    for (i = 0; i != -768; i -= 48)
    {
      *(v1 + i + 744) = &unk_1EF257FE0;
    }

    JUMPOUT(0x1865F22D0);
  }

  return result;
}

void ___ZL18IsHVFCompatibleAppv_block_invoke()
{
  if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
  {
    dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
  }

  if ((IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter & 0x40) == 0)
  {
    v0 = 0;
    while (!_CFAppVersionCheckLessThan())
    {
      v0 += 8;
      if (v0 == 16)
      {
        return;
      }
    }

    _MergedGlobals_16 = 1;
  }
}

void TDescriptorSource::AddCachedDescriptor(TDescriptorSource *this, __CFString *a2, uint64_t a3, const __CTFontDescriptor *a4)
{
  if (a3)
  {
    v9 = 0;
    v6 = *(a3 + 40);
    if ((*(v6 + 16) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(*(a3 + 40), 0, 0.0);
    }

    explicit = atomic_load_explicit((v6 + 32), memory_order_acquire);
    if (explicit)
    {
      (*(*explicit + 200))(&v8);
    }

    TPerThreadLRUCache<TRequestCacheNode,(ThreadSpecificKey)3,16ul>::TPerThreadLRUCache(&v8);
    TRequestCache::AddResultForRequest(&v8, atomic_load_explicit(&v9, memory_order_acquire), this, a2, 0);
  }

  else
  {

    TDescriptorSource::AddMissedRequest(this, a2, 0, a4);
  }
}

void TRequestCache::AddResultForRequest(TRequestCache *this, void *a2, id a3, void *a4, CFComparisonResult (*a5)(const void *, const void *, void *))
{
  v17[0] = &unk_1EF257FE0;
  v17[1] = 0;
  v18[0] = a3;
  v18[1] = a4;
  v19[0] = a5;
  v19[1] = a2;
  v9 = *this;
  v10 = *(*this + 16);
  if (v10 < 0x10)
  {
    v11 = TRequestCacheNode::operator=((v9 + 24 + 48 * v10), v17);
    v12 = *(v9 + 8);
    while (v12 < 0x10)
    {
      v13 = v12;
      v14 = v9 + 24 + 48 * v12;
      v16 = *(v14 + 8);
      v15 = (v14 + 8);
      v12 = v16;
      if (v16 == *(v9 + 16))
      {
        v11[1] = *(v9 + 8);
        *(v9 + 8) = v10;
        *(v9 + 16) = v13;
        *v15 = v10;
        v17[0] = &unk_1EF257FE0;

        return;
      }
    }
  }

  __break(1u);
}

atomic_ullong *TRequestCacheNode::operator=(atomic_ullong *a1, atomic_ullong *a2)
{
  if (a1 != a2)
  {
    TCFRef<__CTFont const*>::Retain(a1 + 2, atomic_load_explicit(a2 + 2, memory_order_acquire));
    a1[3] = a2[3];
    TCFRef<__CTFont const*>::Retain(a1 + 5, atomic_load_explicit(a2 + 5, memory_order_acquire));
    a1[4] = a2[4];
  }

  return a1;
}

void TBaseFont::SetAttributeInternal<__CFDictionary const*>(uint64_t a1, const void *a2, const void *a3)
{
  os_unfair_lock_lock_with_options();
  explicit = atomic_load_explicit((a1 + 120), memory_order_acquire);
  if (a2)
  {
    if (!explicit)
    {
      TBaseFont::InitAttributesDict(a1);
    }

    v7 = atomic_load_explicit((a1 + 120), memory_order_acquire);
    if (v7)
    {
      CFDictionarySetValue(v7, a3, a2);
    }
  }

  else if (explicit)
  {
    CFDictionaryRemoveValue(explicit, a3);
  }

  os_unfair_lock_unlock((a1 + 112));
}

const void **TTenuousComponentFont::AddDescriptorAttributes(uint64_t a1, const void **a2, const void **a3)
{
  result = TComponentFont::AddDescriptorAttributes(a1, a2, a3);
  if (*(a1 + 793) == 1)
  {
    std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::push_back[abi:fn200100](a2, &kCTFontVariationAttribute);
    explicit = atomic_load_explicit((a1 + 768), memory_order_acquire);
    return std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](a3, &explicit);
  }

  return result;
}

void TTenuousComponentFont::CopyAttribute(atomic_ullong *this@<X0>, uint64_t a2@<X1>, atomic_ullong *a3@<X8>)
{
  v40 = *MEMORY[0x1E69E9840];
  if (a2 > 55)
  {
    if (a2 > 58)
    {
      if (a2 <= 60)
      {
        if (a2 != 59)
        {
          Value = atomic_load_explicit(this + 90, memory_order_acquire);
          v7 = Value;
          if (Value)
          {
            v8 = @"legibilityWeight";
LABEL_33:
            Value = CFDictionaryGetValue(v7, v8);
            goto LABEL_34;
          }

          goto LABEL_34;
        }

        explicit = atomic_load_explicit(this + 90, memory_order_acquire);
        if (!explicit)
        {
          goto LABEL_28;
        }

        v10 = @"lineSpacingOverride";
        goto LABEL_27;
      }

      if (a2 == 61)
      {
        Value = atomic_load_explicit(this + 90, memory_order_acquire);
        v7 = Value;
        if (Value)
        {
          v8 = @"ignoreLegibilityWeight";
          goto LABEL_33;
        }

LABEL_34:
        *a3 = Value;

        return;
      }

      if (a2 == 62)
      {
        if ((this[89] & 4) != 0 && (this[99] & 1) == 0)
        {
          v35 = 0xAAAAAAAAAAAAAAAALL;
          TTenuousComponentFont::CopyDefaultVariation(&v35, this);
          CreateCodableVariationFromDefaultVariation(atomic_load_explicit(this + 96, memory_order_acquire), atomic_load_explicit(&v35, memory_order_acquire), v32);
          *a3 = atomic_exchange(v32, 0);

LABEL_51:
          v20 = v35;
          goto LABEL_52;
        }

        goto LABEL_59;
      }

      goto LABEL_55;
    }

    if (a2 == 56)
    {
      Value = atomic_load_explicit(this + 90, memory_order_acquire);
      v7 = Value;
      if (Value)
      {
        v8 = @"platform";
        goto LABEL_33;
      }

      goto LABEL_34;
    }

    if (a2 != 57)
    {
      explicit = atomic_load_explicit(this + 90, memory_order_acquire);
      if (!explicit)
      {
LABEL_28:
        v35 = explicit;
        v12 = atomic_exchange(&v35, 0);
LABEL_50:
        *a3 = v12;
        goto LABEL_51;
      }

      v10 = @"languageAwareLineHeightRatio";
LABEL_27:
      explicit = CFDictionaryGetValue(explicit, v10);
      goto LABEL_28;
    }

    v13 = this + 97;
    if (!atomic_load_explicit(this + 97, memory_order_acquire))
    {
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v38[14] = v14;
      v38[13] = v14;
      v38[12] = v14;
      v38[11] = v14;
      v38[10] = v14;
      v38[9] = v14;
      v38[8] = v14;
      v38[7] = v14;
      v38[6] = v14;
      v38[5] = v14;
      v38[4] = v14;
      v38[3] = v14;
      v38[2] = v14;
      v38[1] = v14;
      v38[0] = v14;
      v35 = 0;
      v36 = 0;
      v37 = 0;
      v39 = v38;
      v33[14] = v14;
      v33[13] = v14;
      v33[12] = v14;
      v33[11] = v14;
      v33[10] = v14;
      v33[9] = v14;
      v33[8] = v14;
      v33[7] = v14;
      v33[6] = v14;
      v33[4] = v14;
      v33[5] = v14;
      v33[2] = v14;
      v33[3] = v14;
      v33[0] = v14;
      v33[1] = v14;
      memset(v32, 0, sizeof(v32));
      v34 = v33;
      if (((*(*this + 864))(this) & 1) != 0 || (*(*this + 856))(this))
      {
        v15 = (*(*this + 544))(this);
        if (v15)
        {
          v16 = v15;
          if (v15 != @"NSCTFontUIFontDesignDefault" && (!@"NSCTFontUIFontDesignDefault" || !CFEqual(v15, @"NSCTFontUIFontDesignDefault")))
          {
            std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::push_back[abi:fn200100](&v35, &kCTFontUIFontDesignTrait);
            v31 = v16;
            std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](v32, &v31);
          }
        }
      }

      v17 = atomic_load_explicit(this + 90, memory_order_acquire);
      if (v17)
      {
        v18 = v17;
        v19 = CFDictionaryGetValue(v17, @"weight");

        if (v19)
        {
          std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::push_back[abi:fn200100](&v35, &kCTFontWeightTrait);
          v31 = v19;
          std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](v32, &v31);
        }
      }

      else
      {
      }

      v22 = atomic_load_explicit(this + 90, memory_order_acquire);
      if (v22)
      {
        v23 = v22;
        v24 = CFDictionaryGetValue(v22, @"FontMetrics");

        if (v24)
        {
          v25 = CFDictionaryGetValue(v24, @"width");
          if (v25)
          {
            v26 = v25;
            *&v31 = NAN;
            CFNumberGetValue(v25, kCFNumberDoubleType, &v31);
            if (*&v31 != 0.0)
            {
              std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::push_back[abi:fn200100](&v35, &kCTFontWidthTrait);
              v31 = v26;
              std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](v32, &v31);
            }
          }

          ComponentAttribute = TComponentFont::GetComponentAttribute(this, @"NSCTFontUIUsageAttribute");
          if (ComponentAttribute && CFStringFind(ComponentAttribute, @"Italic", 0).location == -1 && CFDictionaryGetValue(v24, @"italicAngle"))
          {
            std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::push_back[abi:fn200100](&v35, &kCTFontSymbolicTrait);
            *&v31 = COERCE_DOUBLE(&unk_1EF27A6C8);
            std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](v32, &v31);
          }
        }
      }

      else
      {
      }

      v28 = atomic_load_explicit(this + 90, memory_order_acquire);
      if (v28)
      {
        v29 = v28;
        v30 = CFDictionaryGetValue(v28, @"grade");

        if (v30)
        {
          std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::push_back[abi:fn200100](&v35, &kCTFontGradeTrait);
          v31 = v30;
          std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](v32, &v31);
        }
      }

      else
      {
      }

      if (v35 != v36)
      {
        *&v31 = COERCE_DOUBLE(CFDictionaryCreate(*MEMORY[0x1E695E480], v35, v32[0], (v36 - v35) >> 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]));
        TCFRef<__CFDictionary const*>::CompareAndSwap(v13, 0, &kAdopted, atomic_exchange(&v31, 0), 4);
      }

      *&v31 = COERCE_DOUBLE(v32);
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v31);
      v32[0] = &v35;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v32);
    }

    v21 = atomic_load_explicit(v13, memory_order_acquire);
LABEL_79:
    *a3 = v21;
    return;
  }

  if (a2 <= 14)
  {
    switch(a2)
    {
      case 5:
        v35 = 0xAAAAAAAAAAAAAAAALL;
        (*(*this + 152))(&v35, this);
        v32[0] = atomic_exchange(&v35, 0);

        *a3 = atomic_exchange(v32, 0);
        v20 = v32[0];
LABEL_52:

        return;
      case 7:
        (*(*this + 112))(&v35, this);
        v12 = atomic_exchange(&v35, 0);
        goto LABEL_50;
      case 12:
LABEL_59:
        *a3 = 0;
        return;
    }

    goto LABEL_55;
  }

  switch(a2)
  {
    case 15:
      goto LABEL_56;
    case 43:
      v11 = @"NSCTFontUIUsageAttribute";
      goto LABEL_54;
    case 48:
      v11 = @"sizeCategory";
LABEL_54:
      v21 = TComponentFont::GetComponentAttribute(this, v11);
      goto LABEL_79;
  }

LABEL_55:
  if (((*(*this + 904))(this) & 1) == 0)
  {
    goto LABEL_59;
  }

LABEL_56:

  TBaseFont::CopyAttribute(this, a2, a3);
}

_anonymous_namespace_::TSingleAttrDescriptorCache *anonymous namespace::TSingleAttrDescriptorCache::TSingleAttrDescriptorCache(_anonymous_namespace_::TSingleAttrDescriptorCache *this)
{
  *this = 0;
  Table = GetTable();
  if (!Table || (v3 = Table[4]) == 0)
  {
    operator new();
  }

  if (*v3 != TGenerationSeed::sGeneration)
  {
    *v3 = TGenerationSeed::sGeneration;
    v12[0] = &unk_1EF257A38;
    v12[1] = 0;
    *v13 = 0u;
    *v14 = 0u;
    for (i = 24; i != 600; i += 48)
    {
    }

    v12[0] = &unk_1EF257A38;

    v5 = 0;
    *(v3 + 8) = xmmword_18475C390;
    v6 = xmmword_18475A340;
    v7 = vdupq_n_s64(0xBuLL);
    v8 = vdupq_n_s64(1uLL);
    v9 = vdupq_n_s64(2uLL);
    do
    {
      v10 = vaddq_s64(v6, v8);
      if (vmovn_s64(vcgtq_u64(v7, v6)).u8[0])
      {
        *(v3 + v5 + 32) = v10.i64[0];
      }

      if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xBuLL), *&v6)).i32[1])
      {
        *(v3 + v5 + 80) = v10.i64[1];
      }

      v6 = vaddq_s64(v6, v9);
      v5 += 96;
    }

    while (v5 != 576);
    *(v3 + 560) = 0;
  }

  *this = v3;
  return this;
}

_anonymous_namespace_::TSingleAttrDescriptor *anonymous namespace::TSingleAttrDescriptor::TSingleAttrDescriptor(_anonymous_namespace_::TSingleAttrDescriptor *this, id a2, void *a3, void *a4, const __CTFontDescriptor *a5)
{
  *this = &unk_1EF257A38;
  *(this + 1) = 0;
  *(this + 2) = a2;
  *(this + 3) = a3;
  *(this + 4) = a4;
  *(this + 5) = a5;
  return this;
}

uint64_t *std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__insert_with_size[abi:fn200100]<std::__wrap_iter<void const**>,std::__wrap_iter<void const**>>(uint64_t *result, char *__dst, char *__src, char *a4, uint64_t a5)
{
  if (a5 < 1)
  {
    return result;
  }

  v6 = __src;
  v8 = result;
  v10 = result[1];
  v9 = result[2];
  if (a5 > (v9 - v10) >> 3)
  {
    v11 = *result;
    v12 = a5 + (&v10[-*result] >> 3);
    if (v12 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v13 = &__dst[-v11];
    v14 = v9 - v11;
    if (v14 >> 2 > v12)
    {
      v12 = v14 >> 2;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF8)
    {
      v15 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v12;
    }

    v16 = v13 >> 3;
    v17 = (result + 3);
    v46[4] = v8 + 24;
    if (v15)
    {
      v18 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<void const*,30ul>>(v17, v15);
    }

    else
    {
      v18 = 0;
    }

    v35 = (v18 + 8 * v16);
    v36 = 8 * a5;
    v37 = v35;
    do
    {
      v38 = *v6++;
      *v37++ = v38;
      v36 -= 8;
    }

    while (v36);
    v39 = v18 + 8 * v15;
    memcpy(&v35[a5], __dst, *(v8 + 8) - __dst);
    v40 = *v8;
    v41 = &v35[a5] + *(v8 + 8) - __dst;
    *(v8 + 8) = __dst;
    v42 = (__dst - v40);
    v43 = v35 - (__dst - v40);
    memcpy(v43, v40, v42);
    v44 = *v8;
    *v8 = v43;
    *(v8 + 8) = v41;
    v45 = *(v8 + 16);
    *(v8 + 16) = v39;
    v46[2] = v44;
    v46[3] = v45;
    v46[0] = v44;
    v46[1] = v44;
    return std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(v46);
  }

  v19 = v10 - __dst;
  v20 = (v10 - __dst) >> 3;
  if (v20 >= a5)
  {
    v31 = &__dst[8 * a5];
    v32 = &v10[-8 * a5];
    v33 = result[1];
    while (v32 < v10)
    {
      v34 = *v32;
      v32 += 8;
      *v33++ = v34;
    }

    result[1] = v33;
    if (v10 != v31)
    {
      memmove(&__dst[8 * a5], __dst, v10 - v31);
    }

    v30 = 8 * a5;
    v28 = __dst;
    v29 = v6;
    goto LABEL_29;
  }

  v22 = a4 - &__src[v19];
  if (a4 != &__src[v19])
  {
    result = memmove(result[1], &__src[v19], a4 - &__src[v19]);
  }

  v23 = &v10[v22];
  *(v8 + 8) = &v10[v22];
  if (v20 >= 1)
  {
    v24 = &__dst[8 * a5];
    v25 = &v10[v22];
    if (&v23[-8 * a5] < v10)
    {
      v26 = &__dst[a4];
      v27 = &__dst[a4 + -8 * a5];
      do
      {
        *(v26 - v6) = *(v27 - v6);
        v27 += 8;
        v26 += 8;
      }

      while (v27 - v6 < v10);
      v25 = (v26 - v6);
    }

    *(v8 + 8) = v25;
    if (v23 != v24)
    {
      result = memmove(&__dst[8 * a5], __dst, v23 - v24);
    }

    if (v10 != __dst)
    {
      v28 = __dst;
      v29 = v6;
      v30 = v10 - __dst;
LABEL_29:

      return memmove(v28, v29, v30);
    }
  }

  return result;
}

void TDescriptor::TDescriptor(TDescriptor *this, const TDescriptor *a2, atomic_uint *a3, id a4)
{
  *this = &unk_1EF257E00;
  *(this + 1) = a4;
  v7 = atomic_load(a2 + 4);
  *(this + 4) = v7 | 0x80000000;
  *(this + 3) = 0;
  if (a3)
  {
    atomic_fetch_add_explicit(a3 + 2, 1u, memory_order_relaxed);
  }

  *(this + 4) = a3;
  *(this + 5) = atomic_load_explicit(a2 + 5, memory_order_acquire);
}

uint64_t TPerThreadLRUCache<anonymous namespace::TSingleAttrDescriptor,(ThreadSpecificKey)2,12ul>::DestroyCache(uint64_t result)
{
  if (result)
  {
    v1 = result;
    for (i = 0; i != -576; i -= 48)
    {
      *(v1 + i + 552) = &unk_1EF257A38;
    }

    JUMPOUT(0x1865F22D0);
  }

  return result;
}

id TBaseFont::CopyFontURL@<X0>(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  result = atomic_load_explicit(this + 10, memory_order_acquire);
  *a2 = result;
  return result;
}

uint64_t TBaseFont::IsAppleFont(TBaseFont *this)
{
  if ((*(this + 46) & 0x10) == 0)
  {
    TBaseFont::DetermineFontFlags(this, 0x10u);
  }

  return (*(this + 45) >> 4) & 1;
}

double std::__lerp[abi:fn200100]<double>(double a1, double a2, double a3)
{
  if (a1 <= 0.0 && a2 >= 0.0 || a1 >= 0.0 && a2 <= 0.0)
  {
    return (1.0 - a3) * a1 + a3 * a2;
  }

  v4 = a3 <= 1.0;
  if (a3 != 1.0)
  {
    v5 = a1 + a3 * (a2 - a1);
    v6 = !v4;
    v7 = (a2 <= a1) ^ v6;
    if (v5 <= a2)
    {
      v8 = a2;
    }

    else
    {
      v8 = v5;
    }

    if (v5 < a2)
    {
      a2 = v5;
    }

    if (v7)
    {
      return v8;
    }
  }

  return a2;
}

unint64_t TCGFontCache::GetCache(TCGFontCache *this)
{
  explicit = atomic_load_explicit(&TCGFontCache::sSharedCache, memory_order_acquire);
  if (!explicit)
  {
    operator new();
  }

  return explicit;
}

void TCGFontCache::CopyFont(TCGFontCache *this@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X2>, atomic_ullong *a4@<X8>)
{
  if (this)
  {
    *a4 = 0xAAAAAAAAAAAAAAAALL;
    Cache = TCGFontCache::GetCache(this);
    TPurgeableCache::RetainedValueForKey(Cache, this, &v14);
    *a4 = atomic_exchange(&v14, 0);

    if (!atomic_load_explicit(a4, memory_order_acquire))
    {
      CreateFontWithFontURL(this, a2, a3, &v14);

      if (atomic_load_explicit(a4, memory_order_acquire))
      {
        v11 = TCGFontCache::GetCache(v10);
        explicit = atomic_load_explicit(a4, memory_order_acquire);
        v13 = atomic_load_explicit(v11, memory_order_acquire);
        if (explicit)
        {
          [v13 setObject:explicit forKey:this];
        }

        else
        {
          [v13 removeObjectForKey:this];
        }
      }
    }
  }

  else
  {
    *a4 = 0;
  }
}

void CreateFontWithFontURL(const __CFURL *a1@<X0>, const __CFString *a2@<X1>, const __CFString *a3@<X2>, atomic_ullong *a4@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  *a4 = 0;
  if (!a2 || !a3)
  {
    FontsWithURL = CGFontCreateFontsWithURL();
    v7 = atomic_exchange(&FontsWithURL, 0);

    v8 = v7;
    v9 = v8;
    if (v8)
    {
      Count = CFArrayGetCount(v8);

      if (Count < 1)
      {
LABEL_11:
        v6 = v7;
        goto LABEL_12;
      }

      v11 = v7;
      v9 = v11;
      if (v11)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v11, 0);
      }

      else
      {
        ValueAtIndex = 0;
      }

      TCFRef<__CTFont const*>::Retain(a4, ValueAtIndex);
    }

    goto LABEL_11;
  }

  v6 = atomic_exchange(a4, CGFontCreateWithPathAndName());
LABEL_12:

  explicit = atomic_load_explicit(a4, memory_order_acquire);
  if (a1)
  {
    if (!explicit)
    {
      v14 = CFURLGetBytes(a1, 0, 0);
      if (v14 != -1 && v14 <= 383)
      {
        *&v15 = 0xAAAAAAAAAAAAAAAALL;
        *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v23[0] = v15;
        v23[1] = v15;
        v21 = 0;
        v22 = 0;
        FontsWithURL = 0;
        v24 = v23;
        if (v14 <= -2)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        v16 = v14 + 1;
        if (v14 > 29)
        {
          operator new();
        }

        v24 = v23 + v14 + 1;
        FontsWithURL = v23;
        v22 = v23 + v16;
        bzero(v23, v16);
        v21 = v23 + v16;
        v17 = CFURLGetBytes(a1, v23, v23 + v16 + ~v23);
        if (v21 - FontsWithURL > v17)
        {
          *(FontsWithURL + v17) = 0;
          location = CFURLGetByteRangeForComponent(a1, kCFURLComponentNetLocation, 0).location;
          p_FontsWithURL = 0;
          if (location == -1)
          {
LABEL_24:
            p_FontsWithURL = &FontsWithURL;
            std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](&p_FontsWithURL);
            return;
          }

          if (v21 - FontsWithURL > location)
          {
            if (sscanf(FontsWithURL + location, "iNmEmOrYcGfOnT_%p", &p_FontsWithURL) == 1)
            {
              TCFRef<__CTFont const*>::Retain(a4, p_FontsWithURL);
            }

            goto LABEL_24;
          }
        }

        __break(1u);
      }
    }
  }
}

void TCharStreamCFAttrString::TCharStreamCFAttrString(TCharStreamCFAttrString *this, const __CFAttributedString *a2)
{
  *(this + 4) = 0;
  *(this + 5) = 0;
  *this = &unk_1EF259270;
  *(this + 1) = 0;
  *(this + 6) = CFAttributedStringCreateCopy(*MEMORY[0x1E695E480], a2);
  v3 = CFAttributedStringGetString(atomic_load_explicit(this + 6, memory_order_acquire));
  v4 = atomic_exchange(&v3, 0);
  TCharStreamCFString::SetString(this, &v4);
}

const UniChar *TCharStreamCFString::SetString(void *a1, atomic_ullong *a2)
{
  v3 = a1 + 4;

  a1[2] = CFStringGetLength(atomic_load_explicit(v3, memory_order_acquire));
  result = CFStringGetCharactersPtr(atomic_load_explicit(v3, memory_order_acquire));
  a1[3] = result;
  return result;
}

void TTypesetter::TTypesetter(TTypesetter *this, uint64_t *a2, CFDictionaryRef theDict)
{
  v4 = *a2;
  v3 = a2[1];
  if (v3)
  {
    atomic_fetch_add_explicit((v3 + 8), 1uLL, memory_order_relaxed);
  }

  *this = v4;
  *(this + 1) = v3;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = 0;
  *(this + 8) = this + 40;
  *(this + 184) = 0;
  *(this + 72) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 149) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 176) = 0;
  *(this + 25) = 0;
  *(this + 26) = 0;
  *(this + 24) = 0;
  *(this + 16) = 0xFFEFFFFFFFFFFFFFLL;
  *(this + 27) = *a2;
  *(this + 65) = 0;
  *(this + 264) = 0;
  *(this + 128) = 0;
  *(this + 14) = 0u;
  *(this + 15) = 0u;
  *(this + 77) = 1;
  if (theDict)
  {
    TTypesetter::UnpackOptions(this, theDict);
  }
}

id TTypesetterAttrString::Initialize(TTypesetterAttrString *this, const __CFAttributedString *a2, int a3)
{
  v5 = this;
  v173 = *MEMORY[0x1E69E9840];
  v6 = *(*(this + 27) + 16);
  result = [_CTNativeGlyphStorage newWithCount:v6 capacity:v6];
  if (result)
  {
    v8 = result;
    v169 = 0xAAAAAAAAFFFFFFFFLL;
    memset(v168, 170, sizeof(v168));
    v170 = 0;
    v9 = *(v5 + 27);
    v168[0] = result;
    v168[1] = v9;
    memset(&v168[2], 0, 184);
    v168[22] = *(v9 + 16);
    v168[25] = v5;
    memset(&v168[26], 0, 32);
    LODWORD(v169) = 1065353216;
    v160 = 0;
    v161 = &v160;
    v162 = 0x6812000000;
    v163 = __Block_byref_object_copy_;
    v164 = __Block_byref_object_dispose_;
    v165 = 0;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v167 = 0xAAAAAAAAAAAAAA00;
    v166[0] = v10;
    v166[1] = v10;
    v166[2] = v10;
    LOBYTE(v166[0]) = 0;
    Table = GetTable();
    v137 = v8;
    if (Table)
    {
      v12 = *Table;
    }

    else
    {
      v12 = 0;
    }

    v159.location = 0;
    v159.length = 0;
    if (v6 >= 1)
    {
      v13 = 0;
      v14 = 0;
      v149 = xmmword_18475BA28;
      v15 = 0xAAAAAAAAAAAAAA00;
      memset(v148, 170, sizeof(v148));
      v146 = unk_18475B9F8;
      v147 = xmmword_18475B9E8;
      v144 = unk_18475BA18;
      v145 = xmmword_18475BA08;
      memset(v143, 170, sizeof(v143));
      v141 = a2;
      while (1)
      {
        effectiveRange.location = 0xAAAAAAAAAAAAAAAALL;
        effectiveRange.length = 0xAAAAAAAAAAAAAAAALL;
        if (v14)
        {
          location = v159.location;
          length = v159.length;
          v159.location = 0;
          v159.length = 0;
          effectiveRange.location = location;
          effectiveRange.length = length;
          Attributes = v15;
        }

        else
        {
          Attributes = CFAttributedStringGetAttributes(a2, v13, &effectiveRange);
          location = effectiveRange.location;
          length = effectiveRange.length;
        }

        v19 = location + length;
        v150 = location + length < v6;
        if (location + length < v6)
        {
          do
          {
            v15 = CFAttributedStringGetAttributes(a2, v19, &v159);
            if (v15 != Attributes)
            {
              break;
            }

            effectiveRange.length += v159.length;
            v19 = effectiveRange.location + effectiveRange.length;
          }

          while (effectiveRange.location + effectiveRange.length < v6);
        }

        *&v172[96] = v149;
        *&v172[112] = v148[2];
        *&v172[128] = v148[1];
        *&v172[144] = v148[0];
        *&v172[32] = v147;
        *&v172[48] = v146;
        *&v172[64] = v145;
        *&v172[80] = v144;
        *v172 = v143[1];
        *&v172[16] = v143[0];
        v172[0] = 0;
        v172[152] = 0;
        if (v12 && Attributes == atomic_load_explicit(v12, memory_order_acquire))
        {
          v20 = (v12 + 8);
        }

        else
        {
          TAttributes::TAttributes(v152, Attributes, *(v5 + 27), effectiveRange, 0);
          if (v172[152] == 1)
          {
            TAttributes::operator=(v172, v152);
          }

          else
          {
            *&v172[49] = 0;
            v172[51] = 0;
            v172[56] = 0;
            v172[104] = 0;
            *&v172[144] = 0;
            memset(v172, 0, 48);
            *&v172[120] = 0;
            *&v172[128] = 0;
            TAttributes::operator=(v172, v152);
            v172[152] = 1;
          }

          TAttributes::~TAttributes(v152);
          if ((v172[152] & 1) == 0)
          {
            goto LABEL_171;
          }

          v20 = v172;
        }

        if (!IsLanguageIdentifierSuitableForKnownUrduSequences(atomic_load_explicit(v20 + 3, memory_order_acquire)) || !Attributes)
        {
          goto LABEL_83;
        }

        v142 = v12;
        Value = CFDictionaryGetValue(Attributes, @"NSFont");
        if (!Value)
        {
          goto LABEL_82;
        }

        v22 = Value;
        if (!TFont::IsSystemUIFontAndForShaping(Value[5], v152))
        {
          goto LABEL_82;
        }

        v23 = v161;
        v140 = v20;
        if ((v161[12] & 1) == 0)
        {
          String = CFAttributedStringGetString(a2);
          v25 = v161;
          if (*(v161 + 96) == 1)
          {
            std::deque<CFRange>::~deque[abi:fn200100]((v161 + 6));
          }

          *(v25 + 4) = 0u;
          *(v25 + 5) = 0u;
          *(v25 + 3) = 0u;
          *(v25 + 96) = 1;
          v151[0] = MEMORY[0x1E69E9820];
          v151[1] = 3221225472;
          v151[2] = ___ZN21TTypesetterAttrString10InitializeEPK20__CFAttributedStringb_block_invoke;
          v151[3] = &unk_1E6E375D0;
          v151[4] = &v160;
          if ((v13 & 0x8000000000000000) == 0 && v6 - v13 >= 1)
          {
            EnumerateKnownUrduSequencesInString(String, v13, v6 - v13, 1, v151);
          }

          v23 = v161;
          v20 = v140;
          a2 = v141;
          if ((v161[12] & 1) == 0)
          {
            goto LABEL_82;
          }
        }

        if (!v23[11] || ((v26 = effectiveRange.location, v27 = (*(v23[7] + ((v23[10] >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * v23[10]), v28 = *v27, v29 = v27[1] + *v27, effectiveRange.length + effectiveRange.location >= v29) ? (v30 = v27[1] + *v27) : (v30 = effectiveRange.length + effectiveRange.location), v28 <= effectiveRange.location ? (v31 = effectiveRange.location < v29) : (v31 = 0), !v31 && (effectiveRange.location <= v28 ? (v32 = v28 < effectiveRange.length + effectiveRange.location) : (v32 = 0), v26 = *v27, !v32)) || v30 <= v26)
        {
LABEL_82:
          v12 = v142;
LABEL_83:
          v63 = TGlyphEncoder::EncodeChars(v168, effectiveRange.location, effectiveRange.length, v20, 0);
          v170 |= v63;
          goto LABEL_84;
        }

        CopyForKnownUrduSequences = CTFontCreateCopyForKnownUrduSequences(v22);
        if (CopyForKnownUrduSequences)
        {
          break;
        }

LABEL_162:

        v120 = effectiveRange.location - v13 + effectiveRange.length;
        effectiveRange.location = v13;
        effectiveRange.length = v120;
        v12 = v142;
        if (v120 >= 1)
        {
          goto LABEL_83;
        }

LABEL_84:
        if (v172[152] == 1 && (a3 & 1) == 0)
        {
          if (v12)
          {
            TCFRef<__CTFont const*>::Retain(v12, Attributes);
            TAttributes::operator=((v12 + 8), v20);
          }

          else
          {
            v12 = operator new(0xA0uLL, MEMORY[0x1E69E5398]);
            if (v12)
            {
              v152[0] = Attributes;
              *v12 = atomic_exchange(v152, 0);
              *(v12 + 57) = 0;
              v12[59] = 0;
              v12[64] = 0;
              v12[112] = 0;
              *(v12 + 19) = 0;
              *(v12 + 24) = 0u;
              *(v12 + 40) = 0u;
              *(v12 + 8) = 0u;
              *(v12 + 16) = 0;
              *(v12 + 17) = 0;
              TAttributes::operator=((v12 + 8), v20);
            }

            SetThreadSpecificData(0, v12, TTypesetter::DestroyAttributesCache);
          }
        }

        v64 = effectiveRange.length;
        v14 = v150;
        if (v172[152] == 1)
        {
          TAttributes::~TAttributes(v172);
        }

        v13 += v64;
        if (v13 >= v6)
        {
          goto LABEL_164;
        }
      }

      v156 = xmmword_18475BAC8;
      memset(v157, 170, sizeof(v157));
      v153 = unk_18475BA98;
      v154 = xmmword_18475BAA8;
      v155 = unk_18475BAB8;
      memset(v152, 170, sizeof(v152));
      v130 = CopyForKnownUrduSequences;
      TAttributes::TAttributes(v152, v20, CopyForKnownUrduSequences);
      if ((v161[12] & 1) == 0)
      {
        goto LABEL_170;
      }

      v34 = v161[10];
      v35 = v161[7];
      v36 = (v35 + 8 * (v34 >> 8));
      v129 = v5;
      v128 = a3;
      if (v161[8] == v35)
      {
        v139 = v161;
        v38 = 0;
      }

      else
      {
        v37 = *v36;
        v38 = *v36 + 16 * v34;
        v138 = *(v35 + (((v161[11] + v34) >> 5) & 0x7FFFFFFFFFFFFF8)) + 16 * (*(v161 + 88) + v34);
        if (v38 != v138)
        {
          v39 = (v35 + 8 * (v34 >> 8));
          v40 = v39;
          v41 = (*v36 + 16 * v34);
          v126 = v39;
          v131 = v41;
          v134 = v41;
          do
          {
            v42 = *v41;
            v43 = effectiveRange.length + effectiveRange.location;
            if (effectiveRange.length + effectiveRange.location <= *v41)
            {
              break;
            }

            v44 = v41[1] + v42;
            if (v44 <= v43)
            {
              v45 = (v41 - v37) >> 4;
              if (v45 < 0)
              {
                v48 = 254 - v45;
                v40 = &v39[-8 * (v48 >> 8)];
                v47 = *v40 + 16 * ~v48;
              }

              else
              {
                v46 = v45 + 1;
                v40 = &v39[8 * (v46 >> 8)];
                v47 = *v40 + 16 * v46;
              }

              v134 = v47;
            }

            if (v44 >= v43)
            {
              v49 = effectiveRange.length + effectiveRange.location;
            }

            else
            {
              v49 = v41[1] + v42;
            }

            v50 = v49 - effectiveRange.location;
            v51 = effectiveRange.location < v44;
            if (effectiveRange.location < v44)
            {
              v52 = effectiveRange.location;
            }

            else
            {
              v52 = 0;
            }

            if (!v51)
            {
              v50 = 0;
            }

            v53 = v49 - v42;
            v54 = effectiveRange.location <= v42 ? *v41 : v52;
            v55 = effectiveRange.location <= v42 ? v53 : v50;
            if (v55 < 1)
            {
              break;
            }

            if (v54 <= v13)
            {
              v57 = v170;
            }

            else
            {
              v56 = TGlyphEncoder::EncodeChars(v168, v13, v54 - v13, v140, 0);
              v57 = v170 | v56;
            }

            v170 = TGlyphEncoder::EncodeChars(v168, v54, v55, v152, 0) | v57;
            v58 = (v41 - *v39) >> 4;
            if (v58 < 0)
            {
              v60 = 254 - v58;
              v59 = ~v60;
              v39 -= 8 * (v60 >> 8);
            }

            else
            {
              v59 = v58 + 1;
              v39 += 8 * ((v58 + 1) >> 8);
            }

            v37 = *v39;
            v41 = (*v39 + 16 * v59);
            a2 = v141;
            v13 = v54 + v55;
          }

          while (v41 != v138);
          v139 = v161;
          if ((v161[12] & 1) == 0)
          {
LABEL_170:
            __break(1u);
LABEL_171:
            std::__throw_bad_optional_access[abi:fn200100]();
          }

          v36 = v126;
          v61 = v40;
          v38 = v131;
          v62 = v134;
          if (v126 < v40)
          {
            goto LABEL_100;
          }

          goto LABEL_98;
        }

        v139 = v161;
      }

      v62 = v38;
      v61 = v36;
LABEL_98:
      if (v36 != v61 || v38 > v62)
      {
        goto LABEL_170;
      }

LABEL_100:
      if (v38 == v62)
      {
        v65 = v38;
        v66 = v36;
        v67 = 0;
      }

      else
      {
        v68 = ((v62 - *v61) >> 4) + 32 * (v61 - v36);
        v66 = v36;
        v65 = v38;
        v67 = v68 - ((v38 - *v36) >> 4);
      }

      v69 = v139[10];
      v70 = v139[7];
      v71 = (v70 + 8 * (v69 >> 8));
      *v124 = v139[8];
      if (*v124 == v70)
      {
        v72 = 0;
      }

      else
      {
        v72 = *v71 + 16 * v69;
      }

      v127 = v67;
      if (v65 == v72)
      {
        v73 = 0;
      }

      else
      {
        v73 = ((v65 - *v66) >> 4) + 32 * (v66 - v71) - ((v72 - *v71) >> 4);
      }

      v132 = v72;
      v135 = (v70 + 8 * (v69 >> 8));
      v74 = std::__deque_iterator<CFRange,CFRange*,CFRange&,CFRange**,long,256l>::operator+[abi:fn200100](v71, v72, v73);
      if (v127 >= 1)
      {
        v76 = v74;
        v77 = v139[11];
        v123 = v75;
        v78 = std::__deque_iterator<CFRange,CFRange*,CFRange&,CFRange**,long,256l>::operator+[abi:fn200100](v74, v75, v127);
        v80 = v79;
        if (v73 <= (v77 - v127) >> 1)
        {
          if (v76 == v135)
          {
            std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:fn200100]<CFRange *,std::__deque_iterator<CFRange,CFRange *,CFRange&,CFRange **,long,256l>,0>(v171, v132, v123, v78, v79);
            a2 = v141;
            v83 = v139;
          }

          else
          {
            v85 = v76 - 1;
            v84 = *v76;
            memset(v171, 170, sizeof(v171));
            std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:fn200100]<CFRange *,std::__deque_iterator<CFRange,CFRange *,CFRange&,CFRange **,long,256l>,0>(v171, v84, v123, v78, v80);
            v86 = v171[1];
            v87 = v171[2];
            if (v85 == v135)
            {
              a2 = v141;
              v83 = v139;
            }

            else
            {
              v88 = *v171[1];
              v83 = v139;
              do
              {
                v89 = *v85;
                v90 = *v85 + 4096;
                while (1)
                {
                  v91 = v87 - v88;
                  if ((v90 - v89) >> 4 >= v91 >> 4)
                  {
                    v92 = v91 >> 4;
                  }

                  else
                  {
                    v92 = (v90 - v89) >> 4;
                  }

                  v90 -= 16 * v92;
                  v87 -= 2 * v92;
                  if (v92)
                  {
                    memmove(v87, v90, 16 * v92);
                  }

                  if (v90 == v89)
                  {
                    break;
                  }

                  v93 = *--v86;
                  v88 = v93;
                  v87 = v93 + 512;
                }

                v88 = *v86;
                if (*v86 + 4096 == v87)
                {
                  v94 = v86[1];
                  ++v86;
                  v88 = v94;
                  v87 = v94;
                }

                --v85;
              }

              while (v85 != v135);
              a2 = v141;
            }

            std::__move_backward_impl<std::_ClassicAlgPolicy>::operator()[abi:fn200100]<CFRange *,std::__deque_iterator<CFRange,CFRange *,CFRange&,CFRange **,long,256l>,0>(v171, v132, *v85 + 4096, v86, v87);
          }

          v116 = v83[11] - v127;
          v117 = v83[10] + v127;
          v83[10] = v117;
          v83[11] = v116;
          if (v117 >= 0x200)
          {
            v118 = v83[7];
            do
            {
              operator delete(*v118);
              v118 = (v83[7] + 8);
              v83[7] = v118;
              v119 = v83[10] - 256;
              v83[10] = v119;
            }

            while (v119 > 0x1FF);
          }
        }

        else
        {
          v81 = (v70 + 8 * ((v77 + v69) >> 8));
          if (*v124 == v70)
          {
            v82 = 0;
          }

          else
          {
            v82 = &(*v81)[16 * (v77 + v69)];
          }

          a2 = v141;
          v95 = v139;
          if (v78 == v81)
          {
            v96 = v76;
            v97 = v123;
          }

          else
          {
            *v125 = v82;
            v98 = v76;
            v99 = v78 + 1;
            std::__copy_move_unwrap_iters[abi:fn200100]<std::__move_impl<std::_ClassicAlgPolicy>,CFRange *,CFRange *,std::__deque_iterator<CFRange,CFRange *,CFRange&,CFRange **,long,256l>,0>(v171, v79, *v78 + 4096, v98, v123);
            v100 = v99;
            v101 = v171[1];
            v102 = v171[2];
            if (v100 != v81)
            {
              v103 = *v171[1];
              v133 = v81;
              do
              {
                v104 = 0;
                v136 = v100;
                v105 = *v100;
                for (++v101; ; ++v101)
                {
                  v106 = v103 - v102 + 4096;
                  if ((4096 - v104) >> 4 >= v106 >> 4)
                  {
                    v107 = v106 >> 4;
                  }

                  else
                  {
                    v107 = (4096 - v104) >> 4;
                  }

                  if (v107)
                  {
                    memmove(v102, &v105[v104], 16 * v107);
                  }

                  v104 += 16 * v107;
                  if (v104 == 4096)
                  {
                    break;
                  }

                  v108 = *v101;
                  v103 = v108;
                  v102 = v108;
                }

                v102 += 2 * v107;
                v103 = *(v101 - 1);
                if (v103 + 4096 == v102)
                {
                  v103 = *v101;
                  v102 = *v101;
                }

                else
                {
                  --v101;
                }

                a2 = v141;
                v95 = v139;
                v100 = v136 + 1;
              }

              while (v136 + 1 != v133);
            }

            v79 = *v100;
            v82 = *v125;
            v96 = v101;
            v97 = v102;
          }

          std::__copy_move_unwrap_iters[abi:fn200100]<std::__move_impl<std::_ClassicAlgPolicy>,CFRange *,CFRange *,std::__deque_iterator<CFRange,CFRange *,CFRange&,CFRange **,long,256l>,0>(v171, v79, v82, v96, v97);
          v110 = v95[7];
          v109 = v95[8];
          if (v109 == v110)
          {
            v111 = 0;
          }

          else
          {
            v111 = 32 * (v109 - v110) - 1;
          }

          v112 = v95[10];
          v113 = v95[11] - v127;
          v95[11] = v113;
          if ((v111 - (v112 + v113)) >= 0x200)
          {
            do
            {
              operator delete(*(v109 - 8));
              v114 = v95[7];
              v109 = v95[8] - 8;
              v95[8] = v109;
              if (v109 == v114)
              {
                v115 = 0;
              }

              else
              {
                v115 = 32 * (v109 - v114) - 1;
              }
            }

            while ((v115 - (v95[11] + v95[10])) > 0x1FF);
          }
        }
      }

      TAttributes::~TAttributes(v152);
      v5 = v129;
      CopyForKnownUrduSequences = v130;
      a3 = v128;
      v20 = v140;
      goto LABEL_162;
    }

LABEL_164:

    *(v5 + 9) = 0;
    *(v5 + 10) = v6;
    TLine::LinkRuns(v5);
    if (TTypesetter::CanLayout(v5))
    {
      v152[0] = v5;
      *&v152[1] = *(v5 + 216);
      v152[3] = *(v5 + 29);
      v152[4] = v5 + 240;
      v121 = *(v5 + 65);
      *&v153 = 0;
      v152[5] = (v121 | 0xAAAAAAAA00000000);
      BYTE4(v152[5]) = *(v5 + 264);
      BYTE5(v152[5]) = *(v5 + 257);
      memcpy(v172, &unk_18475BB00, sizeof(v172));
      TRunGlue::TRunGlue(v172, v5);
      v122 = TTypesetter::FinishEncoding(v152, v172, &v170);
      TTypesetter::FinishLayout(v152, v172, v170, v122);
      std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](&v172[448]);
      v171[0] = &v172[256];
      std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v171);
      v171[0] = &v172[216];
      std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__destroy_vector::operator()[abi:fn200100](v171);
      v171[0] = &v172[56];
      std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](v171);
    }

    _Block_object_dispose(&v160, 8);
    if (v167 == 1)
    {
      std::deque<CFRange>::~deque[abi:fn200100](v166);
    }

    return std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(&v168[26]);
  }

  return result;
}

const void **TComponentFont::AddDescriptorAttributes(atomic_ullong *a1, const void **a2, const void **a3)
{
  if ((*(*a1 + 848))(a1))
  {
    ComponentAttribute = TComponentFont::GetComponentAttribute(a1, @"NSCTFontUIUsageAttribute");
    if (ComponentAttribute)
    {
      std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::push_back[abi:fn200100](a2, &kCTFontDescriptorTextStyleAttribute);
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](a3, &ComponentAttribute);
      if ((*(*a1 + 864))(a1))
      {
        v8 = TComponentFont::GetComponentAttribute(a1, @"sizeCategory");
        if (v8)
        {
          std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::push_back[abi:fn200100](a2, &kCTFontSizeCategoryAttribute);
          std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](a3, &v8);
        }
      }

      (*(*a1 + 40))(&v8, a1, 57);
      v6 = atomic_exchange(&v8, 0);

      if (v6)
      {
        std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::push_back[abi:fn200100](a2, &kCTFontTraitsAttribute);
        v8 = v6;
        std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](a3, &v8);
      }
    }
  }

  result = atomic_load_explicit(a1 + 90, memory_order_acquire);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"ignoreLegibilityWeight");
    if (result)
    {
      std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::push_back[abi:fn200100](a2, &kCTFontIgnoreLegibilityWeightAttribute);
      ComponentAttribute = *MEMORY[0x1E695E4D0];
      return std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](a3, &ComponentAttribute);
    }
  }

  return result;
}

void TComponentFont::TComponentFont(TComponentFont *this, const TComponentFont *a2)
{
  TBaseFont::TBaseFont(this, 0);
  *v4 = &unk_1EF259D78;
  v5 = *(a2 + 600);
  v6 = *(a2 + 632);
  *(v4 + 616) = *(a2 + 616);
  *(v4 + 632) = v6;
  *(v4 + 600) = v5;
  v7 = *(a2 + 648);
  v8 = *(a2 + 664);
  v9 = *(a2 + 696);
  *(v4 + 680) = *(a2 + 680);
  *(v4 + 696) = v9;
  *(v4 + 648) = v7;
  *(v4 + 664) = v8;
  *(v4 + 712) = *(a2 + 178);
  *(this + 90) = (*(*a2 + 888))(a2);
  *(this + 728) = 0u;
  *(this + 93) = atomic_load_explicit(a2 + 93, memory_order_acquire);
  *(this + 94) = *(a2 + 94);
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, atomic_load_explicit(this + 93, memory_order_acquire));

  TCFRef<__CTFont const*>::Retain(this + 11, atomic_load_explicit(a2 + 11, memory_order_acquire));
  TCFRef<__CTFont const*>::Retain(this + 12, atomic_load_explicit(a2 + 12, memory_order_acquire));
}

const TBaseFont *GetTenuousComponentFont(const TBaseFont *a1)
{
  explicit = a1;
  if (!a1 || (*(*a1 + 16))(a1) != 1414809156)
  {
    if ((*(*explicit + 16))(explicit) == 1414743620)
    {
      v2 = *(*(explicit + 76) + 40);
      if ((*(v2 + 16) & 0x80000000) == 0)
      {
        TDescriptor::InitBaseFont(v2, 0, 0.0);
      }

      explicit = atomic_load_explicit((v2 + 32), memory_order_acquire);
      if (explicit && (*(*explicit + 16))(explicit) != 1414809156)
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return explicit;
}

void TTenuousComponentFont::TTenuousComponentFont(TTenuousComponentFont *this, atomic_ullong *a2, double a3)
{
  TComponentFont::TComponentFont(this, a2);
  *v6 = &unk_1EF25A118;
  *(this + 95) = atomic_load_explicit(a2 + 95, memory_order_acquire);
  *(this + 96) = atomic_load_explicit(a2 + 96, memory_order_acquire);
  *(this + 199) = 0;
  *(this + 800) = 0;
  *(this + 776) = 0u;
  *(this + 396) = 0;
  TTenuousComponentFont::InitWithOpticalSize(this, a3);
  *(this + 793) = *(a2 + 793);
}

BOOL TFont::HasDerivedOpticalSize(TFont *this)
{
  result = 1;
  if (!atomic_load_explicit(this + 2, memory_order_acquire) || (*(*(atomic_load_explicit(this + 2, memory_order_acquire) + 40) + 16) & 0x8000) == 0)
  {
    v1 = *(this + 51);
    if (!v1 || ((*(*v1 + 464))(v1) & 1) == 0)
    {
      return 0;
    }
  }

  return result;
}

CTLineRef CTLineCreateWithAttributedString(CFAttributedStringRef attrString)
{
  __dst[34] = *MEMORY[0x1E69E9840];
  if (attrString)
  {
    memcpy(__dst, &unk_18475AF50, 0x110uLL);
    TTypesetterAttrString::TTypesetterAttrString(__dst, attrString, 0);
  }

  return 0;
}

void std::__shared_weak_count::__release_shared[abi:fn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

uint64_t sub_184601AD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if ((a3 & 0x80000000) == 0)
    {
      if (!a2)
      {
        return result;
      }

LABEL_8:
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s18AdaptiveImageGlyphV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t CTStringIsSuitableForVerticalLayout(void *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && (a2 & 0x8000000000000000) == 0)
  {
    if (CTStringIsSuitableForVerticalLayout::once != -1)
    {
      dispatch_once_f(&CTStringIsSuitableForVerticalLayout::once, 0, CTStringIsSuitableForVerticalLayout::$_0::__invoke);
    }

    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 1;
    v8[0] = 0;
    v8[1] = v8;
    v8[2] = 0x2020000000;
    v8[3] = 0;
    v5 = [a1 length];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __CTStringIsSuitableForVerticalLayout_block_invoke;
    v7[3] = &unk_1E6E3E408;
    v7[4] = a1;
    v7[5] = &v9;
    v7[6] = v8;
    v7[7] = a2;
    [a1 enumerateSubstringsInRange:0 options:v5 usingBlock:{2, v7}];
    v2 = *(v10 + 24);
    _Block_object_dispose(v8, 8);
    _Block_object_dispose(&v9, 8);
  }

  return v2 & 1;
}

uint64_t sub_184601D0C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_184601D50(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t _s18AdaptiveImageGlyphV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_184601E38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 9))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 8);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

unint64_t CTFontDescriptorCreateWithAttributesAndOptions(const __CFDictionary *a1, int a2)
{
  v6 = a1;
  v5 = a2;
  if (!a1)
  {
    return 0;
  }

  v4 = 0xAAAAAAAAAAAAAAAALL;
  TCFBase_NEW<CTFontDescriptor,__CFDictionary const*&,unsigned int &>(&v6, &v5, &v4);
  v2 = atomic_exchange(&v4, 0);

  return v2;
}

void TDescriptorSource::CreateDescriptorForUIFontDesign(CFDictionaryRef theDict@<X2>, TDescriptorSource *a2@<X0>, __CFString *a3@<X1>, uint64_t a4@<X3>, __CFString *a5@<X4>, const __CFNumber *a6@<X5>, const __CFNumber *a7@<X6>, uint64_t a8@<X7>, unint64_t *a9@<X8>, void *a10)
{
  if (!theDict)
  {
    goto LABEL_65;
  }

  Count = CFDictionaryGetCount(theDict);
  v18 = Count - 1;
  if (Count < 1)
  {
    goto LABEL_65;
  }

  v19 = Count;
  Value = CFDictionaryGetValue(theDict, @"NSCTFontWeightTrait");
  if (Value)
  {
    valuePtr[0] = -1;
    CFNumberGetValue(Value, kCFNumberDoubleType, valuePtr);
    v22 = *valuePtr;
    v19 = v18;
  }

  else
  {
    v22 = 0.0;
  }

  if (v19 < 2)
  {
    v64 = a2;
    v25 = 0;
    v26 = 0;
    v27 = 0;
    goto LABEL_37;
  }

  v23 = CFDictionaryGetValue(theDict, @"NSCTFontSlantTrait");
  v24 = v23;
  if (v23)
  {
    --v19;
    valuePtr[0] = -1;
    CFNumberGetValue(v23, kCFNumberDoubleType, valuePtr);
    v25 = *valuePtr != 0.0;
    if (v19 < 2)
    {
      v27 = 0;
      v29 = 0;
      goto LABEL_55;
    }

    v61 = *valuePtr != 0.0;
  }

  else
  {
    v61 = 0;
  }

  v64 = a2;
  v28 = CFDictionaryGetValue(theDict, @"NSCTFontProportionTrait");
  if (v28)
  {
    valuePtr[0] = -1;
    v26 = v28;
    CFNumberGetValue(v28, kCFNumberDoubleType, valuePtr);
    if (*valuePtr == 0.0 && --v19 < 2)
    {
      v27 = 0;
      v29 = v26;
      a2 = v64;
      v25 = v61;
      goto LABEL_55;
    }
  }

  else
  {
    v26 = 0;
  }

  v30 = CFDictionaryGetValue(theDict, @"NSCTFontSymbolicTrait");
  if (v30)
  {
    LODWORD(valuePtr[0]) = -1431655766;
    CFNumberGetValue(v30, kCFNumberIntType, valuePtr);
    v31 = v22 == 0.0 || v24 == 0;
    if (!v31 && v26 != 0 || LODWORD(valuePtr[0]) == 0)
    {
      v25 = v61;
LABEL_33:
      if (--v19 < 2)
      {
        v27 = 0;
        v29 = v26;
        a2 = v64;
        goto LABEL_55;
      }

      v61 = v25;
      goto LABEL_35;
    }

    if (LODWORD(valuePtr[0]) == 1)
    {
      v25 = 1;
      goto LABEL_33;
    }
  }

LABEL_35:
  v27 = CFDictionaryGetValue(theDict, @"NSCTFontGradeTrait");
  if (!v27)
  {
    v29 = v26;
    a2 = v64;
    v25 = v61;
    goto LABEL_41;
  }

  --v19;
  v25 = v61;
LABEL_37:
  v31 = v19 == 1;
  v29 = v26;
  a2 = v64;
  if (v31)
  {
    goto LABEL_55;
  }

LABEL_41:
  if (@"NSCTFontUIFontDesignDefault" != a3)
  {
    if (!a3 || !@"NSCTFontUIFontDesignDefault" || (*v62 = v25, v34 = CFEqual(a3, @"NSCTFontUIFontDesignDefault"), v25 = *v62, !v34))
    {
      if (@"NSCTFontUIFontDesignCore" == a3)
      {
        v36 = 1;
      }

      else
      {
        if (!a3 || !@"NSCTFontUIFontDesignCore")
        {
          goto LABEL_65;
        }

        *v63 = v25;
        v35 = CFEqual(a3, @"NSCTFontUIFontDesignCore");
        v25 = *v63;
        v36 = v35 != 0;
      }

      if (v29 && v36)
      {
        goto LABEL_55;
      }

LABEL_65:
      v71 = 0xAAAAAAAAAAAAAAAALL;
      TCFMutableDictionary::TCFMutableDictionary(&v71, theDict);
      CFDictionaryRemoveValue(atomic_load_explicit(&v71, memory_order_acquire), @"NSCTFontSlantTrait");
      CFDictionaryRemoveValue(atomic_load_explicit(&v71, memory_order_acquire), @"NSCTFontProportionTrait");
      CFDictionaryRemoveValue(atomic_load_explicit(&v71, memory_order_acquire), @"NSCTFontSymbolicTrait");
      values = atomic_load_explicit(&v71, memory_order_acquire);
      valuePtr[0] = @"NSCTFontTraitsAttribute";
      v54 = CFDictionaryCreate(*MEMORY[0x1E695E480], valuePtr, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      valuePtr[0] = 0xAAAAAAAAAAAAAAAALL;
      TDescriptorSource::CopySplicedDescriptorsForRequest(valuePtr, a2, v54, a4, a5, a6, a7, a8, a10);
      v55 = atomic_load_explicit(valuePtr, memory_order_acquire);
      v56 = v55;
      if (v55 && CFArrayGetCount(v55) >= 1)
      {
        v57 = atomic_load_explicit(valuePtr, memory_order_acquire);
        v58 = v57;
        if (v57)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v57, 0);
        }

        else
        {
          ValueAtIndex = 0;
        }

        v60 = *MEMORY[0x1E695E738];

        if (ValueAtIndex != v60)
        {
          TDescriptorSource::CreateVariantWithTraitsMatchingDescriptors(atomic_load_explicit(valuePtr, memory_order_acquire), theDict, a9);
          goto LABEL_74;
        }
      }

      else
      {
      }

      *a9 = 0;
LABEL_74:

      v53 = v71;
      goto LABEL_75;
    }
  }

  if (!v29)
  {
    goto LABEL_65;
  }

LABEL_55:
  v71 = 0;
  NameForSystemFontOfWeight = TDescriptorSource::GetNameForSystemFontOfWeight(a3, 0, v22, v25, &v71, v21);
  if (!NameForSystemFontOfWeight)
  {
    goto LABEL_65;
  }

  *a9 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::CopySplicedDescriptorForName(NameForSystemFontOfWeight, a5, a6, a7, a8, a10, a9, 0, 0, 0, v29, v27, 0, 0, 0);
  if (!v71)
  {
    return;
  }

  v70 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::CopySplicedDescriptorForName(v71, a5, a6, a7, a8, a10, &v70, 0, 0, 0, v29, v27, 0, 0, 0);
  Weight = CTFontDescriptorGetWeight(atomic_load_explicit(a9, memory_order_acquire));
  v39 = CTFontDescriptorGetWeight(atomic_load_explicit(&v70, memory_order_acquire));
  v31 = Weight == v39;
  v40 = (v22 - Weight) / (v39 - Weight);
  if (v31)
  {
    v41 = 0.0;
  }

  else
  {
    v41 = v40;
  }

  valuePtr[0] = CTFontDescriptorCopyAttribute(atomic_load_explicit(a9, memory_order_acquire), @"NSCTFontVariationAxesAttribute");
  v42 = atomic_exchange(valuePtr, 0);

  valuePtr[0] = CTFontDescriptorCopyAttribute(atomic_load_explicit(a9, memory_order_acquire), @"NSCTFontVariationAttribute");
  v69 = atomic_exchange(valuePtr, 0);

  AddDefaultsToVariation(v42, atomic_load_explicit(&v69, memory_order_acquire), valuePtr);
  valuePtr[0] = CTFontDescriptorCopyAttribute(atomic_load_explicit(&v70, memory_order_acquire), @"NSCTFontVariationAttribute");
  v68 = atomic_exchange(valuePtr, 0);

  AddDefaultsToVariation(v42, atomic_load_explicit(&v68, memory_order_acquire), valuePtr);
  explicit = atomic_load_explicit(&v69, memory_order_acquire);
  if (explicit)
  {
    explicit = CFDictionaryGetValue(explicit, &unk_1EF2781D8);
  }

  valuePtr[0] = -1;
  CFNumberGetValue(explicit, kCFNumberDoubleType, valuePtr);
  v44 = valuePtr[0];
  v45 = atomic_load_explicit(&v68, memory_order_acquire);
  if (v45)
  {
    v45 = CFDictionaryGetValue(v45, &unk_1EF2781D8);
  }

  valuePtr[0] = -1;
  CFNumberGetValue(v45, kCFNumberDoubleType, valuePtr);
  v46 = std::__lerp[abi:fn200100]<double>(*&v44, *valuePtr, v41);
  v47 = *MEMORY[0x1E695E480];
  v48 = MEMORY[0x1E695E9D8];
  v49 = MEMORY[0x1E695E9E8];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  TCFNumber::TCFNumber<double>(&v67, v22);
  values = atomic_load_explicit(&v67, memory_order_acquire);
  valuePtr[0] = @"NSCTFontWeightTrait";
  v51 = CFDictionaryCreate(v47, valuePtr, &values, 1, v48, v49);
  CFDictionaryAddValue(Mutable, @"NSCTFontTraitsAttribute", v51);

  TCFNumber::TCFNumber<double>(&v67, v46);
  values = atomic_load_explicit(&v67, memory_order_acquire);
  valuePtr[0] = &unk_1EF2781D8;
  v52 = CFDictionaryCreate(v47, valuePtr, &values, 1, v48, v49);
  CFDictionaryAddValue(Mutable, @"NSCTFontVariationAttribute", v52);

  v53 = v70;
LABEL_75:
}

__CFString *TDescriptorSource::GetNameForSystemFontOfWeight(__CFString *this, const __CFString *a2, double a3, int a4, void *a5, const __CFString **a6)
{
  v8 = a2;
  v11 = IndexesBracketing<double const*,double>(kCTFontDefaultWeights, &kCTFontWeightRegular, a3, 0.001);
  if (@"NSCTFontUIFontDesignDefault" == this || this && @"NSCTFontUIFontDesignDefault" && CFEqual(this, @"NSCTFontUIFontDesignDefault"))
  {
    v12 = off_1E6E38FD8;
    v13 = off_1E6E39020;
    goto LABEL_6;
  }

  if (@"NSCTFontUIFontDesignRounded" == this || this && @"NSCTFontUIFontDesignRounded" && CFEqual(this, @"NSCTFontUIFontDesignRounded"))
  {
    v12 = kSystemUIFontRoundNames;
    goto LABEL_27;
  }

  if (@"NSCTFontUIFontDesignCompactRounded" == this || this && @"NSCTFontUIFontDesignCompactRounded" && CFEqual(this, @"NSCTFontUIFontDesignCompactRounded"))
  {
    v12 = kSystemUIFontCompactRoundNames;
    goto LABEL_27;
  }

  if (@"NSCTFontUIFontDesignSerif" == this || this && @"NSCTFontUIFontDesignSerif" && CFEqual(this, @"NSCTFontUIFontDesignSerif"))
  {
    v11 = IndexesBracketing<double const*,double>(&kCTFontDefaultWeights[3], &kCTFontWeightRegular, a3, 0.001);
    v14 = 6;
    if (!a4)
    {
      v14 = 0;
    }

    v15 = kSystemUIFontSerifNames;
LABEL_26:
    v12 = &v15[v14];
    goto LABEL_27;
  }

  if (@"NSCTFontUIFontDesignCompact" == this || this && @"NSCTFontUIFontDesignCompact" && CFEqual(this, @"NSCTFontUIFontDesignCompact"))
  {
    v12 = off_1E6E39068;
    v13 = off_1E6E390B0;
    goto LABEL_6;
  }

  if (@"NSCTFontUIFontDesignCore" == this || this && @"NSCTFontUIFontDesignCore" && CFEqual(this, @"NSCTFontUIFontDesignCore"))
  {
    v12 = off_1E6E390F8;
    v13 = off_1E6E39140;
LABEL_6:
    if (a4)
    {
      v12 = v13;
    }

    goto LABEL_27;
  }

  if (@"NSCTFontUIFontDesignMonospaced" == this || this && @"NSCTFontUIFontDesignMonospaced" && CFEqual(this, @"NSCTFontUIFontDesignMonospaced"))
  {
    v11 = IndexesBracketing<double const*,double>(&kCTFontDefaultWeights[2], &kCTFontDefaultWeights[8], a3, 0.001);
    v14 = 6;
    if (!a4)
    {
      v14 = 0;
    }

    v15 = kSystemUIFontMonospacedNames;
    goto LABEL_26;
  }

  if (@"NSCTFontUIFontDesignSoft" == this || this && @"NSCTFontUIFontDesignSoft" && CFEqual(this, @"NSCTFontUIFontDesignSoft"))
  {
    v12 = kSystemUIFontSoftNames;
  }

  else
  {
    if (@"NSCTFontUIFontDesignCompactSoft" != this)
    {
      result = 0;
      if (!this || !@"NSCTFontUIFontDesignCompactSoft")
      {
        return result;
      }

      if (!CFEqual(this, @"NSCTFontUIFontDesignCompactSoft"))
      {
        return 0;
      }
    }

    v12 = kSystemUIFontCompactSoftNames;
  }

LABEL_27:
  v16 = HIWORD(v11);
  if (v8)
  {
    result = v12[v16];
    if (a5 && v11 != v16)
    {
      v16 = v11;
LABEL_33:
      *a5 = v12[v16];
    }
  }

  else
  {
    result = v12[v11];
    if (a5 && v11 != v16)
    {
      goto LABEL_33;
    }
  }

  return result;
}

__CFString *TDescriptorSource::FindFontNameForNameAndTrait(TDescriptorSource *this, const __CFString *a2, uint64_t *a3, int a4)
{
  v5 = a3;
  v6 = a2;
  v48 = *MEMORY[0x1E69E9840];
  v46.isa = 0xAAAAAAAAAAAAAAAALL;
  v8 = TDescriptorSource::StashIndexForFontName(this, &v46, a3);
  result = 0;
  if (!v8)
  {
    return result;
  }

  isa = v46.isa;
  if (v46.isa > 295)
  {
    return result;
  }

  if ((v5 & 0x40) != 0)
  {
    v11 = off_1E6E3BF30;
    v12 = 1760;
    while (*(v11 - 2) != v46.isa)
    {
      v11 += 44;
      v12 -= 352;
      if (!v12)
      {
        goto LABEL_7;
      }
    }

LABEL_12:
    result = *v11;
    if (*v11)
    {
      return result;
    }

    goto LABEL_13;
  }

LABEL_7:
  if (v46.isa - 151 >= 5)
  {
    v13 = -1;
  }

  else
  {
    v13 = LODWORD(v46.isa) - 151;
  }

  if ((v13 & 0x80000000) == 0)
  {
    v11 = (&kCondensedMapping + 352 * v13 + 16);
    goto LABEL_12;
  }

LABEL_13:
  if (v46.isa <= 0x96)
  {
    v15 = &kTypeHierarchySpecPhonePad + 336 * v46.isa;
    v16 = (v15[16] & 0xE0) != 0;
    v18 = *(v15 + 2);
    v17 = *(v15 + 3);
    v6 = v18 & 1 | (2 * v16);
    if (v17 == 1)
    {
      v6 |= 0x8000u;
    }

    else if (v17 == -1)
    {
      v6 |= 0x10000u;
    }
  }

  else
  {
    v14 = v46.isa - 156;
    if (v46.isa >= 0x9C)
    {
      if (v14 < 0x16 || (v14 = v46.isa - 198, v46.isa - 198 <= 0x13))
      {
        v6 = kOtherSpec[10 * v14 + 2] & 1 | (2 * (kOtherSpec[10 * v14 + 1] > 5));
      }
    }
  }

  v19 = v6 & ~a4;
  v20 = a4 & v5;
  v21 = v19 | a4 & v5;
  switch(v46.isa)
  {
    case 0uLL:
    case 1uLL:
    case 2uLL:
    case 3uLL:
    case 0x79uLL:
    case 0x7AuLL:
    case 0x7BuLL:
    case 0x7CuLL:
    case 0x7DuLL:
    case 0x7EuLL:
      return MapTightLooseTraits(v21, 0x37u, 0x64u, 0xEBu, 0xECu, 0x38u, 0x65u, 0xEDu, 0xEEu, 0xEFu, 0xEFu, 0xF0u, 0xF0u);
    case 4uLL:
    case 5uLL:
    case 6uLL:
    case 7uLL:
      v35 = @".AppleSystemUIFaceShortItalicHeadline2";
      if ((v21 & 1) == 0)
      {
        v35 = @".AppleSystemUIFaceShortHeadline2";
      }

      v38 = @".AppleSystemUIFaceHeadline2";
      if (v21)
      {
        v38 = @".AppleSystemUIFaceItalicHeadline2";
      }

      v40 = (v21 & 0x8000) == 0;
      goto LABEL_93;
    case 8uLL:
    case 9uLL:
    case 0xAuLL:
    case 0xBuLL:
    case 0xCuLL:
    case 0xDuLL:
    case 0xEuLL:
    case 0xFuLL:
    case 0x10uLL:
    case 0x11uLL:
    case 0x12uLL:
    case 0x13uLL:
      return MapTightLooseTraits(v21, 0x3Eu, 0x40u, 0x3Du, 0x3Fu, 0x42u, 0x44u, 0x41u, 0x43u, 0x61u, 0x63u, 0x60u, 0x62u);
    case 0x14uLL:
    case 0x15uLL:
    case 0x16uLL:
    case 0x17uLL:
    case 0x18uLL:
    case 0x19uLL:
      v24 = (v46.isa < 0x19) & (0x1B00000u >> SLOBYTE(v46.isa));
      v25 = v21;
      v26 = 70;
      v27 = 71;
      v28 = 69;
      v29 = 73;
      v30 = 74;
      v31 = 72;
      goto LABEL_44;
    case 0x1AuLL:
    case 0x1BuLL:
    case 0x1CuLL:
    case 0x1DuLL:
    case 0x1EuLL:
    case 0x1FuLL:
      v24 = (v46.isa < 0x1F) & (0x6C000000u >> SLOBYTE(v46.isa));
      v25 = v21;
      v26 = 76;
      v27 = 77;
      v28 = 75;
      v29 = 79;
      v30 = 80;
      v31 = 78;
      goto LABEL_44;
    case 0x20uLL:
    case 0x21uLL:
    case 0x22uLL:
    case 0x23uLL:
    case 0x24uLL:
    case 0x25uLL:
      v24 = (v46.isa < 0x25) & (0x1B00000000uLL >> SLOBYTE(v46.isa));
      v25 = v21;
      v26 = 82;
      v27 = 83;
      v28 = 81;
      v29 = 85;
      v30 = 86;
      v31 = 84;
      goto LABEL_44;
    case 0x26uLL:
    case 0x27uLL:
    case 0x28uLL:
    case 0x29uLL:
    case 0x2AuLL:
    case 0x2BuLL:
    case 0x86uLL:
    case 0x87uLL:
    case 0x88uLL:
    case 0x89uLL:
    case 0x8AuLL:
      return MapTightLooseTraits(v21, 0x58u, 0x59u, 0x57u, 0x133u, 0x5Bu, 0x5Cu, 0x5Au, 0x134u, 0x135u, 0x136u, 0x137u, 0x138u);
    case 0x2CuLL:
    case 0x2DuLL:
    case 0x2EuLL:
    case 0x41uLL:
    case 0x42uLL:
    case 0x43uLL:
    case 0x8CuLL:
    case 0x8DuLL:
    case 0x8EuLL:
    case 0x8FuLL:
    case 0x90uLL:
      return MapTightLooseTraits(v21, 0x5Eu, 0x5Fu, 0x5Du, 0x139u, 0x81u, 0x82u, 0x80u, 0x13Au, 0x13Bu, 0x13Cu, 0x13Du, 0x13Eu);
    case 0x2FuLL:
    case 0x30uLL:
    case 0x31uLL:
    case 0x32uLL:
    case 0x33uLL:
    case 0x34uLL:
    case 0x35uLL:
    case 0x36uLL:
    case 0x37uLL:
    case 0x38uLL:
    case 0x39uLL:
    case 0x3AuLL:
      return MapTightLooseTraits(v21, 0x6Eu, 0x6Fu, 0x70u, 0x71u, 0x72u, 0x73u, 0x74u, 0x75u, 0x76u, 0x77u, 0x78u, 0x79u);
    case 0x3BuLL:
    case 0x3CuLL:
    case 0x3DuLL:
    case 0x3EuLL:
    case 0x3FuLL:
    case 0x40uLL:
      v24 = (v46.isa < 0x40) & (0xD800000000000000 >> SLOBYTE(v46.isa));
      v25 = v21;
      v26 = 123;
      v27 = 124;
      v28 = 122;
      v29 = 126;
      v30 = 127;
      v31 = 125;
LABEL_44:

      return MapTightTrait(v25, v24, v26, v27, v28, v29, v30, v31);
    case 0x44uLL:
    case 0x45uLL:
    case 0x46uLL:
    case 0x47uLL:
    case 0x48uLL:
    case 0x49uLL:
    case 0x4AuLL:
    case 0x4BuLL:
    case 0x4CuLL:
    case 0x4DuLL:
    case 0x4EuLL:
    case 0x4FuLL:
      return MapTightLooseTraits(v21, 0xB6u, 0xB7u, 0xB8u, 0xB9u, 0xBAu, 0xBBu, 0xBCu, 0xBDu, 0xBEu, 0xBFu, 0xC0u, 0xC1u);
    case 0x50uLL:
    case 0x51uLL:
    case 0x52uLL:
    case 0x53uLL:
    case 0x54uLL:
    case 0x55uLL:
    case 0x56uLL:
    case 0x57uLL:
    case 0x58uLL:
    case 0x59uLL:
    case 0x5AuLL:
    case 0x5BuLL:
      return MapTightLooseTraits(v21, 0xC2u, 0xC3u, 0xC4u, 0xC5u, 0xC6u, 0xC7u, 0xC8u, 0xC9u, 0xCAu, 0xCBu, 0xCCu, 0xCDu);
    case 0x5CuLL:
    case 0x5DuLL:
    case 0x5EuLL:
    case 0x5FuLL:
    case 0x60uLL:
    case 0x61uLL:
    case 0x62uLL:
    case 0x63uLL:
    case 0x64uLL:
    case 0x65uLL:
    case 0x66uLL:
    case 0x67uLL:
      return MapTightLooseTraits(v21, 0xCEu, 0xCFu, 0xD0u, 0xD1u, 0xD2u, 0xD3u, 0xD4u, 0xD5u, 0xD6u, 0xD7u, 0xD8u, 0xD9u);
    case 0x6AuLL:
    case 0x70uLL:
    case 0x71uLL:
    case 0x72uLL:
      *&v46.info = xmmword_18475CD70;
      v39 = *(&v46.info | (4 * (v21 & 3)));

      return TDescriptorSource::UIFontNameForUIType(v39);
    case 0x73uLL:
    case 0x74uLL:
    case 0x75uLL:
    case 0x76uLL:
    case 0x77uLL:
    case 0x78uLL:
      return MapTightLooseTraits(v21, 0xE5u, 0xE5u, 0xE6u, 0xE6u, 0xE7u, 0xE7u, 0xE8u, 0xE8u, 0xE9u, 0xE9u, 0xEAu, 0xEAu);
    case 0x7FuLL:
    case 0x80uLL:
      v33 = @".AppleSystemUIFaceEmphasizedCaption3";
      v34 = @".AppleSystemUIFaceCaption3";
      goto LABEL_196;
    case 0x81uLL:
    case 0x82uLL:
    case 0x91uLL:
    case 0x92uLL:
      v35 = @".AppleSystemUIFaceEmphasizedItalicExtraLargeTitle";
      v36 = (v21 & 1) == 0;
      v37 = @".AppleSystemUIFaceItalicExtraLargeTitle";
      if ((v21 & 1) == 0)
      {
        v35 = @".AppleSystemUIFaceEmphasizedExtraLargeTitle";
      }

      v38 = @".AppleSystemUIFaceExtraLargeTitle";
      goto LABEL_90;
    case 0x83uLL:
    case 0x84uLL:
    case 0x93uLL:
    case 0x94uLL:
      v35 = @".AppleSystemUIFaceEmphasizedItalicExtraLargeTitle2";
      v36 = (v21 & 1) == 0;
      v37 = @".AppleSystemUIFaceItalicExtraLargeTitle2";
      if ((v21 & 1) == 0)
      {
        v35 = @".AppleSystemUIFaceEmphasizedExtraLargeTitle2";
      }

      v38 = @".AppleSystemUIFaceExtraLargeTitle2";
LABEL_90:
      if (!v36)
      {
        v38 = v37;
      }

      v40 = (v21 & 2) == 0;
LABEL_93:
      if (v40)
      {
        return v38;
      }

      else
      {
        return v35;
      }

    case 0x95uLL:
    case 0x96uLL:
      v33 = @".AppleSystemUIFacePreferredSize-Bold";
      v34 = @".AppleSystemUIFacePreferredSize-Regular";
      goto LABEL_196;
    case 0x9CuLL:
    case 0x9DuLL:
    case 0x9EuLL:
    case 0x9FuLL:
    case 0xA5uLL:
    case 0xADuLL:
      if ((v21 & 0x40) != 0)
      {
        goto LABEL_48;
      }

      if ((v21 & 3u) > 1)
      {
        if ((v21 & 3) == 2)
        {
          v41 = @".AppleSystemUIFontEmphasized";
          v42 = @".AppleSystemUIFontBold";
        }

        else
        {
          v41 = @".AppleSystemUIFontEmphasizedItalic";
          v42 = @".AppleSystemUIFontBoldItalic";
        }

        if ((v46.isa & 0xFFFFFFFFFFFFFFF7) == 0xA5)
        {
          return v42;
        }

        else
        {
          return v41;
        }
      }

      else if ((v21 & 3) != 0)
      {
        return @".AppleSystemUIFontItalic";
      }

      else
      {
        return @".AppleSystemUIFont";
      }

    case 0xA0uLL:
    case 0xA8uLL:
LABEL_48:
      if ((v21 & 0x40) != 0)
      {
        goto LABEL_54;
      }

      v33 = @".AppleSystemUIFontThinItalic";
      v34 = @".AppleSystemUIFontThin";
      goto LABEL_119;
    case 0xA1uLL:
    case 0xA9uLL:
LABEL_54:
      if ((v21 & 0x40) != 0)
      {
        goto LABEL_56;
      }

      v33 = @".AppleSystemUIFontLightItalic";
      v34 = @".AppleSystemUIFontLight";
      goto LABEL_119;
    case 0xA2uLL:
    case 0xAAuLL:
LABEL_56:
      if ((v21 & 0x40) != 0)
      {
        goto LABEL_60;
      }

      v33 = @".AppleSystemUIFontUltraLightItalic";
      v34 = @".AppleSystemUIFontUltraLight";
      goto LABEL_119;
    case 0xA3uLL:
    case 0xABuLL:
LABEL_60:
      if ((v21 & 0x40) != 0)
      {
        goto LABEL_64;
      }

      v33 = @".AppleSystemUIFontMediumItalic";
      v34 = @".AppleSystemUIFontMedium";
      goto LABEL_119;
    case 0xA4uLL:
    case 0xACuLL:
LABEL_64:
      if ((v21 & 0x40) != 0)
      {
        goto LABEL_68;
      }

      v46.info = @".AppleSystemUIFont";
      v46.data = @".AppleSystemUIFontItalic";
      v22 = @".AppleSystemUIFontDemi";
      v23 = @".AppleSystemUIFontDemiItalic";
      goto LABEL_143;
    case 0xA6uLL:
    case 0xAEuLL:
LABEL_68:
      if ((v21 & 0x40) != 0)
      {
        goto LABEL_72;
      }

      v46.info = @".AppleSystemUIFont";
      v46.data = @".AppleSystemUIFontItalic";
      v22 = @".AppleSystemUIFontHeavy";
      v23 = @".AppleSystemUIFontHeavyItalic";
      goto LABEL_143;
    case 0xA7uLL:
    case 0xAFuLL:
LABEL_72:
      if ((v21 & 0x40) == 0)
      {
        v46.info = @".AppleSystemUIFont";
        v46.data = @".AppleSystemUIFontItalic";
        v22 = @".AppleSystemUIFontBlack";
        v23 = @".AppleSystemUIFontBlackItalic";
        goto LABEL_143;
      }

      if (v46.isa <= 162)
      {
        if (v46.isa > 160)
        {
          if (v46.isa == 161)
          {
            return @".AppleSystemUIFontCondensed-Light";
          }

          else
          {
            return @".AppleSystemUIFontCondensed-UltraLight";
          }
        }

        if (v46.isa != 157)
        {
          if (v46.isa == 160)
          {
            return @".AppleSystemUIFontCondensed-Thin";
          }

          goto LABEL_142;
        }
      }

      else
      {
        if (v46.isa <= 164)
        {
          if (v46.isa == 163)
          {
            return @".AppleSystemUIFontCondensed-Medium";
          }

          else
          {
            return @".AppleSystemUIFontCondensed-Semibold";
          }
        }

        if (v46.isa == 167)
        {
          return @".AppleSystemUIFontCondensed-Black";
        }

        if (v46.isa == 166)
        {
          return @".AppleSystemUIFontCondensed-Heavy";
        }

        if (v46.isa != 165)
        {
LABEL_142:
          v46.info = @".AppleSystemUIFontCompact-Regular";
          v46.data = @".AppleSystemUIFontCompact-Italic";
          v22 = @".AppleSystemUIFontCompact-Bold";
          v23 = @".AppleSystemUIFontCompact-BoldItalic";
          goto LABEL_143;
        }
      }

      v33 = @".AppleSystemUIFontCondensed-Bold";
      v34 = @".AppleSystemUIFontCondensed-Regular";
LABEL_196:
      v45 = (v21 & 2) == 0;
LABEL_197:
      if (v45)
      {
        return v34;
      }

      else
      {
        return v33;
      }

    case 0xB2uLL:
    case 0xB3uLL:
    case 0xB4uLL:
    case 0xB5uLL:
    case 0xBBuLL:
    case 0xC3uLL:
      goto LABEL_142;
    case 0xB6uLL:
      v33 = @".AppleSystemUIFontCompact-ThinItalic";
      v34 = @".AppleSystemUIFontCompact-Thin";
      goto LABEL_119;
    case 0xB7uLL:
      v33 = @".AppleSystemUIFontCompact-LightItalic";
      v34 = @".AppleSystemUIFontCompact-Light";
      goto LABEL_119;
    case 0xB8uLL:
      v33 = @".AppleSystemUIFontCompact-UltraLightItalic";
      v34 = @".AppleSystemUIFontCompact-UltraLight";
      goto LABEL_119;
    case 0xB9uLL:
      v33 = @".AppleSystemUIFontCompact-MediumItalic";
      v34 = @".AppleSystemUIFontCompact-Medium";
      goto LABEL_119;
    case 0xBAuLL:
      v46.info = @".AppleSystemUIFontCompact-Regular";
      v46.data = @".AppleSystemUIFontCompact-Italic";
      v22 = @".AppleSystemUIFontCompact-Semibold";
      v23 = @".AppleSystemUIFontCompact-SemiboldItalic";
      goto LABEL_143;
    case 0xBCuLL:
      v46.info = @".AppleSystemUIFontCompact-Regular";
      v46.data = @".AppleSystemUIFontCompact-Italic";
      v22 = @".AppleSystemUIFontCompact-Heavy";
      v23 = @".AppleSystemUIFontCompact-HeavyItalic";
      goto LABEL_143;
    case 0xBDuLL:
      v46.info = @".AppleSystemUIFontCompact-Regular";
      v46.data = @".AppleSystemUIFontCompact-Italic";
      v22 = @".AppleSystemUIFontCompact-Black";
      v23 = @".AppleSystemUIFontCompact-BlackItalic";
      goto LABEL_143;
    case 0xC6uLL:
    case 0xC7uLL:
    case 0xC8uLL:
    case 0xC9uLL:
    case 0xCFuLL:
    case 0xD7uLL:
      if ((v21 & 0x40) != 0)
      {
        goto LABEL_50;
      }

      v46.info = @".AppleSystemUIFontCore-Regular";
      v46.data = @".AppleSystemUIFontCore-Italic";
      v22 = @".AppleSystemUIFontCore-Bold";
      v23 = @".AppleSystemUIFontCore-BoldItalic";
      goto LABEL_143;
    case 0xCAuLL:
    case 0xD2uLL:
LABEL_50:
      if ((v21 & 0x40) != 0)
      {
        goto LABEL_52;
      }

      v33 = @".AppleSystemUIFontCore-ThinItalic";
      v34 = @".AppleSystemUIFontCore-Thin";
      goto LABEL_119;
    case 0xCBuLL:
    case 0xD3uLL:
LABEL_52:
      if ((v21 & 0x40) != 0)
      {
        goto LABEL_58;
      }

      v33 = @".AppleSystemUIFontCore-LightItalic";
      v34 = @".AppleSystemUIFontCore-Light";
      goto LABEL_119;
    case 0xCCuLL:
    case 0xD4uLL:
LABEL_58:
      if ((v21 & 0x40) != 0)
      {
        goto LABEL_62;
      }

      v33 = @".AppleSystemUIFontCore-UltraLightItalic";
      v34 = @".AppleSystemUIFontCore-UltraLight";
      goto LABEL_119;
    case 0xCDuLL:
    case 0xD5uLL:
LABEL_62:
      if ((v21 & 0x40) != 0)
      {
        goto LABEL_66;
      }

      v33 = @".AppleSystemUIFontCore-MediumItalic";
      v34 = @".AppleSystemUIFontCore-Medium";
LABEL_119:
      v45 = (v21 & 1) == 0;
      goto LABEL_197;
    case 0xCEuLL:
    case 0xD6uLL:
LABEL_66:
      if ((v21 & 0x40) != 0)
      {
        goto LABEL_70;
      }

      v46.info = @".AppleSystemUIFontCore-Regular";
      v46.data = @".AppleSystemUIFontCore-Italic";
      v22 = @".AppleSystemUIFontCore-Semibold";
      v23 = @".AppleSystemUIFontCore-SemiboldItalic";
      goto LABEL_143;
    case 0xD0uLL:
    case 0xD8uLL:
LABEL_70:
      if ((v21 & 0x40) != 0)
      {
        goto LABEL_74;
      }

      v46.info = @".AppleSystemUIFontCore-Regular";
      v46.data = @".AppleSystemUIFontCore-Italic";
      v22 = @".AppleSystemUIFontCore-Heavy";
      v23 = @".AppleSystemUIFontCore-HeavyItalic";
      goto LABEL_143;
    case 0xD1uLL:
    case 0xD9uLL:
LABEL_74:
      if ((v21 & 0x40) == 0)
      {
        v46.info = @".AppleSystemUIFontCore-Regular";
        v46.data = @".AppleSystemUIFontCore-Italic";
        v22 = @".AppleSystemUIFontCore-Black";
        v23 = @".AppleSystemUIFontCore-BlackItalic";
LABEL_143:
        v46.length = v22;
        v47 = v23;
        return *(&v46.info + (v21 & 3));
      }

      if (v46.isa > 204)
      {
        if (v46.isa <= 206)
        {
          if (v46.isa == 205)
          {
            return @".AppleSystemUIFontCoreCondensed-Medium";
          }

          else
          {
            return @".AppleSystemUIFontCoreCondensed-Semibold";
          }
        }

        if (v46.isa == 209)
        {
          return @".AppleSystemUIFontCoreCondensed-Black";
        }

        if (v46.isa == 208)
        {
          return @".AppleSystemUIFontCoreCondensed-Heavy";
        }

        if (v46.isa != 207)
        {
          goto LABEL_148;
        }

LABEL_195:
        v33 = @".AppleSystemUIFontCoreCondensed-Bold";
        v34 = @".AppleSystemUIFontCoreCondensed-Regular";
        goto LABEL_196;
      }

      if (v46.isa > 202)
      {
        if (v46.isa == 203)
        {
          return @".AppleSystemUIFontCoreCondensed-Light";
        }

        else
        {
          return @".AppleSystemUIFontCoreCondensed-UltraLight";
        }
      }

      if (v46.isa == 199)
      {
        goto LABEL_195;
      }

      if (v46.isa == 202)
      {
        return @".AppleSystemUIFontCoreCondensed-Thin";
      }

LABEL_148:
      v43 = v21 & 0x42;
      if (v43 == 66)
      {
        return @".AppleSystemUIFontCondensed-Bold";
      }

LABEL_150:
      if (v43 == 64)
      {
        return @".AppleSystemUIFontCondensed-Regular";
      }

LABEL_152:
      if ((v21 & 0x40) == 0)
      {
        if (v46.isa <= 239)
        {
          if (v46.isa > 237)
          {
            if (v46.isa == 238)
            {
              return @".AppleSystemUIFontThin";
            }

            else
            {
              return @".AppleSystemUIFontLight";
            }
          }

          if (v46.isa == 236 || v46.isa == 237)
          {
            v33 = @".AppleSystemUIFontBold";
            v34 = @".AppleSystemUIFont";
            goto LABEL_196;
          }
        }

        else
        {
          if (v46.isa <= 241)
          {
            if (v46.isa == 240)
            {
              return @".AppleSystemUIFontUltraLight";
            }

            else
            {
              return @".AppleSystemUIFontMedium";
            }
          }

          switch(v46.isa)
          {
            case 0xF2uLL:
              return @".AppleSystemUIFontDemi";
            case 0xF3uLL:
              return @".AppleSystemUIFontHeavy";
            case 0xF4uLL:
              return @".AppleSystemUIFontBlack";
          }
        }
      }

LABEL_167:
      v44 = v21 & 0x42;
      if (v44 == 66)
      {
        return @".AppleSystemUIFontCoreCondensed-Bold";
      }

LABEL_169:
      if (v44 == 64)
      {
        return @".AppleSystemUIFontCoreCondensed-Regular";
      }

LABEL_171:
      if ((v21 & 0x40) == 0)
      {
        if (v46.isa <= 248)
        {
          if (v46.isa > 246)
          {
            if (v46.isa == 247)
            {
              return @".AppleSystemUIFontCore-Thin";
            }

            else
            {
              return @".AppleSystemUIFontCore-Light";
            }
          }

          if (v46.isa == 245 || v46.isa == 246)
          {
            v33 = @".AppleSystemUIFontCore-Bold";
            v34 = @".AppleSystemUIFontCore-Regular";
            goto LABEL_196;
          }
        }

        else
        {
          if (v46.isa <= 250)
          {
            if (v46.isa == 249)
            {
              return @".AppleSystemUIFontCore-UltraLight";
            }

            else
            {
              return @".AppleSystemUIFontCore-Medium";
            }
          }

          switch(v46.isa)
          {
            case 0xFBuLL:
              return @".AppleSystemUIFontCore-Semibold";
            case 0xFCuLL:
              return @".AppleSystemUIFontCore-Heavy";
            case 0xFDuLL:
              return @".AppleSystemUIFontCore-Black";
          }
        }
      }

LABEL_186:
      v32 = @".AppleSystemUIFontRounded-Semibold";
LABEL_187:
      if ((v21 & 2) != 0)
      {
        return v32;
      }

      else
      {
        return this;
      }

    case 0xDAuLL:
    case 0xDBuLL:
    case 0xDCuLL:
    case 0xDDuLL:
    case 0xDEuLL:
      goto LABEL_186;
    case 0xE3uLL:
    case 0xE4uLL:
    case 0xE5uLL:
    case 0xE6uLL:
    case 0xE7uLL:
      v32 = @".AppleSystemUIFontCompactRounded-Semibold";
      goto LABEL_187;
    case 0xECuLL:
      goto LABEL_148;
    case 0xEDuLL:
      v43 = v21 & 0x42;
      goto LABEL_150;
    case 0xEEuLL:
    case 0xEFuLL:
    case 0xF0uLL:
    case 0xF1uLL:
    case 0xF2uLL:
    case 0xF3uLL:
    case 0xF4uLL:
      goto LABEL_152;
    case 0xF5uLL:
      goto LABEL_167;
    case 0xF6uLL:
      v44 = v21 & 0x42;
      goto LABEL_169;
    case 0xF7uLL:
    case 0xF8uLL:
    case 0xF9uLL:
    case 0xFAuLL:
    case 0xFBuLL:
    case 0xFCuLL:
    case 0xFDuLL:
      goto LABEL_171;
    default:
      result = FindSerifWithTraits(v46.isa, v19 | v20, a4);
      if (!result)
      {
        result = FindMonospacedWithTraits(isa, v21, a4);
        if (!result)
        {
          return this;
        }
      }

      return result;
  }
}

uint64_t MapTightTrait(__int16 a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a1 < 0)
  {
    if (a2)
    {
      v8 = a8;
    }

    else
    {
      v8 = a7;
    }

    v11 = a6;
    v12 = a7;
    v13 = a8;
  }

  else
  {
    if (a2)
    {
      v8 = a5;
    }

    else
    {
      v8 = a4;
    }

    v11 = a3;
    v12 = a4;
    v13 = a5;
  }

  v14 = v8;
  v9 = *(&v11 + (a1 & 3));

  return TDescriptorSource::UIFontNameForUIType(v9);
}

CTFontSymbolicTraits CTFontGetSymbolicTraits(CTFontRef font)
{
  if (font)
  {
    v1 = *(font + 5);
    v2 = *(v1 + 12);
    LODWORD(font) = (*(**(v1 + 408) + 160))(*(v1 + 408)) | ((v2 & 1) << 11);
  }

  return font;
}

void TAttributes::HandleFontAttribute(const void *a1, _BYTE *a2)
{
  v3 = _CTFontEnsureFontRef(a1);
  if (v3)
  {
    v4 = v3;
    a2[8] = 1;
    v5 = (*a2 + 16);

    TCFRef<__CTFont const*>::Retain(v5, v4);
  }
}

void TAttributes::TAttributes(TAttributes *this, const __CFDictionary *a2, const TCharStream *a3, CFRange a4, int a5)
{
  *(this + 1) = 0u;
  v7 = (this + 16);
  *(this + 56) = 0;
  *(this + 104) = 0;
  *(this + 112) = 0;
  *(this + 18) = 0;
  *this = 0u;
  *(this + 2) = 0u;
  *(this + 12) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 34) = 0;
  if (a2)
  {
    cf = 0;
    TAttributes::ApplyFont(this, a2, 0, a3, a4, &cf);
    if (cf)
    {
      v9 = operator new(0x10uLL, MEMORY[0x1E69E5398]);
      if (v9)
      {
        *v9 = 0;
        *(v9 + 8) = 0;
      }

      v10 = *(this + 16);
      *(this + 16) = v9;
      if (v10)
      {
        MEMORY[0x1865F22D0](v10, 0x10C0C40E6EFC850);
        v9 = *(this + 16);
      }

      if (v9)
      {
        v11 = TParagraphStyle::SetStyle(v9, cf);
        v12 = *(this + 16);
        if (v11)
        {
          if (TParagraphStyle::GetLineBoundsOptions(v12, v8) >= 4)
          {
            *(this + 69) |= 0x100u;
          }
        }

        else
        {
          *(this + 16) = 0;
          if (v12)
          {
            MEMORY[0x1865F22D0](v12, 0x10C0C40E6EFC850);
          }
        }
      }

      else
      {
        *(this + 16) = 0;
      }
    }
  }

  else
  {
    if (qword_1ED567C28 != -1)
    {
      dispatch_once_f(&qword_1ED567C28, 0, TAttributes::GetDefaultAttributes(void)::{lambda(void *)#1}::__invoke);
    }

    TCFRef<__CTFont const*>::Retain(this, _MergedGlobals_18);
    if (qword_1ED567C30 != -1)
    {
      dispatch_once_f(&qword_1ED567C30, 0, TAttributes::GetDefaultFont(void)::{lambda(void *)#1}::__invoke);
    }

    TCFRef<__CTFont const*>::Retain(v7, qword_1ED567C00);
  }

  CompositionLanguage = TAttributes::GetCompositionLanguage(this, v8);
  *(this + 112) = CompositionLanguage;
  if (a5)
  {
    TAttributes::SetRareAttributes(this, 32);
    CompositionLanguage = *(this + 112);
  }

  if (CompositionLanguage >= 2 && CJKCompositionEngine::IsEnabled(CompositionLanguage, this))
  {
    *(this + 69) |= 0x100u;
  }

  else
  {
    *(this + 112) = 1;
  }
}

void TAttributes::ApplyFont(TAttributes *this, const __CFDictionary *a2, const __CTFont *a3, const TCharStream *a4, CFRange a5, const void **a6)
{
  length = a5.length;
  location = a5.location;
  v81 = *MEMORY[0x1E69E9840];
  memset(v76, 170, sizeof(v76));
  __p = 0;
  v74 = 0;
  v75 = 0;
  v77 = v76;
  v13 = *(this + 50);
  context.b = -3.72066208e-103;
  *&context.a = this;
  *&context.c = a4;
  *&context.d = location;
  *&context.tx = length;
  *&context.ty = a6;
  p_p = &__p;
  v80 = 0xAAAAAAAAAAAA0000;
  v14 = TAttributes::ApplyAttributeHandlers;
  if (a3)
  {
    if ((*(this + 51) & 1) == 0)
    {
      LOBYTE(v18) = 0;
      LOBYTE(v16) = 0;
      v15 = v13;
LABEL_13:
      v15 &= !TAttributes::ApplyTextTransform(this, atomic_load_explicit(this + 2, memory_order_acquire));
      if ((*(this + 69) & 0x2000) != 0)
      {
        context.a = -3.72066208e-103;
        TAttributes::OriginalFont(this, &context);
        v22 = *(atomic_load_explicit(&context, memory_order_acquire) + 40);
        if ((*(**(v22 + 408) + 784))() || TFont::GetSecondaryScaleData(v22))
        {
          v23 = TAttributes::EnsureRareData(this);
          v24 = *(v22 + 24);
          v25 = atomic_load_explicit(this + 2, memory_order_acquire);
          v26 = v25;
          v66 = v23;
          v27 = (v23 + 96);
          explicit = atomic_load_explicit((v23 + 96), memory_order_acquire);
          if (explicit)
          {
            *&v69.a = CTFontCreateCopyWithAttributes(v25, v24, 0, 0);

            v29 = TAttributes::EnsureBaselineAttributes(this);
            v30 = atomic_load_explicit(v27, memory_order_acquire);
            if ((*(v29 + 264) & 1) == 0)
            {
              *(v29 + 248) = 0u;
              *(v29 + 232) = 0u;
              *(v29 + 216) = 0u;
              *(v29 + 200) = 0u;
              *(v29 + 184) = 0u;
              *(v29 + 168) = 0u;
              *(v29 + 152) = 0u;
              v31 = (v29 + 144);
              v32 = 128;
              *(v29 + 136) = 0u;
              do
              {
                *(v31 - 8) = 0;
                *v31 = 0;
                v31 += 16;
                v32 -= 16;
              }

              while (v32);
              *(v29 + 264) = 1;
            }

            TCFRef<__CTFont const*>::Retain((v29 + 272), v30);
          }

          else
          {
            TCFRef<__CTFont const*>::Retain(v27, v25);
          }

          v33 = CustomRatioFromAttributes(atomic_load_explicit(this, memory_order_acquire));
          v35 = v34;
          matched = TextScaleWeightMatchVariableOnly(atomic_load_explicit(this, memory_order_acquire));
          v69.a = -3.72066208e-103;
          v67 = v26;
          CopySecondaryScaleRecipeInternal(&v69, v26, atomic_load_explicit(&context, memory_order_acquire), v33, v35, matched);
          v37 = atomic_load_explicit(&v69, memory_order_acquire);
          v21 = v37 != 0;
          if (v37)
          {
            valuePtr.a = 0.0;
            Value = CFDictionaryGetValue(atomic_load_explicit(&v69, memory_order_acquire), @"CTBaselineOffset");
            if (Value)
            {
              v39 = Value;
              v40 = CFGetTypeID(Value);
              if (v40 == CFNumberGetTypeID() || v40 == CFBooleanGetTypeID())
              {
                CFNumberGetValue(v39, kCFNumberDoubleType, &valuePtr);
              }

              else if (v40 == CFStringGetTypeID())
              {
                valuePtr.a = CFStringGetDoubleValue(v39);
              }
            }

            if ((*(this + 50) & 1) == 0)
            {
              a = valuePtr.a;
              v42 = *(this + 15);
              OriginalValueOf = 0.0;
              if (v42)
              {
                v44 = *(v42 + 40);
                if (v44)
                {
                  OriginalValueOf = TAttributes::GetOriginalValueOf(this, v44);
                }
              }

              *(v66 + 48) = a + OriginalValueOf;
            }

            DoubleValue = 0.0;
            v45 = CFDictionaryGetValue(atomic_load_explicit(&v69, memory_order_acquire), @"CTTracking");
            if (v45)
            {
              v46 = v45;
              v47 = CFGetTypeID(v45);
              if (v47 == CFNumberGetTypeID() || v47 == CFBooleanGetTypeID())
              {
                CFNumberGetValue(v46, kCFNumberDoubleType, &DoubleValue);
              }

              else if (v47 == CFStringGetTypeID())
              {
                DoubleValue = CFStringGetDoubleValue(v46);
              }
            }

            if ((*(this + 69) & 0x1000) == 0)
            {
              v48 = DoubleValue;
              *(v66 + 16) = v48 + TAttributes::GetOriginalValueOf(this, @"CTTracking");
              *(v66 + 24) = 1;
              *(this + 69) |= 0x100u;
            }

            v70 = CFDictionaryGetValue(atomic_load_explicit(&v69, memory_order_acquire), @"NSFont");
            v71 = atomic_exchange(&v70, 0);
            if (atomic_load_explicit(&v71, memory_order_acquire))
            {

              *(this + 48) = 1;
            }
          }

          else if (explicit)
          {
            if ((*(this + 50) & 1) == 0)
            {
              v63 = *(this + 15);
              v64 = 0.0;
              if (v63)
              {
                v65 = *(v63 + 40);
                if (v65)
                {
                  v64 = TAttributes::GetOriginalValueOf(this, v65) + 0.0;
                }
              }

              *(v66 + 48) = v64;
            }

            if ((*(this + 69) & 0x1000) == 0)
            {
              *(v66 + 16) = TAttributes::GetOriginalValueOf(this, @"CTTracking") + 0.0;
              *(v66 + 24) = 1;
              *(this + 69) |= 0x100u;
            }
          }
        }

        else
        {
          v21 = 0;
        }
      }

      else
      {
        v21 = 0;
      }

      v20 = 1;
      goto LABEL_46;
    }

    LOBYTE(context.b) = 1;
    v14 = TAttributes::ApplyFontAttributeHandlers;
  }

  v15 = v13;
  CFDictionaryApplyFunction(a2, v14, &context);
  v16 = v80;
  v17 = BYTE1(v80) & 1;
  if (__p != v74)
  {
    LOBYTE(v17) = 1;
  }

  *(this + 51) = v17;
  v18 = v16 >> 8;
  if (LOBYTE(context.b) == 1)
  {
    if (!a3)
    {
      TCFRef<__CTFont const*>::Retain(this, a2);
    }

    goto LABEL_13;
  }

  MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
  if (qword_1ED567C30 != -1)
  {
    dispatch_once_f(&qword_1ED567C30, 0, TAttributes::GetDefaultFont(void)::{lambda(void *)#1}::__invoke);
  }

  TCFRef<__CTFont const*>::Retain(this + 2, qword_1ED567C00);
  CFDictionarySetValue(MutableCopy, @"NSFont", atomic_load_explicit(this + 2, memory_order_acquire));

  v20 = 0;
  v21 = 0;
LABEL_46:
  v49 = __p;
  v50 = v74;
  while (v49 != v50)
  {
    *&v51 = 0xAAAAAAAAAAAAAAAALL;
    *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&context.a = v51;
    *&context.c = v51;
    std::__function::__value_func<void ()(TAttributes &)>::__value_func[abi:fn200100](&context, v49);
    if (!*&context.d)
    {
      std::__throw_bad_function_call[abi:fn200100]();
    }

    (*(**&context.d + 48))(*&context.d, this);
    std::__function::__value_func<void ()(TAttributes &)>::~__value_func[abi:fn200100](&context);
    v49 += 32;
  }

  v52 = *(this + 15);
  if (v52 && *(v52 + 24) == 1 && !((*(v52 + 16) == 0.0) | v18 & 1))
  {
    if (v21)
    {
      goto LABEL_58;
    }

    context.a = -3.72066208e-103;
    v54 = (this + 16);
    v55 = atomic_load_explicit(this + 2, memory_order_acquire);
    v53 = 0;
  }

  else
  {
    v53 = v16;
    if ((v18 & (v16 != 1)) != 1)
    {
      goto LABEL_58;
    }

    context.a = -3.72066208e-103;
    v54 = (this + 16);
    v55 = atomic_load_explicit(this + 2, memory_order_acquire);
  }

  TAttributes::CopyOfFontWithLigatureSetting(&context, v55, v53);
  if (atomic_load_explicit(&context, memory_order_acquire))
  {

    *(this + 48) = 1;
  }

LABEL_58:
  if (*(this + 50) == 1)
  {
    if ((v15 & 1) == 0)
    {
      v56 = this + 56;
      if (!*(this + 104))
      {
        v56 = MEMORY[0x1E695EFD0];
      }

      v57 = *v56;
      *&context.b = *(v56 + 8);
      context.a = *(v56 + 3);
      context.d = v57;
      *&context.tx = *(v56 + 2);
      v69 = *kRotateLeftTransform;
      CGAffineTransformConcat(&valuePtr, &context, &v69);
      v58 = *&valuePtr.c;
      *(this + 56) = *&valuePtr.a;
      *(this + 72) = v58;
      *(this + 88) = *&valuePtr.tx;
      *(this + 104) = 1;
    }

    VerticalCopyOf(atomic_load_explicit(this + 2, memory_order_acquire), &context);
    if (atomic_load_explicit(&context, memory_order_acquire))
    {

      *(this + 48) = 1;
    }
  }

  if (v20)
  {
    TAttributes::SetLayoutAttributesForFont(this);
  }

  v59 = __p;
  if (__p)
  {
    v60 = v74;
    v61 = __p;
    if (v74 != __p)
    {
      do
      {
        v60 = std::__function::__value_func<void ()(TAttributes &)>::~__value_func[abi:fn200100](v60 - 32);
      }

      while (v60 != v59);
      v61 = __p;
    }

    v74 = v59;
    if (v76 > v61 || &v77 <= v61)
    {
      operator delete(v61);
    }
  }
}

uint64_t (*TAttributes::ApplyAttributeHandlers(TAttributes *this, const void *a2, const void *a3, void *a4))(const void *, const void *)
{
  if (qword_1ED567C10 != -1)
  {
    dispatch_once_f(&qword_1ED567C10, 0, TAttributes::ApplyAttributeHandlers(void const*,void const*,void *)::$_0::__invoke);
  }

  result = CFDictionaryGetValue(qword_1ED567C08, this);
  if (result)
  {

    return result(a2, a3);
  }

  return result;
}

void TAttributes::ApplyAttributeHandlers(void const*,void const*,void *)::$_0::__invoke()
{
  keys[37] = *MEMORY[0x1E69E9840];
  keys[0] = @"NSFont";
  keys[1] = @"NSParagraphStyle";
  keys[2] = @"CTForegroundColor";
  keys[3] = @"CTBackgroundColor";
  keys[4] = @"NSColor";
  keys[5] = @"NSBackgroundColor";
  keys[6] = @"NSShadow";
  keys[7] = @"NSBaselineOffset";
  keys[8] = @"NSStrokeWidth";
  keys[9] = @"NSUnderline";
  keys[10] = @"NSStrikethrough";
  keys[11] = @"NSKern";
  keys[12] = @"CTTracking";
  keys[13] = @"NSLigature";
  keys[14] = @"CTBaselineOffset";
  keys[15] = @"CTSuperscript";
  keys[16] = @"NSCharacterShape";
  keys[17] = @"CTVerticalForms";
  keys[18] = @"CTHorizontalInVerticalForms";
  keys[19] = @"NSGlyphInfo";
  keys[20] = @"CTRunDelegate";
  keys[21] = @"CTForegroundColorFromContext";
  keys[22] = @"CTRenderingStyle";
  keys[23] = @"CTBaselineClass";
  keys[24] = @"CTBaselineInfo";
  keys[25] = @"CTBaselineReferenceInfo";
  keys[26] = @"NSWritingDirection";
  keys[27] = @"NSLanguage";
  keys[28] = @"CTRubyAnnotation";
  keys[29] = @"CTTextEncapsulation";
  keys[30] = @"NSTextEncapsulation";
  keys[31] = @"CTTrimWhitespaceBackground";
  keys[32] = @"CTImposedGlyph";
  keys[33] = @"CTPalette";
  keys[34] = @"NSTextScale";
  keys[35] = @"CTAdaptiveImageProvider";
  keys[36] = @"CTRunMetricsDelegate";
  memcpy(__dst, off_1EF258368, sizeof(__dst));
  v0 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, __dst, 37, MEMORY[0x1E695E9D8], 0);
  qword_1ED567C08 = atomic_exchange(&v0, 0);
}

BOOL TAttributes::ApplyTextTransform(TAttributes *this, const __CTFont *a2)
{
  v3 = *(a2 + 5);
  v4.f64[0] = NAN;
  v4.f64[1] = NAN;
  v11 = v4;
  v12 = v4;
  v10 = v4;
  TFont::GetEffectiveMatrix(v3, &v10);
  v5 = vdupq_n_s64(0x3CB0000000000000uLL);
  v6 = vandq_s8(vandq_s8(vcgeq_f64(v5, vabsq_f64(vaddq_f64(v11, xmmword_18475B150))), vcgeq_f64(v5, vabsq_f64(vaddq_f64(v10, xmmword_18475B140)))), vcgeq_f64(v5, vabsq_f64(v12)));
  v7 = vandq_s8(vdupq_laneq_s64(v6, 1), v6).u64[0];
  if ((v7 & 0x8000000000000000) == 0)
  {
    v8 = v11;
    *(this + 56) = v10;
    *(this + 72) = v8;
    *(this + 88) = v12;
    *(this + 104) = 1;
  }

  return v7 >= 0;
}

TFont *TAttributes::SetLayoutAttributesForFont(atomic_ullong *this)
{
  result = *(atomic_load_explicit(this + 2, memory_order_acquire) + 40);
  if (result)
  {
    v4 = -86;
    result = TFont::IsSystemUIFontAndForShaping(result, &v4);
    if (result)
    {
      v3 = *(this + 69);
      *(this + 69) = v3 | 0x200;
      if (v4)
      {
        *(this + 69) = v3 | 0x600;
      }
    }
  }

  return result;
}

uint64_t TAttributes::GetCompositionLanguage(TAttributes *this, const void *a2)
{
  result = *(this + 112);
  if (!result)
  {
    v4 = *(this + 16);
    if (!v4 || (result = TParagraphStyle::GetCompositionLanguage(v4, a2), !result))
    {
      if ((*(this + 69) & 0x200) != 0)
      {
        return CTParagraphStyleGetCompositionLanguageForLanguage(atomic_load_explicit(this + 3, memory_order_acquire));
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t TAttributes::operator=(uint64_t a1, uint64_t a2)
{
  TCFRef<__CTFont const*>::Retain(a1, atomic_load_explicit(a2, memory_order_acquire));
  TCFRef<__CTFont const*>::Retain((a1 + 8), atomic_load_explicit((a2 + 8), memory_order_acquire));
  TCFRef<__CTFont const*>::Retain((a1 + 16), atomic_load_explicit((a2 + 16), memory_order_acquire));
  TCFRef<__CTFont const*>::Retain((a1 + 24), atomic_load_explicit((a2 + 24), memory_order_acquire));
  TCFRef<__CTFont const*>::Retain((a1 + 32), atomic_load_explicit((a2 + 32), memory_order_acquire));
  TCFRef<__CTFont const*>::Retain((a1 + 40), atomic_load_explicit((a2 + 40), memory_order_acquire));
  *(a1 + 48) = *(a2 + 48);
  v4 = *(a2 + 56);
  v5 = *(a2 + 72);
  v6 = *(a2 + 88);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 88) = v6;
  *(a1 + 72) = v5;
  *(a1 + 56) = v4;
  *(a1 + 112) = *(a2 + 112);
  if (*(a2 + 120))
  {
    operator new();
  }

  std::unique_ptr<TAttributes::RareData>::reset[abi:fn200100]((a1 + 120), 0);
  if (*(a2 + 128))
  {
    operator new();
  }

  v7 = *(a1 + 128);
  *(a1 + 128) = 0;
  if (v7)
  {
    MEMORY[0x1865F22D0](v7, 0x10C0C40E6EFC850);
  }

  *(a1 + 136) = *(a2 + 136);
  if (*(a2 + 144))
  {
    operator new();
  }

  std::unique_ptr<TBaselineAttributes>::reset[abi:fn200100]((a1 + 144), 0);
  return a1;
}

uint64_t ShouldCheckForKnownUrduSequences(void)
{
  if (_os_feature_enabled_impl())
  {
    if (_os_feature_enabled_impl())
    {
      v0 = 1;
    }

    else
    {
      if (qword_1ED567BA0 != -1)
      {
        dispatch_once_f(&qword_1ED567BA0, 0, GetLocaleChangedCount(void)::$_0::__invoke);
      }

      v2 = gLocaleChangedCount;
      if (dword_1ED567B70 == gLocaleChangedCount)
      {
        v0 = byte_1ED567B59;
      }

      else
      {
        if ([objc_msgSend(MEMORY[0x1E695DF58] "_deviceLanguage")])
        {
          v5 = 0xAAAAAAAAAAAAAAAALL;
          LanguageIdentifierByNormalizing(@"ur", 0, &v5);
          v3 = atomic_load_explicit(&v5, memory_order_acquire);
          v4 = v3;
          if (v3 == @"ur")
          {
            v0 = 1;
          }

          else if (v3)
          {
            v0 = CFEqual(v3, @"ur") != 0;
          }

          else
          {
            v0 = 0;
          }
        }

        else
        {
          v0 = 0;
        }

        byte_1ED567B59 = v0;
        dword_1ED567B70 = v2;
      }
    }
  }

  else
  {
    v0 = 0;
  }

  return v0 & 1;
}

void TAttributes::~TAttributes(TAttributes *this)
{
  v2 = *(this + 18);
  *(this + 18) = 0;
  if (v2)
  {

    MEMORY[0x1865F22D0](v2, 0x10C0C40A6709A64);
  }

  v3 = *(this + 16);
  *(this + 16) = 0;
  if (v3)
  {
    MEMORY[0x1865F22D0](v3, 0x10C0C40E6EFC850);
  }

  v4 = *(this + 15);
  *(this + 15) = 0;
  if (v4)
  {

    v5 = *(v4 + 88);
    if (v5)
    {
      std::__shared_weak_count::__release_shared[abi:fn200100](v5);
    }

    MEMORY[0x1865F22D0](v4, 0x10E0C403E168215);
  }
}

uint64_t CTParagraphStyleGetCompositionLanguageForLanguage(__CFString *cf1)
{
  if (!cf1 || cf1 == @"en-US-POSIX" || CFEqual(cf1, @"en-US-POSIX"))
  {
    os_unfair_lock_lock_with_options();
    if (dword_1ED567D04 != TGenerationSeed::sGeneration)
    {
      dword_1ED567D04 = TGenerationSeed::sGeneration;
      v2 = CFLocaleCopyPreferredLanguages();
      _MergedGlobals_23 = CompositionLanguageWithPreferences(v2);
    }

    v3 = _MergedGlobals_23;
    os_unfair_lock_unlock(algn_1ED567D08);
  }

  else
  {
    values = cf1;
    v5 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    v3 = CompositionLanguageWithPreferences(v5);
  }

  return v3;
}

uint64_t TCFBase<TRun>::Allocate()
{
  if (TCFBase<TRun>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TRun>::GetTypeID(void)::once, 0, TCFBase<TRun>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return _CFRuntimeCreateInstance();
}

void TRun::TRun(TRun *this, CFRange a2, _CTGlyphStorage *a3, const TAttributes *a4)
{
  length = a2.length;
  location = a2.location;
  *this = &unk_1EF256D38;
  *(this + 8) = a2;
  *(this + 89) = 0;
  *(this + 91) = 0;
  *(this + 96) = 0;
  *(this + 144) = 0;
  *(this + 23) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 24) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  *(this + 40) = 0u;
  TAttributes::operator=(this + 40, a4);
  v8.location = location;
  v8.length = length;
  TStorageRange::TStorageRange((this + 192), a3, v8);
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 32) = 0;
  *(this + 33) = -1;
  *(this + 18) = *MEMORY[0x1E695F060];
  *(this + 76) = -1;
  *(this + 39) = 0;
}

void TStorageRange::TStorageRange(TStorageRange *this, _CTGlyphStorage *a2, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  *this = 0;
  *(this + 8) = a3;
  *(this + 3) = a2;
  *(this + 32) = 0;
  *(this + 33) &= ~1u;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = 2;
  }

  else
  {
    v6 = 0;
  }

  *(this + 33) = *(this + 33) & 0xFD | v6;
  v7 = [*(this + 3) isMemberOfClass:objc_opt_class()];
  v8 = 0;
  if (v7)
  {
    if ([*(this + 3) hasCustomAdvances])
    {
      v8 = 4;
    }

    else
    {
      v8 = 0;
    }
  }

  v9 = *(this + 33);
  v10 = v9 & 0xE3 | v8;
  *(this + 33) = v10;
  *(this + 6) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  if ((v9 & 2) != 0 && length)
  {
    v11 = (*(*(this + 3) + 16) + 2 * location);
    while (1)
    {
      v12 = *v11++;
      if (v12 == -1)
      {
        break;
      }

      if (!--length)
      {
        return;
      }
    }

    *(this + 33) = v10 | 8;
  }
}

uint64_t TCharStreamIterator::GetChar(TCharStreamIterator *this, uint64_t a2)
{
  v3 = this + 8;
  v4 = *(this + 22);
  v5 = __OFSUB__(a2, v4);
  v6 = a2 - v4;
  if (v6 < 0 != v5 || *(this + 23) <= a2)
  {
    return (*(**this + 80))(*this, v3);
  }

  v7 = *(this + 18);
  if (v7)
  {
    return *(v7 + 2 * v6);
  }

  else
  {
    v10 = *(this + 19);
    if (v10)
    {
      return *(v10 + v6);
    }

    else
    {
      return *&v3[2 * v6];
    }
  }
}

uint64_t CTFontHasExuberatedLineHeight(uint64_t a1)
{
  if (!a1)
  {
    return CurrentLocaleIsExuberated();
  }

  result = *(*(a1 + 40) + 408);
  if (result)
  {
    return (*(*result + 792))();
  }

  return result;
}

uint64_t *std::unique_ptr<TAttributes::RareData>::reset[abi:fn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    v3 = *(v2 + 88);
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:fn200100](v3);
    }

    JUMPOUT(0x1865F22D0);
  }

  return result;
}

uint64_t *std::unique_ptr<TBaselineAttributes>::reset[abi:fn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x1865F22D0);
  }

  return result;
}

BOOL IsLanguageIdentifierSuitableForKnownUrduSequences(__CFString *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v17 = 0xAAAAAAAAAAAAAAAALL;
  LanguageIdentifierByNormalizing(a1, 0, &v17);
  v2 = atomic_load_explicit(&v17, memory_order_acquire);
  if (v2 == @"ur")
  {

    goto LABEL_6;
  }

  v3 = v2;
  if (!v2)
  {

    goto LABEL_10;
  }

  v4 = CFEqual(v2, @"ur");

  if (v4)
  {
LABEL_6:
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22[0] = v5;
    v22[1] = v5;
    v20 = 0;
    v21 = 0;
    v19 = 0;
    v23 = v22;
    CStringPtr = CFStringGetCStringPtr(a1, 0x8000100u);
    if (!CStringPtr)
    {
      Length = CFStringGetLength(a1);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v9 = MaximumSizeForEncoding + 1;
      v10 = v19;
      if (MaximumSizeForEncoding + 1 <= (v20 - v19))
      {
        if (MaximumSizeForEncoding + 1 < (v20 - v19))
        {
          v20 = &v19[v9];
        }
      }

      else
      {
        std::vector<char,TInlineBufferAllocator<char,30ul>>::__append(&v19, MaximumSizeForEncoding + 1 - (v20 - v19));
        v10 = v19;
      }

      if (!CFStringGetCString(a1, v10, v9, 0x8000100u))
      {
        goto LABEL_28;
      }

      CStringPtr = v19;
      if (!v19)
      {
        goto LABEL_28;
      }
    }

    if (!strncasecmp_l(CStringPtr, "ks", 2uLL, 0))
    {
      v14 = CStringPtr[2];
      if ((v14 & 0x80000000) != 0)
      {
        if (!__maskrune_l(v14, 0x100uLL, 0))
        {
          goto LABEL_30;
        }
      }

      else if ((*(MEMORY[0x1E69E9830] + 4 * v14 + 60) & 0x100) == 0)
      {
        goto LABEL_30;
      }
    }

    if (strncasecmp_l(CStringPtr, "kas", 3uLL, 0))
    {
LABEL_28:
      v13 = 1;
LABEL_31:
      v18 = &v19;
      std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](&v18);
      goto LABEL_34;
    }

    v15 = CStringPtr[3];
    if ((v15 & 0x80000000) != 0)
    {
      if (__maskrune_l(v15, 0x100uLL, 0))
      {
        goto LABEL_28;
      }
    }

    else if ((*(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x100) != 0)
    {
      goto LABEL_28;
    }

LABEL_30:
    v13 = 0;
    goto LABEL_31;
  }

LABEL_10:
  if (ShouldCheckForKnownUrduSequences())
  {
    v11 = atomic_load_explicit(&v17, memory_order_acquire);
    v12 = v11;
    if (v11 == @"ar")
    {
      v13 = 0;
    }

    else if (v11)
    {
      v13 = CFEqual(v11, @"ar") == 0;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

LABEL_34:

  return v13;
}

_CTNativeGlyphStorage *TGlyphEncoder::EncodeChars(void **a1, CFIndex a2, CFIndex a3, uint64_t a4, int a5)
{
  v220 = *MEMORY[0x1E69E9840];
  v10 = TCFBase<TRun>::Allocate();
  v11 = v10;
  if (v10)
  {
    v12 = *a1;
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = v10 + 9;
    v10[6] = v10 + 9;
    v10[7] = CTGlyphRun::CloneEntire;
    v10[8] = CTGlyphRun::CloneRange;
    v221.location = a2;
    v221.length = a3;
    TRun::TRun((v10 + 9), v221, v12, a4);
  }

  valuePtr[0] = v11;
  v192 = atomic_exchange(valuePtr, 0);

  if ((*(a4 + 138) & 8) != 0)
  {
    goto LABEL_10;
  }

  v14 = *(a4 + 120);
  if (v14)
  {
    if ((*(v14 + 66) & 4) != 0)
    {
      goto LABEL_10;
    }
  }

  v15 = *(a4 + 128);
  if (!v15)
  {
    goto LABEL_9;
  }

  BaseWritingDirection = TParagraphStyle::GetBaseWritingDirection(v15, v13);
  if (BaseWritingDirection == 1)
  {
LABEL_10:
    v17 = 2;
    goto LABEL_11;
  }

  if (BaseWritingDirection == 255)
  {
LABEL_9:
    if (GetDefaultWritingDirection() == 1)
    {
      goto LABEL_10;
    }
  }

  v17 = 0;
LABEL_11:
  v18 = *(a4 + 138);
  v190 = a2;
  v191 = a1;
  if ((v18 & 0x98F6) == 0)
  {
LABEL_84:
    v69 = 0;
LABEL_85:
    explicit = atomic_load_explicit((a4 + 24), memory_order_acquire);
    if (*(a4 + 50))
    {
      if (a3)
      {
        v74 = 0;
        v75 = (a3 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
        v76 = vdupq_n_s64(v75);
        v77 = v75 - ((a3 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
        v78 = ((*a1)[6] + 8 * a2 + 8);
        v79 = a2;
        do
        {
          v80 = vmovn_s64(vcgeq_u64(v76, vorrq_s8(vdupq_n_s64(v74), xmmword_18475A340)));
          if (v80.i8[0])
          {
            *(v78 - 1) = v79;
          }

          if (v80.i8[4])
          {
            *v78 = v79 + 1;
          }

          v74 += 2;
          v79 += 2;
          v78 += 2;
        }

        while (v77 != v74);
      }

      v81 = a5;
      LOBYTE(v17) = v17 | 8;
      v82 = (a1 + 25);
      v83 = (a1[25][3] - a1[25][2]) >> 3;
      goto LABEL_94;
    }

    *&v85 = 0xAAAAAAAAAAAAAAAALL;
    *(&v85 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *valuePtr = v85;
    *v204 = v85;
    v86 = atomic_load_explicit(&v192, memory_order_acquire);
    v87 = *a1;
    valuePtr[0] = a1 + 1;
    valuePtr[1] = v87;
    *v204 = a2;
    *&v204[8] = a3;
    *&v204[16] = v86;
    v88 = atomic_load_explicit((a4 + 16), memory_order_acquire);
    if (explicit)
    {
      v89 = 1;
    }

    else
    {
      v89 = TFont::ShapesAnyPreferredLanguage(*(v88 + 40));
    }

    v104 = TASCIIEncoder::Encode(valuePtr, v89);
    LODWORD(v17) = v104 | v17;
    if (((v17 < 4) & ~v69) == 0)
    {
      v81 = a5;
      if ((v104 & 0x10) != 0)
      {
        v105 = *(atomic_load_explicit(&v192, memory_order_acquire) + 48);
        *(v105 + 225) |= 8u;
      }

      v82 = (a1 + 25);
      v106 = a1[25];
      v83 = (v106[3] - v106[2]) >> 3;
      if ((v104 & 8) == 0)
      {
        *&v199.width = atomic_exchange(&v192, 0);
        v107 = v69;
        v108 = atomic_exchange(&v199, 0);
        valuePtr[0] = v108;
        std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::push_back[abi:fn200100](v106 + 2, valuePtr);
        TLine::UpdateCachedMetricsForRun(v106, v108[5]);

        if (v107)
        {
          goto LABEL_128;
        }

        goto LABEL_187;
      }

LABEL_94:
      *&v84 = 0xAAAAAAAAAAAAAAAALL;
      *(&v84 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v218 = v84;
      v217 = v84;
      v216 = v84;
      v215 = v84;
      v214 = v84;
      v213 = v84;
      v212 = v84;
      v211 = v84;
      v210 = v84;
      v209 = v84;
      v208 = v84;
      v207 = v84;
      v206 = v84;
      v205 = v84;
      *&v204[8] = v84;
      valuePtr[0] = 0;
      valuePtr[1] = 0;
      *v204 = 0;
      v219 = &v204[8];
      v199.width = -3.72066208e-103;
      if ((*(a4 + 138) & 0x200) != 0)
      {
        TAttributes::OriginalFont(a4, &v199);
      }

      else
      {
        *&v199.width = atomic_load_explicit((a4 + 16), memory_order_acquire);
      }

      v195[0] = 0;
      v90 = TGlyphEncoder::RunUnicodeEncoderRecursively(v191, 0, &v192, atomic_load_explicit(&v199, memory_order_acquire), a2, a3, valuePtr, v81, v195, explicit, 0, 1);
      v91 = *(*(v191 + 200) + 24) - *(*(v191 + 200) + 16);
      v92 = v83 + 1;
      if (v83 + 1 < v91 >> 3)
      {
        v93 = v91 >> 3;
        v94 = v83;
        do
        {
          v95 = *(*v82 + 2);
          v96 = (*(*v82 + 3) - v95) >> 3;
          if (v96 <= v94 || v96 <= v92)
          {
            goto LABEL_201;
          }

          v97 = *(*(v95 + 8 * v94) + 40);
          v98 = *(*(v95 + 8 * v92) + 40);
          if (*(v97 + 216) == *(v98 + 216) && TFont::operator==(*(atomic_load_explicit((v97 + 56), memory_order_acquire) + 40), *(atomic_load_explicit((v98 + 56), memory_order_acquire) + 40)))
          {
            v99 = TLine::AbsorbRunFollowing(*v82, v94);
            if (v99)
            {
              v92 = v94;
            }

            v93 -= v99;
          }

          v94 = v92++;
        }

        while (v92 < v93);
      }

      LOBYTE(v17) = v90 | v17;
      if (valuePtr[0] != valuePtr[1])
      {
        LOBYTE(v198) = -86;
        std::__sort<std::__less<long,long> &,long *>();
        v100 = std::__unique[abi:fn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<long *>,std::__wrap_iter<long *>,std::__equal_to &>(valuePtr[0], valuePtr[1]);
        v101 = valuePtr[1];
        if (v100 > valuePtr[1])
        {
LABEL_201:
          __break(1u);
LABEL_202:
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        if (v100 != valuePtr[1])
        {
          v101 = v100;
          valuePtr[1] = v100;
        }

        v102 = *v82;
        v103 = (v101 - valuePtr[0]) >> 3;
        if (v190)
        {
          TLine::DeleteChars(v102, v103, valuePtr[0]);
        }

        else
        {
          TLine::DeleteGlyphs(v102, 0, v103, valuePtr[0]);
        }

        LOBYTE(v17) = v17 | 0x10;
      }

      v111 = v195[0];
      v195[0] = 0;
      if (v111)
      {
        TFontCascade::~TFontCascade(v111);
        MEMORY[0x1865F22D0]();
      }

      *&v199.width = valuePtr;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v199);
      if (v69)
      {
LABEL_128:
        v112 = *v82;
        v113 = *(*v82 + 3) - *(*v82 + 2);
        if (v83 < v113 >> 3)
        {
          v114 = v113 >> 3;
          do
          {
            v115 = *(*v82 + 2);
            if (v83 >= ((*(*v82 + 3) - v115) >> 3))
            {
              goto LABEL_201;
            }

            v116 = *(*(v115 + 8 * v83) + 48);
            v117 = v116[25];
            v118 = v116[26];
            v119 = v116[27];
            v120 = *(v119 + 16) + 2 * v117;
            v121 = (*(v119 + 24) + 8 * v117);
            v122 = *(atomic_load_explicit(v116 + 7, memory_order_acquire) + 40);
            RenderingStyle = TAttributes::GetRenderingStyle((v116 + 5));
            TFont::GetAdvancesForGlyphs(v122, v120, v121, 1, v118, 0, RenderingStyle & 0xFFFFFFFFFFLL, 0);
            v116[24] = v124;
            ++v83;
          }

          while (v114 != v83);
          v112 = *v82;
        }

        TLine::SyncWithRuns(v112);
      }

LABEL_187:

      return v17;
    }

    v109 = a1[25];
    v195[0] = atomic_exchange(&v192, 0);
    v110 = COERCE_DOUBLE(atomic_exchange(v195, 0));
    v199.width = v110;
    std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::push_back[abi:fn200100](v109 + 2, &v199);
    TLine::UpdateCachedMetricsForRun(v109, *(*&v110 + 40));
LABEL_186:

    goto LABEL_187;
  }

  if ((v18 & 0x30) != 0)
  {
    if ((v18 & 0x10) != 0)
    {
      Value = CFDictionaryGetValue(atomic_load_explicit(a4, memory_order_acquire), @"CTImposedGlyph");
      LOWORD(valuePtr[0]) = -21846;
      CFNumberGetValue(Value, kCFNumberShortType, valuePtr);
      if (LOWORD(valuePtr[0]))
      {
        v196 = valuePtr[0];
        v20 = *(atomic_load_explicit(&v192, memory_order_acquire) + 48);
        v21 = *(atomic_load_explicit((v20 + 56), memory_order_acquire) + 40);
        v22 = v196;
        if (TBaseFont::GetGlyphCount(*(v21 + 408)) > v22)
        {
          v195[0] = -1;
          v195[1] = -1;
          TFont::GetUnsummedAdvancesForGlyphs(v21, &v196, v195, 2, 1, 0, 0);
          v23 = *v191;
          v24 = *(*v191 + 16) + 2 * a2;
          if (a3 >= 1)
          {
            v25 = 0;
            v26 = v196;
            v27 = vdupq_n_s64(a3 - 1);
            v28 = (v24 + 8);
            do
            {
              v29 = vdupq_n_s64(v25);
              v30 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_18475A340)));
              if (vuzp1_s8(vuzp1_s16(v30, *v27.i8), *v27.i8).u8[0])
              {
                *(v28 - 4) = v26;
              }

              if (vuzp1_s8(vuzp1_s16(v30, *&v27), *&v27).i8[1])
              {
                *(v28 - 3) = v26;
              }

              if (vuzp1_s8(vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_18475AAF0)))), *&v27).i8[2])
              {
                *(v28 - 2) = v26;
                *(v28 - 1) = v26;
              }

              v31 = vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_18475AAE0)));
              if (vuzp1_s8(*&v27, vuzp1_s16(v31, *&v27)).i32[1])
              {
                *v28 = v26;
              }

              if (vuzp1_s8(*&v27, vuzp1_s16(v31, *&v27)).i8[5])
              {
                v28[1] = v26;
              }

              if (vuzp1_s8(*&v27, vuzp1_s16(*&v27, vmovn_s64(vcgeq_u64(v27, vorrq_s8(v29, xmmword_18475AAD0))))).i8[6])
              {
                v28[2] = v26;
                v28[3] = v26;
              }

              v25 += 8;
              v28 += 8;
            }

            while (((a3 + 7) & 0xFFFFFFFFFFFFFFF8) != v25);
          }

          if (a3)
          {
            v32 = 0;
            v33 = *(v23 + 48);
            v34 = (a3 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
            v35 = v34 - ((a3 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
            v36 = vdupq_n_s64(v34);
            v37 = (v33 + 8 * a2 + 8);
            v38 = a2;
            do
            {
              v39 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(vdupq_n_s64(v32), xmmword_18475A340)));
              if (v39.i8[0])
              {
                *(v37 - 1) = v38;
              }

              if (v39.i8[4])
              {
                *v37 = v38 + 1;
              }

              v32 += 2;
              v38 += 2;
              v37 += 2;
            }

            while (v35 != v32);
          }

          *&v40 = 0xAAAAAAAAAAAAAAAALL;
          *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v201[3] = v40;
          v201[2] = v40;
          v201[1] = v40;
          v201[0] = v40;
          v199.height = 0.0;
          v200 = 0;
          v199.width = 0.0;
          v202 = v201;
          v41 = TCharStream::LazyCopyChars(*(v191 + 8), a2, a3);
          v42 = *(*v191 + 24) + 8 * a2;
          v43 = *(*v191 + 40);
          *&v44 = 0xAAAAAAAAAAAAAAAALL;
          *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v218 = v44;
          v45 = v43 + 4 * a2;
          v217 = v44;
          v216 = v44;
          v215 = v44;
          v214 = v44;
          v213 = v44;
          v212 = v44;
          v211 = v44;
          v210 = v44;
          v209 = v44;
          v208 = v44;
          v207 = v44;
          v206 = v44;
          v205 = v44;
          *&v204[8] = v44;
          valuePtr[0] = 0;
          valuePtr[1] = 0;
          *v204 = 0;
          v219 = &v204[8];
          v197 = valuePtr;
          v194 = 0;
          v46 = *(v21 + 408);
          v47 = v42;
          v48 = TUnicodeEncoder::EncodePortion(&v197, 0, v41, a3, v46, 0, v24, v42, 1, v45, &v194, 0);
          if (a3 >= 1 && (v48 & 0x10) != 0)
          {
            v49 = 0;
            v50 = v196;
            v51 = vdupq_n_s64(a3 - 1);
            v52 = (v24 + 8);
            do
            {
              v53 = vdupq_n_s64(v49);
              v54 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, xmmword_18475A340)));
              if (vuzp1_s8(vuzp1_s16(v54, *v51.i8), *v51.i8).u8[0])
              {
                *(v52 - 4) = v50;
              }

              if (vuzp1_s8(vuzp1_s16(v54, *&v51), *&v51).i8[1])
              {
                *(v52 - 3) = v50;
              }

              if (vuzp1_s8(vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, xmmword_18475AAF0)))), *&v51).i8[2])
              {
                *(v52 - 2) = v50;
                *(v52 - 1) = v50;
              }

              v55 = vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, xmmword_18475AAE0)));
              if (vuzp1_s8(*&v51, vuzp1_s16(v55, *&v51)).i32[1])
              {
                *v52 = v50;
              }

              if (vuzp1_s8(*&v51, vuzp1_s16(v55, *&v51)).i8[5])
              {
                v52[1] = v50;
              }

              if (vuzp1_s8(*&v51, vuzp1_s16(*&v51, vmovn_s64(vcgeq_u64(v51, vorrq_s8(v53, xmmword_18475AAD0))))).i8[6])
              {
                v52[2] = v50;
                v52[3] = v50;
              }

              v49 += 8;
              v52 += 8;
            }

            while (((a3 + 7) & 0xFFFFFFFFFFFFFFF8) != v49);
            v56 = a3 + 1;
            v57 = v45;
            do
            {
              *v57++ &= ~0x20u;
              --v56;
            }

            while (v56 > 1);
          }

          if (a3)
          {
            v58 = 4 * a3;
            v59 = v45;
            while ((*v59 & 4) == 0)
            {
              v59 += 4;
              v58 -= 4;
              if (!v58)
              {
                goto LABEL_191;
              }
            }
          }

          else
          {
            v59 = v45;
          }

          if (v59 != (v45 + 4 * a3))
          {
            *(v20 + 225) |= 1u;
          }

LABEL_191:
          if (a3 >= 1)
          {
            v179 = 0;
            v180 = v195[0];
            v181 = vdupq_n_s64(a3 - 1);
            v182 = (v47 + 8);
            do
            {
              v183 = vmovn_s64(vcgeq_u64(v181, vorrq_s8(vdupq_n_s64(v179), xmmword_18475A340)));
              if (v183.i8[0])
              {
                *(v182 - 1) = v180;
              }

              if (v183.i8[4])
              {
                *v182 = v180;
              }

              v179 += 2;
              v182 += 2;
            }

            while (((a3 + 1) & 0xFFFFFFFFFFFFFFFELL) != v179);
          }

          v184 = v48 & 0xEE | v17;
          *(v20 + 192) = *v195 * a3;
          if (valuePtr[0] != valuePtr[1])
          {
            TRun::DeleteGlyphs(v20, (valuePtr[1] - valuePtr[0]) >> 3, valuePtr[0], a2);
          }

          v185 = *(v191 + 200);
          v193 = atomic_exchange(&v192, 0);
          v186 = atomic_exchange(&v193, 0);
          v198 = v186;
          std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::push_back[abi:fn200100](v185 + 2, &v198);
          TLine::UpdateCachedMetricsForRun(v185, v186[5]);

          v198 = valuePtr;
          std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v198);
          valuePtr[0] = &v199;
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](valuePtr);
          LOBYTE(v17) = v184 | 1;
          goto LABEL_187;
        }

        a1 = v191;
      }
    }

    v70 = CFDictionaryGetValue(atomic_load_explicit(a4, memory_order_acquire), @"NSGlyphInfo");
    if (v70)
    {
      TGlyphInfo::TGlyphInfo(v195, v70);
      v197 = 0xAAAAAAAAAAAAAAAALL;
      (*(*a1[1] + 16))(&v197);
      v71 = *(atomic_load_explicit(&v192, memory_order_acquire) + 48);
      GlyphForFont = TGlyphInfo::GetGlyphForFont(v195, atomic_load_explicit((v71 + 56), memory_order_acquire), atomic_load_explicit(&v197, memory_order_acquire));
      if ((GlyphForFont & 0x10000) != 0)
      {
        v125 = (*a1)[6];
        v126 = ((*a1)[2] + 2 * a2);
        *v126 = GlyphForFont;
        v199.width = NAN;
        v199.height = NAN;
        CTFontGetAdvancesForGlyphs(atomic_load_explicit((v71 + 56), memory_order_acquire), kCTFontOrientationDefault, v126, &v199, 1);
        [*a1 setAdvance:a2 atIndex:{v199.width, v199.height}];
        if (a3)
        {
          v127 = 0;
          v128 = (a3 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
          v129 = v128 - ((a3 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
          v130 = vdupq_n_s64(v128);
          v131 = (v125 + 8 * a2 + 8);
          do
          {
            v132 = vmovn_s64(vcgeq_u64(v130, vorrq_s8(vdupq_n_s64(v127), xmmword_18475A340)));
            if (v132.i8[0])
            {
              *(v131 - 1) = a2 + v127;
            }

            if (v132.i8[4])
            {
              *v131 = a2 + v127 + 1;
            }

            v127 += 2;
            v131 += 2;
          }

          while (v129 != v127);
          *(v71 + 192) = v199.width;
          if (a3 >= 2)
          {
            *&v133 = 0xAAAAAAAAAAAAAAAALL;
            *(&v133 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v218 = v133;
            v217 = v133;
            v216 = v133;
            v215 = v133;
            v214 = v133;
            v213 = v133;
            v212 = v133;
            v211 = v133;
            v210 = v133;
            v209 = v133;
            v208 = v133;
            v207 = v133;
            v206 = v133;
            v205 = v133;
            *&v204[8] = v133;
            valuePtr[0] = 0;
            valuePtr[1] = 0;
            *v204 = 0;
            v219 = &v204[8];
            std::vector<long,TInlineBufferAllocator<long,30ul>>::__vallocate[abi:fn200100](valuePtr, a3 - 1);
            v134 = valuePtr[1];
            bzero(valuePtr[1], 8 * a3 - 8);
            valuePtr[1] = &v134[8 * a3 - 8];
            v135 = valuePtr[0];
            if (valuePtr[0] != valuePtr[1])
            {
              v136 = 0;
              v137 = (&v134[8 * a3] - valuePtr[0] - 16) >> 3;
              v138 = vdupq_n_s64(v137);
              do
              {
                v139 = vmovn_s64(vcgeq_u64(v138, vorrq_s8(vdupq_n_s64(v136), xmmword_18475A340)));
                if (v139.i8[0])
                {
                  *&v135[8 * v136] = v136 + 1;
                }

                if (v139.i8[4])
                {
                  *&v135[8 * v136 + 8] = v136 + 2;
                }

                v136 += 2;
              }

              while (((v137 + 2) & 0x3FFFFFFFFFFFFFFELL) != v136);
            }

            TRun::DeleteGlyphs(v71, a3 - 1, v135, a1[25][9]);
            v198 = valuePtr;
            std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v198);
          }
        }

        else
        {
          *(v71 + 192) = v199.width;
        }

        v140 = a1[25];
        v198 = atomic_exchange(&v192, 0);
        v141 = atomic_exchange(&v198, 0);
        valuePtr[0] = v141;
        std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::push_back[abi:fn200100](v140 + 2, valuePtr);
        TLine::UpdateCachedMetricsForRun(v140, v141[5]);

        LOBYTE(v17) = v17 | 1;
        goto LABEL_187;
      }
    }

    goto LABEL_84;
  }

  v195[0] = 0xAAAAAAAAAAAAAAAALL;
  TGlyphEncoder::CreateSpecialRun(v195, a1, atomic_load_explicit(&v192, memory_order_acquire), *(a4 + 138));
  if (atomic_load_explicit(v195, memory_order_acquire))
  {
    TCFRef<__CTFont const*>::Retain(&v192, atomic_load_explicit(v195, memory_order_acquire));
    v60 = *(a4 + 138);
    if ((v60 & 0x40) != 0 && a3 == 1)
    {
      if (TCharStreamIterator::GetChar((a1 + 1), a2) == 65532)
      {
        v61 = *(atomic_load_explicit(&v192, memory_order_acquire) + 48);
        v62 = *TBaseFont::GetCachedSpaceAndJoinerGlyphs(*(*(atomic_load_explicit((*(atomic_load_explicit(&v192, memory_order_acquire) + 40) + 56), memory_order_acquire) + 40) + 408), 0);
        if (v62 <= 1)
        {
          v63 = 1;
        }

        else
        {
          v63 = v62;
        }

        [*(v61 + 216) setGlyph:v63 atIndex:*(v61 + 200)];
        v64 = *(v61 + 225);
        if (v62 == 0xFFFF && (v64 & 2) != 0)
        {
          *(v61 + 225) = v64 | 8;
        }

        [*(v61 + 216) setStringIndex:a2 atIndex:*(v61 + 200)];
        v66 = a1[25];
        *&v199.width = atomic_exchange(&v192, 0);
        v67 = atomic_exchange(&v199, 0);
        valuePtr[0] = v67;
        std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::push_back[abi:fn200100](v66 + 2, valuePtr);
        TLine::UpdateCachedMetricsForRun(v66, v67[5]);

        goto LABEL_186;
      }

      if ((*(a4 + 138) & 4) == 0)
      {
        goto LABEL_153;
      }
    }

    else
    {
      if ((v60 & 4) == 0)
      {
LABEL_153:
        v69 = 0;
        goto LABEL_154;
      }

      if (!a3)
      {
LABEL_161:
        *&v149 = 0xAAAAAAAAAAAAAAAALL;
        *(&v149 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v218 = v149;
        v217 = v149;
        v216 = v149;
        v215 = v149;
        v214 = v149;
        v213 = v149;
        v212 = v149;
        v211 = v149;
        v210 = v149;
        v209 = v149;
        v208 = v149;
        v207 = v149;
        v206 = v149;
        v205 = v149;
        *&v204[8] = v149;
        valuePtr[0] = 0;
        valuePtr[1] = 0;
        *v204 = 0;
        v219 = &v204[8];
        v150 = *(atomic_load_explicit(&v192, memory_order_acquire) + 48);
        v198 = a2;
        if (a3 >= 1)
        {
          v189 = a3 + a2;
          v151 = MEMORY[0x1E695F060];
          v152 = a2;
          do
          {
            v153 = (*(*a1[1] + 40))(a1[1], v152, 2);
            v155 = v153 + v154;
            if (v152 < v153 + v154)
            {
              v156 = v153;
              do
              {
                if (v152 != v156)
                {
                  v157 = &v152[-a2];
                  [*(v150 + 216) setGlyph:0xFFFFLL atIndex:*(v150 + 200) + v157];
                  if ((*(v150 + 225) & 2) != 0)
                  {
                    *(v150 + 225) |= 8u;
                  }

                  TStorageRange::SetAdvance((v150 + 192), v157, *v151);
                  [*(v150 + 216) setProps:*(*(*(v150 + 216) + 40) + 4 * *(v150 + 200) + 4 * v157) | 0x20u atIndex:*(v150 + 200) + v157];
                  v17 = v17 | 0x10;
                }

                if (TCharStreamIterator::GetFullChar((a1 + 1), &v198, 0) - 0x10000 >= 0x100000)
                {
                  v159 = v198;
                }

                else
                {
                  v158 = valuePtr[1];
                  if (valuePtr[1] >= *v204)
                  {
                    v161 = valuePtr[0];
                    v162 = valuePtr[1] - valuePtr[0];
                    v163 = (valuePtr[1] - valuePtr[0]) >> 3;
                    v164 = v163 + 1;
                    if ((v163 + 1) >> 61)
                    {
                      goto LABEL_202;
                    }

                    v165 = *v204 - valuePtr[0];
                    if ((*v204 - valuePtr[0]) >> 2 > v164)
                    {
                      v164 = v165 >> 2;
                    }

                    v166 = v165 >= 0x7FFFFFFFFFFFFFF8;
                    v167 = 0x1FFFFFFFFFFFFFFFLL;
                    if (!v166)
                    {
                      v167 = v164;
                    }

                    *(&v201[0] + 1) = &v204[8];
                    v168 = v17;
                    if (v167)
                    {
                      v169 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<long,30ul>>(&v204[8], v167);
                      v167 = v170;
                      v161 = valuePtr[0];
                      v162 = valuePtr[1] - valuePtr[0];
                    }

                    else
                    {
                      v169 = 0;
                    }

                    v171 = (v169 + 8 * v163);
                    v172 = v169 + 8 * v167;
                    v159 = v198;
                    v173 = &v171[-((valuePtr[1] - valuePtr[0]) >> 3)];
                    *v171 = v198;
                    v160 = v171 + 1;
                    memcpy(v173, v161, v162);
                    v174 = valuePtr[0];
                    v175 = *v204;
                    valuePtr[0] = v173;
                    valuePtr[1] = v160;
                    *v204 = v172;
                    v200 = v174;
                    *&v201[0] = v175;
                    *&v199.width = v174;
                    *&v199.height = v174;
                    std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v199);
                    v17 = v168;
                    a2 = v190;
                  }

                  else
                  {
                    v159 = v198;
                    *valuePtr[1] = v198;
                    v160 = v158 + 8;
                  }

                  valuePtr[1] = v160;
                  a1 = v191;
                }

                v152 = v159 + 1;
                v198 = v159 + 1;
              }

              while ((v159 + 1) < v155);
            }
          }

          while (v152 < v189);
        }

        v176 = a1[25];
        v197 = atomic_exchange(&v192, 0);
        v177 = COERCE_DOUBLE(atomic_exchange(&v197, 0));
        v199.width = v177;
        std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::push_back[abi:fn200100](v176 + 2, &v199);
        TLine::UpdateCachedMetricsForRun(v176, *(*&v177 + 40));

        TLine::DeleteChars(a1[25], (valuePtr[1] - valuePtr[0]) >> 3, valuePtr[0]);
        *&v199.width = valuePtr;
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v199);
        goto LABEL_186;
      }
    }

    v142 = 0;
    v143 = (a3 + 0x1FFFFFFFFFFFFFFFLL) & 0x1FFFFFFFFFFFFFFFLL;
    v144 = vdupq_n_s64(v143);
    v145 = v143 - ((a3 + 0x1FFFFFFFFFFFFFFFLL) & 1) + 2;
    v146 = ((*a1)[6] + 8 * a2 + 8);
    v147 = a2;
    do
    {
      v148 = vmovn_s64(vcgeq_u64(v144, vorrq_s8(vdupq_n_s64(v142), xmmword_18475A340)));
      if (v148.i8[0])
      {
        *(v146 - 1) = v147;
      }

      if (v148.i8[4])
      {
        *v146 = v147 + 1;
      }

      v142 += 2;
      v147 += 2;
      v146 += 2;
    }

    while (v145 != v142);
    goto LABEL_161;
  }

  v68 = TAttributes::GetRenderingStyle(a4);
  if ((v68 & 0x100000000) != 0)
  {
    v69 = (~v68 & 5) != 0;
LABEL_154:

    goto LABEL_85;
  }

  std::__throw_bad_optional_access[abi:fn200100]();
  return [(_CTNativeGlyphStorage *)v187 retain];
}

uint64_t GetDefaultWritingDirection(void)
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3321888768;
  block[2] = ___Z26GetDefaultWritingDirectionv_block_invoke;
  block[3] = &__block_descriptor_33_8_32c40_ZTSKZ26GetDefaultWritingDirectionvE3__0_e5_v8__0l;
  if (qword_1ED5678C0 != -1)
  {
    dispatch_once(&qword_1ED5678C0, block);
  }

  return _MergedGlobals_10;
}

uint64_t TASCIIEncoder::Encode(TASCIIEncoder *this, int a2)
{
  v3 = *(*(this + 4) + 48);
  v4 = *(atomic_load_explicit((v3 + 56), memory_order_acquire) + 40);
  if (v4[51])
  {
    explicit = atomic_load_explicit(v4 + 49, memory_order_acquire);
    if (!explicit)
    {
      TFont::InitASCIIDataCache(v4);
    }

    v6 = *(this + 3);
    if (v6 >= 1)
    {
      v7 = 0;
      v8 = *(this + 1);
      v9 = *(this + 2);
      v10 = v8[5];
      v11 = v8[6];
      v12 = v6 + v9;
      v28 = explicit + 1;
      v29 = v8[2];
      v27 = explicit + 49;
      v13 = 0.0;
      while (1)
      {
        *(v11 + 8 * v9) = v9;
        Char = TCharStreamIterator::GetChar(*this, v9);
        v15 = Char;
        v16 = Char - 32;
        if (Char < 0x20)
        {
          if ((Char - 14) < 0xFFFBu)
          {
            goto LABEL_25;
          }

          v20 = atomic_load_explicit(explicit + 242, memory_order_acquire);
          if (!v20)
          {
            TASCIIDataCache::InitC0Whitespace(explicit);
          }

          v21 = (v20 + 16 * (v15 - 9));
          v22 = *v21;
          v18 = (v21 + 1);
          v19 = v22;
        }

        else
        {
          if (Char > 0x7F)
          {
            if (((Char - 256) >> 5) < 0x7FDu)
            {
              goto LABEL_25;
            }

            v16 = Char - 64;
          }

          v17 = atomic_load_explicit(explicit + 241, memory_order_acquire);
          if (!v17)
          {
            TASCIIDataCache::InitProps(explicit);
          }

          if (v16 >= 0xC0u)
          {
            __break(1u);
            goto LABEL_34;
          }

          v18 = &v27[v16];
          v19 = *(v28 + v16) | (*(v17 + 2 * v16) << 16);
        }

        if (v19)
        {
          v23 = *v18;
          if ((v19 & 0x40000) != 0)
          {
            *(v3 + 225) |= 1u;
          }

          v24 = HIWORD(v19) & 0x7FFF;
          if (a2)
          {
            v25 = v7 | 1;
            if ((v19 & 0x80000000) != 0)
            {
              v24 = HIWORD(v19) & 0x7FEF | 0x10;
            }

            else
            {
              v25 = v7;
            }
          }

          else
          {
            v25 = (v19 >> 20) & 1 | v7;
          }

          v7 = (v24 >> 1) & 0x10 | v25;
          *(v29 + 2 * v9) = v19;
          *(v10 + 4 * v9) = v24;
          [*(this + 1) setAdvance:v9 atIndex:{v23, 0.0, v27, v28}];
          v13 = v13 + v23;
          goto LABEL_28;
        }

LABEL_25:
        v7 |= 8u;
LABEL_28:
        if (++v9 >= v12)
        {
          goto LABEL_31;
        }
      }
    }

    LOBYTE(v7) = 0;
    v13 = 0.0;
LABEL_31:
    *(v3 + 192) = v13;
  }

  else
  {
LABEL_34:
    LOBYTE(v7) = 8;
  }

  return v7;
}

uint64_t TCharStreamCFString::GetCharacterAtIndex(atomic_ullong *this, CFStringInlineBuffer *buffer, CFIndex a3)
{
  if (!buffer->theString)
  {
    explicit = atomic_load_explicit(this + 4, memory_order_acquire);
    v6 = this[2];
    buffer->theString = explicit;
    buffer->rangeToBuffer.location = 0;
    buffer->rangeToBuffer.length = v6;
    CharactersPtr = CFStringGetCharactersPtr(explicit);
    buffer->directUniCharBuffer = CharactersPtr;
    if (CharactersPtr)
    {
      buffer->directCStringBuffer = 0;
LABEL_5:
      length = buffer->rangeToBuffer.length;
      buffer->bufferedRangeStart = 0;
      buffer->bufferedRangeEnd = length;
      goto LABEL_6;
    }

    CStringPtr = CFStringGetCStringPtr(explicit, 0x600u);
    directUniCharBuffer = buffer->directUniCharBuffer;
    buffer->directCStringBuffer = CStringPtr;
    buffer->bufferedRangeStart = 0;
    buffer->bufferedRangeEnd = 0;
    if (directUniCharBuffer | CStringPtr)
    {
      goto LABEL_5;
    }
  }

LABEL_6:
  if (a3 < 0)
  {
    return 0;
  }

  v11 = buffer->rangeToBuffer.length;
  if (v11 <= a3)
  {
    return 0;
  }

  else
  {
    v12 = buffer->directUniCharBuffer;
    if (v12)
    {
      return v12[buffer->rangeToBuffer.location + a3];
    }

    else
    {
      directCStringBuffer = buffer->directCStringBuffer;
      if (directCStringBuffer)
      {
        return directCStringBuffer[buffer->rangeToBuffer.location + a3];
      }

      else
      {
        if (buffer->bufferedRangeEnd <= a3 || (bufferedRangeStart = buffer->bufferedRangeStart, bufferedRangeStart > a3))
        {
          v17 = a3 - 4;
          if (a3 < 4)
          {
            v17 = 0;
          }

          if (v17 + 64 < v11)
          {
            v11 = v17 + 64;
          }

          buffer->bufferedRangeStart = v17;
          buffer->bufferedRangeEnd = v11;
          v18.length = v11 - v17;
          v18.location = buffer->rangeToBuffer.location + v17;
          CFStringGetCharacters(buffer->theString, v18, buffer->buffer);
          bufferedRangeStart = buffer->bufferedRangeStart;
        }

        return buffer->buffer[a3 - bufferedRangeStart];
      }
    }
  }
}

void CreateFeatureSettingsByConverting(const __CFArray *a1@<X0>, void *a2@<X8>)
{
  if (a1 && (v4 = CFArrayGetCount(a1), v4 > 0))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], v4, MEMORY[0x1E695E9C0]);
    if (Mutable && (v6 = 0x1ED566000uLL, objc_opt_class(), TypeID = CFArrayGetTypeID(), v8 = CFDictionaryGetTypeID(), v32 = CFNumberGetTypeID(), v33 = TypeID, CFGetTypeID(a1) == TypeID))
    {
      v31 = a2;
      Count = CFArrayGetCount(a1);
      if (Count)
      {
        v10 = Count;
        for (i = 0; v10 != i; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
          if (objc_opt_isKindOfClass())
          {
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          else
          {
            v13 = CFGetTypeID(ValueAtIndex);
            if (v13 == v8)
            {
              v14 = [objc_alloc((v6 + 3376)) initWithDictionary:ValueAtIndex];
              v15 = v14;
              if (v14)
              {
                v16 = v14;
                CFArrayAppendValue(Mutable, v16);
                v17 = v16;
                v6 = 0x1ED566000;
              }

              v18 = v15;
              goto LABEL_26;
            }

            v19 = v13;
            if (v13 != v33)
            {
              v23 = 0;
              goto LABEL_20;
            }

            v20 = CFArrayGetCount(ValueAtIndex);
            if (v20 >= 1)
            {
              v21 = v20;
              v22 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
              v19 = CFGetTypeID(v22);
              if (v21 == 1)
              {
                v23 = 0;
              }

              else
              {
                v23 = CFArrayGetValueAtIndex(ValueAtIndex, 1);
              }

              ValueAtIndex = v22;
              v6 = 0x1ED566000uLL;
LABEL_20:
              v35 = 0;
              v24 = objc_alloc((v6 + 3376));
              if (v19 == v32)
              {
                v25 = ValueAtIndex;
                v26 = v23;
                v27 = 0;
                v28 = 0;
              }

              else
              {
                v25 = 0;
                v26 = 0;
                v27 = ValueAtIndex;
                v28 = v23;
              }

              v34 = [(CTFeatureSetting *)v24 initWithType:v25 selector:v26 tag:v27 value:v28];

              if (atomic_load_explicit(&v35, memory_order_acquire))
              {
                v29 = atomic_load_explicit(&v35, memory_order_acquire);
                CFArrayAppendValue(Mutable, v29);
              }

              v18 = v35;
LABEL_26:
            }
          }
        }
      }

      if (CFArrayGetCount(Mutable) <= 0)
      {
        v30 = 0;
      }

      else
      {
        v30 = Mutable;
      }

      v35 = v30;
      *v31 = atomic_exchange(&v35, 0);
    }

    else
    {
      *a2 = 0;
    }
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t GetSettingValue<__CFNumber const*,unsigned short>(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID() || v4 == CFBooleanGetTypeID())
    {
      if (a2)
      {
        CFNumberGetValue(v3, kCFNumberShortType, a2);
      }

      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void TFont::UpdateFeatureSettings(uint64_t a1, __CFDictionary *a2, id a3, int a4)
{
  v5 = (a1 + 176);
  if (a4)
  {
    v6 = a3;
  }

  else
  {
    v6 = TFontFeatures::CopyNonDefaultSettings(*(a1 + 408), a3, a3);
  }

  v7 = v6;
  TFontFeatureSettingList::Emplace(v5, &v7);

  if (atomic_load_explicit(v5, memory_order_acquire))
  {
    CFDictionarySetValue(a2, @"NSCTFontFeatureSettingsAttribute", atomic_load_explicit(v5, memory_order_acquire));
  }
}

const TBaseFont *TFontFeatures::CopyNonDefaultSettings(TFontFeatures *this, const TBaseFont *a2, const __CFArray *a3)
{
  v3 = a2;
  if (a2)
  {
    v7 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 136))(&v6);
    v7 = atomic_exchange(&v6, 0);

    v3 = TFontFeatures::CopyNonDefault(&v7, this, v3);
  }

  return v3;
}

unint64_t TFontFeatures::CopyNonDefault(atomic_ullong *this, const TBaseFont *a2, id a3)
{
  v3 = 0;
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (a3 && explicit)
  {
    v6 = this;
    v40 = xmmword_18475C6D8;
    v59 = xmmword_18475C6D8;
    memset(v60, 170, sizeof(v60));
    memset(v39, 170, sizeof(v39));
    v38 = 0xAAAAAAAAFFFFFFFFLL;
    v61 = 0xAAAAAAAAFFFFFFFFLL;
    memset(v58, 170, sizeof(v58));
    memset(v37, 170, sizeof(v37));
    TFontFeatureSettingList::TFontFeatureSettingList(v58, a3);
    v7 = atomic_load_explicit(v58, memory_order_acquire);
    if (v7)
    {
      Count = CFArrayGetCount(v7);
    }

    else
    {
      Count = 0;
    }

    v9 = *MEMORY[0x1E695E480];
    v10 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v56 = CFArrayCreateMutable(v9, 0, v10);
    if (Count >= 1)
    {
      v43 = 0;
      v35 = a2;
      v36 = v6;
      while (1)
      {
        v41 = Count - 1;
        v42 = Count;
        ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(v58, memory_order_acquire), Count - 1);
        v54 = 0xAAAAAAAAAAAAAAAALL;
        v55 = 0;
        TFontFeatures::SettingsByNormalizing(v6, a2, ValueAtIndex, &v55, &v54);
        if (atomic_load_explicit(&v54, memory_order_acquire))
        {
          *v44 = TBaseFont::HasOTFontFeatureTable(a2);
          v12 = atomic_load_explicit(&v54, memory_order_acquire);
          if (v12)
          {
            v13 = CFArrayGetCount(v12);
            if (v13)
            {
              break;
            }
          }
        }

LABEL_49:

        Count = v41;
        a2 = v35;
        if (v42 <= 1)
        {
          goto LABEL_50;
        }
      }

      v14 = v13;
      v15 = 0;
      while (1)
      {
        v16 = CFArrayGetValueAtIndex(v12, v15);
        if (ValueAtIndex)
        {
          v17 = [ValueAtIndex[1] objectForKey:@"CTFeatureOpenTypeTag"];
        }

        else
        {
          v17 = 0;
        }

        v53 = v16;
        v18 = atomic_load_explicit(&v53, memory_order_acquire);
        if (!v18 || (v19 = CFDictionaryGetValue(v18, @"CTFeatureTypeIdentifier")) == 0)
        {
          TFontFeatureSettingList::TFontFeatureSettingList(v48, atomic_load_explicit(&v56, memory_order_acquire));
          v23 = TFontFeatureSettingList::IndexOfOpenTypeSetting(v48, v17);
          std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::~__hash_table(v51);
          std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::~__hash_table(v50 + 8);
          std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::destroy(&v48[1], v49);

          if (v23 == -1)
          {
            LODWORD(v48[0]) = -1431655766;
            Value = atomic_load_explicit(&v53, memory_order_acquire);
            if (Value)
            {
              Value = CFDictionaryGetValue(Value, @"CTFeatureOpenTypeValue");
            }

            if (GetValue<__CFNumber const*>(Value, v48))
            {
              if (LODWORD(v48[0]))
              {
                v25 = CFArrayGetCount(atomic_load_explicit(&Mutable, memory_order_acquire));
                v26 = atomic_load_explicit(&v53, memory_order_acquire);
                CFArrayInsertValueAtIndex(atomic_load_explicit(&Mutable, memory_order_acquire), v25, v26);

                ++v43;
              }

              v27 = atomic_load_explicit(&v53, memory_order_acquire);
              CFArrayAppendValue(atomic_load_explicit(&v56, memory_order_acquire), v27);
            }
          }

          goto LABEL_46;
        }

        v20 = v19;
        if ((TFontFeatures::HandleAlias(v6, &v53, *v44, &Mutable, &v56) & 1) == 0)
        {
          break;
        }

LABEL_46:

        if (v14 == ++v15)
        {
          goto LABEL_49;
        }
      }

      v47 = -86;
      v46 = 0xAAAAAAAAAAAAAAAALL;
      v46 = TFontFeatures::FindFeatureSelector(atomic_load_explicit(v6, memory_order_acquire), &v53, &v47);
      if (!atomic_load_explicit(&v46, memory_order_acquire) || ((v21 = atomic_load_explicit(&v53, memory_order_acquire)) == 0 ? (v22 = 0) : (v22 = CFDictionaryGetValue(v21, @"CTFeatureSelectorIdentifier")), v45 = -21846, !GetSettingValue<__CFNumber const*,unsigned short>(v22, &v45)))
      {
LABEL_45:

        goto LABEL_46;
      }

      v50[2] = v40;
      v51[0] = v39[1];
      v51[1] = v39[0];
      v52 = v38;
      *v48 = v37[3];
      v49 = v37[2];
      v50[0] = v37[1];
      v50[1] = v37[0];
      TFontFeatureSettingList::TFontFeatureSettingList(v48, atomic_load_explicit(&v56, memory_order_acquire));
      if (v17)
      {
        if (TFontFeatureSettingList::IndexOfOpenTypeSetting(v48, v17) != -1)
        {
          goto LABEL_44;
        }

        if (v47)
        {
LABEL_32:
          {
LABEL_34:
            if (v17)
            {
              if (!atomic_load_explicit(&v55, memory_order_acquire))
              {
                CFArrayAppendValue(atomic_load_explicit(&v56, memory_order_acquire), ValueAtIndex);
                goto LABEL_44;
              }

              v30 = atomic_load_explicit(&v55, memory_order_acquire);
            }

            else
            {
              v30 = atomic_load_explicit(&v53, memory_order_acquire);
            }

            v33 = v30;
            CFArrayAppendValue(atomic_load_explicit(&v56, memory_order_acquire), v33);

LABEL_44:
            std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::~__hash_table(v51);
            std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::~__hash_table(v50 + 8);
            std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::destroy(&v48[1], v49);

            v6 = v36;
            goto LABEL_45;
          }

LABEL_33:
          v28 = CFArrayGetCount(atomic_load_explicit(&Mutable, memory_order_acquire)) - v43;
          v29 = atomic_load_explicit(&v53, memory_order_acquire);
          CFArrayInsertValueAtIndex(atomic_load_explicit(&Mutable, memory_order_acquire), v28, v29);

          goto LABEL_34;
        }
      }

      else
      {
        v31 = v47;
        if (TFontFeatureSettingList::ContainsAATSetting(v48, v20, v22, v47))
        {
          goto LABEL_44;
        }

        if (v31)
        {
          goto LABEL_32;
        }
      }

      v32 = v45;
      {
        goto LABEL_34;
      }

      goto LABEL_33;
    }

LABEL_50:
    if (CFArrayGetCount(atomic_load_explicit(&Mutable, memory_order_acquire)) <= 0)
    {
      v3 = 0;
    }

    else
    {
      v3 = atomic_exchange(&Mutable, 0);
    }

    std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::~__hash_table(v60);
    std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::~__hash_table(&v58[5]);
    std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::destroy(&v58[1], v58[2]);
  }

  return v3;
}

void TFontFeatureSettingList::TFontFeatureSettingList(TFontFeatureSettingList *this, id a2)
{
  *(this + 2) = 0;
  *(this + 3) = 0;
  *this = 0;
  *(this + 1) = this + 16;
  *(this + 8) = 0;
  *(this + 40) = 0u;
  *(this + 56) = 0u;
  *(this + 18) = 1065353216;
  *(this + 5) = 0u;
  *(this + 6) = 0u;
  *(this + 28) = 1065353216;
  v3 = a2;
  TFontFeatureSettingList::Emplace(this, &v3);
}

void TFontFeatureSettingList::Emplace(atomic_ullong *a1, atomic_ullong *a2)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (explicit)
  {
    Count = CFArrayGetCount(explicit);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v7 = *MEMORY[0x1E695E738];
      do
      {
        v8 = CFArrayGetValueAtIndex(atomic_load_explicit(a1, memory_order_acquire), v6);
        v9 = v8;
        if (v8)
        {
          Value = CFDictionaryGetValue(v8, @"CTFeatureTypeIdentifier");
          if (Value)
          {
            v11 = Value;
            if (CFDictionaryGetValue(v9, @"CTFeatureSelectorIdentifier") != v7)
            {
              v14 = -21846;
              v13 = -21846;
              if (GetSettingValue<__CFNumber const*,unsigned short>(v11, &v14))
              {
                v12 = CFDictionaryGetValue(v9, @"CTFeatureSelectorIdentifier");
                if (GetSettingValue<__CFNumber const*,unsigned short>(v12, &v13))
                {
                  operator new();
                }
              }
            }
          }
        }

        ++v6;
      }

      while (v6 != v5);
    }
  }
}

char *OTL::GCommon::GetFeatureVariationsTable(unsigned __int16 *a1, unint64_t a2)
{
  v2 = (a1 + 5);
  if ((a1 + 5) > a2)
  {
    return 0;
  }

  v4 = *a1;
  if (__rev16(v4) > 1)
  {
    return 0;
  }

  result = 0;
  if (a1[1])
  {
    v6 = (a1 + 7) > a2;
  }

  else
  {
    v6 = 0;
  }

  v7 = !v6;
  if (a1[1])
  {
    if (v4 == 256 && v7 != 0)
    {
      v9 = *v2;
      if (!v9)
      {
        return 0;
      }

      v10 = a1 + bswap32(v9);
      v11 = v10 + 8;
      if ((v10 + 8) > a2)
      {
        return 0;
      }

      v12 = bswap32(*(v10 + 1));
      v13 = &v11[8 * v12];
      v14 = (v10 + 16) <= a2 ? (a2 - v11) >> 3 : 0;
      v15 = v13 <= a2 && v13 >= v11;
      if (!v15 && v14 != v12)
      {
        return 0;
      }

      if (*v10 == 256)
      {
        return v10;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
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

void TDescriptor::TDescriptor(TDescriptor *this, const TDescriptor *a2, const __CFDictionary *a3)
{
  v53 = *MEMORY[0x1E69E9840];
  *this = &unk_1EF257E00;
  *(this + 1) = 0;
  *(this + 4) = *(a2 + 4) & 0x7FFFFFFF;
  *(this + 3) = 0;
  explicit = atomic_load_explicit(a2 + 4, memory_order_acquire);
  if (explicit)
  {
    if ((*(explicit + 180) & 0x10000000) != 0)
    {
      explicit = 0;
    }

    else
    {
      atomic_fetch_or_explicit(this + 4, 0x80000000, memory_order_relaxed);
      atomic_fetch_add_explicit((explicit + 8), 1u, memory_order_relaxed);
    }
  }

  *(this + 4) = explicit;
  *(this + 5) = atomic_load_explicit(a2 + 5, memory_order_acquire);
  v46 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptor::CopyAttributes(a2, &v46);
  v45 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableDictionary::TCFMutableDictionary(&v45, atomic_load_explicit(&v46, memory_order_acquire));
  v7 = *(a2 + 4);
  if (a3)
  {
    if (v7 < 0)
    {
      Count = CFDictionaryGetCount(a3);
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v51[14] = v9;
      v51[13] = v9;
      v51[12] = v9;
      v51[11] = v9;
      v51[10] = v9;
      v51[9] = v9;
      v51[8] = v9;
      v51[7] = v9;
      v51[6] = v9;
      v51[5] = v9;
      v51[4] = v9;
      v51[3] = v9;
      v51[2] = v9;
      v51[1] = v9;
      v51[0] = v9;
      v49 = 0;
      v50 = 0;
      keys = 0;
      v52 = v51;
      if (Count)
      {
        std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&keys, Count);
        v10 = v49;
        bzero(v49, 8 * Count);
        v49 = &v10[8 * Count];
        v11 = keys;
      }

      else
      {
        v11 = 0;
      }

      CFDictionaryGetKeysAndValues(a3, v11, 0);
      if (qword_1ED5679C0 != -1)
      {
        dispatch_once_f(&qword_1ED5679C0, 0, TDescriptor::TDescriptor(TDescriptor const&,__CFDictionary const*)::$_0::__invoke);
      }

      if (Count < 1)
      {
LABEL_15:
        v13 = atomic_load_explicit(a2 + 4, memory_order_acquire);
        if (v13)
        {
          atomic_fetch_add_explicit((v13 + 8), 1u, memory_order_relaxed);
        }

        __swp(v12, this + 8);
        atomic_fetch_or_explicit(this + 4, 0x80000000, memory_order_relaxed);
        if (v12 && atomic_fetch_add_explicit(v12 + 2, 0xFFFFFFFF, memory_order_release) == 1)
        {
          __dmb(9u);
          (*(*v12 + 8))(v12);
        }
      }

      else
      {
        while (1)
        {
          v12 = CFSetContainsValue(qword_1ED5679B8, *v11);
          if (!v12)
          {
            break;
          }

          ++v11;
          if (!--Count)
          {
            goto LABEL_15;
          }
        }
      }

      atomic_fetch_or_explicit(this + 4, 0x10000u, memory_order_relaxed);
      p_keys = &keys;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&p_keys);
    }

    if ((*(this + 4) & 0x80000000) != 0)
    {
      Value = CFDictionaryGetValue(a3, @"NSCTFontTraitsAttribute");
      if (Value)
      {
        v24 = Value;
        v25 = CFGetTypeID(Value);
        if (v25 == CFDictionaryGetTypeID())
        {
          v26 = CFDictionaryContainsKey(v24, @"NSCTFontGradeTrait");
          if (v26)
          {
            goto LABEL_47;
          }

          if (CFDictionaryContainsKey(v24, @"NSCTFontUIFontDesignTrait"))
          {
            v28 = CFDictionaryGetValue(atomic_load_explicit(&v45, memory_order_acquire), @"NSCTFontUIFontDesignTrait");
            v26 = CFDictionaryGetValue(v24, @"NSCTFontUIFontDesignTrait");
            if (v28 != v26)
            {
              if (!v28)
              {
                goto LABEL_47;
              }

              v27 = v26;
              if (!v26)
              {
                goto LABEL_47;
              }

              v26 = CFEqual(v28, v26);
              if (!v26)
              {
                goto LABEL_47;
              }
            }
          }
        }
      }

      v26 = CFDictionaryContainsKey(a3, @"CTFontLanguageAwareLineHeightRatioAttribute");
      if (v26)
      {
        goto LABEL_47;
      }

      v26 = CFDictionaryContainsKey(a3, @"CTFontLineSpacingOverrideAttribute");
      if (v26)
      {
        goto LABEL_47;
      }

      v26 = CFDictionaryContainsKey(a3, @"CTFontLegibilityWeightAttribute");
      if (v26)
      {
        goto LABEL_47;
      }

      v26 = CFDictionaryContainsKey(a3, @"CTFontIgnoreLegibilityWeightAttribute");
      if (v26)
      {
        goto LABEL_47;
      }

      if ((*(a2 + 4) & 0x80000000) == 0)
      {
        TDescriptor::InitBaseFont(a2, 0, 0.0);
      }

      v44 = atomic_load_explicit(a2 + 4, memory_order_acquire);
      if (v44)
      {
        if ((*(*v44 + 848))(v44))
        {
          v26 = CFDictionaryContainsKey(a3, @"NSFontSizeAttribute");
          if (v26 || (v26 = CFDictionaryContainsKey(a3, @"NSCTFontOpticalSizeAttribute"), v26))
          {
LABEL_47:
            atomic_fetch_and_explicit(this + 4, 0x7FFFFFFFu, memory_order_relaxed);
            __swp(v26, this + 8);
            if (v26 && atomic_fetch_add_explicit(v26 + 2, 0xFFFFFFFF, memory_order_release) == 1)
            {
              __dmb(9u);
              (*(*v26 + 8))(v26, v27);
            }
          }
        }
      }
    }

    TCFMutableDictionary::SetPairs(&v45, a3);
    v14 = CFDictionaryGetValue(a3, @"NSCTFontVariationAttribute");
    if (!v14)
    {
      goto LABEL_54;
    }

    v15 = v14;
    v16 = CFGetTypeID(v14);
    if (v16 != CFDictionaryGetTypeID())
    {
      goto LABEL_54;
    }

    if ((*(a2 + 4) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(a2, 0, 0.0);
    }

    v17 = atomic_load_explicit(a2 + 4, memory_order_acquire);
    if (!v17)
    {
      goto LABEL_54;
    }

    if ((v7 & 0x80000000) == 0)
    {
      atomic_fetch_or(this + 4, *(a2 + 4) & 0x7FFFFFFF);
    }

    v18 = CFDictionaryGetValue(v15, &unk_1EF278070);
    if (!v18)
    {
LABEL_53:
      TDescriptor::MergeVariationWithBase(this, v17, v15, &v45);
LABEL_54:
      v29 = CFDictionaryGetValue(a3, @"NSCTFontFeatureSettingsAttribute");
      if (v29)
      {
        v30 = v29;
        v31 = CFGetTypeID(v29);
        if (v31 == CFArrayGetTypeID())
        {
          v32 = atomic_load_explicit(&v46, memory_order_acquire);
          v33 = v32;
          if (v32)
          {
            v34 = CFDictionaryGetValue(v32, @"NSCTFontFeatureSettingsAttribute");
          }

          else
          {
            v34 = 0;
          }

          keys = 0xAAAAAAAAAAAAAAAALL;
          TCFMutableArray::TCFMutableArray(&keys, v34);
          v35 = atomic_load_explicit(&keys, memory_order_acquire);
          v54.length = CFArrayGetCount(v30);
          v54.location = 0;
          CFArrayAppendArray(v35, v30, v54);
          CFDictionarySetValue(atomic_load_explicit(&v45, memory_order_acquire), @"NSCTFontFeatureSettingsAttribute", atomic_load_explicit(&keys, memory_order_acquire));
        }

        else
        {
          CFDictionaryRemoveValue(atomic_load_explicit(&v45, memory_order_acquire), @"NSCTFontFeatureSettingsAttribute");
        }
      }

      v36 = CFDictionaryGetValue(a3, @"NSCTFontTraitsAttribute");
      if (v36)
      {
        v37 = v36;
        v38 = CFGetTypeID(v36);
        if (v38 == CFDictionaryGetTypeID())
        {
          if ((*(a2 + 4) & 0x80000000) == 0)
          {
            TDescriptor::InitBaseFont(a2, 0, 0.0);
          }

          v39 = atomic_load_explicit(a2 + 4, memory_order_acquire);
          if (v39)
          {
            v40 = atomic_load_explicit(&v46, memory_order_acquire);
            v41 = v40;
            if (v40)
            {
              v42 = CFDictionaryGetValue(v40, @"NSCTFontTraitsAttribute");
            }

            else
            {
              v42 = 0;
            }

            if ((((*(*v39 + 864))(v39) & 1) != 0 || (*(*v39 + 544))(v39)) && v42 && CFDictionaryGetCount(v42))
            {
              keys = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v42);
              TCFMutableDictionary::SetPairs(&keys, v37);
              CFDictionarySetValue(atomic_load_explicit(&v45, memory_order_acquire), @"NSCTFontTraitsAttribute", atomic_load_explicit(&keys, memory_order_acquire));
            }

            SymbolicTraitsFromTraits = GetSymbolicTraitsFromTraits(v37);
            if (SymbolicTraitsFromTraits)
            {
              TBaseFont::SystemUIFontAttributesForSymbolicTraits(v39, &v45, SymbolicTraitsFromTraits, SymbolicTraitsFromTraits, a2);
            }
          }
        }

        else
        {
          CFDictionaryRemoveValue(atomic_load_explicit(&v45, memory_order_acquire), @"NSCTFontTraitsAttribute");
        }
      }

      goto LABEL_77;
    }

    v19 = v18;
    keys = 0xAAAAAAAAAAAAAAAALL;
    (*(*v17 + 112))(&keys, v17);
    v20 = atomic_load_explicit(&keys, memory_order_acquire);
    if (v20)
    {
      v21 = v20;
      v22 = CFDictionaryGetValue(v20, &unk_1EF278070);

      if (v22 == v19 || v22 && CFEqual(v22, v19))
      {
        goto LABEL_52;
      }
    }

    else
    {
    }

    atomic_fetch_and_explicit(this + 4, 0xFFFF7FFF, memory_order_relaxed);
LABEL_52:

    goto LABEL_53;
  }

LABEL_77:
}

uint64_t TCFRef<__CFDictionary const*>::CompareAndSwap(atomic_ullong *a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5)
{
  v10 = a2;
  v7 = std::__cxx_atomic_compare_exchange_strong[abi:fn200100]<__CFDictionary const*>(a1, &v10, a4, a5, a5);
  if (v7)
  {
    v8 = a2;
  }

  else
  {
    v8 = a4;
  }

  return v7;
}

uint64_t std::__cxx_atomic_compare_exchange_strong[abi:fn200100]<__CFDictionary const*>(atomic_ullong *a1, uint64_t *a2, unint64_t a3, int a4, int a5)
{
  if (a5 == 4)
  {
    v5 = 2;
  }

  else
  {
    v5 = a5;
  }

  if (a5 == 3)
  {
    v5 = 0;
  }

  if (a4 > 3)
  {
    if (a4 == 4 || a4 == 5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if ((a4 - 1) < 2)
    {
      if ((v5 - 1) >= 2 && v5 == 5)
      {
        goto LABEL_21;
      }

LABEL_19:
      v6 = *a2;
      v7 = *a2;
      atomic_compare_exchange_strong_explicit(a1, &v7, a3, memory_order_acquire, memory_order_acquire);
      goto LABEL_22;
    }

    if (a4 == 3)
    {
      if ((v5 - 1) >= 2 && v5 != 5)
      {
        v6 = *a2;
        v7 = *a2;
        atomic_compare_exchange_strong_explicit(a1, &v7, a3, memory_order_release, memory_order_relaxed);
        goto LABEL_22;
      }

      goto LABEL_21;
    }
  }

  if ((v5 - 1) < 2)
  {
    goto LABEL_19;
  }

  if (v5 == 5)
  {
LABEL_21:
    v6 = *a2;
    v7 = *a2;
    atomic_compare_exchange_strong(a1, &v7, a3);
    goto LABEL_22;
  }

  v6 = *a2;
  v7 = *a2;
  atomic_compare_exchange_strong_explicit(a1, &v7, a3, memory_order_relaxed, memory_order_relaxed);
LABEL_22:
  if (v7 == v6)
  {
    return 1;
  }

  result = 0;
  *a2 = v7;
  return result;
}

id CTFontCopySystemUIFontExcessiveLineHeightCharacterSet()
{
  if (qword_1ED567958 != -1)
  {
    dispatch_once_f(&qword_1ED567958, 0, GetExcessiveLineHeightCharacterSet(void)::$_0::__invoke);
  }

  v1 = qword_1ED567950;

  return v1;
}

CFCharacterSetRef TDescriptorSource::CopyPredefinedCharacterSet(TDescriptorSource *this, const __CFString *a2)
{
  if (a2)
  {
    PlistFromGSFontCache = CTFontGetPlistFromGSFontCache(@"CTCharacterSets.plist", 1);
    if (!PlistFromGSFontCache)
    {
      goto LABEL_8;
    }

LABEL_7:
    PlistFromGSFontCache = CFDictionaryGetValue(PlistFromGSFontCache, this);
    goto LABEL_8;
  }

  if (qword_1ED567B40 != -1)
  {
    dispatch_once(&qword_1ED567B40, &__block_literal_global_697);
  }

  PlistFromGSFontCache = qword_1ED567B38;
  if (qword_1ED567B38)
  {
    goto LABEL_7;
  }

LABEL_8:

  return CreateCharacterSetWithCompressedBitmapRepresentation(PlistFromGSFontCache);
}

CFCharacterSetRef GetExcessiveLineHeightCharacterSet(void)::$_0::__invoke()
{
  result = TDescriptorSource::CopyPredefinedCharacterSet(@"CTFontUIFontExuberatedCharacterSet", 0);
  qword_1ED567950 = result;
  return result;
}

uint64_t ___ZL28GetCTCharacterSetsDictionaryb_block_invoke()
{
  result = CTFontGetPlistFromGSFontCache(@"CTCharacterSets.plist", 0);
  qword_1ED567B38 = result;
  return result;
}

CFCharacterSetRef CreateCharacterSetWithCompressedBitmapRepresentation(const __CFData *a1)
{
  if (!a1)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v4 = 0;
  if (BytePtr)
  {
    v5 = Length;
    v6 = 0;
    if (Length)
    {
      v7 = *(BytePtr + 1);
      v8 = *MEMORY[0x1E695E488];
      v9 = MEMORY[0x1865F0530](*MEMORY[0x1E695E488], v7, 3770426483, 0);
      v10 = v9;
      v11 = *(BytePtr + 1);
      v12 = (BytePtr + 8);
      v13 = &BytePtr[v5 - (v11 & 1)];
      if (*BytePtr == 1)
      {
        v14 = v9;
        while (v12 < v13)
        {
          v19 = *v12;
          v18 = v12 + 2;
          memcpy(v14, v18, 2 * v19);
          v12 = &v18[2 * v19];
          v14 += 2 * v19;
          if (v12 < v13)
          {
            v20 = *v12;
            v12 += 2;
            memset(v14, 255, 2 * v20);
            v14 += 2 * v20;
          }
        }
      }

      else if (*BytePtr == 2)
      {
        if (v12 >= v13)
        {
          v14 = v9;
        }

        else
        {
          v14 = v9;
          do
          {
            v15 = *v12;
            v12 += 2;
            v16 = v15 >> 14;
            v17 = v15 & 0x3FFF;
            if (v15 >> 14 > 1)
            {
              if (v16 == 2)
              {
                memcpy(v14, v12, 2 * v17);
                v12 += 2 * v17;
              }

              else
              {
                CFLog();
              }
            }

            else if (v16)
            {
              memset(v14, 255, 2 * v17);
            }

            else
            {
              bzero(v14, 2 * v17);
            }

            v14 += 2 * v17;
          }

          while (v12 < v13);
        }
      }

      else
      {
        v14 = v9;
        while (v12 < v13)
        {
          v22 = *v12;
          v21 = v12 + 2;
          memcpy(v14, v21, 2 * v22);
          v12 = &v21[2 * v22];
          v14 += 2 * v22;
          if (v12 < v13)
          {
            v23 = *v12;
            v12 += 2;
            bzero(v14, 2 * v23);
            v14 += 2 * v23;
          }
        }
      }

      if (v11)
      {
        *v14 = *v12;
      }

      v24 = *MEMORY[0x1E695E480];
      v4 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v10, v7, v8);
      if (v4)
      {
        v6 = CFCharacterSetCreateWithBitmapRepresentation(v24, v4);
      }

      else
      {
        v6 = 0;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

CTFontDescriptorRef CTFontDescriptorCreateCopyWithAttributes(CTFontDescriptorRef original, CFDictionaryRef attributes)
{
  v2 = original;
  v6 = attributes;
  if (!original)
  {
    return v2;
  }

  if (attributes && CFDictionaryGetCount(attributes))
  {
    v4 = v2;
    v5 = 0xAAAAAAAAAAAAAAAALL;
    TCFBase_NEW<CTFontDescriptor,CTFontDescriptor*,__CFDictionary const*&>(&v4, &v6, &v5);
    v2 = atomic_exchange(&v5, 0);

    return v2;
  }

  return v2;
}

void TCGFontCache::CopyFontWithOpticalSizeVariation(TCGFontCache *this@<X0>, CGFont *a2@<X1>, CFDictionaryRef theDict@<X2>, atomic_ullong *a4@<X8>)
{
  if (this && theDict && (Value = CFDictionaryGetValue(theDict, &unk_1EF27A788)) != 0 && (v10 = Value, v11 = CFGetTypeID(Value), v11 == CFNumberGetTypeID()))
  {
    v21.receiver = -1;
    CFNumberGetValue(v10, kCFNumberDoubleType, &v21);
    receiver = v21.receiver;
    v13 = [_CGFontCacheKey alloc];
    if (v13)
    {
      v21.receiver = v13;
      v21.super_class = _CGFontCacheKey;
      v13 = [(TCGFontCache *)&v21 init];
      v14 = v13;
      if (v13)
      {
        *(v13 + 16) = a2;
        *(v14 + 24) = *&receiver;
        v13 = [(CGFont *)a2 hash];
        v15 = receiver + 2654435769;
        if (*&receiver == 0.0)
        {
          v15 = 2654435769;
        }

        *(v14 + 8) = v13 ^ v15;
      }
    }

    else
    {
      v14 = 0;
    }

    *a4 = 0xAAAAAAAAAAAAAAAALL;
    Cache = TCGFontCache::GetCache(v13);
    TPurgeableCache::RetainedValueForKey(Cache, v14, &v21);
    *a4 = atomic_exchange(&v21, 0);

    if (!atomic_load_explicit(a4, memory_order_acquire))
    {
      CreateFontWithVariation(this, theDict, &v21);

      if (atomic_load_explicit(a4, memory_order_acquire))
      {
        v18 = TCGFontCache::GetCache(v17);
        explicit = atomic_load_explicit(a4, memory_order_acquire);
        v20 = atomic_load_explicit(v18, memory_order_acquire);
        if (explicit)
        {
          [v20 setObject:explicit forKey:v14];
        }

        else
        {
          [v20 removeObjectForKey:v14];
        }
      }
    }
  }

  else
  {
    *a4 = 0;
  }
}

uint64_t TBaseFont::GetGlyphsForCharacterRange(TBaseFont *this, CFRange a2, unsigned __int16 *a3)
{
  length = a2.length;
  location = a2.location;
  v52 = *MEMORY[0x1E69E9840];
  v40 = this;
  if (!TcmapTable::MapRange(&v40, a2, a3))
  {
    *&v8 = 0xAAAAAAAAAAAAAAAALL;
    *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v50[3] = v8;
    v50[2] = v8;
    v50[1] = v8;
    v50[0] = v8;
    v47 = 0;
    v48 = 0;
    v49 = 0;
    v51 = v50;
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::reserve(&v47, 2 * length);
    v7 = location + length;
    if (location >= 0x10000 || length < 1)
    {
      v9 = location;
      if (length > 0)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v9 = location;
      do
      {
        v10 = v9;
        LOWORD(v42) = v9;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](&v47, &v42);
        ++v9;
      }

      while (v10 <= 65534 && v9 < v7);
      if (v9 < v7)
      {
LABEL_9:
        v11 = v47;
        v12 = v48;
        v13 = v48 - v47;
        v14 = v48 - v47;
        v38 = v47;
        v39 = v48;
        if (v9 >= v7)
        {
          v15 = v48 - v47;
        }

        else
        {
          do
          {
            LOWORD(v42) = (v9 >> 10) - 10304;
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](&v47, &v42);
            LOWORD(v42) = v9 & 0x3FF | 0xDC00;
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](&v47, &v42);
            ++v9;
          }

          while (v7 != v9);
          v11 = v47;
          v12 = v48;
          v13 = v48 - v47;
          v15 = v48 - v47;
        }

        *&v16 = 0xAAAAAAAAAAAAAAAALL;
        *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v45[3] = v16;
        v45[2] = v16;
        v45[1] = v16;
        v45[0] = v16;
        v43 = 0;
        v44 = 0;
        v42 = 0;
        v46 = v45;
        if (v12 == v11)
        {
          v19 = 0;
        }

        else
        {
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__vallocate[abi:fn200100](&v42, v15);
          v37 = v14;
          v17 = v43;
          bzero(v43, (v12 - v11) & 0xFFFFFFFFFFFFFFFELL);
          v18 = &v17[v13];
          v14 = v37;
          v43 = v18;
          v11 = v47;
          v19 = v42;
        }

        TcmapTable::Map(&v40, v11, v19, v15, 1);
        if (v39 != v38)
        {
          v20 = v42;
          v21 = (v43 - v42) >> 1;
          if (v14 <= 1)
          {
            v22 = 1;
          }

          else
          {
            v22 = v14;
          }

          v23 = v22;
          v24 = a3;
          while (v21)
          {
            v25 = *v20;
            v20 = (v20 + 2);
            *v24++ = v25;
            --v21;
            if (!--v23)
            {
              goto LABEL_27;
            }
          }

LABEL_53:
          __break(1u);
        }

        v22 = 0;
LABEL_27:
        if (v22 < v15)
        {
          v26 = v42;
          v27 = (v43 - v42) >> 1;
          v28 = &a3[v22];
          while (v27 > v22)
          {
            *v28++ = *(v26 + v22);
            v22 += 2;
            if (v22 >= v15)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_53;
        }

LABEL_31:
        v41 = &v42;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v41);
LABEL_32:
        v42 = &v47;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v42);
        goto LABEL_33;
      }
    }

    TcmapTable::Map(&v40, v47, a3, v48 - v47, 1);
    goto LABEL_32;
  }

  v7 = location + length;
LABEL_33:
  v29 = L" ";
  v30 = 72;
  do
  {
    v31 = (*v29)[-1];
    v32 = v31 - location;
    v33 = v31 < location || v7 <= v31;
    if (!v33 && !a3[v32])
    {
      a3[v32] = FirstMappedOf(&v40, v29);
    }

    v29 = (v29 + 6);
    v30 -= 6;
  }

  while (v30);
  result = (*(*this + 736))(this);
  if (result)
  {
    if (location <= 9)
    {
      if (v7 <= 9)
      {
        return result;
      }

      goto LABEL_51;
    }

    if (location == 10)
    {
      if (length > 0 || v7 > 13)
      {
LABEL_51:
        result = TBaseFont::GetCachedSpaceAndJoinerGlyphs(this, &v40);
        v35 = *result;
        v36 = &a3[-location];
        v36[9] = *result;
        v36[10] = v35;
        v36[13] = v35;
      }
    }

    else if (location <= 0xD && v7 >= 14)
    {
      goto LABEL_51;
    }
  }

  return result;
}

uint64_t TcmapTable::MapRange(TBaseFont **this, CFRange a2, unsigned __int16 *a3)
{
  if (!TBaseFont::GetInitializedGraphicsFont(*this) || !CGFontGetParserFont())
  {
    return 0;
  }

  return MEMORY[0x1EEE08B80]();
}

void TComponentFont::GetCharacterOverride(TComponentFont *this, const __CFString **a2, void *a3)
{
  v5 = *(a2 + 178);
  if ((v5 & 0x700) != 0)
  {
    if ((v5 & 0x100) != 0)
    {
      ComponentAttribute = TComponentFont::GetComponentAttribute(a2, @"cmapOverride");
      if (ComponentAttribute)
      {
        *a3 = @"cmapOverride";
        *this = ComponentAttribute;
        return;
      }
    }

    ((*a2)[5].length)(&v10, a2);

    if ((v5 & 0x600) != 0)
    {
      v9 = TComponentFont::GetComponentAttribute(a2, @"UnicodeCharSet");
      if (!atomic_load_explicit(&v9, memory_order_acquire))
      {
        TBaseFont::CopyAttributeInternal(a2, @"NSCTFontCharacterSetAttribute", &v8);
      }

      if (atomic_load_explicit(&v9, memory_order_acquire))
      {
        *a3 = @"UnicodeCharSet";
        *this = atomic_exchange(&v9, 0);

        return;
      }
    }
  }

  *a3 = 0;
  *this = 0;
}

unint64_t TTenuousComponentFont::Substantiate(TTenuousComponentFont *this)
{
  os_unfair_lock_lock_with_options();
  explicit = 1;
  if (!atomic_load_explicit(this + 10, memory_order_acquire))
  {
    if (atomic_exchange(this + 800, 1u))
    {
      goto LABEL_9;
    }

    explicit = atomic_load_explicit(this + 12, memory_order_acquire);
    if (explicit)
    {

      if (atomic_load_explicit(this + 11, memory_order_acquire))
      {
        atomic_load_explicit(this + 11, memory_order_acquire);
        v4 = CGFontURLCreate();
      }

      if (atomic_load_explicit(this + 10, memory_order_acquire))
      {
        explicit = 1;
        goto LABEL_10;
      }

      CFLog();
LABEL_9:
      explicit = 0;
    }
  }

LABEL_10:
  os_unfair_lock_unlock(this + 199);
  return explicit;
}

id TTenuousComponentFont::CopyFontURL@<X0>(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  if ((*(*this + 904))(this))
  {
    result = atomic_load_explicit(this + 10, memory_order_acquire);
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

void TBaseFont::CopyTable(atomic_uint *this@<X0>, uint64_t a2@<X1>, atomic_ullong *a3@<X8>)
{
  if (a2 && (v6 = TableFlagForIdentifier(a2), (this[44] & v6) == 0))
  {
    v7 = v6;
    if (TBaseFont::IsCommonTableFlag(v6))
    {
      v9 = TBaseFont::GetCommonTable(this, a2, 0);
      *a3 = atomic_exchange(&v9, 0);
    }

    else
    {
      InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(this);
      *a3 = CGFontCopyTableForTag(InitializedGraphicsFont, a2);
      if (!atomic_load_explicit(a3, memory_order_acquire))
      {
        atomic_fetch_or_explicit(this + 44, v7, memory_order_relaxed);
      }
    }
  }

  else
  {
    *a3 = 0;
  }
}

void CreateFontWithVariation(CGFont *a1@<X0>, const __CFDictionary *a2@<X1>, atomic_ullong *a3@<X8>)
{
  v50 = *MEMORY[0x1E69E9840];
  *a3 = a1;
  if (a2)
  {
    Count = CFDictionaryGetCount(a2);
    v6 = Count;
    v24 = Count;
    if (Count >> 60)
    {
      v7 = -1;
    }

    else
    {
      v7 = 16 * Count;
    }

    v8 = operator new[](v7, MEMORY[0x1E69E5398]);
    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v48[14] = v9;
    v48[13] = v9;
    v48[12] = v9;
    v48[11] = v9;
    v48[10] = v9;
    v48[9] = v9;
    v48[8] = v9;
    v48[7] = v9;
    v48[6] = v9;
    v48[5] = v9;
    v48[4] = v9;
    v48[3] = v9;
    v48[2] = v9;
    v48[1] = v9;
    v48[0] = v9;
    keys = 0;
    v46 = 0;
    v47 = 0;
    v49 = v48;
    if (v6)
    {
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&keys, v6);
      v10 = v46;
      bzero(v46, 8 * v6);
      v46 = &v10[8 * v6];
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v43 = v11;
      v42 = v11;
      v41 = v11;
      v40 = v11;
      v39 = v11;
      v38 = v11;
      v37 = v11;
      v36 = v11;
      v35 = v11;
      v34 = v11;
      v33 = v11;
      v32 = v11;
      v31 = v11;
      v30 = v11;
      v29 = v11;
      v27 = 0;
      v28 = 0;
      values = 0;
      v44 = &v29;
      std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&values, v6);
      v12 = v27;
      bzero(v27, 8 * v6);
      v27 = &v12[8 * v6];
      CFDictionaryGetKeysAndValues(a2, keys, values);
      if (v6 < 1)
      {
        goto LABEL_19;
      }

      v13 = 0;
      v14 = v8;
      while (1)
      {
        if (v13 >= (v46 - keys) >> 3 || v13 >= (v27 - values) >> 3)
        {
          __break(1u);
        }

        v15 = keys[v13];
        v16 = values[v13];
        v17 = CFGetTypeID(v15);
        if (v17 != CFNumberGetTypeID())
        {
          break;
        }

        v18 = CFGetTypeID(v16);
        if (v18 != CFNumberGetTypeID())
        {
          break;
        }

        CFNumberGetValue(v15, kCFNumberIntType, v14);
        CFNumberGetValue(v16, kCFNumberDoubleType, v14 + 8);
        ++v13;
        v14 += 16;
        if (v6 == v13)
        {
          goto LABEL_19;
        }
      }

      p_values = 0;
      VariationAxes = CGFontGetVariationAxes();
      CreateGraphicsVariationFromDict(a2, &v24, VariationAxes, 0, &v23);
      v20 = v23;
      v23 = 0;
      if (v8)
      {
        MEMORY[0x1865F22B0](v8, 0x1000C80F7F8B94BLL);
        v21 = v23;
        v23 = 0;
        if (v21)
        {
          MEMORY[0x1865F22B0](v21, 0x1000C80F7F8B94BLL);
        }
      }

      v8 = v20;
      if (v24)
      {
LABEL_19:
        v22 = CGFontCreateWithVariations();
        if (v22)
        {
        }
      }
    }

    else
    {
      v43 = v9;
      v42 = v9;
      v41 = v9;
      v40 = v9;
      v39 = v9;
      v38 = v9;
      v37 = v9;
      v36 = v9;
      v35 = v9;
      v34 = v9;
      v33 = v9;
      v32 = v9;
      v31 = v9;
      v30 = v9;
      v29 = v9;
      v27 = 0;
      v28 = 0;
      values = 0;
      v44 = &v29;
      CFDictionaryGetKeysAndValues(a2, 0, 0);
    }

    p_values = &values;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&p_values);
    values = &keys;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&values);
    if (v8)
    {
      MEMORY[0x1865F22B0](v8, 0x1000C80F7F8B94BLL);
    }
  }
}

uint64_t TTenuousComponentFont::IsMicrosoftKorean(TTenuousComponentFont *this)
{
  if ((*(*this + 856))(this))
  {
    return 0;
  }

  if ((*(this + 46) & 0x80) == 0)
  {
    TBaseFont::DetermineFontFlags(this, 0x80u);
  }

  return (*(this + 45) >> 7) & 1;
}

double TComponentFont::GetUnscaledTrackAmount(TComponentFont *this, const __CFDictionary *a2, double a3, const __CFData *a4, unsigned int a5)
{
  if ((*(*this + 848))(this))
  {
    v10 = *(this + 78);
    if (v10 != 0.0)
    {
      return InterpolateOpticalValue(a3, 0.0, *(this + 75), v10, *(this + 85), *(this + 82)) * a5 / 1000.0;
    }
  }

  return TBaseFont::GetUnscaledTrackAmount(this, a2, a3, a4);
}

double TBaseFont::GetUnscaledTrackAmount(TBaseFont *this, const __CFDictionary *a2, double a3, const __CFData *a4)
{
  v15 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 488))(&v15);
  if (atomic_load_explicit(&v15, memory_order_acquire))
  {
    v14 = 0.0;
    if (a2)
    {
      Value = CFDictionaryGetValue(a2, @"NSCTFontTrackAttribute");
      if (Value)
      {
        v9 = Value;
        v10 = CFGetTypeID(Value);
        if (v10 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v9, kCFNumberDoubleType, &v14);
LABEL_12:
          explicit = atomic_load_explicit(&v15, memory_order_acquire);
          v11 = TAATTrakTable::UnscaledTrackAmountForSize(explicit, a4, a3, v14);
          goto LABEL_13;
        }
      }
    }

    else if (((*(*this + 856))(this) & 1) == 0)
    {
      goto LABEL_12;
    }

    if ((*(*this + 856))(this))
    {
      if (qword_1EA869788 != -1)
      {
        dispatch_once_f(&qword_1EA869788, 0, TBaseFont::GetUnscaledTrackAmount(__CFDictionary const*,double,BOOL,unsigned int)const::$_0::__invoke);
      }

      *&v14 = qword_1EA869790;
    }

    goto LABEL_12;
  }

  v11 = 0.0;
LABEL_13:

  return v11;
}

uint64_t ScriptAndLangSysFromCanonicalLanguage(__CFString *a1)
{
  {
    ScriptAndLangSysFromCanonicalLanguage(__CFString const*)::sCachedScriptAndLangSys = 0xFFFFFFFFLL;
  }

  os_unfair_lock_lock_with_options();
  v2 = ScriptAndLangSysFromCanonicalLanguage(__CFString const*)::sCachedCanonicalLanguage;
  if (ScriptAndLangSysFromCanonicalLanguage(__CFString const*)::sCachedCanonicalLanguage != a1)
  {
    ScriptAndLangSysFromCanonicalLanguage(__CFString const*)::sCachedCanonicalLanguage = a1;

    if (a1 && CFStringGetLength(a1))
    {
      v3 = ScriptAndLangSysFromCanonicalLanguageInternal(a1);
      v4 = HIDWORD(v3);
    }

    else
    {
      LODWORD(v4) = 0;
      LODWORD(v3) = -1;
    }

    LODWORD(ScriptAndLangSysFromCanonicalLanguage(__CFString const*)::sCachedScriptAndLangSys) = v3;
    HIDWORD(ScriptAndLangSysFromCanonicalLanguage(__CFString const*)::sCachedScriptAndLangSys) = v4;
  }

  v5 = ScriptAndLangSysFromCanonicalLanguage(__CFString const*)::sCachedScriptAndLangSys;
  os_unfair_lock_unlock(&ScriptAndLangSysFromCanonicalLanguage(__CFString const*)::sLock);
  return v5;
}

void TBaseFont::GetUnscaledTrackAmount(__CFDictionary const*,double,BOOL,unsigned int)const::$_0::__invoke()
{
  v0 = CFPreferencesCopyValue(@"AppleSystemUIFontDefaultTrack", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v1 = v0;
  if (v0)
  {
    v2 = v0;
    valuePtr = -1;
    CFNumberGetValue(v2, kCFNumberDoubleType, &valuePtr);
    qword_1EA869790 = valuePtr;
  }
}

uint64_t TBaseFont::IsCommonTableFlag(TBaseFont *this)
{
  v1 = this;
  result = 1;
  if (v1 <= 127)
  {
    v3 = v1 - 1;
    if (v3 <= 0x3F && ((1 << v3) & 0x8000000000000089) != 0)
    {
      return result;
    }

    return 0;
  }

  if (v1 >= 0x4000)
  {
    if (v1 != 0x4000 && v1 != 0x400000)
    {
      return 0;
    }
  }

  else if (v1 != 128 && v1 != 256)
  {
    return 0;
  }

  return result;
}

double TAATTrakTable::UnscaledTrackAmountForSize(TAATTrakTable *this, const __CFData *a2, double a3, double a4)
{
  v4 = 0.0;
  if (!this)
  {
    return v4;
  }

  v6 = a2;
  BytePtr = CFDataGetBytePtr(this);
  if (!BytePtr)
  {
    return v4;
  }

  v10 = BytePtr;
  v11 = CFDataGetBytePtr(this);
  if (!v11)
  {
    return v4;
  }

  v12 = &v11[CFDataGetLength(this)];
  if ((v10 + 10) > v12 || *v10 != 256)
  {
    return v4;
  }

  v13 = 6;
  if (v6)
  {
    v13 = 8;
  }

  v14 = *&v10[v13];
  if (!v14)
  {
    return v4;
  }

  v15 = &v10[__rev16(v14)];
  v16 = (v15 + 16);
  if ((v15 + 16) > v12)
  {
    return v4;
  }

  v17 = (v15 + 8);
  if (!*v15)
  {
    return v4;
  }

  v18 = __rev16(*v15);
  v19 = &v17[2 * v18];
  v20 = v19 < v17 || v19 > v12;
  if (v20 && v18 != (v12 - v17) >> 3)
  {
    return v4;
  }

  if (!*(v15 + 1))
  {
    return v4;
  }

  v21 = &v10[bswap32(*(v15 + 1))];
  v22 = __rev16(*(v15 + 1));
  v23 = &v21[v22];
  if (v23 < v21 || v23 > v12)
  {
    v25 = (v21 + 1) <= v12 ? (v12 - v21) >> 2 : 0;
    if (v25 != v22)
    {
      return v4;
    }
  }

  v26 = vcvtd_n_s64_f64(a3, 0x10uLL);
  if (a3 * 65536.0 < 2147483650.0)
  {
    v27 = v26;
  }

  else
  {
    v27 = 0x7FFFFFFF;
  }

  if (a3 * 65536.0 <= -2147483650.0)
  {
    v27 = 0x80000000;
  }

  if (v22 >= 2 && bswap32(*v21) <= v27)
  {
    v53 = v22;
    if (bswap32(v21[v53 - 1]) <= v27)
    {
      v28 = v22 - 1;
    }

    else
    {
      v28 = 0;
      v54 = v21 + 1;
      v55 = v53 * 4 - 4;
      v29 = 1;
      while (1)
      {
        v56 = bswap32(*(v54 - 1));
        if (v56 == v27)
        {
          break;
        }

        v57 = bswap32(*v54);
        if (v56 < v27 && v57 > v27)
        {
          goto LABEL_35;
        }

        ++v28;
        ++v29;
        ++v54;
        v55 -= 4;
        if (!v55)
        {
          v28 = v22 - 1;
          v29 = v22;
          goto LABEL_35;
        }
      }
    }

    v29 = v28;
  }

  else
  {
    v28 = 0;
    v29 = 0;
  }

LABEL_35:
  v30 = vcvtd_n_s64_f64(a4, 0x10uLL);
  v31 = a4 * 65536.0 < 2147483650.0 ? v30 : 0x7FFFFFFF;
  v32 = a4 * 65536.0 <= -2147483650.0 ? 0x80000000 : v31;
  if (v18 >= 2 && bswap32(*v17) <= v32)
  {
    v59 = 8 * v18;
    v60 = bswap32(*&v15[v59]);
    v33 = v18 - 1;
    if (v60 <= v32)
    {
      v34 = v18 - 1;
    }

    else
    {
      v34 = 0;
      v61 = v59 - 8;
      v62 = 1;
      while (1)
      {
        v63 = bswap32(*(v16 - 2));
        if (v63 == v32)
        {
          break;
        }

        v64 = bswap32(*v16);
        if (v63 < v32 && v64 > v32)
        {
          v33 = v34;
          v34 = v62;
          goto LABEL_44;
        }

        ++v34;
        ++v62;
        v16 += 2;
        v61 -= 8;
        if (!v61)
        {
          v34 = v18;
          goto LABEL_44;
        }
      }

      v33 = v34;
    }
  }

  else
  {
    v33 = 0;
    v34 = 0;
  }

LABEL_44:
  v35 = *&v17[2 * v33];
  v36 = *&v17[2 * v34];
  v37 = 0.0;
  if (v28 != v29)
  {
    v38 = vcvts_n_f32_s32(bswap32(v21[v28]), 0x10uLL);
    v39 = vcvts_n_f32_s32(bswap32(v21[v29]), 0x10uLL);
    if (v38 != v39)
    {
      v37 = (a3 - v38) / (v39 - v38);
    }
  }

  v40 = &v10[__rev16(HIWORD(v35))];
  v41 = &v40[2 * v22];
  v42 = v41 < v40 || v41 > v12;
  if (v42 && ((v40 + 2) <= v12 ? (v43 = (v12 - v40) >> 1) : (v43 = 0), v43 != v22))
  {
    v4 = 0.0;
  }

  else
  {
    v4 = (bswap32(*&v40[2 * v28]) >> 16);
    if (v28 != v29)
    {
      v4 = std::__lerp[abi:fn200100]<double>(v4, (bswap32(*&v40[2 * v29]) >> 16), v37);
    }
  }

  if (v35 == v36)
  {
    return v4;
  }

  v45 = vcvts_n_f32_s32(bswap32(v35), 0x10uLL);
  v46 = vcvts_n_f32_s32(bswap32(v36), 0x10uLL);
  v47 = 0.0;
  if (v45 != v46)
  {
    v47 = (a4 - v45) / (v46 - v45);
  }

  v48 = &v10[__rev16(HIWORD(v36))];
  v49 = &v48[2 * v22];
  v50 = v49 < v48 || v49 > v12;
  if (v50 && ((v48 + 2) <= v12 ? (v51 = (v12 - v48) >> 1) : (v51 = 0), v51 != v22))
  {
    v52 = 0.0;
  }

  else
  {
    v52 = (bswap32(*&v48[2 * v28]) >> 16);
    if (v28 != v29)
    {
      v52 = std::__lerp[abi:fn200100]<double>(v52, (bswap32(*&v48[2 * v29]) >> 16), v37);
    }
  }

  return std::__lerp[abi:fn200100]<double>(v4, v52, v47);
}