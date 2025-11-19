uint64_t TAttributes::SetContextAttributesForBackground(TAttributes *this, CGContextRef c)
{
  v2 = *(this + 137);
  if (v2)
  {
    CGContextSaveGState(c);
    BackgroundColor = TAttributes::GetBackgroundColor(atomic_load_explicit(this, memory_order_acquire), 0, v5);
    TAttributes::SetFillColor(c, BackgroundColor, v7);
    CGContextSetShadowWithColor(c, *MEMORY[0x1E695F060], 0.0, 0);
  }

  return v2 & 1;
}

BOOL TAttributes::SetContextAttributes(atomic_ullong *this, CGContext *a2, char a3)
{
  if ((a3 & 1) == 0)
  {
    atomic_load_explicit(this + 2, memory_order_acquire);
  }

  TFont::SetInContext(*(atomic_load_explicit(this + 2, memory_order_acquire) + 40), a2);
  v6 = *(this + 136);
  if (!v6)
  {
    CGContextSetFillColorWithColor(a2, 0);
    return 0;
  }

  v7 = (v6 & 0x1C) != 0;
  if ((this[17] & 0x1C) != 0)
  {
    CGContextSaveGState(a2);
    v6 = *(this + 136);
  }

  if (v6)
  {
    if ((v6 & 4) == 0)
    {
      goto LABEL_8;
    }

LABEL_16:
    Value = CFDictionaryGetValue(atomic_load_explicit(this, memory_order_acquire), @"NSStrokeWidth");
    if (!Value)
    {
      goto LABEL_23;
    }

    valuePtr = NAN;
    CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
    v11 = *(*(atomic_load_explicit(this + 2, memory_order_acquire) + 40) + 24);
    v12 = valuePtr * (v11 * 0.01);
    valuePtr = v12;
    if (v12 <= 0.0)
    {
      if (v12 >= 0.0)
      {
        CGContextSetTextDrawingMode(a2, kCGTextFill);
        goto LABEL_23;
      }

      CGContextSetTextDrawingMode(a2, kCGTextFillStroke);
      v13 = -valuePtr;
    }

    else
    {
      CGContextSetTextDrawingMode(a2, kCGTextStroke);
      v13 = valuePtr;
    }

    CGContextSetLineWidth(a2, v13);
LABEL_23:
    StrokeColor = TAttributes::GetStrokeColor(atomic_load_explicit(this, memory_order_acquire), 0, v10);
    if (!StrokeColor)
    {
      if ((this[17] & 2) != 0)
      {
        StrokeColor = atomic_load_explicit(this + 4, memory_order_acquire);
      }

      else
      {
        StrokeColor = 0;
      }
    }

    TAttributes::SetStrokeColor(a2, StrokeColor, v15);
    v6 = *(this + 136);
    if ((v6 & 0x10) == 0)
    {
      goto LABEL_9;
    }

LABEL_28:
    CGContextSetStyle();
    return v7;
  }

  if ((v6 & 2) != 0)
  {
    explicit = atomic_load_explicit(this + 4, memory_order_acquire);
  }

  else
  {
    explicit = 0;
  }

  TAttributes::SetFillColor(a2, explicit, v5);
  v6 = *(this + 136);
  if ((v6 & 4) != 0)
  {
    goto LABEL_16;
  }

LABEL_8:
  if ((v6 & 0x10) != 0)
  {
    goto LABEL_28;
  }

LABEL_9:
  if ((v6 & 8) != 0)
  {
    SetNSShadow(a2, atomic_load_explicit(this + 5, memory_order_acquire));
  }

  return v7;
}

void TFont::SetInContext(TBaseFont **this, CGContext *a2)
{
  InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(this[51]);
  if (InitializedGraphicsFont)
  {
    CGContextSetFont(a2, InitializedGraphicsFont);
    v5 = *(this + 3);

    CGContextSetFontSize(a2, v5);
  }
}

void SetNSColor(CGContext *a1, id a2)
{
  v3 = [a2 CGColor];
  CGContextSetFillColorWithColor(a1, v3);

  CGContextSetStrokeColorWithColor(a1, v3);
}

BOOL HandleFlippedTextMatrix(CGContext *a1, CGAffineTransform *a2)
{
  d = a2->d;
  if (d < 0.0)
  {
    CGContextSaveGState(a1);
    CGContextTranslateCTM(a1, 0.0, a2->ty + a2->ty);
    CGContextScaleCTM(a1, 1.0, -1.0);
    a2->d = -a2->d;
    v5 = *&a2->c;
    *&v7.a = *&a2->a;
    *&v7.c = v5;
    *&v7.tx = *&a2->tx;
    CGContextSetTextMatrix(a1, &v7);
  }

  return d < 0.0;
}

uint64_t TBaseFont::SupportsConnectedLanguage(TBaseFont *this)
{
  v14[2] = *MEMORY[0x1E69E9840];
  if ((*(this + 46) & 0x800000) != 0)
  {
    return (*(this + 45) >> 23) & 1;
  }

  explicit = atomic_load_explicit(this + 12, memory_order_acquire);
  if (explicit == @".SFUI" || explicit && CFStringHasPrefix(explicit, @".SFUI") || IsPingFangPostScriptName(explicit))
  {
    goto LABEL_26;
  }

  if (qword_1EA869748 == -1)
  {
    if (!explicit)
    {
      goto LABEL_17;
    }
  }

  else
  {
    dispatch_once_f(&qword_1EA869748, 0, TBaseFont::SupportsConnectedLanguage(void)const::$_0::__invoke);
    if (!explicit)
    {
      goto LABEL_17;
    }
  }

  if (qword_1EA869740 && CFSetContainsValue(qword_1EA869740, explicit))
  {
    goto LABEL_25;
  }

  location = CFStringFind(explicit, @"-", 0).location;
  if (location != -1)
  {
    v15.length = location;
    v15.location = 0;
    v4 = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], explicit, v15);
    v5 = qword_1EA869740;
    v6 = v4;
    v7 = v6;
    if (v5)
    {
      v8 = CFSetContainsValue(v5, v6);

      if (v8)
      {
        atomic_fetch_or_explicit(this + 45, 0x800000u, memory_order_relaxed);
        atomic_fetch_or_explicit(this + 46, 0x800000u, memory_order_relaxed);
        v9 = v4;
LABEL_28:

        return 1;
      }
    }

    else
    {
    }
  }

LABEL_17:
  if (((*(*this + 712))(this) & 1) == 0)
  {
    v14[0] = 0xAAAAAAAAAAAAAAAALL;
    v14[1] = 0xAAAAAAAAAAAAAAAALL;
    v12 = 0;
    if (TBaseFont::GetOS2UnicodeRanges(this, v14, &v12))
    {
      v11 = 0;
      v13[0] = xmmword_18477AB20;
      v13[1] = xmmword_18477AB30;
      while (((*(v14 + ((*(v13 + v11) >> 3) & 0x1FFFFFFC)) >> *(v13 + v11)) & 1) == 0)
      {
        v11 += 4;
        if (v11 == 32)
        {
          goto LABEL_22;
        }
      }

      atomic_fetch_or_explicit(this + 45, 0x800000u, memory_order_relaxed);
      atomic_fetch_or_explicit(this + 46, 0x800000u, memory_order_relaxed);
      v9 = v12;
      goto LABEL_28;
    }

LABEL_22:
  }

  if (((*(*this + 712))(this) & 1) != 0 || !(*(*this + 384))(this))
  {
LABEL_26:
    result = 0;
    atomic_fetch_or_explicit(this + 45, 0, memory_order_relaxed);
    atomic_fetch_or_explicit(this + 46, 0x800000u, memory_order_relaxed);
    return result;
  }

LABEL_25:
  atomic_fetch_or_explicit(this + 45, 0x800000u, memory_order_relaxed);
  atomic_fetch_or_explicit(this + 46, 0x800000u, memory_order_relaxed);
  return 1;
}

CTFontRef CTFontCreateCopyOfSystemUIFontWithGrade(TFont **a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!a1 || !TFont::IsSystemUIFontAndForShaping(a1[5], &v8) || (v11 = @"NSCTFontTraitsAttribute", v9 = @"NSCTFontGradeTrait", v10 = [MEMORY[0x1E696AD98] numberWithInt:a2], v12[0] = objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", &v10, &v9, 1), v4 = CTFontDescriptorCreateWithAttributes(objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v12, &v11, 1)), CopyWithAttributes = CTFontCreateCopyWithAttributes(a1, 0.0, 0, v4), v6 = CTFontCopyPhysicalFont(CopyWithAttributes), v6, v4, !v6))
  {
    v8 = a1;
    CopyWithAttributes = atomic_exchange(&v8, 0);
  }

  return CopyWithAttributes;
}

CTFontRef CTFontCreateCopyWithAttributes(CTFontRef font, CGFloat size, const CGAffineTransform *matrix, CTFontDescriptorRef attributes)
{
  if (!font)
  {
    return 0;
  }

  v8 = *(font + 5);
  if (attributes || matrix || v8[3] != size)
  {
    v17 = 0xAAAAAAAAAAAAAAAALL;
    TFont::CopyDescriptor(v8, 0, &v17);
    if (atomic_load_explicit(&v17, memory_order_acquire))
    {
      if (attributes)
      {
        v10 = *(attributes + 5);
        v16 = 0xAAAAAAAAAAAAAAAALL;
        TDescriptor::CopyAttributes(v10, &v16);
        if (atomic_load_explicit(&v16, memory_order_acquire))
        {
          v11 = CFGetTypeID(atomic_load_explicit(&v16, memory_order_acquire));
          if (v11 == CFDictionaryGetTypeID())
          {
            if (CFDictionaryGetCount(atomic_load_explicit(&v16, memory_order_acquire)))
            {
              explicit = atomic_load_explicit(&v17, memory_order_acquire);
              v15 = 0xAAAAAAAAAAAAAAAALL;
              v13 = atomic_load_explicit(&v16, memory_order_acquire);
              TCFBase_NEW<CTFontDescriptor,CTFontDescriptor*,__CFDictionary const*&>(&explicit, &v13, &v15);
              if (atomic_load_explicit(&v15, memory_order_acquire))
              {
                TCFRef<__CTFont const*>::Retain(&v17, atomic_load_explicit(&v15, memory_order_acquire));
              }
            }
          }
        }
      }

      v12 = CTFontCreateWithFontDescriptor(atomic_load_explicit(&v17, memory_order_acquire), size, matrix);
    }

    else
    {
      v12 = 0;
    }

    return v12;
  }

  return font;
}

unint64_t CTFontCopyPhysicalFont(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 40);
  v2 = *(v1 + 408);
  if (!v2)
  {
    return 0;
  }

  v8 = *(v1 + 24);
  v7 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v2 + 528))(&v7);
  if (!atomic_load_explicit(&v7, memory_order_acquire))
  {

    return 0;
  }

  explicit = atomic_load_explicit(&v7, memory_order_acquire);
  v6 = 0xAAAAAAAAAAAAAAAALL;
  TCFBase_NEW<CTFont,__CTFontDescriptor const*,double &,decltype(nullptr),decltype(nullptr)>(&explicit, &v8, &v6);
  v3 = atomic_exchange(&v6, 0);

  return v3;
}

void FindAndReplace(CFStringRef *a1, atomic_ullong *a2, const __CFString *a3, const __CFString *a4)
{
  if (atomic_load_explicit(a2, memory_order_acquire) && (Length = CFStringGetLength(atomic_load_explicit(a2, memory_order_acquire)), v12.location = 0, v12.length = Length, CFStringFindWithOptions(atomic_load_explicit(a2, memory_order_acquire), a3, v12, 0, 0)))
  {
    v9 = *MEMORY[0x1E695E480];
    MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, atomic_load_explicit(a2, memory_order_acquire));
    v13.location = 0;
    v13.length = Length;
    CFStringFindAndReplace(MutableCopy, a3, a4, v13, 0);
    *a1 = CFStringCreateCopy(v9, MutableCopy);
  }

  else
  {
    *a1 = atomic_exchange(a2, 0);
  }
}

void TBaseFont::CopyVariation(atomic_ullong *this@<X0>, unint64_t *a2@<X8>)
{
  v10 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyAttributeInternal(this, @"NSCTFontVariationAttribute", &v9);
  v10 = atomic_exchange(&v9, 0);

  explicit = atomic_load_explicit(&v10, memory_order_acquire);
  v5 = MEMORY[0x1E695E738];
  if (explicit)
  {
    goto LABEL_12;
  }

  v9 = 0xAAAAAAAAAAAAAAAALL;
  CopyVariationAttributeForSystemFont(atomic_load_explicit(this + 12, memory_order_acquire), &v9);
  if (atomic_load_explicit(&v9, memory_order_acquire))
  {
    if (CFDictionaryGetCount(atomic_load_explicit(&v9, memory_order_acquire)))
    {
      TCFRef<__CTFont const*>::Retain(&v10, atomic_load_explicit(&v9, memory_order_acquire));
      goto LABEL_9;
    }

    v8 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 120))(&v8, this);
    if (atomic_load_explicit(&v8, memory_order_acquire))
    {
      TCFRef<__CTFont const*>::Retain(&v10, atomic_load_explicit(&v9, memory_order_acquire));
    }
  }

  else
  {
    TBaseFont::GetInitializedGraphicsFont(this);
    CreateVariationDictFromGraphicsFont(&v8);
  }

LABEL_9:
  if (atomic_load_explicit(&v10, memory_order_acquire))
  {
    v7 = atomic_load_explicit(&v10, memory_order_acquire);
    TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v7, @"NSCTFontVariationAttribute");
  }

  else
  {
    TBaseFont::SetAttributeInternal<__CFDictionary const*>(this, *v5, @"NSCTFontVariationAttribute");
  }

LABEL_12:
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

uint64_t TInstanceFont::TInstanceFont(uint64_t a1, uint64_t a2, uint64_t a3, const __CFDictionary *a4)
{
  TBaseFont::TBaseFont(a1, a2);
  *v7 = &unk_1EF25A9B0;
  *(v7 + 624) = 0;
  *(v7 + 600) = 0u;
  *(v7 + 616) = 0;
  *(v7 + 632) = 0u;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  GetBaseCGFont(a2, a4, &v11);
  v8 = CGFontCopyVariations(atomic_load_explicit(&v11, memory_order_acquire));
  TInstanceFont::InitWithVariation(a1, atomic_load_explicit(&v11, memory_order_acquire), v8, a4);
  TCFRef<__CTFont const*>::Retain((a1 + 640), atomic_load_explicit(&v11, memory_order_acquire));
  if (IsNamedInstance(atomic_load_explicit(&v11, memory_order_acquire)))
  {
  }

  if ((*(*a2 + 16))(a2) == 1414088260)
  {
    v9 = *(a2 + 616);
    *(a1 + 624) = *(a2 + 624);
    *(a1 + 616) = v9;
  }

  return a1;
}

void GetBaseCGFont(atomic_ullong *a1@<X0>, const __CFDictionary *a2@<X1>, atomic_ullong *a3@<X8>)
{
  if ((*(*a1 + 16))(a1) != 1414088260 || !(*(*a1 + 464))(a1))
  {
    v8 = (*(*a1 + 576))(a1);
    goto LABEL_8;
  }

  explicit = atomic_load_explicit(a1 + 80, memory_order_acquire);
  if (!a2)
  {
    goto LABEL_13;
  }

  v7 = CFDictionaryContainsKey(a2, &unk_1EF27A740);
  if (CFDictionaryGetCount(a2) <= 1 && v7)
  {
    v8 = explicit;
LABEL_8:
    *a3 = v8;
    return;
  }

  if (v7)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, a2);
    CFDictionaryRemoveValue(MutableCopy, &unk_1EF27A740);
    CreateFontWithVariation(explicit, MutableCopy, a3);
  }

  else
  {
LABEL_13:

    CreateFontWithVariation(explicit, a2, a3);
  }
}

void TInstanceFont::~TInstanceFont(id *this)
{
  TInstanceFont::~TInstanceFont(this);

  JUMPOUT(0x1865F22D0);
}

{
  *this = &unk_1EF25A9B0;

  TBaseFont::~TBaseFont(this);
}

void TBaseFont::~TBaseFont(TBaseFont *this)
{
  v22 = *MEMORY[0x1E69E9840];
  *this = &unk_1EF2598E8;
  if (atomic_load_explicit(this + 10, memory_order_acquire))
  {
    explicit = atomic_load_explicit(this + 10, memory_order_acquire);
    if (explicit)
    {
      [atomic_load_explicit(TCGFontCache::GetCache(this) memory:"removeObjectForKey:" order:explicitacquire)];
    }
  }

  if ((*(this + 45) & 0x10000000) == 0)
  {
    memset(__b, 170, sizeof(__b));
    if (CFURLGetFileSystemRepresentation(atomic_load_explicit(this + 10, memory_order_acquire), 1u, __b, 1025))
    {
      FPFontPurgeCaches();
    }
  }

  v3 = *(this + 26);
  if (v3)
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>>>::~__hash_table(v3 + 8);
    MEMORY[0x1865F22D0](v3, 0x10A0C40E0DB7AACLL);
  }

  v4 = *(this + 27);
  if (v4)
  {
    v5 = std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(v4);
    MEMORY[0x1865F22D0](v5, 0x10A0C408EF24B1CLL);
  }

  v6 = *(this + 30);
  if (v6)
  {
    MEMORY[0x1865F22D0](v6, 0x1000C4089CA3EB1);
  }

  v7 = *(this + 74);
  if (v7 + 1 >= 2)
  {

    MEMORY[0x1865F22D0](v7, 0xE0C40F3C7A20ELL);
  }

  for (i = 584; i != 544; i -= 8)
  {
  }

  v9 = *(this + 61);
  if (v9)
  {
    std::vector<std::unique_ptr<unsigned short const[]>,TInlineBufferAllocator<std::unique_ptr<unsigned short const[]>,4ul>>::__base_destruct_at_end[abi:fn200100](this + 488, v9);
    v10 = *(this + 61);
    v11 = this + 544;
    if (this + 512 <= v10 && v11 > v10)
    {
      if (*(this + 63) == *(this + 68))
      {
        *v11 = v10;
      }
    }

    else
    {
      operator delete(v10);
    }
  }

  v13 = *(this + 56);
  if (v13)
  {
    std::vector<std::unique_ptr<unsigned short const[]>,TInlineBufferAllocator<std::unique_ptr<unsigned short const[]>,4ul>>::__base_destruct_at_end[abi:fn200100](this + 448, v13);
    v14 = *(this + 56);
    if (this + 472 > v14 || this + 480 <= v14)
    {
      operator delete(v14);
    }

    else if (*(this + 58) == *(this + 60))
    {
      *(this + 60) = v14;
    }
  }

  v15 = 440;
  do
  {
    v15 -= 40;
    v16 = (this + v15);
    v17 = *(this + v15 + 16);
    if (v17)
    {
      do
      {
        v18 = *v17;
        OTL::Lookup::~Lookup((v17 + 3));
        operator delete(v17);
        v17 = v18;
      }

      while (v18);
    }

    v19 = *v16;
    *v16 = 0;
    if (v19)
    {
      operator delete(v19);
    }
  }

  while (v15 != 360);

  for (j = 168; j != 144; j -= 8)
  {
  }

  do
  {

    j -= 8;
  }

  while (j != 120);
}

{
  TBaseFont::~TBaseFont(this);

  JUMPOUT(0x1865F22D0);
}

void TTenuousComponentFont::~TTenuousComponentFont(id *this)
{
  *this = &unk_1EF25A118;

  TComponentFont::~TComponentFont(this);

  JUMPOUT(0x1865F22D0);
}

{
  *this = &unk_1EF25A118;

  TComponentFont::~TComponentFont(this);
}

void TComponentFont::~TComponentFont(void **this)
{
  *this = &unk_1EF259D78;
  free(this[91]);
  v2 = this[92];
  if (v2)
  {
    MEMORY[0x1865F22D0](v2, 0x1000C4089CA3EB1);
  }

  TBaseFont::~TBaseFont(this);
}

{
  TComponentFont::~TComponentFont(this);

  JUMPOUT(0x1865F22D0);
}

void TBaseFont::TBaseFont(TBaseFont *this, atomic_ullong *a2)
{
  *(this + 2) = 0;
  *this = &unk_1EF2598E8;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  v4 = a2 + 45;
  (*(*a2 + 200))(a2);
  *(this + 11) = atomic_load_explicit(a2 + 11, memory_order_acquire);
  *(this + 12) = atomic_load_explicit(a2 + 12, memory_order_acquire);
  *(this + 13) = atomic_load_explicit(a2 + 13, memory_order_acquire);
  *(this + 28) = 0;
  *(this + 120) = 0u;
  *(this + 136) = 0u;
  *(this + 152) = 0u;
  *(this + 164) = 0u;
  v5 = atomic_load(v4);
  v6 = *MEMORY[0x1E695F058];
  v7 = *(MEMORY[0x1E695F058] + 16);
  *(this + 18) = *MEMORY[0x1E695EFF8];
  *(this + 19) = v6;
  *(this + 45) = v5 & 0xB0000000;
  *(this + 46) = -1342177280;
  *(this + 16) = 0u;
  *(this + 17) = 0u;
  *(this + 12) = 0u;
  *(this + 13) = 0u;
  *(this + 29) = 0;
  *(this + 30) = 0;
  *(this + 62) = 0;
  *(this + 20) = v7;
  *(this + 336) = 0;
  *(this + 360) = 0u;
  *(this + 376) = 0u;
  *(this + 344) = 0u;
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
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  TBaseFont::Init(this, 0);
}

CFTypeID TAttributes::HandleTrackingAttribute(CFTypeID result, TAttributes **a2)
{
  if (result)
  {
    v3 = result;
    valuePtr = NAN;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID() || v4 == CFBooleanGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberDoubleType, &valuePtr);
    }

    else
    {
      result = CFStringGetTypeID();
      if (v4 != result)
      {
        return result;
      }

      valuePtr = CFStringGetDoubleValue(v3);
    }

    result = TAttributes::EnsureRareData(*a2);
    v5 = valuePtr;
    *(result + 16) = valuePtr;
    *(result + 24) = 1;
    if (v5 != 0.0)
    {
      *(*a2 + 69) |= 0x100u;
    }
  }

  return result;
}

uint64_t TAttributes::EnsureRareData(TAttributes *this)
{
  result = *(this + 15);
  if (!result)
  {
    operator new();
  }

  return result;
}

const void *TAttributes::HandleStrokeWidthAttribute(const void *result, uint64_t a2)
{
  if (result)
  {
    v3 = CFGetTypeID(result);
    result = CFNumberGetTypeID();
    if (v3 == result || (result = CFBooleanGetTypeID(), v3 == result) || (result = CFStringGetTypeID(), v3 == result))
    {
      *(*a2 + 136) |= 4u;
    }
  }

  return result;
}

uint64_t std::vector<CGSize,TInlineBufferAllocator<CGSize,64ul>>::__vallocate[abi:fn200100](void *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v3 = a1 + 131;
  result = a1[131];
  v5 = result + 16 * a2;
  if (v5 > v3)
  {
    operator new();
  }

  *v3 = v5;
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 16 * a2;
  return result;
}

void TAttributes::SetFillColor(CGContextRef c, void *cf, const void *a3)
{
  if (!cf)
  {
    if (qword_1ED567C40 != -1)
    {
      dispatch_once_f(&qword_1ED567C40, 0, GetBlackColor(void)::$_0::__invoke);
    }

    v7 = qword_1ED567C38;
    v6 = c;
    goto LABEL_7;
  }

  v5 = CFGetTypeID(cf);
  if (v5 == CGColorGetTypeID())
  {
    v6 = c;
    v7 = cf;
LABEL_7:

    CGContextSetFillColorWithColor(v6, v7);
    return;
  }

  SetNSColor(c, cf);
}

uint64_t TAttributes::HandleUnderlineAttribute(uint64_t result, TAttributes **a2)
{
  if (result)
  {
    v3 = result;
    valuePtr = -1431655766;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID() || v4 == CFBooleanGetTypeID())
    {
      result = CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
      v5 = valuePtr;
    }

    else
    {
      result = CFStringGetTypeID();
      if (v4 != result)
      {
        return result;
      }

      result = CFStringGetIntValue(v3);
      v5 = result;
      valuePtr = result;
    }

    if (v5)
    {
      result = TAttributes::EnsureRareData(*a2);
      *(result + 56) = v5;
      *(*a2 + 137) |= 4u;
    }
  }

  return result;
}

void TComponentFont::CopyPhysicalFontDescriptor(TComponentFont *this@<X0>, double a2@<D0>, void *a3@<X8>)
{
  v5 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 200))(&v5, a2);
  if (atomic_load_explicit(&v5, memory_order_acquire))
  {
    TDescriptorSource::TDescriptorSource(&v4);
    TDescriptorSource::CopyDescriptor(&v4, atomic_load_explicit(&v5, memory_order_acquire), 0, 0, a3);
  }

  else
  {
    *a3 = 0;
  }
}

void CopyPostScriptNameFromFontURL(const __CFURL *a1@<X0>, CFStringRef *a2@<X8>)
{
  if (!a1)
  {
    v3 = 0;
    goto LABEL_11;
  }

  v3 = CFURLCopyFragment(a1, &stru_1EF25C610);
  if (!v3)
  {
LABEL_11:

    *a2 = 0;
    return;
  }

  v4 = *MEMORY[0x1E695E480];
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(*MEMORY[0x1E695E480], v3, @";");
  v6 = ArrayBySeparatingStrings;
  if (!ArrayBySeparatingStrings || (Count = CFArrayGetCount(ArrayBySeparatingStrings)) == 0)
  {
LABEL_9:

    goto LABEL_11;
  }

  v8 = Count;
  v9 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
    memset(v13, 170, 32);
    if (SplitStringAtSeparator(ValueAtIndex, &v13[1], v13, v11))
    {
      if (CFStringHasPrefix(ValueAtIndex, @"postscript-name"))
      {
        break;
      }
    }

    if (v8 == ++v9)
    {
      goto LABEL_9;
    }
  }

  v12 = CFStringCreateWithSubstring(v4, ValueAtIndex, v13[0]);
  FindAndReplace(a2, &v12, @"/", @";");
}

BOOL SplitStringAtSeparator(const __CFString *a1, const __CFString *a2, CFRange *a3, CFRange *a4)
{
  v7 = CFStringFind(a1, @"=", 0);
  Length = CFStringGetLength(@"=");
  if (v7.length == Length)
  {
    a2->isa = 0;
    a2->info = v7.location;
    v9 = CFStringGetLength(a1);
    a3->location = v7.location + v7.length;
    a3->length = v9 - (v7.location + v7.length);
  }

  return v7.length == Length;
}

void CreateFontInfoDictionaryFromFontURL(const __CFURL *a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a1)
  {
    v26[1].location = 0;
    v5 = CFURLGetBaseURL(a1);
    explicit = a1;
    if (v5)
    {

      explicit = atomic_load_explicit(&v26[1].location, memory_order_acquire);
    }

    v7 = CFURLCopyFileSystemPath(explicit, kCFURLPOSIXPathStyle);
  }

  else
  {
    v7 = 0;
  }

  v8 = v7;
  if (v8)
  {
    v9 = v8;
    Length = CFStringGetLength(v8);

    if (Length < 1)
    {
      goto LABEL_28;
    }

    CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"path", v7);
    if (a1)
    {
      a1 = CFURLCopyFragment(a1, &stru_1EF25C610);
      if (a1)
      {
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(v4, a1, @";");
        v12 = ArrayBySeparatingStrings;
        v27 = 0;
        if (ArrayBySeparatingStrings)
        {
          Count = CFArrayGetCount(ArrayBySeparatingStrings);
          if (Count)
          {
            v14 = Count;
            v15 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v12, v15);
              memset(v26, 170, sizeof(v26));
              if (SplitStringAtSeparator(ValueAtIndex, &v26[1], v26, v17))
              {
                break;
              }

LABEL_24:
              if (v14 == ++v15)
              {
                goto LABEL_25;
              }
            }

            v18 = CFStringCreateWithSubstring(v4, ValueAtIndex, v26[1]);
            v25 = 0xAAAAAAAAAAAAAAAALL;
            v24 = CFStringCreateWithSubstring(v4, ValueAtIndex, v26[0]);
            FindAndReplace(&v25, &v24, @"/", @";");

            if (CFStringHasPrefix(v18, @"var:"))
            {
              if (!atomic_load_explicit(&v27, memory_order_acquire))
              {
                v24 = CFDictionaryCreateMutable(v4, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);

                CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"variation", atomic_load_explicit(&v27, memory_order_acquire));
              }

              v29.length = CFStringGetLength(v18) - 4;
              v29.location = 4;
              v19 = CFStringCreateWithSubstring(v4, v18, v29);
              if (!v19)
              {
                goto LABEL_23;
              }

              v20 = v19;
              v24 = 0xAAAAAAAAAAAAAAAALL;
              CreateNumberFromString(atomic_load_explicit(&v25, memory_order_acquire), &v24);
              if (atomic_load_explicit(&v24, memory_order_acquire))
              {
                CFDictionarySetValue(atomic_load_explicit(&v27, memory_order_acquire), v20, atomic_load_explicit(&v24, memory_order_acquire));
              }

              CFRelease(v20);
              v21 = v24;
            }

            else
            {
              v22 = v18;
              CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), v22, atomic_load_explicit(&v25, memory_order_acquire));
              v21 = v22;
            }

