uint64_t TCharStream::GetRangeOfCharacterClusterAtIndex(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  RangeOfCharacterClusterAtIndex = CFStringGetRangeOfCharacterClusterAtIndex();
  v6 = RangeOfCharacterClusterAtIndex;
  v8 = v7;
  if (a3 <= 2 && (RangeOfCharacterClusterAtIndex & 0x8000000000000000) == 0)
  {
    Length = CFStringGetLength(a1);
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36[6] = v10;
    v36[7] = v10;
    v36[4] = v10;
    v36[5] = v10;
    v36[2] = v10;
    v36[3] = v10;
    v36[0] = v10;
    v36[1] = v10;
    theString = a1;
    v40 = 0;
    v41 = Length;
    CharactersPtr = CFStringGetCharactersPtr(a1);
    CStringPtr = 0;
    v38 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
    }

    v42 = 0;
    v43 = 0;
    v39 = CStringPtr;
    v13 = v8 + v6;
    if (v8 + v6 >= 0 && v13 < Length)
    {
      while (1)
      {
        v14 = v41;
        if (v41 <= v13)
        {
          break;
        }

        if (v38)
        {
          v15 = &v38[v40 + v13];
        }

        else
        {
          if (v39)
          {
            return v6;
          }

          v16 = v42;
          if (v43 <= v13 || v42 > v13)
          {
            v18 = v13 - 4;
            if (v13 < 4)
            {
              v18 = 0;
            }

            if (v18 + 64 < v41)
            {
              v14 = v18 + 64;
            }

            v42 = v18;
            v43 = v14;
            v44.length = v14 - v18;
            v44.location = v40 + v18;
            CFStringGetCharacters(theString, v44, v36);
            v16 = v42;
          }

          v15 = v36 + v13 - v16;
        }

        if (*v15 != 8204)
        {
          break;
        }

        v19 = v8 + 1;
        v20 = v13 + 1;
        if (v13 + 1 >= Length)
        {
          break;
        }

        v21 = CFStringGetRangeOfCharacterClusterAtIndex();
        v23 = v22;
        v24 = v41;
        if (v41 > v20)
        {
          if (v38)
          {
            v25 = v38[v40 + v20];
          }

          else if (v39)
          {
            v25 = v39[v40 + v20];
          }

          else
          {
            if (v43 <= v20 || (v26 = v42, v42 > v20))
            {
              v27 = v13 - 3;
              if (v20 < 4)
              {
                v27 = 0;
              }

              if (v27 + 64 < v41)
              {
                v24 = v27 + 64;
              }

              v42 = v27;
              v43 = v24;
              v45.length = v24 - v27;
              v45.location = v40 + v27;
              CFStringGetCharacters(theString, v45, v36);
              v26 = v42;
            }

            v25 = *(v36 + v20 - v26);
          }

          if ((v25 & 0xFC00) == 0xD800 && v23 >= 2)
          {
            v29 = v13 + 2;
            v30 = v41;
            if (v41 <= v29)
            {
              break;
            }

            if (v38)
            {
              v31 = v38[v40 + v29];
            }

            else if (v39)
            {
              v31 = v39[v40 + v29];
            }

            else
            {
              if (v43 <= v29 || (v32 = v42, v42 > v29))
              {
                v33 = v29 - 4;
                if (v29 < 4)
                {
                  v33 = 0;
                }

                if (v33 + 64 < v41)
                {
                  v30 = v33 + 64;
                }

                v42 = v33;
                v43 = v30;
                v46.length = v30 - v33;
                v46.location = v40 + v33;
                CFStringGetCharacters(theString, v46, v36);
                v32 = v42;
              }

              v31 = *(v36 + v29 - v32);
            }

            if ((v31 & 0xFC00) != 0xDC00)
            {
              break;
            }
          }
        }

        if (!CFUniCharIsMemberOf())
        {
          break;
        }

        if (v21 >= v6)
        {
          v34 = v6;
        }

        else
        {
          v34 = v21;
        }

        if (v19 + v6 <= v21 + v23)
        {
          v13 = v21 + v23;
        }

        else
        {
          v13 = v19 + v6;
        }

        v8 = v13 - v34;
        if (v13 < Length)
        {
          v6 = v34;
          if ((v13 & 0x8000000000000000) == 0)
          {
            continue;
          }
        }

        return v34;
      }
    }

    return v6;
  }

  return v6;
}

uint64_t TRunGlue::ClearSafeToBreakAfter(uint64_t this, CFRange a2)
{
  if (a2.length >= 2)
  {
    v2 = this;
    v3 = 0;
    v4 = *(this + 24);
    if (v4 <= 0)
    {
      location = a2.location;
    }

    else
    {
      location = a2.location + a2.length - 1;
    }

    if (v4 <= 0)
    {
      v6 = a2.location + a2.length;
    }

    else
    {
      v6 = a2.location - 1;
    }

    do
    {
      this = TRunGlue::FocusOnIndex(v2, location);
      v7 = location - *(v2 + 152);
      v8 = *(*(v2 + 408) + 4 * v7);
      v9 = ((v8 & 0x20) == 0) | v3;
      if (v8 & 0x20) == 0 && (v3)
      {
        this = [*(*(v2 + 144) + 216) setProps:v8 | 8u atIndex:*(*(v2 + 144) + 200) + v7];
        v9 = 1;
      }

      location -= *(v2 + 24);
      v3 = v9;
    }

    while (location != v6);
  }

  return this;
}

void TLine::InsertRun(void *a1, uint64_t a2, const TRun **a3)
{
  v5 = a1 + 2;
  v6 = (a1[2] + 8 * a2);
  v7 = a3;
  std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::insert(v5, v6, &v7);
  TLine::UpdateCachedMetricsForRun(a1, a3[5]);
}

void TFont::CopyAttribute(TFont *this@<X0>, const __CFString *key@<X2>, uint64_t a3@<X1>, atomic_ullong *a4@<X8>)
{
  *a4 = 0;
  switch(a3)
  {
    case 8:
      UnscaledTrackAmount = *(this + 3);
      goto LABEL_25;
    case 9:
      Value = atomic_load_explicit(this + 21, memory_order_acquire);
      v18 = Value;
      if (Value)
      {
        Value = CFDictionaryGetValue(Value, @"NSCTFontOpticalSizeAttribute");
      }

      v23[0] = Value;

      if (atomic_load_explicit(a4, memory_order_acquire))
      {
        return;
      }

      if (!atomic_load_explicit(this + 2, memory_order_acquire) || (*(*(atomic_load_explicit(this + 2, memory_order_acquire) + 40) + 16) & 0x8000) == 0)
      {
        UnscaledTrackAmount = *(this + 4);
LABEL_25:
        v23[0] = *&UnscaledTrackAmount;
        v15 = *MEMORY[0x1E695E480];
        v16 = kCFNumberDoubleType;
LABEL_26:
        valuePtr = CFNumberCreate(v15, v16, v23);

        v9 = valuePtr;
        goto LABEL_42;
      }

      v20 = @"auto";
LABEL_34:
      v23[0] = v20;
      goto LABEL_41;
    case 10:
    case 14:
    case 17:
    case 20:
    case 21:
    case 49:
    case 50:
    case 52:
      goto LABEL_2;
    case 11:
      UnscaledTrackAmount = TFont::GetUnscaledTrackAmount(this);
      goto LABEL_25;
    case 12:
    case 13:
      *&v12 = -1;
      *(&v12 + 1) = -1;
      v24 = v12;
      v25 = v12;
      *v23 = v12;
      TFont::GetEffectiveMatrix(this, v23);
      v9 = atomic_exchange(a4, CFDataCreate(*MEMORY[0x1E695E480], v23, 48));
      goto LABEL_42;
    case 15:
    case 16:
    case 18:
    case 23:
    case 24:
    case 25:
    case 26:
    case 27:
    case 29:
    case 30:
    case 31:
    case 32:
    case 34:
    case 35:
    case 36:
    case 37:
    case 39:
    case 40:
    case 41:
    case 43:
    case 45:
    case 46:
    case 47:
    case 48:
    case 51:
    case 53:
    case 54:
      goto LABEL_7;
    case 19:
      v22 = *(this + 51);
      if (!v22)
      {
        return;
      }

      (*(*v22 + 40))(v23);
      goto LABEL_41;
    case 22:
      if (*(this + 3))
      {
        v14 = 2;
      }

      else
      {
        v14 = 1;
      }

      goto LABEL_33;
    case 28:
      v19 = *(this + 51);
      if ((*(v19 + 184) & 0x400) == 0)
      {
        TBaseFont::DetermineFontFlags(*(this + 51), 0x400u);
      }

      v14 = (*(v19 + 180) >> 10) & 1;
      goto LABEL_33;
    case 33:
      v21 = *(this + 51);
      if (!v21)
      {
        return;
      }

      (*(*v21 + 200))(v23);
      goto LABEL_41;
    case 38:
    case 42:
      if (!*(this + 41))
      {
        TFont::InitShapingGlyphs(this);
      }

      if (a3 == 42)
      {
        v10 = *(this + 51);
        v11 = &kCTFontLangSysListAttribute;
      }

      else
      {
        if (a3 != 38)
        {
          return;
        }

        v10 = *(this + 51);
        v11 = &kCTFontShapingGlyphsAttribute;
      }

      TBaseFont::CopyAttributeInternal(v10, *v11, v23);
      goto LABEL_41;
    case 44:
      v14 = ((*(this + 3) >> 1) & 1) == 0;
LABEL_33:
      LODWORD(valuePtr) = v14;
      v20 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
      goto LABEL_34;
    case 55:
      v23[0] = ((*(this + 3) >> 6) & 7);
      v15 = *MEMORY[0x1E695E480];
      v16 = kCFNumberLongType;
      goto LABEL_26;
    default:
      if (a3 == 65 || a3 == 68)
      {
LABEL_2:
        v7 = atomic_load_explicit(this + 21, memory_order_acquire);
        v8 = v7;
        if (v7)
        {
          v7 = CFDictionaryGetValue(v7, key);
        }

        v23[0] = v7;

        v9 = v8;
      }

      else
      {
LABEL_7:
        if (atomic_load_explicit(this + 2, memory_order_acquire))
        {
          TDescriptor::CopyAttribute(*(atomic_load_explicit(this + 2, memory_order_acquire) + 40), key, v23);
        }

        else
        {
          v23[0] = 0;
        }

LABEL_41:

        v9 = v23[0];
      }

LABEL_42:

      return;
  }
}

void TBaseFont::CopyCSSWeight(atomic_ullong *this@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyAttributeInternal(this, @"CTFontCSSWeightAttribute", v14);
  *a2 = atomic_exchange(v14, 0);

  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    if ((*(*this + 712))(this))
    {
      CopyAttributeForSystemFont(atomic_load_explicit(this + 12, memory_order_acquire), @"CTFontCSSWeightAttribute", v14);

      if (atomic_load_explicit(a2, memory_order_acquire))
      {
        v16 = atomic_load_explicit(a2, memory_order_acquire);
        TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v16, @"CTFontCSSWeightAttribute");
        v4 = v16;
LABEL_27:

        return;
      }
    }

    v15 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 112))(&v15, this);
    v5 = atomic_load_explicit(&v15, memory_order_acquire);
    if (v5)
    {
      v6 = v5;
      Count = CFDictionaryGetCount(v5);

      if (Count > 0)
      {
        goto LABEL_19;
      }
    }

    else
    {
    }

    memset(v14, 170, sizeof(v14));
    (*(*this + 488))(&v13, this, 1330851634);
    OS2::OS2(v14, &v13);

    if (v14[2] >= 78)
    {
      v8 = bswap32(*(v14[1] + 2)) >> 16;
      if (v8 < 0xB)
      {
        LOWORD(v8) = 100 * v8;
      }

      v9 = v8;
      if (v8 >= 0x3E8u)
      {
        v9 = 1000;
      }

      if (v8)
      {
        v10 = v9;
      }

      else
      {
        v10 = 1;
      }

      valuePtr = v10;
      v13 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    }

LABEL_19:
    if (!atomic_load_explicit(a2, memory_order_acquire))
    {
      explicit = atomic_load_explicit(this + 30, memory_order_acquire);
      if (!explicit)
      {
        explicit = TBaseFont::CreateTraitsValues(this);
      }

      TBaseFont::CopyAttributeInternal(this, @"CTFontCSSWeightAttribute", v14);

      if (atomic_load_explicit(a2, memory_order_acquire))
      {
        goto LABEL_26;
      }

      if (explicit)
      {
        LODWORD(v13) = ClassOfWeight(*(explicit + 8));
        v14[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v13);
      }
    }

    if (!atomic_load_explicit(a2, memory_order_acquire))
    {
      LODWORD(v13) = 400;
      v14[0] = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v13);
    }

    v12 = atomic_load_explicit(a2, memory_order_acquire);
    TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v12, @"CTFontCSSWeightAttribute");

LABEL_26:
    v4 = v15;
    goto LABEL_27;
  }
}

double TAATOpbdTable::GetDefaultBounds(TAATOpbdTable *this, __int16 a2)
{
  v6 = a2;
  v3 = *(MEMORY[0x1E695F058] + 16);
  v7 = *MEMORY[0x1E695F058];
  v8 = v3;
  TFont::GetAdvancesForGlyphs(*this, &v6, &v8, 2, 1, 0, 0, 0);
  v4 = *this;
  if (!*(*this + 56))
  {
    TFont::InitStrikeMetrics(v4);
    v4 = *this;
  }

  if (!*(v4 + 56))
  {
    TFont::InitStrikeMetrics(v4);
  }

  return *&v7;
}

char *std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::insert(void *a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v29 = 0;
    v30 = 0;
    *&v31 = 0;
    v11 = ((v6 - v10) >> 3) + 1;
    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v12 = __src - v10;
    v13 = v7 - v10;
    if (v13 >> 2 > v11)
    {
      v11 = v13 >> 2;
    }

    if (v13 >= 0x7FFFFFFFFFFFFFF8)
    {
      v14 = 0x1FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v14 = v11;
    }

    v15 = v12 >> 3;
    v32 = a1 + 3;
    if (v14)
    {
      v16 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<CTRun *,3ul>>((a1 + 3), v14);
    }

    else
    {
      v16 = 0;
    }

    v17 = (v16 + 8 * v15);
    v18 = v16 + 8 * v14;
    *(&v31 + 1) = v18;
    if (v15 == v14)
    {
      if (v12 < 1)
      {
        if (v10 == v4)
        {
          v19 = 1;
        }

        else
        {
          v19 = v12 >> 2;
        }

        v37 = a1 + 3;
        v20 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<CTRun *,3ul>>((a1 + 3), v19);
        v33 = v16;
        v34 = v16 + 8 * v15;
        *(&v31 + 1) = v20 + 8 * v21;
        v22 = (v20 + 8 * (v19 >> 2));
        v35 = v34;
        v36 = v18;
        std::__split_buffer<CTRun *,TInlineBufferAllocator<CTRun *,3ul> &>::~__split_buffer(&v33);
        v17 = v22;
      }

      else
      {
        v17 = (v17 - (((v12 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
      }
    }

    *v17 = *a3;
    *&v31 = v17 + 1;
    memcpy(v17 + 1, v4, a1[1] - v4);
    v23 = *a1;
    *&v31 = v17 + a1[1] - v4 + 8;
    a1[1] = v4;
    v24 = v4 - v23;
    v25 = v17 - (v4 - v23);
    memcpy(v25, v23, v24);
    v26 = *a1;
    *a1 = v25;
    v27 = a1[2];
    *(a1 + 1) = v31;
    *&v31 = v26;
    *(&v31 + 1) = v27;
    v29 = v26;
    v30 = v26;
    std::__split_buffer<CTRun *,TInlineBufferAllocator<CTRun *,3ul> &>::~__split_buffer(&v29);
    return v17;
  }

  else if (__src == v6)
  {
    *v6 = *a3;
    a1[1] = v6 + 8;
  }

  else
  {
    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
    }

    *v4 = *a3;
  }

  return v4;
}

uint64_t std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](uint64_t a1)
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

uint64_t TAttributes::SetRareAttributes(uint64_t this, __int16 a2)
{
  v2 = *(this + 120);
  if (!v2)
  {
    operator new();
  }

  *(v2 + 66) |= a2;
  return this;
}

CFIndex TTypesetter::DecomposeLastChars(unint64_t *a1, CFIndex a2, CFIndex a3, double a4)
{
  v4 = a3;
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2 + a3;
  if (a2 + a3 >= *(a1[1] + 16) - 1)
  {
    return v4;
  }

  RunWithCharIndex = TLine::FindRunWithCharIndex(*a1, a2 + a3, 1);
  v10 = *(*a1 + 16);
  if (RunWithCharIndex >= (*(*a1 + 24) - v10) >> 3)
  {
    __break(1u);
  }

  v11 = *(*(v10 + 8 * RunWithCharIndex) + 40);
  *&v32[0] = TRun::GetGlyphIndexForCharIndex<false>(v11, v5);
  NextChar = TRun::GetNextChar(v11, v5, v32);
  v13 = *(a1[1] + 16);
  if (NextChar > v13)
  {
    return v4;
  }

  v18 = a1[1];
  v29 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v24 = 0u;
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  v16 = NextChar - v5;
  v30 = 0;
  *&v29 = v13;
  do
  {
    v14 = v4;
    if (--v16 < 1)
    {
      break;
    }

    v44 = unk_18475AEC0;
    v41[5] = unk_18475AEAC;
    memset(v34, 170, sizeof(v34));
    memset(v32, 0, sizeof(v32));
    v33 = 0;
    v35 = v34;
    BYTE8(v44) = 0;
    v39 = 0;
    memset(v41, 0, 20);
    v38 = 0u;
    v37 = 0u;
    v36 = 0u;
    v42 = 0;
    v43 = 0;
    LOBYTE(v44) = 0;
    v46 = 0;
    v47 = 0;
    v45 = 0;
    v40 = 0xFFEFFFFFFFFFFFFFLL;
    v31 = v4 + a2;
    TCharStreamIterator::GetFullChar(&v18, &v31, 0);
    v4 = v31 - a2 + 1;
    v49.location = a2;
    v49.length = v4;
    TTypesetter::FillLine(a1, v32, v49, a4, 0.0);
    v17 = *&v38;
    TLine::~TLine(v32);
  }

  while (v17 <= a4);
  return v14;
}

void TRun::TRun(TRun *this, _CTGlyphStorage *a2, CFRange a3, const TAttributes *a4)
{
  length = a3.length;
  location = a3.location;
  *this = &unk_1EF256D38;
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
  v15.location = location;
  v15.length = length;
  TStorageRange::TStorageRange((this + 192), a2, v15);
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 32) = 0;
  *(this + 33) = -1;
  *(this + 18) = *MEMORY[0x1E695F060];
  *(this + 76) = -1;
  *(this + 39) = 0;
  v8 = length - 1;
  if (length < 1)
  {
    v12 = 0;
    v14 = 0;
  }

  else
  {
    v9 = *(this + 27);
    v10 = *(this + 25);
    v11 = (v9[6] + 8 * v10);
    v12 = *v11;
    v13 = v11[v8];
    v14 = v13 - v12 + [v9 attachmentCountAtIndex:v10 + v8] + 1;
  }

  *(this + 1) = v12;
  *(this + 2) = v14;
}

uint64_t TFont::GetMaxAdvance(TFont *this)
{
  v2 = *(this + 51);
  TFont::GetScaledMatrix(this, &v4);
  return (*(*v2 + 632))(v2, &v4, *(this + 3) & 1);
}

double TStorageRange::SyncWithStorage(TStorageRange *this)
{
  [*(this + 3) sync];
  __C = NAN;
  v2 = *(this + 3);
  v3 = *(v2 + 32);
  if (v3 || (v6 = *(v2 + 24)) == 0)
  {
    v4 = (v3 + 16 * *(this + 1));
    v5 = 2;
  }

  else
  {
    v4 = (v6 + 8 * *(this + 1));
    v5 = 1;
  }

  vDSP_sveD(v4, v5, &__C, *(this + 2));
  result = __C;
  *this = __C;
  return result;
}

CGFloat TComponentFont::GetMaxAdvance(atomic_ullong *this, const CGAffineTransform *a2, int a3)
{
  MaxAdvance = TBaseFont::GetMaxAdvance(this, a2, a3);

  return TSplicedFontDict::GetMaxAdvance(this + 90, MaxAdvance, a2);
}

CGFloat TBaseFont::GetMaxAdvance(TBaseFont *this, const CGAffineTransform *a2, int a3)
{
  TBaseFont::GetInitializedGraphicsFont(this);
  if (a3)
  {
    VMetrics = CGFontGetVMetrics();
  }

  else
  {
    VMetrics = CGFontGetHMetrics();
  }

  if (VMetrics)
  {
    return a2->tx + a2->c * 0.0 + a2->a * *(VMetrics + 12);
  }

  else
  {
    return 0.0;
  }
}

CGFloat TSplicedFontDict::GetMaxAdvance(atomic_ullong *this, double a2, const CGAffineTransform *a3)
{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {
    Value = CFDictionaryGetValue(explicit, @"FontMetrics");
    if (Value)
    {
      v7 = Value;
      if (CFDictionaryGetCount(Value) >= 1)
      {
        v8 = CFDictionaryGetValue(v7, @"advanceMax");
        if (v8)
        {
          return a3->tx + a3->c * 0.0 + a3->a * CFStringGetDoubleValue(v8);
        }
      }
    }
  }

  return a2;
}

uint64_t TRun::GetPrevChar(TRun *this, uint64_t PrevGlyphIndex, uint64_t *a3)
{
  v6 = *(this + 64);
  if (v6)
  {
    while (1)
    {
      while (1)
      {
        if (v6 > 1 || (*(this + 224) & 1) != 0)
        {
          result = TRun::FindPrevGlyphIndex(this, PrevGlyphIndex, a3);
        }

        else
        {
          v7 = *a3;
          v8 = *a3 - 1;
          *a3 = v8;
          result = v7 <= 0 ? *(this + 1) - 1 : *(*(*(this + 27) + 48) + 8 * *(this + 25) + 8 * v8);
        }

        if (result != PrevGlyphIndex)
        {
          break;
        }

        v6 = *(this + 64);
      }

      if (result < *(this + 1))
      {
        break;
      }

      v10 = *(this + 27);
      v11 = *(this + 25);
      if (*(*(v10 + 16) + 2 * v11 + 2 * *a3) != -1 && (*(*(v10 + 40) + 4 * v11 + 4 * *a3) & 0x20) == 0)
      {
        break;
      }

      v6 = *(this + 64);
      PrevGlyphIndex = result;
    }
  }

  else
  {
    while (1)
    {
      if (v6 > 1 || (*(this + 224) & 1) != 0)
      {
        PrevGlyphIndex = TRun::FindPrevGlyphIndex(this, PrevGlyphIndex, a3);
      }

      else
      {
        v14 = *a3;
        v15 = *a3 - 1;
        *a3 = v15;
        PrevGlyphIndex = v14 <= 0 ? *(this + 1) - 1 : *(*(*(this + 27) + 48) + 8 * *(this + 25) + 8 * v15);
      }

      if (PrevGlyphIndex < *(this + 1))
      {
        break;
      }

      v12 = *(this + 27);
      v13 = *(this + 25);
      if (*(*(v12 + 16) + 2 * v13 + 2 * *a3) != -1 && (*(*(v12 + 40) + 4 * v13 + 4 * *a3) & 0x20) == 0)
      {
        break;
      }

      v6 = *(this + 64);
    }

    return PrevGlyphIndex;
  }

  return result;
}

void TTypesetter::FinishLineFill(uint64_t a1, uint64_t a2, double a3, double a4)
{
  TTypesetter::MakeLineConsistent(a1, a2);
  TTypesetter::ReorderRunsIfNecessary(a1, a2);
  TLine::UpdateWidth(a2, a4);
  if ((*(a2 + 152) & 2) != 0)
  {
    v9 = *(a1 + 8);
    v11[0] = a2;
    v11[1] = v9;
    TTabEngine::ApplyTabs(v11, a4, a3, v8, v10);
  }

  *(a2 + 176) = a4;
  *(a2 + 184) = 1;
}

unint64_t CTTypesetterCreateWithRunArray(const __CFArray *a1, const __CFString *a2, const void *(*a3)(const __CTRun *, const __CFString *, void *), void *a4)
{
  v8 = TCFBase<TTypesetter>::Allocate();
  if (v8)
  {
    v8[2] = 0;
    v8[3] = 0;
    v8[4] = 0;
    v8[5] = v8 + 6;
    TTypesetter::TTypesetter((v8 + 6), a1, a2, a3, a4, 0);
  }

  v11 = 0;
  v9 = atomic_exchange(&v11, 0);

  return v9;
}

unint64_t TypesetterCreateLine(const __CTTypesetter *a1, CFRange a2, double a3)
{
  if (!a1)
  {
    return 0;
  }

  location = a2.location;
  v5 = *(a1 + 5);
  v6 = *(v5[27] + 16);
  length = v6 - a2.location;
  if (a2.length)
  {
    length = a2.length;
  }

  v8 = length + a2.location;
  if (length + a2.location >= v6)
  {
    v9 = *(v5[27] + 16);
  }

  else
  {
    v9 = length + a2.location;
  }

  if (a2.location < 0 || v6 <= a2.location)
  {
    v11 = v8 > 0 && a2.location < 1;
    location = 0;
    if (v11)
    {
      v10 = v9;
    }

    else
    {
      v10 = 0;
    }
  }

  else
  {
    v10 = v9 - a2.location;
  }

  v31 = 0xAAAAAAAAAAAAAAAALL;
  TCFBase_NEW<CTLine,std::shared_ptr<TCharStream const> const&>(v5, &v30);
  v31 = atomic_exchange(&v30, 0);

  if (!atomic_load_explicit(&v31, memory_order_acquire))
  {
    v28 = 0;
    goto LABEL_43;
  }

  v32.location = location;
  v32.length = v10;
  TTypesetter::FillLine(v5, *(atomic_load_explicit(&v31, memory_order_acquire) + 40), v32, 1.79769313e308, a3);
  if (atomic_load_explicit(&v31, memory_order_acquire))
  {
    v12 = *(atomic_load_explicit(&v31, memory_order_acquire) + 40);
    v13 = *(v12 + 16);
    v14 = (*(v12 + 24) - v13) >> 3;
    if (v14 >= 1)
    {
      v15 = (*(v12 + 24) - v13) >> 3;
      do
      {
        v16 = *v13++;
        *(*(v16 + 48) + 272) = v12;
        --v15;
      }

      while (v15);
    }

    if ((*(v12 + 154) & 8) == 0)
    {
LABEL_40:
      if ((*(v12 + 154) & 0x20) != 0)
      {
        TLine::DoGlyphFixups(v12);
      }

      goto LABEL_42;
    }

    v17 = *(v12 + 72);
    v18 = *(v12 + 88);
    if (!v18)
    {
      RunWithCharIndex = TLine::FindRunWithCharIndex(v12, *(v12 + 72), 1);
      if (RunWithCharIndex >= v14)
      {
        v18 = 0;
        goto LABEL_34;
      }

      v21 = *(v12 + 16);
      if (RunWithCharIndex >= (*(v12 + 24) - v21) >> 3)
      {
LABEL_45:
        __break(1u);
        return 0;
      }

      v18 = *(*(v21 + 8 * RunWithCharIndex) + 48);
      if (!v18)
      {
        goto LABEL_34;
      }
    }

    if (*(v18 + 224))
    {
      v19 = *(v18 + 208) - 1;
    }

    else
    {
      v19 = 0;
    }

    v22 = *(v18 + 216);
    v23 = *(v18 + 200);
    if (*(*(v22 + 16) + 2 * v23 + 2 * v19) == -1 && *(*(v22 + 48) + 8 * v23 + 8 * v19) == v17)
    {
      *(v18 + 264) = v19;
    }

LABEL_34:
    v24 = v14 - 1;
    if (v14 >= 1)
    {
      while (1)
      {
        v25 = *(v12 + 16);
        if (v24 >= (*(v12 + 24) - v25) >> 3)
        {
          goto LABEL_45;
        }

        v26 = *(*(v25 + 8 * v24) + 48);
        if (v26 != v18 && !TRun::GetNonDeletedGlyphCount(v26))
        {
          TLine::DeleteRun(v12, v24);
        }

        v27 = v24-- + 1;
        if (v27 <= 1)
        {
          goto LABEL_40;
        }
      }
    }

    goto LABEL_40;
  }

LABEL_42:
  v28 = atomic_exchange(&v31, 0);
LABEL_43:

  return v28;
}

