void anonymous namespace::AppendData(_anonymous_namespace_ *this, CFDataRef theData, const __CFData *a3)
{
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);

  CFDataAppendBytes(this, BytePtr, Length);
}

void anonymous namespace::MorxTableBuilder::CreateTableData(_anonymous_namespace_::MorxChainBuilder **this@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *this;
  v6 = this[1];
  v8 = 8;
  if (*this == v6)
  {
    goto LABEL_4;
  }

  do
  {
    v7 = (v7 + 944);
  }

  while (v7 != v6);
  if (v8 < 0xFFFFFFFF)
  {
LABEL_4:
    v44 = a3;
    v9 = *MEMORY[0x1E695E480];
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], v8);
    explicit = atomic_load_explicit(&Mutable, memory_order_acquire);
    *bytes = 768;
    CFDataAppendBytes(explicit, bytes, 4);
    v11 = atomic_load_explicit(&Mutable, memory_order_acquire);
    *bytes = bswap32(-1601513229 * ((this[1] - *this) >> 4));
    CFDataAppendBytes(v11, bytes, 4);
    v12 = *this;
    v13 = this[1];
    if (*this != v13)
    {
      while (2)
      {
        *bytes = CFDataCreateMutable(v9, v14);
        v15 = atomic_load_explicit(bytes, memory_order_acquire);
        *v47 = bswap32(*v12);
        CFDataAppendBytes(v15, v47, 4);
        v16 = atomic_load_explicit(bytes, memory_order_acquire);
        *v47 = bswap32(v14);
        CFDataAppendBytes(v16, v47, 4);
        v17 = atomic_load_explicit(bytes, memory_order_acquire);
        *v47 = bswap32(1 - 1431655765 * ((*(v12 + 2) - *(v12 + 1)) >> 2));
        CFDataAppendBytes(v17, v47, 4);
        v18 = atomic_load_explicit(bytes, memory_order_acquire);
        *v47 = bswap32((*(v12 + 51) - *(v12 + 50)) >> 3);
        CFDataAppendBytes(v18, v47, 4);
        v20 = *(v12 + 1);
        v19 = *(v12 + 2);
        while (v20 != v19)
        {
          v21 = atomic_load_explicit(bytes, memory_order_acquire);
          *v47 = bswap32(*v20) >> 16;
          CFDataAppendBytes(v21, v47, 2);
          v22 = atomic_load_explicit(bytes, memory_order_acquire);
          *v47 = bswap32(v20[1]) >> 16;
          CFDataAppendBytes(v22, v47, 2);
          v23 = atomic_load_explicit(bytes, memory_order_acquire);
          *v47 = bswap32(*(v20 + 1));
          CFDataAppendBytes(v23, v47, 4);
          v24 = atomic_load_explicit(bytes, memory_order_acquire);
          *v47 = bswap32(*(v20 + 2));
          CFDataAppendBytes(v24, v47, 4);
          v20 += 6;
        }

        v25 = atomic_load_explicit(bytes, memory_order_acquire);
        *v47 = 0;
        CFDataAppendBytes(v25, v47, 2);
        v26 = atomic_load_explicit(bytes, memory_order_acquire);
        *v47 = 256;
        CFDataAppendBytes(v26, v47, 2);
        v27 = atomic_load_explicit(bytes, memory_order_acquire);
        *v47 = 0;
        CFDataAppendBytes(v27, v47, 4);
        v28 = atomic_load_explicit(bytes, memory_order_acquire);
        *v47 = 0;
        CFDataAppendBytes(v28, v47, 4);
        v30 = *(v12 + 50);
        v31 = *(v12 + 51);
        while (v30 != v31)
        {
          if (!atomic_load_explicit(v30, memory_order_acquire))
          {

LABEL_25:
            *v44 = 0;

            goto LABEL_26;
          }
        }

        v32 = *(v12 + 84);
        if (v32 != *(v12 + 85))
        {
          Length = CFDataGetLength(atomic_load_explicit(v32, memory_order_acquire));
          v35 = *(v12 + 85);
          v36 = *(v12 + 84);
          v37 = v35 - v36;
          if (v35 != v36)
          {
            v38 = Length;
            v39 = v37 >> 1;
            v40 = v37 >> 3;
            do
            {
              --v40;
              v41 = atomic_load_explicit(bytes, memory_order_acquire);
              *v47 = bswap32(v39);
              CFDataAppendBytes(v41, v47, 4);
              LODWORD(v39) = v39 + v38;
            }

            while (v40);
            v36 = *(v12 + 84);
            v35 = *(v12 + 85);
          }

          while (v36 != v35)
          {
          }
        }

        if (HIDWORD(v14))
        {
          CFDataIncreaseLength(atomic_load_explicit(bytes, memory_order_acquire), HIDWORD(v14));
        }

        v42 = atomic_exchange(bytes, 0);

        if (!v42)
        {
          goto LABEL_25;
        }

        v12 = (v12 + 944);
        if (v12 != v13)
        {
          continue;
        }

        break;
      }
    }

    *v44 = atomic_exchange(&Mutable, 0);
