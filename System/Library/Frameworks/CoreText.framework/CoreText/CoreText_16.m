uint64_t LKTGetValue(__CFData *a1, unsigned int a2)
{
  if (!a1)
  {
    v5 = 0;
    v6 = 0;
    return v6 | v5;
  }

  if (*(CFDataGetMutableBytePtr(a1) + 2) <= a2)
  {
    v5 = 0;
    goto LABEL_7;
  }

  MutableBytePtr = CFDataGetMutableBytePtr(a1);
  v5 = *(*MutableBytePtr + a2);
  if (!*(*MutableBytePtr + a2))
  {
LABEL_7:
    v6 = 0;
    return v6 | v5;
  }

  v5 = *&CFDataGetMutableBytePtr(a1)[2 * a2 + 18];
  v6 = 0x10000;
  return v6 | v5;
}

__CFData *NewLKTHandle(int64_t a1, __int16 a2)
{
  v4 = 2 * a1;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 2 * a1 + 18);
  v6 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, v4 + 18);
    v7 = malloc_type_calloc(a1, 1uLL, 0x100004077774924uLL);
    if (v7)
    {
      *CFDataGetMutableBytePtr(v6) = v7;
      *(CFDataGetMutableBytePtr(v6) + 2) = a1;
      *(CFDataGetMutableBytePtr(v6) + 6) = a2;
      *(CFDataGetMutableBytePtr(v6) + 7) = -1;
      *(CFDataGetMutableBytePtr(v6) + 8) = 0;
      MutableBytePtr = CFDataGetMutableBytePtr(v6);
      if (a1 >= 1)
      {
        v9 = 0;
        v10 = vdupq_n_s64(a1 - 1);
        v11 = MutableBytePtr + 32;
        do
        {
          v12 = vdupq_n_s64(v9);
          v13 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_18475A340)));
          if (vuzp1_s8(vuzp1_s16(v13, *v10.i8), *v10.i8).u8[0])
          {
            *(v11 - 7) = a2;
          }

          if (vuzp1_s8(vuzp1_s16(v13, *&v10), *&v10).i8[1])
          {
            *(v11 - 6) = a2;
          }

          if (vuzp1_s8(vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_18475AAF0)))), *&v10).i8[2])
          {
            *(v11 - 5) = a2;
            *(v11 - 4) = a2;
          }

          v14 = vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_18475AAE0)));
          if (vuzp1_s8(*&v10, vuzp1_s16(v14, *&v10)).i32[1])
          {
            *(v11 - 3) = a2;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(v14, *&v10)).i8[5])
          {
            *(v11 - 2) = a2;
          }

          if (vuzp1_s8(*&v10, vuzp1_s16(*&v10, vmovn_s64(vcgeq_u64(v10, vorrq_s8(v12, xmmword_18475AAD0))))).i8[6])
          {
            *(v11 - 1) = a2;
            *v11 = a2;
          }

          v9 += 8;
          v11 += 8;
        }

        while (((a1 + 7) & 0xFFFFFFFFFFFFFFF8) != v9);
      }
    }

    else
    {
      CFRelease(v6);
      return 0;
    }
  }

  return v6;
}

void DisposeLKTHandle(__CFData *a1)
{
  if (a1)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(a1);
    free(*MutableBytePtr);

    CFRelease(a1);
  }
}

void FindTightRanges(void *a1, CFMutableDataRef theData, char a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  v5 = *(CFDataGetMutableBytePtr(theData) + 7);
  v6 = *(CFDataGetMutableBytePtr(theData) + 8);
  if (v5 <= v6)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(theData);
    if (a3)
    {
      if (v5 < v6)
      {
        v8 = *&MutableBytePtr[2 * v5 + 18];
        v9 = v5;
        do
        {
          if (!*(*CFDataGetMutableBytePtr(theData) + v9 + 1))
          {
            break;
          }

          if (*&CFDataGetMutableBytePtr(theData)[2 * v9 + 20] != v8)
          {
            break;
          }

          ++v9;
        }

        while (v6 != v9);
      }
    }

    else if (v5 < v6)
    {
      v10 = v5 + 1;
      do
      {
        if (!*(*CFDataGetMutableBytePtr(theData) + v10))
        {
          break;
        }

        ++v10;
      }

      while (v10 - v6 != 1);
    }

    operator new();
  }
}

char *std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__insert_with_size[abi:fn200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>>(void *a1, char *__dst, char *__src, char *a4, uint64_t a5)
{
  v5 = __dst;
  if (a5 < 1)
  {
    return v5;
  }

  v7 = __src;
  v10 = a1[1];
  v9 = a1[2];
  if (a5 > (v9 - v10) >> 1)
  {
    v11 = *a1;
    v12 = a5 + ((v10 - *a1) >> 1);
    v48 = 0xAAAAAAAAAAAAAAAALL;
    *&v13 = 0xAAAAAAAAAAAAAAAALL;
    *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v46 = v13;
    v47 = v13;
    if (v12 < 0)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v14 = __dst - v11;
    v15 = v9 - v11;
    if (v15 <= v12)
    {
      v16 = v12;
    }

    else
    {
      v16 = v15;
    }

    if (v15 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v17 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v17 = v16;
    }

    std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(&v46, v17, v14 >> 1, (a1 + 3));
    v18 = v47;
    v19 = (v47 + 2 * a5);
    v20 = 2 * a5;
    do
    {
      v21 = *v7++;
      *v18++ = v21;
      v20 -= 2;
    }

    while (v20);
    *&v47 = v19;
    v22 = *(&v46 + 1);
    memcpy(v19, v5, a1[1] - v5);
    v23 = *a1;
    v24 = *(&v46 + 1);
    *&v47 = v47 + a1[1] - v5;
    a1[1] = v5;
    v25 = v5 - v23;
    v26 = (v24 - (v5 - v23));
    memcpy(v26, v23, v25);
    v27 = *a1;
    *a1 = v26;
    v28 = a1[2];
    *(a1 + 1) = v47;
    *&v47 = v27;
    *(&v47 + 1) = v28;
    *&v46 = v27;
    *(&v46 + 1) = v27;
    std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(&v46);
    return v22;
  }

  v29 = v10 - __dst;
  v30 = (v10 - __dst) >> 1;
  if (v30 >= a5)
  {
    v41 = &__dst[2 * a5];
    v42 = (v10 - 2 * a5);
    v43 = a1[1];
    while (v42 < v10)
    {
      v44 = *v42++;
      *v43++ = v44;
    }

    a1[1] = v43;
    if (v10 != v41)
    {
      memmove(&__dst[2 * a5], __dst, v10 - v41);
    }

    v40 = 2 * a5;
    v38 = v5;
    v39 = v7;
    goto LABEL_31;
  }

  v32 = a4 - &__src[v29];
  if (a4 != &__src[v29])
  {
    memmove(a1[1], &__src[v29], a4 - &__src[v29]);
  }

  v33 = (v10 + v32);
  a1[1] = v10 + v32;
  if (v30 >= 1)
  {
    v34 = &v5[2 * a5];
    v35 = v10 + v32;
    if (&v33[-2 * a5] < v10)
    {
      v36 = &v5[a4];
      v37 = &v5[a4 + -2 * a5];
      do
      {
        *(v36 - v7) = *(v37 - v7);
        v37 += 2;
        v36 += 2;
      }

      while (v37 - v7 < v10);
      v35 = v36 - v7;
    }

    a1[1] = v35;
    if (v33 != v34)
    {
      memmove(&v5[2 * a5], v5, v33 - v34);
    }

    if (v10 != v5)
    {
      v38 = v5;
      v39 = v7;
      v40 = v10 - v5;
LABEL_31:
      memmove(v38, v39, v40);
    }
  }

  return v5;
}

void TCFBase_NEW<CTGlyphRun,_CTGlyphStorage *&,CFRange &,TAttributes>(_CTGlyphStorage **a1@<X0>, CFRange *a2@<X1>, const TAttributes *a3@<X2>, void *a4@<X8>)
{
  v8 = TCFBase<TRun>::Allocate();
  v9 = v8;
  if (v8)
  {
    v10 = *a1;
    v11 = *a2;
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = 0;
    v8[5] = v8 + 9;
    v8[6] = v8 + 9;
    v8[7] = CTGlyphRun::CloneEntire;
    v8[8] = CTGlyphRun::CloneRange;
    TRun::TRun((v8 + 9), v10, v11, a3);
  }

  *a4 = v9;
}

const void *TRunEncoder::EncodeWithLineOptions(uint64_t *a1, atomic_ullong *a2, unsigned int a3)
{
  v43 = *MEMORY[0x1E69E9840];
  v36[5] = unk_18475C7AC;
  v39 = unk_18475C7C0;
  memset(v29, 170, sizeof(v29));
  v27 = 0u;
  v26 = 0u;
  v28 = 0;
  v30 = v29;
  BYTE8(v39) = 0;
  v34 = 0;
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  memset(v36, 0, 20);
  v37 = 0;
  v38 = 0;
  LOBYTE(v39) = 0;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v35 = 0xFFEFFFFFFFFFFFFFLL;
  v23[0] = atomic_load_explicit(a2, memory_order_acquire);
  v6 = atomic_exchange(v23, 0);
  v17[0] = v6;
  std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::push_back[abi:fn200100](&v27, v17);
  TLine::UpdateCachedMetricsForRun(&v26, *(v6 + 40));

  if ((a3 & 4) != 0)
  {
    TAttributes::SetRareAttributes(*(atomic_load_explicit(a2, memory_order_acquire) + 48) + 40, 4);
  }

  v7 = *(atomic_load_explicit(a2, memory_order_acquire) + 40);
  v9 = *(v7 + 8);
  v8 = *(v7 + 16);
  *&v31 = v9;
  *(&v31 + 1) = v8;
  if ((a3 & 1) != 0 && TTypesetter::CanLayout(((a3 >> 6) & 1), v8))
  {
    v24 = 0xAAAAAAAAAAAAAAAALL;
    v25 = 0xAAAAAAAAAAAAAAAALL;
    v11 = a1[1];
    v10 = a1[2];
    v23[0] = &unk_1EF258318;
    v23[1] = v9;
    LOWORD(v25) = 0;
    v24 = v11(v9, v8, v10);
    v12 = *a1;
    v13 = a1[2];
    v19 = 0;
    v20 = v12;
    v21 = 0;
    v22 = v13;
    v17[0] = &unk_1EF2592D8;
    v17[1] = v9;
    v17[3] = 0;
    v18 = 0;
    v17[2] = v8;
    v16[0] = v23;
    v16[1] = v17;
    TBidiEngine::ReorderGlyphs(v16, &v26);
    v17[0] = &unk_1EF259208;
  }

  if ((*(&v27 + 1) - v27) < 9)
  {
    if (*(&v27 + 1) == v27)
    {
      __break(1u);
    }

    RunCFArray = *v27;
  }

  else
  {
    RunCFArray = TLine::GetRunCFArray(&v26);
  }

  CFRetain(RunCFArray);
  TLine::~TLine(&v26);
  return RunCFArray;
}

void TTypesetter::RelayoutRunUsingCallback(uint64_t a1, uint64_t a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v2[0] = (*(a1 + 16))(a2, atomic_load_explicit((*(a1 + 8) + 32), memory_order_acquire), *(a1 + 24));
  if (atomic_load_explicit(v2, memory_order_acquire))
  {
    v5 = xmmword_18475C868;
    memset(v6, 170, sizeof(v6));
    v7 = unk_18475C898;
    v3 = xmmword_18475C848;
    v4 = unk_18475C858;
    memset(&v2[69], 170, 96);
    operator new();
  }
}

void TTraitsValues::TTraitsValues(TTraitsValues *this, CFDictionaryRef theDict)
{
  this->var0 = 0;
  this->var1 = 0.0;
  p_var1 = &this->var1;
  this->var2 = 0.0;
  this->var3 = 0.0;
  if (theDict)
  {
    Value = CFDictionaryGetValue(theDict, @"NSCTFontWeightTrait");
    if (Value)
    {
      CFNumberGetValue(Value, kCFNumberDoubleType, p_var1);
    }

    v6 = CFDictionaryGetValue(theDict, @"NSCTFontProportionTrait");
    if (v6)
    {
      CFNumberGetValue(v6, kCFNumberDoubleType, &this->var2);
    }

    v7 = CFDictionaryGetValue(theDict, @"NSCTFontSlantTrait");
    if (v7)
    {
      CFNumberGetValue(v7, kCFNumberDoubleType, &this->var3);
    }
  }
}

unsigned int ClassOfWeight(double a1)
{
  v2 = IndexesBracketing<float const*,double>(kWeightScale, kWidthScale, a1, 0.001);
  v3 = kWeightScale[v2];
  v4 = kWeightScale[HIWORD(v2)];
  v5 = 0.0;
  if (v3 != v4)
  {
    v6 = (a1 - v3) / (v4 - v3);
    v5 = v6;
  }

  return llround(std::__lerp[abi:fn200100]<double>((100 * v2), (100 * HIWORD(v2)), v5));
}

double WidthPercentOfClass(unsigned int a1)
{
  if (a1 >= 9)
  {
    v1 = 9;
  }

  else
  {
    v1 = a1;
  }

  v2 = v1 + 1;
  v3 = 0.0;
  if (a1 != v2)
  {
    v3 = (a1 - a1) / (v2 - a1);
  }

  return std::__lerp[abi:fn200100]<float>(kWidthPercentScale[a1], kWidthPercentScale[v2], v3);
}

uint64_t CompareTraits(const __CFDictionary *a1, const TBaseFont *a2)
{
  v30 = *MEMORY[0x1E69E9840];
  v25 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a2 + 152))(&v25, a2);
  v3 = atomic_exchange(&v25, 0);

  if (!a1 || (Count = CFDictionaryGetCount(a1)) == 0)
  {
LABEL_35:
    v16 = 1;
    goto LABEL_36;
  }

  v5 = Count;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v28[14] = v6;
  v28[13] = v6;
  v28[12] = v6;
  v28[11] = v6;
  v28[10] = v6;
  v28[9] = v6;
  v28[8] = v6;
  v28[7] = v6;
  v28[6] = v6;
  v28[5] = v6;
  v28[4] = v6;
  v28[3] = v6;
  v28[2] = v6;
  v28[1] = v6;
  v28[0] = v6;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v29 = v28;
  std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::__vallocate[abi:fn200100](&v25, Count);
  v7 = v26;
  bzero(v26, 8 * v5);
  v26 = &v7[8 * v5];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v23[14] = v8;
  v23[13] = v8;
  v23[12] = v8;
  v23[11] = v8;
  v23[10] = v8;
  v23[9] = v8;
  v23[8] = v8;
  v23[7] = v8;
  v23[6] = v8;
  v23[5] = v8;
  v23[4] = v8;
  v23[3] = v8;
  v23[2] = v8;
  v23[1] = v8;
  v23[0] = v8;
  v21 = 0;
  v22 = 0;
  values = 0;
  v24 = v23;
  std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::__vallocate[abi:fn200100](&values, v5);
  v9 = v21;
  bzero(v21, 8 * v5);
  v21 = &v9[8 * v5];
  CFDictionaryGetKeysAndValues(a1, v25, values);
  v10 = v25;
  v11 = values;
  while (1)
  {
    v12 = *v10;
    v13 = v3;
    if (!v13)
    {
      break;
    }

    v14 = v13;
    Value = CFDictionaryGetValue(v13, v12);

    if (!Value)
    {
      goto LABEL_13;
    }

    if (v12 == @"NSCTFontSymbolicTrait" || @"NSCTFontSymbolicTrait" && v12 && CFEqual(v12, @"NSCTFontSymbolicTrait"))
    {
      LODWORD(valuePtr) = -1431655766;
      LODWORD(v18) = -1431655766;
      CFNumberGetValue(*v11, kCFNumberIntType, &valuePtr);
      CFNumberGetValue(Value, kCFNumberIntType, &v18);
      if ((LODWORD(valuePtr) & ~LODWORD(v18)) != 0)
      {
        goto LABEL_34;
      }
    }

    else if (v12 == @"NSCTFontWeightTrait" || @"NSCTFontWeightTrait" && v12 && CFEqual(v12, @"NSCTFontWeightTrait") || v12 == @"NSCTFontProportionTrait" || @"NSCTFontProportionTrait" && v12 && CFEqual(v12, @"NSCTFontProportionTrait") || v12 == @"NSCTFontSlantTrait" || @"NSCTFontSlantTrait" && v12 && CFEqual(v12, @"NSCTFontSlantTrait"))
    {
      v18 = NAN;
      valuePtr = NAN;
      CFNumberGetValue(*v11, kCFNumberDoubleType, &valuePtr);
      CFNumberGetValue(Value, kCFNumberDoubleType, &v18);
      if (vabdd_f64(valuePtr, v18) >= 0.001)
      {
        goto LABEL_34;
      }
    }

    else if (!CFEqual(*v11, Value))
    {
      goto LABEL_34;
    }

LABEL_31:
    ++v10;
    ++v11;
    if (!--v5)
    {
      valuePtr = COERCE_DOUBLE(&values);
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&valuePtr);
      values = &v25;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&values);
      goto LABEL_35;
    }
  }

LABEL_13:
  if (v12 != @"NSCTFontSymbolicTrait" && (!@"NSCTFontSymbolicTrait" || !v12 || !CFEqual(v12, @"NSCTFontSymbolicTrait")))
  {
    goto LABEL_31;
  }

LABEL_34:
  valuePtr = COERCE_DOUBLE(&values);
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&valuePtr);
  values = &v25;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&values);
  v16 = 0;
LABEL_36:

  return v16;
}

char *TBaseFont::GetCharacterSetInternal(atomic_ullong *this)
{
  v1 = (this + 24);
  if (!atomic_load_explicit(this + 24, memory_order_acquire))
  {
    (*(*this + 184))(&v3);
  }

  return v1;
}

uint64_t CompareDesignLanguages(const __CFArray *a1, const TBaseFont *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  CreateCanonicalLanguages(a1, &v5);
  v3 = (*(*a2 + 360))(a2, atomic_load_explicit(&v5, memory_order_acquire));

  return v3;
}

uint64_t CompareSupportedLanguages(const __CFArray *a1, const TBaseFont *a2)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  CreateCanonicalLanguages(a1, &v5);
  v3 = (*(*a2 + 352))(a2, atomic_load_explicit(&v5, memory_order_acquire));

  return v3;
}

BOOL CompareName(const __CFString *a1, atomic_ullong *a2, char a3, char a4)
{
  v8 = atomic_load_explicit(a2 + 12, memory_order_acquire);
  v9 = v8;
  v10 = v9;
  v11 = v10;
  if (v10 == a1)
  {

LABEL_10:
    v12 = 1;
    goto LABEL_12;
  }

  if (!a1 || !v10)
  {

    if (a4)
    {
      goto LABEL_11;
    }

    goto LABEL_9;
  }

  v12 = 1;
  v13 = CFStringCompare(a1, v10, 1uLL);

  if (v13)
  {
    if (a4)
    {
      goto LABEL_11;
    }

LABEL_9:
    if (IsPostScriptNameAlias(a1, v8))
    {
      goto LABEL_10;
    }

LABEL_11:
    v12 = CompareOtherNamesExclusive(a1, a1, a1, a2, a3);
  }

LABEL_12:

  return v12;
}