void TLine::UpdateWidth(atomic_ullong *this, double a2)
{
  v2 = 0.0;
  if ((this[19] & 0x10) != 0)
  {

    v5 = *(this + 76);
    if ((v5 & 8) != 0)
    {
      v6 = ((this[3] - this[2]) >> 3) - 1;
    }

    else
    {
      v6 = 0;
    }

    if ((v5 & 8) != 0)
    {
      v7 = -1;
    }

    else
    {
      v7 = (this[3] - this[2]) >> 3;
    }

    if ((v5 & 8) != 0)
    {
      v8 = -1;
    }

    else
    {
      v8 = 1;
    }

    if (v6 == v7)
    {
LABEL_26:
      *(this + 13) = v2 + *(this + 13);
    }

    else
    {
      v9 = 0.0;
      v10 = MEMORY[0x1E695F060];
      while (1)
      {
        v11 = this[2];
        if (v6 >= (this[3] - v11) >> 3)
        {
          break;
        }

        v12 = *(*(v11 + 8 * v6) + 40);
        if ((*(*v12 + 88))(v12))
        {
          TLine::DetachRun(this, v6);
          v14 = this[2];
          if (v6 >= (this[3] - v14) >> 3)
          {
            break;
          }

          v15 = *(*(v14 + 8 * v6) + 48);
          v16 = *(v15 + 192);
          v17 = *(v15 + 312);
          if (!v17)
          {
            v17 = v10;
          }

          v18 = *v17;
          v13.n128_f64[0] = v2 + v9 + a2;
          v19 = (*(*v15 + 96))(v15, this, v6, v13);
          if ((*(*v15 + 56))(v15) > *(this + 14))
          {
            *(this + 14) = (*(*v15 + 56))(v15);
          }

          v20 = v16 + v18;
          v2 = v2 + v19;
          if ((*(*v15 + 64))(v15) > *(this + 15))
          {
            *(this + 15) = (*(*v15 + 64))(v15);
          }
        }

        else
        {
          v21 = *(v12 + 312);
          if (!v21)
          {
            v21 = v10;
          }

          v20 = *(v12 + 192) + *v21;
        }

        v9 = v9 + v20;
        v6 += v8;
        if (v7 == v6)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
    }
  }
}

void TTypesetter::MakeLineConsistent(uint64_t a1, TLine *this)
{
  v9[96] = *MEMORY[0x1E69E9840];
  if ((*(this + 76) & 4) != 0)
  {
    v4 = *(this + 2);
    v3 = *(this + 3);
    v5 = (v3 - v4) >> 3;
    if (v5 >= 1)
    {
      for (i = 0; i < v5; ++i)
      {
        if (i >= (v3 - v4) >> 3)
        {
          __break(1u);
        }

        v8 = *(v4 + 8 * i);
        if (*(*(v8 + 40) + 256) == 3)
        {
          if (*(a1 + 16))
          {
            TTypesetter::RelayoutRunUsingCallback(a1, v8);
          }

          else
          {
            v9[0] = 0xAAAAAAAAAAAAAAAALL;
            (*(**(a1 + 8) + 16))(v9);
            if (atomic_load_explicit(v9, memory_order_acquire))
            {
              atomic_load_explicit(v9, memory_order_acquire);
              operator new();
            }
          }

          v4 = *(this + 2);
          v3 = *(this + 3);
          v5 = (v3 - v4) >> 3;
        }
      }

      TLine::SyncWithRuns(this);
    }
  }
}

void TTypesetter::ReorderRunsIfNecessary(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 152) & 1) != 0 && (*(a1 + 45) & 1) == 0)
  {
    v3 = 0xAAAAAAAAAAAAAAAALL;
    v4 = 0xAAAAAAAAAAAAAAAALL;
    TTypesetter::GetLevelsProvider(a1, &v3);
    TRunReorder::ReorderRuns(v3, a2);
    if (v4)
    {
      std::__shared_weak_count::__release_shared[abi:fn200100](v4);
    }
  }
}

void TTypesetter::FillLine(TTypesetter *this, TLine *a2, CFRange a3, double a4, double a5)
{
  v5 = this;
  v6 = *(this + 216);
  v7 = *(this + 29);
  v8 = this + 240;
  v9 = *(this + 65);
  v10 = *(this + 264);
  v11 = *(this + 257);
  v12 = 0;
  TTypesetter::FillLine(&v5, a2, a3, a4, a5);
}

uint64_t IsGB18030ComplianceRequired(void)
{
  if (qword_1ED567DB0 != -1)
  {
    dispatch_once_f(&qword_1ED567DB0, 0, IsGB18030ComplianceRequired(void)::$_0::__invoke);
  }

  return _MergedGlobals_26;
}

void TLine::SetRunArray(const void **this, CFArrayRef theArray)
{
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v5 = Count;
    if (theArray)
    {
      v6 = CFArrayGetCount(theArray);
      if (v6)
      {
        v7 = v6;
        for (i = 0; i != v7; ++i)
        {
          v18 = CFArrayGetValueAtIndex(theArray, i);
          v19 = atomic_exchange(&v18, 0);
          v9 = atomic_exchange(&v19, 0);
          v20 = v9;
          std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::push_back[abi:fn200100](this + 2, &v20);
          TLine::UpdateCachedMetricsForRun(this, *(v9 + 40));
        }
      }
    }

    v11 = this[2];
    v10 = this[3];
    v12 = v10 - v11;
    if (v10 != v11)
    {
      v13 = *(*v11 + 40);
      v14 = *(v13 + 8);
      v15 = v5 - 1;
      if (v5 <= 1)
      {
        v17 = *(v13 + 16);
        goto LABEL_11;
      }

      if (v12 >> 3 > v15)
      {
        v16 = *(*&v11[8 * v15] + 40);
        v17 = (*(v16 + 8) - v14 + *(v16 + 16));
LABEL_11:
        this[9] = v14;
        this[10] = v17;
        return;
      }
    }

    __break(1u);
  }
}

void TLine::DetachRun(TLine *this, unint64_t a2)
{
  v4 = *(this + 2);
  if (a2 >= (*(this + 3) - v4) >> 3)
  {
    __break(1u);
  }

  else
  {
    v12[7] = v2;
    v12[8] = v3;
    v7 = *(v4 + 8 * a2);
    v12[0] = 0xAAAAAAAAAAAAAAAALL;
    (*(v7 + 56))(v12);
    v8 = *(atomic_load_explicit(v12, memory_order_acquire) + 48);
    v9 = [*(v8 + 216) copyWithRange:{*(v8 + 200), *(v8 + 208)}];

    *(v8 + 216) = v9;
    *(v8 + 200) = 0;
    v10 = atomic_exchange(v12, 0);
    TLine::ReplaceRun(this, a2, &v10, &v11);
  }
}

uint64_t IsGB18030ComplianceRequired(void)::$_0::__invoke()
{
  result = MGGetBoolAnswer();
  _MergedGlobals_26 = result;
  return result;
}

void CTDelegateRun::CloneEntire(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = TCFBase<TRun>::Allocate();
  v5 = v4;
  if (v4)
  {
    v4[2] = 0;
    v4[3] = 0;
    v4[4] = 0;
    v4[5] = v4 + 9;
    v4[6] = v4 + 9;
    v4[7] = CTDelegateRun::CloneEntire;
    v4[8] = CTDelegateRun::CloneRange;
    TDelegateRun::TDelegateRun((v4 + 9), (a1 + 72));
  }

  v6 = v5;
  *a2 = atomic_exchange(&v6, 0);
}

uint64_t TTypesetter::DoAttachments(uint64_t a1, unint64_t *a2, _BYTE *a3, _BYTE *a4)
{
  v8 = *(*(a1 + 8) + 16);
  result = objc_opt_new();
  v10 = result;
  v11 = *a2;
  v12 = (*(*a2 + 24) - *(*a2 + 16)) >> 3;
  if (v12 >= 1)
  {
    v23 = a4;
    v13 = 0;
    for (i = 0; i != v12; ++i)
    {
      v15 = *(v11 + 16);
      if (i >= (*(v11 + 24) - v15) >> 3)
      {
        goto LABEL_19;
      }

      v16 = *(*(v15 + 8 * i) + 48);
      result = FixRunIfBroken(v16, v8, v10);
      if (result)
      {
        v21 = i + 1;
        if (v21 >= v12)
        {
LABEL_17:
          v20 = 0;
          goto LABEL_18;
        }

        while (1)
        {
          v22 = *(v11 + 16);
          if (v21 >= (*(v11 + 24) - v22) >> 3)
          {
            break;
          }

          result = FixRunIfBroken(*(*(v22 + 8 * v21++) + 48), v8, v10);
          if (v12 == v21)
          {
            goto LABEL_17;
          }
        }

LABEL_19:
        __break(1u);
        return result;
      }

      v17 = *(v16 + 20);
      if (v17)
      {
        v13 |= (*(v17 + 66) & 8) >> 3;
      }
    }

    if (v13)
    {
      v18 = *(a1 + 8);
      v25[0] = a2;
      v25[1] = v18;
      v24 = -86;
      v19 = TCombiningEngine::ResolveCombiningMarks(v25, 0, &v24, 0);
      if ((v24 & 1) == 0)
      {
        *a3 |= 4u;
      }

      if (v19)
      {
        *v23 = 1;
      }
    }
  }

  v20 = 1;
LABEL_18:

  return v20;
}

void TDelegateRun::TDelegateRun(TDelegateRun *this, const TDelegateRun *a2)
{
  TRun::TRun(this, a2);
  *v4 = &unk_1EF25A850;
  *(this + 40) = atomic_load_explicit(a2 + 40, memory_order_acquire);
  v5 = *(a2 + 328);
  v6 = *(a2 + 344);
  *(this + 45) = *(a2 + 45);
  *(this + 328) = v5;
  *(this + 344) = v6;
  *(this + 46) = *(a2 + 46);
  *(this + 47) = *(a2 + 47);
  *(this + 24) = *(a2 + 24);
}

uint64_t FixRunIfBroken(TRun *a1, uint64_t a2, NSMutableIndexSet *a3)
{
  v3 = *(a1 + 64);
  v4 = v3 != 2;
  if (v3)
  {
    v5 = v3 == 3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    v4 = 0;
  }

  v41 = v4;
  v6 = v5 || v3 == 2;
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = *(a1 + 26);
  if (v8 >= 1)
  {
    v11 = *(a1 + 1);
    v37 = *(a1 + 2);
    v12 = *(a1 + 27);
    v13 = (v12[6] + 8 * *(a1 + 25));
    v14 = *v13;
    v15 = [v12 attachmentCountAtIndex:?] + v14;
    if (v8 != 1)
    {
      for (i = 1; i != v8; ++i)
      {
        v17 = v13[i];
        if (v17 < v14)
        {
          v14 = v13[i];
        }

        v18 = [*(a1 + 27) attachmentCountAtIndex:i + *(a1 + 25)];
        if (v15 <= v18 + v17)
        {
          v15 = v18 + v17;
        }
      }
    }

    if ((v15 + 1) < a2)
    {
      v19 = v15 + 1;
    }

    else
    {
      v19 = a2;
    }

    if (v14 < 0 || v14 >= a2)
    {
      v20 = v15 < 0x7FFFFFFFFFFFFFFFLL && v14 < 1;
      v14 = 0;
      if (!v20)
      {
        v19 = 0;
      }
    }

    else
    {
      v19 -= v14;
    }

    v39 = v13;
    if (v14 != v11 || v19 != v37)
    {
      *(a1 + 1) = v14;
      *(a1 + 2) = v19;
      v7 = 1;
    }

    v21 = v7;
    if (*(a1 + 224))
    {
      v22 = v8 - 1;
    }

    else
    {
      v22 = 0;
    }

    if (*(a1 + 224))
    {
      v23 = -1;
    }

    else
    {
      v23 = v8;
    }

    v24 = 1;
    if (*(a1 + 224))
    {
      v25 = -1;
    }

    else
    {
      v25 = 1;
    }

    v26 = v39[v22] - 1;
    v38 = v14 + v19;
    while (1)
    {
      v27 = v26;
      v26 = v39[v22];
      v28 = [*(a1 + 27) attachmentCountAtIndex:v22 + *(a1 + 25)];
      v29 = v28;
      v30 = v41;
      if (v26 != v27)
      {
        v30 = 0;
      }

      v31 = v26 != v27 + v24 && !v30;
      v32 = v28 + v26;
      if (!v31 && v14 <= v32)
      {
        v34 = v38 <= v32;
        v35 = v38 <= v32 || v41;
        if (v35)
        {
          if (!v34)
          {
            goto LABEL_54;
          }
        }

        else if (([(NSMutableIndexSet *)a3 containsIndex:v26]& 1) == 0)
        {
          goto LABEL_54;
        }
      }

      [*(a1 + 27) setProps:*(*(*(a1 + 27) + 40) + 4 * *(a1 + 25) + 4 * v22) | 0x20u atIndex:v22 + *(a1 + 25)];
      [*(a1 + 27) setStringIndex:v14 atIndex:v22 + *(a1 + 25)];
      *(a1 + 64) = 2;
      v21 = 1;
LABEL_54:
      [(NSMutableIndexSet *)a3 addIndex:v26];
      v24 = v29 + 1;
      v22 += v25;
      if (v23 == v22)
      {
        return v21 & 1;
      }
    }
  }

  v21 = v7;
  return v21 & 1;
}

void TDelegateRun::~TDelegateRun(id *this)
{
  *this = &unk_1EF25A850;

  TRun::~TRun(this);
}

{
  *this = &unk_1EF25A850;

  TRun::~TRun(this);

  JUMPOUT(0x1865F22D0);
}

void *TLine::ReplaceRun@<X0>(void *result@<X0>, unint64_t a2@<X1>, atomic_ullong *a3@<X2>, void *a4@<X8>)
{
  v4 = result[2];
  if (a2 >= (result[3] - v4) >> 3)
  {
    goto LABEL_12;
  }

  v5 = *(v4 + 8 * a2);
  v6 = *(v5 + 40);
  v7 = atomic_exchange(a3, 0);
  v8 = *(v7 + 48);
  v9 = *(v6 + 32);
  if (v9)
  {
    *(v9 + 24) = v8;
  }

  else
  {
    result[11] = v8;
    if (!v8)
    {
      v10 = *(v6 + 24);
      if (v10)
      {
        goto LABEL_6;
      }

      result[12] = 0;
      goto LABEL_8;
    }
  }

  *(v8 + 32) = v9;
  v10 = *(v6 + 24);
  if (v10)
  {
LABEL_6:
    *(v8 + 24) = v10;
    *(v10 + 32) = v8;
    goto LABEL_8;
  }

  result[12] = v8;
  *(v8 + 24) = 0;
LABEL_8:
  v11 = result[2];
  if (a2 < (result[3] - v11) >> 3)
  {
    *(v11 + 8 * a2) = v7;
    *a4 = v5;
    return result;
  }

LABEL_12:
  __break(1u);
  return result;
}

CFIndex TTypesetter::SuggestLineBreak(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v19 = *MEMORY[0x1E69E9840];
  v10 = a1;
  v11 = *(a1 + 216);
  v12 = *(a1 + 232);
  v13 = a1 + 240;
  v14 = *(a1 + 260);
  v15 = *(a1 + 264);
  v16 = *(a1 + 257);
  v17 = 0;
  std::__function::__value_func<unsigned char ()(long)>::__value_func[abi:fn200100](v18, a3);
  v8 = TTypesetter::SuggestLineBreak(&v10, a2, v18, a4, a5);
  std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](v18);
  return v8;
}

void std::allocator<std::pair<long,TAATDeltaXListEntry>>::allocate_at_least[abi:fn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 60))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fn200100]();
}

double CTLineGetWidthForStringRangeWithOffset(uint64_t a1, CFIndex a2, CFIndex a3, double a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = 0.0;
  if (a1)
  {
    v5 = *(a1 + 40);
    v6 = v5[9];
    v7 = v5[10] + v6;
    v8 = v7 - a2;
    if (a3)
    {
      v8 = a3;
    }

    if ((v8 & 0x8000000000000000) == 0 && a2 >= v6 && v8 + a2 <= v7)
    {
      *&v17[80] = unk_18475B0B0;
      *&v17[96] = xmmword_18475B0C0;
      v19 = unk_18475B110;
      *v18 = xmmword_18475B0E0;
      memset(&v18[16], 170, 32);
      if (v7 <= a2)
      {
        v10.length = 0;
      }

      else
      {
        v10.length = v8;
      }

      if (v7 <= a2)
      {
        v10.location = 0;
      }

      else
      {
        v10.location = a2;
      }

      *&v17[112] = unk_18475B0D0;
      memset(v17, 170, 80);
      v12 = *v5;
      v11 = v5[1];
      v13 = *v5;
      if (v11)
      {
        atomic_fetch_add_explicit(v11 + 1, 1uLL, memory_order_relaxed);
        v13 = *v5;
      }

      *v17 = v12;
      *&v17[8] = v11;
      memset(&v17[16], 0, 24);
      *&v17[64] = &v17[40];
      BYTE8(v19) = 0;
      memset(&v17[72], 0, 56);
      memset(&v18[8], 0, 21);
      *&v18[32] = 0;
      *&v18[40] = 0;
      LOBYTE(v19) = 0;
      v21 = 0;
      v22 = 0;
      v20 = 0;
      *v18 = 0xFFEFFFFFFFFFFFFFLL;
      v15[0] = v5;
      v15[1] = v13;
      v15[2] = 0;
      v15[3] = 0;
      v16[0] = 0;
      *(v16 + 6) = 0;
      v16[2] = 0;
      TTypesetter::FillLine(v15, v17, v10, 1.79769313e308, a4);
      v4 = *&v17[104];
      TLine::~TLine(v17);
    }
  }

  return v4;
}

CFIndex TypesetterSuggestLineBreak(const __CTTypesetter *a1, uint64_t a2, double a3, double a4)
{
  v9 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0;
  }

  v4 = *(a1 + 5);
  v8 = 0;
  v5 = TTypesetter::SuggestLineBreak(v4, a2, v7, a3, a4);
  std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](v7);
  return v5;
}

double TDelegateRun::UpdateWidth(TDelegateRun *this, TLine *a2, double a3)
{
  v4 = *(this + 26);
  v5 = *(this + 45);
  v6 = 0.0;
  v7 = 0.0;
  if (v5)
  {
    v8 = *(this + 41);
    v9 = *(this + 46);
    if (v8 == 2)
    {
      v5(v9, a2, a3);
    }

    else
    {
      v10 = v5(v9, a2, a3);
    }

    v7 = v10;
  }

  v11 = v7 * v4 - *(this + 24);
  if (v11 != 0.0)
  {
    if (v4 >= 1)
    {
      for (i = 0; i != v4; ++i)
      {
        v14.height = 0.0;
        v14.width = v7;
        TStorageRange::SetAdvance((this + 192), i, v14);
      }
    }

    return v11;
  }

  return v6;
}

void TAATPropTable::TAATPropTable(TAATPropTable *this, const __CTFont *a2)
{
  (*(**(*(a2 + 5) + 408) + 488))(*(*(a2 + 5) + 408), 1886547824);
  v4 = atomic_load_explicit(this, memory_order_acquire);
  v5 = v4;
  if (v4)
  {
    BytePtr = CFDataGetBytePtr(v4);
  }

  else
  {
    BytePtr = 0;
  }

  *(this + 1) = BytePtr;
  Length = atomic_load_explicit(this, memory_order_acquire);
  v8 = Length;
  if (Length)
  {
    Length = CFDataGetLength(Length);
  }

  v9 = Length + BytePtr;

  *(this + 2) = v9;
  *(this + 3) = TAATPropTable::GetNullPropertiesForGlyph;
  *(this + 4) = 0;
  v10 = *(this + 1);
  if (v10)
  {
    if (v10 + 8 > v9 || bswap32(*v10) > 196608)
    {
      goto LABEL_14;
    }

    v11 = bswap32(*(v10 + 4)) >> 16;
    if (v11 != 1)
    {
      if (!v11)
      {
        v12 = TAATPropTable::GetDefaultPropertiesForGlyph;
LABEL_12:
        *(this + 3) = v12;
        *(this + 4) = 0;
        return;
      }

      goto LABEL_14;
    }

    if (v10 + 10 > v9)
    {
LABEL_14:
      CFLog();
      (*(**(*(a2 + 5) + 408) + 496))(*(*(a2 + 5) + 408));
      *(this + 1) = 0;
      return;
    }

    v13 = bswap32(*(v10 + 8)) >> 16;
    if (v13 > 5)
    {
      if (v13 == 6)
      {
        if (v10 + 14 > v9)
        {
          goto LABEL_14;
        }

        v22 = v10 + 20;
        v23 = v10 + 20 + (bswap32(*(v10 + 12)) >> 16) * (bswap32(*(v10 + 10)) >> 16);
        if (v23 < v22 || v23 > v9)
        {
          goto LABEL_14;
        }

        goto LABEL_45;
      }

      if (v13 != 10)
      {
        if (v13 != 8)
        {
          goto LABEL_14;
        }

        v17 = v10 + 14;
        if (v10 + 14 > v9)
        {
          goto LABEL_14;
        }

        v18 = bswap32(*(v10 + 12)) >> 16;
        v19 = v17 + 2 * v18;
        v20 = v10 + 16 <= v9 ? (v9 - v17) >> 1 : 0;
        v21 = v19 <= v9 && v19 >= v17;
        if (!v21 && v20 != v18)
        {
          goto LABEL_14;
        }

        goto LABEL_45;
      }

      v14 = v10 + 16;
      if (v10 + 16 > v9)
      {
        goto LABEL_14;
      }

      v15 = bswap32(*(v10 + 10)) >> 16;
      v16 = *(v10 + 14);
    }

    else
    {
      if (!v13)
      {
        goto LABEL_45;
      }

      if (v13 != 2 && v13 != 4 || v10 + 14 > v9)
      {
        goto LABEL_14;
      }

      v14 = v10 + 20;
      v15 = bswap32(*(v10 + 10)) >> 16;
      v16 = *(v10 + 12);
    }

    v25 = v14 + (bswap32(v16) >> 16) * v15;
    if (v25 < v14 || v25 > v9)
    {
      goto LABEL_14;
    }

LABEL_45:
    v12 = TAATPropTable::GetPropertiesForGlyph;
    goto LABEL_12;
  }
}

double CTRunGetTypographicBounds(CTRunRef run, CFRange range, CGFloat *ascent, CGFloat *descent, CGFloat *leading)
{
  v5 = 0.0;
  if (!run)
  {
    return v5;
  }

  length = range.length;
  location = range.location;
  v10 = *(run + 5);
  if ((*(v10 + 225) & 8) != 0)
  {
    v11 = *(v10 + 264);
    v12 = *(v10 + 208);
    v13 = *(*(v10 + 216) + 16);
    v14 = *(v10 + 200);
    if (v12 < 1 || range.location < 1)
    {
      location = 0;
    }

    else
    {
      v16 = range.location;
      location = 0;
      do
      {
        v18 = v11 == location || *(v13 + 2 * v14 + 2 * location) != -1;
        if (++location >= v12)
        {
          break;
        }

        v16 -= v18;
      }

      while (v16);
    }

    if (range.length)
    {
      v19 = 0;
      if (v12 > location && range.length >= 1)
      {
        v19 = 0;
        v20 = v11 - location;
        v21 = v13 + 2 * location + 2 * v14;
        do
        {
          v23 = v20 == v19 || *(v21 + 2 * v19) != -1;
          v24 = location + 1 + v19++;
          if (v24 >= v12)
          {
            break;
          }

          length -= v23;
        }

        while (length);
      }
    }

    else
    {
      v19 = v12 - location;
    }

    length = v19;
  }

  if (ascent)
  {
    *ascent = (*(*v10 + 56))(*(run + 5));
  }

  if (descent)
  {
    *descent = (*(*v10 + 64))(v10);
  }

  if (leading)
  {
    *leading = (*(*v10 + 72))(v10);
  }

  if (location < 0)
  {
    return v5;
  }

  v25 = *(v10 + 208);
  if (location + length > v25)
  {
    return v5;
  }

  if (length)
  {
    v26.length = length;
  }

  else
  {
    v26.length = v25 - location;
  }

  if (!location && v26.length == v25)
  {
    v27 = *(v10 + 312);
    if (!v27)
    {
      v27 = MEMORY[0x1E695F060];
    }

    return *(v10 + 192) + *v27;
  }

  v26.location = location;

  return TStorageRange::GetWidth((v10 + 192), v26);
}

void std::__destroy_at[abi:fn200100]<TTypesetter,0>(TLine *this)
{
  v2 = *(this + 31);
  if (v2)
  {
    std::__shared_weak_count::__release_shared[abi:fn200100](v2);
  }

  TLine::~TLine(this);
}

uint64_t TAATPropTable::GetPropertiesForGlyph(TAATPropTable *this, uint64_t a2)
{
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15 = v4;
  v16 = v4;
  v6 = *(this + 1);
  v5 = *(this + 2);
  v13 = TAATLookupTable::BadTable;
  v14 = 0;
  *(&v16 + 1) = 0;
  v17 = 0xAAAAAAAAAAAAFFFFLL;
  TAATLookupTable::SetTable(&v13, (v6 + 8), v5);
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v7 = v13;
  v8 = (&v13 + (v14 >> 1));
  if (v14)
  {
    v7 = *(*v8 + v13);
  }

  v9 = v7(v8, a2, &v18);
  v10 = *(this + 1);
  if (!v9 || (v10 <= v9 ? (v11 = (v9 + 1) > *(this + 2)) : (v11 = 1), v11))
  {
    v9 = (v10 + 6);
  }

  return bswap32(*v9) >> 16;
}

void CTGlyphRun::CloneEntire(uint64_t a1@<X0>, void *a2@<X8>)
{
  TCFBase_NEW<CTGlyphRun,TRun const&>((a1 + 72), &v3);
  *a2 = atomic_exchange(&v3, 0);
}

CFIndex TTypesetter::SuggestLineBreak(uint64_t *a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v16 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<unsigned char ()(long)>::__value_func[abi:fn200100](v15, a3);
  TTypesetter::FindGraphicalBreak(a1, a2, v15, v13, a4, a5);
  v10 = v13[0];
  Chars = v14;
  std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](v15);
  if ((v10 & 1) == 0)
  {
    if (!Chars)
    {
      Chars = TTypesetter::DecomposeLastChars(a1, a2, 0, a4);
      if (!Chars)
      {
        Chars = *(a3 + 24) == 0;
      }
    }

    return TTypesetter::FindLineBreak(a1, a2, Chars, v10);
  }

  return Chars;
}

uint64_t TLine::operator=(uint64_t a1, uint64_t *a2)
{
  v39 = *MEMORY[0x1E69E9840];
  if (a1 != a2)
  {
    *(a1 + 72) = *(a2 + 9);
    v5 = *a2;
    v4 = a2[1];
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

    *(a1 + 104) = *(a2 + 13);
    *(a1 + 120) = *(a2 + 15);
    *(a1 + 136) = a2[17];
    *(a1 + 144) = a2[18];
    *(a1 + 152) = *(a2 + 76);
    *(a1 + 154) = *(a2 + 77) & 0xFFFE;
    TCFRef<__CTFont const*>::Retain((a1 + 168), atomic_load_explicit(a2 + 21, memory_order_acquire));
    v7 = a2[2];
    v8 = a2[3] - v7;
    v9 = v8 >> 3;
    if (v8 >> 3)
    {
      if (v9 == 1)
      {
        (*(*v7 + 56))(v32);
        v36[0] = atomic_exchange(v32, 0);
        std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::push_back[abi:fn200100]((a1 + 16), v36);

        v10 = *(a1 + 16);
        if (*(a1 + 24) != v10)
        {
          v11 = *(*v10 + 48);
          *(a1 + 88) = v11;
          if (v11)
          {
            *(a1 + 96) = v11;
            *(v11 + 24) = 0;
            *(v11 + 32) = 0;
          }

          else
          {
            *(a1 + 96) = 0;
          }

          return a1;
        }

LABEL_44:
        __break(1u);
      }

      v12 = a2[11];
      if (!v12)
      {
        if (v9 < 1)
        {
          return a1;
        }

        v27 = 0;
        while (1)
        {
          v28 = a2[2];
          if (v27 >= (a2[3] - v28) >> 3)
          {
            break;
          }

          (*(*(v28 + 8 * v27) + 56))(v32);
          v36[0] = atomic_exchange(v32, 0);
          std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::push_back[abi:fn200100]((a1 + 16), v36);

          if (v9 == ++v27)
          {
            return a1;
          }
        }

        goto LABEL_44;
      }

      *v32 = 0u;
      v33 = 0u;
      v34 = 0xAAAAAAAA3F800000;
      if (v9 < 1)
      {
        goto LABEL_34;
      }

      v13 = 0;
      v30 = v8 >> 3;
LABEL_14:
      v14 = a2[2];
      if (v13 >= (a2[3] - v14) >> 3)
      {
        goto LABEL_44;
      }

      v15 = *(v14 + 8 * v13);
      v16 = *(v15 + 40);
      v17 = 0x9DDFEA08EB382D69 * ((8 * (v16 & 0x1FFFFFFF) + 8) ^ HIDWORD(v16));
      v18 = 0x9DDFEA08EB382D69 * (HIDWORD(v16) ^ (v17 >> 47) ^ v17);
      v19 = 0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47));
      if (!v32[1])
      {
        goto LABEL_32;
      }

      v20 = vcnt_s8(v32[1]);
      v20.i16[0] = vaddlv_u8(v20);
      if (v20.u32[0] > 1uLL)
      {
        v21 = 0x9DDFEA08EB382D69 * (v18 ^ (v18 >> 47));
        if (v19 >= v32[1])
        {
          v21 = v19 % v32[1];
        }
      }

      else
      {
        v21 = v19 & (v32[1] - 1);
      }

      v22 = *(v32[0] + v21);
      if (!v22 || (v23 = *v22) == 0)
      {
LABEL_32:
        operator new();
      }

      while (1)
      {
        v24 = v23[1];
        if (v24 == v19)
        {
          if (v23[2] == v16)
          {
            v23[3] = v13;
            (*(v15 + 56))(&v35, v15);
            v36[0] = atomic_exchange(&v35, 0);
            std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::push_back[abi:fn200100]((a1 + 16), v36);

            ++v13;
            v9 = v30;
            if (v13 == v30)
            {
LABEL_34:
              *&v25 = 0xAAAAAAAAAAAAAAAALL;
              *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v37[14] = v25;
              v37[13] = v25;
              v37[12] = v25;
              v37[11] = v25;
              v37[10] = v25;
              v37[9] = v25;
              v37[8] = v25;
              v37[7] = v25;
              v37[6] = v25;
              v37[5] = v25;
              v37[4] = v25;
              v37[3] = v25;
              v37[1] = v25;
              v37[2] = v25;
              v37[0] = v25;
              memset(v36, 0, sizeof(v36));
              v38 = v37;
              std::vector<long,TInlineBufferAllocator<long,30ul>>::reserve(v36, v9);
              v31 = v12;
              do
              {
                v35 = &v31;
                v26 = std::__hash_table<std::__hash_value_type<TRun const*,long>,std::__unordered_map_hasher<TRun const*,std::__hash_value_type<TRun const*,long>,std::hash<TRun const*>,std::equal_to<TRun const*>,true>,std::__unordered_map_equal<TRun const*,std::__hash_value_type<TRun const*,long>,std::equal_to<TRun const*>,std::hash<TRun const*>,true>,std::allocator<std::__hash_value_type<TRun const*,long>>>::__emplace_unique_key_args<TRun const*,std::piecewise_construct_t const&,std::tuple<TRun const* const&>,std::tuple<>>(v32, v12);
                std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](v36, v26 + 3);
                v12 = *(v31 + 24);
                v31 = v12;
              }

              while (v12);
              TLine::LinkRunsWithOrder(a1, v36);
              v35 = v36;
              std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v35);
              std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(v32);
              return a1;
            }

            goto LABEL_14;
          }
        }

        else
        {
          if (v20.u32[0] > 1uLL)
          {
            if (v24 >= v32[1])
            {
              v24 %= v32[1];
            }
          }

          else
          {
            v24 &= v32[1] - 1;
          }

          if (v24 != v21)
          {
            goto LABEL_32;
          }
        }

        v23 = *v23;
        if (!v23)
        {
          goto LABEL_32;
        }
      }
    }
  }

  return a1;
}