LABEL_26:
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t ConvertArabicPresentationFormsToMorxInternal(const TBaseFont *a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v16[1] = *MEMORY[0x1E69E9840];
  memset(v11, 170, sizeof(v11));
  (*(*v2 + 488))(&__p);
  OS2::OS2(v11, &__p);

  if (v11[2] >= 78 && (*(v11[1] + 44) & 0x20) != 0)
  {
    memset(v15, 170, sizeof(v15));
    __p = 0;
    v13 = 0;
    v14 = 0;
    v16[0] = v15;
    if (v3)
    {
      v10 = 0xAAAAAAAAAAAAAAAALL;
      GlyphCount = TBaseFont::GetGlyphCount(v2);
      TBaseFont::SetConvertedTables(v2, atomic_load_explicit(&v10, memory_order_acquire), 0);
    }

    v6 = __p;
    if (__p)
    {
      v7 = v13;
      v8 = __p;
      if (v13 != __p)
      {
        do
        {
          v7 -= 118;
        }

        while (v7 != v6);
        v8 = __p;
      }

      v13 = v6;
      if (v15 > v8 || v16 <= v8)
      {
        operator delete(v8);
      }
    }
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t anonymous namespace::MorxTableBuilder::FromArabicPresentationForms(_anonymous_namespace_::MorxTableBuilder *this, const TBaseFont *a2)
{
  MEMORY[0x1EEE9AC00](this, a2);
  v3 = v2;
  v94[2] = *MEMORY[0x1E69E9840];
  TBaseFont::GetGlyphCount(v2);
  memset(__b, 170, 0x3A8uLL);
  __b[83] = &__b[53];
  memset(&__b[84], 0, 24);
  __b[117] = &__b[87];
  LODWORD(__b[0]) = 1;
  *&v93[32] = &__b[4];
  memset(&__b[50], 0, 24);
  __b[49] = &__b[5] + 4;
  LODWORD(__b[4]) = 1000;
  *(&__b[4] + 4) = 0xFFFFFFFF00000001;
  __b[1] = &__b[4];
  __b[2] = &__b[5] + 4;
  __b[3] = &__b[5] + 4;
  memset(v93, 0, 32);
  std::__split_buffer<MortFeatureEntry,TInlineBufferAllocator<MortFeatureEntry,30ul> &>::~__split_buffer(v93);
  __b[2] = &__b[5] + 4;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v61 = v4;
  v62 = v4;
  v59 = v4;
  v60 = v4;
  v57 = v4;
  v58 = v4;
  v55 = v4;
  v56 = v4;
  v54 = v4;
  v53 = v4;
  v52 = v4;
  v51 = v4;
  v50 = v4;
  v49 = v4;
  v48 = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0xAAAAAAAAAAAAAAAALL;
  v43 = v4;
  v42 = v4;
  v40 = 0xAAAAAAAAAAAAAAAALL;
  v41 = v4;
  v37 = 0xAAAAAAAAAAAAAAAALL;
  v36[0] = 0xAAAAAAAAAAAAAAAALL;
  v36[1] = 0;
  *v38 = 0u;
  v39 = 0u;
  v45 = &v40;
  v46 = 0;
  v47 = 0u;
  v63 = 0xAAAAAAAAAAAAAAAALL;
  v64 = &v48;
  v35 = &unk_1EF25B678;
  v65 = 0;
  GlyphCount = TBaseFont::GetGlyphCount(v3);
  memset(&v93[24], 170, 0x5A0uLL);
  memset(v93, 0, 24);
  v94[0] = &v93[24];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v91[3] = v6;
  v91[2] = v6;
  v91[1] = v6;
  v91[0] = v6;
  memset(v90, 0, sizeof(v90));
  v92 = v91;
  v8 = __p;
  if (__p)
  {
    v9 = *(&__p + 1);
    v10 = __p;
    if (*(&__p + 1) != __p)
    {
      do
      {
        v9 -= 48;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v9);
      }

      while (v9 != v8);
      v10 = __p;
    }

    *(&__p + 1) = v8;
    if (&v87 + 8 <= v10 && &v89 > v10)
    {
      if (v87 == v89)
      {
        v89 = v10;
      }
    }

    else
    {
      operator delete(v10);
    }
  }

  if (v7)
  {
    MutableBytePtr = CFDataGetMutableBytePtr(atomic_load_explicit(&v36[1], memory_order_acquire));
    v31 = 0;
    v67 = xmmword_18477AE10;
    v68 = xmmword_18477AE20;
    v69 = xmmword_18477AE30;
    v70 = xmmword_18477AE40;
    v71 = xmmword_18477AE50;
    v72 = xmmword_18477AE60;
    v73 = xmmword_18477AE70;
    v74 = xmmword_18477AE80;
    v75 = xmmword_18477AE90;
    v76 = xmmword_18477AEA0;
    v77 = xmmword_18477AEB0;
    *&v78 = 0xFBE606D0FBFE06CCLL;
    CreateLookupTableFromCharacterSwashes<std::pair<unsigned short,unsigned short> const*>(&v34, v3, GlyphCount, &v67, &v78 + 2, MutableBytePtr);

    v34 = 0;
    v67 = xmmword_18477AEC0;
    v68 = xmmword_18477AED0;
    v69 = xmmword_18477AEE0;
    v70 = xmmword_18477AEF0;
    v71 = xmmword_18477AF00;
    v72 = xmmword_18477AF10;
    v73 = xmmword_18477AF20;
    v74 = xmmword_18477AF30;
    v75 = xmmword_18477AF40;
    v76 = xmmword_18477AF50;
    v77 = xmmword_18477AF60;
    v78 = xmmword_18477AF70;
    v79 = xmmword_18477AF80;
    v80 = xmmword_18477AF90;
    v81 = xmmword_18477AFA0;
    v82 = xmmword_18477AFB0;
    v83 = xmmword_18477AFC0;
    v84 = xmmword_18477AFD0;
    v85[0] = xmmword_18477AFE0;
    v85[1] = xmmword_18477AFF0;
    v85[2] = xmmword_18477B000;
    v85[3] = xmmword_18477B010;
    v85[4] = xmmword_18477B020;
    CreateLookupTableFromCharacterSwashes<std::pair<unsigned short,unsigned short> const*>(&v33, v3, GlyphCount, &v67, &__p, MutableBytePtr);

    v33 = 0;
    v67 = xmmword_18477B030;
    v68 = xmmword_18477B040;
    v69 = xmmword_18477B050;
    v70 = xmmword_18477B060;
    v71 = xmmword_18477B070;
    v72 = xmmword_18477B080;
    v73 = xmmword_18477B090;
    v74 = xmmword_18477B0A0;
    v75 = xmmword_18477B0B0;
    v76 = xmmword_18477B0C0;
    v77 = xmmword_18477B0D0;
    v78 = xmmword_18477B0E0;
    v79 = xmmword_18477B0F0;
    v80 = xmmword_18477B100;
    v81 = xmmword_18477B110;
    v82 = xmmword_18477B120;
    v83 = xmmword_18477B130;
    v84 = xmmword_18477B140;
    *&v85[0] = 0xFBB106D3FBAF06D2;
    CreateLookupTableFromCharacterSwashes<std::pair<unsigned short,unsigned short> const*>(&v32, v3, GlyphCount, &v67, v85 + 2, MutableBytePtr);

    *&v67 = 0;
    v13 = NewLKTHandle(GlyphCount, 0);
    LKTCreateLookupTable(v13, &v32);

    DisposeLKTHandle(v13);
  }

  *&v67 = v90;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v67);
  v14 = *v93;
  if (*v93)
  {
    v15 = *&v93[8];
    v16 = *v93;
    if (*&v93[8] != *v93)
    {
      do
      {
        v15 -= 48;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v15);
      }

      while (v15 != v14);
      v16 = *v93;
    }

    *&v93[8] = v14;
    if (&v93[24] > v16 || v94 <= v16)
    {
      operator delete(v16);
    }
  }

  if (v7)
  {
    v18 = __b[51];
    if (__b[51] >= __b[52])
    {
      v20 = (__b[51] - __b[50]) >> 3;
      if ((v20 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v21 = (__b[52] - __b[50]) >> 2;
      if (v21 <= v20 + 1)
      {
        v21 = v20 + 1;
      }

      if (__b[52] - __b[50] >= 0x7FFFFFFFFFFFFFF8uLL)
      {
        v22 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v22 = v21;
      }

      *&v93[32] = &__b[53];
      if (v22)
      {
        v23 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<TCFRef<__CFData *>,30ul>>(&__b[53], v22);
      }

      else
      {
        v23 = 0;
      }

      *v93 = v23;
      *&v93[8] = v23 + 8 * v20;
      *&v93[16] = *&v93[8];
      *&v93[24] = v23 + 8 * v22;
      **&v93[8] = atomic_exchange(&__p, 0);
      *&v93[16] += 8;
      std::vector<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul>>::__swap_out_circular_buffer(&__b[50], v93);
      v19 = __b[51];
      std::__split_buffer<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul> &>::~__split_buffer(v93);
    }

    else
    {
      *v18 = atomic_exchange(&__p, 0);
      v19 = v18 + 1;
    }

    __b[51] = v19;

    *&__p = atomic_load_explicit(&v36[1], memory_order_acquire);
    v24 = __b[85];
    if (__b[85] >= __b[86])
    {
      v26 = (__b[85] - __b[84]) >> 3;
      if ((v26 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v27 = (__b[86] - __b[84]) >> 2;
      if (v27 <= v26 + 1)
      {
        v27 = v26 + 1;
      }

      if (__b[86] - __b[84] >= 0x7FFFFFFFFFFFFFF8uLL)
      {
        v28 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v28 = v27;
      }

      *&v93[32] = &__b[87];
      if (v28)
      {
        v29 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<TCFRef<__CFData const*>,30ul>>(&__b[87], v28);
      }

      else
      {
        v29 = 0;
      }

      *v93 = v29;
      *&v93[8] = v29 + 8 * v26;
      *&v93[16] = *&v93[8];
      *&v93[24] = v29 + 8 * v28;
      **&v93[8] = atomic_exchange(&__p, 0);
      *&v93[16] += 8;
      std::vector<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul>>::__swap_out_circular_buffer(&__b[84], v93);
      v25 = __b[85];
      std::__split_buffer<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul> &>::~__split_buffer(v93);
    }

    else
    {
      *v24 = atomic_exchange(&__p, 0);
      v25 = v24 + 1;
    }

    __b[85] = v25;

    v35 = &unk_1EF25B678;
    memset(&v93[24], 170, 0x5A0uLL);
    memset(v93, 0, 24);
    v94[0] = &v93[24];
    LODWORD(__p) = -24183157;
    AddLigInputForCharacters(v93, v3, 64490, &__p, 2uLL);
    LODWORD(__p) = -24183156;
    AddLigInputForCharacters(v93, v3, 64491, &__p, 2uLL);
    LODWORD(__p) = 114687627;
    AddLigInputForCharacters(v93, v3, 64492, &__p, 2uLL);
    LODWORD(__p) = 114687628;
    AddLigInputForCharacters(v93, v3, 64493, &__p, 2uLL);
    LODWORD(__p) = -17891701;
    AddLigInputForCharacters(v93, v3, 64494, &__p, 2uLL);
    LODWORD(__p) = -17891700;
    AddLigInputForCharacters(v93, v3, 64495, &__p, 2uLL);
    LODWORD(__p) = -69665141;
    AddLigInputForCharacters(v93, v3, 64496, &__p, 2uLL);
    LODWORD(__p) = -69665140;
    AddLigInputForCharacters(v93, v3, 64497, &__p, 2uLL);
    LODWORD(__p) = -69534069;
    AddLigInputForCharacters(v93, v3, 64498, &__p, 2uLL);
    LODWORD(__p) = -69534068;
    AddLigInputForCharacters(v93, v3, 64499, &__p, 2uLL);
    LODWORD(__p) = -69402997;
    AddLigInputForCharacters(v93, v3, 64500, &__p, 2uLL);
    LODWORD(__p) = -69402996;
    AddLigInputForCharacters(v93, v3, 64501, &__p, 2uLL);
    LODWORD(__p) = -68813173;
    AddLigInputForCharacters(v93, v3, 64502, &__p, 2uLL);
    LODWORD(__p) = -68813172;
    AddLigInputForCharacters(v93, v3, 64503, &__p, 2uLL);
    LODWORD(__p) = -68682101;
    AddLigInputForCharacters(v93, v3, 64504, &__p, 2uLL);
    LODWORD(__p) = -17760629;
    AddLigInputForCharacters(v93, v3, 64505, &__p, 2uLL);
    LODWORD(__p) = -17760628;
    AddLigInputForCharacters(v93, v3, 64506, &__p, 2uLL);
    LODWORD(__p) = -68551029;
    AddLigInputForCharacters(v93, v3, 64507, &__p, 2uLL);
    LODWORD(__p) = -23134581;
    AddLigInputForCharacters(v93, v3, 64512, &__p, 2uLL);
    LODWORD(__p) = -22872437;
    AddLigInputForCharacters(v93, v3, 64513, &__p, 2uLL);
    LODWORD(__p) = -18678133;
    AddLigInputForCharacters(v93, v3, 64514, &__p, 2uLL);
    LODWORD(__p) = -17760629;
    AddLigInputForCharacters(v93, v3, 64515, &__p, 2uLL);
    LODWORD(__p) = -17629557;
    AddLigInputForCharacters(v93, v3, 64516, &__p, 2uLL);
    LODWORD(__p) = -23134575;
    AddLigInputForCharacters(v93, v3, 64517, &__p, 2uLL);
    LODWORD(__p) = -22872431;
    AddLigInputForCharacters(v93, v3, 64518, &__p, 2uLL);
    LODWORD(__p) = -22610287;
    AddLigInputForCharacters(v93, v3, 64519, &__p, 2uLL);
    LODWORD(__p) = -18678127;
    AddLigInputForCharacters(v93, v3, 64520, &__p, 2uLL);
    LODWORD(__p) = -17760623;
    AddLigInputForCharacters(v93, v3, 64521, &__p, 2uLL);
    LODWORD(__p) = -17629551;
    AddLigInputForCharacters(v93, v3, 64522, &__p, 2uLL);
    LODWORD(__p) = -23134569;
    AddLigInputForCharacters(v93, v3, 64523, &__p, 2uLL);
    LODWORD(__p) = -22872425;
    AddLigInputForCharacters(v93, v3, 64524, &__p, 2uLL);
    LODWORD(__p) = -22610281;
    AddLigInputForCharacters(v93, v3, 64525, &__p, 2uLL);
    LODWORD(__p) = -18678121;
    AddLigInputForCharacters(v93, v3, 64526, &__p, 2uLL);
    LODWORD(__p) = -17760617;
    AddLigInputForCharacters(v93, v3, 64527, &__p, 2uLL);
    LODWORD(__p) = -17629545;
    AddLigInputForCharacters(v93, v3, 64528, &__p, 2uLL);
    LODWORD(__p) = -23134565;
    AddLigInputForCharacters(v93, v3, 64529, &__p, 2uLL);
    LODWORD(__p) = -18678117;
    AddLigInputForCharacters(v93, v3, 64530, &__p, 2uLL);
    LODWORD(__p) = -17760613;
    AddLigInputForCharacters(v93, v3, 64531, &__p, 2uLL);
    LODWORD(__p) = -17629541;
    AddLigInputForCharacters(v93, v3, 64532, &__p, 2uLL);
    LODWORD(__p) = -22872417;
    AddLigInputForCharacters(v93, v3, 64533, &__p, 2uLL);
    LODWORD(__p) = -18678113;
    AddLigInputForCharacters(v93, v3, 64534, &__p, 2uLL);
    LODWORD(__p) = -23134557;
    AddLigInputForCharacters(v93, v3, 64535, &__p, 2uLL);
    LODWORD(__p) = -18678109;
    AddLigInputForCharacters(v93, v3, 64536, &__p, 2uLL);
    LODWORD(__p) = -23134553;
    AddLigInputForCharacters(v93, v3, 64537, &__p, 2uLL);
    LODWORD(__p) = -22872409;
    AddLigInputForCharacters(v93, v3, 64538, &__p, 2uLL);
    LODWORD(__p) = -18678105;
    AddLigInputForCharacters(v93, v3, 64539, &__p, 2uLL);
    LODWORD(__p) = -23134541;
    AddLigInputForCharacters(v93, v3, 64540, &__p, 2uLL);
    LODWORD(__p) = -22872397;
    AddLigInputForCharacters(v93, v3, 64541, &__p, 2uLL);
    LODWORD(__p) = -22610253;
    AddLigInputForCharacters(v93, v3, 64542, &__p, 2uLL);
    LODWORD(__p) = -18678093;
    AddLigInputForCharacters(v93, v3, 64543, &__p, 2uLL);
    LODWORD(__p) = -22872389;
    AddLigInputForCharacters(v93, v3, 64544, &__p, 2uLL);
    LODWORD(__p) = -18678085;
    AddLigInputForCharacters(v93, v3, 64545, &__p, 2uLL);
    LODWORD(__p) = -23134529;
    AddLigInputForCharacters(v93, v3, 64546, &__p, 2uLL);
    LODWORD(__p) = -22872385;
    AddLigInputForCharacters(v93, v3, 64547, &__p, 2uLL);
    LODWORD(__p) = -22610241;
    AddLigInputForCharacters(v93, v3, 64548, &__p, 2uLL);
    LODWORD(__p) = -18678081;
    AddLigInputForCharacters(v93, v3, 64549, &__p, 2uLL);
    LODWORD(__p) = -22872381;
    AddLigInputForCharacters(v93, v3, 64550, &__p, 2uLL);
    LODWORD(__p) = -18678077;
    AddLigInputForCharacters(v93, v3, 64551, &__p, 2uLL);
    LODWORD(__p) = -18678073;
    AddLigInputForCharacters(v93, v3, 64552, &__p, 2uLL);
    LODWORD(__p) = -23134517;
    AddLigInputForCharacters(v93, v3, 64553, &__p, 2uLL);
    LODWORD(__p) = -18678069;
    AddLigInputForCharacters(v93, v3, 64554, &__p, 2uLL);
    LODWORD(__p) = -23134513;
    AddLigInputForCharacters(v93, v3, 64555, &__p, 2uLL);
    LODWORD(__p) = -18678065;
    AddLigInputForCharacters(v93, v3, 64556, &__p, 2uLL);
    LODWORD(__p) = -23134509;
    AddLigInputForCharacters(v93, v3, 64557, &__p, 2uLL);
    LODWORD(__p) = -22872365;
    AddLigInputForCharacters(v93, v3, 64558, &__p, 2uLL);
    LODWORD(__p) = -22610221;
    AddLigInputForCharacters(v93, v3, 64559, &__p, 2uLL);
    LODWORD(__p) = -18678061;
    AddLigInputForCharacters(v93, v3, 64560, &__p, 2uLL);
    LODWORD(__p) = -17760557;
    AddLigInputForCharacters(v93, v3, 64561, &__p, 2uLL);
    LODWORD(__p) = -17629485;
    AddLigInputForCharacters(v93, v3, 64562, &__p, 2uLL);
    LODWORD(__p) = -22872361;
    AddLigInputForCharacters(v93, v3, 64563, &__p, 2uLL);
    LODWORD(__p) = -18678057;
    AddLigInputForCharacters(v93, v3, 64564, &__p, 2uLL);
    LODWORD(__p) = -17760553;
    AddLigInputForCharacters(v93, v3, 64565, &__p, 2uLL);
    LODWORD(__p) = -17629481;
    AddLigInputForCharacters(v93, v3, 64566, &__p, 2uLL);
    LODWORD(__p) = -24183077;
    AddLigInputForCharacters(v93, v3, 64567, &__p, 2uLL);
    LODWORD(__p) = -23134501;
    AddLigInputForCharacters(v93, v3, 64568, &__p, 2uLL);
    LODWORD(__p) = -22872357;
    AddLigInputForCharacters(v93, v3, 64569, &__p, 2uLL);
    LODWORD(__p) = -22610213;
    AddLigInputForCharacters(v93, v3, 64570, &__p, 2uLL);
    LODWORD(__p) = -18940197;
    AddLigInputForCharacters(v93, v3, 64571, &__p, 2uLL);
    LODWORD(__p) = -18678053;
    AddLigInputForCharacters(v93, v3, 64572, &__p, 2uLL);
    LODWORD(__p) = -17760549;
    AddLigInputForCharacters(v93, v3, 64573, &__p, 2uLL);
    LODWORD(__p) = -17629477;
    AddLigInputForCharacters(v93, v3, 64574, &__p, 2uLL);
    LODWORD(__p) = -23134497;
    AddLigInputForCharacters(v93, v3, 64575, &__p, 2uLL);
    LODWORD(__p) = -22872353;
    AddLigInputForCharacters(v93, v3, 64576, &__p, 2uLL);
    LODWORD(__p) = -22610209;
    AddLigInputForCharacters(v93, v3, 64577, &__p, 2uLL);
    LODWORD(__p) = -18678049;
    AddLigInputForCharacters(v93, v3, 64578, &__p, 2uLL);
    LODWORD(__p) = -17760545;
    AddLigInputForCharacters(v93, v3, 64579, &__p, 2uLL);
    LODWORD(__p) = -17629473;
    AddLigInputForCharacters(v93, v3, 64580, &__p, 2uLL);
    LODWORD(__p) = -23134493;
    AddLigInputForCharacters(v93, v3, 64581, &__p, 2uLL);
    LODWORD(__p) = -22872349;
    AddLigInputForCharacters(v93, v3, 64582, &__p, 2uLL);
    LODWORD(__p) = -22610205;
    AddLigInputForCharacters(v93, v3, 64583, &__p, 2uLL);
    LODWORD(__p) = -18678045;
    AddLigInputForCharacters(v93, v3, 64584, &__p, 2uLL);
    LODWORD(__p) = -17760541;
    AddLigInputForCharacters(v93, v3, 64585, &__p, 2uLL);
    LODWORD(__p) = -17629469;
    AddLigInputForCharacters(v93, v3, 64586, &__p, 2uLL);
    LODWORD(__p) = -23134489;
    AddLigInputForCharacters(v93, v3, 64587, &__p, 2uLL);
    LODWORD(__p) = -22872345;
    AddLigInputForCharacters(v93, v3, 64588, &__p, 2uLL);
    LODWORD(__p) = -22610201;
    AddLigInputForCharacters(v93, v3, 64589, &__p, 2uLL);
    LODWORD(__p) = -18678041;
    AddLigInputForCharacters(v93, v3, 64590, &__p, 2uLL);
    LODWORD(__p) = -17760537;
    AddLigInputForCharacters(v93, v3, 64591, &__p, 2uLL);
    LODWORD(__p) = -17629465;
    AddLigInputForCharacters(v93, v3, 64592, &__p, 2uLL);
    LODWORD(__p) = -23134485;
    AddLigInputForCharacters(v93, v3, 64593, &__p, 2uLL);
    LODWORD(__p) = -18678037;
    AddLigInputForCharacters(v93, v3, 64594, &__p, 2uLL);
    LODWORD(__p) = -17760533;
    AddLigInputForCharacters(v93, v3, 64595, &__p, 2uLL);
    LODWORD(__p) = -17629461;
    AddLigInputForCharacters(v93, v3, 64596, &__p, 2uLL);
    LODWORD(__p) = -23134477;
    AddLigInputForCharacters(v93, v3, 64597, &__p, 2uLL);
    LODWORD(__p) = -22872333;
    AddLigInputForCharacters(v93, v3, 64598, &__p, 2uLL);
    LODWORD(__p) = -22610189;
    AddLigInputForCharacters(v93, v3, 64599, &__p, 2uLL);
    LODWORD(__p) = -18678029;
    AddLigInputForCharacters(v93, v3, 64600, &__p, 2uLL);
    LODWORD(__p) = -17760525;
    AddLigInputForCharacters(v93, v3, 64601, &__p, 2uLL);
    LODWORD(__p) = -17629453;
    AddLigInputForCharacters(v93, v3, 64602, &__p, 2uLL);
    LODWORD(__p) = -22086004;
    AddLigInputForCharacters(v93, v3, 64612, &__p, 2uLL);
    LODWORD(__p) = -21954932;
    AddLigInputForCharacters(v93, v3, 64613, &__p, 2uLL);
    LODWORD(__p) = -18678132;
    AddLigInputForCharacters(v93, v3, 64614, &__p, 2uLL);
    LODWORD(__p) = -18415988;
    AddLigInputForCharacters(v93, v3, 64615, &__p, 2uLL);
    LODWORD(__p) = -17760628;
    AddLigInputForCharacters(v93, v3, 64616, &__p, 2uLL);
    LODWORD(__p) = -17629556;
    AddLigInputForCharacters(v93, v3, 64617, &__p, 2uLL);
    LODWORD(__p) = -22085998;
    AddLigInputForCharacters(v93, v3, 64618, &__p, 2uLL);
    LODWORD(__p) = -21954926;
    AddLigInputForCharacters(v93, v3, 64619, &__p, 2uLL);
    LODWORD(__p) = -18678126;
    AddLigInputForCharacters(v93, v3, 64620, &__p, 2uLL);
    LODWORD(__p) = -18415982;
    AddLigInputForCharacters(v93, v3, 64621, &__p, 2uLL);
    LODWORD(__p) = -17760622;
    AddLigInputForCharacters(v93, v3, 64622, &__p, 2uLL);
    LODWORD(__p) = -17629550;
    AddLigInputForCharacters(v93, v3, 64623, &__p, 2uLL);
    LODWORD(__p) = -22085992;
    AddLigInputForCharacters(v93, v3, 64624, &__p, 2uLL);
    LODWORD(__p) = -21954920;
    AddLigInputForCharacters(v93, v3, 64625, &__p, 2uLL);
    LODWORD(__p) = -18678120;
    AddLigInputForCharacters(v93, v3, 64626, &__p, 2uLL);
    LODWORD(__p) = -18415976;
    AddLigInputForCharacters(v93, v3, 64627, &__p, 2uLL);
    LODWORD(__p) = -17760616;
    AddLigInputForCharacters(v93, v3, 64628, &__p, 2uLL);
    LODWORD(__p) = -17629544;
    AddLigInputForCharacters(v93, v3, 64629, &__p, 2uLL);
    LODWORD(__p) = -22085988;
    AddLigInputForCharacters(v93, v3, 64630, &__p, 2uLL);
    LODWORD(__p) = -21954916;
    AddLigInputForCharacters(v93, v3, 64631, &__p, 2uLL);
    LODWORD(__p) = -18678116;
    AddLigInputForCharacters(v93, v3, 64632, &__p, 2uLL);
    LODWORD(__p) = -18415972;
    AddLigInputForCharacters(v93, v3, 64633, &__p, 2uLL);
    LODWORD(__p) = -17760612;
    AddLigInputForCharacters(v93, v3, 64634, &__p, 2uLL);
    LODWORD(__p) = -17629540;
    AddLigInputForCharacters(v93, v3, 64635, &__p, 2uLL);
    LODWORD(__p) = -17760556;
    AddLigInputForCharacters(v93, v3, 64636, &__p, 2uLL);
    LODWORD(__p) = -17629484;
    AddLigInputForCharacters(v93, v3, 64637, &__p, 2uLL);
    LODWORD(__p) = -17760552;
    AddLigInputForCharacters(v93, v3, 64638, &__p, 2uLL);
    LODWORD(__p) = -17629480;
    AddLigInputForCharacters(v93, v3, 64639, &__p, 2uLL);
    LODWORD(__p) = -24183076;
    AddLigInputForCharacters(v93, v3, 64640, &__p, 2uLL);
    LODWORD(__p) = -18940196;
    AddLigInputForCharacters(v93, v3, 64641, &__p, 2uLL);
    LODWORD(__p) = -18678052;
    AddLigInputForCharacters(v93, v3, 64642, &__p, 2uLL);
    LODWORD(__p) = -17760548;
    AddLigInputForCharacters(v93, v3, 64643, &__p, 2uLL);
    LODWORD(__p) = -17629476;
    AddLigInputForCharacters(v93, v3, 64644, &__p, 2uLL);
    LODWORD(__p) = -18678048;
    AddLigInputForCharacters(v93, v3, 64645, &__p, 2uLL);
    LODWORD(__p) = -17760544;
    AddLigInputForCharacters(v93, v3, 64646, &__p, 2uLL);
    LODWORD(__p) = -17629472;
    AddLigInputForCharacters(v93, v3, 64647, &__p, 2uLL);
    LODWORD(__p) = -24183068;
    AddLigInputForCharacters(v93, v3, 64648, &__p, 2uLL);
    LODWORD(__p) = -18678044;
    AddLigInputForCharacters(v93, v3, 64649, &__p, 2uLL);
    LODWORD(__p) = -22085912;
    AddLigInputForCharacters(v93, v3, 64650, &__p, 2uLL);
    LODWORD(__p) = -21954840;
    AddLigInputForCharacters(v93, v3, 64651, &__p, 2uLL);
    LODWORD(__p) = -18678040;
    AddLigInputForCharacters(v93, v3, 64652, &__p, 2uLL);
    LODWORD(__p) = -18415896;
    AddLigInputForCharacters(v93, v3, 64653, &__p, 2uLL);
    LODWORD(__p) = -17760536;
    AddLigInputForCharacters(v93, v3, 64654, &__p, 2uLL);
    LODWORD(__p) = -17629464;
    AddLigInputForCharacters(v93, v3, 64655, &__p, 2uLL);
    LODWORD(__p) = -22085900;
    AddLigInputForCharacters(v93, v3, 64657, &__p, 2uLL);
    LODWORD(__p) = -21954828;
    AddLigInputForCharacters(v93, v3, 64658, &__p, 2uLL);
    LODWORD(__p) = -18678028;
    AddLigInputForCharacters(v93, v3, 64659, &__p, 2uLL);
    LODWORD(__p) = -18415884;
    AddLigInputForCharacters(v93, v3, 64660, &__p, 2uLL);
    LODWORD(__p) = -17760524;
    AddLigInputForCharacters(v93, v3, 64661, &__p, 2uLL);
    LODWORD(__p) = -17629452;
    AddLigInputForCharacters(v93, v3, 64662, &__p, 2uLL);
    LODWORD(__p) = -23003509;
    AddLigInputForCharacters(v93, v3, 64663, &__p, 2uLL);
    LODWORD(__p) = -22741365;
    AddLigInputForCharacters(v93, v3, 64664, &__p, 2uLL);
    LODWORD(__p) = -22479221;
    AddLigInputForCharacters(v93, v3, 64665, &__p, 2uLL);
    LODWORD(__p) = -18547061;
    AddLigInputForCharacters(v93, v3, 64666, &__p, 2uLL);
    LODWORD(__p) = -18022773;
    AddLigInputForCharacters(v93, v3, 64667, &__p, 2uLL);
    LODWORD(__p) = -23003503;
    AddLigInputForCharacters(v93, v3, 64668, &__p, 2uLL);
    LODWORD(__p) = -22741359;
    AddLigInputForCharacters(v93, v3, 64669, &__p, 2uLL);
    LODWORD(__p) = -22479215;
    AddLigInputForCharacters(v93, v3, 64670, &__p, 2uLL);
    LODWORD(__p) = -18547055;
    AddLigInputForCharacters(v93, v3, 64671, &__p, 2uLL);
    LODWORD(__p) = -18022767;
    AddLigInputForCharacters(v93, v3, 64672, &__p, 2uLL);
    LODWORD(__p) = -23003497;
    AddLigInputForCharacters(v93, v3, 64673, &__p, 2uLL);
    LODWORD(__p) = -22741353;
    AddLigInputForCharacters(v93, v3, 64674, &__p, 2uLL);
    LODWORD(__p) = -22479209;
    AddLigInputForCharacters(v93, v3, 64675, &__p, 2uLL);
    LODWORD(__p) = -18547049;
    AddLigInputForCharacters(v93, v3, 64676, &__p, 2uLL);
    LODWORD(__p) = -18022761;
    AddLigInputForCharacters(v93, v3, 64677, &__p, 2uLL);
    LODWORD(__p) = -18547045;
    AddLigInputForCharacters(v93, v3, 64678, &__p, 2uLL);
    LODWORD(__p) = -22741345;
    AddLigInputForCharacters(v93, v3, 64679, &__p, 2uLL);
    LODWORD(__p) = -18547041;
    AddLigInputForCharacters(v93, v3, 64680, &__p, 2uLL);
    LODWORD(__p) = -23003485;
    AddLigInputForCharacters(v93, v3, 64681, &__p, 2uLL);
    LODWORD(__p) = -18547037;
    AddLigInputForCharacters(v93, v3, 64682, &__p, 2uLL);
    LODWORD(__p) = -23003481;
    AddLigInputForCharacters(v93, v3, 64683, &__p, 2uLL);
    LODWORD(__p) = -18547033;
    AddLigInputForCharacters(v93, v3, 64684, &__p, 2uLL);
    LODWORD(__p) = -23003469;
    AddLigInputForCharacters(v93, v3, 64685, &__p, 2uLL);
    LODWORD(__p) = -22741325;
    AddLigInputForCharacters(v93, v3, 64686, &__p, 2uLL);
    LODWORD(__p) = -22479181;
    AddLigInputForCharacters(v93, v3, 64687, &__p, 2uLL);
    LODWORD(__p) = -18547021;
    AddLigInputForCharacters(v93, v3, 64688, &__p, 2uLL);
    LODWORD(__p) = -22741317;
    AddLigInputForCharacters(v93, v3, 64689, &__p, 2uLL);
    LODWORD(__p) = -22479173;
    AddLigInputForCharacters(v93, v3, 64690, &__p, 2uLL);
    LODWORD(__p) = -18547013;
    AddLigInputForCharacters(v93, v3, 64691, &__p, 2uLL);
    LODWORD(__p) = -23003457;
    AddLigInputForCharacters(v93, v3, 64692, &__p, 2uLL);
    LODWORD(__p) = -22741313;
    AddLigInputForCharacters(v93, v3, 64693, &__p, 2uLL);
    LODWORD(__p) = -22479169;
    AddLigInputForCharacters(v93, v3, 64694, &__p, 2uLL);
    LODWORD(__p) = -18547009;
    AddLigInputForCharacters(v93, v3, 64695, &__p, 2uLL);
    LODWORD(__p) = -22741309;
    AddLigInputForCharacters(v93, v3, 64696, &__p, 2uLL);
    LODWORD(__p) = -18547001;
    AddLigInputForCharacters(v93, v3, 64697, &__p, 2uLL);
    LODWORD(__p) = -23003445;
    AddLigInputForCharacters(v93, v3, 64698, &__p, 2uLL);
    LODWORD(__p) = -18546997;
    AddLigInputForCharacters(v93, v3, 64699, &__p, 2uLL);
    LODWORD(__p) = -23003441;
    AddLigInputForCharacters(v93, v3, 64700, &__p, 2uLL);
    LODWORD(__p) = -18546993;
    AddLigInputForCharacters(v93, v3, 64701, &__p, 2uLL);
    LODWORD(__p) = -23003437;
    AddLigInputForCharacters(v93, v3, 64702, &__p, 2uLL);
    LODWORD(__p) = -22741293;
    AddLigInputForCharacters(v93, v3, 64703, &__p, 2uLL);
    LODWORD(__p) = -22479149;
    AddLigInputForCharacters(v93, v3, 64704, &__p, 2uLL);
    LODWORD(__p) = -18546989;
    AddLigInputForCharacters(v93, v3, 64705, &__p, 2uLL);
    LODWORD(__p) = -22741289;
    AddLigInputForCharacters(v93, v3, 64706, &__p, 2uLL);
    LODWORD(__p) = -18546985;
    AddLigInputForCharacters(v93, v3, 64707, &__p, 2uLL);
    LODWORD(__p) = -23003429;
    AddLigInputForCharacters(v93, v3, 64708, &__p, 2uLL);
    LODWORD(__p) = -22741285;
    AddLigInputForCharacters(v93, v3, 64709, &__p, 2uLL);
    LODWORD(__p) = -22479141;
    AddLigInputForCharacters(v93, v3, 64710, &__p, 2uLL);
    LODWORD(__p) = -18809125;
    AddLigInputForCharacters(v93, v3, 64711, &__p, 2uLL);
    LODWORD(__p) = -18546981;
    AddLigInputForCharacters(v93, v3, 64712, &__p, 2uLL);
    LODWORD(__p) = -23003425;
    AddLigInputForCharacters(v93, v3, 64713, &__p, 2uLL);
    LODWORD(__p) = -22741281;
    AddLigInputForCharacters(v93, v3, 64714, &__p, 2uLL);
    LODWORD(__p) = -22479137;
    AddLigInputForCharacters(v93, v3, 64715, &__p, 2uLL);
    LODWORD(__p) = -18546977;
    AddLigInputForCharacters(v93, v3, 64716, &__p, 2uLL);
    LODWORD(__p) = -18022689;
    AddLigInputForCharacters(v93, v3, 64717, &__p, 2uLL);
    LODWORD(__p) = -23003421;
    AddLigInputForCharacters(v93, v3, 64718, &__p, 2uLL);
    LODWORD(__p) = -22741277;
    AddLigInputForCharacters(v93, v3, 64719, &__p, 2uLL);
    LODWORD(__p) = -22479133;
    AddLigInputForCharacters(v93, v3, 64720, &__p, 2uLL);
    LODWORD(__p) = -18546973;
    AddLigInputForCharacters(v93, v3, 64721, &__p, 2uLL);
    LODWORD(__p) = -23003417;
    AddLigInputForCharacters(v93, v3, 64722, &__p, 2uLL);
    LODWORD(__p) = -22741273;
    AddLigInputForCharacters(v93, v3, 64723, &__p, 2uLL);
    LODWORD(__p) = -22479129;
    AddLigInputForCharacters(v93, v3, 64724, &__p, 2uLL);
    LODWORD(__p) = -18546969;
    AddLigInputForCharacters(v93, v3, 64725, &__p, 2uLL);
    LODWORD(__p) = -18022681;
    AddLigInputForCharacters(v93, v3, 64726, &__p, 2uLL);
    LODWORD(__p) = -23003413;
    AddLigInputForCharacters(v93, v3, 64727, &__p, 2uLL);
    LODWORD(__p) = -18546965;
    AddLigInputForCharacters(v93, v3, 64728, &__p, 2uLL);
    LODWORD(__p) = -23003405;
    AddLigInputForCharacters(v93, v3, 64730, &__p, 2uLL);
    LODWORD(__p) = -22741261;
    AddLigInputForCharacters(v93, v3, 64731, &__p, 2uLL);
    LODWORD(__p) = -22479117;
    AddLigInputForCharacters(v93, v3, 64732, &__p, 2uLL);
    LODWORD(__p) = -18546957;
    AddLigInputForCharacters(v93, v3, 64733, &__p, 2uLL);
    LODWORD(__p) = -18022669;
    AddLigInputForCharacters(v93, v3, 64734, &__p, 2uLL);
    LODWORD(__p) = -18547060;
    AddLigInputForCharacters(v93, v3, 64735, &__p, 2uLL);
    LODWORD(__p) = -18022772;
    AddLigInputForCharacters(v93, v3, 64736, &__p, 2uLL);
    LODWORD(__p) = -18547054;
    AddLigInputForCharacters(v93, v3, 64737, &__p, 2uLL);
    LODWORD(__p) = -18022766;
    AddLigInputForCharacters(v93, v3, 64738, &__p, 2uLL);
    LODWORD(__p) = -18547048;
    AddLigInputForCharacters(v93, v3, 64739, &__p, 2uLL);
    LODWORD(__p) = -18022760;
    AddLigInputForCharacters(v93, v3, 64740, &__p, 2uLL);
    LODWORD(__p) = -18547044;
    AddLigInputForCharacters(v93, v3, 64741, &__p, 2uLL);
    LODWORD(__p) = -18022756;
    AddLigInputForCharacters(v93, v3, 64742, &__p, 2uLL);
    LODWORD(__p) = -18547020;
    AddLigInputForCharacters(v93, v3, 64743, &__p, 2uLL);
    LODWORD(__p) = -18022732;
    AddLigInputForCharacters(v93, v3, 64744, &__p, 2uLL);
    LODWORD(__p) = -18547016;
    AddLigInputForCharacters(v93, v3, 64745, &__p, 2uLL);
    LODWORD(__p) = -18022728;
    AddLigInputForCharacters(v93, v3, 64746, &__p, 2uLL);
    LODWORD(__p) = -18809124;
    AddLigInputForCharacters(v93, v3, 64747, &__p, 2uLL);
    LODWORD(__p) = -18546980;
    AddLigInputForCharacters(v93, v3, 64748, &__p, 2uLL);
    LODWORD(__p) = -18546976;
    AddLigInputForCharacters(v93, v3, 64749, &__p, 2uLL);
    LODWORD(__p) = -18546968;
    AddLigInputForCharacters(v93, v3, 64750, &__p, 2uLL);
    LODWORD(__p) = -18022680;
    AddLigInputForCharacters(v93, v3, 64751, &__p, 2uLL);
    LODWORD(__p) = -18546956;
    AddLigInputForCharacters(v93, v3, 64752, &__p, 2uLL);
    LODWORD(__p) = -18022668;
    AddLigInputForCharacters(v93, v3, 64753, &__p, 2uLL);
    LODWORD(__p) = -17760573;
    AddLigInputForCharacters(v93, v3, 64757, &__p, 2uLL);
    LODWORD(__p) = -17629501;
    AddLigInputForCharacters(v93, v3, 64758, &__p, 2uLL);
    LODWORD(__p) = -17760565;
    AddLigInputForCharacters(v93, v3, 64759, &__p, 2uLL);
    LODWORD(__p) = -17629493;
    AddLigInputForCharacters(v93, v3, 64760, &__p, 2uLL);
    LODWORD(__p) = -17760561;
    AddLigInputForCharacters(v93, v3, 64761, &__p, 2uLL);
    LODWORD(__p) = -17629489;
    AddLigInputForCharacters(v93, v3, 64762, &__p, 2uLL);
    LODWORD(__p) = -17760589;
    AddLigInputForCharacters(v93, v3, 64763, &__p, 2uLL);
    LODWORD(__p) = -17629517;
    AddLigInputForCharacters(v93, v3, 64764, &__p, 2uLL);
    LODWORD(__p) = -17760585;
    AddLigInputForCharacters(v93, v3, 64765, &__p, 2uLL);
    LODWORD(__p) = -17629513;
    AddLigInputForCharacters(v93, v3, 64766, &__p, 2uLL);
    LODWORD(__p) = -17760605;
    AddLigInputForCharacters(v93, v3, 64767, &__p, 2uLL);
    LODWORD(__p) = -17629533;
    AddLigInputForCharacters(v93, v3, 64768, &__p, 2uLL);
    LODWORD(__p) = -17760609;
    AddLigInputForCharacters(v93, v3, 64769, &__p, 2uLL);
    LODWORD(__p) = -17629537;
    AddLigInputForCharacters(v93, v3, 64770, &__p, 2uLL);
    LODWORD(__p) = -17760601;
    AddLigInputForCharacters(v93, v3, 64771, &__p, 2uLL);
    LODWORD(__p) = -17629529;
    AddLigInputForCharacters(v93, v3, 64772, &__p, 2uLL);
    LODWORD(__p) = -17760581;
    AddLigInputForCharacters(v93, v3, 64773, &__p, 2uLL);
    LODWORD(__p) = -17629509;
    AddLigInputForCharacters(v93, v3, 64774, &__p, 2uLL);
    LODWORD(__p) = -17760577;
    AddLigInputForCharacters(v93, v3, 64775, &__p, 2uLL);
    LODWORD(__p) = -17629505;
    AddLigInputForCharacters(v93, v3, 64776, &__p, 2uLL);
    LODWORD(__p) = -23134537;
    AddLigInputForCharacters(v93, v3, 64777, &__p, 2uLL);
    LODWORD(__p) = -22872393;
    AddLigInputForCharacters(v93, v3, 64778, &__p, 2uLL);
    LODWORD(__p) = -22610249;
    AddLigInputForCharacters(v93, v3, 64779, &__p, 2uLL);
    LODWORD(__p) = -18678089;
    AddLigInputForCharacters(v93, v3, 64780, &__p, 2uLL);
    LODWORD(__p) = -22085961;
    AddLigInputForCharacters(v93, v3, 64781, &__p, 2uLL);
    LODWORD(__p) = -22085965;
    AddLigInputForCharacters(v93, v3, 64782, &__p, 2uLL);
    LODWORD(__p) = -22085957;
    AddLigInputForCharacters(v93, v3, 64783, &__p, 2uLL);
    LODWORD(__p) = -22085953;
    AddLigInputForCharacters(v93, v3, 64784, &__p, 2uLL);
    LODWORD(__p) = -17760572;
    AddLigInputForCharacters(v93, v3, 64785, &__p, 2uLL);
    LODWORD(__p) = -17629500;
    AddLigInputForCharacters(v93, v3, 64786, &__p, 2uLL);
    LODWORD(__p) = -17760564;
    AddLigInputForCharacters(v93, v3, 64787, &__p, 2uLL);
    LODWORD(__p) = -17629492;
    AddLigInputForCharacters(v93, v3, 64788, &__p, 2uLL);
    LODWORD(__p) = -17760560;
    AddLigInputForCharacters(v93, v3, 64789, &__p, 2uLL);
    LODWORD(__p) = -17629488;
    AddLigInputForCharacters(v93, v3, 64790, &__p, 2uLL);
    LODWORD(__p) = -17760588;
    AddLigInputForCharacters(v93, v3, 64791, &__p, 2uLL);
    LODWORD(__p) = -17629516;
    AddLigInputForCharacters(v93, v3, 64792, &__p, 2uLL);
    LODWORD(__p) = -17760584;
    AddLigInputForCharacters(v93, v3, 64793, &__p, 2uLL);
    LODWORD(__p) = -17629512;
    AddLigInputForCharacters(v93, v3, 64794, &__p, 2uLL);
    LODWORD(__p) = -17760604;
    AddLigInputForCharacters(v93, v3, 64795, &__p, 2uLL);
    LODWORD(__p) = -17629532;
    AddLigInputForCharacters(v93, v3, 64796, &__p, 2uLL);
    LODWORD(__p) = -17760608;
    AddLigInputForCharacters(v93, v3, 64797, &__p, 2uLL);
    LODWORD(__p) = -17629536;
    AddLigInputForCharacters(v93, v3, 64798, &__p, 2uLL);
    LODWORD(__p) = -17760600;
    AddLigInputForCharacters(v93, v3, 64799, &__p, 2uLL);
    LODWORD(__p) = -17629528;
    AddLigInputForCharacters(v93, v3, 64800, &__p, 2uLL);
    LODWORD(__p) = -17760580;
    AddLigInputForCharacters(v93, v3, 64801, &__p, 2uLL);
    LODWORD(__p) = -17629508;
    AddLigInputForCharacters(v93, v3, 64802, &__p, 2uLL);
    LODWORD(__p) = -17760576;
    AddLigInputForCharacters(v93, v3, 64803, &__p, 2uLL);
    LODWORD(__p) = -17629504;
    AddLigInputForCharacters(v93, v3, 64804, &__p, 2uLL);
    LODWORD(__p) = -23134536;
    AddLigInputForCharacters(v93, v3, 64805, &__p, 2uLL);
    LODWORD(__p) = -22872392;
    AddLigInputForCharacters(v93, v3, 64806, &__p, 2uLL);
    LODWORD(__p) = -22610248;
    AddLigInputForCharacters(v93, v3, 64807, &__p, 2uLL);
    LODWORD(__p) = -18678088;
    AddLigInputForCharacters(v93, v3, 64808, &__p, 2uLL);
    LODWORD(__p) = -22085960;
    AddLigInputForCharacters(v93, v3, 64809, &__p, 2uLL);
    LODWORD(__p) = -22085964;
    AddLigInputForCharacters(v93, v3, 64810, &__p, 2uLL);
    LODWORD(__p) = -22085956;
    AddLigInputForCharacters(v93, v3, 64811, &__p, 2uLL);
    LODWORD(__p) = -22085952;
    AddLigInputForCharacters(v93, v3, 64812, &__p, 2uLL);
    LODWORD(__p) = -23003465;
    AddLigInputForCharacters(v93, v3, 64813, &__p, 2uLL);
    LODWORD(__p) = -22741321;
    AddLigInputForCharacters(v93, v3, 64814, &__p, 2uLL);
    LODWORD(__p) = -22479177;
    AddLigInputForCharacters(v93, v3, 64815, &__p, 2uLL);
    LODWORD(__p) = -18547017;
    AddLigInputForCharacters(v93, v3, 64816, &__p, 2uLL);
    LODWORD(__p) = -18022733;
    AddLigInputForCharacters(v93, v3, 64817, &__p, 2uLL);
    LODWORD(__p) = -18022729;
    AddLigInputForCharacters(v93, v3, 64818, &__p, 2uLL);
    LODWORD(__p) = -18547005;
    AddLigInputForCharacters(v93, v3, 64819, &__p, 2uLL);
    LODWORD(__p) = -23003468;
    AddLigInputForCharacters(v93, v3, 64820, &__p, 2uLL);
    LODWORD(__p) = -22741324;
    AddLigInputForCharacters(v93, v3, 64821, &__p, 2uLL);
    LODWORD(__p) = -22479180;
    AddLigInputForCharacters(v93, v3, 64822, &__p, 2uLL);
    LODWORD(__p) = -23003464;
    AddLigInputForCharacters(v93, v3, 64823, &__p, 2uLL);
    LODWORD(__p) = -22741320;
    AddLigInputForCharacters(v93, v3, 64824, &__p, 2uLL);
    LODWORD(__p) = -22479176;
    AddLigInputForCharacters(v93, v3, 64825, &__p, 2uLL);
    LODWORD(__p) = -18547004;
    AddLigInputForCharacters(v93, v3, 64826, &__p, 2uLL);
    LODWORD(__p) = -18547000;
    AddLigInputForCharacters(v93, v3, 64827, &__p, 2uLL);
    LODWORD(__p) = -23003497;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64848, &__p, 3uLL);
    LODWORD(__p) = -22741352;
    WORD2(__p) = -354;
    AddLigInputForCharacters(v93, v3, 64849, &__p, 3uLL);
    LODWORD(__p) = -22741353;
    WORD2(__p) = -352;
    AddLigInputForCharacters(v93, v3, 64850, &__p, 3uLL);
    LODWORD(__p) = -22741353;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64851, &__p, 3uLL);
    LODWORD(__p) = -22479209;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64852, &__p, 3uLL);
    LODWORD(__p) = -18547049;
    WORD2(__p) = -352;
    AddLigInputForCharacters(v93, v3, 64853, &__p, 3uLL);
    LODWORD(__p) = -18547049;
    WORD2(__p) = -348;
    AddLigInputForCharacters(v93, v3, 64854, &__p, 3uLL);
    LODWORD(__p) = -18547049;
    WORD2(__p) = -344;
    AddLigInputForCharacters(v93, v3, 64855, &__p, 3uLL);
    LODWORD(__p) = -18547040;
    WORD2(__p) = -350;
    AddLigInputForCharacters(v93, v3, 64856, &__p, 3uLL);
    LODWORD(__p) = -18547041;
    WORD2(__p) = -348;
    AddLigInputForCharacters(v93, v3, 64857, &__p, 3uLL);
    LODWORD(__p) = -18547036;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64858, &__p, 3uLL);
    LODWORD(__p) = -18547036;
    WORD2(__p) = -272;
    AddLigInputForCharacters(v93, v3, 64859, &__p, 3uLL);
    LODWORD(__p) = -22741325;
    WORD2(__p) = -352;
    AddLigInputForCharacters(v93, v3, 64860, &__p, 3uLL);
    LODWORD(__p) = -23003469;
    WORD2(__p) = -348;
    AddLigInputForCharacters(v93, v3, 64861, &__p, 3uLL);
    LODWORD(__p) = -23003468;
    WORD2(__p) = -272;
    AddLigInputForCharacters(v93, v3, 64862, &__p, 3uLL);
    LODWORD(__p) = -18547020;
    WORD2(__p) = -350;
    AddLigInputForCharacters(v93, v3, 64863, &__p, 3uLL);
    LODWORD(__p) = -18547021;
    WORD2(__p) = -348;
    AddLigInputForCharacters(v93, v3, 64864, &__p, 3uLL);
    LODWORD(__p) = -18547021;
    WORD2(__p) = -352;
    AddLigInputForCharacters(v93, v3, 64865, &__p, 3uLL);
    LODWORD(__p) = -18547020;
    WORD2(__p) = -286;
    AddLigInputForCharacters(v93, v3, 64866, &__p, 3uLL);
    LODWORD(__p) = -18547021;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64867, &__p, 3uLL);
    LODWORD(__p) = -22741316;
    WORD2(__p) = -350;
    AddLigInputForCharacters(v93, v3, 64868, &__p, 3uLL);
    LODWORD(__p) = -22741317;
    WORD2(__p) = -348;
    AddLigInputForCharacters(v93, v3, 64869, &__p, 3uLL);
    LODWORD(__p) = -18547012;
    WORD2(__p) = -286;
    AddLigInputForCharacters(v93, v3, 64870, &__p, 3uLL);
    LODWORD(__p) = -22741320;
    WORD2(__p) = -286;
    AddLigInputForCharacters(v93, v3, 64871, &__p, 3uLL);
    LODWORD(__p) = -22741321;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64872, &__p, 3uLL);
    LODWORD(__p) = -23003464;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64873, &__p, 3uLL);
    LODWORD(__p) = -18547016;
    WORD2(__p) = -346;
    AddLigInputForCharacters(v93, v3, 64874, &__p, 3uLL);
    LODWORD(__p) = -18547017;
    WORD2(__p) = -344;
    AddLigInputForCharacters(v93, v3, 64875, &__p, 3uLL);
    LODWORD(__p) = -18547016;
    WORD2(__p) = -286;
    AddLigInputForCharacters(v93, v3, 64876, &__p, 3uLL);
    LODWORD(__p) = -18547017;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64877, &__p, 3uLL);
    LODWORD(__p) = -22741312;
    WORD2(__p) = -272;
    AddLigInputForCharacters(v93, v3, 64878, &__p, 3uLL);
    LODWORD(__p) = -22479168;
    WORD2(__p) = -286;
    AddLigInputForCharacters(v93, v3, 64879, &__p, 3uLL);
    LODWORD(__p) = -22479169;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64880, &__p, 3uLL);
    LODWORD(__p) = -18547004;
    WORD2(__p) = -350;
    AddLigInputForCharacters(v93, v3, 64881, &__p, 3uLL);
    LODWORD(__p) = -18547005;
    WORD2(__p) = -348;
    AddLigInputForCharacters(v93, v3, 64882, &__p, 3uLL);
    LODWORD(__p) = -18547005;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64883, &__p, 3uLL);
    LODWORD(__p) = -18547004;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64884, &__p, 3uLL);
    LODWORD(__p) = -23003444;
    WORD2(__p) = -286;
    AddLigInputForCharacters(v93, v3, 64885, &__p, 3uLL);
    LODWORD(__p) = -18546996;
    WORD2(__p) = -286;
    AddLigInputForCharacters(v93, v3, 64886, &__p, 3uLL);
    LODWORD(__p) = -18546997;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64887, &__p, 3uLL);
    LODWORD(__p) = -18546996;
    WORD2(__p) = -272;
    AddLigInputForCharacters(v93, v3, 64888, &__p, 3uLL);
    LODWORD(__p) = -18546992;
    WORD2(__p) = -286;
    AddLigInputForCharacters(v93, v3, 64889, &__p, 3uLL);
    LODWORD(__p) = -18546992;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64890, &__p, 3uLL);
    LODWORD(__p) = -18546992;
    WORD2(__p) = -272;
    AddLigInputForCharacters(v93, v3, 64891, &__p, 3uLL);
    LODWORD(__p) = -22479148;
    WORD2(__p) = -286;
    AddLigInputForCharacters(v93, v3, 64892, &__p, 3uLL);
    LODWORD(__p) = -22479149;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64893, &__p, 3uLL);
    LODWORD(__p) = -18546984;
    WORD2(__p) = -350;
    AddLigInputForCharacters(v93, v3, 64894, &__p, 3uLL);
    LODWORD(__p) = -18546984;
    WORD2(__p) = -286;
    AddLigInputForCharacters(v93, v3, 64895, &__p, 3uLL);
    LODWORD(__p) = -22741280;
    WORD2(__p) = -286;
    AddLigInputForCharacters(v93, v3, 64896, &__p, 3uLL);
    LODWORD(__p) = -22741280;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64897, &__p, 3uLL);
    LODWORD(__p) = -22741280;
    WORD2(__p) = -272;
    AddLigInputForCharacters(v93, v3, 64898, &__p, 3uLL);
    LODWORD(__p) = -23003425;
    WORD2(__p) = -352;
    AddLigInputForCharacters(v93, v3, 64899, &__p, 3uLL);
    LODWORD(__p) = -23003424;
    WORD2(__p) = -354;
    AddLigInputForCharacters(v93, v3, 64900, &__p, 3uLL);
    LODWORD(__p) = -22479136;
    WORD2(__p) = -286;
    AddLigInputForCharacters(v93, v3, 64901, &__p, 3uLL);
    LODWORD(__p) = -22479137;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64902, &__p, 3uLL);
    LODWORD(__p) = -18546976;
    WORD2(__p) = -350;
    AddLigInputForCharacters(v93, v3, 64903, &__p, 3uLL);
    LODWORD(__p) = -18546977;
    WORD2(__p) = -348;
    AddLigInputForCharacters(v93, v3, 64904, &__p, 3uLL);
    LODWORD(__p) = -22741277;
    WORD2(__p) = -352;
    AddLigInputForCharacters(v93, v3, 64905, &__p, 3uLL);
    LODWORD(__p) = -22741277;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64906, &__p, 3uLL);
    LODWORD(__p) = -22741276;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64907, &__p, 3uLL);
    LODWORD(__p) = -23003421;
    WORD2(__p) = -348;
    AddLigInputForCharacters(v93, v3, 64908, &__p, 3uLL);
    LODWORD(__p) = -23003421;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64909, &__p, 3uLL);
    LODWORD(__p) = -22479133;
    WORD2(__p) = -352;
    AddLigInputForCharacters(v93, v3, 64910, &__p, 3uLL);
    LODWORD(__p) = -22479133;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64911, &__p, 3uLL);
    LODWORD(__p) = -23003421;
    WORD2(__p) = -344;
    AddLigInputForCharacters(v93, v3, 64914, &__p, 3uLL);
    LODWORD(__p) = -18546965;
    WORD2(__p) = -352;
    AddLigInputForCharacters(v93, v3, 64915, &__p, 3uLL);
    LODWORD(__p) = -18546965;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64916, &__p, 3uLL);
    LODWORD(__p) = -22741273;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64917, &__p, 3uLL);
    LODWORD(__p) = -22741272;
    WORD2(__p) = -272;
    AddLigInputForCharacters(v93, v3, 64918, &__p, 3uLL);
    LODWORD(__p) = -23003416;
    WORD2(__p) = -286;
    AddLigInputForCharacters(v93, v3, 64919, &__p, 3uLL);
    LODWORD(__p) = -23003417;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64920, &__p, 3uLL);
    LODWORD(__p) = -23003416;
    WORD2(__p) = -272;
    AddLigInputForCharacters(v93, v3, 64921, &__p, 3uLL);
    LODWORD(__p) = -18546968;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64922, &__p, 3uLL);
    LODWORD(__p) = -18546968;
    WORD2(__p) = -272;
    AddLigInputForCharacters(v93, v3, 64923, &__p, 3uLL);
    LODWORD(__p) = -18546956;
    WORD2(__p) = -286;
    AddLigInputForCharacters(v93, v3, 64924, &__p, 3uLL);
    LODWORD(__p) = -18546957;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64925, &__p, 3uLL);
    LODWORD(__p) = -22479214;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64926, &__p, 3uLL);
    LODWORD(__p) = -23003496;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64927, &__p, 3uLL);
    LODWORD(__p) = -23003496;
    WORD2(__p) = -272;
    AddLigInputForCharacters(v93, v3, 64928, &__p, 3uLL);
    LODWORD(__p) = -22479208;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64929, &__p, 3uLL);
    LODWORD(__p) = -22479208;
    WORD2(__p) = -272;
    AddLigInputForCharacters(v93, v3, 64930, &__p, 3uLL);
    LODWORD(__p) = -18547048;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64931, &__p, 3uLL);
    LODWORD(__p) = -18547048;
    WORD2(__p) = -272;
    AddLigInputForCharacters(v93, v3, 64932, &__p, 3uLL);
    LODWORD(__p) = -18547040;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64933, &__p, 3uLL);
    LODWORD(__p) = -22741344;
    WORD2(__p) = -272;
    AddLigInputForCharacters(v93, v3, 64934, &__p, 3uLL);
    LODWORD(__p) = -18547040;
    WORD2(__p) = -272;
    AddLigInputForCharacters(v93, v3, 64935, &__p, 3uLL);
    LODWORD(__p) = -22479180;
    WORD2(__p) = -272;
    AddLigInputForCharacters(v93, v3, 64936, &__p, 3uLL);
    LODWORD(__p) = -22741316;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64937, &__p, 3uLL);
    LODWORD(__p) = -22741320;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64938, &__p, 3uLL);
    LODWORD(__p) = -22741312;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64939, &__p, 3uLL);
    LODWORD(__p) = -23003424;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64940, &__p, 3uLL);
    LODWORD(__p) = -18546976;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64941, &__p, 3uLL);
    LODWORD(__p) = -22741260;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64942, &__p, 3uLL);
    LODWORD(__p) = -23003404;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64943, &__p, 3uLL);
    LODWORD(__p) = -18546956;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64944, &__p, 3uLL);
    LODWORD(__p) = -18546972;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64945, &__p, 3uLL);
    LODWORD(__p) = -18546984;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64946, &__p, 3uLL);
    LODWORD(__p) = -22741272;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64947, &__p, 3uLL);
    LODWORD(__p) = -18546985;
    WORD2(__p) = -348;
    AddLigInputForCharacters(v93, v3, 64948, &__p, 3uLL);
    LODWORD(__p) = -22741281;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64949, &__p, 3uLL);
    LODWORD(__p) = -18546996;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64950, &__p, 3uLL);
    LODWORD(__p) = -18546980;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64951, &__p, 3uLL);
    LODWORD(__p) = -23003417;
    WORD2(__p) = -348;
    AddLigInputForCharacters(v93, v3, 64952, &__p, 3uLL);
    LODWORD(__p) = -22479132;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64953, &__p, 3uLL);
    LODWORD(__p) = -23003425;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64954, &__p, 3uLL);
    LODWORD(__p) = -18546980;
    WORD2(__p) = -286;
    AddLigInputForCharacters(v93, v3, 64955, &__p, 3uLL);
    LODWORD(__p) = -23003424;
    WORD2(__p) = -286;
    AddLigInputForCharacters(v93, v3, 64956, &__p, 3uLL);
    LODWORD(__p) = -23003416;
    WORD2(__p) = -350;
    AddLigInputForCharacters(v93, v3, 64957, &__p, 3uLL);
    LODWORD(__p) = -22741344;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64958, &__p, 3uLL);
    LODWORD(__p) = -23003484;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64959, &__p, 3uLL);
    LODWORD(__p) = -23003420;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64960, &__p, 3uLL);
    LODWORD(__p) = -18546988;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64961, &__p, 3uLL);
    LODWORD(__p) = -22741358;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64962, &__p, 3uLL);
    LODWORD(__p) = -18546981;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64963, &__p, 3uLL);
    LODWORD(__p) = -23003445;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64964, &__p, 3uLL);
    LODWORD(__p) = -18547013;
    WORD2(__p) = -284;
    AddLigInputForCharacters(v93, v3, 64965, &__p, 3uLL);
    LODWORD(__p) = -22479180;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64966, &__p, 3uLL);
    LODWORD(__p) = -23003416;
    WORD2(__p) = -270;
    AddLigInputForCharacters(v93, v3, 64967, &__p, 3uLL);
    LODWORD(__p) = -18809157;
    WORD2(__p) = -1105;
    AddLigInputForCharacters(v93, v3, 65008, &__p, 3uLL);
    LODWORD(__p) = -18809129;
    WORD2(__p) = -1105;
    AddLigInputForCharacters(v93, v3, 65009, &__p, 3uLL);
    *&__p = 0xFEEAFEE0FEDF0627;
    AddLigInputForCharacters(v93, v3, 65010, &__p, 4uLL);
    *&__p = 0xFEAEFE92FEDB0627;
    AddLigInputForCharacters(v93, v3, 65011, &__p, 4uLL);
    *&__p = 0xFEAAFEE4FEA4FEE3;
    AddLigInputForCharacters(v93, v3, 65012, &__p, 4uLL);
    *&__p = 0xFEE2FECCFEE0FEBBLL;
    AddLigInputForCharacters(v93, v3, 65013, &__p, 4uLL);
    *&__p = 0x644FEEEFEB30631;
    AddLigInputForCharacters(v93, v3, 65014, &__p, 4uLL);
    *&__p = 0xFEEAFEF4FEE0FECBLL;
    AddLigInputForCharacters(v93, v3, 65015, &__p, 4uLL);
    *&__p = 0xFEE2FEE0FEB30648;
    AddLigInputForCharacters(v93, v3, 65016, &__p, 4uLL);
    LODWORD(__p) = -18809157;
    WORD2(__p) = -272;
    AddLigInputForCharacters(v93, v3, 65017, &__p, 3uLL);
    __p = xmmword_18477B448;
    v87 = unk_18477B458;
    v88 = -18678048;
    AddLigInputForCharacters(v93, v3, 65018, &__p, 0x12uLL);
    __p = xmmword_18477B150;
    AddLigInputForCharacters(v93, v3, 65019, &__p, 8uLL);
    LODWORD(__p) = -24969505;
    AddLigInputForCharacters(v93, v3, 65269, &__p, 2uLL);
    LODWORD(__p) = -24969504;
    AddLigInputForCharacters(v93, v3, 65270, &__p, 2uLL);
    LODWORD(__p) = -24838433;
    AddLigInputForCharacters(v93, v3, 65271, &__p, 2uLL);
    LODWORD(__p) = -24838432;
    AddLigInputForCharacters(v93, v3, 65272, &__p, 2uLL);
    LODWORD(__p) = -24576289;
    AddLigInputForCharacters(v93, v3, 65273, &__p, 2uLL);
    LODWORD(__p) = -24576288;
    AddLigInputForCharacters(v93, v3, 65274, &__p, 2uLL);
    LODWORD(__p) = -24183073;
    AddLigInputForCharacters(v93, v3, 65275, &__p, 2uLL);
    LODWORD(__p) = -24183072;
    AddLigInputForCharacters(v93, v3, 65276, &__p, 2uLL);
    *v90 = xmmword_18477B160;
    v90[2] = 0x670065506540653;
    operator new();
  }

  v35 = &unk_1EF25B678;

  *v93 = &__b[84];
  std::vector<TCFRef<__CFData const*>,TInlineBufferAllocator<TCFRef<__CFData const*>,30ul>>::__destroy_vector::operator()[abi:fn200100](v93);
  *v93 = &__b[50];
  std::vector<TCFRef<__CFData const*>,TInlineBufferAllocator<TCFRef<__CFData const*>,30ul>>::__destroy_vector::operator()[abi:fn200100](v93);
  *v93 = &__b[1];
  std::vector<MortFeatureEntry,TInlineBufferAllocator<MortFeatureEntry,30ul>>::__destroy_vector::operator()[abi:fn200100](v93);
  return v7;
}

