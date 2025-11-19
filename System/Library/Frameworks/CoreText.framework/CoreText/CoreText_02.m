void *___ZL44getFSFontIsOverriddenSystemFontNameSymbolLocv_block_invoke(void *a1)
{
  v7 = 0;
  v3 = FontServicesLibraryCore(&v7);
  if (!v3)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *FontServicesLibrary()"];
    v4 = [a1 handleFailureInFunction:v6 file:@"MetadataSupport.cpp" lineNumber:26 description:{@"%s", v7}];
    __break(1u);
    goto LABEL_5;
  }

  v1 = v3;
  v4 = v7;
  if (v7)
  {
LABEL_5:
    free(v4);
  }

  result = dlsym(v1, "FSFontIsOverriddenSystemFontName");
  *(*(a1[4] + 8) + 24) = result;
  getFSFontIsOverriddenSystemFontNameSymbolLoc(void)::ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t getFSFontIsOverriddenSystemFontNameSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getFSFontIsOverriddenSystemFontNameSymbolLoc(void)::ptr;
  v6 = getFSFontIsOverriddenSystemFontNameSymbolLoc(void)::ptr;
  if (!getFSFontIsOverriddenSystemFontNameSymbolLoc(void)::ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = ___ZL44getFSFontIsOverriddenSystemFontNameSymbolLocv_block_invoke;
    v2[3] = &unk_1E6E37AF8;
    v2[4] = &v3;
    ___ZL44getFSFontIsOverriddenSystemFontNameSymbolLocv_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t SoftLinked__FSFontIsOverriddenSystemFontName(const __CFString *a1)
{
  IsOverriddenSystemFontNameSymbolLoc = getFSFontIsOverriddenSystemFontNameSymbolLoc();
  if (IsOverriddenSystemFontNameSymbolLoc)
  {

    return IsOverriddenSystemFontNameSymbolLoc(a1);
  }

  else
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    result = [v4 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"BOOL SoftLinked__FSFontIsOverriddenSystemFontName(CFStringRef)") description:{@"MetadataSupport.cpp", 27, @"%s", dlerror()}];
    __break(1u);
  }

  return result;
}

const __CFString *CopyAttributeForSystemFont@<X0>(const __CFString *result@<X0>, const __CFString *a2@<X1>, const __CFString **a3@<X8>)
{
  if (result)
  {
    v5 = result;
    if (FontServicesLibraryCore(0) && getFSFontIsOverriddenSystemFontNameSymbolLoc() && (SoftLinked__FSFontIsOverriddenSystemFontName(v5) & 1) != 0)
    {
      result = 0;
    }

    else
    {
      if (qword_1ED568240 != -1)
      {
        dispatch_once(&qword_1ED568240, &__block_literal_global_110);
      }

      Value = qword_1ED568238;
      if (qword_1ED568238)
      {
        Value = CFDictionaryGetValue(qword_1ED568238, @"Attrs");
        if (Value)
        {
          Value = CFDictionaryGetValue(Value, v5);
          if (Value)
          {
            Value = CFDictionaryGetValue(Value, a2);
          }
        }
      }

      result = Value;
    }
  }

  *a3 = result;
  return result;
}

void AddVariationInfo(atomic_ullong *a1, const __CFString *a2)
{
  CopyAttributeForSystemFont(a2, @"NSCTFontVariationAxesAttribute", &v7);
  v4 = atomic_exchange(&v7, 0);

  if (v4)
  {
    CFDictionaryAddValue(atomic_load_explicit(a1, memory_order_acquire), @"variationAxes", v4);
  }

  v7 = 0xAAAAAAAAAAAAAAAALL;
  CopyVariationAttributeForSystemFont(a2, &v7);
  if (atomic_load_explicit(&v7, memory_order_acquire) && CFDictionaryGetCount(atomic_load_explicit(&v7, memory_order_acquire)) | v4)
  {
    CFDictionaryAddValue(atomic_load_explicit(a1, memory_order_acquire), @"variations", atomic_load_explicit(&v7, memory_order_acquire));
  }

  v5 = GSFontCopyFontFilePath();
  if (v5)
  {
    CFDictionaryAddValue(atomic_load_explicit(a1, memory_order_acquire), @"path", v5);
    v6 = CGFontURLCreate();
    if (v6)
    {
      CFDictionaryAddValue(atomic_load_explicit(a1, memory_order_acquire), @"fontURL", v6);
    }
  }
}

void AddVariationInfoWithGrade(atomic_ullong *a1, const __CFString *a2, uint64_t a3)
{
  if (a3)
  {
    v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@G%u", a2, a3);
    AddVariationInfo(a1, v4);
  }

  else
  {

    AddVariationInfo(a1, a2);
  }
}

uint64_t FontServicesLibraryCore(char **a1)
{
  if (!FontServicesLibraryCore(char **)::frameworkLibrary)
  {
    FontServicesLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  return FontServicesLibraryCore(char **)::frameworkLibrary;
}

__CFString *SFFontNameForWidth(unsigned int a1, CFNumberRef number, void *a3)
{
  v3 = kFont2X[5 * a1];
  if (number)
  {
    valuePtr = NAN;
    CFNumberGetValue(number, kCFNumberDoubleType, &valuePtr);
    v6 = ClassOfWidth(valuePtr);
    if (v6 != 5)
    {
      if (v6 >= 8)
      {
        v7 = 8;
      }

      else
      {
        v7 = v6;
      }

      if (a3)
      {
        *a3 = off_1E6E3C818[v7];
      }

      return off_1E6E3CAA0[v7][a1 % 9];
    }
  }

  return v3;
}

void setOpticalSizeComponent(const __CFString *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, const void *a6, atomic_ullong *a7, uint64_t a8, double a9, double a10, double a11, double a12, const void *a13, char a14)
{
  setNameWithGrade(a1, a5, a7);
  if (a9 >= 0.0)
  {
    CFDictionaryAddValue(atomic_load_explicit(a7, memory_order_acquire), @"opticalSize", [MEMORY[0x1E696AD98] numberWithDouble:a9]);
  }

  if (a13)
  {
    CFDictionaryAddValue(atomic_load_explicit(a7, memory_order_acquire), @"familyName", a13);
  }

  v24 = MEMORY[0x1E695E480];
  if (a10 > 0.0)
  {
    v25 = *(a2 + 8) * a10 / a9 - (*(a2 + 24) - *(a2 + 28));
    if (a4 == 1 || (a3 - 61) <= 3)
    {
      DetermineLanguageSpecificParameters();
      if (byte_1ED567461)
      {
        v25 = v25 + 1.0;
      }
    }

    valuePtr = v25;
    v26 = CFNumberCreate(*v24, kCFNumberDoubleType, &valuePtr);
    CFDictionaryAddValue(atomic_load_explicit(a7, memory_order_acquire), @"leadingOverride", v26);
  }

  if (a11 != 0.0)
  {
    valuePtr = a11;
    v27 = CFNumberCreate(*v24, kCFNumberDoubleType, &valuePtr);
    CFDictionaryAddValue(atomic_load_explicit(a7, memory_order_acquire), @"lineSpacingOverrideRatio", v27);
  }

  if (*(a2 + 32))
  {
    CFDictionaryAddValue(atomic_load_explicit(a7, memory_order_acquire), @"capHeight", [MEMORY[0x1E696AD98] numberWithInt:?]);
  }

  if (a12 != 0.0)
  {
    valuePtr = a12;
    v28 = CFNumberCreate(*v24, kCFNumberDoubleType, &valuePtr);
    CFDictionaryAddValue(atomic_load_explicit(a7, memory_order_acquire), @"trackingAmount", v28);
  }

  if (a3 <= 0x144)
  {
    if (qword_1ED5674C0 != -1)
    {
      dispatch_once(&qword_1ED5674C0, &__block_literal_global_1735);
    }

    v29 = [qword_1ED5674B8 objectForKeyedSubscript:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedInt:", a3)}];
    if (v29)
    {
      v30 = v29;
      if (a8)
      {
        v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%@", v29, a8];
      }

      CFDictionaryAddValue(atomic_load_explicit(a7, memory_order_acquire), @"NSCTFontUIUsageAttribute", v30);
    }
  }

  if (a6)
  {
    CFDictionaryAddValue(atomic_load_explicit(a7, memory_order_acquire), @"UnicodeCharSetTrim", a6);
  }

  if (a14)
  {
    explicit = atomic_load_explicit(a7, memory_order_acquire);
    CFDictionaryAddValue(explicit, @"needsScriptAnalysis", *MEMORY[0x1E695E4D0]);
  }
}

void setNameWithGrade(const __CFString *value, uint64_t a2, atomic_ullong *a3)
{
  if (a2)
  {
    v5 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@G%u", value, a2);
    CFDictionaryAddValue(atomic_load_explicit(a3, memory_order_acquire), @"name", v5);
  }

  else
  {
    explicit = atomic_load_explicit(a3, memory_order_acquire);

    CFDictionaryAddValue(explicit, @"name", value);
  }
}

uint64_t ___ZL23GetCTFontInfoDictionaryv_block_invoke()
{
  result = CTFontGetPlistFromGSFontCache(@"CTFontInfo.plist", 0);
  qword_1ED568238 = result;
  return result;
}

void CopyVariationAttributeForSystemFont(const __CFString *a1@<X0>, CFDictionaryRef *a2@<X8>)
{
  v32 = *MEMORY[0x1E69E9840];
  CopyAttributeForSystemFont(a1, @"NSCTFontVariationAttribute", &v27);
  v15 = atomic_exchange(&v27, 0);

  v3 = atomic_load_explicit(&v15, memory_order_acquire);
  if (!v3)
  {

    goto LABEL_10;
  }

  v4 = v3;
  Count = CFDictionaryGetCount(v3);

  if (!Count)
  {
LABEL_10:
    *a2 = atomic_exchange(&v15, 0);
    goto LABEL_11;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[14] = v6;
  v30[13] = v6;
  v30[12] = v6;
  v30[11] = v6;
  v30[10] = v6;
  v30[9] = v6;
  v30[8] = v6;
  v30[7] = v6;
  v30[6] = v6;
  v30[5] = v6;
  v30[4] = v6;
  v30[3] = v6;
  v30[2] = v6;
  v30[1] = v6;
  v30[0] = v6;
  v27 = 0;
  v28 = 0;
  v29 = 0;
  v31 = v30;
  std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&v27, Count);
  v7 = v28;
  bzero(v28, 8 * Count);
  v28 = &v7[8 * Count];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v25[14] = v8;
  v25[13] = v8;
  v25[12] = v8;
  v25[11] = v8;
  v25[10] = v8;
  v25[9] = v8;
  v25[8] = v8;
  v25[7] = v8;
  v25[6] = v8;
  v25[5] = v8;
  v25[4] = v8;
  v25[3] = v8;
  v25[2] = v8;
  v25[1] = v8;
  v25[0] = v8;
  values = 0;
  v23 = 0;
  v24 = 0;
  v26 = v25;
  std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&values, Count);
  v9 = v23;
  bzero(v23, 8 * Count);
  v23 = &v9[8 * Count];
  explicit = atomic_load_explicit(&v15, memory_order_acquire);
  CFDictionaryGetKeysAndValues(explicit, v27, values);
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[14] = v11;
  v20[13] = v11;
  v20[12] = v11;
  v20[11] = v11;
  v20[10] = v11;
  v20[9] = v11;
  v20[8] = v11;
  v20[7] = v11;
  v20[6] = v11;
  v20[4] = v11;
  v20[5] = v11;
  v20[2] = v11;
  v20[3] = v11;
  v20[0] = v11;
  v20[1] = v11;
  v18 = 0;
  v19 = 0;
  keys = 0;
  v21 = v20;
  std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&keys, Count);
  v12 = v18;
  bzero(v18, 8 * Count);
  v18 = &v12[8 * Count];
  if (Count >= 1)
  {
    for (i = 0; i != Count; ++i)
    {
      if (i >= (v28 - v27) >> 3 || (v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:FourCharCodeFromString(*(v27 + i))], i >= (v18 - keys) >> 3))
      {
        __break(1u);
      }

      keys[i] = v14;
    }
  }

  *a2 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, Count, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  p_keys = &keys;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&p_keys);
  keys = &values;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&keys);
  values = &v27;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&values);
LABEL_11:
}

void TDescriptor::TDescriptor(TDescriptor *this, __CFString *a2, double a3, int a4)
{
  *this = &unk_1EF257E00;
  *(this + 1) = 0;
  *(this + 4) = a4 & 0x7FFFFFFF;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a2)
  {
    CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSFontNameAttribute", a2);
    v9 = TDescriptorSource::TextStyleForUIFontName(a2, v7, v8);
    if (v9)
    {
      CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontUIUsageAttribute", v9);
    }
  }

  if (a3 > 0.0)
  {
    TCFNumber::TCFNumber<double>(&v10, a3);
    CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSFontSizeAttribute", atomic_load_explicit(&v10, memory_order_acquire));
  }
}

unint64_t CTFontDescriptorCreateForUIType(TDescriptorSource *a1, const __CFString *a2, double a3)
{
  TDescriptorSource::TDescriptorSource(&v8);
  TDescriptorSource::CreateDescriptorForUIType(a1, a3, a2, &v9);
  v6 = atomic_exchange(&v9, 0);

  return v6;
}

CTFontRef CTFontCreateUIFontForLanguage(CTFontUIFontType uiType, CGFloat size, CFStringRef language)
{
  v3 = CTFontDescriptorCreateForUIType(*&uiType, language, size);
  v4 = v3;
  if (v3)
  {
    v5 = CTFontCreateWithFontDescriptor(v3, 0.0, 0);
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

void TDescriptorSource::CreateDescriptorForUIType(TDescriptorSource *a1@<X1>, double a2@<D0>, const __CFString *a3@<X2>, void *a4@<X8>)
{
  v7 = a1;
  v24[1] = *MEMORY[0x1E69E9840];
  v20 = a2;
  if (a1 == -1 || a1 < 0x145 || (a1 - 1007) > 0xFFFFFFF8) && (v18 = 0, v19 = 0xAAAAAAAAFFFFFFFFLL, v16 = 0, v17 = 0.0, (SetDescriptorInfoForUIType(&v16, a1)))
  {
    v9 = v18;
    if (v18)
    {
      v23 = @"NSCTFontTextStylePlatformAttribute";
      v24[0] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v19];
      TDescriptorSource::CreateDescriptorForTextStyle(v9, @"UICTContentSizeCategoryL", a3, [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1], a4);
    }

    else
    {
      if (v7 <= 1)
      {
        v10 = 20;
      }

      else
      {
        v10 = 1028;
      }

      v15 = v10;
      if (a3)
      {
        v11 = v17;
        if (a2 != 0.0)
        {
          v11 = a2;
        }

        v22[0] = v16;
        v21[0] = @"NSFontNameAttribute";
        v21[1] = @"NSFontSizeAttribute";
        v12 = [MEMORY[0x1E696AD98] numberWithDouble:v11];
        v21[2] = @"CTFontDescriptorLanguageAttribute";
        v22[1] = v12;
        v22[2] = a3;
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v22 forKeys:v21 count:3];
        TCFBase_NEW<CTFontDescriptor,__CFDictionary const*&,unsigned int &>(&v14, &v15, a4);
      }

      else
      {
        if (a2 == 0.0)
        {
          v13 = &v17;
        }

        else
        {
          v13 = &v20;
        }

        TCFBase_NEW<CTFontDescriptor,__CFString const*&,double &,unsigned int &>(&v16, v13, &v15, a4);
      }
    }
  }

  else
  {
    *a4 = 0;
  }
}

uint64_t TDescriptorSource::TextStyleForUIFontName(TDescriptorSource *this, const __CFString *a2, uint64_t *a3)
{
  var18.isa = 0xAAAAAAAAAAAAAAAALL;
  if (!TDescriptorSource::StashIndexForFontName(this, &var18, a3))
  {
    return 0;
  }

  if (qword_1ED5674F0 != -1)
  {
    dispatch_once(&qword_1ED5674F0, &__block_literal_global_2825);
  }

  v3 = qword_1ED5674E8;
  v4 = [MEMORY[0x1E696AD98] numberWithLong:var18.isa];

  return [v3 objectForKeyedSubscript:v4];
}

id ___Z31FontNameForStashIndexDictionaryv_block_invoke()
{
  v2[267] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1EF27A098;
  v1[1] = &unk_1EF27A0B0;
  v2[0] = @"UICTFontTextStyleHeadline";
  v2[1] = @"UICTFontTextStyleItalicHeadline";
  v1[2] = &unk_1EF278280;
  v1[3] = &unk_1EF278298;
  v2[2] = @"UICTFontTextStyleShortHeadline";
  v2[3] = @"UICTFontTextStyleShortItalicHeadline";
  v1[4] = &unk_1EF27A0C8;
  v1[5] = &unk_1EF27A0E0;
  v2[4] = @"UICTFontTextStyleHeadline2";
  v2[5] = @"UICTFontTextStyleItalicHeadline2";
  v1[6] = &unk_1EF27A0F8;
  v1[7] = &unk_1EF27A110;
  v2[6] = @"UICTFontTextStyleShortHeadline2";
  v2[7] = @"UICTFontTextStyleShortItalicHeadline2";
  v1[8] = &unk_1EF27A128;
  v1[9] = &unk_1EF27A140;
  v2[8] = @"UICTFontTextStyleEmphasizedBody";
  v2[9] = @"UICTFontTextStyleBody";
  v1[10] = &unk_1EF27A158;
  v1[11] = &unk_1EF27A170;
  v2[10] = @"UICTFontTextStyleEmphasizedItalicBody";
  v2[11] = @"UICTFontTextStyleItalicBody";
  v1[12] = &unk_1EF27A188;
  v1[13] = &unk_1EF27A1A0;
  v2[12] = @"UICTFontTextStyleShortEmphasizedBody";
  v2[13] = @"UICTFontTextStyleShortBody";
  v1[14] = &unk_1EF27A1B8;
  v1[15] = &unk_1EF27A1D0;
  v2[14] = @"UICTFontTextStyleShortEmphasizedItalicBody";
  v2[15] = @"UICTFontTextStyleShortItalicBody";
  v1[16] = &unk_1EF27A1E8;
  v1[17] = &unk_1EF27A200;
  v2[16] = @"UICTFontTextStyleTallEmphasizedBody";
  v2[17] = @"UICTFontTextStyleTallBody";
  v1[18] = &unk_1EF27A218;
  v1[19] = &unk_1EF27A230;
  v2[18] = @"UICTFontTextStyleTallEmphasizedItalicBody";
  v2[19] = @"UICTFontTextStyleTallItalicBody";
  v1[20] = &unk_1EF27A248;
  v1[21] = &unk_1EF27A260;
  v2[20] = @"UICTFontTextStyleEmphasizedSubhead";
  v2[21] = @"UICTFontTextStyleSubhead";
  v1[22] = &unk_1EF27A278;
  v1[23] = &unk_1EF27A290;
  v2[22] = @"UICTFontTextStyleItalicSubhead";
  v2[23] = @"UICTFontTextStyleShortEmphasizedSubhead";
  v1[24] = &unk_1EF27A2A8;
  v1[25] = &unk_1EF27A2C0;
  v2[24] = @"UICTFontTextStyleShortSubhead";
  v2[25] = @"UICTFontTextStyleShortItalicSubhead";
  v1[26] = &unk_1EF27A2D8;
  v1[27] = &unk_1EF278370;
  v2[26] = @"UICTFontTextStyleEmphasizedSubhead2";
  v2[27] = @"UICTFontTextStyleSubhead2";
  v1[28] = &unk_1EF27A2F0;
  v1[29] = &unk_1EF27A308;
  v2[28] = @"UICTFontTextStyleItalicSubhead2";
  v2[29] = @"UICTFontTextStyleShortEmphasizedSubhead2";
  v1[30] = &unk_1EF27A320;
  v1[31] = &unk_1EF27A338;
  v2[30] = @"UICTFontTextStyleShortSubhead2";
  v2[31] = @"UICTFontTextStyleShortItalicSubhead2";
  v1[32] = &unk_1EF27A350;
  v1[33] = &unk_1EF27A368;
  v2[32] = @"UICTFontTextStyleEmphasizedFootnote";
  v2[33] = @"UICTFontTextStyleFootnote";
  v1[34] = &unk_1EF27A380;
  v1[35] = &unk_1EF27A398;
  v2[34] = @"UICTFontTextStyleItalicFootnote";
  v2[35] = @"UICTFontTextStyleShortEmphasizedFootnote";
  v1[36] = &unk_1EF27A3B0;
  v1[37] = &unk_1EF27A3C8;
  v2[36] = @"UICTFontTextStyleShortFootnote";
  v2[37] = @"UICTFontTextStyleShortItalicFootnote";
  v1[38] = &unk_1EF27A3E0;
  v1[39] = &unk_1EF27A3F8;
  v2[38] = @"UICTFontTextStyleEmphasizedCaption1";
  v2[39] = @"UICTFontTextStyleCaption1";
  v1[40] = &unk_1EF27A410;
  v1[41] = &unk_1EF27A428;
  v2[40] = @"UICTFontTextStyleItalicCaption1";
  v2[41] = @"UICTFontTextStyleShortEmphasizedCaption1";
  v1[42] = &unk_1EF27A440;
  v1[43] = &unk_1EF27A458;
  v2[42] = @"UICTFontTextStyleShortCaption1";
  v2[43] = @"UICTFontTextStyleShortItalicCaption1";
  v1[44] = &unk_1EF27A470;
  v1[45] = &unk_1EF27A488;
  v2[44] = @"UICTFontTextStyleEmphasizedCaption2";
  v2[45] = @"UICTFontTextStyleCaption2";
  v1[46] = &unk_1EF27A4A0;
  v1[47] = &unk_1EF27A4B8;
  v2[46] = @"UICTFontTextStyleItalicCaption2";
  v2[47] = @"UICTFontTextStyleCallout";
  v1[48] = &unk_1EF27A4D0;
  v1[49] = &unk_1EF27A4E8;
  v2[48] = @"UICTFontTextStyleItalicCallout";
  v2[49] = @"UICTFontTextStyleEmphasizedCallout";
  v1[50] = &unk_1EF27A500;
  v1[51] = &unk_1EF27A518;
  v2[50] = @"UICTFontTextStyleEmphasizedItalicCallout";
  v2[51] = @"UICTFontTextStyleShortCallout";
  v1[52] = &unk_1EF278388;
  v1[53] = &unk_1EF27A530;
  v2[52] = @"UICTFontTextStyleShortItalicCallout";
  v2[53] = @"UICTFontTextStyleShortEmphasizedCallout";
  v1[54] = &unk_1EF27A548;
  v1[55] = &unk_1EF2782B0;
  v2[54] = @"UICTFontTextStyleShortEmphasizedItalicCallout";
  v2[55] = @"UICTFontTextStyleTallCallout";
  v1[56] = &unk_1EF2782C8;
  v1[57] = &unk_1EF2783A0;
  v2[56] = @"UICTFontTextStyleTallItalicCallout";
  v2[57] = @"UICTFontTextStyleTallEmphasizedCallout";
  v1[58] = &unk_1EF2783B8;
  v1[59] = &unk_1EF2783D0;
  v2[58] = @"UICTFontTextStyleTallEmphasizedItalicCallout";
  v2[59] = @"UICTFontTextStyleEmphasizedFootnote2";
  v1[60] = &unk_1EF2783E8;
  v1[61] = &unk_1EF278400;
  v2[60] = @"UICTFontTextStyleFootnote2";
  v2[61] = @"UICTFontTextStyleItalicFootnote2";
  v1[62] = &unk_1EF278418;
  v1[63] = &unk_1EF278430;
  v2[62] = @"UICTFontTextStyleShortEmphasizedFootnote2";
  v2[63] = @"UICTFontTextStyleShortFootnote2";
  v1[64] = &unk_1EF278448;
  v2[64] = @"UICTFontTextStyleShortItalicFootnote2";
  v1[65] = &unk_1EF278460;
  v2[65] = @"UICTFontTextStyleShortEmphasizedCaption2";
  v1[66] = &unk_1EF278478;
  v2[66] = @"UICTFontTextStyleShortCaption2";
  v1[67] = &unk_1EF278490;
  v2[67] = @"UICTFontTextStyleShortItalicCaption2";
  v1[68] = &unk_1EF278C58;
  v2[68] = @"CTFontEmphasizedUsage";
  v1[69] = &unk_1EF278C70;
  v2[69] = @"CTFontRegularUsage";
  v1[70] = &unk_1EF278C88;
  v2[70] = @"CTFontObliqueUsage";
  v1[71] = &unk_1EF278CA0;
  v2[71] = @"CTFontEmphasizedObliqueUsage";
  v1[72] = &unk_1EF278CB8;
  v2[72] = @"CTFontThinUsage";
  v1[73] = &unk_1EF278CD0;
  v2[73] = @"CTFontLightUsage";
  v1[74] = &unk_1EF278CE8;
  v2[74] = @"CTFontUltraLightUsage";
  v1[75] = &unk_1EF278D00;
  v2[75] = @"CTFontMediumUsage";
  v1[76] = &unk_1EF278D18;
  v2[76] = @"CTFontDemiUsage";
  v1[77] = &unk_1EF278D30;
  v2[77] = @"CTFontBoldUsage";
  v1[78] = &unk_1EF278D48;
  v2[78] = @"CTFontHeavyUsage";
  v1[79] = &unk_1EF278D60;
  v2[79] = @"CTFontBlackUsage";
  v1[80] = &unk_1EF278F10;
  v2[80] = @"CTFontSystemUICoreRegular";
  v1[81] = &unk_1EF278EF8;
  v2[81] = @"CTFontSystemUICoreBold";
  v1[82] = &unk_1EF278FD0;
  v2[82] = @"CTFontSystemUICoreBold";
  v1[83] = &unk_1EF278F58;
  v2[83] = @"CTFontSystemUICoreThin";
  v1[84] = &unk_1EF278F70;
  v2[84] = @"CTFontSystemUICoreLight";
  v1[85] = &unk_1EF278F88;
  v2[85] = @"CTFontSystemUICoreUltraLight";
  v1[86] = &unk_1EF278FA0;
  v2[86] = @"CTFontSystemUICoreMedium";
  v1[87] = &unk_1EF278FB8;
  v2[87] = @"CTFontSystemUICoreSemiBold";
  v1[88] = &unk_1EF278FE8;
  v2[88] = @"CTFontSystemUICoreHeavy";
  v1[89] = &unk_1EF279000;
  v2[89] = @"CTFontSystemUICoreBlack";
  v1[90] = &unk_1EF278F28;
  v2[90] = @"CTFontSystemUICoreItalic";
  v1[91] = &unk_1EF278F40;
  v2[91] = @"CTFontSystemUICoreBoldItalic";
  v1[92] = &unk_1EF279018;
  v2[92] = @"CTFontSystemUICoreThinItalic";
  v1[93] = &unk_1EF279030;
  v2[93] = @"CTFontSystemUICoreLightItalic";
  v1[94] = &unk_1EF279048;
  v2[94] = @"CTFontSystemUICoreUltraLightItalic";
  v1[95] = &unk_1EF279060;
  v2[95] = @"CTFontSystemUICoreMediumItalic";
  v1[96] = &unk_1EF279078;
  v2[96] = @"CTFontSystemUICoreSemiBoldItalic";
  v1[97] = &unk_1EF2790A8;
  v2[97] = @"CTFontSystemUICoreHeavyItalic";
  v1[98] = &unk_1EF2790C0;
  v2[98] = @"CTFontSystemUICoreBlackItalic";
  v1[99] = &unk_1EF279BB8;
  v2[99] = @"CTFontSystemUIAlternateRegular";
  v1[100] = &unk_1EF279BA0;
  v2[100] = @"CTFontSystemUIAlternateBold";
  v1[101] = &unk_1EF278D78;
  v2[101] = @"CTFontSystemUIAlternateThin";
  v1[102] = &unk_1EF278D90;
  v2[102] = @"CTFontSystemUIAlternateLight";
  v1[103] = &unk_1EF278DA8;
  v2[103] = @"CTFontSystemUIAlternateUltraLight";
  v1[104] = &unk_1EF278DC0;
  v2[104] = @"CTFontSystemUIAlternateMedium";
  v1[105] = &unk_1EF278DD8;
  v2[105] = @"CTFontSystemUIAlternateSemiBold";
  v1[106] = &unk_1EF278E08;
  v2[106] = @"CTFontSystemUIAlternateHeavy";
  v1[107] = &unk_1EF278E20;
  v2[107] = @"CTFontSystemUIAlternateBlack";
  v1[108] = &unk_1EF279BD0;
  v2[108] = @"CTFontSystemUIAlternateItalic";
  v1[109] = &unk_1EF279BE8;
  v2[109] = @"CTFontSystemUIAlternateBoldItalic";
  v1[110] = &unk_1EF278E38;
  v2[110] = @"CTFontSystemUIAlternateThinItalic";
  v1[111] = &unk_1EF278E50;
  v2[111] = @"CTFontSystemUIAlternateLightItalic";
  v1[112] = &unk_1EF278E68;
  v2[112] = @"CTFontSystemUIAlternateUltraLightItalic";
  v1[113] = &unk_1EF278E80;
  v2[113] = @"CTFontSystemUIAlternateMediumItalic";
  v1[114] = &unk_1EF278E98;
  v2[114] = @"CTFontSystemUIAlternateSemiBoldItalic";
  v1[115] = &unk_1EF278EC8;
  v2[115] = @"CTFontSystemUIAlternateHeavyItalic";
  v1[116] = &unk_1EF278EE0;
  v2[116] = @"CTFontSystemUIAlternateBlackItalic";
  v1[117] = &unk_1EF2789A0;
  v2[117] = @"UICTFontTextStyleCaption3";
  v1[118] = &unk_1EF2789B8;
  v2[118] = @"UICTFontTextStyleEmphasizedCaption3";
  v1[119] = &unk_1EF279330;
  v2[119] = @"CTFontThinItalicUsage";
  v1[120] = &unk_1EF279348;
  v2[120] = @"CTFontLightItalicUsage";
  v1[121] = &unk_1EF279360;
  v2[121] = @"CTFontUltraLightItalicUsage";
  v1[122] = &unk_1EF279378;
  v2[122] = @"CTFontMediumItalicUsage";
  v1[123] = &unk_1EF279390;
  v2[123] = @"CTFontDemiItalicUsage";
  v1[124] = &unk_1EF2793A8;
  v2[124] = @"CTFontBoldItalicUsage";
  v1[125] = &unk_1EF2793C0;
  v2[125] = @"CTFontHeavyItalicUsage";
  v1[138] = &unk_1EF2791B0;
  v1[137] = &unk_1EF279198;
  v2[137] = @"CTFontSystemUIRoundedBlack";
  v1[136] = &unk_1EF279180;
  v2[136] = @"CTFontSystemUIRoundedHeavy";
  v1[135] = &unk_1EF279168;
  v2[135] = @"CTFontSystemUIRoundedBold";
  v1[134] = &unk_1EF279150;
  v2[134] = @"CTFontSystemUIRoundedSemibold";
  v1[133] = &unk_1EF279138;
  v2[133] = @"CTFontSystemUIRoundedMedium";
  v1[132] = &unk_1EF279120;
  v2[132] = @"CTFontSystemUIRoundedRegular";
  v1[131] = &unk_1EF279108;
  v2[131] = @"CTFontSystemUIRoundedLight";
  v1[130] = &unk_1EF2790F0;
  v2[130] = @"CTFontSystemUIRoundedThin";
  v1[129] = &unk_1EF2790D8;
  v2[129] = @"CTFontSystemUIRoundedUltralight";
  v2[128] = @"CTFontTextStyleThin";
  v2[127] = @"CTFontTextStyleUltraLight";
  v1[128] = &unk_1EF279B88;
  v2[126] = @"CTFontBlackItalicUsage";
  v1[127] = &unk_1EF2793F0;
  v1[126] = &unk_1EF2793D8;
  v2[138] = @"CTFontSystemUICompactRoundedUltralight";
  v1[139] = &unk_1EF2791C8;
  v2[139] = @"CTFontSystemUICompactRoundedThin";
  v1[140] = &unk_1EF2791E0;
  v2[140] = @"CTFontSystemUICompactRoundedLight";
  v1[141] = &unk_1EF2791F8;
  v2[141] = @"CTFontSystemUICompactRoundedRegular";
  v1[142] = &unk_1EF279210;
  v2[142] = @"CTFontSystemUICompactRoundedMedium";
  v1[143] = &unk_1EF279228;
  v2[143] = @"CTFontSystemUICompactRoundedSemibold";
  v1[144] = &unk_1EF279240;
  v2[144] = @"CTFontSystemUICompactRoundedBold";
  v1[145] = &unk_1EF279258;
  v2[145] = @"CTFontSystemUICompactRoundedHeavy";
  v1[146] = &unk_1EF279270;
  v2[146] = @"CTFontSystemUICompactRoundedBlack";
  v1[147] = &unk_1EF2784A8;
  v2[147] = @"UICTFontTextStyleTitle1";
  v1[148] = &unk_1EF2782E0;
  v2[148] = @"UICTFontTextStyleItalicTitle1";
  v1[149] = &unk_1EF2782F8;
  v2[149] = @"UICTFontTextStyleEmphasizedTitle1";
  v1[150] = &unk_1EF278310;
  v2[150] = @"UICTFontTextStyleEmphasizedItalicTitle1";
  v1[151] = &unk_1EF278328;
  v2[151] = @"UICTFontTextStyleShortTitle1";
  v1[152] = &unk_1EF278340;
  v2[152] = @"UICTFontTextStyleShortItalicTitle1";
  v1[153] = &unk_1EF278358;
  v2[153] = @"UICTFontTextStyleShortEmphasizedTitle1";
  v1[154] = &unk_1EF2784C0;
  v2[154] = @"UICTFontTextStyleShortEmphasizedItalicTitle1";
  v1[155] = &unk_1EF2784D8;
  v2[155] = @"UICTFontTextStyleTallTitle1";
  v1[156] = &unk_1EF2784F0;
  v2[156] = @"UICTFontTextStyleTallItalicTitle1";
  v1[157] = &unk_1EF278508;
  v2[157] = @"UICTFontTextStyleTallEmphasizedTitle1";
  v1[158] = &unk_1EF278520;
  v2[158] = @"UICTFontTextStyleTallEmphasizedItalicTitle1";
  v1[159] = &unk_1EF278538;
  v2[159] = @"UICTFontTextStyleTitle2";
  v1[160] = &unk_1EF278550;
  v2[160] = @"UICTFontTextStyleItalicTitle2";
  v1[161] = &unk_1EF278568;
  v2[161] = @"UICTFontTextStyleEmphasizedTitle2";
  v1[162] = &unk_1EF278580;
  v2[162] = @"UICTFontTextStyleEmphasizedItalicTitle2";
  v1[163] = &unk_1EF278598;
  v2[163] = @"UICTFontTextStyleShortTitle2";
  v1[164] = &unk_1EF2785B0;
  v2[164] = @"UICTFontTextStyleShortItalicTitle2";
  v1[165] = &unk_1EF2785C8;
  v2[165] = @"UICTFontTextStyleShortEmphasizedTitle2";
  v1[166] = &unk_1EF2785E0;
  v2[166] = @"UICTFontTextStyleShortEmphasizedItalicTitle2";
  v1[167] = &unk_1EF2785F8;
  v2[167] = @"UICTFontTextStyleTallTitle2";
  v1[168] = &unk_1EF278610;
  v2[168] = @"UICTFontTextStyleTallItalicTitle2";
  v1[169] = &unk_1EF278628;
  v2[169] = @"UICTFontTextStyleTallEmphasizedTitle2";
  v1[170] = &unk_1EF278640;
  v2[170] = @"UICTFontTextStyleTallEmphasizedItalicTitle2";
  v1[171] = &unk_1EF278658;
  v2[171] = @"UICTFontTextStyleTitle3";
  v1[172] = &unk_1EF278670;
  v2[172] = @"UICTFontTextStyleItalicTitle3";
  v1[173] = &unk_1EF278688;
  v2[173] = @"UICTFontTextStyleEmphasizedTitle3";
  v1[174] = &unk_1EF2786A0;
  v2[174] = @"UICTFontTextStyleEmphasizedItalicTitle3";
  v1[175] = &unk_1EF2786B8;
  v2[175] = @"UICTFontTextStyleShortTitle3";
  v1[176] = &unk_1EF2786D0;
  v2[176] = @"UICTFontTextStyleShortItalicTitle3";
  v1[177] = &unk_1EF2786E8;
  v2[177] = @"UICTFontTextStyleShortEmphasizedTitle3";
  v1[178] = &unk_1EF278700;
  v2[178] = @"UICTFontTextStyleShortEmphasizedItalicTitle3";
  v1[179] = &unk_1EF278718;
  v2[179] = @"UICTFontTextStyleTallTitle3";
  v1[180] = &unk_1EF278730;
  v2[180] = @"UICTFontTextStyleTallItalicTitle3";
  v1[181] = &unk_1EF278748;
  v2[181] = @"UICTFontTextStyleTallEmphasizedTitle3";
  v1[182] = &unk_1EF278760;
  v2[182] = @"UICTFontTextStyleTallEmphasizedItalicTitle3";
  v1[183] = &unk_1EF278778;
  v2[183] = @"UICTFontTextStyleSubtitle3";
  v1[184] = &unk_1EF278790;
  v2[184] = @"UICTFontTextStyleSubtitle2";
  v1[185] = &unk_1EF2787A8;
  v2[185] = @"UICTFontTextStyleSubtitle1";
  v1[186] = &unk_1EF2787C0;
  v2[186] = @"UICTFontTextStyleSection1";
  v1[187] = &unk_1EF2787D8;
  v2[187] = @"UICTFontTextStyleSection2";
  v1[188] = &unk_1EF2787F0;
  v2[188] = @"UICTFontTextStyleSection3";
  v1[189] = &unk_1EF278808;
  v2[189] = @"UICTFontTextStyleTitle4";
  v1[190] = &unk_1EF278820;
  v2[190] = @"UICTFontTextStyleHeadline3";
  v1[191] = &unk_1EF278838;
  v2[191] = @"UICTFontTextStyleItalicSubtitle1";
  v1[192] = &unk_1EF278850;
  v2[192] = @"UICTFontTextStyleEmphasizedSubtitle1";
  v1[193] = &unk_1EF278868;
  v2[193] = @"UICTFontTextStyleEmphasizedItalicSubtitle1";
  v1[194] = &unk_1EF278880;
  v2[194] = @"UICTFontTextStyleTitle0";
  v1[195] = &unk_1EF278898;
  v2[195] = @"UICTFontTextStyleEmphasizedTitle0";
  v1[196] = &unk_1EF2788B0;
  v2[196] = @"UICTFontTextStyleShortTitle0";
  v1[197] = &unk_1EF2788C8;
  v2[197] = @"UICTFontTextStyleShortEmphasizedTitle0";
  v1[198] = &unk_1EF2788E0;
  v2[198] = @"UICTFontTextStyleTallTitle0";
  v1[199] = &unk_1EF2788F8;
  v2[199] = @"UICTFontTextStyleTallEmphasizedTitle0";
  v1[200] = &unk_1EF278910;
  v2[200] = @"UICTFontTextStyleEmphasizedHeadline";
  v1[201] = &unk_1EF278928;
  v2[201] = @"UICTFontTextStyleEmphasizedItalicHeadline";
  v1[202] = &unk_1EF278940;
  v2[202] = @"UICTFontTextStyleShortEmphasizedHeadline";
  v1[203] = &unk_1EF278958;
  v2[203] = @"UICTFontTextStyleShortEmphasizedItalicHeadline";
  v1[204] = &unk_1EF278970;
  v2[204] = @"UICTFontTextStyleTallHeadline";
  v1[205] = &unk_1EF278988;
  v2[205] = @"UICTFontTextStyleTallEmphasizedHeadline";
  v1[206] = &unk_1EF279540;
  v2[206] = @"CTFontSystemUISerifRegular";
  v1[207] = &unk_1EF279558;
  v2[207] = @"CTFontSystemUISerifMedium";
  v1[208] = &unk_1EF279570;
  v2[208] = @"CTFontSystemUISerifSemibold";
  v1[209] = &unk_1EF279588;
  v2[209] = @"CTFontSystemUISerifBold";
  v1[210] = &unk_1EF2795A0;
  v2[210] = @"CTFontSystemUISerifHeavy";
  v1[211] = &unk_1EF2795B8;
  v2[211] = @"CTFontSystemUISerifBlack";
  v1[212] = &unk_1EF2795D0;
  v2[212] = @"CTFontSystemUISerifItalic";
  v1[213] = &unk_1EF2795E8;
  v2[213] = @"CTFontSystemUISerifMediumItalic";
  v1[214] = &unk_1EF279600;
  v2[214] = @"CTFontSystemUISerifSemiboldItalic";
  v1[215] = &unk_1EF279618;
  v2[215] = @"CTFontSystemUISerifBoldItalic";
  v1[216] = &unk_1EF279630;
  v2[216] = @"CTFontSystemUISerifHeavyItalic";
  v1[217] = &unk_1EF279300;
  v2[217] = @"CTFontSystemUISerifBlackItalic";
  v1[218] = &unk_1EF279318;
  v2[218] = @"CTFontSystemUIMonospacedLight";
  v1[219] = &unk_1EF279648;
  v2[219] = @"CTFontSystemUIMonospacedRegular";
  v1[220] = &unk_1EF279660;
  v2[220] = @"CTFontSystemUIMonospacedMedium";
  v1[221] = &unk_1EF279678;
  v2[221] = @"CTFontSystemUIMonospacedSemibold";
  v1[222] = &unk_1EF279690;
  v2[222] = @"CTFontSystemUIMonospacedBold";
  v1[223] = &unk_1EF2796A8;
  v2[223] = @"CTFontSystemUIMonospacedHeavy";
  v1[224] = &unk_1EF2796C0;
  v2[224] = @"CTFontSystemUIMonospacedLightItalic";
  v1[225] = &unk_1EF2796D8;
  v2[225] = @"CTFontSystemUIMonospacedRegularItalic";
  v1[226] = &unk_1EF2796F0;
  v2[226] = @"CTFontSystemUIMonospacedMediumItalic";
  v1[227] = &unk_1EF279708;
  v2[227] = @"CTFontSystemUIMonospacedSemiboldItalic";
  v1[228] = &unk_1EF279720;
  v2[228] = @"CTFontSystemUIMonospacedBoldItalic";
  v1[229] = &unk_1EF279738;
  v2[229] = @"CTFontSystemUIMonospacedHeavyItalic";
  v1[230] = &unk_1EF279288;
  v2[230] = @"CTFontSystemUICondensedRegular";
  v1[231] = &unk_1EF2792A0;
  v2[231] = @"CTFontSystemUICondensedBold";
  v1[232] = &unk_1EF2792B8;
  v2[232] = @"CTFontSystemUICondensedThin";
  v1[233] = &unk_1EF2792D0;
  v2[233] = @"CTFontSystemUICondensedLight";
  v1[234] = &unk_1EF2792E8;
  v2[234] = @"CTFontSystemUICondensedUltraLight";
  v1[235] = &unk_1EF279408;
  v2[235] = @"CTFontSystemUICondensedMedium";
  v1[236] = &unk_1EF279420;
  v2[236] = @"CTFontSystemUICondensedSemiBold";
  v1[237] = &unk_1EF279438;
  v2[237] = @"CTFontSystemUICondensedHeavy";
  v1[238] = &unk_1EF279450;
  v2[238] = @"CTFontSystemUICondensedBlack";
  v1[239] = &unk_1EF279468;
  v2[239] = @"CTFontSystemUICoreCondensedRegular";
  v1[240] = &unk_1EF279480;
  v2[240] = @"CTFontSystemUICoreCondensedBold";
  v1[241] = &unk_1EF279498;
  v2[241] = @"CTFontSystemUICoreCondensedThin";
  v1[242] = &unk_1EF2794B0;
  v2[242] = @"CTFontSystemUICoreCondensedLight";
  v1[243] = &unk_1EF2794C8;
  v2[243] = @"CTFontSystemUICoreCondensedUltraLight";
  v1[244] = &unk_1EF2794E0;
  v2[244] = @"CTFontSystemUICoreCondensedMedium";
  v1[245] = &unk_1EF2794F8;
  v2[245] = @"CTFontSystemUICoreCondensedSemiBold";
  v1[246] = &unk_1EF279510;
  v2[246] = @"CTFontSystemUICoreCondensedHeavy";
  v1[247] = &unk_1EF279528;
  v2[247] = @"CTFontSystemUICoreCondensedBlack";
  v1[248] = &unk_1EF278A30;
  v2[248] = @"UICTFontTextStyleEmphasizedItalicCaption1";
  v1[249] = &unk_1EF278A48;
  v2[249] = @"UICTFontTextStyleShortEmphasizedItalicCaption1";
  v1[250] = &unk_1EF278A60;
  v2[250] = @"UICTFontTextStyleTallCaption1";
  v1[251] = &unk_1EF278A78;
  v2[251] = @"UICTFontTextStyleTallItalicCaption1";
  v1[252] = &unk_1EF278A90;
  v2[252] = @"UICTFontTextStyleTallEmphasizedCaption1";
  v1[253] = &unk_1EF278AA8;
  v2[253] = @"UICTFontTextStyleTallEmphasizedItalicCaption1";
  v1[254] = &unk_1EF278AC0;
  v2[254] = @"UICTFontTextStyleEmphasizedItalicCaption2";
  v1[255] = &unk_1EF278AD8;
  v2[255] = @"UICTFontTextStyleShortEmphasizedItalicCaption2";
  v1[256] = &unk_1EF278AF0;
  v2[256] = @"UICTFontTextStyleTallCaption2";
  v1[257] = &unk_1EF278B08;
  v2[257] = @"UICTFontTextStyleTallItalicCaption2";
  v1[258] = &unk_1EF278B20;
  v2[258] = @"UICTFontTextStyleTallEmphasizedCaption2";
  v1[259] = &unk_1EF278B38;
  v2[259] = @"UICTFontTextStyleTallEmphasizedItalicCaption2";
  v1[260] = &unk_1EF278BE0;
  v2[260] = @"UICTFontTextStyleCondensedHeadline";
  v1[261] = &unk_1EF278BF8;
  v2[261] = @"UICTFontTextStyleCondensedTitle1";
  v1[262] = &unk_1EF278C10;
  v2[262] = @"UICTFontTextStyleCondensedTitle2";
  v1[263] = &unk_1EF278C28;
  v2[263] = @"UICTFontTextStyleCondensedTitle3";
  v1[264] = &unk_1EF278C40;
  v2[264] = @"UICTFontTextStyleCondensedBody";
  v1[265] = &unk_1EF278BB0;
  v2[265] = @"UICTFontTextStylePreferredSizeRegular";
  v1[266] = &unk_1EF278BC8;
  v2[266] = @"UICTFontTextStylePreferredSizeBold";
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:267];
  qword_1ED5674E8 = result;
  return result;
}

void TDescriptor::CreateMatchingDescriptor(TDescriptor *this@<X0>, const __CFSet *a2@<X1>, double a3@<D0>, uint64_t a4@<X2>, atomic_ullong *a5@<X8>)
{
  v5 = a4;
  v10 = *(this + 4) | a4 & 0x10485;
  v39 = v10;
  if (qword_1ED5679B0 != -1)
  {
    dispatch_once_f(&qword_1ED5679B0, 0, TDescriptor::GetSystemUIFontOptions(void)::$_0::__invoke);
  }

  if ((_MergedGlobals_13 & v10) == 0)
  {
    atomic_load_explicit(this + 1, memory_order_acquire);
    explicit = atomic_load_explicit(this + 1, memory_order_acquire);
    if (explicit)
    {
      if (CFDictionaryGetValue(explicit, @"NSCTFontUIUsageAttribute"))
      {
        v39 |= 0x404u;
      }
    }
  }

  atomic_load_explicit(this + 1, memory_order_acquire);
  v11 = atomic_load_explicit(this + 1, memory_order_acquire);
  if (v11)
  {
    Value = CFDictionaryGetValue(v11, @"NSCTFontEnabledAttribute");
    if (Value)
    {
      v13 = Value;
      LODWORD(v34) = 0;
      v14 = CFGetTypeID(Value);
      if (v14 == CFNumberGetTypeID() || v14 == CFBooleanGetTypeID())
      {
        CFNumberGetValue(v13, kCFNumberIntType, &v34);
        IntValue = v34;
      }

      else if (v14 == CFStringGetTypeID())
      {
        IntValue = CFStringGetIntValue(v13);
      }

      else
      {
        IntValue = 0;
      }

      v5 = (IntValue != 0) | v5;
    }
  }

  if (a2)
  {
    TDescriptor::CreateMatchingDescriptorInternal(a5, this, a2, v5);
    return;
  }

  valuePtr = 0.0;
  atomic_load_explicit(this + 1, memory_order_acquire);
  v17 = atomic_load_explicit(this + 1, memory_order_acquire);
  if (v17)
  {
    v18 = CFDictionaryGetValue(v17, @"NSFontSizeAttribute");
    if (v18)
    {
      v19 = v18;
      v20 = CFGetTypeID(v18);
      if (v20 == CFNumberGetTypeID() || v20 == CFBooleanGetTypeID())
      {
        CFNumberGetValue(v19, kCFNumberDoubleType, &valuePtr);
      }

      else if (v20 == CFStringGetTypeID())
      {
        valuePtr = CFStringGetDoubleValue(v19);
      }
    }
  }

  v21 = *(this + 4);
  v37 = v21;
  if (!v21 || (*(*v21 + 848))(v21))
  {
    v22 = v39;
    if (a3 >= 0.0 && valuePtr != a3 || v39 != *(this + 4))
    {
      goto LABEL_30;
    }

    atomic_load_explicit(this + 1, memory_order_acquire);
    v23 = atomic_load_explicit(this + 1, memory_order_acquire);
    if (v23)
    {
      v24 = CFDictionaryGetValue(v23, @"NSCTFontVariationAttribute");
      if (v24)
      {
        if (CFDictionaryGetCount(v24) >= 1)
        {
          v22 = v39;
LABEL_30:
          *&v25 = 0xAAAAAAAAAAAAAAAALL;
          *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v35 = v25;
          *v36 = v25;
          v34 = v25;
          Attributes = TDescriptor::GetAttributes(this, 1);
          TDescriptor::TDescriptor(&v34, Attributes, v22);
          if ((v35 & 0x80000000) == 0)
          {
            TDescriptor::InitBaseFont(&v34, v5, a3);
          }

          v27 = atomic_load_explicit(v36, memory_order_acquire);
          v37 = v27;
          if (v27)
          {
            atomic_fetch_add_explicit(v27 + 2, 1u, memory_order_relaxed);
          }

          v39 |= v35 & 0x8404;
          TDescriptor::~TDescriptor(&v34);
          goto LABEL_56;
        }
      }
    }
  }

  if ((*(this + 4) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(this, v5, 0.0);
  }

  v28 = atomic_load_explicit(this + 4, memory_order_acquire);
  v37 = v28;
  if (!v39)
  {
    if (v28 && (*(*v28 + 16))(v28) == 1414809156)
    {
      v39 = 1028;
    }

    else
    {
      atomic_load_explicit(this + 1, memory_order_acquire);
      v29 = atomic_load_explicit(this + 1, memory_order_acquire);
      if (v29)
      {
        v29 = CFDictionaryGetValue(v29, @"NSCTFontTraitsAttribute");
        if (v29)
        {
          v30 = v29;
          v31 = CFGetTypeID(v29);
          if (v31 == CFDictionaryGetTypeID())
          {
            v29 = v30;
          }

          else
          {
            v29 = 0;
          }
        }
      }

      v32 = v29;
      v33 = v32;
      if (v32 && CFDictionaryContainsKey(v32, @"NSCTFontUIFontDesignTrait"))
      {
        v39 |= 0x404u;
      }
    }
  }

  if ((*(this + 4) & 0x8000) != 0)
  {
    v27 = 0;
    v39 |= 0x8000u;
  }

  else
  {
    v27 = 0;
  }

LABEL_56:
  if (v37)
  {
    TCFBase_NEW<CTFontDescriptor,TBaseFont const*&,unsigned int &>(&v37, &v39, a5);
    if (!v27)
    {
      return;
    }
  }

  else
  {
    *a5 = 0;
    if (!v27)
    {
      return;
    }
  }

  if (atomic_fetch_add_explicit(v27 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v27 + 8))(v27);
  }
}

CTFontRef CTFontCreateWithFontDescriptor(CTFontDescriptorRef descriptor, CGFloat size, const CGAffineTransform *matrix)
{
  v11 = descriptor;
  v10 = size;
  v9 = matrix;
  if (!descriptor)
  {
    return 0;
  }

  v3 = *(descriptor + 5);
  v8 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptor::CreateMatchingDescriptor(v3, 0, size, 0, &v8);
  explicit = atomic_load_explicit(&v8, memory_order_acquire);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  TCFBase_NEW<CTFont,__CTFontDescriptor const*,double &,CGAffineTransform const*&,__CTFontDescriptor const*&>(&explicit, &v10, &v9, &v11, &v7);
  v4 = atomic_exchange(&v7, 0);

  return v4;
}

__CFString *weightString(int a1)
{
  if ((a1 - 2) > 7)
  {
    return @"w1";
  }

  else
  {
    return off_1E6E3DB98[a1 - 2];
  }
}

void *TCFNumber::TCFNumber<double>(void *a1, double a2)
{
  valuePtr = a2;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberDoubleType, &valuePtr);
  *a1 = atomic_exchange(&v4, 0);

  return a1;
}

void *TRunGlue::SetAdvance(void *this, int64_t a2, CGSize a3)
{
  height = a3.height;
  width = a3.width;
  v6 = this;
  if (this[18])
  {
    TRunGlue::FocusOnIndex(this, a2);
    v7 = a2 - v6[19];
    v8 = (v6[18] + 192);
    v9 = width;
    v10 = height;

    return TStorageRange::SetAdvance(v8, v7, *&v9);
  }

  else
  {
    *(this[22] + 16 * this[19] + 16 * a2) = a3;
  }

  return this;
}

double TRunGlue::GetAdvance(TRunGlue *this, int64_t a2)
{
  if (*(this + 18))
  {
    TRunGlue::FocusOnIndex(this, a2);
    v4 = *(this + 18);
    v5 = a2 - *(this + 19);
    v6 = *(v4 + 216);
    v7 = *(v6 + 32);
    if (v7 || (v10 = *(v6 + 24)) == 0)
    {
      v8 = v7 + 16 * *(v4 + 200) + 16 * v5;
    }

    else
    {
      v8 = v10 + 8 * *(v4 + 200) + 8 * v5;
    }
  }

  else
  {
    v8 = *(this + 22) + 16 * *(this + 19) + 16 * a2;
  }

  return *v8;
}

id ___Z28UITypeForTextStyleDictionaryv_block_invoke()
{
  v2[282] = *MEMORY[0x1E69E9840];
  v1[0] = @"CTFontRegularUsage";
  v1[1] = @"CTFontEmphasizedUsage";
  v2[0] = &unk_1EF278280;
  v2[1] = &unk_1EF278298;
  v1[2] = @"UICTFontTextStyleHeadline1";
  v1[3] = @"UICTFontTextStyleShortHeadline1";
  v2[2] = &unk_1EF2782B0;
  v2[3] = &unk_1EF2782C8;
  v1[4] = @"UICTFontTextStyleEmphasizedSubhead1";
  v1[5] = @"UICTFontTextStyleSubhead1";
  v2[4] = &unk_1EF2782E0;
  v2[5] = &unk_1EF2782F8;
  v1[6] = @"UICTFontTextStyleItalicSubhead1";
  v1[7] = @"UICTFontTextStyleShortEmphasizedSubhead1";
  v2[6] = &unk_1EF278310;
  v2[7] = &unk_1EF278328;
  v1[8] = @"UICTFontTextStyleShortSubhead1";
  v1[9] = @"UICTFontTextStyleShortItalicSubhead1";
  v2[8] = &unk_1EF278340;
  v2[9] = &unk_1EF278358;
  v1[10] = @"CTFontObliqueUsage";
  v1[11] = @"CTFontEmphasizedObliqueUsage";
  v2[10] = &unk_1EF278370;
  v2[11] = &unk_1EF278388;
  v1[12] = @"UICTFontTextStyleHeadline";
  v1[13] = @"UICTFontTextStyleShortHeadline";
  v2[12] = &unk_1EF2782B0;
  v2[13] = &unk_1EF2782C8;
  v1[14] = @"UICTFontTextStyleHeadline2";
  v1[15] = @"UICTFontTextStyleItalicHeadline2";
  v2[14] = &unk_1EF2783A0;
  v2[15] = &unk_1EF2783B8;
  v1[16] = @"UICTFontTextStyleShortHeadline2";
  v1[17] = @"UICTFontTextStyleShortItalicHeadline2";
  v2[16] = &unk_1EF2783D0;
  v2[17] = &unk_1EF2783E8;
  v1[18] = @"UICTFontTextStyleEmphasizedBody";
  v1[19] = @"UICTFontTextStyleBody";
  v2[18] = &unk_1EF278400;
  v2[19] = &unk_1EF278418;
  v1[20] = @"UICTFontTextStyleEmphasizedItalicBody";
  v1[21] = @"UICTFontTextStyleItalicBody";
  v2[20] = &unk_1EF278430;
  v2[21] = &unk_1EF278448;
  v1[22] = @"UICTFontTextStyleShortEmphasizedBody";
  v1[23] = @"UICTFontTextStyleShortBody";
  v2[22] = &unk_1EF278460;
  v2[23] = &unk_1EF278478;
  v1[24] = @"UICTFontTextStyleShortEmphasizedItalicBody";
  v1[25] = @"UICTFontTextStyleShortItalicBody";
  v2[24] = &unk_1EF278490;
  v2[25] = &unk_1EF2784A8;
  v1[26] = @"UICTFontTextStyleEmphasizedSubhead";
  v1[27] = @"UICTFontTextStyleSubhead";
  v2[26] = &unk_1EF2782E0;
  v2[27] = &unk_1EF2782F8;
  v1[28] = @"UICTFontTextStyleItalicSubhead";
  v1[29] = @"UICTFontTextStyleShortEmphasizedSubhead";
  v2[28] = &unk_1EF278310;
  v2[29] = &unk_1EF278328;
  v1[30] = @"UICTFontTextStyleShortSubhead";
  v1[31] = @"UICTFontTextStyleShortItalicSubhead";
  v2[30] = &unk_1EF278340;
  v2[31] = &unk_1EF278358;
  v1[32] = @"UICTFontTextStyleEmphasizedSubhead2";
  v1[33] = @"UICTFontTextStyleSubhead2";
  v2[32] = &unk_1EF2784C0;
  v2[33] = &unk_1EF2784D8;
  v1[34] = @"UICTFontTextStyleItalicSubhead2";
  v1[35] = @"UICTFontTextStyleShortEmphasizedSubhead2";
  v2[34] = &unk_1EF2784F0;
  v2[35] = &unk_1EF278508;
  v1[36] = @"UICTFontTextStyleShortSubhead2";
  v1[37] = @"UICTFontTextStyleShortItalicSubhead2";
  v2[36] = &unk_1EF278520;
  v2[37] = &unk_1EF278538;
  v1[38] = @"UICTFontTextStyleEmphasizedFootnote";
  v1[39] = @"UICTFontTextStyleFootnote";
  v2[38] = &unk_1EF278550;
  v2[39] = &unk_1EF278568;
  v1[40] = @"UICTFontTextStyleItalicFootnote";
  v1[41] = @"UICTFontTextStyleShortEmphasizedFootnote";
  v2[40] = &unk_1EF278580;
  v2[41] = &unk_1EF278598;
  v1[42] = @"UICTFontTextStyleShortFootnote";
  v1[43] = @"UICTFontTextStyleShortItalicFootnote";
  v2[42] = &unk_1EF2785B0;
  v2[43] = &unk_1EF2785C8;
  v1[44] = @"UICTFontTextStyleEmphasizedCaption1";
  v1[45] = @"UICTFontTextStyleCaption1";
  v2[44] = &unk_1EF2785E0;
  v2[45] = &unk_1EF2785F8;
  v1[46] = @"UICTFontTextStyleItalicCaption1";
  v1[47] = @"UICTFontTextStyleShortEmphasizedCaption1";
  v2[46] = &unk_1EF278610;
  v2[47] = &unk_1EF278628;
  v1[48] = @"UICTFontTextStyleShortCaption1";
  v1[49] = @"UICTFontTextStyleShortItalicCaption1";
  v2[48] = &unk_1EF278640;
  v2[49] = &unk_1EF278658;
  v1[50] = @"UICTFontTextStyleEmphasizedCaption2";
  v1[51] = @"UICTFontTextStyleCaption2";
  v2[50] = &unk_1EF278670;
  v2[51] = &unk_1EF278688;
  v1[52] = @"UICTFontTextStyleItalicCaption2";
  v1[53] = @"UICTFontTextStyleTallEmphasizedBody";
  v2[52] = &unk_1EF2786A0;
  v2[53] = &unk_1EF2786B8;
  v1[54] = @"UICTFontTextStyleTallBody";
  v1[55] = @"UICTFontTextStyleTallEmphasizedItalicBody";
  v2[54] = &unk_1EF2786D0;
  v2[55] = &unk_1EF2786E8;
  v1[56] = @"UICTFontTextStyleTallItalicBody";
  v1[57] = @"UICTFontTextStyleItalicHeadline";
  v2[56] = &unk_1EF278700;
  v2[57] = &unk_1EF278718;
  v1[58] = @"UICTFontTextStyleShortItalicHeadline";
  v1[59] = @"CTFontThinUsage";
  v2[58] = &unk_1EF278730;
  v2[59] = &unk_1EF278748;
  v1[60] = @"CTFontLightUsage";
  v1[61] = @"CTFontUltraLightUsage";
  v2[60] = &unk_1EF278760;
  v2[61] = &unk_1EF278778;
  v1[62] = @"CTFontMediumUsage";
  v1[63] = @"CTFontDemiUsage";
  v2[62] = &unk_1EF278790;
  v2[63] = &unk_1EF2787A8;
  v1[64] = @"CTFontBoldUsage";
  v2[64] = &unk_1EF2787C0;
  v1[65] = @"CTFontHeavyUsage";
  v2[65] = &unk_1EF2787D8;
  v1[66] = @"CTFontBlackUsage";
  v2[66] = &unk_1EF2787F0;
  v1[67] = @"UICTFontTextStyleCallout";
  v2[67] = &unk_1EF278808;
  v1[68] = @"UICTFontTextStyleItalicCallout";
  v2[68] = &unk_1EF278820;
  v1[69] = @"UICTFontTextStyleEmphasizedCallout";
  v2[69] = &unk_1EF278838;
  v1[70] = @"UICTFontTextStyleEmphasizedItalicCallout";
  v2[70] = &unk_1EF278850;
  v1[71] = @"UICTFontTextStyleShortCallout";
  v2[71] = &unk_1EF278868;
  v1[72] = @"UICTFontTextStyleShortItalicCallout";
  v2[72] = &unk_1EF278880;
  v1[73] = @"UICTFontTextStyleShortEmphasizedCallout";
  v2[73] = &unk_1EF278898;
  v1[74] = @"UICTFontTextStyleShortEmphasizedItalicCallout";
  v2[74] = &unk_1EF2788B0;
  v1[75] = @"UICTFontTextStyleTallCallout";
  v2[75] = &unk_1EF2788C8;
  v1[76] = @"UICTFontTextStyleTallItalicCallout";
  v2[76] = &unk_1EF2788E0;
  v1[77] = @"UICTFontTextStyleTallEmphasizedCallout";
  v2[77] = &unk_1EF2788F8;
  v1[78] = @"UICTFontTextStyleTallEmphasizedItalicCallout";
  v2[78] = &unk_1EF278910;
  v1[79] = @"UICTFontTextStyleEmphasizedFootnote2";
  v2[79] = &unk_1EF278928;
  v1[80] = @"UICTFontTextStyleFootnote2";
  v2[80] = &unk_1EF278940;
  v1[81] = @"UICTFontTextStyleItalicFootnote2";
  v2[81] = &unk_1EF278958;
  v1[82] = @"UICTFontTextStyleShortEmphasizedFootnote2";
  v2[82] = &unk_1EF278970;
  v1[83] = @"UICTFontTextStyleShortFootnote2";
  v2[83] = &unk_1EF278988;
  v1[84] = @"UICTFontTextStyleShortItalicFootnote2";
  v2[84] = &unk_1EF2789A0;
  v1[85] = @"UICTFontTextStyleShortEmphasizedCaption2";
  v2[85] = &unk_1EF2789B8;
  v1[86] = @"UICTFontTextStyleShortCaption2";
  v2[86] = &unk_1EF2789D0;
  v1[87] = @"UICTFontTextStyleShortItalicCaption2";
  v2[87] = &unk_1EF2789E8;
  v1[88] = @"CTFontThinItalicUsage";
  v2[88] = &unk_1EF278A00;
  v1[89] = @"CTFontLightItalicUsage";
  v2[89] = &unk_1EF278A18;
  v1[90] = @"CTFontUltraLightItalicUsage";
  v2[90] = &unk_1EF278A30;
  v1[91] = @"CTFontMediumItalicUsage";
  v2[91] = &unk_1EF278A48;
  v1[92] = @"CTFontDemiItalicUsage";
  v2[92] = &unk_1EF278A60;
  v1[93] = @"CTFontBoldItalicUsage";
  v2[93] = &unk_1EF278A78;
  v1[94] = @"CTFontHeavyItalicUsage";
  v2[94] = &unk_1EF278A90;
  v1[95] = @"CTFontBlackItalicUsage";
  v2[95] = &unk_1EF278AA8;
  v1[96] = @"CTFontTextStyleUltraLight";
  v2[96] = &unk_1EF278AC0;
  v1[97] = @"CTFontTextStyleThin";
  v2[97] = &unk_1EF278AD8;
  v1[98] = @"CTFontSystemUIAlternateRegular";
  v2[98] = &unk_1EF278AF0;
  v1[99] = @"CTFontSystemUIAlternateBold";
  v2[99] = &unk_1EF278B08;
  v1[100] = @"CTFontSystemUIAlternateThin";
  v2[100] = &unk_1EF278B20;
  v1[101] = @"CTFontSystemUIAlternateLight";
  v2[101] = &unk_1EF278B38;
  v1[102] = @"CTFontSystemUIAlternateUltraLight";
  v2[102] = &unk_1EF278B50;
  v1[103] = @"CTFontSystemUIAlternateMedium";
  v2[103] = &unk_1EF278B68;
  v1[104] = @"CTFontSystemUIAlternateSemiBold";
  v2[104] = &unk_1EF278B80;
  v1[105] = @"CTFontSystemUIAlternateHeavy";
  v2[105] = &unk_1EF278B98;
  v1[106] = @"CTFontSystemUIAlternateBlack";
  v2[106] = &unk_1EF278BB0;
  v1[107] = @"CTFontSystemUIAlternateItalic";
  v2[107] = &unk_1EF278BC8;
  v1[108] = @"CTFontSystemUIAlternateBoldItalic";
  v2[108] = &unk_1EF278BE0;
  v1[109] = @"CTFontSystemUIAlternateThinItalic";
  v2[109] = &unk_1EF278BF8;
  v1[110] = @"CTFontSystemUIAlternateLightItalic";
  v2[110] = &unk_1EF278C10;
  v1[111] = @"CTFontSystemUIAlternateUltraLightItalic";
  v2[111] = &unk_1EF278C28;
  v1[112] = @"CTFontSystemUIAlternateMediumItalic";
  v2[112] = &unk_1EF278C40;
  v1[113] = @"CTFontSystemUIAlternateSemiBoldItalic";
  v2[113] = &unk_1EF278C58;
  v1[114] = @"CTFontSystemUIAlternateHeavyItalic";
  v2[114] = &unk_1EF278C70;
  v1[115] = @"CTFontSystemUIAlternateBlackItalic";
  v2[115] = &unk_1EF278C88;
  v1[116] = @"CTFontSystemUIRoundedUltralight";
  v2[116] = &unk_1EF278CA0;
  v1[117] = @"CTFontSystemUIRoundedThin";
  v2[117] = &unk_1EF278CB8;
  v1[118] = @"CTFontSystemUIRoundedLight";
  v2[118] = &unk_1EF278CD0;
  v1[119] = @"CTFontSystemUIRoundedRegular";
  v2[119] = &unk_1EF278CE8;
  v1[120] = @"CTFontSystemUIRoundedMedium";
  v2[120] = &unk_1EF278D00;
  v1[121] = @"CTFontSystemUIRoundedSemibold";
  v2[121] = &unk_1EF278D18;
  v1[122] = @"CTFontSystemUIRoundedBold";
  v2[122] = &unk_1EF278D30;
  v1[123] = @"CTFontSystemUIRoundedHeavy";
  v2[123] = &unk_1EF278D48;
  v1[124] = @"CTFontSystemUIRoundedBlack";
  v2[124] = &unk_1EF278D60;
  v2[152] = &unk_1EF279000;
  v1[153] = @"UICTFontTextStyleShortTitle3";
  v2[151] = &unk_1EF278FE8;
  v1[152] = @"UICTFontTextStyleEmphasizedItalicTitle3";
  v2[150] = &unk_1EF278FD0;
  v1[151] = @"UICTFontTextStyleEmphasizedTitle3";
  v1[125] = @"UICTFontTextStyleTitle1";
  v1[150] = @"UICTFontTextStyleItalicTitle3";
  v2[125] = &unk_1EF278D78;
  v1[149] = @"UICTFontTextStyleTitle3";
  v2[149] = &unk_1EF278FB8;
  v1[148] = @"UICTFontTextStyleTallEmphasizedItalicTitle2";
  v2[148] = &unk_1EF278FA0;
  v1[147] = @"UICTFontTextStyleTallEmphasizedTitle2";
  v2[147] = &unk_1EF278F88;
  v1[146] = @"UICTFontTextStyleTallItalicTitle2";
  v2[146] = &unk_1EF278F70;
  v1[145] = @"UICTFontTextStyleTallTitle2";
  v2[145] = &unk_1EF278F58;
  v1[144] = @"UICTFontTextStyleShortEmphasizedItalicTitle2";
  v2[144] = &unk_1EF278F40;
  v1[143] = @"UICTFontTextStyleShortEmphasizedTitle2";
  v2[143] = &unk_1EF278F28;
  v1[142] = @"UICTFontTextStyleShortItalicTitle2";
  v2[142] = &unk_1EF278F10;
  v1[141] = @"UICTFontTextStyleShortTitle2";
  v2[141] = &unk_1EF278EF8;
  v1[140] = @"UICTFontTextStyleEmphasizedItalicTitle2";
  v2[140] = &unk_1EF278EE0;
  v1[139] = @"UICTFontTextStyleEmphasizedTitle2";
  v2[139] = &unk_1EF278EC8;
  v1[138] = @"UICTFontTextStyleItalicTitle2";
  v2[138] = &unk_1EF278EB0;
  v1[126] = @"UICTFontTextStyleItalicTitle1";
  v2[137] = &unk_1EF278E98;
  v2[126] = &unk_1EF278D90;
  v2[136] = &unk_1EF278E80;
  v1[137] = @"UICTFontTextStyleTitle2";
  v2[135] = &unk_1EF278E68;
  v1[136] = @"UICTFontTextStyleTallEmphasizedItalicTitle1";
  v2[134] = &unk_1EF278E50;
  v1[135] = @"UICTFontTextStyleTallEmphasizedTitle1";
  v2[133] = &unk_1EF278E38;
  v1[134] = @"UICTFontTextStyleTallItalicTitle1";
  v2[132] = &unk_1EF278E20;
  v1[133] = @"UICTFontTextStyleTallTitle1";
  v2[131] = &unk_1EF278E08;
  v1[132] = @"UICTFontTextStyleShortEmphasizedItalicTitle1";
  v2[130] = &unk_1EF278DF0;
  v1[131] = @"UICTFontTextStyleShortEmphasizedTitle1";
  v2[129] = &unk_1EF278DD8;
  v1[130] = @"UICTFontTextStyleShortItalicTitle1";
  v2[128] = &unk_1EF278DC0;
  v1[129] = @"UICTFontTextStyleShortTitle1";
  v2[127] = &unk_1EF278DA8;
  v1[128] = @"UICTFontTextStyleEmphasizedItalicTitle1";
  v1[127] = @"UICTFontTextStyleEmphasizedTitle1";
  v2[153] = &unk_1EF279018;
  v1[154] = @"UICTFontTextStyleShortItalicTitle3";
  v2[154] = &unk_1EF279030;
  v1[155] = @"UICTFontTextStyleShortEmphasizedTitle3";
  v2[155] = &unk_1EF279048;
  v1[156] = @"UICTFontTextStyleShortEmphasizedItalicTitle3";
  v2[156] = &unk_1EF279060;
  v1[157] = @"UICTFontTextStyleTallTitle3";
  v2[157] = &unk_1EF279078;
  v1[158] = @"UICTFontTextStyleTallItalicTitle3";
  v2[158] = &unk_1EF279090;
  v1[159] = @"UICTFontTextStyleTallEmphasizedTitle3";
  v2[159] = &unk_1EF2790A8;
  v1[160] = @"UICTFontTextStyleTallEmphasizedItalicTitle3";
  v2[160] = &unk_1EF2790C0;
  v1[161] = @"UICTFontTextStyleSubtitle3";
  v2[161] = &unk_1EF2790D8;
  v1[162] = @"UICTFontTextStyleSubtitle2";
  v2[162] = &unk_1EF2790F0;
  v1[163] = @"UICTFontTextStyleSubtitle1";
  v2[163] = &unk_1EF279108;
  v1[164] = @"UICTFontTextStyleSection1";
  v2[164] = &unk_1EF279120;
  v1[165] = @"UICTFontTextStyleSection2";
  v2[165] = &unk_1EF279138;
  v1[166] = @"UICTFontTextStyleSection3";
  v2[166] = &unk_1EF279150;
  v1[167] = @"UICTFontTextStyleTitle4";
  v2[167] = &unk_1EF279168;
  v1[168] = @"UICTFontTextStyleHeadline3";
  v2[168] = &unk_1EF279180;
  v1[169] = @"UICTFontTextStyleItalicSubtitle1";
  v2[169] = &unk_1EF279198;
  v1[170] = @"UICTFontTextStyleEmphasizedSubtitle1";
  v2[170] = &unk_1EF2791B0;
  v1[171] = @"UICTFontTextStyleEmphasizedItalicSubtitle1";
  v2[171] = &unk_1EF2791C8;
  v1[172] = @"UICTFontTextStyleTitle0";
  v2[172] = &unk_1EF2791E0;
  v1[173] = @"UICTFontTextStyleEmphasizedTitle0";
  v2[173] = &unk_1EF2791F8;
  v1[174] = @"UICTFontTextStyleShortTitle0";
  v2[174] = &unk_1EF279210;
  v1[175] = @"UICTFontTextStyleShortEmphasizedTitle0";
  v2[175] = &unk_1EF279228;
  v1[176] = @"UICTFontTextStyleTallTitle0";
  v2[176] = &unk_1EF279240;
  v1[177] = @"UICTFontTextStyleTallEmphasizedTitle0";
  v2[177] = &unk_1EF279258;
  v1[178] = @"UICTFontTextStyleEmphasizedHeadline";
  v2[178] = &unk_1EF279270;
  v1[179] = @"UICTFontTextStyleEmphasizedItalicHeadline";
  v2[179] = &unk_1EF279288;
  v1[180] = @"UICTFontTextStyleShortEmphasizedHeadline";
  v2[180] = &unk_1EF2792A0;
  v1[181] = @"UICTFontTextStyleShortEmphasizedItalicHeadline";
  v2[181] = &unk_1EF2792B8;
  v1[182] = @"UICTFontTextStyleTallHeadline";
  v2[182] = &unk_1EF2792D0;
  v1[183] = @"UICTFontTextStyleTallEmphasizedHeadline";
  v2[183] = &unk_1EF2792E8;
  v1[184] = @"UICTFontTextStyleCaption3";
  v2[184] = &unk_1EF279300;
  v1[185] = @"UICTFontTextStyleEmphasizedCaption3";
  v2[185] = &unk_1EF279318;
  v1[186] = @"CTFontSystemUICondensedRegular";
  v2[186] = &unk_1EF279330;
  v1[187] = @"CTFontSystemUICondensedBold";
  v2[187] = &unk_1EF279348;
  v1[188] = @"CTFontSystemUICondensedThin";
  v2[188] = &unk_1EF279360;
  v1[189] = @"CTFontSystemUICondensedLight";
  v2[189] = &unk_1EF279378;
  v1[190] = @"CTFontSystemUICondensedUltraLight";
  v2[190] = &unk_1EF279390;
  v1[191] = @"CTFontSystemUICondensedMedium";
  v2[191] = &unk_1EF2793A8;
  v1[192] = @"CTFontSystemUICondensedSemiBold";
  v2[192] = &unk_1EF2793C0;
  v1[193] = @"CTFontSystemUICondensedHeavy";
  v2[193] = &unk_1EF2793D8;
  v1[194] = @"CTFontSystemUICondensedBlack";
  v2[194] = &unk_1EF2793F0;
  v1[195] = @"CTFontSystemUISerifRegular";
  v2[195] = &unk_1EF279408;
  v1[196] = @"CTFontSystemUISerifMedium";
  v2[196] = &unk_1EF279420;
  v1[197] = @"CTFontSystemUISerifSemibold";
  v2[197] = &unk_1EF279438;
  v1[198] = @"CTFontSystemUISerifBold";
  v2[198] = &unk_1EF279450;
  v1[199] = @"CTFontSystemUISerifHeavy";
  v2[199] = &unk_1EF279468;
  v1[200] = @"CTFontSystemUISerifBlack";
  v2[200] = &unk_1EF279480;
  v1[201] = @"CTFontSystemUISerifItalic";
  v2[201] = &unk_1EF279498;
  v1[202] = @"CTFontSystemUISerifMediumItalic";
  v2[202] = &unk_1EF2794B0;
  v1[203] = @"CTFontSystemUISerifSemiboldItalic";
  v2[203] = &unk_1EF2794C8;
  v1[204] = @"CTFontSystemUISerifBoldItalic";
  v2[204] = &unk_1EF2794E0;
  v1[205] = @"CTFontSystemUISerifHeavyItalic";
  v2[205] = &unk_1EF2794F8;
  v1[206] = @"CTFontSystemUISerifBlackItalic";
  v2[206] = &unk_1EF279510;
  v1[207] = @"CTFontSystemUIMonospacedLight";
  v2[207] = &unk_1EF279528;
  v1[208] = @"CTFontSystemUIMonospacedRegular";
  v2[208] = &unk_1EF279540;
  v1[209] = @"CTFontSystemUIMonospacedMedium";
  v2[209] = &unk_1EF279558;
  v1[210] = @"CTFontSystemUIMonospacedSemibold";
  v2[210] = &unk_1EF279570;
  v1[211] = @"CTFontSystemUIMonospacedBold";
  v2[211] = &unk_1EF279588;
  v1[212] = @"CTFontSystemUIMonospacedHeavy";
  v2[212] = &unk_1EF2795A0;
  v1[213] = @"CTFontSystemUIMonospacedLightItalic";
  v2[213] = &unk_1EF2795B8;
  v1[214] = @"CTFontSystemUIMonospacedRegularItalic";
  v2[214] = &unk_1EF2795D0;
  v1[215] = @"CTFontSystemUIMonospacedMediumItalic";
  v2[215] = &unk_1EF2795E8;
  v1[216] = @"CTFontSystemUIMonospacedSemiboldItalic";
  v2[216] = &unk_1EF279600;
  v1[217] = @"CTFontSystemUIMonospacedBoldItalic";
  v2[217] = &unk_1EF279618;
  v1[218] = @"CTFontSystemUIMonospacedHeavyItalic";
  v2[218] = &unk_1EF279630;
  v1[219] = @"UICTFontTextStyleExtraLargeTitle";
  v2[219] = &unk_1EF279648;
  v1[220] = @"UICTFontTextStyleEmphasizedExtraLargeTitle";
  v2[220] = &unk_1EF279660;
  v1[221] = @"UICTFontTextStyleExtraLargeTitle2";
  v2[221] = &unk_1EF279678;
  v1[222] = @"UICTFontTextStyleEmphasizedExtraLargeTitle2";
  v2[222] = &unk_1EF279690;
  v1[223] = @"CTFontSystemUICompactRoundedUltralight";
  v2[223] = &unk_1EF2796A8;
  v1[224] = @"CTFontSystemUICompactRoundedThin";
  v2[224] = &unk_1EF2796C0;
  v1[225] = @"CTFontSystemUICompactRoundedLight";
  v2[225] = &unk_1EF2796D8;
  v1[226] = @"CTFontSystemUICompactRoundedRegular";
  v2[226] = &unk_1EF2796F0;
  v1[227] = @"CTFontSystemUICompactRoundedMedium";
  v2[227] = &unk_1EF279708;
  v1[228] = @"CTFontSystemUICompactRoundedSemibold";
  v2[228] = &unk_1EF279720;
  v1[229] = @"CTFontSystemUICompactRoundedBold";
  v2[229] = &unk_1EF279738;
  v1[230] = @"CTFontSystemUICompactRoundedHeavy";
  v2[230] = &unk_1EF279750;
  v1[231] = @"CTFontSystemUICompactRoundedBlack";
  v2[231] = &unk_1EF279768;
  v1[232] = @"CTFontSystemUICoreRegular";
  v2[232] = &unk_1EF279780;
  v1[233] = @"CTFontSystemUICoreBold";
  v2[233] = &unk_1EF279798;
  v1[234] = @"CTFontSystemUICoreThin";
  v2[234] = &unk_1EF2797B0;
  v1[235] = @"CTFontSystemUICoreLight";
  v2[235] = &unk_1EF2797C8;
  v1[236] = @"CTFontSystemUICoreUltraLight";
  v2[236] = &unk_1EF2797E0;
  v1[237] = @"CTFontSystemUICoreMedium";
  v2[237] = &unk_1EF2797F8;
  v1[238] = @"CTFontSystemUICoreSemiBold";
  v2[238] = &unk_1EF279810;
  v1[239] = @"CTFontSystemUICoreHeavy";
  v2[239] = &unk_1EF279828;
  v1[240] = @"CTFontSystemUICoreBlack";
  v2[240] = &unk_1EF279840;
  v1[241] = @"CTFontSystemUICoreItalic";
  v2[241] = &unk_1EF279858;
  v1[242] = @"CTFontSystemUICoreBoldItalic";
  v2[242] = &unk_1EF279870;
  v1[243] = @"CTFontSystemUICoreThinItalic";
  v2[243] = &unk_1EF279888;
  v1[244] = @"CTFontSystemUICoreLightItalic";
  v2[244] = &unk_1EF2798A0;
  v1[245] = @"CTFontSystemUICoreUltraLightItalic";
  v2[245] = &unk_1EF2798B8;
  v1[246] = @"CTFontSystemUICoreMediumItalic";
  v2[246] = &unk_1EF2798D0;
  v1[247] = @"CTFontSystemUICoreSemiBoldItalic";
  v2[247] = &unk_1EF2798E8;
  v1[248] = @"CTFontSystemUICoreHeavyItalic";
  v2[248] = &unk_1EF279900;
  v1[249] = @"CTFontSystemUICoreBlackItalic";
  v2[249] = &unk_1EF279918;
  v1[250] = @"CTFontSystemUICoreCondensedRegular";
  v2[250] = &unk_1EF279930;
  v1[251] = @"CTFontSystemUICoreCondensedBold";
  v2[251] = &unk_1EF279948;
  v1[252] = @"CTFontSystemUICoreCondensedThin";
  v2[252] = &unk_1EF279960;
  v1[253] = @"CTFontSystemUICoreCondensedLight";
  v2[253] = &unk_1EF279978;
  v1[254] = @"CTFontSystemUICoreCondensedUltraLight";
  v2[254] = &unk_1EF279990;
  v1[255] = @"CTFontSystemUICoreCondensedMedium";
  v2[255] = &unk_1EF2799A8;
  v1[256] = @"CTFontSystemUICoreCondensedSemiBold";
  v2[256] = &unk_1EF2799C0;
  v1[257] = @"CTFontSystemUICoreCondensedHeavy";
  v2[257] = &unk_1EF2799D8;
  v1[258] = @"CTFontSystemUICoreCondensedBlack";
  v2[258] = &unk_1EF2799F0;
  v1[259] = @"UICTFontTextStyleEmphasizedItalicCaption1";
  v2[259] = &unk_1EF279A08;
  v1[260] = @"UICTFontTextStyleShortEmphasizedItalicCaption1";
  v2[260] = &unk_1EF279A20;
  v1[261] = @"UICTFontTextStyleTallCaption1";
  v2[261] = &unk_1EF279A38;
  v1[262] = @"UICTFontTextStyleTallItalicCaption1";
  v2[262] = &unk_1EF279A50;
  v1[263] = @"UICTFontTextStyleTallEmphasizedCaption1";
  v2[263] = &unk_1EF279A68;
  v1[264] = @"UICTFontTextStyleTallEmphasizedItalicCaption1";
  v2[264] = &unk_1EF279A80;
  v1[265] = @"UICTFontTextStyleEmphasizedItalicCaption2";
  v2[265] = &unk_1EF279A98;
  v1[266] = @"UICTFontTextStyleShortEmphasizedItalicCaption2";
  v2[266] = &unk_1EF279AB0;
  v1[267] = @"UICTFontTextStyleTallCaption2";
  v2[267] = &unk_1EF279AC8;
  v1[268] = @"UICTFontTextStyleTallItalicCaption2";
  v2[268] = &unk_1EF279AE0;
  v1[269] = @"UICTFontTextStyleTallEmphasizedCaption2";
  v2[269] = &unk_1EF279AF8;
  v1[270] = @"UICTFontTextStyleTallEmphasizedItalicCaption2";
  v2[270] = &unk_1EF279B10;
  v1[271] = @"UICTFontTextStyleItalicExtraLargeTitle";
  v2[271] = &unk_1EF279B28;
  v1[272] = @"UICTFontTextStyleEmphasizedItalicExtraLargeTitle";
  v2[272] = &unk_1EF279B40;
  v1[273] = @"UICTFontTextStyleItalicExtraLargeTitle2";
  v2[273] = &unk_1EF279B58;
  v1[274] = @"UICTFontTextStyleEmphasizedItalicExtraLargeTitle2";
  v2[274] = &unk_1EF279B70;
  v1[275] = @"UICTFontTextStyleCondensedHeadline";
  v2[275] = &unk_1EF279B88;
  v1[276] = @"UICTFontTextStyleCondensedTitle1";
  v2[276] = &unk_1EF279BA0;
  v1[277] = @"UICTFontTextStyleCondensedTitle2";
  v2[277] = &unk_1EF279BB8;
  v1[278] = @"UICTFontTextStyleCondensedTitle3";
  v2[278] = &unk_1EF279BD0;
  v1[279] = @"UICTFontTextStyleCondensedBody";
  v2[279] = &unk_1EF279BE8;
  v1[280] = @"UICTFontTextStylePreferredSizeRegular";
  v2[280] = &unk_1EF279C00;
  v1[281] = @"UICTFontTextStylePreferredSizeBold";
  v2[281] = &unk_1EF279C18;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:282];
  qword_1ED5674A8 = result;
  return result;
}

uint64_t ___Z17IsLinkedOnOrAfter10SDKVersion_block_invoke()
{
  IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter |= 0x1FFuLL;
  v0 = &qword_1847781FC;
  for (i = 108; i; i -= 12)
  {
    result = dyld_program_sdk_at_least();
    if (result)
    {
      break;
    }

    v3 = *(v0 - 1);
    if (v3 >= 9)
    {
      __break(1u);
      return result;
    }

    IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter &= ~(1 << v3);
    v0 = (v0 + 12);
  }

  return result;
}

uint64_t SetDescriptorInfoForUIType(uint64_t a1, TDescriptorSource *this)
{
  if (this <= 999)
  {
    switch(this)
    {
      case 0:
        v3 = @"Helvetica";
        goto LABEL_27;
      case 1:
        v3 = @"Menlo-Regular";
        goto LABEL_25;
      case 4:
      case 17:
      case 21:
      case 24:
      case 25:
        v3 = @".AppleSystemUIFont";
        goto LABEL_4;
      case 5:
        v3 = @".AppleSystemUIFontEmphasized";
LABEL_4:
        v4 = 0x4026000000000000;
        goto LABEL_30;
      case 6:
      case 19:
        v3 = @".AppleSystemUIFont";
        goto LABEL_19;
      case 7:
        v3 = @".AppleSystemUIFontEmphasized";
        goto LABEL_19;
      case 8:
      case 26:
        v3 = @".AppleSystemUIFont";
        goto LABEL_27;
      case 9:
      case 16:
      case 23:
        v3 = @".AppleSystemUIFont";
        goto LABEL_29;
      case 10:
      case 22:
        v3 = @".AppleSystemUIFont";
LABEL_25:
        v4 = 0x4024000000000000;
        goto LABEL_30;
      case 11:
      case 12:
      case 13:
        v3 = @".AppleSystemUIFont";
        goto LABEL_22;
      case 14:
        v3 = @"Helvetica";
        goto LABEL_22;
      case 15:
        *(a1 + 16) = @"UICTFontTextStyleHeadline";
        *(a1 + 24) = 3;
        return 1;
      case 18:
        v3 = @".AppleSystemUIFontBold";
LABEL_29:
        v4 = 0x402A000000000000;
        break;
      case 20:
        v3 = @".AppleSystemUIFontBold";
LABEL_19:
        v4 = 0x4022000000000000;
        break;
      default:
        goto LABEL_33;
    }

    goto LABEL_30;
  }

  if (this <= 1002)
  {
    if (this != 1000)
    {
      v3 = @".AppleSystemUIFontBold";
LABEL_22:
      v4 = 0x402C000000000000;
LABEL_30:
      *a1 = v3;
      *(a1 + 8) = v4;
      return 1;
    }

LABEL_11:
    v3 = @".AppleSystemUIFontBold";
LABEL_27:
    v4 = 0x4028000000000000;
    goto LABEL_30;
  }

  if (this == 1003 || this == 1005 || this == 1006)
  {
    goto LABEL_11;
  }

LABEL_33:
  result = TDescriptorSource::UIFontNameForUIType(this);
  if (result)
  {
    *a1 = result;
    *(a1 + 8) = 0x402A000000000000;
    return 1;
  }

  return result;
}

__CFString *TDescriptorSource::FindFontNameForTextStyle(TDescriptorSource *this, const __CFString *a2, const __CFDictionary *a3, const __CFString **a4, const __CFString **a5, const __CFString **a6)
{
  if (this)
  {
    if (qword_1ED5674B0 != -1)
    {
      dispatch_once(&qword_1ED5674B0, &__block_literal_global_682);
    }

    v11 = [objc_msgSend(qword_1ED5674A8 objectForKeyedSubscript:{this), "unsignedIntValue"}];
    v19.info = 0;
    if (v11)
    {
      v12 = 0;
      if (!a3)
      {
        goto LABEL_18;
      }

LABEL_17:
      *a3 = v12;
      goto LABEL_18;
    }
  }

  else
  {
    v19.info = 0;
  }

  v19.isa = 0;
  IsVariableSizeTextStyleInstance = TDescriptorSource::IsVariableSizeTextStyleInstance(this, &v19, a5, a4);

  if (!IsVariableSizeTextStyleInstance)
  {
    v12 = 0;
    v11 = 0;
    if (!a3)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  explicit = atomic_load_explicit(&v19.info, memory_order_acquire);
  if (explicit)
  {
    if (qword_1ED5674B0 != -1)
    {
      dispatch_once(&qword_1ED5674B0, &__block_literal_global_682);
    }

    v11 = [objc_msgSend(qword_1ED5674A8 objectForKeyedSubscript:{explicit), "unsignedIntValue"}];
    if (a4)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v11 = 0;
    if (a4)
    {
LABEL_13:
      *a4 = atomic_exchange(&v19.info, 0);
    }
  }

  v12 = 1;
  if (a3)
  {
    goto LABEL_17;
  }

LABEL_18:
  if (v11 > 0x144)
  {
    FontNameForNameAndTrait = 0;
  }

  else
  {
    v15 = TDescriptorSource::UIFontNameForUIType(v11);
    FontNameForNameAndTrait = v15;
    if (a2)
    {
      if (v15)
      {
        SymbolicTraitsFromTraits = GetSymbolicTraitsFromTraits(a2);
        if (SymbolicTraitsFromTraits)
        {
          FontNameForNameAndTrait = TDescriptorSource::FindFontNameForNameAndTrait(FontNameForNameAndTrait, 0, SymbolicTraitsFromTraits, SymbolicTraitsFromTraits);
        }
      }
    }
  }

  return FontNameForNameAndTrait;
}

Class TCFBase<TDescriptor>::GetTypeID(void)::{lambda(void *)#1}::__invoke()
{
  TCFBase<TDescriptor>::CreateTypeID();
  v0 = TCFBase<TDescriptor>::fTypeID;

  return _CTFontDescriptorEnableBridging(v0);
}

void GetLocaleChangedCount(void)::$_0::__invoke()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterAddObserver(LocalCenter, 0, HandleLocaleChanged, *MEMORY[0x1E695E6E0], 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();

  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, HandleLocaleChanged, @"com.apple.language.changed", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
}

id ___Z29UIFontNameForUITypeDictionaryv_block_invoke()
{
  v2[274] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1EF278280;
  v1[1] = &unk_1EF278298;
  v2[0] = @".AppleSystemUIFont";
  v2[1] = @".AppleSystemUIFontEmphasized";
  v1[2] = &unk_1EF278370;
  v1[3] = &unk_1EF278388;
  v2[2] = @".AppleSystemUIFontItalic";
  v2[3] = @".AppleSystemUIFontEmphasizedItalic";
  v1[4] = &unk_1EF279300;
  v1[5] = &unk_1EF279318;
  v2[4] = @".AppleSystemUIFaceCaption3";
  v2[5] = @".AppleSystemUIFaceEmphasizedCaption3";
  v1[6] = &unk_1EF2782B0;
  v1[7] = &unk_1EF2782C8;
  v2[6] = @".AppleSystemUIFaceHeadline";
  v2[7] = @".AppleSystemUIFaceShortHeadline";
  v1[8] = &unk_1EF2783A0;
  v1[9] = &unk_1EF2783B8;
  v2[8] = @".AppleSystemUIFaceHeadline2";
  v2[9] = @".AppleSystemUIFaceItalicHeadline2";
  v1[10] = &unk_1EF2783D0;
  v1[11] = &unk_1EF2783E8;
  v2[10] = @".AppleSystemUIFaceShortHeadline2";
  v2[11] = @".AppleSystemUIFaceShortItalicHeadline2";
  v1[12] = &unk_1EF278400;
  v1[13] = &unk_1EF278418;
  v2[12] = @".AppleSystemUIFaceEmphasizedBody";
  v2[13] = @".AppleSystemUIFaceBody";
  v1[14] = &unk_1EF278430;
  v1[15] = &unk_1EF278448;
  v2[14] = @".AppleSystemUIFaceEmphasizedItalicBody";
  v2[15] = @".AppleSystemUIFaceItalicBody";
  v1[16] = &unk_1EF278460;
  v1[17] = &unk_1EF278478;
  v2[16] = @".AppleSystemUIFaceShortEmphasizedBody";
  v2[17] = @".AppleSystemUIFaceShortBody";
  v1[18] = &unk_1EF278490;
  v1[19] = &unk_1EF2784A8;
  v2[18] = @".AppleSystemUIFaceShortEmphasizedItalicBody";
  v2[19] = @".AppleSystemUIFaceShortItalicBody";
  v1[20] = &unk_1EF2782E0;
  v1[21] = &unk_1EF2782F8;
  v2[20] = @".AppleSystemUIFaceEmphasizedSubhead";
  v2[21] = @".AppleSystemUIFaceSubhead";
  v1[22] = &unk_1EF278310;
  v1[23] = &unk_1EF278328;
  v2[22] = @".AppleSystemUIFaceItalicSubhead";
  v2[23] = @".AppleSystemUIFaceShortEmphasizedSubhead";
  v1[24] = &unk_1EF278340;
  v1[25] = &unk_1EF278358;
  v2[24] = @".AppleSystemUIFaceShortSubhead";
  v2[25] = @".AppleSystemUIFaceShortItalicSubhead";
  v1[26] = &unk_1EF2784C0;
  v1[27] = &unk_1EF2784D8;
  v2[26] = @".AppleSystemUIFaceEmphasizedSubhead2";
  v2[27] = @".AppleSystemUIFaceSubhead2";
  v1[28] = &unk_1EF2784F0;
  v1[29] = &unk_1EF278508;
  v2[28] = @".AppleSystemUIFaceItalicSubhead2";
  v2[29] = @".AppleSystemUIFaceShortEmphasizedSubhead2";
  v1[30] = &unk_1EF278520;
  v1[31] = &unk_1EF278538;
  v2[30] = @".AppleSystemUIFaceShortSubhead2";
  v2[31] = @".AppleSystemUIFaceShortItalicSubhead2";
  v1[32] = &unk_1EF278550;
  v1[33] = &unk_1EF278568;
  v2[32] = @".AppleSystemUIFaceEmphasizedFootnote";
  v2[33] = @".AppleSystemUIFaceFootnote";
  v1[34] = &unk_1EF278580;
  v1[35] = &unk_1EF278598;
  v2[34] = @".AppleSystemUIFaceItalicFootnote";
  v2[35] = @".AppleSystemUIFaceShortEmphasizedFootnote";
  v1[36] = &unk_1EF2785B0;
  v1[37] = &unk_1EF2785C8;
  v2[36] = @".AppleSystemUIFaceShortFootnote";
  v2[37] = @".AppleSystemUIFaceShortItalicFootnote";
  v1[38] = &unk_1EF2785E0;
  v1[39] = &unk_1EF2785F8;
  v2[38] = @".AppleSystemUIFaceEmphasizedCaption1";
  v2[39] = @".AppleSystemUIFaceCaption1";
  v1[40] = &unk_1EF278610;
  v1[41] = &unk_1EF278628;
  v2[40] = @".AppleSystemUIFaceItalicCaption1";
  v2[41] = @".AppleSystemUIFaceShortEmphasizedCaption1";
  v1[42] = &unk_1EF278640;
  v1[43] = &unk_1EF278658;
  v2[42] = @".AppleSystemUIFaceShortCaption1";
  v2[43] = @".AppleSystemUIFaceShortItalicCaption1";
  v1[44] = &unk_1EF278670;
  v1[45] = &unk_1EF278688;
  v2[44] = @".AppleSystemUIFaceEmphasizedCaption2";
  v2[45] = @".AppleSystemUIFaceCaption2";
  v1[46] = &unk_1EF2786A0;
  v1[47] = &unk_1EF2786B8;
  v2[46] = @".AppleSystemUIFaceItalicCaption2";
  v2[47] = @".AppleSystemUIFaceTallEmphasizedBody";
  v1[48] = &unk_1EF2786D0;
  v1[49] = &unk_1EF2786E8;
  v2[48] = @".AppleSystemUIFaceTallBody";
  v2[49] = @".AppleSystemUIFaceTallEmphasizedItalicBody";
  v1[50] = &unk_1EF278700;
  v1[51] = &unk_1EF278718;
  v2[50] = @".AppleSystemUIFaceTallItalicBody";
  v2[51] = @".AppleSystemUIFaceItalicHeadline";
  v1[52] = &unk_1EF278730;
  v1[53] = &unk_1EF278748;
  v2[52] = @".AppleSystemUIFaceShortItalicHeadline";
  v2[53] = @".AppleSystemUIFontThin";
  v1[54] = &unk_1EF278760;
  v1[55] = &unk_1EF278778;
  v2[54] = @".AppleSystemUIFontLight";
  v2[55] = @".AppleSystemUIFontUltraLight";
  v1[56] = &unk_1EF278790;
  v1[57] = &unk_1EF2787A8;
  v2[56] = @".AppleSystemUIFontMedium";
  v2[57] = @".AppleSystemUIFontDemi";
  v1[58] = &unk_1EF2787C0;
  v1[59] = &unk_1EF2787D8;
  v2[58] = @".AppleSystemUIFontBold";
  v2[59] = @".AppleSystemUIFontHeavy";
  v1[60] = &unk_1EF2787F0;
  v1[61] = &unk_1EF278808;
  v2[60] = @".AppleSystemUIFontBlack";
  v2[61] = @".AppleSystemUIFaceCallout";
  v1[62] = &unk_1EF278820;
  v1[63] = &unk_1EF278838;
  v2[62] = @".AppleSystemUIFaceItalicCallout";
  v2[63] = @".AppleSystemUIFaceEmphasizedCallout";
  v1[64] = &unk_1EF278850;
  v2[64] = @".AppleSystemUIFaceEmphasizedItalicCallout";
  v1[65] = &unk_1EF278868;
  v2[65] = @".AppleSystemUIFaceShortCallout";
  v1[66] = &unk_1EF278880;
  v2[66] = @".AppleSystemUIFaceShortItalicCallout";
  v1[67] = &unk_1EF278898;
  v2[67] = @".AppleSystemUIFaceShortEmphasizedCallout";
  v1[68] = &unk_1EF2788B0;
  v2[68] = @".AppleSystemUIFaceShortEmphasizedItalicCallout";
  v1[69] = &unk_1EF2788C8;
  v2[69] = @".AppleSystemUIFaceTallCallout";
  v1[70] = &unk_1EF2788E0;
  v2[70] = @".AppleSystemUIFaceTallItalicCallout";
  v1[71] = &unk_1EF2788F8;
  v2[71] = @".AppleSystemUIFaceTallEmphasizedCallout";
  v1[72] = &unk_1EF278910;
  v2[72] = @".AppleSystemUIFaceTallEmphasizedItalicCallout";
  v1[73] = &unk_1EF278928;
  v2[73] = @".AppleSystemUIFaceEmphasizedFootnote2";
  v1[74] = &unk_1EF278940;
  v2[74] = @".AppleSystemUIFaceFootnote2";
  v1[75] = &unk_1EF278958;
  v2[75] = @".AppleSystemUIFaceItalicFootnote2";
  v1[76] = &unk_1EF278970;
  v2[76] = @".AppleSystemUIFaceShortEmphasizedFootnote2";
  v1[77] = &unk_1EF278988;
  v2[77] = @".AppleSystemUIFaceShortFootnote2";
  v1[78] = &unk_1EF2789A0;
  v2[78] = @".AppleSystemUIFaceShortItalicFootnote2";
  v1[79] = &unk_1EF2789B8;
  v2[79] = @".AppleSystemUIFaceShortEmphasizedCaption2";
  v1[80] = &unk_1EF2789D0;
  v2[80] = @".AppleSystemUIFaceShortCaption2";
  v1[81] = &unk_1EF2789E8;
  v2[81] = @".AppleSystemUIFaceShortItalicCaption2";
  v1[82] = &unk_1EF278A00;
  v2[82] = @".AppleSystemUIFontThinItalic";
  v1[83] = &unk_1EF278A18;
  v2[83] = @".AppleSystemUIFontLightItalic";
  v1[84] = &unk_1EF278A30;
  v2[84] = @".AppleSystemUIFontUltraLightItalic";
  v1[85] = &unk_1EF278A48;
  v2[85] = @".AppleSystemUIFontMediumItalic";
  v1[86] = &unk_1EF278A60;
  v2[86] = @".AppleSystemUIFontDemiItalic";
  v1[87] = &unk_1EF278A78;
  v2[87] = @".AppleSystemUIFontBoldItalic";
  v1[88] = &unk_1EF278A90;
  v2[88] = @".AppleSystemUIFontHeavyItalic";
  v1[89] = &unk_1EF278AA8;
  v2[89] = @".AppleSystemUIFontBlackItalic";
  v1[90] = &unk_1EF278AC0;
  v2[90] = @".AppleSystemUIFontUltraLightAlways";
  v1[91] = &unk_1EF278AD8;
  v2[91] = @".AppleSystemUIFontThinAlways";
  v1[92] = &unk_1EF278AF0;
  v2[92] = @".AppleSystemUIFontCompact-Regular";
  v1[93] = &unk_1EF278B08;
  v2[93] = @".AppleSystemUIFontCompact-Bold";
  v1[94] = &unk_1EF278B20;
  v2[94] = @".AppleSystemUIFontCompact-Thin";
  v1[95] = &unk_1EF278B38;
  v2[95] = @".AppleSystemUIFontCompact-Light";
  v1[96] = &unk_1EF278B50;
  v2[96] = @".AppleSystemUIFontCompact-UltraLight";
  v1[97] = &unk_1EF278B68;
  v2[97] = @".AppleSystemUIFontCompact-Medium";
  v1[98] = &unk_1EF278B80;
  v2[98] = @".AppleSystemUIFontCompact-Semibold";
  v1[99] = &unk_1EF278B98;
  v2[99] = @".AppleSystemUIFontCompact-Heavy";
  v1[100] = &unk_1EF278BB0;
  v2[100] = @".AppleSystemUIFontCompact-Black";
  v1[101] = &unk_1EF278BC8;
  v2[101] = @".AppleSystemUIFontCompact-Italic";
  v1[102] = &unk_1EF278BE0;
  v2[102] = @".AppleSystemUIFontCompact-BoldItalic";
  v1[103] = &unk_1EF278BF8;
  v2[103] = @".AppleSystemUIFontCompact-ThinItalic";
  v1[104] = &unk_1EF278C10;
  v2[104] = @".AppleSystemUIFontCompact-LightItalic";
  v1[105] = &unk_1EF278C28;
  v2[105] = @".AppleSystemUIFontCompact-UltraLightItalic";
  v1[106] = &unk_1EF278C40;
  v2[106] = @".AppleSystemUIFontCompact-MediumItalic";
  v1[107] = &unk_1EF278C58;
  v2[107] = @".AppleSystemUIFontCompact-SemiboldItalic";
  v1[108] = &unk_1EF278C70;
  v2[108] = @".AppleSystemUIFontCompact-HeavyItalic";
  v1[109] = &unk_1EF278C88;
  v2[109] = @".AppleSystemUIFontCompact-BlackItalic";
  v1[110] = &unk_1EF278CA0;
  v2[110] = @".AppleSystemUIFontRounded-Ultralight";
  v1[111] = &unk_1EF278CB8;
  v2[111] = @".AppleSystemUIFontRounded-Thin";
  v1[112] = &unk_1EF278CD0;
  v2[112] = @".AppleSystemUIFontRounded-Light";
  v1[113] = &unk_1EF278CE8;
  v2[113] = @".AppleSystemUIFontRounded-Regular";
  v1[114] = &unk_1EF278D00;
  v2[114] = @".AppleSystemUIFontRounded-Medium";
  v1[115] = &unk_1EF278D18;
  v2[115] = @".AppleSystemUIFontRounded-Semibold";
  v1[116] = &unk_1EF278D30;
  v2[116] = @".AppleSystemUIFontRounded-Bold";
  v1[117] = &unk_1EF278D48;
  v2[117] = @".AppleSystemUIFontRounded-Heavy";
  v1[118] = &unk_1EF278D60;
  v2[118] = @".AppleSystemUIFontRounded-Black";
  v1[119] = &unk_1EF278D78;
  v2[119] = @".AppleSystemUIFaceTitle1";
  v1[120] = &unk_1EF278D90;
  v2[120] = @".AppleSystemUIFaceItalicTitle1";
  v1[121] = &unk_1EF278DA8;
  v2[121] = @".AppleSystemUIFaceEmphasizedTitle1";
  v1[122] = &unk_1EF278DC0;
  v2[122] = @".AppleSystemUIFaceEmphasizedItalicTitle1";
  v1[123] = &unk_1EF278DD8;
  v2[123] = @".AppleSystemUIFaceShortTitle1";
  v1[124] = &unk_1EF278DF0;
  v2[124] = @".AppleSystemUIFaceShortItalicTitle1";
  v1[125] = &unk_1EF278E08;
  v2[125] = @".AppleSystemUIFaceShortEmphasizedTitle1";
  v1[126] = &unk_1EF278E20;
  v1[145] = &unk_1EF278FE8;
  v1[144] = &unk_1EF278FD0;
  v2[144] = @".AppleSystemUIFaceItalicTitle3";
  v1[143] = &unk_1EF278FB8;
  v2[143] = @".AppleSystemUIFaceTitle3";
  v1[142] = &unk_1EF278FA0;
  v2[142] = @".AppleSystemUIFaceTallEmphasizedItalicTitle2";
  v1[141] = &unk_1EF278F88;
  v2[141] = @".AppleSystemUIFaceTallEmphasizedTitle2";
  v1[140] = &unk_1EF278F70;
  v2[140] = @".AppleSystemUIFaceTallItalicTitle2";
  v1[139] = &unk_1EF278F58;
  v2[139] = @".AppleSystemUIFaceTallTitle2";
  v1[138] = &unk_1EF278F40;
  v2[138] = @".AppleSystemUIFaceShortEmphasizedItalicTitle2";
  v1[137] = &unk_1EF278F28;
  v2[137] = @".AppleSystemUIFaceShortEmphasizedTitle2";
  v1[136] = &unk_1EF278F10;
  v2[136] = @".AppleSystemUIFaceShortItalicTitle2";
  v1[135] = &unk_1EF278EF8;
  v2[135] = @".AppleSystemUIFaceShortTitle2";
  v1[134] = &unk_1EF278EE0;
  v2[134] = @".AppleSystemUIFaceEmphasizedItalicTitle2";
  v1[133] = &unk_1EF278EC8;
  v2[133] = @".AppleSystemUIFaceEmphasizedTitle2";
  v1[132] = &unk_1EF278EB0;
  v2[132] = @".AppleSystemUIFaceItalicTitle2";
  v1[131] = &unk_1EF278E98;
  v2[131] = @".AppleSystemUIFaceTitle2";
  v1[130] = &unk_1EF278E80;
  v2[130] = @".AppleSystemUIFaceTallEmphasizedItalicTitle1";
  v1[129] = &unk_1EF278E68;
  v2[129] = @".AppleSystemUIFaceTallEmphasizedTitle1";
  v1[128] = &unk_1EF278E50;
  v2[128] = @".AppleSystemUIFaceTallItalicTitle1";
  v1[127] = &unk_1EF278E38;
  v2[127] = @".AppleSystemUIFaceTallTitle1";
  v2[126] = @".AppleSystemUIFaceShortEmphasizedItalicTitle1";
  v2[145] = @".AppleSystemUIFaceEmphasizedTitle3";
  v1[146] = &unk_1EF279000;
  v2[146] = @".AppleSystemUIFaceEmphasizedItalicTitle3";
  v1[147] = &unk_1EF279018;
  v2[147] = @".AppleSystemUIFaceShortTitle3";
  v1[148] = &unk_1EF279030;
  v2[148] = @".AppleSystemUIFaceShortItalicTitle3";
  v1[149] = &unk_1EF279048;
  v2[149] = @".AppleSystemUIFaceShortEmphasizedTitle3";
  v1[150] = &unk_1EF279060;
  v2[150] = @".AppleSystemUIFaceShortEmphasizedItalicTitle3";
  v1[151] = &unk_1EF279078;
  v2[151] = @".AppleSystemUIFaceTallTitle3";
  v1[152] = &unk_1EF279090;
  v2[152] = @".AppleSystemUIFaceTallItalicTitle3";
  v1[153] = &unk_1EF2790A8;
  v2[153] = @".AppleSystemUIFaceTallEmphasizedTitle3";
  v1[154] = &unk_1EF2790C0;
  v2[154] = @".AppleSystemUIFaceTallEmphasizedItalicTitle3";
  v1[155] = &unk_1EF2790D8;
  v2[155] = @".AppleSystemUIFaceSubtitle3";
  v1[156] = &unk_1EF2790F0;
  v2[156] = @".AppleSystemUIFaceSubtitle2";
  v1[157] = &unk_1EF279108;
  v2[157] = @".AppleSystemUIFaceSubtitle1";
  v1[158] = &unk_1EF279120;
  v2[158] = @".AppleSystemUIFaceSection1";
  v1[159] = &unk_1EF279138;
  v2[159] = @".AppleSystemUIFaceSection2";
  v1[160] = &unk_1EF279150;
  v2[160] = @".AppleSystemUIFaceSection3";
  v1[161] = &unk_1EF279168;
  v2[161] = @".AppleSystemUIFaceTitle4";
  v1[162] = &unk_1EF279180;
  v2[162] = @".AppleSystemUIFaceHeadline3";
  v1[163] = &unk_1EF279198;
  v2[163] = @".AppleSystemUIFaceItalicSubtitle1";
  v1[164] = &unk_1EF2791B0;
  v2[164] = @".AppleSystemUIFaceEmphasizedSubtitle1";
  v1[165] = &unk_1EF2791C8;
  v2[165] = @".AppleSystemUIFaceEmphasizedItalicSubtitle1";
  v1[166] = &unk_1EF2791E0;
  v2[166] = @".AppleSystemUIFaceTitle0";
  v1[167] = &unk_1EF2791F8;
  v2[167] = @".AppleSystemUIFaceEmphasizedTitle0";
  v1[168] = &unk_1EF279210;
  v2[168] = @".AppleSystemUIFaceShortTitle0";
  v1[169] = &unk_1EF279228;
  v2[169] = @".AppleSystemUIFaceShortEmphasizedTitle0";
  v1[170] = &unk_1EF279240;
  v2[170] = @".AppleSystemUIFaceTallTitle0";
  v1[171] = &unk_1EF279258;
  v2[171] = @".AppleSystemUIFaceTallEmphasizedTitle0";
  v1[172] = &unk_1EF279270;
  v2[172] = @".AppleSystemUIFaceEmphasizedHeadline";
  v1[173] = &unk_1EF279288;
  v2[173] = @".AppleSystemUIFaceEmphasizedItalicHeadline";
  v1[174] = &unk_1EF2792A0;
  v2[174] = @".AppleSystemUIFaceShortEmphasizedHeadline";
  v1[175] = &unk_1EF2792B8;
  v2[175] = @".AppleSystemUIFaceShortEmphasizedItalicHeadline";
  v1[176] = &unk_1EF2792D0;
  v2[176] = @".AppleSystemUIFaceTallHeadline";
  v1[177] = &unk_1EF2792E8;
  v2[177] = @".AppleSystemUIFaceTallEmphasizedHeadline";
  v1[178] = &unk_1EF279408;
  v2[178] = @".AppleSystemUIFontSerif-Regular";
  v1[179] = &unk_1EF279420;
  v2[179] = @".AppleSystemUIFontSerif-Medium";
  v1[180] = &unk_1EF279438;
  v2[180] = @".AppleSystemUIFontSerif-Semibold";
  v1[181] = &unk_1EF279450;
  v2[181] = @".AppleSystemUIFontSerif-Bold";
  v1[182] = &unk_1EF279468;
  v2[182] = @".AppleSystemUIFontSerif-Heavy";
  v1[183] = &unk_1EF279480;
  v2[183] = @".AppleSystemUIFontSerif-Black";
  v1[184] = &unk_1EF279498;
  v2[184] = @".AppleSystemUIFontSerif-Italic";
  v1[185] = &unk_1EF2794B0;
  v2[185] = @".AppleSystemUIFontSerif-MediumItalic";
  v1[186] = &unk_1EF2794C8;
  v2[186] = @".AppleSystemUIFontSerif-SemiboldItalic";
  v1[187] = &unk_1EF2794E0;
  v2[187] = @".AppleSystemUIFontSerif-BoldItalic";
  v1[188] = &unk_1EF2794F8;
  v2[188] = @".AppleSystemUIFontSerif-HeavyItalic";
  v1[189] = &unk_1EF279510;
  v2[189] = @".AppleSystemUIFontSerif-BlackItalc";
  v1[190] = &unk_1EF279528;
  v2[190] = @".AppleSystemUIFontMonospaced-Light";
  v1[191] = &unk_1EF279540;
  v2[191] = @".AppleSystemUIFontMonospaced-Regular";
  v1[192] = &unk_1EF279558;
  v2[192] = @".AppleSystemUIFontMonospaced-Medium";
  v1[193] = &unk_1EF279570;
  v2[193] = @".AppleSystemUIFontMonospaced-Semibold";
  v1[194] = &unk_1EF279588;
  v2[194] = @".AppleSystemUIFontMonospaced-Bold";
  v1[195] = &unk_1EF2795A0;
  v2[195] = @".AppleSystemUIFontMonospaced-Heavy";
  v1[196] = &unk_1EF2795B8;
  v2[196] = @".AppleSystemUIFontMonospaced-LightItalic";
  v1[197] = &unk_1EF2795D0;
  v2[197] = @".AppleSystemUIFontMonospaced-RegularItalic";
  v1[198] = &unk_1EF2795E8;
  v2[198] = @".AppleSystemUIFontMonospaced-MediumItalic";
  v1[199] = &unk_1EF279600;
  v2[199] = @".AppleSystemUIFontMonospaced-SemiboldItalic";
  v1[200] = &unk_1EF279618;
  v2[200] = @".AppleSystemUIFontMonospaced-BoldItalic";
  v1[201] = &unk_1EF279630;
  v2[201] = @".AppleSystemUIFontMonospaced-HeavyItalic";
  v1[202] = &unk_1EF279330;
  v2[202] = @".AppleSystemUIFontCondensed-Regular";
  v1[203] = &unk_1EF279348;
  v2[203] = @".AppleSystemUIFontCondensed-Bold";
  v1[204] = &unk_1EF279360;
  v2[204] = @".AppleSystemUIFontCondensed-Thin";
  v1[205] = &unk_1EF279378;
  v2[205] = @".AppleSystemUIFontCondensed-Light";
  v1[206] = &unk_1EF279390;
  v2[206] = @".AppleSystemUIFontCondensed-UltraLight";
  v1[207] = &unk_1EF2793A8;
  v2[207] = @".AppleSystemUIFontCondensed-Medium";
  v1[208] = &unk_1EF2793C0;
  v2[208] = @".AppleSystemUIFontCondensed-Semibold";
  v1[209] = &unk_1EF2793D8;
  v2[209] = @".AppleSystemUIFontCondensed-Heavy";
  v1[210] = &unk_1EF2793F0;
  v2[210] = @".AppleSystemUIFontCondensed-Black";
  v1[211] = &unk_1EF279648;
  v2[211] = @".AppleSystemUIFaceExtraLargeTitle";
  v1[212] = &unk_1EF279660;
  v2[212] = @".AppleSystemUIFaceEmphasizedExtraLargeTitle";
  v1[213] = &unk_1EF279678;
  v2[213] = @".AppleSystemUIFaceExtraLargeTitle2";
  v1[214] = &unk_1EF279690;
  v2[214] = @".AppleSystemUIFaceEmphasizedExtraLargeTitle2";
  v1[215] = &unk_1EF2796A8;
  v2[215] = @".AppleSystemUIFontCompactRounded-Ultralight";
  v1[216] = &unk_1EF2796C0;
  v2[216] = @".AppleSystemUIFontCompactRounded-Thin";
  v1[217] = &unk_1EF2796D8;
  v2[217] = @".AppleSystemUIFontCompactRounded-Light";
  v1[218] = &unk_1EF2796F0;
  v2[218] = @".AppleSystemUIFontCompactRounded-Regular";
  v1[219] = &unk_1EF279708;
  v2[219] = @".AppleSystemUIFontCompactRounded-Medium";
  v1[220] = &unk_1EF279720;
  v2[220] = @".AppleSystemUIFontCompactRounded-Semibold";
  v1[221] = &unk_1EF279738;
  v2[221] = @".AppleSystemUIFontCompactRounded-Bold";
  v1[222] = &unk_1EF279750;
  v2[222] = @".AppleSystemUIFontCompactRounded-Heavy";
  v1[223] = &unk_1EF279768;
  v2[223] = @".AppleSystemUIFontCompactRounded-Black";
  v1[224] = &unk_1EF279780;
  v2[224] = @".AppleSystemUIFontCore-Regular";
  v1[225] = &unk_1EF279798;
  v2[225] = @".AppleSystemUIFontCore-Bold";
  v1[226] = &unk_1EF2797B0;
  v2[226] = @".AppleSystemUIFontCore-Thin";
  v1[227] = &unk_1EF2797C8;
  v2[227] = @".AppleSystemUIFontCore-Light";
  v1[228] = &unk_1EF2797E0;
  v2[228] = @".AppleSystemUIFontCore-UltraLight";
  v1[229] = &unk_1EF2797F8;
  v2[229] = @".AppleSystemUIFontCore-Medium";
  v1[230] = &unk_1EF279810;
  v2[230] = @".AppleSystemUIFontCore-Semibold";
  v1[231] = &unk_1EF279828;
  v2[231] = @".AppleSystemUIFontCore-Heavy";
  v1[232] = &unk_1EF279840;
  v2[232] = @".AppleSystemUIFontCore-Black";
  v1[233] = &unk_1EF279858;
  v2[233] = @".AppleSystemUIFontCore-Italic";
  v1[234] = &unk_1EF279870;
  v2[234] = @".AppleSystemUIFontCore-BoldItalic";
  v1[235] = &unk_1EF279888;
  v2[235] = @".AppleSystemUIFontCore-ThinItalic";
  v1[236] = &unk_1EF2798A0;
  v2[236] = @".AppleSystemUIFontCore-LightItalic";
  v1[237] = &unk_1EF2798B8;
  v2[237] = @".AppleSystemUIFontCore-UltraLightItalic";
  v1[238] = &unk_1EF2798D0;
  v2[238] = @".AppleSystemUIFontCore-MediumItalic";
  v1[239] = &unk_1EF2798E8;
  v2[239] = @".AppleSystemUIFontCore-SemiboldItalic";
  v1[240] = &unk_1EF279900;
  v2[240] = @".AppleSystemUIFontCore-HeavyItalic";
  v1[241] = &unk_1EF279918;
  v2[241] = @".AppleSystemUIFontCore-BlackItalic";
  v1[242] = &unk_1EF279930;
  v2[242] = @".AppleSystemUIFontCoreCondensed-Regular";
  v1[243] = &unk_1EF279948;
  v2[243] = @".AppleSystemUIFontCoreCondensed-Bold";
  v1[244] = &unk_1EF279960;
  v2[244] = @".AppleSystemUIFontCoreCondensed-Thin";
  v1[245] = &unk_1EF279978;
  v2[245] = @".AppleSystemUIFontCoreCondensed-Light";
  v1[246] = &unk_1EF279990;
  v2[246] = @".AppleSystemUIFontCoreCondensed-UltraLight";
  v1[247] = &unk_1EF2799A8;
  v2[247] = @".AppleSystemUIFontCoreCondensed-Medium";
  v1[248] = &unk_1EF2799C0;
  v2[248] = @".AppleSystemUIFontCoreCondensed-Semibold";
  v1[249] = &unk_1EF2799D8;
  v2[249] = @".AppleSystemUIFontCoreCondensed-Heavy";
  v1[250] = &unk_1EF2799F0;
  v2[250] = @".AppleSystemUIFontCoreCondensed-Black";
  v1[251] = &unk_1EF279A08;
  v2[251] = @".AppleSystemUIFaceEmphasizedItalicCaption1";
  v1[252] = &unk_1EF279A20;
  v2[252] = @".AppleSystemUIFaceShortEmphasizedItalicCaption1";
  v1[253] = &unk_1EF279A38;
  v2[253] = @".AppleSystemUIFaceTallCaption1";
  v1[254] = &unk_1EF279A50;
  v2[254] = @".AppleSystemUIFaceTallItalicCaption1";
  v1[255] = &unk_1EF279A68;
  v2[255] = @".AppleSystemUIFaceTallEmphasizedCaption1";
  v1[256] = &unk_1EF279A80;
  v2[256] = @".AppleSystemUIFaceTallEmphasizedItalicCaption1";
  v1[257] = &unk_1EF279A98;
  v2[257] = @".AppleSystemUIFaceEmphasizedItalicCaption2";
  v1[258] = &unk_1EF279AB0;
  v2[258] = @".AppleSystemUIFaceShortEmphasizedItalicCaption2";
  v1[259] = &unk_1EF279AC8;
  v2[259] = @".AppleSystemUIFaceTallCaption2";
  v1[260] = &unk_1EF279AE0;
  v2[260] = @".AppleSystemUIFaceTallItalicCaption2";
  v1[261] = &unk_1EF279AF8;
  v2[261] = @".AppleSystemUIFaceTallEmphasizedCaption2";
  v1[262] = &unk_1EF279B10;
  v2[262] = @".AppleSystemUIFaceTallEmphasizedItalicCaption2";
  v1[263] = &unk_1EF279B28;
  v2[263] = @".AppleSystemUIFaceItalicExtraLargeTitle";
  v1[264] = &unk_1EF279B40;
  v2[264] = @".AppleSystemUIFaceEmphasizedItalicExtraLargeTitle";
  v1[265] = &unk_1EF279B58;
  v2[265] = @".AppleSystemUIFaceItalicExtraLargeTitle2";
  v1[266] = &unk_1EF279B70;
  v2[266] = @".AppleSystemUIFaceEmphasizedItalicExtraLargeTitle2";
  v1[267] = &unk_1EF279B88;
  v2[267] = @".AppleSystemUIFaceCondensedHeadline";
  v1[268] = &unk_1EF279BA0;
  v2[268] = @".AppleSystemUIFaceCondensedTitle1";
  v1[269] = &unk_1EF279BB8;
  v2[269] = @".AppleSystemUIFaceCondensedTitle2";
  v1[270] = &unk_1EF279BD0;
  v2[270] = @".AppleSystemUIFaceCondensedTitle3";
  v1[271] = &unk_1EF279BE8;
  v2[271] = @".AppleSystemUIFaceCondensedBody";
  v1[272] = &unk_1EF279C00;
  v2[272] = @".AppleSystemUIFacePreferredSize-Regular";
  v1[273] = &unk_1EF279C18;
  v2[273] = @".AppleSystemUIFacePreferredSize-Bold";
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:274];
  qword_1ED5674C8 = result;
  return result;
}

char *std::vector<char,TInlineBufferAllocator<char,30ul>>::__append(uint64_t a1, size_t a2)
{
  v5 = a1 + 8;
  result = *(a1 + 8);
  v4 = *(v5 + 8);
  if (v4 - result >= a2)
  {
    if (a2)
    {
      v11 = &result[a2];
      bzero(result, a2);
      result = v11;
    }

    *(a1 + 8) = result;
  }

  else
  {
    v6 = &result[-*a1];
    v7 = &v6[a2];
    if (&v6[a2] < 0)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v8 = v4 - *a1;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    v19[4] = a1 + 24;
    if (v9)
    {
      v10 = *(a1 + 56);
      if (v10 + v9 > (a1 + 54))
      {
        operator new();
      }

      *(a1 + 56) = v10 + v9;
    }

    else
    {
      v10 = 0;
    }

    v12 = &v6[v10];
    v13 = v10 + v9;
    v14 = &v12[a2];
    bzero(v12, a2);
    v15 = *(a1 + 8);
    v16 = &v12[*a1 - v15];
    memcpy(v16, *a1, v15 - *a1);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v14;
    v18 = *(a1 + 16);
    *(a1 + 16) = v13;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    return std::__split_buffer<char,TInlineBufferAllocator<char,30ul> &>::~__split_buffer(v19);
  }

  return result;
}

void TDescriptor::GetSystemUIFontOptions(void)::$_0::__invoke()
{
  _MergedGlobals_13 = 1024;
  if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
  {
    dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
  }

  if ((IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter & 0x20) == 0)
  {
    _MergedGlobals_13 |= 2u;
  }
}

id ___Z31StashIndexForFontNameDictionaryv_block_invoke()
{
  v2[386] = *MEMORY[0x1E69E9840];
  v1[0] = @".AppleSystemUIFontEmphasized";
  v1[1] = @".AppleSystemUIFont";
  v2[0] = &unk_1EF278C58;
  v2[1] = &unk_1EF278C70;
  v1[2] = @".AppleSystemUIFontItalic";
  v1[3] = @".AppleSystemUIFontEmphasizedItalic";
  v2[2] = &unk_1EF278C88;
  v2[3] = &unk_1EF278CA0;
  v1[4] = @".AppleSystemUIFontThin";
  v1[5] = @".AppleSystemUIFontLight";
  v2[4] = &unk_1EF278CB8;
  v2[5] = &unk_1EF278CD0;
  v1[6] = @".AppleSystemUIFontUltraLight";
  v1[7] = @".AppleSystemUIFontMedium";
  v2[6] = &unk_1EF278CE8;
  v2[7] = &unk_1EF278D00;
  v1[8] = @".AppleSystemUIFontDemi";
  v1[9] = @".AppleSystemUIFontBold";
  v2[8] = &unk_1EF278D18;
  v2[9] = &unk_1EF278D30;
  v1[10] = @".AppleSystemUIFontHeavy";
  v1[11] = @".AppleSystemUIFontBlack";
  v2[10] = &unk_1EF278D48;
  v2[11] = &unk_1EF278D60;
  v1[12] = @".AppleSymbolsFB";
  v1[13] = @".TimesFB";
  v2[12] = &unk_1EF279C30;
  v2[13] = &unk_1EF279C48;
  v1[14] = @".TimesFB-Bold";
  v1[15] = @".TimesFB-BoldItalic";
  v2[14] = &unk_1EF279C60;
  v2[15] = &unk_1EF279C78;
  v1[16] = @".TimesFB-Italic";
  v1[17] = @".AppleSimplifiedChineseFont-UltraLight";
  v2[16] = &unk_1EF279C90;
  v2[17] = &unk_1EF279900;
  v1[18] = @".AppleSimplifiedChineseFont-Thin";
  v1[19] = @".AppleSimplifiedChineseFont-Light";
  v2[18] = &unk_1EF279918;
  v2[19] = &unk_1EF279930;
  v1[20] = @".AppleSimplifiedChineseFont-Regular";
  v1[21] = @".AppleSimplifiedChineseFont-Medium";
  v2[20] = &unk_1EF279948;
  v2[21] = &unk_1EF279960;
  v1[22] = @".AppleSimplifiedChineseFont-Semibold";
  v1[23] = @".AppleSimplifiedChineseFont-Bold";
  v2[22] = &unk_1EF279978;
  v2[23] = &unk_1EF279990;
  v1[24] = @".AppleSimplifiedChineseFont-Heavy";
  v1[25] = @".AppleTraditionalChineseFont-UltraLight";
  v2[24] = &unk_1EF2799A8;
  v2[25] = &unk_1EF2799C0;
  v1[26] = @".AppleTraditionalChineseFont-Thin";
  v1[27] = @".AppleTraditionalChineseFont-Light";
  v2[26] = &unk_1EF2799D8;
  v2[27] = &unk_1EF2799F0;
  v1[28] = @".AppleTraditionalChineseFont-Regular";
  v1[29] = @".AppleTraditionalChineseFont-Medium";
  v2[28] = &unk_1EF279A08;
  v2[29] = &unk_1EF279A20;
  v1[30] = @".AppleTraditionalChineseFont-Semibold";
  v1[31] = @".AppleTraditionalChineseFont-Bold";
  v2[30] = &unk_1EF279A38;
  v2[31] = &unk_1EF279A50;
  v1[32] = @".AppleTraditionalChineseFont-Heavy";
  v1[33] = @".AppleHongKongChineseFont-UltraLight";
  v2[32] = &unk_1EF279A68;
  v2[33] = &unk_1EF279A80;
  v1[34] = @".AppleHongKongChineseFont-Thin";
  v1[35] = @".AppleHongKongChineseFont-Light";
  v2[34] = &unk_1EF279A98;
  v2[35] = &unk_1EF279AB0;
  v1[36] = @".AppleHongKongChineseFont-Regular";
  v1[37] = @".AppleHongKongChineseFont-Medium";
  v2[36] = &unk_1EF279AC8;
  v2[37] = &unk_1EF279AE0;
  v1[38] = @".AppleHongKongChineseFont-Semibold";
  v1[39] = @".AppleHongKongChineseFont-Bold";
  v2[38] = &unk_1EF279AF8;
  v2[39] = &unk_1EF279B10;
  v1[40] = @".AppleHongKongChineseFont-Heavy";
  v1[41] = @".AppleMacaoChineseFont-UltraLight";
  v2[40] = &unk_1EF279B28;
  v2[41] = &unk_1EF279B40;
  v1[42] = @".AppleMacaoChineseFont-Thin";
  v1[43] = @".AppleMacaoChineseFont-Light";
  v2[42] = &unk_1EF279B58;
  v2[43] = &unk_1EF279B70;
  v1[44] = @".AppleMacaoChineseFont-Regular";
  v1[45] = @".AppleMacaoChineseFont-Medium";
  v2[44] = &unk_1EF279C00;
  v2[45] = &unk_1EF279C18;
  v1[46] = @".AppleMacaoChineseFont-Semibold";
  v1[47] = @".AppleMacaoChineseFont-Bold";
  v2[46] = &unk_1EF279CA8;
  v2[47] = &unk_1EF279CC0;
  v1[48] = @".AppleMacaoChineseFont-Heavy";
  v1[49] = @".AppleJapaneseFont-Ultralight";
  v2[48] = &unk_1EF279CD8;
  v2[49] = &unk_1EF279CF0;
  v1[50] = @".AppleJapaneseFont-Thin";
  v1[51] = @".AppleJapaneseFont-Light";
  v2[50] = &unk_1EF279D08;
  v2[51] = &unk_1EF279D20;
  v1[52] = @".AppleJapaneseFont-Regular";
  v1[53] = @".AppleJapaneseFont-Medium";
  v2[52] = &unk_1EF279D38;
  v2[53] = &unk_1EF279D50;
  v1[54] = @".AppleJapaneseFont-Semibold";
  v1[55] = @".AppleJapaneseFont-Bold";
  v2[54] = &unk_1EF279D68;
  v2[55] = &unk_1EF279D80;
  v1[56] = @".AppleJapaneseFont-Heavy";
  v1[57] = @".AppleJapaneseFont-Black";
  v2[56] = &unk_1EF279D98;
  v2[57] = &unk_1EF279DB0;
  v1[58] = @".AppleKoreanFont-UltraLight";
  v1[59] = @".AppleKoreanFont-Thin";
  v2[58] = &unk_1EF279DC8;
  v2[59] = &unk_1EF279DE0;
  v1[60] = @".AppleKoreanFont-Light";
  v1[61] = @".AppleKoreanFont-Regular";
  v2[60] = &unk_1EF279DF8;
  v2[61] = &unk_1EF279E10;
  v1[62] = @".AppleKoreanFont-Medium";
  v1[63] = @".AppleKoreanFont-Semibold";
  v2[62] = &unk_1EF279E28;
  v2[63] = &unk_1EF279E40;
  v1[64] = @".AppleKoreanFont-Bold";
  v2[64] = &unk_1EF279E58;
  v1[65] = @".AppleKoreanFont-Heavy";
  v2[65] = &unk_1EF279E70;
  v1[66] = @".AppleArabicFont-Ultralight";
  v2[66] = &unk_1EF279E88;
  v1[67] = @".AppleArabicFont-Thin";
  v2[67] = &unk_1EF279EA0;
  v1[68] = @".AppleArabicFont-Light";
  v2[68] = &unk_1EF279EB8;
  v1[69] = @".AppleArabicFont-Regular";
  v2[69] = &unk_1EF279ED0;
  v1[70] = @".AppleArabicFont-Medium";
  v2[70] = &unk_1EF279EE8;
  v1[71] = @".AppleArabicFont-Semibold";
  v2[71] = &unk_1EF279F00;
  v1[72] = @".AppleArabicFont-Bold";
  v2[72] = &unk_1EF279F18;
  v1[73] = @".AppleArabicFont-Heavy";
  v2[73] = &unk_1EF279F30;
  v1[74] = @".AppleArabicFont-Black";
  v2[74] = &unk_1EF279F48;
  v1[75] = @".AppleThaiFont-Light";
  v2[75] = &unk_1EF279F60;
  v1[76] = @".AppleThaiFont-Regular";
  v2[76] = &unk_1EF279F78;
  v1[77] = @".AppleThaiFont-Bold";
  v2[77] = &unk_1EF279F90;
  v1[78] = @".AppleUrduFont-Regular";
  v2[78] = &unk_1EF279FA8;
  v1[79] = @".AppleUrduFont-Bold";
  v2[79] = &unk_1EF279FC0;
  v1[80] = @".AppleIndicFont-UltraLight";
  v2[80] = &unk_1EF279FD8;
  v1[81] = @".AppleIndicFont-Thin";
  v2[81] = &unk_1EF279FF0;
  v1[82] = @".AppleIndicFont-Light";
  v2[82] = &unk_1EF27A008;
  v1[83] = @".AppleIndicFont-Regular";
  v2[83] = &unk_1EF27A020;
  v1[84] = @".AppleIndicFont-Medium";
  v2[84] = &unk_1EF27A038;
  v1[85] = @".AppleIndicFont-Semibold";
  v2[85] = &unk_1EF27A050;
  v1[86] = @".AppleIndicFont-Bold";
  v2[86] = &unk_1EF27A068;
  v1[87] = @".AppleIndicFont-Heavy";
  v2[87] = &unk_1EF27A080;
  v1[88] = @".AppleIndicFont-Black";
  v2[88] = &unk_1EF27A080;
  v1[89] = @".AppleSystemUIFaceHeadline";
  v2[89] = &unk_1EF27A098;
  v1[90] = @".AppleSystemUIFaceItalicHeadline";
  v2[90] = &unk_1EF27A0B0;
  v1[91] = @".AppleSystemUIFaceShortHeadline";
  v2[91] = &unk_1EF278280;
  v1[92] = @".AppleSystemUIFaceShortItalicHeadline";
  v2[92] = &unk_1EF278298;
  v1[93] = @".AppleSystemUIFaceHeadline2";
  v2[93] = &unk_1EF27A0C8;
  v1[94] = @".AppleSystemUIFaceItalicHeadline2";
  v2[94] = &unk_1EF27A0E0;
  v1[95] = @".AppleSystemUIFaceShortHeadline2";
  v2[95] = &unk_1EF27A0F8;
  v1[96] = @".AppleSystemUIFaceShortItalicHeadline2";
  v2[96] = &unk_1EF27A110;
  v1[97] = @".AppleSystemUIFaceEmphasizedBody";
  v2[97] = &unk_1EF27A128;
  v1[98] = @".AppleSystemUIFaceBody";
  v2[98] = &unk_1EF27A140;
  v1[99] = @".AppleSystemUIFaceEmphasizedItalicBody";
  v2[99] = &unk_1EF27A158;
  v1[100] = @".AppleSystemUIFaceItalicBody";
  v2[100] = &unk_1EF27A170;
  v1[101] = @".AppleSystemUIFaceShortEmphasizedBody";
  v2[101] = &unk_1EF27A188;
  v1[102] = @".AppleSystemUIFaceShortBody";
  v2[102] = &unk_1EF27A1A0;
  v1[103] = @".AppleSystemUIFaceShortEmphasizedItalicBody";
  v2[103] = &unk_1EF27A1B8;
  v1[104] = @".AppleSystemUIFaceShortItalicBody";
  v2[104] = &unk_1EF27A1D0;
  v1[105] = @".AppleSystemUIFaceTallEmphasizedBody";
  v2[105] = &unk_1EF27A1E8;
  v1[106] = @".AppleSystemUIFaceTallBody";
  v2[106] = &unk_1EF27A200;
  v1[107] = @".AppleSystemUIFaceTallEmphasizedItalicBody";
  v2[107] = &unk_1EF27A218;
  v1[108] = @".AppleSystemUIFaceTallItalicBody";
  v2[108] = &unk_1EF27A230;
  v1[109] = @".AppleSystemUIFaceEmphasizedSubhead";
  v2[109] = &unk_1EF27A248;
  v1[110] = @".AppleSystemUIFaceSubhead";
  v2[110] = &unk_1EF27A260;
  v1[111] = @".AppleSystemUIFaceItalicSubhead";
  v2[111] = &unk_1EF27A278;
  v1[112] = @".AppleSystemUIFaceShortEmphasizedSubhead";
  v1[113] = @".AppleSystemUIFaceShortSubhead";
  v2[113] = &unk_1EF27A2A8;
  v1[114] = @".AppleSystemUIFaceShortItalicSubhead";
  v2[114] = &unk_1EF27A2C0;
  v1[115] = @".AppleSystemUIFaceEmphasizedSubhead2";
  v2[115] = &unk_1EF27A2D8;
  v1[116] = @".AppleSystemUIFaceSubhead2";
  v2[116] = &unk_1EF278370;
  v1[117] = @".AppleSystemUIFaceItalicSubhead2";
  v2[117] = &unk_1EF27A2F0;
  v1[118] = @".AppleSystemUIFaceShortEmphasizedSubhead2";
  v2[118] = &unk_1EF27A308;
  v1[119] = @".AppleSystemUIFaceShortSubhead2";
  v2[119] = &unk_1EF27A320;
  v1[120] = @".AppleSystemUIFaceShortItalicSubhead2";
  v2[120] = &unk_1EF27A338;
  v1[121] = @".AppleSystemUIFaceEmphasizedFootnote";
  v2[121] = &unk_1EF27A350;
  v1[122] = @".AppleSystemUIFaceFootnote";
  v2[122] = &unk_1EF27A368;
  v1[123] = @".AppleSystemUIFaceItalicFootnote";
  v2[123] = &unk_1EF27A380;
  v1[124] = @".AppleSystemUIFaceShortEmphasizedFootnote";
  v2[124] = &unk_1EF27A398;
  v1[125] = @".AppleSystemUIFaceShortFootnote";
  v2[210] = &unk_1EF27A2C0;
  v1[257] = @".AppleSystemUIFaceEmphasizedItalicSubtitle1";
  v1[256] = @".AppleSystemUIFaceEmphasizedSubtitle1";
  v2[256] = &unk_1EF278850;
  v1[255] = @".AppleSystemUIFaceItalicSubtitle1";
  v2[255] = &unk_1EF278838;
  v1[254] = @".AppleSystemUIFaceHeadline3";
  v2[254] = &unk_1EF278820;
  v1[253] = @".AppleSystemUIFaceTitle4";
  v2[253] = &unk_1EF278808;
  v1[252] = @".AppleSystemUIFaceSection3";
  v2[252] = &unk_1EF2787F0;
  v1[251] = @".AppleSystemUIFaceSection2";
  v2[251] = &unk_1EF2787D8;
  v1[250] = @".AppleSystemUIFaceSection1";
  v2[250] = &unk_1EF2787C0;
  v1[249] = @".AppleSystemUIFaceSubtitle1";
  v2[249] = &unk_1EF2787A8;
  v1[248] = @".AppleSystemUIFaceSubtitle2";
  v2[248] = &unk_1EF278790;
  v1[247] = @".AppleSystemUIFaceSubtitle3";
  v2[247] = &unk_1EF278778;
  v1[246] = @".AppleSystemUIFaceTallEmphasizedItalicTitle3";
  v2[246] = &unk_1EF278760;
  v1[245] = @".AppleSystemUIFaceTallEmphasizedTitle3";
  v2[245] = &unk_1EF278748;
  v1[244] = @".AppleSystemUIFaceTallItalicTitle3";
  v2[244] = &unk_1EF278730;
  v1[243] = @".AppleSystemUIFaceTallTitle3";
  v2[243] = &unk_1EF278718;
  v1[242] = @".AppleSystemUIFaceShortEmphasizedItalicTitle3";
  v2[242] = &unk_1EF278700;
  v1[241] = @".AppleSystemUIFaceShortEmphasizedTitle3";
  v2[241] = &unk_1EF2786E8;
  v1[240] = @".AppleSystemUIFaceShortItalicTitle3";
  v2[240] = &unk_1EF2786D0;
  v1[239] = @".AppleSystemUIFaceShortTitle3";
  v2[239] = &unk_1EF2786B8;
  v1[238] = @".AppleSystemUIFaceEmphasizedItalicTitle3";
  v2[238] = &unk_1EF2786A0;
  v1[237] = @".AppleSystemUIFaceEmphasizedTitle3";
  v2[237] = &unk_1EF278688;
  v1[236] = @".AppleSystemUIFaceItalicTitle3";
  v2[236] = &unk_1EF278670;
  v1[235] = @".AppleSystemUIFaceTitle3";
  v2[235] = &unk_1EF278658;
  v1[234] = @".AppleSystemUIFaceTallEmphasizedItalicTitle2";
  v2[234] = &unk_1EF278640;
  v1[233] = @".AppleSystemUIFaceTallEmphasizedTitle2";
  v2[233] = &unk_1EF278628;
  v1[232] = @".AppleSystemUIFaceTallItalicTitle2";
  v2[232] = &unk_1EF278610;
  v1[231] = @".AppleSystemUIFaceTallTitle2";
  v2[231] = &unk_1EF2785F8;
  v1[230] = @".AppleSystemUIFaceShortEmphasizedItalicTitle2";
  v2[230] = &unk_1EF2785E0;
  v1[229] = @".AppleSystemUIFaceShortEmphasizedTitle2";
  v2[229] = &unk_1EF2785C8;
  v1[228] = @".AppleSystemUIFaceShortItalicTitle2";
  v2[228] = &unk_1EF2785B0;
  v1[227] = @".AppleSystemUIFaceShortTitle2";
  v2[227] = &unk_1EF278598;
  v1[226] = @".AppleSystemUIFaceEmphasizedItalicTitle2";
  v2[226] = &unk_1EF278580;
  v1[225] = @".AppleSystemUIFaceEmphasizedTitle2";
  v2[225] = &unk_1EF278568;
  v1[224] = @".AppleSystemUIFaceItalicTitle2";
  v2[224] = &unk_1EF278550;
  v1[223] = @".AppleSystemUIFaceTitle2";
  v2[223] = &unk_1EF278538;
  v1[222] = @".AppleSystemUIFaceTallEmphasizedItalicTitle1";
  v2[222] = &unk_1EF278520;
  v1[221] = @".AppleSystemUIFaceTallEmphasizedTitle1";
  v2[221] = &unk_1EF278508;
  v1[220] = @".AppleSystemUIFaceTallItalicTitle1";
  v2[220] = &unk_1EF2784F0;
  v1[219] = @".AppleSystemUIFaceTallTitle1";
  v2[219] = &unk_1EF2784D8;
  v1[218] = @".AppleSystemUIFaceShortEmphasizedItalicTitle1";
  v2[218] = &unk_1EF2784C0;
  v1[217] = @".AppleSystemUIFaceShortEmphasizedTitle1";
  v2[217] = &unk_1EF278358;
  v1[216] = @".AppleSystemUIFaceShortItalicTitle1";
  v2[216] = &unk_1EF278340;
  v1[215] = @".AppleSystemUIFaceShortTitle1";
  v2[215] = &unk_1EF278328;
  v1[214] = @".AppleSystemUIFaceEmphasizedItalicTitle1";
  v2[214] = &unk_1EF278310;
  v1[213] = @".AppleSystemUIFaceEmphasizedTitle1";
  v2[213] = &unk_1EF2782F8;
  v1[212] = @".AppleSystemUIFaceItalicTitle1";
  v2[212] = &unk_1EF2782E0;
  v1[211] = @".AppleSystemUIFaceTitle1";
  v2[211] = &unk_1EF2784A8;
  v2[209] = &unk_1EF27A2A8;
  v1[210] = @".AppleSystemUIFaceShortItalicSubhead1";
  v2[112] = &unk_1EF27A290;
  v1[208] = @".AppleSystemUIFaceShortEmphasizedSubhead1";
  v2[208] = &unk_1EF27A290;
  v1[209] = @".AppleSystemUIFaceShortSubhead1";
  v2[125] = &unk_1EF27A3B0;
  v2[206] = &unk_1EF27A260;
  v1[207] = @".AppleSystemUIFaceItalicSubhead1";
  v2[207] = &unk_1EF27A278;
  v2[205] = &unk_1EF27A248;
  v1[206] = @".AppleSystemUIFaceSubhead1";
  v1[126] = @".AppleSystemUIFaceShortItalicFootnote";
  v1[204] = @".AppleSystemUIFaceShortHeadline1";
  v2[204] = &unk_1EF278280;
  v1[205] = @".AppleSystemUIFaceEmphasizedSubhead1";
  v1[203] = @".AppleSystemUIFaceHeadline1";
  v2[203] = &unk_1EF27A098;
  v1[202] = @".AppleSystemUIFontCompactRounded-Black";
  v2[202] = &unk_1EF279270;
  v1[201] = @".AppleSystemUIFontCompactRounded-Heavy";
  v2[201] = &unk_1EF279258;
  v1[200] = @".AppleSystemUIFontCompactRounded-Bold";
  v2[200] = &unk_1EF279240;
  v1[199] = @".AppleSystemUIFontCompactRounded-Semibold";
  v2[199] = &unk_1EF279228;
  v1[198] = @".AppleSystemUIFontCompactRounded-Medium";
  v2[198] = &unk_1EF279210;
  v1[197] = @".AppleSystemUIFontCompactRounded-Regular";
  v2[197] = &unk_1EF2791F8;
  v1[196] = @".AppleSystemUIFontCompactRounded-Light";
  v2[196] = &unk_1EF2791E0;
  v1[195] = @".AppleSystemUIFontCompactRounded-Thin";
  v2[195] = &unk_1EF2791C8;
  v1[194] = @".AppleSystemUIFontCompactRounded-Ultralight";
  v2[194] = &unk_1EF2791B0;
  v1[193] = @".AppleSystemUIFontRounded-Black";
  v2[193] = &unk_1EF279198;
  v1[192] = @".AppleSystemUIFontRounded-Heavy";
  v2[192] = &unk_1EF279180;
  v1[191] = @".AppleSystemUIFontRounded-Bold";
  v2[191] = &unk_1EF279168;
  v1[190] = @".AppleSystemUIFontRounded-Semibold";
  v2[190] = &unk_1EF279150;
  v1[189] = @".AppleSystemUIFontRounded-Medium";
  v2[189] = &unk_1EF279138;
  v1[188] = @".AppleSystemUIFontRounded-Regular";
  v2[188] = &unk_1EF279120;
  v1[187] = @".AppleSystemUIFontRounded-Light";
  v2[187] = &unk_1EF279108;
  v1[186] = @".AppleSystemUIFontRounded-Thin";
  v2[186] = &unk_1EF2790F0;
  v1[185] = @".AppleSystemUIFontRounded-Ultralight";
  v2[185] = &unk_1EF2790D8;
  v1[184] = @".AppleSystemUIFontCompact-BlackItalic";
  v2[184] = &unk_1EF278EE0;
  v1[183] = @".AppleSystemUIFontCompact-HeavyItalic";
  v2[183] = &unk_1EF278EC8;
  v1[182] = @".AppleSystemUIFontCompact-SemiboldItalic";
  v2[182] = &unk_1EF278E98;
  v1[181] = @".AppleSystemUIFontCompact-MediumItalic";
  v2[181] = &unk_1EF278E80;
  v1[180] = @".AppleSystemUIFontCompact-UltraLightItalic";
  v2[180] = &unk_1EF278E68;
  v1[179] = @".AppleSystemUIFontCompact-LightItalic";
  v2[179] = &unk_1EF278E50;
  v1[178] = @".AppleSystemUIFontCompact-ThinItalic";
  v2[178] = &unk_1EF278E38;
  v1[177] = @".AppleSystemUIFontCompact-BoldItalic";
  v2[177] = &unk_1EF278EB0;
  v1[176] = @".AppleSystemUIFontCompact-Italic";
  v2[176] = &unk_1EF279BD0;
  v1[175] = @".AppleSystemUIFontCompact-Black";
  v2[175] = &unk_1EF278E20;
  v1[174] = @".AppleSystemUIFontCompact-Heavy";
  v2[174] = &unk_1EF278E08;
  v1[173] = @".AppleSystemUIFontCompact-Semibold";
  v2[173] = &unk_1EF278DD8;
  v1[172] = @".AppleSystemUIFontCompact-Medium";
  v2[172] = &unk_1EF278DC0;
  v1[171] = @".AppleSystemUIFontCompact-UltraLight";
  v2[171] = &unk_1EF278DA8;
  v1[170] = @".AppleSystemUIFontCompact-Light";
  v2[170] = &unk_1EF278D90;
  v1[169] = @".AppleSystemUIFontCompact-Thin";
  v2[169] = &unk_1EF278D78;
  v1[168] = @".AppleSystemUIFontCompact-Bold";
  v2[168] = &unk_1EF278DF0;
  v1[167] = @".AppleSystemUIFontCompact-Regular";
  v2[167] = &unk_1EF279BB8;
  v1[166] = @".AppleSystemUIFontThinAlways";
  v2[166] = &unk_1EF279B88;
  v1[165] = @".AppleSystemUIFontUltraLightAlways";
  v2[165] = &unk_1EF2793F0;
  v1[164] = @".AppleSystemUIFontBlackItalic";
  v2[164] = &unk_1EF2793D8;
  v1[163] = @".AppleSystemUIFontHeavyItalic";
  v2[163] = &unk_1EF2793C0;
  v1[162] = @".AppleSystemUIFontBoldItalic";
  v2[162] = &unk_1EF2793A8;
  v1[161] = @".AppleSystemUIFontDemiItalic";
  v2[161] = &unk_1EF279390;
  v1[160] = @".AppleSystemUIFontMediumItalic";
  v2[160] = &unk_1EF279378;
  v1[159] = @".AppleSystemUIFontUltraLightItalic";
  v2[159] = &unk_1EF279360;
  v1[158] = @".AppleSystemUIFontLightItalic";
  v2[158] = &unk_1EF279348;
  v1[157] = @".AppleSystemUIFontThinItalic";
  v2[157] = &unk_1EF279330;
  v1[156] = @".AppleSystemUIFaceShortItalicCaption2";
  v2[156] = &unk_1EF278490;
  v1[155] = @".AppleSystemUIFaceShortCaption2";
  v2[155] = &unk_1EF278478;
  v1[154] = @".AppleSystemUIFaceShortEmphasizedCaption2";
  v2[154] = &unk_1EF278460;
  v1[153] = @".AppleSystemUIFaceShortItalicFootnote2";
  v2[153] = &unk_1EF278448;
  v1[152] = @".AppleSystemUIFaceShortFootnote2";
  v2[152] = &unk_1EF278430;
  v1[151] = @".AppleSystemUIFaceShortEmphasizedFootnote2";
  v2[151] = &unk_1EF278418;
  v1[150] = @".AppleSystemUIFaceItalicFootnote2";
  v2[150] = &unk_1EF278400;
  v1[149] = @".AppleSystemUIFaceFootnote2";
  v2[149] = &unk_1EF2783E8;
  v1[148] = @".AppleSystemUIFaceEmphasizedFootnote2";
  v2[148] = &unk_1EF2783D0;
  v1[147] = @".AppleSystemUIFaceTallEmphasizedItalicCallout";
  v2[147] = &unk_1EF2783B8;
  v1[146] = @".AppleSystemUIFaceTallEmphasizedCallout";
  v2[146] = &unk_1EF2783A0;
  v1[145] = @".AppleSystemUIFaceTallItalicCallout";
  v2[145] = &unk_1EF2782C8;
  v1[144] = @".AppleSystemUIFaceTallCallout";
  v2[144] = &unk_1EF2782B0;
  v1[143] = @".AppleSystemUIFaceShortEmphasizedItalicCallout";
  v2[143] = &unk_1EF27A548;
  v1[142] = @".AppleSystemUIFaceShortEmphasizedCallout";
  v2[142] = &unk_1EF27A530;
  v1[141] = @".AppleSystemUIFaceShortItalicCallout";
  v2[141] = &unk_1EF278388;
  v1[140] = @".AppleSystemUIFaceShortCallout";
  v2[140] = &unk_1EF27A518;
  v1[139] = @".AppleSystemUIFaceEmphasizedItalicCallout";
  v2[139] = &unk_1EF27A500;
  v1[138] = @".AppleSystemUIFaceEmphasizedCallout";
  v2[138] = &unk_1EF27A4E8;
  v1[137] = @".AppleSystemUIFaceItalicCallout";
  v2[137] = &unk_1EF27A4D0;
  v1[136] = @".AppleSystemUIFaceCallout";
  v2[136] = &unk_1EF27A4B8;
  v1[135] = @".AppleSystemUIFaceItalicCaption2";
  v2[135] = &unk_1EF27A4A0;
  v1[134] = @".AppleSystemUIFaceCaption2";
  v2[134] = &unk_1EF27A488;
  v1[133] = @".AppleSystemUIFaceEmphasizedCaption2";
  v2[133] = &unk_1EF27A470;
  v1[132] = @".AppleSystemUIFaceShortItalicCaption1";
  v2[132] = &unk_1EF27A458;
  v1[131] = @".AppleSystemUIFaceShortCaption1";
  v2[131] = &unk_1EF27A440;
  v1[130] = @".AppleSystemUIFaceShortEmphasizedCaption1";
  v2[130] = &unk_1EF27A428;
  v1[129] = @".AppleSystemUIFaceItalicCaption1";
  v2[129] = &unk_1EF27A410;
  v1[128] = @".AppleSystemUIFaceCaption1";
  v2[128] = &unk_1EF27A3F8;
  v1[127] = @".AppleSystemUIFaceEmphasizedCaption1";
  v2[127] = &unk_1EF27A3E0;
  v2[126] = &unk_1EF27A3C8;
  v2[257] = &unk_1EF278868;
  v1[258] = @".AppleSystemUIFaceTitle0";
  v2[258] = &unk_1EF278880;
  v1[259] = @".AppleSystemUIFaceEmphasizedTitle0";
  v2[259] = &unk_1EF278898;
  v1[260] = @".AppleSystemUIFaceShortTitle0";
  v2[260] = &unk_1EF2788B0;
  v1[261] = @".AppleSystemUIFaceShortEmphasizedTitle0";
  v2[261] = &unk_1EF2788C8;
  v1[262] = @".AppleSystemUIFaceTallTitle0";
  v2[262] = &unk_1EF2788E0;
  v1[263] = @".AppleSystemUIFaceTallEmphasizedTitle0";
  v2[263] = &unk_1EF2788F8;
  v1[264] = @".AppleSystemUIFaceEmphasizedHeadline";
  v2[264] = &unk_1EF278910;
  v1[265] = @".AppleSystemUIFaceEmphasizedItalicHeadline";
  v2[265] = &unk_1EF278928;
  v1[266] = @".AppleSystemUIFaceShortEmphasizedHeadline";
  v2[266] = &unk_1EF278940;
  v1[267] = @".AppleSystemUIFaceShortEmphasizedItalicHeadline";
  v2[267] = &unk_1EF278958;
  v1[268] = @".AppleSystemUIFaceTallHeadline";
  v2[268] = &unk_1EF278970;
  v1[269] = @".AppleSystemUIFaceTallEmphasizedHeadline";
  v2[269] = &unk_1EF278988;
  v1[270] = @".AppleSystemUIFaceCaption3";
  v2[270] = &unk_1EF2789A0;
  v1[271] = @".AppleSystemUIFaceEmphasizedCaption3";
  v2[271] = &unk_1EF2789B8;
  v1[272] = @".AppleSystemUIFontCondensed-Regular";
  v2[272] = &unk_1EF279288;
  v1[273] = @".AppleSystemUIFontCondensed-Bold";
  v2[273] = &unk_1EF2792A0;
  v1[274] = @".AppleSystemUIFontCondensed-Thin";
  v2[274] = &unk_1EF2792B8;
  v1[275] = @".AppleSystemUIFontCondensed-Light";
  v2[275] = &unk_1EF2792D0;
  v1[276] = @".AppleSystemUIFontCondensed-UltraLight";
  v2[276] = &unk_1EF2792E8;
  v1[277] = @".AppleSystemUIFontCondensed-Medium";
  v2[277] = &unk_1EF279408;
  v1[278] = @".AppleSystemUIFontCondensed-Semibold";
  v2[278] = &unk_1EF279420;
  v1[279] = @".AppleSystemUIFontCondensed-Heavy";
  v2[279] = &unk_1EF279438;
  v1[280] = @".AppleSystemUIFontCondensed-Black";
  v2[280] = &unk_1EF279450;
  v1[281] = @".AppleSystemUIFontSerif-Regular";
  v2[281] = &unk_1EF279540;
  v1[282] = @".AppleSystemUIFontSerif-Medium";
  v2[282] = &unk_1EF279558;
  v1[283] = @".AppleSystemUIFontSerif-Semibold";
  v2[283] = &unk_1EF279570;
  v1[284] = @".AppleSystemUIFontSerif-Bold";
  v2[284] = &unk_1EF279588;
  v1[285] = @".AppleSystemUIFontSerif-Heavy";
  v2[285] = &unk_1EF2795A0;
  v1[286] = @".AppleSystemUIFontSerif-Black";
  v2[286] = &unk_1EF2795B8;
  v1[287] = @".AppleSystemUIFontSerif-Italic";
  v2[287] = &unk_1EF2795D0;
  v1[288] = @".AppleSystemUIFontSerif-MediumItalic";
  v2[288] = &unk_1EF2795E8;
  v1[289] = @".AppleSystemUIFontSerif-SemiboldItalic";
  v2[289] = &unk_1EF279600;
  v1[290] = @".AppleSystemUIFontSerif-BoldItalic";
  v2[290] = &unk_1EF279618;
  v1[291] = @".AppleSystemUIFontSerif-HeavyItalic";
  v2[291] = &unk_1EF279630;
  v1[292] = @".AppleSystemUIFontSerif-BlackItalc";
  v2[292] = &unk_1EF279300;
  v1[293] = @".AppleSystemUIFontMonospaced-Light";
  v2[293] = &unk_1EF279318;
  v1[294] = @".AppleSystemUIFontMonospaced-Regular";
  v2[294] = &unk_1EF279648;
  v1[295] = @".AppleSystemUIFontMonospaced-Medium";
  v2[295] = &unk_1EF279660;
  v1[296] = @".AppleSystemUIFontMonospaced-Semibold";
  v2[296] = &unk_1EF279678;
  v1[297] = @".AppleSystemUIFontMonospaced-Bold";
  v2[297] = &unk_1EF279690;
  v1[298] = @".AppleSystemUIFontMonospaced-Heavy";
  v2[298] = &unk_1EF2796A8;
  v1[299] = @".AppleSystemUIFontMonospaced-LightItalic";
  v2[299] = &unk_1EF2796C0;
  v1[300] = @".AppleSystemUIFontMonospaced-RegularItalic";
  v2[300] = &unk_1EF2796D8;
  v1[301] = @".AppleSystemUIFontMonospaced-MediumItalic";
  v2[301] = &unk_1EF2796F0;
  v1[302] = @".AppleSystemUIFontMonospaced-SemiboldItalic";
  v2[302] = &unk_1EF279708;
  v1[303] = @".AppleSystemUIFontMonospaced-BoldItalic";
  v2[303] = &unk_1EF279720;
  v1[304] = @".AppleSystemUIFontMonospaced-HeavyItalic";
  v2[304] = &unk_1EF279738;
  v1[305] = @".AppleSystemUIFontSoft-Ultralight";
  v2[305] = &unk_1EF279750;
  v1[306] = @".AppleSystemUIFontSoft-Thin";
  v2[306] = &unk_1EF279768;
  v1[307] = @".AppleSystemUIFontSoft-Light";
  v2[307] = &unk_1EF279780;
  v1[308] = @".AppleSystemUIFontSoft-Regular";
  v2[308] = &unk_1EF279798;
  v1[309] = @".AppleSystemUIFontSoft-Medium";
  v2[309] = &unk_1EF2797B0;
  v1[310] = @".AppleSystemUIFontSoft-Semibold";
  v2[310] = &unk_1EF2797C8;
  v1[311] = @".AppleSystemUIFontSoft-Bold";
  v2[311] = &unk_1EF2797E0;
  v1[312] = @".AppleSystemUIFontSoft-Heavy";
  v2[312] = &unk_1EF2797F8;
  v1[313] = @".AppleSystemUIFontSoft-Black";
  v2[313] = &unk_1EF279810;
  v1[314] = @".AppleSystemUIFontCompactSoft-Ultralight";
  v2[314] = &unk_1EF279828;
  v1[315] = @".AppleSystemUIFontCompactSoft-Thin";
  v2[315] = &unk_1EF279840;
  v1[316] = @".AppleSystemUIFontCompactSoft-Light";
  v2[316] = &unk_1EF279858;
  v1[317] = @".AppleSystemUIFontCompactSoft-Regular";
  v2[317] = &unk_1EF279870;
  v1[318] = @".AppleSystemUIFontCompactSoft-Medium";
  v2[318] = &unk_1EF279888;
  v1[319] = @".AppleSystemUIFontCompactSoft-Semibold";
  v2[319] = &unk_1EF2798A0;
  v1[320] = @".AppleSystemUIFontCompactSoft-Bold";
  v2[320] = &unk_1EF2798B8;
  v1[321] = @".AppleSystemUIFontCompactSoft-Heavy";
  v2[321] = &unk_1EF2798D0;
  v1[322] = @".AppleSystemUIFontCompactSoft-Black";
  v2[322] = &unk_1EF2798E8;
  v1[323] = @".AppleSystemFallback-Ultralight";
  v2[323] = &unk_1EF27A560;
  v1[324] = @".AppleSystemFallback-Thin";
  v2[324] = &unk_1EF27A578;
  v1[325] = @".AppleSystemFallback-Light";
  v2[325] = &unk_1EF27A590;
  v1[326] = @".AppleSystemFallback-Regular";
  v2[326] = &unk_1EF27A5A8;
  v1[327] = @".AppleSystemFallback-Medium";
  v2[327] = &unk_1EF27A5C0;
  v1[328] = @".AppleSystemFallback-Semibold";
  v2[328] = &unk_1EF27A5D8;
  v1[329] = @".AppleSystemFallback-Bold";
  v2[329] = &unk_1EF27A5F0;
  v1[330] = @".AppleSystemFallback-Heavy";
  v2[330] = &unk_1EF27A608;
  v1[331] = @".AppleSystemFallback-Black";
  v2[331] = &unk_1EF27A620;
  v1[332] = @".AppleSystemUIFaceExtraLargeTitle";
  v2[332] = &unk_1EF2789D0;
  v1[333] = @".AppleSystemUIFaceEmphasizedExtraLargeTitle";
  v2[333] = &unk_1EF2789E8;
  v1[334] = @".AppleSystemUIFaceExtraLargeTitle2";
  v2[334] = &unk_1EF278A00;
  v1[335] = @".AppleSystemUIFaceEmphasizedExtraLargeTitle2";
  v2[335] = &unk_1EF278A18;
  v1[336] = @".AppleSystemUIFontCore-Regular";
  v2[336] = &unk_1EF278F10;
  v1[337] = @".AppleSystemUIFontCore-Bold";
  v2[337] = &unk_1EF278FD0;
  v1[338] = @".AppleSystemUIFontCore-Thin";
  v2[338] = &unk_1EF278F58;
  v1[339] = @".AppleSystemUIFontCore-Light";
  v2[339] = &unk_1EF278F70;
  v1[340] = @".AppleSystemUIFontCore-UltraLight";
  v2[340] = &unk_1EF278F88;
  v1[341] = @".AppleSystemUIFontCore-Medium";
  v2[341] = &unk_1EF278FA0;
  v1[342] = @".AppleSystemUIFontCore-Semibold";
  v2[342] = &unk_1EF278FB8;
  v1[343] = @".AppleSystemUIFontCore-Heavy";
  v2[343] = &unk_1EF278FE8;
  v1[344] = @".AppleSystemUIFontCore-Black";
  v2[344] = &unk_1EF279000;
  v1[345] = @".AppleSystemUIFontCore-Italic";
  v2[345] = &unk_1EF278F28;
  v1[346] = @".AppleSystemUIFontCore-BoldItalic";
  v2[346] = &unk_1EF279090;
  v1[347] = @".AppleSystemUIFontCore-ThinItalic";
  v2[347] = &unk_1EF279018;
  v1[348] = @".AppleSystemUIFontCore-LightItalic";
  v2[348] = &unk_1EF279030;
  v1[349] = @".AppleSystemUIFontCore-UltraLightItalic";
  v2[349] = &unk_1EF279048;
  v1[350] = @".AppleSystemUIFontCore-MediumItalic";
  v2[350] = &unk_1EF279060;
  v1[351] = @".AppleSystemUIFontCore-SemiboldItalic";
  v2[351] = &unk_1EF279078;
  v1[352] = @".AppleSystemUIFontCore-HeavyItalic";
  v2[352] = &unk_1EF2790A8;
  v1[353] = @".AppleSystemUIFontCore-BlackItalic";
  v2[353] = &unk_1EF2790C0;
  v1[354] = @".AppleSystemUIFontCoreCondensed-Regular";
  v2[354] = &unk_1EF279468;
  v1[355] = @".AppleSystemUIFontCoreCondensed-Bold";
  v2[355] = &unk_1EF279480;
  v1[356] = @".AppleSystemUIFontCoreCondensed-Thin";
  v2[356] = &unk_1EF279498;
  v1[357] = @".AppleSystemUIFontCoreCondensed-Light";
  v2[357] = &unk_1EF2794B0;
  v1[358] = @".AppleSystemUIFontCoreCondensed-UltraLight";
  v2[358] = &unk_1EF2794C8;
  v1[359] = @".AppleSystemUIFontCoreCondensed-Medium";
  v2[359] = &unk_1EF2794E0;
  v1[360] = @".AppleSystemUIFontCoreCondensed-Semibold";
  v2[360] = &unk_1EF2794F8;
  v1[361] = @".AppleSystemUIFontCoreCondensed-Heavy";
  v2[361] = &unk_1EF279510;
  v1[362] = @".AppleSystemUIFontCoreCondensed-Black";
  v2[362] = &unk_1EF279528;
  v1[363] = @".AppleSystemUIFaceEmphasizedItalicCaption1";
  v2[363] = &unk_1EF278A30;
  v1[364] = @".AppleSystemUIFaceShortEmphasizedItalicCaption1";
  v2[364] = &unk_1EF278A48;
  v1[365] = @".AppleSystemUIFaceTallCaption1";
  v2[365] = &unk_1EF278A60;
  v1[366] = @".AppleSystemUIFaceTallItalicCaption1";
  v2[366] = &unk_1EF278A78;
  v1[367] = @".AppleSystemUIFaceTallEmphasizedCaption1";
  v2[367] = &unk_1EF278A90;
  v1[368] = @".AppleSystemUIFaceTallEmphasizedItalicCaption1";
  v2[368] = &unk_1EF278AA8;
  v1[369] = @".AppleSystemUIFaceEmphasizedItalicCaption2";
  v2[369] = &unk_1EF278AC0;
  v1[370] = @".AppleSystemUIFaceShortEmphasizedItalicCaption2";
  v2[370] = &unk_1EF278AD8;
  v1[371] = @".AppleSystemUIFaceTallCaption2";
  v2[371] = &unk_1EF278AF0;
  v1[372] = @".AppleSystemUIFaceTallItalicCaption2";
  v2[372] = &unk_1EF278B08;
  v1[373] = @".AppleSystemUIFaceTallEmphasizedCaption2";
  v2[373] = &unk_1EF278B20;
  v1[374] = @".AppleSystemUIFaceTallEmphasizedItalicCaption2";
  v2[374] = &unk_1EF278B38;
  v1[375] = @".AppleSystemUIFaceItalicExtraLargeTitle";
  v2[375] = &unk_1EF278B50;
  v1[376] = @".AppleSystemUIFaceEmphasizedItalicExtraLargeTitle";
  v2[376] = &unk_1EF278B68;
  v1[377] = @".AppleSystemUIFaceItalicExtraLargeTitle2";
  v2[377] = &unk_1EF278B80;
  v1[378] = @".AppleSystemUIFaceEmphasizedItalicExtraLargeTitle2";
  v2[378] = &unk_1EF278B98;
  v1[379] = @".AppleSystemUIFaceCondensedHeadline";
  v2[379] = &unk_1EF278BE0;
  v1[380] = @".AppleSystemUIFaceCondensedTitle1";
  v2[380] = &unk_1EF278BF8;
  v1[381] = @".AppleSystemUIFaceCondensedTitle2";
  v2[381] = &unk_1EF278C10;
  v1[382] = @".AppleSystemUIFaceCondensedTitle3";
  v2[382] = &unk_1EF278C28;
  v1[383] = @".AppleSystemUIFaceCondensedBody";
  v2[383] = &unk_1EF278C40;
  v1[384] = @".AppleSystemUIFacePreferredSize-Regular";
  v2[384] = &unk_1EF278BB0;
  v1[385] = @".AppleSystemUIFacePreferredSize-Bold";
  v2[385] = &unk_1EF278BC8;
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:386];
  qword_1ED5674D8 = result;
  return result;
}

uint64_t CTFontGetPlistFromGSFontCache(const __CFString *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    if (qword_1ED568200 != -1)
    {
      dispatch_once(&qword_1ED568200, &__block_literal_global_8);
    }

    if (_MergedGlobals_35 != 1)
    {
      return 0;
    }
  }

  return MEMORY[0x1EEE08D80](a1);
}

uint64_t ___ZL23DetermineTypeStylesSpecv_block_invoke()
{
  result = [objc_msgSend(CTFontGetPlistFromGSFontCache(@"CoreTextConfig.plist" 0)];
  if (result)
  {
    _MergedGlobals_76 = 1;
    kFont2X = &kFont2XCompact;
    _MergedGlobals_2 = &kTypeHierarchySpecWatch;
    qword_1ED566F08 = kFontSoftCompact;
    result = _os_feature_enabled_impl();
    v1 = &kFontJapaneseWatch;
    if (result)
    {
      v1 = &kFontJapaneseAltWatch;
    }

    qword_1ED567480 = v1;
    off_1ED566F10[0] = &kFontKoreanWatch;
    qword_1ED566F18 = kFontCompactRounded;
    off_1ED566F20[0] = kFallbacksCompact;
    gDisableLooseFontNameMatchingOverride = 1;
  }

  return result;
}

uint64_t ___Z29CTFontGetPlistFromGSFontCachePK10__CFStringb_block_invoke()
{
  result = GSFontGetCacheDictionary();
  _MergedGlobals_35 = result != 0;
  return result;
}

const __CFString *ExuberatedGroupForTallPseudolanguageIfEnabled(void)::$_0::__invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (result)
  {
    result = GetExuberatedGroupForLanguage(result, 0);
    dword_1ED567B6C = result;
  }

  return result;
}

uint64_t _LargestExuberatedGroupForLanguages(CFArrayRef theArray, const __CFString **a2, int a3, BOOL *a4)
{
  v4 = theArray;
  if (a4)
  {
    *a4 = 0;
  }

  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v6 = Count;
      v7 = 0;
      v23 = 0;
      v8 = 0;
      v9 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, v9);
        v24 = 0;
        v25 = 0;
        ExuberatedGroupForLanguage = GetExuberatedGroupForLanguage(ValueAtIndex, &v24);

        v12 = atomic_load_explicit(&v25, memory_order_acquire);
        v13 = v12;
        if (v12 == @"ar")
        {
          v8 = 1;
        }

        else if (v12)
        {
          v8 |= CFEqual(v12, @"ar") != 0;
        }

        if (ExuberatedGroupForLanguage <= v7)
        {
          ValueAtIndex = v23;
          ExuberatedGroupForLanguage = v7;
        }

        else
        {
          v14 = v4;
          v15 = v6;
          v16 = atomic_load_explicit(&v25, memory_order_acquire);
          if (v16 == @"ur")
          {

LABEL_17:
            if (a4)
            {
              *a4 = (v8 & 1) == 0;
            }

            v6 = v15;
            v4 = v14;
            if (v8 & a3)
            {
              goto LABEL_24;
            }

            goto LABEL_23;
          }

          v17 = v16;
          if (v16)
          {
            v18 = CFEqual(v16, @"ur");

            if (v18)
            {
              goto LABEL_17;
            }
          }

          else
          {
          }

          v6 = v15;
          v4 = v14;
        }

LABEL_23:
        v23 = ValueAtIndex;
        v7 = ExuberatedGroupForLanguage;
LABEL_24:

        if (v6 == ++v9)
        {
          goto LABEL_27;
        }
      }
    }
  }

  v23 = 0;
  v7 = 0;
LABEL_27:
  if (a2)
  {
    *a2 = v23;
  }

  return v7;
}

uint64_t GetExuberatedGroupForLanguage(const __CFString *a1, const __CFString **a2)
{
  os_unfair_lock_lock_with_options();
  v4 = [qword_1ED567B88 objectForKeyedSubscript:a1];
  if (v4)
  {
    v5 = v4;
    if (a2)
    {
      *a2 = [qword_1ED567B90 objectForKeyedSubscript:a1];
    }

    v6 = [v5 intValue];
    os_unfair_lock_unlock(&stru_1ED567B60);
    return v6;
  }

  os_unfair_lock_unlock(&stru_1ED567B60);
  v18 = 0;
  v20.isa = 0xAAAAAAAAAAAAAAAALL;
  MaximizedLocaleIdentifier(&v20, a1);
  ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(*MEMORY[0x1E695E480], atomic_load_explicit(&v20, memory_order_acquire));
  v9 = ComponentsFromLocaleIdentifier;
  if (!ComponentsFromLocaleIdentifier)
  {
    TCFRef<__CTFont const*>::Retain(&v18, 0);
LABEL_16:
    v13 = 0;
    goto LABEL_17;
  }

  Value = CFDictionaryGetValue(ComponentsFromLocaleIdentifier, *MEMORY[0x1E695E6F0]);
  TCFRef<__CTFont const*>::Retain(&v18, Value);
  if (Value != @"vi")
  {
    if (!Value || ((v11 = CFEqual(Value, @"vi"), Value != @"lut") ? (v12 = v11 == 0) : (v12 = 0), v12 && !CFEqual(Value, @"lut")))
    {
      v16 = CFDictionaryGetValue(v9, *MEMORY[0x1E695E6F8]);
      if (v16)
      {
        v17 = CFDictionaryGetValue(&unk_1EF275D18, v16);
        if (v17)
        {
          valuePtr = -1431655766;
          CFNumberGetValue(v17, kCFNumberIntType, &valuePtr);
          v13 = valuePtr;
          goto LABEL_17;
        }
      }

      goto LABEL_16;
    }
  }

  v13 = 2;
LABEL_17:

  os_unfair_lock_lock_with_options();
  if (!qword_1ED567B88)
  {
    qword_1ED567B88 = objc_alloc_init(MEMORY[0x1E695DF90]);
    qword_1ED567B90 = objc_alloc_init(MEMORY[0x1E695DF90]);
  }

  v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v13];
  [qword_1ED567B88 setObject:v14 forKeyedSubscript:a1];
  explicit = atomic_load_explicit(&v18, memory_order_acquire);
  [qword_1ED567B90 setObject:explicit forKeyedSubscript:a1];
  os_unfair_lock_unlock(&stru_1ED567B60);
  if (a2)
  {
    *a2 = atomic_exchange(&v18, 0);
  }

  return v13;
}

void MaximizedLocaleIdentifier(const __CFString *a1, const __CFString *a2)
{
  v25 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[0] = v4;
  v23[1] = v4;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  v24 = v23;
  CStringPtr = CFStringGetCStringPtr(a2, 0x600u);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  if (!CStringPtr)
  {
    Length = CFStringGetLength(a2);
    v8 = CFStringGetMaximumSizeForEncoding(Length, 0x600u) + 1;
    v9 = v20;
    if (v8 <= v21 - v20)
    {
      if (v8 < v21 - v20)
      {
        v21 = &v20[v8];
      }
    }

    else
    {
      std::vector<char,TInlineBufferAllocator<char,30ul>>::__append(&v20, v8 - (v21 - v20));
      v9 = v20;
    }

    CFStringGetCString(a2, v9, v8, 0x600u);
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  }

  *(v19 + 13) = v6;
  v19[0] = v6;
  v17 = v6;
  v18 = v6;
  v15 = v6;
  v16 = v6;
  v13 = v6;
  v14 = v6;
  *bytes = v6;
  v12 = v6;
  v10 = uloc_addLikelySubtags();
  a1->isa = CFStringCreateWithBytes(*MEMORY[0x1E695E480], bytes, v10, 0x600u, 0);
  *bytes = &v20;
  std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](bytes);
}

uint64_t std::__split_buffer<char,TInlineBufferAllocator<char,30ul> &>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (*(a1 + 16) != v2)
  {
    *(a1 + 16) = v2;
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 32);
    if (v4 <= v3 && v4 + 30 > v3)
    {
      if (*(a1 + 24) == *(v4 + 32))
      {
        *(v4 + 32) = v3;
      }
    }

    else
    {
      operator delete(v3);
    }
  }

  return a1;
}

void addNames(__CFString *a1, __CFString *a2, __CFString *a3, atomic_ullong *a4)
{
  v15 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v11 = @"type";
  v12 = @"string";
  v13 = @"1";
  v14 = a1;
  CFArrayAppendValue(Mutable, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v11 count:2]);
  v11 = @"type";
  v12 = @"string";
  v13 = @"2";
  v14 = a2;
  CFArrayAppendValue(Mutable, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v11 count:2]);
  if (a3 == @".AppleSystemUIFont")
  {
    goto LABEL_4;
  }

  if (!a3)
  {
    v10 = 0;
    goto LABEL_6;
  }

  v9 = CFEqual(a3, @".AppleSystemUIFont");
  v10 = a3;
  if (v9)
  {
LABEL_4:
    v10 = @".AppleSystemUIFontRegular";
  }

LABEL_6:
  v11 = @"type";
  v12 = @"string";
  v13 = @"4";
  v14 = v10;
  CFArrayAppendValue(Mutable, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v11 count:2]);
  v11 = @"type";
  v12 = @"string";
  v13 = @"3";
  v14 = a3;
  CFArrayAppendValue(Mutable, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v11 count:2]);
  v11 = @"type";
  v12 = @"string";
  v13 = @"18";
  v14 = a3;
  CFArrayAppendValue(Mutable, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v11 count:2]);
  v11 = @"type";
  v12 = @"string";
  v13 = @"7";
  v14 = @"Apple Inc.";
  CFArrayAppendValue(Mutable, [MEMORY[0x1E695DF20] dictionaryWithObjects:&v13 forKeys:&v11 count:2]);
  CFDictionaryAddValue(atomic_load_explicit(a4, memory_order_acquire), @"name", a3);
  CFDictionaryAddValue(atomic_load_explicit(a4, memory_order_acquire), @"familyName", a1);
  CFDictionaryAddValue(atomic_load_explicit(a4, memory_order_acquire), @"version", @"1.0");
  CFDictionaryAddValue(atomic_load_explicit(a4, memory_order_acquire), @"FontNames", Mutable);
}

void addMetrics(int a1, int a2, int a3, const void *a4, const void *a5, atomic_ullong *a6)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v13 = weightString(a1);
  CFDictionaryAddValue(Mutable, @"weightClass", v13);
  if (a2 == 1)
  {
    CFDictionaryAddValue(Mutable, @"italicAngle", @"12.5");
  }

  if (a3 == 1)
  {
    v14 = @"shortTrait";
    goto LABEL_7;
  }

  if (a3 == -1)
  {
    v14 = @"tallTrait";
LABEL_7:
    CFDictionaryAddValue(Mutable, v14, @"1");
  }

  if (a4 && a5)
  {
    CFDictionaryAddValue(Mutable, a4, a5);
  }

  CFDictionaryAddValue(atomic_load_explicit(a6, memory_order_acquire), @"FontMetrics", Mutable);
}

void std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = (v1 + 54);
    if (v1 + 3 <= v2)
    {
      v4 = v3 >= v2;
      v5 = v3 == v2;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    if (!v5 && v4)
    {
      if (v1[2] == v1[7])
      {
        v1[7] = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

void LanguageNormalizedForPresetFallbacks(__CFString *a1@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  if (a1)
  {
    LanguageIdentifierByNormalizing(a1, 0, a2);
  }

  else
  {
    CreateNormalizedPreferredLanguage(0, a2);
  }
}

void CreateNormalizedPreferredLanguage(unsigned int a1@<W0>, atomic_ullong *a2@<X8>)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  CopyPreferredLanguage(&v4);
  LanguageIdentifierByNormalizing(atomic_load_explicit(&v4, memory_order_acquire), a1, a2);
}

__CFString *GetLocalizedTrimSetKey(__CFString *a1, unsigned int *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  LanguageNormalizedForPresetFallbacks(a1, &v5);
  LocalizedTrimSetKeyForNormalizedLanguage = GetLocalizedTrimSetKeyForNormalizedLanguage(atomic_load_explicit(&v5, memory_order_acquire), a2);

  return LocalizedTrimSetKeyForNormalizedLanguage;
}

void CopyPreferredLanguage(atomic_ullong *a1@<X8>)
{
  os_unfair_lock_lock_with_options();
  *a1 = qword_1ED567B98;
  if (qword_1ED567BA0 != -1)
  {
    dispatch_once_f(&qword_1ED567BA0, 0, GetLocaleChangedCount(void)::$_0::__invoke);
  }

  if (dword_1ED567B68 != gLocaleChangedCount)
  {
    dword_1ED567B68 = gLocaleChangedCount;
    v2 = CFLocaleCopyPreferredLanguages();
    v3 = v2;
    if (v3)
    {
      v4 = v3;
      Count = CFArrayGetCount(v3);

      if (Count >= 1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
        TCFRef<__CTFont const*>::Retain(a1, ValueAtIndex);
      }
    }

    else
    {
    }

    explicit = atomic_load_explicit(a1, memory_order_acquire);
    v8 = qword_1ED567B98;
    if (qword_1ED567B98 != explicit)
    {
      qword_1ED567B98 = explicit;
    }
  }

  os_unfair_lock_unlock(&stru_1ED567B64);
}

void LanguageIdentifierByNormalizing(__CFString *a1@<X0>, unsigned int a2@<W1>, atomic_ullong *a3@<X8>)
{
  if (!a1)
  {
    *a3 = 0;
    return;
  }

  os_unfair_lock_lock_with_options();
  v6 = a2;
  v7 = *&_MergedGlobals_17[8 * a2 + 128];
  v8 = MEMORY[0x1E695E480];
  if (v7)
  {
    if (*&_MergedGlobals_17[4 * a2 + 112] == TGenerationSeed::sGeneration)
    {
      goto LABEL_6;
    }

    CFRelease(v7);
  }

  v62.data = CFDictionaryCreateMutable(*v8, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = &_MergedGlobals_17[8 * a2];
  *(v9 + 16) = atomic_exchange(&v62.data, 0);

  *&_MergedGlobals_17[4 * a2 + 112] = TGenerationSeed::sGeneration;
  v7 = *(v9 + 16);
LABEL_6:
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  v62.data = CFDictionaryGetValue(v7, a1);
  *a3 = atomic_exchange(&v62.data, 0);

  if (!atomic_load_explicit(a3, memory_order_acquire))
  {
    if (a1 == @"zh" || CFStringHasPrefix(a1, @"zh"))
    {
      v62.data = a1;
      v10 = *v8;
      v62.info = CFArrayCreate(*v8, &v62.data, 1, MEMORY[0x1E695E9C0]);
      if (!a2)
      {
        if (a1 == @"zh-Hant" || (v11 = CFEqual(a1, @"zh-Hant"), a1 == @"zh") || v11 || CFEqual(a1, @"zh"))
        {
          v12 = [&unk_1EF275CC8 objectForKeyedSubscript:a1];
          v13 = CFLocaleCopyPreferredLanguages();
          v14 = CFBundleCopyLocalizationsForPreferences(v12, v13);
          v15 = v14;
          if (v15)
          {
            v16 = v15;
            Count = CFArrayGetCount(v15);

            if (Count)
            {
              TCFRef<__CTFont const*>::Retain(&v62.info, v14);
            }
          }

          else
          {
          }
        }
      }

      if (a2 == 2)
      {
        v27 = &unk_1EF27B760;
      }

      else
      {
        v27 = &unk_1EF27B778;
      }

      v28 = CFBundleCopyLocalizationsForPreferences(v27, atomic_load_explicit(&v62.info, memory_order_acquire));
      v29 = v28;
      if (!v29)
      {

        goto LABEL_39;
      }

      v30 = v29;
      v31 = CFArrayGetCount(v29);

      if (!v31)
      {
LABEL_39:
        v35 = a1;
LABEL_42:
        v62.isa = v35;
LABEL_43:

        info = v62.info;
LABEL_114:

        CFDictionarySetValue(*&_MergedGlobals_17[8 * v6 + 128], a1, atomic_load_explicit(a3, memory_order_acquire));
        goto LABEL_115;
      }

      v32 = v28;
      if (v32)
      {
        v33 = v32;
        ValueAtIndex = CFArrayGetValueAtIndex(v32, 0);

        if (a2)
        {
LABEL_34:
          if (ValueAtIndex != @"zxx" && (!ValueAtIndex || !CFEqual(ValueAtIndex, @"zxx")))
          {
            goto LABEL_41;
          }

          goto LABEL_39;
        }

        if (ValueAtIndex == @"zh-Hant")
        {
LABEL_47:
          ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(v10, a1);
          Value = CFDictionaryGetValue(ComponentsFromLocaleIdentifier, *MEMORY[0x1E695E6D0]);
          if (Value != @"HK")
          {
            v39 = Value;
            if (Value)
            {
              if (CFEqual(Value, @"HK"))
              {
                goto LABEL_50;
              }

              if (v39 == @"MO" || CFEqual(v39, @"MO"))
              {
                v40 = @"zh-MO";
                goto LABEL_51;
              }
            }

            goto LABEL_34;
          }

LABEL_50:
          v40 = @"zh-HK";
LABEL_51:
          v62.isa = v40;

          goto LABEL_43;
        }

        if (ValueAtIndex)
        {
          if (!CFEqual(ValueAtIndex, @"zh-Hant"))
          {
            goto LABEL_34;
          }

          goto LABEL_47;
        }
      }

      else
      {

        ValueAtIndex = 0;
      }

LABEL_41:
      v35 = ValueAtIndex;
      goto LABEL_42;
    }

    v18 = *v8;
    v19 = CFLocaleCreateComponentsFromLocaleIdentifier(*v8, a1);
    v62.info = 0xAAAAAAAAAAAAAAAALL;
    v62.data = v19;
    explicit = atomic_load_explicit(&v62.data, memory_order_acquire);
    v21 = *MEMORY[0x1E695E6F0];
    if (explicit)
    {
      explicit = CFDictionaryGetValue(explicit, *MEMORY[0x1E695E6F0]);
    }

    v62.isa = explicit;
    v62.info = atomic_exchange(&v62, 0);

    if (!atomic_load_explicit(&v62.info, memory_order_acquire))
    {
LABEL_111:
      v49 = a1;
      goto LABEL_112;
    }

    v22 = atomic_load_explicit(&v62.data, memory_order_acquire);
    key = *MEMORY[0x1E695E6F8];
    v23 = CFDictionaryGetValue(v22, *MEMORY[0x1E695E6F8]);
    v24 = atomic_load_explicit(&v62.info, memory_order_acquire);
    if (v24 == @"yue")
    {
    }

    else
    {
      v25 = v24;
      if (!v24)
      {

        goto LABEL_69;
      }

      v26 = CFEqual(v24, @"yue");

      if (!v26)
      {
LABEL_69:
        v43 = atomic_load_explicit(&v62.info, memory_order_acquire);
        if (v43 == @"wuu")
        {
        }

        else
        {
          v44 = v43;
          if (!v43)
          {

            goto LABEL_85;
          }

          v45 = CFEqual(v43, @"wuu");

          if (!v45)
          {
LABEL_85:
            v50 = atomic_load_explicit(&v62.info, memory_order_acquire);
            if (v50 == @"und")
            {
            }

            else
            {
              v51 = v50;
              if (!v50)
              {
                isa = 0;
LABEL_100:

LABEL_101:
                if (a2)
                {
                  if (v23)
                  {
                    Mutable = CFDictionaryCreateMutable(v18, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    CFDictionarySetValue(Mutable, v21, atomic_load_explicit(&v62.info, memory_order_acquire));
                    CFDictionarySetValue(Mutable, key, v23);
                    v62.isa = CFLocaleCreateLocaleIdentifierFromComponents(v18, Mutable);

                    v62.isa = CFLocaleCreateCanonicalLanguageIdentifierFromString(v18, atomic_load_explicit(&v62.info, memory_order_acquire));
                    v62.isa = atomic_exchange(&v62.info, 0);

LABEL_113:
                    info = v62.data;
                    goto LABEL_114;
                  }

                  if ([objc_msgSend(MEMORY[0x1E695DF58] "systemLanguages")])
                  {
                    goto LABEL_111;
                  }

LABEL_138:
                  v62.isa = atomic_exchange(&v62.info, 0);
                  goto LABEL_113;
                }

                if (!v23)
                {
                  v62.isa = 0xAAAAAAAAAAAAAAAALL;
                  MaximizedLocaleIdentifier(&v62, a1);

                  v23 = CFDictionaryGetValue(atomic_load_explicit(&v62.data, memory_order_acquire), key);
                }

                if (v23 != @"Arab")
                {
                  if (!v23)
                  {
                    goto LABEL_138;
                  }

                  if (!CFEqual(v23, @"Arab"))
                  {
                    if (v23 != @"Aran" && !CFEqual(v23, @"Aran"))
                    {
                      if (v23 == @"Mymr" || CFEqual(v23, @"Mymr"))
                      {
                        v57 = atomic_load_explicit(&v62.info, memory_order_acquire);
                        if (v57 == @"my")
                        {
                        }

                        else
                        {
                          v58 = v57;
                          if (!v57)
                          {

                            goto LABEL_138;
                          }

                          v59 = CFEqual(v57, @"my");

                          if (!v59)
                          {
                            goto LABEL_138;
                          }
                        }

                        if (![objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
                        {
                          goto LABEL_138;
                        }
                      }

                      else if (v23 != @"Qaag" && !CFEqual(v23, @"Qaag"))
                      {
                        goto LABEL_138;
                      }

                      v49 = @"my-Qaag";
                      goto LABEL_112;
                    }

                    v56 = [&unk_1EF275CF0 objectForKeyedSubscript:{atomic_load_explicit(&v62.info, memory_order_acquire)}];
                    if (!v56 || ![objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")])
                    {
                      v49 = @"ur";
                      goto LABEL_112;
                    }
                  }
                }

                v49 = @"ar";
LABEL_112:
                v62.isa = v49;
                goto LABEL_113;
              }

              v52 = CFEqual(v50, @"und");

              if (!v52)
              {
                goto LABEL_101;
              }
            }

            v62.isa = 0xAAAAAAAAAAAAAAAALL;
            MaximizedLocaleIdentifier(&v62, a1);

            v53 = atomic_load_explicit(&v62.data, memory_order_acquire);
            if (v53)
            {
              v53 = CFDictionaryGetValue(v53, v21);
            }

            v61 = v53;

            if (v23)
            {
              v23 = CFDictionaryGetValue(atomic_load_explicit(&v62.data, memory_order_acquire), key);
            }

            isa = v62.isa;
            goto LABEL_100;
          }
        }

        if (v23 == @"Hant" || v23 && CFEqual(v23, @"Hant"))
        {
          if (a2 == 3 || !a2)
          {
            v46 = atomic_load_explicit(&v62.data, memory_order_acquire);
            v47 = CFDictionaryGetValue(v46, *MEMORY[0x1E695E6D0]);
            if (v47 == @"MO")
            {
LABEL_82:
              v49 = @"zh-MO";
              goto LABEL_112;
            }

            v48 = v47;
            if (v47)
            {
              if (CFEqual(v47, @"MO"))
              {
                goto LABEL_82;
              }

              if (v48 == @"HK" || CFEqual(v48, @"HK"))
              {
LABEL_118:
                v49 = @"zh-HK";
                goto LABEL_112;
              }
            }
          }

          goto LABEL_119;
        }

        goto LABEL_83;
      }
    }

    if (v23 != @"Hans" && (!v23 || !CFEqual(v23, @"Hans")))
    {
      if ((v41 = atomic_load_explicit(&v62.data, memory_order_acquire), v42 = CFDictionaryGetValue(v41, *MEMORY[0x1E695E6D0]), v23 == @"Hant") || v23 && CFEqual(v23, @"Hant") || v42 != @"CN" && (!v42 || !CFEqual(v42, @"CN")))
      {
        if (a2 == 3 || !a2)
        {
          if (v42 == @"MO" || v42 && CFEqual(v42, @"MO"))
          {
            goto LABEL_82;
          }

          goto LABEL_118;
        }

LABEL_119:
        v49 = @"zh-Hant";
        goto LABEL_112;
      }
    }

LABEL_83:
    v49 = @"zh-Hans";
    goto LABEL_112;
  }

LABEL_115:
  os_unfair_lock_unlock(&stru_1ED567B5C);
}

__CFString *GetLocalizedTrimSetKeyForNormalizedLanguage(__CFString *cf1, unsigned int *a2)
{
  if (cf1 == @"zh-Hans" || cf1 && CFEqual(cf1, @"zh-Hans"))
  {
    v4 = 1;
LABEL_25:
    *a2 = v4;
    return @"system-ui";
  }

  if (cf1 == @"zh-Hant" || cf1 && CFEqual(cf1, @"zh-Hant"))
  {
    v4 = 2;
    goto LABEL_25;
  }

  if (cf1 == @"zh-HK" || cf1 && CFEqual(cf1, @"zh-HK"))
  {
    v4 = 4;
    goto LABEL_25;
  }

  if (cf1 == @"zh-MO" || cf1 && CFEqual(cf1, @"zh-MO"))
  {
    v4 = 8;
    goto LABEL_25;
  }

  if (cf1 == @"ja" || cf1 && CFEqual(cf1, @"ja"))
  {
    v4 = 16;
    goto LABEL_25;
  }

  if (cf1 == @"ar" || cf1 && CFEqual(cf1, @"ar"))
  {
    v4 = 32;
    goto LABEL_25;
  }

  if (cf1 == @"hi" || cf1 && CFEqual(cf1, @"hi"))
  {
    v9 = 0xAAAAAAAAAAAAAAAALL;
    CopyPreferredNumberingSystem(&v9);
    v6 = atomic_load_explicit(&v9, memory_order_acquire);
    if (v6 == @"deva")
    {
    }

    else
    {
      v7 = v6;
      if (!v6)
      {

LABEL_37:
        return 0;
      }

      v8 = CFEqual(v6, @"deva");

      if (!v8)
      {
        goto LABEL_37;
      }
    }

    *a2 = 64;

    return @"system-ui";
  }

  return 0;
}

void *TPerThreadLRUCache<TRequestCacheNode,(ThreadSpecificKey)3,16ul>::TPerThreadLRUCache(void *a1)
{
  *a1 = 0;
  Table = GetTable();
  if (!Table || (v3 = Table[6]) == 0)
  {
    operator new();
  }

  if (*v3 != TGenerationSeed::sGeneration)
  {
    TLRUCacheImp<TRequestCacheNode,16ul>::RemoveAll(Table[6]);
  }

  *a1 = v3;
  return a1;
}

void TDescriptorSource::CopyDescriptor(atomic_ullong **this@<X0>, const __CFURL *a2@<X1>, const __CFString *a3@<X2>, const __CFString *a4@<X3>, void *a5@<X8>)
{
  v18 = 0xAAAAAAAAAAAAAAAALL;
  if (a3)
  {
    v8 = a4 == 0;
  }

  else
  {
    v8 = 1;
  }

  v9 = !v8;
  TDescriptorSource::CopyDescriptorUncached(this, a2, &v18);
  explicit = atomic_load_explicit(&v18, memory_order_acquire);
  if ((v9 & 1) == 0 && explicit)
  {
    v17 = 0xAAAAAAAAAAAAAAAALL;
    v11 = atomic_load_explicit(&v18, memory_order_acquire);
    v12 = v11;
    v13 = v11[5];
    if ((*(v13 + 4) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(v11[5], 0, 0.0);
    }

    (*(*atomic_load_explicit(v13 + 4, memory_order_acquire) + 504))(&v17);

    if (!atomic_load_explicit(&v17, memory_order_acquire))
    {
      *a5 = 0;

      goto LABEL_17;
    }
  }

  v14 = *this;
  v15 = atomic_load_explicit(&v18, memory_order_acquire);
  v16 = atomic_load_explicit(v14, memory_order_acquire);
  if (v15)
  {
    [v16 setObject:v15 forKey:a2];
  }

  else
  {
    [v16 removeObjectForKey:a2];
  }

  *a5 = atomic_exchange(&v18, 0);
LABEL_17:
}

void TDescriptorSource::CopyDescriptorUncached(atomic_ullong **this@<X0>, const __CFURL *a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    v7 = 0xAAAAAAAAAAAAAAAALL;
    TPurgeableCache::RetainedValueForKey(*this, a2, &v6);
    v7 = atomic_exchange(&v6, 0);

    if (!atomic_load_explicit(&v7, memory_order_acquire))
    {
      operator new();
    }

    *a3 = atomic_exchange(&v7, 0);
  }

  else
  {
    *a3 = 0;
  }
}

void TPurgeableCache::RetainedValueForKey(atomic_ullong *this@<X0>, const void *a2@<X1>, atomic_ullong *a3@<X8>)
{
  *a3 = 0;
  v6 = objc_autoreleasePoolPush();
  TCFRef<__CTFont const*>::Retain(a3, [atomic_load_explicit(this memory:"objectForKey:" order:a2acquire)]);

  objc_autoreleasePoolPop(v6);
}

uint64_t TableFlagForIdentifier(int a1)
{
  if (a1 <= 1717920115)
  {
    if (a1 <= 1296388678)
    {
      if (a1 <= 1195656517)
      {
        if (a1 == 1111577413)
        {
          return 0x10000;
        }

        if (a1 == 1129270354)
        {
          return 32;
        }
      }

      else
      {
        switch(a1)
        {
          case 1195656518:
            return 256;
          case 1196445523:
            return 128;
          case 1196643650:
            return 64;
        }
      }
    }

    else if (a1 > 1398163231)
    {
      switch(a1)
      {
        case 1398163232:
          return 1024;
        case 1634626418:
          return 0x20000;
        case 1651731566:
          return 0x8000;
      }
    }

    else
    {
      switch(a1)
      {
        case 1296388679:
          return 2;
        case 1330851634:
          return 0x100000;
        case 1398030676:
          return 0x200000;
      }
    }
  }

  else if (a1 > 1819566438)
  {
    if (a1 > 1886547823)
    {
      switch(a1)
      {
        case 1886547824:
          return 2048;
        case 1935829368:
          return 0x2000;
        case 1953653099:
          return 8;
      }
    }

    else
    {
      switch(a1)
      {
        case 1819566439:
          return 0x400000;
        case 1836020344:
          return 4;
        case 1869636196:
          return 0x40000;
      }
    }
  }

  else if (a1 > 1801810541)
  {
    switch(a1)
    {
      case 1801810542:
        return 1;
      case 1801810552:
        return 0x4000;
      case 1818452338:
        return 4096;
    }
  }

  else
  {
    switch(a1)
    {
      case 1717920116:
        return 16;
      case 1751474532:
        return 0x80000;
      case 1786082164:
        return 512;
    }
  }

  return 0;
}

void TBaseFont::CopyNativeFont(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  if (atomic_load_explicit(this + 13, memory_order_acquire))
  {
    *a2 = atomic_load_explicit(this + 13, memory_order_acquire);
    return;
  }

  v24 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 200))(&v24);
  if (!atomic_load_explicit(&v24, memory_order_acquire))
  {
    goto LABEL_11;
  }

  v23 = 0xAAAAAAAAAAAAAAAALL;
  explicit = atomic_load_explicit(&v24, memory_order_acquire);
  v5 = atomic_load_explicit(this + 11, memory_order_acquire);
  if ((*(*this + 16))(this) == 1414088260)
  {
    v6 = 0;
  }

  else
  {
    v6 = atomic_load_explicit(this + 12, memory_order_acquire);
  }

  TCGFontCache::CopyFont(explicit, v5, v6, &v23);
  if (!atomic_load_explicit(&v23, memory_order_acquire))
  {
    atomic_load_explicit(&v24, memory_order_acquire);
    atomic_load_explicit(this + 11, memory_order_acquire);
    atomic_load_explicit(this + 12, memory_order_acquire);
    CFLog();

LABEL_11:
    v23 = 0xAAAAAAAAAAAAAAAALL;
    v11 = (*(*this + 16))(this);
    if (v11 == 1414809156 || v11 == 1413695044)
    {
      TDescriptorSource::TDescriptorSource(&v22);
      TDescriptorSource::CreateDefaultDescriptor(0, &v23);
    }

    else
    {
      TDescriptorSource::TDescriptorSource(&v22);
      TDescriptorSource::CopyLastResort(&v23);
    }

    v22 = 0xAAAAAAAAAAAAAAAALL;
    TBaseFont::CopyNativeFontForDescriptor(&v22, this, atomic_load_explicit(&v23, memory_order_acquire));
    if (!atomic_load_explicit(&v22, memory_order_acquire))
    {
      v13 = (*(*this + 16))(this);
      if (v13 == 1414809156 || v13 == 1413695044)
      {
        TDescriptorSource::TDescriptorSource(v20);
        TDescriptorSource::CopyLastResort(&v21);

        TBaseFont::CopyNativeFontForDescriptor(&v21, this, atomic_load_explicit(&v23, memory_order_acquire));
      }
    }

    if (atomic_load_explicit(&v22, memory_order_acquire))
    {
      v15 = 0;
      v16 = atomic_exchange(&v22, 0);
      v17 = this + 13;
      atomic_compare_exchange_strong(v17, &v15, v16);
      if (v15)
      {
        v18 = v16;
      }

      else
      {
        v18 = 0;
      }

      v19 = atomic_load_explicit(v17, memory_order_acquire);
    }

    else
    {
      CFLog();
      v19 = 0;
    }

    *a2 = v19;

    goto LABEL_33;
  }

  v7 = atomic_load_explicit(&v23, memory_order_acquire);
  v8 = 0;
  v9 = this + 13;
  atomic_compare_exchange_strong(v9, &v8, v7);
  if (v8)
  {

    v10 = atomic_load_explicit(v9, memory_order_acquire);
  }

  else
  {

    v10 = atomic_exchange(&v23, 0);
  }

  *a2 = v10;
LABEL_33:
}

uint64_t TBaseFont::HasTable(atomic_uint *this, int a2)
{
  if (a2 && (v4 = TableFlagForIdentifier(a2), (this[44] & v4) == 0))
  {
    v6 = v4;
    InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(this);
    v8 = CGFontCopyTableTags(InitializedGraphicsFont);
    v9 = v8;
    if (v8 && (Count = CFArrayGetCount(v8)) != 0)
    {
      v11 = Count;
      v5 = 0;
      v12 = 0;
      v13 = 0x7FFFFF;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v12);
        if (ValueAtIndex == a2)
        {
          v5 = 1;
          v15 = v6;
        }

        else
        {
          v15 = TableFlagForIdentifier(ValueAtIndex);
        }

        v13 &= ~v15;
        ++v12;
      }

      while (v11 != v12);
    }

    else
    {
      v5 = 0;
      v13 = 0x7FFFFF;
    }

    atomic_fetch_or_explicit(this + 44, v13, memory_order_relaxed);
  }

  else
  {
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t TBaseFont::IsAppleColorEmoji(TBaseFont *this)
{
  if ((*(this + 46) & 0x40) == 0)
  {
    TBaseFont::DetermineFontFlags(this, 0x40u);
  }

  return (*(this + 45) >> 6) & 1;
}

uint64_t TCFBase<TFont>::Allocate()
{
  if (TCFBase<TFont>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TFont>::GetTypeID(void)::once, 0, TCFBase<TFont>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return _CFRuntimeCreateInstance();
}

unint64_t TFont::InitBaseFont(atomic_ullong *a1)
{
  if (!atomic_load_explicit(a1, memory_order_acquire))
  {
    return 0;
  }

  v2 = atomic_load_explicit(a1, memory_order_acquire);
  v3 = v2;
  v4 = v2[5];
  if ((*(v4 + 4) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(v2[5], 0, 0.0);
  }

  explicit = atomic_load_explicit(v4 + 4, memory_order_acquire);

  if (explicit)
  {
    atomic_fetch_add_explicit((explicit + 8), 1u, memory_order_relaxed);
  }

  else
  {
    v7 = *(*(atomic_load_explicit(a1, memory_order_acquire) + 40) + 16);
    v8 = (TDescriptor::GetSystemUIFontOptions(v6) & v7) != 0;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    TDescriptorSource::TDescriptorSource(&v13);
    TDescriptorSource::CreateDefaultDescriptor(v8, &v14);
    v9 = atomic_load_explicit(&v14, memory_order_acquire);
    v10 = v9;
    v11 = v9[5];
    if ((*(v11 + 4) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(v9[5], 0, 0.0);
    }

    explicit = atomic_load_explicit(v11 + 4, memory_order_acquire);
    if (explicit)
    {
      atomic_fetch_add_explicit((explicit + 8), 1u, memory_order_relaxed);
    }
  }

  return explicit;
}

void TFont::InitMatrix(TFont *this, const CGAffineTransform *a2, const __CTFontDescriptor *a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    if (!a3)
    {
      goto LABEL_23;
    }

    v8 = (*(a3 + 5) + 8);
    atomic_load_explicit(v8, memory_order_acquire);
    explicit = atomic_load_explicit(v8, memory_order_acquire);
    if (explicit && (v10 = CFDictionaryGetValue(explicit, @"NSCTFontMatrixAttribute")) != 0)
    {
      v11 = v10;
      v6 = operator new(0x30uLL, MEMORY[0x1E69E5398]);
      if (!v6)
      {
        goto LABEL_24;
      }

      Length = CFDataGetLength(v11);
      if (Length < 16)
      {
        v17 = MEMORY[0x1E695EFD0];
        v18 = *(MEMORY[0x1E695EFD0] + 32);
        *(v6 + 1) = *(MEMORY[0x1E695EFD0] + 16);
        *(v6 + 2) = v18;
        *v6 = *v17;
        v19 = *(v6 + 2);
LABEL_21:
        v21 = vandq_s8(vandq_s8(vceqq_f64(*v6, xmmword_18475BD80), vceqq_f64(*(v6 + 1), xmmword_18475A330)), vceqzq_f64(v19));
        if ((vandq_s8(v21, vdupq_laneq_s64(v21, 1)).u64[0] & 0x8000000000000000) == 0)
        {
          goto LABEL_24;
        }

        MEMORY[0x1865F22D0](v6, 0x1000C40EED21634);
LABEL_23:
        v6 = 0;
        goto LABEL_24;
      }

      if (Length < 0x19)
      {
        v22.i64[0] = -1;
        v22.i64[1] = -1;
        v26.location = 0;
        v26.length = 16;
        CFDataGetBytes(v11, v26, &v22);
        v20 = vcvt_hight_f64_f32(v22);
        *v6 = vcvtq_f64_f32(*v22.f32);
        *(v6 + 1) = v20;
      }

      else
      {
        v13.i64[0] = -1;
        v13.i64[1] = -1;
        v22 = v13;
        v23 = v13;
        v25.location = 0;
        v25.length = 32;
        CFDataGetBytes(v11, v25, &v22);
        v14 = v23;
        *v6 = v22;
        *(v6 + 1) = v14;
      }
    }

    else
    {
      atomic_load_explicit(v8, memory_order_acquire);
      v15 = atomic_load_explicit(v8, memory_order_acquire);
      if (v15)
      {
        Value = CFDictionaryGetValue(v15, @"NSFontMatrixAttribute");
      }

      else
      {
        Value = 0;
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0 || strcmp([Value objCType], "{CGAffineTransform=dddddd}"))
      {
        goto LABEL_23;
      }

      v6 = operator new(0x30uLL, MEMORY[0x1E69E5398]);
      if (!v6)
      {
        goto LABEL_24;
      }

      [Value getValue:v6];
    }

    *(v6 + 4) = 0;
    *(v6 + 5) = 0;
    v19 = 0uLL;
    goto LABEL_21;
  }

  v5 = operator new(0x30uLL, MEMORY[0x1E69E5398]);
  v6 = v5;
  if (v5)
  {
    v7 = *&a2->c;
    *v5 = *&a2->a;
    v5[1] = v7;
    *(v5 + 4) = 0;
    *(v5 + 5) = 0;
  }

LABEL_24:
  *this = v6;
}

double TFont::InitSize(TFont *this, double a2, const __CTFontDescriptor *a3)
{
  v3 = a2;
  valuePtr = a2;
  if (a2 <= 0.0)
  {
    if (this)
    {
      v4 = CTFontDescriptorCopyAttribute(this, @"NSFontSizeAttribute");
      if (v4)
      {
        v5 = v4;
        v6 = CFGetTypeID(v4);
        if (v6 == CFNumberGetTypeID())
        {
          CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr);
        }

        CFRelease(v5);
        v3 = valuePtr;
      }
    }

    if (v3 <= 0.0)
    {
      Table = GetTable();
      v3 = 12.0;
      if (Table)
      {
        v8 = *(Table + 10);
        if (v8)
        {
          if (v8 == -1)
          {
            return 0.0;
          }

          else
          {
            return Table[10];
          }
        }
      }
    }
  }

  return v3;
}

void TFont::SetOpticalSize(TFont *this, const __CTFontDescriptor *a2)
{
  v2 = *(this + 51);
  if (v2)
  {
    valuePtr = 0.0;
    explicit = atomic_load_explicit(this + 21, memory_order_acquire);
    if (explicit)
    {
      Value = CFDictionaryGetValue(explicit, @"NSCTFontOpticalSizeAttribute");
    }

    else
    {
      Value = 0;
    }

    v7 = (*(*v2 + 480))(v2, 1398030676);
    v86 = 0;
    if (!v7)
    {
      goto LABEL_12;
    }

    v8 = *(this + 51);
    if ((*(v8 + 184) & 0x100) == 0)
    {
      TBaseFont::DetermineFontFlags(*(this + 51), 0x100u);
    }

    if ((*(v8 + 180) & 0x100) != 0)
    {
LABEL_12:
      v10 = 0;
      v9 = 0;
      if (!Value)
      {
        goto LABEL_27;
      }
    }

    else if ((*(**(this + 51) + 480))(*(this + 51), 1953653099))
    {
      v9 = 0;
      v10 = 1;
      if (!Value)
      {
        goto LABEL_27;
      }
    }

    else
    {
      (*(*v2 + 128))(&v88, v2);

      v10 = atomic_load_explicit(&v86, memory_order_acquire) != 0;
      v9 = 1;
      if (!Value)
      {
        goto LABEL_27;
      }
    }

    v11 = CFGetTypeID(Value);
    if (v11 == CFNumberGetTypeID())
    {
      CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
      if (valuePtr <= 0.0)
      {
        goto LABEL_141;
      }

      goto LABEL_27;
    }

    if (v11 == CFStringGetTypeID())
    {
      if ((v9 & 1) == 0)
      {
        (*(*v2 + 128))(&v88, v2);
      }

      if (Value == @"auto" || CFStringCompare(Value, @"auto", 1uLL) == kCFCompareEqualTo)
      {
        v14 = 0;
        valuePtr = *(this + 3);
        v15 = atomic_load_explicit(&v86, memory_order_acquire) != 0;
        v12 = 1;
      }

      else
      {
        if (Value != @"none" && CFStringCompare(Value, @"none", 1uLL))
        {
          goto LABEL_27;
        }

        v12 = 0;
        v13 = atomic_load_explicit(&v86, memory_order_acquire);
        v14 = v13 != 0;
        v15 = v14 | v10;
        if (!v13 && v10)
        {
          v12 = 0;
          v14 = 0;
          v15 = 0;
          valuePtr = 0.0;
        }
      }

LABEL_28:
      *(this + 4) = valuePtr;
      if (TFont::IsSystemUIFontAndForShaping(this, &v88))
      {
        v16 = 1;
      }

      else
      {
        v16 = (*(**(this + 51) + 720))(*(this + 51));
      }

      v17 = *(this + 4);
      if (v17 == 0.0)
      {
        v18 = v14;
      }

      else
      {
        v18 = 1;
      }

      if (v18)
      {
        v19 = v12;
      }

      else
      {
        v19 = v12;
        if ((v15 | v16))
        {
          if ((v12 | v16) & 1) == 0 && TBaseFont::GetInitializedGraphicsFont(v2) && CGFontGetParserFont() && (FPFontHasNamedInstanceWithOpticalSize())
          {
            goto LABEL_141;
          }

          v17 = *(this + 3);
          *(this + 4) = v17;
          v19 = 1;
        }
      }

      if (((v17 == 0.0) & ~v14) != 0)
      {
LABEL_141:

        return;
      }

      if ((v15 & 1) == 0)
      {
        goto LABEL_57;
      }

      if ((v9 & 1) == 0)
      {
        (*(*v2 + 128))(&v88, v2);
      }

      if (!atomic_load_explicit(&v86, memory_order_acquire))
      {
LABEL_57:
        if (v16)
        {
          v23 = *(this + 51);
          if ((*(v23 + 184) & 0x100) == 0)
          {
            TBaseFont::DetermineFontFlags(*(this + 51), 0x100u);
          }

          if ((*(v23 + 180) & 0x100) == 0)
          {
            goto LABEL_141;
          }
        }

        if (atomic_load_explicit(&v86, memory_order_acquire))
        {
          goto LABEL_141;
        }

        *&v88 = NAN;
        *&v85 = NAN;
        if (!(*(*v2 + 432))(v2, &v88, &v85))
        {
          goto LABEL_141;
        }

        v24 = *(this + 4);
        if (*&v88 <= v24 && (v24 < *&v85 || *&v85 == 0.0))
        {
          goto LABEL_141;
        }

        TraitsValues = atomic_load_explicit(v2 + 30, memory_order_acquire);
        if (!TraitsValues)
        {
          TraitsValues = TBaseFont::CreateTraitsValues(v2);
        }

        v83 = 0xAAAAAAAAAAAAAAAALL;
        v84 = 0;
        (*(**(this + 51) + 72))(&v83);
        if (v16)
        {
          v26 = *(this + 51);
          if ((*(v26 + 184) & 0x100) == 0)
          {
            TBaseFont::DetermineFontFlags(*(this + 51), 0x100u);
          }

          v27 = 268419071;
          if ((*(v26 + 180) & 0x100) != 0)
          {
            TFont::SetOpticalSize(__CTFontDescriptor const*)::$_0::operator()(&v82, v2);
          }
        }

        else
        {
          v27 = -1;
        }

        v82 = 0xAAAAAAAAAAAAAAAALL;
        TDescriptorSource::TDescriptorSource(&v81);
        TDescriptorSource::CopyMatchingDescriptorsForFamily(&v81, atomic_load_explicit(&v83, memory_order_acquire), &v82);
        v51 = atomic_load_explicit(&v82, memory_order_acquire);
        if (v51)
        {
          Count = CFArrayGetCount(v51);
          if (Count)
          {
            v53 = Count;
            v54 = 0;
            v76 = vdupq_n_s64(0x3F50624DD2F1A9FCuLL);
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v51, v54);
              v56 = ValueAtIndex;
              v57 = ValueAtIndex[5];
              if ((*(v57 + 4) & 0x80000000) == 0)
              {
                TDescriptor::InitBaseFont(ValueAtIndex[5], 0, 0.0);
              }

              v58 = atomic_load_explicit(v57 + 4, memory_order_acquire);
              if (v58)
              {
                v59 = atomic_load_explicit((v58 + 240), memory_order_acquire);
                if (!v59)
                {
                  v59 = TBaseFont::CreateTraitsValues(v58);
                }

                if (((*TraitsValues ^ *v59) & v27) == 0 && vabdd_f64(*(v59 + 8), *(TraitsValues + 8)) < 0.001)
                {
                  v60 = vmovn_s64(vmvnq_s8(vcgtq_f64(v76, vabdq_f64(*(v59 + 16), *(TraitsValues + 16)))));
                  if ((v60.i8[0] & 1) == 0 && (v60.i8[4] & 1) == 0)
                  {
                    v80 = NAN;
                    v81 = NAN;
                    if ((*(*v58 + 432))(v58, &v81, &v80))
                    {
                      v61 = *(this + 4);
                      if (v81 <= v61 && v61 < v80)
                      {
                        if (!atomic_load_explicit(&v84, memory_order_acquire))
                        {
                          break;
                        }

                        v79 = atomic_load_explicit(&v84, memory_order_acquire);
                        TFont::SetOpticalSize(__CTFontDescriptor const*)::$_0::operator()(&v78, v58);
                        v62 = operator==(&v79, &v78);

                        if (v62)
                        {
                          break;
                        }
                      }
                    }
                  }
                }
              }

              if (v53 == ++v54)
              {
                goto LABEL_120;
              }
            }

            v77 = v56;

            v75 = *(this + 51);
            atomic_fetch_add_explicit((v58 + 8), 1u, memory_order_relaxed);
            *(this + 51) = v58;
            if (v75 && atomic_fetch_add_explicit(v75 + 2, 0xFFFFFFFF, memory_order_release) == 1)
            {
              __dmb(9u);
              (*(*v75 + 8))(v75);
            }
          }
        }

LABEL_120:

        v63 = v84;
        goto LABEL_140;
      }

      *&v85 = -3.72066208e-103;
      (*(**(this + 51) + 112))(&v85);
      v20 = atomic_load_explicit(&v85, memory_order_acquire);
      v21 = v20;
      if (v20)
      {
        v22 = CFDictionaryGetValue(v20, &unk_1EF278040);
      }

      else
      {
        v22 = 0;
      }

      if (a2)
      {
        v28 = (*(a2 + 5) + 8);
        atomic_load_explicit(v28, memory_order_acquire);
        v29 = atomic_load_explicit(v28, memory_order_acquire);
        if (!v29)
        {
          goto LABEL_79;
        }

        v30 = CFDictionaryGetValue(v29, @"NSCTFontVariationAttribute");
        a2 = v30;
        if (!v30)
        {
          goto LABEL_80;
        }

        v31 = CFGetTypeID(v30);
        if (v31 == CFDictionaryGetTypeID() && (v32 = CFDictionaryGetValue(a2, &unk_1EF278040)) != 0)
        {
          v33 = v32;
          v34 = CFGetTypeID(v32);
          TypeID = CFNumberGetTypeID();
          v36 = v34 == TypeID;
          if (v34 == TypeID)
          {
            a2 = v33;
          }

          else
          {
            a2 = 0;
          }

          if (v36)
          {
            v22 = v33;
          }
        }

        else
        {
LABEL_79:
          a2 = 0;
        }
      }

LABEL_80:
      v37 = CFDictionaryGetValue(atomic_load_explicit(&v86, memory_order_acquire), @"NSCTVariationAxisDefaultValue");
      *&v88 = NAN;
      CFNumberGetValue(v37, kCFNumberDoubleType, &v88);
      v38 = v88;
      if (v14)
      {
        *(this + 4) = *&v88;
        v39 = *&v38;
      }

      else
      {
        v39 = *(this + 4);
      }

      ClampValueToRangeOfAxis(v39, atomic_load_explicit(&v86, memory_order_acquire));
      v41 = v40;
      v84 = 0;
      if (v22)
      {
        *&v88 = NAN;
        CFNumberGetValue(v22, kCFNumberDoubleType, &v88);
        if ((v12 & (a2 != 0)) != 0)
        {
          v41 = *&v88;
        }

        if (vabdd_f64(*&v88, v41) < 0.0001 || (v12 & 1) == 0 && !TFont::HasDerivedOpticalSize(this) && (v22 == a2 || a2 && CFEqual(v22, a2)))
        {
          goto LABEL_139;
        }

        v42 = v84;
      }

      else
      {
        if (v14)
        {
LABEL_139:
          v63 = v85;
LABEL_140:

          goto LABEL_141;
        }

        if (*&v38 != v40)
        {
          goto LABEL_94;
        }

        v42 = *(this + 51);
        v84 = v42;
      }

      if (v42)
      {
LABEL_129:
        v66 = (this + 16);
        v67 = atomic_load_explicit(this + 2, memory_order_acquire);
        v68 = *(v67[5] + 16);

        if (v19)
        {
          v69 = 0x8000;
        }

        else
        {
          v69 = 0;
        }

        LODWORD(v83) = v68 & 0xFFFF7FFF | v69;
        TCFBase_NEW<CTFontDescriptor,TBaseFont const*&,unsigned int &>(&v84, &v83, &v88);

        v70 = *(this + 51);
        v71 = atomic_load_explicit(v66, memory_order_acquire);
        v72 = v71;
        v73 = v71[5];
        if ((*(v73 + 4) & 0x80000000) == 0)
        {
          TDescriptor::InitBaseFont(v71[5], 0, 0.0);
        }

        v74 = atomic_load_explicit(v73 + 4, memory_order_acquire);
        if (v74)
        {
          atomic_fetch_add_explicit((v74 + 8), 1u, memory_order_relaxed);
        }

        *(this + 51) = v74;

        if (v70)
        {
          if (atomic_fetch_add_explicit(v70 + 2, 0xFFFFFFFF, memory_order_release) == 1)
          {
            __dmb(9u);
            (*(*v70 + 8))(v70);
          }
        }

        goto LABEL_139;
      }

LABEL_94:
      v43 = atomic_load_explicit(this + 2, memory_order_acquire);
      v44 = v43;
      v45 = v43[5];
      if ((*(v45 + 4) & 0x80000000) == 0)
      {
        TDescriptor::InitBaseFont(v43[5], 0, 0.0);
      }

      v46 = atomic_load_explicit(v45 + 4, memory_order_acquire);

      if (!v46)
      {
        goto LABEL_139;
      }

      TenuousComponentFont = GetTenuousComponentFont(v46);
      if (TenuousComponentFont)
      {
        v48 = TenuousComponentFont;
        v49 = operator new(0x328uLL, MEMORY[0x1E69E5398]);
        v50 = v49;
        if (v49)
        {
          TTenuousComponentFont::TTenuousComponentFont(v49, v48, v41);
        }

        v84 = v50;
      }

      else
      {
        *&v88 = -3.72066208e-103;
        CopyVariationWithValue(atomic_load_explicit(&v85, memory_order_acquire), &unk_1EF278040, v41, &v88);
        v64 = operator new(0x288uLL, MEMORY[0x1E69E5398]);
        v50 = v64;
        if (v64)
        {
          TInstanceFont::TInstanceFont(v64, v46, v65, atomic_load_explicit(&v88, memory_order_acquire));
        }

        v84 = v50;
      }

      if (!v50)
      {
        goto LABEL_139;
      }

      goto LABEL_129;
    }

LABEL_27:
    v12 = 0;
    v14 = 0;
    v15 = v10;
    goto LABEL_28;
  }
}

void TFont::AddFontSpecificFeatureSettings(TFont *this)
{
  v2 = *(this + 51);
  if (v2 && (*(*v2 + 720))(v2) && IsGB18030ComplianceRequired())
  {
    v3 = this;
    v4 = 444;
    v5 = 1;
    v6 = 1;
  }

  else
  {
    if ((*(this + 12) & 4) == 0)
    {
      return;
    }

    v3 = this;
    v4 = 35;
    v5 = 14;
    v6 = 0;
  }

  TFont::AppendFeatureSettingWithTypeAndSelector(v3, v4, v5, v6);
}

uint64_t CTFontIsSystemUIFont(uint64_t result)
{
  if (result)
  {
    return TFont::IsSystemUIFontAndForShaping(*(result + 40), &v1);
  }

  return result;
}

void TFont::GetStrikeMetrics(TBaseFont **this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v6.f64[0] = NAN;
  v6.f64[1] = NAN;
  v12 = v6;
  v13 = v6;
  v11 = v6;
  EffectiveMatrix = TFont::GetEffectiveMatrix(this, &v11);
  if ((*(*this[51] + 728))(EffectiveMatrix))
  {
    EffectiveSize = *(this + 3);
  }

  else
  {
    EffectiveSize = TFont::GetEffectiveSize(this);
  }

  v9 = vandq_s8(vceqq_f64(v11, xmmword_18475BD80), vandq_s8(vceqq_f64(v12, xmmword_18475A330), vceqzq_f64(v13)));
  if (vandq_s8(v9, vdupq_laneq_s64(v9, 1)).i64[0] >= 0)
  {
    v10 = &v11;
  }

  else
  {
    v10 = 0;
  }

  TBaseFont::GetStrikeMetrics(this[51], EffectiveSize, v10, a2, a3);
}

double TFont::InitStrikeMetrics(TBaseFont **this)
{
  TFont::GetStrikeMetrics(this, *(this + 3) & 1, &v5);
  if (this + 7 != &v5)
  {
    *(this + 14) = v5;
    v3 = v7;
    *(this + 4) = v6;
    *(this + 5) = v3;
    v4 = v9;
    *(this + 6) = v8;
    *(this + 7) = v4;
    result = *&v10;
    *(this + 8) = v10;
    *(this + 144) = v11;
  }

  return result;
}

CGFloat CTFontGetAscent(CTFontRef font)
{
  if (!font)
  {
    return 0.0;
  }

  v1 = *(font + 5);
  if (*(v1 + 56))
  {
    v2 = v1 + 56;
  }

  else
  {
    TFont::InitStrikeMetrics(v1);
  }

  return *(v2 + 8);
}

double TFont::GetEffectiveSize(TFont *this)
{
  v1 = *(this + 52);
  if (v1 == 0.0)
  {
    v1 = *(this + 3);
    if (!(*(**(this + 51) + 720))(*(this + 51)))
    {
LABEL_11:
      *(this + 52) = v1;
      return v1;
    }

    if ((*(this + 12) & 0x10) == 0)
    {
      if (v1 <= 16.0)
      {
        v3 = v1 * 0.25;
      }

      else
      {
        v3 = 0.0;
        if (v1 < 24.0)
        {
          v3 = (24.0 - v1) * 0.5;
        }
      }

      v1 = v1 + v3;
      if (v1 == *(this + 3))
      {
        v1 = v1 + 0.0001;
      }

      goto LABEL_11;
    }
  }

  return v1;
}

void TBaseFont::GetStrikeMetrics(TBaseFont *this@<X0>, double a2@<D0>, const CGAffineTransform *a3@<X1>, int a4@<W2>, uint64_t a5@<X8>)
{
  v18 = xmmword_18477ACD0;
  v19 = unk_18477ACE0;
  v20 = xmmword_18477ACF0;
  v21 = unk_18477AD00;
  v16 = __const__ZNK9TBaseFont16GetStrikeMetricsEdPK17CGAffineTransformb_metrics;
  v17 = unk_18477ACC0;
  if (a4)
  {
    (*(*this + 640))(&v16, this, 1, 0.0);
  }

  else
  {
    if (*(this + 62))
    {
      inited = (this + 248);
    }

    else
    {
      inited = TBaseFont::InitFontMetrics(this, a2);
    }

    StrikeMetrics::StrikeMetrics(&v16, inited);
    *(&v17 + 1) = (*(*this + 648))(this, a2, *(&v17 + 1));
  }

  *&v10 = -1;
  *(&v10 + 1) = -1;
  *&v15.c = v10;
  *&v15.tx = v10;
  *&v15.a = v10;
  CGAffineTransformMakeScale(&v15, a2 / v16, a2 / v16);
  if (a3)
  {
    v11 = *&a3->c;
    *&t1.a = *&a3->a;
    *&t1.c = v11;
    *&t1.tx = *&a3->tx;
    v12 = v15;
    CGAffineTransformConcat(&v14, &t1, &v12);
    v15 = v14;
  }

  v14 = v15;
  StrikeMetrics::ApplyTransform(&v16, &v14);
  StrikeMetrics::StrikeMetrics(a5, &v16);
}

__n128 StrikeMetrics::StrikeMetrics(uint64_t a1, uint64_t a2)
{
  *a1 = 0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = *MEMORY[0x1E695EFF8];
  result = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 16);
  *(a1 + 56) = *MEMORY[0x1E695F058];
  *(a1 + 72) = v3;
  *(a1 + 88) = 0;
  if (a1 != a2)
  {
    *a1 = *a2;
    *(a1 + 8) = *(a2 + 8);
    *(a1 + 24) = *(a2 + 24);
    *(a1 + 40) = *(a2 + 40);
    result = *(a2 + 56);
    *(a1 + 72) = *(a2 + 72);
    *(a1 + 56) = result;
    *(a1 + 88) = *(a2 + 88);
  }

  return result;
}

StrikeMetrics *StrikeMetrics::ApplyTransform(StrikeMetrics *this, CGAffineTransform *a2)
{
  v14 = *(this + 56);
  v4 = *&a2->c;
  *&v13.a = *&a2->a;
  *&v13.c = v4;
  *&v13.tx = *&a2->tx;
  *(this + 56) = CGRectApplyAffineTransform(v14, &v13);
  a2->tx = 0.0;
  a2->ty = 0.0;
  v5 = *(this + 2);
  v6 = *(this + 1) * a2->d + a2->b * 0.0 + 0.0;
  *(this + 1) = v6;
  v7 = a2->ty + v5 * a2->d + a2->b * 0.0;
  *(this + 2) = v7;
  v8 = *(this + 4);
  v9 = a2->ty + *(this + 3) * a2->d + a2->b * 0.0;
  *(this + 3) = v9;
  v10 = a2->ty + v8 * a2->d + a2->b * 0.0;
  *(this + 4) = v10;
  v11 = vaddq_f64(vaddq_f64(*&a2->a, *&a2->c), *&a2->tx);
  *(this + 40) = v11;
  if (v11.f64[1] < 0.0)
  {
    *(this + 1) = -v6;
    *(this + 2) = -v7;
    *(this + 3) = -v9;
    *(this + 4) = -v10;
  }

  return this;
}

uint64_t CTFontIsTextStyleFont(uint64_t a1)
{
  if (a1 && (v1 = *(*(a1 + 40) + 408)) != 0)
  {
    return (*(*v1 + 864))();
  }

  else
  {
    return 0;
  }
}

void CTFontSetClientObject(uint64_t a1, void *a2)
{
  if (a1)
  {
    TCFRef<__CTFont const*>::Retain((*(a1 + 40) + 536), a2);
  }
}

void TBaseFont::CopyAttributeInternal(TBaseFont *this@<X0>, const void *a2@<X1>, void *a3@<X8>)
{
  os_unfair_lock_lock_with_options();
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  explicit = atomic_load_explicit(this + 15, memory_order_acquire);
  if (explicit)
  {
    explicit = CFDictionaryGetValue(explicit, a2);
  }

  *a3 = explicit;

  os_unfair_lock_unlock(this + 28);
}

void TBaseFont::CopyOpticalSizeAxis(TBaseFont *this@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 120))(&v10);
  if (atomic_load_explicit(&v10, memory_order_acquire))
  {
    explicit = atomic_load_explicit(&v10, memory_order_acquire);
    if (explicit)
    {
      Count = CFArrayGetCount(explicit);
      if (Count)
      {
        v5 = Count;
        v6 = 0;
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(explicit, v6);
          Value = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisIdentifier");
          if (Value == &unk_1EF27A698 || Value && CFEqual(Value, &unk_1EF27A698))
          {
            break;
          }

          if (v5 == ++v6)
          {
            goto LABEL_11;
          }
        }

        v9 = ValueAtIndex;
      }
    }
  }

LABEL_11:
}

BOOL TDescriptor::IsSystemUIFont(TDescriptor *this)
{
  v1 = *(this + 4);
  if (qword_1ED5679B0 != -1)
  {
    dispatch_once_f(&qword_1ED5679B0, 0, TDescriptor::GetSystemUIFontOptions(void)::$_0::__invoke);
  }

  return (_MergedGlobals_13 & v1) != 0;
}

const __CFArray *TSplicedFont::GetOpticalSizeComponent(atomic_ullong *this, double a2)
{
  if (this[77])
  {
    v4 = atomic_load_explicit(this + 78, memory_order_acquire);
    explicit = v4;
    if (!v4)
    {
LABEL_15:

      return explicit;
    }

    Count = CFArrayGetCount(v4);

    if (Count >= 1)
    {
      v7 = this[77];
      v8 = *v7;
      v9 = *(v7 + 8);
      if (v8 == v9)
      {
        goto LABEL_8;
      }

      v10 = 0;
      while (a2 + 0.01 < *v8)
      {
        ++v10;
        v8 += 7;
        if (v8 == v9)
        {
          goto LABEL_8;
        }
      }

      if (v10 >= Count)
      {
LABEL_8:
        v11 = atomic_load_explicit(this + 78, memory_order_acquire);
        v12 = v11;
        v13 = Count - 1;
      }

      else
      {
        v11 = atomic_load_explicit(this + 78, memory_order_acquire);
        v12 = v11;
        v13 = v10;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v11, v13);
      v15 = *(ValueAtIndex + 5);
      if ((*(v15 + 16) & 0x80000000) == 0)
      {
        TDescriptor::InitBaseFont(*(ValueAtIndex + 5), 0, 0.0);
      }

      explicit = atomic_load_explicit((v15 + 32), memory_order_acquire);
      v4 = v12;
      goto LABEL_15;
    }
  }

  return 0;
}

void TTenuousComponentFont::CopyOpticalSizeAxis(TBaseFont *this@<X0>, atomic_ullong *a2@<X8>)
{
  if ((*(this + 713) & 0x40) != 0)
  {
    TBaseFont::CopyOpticalSizeAxis(this, a2);
  }

  else
  {
    *a2 = 0;
  }
}

void TTenuousComponentFont::CopyVariationAxes(atomic_ullong *this@<X0>, unint64_t *a2@<X8>)
{
  if ((this[89] & 4) != 0)
  {
    explicit = atomic_load_explicit(this + 90, memory_order_acquire);
    if (explicit && (Value = CFDictionaryGetValue(explicit, @"variationAxes")) != 0)
    {
      v6 = Value;
      *a2 = atomic_exchange(&v6, 0);
    }

    else
    {

      TBaseFont::CopyVariationAxes(this, a2);
    }
  }

  else
  {
    *a2 = 0;
  }
}

CFTypeRef CTFontDescriptorCopyAttribute(CTFontDescriptorRef descriptor, CFStringRef attribute)
{
  v2 = 0;
  if (descriptor && attribute)
  {
    TDescriptor::CopyAttributeExternal(*(descriptor + 5), attribute, &v4);
    v2 = atomic_exchange(&v4, 0);
  }

  return v2;
}

void TDescriptor::CopyAttributeExternal(atomic_ullong *this@<X0>, const __CFString *cf1@<X1>, atomic_ullong *a3@<X8>)
{
  atomic_load_explicit(this + 1, memory_order_acquire);
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit && (Value = CFDictionaryGetValue(explicit, cf1)) != 0)
  {
    *a3 = Value;
  }

  else if (CFEqual(cf1, @"NSFontDescriptorHiddenAttribute") || CFEqual(cf1, @"NSFontDescriptorNegativeAttribute") || (FontAttributeID = GetFontAttributeID(cf1), (FontAttributeID - 8) <= 0x3B) && ((1 << (FontAttributeID - 8)) & 0x80096100000727FLL) != 0)
  {
    *a3 = 0;
  }

  else
  {
    if ((this[2] & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(this, 0, 0.0);
    }

    v9 = atomic_load_explicit(this + 4, memory_order_acquire);
    if (v9)
    {
      v10 = *(*v9 + 40);

      v10();
    }

    else
    {

      TDescriptor::CopyAttributeForNonNormalized(this, 0, FontAttributeID, a3);
    }
  }
}

uint64_t TCFBase<TDescriptor>::ClassDestruct(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v2(a1);
  }

  v3 = ***(a1 + 40);

  return v3();
}

BOOL TDescriptor::Equal(atomic_ullong *this, atomic_ullong *a2)
{
  if (this == a2)
  {
    return 1;
  }

  v4 = TDescriptor::Hash(this);
  if (v4 != TDescriptor::Hash(a2) || ((*(a2 + 4) ^ *(this + 4)) & 0x7FFCC408) != 0)
  {
    return 0;
  }

  if ((this[2] & 0x80000000) != 0 && (a2[2] & 0x80000000) != 0)
  {
    if ((this[2] & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(this, 0, 0.0);
    }

    explicit = atomic_load_explicit(this + 4, memory_order_acquire);
    if ((a2[2] & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(a2, 0, 0.0);
    }

    v10 = atomic_load_explicit(a2 + 4, memory_order_acquire);
    if (explicit && v10)
    {
      if ((*(*explicit + 32))(explicit))
      {
        goto LABEL_9;
      }
    }

    else if (!(explicit | v10))
    {
      goto LABEL_9;
    }

    return 0;
  }

LABEL_9:
  v5 = 1;
  Attributes = TDescriptor::GetAttributes(this, 1);
  v8 = TDescriptor::GetAttributes(a2, 1);
  if (Attributes != v8)
  {
    v5 = 0;
    if (Attributes)
    {
      if (v8)
      {
        return CFEqual(Attributes, v8) != 0;
      }
    }
  }

  return v5;
}

uint64_t TComponentFont::Equal(TComponentFont *this, const TBaseFont *a2)
{
  if (this == a2)
  {
    return 1;
  }

  v4 = (*(*this + 16))(this);
  if (v4 != (*(*a2 + 16))(a2) || *(this + 178) != *(a2 + 178))
  {
    return 0;
  }

  explicit = atomic_load_explicit(this + 93, memory_order_acquire);
  v6 = atomic_load_explicit(a2 + 93, memory_order_acquire);
  if (explicit == v6)
  {
    return 1;
  }

  result = 0;
  if (explicit)
  {
    if (v6)
    {
      result = CFEqual(explicit, v6);
      if (result)
      {
        return 1;
      }
    }
  }

  return result;
}

void TDescriptor::~TDescriptor(TDescriptor *this)
{
  *this = &unk_1EF257E00;
  v2 = (this + 32);
  explicit = atomic_load_explicit(this + 4, memory_order_acquire);
  *v2 = 0;
  if (explicit && atomic_fetch_add_explicit(explicit + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*explicit + 8))(explicit);
  }
}

{
  TDescriptor::~TDescriptor(this);

  JUMPOUT(0x1865F22D0);
}

uint64_t TSplicedFont::Create(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  v7 = a3;
  TSplicedFont::CreateCascadeList(&v7, ((a1 != 0) << 17), &v6);
  if (atomic_load_explicit(&v6, memory_order_acquire))
  {
    explicit = atomic_load_explicit(&v6, memory_order_acquire);
    if (explicit && CFArrayGetValueAtIndex(explicit, 0))
    {
      operator new();
    }

    atomic_load_explicit(&v6, memory_order_acquire);
  }

  else
  {
    v4 = atomic_load_explicit(&v7, memory_order_acquire);
    if (v4)
    {
      CFDictionaryGetValue(v4, @"Components");
    }
  }

  return 0;
}

uint64_t CreateSplicedFontFromStash@<X0>(atomic_ullong *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  result = TSplicedFont::Create(a2, &kAdopted, atomic_exchange(a1, 0));
  if (result)
  {
    if (a3)
    {
      v8 = 4;
    }

    else
    {
      v8 = 1028;
    }

    if (a2)
    {
      v8 = 0;
    }

    v10 = v8;
    v9 = result;
    return TCFBase_NEW<CTFontDescriptor,TBaseFont const*&,unsigned int &>(&v9, &v10, a4);
  }

  else
  {
    *a4 = 0;
  }

  return result;
}

void TSplicedFont::CreateCascadeList(atomic_ullong *this@<X0>, const TSplicedFontDict *a2@<X1>, void *a3@<X8>)
{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {
    v6 = a2;
    theArray = CFDictionaryGetValue(explicit, @"Components");
    if (theArray)
    {
      Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
      v7 = atomic_load_explicit(this, memory_order_acquire);
      if (v7)
      {
        v6 |= CFDictionaryGetValue(v7, @"FontMetrics") != 0;
      }

      if (TSplicedFontDict::IsInvisibleSplice(this))
      {
        v6 |= 2u;
      }

      if (TSplicedFontDict::ComponentHasVariations(this))
      {
        v6 |= 4u;
      }

      if (TSplicedFontDict::ComponentHasOpticalSizeAxis(this))
      {
        v6 |= 0x4000u;
      }

      v8 = atomic_load_explicit(this, memory_order_acquire);
      if (v8 && CFDictionaryGetValue(v8, @"language"))
      {
        v6 |= 0x40000u;
      }

      v9 = atomic_load_explicit(this, memory_order_acquire);
      if (v9 && CFDictionaryGetValue(v9, @"lineSpacingOverride"))
      {
        v6 |= 0x80000u;
      }

      else
      {
        v10 = atomic_load_explicit(this, memory_order_acquire);
        if (v10 && CFDictionaryGetValue(v10, @"languageAwareLineHeightRatio"))
        {
          v6 |= 8u;
        }
      }

      if (TSplicedFontDict::IsTextStyle(this))
      {
        v11 = v6 | 0x800;
      }

      else
      {
        v11 = v6;
      }

      if ((v11 & 0x800) != 0 || (v12 = atomic_load_explicit(this, memory_order_acquire)) != 0 && CFDictionaryGetValue(v12, @"NSCTFontUIFontDesignTrait"))
      {
        v11 |= 0x8000u;
      }

      Count = CFArrayGetCount(theArray);
      if (Count)
      {
        v13 = 0;
        v33 = *MEMORY[0x1E695E4D0];
        while (1)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(theArray, v13);
          if (!CFDictionaryGetValue(ValueAtIndex, @"Components"))
          {
            goto LABEL_37;
          }

          valuePtr.isa = 0xAAAAAAAAAAAAAAAALL;
          v36 = ValueAtIndex;
          CreateSplicedFontFromStash(&valuePtr, &v36, 0, 0);

          if (!atomic_load_explicit(&valuePtr, memory_order_acquire))
          {
            break;
          }

          v15 = atomic_load_explicit(&valuePtr, memory_order_acquire);
          v16 = v15;
          v17 = v15[5];
          if ((*(v17 + 4) & 0x80000000) == 0)
          {
            TDescriptor::InitBaseFont(v15[5], 0, 0.0);
          }

          v18 = atomic_load_explicit(v17 + 4, memory_order_acquire);

          if ((*(*v18 + 16))(v18) != 1414743620 || ((*(*v18 + 848))(v18) & 1) == 0)
          {
            break;
          }

          v19 = atomic_load_explicit(&valuePtr, memory_order_acquire);
          CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), v19);

          isa = valuePtr.isa;
LABEL_76:

          if (Count == ++v13)
          {
            goto LABEL_79;
          }
        }

LABEL_37:
        Value = CFDictionaryGetValue(ValueAtIndex, @"name");
        if (Value)
        {
          v22 = Value;
          v23 = v11;
          if (CFDictionaryGetValue(ValueAtIndex, @"opticalSize"))
          {
            if (TSplicedFontDict::IsSystemUISplice(this))
            {
              v24 = 102416;
            }

            else
            {
              v24 = 16;
            }

            v23 = v24 | v11;
          }

          if (CFDictionaryGetValue(ValueAtIndex, @"hmtxPerAltFont") || CFDictionaryGetValue(ValueAtIndex, @"hmtxOverride"))
          {
            v23 |= 0x20u;
          }

          if (CFDictionaryGetValue(ValueAtIndex, @"UnicodeRange"))
          {
            v23 |= 0x80u;
          }

          if (CFDictionaryGetValue(ValueAtIndex, @"UnicodeCharSet"))
          {
            v23 |= 0x200u;
          }

          if (CFDictionaryGetValue(ValueAtIndex, @"UnicodeCharSetTrim"))
          {
            v23 |= 0x400u;
          }

          v25 = v23 & 0xFFFEFFFF | ((CFDictionaryGetValue(ValueAtIndex, @"needsScriptAnalysis") != v33) << 16);
          if (CFDictionaryGetValue(ValueAtIndex, @"capHeight"))
          {
            v26 = v25 | 0x2000;
          }

          else
          {
            v26 = v25;
          }

          if ((v26 & 4) != 0 || !CFDictionaryGetValue(ValueAtIndex, @"hasVariations"))
          {
            v27 = v26;
            if ((v26 & 2) != 0)
            {
              goto LABEL_72;
            }
          }

          else
          {
            v27 = v26 | 4;
            if ((v26 & 0x4000) == 0 && CFDictionaryGetValue(ValueAtIndex, @"hasOpticalSizeAxis"))
            {
              v27 = v26 | 0x4004;
            }

            if ((v27 & 2) != 0)
            {
LABEL_72:
              operator new();
            }
          }

          if ((v27 & 0x20000) != 0)
          {
            v28 = 1;
          }

          else
          {
            v28 = 5;
          }

          v29 = CFDictionaryGetValue(ValueAtIndex, @"url");
          valuePtr.isa = 0xAAAAAAAAAAAAAAAALL;
          CopyComponentFontDescriptorWithBaseSystemFallback(&valuePtr, v22, v29, v28);
          if (atomic_load_explicit(&valuePtr, memory_order_acquire) && ((v27 & 1) != 0 || ValueAtIndex && CFDictionaryGetCount(ValueAtIndex) >= 2))
          {
            v30 = *(atomic_load_explicit(&valuePtr, memory_order_acquire) + 40);
            if ((*(v30 + 16) & 0x80000000) == 0)
            {
              TDescriptor::InitBaseFont(v30, 0, 0.0);
            }

            atomic_load_explicit((v30 + 32), memory_order_acquire);
            operator new();
          }

          v31 = atomic_exchange(&valuePtr, 0);

          if (v31)
          {
            v32 = v31;
            CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), v32);
          }
        }

        else
        {
          v31 = 0;
        }

        isa = v31;
        goto LABEL_76;
      }

LABEL_79:
      if (CFArrayGetCount(atomic_load_explicit(&Mutable, memory_order_acquire)))
      {
        *a3 = atomic_exchange(&Mutable, 0);

        return;
      }
    }
  }

  *a3 = 0;
}

const __CFString *TSplicedFontDict::IsInvisibleSplice(atomic_ullong *this)
{
  result = TSplicedFontDict::FindFontName(this, 6, 0);
  if (result)
  {
    return (CFStringGetCharacterAtIndex(result, 0) == 46);
  }

  result = TSplicedFontDict::FindFontName(this, 4, 0);
  if (result)
  {
    return (CFStringGetCharacterAtIndex(result, 0) == 46);
  }

  result = TSplicedFontDict::FindFontName(this, 1, 0);
  if (result)
  {
    return (CFStringGetCharacterAtIndex(result, 0) == 46);
  }

  return result;
}

const __CFDictionary *TSplicedFontDict::FindFontName(atomic_ullong *this, int a2, const __CFString *a3)
{
  if (a2 > 5)
  {
    if (a2 != 255 && a2 != 6)
    {
LABEL_14:
      result = atomic_load_explicit(this, memory_order_acquire);
      if (!result)
      {
        return result;
      }

      result = CFDictionaryGetValue(result, @"FontNames");
      if (!result)
      {
        return result;
      }

      v9 = result;
      result = CFArrayGetCount(result);
      if (!result)
      {
        return result;
      }

      v10 = result - 1;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v9, v10);
        if (ValueAtIndex)
        {
          v12 = ValueAtIndex;
          Value = CFDictionaryGetValue(ValueAtIndex, @"type");
          if (CFStringGetIntValue(Value) == a2)
          {
            if (!a3)
            {
              break;
            }

            v14 = CFDictionaryGetValue(v12, @"language");
            if (v14 == a3 || v14 && CFEqual(v14, a3))
            {
              break;
            }
          }
        }

        if (--v10 == -1)
        {
          return 0;
        }
      }

      v8 = @"string";
      result = v12;
      goto LABEL_11;
    }
  }

  else if (a2 != -1)
  {
    if (a2 == 1)
    {
      explicit = atomic_load_explicit(this, memory_order_acquire);
      if (explicit)
      {
        result = CFDictionaryGetValue(explicit, @"familyName");
        if (result)
        {
          return result;
        }
      }
    }

    goto LABEL_14;
  }

  result = atomic_load_explicit(this, memory_order_acquire);
  if (!result)
  {
    return result;
  }

  v8 = @"name";
LABEL_11:

  return CFDictionaryGetValue(result, v8);
}

const __CFDictionary *TSplicedFontDict::ComponentHasOpticalSizeAxis(atomic_ullong *this)
{
  result = atomic_load_explicit(this, memory_order_acquire);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"hasOpticalSizeAxis");
    if (result)
    {
      return (CFBooleanGetValue(result) != 0);
    }
  }

  return result;
}

const __CFDictionary *TSplicedFontDict::IsTextStyle(atomic_ullong *this)
{
  result = atomic_load_explicit(this, memory_order_acquire);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"isTextStyle");
    if (result)
    {
      return (CFBooleanGetValue(result) != 0);
    }
  }

  return result;
}

const void *TComponentFont::GetComponentAttribute(atomic_ullong *this, const __CFString *a2)
{
  v3 = atomic_load_explicit(this + 93, memory_order_acquire);
  v4 = v3;
  if (v3)
  {
    Value = CFDictionaryGetValue(v3, a2);
  }

  else
  {
    Value = 0;
  }

  return Value;
}

void TTenuousComponentFont::InitWithOpticalSize(atomic_ullong *this, double a2)
{
  if ((*(this + 713) & 0x40) != 0)
  {
    v10 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 128))(&v10);
    if (atomic_load_explicit(&v10, memory_order_acquire))
    {
      v9 = 0xAAAAAAAAAAAAAAAALL;
      (*(*this + 112))(&v9, this);
      v8 = NAN;
      Value = CFDictionaryGetValue(atomic_load_explicit(&v10, memory_order_acquire), @"NSCTVariationAxisMinimumValue");
      CFNumberGetValue(Value, kCFNumberDoubleType, &v8);
      v5 = v8;
      if (v8 <= a2)
      {
        valuePtr = NAN;
        v6 = CFDictionaryGetValue(atomic_load_explicit(&v10, memory_order_acquire), @"NSCTVariationAxisMaximumValue");
        CFNumberGetValue(v6, kCFNumberDoubleType, &valuePtr);
        if (valuePtr >= a2)
        {
          v5 = a2;
        }

        else
        {
          v5 = valuePtr;
        }
      }

      v7 = CFDictionaryGetValue(atomic_load_explicit(&v10, memory_order_acquire), @"NSCTVariationAxisDefaultValue");
      if (v5 == 0.0 || v7 && (valuePtr = NAN, CFNumberGetValue(v7, kCFNumberDoubleType, &valuePtr), valuePtr == v5))
      {
        valuePtr = -3.72066208e-103;
        TCFMutableDictionary::TCFMutableDictionary(&valuePtr, atomic_load_explicit(&v9, memory_order_acquire));
        if (atomic_load_explicit(&valuePtr, memory_order_acquire))
        {
          CFDictionaryRemoveValue(atomic_load_explicit(&valuePtr, memory_order_acquire), &unk_1EF27A6E0);
        }

        *(this + 792) = 1;
      }

      else
      {
        CopyVariationWithValue(atomic_load_explicit(&v9, memory_order_acquire), &unk_1EF27A6E0, v5, &valuePtr);
      }
    }
  }
}

void TTenuousComponentFont::CopyDefaultVariation(TTenuousComponentFont *this, uint64_t a2)
{
  if ((*(a2 + 712) & 4) != 0)
  {
    explicit = atomic_load_explicit((a2 + 720), memory_order_acquire);
    if (explicit && (Value = CFDictionaryGetValue(explicit, @"variations")) != 0)
    {
      v6 = Value;
      *this = atomic_exchange(&v6, 0);
    }

    else
    {

      TBaseFont::CopyVariation(a2, this);
    }
  }

  else
  {
    *this = 0;
  }
}

void CopyVariationWithValue(const __CFDictionary *a1@<X0>, const __CFNumber *a2@<X1>, double a3@<D0>, void *a4@<X8>)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (a1 && CFDictionaryGetCount(a1))
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a1);
    CFDictionarySetValue(atomic_load_explicit(&MutableCopy, memory_order_acquire), a2, [MEMORY[0x1E696AD98] numberWithDouble:a3]);
    *a4 = atomic_exchange(&MutableCopy, 0);
  }

  else
  {
    v9 = a2;
    v10[0] = [MEMORY[0x1E696AD98] numberWithDouble:a3];
    *a4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v10 forKeys:&v9 count:1];
  }
}

CFURLRef TSplicedFont::SynthesiseURL@<X0>(TSplicedFont *this@<X0>, CFURLRef *a2@<X8>)
{
  v4 = [@"file://system-synthetic-spliced-font#postscript-name=" stringByAppendingString:this];
  result = CFURLCreateWithString(*MEMORY[0x1E695E480], v4, 0);
  *a2 = result;
  return result;
}

uint64_t TBaseFont::TBaseFont(uint64_t a1, id a2, void *a3)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1EF2598E8;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = a2;
  *(a1 + 88) = 0;
  *(a1 + 96) = a3;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 805306368;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0u;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  v5 = MEMORY[0x1E695EFF8];
  v6 = MEMORY[0x1E695F058];
  *(a1 + 248) = 0;
  v7 = v6[1];
  *(a1 + 304) = *v6;
  *(a1 + 320) = v7;
  *(a1 + 288) = *v5;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 1065353216;
  *(a1 + 400) = 0u;
  *(a1 + 416) = 0u;
  *(a1 + 432) = 1065353216;
  *(a1 + 440) = -1;
  *(a1 + 460) = 0;
  *(a1 + 468) = 0;
  *(a1 + 444) = 0;
  *(a1 + 452) = 0;
  *(a1 + 480) = a1 + 472;
  *(a1 + 488) = 0;
  *(a1 + 496) = 0;
  *(a1 + 504) = 0;
  *(a1 + 544) = a1 + 512;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 552) = 0u;
  TBaseFont::Init(a1, 0);
  return a1;
}

void std::vector<unsigned char,TInlineBufferAllocator<unsigned char,192ul>>::__append(uint64_t a1, size_t a2)
{
  v5 = a1 + 8;
  v3 = *(a1 + 8);
  v4 = *(v5 + 8);
  if (v4 - v3 >= a2)
  {
    if (a2)
    {
      v11 = &v3[a2];
      bzero(v3, a2);
      v3 = v11;
    }

    *(a1 + 8) = v3;
  }

  else
  {
    v6 = &v3[-*a1];
    v7 = &v6[a2];
    if (&v6[a2] < 0)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v8 = v4 - *a1;
    if (2 * v8 > v7)
    {
      v7 = 2 * v8;
    }

    if (v8 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v9 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      v10 = *(a1 + 216);
      if (v10 + v9 > (a1 + 216))
      {
        operator new();
      }

      *(a1 + 216) = v10 + v9;
    }

    else
    {
      v10 = 0;
    }

    v12 = &v6[v10];
    v13 = v10 + v9;
    v14 = &v12[a2];
    bzero(v12, a2);
    v15 = *(a1 + 8);
    v16 = &v12[*a1 - v15];
    memcpy(v16, *a1, v15 - *a1);
    v17 = *a1;
    *a1 = v16;
    *(a1 + 8) = v14;
    v18 = *(a1 + 16);
    *(a1 + 16) = v13;
    if (v17)
    {
      if (a1 + 24 > v17 || (v19 = (a1 + 216), a1 + 216 <= v17))
      {

        operator delete(v17);
      }

      else if (v18 == *v19)
      {
        *v19 = v17;
      }
    }
  }
}

void TFont::TFont(TFont *this, const __CTFontDescriptor *a2, double a3, const CGAffineTransform *a4, const __CTFontDescriptor *a5)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 1) = 0;
  TFont::InitDescriptor(this + 2, a2);
  *(this + 3) = TFont::InitSize(a5, a3, v9);
  *(this + 4) = 0;
  *(this + 10) = 0x80000000;
  TFont::InitMatrix((this + 48), a4, a5);
  *(this + 14) = 0;
  v10 = *MEMORY[0x1E695F058];
  v11 = *(MEMORY[0x1E695F058] + 16);
  *(this + 6) = *MEMORY[0x1E695EFF8];
  *(this + 7) = v10;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 8) = v11;
  *(this + 144) = 0;
  *(this + 25) = 0;
  *(this + 24) = 0;
  *(this + 152) = 0u;
  *(this + 168) = 0u;
  *(this + 23) = this + 192;
  *(this + 52) = 0;
  *(this + 232) = 0u;
  *(this + 216) = 0u;
  *(this + 62) = 1065353216;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 72) = 1065353216;
  *(this + 296) = 0u;
  *(this + 312) = 0u;
  *(this + 328) = 0u;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 94) = 0;
  *(this + 48) = 0;
  *(this + 49) = 0;
  *(this + 400) = 0;
  *(this + 51) = TFont::InitBaseFont(this + 2);
  *(this + 52) = 0;
  *(this + 106) = 0;
  *(this + 29) = 0u;
  *(this + 30) = 0u;
  *(this + 55) = 0;
  *(this + 56) = 0;
  *(this + 54) = 0;
  *(this + 114) = 0;
  *(this + 124) = 1065353216;
  *(this + 63) = 0;
  *(this + 128) = 0;
  *(this + 65) = 0;
  *(this + 528) = 0;
  *(this + 67) = 0;
  *(this + 69) = 0;
  *(this + 68) = 0;
  TFont::SetExtras(this, a5, 0);
  TFont::SetFlags(this, 0, a5);
  TFont::SetOpticalSize(this, a5);
  TFont::AddFontSpecificFeatureSettings(this);
}

void TFont::InitDescriptor(atomic_ullong *this, id a2)
{
  *this = a2;
  if (!a2)
  {
    TDescriptorSource::TDescriptorSource(&v4);
    TDescriptorSource::CreateDefaultDescriptor(0, &v5);
  }
}

void TBaseFont::DetermineFontFlags(TBaseFont *this, unsigned int a2)
{
  v2 = a2;
  explicit = atomic_load_explicit(this + 12, memory_order_acquire);
  if ((a2 & 0x3D2) == 0)
  {
    v6 = 0;
    if ((a2 & 8) == 0)
    {
      goto LABEL_44;
    }

    goto LABEL_34;
  }

  if (explicit == @"LastResort")
  {
    goto LABEL_5;
  }

  if (!explicit)
  {
    v5 = 0;
    if (!IsSystemFontPostScriptName(0))
    {
      goto LABEL_19;
    }

    goto LABEL_7;
  }

  if (CFEqual(explicit, @"LastResort"))
  {
LABEL_5:
    v2 |= 8u;
    v5 = 10;
  }

  else
  {
    v5 = 0;
  }

  if (IsSystemFontPostScriptName(explicit))
  {
LABEL_7:
    v5 |= HIBYTE(*(this + 45)) & 0x10;
    if (IsPingFangPostScriptName(explicit))
    {
      v5 |= 0x100u;
    }

    goto LABEL_19;
  }

  if (explicit && (CFStringHasPrefix(explicit, @"Batang") || CFStringHasPrefix(explicit, @"Dotum") || CFStringHasPrefix(explicit, @"Gulim") || CFStringHasPrefix(explicit, @"Gungsuh")))
  {
    v5 |= 0x80u;
  }

LABEL_19:
  v7 = _CTGetEmojiFontName(1);
  if (v7 == explicit || explicit && v7 && CFEqual(explicit, v7))
  {
    v8 = 576;
  }

  else
  {
    v9 = _CTGetEmojiFontName(0);
    if (v9 != explicit && (!explicit || !v9 || !CFEqual(explicit, v9)))
    {
      goto LABEL_30;
    }

    v8 = 64;
  }

  v5 |= v8;
LABEL_30:
  if ((v5 & 0x240) != 0)
  {
    v6 = v5 | 0x10;
  }

  else
  {
    v6 = v5;
  }

  v2 |= 0x3D2u;
  if ((v2 & 8) == 0)
  {
    goto LABEL_44;
  }

LABEL_34:
  if (!explicit || !CFStringGetLength(explicit) || CFStringGetCharacterAtIndex(explicit, 0) == 46 || IsInvisibleSystemFontName(explicit) || IsInvisibleSystemFontPostScriptNameWithoutPrecedingPeriod(explicit))
  {
    v6 |= 8u;
  }

  else if ((*(*this + 312))(this))
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    TBaseFont::CopyMetadata(this, 0, &v13);
    v10 = atomic_load_explicit(&v13, memory_order_acquire);
    v11 = v10;
    if (v10)
    {
      Value = CFDictionaryGetValue(v10, @"MTD_Typeface_info_PlatformDelivery");
    }

    else
    {
      Value = 0;
    }

    if (IsInvisiblePlatformDelivery(Value))
    {
      v6 |= 8u;
    }
  }

  if ((v6 & 8) == 0)
  {
    v13 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 200))(&v13, this);
    atomic_load_explicit(&v13, memory_order_acquire);
    if (FSFontIsHidden())
    {
      v6 |= 8u;
    }
  }

LABEL_44:
  if ((v2 & 0x400) != 0 && (*(*this + 768))(this) == 2)
  {
    v6 |= 0x400u;
  }

  atomic_fetch_or_explicit(this + 45, v6, memory_order_relaxed);
  atomic_fetch_or_explicit(this + 46, v2, memory_order_relaxed);
}

const __CFString *IsSystemFontPostScriptName(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (FontServicesLibraryCore(0) && getFSFontIsOverriddenSystemFontNameSymbolLoc() && (SoftLinked__FSFontIsOverriddenSystemFontName(v1) & 1) != 0)
    {
      return 0;
    }

    else
    {
      if (qword_1ED568210 != -1)
      {
        dispatch_once(&qword_1ED568210, &__block_literal_global_20);
      }

      result = qword_1ED568208;
      if (qword_1ED568208)
      {
        return (CFDictionaryContainsKey(qword_1ED568208, v1) != 0);
      }
    }
  }

  return result;
}

BOOL IsPingFangPostScriptName(CFStringRef theString)
{
  if (theString == @".PingFang")
  {
    return 1;
  }

  if (!theString)
  {
    return 0;
  }

  HasPrefix = CFStringHasPrefix(theString, @".PingFang");
  result = 1;
  if (theString != @"PingFang" && !HasPrefix)
  {
    return CFStringHasPrefix(theString, @"PingFang") != 0;
  }

  return result;
}

CFComparisonResult CompareValueWithValueInAxisForKey(double a1, const __CFDictionary *a2, const __CFString *a3, double *a4)
{
  Value = CFDictionaryGetValue(a2, a3);
  v7 = Value;
  if (a4)
  {
    valuePtr = -1;
    CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
    *a4 = valuePtr;
  }

  return CFNumberCompare([MEMORY[0x1E696AD98] numberWithDouble:a1], v7, 0);
}

uint64_t TTenuousComponentFont::IsAppleColorEmojiUI(TTenuousComponentFont *this)
{
  if ((*(*this + 856))(this))
  {
    return 0;
  }

  if ((*(this + 46) & 0x200) == 0)
  {
    TBaseFont::DetermineFontFlags(this, 0x200u);
  }

  return (*(this + 45) >> 9) & 1;
}

_DWORD *TBaseFont::InitFontMetrics(TBaseFont *this, double a2)
{
  v2 = (this + 248);
  if (*(this + 62))
  {
    return v2;
  }

  v19[1] = DWORD1(__const__ZL17StrikeMetricsFromPK14CGFontHMetricsj6CGRectd_result);
  memset(v22, 255, 40);
  *&v22[40] = unk_18477AD60;
  v19[0] = 0;
  v21 = 0u;
  v20 = 0u;
  *v22 = *MEMORY[0x1E695EFF8];
  v5 = *MEMORY[0x1E695F058];
  *&v22[32] = *(MEMORY[0x1E695F058] + 16);
  *&v22[16] = v5;
  v22[48] = 0;
  if (!(*(*this + 712))() || ((*(*this + 800))(this, 0, v19, a2) & 1) == 0)
  {
    (*(*this + 640))(bboxes, this, 0, a2);
    v19[0] = *bboxes;
    v20 = *&bboxes[8];
    v21 = *&bboxes[24];
    *v22 = v16;
    *&v22[16] = v17;
    v22[48] = v18;
    if (CGRectGetMaxY(v17) > *&v20)
    {
      v6 = *&v21;
      goto LABEL_7;
    }

    MinY = CGRectGetMinY(*&v22[16]);
    v6 = *&v21;
    if (MinY < -(*(&v20 + 1) + *&v21))
    {
LABEL_7:
      if (v6 == 0.0 && ((*(*this + 480))(this, 1398030676) & 1) == 0)
      {
        InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(this);
        v14 = 192;
        glyphs = -21846;
        if ((*(*this + 24))(this))
        {
          (*(*this + 672))(this, &v14, &glyphs, 1);
        }

        else
        {
          CGFontGetGlyphsForUnichars();
        }

        if (glyphs)
        {
          *&v9 = -1;
          *(&v9 + 1) = -1;
          *bboxes = v9;
          *&bboxes[16] = v9;
          if (CGFontGetGlyphBBoxes(InitializedGraphicsFont, &glyphs, 1uLL, bboxes) && (CGRectGetMaxY(*bboxes) > *&v20 || CGRectGetMinY(*bboxes) < -*(&v20 + 1)))
          {
            v22[48] = 1;
          }
        }
      }
    }
  }

  if (!*v2 && v2 != v19)
  {
    v10 = v21;
    *(this + 16) = v20;
    *(this + 17) = v10;
    v11 = *&v22[16];
    *(this + 18) = *v22;
    *(this + 19) = v11;
    *(this + 20) = *&v22[32];
    *(this + 336) = v22[48];
    __dmb(0xBu);
    *(this + 62) = v19[0];
  }

  return v2;
}

BOOL TBaseFont::GetStrikeMetricsForSystemFont(atomic_ullong *this, char a2, StrikeMetrics *a3, double a4)
{
  if (a2)
  {
    return 0;
  }

  v19 = 0xAAAAAAAAAAAAAAAALL;
  CopyStrikeMetricsDictionaryRepresentationForSystemFont(atomic_load_explicit(this + 12, memory_order_acquire), &v19);
  explicit = atomic_load_explicit(&v19, memory_order_acquire);
  v4 = explicit != 0;
  if (explicit)
  {
    v8 = [objc_msgSend(explicit objectForKeyedSubscript:{@"unitsPerEm", "unsignedIntValue"}];
    v18 = *MEMORY[0x1E695EFF8];
    v16 = *MEMORY[0x1E695F058];
    v17 = *(MEMORY[0x1E695F058] + 16);
    *a3 = v8;
    *(a3 + 24) = 0u;
    *(a3 + 8) = 0u;
    *(a3 + 40) = v18;
    *(a3 + 56) = v16;
    *(a3 + 72) = v17;
    *(a3 + 88) = 0;
    [objc_msgSend(explicit objectForKeyedSubscript:{@"ascent", v16, v17, v18), "doubleValue"}];
    *(a3 + 1) = v9;
    [objc_msgSend(explicit objectForKeyedSubscript:{@"descent", "doubleValue"}];
    *(a3 + 2) = v10;
    [objc_msgSend(explicit objectForKeyedSubscript:{@"leading", "doubleValue"}];
    *(a3 + 3) = v11;
    v12 = [explicit objectForKeyedSubscript:@"capHeight"];
    if (v12)
    {
      [v12 doubleValue];
    }

    else
    {
      InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(this);
      CapHeight = CGFontGetCapHeight(InitializedGraphicsFont);
    }

    *(a3 + 4) = CapHeight;
    CGRectMakeWithDictionaryRepresentation([explicit objectForKeyedSubscript:@"bbox"], (a3 + 56));
    *(a3 + 88) = [objc_msgSend(explicit objectForKeyedSubscript:{@"forceAscenderDelta", "BOOLValue"}];
  }

  return v4;
}

BOOL TComponentFont::GetStrikeMetricsForSystemFont(atomic_ullong *this, int a2, StrikeMetrics *a3, double a4)
{
  StrikeMetricsForSystemFont = TBaseFont::GetStrikeMetricsForSystemFont(this, a2, a3, 0.0);
  if (StrikeMetricsForSystemFont)
  {
    v9.n128_f64[0] = a4;
    TComponentFont::AdjustLineMetrics(this, a2, a3, v9);
  }

  return StrikeMetricsForSystemFont;
}

Class TCFBase<TFont>::GetTypeID(void)::{lambda(void *)#1}::__invoke()
{
  TCFBase<TFont>::CreateTypeID();
  v0 = TCFBase<TFont>::fTypeID;

  return _CTFontEnableBridging(v0);
}

uint64_t TCFBase<TFont>::CreateTypeID()
{
  {
    TCFBase<TFont>::CreateTypeID(void)::runtimeClass = 0;
    *algn_1ED5672E8 = "CTFont";
    qword_1ED5672F0 = 0;
    unk_1ED5672F8 = 0;
    qword_1ED567300 = TCFBase<TFont>::ClassDestruct;
    qword_1ED567308 = TCFBase<TFont>::ClassEqual;
    qword_1ED567310 = TCFBase<TFont>::ClassHash;
    unk_1ED567318 = 0;
    qword_1ED567320 = TCFBase<TFont>::ClassDebug;
    unk_1ED567328 = 0;
    qword_1ED567330 = 0;
    unk_1ED567338 = 0;
  }

  result = _CFRuntimeRegisterClass();
  TCFBase<TFont>::fTypeID = result;
  return result;
}

void TBaseFont::CreateDescriptorAttributes(atomic_ullong *this@<X0>, CFDictionaryRef *a2@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v14[14] = v4;
  v14[13] = v4;
  v14[12] = v4;
  v14[11] = v4;
  v14[10] = v4;
  v14[9] = v4;
  v14[8] = v4;
  v14[7] = v4;
  v14[6] = v4;
  v14[5] = v4;
  v14[4] = v4;
  v14[3] = v4;
  v14[2] = v4;
  v14[1] = v4;
  v14[0] = v4;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v15 = v14;
  v9[14] = v4;
  v9[13] = v4;
  v9[12] = v4;
  v9[11] = v4;
  v9[10] = v4;
  v9[9] = v4;
  v9[8] = v4;
  v9[7] = v4;
  v9[6] = v4;
  v9[4] = v4;
  v9[5] = v4;
  v9[2] = v4;
  v9[3] = v4;
  v9[0] = v4;
  v9[1] = v4;
  memset(values, 0, sizeof(values));
  v10 = v9;
  explicit = atomic_load_explicit(this + 12, memory_order_acquire);
  if (explicit)
  {
    std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::push_back[abi:fn200100](&v11, &kCTFontNameAttribute);
    v7 = explicit;
    std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](values, &v7);
  }

  TBaseFont::CopyAttributeInternal(this, @"NSCTFontMatrixAttribute", &v7);
  v6 = atomic_exchange(&v7, 0);

  if (v6)
  {
    std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::push_back[abi:fn200100](&v11, &kCTFontMatrixAttribute);
    v7 = v6;
    std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](values, &v7);
  }

  (*(*this + 840))(this, &v11, values);
  *a2 = CFDictionaryCreate(*MEMORY[0x1E695E480], v11, values[0], (v12 - v11) >> 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);

  v7 = values;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v7);
  values[0] = &v11;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](values);
}

const void **std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::push_back[abi:fn200100](const void **result, void *a2)
{
  v2 = result;
  v4 = result[1];
  v3 = result[2];
  if (v4 >= v3)
  {
    v6 = (v4 - *result) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v7 = v3 - *result;
    v8 = v7 >> 2;
    if (v7 >> 2 <= (v6 + 1))
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x7FFFFFFFFFFFFFF8)
    {
      v9 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v8;
    }

    v18[4] = result + 3;
    if (v9)
    {
      v10 = result[33];
      v11 = &v10[8 * v9];
      if (v11 > (v2 + 33))
      {
        if (!(v9 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v2[33] = v11;
    }

    else
    {
      v10 = 0;
    }

    v13 = &v10[8 * v9];
    v12 = &v10[8 * v6];
    *v12 = *a2;
    v5 = v12 + 8;
    v14 = v2[1] - *v2;
    v15 = &v12[-v14];
    memcpy(&v12[-v14], *v2, v14);
    v16 = *v2;
    *v2 = v15;
    v2[1] = v5;
    v17 = v2[2];
    v2[2] = v13;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    result = std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(v18);
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  v2[1] = v5;
  return result;
}

const void **std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](const void **result, void *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 3;
    if ((v7 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v8 = v4 - *result;
    v9 = v8 >> 2;
    if (v8 >> 2 <= (v7 + 1))
    {
      v9 = v7 + 1;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v9;
    }

    v11 = (result + 3);
    v19[4] = v3 + 3;
    if (v10)
    {
      v12 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<void const*,30ul>>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v14 = v12 + 8 * v10;
    v13 = (v12 + 8 * v7);
    *v13 = *a2;
    v6 = v13 + 1;
    v15 = v3[1] - *v3;
    v16 = v13 - v15;
    memcpy(v13 - v15, *v3, v15);
    v17 = *v3;
    *v3 = v16;
    v3[1] = v6;
    v18 = v3[2];
    v3[2] = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
    result = std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  v3[1] = v6;
  return result;
}

uint64_t std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<void const*,30ul>>(uint64_t a1, unint64_t a2)
{
  v3 = (a1 + 240);
  result = *(a1 + 240);
  v4 = result + 8 * a2;
  if (v4 > v3)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v3 = v4;
  return result;
}

void TCFMutableDictionary::TCFMutableDictionary(TCFMutableDictionary *this, CFDictionaryRef theDict)
{
  v3 = *MEMORY[0x1E695E480];
  if (theDict)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(v3, 0, theDict);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  *this = MutableCopy;
}

void TBaseFont::TBaseFont(TBaseFont *this, id a2, __CFString *a3, __CFString *a4)
{
  *(this + 2) = 0;
  *this = &unk_1EF2598E8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 10) = a2;
  *(this + 11) = a3;
  *(this + 12) = a4;
  *(this + 13) = 0;
  *(this + 28) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 164) = 0u;
  *(this + 180) = 0x3000000010000000;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 29) = 0;
  *(this + 30) = 0;
  v7 = MEMORY[0x1E695EFF8];
  v8 = MEMORY[0x1E695F058];
  *(this + 62) = 0;
  v9 = v8[1];
  *(this + 19) = *v8;
  *(this + 20) = v9;
  *(this + 18) = *v7;
  *(this + 336) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 98) = 1065353216;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 108) = 1065353216;
  *(this + 220) = -1;
  *(this + 460) = 0;
  *(this + 117) = 0;
  *(this + 444) = 0;
  *(this + 452) = 0;
  *(this + 60) = this + 472;
  *(this + 61) = 0;
  *(this + 62) = 0;
  *(this + 63) = 0;
  *(this + 68) = this + 512;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 552) = 0u;
  TBaseFont::Init(this, 0);
}

const char *GetSystemRootPath(void)::$_0::__invoke()
{
  result = getenv("SIMULATOR_ROOT");
  if (result)
  {
    v1 = result;
    if (*result)
    {
      if (result[strlen(result) - 1] == 47)
      {
        v2 = "";
      }

      else
      {
        v2 = "/";
      }

      result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%s%s", v1, v2);
      GetSystemRootPath(void)::_sysPath = result;
    }
  }

  return result;
}

Class _CTFontEnableBridging(uint64_t a1)
{
  result = objc_lookUpClass("UICTFont");
  if (result)
  {

    return MEMORY[0x1EEDB8558](a1, "UICTFont");
  }

  return result;
}

const void *___Z26IsSystemFontPostScriptNamePK10__CFString_block_invoke()
{
  if (qword_1ED568240 != -1)
  {
    dispatch_once(&qword_1ED568240, &__block_literal_global_110);
  }

  result = qword_1ED568238;
  if (qword_1ED568238)
  {
    result = CFDictionaryGetValue(qword_1ED568238, @"Attrs");
  }

  qword_1ED568208 = result;
  return result;
}

CFStringRef GetSystemLibraryFontsPath(void)::$_0::__invoke()
{
  v0 = *MEMORY[0x1E695E480];
  if (qword_1ED567DB8 != -1)
  {
    dispatch_once_f(&qword_1ED567DB8, 0, GetSystemRootPath(void)::$_0::__invoke);
  }

  result = CFStringCreateWithFormat(v0, 0, @"%@System/Library/Fonts/", GetSystemRootPath(void)::_sysPath);
  qword_1ED567DD8 = result;
  return result;
}

CFStringRef GetSystemLibraryPrivateFontsPath(void)::$_0::__invoke()
{
  v0 = *MEMORY[0x1E695E480];
  if (qword_1ED567DB8 != -1)
  {
    dispatch_once_f(&qword_1ED567DB8, 0, GetSystemRootPath(void)::$_0::__invoke);
  }

  result = CFStringCreateWithFormat(v0, 0, @"%@System/Library/PrivateFrameworks/FontServices.framework/CorePrivate/", GetSystemRootPath(void)::_sysPath);
  qword_1ED567DE8 = result;
  return result;
}

const __CFDictionary *TSplicedFontDict::ComponentHasVariations(atomic_ullong *this)
{
  result = atomic_load_explicit(this, memory_order_acquire);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"hasVariations");
    if (result)
    {
      return (CFBooleanGetValue(result) != 0);
    }
  }

  return result;
}

BOOL TSplicedFontDict::IsSystemUISplice(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {
    Value = CFDictionaryGetValue(explicit, @"NSCTFontUIFontDesignTrait");
    if (Value)
    {
      HasPrefix = CFEqual(Value, @"NSCTFontUIFontDesignDefault");
      return HasPrefix != 0;
    }
  }

  v5 = 1;
  FontName = TSplicedFontDict::FindFontName(this, 1, 0);
  if (FontName != @".AppleSystemUIFont")
  {
    if (!FontName)
    {
      return 0;
    }

    HasPrefix = CFStringHasPrefix(FontName, @".AppleSystemUIFont");
    return HasPrefix != 0;
  }

  return v5;
}

void TBaseFont::TBaseFont(TBaseFont *this, id a2)
{
  *(this + 2) = 0;
  *this = &unk_1EF2598E8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 12) = 0;
  *(this + 13) = a2;
  *(this + 28) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 164) = 0u;
  *(this + 180) = 0x3000000010000000;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 29) = 0;
  *(this + 30) = 0;
  v4 = MEMORY[0x1E695EFF8];
  v5 = MEMORY[0x1E695F058];
  *(this + 62) = 0;
  v6 = v5[1];
  *(this + 19) = *v5;
  *(this + 20) = v6;
  *(this + 18) = *v4;
  *(this + 336) = 0;
  *(this + 344) = 0u;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 98) = 1065353216;
  *(this + 25) = 0u;
  *(this + 26) = 0u;
  *(this + 108) = 1065353216;
  *(this + 220) = -1;
  *(this + 460) = 0;
  *(this + 117) = 0;
  *(this + 444) = 0;
  *(this + 452) = 0;
  *(this + 60) = this + 472;
  *(this + 61) = 0;
  *(this + 62) = 0;
  *(this + 63) = 0;
  *(this + 68) = this + 512;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 552) = 0u;
  TBaseFont::Init(this, a2);
}

void TBaseFont::Init(TBaseFont *this, CGFont *a2)
{
  v9 = -86;
  if (a2)
  {
    CreateFontURLFromFont(a2, &v9, &v10);

    if (v9)
    {
LABEL_3:
      v4 = 0x20000000;
      v5 = 180;
      goto LABEL_15;
    }
  }

  else
  {
    if (!atomic_load_explicit(this + 10, memory_order_acquire))
    {
      return;
    }

    v9 = IsInMemoryFontURL(atomic_load_explicit(this + 10, memory_order_acquire));
    if (v9)
    {
      goto LABEL_3;
    }
  }

  if (!atomic_load_explicit(this + 11, memory_order_acquire))
  {
    explicit = atomic_load_explicit(this + 10, memory_order_acquire);
    if (explicit)
    {
      v10 = 0;
      if (CFURLGetBaseURL(explicit))
      {

        explicit = atomic_load_explicit(&v10, memory_order_acquire);
      }

      v8 = CFURLCopyFileSystemPath(explicit, kCFURLPOSIXPathStyle);
    }

    else
    {
      v8 = 0;
    }
  }

  if (!IsSystemFontPath(atomic_load_explicit(this + 11, memory_order_acquire)))
  {
    goto LABEL_16;
  }

  v4 = 16;
  atomic_fetch_or_explicit(this + 45, 0x10u, memory_order_relaxed);
  v5 = 184;
LABEL_15:
  atomic_fetch_or_explicit((this + v5), v4, memory_order_relaxed);
LABEL_16:
  if (!atomic_load_explicit(this + 12, memory_order_acquire))
  {
    if (a2)
    {
      v7 = atomic_exchange(this + 12, CGFontCopyPostScriptName(a2));
    }

    else
    {
      CopyPostScriptNameFromFontURL(atomic_load_explicit(this + 10, memory_order_acquire), &v10);

      v7 = v10;
    }
  }
}

void TTenuousComponentFont::CopyVariation(atomic_ullong *this@<X0>, TTenuousComponentFont *a2@<X8>)
{
  if ((this[89] & 4) != 0)
  {
    if (*(this + 793) == 1)
    {
      v10 = 0xAAAAAAAAAAAAAAAALL;
      TBaseFont::CopyAttributeInternal(this, @"NSCTFontVariationAttribute", &v9);
      v10 = atomic_exchange(&v9, 0);

      explicit = atomic_load_explicit(&v10, memory_order_acquire);
      v5 = MEMORY[0x1E695E738];
      if (!explicit)
      {
        v9 = 0xAAAAAAAAAAAAAAAALL;
        (*(*this + 120))(&v9, this);
        CreateValidVariation(atomic_load_explicit(&v9, memory_order_acquire), atomic_load_explicit(this + 96, memory_order_acquire), &v8);

        if (atomic_load_explicit(&v10, memory_order_acquire))
        {
          v7 = atomic_load_explicit(&v10, memory_order_acquire);
          TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v7, @"NSCTFontVariationAttribute");
        }

        else
        {
          TBaseFont::SetAttributeInternal<__CFDictionary const*>(this, *v5, @"NSCTFontVariationAttribute");
        }
      }

      if (*v5 == atomic_load_explicit(&v10, memory_order_acquire))
      {
        v6 = 0;
      }

      else
      {
        v6 = atomic_exchange(&v10, 0);
      }

      *a2 = v6;
    }

    else if (atomic_load_explicit(this + 96, memory_order_acquire))
    {
      *a2 = atomic_load_explicit(this + 96, memory_order_acquire);
    }

    else
    {

      TTenuousComponentFont::CopyDefaultVariation(a2, this);
    }
  }

  else
  {
    *a2 = 0;
  }
}

BOOL IsInMemoryFontURL(const __CFURL *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v9[11] = v1;
  v9[10] = v1;
  v9[9] = v1;
  v9[8] = v1;
  v9[7] = v1;
  v9[6] = v1;
  v9[4] = v1;
  v9[5] = v1;
  v9[2] = v1;
  v9[3] = v1;
  v9[0] = v1;
  v9[1] = v1;
  v7 = 0;
  v8 = 0;
  v6 = 0;
  v10 = v9;
  BytesForComponent = GetBytesForComponent(a1, &v6);
  if (BytesForComponent == -1)
  {
    v3 = 0;
  }

  else
  {
    if (v7 - v6 <= BytesForComponent)
    {
      __break(1u);
    }

    v3 = strncmp(&v6[BytesForComponent], "iNmEmOrYcGfOnT_", 0xFuLL) == 0;
  }

  v5 = &v6;
  std::vector<unsigned char,TInlineBufferAllocator<unsigned char,192ul>>::__destroy_vector::operator()[abi:fn200100](&v5);
  return v3;
}

unint64_t GetBytesForComponent(const __CFURL *a1, UInt8 **a2)
{
  v4 = CFURLGetBytes(a1, 0, 0);
  if (v4 == -1)
  {
    return -1;
  }

  v5 = v4;
  if (v4 > 383)
  {
    return -1;
  }

  v6 = v4 + 1;
  v7 = *a2;
  v8 = a2[1] - *a2;
  if (v8 <= v4)
  {
    std::vector<unsigned char,TInlineBufferAllocator<unsigned char,192ul>>::__append(a2, v6 - v8);
    v7 = *a2;
  }

  else if (v6 < v8)
  {
    a2[1] = &v7[v6];
  }

  result = CFURLGetBytes(a1, v7, v5);
  if (a2[1] - *a2 <= result)
  {
    __break(1u);
  }

  else
  {
    (*a2)[result] = 0;

    return CFURLGetByteRangeForComponent(a1, kCFURLComponentNetLocation, 0).location;
  }

  return result;
}

void std::vector<unsigned char,TInlineBufferAllocator<unsigned char,192ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = v1 + 27;
    if (v1 + 3 <= v2)
    {
      v4 = v3 >= v2;
      v5 = v3 == v2;
    }

    else
    {
      v4 = 0;
      v5 = 0;
    }

    if (!v5 && v4)
    {
      if (v1[2] == v1[27])
      {
        *v3 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

BOOL IsSystemFontPath(CFStringRef theString)
{
  if (qword_1ED567DD0 != -1)
  {
    dispatch_once_f(&qword_1ED567DD0, 0, GetSystemLibraryFontsPath(void)::$_0::__invoke);
  }

  if (qword_1ED567DD8 == theString || theString && qword_1ED567DD8 && CFStringHasPrefix(theString, qword_1ED567DD8))
  {
    return 1;
  }

  if (qword_1ED567DE0 != -1)
  {
    dispatch_once_f(&qword_1ED567DE0, 0, GetSystemLibraryPrivateFontsPath(void)::$_0::__invoke);
  }

  if (qword_1ED567DE8 == theString)
  {
    return 1;
  }

  result = 0;
  if (theString)
  {
    if (qword_1ED567DE8)
    {
      return CFStringHasPrefix(theString, qword_1ED567DE8) != 0;
    }
  }

  return result;
}

const __CFArray *TSplicedFont::EvalComponents(atomic_ullong *this, const __CFArray *a2)
{
  v57 = 0.0;
  v58 = 0.0;
  v56 = 0.0;
  v55 = 0;
  *v54 = 0;
  v53 = 0;
  TSplicedFontDict::GetTraitsValuesFromMetrics(this + 75, &v54[1], v54, &v53, &v58, &v57, &v56, &v55);
  if (a2)
  {
    Count = CFArrayGetCount(a2);
    if (Count >= 1)
    {
      v5 = Count;
      v6 = 0;
      v7 = (this + 77);
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v6);
        v9 = *(ValueAtIndex + 5);
        if ((*(v9 + 16) & 0x80000000) == 0)
        {
          TDescriptor::InitBaseFont(*(ValueAtIndex + 5), 0, 0.0);
        }

        explicit = atomic_load_explicit((v9 + 32), memory_order_acquire);
        if (!explicit)
        {
          goto LABEL_50;
        }

        v11 = (*(*explicit + 16))(explicit);
        if (v11 != 1414809156 && v11 != 1413695044)
        {
          goto LABEL_50;
        }

        ComponentAttribute = TComponentFont::GetComponentAttribute(explicit, @"opticalSize");
        if (!ComponentAttribute)
        {
          return a2;
        }

        valuePtr = -1;
        CFNumberGetValue(ComponentAttribute, kCFNumberDoubleType, &valuePtr);
        v14 = valuePtr;
        v15 = *v7;
        if (!*v7)
        {
          operator new();
        }

        v16 = *(v15 + 8);
        v17 = *(v15 + 16);
        if (v16 >= v17)
        {
          v22 = 0x6DB6DB6DB6DB6DB7 * ((v16 - *v15) >> 3);
          v23 = v22 + 1;
          if ((v22 + 1) > 0x492492492492492)
          {
            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v24 = 0x6DB6DB6DB6DB6DB7 * ((v17 - *v15) >> 3);
          if (2 * v24 > v23)
          {
            v23 = 2 * v24;
          }

          v25 = v24 >= 0x249249249249249 ? 0x492492492492492 : v23;
          if (v25)
          {
            v26 = *(v15 + 136);
            v27 = v26 + 56 * v25;
            if (v27 > v15 + 136)
            {
              if (v25 <= 0x492492492492492)
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            *(v15 + 136) = v27;
          }

          else
          {
            v26 = 0;
          }

          v28 = v26 + 56 * v22;
          v29 = v26 + 56 * v25;
          v31 = v57;
          v30 = v58;
          v32 = v55;
          *v28 = v14;
          *(v28 + 8) = 0;
          *(v28 + 16) = 0;
          *(v28 + 24) = 0;
          *(v28 + 32) = v30;
          *(v28 + 40) = v31;
          *(v28 + 48) = 0;
          *(v28 + 52) = v32;
          v21 = v28 + 56;
          v33 = *(v15 + 8) - *v15;
          v34 = v28 - v33;
          memcpy((v28 - v33), *v15, v33);
          v35 = *v15;
          *v15 = v34;
          *(v15 + 8) = v21;
          v36 = *(v15 + 16);
          *(v15 + 16) = v29;
          if (v35)
          {
            if (v15 + 24 > v35 || (v37 = (v15 + 136), v15 + 136 <= v35))
            {
              operator delete(v35);
            }

            else if (v36 == *v37)
            {
              *v37 = v35;
            }
          }
        }

        else
        {
          v19 = v57;
          v18 = v58;
          v20 = v55;
          *v16 = valuePtr;
          *(v16 + 8) = 0;
          *(v16 + 16) = 0;
          *(v16 + 24) = 0;
          *(v16 + 32) = v18;
          *(v16 + 40) = v19;
          v21 = v16 + 56;
          *(v16 + 48) = 0;
          *(v16 + 52) = v20;
        }

        *(v15 + 8) = v21;
        v38 = TComponentFont::GetComponentAttribute(explicit, @"leadingOverride");
        if (v38)
        {
          CFNumberGetValue(v38, kCFNumberDoubleType, (v21 - 48));
        }

        v39 = TComponentFont::GetComponentAttribute(explicit, @"lineSpacingOverrideRatio");
        if (v39)
        {
          CFNumberGetValue(v39, kCFNumberDoubleType, (v21 - 40));
        }

        v40 = TComponentFont::GetComponentAttribute(explicit, @"capHeight");
        if (v40)
        {
          CFNumberGetValue(v40, kCFNumberIntType, (v21 - 8));
        }

        v41 = TComponentFont::GetComponentAttribute(explicit, @"trackingAmount");
        if (v41)
        {
          CFNumberGetValue(v41, kCFNumberDoubleType, (v21 - 32));
        }

        v42 = (v21 - 56);
        if (!v6 || (0x6DB6DB6DB6DB6DB7 * ((*(*v7 + 8) - **v7) >> 3)) < 2)
        {
          break;
        }

        v43 = *(*v7 + 8);
        v44 = *v42;
        v45 = *(v21 - 40);
        v46 = *(v21 - 24);
        *(explicit + 648) = *(v21 - 8);
        *(explicit + 616) = v45;
        *(explicit + 632) = v46;
        *(explicit + 600) = v44;
        v42 = (v43 - 112);
        if (v43 != 112)
        {
          v47 = 656;
LABEL_49:
          v48 = explicit + v47;
          v49 = *v42;
          v50 = v42[1];
          v51 = v42[2];
          *(v48 + 48) = *(v42 + 6);
          *(v48 + 16) = v50;
          *(v48 + 32) = v51;
          *v48 = v49;
        }

LABEL_50:
        if (v5 == ++v6)
        {
          return a2;
        }
      }

      v47 = 600;
      goto LABEL_49;
    }
  }

  return a2;
}

const __CFDictionary *TSplicedFontDict::GetTraitsValuesFromMetrics(atomic_ullong *this, BOOL *a2, BOOL *a3, BOOL *a4, double *a5, double *a6, double *a7, unsigned int *a8)
{
  result = atomic_load_explicit(this, memory_order_acquire);
  if (!result)
  {
    return result;
  }

  result = CFDictionaryGetValue(result, @"FontMetrics");
  if (!result)
  {
    return result;
  }

  v16 = result;
  Value = CFDictionaryGetValue(result, @"isFixedPitch");
  if (Value && CFStringGetIntValue(Value))
  {
    *a8 |= 0x400u;
  }

  if (!*a4)
  {
    v18 = CFDictionaryGetValue(v16, @"italicAngle");
    if (v18)
    {
      v19 = CFStringGetDoubleValue(v18) * 0.00555555556;
      *a8 |= 1u;
    }

    else
    {
      v19 = 0.0;
    }

    *a7 = v19;
    *a4 = 1;
  }

  if (!*a2)
  {
    v20 = CFDictionaryGetValue(v16, @"weightClass");
    if (v20)
    {
      v21 = v20;
      if (CFStringGetCharacterAtIndex(v20, 1) - 54 <= 0xFFFFFFFFFFFFFFF9)
      {
        *a8 |= 2u;
      }

      Length = CFStringGetLength(v21);
      if (Length >= 2 && (v23 = Length, CFStringGetCharacterAtIndex(v21, 0) == 119))
      {
        v24 = kCTFontDefaultWeights[CFStringGetCharacterAtIndex(v21, 1) - 49];
        if (v23 >= 4)
        {
          v24 = v24 + (CFStringGetCharacterAtIndex(v21, 3) - 48) * 0.02;
        }

        *a5 = v24;
        *a2 = 1;
      }

      else
      {
        *a2 = 0;
        *a5 = 2.0;
      }
    }
  }

  if (!*a3)
  {
    v25 = CFDictionaryGetValue(v16, @"width");
    if (v25)
    {
      valuePtr = -1;
      CFNumberGetValue(v25, kCFNumberDoubleType, &valuePtr);
      v26 = *&valuePtr;
      *a6 = valuePtr;
      IntValue = ClassOfWidth(v26);
    }

    else
    {
      if (*a3)
      {
        goto LABEL_35;
      }

      v28 = CFDictionaryGetValue(v16, @"widthClass");
      v29 = 0.0;
      if (v28)
      {
        IntValue = CFStringGetIntValue(v28);
        if (IntValue <= 0xAu)
        {
          v29 = kWidthScale[IntValue & 0xF];
        }
      }

      else
      {
        IntValue = 5;
      }

      *a6 = v29;
    }

    *a3 = 1;
    if (IntValue <= 5)
    {
      if (IntValue == 5)
      {
        goto LABEL_35;
      }

      v30 = 64;
    }

    else
    {
      v30 = 32;
    }

    *a8 |= v30;
  }

LABEL_35:
  v31 = CFDictionaryGetValue(v16, @"familyClass");
  if (v31)
  {
    v32 = CFStringGetIntValue(v31);
    if (v32 >= 1)
    {
      *a8 |= v32 >> 8 << 28;
    }
  }

  if (CFDictionaryGetValue(v16, @"shortTrait"))
  {
    *a8 |= 0x8000u;
  }

  result = CFDictionaryGetValue(v16, @"tallTrait");
  if (result)
  {
    *a8 |= 0x10000u;
  }

  return result;
}

void TBaseFont::InitAttributesDict(atomic_ullong *this)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v2 = atomic_exchange(&Mutable, 0);

  v3 = 0;
  atomic_compare_exchange_strong(this + 15, &v3, v2);
  if (v3)
  {
    v4 = v2;
  }

  else
  {
    v4 = 0;
  }
}

void TFont::SetFlags(TFont *this, int a2, const __CTFontDescriptor *a3)
{
  if (a3)
  {
    v6 = *(a3 + 5);
    atomic_load_explicit((v6 + 8), memory_order_acquire);
    explicit = atomic_load_explicit((v6 + 8), memory_order_acquire);
    if (explicit && (v8 = CFDictionaryGetValue(explicit, @"NSCTFontOrientationAttribute")) != 0 && (v9 = v8, v10 = CFGetTypeID(v8), v10 == CFNumberGetTypeID()))
    {
      LODWORD(v41[0]) = -1431655766;
      CFNumberGetValue(v9, kCFNumberIntType, v41);
      if (LODWORD(v41[0]) == 1)
      {
        a2 &= ~1u;
      }

      else if (LODWORD(v41[0]) == 2)
      {
        a2 |= 1u;
      }
    }

    else
    {
      TDescriptor::CopyAttributes(*(a3 + 5), v41);
      v11 = atomic_exchange(v41, 0);

      v12 = v11;
      v13 = v12;
      if (v12)
      {
        Value = CFDictionaryGetValue(v12, @"NSCTFontTraitsAttribute");
      }

      else
      {
        Value = 0;
      }

      a2 |= (GetSymbolicTraitsFromTraits(Value) >> 11) & 1;
    }

    v16 = (v6 + 8);
    atomic_load_explicit((v6 + 8), memory_order_acquire);
    v17 = atomic_load_explicit((v6 + 8), memory_order_acquire);
    if (v17)
    {
      v18 = CFDictionaryGetValue(v17, @"CTFontCacheGlyphImagesAttribute");
      if (v18)
      {
        v19 = v18;
        v20 = CFGetTypeID(v18);
        if (v20 == CFBooleanGetTypeID() && !CFBooleanGetValue(v19))
        {
          a2 |= 2u;
        }
      }
    }

    atomic_load_explicit(v16, memory_order_acquire);
    v21 = atomic_load_explicit(v16, memory_order_acquire);
    if (v21)
    {
      v22 = CFDictionaryGetValue(v21, @"CTFontDisableColorBitmapSizeModAttribute");
      if (v22)
      {
        v23 = v22;
        IntValue = -1431655766;
        LODWORD(v41[0]) = -1431655766;
        v25 = CFGetTypeID(v22);
        if (v25 == CFNumberGetTypeID() || v25 == CFBooleanGetTypeID())
        {
          CFNumberGetValue(v23, kCFNumberIntType, v41);
          v26 = 1;
          IntValue = v41[0];
        }

        else if (v25 == CFStringGetTypeID())
        {
          IntValue = CFStringGetIntValue(v23);
          v26 = 1;
        }

        else
        {
          v26 = 0;
        }

        if ((v26 & (IntValue != 0)) != 0)
        {
          a2 |= 0x10u;
        }
      }
    }

    v27 = (v6 + 8);
    atomic_load_explicit((v6 + 8), memory_order_acquire);
    v28 = atomic_load_explicit((v6 + 8), memory_order_acquire);
    if (v28)
    {
      v29 = CFDictionaryGetValue(v28, @"NSCTFontFeatureSettingsAttribute");
      if (v29)
      {
        v45 = 0xAAAAAAAAAAAAAAAALL;
        CreateFeatureSettingsByConverting(v29, &v45);
        if (atomic_load_explicit(&v45, memory_order_acquire))
        {
          v42 = xmmword_18475C4F0;
          memset(v43, 170, sizeof(v43));
          v44 = 0xAAAAAAAAFFFFFFFFLL;
          memset(v41, 170, sizeof(v41));
          TFontFeatureSettingList::TFontFeatureSettingList(v41, atomic_load_explicit(&v45, memory_order_acquire));
          if (TFont::ShouldPropagateFeatureSetting(this, v41))
          {
            a2 |= 4u;
          }

          std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::~__hash_table(v43);
          std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::~__hash_table(&v41[5]);
          std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::destroy(&v41[1], v41[2]);
        }
      }
    }

    atomic_load_explicit(v27, memory_order_acquire);
    v30 = atomic_load_explicit(v27, memory_order_acquire);
    if (v30 && (v31 = CFDictionaryGetValue(v30, @"NSCTFontFallbackOptionAttribute")) != 0 && (v32 = v31, v33 = CFGetTypeID(v31), v33 == CFNumberGetTypeID()))
    {
      v41[0] = 0xAAAAAAAAAAAAAAAALL;
      CFNumberGetValue(v32, kCFNumberLongType, v41);
      v15 = LODWORD(v41[0]) << 6;
    }

    else
    {
      v15 = 192;
    }

    atomic_load_explicit((v6 + 8), memory_order_acquire);
    v34 = atomic_load_explicit((v6 + 8), memory_order_acquire);
    if (v34)
    {
      v35 = CFDictionaryGetValue(v34, @"CTFontDescriptorLanguageAttribute");
      if (v35)
      {
        v36 = v35;
        v37 = CFGetTypeID(v35);
        if (v37 == CFStringGetTypeID())
        {
          v41[0] = 0xAAAAAAAAAAAAAAAALL;
          LanguageIdentifierByNormalizing(v36, 0, v41);
          v38 = atomic_load_explicit(v41, memory_order_acquire);
          if (v38 == @"zh-")
          {
          }

          else
          {
            v39 = v38;
            if (!v38)
            {

              goto LABEL_51;
            }

            HasPrefix = CFStringHasPrefix(v38, @"zh-");

            if (!HasPrefix)
            {
              goto LABEL_51;
            }
          }

          a2 |= 0x20u;
LABEL_51:
        }
      }
    }
  }

  else
  {
    v15 = 192;
  }

  *(this + 3) = a2 | v15;
}

const __CFDictionary *ClampValueToRangeOfAxis(double a1, const __CFDictionary *result)
{
  if (result)
  {
    v2 = result;
    v3 = trunc(a1 * 10000.0) / 10000.0;
    v4 = NAN;
    result = CompareValueWithValueInAxisForKey(v3, result, @"NSCTVariationAxisMinimumValue", &v4);
    if (result != -1)
    {
      return CompareValueWithValueInAxisForKey(v3, v2, @"NSCTVariationAxisMaximumValue", &v4);
    }
  }

  return result;
}

void CopyStrikeMetricsDictionaryRepresentationForSystemFont(const __CFString *a1@<X0>, void *a2@<X8>)
{
  CopyAttributeForSystemFont(a1, @"CTFontStrikeMetrics", &v3);
  *a2 = atomic_exchange(&v3, 0);
}

void TFont::SetExtras(TFont *this, const __CTFontDescriptor *a2, const __CFArray *a3)
{
  if (a2 && (a3 || (*(this + 3) & 8) == 0))
  {
    v6 = *MEMORY[0x1E695E480];
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    if (Mutable)
    {
      v8 = *(a2 + 5);
      v9 = CopyAttributeToExtras(v8, Mutable, @"NSCTFontOpticalSizeAttribute", 3);
      CopyAttributeToExtras(v8, Mutable, @"NSCTFontTargetEnvironmentAttribute", 2);
      Value = a3;
      if (a3 || (atomic_load_explicit((v8 + 8), memory_order_acquire), (v22 = atomic_load_explicit((v8 + 8), memory_order_acquire)) != 0) && (Value = CFDictionaryGetValue(v22, @"NSCTFontFeatureSettingsAttribute")) != 0)
      {
        v32 = 0xAAAAAAAAAAAAAAAALL;
        CreateFeatureSettingsByConverting(Value, &v32);
        if (atomic_load_explicit(&v32, memory_order_acquire))
        {
          TFont::UpdateFeatureSettings(this, Mutable, atomic_load_explicit(&v32, memory_order_acquire), 0);
          *(this + 3) &= ~8u;
          if (!a3)
          {
            if (TFont::IsSystemUIFontAndForShaping(this, v33))
            {
              explicit = atomic_load_explicit(&v32, memory_order_acquire);
              v33[0] = 0;
              v33[1] = 0;
              if (explicit)
              {
                v12 = CFSetCreateMutable(v6, 0, MEMORY[0x1E695E9F8]);
                Count = CFArrayGetCount(explicit);
                if (Count)
                {
                  v14 = Count;
                  for (i = 0; i != v14; ++i)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(explicit, i);
                    if ((IsFontSpecificFeatureSetting(ValueAtIndex) & 1) == 0 && !CFSetContainsValue(v12, ValueAtIndex))
                    {
                      TCFLazyMutableArray::LazyCreate(v33);
                      CFArrayAppendValue(atomic_load_explicit(v33, memory_order_acquire), ValueAtIndex);
                      CFSetAddValue(v12, ValueAtIndex);
                    }
                  }
                }
              }

              v31 = atomic_exchange(v33, 0);

              v17 = atomic_exchange(&v31, 0);
              if (v17)
              {
                CFDictionaryAddValue(Mutable, @"CTFontOriginalFeatureSettingsAttribute", v17);
              }
            }
          }
        }
      }

      v18 = (this + 16);
      if (atomic_load_explicit(this + 2, memory_order_acquire))
      {
        v19 = atomic_load_explicit(v18, memory_order_acquire);
        *(this + 400) = CopyAttributeToExtras(v19[5], Mutable, @"NSCTFontFixedAdvanceAttribute", 2);

        v20 = atomic_load_explicit(v18, memory_order_acquire);
        v21 = CopyAttributeToExtras(v20[5], Mutable, @"CTFontEmojiMLUpscalingTimeoutAttribute", 2);
      }

      else
      {
        v21 = 0;
      }

      if (atomic_load_explicit(v18, memory_order_acquire) != a2)
      {
        atomic_load_explicit((v8 + 8), memory_order_acquire);
        v23 = atomic_load_explicit((v8 + 8), memory_order_acquire);
        if (v23)
        {
          v23 = CFDictionaryGetValue(v23, @"NSCTFontCascadeListAttribute");
        }

        v24 = v23;
        if (v24 && atomic_load_explicit(this + 2, memory_order_acquire))
        {
          v25 = atomic_load_explicit(this + 2, memory_order_acquire);
          v26 = (v25[5] + 8);
          atomic_load_explicit(v26, memory_order_acquire);
          v27 = atomic_load_explicit(v26, memory_order_acquire);
          if (v27)
          {
            v27 = CFDictionaryGetValue(v27, @"NSCTFontCascadeListAttribute");
          }

          v28 = v27;

          if (v28 != v24 && (!v28 || !CFEqual(v28, v24)))
          {
            CFDictionarySetValue(Mutable, @"NSCTFontCascadeListAttribute", v24);
          }
        }

        CopyAttributeToExtras(v8, Mutable, @"NSCTFontBaselineAdjustAttribute", 2);
        if ((*(this + 400) & 1) == 0)
        {
          *(this + 400) = CopyAttributeToExtras(v8, Mutable, @"NSCTFontFixedAdvanceAttribute", 2);
        }

        if ((v9 & 1) != 0 || (v29 = *(this + 51)) != 0 && (*(*v29 + 848))(v29))
        {
          CopyAttributeToExtras(v8, Mutable, @"NSCTFontTrackAttribute", 2);
        }

        CopyAttributeToExtras(v8, Mutable, @"NSCTFontUnscaledTrackingAttribute", 2);
        CopyAttributeToExtras(v8, Mutable, @"CTFontPaletteAttribute", 2);
        CopyAttributeToExtras(v8, Mutable, @"CTFontPaletteColorsAttribute", 0);
        CopyAttributeToExtras(v8, Mutable, @"CTFontDescriptorLanguageAttribute", 4);
        CopyAttributeToExtras(v8, Mutable, @"NSCTFontVariationAttribute", 0);
        if ((v21 & 1) == 0)
        {
          CopyAttributeToExtras(v8, Mutable, @"CTFontEmojiMLUpscalingTimeoutAttribute", 2);
        }
      }

      if (CFDictionaryGetCount(Mutable))
      {
        v30 = Mutable;
        TCFRef<__CTFont const*>::Retain(this + 21, v30);
      }
    }
  }
}

unint64_t CopyAttributeToExtras(uint64_t a1, __CFDictionary *a2, void *key, int a4)
{
  atomic_load_explicit((a1 + 8), memory_order_acquire);
  result = atomic_load_explicit((a1 + 8), memory_order_acquire);
  if (result)
  {
    result = CFDictionaryGetValue(result, key);
    if (result)
    {
      v8 = result;
      v9 = CFGetTypeID(result);
      if (a4 <= 1)
      {
        if (a4)
        {
          TypeID = CFNullGetTypeID();
        }

        else
        {
          TypeID = CFDictionaryGetTypeID();
        }
      }

      else if (a4 == 2)
      {
        TypeID = CFNumberGetTypeID();
      }

      else
      {
        if (a4 == 3)
        {
          if (CFNumberGetTypeID() != v9)
          {
            if (CFStringGetTypeID() != v9)
            {
              return 0;
            }

            if (v8 != @"auto")
            {
              v10 = CFStringCompare(v8, @"auto", 1uLL);
              if (v8 != @"none" && v10 && CFStringCompare(v8, @"none", 1uLL))
              {
                return 0;
              }
            }
          }

LABEL_19:
          CFDictionarySetValue(a2, key, v8);
          return 1;
        }

        TypeID = CFStringGetTypeID();
      }

      if (v9 != TypeID)
      {
        return 0;
      }

      goto LABEL_19;
    }
  }

  return result;
}

__CFString *_CTGetEmojiFontName(int a1)
{
  if (a1)
  {
    return @".AppleColorEmojiUI";
  }

  else
  {
    return @"AppleColorEmoji";
  }
}

void TComponentFont::AdjustLineMetrics(atomic_ullong *this, int a2, StrikeMetrics *a3, __n128 a4)
{
  if (!a2)
  {
    explicit = atomic_load_explicit(this + 90, memory_order_acquire);
    if (explicit)
    {
      v8 = a4.n128_f64[0];
      Value = CFDictionaryGetValue(explicit, @"lineSpacingOverride");
      if (v8 != 0.0)
      {
        if (Value)
        {
          valuePtr = NAN;
          CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
          v11 = valuePtr;
          if (valuePtr > 0.0)
          {
            v65 = NAN;
            valuePtr = NAN;
            v63 = NAN;
            v64 = NAN;
            v12 = atomic_load_explicit(this + 90, memory_order_acquire);
            v13 = v12 ? CFDictionaryGetValue(v12, @"language") : 0;
            v10.n128_u64[0] = 0;
            if (TBaseFont::GetLanguageAwareOutsets(this, v10, &valuePtr, &v65, &v64, &v63, v13))
            {
              v36 = *(this + 76);
              if (v36 != 0.0 && *(this + 75) != 0.0)
              {
                *(a3 + 8) = vmulq_n_f64(vdivq_f64(*(a3 + 8), vdupq_lane_s64(*&vaddq_f64(*(a3 + 8), vdupq_laneq_s64(*(a3 + 8), 1)), 0)), vaddvq_f64(*(a3 + 8)) + *(a3 + 3) - v36);
                *(a3 + 3) = v36;
              }

              v37 = *a3;
              LanguageAwareAdjustRatio = GetLanguageAwareAdjustRatio();
              v39 = *(a3 + 1);
              v40 = *(a3 + 2);
              v41 = v39 + LanguageAwareAdjustRatio * v65 * v37;
              v42 = v40 + LanguageAwareAdjustRatio * v63 * v37;
              v43 = *(a3 + 3);
              v44 = (v39 + v40 + v43) * v8 / v37;
              v45 = v11 / v44;
              v46 = (v11 - v43 * v8 / v37 * (v11 / v44)) / (v44 - v43 * v8 / v37);
              v47 = v40 * v46 + v39 * v46;
              *(a3 + 1) = v41 / (v41 + v42) * v47;
              *(a3 + 2) = v42 / (v41 + v42) * v47;
              *(a3 + 3) = v43 * v45;
            }
          }

          return;
        }
      }
    }

    if ((*(*this + 792))(this, a4))
    {
      v14 = *(this + 77);
      v15 = atomic_load_explicit(this + 90, memory_order_acquire);
      if (v15)
      {
        v16 = CFDictionaryGetValue(v15, @"languageAwareLineHeightRatio");
        if (v16)
        {
          valuePtr = NAN;
          CFNumberGetValue(v16, kCFNumberDoubleType, &valuePtr);
          v14 = valuePtr;
        }
      }

      if (v14 > 0.0)
      {
        v65 = NAN;
        valuePtr = NAN;
        v63 = NAN;
        v64 = NAN;
        v17 = atomic_load_explicit(this + 90, memory_order_acquire);
        v18 = v17 ? CFDictionaryGetValue(v17, @"language") : 0;
        a4.n128_u64[0] = 0;
        if (TBaseFont::GetLanguageAwareOutsets(this, a4, &valuePtr, &v65, &v64, &v63, v18))
        {
          v27 = *a3;
          v28 = v14;
          if (v14 > 1.0)
          {
            v28 = GetLanguageAwareAdjustRatio();
          }

          v29 = *(a3 + 1);
          v30 = *(a3 + 2);
          v31 = v29 + v28 * v65 * v27;
          v32 = v30 + v28 * v63 * v27;
          if (v14 > 1.0)
          {
            v33 = (v14 * ((v29 + v30 + *(this + 76)) * *(this + 75) / v27) - *(this + 76) * *(this + 75) / v27) / ((v29 + v30 + *(this + 76)) * *(this + 75) / v27 - *(this + 76) * *(this + 75) / v27);
            v34 = v30 * v33 + v29 * v33;
            v35 = v31 + v32;
            v31 = v31 / (v31 + v32) * v34;
            v32 = v32 / v35 * v34;
          }

          *(a3 + 1) = v31;
          *(a3 + 2) = v32;
        }
      }

      return;
    }
  }

  if ((*(*this + 848))(this, a4))
  {
    return;
  }

  v19 = atomic_load_explicit(this + 90, memory_order_acquire);
  if (!v19)
  {
    return;
  }

  v20 = CFDictionaryGetValue(v19, @"FontMetrics");
  if (!v20)
  {
    return;
  }

  v21 = v20;
  if (CFDictionaryGetCount(v20) < 1)
  {
    return;
  }

  LODWORD(valuePtr) = *a3;
  v22 = CFDictionaryGetValue(v21, @"unitsPerEm");
  v23 = 1.0;
  if (v22)
  {
    v24 = v22;
    v25 = CFGetTypeID(v22);
    if (v25 == CFNumberGetTypeID() || v25 == CFBooleanGetTypeID())
    {
      CFNumberGetValue(v24, kCFNumberIntType, &valuePtr);
      IntValue = LODWORD(valuePtr);
    }

    else
    {
      if (v25 != CFStringGetTypeID())
      {
        goto LABEL_40;
      }

      IntValue = CFStringGetIntValue(v24);
      LODWORD(valuePtr) = IntValue;
    }

    if (IntValue != *a3)
    {
      v23 = *a3 / IntValue;
    }
  }

LABEL_40:
  if (a2)
  {
    v48 = @"vertTypoAscender";
  }

  else
  {
    v48 = @"ascender";
  }

  v49 = CFDictionaryGetValue(v21, v48);
  if (v49)
  {
    v50 = v49;
    v51 = CFGetTypeID(v49);
    if (v51 == CFNumberGetTypeID() || v51 == CFBooleanGetTypeID())
    {
      CFNumberGetValue(v50, kCFNumberDoubleType, a3 + 8);
      DoubleValue = *(a3 + 1);
LABEL_47:
      *(a3 + 1) = v23 * DoubleValue;
      goto LABEL_48;
    }

    if (v51 == CFStringGetTypeID())
    {
      DoubleValue = CFStringGetDoubleValue(v50);
      goto LABEL_47;
    }
  }

LABEL_48:
  if (a2)
  {
    v53 = @"vertTypoDescender";
  }

  else
  {
    v53 = @"descender";
  }

  v54 = CFDictionaryGetValue(v21, v53);
  if (v54)
  {
    v55 = v54;
    v56 = CFGetTypeID(v54);
    if (v56 == CFNumberGetTypeID() || v56 == CFBooleanGetTypeID())
    {
      CFNumberGetValue(v55, kCFNumberDoubleType, a3 + 16);
      v57 = *(a3 + 2);
LABEL_55:
      *(a3 + 2) = v23 * v57;
      goto LABEL_56;
    }

    if (v56 == CFStringGetTypeID())
    {
      v57 = CFStringGetDoubleValue(v55);
      goto LABEL_55;
    }
  }

LABEL_56:
  if (a2)
  {
    v58 = @"vertTypoLineGap";
  }

  else
  {
    v58 = @"lineGap";
  }

  v59 = CFDictionaryGetValue(v21, v58);
  if (v59)
  {
    v60 = v59;
    v61 = CFGetTypeID(v59);
    if (v61 == CFNumberGetTypeID() || v61 == CFBooleanGetTypeID())
    {
      CFNumberGetValue(v60, kCFNumberDoubleType, a3 + 24);
      v62 = *(a3 + 3);
    }

    else
    {
      if (v61 != CFStringGetTypeID())
      {
        return;
      }

      v62 = CFStringGetDoubleValue(v60);
    }

    *(a3 + 3) = v23 * v62;
  }
}

BOOL TComponentFont::HasExuberatedLineHeight(TComponentFont *this)
{
  if ((*(*this + 864))(this))
  {
    v2 = *(this + 178);
    if ((v2 & 0x80000) == 0)
    {
      if ((v2 & 0x40000) != 0)
      {
        explicit = atomic_load_explicit(this + 90, memory_order_acquire);
        if (explicit)
        {
          Value = CFDictionaryGetValue(explicit, @"language");
          if (Value)
          {
            return GetExuberatedGroupForLanguage(Value, 0) != 0;
          }
        }
      }

      else if (CurrentLocaleIsExuberated())
      {
        return 1;
      }
    }
  }

  return 0;
}

BOOL TTenuousComponentFont::HasExuberatedLineHeight(TTenuousComponentFont *this)
{
  if ((*(this + 178) & 0x80008) == 8 && CurrentLocaleIsExuberated())
  {
    return 1;
  }

  return TComponentFont::HasExuberatedLineHeight(this);
}

double TComponentFont::GetOpticalLeading(TComponentFont *this, double a2, double a3)
{
  if ((*(*this + 848))(this))
  {
    explicit = atomic_load_explicit(this + 90, memory_order_acquire);
    if (!explicit)
    {
      return InterpolateOpticalValue(a2, a3, *(this + 75), *(this + 76), *(this + 83), *(this + 82));
    }

    Value = CFDictionaryGetValue(explicit, @"lineSpacingOverride");
    if (!Value)
    {
      return InterpolateOpticalValue(a2, a3, *(this + 75), *(this + 76), *(this + 83), *(this + 82));
    }

    valuePtr = NAN;
    CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
    if (valuePtr <= 0.0)
    {
      return InterpolateOpticalValue(a2, a3, *(this + 75), *(this + 76), *(this + 83), *(this + 82));
    }
  }

  return a3;
}

double InterpolateOpticalValue(double a1, double a2, double a3, double a4, double a5, double a6)
{
  if (vabdd_f64(a3, a1) < 0.01)
  {
    if (a4 == 0.0)
    {
      return a2;
    }

    return a4;
  }

  if (a6 == 0.0)
  {
    return a4;
  }

  if (vabdd_f64(a6, a4) < 0.01)
  {
    return a6;
  }

  if (a4 != 0.0)
  {
    a2 = a4;
  }

  v7 = 0.0;
  if (a3 != a5)
  {
    v7 = (a1 - a3) / (a5 - a3);
  }

  return std::__lerp[abi:fn200100]<double>(a2, a6, v7);
}

double CTFontGetWeight(uint64_t a1)
{
  v1 = 0.0;
  if (a1)
  {
    v2 = *(*(a1 + 40) + 408);
    if (v2)
    {
      explicit = atomic_load_explicit(v2 + 30, memory_order_acquire);
      if (!explicit)
      {
        explicit = TBaseFont::CreateTraitsValues(v2);
      }

      if (explicit)
      {
        return *(explicit + 8);
      }
    }
  }

  return v1;
}

void TComponentFont::CreateTraitsValuesPerFontInfo(uint64_t a1@<X0>, _DWORD *a2@<X1>, atomic_ullong *a3@<X8>)
{
  if (!(*(*a1 + 848))(a1) || (v6 = *(a1 + 632), v6 == 2.0))
  {
    explicit = atomic_load_explicit((a1 + 720), memory_order_acquire);
    if (explicit && CFDictionaryGetValue(explicit, @"FontMetrics"))
    {

      TSplicedFontDict::CreateTraitsValuesPerFontInfo((a1 + 720), 2.0, COERCE__INT64(2.0), COERCE_CHAR_(2.0), 0, 0, 0, a3);
    }

    else
    {

      TBaseFont::CreateTraitsValuesPerFontInfo(a1, a2, a3);
    }
  }

  else
  {
    if (*(a1 + 652))
    {
      v7 = 0.0694444444;
    }

    else
    {
      v7 = 0.0;
    }

    v8 = *(a1 + 640);
    *a2 = 1;
    v9 = (*(*a1 + 160))(a1);
    v10 = (*(*a1 + 544))(a1);

    CreateTraitValues(v6, v8, v7, v10, 1, 1, 1, v9, a3);
  }
}