UInt16 *TAATLookupTable::LookupSegmentSingle(TAATLookupTable *this, unsigned int a2, unint64_t *a3)
{
  if (a2 == 0xFFFF)
  {
    return 0;
  }

  Segment = FindSegment((*(this + 2) + 2), *(this + 5), a2, a3);
  if (!Segment)
  {
    return 0;
  }

  else
  {
    return Segment->value;
  }
}

void TCFBase<TTypesetter>::ClassDestruct(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v2(a1);
  }

  v3 = *(a1 + 40);

  std::__destroy_at[abi:fn200100]<TTypesetter,0>(v3);
}

SFNTLookupSegment *FindSegment(const SFNTLookupSegmentHeader *a1, unint64_t a2, unsigned int a3, unint64_t *a4)
{
  v4 = bswap32(a1->binSearch.unitSize) >> 16;
  if (v4 < 6)
  {
    return 0;
  }

  nUnits = a1->binSearch.nUnits;
  if (!a1->binSearch.nUnits)
  {
    return 0;
  }

  result = a1->segments;
  v8 = a1->segments + __rev16(nUnits) * v4;
  v9 = &v8[-v4];
  v10 = v8 <= a2 && v9 >= a1;
  if (!v10 || v8 < v9)
  {
    return 0;
  }

  while (a3 > bswap32(result->lastGlyph) >> 16)
  {
    result = (result + v4);
    if (v8 <= result)
    {
      return 0;
    }
  }

  if (a3 < bswap32(result->firstGlyph) >> 16)
  {
    return 0;
  }

  *a4 = v4 - 4;
  return result;
}

void TDelegateRun::DrawGlyphs(TRun *this, CGContextRef c, CFRange a3)
{
  if (*(this + 49) != 0.0)
  {
    TRun::DrawGlyphs(this, c, a3);
  }
}

uint64_t TDescriptorSource::GetTextStyleWithSymbolicTraits(TDescriptorSource *this, __CFString *a2)
{
  if (!this)
  {
    goto LABEL_5;
  }

  v3 = this;
  if (qword_1ED5674B0 != -1)
  {
    dispatch_once(&qword_1ED5674B0, &__block_literal_global_682);
  }

  this = [objc_msgSend(qword_1ED5674A8 objectForKeyedSubscript:{v3), "unsignedIntValue"}];
  if (this > 0x144)
  {
    FontNameForNameAndTrait = 0;
  }

  else
  {
LABEL_5:
    FontNameForNameAndTrait = TDescriptorSource::UIFontNameForUIType(this);
    if (FontNameForNameAndTrait)
    {
      FontNameForNameAndTrait = TDescriptorSource::FindFontNameForNameAndTrait(FontNameForNameAndTrait, 0, a2, a2);
    }
  }

  return TDescriptorSource::TextStyleForUIFontName(FontNameForNameAndTrait, v4, v5);
}

void *TKerningEngineImplementation::SetAdvance<TRunGlue::TGlyph>(void *a1, int64_t a2, _BYTE *a3, double a4, double a5)
{
  v10[0] = a1;
  v10[1] = a2;
  result = TRunGlue::SetAdvance(a1, a2, *&a4);
  if (a4 != *MEMORY[0x1E695F060] || a5 != *(MEMORY[0x1E695F060] + 8))
  {
    result = TRunGlue::TGlyph::IsDeleted(v10);
    if (result)
    {
      *a3 = 1;
    }
  }

  return result;
}

void *DoGlyphFixupsCheck(void *result)
{
  v1 = (result[3] - result[2]) >> 3;
  if (v1 >= 1)
  {
    v2 = result;
    v3 = 0;
    while (1)
    {
      v4 = v2[2];
      if (v3 >= (v2[3] - v4) >> 3)
      {
        break;
      }

      v5 = *(*(v4 + 8 * v3) + 48);
      v6 = *(v5 + 208);
      result = *(v5 + 216);
      v7 = result[2];
      v8 = *(v5 + 200);
      if ((*(v5 + 225) & 0x10) != 0)
      {
        result = [result implementsOrigins];
        if (!result)
        {
          goto LABEL_12;
        }
      }

      if (v6 >= 1)
      {
        v9 = (v7 + 2 * v8);
        while (1)
        {
          v10 = *v9++;
          if (v10 == -1)
          {
            break;
          }

          if (!--v6)
          {
            goto LABEL_10;
          }
        }

LABEL_12:
        *(v2 + 77) |= 0x20u;
        return result;
      }

LABEL_10:
      if (++v3 == v1)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t TRunGlue::TGlyph::IsDeleted(TRunGlue::TGlyph *this)
{
  v3 = *this;
  v2 = *(this + 1);
  if (*(*this + 144))
  {
    TRunGlue::FocusOnIndex(*this, v2);
    v4 = (*(v3 + 168) + 2 * (v2 - *(v3 + 152)));
  }

  else
  {
    v4 = (*(v3 + 168) + 2 * *(v3 + 152) + 2 * v2);
  }

  if (*v4 == -1)
  {
    return 1;
  }

  v5 = *this;
  v6 = *(this + 1);

  return TRunGlue::IsDeleted(v5, v6);
}

atomic_ullong *TRun::CopyPositions(atomic_ullong *this, CFRange a2, CGPoint *__dst)
{
  length = a2.length;
  location = a2.location;
  explicit = atomic_load_explicit(this + 35, memory_order_acquire);
  if (explicit)
  {
LABEL_5:
    if (length)
    {

      return memmove(__dst, (explicit + 16 * location), 16 * length);
    }
  }

  else
  {
    v7 = this;
    while (1)
    {
      this = v7[34];
      if (!this)
      {
        break;
      }

      this = TLine::CachePositions(this);
      explicit = atomic_load_explicit(v7 + 35, memory_order_acquire);
      if (explicit)
      {
        goto LABEL_5;
      }
    }
  }

  return this;
}

void CTRunGetPositions(CTRunRef run, CFRange range, CGPoint *buffer)
{
  v21 = *MEMORY[0x1E69E9840];
  if (run && buffer)
  {
    length = range.length;
    location = range.location;
    v6 = *(run + 5);
    if ((*(v6 + 225) & 8) != 0)
    {
      TRun::GetPositions(*(run + 5), 0);
      v10 = 0;
      v11 = *(v6 + 264);
      v19[0] = &unk_1EF257128;
      v19[1] = buffer;
      v19[2] = v12;
      v20 = v19;
      v13 = *(v6 + 208);
      v14 = *(*(v6 + 216) + 16) + 2 * *(v6 + 200);
      if (!length)
      {
        length = v13;
      }

      if (v13 >= 1 && location >= 1)
      {
        v10 = 0;
        v16 = 0;
        do
        {
          if (v11 == v10 || *(v14 + 2 * v10) != -1)
          {
            ++v16;
          }

          ++v10;
        }

        while (v10 < v13 && v16 < location);
      }

      if (v10 < v13 && length >= 1)
      {
        v18 = 0;
        do
        {
          if (v11 == v10 || *(v14 + 2 * v10) != 0xFFFF)
          {
            std::function<void ()(long,long)>::operator()(v20, v10, v18++);
          }

          ++v10;
        }

        while (v10 < v13 && v18 < length);
      }

      std::__function::__value_func<void ()(long,long)>::~__value_func[abi:fn200100](v19);
    }

    else if ((range.location & 0x8000000000000000) == 0)
    {
      v7 = *(v6 + 208);
      if (range.location + range.length <= v7)
      {
        v8 = v7 - range.location;
        if (!range.length)
        {
          range.length = v8;
        }

        v9 = *(run + 5);

        TRun::CopyPositions(v9, range, buffer);
      }
    }
  }
}

const __CFNumber *TAttributes::HandleNSBaselineOffsetAttribute(const __CFNumber *result, TAttributes **a2)
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
    if (!*(result + 5))
    {
      *(result + 5) = @"NSBaselineOffset";
      *(result + 6) = valuePtr;
    }
  }

  return result;
}

CGFloat CTFontGetLeading(CTFontRef font)
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

  return *(v2 + 24);
}

CGFloat CTFontGetXHeight(CTFontRef font)
{
  if (!font)
  {
    return 0.0;
  }

  v1 = *(font + 5);
  v2 = *(v1 + 51);
  TFont::GetScaledMatrix(v1, &v4);
  (*(*v2 + 616))(v2, &v4);
  return result;
}

CFStringRef TCharStreamCFString::CopyChars@<X0>(atomic_ullong *this@<X0>, CFRange range@<0:X1, 8:X2>, CFStringRef *a3@<X8>)
{
  result = CFStringCreateWithSubstring(*MEMORY[0x1E695E480], atomic_load_explicit(this + 4, memory_order_acquire), range);
  *a3 = result;
  return result;
}

void TLine::ReplaceRun(uint64_t *a1, unint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  v4 = *(a3 + 24) - v3;
  if (!v4 || (v6 = a1[2], v7 = a1 + 2, a2 >= (a1[3] - v6) >> 3))
  {
LABEL_16:
    __break(1u);
    return;
  }

  v9 = *(*v3 + 48);
  v10 = *(*(*(a3 + 24) - 8) + 48);
  v11 = *(*(v6 + 8 * a2) + 40);
  v12 = *(v11 + 32);
  if (v12)
  {
    *(v12 + 24) = v9;
  }

  else
  {
    a1[11] = v9;
    if (!v9)
    {
      goto LABEL_7;
    }
  }

  *(v9 + 32) = v12;
LABEL_7:
  v13 = v4 >> 3;
  v14 = *(v11 + 24);
  if (v14)
  {
    *(v10 + 24) = v14;
    *(v14 + 32) = v10;
  }

  else
  {
    a1[12] = v10;
    if (v10)
    {
      *(v10 + 24) = 0;
    }
  }

  TLine::SimpleRunDelete(a1, a2);
  v15 = v13 < 1;
  v16 = v13 - 1;
  if (!v15)
  {
    v17 = 8 * a2;
    while (1)
    {
      v18 = *(a3 + 16);
      if (v16 >= (*(a3 + 24) - v18) >> 3)
      {
        break;
      }

      v19 = *v7;
      v21 = *(v18 + 8 * v16);
      std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::insert(v7, (v17 + v19), &v21);
      v20 = v16-- + 1;
      if (v20 <= 1)
      {
        return;
      }
    }

    goto LABEL_16;
  }
}

void TLine::SimpleRunDelete(TLine *this, uint64_t a2)
{
  v3 = (*(this + 2) + 8 * a2);

  v4 = *(this + 3);
  if (v4 == v3)
  {
    __break(1u);
  }

  else
  {
    v5 = v4 - (v3 + 1);
    if (v4 != v3 + 1)
    {
      memmove(v3, v3 + 1, v4 - (v3 + 1));
    }

    *(this + 3) = v3 + v5;
  }
}

CGFloat CTFontGetDescent(CTFontRef font)
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

  return *(v2 + 16);
}

double CTLineGetTypographicBounds(CTLineRef line, CGFloat *ascent, CGFloat *descent, CGFloat *leading)
{
  if (!line)
  {
    return 0.0;
  }

  v4 = *(line + 5);
  if (ascent)
  {
    *ascent = v4[14];
  }

  if (descent)
  {
    *descent = v4[15];
  }

  if (leading)
  {
    v5 = v4[16];
    if (v5 == -1.79769313e308)
    {
      v5 = 0.0;
    }

    *leading = v5;
  }

  return v4[13];
}

BOOL operator==(atomic_ullong *a1, atomic_ullong *a2)
{
  explicit = atomic_load_explicit(a1, memory_order_acquire);
  v3 = atomic_load_explicit(a2, memory_order_acquire);
  if (explicit == v3)
  {
    return 1;
  }

  if (explicit)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  return !v5 && CFEqual(explicit, v3) != 0;
}

BOOL DataEqual(CFDataRef theData, CFDataRef a2)
{
  v3 = theData == a2;
  result = theData == a2;
  if (!v3 && theData && a2)
  {
    BytePtr = CFDataGetBytePtr(theData);
    if (BytePtr == CFDataGetBytePtr(a2) && (Length = CFDataGetLength(theData), Length == CFDataGetLength(a2)))
    {
      return 1;
    }

    else
    {
      return CFEqual(theData, a2) != 0;
    }
  }

  return result;
}

BOOL std::operator==[abi:fn200100]<unsigned short,OTL::FeatureTable const*,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short const,OTL::FeatureTable const*>>>(uint64_t a1, void *a2)
{
  if (*(a1 + 24) != a2[3])
  {
    return 0;
  }

  v3 = (a1 + 16);
  do
  {
    v3 = *v3;
    v4 = v3 == 0;
    if (!v3)
    {
      break;
    }

    v5 = std::__hash_table<std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,OTL::FeatureTable const*>>>::find<unsigned short>(a2, v3 + 8);
    if (!v5)
    {
      break;
    }
  }

  while (v3[8] == *(v5 + 8) && *(v3 + 3) == v5[3]);
  return v4;
}

unint64_t TLine::CharIndexToOffsets(unint64_t this, uint64_t a2)
{
  if (*this)
  {
    v2 = this;
    v3 = *(this + 72);
    v4 = *(this + 80);
    v5 = v3 <= a2 ? a2 : *(this + 72);
    v6 = v4 + v3;
    v7 = v5 >= v4 + v3 ? v4 + v3 : v5;
    v8 = v7 - (v6 <= v5);
    if (v8 >= 0)
    {
      v9 = *(this + 24) - *(this + 16);
      this = TLine::FindRunWithCharIndex(this, v8, 1);
      if (this < v9 >> 3)
      {
        v10 = this;
        v11 = *(v2 + 16);
        if (this < (*(v2 + 24) - v11) >> 3)
        {
          v12 = *(*(v11 + 8 * this) + 40);
          if (v6 <= v5)
          {
            v13 = *(v12 + 224) ^ ((*(v2 + 152) & 8) >> 3);
LABEL_13:
            v14 = v12;
            goto LABEL_14;
          }

          LOBYTE(v13) = 0;
          v17 = *(v2 + 72);
          if (v17 >= v7 || *(v2 + 80) + v17 < v7)
          {
            goto LABEL_13;
          }

          RunWithCharIndex = TLine::FindRunWithCharIndex(v2, v7 - 1, 1);
          v19 = *(v2 + 16);
          if (RunWithCharIndex < (*(v2 + 24) - v19) >> 3)
          {
            v15 = RunWithCharIndex;
            v14 = *(*(v19 + 8 * RunWithCharIndex) + 40);
            if (RunWithCharIndex != v10)
            {
              v21 = (*(v12 + 224) & 1) == 0 || v10 + 1 != RunWithCharIndex;
              if (*(v14 + 224))
              {
                LOBYTE(v13) = v21;
              }

              else
              {
                LOBYTE(v13) = *(v12 + 224) | (RunWithCharIndex + 1 != v10);
              }

              goto LABEL_15;
            }

            LOBYTE(v13) = 0;
LABEL_14:
            v15 = v10;
LABEL_15:
            TLine::GetLeftHangersGlyphCountAndWidth(v2, 0);
            if ((v13 & 1) == 0)
            {
              operator new();
            }

            v16 = *(v12 + 224) & 1;
            v22.length = v15 + ((*(v14 + 224) & 1) == 0);
            v22.location = 0;
            TLine::GetWidthOfRuns(v2, v22);
            v23.length = v10 + v16;
            v23.location = 0;
            return TLine::GetWidthOfRuns(v2, v23);
          }
        }

        __break(1u);
      }
    }
  }

  return this;
}

CGFloat CTLineGetOffsetForStringIndex(CTLineRef line, CFIndex charIndex, CGFloat *secondaryOffset)
{
  if (!line)
  {
    return 0.0;
  }

  TLine::CharIndexToOffsets(*(line + 5), charIndex);
  if (secondaryOffset)
  {
    *secondaryOffset = v5;
  }

  return result;
}

BOOL TTruncator::AppendTruncatedRun(uint64_t a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = *(a1 + 8);
  if (a4 > v6)
  {
    return 0;
  }

  v9 = a5;
  if (a6)
  {
    v13 = a5 + a4 - 1;
    v14 = v6 < v13;
    v15 = v6 - v13;
    if (v14)
    {
      v9 = v15 + a5;
      if (v15 + a5 < 1)
      {
        return 0;
      }
    }
  }

  v21 = 0xAAAAAAAAAAAAAAAALL;
  (*(a3 + 56))(&v21, a3);
  v16 = *(atomic_load_explicit(&v21, memory_order_acquire) + 48);
  TRun::TruncateUnorderedEnd(v16, a4, v9, a6, **(a1 + 24), 2);
  v17 = *(v16 + 26);
  v7 = v17 > 0;
  if (v17 >= 1)
  {
    v20 = atomic_exchange(&v21, 0);
    v18 = atomic_exchange(&v20, 0);
    v22 = v18;
    std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::push_back[abi:fn200100](a2 + 2, &v22);
    TLine::UpdateCachedMetricsForRun(a2, *(v18 + 40));
  }

  return v7;
}