LABEL_23:
            goto LABEL_24;
          }
        }

LABEL_25:
      }
    }
  }

  else
  {
    a1 = 0;
  }

LABEL_28:
  if (CFDictionaryGetCount(atomic_load_explicit(&Mutable, memory_order_acquire)) < 1)
  {
    v23 = 0;
  }

  else
  {
    v23 = atomic_exchange(&Mutable, 0);
  }

  *a2 = v23;
}

void TInstanceFont::InitWithVariation(atomic_ullong *this, CGFont *a2, const __CFDictionary *a3, id a4)
{
  if (a3)
  {
    explicit = atomic_load_explicit(this + 10, memory_order_acquire);
    v18 = 0;
    if ((*(this + 45) & 0x20000000) != 0)
    {
      CopyPathFromInMemoryFontURL(explicit, &v19);

      v9 = v19;
    }

    else
    {
      if (explicit)
      {
        v19 = 0;
        if (CFURLGetBaseURL(explicit))
        {

          explicit = atomic_load_explicit(&v19, memory_order_acquire);
        }

        v17 = CFURLCopyFileSystemPath(explicit, kCFURLPOSIXPathStyle);
      }

      else
      {
        v17 = 0;
      }

      v9 = v17;
    }

    v19 = 0;
    if (IsNamedInstance(a2))
    {
      v10 = CGFontCopyPostScriptName(a2);
      atomic_load_explicit(&v18, memory_order_acquire);
      v17 = CGFontURLCreate();
      v11 = atomic_exchange(&v17, 0);
    }

    else
    {
      v17 = CGFontCopyPostScriptName(a2);

      if (!CGFontGetParserFont())
      {
        goto LABEL_26;
      }

      FPFontGetDefaultInstance();
      v10 = FPFontCopyPostScriptName();
      atomic_load_explicit(&v18, memory_order_acquire);
      v17 = CGFontURLCreate();
      v11 = atomic_exchange(&v17, 0);
    }

    if (atomic_load_explicit(&v19, memory_order_acquire))
    {

      goto LABEL_16;
    }

LABEL_26:

    v15 = v18;
    goto LABEL_24;
  }

LABEL_16:
  if (a4)
  {
    TCFRef<__CTFont const*>::Retain(this + 75, a4);
    v19 = 0xAAAAAAAAAAAAAAAALL;
  }

  else
  {
    CreateVariationDictFromGraphicsFont(&v19);

    v19 = 0xAAAAAAAAAAAAAAAALL;
    if (!a3)
    {
      v19 = a2;
      goto LABEL_20;
    }
  }

  CreateFontWithVariation(a2, a4, &v19);
LABEL_20:
  v12 = 0;
  v13 = atomic_exchange(&v19, 0);
  atomic_compare_exchange_strong(this + 79, &v12, v13);
  if (v12)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  v16 = atomic_load_explicit(this + 75, memory_order_acquire);
  TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v16, @"NSCTFontVariationAttribute");

  v15 = v19;
LABEL_24:
}

uint64_t IsNamedInstance(CGFont *a1)
{
  if (!a1 || !CGFontGetParserFont())
  {
    return 0;
  }

  return FPFontIsNamedInstance();
}