BOOL CompareOtherNamesExclusive(const __CFString *a1, const __CFString *a2, const __CFString *a3, const TBaseFont *a4, char a5)
{
  if (a2)
  {
    v27 = 0xAAAAAAAAAAAAAAAALL;
    (*(*a4 + 72))(&v27, a4, @"CTFontFamilyName");
    v10 = atomic_load_explicit(&v27, memory_order_acquire);
    v11 = v10;
    if (v10 == a2)
    {
      v12 = 1;
    }

    else if (v10)
    {
      v12 = CFEqual(a2, v10) != 0;
    }

    else
    {
      v12 = 0;
    }

    if (!a1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = 0;
    if (!a1)
    {
      goto LABEL_17;
    }
  }

  if (!v12)
  {
    v27 = 0xAAAAAAAAAAAAAAAALL;
    (*(*a4 + 72))(&v27, a4, @"CTFontFullName");
    v13 = atomic_load_explicit(&v27, memory_order_acquire);
    v14 = v13;
    if (v13 == a1)
    {
      v12 = 1;
    }

    else if (v13)
    {
      v12 = CFEqual(a1, v13) != 0;
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_17:
  if (a3 && !v12)
  {
    v27 = 0xAAAAAAAAAAAAAAAALL;
    (*(*a4 + 72))(&v27, a4, @"CTFontSubFamilyName");
    v15 = atomic_load_explicit(&v27, memory_order_acquire);
    v16 = v15;
    if (v15 == a3)
    {
      v12 = 1;
    }

    else if (v15)
    {
      v12 = CFEqual(a3, v15) != 0;
    }

    else
    {
      v12 = 0;
    }
  }

  if (!v12 && (a5 & 1) == 0)
  {
    if (a2)
    {
      v27 = 0xAAAAAAAAAAAAAAAALL;
      (*(*a4 + 88))(&v27, a4, @"CTFontFamilyName", 0, 0);
      v17 = atomic_load_explicit(&v27, memory_order_acquire);
      v18 = v17;
      v19 = v18;
      if (v18 == a2)
      {
        v12 = 1;
      }

      else if (v18)
      {
        v12 = CFStringCompare(a2, v18, 0x20uLL) == kCFCompareEqualTo;
      }

      else
      {
        v12 = 0;
      }

      if (a1)
      {
LABEL_36:
        if (!v12)
        {
          v27 = 0xAAAAAAAAAAAAAAAALL;
          (*(*a4 + 88))(&v27, a4, @"CTFontFullName", 0, 0);
          v20 = atomic_load_explicit(&v27, memory_order_acquire);
          v21 = v20;
          v22 = v21;
          if (v21 == a1)
          {
            v12 = 1;
          }

          else if (v21)
          {
            v12 = CFStringCompare(a1, v21, 0x20uLL) == kCFCompareEqualTo;
          }

          else
          {
            v12 = 0;
          }
        }
      }
    }

    else
    {
      v12 = 0;
      if (a1)
      {
        goto LABEL_36;
      }
    }

    if (a3 && !v12)
    {
      v27 = 0xAAAAAAAAAAAAAAAALL;
      (*(*a4 + 88))(&v27, a4, @"CTFontSubFamilyName", 0, 0);
      v23 = atomic_load_explicit(&v27, memory_order_acquire);
      v24 = v23;
      v25 = v24;
      if (v24 == a3)
      {
        v12 = 1;
      }

      else if (v24)
      {
        v12 = CFStringCompare(a3, v24, 0x20uLL) == kCFCompareEqualTo;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  return v12;
}

BOOL ComparePostScriptName(const __CFString *a1, atomic_ullong *a2)
{
  v3 = atomic_load_explicit(a2 + 12, memory_order_acquire);
  v4 = v3;
  v5 = v4;
  v6 = v5;
  if (v5 == a1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 0;
    if (a1 && v5)
    {
      v7 = CFStringCompare(a1, v5, 1uLL) == kCFCompareEqualTo;
    }
  }

  return v7;
}

BOOL CompareOtherNamesInclusive(const __CFString *a1, const __CFString *a2, const __CFString *a3, const TBaseFont *a4, char a5)
{
  if (a2)
  {
    v27 = 0xAAAAAAAAAAAAAAAALL;
    (*(*a4 + 72))(&v27, a4, @"CTFontFamilyName");
    v10 = atomic_load_explicit(&v27, memory_order_acquire);
    v11 = v10;
    if (v10 == a2)
    {
      v12 = 1;
    }

    else if (v10)
    {
      v12 = CFEqual(a2, v10) != 0;
    }

    else
    {
      v12 = 0;
    }

    if (!a1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v12 = 1;
    if (!a1)
    {
      goto LABEL_17;
    }
  }

  if (v12)
  {
    v27 = 0xAAAAAAAAAAAAAAAALL;
    (*(*a4 + 72))(&v27, a4, @"CTFontFullName");
    v13 = atomic_load_explicit(&v27, memory_order_acquire);
    v14 = v13;
    if (v13 == a1)
    {
      v12 = 1;
    }

    else if (v13)
    {
      v12 = CFEqual(a1, v13) != 0;
    }

    else
    {
      v12 = 0;
    }
  }

LABEL_17:
  if (a3 && v12)
  {
    v27 = 0xAAAAAAAAAAAAAAAALL;
    (*(*a4 + 72))(&v27, a4, @"CTFontSubFamilyName");
    v15 = atomic_load_explicit(&v27, memory_order_acquire);
    v16 = v15;
    if (v15 == a3)
    {
      v12 = 1;
    }

    else if (v15)
    {
      v12 = CFEqual(a3, v15) != 0;
    }

    else
    {
      v12 = 0;
    }
  }

  if (!v12 && (a5 & 1) == 0)
  {
    if (a2)
    {
      v27 = 0xAAAAAAAAAAAAAAAALL;
      (*(*a4 + 88))(&v27, a4, @"CTFontFamilyName", 0, 0);
      v17 = atomic_load_explicit(&v27, memory_order_acquire);
      v18 = v17;
      v19 = v18;
      if (v18 == a2)
      {
        v12 = 1;
      }

      else if (v18)
      {
        v12 = CFStringCompare(a2, v18, 0x20uLL) == kCFCompareEqualTo;
      }

      else
      {
        v12 = 0;
      }

      if (a1)
      {
LABEL_36:
        if (v12)
        {
          v27 = 0xAAAAAAAAAAAAAAAALL;
          (*(*a4 + 88))(&v27, a4, @"CTFontFullName", 0, 0);
          v20 = atomic_load_explicit(&v27, memory_order_acquire);
          v21 = v20;
          v22 = v21;
          if (v21 == a1)
          {
            v12 = 1;
          }

          else if (v21)
          {
            v12 = CFStringCompare(a1, v21, 0x20uLL) == kCFCompareEqualTo;
          }

          else
          {
            v12 = 0;
          }
        }
      }
    }

    else
    {
      v12 = 1;
      if (a1)
      {
        goto LABEL_36;
      }
    }

    if (a3 && v12)
    {
      v27 = 0xAAAAAAAAAAAAAAAALL;
      (*(*a4 + 88))(&v27, a4, @"CTFontSubFamilyName", 0, 0);
      v23 = atomic_load_explicit(&v27, memory_order_acquire);
      v24 = v23;
      v25 = v24;
      if (v24 == a3)
      {
        v12 = 1;
      }

      else if (v24)
      {
        v12 = CFStringCompare(a3, v24, 0x20uLL) == kCFCompareEqualTo;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  return v12;
}

BOOL CompareFileURL(const __CFURL *a1, const TBaseFont *a2)
{
  (*(*a2 + 192))(&v6, a2);
  v3 = atomic_exchange(&v6, 0);

  if (v3)
  {
    v4 = CFEqual(a1, v3) != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL CompareFormat(const __CFNumber *a1, const TBaseFont *a2)
{
  (*(*a2 + 216))(&v6, a2);
  v3 = atomic_exchange(&v6, 0);

  if (v3)
  {
    v4 = CFEqual(a1, v3) != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

BOOL CompareScope(const __CFNumber *a1, const TBaseFont *a2)
{
  (*(*a2 + 248))(&v6, a2);
  v3 = atomic_exchange(&v6, 0);

  if (v3)
  {
    v4 = CFEqual(a1, v3) != 0;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t GetTraitsFromSubfamilyName(const TBaseFont *a1, int a2, int a3, int a4, double *a5, double *a6, double *a7)
{
  v17.info = 0xAAAAAAAAAAAAAAAALL;
  (*(*a1 + 72))(&v17.info);
  if (atomic_load_explicit(&v17.info, memory_order_acquire))
  {
    v17.isa = 0xAAAAAAAAAAAAAAAALL;
    CreateTraitsByStyleGlossaryString(&v17, atomic_load_explicit(&v17.info, memory_order_acquire));
    if (!atomic_load_explicit(&v17, memory_order_acquire))
    {
LABEL_15:

      goto LABEL_16;
    }

    if ((a2 & 1) == 0)
    {
      Value = CFDictionaryGetValue(atomic_load_explicit(&v17, memory_order_acquire), @"NSCTFontWeightTrait");
      if (!Value)
      {
        a2 = 0;
        if (a3)
        {
          goto LABEL_10;
        }

        goto LABEL_7;
      }

      CFNumberGetValue(Value, kCFNumberDoubleType, a5);
    }

    a2 = 1;
    if (a3)
    {
      goto LABEL_10;
    }

LABEL_7:
    v14 = CFDictionaryGetValue(atomic_load_explicit(&v17, memory_order_acquire), @"NSCTFontProportionTrait");
    if (!v14)
    {
      a3 = 0;
      if ((a4 & 1) == 0)
      {
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    CFNumberGetValue(v14, kCFNumberDoubleType, a6);
LABEL_10:
    a3 = 1;
    if ((a4 & 1) == 0)
    {
LABEL_11:
      v15 = CFDictionaryGetValue(atomic_load_explicit(&v17, memory_order_acquire), @"NSCTFontSlantTrait");
      if (!v15)
      {
        a4 = 0;
        goto LABEL_15;
      }

      CFNumberGetValue(v15, kCFNumberDoubleType, a7);
    }

LABEL_14:
    a4 = 1;
    goto LABEL_15;
  }

LABEL_16:

  return a2 | (a3 << 8) | (a4 << 16);
}

void CreateTraitsByStyleGlossaryString(const __CFString *a1, const __CFString *a2)
{
  v31[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v3 = *MEMORY[0x1E695E480];
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
    CFStringFold(MutableCopy, 1uLL, 0);
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v30[7] = v5;
    v30[6] = v5;
    v30[5] = v5;
    v30[4] = v5;
    v30[3] = v5;
    v30[2] = v5;
    v30[1] = v5;
    v30[0] = v5;
    v28 = 0;
    v29 = 0;
    __p = 0;
    v31[0] = v30;
    CStringPtr = CFStringGetCStringPtr(MutableCopy, 0x8000100u);
    if (CStringPtr)
    {
      goto LABEL_25;
    }

    Length = CFStringGetLength(MutableCopy);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v9 = MaximumSizeForEncoding + 1;
    v10 = __p;
    v11 = MaximumSizeForEncoding + 1 - (v28 - __p);
    if (MaximumSizeForEncoding + 1 <= (v28 - __p))
    {
      if (v9 < v28 - __p)
      {
        v28 = __p + v9;
      }
    }

    else
    {
      if (v29 - v28 >= v11)
      {
        bzero(v28, v9 - (v28 - __p));
        v28 = __p + v9;
      }

      else
      {
        if (MaximumSizeForEncoding <= -2)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        v12 = 2 * (v29 - __p);
        if (v12 <= v9)
        {
          v12 = MaximumSizeForEncoding + 1;
        }

        if ((v29 - __p) >= 0x3FFFFFFFFFFFFFFFLL)
        {
          v13 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v13 = v12;
        }

        v14 = v31[0];
        if (v31[0] + v13 > v31)
        {
          operator new();
        }

        v31[0] += v13;
        v15 = (v14 + v28 - __p);
        v16 = v14 + v13;
        v17 = (v14 + v9);
        bzero(v15, v11);
        memcpy(&v15[__p - v28], __p, v28 - __p);
        __p = &v15[__p - v28];
        v28 = v17;
        v29 = v16;
      }

      v10 = __p;
    }

    CString = CFStringGetCString(MutableCopy, v10, v9, 0x8000100u);
    CStringPtr = __p;
    if (!CString || __p == 0)
    {
      a1->isa = 0;
      if (!CStringPtr)
      {
LABEL_37:

        return;
      }
    }

    else
    {
LABEL_25:
      Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v21 = 0;
      v26 = Mutable;
      do
      {
        v22 = CreateTraitsByStyleGlossaryString(__CFString const*)::kStyleGlossaryNameMaps[v21];
        v23 = *v22;
        if (*v22)
        {
          v24 = v22 + 2;
          while (!strstr(CStringPtr, v23))
          {
            v23 = v24[1];
            v24 += 3;
            if (!v23)
            {
              goto LABEL_32;
            }
          }

          v25 = 0xAAAAAAAAAAAAAAAALL;
          TCFNumber::TCFNumber<float>(&v25, *(v24 - 2));
          CFDictionarySetValue(atomic_load_explicit(&v26, memory_order_acquire), **v24, atomic_load_explicit(&v25, memory_order_acquire));
        }

LABEL_32:
        ++v21;
      }

      while (v21 != 3);
      a1->isa = atomic_exchange(&v26, 0);

      CStringPtr = __p;
      if (!__p)
      {
        goto LABEL_37;
      }
    }

    v28 = CStringPtr;
    if (v30 > CStringPtr || v31 <= CStringPtr)
    {
      operator delete(CStringPtr);
    }

    goto LABEL_37;
  }

  a1->isa = 0;
}

void CreateTraitsWithSymbolicTraits(CFDictionaryRef theDict@<X0>, unsigned int a2@<W1>, int a3@<W2>, CFDictionaryRef *a4@<X8>)
{
  if (theDict)
  {
    keys = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
    v8 = GetSymbolicTraitsFromTraits(theDict) & ~a3 | a3 & a2;
    if (v8)
    {
      TCFNumber::TCFNumber<unsigned int>(&values, v8);
      CFDictionarySetValue(atomic_load_explicit(&keys, memory_order_acquire), @"NSCTFontSymbolicTrait", atomic_load_explicit(&values, memory_order_acquire));
    }

    else
    {
      CFDictionaryRemoveValue(atomic_load_explicit(&keys, memory_order_acquire), @"NSCTFontSymbolicTrait");
    }

    *a4 = atomic_exchange(&keys, 0);
    v9 = keys;
  }

  else
  {
    TCFNumber::TCFNumber<unsigned int>(&v10, a2);
    values = atomic_load_explicit(&v10, memory_order_acquire);
    keys = @"NSCTFontSymbolicTrait";
    *a4 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v9 = v10;
  }
}

void *TCFNumber::TCFNumber<float>(void *a1, float a2)
{
  valuePtr = a2;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberFloatType, &valuePtr);
  *a1 = atomic_exchange(&v4, 0);

  return a1;
}

__CFString *TStorageRange::DebugDescriptionWithInfoFromRun(TStorageRange *this, TFont **a2, CGSize a3, uint64_t a4)
{
  width = a3.width;
  v58[1] = *MEMORY[0x1E69E9840];
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v10 = CFStringCreateWithFormat(v8, 0, @"width = %lg, glyphs = (\n"), width + *this;
  CFStringAppend(Mutable, v10);
  CFRelease(v10);
  v11 = *(this + 3);
  v12 = v11[4];
  if (v12 || (v14 = v11[3]) == 0)
  {
    v51 = 0;
    v13 = *(this + 1);
    v49 = (v12 + 16 * v13);
  }

  else
  {
    v13 = *(this + 1);
    v49 = (v14 + 8 * v13);
    v51 = 1;
  }

  if (*(this + 2) >= 1)
  {
    v15 = 0;
    v16 = 0;
    v17 = v11[2] + 2 * v13;
    v50 = v11[6] + 8 * v13;
    v48 = a4;
    v18 = v49;
    v52 = a2;
    v47 = Mutable;
    do
    {
      v53 = 0xAAAAAAAAAAAAAAAALL;
      if (a2 && (TFont::CopyNameForGlyph(a2[5], *(v17 + 2 * v16), &__p), v19 = atomic_exchange(&__p, 0), __p, v19))
      {
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v57[14] = v20;
        v57[15] = v20;
        v57[12] = v20;
        v57[13] = v20;
        v57[10] = v20;
        v57[11] = v20;
        v57[8] = v20;
        v57[9] = v20;
        v57[6] = v20;
        v57[7] = v20;
        v57[4] = v20;
        v57[5] = v20;
        v57[2] = v20;
        v57[3] = v20;
        v57[0] = v20;
        v57[1] = v20;
        __p = 0;
        v55 = 0;
        v56 = 0;
        v58[0] = v57;
        v21 = *(v17 + 2 * v16);
        CStringPtr = CFStringGetCStringPtr(v19, 0x8000100u);
        if (!CStringPtr)
        {
          Length = CFStringGetLength(v19);
          MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
          v25 = MaximumSizeForEncoding + 1;
          v26 = __p;
          v27 = MaximumSizeForEncoding + 1 - (v55 - __p);
          if (MaximumSizeForEncoding + 1 <= (v55 - __p))
          {
            if (v25 < v55 - __p)
            {
              v55 = __p + v25;
            }

            Mutable = v47;
            a4 = v48;
          }

          else
          {
            if (v56 - v55 >= v27)
            {
              v31 = __p + v25;
              v32 = MaximumSizeForEncoding + 1;
              bzero(v55, v25 - (v55 - __p));
              v25 = v32;
              v55 = v31;
              Mutable = v47;
              a4 = v48;
            }

            else
            {
              if (MaximumSizeForEncoding <= -2)
              {
                std::__throw_bad_array_new_length[abi:fn200100]();
              }

              v28 = 2 * (v56 - __p);
              if (v28 <= v25)
              {
                v28 = MaximumSizeForEncoding + 1;
              }

              if ((v56 - __p) >= 0x3FFFFFFFFFFFFFFFLL)
              {
                v29 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v29 = v28;
              }

              v30 = v58[0];
              bufferSize = MaximumSizeForEncoding + 1;
              if (v58[0] + v29 > v58)
              {
                operator new();
              }

              v58[0] += v29;
              v33 = (v30 + v55 - __p);
              v45 = v30 + v29;
              v44 = (v30 + v25);
              bzero(v33, v27);
              v34 = &v33[__p - v55];
              memcpy(v34, __p, v55 - __p);
              v35 = __p;
              v36 = v56;
              __p = v34;
              v55 = v44;
              v25 = bufferSize;
              v56 = v45;
              Mutable = v47;
              a4 = v48;
              if (v35)
              {
                if (v57 > v35 || v58 <= v35)
                {
                  operator delete(v35);
                  v25 = bufferSize;
                }

                else if (v36 == v58[0])
                {
                  v58[0] = v35;
                }
              }
            }

            v26 = __p;
          }

          if (CFStringGetCString(v19, v26, v25, 0x8000100u))
          {
            CStringPtr = __p;
          }

          else
          {
            CStringPtr = 0;
          }
        }

        asprintf(&v53, "%d [%s]", v21, CStringPtr);
        if (__p)
        {
          v55 = __p;
          if (v57 > __p || v58 <= __p)
          {
            operator delete(__p);
          }
        }

        a2 = v52;
      }

      else
      {
        asprintf(&v53, "%d", *(v17 + 2 * v16));
        v19 = 0;
      }

      if ((*(this + 33) & 0x10) != 0)
      {
        [*(this + 3) originAtIndex:v16 + *(this + 1)];
      }

      else
      {
        v37 = *MEMORY[0x1E695EFF8];
        v38 = *(MEMORY[0x1E695EFF8] + 8);
      }

      if (a4 == v16 || *(v17 + 2 * v16) != 0xFFFF || (*(this + 33) & 2) == 0)
      {
        if (v51)
        {
          v39 = &v49[v16];
          v40 = 0;
        }

        else
        {
          v40 = v18[1];
          v39 = v18;
        }

        v41 = v15 + 1;
        v42 = CFStringCreateWithFormat(v8, 0, @"\t{ %ld: glyph = %s, string index = %ld, origin = { %g, %g }, base advance = { %g, %g } },\n", v15, v53, *(v50 + 8 * v16), v37, v38, *v39, v40);
        CFStringAppend(Mutable, v42);
        CFRelease(v42);
        v15 = v41;
        a2 = v52;
      }

      free(v53);

      ++v16;
      v18 += 2;
    }

    while (v16 < *(this + 2));
  }

  CFStringAppend(Mutable, @""));
  return Mutable;
}

uint64_t TStorageRange::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  result = CFEqual(*(a1 + 24), *(a2 + 24));
  if (result)
  {
    return *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 32) == *(a2 + 32);
  }

  return result;
}

uint64_t TStorageRange::FindTabGlyph(TStorageRange *this, uint64_t a2, int a3, double *a4)
{
  v4 = *(this + 2);
  v5 = *(this + 3);
  if (a3 < 0)
  {
    v4 = -1;
  }

  v6 = v5[4];
  if (v6 || (v10 = v5[3]) == 0)
  {
    v7 = 0;
    v8 = *(this + 1);
    v9 = v6 + 16 * v8;
  }

  else
  {
    v8 = *(this + 1);
    v9 = v10 + 8 * v8;
    v7 = 1;
  }

  if (v4 != a2)
  {
    v11 = v5[5] + 4 * v8;
    v12 = (v9 + 16 * a2);
    v13 = (v9 + 8 * a2);
    while ((*(v11 + 4 * a2) & 4) == 0)
    {
      if (a4)
      {
        if (v7)
        {
          v14 = v13;
        }

        else
        {
          v14 = v12;
        }

        *a4 = *v14 + *a4;
      }

      a2 += a3;
      v12 += 2 * a3;
      v13 += a3;
      if (v4 == a2)
      {
        return v4;
      }
    }
  }

  return a2;
}

uint64_t TStorageRange::ResetAdvance(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 8) + a2;
  v8 = *(a1 + 33);
  v9 = *(a1 + 24);
  if ((v8 & 4) != 0)
  {
    [v9 customAdvanceForIndex:v7];
  }

  else
  {
    v14 = *(v9[2] + 2 * v7);
    v13 = NAN;
    TFont::GetUnsummedAdvancesForGlyphs(a3, &v14, &v13, 1, 1, 0, a4);
    v10 = *&v13;
  }

  v11 = 0;
  return TStorageRange::SetAdvance(a1, a2, *&v10);
}

uint64_t TStorageRange::InsertGlyphs(id *this, CFRange a2)
{
  length = a2.length;
  location = a2.location;
  [this[3] insertGlyphsAtRange:{a2.location, a2.length}];
  this[2] = this[2] + length;
  if (length >= 1)
  {
    v5 = location + length;
    v6 = MEMORY[0x1E695F060];
    do
    {
      [this[3] setAdvance:location++ atIndex:{*v6, v6[1]}];
    }

    while (location < v5);
  }

  v7 = this[3];

  return [v7 sync];
}

void TStorageRange::DetachStorage(id *this)
{
  v2 = [this[3] copyWithRange:{this[1], this[2]}];

  this[3] = v2;
  this[1] = 0;
}

void TStorageRange::DetachStorageIfShared(TStorageRange *this)
{
  v2 = *(this + 1);
  v3 = *(this + 3);
  if (v2 || v3[1] != *(this + 2))
  {
    v4 = [v3 copyWithRange:?];

    *(this + 3) = v4;
    *(this + 1) = 0;
  }
}

void *TStorageRange::SetInterGlyphsExtraSpace(void *this, uint64_t a2, double a3)
{
  v3 = this[5];
  if (a3 == 0.0)
  {
    if (!v3)
    {
      return this;
    }
  }

  else if (!v3)
  {
    operator new();
  }

  v4 = a2 - this[7] + this[1];
  if (v4 < this[2])
  {
    v5 = *this[5];
    if (v4 >= (*(this[5] + 8) - v5) >> 3)
    {
      __break(1u);
    }

    else
    {
      *(v5 + 8 * v4) = a3;
    }
  }

  return this;
}

void TStorageRange::SetOriginalFinalAdvanceWidth(TStorageRange *this, double a2)
{
  v4 = *(this + 5);
  if (!v4)
  {
    operator new();
  }

  v5 = (v4[1] - *v4) >> 3;
  v6 = *(this + 1);
  v7 = *(this + 2);
  v8 = *(this + 7);
  if (v7 + v6 - v8 == v5)
  {
    std::vector<double>::resize(v4, v5 + 1);
    v6 = *(this + 1);
    v7 = *(this + 2);
    v8 = *(this + 7);
  }

  if (v7 - v8 + v6 + 1 == v5)
  {
    v9 = *(this + 5);
    v11 = *v9;
    v10 = v9[1];
    if (v11 == v10)
    {
      __break(1u);
    }

    else
    {
      *(v10 - 8) = a2;
    }
  }
}

void *TStorageRange::GetOriginalFinalAdvanceWidth(void *this)
{
  v1 = this[5];
  if (!v1)
  {
    return 0;
  }

  v2 = *v1;
  v3 = *(this[5] + 8);
  if (this[1] + this[2] - this[7] + 1 != (v3 - v2) >> 3)
  {
    return 0;
  }

  if (v2 != v3)
  {
    return *(v3 - 8);
  }

  __break(1u);
  return this;
}

void *std::__shared_ptr_emplace<std::vector<double>>::__shared_ptr_emplace[abi:fn200100]<long,std::allocator<std::vector<double>>,0>(void *a1, unint64_t *a2)
{
  a1[1] = 0;
  a1[2] = 0;
  *a1 = &unk_1EF257EB8;
  v3 = *a2;
  a1[3] = 0;
  v4 = (a1 + 3);
  a1[4] = 0;
  a1[5] = 0;
  if (v3)
  {
    std::vector<double>::__vallocate[abi:fn200100](v4, v3);
  }

  return a1;
}

void std::__shared_ptr_emplace<std::vector<double>>::~__shared_ptr_emplace(std::__shared_weak_count *a1)
{
  a1->__vftable = &unk_1EF257EB8;
  std::__shared_weak_count::~__shared_weak_count(a1);

  JUMPOUT(0x1865F22D0);
}

void std::__shared_ptr_emplace<std::vector<double>>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    *(a1 + 32) = v2;
    operator delete(v2);
  }
}

void std::vector<double>::__vallocate[abi:fn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    std::allocator<long>::allocate_at_least[abi:fn200100](a1, a2);
  }

  std::__throw_bad_array_new_length[abi:fn200100]();
}

uint64_t TBidiEngine::ReorderGlyphs(uint64_t this, TLine *a2)
{
  v20 = this;
  v2 = *(a2 + 2);
  v3 = *(a2 + 3) - v2;
  if (v3)
  {
    v5 = v3 >> 3;
    v6 = *(*v2 + 40);
    v7 = v6[20];
    if (v7 && (*(v7 + 66) & 4) != 0)
    {
      v8 = 1;
    }

    else
    {
      this = v6[21];
      if (this)
      {
        this = TParagraphStyle::GetBaseWritingDirection(this, a2);
        v8 = this;
      }

      else
      {
        v8 = -1;
      }
    }

    v9 = v6[1];
    v10 = v6[2];
    if (v5 < 2)
    {
      v11 = 0;
LABEL_25:
      v22.location = v9;
      v22.length = v10;
      this = TBidiEngine::ReorderGlyphsInDirectionRange(v20, a2, v22, v8);
      if (v11 & 1) != 0 || (this)
      {
        *(a2 + 76) |= 1u;
      }
    }

    else
    {
      v11 = 0;
      v12 = 1;
      v13 = v6[2];
      while (1)
      {
        v14 = *(a2 + 2);
        if (v12 >= (*(a2 + 3) - v14) >> 3)
        {
          break;
        }

        v15 = *(*(v14 + 8 * v12) + 40);
        v16 = v15[20];
        if (v16 && (*(v16 + 66) & 4) != 0)
        {
          v17 = 1;
        }

        else
        {
          this = v15[21];
          if (this)
          {
            this = TParagraphStyle::GetBaseWritingDirection(this, a2);
            v17 = this;
          }

          else
          {
            v17 = -1;
          }
        }

        v10 = v15[2];
        if (v17 == v8)
        {
          v10 += v13;
        }

        else
        {
          v18 = v15[1];
          v21.location = v9;
          v21.length = v13;
          this = TBidiEngine::ReorderGlyphsInDirectionRange(v20, a2, v21, v8);
          v11 |= this;
          v19 = *(a2 + 3) - *(a2 + 2);
          if (v5 != v19 >> 3)
          {
            v5 = v19 >> 3;
            this = TLine::FindRunWithCharIndex(a2, v18 + v10 - 1, 1);
            v12 = this;
          }

          v9 = v18;
          v8 = v17;
        }

        ++v12;
        v13 = v10;
        if (v12 >= v5)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
    }
  }

  return this;
}

uint64_t TBidiEngine::ReorderGlyphsInDirectionRange(TBidiEngine *this, TLine *a2, CFRange a3, uint64_t a4)
{
  length = a3.length;
  location = a3.location;
  v8 = (*(**this + 16))(*this, a3.location, a3.length, a4);
  v9 = v8;
  if (v8)
  {
    v10 = *v8;
  }

  else
  {
    v10 = 0;
  }

  v11 = v10 != 0;
  if (length < 2)
  {
    v12 = 0;
  }

  else
  {
    v12 = 0;
    for (i = 1; i < length; ++i)
    {
      if (v9)
      {
        v14 = v9[i];
      }

      else
      {
        v14 = 0;
      }

      if (v14 != v10)
      {
        v17.length = i - v12;
        v17.location = v12 + location;
        v15 = TBidiEngine::NewLevelRun(this, a2, v17, v10);
        if (v9)
        {
          v10 = v9[i];
        }

        else
        {
          v10 = 0;
        }

        v11 |= v10 != 0;
        i += v15;
        v12 = i;
      }
    }
  }

  if (length > v12)
  {
    v18.location = v12 + location;
    v18.length = length - v12;
    TBidiEngine::NewLevelRun(this, a2, v18, v10);
  }

  return v11 & 1;
}

uint64_t TBidiEngine::NewLevelRun(TBidiEngine *this, TLine *a2, CFRange a3, int a4)
{
  if (!a4)
  {
    return 0;
  }

  v4 = a4;
  length = a3.length;
  location = a3.location;
  v7 = a2;
  if (a4)
  {
    result = TLine::FindRunWithCharIndex(a2, a3.location, 1);
    v10 = *(v7 + 2);
    v11 = *(v7 + 3) - v10;
    if (result < v11 >> 3)
    {
      v64 = *(this + 1);
      v65 = 0u;
      v66 = 0u;
      v67 = 0u;
      v68 = 0u;
      v69 = 0u;
      v70 = 0u;
      v71 = 0u;
      v72 = 0u;
      v73 = 0u;
      v74 = 0u;
      v76 = 0;
      v75 = 0u;
      *&v75 = *(v64 + 16);
      if (v11 >> 3 <= result)
      {
        __break(1u);
        return result;
      }

      v53 = v7;
      v55 = length;
      v54 = v4;
      v12 = *(*(v10 + 8 * result) + 48);
      if (v12)
      {
        v56 = location;
        v57 = location + length;
        while (1)
        {
          v13 = *(v12 + 8);
          v14 = *(v12 + 16) + v13;
          if (v14 >= v57)
          {
            v15 = v57;
          }

          else
          {
            v15 = *(v12 + 16) + v13;
          }

          v16 = v15 - location;
          v17 = v13 <= location && location < v14;
          if (v17)
          {
            v18 = location;
          }

          else
          {
            v18 = 0;
          }

          if (!v17)
          {
            v16 = 0;
          }

          v19 = v15 - v13;
          v20 = location <= v13 && v13 < v57;
          if (v20)
          {
            v21 = *(v12 + 8);
          }

          else
          {
            v21 = v18;
          }

          if (v20)
          {
            v22 = v19;
          }

          else
          {
            v22 = v16;
          }

          if (!v22)
          {
            goto LABEL_105;
          }

          explicit = atomic_load_explicit((v12 + 56), memory_order_acquire);
          v24 = explicit[5];
          v63 = 0xAAAAAAAAAAAAAAAALL;
          *&v25 = 0xAAAAAAAAAAAAAAAALL;
          *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v61 = v25;
          v62 = v25;
          TAATPropTable::TAATPropTable(v61, explicit);
          if (v61[1])
          {
            v58 = explicit;
            v26 = *(v12 + 216);
            v27 = *(v26 + 48);
            v28 = *(v12 + 200);
            v29 = *(v26 + 16);
            GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(v12, v21);
            v31 = *(v12 + 208);
            if (GlyphIndexForChar < v31)
            {
              v32 = GlyphIndexForChar;
              v33 = v27 + 8 * v28;
              v34 = &v21[v22];
              v35 = v29 + 2 * v28;
              do
              {
                v36 = *(v33 + 8 * v32);
                v60 = v36;
                if (v21 > v36 || v34 <= v36)
                {
                  break;
                }

                v59 = *(v35 + 2 * v32);
                if (TAATPropTable::MirrorGlyph(v61, &v59))
                {
                  v38 = v59;
                  [*(v12 + 216) setGlyph:v59 atIndex:v32 + *(v12 + 200)];
                  v39 = *(v12 + 225);
                  if (v38 == 0xFFFF && (v39 & 2) != 0)
                  {
                    *(v12 + 225) = v39 | 8;
                  }

                  RenderingStyle = TAttributes::GetRenderingStyle((v12 + 40));
                  TStorageRange::ResetAdvance(v12 + 192, v32, v24, RenderingStyle & 0xFFFFFFFFFFLL);
                }

                else
                {
                  FullChar = TCharStreamIterator::GetFullChar(&v64, &v60, 0);
                  v43 = MEMORY[0x1865F2D30]();
                  if (v43 != FullChar)
                  {
                    TBidiEngine::ReplaceCharAtIndex(v12, v58[5], v43, v36);
                  }
                }

                ++v32;
              }

              while (v31 != v32);
            }

            location = v56;
            goto LABEL_104;
          }

          ShapingType = TBaseFont::GetShapingType(*(v24 + 408));
          v61[0] = v21;
          if (v22 > 0)
          {
            break;
          }

LABEL_104:
          v12 = *(v12 + 24);
          if (!v12)
          {
            goto LABEL_105;
          }
        }

        v45 = &v21[v22];
        v46 = ShapingType & 0xFFFFFFFE;
        while (1)
        {
          v47 = TCharStreamIterator::GetFullChar(&v64, v61, 0);
          if (!MEMORY[0x1865F2DB0]())
          {
            goto LABEL_103;
          }

          if (v46 != 2)
          {
            goto LABEL_101;
          }

          if (v47 > 10626)
          {
            if (v47 > 11777)
            {
              if (v47 <= 12295)
              {
                if ((v47 - 11778) <= 0x27 && ((1 << (v47 - 2)) & 0xFFCC000D8FLL) != 0)
                {
                  goto LABEL_101;
                }
              }

              else
              {
                if (v47 <= 65112)
                {
                  if ((v47 - 12296) > 0x13)
                  {
                    goto LABEL_103;
                  }

                  v49 = 1 << (v47 - 8);
                  v50 = 1045503;
                  goto LABEL_92;
                }

                if ((v47 - 65113) <= 0xC && ((1 << (v47 - 89)) & 0x183F) != 0 || (v47 - 65288) <= 0x35 && ((1 << (v47 - 8)) & 0x28000000500003) != 0)
                {
                  goto LABEL_101;
                }

                if ((v47 - 65371) <= 8)
                {
                  v49 = 1 << (v47 - 91);
                  v50 = 437;
                  goto LABEL_92;
                }
              }
            }

            else
            {
              if (v47 > 10851)
              {
                switch(v47)
                {
                  case 10852:
                  case 10853:
                  case 10873:
                  case 10874:
                  case 10877:
                  case 10878:
                  case 10879:
                  case 10880:
                  case 10881:
                  case 10882:
                  case 10883:
                  case 10884:
                  case 10891:
                  case 10892:
                  case 10897:
                  case 10898:
                  case 10899:
                  case 10900:
                  case 10901:
                  case 10902:
                  case 10903:
                  case 10904:
                  case 10905:
                  case 10906:
                  case 10907:
                  case 10908:
                  case 10913:
                  case 10914:
                  case 10918:
                  case 10919:
                  case 10920:
                  case 10921:
                  case 10922:
                  case 10923:
                  case 10924:
                  case 10925:
                  case 10927:
                  case 10928:
                  case 10931:
                  case 10932:
                  case 10939:
                  case 10940:
                  case 10941:
                  case 10942:
                  case 10943:
                  case 10944:
                  case 10945:
                  case 10946:
                  case 10947:
                  case 10948:
                  case 10949:
                  case 10950:
                  case 10957:
                  case 10958:
                  case 10959:
                  case 10960:
                  case 10961:
                  case 10962:
                  case 10963:
                  case 10964:
                  case 10965:
                  case 10966:
                  case 10974:
                  case 10979:
                  case 10980:
                  case 10981:
                  case 10988:
                  case 10989:
                  case 10999:
                  case 11000:
                  case 11001:
                  case 11002:
                    goto LABEL_101;
                  default:
                    goto LABEL_103;
                }

                goto LABEL_103;
              }

              if ((v47 - 10627) <= 0x3E && ((1 << (v47 + 125)) & 0x60200000003FFFFFLL) != 0 || (v47 - 10692) <= 0x39 && ((1 << (v47 + 60)) & 0x332000000F37803) != 0)
              {
LABEL_101:
                v51 = MEMORY[0x1865F2D30](v47);
                if (v51 != v47)
                {
                  TBidiEngine::ReplaceCharAtIndex(v12, explicit[5], v51, v21);
                }

                goto LABEL_103;
              }

              if ((v47 - 10795) <= 0x12)
              {
                v49 = 1 << (v47 - 43);
                v50 = 394767;
LABEL_92:
                if ((v49 & v50) != 0)
                {
                  goto LABEL_101;
                }
              }
            }
          }

          else
          {
            if (v47 > 8711)
            {
              switch(v47)
              {
                case 8712:
                case 8713:
                case 8714:
                case 8715:
                case 8716:
                case 8717:
                case 8725:
                case 8764:
                case 8765:
                case 8771:
                case 8786:
                case 8787:
                case 8788:
                case 8789:
                case 8804:
                case 8805:
                case 8806:
                case 8807:
                case 8808:
                case 8809:
                case 8810:
                case 8811:
                case 8814:
                case 8815:
                case 8816:
                case 8817:
                case 8818:
                case 8819:
                case 8820:
                case 8821:
                case 8822:
                case 8823:
                case 8824:
                case 8825:
                case 8826:
                case 8827:
                case 8828:
                case 8829:
                case 8830:
                case 8831:
                case 8832:
                case 8833:
                case 8834:
                case 8835:
                case 8836:
                case 8837:
                case 8838:
                case 8839:
                case 8840:
                case 8841:
                case 8842:
                case 8843:
                case 8847:
                case 8848:
                case 8849:
                case 8850:
                case 8856:
                case 8866:
                case 8867:
                case 8870:
                case 8872:
                case 8873:
                case 8875:
                case 8880:
                case 8881:
                case 8882:
                case 8883:
                case 8884:
                case 8885:
                case 8886:
                case 8887:
                case 8905:
                case 8906:
                case 8907:
                case 8908:
                case 8909:
                case 8912:
                case 8913:
                case 8918:
                case 8919:
                case 8920:
                case 8921:
                case 8922:
                case 8923:
                case 8924:
                case 8925:
                case 8926:
                case 8927:
                case 8928:
                case 8929:
                case 8930:
                case 8931:
                case 8932:
                case 8933:
                case 8934:
                case 8935:
                case 8936:
                case 8937:
                case 8938:
                case 8939:
                case 8940:
                case 8941:
                case 8944:
                case 8945:
                case 8946:
                case 8947:
                case 8948:
                case 8950:
                case 8951:
                case 8954:
                case 8955:
                case 8956:
                case 8957:
                case 8958:
                case 8968:
                case 8969:
                case 8970:
                case 8971:
                case 9001:
                case 9002:
                  goto LABEL_101;
                case 8718:
                case 8719:
                case 8720:
                case 8721:
                case 8722:
                case 8723:
                case 8724:
                case 8726:
                case 8727:
                case 8728:
                case 8729:
                case 8730:
                case 8731:
                case 8732:
                case 8733:
                case 8734:
                case 8735:
                case 8736:
                case 8737:
                case 8738:
                case 8739:
                case 8740:
                case 8741:
                case 8742:
                case 8743:
                case 8744:
                case 8745:
                case 8746:
                case 8747:
                case 8748:
                case 8749:
                case 8750:
                case 8751:
                case 8752:
                case 8753:
                case 8754:
                case 8755:
                case 8756:
                case 8757:
                case 8758:
                case 8759:
                case 8760:
                case 8761:
                case 8762:
                case 8763:
                case 8766:
                case 8767:
                case 8768:
                case 8769:
                case 8770:
                case 8772:
                case 8773:
                case 8774:
                case 8775:
                case 8776:
                case 8777:
                case 8778:
                case 8779:
                case 8780:
                case 8781:
                case 8782:
                case 8783:
                case 8784:
                case 8785:
                case 8790:
                case 8791:
                case 8792:
                case 8793:
                case 8794:
                case 8795:
                case 8796:
                case 8797:
                case 8798:
                case 8799:
                case 8800:
                case 8801:
                case 8802:
                case 8803:
                case 8812:
                case 8813:
                case 8844:
                case 8845:
                case 8846:
                case 8851:
                case 8852:
                case 8853:
                case 8854:
                case 8855:
                case 8857:
                case 8858:
                case 8859:
                case 8860:
                case 8861:
                case 8862:
                case 8863:
                case 8864:
                case 8865:
                case 8868:
                case 8869:
                case 8871:
                case 8874:
                case 8876:
                case 8877:
                case 8878:
                case 8879:
                case 8888:
                case 8889:
                case 8890:
                case 8891:
                case 8892:
                case 8893:
                case 8894:
                case 8895:
                case 8896:
                case 8897:
                case 8898:
                case 8899:
                case 8900:
                case 8901:
                case 8902:
                case 8903:
                case 8904:
                case 8910:
                case 8911:
                case 8914:
                case 8915:
                case 8916:
                case 8917:
                case 8942:
                case 8943:
                case 8949:
                case 8952:
                case 8953:
                case 8959:
                case 8960:
                case 8961:
                case 8962:
                case 8963:
                case 8964:
                case 8965:
                case 8966:
                case 8967:
                case 8972:
                case 8973:
                case 8974:
                case 8975:
                case 8976:
                case 8977:
                case 8978:
                case 8979:
                case 8980:
                case 8981:
                case 8982:
                case 8983:
                case 8984:
                case 8985:
                case 8986:
                case 8987:
                case 8988:
                case 8989:
                case 8990:
                case 8991:
                case 8992:
                case 8993:
                case 8994:
                case 8995:
                case 8996:
                case 8997:
                case 8998:
                case 8999:
                case 9000:
                  goto LABEL_103;
                default:
                  if ((v47 - 10179) <= 0x2C && ((1 << (v47 + 61)) & 0x1FFF8C0C006FLL) != 0 || (v47 - 10088) < 0xE)
                  {
                    goto LABEL_101;
                  }

                  break;
              }

              goto LABEL_103;
            }

            if (v47 <= 3897)
            {
              if ((v47 - 60) <= 0x3F && ((1 << (v47 - 60)) & 0x8000000280000005) != 0 || (v47 - 125) <= 0x3E && ((1 << (v47 - 125)) & 0x4000400000000001) != 0)
              {
                goto LABEL_101;
              }

              v48 = v47 - 40;
              goto LABEL_79;
            }

            if (v47 <= 8248)
            {
              if ((v47 - 3898) < 4)
              {
                goto LABEL_101;
              }

              v48 = v47 - 5787;
LABEL_79:
              if (v48 < 2)
              {
                goto LABEL_101;
              }

              goto LABEL_103;
            }

            if ((v47 - 8249) <= 0xD && ((1 << (v47 - 57)) & 0x3003) != 0 || (v47 - 8317) <= 0x11 && ((1 << (v47 - 125)) & 0x30003) != 0)
            {
              goto LABEL_101;
            }
          }

LABEL_103:
          v21 = v61[0] + 1;
          v61[0] = v21;
          if (v21 >= v45)
          {
            goto LABEL_104;
          }
        }
      }

LABEL_105:
      v4 = v54;
      length = v55;
      v7 = v53;
    }
  }

  v52.location = location;
  v52.length = length;

  return TLine::SetLevelRange(v7, v52, v4, 0);
}

uint64_t TBidiEngine::ReplaceCharAtIndex(TBidiEngine *this, TRun *a2, const __CTFont *a3, uint64_t a4)
{
  v14 = a3;
  v13 = 0;
  result = GetGlyphsForLongCharacters(a2, &v14, &v13, 1);
  v7 = v13;
  if (v13)
  {
    GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(this, a4);
    [*(this + 27) setGlyph:v7 atIndex:*(this + 25) + GlyphIndexForChar];
    v9 = *(this + 225);
    if (v7 == 0xFFFF && (v9 & 2) != 0)
    {
      *(this + 225) = v9 | 8;
    }

    v11 = *(atomic_load_explicit(this + 7, memory_order_acquire) + 40);
    RenderingStyle = TAttributes::GetRenderingStyle((this + 40));
    return TStorageRange::ResetAdvance(this + 192, GlyphIndexForChar, v11, RenderingStyle & 0xFFFFFFFFFFLL);
  }

  return result;
}

void TDescriptorSource::PurgeFromSplicedFonts(TDescriptorSource *this, const void *a2)
{
  os_unfair_lock_lock_with_options();
  if (TDescriptorSource::sSplicedFonts)
  {
    CFDictionaryRemoveValue(TDescriptorSource::sSplicedFonts, a2);
  }

  os_unfair_lock_unlock(&TDescriptorSource::sSplicedFontsLock);
}

__CFString *CTFontDescriptorGetContentSizeCategoryFromIndex(unsigned int a1)
{
  if (a1 > 0xB)
  {
    v1 = kCTFontContentSizeCategoryL;
  }

  else
  {
    v1 = off_1E6E38EB0[a1];
  }

  return *v1;
}

void TDescriptorSource::CreateVariantWithTraitsMatchingDescriptors(TDescriptorSource *this@<X0>, const __CFArray *a2@<X1>, void *a3@<X8>)
{
  *&v15.var0 = 0xAAAAAAAAAAAAAAAALL;
  memset(&v15.var1, 255, 24);
  TTraitsValues::TTraitsValues(&v15, a2);
  if (a2)
  {
    Value = CFDictionaryGetValue(a2, @"NSCTFontSymbolicTrait");
    if (Value)
    {
      v8 = Value;
      v9 = CFDictionaryContainsKey(a2, @"NSCTFontWeightTrait") == 0;
      v10 = (CFDictionaryContainsKey(a2, @"NSCTFontSlantTrait") == 0) | (2 * v9);
      v11 = CFDictionaryContainsKey(a2, @"NSCTFontProportionTrait") ? v10 : v10 | 0x40;
      if (v11)
      {
        valuePtr = -1431655766;
        CFNumberGetValue(v8, kCFNumberIntType, &valuePtr);
        v12 = 0.06944444;
        v13 = 0.0;
        if ((valuePtr & 1) == 0)
        {
          v12 = 0.0;
        }

        v14 = -0.2;
        if ((valuePtr & 0x40) == 0)
        {
          v14 = 0.0;
        }

        if ((valuePtr & 0x20) != 0)
        {
          v14 = 0.2;
        }

        if ((v11 & 2) != 0)
        {
          if ((valuePtr & 2) != 0)
          {
            v13 = 0.400000006;
          }

          v15.var1 = v13;
        }

        if (v11)
        {
          v15.var3 = v12;
        }

        if (v11 >= 0x40)
        {
          v15.var2 = v14;
        }
      }
    }
  }

  TBaseFont::CreateVariantWithTraitsMatchingDescriptors(&v15, this, a3);
}

void TDescriptorSource::CreateDefaultDescriptor(int a1@<W1>, void *a2@<X8>)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::CreateDescriptorForUIType((2 * (a1 != 0)), 0.0, 0, &v8);
  v4 = atomic_load_explicit(&v8, memory_order_acquire);
  v5 = v4;
  v6 = v4[5];
  if ((*(v6 + 4) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(v4[5], 16 * (a1 == 0), 0.0);
  }

  explicit = atomic_load_explicit(v6 + 4, memory_order_acquire);

  if (explicit)
  {
    *a2 = atomic_exchange(&v8, 0);
  }

  else
  {
    CFLog();
    TDescriptorSource::CopyLastResort(a2);
  }
}

id TDescriptorSource::CopyLastResort@<X0>(void *a1@<X8>)
{
  if (qword_1ED567AB0 != -1)
  {
    dispatch_once_f(&qword_1ED567AB0, 0, TDescriptorSource::CopyLastResort(void)const::$_0::__invoke);
  }

  result = qword_1ED567AA8;
  *a1 = result;
  return result;
}

uint64_t TCFBase_NEW<CTFontDescriptor,TBaseFont const*>(uint64_t *a1, uint64_t *a2)
{
  result = TCFBase<TDescriptor>::Allocate();
  if (result)
  {
    v5 = *a2;
    *(result + 16) = 0;
    *(result + 24) = TDescriptor::Hash;
    *(result + 32) = 0;
    *(result + 40) = result + 48;
    *(result + 48) = &unk_1EF257E00;
    *(result + 56) = 0;
    *(result + 64) = 0x80000000;
    *(result + 72) = 0;
    if (v5)
    {
      atomic_fetch_add_explicit((v5 + 8), 1u, memory_order_relaxed);
    }

    *(result + 80) = v5;
    *(result + 88) = 0;
  }

  *a1 = result;
  return result;
}

void TDescriptorSource::CopyDescriptor(atomic_ullong **this@<X0>, CGFont *a2@<X1>, const __CFDictionary *a3@<X2>, atomic_ullong *a4@<X8>)
{
  v16 = a2;
  if (a2)
  {
    v15 = -86;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    CreateFontURLFromFont(a2, &v15, &v14);
    explicit = atomic_load_explicit(&v14, memory_order_acquire);
    if (a3 && explicit && CFDictionaryGetCount(a3))
    {
      v13 = 0xAAAAAAAAAAAAAAAALL;
      VariationsForGraphicsFontByAddingVariation(&v13);
      if (atomic_load_explicit(&v13, memory_order_acquire))
      {
        v12 = atomic_load_explicit(&v13, memory_order_acquire);
        TCFBase_NEW<CTFontDescriptor,CGFont *&,__CFDictionary const*>(&v16, &v12, a4);

LABEL_16:
        return;
      }
    }

    if (v15)
    {
      TCFBase_NEW<CTFontDescriptor,CGFont *&,is_inmemory_t const&>(a4);
    }

    else
    {
      *a4 = 0xAAAAAAAAAAAAAAAALL;
      TDescriptorSource::CopyDescriptorUncached(this, atomic_load_explicit(&v14, memory_order_acquire), a4);
      v8 = *this;
      v9 = atomic_load_explicit(&v14, memory_order_acquire);
      v10 = atomic_load_explicit(a4, memory_order_acquire);
      v11 = atomic_load_explicit(v8, memory_order_acquire);
      if (v10)
      {
        [v11 setObject:v10 forKey:v9];
      }

      else
      {
        [v11 removeObjectForKey:v9];
      }
    }

    goto LABEL_16;
  }

  TDescriptorSource::CreateDefaultDescriptor(this);
}

CTFontDescriptor *TCFBase_NEW<CTFontDescriptor,CGFont *&,__CFDictionary const*>@<X0>(CGFont **a1@<X0>, const __CFDictionary **a2@<X1>, void *a3@<X8>)
{
  result = TCFBase<TDescriptor>::Allocate();
  if (result)
  {
    CTFontDescriptor::CTFontDescriptor(result, *a1, *a2);
  }

  *a3 = 0;
  return result;
}

void *TCFBase_NEW<CTFontDescriptor,CGFont *&,is_inmemory_t const&>@<X0>(void *a1@<X8>)
{
  result = TCFBase<TDescriptor>::Allocate();
  if (result)
  {
    CTFontDescriptor::CTFontDescriptor(result);
  }

  *a1 = 0;
  return result;
}

void TDescriptorSource::CopyAllDescriptorsInternal(atomic_ullong **this@<X0>, CFComparisonResult (__cdecl *a2)(const void *, const void *, void *)@<X2>, char a3@<W1>, void *a4@<X8>)
{
  v8 = XTCopyAvailableFontURLs();
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  if ((a3 & 2) != 0)
  {
    if (!v8)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  if (v8)
  {
    Count = CFArrayGetCount(v8);
    if (Count)
    {
      v10 = Count;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, i);
        v25 = 0xAAAAAAAAAAAAAAAALL;
        TDescriptorSource::CopyDescriptorUncached(this, ValueAtIndex, &v25);
        if (atomic_load_explicit(&v25, memory_order_acquire))
        {
          v13 = atomic_load_explicit(&v25, memory_order_acquire);
          v14 = v13;
          v15 = v13[5];
          if ((*(v15 + 4) & 0x80000000) == 0)
          {
            TDescriptor::InitBaseFont(v13[5], 0, 0.0);
          }

          explicit = atomic_load_explicit(v15 + 4, memory_order_acquire);

          if (((*(*explicit + 704))(explicit) & 1) == 0)
          {
            v17 = atomic_load_explicit(&v25, memory_order_acquire);
            CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), v17);
          }
        }
      }
    }
  }

  if (CFArrayGetCount(atomic_load_explicit(&Mutable, memory_order_acquire)))
  {
    v18 = 1;
  }

  else
  {
    v18 = v8 == 0;
  }

  if (!v18)
  {
LABEL_18:
    v19 = CFArrayGetCount(v8);
    if (v19)
    {
      v20 = v19;
      for (j = 0; j != v20; ++j)
      {
        v22 = CFArrayGetValueAtIndex(v8, j);
        v25 = 0xAAAAAAAAAAAAAAAALL;
        TDescriptorSource::CopyDescriptorUncached(this, v22, &v25);
        if (atomic_load_explicit(&v25, memory_order_acquire))
        {
          v23 = atomic_load_explicit(&v25, memory_order_acquire);
          CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), v23);
        }
      }
    }
  }

LABEL_23:
  if (a2)
  {
    v24 = atomic_load_explicit(&Mutable, memory_order_acquire);
    v27.length = CFArrayGetCount(atomic_load_explicit(&Mutable, memory_order_acquire));
    v27.location = 0;
    CFArraySortValues(v24, v27, a2, 0);
  }

  *a4 = atomic_exchange(&Mutable, 0);
}

id TDescriptorSource::CopyAllDescriptorsSorted@<X0>(atomic_ullong **this@<X0>, char a2@<W1>, void *a3@<X8>)
{
  v4 = 40;
  if ((a2 & 2) == 0)
  {
    v4 = 32;
  }

  v5 = TGenerationSeed::sGeneration;
  explicit = atomic_load_explicit(&_MergedGlobals_16[v4], memory_order_acquire);
  if (explicit)
  {
    v7 = dword_1ED567A64 == v5;
  }

  else
  {
    v7 = 0;
  }

  if (!v7)
  {
    TDescriptorSource::CopyAllDescriptorsInternal(this, CompareDescriptorsByTraitsAndPrecedence, a2, &v14);
    v9 = atomic_exchange(&v14, 0);

    if ((a2 & 2) != 0)
    {
      v10 = &unk_1ED567A88;
    }

    else
    {
      v10 = &unk_1ED567A80;
    }

    v11 = explicit;
    atomic_compare_exchange_strong(v10, &v11, v9);
    if (v11 == explicit)
    {
      v12 = explicit;
    }

    else
    {
      v12 = v9;
    }

    if (v11 == explicit)
    {
      explicit = v9;
    }

    else
    {
      explicit = v11;
    }

    dword_1ED567A64 = v5;
  }

  result = explicit;
  *a3 = result;
  return result;
}

void TDescriptorSource::CopyAvailablePostScriptNames(atomic_ullong **this@<X0>, CFArrayRef *a2@<X8>)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::CopyAllDescriptorsInternal(this, 0, 0, &v5);
  if (!atomic_load_explicit(&v5, memory_order_acquire))
  {
    goto LABEL_5;
  }

  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  explicit = atomic_load_explicit(&v5, memory_order_acquire);
  v6.length = CFArrayGetCount(atomic_load_explicit(&v5, memory_order_acquire));
  v6.location = 0;
  CFArrayApplyFunction(explicit, v6, AddPostScriptNameToSetForDescriptor, &Mutable);
  if (CFSetGetCount(atomic_load_explicit(&Mutable, memory_order_acquire)) < 1)
  {

LABEL_5:
    *a2 = 0;
    goto LABEL_6;
  }

  CreateSortedArrayWithSet(atomic_load_explicit(&Mutable, memory_order_acquire), TDescriptorSource::ComparePostScriptNames, 0, a2);

LABEL_6:
}

void AddPostScriptNameToSetForDescriptor(const void *a1, atomic_ullong *a2)
{
  v3 = *(a1 + 5);
  if ((*(v3 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(a1 + 5), 0, 0.0);
  }

  explicit = atomic_load_explicit((v3 + 32), memory_order_acquire);
  if (explicit)
  {
    v5 = atomic_load_explicit((explicit + 96), memory_order_acquire);
    if (v5)
    {
      CFSetAddValue(atomic_load_explicit(a2, memory_order_acquire), v5);
    }
  }
}

void TDescriptorSource::CopyAvailableFamilyNames(void *a1@<X8>)
{
  v4 = GSFontCopyFamilyNames();
  if (v4)
  {
    v5 = v4;
    MutableCopy = CFArrayCreateMutableCopy(*MEMORY[0x1E695E480], 0, v4);
    CFRelease(v5);
    explicit = atomic_load_explicit(&MutableCopy, memory_order_acquire);
    v8.length = CFArrayGetCount(atomic_load_explicit(&MutableCopy, memory_order_acquire));
    v8.location = 0;
    CFArraySortValues(explicit, v8, TDescriptorSource::CompareFamilyNames, 0);
    *a1 = atomic_exchange(&MutableCopy, 0);
  }

  else
  {
    *a1 = 0;
  }
}

CFComparisonResult TDescriptorSource::CompareFamilyNames(const __CFString *this, const __CFString *a2, const void *a3, void *a4)
{
  if (this == a2)
  {
    return 0;
  }

  if (this && a2)
  {
    return CFStringCompare(this, a2, 0x61uLL);
  }

  if (this < a2)
  {
    return -1;
  }

  return 1;
}

void TDescriptorSource::CopyEmojiFontDescriptor(CFArrayRef theArray@<X1>, atomic_ullong **a2@<X0>, int a3@<W2>, atomic_ullong *a4@<X8>)
{
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v9 = Count;
      for (i = 0; v9 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        if ((CTFontDescriptorGetSymbolicTraits(ValueAtIndex) & 0x2000) != 0)
        {
          v16 = CTFontDescriptorCopyAttribute(ValueAtIndex, @"NSCTFontCharacterSetAttribute");
          v12 = atomic_exchange(&v16, 0);

          if (CFCharacterSetIsCharacterMember(v12, 0xFE0Fu))
          {
            *a4 = ValueAtIndex;

            return;
          }
        }
      }
    }
  }

  v13 = _CTGetEmojiFontName(a3 == 1);
  if (a3 == 1)
  {
    if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
    {
      dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
    }

    if ((IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter & 2) == 0)
    {
      v14 = _CTGetEmojiFontName(1);
      if (v14 == v13 || v13 && v14 && CFEqual(v13, v14))
      {
        v13 = _CTGetEmojiFontName(0);
      }
    }

    explicit = atomic_load_explicit(&TDescriptorSource::CopyEmojiFontDescriptor(__CFArray const*,UIFontFlag)const::sEmojiUIFont, memory_order_acquire);
    if (!explicit)
    {
      v16 = 0xAAAAAAAAAAAAAAAALL;
      TDescriptorSource::CopySystemFontDescriptorByName(a2, v13, 1, 0, &v16);
      atomic_compare_exchange_strong(&TDescriptorSource::CopyEmojiFontDescriptor(__CFArray const*,UIFontFlag)const::sEmojiUIFont, &explicit, atomic_load_explicit(&v16, memory_order_acquire));
      if (!explicit)
      {
        explicit = atomic_exchange(&v16, 0);
      }
    }

    *a4 = explicit;
  }

  else
  {
    TDescriptorSource::CopySystemFontDescriptorByName(a2, v13, a3, 0, a4);
  }
}

void TDescriptorSource::CopySystemFontDescriptorByName(atomic_ullong **a1@<X0>, const __CFString *a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, atomic_ullong *a5@<X8>)
{
  if (a3 == 1)
  {
    v8 = 1031;
  }

  else
  {
    v8 = 7;
  }

  *a5 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::CopyFontDescriptorPerPostScriptName(a1, a2, v8, a4 | 7, 0, a5);
  if (!atomic_load_explicit(a5, memory_order_acquire))
  {
    TDescriptorSource::CopyFontDescriptorPerPostScriptName(a1, a2, v8 & 0xFFFFFFFFFFFFFC03, 0, 0, &v9);
  }
}

void TDescriptorSource::CopyEmojiFontDescriptor(TDescriptorSource *this@<X0>, const __CFArray *a2@<X1>, const __CTFontDescriptor *a3@<X2>, atomic_ullong *a4@<X8>)
{
  v7 = *(a3 + 5);
  v8 = *(v7 + 16);
  v9 = (TDescriptor::GetSystemUIFontOptions(this) & v8) != 0;
  *a4 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::CopyEmojiFontDescriptor(a2, this, v9, a4);
  TDescriptor::CopyAttribute(v7, @"CTFontEmojiMLUpscalingTimeoutAttribute", &keys);
  v10 = atomic_exchange(&keys, 0);

  if (v10)
  {
    values = v10;
    keys = @"CTFontEmojiMLUpscalingTimeoutAttribute";
    v11 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    explicit = atomic_load_explicit(a4, memory_order_acquire);
    v13 = v11;
    values = explicit;
    TCFBase_NEW<CTFontDescriptor,CTFontDescriptor*,__CFDictionary const*&>(&values, &v13, &keys);
  }
}

void TDescriptorSource::CopySystemWideFallbackDescriptorForCharacters(atomic_ullong **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, atomic_ullong *a7@<X8>)
{
  v7 = a7;
  v84[16] = *MEMORY[0x1E69E9840];
  if (!a3 || (v8 = a6) == 0 || (v9 = a4, a4 < 1))
  {
LABEL_123:
    *v7 = 0;
    return;
  }

  v10 = a3;
  v11 = 0;
  v75 = *MEMORY[0x1E695E4C0];
  while (1)
  {
    v12 = v11 + 1;
    v13 = *(v10 + 2 * v11);
    v14 = (v13 & 0xFC00) != 0xD800 || v12 == v9;
    if (v14 || (v15 = *(v10 + 2 * v12), (v15 & 0xFC00) != 0xDC00))
    {
      if (v13 < 0xE000)
      {
        goto LABEL_20;
      }

      if (v13 >> 11 >= 0x1F)
      {
        goto LABEL_17;
      }
    }

    else
    {
      v12 = v11 + 2;
      v16 = v15 + (v13 << 10);
      v13 = v16 - 56613888;
      if (v16 - 56613888 < 0xF0000 || v16 - 57727998 > 0xFFFFFC01)
      {
        break;
      }
    }

    if (v13 != 1051575 && v13 - 57345 > 0x536)
    {
      goto LABEL_116;
    }

LABEL_17:
    if (v13 < 0xFE0E)
    {
      goto LABEL_20;
    }

    if (v13 >> 4 >= 0xFE1)
    {
      break;
    }

LABEL_116:
    v11 = v12;
    if (v12 >= v9)
    {
      goto LABEL_123;
    }
  }

  if (v13 - 127995 < 5)
  {
    goto LABEL_116;
  }

LABEL_20:
  v74 = v10 + 2 * v11;
  if (v13 - 57345 < 0x537)
  {
    goto LABEL_21;
  }

  if (qword_1ED567B10 != -1)
  {
    dispatch_once_f(&qword_1ED567B10, 0, GetSystemFontsComboCharacterSet(void)::$_0::__invoke);
  }

  if (qword_1ED567B08 && !CFCharacterSetIsLongCharacterMember(qword_1ED567B08, v13))
  {
LABEL_21:
    if (qword_1ED567AC0 != -1)
    {
      dispatch_once_f(&qword_1ED567AC0, 0, TDescriptorSource::GetAppleColorEmojiCharacterSet(void)const::$_0::__invoke);
    }

    if (qword_1ED567AB8 && CFCharacterSetIsLongCharacterMember(qword_1ED567AB8, v13))
    {
      TDescriptorSource::CopyEmojiFontDescriptor(0, a1, a5, v7);
      return;
    }

    goto LABEL_116;
  }

  v78 = 0;
  v17 = &TDescriptorSource::CopySystemWideFallbackDescriptorForCharacters(TBaseFont const&,unsigned short const*,long,UIFontFlag,unsigned long,CTEmojiPolicy,TCFRef<__CFArray const*> *)const::kNotoRanges;
  v18 = 114;
  do
  {
    v19 = v18 >> 1;
    v20 = &v17[2 * (v18 >> 1)];
    v21 = *(v20 + 3);
    v22 = v20 + 2;
    v18 += ~(v18 >> 1);
    if (v21 < v13)
    {
      v17 = v22;
    }

    else
    {
      v18 = v19;
    }
  }

  while (v18);
  if (v17 != sPingFangFacesMap && *(v17 + 2) <= v13 && *(v17 + 3) >= v13)
  {
    v23 = *v17;
    v67 = v75;
    TDescriptorSource::CopyFontDescriptorPerPostScriptName(a1, *v17, 0x10012uLL, 9, 0, v84);

    if (!atomic_load_explicit(&v78, memory_order_acquire))
    {
      goto LABEL_44;
    }

    v24 = atomic_load_explicit(&v78, memory_order_acquire);
    v25 = v24;
    v26 = v24[5];
    if ((*(v26 + 4) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(v24[5], 0, 0.0);
    }

    explicit = atomic_load_explicit(v26 + 4, memory_order_acquire);

    v10 = a3;
    if (!explicit)
    {
LABEL_44:
      v67 = v23;
      CFLog();
      goto LABEL_45;
    }

    if (!(*(*explicit + 816))(explicit, a3, v9, 0))
    {
LABEL_45:
    }
  }

  if (atomic_load_explicit(&v78, memory_order_acquire))
  {
    goto LABEL_110;
  }

  if (ShouldUseLastResort(v13))
  {
    goto LABEL_124;
  }

  if (qword_1ED567A98 != -1)
  {
    dispatch_once_f(&qword_1ED567A98, 0, TDescriptorSource::CopySystemWideFallbackDescriptorconst::$_0::__invoke);
  }

  v28 = qword_1ED567A90;
  if (qword_1ED567A90)
  {
    WORD1(v79) = -21846;
    v29 = (v13 - 0x10000) >> 20;
    if (v29)
    {
      LOWORD(v30) = v13;
    }

    else
    {
      v30 = ((v13 - 0x10000) >> 10) | 0xFFFFD800;
      WORD1(v79) = v13 & 0x3FF | 0xDC00;
    }

    LOWORD(v79) = v30;
    v80 = 0u;
    v81 = 0u;
    v82 = 0u;
    v83 = 0u;
    v31 = [qword_1ED567A90 countByEnumeratingWithState:&v80 objects:v84 count:{16, v67}];
    if (v31)
    {
      v32 = v31;
      v33 = *v81;
      if (v29)
      {
        v34 = 1;
      }

      else
      {
        v34 = 2;
      }

      do
      {
        for (i = 0; i != v32; ++i)
        {
          if (*v81 != v33)
          {
            objc_enumerationMutation(v28);
          }

          v36 = *(*(&v80 + 1) + 8 * i);
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v37 = [-[__CFString objectAtIndexedSubscript:](v36 objectAtIndexedSubscript:{0), "unsignedIntValue"}];
            v38 = [-[__CFString objectAtIndexedSubscript:](v36 objectAtIndexedSubscript:{1), "unsignedIntValue"}];
            if (v37 > v13 || v38 < v13)
            {
              continue;
            }

            v36 = [(__CFString *)v36 objectAtIndexedSubscript:2];
          }

          else
          {
            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              continue;
            }
          }

          if (v36)
          {
            v77 = 0xAAAAAAAAAAAAAAAALL;
            v67 = v75;
            TDescriptorSource::CopyFontDescriptorPerPostScriptName(a1, v36, 0x10000uLL, 8, 0, &v77);
            if (atomic_load_explicit(&v77, memory_order_acquire))
            {
              v40 = atomic_load_explicit(&v77, memory_order_acquire);
              v41 = v40;
              v42 = v40[5];
              if ((*(v42 + 4) & 0x80000000) == 0)
              {
                TDescriptor::InitBaseFont(v40[5], 0, 0.0);
              }

              v43 = atomic_load_explicit(v42 + 4, memory_order_acquire);

              if ((*(*v43 + 816))(v43, &v79, v34, 0))
              {
                v8 = a6;
                v7 = a7;
                v9 = a4;
                v10 = a3;
                goto LABEL_90;
              }
            }
          }
        }

        v32 = [v28 countByEnumeratingWithState:&v80 objects:v84 count:16];
      }

      while (v32);
    }

    v8 = a6;
    v7 = a7;
  }

  os_unfair_lock_lock_with_options();
  v9 = a4;
  if (!qword_1ED567AA0 || (Count = CFArrayGetCount(qword_1ED567AA0), Count < 1))
  {
LABEL_87:
    v77 = 0;
    goto LABEL_88;
  }

  v45 = Count;
  v46 = 0;
  while (2)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(qword_1ED567AA0, v46);
    v48 = ValueAtIndex;
    v49 = ValueAtIndex[5];
    if ((*(v49 + 4) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(ValueAtIndex[5], 0, 0.0);
    }

    v50 = atomic_load_explicit(v49 + 4, memory_order_acquire);
    if (!v50)
    {
LABEL_86:
      if (v45 == ++v46)
      {
        goto LABEL_87;
      }

      continue;
    }

    break;
  }

  v79 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v50 + 184))(&v79);
  if (!CFCharacterSetIsLongCharacterMember(atomic_load_explicit(&v79, memory_order_acquire), v13))
  {

    goto LABEL_86;
  }

  v77 = v48;

LABEL_88:
  os_unfair_lock_unlock(&stru_1ED567A68);
  v10 = a3;
LABEL_90:

  if (atomic_load_explicit(&v78, memory_order_acquire))
  {
LABEL_110:
    if (atomic_load_explicit(&v78, memory_order_acquire))
    {
      v61 = atomic_load_explicit(&v78, memory_order_acquire);
      v62 = v61;
      v63 = v61[5];
      if ((*(v63 + 4) & 0x80000000) == 0)
      {
        TDescriptor::InitBaseFont(v61[5], 0, 0.0);
      }

      v64 = atomic_load_explicit(v63 + 4, memory_order_acquire);

      v10 = a3;
      if (v64)
      {
        if (((*(*v64 + 32))(v64, a2) & 1) == 0)
        {
          if (a5)
          {
            v66 = TCFBase<TDescriptor>::Allocate();
            if (v66)
            {
              *(v66 + 16) = 0;
              *(v66 + 24) = TDescriptor::Hash;
              *(v66 + 32) = 0;
              *(v66 + 40) = v66 + 48;
              *(v66 + 48) = &unk_1EF257E00;
              *(v66 + 56) = 0;
              *(v66 + 64) = -2147482624;
              *(v66 + 72) = 0;
              atomic_fetch_add_explicit(v64 + 2, 1u, memory_order_relaxed);
              *(v66 + 80) = v64;
              *(v66 + 88) = 0;
            }
          }

          else
          {
            v66 = atomic_exchange(&v78, 0);
          }

          goto LABEL_129;
        }
      }
    }

    goto LABEL_116;
  }

  Table = GetTable();
  if (!Table || !Table[16])
  {
    v84[0] = 0xAAAAAAAAAAAAAAAALL;
    if (getenv("CT_PRESET_FALLBACKS_AND_COMBO_CHARSETS_GENERATION"))
    {
      TDescriptorSource::CopyAllDescriptorsSorted(a1, 2, v84);
    }

    else
    {
      TDescriptorSource::CopyAllDescriptorsInternal(a1, 0, 2, v84);
    }

    v52 = atomic_load_explicit(v84, memory_order_acquire);
    if (v52)
    {
      v53 = CFArrayGetCount(v52);
      if (v53)
      {
        v54 = v53;
        v55 = 0;
        v56 = v12 - v11;
        while (1)
        {
          v57 = CFArrayGetValueAtIndex(v52, v55);
          v58 = v57;
          v59 = v57[5];
          if ((*(v59 + 4) & 0x80000000) == 0)
          {
            TDescriptor::InitBaseFont(v57[5], 0, 0.0);
          }

          v60 = atomic_load_explicit(v59 + 4, memory_order_acquire);
          if (v60 && ((*(*v60 + 696))(v60) & 1) == 0 && (v8 == 3 || !TBaseFont::IsUserInstalled(v60)))
          {
            if ((*(*v60 + 816))(v60, v74, v56, 0))
            {
              break;
            }
          }

          if (v54 == ++v55)
          {
            goto LABEL_107;
          }
        }

        TCFRef<__CTFont const*>::Retain(&v78, v58);
        os_unfair_lock_lock_with_options();
        v65 = qword_1ED567AA0;
        if (qword_1ED567AA0)
        {
          v85.length = CFArrayGetCount(qword_1ED567AA0);
          v85.location = 0;
          if (!CFArrayContainsValue(v65, v85, v58))
          {
            CFArrayAppendValue(qword_1ED567AA0, v58);
          }
        }

        os_unfair_lock_unlock(&stru_1ED567A68);
      }
    }

LABEL_107:
    if (!atomic_load_explicit(&v78, memory_order_acquire))
    {
      AddToUseLastResort(v13);
    }

    v9 = a4;
    v10 = a3;
    goto LABEL_110;
  }

LABEL_124:
  v66 = 0;
LABEL_129:
  *v7 = v66;
}

BOOL TDescriptorSource::AddMissedRequest(TDescriptorSource *this, uint64_t a2, unint64_t a3, CFComparisonResult (*a4)(const void *, const void *, void *))
{
  if (!this)
  {
    return 0;
  }

  os_unfair_lock_lock_with_options();
  MissedRequests = GetMissedRequests();
  v21 = this;
  v22 = a2;
  v23 = a3;
  v9 = v8 == 0;
  if (!v8)
  {
    v10 = CFHash(atomic_load_explicit(&v21, memory_order_acquire));
    v11 = STL::hash_val<unsigned long,unsigned long,CFComparisonResult (*)(void const*,void const*,void *)>(v10, v22, v23);
    v12 = v11;
    v13 = MissedRequests[1];
    if (v13)
    {
      v14 = vcnt_s8(v13);
      v14.i16[0] = vaddlv_u8(v14);
      v15 = v14.u32[0];
      if (v14.u32[0] > 1uLL)
      {
        v16 = v11;
        if (v11 >= *&v13)
        {
          v16 = v11 % *&v13;
        }
      }

      else
      {
        v16 = (*&v13 - 1) & v11;
      }

      v17 = *(*MissedRequests + 8 * v16);
      if (v17)
      {
        v18 = *v17;
        if (*v17)
        {
          do
          {
            v19 = v18[1];
            if (v19 == v12)
            {
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v15 > 1)
              {
                if (v19 >= *&v13)
                {
                  v19 %= *&v13;
                }
              }

              else
              {
                v19 &= *&v13 - 1;
              }

              if (v19 != v16)
              {
                break;
              }
            }

            v18 = *v18;
          }

          while (v18);
        }
      }
    }

    operator new();
  }

LABEL_22:

  os_unfair_lock_unlock(&sMissedRequestCacheLock);
  return v9;
}