__n128 *TLine::EnumerateCaretOffsets(__n128 *this, uint64_t a2)
{
  v247 = *MEMORY[0x1E69E9840];
  if (!this->n128_u64[0])
  {
    return this;
  }

  v3 = this;
  if (!this[9].n128_u64[0])
  {
    LOBYTE(v239) = 0;
    this = std::function<void ()(double,long,BOOL,BOOL *)>::operator()(*(a2 + 24), this[4].n128_i64[1], 1, &v239, 0.0);
    if ((v239 & 1) == 0)
    {
      return std::function<void ()(double,long,BOOL,BOOL *)>::operator()(*(a2 + 24), v3[4].n128_u64[1] + v3[5].n128_u64[0] - 1, 0, &v239, 0.0);
    }

    return this;
  }

  explicit = atomic_load_explicit(&this[13], memory_order_acquire);
  if (explicit)
  {
    v5 = atomic_load_explicit(&this[12].n128_i64[1], memory_order_acquire);
    if (v5)
    {
      v6 = explicit + 16 * v5;
      do
      {
        LOBYTE(v239) = 0;
        this = std::function<void ()(double,long,BOOL,BOOL *)>::operator()(*(a2 + 24), *(explicit + 8), *(explicit + 12), &v239, *explicit);
        if (v239)
        {
          break;
        }

        explicit += 16;
      }

      while (explicit != v6);
    }

    return this;
  }

  this = TLine::GetLeftHangersGlyphCountAndWidth(this, 0);
  if (v7 == 0.0)
  {
    v8 = 0.0;
  }

  else
  {
    v8 = 0.0 - v7;
  }

  v9 = v3[9].n128_u64[0];
  if ((v9 >> 31))
  {
    return this;
  }

  this = operator new[](32 * v9, MEMORY[0x1E69E5398]);
  if (!this)
  {
    return this;
  }

  v10 = this;
  v225 = 0;
  v11 = operator new[](8 * v9, MEMORY[0x1E69E5398]);
  if (!v11)
  {
    return MEMORY[0x1865F22B0](v10, 0x1000C8099076E91);
  }

  v12 = v3[1].n128_i64[0];
  v13 = (v3[1].n128_u64[1] - v12) >> 3;
  if (v13 >= 1)
  {
    v14 = 0;
    v15 = 0;
    v16 = 0.0;
    v17 = MEMORY[0x1E695F060];
    do
    {
      v18 = *(*(v12 + 8 * v15) + 40);
      v19 = v18[39];
      if (!v19)
      {
        v19 = v17;
      }

      v16 = v16 + *v19;
      v20 = v18[26];
      if (v20 >= 1)
      {
        if (v20 + v14 > v9)
        {
          goto LABEL_266;
        }

        v21 = v18[27];
        v22 = *(v21 + 32);
        if (v22 || (v25 = *(v21 + 24)) == 0)
        {
          v23 = 0;
          v24 = (v22 + 16 * v18[25]);
        }

        else
        {
          v24 = (v25 + 8 * v18[25]);
          v23 = 1;
        }

        v26 = v24;
        do
        {
          v11[v14++] = v16;
          if (v23)
          {
            v27 = v24;
          }

          else
          {
            v27 = v26;
          }

          v16 = v16 + *v27;
          v26 += 2;
          ++v24;
          --v20;
        }

        while (v20);
      }

      ++v15;
    }

    while (v15 != v13);
  }

  v217 = v11;
  v211 = a2;
  v28 = 2 * v9;
  v224[0] = v10;
  v224[1] = &v225;
  v223 = 0.0;
  memset(v222, 170, sizeof(v222));
  ClusterRange = TLine::GetClusterRange(v3, v3->n128_u64[0], v3[4].n128_i64[1], 3, &v222[1], &v223, v222);
  v221 = v30;
  v31 = v225;
  if (v225 >= v28)
  {
    goto LABEL_265;
  }

  v32 = ClusterRange;
  v215 = 0;
  n128_u64 = 0xAAAAAAAAAAAAAAALL;
  v34 = *&v222[1];
  v35 = v217[*&v222[1]];
  v219 = v222[0];
  v36 = v222[0] < 1;
  v37 = v35 + v223;
  if (v222[0] >= 1)
  {
    v37 = v217[*&v222[1]];
  }

  v38 = &v10[v225];
  v38->n128_u32[2] = ClusterRange;
  v38->n128_u8[12] = 1;
  v38->n128_u8[13] = v36;
  v216 = v3[5].n128_u64[0] + v3[4].n128_u64[1];
  v38->n128_f64[0] = v8 + v37;
  v225 = v31 + 1;
  v214 = v28;
  v213 = v10;
  while (2)
  {
    memset(v241, 170, sizeof(v241));
    v240 = 0uLL;
    v239 = 0;
    v242 = v241;
    if (v221 < 2)
    {
      goto LABEL_134;
    }

    v218 = v34;
    v39 = *&v222[3];
    v10 = (v32 + v221);
    v40 = v32;
    do
    {
      v41 = (*(*v3->n128_u64[0] + 40))(v3->n128_u64[0], v40, 3);
      v43 = v41;
      v44 = v3[4].n128_i64[1];
      v45 = v3[5].n128_i64[0];
      v46 = v45 + v44;
      if (v41 + v42 >= v45 + v44)
      {
        v47 = v45 + v44;
      }

      else
      {
        v47 = v41 + v42;
      }

      v48 = v44 <= v41 && v41 < v46;
      if (v48)
      {
        v50 = v47 - v41;
      }

      else if (v41 <= v44 && v44 < v41 + v42)
      {
        v50 = v47 - v44;
        v43 = v3[4].n128_i64[1];
      }

      else
      {
        v43 = 0;
        v50 = 0;
      }

      if (v50 < 1)
      {
        *&v240 = v239;
        v10 = v213;
        goto LABEL_133;
      }

      v51 = v240;
      if (v240 >= *(&v240 + 1))
      {
        v53 = v239;
        v54 = v240 - v239;
        v55 = 0xAAAAAAAAAAAAAAABLL * ((v240 - v239) >> 3);
        v56 = v55 + 1;
        if (v55 + 1 > 0xAAAAAAAAAAAAAAALL)
        {
          goto LABEL_272;
        }

        if (0x5555555555555556 * ((*(&v240 + 1) - v239) >> 3) > v56)
        {
          v56 = 0x5555555555555556 * ((*(&v240 + 1) - v239) >> 3);
        }

        if (0xAAAAAAAAAAAAAAABLL * ((*(&v240 + 1) - v239) >> 3) >= 0x555555555555555)
        {
          v56 = 0xAAAAAAAAAAAAAAALL;
        }

        *(&v245[0] + 1) = v241;
        if (v56)
        {
          v57 = std::allocator_traits<TInlineBufferAllocator<std::pair<double,CFRange>,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::pair<double,CFRange>,30ul>>(v241, v56);
          v56 = v58;
          v53 = v239;
          v54 = v240 - v239;
        }

        else
        {
          v57 = 0;
        }

        v59 = (v57 + 24 * v55);
        v60 = v57 + 24 * v56;
        *v59 = v43;
        v59[1] = v50;
        v59[2] = 0;
        FullChar = (v59 + 3);
        v61 = v59 - v54;
        memcpy(v59 - v54, v53, v54);
        v243.length = v239;
        v239 = v61;
        *&v240 = FullChar;
        length = v243.length;
        v62 = *(&v240 + 1);
        *(&v240 + 1) = v60;
        *&v245[0] = v62;
        v243.location = v243.length;
        v41 = std::__split_buffer<std::pair<double,CFRange>,TInlineBufferAllocator<std::pair<double,CFRange>,30ul> &>::~__split_buffer(&v243);
        n128_u64 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        *v240 = v43;
        *(v51 + 8) = v50;
        FullChar = v51 + 24;
        *(v51 + 16) = 0;
      }

      *&v240 = FullChar;
      v40 = v43 + v50;
    }

    while (v43 + v50 < v10);
    v63 = v3->n128_u64[0];
    v226 = v3->n128_u64[0];
    if (v219 >= 0)
    {
      v28 = v39 + v218;
    }

    else
    {
      v28 = v218 - 1;
    }

    v64 = 0uLL;
    *v227 = 0u;
    v212 = v39 + v218 - 1;
    if (v219 >= 0)
    {
      v65 = v218;
    }

    else
    {
      v65 = v39 + v218 - 1;
    }

    *&v227[16] = 0uLL;
    v228 = 0uLL;
    v229 = 0uLL;
    v230 = 0uLL;
    v231 = 0uLL;
    v232 = 0uLL;
    v233 = 0uLL;
    v234 = 0uLL;
    v235 = 0uLL;
    v237 = 0;
    v236 = 0uLL;
    *&v236 = *(v63 + 16);
    if (v65 == v28)
    {
      v66 = v239;
      if (v39 >= 1)
      {
        v220 = 1;
        goto LABEL_119;
      }

      v10 = v213;
LABEL_132:
      *&v240 = v66;
LABEL_133:
      v28 = v214;
      goto LABEL_134;
    }

    v220 = 1;
    do
    {
      v67 = v3[1].n128_i64[0];
      v68 = v3[1].n128_i64[1];
      if (v67 == v68)
      {
        n128_u64 = 0xAAAAAAAAAAAAAAAALL;
        v70 = v3[1].n128_i64[0];
      }

      else
      {
        v69 = 0;
        v70 = v3[1].n128_i64[0];
        v71 = v70;
        while (1)
        {
          v72 = *(*(*v71 + 40) + 208) + v69;
          if (v72 > v65)
          {
            break;
          }

          v71 += 8;
          v70 += 8;
          v69 = v72;
          if (v71 == v68)
          {
            n128_u64 = 0xAAAAAAAAAAAAAAAALL;
            v70 = v3[1].n128_i64[1];
            goto LABEL_83;
          }
        }

        n128_u64 = v65 - v69;
      }

LABEL_83:
      v73 = v70 - v67;
      if (v68 - v67 <= v73)
      {
        goto LABEL_269;
      }

      v74 = *(*(v67 + v73) + 40);
      v75 = *(v74 + 8);
      v76 = *(v74 + 16) + v75;
      if (v10 >= v76)
      {
        v77 = *(v74 + 16) + v75;
      }

      else
      {
        v77 = v32 + v221;
      }

      v78 = v77 - v75;
      v79 = v32 <= v75 && v75 < v10;
      if (v79)
      {
        v80 = *(v74 + 8);
      }

      else
      {
        v80 = 0;
      }

      if (!v79)
      {
        v78 = 0;
      }

      v81 = v77 - v32;
      v82 = v75 <= v32 && v32 < v76;
      if (v82)
      {
        v83.location = v32;
      }

      else
      {
        v83.location = v80;
      }

      if (v82)
      {
        v83.length = v81;
      }

      else
      {
        v83.length = v78;
      }

      if (!TRun::IsRangeMonotonic(v74, v83))
      {
LABEL_130:
        v66 = v239;
        v10 = v213;
        n128_u64 = 0xAAAAAAAAAAAAAAALL;
        goto LABEL_132;
      }

      v238[0] = *(*(*(v74 + 216) + 48) + 8 * *(v74 + 200) + 8 * n128_u64);
      v243.length = 0xAAAAAAAAAAAAAAAALL;
      v243.location = 0xAAAAAAAAAAAAAAAALL;
      FullChar = TCharStreamIterator::GetFullChar(&v226, v238, &v243);
      if (!CFUniCharIsMemberOf())
      {
        if (!CFUniCharIsMemberOf())
        {
          goto LABEL_112;
        }

        if (v239 != v240 && v243.location == *(v240 - 24) && v243.length == *(v240 - 16))
        {
          *&v240 = v240 - 24;
        }
      }

      --v39;
LABEL_112:
      if ((FullChar - 1792) >> 9 < 0xB || FullChar >> 8 > 0x30 || (FullChar - 11904) <= 0x17F)
      {
        v220 = 0;
      }

      v41 = [*(v74 + 216) attachmentCountAtIndex:{*(v74 + 200) + n128_u64, v211}];
      v39 -= v41;
      if (v39 < 1)
      {
        goto LABEL_130;
      }

      v65 += v219;
      n128_u64 = 0xAAAAAAAAAAAAAAALL;
    }

    while (v65 != v28);
    v66 = v239;
    FullChar = v240;
LABEL_119:
    v10 = v213;
    if (v39 != 0xAAAAAAAAAAAAAAABLL * ((FullChar - v66) >> 3))
    {
      goto LABEL_132;
    }

    if (v219 < 0)
    {
      if (v66 != FullChar)
      {
        v84 = (FullChar - 24);
        if (FullChar - 24 > v66)
        {
          do
          {
            v85 = v66->n128_u64[0];
            v86 = v66->n128_u64[1];
            v64 = *v84;
            *v66 = *v84;
            v84->n128_u64[0] = v85;
            v84->n128_u64[1] = v86;
            v64.n128_u64[0] = v66[1].n128_u64[0];
            v66[1].n128_u64[0] = v84[1].n128_u64[0];
            v84[1].n128_u64[0] = v64.n128_u64[0];
            v66 = (v66 + 24);
            v84 = (v84 - 24);
          }

          while (v66 < v84);
        }
      }

      v218 = v212;
    }

    v87 = v3[1].n128_i64[0];
    v88 = v3[1].n128_i64[1];
    if (v87 == v88)
    {
      v93 = 0xAAAAAAAAAAAAAAAALL;
      v90 = v3[1].n128_i64[0];
    }

    else
    {
      v89 = 0;
      v90 = v3[1].n128_i64[0];
      v91 = v90;
      while (1)
      {
        v92 = *(*(*v91 + 40) + 208) + v89;
        if (v92 > v218)
        {
          break;
        }

        v91 += 8;
        v90 += 8;
        v89 = v92;
        if (v91 == v88)
        {
          v93 = 0xAAAAAAAAAAAAAAAALL;
          v90 = v3[1].n128_i64[1];
          goto LABEL_149;
        }
      }

      v93 = v218 - v89;
    }

LABEL_149:
    v110 = v90 - v87;
    if (v88 - v87 <= v110)
    {
      goto LABEL_269;
    }

    v111 = *(*(v87 + v110) + 40);
    v112 = v111[27];
    v113 = *(v112 + 32);
    if (v113 || (v115 = *(v112 + 24)) == 0)
    {
      v114 = (v113 + 16 * v111[25] + 16 * v93);
    }

    else
    {
      v114 = (v115 + 8 * v111[25] + 8 * v93);
    }

    v116 = *v114;
    v117 = atomic_load_explicit(v111 + 7, memory_order_acquire);
    FullChar = *(*(v111[27] + 16) + 2 * v111[25] + 2 * v93);
    *&v118 = 0xAAAAAAAAAAAAAAAALL;
    *(&v118 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v245[13] = v118;
    v245[14] = v118;
    v245[11] = v118;
    v245[12] = v118;
    v245[9] = v118;
    v245[10] = v118;
    v245[7] = v118;
    v245[8] = v118;
    v245[5] = v118;
    v245[6] = v118;
    v245[3] = v118;
    v245[4] = v118;
    v245[1] = v118;
    v245[2] = v118;
    v245[0] = v118;
    v243.location = 0;
    length = 0;
    v243.length = 0;
    v246 = v245;
    v119 = v39 - 1;
    if (v39 == 1)
    {
      v120 = 0;
      if (!v117)
      {
        goto LABEL_237;
      }
    }

    else
    {
      v120 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<long,30ul>>(v245, v39 - 1);
      v243.location = v120;
      length = v120 + 8 * v121;
      bzero(v120, 8 * v39 - 8);
      v243.length = v120 + 8 * v119;
      if (!v117)
      {
        goto LABEL_237;
      }
    }

    if (v39 == 1 || v120)
    {
      LigatureCaretPositionsForGlyph = TFont::GetLigatureCaretPositionsForGlyph(*(v117 + 40), FullChar, v120, v39 - 1);
    }

    else
    {
LABEL_237:
      LigatureCaretPositionsForGlyph = 0;
    }

    if (LigatureCaretPositionsForGlyph >= v39)
    {
      v28 = v39 - 1;
    }

    else
    {
      v28 = LigatureCaretPositionsForGlyph;
    }

    std::vector<double,TInlineBufferAllocator<double,30ul>>::resize(&v243, v28);
    LOBYTE(v238[0]) = -86;
    v41 = std::__sort<std::__less<double,double> &,double *>();
    v123 = v119 - v28;
    if (((v119 > v28) & v220) != 1)
    {
      if (v123 <= 0)
      {
        v124 = v243.length;
        goto LABEL_187;
      }

      *&v240 = v239;
      v238[0] = &v243;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v238);
      goto LABEL_133;
    }

    v124 = v243.length;
    if (v28 < 1)
    {
      v125 = 0.0;
      v64.n128_f64[0] = v116;
      goto LABEL_171;
    }

    if (v243.location == v243.length)
    {
LABEL_269:
      __break(1u);
LABEL_270:
      v210 = v41;
      std::__stable_sort<std::_ClassicAlgPolicy,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_2 &,TLine::CaretInfo *>(v10, n128_u64, FullChar, v41, v28, v64);
      operator delete(v210);
      v192 = v211;
      goto LABEL_258;
    }

    v125 = *(v243.length - 8);
    v64.n128_f64[0] = v116 - v125;
LABEL_171:
    v126 = (v243.length - v243.location) >> 3;
    if (v126 < v119)
    {
      v127 = v64.n128_f64[0] / (v123 + 1);
      v128 = ~v126 + v39;
      do
      {
        v125 = v127 + v125;
        if (v124 >= length)
        {
          location = v243.location;
          v130 = v124 - v243.location;
          v131 = (v124 - v243.location) >> 3;
          v132 = v131 + 1;
          if ((v131 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v133 = length - v243.location;
          if ((length - v243.location) >> 2 > v132)
          {
            v132 = v133 >> 2;
          }

          v134 = v133 >= 0x7FFFFFFFFFFFFFF8;
          v135 = 0x1FFFFFFFFFFFFFFFLL;
          if (!v134)
          {
            v135 = v132;
          }

          v238[4] = v245;
          if (v135)
          {
            v136 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<long,30ul>>(v245, v135);
            v135 = v137;
            location = v243.location;
            v130 = v243.length - v243.location;
            v138 = (v243.length - v243.location) >> 3;
          }

          else
          {
            v136 = 0;
            v138 = (v124 - v243.location) >> 3;
          }

          v139 = (v136 + 8 * v131);
          FullChar = v136 + 8 * v135;
          v28 = &v139[-v138];
          *v139 = v125;
          v124 = v139 + 1;
          memcpy(v28, location, v130);
          v140 = v243.location;
          v243.location = v28;
          v243.length = v124;
          v141 = length;
          length = FullChar;
          v238[2] = v140;
          v238[3] = v141;
          v238[0] = v140;
          v238[1] = v140;
          v41 = std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(v238);
        }

        else
        {
          *v124++ = v125;
        }

        v243.length = v124;
        --v128;
      }

      while (v128);
    }

LABEL_187:
    v142 = v243.location;
    v144 = v239;
    v143 = v240;
    if (v124 != v243.location)
    {
      v145 = (v124 - v243.location) >> 3;
      v146 = 0xAAAAAAAAAAAAAAABLL * ((v240 - v239) >> 3);
      if (v145 <= 1)
      {
        v145 = 1;
      }

      v147 = (v239 + 16);
      while (v146)
      {
        v148 = *v142++;
        v64.n128_u64[0] = v148;
        *v147 = v148;
        v147 += 3;
        --v146;
        if (!--v145)
        {
          goto LABEL_193;
        }
      }

      goto LABEL_269;
    }

LABEL_193:
    if (v144 == v143)
    {
      goto LABEL_269;
    }

    *(v143 - 1) = v116;
    v238[0] = &v243;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v238);
    v150 = v239;
    v149 = v240;
    v28 = v214;
    if (v240 < *(&v240 + 1))
    {
      if (v239 == v240)
      {
        *(v240 + 8) = 0;
        *(v149 + 2) = 0;
        *v149 = -1;
        *&v240 = v149 + 24;
      }

      else
      {
        v151 = v240;
        if (v240 >= 0x18)
        {
          v151 = v240 + 24;
          v64 = *(v240 - 24);
          *(v240 + 16) = *(v240 - 8);
          *v149 = v64;
        }

        *&v240 = v151;
        if (v149 != v150 + 24)
        {
          v152 = 0;
          do
          {
            v153 = &v149[v152];
            v64 = *&v149[v152 - 48];
            *(v153 - 24) = v64;
            v64.n128_u64[0] = *&v149[v152 - 32];
            *(v153 - 1) = v64.n128_u64[0];
            v152 -= 24;
          }

          while (v150 - v149 + 24 != v152);
        }

        *(v150 + 1) = 0;
        *(v150 + 2) = 0;
        *v150 = -1;
      }

      goto LABEL_215;
    }

    v226 = 0;
    *v227 = 0;
    *&v227[8] = 0;
    v154 = 1 - 0x5555555555555555 * ((v240 - v239) >> 3);
    if (v154 > 0xAAAAAAAAAAAAAAALL)
    {
LABEL_272:
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    if (0x5555555555555556 * ((*(&v240 + 1) - v239) >> 3) > v154)
    {
      v154 = 0x5555555555555556 * ((*(&v240 + 1) - v239) >> 3);
    }

    if (0xAAAAAAAAAAAAAAABLL * ((*(&v240 + 1) - v239) >> 3) >= 0x555555555555555)
    {
      v155 = 0xAAAAAAAAAAAAAAALL;
    }

    else
    {
      v155 = v154;
    }

    *&v227[24] = v241;
    if (!v155)
    {
      v157 = 0;
      FullChar = 0;
      *&v227[16] = 0;
      goto LABEL_213;
    }

    FullChar = std::allocator_traits<TInlineBufferAllocator<std::pair<double,CFRange>,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::pair<double,CFRange>,30ul>>(v241, v155);
    v157 = FullChar + 24 * v156;
    *&v227[16] = v157;
    if (!v156)
    {
LABEL_213:
      *(&v245[0] + 1) = v241;
      v158 = std::allocator_traits<TInlineBufferAllocator<std::pair<double,CFRange>,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::pair<double,CFRange>,30ul>>(v241, 1uLL);
      v243.location = FullChar;
      v243.length = FullChar;
      length = FullChar;
      *&v227[16] = v158 + 24 * v159;
      *&v245[0] = v157;
      std::__split_buffer<std::pair<double,CFRange>,TInlineBufferAllocator<std::pair<double,CFRange>,30ul> &>::~__split_buffer(&v243);
      FullChar = v158;
    }

    *(FullChar + 8) = 0;
    *(FullChar + 16) = 0;
    *FullChar = -1;
    v160 = v240 - v150;
    memcpy((FullChar + 24), v150, v240 - v150);
    *&v227[8] = FullChar + 24 + v160;
    *&v240 = v150;
    v161 = (FullChar - (v150 - v239));
    memcpy(v161, v239, v150 - v239);
    v162 = v239;
    v239 = v161;
    v163 = *(&v240 + 1);
    v240 = *&v227[8];
    *&v227[8] = v162;
    *&v227[16] = v163;
    v226 = v162;
    *v227 = v162;
    std::__split_buffer<std::pair<double,CFRange>,TInlineBufferAllocator<std::pair<double,CFRange>,30ul> &>::~__split_buffer(&v226);
    v28 = v214;
LABEL_215:
    v164 = 0xAAAAAAAAAAAAAAABLL * ((v240 - v239) >> 3);
    v165 = v222[0];
    if (v222[0] < 0)
    {
      v166 = 1;
    }

    else
    {
      v166 = v164 - 1;
    }

    if (v164 != 2)
    {
      if (v222[0] >= 0)
      {
        v167 = 1;
      }

      else
      {
        v167 = v164 - 1;
      }

      v168 = v225;
      v169 = &v213[v225];
      v170 = &v239[24 * v167 + 8];
      v171 = 24 * v222[0];
      v172 = v167 - 1;
      v173 = &v239[24 * v167 + 8 + 24 * v222[0]];
      v174 = -v166;
      do
      {
        v41 = v172 + 1;
        if (v164 <= v172 + 1)
        {
          goto LABEL_269;
        }

        if (v168 >= v28)
        {
          goto LABEL_271;
        }

        if (v164 <= v172)
        {
          goto LABEL_269;
        }

        v175 = *(v170 - 2);
        v176 = v35 + v175;
        if (v165 < 1)
        {
          v177 = 0;
        }

        else
        {
          v176 = v176 + v170[1] - v175;
          v177 = 1;
        }

        v169->n128_u32[2] = *v170 + *(v170 - 1) - 1;
        v169->n128_u8[12] = 0;
        v169->n128_u8[13] = v177;
        v64.n128_f64[0] = v8 + v176;
        v169->n128_u64[0] = v64.n128_u64[0];
        v178 = v168 + 1;
        v225 = v178;
        v41 = v165 + v172 + 1;
        if (v164 <= v41)
        {
          goto LABEL_269;
        }

        if (v178 >= v28)
        {
          goto LABEL_271;
        }

        v41 = v165 + v172;
        if (v164 <= v165 + v172)
        {
          goto LABEL_269;
        }

        v32 = *(v173 - 1);
        v179 = *v173;
        v180 = *(v173 - 2);
        v181 = v35 + v180;
        v182 = v35 + v180 + *(v173 + 1) - v180;
        if (v165 >= 1)
        {
          v182 = v181;
        }

        v169[1].n128_u32[2] = v32;
        v169[1].n128_u8[12] = 1;
        v169[1].n128_u8[13] = v165 < 1;
        v64.n128_f64[0] = v8 + v182;
        v169[1].n128_u64[0] = v64.n128_u64[0];
        v168 = v178 + 1;
        v225 = v168;
        v169 += 2;
        v170 = (v170 + v171);
        v172 += v165;
        v173 += v171;
      }

      while (v174 + v172 != -1);
      v221 = v179;
    }

LABEL_134:
    v94 = v225;
    if (v225 >= v28)
    {
      break;
    }

    v95 = v222[0];
    v96 = v222[0] > 0;
    v97 = v35 + v223;
    if (v222[0] <= 0)
    {
      v97 = v35;
    }

    v98 = v221 + v32;
    v99 = &v10[v225];
    v99->n128_u32[2] = v221 + v32 - 1;
    v99->n128_u8[12] = 0;
    v99->n128_u8[13] = v96;
    v99->n128_f64[0] = v8 + v97;
    v225 = v94 + 1;
    if (v221 + v32 >= v216 || (v100 = TLine::GetClusterRange(v3, v3->n128_u64[0], v98, 3, &v222[1], &v223, v222), v100 > v98) || (v32 = v100, v100 + v101 <= v98))
    {
      std::vector<std::pair<CFRange,double>,TInlineBufferAllocator<std::pair<CFRange,double>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v239);
      TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)const::$_0::operator()(v224, v215, v222[0], v183, v184, v185, v186);
      FullChar = v225;
      if (v225 < 3)
      {
        v205 = 0;
        n128_u64 = v10[v225].n128_u64;
LABEL_255:
        v192 = v211;
      }

      else
      {
        v187 = v10[1].n128_u32[2];
        v188 = v10 + 1;
        v189 = -1;
        v190 = 1;
        v191 = 2;
        v192 = v211;
        do
        {
          v193 = v190;
          v190 = v191;
          v194 = v187;
          v195 = &v10[v191];
          v187 = v195->n128_u32[2];
          if (v194 == v187)
          {
            v196 = v10[v193].n128_f64[0];
            if (v196 == v195->n128_f64[0])
            {
              v197 = v189;
              v198 = v188;
              while (1)
              {
                v134 = __CFADD__(v197++, 1);
                if (v134)
                {
                  break;
                }

                n128_f64 = v198[-1].n128_f64;
                v200 = v198[-1].n128_u8[13];
                --v198;
                if (v200 == 1)
                {
                  *n128_f64 = v196;
                  break;
                }
              }
            }
          }

          v191 = v190 + 1;
          ++v188;
          --v189;
        }

        while (v190 + 1 != FullChar);
        v201 = v10[2].n128_f64;
        v202 = 2;
        v64.n128_u64[0] = 0.5;
        do
        {
          v203 = (*(v201 - 2) + *v201) * 0.5;
          *(v201 - 2) = v203;
          *v201 = v203;
          v201 += 4;
          v202 += 2;
        }

        while (v202 < FullChar);
        n128_u64 = v10[FullChar].n128_u64;
        if (FullChar >= 129)
        {
          v204 = MEMORY[0x1E69E5398];
          v28 = FullChar;
          while (1)
          {
            v41 = operator new(16 * v28, v204);
            if (v41)
            {
              goto LABEL_270;
            }

            v205 = v28 >> 1;
            v48 = v28 > 1;
            v28 >>= 1;
            if (!v48)
            {
              goto LABEL_255;
            }
          }
        }

        v205 = 0;
      }

      std::__stable_sort<std::_ClassicAlgPolicy,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_2 &,TLine::CaretInfo *>(v10, n128_u64, FullChar, 0, v205, v64);
LABEL_258:
      v206 = v225;
      if (v225)
      {
        v207 = &v10[v225];
        v208 = v10;
        do
        {
          LOBYTE(v239) = 0;
          std::function<void ()(double,long,BOOL,BOOL *)>::operator()(*(v192 + 24), v208->n128_u32[2], v208->n128_i8[12], &v239, v208->n128_f64[0]);
          if (v239)
          {
            break;
          }

          ++v208;
        }

        while (v208 != v207);
        v206 = v225;
      }

      v209 = 0;
      atomic_store(v206, &v3[12].n128_u64[1]);
      atomic_compare_exchange_strong(&v3[13], &v209, v10);
      if (!v209)
      {
        v10 = 0;
      }

      goto LABEL_265;
    }

    v221 = v101;
    if (v222[0] == v95)
    {
      v106 = v225;
    }

    else
    {
      TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)const::$_0::operator()(v224, v215, v95, v102, v103, v104, v105);
      v106 = v225;
      v215 = v225;
    }

    if (v106 < v28)
    {
      v35 = v217[*&v222[1]];
      v107 = v222[0] < 1;
      v108 = v35 + v223;
      if (v222[0] >= 1)
      {
        v108 = v217[*&v222[1]];
      }

      v109 = &v10[v106];
      v109->n128_u32[2] = v32;
      v109->n128_u8[12] = 1;
      v109->n128_u8[13] = v107;
      v109->n128_f64[0] = v8 + v108;
      v225 = v106 + 1;
      std::vector<std::pair<CFRange,double>,TInlineBufferAllocator<std::pair<CFRange,double>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v239);
      v34 = *&v222[1];
      v219 = v222[0];
      continue;
    }

    break;
  }

LABEL_271:
  std::vector<std::pair<CFRange,double>,TInlineBufferAllocator<std::pair<CFRange,double>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v239);
LABEL_265:
  v11 = v217;
LABEL_266:
  this = MEMORY[0x1865F22B0](v11, 0x1000C8000313F17);
  if (v10)
  {
    return MEMORY[0x1865F22B0](v10, 0x1000C8099076E91);
  }

  return this;
}

uint64_t TLine::GetClusterRange(const TLine *a1, void *a2, uint64_t a3, uint64_t a4, void *a5, double *a6, int *a7)
{
  result = TLine::FindRunWithCharIndex(a1, a3, 1);
  if (result < 1)
  {
    v16 = 0;
    return TLine::GetClusterRange(a1, a2, result, v16, a3, a4, a5, a6, a7);
  }

  v15 = *(a1 + 2);
  if (result - 1 < ((*(a1 + 3) - v15) >> 3))
  {
    v16 = 0;
    v17 = result;
    do
    {
      v18 = *v15++;
      v16 += *(*(v18 + 40) + 208);
      --v17;
    }

    while (v17);
    return TLine::GetClusterRange(a1, a2, result, v16, a3, a4, a5, a6, a7);
  }

  __break(1u);
  return result;
}

uint64_t TLine::GetClusterRange(const TLine *a1, void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, double *a8, int *a9)
{
  v16 = objc_opt_new();
  v18 = *(a1 + 2);
  v17 = *(a1 + 3);
  v149 = a6;
  result = (*(*a2 + 40))(a2, a5, a6);
  v21 = *(a1 + 9);
  v22 = *(a1 + 10) + v21;
  if (result + v20 >= v22)
  {
    v23 = *(a1 + 10) + v21;
  }

  else
  {
    v23 = result + v20;
  }

  v24 = v23 - v21;
  v25 = result <= v21 && v21 < result + v20;
  if (v25)
  {
    v26 = *(a1 + 9);
  }

  else
  {
    v26 = 0;
  }

  if (!v25)
  {
    v24 = 0;
  }

  v27 = v23 - result;
  v28 = v21 <= result && result < v22;
  if (v28)
  {
    v29 = result;
  }

  else
  {
    v29 = v26;
  }

  if (v28)
  {
    v30 = v27;
  }

  else
  {
    v30 = v24;
  }

  v173 = v30;
  v31 = *(a1 + 2);
  if (a3 >= (*(a1 + 3) - v31) >> 3)
  {
LABEL_205:
    __break(1u);
    return result;
  }

  v145 = a7;
  v158 = a3;
  v32 = *(*(v31 + 8 * a3) + 40);
  GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<true>(v32, a5);
  v161 = (~*(*(*(v32 + 216) + 40) + 4 * *(v32 + 200) + 4 * GlyphIndexForChar) & 0x1020) == 0;
  v153 = *(v32 + 224);
  v150 = *(v32 + 304);
  v177 = a2;
  v188 = 0u;
  v178 = 0u;
  v179 = 0u;
  v180 = 0u;
  v181 = 0u;
  v182 = 0u;
  v183 = 0u;
  v184 = 0u;
  v185 = 0u;
  v186 = 0u;
  v187 = 0u;
  v34 = a2[2];
  v189 = 0;
  *&v188 = v34;
  v35 = CharRangeForGlyphIndex(a1, &v177, *(v32 + 200), *(v32 + 216), GlyphIndexForChar);
  v169 = v36;
  result = [v16 addIndexesInRange:{v35, v36}];
  v37 = *(v32 + 216);
  v38 = v37[4];
  if (v38 || (v41 = v37[3]) == 0)
  {
    v39 = *(v32 + 200);
    v165 = v38 + 16 * v39;
    v40 = (v165 + 16 * GlyphIndexForChar);
    v163 = 2;
    v156 = 2;
  }

  else
  {
    v39 = *(v32 + 200);
    v165 = v41 + 8 * v39;
    v40 = (v165 + 8 * GlyphIndexForChar);
    v156 = 1;
    v163 = 1;
  }

  v144 = a9;
  v174 = GlyphIndexForChar + a4;
  v42 = *v40;
  v171 = v16;
  v172 = a1;
  v168 = v35;
  v152 = a2;
  if ((*(v37[5] + 4 * v39 + 4 * GlyphIndexForChar) & 0x404) == 0)
  {
    v43 = *(v32 + 232);
    v44 = 0.0;
    if (v43)
    {
      v45 = v39 + GlyphIndexForChar - *(v32 + 248);
      v46 = *v43;
      if (v45 < (*(*(v32 + 232) + 8) - v46) >> 3)
      {
        v44 = *(v46 + 8 * v45);
      }
    }

    v42 = v42 - v44;
  }

  v155 = (v17 - v18) >> 3;
  v154 = *(v32 + 224);
  if (v154)
  {
    v47 = -1;
  }

  else
  {
    v47 = 1;
  }

  v147 = v47;
  v148 = GlyphIndexForChar;
  v159 = *(v32 + 208);
  v176 = 1;
  if (*(v32 + 224))
  {
    v48 = 1;
  }

  else
  {
    v48 = -1;
  }

  v166 = v32;
  v167 = v48;
  if (*(v32 + 224))
  {
    v49 = 0;
  }

  else
  {
    v49 = -1;
  }

  v151 = v49;
  v50 = v165;
  v51 = v32;
  v52 = GlyphIndexForChar;
  v170 = v32 + 192;
  v53 = v32 + 192;
  v54 = v158;
  while (1)
  {
    v52 += v167;
    if (v52 >= 0 && v159 > v52)
    {
      v55 = v51;
      goto LABEL_57;
    }

    v54 += v167;
    if (v54 < 0 || v155 <= v54)
    {
      break;
    }

    v56 = *(v172 + 2);
    if (v54 >= ((*(v172 + 3) - v56) >> 3))
    {
      goto LABEL_205;
    }

    v55 = *(*(v56 + 8 * v54) + 40);
    if (*(v55 + 24) != v51 || *(v55 + 224) != v153 || *(v55 + 304) != v150)
    {
      break;
    }

    v57 = *(v55 + 216);
    v58 = *(v57 + 32);
    if (v58 || (v60 = *(v57 + 24)) == 0)
    {
      v50 = v58 + 16 * *(v55 + 200);
      v59 = 2;
    }

    else
    {
      v50 = v60 + 8 * *(v55 + 200);
      v59 = 1;
    }

    v163 = v59;
    v53 = v55 + 192;
    v159 = *(v55 + 208);
    if (v154)
    {
      v52 = 0;
    }

    else
    {
      v52 = v159 - 1;
    }

LABEL_57:
    v61 = CharRangeForGlyphIndex(v172, &v177, *(v53 + 8), *(v53 + 24), v52);
    v63 = v61;
    v64 = v62;
    v65 = v61 + v62;
    v66 = v173 + v29;
    if (v61 + v62 >= v173 + v29)
    {
      v67 = v173 + v29;
    }

    else
    {
      v67 = v61 + v62;
    }

    v68 = v29 <= v61 && v61 < v66;
    v69 = v61;
    if ((v68 || (v61 <= v29 ? (v70 = v29 < v65) : (v70 = 0), v69 = v29, v70)) && v67 != v69)
    {
      v161 = 0;
    }

    else
    {
      result = TCharStream::GetClusterRangeForRange(v152, v61, v62, v149);
      v72 = result + v71;
      if (result + v71 >= v66)
      {
        v73 = v173 + v29;
      }

      else
      {
        v73 = result + v71;
      }

      if (v29 > result || result >= v66)
      {
        v74 = v73 - v29;
        if (v29 >= v72 || result > v29)
        {
          v74 = 0;
        }
      }

      else
      {
        v74 = v73 - result;
      }

      if (v74 > 0 || v66 <= result)
      {
        v161 = 0;
      }

      else
      {
        if (!v161 || v72 != v29)
        {
          break;
        }

        v77 = *(*(*(v53 + 24) + 40) + 4 * *(v53 + 8) + 4 * v52);
        if ((v77 & 0x20) != 0)
        {
          v78 = (v77 >> 12) & 1;
        }

        else
        {
          LOBYTE(v78) = 0;
        }

        v161 = v78;
      }

      if (result < v29)
      {
        v29 = result;
      }

      if (v66 > v72)
      {
        v72 = v66;
      }

      v173 = v72 - v29;
    }

    result = [v171 addIndexesInRange:{v63, v64, v144}];
    v79 = v168;
    v80 = v169 + v168;
    if (v63 < v168)
    {
      v79 = v63;
    }

    if (v80 <= v65)
    {
      v80 = v65;
    }

    v168 = v79;
    v169 = v80 - v79;
    v174 += v151;
    ++v176;
    v81 = (v50 + 8 * v52);
    if (v163 != 1)
    {
      v81 = (v50 + 16 * v52);
    }

    v42 = v42 + *v81;
    v51 = v55;
  }

  v82 = v148;
  if (v154)
  {
    v83 = -1;
  }

  else
  {
    v83 = 0;
  }

  v162 = v83;
  v164 = *(v166 + 208);
  v160 = v166;
  v85 = v168;
  v84 = v169;
  v86 = v174;
  v87 = v156;
  while (1)
  {
    v82 += v147;
    v88 = v170;
    if (v82 >= 0 && v164 > v82)
    {
      goto LABEL_125;
    }

    v175 = v86;
    v89 = v158 + v147;
    if (v89 < 0 || v155 <= v89)
    {
      break;
    }

    v90 = *(v172 + 2);
    if (v89 >= ((*(v172 + 3) - v90) >> 3))
    {
      goto LABEL_205;
    }

    v91 = *(*(v90 + 8 * v89) + 40);
    if (*(v91 + 32) != v166 || *(v91 + 224) != v153 || *(v91 + 304) != v150)
    {
      break;
    }

    v92 = *(v91 + 216);
    v93 = *(v92 + 32);
    v158 += v147;
    if (v93 || (v94 = *(v92 + 24)) == 0)
    {
      v165 = v93 + 16 * *(v91 + 200);
      v87 = 2;
    }

    else
    {
      v165 = v94 + 8 * *(v91 + 200);
      v87 = 1;
    }

    v88 = v91 + 192;
    v164 = *(v91 + 208);
    if (v154)
    {
      v82 = v164 - 1;
    }

    else
    {
      v82 = 0;
    }

    v166 = v91;
LABEL_125:
    v95 = *(v88 + 24);
    v170 = v88;
    v96 = *(v88 + 8);
    v97 = *(v95[5] + 4 * v96 + 4 * v82);
    v98 = CharRangeForGlyphIndex(v172, &v177, v96, v95, v82);
    v100 = v98;
    v101 = v99;
    if ((v97 & 0x20) != 0)
    {
      v115 = v173 + v29;
      if (v98 < v29)
      {
        v29 = v98;
      }

      v102 = v98 + v99;
      if (v115 <= v98 + v99)
      {
        v115 = v98 + v99;
      }

      v173 = v115 - v29;
    }

    else
    {
      v157 = v87;
      v102 = v98 + v99;
      v103 = v173 + v29;
      if (v98 + v99 >= v173 + v29)
      {
        v104 = v173 + v29;
      }

      else
      {
        v104 = v98 + v99;
      }

      v105 = v29 <= v98 && v98 < v103;
      v106 = v98;
      if ((v105 || v98 <= v29 && (v106 = v29, v29 < v102)) && v104 != v106)
      {
        v148 = v82;
        v160 = v166;
      }

      else
      {
        v175 = v86;
        v107 = v84;
        ClusterRangeForRange = TCharStream::GetClusterRangeForRange(v152, v98, v99, v149);
        v110 = ClusterRangeForRange;
        v111 = ClusterRangeForRange + v109;
        if (ClusterRangeForRange + v109 >= v103)
        {
          v112 = v173 + v29;
        }

        else
        {
          v112 = ClusterRangeForRange + v109;
        }

        if ((v29 > ClusterRangeForRange || (v113 = ClusterRangeForRange, ClusterRangeForRange >= v103)) && (ClusterRangeForRange > v29 || (v113 = v29, v29 >= v111)) || v112 == v113)
        {
          if ([v171 countOfIndexesInRange:{v29, v173, v144}] == v173)
          {
            break;
          }
        }

        if (v110 < v29)
        {
          v29 = v110;
        }

        if (v103 <= v111)
        {
          v114 = v111;
        }

        else
        {
          v114 = v103;
        }

        v173 = v114 - v29;
        v148 = v82;
        v160 = v166;
        v84 = v107;
        v86 = v175;
      }

      v87 = v157;
    }

    result = [v171 addIndexesInRange:{v100, v101, v144}];
    v116 = v84 + v85;
    if (v100 < v85)
    {
      v85 = v100;
    }

    if (v116 <= v102)
    {
      v116 = v102;
    }

    v84 = v116 - v85;
    ++v176;
    v86 += v162;
    v117 = (v165 + 8 * v82);
    if (v87 != 1)
    {
      v117 = (v165 + 16 * v82);
    }

    v42 = v42 + *v117;
  }

  if (v145)
  {
    *v145 = v175;
    v145[1] = v176;
  }

  if (v144)
  {
    *v144 = v147;
  }

  if (a8)
  {
    v118 = *(v160 + 216);
    v119 = v118[4];
    if (v119 || (v123 = v118[3]) == 0)
    {
      v120 = 0;
      v121 = *(v160 + 200);
      v122 = v119 + 16 * v121;
    }

    else
    {
      v121 = *(v160 + 200);
      v122 = v123 + 8 * v121;
      v120 = 1;
    }

    if ((*(v160 + 178) & 0x40) == 0 && (*(v118[5] + 4 * v121 + 4 * v148) & 0x1446) == 0)
    {
      v126 = *(v118[6] + 8 * v121 + 8 * v148);
      v127 = (*(*v152 + 40))();
      v128 = *(v172 + 9);
      if (v128 < v127 + v129 && v127 <= v128)
      {
        v131 = *(v172 + 9);
      }

      else
      {
        v131 = 0;
      }

      if (v128 <= v127 && v127 < *(v172 + 10) + v128)
      {
        v133 = v127;
      }

      else
      {
        v133 = v131;
      }

      if (v133 == v126 && !atomic_load_explicit((*(atomic_load_explicit((v160 + 56), memory_order_acquire) + 40) + 176), memory_order_acquire))
      {
        v134 = 3;
        if (!v120)
        {
          v134 = 4;
        }

        v135 = *(v122 + (v148 << v134));
        v136 = *(v160 + 232);
        v137 = 0.0;
        if (v136)
        {
          v138 = *(v160 + 200) + v148 - *(v160 + 248);
          v139 = *v136;
          if (v138 < (*(*(v160 + 232) + 8) - v139) >> 3)
          {
            v137 = *(v139 + 8 * v138);
          }
        }

        v140 = v42 - (v135 - v137);
        v141 = *(atomic_load_explicit((v160 + 56), memory_order_acquire) + 40);
        v142 = *(*(*(v160 + 216) + 16) + 2 * *(v160 + 200) + 2 * v148);
        RenderingStyle = TAttributes::GetRenderingStyle((v160 + 40));
        v191[0] = v142;
        v190 = NAN;
        TFont::GetUnsummedAdvancesForGlyphs(v141, v191, &v190, 1, 1, 0, RenderingStyle & 0xFFFFFFFFFFLL);
        v42 = v140 + v190;
      }

      else
      {
        v190 = NAN;
        if (TAttributes::GetKernSetting((v160 + 40), &v190, 0))
        {
          v42 = v42 - v190;
          if (v42 < 0.0)
          {
            v42 = 0.0;
          }
        }
      }
    }

    if (_os_feature_enabled_impl())
    {
      if (v148 == *(v160 + 208) - 1)
      {
        v124 = COERCE_DOUBLE(TStorageRange::GetOriginalFinalAdvanceWidth((v160 + 192)));
        if (v125)
        {
          v42 = v124;
        }
      }
    }

    *a8 = v42;
  }

  return v85;
}

