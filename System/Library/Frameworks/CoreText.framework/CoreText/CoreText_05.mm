uint64_t std::__function::__value_func<void ()(unsigned short)>::~__value_func[abi:fn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

uint64_t UniversalClassTable::AddShapingGlyphsForScript(uint64_t a1, int a2, uint64_t a3)
{
  v3 = a2;
  v4 = 0;
  v5 = 0;
  v38 = *MEMORY[0x1E69E9840];
  do
  {
    v6 = &kClassDataDirectory[v5];
    if (*&kClassDataDirectory[v5] == v3)
    {
      v7 = *(v6 + 6);
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v36[4] = v8;
      v36[5] = v8;
      v36[2] = v8;
      v36[3] = v8;
      v36[0] = v8;
      v36[1] = v8;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v37 = v36;
      v9 = *(v6 + 1);
      v10 = v9 + *(v6 + 4);
      v11 = v10 + *(v6 + 5);
      if (v9 <= v11)
      {
        v12 = 0;
        v13 = v10 - 1;
        v14 = &kClassDataTable[v7];
        do
        {
          v15 = v9 + v12;
          if (v9 + v12 <= v13)
          {
            v16 = v14[v12];
          }

          else
          {
            v16 = UniversalClassTable::determineCharClass(v9 + v12);
          }

          if ((v16 & 0x8FE) == 0x812 || (v16 & 0x1000) != 0 || (v16 != 20 ? (v17 = v16 == 15) : (v17 = 1), v17 || ((1 << u_charType(v9 + v12)) & 0x140) != 0))
          {
            if (HIWORD(v9))
            {
              LOWORD(v28) = (v15 >> 10) - 10304;
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,48ul>>::push_back[abi:fn200100](&v33, &v28);
              LOWORD(v28) = v15 & 0x3FF | 0xDC00;
            }

            else
            {
              LOWORD(v28) = v9 + v12;
            }

            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,48ul>>::push_back[abi:fn200100](&v33, &v28);
          }

          ++v12;
        }

        while (v9 + v12 <= v11);
        v3 = a2;
        if (v33 != v34)
        {
          v18 = v34 - v33;
          *&v19 = 0xAAAAAAAAAAAAAAAALL;
          *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v31[4] = v19;
          v31[5] = v19;
          v31[2] = v19;
          v31[3] = v19;
          v31[0] = v19;
          v31[1] = v19;
          v28 = 0;
          v29 = 0;
          v30 = 0;
          v32 = v31;
          if ((v34 - v33) >> 1 < 0)
          {
            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v20 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<unsigned short,48ul>>(v31, (v34 - v33) >> 1);
          v28 = v20;
          v30 = &v20[v21];
          bzero(v20, v18 & 0xFFFFFFFFFFFFFFFELL);
          v29 = (v20 + v18);
          (*(**(a1 + 408) + 672))();
          v22 = v28;
          v23 = v29;
          while (v22 != v23)
          {
            if (*v22)
            {
              std::function<void ()(unsigned short,unsigned short)>::operator()(a3, *v22, *v22);
            }

            ++v22;
          }

          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,48ul>>::__destroy_vector::operator()[abi:fn200100](&v28);
        }
      }

      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,48ul>>::__destroy_vector::operator()[abi:fn200100](&v33);
      v4 = 1;
    }

    v5 += 16;
  }

  while (v5 != 1696);
  return v4 & 1;
}

void *STL::insert_sorted<TInlineVector<unsigned int,30ul>>(void *result, char *a2)
{
  v3 = result;
  v5 = *result;
  v4 = result[1];
  v6 = &v4[-*result];
  if (v4 == *result)
  {
    v8 = result[1];
  }

  else
  {
    v7 = v6 >> 2;
    v8 = *result;
    do
    {
      v9 = v7 >> 1;
      v10 = &v8[4 * (v7 >> 1)];
      v12 = *v10;
      v11 = v10 + 4;
      v7 += ~(v7 >> 1);
      if (v12 < *a2)
      {
        v8 = v11;
      }

      else
      {
        v7 = v9;
      }
    }

    while (v7);
  }

  v13 = result[2];
  if (v4 < v13)
  {
    if (v8 == v4)
    {
      *v4 = *a2;
      result[1] = v4 + 4;
      return result;
    }

    v14 = v8 + 4;
    if (v4 < 4)
    {
      v15 = result[1];
    }

    else
    {
      *v4 = *(v4 - 1);
      v15 = v4 + 4;
    }

    result[1] = v15;
    if (v4 != v14)
    {
      result = memmove(v8 + 4, v8, v4 - v14);
      v15 = v3[1];
    }

    if (v15 >= v8)
    {
      v28 = v15 <= a2 || v8 > a2;
      v29 = 4;
      if (v28)
      {
        v29 = 0;
      }

      *v8 = *&a2[v29];
      return result;
    }

    __break(1u);
LABEL_46:
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v16 = (v6 >> 2) + 1;
  v49 = 0xAAAAAAAAAAAAAAAALL;
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v47 = v17;
  v48 = v17;
  if (v16 >> 62)
  {
    goto LABEL_46;
  }

  v18 = v8 - v5;
  v19 = v13 - v5;
  if (v19 >> 1 > v16)
  {
    v16 = v19 >> 1;
  }

  if (v19 >= 0x7FFFFFFFFFFFFFFCLL)
  {
    v20 = 0x3FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v20 = v16;
  }

  std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::__split_buffer(&v47, v20, v18 >> 2, (result + 3));
  v21 = v48;
  if (v48 == *(&v48 + 1))
  {
    v22 = *(&v47 + 1);
    v23 = *(&v47 + 1) - v47;
    if (*(&v47 + 1) <= v47)
    {
      if (v48 == v47)
      {
        v30 = 1;
      }

      else
      {
        v30 = (v48 - v47) >> 1;
      }

      v52 = 0xAAAAAAAAAAAAAAAALL;
      *&v31 = 0xAAAAAAAAAAAAAAAALL;
      *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v50 = v31;
      v51 = v31;
      std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::__split_buffer(&v50, v30, v30 >> 2, v49);
      v33 = *(&v47 + 1);
      v32 = v48;
      v34 = v51;
      v35 = v48 - *(&v47 + 1);
      if (v48 != *(&v47 + 1))
      {
        v36 = (v51 + v35);
        v37 = *(&v47 + 1);
        do
        {
          v38 = *v37++;
          *v34++ = v38;
          v35 -= 4;
        }

        while (v35);
        v34 = v36;
      }

      v39 = v47;
      v40 = *(&v48 + 1);
      v47 = v50;
      *&v50 = v39;
      *(&v50 + 1) = v33;
      *&v48 = v34;
      *(&v48 + 1) = *(&v51 + 1);
      *&v51 = v32;
      *(&v51 + 1) = v40;
      std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::~__split_buffer(&v50);
      v21 = v48;
    }

    else
    {
      v24 = ((v23 >> 2) + 1) / -2;
      v25 = ((v23 >> 2) + 1) / 2;
      v26 = *(&v47 + 1) - 4 * v25;
      v27 = v48 - *(&v47 + 1);
      if (v48 != *(&v47 + 1))
      {
        memmove((*(&v47 + 1) - 4 * v25), *(&v47 + 1), v48 - *(&v47 + 1));
        v22 = *(&v47 + 1);
      }

      v21 = (v26 + v27);
      *(&v47 + 1) = v22 + 4 * v24;
    }
  }

  *v21 = *a2;
  *&v48 = v21 + 1;
  memcpy(v21 + 1, v8, v3[1] - v8);
  v41 = *v3;
  v42 = *(&v47 + 1);
  *&v48 = v48 + v3[1] - v8;
  v3[1] = v8;
  v43 = v8 - v41;
  v44 = (v42 - (v8 - v41));
  memcpy(v44, v41, v43);
  v45 = *v3;
  *v3 = v44;
  v46 = v3[2];
  *(v3 + 1) = v48;
  *&v48 = v45;
  *(&v48 + 1) = v46;
  *&v47 = v45;
  *(&v47 + 1) = v45;
  return std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::~__split_buffer(&v47);
}

void std::__function::__func<TFont::InitShapingGlyphs(void)::$_4,std::allocator<TFont::InitShapingGlyphs(void)::$_4>,void ()(unsigned int)>::operator()(uint64_t a1, unsigned int *a2)
{
  v10 = *a2;
  v3 = v10;
  STL::insert_sorted<TInlineVector<unsigned int,30ul>>(*(a1 + 8), &v10);
  LangSysTagsWithFallback(v3, &v8);
  v4 = v8;
  v5 = v9;
  if (v8 != v9)
  {
    do
    {
      v6 = *v4++;
      v7 = v6;
      STL::insert_sorted<TInlineVector<unsigned int,30ul>>(*(a1 + 8), &v7);
    }

    while (v4 != v5);
    v4 = v8;
  }

  if (v4)
  {
    v9 = v4;
    operator delete(v4);
  }
}

uint64_t std::function<void ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t a1, __int16 a2, __int16 a3, __int16 a4)
{
  v9 = a2;
  v8 = a3;
  v7 = a4;
  v4 = *(a1 + 24);
  if (v4)
  {
    return (*(*v4 + 48))(v4, &v9, &v8, &v7);
  }

  v6 = std::__throw_bad_function_call[abi:fn200100]();
  return std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::~__split_buffer(v6);
}

uint64_t std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 3) & 0xFFFFFFFFFFFFFFFCLL);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 32);
    v6 = (v5 + 120);
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

uint64_t std::__function::__value_func<void ()(unsigned int)>::~__value_func[abi:fn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void InitShapingGlyphsOnQueue(__CTFont const*,NSObject  {objcproto17OS_dispatch_queue}*)::$_0::__invoke(void *cf)
{
  if (cf)
  {
    v2 = cf[5];
    if (!v2[41])
    {
      TFont::InitShapingGlyphs(v2);
    }
  }

  CFRelease(cf);
}

void TTenuousComponentFont::CopyCharacterSet(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  if ((*(*this + 904))(this))
  {

    TComponentFont::CopyCharacterSet(this, a2);
  }

  else
  {
    *a2 = 0;
  }
}

CFCharacterSetRef CTFontCopyCharacterSet(CTFontRef font)
{
  if (!font)
  {
    return 0;
  }

  (*(**(*(font + 5) + 408) + 184))(&v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

void TComponentFont::CopyCharacterSet(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  if (atomic_load_explicit(this + 24, memory_order_acquire))
  {
    explicit = atomic_load_explicit(this + 24, memory_order_acquire);
  }

  else
  {
    v5 = @"UnicodeCharSet";
    v22 = 0;
    if (*(this + 713))
    {
      ComponentAttribute = TComponentFont::GetComponentAttribute(this, @"cmapOverride");
      if (ComponentAttribute)
      {
        v7 = ComponentAttribute;
        v8 = ComponentAttribute;
        BytePtr = CFDataGetBytePtr(v7);
        v10 = *MEMORY[0x1E695E480];
        Mutable = CFCharacterSetCreateMutable(*MEMORY[0x1E695E480]);
        if (Mutable)
        {
          v12 = *BytePtr;
          if (*BytePtr)
          {
            v13 = (BytePtr + 8);
            do
            {
              --v12;
              v14 = *v13;
              v13 += 2;
              v23.location = v14;
              v23.length = 1;
              CFCharacterSetAddCharactersInRange(Mutable, v23);
            }

            while (v12);
          }
        }

        Copy = CFCharacterSetCreateCopy(v10, Mutable);
      }
    }

    if (!atomic_load_explicit(&v22, memory_order_acquire) && (*(this + 713) & 2) != 0)
    {
      v15 = TComponentFont::GetComponentAttribute(this, @"UnicodeCharSet");
      if (v15 != atomic_load_explicit(&v22, memory_order_acquire))
      {
      }

      if (!atomic_load_explicit(&v22, memory_order_acquire))
      {
        v5 = @"NSCTFontCharacterSetAttribute";
        TBaseFont::CopyAttributeInternal(this, @"NSCTFontCharacterSetAttribute", &Copy);
      }
    }

    if (!atomic_load_explicit(&v22, memory_order_acquire) && (*(this + 713) & 4) != 0)
    {
      v16 = TComponentFont::GetComponentAttribute(this, @"UnicodeCharSetTrim");
      if (v16)
      {
        v17 = v16;
        v18 = CFGetTypeID(v16);
        if (v18 == CFStringGetTypeID())
        {
          Copy = 0xAAAAAAAAAAAAAAAALL;
          TBaseFont::CopyPrebuiltCharacterSet(this, &Copy);
          if (atomic_load_explicit(&Copy, memory_order_acquire))
          {
            CreateTrimmedCharacterSetForKey(atomic_load_explicit(&Copy, memory_order_acquire), v17, &v20);
          }

          v5 = @"NSCTFontCharacterSetAttribute";
        }
      }
    }

    if (!atomic_load_explicit(&v22, memory_order_acquire))
    {
      TBaseFont::CopyCharacterSet(this, a2);

      return;
    }

    v19 = 0;
    atomic_compare_exchange_strong(this + 24, &v19, atomic_load_explicit(&v22, memory_order_acquire));
    if (!v19)
    {
      TBaseFont::SetAttributeInternal<__CFDictionary const*>(this, atomic_exchange(&v22, 0), v5);
    }

    explicit = atomic_load_explicit(this + 24, memory_order_acquire);
  }

  *a2 = explicit;
}

void TBaseFont::CopyCharacterSet(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  if (atomic_load_explicit(this + 24, memory_order_acquire))
  {
    *a2 = atomic_load_explicit(this + 24, memory_order_acquire);
  }

  else
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
    TBaseFont::CopyPrebuiltCharacterSet(this, &v8);
    if (atomic_load_explicit(&v8, memory_order_acquire))
    {
      goto LABEL_8;
    }

    if (!atomic_load_explicit(&v8, memory_order_acquire))
    {
      TBaseFont::GetInitializedGraphicsFont(this);
      v7 = CGFontCopyCharacterSet();

      if (!atomic_load_explicit(&v8, memory_order_acquire))
      {
        v9.location = 0;
        v9.length = 0;
        v7 = CFCharacterSetCreateWithCharactersInRange(*MEMORY[0x1E695E480], v9);
      }
    }

    CharacterSetByAddingSynthesizedCharacters(atomic_load_explicit(&v8, memory_order_acquire), &v7);

    if (atomic_load_explicit(&v8, memory_order_acquire))
    {
LABEL_8:
      v4 = 0;
      v5 = atomic_exchange(&v8, 0);
      atomic_compare_exchange_strong(this + 24, &v4, v5);
      if (v4)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }

    *a2 = atomic_load_explicit(this + 24, memory_order_acquire);
  }
}

void TBaseFont::CopyPrebuiltCharacterSet(atomic_ullong *this@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0;
  if ((*(*this + 712))(this))
  {
    v4 = atomic_exchange(a2, CreateCharacterSetForFont(atomic_load_explicit(this + 12, memory_order_acquire)));
  }
}

CFCharacterSetRef CreateCharacterSetForFont(const __CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  CopyAttributeForSystemFont(a1, @"NSCTFontCharacterSetAttribute", &v4);
  v1 = atomic_exchange(&v4, 0);

  if (v1)
  {
    CharacterSetWithCompressedBitmapRepresentation = CreateCharacterSetWithCompressedBitmapRepresentation(v1);
  }

  else
  {
    CharacterSetWithCompressedBitmapRepresentation = 0;
  }

  return CharacterSetWithCompressedBitmapRepresentation;
}

uint64_t TComponentFont::GetGlyphsForCharacters(const __CFString **this, const unsigned __int16 *a2, unsigned __int16 *a3, uint64_t a4)
{
  v28 = 0xAAAAAAAAAAAAAAAALL;
  v29 = 0xAAAAAAAAAAAAAAAALL;
  TComponentFont::GetCharacterOverride(&v28, this, &v29);
  if (!atomic_load_explicit(&v28, memory_order_acquire))
  {
    goto LABEL_4;
  }

  if (v29 == @"cmapOverride")
  {
    v9 = atomic_exchange(&v28, 0);
    if (v9)
    {
      BytePtr = CFDataGetBytePtr(v9);
    }

    else
    {
      BytePtr = 0;
    }

    if (a4 < 1)
    {
      GlyphsForCharactersWithCMap = a4;
LABEL_42:

      goto LABEL_43;
    }

    v19 = 0;
    GlyphsForCharactersWithCMap = a4;
    while (1)
    {
      v20 = v19 + 1;
      v21 = a2[v19];
      v22 = (v21 & 0xFC00) != 0xD800 || v20 == a4;
      if (v22 || (v23 = a2[v20], (v23 & 0xFC00) != 0xDC00))
      {
        *a3 = MappedGlyph;
        v25 = a3 + 1;
        if (!MappedGlyph)
        {
LABEL_38:
          --GlyphsForCharactersWithCMap;
        }
      }

      else
      {
        v20 = v19 + 2;
        *a3 = v24;
        v25 = a3 + 2;
        a3[1] = 0;
        if (!v24)
        {
          goto LABEL_38;
        }
      }

      a3 = v25;
      v19 = v20;
      if (v20 >= a4)
      {
        goto LABEL_42;
      }
    }
  }

  if (v29 != @"UnicodeCharSet")
  {
LABEL_4:
    v30 = this;
    GlyphsForCharactersWithCMap = TBaseFont::GetGlyphsForCharactersWithCMap(this, &v30, a2, a3, a4);
    goto LABEL_43;
  }

  v30 = this;
  GlyphsForCharactersWithCMap = TBaseFont::GetGlyphsForCharactersWithCMap(this, &v30, a2, a3, a4);
  if (a4 >= 1)
  {
    v11 = 0;
    do
    {
      v12 = v11++;
      v13 = a2[v12];
      if ((v13 & 0xFC00) == 0xD800 && v11 != a4)
      {
        v15 = a2[v11];
        v16 = (v15 & 0xFC00) == 56320;
        v17 = (v13 << 10) - 56613888 + v15;
        v11 = v16 ? v12 + 2 : v12 + 1;
        if (v16)
        {
          v13 = v17;
        }
      }

      if (a3[v12])
      {
        if (CFCharacterSetIsLongCharacterMember(atomic_load_explicit(&v28, memory_order_acquire), v13))
        {
          v18 = 1;
        }

        else
        {
          v18 = v11 <= v12;
        }

        if (!v18)
        {
          bzero(&a3[v12], 2 * (v11 - v12));
          GlyphsForCharactersWithCMap = GlyphsForCharactersWithCMap + v12 - v11;
        }
      }
    }

    while (v11 < a4);
  }

LABEL_43:

  return GlyphsForCharactersWithCMap;
}

BOOL CTFontGetGlyphsForCharacters(CTFontRef font, const UniChar *characters, CGGlyph *glyphs, CFIndex count)
{
  result = 0;
  if (font && characters && glyphs)
  {
    v6 = *(*(font + 5) + 408);
    if (v6)
    {
      return (*(*v6 + 672))(v6) == count;
    }

    else
    {
      if (count >= 1)
      {
        bzero(glyphs, 2 * count);
      }

      return 0;
    }
  }

  return result;
}

uint64_t TBaseFont::GetGlyphsForCharactersWithCMap(atomic_ullong *this, TBaseFont **a2, const unsigned __int16 *a3, unsigned __int16 *a4, uint64_t a5)
{
  v5 = a5;
  v6 = a4;
  v7 = a3;
  v22 = TcmapTable::Map(a2, a3, a4, a5, 0);
  v10 = v5 - v22;
  if (v5 > v22)
  {
    SynthesizedGlyphs = TBaseFont::GetSynthesizedGlyphs(this);
    if (SynthesizedGlyphs)
    {
      if (v5 >= 1)
      {
        v12 = SynthesizedGlyphs;
        if (SynthesizedGlyphs[3])
        {
          v13 = v6;
          v14 = v7;
          v15 = v5;
          do
          {
            if (!*v13)
            {
              v16 = std::__hash_table<std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,OTL::FeatureTable const*>>>::find<unsigned short>(v12, v14);
              if (v16)
              {
                *v13 = *(v16 + 9);
                ++v22;
              }

              if (!--v10)
              {
                break;
              }
            }

            ++v14;
            ++v13;
            --v15;
          }

          while (v15);
        }
      }
    }
  }

  v17 = (*(*this + 736))(this);
  if (v5 >= 1 && v17)
  {
    do
    {
      v18 = *v7++;
      v19 = (1 << v18) & 0x2600;
      if (v18 <= 0xD && v19 != 0)
      {
        v23 = 32;
        TcmapTable::Map(a2, &v23, v6, 1, 1);
      }

      ++v6;
      --v5;
    }

    while (v5);
  }

  return v22;
}

void CTFontGetUnsummedAdvancesForGlyphsAndStyle(uint64_t a1, int a2, unsigned int a3, uint64_t a4, double *a5, uint64_t a6)
{
  if (a1 && a4 && a5 && a6 >= 1)
  {
    TFont::GetUnsummedAdvancesForGlyphs(*(a1 + 40), a4, a5, 2, a6, a2, a3 | 0x100000000);
  }
}

BOOL GetGlyphAdvancesForStyle(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, void *a6, int a7)
{
  v8 = a5;
  v22 = *MEMORY[0x1E69E9840];
  if (a7 == 2)
  {
    return (CGFontGetGlyphAdvancesForStyle() & 1) != 0;
  }

  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[28] = v9;
  v20[29] = v9;
  v20[26] = v9;
  v20[27] = v9;
  v20[24] = v9;
  v20[25] = v9;
  v20[22] = v9;
  v20[23] = v9;
  v20[20] = v9;
  v20[21] = v9;
  v20[18] = v9;
  v20[19] = v9;
  v20[16] = v9;
  v20[17] = v9;
  v20[15] = v9;
  v20[14] = v9;
  v20[13] = v9;
  v20[12] = v9;
  v20[11] = v9;
  v20[10] = v9;
  v20[9] = v9;
  v20[8] = v9;
  v20[7] = v9;
  v20[6] = v9;
  v20[4] = v9;
  v20[5] = v9;
  v20[2] = v9;
  v20[3] = v9;
  v20[0] = v9;
  v20[1] = v9;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v21 = v20;
  if (a5)
  {
    std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__vallocate[abi:fn200100](&v17, a5);
    v11 = v18;
    bzero(v18, 16 * v8);
    v18 = &v11[16 * v8];
    if (CGFontGetGlyphAdvancesForStyle())
    {
      if (v8 >= 1)
      {
        v12 = v17;
        v13 = (v18 - v17) >> 4;
        do
        {
          if (!v13)
          {
            __break(1u);
          }

          v14 = *v12;
          v12 += 2;
          *a6 = v14;
          --v13;
          a6 += a7;
          --v8;
        }

        while (v8);
      }

      goto LABEL_12;
    }
  }

  else if (CGFontGetGlyphAdvancesForStyle())
  {
LABEL_12:
    v16 = &v17;
    std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v16);
    return 1;
  }

  v16 = &v17;
  std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v16);
  return 0;
}

uint64_t TcmapTable::Map(TBaseFont **this, const unsigned __int16 *a2, unsigned __int16 *a3, uint64_t a4, char a5)
{
  v53 = *MEMORY[0x1E69E9840];
  if (TBaseFont::GetInitializedGraphicsFont(*this) && CGFontGetParserFont())
  {

    return MEMORY[0x1EEE08B88]();
  }

  v45 = 0xAAAAAAAAAAAAAAAALL;
  (*(**this + 504))(&v45);
  if (atomic_load_explicit(&v45, memory_order_acquire))
  {
    atomic_load_explicit(&v45, memory_order_acquire);
    CGFontGetGlyphsForUnichars();
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v51[3] = v10;
    v51[2] = v10;
    v51[1] = v10;
    v51[0] = v10;
    v50 = 0uLL;
    v49 = 0;
    v52 = v51;
    v11 = a4 - 1;
    if (a4 < 1)
    {
      v12 = 0;
      v18 = 0;
    }

    else
    {
      v12 = 2;
      v13 = a2;
      v14 = a2;
      while (1)
      {
        v15 = *v14++;
        v16 = (v15 & 0xFC00) != 0xD800 || v11 == 0;
        if (!v16 && (v13[1] & 0xFC00) == 0xDC00)
        {
          break;
        }

        ++v12;
        --v11;
        v13 = v14;
        if (v11 == -1)
        {
          goto LABEL_48;
        }
      }

      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::reserve(&v49, v11);
      LOWORD(v46) = 0;
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](&v49, &v46);
      v18 = v12 - 1;
    }

    if (v18 < a4)
    {
      __dst = &a3[v18];
      if (v12 < a4)
      {
        v19 = &a3[v18];
        do
        {
          v20 = v12 + 1;
          if ((a2[v12] & 0xFC00) != 0xD800 || v20 == a4)
          {
            v23 = 1;
            ++v12;
          }

          else
          {
            v22 = a2[v20] & 0xFC00;
            v23 = v22 != 56320;
            if (v22 == 56320)
            {
              v12 += 2;
            }

            else
            {
              ++v12;
            }
          }

          v24 = v50;
          if (v50 >= *(&v50 + 1))
          {
            v48 = 0xAAAAAAAAAAAAAAAALL;
            *&v26 = 0xAAAAAAAAAAAAAAAALL;
            *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v46 = v26;
            v47 = v26;
            v27 = (v50 - v49) >> 1;
            if (v27 <= -2)
            {
              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            if (*(&v50 + 1) - v49 <= (v27 + 1))
            {
              v28 = v27 + 1;
            }

            else
            {
              v28 = *(&v50 + 1) - v49;
            }

            if (*(&v50 + 1) - v49 >= 0x7FFFFFFFFFFFFFFEuLL)
            {
              v29 = 0x7FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v29 = v28;
            }

            std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(&v46, v29, v27, v51);
            v30 = v47;
            *v47 = *v19;
            *&v47 = v30 + 2;
            v31 = (*(&v46 + 1) - (v50 - v49));
            memcpy(v31, v49, v50 - v49);
            v32 = v49;
            v33 = *(&v50 + 1);
            v49 = v31;
            v44 = v47;
            v50 = v47;
            *&v47 = v32;
            *(&v47 + 1) = v33;
            *&v46 = v32;
            *(&v46 + 1) = v32;
            std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(&v46);
            v25 = v44;
          }

          else
          {
            *v50 = *v19;
            v25 = v24 + 2;
          }

          *&v50 = v25;
          if (!v23)
          {
            LOWORD(v46) = 0;
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](&v49, &v46);
          }

          ++v19;
        }

        while (v12 < a4);
      }

      if (v50 != v49)
      {
        memmove(__dst, v49, v50 - v49);
      }
    }

LABEL_48:
    *&v46 = &v49;
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v46);
    if ((a5 & 1) != 0 || a4 < 1)
    {
      v17 = a4;
      goto LABEL_75;
    }

    v17 = a4;
LABEL_51:
    v34 = a4;
    while (1)
    {
      a4 = v34 - 1;
      if (v34 != 1 && (a2[a4] & 0xFC00) == 0xDC00)
      {
        v35 = a2[v34 - 2] & 0xFC00;
        v36 = v34 - 2;
        if (v35 == 55296)
        {
          a4 = v36;
        }
      }

      if (a3[a4])
      {
LABEL_72:
        if (a4 < 1)
        {
          goto LABEL_75;
        }

        goto LABEL_51;
      }

      v37 = &a2[a4];
      v38 = *v37;
      if ((v38 & 0xF800) == 0xD800)
      {
        if ((v38 & 0x400) != 0)
        {
          if (a4)
          {
            v40 = *(v37 - 1);
            v16 = (v40 & 0xFC00) == 55296;
            v41 = v38 - 56613888 + (v40 << 10);
            if (v16)
            {
              v38 = v41;
            }
          }
        }

        else if (a4 + 1 != v17)
        {
          v39 = a2[a4 + 1];
          if ((v39 & 0xFC00) == 0xDC00)
          {
            v38 = (v38 << 10) - 56613888 + v39;
LABEL_68:
            if (v38 - 917760 > 0xEF)
            {
LABEL_71:
              --v17;
              goto LABEL_72;
            }

            goto LABEL_69;
          }
        }
      }

      if (v38 >> 9 <= 0x7E)
      {
        goto LABEL_71;
      }

      if (v38 >> 4 >= 0xFE1)
      {
        goto LABEL_68;
      }

LABEL_69:
      v34 = a4;
      if (a4 <= 0)
      {
        goto LABEL_75;
      }
    }
  }

  if (a4 >= 1)
  {
    bzero(a3, 2 * a4);
  }

  v17 = 0;
LABEL_75:

  return v17;
}