uint64_t TDescriptorSource::GetMatchableAttributes(TDescriptorSource *this)
{
  if (qword_1ED567AD0 != -1)
  {
    dispatch_once_f(&qword_1ED567AD0, 0, TDescriptorSource::GetMatchableAttributes(void)::$_0::__invoke);
  }

  return qword_1ED567AC8;
}

uint64_t TDescriptorSource::GetMatchableNameAttributes(TDescriptorSource *this)
{
  if (qword_1ED567AE0 != -1)
  {
    dispatch_once_f(&qword_1ED567AE0, 0, TDescriptorSource::GetMatchableNameAttributes(void)::$_0::__invoke);
  }

  return qword_1ED567AD8;
}

uint64_t TDescriptorSource::IsSearchableAttribute(TDescriptorSource *this, const __CFString *a2)
{
  if (qword_1ED567AD0 != -1)
  {
    dispatch_once_f(&qword_1ED567AD0, 0, TDescriptorSource::GetMatchableAttributes(void)::$_0::__invoke);
  }

  result = qword_1ED567AC8;
  if (qword_1ED567AC8)
  {
    return CFSetContainsValue(qword_1ED567AC8, this) != 0;
  }

  return result;
}

uint64_t TDescriptorSource::ReportMissedFontName(TDescriptorSource *this, const __CFString *a2, unint64_t a3, CFComparisonResult (*a4)(const void *, const void *, void *))
{
  result = TDescriptorSource::AddMissedRequest(this, a2, a3, a4);
  if (result)
  {
    return CFLog();
  }

  return result;
}