void CTLineGetDefaultBounds(uint64_t a1, double *a2, double *a3, double *a4)
{
  v14 = 0.0;
  v15 = 0.0;
  v13 = 0.0;
  if (!a1)
  {
    if (!a2)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

  v7 = *(a1 + 40);
  if ((v7[3] - v7[2]) >= 1)
  {
    RunWithCharIndex = TLine::FindRunWithCharIndex(*(a1 + 40), v7[9], 1);
    v9 = v7[2];
    v10 = v7[3] - v9;
    if (RunWithCharIndex < v10 >> 3)
    {
      if (v10 >> 3 <= RunWithCharIndex)
      {
        __break(1u);
        return;
      }

      v11 = *(*(v9 + 8 * RunWithCharIndex) + 40);
      v12 = 0xAAAAAAAAAAAAAAAALL;
      TAttributes::OriginalFont((v11 + 40), &v12);
      if (atomic_load_explicit(&v12, memory_order_acquire))
      {
        TFont::GetDefaultMetrics(*(atomic_load_explicit(&v12, memory_order_acquire) + 40), &v15, &v14, &v13);
      }
    }
  }

  if (a2)
  {
LABEL_9:
    *a2 = v15;
  }

LABEL_10:
  if (a3)
  {
    *a3 = v14;
  }

  if (a4)
  {
    *a4 = v13;
  }
}

void TRun::TruncateUnorderedEnd(TRun *this, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6)
{
  v10 = a2;
  if (a4)
  {
    v12 = *(this + 1);
    do
    {
      v13 = a3;
      v14 = a3 + v10;
      if (a3 + v10 <= v12)
      {
        break;
      }

      v15 = (*(*a5 + 40))(a5, v14 - 1, a6);
      v12 = *(this + 1);
      if (v15 < v12)
      {
        *(this + 2) = 0;
        goto LABEL_28;
      }

      a3 = v15 - v10;
    }

    while (v15 + v16 > v14);
  }

  else
  {
    GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(this, a2);
    if (v10 >= *(this + 2) + *(this + 1))
    {
LABEL_14:
      NextChar = v10;
    }

    else
    {
      while (1)
      {
        v17 = (*(*a5 + 40))(a5, v10, a6);
        v19 = v17 + v18;
        NextChar = *(this + 2) + *(this + 1);
        if (v17 + v18 > NextChar)
        {
          break;
        }

        if (v17 >= v10)
        {
          goto LABEL_14;
        }

        v21 = v19 - 1;
        if (v19 - 1 != v10)
        {
          GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(this, v19 - 1);
        }

        NextChar = TRun::GetNextChar(this, v21, &GlyphIndexForChar);
        a3 = v10 + a3 - NextChar;
        v10 = NextChar;
        if (NextChar >= *(this + 2) + *(this + 1))
        {
          goto LABEL_17;
        }
      }

      a3 = 0;
    }

LABEL_17:
    v10 = NextChar;
    v13 = a3;
  }

  *(this + 1) = v10;
  *(this + 2) = v13;
  if (v13)
  {
    location = *(this + 26);
    v23 = (*(*(this + 27) + 48) + 8 * *(this + 25));
    if ((((*(this + 224) & 1) == 0) ^ a4))
    {
      v24 = location - 1;
      v25 = (location - 1) & ((location - 1) >> 63);
      v26 = v23 - 2;
      while (1)
      {
        v27.location = location - 1;
        if (location - 1 < 1)
        {
          break;
        }

        v28 = v26[location];
        v29 = v10 > v28 || v13 + v10 <= v28;
        location = v27.location;
        if (v29)
        {
          goto LABEL_37;
        }
      }

      v27.location = v25;
LABEL_37:
      v30 = v24 - v27.location;
    }

    else
    {
      v30 = location - 1;
      if (location < 1 || ((v31 = v13 + v10, v10 <= *v23) ? (v32 = v31 <= *v23) : (v32 = 1), v32))
      {
        v27.location = 0;
        v30 = 0;
      }

      else
      {
        v33 = 1;
        while (location != v33)
        {
          v34 = v23[v33++];
          if (v10 > v34 || v31 <= v34)
          {
            v27.location = 0;
            v30 = v33 - 2;
            goto LABEL_38;
          }
        }

        v27.location = 0;
      }
    }

LABEL_38:
    v27.length = v30 + 1;
    TRun::TruncateStorageRange(this, v27);
  }

  else
  {
LABEL_28:
    v37.location = 0;
    v37.length = 0;
    TStorageRange::SetStorageSubRange((this + 192), v37);
  }
}

unint64_t TLine::GetAttributesAtCharIndex(TLine *this, uint64_t a2)
{
  if (*(this + 3) == *(this + 2))
  {
    return 0;
  }

  result = TLine::FindRunWithCharIndex(this, a2, 1);
  v4 = *(this + 2);
  if (result < (*(this + 3) - v4) >> 3)
  {
    return *(*(v4 + 8 * result) + 40) + 40;
  }

  __break(1u);
  return result;
}

void TRun::TruncateStorageRange(TRun *this, CFRange a2)
{
  location = a2.location;
  TStorageRange::SetStorageSubRange((this + 192), a2);
  if (location)
  {
    v4 = *(this + 39);
    if (v4)
    {
      *v4 = *MEMORY[0x1E695F060];
    }
  }

  v5 = *(this + 39);
  if (v5)
  {
    if (*(v5 + 56) != *(v5 + 64) && location >= 1)
    {
      TRun::InitStretchFactors(this);
      v7 = *(this + 39);
      v8 = *(v7 + 56);
      if (__CFADD__(v8, 16 * location))
      {
        __break(1u);
      }

      else
      {
        v9 = (v8 + 16 * location);
        v10 = *(v7 + 64);
        v11 = v10 - v9;
        if (v10 != v9)
        {
          memmove(*(v7 + 56), v9, v10 - v9);
        }

        *(v7 + 64) = v8 + v11;
      }
    }
  }
}

CFIndex TTypesetter::FindLineBreak(TLine **a1, CFIndex a2, CFIndex a3, unsigned int a4)
{
  AttributesAtCharIndex = TLine::GetAttributesAtCharIndex(*a1, a2 + a3);
  if (AttributesAtCharIndex)
  {
    explicit = atomic_load_explicit((AttributesAtCharIndex + 24), memory_order_acquire);
  }

  else
  {
    explicit = 0;
  }

  v10 = a1[1];
  v11.location = a2;
  v11.length = a3;

  return TCharStream::FindLineBreak(v10, v11, (a4 >> 1) & 1, explicit);
}

void TBaseFont::SupportsConnectedLanguage(void)const::$_0::__invoke()
{
  __dst[41] = *MEMORY[0x1E69E9840];
  memcpy(__dst, off_1E6E3E428, 0x148uLL);
  v0 = CFSetCreate(*MEMORY[0x1E695E480], __dst, 41, MEMORY[0x1E695E9F8]);
  qword_1EA869740 = atomic_exchange(&v0, 0);
}

CFIndex CharRangeForGlyphIndex(const TLine *a1, TCharStreamIterator *a2, const TStorageRange *a3, void *a4, uint64_t a5)
{
  location = *(a4[6] + 8 * a3 + 8 * a5);
  v14.length = 0xAAAAAAAAAAAAAAAALL;
  v15 = location;
  v14.location = 0xAAAAAAAAAAAAAAAALL;
  v8 = [a4 attachmentCountAtIndex:a3 + a5];
  if (v8)
  {
    length = v8 + 1;
  }

  else
  {
    TCharStreamIterator::GetFullChar(a2, &v15, &v14);
    location = v14.location;
    length = v14.length;
  }

  v10 = *(a1 + 9);
  if (v10 > location || location >= *(a1 + 10) + v10)
  {
    if (location <= v10 && v10 < location + length)
    {
      return *(a1 + 9);
    }

    else
    {
      return 0;
    }
  }

  return location;
}

__CFString *TAttributes::HandleTextScaleAttribute(__CFString *result, uint64_t a2)
{
  if (result == @"NSTextScaleSecondary" || result && (result = CFEqual(result, @"NSTextScaleSecondary"), result))
  {
    *(*a2 + 138) |= 0x2000u;
  }

  return result;
}

CFIndex TCharStream::FindLineBreak(TCharStream *this, CFRange a2, int a3, __CFString *a4)
{
  length = a2.length;
  if (a2.length)
  {
    location = a2.location;
    memset(&ut, 0, sizeof(ut));
    ut.magic = 878368812;
    ut.sizeOfStruct = 144;
    if ((**this)())
    {
      v9 = location + length;
      if (a3)
      {
        utext_setNativeIndex(&ut, v9 - 1);
      }

      else
      {
        v11 = *(this + 2);
        if (v9 >= v11)
        {
          length = v11 - location;
          goto LABEL_16;
        }

        utext_setNativeIndex(&ut, location + length);
        v12 = utext_next32(&ut);
        isWhitespace = u_isWhitespace(v12);
        NativeIndex = utext_getNativeIndex(&ut);
        if (v12 >> 1 != 4103 && !isWhitespace)
        {
          if (TCharStream::CopyBreakIterator(a4, v14))
          {
            ubrk_setUText();
            v15 = ubrk_preceding();
            if (a4)
            {
              ubrk_close();
            }

            if (location >= v15)
            {
              if (v9 >= *(this + 2))
              {
                goto LABEL_16;
              }

              v17 = (*(*this + 40))(this, location + length, 2);
              v15 = v17;
              if (v17 <= location)
              {
                length = v18 - location + v17;
                goto LABEL_16;
              }
            }

            length = v15 - location;
          }

LABEL_16:
          utext_close(&ut);
          return length;
        }
      }

      length = TCharStream::FindLineBreakInWhitespace(NativeIndex, &ut) - location;
      goto LABEL_16;
    }
  }

  return length;
}

const __CFNumber *CustomRatioFromAttributes(const __CFDictionary *a1)
{
  result = CFDictionaryGetValue(a1, @"NSTextScaleRatio");
  if (result)
  {
    v2 = result;
    valuePtr = -1;
    v3 = CFGetTypeID(result);
    if (v3 == CFNumberGetTypeID() || v3 == CFBooleanGetTypeID())
    {
      CFNumberGetValue(v2, kCFNumberDoubleType, &valuePtr);
      DoubleValue = *&valuePtr;
    }

    else
    {
      if (v3 != CFStringGetTypeID())
      {
        return 0;
      }

      DoubleValue = CFStringGetDoubleValue(v2);
    }

    if (DoubleValue < 0.0)
    {
      DoubleValue = 0.0;
    }

    return *&DoubleValue;
  }

  return result;
}

int64_t TCharStream::FindLineBreakInWhitespace(TCharStream *this, UText *ut)
{
  while (1)
  {
    v3 = utext_next32(ut);
    v4 = v3;
    if (v3 > 12)
    {
      break;
    }

    if ((v3 - 10) < 3 || v3 == -1)
    {
      goto LABEL_13;
    }

LABEL_8:
    v5 = u_charType(v3);
    if (v4 >> 1 != 4103 && v5 != 12)
    {
      goto LABEL_16;
    }
  }

  if ((v3 - 8232) < 2)
  {
    goto LABEL_13;
  }

  if (v3 != 13)
  {
    if (v3 == 133)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v6 = utext_next32(ut);
  if (v6 == 10 || v6 == -1)
  {
LABEL_13:

    return utext_getNativeIndex(ut);
  }

LABEL_16:

  return utext_getPreviousNativeIndex(ut);
}

uint64_t TextScaleWeightMatchVariableOnly(const __CFDictionary *a1)
{
  result = CFDictionaryContainsKey(a1, @"NSTextScaleStaticWeightMatching");
  if (result)
  {
    Value = CFDictionaryGetValue(a1, @"NSTextScaleStaticWeightMatching");
    return !Value || CFBooleanGetValue(Value) == 0;
  }

  return result;
}

void CopySecondaryScaleRecipeInternal(atomic_ullong *a1, TBaseFont ***a2, TFont **a3, uint64_t a4, char a5, int a6)
{
  v54 = *MEMORY[0x1E69E9840];
  v12 = (a2 != a3) | a5;
  if ((a2 != a3) | a5 & 1 || (v13 = atomic_exchange(&sPreviousSecondaryScaleFontsAndRecipe, 0)) == 0)
  {
LABEL_7:
    v50 = 0xAAAAAAAAAAAAAAAALL;
    CopyPhysicalFamilyName(&v50, a2);
    if ((a2 == a3) | a5 & 1)
    {
      v49 = 0xAAAAAAAAAAAAAAAALL;
      CopyPhysicalFamilyName(&v49, a3);
      if (!a3)
      {
        v17 = 0.0;
        goto LABEL_15;
      }
    }

    else
    {
      *a1 = 0xAAAAAAAAAAAAAAAALL;
      v18 = a3[5];
      explicit = atomic_load_explicit(&v50, memory_order_acquire);
      os_unfair_lock_lock_with_options();
      Value = atomic_load_explicit(v18 + 48, memory_order_acquire);
      v21 = Value;
      if (Value)
      {
        Value = CFDictionaryGetValue(Value, explicit);
      }

      v46[0] = Value;
      *a1 = atomic_exchange(v46, 0);

      os_unfair_lock_unlock(v18 + 94);
      if (atomic_load_explicit(a1, memory_order_acquire))
      {
        goto LABEL_46;
      }

      v49 = 0xAAAAAAAAAAAAAAAALL;
      CopyPhysicalFamilyName(&v49, a3);
    }

    v17 = *(a3[5] + 3);
LABEL_15:
    *&v22 = -1;
    *(&v22 + 1) = -1;
    *v46 = v22;
    v47 = v22;
    v48 = 0xAAAAAAAAAAAAAAAALL;
    v23 = atomic_load_explicit(&v50, memory_order_acquire);
    RoundedWeight = GetRoundedWeight(a2[5]);
    SecondaryScaleRecipeForFont(v46, a2, v23, atomic_load_explicit(&v49, memory_order_acquire), a4, a5, RoundedWeight, v17);
    if (v48 == 1)
    {
      v25 = *(&v47 + 1);
      v26 = *v46 / 100.0;
      if (a5)
      {
        v26 = *&a4;
      }

      v27 = v17 * v26;
      if (!a6)
      {
        v51 = 0xAAAAAAAAAAAAAAAALL;
LABEL_32:
        CreateCopyOfFontWithSizeAndWeightClass(&v51, v27, *&v46[1], a2, v25 != 0.0);
        v37 = *MEMORY[0x1E695E480];
        Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSFont", atomic_load_explicit(&v51, memory_order_acquire));
        if ((v48 & 1) == 0 || (TCFNumber::TCFNumber<double>(values, *&v47), CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"CTBaselineOffset", atomic_load_explicit(values, memory_order_acquire)), values[0], (v48 & 1) == 0))
        {
LABEL_48:
          __break(1u);
        }

        TCFNumber::TCFNumber<double>(values, *(&v47 + 1));
        CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"CTTracking", atomic_load_explicit(values, memory_order_acquire));

        if (v12)
        {
          if ((a5 & 1) == 0)
          {
            v38 = a3[5];
            v39 = atomic_load_explicit(&v50, memory_order_acquire);
            v40 = atomic_load_explicit(&Mutable, memory_order_acquire);
            os_unfair_lock_lock_with_options();
            values[0] = 0xAAAAAAAAAAAAAAAALL;
            v41 = atomic_load_explicit(v38 + 48, memory_order_acquire);
            if (v41)
            {
              v42 = v41;
            }

            else
            {
              v42 = CFDictionaryCreateMutable(v37, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            }

            values[0] = v42;
            CFDictionarySetValue(atomic_load_explicit(values, memory_order_acquire), v39, v40);

            os_unfair_lock_unlock(v38 + 94);
          }
        }

        else
        {
          values[1] = a3;
          v53 = 0xAAAAAAAAAAAAAAAALL;
          values[0] = a2;
          v53 = atomic_load_explicit(&Mutable, memory_order_acquire);
        }

        *a1 = atomic_exchange(&Mutable, 0);

        v44 = v51;
        goto LABEL_44;
      }

      (*(*a2[5][51] + 120))(values);
      v28 = atomic_load_explicit(values, memory_order_acquire);

      if (v28)
      {
        v51 = 0xAAAAAAAAAAAAAAAALL;
        if ((v48 & 1) == 0)
        {
          goto LABEL_48;
        }

        goto LABEL_32;
      }

      Mutable = 0xAAAAAAAAAAAAAAAALL;
      v43 = GetRoundedWeight(a2[5]);
      CreateCopyOfFontWithSizeAndWeightClass(&Mutable, v27, v43, a2, v25 != 0.0);
      v36 = atomic_load_explicit(&Mutable, memory_order_acquire);
    }

    else
    {
      if (!TFont::IsSystemUIFontAndForShaping(a3[5], v46) || (*&v29 = -1, *(&v29 + 1) = -1, *v46 = v29, v47 = v29, v48 = 0xAAAAAAAAAAAAAAAALL, v30 = atomic_load_explicit(&v49, memory_order_acquire), v31 = GetRoundedWeight(a3[5]), SecondaryScaleRecipeForFont(v46, a3, v30, atomic_load_explicit(&v49, memory_order_acquire), a4, a5, v31, v17), v48 != 1))
      {
        *a1 = 0;
LABEL_45:

LABEL_46:
        v16 = v50;
        goto LABEL_47;
      }

      v32 = *&v46[1];
      v33 = *v46 / 100.0;
      if (a5)
      {
        v33 = *&a4;
      }

      v34 = v17 * v33;
      if (a6)
      {
        (*(*a2[5][51] + 120))(values);
        v35 = atomic_load_explicit(values, memory_order_acquire);

        if (!v35)
        {
          v32 = GetRoundedWeight(a2[5]);
        }
      }

      Mutable = 0xAAAAAAAAAAAAAAAALL;
      CreateCopyOfFontWithSizeAndWeightClass(&Mutable, v34, v32, a2, 0);
      v36 = atomic_load_explicit(&Mutable, memory_order_acquire);
    }

    v51 = v36;
    values[0] = @"NSFont";
    *a1 = CFDictionaryCreate(*MEMORY[0x1E695E480], values, &v51, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v44 = Mutable;
LABEL_44:

    goto LABEL_45;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v13, 0);
  if (!CFEqual(ValueAtIndex, a2) || (v15 = CFArrayGetValueAtIndex(v13, 1), !CFEqual(v15, a3)))
  {
    CFRelease(v13);
    goto LABEL_7;
  }

  *a1 = 0xAAAAAAAAAAAAAAAALL;
  v46[0] = CFArrayGetValueAtIndex(v13, 2);
  *a1 = atomic_exchange(v46, 0);

  v16 = atomic_exchange(&sPreviousSecondaryScaleFontsAndRecipe, v13);
LABEL_47:
}

uint64_t TCharStream::GetClusterRangeForRange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = (*(*a1 + 40))(a1, a2, a4);
  if (v8 + v9 < a2 + a3)
  {
    v10 = (*(*a1 + 40))(a1, a2 + a3 - 1, a4);
    if (v10 < v8)
    {
      return v10;
    }
  }

  return v8;
}

CGRect CTFontGetBoundingRectsForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGRect *boundingRects, CFIndex count)
{
  v25 = *MEMORY[0x1E69E9840];
  if (font && glyphs)
  {
    memset(v23, 170, sizeof(v23));
    memset(v22, 0, sizeof(v22));
    v24 = v23;
    if (!boundingRects)
    {
      std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::resize(v22, count);
      boundingRects = v22[0];
    }

    BoundingBoxesForGlyphs = TFont::GetBoundingBoxesForGlyphs(*(font + 5), glyphs, boundingRects, count, orientation);
    v12 = v11;
    v14 = v13;
    v16 = v15;
    v21 = v22;
    std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::__destroy_vector::operator()[abi:fn200100](&v21);
  }

  else
  {
    BoundingBoxesForGlyphs = *MEMORY[0x1E695F050];
    v12 = *(MEMORY[0x1E695F050] + 8);
    v14 = *(MEMORY[0x1E695F050] + 16);
    v16 = *(MEMORY[0x1E695F050] + 24);
  }

  v17 = BoundingBoxesForGlyphs;
  v18 = v12;
  v19 = v14;
  v20 = v16;
  result.size.height = v20;
  result.size.width = v19;
  result.origin.y = v18;
  result.origin.x = v17;
  return result;
}

double TAttributes::GetOriginalValueOf(atomic_ullong *this, const __CFString *a2)
{
  valuePtr = 0.0;
  Value = CFDictionaryGetValue(atomic_load_explicit(this, memory_order_acquire), a2);
  if (Value)
  {
    v3 = Value;
    v4 = CFGetTypeID(Value);
    if (v4 == CFNumberGetTypeID() || v4 == CFBooleanGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberDoubleType, &valuePtr);
    }

    else if (v4 == CFStringGetTypeID())
    {
      return CFStringGetDoubleValue(v3);
    }
  }

  return valuePtr;
}

void DrawGlyphsWithAdvancesAndTransform(TBaseFont **a1, CGGlyph *a2, uint64_t a3, unint64_t a4, CGContext *a5, float64x2_t *a6, double *a7, uint64_t a8)
{
  v35 = *MEMORY[0x1E69E9840];
  if (*(a8 + 104) == 1 && a6[1].f64[1] < 0.0)
  {
    a7[3] = -a7[3];
  }

  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v33[28] = v16;
  v33[29] = v16;
  v33[26] = v16;
  v33[27] = v16;
  v33[24] = v16;
  v33[25] = v16;
  v33[22] = v16;
  v33[23] = v16;
  v33[20] = v16;
  v33[21] = v16;
  v33[18] = v16;
  v33[19] = v16;
  v33[16] = v16;
  v33[17] = v16;
  v33[15] = v16;
  v33[14] = v16;
  v33[13] = v16;
  v33[12] = v16;
  v33[11] = v16;
  v33[10] = v16;
  v33[9] = v16;
  v33[8] = v16;
  v33[7] = v16;
  v33[6] = v16;
  v33[4] = v16;
  v33[5] = v16;
  v33[2] = v16;
  v33[3] = v16;
  v33[0] = v16;
  v33[1] = v16;
  v30 = 0;
  v31 = 0;
  v32 = 0;
  v34 = v33;
  std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__vallocate[abi:fn200100](&v30, a4);
  v17 = v31;
  bzero(v31, 16 * a4);
  v18 = 0;
  v31 = &v17[16 * a4];
  v19 = v30;
  v20 = (v31 - v30) >> 4;
  v21 = (a3 + 8);
  v23 = v25;
  v22 = v27;
  do
  {
    if (v20 == v18)
    {
      __break(1u);
    }

    v19[v18] = vaddq_f64(a6[2], vmlaq_n_f64(vmulq_n_f64(a6[1], v22), *a6, v23));
    v24 = *(v21 - 1);
    v23 = v23 + *v21 * a7[2] + *a7 * v24;
    v22 = v22 + *v21 * a7[3] + a7[1] * v24;
    ++v18;
    v21 += 2;
  }

  while (a4 != v18);
  v26 = v23;
  v28 = v22;
  DrawGlyphsAtPositions(a1, a2, v19, a4, a5, a8);
  CGContextSetTextPosition(a5, v26, v28);
  v29 = &v30;
  std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v29);
}

void DrawGlyphsAtPositions(TBaseFont **a1, CGGlyph *a2, const CGPoint *a3, atomic_ullong a4, CGContext *a5, uint64_t a6)
{
  v187 = *MEMORY[0x1E69E9840];
  v11 = *(a6 + 96);
  if (!v11)
  {
    v17 = 0;
    v172 = 0;
    v171 = 0;
    v135 = -1;
    v138 = 0;
    v139 = 1;
    goto LABEL_43;
  }

  if (*(v11 + 224))
  {
    v12 = -1;
  }

  else
  {
    v12 = 1;
  }

  v139 = v12;
  v172 = 0;
  v171 = 0;
  Type = *(a6 + 108);
  if (Type == 19)
  {
    Type = CGContextGetType();
    *(a6 + 108) = Type;
  }

  if (Type != 1 || (v14 = *(v11 + 272)) == 0)
  {
    v17 = 0;
    v138 = 0;
    v135 = -1;
    goto LABEL_43;
  }

  v15 = *v14;
  (*(**v14 + 8))(keys, *v14);

  v16 = (*(*(v11 + 216) + 48) + 8 * *(v11 + 200));
  v18 = *(v11 + 8);
  v17 = *(v11 + 16);
  v138 = v16;
  v135 = v18;
  if (*(v11 + 224))
  {
    v37 = *MEMORY[0x1E695E4D0];
    *keys = @"rightToLeft";
    values[0] = v37;
    *&v149.a = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);

    a = v149.a;
LABEL_42:

    goto LABEL_43;
  }

  memset(keys, 170, 16);
  ClusterRange = TLine::GetClusterRange(v14, v15, *v16, 2, keys, 0, 0);
  if (ClusterRange + v20 >= v17 + v18)
  {
    v21 = v17 + v18;
  }

  else
  {
    v21 = ClusterRange + v20;
  }

  v22 = v21 - v18;
  v23 = ClusterRange <= v18 && v18 < ClusterRange + v20;
  if (v23)
  {
    v24 = v18;
  }

  else
  {
    v24 = 0;
  }

  if (!v23)
  {
    v22 = 0;
  }

  v25 = v21 - ClusterRange;
  v26 = v18 <= ClusterRange && ClusterRange < v17 + v18;
  if (v26)
  {
    v24 = ClusterRange;
  }

  if (v26)
  {
    v27 = v25;
  }

  else
  {
    v27 = v22;
  }

  if (v24 == ClusterRange && v27 == v20)
  {
    goto LABEL_43;
  }

  v29 = *(v14 + 2);
  v30 = *(v14 + 3);
  v31 = *keys;
  v32 = (v30 - v29) >> 3;
  if (v30 == v29)
  {
    v34 = *(v14 + 2);
  }

  else
  {
    v33 = 0;
    v34 = *(v14 + 2);
    v35 = v34;
    while (1)
    {
      v36 = *(*(*v35 + 40) + 208) + v33;
      if (v36 > *keys)
      {
        break;
      }

      v35 += 8;
      v34 += 8;
      v33 = v36;
      if (v35 == v30)
      {
        v34 = *(v14 + 3);
        goto LABEL_128;
      }
    }

    v31 = *keys - v33;
  }