void LangSysTagsWithFallback(unsigned int a1@<W0>, const void **a2@<X8>)
{
  if (HIWORD(a1) == 23112)
  {
    if (a1 == 1514686496)
    {
      operator new();
    }

LABEL_12:
    *a2 = 0;
    a2[1] = 0;
    a2[2] = 0;
    return;
  }

  if ((atomic_load_explicit(&qword_1ED567E08, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED567E08))
  {
    xmmword_1ED567EA8 = 0u;
    *&qword_1ED567EB8 = 0u;
    dword_1ED567EC8 = 1065353216;
    __cxa_guard_release(&qword_1ED567E08);
  }

  if (qword_1ED567E10 != -1)
  {
    dispatch_once_f(&qword_1ED567E10, 0, LangSysTagsWithFallback::$_0::__invoke);
  }

  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = v4;
  do
  {
    v6 = *v6;
  }

  while (v6 && *(v6 + 4) == a1);
  if (v4 == v6)
  {
    goto LABEL_12;
  }

  v7 = 0;
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  do
  {
    v8 = a2[2];
    if (v7 >= v8)
    {
      v9 = *a2;
      v10 = v7 - *a2;
      v11 = v10 >> 2;
      v12 = (v10 >> 2) + 1;
      if (v12 >> 62)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v13 = v8 - v9;
      if (v13 >> 1 > v12)
      {
        v12 = v13 >> 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v14 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v12;
      }

      if (v14)
      {
        std::allocator<unsigned int>::allocate_at_least[abi:fn200100](a2, v14);
      }

      *(4 * v11) = *(v5 + 5);
      v7 = (4 * v11 + 4);
      memcpy(0, v9, v10);
      v15 = *a2;
      *a2 = 0;
      a2[1] = v7;
      a2[2] = 0;
      if (v15)
      {
        operator delete(v15);
      }
    }

    else
    {
      *v7 = *(v5 + 5);
      v7 += 4;
    }

    a2[1] = v7;
    v5 = *v5;
  }

  while (v5 != v6);
}

void LangSysTagsWithFallback(unsigned int)::$_0::__invoke()
{
  v0 = 1633776160;
  v1 = 8u;
  do
  {
    v2 = *&kLanguageToLangSysMappings[v1];
    if (v2 == v0)
    {
      operator new();
    }

    v1 += 8;
    v0 = v2;
  }

  while (v1 != 6352);
}

void std::__function::__func<TFont::InitShapingGlyphs(void)::$_5,std::allocator<TFont::InitShapingGlyphs(void)::$_5>,void ()(__CFDictionary *)>::operator()(uint64_t a1, const __CFDictionary **a2)
{
  v3 = *a2;
  if (*(a1 + 16))
  {
    v5 = 0xAAAAAAAAAAAAAAAALL;
    Mutable = CFDictionaryGetValue(v3, *(a1 + 8));
    v5 = atomic_exchange(&Mutable, 0);

    if (!atomic_load_explicit(&v5, memory_order_acquire))
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);

      if (!atomic_load_explicit(&v5, memory_order_acquire))
      {

        return;
      }

      CFDictionarySetValue(v3, *(a1 + 8), atomic_load_explicit(&v5, memory_order_acquire));
    }

    CFDictionarySetValue(atomic_load_explicit(&v5, memory_order_acquire), *(a1 + 16), atomic_load_explicit(*(a1 + 24), memory_order_acquire));
  }

  else
  {
    CFDictionarySetValue(v3, *(a1 + 8), atomic_load_explicit(*(a1 + 24), memory_order_acquire));
  }

  if (atomic_load_explicit(*(a1 + 32), memory_order_acquire))
  {
    CFDictionarySetValue(v3, @"CTFontLangSysListAttribute", atomic_load_explicit(*(a1 + 32), memory_order_acquire));
  }
}

uint64_t std::function<BOOL ()(unsigned int,OTL::FeatureTable const*,BOOL &)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a2;
  v6 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v7, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:fn200100]();
  return TFont::GetScaledMatrix(v5);
}

CGAffineTransform *TFont::GetScaledMatrix@<X0>(TFont *this@<X0>, CGAffineTransform *a2@<X8>)
{
  ScaleFactor = TFont::GetScaleFactor(this);
  TFont::GetEffectiveMatrix(this, &v7);
  *&v5 = -1;
  *(&v5 + 1) = -1;
  *&v10.c = v5;
  *&v10.tx = v5;
  *&v10.a = v5;
  CGAffineTransformMakeScale(&v10, ScaleFactor, ScaleFactor);
  t1 = v7;
  t2 = v10;
  return CGAffineTransformConcat(a2, &t1, &t2);
}

char *PairPosFormat2::ValuePair(PairPosFormat2 *this, unsigned int a2, unsigned int a3, unint64_t a4)
{
  if (a2 >= bswap32(*(this + 6)) >> 16)
  {
    return 0;
  }

  v4 = bswap32(*(this + 7)) >> 16;
  if (v4 <= a3)
  {
    return 0;
  }

  v5.i32[0] = *(this + 2);
  v5.i32[1] = *(this + 3);
  v6 = vpaddl_u8(vcnt_s8(v5));
  v7 = vpadal_u16(vdup_lane_s32(vpaddl_u16(v6), 1), v6).u32[0];
  v8 = this + 2 * (a3 + a2 * v4) * v7 + 16;
  v9 = &v8[2 * v7];
  if (v8 >= this && v9 >= v8 && v9 <= a4)
  {
    return v8;
  }

  v12 = 0;
  v13 = (v8 + 2) <= a4 && v8 >= this;
  v14 = (a4 - v8) >> 1;
  if (!v13)
  {
    v14 = 0;
  }

  if (v14 == v7)
  {
    return v8;
  }

  return v12;
}

double ValueRecord::operator()(unsigned __int16 **a1, TRunGlue *a2, int64_t a3)
{
  v33 = a2;
  v34 = a3;
  v4 = *a1;
  v5 = *(a1 + 2);
  if (v5)
  {
    v7 = *v4++;
    v6 = v7;
    if (v7)
    {
      TRunGlue::TGlyph::AdjustXPositionBy(&v33, (bswap32(v6) >> 16));
      v5 = *(a1 + 2);
    }
  }

  if ((v5 & 2) != 0)
  {
    v9 = *v4++;
    v8 = v9;
    if (v9)
    {
      TRunGlue::TGlyph::AdjustYPositionBy(&v33, (bswap32(v8) >> 16));
      v5 = *(a1 + 2);
    }
  }

  v10 = 0.0;
  if ((v5 & 4) != 0)
  {
    v12 = *v4++;
    v11 = v12;
    if (v12)
    {
      if ((a1[3][6] & 1) == 0)
      {
        v10 = (bswap32(v11) >> 16);
        Advance = TRunGlue::GetAdvance(v33, v34);
        v35.width = Advance + *(v33 + 65) * v10;
        TRunGlue::SetAdvance(v33, v34, v35);
        v5 = *(a1 + 2);
      }
    }
  }

  if ((v5 & 8) != 0)
  {
    v15 = *v4++;
    v14 = v15;
    if (v15)
    {
      if (a1[3][6])
      {
        v16 = (bswap32(v14) >> 16);
        v17 = TRunGlue::GetAdvance(v33, v34);
        v36.width = v17 + *(v33 + 66) * v16;
        TRunGlue::SetAdvance(v33, v34, v36);
        v5 = *(a1 + 2);
      }
    }
  }

  if ((v5 & 0xF0) != 0)
  {
    v32 = 0xAAAAAAAAAAAAAAAALL;
    VariationValues = TFont::GetVariationValues(a1[3], &v32);
    if (VariationValues)
    {
      v19 = VariationValues;
      if ((a1[1] & 0x10) != 0)
      {
        v20 = *v4++;
        v21 = OTL::GDEF::DeltaValue(*(a1[4] + 3), a1[2], *(a1[4] + 5), bswap32(v20) >> 16, v32, VariationValues);
        if (v21 != 0.0)
        {
          TRunGlue::TGlyph::AdjustXPositionBy(&v33, v21);
        }
      }

      if ((a1[1] & 0x20) != 0)
      {
        v22 = *v4++;
        v23 = OTL::GDEF::DeltaValue(*(a1[4] + 3), a1[2], *(a1[4] + 5), bswap32(v22) >> 16, v32, v19);
        if (v23 != 0.0)
        {
          TRunGlue::TGlyph::AdjustYPositionBy(&v33, v23);
        }
      }

      if ((a1[1] & 0x40) != 0)
      {
        v24 = *v4++;
        v25 = OTL::GDEF::DeltaValue(*(a1[4] + 3), a1[2], *(a1[4] + 5), bswap32(v24) >> 16, v32, v19);
        if (v25 != 0.0 && (a1[3][6] & 1) == 0)
        {
          v26 = v25;
          v27 = TRunGlue::GetAdvance(v33, v34);
          v37.width = v27 + *(v33 + 65) * v26;
          TRunGlue::SetAdvance(v33, v34, v37);
          v10 = v10 + v26;
        }
      }

      if ((a1[1] & 0x80) != 0)
      {
        v28 = OTL::GDEF::DeltaValue(*(a1[4] + 3), a1[2], *(a1[4] + 5), bswap32(*v4) >> 16, v32, v19);
        if (v28 != 0.0 && (a1[3][6] & 1) != 0)
        {
          v29 = v28;
          v30 = TRunGlue::GetAdvance(v33, v34);
          v38.width = v30 + *(v33 + 66) * v29;
          TRunGlue::SetAdvance(v33, v34, v38);
        }
      }
    }
  }

  return v10;
}

unint64_t TFont::GetVariationValues(atomic_ullong *this, unint64_t *a2)
{
  explicit = atomic_load_explicit(this + 43, memory_order_acquire);
  if (!explicit)
  {
    v5 = this[51];
    (*(*v5 + 120))(&v8, v5);
    v6 = atomic_load_explicit(&v8, memory_order_acquire);

    if (v6)
    {
      if (TBaseFont::GetInitializedGraphicsFont(v5))
      {
        if (CGFontGetParserFont())
        {
          v8 = 0xAAAAAAAAAAAAAAAALL;
          if (FPFontGetVariationValues())
          {
            operator new[]();
          }
        }
      }
    }

    explicit = 0;
    atomic_store(0xFFFFFFFFFFFFFFFFLL, this + 43);
    goto LABEL_11;
  }

  if (explicit == -1)
  {
    explicit = 0;
LABEL_11:
    *a2 = 0;
    return explicit;
  }

  *a2 = this[42];
  return explicit;
}

double ItemVariationStore::VariationRegionList::ComputeScalar(ItemVariationStore::VariationRegionList *this, uint64_t a2, unint64_t a3, const __int16 *a4)
{
  v4 = bswap32(*this) >> 16;
  if (v4 >= a3)
  {
    v5 = a3;
  }

  else
  {
    v5 = v4;
  }

  if (!v5)
  {
    return 1.0;
  }

  v7 = (this + 6 * v4 * a2 + 4);
  v8 = 1.0;
  while (1)
  {
    v9 = *a4++;
    v10 = ItemVariationStore::RegionAxisCoordinates::ComputeScalar(v7, v9);
    if (v10 == 0.0)
    {
      break;
    }

    v8 = v8 * v10;
    v7 = (v7 + 6);
    if (!--v5)
    {
      return v8;
    }
  }

  return 0.0;
}

double ItemVariationStore::ValueForDeltaSet(ItemVariationStore *this, unsigned int a2, unsigned int a3, unint64_t a4, const __int16 *a5, const double *a6)
{
  v6 = 0.0;
  if ((a3 & a2) != 0xFFFF)
  {
    v8 = *this;
    if (*this)
    {
      if (*(this + 4) > a2)
      {
        v9 = *(*(this + 5) + 4 * a2);
        if (v9)
        {
          v10 = bswap32(v9);
          v11 = (v8 + v10);
          v12 = *(this + 1);
          v13 = (v8 + v10 + 6);
          if (v13 <= v12)
          {
            v14 = bswap32(v11[2]) >> 16;
            v15 = bswap32(*v11) >> 16;
            v16 = bswap32(v11[1]);
            v17 = HIWORD(v16) & 0x7FFF;
            v18 = (v17 + v14) << ((v16 & 0x80000000) != 0);
            v19 = &v11[v14 + 3] + v18 * v15;
            v20 = v15 > a3 && v19 >= v11;
            if (v20 && v19 <= v12)
            {
              v22 = (&v13[v14] + v18 * a3);
              v23 = v22 + v18 > v12 || v8 > v22;
              if (!v23 && (v22 + v18) >= v22)
              {
                if (v16 >> 31 == 1)
                {
                  if (v17)
                  {
                    v53 = &v22[v17];
                    v55 = v14;
                    v28 = HIWORD(v16) & 0x7FFF;
                    while (1)
                    {
                      v29 = *v13++;
                      v30 = bswap32(v29) >> 16;
                      if (*(this + 2) <= v30)
                      {
                        break;
                      }

                      if (a6)
                      {
                        v31 = a6[v30];
                      }

                      else
                      {
                        v31 = ItemVariationStore::VariationRegionList::ComputeScalar(*(this + 3), v30, a4, a5);
                      }

                      v32 = *v22++;
                      v6 = v6 + v31 * bswap32(v32);
                      if (!--v28)
                      {
                        v22 = v53;
                        v14 = v55;
                        goto LABEL_30;
                      }
                    }
                  }

                  else
                  {
LABEL_30:
                    if (v17 >= v14)
                    {
                      return v6;
                    }

                    v33 = v14 - v17;
                    v34 = (v10 + 2 * v17 + v8 + 6);
                    while (1)
                    {
                      v35 = *v34++;
                      v36 = bswap32(v35) >> 16;
                      if (*(this + 2) <= v36)
                      {
                        break;
                      }

                      if (a6)
                      {
                        v37 = a6[v36];
                      }

                      else
                      {
                        v37 = ItemVariationStore::VariationRegionList::ComputeScalar(*(this + 3), v36, a4, a5);
                      }

                      v38 = *v22;
                      v22 = (v22 + 2);
                      v6 = v6 + v37 * (bswap32(v38) >> 16);
                      if (!--v33)
                      {
                        return v6;
                      }
                    }
                  }
                }

                else if (v17)
                {
                  v52 = v10;
                  v54 = *this;
                  v56 = v14;
                  v22 = (v22 + 2 * v17);
                  v39 = v18 * a3 + 2 * v14;
                  v40 = HIWORD(v16) & 0x7FFF;
                  v41 = v13;
                  while (1)
                  {
                    v42 = *v41++;
                    v43 = bswap32(v42) >> 16;
                    if (*(this + 2) <= v43)
                    {
                      break;
                    }

                    if (a6)
                    {
                      v44 = a6[v43];
                    }

                    else
                    {
                      v44 = ItemVariationStore::VariationRegionList::ComputeScalar(*(this + 3), v43, a4, a5);
                    }

                    v6 = v6 + v44 * (bswap32(*(v13 + v39)) >> 16);
                    v13 = v41;
                    if (!--v40)
                    {
                      v10 = v52;
                      v8 = v54;
                      v14 = v56;
                      goto LABEL_46;
                    }
                  }
                }

                else
                {
LABEL_46:
                  if (v17 >= v14)
                  {
                    return v6;
                  }

                  v45 = v14 - v17;
                  v46 = (v10 + 2 * v17 + v8 + 6);
                  while (1)
                  {
                    v47 = *v46++;
                    v48 = bswap32(v47) >> 16;
                    if (*(this + 2) <= v48)
                    {
                      break;
                    }

                    if (a6)
                    {
                      v49 = a6[v48];
                    }

                    else
                    {
                      v49 = ItemVariationStore::VariationRegionList::ComputeScalar(*(this + 3), v48, a4, a5);
                    }

                    v50 = *v22;
                    v22 = (v22 + 1);
                    v6 = v6 + v49 * v50;
                    if (!--v45)
                    {
                      return v6;
                    }
                  }
                }

                return 0.0;
              }
            }
          }
        }
      }
    }
  }

  return v6;
}

double OTL::GDEF::DeltaValue(OTL::GDEF *this, char *a2, unint64_t a3, int a4, unint64_t a5, const __int16 *a6)
{
  if (a4 && (v6 = &a2[a4], (v6 + 6) <= a3) && *(v6 + 2) == 128)
  {
    return ItemVariationStore::ValueForDeltaSet((this + 40), bswap32(*v6) >> 16, bswap32(*(v6 + 1)) >> 16, a5, a6, 0);
  }

  else
  {
    return 0.0;
  }
}

double ItemVariationStore::RegionAxisCoordinates::ComputeScalar(ItemVariationStore::RegionAxisCoordinates *this, int a2)
{
  v2 = bswap32(*this);
  v3 = bswap32(*(this + 1)) >> 16;
  result = 1.0;
  if (v3 >= v2 >> 16)
  {
    v5 = bswap32(*(this + 2)) >> 16;
    if (v5 >= v3)
    {
      v6 = v2 >> 16;
      v7 = v6 >= 0 || v5 <= 0;
      v8 = !v7;
      if (*(this + 1) && !v8)
      {
        result = 0.0;
        if (v6 <= a2 && v5 >= a2)
        {
          result = 1.0;
          if (v3 != a2)
          {
            if (v3 <= a2)
            {
              v10 = (v5 - a2);
              v11 = v5 - v3;
            }

            else
            {
              v10 = (a2 - v6);
              v11 = v3 - v6;
            }

            return v10 / v11;
          }
        }
      }
    }
  }

  return result;
}

OTL::Coverage *OTL::GDEF::IterateGlyphsIgnoredByLookupTable(OTL::Coverage *result, uint64_t a2, uint64_t a3, double a4, int8x16_t a5)
{
  v9[4] = *MEMORY[0x1E69E9840];
  v5 = bswap32(*(a2 + 2)) >> 16;
  if ((v5 & 0xE) != 0)
  {
    v9[0] = &unk_1EF258A28;
    v9[1] = a3;
    v9[3] = v9;
    OTL::GDEF::IterateGlyphsWithClassMask(result, v5 & 0xE, v9);
  }

  if ((v5 & 8) == 0)
  {
    if ((v5 & 0x10) != 0)
    {
      v6 = bswap32(*(a2 + 2 * (bswap32(*(a2 + 4)) >> 16) + 6)) >> 16;
      v8[0] = &unk_1EF258AB8;
      v8[1] = a3;
      v8[3] = v8;
      OTL::GDEF::IterateMarkGlyphsNotInSet(result, v6, v8, a4, a5);
    }

    if (v5 >= 0x100)
    {
      v7[0] = &unk_1EF258B48;
      v7[1] = a3;
      v7[3] = v7;
      OTL::GDEF::IterateMarkGlyphsNotOfAttachmentType(result, v5 >> 8);
    }
  }

  return result;
}

void *std::function<void ()(unsigned int)>::operator()(uint64_t a1, int a2)
{
  v8 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v8);
  }

  v4 = std::__throw_bad_function_call[abi:fn200100]();
  return std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::__split_buffer(v4, v5, v6, v7);
}

void *std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::__split_buffer(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v7 = *(a4 + 120);
    v6 = (a4 + 120);
    v5 = v7;
    v8 = v7 + 4 * a2;
    if (v8 > v6)
    {
      if (!(a2 >> 62))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    *v6 = v8;
  }

  else
  {
    v5 = 0;
  }

  v9 = v5 + 4 * a3;
  *a1 = v5;
  a1[1] = v9;
  a1[2] = v9;
  a1[3] = v5 + 4 * a2;
  return a1;
}

void std::__function::__func<OTL::GSUB::AddShapingGlyphsForLookup(OTL::Lookup const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0,std::allocator<OTL::GSUB::AddShapingGlyphsForLookup(OTL::Lookup const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0>,BOOL ()(unsigned short,unsigned short,unsigned short)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](a1 + 8);

  operator delete(a1);
}