void TDescriptorSource::CopyDescriptorsForRequestFromArray(TDescriptorSource *this, CFArrayRef theArray, const __CFDictionary *a3, CFComparisonResult (__cdecl *a4)(const void *, const void *, void *), unint64_t a5, int a6)
{
  v9 = theArray;
  Count = CFArrayGetCount(theArray);
  if (!Count)
  {
    *this = 0;
    return;
  }

  v12 = Count;
  if (a3)
  {
    v13 = CFDictionaryGetCount(a3) == 0;
  }

  else
  {
    v13 = 1;
  }

  v108[0] = 0;
  if (v12 >= 2 && a4 && ((a6 | v13) & 1) != 0)
  {
    v107[0] = 0xAAAAAAAAAAAAAAAALL;
    TCFMutableArray::TCFMutableArray(v107, v9);
    explicit = atomic_load_explicit(v107, memory_order_acquire);
    v109.length = CFArrayGetCount(atomic_load_explicit(v107, memory_order_acquire));
    v109.location = 0;
    CFArraySortValues(explicit, v109, a4, 0);
    v9 = atomic_load_explicit(v107, memory_order_acquire);
  }

  if (v13)
  {
    *this = v9;
    goto LABEL_167;
  }

  v107[0] = 0;
  v107[1] = 0;
  TypeID = CFStringGetTypeID();
  v93 = this;
  v87 = a4;
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"NSCTFontPostScriptNameAttribute");
    if (Value)
    {
      v17 = Value;
      if (CFGetTypeID(Value) == TypeID)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 0;
    }

    v20 = CFDictionaryGetValue(a3, @"NSFontNameAttribute");
    if (v20)
    {
      v21 = v20;
      if (CFGetTypeID(v20) == TypeID)
      {
        v22 = v21;
      }

      else
      {
        v22 = 0;
      }

      v101 = v22;
    }

    else
    {
      v101 = 0;
    }

    v23 = CFDictionaryGetValue(a3, @"NSFontVisibleNameAttribute");
    if (v23)
    {
      v24 = v23;
      if (CFGetTypeID(v23) == TypeID)
      {
        v25 = v24;
      }

      else
      {
        v25 = 0;
      }

      v100 = v25;
    }

    else
    {
      v100 = 0;
    }

    v26 = CFDictionaryGetValue(a3, @"NSFontFamilyAttribute");
    if (v26)
    {
      v27 = v26;
      if (CFGetTypeID(v26) == TypeID)
      {
        v28 = v27;
      }

      else
      {
        v28 = 0;
      }

      v99 = v28;
    }

    else
    {
      v99 = 0;
    }

    v29 = CFDictionaryGetValue(a3, @"NSFontFaceAttribute");
    if (v29)
    {
      v30 = v29;
      if (CFGetTypeID(v29) == TypeID)
      {
        v31 = v30;
      }

      else
      {
        v31 = 0;
      }

      v98 = v31;
    }

    else
    {
      v98 = 0;
    }

    v32 = CFDictionaryGetValue(a3, @"NSCTFontUserInstalledAttribute");
    if (v32)
    {
      v33 = v32;
      v34 = CFGetTypeID(v32);
      if (v34 == CFBooleanGetTypeID())
      {
        v35 = v33;
      }

      else
      {
        v35 = 0;
      }

      BOOLean = v35;
    }

    else
    {
      BOOLean = 0;
    }

    v36 = CFDictionaryGetValue(a3, @"NSCTFontFileURLAttribute");
    if (v36)
    {
      v37 = v36;
      v38 = CFGetTypeID(v36);
      if (v38 == CFURLGetTypeID())
      {
        v39 = v37;
      }

      else
      {
        v39 = 0;
      }

      v94 = v39;
    }

    else
    {
      v94 = 0;
    }

    v40 = CFDictionaryGetValue(a3, @"NSCTFontFormatAttribute");
    if (v40)
    {
      v41 = v40;
      v42 = CFGetTypeID(v40);
      if (v42 == CFNumberGetTypeID())
      {
        v43 = v41;
      }

      else
      {
        v43 = 0;
      }

      v91 = v43;
    }

    else
    {
      v91 = 0;
    }

    v44 = CFDictionaryGetValue(a3, @"NSCTFontRegistrationScopeAttribute");
    if (v44)
    {
      v45 = v44;
      v46 = CFGetTypeID(v44);
      if (v46 == CFNumberGetTypeID())
      {
        v47 = v45;
      }

      else
      {
        v47 = 0;
      }

      v90 = v47;
    }

    else
    {
      v90 = 0;
    }

    v48 = CFDictionaryGetValue(a3, @"NSCTFontDomainAttribute");
    if (v48)
    {
      v49 = v48;
      v50 = CFGetTypeID(v48);
      if (v50 == CFNumberGetTypeID())
      {
        v51 = v49;
      }

      else
      {
        v51 = 0;
      }

      number = v51;
    }

    else
    {
      number = 0;
    }

    v106 = 0xAAAAAAAAAAAAAAAALL;
    v19 = CFDictionaryGetValue(a3, @"NSCTFontDesignLanguagesAttribute");
    if (v19)
    {
      v52 = v19;
      v53 = CFGetTypeID(v19);
      if (v53 == CFArrayGetTypeID())
      {
        v19 = v52;
      }

      else
      {
        v19 = 0;
      }
    }
  }

  else
  {
    v18 = 0;
    v101 = 0;
    v99 = 0;
    v100 = 0;
    v98 = 0;
    BOOLean = 0;
    number = 0;
    v94 = 0;
    v90 = 0;
    v91 = 0;
    v19 = 0;
    v106 = 0xAAAAAAAAAAAAAAAALL;
  }

  values[0] = v19;
  v106 = atomic_exchange(values, 0);

  if (a3)
  {
    v54 = CFDictionaryGetValue(a3, @"NSCTFontDesignLanguagesAttribute");
    if (v54)
    {
      v55 = v54;
      if (CFGetTypeID(v54) == TypeID)
      {
        values[0] = v55;
        v105 = CFArrayCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9C0]);
      }
    }

    v105 = 0xAAAAAAAAAAAAAAAALL;
    v56 = CFDictionaryGetValue(a3, @"NSCTFontLanguagesAttribute");
    if (v56)
    {
      v57 = v56;
      v58 = CFGetTypeID(v56);
      if (v58 == CFArrayGetTypeID())
      {
        v56 = v57;
      }

      else
      {
        v56 = 0;
      }
    }
  }

  else
  {
    v56 = 0;
    v105 = 0xAAAAAAAAAAAAAAAALL;
  }

  values[0] = v56;
  v105 = atomic_exchange(values, 0);

  if (a3)
  {
    v59 = CFDictionaryGetValue(a3, @"NSCTFontLanguagesAttribute");
    if (v59)
    {
      v60 = v59;
      if (CFGetTypeID(v59) == TypeID)
      {
        values[0] = v60;
        valuePtr = CFArrayCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9C0]);
      }
    }

    v61 = CFDictionaryGetValue(a3, @"NSCTFontTraitsAttribute");
    if (v61)
    {
      v62 = v61;
      v63 = CFGetTypeID(v61);
      if (v63 == CFDictionaryGetTypeID())
      {
        v64 = v62;
      }

      else
      {
        v64 = 0;
      }

      v96 = v64;
    }

    else
    {
      v96 = 0;
    }

    v65 = CFDictionaryGetValue(a3, @"NSCTFontCharacterSetAttribute");
    if (v65)
    {
      v66 = v65;
      v67 = CFGetTypeID(v65);
      if (v67 == CFCharacterSetGetTypeID())
      {
        v68 = v66;
      }

      else
      {
        v68 = 0;
      }

      v97 = v68;
      goto LABEL_103;
    }
  }

  else
  {
    v96 = 0;
  }

  v97 = 0;
LABEL_103:
  v95 = a6;
  if ((a5 & 8) != 0)
  {
    v69 = a6;
  }

  else
  {
    v69 = 1;
  }

  v86 = v69;
  values[0] = 0;
  values[1] = 0;
  v92 = ShouldFilterInvisibles(a3, a5);
  if (!v9 || (v70 = CFArrayGetCount(v9)) == 0)
  {
LABEL_152:
    if (v95)
    {
      if ((a5 >> 2) & 1 | v92)
      {
        v79 = atomic_load_explicit(values, memory_order_acquire);
        if (v79)
        {
          if (CFArrayGetCount(v79) >= 1)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(values, memory_order_acquire), 0);
            goto LABEL_157;
          }
        }
      }
    }

    v81 = atomic_load_explicit(v107, memory_order_acquire);
    if (!v81 || (v82 = CFArrayGetCount(v81), v82 < 1))
    {
      *v93 = 0;
      goto LABEL_166;
    }

    if (v82 != 1)
    {
      if ((v86 & 1) == 0)
      {
        CreateDescriptorArrayFilteringDuplicates(&valuePtr, atomic_load_explicit(v107, memory_order_acquire), v87);
        *v93 = atomic_exchange(&valuePtr, 0);

        goto LABEL_166;
      }

      if (v87)
      {
        TCFLazyMutableArray::Sort(v107, v87, v83);
      }
    }

    *v93 = atomic_exchange(v107, 0);
    goto LABEL_166;
  }

  v71 = v70;
  v72 = 0;
  v73 = *MEMORY[0x1E695E738];
  while (1)
  {
    v74 = CFArrayGetValueAtIndex(v9, v72);
    if (v74 == v73)
    {
      goto LABEL_151;
    }

    v75 = v74;
    v76 = v74[5];
    if ((*(v76 + 4) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(v74[5], a5, 0.0);
    }

    v77 = atomic_load_explicit(v76 + 4, memory_order_acquire);
    if (!v77 || v18 && !ComparePostScriptName(v18, v77))
    {
      goto LABEL_151;
    }

    if (v101 && !CompareName(v101, v77, (a5 & 0x40) != 0, (a5 & 0x200) != 0))
    {
      goto LABEL_151;
    }

    if (v100 | v99 | v98 && !CompareOtherNamesInclusive(v100, v99, v98, v77, (a5 & 0x40) != 0))
    {
      goto LABEL_151;
    }

    if (atomic_load_explicit(&v106, memory_order_acquire) && !CompareDesignLanguages(atomic_load_explicit(&v106, memory_order_acquire), v77))
    {
      goto LABEL_151;
    }

    if (atomic_load_explicit(&v105, memory_order_acquire) && !CompareSupportedLanguages(atomic_load_explicit(&v105, memory_order_acquire), v77))
    {
      goto LABEL_151;
    }

    if (v97 && !CompareCharSet(v97, v77))
    {
      goto LABEL_151;
    }

    if (v96 && !CompareTraits(v96, v77))
    {
      goto LABEL_151;
    }

    if (v94 && !CompareFileURL(v94, v77))
    {
      goto LABEL_151;
    }

    if (v91 && !CompareFormat(v91, v77))
    {
      goto LABEL_151;
    }

    if (v90 && !CompareScope(v90, v77))
    {
      goto LABEL_151;
    }

    if (number)
    {
      LODWORD(valuePtr) = -1431655766;
      CFNumberGetValue(number, kCFNumberIntType, &valuePtr);
      v84 = valuePtr;
      if (((*(*v77 + 272))(v77) & v84) == 0)
      {
        goto LABEL_151;
      }
    }

    if (BOOLean)
    {
      IsUserInstalled = TBaseFont::IsUserInstalled(v77);
      if (CFBooleanGetValue(BOOLean) != IsUserInstalled)
      {
        goto LABEL_151;
      }
    }

    if ((a5 & 4) == 0 || ((*(*v77 + 712))(v77)) && (!v92 || !(*(*v77 + 704))(v77) || a3 && (CFDictionaryGetValue(a3, @"NSFontNameAttribute") || CFDictionaryGetValue(a3, @"NSFontFamilyAttribute"))) && ((a5 & 0x2000) == 0 || !(*(*v77 + 696))(v77)))
    {
      break;
    }

    if (v95)
    {
      TCFLazyMutableArray::LazyCreate(values);
      v78 = values;
LABEL_150:
      CFArrayAppendValue(atomic_load_explicit(v78, memory_order_acquire), v75);
    }

LABEL_151:
    if (v71 == ++v72)
    {
      goto LABEL_152;
    }
  }

  if ((v95 & 1) == 0)
  {
    TCFLazyMutableArray::LazyCreate(v107);
    v78 = v107;
    goto LABEL_150;
  }

  ValueAtIndex = v75;
LABEL_157:
  *v93 = ValueAtIndex;
LABEL_166:

LABEL_167:
}

void TDescriptorSource::CopyDescriptorsForRequestWithFamilyName(TDescriptorSource *this, const __CFString *a2, __CFString *a3, uint64_t a4)
{
  v16.info = 0;
  v16.data = 0;
  if ((a4 & 0x10400) != 0 || !TDescriptorSource::ShouldSubstituteInvisibleFontName(a3, a2))
  {
    v16.isa = 0xAAAAAAAAAAAAAAAALL;
    CopyPostScriptNamesForFamily(a3, (a4 & 0x200) != 0, &v16);
    explicit = atomic_load_explicit(&v16, memory_order_acquire);
    if (explicit)
    {
      Count = CFArrayGetCount(explicit);
      if (Count)
      {
        v10 = Count;
        v11 = 0;
        v12 = *MEMORY[0x1E695E4C0];
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(explicit, v11);
          v15 = 0xAAAAAAAAAAAAAAAALL;
          TDescriptorSource::CopyFontDescriptorPerPostScriptName(&v15, a2, ValueAtIndex, a4 | 0x10, 7, 0, 0, 0, -1, v12);
          if (atomic_load_explicit(&v15, memory_order_acquire))
          {
            v14 = atomic_load_explicit(&v15, memory_order_acquire);
            TCFLazyMutableArray::LazyCreate(&v16.info);
            CFArrayAppendValue(atomic_load_explicit(&v16.info, memory_order_acquire), v14);
          }

          ++v11;
        }

        while (v10 != v11);
      }
    }

    *this = atomic_exchange(&v16.info, 0);
  }

  else
  {
    *this = 0;
  }
}

BOOL ShouldFilterInvisibles(CFDictionaryRef theDict, char a2)
{
  if ((a2 & 2) != 0)
  {
    return 0;
  }

  if (!theDict)
  {
    return 1;
  }

  if (CFDictionaryGetValue(theDict, @"NSFontNameAttribute"))
  {
    return 0;
  }

  return CFDictionaryGetValue(theDict, @"NSFontFamilyAttribute") == 0;
}

void CreateDescriptorArrayFilteringDuplicates(CFArrayRef *a1, CFComparisonResult (*a2)(const void *, const void *, void *), CFComparisonResult (__cdecl *a3)(const void *, const void *, void *))
{
  Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  if (a2)
  {
    [atomic_load_explicit(&Mutable memory:"addObjectsFromArray:" order:a2acquire)];
  }

  v9 = 0xAAAAAAAAAAAAAAAALL;
  v9 = atomic_exchange(&Mutable, 0);
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7 = v6;
  v8 = v6;
  TFontDescriptorDuplicateFilter::TFontDescriptorDuplicateFilter(&v7, atomic_load_explicit(&v9, memory_order_acquire), &TFontDescriptorDuplicateFilter::kCTFontDescriptorDuplicateFilterSetCallBacks);
  TFontDescriptorDuplicateFilter::PerformFilter(&v7);
  if (CFSetGetCount(atomic_load_explicit(&v8, memory_order_acquire)) >= 1)
  {
  }

  CreateSortedArrayWithSet(atomic_load_explicit(&v9, memory_order_acquire), a3, 0, a1);
  TFontDescriptorDuplicateFilter::~TFontDescriptorDuplicateFilter(&v7);
}

void TCFLazyMutableArray::Sort(TCFLazyMutableArray *this, CFComparisonResult (__cdecl *a2)(const void *, const void *, void *), void *a3)
{
  TCFLazyMutableArray::LazyCreate(this);
  explicit = atomic_load_explicit(this, memory_order_acquire);
  v6 = atomic_load_explicit(this, memory_order_acquire);
  if (v6)
  {
    v7.length = CFArrayGetCount(v6);
  }

  else
  {
    v7.length = 0;
  }

  v7.location = 0;

  CFArraySortValues(explicit, v7, a2, 0);
}

void TDescriptorSource::CopyDescriptorForRequest(atomic_ullong **this@<X0>, void *cf@<X1>, const __CFSet *a3@<X2>, const __CFDictionary *a4@<X3>, unint64_t a5@<X4>, void *a6@<X8>)
{
  v8 = a3;
  v28 = 0;
  if (!a3)
  {
    if (qword_1ED567AE0 != -1)
    {
      dispatch_once_f(&qword_1ED567AE0, 0, TDescriptorSource::GetMatchableNameAttributes(void)::$_0::__invoke);
    }

    v8 = qword_1ED567AD8;
  }

  v27 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::CopyDescriptorsForRequest(cf, this, v8, 0, a5, 0, &v27);
  v12 = atomic_load_explicit(&v27, memory_order_acquire);
  if (!v12)
  {
    goto LABEL_32;
  }

  v13 = v12;
  Count = CFArrayGetCount(v12);

  if (Count < 1)
  {
LABEL_33:
    *a6 = atomic_exchange(&v28, 0);
    goto LABEL_34;
  }

  context = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableDictionary::TCFMutableDictionary(&context, cf);
  if (Count != 1)
  {
    CFSetApplyFunction(v8, TDescriptorSource::CopyDescriptorForRequest(__CFDictionary const*,__CFSet const*,__CFDictionary const*,unsigned long)const::$_0::__invoke, &context);
    CFDictionaryRemoveValue(atomic_load_explicit(&context, memory_order_acquire), @"NSFontSizeAttribute");
  }

  v15 = CFDictionaryGetCount(atomic_load_explicit(&context, memory_order_acquire));
  if (Count == 1 || !v15)
  {
    if (Count != 1 && !v15)
    {
      TDescriptorSource::CreateVariantWithTraitsMatchingDescriptors(atomic_load_explicit(&v27, memory_order_acquire), a4, &v29);

      v20 = v29;
LABEL_30:

      goto LABEL_31;
    }

    explicit = atomic_load_explicit(&v27, memory_order_acquire);
LABEL_26:
    v22 = explicit;
    v23 = v22;
    if (v22)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v22, 0);
    }

    else
    {
      ValueAtIndex = 0;
    }

    TCFRef<__CTFont const*>::Retain(&v28, ValueAtIndex);
    v20 = v23;
    goto LABEL_30;
  }

  if (!a4 || CFDictionaryGetCount(atomic_load_explicit(&context, memory_order_acquire)) < 1)
  {
LABEL_24:
    TDescriptorSource::CopyDescriptorsForRequestFromArray(&v29, atomic_load_explicit(&v27, memory_order_acquire), atomic_load_explicit(&context, memory_order_acquire), 0, a5 | 3, 1);
    v25 = atomic_exchange(&v29, 0);

    if (atomic_load_explicit(&v28, memory_order_acquire))
    {
LABEL_31:
      v12 = context;
LABEL_32:

      goto LABEL_33;
    }

    explicit = atomic_load_explicit(&v27, memory_order_acquire);
    goto LABEL_26;
  }

  v29 = 0xAAAAAAAAAAAAAAAALL;
  v16 = atomic_load_explicit(&context, memory_order_acquire);
  if (qword_1ED567AD0 != -1)
  {
    dispatch_once_f(&qword_1ED567AD0, 0, TDescriptorSource::GetMatchableAttributes(void)::$_0::__invoke);
  }

  TDescriptorSource::CopyMandatoryMatchableRequest(v16, qword_1ED567AC8, &v29);
  v17 = atomic_load_explicit(&v29, memory_order_acquire);
  if (!v17)
  {

    goto LABEL_23;
  }

  v18 = v17;
  v19 = CFDictionaryGetCount(v17);

  if (v19 != 1)
  {
LABEL_23:

    goto LABEL_24;
  }

  TDescriptorSource::CreateVariantWithTraitsMatchingDescriptors(atomic_load_explicit(&v27, memory_order_acquire), a4, a6);

LABEL_34:
}