LABEL_128:
  v124 = v34 - v29;
  v125 = (v34 - v29) >> 3;
  if (v125 >= v32)
  {
    goto LABEL_43;
  }

  if (v32 <= v125)
  {
    goto LABEL_142;
  }

  if (v11 == *(*v34 + 40))
  {
    v128 = MEMORY[0x1E695E4D0];
    v129 = @"begin";
LABEL_137:
    v130 = *v128;
    values[0] = v129;
    v149.a = v130;
    *&v182 = COERCE_DOUBLE(CFDictionaryCreate(*MEMORY[0x1E695E480], values, &v149, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]));

    a = *&v182;
    goto LABEL_42;
  }

  if (v34 != v30)
  {
    v126 = 0;
    v127 = *&keys[8] + v31;
    while (1)
    {
      v126 += *(*(*v34 + 40) + 208);
      if (v126 >= v127)
      {
        break;
      }

      v34 += 8;
      v124 += 8;
      if (v34 == v30)
      {
        goto LABEL_43;
      }
    }

    if (v124 >> 3 < v32)
    {
      if (v32 > v124 >> 3)
      {
        if (v11 == *(*(v29 + v124) + 40))
        {
          v128 = MEMORY[0x1E695E4D0];
          v129 = @"finished";
          goto LABEL_137;
        }

        goto LABEL_43;
      }

LABEL_142:
      __break(1u);
    }
  }

LABEL_43:
  *&v39 = 0xAAAAAAAAAAAAAAAALL;
  *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v185[3] = v39;
  v185[2] = v39;
  v185[1] = v39;
  v185[0] = v39;
  *&v182 = 0.0;
  v183 = 0;
  v184 = 0;
  v186 = v185;
  v180[28] = v39;
  v180[29] = v39;
  v180[26] = v39;
  v180[27] = v39;
  v180[24] = v39;
  v180[25] = v39;
  v180[22] = v39;
  v180[23] = v39;
  v180[20] = v39;
  v180[21] = v39;
  v180[18] = v39;
  v180[19] = v39;
  v180[16] = v39;
  v180[17] = v39;
  v180[15] = v39;
  v180[14] = v39;
  v180[13] = v39;
  v180[12] = v39;
  v180[11] = v39;
  v180[10] = v39;
  v180[9] = v39;
  v180[8] = v39;
  v180[7] = v39;
  v180[6] = v39;
  v180[5] = v39;
  v180[4] = v39;
  v180[3] = v39;
  v180[2] = v39;
  v180[1] = v39;
  v180[0] = v39;
  memset(values, 0, sizeof(values));
  v181 = v180;
  *&v148.a = TFont::ensureSVGTableObject(a1);
  if (!*&v148.a)
  {
    goto LABEL_57;
  }

  memset(&keys[24], 170, 0x3C0uLL);
  memset(keys, 0, 24);
  v178 = &keys[24];
  if (a4)
  {
    std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::__vallocate[abi:fn200100](keys, a4);
    v40 = *&keys[8];
    bzero(*&keys[8], 32 * a4);
    *&keys[8] = v40 + 32 * a4;
    v41 = *keys;
  }

  else
  {
    v41 = 0;
  }

  InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(a1[51]);
  if (!InitializedGraphicsFont || !CGFontGetGlyphBBoxes(InitializedGraphicsFont, a2, a4, v41))
  {
LABEL_56:
    *&v149.a = keys;
    std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::__destroy_vector::operator()[abi:fn200100](&v149);
LABEL_57:
    v58 = MEMORY[0x1E695EFF8];
    v59 = *MEMORY[0x1E695EFF8];
    v60 = *(MEMORY[0x1E695EFF8] + 8);
    v168 = 0xAAAAAAAAAAAAAAAALL;
    (*(*a1[51] + 488))(&v168);
    if (atomic_load_explicit(&v168, memory_order_acquire))
    {
      memset(v167, 170, sizeof(v167));
      explicit = atomic_load_explicit(&v168, memory_order_acquire);
      TBaseFont::GetGlyphCount(a1[51]);
      TsbixContext::TsbixContext(v167, explicit);
      if (v167[1])
      {
        v62 = (*(v167[1] + 1) >> 9) & 1;
      }

      else
      {
        v62 = 0;
      }

      memset(&keys[24], 170, 0x3C0uLL);
      memset(keys, 0, 24);
      v178 = &keys[24];
      if (a4)
      {
        std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::__vallocate[abi:fn200100](keys, a4);
        v63 = *&keys[8];
        bzero(*&keys[8], 32 * a4);
        *&keys[8] = v63 + 32 * a4;
      }

      if (((*(*a1[51] + 720))(a1[51]) & 1) != 0 || (v64 = *keys, (v65 = TBaseFont::GetInitializedGraphicsFont(a1[51])) != 0) && CGFontGetGlyphBBoxes(v65, a2, a4, v64))
      {
        *&v66 = -1;
        *(&v66 + 1) = -1;
        *&v174.c = v66;
        *&v174.tx = v66;
        *&v174.a = v66;
        GetFontScaleTransform(&v174, a1);
        *&v67 = -1;
        *(&v67 + 1) = -1;
        *&v173.c = v67;
        *&v173.tx = v67;
        *&v173.a = v67;
        CGContextGetTextMatrix(&v173, a5);
        *&v68 = -1;
        *(&v68 + 1) = -1;
        *&v170.c = v68;
        *&v170.tx = v68;
        *&v170.a = v68;
        CGContextGetCTM(&v170, a5);
        FillColorAsColor = CGContextGetFillColorAsColor();
        v70 = CGColorGetAlpha(FillColorAsColor) == 0.0;
        ContentsScale = GetContentsScale(a5);
        TFont::GetColorBitmapFontTranslate(a1);
        v59 = v72;
        v60 = v73;
        v154 = unk_18475C2A0;
        v156 = a5;
        v157 = 0xAAAAAAAAAAAAAAAALL;
        *&v149.a = keys;
        *&v149.b = v167;
        *&v149.c = a4;
        *&v149.d = __PAIR64__(unk_18475C26C, v139);
        *&v149.tx = a3;
        *&v149.ty = a2;
        v150 = a1;
        v151 = *&ContentsScale;
        v152 = *&v72;
        v153 = v73;
        LOBYTE(v154) = v70;
        v155 = v174;
        LOBYTE(v157) = v62;
        v74 = *(a6 + 80);
        v162 = *(a6 + 64);
        v163 = v74;
        v164 = *(a6 + 96);
        v165 = *(a6 + 112);
        v75 = *(a6 + 16);
        v158 = *a6;
        v159 = v75;
        v76 = *(a6 + 48);
        v160 = *(a6 + 32);
        v161 = v76;
        v166 = v170;
        _V2.D[1] = v173.b;
        v78 = vdupq_n_s64(0x3CB0000000000000uLL);
        v79 = vandq_s8(vcgeq_f64(v78, vabsq_f64(vaddq_f64(*&v173.c, xmmword_18475B150))), vcgeq_f64(v78, vabsq_f64(vaddq_f64(*&v173.a, xmmword_18475B140))));
        if ((vandq_s8(vdupq_laneq_s64(v79, 1), v79).u64[0] & 0x8000000000000000) != 0)
        {
          t1 = v170;
          CGAffineTransformMakeTranslation(&t2, v173.tx, v173.ty);
        }

        else
        {
          _D3 = 0;
          __asm { FMLA            D1, D3, V2.D[1]; __y }

          v82 = hypot(v173.c + v173.a * 0.0, _D1);
          v83 = 1.0;
          if (v82 > 1.0)
          {
            t1 = v173;
            CGAffineTransformScale(&t2, &t1, 1.0 / v82, 1.0 / v82);
            v173 = t2;
            v83 = v82;
          }

          *&v84 = -1;
          *(&v84 + 1) = -1;
          *&v169.c = v84;
          *&v169.tx = v84;
          *&v169.a = v84;
          CGAffineTransformMakeScale(&v169, v83, v83);
          *&v85 = -1;
          *(&v85 + 1) = -1;
          *&v148.c = v85;
          *&v148.tx = v85;
          *&v148.a = v85;
          t1 = v173;
          t2 = v170;
          CGAffineTransformConcat(&v148, &t1, &t2);
          t1 = v148;
          CGContextSetCTM();
          t1 = v148;
          t2 = v169;
          t1 = v170;
          CGContextSetCTM();
        }
      }

      *&v149.a = keys;
      std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::__destroy_vector::operator()[abi:fn200100](&v149);

      if (!v62)
      {
        goto LABEL_124;
      }
    }

    if (v59 != 0.0 || v60 != 0.0)
    {
      TextPosition = CGContextGetTextPosition(a5);
      CGContextSetTextPosition(a5, v59 + TextPosition.x, v60 + TextPosition.y);
    }

    v87 = *(a6 + 112);
    if (v87)
    {
      DrawGlyphsWithTextEffects(v87, a2, a3, a4, a5);
LABEL_124:

      goto LABEL_125;
    }

    if (*(a6 + 104) == 1)
    {
      CGContextGetTextMatrix(keys, a5);
      v88 = HandleFlippedTextMatrix(a5, keys);
    }

    else
    {
      v88 = 0;
    }

    v169.a = -3.72066208e-103;
    (*(*a1[51] + 488))(&v169);
    if (!atomic_load_explicit(&v169, memory_order_acquire) || (theArray = TFont::GetPaletteColors(a1), Count = CFArrayGetCount(theArray), Count < 1))
    {

      v103 = *(a6 + 16);
      v104 = vandq_s8(vandq_s8(vceqq_f64(*a6, xmmword_18475BD80), vceqq_f64(v103, xmmword_18475A330)), vceqzq_f64(*(a6 + 32)));
      if ((vandq_s8(v104, vdupq_laneq_s64(v104, 1)).u64[0] & 0x8000000000000000) != 0)
      {
        v143[0] = MEMORY[0x1E69E9820];
        v143[1] = 3321888768;
        v143[2] = ___ZL21DrawGlyphsAtPositionsPK5TFontPKtPK7CGPointmP9CGContextRKN12_GLOBAL__N_123DrawGlyphsConfigurationE_block_invoke;
        v143[3] = &__block_descriptor_96_8_64c27_ZTS6TCFRefIPK10__CFStringE88c31_ZTS6TCFRefIPK14__CFDictionaryE_e16_v28__0___qq_8B24l;
        v143[4] = a5;
        v143[5] = a2;
        v143[6] = a3;
        v143[7] = v138;
        v144 = atomic_load_explicit(&v172, memory_order_acquire);
        v145 = v135;
        v146 = v17;
        v147 = atomic_load_explicit(&v171, memory_order_acquire);
        EnumerateOverlappingGlyphs(a1[51], a2, a4, v139, v143);
      }

      else
      {
        *keys = *a6;
        *&keys[16] = v103;
        *&keys[32] = *v58;
        if (a4)
        {
          p_y = &a3->y;
          do
          {
            v106 = *a2++;
            DrawVisibleGlyph(a5, v106, *(p_y - 1), keys, (a6 + 48));
            p_y += 2;
            --a4;
          }

          while (a4);
        }
      }

LABEL_122:
      if (v88)
      {
        RestoreFlippedTextMatrix(a5);
      }

      goto LABEL_124;
    }

    v89 = CGContextGetFillColorAsColor();
    *&v90 = -1;
    *(&v90 + 1) = -1;
    *&t1.c = v90;
    *&t1.tx = v90;
    *&t1.a = v90;
    CGContextGetTextMatrix(&t1, a5);
    *&v91 = -1;
    *(&v91 + 1) = -1;
    *&t2.c = v91;
    *&t2.tx = v91;
    *&t2.a = v91;
    CGContextGetCTM(&t2, a5);
    _V2.D[1] = t1.b;
    v93 = vdupq_n_s64(0x3CB0000000000000uLL);
    v94 = vandq_s8(vcgeq_f64(v93, vabsq_f64(vaddq_f64(*&t1.c, xmmword_18475B150))), vcgeq_f64(v93, vabsq_f64(vaddq_f64(*&t1.a, xmmword_18475B140))));
    v137 = a2;
    v131 = v88;
    if ((vandq_s8(vdupq_laneq_s64(v94, 1), v94).u64[0] & 0x8000000000000000) != 0)
    {
      v100 = a1;
      ty = t2.ty;
      tx = t2.tx;
      v133 = *&t2.a;
      v134 = *&t2.c;
      CGAffineTransformMakeTranslation(keys, t1.tx, t1.ty);
    }

    else
    {
      _D3 = 0;
      __asm { FMLA            D1, D3, V2.D[1]; __y }

      v97 = hypot(t1.c + t1.a * 0.0, _D1);
      v98 = 1.0;
      if (v97 > 1.0)
      {
        v99 = v97;
        *keys = t1;
        CGAffineTransformScale(&v149, keys, 1.0 / v97, 1.0 / v97);
        t1 = v149;
        v98 = v99;
      }

      v100 = a1;
      *keys = t1;
      v149 = t2;
      CGAffineTransformConcat(&v174, keys, &v149);
      v133 = *&v174.a;
      v134 = *&v174.c;
      tx = v174.tx;
      ty = v174.ty;
      CGAffineTransformMakeScale(keys, v98, v98);
    }

    v107 = *keys;
    v108 = *&keys[8];
    v109 = *&keys[16];
    v110 = *&keys[32];
    Style = CGContextGetStyle();
    if (v139 >= 0)
    {
      v112 = 0;
    }

    else
    {
      v112 = a4 - 1;
    }

    if (v139 < 0)
    {
      v113 = -1;
    }

    else
    {
      v113 = a4;
    }

    v136 = v113;
    if (v112 == v113)
    {
      goto LABEL_121;
    }

    v114 = Style;
    v132 = Style;
LABEL_102:
    v115 = v137[v112];
    memset(&v170, 170, 24);
    LayerRecordsForGlyph(atomic_load_explicit(&v169, memory_order_acquire), v115, &v170);
    p_x = &a3[v112].x;
    v117 = *p_x;
    v118 = *(p_x + 1);
    if (*&v170.a == *&v170.b)
    {
      DrawVisibleGlyph(a5, v115, *&v117, a6, (a6 + 48));
      goto LABEL_118;
    }

    DrawInvisibleGlyph(a5, v115, *&v117, a6, (a6 + 48));
    CGContextSaveGState(a5);
    CGAffineTransformMakeTranslation(&v173, *&v110 + *&v109 * p_x[1] + v107 * *p_x, *(&v110 + 1) + *(&v109 + 1) * p_x[1] + v108 * *p_x);
    *keys = v173;
    *&v149.a = v133;
    *&v149.c = v134;
    v149.tx = tx;
    v149.ty = ty;
    CGAffineTransformConcat(&v174, keys, &v149);
    CGContextSetCTM();
    if (v114)
    {
      CGContextBeginTransparencyLayer(a5, 0);
    }

    v119 = v170.a;
    b = v170.b;
    while (1)
    {
      if (*&v119 == *&b)
      {
        v114 = v132;
        if (v132)
        {
          CGContextEndTransparencyLayer(a5);
        }

        CGContextRestoreGState(a5);
LABEL_118:
        if (*&v170.a)
        {
          v170.b = v170.a;
          operator delete(*&v170.a);
        }

        v112 += v139;
        if (v112 == v136)
        {
LABEL_121:

          v88 = v131;
          goto LABEL_122;
        }

        goto LABEL_102;
      }

      v121 = **&v119;
      v122 = *(*&v119 + 2);
      ValueAtIndex = v89;
      if (v122 != 0xFFFF)
      {
        if (Count <= v122)
        {
          goto LABEL_113;
        }

        ValueAtIndex = CFArrayGetValueAtIndex(theArray, v122);
      }

      CGContextSetFillColorWithColor(a5, ValueAtIndex);
      *keys = 0xAAAAAAAAAAAAAAAALL;
      TFont::CreatePathForGlyph(v100, 0, v121, keys);
      if (atomic_load_explicit(keys, memory_order_acquire))
      {
        CGContextAddPath(a5, atomic_load_explicit(keys, memory_order_acquire));
        CGContextDrawPath(a5, kCGPathFill);
      }

LABEL_113:
      *&v119 += 4;
    }
  }

  *&v43 = -1;
  *(&v43 + 1) = -1;
  *&v174.c = v43;
  *&v174.tx = v43;
  *&v174.a = v43;
  CGContextGetTextMatrix(&v174, a5);
  *&v44 = -1;
  *(&v44 + 1) = -1;
  *&v173.c = v44;
  *&v173.tx = v44;
  *&v173.a = v44;
  CGContextGetCTM(&v173, a5);
  PaletteColors = TFont::GetPaletteColors(a1);
  *&v149.a = &v148;
  *&v149.b = &v182;
  *&v149.c = values;
  *&v149.d = a4;
  *&v149.tx = a2;
  *&v149.ty = PaletteColors;
  v150 = a3;
  v151 = v139 | 0xAAAAAAAA00000000;
  v152 = a5;
  _V2.D[1] = v174.b;
  v47 = vdupq_n_s64(0x3CB0000000000000uLL);
  v48 = vandq_s8(vcgeq_f64(v47, vabsq_f64(vaddq_f64(*&v174.c, xmmword_18475B150))), vcgeq_f64(v47, vabsq_f64(vaddq_f64(*&v174.a, xmmword_18475B140))));
  if ((vandq_s8(vdupq_laneq_s64(v48, 1), v48).u64[0] & 0x8000000000000000) != 0)
  {
    CGAffineTransformMakeTranslation(&t1, v174.tx, v174.ty);
  }

  else
  {
    _D3 = 0;
    __asm { FMLA            D1, D3, V2.D[1]; __y }

    v54 = hypot(v174.c + v174.a * 0.0, _D1);
    v55 = 1.0;
    if (v54 > 1.0)
    {
      t1 = v174;
      CGAffineTransformScale(&t2, &t1, 1.0 / v54, 1.0 / v54);
      v174 = t2;
      v55 = v54;
    }

    *&v56 = -1;
    *(&v56 + 1) = -1;
    *&v170.c = v56;
    *&v170.tx = v56;
    *&v170.a = v56;
    CGAffineTransformMakeScale(&v170, v55, v55);
    *&v57 = -1;
    *(&v57 + 1) = -1;
    *&v169.c = v57;
    *&v169.tx = v57;
    *&v169.a = v57;
    t1 = v174;
    t2 = v173;
    CGAffineTransformConcat(&v169, &t1, &t2);
    t1 = v169;
    CGContextSetCTM();
    t1 = v170;
    t1 = v173;
    CGContextSetCTM();
  }

  a2 = v182;
  if (v183 != v182)
  {
    a4 = (v183 - v182) >> 1;
    a3 = values[0];
    goto LABEL_56;
  }

  *&v149.a = keys;
  std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::__destroy_vector::operator()[abi:fn200100](&v149);
LABEL_125:
  *keys = values;
  std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](keys);
  *keys = &v182;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](keys);
}

void std::vector<std::pair<CFRange,double>,TInlineBufferAllocator<std::pair<CFRange,double>,30ul>>::__destroy_vector::operator()[abi:fn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    v3 = (a1 + 744);
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
      if (*(a1 + 16) == *v3)
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

void TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)const::$_0::operator()(uint64_t a1, unint64_t a2, int a3, __n128 a4, __n128 a5, double a6, uint8x8_t a7)
{
  v9 = *a1;
  v8 = *(a1 + 8);
  if (a3 < 0)
  {
    v10 = &v9[16 * a2];
    v11 = &v9[16 * *v8 - 16];
    v12 = *v8 != a2 && v11 > v10;
    if (v12)
    {
      do
      {
        a4.n128_u64[0] = *v10;
        a5 = *v11;
        v13 = *(v10 + 2);
        v14 = *(v10 + 3);
        *v10 = *v11;
        v10 += 16;
        v11->n128_u64[0] = a4.n128_u64[0];
        v11->n128_u32[2] = v13;
        v11->n128_u32[3] = v14;
        --v11;
      }

      while (v10 < v11);
      v9 = *a1;
      v8 = *(a1 + 8);
    }
  }

  v15 = (16 * a2) & 0x7FFFFFFFFFFFFFE0;
  v16 = 16 * *v8;
  v17 = v16 & 0x7FFFFFFFFFFFFFE0;
  v18 = v16 - v15;
  v19 = v18 >> 5;
  if (v18 >> 5 < 129)
  {
    v23 = 0;
LABEL_15:
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *>(&v9[v15], &v9[v17], v19, 0, v23, a4, a5.n128_f64[0], a6, a7);
  }

  else
  {
    v20 = MEMORY[0x1E69E5398];
    v21 = v18 >> 5;
    while (1)
    {
      v22 = operator new(32 * v21, v20);
      if (v22)
      {
        break;
      }

      v23 = v21 >> 1;
      v12 = v21 > 1;
      v21 >>= 1;
      if (!v12)
      {
        goto LABEL_15;
      }
    }

    v28 = v22;
    std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *>(&v9[v15], &v9[v17], v19, v22, v21, a4, a5.n128_f64[0], a6, a7);
    operator delete(v28);
  }

  v29 = a2 >> 1;
  if (v19 >= (a2 >> 1))
  {
    v30 = a2 >> 1;
  }

  else
  {
    v30 = v19;
  }

  if (v30 < 1)
  {
    v33 = v30;
LABEL_26:

    std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *>(v9, &v9[v15], &v9[v17], v29, v19, 0, v33, v24, v25, v26, v27);
  }

  else
  {
    v31 = MEMORY[0x1E69E5398];
    while (1)
    {
      v32 = operator new(32 * v30, v31);
      if (v32)
      {
        break;
      }

      v33 = v30 >> 1;
      v12 = v30 > 1;
      v30 >>= 1;
      if (!v12)
      {
        goto LABEL_26;
      }
    }

    v34 = v32;
    std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *>(v9, &v9[v15], &v9[v17], v29, v19, v32, v30, v24, v25, v26, v27);

    operator delete(v34);
  }
}

void ___ZL21DrawGlyphsAtPositionsPK5TFontPKtPK7CGPointmP9CGContextRKN12_GLOBAL__N_123DrawGlyphsConfigurationE_block_invoke(void *a1, uint64_t a2, size_t count, int a4)
{
  v5 = a1[4];
  v6 = (a1[5] + 2 * a2);
  v7 = (a1[6] + 16 * a2);
  v8 = (a1[7] + 8 * a2);
  explicit = atomic_load_explicit(a1 + 8, memory_order_acquire);
  v11 = a1[9];
  v10 = a1[10];
  v12 = atomic_load_explicit(a1 + 11, memory_order_acquire);
  if (a4)
  {
    CGContextGetShouldDrawBitmapRuns();
    CGContextSetShouldDrawBitmapRuns();
    v14.location = v11;
    v14.length = v10;
    DrawGlyphsAtPositionsWithString(v5, v6, v7, v8, count, explicit, v14, v12);

    CGContextSetShouldDrawBitmapRuns();
  }

  else
  {
    v15.location = v11;
    v15.length = v10;
    DrawGlyphsAtPositionsWithString(v5, v6, v7, v8, count, explicit, v15, v12);
  }
}

void CTDelegateRun::CloneRange(uint64_t a1@<X0>, uint64_t a2@<X1>, CFIndex a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v10 = TCFBase<TRun>::Allocate();
  v11 = v10;
  if (v10)
  {
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = 0;
    v10[5] = v10 + 9;
    v10[6] = v10 + 9;
    v10[7] = CTDelegateRun::CloneEntire;
    v10[8] = CTDelegateRun::CloneRange;
    TDelegateRun::TDelegateRun((v10 + 9), a1 + 72, a2, a3, a4);
  }

  v12 = v11;
  *a5 = atomic_exchange(&v12, 0);
}