void ___Z22GetMorxConversionQueuev_block_invoke()
{
  v0 = dispatch_queue_create("com.apple.CoreText.MorxConversion", 0);
  GetMorxConversionQueue(void)::sQueue = v0;
  global_queue = dispatch_get_global_queue(-2, 0);
  dispatch_set_target_queue(v0, global_queue);
  v2 = GetMorxConversionQueue(void)::sQueue;
  v3 = TDescriptorSource::DoNotCacheKey;

  dispatch_queue_set_specific(v2, v3, 1, 0);
}

__n128 std::__function::__func<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_0,std::allocator<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_0>,BOOL ()(unsigned int,OTL::ScriptTable const*,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25B110;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_0,std::allocator<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_0>,BOOL ()(unsigned int,OTL::ScriptTable const*,BOOL &)>::operator()(uint64_t a1, int *a2, uint64_t *a3, _BYTE *a4)
{
  v4 = 0;
  v5 = *a2;
  v6 = *a3;
  while (*(*(a1 + 8) + v4) != v5)
  {
    v4 += 4;
    if (v4 == 36)
    {
      **(a1 + 16) = 0;
      *a4 = 1;
      return 1;
    }
  }

  v7 = *(a1 + 24);
  v9 = *(v7 + 8);
  v8 = *(v7 + 16);
  if (v9 >= v8)
  {
    v11 = *v7;
    v12 = v9 - *v7;
    v13 = (v12 >> 4) + 1;
    if (v13 >> 60)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v14 = v8 - v11;
    if (v14 >> 3 > v13)
    {
      v13 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      v16 = *(v7 + 504);
      v17 = &v16[16 * v15];
      if (v17 > v7 + 504)
      {
        if (!(v15 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      *(v7 + 504) = v17;
    }

    else
    {
      v16 = 0;
    }

    v18 = &v16[16 * (v12 >> 4)];
    v19 = &v16[16 * v15];
    *v18 = v5;
    *(v18 + 1) = v6;
    v10 = v18 + 16;
    v20 = v16;
    memcpy(v16, v11, v12);
    v21 = *v7;
    *v7 = v20;
    *(v7 + 8) = v10;
    v22 = *(v7 + 16);
    *(v7 + 16) = v19;
    if (v21)
    {
      if (v7 + 24 > v21 || (v23 = (v7 + 504), v7 + 504 <= v21))
      {
        operator delete(v21);
      }

      else if (v22 == *v23)
      {
        *v23 = v21;
      }
    }
  }

  else
  {
    *v9 = v5;
    *(v9 + 8) = v6;
    v10 = (v9 + 16);
  }

  *(v7 + 8) = v10;
  return 1;
}

uint64_t std::__function::__func<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_1,std::allocator<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_1>,BOOL ()(OTL::ConditionSetTable const*,OTL::FeatureTableSubstitutionTable const*,BOOL &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF25B158;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_1,std::allocator<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_1>,BOOL ()(OTL::ConditionSetTable const*,OTL::FeatureTableSubstitutionTable const*,BOOL &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  **(a1 + 8) = 0;
  *a4 = 1;
  return 1;
}

__n128 std::__function::__func<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_2,std::allocator<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_2>,BOOL ()(unsigned int,OTL::LangSysTable const*,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25B1A0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

BOOL std::__function::__func<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_2,std::allocator<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_2>,BOOL ()(unsigned int,OTL::LangSysTable const*,BOOL &)>::operator()(uint64_t a1, unsigned int *a2, unint64_t *a3, _BYTE *a4)
{
  v4 = *a3;
  if (!*a3)
  {
    return v4 != 0;
  }

  if (*(v4 + 2) != -1)
  {
    **(a1 + 8) = 0;
    *a4 = 1;
    return v4 != 0;
  }

  v6 = *a2;
  v7 = *(a1 + 16);
  v9 = *(v7 + 8);
  v8 = *(v7 + 16);
  if (v9 >= v8)
  {
    v11 = *v7;
    v12 = v9 - *v7;
    v13 = (v12 >> 4) + 1;
    if (v13 >> 60)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v14 = v8 - v11;
    if (v14 >> 3 > v13)
    {
      v13 = v14 >> 3;
    }

    if (v14 >= 0x7FFFFFFFFFFFFFF0)
    {
      v15 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v15 = v13;
    }

    if (v15)
    {
      v16 = *(v7 + 504);
      v17 = &v16[16 * v15];
      if (v17 > v7 + 504)
      {
        if (!(v15 >> 60))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      *(v7 + 504) = v17;
    }

    else
    {
      v16 = 0;
    }

    v18 = &v16[16 * (v12 >> 4)];
    v19 = &v16[16 * v15];
    *v18 = v6;
    *(v18 + 1) = v4;
    v10 = v18 + 16;
    v20 = v16;
    memcpy(v16, v11, v12);
    v21 = *v7;
    *v7 = v20;
    *(v7 + 8) = v10;
    v22 = *(v7 + 16);
    *(v7 + 16) = v19;
    if (v21)
    {
      if (v7 + 24 > v21 || (v23 = (v7 + 504), v7 + 504 <= v21))
      {
        operator delete(v21);
      }

      else if (v22 == *v23)
      {
        *v23 = v21;
      }
    }
  }

  else
  {
    *v9 = v6;
    *(v9 + 8) = v4;
    v10 = (v9 + 16);
  }

  *(v7 + 8) = v10;
  v24 = *(a1 + 24);
  v25 = 0x9DDFEA08EB382D69 * ((8 * (v4 & 0x1FFFFFFF) + 8) ^ HIDWORD(v4));
  v26 = 0x9DDFEA08EB382D69 * (HIDWORD(v4) ^ (v25 >> 47) ^ v25);
  v27 = 0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47));
  v28 = v24[1];
  if (!*&v28)
  {
    goto LABEL_41;
  }

  v29 = vcnt_s8(v28);
  v29.i16[0] = vaddlv_u8(v29);
  if (v29.u32[0] > 1uLL)
  {
    v30 = 0x9DDFEA08EB382D69 * (v26 ^ (v26 >> 47));
    if (v27 >= *&v28)
    {
      v30 = v27 % *&v28;
    }
  }

  else
  {
    v30 = (*&v28 - 1) & v27;
  }

  v31 = *(*v24 + 8 * v30);
  if (!v31 || (v32 = *v31) == 0)
  {
LABEL_41:
    operator new();
  }

  while (1)
  {
    v33 = v32[1];
    if (v33 == v27)
    {
      break;
    }

    if (v29.u32[0] > 1uLL)
    {
      if (v33 >= *&v28)
      {
        v33 %= *&v28;
      }
    }

    else
    {
      v33 &= *&v28 - 1;
    }

    if (v33 != v30)
    {
      goto LABEL_41;
    }

LABEL_40:
    v32 = *v32;
    if (!v32)
    {
      goto LABEL_41;
    }
  }

  if (v32[2] != v4)
  {
    goto LABEL_40;
  }

  if (v6)
  {
    v34 = *(a1 + 40);
    v35 = v34[1];
    if (v35)
    {
      v36 = vcnt_s8(v35);
      v36.i16[0] = vaddlv_u8(v36);
      if (v36.u32[0] > 1uLL)
      {
        v37 = v6;
        if (*&v35 <= v6)
        {
          v37 = v6 % v35.i32[0];
        }
      }

      else
      {
        v37 = (v35.i32[0] - 1) & v6;
      }

      v38 = *(*v34 + 8 * v37);
      if (v38)
      {
        for (i = *v38; i; i = *i)
        {
          v40 = i[1];
          if (v40 == v6)
          {
            if (*(i + 4) == v6)
            {
              return v4 != 0;
            }
          }

          else
          {
            if (v36.u32[0] > 1uLL)
            {
              if (v40 >= *&v35)
              {
                v40 %= *&v35;
              }
            }

            else
            {
              v40 &= *&v35 - 1;
            }

            if (v40 != v37)
            {
              break;
            }
          }
        }
      }
    }

    operator new();
  }

  return v4 != 0;
}

__n128 std::__function::__func<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_3,std::allocator<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_3>,BOOL ()(unsigned int,OTL::FeatureTable const*,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25B1E8;
  *(a2 + 8) = *(a1 + 8);
  result = *(a1 + 24);
  v3 = *(a1 + 40);
  v4 = *(a1 + 56);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 56) = v4;
  *(a2 + 40) = v3;
  *(a2 + 24) = result;
  return result;
}

uint64_t std::__function::__func<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_3,std::allocator<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_3>,BOOL ()(unsigned int,OTL::FeatureTable const*,BOOL &)>::operator()(uint64_t a1, unsigned int *a2, uint64_t *a3, _BYTE *a4)
{
  v6 = *a2;
  v7 = *a3;
  if (v6 == 1920365166)
  {
LABEL_98:
    **(a1 + 16) = 0;
    *a4 = 1;
    return 1;
  }

  if (v6 == 1819239276)
  {
LABEL_74:
    operator new();
  }

  v8 = *(a1 + 8);
  v9 = *v8;
  if (!v9)
  {
    v14 = (std::__hash_table<std::__hash_value_type<OTL::LangSysTable const*,unsigned int>,std::__unordered_map_hasher<OTL::LangSysTable const*,std::__hash_value_type<OTL::LangSysTable const*,unsigned int>,std::hash<OTL::LangSysTable const*>,std::equal_to<OTL::LangSysTable const*>,true>,std::__unordered_map_equal<OTL::LangSysTable const*,std::__hash_value_type<OTL::LangSysTable const*,unsigned int>,std::equal_to<OTL::LangSysTable const*>,std::hash<OTL::LangSysTable const*>,true>,std::allocator<std::__hash_value_type<OTL::LangSysTable const*,unsigned int>>>::__emplace_unique_key_args<OTL::LangSysTable const*,std::piecewise_construct_t const&,std::tuple<OTL::LangSysTable const* const&>,std::tuple<>>(*(a1 + 32), *(v8 + 1)) + 3);
    goto LABEL_23;
  }

  v10 = *(a1 + 24);
  v11 = v10[1];
  if (!*&v11)
  {
    goto LABEL_22;
  }

  v12 = vcnt_s8(v11);
  v12.i16[0] = vaddlv_u8(v12);
  if (v12.u32[0] > 1uLL)
  {
    v13 = *v8;
    if (*&v11 <= v9)
    {
      v13 = v9 % v11.i32[0];
    }
  }

  else
  {
    v13 = (v11.i32[0] - 1) & v9;
  }

  v15 = *(*v10 + 8 * v13);
  if (!v15 || (v16 = *v15) == 0)
  {
LABEL_22:
    operator new();
  }

  while (1)
  {
    v17 = v16[1];
    if (v17 == v9)
    {
      break;
    }

    if (v12.u32[0] > 1uLL)
    {
      if (v17 >= *&v11)
      {
        v17 %= *&v11;
      }
    }

    else
    {
      v17 &= *&v11 - 1;
    }

    if (v17 != v13)
    {
      goto LABEL_22;
    }

LABEL_21:
    v16 = *v16;
    if (!v16)
    {
      goto LABEL_22;
    }
  }

  if (*(v16 + 4) != v9)
  {
    goto LABEL_21;
  }

  v14 = v16 + 5;
LABEL_23:
  v18 = *v14;
  v19 = *(a1 + 40);
  v20 = v19[1];
  if (!*&v20)
  {
    goto LABEL_40;
  }

  v21 = vcnt_s8(v20);
  v21.i16[0] = vaddlv_u8(v21);
  if (v21.u32[0] > 1uLL)
  {
    v22 = *v14;
    if (*&v20 <= v18)
    {
      v22 = v18 % v20.i32[0];
    }
  }

  else
  {
    v22 = (v20.i32[0] - 1) & v18;
  }

  v23 = *(*v19 + 8 * v22);
  if (!v23 || (v24 = *v23) == 0)
  {
LABEL_40:
    operator new();
  }

  while (2)
  {
    v25 = v24[1];
    if (*&v25 != v18)
    {
      if (v21.u32[0] > 1uLL)
      {
        if (*&v25 >= *&v20)
        {
          *&v25 %= *&v20;
        }
      }

      else
      {
        *&v25 &= *&v20 - 1;
      }

      if (*&v25 != v22)
      {
        goto LABEL_40;
      }

      goto LABEL_39;
    }

    if (v24[2].i32[0] != v18)
    {
LABEL_39:
      v24 = *v24;
      if (!v24)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  v26 = v24[4];
  if (!*&v26)
  {
    goto LABEL_73;
  }

  v27 = vcnt_s8(v26);
  v27.i16[0] = vaddlv_u8(v27);
  if (v27.u32[0] > 1uLL)
  {
    v28 = v6;
    if (*&v26 <= v6)
    {
      v28 = v6 % v26.i32[0];
    }
  }

  else
  {
    v28 = (v26.i32[0] - 1) & v6;
  }

  v29 = v24[3];
  v30 = *(*&v29 + 8 * v28);
  if (!v30 || (v31 = *v30) == 0)
  {
LABEL_58:
    if (v27.u32[0] > 1uLL)
    {
      v33 = v6;
      if (*&v26 <= v6)
      {
        v33 = v6 % v26.i32[0];
      }
    }

    else
    {
      v33 = (v26.i32[0] - 1) & v6;
    }

    v34 = *(*&v29 + 8 * v33);
    if (v34)
    {
      for (i = *v34; i; i = *i)
      {
        v36 = i[1];
        if (v36 == v6)
        {
          if (*(i + 4) == v6)
          {
            goto LABEL_74;
          }
        }

        else
        {
          if (v27.u32[0] > 1uLL)
          {
            if (v36 >= *&v26)
            {
              v36 %= *&v26;
            }
          }

          else
          {
            v36 &= *&v26 - 1;
          }

          if (v36 != v33)
          {
            break;
          }
        }
      }
    }

LABEL_73:
    operator new();
  }

  while (1)
  {
    v32 = v31[1];
    if (v32 == v6)
    {
      break;
    }

    if (v27.u32[0] > 1uLL)
    {
      if (v32 >= *&v26)
      {
        v32 %= *&v26;
      }
    }

    else
    {
      v32 &= *&v26 - 1;
    }

    if (v32 != v28)
    {
      goto LABEL_58;
    }

LABEL_57:
    v31 = *v31;
    if (!v31)
    {
      goto LABEL_58;
    }
  }

  if (*(v31 + 4) != v6)
  {
    goto LABEL_57;
  }

  v37 = v31[3];
  if (v37 != v7)
  {
    v38 = 0;
    do
    {
      v39 = *(v37 + 2 + v38);
      v40 = *(v7 + 2 + v38);
    }

    while (v39 == v40 && v38++ != 1);
    if (v39 != v40)
    {
      goto LABEL_98;
    }

    if (*(v37 + 2))
    {
      v42 = v37 + 2 * __rev16(*(v37 + 2)) + 4;
      v43 = v7 + 4;
      v44 = v37 + 4;
      do
      {
        v45 = 0;
        do
        {
          v46 = *(v44 + v45);
          v47 = *(v43 + v45);
        }

        while (v46 == v47 && v45++ != 1);
        v44 += 2;
        v43 += 2;
      }

      while (v46 == v47 && v44 != v42);
      if (v46 != v47)
      {
        goto LABEL_98;
      }
    }
  }

  return 1;
}

void *std::__hash_table<std::__hash_value_type<OTL::LangSysTable const*,unsigned int>,std::__unordered_map_hasher<OTL::LangSysTable const*,std::__hash_value_type<OTL::LangSysTable const*,unsigned int>,std::hash<OTL::LangSysTable const*>,std::equal_to<OTL::LangSysTable const*>,true>,std::__unordered_map_equal<OTL::LangSysTable const*,std::__hash_value_type<OTL::LangSysTable const*,unsigned int>,std::equal_to<OTL::LangSysTable const*>,std::hash<OTL::LangSysTable const*>,true>,std::allocator<std::__hash_value_type<OTL::LangSysTable const*,unsigned int>>>::__emplace_unique_key_args<OTL::LangSysTable const*,std::piecewise_construct_t const&,std::tuple<OTL::LangSysTable const* const&>,std::tuple<>>(void *a1, unint64_t a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (a2 & 0x1FFFFFFF) + 8) ^ HIDWORD(a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = (*&v5 - 1) & v4;
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != a2)
  {
    goto LABEL_17;
  }

  return v9;
}

__n128 std::__function::__func<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_3::operator() const(unsigned int,OTL::FeatureTable const*,BOOL &)::{lambda(unsigned short,BOOL &)#1},std::allocator<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_3::operator() const(unsigned int,OTL::FeatureTable const*,BOOL &)::{lambda(unsigned short,BOOL &)#1}>,BOOL ()(unsigned short,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25B230;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_3::operator() const(unsigned int,OTL::FeatureTable const*,BOOL &)::{lambda(unsigned short,BOOL &)#1},std::allocator<BuildFeaturesMap(OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_3::operator() const(unsigned int,OTL::FeatureTable const*,BOOL &)::{lambda(unsigned short,BOOL &)#1}>,BOOL ()(unsigned short,BOOL &)>::operator()(uint64_t a1, unsigned __int16 *a2)
{
  v3 = *a2;
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(v5 + 8);
  v48 = (v5 + 8);
  v7 = *(std::__hash_table<std::__hash_value_type<OTL::LangSysTable const*,unsigned int>,std::__unordered_map_hasher<OTL::LangSysTable const*,std::__hash_value_type<OTL::LangSysTable const*,unsigned int>,std::hash<OTL::LangSysTable const*>,std::equal_to<OTL::LangSysTable const*>,true>,std::__unordered_map_equal<OTL::LangSysTable const*,std::__hash_value_type<OTL::LangSysTable const*,unsigned int>,std::equal_to<OTL::LangSysTable const*>,std::hash<OTL::LangSysTable const*>,true>,std::allocator<std::__hash_value_type<OTL::LangSysTable const*,unsigned int>>>::__emplace_unique_key_args<OTL::LangSysTable const*,std::piecewise_construct_t const&,std::tuple<OTL::LangSysTable const* const&>,std::tuple<>>(v4, v6) + 6);
  v53 = v7;
  v8 = *(a1 + 24);
  v11 = *(v8 + 88);
  v9 = v8 + 88;
  v10 = v11;
  if (!v11)
  {
    goto LABEL_9;
  }

  v12 = v9;
  do
  {
    v13 = *(v10 + 32);
    v14 = v13 >= v3;
    v15 = v13 < v3;
    if (v14)
    {
      v12 = v10;
    }

    v10 = *(v10 + 8 * v15);
  }

  while (v10);
  if (v12 != v9 && *(v12 + 32) <= v3)
  {
    std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v12 + 40, **(a1 + 32));
  }

  else
  {
LABEL_9:
    v16 = v9 - 8;
    v52 = **(a1 + 32);
    *&v46 = 0;
    v45 = &v45 + 8;
    std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(&v45, &v45 + 1, v52);
    LODWORD(v48) = v3;
    v49 = v45;
    *&v50 = v46;
    if (v46)
    {
      *(*(&v45 + 1) + 16) = &v49 + 8;
      *&v45 = &v45 + 8;
      *(&v45 + 1) = 0;
      *&v46 = 0;
    }

    else
    {
      *&v49 = &v49 + 8;
    }

    std::__tree<std::__value_type<unsigned int,std::set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::set<unsigned int>>>(v16, v3);
    std::__tree<std::__value_type<long,TGlyphDeltaListEntry>,std::__map_value_compare<long,std::__value_type<long,TGlyphDeltaListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TGlyphDeltaListEntry>>>::destroy(*(&v49 + 1));
    std::__tree<std::__value_type<long,TGlyphDeltaListEntry>,std::__map_value_compare<long,std::__value_type<long,TGlyphDeltaListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TGlyphDeltaListEntry>>>::destroy(*(&v45 + 1));
  }

  v17 = *(a1 + 24);
  v18 = *(v17 + 112);
  if (v18)
  {
    v19 = v17 + 112;
    do
    {
      v20 = *(v18 + 32);
      v14 = v20 >= v3;
      v21 = v20 < v3;
      if (v14)
      {
        v19 = v18;
      }

      v18 = *(v18 + 8 * v21);
    }

    while (v18);
    if (v19 != v17 + 112 && *(v19 + 32) <= v3)
    {
      v36 = 0;
      v37 = 1;
      if (v7 > 1751215720)
      {
        if (v7 > 1801547360)
        {
          if (v7 != 1818326126)
          {
            v38 = 1801547361;
LABEL_77:
            if (v7 == v38)
            {
              goto LABEL_78;
            }

LABEL_79:
            LODWORD(v45) = v3;
            v48 = &v45;
            v42 = *(std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v17 + 40), v3) + 5);
            if (v42)
            {
              if (v36 == v42)
              {
                v43 = 1;
              }

              else
              {
                v43 = v37;
              }

              if ((v43 & 1) == 0)
              {
                **(a1 + 48) = 0;
                **(a1 + 56) = 1;
                return 1;
              }
            }

            else
            {
              v44 = *(a1 + 24);
              LODWORD(v45) = v3;
              v48 = &v45;
              *(std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v44 + 40), v3) + 5) = v36;
            }

            std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v19 + 40, v7);
            goto LABEL_39;
          }
        }

        else if (v7 != 1751215721)
        {
          if (v7 != 1751474802)
          {
            goto LABEL_79;
          }

          goto LABEL_71;
        }
      }

      else
      {
        if (v7 <= 1668903531)
        {
          if (v7 != 1634885986)
          {
            v38 = 1667786098;
            goto LABEL_77;
          }

LABEL_71:
          v37 = 0;
          v36 = -1;
          goto LABEL_79;
        }

        if (v7 != 1668903532)
        {
          v38 = 1735550315;
          goto LABEL_77;
        }
      }

LABEL_78:
      v37 = 0;
      v36 = 1;
      goto LABEL_79;
    }
  }

  v22 = 0;
  if (v7 <= 1751215720)
  {
    if (v7 <= 1668903531)
    {
      if (v7 != 1634885986)
      {
        v23 = 1667786098;
        goto LABEL_33;
      }

LABEL_28:
      v22 = -1;
      goto LABEL_35;
    }

    if (v7 != 1668903532)
    {
      v23 = 1735550315;
      goto LABEL_33;
    }

LABEL_34:
    v22 = 1;
    goto LABEL_35;
  }

  if (v7 <= 1801547360)
  {
    if (v7 != 1751215721)
    {
      if (v7 != 1751474802)
      {
        goto LABEL_35;
      }

      goto LABEL_28;
    }

    goto LABEL_34;
  }

  if (v7 == 1818326126)
  {
    goto LABEL_34;
  }

  v23 = 1801547361;
LABEL_33:
  if (v7 == v23)
  {
    goto LABEL_34;
  }

LABEL_35:
  LODWORD(v45) = v3;
  v48 = &v45;
  *(std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>((v17 + 40), v3) + 5) = v22;
  v24 = *(a1 + 24);
  v52 = v7;
  *&v46 = 0;
  v45 = &v45 + 8;
  std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(&v45, &v45 + 1, v7);
  LODWORD(v48) = v3;
  v49 = v45;
  *&v50 = v46;
  if (v46)
  {
    *(*(&v45 + 1) + 16) = &v49 + 8;
    *&v45 = &v45 + 8;
    *(&v45 + 1) = 0;
    *&v46 = 0;
  }

  else
  {
    *&v49 = &v49 + 8;
  }

  std::__tree<std::__value_type<unsigned int,std::set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::set<unsigned int>>>(v24 + 104, v3);
  std::__tree<std::__value_type<long,TGlyphDeltaListEntry>,std::__map_value_compare<long,std::__value_type<long,TGlyphDeltaListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TGlyphDeltaListEntry>>>::destroy(*(&v49 + 1));
  std::__tree<std::__value_type<long,TGlyphDeltaListEntry>,std::__map_value_compare<long,std::__value_type<long,TGlyphDeltaListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TGlyphDeltaListEntry>>>::destroy(*(&v45 + 1));
LABEL_39:
  v26 = *(a1 + 24);
  v25 = *(a1 + 32);
  v52 = v3;
  v45 = 0u;
  v46 = 0u;
  v47 = 1065353216;
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&v45, &v52);
  v27 = *v25;
  LODWORD(v48) = *v25;
  v28 = v45;
  v45 = 0uLL;
  v49 = v28;
  v50 = v46;
  v51 = v47;
  if (*(&v46 + 1))
  {
    v29 = *(v46 + 8);
    if ((*(&v28 + 1) & (*(&v28 + 1) - 1)) != 0)
    {
      if (v29 >= *(&v28 + 1))
      {
        v29 %= *(&v28 + 1);
      }
    }

    else
    {
      v29 &= *(&v28 + 1) - 1;
    }

    *(v28 + 8 * v29) = &v50;
    v46 = 0uLL;
  }

  v30 = v26[1];
  if (!*&v30)
  {
    goto LABEL_62;
  }

  v31 = vcnt_s8(v30);
  v31.i16[0] = vaddlv_u8(v31);
  if (v31.u32[0] > 1uLL)
  {
    v32 = v27;
    if (*&v30 <= v27)
    {
      v32 = v27 % v30.i32[0];
    }
  }

  else
  {
    v32 = (v30.i32[0] - 1) & v27;
  }

  v33 = *(*v26 + 8 * v32);
  if (!v33 || (v34 = *v33) == 0)
  {
LABEL_62:
    operator new();
  }

  while (1)
  {
    v35 = v34[1];
    if (v35 == v27)
    {
      break;
    }

    if (v31.u32[0] > 1uLL)
    {
      if (v35 >= *&v30)
      {
        v35 %= *&v30;
      }
    }

    else
    {
      v35 &= *&v30 - 1;
    }

    if (v35 != v32)
    {
      goto LABEL_62;
    }

LABEL_61:
    v34 = *v34;
    if (!v34)
    {
      goto LABEL_62;
    }
  }

  if (*(v34 + 4) != v27)
  {
    goto LABEL_61;
  }

  std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(&v49);
  std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(&v45);
  v39 = *(a1 + 24);
  v48 = *(a1 + 32);
  v40 = std::__tree<std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unordered_set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(v39 + 128, *v48);
  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(v40 + 5, &v53);
  return 1;
}

uint64_t std::__tree<std::__value_type<unsigned int,std::set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::pair<unsigned int const,std::set<unsigned int>>>(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t **std::__tree<unsigned int>::__emplace_hint_unique_key_args<unsigned int,unsigned int const&>(uint64_t **result, uint64_t *a2, unsigned int a3)
{
  v3 = result + 1;
  if (result + 1 == a2 || (v4 = *(a2 + 7), v4 > a3))
  {
    v5 = *a2;
    if (*result == a2)
    {
      v7 = a2;
      goto LABEL_16;
    }

    if (v5)
    {
      v6 = *a2;
      do
      {
        v7 = v6;
        v6 = v6[1];
      }

      while (v6);
    }

    else
    {
      v11 = a2;
      do
      {
        v7 = v11[2];
        v12 = *v7 == v11;
        v11 = v7;
      }

      while (v12);
    }

    if (*(v7 + 7) < a3)
    {
LABEL_16:
      if (v5)
      {
        v13 = v7 + 1;
      }

      else
      {
        v13 = a2;
      }

      if (*v13)
      {
        return result;
      }

LABEL_39:
      operator new();
    }

    v14 = *v3;
    if (!*v3)
    {
      goto LABEL_39;
    }

    while (1)
    {
      while (1)
      {
        v15 = v14;
        v16 = *(v14 + 7);
        if (v16 <= a3)
        {
          break;
        }

        v14 = *v14;
        if (!*v15)
        {
          goto LABEL_39;
        }
      }

      if (v16 >= a3)
      {
        break;
      }

      v14 = v14[1];
      if (!v14)
      {
        goto LABEL_39;
      }
    }
  }

  else
  {
    if (v4 >= a3)
    {
      return result;
    }

    v8 = a2[1];
    if (v8)
    {
      do
      {
        v9 = v8;
        v8 = *v8;
        v10 = v9;
      }

      while (v8);
    }

    else
    {
      v10 = a2;
      do
      {
        v17 = v10;
        v10 = v10[2];
      }

      while (*v10 != v17);
    }

    if (v10 == v3)
    {
      goto LABEL_39;
    }

    if (*(v10 + 7) > a3)
    {
      goto LABEL_39;
    }

    v18 = *v3;
    if (!*v3)
    {
      goto LABEL_39;
    }

    while (1)
    {
      while (1)
      {
        v19 = v18;
        v20 = *(v18 + 7);
        if (v20 <= a3)
        {
          break;
        }

        v18 = *v18;
        if (!*v19)
        {
          goto LABEL_39;
        }
      }

      if (v20 >= a3)
      {
        break;
      }

      v18 = v18[1];
      if (!v18)
      {
        goto LABEL_39;
      }
    }
  }

  return result;
}

uint64_t std::__tree<unsigned int>::__emplace_unique_key_args<unsigned int,unsigned int const&>(uint64_t result, unsigned int a2)
{
  v2 = *(result + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 28);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return result;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,int>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int &&>,std::tuple<>>(void *a1, unsigned int a2)
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
      v4 = a2 % v2;
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

  if (*(v6 + 4) != a2)
  {
    goto LABEL_17;
  }

  return v6;
}

uint64_t *std::__tree<std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::unordered_set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::unordered_set<unsigned int>>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<>>(uint64_t a1, unsigned int a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_7:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = *(v2 + 32);
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_7;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_7;
    }
  }
}