unsigned __int16 *OTL::ClassDefTable::Iterate(unsigned __int16 *result, uint64_t a2)
{
  v3 = result;
  v17 = *MEMORY[0x1E69E9840];
  v4 = bswap32(*result) >> 16;
  if (v4 == 2)
  {
    v10 = result[1];
    std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::__value_func[abi:fn200100](v13, a2);
    if (v10)
    {
      v11 = &v3[3 * __rev16(v10) + 2];
      v12 = v3 + 2;
      do
      {
        std::function<void ()(unsigned short,unsigned short,unsigned short)>::operator()(v13, bswap32(*v12) >> 16, bswap32(v12[1]) >> 16, bswap32(v12[2]) >> 16);
        v12 += 3;
      }

      while (v12 != v11);
    }

    if (v14)
    {
      if (v14 == v13)
      {
        v16 = v15;
        (*(*v14 + 24))();
      }

      else
      {
        v16 = v14;
        v14 = 0;
      }
    }

    else
    {
      v16 = 0;
    }

    std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100](v15);
    return std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100](v13);
  }

  else if (v4 == 1 && result[2])
  {
    v5 = 0;
    v6 = bswap32(result[1]) >> 16;
    v7 = __rev16(result[2]);
    v8 = result + 3;
    if (v7 <= 1)
    {
      v9 = 1;
    }

    else
    {
      v9 = v7;
    }

    do
    {
      result = std::function<void ()(unsigned short,unsigned short,unsigned short)>::operator()(a2, v6 + v5, v6 + v5, bswap32(v8[v5]) >> 16);
      ++v5;
    }

    while (v9 != v5);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned short)>::__value_func[abi:fn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<TFont::InitShapingGlyphs(void)::$_1,std::allocator<TFont::InitShapingGlyphs(void)::$_1>,void ()(unsigned short,unsigned short)>::operator()(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (v3 <= v4)
  {
    v5 = v4 + 1;
    do
    {
      v6 = 1 << (v3 & 7);
      v7 = v3 >> 3;
      *(*(result + 8) + v7) |= v6;
      *(*(result + 16) + v7) |= v6;
      ++v3;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(unsigned int,OTL::LangSysTable const*,BOOL &)>::~__value_func[abi:fn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void std::__function::__func<OTL::GDEF::IterateGlyphsWithClassMask(unsigned int,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<OTL::GDEF::IterateGlyphsWithClassMask(unsigned int,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,void ()(unsigned short,unsigned short,unsigned short)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned short)>::~__value_func[abi:fn200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::__value_func[abi:fn200100](uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  if (v3)
  {
    if (v3 == a2)
    {
      *(a1 + 24) = a1;
      (*(**(a2 + 24) + 24))(*(a2 + 24), a1);
    }

    else
    {
      *(a1 + 24) = (*(*v3 + 16))(v3);
    }
  }

  else
  {
    *(a1 + 24) = 0;
  }

  return a1;
}

uint64_t std::__function::__func<TFont::InitShapingGlyphs(void)::$_3,std::allocator<TFont::InitShapingGlyphs(void)::$_3>,void ()(unsigned short,unsigned short)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF257B30;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<TFont::InitShapingGlyphs(void)::$_3,std::allocator<TFont::InitShapingGlyphs(void)::$_3>,void ()(unsigned short,unsigned short)>::operator()(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (v3 <= v4)
  {
    v5 = v4 + 1;
    do
    {
      *(*(result + 8) + (v3 >> 3)) |= 1 << (v3 & 7);
      ++v3;
    }

    while (v5 != v3);
  }

  return result;
}

uint64_t std::__function::__value_func<BOOL ()(unsigned int,OTL::ScriptTable const*,BOOL &)>::~__value_func[abi:fn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void GetShapingGlyphsQueue(void)::$_0::__invoke()
{
  v0 = dispatch_queue_create("com.apple.CoreText.InitShapingGlyphs", 0);
  qword_1ED5678D0 = v0;
  global_queue = dispatch_get_global_queue(-2, 0);

  dispatch_set_target_queue(v0, global_queue);
}

uint64_t OTL::GCommon::IterateFeatureTables(unint64_t a1, unsigned __int16 *a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  if (!*(a1 + 8))
  {
    return 0;
  }

  v6 = (a1 + __rev16(*(a1 + 8)));
  v7 = v6 + 1;
  if ((v6 + 1) > a3)
  {
    return 0;
  }

  v9 = bswap32(*v6) >> 16;
  v10 = &v7[v9];
  v11 = (v6 + 2) <= a3 ? (a3 - v7) >> 1 : 0;
  v12 = v10 <= a3 && v10 >= v7;
  if (!v12 && v11 != v9)
  {
    return 0;
  }

  if (!*a2)
  {
    return 1;
  }

  result = 0;
  v15 = a2 + (bswap32(a2[3]) >> 16);
  if (v15 + 2 >= a1)
  {
    v16 = (v15 + 4);
    if (v15 + 4 <= a3)
    {
      v18 = &a2[3 * __rev16(*a2) + 1];
      v19 = a2 + 1;
      do
      {
        v20 = __rev16(*(v15 + 2));
        v21 = &v16[v20];
        v22 = v15 + 6 <= a3 ? (a3 - v16) >> 1 : 0;
        v23 = v21 <= a3 && v21 >= v16;
        if (!v23 && v22 != v20)
        {
          break;
        }

        if (*(v15 + 2))
        {
          v25 = v15 + 2 * v20 + 4;
          while (v9 > bswap32(*v16) >> 16)
          {
            if (++v16 == v25)
            {
              if ((std::function<BOOL ()(unsigned int,OTL::FeatureTable const*,BOOL &)>::operator()(a4, bswap32(*v19), v15) & 1) == 0)
              {
                return 0;
              }

              result = 1;
              v26 = v19 + 3;
              if (v19 + 3 != v18)
              {
                goto LABEL_41;
              }

              return result;
            }
          }

          return 0;
        }

        v26 = v19 + 3;
        if (v19 + 3 == v18)
        {
          return 1;
        }

LABEL_41:
        v15 = a2 + (bswap32(v19[5]) >> 16);
        v16 = (v15 + 4);
        v27 = v15 + 2 < a1 || v16 > a3;
        v19 = v26;
      }

      while (!v27);
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__func<TOpenTypePositioningEngine::PositionRuns(SyncState &,KerningStatus &)::$_0,std::allocator<TOpenTypePositioningEngine::PositionRuns(SyncState &,KerningStatus &)::$_0>,BOOL ()(unsigned int,OTL::FeatureTable const*,BOOL &)>::operator()(uint64_t a1, _DWORD *a2, uint64_t a3, _BYTE *a4)
{
  if (*a2 == 1801810542)
  {
    **(a1 + 8) = bswap32(*(*a3 + 4)) >> 16;
    *a4 = 1;
  }

  return 1;
}

uint64_t std::__function::__value_func<BOOL ()(unsigned int,OTL::FeatureTable const*,BOOL &)>::~__value_func[abi:fn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

atomic_ullong *OTL::MergeTable::MergeTable(atomic_ullong *a1, atomic_ullong *a2)
{
  *a1 = atomic_load_explicit(a2, memory_order_acquire);
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  if (explicit)
  {
    explicit = CFDataGetBytePtr(explicit);
  }

  a1[1] = explicit;
  v4 = atomic_load_explicit(a1, memory_order_acquire);
  if (v4 && (BytePtr = CFDataGetBytePtr(v4)) != 0)
  {
    v6 = &BytePtr[CFDataGetLength(v4)];
  }

  else
  {
    v6 = 0;
  }

  a1[3] = 0;
  a1[2] = v6;
  a1[4] = 0;
  v7 = a1[1];
  if (v7)
  {
    v8 = v7 + 4;
    if ((v7 + 4) > v6 || !v7[1] || !v7[2] || ((v9 = __rev16(v7[1]), v10 = v7 + __rev16(v7[2]), v11 = v9 * v9, v12 = &v10[v11], (v10 + 1) <= v6) ? (v13 = v6 - v10) : (v13 = 0), v12 <= v6 ? (v14 = v12 >= v10) : (v14 = 0), !v14 ? (v15 = v13 == v11) : (v15 = 1), !v15))
    {
LABEL_51:
      a1[1] = 0;
      return a1;
    }

    a1[3] = v10;
    if (v7[3])
    {
      v16 = *v8;
      if (*v8)
      {
        v17 = __rev16(v7[3]);
        v18 = (v7 + __rev16(v16));
        v19 = &v18[v17];
        v20 = (v18 + 1) <= v6 ? (v6 - v18) >> 1 : 0;
        v21 = v19 <= v6 && v19 >= v18;
        if (v21 || v20 == v17)
        {
          if (v17 <= 1)
          {
            v17 = 1;
          }

          v23 = v18;
          while (1)
          {
            v24 = *v23++;
            v25 = v7 + (bswap32(v24) >> 16);
            if ((v25 + 2) > v6)
            {
              break;
            }

            v26 = bswap32(*v25) >> 16;
            if (v26 == 2)
            {
              v27 = 6 * (bswap32(*(v25 + 1)) >> 16) + 4;
            }

            else
            {
              v27 = v26 == 1 ? 2 * (bswap32(*(v25 + 2)) >> 16) + 6 : 0;
            }

            v28 = &v25[v27];
            if (v28 < v25 || v28 > v6)
            {
              break;
            }

            if (!--v17)
            {
              a1[4] = v18;
              return a1;
            }
          }
        }
      }

      goto LABEL_51;
    }
  }

  return a1;
}

const void **std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::push_back[abi:fn200100](const void **result, void *a2)
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
      v12 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<CTRun *,3ul>>(v11, v10);
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
    result = std::__split_buffer<CTRun *,TInlineBufferAllocator<CTRun *,3ul> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  v3[1] = v6;
  return result;
}

uint64_t std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<CTRun *,3ul>>(uint64_t a1, unint64_t a2)
{
  v3 = (a1 + 24);
  result = *(a1 + 24);
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

uint64_t std::__split_buffer<CTRun *,TInlineBufferAllocator<CTRun *,3ul> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 7) & 0xFFFFFFFFFFFFFFF8);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 32);
    v6 = (v5 + 24);
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

void TLine::UpdateCachedMetricsForRun(TLine *this, const TRun *a2)
{
  *(this + 18) += *(a2 + 26);
  v4 = *(a2 + 39);
  v5 = MEMORY[0x1E695F060];
  if (v4)
  {
    v5 = *(a2 + 39);
  }

  *(this + 13) = *(this + 13) + *(a2 + 24) + *v5;
  v6 = *(a2 + 225);
  if (v6)
  {
    *(this + 76) |= 2u;
    v6 = *(a2 + 225);
  }

  if ((v6 & 8) != 0)
  {
    *(this + 77) |= 8u;
  }

  if (*(a2 + 224))
  {
    *(this + 76) |= 1u;
  }

  if (*(a2 + 64) == 3)
  {
    *(this + 76) |= 4u;
  }

  if ((*(a2 + 90) & 1) != 0 || (*(a2 + 144) & 1) != 0 || v4 && *(v4 + 56) != *(v4 + 64))
  {
    *(this + 77) |= 2u;
  }

  v7 = *(a2 + 89);
  if ((v7 & 0x9842) != 0)
  {
    *(this + 76) |= 0x10u;
  }

  if ((v7 & 0x800) != 0)
  {
    *(this + 76) |= 0x20u;
  }

  v8 = (a2 + 40);
  if ((v7 & 0x100) != 0)
  {
    *(this + 77) |= 4u;
  }

  if (TAttributes::GetCompositionLanguage((a2 + 40), a2) >= 2)
  {
    *(this + 77) |= 0x200u;
  }

  v10 = *(a2 + 23);
  if (v10 && (*(v10 + 264) & 1) != 0 || (v11 = *(*(atomic_load_explicit(a2 + 7, memory_order_acquire) + 40) + 408), (*(*v11 + 392))(v11)))
  {
    *(this + 77) |= 0x10u;
  }

  if (*(a2 + 177))
  {
    BackgroundColor = TAttributes::GetBackgroundColor(atomic_load_explicit(v8, memory_order_acquire), 0, v9);
  }

  else
  {
    BackgroundColor = 0;
  }

  v13 = (this + 168);
  if (atomic_load_explicit(this + 21, memory_order_acquire))
  {
    explicit = atomic_load_explicit(v13, memory_order_acquire);
    if (BackgroundColor != explicit && (!BackgroundColor || !explicit || !CFEqual(explicit, BackgroundColor)))
    {
    }
  }

  else if (*(this + 3) - *(this + 2) == 8)
  {
    TCFRef<__CTFont const*>::Retain(this + 21, BackgroundColor);
  }

  v15 = *(a2 + 20);
  if (v15)
  {
    v16 = *(v15 + 48);
  }

  else
  {
    v16 = 0.0;
  }

  v17 = v16 + (*(*a2 + 56))(a2);
  if (v17 > *(this + 14))
  {
    *(this + 14) = v17;
  }

  v18 = (*(*a2 + 64))(a2) - v16;
  if (v18 > *(this + 15))
  {
    *(this + 15) = v18;
  }

  v19 = (*(*a2 + 72))(a2);
  if (v19 > *(this + 16))
  {
    *(this + 16) = v19;
  }
}

uint64_t TBaseFont::HasScriptSpecificMetrics(TBaseFont *this)
{
  if ((*(this + 46) & 0x2000000) != 0)
  {
    return (*(this + 45) >> 25) & 1;
  }

  v11 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 488))(&v11, this, 1111577413);
  *&v2 = 0xAAAAAAAAAAAAAAAALL;
  *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10[2] = v2;
  v10[3] = v2;
  v10[0] = v2;
  v10[1] = v2;
  explicit = atomic_load_explicit(&v11, memory_order_acquire);
  if (!explicit)
  {
    BytePtr = 0;
    goto LABEL_7;
  }

  BytePtr = CFDataGetBytePtr(explicit);
  v5 = CFDataGetBytePtr(explicit);
  if (!v5)
  {
LABEL_7:
    v6 = 0;
    goto LABEL_8;
  }

  v6 = &v5[CFDataGetLength(explicit)];
LABEL_8:
  OTL::BASE::BASE(v10, BytePtr, v6);
  HasScriptSpecificMetrics = OTL::BASE::HasScriptSpecificMetrics(v10);
  if (HasScriptSpecificMetrics)
  {
    v8 = 0x2000000;
  }

  else
  {
    v8 = 0;
  }

  atomic_fetch_or_explicit(this + 45, v8, memory_order_relaxed);
  atomic_fetch_or_explicit(this + 46, 0x2000000u, memory_order_relaxed);

  return HasScriptSpecificMetrics;
}

double TRun::GetAscent(TRun *this)
{
  v1 = *(this + 39);
  if (!v1 || (result = *(v1 + 32), result <= 0.0))
  {
    v3 = *(atomic_load_explicit(this + 7, memory_order_acquire) + 40);
    if (*(v3 + 56))
    {
      v4 = v3 + 56;
    }

    else
    {
      TFont::InitStrikeMetrics(v3);
    }

    return *(v4 + 8);
  }

  return result;
}

double TRun::GetDescent(TRun *this)
{
  v1 = *(this + 39);
  if (!v1 || (result = *(v1 + 40), result <= 0.0))
  {
    v3 = *(atomic_load_explicit(this + 7, memory_order_acquire) + 40);
    if (*(v3 + 56))
    {
      v4 = v3 + 56;
    }

    else
    {
      TFont::InitStrikeMetrics(v3);
    }

    return *(v4 + 16);
  }

  return result;
}

double TRun::GetLeading(TRun *this)
{
  v1 = *(this + 39);
  if (!v1 || (result = *(v1 + 48), result <= 0.0))
  {
    v3 = *(atomic_load_explicit(this + 7, memory_order_acquire) + 40);
    if (*(v3 + 56))
    {
      v4 = v3 + 56;
    }

    else
    {
      TFont::InitStrikeMetrics(v3);
    }

    return *(v4 + 24);
  }

  return result;
}

void *TLine::LinkRuns(void *this)
{
  v2 = this[2];
  v1 = this[3];
  if (v2 != v1)
  {
    v3 = *(*v2 + 48);
    this[11] = v3;
    if (v3)
    {
      v3[4] = 0;
      v4 = v2 + 8;
      if (v1 == v4)
      {
LABEL_4:
        v5 = v3;
LABEL_10:
        this[12] = v5;
        v9 = v5 + 3;
        goto LABEL_11;
      }
    }

    else
    {
      v4 = v2 + 8;
      if (v1 == v4)
      {
        v9 = this + 12;
LABEL_11:
        *v9 = 0;
        return this;
      }
    }

    v6 = v3[1];
    v7 = v4 + 8;
    while (1)
    {
      v5 = *(*v4 + 48);
      v6 += v3[2];
      if (v6 != v5[1])
      {
        goto LABEL_4;
      }

      v5[4] = v3;
      v3[3] = v5;
      v4 = v7;
      v3 = v5;
      v8 = v1 == v7;
      v7 += 8;
      if (v8)
      {
        goto LABEL_10;
      }
    }
  }

  return this;
}

uint64_t TTypesetter::CanLayout(TTypesetter *this)
{
  if ((*(this + 3) - *(this + 2)) < 8)
  {
    return 0;
  }

  CanLayout = TTypesetter::CanLayout(*(this + 256), *(*(this + 27) + 16));
  result = 1;
  if ((CanLayout & 1) == 0)
  {
    *(this + 257) = 1;
    return 0;
  }

  return result;
}

uint64_t TTypesetter::CanLayout(TTypesetter *this, uint64_t a2)
{
  v3 = this;
  if (qword_1ED5677F8 == -1)
  {
    if (this)
    {
      return 1;
    }
  }

  else
  {
    dispatch_once_f(&qword_1ED5677F8, 0, CheckForUnboundedLayout(BOOL)::$_0::__invoke);
    if (v3)
    {
      return 1;
    }
  }

  if (byte_1ED5677F1)
  {
    v5 = 1;
  }

  else
  {
    if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
    {
      dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
    }

    v5 = (IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter >> 3) & 1;
  }

  result = 1;
  if (a2 >= 10241 && v5)
  {
    if (_MergedGlobals_6)
    {
      return 0;
    }

    else
    {
      if (os_variant_has_internal_diagnostics())
      {
        CFLog();
      }

      result = 0;
      _MergedGlobals_6 = 1;
    }
  }

  return result;
}

void TRunGlue::TRunGlue(TRunGlue *this, TLine *a2)
{
  v2 = (*(a2 + 3) - *(a2 + 2)) >> 3;
  *this = a2;
  *(this + 1) = 0;
  *(this + 2) = v2;
  *(this + 7) = 0;
  *(this + 4) = *(a2 + 18);
  *(this + 40) = *(a2 + 72);
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 7) = 0;
  *(this + 12) = this + 80;
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  v3 = *(a2 + 2);
  if (*(a2 + 3) != v3)
  {
    v5 = *(*v3 + 48);
    *(this + 18) = v5;
    *(this + 19) = 0;
    *(this + 20) = *(v5 + 208);
    *(this + 13) = 0u;
    *(this + 14) = 0u;
    *(this + 11) = 0u;
    *(this + 12) = 0u;
    *(this + 33) = 0;
    *(this + 34) = 0;
    *(this + 31) = this + 240;
    *(this + 32) = 0;
    *(this + 50) = this + 280;
    *(this + 53) = 0;
    *(this + 27) = *MEMORY[0x1E695F060];
    *(this + 59) = 0;
    *(this + 60) = 0;
    explicit = atomic_load_explicit((v5 + 56), memory_order_acquire);
    v7 = *(explicit + 40);
    *(this + 61) = explicit;
    *(this + 62) = v7;
    *(this + 63) = TBaseFont::GetGlyphCount(*(v7 + 408));
    *(this + 512) = (*(**(*(this + 62) + 408) + 104))(*(*(this + 62) + 408));
    *(this + 513) = 1;
    *(this + 515) = 0;
    *(this + 516) = *(*(this + 18) + 90);
    *(this + 65) = TRunGlue::InitScale(this);
    *(this + 66) = v8;
    *(this + 25) = -1;
    *(this + 26) = -1;
    TRunGlue::InitLevelRange(this);
    v9 = *(this + 18);
    if ((*(v9 + 224) & 1) == 0)
    {
      *(this + 6) = 1;
LABEL_7:
      v14 = *(v9 + 216);
      v15 = *(v9 + 200);
      *(this + 21) = v14[2] + 2 * v15;
      *(this + 51) = v14[5] + 4 * v15;
      *(this + 52) = v14[6] + 8 * v15;
      return;
    }

    *(this + 6) = -1;
    v10 = *this;
    v11 = TRunGlue::PhysicalRunIndexFromLogical(this, 0);
    v12 = *(v10 + 16);
    if (v11 < (*(v10 + 24) - v12) >> 3)
    {
      v9 = *(*(v12 + 8 * v11) + 48);
      *(this + 18) = v9;
      *(this + 20) = *(v9 + 208);
      v13 = *(this + 16) + *(this + 17) - 1;
      if (v13 != *(this + 15))
      {
        TRunGlue::SelectRun(this, v13);
        v9 = *(this + 18);
      }

      goto LABEL_7;
    }
  }

  __break(1u);
}

void *TRunGlue::InitLevelRange(void *this)
{
  v1 = *(*this + 16);
  v2 = (*(*this + 24) - v1) >> 3;
  if (*(*this + 152))
  {
    v4 = *(this[18] + 224);
    v5 = this[1];
    this[16] = v5;
    if (v5 + 1 >= v2)
    {
      v6 = 1;
LABEL_10:
      this[17] = v6;
    }

    else
    {
      v6 = 1;
      v7 = v5 + 1;
      while (v2 > v7)
      {
        if (*(*(*(v1 + 8 * v7) + 40) + 224) != v4)
        {
          goto LABEL_10;
        }

        ++v6;
        if (v2 == ++v7)
        {
          v6 = v2 - v5;
          goto LABEL_10;
        }
      }

      if (v2 <= v5 + 1)
      {
        v2 = v5 + 1;
      }

      this[17] = v2 - v5;
      __break(1u);
    }
  }

  else
  {
    v3 = this[1];
    this[16] = v3;
    this[17] = v2 - v3;
  }

  return this;
}

uint64_t TTypesetter::FinishEncoding(uint64_t a1, unint64_t *a2, const TCharStream *a3)
{
  v3 = a2;
  v4 = a1;
  v93[11] = *MEMORY[0x1E69E9840];
  v5 = *a3;
  v6 = (v5 >> 4) & 1;
  v7 = *a2;
  if ((*(*a2 + 154) & 0x100) != 0)
  {
    v62 = *a3;
    v84 = *(a1 + 8);
    v90 = 0;
    v89 = 0u;
    memset(v88, 0, sizeof(v88));
    v86 = 0u;
    v87 = 0u;
    v85 = 0u;
    *&v89 = v84[2];
    v8 = (*(v7 + 3) - *(v7 + 2)) >> 3;
    v81 = 0;
    v82 = 0;
    v79 = 0;
    v80 = 0;
    if (v8 >= 1)
    {
      v60 = (v5 >> 4) & 1;
      v9 = 0;
      v10 = 0;
      v11 = 0;
      while (1)
      {
        v12 = *(v7 + 2);
        if (v11 >= (*(v7 + 3) - v12) >> 3)
        {
LABEL_82:
          __break(1u);
        }

        v78 = *(v12 + 8 * v11);
        v77 = *(v78 + 48);
        v13 = (v77 + 40);
        if (atomic_load_explicit(v77 + 5, memory_order_acquire) && CFDictionaryContainsKey(atomic_load_explicit(v13, memory_order_acquire), @"CTVerticalForms"))
        {
          goto LABEL_55;
        }

        v76 = 0xAAAAAAAAAAAAAAAALL;
        v14 = atomic_load_explicit(&v81, memory_order_acquire);
        v75 = 0xAAAAAAAAAAAAAAAALL;
        v76 = v14;
        v15 = atomic_load_explicit(&v80, memory_order_acquire);
        v74 = 0xAAAAAAAAAAAAAAAALL;
        v75 = v15;
        v74 = atomic_load_explicit(&v79, memory_order_acquire);
        explicit = atomic_load_explicit(v77 + 7, memory_order_acquire);
        if (v10 != explicit)
        {
          if (explicit)
          {
            GlyphCount = TBaseFont::GetGlyphCount(*(*(explicit + 5) + 408));
          }

          else
          {
            GlyphCount = 0;
          }

          v82 = GlyphCount;
          VerticalCopyOf(explicit, &CopyWithAttributes);

          TCFRef<__CTFont const*>::Retain(&v81, atomic_load_explicit(&v76, memory_order_acquire));
          v18 = atomic_load_explicit(&v76, memory_order_acquire);
          if (qword_1ED567808 != -1)
          {
            dispatch_once_f(&qword_1ED567808, 0, VerticalFormsFeature(void)::$_0::__invoke);
          }

          CopyWithAttributes = CTFontCopyGlyphCoverageForFeature(v18, qword_1ED567800);

          TCFRef<__CTFont const*>::Retain(&v80, atomic_load_explicit(&v75, memory_order_acquire));
          if (explicit && (v19 = *(*(explicit + 5) + 408)) != 0 && TBaseFont::HasFeature(v19, 4, 2))
          {
            if (qword_1ED567818 != -1)
            {
              dispatch_once_f(&qword_1ED567818, 0, RotationCopyOf(__CTFont const*)::$_0::__invoke);
            }

            CopyWithAttributes = CTFontCreateCopyWithAttributes(explicit, 0.0, 0, qword_1ED567810);

            TCFRef<__CTFont const*>::Retain(&v79, atomic_load_explicit(&v74, memory_order_acquire));
          }

          else
          {

            TCFRef<__CTFont const*>::Retain(&v79, atomic_load_explicit(&v74, memory_order_acquire));
          }

          v10 = explicit;
        }

        CopyWithAttributes = &v84;
        v71 = &v77;
        v72 = &v82;
        v73 = &v75;
        v20 = v77;
        v21 = *(v77 + 2);
        if (v21 < 1)
        {
          goto LABEL_54;
        }

        v63 = v10;
        v22 = *(v77 + 1);
        v23 = v21 + v22;
        while (1)
        {
          GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(v20, v22);
          NextChar = v22;
          if (GlyphIndexForChar < *(v20 + 26))
          {
            v26 = *(v20 + 27);
            v27 = *(v20 + 25);
            if (*(*(v26 + 16) + 2 * v27 + 2 * GlyphIndexForChar) == -1 || (NextChar = v22, (*(*(v26 + 40) + 4 * v27 + 4 * GlyphIndexForChar) & 0x20) != 0))
            {
              v28 = v77;
              v68 = TRun::GetGlyphIndexForCharIndex<false>(v77, v22);
              NextChar = TRun::GetNextChar(v28, v22, &v68);
              if (NextChar >= v23)
              {
                break;
              }
            }
          }

          v68 = 0xAAAAAAAAAAAAAAAALL;
          v69 = 0xAAAAAAAAAAAAAAAALL;
          v29 = TTypesetter::ApplyVerticalLayout(TLine &,TCharStream const*,signed char *)::$_0::operator()(&CopyWithAttributes, NextChar, &v68);
          v30 = v68 + v69 - 1;
          v31 = v77;
          v83 = TRun::GetGlyphIndexForCharIndex<false>(v77, v30);
          v32 = v31;
          for (i = v30; ; i = v36)
          {
            v35 = TRun::GetNextChar(v32, i, &v83);
            if (v35 >= v23 || v29 > 1 == TTypesetter::ApplyVerticalLayout(TLine &,TCharStream const*,signed char *)::$_0::operator()(&CopyWithAttributes, v35, &v68) < 2)
            {
              break;
            }

            v36 = v68 + v69 - 1;
            v37 = v77;
            v83 = TRun::GetGlyphIndexForCharIndex<false>(v77, v36);
            v32 = v37;
          }

          if (v35 < v23)
          {
            TLine::SplitRun(v7, v11, v35 - v22);
            v38 = *(v7 + 2);
            if (v11 >= (*(v7 + 3) - v38) >> 3)
            {
              goto LABEL_82;
            }

            ++v8;
            v78 = *(v38 + 8 * v11);
            v77 = *(v78 + 48);
          }

          if (v29 - 2 < 2)
          {
            TTypesetter::SetVerticalFont(v77, atomic_load_explicit(&v76, memory_order_acquire), v34);
LABEL_40:
            v9 = 1;
            if ((*(v77 + 89) & 0x800) != 0)
            {
              v64 = 1;
              TCFBase_NEW<CTRubyRun,CTRun *&,BOOL>(&v66, &v78, &v64);
              v83 = atomic_exchange(&v66, 0);
              TLine::ReplaceRun(v7, v11, &v83, &v65);
            }

            goto LABEL_42;
          }

          if (v29 <= 1)
          {
            v39 = atomic_load_explicit(&v74, memory_order_acquire);
            v40 = v77;
            if (v39)
            {
              v83 = atomic_load_explicit(&v74, memory_order_acquire);
              if (atomic_load_explicit(&v83, memory_order_acquire))
              {

                *(v40 + 88) = 1;
              }

              v41 = v77;
              v42 = *(atomic_load_explicit(v77 + 7, memory_order_acquire) + 40);
              RenderingStyle = TAttributes::GetRenderingStyle((v40 + 40));
              TStorageRange::ResetAdvances(v41 + 192, v42, RenderingStyle & 0xFFFFFFFFFFLL);
              goto LABEL_40;
            }

            v46 = *(v77 + 20);
            if (v46 && *(v46 + 64))
            {
              TTypesetter::SetVerticalFont(v77, atomic_load_explicit(&v76, memory_order_acquire), v34);
              if ((*(v77 + 89) & 0x1000) != 0)
              {
                TCFBase_NEW<CTTateChuYokoRun,CTRun *&>(&v78, &v66);
                v83 = atomic_exchange(&v66, 0);
                TLine::ReplaceRun(v7, v11, &v83, &v67);

                v47 = *(v7 + 2);
                if (v11 >= (*(v7 + 3) - v47) >> 3)
                {
                  goto LABEL_82;
                }

                v78 = *(v47 + 8 * v11);
                v77 = *(v78 + 48);
              }

              goto LABEL_40;
            }
          }

LABEL_42:
          if (v35 >= v23)
          {
            goto LABEL_53;
          }

          if (++v11 >= v8)
          {
            v20 = v77;
            v22 = v35;
          }

          else
          {
            v44 = *(v7 + 2);
            if (v11 >= (*(v7 + 3) - v44) >> 3)
            {
              goto LABEL_82;
            }

            v45 = *(v44 + 8 * v11);
            v20 = *(v45 + 48);
            v77 = v20;
            v78 = v45;
            v22 = v35;
          }
        }

        TAttributes::SetVerticalFont((v77 + 40), atomic_load_explicit(&v76, memory_order_acquire));
LABEL_53:
        v10 = v63;
LABEL_54:

LABEL_55:
        if (++v11 >= v8)
        {
          v62 |= v9 & 1;
          LODWORD(v6) = v60;
          v4 = a1;
          v3 = a2;
          goto LABEL_59;
        }
      }
    }

    v9 = 0;
LABEL_59:

    v6 = v6 | v9 & 1;
    TRunGlue::TRunGlue(&v84, v7);
    TRunGlue::operator=(v3, &v84);
    std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](v93);
    CopyWithAttributes = v92;
    std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&CopyWithAttributes);
    CopyWithAttributes = v91;
    std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__destroy_vector::operator()[abi:fn200100](&CopyWithAttributes);
    CopyWithAttributes = v88;
    std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](&CopyWithAttributes);
    LOBYTE(v5) = v62;
  }

  if (v5 & 2 | *(v4 + 40))
  {
    v48 = (*(v4 + 40) & 1) == 0;
  }

  else
  {
    v48 = 0;
  }

  if (v48)
  {
    CopyWithAttributes = 0xAAAAAAAAAAAAAAAALL;
    v71 = 0xAAAAAAAAAAAAAAAALL;
    TTypesetter::GetLevelsProvider(v4, &CopyWithAttributes);
    v49 = *(v4 + 8);
    v68 = CopyWithAttributes;
    v69 = v49;
    TBidiEngine::ReorderGlyphs(&v68, v7);
    TRunGlue::TRunGlue(&v84, v7);
    TRunGlue::operator=(v3, &v84);
    std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](v93);
    v83 = v92;
    std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v83);
    v83 = v91;
    std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__destroy_vector::operator()[abi:fn200100](&v83);
    v83 = v88;
    std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](&v83);
    if (v71)
    {
      std::__shared_weak_count::__release_shared[abi:fn200100](v71);
    }
  }

  if ((v5 & 4) != 0)
  {
    v50 = *(v4 + 8);
    v84 = v3;
    *&v85 = v50;
    LOBYTE(CopyWithAttributes) = -86;
    LOBYTE(v68) = 0;
    v6 = v6 | TCombiningEngine::ResolveCombiningMarks(&v84, 0, &CopyWithAttributes, &v68);
    if (CopyWithAttributes == 1)
    {
      *a3 &= ~4u;
    }

    LOBYTE(v5) = v68 | v5;
  }

  if (v5)
  {
    return TShapingEngine::ShapeGlyphs(v3, *(v4 + 8), a3) | v6;
  }

  v51 = *(v7 + 2);
  v52 = *(v7 + 3);
  while (v51 != v52)
  {
    v53 = *(*v51 + 48);
    ShapingType = TBaseFont::GetShapingType(*(*(atomic_load_explicit((v53 + 56), memory_order_acquire) + 40) + 408));
    v55 = *(v53 + 260) & 0xFFFFFFF9;
    *(v53 + 260) = v55;
    if (ShapingType)
    {
      if (ShapingType == 1)
      {
        v56 = 4;
      }

      else
      {
        v56 = 2;
      }

      *(v53 + 260) = v56 | v55;
    }

    v51 += 8;
  }

  return v6;
}

uint64_t TKerningEngine::PositionGlyphs(TKerningEngine *this, TRunGlue *a2, const TCharStream *a3)
{
  v3 = a3;
  v57[1] = *MEMORY[0x1E69E9840];
  result = TRunGlue::length(this);
  if (!result)
  {
    return result;
  }

  v46 = 0;
  v8 = *(*this + 16);
  v7 = *(*this + 24);
  memset(v56, 170, sizeof(v56));
  __src = 0;
  v54 = 0;
  v55 = 0;
  v57[0] = v56;
  if (v7 != v8)
  {
    v9 = (v7 - v8) >> 3;
    if (v9 >= 0xAAAAAAAAAAAAAABLL)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    *&v47[2] = v56;
    v10 = std::allocator_traits<TInlineBufferAllocator<std::pair<double,CFRange>,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::pair<double,CFRange>,30ul>>(v56, v9);
    v12 = v10 + 24 * v11;
    memcpy((v10 - (v54 - __src)), __src, v54 - __src);
    v13 = __src;
    v14 = v55;
    __src = (v10 - (v54 - __src));
    v54 = v10;
    v55 = v12;
    *&v47[1] = v13;
    *(&v47[1] + 1) = v14;
    *&v47[0] = v13;
    *(&v47[0] + 1) = v13;
    std::__split_buffer<std::pair<double,CFRange>,TInlineBufferAllocator<std::pair<double,CFRange>,30ul> &>::~__split_buffer(v47);
  }

  v42 = v56;
  v15 = 0;
  v41 = v3;
  v40 = v57;
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  for (*(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL; ; *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL)
  {
    v17 = *(this + 18);
    CommonTable = -1;
    v45 = NAN;
    v51[13] = v16;
    v51[14] = v16;
    v51[11] = v16;
    v51[12] = v16;
    v51[9] = v16;
    v51[10] = v16;
    v51[7] = v16;
    v51[8] = v16;
    v51[5] = v16;
    v51[6] = v16;
    v51[3] = v16;
    v51[4] = v16;
    v51[1] = v16;
    v51[2] = v16;
    v51[0] = v16;
    v48 = 0;
    v49 = 0;
    v50 = 0;
    v52 = v51;
    KernSetting = TAttributes::GetKernSetting((v17 + 40), &v45, 0);
    v19 = *(v17 + 260);
    if ((v19 & 2) != 0 || (CommonTable = TBaseFont::GetCommonTable(*(*(this + 62) + 408), 1634428274, 0)) == 0)
    {
      TKerningEngineImplementation::DetermineSimilarRuns(this, &v48);
      *&v21 = 0xAAAAAAAAAAAAAAAALL;
      *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v47[14] = v21;
      v47[15] = v21;
      v47[12] = v21;
      v47[13] = v21;
      v47[10] = v21;
      v47[11] = v21;
      v47[8] = v21;
      v47[9] = v21;
      v47[6] = v21;
      v47[7] = v21;
      v47[4] = v21;
      v47[5] = v21;
      v47[2] = v21;
      v47[3] = v21;
      v47[0] = v21;
      v47[1] = v21;
      TOpenTypePositioningEngine::TOpenTypePositioningEngine(v47, this, a2);
      if (!v15)
      {
        HasAvailable = StackHasAvailable(0x4000uLL);
        if (!HasAvailable)
        {
          v15 = 0;
          goto LABEL_17;
        }

        MEMORY[0x1EEE9AC00](HasAvailable, v23);
        v15 = &v39 - 1024;
      }

      v24 = *(this + 63);
      if (v24 <= 0x10000)
      {
        v25 = ((v24 + 63) >> 3) & 0x7FF8;
      }

      else
      {
        v25 = 0x2000;
      }

      bzero(v15, v25);
      TRunGlue::DetermineCoverage(this, v15);
      TOpenTypePositioningEngine::PositionRuns(v47, &v46, &KernSetting);
LABEL_17:
      v20 = *(this + 2);
      std::__tree<std::__value_type<long,TGlyphDeltaListEntry>,std::__map_value_compare<long,std::__value_type<long,TGlyphDeltaListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TGlyphDeltaListEntry>>>::destroy(*&v47[15]);
      if (KernSetting == 2)
      {
        goto LABEL_30;
      }

      goto LABEL_20;
    }

    if (KernSetting == 2)
    {
      v20 = 0;
      goto LABEL_30;
    }

    TKerningEngineImplementation::DetermineSimilarRuns(this, &v48);
    v20 = 0;
LABEL_20:
    if (CommonTable == -1)
    {
      CommonTable = TBaseFont::GetCommonTable(*(*(this + 62) + 408), 1634428274, 0);
    }

    memcpy(v47, &unk_18475A5C8, 0x198uLL);
    TAATKerxEngine::TAATKerxEngine(v47, this, CommonTable);
    if (*(&v47[5] + 1))
    {
      TAATKerxEngine::KernRuns(v47, &v46, &KernSetting);
      v20 = *(this + 2);
    }

    if (KernSetting != 2)
    {
      *v43 = xmmword_18475A760;
      *&v43[4] = unk_18475A770;
      memset(&v43[8], 170, 88);
      TAATKernEngine::TAATKernEngine(v43, this);
      if (*&v43[24])
      {
        TAATKernEngine::KernRuns(v43, &v46, &KernSetting);
        v20 = *(this + 2);
      }

      std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::destroy(&v43[14], *&v43[16]);
      if (*&v43[8])
      {
        *&v43[10] = *&v43[8];
        operator delete(*&v43[8]);
      }
    }

    TAATKerxEngine::~TAATKerxEngine(v47);
LABEL_30:
    if ((v19 & 6) != 0)
    {
      v26 = TRunGlue::FilterJoiners(this);
      v46 |= v26;
    }

    v27 = *(this + 1);
    if (v20)
    {
      v28 = v20;
    }

    else
    {
      v28 = *(this + 2);
    }

    AppendTrackAmountForRunIndex(&__src, *(this + 1), v45);
    v29 = v28 - 1;
    if (v28 != 1)
    {
      v30 = 0;
      v31 = v27 + 1;
      do
      {
        if (v30 >= (v49 - v48) >> 3)
        {
          __break(1u);
        }

        AppendTrackAmountForRunIndex(&__src, v31++, *(v48 + 8 * v30++));
        --v29;
      }

      while (v29);
    }

    if ((TRunGlue::NextRunRange(this, v28) & 1) == 0)
    {
      break;
    }

    *&v47[0] = &v48;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v47);
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
  }

  *(this + 24) = 0;
  *(this + 25) = -1;
  *(this + 26) = -1;
  *&v47[0] = &v48;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v47);
  if ((v41 & 4) != 0)
  {
    *&v47[0] = this;
    *(&v47[0] + 1) = a2;
    v33 = TCombiningEngine::ResolveCombiningMarks(v47, 2, 0, 0);
    v46 |= v33;
  }

  v34 = __src;
  v35 = v54;
  v36 = v42;
  if (__src != v54)
  {
    do
    {
      v32.location = *(v34 + 2);
      v37 = TTrackingEngine::TrackRuns(this, a2, *(v34 + 1), v32, *v34);
      v46 |= v37;
      v34 += 24;
    }

    while (v34 != v35);
    v34 = __src;
  }

  if (v34)
  {
    v54 = v34;
    if (v36 > v34 || v40 <= v34)
    {
      operator delete(v34);
    }
  }

  return v46;
}