void std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *>(double *a1, double *a2, unint64_t a3, __n128 *a4, uint64_t a5, __n128 a6, double a7, double a8, uint8x8_t a9)
{
  if (a3 >= 2)
  {
    v10 = a1;
    if (a3 == 2)
    {
      if (*(a2 - 4) < *a1)
      {
        v11 = (a2 - 4);

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *&,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *&>(a1, v11);
      }
    }

    else if (a3 > 128)
    {
      v29 = a4;
      v30 = a3 >> 1;
      v31 = &a1[4 * (a3 >> 1)];
      v32 = a3 >> 1;
      if (a3 <= a5)
      {
        v37 = std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *>(a1, v31, v32, a4, a6);
        v38 = &v29[2 * v30];
        std::__stable_sort_move<std::_ClassicAlgPolicy,std::__less<void,void> &,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *>(&v10[4 * (a3 >> 1)], a2, a3 - (a3 >> 1), v38, v37);
        v39 = &v29[2 * a3];
        v40 = v38;
        while (v40 != v39)
        {
          if (v40->n128_f64[0] >= v29->n128_f64[0])
          {
            v41 = *v29;
            v42 = v29[1];
            v29 += 2;
          }

          else
          {
            v41 = *v40;
            v42 = v40[1];
            v40 += 2;
          }

          *v10 = v41;
          *(v10 + 1) = v42;
          v10 += 4;
          if (v29 == v38)
          {
            while (v40 != v39)
            {
              v45 = *v40;
              v46 = v40[1];
              v40 += 2;
              *v10 = v45;
              *(v10 + 1) = v46;
              v10 += 4;
            }

            return;
          }
        }

        while (v29 != v38)
        {
          v43 = *v29;
          v44 = v29[1];
          v29 += 2;
          *v10 = v43;
          *(v10 + 1) = v44;
          v10 += 4;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *>(a1, v31, v32, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,std::__less<void,void> &,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *>(&v10[4 * (a3 >> 1)], a2, a3 - (a3 >> 1), v29, a5);

        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *>(v10, &v10[4 * (a3 >> 1)], a2, a3 >> 1, a3 - (a3 >> 1), v29, a5, v33, v34, v35, v36);
      }
    }

    else if (a1 != a2)
    {
      v13 = a1 + 4;
      if (a1 + 4 != a2)
      {
        v14 = 0;
        v15 = a1;
        do
        {
          v16 = v13;
          v17 = v15[4];
          v18 = *v15;
          if (v17 < *v15)
          {
            v19 = *(v15 + 10);
            v18.i32[0] = *(v15 + 11);
            v20 = vmovl_u8(v18).u64[0];
            v21 = *(v15 + 6);
            v22 = *(v15 + 14);
            a9.i32[0] = *(v15 + 15);
            a9 = vmovl_u8(a9).u64[0];
            v23 = v14;
            while (1)
            {
              v24 = a1 + v23;
              v25 = *(a1 + v23 + 16);
              *(v24 + 2) = *(a1 + v23);
              *(v24 + 3) = v25;
              if (!v23)
              {
                break;
              }

              v23 -= 32;
              if (v17 >= *(v24 - 4))
              {
                v26 = a1 + v23 + 32;
                goto LABEL_18;
              }
            }

            v26 = a1;
LABEL_18:
            *v26 = v17;
            *(v26 + 8) = v19;
            v27 = vuzp1_s8(v20, *&v17);
            *(v26 + 12) = v27.i32[0];
            *(v26 + 16) = v21;
            *(v26 + 24) = v22;
            *(v26 + 28) = vuzp1_s8(a9, v27).u32[0];
          }

          v13 = v16 + 4;
          v14 += 32;
          v15 = v16;
        }

        while (v16 + 4 != a2);
      }
    }
  }
}

void std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *>(char *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __n128 a8, double a9, double a10, uint8x8_t a11)
{
  if (a5)
  {
    v14 = a5;
    while (a4 > a7 && v14 > a7)
    {
      if (!a4)
      {
        return;
      }

      v18 = 0;
      a8.n128_u64[0] = *a2;
      v19 = -a4;
      while (1)
      {
        v20 = *&a1[v18];
        if (a8.n128_f64[0] < v20)
        {
          break;
        }

        v18 += 32;
        if (__CFADD__(v19++, 1))
        {
          return;
        }
      }

      v22 = -v19;
      v23 = &a1[v18];
      if (-v19 >= v14)
      {
        if (v19 == -1)
        {
          v96 = &a1[v18];

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *&,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *&>(v96, a2);
          return;
        }

        v32 = v22 / 2;
        v27 = &a1[32 * (v22 / 2) + v18];
        if (a3 == a2)
        {
          v25 = a2;
        }

        else
        {
          v33 = &a3[-a2] >> 5;
          a8.n128_u64[0] = *v27;
          v25 = a2;
          do
          {
            v34 = v33 >> 1;
            v35 = &v25[4 * (v33 >> 1)];
            v37 = *v35;
            v36 = (v35 + 4);
            HIDWORD(v20) = HIDWORD(v37);
            v33 += ~(v33 >> 1);
            if (v37 < a8.n128_f64[0])
            {
              v25 = v36;
            }

            else
            {
              v33 = v34;
            }
          }

          while (v33);
        }

        v24 = (v25 - a2) >> 5;
      }

      else
      {
        v24 = v14 / 2;
        v25 = (a2 + 32 * (v14 / 2));
        if (v23 == a2)
        {
          v27 = &a1[v18];
        }

        else
        {
          v26 = (a2 - a1 - v18) >> 5;
          a8.n128_u64[0] = *v25;
          v27 = &a1[v18];
          do
          {
            v28 = v26 >> 1;
            v29 = &v27[32 * (v26 >> 1)];
            v31 = *v29;
            v30 = v29 + 4;
            HIDWORD(v20) = HIDWORD(v31);
            v26 += ~(v26 >> 1);
            if (a8.n128_f64[0] < v31)
            {
              v26 = v28;
            }

            else
            {
              v27 = v30;
            }
          }

          while (v26);
        }

        v32 = (v27 - a1 - v18) >> 5;
      }

      v38 = v25;
      if (v27 != a2)
      {
        v38 = v27;
        if (a2 != v25)
        {
          if (v27 + 32 == a2)
          {
            v45 = *v27;
            v46 = *(v27 + 2);
            v47 = v25 - a2;
            v38 = v25 + v27 - a2;
            v108 = *(v27 + 2);
            v102 = *(v27 + 3);
            v105 = *(v27 + 6);
            v103 = *(v27 + 7);
            v111 = a6;
            v114 = v32;
            v48 = a3;
            v49 = v23;
            v50 = v24;
            memmove(v27, v27 + 32, v47);
            a6 = v111;
            v32 = v114;
            v24 = v50;
            v23 = v49;
            a3 = v48;
            *v38 = v45;
            *(v38 + 2) = v108;
            *(v38 + 3) = v102;
            *(v38 + 2) = v46;
            *(v38 + 6) = v105;
            *(v38 + 7) = v103;
          }

          else if ((a2 + 32) == v25)
          {
            v51 = *(v25 - 4);
            v38 = v27 + 32;
            v52 = *(v25 - 6);
            v11.i32[0] = *(v25 - 5);
            v53 = *(v25 - 2);
            v54 = *(v25 - 2);
            v12.i32[0] = *(v25 - 1);
            if (v25 - 4 != v27)
            {
              v109 = v23;
              v112 = a6;
              v55 = a3;
              v56 = v24;
              v115 = v32;
              v106 = *(v25 - 6);
              memmove(v27 + 32, v27, (v25 - 4) - v27);
              v52 = v106;
              a6 = v112;
              v32 = v115;
              v24 = v56;
              v23 = v109;
              a3 = v55;
            }

            a8 = vmovl_u8(v11);
            *v27 = v51;
            *(v27 + 2) = v52;
            a8.n128_u64[0] = vuzp1_s8(a8.n128_u64[0], a8.n128_u64[0]);
            *(v27 + 3) = a8.n128_u32[0];
            *(v27 + 2) = v53;
            *(v27 + 6) = v54;
            a8.n128_u64[0] = vuzp1_s8(*&vmovl_u8(v12), a8.n128_u64[0]);
            *(v27 + 7) = a8.n128_u32[0];
          }

          else
          {
            v39 = a2 - v27;
            v40 = (a2 - v27) >> 5;
            v41 = v25 - a2;
            if (v40 == (v25 - a2) >> 5)
            {
              v110 = a3;
              v113 = v32;
              v104 = v24;
              v107 = v23;
              v42 = a6;
              v43 = v27;
              v44 = a2;
              do
              {
                a8.n128_f64[0] = std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *&,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *&>(v43, v44);
                v43 += 32;
                if (v43 == a2)
                {
                  break;
                }

                v44 += 32;
              }

              while (v44 != v25);
              v38 = a2;
              a6 = v42;
              v23 = v107;
              a3 = v110;
              v24 = v104;
              v32 = v113;
            }

            else
            {
              v57 = v41 >> 5;
              v58 = (a2 - v27) >> 5;
              do
              {
                v59 = v58;
                v58 = v57;
                v57 = v59 % v57;
              }

              while (v57);
              v60 = &v27[32 * v58];
              do
              {
                v61 = *(v60 - 32);
                v60 -= 32;
                v62 = v61;
                v63 = *(v60 + 2);
                LODWORD(v20) = *(v60 + 3);
                v64 = vmovl_u8(*&v20).u64[0];
                v20 = *(v60 + 2);
                v65 = *(v60 + 6);
                a11.i32[0] = *(v60 + 7);
                a11 = vmovl_u8(a11).u64[0];
                v66 = &v60[v39];
                v67 = v60;
                do
                {
                  v68 = v67;
                  v67 = v66;
                  v69 = *(v66 + 1);
                  *v68 = *v66;
                  *(v68 + 1) = v69;
                  v70 = __OFSUB__(v40, (v25 - v66) >> 5);
                  v72 = v40 - ((v25 - v66) >> 5);
                  v71 = (v72 < 0) ^ v70;
                  v66 = &v27[32 * v72];
                  if (v71)
                  {
                    v66 = &v67[v39];
                  }
                }

                while (v66 != v60);
                *v67 = v62;
                *(v67 + 2) = v63;
                v73 = vuzp1_s8(v64, v62);
                *(v67 + 3) = v73.i32[0];
                *(v67 + 2) = v20;
                *(v67 + 6) = v65;
                a8.n128_u64[0] = vuzp1_s8(a11, v73);
                *(v67 + 7) = a8.n128_u32[0];
              }

              while (v60 != v27);
              v38 = &v27[v41];
            }
          }
        }
      }

      a4 = -(v32 + v19);
      v74 = v14 - v24;
      if (v32 + v24 >= v14 - (v32 + v24) - v19)
      {
        v77 = v23;
        v78 = -(v32 + v19);
        v79 = v24;
        v75 = a6;
        a4 = v32;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *>(v38, v25, a3, v78, v74, a8);
        a1 = v77;
        v25 = v27;
        v74 = v79;
        a3 = v38;
      }

      else
      {
        v75 = a6;
        v76 = a3;
        std::__inplace_merge<std::_ClassicAlgPolicy,std::__less<void,void> &,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_0::operator() const(unsigned long,int)::CaretPair *>(v23, v27, v38, v32, v24, a8);
        a3 = v76;
        a1 = v38;
      }

      a2 = v25;
      v14 = v74;
      a6 = v75;
      if (!v74)
      {
        return;
      }
    }

    if (a4 <= v14)
    {
      if (a1 != a2)
      {
        v89 = -a6;
        v90 = a6;
        v91 = a1;
        do
        {
          v92 = *v91;
          v93 = *(v91 + 1);
          v91 += 32;
          *v90 = v92;
          v90[1] = v93;
          v90 += 2;
          v89 -= 32;
        }

        while (v91 != a2);
        while (a2 != a3)
        {
          if (*a2 >= *a6)
          {
            v94 = *a6;
            v95 = *(a6 + 16);
            a6 += 32;
          }

          else
          {
            v94 = *a2;
            v95 = *(a2 + 16);
            a2 += 32;
          }

          *a1 = v94;
          *(a1 + 1) = v95;
          a1 += 32;
          if (v90 == a6)
          {
            return;
          }
        }

        memmove(a1, a6, -(a6 + v89));
      }
    }

    else if (a2 != a3)
    {
      v80 = 0;
      do
      {
        v81 = (a6 + v80);
        v82 = *(a2 + v80 + 16);
        *v81 = *(a2 + v80);
        v81[1] = v82;
        v80 += 32;
      }

      while ((a2 + v80) != a3);
      v83 = (a6 + v80);
      while (a2 != a1)
      {
        v84 = *(v83 - 4);
        v85 = *(a2 - 32);
        v86 = v84 < v85;
        if (v84 >= v85)
        {
          v87 = v83 - 4;
        }

        else
        {
          v87 = (a2 - 32);
        }

        v88 = *(v87 + 1);
        *(a3 - 2) = *v87;
        *(a3 - 1) = v88;
        a3 -= 32;
        if (v86)
        {
          a2 -= 32;
        }

        else
        {
          v83 -= 4;
        }

        if (v83 == a6)
        {
          return;
        }
      }

      if (v83 != a6)
      {
        v97 = -32;
        do
        {
          v98 = *(v83 - 2);
          v99 = *(v83 - 1);
          v100 = v83 - 4;
          v101 = &a3[v97];
          *v101 = v98;
          *(v101 + 1) = v99;
          v97 -= 32;
          v83 = v100;
        }

        while (v100 != a6);
      }
    }
  }
}

void DrawGlyphsAtPositionsWithString(CGContext *a1, const unsigned __int16 *a2, const CGPoint *a3, const uint64_t *a4, size_t count, const __CFString *a6, CFRange a7, const __CFDictionary *a8)
{
  if (a4 && a6)
  {
    CGContextShowGlyphsAtPositionsWithString();
  }

  else
  {
    CGContextShowGlyphsAtPositions(a1, a2, a3, count);
  }
}

void std::__stable_sort<std::_ClassicAlgPolicy,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_2 &,TLine::CaretInfo *>(__n128 *a1, __n128 *a2, unint64_t a3, __n128 *a4, uint64_t a5, __n128 a6)
{
  if (a3 >= 2)
  {
    v7 = a1;
    if (a3 == 2)
    {
      v8 = a1->n128_f64[0];
      if (a2[-1].n128_f64[0] < a1->n128_f64[0])
      {
        v9 = a1->n128_u32[2];
        v10 = a1->n128_u32[3];
        *a1 = a2[-1];
        a2[-1].n128_f64[0] = v8;
        a2[-1].n128_u32[2] = v9;
        a2[-1].n128_u32[3] = v10;
      }
    }

    else if (a3 > 128)
    {
      v24 = a4;
      v25 = a3 >> 1;
      v26 = &a1[a3 >> 1];
      v27 = a3 >> 1;
      if (a3 <= a5)
      {
        v28.n128_f64[0] = std::__stable_sort_move<std::_ClassicAlgPolicy,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_2 &,TLine::CaretInfo *>(a1, v26, v27, a4, a6);
        v29 = &v24[v25];
        std::__stable_sort_move<std::_ClassicAlgPolicy,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_2 &,TLine::CaretInfo *>(&v7[16 * (a3 >> 1)], a2, a3 - (a3 >> 1), v29, v28);
        v30 = &v24[a3];
        v31 = v29;
        while (v31 != v30)
        {
          if (v31->n128_f64[0] >= v24->n128_f64[0])
          {
            v34 = *v24++;
            v33 = v34;
          }

          else
          {
            v32 = *v31++;
            v33 = v32;
          }

          *v7 = v33;
          v7 += 16;
          if (v24 == v29)
          {
            while (v31 != v30)
            {
              v36 = *v31++;
              *v7 = v36;
              v7 += 16;
            }

            return;
          }
        }

        while (v24 != v29)
        {
          v35 = *v24++;
          *v7 = v35;
          v7 += 16;
        }
      }

      else
      {
        std::__stable_sort<std::_ClassicAlgPolicy,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_2 &,TLine::CaretInfo *>(a1, v26, v27, a4, a5);
        std::__stable_sort<std::_ClassicAlgPolicy,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_2 &,TLine::CaretInfo *>(&v7[16 * (a3 >> 1)], a2, a3 - (a3 >> 1), v24, a5);

        std::__inplace_merge<std::_ClassicAlgPolicy,TLine::EnumerateCaretOffsets(std::function<void ()(double,long,BOOL,BOOL *)>)::$_2 &,TLine::CaretInfo *>(v7, &v7[16 * (a3 >> 1)], a2->n128_f64, a3 >> 1, a3 - (a3 >> 1), v24, a5);
      }
    }

    else if (a1 != a2)
    {
      v12 = a1 + 1;
      if (&a1[1] != a2)
      {
        v13 = 0;
        v14 = a1;
        do
        {
          v15 = v12;
          v16 = v14[1].n128_f64[0];
          v17 = v14->n128_u64[0];
          if (v16 < v14->n128_f64[0])
          {
            v18 = v14[1].n128_u32[2];
            v17.i32[0] = v14[1].n128_i32[3];
            v19 = vmovl_u8(v17).u64[0];
            v20 = v13;
            while (1)
            {
              *(a1 + v20 + 16) = *(a1 + v20);
              if (!v20)
              {
                break;
              }

              v21 = *(a1[-1].n128_f64 + v20);
              v20 -= 16;
              if (v16 >= v21)
              {
                v22 = &a1[1] + v20;
                goto LABEL_16;
              }
            }

            v22 = a1;
LABEL_16:
            *v22 = v16;
            *(v22 + 8) = v18;
            *(v22 + 12) = vuzp1_s8(v19, *&v16).u32[0];
          }

          v12 = v15 + 1;
          v13 += 16;
          v14 = v15;
        }

        while (&v15[1] != a2);
      }
    }
  }
}

uint64_t TDelegateRun::TDelegateRun(uint64_t a1, uint64_t a2, uint64_t a3, CFIndex a4, int a5)
{
  *TRun::TRun(a1, a2, a3, a4, a5) = &unk_1EF25A850;
  *(a1 + 320) = atomic_load_explicit((a2 + 320), memory_order_acquire);
  v7 = *(a2 + 328);
  v8 = *(a2 + 344);
  *(a1 + 360) = *(a2 + 360);
  *(a1 + 328) = v7;
  *(a1 + 344) = v8;
  *(a1 + 368) = *(a2 + 368);
  *(a1 + 376) = *(a2 + 376);
  *(a1 + 384) = *(a2 + 384);
  return a1;
}

void RestoreFlippedTextMatrix(CGContext *a1)
{
  *&v2 = -1;
  *(&v2 + 1) = -1;
  *&v4.c = v2;
  *&v4.tx = v2;
  *&v4.a = v2;
  CGContextGetTextMatrix(&v4, a1);
  v4.d = -v4.d;
  v3 = v4;
  CGContextSetTextMatrix(a1, &v3);
  CGContextRestoreGState(a1);
}

uint64_t std::function<void ()(double,long,BOOL,BOOL *)>::operator()(uint64_t a1, uint64_t a2, char a3, uint64_t a4, double a5)
{
  v14 = a5;
  v13 = a2;
  v12 = a3;
  v11 = a4;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v14, &v13, &v12, &v11);
  }

  v6 = std::__throw_bad_function_call[abi:fn200100]();
  return std::__function::__func<TLine::CharIndexToOffsets(long)::$_0,std::allocator<TLine::CharIndexToOffsets(long)::$_0>,void ()(double,long,BOOL,BOOL *)>::operator()(v6, v7, v8, v9, v10);
}

uint64_t std::__function::__func<TLine::CharIndexToOffsets(long)::$_0,std::allocator<TLine::CharIndexToOffsets(long)::$_0>,void ()(double,long,BOOL,BOOL *)>::operator()(uint64_t result, uint64_t *a2, uint64_t *a3, unsigned __int8 *a4, _BYTE **a5)
{
  if (*(result + 24) != *a4)
  {
    v5 = *a2;
    v6 = *a3;
    v7 = *(result + 32);
    if (v7 == *a3)
    {
      **a5 = 1;
LABEL_4:
      **(result + 16) = v5;
      return result;
    }

    if (v7 < *a3)
    {
      v8 = *(result + 8);
      if (*v8 > v6)
      {
        *v8 = v6;
        goto LABEL_4;
      }
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(double,long,BOOL,BOOL *)>::~__value_func[abi:fn200100](uint64_t a1)
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

uint64_t CTLineCreateHyphenatedLineWithOffset(uint64_t a1, CFIndex a2, CFIndex a3, const __CFString *a4, double a5)
{
  __dst[34] = *MEMORY[0x1E69E9840];
  v19 = CTLineCreateFromLineWithOffset(a1, a2, a3, a5);
  if (atomic_load_explicit(&v19, memory_order_acquire))
  {
    v7 = *(atomic_load_explicit(&v19, memory_order_acquire) + 40);
    v8 = *(v7 + 72);
    v9 = *(v7 + 80);
    if (!a1)
    {
      goto LABEL_11;
    }

    v10 = *(a1 + 40);
    v11 = *(v10 + 72);
    for (i = *(v10 + 80); ; i = 0)
    {
      if (v9 + v8 < v11 + i)
      {
        *&v13 = 0xAAAAAAAAAAAAAAAALL;
        *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *&__dst[9] = v13;
        *&__dst[7] = v13;
        *&__dst[5] = v13;
        *&__dst[3] = v13;
        memset(__dst, 0, 24);
        __dst[11] = &__dst[3];
        TCharStream::LazyCopyChars(*v7, v9 + v8, 1);
        *&v20 = __dst;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v20);
      }

      RunWithCharIndex = TLine::FindRunWithCharIndex(v7, v9 + v8 - 1, 1);
      v15 = *(v7 + 16);
      v16 = *(v7 + 24) - v15;
      if (RunWithCharIndex >= v16 >> 3)
      {
        break;
      }

      if (v16 >> 3 > RunWithCharIndex)
      {
        v17 = *(*(v15 + 8 * RunWithCharIndex) + 40);
        memcpy(__dst, &unk_18475AF50, 0x110uLL);
        TTypesetterString::TTypesetterString(__dst, a4, atomic_load_explicit((v17 + 40), memory_order_acquire));
      }

      __break(1u);
LABEL_11:
      v11 = 0;
    }
  }

  return 0;
}

void CTLineEnumerateCaretOffsets(CTLineRef line, void *block)
{
  v3[4] = *MEMORY[0x1E69E9840];
  if (line)
  {
    if (block)
    {
      v2 = *(line + 5);
      v3[0] = &unk_1EF256F88;
      v3[1] = _Block_copy(block);
      v3[3] = v3;
      TLine::EnumerateCaretOffsets(v2, v3);
      std::__function::__value_func<void ()(double,long,BOOL,BOOL *)>::~__value_func[abi:fn200100](v3);
    }
  }
}

uint64_t TComponentFont::GetLanguageAwareOutsets(atomic_ullong *this, __n128 a2, double *a3, double *a4, double *a5, double *a6, __CFString *a7)
{
  LanguageAwareOutsets = TBaseFont::GetLanguageAwareOutsets(this, a2, a3, a4, a5, a6, a7);
  if (LanguageAwareOutsets && (*(*this + 792))(this))
  {
    LanguageAwareAdjustRatio = GetLanguageAwareAdjustRatio();
    ComponentAttribute = TComponentFont::GetComponentAttribute(this, @"languageAwareLineHeightRatio");
    if (ComponentAttribute)
    {
      valuePtr = -1;
      CFNumberGetValue(ComponentAttribute, kCFNumberDoubleType, &valuePtr);
      LanguageAwareAdjustRatio = *&valuePtr;
    }

    *a4 = *a4 - LanguageAwareAdjustRatio * *a4;
    *a6 = *a6 - LanguageAwareAdjustRatio * *a6;
  }

  return LanguageAwareOutsets;
}

BOOL GetLanguageAwareOutsetIndexForFontName(const __CFString *a1, double *a2, double *a3, double *a4, double *a5, __CFString *a6)
{
  v53 = *MEMORY[0x1E69E9840];
  if (_ExuberatedGroupForPreferredLanguages(0, 0) == 4)
  {
    v12 = &kLanguageAwareOutsetsTableUrdu;
  }

  else
  {
    v12 = &kLanguageAwareOutsetsTable;
  }

  valuePtr = 0;
  os_unfair_lock_lock_with_options();
  Mutable = qword_1ED5677B8;
  if (!qword_1ED5677B8)
  {
    Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 1072, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    qword_1ED5677B8 = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, a1);
  if (Value)
  {
    CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr);
    v15 = valuePtr;
    os_unfair_lock_unlock(&_MergedGlobals_3);
  }

  else
  {
    os_unfair_lock_unlock(&_MergedGlobals_3);
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v51 = v16;
    v52 = v16;
    v49 = v16;
    v50 = v16;
    v47 = v16;
    v48 = v16;
    v45 = v16;
    v46 = v16;
    v43 = v16;
    v44 = v16;
    v41 = v16;
    v42 = v16;
    v39 = v16;
    v40 = v16;
    v38 = v16;
    *buffer = v16;
    CFStringGetCString(a1, buffer, 256, 0x8000100u);
    v17 = strlen(buffer);
    v18 = buffer[0];
    if (buffer[0] == 46 && v17 >= 3)
    {
      if (buffer[v17 - 2] == 71 && (v19 = buffer[v17 - 1], (v19 & 0x8000000000000000) == 0) && (*(MEMORY[0x1E69E9830] + 4 * v19 + 60) & 0x400) != 0)
      {
        buffer[v17 - 2] = 0;
        v18 = buffer[0];
      }

      else
      {
        v18 = 46;
      }
    }

    v20 = a2;
    v21 = a3;
    v22 = a4;
    v23 = a5;
    if (v18 != 46 || buffer[1] != 83 || buffer[2] != 70)
    {
      goto LABEL_22;
    }

    v24 = &word_1847537F2;
    v25 = 10;
    while (strcmp(buffer, &aApplecoloremoj_1[*(v24 - 1)]))
    {
      v24 += 2;
      if (!--v25)
      {
        goto LABEL_22;
      }
    }

    v15 = *v24;
    if (!v15)
    {
LABEL_22:
      v35[0] = 0;
      v35[1] = v35;
      v35[2] = 0x2020000000;
      v35[3] = buffer;
      v33[0] = 0;
      v33[1] = v33;
      v33[2] = 0x2020000000;
      v34 = -1;
      __compar[0] = MEMORY[0x1E69E9820];
      __compar[1] = 3221225472;
      __compar[2] = ___ZL39_GetLanguageAwareOutsetIndexForFontNamePK10__CFString_block_invoke;
      __compar[3] = &unk_1E6E37450;
      __compar[4] = v33;
      __compar[5] = v35;
      v26 = bsearch_b(&v34, &kPSFontNamesOffsets, 0x430uLL, 2uLL, __compar);
      if (v26)
      {
        v15 = ((v26 - &kPSFontNamesOffsets) >> 1) + 1;
      }

      else
      {
        v15 = 0;
      }

      _Block_object_dispose(v33, 8);
      _Block_object_dispose(v35, 8);
    }

    os_unfair_lock_lock_with_options();
    CFDictionaryAddValue(qword_1ED5677B8, a1, [MEMORY[0x1E696AD98] numberWithLong:v15]);
    os_unfair_lock_unlock(&_MergedGlobals_3);
    a5 = v23;
    a4 = v22;
    a3 = v21;
    a2 = v20;
  }

  if ((v15 - 1) <= 0x42F)
  {
    if (!a6)
    {
LABEL_38:
      v30 = &v12[32 * v15];
      *a2 = *(v30 - 4);
      *a3 = *(v30 - 2);
      *a4 = *(v30 - 3);
      *a5 = *(v30 - 1);
      return (v15 - 1) < 0x430;
    }

    *buffer = 0xAAAAAAAAAAAAAAAALL;
    LanguageIdentifierByNormalizing(a6, 0, buffer);
    v27 = atomic_load_explicit(buffer, memory_order_acquire);
    v28 = v27;
    if (v27 == @"ur")
    {
    }

    else
    {
      if (!v27)
      {

LABEL_36:
        v12 = &kLanguageAwareOutsetsTable;
        goto LABEL_37;
      }

      v29 = CFEqual(v27, @"ur");

      if (!v29)
      {
        goto LABEL_36;
      }
    }

    v12 = &kLanguageAwareOutsetsTableUrdu;
LABEL_37:

    goto LABEL_38;
  }

  return (v15 - 1) < 0x430;
}

void *CTFontGetLanguageAwareOutsetsForLanguage(void *result, double *a2, double *a3, double *a4, double *a5)
{
  if (result)
  {
    v5 = result[5];
    if (*(v5 + 12))
    {
      return 0;
    }

    else
    {
      result = *(v5 + 408);
      if (result)
      {
        v13 = NAN;
        v14 = NAN;
        v11 = NAN;
        v12 = NAN;
        v10 = *(v5 + 24);
        result = (*(*result + 896))(result, &v14, &v13, &v12, &v11, v10);
        if (result)
        {
          if (a2)
          {
            *a2 = v10 * v14;
          }

          if (a3)
          {
            *a3 = v10 * v13;
          }

          if (a4)
          {
            *a4 = v10 * v12;
          }

          if (a5)
          {
            *a5 = v10 * v11;
          }
        }
      }
    }
  }

  return result;
}

uint64_t TBaseFont::GetLanguageAwareOutsets(atomic_ullong *this, __n128 a2, double *a3, double *a4, double *a5, double *a6, __CFString *a7)
{
  v19 = *MEMORY[0x1E69E9840];
  explicit = atomic_load_explicit(this + 12, memory_order_acquire);
  if (explicit && GetLanguageAwareOutsetIndexForFontName(explicit, a3, a4, a5, a6, a7))
  {
    return 1;
  }

  if ((*(*this + 712))(this, a3, a4, a5, a6, a7, a2))
  {
    return 0;
  }

  result = atomic_load_explicit(this + 30, memory_order_acquire);
  if (result || (result = TBaseFont::CreateTraitsValues(this)) != 0)
  {
    v14 = IndexesBracketing<double const*,double>(kCTFontDefaultWeights, &kCTFontWeightRegular, *(result + 8), 0.001);
    v17[0] = xmmword_18475CD50;
    v17[1] = xmmword_18475CD60;
    v18 = 8;
    v15 = *(v17 + v14);
    if (v15 >= 0x11)
    {
      v15 = 17;
    }

    v16 = kFont2X[5 * v15];

    return GetLanguageAwareOutsetIndexForFontName(v16, a3, a4, a5, a6, 0);
  }

  return result;
}

uint64_t CTFontGetClippingMetrics(uint64_t result, double *a2, double *a3)
{
  if (result)
  {
    return TFont::GetWinMetrics(*(result + 40), a2, a3);
  }

  return result;
}

uint64_t TCFBase<TRunDelegate>::ClassDestruct(uint64_t result)
{
  v1 = *(result + 16);
  if (v1)
  {
    return v1();
  }

  return result;
}

uint64_t TFont::GetWinMetrics(TBaseFont **this, double *a2, double *a3)
{
  result = TBaseFont::GetInitializedGraphicsFont(this[51]);
  if (result)
  {
    result = CGFontGetParserFont();
    if (result)
    {
      result = FPFontGetWinMetrics();
      if (result)
      {
        if (*(this + 14))
        {
          v7 = (this + 7);
        }

        else
        {
          TFont::InitStrikeMetrics(this);
        }

        v8 = v7[6];
        if (a2)
        {
          *a2 = v8 * *a2;
        }

        if (a3)
        {
          *a3 = v8 * *a3;
        }

        return 1;
      }
    }
  }

  return result;
}

uint64_t CTRunDelegate::Destruct(uint64_t this, const void *a2)
{
  v2 = *(this + 40);
  v3 = *(v2 + 8);
  if (v3)
  {
    return v3(*(v2 + 40));
  }

  return this;
}

BOOL TCFBase<TRunDelegate>::ClassEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 40);
  v3 = *(a2 + 40);
  return !memcmp(v2, v3, 0x28uLL) && v2[5] == v3[5];
}