uint64_t std::unique_ptr<std::__tree_node<std::__value_type<unsigned int,std::unordered_set<unsigned int>>,void *>,std::__tree_node_destructor<std::allocator<std::__tree_node<std::__value_type<unsigned int,std::unordered_set<unsigned int>>,void *>>>>::~unique_ptr[abi:fn200100](uint64_t a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    if (*(a1 + 16) == 1)
    {
      std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(v2 + 40);
    }

    operator delete(v2);
  }

  return a1;
}

uint64_t *std::unique_ptr<anonymous namespace::ArabicLookups>::reset[abi:fn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v9 = (v2 + 1472);
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v9);
    v3 = *v2;
    if (*v2)
    {
      v4 = *(v2 + 8);
      v5 = *v2;
      if (v4 != v3)
      {
        do
        {
          v4 -= 48;
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v4);
        }

        while (v4 != v3);
        v5 = *v2;
      }

      *(v2 + 8) = v3;
      v6 = (v2 + 1464);
      if (v2 + 24 <= v5)
      {
        v7 = v6 >= v5;
        v8 = v6 == v5;
      }

      else
      {
        v7 = 0;
        v8 = 0;
      }

      if (!v8 && v7)
      {
        if (*(v2 + 16) == *v6)
        {
          *v6 = v5;
        }
      }

      else
      {
        operator delete(v5);
      }
    }

    return MEMORY[0x1865F22D0](v2, 0x1070C40A52D4504);
  }

  return result;
}

void std::vector<anonymous namespace::LookupInfo,TInlineBufferAllocator<anonymous namespace::LookupInfo,30ul>>::push_back[abi:fn200100](void *a1, __int128 *a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v8 = 0x8E38E38E38E38E39 * ((v4 - *a1) >> 3);
    if (v8 + 1 > 0x38E38E38E38E38ELL)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = 0x8E38E38E38E38E39 * ((v3 - *a1) >> 3);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x1C71C71C71C71C7)
    {
      v11 = 0x38E38E38E38E38ELL;
    }

    else
    {
      v11 = v10;
    }

    if (v11)
    {
      v12 = a1[273];
      v13 = v12 + 72 * v11;
      if (v13 > (a1 + 273))
      {
        if (v11 <= 0x38E38E38E38E38ELL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      a1[273] = v13;
    }

    else
    {
      v12 = 0;
    }

    v14 = v12 + 72 * v8;
    v15 = *a2;
    v16 = a2[2];
    *(v14 + 16) = a2[1];
    *(v14 + 32) = v16;
    v17 = v12 + 72 * v11;
    *v14 = v15;
    std::vector<unsigned short>::vector[abi:fn200100]((v14 + 48), a2 + 6);
    v7 = v14 + 72;
    v18 = *a1;
    v19 = a1[1];
    v20 = v14 + *a1 - v19;
    if (v19 != *a1)
    {
      v21 = *a1;
      v22 = v20;
      do
      {
        v23 = *v21;
        v24 = *(v21 + 2);
        *(v22 + 16) = *(v21 + 1);
        *(v22 + 32) = v24;
        *v22 = v23;
        *(v22 + 56) = 0;
        *(v22 + 64) = 0;
        *(v22 + 48) = 0;
        *(v22 + 48) = *(v21 + 3);
        *(v22 + 64) = v21[8];
        v21[6] = 0;
        v21[7] = 0;
        v21[8] = 0;
        v21 += 9;
        v22 += 72;
      }

      while (v21 != v19);
      do
      {
        v25 = v18[6];
        if (v25)
        {
          v18[7] = v25;
          operator delete(v25);
        }

        v18 += 9;
      }

      while (v18 != v19);
      v18 = *a1;
    }

    *a1 = v20;
    a1[1] = v7;
    v26 = a1[2];
    a1[2] = v17;
    if (v18)
    {
      v27 = a1 + 273;
      if (a1 + 3 <= v18 && v27 > v18)
      {
        if (v26 == *v27)
        {
          *v27 = v18;
        }
      }

      else
      {
        operator delete(v18);
      }
    }
  }

  else
  {
    v5 = *a2;
    v6 = a2[2];
    *(v4 + 16) = a2[1];
    *(v4 + 32) = v6;
    *v4 = v5;
    std::vector<unsigned short>::vector[abi:fn200100]((v4 + 48), a2 + 6);
    v7 = v4 + 72;
  }

  a1[1] = v7;
}

uint64_t ResolveLookupSubtable(unsigned __int16 *a1, unint64_t a2, void *a3)
{
  v3 = &a1[__rev16(a1[2]) + 3];
  if ((a1 + 4) <= a2)
  {
    v4 = (a2 - (a1 + 6)) >> 1;
  }

  else
  {
    v4 = 0;
  }

  v5 = bswap32(v4) >> 16;
  if (v3 < (a1 + 3) || v3 > a2)
  {
    v7 = v5;
  }

  else
  {
    v7 = a1[2];
  }

  if (a3)
  {
    *a3 = __rev16(v7);
  }

  return ResolveLookupSubtableWithIndex(a1, 0, a2);
}

uint64_t ResolveLookupSubtableWithIndex(unsigned __int16 *a1, unint64_t a2, unint64_t a3)
{
  v3 = a1 + 3;
  v4 = bswap32(a1[2]) >> 16;
  v5 = &a1[v4 + 3];
  if ((a1 + 4) <= a3)
  {
    v6 = ((a3 - (a1 + 6)) >> 1);
  }

  else
  {
    v6 = 0;
  }

  if (v5 < v3 || v5 > a3)
  {
    v4 = v6;
  }

  if (v4 > a2)
  {
    v8 = a1 + (bswap32(v3[a2]) >> 16);
    if ((v8 + 2) <= a3)
    {
      v9 = *a1;
      if (v9 != 1792)
      {
        return __rev16(v9);
      }

      if (*v8 == 256 && (v8 + 8) <= a3)
      {
        v11 = *(v8 + 1);
        v12 = 7;
        if (v11 != 1792)
        {
          v13 = __rev16(v11);
          if (&v8[bswap32(*(v8 + 1)) + 2] <= a3)
          {
            return v13;
          }

          else
          {
            return 7;
          }
        }

        return v12;
      }
    }
  }

  return 0;
}

__n128 *std::stable_partition[abi:fn200100]<std::__wrap_iter<anonymous namespace::LookupInfo *>,anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_4>(__n128 *a1, __n128 *a2)
{
  v2 = a2;
  if (a1 != a2)
  {
    v3 = a1;
    v4 = a1;
    while (1)
    {
      v5 = v4->n128_u32[0];
      v6 = v4->n128_u32[0] == 1667329140 || v5 == 1919118452;
      if (!v6 && v5 != 1919707495)
      {
        break;
      }

      v4 = (v4 + 72);
      v3 += 72;
      if (v4 == a2)
      {
        return v2;
      }
    }

    v9 = &a2[-5].n128_u32[2];
    v10 = a2 - v3;
    do
    {
      if (v4 == v9)
      {
        return v3;
      }

      v12 = *v9;
      v9 -= 18;
      v11 = v12;
      v2 = (v2 - 72);
      v10 -= 72;
    }

    while (v12 != 1667329140 && v11 != 1919707495 && v11 != 1919118452);
    v15 = 0x8E38E38E38E38E39 * (v10 >> 3) + 1;
    if (v10 < 145)
    {
      v21 = 0;
      v16 = 0;
    }

    else
    {
      if (v15 >= 0x1C71C71C71C71C7)
      {
        v16 = 0x1C71C71C71C71C7;
      }

      else
      {
        v16 = 0x8E38E38E38E38E39 * (v10 >> 3) + 1;
      }

      v17 = MEMORY[0x1E69E5398];
      while (1)
      {
        v18 = operator new(72 * v16, v17);
        if (v18)
        {
          break;
        }

        v19 = v16 >> 1;
        v20 = v16 > 1;
        v16 >>= 1;
        if (!v20)
        {
          v21 = 0;
          v16 = v19;
          goto LABEL_33;
        }
      }

      v21 = v18;
    }

LABEL_33:
    if (v21)
    {
      operator delete(v21);
    }
  }

  return v2;
}

void std::stable_partition[abi:fn200100]<std::__wrap_iter<anonymous namespace::LookupInfo *>,anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_7>(__n128 *a1, __n128 *a2)
{
  v2 = a2 - a1;
  if (a2 != a1)
  {
    v3 = a2;
    v4 = a1;
    v5 = a1;
    while (v5->n128_u32[0] == 1919707495)
    {
      v5 = (v5 + 72);
      v2 -= 72;
      v4 += 72;
      if (v5 == a2)
      {
        return;
      }
    }

    v6 = (a2 - 72);
    while (v5 != v6)
    {
      v7 = v6->n128_u32[0];
      v6 = (v6 - 72);
      v3 = (v3 - 72);
      v2 -= 72;
      if (v7 == 1919707495)
      {
        v8 = 0x8E38E38E38E38E39 * (v2 >> 3) + 1;
        if (v2 < 145)
        {
          v14 = 0;
          v9 = 0;
        }

        else
        {
          if (v8 >= 0x1C71C71C71C71C7)
          {
            v9 = 0x1C71C71C71C71C7;
          }

          else
          {
            v9 = 0x8E38E38E38E38E39 * (v2 >> 3) + 1;
          }

          v10 = MEMORY[0x1E69E5398];
          while (1)
          {
            v11 = operator new(72 * v9, v10);
            if (v11)
            {
              break;
            }

            v12 = v9 >> 1;
            v13 = v9 > 1;
            v9 >>= 1;
            if (!v13)
            {
              v14 = 0;
              v9 = v12;
              goto LABEL_19;
            }
          }

          v14 = v11;
        }

LABEL_19:
        if (v14)
        {

          operator delete(v14);
        }

        return;
      }
    }
  }
}

void anonymous namespace::MorxSwashSubtableBuilder::FromLookupSubtable(atomic_ullong *a1, unint64_t a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v11[7] = *MEMORY[0x1E69E9840];
  CFDataGetMutableBytePtr(atomic_load_explicit(a1 + 1, memory_order_acquire));
  memset(v11, 170, 24);
  std::vector<unsigned short>::vector[abi:fn200100](v11, a8);
  memset(__p, 0, sizeof(__p));
  if (v11[1] != v11[0])
  {
    std::vector<unsigned short>::__vallocate[abi:fn200100](__p, (v11[1] - v11[0]) >> 1);
  }

  operator new();
}

void *std::vector<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul>>::emplace_back<TCFRef<__CFData const*>>(void *result, atomic_ullong *a2)
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
    v17 = v3 + 24;
    if (v10)
    {
      v12 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<TCFRef<__CFData *>,30ul>>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = (v12 + 8 * v7);
    v15 = v14;
    v16 = v12 + 8 * v10;
    *v14 = atomic_exchange(a2, 0);
    ++v15;
    std::vector<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul>>::__swap_out_circular_buffer(v3, &v13);
    v6 = *(v3 + 8);
    result = std::__split_buffer<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul> &>::~__split_buffer(&v13);
  }

  else
  {
    *v5 = atomic_exchange(a2, 0);
    v6 = v5 + 1;
  }

  *(v3 + 8) = v6;
  return result;
}

void anonymous namespace::MorxSwashSubtableBuilder::CreateSubtableData(_anonymous_namespace_::MorxSwashSubtableBuilder *this, uint64_t a2)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v4 = (a2 + 16);
  Length = CFDataGetLength(atomic_load_explicit((a2 + 16), memory_order_acquire));
  *this = atomic_exchange(&v7, 0);
}

void *std::vector<TCFRef<__CFData const*>,TInlineBufferAllocator<TCFRef<__CFData const*>,30ul>>::emplace_back<TCFRef<__CFData const*>>(void *result, atomic_ullong *a2)
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
    v17 = v3 + 24;
    if (v10)
    {
      v12 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<TCFRef<__CFData const*>,30ul>>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = v12;
    v14 = (v12 + 8 * v7);
    v15 = v14;
    v16 = v12 + 8 * v10;
    *v14 = atomic_exchange(a2, 0);
    ++v15;
    std::vector<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul>>::__swap_out_circular_buffer(v3, &v13);
    v6 = *(v3 + 8);
    result = std::__split_buffer<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul> &>::~__split_buffer(&v13);
  }

  else
  {
    *v5 = atomic_exchange(a2, 0);
    v6 = v5 + 1;
  }

  *(v3 + 8) = v6;
  return result;
}

uint64_t AddPrevLigaturesFromSingleSubstitutionLookupTable(uint64_t a1, CFDataRef theData)
{
  v13[4] = *MEMORY[0x1E69E9840];
  if (!theData)
  {
    BytePtr = 0;
    goto LABEL_5;
  }

  BytePtr = CFDataGetBytePtr(theData);
  v5 = CFDataGetBytePtr(theData);
  if (!v5)
  {
LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v6 = &v5[CFDataGetLength(theData)];
LABEL_6:
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v10 = v7;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = TAATLookupTable::BadTable;
  v9[1] = 0;
  v12 = 0xAAAAAAAAAAAAFFFFLL;
  TAATLookupTable::SetTable(v9, BytePtr, v6);
  v13[0] = &unk_1EF25B350;
  v13[1] = a1;
  v13[3] = v13;
  TAATLookupTable::Iterate(v9, v13);
  return std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100](v13);
}

void anonymous namespace::MorxInsertionSubtableBuilder::~MorxInsertionSubtableBuilder(_anonymous_namespace_::MorxInsertionSubtableBuilder *this)
{
  *this = &unk_1EF25B3E0;
  v2 = (this + 408);
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
}

{
  *this = &unk_1EF25B3E0;
  v3 = (this + 408);
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v3);
  MEMORY[0x1865F22D0](v2, 0x10F1C40126EF00FLL);
}

uint64_t std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::push_back[abi:fn200100](uint64_t result, __int16 *a2)
{
  v3 = result;
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (v5 >= v4)
  {
    v7 = *result;
    v8 = v5 - *result;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    v14 = result + 24;
    v23[4] = v3 + 24;
    if (v13)
    {
      v15 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<unsigned short,3ul>>(v14, v13);
      v13 = v16;
      v7 = *v3;
      v8 = *(v3 + 8) - *v3;
    }

    else
    {
      v15 = 0;
    }

    v17 = (v15 + 2 * v9);
    v18 = v15 + 2 * v13;
    v19 = *a2;
    v20 = &v17[-(v8 >> 1)];
    *v17 = v19;
    v6 = v17 + 1;
    memcpy(v20, v7, v8);
    v21 = *v3;
    *v3 = v20;
    *(v3 + 8) = v6;
    v22 = *(v3 + 16);
    *(v3 + 16) = v18;
    v23[2] = v21;
    v23[3] = v22;
    v23[0] = v21;
    v23[1] = v21;
    result = std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,3ul> &>::~__split_buffer(v23);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 8) = v6;
  return result;
}

uint64_t std::vector<anonymous namespace::LigInput,TInlineBufferAllocator<anonymous namespace::LigInput,30ul>>::push_back[abi:fn200100](uint64_t *a1, uint64_t a2)
{
  v4 = a1[1];
  v5 = a1[2];
  if (v4 >= v5)
  {
    v8 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 4);
    if (v8 + 1 > 0x555555555555555)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v5 - *a1) >> 4);
    v10 = 2 * v9;
    if (2 * v9 <= v8 + 1)
    {
      v10 = v8 + 1;
    }

    if (v9 >= 0x2AAAAAAAAAAAAAALL)
    {
      v11 = 0x555555555555555;
    }

    else
    {
      v11 = v10;
    }

    v19[4] = a1 + 3;
    if (v11)
    {
    }

    else
    {
      v12 = 0;
    }

    v13 = v12 + 48 * v8;
    v14 = v12 + 48 * v11;
    TInlineVector<unsigned short,3ul>::TInlineVector(v13, *a2, *(a2 + 8));
    *(v13 + 40) = *(a2 + 40);
    v7 = v13 + 48;
    v15 = a1[1];
    v16 = v13 + *a1 - v15;
    v17 = *a1;
    *a1 = v16;
    a1[1] = v13 + 48;
    v18 = a1[2];
    a1[2] = v14;
    v19[2] = v17;
    v19[3] = v18;
    v19[0] = v17;
    v19[1] = v17;
  }

  else
  {
    result = TInlineVector<unsigned short,3ul>::TInlineVector(v4, *a2, *(a2 + 8));
    *(result + 40) = *(a2 + 40);
    v7 = result + 48;
  }

  a1[1] = v7;
  return result;
}

uint64_t LigInputsForLigatureSubst(void *a1, OTL::LookupWithCoverage *this, char *a3, double a4, int8x16_t a5)
{
  v12[14] = *MEMORY[0x1E69E9840];
  v12[8] = a3;
  v12[9] = a1;
  v12[7] = this;
  v5 = this + 6;
  if (this + 6 <= a3)
  {
    v6 = bswap32(*(this + 2)) >> 16;
    v7 = &v5[2 * v6];
    if (this + 8 <= a3)
    {
      v8 = (a3 - v5) >> 1;
    }

    else
    {
      v8 = 0;
    }

    if (v7 <= a3 && v7 >= v5 || v8 == v6)
    {
      OTL::LookupWithCoverage::GetCoverage(this, a3, v12, a4, a5);
      operator new();
    }
  }

  return 0;
}

void std::vector<std::__wrap_iter<anonymous namespace::LigInput *>,TInlineBufferAllocator<std::__wrap_iter<anonymous namespace::LigInput *>,30ul>>::push_back[abi:fn200100](uint64_t a1, void *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = (v4 - *a1) >> 3;
    if ((v6 + 1) >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v7 = v3 - *a1;
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

    if (v9)
    {
      v10 = *(a1 + 264);
      v11 = v10 + 8 * v9;
      if (v11 > a1 + 264)
      {
        if (!(v9 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      *(a1 + 264) = v11;
    }

    else
    {
      v10 = 0;
    }

    v13 = v10 + 8 * v9;
    v12 = (v10 + 8 * v6);
    *v12 = *a2;
    v5 = v12 + 1;
    v14 = *(a1 + 8) - *a1;
    v15 = v12 - v14;
    memcpy(v12 - v14, *a1, v14);
    v16 = *a1;
    *a1 = v15;
    *(a1 + 8) = v5;
    v17 = *(a1 + 16);
    *(a1 + 16) = v13;
    if (v16)
    {
      if (a1 + 24 > v16 || (v18 = (a1 + 264), a1 + 264 <= v16))
      {
        operator delete(v16);
      }

      else if (v17 == *v18)
      {
        *v18 = v16;
      }
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

uint64_t anonymous namespace::MorxLigatureSubtableBuilder::FromLigInputs()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v331 = v1;
  v332 = v2;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  v375 = *MEMORY[0x1E69E9840];
  v12 = NewLKTHandle(v8, 1);
  v352 = v9;
  MutableBytePtr = CFDataGetMutableBytePtr(atomic_load_explicit((v9 + 16), memory_order_acquire));
  v327 = v6;
  v14 = *v6;
  v15 = v6[1];
  v16 = 4;
  while (v14 != v15)
  {
    v17 = *v14;
    v18 = v14[1];
    while (v17 != v18)
    {
      v19 = *v17++;
      LKTAddRange(v12, v19, v19, v16++);
    }

    v14 += 3;
  }

  v20 = v331;
  if (v4 == v331)
  {
    v21 = v352;
  }

  else
  {
    do
    {
      v22 = *v20;
      v23 = v20[1];
      v24 = (*v20 + 1);
      v25 = *v20 == v23 || v24 == v23;
      if (!v25)
      {
        v26 = *v22;
        v27 = *v20 + 1;
        do
        {
          v29 = *v27++;
          v28 = v29;
          v30 = v26 >= v29;
          if (v26 <= v29)
          {
            v26 = v28;
          }

          if (!v30)
          {
            v22 = v24;
          }

          v24 = v27;
        }

        while (v27 != v23);
      }

      MutableBytePtr[*v22 >> 3] |= 1 << (*v22 & 7);
      v31 = *v20;
      v32 = v20[1];
      while (v31 != v32)
      {
        v33 = *v31;
        if ((LKTGetValue(v12, v33) & 0x10000) == 0)
        {
          LKTAddRange(v12, v33, v33, v16++);
        }

        ++v31;
      }

      v20 += 6;
      v21 = v352;
    }

    while (v20 != v4);
  }

  v34 = v332[1];
  v35 = *v332;
  if (*v332 != v34)
  {
    do
    {
      v36 = *v35++;
      LKTAddRange(v12, v36, v36, v16);
    }

    while (v35 != v34);
    ++v16;
  }

  *(v21 + 24) = v16;
  LKTCreateLookupTable(v12, &__p);

  memset(v369, 170, sizeof(v369));
  v368 = 0;
  __p = 0;
  v367 = 0;
  v370 = v369;
  v37 = v371;
  memset(v365, 170, sizeof(v365));
  v362 = 0;
  v363 = 0;
  v364 = 0;
  v365[210] = v365;
  LODWORD(v365[211]) = 0;
  v337 = v12;
  if (v4 == v331)
  {
    goto LABEL_172;
  }

  v38 = 0;
  v39 = 0;
  if (0xAAAAAAAAAAAAAAABLL * ((v4 - v331) >> 4) <= 1)
  {
    v40 = 1;
  }

  else
  {
    v40 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v331) >> 4);
  }

  v329 = v40;
  v330 = 0xAAAAAAAAAAAAAAABLL * ((v4 - v331) >> 4);
  while (1)
  {
    v328 = v38;
    v333 = v39;
    v41 = &v331[6 * v39];
    v42 = v41[1] - *v41;
    v43 = v42 - 1;
    if (v42 != 1)
    {
      break;
    }

LABEL_161:
    v39 = v333 + 1;
    v38 = v333 + 1 >= v330;
    if (v333 + 1 == v329)
    {
      v133 = v337;
      if (v367 != __p)
      {
        v134 = 0;
        if ((0x6FB586FB586FB587 * ((v367 - __p) >> 5)) <= 1)
        {
          v135 = 1;
        }

        else
        {
          v135 = 0x6FB586FB586FB587 * ((v367 - __p) >> 5);
        }

        while (0x6FB586FB586FB587 * ((v367 - __p) >> 5) > v134)
        {
          v136 = __p + 1760 * v134;
          v137 = *(v136 + 5);
          v138 = *(v136 + 6);
          while (v137 != v138)
          {
            *(v137 + 52) = GetActionLookupIndex(&v362, v134, *(v137 + 50), (v137 + 8));
            v137 += 56;
          }

          ++v134;
          v37 = v371;
          if (v134 == v135)
          {
            goto LABEL_171;
          }
        }

        goto LABEL_398;
      }

LABEL_171:
      if (v39 < v330)
      {
        goto LABEL_410;
      }

      goto LABEL_172;
    }
  }

  v44 = 0;
  v346 = &v331[6 * v39];
  while (1)
  {
    v45 = v42;
    v42 = v43;
    v46 = v41[1] - *v41;
    if (v46 <= v43)
    {
      goto LABEL_398;
    }

    v344 = v45;
    v47 = (*v41)[v43];
    *&v360[24] = 0xAAAAAAAAAAAAAAAALL;
    memset(v360, 0, 24);
    v361 = &v360[24];
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v360, *v41, v41[1], v41[1] - *v41);
    v49 = *&v360[8];
    v48 = *v360;
    v50 = *&v360[8] - *v360;
    v51 = (*&v360[8] - *v360) >> 1;
    v347 = v46;
    if (v42 <= v51)
    {
      v37 = v371;
      if (v42 < v51)
      {
        v49 = (*v360 + 2 * v42);
        *&v360[8] = v49;
      }
    }

    else
    {
      v52 = v42 - v51;
      if (v42 - v51 <= (*&v360[16] - *&v360[8]) >> 1)
      {
        bzero(*&v360[8], 2 * v52);
        v49 += v52;
        *&v360[8] = v49;
        v37 = v371;
      }

      else
      {
        if ((v42 & 0x8000000000000000) != 0)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        if (*&v360[16] - *v360 <= v42)
        {
          v53 = v42;
        }

        else
        {
          v53 = *&v360[16] - *v360;
        }

        if (*&v360[16] - *v360 >= 0x7FFFFFFFFFFFFFFEuLL)
        {
          v54 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v54 = v53;
        }

        *&v374[2] = &v360[24];
        v55 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<unsigned short,3ul>>(&v360[24], v54);
        v56 = *v360;
        v57 = *&v360[8] - *v360;
        v58 = (v55 + v50);
        v60 = v55 + 2 * v59;
        bzero(v58, 2 * v52);
        v61 = &v58[2 * v52];
        v62 = &v58[-v57];
        memcpy(v62, v56, v57);
        v63 = *v360;
        v64 = *&v360[16];
        *v360 = v62;
        *&v360[8] = v61;
        *&v360[16] = v60;
        v37 = v371;
        *&v374[1] = v63;
        *(&v374[1] + 1) = v64;
        *&v374[0] = v63;
        *(&v374[0] + 1) = v63;
        std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,3ul> &>::~__split_buffer(v374);
        v49 = *&v360[8];
        v48 = *v360;
      }
    }

    v65 = __p;
    v342 = 0x6FB586FB586FB587 * ((v367 - __p) >> 5);
    if (v367 == __p)
    {
      v68 = v49 - v48;
LABEL_61:
      memset(&v374[1] + 8, 170, 0x6C8uLL);
      memset(v374, 0, 24);
      v374[2] = &v374[1] + 8;
      v374[3] = 0uLL;
      *&v374[109] = &v374[4];
      BYTE8(v374[109]) = 0;
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v374, v48, v49, v68 >> 1);
      v372[0] = 0xAAAAAAAAAAAAAAAALL;
      v373 = 0xAAAAAAAAAAAAAAAALL;
      *v371 = 0xAAAAAAAAAAAAAAAALL;
      *&v371[16] = 0uLL;
      v372[1] = v372;
      *v371 = v47;
      v71 = v344;
      v72 = v347;
      if (v344 == v347)
      {
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(&v371[8], *v360, *&v360[8], (*&v360[8] - *v360) >> 1);
        v73 = *(v346 + 20);
        LOWORD(v44) = -1;
      }

      else
      {
        v73 = 0;
      }

      v21 = v352;
      LOWORD(v373) = v73;
      WORD1(v373) = v44;
      v74 = v367;
      if (v367 >= v368)
      {
        v76 = 0x6FB586FB586FB587 * ((v367 - __p) >> 5) + 1;
        if (v76 > 0x253C8253C8253CLL)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        if (0xDF6B0DF6B0DF6B0ELL * ((v368 - __p) >> 5) > v76)
        {
          v76 = 0xDF6B0DF6B0DF6B0ELL * ((v368 - __p) >> 5);
        }

        if ((0x6FB586FB586FB587 * ((v368 - __p) >> 5)) >= 0x129E4129E4129ELL)
        {
          v77 = 0x253C8253C8253CLL;
        }

        else
        {
          v77 = v76;
        }

        if (v77)
        {
          v78 = v370;
          if (&v370[1760 * v77] > &v370)
          {
            if (v77 <= 0x253C8253C8253CLL)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v370 += 1760 * v77;
        }

        else
        {
          v78 = 0;
        }

        v79 = &v78[32 * ((v367 - __p) >> 5)];
        TInlineVector<unsigned short,3ul>::TInlineVector(v79, *&v374[0], *(&v374[0] + 1));
        *(v79 + 1752) = BYTE8(v374[109]);
        v80 = v367;
        v81 = __p;
        v82 = v79 + __p - v367;
        if (__p != v367)
        {
          v83 = __p;
          v84 = (v79 + __p - v367);
          do
          {
            TInlineVector<unsigned short,3ul>::TInlineVector(v84, *v83, *(v83 + 1));
            *(v84 + 1752) = v83[1752];
            v83 += 1760;
            v84 += 220;
          }

          while (v83 != v80);
          v71 = v344;
          do
          {
            v81 += 1760;
          }

          while (v81 != v80);
          v81 = __p;
          v37 = v371;
        }

        v85 = &v78[1760 * v77];
        v75 = v79 + 220;
        __p = v82;
        v367 = (v79 + 220);
        v86 = v368;
        v368 = v85;
        if (v81)
        {
          v87 = v369 <= v81 && &v370 > v81;
          v72 = v347;
          if (v87)
          {
            if (v86 == v370)
            {
              v370 = v81;
            }
          }

          else
          {
            operator delete(v81);
          }

          v21 = v352;
        }

        else
        {
          v21 = v352;
          v72 = v347;
        }
      }

      else
      {
        TInlineVector<unsigned short,3ul>::TInlineVector(v367, *&v374[0], *(&v374[0] + 1));
        v74[1752] = BYTE8(v374[109]);
        v75 = (v74 + 1760);
      }

      v367 = v75;
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v371[8]);
      v88 = *(&v374[2] + 1);
      if (*(&v374[2] + 1))
      {
        v89 = *&v374[3];
        v90 = *(&v374[2] + 1);
        if (*&v374[3] != *(&v374[2] + 1))
        {
          do
          {
            v91 = v89 - 56;
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v89 - 48);
            v89 = v91;
          }

          while (v91 != v88);
          v37 = v371;
          v90 = *(&v374[2] + 1);
        }

        *&v374[3] = v88;
        if (&v374[4] <= v90 && &v374[109] > v90)
        {
          if (*(&v374[3] + 1) == *&v374[109])
          {
            *&v374[109] = v90;
          }
        }

        else
        {
          operator delete(v90);
        }
      }

      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v374);
LABEL_106:
      v66 = v342;
LABEL_107:
      if (v71 != v72)
      {
        goto LABEL_136;
      }

      goto LABEL_108;
    }

    v66 = 0;
    if ((0x6FB586FB586FB587 * ((v367 - __p) >> 5)) <= 1)
    {
      v67 = 1;
    }

    else
    {
      v67 = 0x6FB586FB586FB587 * ((v367 - __p) >> 5);
    }

    v68 = v49 - v48;
    v69 = __p + 8;
    while (1)
    {
      v70 = *(v69 - 1);
      if (*v69 - v70 == v68 && !memcmp(v70, v48, v49 - v48))
      {
        break;
      }

      ++v66;
      v69 += 220;
      if (v67 == v66)
      {
        goto LABEL_60;
      }
    }

    v66 = v66;
    if (v66 == 0xFFFFLL)
    {
LABEL_60:
      v37 = v371;
      goto LABEL_61;
    }

    v37 = v371;
    if (v342 <= v66)
    {
      goto LABEL_398;
    }

    v114 = &v65[1760 * v66];
    v115 = (v114 + 40);
    v116 = *(v114 + 5);
    v117 = *(v114 + 6) - v116;
    if (!v117)
    {
      goto LABEL_148;
    }

    v118 = 0;
    v119 = 0x6DB6DB6DB6DB6DB7 * (v117 >> 3);
    v120 = v119 <= 1 ? 1 : v119;
    v121 = *(v114 + 5);
    while (1)
    {
      v122 = *v121;
      v121 += 28;
      if (v122 == v47)
      {
        break;
      }

      if (v120 == ++v118)
      {
        goto LABEL_148;
      }
    }

    if (v118 == 0xFFFFLL)
    {
LABEL_148:
      v342 = v66;
      *&v374[2] = 0xAAAAAAAAAAAAAAAALL;
      *&v374[3] = 0xAAAAAAAAAAAAAAAALL;
      v374[0] = 0xAAAAAAAAAAAAAAAALL;
      v374[1] = 0uLL;
      *(&v374[2] + 1) = &v374[2];
      LOWORD(v374[0]) = v47;
      v72 = v347;
      if (v344 == v347)
      {
        v123 = v68 >> 1;
        v124 = (v114 + 40);
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v374 + 1, v48, v49, v123);
        v115 = v124;
        v125 = *(v346 + 20);
        LOWORD(v44) = -1;
      }

      else
      {
        v125 = 0;
      }

      v21 = v352;
      LOWORD(v374[3]) = v125;
      WORD1(v374[3]) = v44;
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v374 + 8);
      v71 = v344;
      goto LABEL_106;
    }

    if (v119 <= v118)
    {
      goto LABEL_398;
    }

    v126 = v116 + 56 * v118;
    if (*(v126 + 8) != *(v126 + 16))
    {
      *(v126 + 50) = v44;
      if (v342 > v44)
      {
        v127 = &v65[1760 * v44];
        *&v374[2] = 0xAAAAAAAAAAAAAAAALL;
        *&v128 = 0xAAAAAAAAAAAAAAAALL;
        *(&v128 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v374[1] = v128;
        v374[0] = v128;
        v129 = v126;
        TInlineVector<unsigned short,3ul>::TInlineVector(v374, *v114, *(v114 + 1));
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::push_back[abi:fn200100](v374, v129);
        DoSubgroupSubstitutions(&__p, v127, v374, *(v129 + 48));
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v374);
        v21 = v352;
        v71 = v344;
        v72 = v347;
        goto LABEL_107;
      }

      goto LABEL_398;
    }

    if (v344 == v347)
    {
      break;
    }

    v21 = v352;