void TDescriptorSource::CopyFontDescriptorFromVariationPostScriptName(TDescriptorSource *this@<X0>, CFStringRef theString@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v113 = *MEMORY[0x1E69E9840];
  v103 = 0;
  if (!theString)
  {
    goto LABEL_77;
  }

  Length = CFStringGetLength(theString);
  if (!Length)
  {
    goto LABEL_77;
  }

  v11 = Length;
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  v114.location = 0;
  v114.length = v11;
  if (CFStringFindCharacterFromSet(theString, Predefined, v114, 0, 0))
  {
    goto LABEL_77;
  }

  location = CFStringFind(theString, @"_", 0).location;
  if (location == -1)
  {
    goto LABEL_77;
  }

  v14 = location;
  v15 = *MEMORY[0x1E695E480];
  v115.location = 0;
  v115.length = location;
  v16 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], theString, v115);
  v102 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::CopyFontDescriptorPerPostScriptName(&v102, this, v16, a3, a4 | 1, 0, 0, 0, -1, *MEMORY[0x1E695E4C0]);
  if (!atomic_load_explicit(&v102, memory_order_acquire))
  {
LABEL_76:

LABEL_77:
    *a5 = 0;
    goto LABEL_78;
  }

  v17 = atomic_load_explicit(&v102, memory_order_acquire);
  v18 = v17;
  v19 = v17[5];
  if ((*(v19 + 4) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(v17[5], 0, 0.0);
  }

  explicit = atomic_load_explicit(v19 + 4, memory_order_acquire);

  v101 = 0;
  if (!explicit || ((*(*explicit + 120))(&v106, explicit), atomic_exchange(&v101, atomic_exchange(&v106, 0)), v21 = atomic_load_explicit(&v101, memory_order_acquire), v106, !v21))
  {
LABEL_75:

    goto LABEL_76;
  }

  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v109[1] = v22;
  v109[0] = v22;
  v107 = 0;
  v108 = 0;
  v106 = 0;
  v110 = v109;
  CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  if (!CStringPtr)
  {
    v24 = CFStringGetLength(theString);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v24, 0x600u);
    v26 = MaximumSizeForEncoding + 1;
    v27 = v106;
    if (MaximumSizeForEncoding + 1 <= (v107 - v106))
    {
      if (MaximumSizeForEncoding + 1 < (v107 - v106))
      {
        v107 = v106 + v26;
      }
    }

    else
    {
      std::vector<char,TInlineBufferAllocator<char,30ul>>::__append(&v106, MaximumSizeForEncoding + 1 - (v107 - v106));
      v27 = v106;
    }

    if (!CFStringGetCString(theString, v27, v26, 0x600u))
    {
      goto LABEL_74;
    }

    CStringPtr = v106;
    if (!v106)
    {
      goto LABEL_74;
    }
  }

  v99 = v16;
  v28 = &CStringPtr[v14];
  v29 = strlen(CStringPtr) - v14;
  v30 = strchr(CStringPtr, 95);
  if (v30)
  {
    v31 = v30;
    v32 = strstr(CStringPtr, "MM");
    if (v32)
    {
      if (v32 <= v31 && v31[1] - 48 <= 9)
      {
        v104 = 0xAAAAAAAAAAAAAAAALL;
        (*(*explicit + 488))(&v104, explicit, 1296914002);
        v33 = atomic_load_explicit(&v104, memory_order_acquire);
        v34 = atomic_load_explicit(&v101, memory_order_acquire);
        if (v29 - 2 > 0x1D)
        {
          goto LABEL_108;
        }

        v97 = explicit;
        v35 = v28[1];
        *&v36 = 0xAAAAAAAAAAAAAAAALL;
        *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v111 = v36;
        v112 = v36;
        if (v35 != 46 && (v35 - 48) > 9)
        {
          goto LABEL_108;
        }

        theData = v33;
        theArray = v34;
        v64 = 0;
        v65 = (v28 + 2);
        v66 = v29 - 2;
        while (1)
        {
          v67 = v64;
          v68 = 0;
          v69 = v66;
          do
          {
            v111[v68] = v35;
            v70 = *v65++;
            v35 = v70;
            v71 = (v70 - 48) <= 9 || v35 == 46;
            v72 = v68++;
          }

          while (v71 && v69 != v72);
          v111[v68] = 0;
          LODWORD(v105) = -1;
          sscanf(v111, "%f", &v105);
          v74 = v67 >> 2;
          if (((v67 >> 2) + 1) >> 62)
          {
            goto LABEL_136;
          }

          if (v67 >> 2 != -1)
          {
            std::allocator<float>::allocate_at_least[abi:fn200100]((v67 >> 2) + 1);
          }

          *(4 * v74) = v105;
          v98 = 4 * v74 + 4;
          memcpy(0, 0, v67);
          v16 = v99;
          v64 = v98;
          v66 = v69 - v68;
          if (v35 != 46 && (v35 - 58) <= 0xFFFFFFF5 && v66 + 1 > 0)
          {
            do
            {
              v75 = *v65++;
              v35 = v75;
              v77 = v66-- != 0;
              v78 = v35 == 46 || (v35 - 58) > 0xFFFFFFF5;
            }

            while (!v78 && v77);
          }

          if (v98 > 0x10)
          {
            goto LABEL_108;
          }

          if (v66 < 0)
          {
            break;
          }

          *&v79 = 0xAAAAAAAAAAAAAAAALL;
          *(&v79 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *v111 = v79;
          v112 = v79;
          if (v35 != 46 && (v35 - 48) > 9)
          {
            goto LABEL_108;
          }
        }

        if (v98)
        {
          if (CFArrayGetCount(theArray) >= v98 >> 2)
          {
            if (theData && (BytePtr = CFDataGetBytePtr(theData)) != 0 && ((v81 = BytePtr, (v82 = CFDataGetBytePtr(theData)) == 0) ? (v83 = 0) : (v83 = &v82[CFDataGetLength(theData)]), (v84 = v98 >> 2, v85 = &v81[2 * v98 + 8], v85 >= (v81 + 8)) && v85 <= v83 || ((v81 + 16) <= v83 ? (v86 = (v83 - (v81 + 8)) >> 3) : (v86 = 0), v86 == v84)))
            {
              *v111 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
              if (theArray)
              {
                Count = CFArrayGetCount(theArray);
                if (Count)
                {
                  v88 = Count;
                  v89 = 0;
                  v90 = (v81 + 14);
                  while (1)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(theArray, v89);
                    if (v84 == v89)
                    {
                      break;
                    }

                    v92 = *v90;
                    v90 += 4;
                    v93 = *(4 * v89) / (bswap32(v92) >> 16);
                    Value = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisIdentifier");
                    TCFNumber::TCFNumber<float>(&v105, v93);
                    CFDictionarySetValue(atomic_load_explicit(v111, memory_order_acquire), Value, atomic_load_explicit(&v105, memory_order_acquire));

                    if (v88 == ++v89)
                    {
                      goto LABEL_131;
                    }
                  }

                  __break(1u);
LABEL_136:
                  std::__throw_bad_array_new_length[abi:fn200100]();
                }
              }

LABEL_131:
              v105 = atomic_exchange(v111, 0);
            }

            else
            {
              v105 = 0;
            }

            v16 = v99;
          }

          else
          {
            v105 = 0;
          }

          explicit = v97;
        }

        else
        {
LABEL_108:
          v105 = 0;
        }

        v63 = v105;
        goto LABEL_72;
      }
    }
  }

  v37 = atomic_load_explicit(&v101, memory_order_acquire);
  v38 = MEMORY[0x1E695E9D8];
  v39 = MEMORY[0x1E695E9E8];
  *v111 = CFDictionaryCreateMutable(v15, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v40 = CFArrayGetCount(v37);
  Mutable = CFDictionaryCreateMutable(v15, v40, v38, v39);
  if (v37)
  {
    v42 = CFArrayGetCount(v37);
    if (v42)
    {
      v43 = v42;
      for (i = 0; i != v43; ++i)
      {
        v45 = CFArrayGetValueAtIndex(v37, i);
        v46 = CFDictionaryGetValue(v45, @"NSCTVariationAxisIdentifier");
        if (v46)
        {
          CFDictionaryAddValue(Mutable, v46, v45);
        }
      }
    }
  }

  if (!v29)
  {
    goto LABEL_69;
  }

LABEL_32:
  if (*v28 == 95)
  {
    v47 = 0;
    ++v28;
    --v29;
    v48 = 4;
    do
    {
      if (!v29)
      {
        goto LABEL_70;
      }

      v49 = *v28;
      if (v49 == 37)
      {
        if (v29 < 3)
        {
          goto LABEL_70;
        }

        v50 = v28[1];
        if ((v50 - 48) >= 0xA)
        {
          if ((v50 - 97) >= 6)
          {
            if ((v50 - 65) > 5)
            {
              goto LABEL_70;
            }

            v51 = -55;
          }

          else
          {
            v51 = -87;
          }
        }

        else
        {
          v51 = -48;
        }

        v53 = v28[2];
        if ((v53 - 48) >= 0xA)
        {
          if ((v53 - 97) >= 6)
          {
            if ((v53 - 65) > 5)
            {
              goto LABEL_70;
            }

            v54 = -55;
          }

          else
          {
            v54 = -87;
          }
        }

        else
        {
          v54 = -48;
        }

        v47 = (16 * (v51 + v50)) | (v47 << 8) | (v54 + v53);
        v28 += 3;
        v52 = -3;
      }

      else
      {
        ++v28;
        v47 = v49 | (v47 << 8);
        v52 = -1;
      }

      v29 += v52;
      --v48;
    }

    while (v48);
    if (!v29 || *v28 == 95)
    {
      v105 = 0xAAAAAAAAAAAAAAAALL;
      TCFNumber::TCFNumber<unsigned int>(&v105, v47);
      v55 = CFDictionaryGetValue(Mutable, atomic_load_explicit(&v105, memory_order_acquire));
      if (v55)
      {
        v56 = atomic_load_explicit(&v105, memory_order_acquire);
        v57 = CFDictionaryGetValue(v55, @"NSCTVariationAxisDefaultValue");
        CFDictionarySetValue(atomic_load_explicit(v111, memory_order_acquire), v56, v57);

        goto LABEL_68;
      }

LABEL_113:
      v104 = 0;

      goto LABEL_71;
    }

    v58 = 0;
    v59 = &v28[v29];
    while (1)
    {
      v60 = *v28;
      if ((v60 - 48) >= 0xA)
      {
        if ((v60 - 97) >= 6)
        {
          if ((v60 - 65) > 5)
          {
            v59 = v28;
LABEL_66:
            v105 = 0xAAAAAAAAAAAAAAAALL;
            TCFNumber::TCFNumber<unsigned int>(&v105, v47);
            if (!CFDictionaryContainsKey(Mutable, atomic_load_explicit(&v105, memory_order_acquire)))
            {
              goto LABEL_113;
            }

            v62 = atomic_load_explicit(&v105, memory_order_acquire);
            TCFNumber::TCFNumber<float>(&v104, vcvts_n_f32_s32(v58, 0x10uLL));
            CFDictionarySetValue(atomic_load_explicit(v111, memory_order_acquire), v62, atomic_load_explicit(&v104, memory_order_acquire));

            v28 = v59;
LABEL_68:
            if (!v29)
            {
LABEL_69:
              v104 = atomic_exchange(v111, 0);
              goto LABEL_71;
            }

            goto LABEL_32;
          }

          v61 = -55;
        }

        else
        {
          v61 = -87;
        }
      }

      else
      {
        v61 = -48;
      }

      v58 = v60 + 16 * v58 + v61;
      ++v28;
      if (!--v29)
      {
        goto LABEL_66;
      }
    }
  }

LABEL_70:
  v104 = 0;
LABEL_71:
  v16 = v99;

  v63 = atomic_exchange(&v103, atomic_exchange(&v104, 0));
LABEL_72:

  if (!atomic_load_explicit(&v103, memory_order_acquire))
  {
LABEL_74:
    *v111 = &v106;
    std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](v111);
    goto LABEL_75;
  }

  *v111 = 0xAAAAAAAAAAAAAAAALL;
  (*(*explicit + 504))(v111, explicit);
  v105 = 0xAAAAAAAAAAAAAAAALL;
  atomic_load_explicit(v111, memory_order_acquire);
  atomic_load_explicit(&v103, memory_order_acquire);
  VariationsForGraphicsFontByAddingVariation(&v105);
  v104 = atomic_load_explicit(v111, memory_order_acquire);
  v100 = atomic_load_explicit(&v105, memory_order_acquire);
  TCFBase_NEW<CTFontDescriptor,CGFont *,__CFDictionary const*>(a5, &v104, &v100);

  *v111 = &v106;
  std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](v111);

LABEL_78:
}

CTFontDescriptor *TCFBase_NEW<CTFontDescriptor,CGFont *,__CFDictionary const*>(void *a1, CGFont **a2, const __CFDictionary **a3)
{
  result = TCFBase<TDescriptor>::Allocate();
  if (result)
  {
    CTFontDescriptor::CTFontDescriptor(result, *a2, *a3);
  }

  *a1 = 0;
  return result;
}

void TDescriptorSource::CopyPossibleSystemUIFontDescriptor(atomic_ullong *a1@<X0>, int a2@<W1>, unint64_t *a3@<X8>)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (a2 == 1 && explicit)
  {
    v5 = atomic_load_explicit(a1, memory_order_acquire);
    v6 = TCFBase<TDescriptor>::Allocate();
    v7 = v6;
    if (v6)
    {
      v6[2] = 0;
      v6[3] = TDescriptor::Hash;
      v6[4] = 0;
      v6[5] = v6 + 6;
      TDescriptor::TDescriptor((v6 + 6), *(v5 + 40), 1024);
    }
  }

  else
  {
    v7 = atomic_exchange(a1, 0);
  }

  *a3 = v7;
}

void CTFontLogSystemFontNameRequest()
{
  CFLog();
  if (CTFontLogSystemFontNameRequest::once != -1)
  {

    dispatch_once_f(&CTFontLogSystemFontNameRequest::once, "CTFontLogSystemFontNameRequest", CTFontLogSystemFontNameRequest::$_0::__invoke);
  }
}

uint64_t ___ZN17TDescriptorSource20SubstituteForHVFFontEP6TCFRefIPK10__CFStringES3__block_invoke()
{
  result = GSFontCopyFontFilePath();
  qword_1ED567AE8 = result;
  return result;
}

unint64_t CreateOrderedLanguages(const __CFArray *a1)
{
  v19[4] = *MEMORY[0x1E69E9840];
  if (qword_1ED567B30 != -1)
  {
    dispatch_once_f(&qword_1ED567B30, 0, GetOrderedLanguages(void)::$_0::__invoke);
  }

  v18 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableArray::TCFMutableArray(&v18, qword_1ED567B28);
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v2 = CFLocaleCopyPreferredLanguages();
  v16 = 0xAAAAAAAAAAAAAAAALL;
  v19[0] = &unk_1EF2580F0;
  v19[3] = v19;
  CreateOrderedArray(a1, v2, v19, &v16);
  std::__function::__value_func<objc_object * ()(objc_object *)>::~__value_func[abi:fn200100](v19);
  explicit = atomic_load_explicit(&v16, memory_order_acquire);
  if (explicit)
  {
    Count = CFArrayGetCount(explicit);
    if (Count)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(explicit, i);
        v8 = atomic_load_explicit(&v18, memory_order_acquire);
        v20.length = CFArrayGetCount(atomic_load_explicit(&v18, memory_order_acquire));
        v20.location = 0;
        if (CFArrayContainsValue(v8, v20, ValueAtIndex))
        {
          v9 = atomic_load_explicit(&v18, memory_order_acquire);
          v21.length = CFArrayGetCount(atomic_load_explicit(&v18, memory_order_acquire));
          v21.location = 0;
          FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v9, v21, ValueAtIndex);
          CFArrayRemoveValueAtIndex(atomic_load_explicit(&v18, memory_order_acquire), FirstIndexOfValue);
          CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), ValueAtIndex);
        }
      }
    }
  }

  v11 = atomic_load_explicit(&v18, memory_order_acquire);
  v12 = atomic_load_explicit(&Mutable, memory_order_acquire);
  if (v11)
  {
    v13.length = CFArrayGetCount(v11);
  }

  else
  {
    v13.length = 0;
  }

  v13.location = 0;
  CFArrayAppendArray(v12, v11, v13);
  v14 = atomic_exchange(&Mutable, 0);

  return v14;
}

void TDescriptorSource::AppendFontDescriptorFromName(atomic_ullong *this, TCFMutableArray *a2, const __CFString *a3)
{
  v3 = a3;
  v9 = a2;
  keys = @"NSFontNameAttribute";
  v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &v9, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v6 = TCFBase<TDescriptor>::Allocate();
  v7 = v6;
  if (v6)
  {
    v6[2] = 0;
    v6[3] = TDescriptor::Hash;
    v6[4] = 0;
    v6[5] = v6 + 6;
    TDescriptor::TDescriptor((v6 + 6), v5, v3);
    v8 = v7;
    CFArrayAppendValue(atomic_load_explicit(this, memory_order_acquire), v8);
  }
}

void TDescriptorSource::CreatePresetFallbacks(const __CFString *a1@<X1>, const __CFCharacterSet **a2@<X2>, const __CFArray *a3@<X3>, char a4@<W4>, id *a5@<X8>)
{
  if (getenv("CT_PRESET_FALLBACKS_AND_COMBO_CHARSETS_GENERATION"))
  {
    goto LABEL_2;
  }

  PlistFromGSFontCache = CTFontGetPlistFromGSFontCache(@"CTPresetFallbacks.plist", 0);
  if (!PlistFromGSFontCache)
  {
    goto LABEL_2;
  }

  v12 = PlistFromGSFontCache;
  OrderedLanguages = CreateOrderedLanguages(a3);
  if (!OrderedLanguages)
  {
LABEL_43:

LABEL_2:
    *a5 = 0;
    return;
  }

  Value = CFDictionaryGetValue(v12, a1);
  if (Value && (v15 = Value, v16 = CFGetTypeID(Value), v16 == CFArrayGetTypeID()))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    Count = CFArrayGetCount(v15);
    if (Count)
    {
      v18 = Count;
      for (i = 0; i != v18; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v15, i);
        v21 = CFGetTypeID(ValueAtIndex);
        if (v21 == CFDictionaryGetTypeID())
        {
          v22 = CFArrayGetCount(OrderedLanguages);
          if (v22)
          {
            v23 = v22;
            for (j = 0; j != v23; ++j)
            {
              v25 = CFArrayGetValueAtIndex(OrderedLanguages, j);
              if (ValueAtIndex)
              {
                v26 = CFDictionaryGetValue(ValueAtIndex, v25);
                if (v26)
                {
                  TDescriptorSource::AppendFontDescriptorFromName(&Mutable, v26, 0x400);
                }
              }
            }
          }
        }

        else
        {
          if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
          {
            dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
          }

          if ((IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter & 2) == 0)
          {
            v27 = _CTGetEmojiFontName(1);
            if (v27 == ValueAtIndex || ValueAtIndex && v27 && CFEqual(ValueAtIndex, v27))
            {
              ValueAtIndex = _CTGetEmojiFontName(0);
            }
          }

          if ((a4 & 4) != 0 && (ValueAtIndex == @".AppleThaiFont" || ValueAtIndex && CFStringHasPrefix(ValueAtIndex, @".AppleThaiFont")))
          {
            v28 = [&unk_1EF275CA0 objectForKeyedSubscript:ValueAtIndex];
            if (v28)
            {
              ValueAtIndex = v28;
            }
          }

          TDescriptorSource::AppendFontDescriptorFromName(&Mutable, ValueAtIndex, 0x400);
        }
      }
    }

    v29 = atomic_exchange(&Mutable, 0);
  }

  else
  {
    v29 = 0;
  }

  *a5 = v29;
  if (!atomic_load_explicit(a5, memory_order_acquire))
  {

    goto LABEL_43;
  }

  if (a2)
  {
    *a2 = TDescriptorSource::CopyPredefinedCharacterSet(@"CTFontDefaultFallbacksComboCharacterSet", 0);
  }
}

void TFontDescriptorDuplicateFilter::TFontDescriptorDuplicateFilter(TFontDescriptorDuplicateFilter *this, id a2, const CFSetCallBacks *a3)
{
  *this = &unk_1EF257F10;
  *(this + 1) = a2;
  if (!a3)
  {
    a3 = MEMORY[0x1E695E9F8];
  }

  Count = CFSetGetCount(a2);
  *(this + 2) = CFSetCreateMutable(*MEMORY[0x1E695E480], Count, a3);
  *this = &unk_1EF257F60;
  CreateSortedArrayWithSet(atomic_load_explicit(this + 1, memory_order_acquire), CompareDescriptorsByTraitsAndPrecedence, 0, &v8);
  v7 = atomic_exchange(&v8, 0);

  *(this + 3) = v7;
}

void TFontDescriptorDuplicateFilter::~TFontDescriptorDuplicateFilter(id *this)
{
  *this = &unk_1EF257F60;
  v2 = this + 2;

  *this = &unk_1EF257F10;
}

{
  TFontDescriptorDuplicateFilter::~TFontDescriptorDuplicateFilter(this);

  JUMPOUT(0x1865F22D0);
}

CFHashCode TFontDescriptorDuplicateFilter::CTFontDescriptorDuplicateFilterHash(TFontDescriptorDuplicateFilter *this, const void *a2)
{
  v2 = *(this + 5);
  if ((*(v2 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(this + 5), 0, 0.0);
  }

  explicit = atomic_load_explicit((v2 + 32), memory_order_acquire);
  if (explicit)
  {
    v4 = atomic_load_explicit((explicit + 96), memory_order_acquire);
    if (v4)
    {
      v5 = v4;
      v6 = CFHash(v4);

      return v6;
    }
  }

  return 0;
}

BOOL TFontDescriptorDuplicateFilter::CTFontDescriptorDuplicateFilterEqual(TFontDescriptorDuplicateFilter *this, void *a2, const void *a3)
{
  v4 = *(this + 5);
  if ((*(v4 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(this + 5), 0, 0.0);
  }

  explicit = atomic_load_explicit((v4 + 32), memory_order_acquire);
  v6 = a2[5];
  if ((*(v6 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(v6, 0, 0.0);
  }

  v7 = atomic_load_explicit((v6 + 32), memory_order_acquire);
  if (explicit)
  {
    v8 = v7 == 0;
  }

  else
  {
    v8 = 1;
  }

  if (v8)
  {
    return 0;
  }

  v9 = atomic_load_explicit(explicit + 12, memory_order_acquire);
  v10 = atomic_load_explicit(v7 + 12, memory_order_acquire);
  v11 = v10;
  if (v9 != v10)
  {
    if (v9)
    {
      v12 = v10 == 0;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
    }

    else
    {
      v13 = CFEqual(v9, v10);

      if (v13)
      {
        goto LABEL_18;
      }
    }

    return 0;
  }

LABEL_18:
  v19 = 0xAAAAAAAAAAAAAAAALL;
  (*(*explicit + 112))(&v19, explicit);
  v18 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v7 + 112))(&v18, v7);
  v14 = atomic_load_explicit(&v19, memory_order_acquire);
  v15 = atomic_load_explicit(&v18, memory_order_acquire);
  if (v14 == v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = 0;
    if (v14 && v15)
    {
      v16 = CFEqual(v14, v15) != 0;
    }
  }

  return v16;
}

CFComparisonResult CompareLocalizedDescriptorsByTraitsAndPrecedence(void *a1, void *a2, void *a3, int a4, char a5, int a6)
{
  v6 = kCFCompareEqualTo;
  if (!a2 || !a1 || a1 == a2)
  {
    return v6;
  }

  v10 = a1[5];
  v11 = a2[5];
  if ((*(v10 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(a1[5], 0, 0.0);
  }

  explicit = atomic_load_explicit((v10 + 32), memory_order_acquire);
  if ((*(v11 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(v11, 0, 0.0);
  }

  v13 = atomic_load_explicit((v11 + 32), memory_order_acquire);
  if (explicit)
  {
    v14 = v13 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    v56 = 0xAAAAAAAAAAAAAAAALL;
    if (a4)
    {
      TDescriptor::CopyAttribute(v10, &v55);
    }

    else
    {
      v55 = 0;
    }

    v56 = atomic_exchange(&v55, 0);

    if (!atomic_load_explicit(&v56, memory_order_acquire))
    {
      TDescriptor::CopyAttribute(v10, @"NSFontVisibleNameAttribute", &v55);
    }

    v55 = 0xAAAAAAAAAAAAAAAALL;
    if (a4)
    {
      TDescriptor::CopyAttribute(v11, &v52);
    }

    else
    {
      v52 = 0;
    }

    v55 = atomic_exchange(&v52, 0);

    if (!atomic_load_explicit(&v55, memory_order_acquire))
    {
      TDescriptor::CopyAttribute(v11, @"NSFontVisibleNameAttribute", &v52);
    }

    v16 = atomic_load_explicit(&v56, memory_order_acquire);
    v17 = atomic_load_explicit(&v55, memory_order_acquire);
    if (v16 == v17)
    {
      v6 = kCFCompareEqualTo;
    }

    else if (v16 && v17)
    {
      v6 = CFStringCompare(v16, v17, 0x61uLL);
    }

    else if (v16 < v17)
    {
      v6 = kCFCompareLessThan;
    }

    else
    {
      v6 = kCFCompareGreaterThan;
    }

    goto LABEL_34;
  }

  if (a5)
  {
    if ((*(*explicit + 856))(explicit))
    {
      v15 = -1;
    }

    else
    {
      v15 = (*(*explicit + 704))(explicit);
    }

    if ((*(*v13 + 856))(v13))
    {
      v18 = 1;
    }

    else
    {
      v18 = ((*(*v13 + 704))(v13) << 31) >> 31;
    }

    v19 = v18 + v15;
    if (v18 + v15 >= 1)
    {
      v20 = 1;
    }

    else
    {
      v20 = v18 + v15;
    }

    if (v20 < 0)
    {
      v20 = -1;
    }

    if (v19)
    {
      v6 = v20;
      if (v20)
      {
        return v6;
      }
    }

    else
    {
      v56 = 0xAAAAAAAAAAAAAAAALL;
      v21 = *explicit;
      if (a4)
      {
        (*(v21 + 88))(&v56, explicit, @"CTFontFamilyName", 0, 0);
        v55 = 0xAAAAAAAAAAAAAAAALL;
        (*(*v13 + 88))(&v55, v13, @"CTFontFamilyName", 0, 0);
      }

      else
      {
        (*(v21 + 72))(&v56, explicit, @"CTFontFamilyName");
        v55 = 0xAAAAAAAAAAAAAAAALL;
        (*(*v13 + 72))(&v55, v13, @"CTFontFamilyName");
      }

      v22 = atomic_load_explicit(&v56, memory_order_acquire);
      v23 = atomic_load_explicit(&v55, memory_order_acquire);
      if (v22 == v23)
      {
        v6 = kCFCompareEqualTo;
      }

      else if (v22 && v23)
      {
        v6 = CFStringCompare(v22, v23, 0x61uLL);
      }

      else if (v22 < v23)
      {
        v6 = kCFCompareLessThan;
      }

      else
      {
        v6 = kCFCompareGreaterThan;
      }

      if (v6)
      {
        return v6;
      }
    }
  }

  v24 = (*(*explicit + 16))(explicit);
  v25 = (*(*v13 + 16))(v13);
  v26 = *explicit;
  if (v24 != v25)
  {
    v43 = (*(v26 + 16))(explicit);
    v29 = v43 > (*(*v13 + 16))(v13);
LABEL_77:
    if (v29)
    {
      return 1;
    }

    else
    {
      return -1;
    }
  }

  v27 = (*(v26 + 160))(explicit);
  v28 = (*(*v13 + 160))(v13);
  v29 = (v27 & 0xFFFFF9C) > (v28 & 0xFFFFF9C);
  if ((v27 & 0xFFFFF9C) != (v28 & 0xFFFFF9C))
  {
    goto LABEL_77;
  }

  v30 = v28;
  TraitsValues = atomic_load_explicit(explicit + 30, memory_order_acquire);
  if (!TraitsValues)
  {
    TraitsValues = TBaseFont::CreateTraitsValues(explicit);
  }

  v32 = atomic_load_explicit(v13 + 30, memory_order_acquire);
  if (!v32)
  {
    v32 = TBaseFont::CreateTraitsValues(v13);
  }

  v33 = *(TraitsValues + 16);
  v34 = *(v32 + 16);
  if (vabdd_f64(v33, v34) >= 0.001)
  {
    goto LABEL_80;
  }

  if (vabdd_f64(*(TraitsValues + 8), *(v32 + 8)) >= 0.001)
  {
    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
    if (Predefined && (v48 = Predefined, NameHasCharacterFromSet(explicit, @"CTFontSubFamilyName", a4, Predefined)) && NameHasCharacterFromSet(v13, @"CTFontSubFamilyName", a4, v48))
    {
      v44 = *(TraitsValues + 8);
      v45 = *(v32 + 8);
    }

    else
    {
      v44 = *(TraitsValues + 8);
      v45 = *(v32 + 8);
      if (a6)
      {
        if (fabs(v44) >= 0.001)
        {
          v44 = v44 + 10.0;
        }

        if (fabs(v45) >= 0.001)
        {
          v45 = v45 + 10.0;
        }
      }
    }

    goto LABEL_81;
  }

  v33 = *(TraitsValues + 24);
  v34 = *(v32 + 24);
  if (vabdd_f64(v33, v34) >= 0.001)
  {
LABEL_80:
    v44 = fabs(v33);
    v45 = fabs(v34);
LABEL_81:
    v41 = v44 <= v45;
LABEL_82:
    if (v41)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  v35 = v27 >> 28;
  if (v27 >> 28 > 0xC)
  {
    v35 = 0;
  }

  v36 = ClassifyReduceTraitsClass::order[v35];
  v37 = v30 >> 28;
  if (v30 >> 28 > 0xC)
  {
    v37 = 0;
  }

  v38 = ClassifyReduceTraitsClass::order[v37];
  if (v36 == v38)
  {
    OpticalSize = GetOpticalSize(explicit);
    v40 = GetOpticalSize(v13);
    v41 = OpticalSize <= v40;
    if (OpticalSize == v40)
    {
      v56 = 0xAAAAAAAAAAAAAAAALL;
      v42 = *explicit;
      if (a4)
      {
        (*(v42 + 88))(&v56, explicit, @"CTFontFullName", 0, 0);
        v55 = 0xAAAAAAAAAAAAAAAALL;
        (*(*v13 + 88))(&v55, v13, @"CTFontFullName", 0, 0);
      }

      else
      {
        (*(v42 + 72))(&v56, explicit, @"CTFontFullName");
        v55 = 0xAAAAAAAAAAAAAAAALL;
        (*(*explicit + 72))(&v55, explicit, @"CTFontFullName");
      }

      v54 = atomic_load_explicit(&v56, memory_order_acquire);
      v53 = atomic_load_explicit(&v55, memory_order_acquire);
      v6 = StringCompare<TCFRef<__CFString const*>,TCFRef<__CFString const*>>(&v54, &v53);

      if (v6 == kCFCompareEqualTo)
      {
        v49 = (*(*explicit + 256))(explicit);
        v50 = (*(*v13 + 256))(v13);
        v51 = -1;
        if (v49 <= v50)
        {
          v51 = 1;
        }

        if (v49 == v50)
        {
          v6 = kCFCompareEqualTo;
        }

        else
        {
          v6 = v51;
        }
      }

LABEL_34:

      return v6;
    }

    goto LABEL_82;
  }

  if (v36 > v38)
  {
    return 1;
  }

  else
  {
    return -1;
  }
}

double GetOpticalSize(const TBaseFont *a1)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a1 + 128))(&v9);
  if (!atomic_load_explicit(&v9, memory_order_acquire))
  {
    goto LABEL_10;
  }

  v8 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a1 + 112))(&v8, a1);
  v2 = atomic_load_explicit(&v8, memory_order_acquire);
  if (!v2)
  {

    goto LABEL_6;
  }

  v3 = v2;
  Value = CFDictionaryGetValue(v2, &unk_1EF2781F0);

  if (!Value)
  {
LABEL_6:
    v5 = CFDictionaryGetValue(atomic_load_explicit(&v9, memory_order_acquire), @"NSCTVariationAxisDefaultValue");
    if (v5)
    {
      valuePtr = -1;
      goto LABEL_8;
    }

LABEL_10:
    return 0.0;
  }

  valuePtr = -1;
  v5 = Value;
LABEL_8:
  CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr);
  v6 = *&valuePtr;

  return v6;
}

CFComparisonResult StringCompare<TCFRef<__CFString const*>,TCFRef<__CFString const*>>(atomic_ullong *a1, atomic_ullong *a2)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (explicit == atomic_load_explicit(a2, memory_order_acquire))
  {
    return 0;
  }

  if (atomic_load_explicit(a1, memory_order_acquire) && atomic_load_explicit(a2, memory_order_acquire))
  {
    return CFStringCompare(atomic_load_explicit(a1, memory_order_acquire), atomic_load_explicit(a2, memory_order_acquire), 0x20uLL);
  }

  v4 = atomic_load_explicit(a1, memory_order_acquire);
  if (v4 < atomic_load_explicit(a2, memory_order_acquire))
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

BOOL NameHasCharacterFromSet(const TBaseFont *a1, const __CFString *a2, int a3, const __CFCharacterSet *a4)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v5 = *a1;
  if (a3)
  {
    (*(v5 + 88))(&v9);
  }

  else
  {
    (*(v5 + 72))(&v9);
  }

  if (atomic_load_explicit(&v9, memory_order_acquire))
  {
    explicit = atomic_load_explicit(&v9, memory_order_acquire);
    v10.length = CFStringGetLength(atomic_load_explicit(&v9, memory_order_acquire));
    v10.location = 0;
    v7 = CFStringFindCharacterFromSet(explicit, a4, v10, 0, 0) != 0;
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

CFComparisonResult CTFontManagerCompareFontFamilyNames(const void *family1, const void *family2, void *context)
{
  if (family1 == family2)
  {
    return 0;
  }

  if (family1 && family2)
  {
    return CFStringCompare(family1, family2, 0x61uLL);
  }

  if (family1 < family2)
  {
    return -1;
  }

  return 1;
}

uint64_t TDescriptorSource::EnsureFontFallbacksCache(TDescriptorSource *this)
{
  v1 = TDescriptorSource::sFontFallbacksCache;
  if (!TDescriptorSource::sFontFallbacksCache || (v2 = *(TDescriptorSource::sFontFallbacksCache + 4), result = GetLocaleChangedCount(), v2 != result) || *v1 != TGenerationSeed::sGeneration)
  {
    operator new();
  }

  return result;
}

void TDescriptorSource::CopyDefaultSubstitutionListForLanguages(__CFString *this@<X0>, const __CFString *a2@<X1>, TFontFallbacks *a3@<X8>)
{
  v7 = os_unfair_lock_lock_with_options();
  TDescriptorSource::EnsureFontFallbacksCache(v7);
  TFontFallbacks::CopyFontFallbacksForLanguages(TDescriptorSource::sFontFallbacksCache, this, a2, a3);

  os_unfair_lock_unlock(&TDescriptorSource::sFontFallbacksLock);
}

void TFontFallbacks::CopyFontFallbacksForLanguages(__CFString *this@<X0>, __CFString *a2@<X1>, const __CFArray *a3@<X2>, TFontFallbacks *a4@<X8>)
{
  if (a3)
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    if (qword_1ED567B30 != -1)
    {
      dispatch_once_f(&qword_1ED567B30, 0, GetOrderedLanguages(void)::$_0::__invoke);
    }

    v7 = qword_1ED567B28;
    if (qword_1ED567B28)
    {
      Count = CFArrayGetCount(qword_1ED567B28);
    }

    else
    {
      Count = 0;
    }

    v9 = CFArrayGetCount(a3);
    if (v9)
    {
      v10 = v9;
      for (i = 0; i != v10; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a3, i);
        v16 = 0xAAAAAAAAAAAAAAAALL;
        LanguageIdentifierByNormalizing(ValueAtIndex, 0, &v16);
        v18.location = 0;
        v18.length = Count;
        if (CFArrayContainsValue(v7, v18, atomic_load_explicit(&v16, memory_order_acquire)))
        {
          v13 = atomic_load_explicit(&v16, memory_order_acquire);
          CFArrayAppendValue(Mutable, v13);
        }
      }
    }

    if (CFArrayGetCount(Mutable))
    {
      CFArrayInsertValueAtIndex(Mutable, 0, a2);
      v16 = 0xAAAAAAAAAAAAAAAALL;
      ArrayComponentsJoinedByString(Mutable, @",", &v16);
      CFArrayRemoveValueAtIndex(Mutable, 0);
      TFontFallbacks::CopyFontFallbacks(a4, this, atomic_load_explicit(&v16, memory_order_acquire), a2, Mutable);
    }

    else
    {
      TFontFallbacks::CopyFontFallbacks(a4, this, a2, 0, 0);
    }
  }

  else
  {

    TFontFallbacks::CopyFontFallbacks(a4, this, a2, 0, 0);
  }
}