void TDescriptor::MergeVariationWithBase(TDescriptor *this, const TBaseFont *a2, const __CFDictionary *a3, atomic_ullong *a4)
{
  if (a2)
  {
    v31 = 0xAAAAAAAAAAAAAAAALL;
    (*(*a2 + 120))(&v31, a2);
    if (!atomic_load_explicit(&v31, memory_order_acquire))
    {
LABEL_64:

      return;
    }

    v30 = 0xAAAAAAAAAAAAAAAALL;
    (*(*a2 + 112))(&v30, a2);
    v8 = *(this + 4);
    if (!(*(*a2 + 464))(a2))
    {
      goto LABEL_16;
    }

    Value = CFDictionaryGetValue(a3, &unk_1EF278070);
    v10 = Value;
    if (Value)
    {
      v11 = CFGetTypeID(Value);
      if (v11 != CFNumberGetTypeID())
      {
        v10 = 0;
      }
    }

    v12 = atomic_load_explicit(&v30, memory_order_acquire);
    if (!v12)
    {

      v17 = 1;
      if (!v10 || (v8 & 0x8000) != 0)
      {
        goto LABEL_29;
      }

      goto LABEL_20;
    }

    v13 = v12;
    v14 = CFDictionaryGetValue(v12, &unk_1EF278070);

    if (!v10)
    {
      v17 = 1;
      goto LABEL_29;
    }

    if (v14)
    {
      valuePtr = NAN;
      CFNumberGetValue(v10, kCFNumberDoubleType, &valuePtr);
      v15 = valuePtr;
      valuePtr = NAN;
      CFNumberGetValue(v14, kCFNumberDoubleType, &valuePtr);
      if (vabdd_f64(v15, valuePtr) < 0.0001 || (v8 & 0x8000) != 0)
      {
        goto LABEL_17;
      }
    }

    else
    {
LABEL_16:
      if ((v8 & 0x8000) != 0)
      {
LABEL_17:
        v17 = 1;
LABEL_29:
        if (!atomic_load_explicit(&v30, memory_order_acquire))
        {
          goto LABEL_50;
        }

        explicit = atomic_load_explicit(&v31, memory_order_acquire);
        v20 = atomic_load_explicit(&v30, memory_order_acquire);
        if (a3)
        {
          if (v20)
          {
            if (!CFEqual(v20, a3))
            {
              v21 = CFGetTypeID(a3);
              if (v21 == CFDictionaryGetTypeID())
              {
                Count = CFDictionaryGetCount(v20);
                v23 = CFDictionaryGetCount(a3);
                valuePtr = 0.0;
                if (v23 || !Count)
                {
                  if (Count || !v23)
                  {
                    v33 = 0xAAAAAAAAAAAAAAAALL;
                    CreateMergedVariation(explicit, v20, a3, &v33);
                    CreateValidVariation(explicit, atomic_load_explicit(&v33, memory_order_acquire), &v32);

                    v25 = atomic_load_explicit(&valuePtr, memory_order_acquire);
                    if (v25 != v20 && (!v25 || !CFEqual(v20, v25)))
                    {
                      CFDictionarySetValue(atomic_load_explicit(a4, memory_order_acquire), @"NSCTFontVariationAttribute", atomic_load_explicit(&v33, memory_order_acquire));

                      goto LABEL_49;
                    }
                  }

                  else
                  {
                    CreateValidVariation(explicit, a3, &v33);

                    v24 = atomic_load_explicit(&valuePtr, memory_order_acquire);
                    if (v24 != v20 && (!v24 || !CFEqual(v20, v24)))
                    {
                      CFDictionarySetValue(atomic_load_explicit(a4, memory_order_acquire), @"NSCTFontVariationAttribute", a3);
LABEL_49:

LABEL_50:
                      v27 = CFDictionaryGetValue(atomic_load_explicit(a4, memory_order_acquire), @"NSCTFontVariationAttribute");
                      if (v17)
                      {
                        valuePtr = -3.72066208e-103;
                        CreateValidVariation(atomic_load_explicit(&v31, memory_order_acquire), v27, &valuePtr);
                        atomic_load_explicit(&valuePtr, memory_order_acquire);
                        if ((*(*a2 + 16))(a2) != 1414809156)
                        {
                          if ((*(*a2 + 16))(a2) != 1414743620)
                          {
                            goto LABEL_59;
                          }

                          v28 = *(*(a2 + 76) + 40);
                          if ((*(v28 + 16) & 0x80000000) == 0)
                          {
                            TDescriptor::InitBaseFont(*(*(a2 + 76) + 40), 0, 0.0);
                          }

                          v29 = atomic_load_explicit((v28 + 32), memory_order_acquire);
                          if (!v29 || (*(*v29 + 16))(v29) != 1414809156)
                          {
LABEL_59:
                            operator new();
                          }
                        }

                        operator new();
                      }

                      valuePtr = -3.72066208e-103;
                      (*(*a2 + 504))(&valuePtr, a2);
                      v33 = 0xAAAAAAAAAAAAAAAALL;
                      AddDefaultsToVariation(atomic_load_explicit(&v31, memory_order_acquire), v27, &v33);
                      v32 = 0xAAAAAAAAAAAAAAAALL;
                      atomic_load_explicit(&valuePtr, memory_order_acquire);
                      atomic_load_explicit(&v33, memory_order_acquire);
                      VariationsForGraphicsFontByAddingVariation(&v32);
                      operator new();
                    }
                  }
                }
              }
            }
          }
        }

        CFDictionaryRemoveValue(atomic_load_explicit(a4, memory_order_acquire), @"NSCTFontVariationAttribute");
        atomic_fetch_add_explicit(a2 + 2, 1u, memory_order_relaxed);
        __swp(v26, this + 8);
        atomic_fetch_or_explicit(this + 4, 0x80000000, memory_order_relaxed);
        if (v26 && atomic_fetch_add_explicit(v26 + 2, 0xFFFFFFFF, memory_order_release) == 1)
        {
          __dmb(9u);
          (*(*v26 + 8))(v26);
        }

        goto LABEL_64;
      }
    }

LABEL_20:
    if (atomic_load_explicit(&v30, memory_order_acquire))
    {
      valuePtr = -3.72066208e-103;
      CreateValidVariation(atomic_load_explicit(&v31, memory_order_acquire), a3, &valuePtr);
      if (atomic_load_explicit(&valuePtr, memory_order_acquire) && !CFEqual(atomic_load_explicit(&v30, memory_order_acquire), atomic_load_explicit(&valuePtr, memory_order_acquire)))
      {
        (*(*a2 + 56))(&v33, a2, @"NSCTFontFileURLAttribute");
        v18 = atomic_exchange(&v33, 0);

        if (v18)
        {
          CFDictionaryRemoveValue(atomic_load_explicit(a4, memory_order_acquire), @"NSFontNameAttribute");
          CFDictionarySetValue(atomic_load_explicit(a4, memory_order_acquire), @"NSCTFontFileURLAttribute", v18);
        }
      }
    }

    v17 = 0;
    goto LABEL_29;
  }
}

const void *TAttributes::GetBackgroundColor(TAttributes *this, const __CFDictionary *a2, const __CFString **a3)
{
  v5 = @"CTBackgroundColor";
  result = CFDictionaryGetValue(this, @"CTBackgroundColor");
  if (a2 && result || !result && (v5 = @"NSBackgroundColor", result = CFDictionaryGetValue(this, @"NSBackgroundColor"), a2) && result)
  {
    *a2 = v5;
  }

  return result;
}

void CreateMergedVariation(const __CFArray *a1@<X0>, const __CFDictionary *a2@<X1>, const __CFDictionary *a3@<X2>, void *a4@<X8>)
{
  v21 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableDictionary::TCFMutableDictionary(&v21, a2);
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count)
    {
      v7 = Count;
      for (i = 0; v7 != i; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        Value = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisIdentifier");
        if (!a3)
        {
          continue;
        }

        v11 = Value;
        v12 = CFDictionaryGetValue(a3, Value);
        if (!v12)
        {
          v17 = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisName");
          if (!v17)
          {
            continue;
          }

          v12 = CFDictionaryGetValue(a3, v17);
          if (!v12)
          {
            continue;
          }
        }

        v13 = v12;
        valuePtr = -1;
        v14 = CFGetTypeID(v12);
        if (v14 == CFNumberGetTypeID() || v14 == CFBooleanGetTypeID())
        {
          CFNumberGetValue(v13, kCFNumberDoubleType, &valuePtr);
          DoubleValue = *&valuePtr;
        }

        else
        {
          if (v14 != CFStringGetTypeID())
          {
            CFDictionarySetValue(atomic_load_explicit(&v21, memory_order_acquire), v11, v13);
            continue;
          }

          DoubleValue = CFStringGetDoubleValue(v13);
          valuePtr = *&DoubleValue;
        }

        ClampValueToRangeOfAxis(DoubleValue, ValueAtIndex);
        TCFNumber::TCFNumber<double>(&v19, v16);
        CFDictionarySetValue(atomic_load_explicit(&v21, memory_order_acquire), v11, atomic_load_explicit(&v19, memory_order_acquire));
      }
    }
  }

  *a4 = atomic_exchange(&v21, 0);
}

void CreateValidVariation(const __CFArray *a1@<X0>, void *cf@<X1>, CFDictionaryRef *a3@<X8>)
{
  v67[1] = *MEMORY[0x1E69E9840];
  v6 = CFGetTypeID(cf);
  if (v6 != CFDictionaryGetTypeID())
  {
    *a3 = 0;
    return;
  }

  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v66[14] = v7;
  v66[13] = v7;
  v66[12] = v7;
  v66[11] = v7;
  v66[10] = v7;
  v66[9] = v7;
  v66[8] = v7;
  v66[7] = v7;
  v66[6] = v7;
  v66[5] = v7;
  v66[4] = v7;
  v66[3] = v7;
  v66[2] = v7;
  v66[1] = v7;
  v66[0] = v7;
  __p = 0;
  v64 = 0;
  v65 = 0;
  v67[0] = v66;
  v61[13] = v7;
  v61[14] = v7;
  v61[11] = v7;
  v61[12] = v7;
  v61[9] = v7;
  v61[10] = v7;
  v61[7] = v7;
  v61[8] = v7;
  v61[5] = v7;
  v61[6] = v7;
  v61[3] = v7;
  v61[4] = v7;
  v61[1] = v7;
  v61[2] = v7;
  v61[0] = v7;
  values = 0;
  v59 = 0;
  v60 = 0;
  v62 = v61;
  if (!a1)
  {
    goto LABEL_70;
  }

  Count = CFArrayGetCount(a1);
  if (!Count)
  {
    goto LABEL_70;
  }

  v53 = a3;
  v8 = 0;
  v9 = 0;
  v10 = a1;
  v54 = a1;
  do
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v10, v9);
    Value = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisIdentifier");
    if (cf)
    {
      v13 = Value;
      v14 = CFDictionaryGetValue(cf, Value);
      if (v14 || (v23 = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisName")) != 0 && (v14 = CFDictionaryGetValue(cf, v23), v8 |= v14 != 0, v14))
      {
        v15 = v14;
        valuePtr = NAN;
        v16 = CFGetTypeID(v14);
        if (v16 == CFNumberGetTypeID() || v16 == CFBooleanGetTypeID())
        {
          CFNumberGetValue(v15, kCFNumberDoubleType, &valuePtr);
          DoubleValue = valuePtr;
        }

        else
        {
          if (v16 != CFStringGetTypeID())
          {
LABEL_28:
            v8 = 1;
            goto LABEL_67;
          }

          DoubleValue = CFStringGetDoubleValue(v15);
          valuePtr = DoubleValue;
        }

        ClampValueToRangeOfAxis(DoubleValue, ValueAtIndex);
        v19 = v18;
        v20 = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisDefaultValue");
        if (CFNumberCompare([MEMORY[0x1E696AD98] numberWithDouble:v19], v20, 0) == kCFCompareEqualTo)
        {
          goto LABEL_28;
        }

        v21 = v64;
        if (v64 >= v65)
        {
          v24 = (v64 - __p) >> 3;
          if ((v24 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v25 = (v65 - __p) >> 2;
          if (v25 <= v24 + 1)
          {
            v25 = v24 + 1;
          }

          if (v65 - __p >= 0x7FFFFFFFFFFFFFF8)
          {
            v26 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v26 = v25;
          }

          if (v26)
          {
            v27 = v67[0];
            if (v67[0] + 8 * v26 > v67)
            {
              if (!(v26 >> 61))
              {
                operator new();
              }

LABEL_84:
              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            v67[0] += 8 * v26;
          }

          else
          {
            v27 = 0;
          }

          v28 = v27 + 8 * v26;
          v29 = (v27 + 8 * v24);
          *v29 = v13;
          v22 = (v29 + 1);
          v30 = (v27 + 8 * v24 - (v64 - __p));
          memcpy(v30, __p, v64 - __p);
          v31 = __p;
          v32 = v65;
          __p = v30;
          v64 = v22;
          v65 = v28;
          if (v31)
          {
            v10 = v54;
            if (v66 > v31 || v67 <= v31)
            {
              operator delete(v31);
            }

            else if (v32 == v67[0])
            {
              v67[0] = v31;
            }
          }

          else
          {
            v10 = v54;
          }
        }

        else
        {
          *v64 = v13;
          v22 = v21 + 8;
        }

        v64 = v22;
        TCFNumber::TCFNumber<double>(&v56, v19);
        v33 = v59;
        if (v59 < v60)
        {
          *v33 = atomic_exchange(&v56, 0);
          v34 = v33 + 1;
LABEL_66:
          v59 = v34;

          v8 |= v19 != valuePtr;
          goto LABEL_67;
        }

        v35 = v59 - values;
        if ((v35 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        v36 = (v60 - values) >> 2;
        if (v36 <= v35 + 1)
        {
          v36 = v35 + 1;
        }

        if (v60 - values >= 0x7FFFFFFFFFFFFFF8)
        {
          v37 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v37 = v36;
        }

        if (v37)
        {
          v38 = v62;
          if (&v62[v37] > &v62)
          {
            if (!(v37 >> 61))
            {
              operator new();
            }

            goto LABEL_84;
          }

          v62 += v37;
        }

        else
        {
          v38 = 0;
        }

        v39 = &v38[v35];
        *v39 = atomic_exchange(&v56, 0);
        v34 = v39 + 1;
        v41 = values;
        v40 = v59;
        v42 = (v39 + values - v59);
        if (values != v59)
        {
          v43 = values;
          v44 = v42;
          do
          {
            *v44++ = atomic_exchange(v43++, 0);
          }

          while (v43 != v40);
          do
          {
            v45 = *v41++;
          }

          while (v41 != v40);
          v41 = values;
        }

        values = v42;
        v59 = v34;
        v46 = v60;
        v60 = &v38[v37];
        if (v41)
        {
          v47 = v61 <= v41 && &v62 > v41;
          v10 = v54;
          if (v47)
          {
            if (v46 == v62)
            {
              v62 = v41;
            }
          }

          else
          {
            operator delete(v41);
          }
        }

        else
        {
          v10 = v54;
        }

        goto LABEL_66;
      }
    }

LABEL_67:
    ++v9;
  }

  while (v9 != Count);
  a3 = v53;
  if (v8)
  {
    *v53 = CFDictionaryCreate(*MEMORY[0x1E695E480], __p, values, (v64 - __p) >> 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    goto LABEL_71;
  }

LABEL_70:
  valuePtr = COERCE_DOUBLE(cf);
  *a3 = atomic_exchange(&valuePtr, 0);

LABEL_71:
  v48 = values;
  if (values)
  {
    v49 = v59;
    v50 = values;
    if (v59 != values)
    {
      do
      {
        v51 = v49 - 1;

        v49 = v51;
      }

      while (v51 != v48);
      v50 = values;
    }

    v59 = v48;
    if (v61 > v50 || &v62 <= v50)
    {
      operator delete(v50);
    }
  }

  values = &__p;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&values);
}

uint64_t TRun::EnsureRareData(TRun *this)
{
  result = *(this + 39);
  if (!result)
  {
    operator new();
  }

  return result;
}

void TLine::DetachRuns(atomic_ullong *this)
{
  v2 = (this[3] - this[2]) >> 3;
  if (v2 >= 1)
  {
    for (i = 0; i != v2; ++i)
    {
      TLine::DetachRun(this, i);
    }
  }
}

void TTenuousComponentFont::TTenuousComponentFont(TTenuousComponentFont *this, atomic_ullong *a2, const __CFDictionary *a3)
{
  TComponentFont::TComponentFont(this, a2);
  *v6 = &unk_1EF25A118;
  *(this + 95) = atomic_load_explicit(a2 + 95, memory_order_acquire);
  *(this + 96) = a3;
  *(this + 776) = 0u;
  *(this + 396) = 256;
  *(this + 199) = 0;
  *(this + 800) = 0;
}

CTLineRef CTLineCreateTruncatedLine(CTLineRef line, double width, CTLineTruncationType truncationType, CTLineRef truncationToken)
{
  if (!truncationToken)
  {
    operator new();
  }

  if (*(*(truncationToken + 5) + 104) <= width)
  {
    TruncatedLine = CreateTruncatedLine(line, truncationType, truncationToken, 0, width);
  }

  else
  {
    TruncatedLine = 0;
  }

  return TruncatedLine;
}

void TLine::InsertLastRun(TLine *a1, uint64_t a2, atomic_ullong *a3)
{
  v6 = atomic_exchange(a3, 0);
  v4 = *(v6 + 48);
  v5 = *(a1 + 12);
  if (v5)
  {
    *(v5 + 24) = v4;
    *(a1 + 12) = v4;
    *(v4 + 3) = 0;
    *(v4 + 4) = v5;
  }

  std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::insert(a1 + 2, (*(a1 + 2) + 8 * a2), &v6);
  TLine::UpdateCachedMetricsForRun(a1, v4);
}

uint64_t TBaseFont::CopyAttribute(TBaseFont *this, const __CFString *key)
{
  FontAttributeID = GetFontAttributeID(key);
  v4 = *(*this + 40);

  return v4(this, FontAttributeID);
}

char *std::vector<CTRun *,TInlineBufferAllocator<CTRun *,3ul>>::insert(void *a1, char *__src, char *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 < v7)
  {
    if (__src == v6)
    {
      *v6 = *a3;
      a1[1] = v6 + 8;
      return v4;
    }

    v8 = __src + 8;
    if (v6 < 8)
    {
      v9 = a1[1];
    }

    else
    {
      *v6 = *(v6 - 1);
      v9 = v6 + 8;
    }

    a1[1] = v9;
    if (v6 != v8)
    {
      memmove(__src + 8, __src, v6 - v8);
      v9 = a1[1];
    }

    if (v9 >= v4)
    {
      v19 = v9 <= a3 || v4 > a3;
      v20 = 8;
      if (v19)
      {
        v20 = 0;
      }

      *v4 = *&a3[v20];
      return v4;
    }

    __break(1u);
LABEL_36:
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v10 = *a1;
  v31 = 0;
  v32 = 0;
  *&v33 = 0;
  v11 = ((v6 - v10) >> 3) + 1;
  if (v11 >> 61)
  {
    goto LABEL_36;
  }

  v12 = __src - v10;
  v13 = v7 - v10;
  if (v13 >> 2 > v11)
  {
    v11 = v13 >> 2;
  }

  if (v13 >= 0x7FFFFFFFFFFFFFF8)
  {
    v14 = 0x1FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = v11;
  }

  v15 = v12 >> 3;
  v34 = a1 + 3;
  if (v14)
  {
    v16 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<CTRun *,3ul>>((a1 + 3), v14);
  }

  else
  {
    v16 = 0;
  }

  v17 = (v16 + 8 * v15);
  v18 = v16 + 8 * v14;
  *(&v33 + 1) = v18;
  if (v15 == v14)
  {
    if (v12 < 1)
    {
      if (v10 == v4)
      {
        v21 = 1;
      }

      else
      {
        v21 = v12 >> 2;
      }

      v39 = a1 + 3;
      v22 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<CTRun *,3ul>>((a1 + 3), v21);
      v35 = v16;
      v36 = v16 + 8 * v15;
      *(&v33 + 1) = v22 + 8 * v23;
      v24 = (v22 + 8 * (v21 >> 2));
      v37 = v36;
      v38 = v18;
      std::__split_buffer<CTRun *,TInlineBufferAllocator<CTRun *,3ul> &>::~__split_buffer(&v35);
      v17 = v24;
    }

    else
    {
      v17 = (v17 - (((v12 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
    }
  }

  *v17 = *a3;
  *&v33 = v17 + 1;
  memcpy(v17 + 1, v4, a1[1] - v4);
  v25 = *a1;
  *&v33 = v17 + a1[1] - v4 + 8;
  a1[1] = v4;
  v26 = v4 - v25;
  v27 = v17 - (v4 - v25);
  memcpy(v27, v25, v26);
  v28 = *a1;
  *a1 = v27;
  v29 = a1[2];
  *(a1 + 1) = v33;
  *&v33 = v28;
  *(&v33 + 1) = v29;
  v31 = v28;
  v32 = v28;
  std::__split_buffer<CTRun *,TInlineBufferAllocator<CTRun *,3ul> &>::~__split_buffer(&v31);
  return v17;
}

uint64_t std::vector<std::unique_ptr<unsigned short const[]>,TInlineBufferAllocator<std::unique_ptr<unsigned short const[]>,4ul>>::__base_destruct_at_end[abi:fn200100](uint64_t result, void *a2)
{
  v3 = result;
  v4 = *(result + 8);
  while (v4 != a2)
  {
    v5 = *--v4;
    result = v5;
    *v4 = 0;
    if (v5)
    {
      result = MEMORY[0x1865F22B0](result, 0x1000C80BDFB0063);
    }
  }

  *(v3 + 8) = a2;
  return result;
}

void TBaseFont::CopyFileURL(TBaseFont *this@<X0>, void *a2@<X8>)
{
  if ((*(this + 45) & 0x20000000) == 0)
  {
    v7 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 200))(&v7);
    explicit = atomic_load_explicit(&v7, memory_order_acquire);
    if (explicit)
    {
      v8 = 0;
      if (CFURLGetBaseURL(explicit))
      {

        explicit = atomic_load_explicit(&v8, memory_order_acquire);
      }

      explicit = CFURLCopyFileSystemPath(explicit, kCFURLPOSIXPathStyle);
    }

    v4 = explicit;
    if (v4)
    {
      v5 = v4;
      Length = CFStringGetLength(v4);

      if (Length >= 1)
      {
        v8 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], explicit, kCFURLPOSIXPathStyle, 0);
        *a2 = atomic_exchange(&v8, 0);

        return;
      }
    }

    else
    {
    }
  }

  *a2 = 0;
}

void AddDefaultsToVariation(const __CFArray *a1@<X0>, const __CFDictionary *a2@<X1>, void *a3@<X8>)
{
  v14 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableDictionary::TCFMutableDictionary(&v14, a2);
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count)
    {
      v6 = Count;
      for (i = 0; i != v6; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        Value = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisIdentifier");
        if (a2)
        {
          v10 = CFDictionaryGetValue(a2, Value);
          if (v10)
          {
            v11 = CFGetTypeID(v10);
            if (v11 == CFNumberGetTypeID())
            {
              continue;
            }
          }
        }

        v12 = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisDefaultValue");
        CFDictionarySetValue(atomic_load_explicit(&v14, memory_order_acquire), Value, v12);
      }
    }
  }

  *a3 = atomic_exchange(&v14, 0);
}

void TJustEngine::CreateJustifiedLine(const TCharStream **this@<X0>, const TLine *a2@<X1>, double a3@<D0>, double a4@<D1>, unint64_t *a5@<X8>)
{
  v60 = a2;
  v85 = *MEMORY[0x1E69E9840];
  v58 = *this;
  HangingWidth = TLine::GetHangingWidth(this);
  TLine::GetVisibleGlyphRangeAndWidth(this, &v77);
  v10 = v77;
  v11 = v78;
  v12 = v79;
  if (v78 < 1)
  {
    UnanchoredGlyphRange = 0;
    v61.location = 0;
  }

  else
  {
    v86.location = v77;
    v86.length = v78;
    UnanchoredGlyphRange = TLine::GetUnanchoredGlyphRange(this, v86);
    v61.location = v13;
  }

  v66 = 0xAAAAAAAAAAAAAAAALL;
  v14 = TCFBase<TLine>::Allocate();
  v15 = v14;
  if (v14)
  {
    *(v14 + 48) = 0u;
    *(v14 + 16) = 0;
    *(v14 + 24) = 0;
    *(v14 + 32) = 0;
    *(v14 + 40) = v14 + 48;
    *(v14 + 64) = 0u;
    *(v14 + 80) = 0;
    *(v14 + 112) = v14 + 88;
    *(v14 + 184) = 0;
    *(v14 + 232) = 0;
    *(v14 + 120) = 0u;
    *(v14 + 136) = 0u;
    *(v14 + 208) = 0;
    *(v14 + 216) = 0;
    *(v14 + 224) = 0;
    *(v14 + 240) = 0;
    *(v14 + 248) = 0;
    *(v14 + 256) = 0;
    TLine::operator=(v14 + 48, this);
  }

  v77 = v15;
  v66 = atomic_exchange(&v77, 0);

  if (!atomic_load_explicit(&v66, memory_order_acquire))
  {
    *a5 = 0;
    goto LABEL_54;
  }

  v16 = HangingWidth + a4;
  v17 = (HangingWidth + a4 - v12) * a3;
  Table = GetTable();
  v19 = 0.0002;
  if (Table)
  {
    v20 = *(Table + 8);
    if (v20)
    {
      v19 = *v20;
    }
  }

  v21 = v17 >= 0.0 && v17 < v19;
  if (v21 || v61.location <= 0)
  {
    *a5 = atomic_exchange(&v66, 0);
    goto LABEL_54;
  }

  v57 = v10;
  v22 = *(atomic_load_explicit(&v66, memory_order_acquire) + 40);
  TLine::DetachRuns(v22);
  if ((*(v22 + 154) & 2) != 0)
  {
    v24 = *(v22 + 16);
    v25 = (*(v22 + 24) - v24) >> 3;
    if (v25 >= 1)
    {
      do
      {
        v26 = *(*(*v24 + 48) + 312);
        if (v26)
        {
          v27 = *(v26 + 56);
          if (v27 != *(v26 + 64))
          {
            *(v26 + 64) = v27;
          }
        }

        v24 += 8;
        --v25;
      }

      while (v25);
    }
  }

  v56 = v11;
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v83[14] = v28;
  v83[13] = v28;
  v83[12] = v28;
  v83[11] = v28;
  v83[10] = v28;
  v83[9] = v28;
  v83[8] = v28;
  v83[7] = v28;
  v83[6] = v28;
  v83[5] = v28;
  v83[4] = v28;
  v83[3] = v28;
  v83[2] = v28;
  v83[1] = v28;
  v83[0] = v28;
  memset(v82, 0, sizeof(v82));
  v84 = v83;
  v64 = 0.0;
  v65 = 0;
  v29 = v58;
  do
  {
    v30 = *(v22 + 16);
    v31 = *(v22 + 24);
    v87.location = v61.location;
    v87.length = v22;
    v32 = TJustEngine::ReconciledRangeForLines(UnanchoredGlyphRange, v87, this, v23);
    v34 = v33;
    memset(v80, 170, sizeof(v80));
    v77 = 0;
    v78 = 0;
    v79 = 0.0;
    v81 = v80;
    v35 = v32 + v34;
    if (v32 + v34)
    {
      std::vector<JustLeftRightMaxima,TInlineBufferAllocator<JustLeftRightMaxima,30ul>>::__vallocate[abi:fn200100](&v77, v32 + v34);
      v36 = v78;
      bzero(v78, 24 * ((24 * v35 - 24) / 0x18uLL) + 24);
      v29 = v58;
      v78 = &v36[24 * v35];
    }

    memset(v75, 170, sizeof(v75));
    v72 = 0;
    v73 = 0;
    v74 = 0;
    v76 = v75;
    TJustEngine::GenerateMaximaList(v22, v29, v32, v34, 0, v60, &v77, &v72, v17);
    std::vector<double,TInlineBufferAllocator<double,30ul>>::resize(v82, v32 + v34);
    TJustEngine::DistributeGap(v30, v31, v32, v34, 0, v60, v77, v78, v17, v82[0], &v64);
    if (v72 != v73)
    {
      v63 = 0xAAAAAAAAAAAAAAAALL;
      *&v37 = 0xAAAAAAAAAAAAAAAALL;
      *(&v37 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v70[28] = v37;
      v70[29] = v37;
      v70[26] = v37;
      v70[27] = v37;
      v70[24] = v37;
      v70[25] = v37;
      v70[22] = v37;
      v70[23] = v37;
      v70[20] = v37;
      v70[21] = v37;
      v70[18] = v37;
      v70[19] = v37;
      v70[16] = v37;
      v70[17] = v37;
      v70[14] = v37;
      v70[15] = v37;
      v70[12] = v37;
      v70[13] = v37;
      v70[10] = v37;
      v70[11] = v37;
      v70[8] = v37;
      v70[9] = v37;
      v70[6] = v37;
      v70[7] = v37;
      v70[4] = v37;
      v70[5] = v37;
      v70[2] = v37;
      v70[3] = v37;
      v70[0] = v37;
      v70[1] = v37;
      v67 = 0;
      v68 = 0;
      v69 = 0;
      v71 = v70;
      v38 = TPostcompEngine::DoActions(v30, v31, v32, v34, &v72, v82[0], &v63, &v67);
      if (v63 >= 1)
      {
        *(v22 + 144) += v63;
      }

      if (v38)
      {
        TLine::ResetLine(v22, v29);
        TLine::GetVisibleGlyphRangeAndWidth(v22, &v61.length);
        v17 = (v16 - v62) * a3;
        v64 = 0.0;
        v65 = 0;
        v61.length = &v67;
        std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v61.length);
        v39 = 1;
        goto LABEL_34;
      }

      if (v67 != v68)
      {
        TAATPostcompEngine::ApplyKashidas(v30, v31, &v67, v82[0]);
        v63 = v40;
        if (v40 >= 1)
        {
          *(v22 + 144) += v40;
          ApplyArabicLowConnections<std::__wrap_iter<CTRun **>>(v30, v31);
        }
      }

      v61.length = &v67;
      std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v61.length);
    }

    v39 = 0;
LABEL_34:
    v67 = &v72;
    std::vector<std::tuple<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>,TInlineBufferAllocator<std::tuple<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v67);
    v72 = &v77;
    std::vector<JustLeftRightMaxima,TInlineBufferAllocator<JustLeftRightMaxima,30ul>>::__destroy_vector::operator()[abi:fn200100](&v72);
  }

  while ((v39 & 1) != 0);
  v88.location = v56;
  v88.length = v22;
  v42 = TJustEngine::ReconciledRangeForLines(v57, v88, this, v23);
  v44 = v43;
  if (v42 >= 1)
  {
    v41.location = v42;
    TJustEngine::ZeroRange(v22, 0, v41);
  }

  v41.location = *(v22 + 144) - (v42 + v44);
  if (v41.location >= 1)
  {
    TJustEngine::ZeroRange(v22, (v42 + v44), v41);
  }

  TLine::SyncWithRuns(v22);
  if ((v60 & 2) != 0 || v17 >= 0.0)
  {
LABEL_52:
    v53 = atomic_exchange(&v66, 0);
  }

  else
  {
    if (v16 >= v12 + v64 - v19)
    {
      if (*(v22 + 104) > v16)
      {
        v45 = *(v22 + 24);
        if (v45 == *(v22 + 16))
        {
          __break(1u);
        }

        v46 = *(*(v45 - 8) + 48);
        v47 = v46[26];
        v48 = v47 - 1;
        if (v47 >= 1)
        {
          v49 = v46[27];
          v50 = *(v49 + 32);
          if (v50 || (v54 = *(v49 + 24)) == 0)
          {
            v51 = v50 + 16 * v46[25] + 16 * v48;
            v52 = *(v51 + 8);
          }

          else
          {
            v51 = v54 + 8 * v46[25] + 8 * v48;
            v52 = 0;
          }

          v55 = *v51 - v19;
          TStorageRange::SetAdvance((v46 + 24), v48, *(&v52 - 1));
          TLine::SyncWithRuns(v22);
        }
      }

      goto LABEL_52;
    }

    v53 = 0;
  }

  *a5 = v53;
  v77 = v82;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v77);
LABEL_54:
}