LABEL_136:
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v360);
    v44 = v66;
    v43 = v42 - 1;
    v41 = v346;
    if (v42 == 1)
    {
      goto LABEL_161;
    }
  }

  *(v126 + 48) = *(v346 + 20);
  v130 = v126;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>((v126 + 8), v48, v49, v68 >> 1);
  if (*(v130 + 50) != -1)
  {
    v21 = v352;
    if (0x6FB586FB586FB587 * ((v367 - __p) >> 5) <= v44)
    {
      goto LABEL_398;
    }

    v131 = __p + 1760 * v44;
    *&v374[2] = 0xAAAAAAAAAAAAAAAALL;
    *&v132 = 0xAAAAAAAAAAAAAAAALL;
    *(&v132 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v374[1] = v132;
    v374[0] = v132;
    TInlineVector<unsigned short,3ul>::TInlineVector(v374, *v346, v346[1]);
    DoSubgroupSubstitutions(&__p, v131, v374, *(v130 + 48));
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v374);
LABEL_108:
    v93 = v367;
    if (__p == v367)
    {
      goto LABEL_136;
    }

    v94 = 0x6FB586FB586FB587 * ((v367 - __p) >> 5);
    while (2)
    {
      v95 = (v93 - 1752);
      v96 = *&v360[8];
      v97 = *v360;
      v98 = *&v360[8] - *v360;
      if (*(v93 - 219) - *(v93 - 220) > *&v360[8] - *v360)
      {
        *&v371[24] = 0xAAAAAAAAAAAAAAAALL;
        memset(v371, 0, 24);
        v372[0] = &v371[24];
        if (*&v360[8] == *v360)
        {
          v101 = 0;
          v102 = 0;
        }

        else
        {
          v99 = *v95;
          v100 = (*v95 - v98);
          do
          {
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::push_back[abi:fn200100](v371, v100++);
          }

          while (v100 != v99);
          v96 = *&v360[8];
          v97 = *v360;
          v37 = v371;
          v102 = *&v371[8];
          v101 = *v371;
          v98 = *&v360[8] - *v360;
        }

        if (v98 == v102 - v101 && !memcmp(v97, v101, v98))
        {
          v103 = *(v93 - 215);
          v104 = *(v93 - 214) - v103;
          if (!v104)
          {
            goto LABEL_127;
          }

          v105 = 0;
          v106 = 0x6DB6DB6DB6DB6DB7 * (v104 >> 3);
          v107 = v106 <= 1 ? 1 : v106;
          v108 = *(v93 - 215);
          while (1)
          {
            v109 = *v108;
            v108 += 28;
            if (v109 == v47)
            {
              break;
            }

            if (v107 == ++v105)
            {
              goto LABEL_127;
            }
          }

          if (v105 == 0xFFFFLL)
          {
LABEL_127:
            *&v374[2] = 0xAAAAAAAAAAAAAAAALL;
            *&v374[3] = 0xAAAAAAAAAAAAAAAALL;
            v374[0] = 0xAAAAAAAAAAAAAAAALL;
            v374[1] = 0uLL;
            *(&v374[2] + 1) = &v374[2];
            LOWORD(v374[0]) = v47;
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v374 + 1, v97, v96, v98 >> 1);
            LOWORD(v374[3]) = *(v346 + 20);
            WORD1(v374[3]) = -1;
            v110 = v374 + 8;
            goto LABEL_128;
          }

          if (v106 <= v105)
          {
            goto LABEL_398;
          }

          v111 = v103 + 56 * v105;
          if (*(v111 + 8) == *(v111 + 16))
          {
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>((v111 + 8), v97, v96, v98 >> 1);
            *(v111 + 48) = *(v346 + 20);
            if (0x6FB586FB586FB587 * ((v367 - __p) >> 5) <= *(v111 + 50))
            {
              goto LABEL_398;
            }

            v112 = __p + 1760 * *(v111 + 50);
            *&v374[2] = 0xAAAAAAAAAAAAAAAALL;
            *&v113 = 0xAAAAAAAAAAAAAAAALL;
            *(&v113 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v374[1] = v113;
            v374[0] = v113;
            TInlineVector<unsigned short,3ul>::TInlineVector(v374, *v360, *&v360[8]);
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::push_back[abi:fn200100](v374, v111);
            DoSubgroupSubstitutions(&__p, v112, v374, *(v111 + 48));
            v110 = v374;
LABEL_128:
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v110);
          }
        }

        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v371);
      }

      v93 -= 1760;
      if (!--v94)
      {
        v21 = v352;
        goto LABEL_136;
      }

      continue;
    }
  }

  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v360);
  v21 = v352;
  v133 = v337;
  if (!v328)
  {
LABEL_410:
    v309 = v133;
    goto LABEL_411;
  }

LABEL_172:
  v139 = *(v21 + 24);
  *&v140 = 0xAAAAAAAAAAAAAAAALL;
  *(&v140 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(&v374[4] + 8) = v140;
  *(&v374[3] + 8) = v140;
  *(&v374[2] + 8) = v140;
  *(&v374[1] + 8) = v140;
  memset(v374, 0, 24);
  *(&v374[5] + 1) = &v374[1] + 8;
  if (v139)
  {
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__vallocate[abi:fn200100](v374, v139);
    v141 = *(&v374[0] + 1);
    bzero(*(&v374[0] + 1), 2 * v139);
    *(&v374[0] + 1) = v141 + 2 * v139;
    ActionIndex = GetActionIndex(v21 + 136, 0, 0, -1);
    v143 = 0;
    v144 = vdupq_n_s64(v139 - 1);
    v145 = (*&v374[0] + 8);
    do
    {
      v146 = vdupq_n_s64(v143);
      v147 = vmovn_s64(vcgeq_u64(v144, vorrq_s8(v146, xmmword_18475A340)));
      if (vuzp1_s8(vuzp1_s16(v147, *v144.i8), *v144.i8).u8[0])
      {
        *(v145 - 4) = ActionIndex;
      }

      if (vuzp1_s8(vuzp1_s16(v147, *&v144), *&v144).i8[1])
      {
        *(v145 - 3) = ActionIndex;
      }

      if (vuzp1_s8(vuzp1_s16(*&v144, vmovn_s64(vcgeq_u64(v144, vorrq_s8(v146, xmmword_18475AAF0)))), *&v144).i8[2])
      {
        *(v145 - 2) = ActionIndex;
        *(v145 - 1) = ActionIndex;
      }

      v148 = vmovn_s64(vcgeq_u64(v144, vorrq_s8(v146, xmmword_18475AAE0)));
      if (vuzp1_s8(*&v144, vuzp1_s16(v148, *&v144)).i32[1])
      {
        *v145 = ActionIndex;
      }

      if (vuzp1_s8(*&v144, vuzp1_s16(v148, *&v144)).i8[5])
      {
        v145[1] = ActionIndex;
      }

      if (vuzp1_s8(*&v144, vuzp1_s16(*&v144, vmovn_s64(vcgeq_u64(v144, vorrq_s8(v146, xmmword_18475AAD0))))).i8[6])
      {
        v145[2] = ActionIndex;
        v145[3] = ActionIndex;
      }

      v143 += 8;
      v145 += 8;
    }

    while (((v139 + 7) & 0x1FFFFFFF8) != v143);
  }

  else
  {
    GetActionIndex(v21 + 136, 0, 0, -1);
  }

  v353 = 2 * v139;
  v149 = GetActionIndex(v21 + 136, 0, 0x4000, -1);
  v150 = *v327;
  __b = v327[1];
  v335 = 0xAAAAAAAAAAAAAAABLL * ((__b - *v327) >> 3);
  v338 = *v327;
  if (__b != *v327)
  {
    v151 = 0;
    if (v335 <= 1)
    {
      v152 = 1;
    }

    else
    {
      v152 = 0xAAAAAAAAAAAAAAABLL * ((__b - *v327) >> 3);
    }

    v334 = v139 - 1;
    v348 = vdupq_n_s64(v139 - 1);
    v150 = *v327;
    do
    {
      v153 = *v327;
      if (0xAAAAAAAAAAAAAAABLL * ((v327[1] - *v327) >> 3) <= v151)
      {
        goto LABEL_398;
      }

      if (v151)
      {
        v154 = GetActionIndex(v21 + 136, (v151 + 1), 0, -1);
        v155 = *&v374[0];
        v156 = (*(&v374[0] + 1) - *&v374[0]) >> 1;
        if (v156 <= 2)
        {
          goto LABEL_398;
        }

        *(*&v374[0] + 4) = v154;
        if (*v332 != v332[1])
        {
          if (v156 <= v334)
          {
            goto LABEL_398;
          }

          *(v155 + 2 * v334) = v154;
        }

        v157 = v151;
      }

      else
      {
        v157 = 0;
      }

      v158 = (v153 + 24 * v151);
      v159 = GetActionIndex(v21 + 136, (v157 + 2), 0, -1);
      v160 = *v158;
      v161 = v158[1];
      v25 = *v158 == v161;
      v37 = v371;
      if (!v25)
      {
        v162 = v159;
        do
        {
          v163 = LKTGetValue(v337, *v160);
          if ((v163 & 0x10000) == 0)
          {
            goto LABEL_399;
          }

          if (v163 >= ((*(&v374[0] + 1) - *&v374[0]) >> 1))
          {
            goto LABEL_398;
          }

          *(*&v374[0] + 2 * v163) = v162;
          ++v160;
        }

        while (v160 != v161);
      }

      v164 = 1;
      v21 = v352;
      do
      {
        while (!v139)
        {
          v168 = (v151 == 0) & v164;
          v164 = 0;
          if ((v168 & 1) == 0)
          {
            goto LABEL_230;
          }
        }

        v165 = *&v374[0];
        v166 = (v353 + *&v374[0]);
        do
        {
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](v352 + 40, v165++);
        }

        while (v165 != v166);
        v167 = (v151 == 0) & v164;
        v164 = 0;
        v37 = v371;
      }

      while ((v167 & 1) != 0);
      v169 = 0;
      v170 = (*&v374[0] + 8);
      do
      {
        v171 = vdupq_n_s64(v169);
        v172 = vmovn_s64(vcgeq_u64(v348, vorrq_s8(v171, xmmword_18475A340)));
        if (vuzp1_s8(vuzp1_s16(v172, *v171.i8), *v171.i8).u8[0])
        {
          *(v170 - 4) = v149;
        }

        if (vuzp1_s8(vuzp1_s16(v172, *&v171), *&v171).i8[1])
        {
          *(v170 - 3) = v149;
        }

        if (vuzp1_s8(vuzp1_s16(*&v171, vmovn_s64(vcgeq_u64(v348, vorrq_s8(v171, xmmword_18475AAF0)))), *&v171).i8[2])
        {
          *(v170 - 2) = v149;
          *(v170 - 1) = v149;
        }

        v173 = vmovn_s64(vcgeq_u64(v348, vorrq_s8(v171, xmmword_18475AAE0)));
        if (vuzp1_s8(*&v171, vuzp1_s16(v173, *&v171)).i32[1])
        {
          *v170 = v149;
        }

        if (vuzp1_s8(*&v171, vuzp1_s16(v173, *&v171)).i8[5])
        {
          v170[1] = v149;
        }

        v174 = vmovn_s64(vcgeq_u64(v348, vorrq_s8(v171, xmmword_18475AAD0)));
        if (vuzp1_s8(*&v174, vuzp1_s16(v174, v174)).i8[6])
        {
          v170[2] = v149;
        }

        v175 = vuzp1_s16(v174, v174);
        if (vuzp1_s8(v175, v175).i8[7])
        {
          v170[3] = v149;
        }

        v169 += 8;
        v170 += 8;
      }

      while (((v139 + 7) & 0x1FFFFFFF8) != v169);
LABEL_230:
      ;
    }

    while (++v151 != v152);
  }

  if (v367 != __p)
  {
    v176 = 0;
    v177 = 0;
    v178 = 0x6FB586FB586FB587;
    v349 = v139 - 1;
    if ((0x6FB586FB586FB587 * ((v367 - __p) >> 5)) <= 1)
    {
      v179 = 1;
    }

    else
    {
      v179 = 0x6FB586FB586FB587 * ((v367 - __p) >> 5);
    }

    v180 = v335;
    do
    {
      v181 = __p;
      if (((v367 - __p) >> 5) * v178 <= v177)
      {
        goto LABEL_398;
      }

      if (__b != v150)
      {
        v182 = GetActionIndex(v352 + 136, (v180 + 1), 0, -1);
        v183 = *&v374[0];
        v184 = (*(&v374[0] + 1) - *&v374[0]) >> 1;
        if (v184 <= 2)
        {
          goto LABEL_398;
        }

        *(*&v374[0] + 4) = v182;
        if (*v332 != v332[1])
        {
          if (v184 <= v349)
          {
            goto LABEL_398;
          }

          *(v183 + 2 * v349) = v182;
        }
      }

      v37 = &v181[v176];
      if (*&v181[v176 + 8] - *&v181[v176] == 2 && (v37[219] & 1) == 0)
      {
        v185 = v178;
        v186 = GetActionIndex(v352 + 136, (v180 + 2), 0x8000, -1);
        v187 = *&v181[v176];
        if (v37[1] == v187)
        {
          goto LABEL_398;
        }

        v188 = v186;
        v189 = LKTGetValue(v337, *v187);
        v37 = v371;
        if ((v189 & 0x10000) == 0)
        {
          goto LABEL_399;
        }

        if (v189 >= ((*(&v374[0] + 1) - *&v374[0]) >> 1))
        {
          goto LABEL_398;
        }

        *(*&v374[0] + 2 * v189) = v188;
        v178 = v185;
        v150 = v338;
      }

      ++v177;
      v176 += 1760;
      ++v180;
      v37 = v371;
    }

    while (v179 != v177);
  }

  v190 = 1;
  v191 = v352;
  v192 = v139;
  do
  {
    if (v139)
    {
      v193 = *&v374[0];
      v194 = (v353 + *&v374[0]);
      do
      {
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](v352 + 40, v193++);
      }

      while (v193 != v194);
    }

    v195 = (__b == v150) & v190;
    v190 = 0;
  }

  while ((v195 & 1) != 0);
  if (v367 == __p)
  {
    v37 = v371;
    *v371 = v374;
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v371);
    v205 = v337;
  }

  else
  {
    v196 = 0;
    v197 = 0x6FB586FB586FB587 * ((v367 - __p) >> 5);
    v198 = v139 - 1;
    if (v197 <= 1)
    {
      v197 = 1;
    }

    v345 = v197;
    v199 = (v139 + 7) & 0x1FFFFFFF8;
    v200 = vdupq_n_s64(v198);
    v201 = xmmword_18475AAD0;
    v202 = xmmword_18475AAE0;
    v203 = xmmword_18475AAF0;
    v204 = xmmword_18475A340;
    v37 = v371;
    v205 = v337;
    v340 = v200;
    do
    {
      if (v139)
      {
        v206 = 0;
        v207 = (*&v374[0] + 8);
        do
        {
          v208 = vdupq_n_s64(v206);
          v209 = vmovn_s64(vcgeq_u64(v200, vorrq_s8(v208, v204)));
          if (vuzp1_s8(vuzp1_s16(v209, *v208.i8), *v208.i8).u8[0])
          {
            *(v207 - 4) = v149;
          }

          if (vuzp1_s8(vuzp1_s16(v209, *&v208), *&v208).i8[1])
          {
            *(v207 - 3) = v149;
          }

          if (vuzp1_s8(vuzp1_s16(*&v208, vmovn_s64(vcgeq_u64(v200, vorrq_s8(v208, v203)))), *&v208).i8[2])
          {
            *(v207 - 2) = v149;
            *(v207 - 1) = v149;
          }

          v210 = vmovn_s64(vcgeq_u64(v200, vorrq_s8(v208, v202)));
          if (vuzp1_s8(*&v208, vuzp1_s16(v210, *&v208)).i32[1])
          {
            *v207 = v149;
          }

          if (vuzp1_s8(*&v208, vuzp1_s16(v210, *&v208)).i8[5])
          {
            v207[1] = v149;
          }

          v211 = vmovn_s64(vcgeq_u64(v200, vorrq_s8(v208, v201)));
          if (vuzp1_s8(*&v211, vuzp1_s16(v211, v211)).i8[6])
          {
            v207[2] = v149;
          }

          v212 = vuzp1_s16(v211, v211);
          if (vuzp1_s8(v212, v212).i8[7])
          {
            v207[3] = v149;
          }

          v206 += 8;
          v207 += 8;
        }

        while (v199 != v206);
      }

      v213 = __p;
      if (0x6FB586FB586FB587 * ((v367 - __p) >> 5) <= v196)
      {
        goto LABEL_398;
      }

      v350 = v196;
      v214 = GetActionIndex(v352 + 136, (v196 + v335 + 2), 0, -1);
      v215 = *&v374[0];
      v216 = (*(&v374[0] + 1) - *&v374[0]) >> 1;
      if (v216 <= 2)
      {
        goto LABEL_398;
      }

      *(*&v374[0] + 4) = v214;
      v217 = v350;
      if (*v332 != v332[1])
      {
        if (v216 <= v198)
        {
          goto LABEL_398;
        }

        v215[v198] = v214;
      }

      v218 = &v213[1760 * v350];
      v219 = *(v218 + 5);
      v220 = *(v218 + 6);
      v221 = (v218 + 40);
      v222 = v220 - v219;
      if (v222)
      {
        v223 = 0;
        v224 = 0;
        v225 = 0x6DB6DB6DB6DB6DB7 * (v222 >> 3);
        if (v225 <= 1)
        {
          v226 = 1;
        }

        else
        {
          v226 = v225;
        }

        do
        {
          v227 = *v221;
          if (0x6DB6DB6DB6DB6DB7 * ((v221[1] - *v221) >> 3) <= v224)
          {
            goto LABEL_398;
          }

          v228 = (v227 + v223);
          v229 = *(v227 + v223 + 50);
          v230 = v229 == -1 ? 0 : v335 + 2 + v229;
          ActionLookupIndex = GetActionLookupIndex(&v362, v217, v229, v228 + 1);
          if (0x6DB6DB6DB6DB6DB7 * ((v363 - v362) >> 3) <= ActionLookupIndex)
          {
            goto LABEL_398;
          }

          v232 = v362 + 56 * ActionLookupIndex;
          if (*(v232 + 24) == -1)
          {
            v233 = -1;
          }

          else
          {
            v233 = *(v232 + 25);
          }

          v234 = GetActionIndex(v352 + 136, v230, 0x8000, v233);
          v235 = LKTGetValue(v337, *v228);
          if ((v235 & 0x10000) == 0)
          {
            goto LABEL_399;
          }

          v215 = *&v374[0];
          if (v235 >= ((*(&v374[0] + 1) - *&v374[0]) >> 1))
          {
            goto LABEL_398;
          }

          *(*&v374[0] + 2 * v235) = v234;
          ++v224;
          v223 += 56;
          v217 = v350;
        }

        while (v226 != v224);
        v205 = v337;
        v192 = v139;
        v198 = v139 - 1;
      }

      v199 = (v139 + 7) & 0x1FFFFFFF8;
      if (v139)
      {
        v236 = &v215[v192];
        do
        {
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](v352 + 40, v215++);
        }

        while (v215 != v236);
      }

      v196 = v350 + 1;
      v37 = v371;
      v201 = xmmword_18475AAD0;
      v200 = v340;
      v202 = xmmword_18475AAE0;
      v203 = xmmword_18475AAF0;
      v204 = xmmword_18475A340;
    }

    while (v350 + 1 != v345);
    *v371 = v374;
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v371);
    v191 = v352;
  }

  DisposeLKTHandle(v205);
  if (!LOWORD(v365[211]))
  {
    goto LABEL_400;
  }

  v343 = 0;
  v341 = v363;
  v339 = v362;
  v237 = 0x6DB6DB6DB6DB6DB7 * ((v363 - v362) >> 3);
  v337 = v358;
  if (v237 <= 1)
  {
    v237 = 1;
  }

  v351 = v237;
LABEL_306:
  v357 = 0;
  v358[0] = 0xAAAAAAAAAAAAAAAALL;
  v355 = 0;
  v356 = 0;
  v358[1] = v358;
  *(&v374[8] + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v238 = 0xAAAAAAAAAAAAAAAALL;
  *(&v238 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *(&v374[6] + 8) = v238;
  *(&v374[7] + 8) = v238;
  *(&v374[4] + 8) = v238;
  *(&v374[5] + 8) = v238;
  *(&v374[2] + 8) = v238;
  *(&v374[3] + 8) = v238;
  *(&v374[1] + 8) = v238;
  memset(v374, 0, 24);
  *&v374[9] = &v374[1] + 8;
  if (v341 == v339)
  {
    goto LABEL_398;
  }

  v239 = 0;
  while (1)
  {
    if (0x6DB6DB6DB6DB6DB7 * ((v363 - v362) >> 3) <= v239)
    {
      goto LABEL_398;
    }

    v240 = (v362 + 56 * v239);
    if (v343 == v240[24])
    {
      break;
    }

LABEL_369:
    if (++v239 == v351)
    {
      if (*(&v374[0] + 1) == *&v374[0])
      {
        goto LABEL_398;
      }

      v288 = 0;
      v289 = (*(&v374[0] + 1) - *&v374[0]) >> 2;
      v290 = (*(v352 + 512) - *(v352 + 504)) >> 1;
      v291 = **&v374[0];
      v292 = v355;
      v293 = (v356 - v355) >> 1;
      v294 = v289 - 1;
      if (v289 <= 1)
      {
        v295 = 1;
      }

      else
      {
        v295 = (*(&v374[0] + 1) - *&v374[0]) >> 2;
      }

      v354 = (*(v352 + 608) - *(v352 + 600)) >> 1;
      do
      {
        if (!v288)
        {
          *v371 = (v290 - v291) & 0x3FFFFFFF;
          std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::push_back[abi:fn200100]((v352 + 352), v371);
          if (v294 < (*(&v374[0] + 1) - *&v374[0]) >> 2)
          {
            v300 = *(v352 + 504);
            v299 = *(v352 + 512);
            v301 = *(*&v374[0] + 4 * v294);
            if (v301 - v291 >= 0)
            {
              v302 = 2 - v291 + v301;
              do
              {
                *v360 = 0;
                std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](v352 + 504, v360);
                --v302;
              }

              while (v302 > 1);
            }

            v303 = 0;
            v304 = 0;
            v305 = ((v299 - v300) >> 1) - v291;
            v37 = v371;
            while (1)
            {
              v306 = *&v374[0];
              if (v304 >= (*(&v374[0] + 1) - *&v374[0]) >> 2)
              {
                break;
              }

              v307 = v305 + *(*&v374[0] + v303);
              v308 = *(v352 + 504);
              if (v307 >= (*(v352 + 512) - v308) >> 1)
              {
                break;
              }

              *(v308 + 2 * v307) = v304;
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](v352 + 600, (v306 + v303 + 2));
              ++v304;
              v303 += 4;
              if (v295 == v304)
              {
                goto LABEL_391;
              }
            }
          }

          goto LABEL_398;
        }

        v290 = (*(v352 + 512) - *(v352 + 504)) >> 1;
        v296 = *(v292 + 2 * (v293 - v288));
        if (v293 == v288)
        {
          v297 = v354;
        }

        else
        {
          v297 = 0;
        }

        if (v293 == v288)
        {
          v298 = (v290 - v296) & 0x3FFFFFFF | 0x80000000;
        }

        else
        {
          v298 = (v290 - v296) & 0x3FFFFFFF;
        }

        *v371 = v298;
        std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::push_back[abi:fn200100]((v352 + 352), v371);
        *v360 = v297;
        v37 = v371;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](v352 + 504, v360);
LABEL_391:
        ++v288;
        v292 = v355;
        v293 = (v356 - v355) >> 1;
      }

      while (v288 <= v293);
      if (*&v374[0])
      {
        *(&v374[0] + 1) = *&v374[0];
        if (&v374[1] + 8 > *&v374[0] || &v374[9] <= *&v374[0])
        {
          operator delete(*&v374[0]);
        }
      }

      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v355);
      ++v343;
      v191 = v352;
      if (v343 >= SLOWORD(v365[211]))
      {
LABEL_400:
        CFDataGetMutableBytePtr(atomic_load_explicit((v191 + 16), memory_order_acquire));
        v310 = atomic_load_explicit((v191 + 32), memory_order_acquire);
        if (v310)
        {
          BytePtr = CFDataGetBytePtr(v310);
        }

        else
        {
          BytePtr = 0;
        }

        v312 = atomic_load_explicit((v191 + 32), memory_order_acquire);
        v313 = v312;
        if (v313)
        {
          v314 = v313;
          v315 = CFDataGetBytePtr(v313);

          if (v315)
          {
            v316 = &v315[CFDataGetLength(v312)];
          }

          else
          {
            v316 = 0;
          }
        }

        else
        {

          v316 = 0;
        }

        *&v374[0] = TAATLookupTable::BadTable;
        *(&v374[0] + 1) = 0;
        *(&v374[2] + 1) = 0;
        LOWORD(v374[3]) = -1;
        TAATLookupTable::SetTable(v374, BytePtr, v316);
        operator new();
      }

      goto LABEL_306;
    }
  }

  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(&v355, *(v240 + 1), *(v240 + 2), (*(v240 + 2) - *(v240 + 1)) >> 1);
  if (0x6FB586FB586FB587 * ((v367 - __p) >> 5) > *v240)
  {
    v241 = __p + 1760 * *v240;
    v243 = *(v241 + 5);
    v242 = *(v241 + 6);
    while (1)
    {
      if (v243 == v242)
      {
        goto LABEL_369;
      }

      if (v243[25] == v240[1])
      {
        v244 = *(v243 + 1);
        v245 = *(v240 + 1);
        v246 = *(v243 + 2) - v244;
        if (v246 == *(v240 + 2) - v245 && !memcmp(v244, v245, v246))
        {
          v247 = *v243;
          LOWORD(v359) = *v243;
          HIWORD(v359) = v243[24];
          v248 = *(&v374[0] + 1);
          if (*(&v374[0] + 1) == *&v374[0])
          {
            v261 = *&v374[0];
            v256 = *&v374[0];
          }

          else
          {
            v249 = (*(&v374[0] + 1) - *&v374[0]) >> 2;
            v250 = *&v374[0];
            v251 = v249;
            do
            {
              v252 = v251 >> 1;
              v253 = &v250[2 * (v251 >> 1)];
              v255 = *v253;
              v254 = v253 + 2;
              v251 += ~(v251 >> 1);
              if (v255 < v247)
              {
                v250 = v254;
              }

              else
              {
                v251 = v252;
              }
            }

            while (v251);
            if (v250 != *(&v374[0] + 1) && v247 >= *v250)
            {
              goto LABEL_316;
            }

            v256 = *&v374[0];
            do
            {
              v257 = v249 >> 1;
              v258 = &v256[2 * (v249 >> 1)];
              v260 = *v258;
              v259 = v258 + 2;
              v249 += ~(v249 >> 1);
              if (v260 < v247)
              {
                v256 = v259;
              }

              else
              {
                v249 = v257;
              }
            }

            while (v249);
            v261 = *(&v374[0] + 1);
          }

          if (*(&v374[0] + 1) >= *&v374[1])
          {
            v263 = ((v261 - *&v374[0]) >> 2) + 1;
            v361 = 0xAAAAAAAAAAAAAAAALL;
            *&v264 = 0xAAAAAAAAAAAAAAAALL;
            *(&v264 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *v360 = v264;
            *&v360[16] = v264;
            if (v263 >> 62)
            {
              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            v265 = *&v374[1] - *&v374[0];
            if ((*&v374[1] - *&v374[0]) >> 1 > v263)
            {
              v263 = v265 >> 1;
            }

            if (v265 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v266 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v266 = v263;
            }

            std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::__split_buffer(v360, v266, (v256 - *&v374[0]) >> 2, &v374[1] + 8);
            v267 = *&v360[16];
            if (*&v360[16] == *&v360[24])
            {
              v268 = *&v360[8];
              if (*&v360[8] <= *v360)
              {
                if (*&v360[16] == *v360)
                {
                  v275 = 1;
                }

                else
                {
                  v275 = (*&v360[16] - *v360) >> 1;
                }

                v372[0] = 0xAAAAAAAAAAAAAAAALL;
                *&v276 = 0xAAAAAAAAAAAAAAAALL;
                *(&v276 + 1) = 0xAAAAAAAAAAAAAAAALL;
                *&v371[16] = v276;
                *v371 = v276;
                std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::__split_buffer(v371, v275, v275 >> 2, v361);
                v277 = *&v360[8];
                v278 = *&v360[8];
                v279 = *&v371[16];
                v280 = *&v360[16] - *&v360[8];
                if (*&v360[16] == *&v360[8])
                {
                  v281 = *&v371[16];
                }

                else
                {
                  v281 = *&v371[16] + v280;
                  do
                  {
                    v282 = *v278++;
                    *v279++ = v282;
                    v280 -= 4;
                  }

                  while (v280);
                  v277 = *&v360[8];
                }

                v283 = *v371;
                v284 = *&v360[24];
                *v371 = *v360;
                *v360 = v283;
                *&v371[8] = v277;
                *&v360[16] = v281;
                *&v360[24] = *&v371[24];
                *&v371[24] = v284;
                std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::~__split_buffer(v371);
                v267 = *&v360[16];
              }

              else
              {
                v270 = ((*&v360[8] - *v360) >> 2) + 1;
                v269 = v270 + (v270 >> 63);
                v271 = *&v360[8] - 4 * (v270 / 2);
                v272 = *&v360[16] - *&v360[8];
                if (*&v360[16] != *&v360[8])
                {
                  memmove((*&v360[8] - 4 * (v270 / 2)), *&v360[8], *&v360[16] - *&v360[8]);
                  v269 = v270 + (v270 >> 63);
                  v268 = *&v360[8];
                }

                v267 = (v271 + v272);
                *&v360[8] = v268 - 4 * (v269 >> 1);
                *&v360[16] = v271 + v272;
              }
            }

            *v267 = v359;
            *&v360[16] += 4;
            memcpy(*&v360[16], v256, *(&v374[0] + 1) - v256);
            *&v360[16] += *(&v374[0] + 1) - v256;
            *(&v374[0] + 1) = v256;
            v285 = (*&v360[8] - (v256 - *&v374[0]));
            memcpy(v285, *&v374[0], v256 - *&v374[0]);
            v286 = *&v374[0];
            *&v374[0] = v285;
            v287 = *&v374[1];
            *(v374 + 8) = *&v360[16];
            *&v360[16] = v286;
            *&v360[24] = v287;
            *v360 = v286;
            *&v360[8] = v286;
            std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::~__split_buffer(v360);
          }

          else if (v256 == *(&v374[0] + 1))
          {
            **(&v374[0] + 1) = v359;
            *(&v374[0] + 1) = v248 + 2;
          }

          else
          {
            if ((v261 - 4) >= *(&v374[0] + 1))
            {
              v262 = *(&v374[0] + 1);
            }

            else
            {
              **(&v374[0] + 1) = *(v261 - 4);
              v262 = v248 + 2;
            }

            *(&v374[0] + 1) = v262;
            if (v248 != v256 + 2)
            {
              memmove(v248 - (v261 - (v256 + 2)), v256, v261 - (v256 + 2));
              v262 = *(&v374[0] + 1);
            }

            if (v262 < v256)
            {
              break;
            }

            v273 = v262 <= &v359 || v256 > &v359;
            v274 = 4;
            if (v273)
            {
              v274 = 0;
            }

            *v256 = *&v360[v274 - 4];
          }
        }
      }

LABEL_316:
      v243 += 28;
    }
  }

LABEL_398:
  __break(1u);
LABEL_399:
  *v37 = v374;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v371);
  v309 = v337;
LABEL_411:
  DisposeLKTHandle(v309);
  v317 = v362;
  if (v362)
  {
    v318 = v363;
    v319 = v362;
    if (v363 != v362)
    {
      do
      {
        v320 = v318 - 56;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100]((v318 - 48));
        v318 = v320;
      }

      while (v320 != v317);
      v319 = v362;
    }

    v363 = v317;
    if (v365 > v319 || &v365[210] <= v319)
    {
      operator delete(v319);
    }
  }

  v322 = __p;
  if (__p)
  {
    v323 = v367;
    v324 = __p;
    if (v367 != __p)
    {
      do
      {
        v323 -= 1760;
      }

      while (v323 != v322);
      v324 = __p;
    }

    v367 = v322;
    if (v369 > v324 || &v370 <= v324)
    {
      operator delete(v324);
    }
  }

  return 0;
}

void anonymous namespace::MorxLigatureSubtableBuilder::CreateSubtableData(_anonymous_namespace_::MorxLigatureSubtableBuilder *this, uint64_t a2)
{
  v3 = vaddq_s64(*(a2 + 352), *(a2 + 504));
  v4 = vsubq_s64(vdupq_laneq_s64(v3, 1), v3).u64[0] + *(a2 + 608) - *(a2 + 600);
  if (v4 >= 0xFFFFFFFF)
  {
    *this = 0;
  }

  else
  {
    v44 = 0xAAAAAAAAAAAAAAAALL;
    Length = CFDataGetLength(atomic_load_explicit((a2 + 32), memory_order_acquire));
    v7 = Length + 28;
    v43 = this;
    if ((Length + 28) >= 0xFFFFFFFF || (v8 = *(a2 + 48) - *(a2 + 40), v9 = v8 + v7, (v8 + v7) >= 0xFFFFFFFF) || (v10 = v4 + Length + v8 + *(a2 + 144) - *(a2 + 136) + 28, v10 >= 0xFFFFFFFF))
    {
      v44 = 0;
    }

    else
    {
      v44 = 0xAAAAAAAAAAAAAAAALL;
      explicit = atomic_load_explicit(&v44, memory_order_acquire);
      *bytes = bswap32(*(a2 + 24));
      CFDataAppendBytes(explicit, bytes, 4);
      v12 = atomic_load_explicit(&v44, memory_order_acquire);
      *bytes = 469762048;
      CFDataAppendBytes(v12, bytes, 4);
      v13 = atomic_load_explicit(&v44, memory_order_acquire);
      *bytes = bswap32(v7);
      CFDataAppendBytes(v13, bytes, 4);
      v14 = atomic_load_explicit(&v44, memory_order_acquire);
      *bytes = bswap32(v9);
      CFDataAppendBytes(v14, bytes, 4);
    }

    v15 = atomic_load_explicit(&v44, memory_order_acquire);
    v16 = CFDataGetLength(v15);
    CFDataIncreaseLength(v15, 4);
    v17 = atomic_load_explicit(&v44, memory_order_acquire);
    v18 = CFDataGetLength(v17);
    CFDataIncreaseLength(v17, 4);
    v19 = atomic_load_explicit(&v44, memory_order_acquire);
    v20 = CFDataGetLength(v19);
    CFDataIncreaseLength(v19, 4);
    v21 = atomic_load_explicit(&v44, memory_order_acquire);
    v23 = *(a2 + 40);
    v24 = *(a2 + 48);
    while (v23 != v24)
    {
      v25 = *v23++;
      *bytes = bswap32(v25) >> 16;
      CFDataAppendBytes(v21, bytes, 2);
    }

    v27 = *(a2 + 136);
    v26 = *(a2 + 144);
    while (v27 != v26)
    {
      *bytes = bswap32(*v27) >> 16;
      CFDataAppendBytes(v21, bytes, 2);
      *bytes = bswap32(v27[1]) >> 16;
      CFDataAppendBytes(v21, bytes, 2);
      *bytes = bswap32(v27[2]) >> 16;
      CFDataAppendBytes(v21, bytes, 2);
      v27 += 3;
    }

    v28 = bswap32(CFDataGetLength(atomic_load_explicit(&v44, memory_order_acquire)) - 12);
    *&CFDataGetMutableBytePtr(v15)[v16] = v28;
    v29 = *(a2 + 352);
    v30 = *(a2 + 360);
    while (v29 != v30)
    {
      v31 = atomic_load_explicit(&v44, memory_order_acquire);
      v32 = *v29++;
      *bytes = bswap32(v32);
      CFDataAppendBytes(v31, bytes, 4);
    }

    v33 = bswap32(CFDataGetLength(atomic_load_explicit(&v44, memory_order_acquire)) - 12);
    *&CFDataGetMutableBytePtr(v17)[v18] = v33;
    v34 = *(a2 + 504);
    v35 = *(a2 + 512);
    while (v34 != v35)
    {
      v36 = atomic_load_explicit(&v44, memory_order_acquire);
      v37 = *v34++;
      *bytes = bswap32(v37) >> 16;
      CFDataAppendBytes(v36, bytes, 2);
    }

    v38 = bswap32(CFDataGetLength(atomic_load_explicit(&v44, memory_order_acquire)) - 12);
    *&CFDataGetMutableBytePtr(v19)[v20] = v38;
    v39 = *(a2 + 600);
    v40 = *(a2 + 608);
    while (v39 != v40)
    {
      v41 = atomic_load_explicit(&v44, memory_order_acquire);
      v42 = *v39++;
      *bytes = bswap32(v42) >> 16;
      CFDataAppendBytes(v41, bytes, 2);
    }

    *v43 = atomic_exchange(&v44, 0);
  }
}