uint64_t TFontFallbacks::GetCharRangeMapForKey(TFontFallbacks *this, unint64_t a2)
{
  v3[0] = a2;
  v3[2] = v3;
  result = std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(this + 3, v3)[3];
  if (!result)
  {
    operator new();
  }

  return result;
}

unint64_t _CTCopyDefaultFontFallbacksDictionary()
{
  CopyDefaultFontFallbacks(&v2);
  v0 = atomic_exchange(&v2, 0);

  return v0;
}

id CopyDefaultFontFallbacks(void *a1)
{
  if (qword_1ED567B50 != -1)
  {
    dispatch_once_f(&qword_1ED567B50, 0, CopyDefaultFontFallbacks(void)::$_0::__invoke);
  }

  result = qword_1ED567B48;
  *a1 = result;
  return result;
}

void TDescriptorSource::CopyPreferredFontDescriptor(unint64_t *a1, atomic_ullong **a2, const __CFString *a3, const void *a4, const __CFString *a5, int a6)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::CopySystemFontDescriptorByName(a2, a3, a6, 8, &v14);
  explicit = atomic_load_explicit(&v14, memory_order_acquire);
  if (explicit)
  {
    SymbolicTraits = CTFontDescriptorGetSymbolicTraits(atomic_load_explicit(&v14, memory_order_acquire));
    if (HasRequiredSymbolicTraits(a4, SymbolicTraits) || (TDescriptorSource::CopySystemFontDescriptorByName(a2, a5, a6, 8, &v13), atomic_exchange(&v14, atomic_exchange(&v13, 0)), v13, (explicit = atomic_load_explicit(&v14, memory_order_acquire)) != 0))
    {
      explicit = atomic_exchange(&v14, 0);
    }
  }

  *a1 = explicit;
}

BOOL HasRequiredSymbolicTraits(CFTypeRef cf1, int a2)
{
  v4 = 3;
  for (i = &dword_1E6E38E38; !CFEqual(cf1, *(i - 1)); i += 4)
  {
    if (!--v4)
    {
      return 1;
    }
  }

  return (*i & a2) != 0;
}

void TDescriptorSource::CreateDescriptorForCSSFamily(atomic_ullong **this@<X0>, __CFString *cf1@<X1>, __CFString *a3@<X2>, atomic_ullong *a4@<X8>)
{
  if (!cf1)
  {
    *a4 = 0;
    return;
  }

  v6 = cf1;
  if (CFEqual(cf1, @"emoji"))
  {
    v8 = _CTGetEmojiFontName(0);
LABEL_8:

    TDescriptorSource::CopySystemFontDescriptorByName(this, v8, 0, 0, a4);
    return;
  }

  if (CFEqual(v6, @"fangsong"))
  {
    v8 = @"STFangsong";
    goto LABEL_8;
  }

  v58 = 0xAAAAAAAAAAAAAAAALL;
  LanguageIdentifierByNormalizing(a3, 0, &v58);
  if (v6 == @"system-ui" || CFEqual(v6, @"system-ui"))
  {
    v9 = 0;
    v6 = @"default";
    v10 = 2;
  }

  else if (v6 == @"ui-monospace")
  {
    v9 = 0;
    v10 = 254;
    v6 = @"ui-monospace";
  }

  else if (CFEqual(v6, @"ui-monospace"))
  {
    v9 = 0;
    v10 = 254;
  }

  else if (v6 == @"ui-serif" || CFEqual(v6, @"ui-serif"))
  {
    v9 = 0;
    v10 = 241;
  }

  else
  {
    v10 = -1;
    v9 = 1;
  }

  v57 = 0xAAAAAAAAAAAAAAAALL;
  CopyDefaultFontFallbacks(&v57);
  v11 = atomic_load_explicit(&v57, memory_order_acquire);
  if (!v11)
  {

    goto LABEL_47;
  }

  v12 = v11;
  Value = CFDictionaryGetValue(v11, v6);

  if (!Value || !CFArrayGetCount(Value))
  {
    goto LABEL_47;
  }

  uiType = v10;
  v52 = v9;
  if (!TDescriptorSource::CanLanguageAffectCascadeList(a3, v14) || (v51 = CFArrayGetValueAtIndex(Value, 0), (Count = CFArrayGetCount(Value)) == 0))
  {
LABEL_43:
    if (v52)
    {
      if (CFEqual(v6, @"sans-serif"))
      {
        UIFontForLanguage = CTFontCreateWithName(@"Helvetica", 12.0, 0);
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
        UIFontForLanguage = CTFontCreateWithNameAndOptions(ValueAtIndex, 0.0, 0, 0x20000uLL);
      }
    }

    else
    {
      UIFontForLanguage = CTFontCreateUIFontForLanguage(uiType, 0.0, atomic_load_explicit(&v58, memory_order_acquire));
    }

    v36 = UIFontForLanguage;
    if (UIFontForLanguage)
    {
      v55 = 0xAAAAAAAAAAAAAAAALL;
      v56 = 0;
      if (atomic_load_explicit(&v58, memory_order_acquire))
      {
        TSampleManager::TSampleManager(&v54);
        explicit = atomic_load_explicit(&v58, memory_order_acquire);
        TSampleManagerImp::CopySampleLettersForLanguage(explicit, v54, 2u, &v55);
      }

      else
      {
        v55 = 0;
      }

      if (atomic_load_explicit(&v55, memory_order_acquire))
      {
        v54 = 0xAAAAAAAAAAAAAAAALL;
        TSampleManager::CreateStringWithLetters(atomic_load_explicit(&v55, memory_order_acquire), &v54);
        v38 = atomic_load_explicit(&v54, memory_order_acquire);
        v60.length = CFStringGetLength(atomic_load_explicit(&v54, memory_order_acquire));
        v60.location = 0;
        v39 = CTFontCreateForStringWithLanguage(v36, v38, v60, atomic_load_explicit(&v58, memory_order_acquire));
        v40 = v39;
        if (v39)
        {
          v53 = CTFontCopyPostScriptName(v39);

          v41 = *(v40 + 5);
          v42 = *(v41 + 12);
          v43 = (*(**(v41 + 408) + 160))(*(v41 + 408));
          if (!HasRequiredSymbolicTraits(v6, v43 | ((v42 & 1) << 11)))
          {
          }
        }
      }

      if (!atomic_load_explicit(&v56, memory_order_acquire))
      {
        v55 = CTFontCopyPostScriptName(v36);
      }

      CFRelease(v36);
      TDescriptorSource::CopySystemFontDescriptorByName(this, atomic_load_explicit(&v56, memory_order_acquire), v52 ^ 1, 8, a4);

      goto LABEL_48;
    }

    goto LABEL_47;
  }

  v15 = 0;
  v49 = Value;
  while (1)
  {
    v16 = CFArrayGetValueAtIndex(Value, v15);
    v17 = CFGetTypeID(v16);
    if (v17 != CFDictionaryGetTypeID())
    {
      break;
    }

    v18 = CFDictionaryGetValue(v16, atomic_load_explicit(&v58, memory_order_acquire));
    if (v18)
    {
      v19 = v18;
      v20 = CFGetTypeID(v18);
      if (v20 == CFStringGetTypeID())
      {
        *a4 = 0xAAAAAAAAAAAAAAAALL;
        TDescriptorSource::CopyPreferredFontDescriptor(a4, this, v19, v6, v51, v52 ^ 1);
        if (atomic_load_explicit(a4, memory_order_acquire))
        {
          goto LABEL_48;
        }
      }

      else if (v20 == CFArrayGetTypeID())
      {
        v30 = CFArrayGetCount(v19);
        if (v30)
        {
          v31 = v30;
          v32 = 0;
          do
          {
            v33 = CFArrayGetValueAtIndex(v19, v32);
            *a4 = 0xAAAAAAAAAAAAAAAALL;
            TDescriptorSource::CopyPreferredFontDescriptor(a4, this, v33, v6, v51, v52 ^ 1);
            if (atomic_load_explicit(a4, memory_order_acquire))
            {
              goto LABEL_48;
            }
          }

          while (v31 != ++v32);
        }
      }
    }

LABEL_42:
    ++v15;
    Value = v49;
    if (v15 == Count)
    {
      goto LABEL_43;
    }
  }

  TypeID = CFArrayGetTypeID();
  if (!v16)
  {
    goto LABEL_42;
  }

  if (v17 != TypeID)
  {
    goto LABEL_42;
  }

  v22 = CFArrayGetCount(v16);
  if (!v22)
  {
    goto LABEL_42;
  }

  v23 = v22;
  v24 = 0;
  while (1)
  {
    v25 = CFArrayGetValueAtIndex(v16, v24);
    v26 = CFArrayGetValueAtIndex(v25, 0);
    v27 = atomic_load_explicit(&v58, memory_order_acquire);
    v28 = v27;
    if (v27 == v26)
    {
      break;
    }

    if (v26 && v27)
    {
      v29 = CFEqual(v26, v27);

      if (v29)
      {
        goto LABEL_71;
      }
    }

    else
    {
    }

    if (v23 == ++v24)
    {
      goto LABEL_42;
    }
  }

LABEL_71:
  v44 = CFArrayGetCount(v25);
  if (v44 < 2)
  {
LABEL_47:
    *a4 = 0;
    goto LABEL_48;
  }

  v45 = v44;
  v46 = 1;
  while (1)
  {
    *a4 = 0xAAAAAAAAAAAAAAAALL;
    v47 = CFArrayGetValueAtIndex(v25, v46);
    TDescriptorSource::CopyPreferredFontDescriptor(a4, this, v47, v6, v51, v52 ^ 1);
    if (atomic_load_explicit(a4, memory_order_acquire))
    {
      break;
    }

    if (v45 == ++v46)
    {
      goto LABEL_47;
    }
  }

LABEL_48:
}

const __CFString *TDescriptorSource::CanLanguageAffectCascadeList(const __CFString *this, const __CFString *a2)
{
  if (this)
  {
    v2 = this;
    this = CFStringGetLength(this);
    if (this)
    {
      if (qword_1ED567B30 != -1)
      {
        dispatch_once_f(&qword_1ED567B30, 0, GetOrderedLanguages(void)::$_0::__invoke);
      }

      v3 = qword_1ED567B28;
      if (qword_1ED567B28)
      {
        v4.length = CFArrayGetCount(qword_1ED567B28);
        v4.location = 0;
        return (CFArrayContainsValue(v3, v4, v2) != 0);
      }

      else
      {
        return 0;
      }
    }
  }

  return this;
}

void TDescriptorSource::ProcessFallbackComponent(atomic_ullong *a1, void *cf, CFIndex a3, int a4)
{
  v8 = CFGetTypeID(cf);
  if (a4 == 1)
  {
    v9 = 1024;
  }

  else
  {
    v9 = 65537;
  }

  if (v8 == CFStringGetTypeID())
  {

    TDescriptorSource::AppendFontDescriptorFromName(a1, cf, v9);
  }

  else if (v8 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(cf);
    if (Count > a3)
    {
      v11 = Count;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(cf, a3);
        if (ValueAtIndex)
        {
          TDescriptorSource::AppendFontDescriptorFromName(a1, ValueAtIndex, v9);
        }

        ++a3;
      }

      while (v11 != a3);
    }
  }
}

void _CTClearFontFallbacksCache()
{
  TPerThreadLRUCache<TRequestCacheNode,(ThreadSpecificKey)3,16ul>::TPerThreadLRUCache(&v0);
  TLRUCacheImp<TRequestCacheNode,16ul>::RemoveAll(v0);
  atomic_fetch_add_explicit(&gLocaleChangedCount, 1u, memory_order_relaxed);
  atomic_fetch_add_explicit(&TGenerationSeed::sGeneration, 1u, memory_order_relaxed);
  atomic_fetch_add_explicit(&TGenerationSeed::sGeneration, 1u, memory_order_relaxed);
}

void TDescriptorSource::ProcessFallbackList(const __CFArray *a1, atomic_ullong *a2, int a3, const __CFArray *a4)
{
  v7 = a1;
  Count = CFArrayGetCount(a1);
  if (Count)
  {
    v8 = 0;
    v30 = v7;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v7, v8);
      v10 = CFGetTypeID(ValueAtIndex);
      if (v10 != CFStringGetTypeID())
      {
        if (v10 == CFDictionaryGetTypeID())
        {
          if (a4)
          {
            v13 = CFArrayGetCount(a4);
            if (v13)
            {
              v14 = v13;
              for (i = 0; i != v14; ++i)
              {
                v16 = CFArrayGetValueAtIndex(a4, i);
                if (ValueAtIndex)
                {
                  Value = CFDictionaryGetValue(ValueAtIndex, v16);
                  if (Value)
                  {
                    TDescriptorSource::ProcessFallbackComponent(a2, Value, 0, a3);
                  }
                }
              }
            }
          }
        }

        else if (v10 == CFArrayGetTypeID())
        {
          v32 = 0xAAAAAAAAAAAAAAAALL;
          TCFMutableArray::TCFMutableArray(&v32, ValueAtIndex);
          if (a4)
          {
            v18 = CFArrayGetCount(a4);
            if (v18)
            {
              v19 = v18;
              for (j = 0; j != v19; ++j)
              {
                v21 = CFArrayGetValueAtIndex(a4, j);
                if (CFArrayGetCount(atomic_load_explicit(&v32, memory_order_acquire)) >= 1)
                {
                  v22 = 0;
                  while (1)
                  {
                    v23 = CFArrayGetValueAtIndex(atomic_load_explicit(&v32, memory_order_acquire), v22);
                    v24 = CFArrayGetValueAtIndex(v23, 0);
                    if (v24 == v21 || v21 && v24 && CFEqual(v24, v21))
                    {
                      break;
                    }

                    if (++v22 >= CFArrayGetCount(atomic_load_explicit(&v32, memory_order_acquire)))
                    {
                      goto LABEL_40;
                    }
                  }

                  TDescriptorSource::ProcessFallbackComponent(a2, v23, 1, a3);
                  CFArrayRemoveValueAtIndex(atomic_load_explicit(&v32, memory_order_acquire), v22);
                }

LABEL_40:
                ;
              }
            }
          }

          explicit = atomic_load_explicit(&v32, memory_order_acquire);
          if (explicit)
          {
            v26 = CFArrayGetCount(explicit);
            if (v26)
            {
              v27 = v26;
              for (k = 0; k != v27; ++k)
              {
                v29 = CFArrayGetValueAtIndex(explicit, k);
                TDescriptorSource::ProcessFallbackComponent(a2, v29, 1, a3);
              }
            }
          }

          v7 = v30;
        }

        goto LABEL_25;
      }

      if (a3 == 1)
      {
        if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
        {
          dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
        }

        if ((IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter & 2) == 0)
        {
          v11 = _CTGetEmojiFontName(1);
          if (v11 == ValueAtIndex)
          {
            goto LABEL_12;
          }

          v12 = 1024;
          if (!ValueAtIndex || !v11)
          {
            goto LABEL_24;
          }

          if (CFEqual(ValueAtIndex, v11))
          {
LABEL_12:
            ValueAtIndex = _CTGetEmojiFontName(0);
          }
        }

        v12 = 1024;
      }

      else
      {
        v12 = 65537;
      }

LABEL_24:
      TDescriptorSource::AppendFontDescriptorFromName(a2, ValueAtIndex, v12);
LABEL_25:
      ++v8;
    }

    while (v8 != Count);
  }
}

void TFontFallbacks::TFontFallbacks(TFontFallbacks *this)
{
  v3[4] = *MEMORY[0x1E69E9840];
  *this = TGenerationSeed::sGeneration;
  *(this + 1) = GetLocaleChangedCount();
  *(this + 1) = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v2 = CFLocaleCopyPreferredLanguages();
  v3[0] = &unk_1EF2580F0;
  v3[3] = v3;
  CreateOrderedArray(0, v2, v3, this + 2);
  std::__function::__value_func<objc_object * ()(objc_object *)>::~__value_func[abi:fn200100](v3);

  *(this + 40) = 0u;
  *(this + 24) = 0u;
  *(this + 14) = 1065353216;
}

void TFontFallbacks::CopyFontFallbacks(TFontFallbacks *this, const __CFString *a2, __CFString *a3, __CFString *a4, const __CFArray *explicit)
{
  v27 = CFDictionaryGetValue(atomic_load_explicit(&a2->info, memory_order_acquire), a3);
  if (!atomic_load_explicit(&v27, memory_order_acquire))
  {
    v25 = 0xAAAAAAAAAAAAAAAALL;
    v26 = 0;
    if (!a4)
    {
      a4 = a3;
    }

    CopyDefaultFontFallbacks(&v25);
    v10 = atomic_load_explicit(&v25, memory_order_acquire);
    if (v10)
    {
      v11 = v10;
      Value = CFDictionaryGetValue(v10, a4);

      if (Value && CFArrayGetCount(Value) >= 1)
      {
        if (!explicit)
        {
          explicit = atomic_load_explicit(&a2->data, memory_order_acquire);
        }

        v13 = atomic_load_explicit(&v25, memory_order_acquire);
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        v28 = 0xAAAAAAAAAAAAAAAALL;
        v29 = Mutable;
        TDescriptorSource::TDescriptorSource(&v28);
        OrderedLanguages = CreateOrderedLanguages(explicit);
        if (a4 == @"default")
        {
          v17 = 1;
        }

        else if (a4)
        {
          v16 = CFEqual(a4, @"default");
          v17 = 1;
          if (a4 != @"ui-" && !v16)
          {
            v17 = CFStringHasPrefix(a4, @"ui-") != 0;
          }
        }

        else
        {
          v17 = 0;
        }

        TDescriptorSource::ProcessFallbackList(Value, &v29, v17, OrderedLanguages);
        v19 = CFDictionaryGetValue(v13, @"common");
        if (v19)
        {
          v20 = v19;
          if (CFArrayGetCount(v19))
          {
            TDescriptorSource::ProcessFallbackList(v20, &v29, v17, OrderedLanguages);
          }
        }

        v24 = atomic_exchange(&v29, 0);

        v21 = atomic_load_explicit(&v26, memory_order_acquire);
        if (v21)
        {
          v22 = v21;
          Count = CFArrayGetCount(v21);

          if (Count >= 1)
          {
            CFDictionarySetValue(atomic_load_explicit(&a2->info, memory_order_acquire), a3, atomic_load_explicit(&v26, memory_order_acquire));
          }
        }

        else
        {
        }

        goto LABEL_33;
      }
    }

    else
    {
    }

    if (a4 == @"ui-monospace")
    {
      goto LABEL_19;
    }

    if (a4)
    {
      if (CFEqual(a4, @"ui-monospace"))
      {
LABEL_19:
        v18 = @"monospace";
LABEL_20:
        TFontFallbacks::CopyFontFallbacks(this, a2, v18, 0);
LABEL_34:

        goto LABEL_35;
      }

      if (a4 == @"ui-serif" || CFEqual(a4, @"ui-serif"))
      {
        v18 = @"serif";
        goto LABEL_20;
      }

      if (a4 == @"ui-rounded" || CFEqual(a4, @"ui-rounded"))
      {
        v18 = @"default";
        goto LABEL_20;
      }
    }

LABEL_33:
    *this = atomic_exchange(&v26, 0);
    goto LABEL_34;
  }

  *this = atomic_exchange(&v27, 0);
LABEL_35:
}

void ***std::unique_ptr<CharRangeToDescriptorMap>::reset[abi:fn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table((v2 + 65));
    v3 = v2;
    std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v3);
    return MEMORY[0x1865F22D0](v2, 0x10E0C404E22EBADLL);
  }

  return result;
}

void TRequestCacheNode::~TRequestCacheNode(id *this)
{
  *this = &unk_1EF257FE0;
  v1 = this + 2;
}

{
  *this = &unk_1EF257FE0;
  v1 = this + 2;

  JUMPOUT(0x1865F22D0);
}

void CharRangeToDescriptorMap::CharRangeToDescriptorMap(CharRangeToDescriptorMap *this)
{
  *(this + 68) = 0;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 138) = 1065353216;
  *(this + 6) = -1613914163;
  v5 = this + 24;
  v2 = this + 40;
  *(this + 63) = this + 40;
  *(this + 4) = -1;
  *this = this + 24;
  *(this + 1) = this + 40;
  *(this + 2) = this + 40;
  memset(v4, 0, sizeof(v4));
  std::__split_buffer<std::tuple<unsigned short,unsigned short,long>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,long>,30ul> &>::~__split_buffer(v4);
  v3 = *this;
  *(this + 1) = v2;
  *(this + 64) = v3;
}