void TTypesetter::FinishLayout(uint64_t a1, TKerningEngine *this, const TCharStream *a3, int a4)
{
  if (*(this + 513) == 1)
  {
    *(this + 513) = 0;
  }

  v5 = *this;
  v6 = *(a1 + 8);
  v8 = TKerningEngine::PositionGlyphs(this, v6, a3) | a4;
  if ((*(v5 + 77) & 0x200) != 0)
  {
    LOBYTE(v8) = TCompositionEngine::AdjustSpacing(this, v6, v7) | v8;
  }

  v9 = TBaselineEngine::AlignBaselines(v5, v6, v7);
  if ((*(v5 + 76) & 0x20) != 0 || (v8 & 1) != 0 || v9)
  {

    TLine::SyncWithRuns(v5);
  }
}

uint64_t std::allocator_traits<TInlineBufferAllocator<std::pair<double,CFRange>,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::pair<double,CFRange>,30ul>>(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 720);
  result = *(a1 + 720);
  v4 = result + 24 * a2;
  if (v4 > v2)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v2 = v4;
  return result;
}

void TOpenTypePositioningEngine::TOpenTypePositioningEngine(TOpenTypePositioningEngine *this, TRunGlue *a2, const TCharStream *a3)
{
  *this = a2;
  v5 = *(a2 + 62);
  *(this + 1) = v5;
  *(this + 4) = *(a2 + 6);
  *(this + 20) = *(a2 + 516);
  *(this + 3) = 0xFFFFFFFFLL;
  *(this + 8) = 0;
  CommonTable = TBaseFont::GetCommonTable(*(v5 + 408), 1195656518, 0);
  OTL::GDEF::GDEF((this + 40), CommonTable);
  *(this + 128) = 0;
  *(this + 216) = 0;
  *(this + 31) = 0;
  *(this + 30) = 0;
  *(this + 28) = a3;
  *(this + 29) = this + 240;
  v7 = *(*this + 8);
  v8 = *(**this + 16);
  if (v7 >= (*(**this + 24) - v8) >> 3)
  {
LABEL_20:
    __break(1u);
  }

  else
  {
    v9 = *(*this + 16);
    v10 = *(*(v8 + 8 * v7) + 48);
    ScriptAndLangSys = TAttributes::GetScriptAndLangSys((v10 + 40));
    v12 = ScriptAndLangSys;
    *(this + 6) = ScriptAndLangSys;
    *(this + 8) = HIDWORD(ScriptAndLangSys);
    if (ScriptAndLangSys == -1)
    {
      v12 = *(v10 + 304);
    }

    TOpenTypePositioningEngine::SetScript(this, v12);
    if (*(this + 28))
    {
      v13 = *(this + 6);
      if (v13 == -1 || v13 != *(v10 + 304))
      {
        v14 = *(*(this + 1) + 408);
        if ((*(v14 + 184) & 0x400) == 0)
        {
          TBaseFont::DetermineFontFlags(*(*(this + 1) + 408), 0x400u);
        }

        if ((*(v14 + 180) & 0x400) == 0)
        {
          v25 = a3;
          v36 = 0u;
          v26 = 0u;
          v27 = 0u;
          v28 = 0u;
          v29 = 0u;
          v30 = 0u;
          v31 = 0u;
          v32 = 0u;
          v33 = 0u;
          v34 = 0u;
          v35 = 0u;
          v15 = *(a3 + 2);
          v16 = v9 + v7;
          v37 = 0;
          *&v36 = v15;
          while (1)
          {
            v17 = *(v10 + 8);
            v18 = *(v10 + 16);
            NextChar = v17;
            if (v18 >= 1)
            {
              break;
            }

LABEL_15:
            if (++v7 == v16)
            {
              return;
            }

            v23 = *(**this + 16);
            if (v7 >= (*(**this + 24) - v23) >> 3)
            {
              goto LABEL_20;
            }

            v10 = *(*(v23 + 8 * v7) + 48);
          }

          v19 = v18 + v17;
          while (1)
          {
            FullChar = TCharStreamIterator::GetFullChar(&v25, &NextChar, 0);
            v21 = ScriptCodeForLongCharacter(FullChar);
            if (v21)
            {
              break;
            }

            v22 = NextChar;
            GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(v10, NextChar);
            NextChar = TRun::GetNextChar(v10, v22, &GlyphIndexForChar);
            if (NextChar >= v19)
            {
              goto LABEL_15;
            }
          }

          TOpenTypePositioningEngine::SetScript(this, v21);
        }
      }
    }
  }
}

BOOL TAttributes::GetKernSetting(TAttributes *this, double *a2, BOOL *a3)
{
  *a2 = 0.0;
  if (a3)
  {
    *a3 = 0;
  }

  v3 = *(this + 15);
  if (!v3)
  {
    return (*(this + 69) & 0x40) == 0;
  }

  if (*(v3 + 24) == 1)
  {
    *a2 = *(v3 + 16);
    if (a3)
    {
      *a3 = 1;
    }

    if (*(v3 + 8) == 1)
    {
      v4 = *v3;
      goto LABEL_11;
    }
  }

  else if (*(v3 + 8) == 1)
  {
    v4 = *v3;
    *a2 = *v3;
LABEL_11:
    if (v4 == 0.0)
    {
      return 0;
    }
  }

  if ((*(v3 + 66) & 1) == 0)
  {
    return (*(this + 69) & 0x40) == 0;
  }

  return 0;
}

unint64_t TKerningEngineImplementation::DetermineSimilarRuns(unint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 >= 2)
  {
    v3 = result;
    v4 = *(result + 8);
    v5 = *(*result + 16);
    if (v4 >= (*(*result + 24) - v5) >> 3)
    {
LABEL_28:
      __break(1u);
LABEL_29:
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v7 = 8 * v4;
    v8 = *(*(v5 + 8 * v4) + 48);
    v36 = NAN;
    KernSetting = TAttributes::GetKernSetting((v8 + 40), &v36, 0);
    v10 = v2 + v4;
    v34 = v8;
    v33 = (a2 + 264);
    v11 = 1;
    while (1)
    {
      v12 = *(*v3 + 16);
      if (v4 + v11 >= (*(*v3 + 24) - v12) >> 3)
      {
        goto LABEL_28;
      }

      v13 = *(*(v12 + v7 + 8 * v11) + 48);
      v35 = NAN;
      if (*(v8 + 224) != *(v13 + 224))
      {
        break;
      }

      if (*(v8 + 304) != *(v13 + 304))
      {
        break;
      }

      if (!TFont::Compare(*(atomic_load_explicit((v8 + 56), memory_order_acquire) + 40), *(atomic_load_explicit((v13 + 56), memory_order_acquire) + 40), 0))
      {
        break;
      }

      result = TAttributes::GetKernSetting((v13 + 40), &v35, 0);
      if (KernSetting != result)
      {
        break;
      }

      v15 = *(a2 + 8);
      v14 = *(a2 + 16);
      if (v15 >= v14)
      {
        v17 = *a2;
        v18 = v15 - *a2;
        v19 = (v18 >> 3) + 1;
        if (v19 >> 61)
        {
          goto LABEL_29;
        }

        v20 = v4;
        v21 = v3;
        v22 = v7;
        v23 = KernSetting;
        v24 = v14 - v17;
        if (v24 >> 2 > v19)
        {
          v19 = v24 >> 2;
        }

        if (v24 >= 0x7FFFFFFFFFFFFFF8)
        {
          v25 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v19;
        }

        v39 = a2 + 24;
        if (v25)
        {
          v26 = *v33;
          v27 = *v33 + 8 * v25;
          if (v27 > v33)
          {
            if (!(v25 >> 61))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          *v33 = v27;
        }

        else
        {
          v26 = 0;
        }

        v37 = 0u;
        v38 = 0u;
        v28 = &v26[8 * (v18 >> 3)];
        v29 = &v26[8 * v25];
        v30 = v26;
        *v28 = v35;
        v16 = v28 + 1;
        memcpy(v26, v17, v18);
        v31 = *a2;
        *a2 = v30;
        *(a2 + 8) = v16;
        v32 = *(a2 + 16);
        *(a2 + 16) = v29;
        *&v38 = v31;
        *(&v38 + 1) = v32;
        *&v37 = v31;
        *(&v37 + 1) = v31;
        result = std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v37);
        KernSetting = v23;
        v7 = v22;
        v3 = v21;
        v4 = v20;
        v8 = v34;
      }

      else
      {
        *v15 = v35;
        v16 = v15 + 1;
      }

      *(a2 + 8) = v16;
      ++v11;
      if ((v4 + v11) >= v10)
      {
        return result;
      }
    }

    v40.location = v4;
    v40.length = v11;
    return TRunGlue::SetRunRange(v3, v40);
  }

  return result;
}

unint64_t TAttributes::GetScriptAndLangSys(atomic_ullong *this)
{
  if (atomic_load_explicit(this + 3, memory_order_acquire))
  {
    v1 = ScriptAndLangSysFromCanonicalLanguage(atomic_load_explicit(this + 3, memory_order_acquire));
LABEL_6:
    v2 = v1 & 0xFFFFFFFF00000000;
    return v1 | v2;
  }

  if ((*(this + 69) & 0x400) != 0)
  {
    v1 = ScriptAndLangSysForPreferredLanguage();
    goto LABEL_6;
  }

  v2 = 0;
  LODWORD(v1) = -1;
  return v1 | v2;
}

uint64_t TRunGlue::FocusOnIndex(TRunGlue *this, int64_t a2)
{
  if (!*(this + 18))
  {
    return -1;
  }

  if (*(this + 19) > a2 || *(this + 20) <= a2)
  {
    TRunGlue::SelectRunForIndex(this, a2);
  }

  return *(this + 15);
}

uint64_t AppendTrackAmountForRunIndex(uint64_t result, uint64_t a2, double a3)
{
  if (a3 != 0.0)
  {
    v5 = result;
    v6 = *result;
    v7 = *(result + 8);
    if (*result != v7 && *(v7 - 24) == a3 && (v8 = *(v7 - 8), v8 + *(v7 - 16) == a2))
    {
      *(v7 - 8) = v8 + 1;
    }

    else
    {
      v9 = *(result + 16);
      if (v7 >= v9)
      {
        v11 = v7 - v6;
        v12 = 0xAAAAAAAAAAAAAAABLL * ((v7 - v6) >> 3);
        v13 = v12 + 1;
        if (v12 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        v14 = 0xAAAAAAAAAAAAAAABLL * ((v9 - v6) >> 3);
        if (2 * v14 > v13)
        {
          v13 = 2 * v14;
        }

        if (v14 >= 0x555555555555555)
        {
          v13 = 0xAAAAAAAAAAAAAAALL;
        }

        v15 = result + 24;
        v23[4] = v5 + 24;
        if (v13)
        {
          v16 = std::allocator_traits<TInlineBufferAllocator<std::pair<double,CFRange>,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::pair<double,CFRange>,30ul>>(v15, v13);
          v13 = v17;
          v6 = *v5;
          v11 = *(v5 + 8) - *v5;
        }

        else
        {
          v16 = 0;
        }

        v18 = v16 + 24 * v12;
        v19 = v16 + 24 * v13;
        *v18 = a3;
        *(v18 + 8) = a2;
        *(v18 + 16) = 1;
        v10 = v18 + 24;
        v20 = v18 - v11;
        memcpy((v18 - v11), v6, v11);
        v21 = *v5;
        *v5 = v20;
        *(v5 + 8) = v10;
        v22 = *(v5 + 16);
        *(v5 + 16) = v19;
        v23[2] = v21;
        v23[3] = v22;
        v23[0] = v21;
        v23[1] = v21;
        result = std::__split_buffer<std::pair<double,CFRange>,TInlineBufferAllocator<std::pair<double,CFRange>,30ul> &>::~__split_buffer(v23);
      }

      else
      {
        *v7 = a3;
        *(v7 + 8) = a2;
        *(v7 + 16) = 1;
        v10 = v7 + 24;
      }

      *(v5 + 8) = v10;
    }
  }

  return result;
}

unint64_t TRunGlue::NextRunRange(unint64_t this, uint64_t a2)
{
  v2 = *(this + 8) + a2;
  v3 = *(*this + 16);
  v4 = *(*this + 24) - v3;
  v5 = v4 >> 3;
  if (v2 >= v4 >> 3)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(this + 8) + a2;
  }

  if (v4 == 8)
  {
    return v2 < v5;
  }

  v7 = this;
  *(this + 32) = -1;
  *(this + 40) = -1;
  *(this + 48) = 0;
  *(this + 120) = v6;
  *(this + 8) = v6;
  *(this + 16) = v5 - v6;
  if (v5 > v6)
  {
    v8 = *(*(v3 + 8 * v6) + 48);
    *(this + 144) = v8;
    *(this + 152) = 0;
    *(this + 160) = *(v8 + 208);
    if ((*(v8 + 224) & 1) == 0)
    {
      *(this + 24) = 1;
LABEL_16:
      TRunGlue::UpdateForCurrentRealRun(v7);
      *(v7 + 192) = 0;
      *(v7 + 200) = -1;
      *(v7 + 208) = -1;
      *(v7 + 504) = TBaseFont::GetGlyphCount(*(*(v7 + 496) + 408));
      if (*(v7 + 513) == 1)
      {
        *(v7 + 512) = (*(**(*(v7 + 496) + 408) + 104))(*(*(v7 + 496) + 408)) | 0x100;
      }

      *(v7 + 514) = 0;
      *(v7 + 516) = *(*(v7 + 144) + 90);
      *(v7 + 520) = TRunGlue::InitScale(v7);
      *(v7 + 528) = v17;
      return v2 < v5;
    }

    *(this + 24) = -1;
    this = TRunGlue::PhysicalRunIndexFromLogical(this, v6);
    v9 = *(v7 + 120);
    if (this == v9)
    {
      goto LABEL_16;
    }

    v10 = *(*v7 + 16);
    v11 = (*(*v7 + 24) - v10) >> 3;
    if (v11 > this)
    {
      v12 = *(*(*(v10 + 8 * this) + 48) + 208);
      if (this <= v9)
      {
LABEL_15:
        *(v7 + 160) = v12;
        *(v7 + 120) = this;
        goto LABEL_16;
      }

      v13 = v10 - 8;
      v14 = this;
      while (1)
      {
        v15 = v12;
        v16 = v14 - 1;
        if (v11 <= v14 - 1)
        {
          break;
        }

        v12 += *(*(*(v13 + 8 * v14--) + 48) + 208);
        if (v16 <= v9)
        {
          *(v7 + 152) = v15;
          goto LABEL_15;
        }
      }

      *(v7 + 152) = v12;
      *(v7 + 160) = v12;
    }
  }

  __break(1u);
  return this;
}

uint64_t TShapingEngine::ShapeGlyphs(TShapingEngine *this, TRunGlue *a2, const TCharStream *a3)
{
  v32[92] = *MEMORY[0x1E69E9840];
  result = TRunGlue::length(this);
  if (result)
  {
    v6 = 0;
    v30 = 0;
    v29[1] = &v32[8];
    while (1)
    {
      v7 = *(this + 62);
      ShapingType = TBaseFont::GetShapingType(*(v7 + 408));
      if (ShapingType)
      {
        break;
      }

      v14 = 1;
LABEL_41:
      if ((TRunGlue::NextRunRange(this, v14) & 1) == 0)
      {
        *(this + 24) = 0;
        *(this + 25) = -1;
        *(this + 26) = -1;
        return v30;
      }
    }

    v9 = ShapingType;
    if (ShapingType != 2 && (ShapingType != 3 || (FontRequiresOpenTypeShaping(v7) & 1) == 0))
    {
      memset(v32, 170, 0x2A0uLL);
      TAATMorphTableMorx::TAATMorphTableMorx(v32, this);
      if (v32[5])
      {
        TAATMorphTable::ShapeGlyphs(v32, &v30, 0);
        v14 = *(this + 2);
        if (v14 >= 1)
        {
          v21 = *(this + 1);
          v22 = v14 + v21;
          v23 = *(*this + 16);
          v24 = *(*this + 24) - v23;
          if (v21 <= v24 >> 3)
          {
            v25 = v24 >> 3;
          }

          else
          {
            v25 = *(this + 1);
          }

          while (v25 != v21)
          {
            v26 = *(*(v23 + 8 * v21) + 48);
            v27 = *(v26 + 260) & 0xFFFFFFF9;
            *(v26 + 260) = v27;
            if (v9 == 1)
            {
              v28 = 4;
            }

            else
            {
              v28 = 2;
            }

            *(v26 + 260) = v28 | v27;
            if (++v21 >= v22)
            {
              goto LABEL_36;
            }
          }

LABEL_44:
          __break(1u);
        }
      }

      else
      {
        v14 = 1;
      }

LABEL_36:
      v31 = &v32[32];
      v32[0] = &unk_1EF257650;
      v32[8] = &unk_1EF257678;
      std::vector<unsigned char const*,TInlineBufferAllocator<unsigned char const*,48ul>>::__destroy_vector::operator()[abi:fn200100](&v31);
      goto LABEL_40;
    }

    memset(v32, 170, 0x2E0uLL);
    TOpenTypeMorph::TOpenTypeMorph(v32, this, a2);
    if (v32[68])
    {
      if (v6)
      {
        goto LABEL_11;
      }

      HasAvailable = StackHasAvailable(0x8000uLL);
      if (HasAvailable)
      {
        MEMORY[0x1EEE9AC00](HasAvailable, v11);
        v6 = &v29[-1024];
LABEL_11:
        v12 = *(this + 63);
        if (v12 <= 0x10000)
        {
          v13 = ((v12 + 63) >> 3) & 0x7FF8;
        }

        else
        {
          v13 = 0x2000;
        }

        bzero(v6, v13);
        TRunGlue::DetermineCoverage(this, v6);
        TOpenTypeMorph::ShapeGlyphs(v32, &v30);
        v14 = *(this + 2);
        if (v14 >= 1)
        {
          v15 = *(this + 1);
          v16 = v14 + v15;
          v17 = *(*this + 16);
          v18 = *(*this + 24) - v17;
          if (v15 <= v18 >> 3)
          {
            v19 = v18 >> 3;
          }

          else
          {
            v19 = *(this + 1);
          }

          while (v19 != v15)
          {
            v20 = *(*(v17 + 8 * v15) + 48);
            *(v20 + 260) = *(v20 + 260) & 0xFFFFFFF9 | 2;
            if (++v15 >= v16)
            {
              goto LABEL_39;
            }
          }

          goto LABEL_44;
        }

        goto LABEL_39;
      }

      v6 = 0;
    }

    v14 = 1;
LABEL_39:
    std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::__destroy_vector::operator()[abi:fn200100](&v32[4]);
LABEL_40:
    TRunGlue::UpdateAdvancesIfNeeded(this);
    goto LABEL_41;
  }

  return result;
}