void anonymous namespace::MorxLigatureSubtableBuilder::~MorxLigatureSubtableBuilder(id *this)
{
  *this = &unk_1EF25B478;
  v2 = this + 4;
  v3 = this + 75;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v3);
  v3 = this + 63;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v3);
  v3 = this + 44;
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v3);
  *this = &unk_1EF25B4A0;
  std::vector<STXEntryOne,TInlineBufferAllocator<STXEntryOne,30ul>>::__destroy_vector::operator()[abi:fn200100]((this + 17));
  v3 = this + 5;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v3);
}

{
  *this = &unk_1EF25B478;
  v2 = this + 4;
  v3 = this + 75;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v3);
  v3 = this + 63;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v3);
  v3 = this + 44;
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v3);
  *this = &unk_1EF25B4A0;
  std::vector<STXEntryOne,TInlineBufferAllocator<STXEntryOne,30ul>>::__destroy_vector::operator()[abi:fn200100]((this + 17));
  v3 = this + 5;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v3);

  MEMORY[0x1865F22D0](this, 0x10F1C40AC1E5FC9);
}

uint64_t *AddPrevLigaturesFromLigInputs(uint64_t *result, uint64_t a2, uint64_t a3)
{
  v3 = a3 - a2;
  if (a3 - a2 >= 1)
  {
    v4 = a2;
    v5 = result;
    v7 = result[1];
    v6 = result[2];
    if (v6 - v7 >= v3)
    {
      if (a2 == a3)
      {
        v18 = result[1];
      }

      else
      {
        v18 = result[1];
        do
        {
          result = TInlineVector<unsigned short,3ul>::TInlineVector(v7, *v4, *(v4 + 8));
          *(v7 + 40) = *(v4 + 40);
          v4 += 48;
          v7 += 48;
          v18 += 48;
        }

        while (v4 != a3);
      }

      v5[1] = v18;
    }

    else
    {
      v8 = 0xAAAAAAAAAAAAAAABLL * ((v7 - *result) >> 4);
      v9 = v8 - 0x5555555555555555 * (v3 >> 4);
      if (v9 > 0x555555555555555)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v10 = 0xAAAAAAAAAAAAAAABLL * ((v6 - *result) >> 4);
      v11 = 2 * v10;
      if (2 * v10 <= v9)
      {
        v11 = v8 - 0x5555555555555555 * (v3 >> 4);
      }

      if (v10 >= 0x2AAAAAAAAAAAAAALL)
      {
        v12 = 0x555555555555555;
      }

      else
      {
        v12 = v11;
      }

      v13 = (result + 3);
      v29[4] = v5 + 3;
      if (v12)
      {
        v16 = v15;
      }

      else
      {
        v14 = 0;
        v16 = 0;
      }

      v19 = (v14 + 48 * v8);
      v20 = v19 + v3;
      v21 = v19;
      do
      {
        v22 = TInlineVector<unsigned short,3ul>::TInlineVector(v21, *v4, *(v4 + 8));
        *(v22 + 20) = *(v4 + 40);
        v21 = v22 + 6;
        v4 += 48;
        v3 -= 48;
      }

      while (v3);
      v23 = v14 + 48 * v16;
      v24 = *v5;
      v25 = v20 + v5[1] - v7;
      v5[1] = v7;
      v26 = v19 + v24 - v7;
      v27 = *v5;
      *v5 = v26;
      v5[1] = v25;
      v28 = v5[2];
      v5[2] = v23;
      v29[2] = v27;
      v29[3] = v28;
      v29[0] = v27;
      v29[1] = v27;
    }
  }

  return result;
}

void *TInlineVector<anonymous namespace::LigInput,30ul>::~TInlineVector(void *a1)
{
  v2 = *a1;
  if (*a1)
  {
    v3 = a1[1];
    v4 = *a1;
    if (v3 != v2)
    {
      do
      {
        v3 -= 48;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v3);
      }

      while (v3 != v2);
      v4 = *a1;
    }

    a1[1] = v2;
    v5 = a1 + 183;
    if (a1 + 3 <= v4 && v5 > v4)
    {
      if (a1[2] == *v5)
      {
        *v5 = v4;
      }
    }

    else
    {
      operator delete(v4);
    }
  }

  return a1;
}

void anonymous namespace::SubstFormat3::~SubstFormat3(_anonymous_namespace_::SubstFormat3 *this)
{
  v2 = (this + 272);
  std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
  v2 = (this + 144);
  std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
  v2 = (this + 16);
  std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](&v2);
}

uint64_t anonymous namespace::ParseSubstFormat3(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t *a4, double a5, int8x16_t a6)
{
  v9 = 0;
  v52[3] = *MEMORY[0x1E69E9840];
  *a4 = a1;
  a4[1] = a2;
  v10 = (a1 + 2);
  v52[0] = a4 + 2;
  v52[1] = a4 + 18;
  v43 = (a4 + 18);
  v52[2] = a4 + 34;
  while (1)
  {
    result = 0;
    if (v10 < a1)
    {
      return result;
    }

    v12 = v10 + 1;
    if ((v10 + 1) > a4[1])
    {
      return result;
    }

    if (*v10)
    {
      v13 = 0;
      v14 = v52[v9];
      v15 = __rev16(*v10);
      if (v15 <= 1)
      {
        v15 = 1;
      }

      v46 = v15;
      v44 = (v14 + 120);
      v45 = v14 + 24;
      while (1)
      {
        v16 = v10 + 2;
        v10 = v12;
        __p[0] = 0;
        __p[1] = 0;
        v50 = 0;
        v18 = *a4;
        v17 = a4[1];
        if (*a4 > v10 || v16 > v17)
        {
          break;
        }

        v48 = 0xAAAAAAAAAAAAAAAALL;
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v47[1] = v20;
        v47[2] = v20;
        v47[0] = v20;
        OTL::Coverage::Coverage(v47, (v18 + (bswap32(*v10) >> 16)), v17, 0, -3.72066208e-103, a6);
        v51[0] = &unk_1EF25B510;
        v51[1] = a3;
        v51[2] = __p;
        v51[3] = v51;
        OTL::Coverage::Iterate(v47, v51);
        std::__function::__value_func<BOOL ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100](v51);
        v21 = __p[0];
        v22 = __p[0];
        if (__p[0] == __p[1])
        {
LABEL_20:
          if (v22 != __p[1])
          {
            goto LABEL_50;
          }
        }

        else
        {
          v23 = (__p[0] + 2);
          v24 = (__p[0] + 2);
          while (v24 != __p[1])
          {
            v25 = *v24;
            v26 = *(v24++ - 1);
            if (v25 < v26)
            {
              goto LABEL_50;
            }
          }

          while (v23 != __p[1])
          {
            v27 = *(v23 - 1);
            v28 = *v23++;
            if (v27 == v28)
            {
              v22 = v23 - 2;
              goto LABEL_20;
            }
          }
        }

        if (__p[0] != __p[1])
        {
          v29 = *(v14 + 8);
          v30 = *(v14 + 16);
          if (v29 >= v30)
          {
            v32 = 0xAAAAAAAAAAAAAAABLL * ((v29 - *v14) >> 3);
            v33 = v32 + 1;
            if (v32 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            v34 = 0xAAAAAAAAAAAAAAABLL * ((v30 - *v14) >> 3);
            if (2 * v34 > v33)
            {
              v33 = 2 * v34;
            }

            if (v34 >= 0x555555555555555)
            {
              v35 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v35 = v33;
            }

            if (v35)
            {
              v36 = std::allocator_traits<TInlineBufferAllocator<std::vector<unsigned short>,4ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::vector<unsigned short>,4ul>>(v45, v35);
            }

            else
            {
              v36 = 0;
            }

            v37 = (v36 + 24 * v32);
            v38 = v36 + 24 * v35;
            *v37 = 0;
            v37[1] = 0;
            v37[2] = 0;
            *v37 = *__p;
            v37[2] = v50;
            __p[1] = 0;
            v50 = 0;
            __p[0] = 0;
            v31 = v37 + 3;
            v39 = *(v14 + 8) - *v14;
            v40 = v37 - v39;
            memcpy(v37 - v39, *v14, v39);
            v41 = *v14;
            *v14 = v40;
            *(v14 + 8) = v31;
            v42 = *(v14 + 16);
            *(v14 + 16) = v38;
            if (v41)
            {
              if (v45 > v41 || v44 <= v41)
              {
                operator delete(v41);
              }

              else if (v42 == *v44)
              {
                *v44 = v41;
              }
            }

            v21 = __p[0];
          }

          else
          {
            v21 = 0;
            *v29 = 0;
            v29[1] = 0;
            v29[2] = 0;
            *v29 = *__p;
            v29[2] = v50;
            __p[0] = 0;
            __p[1] = 0;
            v50 = 0;
            v31 = v29 + 3;
          }

          *(v14 + 8) = v31;
        }

        if (v21)
        {
          __p[1] = v21;
          operator delete(v21);
        }

        ++v13;
        v12 = v10 + 1;
        if (v13 == v46)
        {
          goto LABEL_44;
        }
      }

      std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::clear[abi:fn200100](v43);
      v21 = __p[0];
LABEL_50:
      if (v21)
      {
        __p[1] = v21;
        operator delete(v21);
      }

      return 0;
    }

LABEL_44:
    ++v9;
    v10 = v12;
    if (v9 == 3)
    {
      if (a4[18] != a4[19])
      {
        if (v12 >= a1 && (v12 + 1) <= a4[1])
        {
          *(a4 + 100) = bswap32(*v12) >> 16;
          a4[51] = (v12 + 1);
          return 1;
        }

        std::vector<std::vector<unsigned short>,TInlineBufferAllocator<std::vector<unsigned short>,30ul>>::clear[abi:fn200100](v43);
      }

      return 0;
    }
  }
}

void CreateSingleSubstitutionLookupTable(atomic_ullong *a1, int64_t a2, int a3, unsigned __int16 *a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v15 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<BOOL ()(unsigned short)>::__value_func[abi:fn200100](v14, a7);
  SingleSubstitutionLKTHandle = CreateSingleSubstitutionLKTHandle(a2, a3, a4, a5, a6, v14);
  std::__function::__value_func<BOOL ()(unsigned short)>::~__value_func[abi:fn200100](v14);
  if (SingleSubstitutionLKTHandle)
  {
    *a1 = 0xAAAAAAAAAAAAAAAALL;
    LKTCreateLookupTable(SingleSubstitutionLKTHandle, a1);
    DisposeLKTHandle(SingleSubstitutionLKTHandle);
  }

  else
  {
    *a1 = 0;
  }
}

uint64_t anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_6::~$_6(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (v2)
  {
    *(a1 + 80) = v2;
    operator delete(v2);
  }

  v3 = *a1;
  if (*a1)
  {
    *(a1 + 8) = v3;
    operator delete(v3);
  }

  return a1;
}

void anonymous namespace::MorxContextualSubtableBuilder::CreateSubtableData(_anonymous_namespace_::MorxContextualSubtableBuilder *this, atomic_ullong *a2)
{
  v2 = a2;
  v10 = 0xAAAAAAAAAAAAAAAALL;
  v4 = a2 + 51;
  Length = CFDataGetLength(atomic_load_explicit(a2 + 51, memory_order_acquire));
  explicit = atomic_load_explicit(&v10, memory_order_acquire);
  v7 = CFDataGetLength(explicit);
  CFDataIncreaseLength(explicit, 4);
  LODWORD(v2) = bswap32(CFDataGetLength(atomic_load_explicit(&v10, memory_order_acquire)) - 12);
  *&CFDataGetMutableBytePtr(explicit)[v7] = v2;
  *this = atomic_exchange(&v10, 0);
}

void anonymous namespace::MorxContextualSubtableBuilder::~MorxContextualSubtableBuilder(id *this)
{
  *this = &unk_1EF25B678;
}

{
  *this = &unk_1EF25B678;

  JUMPOUT(0x1865F22D0);
}

void *anonymous namespace::MorxChainBuilder::AddNoEffectExclusiveFeatures<std::__wrap_iter<unsigned short *>>(void *result, unsigned __int16 *a2, unsigned __int16 *a3)
{
  if (a2 != a3)
  {
    v12 = v3;
    v13 = v4;
    v6 = a2;
    v7 = result;
    do
    {
      v9 = v7[1];
      v8 = v7[2];
      if (v9 != v8)
      {
        while (*v9 != *v6)
        {
          v9 += 6;
          if (v9 == v8)
          {
            v9 = v7[2];
            break;
          }
        }
      }

      LOWORD(v10) = *v9;
      WORD1(v10) = DefaultSettingForAATFeatureType(v10);
      HIDWORD(v10) = 0;
      v11 = *(v9 + 2) ^ *(v9 + 1);
      result = std::vector<MortFeatureEntry,TInlineBufferAllocator<MortFeatureEntry,30ul>>::emplace<MortFeatureEntry>(v7 + 1, v9, &v10);
      ++v6;
    }

    while (v6 != a3);
  }

  return result;
}

void std::vector<anonymous namespace::MorxChainBuilder,TInlineBufferAllocator<anonymous namespace::MorxChainBuilder,30ul>>::push_back[abi:fn200100](void *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  if (v4 >= v3)
  {
    v6 = 0xCBEEA4E1A08AD8F3 * ((v4 - *a1) >> 4);
    if (v6 + 1 > 0x456C797DD49C34)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v7 = 0xCBEEA4E1A08AD8F3 * ((v3 - *a1) >> 4);
    v8 = 2 * v7;
    if (2 * v7 <= v6 + 1)
    {
      v8 = v6 + 1;
    }

    if (v7 >= 0x22B63CBEEA4E1ALL)
    {
      v9 = 0x456C797DD49C34;
    }

    else
    {
      v9 = v8;
    }

    if (v9)
    {
      v10 = a1[3543];
      v11 = v10 + 944 * v9;
      if (v11 > (a1 + 3543))
      {
        if (v9 <= 0x456C797DD49C34)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      a1[3543] = v11;
    }

    else
    {
      v10 = 0;
    }

    v12 = v10 + 944 * v6;
    v13 = *a1;
    v14 = a1[1];
    v15 = (v12 - (v14 - *a1));
    v16 = v10 + 944 * v9;
    v5 = v12 + 944;
    if (v14 != *a1)
    {
      v17 = (944 * v6 - 16 * ((v14 - *a1) >> 4) + v10 + 8);
      v18 = *a1;
      v19 = v15;
      do
      {
        *(v17 - 2) = *v18;
        std::vector<MortFeatureEntry,TInlineBufferAllocator<MortFeatureEntry,30ul>>::vector[abi:fn200100]<std::__wrap_iter<MortFeatureEntry const*>,0>(v17, v18[1], v18[2]);
        v20 = v18[50];
        v21 = v18[51];
        v19[52] = 0;
        *(v19 + 25) = 0u;
        v19[83] = v19 + 53;
        std::vector<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul>>::__init_with_size[abi:fn200100]<std::__wrap_iter<TCFRef<__CFData *> const*>,std::__wrap_iter<TCFRef<__CFData *> const*>>(v19 + 50, v20, v21, v21 - v20);
        v22 = v18[84];
        v23 = v18[85];
        v19[86] = 0;
        *(v19 + 42) = 0u;
        v19[117] = v19 + 87;
        std::vector<TCFRef<__CFData const*>,TInlineBufferAllocator<TCFRef<__CFData const*>,30ul>>::__init_with_size[abi:fn200100]<std::__wrap_iter<TCFRef<__CFData const*> const*>,std::__wrap_iter<TCFRef<__CFData const*> const*>>(v19 + 84, v22, v23, v23 - v22);
        v18 += 118;
        v19 += 118;
        v17 += 118;
      }

      while (v18 != v14);
      do
      {
        v13 += 118;
      }

      while (v13 != v14);
      v13 = *a1;
    }

    *a1 = v15;
    a1[1] = v5;
    v24 = a1[2];
    a1[2] = v16;
    if (v13)
    {
      v25 = (a1 + 3543);
      if (a1 + 3 <= v13 && v25 > v13)
      {
        if (v24 == *v25)
        {
          *v25 = v13;
        }
      }

      else
      {
        operator delete(v13);
      }
    }
  }

  else
  {
    v5 = v4 + 944;
  }

  a1[1] = v5;
}

uint64_t *std::__tree<unsigned int>::__remove_node_pointer(uint64_t **a1, uint64_t *a2)
{
  v2 = a2[1];
  if (v2)
  {
    do
    {
      v3 = v2;
      v2 = *v2;
    }

    while (v2);
  }

  else
  {
    v4 = a2;
    do
    {
      v3 = v4[2];
      v5 = *v3 == v4;
      v4 = v3;
    }

    while (!v5);
  }

  if (*a1 == a2)
  {
    *a1 = v3;
  }

  v6 = a1[1];
  a1[2] = (a1[2] - 1);
  return std::__tree_remove[abi:fn200100]<std::__tree_node_base<void *> *>(v6, a2);
}

uint64_t *std::__tree_remove[abi:fn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  v2 = *a2;
  v3 = a2;
  if (*a2)
  {
    v4 = a2[1];
    if (!v4)
    {
      v3 = a2;
      goto LABEL_7;
    }

    do
    {
      v3 = v4;
      v4 = *v4;
    }

    while (v4);
  }

  v2 = v3[1];
  if (v2)
  {
LABEL_7:
    v6 = 0;
    v5 = v3[2];
    *(v2 + 16) = v5;
    goto LABEL_8;
  }

  v5 = v3[2];
  v6 = 1;
LABEL_8:
  v7 = *v5;
  if (*v5 == v3)
  {
    *v5 = v2;
    if (v3 == result)
    {
      v7 = 0;
      result = v2;
    }

    else
    {
      v7 = v5[1];
    }
  }

  else
  {
    v5[1] = v2;
  }

  v8 = *(v3 + 24);
  if (v3 != a2)
  {
    v9 = a2[2];
    v3[2] = v9;
    v9[*v9 != a2] = v3;
    v11 = *a2;
    v10 = a2[1];
    *(v11 + 16) = v3;
    *v3 = v11;
    v3[1] = v10;
    if (v10)
    {
      *(v10 + 16) = v3;
    }

    *(v3 + 24) = *(a2 + 24);
    if (result == a2)
    {
      result = v3;
    }
  }

  if (!result || !v8)
  {
    return result;
  }

  if (!v6)
  {
    *(v2 + 24) = 1;
    return result;
  }

  while (1)
  {
    v12 = v7[2];
    v13 = *v12;
    if (*v12 == v7)
    {
      break;
    }

    if ((v7[3] & 1) == 0)
    {
      *(v7 + 24) = 1;
      *(v12 + 24) = 0;
      v14 = v12[1];
      v15 = *v14;
      v12[1] = *v14;
      if (v15)
      {
        *(v15 + 16) = v12;
      }

      v16 = v12[2];
      v14[2] = v16;
      v16[*v16 != v12] = v14;
      *v14 = v12;
      v12[2] = v14;
      if (result == *v7)
      {
        result = v7;
      }

      v7 = *(*v7 + 8);
    }

    v17 = *v7;
    if (*v7 && *(v17 + 24) != 1)
    {
      v18 = v7[1];
      if (v18 && (v18[3] & 1) == 0)
      {
LABEL_58:
        v17 = v7;
      }

      else
      {
        *(v17 + 24) = 1;
        *(v7 + 24) = 0;
        v26 = v17[1];
        *v7 = v26;
        if (v26)
        {
          *(v26 + 16) = v7;
        }

        v27 = v7[2];
        v17[2] = v27;
        v27[*v27 != v7] = v17;
        v17[1] = v7;
        v7[2] = v17;
        v18 = v7;
      }

      v28 = v17[2];
      *(v17 + 24) = *(v28 + 24);
      *(v28 + 24) = 1;
      *(v18 + 24) = 1;
      v29 = *(v28 + 8);
      v30 = *v29;
      *(v28 + 8) = *v29;
      if (v30)
      {
        *(v30 + 16) = v28;
      }

      v31 = *(v28 + 16);
      v29[2] = v31;
      v31[*v31 != v28] = v29;
      *v29 = v28;
      goto LABEL_71;
    }

    v18 = v7[1];
    if (v18 && *(v18 + 24) != 1)
    {
      goto LABEL_58;
    }

    *(v7 + 24) = 0;
    v19 = v7[2];
    if (v19 == result || (v19[3] & 1) == 0)
    {
      goto LABEL_52;
    }

LABEL_49:
    v7 = *(v19[2] + 8 * (*v19[2] == v19));
  }

  if ((v7[3] & 1) == 0)
  {
    *(v7 + 24) = 1;
    *(v12 + 24) = 0;
    v20 = v13[1];
    *v12 = v20;
    if (v20)
    {
      *(v20 + 16) = v12;
    }

    v21 = v12[2];
    v13[2] = v21;
    v21[*v21 != v12] = v13;
    v13[1] = v12;
    v12[2] = v13;
    v22 = v7[1];
    if (result == v22)
    {
      result = v7;
    }

    v7 = *v22;
  }

  v23 = *v7;
  if (*v7 && *(v23 + 24) != 1)
  {
    goto LABEL_67;
  }

  v24 = v7[1];
  if (!v24 || *(v24 + 24) == 1)
  {
    *(v7 + 24) = 0;
    v19 = v7[2];
    if (*(v19 + 24) != 1 || v19 == result)
    {
LABEL_52:
      *(v19 + 24) = 1;
      return result;
    }

    goto LABEL_49;
  }

  if (v23 && (v23[3] & 1) == 0)
  {
LABEL_67:
    v24 = v7;
    goto LABEL_68;
  }

  *(v24 + 24) = 1;
  *(v7 + 24) = 0;
  v32 = *v24;
  v7[1] = *v24;
  if (v32)
  {
    *(v32 + 16) = v7;
  }

  v33 = v7[2];
  v24[2] = v33;
  v33[*v33 != v7] = v24;
  *v24 = v7;
  v7[2] = v24;
  v23 = v7;
LABEL_68:
  v28 = v24[2];
  *(v24 + 24) = *(v28 + 24);
  *(v28 + 24) = 1;
  *(v23 + 24) = 1;
  v29 = *v28;
  v34 = *(*v28 + 8);
  *v28 = v34;
  if (v34)
  {
    *(v34 + 16) = v28;
  }

  v35 = *(v28 + 16);
  v29[2] = v35;
  v35[*v35 != v28] = v29;
  v29[1] = v28;
LABEL_71:
  *(v28 + 16) = v29;
  return result;
}

void std::__tree<std::__value_type<unsigned int,std::set<unsigned int>>,std::__map_value_compare<unsigned int,std::__value_type<unsigned int,std::set<unsigned int>>,std::less<unsigned int>,true>,std::allocator<std::__value_type<unsigned int,std::set<unsigned int>>>>::erase(void *a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  if (v3)
  {
    do
    {
      v4 = v3;
      v3 = *v3;
    }

    while (v3);
  }

  else
  {
    v5 = a2;
    do
    {
      v4 = v5[2];
      v6 = *v4 == v5;
      v5 = v4;
    }

    while (!v6);
  }

  if (*a1 == a2)
  {
    *a1 = v4;
  }

  v7 = a1[1];
  --a1[2];
  std::__tree_remove[abi:fn200100]<std::__tree_node_base<void *> *>(v7, a2);
  std::__tree<std::__value_type<long,TGlyphDeltaListEntry>,std::__map_value_compare<long,std::__value_type<long,TGlyphDeltaListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TGlyphDeltaListEntry>>>::destroy(*(a2 + 48));

  operator delete(a2);
}

uint64_t std::__function::__func<IgnoresForLookupTable(TBaseFont const&,OTL::LookupTable const*)::$_0,std::allocator<IgnoresForLookupTable(TBaseFont const&,OTL::LookupTable const*)::$_0>,void ()(unsigned short)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF25B278;
  a2[1] = v2;
  return result;
}

void std::vector<unsigned short>::push_back[abi:fn200100](const void **a1, _WORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = v8 >> 1;
    if (v8 >> 1 <= -2)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v10 = v4 - v7;
    if (v10 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v10;
    }

    v12 = v10 >= 0x7FFFFFFFFFFFFFFELL;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v11;
    }

    if (v13)
    {
      std::allocator<unsigned short>::allocate_at_least[abi:fn200100](a1, v13);
    }

    v14 = (2 * v9);
    v15 = *a2;
    v16 = &v14[-(v8 >> 1)];
    *v14 = v15;
    v6 = v14 + 1;
    memcpy(v16, v7, v8);
    v17 = *a1;
    *a1 = v16;
    a1[1] = v6;
    a1[2] = 0;
    if (v17)
    {
      operator delete(v17);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

__n128 std::vector<unsigned short>::__move_assign(uint64_t a1, __n128 *a2)
{
  v4 = *a1;
  if (v4)
  {
    *(a1 + 8) = v4;
    operator delete(v4);
    *a1 = 0;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
  }

  result = *a2;
  *a1 = *a2;
  *(a1 + 16) = a2[1].n128_u64[0];
  a2->n128_u64[0] = 0;
  a2->n128_u64[1] = 0;
  a2[1].n128_u64[0] = 0;
  return result;
}

__n128 std::__function::__func<anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_1,std::allocator<anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_1>,BOOL ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25B2C0;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_1,std::allocator<anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_1>,BOOL ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, __int16 *a4)
{
  v4 = *a2;
  v5 = *a3;
  if (v4 > v5)
  {
    return 1;
  }

  v6 = **(a1 + 8);
  v7 = **(a1 + 16);
  v8 = v6 + 6;
  if (v6 + 8 <= v7)
  {
    v9 = (v7 - (v6 + 6)) >> 1;
  }

  else
  {
    v9 = 0;
  }

  if (v7 >= v8)
  {
    v10 = *a4;
    v11 = *(a1 + 24);
    v12 = v5 + 1;
    v13 = *a2;
    while (1)
    {
      v14 = v13 - v4 + v10;
      v15 = bswap32(*(v6 + 4)) >> 16;
      v16 = v8 + 2 * v15;
      if (v16 < v8 || v16 > v7)
      {
        if (v15 <= v14 || v9 != v15)
        {
          return 0;
        }
      }

      else if (v15 <= v14)
      {
        return 0;
      }

      v19 = (v6 + (bswap32(*(v8 + 2 * (v13 - v4 + v10))) >> 16));
      v20 = v19 + 1;
      if ((v19 + 1) > v7)
      {
        return 0;
      }

      v21 = bswap32(*v19) >> 16;
      v22 = &v20[v21];
      v23 = (v19 + 2) <= v7 ? (v7 - v20) >> 1 : 0;
      v24 = v22 <= v7 && v22 >= v20;
      if (!v24 && v23 != v21)
      {
        return 0;
      }

      v26 = *v11;
      if (v26 <= v21)
      {
        LOWORD(v26) = v21;
      }

      *v11 = v26;
      if (v12 == ++v13)
      {
        return 1;
      }
    }
  }

  return 0;
}

__n128 *std::__stable_partition_impl<std::_ClassicAlgPolicy,anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_4 &,std::__wrap_iter<anonymous namespace::LookupInfo *>,long,std::pair<anonymous namespace::LookupInfo *,long>>(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  if (a3 == 3)
  {
    v9 = a1 + 72;
    v8 = *(a1 + 72);
    if (v8 == 1667329140 || v8 == 1919707495 || v8 == 1919118452)
    {
      a1 = v6 + 72;
LABEL_13:
      return a2;
    }
  }

  else
  {
    if (a3 == 2)
    {
      goto LABEL_13;
    }

    v13 = a4;
    if (a5 >= a3)
    {
      v45[0] = a4;
      v45[1] = &v46;
      v21 = *a1;
      v22 = *(a1 + 32);
      *(a4 + 16) = *(a1 + 16);
      *(a4 + 32) = v22;
      *a4 = v21;
      *(a4 + 56) = 0;
      *(a4 + 64) = 0;
      *(a4 + 48) = 0;
      *(a4 + 48) = *(a1 + 48);
      *(a4 + 64) = *(a1 + 64);
      *(a1 + 48) = 0;
      *(a1 + 56) = 0;
      *(a1 + 64) = 0;
      v46 = 1;
      v23 = a4 + 72;
      v24 = (a1 + 72);
      if ((a1 + 72) == a2)
      {
        v30 = a1;
      }

      else
      {
        do
        {
          v25 = v24->n128_u32[0];
          v27 = v24->n128_u32[0] == 1667329140 || v25 == 1919707495 || v25 == 1919118452;
          v28 = *v24;
          v29 = v24[2];
          if (v27)
          {
            *(v6 + 16) = v24[1];
            *(v6 + 32) = v29;
            *v6 = v28;
            std::vector<unsigned short>::__move_assign(v6 + 48, v24 + 3);
            v6 += 72;
          }

          else
          {
            *(v23 + 16) = v24[1];
            *(v23 + 32) = v29;
            *v23 = v28;
            *(v23 + 56) = 0;
            *(v23 + 64) = 0;
            *(v23 + 48) = 0;
            *(v23 + 48) = v24[3];
            *(v23 + 64) = v24[4].n128_u64[0];
            v24[3].n128_u64[0] = 0;
            v24[3].n128_u64[1] = 0;
            v24[4].n128_u64[0] = 0;
            ++v46;
            v23 += 72;
          }

          v24 = (v24 + 72);
        }

        while (v24 != a2);
        v30 = &v24[-5].n128_i32[2];
      }

      v32 = *v24;
      v33 = v24[2];
      *(v6 + 16) = v24[1];
      *(v6 + 32) = v33;
      *v6 = v32;
      std::vector<unsigned short>::__move_assign(v6 + 48, (v30 + 30));
      v9 = v6 + 72;
      if (v23 > v13)
      {
        v34 = (v6 + 72);
        do
        {
          v35 = *v13;
          v36 = *(v13 + 32);
          v34[1] = *(v13 + 16);
          v34[2] = v36;
          *v34 = v35;
          std::vector<unsigned short>::__move_assign((v34 + 3), (v13 + 48));
          v13 += 72;
          v34 = (v34 + 72);
        }

        while (v13 < v23);
      }
    }

    else
    {
      v14 = a3 / 2;
      v15 = a1 + 72 * (a3 / 2) - 72;
      v16 = 72 * (a3 / 2) - 72;
      for (i = a3 / 2; ; --i)
      {
        v18 = *(a1 + v16);
        if (v18 == 1667329140 || v18 == 1919118452 || v18 == 1919707495)
        {
          goto LABEL_44;
        }

        if (!v16)
        {
          break;
        }

        v15 -= 72;
        v16 -= 72;
      }

      v31 = a1;
LABEL_44:
      v37 = (a2 + 72);
      v38 = a3 - v14;
      v39 = v6 + 72 * v14;
      for (j = (v39 + 72); ; j = (j + 72))
      {
        v41 = j[-5].n128_u32[2];
        v42 = v41 == 1667329140 || v41 == 1919707495;
        if (!v42 && v41 != 1919118452)
        {
          break;
        }

        if (j == a2)
        {
        }

        --v38;
        v39 += 72;
      }
    }
  }

  return v9;
}

__n128 std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<std::__wrap_iter<anonymous namespace::LookupInfo *> &,std::__wrap_iter<anonymous namespace::LookupInfo *> &>(__n128 *a1, __n128 *a2)
{
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v8 = a1[3];
  v3 = a1[4].n128_u64[0];
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  v4 = *a2;
  v5 = a2[2];
  a1[1] = a2[1];
  a1[2] = v5;
  *a1 = v4;
  std::vector<unsigned short>::__move_assign(&a1[3], a2 + 3);
  *a2 = v9;
  a2[1] = v10;
  a2[2] = v11;
  v6 = a2[3].n128_u64[0];
  if (v6)
  {
    a2[3].n128_u64[1] = v6;
    operator delete(v6);
  }

  result = v8;
  a2[3] = v8;
  a2[4].n128_u64[0] = v3;
  return result;
}