void MergeOTFeaturesFromTable<std::vector<unsigned int>>(std::vector<unsigned int> *a1, TBaseFont *this, uint64_t a3)
{
  CommonTable = TBaseFont::GetCommonTable(this, a3, 0);
  if (CommonTable)
  {
    v5 = CommonTable;
    BytePtr = CFDataGetBytePtr(CommonTable);
    if (BytePtr)
    {
      v7 = BytePtr;
      v8 = CFDataGetBytePtr(v5);
      if (v8)
      {
        v9 = &v8[CFDataGetLength(v5)];
        if ((v7 + 10) <= v9 && bswap32(*v7) >> 16 <= 1 && (!*(v7 + 1) || (v7 + 14) <= v9))
        {
          if (*(v7 + 3))
          {
            v10 = &v7[__rev16(*(v7 + 3))];
            v11 = (v10 + 2);
            if ((v10 + 2) <= v9)
            {
              v12 = *v10;
              v13 = __rev16(v12);
              v14 = v13 + 2 * v13;
              v15 = v11 + 2 * v14;
              v16 = v15 < v11 || v15 > v9;
              if (!v16 || ((v10 + 8) <= v9 ? (v17 = (v9 - v11) / 6) : (v17 = 0), v17 == v13))
              {
                v18 = a1->__end_ - a1->__begin_;
                std::vector<unsigned int>::reserve(a1, v13 + (v18 >> 2));
                end = a1->__end_;
                if (v12)
                {
                  v20 = 2 * v14;
                  do
                  {
                    v21 = bswap32(*v11);
                    value = a1->__end_cap_.__value_;
                    if (end >= value)
                    {
                      begin = a1->__begin_;
                      v24 = end - a1->__begin_;
                      v25 = (v24 >> 2) + 1;
                      if (v25 >> 62)
                      {
                        std::__throw_bad_array_new_length[abi:fn200100]();
                      }

                      v26 = value - begin;
                      if (v26 >> 1 > v25)
                      {
                        v25 = v26 >> 1;
                      }

                      if (v26 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v27 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v27 = v25;
                      }

                      if (v27)
                      {
                        std::allocator<unsigned int>::allocate_at_least[abi:fn200100](a1, v27);
                      }

                      v28 = (4 * (v24 >> 2));
                      *v28 = v21;
                      end = (v28 + 1);
                      memcpy(0, begin, v24);
                      v29 = a1->__begin_;
                      a1->__begin_ = 0;
                      a1->__end_ = end;
                      a1->__end_cap_.__value_ = 0;
                      if (v29)
                      {
                        operator delete(v29);
                      }
                    }

                    else
                    {
                      *end = v21;
                      end += 4;
                    }

                    a1->__end_ = end;
                    v11 = (v11 + 6);
                    v20 -= 6;
                  }

                  while (v20);
                }

                v30 = a1->__begin_;
                std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
                std::__inplace_merge[abi:fn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__less<void,void> &>(v30, &v30[v18], end);
              }
            }
          }
        }
      }
    }
  }
}

BOOL TFontFeatureTable::LoadTableData(atomic_ullong *this, const TBaseFont *a2)
{
  if ((*(*a2 + 480))(a2, 1836020344))
  {
    (*(*a2 + 488))(&v6, a2, 1717920116);
    v4 = atomic_exchange(this + 1, atomic_exchange(&v6, 0));
LABEL_6:

    return atomic_load_explicit(this + 1, memory_order_acquire) != 0;
  }

  if (((*(*a2 + 480))(a2, 1196643650) & 1) != 0 || (*(*a2 + 480))(a2, 1196445523))
  {
    *this = 1;
    CreateOTFeatureTable(a2, &v6);
    v4 = atomic_exchange(this + 1, atomic_exchange(&v6, 0));
    goto LABEL_6;
  }

  return atomic_load_explicit(this + 1, memory_order_acquire) != 0;
}

void std::vector<PseudoFeature>::push_back[abi:fn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = v4 - *a1;
    v8 = (v7 >> 3) + 1;
    if (v8 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = v3 - v6;
    if (v9 >> 2 > v8)
    {
      v8 = v9 >> 2;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF8)
    {
      v10 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      if (!(v10 >> 61))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v11 = (8 * (v7 >> 3));
    *v11 = *a2;
    v5 = v11 + 1;
    memcpy(0, v6, v7);
    *a1 = 0;
    *(a1 + 8) = v5;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void std::allocator<unsigned int>::allocate_at_least[abi:fn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 62))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fn200100]();
}

void std::__inplace_merge[abi:fn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__less<void,void> &>(char *a1, char *a2, char *a3)
{
  v6 = (a2 - a1) >> 2;
  v7 = (a3 - a2) >> 2;
  if (v7 >= v6)
  {
    v8 = (a2 - a1) >> 2;
  }

  else
  {
    v8 = (a3 - a2) >> 2;
  }

  if (v8 < 1)
  {
    v11 = v8;
LABEL_10:

    std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<unsigned int *>>(a1, a2, a3, v6, v7, 0, v11);
  }

  else
  {
    v9 = MEMORY[0x1E69E5398];
    while (1)
    {
      v10 = operator new(4 * v8, v9);
      if (v10)
      {
        break;
      }

      v11 = v8 >> 1;
      v12 = v8 > 1;
      v8 >>= 1;
      if (!v12)
      {
        goto LABEL_10;
      }
    }

    v13 = v10;
    std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<unsigned int *>>(a1, a2, a3, v6, v7, v10, v8);

    operator delete(v13);
  }
}

void std::vector<unsigned int>::reserve(std::vector<unsigned int> *this, std::vector<unsigned int>::size_type __n)
{
  if (__n > this->__end_cap_.__value_ - this->__begin_)
  {
    if (!(__n >> 62))
    {
      std::allocator<unsigned int>::allocate_at_least[abi:fn200100](this, __n);
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }
}

char *FeatureParamsForTag<OTL::StylisticSetFeatureParams>(const __CFData *a1, int a2)
{
  v44 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  BytePtr = CFDataGetBytePtr(a1);
  if (!BytePtr)
  {
    return 0;
  }

  v5 = BytePtr;
  v6 = CFDataGetBytePtr(a1);
  v7 = v6 ? &v6[CFDataGetLength(a1)] : 0;
  if (!*(v5 + 6))
  {
    return 0;
  }

  v8 = __rev16(*(v5 + 6));
  v9 = (v5 + v8);
  v10 = v5 + v8 + 2;
  if (v10 > v7)
  {
    return 0;
  }

  v11 = *v9;
  v12 = __rev16(v11);
  v13 = v12 + 2 * v12;
  v14 = v10 + 2 * v13;
  if (v14 < v10 || v14 > v7)
  {
    v16 = (v7 - v10) / 6;
    if ((v9 + 4) > v7)
    {
      v16 = 0;
    }

    if (v16 != v12)
    {
      return 0;
    }
  }

  if (!*(v5 + 8))
  {
    return 0;
  }

  v17 = (v5 + __rev16(*(v5 + 8)));
  v18 = v17 + 1;
  if ((v17 + 1) > v7)
  {
    return 0;
  }

  v21 = bswap32(*v17) >> 16;
  v22 = &v18[v21];
  v23 = (v17 + 2) <= v7 ? (v7 - v18) >> 1 : 0;
  v24 = v22 <= v7 && v22 >= v18;
  if (!v24 && v23 != v21)
  {
    return 0;
  }

  *&v26 = 0xAAAAAAAAAAAAAAAALL;
  *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v42[2] = v26;
  v42[3] = v26;
  v42[0] = v26;
  v42[1] = v26;
  memset(v41, 0, sizeof(v41));
  v43 = v42;
  if (!v11)
  {
    goto LABEL_35;
  }

  v27 = 2 * v13;
  v28 = (v8 + v5 + 6);
  while (bswap32(*(v28 - 1)) != a2)
  {
    v28 += 3;
    v27 -= 6;
    if (!v27)
    {
      goto LABEL_35;
    }
  }

  v29 = (v9 + (bswap32(*v28) >> 16));
  v30 = v29 + 2;
  v31 = (v29 + 1) < v5 || v30 > v7;
  if (!v31 && ((v32 = bswap32(v29[1]) >> 16, v33 = &v30[v32], (v29 + 3) <= v7) ? (v34 = (v7 - v30) >> 1) : (v34 = 0), v33 <= v7 ? (v35 = v33 >= v30) : (v35 = 0), !v35 ? (v36 = v34 == v32) : (v36 = 1), v36))
  {
    v37 = *v29;
    v38 = v29 + (bswap32(v37) >> 16);
    if ((v38 + 4) > v7 || v37 == 0)
    {
      v19 = 0;
    }

    else
    {
      v19 = v38;
    }
  }

  else
  {
LABEL_35:
    v19 = 0;
  }

  v40 = v41;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v40);
  return v19;
}

char *FeatureParamsForTag<OTL::StylisticSetFeatureParams>(TBaseFont *a1, int a2)
{
  CommonTable = TBaseFont::GetCommonTable(a1, 1196643650, 0);
  if (!CommonTable || (result = FeatureParamsForTag<OTL::StylisticSetFeatureParams>(CommonTable, a2)) == 0)
  {
    v6 = TBaseFont::GetCommonTable(a1, 1196445523, 0);
    if (!v6)
    {
      return 0;
    }

    result = FeatureParamsForTag<OTL::StylisticSetFeatureParams>(v6, a2);
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = (v1 + 84);
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
      if (v1[2] == v1[11])
      {
        v1[11] = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

char *std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<unsigned int *>>(char *result, char *a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a5)
  {
    v7 = a5;
    v10 = result;
    while (a4 > a7 && v7 > a7)
    {
      if (!a4)
      {
        return result;
      }

      v11 = 0;
      v12 = *a2;
      v13 = -a4;
      while (1)
      {
        v14 = *&v10[v11];
        if (v12 < v14)
        {
          break;
        }

        v11 += 4;
        v70 = __CFADD__(v13++, 1);
        if (v70)
        {
          return result;
        }
      }

      v15 = -v13;
      v16 = &v10[v11];
      if (-v13 >= v7)
      {
        if (v13 == -1)
        {
          *&v10[v11] = v12;
          *a2 = v14;
          return result;
        }

        v25 = v15 / 2;
        v26 = &v10[4 * (v15 / 2)];
        v18 = a2;
        if (a2 != a3)
        {
          v27 = (a3 - a2) >> 2;
          v18 = a2;
          do
          {
            v28 = v27 >> 1;
            v29 = &v18[4 * (v27 >> 1)];
            v31 = *v29;
            v30 = v29 + 4;
            v27 += ~(v27 >> 1);
            if (v31 < *&v26[v11])
            {
              v18 = v30;
            }

            else
            {
              v27 = v28;
            }
          }

          while (v27);
        }

        v17 = (v18 - a2) >> 2;
        v19 = &v26[v11];
      }

      else
      {
        v17 = v7 / 2;
        v18 = &a2[4 * (v7 / 2)];
        v19 = a2;
        if (a2 - v10 != v11)
        {
          v20 = (a2 - v10 - v11) >> 2;
          v19 = &v10[v11];
          do
          {
            v21 = v20 >> 1;
            v22 = &v19[4 * (v20 >> 1)];
            v24 = *v22;
            v23 = v22 + 4;
            v20 += ~(v20 >> 1);
            if (*v18 < v24)
            {
              v20 = v21;
            }

            else
            {
              v19 = v23;
            }
          }

          while (v20);
        }

        v25 = (v19 - v10 - v11) >> 2;
      }

      v32 = v18;
      v33 = a2 - v19;
      if (a2 != v19)
      {
        v32 = v19;
        v34 = v18 - a2;
        if (v18 != a2)
        {
          if (v19 + 4 == a2)
          {
            v79 = *v19;
            v82 = a7;
            v84 = a6;
            v35 = a3;
            v80 = v17;
            v36 = v25;
            memmove(v19, a2, v18 - a2);
            v25 = v36;
            v17 = v80;
            a7 = v82;
            v16 = &v10[v11];
            a3 = v35;
            a6 = v84;
            v32 = &v19[v34];
            *&v19[v34] = v79;
          }

          else if (a2 + 4 == v18)
          {
            v37 = *(v18 - 1);
            v32 = v19 + 4;
            if (v18 - 4 != v19)
            {
              v83 = a7;
              v85 = a6;
              v38 = a3;
              v81 = v17;
              v39 = v25;
              memmove(v19 + 4, v19, v18 - 4 - v19);
              v25 = v39;
              v16 = &v10[v11];
              v17 = v81;
              a7 = v83;
              a6 = v85;
              a3 = v38;
            }

            *v19 = v37;
          }

          else
          {
            v40 = v33 >> 2;
            if (v33 >> 2 == v34 >> 2)
            {
              v41 = v19 + 4;
              v42 = a2 + 4;
              do
              {
                v43 = *(v41 - 1);
                *(v41 - 1) = *(v42 - 1);
                *(v42 - 1) = v43;
                if (v41 == a2)
                {
                  break;
                }

                v41 += 4;
                v44 = v42 == v18;
                v42 += 4;
              }

              while (!v44);
              v32 = a2;
            }

            else
            {
              v45 = v34 >> 2;
              v46 = v33 >> 2;
              do
              {
                v47 = v46;
                v46 = v45;
                v45 = v47 % v45;
              }

              while (v45);
              v48 = &v19[4 * v46];
              do
              {
                v50 = *(v48 - 1);
                v48 -= 4;
                v49 = v50;
                v51 = &v48[v33];
                v52 = v48;
                do
                {
                  v53 = v51;
                  *v52 = *v51;
                  v54 = &v51[4 * v40];
                  v55 = __OFSUB__(v40, (v18 - v51) >> 2);
                  v57 = v40 - ((v18 - v51) >> 2);
                  v56 = (v57 < 0) ^ v55;
                  v51 = &v19[4 * v57];
                  if (v56)
                  {
                    v51 = v54;
                  }

                  v52 = v53;
                }

                while (v51 != v48);
                *v53 = v49;
              }

              while (v48 != v19);
              v32 = &v19[v34];
            }
          }
        }
      }

      a4 = -(v25 + v13);
      v58 = v7 - v17;
      if (v25 + v17 >= v7 - (v25 + v17) - v13)
      {
        v63 = v25;
        v64 = -(v25 + v13);
        v65 = v17;
        v60 = a6;
        v61 = a7;
        v10 = v16;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<unsigned int *>>(v32, v18, a3, v64, v58);
        v18 = v19;
        v58 = v65;
        a4 = v63;
        a3 = v32;
      }

      else
      {
        v59 = &v10[v11];
        v60 = a6;
        v61 = a7;
        v62 = a3;
        result = std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,std::__wrap_iter<unsigned int *>>(v59, v19, v32, v25, v17);
        a3 = v62;
        v10 = v32;
      }

      v7 = v58;
      a2 = v18;
      a6 = v60;
      a7 = v61;
      if (!v58)
      {
        return result;
      }
    }

    if (a4 <= v7)
    {
      if (a2 != v10)
      {
        v71 = -a6;
        v72 = a6;
        v73 = v10;
        do
        {
          v74 = *v73;
          v73 += 4;
          *v72++ = v74;
          v71 -= 4;
        }

        while (v73 != a2);
        while (a2 != a3)
        {
          v75 = *a2;
          v76 = *a2 >= *a6;
          if (*a2 >= *a6)
          {
            v75 = *a6;
          }

          a2 += 4 * (*a2 < *a6);
          a6 += 4 * v76;
          *v10 = v75;
          v10 += 4;
          if (v72 == a6)
          {
            return result;
          }
        }

        return memmove(v10, a6, -(a6 + v71));
      }
    }

    else if (a2 != a3)
    {
      v66 = 0;
      do
      {
        *(a6 + v66) = *&a2[v66];
        v66 += 4;
      }

      while (&a2[v66] != a3);
      v67 = (a6 + v66);
      while (a2 != v10)
      {
        v68 = *(v67 - 1);
        v69 = *(a2 - 1);
        v70 = v68 >= v69;
        if (v68 <= v69)
        {
          v68 = *(a2 - 1);
        }

        if (v70)
        {
          --v67;
        }

        else
        {
          a2 -= 4;
        }

        *(a3 - 1) = v68;
        a3 -= 4;
        if (v67 == a6)
        {
          return result;
        }
      }

      if (v67 != a6)
      {
        v77 = -4;
        do
        {
          v78 = *--v67;
          *&a3[v77] = v78;
          v77 -= 4;
        }

        while (v67 != a6);
      }
    }
  }

  return result;
}

uint64_t TSplicedFont::CopyGraphicsFont(TSplicedFont *this)
{
  v1 = *(*(this + 76) + 40);
  if ((*(v1 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  v2 = *(*atomic_load_explicit((v1 + 32), memory_order_acquire) + 504);

  return v2();
}

BOOL TSplicedFont::Equal(atomic_ullong *this, atomic_ullong *a2)
{
  if (this == a2)
  {
    return 1;
  }

  v4 = (*(*this + 16))(this);
  result = 0;
  if (v4 == (*(*a2 + 16))(a2))
  {
    explicit = atomic_load_explicit(this + 75, memory_order_acquire);
    v6 = atomic_load_explicit(a2 + 75, memory_order_acquire);
    if (explicit == v6)
    {
      return 1;
    }

    v7 = !explicit || v6 == 0;
    if (!v7 && CFEqual(explicit, v6))
    {
      return 1;
    }
  }

  return result;
}

const void **TSplicedFont::AddDescriptorAttributes(atomic_ullong *a1, const void **a2, const void **a3)
{
  if (((*(*a1 + 848))(a1) & 1) == 0)
  {
    explicit = atomic_load_explicit(a1 + 75, memory_order_acquire);
    if (explicit)
    {
      Value = CFDictionaryGetValue(explicit, @"NSCTFontUIUsageAttribute");
      if (Value)
      {
        v8 = Value;
        std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::push_back[abi:fn200100](a2, &kCTFontDescriptorTextStyleAttribute);
        v14 = v8;
        std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](a3, &v14);
        (*(*a1 + 40))(&v14, a1, 57);
        v9 = atomic_exchange(&v14, 0);

        if (v9)
        {
          std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::push_back[abi:fn200100](a2, &kCTFontTraitsAttribute);
          v14 = v9;
          std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](a3, &v14);
        }
      }
    }

    v10 = atomic_load_explicit(a1 + 75, memory_order_acquire);
    if (v10)
    {
      v11 = CFDictionaryGetValue(v10, @"language");
      if (v11)
      {
        v12 = v11;
        std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::push_back[abi:fn200100](a2, &kCTFontDescriptorLanguageAttribute);
        v14 = v12;
        std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](a3, &v14);
      }
    }
  }

  result = atomic_load_explicit(a1 + 75, memory_order_acquire);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"ignoreLegibilityWeight");
    if (result)
    {
      std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::push_back[abi:fn200100](a2, &kCTFontIgnoreLegibilityWeightAttribute);
      v14 = *MEMORY[0x1E695E4D0];
      return std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::push_back[abi:fn200100](a3, &v14);
    }
  }

  return result;
}

void TSplicedFont::CopyAttribute(atomic_ullong *this@<X0>, uint64_t a2@<X1>, atomic_ullong *a3@<X8>)
{
  if (a2 > 57)
  {
    if (a2 <= 59)
    {
      if (a2 == 58)
      {
        explicit = atomic_load_explicit(this + 75, memory_order_acquire);
        if (explicit)
        {
          v5 = @"languageAwareLineHeightRatio";
          goto LABEL_25;
        }
      }

      else
      {
        explicit = atomic_load_explicit(this + 75, memory_order_acquire);
        if (explicit)
        {
          v5 = @"lineSpacingOverride";
LABEL_25:
          explicit = CFDictionaryGetValue(explicit, v5);
        }
      }

      v10 = explicit;
      *a3 = atomic_exchange(&v10, 0);

      return;
    }

    if (a2 == 60)
    {
      Value = atomic_load_explicit(this + 75, memory_order_acquire);
      if (Value)
      {
        v9 = @"legibilityWeight";
        goto LABEL_29;
      }

      goto LABEL_30;
    }

    if (a2 == 61)
    {
      Value = atomic_load_explicit(this + 75, memory_order_acquire);
      if (Value)
      {
        v9 = @"ignoreLegibilityWeight";
LABEL_29:
        Value = CFDictionaryGetValue(Value, v9);
        goto LABEL_30;
      }

      goto LABEL_30;
    }

LABEL_20:

    TBaseFont::CopyAttribute(this, a2, a3);
    return;
  }

  if (a2 == 43)
  {
    Value = atomic_load_explicit(this + 75, memory_order_acquire);
    if (Value)
    {
      v9 = @"NSCTFontUIUsageAttribute";
      goto LABEL_29;
    }

LABEL_30:
    *a3 = Value;
    return;
  }

  if (a2 != 48 && a2 != 57)
  {
    goto LABEL_20;
  }

  v6 = *(this[76] + 40);
  if ((*(v6 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(this[76] + 40), 0, 0.0);
  }

  v7 = *(*atomic_load_explicit((v6 + 32), memory_order_acquire) + 40);

  v7();
}

uint64_t TSplicedFont::HasTable(TSplicedFont *this)
{
  v1 = *(*(this + 76) + 40);
  if ((*(v1 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  v2 = *(*atomic_load_explicit((v1 + 32), memory_order_acquire) + 480);

  return v2();
}

void TSplicedFont::CopyName(atomic_ullong *this@<X0>, __CFString *a2@<X1>, void *a3@<X8>)
{
  TBaseFont::CopyAttributeInternal(this, @"CTFontNames", &v15);
  v6 = atomic_exchange(&v15, 0);

  Value = v6;
  v8 = Value;
  if (Value)
  {
    Value = CFDictionaryGetValue(Value, a2);
  }

  v15 = Value;

  if (atomic_load_explicit(&v15, memory_order_acquire))
  {
    goto LABEL_11;
  }

  if (@"CTFontSyntheticFamilyName" == a2 || (v9 = a2) != 0 && (v9 = a2, @"CTFontSyntheticFamilyName") && (v10 = CFEqual(a2, @"CTFontSyntheticFamilyName"), v9 = a2, v10))
  {
    v9 = @"CTFontFamilyName";
  }

  v11 = FontNameCodeForKey(v9);
  v14 = TSplicedFontDict::FindFontName(this + 75, v11, 0);

  if (atomic_load_explicit(&v15, memory_order_acquire))
  {
    NamesWithUpdatedName(&v14, v6, a2, atomic_load_explicit(&v15, memory_order_acquire));
    TBaseFont::SetAttributeInternal<__CFDictionary const*>(this, atomic_load_explicit(&v14, memory_order_acquire), @"CTFontNames");

LABEL_11:
    *a3 = atomic_exchange(&v15, 0);
    goto LABEL_12;
  }

  v12 = *(this[76] + 40);
  if ((*(v12 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(v12, 0, 0.0);
  }

  explicit = atomic_load_explicit((v12 + 32), memory_order_acquire);
  (*(*explicit + 72))(explicit, a2);
LABEL_12:
}

void TSplicedFont::CopyVariationAxes(TSplicedFont *this@<X0>, void *a2@<X8>)
{
  v4 = (this + 600);
  if (TSplicedFontDict::ComponentHasVariations(this + 75))
  {
    explicit = atomic_load_explicit(v4, memory_order_acquire);
    if (explicit && (Value = CFDictionaryGetValue(explicit, @"variationAxes")) != 0)
    {
      v9 = Value;
      *a2 = atomic_exchange(&v9, 0);
    }

    else
    {
      v7 = *(*(this + 76) + 40);
      if ((*(v7 + 16) & 0x80000000) == 0)
      {
        TDescriptor::InitBaseFont(v7, 0, 0.0);
      }

      v8 = *(*atomic_load_explicit((v7 + 32), memory_order_acquire) + 120);

      v8();
    }
  }

  else
  {
    *a2 = 0;
  }
}

uint64_t TSplicedFont::GetFontMatrix(TSplicedFont *this)
{
  v1 = *(*(this + 76) + 40);
  if ((*(v1 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  v2 = *(*atomic_load_explicit((v1 + 32), memory_order_acquire) + 168);

  return v2();
}

void CreateOTFeatureTable(const TBaseFont *this@<X0>, void *a2@<X8>)
{
  memset(&v90, 0, sizeof(v90));
  MergeOTFeaturesFromTable<std::vector<unsigned int>>(&v90, this, 1196643650);
  MergeOTFeaturesFromTable<std::vector<unsigned int>>(&v90, this, 1196445523);
  v4 = std::__unique[abi:fn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>,std::__equal_to &>(v90.__begin_, v90.__end_);
  end = v90.__end_;
  if (v4 > v90.__end_)
  {
LABEL_148:
    __break(1u);
  }

  else
  {
    begin = v90.__begin_;
    if (v4 != v90.__end_)
    {
      end = v4;
      v90.__end_ = v4;
    }

    v7 = MEMORY[0x1E695E488];
    if (v90.__begin_ == end)
    {
      v31 = 0;
      v32 = 0;
    }

    else
    {
      v87 = 0;
      v88 = 0;
      v89 = 0;
      std::vector<PseudoFeature>::push_back[abi:fn200100](&v87, &unk_184779F0C);
      v8 = v90.__end_;
      *v84 = 0u;
      v85 = 0u;
      v86 = 0xAAAAAAAA3F800000;
      v81 = 0u;
      v82 = 0u;
      v83 = 0xAAAAAAAA3F800000;
      if (begin != v90.__end_)
      {
        v9 = &dword_184779F14;
        do
        {
          v10 = *begin;
          if (*begin == *v9)
          {
            v11 = v9 + 3;
            do
            {
              v12 = v11;
              if (v11 >= &dword_18477A6C4)
              {
                break;
              }

              v11 += 3;
            }

            while (v10 == *v12);
            if (v9 < v12)
            {
              v13 = (v9 - 3);
              do
              {
                if ((*(v13 + 20) & 8) == 0)
                {
                  std::vector<PseudoFeature>::push_back[abi:fn200100](&v87, (v13 + 16));
                  if ((*(v13 + 20) & 0x40) != 0)
                  {
                    v16 = NumberOfGlyphVariants(this, *(v13 + 12));
                    v91[0] = (v13 + 16);
                    *(std::__hash_table<std::__hash_value_type<unsigned short,unsigned short>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(&v81, *(v13 + 16)) + 9) = v16;
                  }

                  else if (*(v13 + 16) == 35)
                  {
                    v14 = FeatureParamsForTag<OTL::StylisticSetFeatureParams>(this, *(v13 + 12));
                    if (v14)
                    {
                      v15 = bswap32(*(v14 + 1)) >> 16;
                      v91[0] = (v13 + 18);
                      *(std::__hash_table<std::__hash_value_type<unsigned short,unsigned short>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v84, *(v13 + 18)) + 9) = v15;
                    }
                  }
                }

                v13 += 12;
              }

              while (v13 < (v12 - 3));
            }

            ++begin;
          }

          else if (v10 >= *v9)
          {
            v12 = v9 + 3;
          }

          else
          {
            ++begin;
            v12 = v9;
          }

          if (begin == v8)
          {
            break;
          }

          v9 = v12;
        }

        while (v12 != &dword_18477A6C4);
      }

      v17 = v87;
      v18 = v88;
      if (v87 == v88)
      {
        v31 = 0;
        v32 = 0;
        v33 = v87;
      }

      else
      {
        if (*(&v85 + 1))
        {
          v91[0] = 0xAAAAAAAAAAAAAAAALL;
          (*(*this + 504))(v91, this);
          atomic_load_explicit(v91, memory_order_acquire);
          if (CGFontNameTableCreate())
          {
            v19 = v85;
            if (v85)
            {
              while (1)
              {
                v20 = CGFontNameTableCopyRootName();

                v21 = *v19;
                if (!v20)
                {
                  break;
                }

LABEL_59:
                v19 = v21;
                if (!v21)
                {
                  goto LABEL_60;
                }
              }

              v22 = v84[1];
              v23 = *(v19 + 1);
              v24 = vcnt_s8(v84[1]);
              v24.i16[0] = vaddlv_u8(v24);
              if (v24.u32[0] > 1uLL)
              {
                if (v23 >= v84[1])
                {
                  v23 %= v84[1];
                }
              }

              else
              {
                v23 &= v84[1] - 1;
              }

              v25 = *(v84[0] + v23);
              do
              {
                v26 = v25;
                v25 = *v25;
              }

              while (v25 != v19);
              if (v26 == &v85)
              {
                goto LABEL_151;
              }

              v27 = *(v26 + 1);
              if (v24.u32[0] > 1uLL)
              {
                if (v27 >= v84[1])
                {
                  v27 %= v84[1];
                }
              }

              else
              {
                v27 &= v84[1] - 1;
              }

              v28 = *v19;
              if (v27 != v23)
              {
LABEL_151:
                if (v21)
                {
                  v29 = *(v21 + 1);
                  if (v24.u32[0] > 1uLL)
                  {
                    v30 = *(v21 + 1);
                    if (v29 >= v84[1])
                    {
                      v30 = v29 % v84[1];
                    }
                  }

                  else
                  {
                    v30 = v29 & (v84[1] - 1);
                  }

                  v28 = *v19;
                  if (v30 == v23)
                  {
                    goto LABEL_52;
                  }
                }

                *(v84[0] + v23) = 0;
                v28 = *v19;
              }

              if (!v28)
              {
LABEL_58:
                *v26 = v28;
                *v19 = 0;
                --*(&v85 + 1);
                operator delete(v19);
                goto LABEL_59;
              }

              v29 = *(v28 + 1);
LABEL_52:
              if (v24.u32[0] > 1uLL)
              {
                if (v29 >= v22)
                {
                  v29 %= v22;
                }
              }

              else
              {
                v29 &= v22 - 1;
              }

              if (v29 != v23)
              {
                *(v84[0] + v29) = v26;
                v28 = *v19;
              }

              goto LABEL_58;
            }

LABEL_60:
            CGFontNameTableRelease();
          }

          else
          {
            std::__hash_table<std::__hash_value_type<unsigned short,unsigned short>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned short>>>::clear(v84);
          }

          v17 = v87;
          v18 = v88;
        }

        v79 = v17;
        v34 = 126 - 2 * __clz((v18 - v17) >> 3);
        if (v18 == v17)
        {
          v35 = 0;
        }

        else
        {
          v35 = v34;
        }

        std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,PseudoFeature *,false>(v17, v18, v35, 1);
        if (v18 != v79)
        {
          v36 = v79 - 4;
          while (v36 + 8 != v18)
          {
            v38 = v36[4];
            v36 += 4;
            LODWORD(v37) = v38;
            if (v38 == v36[4] && v36[1] == v36[5])
            {
              v40 = v36 + 8;
              if (v36 + 8 != v18)
              {
                do
                {
                  if (v37 != *v40 || v36[1] != v40[1])
                  {
                    v37 = *v40;
                    *(v36 + 1) = *v40;
                    v36 += 4;
                    LODWORD(v37) = v37;
                  }

                  v40 += 4;
                }

                while (v40 != v18);
                v18 = v88;
              }

              if (v36 + 4 <= v18)
              {
                if (v36 + 4 != v18)
                {
                  v18 = v36 + 4;
                  v88 = v36 + 4;
                }

                break;
              }

              goto LABEL_148;
            }
          }
        }

        if (v79 == v18)
        {
          v42 = 0;
        }

        else
        {
          v42 = 0;
          v43 = -1;
          v44 = v79;
          do
          {
            v46 = *v44;
            v44 += 4;
            v45 = v46;
            if (v43 != v46)
            {
              ++v42;
            }

            v43 = v45;
          }

          while (v44 != v18);
        }

        v47 = v82;
        v76 = a2;
        if (v82)
        {
          v48 = 0;
          do
          {
            v48 += *(v47 + 18);
            v47 = *v47;
          }

          while (v47);
          v47 = v48;
        }

        v75 = 4 * (v47 + ((v18 - v79) >> 3)) + 12 * v42 + 12;
        v78 = 12 * v42 + 12;
        v49 = MEMORY[0x1865F0530](*MEMORY[0x1E695E488]);
        v51 = v78;
        v50 = v79;
        *v49 = 16777472;
        *(v49 + 1) = bswap32(v42) >> 16;
        v77 = v49;
        *(v49 + 2) = 0;
        if (v79 != v18)
        {
          v52 = 0;
          v53 = v49;
          v54 = &v49[v78];
          v55 = v79;
          do
          {
            v56 = v53;
            while (1)
            {
              v53 = v56 + 12;
              if ((v55[2] & 0x40) != 0)
              {
                break;
              }

              v57 = *v55;
              v58 = v55;
              if (v55 != v18)
              {
                v59 = v55;
                while (*v59 == v57)
                {
                  v59 += 4;
                  v58 += 4;
                  if (v59 == v18)
                  {
                    v58 = v18;
                    break;
                  }
                }
              }

              *(v56 + 6) = __rev16(v57);
              *(v56 + 7) = bswap32((v58 - v55) >> 3) >> 16;
              *(v56 + 4) = bswap32(v51 + 4 * (v52 + ((v55 - v50) >> 3)));
              *(v56 + 11) = bswap32(-200 - 200 * *v55) >> 16;
              if (v58 == v55)
              {
                v61 = 0;
              }

              else
              {
                v60 = 0;
                v61 = 0;
                do
                {
                  v80 = v55[1];
                  *v54 = bswap32(v80) >> 16;
                  v62 = v80;
                  v63 = bswap32(~v80 - 200 * *v55 - 200) >> 16;
                  *(v54 + 1) = v63;
                  v64 = *(v55 + 1);
                  if (v64)
                  {
                    v61 |= v60 & (v64 << 30 >> 31) | 0xFFFFC000;
                  }

                  else
                  {
                    if ((v64 & 2) == 0)
                    {
                      *v54 = __rev16(v62 ^ 1);
                    }

                    if (*v55 == 35 && v84[1])
                    {
                      v65 = vcnt_s8(v84[1]);
                      v65.i16[0] = vaddlv_u8(v65);
                      if (v65.u32[0] > 1uLL)
                      {
                        v66 = v80;
                        if (v84[1] <= v80)
                        {
                          v66 = v80 % LOWORD(v84[1]);
                        }
                      }

                      else
                      {
                        v66 = (LODWORD(v84[1]) - 1) & v80;
                      }

                      v67 = *(v84[0] + v66);
                      if (v67)
                      {
                        for (i = *v67; i; i = *i)
                        {
                          v69 = i[1];
                          if (v69 == v80)
                          {
                            if (*(i + 8) == v80)
                            {
                              v91[0] = &v80;
                              v70 = std::__hash_table<std::__hash_value_type<unsigned short,unsigned short>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(v84, v80);
                              v51 = v78;
                              v50 = v79;
                              v63 = bswap32(*(v70 + 9)) >> 16;
                              goto LABEL_131;
                            }
                          }

                          else
                          {
                            if (v65.u32[0] > 1uLL)
                            {
                              if (v69 >= v84[1])
                              {
                                v69 %= v84[1];
                              }
                            }

                            else
                            {
                              v69 &= v84[1] - 1;
                            }

                            if (v69 != v66)
                            {
                              break;
                            }
                          }
                        }
                      }
                    }

                    LOWORD(v63) = v63 | 0x100;
LABEL_131:
                    *(v54 + 1) = v63;
                  }

                  v54 += 4;
                  ++v60;
                  v55 += 4;
                }

                while (v55 != v58);
              }

              *(v56 + 10) = bswap32(v61) >> 16;
              v56 += 12;
              if (v55 == v18)
              {
                goto LABEL_141;
              }
            }

            v91[0] = v55;
            v71 = std::__hash_table<std::__hash_value_type<unsigned short,unsigned short>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(&v81, *v55);
            v51 = v78;
            v50 = v79;
            v72 = *(v71 + 9);
            *(v56 + 6) = bswap32(*v55) >> 16;
            *(v56 + 7) = bswap32(v72 + 1) >> 16;
            *(v56 + 4) = bswap32(v78 + 4 * (v52 + ((v55 - v79) >> 3)));
            *(v56 + 10) = 192;
            *(v56 + 11) = bswap32(-200 - 200 * *v55) >> 16;
            *v54 = 0;
            *(v54 + 1) = bswap32(-200 * *v55 - 201) >> 16;
            v54 += 4;
            if (v72)
            {
              v73 = 0;
              v74 = 1;
              do
              {
                *v54 = bswap32(v74) >> 16;
                *(v54 + 1) = bswap32(v73 + 65336 * *v55 - 202) >> 16;
                v54 += 4;
                --v73;
                ++v74;
              }

              while (-v72 != v73);
            }

            v52 += v72;
            v55 += 4;
          }

          while (v55 != v18);
        }

LABEL_141:
        v33 = v87;
        v31 = v75;
        a2 = v76;
        v32 = v77;
      }

      std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(&v81);
      std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(v84);
      if (v33)
      {
        operator delete(v33);
      }

      v7 = MEMORY[0x1E695E488];
    }

    v84[0] = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], v32, v31, *v7);
    *a2 = atomic_exchange(v84, 0);

    if (v90.__begin_)
    {
      v90.__end_ = v90.__begin_;
      operator delete(v90.__begin_);
    }
  }
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,unsigned short>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,unsigned short>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,unsigned short>>>::__emplace_unique_key_args<unsigned short,std::piecewise_construct_t const&,std::tuple<unsigned short const&>,std::tuple<>>(void *a1, unsigned __int16 a2)
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
      v4 = a2 % a1[1];
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

  if (*(v6 + 8) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,PseudoFeature *,false>(uint64_t result, unsigned __int16 *a2, uint64_t a3, char a4)
{
  v7 = result;
LABEL_2:
  v8 = v7;
  while (1)
  {
    v7 = v8;
    v9 = (a2 - v8) >> 3;
    if (v9 > 2)
    {
      break;
    }

    if (v9 < 2)
    {
      return result;
    }

    if (v9 == 2)
    {
      v164 = *(a2 - 4);
      v165 = *v8;
      v166 = v8[1];
      v167 = v164 == v165;
      v168 = v164 < v165;
      if (v167)
      {
        v168 = *(a2 - 3) < v166;
      }

      if (v168)
      {
        LODWORD(v100) = *(v8 + 1);
        *v8 = *(a2 - 1);
        *(a2 - 4) = v165;
        *(a2 - 3) = v166;
        goto LABEL_304;
      }

      return result;
    }

LABEL_10:
    if (v9 <= 23)
    {
      v98 = v8 + 4;
      v170 = v8 == a2 || v98 == a2;
      if (a4)
      {
        if (!v170)
        {
          v171 = 0;
          v172 = v8;
          do
          {
            v173 = v172[5];
            v174 = *v172;
            v175 = v172[1];
            v172 = v98;
            v176 = *v98;
            v177 = v173 < v175;
            v167 = v176 == v174;
            v178 = v176 < v174;
            if (v167)
            {
              v178 = v177;
            }

            if (v178)
            {
              v179 = *v172;
              v180 = *v172;
              v181 = v171;
              while (1)
              {
                v182 = v8 + v181;
                *(v8 + v181 + 8) = *(v8 + v181);
                if (!v181)
                {
                  break;
                }

                v183 = *(v182 - 4);
                v184 = *(v182 - 3) > WORD1(v179);
                v167 = v183 == v180;
                v185 = v183 > v180;
                if (!v167)
                {
                  v184 = v185;
                }

                v181 -= 8;
                if (!v184)
                {
                  v186 = (v8 + v181 + 8);
                  goto LABEL_225;
                }
              }

              v186 = v8;
LABEL_225:
              *v186 = v179;
            }

            v98 = v172 + 4;
            v171 += 8;
          }

          while (v172 + 4 != a2);
        }

        return result;
      }

      if (v170)
      {
        return result;
      }

      v100 = 0;
      v99 = -8;
      v236 = 8;
      while (1)
      {
        v237 = (v8 + v100);
        v100 = v236;
        v238 = *v98;
        v239 = *v237;
        v240 = v237[5] < v237[1];
        v167 = v238 == v239;
        v241 = v238 < v239;
        if (v167)
        {
          v241 = v240;
        }

        if (v241)
        {
          break;
        }

LABEL_296:
        v236 = v100 + 8;
        v98 += 4;
        v99 -= 8;
        if (v98 == a2)
        {
          return result;
        }
      }

      v242 = *v98;
      v243 = *v98;
      v244 = v99;
      v245 = v98;
      while (1)
      {
        *v245 = *(v245 - 1);
        if (!v244)
        {
          break;
        }

        v246 = *(v245 - 8);
        v167 = v246 == v243;
        v247 = v246 > v243;
        if (v167)
        {
          v247 = *(v245 - 7) > WORD1(v242);
        }

        --v245;
        v244 += 8;
        if (!v247)
        {
          *v245 = v242;
          goto LABEL_296;
        }
      }

LABEL_298:
      __break(1u);
      goto LABEL_299;
    }

    if (!a3)
    {
      if (v8 != a2)
      {
        v187 = (v9 - 2) >> 1;
        v188 = v187;
        do
        {
          v189 = v188;
          if (v187 >= v188)
          {
            v190 = (2 * v188) | 1;
            v191 = &v8[4 * v190];
            if (2 * v189 + 2 >= v9)
            {
              v192 = *v191;
            }

            else
            {
              v192 = *v191;
              v193 = v191[4];
              v194 = v191[1] < v191[5];
              if (v192 != v193)
              {
                v194 = v192 < v193;
              }

              if (v194)
              {
                v192 = v191[4];
                v191 += 4;
                v190 = 2 * v189 + 2;
              }
            }

            v195 = &v8[4 * v189];
            v196 = *v195;
            v167 = v192 == v196;
            v197 = v192 < v196;
            if (v167)
            {
              v197 = v191[1] < v195[1];
            }

            if (!v197)
            {
              v198 = *v195;
              do
              {
                v199 = v191;
                *v195 = *v191;
                if (v187 < v190)
                {
                  break;
                }

                v200 = (2 * v190) | 1;
                v191 = &v8[4 * v200];
                v190 = 2 * v190 + 2;
                if (v190 >= v9)
                {
                  v201 = *v191;
                  v190 = v200;
                }

                else
                {
                  v201 = *v191;
                  v202 = v191[4];
                  v203 = v191[1] < v191[5];
                  if (v201 != v202)
                  {
                    v203 = v201 < v202;
                  }

                  if (v203)
                  {
                    v201 = v191[4];
                    v191 += 4;
                  }

                  else
                  {
                    v190 = v200;
                  }
                }

                v167 = v201 == v198;
                v204 = v201 < v198;
                if (v167)
                {
                  v204 = v191[1] < WORD1(v198);
                }

                v195 = v199;
              }

              while (!v204);
              *v199 = v198;
            }
          }

          v188 = v189 - 1;
        }

        while (v189);
        do
        {
          v205 = 0;
          v206 = *v8;
          v207 = v8[1];
          v208 = *(v8 + 1);
          v209 = v8;
          do
          {
            v210 = &v209[4 * v205];
            v211 = v210 + 4;
            result = 2 * v205;
            v212 = (2 * v205) | 1;
            v205 = 2 * v205 + 2;
            if (v205 >= v9)
            {
              v205 = v212;
            }

            else
            {
              v214 = v210[8];
              v213 = v210 + 8;
              v215 = *(v213 - 4);
              LODWORD(result) = v215 < v214;
              if (v215 == v214)
              {
                result = *(v213 - 3) < v213[1];
              }

              else
              {
                result = result;
              }

              if (result)
              {
                v211 = v213;
              }

              else
              {
                v205 = v212;
              }
            }

            *v209 = *v211;
            v209 = v211;
          }

          while (v205 <= ((v9 - 2) >> 1));
          if (v211 == a2 - 4)
          {
            *v211 = v206;
            v211[1] = v207;
            *(v211 + 1) = v208;
          }

          else
          {
            *v211 = *(a2 - 1);
            *(a2 - 4) = v206;
            *(a2 - 3) = v207;
            *(a2 - 1) = v208;
            v216 = (v211 - v8 + 8) >> 3;
            v217 = v216 < 2;
            v218 = v216 - 2;
            if (!v217)
            {
              v219 = v218 >> 1;
              v220 = &v8[4 * v219];
              v221 = *v220;
              v222 = *v211;
              v167 = v221 == v222;
              v223 = v221 < v222;
              if (v167)
              {
                v223 = v220[1] < v211[1];
              }

              if (v223)
              {
                v224 = *v211;
                v225 = *v211;
                do
                {
                  v226 = v220;
                  *v211 = *v220;
                  if (!v219)
                  {
                    break;
                  }

                  v219 = (v219 - 1) >> 1;
                  v220 = &v8[4 * v219];
                  v227 = *v220;
                  v228 = v220[1] < WORD1(v224);
                  v167 = v227 == v225;
                  v229 = v227 < v225;
                  if (!v167)
                  {
                    v228 = v229;
                  }

                  v211 = v226;
                }

                while (v228);
                *v226 = v224;
              }
            }
          }

          a2 -= 4;
          v217 = v9-- <= 2;
        }

        while (!v217);
      }

      return result;
    }

    v10 = &v8[4 * (v9 >> 1)];
    v11 = *(a2 - 4);
    v12 = *(a2 - 3);
    if (v9 >= 0x81)
    {
      v13 = *v10;
      v14 = v10[1];
      v15 = *v8;
      v16 = v8[1];
      v17 = v14 < v16;
      if (v13 != v15)
      {
        v17 = v13 < v15;
      }

      v18 = v12 < v14;
      v167 = v11 == v13;
      v19 = v11 < v13;
      if (!v167)
      {
        v18 = v19;
      }

      if (v17)
      {
        v20 = *(v8 + 1);
        if (v18)
        {
          *v8 = *(a2 - 1);
          goto LABEL_41;
        }

        *v8 = *v10;
        *v10 = v15;
        v10[1] = v16;
        *(v10 + 1) = v20;
        v41 = *(a2 - 4);
        v167 = v41 == v15;
        v42 = v41 < v15;
        if (v167)
        {
          v42 = *(a2 - 3) < v16;
        }

        if (v42)
        {
          *v10 = *(a2 - 1);
LABEL_41:
          *(a2 - 4) = v15;
          *(a2 - 3) = v16;
          *(a2 - 1) = v20;
        }
      }

      else if (v18)
      {
        v29 = *(v10 + 1);
        *v10 = *(a2 - 1);
        *(a2 - 4) = v13;
        *(a2 - 3) = v14;
        *(a2 - 1) = v29;
        v30 = *v10;
        v31 = *v8;
        v32 = v8[1];
        v167 = v30 == v31;
        v33 = v30 < v31;
        if (v167)
        {
          v33 = v10[1] < v32;
        }

        if (v33)
        {
          v34 = *(v8 + 1);
          *v8 = *v10;
          *v10 = v31;
          v10[1] = v32;
          *(v10 + 1) = v34;
        }
      }

      v43 = v10 - 4;
      v44 = *(v10 - 4);
      v45 = *(v10 - 3);
      v46 = v8[4];
      v47 = v8[5];
      v48 = v44 < v46;
      if (v44 == v46)
      {
        v48 = v45 < v47;
      }

      v49 = *(a2 - 8);
      v167 = v49 == v44;
      v50 = v49 < v44;
      if (v167)
      {
        v50 = *(a2 - 7) < v45;
      }

      if (v48)
      {
        v51 = *(v8 + 3);
        if (v50)
        {
          *(v8 + 1) = *(a2 - 2);
          goto LABEL_63;
        }

        *(v8 + 1) = *v43;
        *v43 = v46;
        *(v10 - 3) = v47;
        *(v10 - 1) = v51;
        v60 = *(a2 - 8);
        v167 = v60 == v46;
        v61 = v60 < v46;
        if (v167)
        {
          v61 = *(a2 - 7) < v47;
        }

        if (v61)
        {
          *v43 = *(a2 - 2);
LABEL_63:
          *(a2 - 8) = v46;
          *(a2 - 7) = v47;
          *(a2 - 3) = v51;
        }
      }

      else if (v50)
      {
        v52 = *(v10 - 1);
        *v43 = *(a2 - 2);
        *(a2 - 8) = v44;
        *(a2 - 7) = v45;
        *(a2 - 3) = v52;
        v53 = *v43;
        v54 = v8[4];
        v55 = v8[5];
        v167 = v53 == v54;
        v56 = v53 < v54;
        if (v167)
        {
          v56 = *(v10 - 3) < v55;
        }

        if (v56)
        {
          v57 = *(v8 + 3);
          *(v8 + 1) = *v43;
          *v43 = v54;
          *(v10 - 3) = v55;
          *(v10 - 1) = v57;
        }
      }

      v62 = v10 + 4;
      v63 = v10[4];
      v64 = v10[5];
      v65 = v8[8];
      v66 = v8[9];
      v67 = v63 < v65;
      if (v63 == v65)
      {
        v67 = v64 < v66;
      }

      v68 = *(a2 - 12);
      v167 = v68 == v63;
      v69 = v68 < v63;
      if (v167)
      {
        v69 = *(a2 - 11) < v64;
      }

      if (v67)
      {
        v70 = *(v8 + 5);
        if (v69)
        {
          *(v8 + 2) = *(a2 - 3);
          goto LABEL_80;
        }

        *(v8 + 2) = *v62;
        *v62 = v65;
        v10[5] = v66;
        *(v10 + 3) = v70;
        v77 = *(a2 - 12);
        v167 = v77 == v65;
        v78 = v77 < v65;
        if (v167)
        {
          v78 = *(a2 - 11) < v66;
        }

        if (v78)
        {
          *v62 = *(a2 - 3);
LABEL_80:
          *(a2 - 12) = v65;
          *(a2 - 11) = v66;
          *(a2 - 5) = v70;
        }
      }

      else if (v69)
      {
        v71 = *(v10 + 3);
        *v62 = *(a2 - 3);
        *(a2 - 12) = v63;
        *(a2 - 11) = v64;
        *(a2 - 5) = v71;
        v72 = *v62;
        v73 = v8[8];
        v74 = v8[9];
        v167 = v72 == v73;
        v75 = v72 < v73;
        if (v167)
        {
          v75 = v10[5] < v74;
        }

        if (v75)
        {
          v76 = *(v8 + 5);
          *(v8 + 2) = *v62;
          *v62 = v73;
          v10[5] = v74;
          *(v10 + 3) = v76;
        }
      }

      v79 = *v10;
      v80 = v10[1];
      v81 = *v43;
      v82 = *(v10 - 3);
      if (v79 == v81)
      {
        result = v80 < v82;
      }

      else
      {
        result = v79 < v81;
      }

      v83 = *v62;
      v84 = v10[5];
      v85 = v84 < v80;
      if (v83 != v79)
      {
        v85 = v83 < v79;
      }

      if (result)
      {
        v86 = *(v10 - 1);
        if (v85)
        {
          *v43 = *v62;
          goto LABEL_98;
        }

        *v43 = *v10;
        *v10 = v81;
        v10[1] = v82;
        *(v10 + 1) = v86;
        v91 = v84 < v82;
        if (v83 != v81)
        {
          v91 = v83 < v81;
        }

        if (v91)
        {
          *v10 = *v62;
LABEL_98:
          *v62 = v81;
          v10[5] = v82;
          *(v10 + 3) = v86;
        }
      }

      else if (v85)
      {
        v87 = *(v10 + 1);
        v88 = *v62;
        *v10 = *v62;
        *v62 = v79;
        v10[5] = v80;
        *(v10 + 3) = v87;
        v89 = v82 > WORD1(v88);
        if (v81 != v88)
        {
          v89 = v81 > v88;
        }

        if (v89)
        {
          v90 = *(v10 - 1);
          *v43 = v88;
          *v10 = v81;
          v10[1] = v82;
          *(v10 + 1) = v90;
        }
      }

      v92 = *v8;
      v93 = *(v8 + 1);
      *v8 = *v10;
      *v10 = v92;
      *(v10 + 1) = v93;
      goto LABEL_100;
    }

    v21 = *v8;
    v22 = v8[1];
    v23 = *v10;
    v24 = v10[1];
    v25 = v22 < v24;
    if (v21 != v23)
    {
      v25 = v21 < v23;
    }

    v26 = v12 < v22;
    v167 = v11 == v21;
    v27 = v11 < v21;
    if (!v167)
    {
      v26 = v27;
    }

    if (v25)
    {
      v28 = *(v10 + 1);
      if (v26)
      {
        *v10 = *(a2 - 1);
LABEL_58:
        *(a2 - 4) = v23;
        *(a2 - 3) = v24;
        *(a2 - 1) = v28;
        goto LABEL_100;
      }

      *v10 = *v8;
      *v8 = v23;
      v8[1] = v24;
      *(v8 + 1) = v28;
      v58 = *(a2 - 4);
      v167 = v58 == v23;
      v59 = v58 < v23;
      if (v167)
      {
        v59 = *(a2 - 3) < v24;
      }

      if (v59)
      {
        *v8 = *(a2 - 1);
        goto LABEL_58;
      }
    }

    else if (v26)
    {
      v35 = *(v8 + 1);
      *v8 = *(a2 - 1);
      *(a2 - 4) = v21;
      *(a2 - 3) = v22;
      *(a2 - 1) = v35;
      v36 = *v8;
      v37 = *v10;
      v38 = v10[1];
      v167 = v36 == v37;
      v39 = v36 < v37;
      if (v167)
      {
        v39 = v8[1] < v38;
      }

      if (v39)
      {
        v40 = *(v10 + 1);
        *v10 = *v8;
        *v8 = v37;
        v8[1] = v38;
        *(v8 + 1) = v40;
      }
    }

LABEL_100:
    --a3;
    if (a4)
    {
      goto LABEL_104;
    }

    v94 = *(v8 - 4);
    v95 = *v8;
    v167 = v94 == v95;
    v96 = v94 < v95;
    if (v167)
    {
      v96 = *(v8 - 3) < v8[1];
    }

    if (v96)
    {
LABEL_104:
      v97 = 0;
      v98 = *v8;
      LODWORD(v99) = *v8;
      LODWORD(v100) = WORD1(*v8);
      do
      {
        v101 = &v8[v97 + 4];
        if (v101 == a2)
        {
          goto LABEL_298;
        }

        v102 = *v101;
        v103 = v8[v97 + 5] < v100;
        if (v102 != v99)
        {
          v103 = v102 < v99;
        }

        v97 += 4;
      }

      while (v103);
      v104 = &v8[v97];
      v105 = a2;
      if (v97 != 4)
      {
        while (v105 != v8)
        {
          v106 = *(v105 - 4);
          v105 -= 4;
          v107 = v106 < v99;
          if (v106 == v99)
          {
            v107 = v105[1] < v100;
          }

          if (v107)
          {
            goto LABEL_120;
          }
        }

        goto LABEL_298;
      }

      v105 = a2;
      do
      {
        if (v104 >= v105)
        {
          break;
        }

        v108 = *(v105 - 4);
        v105 -= 4;
        v109 = v108 < v99;
        if (v108 == v99)
        {
          v109 = v105[1] < v100;
        }
      }

      while (!v109);
LABEL_120:
      if (v104 < v105)
      {
        v110 = v104;
        v111 = v105;
LABEL_122:
        v112 = v110[1];
        v113 = *(v110 + 1);
        result = *v111;
        *v110 = *v111;
        *v111 = v102;
        v111[1] = v112;
        *(v111 + 1) = v113;
        v114 = v110 + 4;
        while (v114 != a2)
        {
          v102 = *v114;
          v115 = v114[1] < v100;
          if (v102 != v99)
          {
            v115 = v102 < v99;
          }

          v114 += 4;
          if (!v115)
          {
            v110 = v114 - 4;
            while (v111 != v8)
            {
              v116 = *(v111 - 4);
              v111 -= 4;
              result = v111[1] < v100;
              v117 = v116 < v99;
              if (v116 == v99)
              {
                v117 = v111[1] < v100;
              }

              if (v117)
              {
                if (v110 < v111)
                {
                  goto LABEL_122;
                }

                v118 = v114 - 8;
                goto LABEL_135;
              }
            }

            goto LABEL_298;
          }
        }

        goto LABEL_298;
      }

      v118 = v104 - 4;
LABEL_135:
      if (v118 != v8)
      {
        *v8 = *v118;
      }

      *v118 = v98;
      if (v104 < v105)
      {
LABEL_140:
        result = std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,PseudoFeature *,false>(v7, v118, a3, a4 & 1);
        a4 = 0;
        v8 = v118 + 4;
        continue;
      }

      v119 = std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PseudoFeature *>(v8, v118);
      v8 = v118 + 4;
      result = std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PseudoFeature *>(v118 + 4, a2);
      if (!result)
      {
        if (v119)
        {
          continue;
        }

        goto LABEL_140;
      }

      a2 = v118;
      if (v119)
      {
        return result;
      }

      goto LABEL_2;
    }

    v98 = *v8;
    LODWORD(v99) = *v8;
    LODWORD(v100) = WORD1(*v8);
    v120 = *(a2 - 4);
    v167 = v120 == v99;
    v121 = v120 > v99;
    if (v167)
    {
      v121 = *(a2 - 3) > WORD1(*v8);
    }

    if (v121)
    {
      v122 = v8 + 4;
      do
      {
        if (v122 == a2)
        {
          goto LABEL_298;
        }

        v123 = *v122;
        v167 = v123 == v99;
        v124 = v123 > v99;
        if (v167)
        {
          v124 = v122[1] > v100;
        }

        v122 += 4;
      }

      while (!v124);
      v8 = v122 - 4;
    }

    else
    {
      v125 = v8 + 4;
      do
      {
        v8 = v125;
        if (v125 >= a2)
        {
          break;
        }

        v126 = *v125;
        v127 = v8[1] > v100;
        v167 = v126 == v99;
        v128 = v126 > v99;
        if (!v167)
        {
          v127 = v128;
        }

        v125 = v8 + 4;
      }

      while (!v127);
    }

    v129 = a2;
    if (v8 < a2)
    {
      v129 = a2;
      while (v129 != v7)
      {
        v130 = *(v129 - 4);
        v129 -= 4;
        v131 = v130 > v99;
        if (v130 == v99)
        {
          v131 = v129[1] > v100;
        }

        if (!v131)
        {
          goto LABEL_161;
        }
      }

      goto LABEL_298;
    }

LABEL_161:
    if (v8 < v129)
    {
      LOWORD(v132) = *v8;
      do
      {
        v133 = v8[1];
        v134 = *(v8 + 1);
        *v8 = *v129;
        *v129 = v132;
        v129[1] = v133;
        *(v129 + 1) = v134;
        v135 = v8 + 4;
        do
        {
          if (v135 == a2)
          {
            goto LABEL_298;
          }

          v132 = *v135;
          v136 = v135[1] > v100;
          if (v132 != v99)
          {
            v136 = v132 > v99;
          }

          v135 += 4;
        }

        while (!v136);
        v8 = v135 - 4;
        do
        {
          if (v129 == v7)
          {
            goto LABEL_298;
          }

          v137 = *(v129 - 4);
          v129 -= 4;
          v138 = v137 > v99;
          if (v137 == v99)
          {
            v138 = v129[1] > v100;
          }
        }

        while (v138);
      }

      while (v8 < v129);
    }

    v139 = v8 - 4;
    if (v8 - 4 != v7)
    {
      *v7 = *v139;
    }

    a4 = 0;
    *v139 = v98;
  }

  if (v9 != 3)
  {
    if (v9 == 4)
    {

      return std::__sort4[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PseudoFeature *,0>(v8, v8 + 4, v8 + 8, a2 - 4);
    }

    if (v9 == 5)
    {
      result = std::__sort4[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PseudoFeature *,0>(v8, v8 + 4, v8 + 8, v8 + 12);
      v145 = *(a2 - 4);
      v146 = v8[12];
      v147 = v8[13];
      v167 = v145 == v146;
      v148 = v145 < v146;
      if (v167)
      {
        v148 = *(a2 - 3) < v147;
      }

      if (v148)
      {
        v149 = *(v8 + 7);
        *(v8 + 3) = *(a2 - 1);
        *(a2 - 4) = v146;
        *(a2 - 3) = v147;
        *(a2 - 1) = v149;
        v150 = v8[12];
        v151 = v8[8];
        v152 = v8[9];
        v167 = v150 == v151;
        v153 = v150 < v151;
        if (v167)
        {
          v153 = v8[13] < v152;
        }

        if (v153)
        {
          v154 = *(v8 + 5);
          v155 = *(v8 + 3);
          *(v8 + 2) = v155;
          v8[12] = v151;
          v8[13] = v152;
          *(v8 + 7) = v154;
          v156 = v8[4];
          v157 = v8[5];
          v158 = v157 > WORD1(v155);
          if (v156 != v155)
          {
            v158 = v156 > v155;
          }

          if (v158)
          {
            v159 = *(v8 + 3);
            *(v8 + 1) = v155;
            v8[8] = v156;
            v8[9] = v157;
            *(v8 + 5) = v159;
            v160 = *v8;
            v161 = v8[1];
            v162 = v160 > v155;
            if (v160 == v155)
            {
              v162 = v161 > WORD1(v155);
            }

            if (v162)
            {
              v163 = *(v8 + 1);
              *v8 = v155;
              v8[4] = v160;
              v8[5] = v161;
              *(v8 + 3) = v163;
            }
          }
        }
      }

      return result;
    }

    goto LABEL_10;
  }

  v140 = v8[4];
  v141 = v8[5];
  LODWORD(v99) = *v8;
  LODWORD(v98) = v8[1];
  v142 = v140 < v99;
  if (v140 == v99)
  {
    v142 = v141 < v98;
  }

  v143 = *(a2 - 4);
  v167 = v143 == v140;
  v144 = v143 < v140;
  if (v167)
  {
    v144 = *(a2 - 3) < v141;
  }

  if (!v142)
  {
    if (v144)
    {
      v230 = *(v8 + 3);
      *(v8 + 1) = *(a2 - 1);
      *(a2 - 4) = v140;
      *(a2 - 3) = v141;
      *(a2 - 1) = v230;
      v231 = v8[4];
      v232 = *v8;
      v233 = v8[1];
      v167 = v231 == v232;
      v234 = v231 < v232;
      if (v167)
      {
        v234 = v8[5] < v233;
      }

      if (v234)
      {
        v235 = *(v8 + 1);
        *v8 = *(v8 + 1);
        v8[4] = v232;
        v8[5] = v233;
        *(v8 + 3) = v235;
      }
    }

    return result;
  }

  LODWORD(v100) = *(v8 + 1);
  if (v144)
  {
    *v8 = *(a2 - 1);
    goto LABEL_303;
  }

LABEL_299:
  *v7 = *(v7 + 1);
  v7[4] = v99;
  v7[5] = v98;
  *(v7 + 3) = v100;
  v248 = *(a2 - 4);
  v167 = v248 == v99;
  v249 = v248 < v99;
  if (v167)
  {
    v249 = *(a2 - 3) < v98;
  }

  if (!v249)
  {
    return result;
  }

  *(v7 + 1) = *(a2 - 1);
LABEL_303:
  *(a2 - 4) = v99;
  *(a2 - 3) = v98;
LABEL_304:
  *(a2 - 1) = v100;
  return result;
}

unsigned __int16 *std::__sort4[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,PseudoFeature *,0>(unsigned __int16 *result, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *result;
  v7 = result[1];
  if (v4 == v6)
  {
    v8 = v5 < v7;
  }

  else
  {
    v8 = v4 < v6;
  }

  v9 = *a3;
  v10 = a3[1];
  v11 = v9 == v4;
  v12 = v9 < v4;
  if (v11)
  {
    v12 = v10 < v5;
  }

  if (v8)
  {
    v13 = *(result + 1);
    if (v12)
    {
      *result = *a3;
LABEL_18:
      *a3 = v6;
      a3[1] = v7;
      *(a3 + 1) = v13;
      v10 = v7;
      goto LABEL_19;
    }

    *result = *a2;
    *a2 = v6;
    a2[1] = v7;
    *(a2 + 1) = v13;
    v21 = *a3;
    v10 = a3[1];
    v11 = v21 == v6;
    v22 = v21 < v6;
    if (v11)
    {
      v22 = v10 < v7;
    }

    if (v22)
    {
      *a2 = *a3;
      goto LABEL_18;
    }
  }

  else if (v12)
  {
    v14 = *(a2 + 1);
    *a2 = *a3;
    *a3 = v4;
    a3[1] = v5;
    *(a3 + 1) = v14;
    v15 = *a2;
    v16 = *result;
    v17 = result[1];
    v18 = a2[1] < v17;
    v11 = v15 == v16;
    v19 = v15 < v16;
    if (!v11)
    {
      v18 = v19;
    }

    v10 = v5;
    if (v18)
    {
      v20 = *(result + 1);
      *result = *a2;
      *a2 = v16;
      a2[1] = v17;
      *(a2 + 1) = v20;
      v10 = a3[1];
    }
  }

LABEL_19:
  v23 = *a4;
  v24 = *a3;
  v11 = v23 == v24;
  v25 = v23 < v24;
  if (v11)
  {
    v25 = a4[1] < v10;
  }

  if (v25)
  {
    v26 = *(a3 + 1);
    *a3 = *a4;
    *a4 = v24;
    a4[1] = v10;
    *(a4 + 1) = v26;
    v27 = *a3;
    v28 = *a2;
    v29 = a2[1];
    v11 = v27 == v28;
    v30 = v27 < v28;
    if (v11)
    {
      v30 = a3[1] < v29;
    }

    if (v30)
    {
      v31 = *(a2 + 1);
      *a2 = *a3;
      *a3 = v28;
      a3[1] = v29;
      *(a3 + 1) = v31;
      v32 = *a2;
      v33 = *result;
      v34 = result[1];
      v11 = v32 == v33;
      v35 = v32 < v33;
      if (v11)
      {
        v35 = a2[1] < v34;
      }

      if (v35)
      {
        v36 = *(result + 1);
        *result = *a2;
        *a2 = v33;
        a2[1] = v34;
        *(a2 + 1) = v36;
      }
    }
  }

  return result;
}

void addOpticalSizeComponents(unsigned int *a1, uint64_t a2, int a3, const void *a4, uint64_t a5, const __CFNumber *a6, atomic_ullong *a7)
{
  LODWORD(v11) = a3;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v14 = a1[4];
  if (a5 == 1 && v14 <= 0x10 && ((0x1FEFFu >> v14) & 1) != 0)
  {
    v14 = dword_184773744[v14];
  }

  v15 = v14 % 9;
  if (v14 % 9 <= 2)
  {
    DetermineLanguageSpecificParameters();
    if (v15 < dword_1ED567468)
    {
      v14 = v14 - v15 + dword_1ED567468;
    }
  }

  if (v14 == 8)
  {
    v11 = 0;
  }

  else
  {
    v11 = v11;
  }

  v16 = (a2 + 40 * v14);
  if (a6)
  {
    v17 = SFFontNameForWidth(v14, a6, 0);
  }

  else
  {
    v17 = *v16;
  }

  AddVariationInfoWithGrade(a7, v17, v11);
  for (i = 6; i != 10; i += 2)
  {
    insertOpticalSizeComponent(v16, v17, *a1, a1[3], v11, &Mutable, a4, 0, *&a1[i] * 0.5, 0);
  }

  CFDictionaryAddValue(atomic_load_explicit(a7, memory_order_acquire), @"Components", atomic_load_explicit(&Mutable, memory_order_acquire));
  v19 = Mutable;
}

void insertOpticalSizeComponent(const __CFString **a1, const __CFString *a2, uint64_t a3, int a4, uint64_t a5, atomic_ullong *a6, const void *a7, const void *a8, double a9, char a10)
{
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (a2)
  {
    v19 = a2;
  }

  else
  {
    v19 = *a1;
  }

  setOpticalSizeComponent(v19, a1, a3, a4, a5, a7, &Mutable, 0, a9, 0.0, 0.0, 0.0, a8, a10);
  CFArrayInsertValueAtIndex(atomic_load_explicit(a6, memory_order_acquire), 0, atomic_load_explicit(&Mutable, memory_order_acquire));
  v20 = Mutable;
}

void TAttributes::HandleForegroundCGColorAttribute(id a1, uint64_t *a2)
{
  if (a1)
  {
    v2 = *a2;
    *(v2 + 136) = *(*a2 + 136) | 2;
    TCFRef<__CTFont const*>::Retain((v2 + 32), a1);
  }
}

void TBaseFont::CreateVariantWithSymbolicTraits(atomic_ullong *this@<X0>, unsigned int *a2@<X1>, const __CTFontDescriptor *a3@<X3>, int a4@<W2>, void *a5@<X8>)
{
  v115[1] = *MEMORY[0x1E69E9840];
  v10 = (*(*this + 160))(this);
  v11 = v10;
  v12 = *a2;
  v13 = *(a3 + 5);
  v14 = *(v13 + 16);
  v15 = TDescriptor::GetSystemUIFontOptions(v10) & v14;
  if ((v12 ^ v11) & a4 | v15)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v16 = *a2 & a4 | v11 & ~a4;
    v102 = a2;
    *a2 = v16;
    if (v15)
    {
      v17 = (v16 & 0x400) != 0;
    }

    else
    {
      v17 = 0;
    }

    if (v15 && ((v16 & 0x400) == 0 || (v11 & 0x400) != 0))
    {
      if (TBaseFont::SystemUIFontAttributesForSymbolicTraits(this, &Mutable, v12, a4, v13))
      {
        *&valuePtr = COERCE_DOUBLE(atomic_load_explicit(&Mutable, memory_order_acquire));
        LODWORD(v110) = 1028;
        TCFBase_NEW<CTFontDescriptor,__CFDictionary const*&,unsigned int &>(&valuePtr, &v110, a5);
LABEL_129:
        v18 = Mutable;
        goto LABEL_130;
      }

      v16 = *a2;
    }

    *a2 = v16 & 0xFFFE7FFF;
    v108 = 0xAAAAAAAAAAAAAAAALL;
    atomic_load_explicit((v13 + 8), memory_order_acquire);
    explicit = atomic_load_explicit((v13 + 8), memory_order_acquire);
    if (explicit)
    {
      explicit = CFDictionaryGetValue(explicit, @"NSFontFamilyAttribute");
    }

    v108 = explicit;
    TDescriptor::CopyAttribute(v13, @"NSCTFontTraitsAttribute", &valuePtr);
    v98 = atomic_exchange(&valuePtr, 0);

    if (atomic_load_explicit(&v108, memory_order_acquire) == 0 || v17)
    {
      if (v17)
      {
        Value = @"NSCTFontUIFontDesignMonospaced";
        if (!@"NSCTFontUIFontDesignMonospaced")
        {
          goto LABEL_23;
        }

        goto LABEL_22;
      }

      v22 = v98;
      v23 = v22;
      if (v22)
      {
        Value = CFDictionaryGetValue(v22, @"NSCTFontUIFontDesignTrait");
      }

      else
      {
        Value = 0;
      }

      if (Value)
      {
LABEL_22:
        UIFontFamilyNameForDesign = TDescriptorSource::GetUIFontFamilyNameForDesign(Value, v20);
        TCFRef<__CTFont const*>::Retain(&v108, UIFontFamilyNameForDesign);
      }
    }

LABEL_23:
    v94 = a3;
    v99 = v13;
    v100 = a5;
    v107 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 120))(&v107, this);
    v106 = 0xAAAAAAAAAAAAAAAALL;
    v96 = this;
    (*(*this + 112))(&v106, this);
    v105 = 0;
    v25 = atomic_load_explicit(&v107, memory_order_acquire);
    v26 = 0.0;
    v95 = v15;
    v92 = a4;
    if (v25 && (Count = CFArrayGetCount(v25)) != 0)
    {
      v28 = Count;
      v101 = 0;
      v29 = 0;
      v30 = 0.0;
      v31 = &unk_1EF27A6B0;
      v32 = 0.0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v25, v29);
        v34 = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisIdentifier");
        if (v34)
        {
          v35 = v34;
          if (CFEqual(v34, v31))
          {
            TCFRef<__CTFont const*>::Retain(&v105, ValueAtIndex);
          }

          else if (CFEqual(v35, &unk_1EF27A680))
          {
            v36 = v31;
            v37 = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisMaximumValue");
            v38 = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisMinimumValue");
            v39 = atomic_load_explicit(&v106, memory_order_acquire);
            v40 = v39;
            v41 = v39 ? CFDictionaryGetValue(v39, &unk_1EF27A680) : 0;

            v42 = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisDefaultValue");
            v101 = v42;
            v43 = v41 ? v41 : v42;
            v31 = v36;
            if (v37)
            {
              if (v38 && v43 && !CFEqual(v37, v38))
              {
                *&valuePtr = NAN;
                CFNumberGetValue(v37, kCFNumberDoubleType, &valuePtr);
                v32 = *&valuePtr;
                *&valuePtr = NAN;
                CFNumberGetValue(v38, kCFNumberDoubleType, &valuePtr);
                v26 = *&valuePtr;
                *&valuePtr = NAN;
                CFNumberGetValue(v43, kCFNumberDoubleType, &valuePtr);
                v30 = (*&valuePtr - v26) / (v32 - v26);
              }
            }
          }
        }

        ++v29;
      }

      while (v28 != v29);
    }

    else
    {
      v101 = 0;
      v32 = 0.0;
      v30 = 0.0;
    }

    if (!atomic_load_explicit(&v108, memory_order_acquire))
    {
      (*(*v96 + 72))(&valuePtr, v96, @"CTFontSyntheticFamilyName");
    }

    if (!atomic_load_explicit(&v108, memory_order_acquire) && !atomic_load_explicit(&v105, memory_order_acquire))
    {
      *v100 = 0;
LABEL_128:

      goto LABEL_129;
    }

    v44 = (*(*v96 + 784))(v96);
    if ((v92 & 2) != 0 && !v44)
    {
      v45 = v102;
      if ((*v102 & 2) != 0)
      {
        v46 = 0.4;
      }

      else
      {
        v46 = 0.0;
      }

      goto LABEL_64;
    }

    TraitsValues = atomic_load_explicit(v96 + 30, memory_order_acquire);
    if (!TraitsValues)
    {
      TraitsValues = TBaseFont::CreateTraitsValues(v96);
    }

    v48 = v98;
    if (v48)
    {
      v49 = v48;
      v50 = CFDictionaryGetValue(v48, @"NSCTFontWeightTrait");

      if (v50)
      {
        LODWORD(valuePtr) = -1;
        CFNumberGetValue(v50, kCFNumberFloatType, &valuePtr);
        v46 = *&valuePtr;
LABEL_63:
        v45 = v102;
LABEL_64:
        if ((*(*v96 + 704))(v96))
        {
          v51 = 2;
        }

        else
        {
          v51 = 0;
        }

        v52 = *(v99 + 4);
        v104 = 0xAAAAAAAAAAAAAAAALL;
        TDescriptorSource::TDescriptorSource(&valuePtr);
        if (v95)
        {
          v53 = v51 | 0x400;
        }

        else
        {
          v53 = v51;
        }

        v54 = atomic_load_explicit(&v108, memory_order_acquire);
        if (v95)
        {
          v55 = v94;
        }

        else
        {
          v55 = 0;
        }

        key = v53 | v52 & 0x10000;
        TDescriptorSource::CopyMatchingDescriptorsForFamily(&valuePtr, v54, &v104);
        *&v56 = 0xAAAAAAAAAAAAAAAALL;
        *(&v56 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v114[14] = v56;
        v114[13] = v56;
        v114[12] = v56;
        v114[11] = v56;
        v114[10] = v56;
        v114[9] = v56;
        v114[8] = v56;
        v114[7] = v56;
        v114[6] = v56;
        v114[5] = v56;
        v114[4] = v56;
        v114[3] = v56;
        v114[2] = v56;
        v114[1] = v56;
        v114[0] = v56;
        v112 = 0;
        v113 = 0;
        *&valuePtr = 0.0;
        v115[0] = v114;
        *v45 &= 0xFFFBBFFu;
        v57 = atomic_load_explicit(&v104, memory_order_acquire);
        v93 = v46;
        if (v57 && (v58 = v45, (v59 = CFArrayGetCount(v57)) != 0))
        {
          v60 = v59;
          v61 = 0;
          v62 = v46;
          v63 = INFINITY;
          do
          {
            v64 = CFArrayGetValueAtIndex(v57, v61);
            v65 = v64;
            v66 = v64[5];
            if ((*(v66 + 4) & 0x80000000) == 0)
            {
              TDescriptor::InitBaseFont(v64[5], 0, 0.0);
            }

            v67 = atomic_load_explicit(v66 + 4, memory_order_acquire);
            if (v67)
            {
              v68 = atomic_load_explicit(v67 + 30, memory_order_acquire);
              if (!v68)
              {
                v68 = TBaseFont::CreateTraitsValues(v67);
              }

              if (v68 && *v58 == (*v68 & 0xFFFBBFF))
              {
                v69 = v112;
                if (v112 >= v113)
                {
                  v71 = (v112 - valuePtr) >> 3;
                  if ((v71 + 1) >> 61)
                  {
                    std::__throw_bad_array_new_length[abi:fn200100]();
                  }

                  v72 = (v113 - valuePtr) >> 2;
                  if (v72 <= v71 + 1)
                  {
                    v72 = v71 + 1;
                  }

                  v73 = v113 - valuePtr >= 0x7FFFFFFFFFFFFFF8 ? 0x1FFFFFFFFFFFFFFFLL : v72;
                  if (v73)
                  {
                    v74 = v115[0];
                    if (v115[0] + 8 * v73 > v115)
                    {
                      if (!(v73 >> 61))
                      {
                        operator new();
                      }

                      std::__throw_bad_array_new_length[abi:fn200100]();
                    }

                    v115[0] += 8 * v73;
                  }

                  else
                  {
                    v74 = 0;
                  }

                  v75 = v74 + 8 * v73;
                  v76 = (v74 + 8 * v71);
                  *v76 = v65;
                  v70 = (v76 + 1);
                  v77 = (v74 + 8 * v71 - (v112 - valuePtr));
                  memcpy(v77, valuePtr, v112 - valuePtr);
                  v78 = valuePtr;
                  v79 = v113;
                  valuePtr = v77;
                  v112 = v70;
                  v113 = v75;
                  if (v78)
                  {
                    v58 = v102;
                    if (v114 > v78 || v115 <= v78)
                    {
                      operator delete(v78);
                    }

                    else if (v79 == v115[0])
                    {
                      v115[0] = v78;
                    }
                  }

                  else
                  {
                    v58 = v102;
                  }
                }

                else
                {
                  *v112 = v65;
                  v70 = v69 + 8;
                }

                v112 = v70;
                v80 = (*(v68 + 8) - v62) * (*(v68 + 8) - v62);
                if (v32 > v26)
                {
                  v103 = 0xAAAAAAAAAAAAAAAALL;
                  (*(*v67 + 112))(&v103, v67);
                  v81 = atomic_load_explicit(&v103, memory_order_acquire);
                  v82 = v81;
                  if (v81)
                  {
                    v83 = CFDictionaryGetValue(v81, &unk_1EF27A680);
                  }

                  else
                  {
                    v83 = 0;
                  }

                  if (v83)
                  {
                    v84 = v83;
                  }

                  else
                  {
                    v84 = v101;
                  }

                  *&v110 = NAN;
                  CFNumberGetValue(v84, kCFNumberDoubleType, &v110);
                  v80 = v80 + (v30 - (*&v110 - v26) / (v32 - v26)) * (v30 - (*&v110 - v26) / (v32 - v26));
                }

                if (v63 > v80)
                {
                  v55 = v65;
                  v63 = v80;
                  if (fabs(v80) < 0.001)
                  {
                    break;
                  }
                }
              }
            }

            ++v61;
            v65 = v55;
          }

          while (v60 != v61);
        }

        else
        {
          v65 = v55;
        }

        TDescriptor::CopyAttribute(v99, @"NSFontSizeAttribute", &v110);
        v85 = atomic_exchange(&v110, 0);

        if (v65)
        {
          v103 = v65;
          *&v110 = COERCE_DOUBLE(atomic_exchange(&v103, 0));
          v86 = v100;
LABEL_121:
          TDescriptorSource::CopyFontDescriptorWithOptions(&v110, key, v85, v86);

          v87 = v103;
LABEL_122:

          goto LABEL_123;
        }

        if (valuePtr != v112)
        {
          v103 = *valuePtr;
          *&v110 = COERCE_DOUBLE(atomic_exchange(&v103, 0));
          v86 = v100;
          goto LABEL_121;
        }

        if (atomic_load_explicit(&v105, memory_order_acquire))
        {
          v88 = ClassOfWeight(v93);
          v89 = atomic_load_explicit(&v106, memory_order_acquire);
          if (v89)
          {
            v90 = v89;
            v91 = CFDictionaryGetValue(v89, &unk_1EF27A6B0);

            if (v91)
            {
              *&v110 = NAN;
              CFNumberGetValue(v91, kCFNumberDoubleType, &v110);
              if (vabdd_f64(*&v110, v88) < 0.001)
              {
                goto LABEL_139;
              }
            }
          }

          else
          {
          }

          CopyVariationWithValue(atomic_load_explicit(&v106, memory_order_acquire), &unk_1EF27A6B0, v88, &v110);

          if (IsValueInRangeOfAxis(v88, atomic_load_explicit(&v105, memory_order_acquire)))
          {
            *&v110 = -3.72066208e-103;
            atomic_load_explicit(&v106, memory_order_acquire);
            v103 = v96;
            TCFBase_NEW<CTFontDescriptor,TBaseFont const*,__CFDictionary const*,unsigned int>(&v110);
            TDescriptorSource::CopyFontDescriptorWithOptions(&v110, key, v85, v100);
            v87 = v110;
            goto LABEL_122;
          }
        }

LABEL_139:
        *v100 = 0;
LABEL_123:

        if (*&valuePtr != 0.0)
        {
          v112 = valuePtr;
          if (v114 > valuePtr || v115 <= valuePtr)
          {
            operator delete(valuePtr);
          }
        }

        goto LABEL_128;
      }
    }

    else
    {
    }

    if (TraitsValues)
    {
      v46 = *(TraitsValues + 8);
    }

    else
    {
      v46 = 0.0;
    }

    goto LABEL_63;
  }

  *&valuePtr = COERCE_DOUBLE(a3);
  *a5 = atomic_exchange(&valuePtr, 0);
  v18 = valuePtr;
LABEL_130:
}

CTFontDescriptorRef CTFontDescriptorCreateCopyWithSymbolicTraits(CTFontDescriptorRef original, CTFontSymbolicTraits symTraitValue, CTFontSymbolicTraits symTraitMask)
{
  CopyWithAttributes = original;
  v29 = symTraitValue;
  if (original)
  {
    v5 = *(original + 5);
    if ((*(v5 + 16) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(*(original + 5), 0, 0.0);
    }

    explicit = atomic_load_explicit((v5 + 32), memory_order_acquire);
    if (explicit)
    {
      v7 = symTraitMask & v29 & 0x800;
      v8 = symTraitMask & v29 & 0x1000;
      v9 = v29 & 0xFFFFE7FF;
      v29 &= 0xFFFFE7FF;
      if ((symTraitMask & 0xFFFFE7FF) == 0)
      {
        valuePtr = (v8 | v7 | v9);
        v16 = *MEMORY[0x1E695E480];
        v17 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &valuePtr);
        values = v17;
        valuePtr = @"NSCTFontSymbolicTrait";
        v18 = MEMORY[0x1E695E9D8];
        v19 = MEMORY[0x1E695E9E8];
        v20 = CFDictionaryCreate(v16, &valuePtr, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        values = v20;
        valuePtr = @"NSCTFontTraitsAttribute";
        v21 = CFDictionaryCreate(v16, &valuePtr, &values, 1, v18, v19);
        CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(CopyWithAttributes, v21);

        v22 = v17;
LABEL_25:

        return CopyWithAttributes;
      }

      v28 = 0xAAAAAAAAAAAAAAAALL;
      TBaseFont::CreateVariantWithSymbolicTraits(explicit, &v29, CopyWithAttributes, symTraitMask & 0xFFFFE7FF, &v28);
      if (!atomic_load_explicit(&v28, memory_order_acquire))
      {
        CopyWithAttributes = 0;
LABEL_24:
        v22 = v28;
        goto LABEL_25;
      }

      TDescriptor::CopyAttributes(CopyWithAttributes[5], &valuePtr);
      v10 = atomic_exchange(&valuePtr, 0);

      v11 = CTFontDescriptorCopyAttributes(atomic_load_explicit(&v28, memory_order_acquire));
      v12 = v11;
      v13 = atomic_load_explicit(&v28, memory_order_acquire);
      if (v13 && (v14 = *(*(v13 + 40) + 16), (TDescriptor::GetSystemUIFontOptions(v11) & v14) != 0) || v10 && CFDictionaryGetCount(v10) == 1 && CFDictionaryGetValue(v10, @"NSFontNameAttribute"))
      {
        LOBYTE(v15) = 0;
        if (v7)
        {
          goto LABEL_20;
        }
      }

      else
      {
        v15 = (*(explicit + 180) >> 28) & 1;
        if (v7)
        {
          goto LABEL_20;
        }
      }

      if ((v15 & 1) == 0)
      {
        CopyWithAttributes = atomic_exchange(&v28, 0);
LABEL_23:

        goto LABEL_24;
      }

LABEL_20:
      v27 = 0xAAAAAAAAAAAAAAAALL;
      TCFMutableDictionary::TCFMutableDictionary(&v27, v10);
      TCFMutableDictionary::SetPairs(&v27, v12);
      if (v7)
      {
        valuePtr = (v7 | v29 | v8);
        v23 = *MEMORY[0x1E695E480];
        v24 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, &valuePtr);
        values = v24;
        valuePtr = @"NSCTFontSymbolicTrait";
        v25 = CFDictionaryCreate(v23, &valuePtr, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(atomic_load_explicit(&v27, memory_order_acquire), @"NSCTFontTraitsAttribute", v25);
      }

      CopyWithAttributes = CTFontDescriptorCreateWithAttributesAndOptions(atomic_load_explicit(&v27, memory_order_acquire), *(CopyWithAttributes[5] + 4));

      goto LABEL_23;
    }

    return 0;
  }

  return CopyWithAttributes;
}

uint64_t TBaseFont::SystemUIFontAttributesForSymbolicTraits(atomic_ullong *this, atomic_ullong *a2, uint64_t *a3, int a4, const TDescriptor *a5)
{
  v10 = *(a5 + 4);
  if ((TDescriptor::GetSystemUIFontOptions(this) & v10) != 0)
  {
    v50 = 0xAAAAAAAAAAAAAAAALL;
    TDescriptor::CopyAttribute(a5, @"NSCTFontUIUsageAttribute", &v49);
    v50 = atomic_exchange(&v49, 0);

    if (!atomic_load_explicit(&v50, memory_order_acquire))
    {
      TBaseFont::CopyAttributeInternal(this, @"NSCTFontUIUsageAttribute", &v49);
    }

    if (atomic_load_explicit(&v50, memory_order_acquire) && (FontNameForTextStyle = TDescriptorSource::FindFontNameForTextStyle(atomic_load_explicit(&v50, memory_order_acquire), 0, 0, 0, 0, v11)) != 0 || this && ((v13 = (*(*this + 16))(this), v13 != 1414809156) ? (v14 = v13 == 1413695044) : (v14 = 1), v14 && (explicit = atomic_load_explicit(this + 90, memory_order_acquire)) != 0 && (FontNameForTextStyle = CFDictionaryGetValue(explicit, @"name")) != 0))
    {
      Value = FontNameForTextStyle;

      goto LABEL_24;
    }

    atomic_load_explicit(a5 + 1, memory_order_acquire);
    v17 = atomic_load_explicit(a5 + 1, memory_order_acquire);
    if (v17)
    {
      Value = CFDictionaryGetValue(v17, @"NSFontNameAttribute");

      if (Value)
      {
        goto LABEL_24;
      }
    }

    else
    {
    }
  }

  if ((*(a5 + 4) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(a5, 0, 0.0);
  }

  v18 = atomic_load_explicit(a5 + 4, memory_order_acquire);
  if (!v18)
  {
    return 0;
  }

  if ((*(*v18 + 16))(v18) != 1414743620)
  {
    return 0;
  }

  Value = atomic_load_explicit(v18 + 12, memory_order_acquire);
  if (!Value)
  {
    return 0;
  }

LABEL_24:
  v19 = (*(*this + 160))(this);
  result = TDescriptorSource::FindFontNameForNameAndTrait(Value, v19, a3, a4);
  if (!result)
  {
    return result;
  }

  v21 = result;
  CFDictionarySetValue(atomic_load_explicit(a2, memory_order_acquire), @"NSFontNameAttribute", result);
  v24 = TDescriptorSource::TextStyleForUIFontName(v21, v22, v23);
  if (!v24)
  {
    goto LABEL_63;
  }

  CFDictionarySetValue(atomic_load_explicit(a2, memory_order_acquire), @"NSCTFontUIUsageAttribute", v24);
  v50 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptor::CopyAttribute(a5, @"NSCTFontTextStyleTraitsAttribute", &v49);
  v50 = atomic_exchange(&v49, 0);

  if ((a4 & 2) != 0)
  {
    v26 = atomic_load_explicit(&v50, memory_order_acquire);
    v27 = v26;
    if (v26)
    {
      v25 = CFDictionaryContainsKey(v26, @"NSCTFontWeightTrait") != 0;
    }

    else
    {
      v25 = 0;
    }
  }

  else
  {
    v25 = 0;
  }

  if ((a4 & 0x60) != 0)
  {
    v28 = atomic_load_explicit(&v50, memory_order_acquire);
    v29 = v28;
    if (v28)
    {
      v30 = CFDictionaryContainsKey(v28, @"NSCTFontProportionTrait") != 0;
    }

    else
    {
      v30 = 0;
    }
  }

  else
  {
    v30 = 0;
  }

  if (v25 || v30)
  {
    v49 = 0xAAAAAAAAAAAAAAAALL;
    TCFMutableDictionary::TCFMutableDictionary(&v49, atomic_load_explicit(&v50, memory_order_acquire));
    if (v25)
    {
      CFDictionaryRemoveValue(atomic_load_explicit(&v49, memory_order_acquire), @"NSCTFontWeightTrait");
    }

    if (v30)
    {
      CFDictionaryRemoveValue(atomic_load_explicit(&v49, memory_order_acquire), @"NSCTFontProportionTrait");
    }

    TCFRef<__CTFont const*>::Retain(&v50, atomic_load_explicit(&v49, memory_order_acquire));
  }

  LODWORD(valuePtr) = 0;
  v31 = atomic_load_explicit(&v50, memory_order_acquire);
  if (v31)
  {
    v32 = v31;
    v33 = CFDictionaryGetValue(v31, @"NSCTFontSymbolicTrait");

    if (v33)
    {
      CFNumberGetValue(v33, kCFNumberIntType, &valuePtr);
    }

    if ((a4 & 1) == 0)
    {
      goto LABEL_49;
    }

LABEL_51:
    v34 = (a3 & 1) != 0 && CFStringFind(v21, @"Italic", 0).location == -1;
    goto LABEL_54;
  }

  if (a4)
  {
    goto LABEL_51;
  }

LABEL_49:
  v34 = valuePtr;
LABEL_54:
  if (v34 != valuePtr)
  {
    CreateTraitsWithSymbolicTraits(atomic_load_explicit(&v50, memory_order_acquire), v34, v34 | a4, &v49);
  }

  v35 = atomic_load_explicit(&v50, memory_order_acquire);
  if (v35)
  {
    v36 = v35;
    Count = CFDictionaryGetCount(v35);

    if (Count)
    {
      CFDictionarySetValue(atomic_load_explicit(a2, memory_order_acquire), @"NSCTFontTraitsAttribute", atomic_load_explicit(&v50, memory_order_acquire));
    }
  }

  else
  {
  }

  TDescriptor::CopyAttribute(a5, @"NSCTFontTextStylePlatformAttribute", &v49);
  v38 = atomic_exchange(&v49, 0);

  if (v38)
  {
    CFDictionarySetValue(atomic_load_explicit(a2, memory_order_acquire), @"NSCTFontTextStylePlatformAttribute", v38);
  }

LABEL_63:
  TDescriptor::CopyAttribute(a5, @"NSCTFontOpticalSizeAttribute", &v50);
  v39 = atomic_exchange(&v50, 0);

  if (v39)
  {
    CFDictionarySetValue(atomic_load_explicit(a2, memory_order_acquire), @"NSCTFontOpticalSizeAttribute", v39);
  }

  v50 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptor::CopyAttribute(a5, @"NSFontSizeAttribute", &v49);
  v50 = atomic_exchange(&v49, 0);

  TDescriptor::CopyAttribute(a5, @"NSCTFontSizeCategoryAttribute", &v49);
  v40 = atomic_exchange(&v49, 0);

  if (v40)
  {
    CFDictionarySetValue(atomic_load_explicit(a2, memory_order_acquire), @"NSCTFontSizeCategoryAttribute", v40);
    v41 = atomic_load_explicit(&v50, memory_order_acquire);
    if ((a3 & 0x40) != 0 || !v41)
    {
      TDescriptor::CopyAttribute(a5, @"NSCTFontTextStylePlatformAttribute", &v49);
      v42 = atomic_exchange(&v49, 0);

      v43 = v40;
      LODWORD(v49) = -1431655766;
      CFNumberGetValue(v43, kCFNumberIntType, &v49);
      v44 = v49;
      if (v42)
      {
        v45 = v42;
        LODWORD(v49) = -1431655766;
        CFNumberGetValue(v45, kCFNumberIntType, &v49);
        v46 = TDescriptorSource::MapTextStyleSizeCategory(v21, v44, v49, 0, 0, 0, 0);
      }

      else
      {
        v46 = TDescriptorSource::MapTextStyleSizeCategory(v21, v49, 0xFFFFFFFFLL, 0, 0, 0, 0);
      }

      TCFNumber::TCFNumber<double>(&v49, v46);
    }
  }

  if (atomic_load_explicit(&v50, memory_order_acquire))
  {
    CFDictionarySetValue(atomic_load_explicit(a2, memory_order_acquire), @"NSFontSizeAttribute", atomic_load_explicit(&v50, memory_order_acquire));
  }

  v49 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptor::CopyAttribute(a5, @"NSCTFontFeatureSettingsAttribute", &v49);
  if (atomic_load_explicit(&v49, memory_order_acquire))
  {
    CFDictionarySetValue(atomic_load_explicit(a2, memory_order_acquire), @"NSCTFontFeatureSettingsAttribute", atomic_load_explicit(&v49, memory_order_acquire));
  }

  TDescriptor::CopyAttribute(a5, @"NSCTFontTargetEnvironmentAttribute", &valuePtr);
  v47 = atomic_exchange(&valuePtr, 0);

  if (v47)
  {
    CFDictionarySetValue(atomic_load_explicit(a2, memory_order_acquire), @"NSCTFontTargetEnvironmentAttribute", v47);
  }

  return 1;
}

id TDescriptor::CopyAttribute@<X0>(atomic_ullong *this@<X0>, const __CFString *key@<X2>, void *a3@<X8>)
{
  atomic_load_explicit(this + 1, memory_order_acquire);
  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (explicit && (Value = CFDictionaryGetValue(explicit, key)) != 0)
  {
    result = Value;
    *a3 = result;
  }

  else
  {
    if ((this[2] & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(this, 0, 0.0);
    }

    result = atomic_load_explicit(this + 4, memory_order_acquire);
    if (result)
    {
      v8 = *(*result + 40);

      return v8();
    }

    else
    {
      *a3 = 0;
    }
  }

  return result;
}

void TBaseFont::CopyAttribute(TBaseFont *this@<X0>, uint64_t a2@<X1>, atomic_ullong *a3@<X8>)
{
  *a3 = 0;
  switch(a2)
  {
    case 0:
      return;
    case 1:
    case 34:
      explicit = atomic_load_explicit(this + 12, memory_order_acquire);
      goto LABEL_17;
    case 2:
      v10 = &kCTFontFullNameKey;
      goto LABEL_27;
    case 3:
      v10 = &kCTFontFamilyNameKey;
      goto LABEL_27;
    case 4:
      v10 = &kCTFontSubFamilyNameKey;
LABEL_27:
      (*(*this + 72))(&v15, this, *v10);
      goto LABEL_45;
    case 5:
      v15 = 0xAAAAAAAAAAAAAAAALL;
      (*(*this + 152))(&v15, this);
      v14 = atomic_exchange(&v15, 0);

      v11 = v14;
      goto LABEL_47;
    case 6:
      (*(*this + 120))(&v15, this);
      goto LABEL_45;
    case 7:
    case 62:
      (*(*this + 112))(&v15, this);
      goto LABEL_45;
    case 12:
    case 13:
      v6 = @"NSCTFontMatrixAttribute";
      goto LABEL_30;
    case 15:
      (*(*this + 184))(&v15, this);
      goto LABEL_45;
    case 16:
      (*(*this + 344))(&v15, this);
      goto LABEL_45;
    case 19:
      if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
      {
        dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
      }

      if ((IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter & 0x100) != 0)
      {
        TBaseFont::CopyAttributeInternal(this, @"NSCTFontFeaturesExternalAttribute", &v15);
        v13 = atomic_exchange(&v15, 0);

        if (!atomic_load_explicit(&v13, memory_order_acquire))
        {
          v15 = 0xAAAAAAAAAAAAAAAALL;
          (*(*this + 136))(&v15, this);
          if (atomic_load_explicit(&v15, memory_order_acquire))
          {
            TFontFeatures::Externalize(0, atomic_load_explicit(&v15, memory_order_acquire), this, 0, &v14);

            if (atomic_load_explicit(&v13, memory_order_acquire))
            {
              v14 = atomic_load_explicit(&v13, memory_order_acquire);
              TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v14, @"NSCTFontFeaturesExternalAttribute");
            }
          }
        }
      }

      else
      {
        TBaseFont::CopyFeaturesLocalized(this, &v13);
      }

      v11 = v13;
      goto LABEL_47;
    case 23:
      (*(*this + 376))(&v15, this);
      goto LABEL_45;
    case 24:
      (*(*this + 512))(&v15, this);
      goto LABEL_45;
    case 25:
      (*(*this + 192))(&v15, this);
      goto LABEL_45;
    case 26:
      (*(*this + 216))(&v15, this);
      goto LABEL_45;
    case 27:
      (*(*this + 224))(&v15, this);
      goto LABEL_45;
    case 28:
      (*(*this + 232))(&v15, this);
      goto LABEL_45;
    case 29:
      (*(*this + 248))(&v15, this);
      goto LABEL_45;
    case 30:
      (*(*this + 264))(&v15, this);
      goto LABEL_45;
    case 31:
      (*(*this + 280))(&v15, this);
      goto LABEL_45;
    case 32:
      (*(*this + 296))(&v15, this);
      goto LABEL_45;
    case 33:
      (*(*this + 200))(&v15, this);
      goto LABEL_45;
    case 35:
      (*(*this + 320))(&v15, this);
      goto LABEL_45;
    case 36:
      (*(*this + 336))(&v15, this);
      goto LABEL_45;
    case 45:
      (*(*this + 440))(&v15, this);
      goto LABEL_45;
    case 46:
      (*(*this + 448))(&v15, this);
      goto LABEL_45;
    case 47:
      (*(*this + 456))(&v15, this);
      goto LABEL_45;
    case 51:
      v6 = @"CTFontMorxConversionResultAttribute";
LABEL_30:
      TBaseFont::CopyAttributeInternal(this, v6, &v15);
      goto LABEL_45;
    case 54:
      IsUserInstalled = TBaseFont::IsUserInstalled(this);
      v8 = MEMORY[0x1E695E4D0];
      if (!IsUserInstalled)
      {
        v8 = MEMORY[0x1E695E4C0];
      }

      goto LABEL_16;
    case 63:
      if ((*(this + 46) & 0x800) == 0)
      {
        atomic_load_explicit(this + 12, memory_order_acquire);
        atomic_fetch_or_explicit(this + 45, 0, memory_order_relaxed);
        atomic_fetch_or_explicit(this + 46, 0x800u, memory_order_relaxed);
      }

      v8 = MEMORY[0x1E695E4C0];
      if ((*(this + 45) & 0x800) != 0)
      {
        v8 = MEMORY[0x1E695E4D0];
      }

LABEL_16:
      explicit = *v8;
LABEL_17:
      v15 = explicit;
      v9 = atomic_exchange(&v15, 0);
      goto LABEL_46;
    case 64:
      TBaseFont::CopyWeightAxisValue(this, &v15);
LABEL_45:
      v9 = atomic_exchange(&v15, 0);
LABEL_46:

      v11 = v15;
LABEL_47:

      break;
    default:
      v12 = atomic_exchange(a3, 0);

      break;
  }
}

{
  *a3 = 0;
  if (a2 <= 2)
  {
    if (a2 != 1 && a2 != 2)
    {
      goto LABEL_10;
    }
  }

  else if (a2 != 3 && a2 != 4 && a2 != 34)
  {
LABEL_10:
    (*(*this + 40))(&v5);
    goto LABEL_9;
  }

  (*(*this + 88))(&v5);
LABEL_9:
}

uint64_t MapTightLooseTraits(int a1, unsigned int a2, unsigned int a3, unsigned int a4, unsigned int a5, unsigned int a6, unsigned int a7, unsigned int a8, unsigned int a9, unsigned int a10, unsigned int a11, unsigned int a12, unsigned int a13)
{
  v19 = *MEMORY[0x1E69E9840];
  if ((a1 & 0x18000) == 0x10000)
  {
    v15 = a10;
    v16 = a11;
    v17 = a12;
    v18 = a13;
  }

  else if ((a1 & 0x18000) == 0x8000)
  {
    v15 = a6;
    v16 = a7;
    v17 = a8;
    v18 = a9;
  }

  else
  {
    v15 = a2;
    v16 = a3;
    v17 = a4;
    v18 = a5;
  }

  v13 = *(&v15 + (a1 & 3));

  return TDescriptorSource::UIFontNameForUIType(v13);
}

TDescriptor *CTFontDescriptorIsSystemUIFont(TDescriptor *result)
{
  if (result)
  {
    v1 = *(*(result + 5) + 16);
    return ((TDescriptor::GetSystemUIFontOptions(result) & v1) != 0);
  }

  return result;
}

double CTFontDescriptorGetWeight(uint64_t a1)
{
  v1 = 0.0;
  if (a1)
  {
    v2 = *(a1 + 40);
    if ((*(v2 + 16) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(*(a1 + 40), 0, 0.0);
    }

    explicit = atomic_load_explicit((v2 + 32), memory_order_acquire);
    if (explicit)
    {
      TraitsValues = atomic_load_explicit(explicit + 30, memory_order_acquire);
      if (!TraitsValues)
      {
        TraitsValues = TBaseFont::CreateTraitsValues(explicit);
      }

      if (TraitsValues)
      {
        return *(TraitsValues + 8);
      }
    }
  }

  return v1;
}

void TFont::AppendFeatureSettingWithTypeAndSelector(uint64_t a1, uint64_t a2, uint64_t a3, int a4)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableArray::TCFMutableArray(&v14, atomic_load_explicit((a1 + 176), memory_order_acquire));
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:a2];
  v9 = -[CTFeatureSetting initWithType:selector:tag:value:]([CTFeatureSetting alloc], v8, [MEMORY[0x1E696AD98] numberWithUnsignedShort:a3], 0, 0);
  v10 = v9;
  if (v9)
  {
    v11 = v9;
    CFArrayAppendValue(atomic_load_explicit(&v14, memory_order_acquire), v11);

    v13 = atomic_load_explicit((a1 + 168), memory_order_acquire);
    if (!atomic_load_explicit(&v13, memory_order_acquire))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    }

    TFont::UpdateFeatureSettings(a1, atomic_load_explicit(&v13, memory_order_acquire), atomic_load_explicit(&v14, memory_order_acquire), a4);

    *(a1 + 12) &= ~8u;
  }
}

uint64_t CTFontDescriptorGetSymbolicTraits(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = *(a1 + 40);
  if ((*(v1 + 16) & 0x80000000) == 0 || (explicit = atomic_load_explicit((v1 + 32), memory_order_acquire)) == 0)
  {
    TDescriptor::CopyAttribute(v1, @"NSCTFontTraitsAttribute", &v7);
    v2 = atomic_exchange(&v7, 0);

    SymbolicTraitsFromTraits = GetSymbolicTraitsFromTraits(v2);
    return SymbolicTraitsFromTraits;
  }

  v6 = *(*explicit + 160);

  return v6();
}

uint64_t ItalicTrait(uint64_t result)
{
  if (result >= 9)
  {
    return result;
  }

  else
  {
    return (result + 9);
  }
}

unint64_t CTFontDescriptorCreateWithTextStyle(__CFString *a1, __CFString *a2, unint64_t a3)
{
  TDescriptorSource::TDescriptorSource(&v8);
  TDescriptorSource::CreateDescriptorForTextStyle(a1, a2, a3, 0, &v9);
  v6 = atomic_exchange(&v9, 0);

  return v6;
}

void addComponentsWithNameAndTrimCharacterSet(const __CFString *a1, const __CFString *a2, atomic_ullong *a3)
{
  v6 = *MEMORY[0x1E695E480];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v8 = CFDictionaryCreateMutable(v6, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(v8, @"name", a1);
  if (a2)
  {
    CFDictionaryAddValue(v8, @"UnicodeCharSetTrim", a2);
  }

  CFArrayAppendValue(Mutable, v8);
  CFDictionaryAddValue(atomic_load_explicit(a3, memory_order_acquire), @"Components", Mutable);
}

uint64_t FontNameCodeForKey(const __CFString *key)
{
  for (i = 0; i != 160; i += 8)
  {
    if (FontNameCodeForKey(__CFString const*)::keys[i / 8] == key)
    {
      return FontNameCodeForKey(__CFString const*)::values[i / 4];
    }
  }

  value = 0xFFFFFFFFLL;
  if (qword_1ED567A48 != -1)
  {
    dispatch_once_f(&qword_1ED567A48, 0, FontNameCodeForKey(__CFString const*)::$_0::__invoke);
  }

  if (CFDictionaryGetValueIfPresent(_MergedGlobals_15, key, &value))
  {
    return value;
  }

  IntValue = CFStringGetIntValue(key);
  result = 0xFFFFFFFFLL;
  if (IntValue != 0x80000000 && IntValue && IntValue != 0x7FFFFFFF)
  {
    return IntValue;
  }

  return result;
}

void NamesWithUpdatedName(const __CFDictionary *a1, CFDictionaryRef theDict, __CFString *a3, const void *a4)
{
  if (theDict)
  {
    keys = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, theDict);
    CFDictionarySetValue(atomic_load_explicit(&keys, memory_order_acquire), a3, a4);
    *a1 = atomic_exchange(&keys, 0);
  }

  else
  {
    v7 = a4;
    keys = a3;
    *a1 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &v7, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }
}

uint64_t TSplicedFont::CalculateFontMetrics@<X0>(TSplicedFont *this@<X0>, double a2@<D0>, uint64_t a3@<X1>, uint64_t a4@<X8>)
{
  v7 = *(*(this + 76) + 40);
  if ((*(v7 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  explicit = atomic_load_explicit((v7 + 32), memory_order_acquire);
  *a4 = xmmword_18477AD80;
  *(a4 + 16) = unk_18477AD90;
  *(a4 + 32) = xmmword_18477ADA0;
  *(a4 + 48) = unk_18477ADB0;
  *(a4 + 64) = xmmword_18477ADC0;
  *(a4 + 80) = unk_18477ADD0;
  *a4 = 0;
  *(a4 + 24) = 0u;
  *(a4 + 8) = 0u;
  *(a4 + 40) = *MEMORY[0x1E695EFF8];
  v9 = *MEMORY[0x1E695F058];
  *(a4 + 72) = *(MEMORY[0x1E695F058] + 16);
  *(a4 + 56) = v9;
  *(a4 + 88) = 0;
  result = (*(*explicit + 800))(explicit, a3, a4, a2);
  if ((result & 1) == 0)
  {
    result = (*(*explicit + 640))(&v11, explicit, a3, a2);
    if (&v11 != a4)
    {
      *a4 = v11;
      *(a4 + 8) = v12;
      *(a4 + 24) = v13;
      *(a4 + 40) = v14;
      *(a4 + 56) = v15;
      *(a4 + 72) = v16;
      *(a4 + 88) = v17;
    }
  }

  return result;
}

uint64_t TSplicedFont::GetGlyphsForCharacterRange(TSplicedFont *this, CFRange a2, unsigned __int16 *a3)
{
  v3 = *(*(this + 76) + 40);
  if ((*(v3 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  v4 = *(*atomic_load_explicit((v3 + 32), memory_order_acquire) + 680);

  return v4();
}

uint64_t TSplicedFont::GetGraphicsFont(TSplicedFont *this)
{
  v1 = *(*(this + 76) + 40);
  if ((*(v1 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  v2 = *(*atomic_load_explicit((v1 + 32), memory_order_acquire) + 576);

  return v2();
}

uint64_t TSplicedFont::CopyTable(TSplicedFont *this)
{
  v1 = *(*(this + 76) + 40);
  if ((*(v1 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  v2 = *(*atomic_load_explicit((v1 + 32), memory_order_acquire) + 488);

  return v2();
}

CFIndex CTLineGetGlyphCount(CFIndex line)
{
  if (line)
  {
    return TLine::GetNonDeletedGlyphCount(*(line + 40));
  }

  return line;
}

uint64_t TLine::GetNonDeletedGlyphCount(TLine *this)
{
  v1 = *(this + 18);
  if (v1 && (*(this + 77) & 8) != 0)
  {
    v2 = *(this + 2);
    v3 = *(this + 3);
    if (v2 == v3)
    {
      return 0;
    }

    else
    {
      v1 = 0;
      do
      {
        v4 = *v2++;
        v1 += TRun::GetNonDeletedGlyphCount(*(v4 + 40));
      }

      while (v2 != v3);
    }
  }

  return v1;
}

uint64_t **CreateTruncatedLine(uint64_t **a1, int a2, void *a3, const void *a4, double a5)
{
  if (!a1 || a5 <= 0.0)
  {
    return 0;
  }

  v10 = a1[5];
  Table = GetTable();
  v12 = 0.0002;
  if (Table)
  {
    v13 = *(Table + 8);
    if (v13)
    {
      v12 = *v13;
    }
  }

  if (v12 + a5 < *(v10 + 13))
  {
    v20 = 0xAAAAAAAAAAAAAAAALL;
    TCFBase_NEW<CTLine,std::shared_ptr<TCharStream const> const&>(a1[5], &v17);
    v20 = atomic_exchange(&v17, 0);

    if (atomic_load_explicit(&v20, memory_order_acquire))
    {
      v14 = *(atomic_load_explicit(&v20, memory_order_acquire) + 40);
      v17 = -1;
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v18 = v15;
      v19 = v15;
      TTruncator::TTruncator(&v17, a1, v14);
      TLine::SetTruncationInfo(v14, a2, a3, a4);
    }

    return 0;
  }

  return a1;
}

uint64_t TTruncator::TTruncator(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 40);
  *(a1 + 24) = v4;
  *(a1 + 32) = a3;
  v5 = *(v4 + 80);
  *(a1 + 8) = *(v4 + 72) + v5 - 1;
  *(a1 + 16) = a2;
  TLine::GetTrailingWhitespace(v4, v8);
  v6 = v8[0];
  *a1 = v8[2];
  if (v6 != 0.0 && *&v6 != v5)
  {
    *(a1 + 8) -= *&v6;
  }

  return a1;
}

void TLine::SetTruncationInfo(int a1, int a2, id a3, const void *a4)
{
  v6 = a3;
  v5 = _Block_copy(a4);
  operator new();
}

uint64_t *std::unique_ptr<TLine::TruncationInfo>::reset[abi:fn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x1865F22D0);
  }

  return result;
}

uint64_t TTruncator::TruncateWithTokenHandler(TTruncator *this, uint64_t a2, int a3, uint64_t a4, double a5)
{
  v10 = *(*(this + 3) + 72);
  v11 = *(*(this + 3) + 72);
  v12 = vaddvq_s64(v10);
  v46 = -86;
  if (a3 == 2)
  {
    v13 = a5 * 0.5;
  }

  else
  {
    v13 = a5;
  }

  v14 = v13 + *this;
  v41 = a3 - 1;
  v15 = 0xAAAAAAAAAAAAAAAALL;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  while (1)
  {
    v17 = *(this + 4);
    *(v17 + 72) = v10;
    if (v41 >= 2)
    {
      if (a3)
      {
        goto LABEL_10;
      }

      started = TTruncator::TruncateStartChars(this, v11, v13 + *this, v17, &v46);
    }

    else
    {
      started = TTruncator::TruncateEndChars(this, v12, v13, v17, &v46);
    }

    v15 = started;
    v16 = v19;
LABEL_10:
    if (TTruncator::NoRunAdded(this, a4, 0, -1, a5))
    {
      return v15;
    }

    if (a3 == 2)
    {
      v20 = TTruncator::TruncateStartChars(this, v11, v14 + v13 - *(*(this + 4) + 104), a2, &v46);
      v22 = v21;
      if (TTruncator::NoRunAdded(this, a4, a2, v15, a5))
      {
        return v15;
      }

      v16 = v22 - v15 + v20;
    }

    v44 = v15;
    v45 = v16;
    v43 = 0xAAAAAAAAAAAAAAAALL;
    TTruncator::CreateToken(this, &v44, a4, &v43);
    if (!atomic_load_explicit(&v43, memory_order_acquire))
    {
      goto LABEL_45;
    }

    v23 = *(atomic_load_explicit(&v43, memory_order_acquire) + 40);
    v24 = *(v23 + 312);
    if (!v24)
    {
      v24 = MEMORY[0x1E695F060];
    }

    v25 = *(v23 + 192) + *v24;
    if (a3 == 1)
    {
      TRun::GetTrailingWhitespace(v23, v42);
      v25 = v25 - v42[2];
    }

    if (v25 == 0.0)
    {
      goto LABEL_45;
    }

    v26 = *(this + 4);
    v27 = *(v26 + 104);
    v28 = *(a2 + 104);
    v29 = v27 + v28;
    if (a3 == 2)
    {
      v30 = v27 + v28;
    }

    else
    {
      v30 = *(v26 + 104);
    }

    Table = GetTable();
    v32 = 0.0002;
    if (Table)
    {
      v33 = *(Table + 8);
      v32 = 0.0002;
      if (v33)
      {
        v32 = *v33;
      }
    }

    if (v25 + v30 - a5 > v32)
    {
      v34 = -v25;
      if (a3 == 2)
      {
        v14 = v14 - v25 * (*(a2 + 104) / v29);
        v35 = *(*(this + 4) + 104) / v29;
        TLine::ClearLine(a2);
      }

      else
      {
        v35 = 1.0;
      }

      v13 = v13 + v34 * v35;
      goto LABEL_36;
    }

    if (!a3)
    {
      v11 = v45 + v44;
      if ((v45 + v44) <= (v16 + v15))
      {
        TLine::InsertRun(*(this + 4), 0, atomic_load_explicit(&v43, memory_order_acquire));
        goto LABEL_45;
      }

      goto LABEL_36;
    }

    if (a3 != 1)
    {
      break;
    }

    v12 = v44;
    if (v44 >= v15)
    {
      goto LABEL_38;
    }

LABEL_36:
    TLine::ClearLine(*(this + 4));

    v10 = *(*(this + 3) + 72);
  }

  if (a3 != 2)
  {
    goto LABEL_45;
  }

LABEL_38:
  inserted = TLine::InsertPartialRun(*(this + 4), (*(*(this + 4) + 24) - *(*(this + 4) + 16)) >> 3, atomic_load_explicit(&v43, memory_order_acquire), *(v23 + 8), *(v23 + 16));
  v37 = *(inserted + 48);
  v38 = *(*(inserted + 40) + 224);
  if ((v38 & 1) == v46)
  {
    v39 = *(*(inserted + 40) + 224);
  }

  else
  {
    v39 = v38 + 1;
  }

  if ((*(v37 + 224) & 1) != (v39 & 1))
  {
    TRun::ReverseGlyphs(*(inserted + 48));
  }

  *(v37 + 224) = v39;
LABEL_45:

  return v15;
}

unint64_t TTruncator::TruncateEndChars(unint64_t this, uint64_t a2, double a3, TLine *a4, BOOL *a5)
{
  v7 = this;
  v8 = *(this + 24);
  v9 = *(v8 + 72);
  v61 = *(v8 + 80);
  v62 = v9;
  *a5 = (*(v8 + 152) & 8) != 0;
  v10 = a2 - v9;
  if (a2 > v9)
  {
    v11 = v9;
    while (1)
    {
      this = TLine::FindRunWithCharIndex(*(v7 + 24), v9, 1);
      v12 = *(*(v7 + 24) + 16);
      if (this >= (*(*(v7 + 24) + 24) - v12) >> 3)
      {
        goto LABEL_73;
      }

      v13 = this;
      v14 = v7;
      v15 = *(v12 + 8 * this);
      v16 = *(v15 + 40);
      v17 = *(v16 + 16);
      v18 = v17 + *(v16 + 8);
      if (v18 > a2)
      {
        goto LABEL_20;
      }

      v19 = *(v16 + 312);
      if (!v19)
      {
        v19 = MEMORY[0x1E695F060];
      }

      v20 = *(v16 + 232);
      v21 = 0.0;
      if (v20)
      {
        v22 = ~*(v16 + 248) + v18 + *(v16 + 200);
        v23 = *v20;
        if (v22 < (*(*(v16 + 232) + 8) - v23) >> 3)
        {
          v21 = *(v23 + 8 * v22);
        }
      }

      v24 = *(v16 + 192);
      v25 = *v19;
      this = GetTable();
      v26 = 0.0002;
      if (this)
      {
        v27 = *(this + 64);
        v26 = 0.0002;
        if (v27)
        {
          v26 = *v27;
        }
      }

      if (v24 + v25 - v21 - a3 > v26)
      {
        *a5 = *(v16 + 224);
LABEL_20:
        v18 = v9;
        v7 = v14;
        goto LABEL_21;
      }

      this = TLine::InsertPartialRun(a4, (*(a4 + 3) - *(a4 + 2)) >> 3, v15, *(*(v15 + 40) + 8), *(*(v15 + 40) + 16));
      v11 += v17;
      v10 -= v17;
      v28 = *(v16 + 312);
      if (!v28)
      {
        v28 = MEMORY[0x1E695F060];
      }

      a3 = a3 - (*(v16 + 192) + *v28);
      v9 = v18;
      v7 = v14;
      if (v18 >= a2)
      {
        goto LABEL_21;
      }
    }
  }

  v13 = 0;
  v18 = v9;
  v11 = v9;
LABEL_21:
  v29 = *(*(v7 + 24) + 16);
  if (v13 >= (*(*(v7 + 24) + 24) - v29) >> 3)
  {
LABEL_73:
    __break(1u);
    return this;
  }

  v30 = *(v29 + 8 * v13);
  v65.location = v11;
  v65.length = v10;
  v31 = TRun::CountCharsInWidth(*(v30 + 40), v65, a3, 1);
  if (v31 >= 1)
  {
    v32 = v31;
    if (TTruncator::AppendTruncatedRun(v7, a4, v30, v18, v31, 1))
    {
      v11 += v32;
      v10 -= v32;
    }
  }

  v33 = *(a4 + 2);
  v34 = (*(a4 + 3) - v33) >> 3;
  if (v34 >= 1)
  {
    do
    {
      v35 = v34 - 1;
      v36 = *(v33 + 8 * (v34 - 1));
      v37 = v36[5];
      TRun::GetTrailingWhitespace(v37, v64);
      v38 = *&v64[0];
      if (*&v64[0] < 1)
      {
        break;
      }

      v11 -= *&v64[0];
      v10 += *&v64[0];
      v39 = *(v37 + 8);
      v40 = *(v37 + 16);
      v41 = v36;
      TLine::SimpleRunDelete(a4, v35);
      if (v40 - v38 >= 1)
      {
        if (TTruncator::AppendTruncatedRun(v7, a4, v36, v39, v40 - v38, 1))
        {
          *(a4 + 10) -= v38;
          TLine::SyncWithRuns(a4);
        }

        break;
      }

      *(a4 + 10) -= v38;
      TLine::SyncWithRuns(a4);

      v33 = *(a4 + 2);
      v34 = (*(a4 + 3) - v33) >> 3;
    }

    while (v34 > 0);
  }

  if (v10 >= 1 && (*(a4 + 3) - *(a4 + 2)) >= 1)
  {
    v42 = (*(***(v7 + 24) + 40))(**(v7 + 24), v11, 2);
    v44 = v42;
    v45 = v42 + v43 >= v61 + v62 ? v61 + v62 : v42 + v43;
    if (v62 <= v42 && v42 < v61 + v62)
    {
      v48 = v45 - v42;
    }

    else if (v42 <= v62 && v62 < v42 + v43)
    {
      v48 = v45 - v62;
      v44 = v62;
    }

    else
    {
      v44 = 0;
      v48 = 0;
    }

    if (v44 < v11)
    {
      v49 = v44 + v48;
      while (1)
      {
        this = TLine::FindRunWithCharIndex(a4, v11 - 1, 1);
        v50 = *(a4 + 2);
        if (this >= (*(a4 + 3) - v50) >> 3)
        {
          goto LABEL_73;
        }

        v51 = *(*(v50 + 8 * this) + 40);
        v52 = *(v51 + 8);
        v53 = *(v51 + 16);
        if (v49 >= v53 + v52)
        {
          v54 = v53 + v52;
        }

        else
        {
          v54 = v49;
        }

        v55 = v52 <= v44 && v44 < v53 + v52;
        v56 = v44;
        if (!v55 && (v44 <= v52 ? (v57 = v52 < v49) : (v57 = 0), v56 = v52, !v57) || (v58 = v54 - v56, v54 - v56 < 1))
        {
          TLine::SyncWithRuns(a4);
          return v44;
        }

        v11 -= v58;
        v10 += v58;
        TLine::DeleteRun(a4, this);
        if (*(a4 + 3) == *(a4 + 2) || v44 >= v11)
        {
          TLine::SyncWithRuns(a4);
          if (v53 - v58 < 1)
          {
            return v11;
          }

          this = TLine::FindRunWithCharIndex(*(v7 + 24), v52, 1);
          v59 = *(*(v7 + 24) + 16);
          if (this < (*(*(v7 + 24) + 24) - v59) >> 3)
          {
            TTruncator::AppendTruncatedRun(v7, a4, *(v59 + 8 * this), v52, v53 - v58, 1);
            return v11;
          }

          goto LABEL_73;
        }
      }
    }
  }

  return v11;
}

void TTruncator::Truncate(uint64_t **this, unsigned __int32 a2, __CTLine *a3, uint64_t a4, double a5)
{
  v19 = *MEMORY[0x1E69E9840];
  if (*(this[3] + 13) <= *this + a5)
  {

    TTruncator::TruncateEndWhitespace(this, a5);
  }

  else
  {
    *&v13[96] = xmmword_18477A728;
    *&v13[112] = unk_18477A738;
    v15 = unk_18477A778;
    *v14 = xmmword_18477A748;
    memset(&v14[16], 170, 32);
    memset(v13, 170, 96);
    v7 = this[4];
    v9 = *v7;
    v8 = v7[1];
    if (v8)
    {
      atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
    }

    *v13 = v9;
    *&v13[8] = v8;
    memset(&v13[16], 0, 24);
    *&v13[64] = &v13[40];
    BYTE8(v15) = 0;
    memset(&v13[72], 0, 56);
    memset(&v14[8], 0, 21);
    *&v14[32] = 0uLL;
    LOBYTE(v15) = 0;
    v17 = 0;
    v18 = 0;
    v16 = 0;
    *v14 = 0xFFEFFFFFFFFFFFFFLL;
    if (a3)
    {
      TTruncator::TruncateWithToken(this, a5, v13, a2, a3);
    }

    else
    {
      TTruncator::TruncateWithTokenHandler(this, v13, a2, a4, a5);
    }

    if (a2 == 2)
    {
      TTruncator::AppendLine(this, v13);
    }

    TTruncator::HandleLeveledRuns(this, v10, v11, v12);
    TLine::~TLine(v13);
  }
}

uint64_t TRun::CountCharsInWidth(TRun *this, CFRange a2, double a3, int a4)
{
  length = a2.length;
  location = a2.location;
  Table = GetTable();
  v10 = 0.0002;
  if (Table)
  {
    v11 = *(Table + 8);
    if (v11)
    {
      v10 = *v11;
    }
  }

  v12 = *(this + 1);
  v13 = *(this + 2) + v12;
  if (location + length >= v13)
  {
    v14 = *(this + 2) + v12;
  }

  else
  {
    v14 = location + length;
  }

  v15 = v14 - v12;
  v16 = location <= v12 && v12 < location + length;
  if (v16)
  {
    v17 = *(this + 1);
  }

  else
  {
    v17 = 0;
  }

  if (!v16)
  {
    v15 = 0;
  }

  v18 = v14 - location;
  if (v12 <= location && location < v13)
  {
    v20 = v18;
  }

  else
  {
    location = v17;
    v20 = v15;
  }

  v21 = *(this + 27);
  v22 = *(v21 + 32);
  if (v22 || (v35 = *(v21 + 24)) == 0)
  {
    v23 = 0;
    v24 = v22 + 16 * *(this + 25);
    if (a4 < 0)
    {
      goto LABEL_44;
    }

    goto LABEL_23;
  }

  v24 = v35 + 8 * *(this + 25);
  v23 = 1;
  if ((a4 & 0x80000000) == 0)
  {
LABEL_23:
    GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(this, location);
    if (v20 < 1)
    {
      return v20;
    }

    NextGlyphIndex = location;
    while (1)
    {
      v26 = GlyphIndexForChar;
      if (v23)
      {
        v27 = 3;
      }

      else
      {
        v27 = 4;
      }

      v28 = *(this + 29);
      v29 = 0.0;
      if (v28)
      {
        v30 = *(this + 25) + GlyphIndexForChar - *(this + 31);
        v31 = *v28;
        if (v30 < (*(*(this + 29) + 8) - v31) >> 3)
        {
          v29 = *(v31 + 8 * v30);
        }
      }

      v32 = *(v24 + (GlyphIndexForChar << v27)) - v29;
      if (v32 - a3 > v10)
      {
        return NextGlyphIndex - location;
      }

      if (*(this + 64) > 1)
      {
        NextGlyphIndex = TRun::FindNextGlyphIndex(this, NextGlyphIndex, &GlyphIndexForChar);
      }

      else if (*(this + 224))
      {
        v34 = --GlyphIndexForChar;
        if (v26 <= 0)
        {
LABEL_39:
          NextGlyphIndex = *(this + 2) + *(this + 1);
          goto LABEL_40;
        }

        NextGlyphIndex = *(*(*(this + 27) + 48) + 8 * *(this + 25) + 8 * v34);
      }

      else
      {
        v33 = GlyphIndexForChar + 1;
        GlyphIndexForChar = v33;
        if (v33 >= *(this + 26))
        {
          goto LABEL_39;
        }

        NextGlyphIndex = *(*(*(this + 27) + 48) + 8 * *(this + 25) + 8 * v33);
      }

LABEL_40:
      a3 = a3 - v32 - v29;
      if (NextGlyphIndex >= location + v20)
      {
        return v20;
      }
    }
  }

LABEL_44:
  v36 = location + v20;
  PrevGlyphIndex = TRun::ResolveCharIndex(this, location + v20 - 1);
  GlyphIndexForChar = v38;
  for (i = location + v20; PrevGlyphIndex >= location; i = v40)
  {
    v40 = PrevGlyphIndex;
    v41 = GlyphIndexForChar;
    v42 = v23 ? *(v24 + 8 * GlyphIndexForChar) : *(v24 + 16 * GlyphIndexForChar);
    if (v42 - a3 > v10)
    {
      break;
    }

    if (*(this + 64) > 1 || (*(this + 224) & 1) != 0)
    {
      PrevGlyphIndex = TRun::FindPrevGlyphIndex(this, PrevGlyphIndex, &GlyphIndexForChar);
    }

    else
    {
      v43 = --GlyphIndexForChar;
      if (v41 <= 0)
      {
        PrevGlyphIndex = *(this + 1) - 1;
      }

      else
      {
        PrevGlyphIndex = *(*(*(this + 27) + 48) + 8 * *(this + 25) + 8 * v43);
      }
    }

    a3 = a3 - v42;
  }

  return v36 - i;
}

void TTruncator::CreateToken(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v25[28] = *MEMORY[0x1E69E9840];
  v8 = *a2;
  v9 = a2[1];
  RunWithCharIndex = TLine::FindRunWithCharIndex(*(a1 + 24), *a2, 1);
  v11 = *(*(a1 + 24) + 16);
  if (RunWithCharIndex >= (*(*(a1 + 24) + 24) - v11) >> 3)
  {
    __break(1u);
  }

  v12 = *(*(v11 + 8 * RunWithCharIndex) + 40);
  v25[0] = 0;
  if (!a3)
  {
    v24 = 0;
    if ((*(v12 + 178) & 0x40) != 0)
    {
      Dictionary = TAttributes::GetDictionary((v12 + 40));
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, Dictionary);
      if (MutableCopy)
      {
        v16 = MutableCopy;
        CFDictionaryRemoveValue(MutableCopy, @"CTRunDelegate");
      }
    }

    operator new();
  }

  v13 = TAttributes::GetDictionary((v12 + 40));

  if (atomic_load_explicit(v25, memory_order_acquire))
  {
    v17 = *(atomic_load_explicit(v25, memory_order_acquire) + 48);
    if (v17)
    {
      v18 = *(v17 + 16);
      v19 = v8 - *(v17 + 8);
      *(v17 + 8) = v8;
      [*(v17 + 216) puntStringIndicesInRange:*(v17 + 200) by:{*(v17 + 208), v19}];
      if (v18 + v8 >= 1)
      {
        GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(v17, v18 + v8 - 1);
        [*(v17 + 216) setAttachmentCount:v9 - v18 + objc_msgSend(*(v17 + 216) atIndex:{"attachmentCountAtIndex:", *(v17 + 200) + GlyphIndexForChar), *(v17 + 200) + GlyphIndexForChar}];
        *(v17 + 8) = v8;
        *(v17 + 16) = v9;
      }
    }

    v21 = *(v12 + 224);
    if (v21)
    {
      v23 = 0xAAAAAAAAAAAAAAAALL;
      (*(atomic_load_explicit(v25, memory_order_acquire) + 56))(&v23);
      *(*(atomic_load_explicit(&v23, memory_order_acquire) + 48) + 224) = v21;
      TCFRef<__CTFont const*>::Retain(v25, atomic_load_explicit(&v23, memory_order_acquire));
    }

    v22 = atomic_exchange(v25, 0);
  }

  else
  {
    v22 = 0;
  }

  *a4 = v22;
}

void TAttributes::OriginalFont(atomic_ullong *this@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0;
  if (atomic_load_explicit(this, memory_order_acquire))
  {
    Value = CFDictionaryGetValue(atomic_load_explicit(this, memory_order_acquire), @"NSOriginalFont");
    if (!Value)
    {
      if (*(this + 48) != 1)
      {
        explicit = atomic_load_explicit(this + 2, memory_order_acquire);
        goto LABEL_6;
      }

      Value = CFDictionaryGetValue(atomic_load_explicit(this, memory_order_acquire), @"NSFont");
    }

    explicit = _CTFontEnsureFontRef(Value);
LABEL_6:
    v6 = explicit;
  }

  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    if (qword_1ED567C30 != -1)
    {
      dispatch_once_f(&qword_1ED567C30, 0, TAttributes::GetDefaultFont(void)::{lambda(void *)#1}::__invoke);
    }

    v6 = qword_1ED567C00;
  }

  if (*(this + 50) == 1)
  {
    VerticalCopyOf(atomic_load_explicit(a2, memory_order_acquire), &v6);
  }
}

BOOL TTruncator::CreateAndAppendToken(uint64_t a1, uint64_t a2, uint64_t a3, double a4, uint64_t a5, uint64_t a6)
{
  v14[0] = a2;
  v14[1] = a3;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  TTruncator::CreateToken(a1, v14, a6, &v13);
  explicit = atomic_load_explicit(&v13, memory_order_acquire);
  if (explicit)
  {
    v9 = *(atomic_load_explicit(&v13, memory_order_acquire) + 40);
    v10 = *(a1 + 32);
    v11 = *(v9 + 312);
    if (!v11)
    {
      v11 = MEMORY[0x1E695F060];
    }

    if (*(v10 + 104) + *(v9 + 192) + *v11 <= a4)
    {
      TLine::InsertPartialRun(v10, (*(v10 + 24) - *(v10 + 16)) >> 3, atomic_load_explicit(&v13, memory_order_acquire), *(v9 + 8), *(v9 + 16));
    }
  }

  return explicit != 0;
}

uint64_t TGlyphEncoder::RunUnicodeEncoderRecursively(uint64_t a1, unsigned int a2, atomic_ullong *a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7, int a8, TFontCascade **a9, __CFString *a10, int a11, BOOL a12)
{
  v14 = a5;
  v15 = a1;
  v130 = *MEMORY[0x1E69E9840];
  v16 = *(atomic_load_explicit(a3, memory_order_acquire) + 48);
  v120[0] = a7;
  v118 = (a1 + 8);
  v100 = *(*a1 + 16);
  v104 = *(*a1 + 40);
  v105 = *(*a1 + 24);
  NextUnmappedCharRange = TRun::GetNextUnmappedCharRange(v16, a5);
  if (v14 > NextUnmappedCharRange)
  {
    LOBYTE(v19) = 0;
    goto LABEL_143;
  }

  v20 = NextUnmappedCharRange;
  v21 = v18;
  v19 = 0;
  v116 = 0;
  v22 = v14 + a6;
  if (a12)
  {
    v23 = 2654435770;
  }

  else
  {
    v23 = 2654435769;
  }

  v95 = v23;
  v115 = v14;
  v110 = v15;
  v98 = v14;
  v101 = v16;
  v24 = v100;
  v94 = a8;
  v103 = v22;
  do
  {
    if (v22 <= v20)
    {
      break;
    }

    v25 = v22 - v115;
    ClusterRange = TGlyphEncoder::GetClusterRange(v15, a11, v20, v21, v115, v22 - v115);
    v28 = v27;
    v119 = *(v16 + 192);
    v132.location = ClusterRange;
    v132.length = v27;
    v29 = TUnicodeEncoder::Encode(v120, atomic_load_explicit((v16 + 56), memory_order_acquire), a10, v118, v132, v24, v105, v104, &v119, a12);
    *(v16 + 192) = v119;
    if ((v29 & 4) != 0)
    {
      *(v16 + 260) |= 1u;
    }

    if ((v29 & 0x10) != 0)
    {
      *(v16 + 225) |= 8u;
    }

    v19 |= v29;
    if (a8 || (v19 & 8) == 0)
    {
      goto LABEL_59;
    }

    v30 = *a9;
    if (!a2 && !v30)
    {
      if ((*(a4[5] + 12) & 0x1C0) == 0)
      {
        goto LABEL_59;
      }

      v31 = operator new(0xC8uLL, MEMORY[0x1E69E5398]);
      if (!v31)
      {
        *a9 = 0;
        v24 = v100;
LABEL_59:
        v59 = ClusterRange + v28;
        goto LABEL_60;
      }

      *v31 = a4;
      *(v31 + 1) = 0;
      *(v31 + 2) = a10;
      *(v31 + 3) = 0;
      *(v31 + 4) = 0;
      *(v31 + 5) = 0;
      *(v31 + 12) = 0;
      *(v31 + 56) = 0u;
      *(v31 + 72) = 0u;
      *(v31 + 88) = 0u;
      *(v31 + 104) = 0u;
      *(v31 + 168) = 0u;
      *(v31 + 184) = 0u;
      v32 = *a9;
      *a9 = v31;
      v24 = v100;
      if (!v32)
      {
        goto LABEL_24;
      }

      TFontCascade::~TFontCascade(v32);
      MEMORY[0x1865F22D0]();
      v30 = *a9;
    }

    if (!v30)
    {
      goto LABEL_59;
    }

    if (a2 >= 0x20)
    {
      if (atomic_fetch_add(TGlyphEncoder::RunUnicodeEncoderRecursively(unsigned int,TCFRef<CTRun *> &&,__CTFont const*,CFRange,TInlineVector<long,30ul> &,TGlyphEncoder::Fallbacks,std::unique_ptr<TFontCascade const,TGlyphEncoder::Fallbacks::default_delete<TFontCascade>> &,__CFString const*,TGlyphEncoder::ClusterMatching,BOOL)::sLogCount, 1u) <= 9)
      {
        v131.location = ClusterRange;
        v131.length = v28;
        v93 = TCharStream::DebugDescriptionForRange(*v118, v131);
        CFLog();
        v24 = v100;
      }

      goto LABEL_59;
    }

LABEL_24:
    v33 = TRun::GetNextUnmappedCharRange(v16, ClusterRange);
    v117 = v34;
    v114 = v33;
    if (a11)
    {
      v35 = v33 == ClusterRange;
    }

    else
    {
      v35 = 0;
    }

    v36 = !v35;
    v97 = v28;
    if (!v35 && v34 == 1 && TCharStreamIterator::GetChar(v118, v33) == 32)
    {
      v37 = v15;
      v36 = 0;
      v38 = v114;
      v109 = v114;
      v39 = 1;
      v40 = 1;
    }

    else
    {
      if (a11 == 3 && v114 != ClusterRange)
      {
        v41 = *(*(atomic_load_explicit((v16 + 56), memory_order_acquire) + 40) + 408);
        v36 = (*(*v41 + 720))(v41) ^ 1;
      }

      v37 = v15;
      if (v36)
      {
        v38 = v114;
        v109 = v114;
        v39 = v117;
        v40 = v117;
        if (v117 >= 1)
        {
          v42 = v19;
          v43 = TGlyphEncoder::GetClusterRange(v37, 2, v114, v117, v115, v25);
          v39 = v44;
          v45 = ClusterRange + v97;
          v111 = v43;
          v46 = v43;
          v107 = v44;
          while (1)
          {
            v109 = v46;
            v47 = v39 + v46;
            v129.location = v39 + v46;
            v48 = TRun::GetNextUnmappedCharRange(v16, v39 + v46);
            v50 = v48 + v49 >= v45 ? ClusterRange + v97 : v48 + v49;
            v51 = ClusterRange <= v48 && v48 < v45;
            v52 = v48;
            if (!v51)
            {
              if (v48 > ClusterRange)
              {
                break;
              }

              v52 = ClusterRange;
              if (ClusterRange >= v48 + v49)
              {
                break;
              }
            }

            if (v50 <= v52)
            {
              break;
            }

            v53 = TGlyphEncoder::GetClusterRange(v110, 2, v48, v49, v115, v25);
            if (v54 < 1)
            {
              break;
            }

            v55 = v53;
            if (v53 > v47)
            {
              break;
            }

            v56 = v54;
            FullChar = TCharStreamIterator::GetFullChar(v118, &v129.location, 0);
            if (((1 << u_charType(FullChar)) & 0x30000000) != 0)
            {
              break;
            }

            v46 = v109;
            if (v55 < v109)
            {
              v46 = v55;
            }

            v58 = v55 + v56;
            if (v47 > v55 + v56)
            {
              v58 = v47;
            }

            v39 = v58 - v46;
            v16 = v101;
          }

          v36 = 1;
          v19 = v42;
          v37 = v110;
          v38 = v111;
          v16 = v101;
          v40 = v107;
        }
      }

      else
      {
        v38 = v114;
        v109 = v114;
        v40 = v117;
        v39 = v117;
      }
    }

    v96 = v36;
    v19 &= ~8u;
    v61 = CFHash(atomic_load_explicit((v16 + 56), memory_order_acquire));
    v62 = (v40 + 2654435769 + (v38 << 6) + (v38 >> 2)) ^ v38;
    v63 = (v61 + 2654435769u + (v62 << 6) + (v62 >> 2)) ^ v62;
    v64 = (v95 + (v63 << 6) + (v63 >> 2)) ^ v63;
    v65 = *(v37 + 216);
    v99 = v19;
    v108 = v40;
    if (!*&v65)
    {
      goto LABEL_109;
    }

    v66 = v40;
    v67 = vcnt_s8(v65);
    v67.i16[0] = vaddlv_u8(v67);
    if (v67.u32[0] > 1uLL)
    {
      v68 = (v95 + (v63 << 6) + (v63 >> 2)) ^ v63;
      v69 = v114;
      v15 = v37;
      if (v64 >= *&v65)
      {
        v68 = v64 % *&v65;
      }
    }

    else
    {
      v68 = v64 & (*&v65 - 1);
      v69 = v114;
      v15 = v37;
    }

    v70 = *(v15 + 208);
    v71 = *(v70 + 8 * v68);
    if (v71)
    {
      for (i = *v71; i; i = *i)
      {
        v73 = i[1];
        if (v73 == v64)
        {
          v74 = i[2] == v38 && i[3] == v66;
          if (v74 && i[4] == v61 && *(i + 40) == a12)
          {
            if (v117 >= 1)
            {
              TGlyphEncoder::AppendRunClone(v15, a3, v115, v69);
              v81 = 0;
              v82 = v69;
              v39 = v117;
              v80 = v98;
LABEL_116:
              if (v82 == v80)
              {
                v112 = 0;
                v82 = v80;
              }

              else
              {
                if (v39 + v82 != v103)
                {
                  v81 = 0;
                }

                v112 = v81;
              }

              goto LABEL_128;
            }

LABEL_138:
            v14 = v98;
            v59 = ClusterRange + v97;
            a8 = v94;
            goto LABEL_139;
          }
        }

        else
        {
          if (v67.u32[0] > 1uLL)
          {
            if (v73 >= *&v65)
            {
              v73 %= *&v65;
            }
          }

          else
          {
            v73 &= *&v65 - 1;
          }

          if (v73 != v68)
          {
            break;
          }
        }
      }
    }

    if (v67.u32[0] > 1uLL)
    {
      v75 = (v95 + (v63 << 6) + (v63 >> 2)) ^ v63;
      if (v64 >= *&v65)
      {
        v75 = v64 % *&v65;
      }
    }

    else
    {
      v75 = v64 & (*&v65 - 1);
    }

    v76 = *(v70 + 8 * v75);
    if (!v76 || (v77 = *v76) == 0)
    {
LABEL_109:
      operator new();
    }

    v69 = v114;
    while (1)
    {
      v78 = v77[1];
      if (v78 == v64)
      {
        break;
      }

      if (v67.u32[0] > 1uLL)
      {
        if (v78 >= *&v65)
        {
          v78 %= *&v65;
        }
      }

      else
      {
        v78 &= *&v65 - 1;
      }

      if (v78 != v75)
      {
        goto LABEL_109;
      }

LABEL_108:
      v77 = *v77;
      if (!v77)
      {
        goto LABEL_109;
      }
    }

    v79 = v77[2] == v38 && v77[3] == v66;
    if (!v79 || v77[4] != v61 || *(v77 + 40) != a12)
    {
      goto LABEL_108;
    }

    v19 = v99;
    if (v39 <= 0)
    {
      goto LABEL_138;
    }

    TGlyphEncoder::AppendRunClone(v15, a3, v115, v109);
    v80 = v98;
    if (!v96)
    {
      v81 = 1;
      v82 = v109;
      goto LABEL_116;
    }

    if (v38 > v114 || v114 >= v108 + v38)
    {
      if (v38 < v114 + v117)
      {
        v83 = v38;
      }

      else
      {
        v83 = 0;
      }

      if (v114 <= v38)
      {
        v69 = v83;
      }

      else
      {
        v69 = 0;
      }
    }

    v112 = 1;
    v82 = v109;
LABEL_128:
    v84 = *(atomic_load_explicit(a3, memory_order_acquire) + 48);
    explicit = a4;
    if (!v112)
    {
      explicit = atomic_load_explicit((v84 + 56), memory_order_acquire);
      if (explicit)
      {
        goto LABEL_132;
      }

      goto LABEL_133;
    }

    if (!a4)
    {
      goto LABEL_133;
    }

LABEL_132:
    if (((*(**(explicit[5] + 408) + 696))(*(explicit[5] + 408)) & 1) == 0)
    {
LABEL_133:
      if ((*(v84 + 178) & 0x40) == 0)
      {
        v125 = 0xAAAAAAAAAAAAAAAALL;
        v86 = explicit;
        v124 = 0xAAAAAAAAAAAAAAAALL;
        v125 = v86;
        (*(**v118 + 16))(&v124);
        v123 = v69 > v82;
        v122 = 0;
        v121 = 0;
        v120[2] = 0xAAAAAAAAAAAAAAAALL;
        atomic_load_explicit(&v124, memory_order_acquire);
        v128[3] = 0;
        operator new();
      }
    }

    v87 = *(v15 + 200);
    (*(atomic_load_explicit(a3, memory_order_acquire) + 64))(&v126);
    v127 = atomic_exchange(&v126, 0);
    v88 = atomic_exchange(&v127, 0);
    v129.location = v88;
    std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::push_back[abi:fn200100](v87 + 2, &v129);
    TLine::UpdateCachedMetricsForRun(v87, *(v88 + 40));

    a8 = v94;
    v14 = v98;
    v19 = v99;
    v59 = v82 + v39;
    v115 = v82 + v39;
LABEL_139:
    v24 = v100;
    v16 = v101;
    if (a11 == 2)
    {
      v22 = v103;
LABEL_142:
      TGlyphEncoder::AppendRunClone(v15, a3, v115, v22);
      v89 = atomic_exchange(a3, 0);
      goto LABEL_144;
    }

    v116 = 1;
LABEL_60:
    v20 = TRun::GetNextUnmappedCharRange(v16, v59);
    v21 = v60;
    v22 = v103;
  }

  while (v14 <= v20);
  if (v116)
  {
    goto LABEL_142;
  }

LABEL_143:
  v90 = *(v15 + 200);
  v128[0] = atomic_exchange(a3, 0);
  v91 = atomic_exchange(v128, 0);
  v129.location = v91;
  std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::push_back[abi:fn200100](v90 + 2, &v129);
  TLine::UpdateCachedMetricsForRun(v90, *(v91 + 40));
  v89 = v128[0];
LABEL_144:

  return v19;
}

BOOL TTruncator::NoRunAdded(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  if (!a3)
  {
    a3 = *(a1 + 32);
  }

  v7 = *(a3 + 16);
  v6 = *(a3 + 24);
  if (v6 == v7)
  {
    v8 = *(a1 + 24);
    v10 = *(v8 + 72);
    v9 = *(v8 + 80);
    if (a4 == -1)
    {
      v11 = v10;
    }

    else
    {
      v11 = a4;
    }

    TTruncator::CreateAndAppendToken(a1, v11, v10 - v11 + v9, a5, 0, a2);
  }

  return v6 == v7;
}

uint64_t TRun::GetNextUnmappedCharRange(TRun *this, uint64_t a2)
{
  v2 = *(this + 2) + *(this + 1);
  if (v2 > a2)
  {
    GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(this, a2);
    NextUnmappedGlyphRange = TStorageRange::GetNextUnmappedGlyphRange((this + 192), GlyphIndexForChar);
    if (NextUnmappedGlyphRange < *(this + 26))
    {
      v7 = *(this + 27);
      v8 = *(this + 25);
      v2 = *(v7[6] + 8 * v8 + 8 * NextUnmappedGlyphRange);
      [v7 attachmentCountAtIndex:v8 + v6 + NextUnmappedGlyphRange - 1];
    }
  }

  return v2;
}

unint64_t TAttributes::GetDictionary(atomic_ullong *this)
{
  if ((this[6] & 1) == 0 && (*(this + 49) & 1) == 0 && (*(this + 69) & 0x3000) == 0)
  {
    return atomic_load_explicit(this, memory_order_acquire);
  }

  explicit = atomic_load_explicit(this + 1, memory_order_acquire);
  if (!explicit)
  {
    v10 = 0xAAAAAAAAAAAAAAAALL;
    TCFMutableDictionary::TCFMutableDictionary(&v10, atomic_load_explicit(this, memory_order_acquire));
    if (*(this + 48) == 1)
    {
      CFDictionarySetValue(atomic_load_explicit(&v10, memory_order_acquire), @"NSFont", atomic_load_explicit(this + 2, memory_order_acquire));
    }

    if (*(this + 49) == 1)
    {
      v3 = this[15];
      if (v3)
      {
        v4 = *(v3 + 48);
      }

      else
      {
        v4 = 0.0;
      }

      TCFNumber::TCFNumber<double>(&v9, v4);
      CFDictionarySetValue(atomic_load_explicit(&v10, memory_order_acquire), @"CTBaselineOffset", atomic_load_explicit(&v9, memory_order_acquire));
    }

    if ((*(this + 69) & 0x1000) != 0)
    {
      CFDictionaryRemoveValue(atomic_load_explicit(&v10, memory_order_acquire), @"CTTracking");
    }

    else if ((*(this + 69) & 0x2000) != 0)
    {
      v5 = this[15];
      if (v5)
      {
        if (*(v5 + 24) == 1)
        {
          TCFNumber::TCFNumber<double>(&v9, *(v5 + 16));
          CFDictionarySetValue(atomic_load_explicit(&v10, memory_order_acquire), @"CTTracking", atomic_load_explicit(&v9, memory_order_acquire));
        }
      }
    }

    v6 = 0;
    explicit = atomic_exchange(&v10, 0);
    v7 = this + 1;
    atomic_compare_exchange_strong(v7, &v6, explicit);
    if (v6)
    {

      explicit = atomic_load_explicit(v7, memory_order_acquire);
    }

    else
    {
    }
  }

  return explicit;
}

CTLineRef CTLineCreateWithString(const __CFString *a1, const __CFDictionary *a2)
{
  __dst[34] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v4 = ShouldCheckForKnownUrduSequences();
  if (!a2 || !v4 || (Value = CFDictionaryGetValue(a2, @"NSFont")) == 0 || !TFont::IsSystemUIFontAndForShaping(Value[5], __dst) || (v10.length = CFStringGetLength(a1), v10.location = 0, !StringContainsKnownUrduSequences(a1, v10)))
  {
    memcpy(__dst, &unk_18475AF50, 0x110uLL);
    TTypesetterString::TTypesetterString(__dst, a1, a2);
  }

  v6 = CFAttributedStringCreate(*MEMORY[0x1E695E480], a1, a2);
  v7 = CTLineCreateWithAttributedString(v6);

  return v7;
}

uint64_t TStorageRange::GetNextUnmappedGlyphRange(TStorageRange *this, uint64_t a2)
{
  v4 = this + 16;
  result = *(this + 2);
  v5 = *(*(v4 + 1) + 16);
  if (v5)
  {
    if (result > a2)
    {
      v6 = *(this + 1);
      v7 = v5 + 2 * v6;
      v8 = 2 * v6 + 2 * a2 + v5 + 2;
      while (*(v7 + 2 * a2))
      {
        ++a2;
        v8 += 2;
        if (result == a2)
        {
          return result;
        }
      }

      v9 = result - a2;
      if (result - a2 < 2)
      {
        v12 = 1;
      }

      else
      {
        v10 = 0;
        while (!*(v8 + 2 * v10))
        {
          v11 = v10 + 2;
          ++v10;
          if (v11 >= v9)
          {
            v12 = result - a2;
            goto LABEL_15;
          }
        }

        v12 = v10 + 1;
      }

LABEL_15:
      if (v12 < v9)
      {
        v13 = (v8 + 2 * v12 - 2);
        while (1)
        {
          v14 = *v13++;
          if (v14 != -1)
          {
            break;
          }

          if (++v12 >= v9)
          {
            return a2;
          }
        }
      }
    }

    return a2;
  }

  return result;
}

void TCharStreamCFString::TCharStreamCFString(TCharStreamCFString *this, const __CFString *a2, const __CFDictionary *a3)
{
  *this = &unk_1EF259208;
  *(this + 1) = 0;
  v5 = *MEMORY[0x1E695E480];
  *(this + 4) = CFStringCreateCopy(*MEMORY[0x1E695E480], a2);
  if (a3)
  {
    Copy = CFDictionaryCreateCopy(v5, a3);
  }

  else
  {
    Copy = 0;
  }

  *(this + 5) = Copy;
  *(this + 2) = CFStringGetLength(atomic_load_explicit(this + 4, memory_order_acquire));
  *(this + 3) = CFStringGetCharactersPtr(atomic_load_explicit(this + 4, memory_order_acquire));
}

uint64_t TUnicodeEncoder::Encode(TUnicodeEncoder *this, const __CTFont *a2, const __CFString *a3, TCharStreamIterator *a4, CFRange a5, unsigned __int16 *a6, double *a7, unsigned int *a8, double *a9, BOOL a10)
{
  v87 = *MEMORY[0x1E69E9840];
  v10 = *(a2 + 5);
  v11 = *(v10 + 408);
  if (v11)
  {
    length = a5.length;
    location = a5.location;
    v72 = *(a2 + 5);
    v17 = *(v10 + 48);
    if (v17 && *(v17 + 8) * *(v17 + 16) != 0.0 || (*(v72 + 12) & 1) != 0 || (*(v72 + 400) & 1) != 0)
    {
      v70 = 1;
    }

    else
    {
      v70 = (*(*v11 + 720))(v11);
    }

    UnscaledTrackAmount = TFont::GetUnscaledTrackAmount(v72);
    TFont::GetScaledMatrix(v72, &v82);
    v19 = *&v82;
    v81 = location;
    if (length >= 1)
    {
      v75 = v11;
      v20 = 0;
      v21 = location + length;
      v22 = location;
      v71 = location;
      v69 = a7;
      v68 = v21;
      while (1)
      {
        v80 = v22;
        Char = TCharStreamIterator::GetChar(a4, v22);
        if ((Char & 0xFC00) == 0xD800 && v81 + 1 < v21)
        {
          v24 = TCharStreamIterator::GetChar(a4, v81 + 1);
          if ((v24 & 0xFC00) == 0xDC00)
          {
            Char = v24 + (Char << 10) - 56613888;
            v80 = v22 + 1;
          }
        }

        v25 = *(a4 + 22);
        v26 = *(a4 + 23);
        v27 = *(a4 + 18);
        v28 = a4 + 8;
        if (*(a4 + 19))
        {
          v28 = 0;
        }

        if (!v27)
        {
          v27 = v28;
        }

        if (v27)
        {
          v29 = &v27[-2 * v25];
        }

        else
        {
          v29 = 0;
        }

        if (v21 >= v26)
        {
          v30 = *(a4 + 23);
        }

        else
        {
          v30 = v21;
        }

        if (v25 > location || location >= v26)
        {
          v32 = v30 - v25;
          if (v25 < v21)
          {
            v33 = *(a4 + 22);
          }

          else
          {
            v33 = 0;
          }

          if (v25 >= v21)
          {
            v32 = 0;
          }

          v34 = location <= v25;
          if (location <= v25)
          {
            location = v33;
          }

          else
          {
            location = 0;
          }

          if (v34)
          {
            v31 = v32;
          }

          else
          {
            v31 = 0;
          }
        }

        else
        {
          v31 = v30 - location;
        }

        v73 = location;
        v74 = v31;
        v35 = location + v31;
        if (v70)
        {
          goto LABEL_61;
        }

        v36 = TBaseFont::AcquireBMPDataCache(v75);
        if (!v36)
        {
          goto LABEL_61;
        }

        v82 = v75;
        v83 = v36;
        lock = v36;
        v37 = 0.0;
        v84 = 0;
        *&v85[0] = 0xAAAAAAAAFFFFFFFFLL;
        while (1)
        {
          if (Char >> 11 >= 0x1B)
          {
            if (Char < 0xE000)
            {
              goto LABEL_60;
            }

            if (Char >> 9 >= 0x7F && (Char >> 4 < 0xFE1 || Char - 917760 <= 0xEF))
            {
              break;
            }
          }

          *a9 = v37 + *a9;
          TBMPDataCache::Iterator::GetDataForCharacter(&v82, Char, &v77);
          v38 = v77;
          v39 = v78;
          v40 = v79;
          if (v78 != 0.0)
          {
            v39 = UnscaledTrackAmount + v78;
          }

          v41 = v20 | 8;
          if (v77)
          {
            v41 = v20;
          }

          if ((v79 & 0x50) != 0)
          {
            v41 |= 4u;
          }

          if ((v79 & 0x20) != 0)
          {
            v39 = 0.0;
            v42 = v41 | 0x10;
          }

          else
          {
            v42 = v41;
          }

          v43 = v19 * v39;
          v44 = v81;
          a6[v81] = v77;
          a7[v44] = v19 * v39;
          a8[v44] = v40 & 0xFFFF7FFF;
          if (v44 < v80 && v80 < v21)
          {
            v81 = ++v44;
            if (v38)
            {
              a6[v44] = -1;
              a7[v44] = 0.0;
              std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](*this, &v81);
              v44 = v81;
            }
          }

          v20 = v42 | (v40 >> 14) & 2;
          v37 = v43 + 0.0;
          v45 = v44 + 1;
          v81 = v45;
          if (v45 >= v35)
          {
            goto LABEL_60;
          }

          v80 = v45;
          Char = TCharStreamIterator::GetFullChar(a4, &v80, 0);
        }

        v51 = v81;
        if (v81 >= 1)
        {
          break;
        }

LABEL_60:
        os_unfair_lock_unlock(lock);
        *a9 = v37 + *a9;
LABEL_61:
        v46 = v81;
        v47 = v35 - v81;
        if (v35 - v81 < 1)
        {
          a7 = v69;
        }

        else
        {
          *&v48 = 0xAAAAAAAAAAAAAAAALL;
          *(&v48 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v85[2] = v48;
          v85[3] = v48;
          v85[0] = v48;
          v85[1] = v48;
          v82 = 0;
          v83 = 0;
          v84 = 0;
          v86 = v85;
          if (!v29)
          {
            v29 = TCharStream::LazyCopyChars(*a4, v73, v74) - 2 * v73;
            v46 = v81;
          }

          (*(*v75 + 672))(v75, v29 + 2 * v46, &a6[v46], v47);
          TFont::GetUnsummedAdvancesForGlyphs(v72, &a6[v81], &v69[v81], 1, v47, 0, 0);
          v49 = v81;
          bzero(&a8[v81], 4 * v47);
          a7 = v69;
          v20 |= TUnicodeEncoder::EncodePortion(this, v49, v29 + 2 * v49, v47, v75, a10, a6, v69, 1, a8, a9, 0);
          v81 += v47;
          v77 = &v82;
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v77);
          v21 = v68;
        }

        location = v71;
        if ((v20 & 1) == 0)
        {
          if (TBaseFont::GetShapingType(v75) != 2)
          {
            goto LABEL_117;
          }

          v50 = *(v72 + 51);
          if ((*(v50 + 184) & 0x400) == 0)
          {
            TBaseFont::DetermineFontFlags(*(v72 + 51), 0x400u);
          }

          if ((*(v50 + 180) & 0x400) != 0)
          {
LABEL_117:
            if (!*(v72 + 41))
            {
              TFont::InitShapingGlyphs(v72);
            }

            v20 |= TFont::NeedsShapingForGlyphs(v72, &a6[v73], v74, a3);
          }

          else
          {
            v20 |= 1u;
          }
        }

        v22 = v81;
        if (v81 >= v21)
        {
          return v20;
        }
      }

      v52 = TCharStreamIterator::GetChar(a4, v81 - 1);
      v53 = v51 - 1;
      if (v51 == 1)
      {
        v55 = 0;
        v54 = v71;
        goto LABEL_84;
      }

      v54 = v71;
      if ((v52 & 0xFC00) == 0xDC00)
      {
        v55 = v51 - 2;
        if ((TCharStreamIterator::GetChar(a4, v55) & 0xFC00) == 0xD800)
        {
LABEL_84:
          if (v55 >= v54)
          {
            v81 = v55;
            v37 = v37 - a7[v55];
          }

          v56 = *(a4 + 22);
          v57 = *(a4 + 23);
          v58 = *(a4 + 18);
          v59 = a4 + 8;
          if (*(a4 + 19))
          {
            v59 = 0;
          }

          if (!v58)
          {
            v58 = v59;
          }

          if (v58)
          {
            v29 = &v58[-2 * v56];
          }

          else
          {
            v29 = 0;
          }

          if (v21 >= v57)
          {
            v60 = *(a4 + 23);
          }

          else
          {
            v60 = v21;
          }

          if (v56 > v54 || v54 >= v57)
          {
            v62 = v60 - v56;
            if (v56 < v21)
            {
              v63 = *(a4 + 22);
            }

            else
            {
              v63 = 0;
            }

            if (v56 >= v21)
            {
              v62 = 0;
            }

            v64 = v54 <= v56;
            if (v54 <= v56)
            {
              v54 = v63;
            }

            else
            {
              v54 = 0;
            }

            if (v64)
            {
              v61 = v62;
            }

            else
            {
              v61 = 0;
            }
          }

          else
          {
            v61 = v60 - v54;
          }

          v73 = v54;
          v74 = v61;
          v35 = v54 + v61;
          goto LABEL_60;
        }

        TCharStreamIterator::GetChar(a4, v53);
      }

      v55 = v53;
      goto LABEL_84;
    }

    LOBYTE(v20) = 0;
  }

  else
  {
    LOBYTE(v20) = 8;
  }

  return v20;
}

void *TTypesetterString::Initialize(void *this, const __CFString *a2, const __CFDictionary *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v3 = *(this[27] + 16);
  if (v3 < 1)
  {
    return this;
  }

  v5 = this;
  this = [_CTNativeGlyphStorage newWithCount:v3 capacity:v3];
  if (!this)
  {
    return this;
  }

  v6 = this;
  v22 = -86;
  v21 = 0xAAAAAAAAFFFFFFFFLL;
  memset(&v20[80], 170, 160);
  memset(v20, 170, 32);
  v7 = v5[27];
  *v20 = this;
  *&v20[8] = v7;
  memset(&v20[16], 0, 184);
  *&v20[176] = *(v7 + 16);
  *&v20[200] = v5;
  memset(&v20[208], 0, 32);
  LODWORD(v21) = 1065353216;
  Table = GetTable();
  if (Table && (v9 = *Table) != 0)
  {
    if (atomic_load_explicit(v9, memory_order_acquire) == a3)
    {
      v22 = TGlyphEncoder::EncodeChars(v20, 0, v3, (v9 + 1), 0);
      goto LABEL_11;
    }

    *&__dst[96] = xmmword_18475B360;
    memset(&__dst[112], 170, 40);
    *&__dst[48] = unk_18475B330;
    memset(&__dst[64], 255, 32);
    memset(__dst, 170, 48);
    v26.location = 0;
    v26.length = v3;
    TAttributes::TAttributes(__dst, a3, v5[27], v26, 0);
    v22 = TGlyphEncoder::EncodeChars(v20, 0, v3, __dst, 0);
    v13 = atomic_load_explicit((v5[27] + 40), memory_order_acquire);

    TAttributes::operator=((v9 + 1), __dst);
  }

  else
  {
    *&__dst[96] = xmmword_18475B360;
    memset(&__dst[112], 170, 40);
    *&__dst[48] = unk_18475B330;
    memset(&__dst[64], 255, 32);
    memset(__dst, 170, 48);
    v27.location = 0;
    v27.length = v3;
    TAttributes::TAttributes(__dst, a3, v5[27], v27, 0);
    v22 = TGlyphEncoder::EncodeChars(v20, 0, v3, __dst, 0);
    v10 = operator new(0xA0uLL, MEMORY[0x1E69E5398]);
    if (v10)
    {
      v13 = atomic_load_explicit((v5[27] + 40), memory_order_acquire);
      *v10 = atomic_exchange(&v13, 0);
      *(v10 + 57) = 0;
      v10[59] = 0;
      v10[64] = 0;
      v10[112] = 0;
      *(v10 + 19) = 0;
      *(v10 + 24) = 0u;
      *(v10 + 40) = 0u;
      *(v10 + 8) = 0u;
      *(v10 + 16) = 0;
      *(v10 + 17) = 0;
      TAttributes::operator=((v10 + 8), __dst);
    }

    SetThreadSpecificData(0, v10, TTypesetter::DestroyAttributesCache);
  }

  TAttributes::~TAttributes(__dst);
LABEL_11:

  v5[9] = 0;
  v5[10] = v3;
  TLine::LinkRuns(v5);
  if (TTypesetter::CanLayout(v5))
  {
    v13 = v5;
    v14 = *(v5 + 27);
    v15 = v5[29];
    v16 = v5 + 30;
    v11 = *(v5 + 65);
    v18 = -1431655766;
    v19 = 0;
    v17 = v11;
    LOBYTE(v18) = *(v5 + 264);
    BYTE1(v18) = *(v5 + 257);
    memcpy(__dst, &unk_18475B398, sizeof(__dst));
    TRunGlue::TRunGlue(__dst, v5);
    v12 = TTypesetter::FinishEncoding(&v13, __dst, &v22);
    TTypesetter::FinishLayout(&v13, __dst, v22, v12);
    std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](&__dst[448]);
    v23 = &__dst[256];
    std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v23);
    v23 = &__dst[216];
    std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__destroy_vector::operator()[abi:fn200100](&v23);
    v23 = &__dst[56];
    std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](&v23);
  }

  return std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(&v20[208]);
}

uint64_t TGlyphEncoder::GetClusterRange(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a3;
  v10 = (a1 + 8);
  v9 = *(a1 + 8);
  if (a2 <= 1)
  {
    if (!a2)
    {
      if (a5 > a3 || a3 >= a5 + a6)
      {
        if (a5 < a3 + a4)
        {
          v17 = a5;
        }

        else
        {
          v17 = 0;
        }

        if (a3 <= a5)
        {
          return v17;
        }

        else
        {
          return 0;
        }
      }

      return v8;
    }

    ClusterRangeForRange = TCharStream::GetClusterRangeForRange(v9, a3, a4, 2);
    goto LABEL_9;
  }

  if (a2 == 2)
  {
    ClusterRangeForRange = (*(*v9 + 40))(v9, a3, 2);
LABEL_9:
    v8 = ClusterRangeForRange;
    if (ClusterRangeForRange + v12 >= a5 + a6)
    {
      v13 = a5 + a6;
    }

    else
    {
      v13 = ClusterRangeForRange + v12;
    }

    if (a5 <= ClusterRangeForRange && ClusterRangeForRange < a5 + a6)
    {
      v16 = v13 - ClusterRangeForRange;
      if (v13 == ClusterRangeForRange)
      {
        return v8;
      }
    }

    else
    {
      if (ClusterRangeForRange > a5 || a5 >= ClusterRangeForRange + v12)
      {
        return 0;
      }

      v16 = v13 - a5;
      v8 = a5;
      if (v13 == a5)
      {
        return v8;
      }
    }

    goto LABEL_32;
  }

  v8 = a5;
  v16 = a6;
  if (!a6)
  {
    return v8;
  }

LABEL_32:
  if (v16 + v8 < a5 + a6)
  {
    TCharStreamIterator::GetChar(v10, v16 + v8);
  }

  return v8;
}

char *TBaseFont::AcquireBMPDataCache(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 26, memory_order_acquire);
  if (explicit)
  {
    goto LABEL_2;
  }

  result = operator new(0x30uLL, MEMORY[0x1E69E5398]);
  explicit = result;
  if (result)
  {
    v5 = 0;
    *result = 0;
    *(result + 8) = 0u;
    v4 = (result + 8);
    *(explicit + 24) = 0u;
    *(explicit + 40) = 1065353216;
    atomic_compare_exchange_strong(this + 26, &v5, explicit);
    if (v5)
    {
      std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>>>::~__hash_table(v4);
      MEMORY[0x1865F22D0](explicit, 0x10A0C40E0DB7AACLL);
      explicit = v5;
    }

    goto LABEL_2;
  }

  atomic_compare_exchange_strong(this + 26, &explicit, 0);
  if (explicit)
  {
LABEL_2:
    os_unfair_lock_lock_with_options();
    return explicit;
  }

  return result;
}

uint64_t TBMPDataCache::Iterator::GetDataForCharacter@<X0>(TBMPDataCache::Iterator *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v6 = a2 & 0xFFFFFF00;
  if ((a2 & 0xFFFFFF00) == *(this + 6))
  {
    result = *(this + 2);
  }

  else
  {
    result = TBMPDataCache::PageForCharacter(*(this + 1), *this, a2);
    if (!result)
    {
      *a3 = 0;
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      return result;
    }

    *(this + 2) = result;
    *(this + 6) = v6;
  }

  return TUnicodeDataCachePage::GetDataForCharacter(result, v3, a3);
}

uint64_t TBMPDataCache::PageForCharacter(TBMPDataCache *this, const TBaseFont *a2, unsigned int a3)
{
  v10 = a3 >> 8;
  v11 = &v10;
  v6 = std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(this + 1, &v10) + 3;
  if (*v6)
  {
    return *v6;
  }

  os_unfair_lock_unlock(this);
  v8 = operator new(0x680uLL, MEMORY[0x1E69E5398]);
  v9 = v8;
  if (!HIWORD(a3))
  {
    if (v8)
    {
      TBMPDataCachePage::TBMPDataCachePage(v8, a2, a3);
      goto LABEL_9;
    }

LABEL_11:
    os_unfair_lock_lock_with_options();
    return 0;
  }

  if (!v8)
  {
    goto LABEL_11;
  }

  TSupplementaryDataCachePage::TSupplementaryDataCachePage(v8, a2);
LABEL_9:
  os_unfair_lock_lock_with_options();
  if (*v6)
  {
    v11 = (v9 + 1568);
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v11);
    MEMORY[0x1865F22D0](v9, 0x1010C40E4D70334);
  }

  else
  {
    std::unique_ptr<TUnicodeDataCachePage>::reset[abi:fn200100](v6, v9);
  }

  return *v6;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unique_ptr<TUnicodeDataCachePage>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(void *a1, unsigned int *a2)
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
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
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

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t TUnicodeDataCachePage::GetDataForCharacter@<X0>(uint64_t this@<X0>, unsigned __int8 a2@<W1>, uint64_t a3@<X8>)
{
  v3 = (a2 & 7) + *(this + (a2 >> 3) + 1536);
  v4 = *(this + 1568);
  if (v3 >= (*(this + 1576) - v4) >> 1)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v4 + 2 * v3);
    v6 = *(this + 4 * a2 + 512);
    *a3 = *(this + 2 * a2);
    *(a3 + 8) = v6;
    *(a3 + 16) = v5;
  }

  return this;
}

CFIndex TLine::CachePositions(CFIndex this)
{
  if ((*(this + 156) & 1) == 0)
  {
    v1 = this;
    v2 = *(this + 16);
    v3 = *(this + 24) - v2;
    if (v3 >> 3 < 1)
    {
      goto LABEL_12;
    }

    v4 = *(*v2 + 40);
    v10 = 0;
    v11 = 0.0;
    TLine::GetLeftHangersGlyphCountAndWidth(this, 0);
    if (v5 != 0.0)
    {
      v11 = 0.0 - v5;
    }

    this = (*(*v4 + 112))(v4, &v11, &v10);
    if (v3 == 8)
    {
LABEL_12:
      *(v1 + 156) = 1;
    }

    else
    {
      if ((v3 >> 3) <= 2)
      {
        v6 = 2;
      }

      else
      {
        v6 = v3 >> 3;
      }

      v7 = 1;
      while (1)
      {
        v8 = *(v1 + 16);
        if (v7 >= (*(v1 + 24) - v8) >> 3)
        {
          break;
        }

        v9 = *(*(v8 + 8 * v7) + 40);
        this = (*(*v9 + 112))(v9, &v11, &v10);
        if (v6 == ++v7)
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }
  }

  return this;
}

void TRun::CacheGlyphPositions(TRun *this, double *a2, double *a3)
{
  v3 = a3;
  v71 = *MEMORY[0x1E69E9840];
  v6 = *a2;
  v7 = *a3;
  v8 = *(this + 26);
  v9 = reallocarray_DARWIN_EXTSN();
  if (v9)
  {
    v10 = v9;
    *(this + 36) = v6;
    *(this + 37) = v7;
    v11 = *(this + 39);
    if (!v11)
    {
      v11 = MEMORY[0x1E695F060];
    }

    v12 = *v11;
    v13 = v7 + v11[1];
    v14 = *(this + 20);
    if (v14)
    {
      v15 = *(v14 + 48);
    }

    else
    {
      v15 = 0.0;
    }

    v16 = v6 + v12;
    v17 = v13 + v15;
    v64 = a2;
    if (*(this + 90) & 1) != 0 || (*(this + 144))
    {
      v63 = v3;
      v18 = *(this + 27);
      v19 = *(this + 25);
      v20 = v18[4];
      if (v20 || (v23 = v18[3]) == 0)
      {
        v21 = 0;
        v22 = v20 + 16 * v19;
      }

      else
      {
        v22 = v23 + 8 * v19;
        v21 = 1;
      }

      v24 = v18[2];
      v67 = *(atomic_load_explicit(this + 7, memory_order_acquire) + 40);
      v25 = this + 96;
      if (!*(this + 144))
      {
        v25 = MEMORY[0x1E695EFD0];
      }

      v26 = *v25;
      v27 = *(v25 + 1);
      v28 = *(v25 + 2);
      v29 = *(v25 + 5);
      *&v30 = -1;
      *(&v30 + 1) = -1;
      *&v69.c = v30;
      *&v69.tx = v30;
      *&v69.a = v30;
      v70.a = v26;
      v70.b = v27;
      v70.c = v28;
      v66 = *(v25 + 24);
      *&v70.d = v66;
      v70.ty = v29;
      CGAffineTransformInvert(&v69, &v70);
      v69.ty = -v69.ty;
      if (v8 >= 1)
      {
        v31 = 0;
        v32 = MEMORY[0x1E695EFF8];
        v65 = v24 + 2 * v19;
        do
        {
          v68 = v8;
          if (v8 >= 0x40)
          {
            v33 = 64;
          }

          else
          {
            v33 = v8;
          }

          bzero(&v70, 0x400uLL);
          if (*(v67 + 12))
          {
            TFont::GetUnscaledVerticalTranslationsForGlyphs(v67, (v65 + 2 * v31), &v70, v33);
            p_b = &v70.b;
            v35 = v33;
            do
            {
              v36 = *(p_b - 1);
              v37 = v28 * *p_b + v26 * v36;
              v38 = *&v66 * *p_b + v27 * v36;
              *(p_b - 1) = v37;
              *p_b = v38;
              p_b += 2;
              --v35;
            }

            while (v35);
          }

          v39 = v33 + v31;
          v40 = (v22 + 16 * v31);
          v41 = &v70.b;
          do
          {
            v42 = *(v41 - 1);
            v43 = *v41;
            if ((*(this + 225) & 0x10) != 0)
            {
              [*(this + 27) originAtIndex:v31 + *(this + 25)];
            }

            else
            {
              v44 = *v32;
              v45 = v32[1];
            }

            v10[v31] = vaddq_f64(*&v69.tx, vmlaq_n_f64(vmulq_n_f64(*&v69.c, v17 + v43 + v45), *&v69.a, v16 + v42 + v44));
            if (v21)
            {
              v46 = (v22 + 8 * v31);
              v47 = 0.0;
            }

            else
            {
              v47 = v40[1];
              v46 = v40;
            }

            v16 = v16 + *v46;
            v17 = v17 + v47;
            ++v31;
            v41 += 2;
            v40 += 2;
          }

          while (v31 < v39);
          v8 = v68 - v33;
        }

        while (v68 > v33);
      }

      v3 = v63;
    }

    else
    {
      v49 = *(this + 27);
      v50 = *(v49 + 32);
      if (v50 || (v53 = *(v49 + 24)) == 0)
      {
        v51 = 0;
        v52 = (v50 + 16 * *(this + 25));
      }

      else
      {
        v52 = (v53 + 8 * *(this + 25));
        v51 = 1;
      }

      if (v8 >= 1)
      {
        v54 = v8;
        v55 = 0;
        v56 = (v9 + 8);
        v57 = MEMORY[0x1E695EFF8];
        v58 = v52;
        do
        {
          if ((*(this + 225) & 0x10) != 0)
          {
            [*(this + 27) originAtIndex:v55 + *(this + 25)];
          }

          else
          {
            v59 = *v57;
            v60 = v57[1];
          }

          *(v56 - 1) = v16 + v59;
          *v56 = v17 + v60;
          if (v51)
          {
            v61 = &v52[v55];
            v62 = 0.0;
          }

          else
          {
            v62 = v58[1];
            v61 = v58;
          }

          v16 = v16 + *v61;
          v17 = v17 + v62;
          ++v55;
          v58 += 2;
          v56 += 2;
        }

        while (v54 != v55);
      }
    }

    v48 = 0;
    atomic_compare_exchange_strong(this + 35, &v48, v10);
    if (v48)
    {
      free(v10);
    }

    *v64 = v16;
    *v3 = v17 - v15;
  }
}

void TCharStreamCFString::~TCharStreamCFString(id *this)
{
  *this = &unk_1EF259208;
  v1 = this + 4;
}

{
  *this = &unk_1EF259208;
  v1 = this + 4;

  JUMPOUT(0x1865F22D0);
}

TRunReorder *TTruncator::HandleLeveledRuns(TTruncator *this, TLine *a2, uint64_t a3, CFRange a4)
{
  result = *(this + 4);
  v6 = *(result + 76);
  if (v6)
  {
    if ((*(*(this + 3) + 152) & 8) != 0)
    {
      *(result + 76) = v6 | 8;
    }

    return TRunReorder::ReorderRuns(result, a2, a3, a4);
  }

  return result;
}

CTFontDescriptorRef CTFontDescriptorCreateMatchingFontDescriptor(CTFontDescriptorRef descriptor, CFSetRef mandatoryAttributes)
{
  if (!descriptor)
  {
    return 0;
  }

  TDescriptor::CreateMatchingDescriptor(*(descriptor + 5), mandatoryAttributes, 0.0, 0, &v4);
  v2 = atomic_exchange(&v4, 0);

  return v2;
}

const __CFNumber *TTypesetter::UnpackOptions(TTypesetter *this, CFDictionaryRef theDict)
{
  Value = CFDictionaryGetValue(theDict, @"CTTypesetterOptionVerticalLayout");
  if (Value && CFBooleanGetValue(Value))
  {
    *(this + 77) |= 0x100u;
  }

  v5 = CFDictionaryGetValue(theDict, @"CTTypesetterOptionAllowUnboundedLayout");
  if (v5 && CFBooleanGetValue(v5))
  {
    *(this + 256) = 1;
  }

  if (CFDictionaryGetValue(theDict, @"CTTypesetterOptionBidiLevelsProvider"))
  {
    operator new();
  }

  v6 = CFDictionaryGetValue(theDict, @"CTTypesetterOptionDisableBidiProcessing");
  if (v6 && CFBooleanGetValue(v6))
  {
    *(this + 65) |= 1u;
  }

  result = CFDictionaryGetValue(theDict, @"CTTypesetterOptionForcedEmbeddingLevel");
  if (result)
  {
    result = CFNumberGetValue(result, kCFNumberCharType, this + 264);
    if (*(this + 264))
    {
      v8 = 2;
    }

    else
    {
      v8 = 1;
    }

    *(this + 65) |= v8;
  }

  return result;
}

uint64_t TBaseFont::GetScriptAnalysisValue(TBaseFont *this)
{
  TBaseFont::CopyAttributeInternal(this, @"CTFontIgnoreScriptAnalysisAttribute", &valuePtr);
  v2 = atomic_exchange(&valuePtr, 0);

  if (v2)
  {
    v3 = v2;
    LODWORD(valuePtr) = -1431655766;
    CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
    if (valuePtr)
    {
      v4 = 2;
    }

    else
    {
      v4 = 1;
    }
  }

  else
  {
    CommonTable = TBaseFont::GetCommonTable(this, 1196643650, 0);
    if (IgnoreScriptAnalysisForGCommonTable(CommonTable))
    {
      v6 = TBaseFont::GetCommonTable(this, 1196445523, 0);
      if (v6)
      {
        v7 = IgnoreScriptAnalysisForGCommonTable(v6);
      }

      else
      {
        v7 = 1;
      }
    }

    else
    {
      v7 = 0;
    }

    TCFNumber::TCFNumber<int>(&v9, v7);
    TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v9, @"CTFontIgnoreScriptAnalysisAttribute");

    if (v7)
    {
      v4 = 2;
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

uint64_t IgnoreScriptAnalysisForGCommonTable(const __CFData *a1)
{
  if (!a1)
  {
    return 1;
  }

  BytePtr = CFDataGetBytePtr(a1);
  if (!BytePtr)
  {
    return 1;
  }

  v3 = BytePtr;
  v4 = CFDataGetBytePtr(a1);
  if (v4)
  {
    v5 = &v4[CFDataGetLength(a1)];
  }

  else
  {
    v5 = 0;
  }

  return OTL::GCommon::IgnoreScriptAnalysis(v3, v5);
}

uint64_t OTL::GCommon::IgnoreScriptAnalysis(unsigned __int16 *a1, unint64_t a2)
{
  v76 = *MEMORY[0x1E69E9840];
  if ((a1 + 5) > a2 || bswap32(*a1) >> 16 > 1 || a1[1] && (a1 + 7) > a2)
  {
    return 1;
  }

  if (!a1[2])
  {
    return 1;
  }

  v4 = (a1 + __rev16(a1[2]));
  v5 = v4 + 1;
  if ((v4 + 1) > a2)
  {
    return 1;
  }

  v7 = __rev16(*v4);
  v8 = &v5[3 * v7];
  if (v8 < v5 || v8 > a2)
  {
    if ((v4 + 4) <= a2)
    {
      v10 = (a2 - v5) / 6;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10 == v7;
    result = 1;
    if (!*v4 || !v11)
    {
      return result;
    }
  }

  else if (!*v4)
  {
    return 1;
  }

  v12 = (v4 + (bswap32(v4[3]) >> 16));
  if (v12 + 1 < a1 || (v12 + 2) > a2)
  {
    return 0;
  }

  v14 = 0;
  qmemcpy(v75, "lryckerginahanakntalnmrarehcroegrbehrnurmago", 44);
  v15 = v7 <= 1 ? 1 : v7;
  do
  {
    v16 = *&v5[3 * v14];
    if (v16 != 1414284868)
    {
      v17 = 0;
      v18 = bswap32(v16);
      while (*(v75 + v17) != v18)
      {
        v17 += 4;
        if (v17 == 44)
        {
          return 0;
        }
      }
    }

    ++v14;
  }

  while (v14 != v15);
  if (!a1[3])
  {
    return 0;
  }

  v19 = (a1 + __rev16(a1[3]));
  v20 = v19 + 1;
  if ((v19 + 1) > a2)
  {
    return 0;
  }

  v21 = bswap32(*v19) >> 16;
  v22 = &v20[3 * v21];
  if (v22 < v20 || v22 > a2)
  {
    v24 = (v19 + 4) <= a2 ? (a2 - v20) / 6 : 0;
    if (v24 != v21)
    {
      return 0;
    }
  }

  result = OTL::FirstLangSysTable(v12, a1, a2);
  if (result)
  {
    if (v7 < 2)
    {
      v72 = 1;
LABEL_127:
      if (v72 == v7)
      {
        return 1;
      }
    }

    else
    {
      v25 = *(result + 4);
      LODWORD(v26) = __rev16(v25);
      v27 = result + 6;
      if (v26 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v26;
      }

      v73 = v26;
      v28 = 1;
      while (1)
      {
        v74 = v28;
        v29 = (v4 + (bswap32(v5[3 * v28 + 2]) >> 16));
        if ((v29 + 2) > a2 || (LangSysTable = OTL::FirstLangSysTable(v29, a1, a2)) == 0 || *(LangSysTable + 2) != v25)
        {
LABEL_126:
          v72 = v74;
          goto LABEL_127;
        }

        if (v25)
        {
          break;
        }

LABEL_123:
        v28 = v74 + 1;
        result = 1;
        if (v74 + 1 == v7)
        {
          return result;
        }
      }

      v31 = 0;
      v32 = LangSysTable + 6;
      while (1)
      {
        v33 = bswap32(*(v27 + 2 * v31)) >> 16;
        v34 = &v20[3 * v33];
        if (v34 < a1 || v34 + 6 > a2)
        {
          break;
        }

        v36 = bswap32(*&v32[2 * v31]) >> 16;
        v37 = &v20[3 * v36];
        if (v37 < a1 || v37 + 6 > a2)
        {
          break;
        }

        v39 = 0;
        do
        {
          v40 = *(v34 + v39);
          v41 = *(v37 + v39);
        }

        while (v40 == v41 && v39++ != 3);
        if (v40 != v41)
        {
          goto LABEL_126;
        }

        v43 = v20[3 * v33 + 2];
        v44 = v19 + __rev16(v43);
        v45 = (v44 + 4);
        if (v44 + 2 < a1 || v45 > a2)
        {
          return 0;
        }

        v47 = __rev16(*(v44 + 1));
        v48 = v45 + 2 * v47;
        v49 = (v44 + 6) <= a2 ? (a2 - v45) >> 1 : 0;
        v50 = v48 <= a2 && v48 >= v45;
        if (!v50 && v49 != v47)
        {
          return 0;
        }

        v52 = v20[3 * v36 + 2];
        v53 = v19 + __rev16(v52);
        v54 = v53 + 2;
        v55 = (v53 + 4);
        if (v53 + 2 < v19 || v55 > a2)
        {
          return 0;
        }

        v57 = bswap32(*(v53 + 1)) >> 16;
        v58 = v55 + 2 * v57;
        v59 = (v53 + 6) <= a2 ? (a2 - v55) >> 1 : 0;
        v60 = v58 <= a2 && v58 >= v55;
        if (!v60 && v59 != v57)
        {
          return 0;
        }

        if (v43 != v52)
        {
          v62 = 0;
          v63 = 2 * v47;
          do
          {
            v64 = v44[v62 + 2];
            v65 = v54[v62];
          }

          while (v64 == v65 && v62++ != 1);
          if (v64 != v65)
          {
            goto LABEL_126;
          }

          if (*(v44 + 1))
          {
            v67 = &v44[v63 + 4];
            do
            {
              v68 = 0;
              do
              {
                v69 = *(v45 + v68) == *(v55 + v68);
                v70 = *(v45 + v68) != *(v55 + v68) || v68 == 1;
                ++v68;
              }

              while (!v70);
              v45 += 2;
              v55 += 2;
            }

            while (v45 != v67 && v69);
            if (!v69)
            {
              goto LABEL_126;
            }
          }
        }

        if (++v31 == v73)
        {
          goto LABEL_123;
        }
      }
    }

    return 0;
  }

  return result;
}

char *OTL::FirstLangSysTable(unsigned __int16 *a1, unint64_t a2, unint64_t a3)
{
  if (*a1)
  {
    v3 = __rev16(*a1);
  }

  else
  {
    if (!a1[1])
    {
      return 0;
    }

    v4 = 0;
    if ((a1 + 4) < a2 || (a1 + 5) > a3)
    {
      return v4;
    }

    v3 = bswap32(a1[4]) >> 16;
  }

  v4 = a1 + v3;
  v5 = (v4 + 6);
  if ((v4 + 4) < a2 || v5 > a3)
  {
    return 0;
  }

  v7 = bswap32(*(v4 + 2)) >> 16;
  v8 = v5 + 2 * v7;
  v10 = v8 >= v5 && v8 <= a3;
  v11 = (a3 - v5) >> 1;
  if ((v4 + 8) > a3)
  {
    v11 = 0;
  }

  if (!v10 && v11 != v7)
  {
    return 0;
  }

  return v4;
}

uint64_t CTFontDescriptorGetOptions(uint64_t result)
{
  if (result)
  {
    return *(*(result + 40) + 16);
  }

  return result;
}

unint64_t CTFontGetClientObject(unint64_t result)
{
  if (result)
  {
    return atomic_load_explicit((*(result + 40) + 536), memory_order_acquire);
  }

  return result;
}

void CreateFeatureSettingsForLigatureSetting(void *a1, uint64_t a2, int a3)
{
  v50 = *MEMORY[0x1E69E9840];
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v48[2] = v4;
  v48[3] = v4;
  v48[0] = v4;
  v48[1] = v4;
  v47 = 0uLL;
  v46 = 0;
  v49 = v48;
  v42 = 0xAAAAAAAAAAAAAAAALL;
  (*(*a2 + 136))(&v42, a2);
  explicit = atomic_load_explicit(&v42, memory_order_acquire);
  if (explicit)
  {
    Count = CFArrayGetCount(explicit);
    if (Count)
    {
      v7 = Count;
      v8 = 0;
      v9 = @"CTFeatureTypeIdentifier";
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(explicit, v8);
        Value = CFDictionaryGetValue(ValueAtIndex, v9);
        if (Value)
        {
          LOWORD(valuePtr) = -21846;
          CFNumberGetValue(Value, kCFNumberShortType, &valuePtr);
          if (valuePtr == 1)
          {
            v12 = CFDictionaryGetValue(ValueAtIndex, @"CTFeatureTypeSelectors");
            if (v12)
            {
              v13 = v12;
              v14 = CFArrayGetCount(v12);
              if (v14)
              {
                break;
              }
            }
          }
        }

LABEL_26:
        if (++v8 == v7)
        {
          goto LABEL_27;
        }
      }

      v15 = v14;
      v16 = 0;
      while (1)
      {
        v17 = CFArrayGetValueAtIndex(v13, v16);
        v18 = CFDictionaryGetValue(v17, @"CTFeatureSelectorIdentifier");
        if (v18)
        {
          LOWORD(valuePtr) = -21846;
          CFNumberGetValue(v18, kCFNumberShortType, &valuePtr);
          v41 = valuePtr;
          if (!valuePtr)
          {
            goto LABEL_13;
          }

          if (!a3)
          {
            v19 = explicit;
            v20 = v7;
            v21 = v9;
            v22 = valuePtr + 1;
            v23 = v47;
            if (v47 >= *(&v47 + 1))
            {
              v45 = 0xAAAAAAAAAAAAAAAALL;
              *&v25 = 0xAAAAAAAAAAAAAAAALL;
              *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
              valuePtr = v25;
              v44 = v25;
              v26 = (v47 - v46) >> 1;
              if (v26 <= -2)
              {
                std::__throw_bad_array_new_length[abi:fn200100]();
              }

              if (*(&v47 + 1) - v46 <= (v26 + 1))
              {
                v27 = v26 + 1;
              }

              else
              {
                v27 = *(&v47 + 1) - v46;
              }

              if (*(&v47 + 1) - v46 >= 0x7FFFFFFFFFFFFFFEuLL)
              {
                v28 = 0x7FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v28 = v27;
              }

              std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(&valuePtr, v28, v26, v48);
              v29 = v44;
              *v44 = v22;
              *&v44 = v29 + 2;
              v30 = (*(&valuePtr + 1) - (v47 - v46));
              memcpy(v30, v46, v47 - v46);
              v31 = v46;
              v32 = *(&v47 + 1);
              v46 = v30;
              v40 = v44;
              v47 = v44;
              *&v44 = v31;
              *(&v44 + 1) = v32;
              *&valuePtr = v31;
              *(&valuePtr + 1) = v31;
              std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(&valuePtr);
              v24 = v40;
            }

            else
            {
              *v47 = v22;
              v24 = v23 + 2;
            }

            *&v47 = v24;
            v9 = v21;
            v7 = v20;
            explicit = v19;
            goto LABEL_25;
          }

          if (a3 == 2)
          {
LABEL_13:
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](&v46, &v41);
          }
        }

LABEL_25:
        if (v15 == ++v16)
        {
          goto LABEL_26;
        }
      }
    }
  }

LABEL_27:
  if (v46 == v47)
  {
    *a1 = 0;
  }

  else
  {
    *&valuePtr = CFArrayCreateMutable(*MEMORY[0x1E695E480], (v47 - v46) >> 1, MEMORY[0x1E695E9C0]);
    v33 = v46;
    v34 = v47;
    while (v33 != v34)
    {
      v35 = *v33++;
      v36 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:1];
      v37 = -[CTFeatureSetting initWithType:selector:tag:value:]([CTFeatureSetting alloc], v36, [MEMORY[0x1E696AD98] numberWithUnsignedShort:v35], 0, 0);
      v38 = v37;
      CFArrayAppendValue(atomic_load_explicit(&valuePtr, memory_order_acquire), v38);
    }

    *a1 = atomic_exchange(&valuePtr, 0);
  }

  *&valuePtr = &v46;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&valuePtr);
}

CTTypesetterRef CTTypesetterCreateWithAttributedStringAndOptions(CFAttributedStringRef string, CFDictionaryRef options)
{
  if (!string)
  {
    return 0;
  }

  v4 = TCFBase<TTypesetter>::Allocate();
  if (v4)
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = v4 + 6;
    TTypesetterAttrString::TTypesetterAttrString((v4 + 6), string, options);
  }

  v7 = 0;
  if (atomic_load_explicit(&v7, memory_order_acquire) && (*(*(atomic_load_explicit(&v7, memory_order_acquire) + 40) + 257) & 1) != 0)
  {
    v5 = 0;
  }

  else
  {
    v5 = atomic_exchange(&v7, 0);
  }

  return v5;
}

void TAttributes::CopyOfFontWithLigatureSetting(CTFontRef *a1, const __CTFont *a2, int a3)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  CreateFeatureSettingsForLigatureSetting(&v7, *(*(a2 + 5) + 408), a3);
  if (atomic_load_explicit(&v7, memory_order_acquire))
  {
    values = atomic_load_explicit(&v7, memory_order_acquire);
    keys = @"NSCTFontFeatureSettingsAttribute";
    v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v6 = CTFontDescriptorCreateWithAttributes(v5);
    *a1 = CTFontCreateCopyWithAttributes(a2, 0.0, 0, v6);
  }

  else
  {

    *a1 = a2;
  }
}

uint64_t TCFBase<TTypesetter>::Allocate()
{
  if (TCFBase<TTypesetter>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TTypesetter>::GetTypeID(void)::once, 0, TCFBase<TTypesetter>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return _CFRuntimeCreateInstance();
}

void *std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v5 = *(a4 + 64);
    v6 = v5 + 2 * a2;
    if (v6 > a4 + 60)
    {
      if ((a2 & 0x8000000000000000) == 0)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    *(a4 + 64) = v6;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5 + 2 * a3;
  *a1 = v5;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v5 + 2 * a2;
  return a1;
}