void TOpenTypeMorph::TOpenTypeMorph(TOpenTypeMorph *this, TRunGlue *a2, const TCharStream *a3)
{
  *this = a2;
  v5 = *(a2 + 62);
  v6 = *(a2 + 6);
  v7 = *(a2 + 516);
  *(this + 28) = 0;
  v8 = this + 28;
  *(this + 1) = v5;
  *(this + 4) = v6;
  *(this + 20) = v7;
  *(this + 21) = 1;
  *(this + 6) = -1;
  *(this + 36) = 0u;
  *(this + 13) = 0;
  *(this + 67) = this + 56;
  v9 = (this + 544);
  CommonTable = TBaseFont::GetCommonTable(*(v5 + 408), 1196643650, 0);
  *v9 = CommonTable;
  *(v8 + 524) = a3;
  v11 = v8 + 532;
  *(v8 + 532) = 0u;
  *(v8 + 548) = &OTL::GDEF::kNullClassDefTable;
  *(v8 + 556) = &OTL::GDEF::kNullClassDefTable;
  *(v8 + 564) = &OTL::GDEF::kNullMarkGlyphSets;
  *(v8 + 572) = 0u;
  *(v8 + 588) = 0u;
  *(v8 + 604) = 0u;
  *(v8 + 157) = 2;
  *(v8 + 636) = 0u;
  *(v8 + 652) = 0u;
  *(v8 + 668) = 0;
  *(v8 + 684) = 0u;
  v97 = v8;
  v8[700] = 0;
  *(v8 + 620) = &unk_1EF258990;
  if (!CommonTable)
  {
    return;
  }

  v12 = TBaseFont::GetCommonTable(*(*(this + 1) + 408), 1195656518, 0);
  OTL::GDEF::GDEF(v108, v12);
  v13 = *&v108[48];
  *(v8 + 564) = *&v108[32];
  *(v8 + 580) = v13;
  *(v8 + 596) = *&v108[64];
  *(v8 + 612) = *&v108[80];
  v14 = *&v108[16];
  *v11 = *v108;
  *(v8 + 548) = v14;
  v15 = *(*this + 8);
  v16 = *(**this + 16);
  if (v15 >= (*(**this + 24) - v16) >> 3)
  {
    goto LABEL_92;
  }

  v17 = *(*this + 16);
  v18 = *(*(v16 + 8 * v15) + 48);
  *(this + 21) = *(v18 + 256) == 0;
  ScriptAndLangSys = TAttributes::GetScriptAndLangSys((v18 + 40));
  *(this + 3) = ScriptAndLangSys;
  if (ScriptAndLangSys == -1)
  {
    *(this + 6) = *(v18 + 304);
    if (!a3)
    {
LABEL_16:
      if (v17 < 2)
      {
        return;
      }

      v34 = 1;
      while (1)
      {
        v35 = *(**this + 16);
        if (v15 + v34 >= (*(**this + 24) - v35) >> 3)
        {
          break;
        }

        v36 = *(*(v35 + 8 * v15 + 8 * v34) + 48);
        if (!TOpenTypeMorph::CompareRuns(v18, v36, v20))
        {
          v86 = *this;
          v87.location = v15;
          v87.length = v34;
          goto LABEL_86;
        }

        v37 = *(this + 21) == 1 && *(v36 + 256) == 0;
        *(this + 21) = v37;
        ++v34;
        if ((v15 + v34) >= (v17 + v15))
        {
          return;
        }
      }

LABEL_92:
      __break(1u);
LABEL_93:
      *(this + 68) = 0;
      return;
    }
  }

  else if (!a3)
  {
    goto LABEL_16;
  }

  v21 = *(*(this + 1) + 408);
  if ((*(v21 + 184) & 0x400) == 0)
  {
    TBaseFont::DetermineFontFlags(*(*(this + 1) + 408), 0x400u);
  }

  v100 = v97 + 628;
  if ((*(v21 + 180) & 0x400) != 0 && (TFont::ShapesAnyPreferredLanguage(*(this + 1)) & 1) == 0)
  {
    v22 = *(this + 6);
    if (v22 == -1)
    {
      v27 = *(this + 1);
      v28 = *(this + 68);
      v29 = *(this + 7);
      v30 = v11;
      v31 = 0;
      goto LABEL_15;
    }

    v23 = ScriptTagForScriptCode(v22);
    v24 = v23;
    OTL::GCommon::GCommon(v108, 0, *(this + 1), *(this + 68), v11, v23, *(this + 7));
    v25 = *&v108[24];
    v26 = *&v108[56];
    *(v97 + 660) = *&v108[40];
    *(v97 + 676) = v26;
    *(v97 + 685) = *&v108[65];
    *v100 = *&v108[8];
    *(v97 + 644) = v25;
    if ((*(this + 728) & 1) == 0)
    {
      if (v24 != *(this + 180))
      {
        *(this + 6) = -1;
      }

      goto LABEL_16;
    }
  }

  if (*(this + 6) == 128)
  {
    v27 = *(this + 1);
    v28 = *(this + 68);
    v29 = *(this + 7);
    v30 = v11;
    v31 = 1835103336;
LABEL_15:
    OTL::GCommon::GCommon(v108, 0, v27, v28, v30, v31, v29);
    v32 = *&v108[24];
    v33 = *&v108[56];
    *(v97 + 660) = *&v108[40];
    *(v97 + 676) = v33;
    *(v97 + 685) = *&v108[65];
    *v100 = *&v108[8];
    *(v97 + 644) = v32;
    goto LABEL_16;
  }

  v99 = v11;
  *v108 = a3;
  v109 = 0u;
  v93 = v17 + v15;
  v38 = *(a3 + 2);
  v91 = -v15;
  v92 = 8 * v15;
  v39 = -1;
  v95 = v15;
  v96 = 1;
  v110 = 0;
  *&v109 = v38;
  v40 = v15;
  memset(&v108[8], 0, 160);
  while (1)
  {
    v98 = v40;
    v94 = v40 + 1;
    v42 = *(v18 + 8);
    v41 = *(v18 + 16);
    v107 = v42;
    GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(v18, v42);
    if (v41 >= 1)
    {
      break;
    }

    v47 = v99;
LABEL_68:
    v73 = *(this + 6);
    if (v73 < 1)
    {
      if (v39 == -1)
      {
        v73 = 25;
      }

      else
      {
        v73 = v39;
      }

      *(this + 6) = v73;
      v79 = *(this + 1);
      v80 = *(this + 68);
      v81 = ScriptTagForScriptCode(v73);
      OTL::GCommon::GCommon(v101, 0, v79, v80, v47, v81, *(this + 7));
      v82 = v103;
      v83 = v105[0];
      *(v97 + 660) = v104;
      *(v97 + 676) = v83;
      *(v97 + 685) = *(v105 + 9);
      *v100 = v102;
      *(v97 + 644) = v82;
    }

    else if (!*(this + 180))
    {
      v74 = *(this + 1);
      v75 = *(this + 68);
      v76 = ScriptTagForScriptCode(*(this + 6));
      OTL::GCommon::GCommon(v101, 0, v74, v75, v47, v76, *(this + 7));
      v77 = v103;
      v78 = v105[0];
      *(v97 + 660) = v104;
      *(v97 + 676) = v78;
      *(v97 + 685) = *(v105 + 9);
      *v100 = v102;
      *(v97 + 644) = v77;
      v73 = *(this + 6);
    }

    *(v18 + 304) = v73;
    v39 = v73;
LABEL_76:
    v40 = v94;
    if (v94 == v93)
    {
      return;
    }

    v84 = *(**this + 16);
    if (v94 >= (*(**this + 24) - v84) >> 3)
    {
      goto LABEL_92;
    }

    v85 = *(*(v84 + 8 * v94) + 48);
    if (!TOpenTypeMorph::CompareRuns(v18, v85, v43))
    {
      v87.length = v94 - v15;
      v86 = *this;
      v87.location = v15;
      goto LABEL_86;
    }

    ++v96;
    v18 = v85;
  }

  NextChar = v42;
  v45 = 0;
  v46 = v41 + v42;
  v90 = NextChar;
  v47 = v99;
  while (1)
  {
    FullChar = TCharStreamIterator::GetFullChar(v108, &v107, 0);
    v49 = ScriptCodeForLongCharacter(FullChar);
    if (!v49)
    {
      if (IsRightAssociative(FullChar))
      {
        v50 = v18;
        v51 = v46;
        v52 = v107 + 1;
        *v101 = v107 + 1;
        v53 = *this;
        v54 = *(*this + 40);
        if (v54 == -1)
        {
          TRunGlue::ComputeEndIndex(*this);
          v54 = *(v53 + 40);
        }

        v55 = *(v53 + 48) + v54;
        v56 = v52 < v55;
        v46 = v51;
        v18 = v50;
        if (v56)
        {
          do
          {
            v57 = TCharStreamIterator::GetFullChar(v108, v101, 0);
            v58 = ScriptCodeForLongCharacter(v57);
            v49 = v58;
            if (v58 >= 1)
            {
              v47 = v99;
              goto LABEL_29;
            }

            ++*v101;
          }

          while (*v101 < v55);
          v47 = v99;
          if (v58)
          {
            goto LABEL_29;
          }
        }

        else
        {
          v47 = v99;
        }
      }

      goto LABEL_54;
    }

LABEL_29:
    if (v49 == v39)
    {
      if (v45)
      {
        goto LABEL_53;
      }

      goto LABEL_52;
    }

    if (v39 >= 1 && ContinueScriptRunGivenCharacterWithScript(v39, FullChar))
    {
      goto LABEL_54;
    }

    if (v45)
    {
      break;
    }

    if (v39 != -1)
    {
      v87.location = v95;
      v87.length = v98 - v95;
      v86 = *this;
      goto LABEL_86;
    }

    if (*(this + 6) != v49)
    {
      v59 = *(*this + 496);
      v101[0] = -86;
      if (TFont::IsSystemUIFontAndForShaping(v59, v101))
      {
        if (v101[0])
        {
          v60 = LangSysTagFromPreferredLanguagesForScript(v49);
          if (v60)
          {
            *v97 = v60;
          }
        }
      }
    }

    *(this + 6) = v49;
    v61 = *(this + 1);
    v62 = *(this + 68);
    v63 = ScriptTagForScriptCode(v49);
    OTL::GCommon::GCommon(v101, 0, v61, v62, v47, v63, *(this + 7));
    v64 = v103;
    v65 = v105[0];
    *(v97 + 660) = v104;
    *(v97 + 676) = v65;
    *(v97 + 685) = *(v105 + 9);
    *v100 = v102;
    *(v97 + 644) = v64;
    if (v49 != 25)
    {
      if (v98 >= v95)
      {
        v66 = *(**this + 16);
        v67 = *(**this + 24) - v66;
        if (v95 <= (v67 >> 3))
        {
          v68 = v67 >> 3;
        }

        else
        {
          v68 = v95;
        }

        v69 = (v66 + v92);
        v70 = v91 + v68;
        v71 = v96;
        while (v70)
        {
          v72 = *v69++;
          *(*(v72 + 48) + 304) = v49;
          --v70;
          if (!--v71)
          {
            goto LABEL_63;
          }
        }

        goto LABEL_92;
      }

LABEL_63:
      v45 = 1;
      v39 = v49;
      goto LABEL_54;
    }

    v39 = 25;
LABEL_52:
    *(v18 + 304) = v39;
LABEL_53:
    v45 = 1;
LABEL_54:
    NextChar = TRun::GetNextChar(v18, v107, &GlyphIndexForChar);
    v107 = NextChar;
    if (NextChar >= v46)
    {
      v15 = v95;
      if ((v45 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_76;
    }
  }

  v88 = *this;
  if (!*(*this + 144) || !TLine::SplitRun(*v88, v98, NextChar - v90))
  {
    goto LABEL_93;
  }

  TRunGlue::UpdateForSplitRun(v88, 1);
  v86 = *this;
  v89 = *(**this + 16);
  if (v94 >= (*(**this + 24) - v89) >> 3)
  {
    goto LABEL_92;
  }

  *(*(*(v89 + 8 * v94) + 48) + 304) = -1;
  v87.location = v95;
  v87.length = v98 - v95 + 1;
LABEL_86:
  TRunGlue::SetRunRange(v86, v87);
}

uint64_t TStorageRange::SetAdvance(TStorageRange *this, uint64_t a2, CGSize a3)
{
  v4 = *(this + 3);
  v5 = v4[4];
  if (v5 || (v8 = v4[3]) == 0)
  {
    v6 = *(this + 1);
    v7 = (v5 + 16 * v6 + 16 * a2);
  }

  else
  {
    v6 = *(this + 1);
    v7 = (v8 + 8 * v6 + 8 * a2);
  }

  *this = *this + a3.width - *v7;
  return [v4 setAdvance:v6 + a2 atIndex:?];
}

CTFontRef CTFontCreateWithNameAndOptions(CFStringRef name, CGFloat size, const CGAffineTransform *matrix, CTFontOptions options)
{
  v16 = name;
  sizea = size;
  v13 = options;
  v14 = matrix;
  if ((options & 0x20000000) != 0)
  {
    v6 = options & 0x85;
    SystemUIFontOptions = TFont::GetSystemUIFontOptions(name);
    v8 = v6 | 0x400;
    if ((SystemUIFontOptions & options) == 0)
    {
      v8 = v6;
    }

    v12 = v8 | (options >> 1) & 0x10000;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    TCFBase_NEW<CTFontDescriptor,__CFString const*&,double &,unsigned int &>(&v16, &sizea, &v12, &v11);
    explicit = atomic_load_explicit(&v11, memory_order_acquire);
    v5 = CTFontCreateWithFontDescriptorAndOptions(explicit, sizea, v14, v13);
  }

  else
  {
    v11 = 0xAAAAAAAAAAAAAAAALL;
    TCFBase_NEW<CTFont,__CFString const*&,double &,CGAffineTransform const*&,char const(&)[31],unsigned long &>(&v16, &sizea, &v14, "CTFontCreateWithNameAndOptions", &v13, &v11);
    v5 = atomic_exchange(&v11, 0);
  }

  return v5;
}

void TFont::TFont(TFont *this, __CFString *theString, double a3, const CGAffineTransform *a4, const char *a5, unint64_t a6)
{
  *this = 0;
  *(this + 4) = 0;
  *(this + 1) = 0;
  if (theString && CFStringGetLength(theString) > 0)
  {
    if (qword_1ED567970 != -1)
    {
      dispatch_once_f(&qword_1ED567970, 0, TFont::GetSystemUIFontOptions(void)::$_0::__invoke);
    }

    v11 = a6 & 0x85;
    if ((qword_1ED567968 & a6) != 0)
    {
      v11 = a6 & 0x85 | 0x400;
    }

    v12 = (a6 >> 1) & 0x10000 | (((a6 >> 1) & 1) << 9) | v11 | 2;
    v37 = 0xAAAAAAAAAAAAAAAALL;
    TDescriptorSource::TDescriptorSource(keys);
    TDescriptorSource::CopyFontDescriptorPerPostScriptName(keys, theString, v12, 0, 0, &v37);
    explicit = atomic_load_explicit(&v37, memory_order_acquire);
    if (a3 <= 0.0 || !explicit)
    {
      goto LABEL_41;
    }

    v14 = atomic_load_explicit(&v37, memory_order_acquire);
    v15 = v14;
    v16 = v14[5];
    if ((*(v16 + 4) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(v14[5], 0, 0.0);
    }

    v17 = atomic_load_explicit(v16 + 4, memory_order_acquire);

    if (v17 && (*(*v17 + 16))(v17) == 1414743620 && (*(*v17 + 848))(v17))
    {
      keys[0] = @"NSFontNameAttribute";
      values = theString;
      v18 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *&v19 = 0xAAAAAAAAAAAAAAAALL;
      *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v35 = v19;
      v36 = v19;
      *keys = v19;
      TDescriptor::TDescriptor(keys, v18, v12);
      if ((v35 & 0x80000000) == 0)
      {
        TDescriptor::InitBaseFont(keys, v12, a3);
      }

      v20 = atomic_load_explicit(&v36, memory_order_acquire);
      v21 = TCFBase<TDescriptor>::Allocate();
      if (v21)
      {
        *(v21 + 16) = 0;
        *(v21 + 24) = TDescriptor::Hash;
        *(v21 + 32) = 0;
        *(v21 + 40) = v21 + 48;
        *(v21 + 48) = &unk_1EF257E00;
        *(v21 + 56) = 0;
        *(v21 + 64) = v12 | 0x80000400;
        *(v21 + 72) = 0;
        if (v20)
        {
          atomic_fetch_add_explicit((v20 + 8), 1u, memory_order_relaxed);
        }

        *(v21 + 80) = v20;
        *(v21 + 88) = 0;
      }

      *(this + 2) = v21;
      TDescriptor::~TDescriptor(keys);
    }

    else
    {
LABEL_41:
      if (atomic_load_explicit(&v37, memory_order_acquire))
      {
        v22 = atomic_load_explicit(&v37, memory_order_acquire);
        v23 = v22;
        v24 = v22[5];
        if ((*(v24 + 4) & 0x80000000) == 0)
        {
          TDescriptor::InitBaseFont(v22[5], 0, 0.0);
        }

        v25 = atomic_load_explicit(v24 + 4, memory_order_acquire);

        if (v25)
        {
          v26 = atomic_load_explicit((v25 + 96), memory_order_acquire);
          v27 = v26;
          v29 = v27;
          if (v27 == theString || v27 && CFEqual(v27, theString))
          {
          }

          else
          {
            ShouldSubstituteInvisibleFontName = TDescriptorSource::ShouldSubstituteInvisibleFontName(theString, v28);

            if ((ShouldSubstituteInvisibleFontName & 1) == 0)
            {
              CFLog();
              if (qword_1ED567978 != -1)
              {
                dispatch_once_f(&qword_1ED567978, "CTFontLogSuboptimalRequest", CTFontLogSuboptimalRequest::$_0::__invoke);
              }
            }
          }
        }
      }

      if (!atomic_load_explicit(&v37, memory_order_acquire))
      {
        TDescriptorSource::TDescriptorSource(&values);
        TDescriptorSource::CreateDefaultDescriptor(0, keys);
      }

      *(this + 2) = atomic_exchange(&v37, 0);
    }
  }

  else
  {
    TDescriptorSource::TDescriptorSource(keys);
    TDescriptorSource::CreateDefaultDescriptor(0, this + 2);
  }

  *(this + 3) = TFont::InitSize(0, a3, v30);
  *(this + 4) = 0;
  *(this + 10) = 0x80000000;
  TFont::InitMatrix((this + 48), a4, 0);
  *(this + 14) = 0;
  v32 = *MEMORY[0x1E695F058];
  v33 = *(MEMORY[0x1E695F058] + 16);
  *(this + 6) = *MEMORY[0x1E695EFF8];
  *(this + 7) = v32;
  *(this + 4) = 0u;
  *(this + 5) = 0u;
  *(this + 8) = v33;
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
  *(this + 3) = 192;
  TFont::SetOpticalSize(this, 0);
  TFont::AddFontSpecificFeatureSettings(this);
}

void TAttributes::HandleForegroundNSColorAttribute(id a1, uint64_t *a2)
{
  if (a1)
  {
    v2 = *a2;
    *(v2 + 136) = *(*a2 + 136) | 2;
    TCFRef<__CTFont const*>::Retain((v2 + 32), a1);
  }
}

uint64_t TParagraphStyle::SetStyle(TParagraphStyle *this, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  *this = cf;
  v3 = CFGetTypeID(cf);
  if (v3 == CTParagraphStyleGetTypeID())
  {
    result = 1;
    *(this + 8) = 1;
  }

  else
  {
    if ((atomic_load_explicit(&qword_1ED567D90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED567D90))
    {
      _MergedGlobals_24 = NSClassFromString(&cfstr_Nsparagraphsty.isa);
      __cxa_guard_release(&qword_1ED567D90);
    }

    if (objc_opt_isKindOfClass())
    {
      *(this + 8) = 0;
      return 1;
    }

    else
    {
      result = 0;
      *this = 0;
    }
  }

  return result;
}

CFTypeID CTParagraphStyleGetTypeID(void)
{
  if (qword_1ED567D10 != -1)
  {
    dispatch_once_f(&qword_1ED567D10, 0, TCFBase<TNativeParagraphStyle>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return qword_1ED567D18;
}

id TParagraphStyle::GetLineBoundsOptions(TParagraphStyle *this, const void *a2)
{
  v3 = *(this + 8);
  v4 = *this;
  if (v3)
  {
    return TParagraphStyle::GetNative(v4, a2)[5];
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v6 = *this;

  return [v6 _lineBoundsOptions];
}

id TParagraphStyle::GetCompositionLanguage(TParagraphStyle *this, const void *a2)
{
  v3 = *(this + 8);
  v4 = *this;
  if (v3)
  {
    return *(TParagraphStyle::GetNative(v4, a2) + 48);
  }

  if ((objc_opt_respondsToSelector() & 1) == 0)
  {
    return 0;
  }

  v6 = *this;

  return [v6 compositionLanguage];
}

id TParagraphStyle::GetBaseWritingDirection(TParagraphStyle *this, const void *a2)
{
  v3 = *(this + 8);
  v4 = *this;
  if (v3)
  {
    return *(TParagraphStyle::GetNative(v4, a2) + 34);
  }

  return [(TParagraphStyle *)v4 baseWritingDirection];
}

void TFont::GetSystemUIFontOptions(void)::$_0::__invoke()
{
  qword_1ED567968 = 1024;
  if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
  {
    dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
  }

  if ((IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter & 0x20) == 0)
  {
    qword_1ED567968 |= 2uLL;
  }
}

uint64_t TRun::GetGlyphIndexForCharIndex<false>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 208);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = *(a1 + 8);
  v6 = a2 - v5;
  if (a2 - v5 >= v2)
  {
    v7 = v2 - 1;
  }

  else
  {
    v7 = a2 - v5;
  }

  if (v6 >= 0)
  {
    v8 = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = *(a1 + 224);
  v10 = v2 + ~v8;
  if (v9)
  {
    v11 = v2 + ~v8;
  }

  else
  {
    v11 = v8;
  }

  v12 = *(a1 + 216);
  v13 = v12[6];
  v14 = *(a1 + 200);
  v15 = v13 + 8 * v14;
  v16 = *(v15 + 8 * v11);
  if (v16 == a2)
  {
    return v11;
  }

  if (*(a1 + 256) != 2)
  {
    if (v16 >= a2)
    {
      if (v9)
      {
        if (v10 <= v2 - 1)
        {
          v19 = v2 - 1;
        }

        else
        {
          v19 = v2 + ~v8;
        }

        v20 = (v13 + 8 * v14 + 8 * v2 - 8 * v8);
        v11 = v10;
        while (v19 != v11)
        {
          ++v11;
          v21 = *v20++;
          if (v21 <= a2)
          {
            return v11;
          }
        }

        return v19;
      }

      else if (v8 < 1)
      {
        return v8;
      }

      else
      {
        do
        {
          v11 = v7 - 1;
          if (v7 < 2)
          {
            break;
          }

          v18 = *(v15 - 8 + 8 * v7--);
        }

        while (v18 > a2);
      }

      return v11;
    }

    if ([v12 attachmentCountAtIndex:v11 + v14] + v16 >= a2)
    {
      return v11;
    }
  }

  return TRun::FindGlyphIndex<false>(a1, a2, 1);
}

uint64_t TRun::ResolveCharIndex(TRun *this, uint64_t a2)
{
  GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(this, a2);
  NextChar = TRun::GetNextChar(this, a2, &GlyphIndexForChar);
  v5 = *(this + 2) + *(this + 1);
  if (NextChar < v5)
  {
    return TRun::GetPrevChar(this, NextChar, &GlyphIndexForChar);
  }

  v7 = TRun::GetGlyphIndexForCharIndex<false>(this, v5 - 1);
  GlyphIndexForChar = v7;
  v8 = *(this + 27);
  v9 = *(this + 25);
  v10 = *(v8[6] + 8 * v9 + 8 * v7);
  if (*(v8[2] + 2 * v9 + 2 * v7) == -1 || (*(v8[5] + 4 * v9 + 4 * v7) & 0x20) != 0)
  {
    v14 = v7;
    PrevChar = TRun::GetPrevChar(this, v10, &v14);
    v11 = *(this + 1);
    if (v11 <= PrevChar && *(this + 2) + v11 > PrevChar)
    {
      GlyphIndexForChar = v14;
      return PrevChar;
    }
  }

  return v10;
}

uint64_t TRun::GetTrailingWhitespace@<X0>(uint64_t this@<X0>, double *a2@<X8>)
{
  if (*(this + 208) <= 0)
  {
    *a2 = 0.0;
    a2[1] = 0.0;
    a2[2] = 0.0;
  }

  else
  {
    v3 = this;
    v4 = *(this + 216);
    v5 = *(v4 + 32);
    if (v5 || (v8 = *(v4 + 24)) == 0)
    {
      v6 = 0;
      v7 = v5 + 16 * *(this + 200);
    }

    else
    {
      v7 = v8 + 8 * *(this + 200);
      v6 = 1;
    }

    this = TRun::ResolveCharIndex(this, *(this + 8) + *(this + 16) - 1);
    v23 = v9;
    v10 = this + 1;
    v11 = v3[1];
    v12 = 0;
    v13 = 0.0;
    if (v11 > this || v3[2] + v11 <= this)
    {
      v15 = this + 1;
    }

    else
    {
      v16 = this + 1;
      while (1)
      {
        v15 = this;
        v17 = v3[27];
        v18 = v3[25];
        if (*(*(v17 + 16) + 2 * v18 + 2 * v23) != -1 && (*(*(v17 + 40) + 4 * v18 + 4 * v23) & 0x21) == 0)
        {
          break;
        }

        ++v12;
        if (v6)
        {
          v19 = 3;
        }

        else
        {
          v19 = 4;
        }

        v13 = v13 + *(v7 + (v23 << v19));
        this = TRun::GetPrevChar(v3, this, &v23);
        v20 = v3[1];
        if (v20 <= this)
        {
          v16 = v15;
          if (v3[2] + v20 > this)
          {
            continue;
          }
        }

        goto LABEL_23;
      }

      v22 = NAN;
      v21 = -86;
      this = TAttributes::GetKernSetting((v3 + 5), &v22, &v21);
      if (v21 && v22 > 0.0)
      {
        v13 = v13 + v22;
      }

      v15 = v16;
    }

LABEL_23:
    *a2 = v10 - v15;
    *(a2 + 1) = v12;
    a2[2] = v13;
  }

  return this;
}

uint64_t TLine::GetTrailingWhitespace@<X0>(uint64_t this@<X0>, double *a2@<X8>)
{
  v4 = *(this + 16);
  v3 = *(this + 24);
  v5 = v3 - v4;
  if (v3 == v4 || (v6 = this, this = TLine::FindRunWithCharIndex(this, *(this + 72) + *(this + 80) - 1, 1), this < 0) || v5 >> 3 <= this || ((*(v6 + 152) & 8) != 0 ? (v7 = 0) : (v7 = ((*(v6 + 24) - *(v6 + 16)) >> 3) - 1), this != v7))
  {
    *a2 = 0.0;
    a2[1] = 0.0;
    a2[2] = 0.0;
  }

  else
  {
    v8 = *(v6 + 16);
    if (this >= ((*(v6 + 24) - v8) >> 3))
    {
      __break(1u);
    }

    else
    {
      v9 = *(*(v8 + 8 * this) + 40);
      v10 = *(v9 + 224);
      v11 = 0uLL;
      v12 = 0.0;
      do
      {
        v13 = v11;
        this = TRun::GetTrailingWhitespace(v9, v14.i64);
        v11 = vaddq_s64(v14, v13);
        v12 = v12 + v15;
        if (v14.i64[0] < *(v9 + 16))
        {
          break;
        }

        v9 = *(v9 + 32);
        if (!v9)
        {
          break;
        }
      }

      while (*(v9 + 224) == v10);
      *a2 = v11;
      a2[2] = v12;
    }
  }

  return this;
}

double CTLineGetTrailingWhitespaceWidth(CTLineRef line)
{
  if (!line)
  {
    return 0.0;
  }

  TLine::GetTrailingWhitespace(*(line + 5), v2);
  return v2[2];
}

unint64_t TLine::FindRunWithCharIndex(unint64_t this, uint64_t a2, int a3)
{
  v4 = *(this + 16);
  v3 = *(this + 24);
  v5 = v3 - v4;
  if (v3 - v4 == 8)
  {
    return 0;
  }

  if (v3 == v4)
  {
    goto LABEL_83;
  }

  v7 = *(*v4 + 40);
  v8 = *(v7 + 8);
  v9 = *(v7 + 16) + v8;
  if (v8 <= a2 && v9 > a2)
  {
    v25 = 0;
LABEL_33:
    *(this + 136) = v25;
    return v25;
  }

  v11 = v5 >> 3;
  v6 = *(this + 136);
  if (v6 >= v5 >> 3)
  {
    v6 = v11 / 2;
    *(this + 136) = v11 / 2;
  }

  if (v11 <= v6)
  {
    goto LABEL_83;
  }

  v12 = *(*&v4[8 * v6] + 40);
  v13 = *(v12 + 8);
  v14 = *(v12 + 16) + v13;
  if (v13 <= a2 && v14 > a2)
  {
    return v6;
  }

  v25 = v6 + 1;
  if (v6 + 1 < v11)
  {
    if (v11 <= v25)
    {
      goto LABEL_83;
    }

    v16 = *(*&v4[8 * v25] + 40);
    v17 = *(v16 + 8);
    v18 = *(v16 + 16) + v17;
    if (v17 <= a2 && v18 > a2)
    {
      goto LABEL_33;
    }
  }

  v20 = *(this + 152);
  if (v6 >= 2 && (v20 & 1) != 0)
  {
    v25 = v6 - 1;
    if (v11 > (v6 - 1))
    {
      v21 = *(*&v4[8 * v25] + 40);
      v22 = *(v21 + 8);
      v23 = *(v21 + 16) + v22;
      if (v22 <= a2 && v23 > a2)
      {
        goto LABEL_33;
      }

      goto LABEL_46;
    }

LABEL_83:
    __break(1u);
    return this;
  }

  if ((v20 & 1) != 0 || v11 < 101 || (*(this + 154) & 0x40) != 0)
  {
LABEL_46:
    if (a3 >= 0)
    {
      v25 = 0;
    }

    else
    {
      v25 = v11 - 1;
    }

    if (a3 < 0)
    {
      v33 = -1;
    }

    else
    {
      v33 = v5 >> 3;
    }

    while (v11 > v25)
    {
      v34 = *(*&v4[8 * v25] + 40);
      v35 = *(v34 + 8);
      v36 = *(v34 + 16) + v35;
      if (v35 <= a2 && v36 > a2)
      {
        goto LABEL_60;
      }

      v25 += a3;
      if (v33 == v25)
      {
        goto LABEL_59;
      }
    }

    goto LABEL_83;
  }

  v25 = v5 >> 3;
  if ((v5 & 0xFFFFFFFFFFFFFFF8) == 0)
  {
    goto LABEL_60;
  }

  v26 = &v4[v5 & 0xFFFFFFFFFFFFFFF8];
  v27 = v5 >> 3;
  v28 = v4;
  while (1)
  {
    v29 = v27 >> 1;
    v30 = &v28[8 * (v27 >> 1)];
    v31 = *(*v30 + 40);
    v32 = *(v31 + 8);
    if (*(v31 + 16) + v32 <= a2)
    {
      v28 = v30 + 8;
      v29 = v27 + ~v29;
      goto LABEL_44;
    }

    if (v32 <= a2)
    {
      break;
    }

    v26 = &v28[8 * (v27 >> 1)];
LABEL_44:
    v27 = v29;
    if (!v29)
    {
LABEL_59:
      v25 = v5 >> 3;
      goto LABEL_60;
    }
  }

  v40 = &v28[8 * (v27 >> 1)];
  if (v27 != 1)
  {
    do
    {
      v41 = v29 >> 1;
      v42 = &v28[8 * (v29 >> 1)];
      v44 = *v42;
      v43 = (v42 + 1);
      v29 += ~(v29 >> 1);
      if (*(*(v44 + 40) + 16) + *(*(v44 + 40) + 8) <= a2)
      {
        v28 = v43;
      }

      else
      {
        v29 = v41;
      }
    }

    while (v29);
    v40 = v28;
  }

  v45 = v30 + 8;
  v46 = v26 - (v30 + 8);
  if (v46)
  {
    v47 = v46 >> 3;
    do
    {
      v48 = v47 >> 1;
      v49 = &v45[8 * (v47 >> 1)];
      v51 = *v49;
      v50 = (v49 + 1);
      v47 += ~(v47 >> 1);
      if (*(*(v51 + 40) + 8) > a2)
      {
        v47 = v48;
      }

      else
      {
        v45 = v50;
      }
    }

    while (v47);
  }

  v25 = v5 >> 3;
  if (v40 != v45)
  {
    v25 = (v40 - v4) >> 3;
  }

LABEL_60:
  if (v25 < v11)
  {
    goto LABEL_33;
  }

  if (v11 < 1)
  {
    return v5 >> 3;
  }

  if (v11 - 1 >= v5 >> 3)
  {
    goto LABEL_83;
  }

  v38 = 0;
  v39 = *(this + 72) + *(this + 80);
  v6 = v11;
  do
  {
    if (*(*(*&v4[8 * v38] + 40) + 8) < v39)
    {
      v39 = *(*(*&v4[8 * v38] + 40) + 8);
      v6 = v38;
    }

    ++v38;
  }

  while (v11 != v38);
  return v6;
}

CFIndex TLine::GetLeftHangersGlyphCountAndWidth(CFIndex this, const unint64_t *a2)
{
  v2 = (*(this + 24) - *(this + 16)) >> 3;
  if (v2 >= 1)
  {
    v4 = this;
    v5 = 0;
    v6 = 0;
    v7 = (*(this + 152) >> 3) & 1;
    v8 = 0.0;
    while (1)
    {
      v9 = *(v4 + 16);
      if (v5 >= (*(v4 + 24) - v9) >> 3)
      {
        __break(1u);
        return this;
      }

      v10 = *(*(v9 + 8 * v5) + 40);
      v11 = v10[26];
      if ((v7 & 1) == 0)
      {
        break;
      }

      this = (*(*v10 + 80))(v10);
      v6 += this;
      v8 = v8 + *&a2;
      if (this < v11)
      {
        v12 = this;
        if (*&a2 == 0.0)
        {
LABEL_7:
          v13 = v10[21];
          if (v13)
          {
            LOBYTE(v14) = TParagraphStyle::GetLineBoundsOptions(v13, a2);
          }

          else
          {
            LOBYTE(v14) = 0;
          }

          goto LABEL_11;
        }

LABEL_10:
        v14 = *a2;
LABEL_11:
        this = TRun::GetLeftHangersGlyphCountAndWidth(v10, v12, v14, *v4, 1);
        v6 += this;
        v8 = v8 + *&a2;
        if (this < v11)
        {
          return v6;
        }

        LOBYTE(v7) = 0;
        goto LABEL_14;
      }

      LOBYTE(v7) = 1;
LABEL_14:
      if (v2 == ++v5)
      {
        return v6;
      }
    }

    v12 = 0;
    if (*&a2 == 0.0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  return 0;
}

double CTLineGetPenOffsetForFlush(CTLineRef line, CGFloat flushFactor, double flushWidth)
{
  if (!line)
  {
    return 0.0;
  }

  v5 = *(line + 5);
  v6 = *(v5 + 104);
  TLine::GetLeftHangersGlyphCountAndWidth(v5, 0);
  v8 = v7;
  TLine::GetRightHangersGlyphCountAndWidth(v5, 0);
  v10 = 1.0;
  if (flushFactor <= 1.0)
  {
    v10 = flushFactor;
  }

  if (flushFactor < 0.0)
  {
    v10 = 0.0;
  }

  if (flushWidth <= 0.0)
  {
    return v10 * v8;
  }

  else
  {
    return v10 * (v9 - (v6 - v8) + flushWidth);
  }
}

CFIndex TRun::GetLeftHangersGlyphCountAndWidth(atomic_ullong *this, uint64_t a2, char a3, const TCharStream *a4, int a5)
{
  v7 = a3;
  v8 = a2;
  v9 = this;
  v10 = this[27];
  v11 = v10[4];
  if (v11 || (v35 = v10[3]) == 0)
  {
    v47 = 0;
    v12 = this[25];
    v13 = v11 + 16 * v12;
    if (a2 < 0)
    {
LABEL_21:
      TAttributes::GetCompositionLanguage((this + 5), a2);
      v22 = v8;
      goto LABEL_37;
    }
  }

  else
  {
    v12 = this[25];
    v13 = v35 + 8 * v12;
    v47 = 1;
    if (a2 < 0)
    {
      goto LABEL_21;
    }
  }

  v14 = this[26];
  if ((a3 & 4) != 0 && v14 > a2)
  {
    v15 = v10[2] + 2 * v12;
    v64 = 0xAAAAAAAAAAAAAAAALL;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v62 = v16;
    v63 = v16;
    TAATPropTable::TAATPropTable(v62, atomic_load_explicit(this + 7, memory_order_acquire));
    v49 = a4;
    v60 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v17 = *(a4 + 2);
    v61 = 0;
    *&v60 = v17;
    v41 = a4;
    v18 = v14;
    if (qword_1ED5677D8 != -1)
    {
      dispatch_once_f(&qword_1ED5677D8, 0, GetLeftHangingCharacters(void)::$_0::__invoke);
    }

    v43 = v9;
    v44 = a5;
    v19 = *(*(v9 + 27) + 48) + 8 * *(v9 + 25);
    v20 = a5;
    v21 = v13 + 16 * v8;
    v22 = v8;
    v23 = 16 * a5;
    v24 = v13 + 8 * v22;
    v25 = 8 * a5;
    v26 = 0.0;
    v45 = v22;
    theSet = _MergedGlobals_5;
    do
    {
      v48 = *(v19 + 8 * v22);
      v27 = *(&v63 + 1);
      v28 = (v62 + (v64 >> 1));
      if (v64)
      {
        v27 = *(*v28 + DWORD2(v63));
      }

      if ((v27(v28, *(v15 + 2 * v22)) & 0x4000) == 0)
      {
        FullChar = TCharStreamIterator::GetFullChar(&v49, &v48, 0);
        if (!CFCharacterSetIsLongCharacterMember(theSet, FullChar))
        {
          break;
        }
      }

      v30 = (v47 ? v24 : v21);
      v26 = v26 + *v30;
      v22 += v20;
      if (v22 < 0)
      {
        break;
      }

      v21 += v23;
      v24 += v25;
    }

    while (v18 > v22);

    v9 = v43;
    CompositionLanguage = TAttributes::GetCompositionLanguage((v43 + 40), v31);
    if (v22 < 0)
    {
      a5 = v44;
      v8 = v45;
LABEL_37:
      if ((a5 & 0x80000000) == 0)
      {
        return v22 - v8;
      }

      return v8 - v22;
    }

    v34 = CompositionLanguage;
    a5 = v44;
    v8 = v45;
    v7 = a3;
    v14 = v18;
    a4 = v41;
  }

  else
  {
    v34 = TAttributes::GetCompositionLanguage((this + 5), a2);
    v22 = v8;
  }

  if (v14 > v22 && v34 >= 2)
  {
    v49 = a4;
    v60 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v59 = 0u;
    v36 = *(a4 + 2);
    v61 = 0;
    *&v60 = v36;
    v62[0] = *(*(*(v9 + 27) + 48) + 8 * *(v9 + 25) + 8 * v22);
    v37 = TCharStreamIterator::GetFullChar(&v49, v62, 0);
    v38 = v37;
    if (CJKCompositionEngine::IsEnabled(v37))
    {
      v39 = *(v9 + 20);
      if (!v39 || (*(v39 + 66) & 0x20) == 0)
      {
        LOBYTE(v48) = -86;
        if (CJKCompositionRules::ShouldGlyphImageLeftFlush(v34, *(v9 + 90), v38, &v48))
        {
          v33.location = v22;
          GetOpticalBoundsAdjustment(0, v9, v33);
          if ((v48 & 1) == 0)
          {
            atomic_load_explicit(v9 + 7, memory_order_acquire);
          }
        }
      }
    }

    else if ((v34 - 3) <= 1u)
    {
      ChineseCompositionRules::GetCharacterClass(v38, 0, v34);
    }
  }

  if ((a5 & 0x80000000) == 0)
  {
    if (v14 > v22)
    {
      return v22 - v8 + TRun::GetLeftPartialHangingGlyphCountAndWidth(v9, v22, v7, v33.length);
    }

    return v22 - v8;
  }

  return v8 - v22;
}

uint64_t TRun::GetLeftPartialHangingGlyphCountAndWidth(TRun *this, uint64_t a2, char a3, const TCharStream *a4)
{
  v6 = *(this + 27);
  v7 = v6[4];
  if (v7 || (v11 = v6[3]) == 0)
  {
    v8 = 0;
    v9 = *(this + 25);
    v10 = v7 + 16 * v9;
  }

  else
  {
    v9 = *(this + 25);
    v10 = v11 + 8 * v9;
    v8 = 1;
  }

  if ((a3 & 0x18) != 0)
  {
    v12 = *(this + 26);
    v13 = v6[2] + 2 * v9;
    v14 = *(atomic_load_explicit(this + 7, memory_order_acquire) + 40);
    v28.origin.x = TFont::GetBoundingBox(v14);
    MinX = CGRectGetMinX(v28);
    if ((a3 & 0x10) != 0)
    {
      v27 = *(v13 + 2 * a2);
      v24.width = NAN;
      v24.height = NAN;
      v26.origin = v24;
      v26.size = v24;
      v30.origin.x = TFont::GetOpticalBoundsForGlyphs(v14, &v27, &v26, 1);
      CGRectGetMinX(v30);
    }

    else
    {
      v16 = -MinX;
      v17 = v10 + 16 * a2;
      v18 = v10 + 8 * a2;
      v19 = 0.0;
      v20 = 1.79769313e308;
      do
      {
        if (v19 > v16)
        {
          break;
        }

        v27 = *(v13 + 2 * a2);
        v21.width = NAN;
        v21.height = NAN;
        v26.origin = v21;
        v26.size = v21;
        v29.origin.x = TFont::GetBoundingBoxesForGlyphs(v14, &v27, &v26, 1, kCTFontOrientationDefault);
        v22 = v19 + CGRectGetMinX(v29);
        if (v22 < v20)
        {
          v20 = v22;
        }

        v23 = (v8 ? v18 : v17);
        v19 = v19 + *v23;
        ++a2;
        v17 += 16;
        v18 += 8;
      }

      while (a2 < v12);
    }
  }

  return 0;
}

CFIndex TLine::GetRightHangersGlyphCountAndWidth(CFIndex this, const unint64_t *a2)
{
  v2 = (*(this + 24) - *(this + 16)) >> 3;
  v3 = v2 - 1;
  if (v2 >= 1)
  {
    v5 = this;
    v6 = 0;
    v7 = (*(this + 152) & 8) == 0;
    v8 = 0.0;
    while (1)
    {
      v9 = *(v5 + 16);
      if (v3 >= (*(v5 + 24) - v9) >> 3)
      {
        __break(1u);
        return this;
      }

      v10 = *(v9 + 8 * v3);
      v11 = *(v10 + 40);
      v12 = v11[26];
      if (!v7)
      {
        break;
      }

      this = TRun::GetRightWhitespaceGlyphCountAndWidth(*(v10 + 40));
      v6 += this;
      v8 = v8 + *&a2;
      if (this < v12)
      {
        v13 = ~this;
        if (*&a2 == 0.0)
        {
LABEL_7:
          v14 = v11[21];
          if (v14)
          {
            LOBYTE(v15) = TParagraphStyle::GetLineBoundsOptions(v14, a2);
          }

          else
          {
            LOBYTE(v15) = 0;
          }

          goto LABEL_11;
        }

LABEL_10:
        v15 = *a2;
LABEL_11:
        this = TRun::GetRightHangersGlyphCountAndWidth(v11, v13 + v12, v15, *v5, -1);
        v6 += this;
        v8 = v8 + *&a2;
        if (this < v12)
        {
          return v6;
        }

        v7 = 0;
        goto LABEL_14;
      }

      v7 = 1;
LABEL_14:
      v16 = v3-- + 1;
      if (v16 <= 1)
      {
        return v6;
      }
    }

    v13 = -1;
    if (*&a2 == 0.0)
    {
      goto LABEL_7;
    }

    goto LABEL_10;
  }

  return 0;
}

uint64_t TRun::GetRightWhitespaceGlyphCountAndWidth(TRun *this)
{
  v1 = *(this + 26);
  v2 = *(this + 27);
  v3 = v1 - 1;
  v4 = v2[4];
  if (v4 || (v8 = v2[3]) == 0)
  {
    v5 = 0;
    v6 = *(this + 25);
    v7 = v4 + 16 * v6;
  }

  else
  {
    v6 = *(this + 25);
    v7 = v8 + 8 * v6;
    v5 = 1;
  }

  if (v1 < 1)
  {
    v13 = v1 - 1;
  }

  else
  {
    v9 = v2[5] + 4 * v6;
    v10 = v7 + 16 * v1 - 16;
    v11 = v7 + 8 * v1 - 8;
    v12 = 0.0;
    v13 = v1 - 1;
    while ((*(v9 + 4 * v13) & 0x20) != 0 || (*(v9 + 4 * v13) & 5) == 1)
    {
      if (v5)
      {
        v14 = v11;
      }

      else
      {
        v14 = v10;
      }

      v12 = v12 + *v14;
      v10 -= 16;
      v11 -= 8;
      if (v13-- <= 0)
      {
        v13 = -1;
        return v3 - v13;
      }
    }
  }

  return v3 - v13;
}

CFIndex TRun::GetRightHangersGlyphCountAndWidth(atomic_ullong *this, uint64_t a2, char a3, const TCharStream *a4, int a5)
{
  v7 = a3;
  v8 = a2;
  v9 = this;
  v10 = this[27];
  v11 = v10[4];
  if (v11 || (v15 = v10[3]) == 0)
  {
    v12 = 0;
    v13 = this[25];
    v14 = v11 + 16 * v13;
  }

  else
  {
    v13 = this[25];
    v14 = v15 + 8 * v13;
    v12 = 1;
  }

  v46 = this[26];
  if (a2 < 0)
  {
    TAttributes::GetCompositionLanguage((this + 5), a2);
    v27 = v8;
    goto LABEL_31;
  }

  if ((a3 & 4) != 0 && v46 > a2)
  {
    v16 = v10[2] + 2 * v13;
    v63 = 0xAAAAAAAAAAAAAAAALL;
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v61 = v17;
    v62 = v17;
    TAATPropTable::TAATPropTable(v61, atomic_load_explicit(this + 7, memory_order_acquire));
    v48 = a4;
    v59 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v18 = *(a4 + 2);
    v60 = 0;
    *&v59 = v18;
    v43 = v7;
    v40 = a4;
    if (qword_1ED5677E8 != -1)
    {
      dispatch_once_f(&qword_1ED5677E8, 0, GetRightHangingCharacters(void)::$_0::__invoke);
    }

    v41 = a5;
    v42 = v9;
    v19 = *(*(v9 + 27) + 48) + 8 * *(v9 + 25);
    v20 = a5;
    v21 = v14 + 16 * v8;
    v22 = v8;
    v23 = 16 * a5;
    v24 = v14 + 8 * v22;
    v25 = 8 * a5;
    v26 = 0.0;
    v44 = v22;
    theSet = qword_1ED5677E0;
    v27 = v22;
    do
    {
      v47 = *(v19 + 8 * v27);
      v28 = *(&v62 + 1);
      v29 = (v61 + (v63 >> 1));
      if (v63)
      {
        v28 = *(*v29 + DWORD2(v62));
      }

      if ((v28(v29, *(v16 + 2 * v27)) & 0x2000) == 0)
      {
        FullChar = TCharStreamIterator::GetFullChar(&v48, &v47, 0);
        if (!CFCharacterSetIsLongCharacterMember(theSet, FullChar))
        {
          break;
        }
      }

      v31 = (v12 ? v24 : v21);
      v26 = v26 + *v31;
      v27 += v20;
      if (v27 < 0)
      {
        break;
      }

      v21 += v23;
      v24 += v25;
    }

    while (v46 > v27);

    v9 = v42;
    CompositionLanguage = TAttributes::GetCompositionLanguage((v42 + 40), v32);
    v7 = v43;
    if (v27 < 0)
    {
      v8 = v44;
      a5 = v41;
      goto LABEL_31;
    }

    v35 = CompositionLanguage;
    v8 = v44;
    a4 = v40;
    a5 = v41;
  }

  else
  {
    v35 = TAttributes::GetCompositionLanguage((this + 5), a2);
    v27 = v8;
  }

  if (v46 > v27 && v35 >= 2)
  {
    v48 = a4;
    v59 = 0u;
    v49 = 0u;
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v55 = 0u;
    v56 = 0u;
    v57 = 0u;
    v58 = 0u;
    v36 = *(a4 + 2);
    v60 = 0;
    *&v59 = v36;
    v61[0] = *(*(*(v9 + 27) + 48) + 8 * *(v9 + 25) + 8 * v27);
    v37 = TCharStreamIterator::GetFullChar(&v48, v61, 0);
    v38 = v37;
    if (CJKCompositionEngine::IsEnabled(v37))
    {
      LOBYTE(v47) = -86;
      if (CJKCompositionRules::ShouldGlyphImageRightFlush(v35, *(v9 + 90), v38, &v47))
      {
        v34.location = v27;
        GetOpticalBoundsAdjustment(1, v9, v34);
        if ((v47 & 1) == 0)
        {
          atomic_load_explicit(v9 + 7, memory_order_acquire);
        }
      }
    }
  }

LABEL_31:
  if (a5 >= 1)
  {
    return v27 - v8;
  }

  if (v27 < 0 || v46 <= v27)
  {
    return v8 - v27;
  }

  return v8 - v27 + TRun::GetRightPartialHangingGlyphCountAndWidth(v9, v27, v7, v34.length);
}

uint64_t TRun::GetRightPartialHangingGlyphCountAndWidth(TRun *this, uint64_t a2, char a3, const TCharStream *a4)
{
  v6 = *(this + 27);
  v7 = v6[4];
  if (v7 || (v11 = v6[3]) == 0)
  {
    v8 = 0;
    v9 = *(this + 25);
    v10 = v7 + 16 * v9;
  }

  else
  {
    v9 = *(this + 25);
    v10 = v11 + 8 * v9;
    v8 = 1;
  }

  if ((a3 & 0x18) != 0)
  {
    v12 = v6[2];
    v13 = *(atomic_load_explicit(this + 7, memory_order_acquire) + 40);
    TFont::GetMaxAdvance(v13);
    if ((a3 & 0x10) != 0)
    {
      *v30 = *(v12 + 2 * v9 + 2 * a2);
      v27.width = NAN;
      v27.height = NAN;
      v29.origin = v27;
      v29.size = v27;
      v32.origin.x = TFont::GetOpticalBoundsForGlyphs(v13, v30, &v29, 1);
      CGRectGetMaxX(v32);
    }

    else
    {
      v15 = v14;
      v16 = a2 + 1;
      v17 = v10 + 16 * a2;
      v18 = v10 + 8 * a2;
      v19 = (v12 + 2 * v9 + 2 * a2);
      v20 = 0.0;
      v21 = -1.79769313e308;
      do
      {
        if (v15 < v20)
        {
          break;
        }

        v22 = *v19--;
        *v30 = v22;
        v23.width = NAN;
        v23.height = NAN;
        v29.origin = v23;
        v29.size = v23;
        v31.origin.x = TFont::GetBoundingBoxesForGlyphs(v13, v30, &v29, 1, kCTFontOrientationDefault);
        v24 = CGRectGetMaxX(v31) - v20;
        v25 = (v8 ? v18 : v17);
        v26 = v24 - *v25;
        if (v21 < v26)
        {
          v21 = v26;
        }

        v20 = v20 + *v25;
        --v16;
        v17 -= 16;
        v18 -= 8;
      }

      while (v16 > 0);
    }
  }

  else
  {
    v29.origin.x = NAN;
    v30[0] = -86;
    TAttributes::GetKernSetting((this + 40), &v29.origin.x, v30);
  }

  return 0;
}

uint64_t std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::__vallocate[abi:fn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  result = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<CTRun *,3ul>>((a1 + 3), a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 8 * v4;
  return result;
}

void TLine::~TLine(TLine *this)
{
  v2 = this + 16;
  v3 = *(this + 77);
  v4 = (*(this + 3) - *(this + 2)) >> 3;
  if (!atomic_load_explicit(this + 20, memory_order_acquire))
  {
LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  if (CFGetRetainCount(atomic_load_explicit(this + 20, memory_order_acquire)) == 1 || !*this)
  {
    if (v4 >= 1)
    {
      v5 = 0;
      while (1)
      {
        v6 = *(this + 2);
        if (v5 >= (*(this + 3) - v6) >> 3)
        {
          goto LABEL_32;
        }

        v7 = *(v6 + 8 * v5);
        if (v7)
        {
          if (CFGetRetainCount(*(v6 + 8 * v5)) != 2 && *this)
          {
            goto LABEL_5;
          }

          if ((v3 & 1) == 0)
          {
            *(v7[6] + 272) = 0;
          }

          CFRelease(v7);
        }

        if (v4 == ++v5)
        {
          goto LABEL_25;
        }
      }
    }

    goto LABEL_17;
  }

  v5 = 0;
LABEL_5:
  TLine::CachePositions(this);
LABEL_18:
  if (v5 < v4)
  {
    while (1)
    {
      v8 = *(this + 2);
      if (v5 >= (*(this + 3) - v8) >> 3)
      {
        break;
      }

      v9 = *(v8 + 8 * v5);
      if (v9)
      {
        if ((v3 & 1) == 0)
        {
          *(v9[6] + 272) = 0;
        }

        CFRelease(v9);
      }

      if (v4 == ++v5)
      {
        goto LABEL_25;
      }
    }

LABEL_32:
    __break(1u);
    return;
  }

LABEL_25:
  v10 = *(this + 26);
  if (v10)
  {
    MEMORY[0x1865F22B0](v10, 0x1000C8099076E91);
  }

  v11 = *(this + 24);
  *(this + 24) = 0;
  if (v11)
  {

    MEMORY[0x1865F22D0](v11, 0x10E0C406F3F880DLL);
  }

  std::vector<std::tuple<unsigned short,unsigned short,unsigned short>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](v2);
  v12 = *(this + 1);
  if (v12)
  {
    std::__shared_weak_count::__release_shared[abi:fn200100](v12);
  }
}

void TCFBase<TLine>::ClassDestruct(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v2(a1);
  }

  v3 = *(a1 + 40);

  TLine::~TLine(v3);
}

void TRun::~TRun(TRun *this)
{
  *this = &unk_1EF256D38;
  v2 = (this + 40);
  free(*(this + 35));
  std::unique_ptr<TRun::RareData>::reset[abi:fn200100](this + 39, 0);
  TStorageRange::~TStorageRange(this + 24);
  TAttributes::~TAttributes(v2);
}

{
  TRun::~TRun(this);

  JUMPOUT(0x1865F22D0);
}

uint64_t TRun::GetNextChar(TRun *this, uint64_t NextGlyphIndex, uint64_t *a3)
{
  v6 = *(this + 64);
  if (v6)
  {
    while (1)
    {
      if (v6 > 1)
      {
        result = TRun::FindNextGlyphIndex(this, NextGlyphIndex, a3);
      }

      else
      {
        v7 = *a3;
        if (*(this + 224))
        {
          v8 = v7 - 1;
          *a3 = v7 - 1;
          if (v7 > 0)
          {
LABEL_8:
            result = *(*(*(this + 27) + 48) + 8 * *(this + 25) + 8 * v8);
            goto LABEL_9;
          }
        }

        else
        {
          v8 = v7 + 1;
          *a3 = v7 + 1;
          if (v7 + 1 < *(this + 26))
          {
            goto LABEL_8;
          }
        }

        result = *(this + 2) + *(this + 1);
      }

LABEL_9:
      if (result == NextGlyphIndex)
      {
        v6 = *(this + 64);
      }

      else
      {
        if (result >= *(this + 2) + *(this + 1))
        {
          return result;
        }

        v10 = *(this + 27);
        v11 = *(this + 25);
        if (*(*(v10 + 16) + 2 * v11 + 2 * *a3) != -1 && (*(*(v10 + 40) + 4 * v11 + 4 * *a3) & 0x20) == 0)
        {
          return result;
        }

        v6 = *(this + 64);
        NextGlyphIndex = result;
      }
    }
  }

  while (1)
  {
    if (v6 > 1)
    {
      NextGlyphIndex = TRun::FindNextGlyphIndex(this, NextGlyphIndex, a3);
    }

    else
    {
      v14 = *a3;
      if (*(this + 224))
      {
        v15 = v14 - 1;
        *a3 = v14 - 1;
        if (v14 > 0)
        {
LABEL_24:
          NextGlyphIndex = *(*(*(this + 27) + 48) + 8 * *(this + 25) + 8 * v15);
          goto LABEL_25;
        }
      }

      else
      {
        v15 = v14 + 1;
        *a3 = v14 + 1;
        if (v14 + 1 < *(this + 26))
        {
          goto LABEL_24;
        }
      }

      NextGlyphIndex = *(this + 2) + *(this + 1);
    }

LABEL_25:
    if (NextGlyphIndex >= *(this + 2) + *(this + 1))
    {
      return NextGlyphIndex;
    }

    v12 = *(this + 27);
    v13 = *(this + 25);
    if (*(*(v12 + 16) + 2 * v13 + 2 * *a3) != -1 && (*(*(v12 + 40) + 4 * v13 + 4 * *a3) & 0x20) == 0)
    {
      return NextGlyphIndex;
    }

    v6 = *(this + 64);
  }
}

CFArrayRef CTLineGetGlyphRuns(CFArrayRef line)
{
  if (line)
  {
    return TLine::GetRunCFArray(*(line + 5));
  }

  return line;
}

unint64_t TLine::GetRunCFArray(const void ***this)
{
  v1 = (this + 20);
  if (!atomic_load_explicit(this + 20, memory_order_acquire))
  {
    v6 = CFArrayCreate(*MEMORY[0x1E695E480], this[2], this[3] - this[2], MEMORY[0x1E695E9C0]);
    v2 = atomic_exchange(&v6, 0);

    v3 = 0;
    atomic_compare_exchange_strong(v1, &v3, v2);
    if (v3)
    {
      v4 = v2;
    }

    else
    {
      v4 = 0;
    }
  }

  return atomic_load_explicit(v1, memory_order_acquire);
}

void TLine::SyncWithRuns(TLine *this)
{
  *(this + 13) = 0;
  *(this + 14) = 0;
  *(this + 15) = 0;
  *(this + 16) = 0xFFEFFFFFFFFFFFFFLL;
  *(this + 18) = 0;
  *(this + 76) &= 8u;
  *(this + 77) &= 0x161u;
  v1 = (*(this + 3) - *(this + 2)) >> 3;
  if (v1 >= 1)
  {
    v3 = 0;
    while (1)
    {
      v4 = *(this + 2);
      if (v3 >= (*(this + 3) - v4) >> 3)
      {
        break;
      }

      v5 = *(*(v4 + 8 * v3) + 48);
      (*(*v5 + 144))(v5);
      TLine::UpdateCachedMetricsForRun(this, v5);
      if (v1 == ++v3)
      {
        return;
      }
    }

    __break(1u);
  }
}

uint64_t TBaselineEngine::AlignBaselines(TBaselineEngine *this, TLine *a2, const TCharStream *a3)
{
  v114[4] = *MEMORY[0x1E69E9840];
  v92 = *(this + 77);
  if ((v92 & 0x110) == 0)
  {
    v85 = 0;
    return v85 & 1;
  }

  memset(v112, 170, sizeof(v112));
  __p = 0;
  v110 = 0;
  v111 = 0;
  v113 = v112;
  v106 = &unk_1EF25BEB8;
  TScriptRun::GetScriptRunsForLine(this, a2, &v106, &__p);
  v5 = __p;
  v91 = v110;
  if (__p == v110)
  {
    v85 = 0;
    if (!__p)
    {
      return v85 & 1;
    }

    goto LABEL_199;
  }

  v87 = 0;
  v6 = 0;
  v94 = 0;
  v7 = NAN;
  v97 = -1431655936;
  v89 = a2;
  do
  {
    v8 = *(v5 + 1);
    v9 = *(v5 + 4);
    v99 = *v5;
    RunWithCharIndex = TLine::FindRunWithCharIndex(this, *v5, 1);
    v11 = *(this + 2);
    if (RunWithCharIndex >= (*(this + 3) - v11) >> 3)
    {
LABEL_203:
      __break(1u);
    }

    v12 = *(*(v11 + 8 * RunWithCharIndex) + 48);
    if ((v92 & 0x100) != 0)
    {
      v14 = 1;
    }

    else
    {
      v13 = *(v12 + 184);
      if (v13)
      {
        v14 = *(v13 + 264);
      }

      else
      {
        v14 = 0;
      }
    }

    v15 = *(*(atomic_load_explicit((v12 + 56), memory_order_acquire) + 40) + 408);
    v16 = (*(*v15 + 392))(v15);
    if ((v14 & 1) != 0 || (v16 & 1) != 0 || (*(v12 + 178) & 0x2000) != 0)
    {
      v93 = v16;
      memcpy(__dst, &unk_18477D9A8, sizeof(__dst));
      __dst[0] = this;
      __dst[1] = a2;
      __dst[2] = v99;
      __dst[3] = v8;
      v18 = 3;
      LODWORD(__dst[4]) = v9;
      if (v9 > 1818324576)
      {
        if (v9 <= 1936286819)
        {
          if (v9 > 1852143456)
          {
            if (v9 > 1935766897)
            {
              if (v9 == 1935766898)
              {
                goto LABEL_71;
              }

              v19 = 1936224868;
            }

            else
            {
              if (v9 == 1852143457)
              {
                goto LABEL_71;
              }

              v19 = 1869773153;
            }
          }

          else
          {
            if (v9 <= 1836016744)
            {
              if (v9 != 1818324577)
              {
                if (v9 != 1835103336)
                {
                  goto LABEL_186;
                }

                v18 = 4;
              }

              goto LABEL_71;
            }

            if (v9 == 1836016745)
            {
              goto LABEL_71;
            }

            v19 = 1836344681;
          }
        }

        else if (v9 <= 1952541553)
        {
          if (v9 > 1936685422)
          {
            if (v9 == 1936685423)
            {
              goto LABEL_71;
            }

            v19 = 1937337455;
          }

          else
          {
            if (v9 == 1936286820)
            {
              goto LABEL_71;
            }

            v19 = 1936289380;
          }
        }

        else if (v9 <= 1953063539)
        {
          if (v9 == 1952541554)
          {
            goto LABEL_71;
          }

          v19 = 1952541813;
        }

        else
        {
          if (v9 == 1953063540 || v9 == 1953067624)
          {
            goto LABEL_71;
          }

          v19 = 2053205602;
        }
      }

      else if (v9 <= 1735750260)
      {
        if (v9 > 1667785068)
        {
          if (v9 > 1735549293)
          {
            if (v9 == 1735549294)
            {
              goto LABEL_71;
            }

            v19 = 1735748210;
          }

          else
          {
            if (v9 == 1667785069)
            {
              goto LABEL_71;
            }

            v19 = 1684371041;
          }
        }

        else if (v9 > 1650814566)
        {
          if (v9 == 1650814567)
          {
            goto LABEL_71;
          }

          v19 = 1651663208;
        }

        else
        {
          if (!v9)
          {
            v18 = -1;
            goto LABEL_71;
          }

          v19 = 1650551913;
        }
      }

      else
      {
        if (v9 <= 1784772192)
        {
          if (v9 > 1751215720)
          {
            if (v9 == 1751215721)
            {
              goto LABEL_55;
            }

            v20 = 1784769903;
          }

          else
          {
            if (v9 == 1735750261)
            {
              goto LABEL_71;
            }

            v20 = 1751215719;
          }

          if (v9 != v20)
          {
            goto LABEL_186;
          }

          goto LABEL_55;
        }

        if (v9 > 1801547360)
        {
          if (v9 != 1801547361)
          {
            if (v9 != 1802002802)
            {
              v19 = 1802791017;
              goto LABEL_70;
            }

LABEL_71:
            v21 = 0;
            v90 = (v12 + 40);
            BYTE4(__dst[4]) = v18;
            do
            {
              v22 = &__dst[v21];
              *(v22 + 80) = 0;
              *(v22 + 88) = 0;
              v21 += 2;
            }

            while (v21 != 16);
            v98 = v8;
            v95 = v12;
            v96 = v6;
            for (i = 0; i != 16; i += 2)
            {
              v24 = &__dst[i];
              *(v24 + 208) = 0;
              *(v24 + 216) = 0;
            }

            v25 = *(this + 77);
            valuePtr.a = -3.72066208e-103;
            valuePtr.b = -3.72066208e-103;
            TLine::GetClusterRange(this, a2, v99, 2, &valuePtr, 0, 0);
            a = valuePtr.a;
            b = valuePtr.b;
            valuePtr.a = -3.72066208e-103;
            valuePtr.b = -3.72066208e-103;
            TLine::GetClusterRange(__dst[0], __dst[1], v8 + v99 - 1, 2, &valuePtr, 0, 0);
            if (*&valuePtr.a >= *&a)
            {
              v28 = a;
            }

            else
            {
              v28 = valuePtr.a;
            }

            v29 = *&valuePtr.b + *&valuePtr.a;
            if (*&b + *&a > *&valuePtr.b + *&valuePtr.a)
            {
              v29 = *&b + *&a;
            }

            v30 = (v29 - *&v28);
            v31 = *(__dst[0] + 2);
            v32 = *(__dst[0] + 3);
            if (v31 == v32)
            {
              v34 = *(__dst[0] + 2);
              *&v36 = 0xAAAAAAAAAAAAAAAALL;
              *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v37 = v25;
            }

            else
            {
              v33 = 0;
              v34 = *(__dst[0] + 2);
              v35 = v34;
              *&v36 = 0xAAAAAAAAAAAAAAAALL;
              *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v37 = v25;
              while (1)
              {
                v38 = *(*(*v35 + 40) + 208) + v33;
                if (v38 > *&v28)
                {
                  break;
                }

                v35 += 8;
                v34 += 8;
                v33 = v38;
                if (v35 == v32)
                {
                  goto LABEL_88;
                }
              }

              *&v28 -= v33;
            }

            if (v34 == v32)
            {
LABEL_88:
              v34 = *(__dst[0] + 3);
LABEL_92:
              v40 = *(__dst[0] + 3);
            }

            else
            {
              v39 = 0;
              v40 = v34;
              v41 = v34;
              while (1)
              {
                v39 += *(*(*v41 + 40) + 208);
                if (v39 >= v30 + *&v28)
                {
                  break;
                }

                v41 += 8;
                v40 += 8;
                if (v41 == v32)
                {
                  goto LABEL_92;
                }
              }
            }

            __dst[8] = *&v28;
            __dst[9] = v30;
            __dst[6] = ((v34 - v31) >> 3);
            __dst[7] = (((v40 - v31) >> 3) - __dst[6] + 1);
            v42 = *(this + 2);
            if (*(this + 3) - v42 <= (v34 - v31))
            {
              goto LABEL_203;
            }

            v43 = *(*(v42 + v34 - v31) + 40);
            __dst[5] = v43;
            v44 = v43[23];
            if (v44)
            {
              v45 = *(v44 + 264);
              if ((v45 & 1) == 0 && (v37 & 0x100) == 0)
              {
                goto LABEL_137;
              }

              v46 = v44 + 136;
              if (*(v44 + 264))
              {
                v47 = v44 + 136;
              }

              else
              {
                v47 = 0;
              }

              explicit = atomic_load_explicit((v44 + 272), memory_order_acquire);
              v49 = @"CTBaselineVerticalFont";
              if ((v37 & 0x100) == 0)
              {
                v49 = 0;
              }

              if (explicit)
              {
                v50 = explicit;
              }

              else
              {
                v50 = v49;
              }

              if (v50)
              {
                v51 = 0;
              }

              else
              {
                v51 = (v37 & 0x100) == 0;
              }

              if (v51)
              {
                if (v45)
                {
                  goto LABEL_162;
                }

LABEL_137:
                v104 = 0xAAAAAAAAAAAAAAAALL;
                v102 = v36;
                v103 = v36;
                *&valuePtr.tx = v36;
                v101 = v36;
                *&valuePtr.a = v36;
                *&valuePtr.c = v36;
                TOpenTypeBaselineEngine::TOpenTypeBaselineEngine(&valuePtr, __dst);
                if ((*(*&valuePtr.a + 24))(&valuePtr))
                {
                  a2 = v89;
                  if (v93)
                  {
                    v114[0] = &unk_1EF25BFD0;
                    v114[1] = &valuePtr;
                    v114[3] = v114;
                    v59 = TBaselineEngineImplementation::ApplyToRuns(&valuePtr, v114);
                    std::__function::__value_func<BOOL ()(TRun &)>::~__value_func[abi:fn200100](v114);
                    v87 |= v59;
                  }

                  if ((v14 & 1) == 0)
                  {
                    *&valuePtr.a = &unk_1EF25BE88;

                    v6 = v96;
                    v9 = v97;
                    goto LABEL_182;
                  }

                  v60 = TBaselineEngineImplementation::AlignBaselinesForRuns(&valuePtr);
                  *&valuePtr.a = &unk_1EF25BE88;

                  if (v60)
                  {
                    goto LABEL_145;
                  }
                }

                else
                {
                  *&valuePtr.a = &unk_1EF25BE88;

                  a2 = v89;
                }

                *&v61 = 0xAAAAAAAAAAAAAAAALL;
                *(&v61 + 1) = 0xAAAAAAAAAAAAAAAALL;
                *&valuePtr.c = v61;
                *&valuePtr.tx = v61;
                *&valuePtr.a = v61;
                TAATBslnEngine::TAATBslnEngine(&valuePtr, __dst);
                v62 = TAATBslnEngine::AlignBaselinesForRuns(&valuePtr);
                TAATBslnEngine::~TAATBslnEngine(&valuePtr);
                if (!v62)
                {
                  valuePtr.tx = -3.72066208e-103;
                  *&v64 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v64 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  *&valuePtr.a = v64;
                  *&valuePtr.c = v64;
                  TGenericBaselineEngine::TGenericBaselineEngine(&valuePtr, __dst);
                  v63 = TBaselineEngineImplementation::AlignBaselinesForRuns(&valuePtr);
                  *&valuePtr.a = &unk_1EF25BE88;

                  goto LABEL_147;
                }

LABEL_145:
                v63 = 1;
LABEL_147:
                if ((*(v95 + 178) & 0x2000) != 0)
                {
                  if (v63)
                  {
                    v66 = *(v95 + 160);
                    v67 = 0.0;
                    if (v66)
                    {
                      v68 = *(v66 + 48);
                      v69 = *(v66 + 40);
                      if (v69)
                      {
                        valuePtr.a = 0.0;
                        Value = CFDictionaryGetValue(atomic_load_explicit(v90, memory_order_acquire), v69);
                        if (Value)
                        {
                          v71 = Value;
                          v72 = CFGetTypeID(Value);
                          if (v72 == CFNumberGetTypeID() || v72 == CFBooleanGetTypeID())
                          {
                            CFNumberGetValue(v71, kCFNumberDoubleType, &valuePtr);
                          }

                          else if (v72 == CFStringGetTypeID())
                          {
                            valuePtr.a = CFStringGetDoubleValue(v71);
                          }
                        }

                        v67 = valuePtr.a;
                      }
                    }

                    else
                    {
                      v68 = 0.0;
                    }

                    v7 = v68 - v67;
                    v94 = 1;
                    v6 = 1;
                    goto LABEL_182;
                  }

                  v6 = v96;
                  if ((v96 & 1) != 0 && v97 == v9 && (v94 & 1) != 0 && v99 == *(v95 + 8) && v98 == *(v95 + 16))
                  {
                    v77 = *(v95 + 160);
                    v78 = v77 ? *(v77 + 48) : 0.0;
                    if (v78 != v7 + v78)
                    {
                      *(TAttributes::EnsureRareData(v90) + 48) = v7 + v78;
                      *(v95 + 89) = 1;
                    }
                  }
                }

                else
                {
                  v6 = v96;
                  if (v96)
                  {
                    v6 = 0;
                  }

                  v65 = v94;
                  if (v94)
                  {
                    v65 = 0;
                  }

                  v94 = v65;
                }

                v9 = v97;
LABEL_182:
                v97 = v9;
                goto LABEL_183;
              }

              v88 = v45 ^ 1;
              v46 = v47;
            }

            else
            {
              if ((v37 & 0x100) == 0)
              {
                goto LABEL_137;
              }

              v46 = 0;
              v88 = 1;
              v50 = @"CTBaselineVerticalFont";
            }

            v114[0] = 0;
            if (CFEqual(v50, @"CTBaselineOriginalFont"))
            {
              TAttributes::OriginalFont(v43 + 5, &valuePtr);
            }

            else
            {
              if (CFEqual(v50, @"CTBaselineVerticalFont"))
              {
                TAttributes::OriginalFont(v43 + 5, &v108);
                VerticalCopyOf(atomic_load_explicit(&v108, memory_order_acquire), &valuePtr);

                v52 = *&v108;
                goto LABEL_121;
              }

              *&valuePtr.a = _CTFontEnsureFontRef(v50);
            }

            if ((v37 & 0x100) == 0)
            {
              v53 = 0;
LABEL_122:
              v54 = *(atomic_load_explicit(v114, memory_order_acquire) + 40);
              TBaselineEngine::GetBaselineInfo(v54, v9, &__dst[26]);
              v55 = atomic_load_explicit(v43 + 7, memory_order_acquire);
              if (!v53 || (v56 = atomic_load_explicit(v114, memory_order_acquire), v56 == v55) || (v55 ? (v57 = v56 == 0) : (v57 = 1), !v57 && CFEqual(v56, v55)))
              {
LABEL_135:
                TBaselineEngineImplementation::SynthesizeMissingBaselines(v54, &__dst[26], 0.0);
              }

              else
              {
                v58 = 0;
                while (LOBYTE(__dst[v58 + 27]) == 1)
                {
                  v58 += 2;
                  if (v58 == 16)
                  {
                    goto LABEL_135;
                  }
                }

                v79 = CTFontCopyFontDescriptor(v55);
                v80 = v79;
                v81 = *(v54 + 48);
                if (!v81)
                {
                  v81 = MEMORY[0x1E695EFD0];
                }

                v83 = v81[1];
                v82 = v81[2];
                *&valuePtr.a = *v81;
                *&valuePtr.c = v83;
                *&valuePtr.tx = v82;
                v108 = CTFontCreateWithFontDescriptor(v79, *(v54 + 24), &valuePtr);
                VerticalCopyOf(atomic_load_explicit(&v108, memory_order_acquire), &v107);

                v84 = *(atomic_load_explicit(&v108, memory_order_acquire) + 40);
                TBaselineEngine::GetBaselineInfo(v84, v9, &__dst[26]);
                TBaselineEngineImplementation::SynthesizeMissingBaselines(v84, &__dst[26], 0.0);
              }

              *&v36 = 0xAAAAAAAAAAAAAAAALL;
              *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
              if (v88)
              {
                goto LABEL_137;
              }

LABEL_162:
              v73 = 0;
              v74 = (v46 + 8);
              v75 = &__dst[27];
              while (1)
              {
                if (*v74 == 1)
                {
                  *(v75 - 1) = *(v74 - 1);
                  *v75 = 1;
                  if (v73 == 5)
                  {
                    v76 = &__dst[41];
                    if (LOBYTE(__dst[41]) != 1)
                    {
                      goto LABEL_168;
                    }
                  }

                  else
                  {
                    if (v73 != 2)
                    {
                      goto LABEL_168;
                    }

                    v76 = &__dst[39];
                    if ((__dst[39] & 1) == 0)
                    {
                      goto LABEL_168;
                    }
                  }

                  *v76 = 0;
                }

LABEL_168:
                ++v73;
                v75 += 2;
                v74 += 16;
                if (v73 == 8)
                {
                  goto LABEL_137;
                }
              }
            }

            VerticalCopyOf(atomic_load_explicit(v114, memory_order_acquire), &valuePtr);

            v52 = valuePtr.a;
LABEL_121:

            v53 = 1;
            goto LABEL_122;
          }

LABEL_55:
          v18 = 2;
          goto LABEL_71;
        }

        if (v9 == 1784772193)
        {
          goto LABEL_71;
        }

        v19 = 1801546857;
      }

LABEL_70:
      if (v9 == v19)
      {
        goto LABEL_71;
      }

LABEL_186:
      v18 = 0;
      goto LABEL_71;
    }

    if (v6)
    {
      v6 = 0;
    }

    v17 = v94;
    if (v94)
    {
      v17 = 0;
    }

    v94 = v17;
LABEL_183:
    v5 += 24;
  }

  while (v5 != v91);
  v5 = __p;
  v85 = v87;
  if (!__p)
  {
    return v85 & 1;
  }

LABEL_199:
  v110 = v5;
  if (v112 > v5 || &v113 <= v5)
  {
    operator delete(v5);
  }

  return v85 & 1;
}

uint64_t TCFBase<TLine>::Allocate()
{
  if (TCFBase<TLine>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TLine>::GetTypeID(void)::once, 0, TCFBase<TLine>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return _CFRuntimeCreateInstance();
}

uint64_t *std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CTRun * const*>,std::__wrap_iter<CTRun * const*>>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 3)
  {
    v12 = result[1];
    v13 = v12 - v9;
    if (a4 <= (v12 - v9) >> 3)
    {
      v19 = a3 - __src;
      if (a3 != __src)
      {
        result = memmove(*result, __src, v19);
      }

      i = &v9[v19];
    }

    else
    {
      if (v12 != v9)
      {
        result = memmove(*result, __src, v12 - v9);
        v12 = v7[1];
      }

      v14 = v6 + v13;
      v15 = v12;
      if (v6 + v13 != a3)
      {
        v15 = v12;
        v16 = v12;
        do
        {
          v17 = *v14;
          v14 += 8;
          *v16 = v17;
          v16 += 8;
          v15 += 8;
        }

        while (v14 != a3);
      }

      i = v15;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      v10 = (result + 6);
      if (result + 3 <= v9 && v10 > v9)
      {
        if (v8 == *v10)
        {
          *v10 = v9;
        }
      }

      else
      {
        operator delete(v9);
      }

      v8 = 0;
      *v7 = 0;
      v7[1] = 0;
      v7[2] = 0;
    }

    if (a4 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v20 = v8 >> 2;
    if (v8 >> 2 <= a4)
    {
      v20 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF8)
    {
      v21 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v20;
    }

    result = std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::__vallocate[abi:fn200100](v7, v21);
    for (i = v7[1]; v6 != a3; i += 8)
    {
      v22 = *v6++;
      *i = v22;
    }
  }

  v7[1] = i;
  return result;
}

uint64_t TLine::operator=(uint64_t a1, uint64_t a2)
{
  v18[4] = *MEMORY[0x1E69E9840];
  if (*(a2 + 154))
  {
    *(a1 + 72) = *(a2 + 72);
    v5 = *a2;
    v4 = *(a2 + 8);
    if (v4)
    {
      atomic_fetch_add_explicit((v4 + 8), 1uLL, memory_order_relaxed);
    }

    v6 = *(a1 + 8);
    *a1 = v5;
    *(a1 + 8) = v4;
    if (v6)
    {
      std::__shared_weak_count::__release_shared[abi:fn200100](v6);
    }

    *(a1 + 104) = *(a2 + 104);
    *(a1 + 120) = *(a2 + 120);
    *(a1 + 136) = *(a2 + 136);
    *(a1 + 144) = *(a2 + 144);
    *(a1 + 152) = *(a2 + 152);
    TCFRef<__CTFont const*>::Retain((a1 + 168), atomic_load_explicit((a2 + 168), memory_order_acquire));
    v7 = *(a1 + 154);
    *(a1 + 154) = *(a2 + 154);
    *(a2 + 154) = v7;
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v17 = 0;
    memset(v18, 170, 24);
    v15 = 0;
    v16 = 0;
    v18[3] = v18;
    if (v9 != v8)
    {
      std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::__vallocate[abi:fn200100](&v15, v9 - v8);
      v10 = v16;
      do
      {
        v11 = *v8++;
        *v10 = v11;
        v10 += 8;
      }

      while (v8 != v9);
      v16 = v10;
    }

    std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CTRun * const*>,std::__wrap_iter<CTRun * const*>>((a1 + 16), *(a2 + 16), *(a2 + 24), (*(a2 + 24) - *(a2 + 16)) >> 3);
    std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CTRun * const*>,std::__wrap_iter<CTRun * const*>>((a2 + 16), v15, v16, (v16 - v15) >> 3);
    std::vector<std::tuple<unsigned short,unsigned short,unsigned short>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](&v15);
    v12 = *(a1 + 88);
    *(a1 + 88) = *(a2 + 88);
    *(a2 + 88) = v12;
    v13 = *(a1 + 96);
    *(a1 + 96) = *(a2 + 96);
    *(a2 + 96) = v13;
  }

  else
  {
    TLine::operator=(a1, a2);
  }

  return a1;
}

void TTypesetter::FillLine(TTypesetter *this, TLine *a2, double a3, double a4)
{
  TLine::operator=(a2, this);
  if (*(a2 + 76))
  {
    v8 = this;
    v9 = *(this + 216);
    v10 = *(this + 29);
    v11 = this + 240;
    v12 = *(this + 65);
    v13 = *(this + 264);
    v14 = *(this + 257);
    v15 = 0;
    TTypesetter::FinishLineFill(&v8, a2, a3, a4);
  }
}

void std::vector<std::tuple<unsigned short,unsigned short,unsigned short>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    v3 = (a1 + 48);
    if (a1 + 24 <= v2)
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
      if (*(a1 + 16) == *(a1 + 48))
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

void ExternalizeLine(atomic_ullong *a1)
{
  if (!atomic_load_explicit(a1, memory_order_acquire))
  {
    goto LABEL_26;
  }

  v2 = *(atomic_load_explicit(a1, memory_order_acquire) + 40);
  v3 = *(v2 + 16);
  v4 = (*(v2 + 24) - v3) >> 3;
  if (v4 >= 1)
  {
    v5 = (*(v2 + 24) - v3) >> 3;
    do
    {
      v6 = *v3++;
      *(*(v6 + 48) + 272) = v2;
      --v5;
    }

    while (v5);
  }

  if ((*(v2 + 154) & 8) == 0)
  {
LABEL_24:
    if ((*(v2 + 154) & 0x20) != 0)
    {
      TLine::DoGlyphFixups(v2);
    }

LABEL_26:
    atomic_exchange(a1, 0);
    return;
  }

  v7 = *(v2 + 72);
  v8 = *(v2 + 88);
  if (v8)
  {
LABEL_7:
    if (*(v8 + 224))
    {
      v9 = *(v8 + 208) - 1;
    }

    else
    {
      v9 = 0;
    }

    v12 = *(v8 + 216);
    v13 = *(v8 + 200);
    if (*(*(v12 + 16) + 2 * v13 + 2 * v9) == -1 && *(*(v12 + 48) + 8 * v13 + 8 * v9) == v7)
    {
      *(v8 + 264) = v9;
    }

LABEL_18:
    v14 = v4 - 1;
    if (v4 >= 1)
    {
      while (1)
      {
        v15 = *(v2 + 16);
        if (v14 >= (*(v2 + 24) - v15) >> 3)
        {
          goto LABEL_27;
        }

        v16 = *(*(v15 + 8 * v14) + 48);
        if (v16 != v8 && !TRun::GetNonDeletedGlyphCount(v16))
        {
          TLine::DeleteRun(v2, v14);
        }

        v17 = v14-- + 1;
        if (v17 <= 1)
        {
          goto LABEL_24;
        }
      }
    }

    goto LABEL_24;
  }

  RunWithCharIndex = TLine::FindRunWithCharIndex(v2, *(v2 + 72), 1);
  if (RunWithCharIndex >= v4)
  {
    v8 = 0;
    goto LABEL_18;
  }

  v11 = *(v2 + 16);
  if (RunWithCharIndex < (*(v2 + 24) - v11) >> 3)
  {
    v8 = *(*(v11 + 8 * RunWithCharIndex) + 48);
    if (!v8)
    {
      goto LABEL_18;
    }

    goto LABEL_7;
  }

LABEL_27:
  __break(1u);
}

uint64_t TCFBase<TRun>::ClassDestruct(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v2(a1);
  }

  v3 = ***(a1 + 40);

  return v3();
}

uint64_t *std::unique_ptr<TRun::RareData>::reset[abi:fn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    v3 = *(v2 + 56);
    if (v3)
    {
      *(v2 + 64) = v3;
      operator delete(v3);
    }

    JUMPOUT(0x1865F22D0);
  }

  return result;
}

void TStorageRange::~TStorageRange(id *this)
{
  v2 = this[6];
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fn200100](v2);
  }
}

uint64_t TFont::IterateShapingGlyphs(uint64_t result, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v7 = 328;
  if (a4)
  {
    v7 = 320;
  }

  explicit = atomic_load_explicit((result + v7), memory_order_acquire);
  if (explicit == -1)
  {
    if (a3 >= 1)
    {
      for (i = 0; i != a3; ++i)
      {
        v15 = i;
        result = std::__function::__value_func<void ()(long)>::operator()[abi:fn200100](a5);
      }
    }
  }

  else if (a3 >= 1)
  {
    for (j = 0; a3 != j; ++j)
    {
      if ((*(explicit + (*(a2 + 2 * j) >> 3)) >> (*(a2 + 2 * j) & 7)))
      {
        v15 = j;
        v11 = *(a5 + 24);
        if (!v11)
        {
          v13 = std::__throw_bad_function_call[abi:fn200100]();
          return std::__function::__func<TASCIIDataCache::InitProps(void)::$_0,std::allocator<TASCIIDataCache::InitProps(void)::$_0>,void ()(long)>::operator()(v13, v14);
        }

        result = (*(*v11 + 48))(v11, &v15);
      }
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(long)>::~__value_func[abi:fn200100](uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2 == a1)
  {
    (*(*v2 + 32))(v2);
  }

  else if (v2)
  {
    (*(*v2 + 40))(v2);
  }

  return a1;
}

void TCharStreamCFAttrString::~TCharStreamCFAttrString(id *this)
{
  *this = &unk_1EF259270;
  v2 = this + 5;

  *this = &unk_1EF259208;
}

{
  TCharStreamCFAttrString::~TCharStreamCFAttrString(this);

  JUMPOUT(0x1865F22D0);
}

uint64_t OTL::BASE::HasScriptSpecificMetrics(OTL::BASE *this)
{
  v29 = *MEMORY[0x1E69E9840];
  v1 = *this;
  if (*this)
  {
    v2 = 0;
    v28 = 1919905134;
    v3 = *(this + 1);
    v4 = v1 + (bswap32(*(v1 + 4)) >> 16);
    if (v4 + 4 > v3 || *(v1 + 4) == 0)
    {
      v4 = 0;
    }

    v6 = v1 + (bswap32(*(v1 + 6)) >> 16);
    v7 = v6 + 4 > v3 || *(v1 + 6) == 0;
    qmemcpy(v27, "gnahbfcilfcirfcitfcioediptdihtam", sizeof(v27));
    if (v7)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    v26[0] = v4;
    v26[1] = v8;
    do
    {
      v9 = v26[v2];
      if (v9)
      {
        v10 = *v9;
        v11 = v9 + __rev16(v10);
        v12 = v10 ? v11 : 0;
        v13 = (v12 + 2);
        if (v1 <= v12 && v13 <= v3)
        {
          v15 = *v12;
          v16 = __rev16(v15);
          v17 = &v13[v16];
          v18 = (v12 + 6) <= v3 ? (v3 - v13) >> 2 : 0;
          v19 = v17 <= v3 && v17 >= v13;
          v20 = v19 || v18 == v16;
          if (v20 && v15 != 0)
          {
            v22 = &v12[4 * v16 + 2];
            do
            {
              v23 = 0;
              v24 = bswap32(*v13);
              while (*(v27 + v23) != v24)
              {
                v23 += 4;
                if (v23 == 36)
                {
                  return 1;
                }
              }

              ++v13;
            }

            while (v13 != v22);
          }
        }
      }

      ++v2;
    }

    while (v2 != 2);
  }

  return 0;
}

uint64_t OTL::BASE::BASE(uint64_t a1, uint64_t a2, unint64_t a3)
{
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = 0u;
  v4 = (a1 + 16);
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  if (a2)
  {
    if (a2 + 8 > a3 || *a2 != 256)
    {
      goto LABEL_9;
    }

    if (!*(a2 + 2))
    {
      return a1;
    }

    if (a2 + 12 > a3)
    {
LABEL_9:
      *a1 = 0;
      return a1;
    }

    v5 = *(a2 + 8);
    if (v5)
    {
      ItemVariationStore::Initialize(v4, a2 + bswap32(v5), a3);
    }
  }

  return a1;
}

uint64_t TTenuousComponentFont::GetScriptAnalysisValue(TTenuousComponentFont *this)
{
  if (*(this + 714))
  {
    return 2;
  }

  else
  {
    return TBaseFont::GetScriptAnalysisValue(this);
  }
}

char *CheckForUnboundedLayout(BOOL)::$_0::__invoke()
{
  result = getenv("CTDisallowUnboundedLayout");
  byte_1ED5677F1 = result != 0;
  return result;
}

uint64_t TCFBase<TLine>::CreateTypeID()
{
  {
    TCFBase<TLine>::CreateTypeID(void)::runtimeClass = 0;
    *algn_1ED567198 = "CTLine";
    qword_1ED5671A0 = 0;
    unk_1ED5671A8 = 0;
    qword_1ED5671B0 = TCFBase<TLine>::ClassDestruct;
    qword_1ED5671B8 = TCFBase<TLine>::ClassEqual;
    qword_1ED5671C0 = TCFBase<TLine>::ClassHash;
    unk_1ED5671C8 = 0;
    qword_1ED5671D0 = TCFBase<TLine>::ClassDebug;
    unk_1ED5671D8 = 0;
    qword_1ED5671E0 = 0;
    unk_1ED5671E8 = 0;
  }

  result = _CFRuntimeRegisterClass();
  TCFBase<TLine>::fTypeID = result;
  return result;
}

double CTFontGetTransformedAdvancesForGlyphsAndStyle(uint64_t a1, int a2, unsigned int a3, double *a4, _WORD *a5, uint64_t a6, unint64_t a7)
{
  v23 = *MEMORY[0x1E69E9840];
  v7 = 0.0;
  if (a1 && a5)
  {
    v10 = *&a6;
    if (a4 || a7 != 1)
    {
      *&v16 = 0xAAAAAAAAAAAAAAAALL;
      *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v21[28] = v16;
      v21[29] = v16;
      v21[26] = v16;
      v21[27] = v16;
      v21[24] = v16;
      v21[25] = v16;
      v21[22] = v16;
      v21[23] = v16;
      v21[20] = v16;
      v21[21] = v16;
      v21[18] = v16;
      v21[19] = v16;
      v21[16] = v16;
      v21[17] = v16;
      v21[15] = v16;
      v21[14] = v16;
      v21[13] = v16;
      v21[12] = v16;
      v21[11] = v16;
      v21[10] = v16;
      v21[9] = v16;
      v21[8] = v16;
      v21[7] = v16;
      v21[6] = v16;
      v21[4] = v16;
      v21[5] = v16;
      v21[2] = v16;
      v21[3] = v16;
      v21[0] = v16;
      v21[1] = v16;
      memset(v20, 0, sizeof(v20));
      v22 = v21;
      if (*&a6 == 0.0)
      {
        std::vector<CGSize,TInlineBufferAllocator<CGSize,30ul>>::resize(v20, a7);
        v10 = v20[0];
      }

      TFont::GetAdvancesForGlyphs(*(a1 + 40), a5, *&v10, 2, a7, a2, a3 | 0x100000000, a4);
      v7 = v17;
      v19 = v20;
      std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v19);
    }

    else
    {
      v15 = *(a1 + 40);
      LOWORD(v19) = *a5;
      v20[0] = NAN;
      TFont::GetUnsummedAdvancesForGlyphs(v15, &v19, v20, 1, 1, a2, a3 | 0x100000000);
      v7 = v20[0];
      if (v10 != 0.0)
      {
        **&v10 = *&v20[0];
        *(*&v10 + 8) = 0;
      }
    }
  }

  return v7;
}

uint64_t TSplicedFont::GetUnscaledTrackAmount(TSplicedFont *this, const __CFDictionary *a2, __n128 a3)
{
  v3 = a3.n128_u64[0];
  v4 = *(*(this + 76) + 40);
  if ((*(v4 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(*(*(this + 76) + 40), 0, 0.0);
  }

  v5 = *(*atomic_load_explicit((v4 + 32), memory_order_acquire) + 560);
  a3.n128_u64[0] = v3;

  return v5(a3);
}

size_t TSplicedFont::InitGlyphCount(TSplicedFont *this, CGFontRef font)
{
  if ((*(this + 632) & 1) == 0)
  {
    explicit = atomic_load_explicit(this + 75, memory_order_acquire);
    if (explicit)
    {
      Value = CFDictionaryGetValue(explicit, @"FontMetrics");
      valuePtr = 0;
      if (Value)
      {
        v6 = CFDictionaryGetValue(Value, @"numGlyphs");
        if (v6)
        {
          v7 = v6;
          v8 = CFGetTypeID(v6);
          if (v8 == CFNumberGetTypeID() || v8 == CFBooleanGetTypeID())
          {
            CFNumberGetValue(v7, kCFNumberIntType, &valuePtr);
            LODWORD(result) = valuePtr;
            return result;
          }

          if (v8 == CFStringGetTypeID())
          {
            LODWORD(result) = CFStringGetIntValue(v7);
            return result;
          }
        }
      }
    }
  }

  if (!font)
  {
    return 0;
  }

  result = CGFontGetNumberOfGlyphs(font);
  atomic_store(result, this + 25);
  return result;
}

uint64_t TBaseFont::IsMicrosoftKorean(TBaseFont *this)
{
  if ((*(this + 46) & 0x80) == 0)
  {
    TBaseFont::DetermineFontFlags(this, 0x80u);
  }

  return (*(this + 45) >> 7) & 1;
}

uint64_t FirstMappedOf(TBaseFont **this, const unsigned __int16 (*a2)[2])
{
  v4 = 0;
  while (1)
  {
    v7 = (*a2)[v4];
    if (v7)
    {
      v6 = 0;
      TcmapTable::Map(this, &v7, &v6, 1, 1);
      result = v6;
      if (v6)
      {
        break;
      }
    }

    if (++v4 == 2)
    {
      return 0;
    }
  }

  return result;
}

uint64_t TCharStreamIterator::GetFullChar(TCharStreamIterator *this, uint64_t *a2, CFRange *a3)
{
  Char = TCharStreamIterator::GetChar(this, *a2);
  v7 = Char;
  if ((Char & 0xF800) != 0xD800)
  {
    goto LABEL_13;
  }

  if ((Char & 0xDC00) != 0xDC00)
  {
    if ((Char & 0xDC00) == 0xD800)
    {
      v8 = *a2 + 1;
      if (v8 < *(*this + 16))
      {
        v9 = TCharStreamIterator::GetChar(this, *a2 + 1);
        if ((v9 & 0xFC00) == 0xDC00)
        {
          v7 = (v9 + (v7 << 10) - 56613888);
          if (a3)
          {
            a3->location = *a2;
            a3->length = 2;
          }

          *a2 = v8;
          return v7;
        }
      }
    }

    goto LABEL_13;
  }

  v10 = *a2;
  if (*a2 <= *(*this + 8) || (v11 = v10 - 1, v12 = TCharStreamIterator::GetChar(this, v10 - 1), (v12 & 0xFC00) != 0xD800))
  {
LABEL_13:
    if (a3)
    {
      a3->location = *a2;
      a3->length = 1;
    }

    return v7;
  }

  v7 = (v7 + (v12 << 10) - 56613888);
  if (a3)
  {
    a3->location = v11;
    a3->length = 2;
  }

  return v7;
}

uint64_t ScriptCodeForLongCharacter(unsigned int a1)
{
  Script = uscript_getScript();
  result = 54;
  if (Script > 21)
  {
    if ((Script - 102) < 2)
    {
      return 0;
    }

    if (Script != 22)
    {
      return Script;
    }
  }

  else
  {
    if (Script < 2)
    {
      if (a1 >= 0x1D000)
      {
        if (a1 < 0x1D100)
        {
          return 209;
        }

        if (a1 < 0x1D200)
        {
          return 210;
        }
      }

      return 0;
    }

    if (Script != 20)
    {
      return Script;
    }
  }

  return result;
}

uint64_t OTL::Coverage::SearchFmt2Linear(OTL::Coverage *this, unsigned int a2)
{
  v2 = *this;
  v3 = *(this + 1);
  v4 = *this + 4;
  v5 = __rev16(*(*this + 2));
  v6 = v4 + 6 * v5;
  if (v6 >= v4 && v6 <= v3)
  {
    v10 = 6 * v5;
    if (*(*this + 2))
    {
      goto LABEL_11;
    }

    return 0;
  }

  if (v2 + 10 > v3)
  {
    LODWORD(v8) = 0;
  }

  else
  {
    v8 = (v3 - v4) / 6;
  }

  v9 = bswap32(v8) >> 16;
  v10 = 6 * v8;
  if (!v9)
  {
    return 0;
  }

LABEL_11:
  for (i = (v2 + 8); ; i += 3)
  {
    if (a2 <= bswap32(*(i - 1)) >> 16)
    {
      v12 = bswap32(*(i - 2)) >> 16;
      if (v12 <= a2)
      {
        break;
      }
    }

    v10 -= 6;
    if (!v10)
    {
      return 0;
    }
  }

  return a2 - v12 + (bswap32(*i) >> 16) + 1;
}

uint64_t OTL::GPOS::ApplyLookupAt(OTL::GPOS *this, const OTL::Lookup *a2, int a3, TGlyphIterator *a4, unint64_t a5)
{
  if (a5 <= 0x3E)
  {
    v9 = ((*(a2 + 26) - *(a2 + 24)) >> 6);
    v10 = *(a4 + 6);
    v28[0] = *a4;
    v28[1] = v10;
    v11 = TRunGlue::TGlyph::glyphID(v28);
    if (v9)
    {
      v12 = v11;
      v13 = 0;
      v14 = 0;
      v15 = *a4;
      v16 = v9 << 6;
      do
      {
        v17 = *(a2 + 12);
        if (v14 >= (*(a2 + 13) - v17) >> 6)
        {
          break;
        }

        v18 = v17 + v13;
        if ((*(v15 + 200) & *(v17 + v13 + 48)) != 0)
        {
          v19 = v17 + v13;
          if ((*(v15 + 208) & *(v17 + v13 + 56)) != 0)
          {
            v20 = *(v19 + 24);
            v21 = *(v19 + 32);
            v22 = v19 + (v21 >> 1);
            if (v21)
            {
              v20 = *(*(v22 + 8) + v20);
            }

            v23 = v20(v22 + 8, v12);
            if (v23)
            {
              v24 = *(a2 + 12);
              v25 = v14 >= (*(a2 + 13) - v24) >> 6 ? 0 : *(v24 + v13);
              if (OTL::GPOS::ApplyLookupSubtable(this, a2, a3, v25, a4, v18 + 8, v23, a5 + 1))
              {
                return 1;
              }
            }
          }
        }

        ++v14;
        v13 += 64;
      }

      while (v16 != v13);
    }
  }

  return 0;
}

uint64_t OTL::GPOS::ApplyPairPos(void *a1, unsigned __int16 *a2, TGlyphIterator *this, unsigned int a4)
{
  v4 = a1[5];
  if (a1[4] > a2 || a2 + 4 > v4)
  {
    return 0;
  }

  v10 = *(this + 6);
  if (!TGlyphIterator::Next(this, 1))
  {
    goto LABEL_61;
  }

  v11 = *(this + 6);
  v54 = *this;
  v55 = v11;
  v52 = v11;
  v12 = TRunGlue::TGlyph::glyphID(&v54);
  v13 = __rev16(a2[2]);
  v14 = a2[3];
  v53 = __rev16(v14);
  v15 = bswap32(*a2) >> 16;
  if (v15 == 2)
  {
    if (a2 + 8 > v4)
    {
      goto LABEL_61;
    }

    v29 = (a2 + (bswap32(a2[4]) >> 16));
    if (v29 + 1 > v4)
    {
      goto LABEL_61;
    }

    v30 = bswap32(*v29) >> 16;
    if (v30 == 2)
    {
      v31 = 6 * (bswap32(v29[1]) >> 16) + 4;
    }

    else
    {
      v31 = v30 == 1 ? 2 * (bswap32(v29[2]) >> 16) + 6 : 0;
    }

    v32 = v29 + v31;
    if (v32 < v29)
    {
      goto LABEL_61;
    }

    if (v32 > v4)
    {
      goto LABEL_61;
    }

    v33 = (a2 + (bswap32(a2[5]) >> 16));
    if (v33 + 1 > v4)
    {
      goto LABEL_61;
    }

    v34 = bswap32(*v33) >> 16;
    if (v34 == 2)
    {
      v35 = 6 * (bswap32(v33[1]) >> 16) + 4;
    }

    else
    {
      v35 = v34 == 1 ? 2 * (bswap32(v33[2]) >> 16) + 6 : 0;
    }

    v36 = v33 + v35;
    if (v36 < v33 || v36 > v4)
    {
      goto LABEL_61;
    }

    v51 = a2[2];
    v54 = *this;
    v55 = v10;
    v37 = TRunGlue::TGlyph::glyphID(&v54);
    v38 = OTL::ClassDefTable::ClassOf(v29, v37);
    v39 = OTL::ClassDefTable::ClassOf(v33, v12);
    v27 = PairPosFormat2::ValuePair(a2, v38, v39, v4);
    v26 = a2;
  }

  else
  {
    v16 = v15 == 1;
    v17 = a2 + 5;
    if (!v16 || v17 > v4)
    {
      goto LABEL_61;
    }

    v19 = bswap32(a2[4]) >> 16;
    v20 = __CFADD__(v17, 2 * v19);
    v21 = &v17[v19] > v4 || v20;
    v22 = (v4 - v17) >> 1;
    if (a2 + 6 > v4)
    {
      v22 = 0;
    }

    v23 = v22 == v19 ? 0 : v21;
    if (v19 < a4)
    {
      goto LABEL_61;
    }

    if (v23)
    {
      goto LABEL_61;
    }

    v51 = a2[2];
    v24 = PairPosFormat1::NthPairSet(a2, a4 - 1, v4);
    if (!v24)
    {
      goto LABEL_61;
    }

    v26 = v24;
    v27 = PairSet::ValuePair(v24, v12, v13, v53, v4, v25);
  }

  if (!v27)
  {
LABEL_61:
    result = 0;
    *(this + 6) = v10;
    return result;
  }

  v28.i32[0] = v51;
  v40 = vcnt_s8(v28);
  v40.i16[0] = vaddlv_u8(v40);
  v41 = v40.u32[0];
  v40.i32[0] = v14;
  v42 = vcnt_s8(v40);
  v42.i16[0] = vaddlv_u8(v42);
  v43 = (v42.i32[0] + v41);
  if (v27 < a2 || ((v44 = &v27[v43], v44 >= v27) ? (v45 = v44 > v4) : (v45 = 1), v45))
  {
    v46 = v27 + 1 <= v4 && v27 >= a2;
    v47 = (v4 - v27) >> 1;
    if (!v46)
    {
      v47 = 0;
    }

    if (v47 != v43)
    {
      return 0;
    }
  }

  if (v51)
  {
    v48 = a1[2];
    v54 = v27;
    LODWORD(v55) = v13;
    v56 = v26;
    v57 = v48;
    v58 = a1;
    ValueRecord::operator()(&v54, *this, v10);
  }

  if (v14)
  {
    v49 = a1[2];
    v54 = &v27[v41];
    LODWORD(v55) = v53;
    v56 = v26;
    v57 = v49;
    v58 = a1;
    ValueRecord::operator()(&v54, *this, v52);
  }

  else
  {
    *(this + 6) = v10;
  }

  return 1;
}

uint64_t OTL::GPOS::ApplyLookupSubtable(void *a1, uint64_t *a2, int a3, unsigned __int16 *a4, TGlyphIterator *this, uint64_t a6, unsigned int a7, unint64_t a8)
{
  if (a3 <= 4)
  {
    if (a3 > 2)
    {
      if (a3 == 3)
      {
        if (*a4 == 256)
        {
          return OTL::GPOS::ApplyCursivePos(a1, a4, this, a6, a7, HIBYTE(*(*a2 + 2)) & 1);
        }
      }

      else if (*a4 == 256)
      {
        return OTL::GPOS::ApplyMarkBasePos(a1, a4, this, a7);
      }
    }

    else
    {
      if (a3 == 1)
      {
        return OTL::GPOS::ApplySinglePos(a1, a4, this, a7);
      }

      if (a3 == 2)
      {
        return OTL::GPOS::ApplyPairPos(a1, a4, this, a7);
      }
    }

    return 0;
  }

  if (a3 <= 6)
  {
    if (a3 == 5)
    {
      if (*a4 == 256)
      {
        return OTL::GPOS::ApplyMarkLigPos(a1, a4, this, a7);
      }
    }

    else if (*a4 == 256)
    {
      return OTL::GPOS::ApplyMarkMarkPos(a1, *a2, a4, this, a7);
    }

    return 0;
  }

  if (a3 == 7)
  {
    v10 = bswap32(*a4) >> 16;
    switch(v10)
    {
      case 3u:
        return OTL::GPOS::ApplyContextPosFormat3(a1, a4, this, a8);
      case 2u:
        return OTL::GPOS::ApplyContextPosFormat2(a1, a4, this, a8);
      case 1u:
        return OTL::GPOS::ApplyContextPosFormat1(a1, a4, this, a7, a8);
      default:
        return 0;
    }
  }

  else
  {
    if (a3 != 8)
    {
      return 0;
    }

    v9 = bswap32(*a4) >> 16;
    switch(v9)
    {
      case 3u:
        return OTL::GPOS::ApplyChainContextPosFormat3(a1, a4, this, a8);
      case 2u:
        return OTL::GPOS::ApplyChainContextPosFormat2(a1, a4, this, a8);
      case 1u:
        return OTL::GPOS::ApplyChainContextPosFormat1(a1, a4, this, a7, a8);
      default:
        return 0;
    }
  }
}

uint64_t TBaseFont::IsLastResort(TBaseFont *this)
{
  if ((*(this + 46) & 2) == 0)
  {
    TBaseFont::DetermineFontFlags(this, 2u);
  }

  return (*(this + 45) >> 1) & 1;
}

uint64_t CTLineGetStringIndexOfTabOverflow(uint64_t result, const TLine *a2, double a3)
{
  if (result)
  {
    return TTypesetter::GetTabOverflowIndex(*(result + 40), a2, a3);
  }

  return result;
}

uint64_t TTypesetter::GetTabOverflowIndex(TTypesetter *this, const TLine *a2, double a3)
{
  v12 = *MEMORY[0x1E69E9840];
  result = -1;
  v9 = -1;
  if ((*(this + 76) & 2) != 0)
  {
    v5 = *this;
    v7[0] = this;
    v7[1] = v5;
    v7[2] = 0;
    v7[3] = 0;
    v8[0] = 0;
    *(v8 + 6) = 0;
    v8[2] = &v9;
    v11 = 0;
    TTypesetter::FindGraphicalBreak(v7, a2, v10, &v6, 1.79769313e308, a3);
    std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](v10);
    return v9;
  }

  return result;
}

void TLine::DrawGlyphs(TLine *this, CGContextRef c)
{
  if ((*(this + 77) & 2) != 0)
  {

    TLine::DrawTransformedGlyphs(this, c);
  }

  else
  {
    TextPosition = CGContextGetTextPosition(c);
    x = TextPosition.x;
    TLine::GetLeftHangersGlyphCountAndWidth(this, 0);
    if (v6 != 0.0)
    {
      x = TextPosition.x - v6;
    }

    CGContextSetTextPosition(c, x, TextPosition.y);
    TLine::DrawBackground(this, c);
    v7 = (*(this + 3) - *(this + 2)) >> 3;
    if (v7 >= 1)
    {
      v8 = 0;
      v9 = 0;
      for (i = 0; i != v7; ++i)
      {
        v11 = *(this + 2);
        if (i >= (*(this + 3) - v11) >> 3)
        {
          __break(1u);
          return;
        }

        v12 = *(*(v11 + 8 * i) + 40);
        (*(*v12 + 24))(v12, c, 0, *(v12 + 208));
        v8 |= (*(v12 + 177) & 4) >> 2;
        v9 |= (*(v12 + 177) & 0x10) >> 4;
      }

      if (v8)
      {
        CGContextSetTextPosition(c, x, TextPosition.y);
        TLine::DrawUnderlines(this, c);
      }

      if (v9)
      {
        CGContextSetTextPosition(c, x, TextPosition.y);

        TLine::DrawStrikethroughs(this, c);
      }
    }
  }
}

void CTLineDraw(CTLineRef line, CGContextRef context)
{
  if (line)
  {
    if (context)
    {
      TLine::DrawGlyphs(*(line + 5), context);
    }
  }
}

void TRun::DrawGlyphs(TRun *this, CGContextRef c, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  v63[1] = *MEMORY[0x1E69E9840];
  TextPosition = CGContextGetTextPosition(c);
  x = TextPosition.x;
  y = TextPosition.y;
  if (!location)
  {
    v10 = *(this + 39);
    if (!v10)
    {
      v10 = MEMORY[0x1E695F060];
    }

    x = TextPosition.x + *v10;
    y = TextPosition.y + v10[1];
    if (*(this + 26) >= 1)
    {
      if ((*(this + 225) & 0x10) != 0)
      {
        [*(this + 27) originAtIndex:*(this + 25)];
      }

      else
      {
        v11 = *MEMORY[0x1E695EFF8];
        v12 = *(MEMORY[0x1E695EFF8] + 8);
      }

      x = x + v11;
      y = y + v12;
    }
  }

  v13 = *(this + 20);
  if (v13)
  {
    v14 = *(v13 + 48);
    if (!location)
    {
      goto LABEL_14;
    }

LABEL_13:
    if (v14 == 0.0)
    {
      goto LABEL_15;
    }

    goto LABEL_14;
  }

  v14 = 0.0;
  if (location)
  {
    goto LABEL_13;
  }

LABEL_14:
  CGContextSetTextPosition(c, x, y + v14);
LABEL_15:
  v64.location = location;
  v64.length = length;
  TRun::DrawBackground(this, c, v64, 0, 0);
  v15 = *(this + 27);
  v57 = *(this + 25);
  v58 = v15[2];
  memset(v62, 170, sizeof(v62));
  __dst = 0;
  v60 = 0;
  v16 = 16 * length;
  v61 = 0;
  v63[0] = v62;
  if (length)
  {
    std::vector<CGSize,TInlineBufferAllocator<CGSize,64ul>>::__vallocate[abi:fn200100](&__dst, length);
    v17 = v60;
    bzero(v60, 16 * length);
    v18 = &v17[16 * length];
    v60 = v18;
    v15 = *(this + 27);
  }

  else
  {
    v18 = 0;
  }

  v19 = v15[4];
  if (v19)
  {
    v20 = *(this + 25);
LABEL_20:
    v21 = (v19 + 16 * v20 + 16 * location);
    v22 = v61;
    v23 = __dst;
    if (length <= (v61 - __dst) >> 4)
    {
      v24 = v18 - __dst;
      if (length <= (v18 - __dst) >> 4)
      {
        if (length)
        {
          memmove(__dst, v21, 16 * length);
        }

        v31 = &v23[v16];
      }

      else
      {
        if (v18 == __dst)
        {
          v25 = v18;
        }

        else
        {
          memmove(__dst, v21, v18 - __dst);
          v25 = v60;
        }

        v35 = v25;
        if (v24 != v16)
        {
          v36 = (v21 + v24);
          v37 = &v23[v16] - v18;
          v35 = v25;
          v38 = v25;
          do
          {
            v39 = *v36++;
            *v38++ = v39;
            ++v35;
            v37 -= 16;
          }

          while (v37);
        }

        v31 = v35;
      }
    }

    else
    {
      if (__dst)
      {
        v60 = __dst;
        if (v62 > __dst || v63 <= __dst)
        {
          operator delete(__dst);
        }

        else if (v61 == v63[0])
        {
          v63[0] = __dst;
        }

        v22 = 0;
        __dst = 0;
        v60 = 0;
        v61 = 0;
      }

      if (length >> 60)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v32 = v22 >> 3;
      if (v22 >> 3 <= length)
      {
        v32 = length;
      }

      if (v22 >= 0x7FFFFFFFFFFFFFF0)
      {
        v33 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v33 = v32;
      }

      std::vector<CGSize,TInlineBufferAllocator<CGSize,64ul>>::__vallocate[abi:fn200100](&__dst, v33);
      v31 = v60;
      do
      {
        v34 = *v21++;
        *v31++ = v34;
        v16 -= 16;
      }

      while (v16);
    }

    v60 = v31;
    goto LABEL_54;
  }

  v26 = v15[3];
  v20 = *(this + 25);
  if (!v26)
  {
    goto LABEL_20;
  }

  if (!length)
  {
    goto LABEL_71;
  }

  v27 = (v26 + 8 * v20 + 8 * location);
  v28 = __dst;
  v29 = 8 * length;
  do
  {
    v30 = *v27++;
    *v28 = v30;
    v28[1] = 0;
    v28 += 2;
    v29 -= 8;
  }

  while (v29);
LABEL_54:
  if ((*(this + 225) & 0x10) != 0 && length >= 1)
  {
    v40 = 0;
    v41 = 0;
    v42 = MEMORY[0x1E695EFF8];
    do
    {
      if ((*(this + 225) & 0x10) != 0)
      {
        [*(this + 27) originAtIndex:location + v41 + *(this + 25)];
        v43 = *v42;
        v44 = v42[1];
      }

      else
      {
        v43 = *v42;
        v44 = v42[1];
        v45 = *v42;
        v46 = v44;
      }

      if (v45 != v43 || v46 != v44)
      {
        v48 = __dst;
        if (v41)
        {
          v49 = (v60 - __dst) >> 4;
          if (v49 <= v41 - 1)
          {
            goto LABEL_81;
          }

          v50 = (__dst + v40);
          v51 = v46 + *(__dst + v40 - 8);
          *(v50 - 2) = v45 + *(__dst + v40 - 16);
          *(v50 - 1) = v51;
        }

        else
        {
          v49 = (v60 - __dst) >> 4;
        }

        if (v49 <= v41)
        {
LABEL_81:
          __break(1u);
        }

        v52 = &v48[v40];
        v53 = v52[1] - v46;
        *v52 = *v52 - v45;
        v52[1] = v53;
      }

      ++v41;
      v40 += 16;
    }

    while (length != v41);
  }

LABEL_71:
  explicit = atomic_load_explicit(this + 7, memory_order_acquire);
  if (explicit)
  {
    v55 = TAttributes::SetContextAttributes(this + 5, c, 0);
    CTFontDrawGlyphsWithAdvancesInternal(explicit, (v58 + 2 * v57 + 2 * location), __dst, length, c, this);
    if (v55)
    {
      CGContextRestoreGState(c);
    }

    if (v14 != 0.0)
    {
      v56 = CGContextGetTextPosition(c);
      CGContextSetTextPosition(c, v56.x, v56.y - v14);
    }
  }

  if (__dst)
  {
    v60 = __dst;
    if (v62 > __dst || v63 <= __dst)
    {
      operator delete(__dst);
    }
  }
}

void TLine::DrawBackground(TLine *this, CGContext *a2)
{
  if (atomic_load_explicit(this + 21, memory_order_acquire))
  {
    v3 = *(this + 2);
    if (*(this + 3) != v3)
    {
      v5 = *(*v3 + 40);
      if (TAttributes::SetContextAttributesForBackground((v5 + 40), a2))
      {
        TextPosition = CGContextGetTextPosition(a2);
        x = TextPosition.x;
        v8 = *(this + 15);
        TFont::GetWindowsDescent(*(atomic_load_explicit((v5 + 56), memory_order_acquire) + 40));
        if (v8 >= v9)
        {
          v9 = v8;
        }

        v10 = TextPosition.y - v9;
        v11 = *(this + 13);
        v12 = *(this + 14) + v9;
        if ((*(v5 + 177) & 8) != 0)
        {
          TLine::GetTrailingWhitespace(this, v13);
          v11 = v11 - v14;
          if ((*(this + 76) & 8) != 0)
          {
            x = TextPosition.x + v14;
          }
        }

        v16.origin.x = x;
        v16.origin.y = v10;
        v16.size.width = v11;
        v16.size.height = v12;
        CGContextFillRect(a2, v16);

        CGContextRestoreGState(a2);
      }
    }
  }
}

void TRun::DrawBackground(TRun *this, CGContextRef c, CFRange a3, const TAttributes *a4, int a5)
{
  length = a3.length;
  location = a3.location;
  if (!a4)
  {
    v10 = *(this + 34);
    if (v10 && atomic_load_explicit((v10 + 168), memory_order_acquire))
    {
      return;
    }

    a4 = (this + 40);
  }

  if (TAttributes::SetContextAttributesForBackground(a4, c))
  {
    TextPosition = CGContextGetTextPosition(c);
    x = TextPosition.x;
    y = TextPosition.y;
    if (a5)
    {
      while (!atomic_load_explicit(this + 35, memory_order_acquire))
      {
        v14 = *(this + 34);
        if (!v14)
        {
          break;
        }

        TLine::CachePositions(v14);
      }

      x = TextPosition.x + *(this + 36);
      y = TextPosition.y + *(this + 37);
    }

    v36.origin.x = (*(*this + 152))(this);
    v37 = CGRectOffset(v36, x, y);
    v15 = v37.origin.x;
    v16 = v37.origin.y;
    height = v37.size.height;
    if (length >= *(this + 26))
    {
      width = v37.size.width;
    }

    else
    {
      v34.location = 0;
      v34.length = location;
      v18 = TStorageRange::GetWidth((this + 192), v34);
      v19 = *(this + 39);
      v20 = MEMORY[0x1E695F060];
      if (!v19)
      {
        v19 = MEMORY[0x1E695F060];
      }

      v21 = v18 + *v19;
      v35.location = location;
      v35.length = length;
      v22 = TStorageRange::GetWidth((this + 192), v35);
      v23 = 0.0;
      if (!location)
      {
        v24 = *(this + 39);
        if (!v24)
        {
          v24 = v20;
        }

        v23 = *v24;
      }

      v15 = v15 + v21;
      width = v22 + v23;
    }

    *&v26 = -1;
    *(&v26 + 1) = -1;
    *&v32.c = v26;
    *&v32.tx = v26;
    *&v32.a = v26;
    CGContextGetUserSpaceToDeviceSpaceTransform(&v32, c);
    v33 = v32;
    v38.origin.x = v15;
    v38.origin.y = v16;
    v38.size.width = width;
    v38.size.height = height;
    v39 = CGRectApplyAffineTransform(v38, &v33);
    v27 = v39.origin.y;
    v28 = v39.size.height;
    v29 = floor(v39.origin.x);
    v30 = floor(CGRectGetMaxX(v39)) - v29;
    v33 = v32;
    CGAffineTransformInvert(&v31, &v33);
    v33 = v31;
    v40.origin.x = v29;
    v40.origin.y = v27;
    v40.size.width = v30;
    v40.size.height = v28;
    v41 = CGRectApplyAffineTransform(v40, &v33);
    CGContextFillRect(c, v41);
    CGContextRestoreGState(c);
  }
}