uint64_t *std::unique_ptr<anonymous namespace::LookupInfo,std::__destruct_n &>::~unique_ptr[abi:fn200100](uint64_t *a1)
{
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    v3 = a1[1];
    v4 = *v3;
    if (*v3)
    {
      v5 = 0;
      v6 = (v2 + 56);
      do
      {
        v7 = *(v6 - 1);
        if (v7)
        {
          *v6 = v7;
          operator delete(v7);
          v4 = *v3;
        }

        ++v5;
        v6 += 9;
      }

      while (v5 < v4);
    }
  }

  return a1;
}

__n128 *std::__rotate[abi:fn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<anonymous namespace::LookupInfo *>,std::__wrap_iter<anonymous namespace::LookupInfo *>>(__n128 *a1, __n128 *a2, __n128 *a3)
{
  v3 = a3;
  if (a1 != a2)
  {
    v4 = a2;
    v5 = a1;
    if (a2 != a3)
    {
      v5 = (v5 + 72);
      for (i = (v4 + 72); i != v3; i = (i + 72))
      {
        if (v5 == v4)
        {
          v4 = i;
        }

        v5 = (v5 + 72);
      }

      if (v5 != v4)
      {
        v7 = v5;
        v8 = v4;
        do
        {
          while (1)
          {
            v7 = (v7 + 72);
            v4 = (v4 + 72);
            if (v4 == v3)
            {
              break;
            }

            if (v7 == v8)
            {
              v8 = v4;
            }
          }

          v4 = v8;
        }

        while (v7 != v8);
      }
    }

    return v5;
  }

  return v3;
}

__n128 *std::__stable_partition_impl<std::_ClassicAlgPolicy,anonymous namespace::MorxTableBuilder::From(TBaseFont const&,OTL::GCommon::Header const*,void const*,anonymous namespace::OTFeaturesMap &)::$_7 &,std::__wrap_iter<anonymous namespace::LookupInfo *>,long,std::pair<anonymous namespace::LookupInfo *,long>>(uint64_t a1, __n128 *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a1;
  if (a3 == 3)
  {
    v8 = a1 + 72;
    if (*(a1 + 72) != 1919707495)
    {
      return v8;
    }

    a1 = v6 + 72;
    goto LABEL_6;
  }

  if (a3 == 2)
  {
LABEL_6:
    return a2;
  }

  v10 = a4;
  if (a5 >= a3)
  {
    v37[0] = a4;
    v37[1] = &v38;
    v15 = *a1;
    v16 = *(a1 + 32);
    *(a4 + 16) = *(a1 + 16);
    *(a4 + 32) = v16;
    *a4 = v15;
    *(a4 + 56) = 0;
    *(a4 + 64) = 0;
    *(a4 + 48) = 0;
    *(a4 + 48) = *(a1 + 48);
    *(a4 + 64) = *(a1 + 64);
    *(a1 + 48) = 0;
    *(a1 + 56) = 0;
    *(a1 + 64) = 0;
    v38 = 1;
    v17 = a4 + 72;
    v18 = a1 + 72;
    if ((a1 + 72) == a2)
    {
      v22 = a1;
    }

    else
    {
      do
      {
        v19 = (v18 + 48);
        v20 = *v18;
        v21 = *(v18 + 32);
        if (*v18 == 1919707495)
        {
          *(v6 + 16) = *(v18 + 16);
          *(v6 + 32) = v21;
          *v6 = v20;
          std::vector<unsigned short>::__move_assign(v6 + 48, v19);
          v6 += 72;
        }

        else
        {
          *(v17 + 16) = *(v18 + 16);
          *(v17 + 32) = v21;
          *v17 = v20;
          *(v17 + 56) = 0;
          *(v17 + 64) = 0;
          *(v17 + 48) = 0;
          *(v17 + 48) = *(v18 + 48);
          *(v17 + 64) = *(v18 + 64);
          v19->n128_u64[0] = 0;
          *(v18 + 56) = 0;
          *(v18 + 64) = 0;
          ++v38;
          v17 += 72;
        }

        v18 += 72;
      }

      while (v18 != a2);
      v22 = v18 - 72;
    }

    v26 = *v18;
    v27 = *(v18 + 32);
    *(v6 + 16) = *(v18 + 16);
    *(v6 + 32) = v27;
    *v6 = v26;
    std::vector<unsigned short>::__move_assign(v6 + 48, (v22 + 120));
    v8 = v6 + 72;
    if (v17 > v10)
    {
      v28 = (v6 + 72);
      do
      {
        v29 = *v10;
        v30 = *(v10 + 32);
        v28[1] = *(v10 + 16);
        v28[2] = v30;
        *v28 = v29;
        std::vector<unsigned short>::__move_assign((v28 + 3), (v10 + 48));
        v10 += 72;
        v28 = (v28 + 72);
      }

      while (v10 < v17);
    }
  }

  else
  {
    v11 = a3 / 2;
    v12 = (a1 + 72 * (a3 / 2));
    v13 = v12 - 18;
    if (*(v12 - 18) == 1919707495)
    {
      v14 = a3 / 2;
LABEL_20:
    }

    else
    {
      v23 = 72 - 72 * v11;
      v14 = a3 / 2;
      while (v23)
      {
        --v14;
        v24 = *(v13 - 18);
        v13 -= 18;
        v23 += 72;
        if (v24 == 1919707495)
        {
          goto LABEL_20;
        }
      }

      v25 = a1;
    }

    v31 = a3 - v11;
    if (*v12 == 1919707495)
    {
      v32 = (a2 + 72);
      v33 = v6 + 72 * v11;
      v34 = (v33 + 72);
      while (v34 != a2)
      {
        --v31;
        v35 = v34->n128_u32[0];
        v34 = (v34 + 72);
        v33 += 72;
        if (v35 != 1919707495)
        {
          goto LABEL_33;
        }
      }
    }

    else
    {
      v33 = v6 + 72 * (a3 / 2);
LABEL_33:
    }
  }

  return v8;
}

uint64_t std::allocator_traits<TInlineBufferAllocator<MortFeatureEntry,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<MortFeatureEntry,30ul>>(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 360);
  result = *(a1 + 360);
  v4 = result + 12 * a2;
  if (v4 > v2)
  {
    if (a2 < 0x1555555555555556)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v2 = v4;
  return result;
}

uint64_t std::__split_buffer<MortFeatureEntry,TInlineBufferAllocator<MortFeatureEntry,30ul> &>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 8))
  {
    *(a1 + 16) = (v2 - *(a1 + 8) - 12) % 0xCuLL + *(a1 + 8);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 32);
    v6 = v4 > v3;
    v5 = (v4 + 360);
    v6 = !v6 && v5 > v3;
    if (v6)
    {
      if (*(a1 + 24) == *v5)
      {
        *v5 = v3;
      }
    }

    else
    {
      operator delete(v3);
    }
  }

  return a1;
}

void anonymous namespace::MorxSubtableBuilder::From(atomic_ullong *this, unint64_t a2, int a3, int a4)
{
  v5 = this;
  *this = a3;
  *(this + 1) = a4;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);

  explicit = atomic_load_explicit(v5, memory_order_acquire);
  if (a2 <= 0x10000)
  {
    v7 = (a2 + 7) >> 3;
  }

  else
  {
    v7 = 0x2000;
  }

  CFDataSetLength(explicit, v7);
}

void *std::__function::__func<anonymous namespace::MorxSwashSubtableBuilder::FromLookupSubtable(long,unsigned int,unsigned int,unsigned int,OTL::LookupSubtable const*,void const*,std::vector<unsigned short> const&,unsigned short)::$_0,std::allocator<anonymous namespace::MorxSwashSubtableBuilder::FromLookupSubtable(long,unsigned int,unsigned int,unsigned int,OTL::LookupSubtable const*,void const*,std::vector<unsigned short> const&,unsigned short)::$_0>,BOOL ()(unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF25B308;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  return a1;
}

void std::__function::__func<anonymous namespace::MorxSwashSubtableBuilder::FromLookupSubtable(long,unsigned int,unsigned int,unsigned int,OTL::LookupSubtable const*,void const*,std::vector<unsigned short> const&,unsigned short)::$_0,std::allocator<anonymous namespace::MorxSwashSubtableBuilder::FromLookupSubtable(long,unsigned int,unsigned int,unsigned int,OTL::LookupSubtable const*,void const*,std::vector<unsigned short> const&,unsigned short)::$_0>,BOOL ()(unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF25B308;
  v2 = a1[1];
  if (v2)
  {
    a1[2] = v2;
    operator delete(v2);
  }

  JUMPOUT(0x1865F22D0);
}

void std::__function::__func<anonymous namespace::MorxSwashSubtableBuilder::FromLookupSubtable(long,unsigned int,unsigned int,unsigned int,OTL::LookupSubtable const*,void const*,std::vector<unsigned short> const&,unsigned short)::$_0,std::allocator<anonymous namespace::MorxSwashSubtableBuilder::FromLookupSubtable(long,unsigned int,unsigned int,unsigned int,OTL::LookupSubtable const*,void const*,std::vector<unsigned short> const&,unsigned short)::$_0>,BOOL ()(unsigned short)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    *(a1 + 16) = v2;
    operator delete(v2);
  }
}

void std::__function::__func<anonymous namespace::MorxSwashSubtableBuilder::FromLookupSubtable(long,unsigned int,unsigned int,unsigned int,OTL::LookupSubtable const*,void const*,std::vector<unsigned short> const&,unsigned short)::$_0,std::allocator<anonymous namespace::MorxSwashSubtableBuilder::FromLookupSubtable(long,unsigned int,unsigned int,unsigned int,OTL::LookupSubtable const*,void const*,std::vector<unsigned short> const&,unsigned short)::$_0>,BOOL ()(unsigned short)>::destroy_deallocate(void *__p)
{
  v2 = __p[1];
  if (v2)
  {
    __p[2] = v2;
    operator delete(v2);
  }

  operator delete(__p);
}

BOOL std::__function::__func<anonymous namespace::MorxSwashSubtableBuilder::FromLookupSubtable(long,unsigned int,unsigned int,unsigned int,OTL::LookupSubtable const*,void const*,std::vector<unsigned short> const&,unsigned short)::$_0,std::allocator<anonymous namespace::MorxSwashSubtableBuilder::FromLookupSubtable(long,unsigned int,unsigned int,unsigned int,OTL::LookupSubtable const*,void const*,std::vector<unsigned short> const&,unsigned short)::$_0>,BOOL ()(unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v3 == v2)
  {
    return 1;
  }

  v4 = *a2;
  v5 = v3 - v2;
  do
  {
    v6 = v5 >> 1;
    v7 = &v2[v5 >> 1];
    v9 = *v7;
    v8 = v7 + 1;
    v5 += ~(v5 >> 1);
    if (v9 < v4)
    {
      v2 = v8;
    }

    else
    {
      v5 = v6;
    }
  }

  while (v5);
  return v2 == v3 || *v2 > v4;
}

void std::vector<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul>>::__swap_out_circular_buffer(uint64_t a1, void *a2)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = (a2[1] + *a1 - v5);
    do
    {
      *v8++ = atomic_exchange(v7++, 0);
    }

    while (v7 != v5);
    do
    {
      v9 = *v4++;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  *(a1 + 8) = v4;
  a2[1] = v4;
  v10 = *(a1 + 8);
  *(a1 + 8) = a2[2];
  a2[2] = v10;
  v11 = *(a1 + 16);
  *(a1 + 16) = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

uint64_t std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<TCFRef<__CFData *>,30ul>>(uint64_t a1, unint64_t a2)
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

uint64_t std::__split_buffer<TCFRef<__CFData *>,TInlineBufferAllocator<TCFRef<__CFData *>,30ul> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 8;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 32);
    v6 = (v5 + 240);
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

void anonymous namespace::MorxSubtableBuilder::CreateSubtableDataInternal(_anonymous_namespace_::MorxSubtableBuilder *this, unsigned int *a2, int a3)
{
  v5 = a3 + 12;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], (a3 + 12));
  *bytes = bswap32(v5);
  CFDataAppendBytes(Mutable, bytes, 4);
  *v8 = bswap32(*a2);
  CFDataAppendBytes(Mutable, v8, 4);
  *v9 = bswap32(a2[1]);
  CFDataAppendBytes(Mutable, v9, 4);
  *this = Mutable;
}

uint64_t std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<TCFRef<__CFData const*>,30ul>>(uint64_t a1, unint64_t a2)
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

uint64_t std::__function::__func<AddPrevLigaturesFromSingleSubstitutionLookupTable(anonymous namespace::ArabicLookups &,__CFData const*)::$_0,std::allocator<AddPrevLigaturesFromSingleSubstitutionLookupTable(anonymous namespace::ArabicLookups &,__CFData const*)::$_0>,void ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF25B350;
  a2[1] = v2;
  return result;
}

void std::__function::__func<AddPrevLigaturesFromSingleSubstitutionLookupTable(anonymous namespace::ArabicLookups &,__CFData const*)::$_0,std::allocator<AddPrevLigaturesFromSingleSubstitutionLookupTable(anonymous namespace::ArabicLookups &,__CFData const*)::$_0>,void ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, __int16 *a4)
{
  v4 = *a2;
  v5 = *a3;
  if (v4 <= v5)
  {
    v7 = *a4;
    v8 = v5 + 1;
    do
    {
      v12 = v4;
      v11 = 0xAAAAAAAAAAAAAAAALL;
      v10[0] = 0xAAAAAAAAAAAAAAAALL;
      memset(v9, 0, sizeof(v9));
      v10[1] = v10;
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::push_back[abi:fn200100](v9, &v12);
      LOWORD(v11) = v7;
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v9);
      ++v4;
    }

    while (v8 != v4);
  }
}

__n128 std::__function::__func<InsertionInputsForMultipleSubst(long,OTL::LookupSubtable const*,BOOL,void const*,TInlineVector<anonymous namespace::InsertionInput,30ul> &)::$_0,std::allocator<InsertionInputsForMultipleSubst(long,OTL::LookupSubtable const*,BOOL,void const*,TInlineVector<anonymous namespace::InsertionInput,30ul> &)::$_0>,BOOL ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25B398;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<InsertionInputsForMultipleSubst(long,OTL::LookupSubtable const*,BOOL,void const*,TInlineVector<anonymous namespace::InsertionInput,30ul> &)::$_0,std::allocator<InsertionInputsForMultipleSubst(long,OTL::LookupSubtable const*,BOOL,void const*,TInlineVector<anonymous namespace::InsertionInput,30ul> &)::$_0>,BOOL ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, __int16 *a4)
{
  v4 = *a2;
  v5 = *a3;
  if (v4 > v5)
  {
    return 1;
  }

  v6 = a1;
  v7 = *a4;
  v8 = *a2;
  v61 = *a3;
  v62 = *a2;
  v60 = *a4;
  while (1)
  {
    v9 = **(v6 + 8);
    v10 = **(v6 + 16);
    v11 = v9 + 6;
    if (v9 + 6 > v10)
    {
      break;
    }

    v12 = v8 - v4 + v7;
    v13 = bswap32(*(v9 + 4)) >> 16;
    v14 = v11 + 2 * v13;
    if (v14 < v11 || v14 > v10)
    {
      if (v9 + 8 <= v10)
      {
        v16 = (v10 - v11) >> 1;
      }

      else
      {
        v16 = 0;
      }

      v17 = v13 > v12 && v16 == v13;
      if (!v17)
      {
        return 0;
      }
    }

    else if (v13 <= v12)
    {
      return 0;
    }

    v18 = bswap32(*(v11 + 2 * (v8 - v4 + v7))) >> 16;
    v19 = (v9 + v18);
    v20 = (v9 + v18 + 2);
    if (v20 > v10)
    {
      return 0;
    }

    v21 = *v19;
    v22 = bswap32(*v19) >> 16;
    v23 = &v20[v22];
    v24 = (v19 + 2) <= v10 ? (v10 - v20) >> 1 : 0;
    v25 = v23 <= v10 && v23 >= v20;
    if (!v25 && v24 != v22)
    {
      return 0;
    }

    if (v21)
    {
      v67[0] = 0xAAAAAAAAAAAAAAAALL;
      v68 = 0xAAAAAAAAAAAAAAAALL;
      v65 = 0xAAAAAAAAAAAAAAAALL;
      v66 = 0uLL;
      v67[1] = v67;
      LOWORD(v65) = v8;
      if (**(v6 + 24))
      {
        LOWORD(v68) = bswap32(*v20) >> 16;
        v27 = (v22 - 1);
        if (v22 != 1)
        {
          v28 = v27 - 1;
          v29 = (v9 + v18 + 2 * v27 + 2);
          do
          {
            v30 = *v29--;
            v64 = bswap32(v30) >> 16;
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::push_back[abi:fn200100](&v65 + 8, &v64);
          }

          while (v28--);
        }
      }

      else
      {
        v32 = (v22 - 1);
        if (v22 == 1)
        {
          v32 = 0;
        }

        else
        {
          v33 = (v9 + v18 + 2);
          v34 = (v22 - 1);
          do
          {
            v35 = *v33++;
            v64 = bswap32(v35) >> 16;
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::push_back[abi:fn200100](&v65 + 8, &v64);
            --v34;
          }

          while (v34);
        }

        LOWORD(v68) = bswap32(v20[v32]) >> 16;
      }

      v36 = *(v6 + 32);
      v38 = v36[1];
      v37 = v36[2];
      if (v38 >= v37)
      {
        v40 = 0x6DB6DB6DB6DB6DB7 * ((v38 - *v36) >> 3);
        v41 = v40 + 1;
        if ((v40 + 1) > 0x492492492492492)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        v42 = 0x6DB6DB6DB6DB6DB7 * ((v37 - *v36) >> 3);
        if (2 * v42 > v41)
        {
          v41 = 2 * v42;
        }

        if (v42 >= 0x249249249249249)
        {
          v43 = 0x492492492492492;
        }

        else
        {
          v43 = v41;
        }

        v63 = v43;
        if (v43)
        {
          v44 = v36[213];
          v45 = v44 + 56 * v43;
          if (v45 > (v36 + 213))
          {
            if (v43 <= 0x492492492492492)
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v36[213] = v45;
        }

        else
        {
          v44 = 0;
        }

        v46 = v44 + 56 * v40;
        *v46 = v65;
        TInlineVector<unsigned short,3ul>::TInlineVector((v46 + 8), *(&v65 + 1), v66);
        v48 = *v36;
        v47 = v36[1];
        v49 = v46 - (v47 - *v36);
        *(v46 + 48) = v68;
        if (v47 != v48)
        {
          v50 = (v44 + 56 * v40 - 8 * (v47 - v48) + 8);
          v51 = v48;
          v52 = v49;
          v53 = v49;
          do
          {
            *(v50 - 4) = *v51;
            v54 = TInlineVector<unsigned short,3ul>::TInlineVector(v50, v51[1], v51[2]);
            *(v53 + 48) = *(v51 + 24);
            v51 += 7;
            v53 += 56;
            v50 = v54 + 7;
          }

          while (v51 != v47);
          v6 = a1;
          do
          {
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100]((v48 + 1));
            v48 += 7;
          }

          while (v48 != v47);
          v48 = *v36;
          v49 = v52;
        }

        v39 = v46 + 56;
        *v36 = v49;
        v36[1] = v46 + 56;
        v55 = v36[2];
        v36[2] = v44 + 56 * v63;
        if (v48)
        {
          v56 = v36 + 213;
          v57 = v36 + 3 <= v48 && v56 > v48;
          v5 = v61;
          LOWORD(v4) = v62;
          v7 = v60;
          if (v57)
          {
            if (v55 == *v56)
            {
              *v56 = v48;
            }
          }

          else
          {
            operator delete(v48);
          }
        }

        else
        {
          v5 = v61;
          LOWORD(v4) = v62;
          v7 = v60;
        }
      }

      else
      {
        *v38 = v65;
        TInlineVector<unsigned short,3ul>::TInlineVector((v38 + 8), *(&v65 + 1), v66);
        *(v38 + 48) = v68;
        v39 = v38 + 56;
      }

      v36[1] = v39;
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v65 + 8);
    }

    v17 = v8++ == v5;
    if (v17)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<unsigned short,3ul>>(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 8);
  v4 = result + 2 * a2;
  if (v4 > a1 + 6)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *(a1 + 8) = v4;
  return result;
}

uint64_t std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,3ul> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 1) & 0xFFFFFFFFFFFFFFFELL);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 32);
    if (v5 <= v4 && v5 + 6 > v4)
    {
      if (*(a1 + 24) == *(v5 + 8))
      {
        *(v5 + 8) = v4;
      }
    }

    else
    {
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t *TInlineVector<unsigned short,3ul>::TInlineVector(uint64_t *a1, __int16 *a2, __int16 *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[4] = (a1 + 3);
  if (a3 != a2)
  {
    v5 = a2;
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__vallocate[abi:fn200100](a1, a3 - a2);
    v6 = a1[1];
    do
    {
      v7 = *v5++;
      *v6++ = v7;
    }

    while (v5 != a3);
    a1[1] = v6;
  }

  return a1;
}

uint64_t std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__vallocate[abi:fn200100](uint64_t *a1, uint64_t a2)
{
  if (a2 < 0)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  result = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<unsigned short,3ul>>((a1 + 3), a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 2 * v4;
  return result;
}

void std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    v3 = (a1 + 30);
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
      if (*(a1 + 16) == *(a1 + 32))
      {
        *(a1 + 32) = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

BOOL anonymous namespace::MorxStateTableSubtableBuilder<STXEntryTwo>::ProcessMorxEntryTableForState(uint64_t a1, int a2, int a3, void *a4)
{
  v4 = (a3 + *(a1 + 24) * a2);
  v5 = *(a1 + 40);
  if (v4 >= (*(a1 + 48) - v5) >> 1)
  {
    return 0;
  }

  v6 = *(v5 + 2 * v4);
  v7 = *(a1 + 136);
  if (v6 >= (*(a1 + 144) - v7) >> 3)
  {
    return 0;
  }

  v8 = (v7 + 8 * v6);
  *a4 = v8;
  v9 = v8[1];
  v10 = bswap32(*v8) >> 16;
  return (v9 & 0xE0) != 0 || v10 > 1;
}

uint64_t GetActionIndex(unint64_t **a1, unsigned int a2, unsigned int a3, unsigned __int16 a4, uint64_t a5)
{
  v10 = *a1;
  v11 = a1[1];
  v12 = v11 - *a1;
  if (v11 == *a1)
  {
LABEL_11:
    v16 = a1[2];
    if (v11 >= v16)
    {
      if ((v12 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v18 = v16 - v10;
      v19 = v18 >> 2;
      if (v18 >> 2 <= v12 + 1)
      {
        v19 = v12 + 1;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFF8)
      {
        v20 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v20 = v19;
      }

      if (v20)
      {
        v21 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<long,30ul>>((a1 + 3), v20);
      }

      else
      {
        v21 = 0;
      }

      v22 = (v21 + 8 * v12);
      v23 = v21 + 8 * v20;
      *v22 = (a4 << 32) | (a5 << 48) | (a3 << 16) | a2;
      v17 = (v22 + 1);
      v24 = a1[1] - *a1;
      v25 = v22 - v24;
      memcpy(v22 - v24, *a1, v24);
      v26 = *a1;
      *a1 = v25;
      a1[1] = v17;
      v27 = a1[2];
      a1[2] = v23;
      if (v26)
      {
        if (a1 + 3 > v26 || (v28 = (a1 + 33), a1 + 33 <= v26))
        {
          operator delete(v26);
        }

        else if (v27 == *v28)
        {
          *v28 = v26;
        }
      }
    }

    else
    {
      *v11 = (a4 << 32) | (a5 << 48) | (a3 << 16) | a2;
      v17 = (v11 + 1);
    }

    a1[1] = v17;
    return ((v17 - *a1) >> 3) - 1;
  }

  else
  {
    result = 0;
    if (v12 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = v12;
    }

    v15 = (v10 + 4);
    while (*(v15 - 2) != a2 || *(v15 - 1) != a3 || *v15 != a4 || v15[1] != a5)
    {
      ++result;
      v15 += 4;
      if (v14 == result)
      {
        goto LABEL_11;
      }
    }
  }

  return result;
}

void anonymous namespace::MorxStateTableSubtableBuilder<STXEntryTwo>::CreateSubtableDataInternal(_anonymous_namespace_::MorxSubtableBuilder *a1, uint64_t a2, unsigned int a3)
{
  Length = CFDataGetLength(atomic_load_explicit((a2 + 32), memory_order_acquire));
  v7 = Length + 20;
  if ((Length + 20) >= 0xFFFFFFFF || (v8 = *(a2 + 48) - *(a2 + 40), v9 = v8 + v7, (v8 + v7) >= 0xFFFFFFFF) || (v10 = Length + a3 + v8 + *(a2 + 144) - *(a2 + 136) + 20, v10 >= 0xFFFFFFFF))
  {
    *a1 = 0;
  }

  else
  {
    *a1 = 0xAAAAAAAAAAAAAAAALL;
    explicit = atomic_load_explicit(a1, memory_order_acquire);
    *bytes = bswap32(*(a2 + 24));
    CFDataAppendBytes(explicit, bytes, 4);
    v12 = atomic_load_explicit(a1, memory_order_acquire);
    *bytes = 335544320;
    CFDataAppendBytes(v12, bytes, 4);
    v13 = atomic_load_explicit(a1, memory_order_acquire);
    *bytes = bswap32(v7);
    CFDataAppendBytes(v13, bytes, 4);
    v14 = atomic_load_explicit(a1, memory_order_acquire);
    *bytes = bswap32(v9);
    CFDataAppendBytes(v14, bytes, 4);
  }
}

void anonymous namespace::MorxStateTableSubtableBuilder<STXEntryTwo>::AppendStateTablePieces(atomic_ullong *a1, _anonymous_namespace_ *this, const __CFData *a3)
{
  v5 = a1[5];
  v6 = a1[6];
  while (v5 != v6)
  {
    v7 = *v5++;
    *bytes = bswap32(v7) >> 16;
    CFDataAppendBytes(this, bytes, 2);
  }

  v9 = a1[17];
  v8 = a1[18];
  while (v9 != v8)
  {
    *v11 = bswap32(*v9) >> 16;
    CFDataAppendBytes(this, v11, 2);
    *v12 = bswap32(v9[1]) >> 16;
    CFDataAppendBytes(this, v12, 2);
    *v13 = bswap32(v9[2]) >> 16;
    CFDataAppendBytes(this, v13, 2);
    *v14 = bswap32(v9[3]) >> 16;
    CFDataAppendBytes(this, v14, 2);
    v9 += 4;
  }
}

uint64_t anonymous namespace::MorxStateTableSubtableBuilder<STXEntryTwo>::~MorxStateTableSubtableBuilder(uint64_t a1)
{
  *a1 = &unk_1EF25B408;
  v2 = *(a1 + 136);
  if (v2)
  {
    *(a1 + 144) = v2;
    v3 = (a1 + 400);
    if (a1 + 160 <= v2)
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
      if (*(a1 + 152) == *(a1 + 400))
      {
        *v3 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }

  v7 = (a1 + 40);
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v7);

  return a1;
}

uint64_t std::__split_buffer<anonymous namespace::LigInput,TInlineBufferAllocator<anonymous namespace::LigInput,30ul> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 48;
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](i - 48);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 32);
    v7 = v5 > v4;
    v6 = (v5 + 1440);
    v7 = !v7 && v6 > v4;
    if (v7)
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

uint64_t std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<anonymous namespace::LigInput,30ul>>(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 1440);
  result = *(a1 + 1440);
  v4 = result + 48 * a2;
  if (v4 > v2)
  {
    if (a2 < 0x555555555555556)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v2 = v4;
  return result;
}

void std::__uninitialized_allocator_relocate[abi:fn200100]<TInlineBufferAllocator<anonymous namespace::LigInput,30ul>,anonymous namespace::LigInput*>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 != a2)
  {
    v5 = a1;
    v6 = a1;
    do
    {
      TInlineVector<unsigned short,3ul>::TInlineVector(a3, *v6, *(v6 + 8));
      *(a3 + 40) = *(v6 + 40);
      v6 += 48;
      a3 += 48;
    }

    while (v6 != a2);
    do
    {
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v5);
      v5 += 48;
    }

    while (v5 != a2);
  }
}

__n128 std::__function::__func<LigInputsForLigatureSubst(long,OTL::LookupSubtable const*,void const*,std::vector<unsigned short> const&,TInlineVector<anonymous namespace::LigInput,30ul> &)::$_0,std::allocator<LigInputsForLigatureSubst(long,OTL::LookupSubtable const*,void const*,std::vector<unsigned short> const&,TInlineVector<anonymous namespace::LigInput,30ul> &)::$_0>,BOOL ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF25B430;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<LigInputsForLigatureSubst(long,OTL::LookupSubtable const*,void const*,std::vector<unsigned short> const&,TInlineVector<anonymous namespace::LigInput,30ul> &)::$_0,std::allocator<LigInputsForLigatureSubst(long,OTL::LookupSubtable const*,void const*,std::vector<unsigned short> const&,TInlineVector<anonymous namespace::LigInput,30ul> &)::$_0>,BOOL ()(unsigned short,unsigned short,unsigned short)>::operator()(void **a1, unsigned __int16 *a2, unsigned __int16 *a3, __int16 *a4)
{
  v42 = *a3;
  if (*a2 > v42)
  {
    return 1;
  }

  v40 = *a4;
  v41 = *a2;
  v6 = *a2;
  while (1)
  {
    v43 = v6;
    v48 = v6;
    v7 = *a1[1];
    v8 = *a1[2];
    v9 = v7 + 6;
    if (v7 + 6 > v8)
    {
      return 0;
    }

    v10 = v43 - v41 + v40;
    v11 = bswap32(*(v7 + 4)) >> 16;
    v12 = v9 + 2 * v11;
    if (v12 < v9 || v12 > v8)
    {
      if (v7 + 8 <= v8)
      {
        v14 = (v8 - v9) >> 1;
      }

      else
      {
        v14 = 0;
      }

      if (v11 <= v10 || v14 != v11)
      {
        return 0;
      }
    }

    else if (v11 <= v10)
    {
      return 0;
    }

    v16 = (v7 + (bswap32(*(v9 + 2 * (v43 - v41 + v40))) >> 16));
    v17 = v16 + 1;
    if ((v16 + 1) > v8)
    {
      return 0;
    }

    v18 = bswap32(*v16) >> 16;
    v19 = &v17[v18];
    v20 = (v8 - v17) >> 1;
    if ((v16 + 2) > v8)
    {
      v20 = 0;
    }

    v21 = v19 <= v8 && v19 >= v17;
    if (!v21 && v20 != v18)
    {
      return 0;
    }

    if (*v16)
    {
      v23 = 0;
      if (v18 <= 1)
      {
        v24 = 1;
      }

      else
      {
        v24 = v18;
      }

      do
      {
        v25 = *a1[2];
        if (v17 > v25)
        {
          return 0;
        }

        v26 = bswap32(*v16) >> 16;
        v27 = &v17[v26];
        if (v27 < v17 || v27 > v25)
        {
          v29 = (v25 - v17) >> 1;
          if ((v16 + 2) > v25)
          {
            v29 = 0;
          }

          if (v29 != v26 || v23 >= v26)
          {
            return 0;
          }
        }

        else if (v23 >= v26)
        {
          return 0;
        }

        v31 = (v16 + (bswap32(v17[v23]) >> 16));
        v32 = v31 + 2;
        if ((v31 + 2) > v25)
        {
          return 0;
        }

        v33 = bswap32(v31[1]) >> 16;
        v34 = &v32[v33 - 1];
        v35 = (v31 + 3) <= v25 ? (v25 - v32) >> 1 : 0;
        v36 = v34 <= v25 && v34 >= v32;
        if (!v36 && v35 != v33 - 1)
        {
          return 0;
        }

        if (v31[1])
        {
          v47 = 0xAAAAAAAAAAAAAAAALL;
          v46[0] = 0xAAAAAAAAAAAAAAAALL;
          memset(v45, 0, sizeof(v45));
          v46[1] = v46;
          LOWORD(v47) = bswap32(*v31) >> 16;
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::reserve(v45, v33);
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::push_back[abi:fn200100](v45, &v48);
          if (*a1[3] <= v43)
          {
            goto LABEL_71;
          }

          if (v33 != 1)
          {
            v38 = 2 * (v33 - 1);
            while (1)
            {
              v39 = bswap32(*v32) >> 16;
              if (*a1[3] <= v39)
              {
                break;
              }

              v44 = v39;
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::push_back[abi:fn200100](v45, &v44);
              ++v32;
              v38 -= 2;
              if (!v38)
              {
                goto LABEL_67;
              }
            }

LABEL_71:
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v45);
            return 0;
          }

LABEL_67:
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](v45);
        }
      }

      while (++v23 != v24);
    }

    v6 = v43 + 1;
    if (v43 == v42)
    {
      return 1;
    }
  }
}

const void **std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::reserve(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 1)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v2 = result;
    v3 = result[1] - *result;
    v12[4] = result + 3;
    v4 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<unsigned short,3ul>>((result + 3), a2);
    v5 = (v4 + v3);
    v7 = v4 + 2 * v6;
    v8 = v2[1] - *v2;
    v9 = (v4 + v3 - v8);
    memcpy(v9, *v2, v8);
    v10 = *v2;
    *v2 = v9;
    v2[1] = v5;
    v11 = v2[2];
    v2[2] = v7;
    v12[2] = v10;
    v12[3] = v11;
    v12[0] = v10;
    v12[1] = v10;
    return std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,3ul> &>::~__split_buffer(v12);
  }

  return result;
}