uint64_t CharRangeToDescriptorMap::AddRangesForDescriptorIndex(uint64_t this, const __CFCharacterSet *a2, unint64_t a3)
{
  if (!a2)
  {
    return this;
  }

  v4 = this;
  v5 = *(this + 528);
  if (!*&v5)
  {
    goto LABEL_34;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = a3;
    if (*&v5 <= a3)
    {
      v7 = a3 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & a3;
  }

  v8 = *(this + 520);
  v9 = *(v8 + 8 * v7);
  if (v9)
  {
    for (i = *v9; i; i = *i)
    {
      v11 = i[1];
      if (v11 == a3)
      {
        if (i[2] == a3)
        {
          return this;
        }
      }

      else
      {
        if (v6.u32[0] > 1uLL)
        {
          if (v11 >= *&v5)
          {
            v11 %= *&v5;
          }
        }

        else
        {
          v11 &= *&v5 - 1;
        }

        if (v11 != v7)
        {
          break;
        }
      }
    }
  }

  if (v6.u32[0] > 1uLL)
  {
    v12 = a3;
    if (*&v5 <= a3)
    {
      v12 = a3 % *&v5;
    }
  }

  else
  {
    v12 = (*&v5 - 1) & a3;
  }

  v13 = *(v8 + 8 * v12);
  if (!v13 || (v14 = *v13) == 0)
  {
LABEL_34:
    operator new();
  }

  while (1)
  {
    v15 = v14[1];
    if (v15 == a3)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v15 >= *&v5)
      {
        v15 %= *&v5;
      }
    }

    else
    {
      v15 &= *&v5 - 1;
    }

    if (v15 != v12)
    {
      goto LABEL_34;
    }

LABEL_33:
    v14 = *v14;
    if (!v14)
    {
      goto LABEL_34;
    }
  }

  if (v14[2] != a3)
  {
    goto LABEL_33;
  }

  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *theSet = v16;
  v32 = v16;
  this = CFCharacterSetInitInlineBuffer();
  v17 = *v4;
  v18 = v4[2] - *v4;
  v19 = 12288;
  do
  {
    while (1)
    {
      v20 = *v17;
      if (v20 <= v19)
      {
        break;
      }

      v21 = 0;
      v22 = v19;
      v23 = v19;
      do
      {
        LOBYTE(v24) = (theSet[1] & 4) == 0;
        if (HIDWORD(theSet[1]) > v22 || v32 <= v22)
        {
          v24 = (theSet[1] & 4) >> 2;
LABEL_42:
          if ((v24 & 1) == 0)
          {
            goto LABEL_43;
          }

          goto LABEL_51;
        }

        if ((theSet[1] & 2) != 0)
        {
          this = CFCharacterSetIsLongCharacterMember(theSet[0], v22);
          if (!this)
          {
            goto LABEL_43;
          }
        }

        else if (*(&v32 + 1))
        {
          if (theSet[1])
          {
            v26 = *(*(&v32 + 1) + (v22 >> 8));
            if (*(*(&v32 + 1) + (v22 >> 8)))
            {
              if (v26 == 255)
              {
                goto LABEL_42;
              }

              if (((theSet[1] & 4) == 0) == (((*(*(&v32 + 1) + 32 * v26 + (v22 >> 3) + 224) >> (v22 & 7)) & 1) == 0))
              {
                goto LABEL_43;
              }
            }

            else if ((theSet[1] & 4) == 0)
            {
LABEL_43:
              if (v21)
              {
                v29 = v23 | (v21 << 16);
                v30 = a3;
                this = std::vector<std::tuple<unsigned short,unsigned short,long>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,long>,30ul>>::emplace<std::tuple<unsigned short,unsigned short,long>>(v4, v17, &v29);
                v21 = 0;
                v17 = (this + 16);
              }

              else
              {
                v21 = 0;
              }

              goto LABEL_55;
            }
          }

          else if (((theSet[1] & 4) == 0) == (((*(*(&v32 + 1) + (v22 >> 3)) >> (v22 & 7)) & 1) == 0))
          {
            goto LABEL_43;
          }
        }

        else if (((((theSet[1] & 1) == 0) ^ ((theSet[1] & 4) >> 2)) & 1) == 0)
        {
          goto LABEL_43;
        }

LABEL_51:
        if (v21)
        {
          ++v21;
        }

        else
        {
          v23 = v22;
          v21 = v22 + 1;
        }

LABEL_55:
        ++v22;
      }

      while (v20 != v22);
      v19 = v20;
      if (v21)
      {
        v29 = v23 | (v21 << 16);
        v30 = a3;
        this = std::vector<std::tuple<unsigned short,unsigned short,long>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,long>,30ul>>::emplace<std::tuple<unsigned short,unsigned short,long>>(v4, v17, &v29);
        v17 = (this + 16);
        v19 = v20;
      }
    }

    v19 = v17[1];
    v17 += 8;
  }

  while (v17 != v4[1]);
  v27 = 30;
  if ((v18 >> 4) <= 0x1E)
  {
    v28 = 30;
  }

  else
  {
    v28 = v18 >> 4;
  }

  if (((v4[2] - *v4) >> 4) > 0x1E)
  {
    v27 = (v4[2] - *v4) >> 4;
  }

  if (v27 != v28)
  {
    v4[64] = *v4;
  }

  return this;
}

const void *std::vector<std::tuple<unsigned short,unsigned short,long>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,long>,30ul>>::emplace<std::tuple<unsigned short,unsigned short,long>>(void *a1, _WORD *a2, __int16 *a3)
{
  v4 = a2;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v14 = *a1;
    v15 = ((v6 - *a1) >> 4) + 1;
    v42 = 0xAAAAAAAAAAAAAAAALL;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v41 = v16;
    *&v41[16] = v16;
    if (v15 >> 60)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v17 = a2 - v14;
    v18 = v7 - v14;
    if (v18 >> 3 > v15)
    {
      v15 = v18 >> 3;
    }

    if (v18 >= 0x7FFFFFFFFFFFFFF0)
    {
      v19 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v19 = v15;
    }

    std::__split_buffer<std::tuple<unsigned short,unsigned short,long>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,long>,30ul> &>::__split_buffer(v41, v19, v17 >> 4, (a1 + 3));
    v20 = *&v41[16];
    if (*&v41[16] == *&v41[24])
    {
      v21 = *&v41[8];
      if (*&v41[8] <= *v41)
      {
        if (*&v41[16] == *v41)
        {
          v24 = 1;
        }

        else
        {
          v24 = (*&v41[16] - *v41) >> 3;
        }

        v44 = 0xAAAAAAAAAAAAAAAALL;
        *&v25 = 0xAAAAAAAAAAAAAAAALL;
        *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v43 = v25;
        *&v43[16] = v25;
        std::__split_buffer<std::tuple<unsigned short,unsigned short,long>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,long>,30ul> &>::__split_buffer(v43, v24, v24 >> 2, v42);
        v26 = *&v41[8];
        v27 = *&v41[8];
        v28 = *&v43[16];
        v29 = *&v41[16] - *&v41[8];
        if (*&v41[16] == *&v41[8])
        {
          v30 = *&v43[16];
        }

        else
        {
          v30 = *&v43[16] + v29;
          do
          {
            v31 = *v27++;
            *v28++ = v31;
            v29 -= 16;
          }

          while (v29);
          v26 = *&v41[8];
        }

        v32 = *v43;
        v33 = *&v41[24];
        *v43 = *v41;
        *v41 = v32;
        *&v43[8] = v26;
        *&v41[16] = v30;
        *&v41[24] = *&v43[24];
        *&v43[24] = v33;
        std::__split_buffer<std::tuple<unsigned short,unsigned short,long>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,long>,30ul> &>::~__split_buffer(v43);
        v20 = *&v41[16];
      }

      else
      {
        v22 = *&v41[8] - 16 * ((((*&v41[8] - *v41) >> 4) + 1 + ((((*&v41[8] - *v41) >> 4) + 1) >> 63)) >> 1);
        v23 = v22;
        if (*&v41[8] != *&v41[16])
        {
          v23 = v22;
          do
          {
            *v23 = *v21;
            *(v23 + 2) = *(v21 + 2);
            *(v23 + 8) = *(v21 + 8);
            v21 += 16;
            v23 += 16;
          }

          while (v21 != v20);
        }

        *&v41[8] = v22;
        *&v41[16] = v23;
        v20 = v23;
      }
    }

    *v20 = *a3;
    v34 = *&v41[8];
    *&v41[16] += 16;
    memcpy(*&v41[16], v4, a1[1] - v4);
    v35 = *a1;
    *&v41[16] += a1[1] - v4;
    a1[1] = v4;
    v36 = v4 - v35;
    v37 = (v34 - (v4 - v35));
    memcpy(v37, v35, v36);
    v38 = *a1;
    *a1 = v37;
    v39 = a1[2];
    *(a1 + 1) = *&v41[16];
    *&v41[16] = v38;
    *&v41[24] = v39;
    *v41 = v38;
    *&v41[8] = v38;
    std::__split_buffer<std::tuple<unsigned short,unsigned short,long>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,long>,30ul> &>::~__split_buffer(v41);
    return v34;
  }

  else if (a2 == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 1;
  }

  else
  {
    v8 = *a3;
    v9 = a3[1];
    v10 = *(a3 + 1);
    v11 = a1[1];
    if (v6 >= 0x10)
    {
      v11 = v6 + 1;
      *v6 = *(v6 - 1);
    }

    a1[1] = v11;
    if (v6 != (a2 + 8))
    {
      v12 = 0;
      do
      {
        v13 = &v6[v12 / 0x10];
        *(v13 - 8) = v6[v12 / 0x10 - 2];
        *(v13 - 7) = *(&v6[v12 / 0x10 - 1] - 7);
        *(v13 - 1) = *(&v6[v12 / 0x10 - 1] - 1);
        v12 -= 16;
      }

      while (a2 - v6 + 16 != v12);
    }

    *a2 = v8;
    a2[1] = v9;
    *(a2 + 1) = v10;
  }

  return v4;
}

uint64_t CharRangeToDescriptorMap::GetDescriptorIndexForChar(CharRangeToDescriptorMap *this, unsigned int a2)
{
  v2 = *(this + 64);
  if (*v2 <= a2 && v2[1] > a2)
  {
    return *(v2 + 1);
  }

  v3 = *this;
  v2 = *(this + 1);
  if (v2 == *this)
  {
    goto LABEL_25;
  }

  v4 = (v2 - *this) >> 4;
  v5 = *(this + 1);
  while (1)
  {
    v6 = v4 >> 1;
    v7 = &v3[8 * (v4 >> 1)];
    if (v7[1] <= a2)
    {
      v3 = v7 + 8;
      v6 = v4 + ~v6;
      goto LABEL_9;
    }

    if (*v7 <= a2)
    {
      break;
    }

    v5 = &v3[8 * (v4 >> 1)];
LABEL_9:
    v4 = v6;
    if (!v6)
    {
      v2 = v3;
      goto LABEL_25;
    }
  }

  v2 = &v3[8 * (v4 >> 1)];
  if (v4 != 1)
  {
    do
    {
      v8 = v6 >> 1;
      v9 = &v3[8 * (v6 >> 1)];
      v10 = v9[1];
      v11 = v9 + 8;
      v6 += ~(v6 >> 1);
      if (v10 <= a2)
      {
        v3 = v11;
      }

      else
      {
        v6 = v8;
      }
    }

    while (v6);
    v2 = v3;
  }

  v3 = v7 + 8;
  if (v5 == v7 + 8)
  {
    v3 = v5;
  }

  else
  {
    v12 = (v5 - (v7 + 8)) >> 4;
    do
    {
      v13 = v12 >> 1;
      v14 = &v3[8 * (v12 >> 1)];
      v16 = *v14;
      v15 = v14 + 8;
      v12 += ~(v12 >> 1);
      if (v16 > a2)
      {
        v12 = v13;
      }

      else
      {
        v3 = v15;
      }
    }

    while (v12);
  }

LABEL_25:
  if (v3 != v2)
  {
    *(this + 64) = v2;
    return *(v2 + 1);
  }

  return -1;
}

unint64_t TFontDescriptorFilter::CreateSortedArray(atomic_ullong *this, CFComparisonResult (__cdecl *a2)(const void *, const void *, void *), void *a3)
{
  CreateSortedArrayWithSet(atomic_load_explicit(this + 1, memory_order_acquire), a2, a3, &v5);
  v3 = atomic_exchange(&v5, 0);

  return v3;
}

unint64_t TFontDescriptorFilter::CreateFilteredArray(atomic_ullong *this, CFComparisonResult (__cdecl *a2)(const void *, const void *, void *), void *a3)
{
  CreateSortedArrayWithSet(atomic_load_explicit(this + 2, memory_order_acquire), a2, a3, &v5);
  v3 = atomic_exchange(&v5, 0);

  return v3;
}

void TFontDescriptorFilter::PerformFilter(atomic_ullong *context, int a2)
{
  if (atomic_load_explicit(context + 1, memory_order_acquire))
  {
    v3 = TFontDescriptorFilter::FilterFunctionToAdd;
    if (a2 != 1)
    {

      v3 = TFontDescriptorFilter::FilterFunctionToRemove;
    }

    explicit = atomic_load_explicit(context + 1, memory_order_acquire);

    CFSetApplyFunction(explicit, v3, context);
  }
}

const __CFSet *TFontDescriptorDuplicateFilter::FilterShouldIncludeDescriptor(uint64_t a1, const void *a2)
{
  result = atomic_load_explicit((a1 + 8), memory_order_acquire);
  if (result)
  {
    return (CFSetContainsValue(result, a2) != 0);
  }

  return result;
}

const __CFDictionary *TDescriptorSource::CopySystemWideFallbackDescriptor(unsigned int)const::$_0::__invoke()
{
  qword_1ED567AA0 = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  result = getenv("CT_PRESET_FALLBACKS_AND_COMBO_CHARSETS_GENERATION");
  if (!result)
  {
    result = CTFontGetPlistFromGSFontCache(@"CTPresetFallbacks.plist", 0);
    if (result)
    {
      result = CFDictionaryGetValue(result, @"SystemWideFallbacks");
      qword_1ED567A90 = result;
    }
  }

  return result;
}

CFCharacterSetRef GetSystemFontsComboCharacterSet(void)::$_0::__invoke()
{
  result = TDescriptorSource::CopyPredefinedCharacterSet(@"CTFontSystemComboCharacterSet", 0);
  qword_1ED567B08 = result;
  return result;
}

void TDescriptorSource::CopyLastResort(void)const::$_0::__invoke()
{
  TDescriptorSource::TDescriptorSource(v12);
  v11 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::CopyFontDescriptorPerPostScriptName(&v11, v12, @"LastResort", 22, 3, 0, 0, 0, -1, *MEMORY[0x1E695E4C0]);
  if (atomic_load_explicit(&v11, memory_order_acquire))
  {
    v0 = atomic_load_explicit(&v11, memory_order_acquire);
    v1 = v0;
    v2 = v0[5];
    if ((*(v2 + 4) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(v0[5], 0, 0.0);
    }

    explicit = atomic_load_explicit(v2 + 4, memory_order_acquire);

    if (explicit)
    {
      v10 = 0xAAAAAAAAAAAAAAAALL;
      (*(*explicit + 200))(&v9, explicit);
      TCGFontCache::CopyFont(atomic_load_explicit(&v9, memory_order_acquire), 0, 0, &v10);

      if (atomic_load_explicit(&v10, memory_order_acquire))
      {
        qword_1ED567AA8 = atomic_exchange(&v11, 0);
        v4 = v10;
LABEL_16:

        goto LABEL_17;
      }
    }
  }

  CFLog();
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v5 = getsectiondata(&dword_1845CE000, "__FONT_DATA", "__LastResort", &v10);
  if (v5)
  {
    v6 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v5, v10, *MEMORY[0x1E695E498]);
    if (FPFontCreateWithData())
    {
      v7 = CGFontCreateWithParserFont();
      if (v7)
      {
        v8 = TCFBase<TDescriptor>::Allocate();
        if (v8)
        {
          CTFontDescriptor::CTFontDescriptor(v8);
        }

        v9 = 0;
        qword_1ED567AA8 = atomic_exchange(&v9, 0);
      }

      FPFontRelease();
    }

    v4 = v6;
    goto LABEL_16;
  }

LABEL_17:
}

void CTFontDescriptor::CTFontDescriptor(void *a1)
{
  a1[2] = 0;
  a1[3] = TDescriptor::Hash;
  a1[4] = 0;
  a1[5] = a1 + 6;
  operator new();
}

CFCharacterSetRef TDescriptorSource::GetAppleColorEmojiCharacterSet(void)const::$_0::__invoke()
{
  v0 = _CTGetEmojiFontName(0);
  result = CreateCharacterSetForFont(v0);
  qword_1ED567AB8 = result;
  return result;
}

CFSetRef TDescriptorSource::GetMatchableNameAttributes(void)::$_0::__invoke()
{
  v1[7] = *MEMORY[0x1E69E9840];
  v1[0] = @"NSCTFontPostScriptNameAttribute";
  v1[1] = @"NSFontNameAttribute";
  v1[2] = @"NSFontVisibleNameAttribute";
  v1[3] = @"NSFontFamilyAttribute";
  v1[4] = @"NSFontFaceAttribute";
  v1[5] = @"NSCTFontUIUsageAttribute";
  v1[6] = @"NSCTFontFileURLAttribute";
  result = CFSetCreate(*MEMORY[0x1E695E480], v1, 7, MEMORY[0x1E695E9F8]);
  qword_1ED567AD8 = result;
  return result;
}

void TCFMutableSet::TCFMutableSet(TCFMutableSet *this, CFSetRef theSet)
{
  v3 = *MEMORY[0x1E695E480];
  if (theSet)
  {
    MutableCopy = CFSetCreateMutableCopy(v3, 0, theSet);
  }

  else
  {
    MutableCopy = CFSetCreateMutable(v3, 0, MEMORY[0x1E695E9F8]);
  }

  *this = MutableCopy;
}

void std::allocator<float>::allocate_at_least[abi:fn200100](unint64_t a1)
{
  if (!(a1 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fn200100]();
}

CFArrayRef GetOrderedLanguages(void)::$_0::__invoke()
{
  values[10] = *MEMORY[0x1E69E9840];
  values[0] = @"zh-Hans";
  values[1] = @"zh-Hant";
  values[2] = @"zh-HK";
  values[3] = @"zh-MO";
  values[4] = @"ja";
  values[5] = @"ko";
  values[6] = @"ar";
  values[7] = @"ur";
  values[8] = @"my";
  values[9] = @"my-Qaag";
  result = CFArrayCreate(*MEMORY[0x1E695E480], values, 10, MEMORY[0x1E695E9C0]);
  qword_1ED567B28 = result;
  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>>>::__deallocate_node(uint64_t a1, void ***a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::unique_ptr<CharRangeToDescriptorMap>::reset[abi:fn200100](v2 + 3, 0);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t CopyDefaultFontFallbacks(void)::$_0::__invoke()
{
  result = CTFontGetPlistFromGSFontCache(@"DefaultFontFallbacks.plist", 0);
  qword_1ED567B48 = result;
  return result;
}

void *std::__split_buffer<std::tuple<unsigned short,unsigned short,long>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,long>,30ul> &>::__split_buffer(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v5 = *(a4 + 480);
    v6 = v5 + 16 * a2;
    if (v6 > a4 + 480)
    {
      if (!(a2 >> 60))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    *(a4 + 480) = v6;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5 + 16 * a3;
  *a1 = v5;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v5 + 16 * a2;
  return a1;
}

uint64_t std::__split_buffer<std::tuple<unsigned short,unsigned short,long>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,long>,30ul> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 32);
    v6 = (v5 + 480);
    if (v5 <= v4 && v6 > v4)
    {
      if (*(a1 + 24) == *v6)
      {
        *v6 = v4;
      }
    }

    else
    {
      operator delete(v4);
    }
  }

  return a1;
}

void TFontDescriptorFilter::FilterFunctionToRemove(TFontDescriptorFilter *this, atomic_ullong *a2, void *a3)
{
  if (((*(*a2 + 56))(a2, this, a3) & 1) == 0)
  {
    explicit = atomic_load_explicit(a2 + 2, memory_order_acquire);

    CFSetRemoveValue(explicit, this);
  }
}

void CTFontDescriptor::CTFontDescriptor(CTFontDescriptor *this, CGFont *a2, const __CFDictionary *a3)
{
  *(this + 2) = 0;
  *(this + 3) = TDescriptor::Hash;
  *(this + 4) = 0;
  *(this + 5) = this + 48;
  operator new();
}

BOOL std::equal_to<anonymous namespace::TMissedRequest>::operator()[abi:fn200100](atomic_ullong *a1, atomic_ullong *a2)
{
  if (a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  explicit = atomic_load_explicit(a1, memory_order_acquire);
  v4 = atomic_load_explicit(a2, memory_order_acquire);
  if (explicit == v4)
  {
    return 1;
  }

  result = 0;
  if (explicit)
  {
    if (v4)
    {
      return CFEqual(explicit, v4) != 0;
    }
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::unique_ptr<CharRangeToDescriptorMap>>>>::__emplace_unique_key_args<unsigned long,std::piecewise_construct_t const&,std::tuple<unsigned long const&>,std::tuple<>>(void *a1, unint64_t *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (v2 >= *&v3)
    {
      v5 = v2 % *&v3;
    }
  }

  else
  {
    v5 = (*&v3 - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (v7[2] != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

int64_t TRunReorder::ReorderRuns(int64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = *(a2 + 24);
  v4 = v3 - v2;
  if (v3 != v2)
  {
    v6 = result;
    v7 = *(*v2 + 40);
    v8 = *(v7 + 160);
    if (v8 && (*(v8 + 66) & 4) != 0)
    {
      BaseWritingDirection = 1;
    }

    else
    {
      v9 = *(v7 + 168);
      if (!v9 || (BaseWritingDirection = TParagraphStyle::GetBaseWritingDirection(v9, a2), (BaseWritingDirection & 0x80000000) != 0))
      {
        BaseWritingDirection = (*(*v6 + 24))(v6, *(a2 + 72));
      }
    }

    result = TLine::SetTrailingWhitespaceLevel(a2, BaseWritingDirection == 1);
    if ((*(a2 + 154) & 0x80) == 0)
    {
      v12 = *(a2 + 16);
      v13 = (*(a2 + 24) - v12) >> 3;
      if (v13 >= 1)
      {
        LOBYTE(v14) = 0;
        v15 = v4 >> 3;
        v16 = 63;
        do
        {
          v17 = *v12++;
          v18 = *(*(v17 + 40) + 224);
          if (v14 <= v18)
          {
            v14 = v18;
          }

          else
          {
            v14 = v14;
          }

          v19 = v16;
          if (v18 < v16)
          {
            v19 = v18;
          }

          if (v18)
          {
            v16 = v19;
          }

          --v13;
        }

        while (v13);
        if (v14 >= v16)
        {
          do
          {
            v11.location = 0;
            result = TRunReorder::FindRunRange(a2, v14, 0, v11);
            if (result < v15)
            {
              v21 = result;
              v22 = v20;
              do
              {
                v24.location = v21;
                v24.length = v22;
                TLine::ReverseRuns(a2, v24);
                v25.location = v22;
                result = TRunReorder::FindRunRange(a2, v14, v21, v25);
                v21 = result;
                v22 = v23;
              }

              while (result < v15);
            }

            LOBYTE(v14) = v14 - 1;
          }

          while (v16 <= v14);
        }
      }
    }

    if (BaseWritingDirection == 1)
    {
      *(a2 + 152) |= 8u;
    }
  }

  return result;
}

uint64_t TRunReorder::FindRunRange(TRunReorder *this, TLine *a2, uint64_t a3, CFRange a4)
{
  v4 = *(this + 2);
  v5 = (*(this + 3) - v4) >> 3;
  result = a3 + a4.location;
  if (v5 > a3 + a4.location)
  {
    if (v5 <= (a3 + a4.location))
    {
LABEL_12:
      __break(1u);
    }

    else
    {
      v7 = (v4 + 8 * result + 8);
      while (*(*(*(v4 + 8 * result) + 40) + 224) < a2)
      {
        ++result;
        ++v7;
        if (v5 <= result)
        {
          return v5;
        }
      }

      v8 = 1;
      do
      {
        v9 = v8;
        v10 = result + v8;
        if (v5 <= v10)
        {
          break;
        }

        if (v5 <= v10)
        {
          goto LABEL_12;
        }

        v11 = *v7++;
        v8 = v9 + 1;
      }

      while (*(*(v11 + 40) + 224) >= a2);
    }
  }

  return result;
}

TRunReorder *TRunReorder::ReorderRuns(TRunReorder *this, TLine *a2, uint64_t a3, CFRange a4)
{
  v4 = *(this + 2);
  v5 = *(this + 3) - v4;
  v6 = v5 >> 3;
  if (v5)
  {
    v7 = v6 < 1;
  }

  else
  {
    v7 = 1;
  }

  if (!v7)
  {
    v8 = this;
    LOBYTE(v9) = 0;
    v10 = 0;
    v11 = 63;
    do
    {
      v12 = *(*(*(v4 + 8 * v10) + 40) + 224);
      if (v9 <= v12)
      {
        v9 = *(*(*(v4 + 8 * v10) + 40) + 224);
      }

      else
      {
        v9 = v9;
      }

      v13 = v11;
      if (v12 < v11)
      {
        v13 = *(*(*(v4 + 8 * v10) + 40) + 224);
      }

      if (v12)
      {
        v11 = v13;
      }

      ++v10;
    }

    while (v6 != v10);
    if (v9 >= v11)
    {
      do
      {
        a4.location = 0;
        this = TRunReorder::FindRunRange(v8, v9, 0, a4);
        if (this < v6)
        {
          v15 = this;
          v16 = v14;
          do
          {
            v18.location = v15;
            v18.length = v16;
            TLine::ReverseRuns(v8, v18);
            v19.location = v16;
            this = TRunReorder::FindRunRange(v8, v9, v15, v19);
            v15 = this;
            v16 = v17;
          }

          while (this < v6);
        }

        LOBYTE(v9) = v9 - 1;
      }

      while (v11 <= v9);
    }
  }

  return this;
}

void TLocaleManager::TLocaleManager(TLocaleManager *this)
{
  if (qword_1ED567BB8 != -1)
  {
    dispatch_once_f(&qword_1ED567BB8, 0, GetTheLocaleManager(void)::$_0::__invoke);
  }

  *this = qword_1ED567BB0;
  os_unfair_lock_lock_with_options();
}

void TLocaleManagerImp::CopyLanguagesFromCharacterSet(atomic_ullong *this@<X0>, const __CFCharacterSet *a2@<X1>, const __CFArray *a3@<X2>, id a4@<X3>, void *a5@<X8>)
{
  v21 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableSet::TCFMutableSet(&v21, a4);
  v20 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableArray::TCFMutableArray(&v20, a3);
  SupportedLanguages = TLocaleManagerImp::GetSupportedLanguages(this, v8);
  if (SupportedLanguages)
  {
    v10 = SupportedLanguages;
    Count = CFArrayGetCount(SupportedLanguages);
    if (Count)
    {
      v12 = Count;
      v13 = 0;
      v14 = *MEMORY[0x1E695E480];
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v10, v13);
        CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(v14, ValueAtIndex);
        if (CanonicalLanguageIdentifierFromString && !CFSetContainsValue(atomic_load_explicit(&v21, memory_order_acquire), CanonicalLanguageIdentifierFromString))
        {
          v19 = 0xAAAAAAAAAAAAAAAALL;
          TLocaleManagerImp::CopyExamplarSetForLanguage(this, CanonicalLanguageIdentifierFromString, &v19);
          if (atomic_load_explicit(&v19, memory_order_acquire) && CFCharacterSetIsSupersetOfSet(a2, atomic_load_explicit(&v19, memory_order_acquire)))
          {
            v17 = CanonicalLanguageIdentifierFromString;
            CFArrayAppendValue(atomic_load_explicit(&v20, memory_order_acquire), v17);
          }

          CFSetAddValue(atomic_load_explicit(&v21, memory_order_acquire), CanonicalLanguageIdentifierFromString);
        }

        ++v13;
      }

      while (v12 != v13);
    }
  }

  *a5 = atomic_exchange(&v20, 0);
}

BOOL TLocaleManagerImp::CharacterSetCoversLanguage(atomic_ullong *this, const __CFCharacterSet *a2, CFStringRef localeIdentifier)
{
  CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(*MEMORY[0x1E695E480], localeIdentifier);
  v8 = 0xAAAAAAAAAAAAAAAALL;
  TLocaleManagerImp::CopyExamplarSetForLanguage(this, CanonicalLanguageIdentifierFromString, &v8);
  if (atomic_load_explicit(&v8, memory_order_acquire))
  {
    v6 = CFCharacterSetIsSupersetOfSet(a2, atomic_load_explicit(&v8, memory_order_acquire)) != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void TLocaleManagerImp::CopyExamplarSetForLanguage(atomic_ullong *this@<X0>, const __CFString *value@<X1>, atomic_ullong *a3@<X8>)
{
  v18 = *MEMORY[0x1E69E9840];
  if (atomic_load_explicit(this + 1, memory_order_acquire) && (explicit = atomic_load_explicit(this + 2, memory_order_acquire), value) && explicit && !CFSetContainsValue(atomic_load_explicit(this + 2, memory_order_acquire), value))
  {
    *a3 = 0xAAAAAAAAAAAAAAAALL;
    *a3 = CFDictionaryGetValue(atomic_load_explicit(this + 1, memory_order_acquire), value);
    if (!atomic_load_explicit(a3, memory_order_acquire))
    {
      *&v7 = 0xAAAAAAAAAAAAAAAALL;
      *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v16[0] = v7;
      v16[1] = v7;
      v14 = 0;
      v15 = 0;
      v13 = 0;
      v17 = v16;
      if (!CFStringGetCStringPtr(value, 0x600u))
      {
        Length = CFStringGetLength(value);
        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x600u);
        v10 = MaximumSizeForEncoding + 1;
        v11 = v13;
        if (MaximumSizeForEncoding + 1 <= (v14 - v13))
        {
          if (MaximumSizeForEncoding + 1 < (v14 - v13))
          {
            v14 = &v13[v10];
          }
        }

        else
        {
          std::vector<char,TInlineBufferAllocator<char,30ul>>::__append(&v13, MaximumSizeForEncoding + 1 - (v14 - v13));
          v11 = v13;
        }

        CFStringGetCString(value, v11, v10, 0x600u);
      }

      ulocdata_open();
      if (ulocdata_getExemplarSet())
      {

        uset_close();
      }

      ulocdata_close();
      if (atomic_load_explicit(a3, memory_order_acquire))
      {
        CFDictionarySetValue(atomic_load_explicit(this + 1, memory_order_acquire), value, atomic_load_explicit(a3, memory_order_acquire));
      }

      else
      {
        CFSetAddValue(atomic_load_explicit(this + 2, memory_order_acquire), value);
      }

      v12 = &v13;
      std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](&v12);
    }
  }

  else
  {
    *a3 = 0;
  }
}

unint64_t TLocaleManagerImp::GetSupportedLanguages(atomic_ullong *this, double a2)
{
  if (!atomic_load_explicit(this, memory_order_acquire))
  {
    gotLoadHelper_x8__InternationalSupportVersionNumber(a2);
    if (*(v3 + 3584))
    {
      v4 = objc_autoreleasePoolPush();
      TCFRef<__CTFont const*>::Retain(this, [objc_msgSend(MEMORY[0x1E695DF58] "supportedLanguages")]);
      objc_autoreleasePoolPop(v4);
    }

    if (!atomic_load_explicit(this, memory_order_acquire))
    {
      v5 = CFLocaleCopyAvailableLocaleIdentifiers();
      v6 = CFLocaleCopyISOLanguageCodes();
      v12 = 0xAAAAAAAAAAAAAAAALL;
      v7 = v5;
      TCFMutableSet::TCFMutableSet(&v12, v7);

      v11 = 0xAAAAAAAAAAAAAAAALL;
      v8 = v6;
      TCFMutableSet::TCFMutableSet(&v11, v8);

      if (atomic_load_explicit(&v11, memory_order_acquire))
      {
        [atomic_load_explicit(&v12 memory:"intersectSet:" order:?acquire)];
      }

      CFSetAddValue(atomic_load_explicit(&v12, memory_order_acquire), @"zh-Hans");
      CFSetAddValue(atomic_load_explicit(&v12, memory_order_acquire), @"zh-Hant");
      CreateSortedArrayWithSet(atomic_load_explicit(&v12, memory_order_acquire), 0, 0, &v10);

      if (!atomic_load_explicit(this, memory_order_acquire))
      {
        v10 = CFArrayCreate(*MEMORY[0x1E695E480], 0, 0, MEMORY[0x1E695E9C0]);

        CFLog();
      }
    }
  }

  return atomic_load_explicit(this, memory_order_acquire);
}

uint64_t CreateCanonicalLanguages@<X0>(const __CFArray *a1@<X0>, void *a2@<X8>)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1EF2580A8;
  v5[1] = CFStringGetTypeID();
  v5[3] = v5;
  CreateCopyOfArrayByApplyingFunction(a1, v5, a2);
  return std::__function::__value_func<TCFRef<void const*> ()(void const*)>::~__value_func[abi:fn200100](v5);
}

BOOL CanonicalLocaleIdentifiersMatch(CFStringRef theString, CFStringRef prefix)
{
  if (theString == prefix)
  {
    return 1;
  }

  if ((theString == 0) == (prefix != 0))
  {
    return 0;
  }

  HasPrefix = CFStringHasPrefix(theString, prefix);
  v5 = CFStringHasPrefix(prefix, theString);
  if (HasPrefix && v5)
  {
    return 1;
  }

  if (!(HasPrefix | v5))
  {
    return 0;
  }

  v8 = *MEMORY[0x1E695E480];
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], theString, @"-");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  v11 = CFStringCreateArrayBySeparatingStrings(v8, prefix, @"-");
  v12 = CFArrayGetCount(v11);
  if (v12 >= Count)
  {
    v13 = Count;
  }

  else
  {
    v13 = v12;
  }

  if (v13 < 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 0;
    for (i = 0; i != v13; v6 = i >= v13)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, i);
      v16 = CFArrayGetValueAtIndex(v11, i);
      if (ValueAtIndex != v16 && (!ValueAtIndex || !v16 || !CFEqual(ValueAtIndex, v16)))
      {
        break;
      }

      ++i;
    }
  }

  return v6;
}