uint64_t *std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(uint64_t *result, __int16 *__src, __int16 *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 1)
  {
    v11 = result[1];
    v12 = v11 - v9;
    if (a4 <= (v11 - v9) >> 1)
    {
      v18 = a3 - __src;
      if (a3 != __src)
      {
        result = memmove(*result, __src, v18);
      }

      i = &v9[v18];
    }

    else
    {
      if (v11 != v9)
      {
        result = memmove(*result, __src, v11 - v9);
        v11 = v7[1];
      }

      v13 = (v6 + v12);
      v14 = v11;
      if ((v6 + v12) != a3)
      {
        v14 = v11;
        v15 = v11;
        do
        {
          v16 = *v13++;
          *v15 = v16;
          v15 += 2;
          v14 += 2;
        }

        while (v13 != a3);
      }

      i = v14;
    }
  }

  else
  {
    if (v9)
    {
      result[1] = v9;
      if (result + 3 <= v9 && result + 30 > v9)
      {
        if (v8 == result[4])
        {
          result[4] = v9;
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

    if ((a4 & 0x8000000000000000) != 0)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    if (v8 <= a4)
    {
      v19 = a4;
    }

    else
    {
      v19 = v8;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v20 = v19;
    }

    result = std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__vallocate[abi:fn200100](v7, v20);
    for (i = v7[1]; v6 != a3; i += 2)
    {
      v21 = *v6++;
      *i = v21;
    }
  }

  v7[1] = i;
  return result;
}

void std::__introsort<std::_ClassicAlgPolicy,std::__less<void,void> &,anonymous namespace::LigInput *,false>(unint64_t a1, unsigned __int16 **a2, uint64_t *a3, char a4)
{
LABEL_1:
  i = a1;
  while (1)
  {
    while (1)
    {
      a1 = i;
      v9 = a2 - i;
      v10 = 0xAAAAAAAAAAAAAAABLL * ((a2 - i) >> 4);
      v11 = v10 - 2;
      if (v10 > 2)
      {
        switch(v10)
        {
          case 3:
            return;
          case 4:
            return;
          case 5:
            return;
        }
      }

      else
      {
        if (v10 < 2)
        {
          return;
        }

        if (v10 == 2)
        {
          v122 = *(a2 - 6);
          v123 = *(a2 - 5);
          a3 = (a2 - 6);
          v124 = *a1;
          v125 = v123 - v122;
          v126 = *(a1 + 8) - *a1;
          if (v125 > v126 >> 1)
          {
            goto LABEL_172;
          }

          if (v123 != v122 && v125 >= v126 >> 1)
          {
            while (1)
            {
              v244 = *v122;
              v245 = *v124;
              v30 = v244 >= v245;
              v31 = v244 == v245;
              if (v244 != v245)
              {
                break;
              }

              ++v122;
              ++v124;
              if (!--v125)
              {
                return;
              }
            }

            goto LABEL_348;
          }

          return;
        }
      }

      if (v9 <= 1151)
      {
        if (a4)
        {
          if (a1 == a2)
          {
            return;
          }

          v128 = a1 + 48;
          if ((a1 + 48) == a2)
          {
            return;
          }

          v129 = a1;
          while (1)
          {
            v130 = v129;
            v129 = v128;
            v131 = *(v130 + 48);
            v132 = *(v129 + 8);
            v133 = *v130;
            v134 = v132 - v131;
            v135 = *(v130 + 8) - *v130;
            if (v134 > v135 >> 1)
            {
              goto LABEL_181;
            }

            v148 = v135 >> 1;
            if (v132 != v131 && v134 >= v148)
            {
              while (1)
              {
                v150 = *v131;
                v151 = *v133;
                if (v150 != v151)
                {
                  break;
                }

                ++v131;
                ++v133;
                if (!--v134)
                {
                  goto LABEL_206;
                }
              }

              if (v150 <= v151)
              {
LABEL_181:
                *&v136 = 0xAAAAAAAAAAAAAAAALL;
                *(&v136 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v275 = v136;
                v276 = v136;
                v274 = v136;
                TInlineVector<unsigned short,3ul>::TInlineVector(&v274, *(v130 + 48), *(v129 + 8));
                WORD4(v276) = *(v130 + 88);
                std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v129, *v130, *(v130 + 8), (*(v130 + 8) - *v130) >> 1);
                *(v129 + 40) = *(v130 + 40);
                v137 = a1;
                if (v130 == a1)
                {
                  goto LABEL_205;
                }

                v138 = v130;
                while (1)
                {
                  v139 = *(v138 - 48);
                  v140 = *(v138 - 40);
                  v138 -= 48;
                  v141 = v274;
                  v142 = (*(&v274 + 1) - v274) >> 1;
                  v143 = v140 - v139;
                  if (v142 <= v143)
                  {
                    if (*(&v274 + 1) == v274 || v142 < v143)
                    {
                      break;
                    }

                    v145 = v139;
                    while (1)
                    {
                      v146 = *v141;
                      v147 = *v145;
                      if (v146 != v147)
                      {
                        break;
                      }

                      ++v141;
                      ++v145;
                      if (!--v142)
                      {
                        goto LABEL_204;
                      }
                    }

                    if (v146 > v147)
                    {
                      break;
                    }
                  }

                  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v130, v139, v140, v143);
                  *(v130 + 40) = *(v130 - 8);
                  v130 = v138;
                  if (v138 == a1)
                  {
                    v137 = a1;
                    goto LABEL_205;
                  }
                }

LABEL_204:
                v137 = v130;
LABEL_205:
                std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v137, v274, *(&v274 + 1), (*(&v274 + 1) - v274) >> 1);
                *(v137 + 40) = WORD4(v276);
                std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v274);
              }
            }

LABEL_206:
            v128 = v129 + 48;
            if ((v129 + 48) == a2)
            {
              return;
            }
          }
        }

        if (a1 == a2)
        {
          return;
        }

        v246 = a1 + 48;
        if ((a1 + 48) == a2)
        {
          return;
        }

        v247 = 0;
        v248 = 48;
        v249 = a1;
        while (1)
        {
          v250 = v247;
          v247 = v248;
          v251 = *v246;
          v252 = *(v246 + 8);
          v253 = *v249;
          v254 = (v252 - *v246) >> 1;
          v255 = v249[1] - *v249;
          if (v254 > v255 >> 1)
          {
            goto LABEL_321;
          }

          v267 = v255 >> 1;
          if (v252 != v251 && v254 >= v267)
          {
            while (1)
            {
              v269 = *v251;
              v270 = *v253;
              if (v269 != v270)
              {
                break;
              }

              ++v251;
              v253 += 2;
              if (!--v254)
              {
                goto LABEL_345;
              }
            }

            if (v269 <= v270)
            {
LABEL_321:
              *&v256 = 0xAAAAAAAAAAAAAAAALL;
              *(&v256 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v275 = v256;
              v276 = v256;
              v274 = v256;
              TInlineVector<unsigned short,3ul>::TInlineVector(&v274, *v246, *(v246 + 8));
              WORD4(v276) = *(v249 + 44);
              v257 = (v250 + a1);
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v246, *(v250 + a1), *(v250 + a1 + 8), (*(v250 + a1 + 8) - *(v250 + a1)) >> 1);
              *(v246 + 40) = *(v250 + a1 + 40);
              while (1)
              {
                a3 = v250;
                v250 -= 6;
                v258 = *(v250 + a1);
                v259 = (*(&v274 + 1) - v274) >> 1;
                v260 = (*(v250 + a1 + 8) - v258) >> 1;
                if (v259 <= v260)
                {
                  if (*(&v274 + 1) == v274 || v259 < v260)
                  {
                    break;
                  }

                  v262 = (*(&v274 + 1) - v274) >> 1;
                  v263 = *(v250 + a1);
                  v264 = v274;
                  while (1)
                  {
                    v265 = *v264;
                    v266 = *v263;
                    if (v265 != v266)
                    {
                      break;
                    }

                    ++v264;
                    ++v263;
                    if (!--v262)
                    {
                      goto LABEL_335;
                    }
                  }

                  if (v265 > v266)
                  {
                    break;
                  }
                }

                std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v257, v258, *(v250 + a1 + 8), v260);
                *(v257 + 20) = *(v250 + a1 + 40);
                v257 = (v250 + a1);
                if (!a3)
                {
                  goto LABEL_347;
                }
              }

LABEL_335:
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v257, v274, *(&v274 + 1), (*(&v274 + 1) - v274) >> 1);
              *(v257 + 20) = WORD4(v276);
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v274);
            }
          }

LABEL_345:
          v249 = (a1 + v247);
          v248 = v247 + 48;
          v246 = a1 + v247 + 48;
          if (v246 == a2)
          {
            return;
          }
        }
      }

      if (!a3)
      {
        if (a1 == a2)
        {
          return;
        }

        v152 = v11 >> 1;
        v153 = v11 >> 1;
        while (1)
        {
          v154 = v153;
          if (v152 >= v153)
          {
            v155 = (2 * v153) | 1;
            v156 = (a1 + 48 * v155);
            if (2 * v153 + 2 < v10)
            {
              v157 = v156[6];
              v158 = *v156;
              v159 = v156[1];
              v160 = v159 - *v156;
              v161 = v156[7] - v157;
              if (v160 > v161 >> 1)
              {
                goto LABEL_215;
              }

              v162 = v161 >> 1;
              if (v159 != v158 && v160 >= v162)
              {
                while (1)
                {
                  v164 = *v158;
                  v165 = *v157;
                  if (v164 != v165)
                  {
                    break;
                  }

                  ++v158;
                  v157 += 2;
                  if (!--v160)
                  {
                    goto LABEL_225;
                  }
                }

                if (v164 <= v165)
                {
LABEL_215:
                  v156 += 6;
                  v155 = 2 * v153 + 2;
                }
              }
            }

LABEL_225:
            v166 = a1 + 48 * v153;
            v167 = *v156;
            v168 = v156[1];
            v169 = *v166;
            v170 = v168 - *v156;
            v171 = *(v166 + 8) - *v166;
            if (v170 <= v171 >> 1)
            {
              v172 = v171 >> 1;
              if (v168 == v167 || v170 < v172)
              {
                goto LABEL_235;
              }

              while (1)
              {
                v174 = *v167;
                v175 = *v169;
                if (v174 != v175)
                {
                  break;
                }

                ++v167;
                ++v169;
                if (!--v170)
                {
                  goto LABEL_235;
                }
              }

              if (v174 > v175)
              {
LABEL_235:
                *&v176 = 0xAAAAAAAAAAAAAAAALL;
                *(&v176 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v275 = v176;
                v276 = v176;
                v274 = v176;
                TInlineVector<unsigned short,3ul>::TInlineVector(&v274, *v166, *(v166 + 8));
                WORD4(v276) = *(v166 + 40);
                v177 = *v156;
                v178 = v156[1];
                v179 = (v178 - *v156) >> 1;
                while (1)
                {
LABEL_236:
                  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v166, v177, v178, v179);
                  *(v166 + 40) = *(v156 + 20);
                  if (v152 < v155)
                  {
                    goto LABEL_261;
                  }

                  v166 = v156;
                  v180 = 2 * v155;
                  v155 = (2 * v155) | 1;
                  v156 = (a1 + 48 * v155);
                  v181 = v180 + 2;
                  if (v181 < v10)
                  {
                    v182 = v156[6];
                    v183 = *v156;
                    v184 = v156[1];
                    v185 = v184 - *v156;
                    v186 = v156[7] - v182;
                    if (v185 > v186 >> 1)
                    {
                      goto LABEL_239;
                    }

                    v187 = v186 >> 1;
                    if (v184 != v183 && v185 >= v187)
                    {
                      while (1)
                      {
                        v189 = *v183;
                        v190 = *v182;
                        if (v189 != v190)
                        {
                          break;
                        }

                        ++v183;
                        v182 += 2;
                        if (!--v185)
                        {
                          goto LABEL_249;
                        }
                      }

                      if (v189 <= v190)
                      {
LABEL_239:
                        v156 += 6;
                        v155 = v181;
                      }
                    }
                  }

LABEL_249:
                  v177 = *v156;
                  v178 = v156[1];
                  v191 = v274;
                  v179 = (v178 - *v156) >> 1;
                  if (v179 > (*(&v274 + 1) - v274) >> 1)
                  {
                    break;
                  }

                  if (v178 != v177 && v179 >= (*(&v274 + 1) - v274) >> 1)
                  {
                    v193 = (v178 - *v156) >> 1;
                    v194 = *v156;
                    while (1)
                    {
                      v195 = *v194;
                      v196 = *v191;
                      if (v195 != v196)
                      {
                        break;
                      }

                      ++v194;
                      ++v191;
                      if (!--v193)
                      {
                        goto LABEL_236;
                      }
                    }

                    if (v195 <= v196)
                    {
                      break;
                    }
                  }
                }

                v156 = v166;
LABEL_261:
                std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v156, v274, *(&v274 + 1), (*(&v274 + 1) - v274) >> 1);
                *(v156 + 20) = WORD4(v276);
                std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v274);
              }
            }
          }

          v153 = v154 - 1;
          if (!v154)
          {
            v197 = 0xAAAAAAAAAAAAAAABLL * (v9 >> 4);
            while (1)
            {
              v198 = a2;
              *&v199 = 0xAAAAAAAAAAAAAAAALL;
              *(&v199 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v272 = v199;
              v273 = v199;
              v271 = v199;
              TInlineVector<unsigned short,3ul>::TInlineVector(&v271, *a1, *(a1 + 8));
              v200 = 0;
              WORD4(v273) = *(a1 + 40);
              v201 = a1;
              do
              {
                v202 = v201;
                v203 = v201 + 48 * v200;
                v201 = v203 + 48;
                v204 = 2 * v200;
                v200 = (2 * v200) | 1;
                v205 = v204 + 2;
                if (v205 < v197)
                {
                  v208 = *(v203 + 96);
                  v206 = v203 + 96;
                  v207 = v208;
                  v209 = *(v206 - 48);
                  v210 = *(v206 - 40);
                  v211 = v210 - v209;
                  v212 = *(v206 + 8) - v208;
                  if (v211 > v212 >> 1)
                  {
                    goto LABEL_267;
                  }

                  v213 = v212 >> 1;
                  if (v210 != v209 && v211 >= v213)
                  {
                    while (1)
                    {
                      v215 = *v209;
                      v216 = *v207;
                      if (v215 != v216)
                      {
                        break;
                      }

                      ++v209;
                      ++v207;
                      if (!--v211)
                      {
                        goto LABEL_277;
                      }
                    }

                    if (v215 <= v216)
                    {
LABEL_267:
                      v201 = v206;
                      v200 = v205;
                    }
                  }
                }

LABEL_277:
                std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v202, *v201, *(v201 + 8), (*(v201 + 8) - *v201) >> 1);
                *(v202 + 40) = *(v201 + 40);
              }

              while (v200 <= ((v197 - 2) >> 1));
              a2 -= 6;
              if (v201 == v198 - 6)
              {
                std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v201, v271, *(&v271 + 1), (*(&v271 + 1) - v271) >> 1);
                *(v201 + 40) = WORD4(v273);
              }

              else
              {
                std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v201, *(v198 - 6), *(v198 - 5), *(v198 - 5) - *(v198 - 6));
                *(v201 + 40) = *(v198 - 4);
                std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v198 - 6, v271, *(&v271 + 1), (*(&v271 + 1) - v271) >> 1);
                *(v198 - 4) = WORD4(v273);
                v217 = v201 - a1 + 48;
                if (v217 >= 49)
                {
                  v218 = 0xAAAAAAAAAAAAAAABLL * (v217 >> 4) - 2;
                  v219 = v218 >> 1;
                  v220 = a1 + 48 * (v218 >> 1);
                  v221 = *v220;
                  v222 = *(v220 + 8);
                  v223 = *v201;
                  v224 = (v222 - *v220) >> 1;
                  v225 = *(v201 + 8) - *v201;
                  if (v224 > v225 >> 1)
                  {
                    goto LABEL_281;
                  }

                  v240 = v225 >> 1;
                  if (v222 != v221 && v224 >= v240)
                  {
                    while (1)
                    {
                      v242 = *v221;
                      v243 = *v223;
                      if (v242 != v243)
                      {
                        break;
                      }

                      ++v221;
                      ++v223;
                      if (!--v224)
                      {
                        goto LABEL_286;
                      }
                    }

                    if (v242 <= v243)
                    {
LABEL_281:
                      *&v226 = 0xAAAAAAAAAAAAAAAALL;
                      *(&v226 + 1) = 0xAAAAAAAAAAAAAAAALL;
                      v275 = v226;
                      v276 = v226;
                      v274 = v226;
                      TInlineVector<unsigned short,3ul>::TInlineVector(&v274, *v201, *(v201 + 8));
                      WORD4(v276) = *(v201 + 40);
                      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v201, *v220, *(v220 + 8), (*(v220 + 8) - *v220) >> 1);
                      *(v201 + 40) = *(v220 + 40);
                      if (v218 >= 2)
                      {
                        while (1)
                        {
                          v232 = v219 - 1;
                          v219 = (v219 - 1) >> 1;
                          v227 = a1 + 48 * v219;
                          v233 = *v227;
                          v234 = *(v227 + 8);
                          v229 = *(&v274 + 1);
                          v228 = v274;
                          v235 = (v234 - *v227) >> 1;
                          if (v235 <= (*(&v274 + 1) - v274) >> 1)
                          {
                            v230 = (*(&v274 + 1) - v274) >> 1;
                            if (v234 == v233 || v235 < v230)
                            {
                              break;
                            }

                            v237 = 0;
                            while (1)
                            {
                              v238 = v233[v237];
                              v239 = *(v274 + 2 * v237);
                              if (v238 != v239)
                              {
                                break;
                              }

                              if (v235 == ++v237)
                              {
                                goto LABEL_284;
                              }
                            }

                            if (v238 > v239)
                            {
                              break;
                            }
                          }

                          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v220, *v227, *(v227 + 8), (v234 - *v227) >> 1);
                          *(v220 + 40) = *(v227 + 40);
                          v220 = a1 + 48 * v219;
                          if (v232 < 2)
                          {
                            goto LABEL_283;
                          }
                        }
                      }

                      v227 = v220;
LABEL_283:
                      v229 = *(&v274 + 1);
                      v228 = v274;
                      v230 = (*(&v274 + 1) - v274) >> 1;
                      v220 = v227;
LABEL_284:
                      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v220, v228, v229, v230);
                      *(v220 + 40) = WORD4(v276);
                      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v274);
                    }
                  }
                }
              }

LABEL_286:
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v271);
              if (v197-- <= 2)
              {
                return;
              }
            }
          }
        }
      }

      v12 = v10 >> 1;
      v13 = a1 + 48 * (v10 >> 1);
      if (v9 < 0x1801)
      {
      }

      else
      {
        v14 = 3 * v12;
        *&v15 = 0xAAAAAAAAAAAAAAAALL;
        *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v275 = v15;
        v276 = v15;
        v274 = v15;
        TInlineVector<unsigned short,3ul>::TInlineVector(&v274, *a1, *(a1 + 8));
        WORD4(v276) = *(a1 + 40);
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a1, *v13, *(v13 + 8), (*(v13 + 8) - *v13) >> 1);
        *(a1 + 40) = *(v13 + 40);
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v13, v274, *(&v274 + 1), (*(&v274 + 1) - v274) >> 1);
        *(v13 + 40) = WORD4(v276);
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v274);
      }

      a3 = (a3 - 1);
      if (a4)
      {
        break;
      }

      v16 = *(a1 - 48);
      v17 = *(a1 - 40);
      v18 = *a1;
      v19 = v17 - v16;
      v20 = *(a1 + 8) - *a1;
      if (v19 > v20 >> 1)
      {
        break;
      }

      if (v17 != v16 && v19 >= v20 >> 1)
      {
        while (1)
        {
          v21 = *v16;
          v22 = *v18;
          if (v21 != v22)
          {
            break;
          }

          ++v16;
          ++v18;
          if (!--v19)
          {
            goto LABEL_20;
          }
        }

        if (v21 <= v22)
        {
          break;
        }
      }

LABEL_20:
      *&v23 = 0xAAAAAAAAAAAAAAAALL;
      *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v272 = v23;
      v273 = v23;
      v271 = v23;
      TInlineVector<unsigned short,3ul>::TInlineVector(&v271, *a1, *(a1 + 8));
      WORD4(v273) = *(a1 + 40);
      v25 = *(&v271 + 1);
      v24 = v271;
      v26 = *(a2 - 6);
      v27 = (*(&v271 + 1) - v271) >> 1;
      v28 = *(a2 - 5) - v26;
      if (v27 > v28 >> 1)
      {
        goto LABEL_21;
      }

      if (*(&v271 + 1) != v271 && v27 >= v28 >> 1)
      {
        v86 = (*(&v271 + 1) - v271) >> 1;
        v87 = v271;
        while (1)
        {
          v88 = *v87;
          v89 = *v26;
          if (v88 != v89)
          {
            break;
          }

          ++v87;
          v26 += 2;
          if (!--v86)
          {
            goto LABEL_121;
          }
        }

        if (v88 <= v89)
        {
LABEL_21:
          v29 = (a1 + 48);
          for (i = a1; ; v29 = (i + 48))
          {
            v30 = v29 >= a2;
            v31 = v29 == a2;
            if (v29 == a2)
            {
              break;
            }

            v32 = *(i + 48);
            v33 = *(i + 56);
            i = v29;
            if (v27 > (v33 - v32) >> 1)
            {
              goto LABEL_132;
            }

            if (*(&v271 + 1) != v271 && v27 >= (v33 - v32) >> 1)
            {
              v34 = (*(&v271 + 1) - v271) >> 1;
              v35 = v271;
              while (1)
              {
                v36 = *v35;
                v37 = *v32;
                if (v36 != v37)
                {
                  break;
                }

                ++v35;
                ++v32;
                if (!--v34)
                {
                  goto LABEL_31;
                }
              }

              if (v36 <= v37)
              {
                goto LABEL_132;
              }
            }

LABEL_31:
            ;
          }

          goto LABEL_347;
        }
      }

LABEL_121:
      i = a1 + 48;
      v90 = a1;
      while (i < a2)
      {
        v91 = *(v90 + 48);
        v92 = *(v90 + 56);
        v90 = i;
        v93 = v92 - v91;
        if (v27 > v93 >> 1)
        {
          break;
        }

        if (*(&v271 + 1) != v271 && v27 >= v93 >> 1)
        {
          v94 = (*(&v271 + 1) - v271) >> 1;
          v95 = v271;
          while (1)
          {
            v96 = *v95;
            v97 = *v91;
            if (v96 != v97)
            {
              break;
            }

            ++v95;
            ++v91;
            if (!--v94)
            {
              goto LABEL_131;
            }
          }

          if (v96 <= v97)
          {
            break;
          }
        }

LABEL_131:
        i += 48;
      }

LABEL_132:
      v98 = a2;
      if (i < a2)
      {
        v98 = a2;
        v30 = a2 >= a1;
        v31 = a2 == a1;
        if (a2 == a1)
        {
          goto LABEL_347;
        }

        while (1)
        {
          v99 = *(v98 - 6);
          v100 = *(v98 - 5);
          v98 -= 6;
          v101 = v100 - v99;
          if (v27 <= v101 >> 1)
          {
            if (*(&v271 + 1) == v271 || v27 < v101 >> 1)
            {
              break;
            }

            v102 = (*(&v271 + 1) - v271) >> 1;
            v103 = v271;
            while (1)
            {
              v104 = *v103;
              v105 = *v99;
              if (v104 != v105)
              {
                break;
              }

              ++v103;
              ++v99;
              if (!--v102)
              {
                goto LABEL_165;
              }
            }

            if (v104 > v105)
            {
              break;
            }
          }

          v30 = v98 >= a1;
          v31 = v98 == a1;
          if (v98 == a1)
          {
            goto LABEL_347;
          }
        }
      }

LABEL_165:
      if (i < v98)
      {
        *&v106 = 0xAAAAAAAAAAAAAAAALL;
        *(&v106 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v275 = v106;
        v276 = v106;
        v274 = v106;
        TInlineVector<unsigned short,3ul>::TInlineVector(&v274, *i, *(i + 8));
        WORD4(v276) = *(i + 40);
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(i, *v98, v98[1], v98[1] - *v98);
        *(i + 40) = *(v98 + 20);
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v98, v274, *(&v274 + 1), (*(&v274 + 1) - v274) >> 1);
        *(v98 + 20) = WORD4(v276);
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v274);
        v107 = i + 48;
        v30 = i + 48 >= a2;
        v31 = i + 48 == a2;
        if ((i + 48) != a2)
        {
          v25 = *(&v271 + 1);
          v24 = v271;
          v108 = (*(&v271 + 1) - v271) >> 1;
          while (1)
          {
            v109 = *(i + 48);
            v110 = *(i + 56);
            i = v107;
            if (v108 > (v110 - v109) >> 1)
            {
              break;
            }

            if (*(&v271 + 1) != v271 && v108 >= (v110 - v109) >> 1)
            {
              v111 = (*(&v271 + 1) - v271) >> 1;
              v112 = v271;
              while (1)
              {
                v113 = *v112;
                v114 = *v109;
                if (v113 != v114)
                {
                  break;
                }

                ++v112;
                ++v109;
                if (!--v111)
                {
                  goto LABEL_154;
                }
              }

              if (v113 <= v114)
              {
                break;
              }
            }

LABEL_154:
            v107 = i + 48;
            v30 = i + 48 >= a2;
            v31 = i + 48 == a2;
            if ((i + 48) == a2)
            {
              goto LABEL_347;
            }
          }

          while (1)
          {
            v30 = v98 >= a1;
            v31 = v98 == a1;
            if (v98 == a1)
            {
              break;
            }

            v115 = *(v98 - 6);
            v116 = *(v98 - 5);
            v98 -= 6;
            v117 = v116 - v115;
            if (v108 <= v117 >> 1)
            {
              if (*(&v271 + 1) == v271 || v108 < v117 >> 1)
              {
                goto LABEL_165;
              }

              v118 = (*(&v271 + 1) - v271) >> 1;
              v119 = v271;
              while (1)
              {
                v120 = *v119;
                v121 = *v115;
                if (v120 != v121)
                {
                  break;
                }

                ++v119;
                ++v115;
                if (!--v118)
                {
                  goto LABEL_165;
                }
              }

              if (v120 > v121)
              {
                goto LABEL_165;
              }
            }
          }
        }

        goto LABEL_347;
      }

      if (i - 48 != a1)
      {
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a1, *(i - 48), *(i - 40), (*(i - 40) - *(i - 48)) >> 1);
        *(a1 + 40) = *(i - 8);
        v25 = *(&v271 + 1);
        v24 = v271;
      }

      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>((i - 48), v24, v25, v25 - v24);
      *(i - 8) = WORD4(v273);
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v271);
      a4 = 0;
    }

    *&v38 = 0xAAAAAAAAAAAAAAAALL;
    *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v272 = v38;
    v273 = v38;
    v271 = v38;
    TInlineVector<unsigned short,3ul>::TInlineVector(&v271, *a1, *(a1 + 8));
    WORD4(v273) = *(a1 + 40);
    v39 = a1 + 48;
    v30 = a1 + 48 >= a2;
    v31 = a1 + 48 == a2;
    if ((a1 + 48) == a2)
    {
      goto LABEL_347;
    }

    v41 = *(&v271 + 1);
    v40 = v271;
    v42 = (*(&v271 + 1) - v271) >> 1;
    v43 = a1;
    while (1)
    {
      v44 = v39;
      v45 = *(v43 + 48);
      v46 = *(v43 + 56);
      v47 = v46 - v45;
      if (v47 <= v42)
      {
        if (v46 == v45 || v47 < v42)
        {
          break;
        }

        v49 = v271;
        while (1)
        {
          v50 = *v45;
          v51 = *v49;
          if (v50 != v51)
          {
            break;
          }

          ++v45;
          ++v49;
          if (!--v47)
          {
            goto LABEL_48;
          }
        }

        if (v50 > v51)
        {
          break;
        }
      }

      v39 = v44 + 48;
      v43 = v44;
      v30 = v44 + 48 >= a2;
      v31 = v44 + 48 == a2;
      if ((v44 + 48) == a2)
      {
        goto LABEL_347;
      }
    }

LABEL_48:
    v52 = a2;
    if (v43 == a1)
    {
      if (v44 < a2)
      {
        v60 = *(a2 - 6);
        v61 = *(a2 - 5);
        v62 = v61 - v60;
        v52 = a2 - 6;
        if (v62 <= v42)
        {
          v52 = a2 - 6;
          do
          {
            if (v61 == v60 || v62 < v42)
            {
LABEL_71:
              if (v44 >= v52)
              {
                break;
              }
            }

            else
            {
              v63 = v271;
              while (1)
              {
                v64 = *v60;
                v65 = *v63;
                if (v64 != v65)
                {
                  break;
                }

                ++v60;
                ++v63;
                if (!--v62)
                {
                  goto LABEL_71;
                }
              }

              if (v64 <= v65 || v44 >= v52)
              {
                break;
              }
            }

            v60 = *(v52 - 6);
            v61 = *(v52 - 5);
            v52 -= 6;
            v62 = v61 - v60;
          }

          while (v62 <= v42);
        }
      }
    }

    else
    {
      v30 = a2 >= a1;
      v31 = a2 == a1;
      if (a2 == a1)
      {
        goto LABEL_347;
      }

      while (1)
      {
        v53 = *(v52 - 6);
        v54 = *(v52 - 5);
        v52 -= 6;
        v55 = v54 - v53;
        if (v55 > v42)
        {
          break;
        }

        if (v54 != v53 && v55 >= v42)
        {
          v57 = v271;
          while (1)
          {
            v58 = *v53;
            v59 = *v57;
            if (v58 != v59)
            {
              break;
            }

            ++v53;
            ++v57;
            if (!--v55)
            {
              goto LABEL_61;
            }
          }

          if (v58 <= v59)
          {
            break;
          }
        }

LABEL_61:
        v30 = v52 >= a1;
        v31 = v52 == a1;
        if (v52 == a1)
        {
          goto LABEL_347;
        }
      }
    }

    i = v44;
    if (v44 < v52)
    {
      break;
    }

LABEL_108:
    if (i - 48 != a1)
    {
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a1, *(i - 48), *(i - 40), (*(i - 40) - *(i - 48)) >> 1);
      *(a1 + 40) = *(i - 8);
      v41 = *(&v271 + 1);
      v40 = v271;
    }

    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>((i - 48), v40, v41, v41 - v40);
    *(i - 8) = WORD4(v273);
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v271);
    if (v44 >= v52)
    {
      {
        a2 = (i - 48);
        if (v85)
        {
          return;
        }

        goto LABEL_1;
      }

      if (v85)
      {
        continue;
      }
    }

    a4 = 0;
  }

  i = v44;
  v67 = v52;
LABEL_80:
  *&v68 = 0xAAAAAAAAAAAAAAAALL;
  *(&v68 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v275 = v68;
  v276 = v68;
  v274 = v68;
  TInlineVector<unsigned short,3ul>::TInlineVector(&v274, *i, *(i + 8));
  WORD4(v276) = *(i + 40);
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(i, *v67, *(v67 + 8), (*(v67 + 8) - *v67) >> 1);
  *(i + 40) = *(v67 + 40);
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(v67, v274, *(&v274 + 1), (*(&v274 + 1) - v274) >> 1);
  *(v67 + 40) = WORD4(v276);
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v274);
  v69 = i + 48;
  v30 = i + 48 >= a2;
  v31 = i + 48 == a2;
  if ((i + 48) == a2)
  {
    goto LABEL_347;
  }

  v41 = *(&v271 + 1);
  v40 = v271;
  v70 = (*(&v271 + 1) - v271) >> 1;
  while (1)
  {
    v71 = *(i + 48);
    v72 = *(i + 56);
    i = v69;
    v73 = v72 - v71;
    if (v73 <= v70)
    {
      break;
    }

LABEL_93:
    v69 = i + 48;
    v30 = i + 48 >= a2;
    v31 = i + 48 == a2;
    if ((i + 48) == a2)
    {
      goto LABEL_347;
    }
  }

  if (v72 != v71 && v73 >= v70)
  {
    v75 = v271;
    while (1)
    {
      v76 = *v71;
      v77 = *v75;
      if (v76 != v77)
      {
        break;
      }

      ++v71;
      ++v75;
      if (!--v73)
      {
        goto LABEL_95;
      }
    }

    if (v76 > v77)
    {
      goto LABEL_95;
    }

    goto LABEL_93;
  }

LABEL_95:
  while (1)
  {
    v30 = v67 >= a1;
    v31 = v67 == a1;
    if (v67 == a1)
    {
      break;
    }

    v78 = *(v67 - 48);
    v79 = *(v67 - 40);
    v67 -= 48;
    v80 = v79 - v78;
    if (v80 <= v70)
    {
      if (v79 == v78 || v80 < v70)
      {
        continue;
      }

      v82 = v271;
      while (1)
      {
        v83 = *v78;
        v84 = *v82;
        if (v83 != v84)
        {
          break;
        }

        ++v78;
        ++v82;
        if (!--v80)
        {
          goto LABEL_95;
        }
      }

      if (v83 > v84)
      {
        continue;
      }
    }

    if (i < v67)
    {
      goto LABEL_80;
    }

    goto LABEL_108;
  }

LABEL_347:
  __break(1u);
LABEL_348:
  if (v31 || !v30)
  {
LABEL_172:
    *&v127 = 0xAAAAAAAAAAAAAAAALL;
    *(&v127 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v275 = v127;
    v276 = v127;
    v274 = v127;
    TInlineVector<unsigned short,3ul>::TInlineVector(&v274, *a1, *(a1 + 8));
    WORD4(v276) = *(a1 + 40);
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a1, *(a2 - 6), *(a2 - 5), *(a2 - 5) - *(a2 - 6));
    *(a1 + 40) = *(a2 - 4);
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<unsigned short const*>,std::__wrap_iter<unsigned short const*>>(a3, v274, *(&v274 + 1), (*(&v274 + 1) - v274) >> 1);
    *(a2 - 4) = WORD4(v276);
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,3ul>>::__destroy_vector::operator()[abi:fn200100](&v274);
  }
}