uint64_t GetEmojiPolicyFromLocale(const __CFString *a1)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v34[0] = v2;
    v34[1] = v2;
    v32 = 0;
    v33 = 0;
    v31 = 0;
    v35 = v34;
    if (!CFStringGetCStringPtr(a1, 0x600u))
    {
      Length = CFStringGetLength(a1);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x600u);
      v5 = MaximumSizeForEncoding + 1;
      v6 = v31;
      if (MaximumSizeForEncoding + 1 <= (v32 - v31))
      {
        if (MaximumSizeForEncoding + 1 < (v32 - v31))
        {
          v32 = &v31[v5];
        }
      }

      else
      {
        std::vector<char,TInlineBufferAllocator<char,30ul>>::__append(&v31, MaximumSizeForEncoding + 1 - (v32 - v31));
        v6 = v31;
      }

      CFStringGetCString(a1, v6, v5, 0x600u);
    }

    v29 = 0;
    memset(bytes, 170, 6);
    Script = uloc_getScript();
    if (Script < 1)
    {
LABEL_26:
      memset(v28, 170, 6);
      v29 = 0;
      KeywordValue = uloc_getKeywordValue();
      v7 = 0;
      if (KeywordValue < 1)
      {
LABEL_44:
        *bytes = &v31;
        std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](bytes);
        return v7;
      }

      v19 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v28, KeywordValue, 0x600u, 0, *MEMORY[0x1E695E498]);
      v20 = v19;
      if (!v19)
      {
        goto LABEL_43;
      }

      v21 = v19;
      v22 = v21;
      v23 = @"emoji";
      if (v22 == @"emoji")
      {
        v7 = 2;
      }

      else
      {
        if (v22)
        {
          v24 = CFStringCompare(v22, @"emoji", 1uLL);

          if (v24 == kCFCompareEqualTo)
          {
            v7 = 2;
LABEL_40:
            v17 = v20;
            goto LABEL_41;
          }
        }

        else
        {
        }

        v21 = v20;
        v25 = v21;
        v23 = @"text";
        if (v25 != @"text")
        {
          if (v25)
          {
            v26 = CFStringCompare(v25, @"text", 1uLL);

            if (v26 == kCFCompareEqualTo)
            {
              v7 = 1;
              goto LABEL_40;
            }
          }

          else
          {
          }

LABEL_43:

          v7 = 0;
          goto LABEL_44;
        }

        v7 = 1;
      }

      goto LABEL_40;
    }

    v9 = CFStringCreateWithBytesNoCopy(*MEMORY[0x1E695E480], bytes, Script, 0x600u, 0, *MEMORY[0x1E695E498]);
    v10 = v9;
    if (v9)
    {
      v11 = v9;
      v12 = v11;
      v13 = @"Zsye";
      if (v12 == @"Zsye")
      {
        v7 = 2;
      }

      else
      {
        if (v12)
        {
          v14 = CFStringCompare(v12, @"Zsye", 1uLL);

          if (v14 == kCFCompareEqualTo)
          {
            v7 = 2;
LABEL_23:
            v17 = v10;
LABEL_41:

            goto LABEL_44;
          }
        }

        else
        {
        }

        v11 = v10;
        v15 = v11;
        v13 = @"Zsym";
        if (v15 != @"Zsym")
        {
          if (v15)
          {
            v7 = 1;
            v16 = CFStringCompare(v15, @"Zsym", 1uLL);

            if (v16 == kCFCompareEqualTo)
            {
              goto LABEL_23;
            }
          }

          else
          {
          }

          goto LABEL_25;
        }

        v7 = 1;
      }

      goto LABEL_23;
    }

LABEL_25:

    goto LABEL_26;
  }

  return 0;
}

uint64_t CurrentLocaleIsChina(void)
{
  if (qword_1ED567B80 != -1)
  {
    dispatch_once(&qword_1ED567B80, &__block_literal_global_1);
  }

  return _MergedGlobals_17[0];
}

uint64_t ___Z20CurrentLocaleIsChinav_block_invoke()
{
  v0 = [MEMORY[0x1E695DF58] currentLocale];
  result = [objc_msgSend(v0 objectForKey:{*MEMORY[0x1E695D978]), "isEqualToString:", @"CN"}];
  _MergedGlobals_17[0] = result;
  return result;
}

void CopyPreferredNumberingSystem(uint64_t *a1@<X8>)
{
  v2 = _CFLocaleCopyPreferred();
  v3 = v2;
  if (v2)
  {
    MEMORY[0x1865F0C70](v2);
    v2 = _CFLocaleCopyNumberingSystemForLocaleIdentifier();
  }

  *a1 = v2;
}

uint64_t EnumerateKnownUrduSequencesInString(const __CFString *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  result = InternationalSupportLibraryCore(0);
  if (result)
  {
    result = getISEnumerateKnownUrduSequencesInStringSymbolLoc();
    if (result)
    {
      if (a3 >= 1)
      {
        v10 = a2 + a3;
        v62 = a2 + a3;
        v63 = a1;
        v60 = a5;
        while (1)
        {
          v83 = a2;
          v84 = a3;
          v81 = a2 + a3;
          v82 = a1;
          v80[0] = &v81;
          v80[1] = &v82;
          v80[2] = &v83;
          v11 = GetNextUrduSequenceFromString(__CFString const*,CFRange,BOOL)::$_0::operator()(v80);
          v13 = v12;
          if (v12 >= 1 && a4)
          {
            *&v14 = 0xAAAAAAAAAAAAAAAALL;
            *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v71 = v14;
            v72 = v14;
            v69 = v14;
            v70 = v14;
            v67 = v14;
            v68 = v14;
            *buffer = v14;
            v66 = v14;
            v15 = v82;
            Length = CFStringGetLength(v82);
            theString = v15;
            v76 = 0;
            v77 = Length;
            CharactersPtr = CFStringGetCharactersPtr(v15);
            CStringPtr = 0;
            v74 = CharactersPtr;
            if (!CharactersPtr)
            {
              CStringPtr = CFStringGetCStringPtr(v15, 0x600u);
            }

            v75 = CStringPtr;
            v78 = 0;
            v79 = 0;
            v19 = v81;
            v20 = v11 + v13;
            if (v11 + v13 < v81 && (v20 & 0x8000000000000000) == 0)
            {
              v21 = 0;
              while (1)
              {
                v22 = v77;
                if (v77 <= v20)
                {
                  goto LABEL_29;
                }

                if (v74)
                {
                  v23 = &v74[v76 + v20];
                }

                else
                {
                  if (v75)
                  {
                    goto LABEL_29;
                  }

                  if (v79 <= v20 || v21 > v20)
                  {
                    v25 = v20 - 4;
                    if (v20 < 4)
                    {
                      v25 = 0;
                    }

                    if (v25 + 64 < v77)
                    {
                      v22 = v25 + 64;
                    }

                    v78 = v25;
                    v79 = v22;
                    v85.length = v22 - v25;
                    v85.location = v76 + v25;
                    CFStringGetCharacters(theString, v85, buffer);
                    v21 = v78;
                  }

                  v23 = &buffer[v20 - v21];
                }

                if (*v23 != 8230)
                {
                  break;
                }

                ++v13;
                if (++v20 >= v19)
                {
                  v13 = v19 - v11;
                  goto LABEL_29;
                }
              }
            }

            while (1)
            {
LABEL_29:
              v26 = v13 + v11;
              v83 = v13 + v11;
              v84 = v81 - (v13 + v11);
              v27 = GetNextUrduSequenceFromString(__CFString const*,CFRange,BOOL)::$_0::operator()(v80);
              v29 = v27;
              v30 = v28;
              if (v28 < 1)
              {
                if (!v28)
                {
                  goto LABEL_83;
                }
              }

              else
              {
                v31 = v27 + v28;
                if (v27 + v28 < v19 && (v31 & 0x8000000000000000) == 0)
                {
                  v61 = v19 - v27;
                  v32 = -v31;
                  v33 = v28 + v27 + 64;
                  v34 = &buffer[v31];
                  while (1)
                  {
                    v35 = v29 + v30;
                    v36 = v31 >= 4 ? 4 : v31;
                    v37 = v77;
                    if (v77 <= v35)
                    {
                      break;
                    }

                    if (v74)
                    {
                      v38 = &v74[v76 + v31];
                    }

                    else
                    {
                      if (v75)
                      {
                        break;
                      }

                      if (v79 <= v35 || (v39 = v78, v78 > v35))
                      {
                        v40 = v36 + v32;
                        v41 = v33 - v36;
                        v42 = -v36;
                        v43 = v29 + v30 - v36;
                        v44 = v43 + 64;
                        if (v43 + 64 >= v77)
                        {
                          v44 = v77;
                        }

                        v78 = v43;
                        v79 = v44;
                        v45 = v29 + v30 + v42;
                        if (v77 >= v41)
                        {
                          v37 = v41;
                        }

                        v86.location = v45 + v76;
                        v86.length = v37 + v40;
                        CFStringGetCharacters(theString, v86, buffer);
                        v39 = v78;
                      }

                      v38 = &v34[-v39];
                    }

                    if (*v38 != 8230)
                    {
                      break;
                    }

                    ++v30;
                    ++v31;
                    --v32;
                    ++v33;
                    ++v34;
                    if (v29 + v30 >= v19)
                    {
                      v30 = v61;
                      break;
                    }
                  }

                  a5 = v60;
                }
              }

              v46 = v83;
              if (v83 < v29)
              {
                break;
              }

LABEL_78:
              if (v29 < v11)
              {
                v11 = v29;
              }

              v59 = v30 + v29;
              if (v26 > v30 + v29)
              {
                v59 = v26;
              }

              v13 = v59 - v11;
            }

            if ((v83 & 0x8000000000000000) == 0)
            {
              v47 = -v83;
              v48 = v83 + 64;
              while (1)
              {
                if (v46 >= 4)
                {
                  v49 = 4;
                }

                else
                {
                  v49 = v46;
                }

                v50 = v77;
                if (v77 <= v46)
                {
                  break;
                }

                if (v74)
                {
                  v51 = &v74[v76];
                }

                else
                {
                  if (v75)
                  {
                    v52 = v75[v76 + v46];
                    goto LABEL_65;
                  }

                  v53 = v78;
                  if (v79 <= v46 || v78 > v46)
                  {
                    v55 = v49 + v47;
                    v56 = v48 - v49;
                    v57 = v46 - v49;
                    v58 = v57 + 64;
                    if (v57 + 64 >= v77)
                    {
                      v58 = v77;
                    }

                    v78 = v57;
                    v79 = v58;
                    if (v77 >= v56)
                    {
                      v50 = v56;
                    }

                    v87.location = v57 + v76;
                    v87.length = v50 + v55;
                    CFStringGetCharacters(theString, v87, buffer);
                    v53 = v78;
                  }

                  v51 = &buffer[-v53];
                }

                v52 = v51[v46];
LABEL_65:
                if ((v52 & 0xFF7F) != 0x20)
                {
                  break;
                }

                ++v46;
                --v47;
                ++v48;
                if (v29 == v46)
                {
                  goto LABEL_78;
                }
              }
            }

LABEL_83:
            v10 = v62;
            a1 = v63;
          }

          LOBYTE(buffer[0]) = 0;
          result = (*(a5 + 16))(a5, v11, v13, buffer);
          if ((buffer[0] & 1) == 0 && v13 > 0)
          {
            a2 = v13 + v11;
            a3 = v10 - a2;
            if (v10 - a2 > 0)
            {
              continue;
            }
          }

          return result;
        }
      }
    }
  }

  return result;
}

uint64_t StringContainsKnownUrduSequences(const __CFString *a1, CFRange a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___Z32StringContainsKnownUrduSequencesPK10__CFString7CFRange_block_invoke;
  v4[3] = &unk_1E6E375D0;
  v4[4] = &v5;
  EnumerateKnownUrduSequencesInString(a1, a2.location, a2.length, 0, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t ___Z32StringContainsKnownUrduSequencesPK10__CFString7CFRange_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 24) = 1;
  *a4 = 1;
  return result;
}

void TCFMutableSet::TCFMutableSet(TCFMutableSet *this, id a2)
{
  if (a2)
  {
    Mutable = a2;
  }

  else
  {
    Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
  }

  *this = Mutable;
}

uint64_t InternationalSupportLibraryCore(char **a1)
{
  if (!InternationalSupportLibraryCore(char **)::frameworkLibrary)
  {
    InternationalSupportLibraryCore(char **)::frameworkLibrary = _sl_dlopen();
  }

  return InternationalSupportLibraryCore(char **)::frameworkLibrary;
}

uint64_t getISEnumerateKnownUrduSequencesInStringSymbolLoc(void)
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getISEnumerateKnownUrduSequencesInStringSymbolLoc(void)::ptr;
  v6 = getISEnumerateKnownUrduSequencesInStringSymbolLoc(void)::ptr;
  if (!getISEnumerateKnownUrduSequencesInStringSymbolLoc(void)::ptr)
  {
    v2[0] = MEMORY[0x1E69E9820];
    v2[1] = 3221225472;
    v2[2] = ___ZL49getISEnumerateKnownUrduSequencesInStringSymbolLocv_block_invoke;
    v2[3] = &unk_1E6E37AF8;
    v2[4] = &v3;
    ___ZL49getISEnumerateKnownUrduSequencesInStringSymbolLocv_block_invoke(v2);
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t ___ZL31InternationalSupportLibraryCorePPc_block_invoke()
{
  result = _sl_dlopen();
  InternationalSupportLibraryCore(char **)::frameworkLibrary = result;
  return result;
}

void *___ZL49getISEnumerateKnownUrduSequencesInStringSymbolLocv_block_invoke(void *a1)
{
  v7 = 0;
  v3 = InternationalSupportLibraryCore(&v7);
  if (!v3)
  {
    a1 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *InternationalSupportLibrary()"];
    v4 = [a1 handleFailureInFunction:v6 file:@"LocaleSupport.cpp" lineNumber:1061 description:{@"%s", v7}];
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

  result = dlsym(v1, "ISEnumerateKnownUrduSequencesInString");
  *(*(a1[4] + 8) + 24) = result;
  getISEnumerateKnownUrduSequencesInStringSymbolLoc(void)::ptr = *(*(a1[4] + 8) + 24);
  return result;
}

uint64_t GetNextUrduSequenceFromString(__CFString const*,CFRange,BOOL)::$_0::operator()(uint64_t a1)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x4012000000;
  v18 = __Block_byref_object_copy__1;
  v19 = __Block_byref_object_dispose__1;
  v20 = "";
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v22 = 0xAAAAAAAAAAAAAAAALL;
  v1 = *(a1 + 8);
  v21 = **a1;
  v22 = 0;
  v2 = *v1;
  v3 = *(a1 + 16);
  v4 = *v3;
  v5 = v3[1];
  v10 = MEMORY[0x1E69E9820];
  v11 = 3221225472;
  v12 = ___ZZL29GetNextUrduSequenceFromStringPK10__CFString7CFRangebENK3__0clEv_block_invoke;
  v13 = &unk_1E6E375D0;
  v14 = &v15;
  ISEnumerateKnownUrduSequencesInStringSymbolLoc = getISEnumerateKnownUrduSequencesInStringSymbolLoc();
  if (ISEnumerateKnownUrduSequencesInStringSymbolLoc)
  {
    ISEnumerateKnownUrduSequencesInStringSymbolLoc(v2, v4, v5, &v10);
    v7 = v16[6];
    _Block_object_dispose(&v15, 8);
    return v7;
  }

  else
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    result = [v9 handleFailureInFunction:objc_msgSend(MEMORY[0x1E696AEC0] file:"stringWithUTF8String:" lineNumber:"void SoftLinked__ISEnumerateKnownUrduSequencesInString(CFStringRef description:{CFRange, void (^)(CFRange, BOOL *))"), @"LocaleSupport.cpp", 1062, @"%s", dlerror(), v10, v11, v12, v13, v14}];
    __break(1u);
  }

  return result;
}

__n128 __Block_byref_object_copy__1(__n128 *a1, __n128 *a2)
{
  result = a2[3];
  a1[3] = result;
  return result;
}

uint64_t ___ZZL29GetNextUrduSequenceFromStringPK10__CFString7CFRangebENK3__0clEv_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  *(*(*(result + 32) + 8) + 48) = a2;
  *(*(*(result + 32) + 8) + 56) = a3;
  *a4 = 1;
  return result;
}

uint64_t std::__function::__func<CreateCanonicalLanguages(__CFArray const*)::$_0,std::allocator<CreateCanonicalLanguages(__CFArray const*)::$_0>,TCFRef<void const*> ()(void const*)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF2580A8;
  a2[1] = v2;
  return result;
}

void std::__function::__func<CreateCanonicalLanguages(__CFArray const*)::$_0,std::allocator<CreateCanonicalLanguages(__CFArray const*)::$_0>,TCFRef<void const*> ()(void const*)>::operator()(uint64_t a1@<X0>, CFTypeRef *a2@<X1>, void *a3@<X8>)
{
  v4 = *a2;
  if (CFGetTypeID(*a2) == *(a1 + 8))
  {
    CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(*MEMORY[0x1E695E480], v4);
    *a3 = atomic_exchange(&CanonicalLanguageIdentifierFromString, 0);
  }

  else
  {
    *a3 = 0;
  }
}

id NormalizeLanguage(__CFString *a1, unsigned int a2)
{
  v4 = 0xAAAAAAAAAAAAAAAALL;
  LanguageIdentifierByNormalizing(a1, a2, &v4);
  v2 = atomic_exchange(&v4, 0);

  return v2;
}

CGColorRef CopyCGColor(void *a1)
{
  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = CGColorRetain([a1 CGColor]);
  objc_autoreleasePoolPop(v2);
  return v3;
}

CFTypeID CTRubyAnnotationGetTypeID(void)
{
  if (TCFBase<TRubyAnnotation>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TRubyAnnotation>::GetTypeID(void)::once, 0, TCFBase<TRubyAnnotation>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return TCFBase<TRubyAnnotation>::fTypeID;
}

CTRubyAnnotationRef CTRubyAnnotationCreate(CTRubyAlignment alignment, CTRubyOverhang overhang, CGFloat sizeFactor, CFStringRef *text)
{
  v8 = TCFBase<TRubyAnnotation>::Allocate();
  v9 = v8;
  if (v8)
  {
    v10 = 0;
    *(v8 + 48) = alignment;
    *(v8 + 16) = 0;
    *(v8 + 24) = TRubyAnnotation::Hash;
    *(v8 + 32) = 0;
    *(v8 + 40) = v8 + 48;
    *(v8 + 49) = overhang;
    *(v8 + 56) = sizeFactor;
    *(v8 + 96) = 0;
    *(v8 + 104) = 0;
    *(v8 + 112) = 0;
    *(v8 + 120) = 256;
    do
    {
      *&v9[v10 * 8 + 64] = text[v10];
      ++v10;
    }

    while (v10 != 4);
  }

  v13 = v9;
  v11 = atomic_exchange(&v13, 0);

  return v11;
}

CTRubyAnnotationRef CTRubyAnnotationCreateWithAttributes(CTRubyAlignment alignment, CTRubyOverhang overhang, CTRubyPosition position, CFStringRef string, CFDictionaryRef attributes)
{
  v10 = TCFBase<TRubyAnnotation>::Allocate();
  v11 = v10;
  if (v10)
  {
    v10[2] = 0;
    v10[3] = TRubyAnnotation::Hash;
    v10[4] = 0;
    v10[5] = v10 + 6;
    TRubyAnnotation::TRubyAnnotation((v10 + 6), alignment, overhang, position, string, attributes);
  }

  v14 = v11;
  v12 = atomic_exchange(&v14, 0);

  return v12;
}

unint64_t CTRubyAnnotationCreateWithAttributedString(CTRubyAlignment a1, CTRubyOverhang a2, CTRubyPosition a3, void *a4)
{
  v8 = TCFBase<TRubyAnnotation>::Allocate();
  v9 = v8;
  if (v8)
  {
    v8[2] = 0;
    v8[3] = TRubyAnnotation::Hash;
    v8[4] = 0;
    v8[5] = v8 + 6;
    TRubyAnnotation::TRubyAnnotation((v8 + 6), a1, a2, a3, a4);
  }

  v12 = v9;
  v10 = atomic_exchange(&v12, 0);

  return v10;
}

CTRubyAnnotationRef CTRubyAnnotationCreateCopy(CTRubyAnnotationRef rubyAnnotation)
{
  if (!rubyAnnotation)
  {
    return 0;
  }

  v3 = 0xAAAAAAAAAAAAAAAALL;
  TCFBase_NEW<CTRubyAnnotation,CTRubyAnnotation const&>(rubyAnnotation, &v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

void TCFBase_NEW<CTRubyAnnotation,CTRubyAnnotation const&>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = TCFBase<TRubyAnnotation>::Allocate();
  v5 = v4;
  if (v4)
  {
    v4[2] = 0;
    v4[3] = TRubyAnnotation::Hash;
    v4[4] = 0;
    v4[5] = v4 + 6;
    TRubyAnnotation::TRubyAnnotation((v4 + 6), *(a1 + 40));
  }

  *a2 = v5;
}

CTRubyAlignment CTRubyAnnotationGetAlignment(CTRubyAnnotationRef rubyAnnotation)
{
  if (rubyAnnotation)
  {
    return **(rubyAnnotation + 5);
  }

  else
  {
    return -1;
  }
}

CTRubyOverhang CTRubyAnnotationGetOverhang(CTRubyAnnotationRef rubyAnnotation)
{
  if (rubyAnnotation)
  {
    return *(*(rubyAnnotation + 5) + 1);
  }

  else
  {
    return -1;
  }
}

CGFloat CTRubyAnnotationGetSizeFactor(CTRubyAnnotationRef rubyAnnotation)
{
  if (rubyAnnotation)
  {
    return *(*(rubyAnnotation + 5) + 8);
  }

  else
  {
    return 0.0;
  }
}

CFStringRef CTRubyAnnotationGetTextForPosition(CTRubyAnnotationRef rubyAnnotation, CTRubyPosition position)
{
  result = 0;
  if (rubyAnnotation)
  {
    if (position <= kCTRubyPositionInline)
    {
      return *(*(rubyAnnotation + 5) + 8 * position + 16);
    }
  }

  return result;
}

uint64_t TCFBase<TRubyAnnotation>::GetTypeID(void)::{lambda(void *)#1}::__invoke()
{
  TCFBase<TRubyAnnotation>::CreateTypeID();
  v0 = TCFBase<TRubyAnnotation>::fTypeID;

  return MEMORY[0x1EEDB8558](v0, "NSCTRubyAnnotation");
}

uint64_t TCFBase<TRubyAnnotation>::CreateTypeID()
{
  {
    TCFBase<TRubyAnnotation>::CreateTypeID(void)::runtimeClass = 0;
    *algn_1ED566FC8 = "CTRubyAnnotation";
    qword_1ED566FD0 = 0;
    unk_1ED566FD8 = 0;
    qword_1ED566FE0 = TCFBase<TRubyAnnotation>::ClassDestruct;
    qword_1ED566FE8 = TCFBase<TRubyAnnotation>::ClassEqual;
    qword_1ED566FF0 = TCFBase<TRubyAnnotation>::ClassHash;
    unk_1ED566FF8 = 0;
    qword_1ED567000 = TCFBase<TRubyAnnotation>::ClassDebug;
    unk_1ED567008 = 0;
    qword_1ED567010 = 0;
    unk_1ED567018 = 0;
  }

  result = _CFRuntimeRegisterClass();
  TCFBase<TRubyAnnotation>::fTypeID = result;
  return result;
}

void TCFBase<TRubyAnnotation>::ClassDestruct(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v2(a1);
  }

  v3 = *(a1 + 40);

  TRubyAnnotation::~TRubyAnnotation(v3);
}

void *TCFBase<TRubyAnnotation>::ClassHash(void *result)
{
  v1 = result[3];
  v2 = result[4];
  if (v2)
  {
    v3 = (result[4] & 1 | v1) == 0;
  }

  else
  {
    v3 = 1;
  }

  v4 = !v3;
  if (v1)
  {
    v5 = 0;
  }

  else
  {
    v5 = v4 == 0;
  }

  if (!v5)
  {
    v6 = (result[5] + (v2 >> 1));
    if (v2)
    {
      return (*(*v6 + v1))();
    }

    else
    {
      return (v1)(v6);
    }
  }

  return result;
}

uint64_t TCFBase<TRubyAnnotation>::Allocate()
{
  if (TCFBase<TRubyAnnotation>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TRubyAnnotation>::GetTypeID(void)::once, 0, TCFBase<TRubyAnnotation>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return _CFRuntimeCreateInstance();
}

Class _CTFontCollectionEnableBridging(uint64_t a1)
{
  result = objc_lookUpClass("NSCTFontCollection");
  if (result)
  {

    return MEMORY[0x1EEDB8558](a1, "NSCTFontCollection");
  }

  return result;
}

Class _CTGlyphInfoEnableBridging(uint64_t a1)
{
  result = objc_lookUpClass("NSCTGlyphInfo");
  if (result)
  {

    return MEMORY[0x1EEDB8558](a1, "NSCTGlyphInfo");
  }

  return result;
}