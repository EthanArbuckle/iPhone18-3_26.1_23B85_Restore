void TLine::ResetLine(TLine *this, const TCharStream *a2)
{
  v4 = (*(this + 3) - *(this + 2)) >> 3;
  if (v4 < 1)
  {
LABEL_9:
    TKerningEngine::PositionGlyphs(this, a2, 4);

    TLine::SyncWithRuns(this);
  }

  else
  {
    v5 = 0;
    while (1)
    {
      v6 = *(this + 2);
      if (v5 >= (*(this + 3) - v6) >> 3)
      {
        break;
      }

      v7 = *(*(v6 + 8 * v5) + 48);
      if ((*(v7 + 178) & 0x40) == 0)
      {
        v8 = *(atomic_load_explicit((v7 + 56), memory_order_acquire) + 40);
        RenderingStyle = TAttributes::GetRenderingStyle((v7 + 40));
        TStorageRange::ResetAdvances(v7 + 192, v8, RenderingStyle & 0xFFFFFFFFFFLL);
        v10 = *(v7 + 312);
        if (v10)
        {
          v11 = *(v10 + 56);
          if (v11 != *(v10 + 64))
          {
            *(v10 + 64) = v11;
          }
        }
      }

      if (v4 == ++v5)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }
}

double TLine::GetHangingWidth(TLine *this)
{
  TLine::GetLeftHangersGlyphCountAndWidth(this, 0);
  v3 = v2;
  TLine::GetRightHangersGlyphCountAndWidth(this, 0);
  v5 = v4;
  if ((*(this + 76) & 8) != 0)
  {
    TLine::GetLeftWhitespaceGlyphCountAndWidth(this);
  }

  else
  {
    TLine::GetRightWhitespaceGlyphCountAndWidth(this);
  }

  return v3 + v5 - v6;
}

void TStorageRange::ResetAdvances(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a1 + 16);
  if ((*(a1 + 33) & 4) != 0)
  {
    if (v4 < 1)
    {
      return;
    }

    for (i = 0; i != v4; ++i)
    {
      [*(a1 + 24) customAdvanceForIndex:i + *(a1 + 8)];
      v17.height = 0.0;
      TStorageRange::SetAdvance(a1, i, v17);
    }
  }

  else
  {
    v6 = *(a1 + 8);
    v7 = *(a1 + 24);
    v8 = v7[3];
    if (v8)
    {
      v9 = (v8 + 8 * v6);
      v10 = a2;
      v11 = v7[2] + 2 * v6;
      v12 = 1;
    }

    else
    {
      v9 = (v7[4] + 16 * v6);
      v10 = a2;
      v11 = v7[2] + 2 * v6;
      v12 = 2;
    }

    TFont::GetAdvancesForGlyphs(v10, v11, v9, v12, v4, 0, a3, 0);
    *a1 = v14;
  }

  if ((*(a1 + 33) & 0x10) != 0 && v4 >= 1)
  {
    v15 = 0;
    v16 = MEMORY[0x1E695EFF8];
    do
    {
      [*(a1 + 24) setOrigin:v15++ atIndex:{*v16, v16[1]}];
    }

    while (v4 != v15);
  }
}

size_t *std::vector<long,TInlineBufferAllocator<long,30ul>>::reserve(size_t *result, unint64_t a2)
{
  v2 = *result;
  if (a2 > (result[2] - *result) >> 3)
  {
    if (a2 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v3 = result;
    v11 = 0xAAAAAAAAAAAAAAAALL;
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v9 = v4;
    v10 = v4;
    std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(&v9, a2, (result[1] - v2) >> 3, (result + 3));
    v5 = v3[1] - *v3;
    v6 = *(&v9 + 1) - v5;
    memcpy((*(&v9 + 1) - v5), *v3, v5);
    v7 = *v3;
    *v3 = v6;
    v8 = v3[2];
    *(v3 + 1) = v10;
    *&v10 = v7;
    *(&v10 + 1) = v8;
    *&v9 = v7;
    *(&v9 + 1) = v7;
    return std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v9);
  }

  return result;
}

void *std::__hash_table<std::__hash_value_type<TRun const*,long>,std::__unordered_map_hasher<TRun const*,std::__hash_value_type<TRun const*,long>,std::hash<TRun const*>,std::equal_to<TRun const*>,true>,std::__unordered_map_equal<TRun const*,std::__hash_value_type<TRun const*,long>,std::equal_to<TRun const*>,std::hash<TRun const*>,true>,std::allocator<std::__hash_value_type<TRun const*,long>>>::__emplace_unique_key_args<TRun const*,std::piecewise_construct_t const&,std::tuple<TRun const* const&>,std::tuple<>>(void *a1, unint64_t a2)
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

uint64_t CTLineCreateJustifiedLineWithOptions(uint64_t a1, const TLine *a2, double a3, double a4)
{
  v4 = 0;
  if (a1 && a4 >= 0.0)
  {
    v5 = 1.0;
    if (a3 <= 1.0)
    {
      v5 = a3;
    }

    v6 = a3 < 0.0;
    v7 = 0.0;
    if (!v6)
    {
      v7 = v5;
    }

    TJustEngine::CreateJustifiedLine(*(a1 + 40), a2, v7, a4, &v10);
    ExternalizeLine(&v10);
    v4 = v8;
  }

  return v4;
}

uint64_t TKerningEngine::PositionGlyphs(TKerningEngine *this, TLine *a2, const TCharStream *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  memcpy(__dst, &__const__ZN14TKerningEngine14PositionGlyphsER5TLineRK11TCharStreama_glyphs, sizeof(__dst));
  TRunGlue::TRunGlue(__dst, this);
  v7 = TKerningEngine::PositionGlyphs(__dst, a2, a3, v6);
  std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](&__dst[448]);
  v9 = &__dst[256];
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v9);
  v9 = &__dst[216];
  std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__destroy_vector::operator()[abi:fn200100](&v9);
  v9 = &__dst[56];
  std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](&v9);
  return v7;
}

void TLine::LinkRunsWithOrder(void *a1, uint64_t *a2)
{
  v47[1] = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  v3 = a1[3];
  if (v3 - v2 == a2[1] - *a2)
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v46[14] = v6;
    v7 = (v3 - v2) >> 3;
    v46[13] = v6;
    v46[12] = v6;
    v46[11] = v6;
    v46[10] = v6;
    v46[9] = v6;
    v46[8] = v6;
    v46[7] = v6;
    v46[6] = v6;
    v46[5] = v6;
    v46[4] = v6;
    v46[2] = v6;
    v46[3] = v6;
    v46[0] = v6;
    v46[1] = v6;
    v45 = 0uLL;
    v44 = 0;
    v47[0] = v46;
    if (v3 != v2)
    {
      if (v7 >> 61)
      {
        goto LABEL_41;
      }

      v43 = 0xAAAAAAAAAAAAAAAALL;
      v41 = v6;
      v42 = v6;
      std::__split_buffer<TRun *,TInlineBufferAllocator<TRun *,30ul> &>::__split_buffer(&v41, (v3 - v2) >> 3, 0, v46);
      v8 = (*(&v41 + 1) - (v45 - v44));
      memcpy(v8, v44, v45 - v44);
      v9 = v44;
      v10 = *(&v45 + 1);
      v44 = v8;
      v45 = v42;
      *&v42 = v9;
      *(&v42 + 1) = v10;
      *&v41 = v9;
      *(&v41 + 1) = v9;
      std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v41);
      v2 = a1[2];
      v3 = a1[3];
    }

    if (v2 != v3)
    {
      v11 = v45;
      do
      {
        v12 = *(*v2 + 48);
        if (v11 >= *(&v45 + 1))
        {
          v43 = 0xAAAAAAAAAAAAAAAALL;
          *&v13 = 0xAAAAAAAAAAAAAAAALL;
          *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v41 = v13;
          v42 = v13;
          v14 = (v11 - v44) >> 3;
          v15 = v14 + 1;
          if ((v14 + 1) >> 61)
          {
            goto LABEL_41;
          }

          v16 = *(&v45 + 1) - v44;
          if ((*(&v45 + 1) - v44) >> 2 > v15)
          {
            v15 = v16 >> 2;
          }

          if (v16 >= 0x7FFFFFFFFFFFFFF8)
          {
            v17 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v17 = v15;
          }

          std::__split_buffer<TRun *,TInlineBufferAllocator<TRun *,30ul> &>::__split_buffer(&v41, v17, v14, v46);
          *v42 = v12;
          *&v42 = v42 + 8;
          v18 = (*(&v41 + 1) - (v45 - v44));
          memcpy(v18, v44, v45 - v44);
          v19 = v44;
          v20 = *(&v45 + 1);
          v44 = v18;
          v40 = v42;
          v45 = v42;
          *&v42 = v19;
          *(&v42 + 1) = v20;
          *&v41 = v19;
          *(&v41 + 1) = v19;
          std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v41);
          v11 = v40;
        }

        else
        {
          *v11 = v12;
          v11 += 8;
        }

        *&v45 = v11;
        v2 += 8;
      }

      while (v2 != v3);
    }

    if (v7 >= 1)
    {
      v21 = 0;
      v23 = *a2;
      v22 = a2[1];
      while (v21 < (v22 - v23) >> 3)
      {
        v24 = *(v23 + 8 * v21);
        v25 = v21;
        v26 = v21;
        while (v21 != v24)
        {
          v27 = v44;
          v28 = (v45 - v44) >> 3;
          if (v28 <= v25)
          {
            goto LABEL_40;
          }

          v26 = v24;
          if (v28 <= v24)
          {
            goto LABEL_40;
          }

          v29 = *(v44 + v25);
          *(v44 + v25) = *(v44 + v24);
          v27[v24] = v29;
          v23 = *a2;
          v22 = a2[1];
          v30 = (v22 - *a2) >> 3;
          if (v30 <= v25)
          {
            goto LABEL_40;
          }

          *(v23 + 8 * v25) = v25;
          if (v30 <= v26)
          {
            goto LABEL_40;
          }

          v24 = *(v23 + 8 * v26);
          v25 = v26;
        }

        *(v23 + 8 * v26) = v26;
        if (++v21 == v7)
        {
          goto LABEL_28;
        }
      }

LABEL_40:
      __break(1u);
LABEL_41:
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

LABEL_28:
    v31 = v44;
    v32 = v45;
    if (v44 != v45)
    {
      v33 = a1 + 12;
      v34 = a1[11];
      v35 = v44;
      while (1)
      {
        v36 = *v35;
        if (v34)
        {
          break;
        }

        v37 = 0;
        v38 = 0;
        a1[11] = v36;
        v34 = v36;
        v39 = a1 + 12;
        if (v36)
        {
          goto LABEL_33;
        }

LABEL_34:
        *v39 = 0;
        ++v35;
        v34 = v38;
        if (v35 == v32)
        {
          goto LABEL_35;
        }
      }

      v37 = *v33;
      *(*v33 + 24) = v36;
LABEL_33:
      *(v36 + 32) = v37;
      *v33 = v36;
      v39 = (v36 + 24);
      v38 = v34;
      goto LABEL_34;
    }

LABEL_35:
    if (v31)
    {
      *&v45 = v31;
      if (v46 > v31 || v47 <= v31)
      {
        operator delete(v31);
      }
    }
  }
}

uint64_t TLine::GetRightWhitespaceGlyphCountAndWidth(uint64_t this)
{
  v1 = 0;
  v2 = *(this + 16);
  v3 = (*(this + 24) - v2) >> 3;
  v4 = v2 - 8;
  v5 = 0.0;
  v6 = v3;
  while (1)
  {
    v7 = v6 - 1;
    if (v6 < 1)
    {
      return v1;
    }

    if (v3 <= v7)
    {
      break;
    }

    v8 = *(*(v4 + 8 * v6) + 40);
    this = TRun::GetRightWhitespaceGlyphCountAndWidth(v8);
    v1 += this;
    v5 = v5 + v9;
    v6 = v7;
    if (this < *(v8 + 26))
    {
      return v1;
    }
  }

  __break(1u);
  return this;
}

uint64_t TInstanceFont::TInstanceFont(uint64_t a1, CGFont *a2, __CFDictionary *a3)
{
  CreateCopyOfFontWithVariation(a2, a3, &v6);
  TBaseFont::TBaseFont(a1, atomic_load_explicit(&v6, memory_order_acquire));

  *a1 = &unk_1EF25A9B0;
  *(a1 + 624) = 0;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0;
  *(a1 + 632) = 0u;
  TInstanceFont::InitWithVariation(a1, atomic_load_explicit((a1 + 104), memory_order_acquire), a3, 0);
  return a1;
}

CGFont *CreateCopyOfFontWithVariation@<X0>(CGFont *a1@<X0>, const __CFDictionary *a2@<X1>, CGFont **a3@<X8>)
{
  if (a1 && a2)
  {
    result = CGFontCreateCopyWithVariations(a1, a2);
  }

  else
  {
    result = a1;
  }

  *a3 = result;
  return result;
}

void std::__function::__func<void({block_pointer})(double,long,BOOL,BOOL *),std::allocator<void({block_pointer})(double,long,BOOL,BOOL *)>,void ()(double,long,BOOL,BOOL *)>::destroy(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2)
  {
    _Block_release(v2);
  }

  *(a1 + 8) = 0;
}

double TLine::GetVisibleGlyphRangeAndWidth@<D0>(TLine *this@<X0>, uint64_t a2@<X8>)
{
  if ((*(this + 76) & 8) != 0)
  {
    LeftWhitespaceGlyphCountAndWidth = TLine::GetLeftWhitespaceGlyphCountAndWidth(this);
    v6 = LeftWhitespaceGlyphCountAndWidth;
  }

  else
  {
    LeftWhitespaceGlyphCountAndWidth = TLine::GetRightWhitespaceGlyphCountAndWidth(this);
    v6 = 0;
  }

  v7 = *(this + 18) - LeftWhitespaceGlyphCountAndWidth;
  result = *(this + 13) - v5;
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = result;
  return result;
}

void *std::__split_buffer<TRun *,TInlineBufferAllocator<TRun *,30ul> &>::__split_buffer(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v7 = *(a4 + 240);
    v6 = (a4 + 240);
    v5 = v7;
    v8 = v7 + 8 * a2;
    if (v8 > v6)
    {
      if (!(a2 >> 61))
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

  v9 = v5 + 8 * a3;
  *a1 = v5;
  a1[1] = v9;
  a1[2] = v9;
  a1[3] = v5 + 8 * a2;
  return a1;
}

uint64_t TLine::GetUnanchoredGlyphRange(uint64_t this, CFRange a2)
{
  v2 = *(this + 152);
  if ((v2 & 2) == 0)
  {
    return a2.location;
  }

  location = a2.length + a2.location - 1;
  v4 = *(this + 16);
  v5 = *(this + 24);
  if ((v2 & 8) != 0)
  {
    v7 = (v5 - v4) >> 3;
    v6 = -1;
    v8 = a2.length + a2.location - 1;
    location = a2.location;
  }

  else
  {
    v6 = 1;
    v7 = -1;
    v8 = a2.location;
  }

  if (v4 == v5)
  {
    v13 = 0;
    v10 = *(this + 16);
  }

  else
  {
    v9 = 0;
    v10 = *(this + 16);
    v11 = v10;
    while (1)
    {
      v12 = *(*(*v11 + 40) + 208) + v9;
      if (v12 > location)
      {
        break;
      }

      v11 += 8;
      v10 += 8;
      v9 = v12;
      if (v11 == v5)
      {
        v13 = 0;
        v10 = *(this + 24);
        goto LABEL_12;
      }
    }

    v13 = location - v9;
  }

LABEL_12:
  if (v5 - v4 > (v10 - v4))
  {
    v34 = v8;
    v35 = *(this + 16);
    v37 = a2.location;
    v14 = (v10 - v4) >> 3;
    v15 = *(*v10 + 40);
    v16 = -v6;
    v17 = v6;
    v18 = (v5 - v4) >> 3;
    v19 = v4 - 8 * v6;
    v20 = -v6;
    v36 = v7;
    v21 = v20 - v7;
    while (1)
    {
      if (*(v15 + 225))
      {
        this = TStorageRange::FindTabGlyph((v15 + 192), v13, v16, 0);
        if ((this & 0x8000000000000000) == 0)
        {
          break;
        }
      }

      if (!(v21 + v14))
      {
        a2.location = v37;
        return a2.location;
      }

      if (v18 <= v20 + v14)
      {
        goto LABEL_48;
      }

      v13 = 0;
      v22 = v14 - v17;
      v15 = *(*(v19 + 8 * v14) + 40);
      v14 -= v17;
      if ((v2 & 8) == 0)
      {
        v13 = *(v15 + 208) - 1;
        v14 = v22;
      }
    }

    a2.location = v37;
    if (v14 == v36)
    {
      return a2.location;
    }

    if (v35 == v5)
    {
      v24 = v35;
    }

    else
    {
      v23 = 0;
      v24 = v35;
      v25 = v35;
      while (1)
      {
        v26 = *(*(*v25 + 40) + 208) + v23;
        if (v26 > v34)
        {
          break;
        }

        v25 += 8;
        v24 += 8;
        v23 = v26;
        if (v25 == v5)
        {
          v24 = v5;
          goto LABEL_29;
        }
      }

      v13 = v34 - v23;
    }

LABEL_29:
    v27 = v24 - v35;
    v28 = v27 >> 3;
    if (v27 >> 3 == v14)
    {
      v29 = 0;
    }

    else
    {
      if (v18 <= v28)
      {
        goto LABEL_48;
      }

      if ((v2 & 8) != 0)
      {
        v29 = v13 + 1;
      }

      else
      {
        v29 = *(*(*(v35 + v27) + 40) + 208) - v13;
      }

      for (i = v28 + v17; v14 != i; i += v17)
      {
        if (i < 0)
        {
          break;
        }

        if (v18 <= i)
        {
          break;
        }

        v29 += *(*(*(v35 + 8 * i) + 40) + 208);
      }
    }

    if (v18 > v14)
    {
      if ((v2 & 8) != 0)
      {
        v31 = *(*(*(v35 + 8 * v14) + 40) + 208) - this;
      }

      else
      {
        v31 = this + 1;
      }

      v32 = v31 + v29;
      if ((v2 & 8) != 0)
      {
        v33 = 0;
      }

      else
      {
        v33 = v32;
      }

      a2.location = v33 + v37;
      return a2.location;
    }
  }

LABEL_48:
  __break(1u);
  return this;
}

double TLine::ClearLine(TLine *this)
{
  v2 = *(this + 2);
  v3 = *(this + 3);
  if (v2 != v3)
  {
    do
    {
      v4 = *v2++;
    }

    while (v2 != v3);
    v2 = *(this + 2);
  }

  *(this + 3) = v2;
  result = 0.0;
  *(this + 120) = 0u;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 136) = 0u;
  *(this + 149) = 0;
  *(this + 16) = 0xFFEFFFFFFFFFFFFFLL;
  return result;
}

uint64_t TBaseFont::TBaseFont(uint64_t a1, id a2)
{
  *(a1 + 8) = 0;
  *a1 = &unk_1EF2598E8;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0;
  *(a1 + 104) = a2;
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
  v4 = MEMORY[0x1E695EFF8];
  v5 = MEMORY[0x1E695F058];
  *(a1 + 248) = 0;
  v6 = v5[1];
  *(a1 + 304) = *v5;
  *(a1 + 320) = v6;
  *(a1 + 288) = *v4;
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
  TBaseFont::Init(a1, a2);
  return a1;
}

void CreateFontURLFromFont(CGFont *a1@<X0>, BOOL *a2@<X1>, atomic_ullong *a3@<X8>)
{
  *a2 = 0;
  *a3 = CGFontCopyURL();
  if (!atomic_load_explicit(a3, memory_order_acquire))
  {
    v9 = 0xAAAAAAAAAAAAAAAALL;
    v8 = CGFontCopyPostScriptName(a1);
    FindAndReplace(&v9, &v8, @";", @"/");

    if (atomic_load_explicit(&v9, memory_order_acquire))
    {

      v6 = *MEMORY[0x1E695E480];
      v7 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"file://iNmEmOrYcGfOnT_%p#postscript-name=%@", a1, atomic_load_explicit(&v9, memory_order_acquire));

      if (atomic_load_explicit(a3, memory_order_acquire))
      {
        *a2 = 1;
      }
    }
  }
}

uint64_t TCombiningEngine::ResolveCombiningMarks(unint64_t **a1, int a2, _BYTE *a3, char *a4)
{
  v381 = *MEMORY[0x1E69E9840];
  v6 = *a1;
  v7 = (*a1)[5];
  if (v7 == -1)
  {
    TRunGlue::ComputeEndIndex(*a1);
    v7 = v6[5];
  }

  v8 = v6[6];
  if (v8 >= 1)
  {
    if (a2 == 1)
    {
      v9 = -1;
    }

    else
    {
      v9 = 1;
    }

    if (a2 == 1)
    {
      v10 = 0;
    }

    else
    {
      v10 = a2;
    }

    v337 = v9;
    v336 = -86;
    if (!v10)
    {
      if (a3)
      {
        *a3 = 1;
      }

      if (!a4)
      {
        a4 = &v336;
      }
    }

    v328 = a4;
    v330 = 0;
    v11 = &v354;
    v12 = v8 + v7;
    v13 = a1;
    v333 = v10;
    v332 = v8 + v7;
    while (1)
    {
      v335 = -86;
      NextUncombinedCharRange = TRunGlue::GetNextUncombinedCharRange(*v13, v7, &v335, &v337);
      if (NextUncombinedCharRange >= v12)
      {
        goto LABEL_574;
      }

      v16 = NextUncombinedCharRange;
      v17 = v15;
      if (v15 <= 0)
      {
        v90 = NextUncombinedCharRange + 1;
        goto LABEL_128;
      }

      v18 = *v13;
      v19 = (*v13)[5];
      if (v19 == -1)
      {
        TRunGlue::ComputeEndIndex(*v13);
        v19 = v18[5];
      }

      v20 = v19 + v18[6];
      if (v16 + v17 >= v20)
      {
        v21 = v19 + v18[6];
      }

      else
      {
        v21 = (v16 + v17);
      }

      v22 = (v21 - v19);
      v23 = v16 <= v19 && v19 < v16 + v17;
      if (v23)
      {
        v24 = v19;
      }

      else
      {
        v24 = 0;
      }

      if (!v23)
      {
        v22 = 0;
      }

      v25 = &v21[-v16];
      v26 = v19 <= v16 && v16 < v20;
      if (v26)
      {
        v27 = v16;
      }

      else
      {
        v27 = v24;
      }

      if (v26)
      {
        v28 = v25;
      }

      else
      {
        v28 = v22;
      }

      if (v27 != v16 || v28 != v17)
      {
        goto LABEL_574;
      }

      if (v10 == 2 && v335)
      {
        ClusterRangeForRange = TCharStream::GetClusterRangeForRange(v13[1], v16, v17, 2);
        if (ClusterRangeForRange != v16 || v30 != v17)
        {
          v17 = 0;
          v90 = ClusterRangeForRange + v30;
LABEL_128:
          v7 = v17 + v90;
          goto LABEL_148;
        }
      }

      *&v31 = 0xAAAAAAAAAAAAAAAALL;
      *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v359[2] = v31;
      v359[3] = v31;
      v359[0] = v31;
      v359[1] = v31;
      memset(v358, 0, sizeof(v358));
      v360 = v359;
      v32 = TCharStream::LazyCopyChars(v13[1], v16, v17);
      if (!v32)
      {
        goto LABEL_573;
      }

      v33 = v32;
      v334 = v16 + v17;
      *&v34 = 0xAAAAAAAAAAAAAAAALL;
      *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v356[13] = v34;
      v356[14] = v34;
      v356[11] = v34;
      v356[12] = v34;
      v356[9] = v34;
      v356[10] = v34;
      v356[7] = v34;
      v356[8] = v34;
      v356[5] = v34;
      v356[6] = v34;
      v356[3] = v34;
      v356[4] = v34;
      v356[1] = v34;
      v356[2] = v34;
      v356[0] = v34;
      v355 = 0uLL;
      v354 = 0;
      v357 = v356;
      TRunGlue::GetMappedCharsInRange(*v13, v16, v17, &v354);
      v35 = v354;
      if (v10)
      {
        *&v36 = 0xAAAAAAAAAAAAAAAALL;
        *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
      }

      else
      {
        v37 = 0;
        *&v36 = 0xAAAAAAAAAAAAAAAALL;
        *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
        do
        {
          if (*(v33 + 2 * v37) == 847)
          {
            v38 = v37 + v16;
            v340 = (v37 + v16);
            v39 = v355;
            if (v35 != v355)
            {
              while (*v35 != v38)
              {
                v35 += 8;
                if (v35 == v355)
                {
                  goto LABEL_56;
                }
              }
            }

            if (v35 == v355)
            {
LABEL_56:
              v40 = v354;
              v41 = v355 - v354;
              if (v355 == v354)
              {
                v11 = v355;
              }

              else
              {
                v42 = v41 >> 3;
                v11 = v354;
                do
                {
                  v43 = v42 >> 1;
                  v44 = (v11 + 8 * (v42 >> 1));
                  v46 = *v44;
                  v45 = v44 + 1;
                  v42 += ~(v42 >> 1);
                  if (v46 < v38)
                  {
                    v11 = v45;
                  }

                  else
                  {
                    v42 = v43;
                  }
                }

                while (v42);
              }

              if (v355 >= *(&v355 + 1))
              {
                v374 = 0uLL;
                v47 = (v41 >> 3) + 1;
                if (v47 >> 61)
                {
LABEL_576:
                  std::__throw_bad_array_new_length[abi:fn200100]();
                }

                if ((*(&v355 + 1) - v354) >> 2 > v47)
                {
                  v47 = (*(&v355 + 1) - v354) >> 2;
                }

                if (*(&v355 + 1) - v354 >= 0x7FFFFFFFFFFFFFF8uLL)
                {
                  v48 = 0x1FFFFFFFFFFFFFFFLL;
                }

                else
                {
                  v48 = v47;
                }

                v375[2] = v356;
                if (v48)
                {
                  v49 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<long,30ul>>(v356, v48);
                }

                else
                {
                  v49 = 0;
                }

                v50 = v11 - v40;
                v51 = (v11 - v40) >> 3;
                v52 = (v49 + 8 * v51);
                v53 = v49 + 8 * v48;
                v375[1] = v53;
                if (v51 == v48)
                {
                  if (v50 < 1)
                  {
                    v56 = v50 >> 2;
                    if (v11 == v40)
                    {
                      v57 = 1;
                    }

                    else
                    {
                      v57 = v56;
                    }

                    *&v361[32] = v356;
                    v58 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<long,30ul>>(v356, v57);
                    *v361 = v49;
                    *&v361[8] = v52;
                    v375[1] = v58 + 8 * v59;
                    v60 = (v58 + 8 * (v57 >> 2));
                    *&v361[16] = v52;
                    *&v361[24] = v53;
                    std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(v361);
                    v52 = v60;
                  }

                  else
                  {
                    v52 = (v52 - (((v50 >> 1) + 4) & 0xFFFFFFFFFFFFFFF8));
                  }
                }

                *v52 = v340;
                v375[0] = v52 + 1;
                memcpy(v52 + 1, v11, v355 - v11);
                v375[0] += v355 - v11;
                *&v355 = v11;
                v61 = v11 - v354;
                v11 = &v354;
                v62 = v52 - v61;
                memcpy(v52 - v61, v354, v61);
                v63 = v354;
                v354 = v62;
                *(&v374 + 1) = v63;
                v64 = *(&v355 + 1);
                v65 = *v375;
                v375[0] = v63;
                v355 = v65;
                v375[1] = v64;
                *&v374 = v63;
                std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v374);
                v35 = v355;
                v10 = v333;
                *&v36 = 0xAAAAAAAAAAAAAAAALL;
                *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
              }

              else
              {
                if (v11 == v355)
                {
                  *v355 = v38;
                  *&v355 = v39 + 8;
                  v35 = (v39 + 8);
                }

                else
                {
                  if (v355 < 8)
                  {
                    v35 = v355;
                  }

                  else
                  {
                    *v355 = *(v355 - 8);
                    v35 = (v39 + 8);
                  }

                  *&v355 = v35;
                  if (v39 != v11 + 8)
                  {
                    memmove((v11 + 8), v11, v39 - (v11 + 8));
                    *&v36 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v35 = v355;
                  }

                  if (v35 < v11)
                  {
                    goto LABEL_572;
                  }

                  v54 = v35 <= &v340 || v11 > &v340;
                  v55 = 1;
                  if (v54)
                  {
                    v55 = 0;
                  }

                  *v11 = v341[v55 - 1];
                }

                v11 = &v354;
              }
            }
          }

          ++v37;
        }

        while (v37 != v17);
        v35 = v354;
        v13 = a1;
      }

      v66 = v355;
      if (v35 != v355)
      {
        do
        {
          v67 = *v35;
          v68 = *v35 - v16;
          if ((*(v33 + 2 * v68) & 0xFC00) == 0xD800)
          {
            v69 = v68 + 1;
            if (v69 == v17)
            {
              break;
            }

            if ((*(v33 + 2 * v69) & 0xFC00) == 0xDC00)
            {
              v35 += 8;
              if (v35 == v66 || *v35 != v69)
              {
                *v361 = v67 + 1;
                v70 = std::vector<long,TInlineBufferAllocator<long,30ul>>::insert(&v354, v35, v361);
                *&v36 = 0xAAAAAAAAAAAAAAAALL;
                *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
                v35 = v70;
                v66 = v355;
              }
            }
          }

          v35 += 8;
        }

        while (v35 != v66);
        v35 = v354;
      }

      if (v35 == v66)
      {
        goto LABEL_146;
      }

      if (v10)
      {
        if (v10 == 2)
        {
          if (!v335)
          {
            v71 = *v35;
            v72 = **v13;
            RunWithCharIndex = TLine::FindRunWithCharIndex(v72, v71, 1);
            v74 = *(v72 + 16);
            if (RunWithCharIndex >= (*(v72 + 24) - v74) >> 3)
            {
              goto LABEL_572;
            }

            v75 = *(*(v74 + 8 * RunWithCharIndex) + 48);
            v76 = *(atomic_load_explicit((v75 + 56), memory_order_acquire) + 40);
            LOWORD(v374) = *(*(*(v75 + 216) + 16) + 2 * *(v75 + 200) + 2 * TRun::GetGlyphIndexForCharIndex<false>(v75, v71));
            *&v77 = -1;
            *(&v77 + 1) = -1;
            *v361 = v77;
            *&v361[16] = v77;
            v384.origin.x = TFont::GetBoundingBoxesForGlyphs(v76, &v374, v361, 1, kCTFontOrientationDefault);
            MinX = CGRectGetMinX(v384);
            if (MinX < 0.0)
            {
              GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(v75, v71);
              v80 = GlyphIndexForChar;
              v81 = *(v75 + 216);
              v82 = *(v81 + 32);
              if (v82 || (v97 = *(v81 + 24)) == 0)
              {
                v83 = v82 + 16 * *(v75 + 200) + 16 * GlyphIndexForChar;
                v84 = *(v83 + 8);
              }

              else
              {
                v83 = v97 + 8 * *(v75 + 200) + 8 * GlyphIndexForChar;
                v84 = 0;
              }

              v98 = *v83 - MinX;
              TStorageRange::SetAdvance((v75 + 192), GlyphIndexForChar, *(&v84 - 1));
              [*(v75 + 216) setOrigin:*(v75 + 200) + v80 atIndex:{-MinX, 0.0}];
              if (*MEMORY[0x1E695EFF8] != -MinX || *(MEMORY[0x1E695EFF8] + 8) != 0.0)
              {
                *(v75 + 225) |= 0x10u;
              }
            }

            v330 |= MinX < 0.0;
            v35 = v354;
            v66 = v355;
            *&v36 = 0xAAAAAAAAAAAAAAAALL;
            *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
          }

          if ((v66 - v35) >= 9)
          {
            *&v361[56] = v36;
            *&v361[72] = v36;
            *&v361[24] = v36;
            *&v361[40] = v36;
            memset(v361, 0, 24);
            *&v362 = &v361[24];
            while (v35 != v66)
            {
              v99 = *v35;
              v35 += 8;
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](v361, (v33 + 2 * (v99 - v16)));
            }

            *&v374 = 0xAAAAAAAAAAAAAAAALL;
            *&v374 = **v13;
            v330 |= TGlyphComposer::ComposeGlyphs(&v374, v16, v361, &v354);
            *&v374 = v361;
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v374);
          }
        }

LABEL_146:
        v12 = v332;
        v7 = v334;
        goto LABEL_147;
      }

      if (!v335 || v17 != (v66 - v35) >> 3)
      {
        v88 = 1;
        v89 = a3;
        v12 = v332;
        v7 = v16 + v17;
        goto LABEL_124;
      }

      v85 = **v13;
      v7 = v16 + v17;
      if (v85)
      {
        AttributesAtCharIndex = TLine::GetAttributesAtCharIndex(v85, v16);
        if (!AttributesAtCharIndex)
        {
          goto LABEL_134;
        }

        v87 = (atomic_load_explicit((AttributesAtCharIndex + 16), memory_order_acquire) + 40);
        *&v36 = 0xAAAAAAAAAAAAAAAALL;
        *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
      }

      else
      {
        v87 = (*v13 + 62);
      }

      v91 = *v87;
      if (!*v87)
      {
LABEL_134:
        v88 = 1;
        v89 = a3;
        v12 = v332;
        goto LABEL_124;
      }

      v352[2] = v36;
      v352[3] = v36;
      v352[0] = v36;
      v352[1] = v36;
      v350 = 0;
      v351 = 0;
      v349 = 0;
      v353 = v352;
      v92 = v354;
      v93 = v355;
      v327 = v91;
      if (v354 == v355)
      {
        v96 = 0;
        v95 = 0;
      }

      else
      {
        do
        {
          v94 = *v92;
          v92 += 8;
          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::push_back[abi:fn200100](&v349, (v33 + 2 * (v94 - v16)));
        }

        while (v92 != v93);
        v96 = v349;
        v95 = v350;
        *&v36 = 0xAAAAAAAAAAAAAAAALL;
        *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
      }

      v347[2] = v36;
      v347[3] = v36;
      v347[0] = v36;
      v347[1] = v36;
      v345 = 0;
      v346 = 0;
      v348 = v347;
      v342[13] = v36;
      v342[14] = v36;
      v342[11] = v36;
      v342[12] = v36;
      v342[9] = v36;
      v342[10] = v36;
      v342[7] = v36;
      v342[8] = v36;
      v342[5] = v36;
      v342[6] = v36;
      v342[3] = v36;
      v342[4] = v36;
      v342[1] = v36;
      v342[2] = v36;
      v342[0] = v36;
      v341[0] = 0;
      v341[1] = 0;
      v340 = 0;
      v343 = v342;
      v344 = 0;
      v100 = v95 - v96;
      v12 = v332;
      if (v95 != v96)
      {
        std::vector<long,TInlineBufferAllocator<long,30ul>>::__vallocate[abi:fn200100](&v340, v100 >> 1);
        v101 = v341[0];
        bzero(v341[0], (4 * v100) & 0xFFFFFFFFFFFFFFF8);
        v102 = &v101[4 * v100];
        v341[0] = v102;
        v103 = v340;
        if (v340 != v102)
        {
          v104 = 0;
          v105 = (v102 - v340 - 8) >> 3;
          v106 = vdupq_n_s64(v105);
          v107 = xmmword_18475A340;
          do
          {
            v108 = vmovn_s64(vcgeq_u64(v106, v107));
            if (v108.i8[0])
            {
              *(v103 + 8 * v104) = v104;
            }

            if (v108.i8[4])
            {
              *(v103 + 8 * v104 + 8) = v104 + 1;
            }

            v104 += 2;
            v107 = vaddq_s64(v107, vdupq_n_s64(2uLL));
          }

          while (((v105 + 2) & 0x3FFFFFFFFFFFFFFELL) != v104);
        }
      }

      v109 = v349;
      v110 = *v349;
      if ((v110 & 0xFC00) == 0xD800)
      {
        break;
      }

      v13 = a1;
      if (v110 < 0x600)
      {
        goto LABEL_200;
      }

      if (v110 >= 0x700)
      {
        if (v110 < 0x750)
        {
          goto LABEL_200;
        }

        if (v110 >= 0x780)
        {
          if (v110 < 0x8A0)
          {
            goto LABEL_200;
          }

LABEL_161:
          v111 = *v349;
          v112 = 1;
LABEL_168:
          v114 = v111 < 0x900 || (v111 & 0x7FFFFFC0) == 69312;
          if (!v114)
          {
LABEL_200:
            v124 = v337 >> 31;
            v115 = v350;
LABEL_201:
            if (v349 == v115)
            {
LABEL_572:
              __break(1u);
LABEL_573:
              *(v11 + 368) = v358;
              std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v361);
              goto LABEL_574;
            }

            if (v110 >= 0x590 && (v110 < 0x600 || (v110 + 1251) <= 0x32u))
            {
              while (1)
              {
                v109 += 2;
                if (v109 == v115)
                {
                  break;
                }

                v125 = *v109;
                if (v125 >= 0x590)
                {
                  if (v125 < 0x600)
                  {
                    continue;
                  }

                  v126 = (v125 + 1251) < 0x33u;
                }

                else
                {
                  v126 = 0;
                }

                if (v125 != 847 && !v126)
                {
                  goto LABEL_221;
                }
              }

              if (v124)
              {
                v128 = &v349;
                v129 = DecomposeInitialChar(&v349, &v340, &v344);
                if (v129)
                {
                  *v328 = 1;
                  v128 = &v344;
                }

                v130 = ApplyModifiedCombiningClasses(v128, 0, &v340, &v344);
                v131 = v327;
                if (TBaseFont::GetCommonTable(v327[51], 1801810552, 0))
                {
                  HasFeature = 1;
                  goto LABEL_242;
                }

                CommonTable = TBaseFont::GetCommonTable(v327[51], 1196445523, 0);
                if (CommonTable)
                {
                  v138 = CommonTable;
                  *&v361[80] = 0xAAAAAAAAAAAAAAAALL;
                  *&v139 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v139 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  *&v361[48] = v139;
                  *&v361[64] = v139;
                  *&v361[16] = v139;
                  *&v361[32] = v139;
                  *v361 = v139;
                  v140 = TBaseFont::GetCommonTable(v327[51], 1195656518, 0);
                  OTL::GDEF::GDEF(v361, v140);
                  v375[8] = 0xAAAAAAAAAAAAAAAALL;
                  v131 = v327;
                  *&v141 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v141 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  *&v375[4] = v141;
                  *&v375[6] = v141;
                  *v375 = v141;
                  *&v375[2] = v141;
                  v374 = v141;
                  OTL::GCommon::GCommon(&v374, 1, v327, v138, v361, 1751474802, 0);
                  *&v374 = &unk_1EF2587A8;
                  HasFeature = OTL::GCommon::HasFeature(&v374, 0x6D61726Bu);
                  v7 = v16 + v17;
LABEL_242:
                  if (v130)
                  {
                    if (HasFeature)
                    {
                      goto LABEL_254;
                    }

                    goto LABEL_249;
                  }

                  if (!HasFeature)
                  {
LABEL_260:
                    if (v129)
                    {
                      v144 = &v344;
                    }

                    else
                    {
                      v144 = &v349;
                    }

                    if (TCombiningEngine::ComposeHebrewPresentationForms(v144, &v344, v131[51]))
                    {
                      while (1)
                      {
                        v145 = v340 + 8;
                        if (v341[0] == v340 + 8)
                        {
                          goto LABEL_572;
                        }

                        v146 = (v341[0] - (v340 + 16));
                        if (v341[0] != v340 + 16)
                        {
                          memmove(v340 + 8, v340 + 16, v341[0] - (v340 + 16));
                        }

                        v341[0] = &v146[v145];
                        if (v345 - v344 != v350 - v349)
                        {
                          break;
                        }

                        v147 = memcmp(v344, v349, v345 - v344);
                        v129 = v147 != 0;
                        if (v147)
                        {
                          goto LABEL_271;
                        }

                        v148 = &v349;
LABEL_272:
                        if ((TCombiningEngine::ComposeHebrewPresentationForms(v148, &v344, v131[51]) & 1) == 0)
                        {
                          goto LABEL_273;
                        }
                      }

                      v129 = 1;
LABEL_271:
                      v148 = &v344;
                      goto LABEL_272;
                    }
                  }
                }

                else
                {
                  v7 = v16 + v17;
                  if ((v130 & 1) == 0)
                  {
                    goto LABEL_260;
                  }

LABEL_249:
                  if (TCombiningEngine::ComposeHebrewPresentationForms(&v344, &v344, v131[51]))
                  {
                    do
                    {
                      AdjustIndexesForPairwiseComposition(&v340);
                      v129 = v345 - v344 != v350 - v349 || memcmp(v344, v349, v345 - v344) != 0;
                    }

                    while ((TCombiningEngine::ComposeHebrewPresentationForms(&v344, &v344, v131[51]) & 1) != 0);
                  }

LABEL_254:
                  if (v341[0] != v340)
                  {
                    v142 = 0;
                    while (v142 == *&v340[8 * v142])
                    {
                      if ((v341[0] - v340) >> 3 == ++v142)
                      {
                        goto LABEL_273;
                      }
                    }

                    goto LABEL_259;
                  }
                }

LABEL_273:
                if (v129)
                {
                  v133 = 0;
                  v143 = 8;
                  goto LABEL_275;
                }

                goto LABEL_281;
              }
            }

LABEL_221:
            if (u_getIntPropertyValue(v110, UCHAR_HANGUL_SYLLABLE_TYPE) || !TCharComposer::ComposeChars(v349, (v350 - v349) >> 1, &v344, 0) || v345 - v344 >= (v350 - v349))
            {
              goto LABEL_277;
            }

            goto LABEL_224;
          }

          goto LABEL_173;
        }
      }

      v112 = 1;
LABEL_173:
      v115 = v350;
      v116 = (v350 - v349) >> 1;
      while (v112 != v116)
      {
        v117 = v112 + 1;
        v118 = *&v349[2 * v112];
        if ((v118 & 0xFC00) == 0xD800)
        {
          v119 = (v350 - v349) >> 1;
          if (v117 != v116)
          {
            v120 = *&v349[2 * v117];
            v121 = (v120 & 0xFC00) == 56320;
            v122 = (v118 << 10) - 56613888 + v120;
            v119 = v121 ? v112 + 2 : v112 + 1;
            if (v121)
            {
              v118 = v122;
            }
          }

          goto LABEL_183;
        }

        if (v118 >= 0x600)
        {
          if (v118 < 0x700)
          {
            goto LABEL_187;
          }

          if (v118 >= 0x750)
          {
            if (v118 < 0x780)
            {
              goto LABEL_187;
            }

            if (v118 >= 0x8A0)
            {
              if (v118 >= 0x900)
              {
                v119 = v112 + 1;
LABEL_183:
                v123 = (v118 & 0x7FFFFFC0) == 69312;
                v112 = v119;
                goto LABEL_189;
              }

LABEL_187:
              v123 = 1;
              goto LABEL_188;
            }
          }
        }

        v123 = 0;
LABEL_188:
        ++v112;
LABEL_189:
        if (v118 != 847 && !v123)
        {
          goto LABEL_200;
        }
      }

      if ((v337 & 0x80000000) == 0)
      {
        v124 = 0;
        goto LABEL_201;
      }

      v134 = &v349;
      v135 = DecomposeInitialChar(&v349, &v340, &v344);
      if (v135)
      {
        *v328 = 1;
        v134 = &v344;
      }

      if (!ApplyModifiedCombiningClasses(v134, 1, &v340, &v344))
      {
        if (ComposeArabicDecompositions(v134, &v340, &v344))
        {
          v12 = v332;
          if (v345 - v344 == v350 - v349 && !memcmp(v344, v349, v345 - v344))
          {
            goto LABEL_277;
          }

LABEL_224:
          v133 = 0;
          v322 = 8;
          goto LABEL_276;
        }

LABEL_281:
        v88 = 1;
LABEL_282:
        v12 = v332;
        goto LABEL_278;
      }

      v129 = v135 | ComposeArabicDecompositions(&v344, &v340, &v344);
      if (v341[0] == v340)
      {
        goto LABEL_273;
      }

      v136 = 0;
      while (v136 == *&v340[8 * v136])
      {
        if ((v341[0] - v340) >> 3 == ++v136)
        {
          goto LABEL_273;
        }
      }

LABEL_259:
      v133 = &v340;
      v143 = v341;
LABEL_275:
      v322 = v143;
      v12 = v332;
LABEL_276:
      if ((*(*v327[51] + 696))(v327[51]))
      {
LABEL_277:
        v88 = 1;
        goto LABEL_278;
      }

      v149 = v349;
      v318 = v350;
      v150 = v344;
      *&v151 = 0xAAAAAAAAAAAAAAAALL;
      *(&v151 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v379[2] = v151;
      v379[3] = v151;
      v379[0] = v151;
      v379[1] = v151;
      v376 = 0;
      v378 = 0;
      v377 = 0;
      v380 = v379;
      v152 = v345 - v344;
      v153 = (v345 - v344) >> 1;
      v325 = v133;
      if (v345 == v344)
      {
        v156 = 0;
      }

      else
      {
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__vallocate[abi:fn200100](&v376, (v345 - v344) >> 1);
        v154 = v377;
        bzero(v377, ((v152 - 2) & 0xFFFFFFFFFFFFFFFELL) + 2);
        v155 = (v154 + v152);
        v133 = v325;
        v377 = v155;
        v150 = v344;
        v156 = v376;
      }

      v157 = (*(*v327[51] + 672))(v327[51], v150, v156, v153);
      v314 = v133 != 0;
      v10 = v333;
      if (v133 && v153 >= 1 && v157 != v153)
      {
        v158 = 0;
        v159 = v376;
        v160 = v377 - v376;
        v161 = v344;
        v162 = (v345 - v344) >> 1;
        while (v160 != v158)
        {
          if (!v159[v158])
          {
            if (v162 <= v158)
            {
              goto LABEL_572;
            }

            if (v161[v158] == 847)
            {
              v159[v158] = -1;
              if (++v157 == v153)
              {
                goto LABEL_295;
              }
            }
          }

          if (v153 == ++v158)
          {
            goto LABEL_294;
          }
        }

        goto LABEL_572;
      }

LABEL_294:
      if (v157 != v153)
      {
        *v361 = &v376;
        std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v361);
        v88 = 1;
        v13 = a1;
        goto LABEL_278;
      }

LABEL_295:
      v316 = v153;
      v338 = -1;
      v163 = **a1;
      if (v163)
      {
        v164 = TLine::FindRunWithCharIndex(**a1, v16, 1);
        v338 = v164;
        v165 = *(v163 + 16);
        if (v164 >= (*(v163 + 24) - v165) >> 3)
        {
          goto LABEL_572;
        }

        v11 = *(*(v165 + 8 * v164) + 48);
      }

      else
      {
        v11 = 0;
      }

      *&v166 = 0xAAAAAAAAAAAAAAAALL;
      *(&v166 + 1) = 0xAAAAAAAAAAAAAAAALL;
      if (v133)
      {
        for (i = *v133; i != *v322; ++i)
        {
          if (*i >= v17)
          {
            v11 = &v354;
            *v361 = &v376;
            std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v361);
            v88 = 1;
            v13 = a1;
            goto LABEL_282;
          }
        }
      }

      *&v375[27] = v166;
      *&v375[29] = v166;
      v312 = (v318 - v149) >> 1;
      *&v375[23] = v166;
      *&v375[25] = v166;
      *&v375[19] = v166;
      *&v375[21] = v166;
      *&v375[15] = v166;
      *&v375[17] = v166;
      *&v375[11] = v166;
      *&v375[13] = v166;
      *&v375[7] = v166;
      *&v375[9] = v166;
      *&v375[3] = v166;
      *&v375[5] = v166;
      *&v375[1] = v166;
      v374 = 0uLL;
      v375[0] = 0;
      v375[31] = &v375[1];
      if (!v133)
      {
        v13 = a1;
        goto LABEL_375;
      }

      v13 = a1;
      if (!v11)
      {
        goto LABEL_375;
      }

      v168 = *(v11 + 8);
      if (v168 < v7 && *(v11 + 16) + v168 >= v7)
      {
        if ((*(v11 + 225) & 2) != 0)
        {
          v382.location = v16;
          v382.length = v17;
          TLine::SetLevelRange(v163, v382, *(v11 + 224), 0);
          TRunGlue::TRunGlue(v361, v163);
          TRunGlue::operator=(*a1, v361);
          std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](v373);
          v339 = &v371 + 1;
          std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v339);
          v339 = v370;
          std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__destroy_vector::operator()[abi:fn200100](&v339);
          v339 = &v361[56];
          std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](&v339);
          v314 = 1;
        }

        else
        {
          v314 = 0;
        }

        goto LABEL_373;
      }

      v169 = v16;
      do
      {
        v170 = *(v11 + 8);
        if (v170 > v169 || *(v11 + 16) + v170 <= v169)
        {
          v172 = v338 + 1;
          v338 = v172;
          v173 = *(v163 + 16);
          if (v172 >= (*(v163 + 24) - v173) >> 3)
          {
            goto LABEL_572;
          }

          v11 = *(*(v173 + 8 * v172) + 48);
        }

        v174 = TRun::GetGlyphIndexForCharIndex<false>(v11, v169);
        TLine::SeparateCharWithGlyphIndex(v163, &v338, v174);
        ++v169;
      }

      while (v169 < v7);
      v175 = *v325;
      if (v312 >= v316)
      {
LABEL_361:
        v203 = *v322;
        if ((*v322 - v175) >> 3 >= 1)
        {
          v204 = (*v322 - v175) >> 3;
          v205 = 0;
          while (v205 < (v203 - v175) >> 3)
          {
            v206 = v175[v205];
            v207 = v205;
            v11 = v205;
            while (v205 != v206)
            {
              v11 = v206;
              v208 = TLine::FindRunWithCharIndex(v163, v207 + v16, 1);
              v209 = TLine::FindRunWithCharIndex(v163, v11 + v16, 1);
              v210 = *(v163 + 16);
              v211 = (*(v163 + 24) - v210) >> 3;
              if (v211 <= v208)
              {
                goto LABEL_572;
              }

              if (v211 <= v209)
              {
                goto LABEL_572;
              }

              v212 = *(v210 + 8 * v208);
              *(v210 + 8 * v208) = *(v210 + 8 * v209);
              *(v210 + 8 * v209) = v212;
              *(v163 + 154) |= 0x40u;
              v203 = *v322;
              v175 = *v325;
              v213 = (*v322 - *v325) >> 3;
              if (v213 <= v207)
              {
                goto LABEL_572;
              }

              v175[v207] = v207;
              if (v213 <= v11)
              {
                goto LABEL_572;
              }

              v206 = v175[v11];
              v207 = v11;
            }

            v175[v11] = v11;
            if (++v205 == v204)
            {
              goto LABEL_372;
            }
          }

          goto LABEL_572;
        }

LABEL_372:
        TRunGlue::TRunGlue(v361, v163);
        v13 = a1;
        TRunGlue::operator=(*a1, v361);
        std::__function::__value_func<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::~__value_func[abi:fn200100](v373);
        v339 = &v371 + 1;
        std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v339);
        v339 = v370;
        std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__destroy_vector::operator()[abi:fn200100](&v339);
        v339 = &v361[56];
        std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](&v339);
        v314 = 0;
        v133 = 0;
        v10 = v333;
        v7 = v16 + v17;
LABEL_373:
        v214 = TLine::FindRunWithCharIndex(v163, v16, 1);
        v338 = v214;
        v215 = *(v163 + 16);
        if (v214 >= (*(v163 + 24) - v215) >> 3)
        {
          goto LABEL_572;
        }

        v11 = *(*(v215 + 8 * v214) + 48);
LABEL_375:
        v326 = v133;
        if (v312 == v316)
        {
          if (!v133)
          {
            goto LABEL_380;
          }

LABEL_383:
          v219 = v133 != 0;
          if (v133)
          {
            v220 = v312 - v316;
            if (v312 > v316)
            {
              v221 = *v326;
              *v361 = 0;
              v222 = std::vector<long,TInlineBufferAllocator<long,30ul>>::insert(v326, (v221 + 8), v312 - v316, v361);
              v223 = 0;
              v224 = &v222[8 * v220];
              v225 = vdupq_n_s64((8 * v220 - 8) >> 3);
              do
              {
                v226 = vmovn_s64(vcgeq_u64(v225, vorrq_s8(vdupq_n_s64(v223), xmmword_18475A340)));
                if (v226.i8[0])
                {
                  *&v222[8 * v223] = v223 + 1;
                }

                if (v226.i8[4])
                {
                  *&v222[8 * v223 + 8] = v223 + 2;
                }

                v223 += 2;
              }

              while (((((8 * v312 - 8 * v316 - 8) >> 3) + 2) & 0x3FFFFFFFFFFFFFFELL) != v223);
              for (j = v326[1]; v224 != j; v224 += 8)
              {
                *v224 += v220;
              }

              v219 = 1;
            }
          }

          if (v11)
          {
            v311 = v219;
            goto LABEL_398;
          }

          v243 = *v13;
          if (v219)
          {
            v244 = *v326;
          }

          else
          {
            v244 = 0;
          }

LABEL_497:
          v11 = &v354;
          v12 = v332;
          v218 = TRunGlue::ReplaceCharRangeWithGlyphs(v243, v16, v17, &v344, &v376, v244);
          goto LABEL_560;
        }

        ShapingType = TBaseFont::GetShapingType(v327[51]);
        if (v133 || ShapingType != 2)
        {
          goto LABEL_383;
        }

LABEL_380:
        if (v377 == v376)
        {
          goto LABEL_572;
        }

        v217 = *v376;
        if (v217 == TRunGlue::GetGlyphIDForCharIndex(*v13, v16))
        {
          v218 = 0;
          goto LABEL_558;
        }

        if (!v11)
        {
          v244 = 0;
          v243 = *v13;
          goto LABEL_497;
        }

        v311 = 0;
LABEL_398:
        if (v345 == v344)
        {
          goto LABEL_572;
        }

        if ((*v344 & 0xF800) == 0xD800)
        {
          v228 = v16 + 1;
        }

        else
        {
          v228 = v16;
        }

        v323 = v228;
        v320 = v17 - v316;
        if (v17 - v316 >= 1)
        {
          v229 = v17 - v316;
          do
          {
            v230 = *(v163 + 16);
            v231 = (*(v163 + 24) - v230) >> 3;
            if (v231 >= 1)
            {
              v232 = v323 + v229;
              while (1)
              {
                v233 = *(*v230 + 48);
                v234 = *(v233 + 8);
                if (v234 <= v232 && *(v233 + 16) + v234 > v232)
                {
                  break;
                }

                v230 += 8;
                if (!--v231)
                {
                  goto LABEL_424;
                }
              }

              v236 = TRun::GetGlyphIndexForCharIndex<false>(*(*v230 + 48), v323 + v229);
              v237 = *(v233 + 216);
              v238 = *(v233 + 200);
              if (*(v237[6] + 8 * v238 + 8 * v236) == v232)
              {
                v239 = v236;
                [v237 setGlyph:0xFFFFLL atIndex:v238 + v236];
                if ((*(v233 + 225) & 2) != 0)
                {
                  *(v233 + 225) |= 8u;
                }

                [*(v233 + 216) setProps:*(*(*(v233 + 216) + 40) + 4 * *(v233 + 200) + 4 * v239) | 0x20u atIndex:*(v233 + 200) + v239];
                TStorageRange::SetAdvance((v233 + 192), v239, *MEMORY[0x1E695F060]);
                if (v314 && v311)
                {
                  if (v232 - v16 >= ((v326[1] - *v326) >> 3))
                  {
                    goto LABEL_572;
                  }

                  v240 = *(*v326 + 8 * (v232 - v16)) + v16;
                  if (v240 != v232)
                  {
                    v241 = *(v233 + 8);
                    if (v241 <= v240 && *(v233 + 16) + v241 > v240)
                    {
                      [*(v233 + 216) setStringIndex:? atIndex:?];
                      *(v233 + 256) = 2;
                    }
                  }
                }
              }
            }

LABEL_424:
            v23 = v229-- <= 1;
          }

          while (!v23);
          if (v17 < v316)
          {
            v218 = 0;
            v13 = a1;
LABEL_428:
            v11 = &v354;
            v12 = v332;
            v7 = v334;
            goto LABEL_560;
          }

          v260 = 0;
          v261 = v16;
          v13 = a1;
          v7 = v16 + v17;
LABEL_453:
          v262 = v17 - v316;
          v263 = v311;
          goto LABEL_454;
        }

        if (v17 >= v316)
        {
          v260 = 0;
          v261 = v16;
          goto LABEL_453;
        }

        v245 = 0;
        v246 = 0;
        v247 = *(v11 + 224);
        v248 = (v345 - v344) >> 1;
        v249 = -1;
        do
        {
          v250 = v249;
          v251 = v246 + 1;
          if ((*&v344[2 * v246] & 0xFC00) == 0xD800 && v251 != v248)
          {
            v253 = v246 + 2;
            if ((*&v344[2 * v251] & 0xFC00) == 0xDC00)
            {
              v251 = v253;
            }
          }

          --v245;
          --v249;
          v246 = v251;
        }

        while (v251 != v248);
        if (v350 == v349)
        {
          v255 = 0;
        }

        else
        {
          v254 = 0;
          v255 = 0;
          v256 = (v350 - v349) >> 1;
          do
          {
            v257 = v254 + 1;
            if ((*&v349[2 * v254] & 0xFC00) == 0xD800 && v257 != v256)
            {
              v259 = v254 + 2;
              if ((*&v349[2 * v257] & 0xFC00) == 0xDC00)
              {
                v257 = v259;
              }
            }

            ++v255;
            v254 = v257;
          }

          while (v257 != v256);
        }

        v279 = -v245 - v255;
        TStorageRange::DetachStorage((v11 + 192));
        v280 = TRun::GetGlyphIndexForCharIndex<false>(v11, v16);
        v313 = *(*(*(v11 + 216) + 40) + 4 * *(v11 + 200) + 4 * v280);
        v383.location = v280 + 1;
        v383.length = v279;
        TStorageRange::InsertGlyphs((v11 + 192), v383);
        TRunGlue::InsertedGlyphsAtCharIndex(*a1, v279, v16);
        if (*(v11 + 256) <= 1)
        {
          *(v11 + 256) = 1;
        }

        if ((*v344 & 0xFC00) == 0xD800 && v345 - v344 != 2)
        {
          v281 = 1;
          if ((*(v344 + 1) & 0xFC00) == 0xDC00)
          {
            v281 = 2;
          }
        }

        else
        {
          v281 = 1;
        }

        v310 = v281;
        if (v377 == v376)
        {
          goto LABEL_572;
        }

        v309 = v279;
        if (v247)
        {
          v282 = v279;
        }

        else
        {
          v282 = 0;
        }

        v283 = v280 + v282;
        v284 = *v376;
        [*(v11 + 216) setGlyph:*v376 atIndex:*(v11 + 200) + v283];
        if (v284 == 0xFFFF && (*(v11 + 225) & 2) != 0)
        {
          *(v11 + 225) |= 8u;
        }

        RenderingStyle = TAttributes::GetRenderingStyle((v11 + 40));
        TStorageRange::ResetAdvance(v11 + 192, v283, v327, RenderingStyle & 0xFFFFFFFFFFLL);
        [*(v11 + 216) setProps:v313 | 0x80u atIndex:*(v11 + 200) + v283];
        [*(v11 + 216) setStringIndex:v16 atIndex:*(v11 + 200) + v283];
        v286 = v310;
        [*(v11 + 216) setAttachmentCount:v310 - 1 atIndex:*(v11 + 200) + v283];
        v288 = *(&v374 + 1);
        v287 = v374;
        if (v374 != *(&v374 + 1))
        {
          v286 = *v374;
        }

        v289 = 1;
        if (v247)
        {
          v289 = -1;
        }

        v324 = v289;
        v290 = v283 + v289;
        if (v314)
        {
          v13 = a1;
          if (v286 < v316)
          {
            while (1)
            {
              v291 = v286 + 1;
              if ((*&v344[2 * v286] & 0xFC00) == 0xD800 && v291 != (v345 - v344) >> 1 && (*&v344[2 * v291] & 0xFC00) == 0xDC00)
              {
                v291 = v286 + 2;
              }

              if (v286 >= v377 - v376)
              {
                goto LABEL_572;
              }

              v292 = v376[v286];
              [*(v11 + 216) setGlyph:v376[v286] atIndex:v290 + *(v11 + 200)];
              v293 = *(v11 + 225);
              if (v292 == 0xFFFF && (v293 & 2) != 0)
              {
                *(v11 + 225) = v293 | 8;
              }

              v295 = TAttributes::GetRenderingStyle((v11 + 40));
              TStorageRange::ResetAdvance(v11 + 192, v290, v327, v295 & 0xFFFFFFFFFFLL);
              if (v286 >= (v326[1] - *v326) >> 3)
              {
                goto LABEL_572;
              }

              v260 = v291;
              v296 = *(*v326 + 8 * v286);
              v261 = v296 + v16;
              if (v296)
              {
                v297 = 64;
              }

              else
              {
                v297 = 576;
              }

              [*(v11 + 216) setProps:*(*(*(v11 + 216) + 40) + 4 * *(v11 + 200) + 4 * v290) | v297 atIndex:v290 + *(v11 + 200)];
              [*(v11 + 216) setStringIndex:v261 atIndex:v290 + *(v11 + 200)];
              [*(v11 + 216) setAttachmentCount:v260 + ~v286 atIndex:v290 + *(v11 + 200)];
              v290 += v324;
              v286 = v260;
              if (v260 >= v316)
              {
                goto LABEL_556;
              }
            }
          }

          v218 = 1;
          goto LABEL_428;
        }

        if (v309 >= 1)
        {
          v298 = v255 + v250;
          do
          {
            v299 = v286 + 1;
            if ((*&v344[2 * v286] & 0xFC00) == 0xD800 && v299 != (v345 - v344) >> 1 && (*&v344[2 * v299] & 0xFC00) == 0xDC00)
            {
              v299 = v286 + 2;
            }

            if (v286 >= v377 - v376)
            {
              goto LABEL_572;
            }

            v300 = v376[v286];
            [*(v11 + 216) setGlyph:v376[v286] atIndex:v290 + *(v11 + 200)];
            v301 = *(v11 + 225);
            if (v300 == 0xFFFF && (v301 & 2) != 0)
            {
              *(v11 + 225) = v301 | 8;
            }

            v303 = TAttributes::GetRenderingStyle((v11 + 40));
            TStorageRange::ResetAdvance(v11 + 192, v290, v327, v303 & 0xFFFFFFFFFFLL);
            [*(v11 + 216) setProps:v313 | 0x240u atIndex:v290 + *(v11 + 200)];
            [*(v11 + 216) setStringIndex:v16 atIndex:v290 + *(v11 + 200)];
            [*(v11 + 216) setAttachmentCount:0 atIndex:v290 + *(v11 + 200)];
            v290 += v324;
            v286 = v299;
            v187 = __CFADD__(v298++, 1);
          }

          while (!v187);
          v288 = *(&v374 + 1);
          v287 = v374;
          v286 = v299;
        }

        v13 = a1;
        v320 = 0;
        v261 = v310 + v16;
        if (v287 == v288)
        {
          v260 = v286;
        }

        else
        {
          v260 = v310;
        }

LABEL_556:
        v7 = v334;
        v262 = v320;
        v263 = v311;
        if (!v314)
        {
LABEL_454:
          if (v261 < v7)
          {
            v264 = *(v11 + 8);
            v265 = *(v11 + 16);
            v315 = v314 && v263;
            while (1)
            {
              v321 = v262;
              if (v264 > v261 || v265 + v264 <= v261)
              {
                break;
              }

LABEL_463:
              v267 = TRun::GetGlyphIndexForCharIndex<false>(v11, v261);
              do
              {
                v268 = v260;
                v269 = v374;
                if (v374 != *(&v374 + 1))
                {
                  v269 = v374;
                  while (*v269 != v260)
                  {
                    if (++v269 == *(&v374 + 1))
                    {
                      ++v260;
                      goto LABEL_470;
                    }
                  }
                }

                ++v260;
              }

              while (v269 != *(&v374 + 1));
LABEL_470:
              v270 = *&v344[2 * v268];
              if ((v270 & 0xFC00) == 0xD800 && v260 != (v345 - v344) >> 1)
              {
                v271 = *&v344[2 * v260];
                v272 = (v271 & 0xFC00) == 56320;
                v273 = (v270 << 10) - 56613888 + v271;
                if (v272)
                {
                  v260 = v268 + 2;
                }

                v317 = v260;
                if (v272)
                {
                  v270 = v273;
                }
              }

              else
              {
                v317 = v260;
              }

              [*(v11 + 216) setProps:*(*(*(v11 + 216) + 40) + 4 * *(v11 + 200) + 4 * v267) & 0xFFFFFFBF | ((u_isbase(v270) == 0) << 6) atIndex:*(v11 + 200) + v267];
              if (TFont::operator==(*(atomic_load_explicit((v11 + 56), memory_order_acquire) + 40), v327))
              {
                if (v268 >= v377 - v376)
                {
                  goto LABEL_572;
                }

                v274 = v376[v268];
                [*(v11 + 216) setGlyph:v376[v268] atIndex:*(v11 + 200) + v267];
                if (v274 == 0xFFFF && (*(v11 + 225) & 2) != 0)
                {
                  *(v11 + 225) |= 8u;
                }

                v275 = *(atomic_load_explicit((v11 + 56), memory_order_acquire) + 40);
                v276 = TAttributes::GetRenderingStyle((v11 + 40));
                TStorageRange::ResetAdvance(v11 + 192, v267, v275, v276 & 0xFFFFFFFFFFLL);
                v277 = v326;
              }

              else
              {
                [*(v11 + 216) setGlyph:0xFFFFLL atIndex:*(v11 + 200) + v267];
                v277 = v326;
                if ((*(v11 + 225) & 2) != 0)
                {
                  *(v11 + 225) |= 8u;
                }

                TStorageRange::SetAdvance((v11 + 192), v267, *MEMORY[0x1E695F060]);
              }

              if (v315)
              {
                if (v261 - v16 >= ((v277[1] - *v277) >> 3))
                {
                  goto LABEL_572;
                }

                v278 = *(*v277 + 8 * (v261 - v16)) + v16;
                if (v278 != v261 && v264 <= v278 && v264 + v265 > v278)
                {
                  [*(v11 + 216) setStringIndex:? atIndex:?];
                  *(v11 + 256) = 2;
                }
              }

              v260 = v317;
              v262 = 0;
              v261 = v321 + v261 - v268 + v317;
              v7 = v334;
              if (v261 >= v334)
              {
                v218 = 1;
                goto LABEL_506;
              }
            }

            while (1)
            {
              v11 = *(v11 + 24);
              if (!v11)
              {
                goto LABEL_505;
              }

              v264 = *(v11 + 8);
              v265 = *(v11 + 16);
              if (v264 <= v261 && v265 + v264 > v261)
              {
                goto LABEL_463;
              }
            }
          }
        }

        v218 = 1;
        goto LABEL_558;
      }

      v11 = (v175 + 1);
      v176 = *v322;
      *&v177 = 0xAAAAAAAAAAAAAAAALL;
      *(&v177 + 1) = 0xAAAAAAAAAAAAAAAALL;
      if (v175 + 1 != *v322)
      {
        v178 = v175 + 1;
        while (*v178)
        {
          ++v178;
          v11 += 8;
          if (v178 == v176)
          {
            v11 = *v322;
            break;
          }
        }
      }

      if (v176 != v11)
      {
        while (1)
        {
          v179 = *(&v374 + 1);
          v180 = v374;
          v181 = *(&v374 + 1) - v374;
          v182 = (*(&v374 + 1) - v374) >> 3;
          v319 = v11 - v175;
          v183 = v182 + ((v11 - v175) >> 3);
          if (*(&v374 + 1) >= v375[0])
          {
            v185 = v182 + 1;
            if ((v182 + 1) >> 61)
            {
              goto LABEL_576;
            }

            v186 = v375[0] - v374;
            if ((v375[0] - v374) >> 2 > v185)
            {
              v185 = v186 >> 2;
            }

            v187 = v186 >= 0x7FFFFFFFFFFFFFF8;
            v188 = 0x1FFFFFFFFFFFFFFFLL;
            if (!v187)
            {
              v188 = v185;
            }

            *&v361[32] = &v375[1];
            if (v188)
            {
              v189 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<long,30ul>>(&v375[1], v188);
              v183 = v182 + ((v11 - v175) >> 3);
              v188 = v190;
              v180 = v374;
              v181 = *(&v374 + 1) - v374;
            }

            else
            {
              v189 = 0;
            }

            v191 = (v189 + 8 * v182);
            v192 = v189 + 8 * v188;
            v193 = &v191[-((*(&v374 + 1) - v374) >> 3)];
            *v191 = v183;
            v184 = v191 + 1;
            memcpy(v193, v180, v181);
            v194 = v374;
            *&v374 = v193;
            *(&v374 + 1) = v184;
            v195 = v375[0];
            v375[0] = v192;
            *&v361[16] = v194;
            *&v361[24] = v195;
            *v361 = v194;
            *&v361[8] = v194;
            std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(v361);
            v176 = *v322;
            *&v177 = 0xAAAAAAAAAAAAAAAALL;
            *(&v177 + 1) = 0xAAAAAAAAAAAAAAAALL;
          }

          else
          {
            **(&v374 + 1) = v183;
            v184 = (v179 + 8);
          }

          *(&v374 + 1) = v184;
          v10 = v333;
          if (v176 == v11)
          {
            goto LABEL_572;
          }

          v196 = v176 - v11 - 8;
          v7 = v16 + v17;
          if (v196)
          {
            memmove(v11, (v11 + 8), v196);
            *&v177 = 0xAAAAAAAAAAAAAAAALL;
            *(&v177 + 1) = 0xAAAAAAAAAAAAAAAALL;
          }

          v175 = *v325;
          v176 = (v11 + v196);
          *v322 = v176;
          v11 = v175 + v319;
          if ((v175 + v319) != v176)
          {
            v197 = (v175 + v319);
            while (*v197)
            {
              ++v197;
              v11 += 8;
              if (v197 == v176)
              {
                v11 = v176;
                break;
              }
            }
          }

          if (v176 == v11)
          {
            v370[1] = v177;
            v371 = v177;
            v369 = v177;
            v370[0] = v177;
            v367 = v177;
            v368 = v177;
            v365 = v177;
            v366 = v177;
            v363 = v177;
            v364 = v177;
            *&v361[72] = v177;
            v362 = v177;
            *&v361[40] = v177;
            *&v361[56] = v177;
            *&v361[24] = v177;
            v11 = &v354;
            memset(v361, 0, 24);
            v372 = &v361[24];
            if (v176 != v175)
            {
              std::vector<long,TInlineBufferAllocator<long,30ul>>::__vallocate[abi:fn200100](v361, v176 - v175);
              v198 = *&v361[8];
              do
              {
                v199 = *v175++;
                *v198++ = v199;
              }

              while (v175 != v176);
              *&v361[8] = v198;
            }

            LOBYTE(v339) = -86;
            std::__sort<std::__less<long,long> &,long *>();
            v200 = std::__unique[abi:fn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<long *>,std::__wrap_iter<long *>,std::__equal_to &>(*v361, *&v361[8]);
            if (v200 > *&v361[8])
            {
              goto LABEL_572;
            }

            if (v200 == *&v361[8])
            {
              v201 = v200 - *v361;
            }

            else
            {
              *&v361[8] = v200;
              v201 = v200 - *v361;
              v11 = &v354;
            }

            v202 = (*v322 - *v325);
            v339 = v361;
            std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v339);
            if (v201 == v202)
            {
              v175 = *v325;
              goto LABEL_361;
            }

            v218 = 0;
            v13 = a1;
            goto LABEL_559;
          }
        }
      }

LABEL_505:
      v218 = 0;
LABEL_506:
      v13 = a1;
LABEL_558:
      v11 = &v354;
LABEL_559:
      v12 = v332;
LABEL_560:
      *v361 = &v374;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v361);
      *v361 = &v376;
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v361);
      if (!v218)
      {
        goto LABEL_277;
      }

      v304 = v345 - v344;
      if ((*v344 & 0xFC00) != 0xD800 || v304 == 2)
      {
        v306 = 1;
      }

      else
      {
        v306 = 1;
        if ((*(v344 + 1) & 0xFC00) == 0xDC00)
        {
          v306 = 2;
        }
      }

      v88 = v306 != v304 >> 1;
      v330 = 1;
LABEL_278:
      *v361 = &v340;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v361);
      *v361 = &v344;
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v361);
      *v361 = &v349;
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v361);
      v89 = a3;
LABEL_124:
      if (v89 && v88)
      {
        *v89 = 0;
      }

LABEL_147:
      *v361 = &v354;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v361);
      *v361 = v358;
      std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v361);
LABEL_148:
      if (v7 >= v12)
      {
LABEL_574:
        v307 = v330;
        return v307 & 1;
      }
    }

    v13 = a1;
    if (v350 - v349 == 2)
    {
      goto LABEL_161;
    }

    v113 = *(v349 + 1);
    v114 = (v113 & 0xFC00) == 56320;
    v111 = v113 + (v110 << 10) - 56613888;
    if (v114)
    {
      v112 = 2;
    }

    else
    {
      v111 = *v349;
      v112 = 1;
    }

    goto LABEL_168;
  }

  v307 = 0;
  return v307 & 1;
}

uint64_t TRunGlue::GetNextUncombinedCharRange(TLine **this, uint64_t a2, BOOL *a3, int *a4)
{
  if (*this)
  {
    return TLine::GetNextUncombinedCharRange(*this, a2, a3, a4);
  }

  v5 = this[4];
  v6 = this[5] + this[6];
  if (v5 < 1)
  {
LABEL_7:
    result = v6;
LABEL_8:
    *a3 = 0;
    return result;
  }

  v7 = 0;
  v8 = this[19];
  v9 = this[52] + 8 * v8;
  v10 = this[51] + 4 * v8;
  while (1)
  {
    result = *(v9 + 8 * v7);
    if (result >= a2)
    {
      break;
    }

    if (v5 == ++v7)
    {
      goto LABEL_7;
    }
  }

  if (result >= v6)
  {
    goto LABEL_8;
  }

  v11 = 0;
  while (1)
  {
    v12 = *(v10 + 4 * v7);
    if ((v12 & 0x40) != 0)
    {
      break;
    }

    if ((v12 & 0x20) == 0)
    {
      v11 |= (*(v10 + 4 * v7) & 0x380) == 0;
      if ((v12 & 0x380) != 0)
      {
        v13 = a2;
      }

      else
      {
        v13 = result;
      }

      if ((v12 & 2) != 0)
      {
        v11 = 0;
      }

      else
      {
        a2 = v13;
      }
    }

    if (v7 + 1 >= v5)
    {
      goto LABEL_7;
    }

    result = *(v9 + 8 + 8 * v7);
    if ((v11 & 1) == 0)
    {
      a2 = *(v9 + 8 + 8 * v7);
    }

    ++v7;
    if (result >= v6)
    {
      goto LABEL_8;
    }
  }

  if (result < v6)
  {
    v14 = v10 + 4;
    v15 = v9 + 8;
    do
    {
      if (v7 + 1 >= v5)
      {
        break;
      }

      if (*(v15 + 8 * v7) >= v6)
      {
        break;
      }

      v16 = *(v14 + 4 * v7++);
    }

    while ((v16 & 0x3C0) != 0);
  }

  *a3 = v11 & 1;
  return a2;
}

unint64_t TLine::GetNextUncombinedCharRange(TLine *this, uint64_t a2, BOOL *a3, int *a4)
{
  if (*(this + 2) == *(this + 3))
  {
    *a3 = 0;
    return *(this + 10) + *(this + 9);
  }

  result = TLine::FindRunWithCharIndex(this, a2, 1);
  v9 = *(this + 2);
  if (result < (*(this + 3) - v9) >> 3)
  {
    v10 = *(*(v9 + 8 * result) + 40);
    v11 = a2;
    while (1)
    {
      v13 = *(v10 + 8);
      v12 = *(v10 + 16);
      v14 = v11 <= v13 ? *(v10 + 8) : v11;
      NextUncombinedCharRange = TRun::GetNextUncombinedCharRange(v10, v14, a3);
      v11 = NextUncombinedCharRange;
      v17 = v16;
      v18 = (*(v10 + 224) & 1) != 0 ? -1 : 1;
      *a4 = v18;
      v19 = v12 + v13;
      if (NextUncombinedCharRange != v19)
      {
        break;
      }

      v10 = *(v10 + 24);
      if (v10)
      {
        v20 = *(this + 9);
        if (v20 <= NextUncombinedCharRange && *(this + 10) + v20 > NextUncombinedCharRange)
        {
          continue;
        }
      }

      return v11;
    }

    if (NextUncombinedCharRange == v13)
    {
      if (v13 > *(this + 9) && TRun::GetLeadingUncombinedCharCount(v10) >= 1 && v13 > a2 && (v21 = *(v10 + 32)) != 0)
      {
        while (1)
        {
          v11 = v13 - 1;
          TrailingBaseChar = TRun::GetTrailingBaseChar(v21);
          if (TrailingBaseChar == v13 - 1)
          {
            break;
          }

          v11 = *(v21 + 1);
          if (v13 > v11)
          {
            v11 = TrailingBaseChar;
            break;
          }

          v17 += *(v21 + 2);
          v21 = *(v21 + 4);
          v23 = v11 <= a2 || v21 == 0;
          v13 = v11;
          if (v23)
          {
            goto LABEL_31;
          }
        }

        v17 = v17 + v13 - v11;
        *a3 = 1;
      }

      else
      {
        v11 = v13;
      }
    }

LABEL_31:
    if (v11 + v17 == v19)
    {
      do
      {
        v10 = *(v10 + 24);
        if (!v10)
        {
          break;
        }

        LeadingUncombinedCharCount = TRun::GetLeadingUncombinedCharCount(v10);
        v17 += LeadingUncombinedCharCount;
      }

      while (LeadingUncombinedCharCount == *(v10 + 16));
    }

    return v11;
  }

  __break(1u);
  return result;
}

uint64_t TRun::GetNextUncombinedCharRange(TRun *this, uint64_t a2, BOOL *a3)
{
  NextChar = a2;
  GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(this, a2);
  v23 = GlyphIndexForChar;
  v7 = *(this + 2) + *(this + 1);
  if (v7 <= NextChar)
  {
LABEL_49:
    *a3 = 0;
    return NextChar;
  }

  else
  {
    v8 = 0;
    v9 = *(this + 27);
    v10 = *(this + 25);
    v11 = v9[5] + 4 * v10;
    v12 = NextChar;
    while (1)
    {
      v13 = *(v11 + 4 * GlyphIndexForChar);
      if ((v13 & 0x2040) == 0x40)
      {
        break;
      }

      if ((v13 & 0x20) == 0 && *(v9[2] + 2 * v10 + 2 * GlyphIndexForChar) != 0xFFFF)
      {
        v14 = (v13 & 0x300) != 0 ? v12 : NextChar;
        v8 = (v13 & 2) != 0 ? 0 : ((v13 & 0x300) == 0) | v8;
        if ((v13 & 2) == 0)
        {
          v12 = v14;
        }
      }

      if (*(this + 64) > 1)
      {
        if (*(this + 224))
        {
          v16 = -1;
        }

        else
        {
          v16 = 1;
        }

        if (*(this + 224))
        {
          v17 = -1;
        }

        else
        {
          v17 = *(this + 26);
        }

        v15 = v16 + GlyphIndexForChar;
        v23 = v16 + GlyphIndexForChar;
        if (v16 + GlyphIndexForChar == v17)
        {
          v15 = v17;
        }

        else
        {
          v18 = v9[6] + 8 * v10;
          v19 = *(v18 + 8 * v15);
          if (v19 < NextChar)
          {
            v15 += v16;
            v23 = v15;
            if (v15 == v17)
            {
LABEL_33:
              v15 = v17;
            }

            else
            {
              v20 = GlyphIndexForChar + 3 * v16;
              while (1)
              {
                v19 = *(v18 + 8 * v15);
                if (v19 >= NextChar)
                {
                  break;
                }

                v15 += v16;
                v23 = v20;
                v20 += v16;
                if (v17 == v15)
                {
                  goto LABEL_33;
                }
              }
            }
          }

          NextChar = v19;
        }

        if (v15 == v17)
        {
          NextChar = v7;
        }
      }

      else
      {
        if (*(this + 224))
        {
          v15 = GlyphIndexForChar - 1;
          v23 = GlyphIndexForChar - 1;
          if (GlyphIndexForChar < 1)
          {
LABEL_48:
            NextChar = v7;
            goto LABEL_49;
          }
        }

        else
        {
          v15 = GlyphIndexForChar + 1;
          v23 = GlyphIndexForChar + 1;
          if (GlyphIndexForChar + 1 >= *(this + 26))
          {
            goto LABEL_48;
          }
        }

        NextChar = *(v9[6] + 8 * v10 + 8 * v15);
      }

      if ((v8 & 1) == 0)
      {
        v12 = NextChar;
      }

      GlyphIndexForChar = v15;
      if (NextChar >= v7)
      {
        goto LABEL_49;
      }
    }

    for (; NextChar < v7; NextChar = TRun::GetNextChar(this, NextChar, &v23))
    {
      if ((*(*(*(this + 27) + 40) + 4 * *(this + 25) + 4 * v23) & 0x2040) != 0x40 && (*(*(*(this + 27) + 40) + 4 * *(this + 25) + 4 * v23) & 0x300) == 0)
      {
        break;
      }
    }

    *a3 = v8 & 1;
  }

  return v12;
}

uint64_t TJustEngine::ReconciledRangeForLines(uint64_t this, CFRange a2, const TLine *a3, const TLine *a4)
{
  v4 = *(a3 + 18);
  v5 = this + a2.location;
  v6 = *(a2.length + 144);
  v7 = a2.location - v4 + v6;
  if (v5 < v4)
  {
    v8 = *(a3 + 2);
    v9 = *(a3 + 3);
    v10 = (v9 - v8) >> 3;
    v11 = *(a2.length + 16);
    v12 = *(a2.length + 24);
    v13 = (v12 - v11) >> 3;
    while (1)
    {
      if (v8 == v9)
      {
        v18 = 0xAAAAAAAAAAAAAAAALL;
        v15 = v8;
      }

      else
      {
        v14 = 0;
        v15 = v8;
        v16 = v8;
        while (1)
        {
          v17 = *(*(*v16 + 40) + 208) + v14;
          if (v17 > v5)
          {
            break;
          }

          v16 += 8;
          v15 += 8;
          v14 = v17;
          if (v16 == v9)
          {
            v18 = 0xAAAAAAAAAAAAAAAALL;
            v15 = v9;
            goto LABEL_10;
          }
        }

        v18 = v5 - v14;
      }

LABEL_10:
      v19 = v15 - v8;
      if (v19 >> 3 >= v10)
      {
        break;
      }

      if (v10 <= v19 >> 3)
      {
        goto LABEL_26;
      }

      if ((*(*(*(*(*(v8 + v19) + 40) + 216) + 40) + 4 * *(*(*(v8 + v19) + 40) + 200) + 4 * v18) & 0x20) == 0 || v7 + this >= v6)
      {
        return this;
      }

      if (v11 == v12)
      {
        v21 = v11;
      }

      else
      {
        v20 = 0;
        v21 = v11;
        v22 = v11;
        while (1)
        {
          v23 = *(*(*v22 + 40) + 208) + v20;
          if (v23 > v5)
          {
            break;
          }

          v22 += 8;
          v21 += 8;
          v20 = v23;
          if (v22 == v12)
          {
            v21 = v12;
            goto LABEL_21;
          }
        }

        v18 = v5 - v20;
      }

LABEL_21:
      v24 = v21 - v11;
      if (v24 >> 3 >= v13)
      {
        return this;
      }

      if (v13 <= v24 >> 3)
      {
LABEL_26:
        __break(1u);
        return this;
      }

      if ((*(*(*(*(*(v11 + v24) + 40) + 216) + 40) + 4 * *(*(*(v11 + v24) + 40) + 200) + 4 * v18) & 0x20) == 0)
      {
        ++v7;
        if (++v5 < v4)
        {
          continue;
        }
      }

      return this;
    }
  }

  return this;
}

uint64_t std::vector<JustLeftRightMaxima,TInlineBufferAllocator<JustLeftRightMaxima,30ul>>::__vallocate[abi:fn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >= 0xAAAAAAAAAAAAAABLL)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  result = std::allocator_traits<TInlineBufferAllocator<JustLeftRightMaxima,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<JustLeftRightMaxima,30ul>>((a1 + 3), a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 24 * v4;
  return result;
}

void CopyVariationAxes(void *a1@<X8>)
{
  capacity = 0;
  CGFontGetVariationAxes();
  *a1 = 0;
}

uint64_t std::allocator_traits<TInlineBufferAllocator<JustLeftRightMaxima,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<JustLeftRightMaxima,30ul>>(uint64_t a1, unint64_t a2)
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

void TJustEngine::GenerateMaximaList(const TLine *a1, void *a2, uint64_t a3, uint64_t a4, int a5, char a6, uint64_t *a7, void *a8, double a9)
{
  v9 = a5;
  v11 = a3;
  v14 = *(a1 + 2);
  v15 = *(a1 + 3);
  if (v14 == v15)
  {
    v16 = 0;
    v18 = *(a1 + 2);
  }

  else
  {
    v16 = 0;
    v17 = a3;
    v18 = *(a1 + 2);
    while (1)
    {
      v19 = *(*(*v18 + 40) + 208);
      v11 = v17 - v19;
      if (v17 < v19)
      {
        break;
      }

      v16 += v19;
      v18 += 8;
      v17 -= v19;
      if (v18 == v15)
      {
        goto LABEL_8;
      }
    }

    v11 = v17;
  }

LABEL_8:
  v78[0] = 0;
  if (v18 == v15)
  {
    return;
  }

  v57 = v14;
  v62 = 0;
  v65 = 0;
  v60 = v15;
  while (1)
  {
    v20 = *(*v18 + 40);
    v21 = v11 & ~(v11 >> 63);
    v68 = v11;
    v22 = v11 + a4;
    if (v11 + a4 >= v20[26])
    {
      v22 = v20[26];
    }

    v64 = v22;
    v23 = v22 - v21;
    if (v22 >= v21)
    {
      v24 = v22 - v21;
    }

    else
    {
      v24 = 0;
    }

    if (v22 >= v21)
    {
      v25 = v11 & ~(v11 >> 63);
    }

    else
    {
      v25 = 0;
    }

    if (v22 < v21 || v23 < 1)
    {
LABEL_58:
      if (v62)
      {
        v54 = *a7;
        v55 = a7[1];
        v56 = *a7;
        if (*a7 != v55)
        {
          v56 = *a7;
          while ((*(v56 + 18) & 1) == 0)
          {
            v56 += 24;
            if (v56 == v55)
            {
              goto LABEL_65;
            }
          }
        }

        if (v56 == v55)
        {
LABEL_65:
          while (v54 != v55)
          {
            if (!*(v54 + 16))
            {
              *(v54 + 18) = 1;
            }

            v54 += 24;
          }
        }
      }

      return;
    }

    v66 = v11 & ~(v11 >> 63);
    v67 = v20[26];
    v77 = 0xAAAAAAAAAAAAAAAALL;
    *&v27 = 0xAAAAAAAAAAAAAAAALL;
    *(&v27 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v75[2] = v27;
    v76 = v27;
    v75[0] = v27;
    v75[1] = v27;
    TAATJustEngine::TAATJustEngine(v75, v20);
    if (!TAATJustEngine::GenerateMaximas(v28, a1, a2, v25, v24, a7, v16, a9 > 0.0, v9))
    {
      v74[0] = &unk_1EF2582E8;
      v74[1] = v20;
      TGenericJustEngine::GenerateMaximas(v74, a1, a2, v25, v24, a7, v16, a9 > 0.0, v9, v78);
      if (v76)
      {
        Maximas = 0;
      }

      else
      {
        v73 = 0xAAAAAAAAFFFFFFFFLL;
        memset(v72, 170, sizeof(v72));
        TArabicJustEngine::TArabicJustEngine(v72, v20);
        Maximas = TArabicJustEngine::GenerateMaximas(v72, a1, a2);
        if (Maximas)
        {
          v71 = (v18 - v57) >> 3;
          TArabicJustEngine::PostcompTable(v72, &v70);
          v35 = a8;
          v36 = a8[1];
          if (v36 >= a8[2])
          {
            v39 = std::vector<std::tuple<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>,TInlineBufferAllocator<std::tuple<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>,30ul>>::__emplace_back_slow_path<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>(a8, &v71, &v72[1] + 1, &v70);
            v35 = a8;
          }

          else
          {
            *v36 = (v18 - v57) >> 3;
            v37 = *(&v72[1] + 1);
            *(&v72[1] + 1) = 0;
            v38 = atomic_exchange(&v70, 0);
            v36[1] = v37;
            v36[2] = v38;
            v39 = v36 + 3;
          }

          v35[1] = v39;
        }

        TArabicJustEngine::~TArabicJustEngine(v72);
        v9 = a5;
        if (Maximas)
        {
          goto LABEL_44;
        }
      }

      if (v65)
      {
        if (v64)
        {
          v40 = *a7 + 24 * v16;
          v41 = v40 + 24 * v64;
          do
          {
            v42 = *(v40 + 16);
            if (v42 <= 2)
            {
              *(v40 + 16) = v42 + 1;
            }

            v40 += 24;
          }

          while (v40 != v41);
        }

        Maximas = 1;
      }

LABEL_44:
      v62 |= Maximas;
      v65 = Maximas;
      goto LABEL_45;
    }

    if (v76)
    {
      *&v72[0] = (v18 - v57) >> 3;
      TAATJustEngine::PostcompTable(v75, v74);
      v29 = a8;
      v30 = a8[1];
      if (v30 >= a8[2])
      {
        v33 = std::vector<std::tuple<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>,TInlineBufferAllocator<std::tuple<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>,30ul>>::__emplace_back_slow_path<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>(a8, v72, &v77, v74);
        v29 = a8;
      }

      else
      {
        *v30 = (v18 - v57) >> 3;
        v31 = v77;
        v77 = 0;
        v32 = atomic_exchange(v74, 0);
        v30[1] = v31;
        v30[2] = v32;
        v33 = v30 + 3;
      }

      v9 = a5;
      v29[1] = v33;

      v65 = 0;
    }

    else
    {
      v65 = 0;
      v9 = a5;
    }

LABEL_45:
    if (a6)
    {
      break;
    }

LABEL_57:
    v11 = v68 - v67;
    v16 += v67;
    TAATJustEngine::~TAATJustEngine(v75);
    v18 += 8;
    if (v18 == v60)
    {
      goto LABEL_58;
    }
  }

  v43 = *(atomic_load_explicit(v20 + 7, memory_order_acquire) + 40);
  TrackingFloor = TFont::GetTrackingFloor(v43);
  v46 = v45;
  v47 = *&TrackingFloor;
  v48 = TFont::GetEffectiveSize(v43) * -0.03;
  if (v46)
  {
    v48 = v47;
  }

  v49 = 0xAAAAAAAAAAAAAAABLL * ((a7[1] - *a7) >> 3);
  v50 = v16 + v66;
  v51 = (*a7 + 24 * (v16 + v66));
  while (v49 > v50)
  {
    v52 = vaddvq_f64(*v51);
    if (v52 != 0.0 && v52 < v48)
    {
      *v51 = vmulq_n_f64(*v51, v48 / v52);
    }

    v51 = (v51 + 24);
    ++v50;
    if (!--v23)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
}

void TAATJustEngine::TAATJustEngine(TAATJustEngine *this, atomic_ullong *a2)
{
  *this = &unk_1EF2582B8;
  *(this + 1) = a2;
  v3 = (this + 16);
  (*(**(*(atomic_load_explicit(a2 + 7, memory_order_acquire) + 40) + 408) + 488))();
  v4 = atomic_load_explicit(v3, memory_order_acquire);
  v5 = v4;
  if (v4)
  {
    BytePtr = CFDataGetBytePtr(v4);
  }

  else
  {
    BytePtr = 0;
  }

  *(this + 3) = BytePtr;
  v7 = atomic_load_explicit(v3, memory_order_acquire);
  v8 = v7;
  if (v8)
  {
    v9 = v8;
    v10 = CFDataGetBytePtr(v8);

    if (v10)
    {
      v11 = &v10[CFDataGetLength(v7)];
      goto LABEL_9;
    }
  }

  else
  {
  }

  v11 = 0;
LABEL_9:

  *(this + 40) = 0u;
  *(this + 4) = v11;
  *(this + 56) = 0u;
  v12 = *(this + 3);
  if (v12)
  {
    if (v12 + 10 > v11 || *v12 != 256)
    {
LABEL_24:
      explicit = atomic_load_explicit((*(this + 1) + 56), memory_order_acquire);
      CFLog();
      (*(**(*(explicit + 40) + 408) + 496))(*(*(explicit + 40) + 408));
      *(this + 3) = 0;
      *(this + 6) = 0;
      return;
    }

    v13 = 6;
    if (*(*(this + 1) + 90))
    {
      v13 = 8;
    }

    v14 = *(v12 + v13);
    if (v14)
    {
      v15 = (v12 + __rev16(v14));
      *(this + 5) = v15;
      if ((v15 + 12) <= v11)
      {
        v16 = v12 + (bswap32(v15[1]) >> 16);
        *(this + 7) = v16;
        if ((v16 + 1) <= v11)
        {
          if (!v15[2] || (v17 = v12 + __rev16(v15[2]), *(this + 6) = v17, (v17 + 18) <= v11))
          {
            v18 = *v15;
            if (!v18)
            {
              operator new();
            }

            if (v12 + __rev16(v18) + 26 <= v11)
            {
              operator new();
            }
          }
        }
      }

      goto LABEL_24;
    }
  }
}

void *TAATJustEngine::GenerateMaximas(void *result, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t *a6, unint64_t a7, int a8, int a9)
{
  v9 = result[3];
  if (!v9)
  {
    return (v9 & 1);
  }

  v10 = result;
  v9 = result[5];
  if (!v9)
  {
    return (v9 & 1);
  }

  v12 = *a6;
  if (0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3) > a7)
  {
    v56 = *(*(atomic_load_explicit((result[1] + 56), memory_order_acquire) + 40) + 24);
    v16 = result[1];
    v17 = *(*(v16 + 216) + 16);
    v18 = *(v16 + 200);
    *&v19 = 0xAAAAAAAAAAAAAAAALL;
    *(&v19 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v61 = v19;
    v60 = v19;
    v20 = result[4];
    v21 = result[5];
    v58 = TAATLookupTable::BadTable;
    v59 = 0;
    *(&v61 + 1) = 0;
    v62 = 0xAAAAAAAAAAAAFFFFLL;
    TAATLookupTable::SetTable(&v58, (v21 + 6), v20);
    if (a5)
    {
      v57 = 0;
      v22 = v12 + 24 * a7;
      v23 = a4 + a5;
      if (a8)
      {
        v24 = 1.0;
      }

      else
      {
        v24 = -1.0;
      }

      if (a8)
      {
        v25 = 1.0;
      }

      else
      {
        v25 = 0.0;
      }

      if (a8)
      {
        v26 = 20;
      }

      else
      {
        v26 = 22;
      }

      v27 = 8;
      if (a8)
      {
        v27 = 4;
      }

      v54 = v27;
      v55 = v26;
      v28 = 16;
      if (a8)
      {
        v28 = 12;
      }

      v53 = v28;
      v29 = v17 + 2 * v18;
      v30 = vdup_n_s32(0x37800000u);
      do
      {
        v31 = v22 + 24 * a4;
        v32 = *(v16 + 216);
        v33 = *(v16 + 200);
        if (*(*(v32 + 16) + 2 * v33 + 2 * a4) == -1 || (*(*(v32 + 40) + 4 * v33 + 4 * a4) & 0x20) != 0)
        {
          *(v31 + 16) = 4;
        }

        else
        {
          v34 = *(v29 + 2 * a4);
          v63 = 0xAAAAAAAAAAAAAAAALL;
          v35 = v58;
          v36 = (&v58 + (v59 >> 1));
          if (v59)
          {
            v35 = *(*v36 + v58);
          }

          result = v35(v36, v34, &v63);
          if (!result)
          {
            goto LABEL_43;
          }

          v37 = (v10[7] + (bswap32(*result) >> 16));
          v38 = v10[4];
          if (v10[3] > v37 || (v37 + 7) > v38)
          {
            goto LABEL_43;
          }

          v40 = v10[8];
          v41 = *v40;
          v42 = v40[1];
          if (v41 == v42)
          {
            v43 = 0;
          }

          else
          {
            if (a4 >= (v42 - v41) >> 1)
            {
              goto LABEL_55;
            }

            v43 = *(v41 + 2 * a4);
          }

          v44 = v37 + 1;
          v45 = bswap32(*v37);
          v46 = &v44[6 * v45];
          v47 = v46 < v44 || v46 > v38;
          v48 = v47 ? (v38 - v44) / 0x18 : v45;
          if (v48)
          {
            while (v43 != bswap32(*v44))
            {
              v44 += 6;
              if (!--v48)
              {
                goto LABEL_43;
              }
            }

            v49 = *(v44 + v55);
            v50.i32[0] = *(v44 + v54);
            v50.i32[1] = *(v44 + v53);
            v51 = vmul_f32(vcvt_f32_s32(vrev32_s8(v50)), v30);
            if (v51.f32[0] != 0.0 || v51.f32[1] != 0.0)
            {
              *v31 = vmulq_n_f64(vcvtq_f64_f32(v51), v56);
              v57 = 1;
            }

            v52 = bswap32(v49) >> 16;
            *(v31 + 16) = v52 & 3;
            *(v31 + 18) = (v52 & 0x1000) != 0;
          }

          else
          {
LABEL_43:
            if (*(*(*(v10[1] + 216) + 40) + 4 * *(v10[1] + 200) + 4 * a4))
            {
              *v31 = v24;
              *(v31 + 8) = v25;
              *(v31 + 16) = 1;
            }

            *(v31 + 18) = 0;
          }
        }

        ++a4;
      }

      while (a4 != v23);
    }

    else
    {
      v57 = 0;
    }

    LOBYTE(v9) = (a9 == 0) | v57;
    return (v9 & 1);
  }

LABEL_55:
  __break(1u);
  return result;
}

uint64_t TGenericJustEngine::GenerateMaximas(uint64_t a1, const TLine *a2, void *a3, unint64_t a4, uint64_t a5, uint64_t *a6, unint64_t a7, int a8, int a9, char *a10)
{
  v100[1] = *MEMORY[0x1E69E9840];
  v14 = *(*(atomic_load_explicit((*(a1 + 8) + 56), memory_order_acquire) + 40) + 24);
  v15 = *(*(atomic_load_explicit((*(a1 + 8) + 56), memory_order_acquire) + 40) + 408);
  if (v15)
  {
    v79 = (*(*v15 + 384))(v15);
  }

  else
  {
    v79 = 0;
  }

  if (a9)
  {
    v70 = 0;
    v71 = 0;
    if (a8)
    {
      v16 = 1.0;
    }

    else
    {
      v16 = -1.0;
    }

    v17 = 0.0;
    v18 = 0.0;
    v19 = v16;
  }

  else
  {
    if (a8)
    {
      v17 = 0.5;
    }

    else
    {
      v17 = -0.04296875;
    }

    if (a8)
    {
      v18 = 0.14453125;
    }

    else
    {
      v18 = -0.04296875;
    }

    v71 = 2;
    v70 = 1;
    v16 = v17;
    v19 = v18;
  }

  v20 = *a6;
  if (0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3) <= a7)
  {
LABEL_108:
    __break(1u);
  }

  v68 = a1;
  v21 = *(a1 + 8);
  v22 = *(v21 + 178);
  v76 = *(v21 + 224);
  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v99[14] = v23;
  v99[13] = v23;
  v99[12] = v23;
  v99[11] = v23;
  v99[10] = v23;
  v99[9] = v23;
  v99[8] = v23;
  v99[7] = v23;
  v99[6] = v23;
  v99[5] = v23;
  v99[4] = v23;
  v99[3] = v23;
  v99[2] = v23;
  v99[1] = v23;
  v99[0] = v23;
  __p = 0;
  v97 = 0;
  v98 = 0;
  v100[0] = v99;
  v24 = a4 + a5;
  if (a4 + a5)
  {
    if ((v24 & 0x8000000000000000) != 0)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v25 = (v24 - 1) >> 6;
    if (v24 - 1 > 0x77F)
    {
      operator new();
    }

    v100[0] = v99 + 8 * v25 + 8;
    v97 = a4 + a5;
    v98 = v25 + 1;
    __p = v99;
    if (v24 >= 0x41)
    {
      v26 = (v24 - 1) >> 6;
    }

    else
    {
      v26 = 0;
    }

    *(v99 + v26) = 0;
    v27 = v24 >> 6;
    if (v24 >= 0x40)
    {
      bzero(v99, 8 * v27);
      v24 = a4 + a5;
    }

    if ((v24 & 0x3F) != 0)
    {
      *(v99 + v27) &= ~(0xFFFFFFFFFFFFFFFFLL >> -(v24 & 0x3F));
    }
  }

  v69 = v24;
  v81 = 0;
  v82 = a3;
  v93 = 0u;
  v83 = 0u;
  v84 = 0u;
  v85 = 0u;
  v86 = 0u;
  v87 = 0u;
  v88 = 0u;
  v89 = 0u;
  v90 = 0u;
  v91 = 0u;
  v92 = 0u;
  v28 = a3[2];
  v94 = 0;
  *&v93 = v28;
  v78 = *a10;
  v80 = 0;
  if (a5)
  {
    v29 = 0;
    v30 = v14 * v18;
    v31 = v14 * v19;
    v32 = v14 * v17;
    v33 = (24 * a7 + 24 * a4 + v20 + 16);
    v34 = v14 * v16;
    v75 = a4 + a7;
    v35 = v22 & 0x40;
    while (1)
    {
      v36 = *(v21 + 216);
      v37 = *(v21 + 200);
      if (*(v36[2] + 2 * v37 + 2 * a4 + 2 * v29) == -1)
      {
        break;
      }

      v38 = *(v36[5] + 4 * v37 + 4 * a4 + 4 * v29);
      if (v38 & 0x20 | v35)
      {
        break;
      }

      v39 = v36[6] + 8 * v37 + 8 * a4;
      v40 = *(v39 + 8 * v29);
      if (v38)
      {
        v95 = *(v39 + 8 * v29);
        FullChar = TCharStreamIterator::GetFullChar(&v82, &v95, 0);
        IntPropertyValue = u_getIntPropertyValue(FullChar, UCHAR_EAST_ASIAN_WIDTH);
        if (IntPropertyValue > 5 || ((1 << IntPropertyValue) & 0x2C) == 0)
        {
          *(v33 - 2) = v32;
          *(v33 - 1) = v34;
          *v33 = v70;
          if (v78)
          {
            TJustEngineImplementation::HandleWhitespaceBoundary(v68, a6, v75 + v29);
          }

          v78 = 0;
          goto LABEL_38;
        }
      }

      else
      {
        FullChar = 0;
      }

      if (v79)
      {
        break;
      }

      if (!a9)
      {
        if (a8)
        {
          if (!FullChar)
          {
            v95 = v40;
            FullChar = TCharStreamIterator::GetFullChar(&v82, &v95, 0);
          }

          if (u_getIntPropertyValue(FullChar, UCHAR_SCRIPT) == 2)
          {
            break;
          }
        }

        else
        {
          if (!FullChar)
          {
            v95 = v40;
            FullChar = TCharStreamIterator::GetFullChar(&v82, &v95, 0);
          }

          v47 = u_getIntPropertyValue(FullChar, UCHAR_SCRIPT);
          if (v47 <= 0x11)
          {
            if (((1 << v47) & 0x20414) != 0)
            {
              break;
            }

            if (!v47)
            {
              v48 = u_getIntPropertyValue(FullChar, UCHAR_EAST_ASIAN_WIDTH);
              if (v48 <= 5 && ((1 << v48) & 0x2C) != 0)
              {
                break;
              }
            }
          }
        }
      }

      v43 = v75 + v29;
      v44 = v80;
      if (v80 > (v75 + v29) || (v45 = v81, v81 + v80 <= v43))
      {
        TLine::GetClusterRange(a2, a3, v40, 2, &v80, 0, 0);
        v44 = v80;
        v45 = v81;
      }

      v46 = v45 - 1;
      if ((v76 & 1) == 0)
      {
        v46 = 0;
      }

      if (v43 == v46 + v44)
      {
        *(v33 - 2) = v30;
        *(v33 - 1) = v31;
        v78 = 1;
        *v33 = v71;
      }

      else
      {
        if (v97 <= a4 + v29)
        {
          goto LABEL_108;
        }

        *(__p + (((a4 + v29) >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << (a4 + v29);
      }

LABEL_38:
      ++v29;
      v33 += 3;
      if (a5 == v29)
      {
        goto LABEL_66;
      }
    }

    *v33 = 4;
    goto LABEL_38;
  }

LABEL_66:
  v49 = __p;
  v50 = __p;
  v51 = v97;
  if (v97 < 0x40)
  {
LABEL_70:
    if (v51)
    {
      v52 = __clz(__rbit64(*v50 & (0xFFFFFFFFFFFFFFFFLL >> -v51)));
      if ((*v50 & (0xFFFFFFFFFFFFFFFFLL >> -v51)) != 0)
      {
        LODWORD(v51) = v52;
      }
    }
  }

  else
  {
    v50 = __p;
    v51 = v97;
    while (!*v50)
    {
      ++v50;
      v51 -= 64;
      if (v51 <= 0x3F)
      {
        goto LABEL_70;
      }
    }

    LODWORD(v51) = __clz(__rbit64(*v50));
  }

  if (v50 != (__p + 8 * (v97 >> 6)) || (v97 & 0x3F) != v51)
  {
    v54 = a4 - 1;
    v55 = v69 - 1;
    if ((v76 & 1) == 0)
    {
      v54 = v69;
      v55 = a4;
    }

    if (v55 != v54)
    {
      v56 = 1;
      if (v76)
      {
        v56 = -1;
      }

      v57 = 24 * (v55 + a7);
      v58 = -1;
      do
      {
        if (v97 <= v55)
        {
          goto LABEL_108;
        }

        v59 = a7 + v55;
        v60 = *a6;
        v61 = 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3);
        if (((*(__p + ((v55 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> v55) & 1) == 0 || v58 == -1)
        {
          if (v61 <= v59)
          {
            goto LABEL_108;
          }

          if (*(v60 + v57 + 16) == 4)
          {
            v59 = v58;
          }
        }

        else
        {
          if (v61 <= v58 || v61 <= v59)
          {
            goto LABEL_108;
          }

          v62 = v60 + 24 * v58;
          v63 = v60 + v57;
          v64 = *v62;
          *(v63 + 16) = *(v62 + 16);
          *v63 = v64;
          v65 = *a6;
          v66 = 0xAAAAAAAAAAAAAAABLL * ((a6[1] - *a6) >> 3);
          if (v76)
          {
            if (v66 <= v59)
            {
              goto LABEL_108;
            }

            *(v65 + v57 + 8) = 0;
            if (v66 <= v58)
            {
              goto LABEL_108;
            }

            *(v65 + 24 * v58) = 0;
          }

          else
          {
            if (v66 <= v58)
            {
              goto LABEL_108;
            }

            *(v65 + 24 * v58 + 8) = 0;
            if (v66 <= v59)
            {
              goto LABEL_108;
            }

            *(v65 + v57) = 0;
          }
        }

        v55 += v56;
        v57 += 24 * v56;
        v58 = v59;
      }

      while (v54 != v55);
      v49 = __p;
    }
  }

  *a10 = v78 & 1;
  if (v49 && (v99 > v49 || v100 <= v49))
  {
    operator delete(v49);
  }

  return 1;
}

uint64_t TBaseFont::HasCursiveAttachment(TBaseFont *this)
{
  if ((*(this + 46) & 0x1000000) != 0)
  {
    return HIBYTE(*(this + 45)) & 1;
  }

  v6 = 0;
  CopyFeatureSettingForTag(@"curs", this, &v6, 0, 1, &v5);
  explicit = atomic_load_explicit(&v5, memory_order_acquire);
  v3 = v6;

  if (explicit || v3)
  {
    atomic_fetch_or_explicit(this + 45, 0x1000000u, memory_order_relaxed);
    atomic_fetch_or_explicit(this + 46, 0x1000000u, memory_order_relaxed);
    return 1;
  }

  else
  {
    result = 0;
    atomic_fetch_or_explicit(this + 45, 0, memory_order_relaxed);
    atomic_fetch_or_explicit(this + 46, 0x1000000u, memory_order_relaxed);
  }

  return result;
}

void TFontFeatureTable::TFontFeatureTable(TFontFeatureTable *this, const TBaseFont *a2)
{
  *this = 0;
  *(this + 1) = 0;
  v3 = (this + 8);
  *(this + 2) = 0;
  if (TFontFeatureTable::LoadTableData(this, a2) && CFDataGetLength(atomic_load_explicit(v3, memory_order_acquire)) >= 8)
  {
    BytePtr = atomic_load_explicit(v3, memory_order_acquire);
    v5 = BytePtr;
    if (BytePtr)
    {
      BytePtr = CFDataGetBytePtr(BytePtr);
    }

    *(this + 2) = BytePtr;
  }
}

uint64_t TCharStream::CopyBreakIterator(id this, const __CFString *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  if (this || (Table = GetTable()) == 0 || (v6 = Table[2]) == 0)
  {
    v8 = this;
    if (!atomic_load_explicit(&v8, memory_order_acquire))
    {
      v3 = CFPreferencesCopyValue(@"AppleTextBreakLocale", *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
      if (v3)
      {
        v4 = atomic_exchange(&v8, CFLocaleCreateCanonicalLocaleIdentifierFromString(*MEMORY[0x1E695E480], v3));
      }

      else
      {
        CopyPreferredLanguage(v9);

        v4 = *v9;
      }
    }

    memset(v23, 0, sizeof(v23));
    v22 = 0u;
    v21 = 0u;
    v20 = 0u;
    v19 = 0u;
    v18 = 0u;
    v17 = 0u;
    v16 = 0u;
    v15 = 0u;
    v14 = 0u;
    v13 = 0u;
    v12 = 0u;
    v11 = 0u;
    v10 = 0u;
    *&v9[5] = 0u;
    qmemcpy(v9, "en_US", 5);
    if (atomic_load_explicit(&v8, memory_order_acquire))
    {
      CFStringGetCString(atomic_load_explicit(&v8, memory_order_acquire), v9, 255, 0x600u);
    }

    v6 = ubrk_open();
    if (!this)
    {
      SetThreadSpecificData(1, v6, MEMORY[0x1E69E56E0]);
    }
  }

  return v6;
}

id TInstanceFont::CopyGraphicsFont@<X0>(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  result = atomic_load_explicit(this + 79, memory_order_acquire);
  *a2 = result;
  return result;
}

void *TCFNumber::TCFNumber<short>(void *a1, __int16 a2)
{
  valuePtr = a2;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberShortType, &valuePtr);
  *a1 = atomic_exchange(&v4, 0);

  return a1;
}

void TJustEngineImplementation::HandleWhitespaceBoundary(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3 = *a2;
  v4 = 0xAAAAAAAAAAAAAAABLL * ((a2[1] - *a2) >> 3);
  v5 = (*a2 + 24 * a3 - 8);
  v6 = a3;
  while (v6-- >= 1)
  {
    if (v4 <= v6)
    {
      goto LABEL_12;
    }

    v8 = *v5;
    v5 -= 12;
    if (v8 != 4)
    {
      goto LABEL_8;
    }
  }

  if ((a3 & (a3 >> 63)) - 1 < 0)
  {
    return;
  }

  v6 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_8:
  if (v4 > v6)
  {
    *(v3 + 24 * v6 + 8) = 0;
    if (v4 > a3)
    {
      *(v3 + 24 * a3) = 0;
      return;
    }
  }

LABEL_12:
  __break(1u);
}

void TArabicJustEngine::TArabicJustEngine(TArabicJustEngine *this, atomic_ullong *a2)
{
  *this = &unk_1EF25B998;
  *(this + 1) = a2;
  *(this + 8) = 0;
  *(this + 24) = 0u;
  *(this + 40) = 0u;
  *(this + 7) = 0;
  *(this + 16) = 1065353216;
  v3 = *(*(atomic_load_explicit(a2 + 7, memory_order_acquire) + 40) + 408);
  if (v3)
  {
    v7 = 1600;
    v6 = -21846;
    if ((*(*v3 + 672))(v3, &v7, &v6, 1))
    {
      v5 = NAN;
      if ((*(*v3 + 520))(v3, &v6, &v5, 1, 1))
      {
        if (v5 > 0.0)
        {
          v4 = v6;
          if (((*(*v3 + 384))(v3, v5) & 1) == 0)
          {
            *(this + 8) = v4;
          }
        }
      }
    }
  }
}

uint64_t TDelegateRun::FindBreak@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, const TCharStream *a3@<X2>, int a4@<W3>, void *a5@<X8>, double a6@<D0>)
{
  *a5 = 0xAAAAAAAAAAAAAAAALL;
  a5[1] = 0xAAAAAAAAAAAAAAAALL;
  a5[2] = -1;
  result = TRun::FindBreak(a1, a2, a3, a4, a5, a6);
  *a5 |= 8u;
  return result;
}

void *TBaseFont::GetSynthesizedGlyphs(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 27, memory_order_acquire);
  if (!explicit)
  {
    v4 = operator new(0x28uLL, MEMORY[0x1E69E5398]);
    explicit = v4;
    if (v4)
    {
      *v4 = 0u;
      *(v4 + 1) = 0u;
      *(v4 + 8) = 1065353216;
      std::__hash_table<std::__hash_value_type<unsigned int,OTL::Lookup>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OTL::Lookup>>>::__rehash<true>(v4, 0xCuLL);
      v5 = 0;
      v17 = this;
      do
      {
        v6 = &kSynthesizedCharacters[v5];
        v16 = 0;
        TcmapTable::Map(&v17, &kSynthesizedCharacters[v5], &v16, 1, 1);
        if (!v16 && FirstMappedOf(&v17, (v6 + 1)))
        {
          v7 = *v6;
          v8 = explicit[1];
          if (v8)
          {
            v9 = vcnt_s8(v8);
            v9.i16[0] = vaddlv_u8(v9);
            if (v9.u32[0] > 1uLL)
            {
              v10 = *v6;
              if (*&v8 <= v7)
              {
                v10 = v7 % explicit[1];
              }
            }

            else
            {
              v10 = (v8.i32[0] - 1) & v7;
            }

            v11 = *(*explicit + 8 * v10);
            if (v11)
            {
              for (i = *v11; i; i = *i)
              {
                v13 = i[1];
                if (v13 == v7)
                {
                  if (*(i + 8) == v7)
                  {
                    goto LABEL_25;
                  }
                }

                else
                {
                  if (v9.u32[0] > 1uLL)
                  {
                    if (v13 >= *&v8)
                    {
                      v13 %= *&v8;
                    }
                  }

                  else
                  {
                    v13 &= *&v8 - 1;
                  }

                  if (v13 != v10)
                  {
                    break;
                  }
                }
              }
            }
          }

          operator new();
        }

LABEL_25:
        v5 += 3;
      }

      while (v5 != 36);
      v14 = 0;
      atomic_compare_exchange_strong(this + 27, &v14, explicit);
      if (v14)
      {
        v15 = std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(explicit);
        MEMORY[0x1865F22D0](v15, 0x10A0C408EF24B1CLL);
        return v14;
      }
    }
  }

  return explicit;
}

void TArabicJustEngine::~TArabicJustEngine(TArabicJustEngine *this)
{
  *this = &unk_1EF25B998;
  std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(this + 32);
  v2 = *(this + 3);
  *(this + 3) = 0;
  if (v2)
  {
    std::default_delete<std::vector<unsigned short>>::operator()[abi:fn200100](this + 24, v2);
  }
}

{
  TArabicJustEngine::~TArabicJustEngine(this);

  JUMPOUT(0x1865F22D0);
}

BOOL TArabicJustEngine::GenerateMaximas(uint64_t a1, uint64_t a2, uint64_t a3)
{
  __b[65] = *MEMORY[0x1E69E9840];
  if (!*(a1 + 16))
  {
    return 0;
  }

  memset(__b, 170, 0x208uLL);
  v6 = *(a1 + 8);
  v7 = *(v6 + 8);
  __b[0] = *(v6 + 16) + v7;
  __b[1] = v7;
  LOBYTE(__b[5]) = 0;
  __b[2] = 0;
  __b[3] = 0;
  *(&__b[3] + 5) = 0;
  __b[6] = a2;
  __b[7] = a3;
  memset(&__b[8], 0, 208);
  __b[28] = *(a3 + 16);
  __b[64] = &__b[34];
  Run = TScriptRun::NextRun(__b, 0);
  v9 = LODWORD(__b[4]) == 1634885986 && Run;
  if (v9)
  {
    atomic_load_explicit((*(a1 + 8) + 56), memory_order_acquire);
    operator new();
  }

  v11 = &__b[31];
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v11);
  return v9;
}

uint64_t TFont::GetTrackingFloor(TFont *this)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  (*(**(this + 51) + 488))(&v6);
  if (atomic_load_explicit(&v6, memory_order_acquire))
  {
    UnscaledTrackAmount = TFont::GetUnscaledTrackAmount(this);
    v3 = TAATTrakTable::UnscaledTrackAmountForSize(atomic_load_explicit(&v6, memory_order_acquire), (*(this + 3) & 1), *(this + 3), -1.79769313e308) - UnscaledTrackAmount;
    v4 = v3 * TFont::GetScaleFactor(this);
  }

  else
  {
    v4 = 0.0;
  }

  return *&v4;
}

void TAATJustEngine::~TAATJustEngine(TAATJustEngine *this)
{
  *this = &unk_1EF2582B8;
  v4 = *(this + 8);
  v2 = (this + 64);
  v3 = v4;
  *v2 = 0;
  if (v4)
  {
    std::default_delete<std::vector<unsigned short>>::operator()[abi:fn200100](v2, v3);
  }
}

{
  TAATJustEngine::~TAATJustEngine(this);

  JUMPOUT(0x1865F22D0);
}

void std::vector<double,TInlineBufferAllocator<double,30ul>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 3)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 8 * a2);
      v5 += 8 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 3);
    if (v8 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = v4 - v6;
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

    v18[4] = a1 + 24;
    if (v10)
    {
      v11 = (a1 + 264);
      v12 = *(a1 + 264);
      v13 = v12 + 8 * v10;
      if (v13 > a1 + 264)
      {
        if (!(v10 >> 61))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      *v11 = v13;
    }

    else
    {
      v12 = 0;
    }

    v14 = (v12 + 8 * (v7 >> 3));
    v15 = v12 + 8 * v10;
    bzero(v14, 8 * a2);
    memcpy(&v14[-8 * (v7 >> 3)], v6, v7);
    v16 = *a1;
    *a1 = &v14[-8 * (v7 >> 3)];
    *(a1 + 8) = &v14[8 * a2];
    v17 = *(a1 + 16);
    *(a1 + 16) = v15;
    v18[2] = v16;
    v18[3] = v17;
    v18[0] = v16;
    v18[1] = v16;
    std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(v18);
  }
}

void std::vector<double,TInlineBufferAllocator<double,30ul>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 8 * a2;
    }
  }

  else
  {
    std::vector<double,TInlineBufferAllocator<double,30ul>>::__append(a1, a2 - v2);
  }
}

uint64_t TJustEngine::DistributeGap(uint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, int a5, char a6, uint64_t a7, uint64_t a8, double a9, uint64_t a10, double *a11)
{
  v11 = a7;
  v12 = a4;
  v13 = a2;
  v14 = result;
  memset(v87, 0, sizeof(v87));
  memset(v86, 0, sizeof(v86));
  memset(v89, 0, 32);
  v15 = a3 + a4;
  memset(v88, 0, sizeof(v88));
  if (a4 < 1)
  {
    v17 = 0.0;
    if (a5)
    {
      goto LABEL_25;
    }
  }

  else
  {
    v16 = (a7 + 24 * a3 + 16);
    v17 = 0.0;
    v18 = a3;
    do
    {
      v19 = *v16;
      if (v19 != 4)
      {
        v20 = *(v16 - 2) + *(v16 - 1);
        *(v88 + v19) = *(v88 + v19) + v20;
        v17 = v17 + v20;
        if (*(v16 + 2) == 1)
        {
          *(v89 + v19) = v20 + *(v89 + v19);
        }
      }

      ++v18;
      v16 += 3;
    }

    while (v18 < v15);
    if (a5)
    {
      v21 = 0xAAAAAAAAAAAAAAABLL * ((a8 - a7) >> 3);
      if (a3 > v21)
      {
        v21 = a3;
      }

      v22 = (a7 + 24 * a3 + 8);
      v23 = a3;
      while (v21 != v23)
      {
        *v22 = *(v22 - 1) + *v22;
        *(v22 - 1) = 0.0;
        ++v23;
        v22 += 3;
        if (v23 >= v15)
        {
          goto LABEL_25;
        }
      }

      goto LABEL_76;
    }
  }

  v24 = v15 - 1;
  v25 = 0xAAAAAAAAAAAAAAABLL * ((a8 - a7) >> 3);
  if (v25 <= v24)
  {
    goto LABEL_76;
  }

  v26 = a7 + 24 * v24;
  v27 = *(v26 + 8);
  if (v27 != 0.0)
  {
    v28 = *(v26 + 16);
    if (*(v26 + 18))
    {
      *(&v88[2] + v28) = *(&v88[2] + v28) - v27;
    }

    v17 = v17 - v27;
    *(v88 + v28) = *(v88 + v28) - v27;
    *(v26 + 8) = 0;
  }

  if (v25 <= a3)
  {
LABEL_76:
    __break(1u);
    return result;
  }

  v29 = a7 + 24 * a3;
  v30 = *v29;
  if (*v29 != 0.0)
  {
    v31 = *(v29 + 16);
    if (*(v29 + 18))
    {
      *(&v88[2] + v31) = *(&v88[2] + v31) - v30;
    }

    v17 = v17 - v30;
    *(v88 + v31) = *(v88 + v31) - v30;
    *v29 = 0;
  }

LABEL_25:
  v32 = 0;
  v33 = 0;
  v34 = a9;
  v35 = -1;
  do
  {
    v36 = *(v88 + v32);
    if (v36 != 0.0)
    {
      if (fabs(v34) <= fabs(v36))
      {
        *(v86 + v32) = v34 / v36;
        goto LABEL_40;
      }

      if (v35 == -1)
      {
        v35 = v33;
      }

      *(v86 + v32) = 0x3FF0000000000000;
      v34 = v34 - v36;
      v37 = *(&v88[2] + v32);
      if (v37 != 0.0)
      {
        *(&v86[2] + v32) = v34 / v37;
        goto LABEL_40;
      }
    }

    ++v33;
    v32 += 8;
  }

  while (v33 != 4);
  if (((a6 & 1) != 0 && v34 > 0.0 || (a6 & 1) == 0 && v34 != 0.0) && v35 != -1)
  {
    *(v86 + v35) = (a9 - v17 + *(v88 + v35)) / *(v88 + v35);
  }

LABEL_40:
  if (result != a2)
  {
    while (1)
    {
      v39 = *(*(*v14 + 40) + 208);
      v38 = a3 - v39;
      if (a3 < v39)
      {
        break;
      }

      v11 += 24 * v39;
      a10 += 8 * v39;
      v14 += 8;
      a3 -= v39;
      if (v14 == a2)
      {
        goto LABEL_44;
      }
    }
  }

  v38 = a3;
LABEL_44:
  if (v14 != a2)
  {
    v40 = 0;
    do
    {
      v41 = *(*v14 + 48);
      v42 = v38 & ~(v38 >> 63);
      v84 = *(v41 + 208);
      if (v38 + v12 >= v84)
      {
        v43 = *(v41 + 208);
      }

      else
      {
        v43 = v38 + v12;
      }

      if (v43 > v42)
      {
        v80 = v40;
        v81 = v38;
        v44 = *(v41 + 216);
        v45 = *(v44 + 32);
        v82 = v14;
        if (v45 || (v48 = *(v44 + 24)) == 0)
        {
          v46 = 0;
          v47 = v45 + 16 * *(v41 + 200);
        }

        else
        {
          v47 = v48 + 8 * *(v41 + 200);
          v46 = 1;
        }

        v49 = v47 - 8 + 8 * v43;
        v50 = v43 - 1;
        v51 = (v47 - 8 + 16 * v43);
        v83 = v11;
        v52 = (v11 + 24 * v43 - 8);
        v53 = 0.0;
        do
        {
          v54 = *v52;
          v55 = *(v86 + v54);
          v57 = *(v52 - 2);
          v56 = *(v52 - 1);
          v58 = v56 * v55;
          v59 = v55 * v57;
          if (*(v52 + 2) == 1)
          {
            v60 = *(v87 + v54);
            v58 = v58 + v56 * v60;
            v59 = v59 + v57 * v60;
          }

          --v43;
          *(a10 + 8 * v50) = v59 + v58;
          v61 = 0;
          v62 = v49;
          if ((v46 & 1) == 0)
          {
            v62 = (v47 + 16 * v43);
            v61 = *v51;
          }

          v63 = v53 + v58;
          if (v53 + v58 != 0.0)
          {
            v64 = v63 + *v62;
            result = TStorageRange::SetAdvance((v41 + 192), v50, *(&v61 - 1));
            v65 = v63 + *a11;
            v66 = a11[1] + *a11 - (v65 - v63) + v63 + v65 - v63 - v65;
            *a11 = v65;
            a11[1] = v66;
          }

          v52 -= 3;
          v49 -= 8;
          v51 -= 2;
          v53 = v59;
        }

        while (v50-- > v42);
        v12 = a4;
        v40 = v80;
        v68 = v59 == 0.0 || v80 == 0;
        v14 = v82;
        v11 = v83;
        v13 = a2;
        v38 = v81;
        if (!v68)
        {
          v69 = v80[27];
          v70 = v80[26] - 1;
          v71 = *(v69 + 32);
          if (v71 || (v74 = *(v69 + 24)) == 0)
          {
            v72 = v71 + 16 * v80[25] + 16 * v70;
            v73 = *(v72 + 8);
          }

          else
          {
            v72 = v74 + 8 * v80[25] + 8 * v70;
            v73 = 0;
          }

          v75 = v59 + *v72;
          result = TStorageRange::SetAdvance((v80 + 24), v70, *(&v73 - 1));
          v76 = v59 + *a11;
          v77 = a11[1] + *a11 - (v76 - v59) + v59 - (v76 - (v76 - v59));
          *a11 = v76;
          a11[1] = v77;
        }
      }

      v11 += 24 * v84;
      a10 += 8 * v84;
      if ((*(v41 + 178) & 0x40) == 0)
      {
        v40 = v41;
      }

      v38 -= v84;
      v14 += 8;
    }

    while (v14 != v13);
  }

  return result;
}

CGFloat CTFontGetCapHeight(CTFontRef font)
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

  return *(v2 + 32);
}

void std::vector<std::tuple<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>,TInlineBufferAllocator<std::tuple<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>,30ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    v6 = v1;
    if (v4 != v2)
    {
      do
      {
        v4 -= 24;
        std::__destroy_at[abi:fn200100]<std::tuple<long,std::unique_ptr<std::vector<unsigned short>>,TCFRef<__CFData const*>>,0>(v4);
      }

      while (v4 != v2);
      v6 = *a1;
      v5 = **a1;
    }

    v1[1] = v2;
    v7 = v6 + 93;
    if (v6 + 3 <= v5 && v7 > v5)
    {
      if (v6[2] == *v7)
      {
        *v7 = v5;
      }
    }

    else
    {

      operator delete(v5);
    }
  }
}

void std::vector<JustLeftRightMaxima,TInlineBufferAllocator<JustLeftRightMaxima,30ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = v1 + 93;
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
      if (v1[2] == *v3)
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

void TAttributes::TAttributes(TAttributes *this, const TAttributes *a2, const __CFDictionary *a3)
{
  *(this + 49) = 0;
  *(this + 51) = 0;
  *(this + 56) = 0;
  *(this + 104) = 0;
  *(this + 18) = 0;
  *this = 0u;
  *(this + 1) = 0u;
  *(this + 2) = 0u;
  *(this + 15) = 0;
  *(this + 16) = 0;
  TAttributes::operator=(this, a2);
  if (a3)
  {
    TAttributes::ApplyOverrides(this, a3, v5);
  }
}

void CTLineDrawWithAttributeOverrides(uint64_t a1, CGContext *a2)
{
  if (a1)
  {
    v2 = *(a1 + 40);
    v4 = -1;
    v3[0] = xmmword_18475AEF8;
    memset(&v3[1], 255, 64);
    TLineDrawContext::TLineDrawContext(v3, a2);
    TLine::DrawGlyphsWithAttributeOverrides(v2, v3);
  }
}

void TLine::DrawGlyphsWithAttributeOverrides(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v68 = v4;
  v6 = v5;
  v70 = v2;
  v89[1] = *MEMORY[0x1E69E9840];
  *&v7 = -1;
  *(&v7 + 1) = -1;
  *&v74.c = v7;
  *&v74.tx = v7;
  *&v74.a = v7;
  v67 = v3;
  if (*v3)
  {
    v8 = *(v3 + 48);
    *&v74.a = *(v3 + 32);
    *&v74.c = v8;
    *&v74.tx = *(v3 + 64);
  }

  else
  {
    CGContextGetTextMatrix(&v74, *(v3 + 8));
  }

  memset(v88, 170, sizeof(v88));
  __p = 0;
  v86 = 0;
  v87 = 0;
  v89[0] = v88;
  memset(v83, 170, sizeof(v83));
  memset(v82, 0, sizeof(v82));
  v84 = v83;
  memset(v80, 170, sizeof(v80));
  memset(v79, 0, sizeof(v79));
  v81 = v80;
  v9 = (*(v70 + 3) - *(v70 + 2)) >> 3;
  v73 = 0;
  v69 = v9;
  if (v9 < 1)
  {
    LOBYTE(v11) = 0;
  }

  else
  {
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = *(v70 + 2);
      if (v10 >= (*(v70 + 3) - v12) >> 3)
      {
        __break(1u);
      }

      v13 = *(*(v12 + 8 * v10) + 40);
      v14 = *(v13 + 208);
      if (v14 >= 1)
      {
        v15 = *(v13 + 216);
        v16 = *(v13 + 200);
        v17 = (v15[6] + 8 * v16);
        v18 = *v17;
        v77.a = -3.72066208e-103;
        v77.b = -3.72066208e-103;
        if (v6)
        {
          v19 = (*(v6 + 16))(v6, v18, &v77);
          v15 = *(v13 + 216);
          v16 = *(v13 + 200);
        }

        else
        {
          v19 = 0;
        }

        v72 = v19;
        v71 = xmmword_18475A340;
        [v15 attachmentCountAtIndex:v16];
        if (v14 == 1)
        {
          v20 = 0.0;
          v21 = 1;
        }

        else
        {
          v20 = 0.0;
          v21 = 1;
          for (i = 1; i != v14; ++i)
          {
            v23 = v17[i];
            if (*&v77.a > v23 || *&v77.b + *&v77.a <= v23)
            {
              t2.a = v20;
              *&t2.b = v21;
              v76 = v13;
              TAttributes::TAttributes(&t1, (v13 + 40), v19);
              v25 = v86;
              if (v86 >= v87)
              {
                v26 = std::vector<std::tuple<TRun const*,CFRange,TAttributes>,TInlineBufferAllocator<std::tuple<TRun const*,CFRange,TAttributes>,30ul>>::__emplace_back_slow_path<TRun const*&,CFRange&,TAttributes>(&__p, &v76, &t2, &t1);
              }

              else
              {
                *v86 = v13;
                *(v25 + 1) = *&t2.a;
                *(v25 + 73) = 0;
                *(v25 + 75) = 0;
                *(v25 + 80) = 0;
                *(v25 + 128) = 0;
                v25[21] = 0;
                *(v25 + 5) = 0u;
                *(v25 + 7) = 0u;
                *(v25 + 3) = 0u;
                v25[18] = 0;
                v25[19] = 0;
                TAttributes::operator=((v25 + 3), &t1);
                v26 = (v25 + 22);
              }

              v86 = v26;
              TAttributes::~TAttributes(&t1);
              v27 = *(v26 - 15);
              if (v19)
              {
                if (CFDictionaryGetValue(v19, @"NSUnderline") || TAttributes::GetUnderlineColor(v19, 0, v28))
                {
                  std::vector<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul>>::emplace_back<long &,CFRange &,__CFDictionary const*&>(v82, &v73, &v71, &v72);
                }

                if (CFDictionaryGetValue(v19, @"NSStrikethrough") || TAttributes::GetStrikethroughColor(v19, 0, v29))
                {
                  std::vector<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul>>::emplace_back<long &,CFRange &,__CFDictionary const*&>(v79, &v73, &v71, &v72);
                }
              }

              if (v6)
              {
                v19 = (*(v6 + 16))(v6, v23, &v77);
              }

              else
              {
                v19 = 0;
              }

              v11 |= v27;
              v72 = v19;
              *&v71 = i;
              v20 = *&i;
              v21 = 1;
            }

            else
            {
              ++v21;
            }

            *(&v71 + 1) = v21;
            [*(v13 + 216) attachmentCountAtIndex:i + *(v13 + 200)];
          }
        }

        t2.a = v20;
        *&t2.b = v21;
        v76 = v13;
        TAttributes::TAttributes(&t1, (v13 + 40), v19);
        v30 = v86;
        if (v86 >= v87)
        {
          v31 = std::vector<std::tuple<TRun const*,CFRange,TAttributes>,TInlineBufferAllocator<std::tuple<TRun const*,CFRange,TAttributes>,30ul>>::__emplace_back_slow_path<TRun const*&,CFRange&,TAttributes>(&__p, &v76, &t2, &t1);
        }

        else
        {
          *v86 = v13;
          *(v30 + 1) = *&t2.a;
          *(v30 + 73) = 0;
          *(v30 + 75) = 0;
          *(v30 + 80) = 0;
          *(v30 + 128) = 0;
          v30[21] = 0;
          *(v30 + 5) = 0u;
          *(v30 + 7) = 0u;
          *(v30 + 3) = 0u;
          v30[18] = 0;
          v30[19] = 0;
          TAttributes::operator=((v30 + 3), &t1);
          v31 = (v30 + 22);
        }

        v86 = v31;
        TAttributes::~TAttributes(&t1);
        v32 = *(v31 - 15);
        if (v19)
        {
          if (CFDictionaryGetValue(v19, @"NSUnderline") || TAttributes::GetUnderlineColor(v19, 0, v33))
          {
            std::vector<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul>>::emplace_back<long &,CFRange &,__CFDictionary const*&>(v82, &v73, &v71, &v72);
          }

          if (CFDictionaryGetValue(v19, @"NSStrikethrough") || TAttributes::GetStrikethroughColor(v19, 0, v34))
          {
            std::vector<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul>>::emplace_back<long &,CFRange &,__CFDictionary const*&>(v79, &v73, &v71, &v72);
          }
        }

        v11 |= v32;
        v10 = v73;
      }

      v73 = ++v10;
    }

    while (v10 < v69);
  }

  tx = v74.tx;
  ty = v74.ty;
  TLine::GetLeftHangersGlyphCountAndWidth(v70, 0);
  if (v37 != 0.0)
  {
    tx = tx - v37;
  }

  v38 = __p;
  v39 = v68;
  if (v11)
  {
    v40 = v86;
    if (__p != v86)
    {
      v41 = MEMORY[0x1E695EFD0];
      do
      {
        if (v39 == 0.0)
        {
          v43 = v38[1];
          v42 = v38[2];
          v44 = *v38;
          *&v45 = -1;
          *(&v45 + 1) = -1;
          *&v77.c = v45;
          *&v77.tx = v45;
          *&v77.a = v45;
          v46 = v44 + 6;
          if (!v44[9].n128_u8[0])
          {
            v46 = v41;
          }

          t1 = v74;
          v47 = v46[1];
          *&t2.a = *v46;
          *&t2.c = v47;
          *&t2.tx = v46[2];
          CGAffineTransformConcat(&v77, &t1, &t2);
          v48 = *(v67 + 8);
          *&t1.a = *&v77.a;
          *&t1.c = *&v77.c;
          *&t1.tx = *&v74.tx;
          CGContextSetTextMatrix(v48, &t1);
          v90.location = v43;
          v90.length = v42;
          v39 = v68;
          TRun::DrawBackground(v44, v48, v90, (v38 + 3), 1);
          t1 = v74;
          CGContextSetTextMatrix(v48, &t1);
        }

        v38 += 22;
      }

      while (v38 != v40);
      v38 = __p;
    }
  }

  v49 = v86;
  if (v38 != v86)
  {
    v50 = 0;
    v51 = 0;
    do
    {
      if (v39 == 0.0)
      {
        v53 = v38[1];
        v52 = v38[2];
        v54 = *v38;
        *&v55 = -1;
        *(&v55 + 1) = -1;
        *&v77.c = v55;
        *&v77.tx = v55;
        *&v77.a = v55;
        v56 = v54 + 6;
        if (!v54[9].n128_u8[0])
        {
          v56 = MEMORY[0x1E695EFD0];
        }

        t1 = v74;
        v57 = v56[1];
        *&t2.a = *v56;
        *&t2.c = v57;
        *&t2.tx = v56[2];
        CGAffineTransformConcat(&v77, &t1, &t2);
        v58 = *(v67 + 8);
        *&t1.a = *&v77.a;
        *&t1.c = *&v77.c;
        *&t1.tx = *&v74.tx;
        CGContextSetTextMatrix(v58, &t1);
        Positions = TRun::GetPositions(v54, 0);
        t1.a = -3.72066208e-103;
        *&t1.b = v38 + 3;
        t1.c = -3.72066208e-103;
        v60 = v52;
        v39 = v68;
        (*(v54->n128_u64[0] + 40))(v54, v58, v53, v60, v61, &t1, Positions);
        t1 = v74;
        CGContextSetTextMatrix(v58, &t1);
      }

      v51 |= (*(v38 + 161) & 4) >> 2;
      v50 |= (*(v38 + 161) & 0x10) >> 4;
      v38 += 22;
    }

    while (v38 != v49);
    if (v51)
    {
      if (v39 == 0.0)
      {
        CGContextSetTextPosition(*(v67 + 8), tx, ty);
      }

      t1.a = -3.72066066e-103;
      t1.b = v39;
      TDecorator::DrawDecoration(&t1, v67, v70, v82);
    }

    if (v50)
    {
      if (v39 == 0.0)
      {
        CGContextSetTextPosition(*(v67 + 8), tx, ty);
      }

      t1.a = -3.72066066e-103;
      t1.b = v39;
      TDecorator::DrawDecoration(&t1, v67, v70, v79);
    }
  }

  *&t1.a = v79;
  std::vector<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul>>::__destroy_vector::operator()[abi:fn200100](&t1);
  v79[0] = v82;
  std::vector<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul>>::__destroy_vector::operator()[abi:fn200100](v79);
  v62 = __p;
  if (__p)
  {
    v63 = v86;
    v64 = __p;
    if (v86 != __p)
    {
      do
      {
        v65 = v63 - 22;
        TAttributes::~TAttributes((v63 - 19));
        v63 = v65;
      }

      while (v65 != v62);
      v64 = __p;
    }

    v86 = v62;
    if (v88 > v64 || v89 <= v64)
    {
      operator delete(v64);
    }
  }
}

void TLineDrawContext::TLineDrawContext(TLineDrawContext *this, CGContextRef c)
{
  *this = 0;
  *(this + 1) = c;
  *(this + 1) = *MEMORY[0x1E695EFF8];
  v4 = *(MEMORY[0x1E695EFD0] + 16);
  v3 = *(MEMORY[0x1E695EFD0] + 32);
  *(this + 2) = *MEMORY[0x1E695EFD0];
  *(this + 3) = v4;
  *(this + 4) = v3;
  *(this + 10) = 0x3FF0000000000000;
  *&v3 = -1;
  *(&v3 + 1) = -1;
  *&v9.c = v3;
  *&v9.tx = v3;
  *&v9.a = v3;
  CGContextGetCTM(&v9, c);
  v5 = fabs(v9.a * v9.d - v9.b * v9.c);
  v6 = sqrt(v5);
  v7 = v5 <= 0.001;
  v8 = 1.0;
  if (!v7)
  {
    v8 = v6;
  }

  *(this + 10) = v8;
}

void TBaseFont::CopyOTFontFeatureTable(TBaseFont *this@<X0>, unint64_t *a2@<X8>)
{
  v13 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyAttributeInternal(this, @"CTFontOTFeatures", &v13);
  explicit = atomic_load_explicit(&v13, memory_order_acquire);
  v5 = MEMORY[0x1E695E738];
  if (!explicit)
  {
    memset(v12, 170, sizeof(v12));
    TFontFeatureTable::TFontFeatureTable(v12, this);
    v11 = 0xAAAAAAAAAAAAAAAALL;
    if (LOBYTE(v12[0]) == 1)
    {
      v6 = atomic_load_explicit(&v12[1], memory_order_acquire);
    }

    else
    {
      v6 = 0;
    }

    v11 = v6;
    if (atomic_load_explicit(&v11, memory_order_acquire))
    {
      v7 = atomic_load_explicit(&v11, memory_order_acquire);
      os_unfair_lock_lock_with_options();
      v8 = atomic_load_explicit(this + 15, memory_order_acquire);
      if (v7)
      {
        if (!v8)
        {
          TBaseFont::InitAttributesDict(this);
        }

        v9 = atomic_load_explicit(this + 15, memory_order_acquire);
        if (v9)
        {
          CFDictionarySetValue(v9, @"CTFontOTFeatures", v7);
        }
      }

      else if (v8)
      {
        CFDictionaryRemoveValue(v8, @"CTFontOTFeatures");
      }

      os_unfair_lock_unlock(this + 28);
    }

    else
    {
      TBaseFont::SetAttributeInternal<__CFDictionary const*>(this, *v5, @"CTFontOTFeatures");
    }
  }

  if (*v5 == atomic_load_explicit(&v13, memory_order_acquire))
  {
    v10 = 0;
  }

  else
  {
    v10 = atomic_exchange(&v13, 0);
  }

  *a2 = v10;
}

void TAttributes::ApplyOverrides(TAttributes *this, const __CFDictionary *a2, const __CFString **a3)
{
  ForegroundColor = TAttributes::GetForegroundColor(a2, a2, a3);
  if (ForegroundColor)
  {
    v6 = ForegroundColor;
    v7 = CFGetTypeID(ForegroundColor);
    TypeID = CFNullGetTypeID();
    v9 = (this + 32);
    if (v7 == TypeID)
    {

      v10 = *(this + 136) & 0xFD;
    }

    else
    {
      TCFRef<__CTFont const*>::Retain(v9, v6);
      v10 = *(this + 136) | 2;
    }

    *(this + 136) = v10;
  }

  Value = CFDictionaryGetValue(a2, @"NSUnderline");
  if (Value)
  {
    v12 = Value;
    v13 = TAttributes::EnsureRareData(this);
    v14 = CFGetTypeID(v12);
    if (v14 == CFNumberGetTypeID() || v14 == CFBooleanGetTypeID())
    {
      CFNumberGetValue(v12, kCFNumberIntType, (v13 + 56));
      LOBYTE(IntValue) = *(v13 + 56);
    }

    else
    {
      if (v14 != CFStringGetTypeID())
      {
        *(v13 + 56) = 0;
        goto LABEL_15;
      }

      IntValue = CFStringGetIntValue(v12);
      *(v13 + 56) = IntValue;
    }

    if (IntValue)
    {
      v16 = *(this + 137) | 4;
LABEL_16:
      *(this + 137) = v16;
      goto LABEL_17;
    }

LABEL_15:
    v16 = *(this + 137) & 0xFB;
    goto LABEL_16;
  }

LABEL_17:
  v17 = CFDictionaryGetValue(a2, @"NSStrikethrough");
  if (!v17)
  {
    goto LABEL_28;
  }

  v18 = v17;
  v19 = TAttributes::EnsureRareData(this);
  v20 = CFGetTypeID(v18);
  if (v20 == CFNumberGetTypeID() || v20 == CFBooleanGetTypeID())
  {
    CFNumberGetValue(v18, kCFNumberIntType, (v19 + 60));
    LOBYTE(v21) = *(v19 + 60);
  }

  else
  {
    if (v20 != CFStringGetTypeID())
    {
      *(v19 + 60) = 0;
      goto LABEL_26;
    }

    v21 = CFStringGetIntValue(v18);
    *(v19 + 60) = v21;
  }

  if (!v21)
  {
LABEL_26:
    v22 = *(this + 137) & 0xEF;
    goto LABEL_27;
  }

  v22 = *(this + 137) | 0x10;
LABEL_27:
  *(this + 137) = v22;
LABEL_28:
  v23 = CFDictionaryGetValue(a2, @"NSShadow");
  if (v23)
  {
    v25 = v23;
    v26 = CFGetTypeID(v23);
    v27 = CFNullGetTypeID();
    v28 = (this + 40);
    if (v26 == v27)
    {

      v29 = *(this + 136) & 0xF7;
    }

    else
    {
      TCFRef<__CTFont const*>::Retain(v28, v25);
      v29 = *(this + 136) | 8;
    }

    *(this + 136) = v29;
  }

  key = 0xAAAAAAAAAAAAAAAALL;
  v68 = 0;
  BackgroundColor = TAttributes::GetBackgroundColor(a2, &key, v24);
  if (BackgroundColor)
  {
    v31 = BackgroundColor;
    v32 = CFGetTypeID(BackgroundColor);
    v33 = CFNullGetTypeID();
    v34 = key;
    explicit = atomic_load_explicit(&v68, memory_order_acquire);
    if (v32 == v33)
    {
      if (!explicit)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, atomic_load_explicit(this, memory_order_acquire));
      }

      CFDictionaryRemoveValue(atomic_load_explicit(&v68, memory_order_acquire), v34);
      v36 = *(this + 137) & 0xFE;
    }

    else
    {
      if (!explicit)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, atomic_load_explicit(this, memory_order_acquire));
      }

      CFDictionarySetValue(atomic_load_explicit(&v68, memory_order_acquire), v34, v31);
      v36 = *(this + 137) | 1;
    }

    *(this + 137) = v36;
  }

  v37 = CFDictionaryGetValue(a2, @"NSStrokeWidth");
  if (v37)
  {
    v39 = v37;
    v40 = CFGetTypeID(v37);
    v41 = CFNullGetTypeID();
    v42 = atomic_load_explicit(&v68, memory_order_acquire);
    if (v40 == v41)
    {
      if (!v42)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, atomic_load_explicit(this, memory_order_acquire));
      }

      CFDictionaryRemoveValue(atomic_load_explicit(&v68, memory_order_acquire), @"NSStrokeWidth");
      v43 = *(this + 136) & 0xFB;
    }

    else
    {
      if (!v42)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, atomic_load_explicit(this, memory_order_acquire));
      }

      CFDictionarySetValue(atomic_load_explicit(&v68, memory_order_acquire), @"NSStrokeWidth", v39);
      v43 = *(this + 136) | 4;
    }

    *(this + 136) = v43;
  }

  StrokeColor = TAttributes::GetStrokeColor(a2, &key, v38);
  if (StrokeColor)
  {
    v46 = StrokeColor;
    v47 = CFGetTypeID(StrokeColor);
    v48 = CFNullGetTypeID();
    v49 = key;
    v50 = atomic_load_explicit(&v68, memory_order_acquire);
    if (v47 == v48)
    {
      if (!v50)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, atomic_load_explicit(this, memory_order_acquire));
      }

      CFDictionaryRemoveValue(atomic_load_explicit(&v68, memory_order_acquire), v49);
    }

    else
    {
      if (!v50)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, atomic_load_explicit(this, memory_order_acquire));
      }

      CFDictionarySetValue(atomic_load_explicit(&v68, memory_order_acquire), v49, v46);
    }
  }

  UnderlineColor = TAttributes::GetUnderlineColor(a2, &key, v45);
  if (UnderlineColor)
  {
    v53 = UnderlineColor;
    v54 = CFGetTypeID(UnderlineColor);
    v55 = CFNullGetTypeID();
    v56 = key;
    v57 = atomic_load_explicit(&v68, memory_order_acquire);
    if (v54 == v55)
    {
      if (!v57)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, atomic_load_explicit(this, memory_order_acquire));
      }

      CFDictionaryRemoveValue(atomic_load_explicit(&v68, memory_order_acquire), v56);
    }

    else
    {
      if (!v57)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, atomic_load_explicit(this, memory_order_acquire));
      }

      CFDictionarySetValue(atomic_load_explicit(&v68, memory_order_acquire), v56, v53);
    }
  }

  StrikethroughColor = TAttributes::GetStrikethroughColor(a2, &key, v52);
  if (StrikethroughColor)
  {
    v59 = StrikethroughColor;
    v60 = CFGetTypeID(StrikethroughColor);
    v61 = CFNullGetTypeID();
    v62 = key;
    v63 = atomic_load_explicit(&v68, memory_order_acquire);
    if (v60 == v61)
    {
      if (!v63)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, atomic_load_explicit(this, memory_order_acquire));
      }

      CFDictionaryRemoveValue(atomic_load_explicit(&v68, memory_order_acquire), v62);
    }

    else
    {
      if (!v63)
      {
        MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, atomic_load_explicit(this, memory_order_acquire));
      }

      CFDictionarySetValue(atomic_load_explicit(&v68, memory_order_acquire), v62, v59);
    }
  }

  v64 = CFDictionaryGetValue(a2, @"NSTextEffectsContext");
  if (v64)
  {
    v65 = v64;
    v66 = TAttributes::EnsureRareData(this);
    if (!atomic_load_explicit(&v68, memory_order_acquire))
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, atomic_load_explicit(this, memory_order_acquire));
    }

    CFDictionarySetValue(atomic_load_explicit(&v68, memory_order_acquire), @"NSTextEffectsContext", v65);
    *(v66 + 32) = v65;
  }

  if (atomic_load_explicit(&v68, memory_order_acquire))
  {
  }
}

unint64_t NumberOfGlyphVariants(const TBaseFont *a1, int a2)
{
  v70 = *MEMORY[0x1E69E9840];
  v62 = a2;
  CommonTable = TBaseFont::GetCommonTable(a1, 1196643650, 0);
  if (!CommonTable)
  {
    return 0;
  }

  v3 = CommonTable;
  BytePtr = CFDataGetBytePtr(CommonTable);
  if (BytePtr)
  {
    v5 = CFDataGetBytePtr(v3);
    if (v5)
    {
      v6 = &v5[CFDataGetLength(v3)];
    }

    else
    {
      v6 = 0;
    }

    v61 = v6;
    if (!*(BytePtr + 6))
    {
      return 0;
    }

    v7 = (BytePtr + __rev16(*(BytePtr + 6)));
    v8 = v7 + 1;
    if (v7 + 1 > v6)
    {
      return 0;
    }

    v9 = bswap32(*v7) >> 16;
    v10 = &v8[3 * v9];
    if (v10 < v8 || v10 > v6)
    {
      v12 = (v6 - v8) / 6uLL;
      if (v7 + 4 > v6)
      {
        v12 = 0;
      }

      if (v12 != v9)
      {
        return 0;
      }
    }

    if (!*(BytePtr + 8))
    {
      return 0;
    }

    v13 = (BytePtr + __rev16(*(BytePtr + 8)));
    v14 = v13 + 1;
    if (v13 + 1 > v6)
    {
      return 0;
    }

    v16 = bswap32(*v13) >> 16;
    v17 = &v14[v16];
    v18 = v13 + 2 <= v6 ? (v6 - v14) >> 1 : 0;
    v19 = v17 <= v6 && v17 >= v14;
    if (!v19 && v18 != v16)
    {
      return 0;
    }

    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v68[3] = v21;
    v68[2] = v21;
    v68[1] = v21;
    v68[0] = v21;
    v65 = 0;
    v66 = 0;
    v67 = 0;
    v69 = v68;
    v64[0] = &unk_1EF259588;
    v64[1] = &v62;
    v64[2] = &v65;
    v64[3] = v64;
    OTL::GCommon::IterateFeatureTables(BytePtr, v7, v6, v64);
    std::__function::__value_func<BOOL ()(unsigned int,OTL::FeatureTable const*,BOOL &)>::~__value_func[abi:fn200100](v64);
    v22 = std::__unique[abi:fn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>,std::__equal_to &>(v65, v66);
    v25 = v66;
    if (v22 > v66)
    {
      __break(1u);
    }

    v26 = v65;
    if (v22 != v66)
    {
      v25 = v22;
      v66 = v22;
    }

    v27 = *v13;
    v60 = 0;
    if (v65 != v25)
    {
      v58 = bswap32(v27) >> 16;
      v56 = v25;
      v57 = v13;
      while (1)
      {
        if (*v26 >= v58)
        {
LABEL_89:
          BytePtr = v60;
          goto LABEL_91;
        }

        v28 = v14;
        v29 = (v13 + (bswap32(v14[*v26]) >> 16));
        v30 = v29 + 3;
        if ((v29 + 2) < BytePtr || v30 > v61)
        {
          goto LABEL_90;
        }

        v32 = __rev16(v29[2]);
        v33 = &v29[v32 + 3] + ((v29[1] >> 11) & 2);
        v34 = BytePtr <= v29 && v33 >= v29;
        if (!v34 || v33 > v61)
        {
          goto LABEL_90;
        }

        v36 = v32;
        v37 = &v30[v36];
        v38 = v29 + 4 <= v61 ? (v61 - v30) >> 1 : 0;
        v39 = bswap32(v38) >> 16;
        v40 = 2 * v38;
        v41 = v37 < v30 || v37 > v61;
        v42 = v41 ? v40 : v36 * 2;
        if (v41 ? v39 : v29[2])
        {
          break;
        }

LABEL_88:
        ++v26;
        v13 = v57;
        v14 = v28;
        if (v26 == v56)
        {
          goto LABEL_89;
        }
      }

      while (1)
      {
        v44 = v29 + (bswap32(*v30) >> 16);
        if (v44 + 2 > v61)
        {
          break;
        }

        v45 = *v29;
        if (v45 == 1792)
        {
          if (*v44 != 256 || v44 + 8 > v61)
          {
            break;
          }

          v47 = *(v44 + 1);
          if (v47 == 1792)
          {
            break;
          }

          v44 += bswap32(*(v44 + 1));
          if (v44 + 2 > v61)
          {
            break;
          }

          v48 = __rev16(v47);
        }

        else
        {
          v48 = __rev16(v45);
        }

        if (v48 == 3)
        {
          v59[7] = v44;
          v49 = (v44 + 6);
          if (v44 + 6 <= v61)
          {
            v50 = bswap32(*(v44 + 2)) >> 16;
            v51 = v49 + 2 * v50;
            if (v44 + 8 <= v61)
            {
              v52 = (v61 - v49) >> 1;
            }

            else
            {
              v52 = 0;
            }

            if (v51 <= v61 && v51 >= v49 || v52 == v50)
            {
              OTL::LookupWithCoverage::GetCoverage(v44, v61, v59, v23, v24);
              v63 = 0;
              operator new();
            }
          }

          break;
        }

        v55 = v60;
        if (v60 <= 1u)
        {
          v55 = 1;
        }

        v60 = v55;
        ++v30;
        v42 -= 2;
        if (!v42)
        {
          goto LABEL_88;
        }
      }
    }

LABEL_90:
    BytePtr = 0;
LABEL_91:
    v59[0] = &v65;
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v59);
  }

  return BytePtr;
}

const void *TAttributes::GetForegroundColor(TAttributes *this, const __CFDictionary *a2, const __CFString **a3)
{
  result = CFDictionaryGetValue(this, @"CTForegroundColor");
  if (!result)
  {

    return CFDictionaryGetValue(this, @"NSColor");
  }

  return result;
}

BOOL CTFontHasFeatureSettingWithTypeAndSelector(_BOOL8 result, unsigned __int16 a2, int a3)
{
  if (result)
  {
    return TFontFeatureSettingList::IndexOfAATSetting((*(result + 40) + 176), a2, a3) != -1;
  }

  return result;
}

const void *TAttributes::GetStrokeColor(TAttributes *this, const __CFDictionary *a2, const __CFString **a3)
{
  v5 = @"CTStrokeColor";
  result = CFDictionaryGetValue(this, @"CTStrokeColor");
  if (a2 && result || !result && (v5 = @"NSStrokeColor", result = CFDictionaryGetValue(this, @"NSStrokeColor"), a2) && result)
  {
    *a2 = v5;
  }

  return result;
}

const void *TAttributes::GetUnderlineColor(TAttributes *this, const __CFDictionary *a2, const __CFString **a3)
{
  v5 = @"CTUnderlineColor";
  result = CFDictionaryGetValue(this, @"CTUnderlineColor");
  if (a2 && result || !result && (v5 = @"NSUnderlineColor", result = CFDictionaryGetValue(this, @"NSUnderlineColor"), a2) && result)
  {
    *a2 = v5;
  }

  return result;
}

__n128 CTFontDrawGlyphsAtPositionsInternal(uint64_t a1, CGGlyph *a2, const CGPoint *a3, atomic_ullong a4, CGContext *a5, uint64_t a6, uint64_t a7)
{
  if (a1 && a2 && a3 && a4)
  {
    if (a5)
    {
      v11 = xmmword_18475BDF0;
      v8 = *(MEMORY[0x1E695EFD0] + 16);
      v7 = *(MEMORY[0x1E695EFD0] + 32);
      v10[0] = *MEMORY[0x1E695EFD0];
      v10[1] = v8;
      v10[2] = v7;
      v10[3] = v10[0];
      v10[4] = v8;
      v10[5] = v7;
      *&v11 = a6;
      BYTE8(v11) = 0;
      HIDWORD(v11) = 19;
      v12 = a7;
      DrawGlyphsAtPositions(*(a1 + 40), a2, a3, a4, a5, v10);
    }
  }

  return result;
}

void TRun::DrawGlyphsAtPositionsInternal(atomic_ullong *this, CGContextRef c, CFRange a3, const CGPoint *a4, int a5, const TAttributes *a6, char a7)
{
  length = a3.length;
  location = a3.location;
  v10 = c;
  v92 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    v12 = a6;
  }

  else
  {
    v12 = (this + 5);
  }

  if (a5)
  {
    TRun::DrawBackground(this, c, a3, v12, 1);
  }

  v13 = *(this[27] + 16);
  v14 = this[25];
  font = atomic_load_explicit(this + 7, memory_order_acquire);
  if (!font)
  {
    return;
  }

  v15 = TAttributes::SetContextAttributes(v12, v10, a7);
  v16 = v15;
  v17 = *(v12 + 15);
  if (v17)
  {
    v54 = *(v17 + 32);
  }

  else
  {
    v54 = 0;
  }

  v53 = v13 + 2 * v14;
  v18 = this[39];
  if (!v18 || *(v18 + 56) == *(v18 + 64))
  {
    CTFontDrawGlyphsAtPositionsInternal(font, (v53 + 2 * location), &a4[location], length, v10, this, v54);
    if (!v16)
    {
      return;
    }

    goto LABEL_37;
  }

  v49 = v15;
  *&v19 = -1;
  *(&v19 + 1) = -1;
  *&v60.c = v19;
  *&v60.tx = v19;
  *&v60.a = v19;
  CGContextGetTextMatrix(&v60, v10);
  *&v20 = -1;
  *(&v20 + 1) = -1;
  *&v59.c = v20;
  *&v59.tx = v20;
  *&v59.a = v20;
  v21 = this + 12;
  if (!*(this + 144))
  {
    v21 = MEMORY[0x1E695EFD0];
  }

  v22 = v21[1];
  *&t2.a = *v21;
  *&t2.c = v22;
  *&t2.tx = v21[2];
  *t1 = v60;
  CGAffineTransformConcat(&v59, t1, &t2);
  if (length)
  {
    v23 = 0;
    v24 = (*(this[39] + 56) + 16 * location);
    v25 = &v24[2 * length];
    v52 = this;
    v50 = v10;
    do
    {
      v26 = v24;
      v27 = *v24;
      v28 = v24[1];
      v29 = v24 + 2;
      while (v29 != v25)
      {
        v30 = *v29;
        v31 = v29[1];
        v29 += 2;
        if (v30 != v27 || v31 != v28)
        {
          v24 = v29 - 2;
          goto LABEL_24;
        }
      }

      v24 = v25;
LABEL_24:
      location += v23;
      v33 = v24 - v26;
      v23 = (v24 - v26) >> 4;
      v34 = v27 == 1.0 && v28 == 1.0;
      v35 = &a4[location];
      if (v34)
      {
        CTFontDrawGlyphsAtPositionsInternal(font, (v53 + 2 * location), &a4[location], (v24 - v26) >> 4, v10, v52, v54);
      }

      else
      {
        *&v36 = -1;
        *(&v36 + 1) = -1;
        *&matrix.c = v36;
        *&matrix.tx = v36;
        *&matrix.a = v36;
        CGAffineTransformMakeScale(&matrix, *v26, v26[1]);
        v51 = CTFontCreateCopyWithAttributes(font, 0.0, &matrix, 0);
        v37 = *v26;
        v38 = v26[1];
        *t1 = v59;
        CGAffineTransformScale(&t2, t1, v37, v38);
        *t1 = *&t2.a;
        *&t1[16] = *&t2.c;
        *&t1[32] = *&v60.tx;
        CGContextSetTextMatrix(v10, t1);
        *&v39 = 0xAAAAAAAAAAAAAAAALL;
        *(&v39 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v89 = v39;
        v90 = v39;
        v87 = v39;
        v88 = v39;
        v85 = v39;
        v86 = v39;
        v83 = v39;
        v84 = v39;
        v81 = v39;
        v82 = v39;
        v79 = v39;
        v80 = v39;
        v77 = v39;
        v78 = v39;
        v75 = v39;
        v76 = v39;
        v73 = v39;
        v74 = v39;
        v71 = v39;
        v72 = v39;
        v69 = v39;
        v70 = v39;
        v67 = v39;
        v68 = v39;
        v65 = v39;
        v66 = v39;
        v63 = v39;
        v64 = v39;
        *&t1[24] = v39;
        *&t1[40] = v39;
        memset(t1, 0, 24);
        v91 = &t1[24];
        std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__vallocate[abi:fn200100](t1, (v24 - v26) >> 4);
        v40 = *&t1[8];
        bzero(*&t1[8], ((v33 - 16) & 0xFFFFFFFFFFFFFFF0) + 16);
        *&t1[8] = v40 + v33;
        t2 = matrix;
        CGAffineTransformInvert(&v57, &t2);
        v41 = *t1;
        if (v24 != v26)
        {
          v42 = (v35 + v33);
          v43 = *&v57.a;
          v44 = *&v57.c;
          v45 = *t1;
          v46 = *&v57.tx;
          do
          {
            x = v35->x;
            y = v35->y;
            ++v35;
            *v45++ = vaddq_f64(v46, vmlaq_n_f64(vmulq_n_f64(v44, y), v43, x));
          }

          while (v35 != v42);
        }

        v10 = v50;
        CTFontDrawGlyphsAtPositionsInternal(v51, (v53 + 2 * location), v41, v23, v50, v52, v54);
        t2 = v60;
        CGContextSetTextMatrix(v50, &t2);
        *&t2.a = t1;
        std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&t2);
      }
    }

    while (v24 != v25);
  }

  if (v49)
  {
LABEL_37:
    CGContextRestoreGState(v10);
  }
}

const void *TAttributes::GetStrikethroughColor(TAttributes *this, const __CFDictionary *a2, const __CFString **a3)
{
  v5 = @"CTStrikethroughColor";
  result = CFDictionaryGetValue(this, @"CTStrikethroughColor");
  if (a2 && result || !result && (v5 = @"NSStrikethroughColor", result = CFDictionaryGetValue(this, @"NSStrikethroughColor"), a2) && result)
  {
    *a2 = v5;
  }

  return result;
}

unint64_t std::vector<std::tuple<TRun const*,CFRange,TAttributes>,TInlineBufferAllocator<std::tuple<TRun const*,CFRange,TAttributes>,30ul>>::__emplace_back_slow_path<TRun const*&,CFRange&,TAttributes>(unint64_t *a1, void *a2, _OWORD *a3, uint64_t a4)
{
  v4 = 0x2E8BA2E8BA2E8BA3 * ((a1[1] - *a1) >> 4);
  v5 = v4 + 1;
  if ((v4 + 1) > 0x1745D1745D1745DLL)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  if (0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4) > v5)
  {
    v5 = 0x5D1745D1745D1746 * ((a1[2] - *a1) >> 4);
  }

  if ((0x2E8BA2E8BA2E8BA3 * ((a1[2] - *a1) >> 4)) >= 0xBA2E8BA2E8BA2ELL)
  {
    v7 = 0x1745D1745D1745DLL;
  }

  else
  {
    v7 = v5;
  }

  if (v7)
  {
    v8 = a1[663];
    v9 = v8 + 176 * v7;
    if (v9 > (a1 + 663))
    {
      if (v7 <= 0x1745D1745D1745DLL)
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    a1[663] = v9;
  }

  else
  {
    v8 = 0;
  }

  v10 = v8 + 176 * v4;
  *v10 = *a2;
  v11 = v8 + 176 * v7;
  *(v10 + 8) = *a3;
  *(v10 + 73) = 0;
  *(v10 + 75) = 0;
  *(v10 + 80) = 0;
  *(v10 + 128) = 0;
  *(v10 + 168) = 0;
  *(v10 + 40) = 0u;
  *(v10 + 56) = 0u;
  *(v10 + 24) = 0u;
  *(v10 + 144) = 0;
  *(v10 + 152) = 0;
  TAttributes::operator=(v10 + 24, a4);
  v12 = v10 + 176;
  v13 = *a1;
  v14 = a1[1];
  v15 = v10 + *a1 - v14;
  if (*a1 != v14)
  {
    v16 = *a1;
    v17 = v10 + *a1 - v14;
    do
    {
      *v17 = *v16;
      v18 = *(v16 + 8);
      *(v17 + 24) = 0u;
      v19 = v17 + 24;
      *(v19 - 16) = v18;
      *(v19 + 49) = 0;
      *(v19 + 51) = 0;
      *(v19 + 56) = 0;
      *(v19 + 104) = 0;
      *(v19 + 144) = 0;
      *(v19 + 16) = 0u;
      *(v19 + 32) = 0u;
      *(v19 + 120) = 0;
      *(v19 + 128) = 0;
      TAttributes::operator=(v19, v16 + 24);
      v16 += 176;
      v17 = v19 + 152;
    }

    while (v16 != v14);
    do
    {
      TAttributes::~TAttributes((v13 + 24));
      v13 += 176;
    }

    while (v13 != v14);
    v13 = *a1;
  }

  *a1 = v15;
  a1[1] = v12;
  v20 = a1[2];
  a1[2] = v11;
  if (v13)
  {
    v21 = a1 + 663;
    if ((a1 + 3) <= v13 && v21 > v13)
    {
      if (v20 == *v21)
      {
        *v21 = v13;
      }
    }

    else
    {
      operator delete(v13);
    }
  }

  return v12;
}

void SetNSShadow(CGContext *a1, id a2)
{
  [a2 shadowOffset];
  v5 = v4;
  v7 = v6;
  [a2 shadowBlurRadius];
  v9 = v8;
  v10 = [objc_msgSend(a2 shadowColor)];
  v11 = v5;
  v12 = v7;

  CGContextSetShadowWithColor(a1, *&v11, v9, v10);
}

void CTLineDecorationApplyWithBlock(uint64_t a1, __int128 *a2, double a3, double a4, double a5, uint64_t a6, uint64_t a7)
{
  if (a1)
  {
    v7 = *(a1 + 40);
    v14 = 0xAAAAAAAA00000001;
    v15 = a7;
    v8 = a2[1];
    v10 = *a2;
    v11 = v8;
    v12 = a2[2];
    v9[0] = 0xAAAAAAAA00000001;
    v9[1] = 0;
    *&v9[2] = a3;
    *&v9[3] = a4;
    v13 = a5;
    TLine::DrawGlyphsWithAttributeOverrides(v7, v9);
  }
}

uint64_t std::__function::__value_func<void ()(long,long)>::~__value_func[abi:fn200100](uint64_t a1)
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

void CTRunGetBaseAdvancesAndOrigins(CTRunRef runRef, CFRange range, CGSize *advancesBuffer, CGPoint *originsBuffer)
{
  v6 = *MEMORY[0x1E69E9840];
  if (runRef)
  {
    v4 = *(runRef + 5);
    v5 = *(v4 + 216);
    if (*(v5 + 32) || !*(v5 + 24))
    {
      if (!advancesBuffer)
      {
        goto LABEL_10;
      }
    }

    else if (!advancesBuffer)
    {
      goto LABEL_10;
    }

    if (originsBuffer)
    {
      if ((*(v4 + 225) & 0x10) == 0)
      {
        operator new();
      }

      operator new();
    }

LABEL_10:
    operator new();
  }
}

void std::function<void ()(long,long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v5 = a2;
  if (a1)
  {
    (*(*a1 + 48))(a1, &v5, &v4);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:fn200100]();
    std::vector<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul>>::__destroy_vector::operator()[abi:fn200100](v3);
  }
}

void std::vector<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v4 = v1[1];
    v5 = **a1;
    v6 = v1;
    if (v4 != v2)
    {
      do
      {
        v7 = v4 - 4;

        v4 = v7;
      }

      while (v7 != v2);
      v6 = *a1;
      v5 = **a1;
    }

    v1[1] = v2;
    v8 = v6 + 123;
    if (v6 + 3 <= v5 && v8 > v5)
    {
      if (v6[2] == v6[123])
      {
        *v8 = v5;
      }
    }

    else
    {

      operator delete(v5);
    }
  }
}

void CTRunDrawWithAttributeOverrides(uint64_t a1, CGContext *a2, uint64_t a3, uint64_t a4, const __CFDictionary *a5)
{
  if (a1)
  {
    v6 = a3;
    v8 = *(a1 + 40);
    if ((v8[14].n128_u8[1] & 8) != 0)
    {
      v10 = v8[16].n128_u64[1];
      v9 = v8[13].n128_i64[0];
      v11 = *(v8[13].n128_u64[1] + 16);
      v12 = v8[12].n128_u64[1];
      if (v9 < 1 || a3 < 1)
      {
        v6 = 0;
      }

      else
      {
        v14 = a3;
        v6 = 0;
        do
        {
          v16 = v10 == v6 || *(v11 + 2 * v12 + 2 * v6) != -1;
          if (++v6 >= v9)
          {
            break;
          }

          v14 -= v16;
        }

        while (v14);
      }

      if (a4)
      {
        v17 = 0;
        if (v9 > v6 && a4 >= 1)
        {
          v17 = 0;
          v18 = v10 - v6;
          v19 = v11 + 2 * v6 + 2 * v12;
          do
          {
            v21 = v18 == v17 || *(v19 + 2 * v17) != -1;
            v22 = v6 + 1 + v17++;
            if (v22 >= v9)
            {
              break;
            }

            a4 -= v21;
          }

          while (a4);
        }
      }

      else
      {
        v17 = v9 - v6;
      }

      a4 = v17;
    }

    else
    {
      v9 = v8[13].n128_i64[0];
    }

    if ((v6 & 0x8000000000000000) == 0 && v6 + a4 <= v9)
    {
      v23 = v9 - v6;
      v24 = a4 ? a4 : v23;
      Positions = TRun::GetPositions(*(a1 + 40), 0);
      if (v25)
      {
        v27 = v25;
        if (a5)
        {
          memset(v38, 170, sizeof(v38));
          v34 = unk_18475B1A0;
          v36 = unk_18475B1C0;
          v37 = xmmword_18475B1D0;
          v35 = xmmword_18475B1B0;
          memset(v33, 170, sizeof(v33));
          TAttributes::TAttributes(v33, &v8[2].n128_i8[8], a5);
          v30 = 0xAAAAAAAAAAAAAA01;
          v31 = v33;
          v32 = 0xAAAAAAAAAAAAAA00;
          (*(v8->n128_u64[0] + 40))(v8, a2, v6, v24, v27, &v30);
          TAttributes::~TAttributes(v33);
        }

        else
        {
          v33[0] = 0xAAAAAAAAAAAAAA01;
          *&v33[1] = 0xAAAAAAAAAAAAAA00;
          (*(v8->n128_u64[0] + 40))(v8, a2, v6, v24, v25, v33, Positions);
          if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
          {
            dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
          }

          if ((IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter & 0x40) == 0)
          {
            TextPosition = CGContextGetTextPosition(a2);
            v29 = v8[11].n128_u8[1];
            if ((v29 & 4) != 0)
            {
              LODWORD(v30) = 0;
              v31 = 0;
              v34 = unk_184778410;
              v35 = xmmword_184778420;
              *&v36 = -1;
              v33[0] = __const__ZN10TDecorator14DrawDecorationEP9CGContextRK4TRun7CFRange7CGPoint_c;
              memset(&v33[1], 255, 32);
              TLineDrawContext::TLineDrawContext(v33, a2);
              v39.location = v6;
              v39.length = v24;
              TDecorator::DrawDecoration(&v30, v33, v8, v39, TextPosition);
              v29 = v8[11].n128_u8[1];
            }

            if ((v29 & 0x10) != 0)
            {
              LODWORD(v30) = 1;
              v31 = 0;
              v34 = unk_184778410;
              v35 = xmmword_184778420;
              *&v36 = -1;
              v33[0] = __const__ZN10TDecorator14DrawDecorationEP9CGContextRK4TRun7CFRange7CGPoint_c;
              memset(&v33[1], 255, 32);
              TLineDrawContext::TLineDrawContext(v33, a2);
              v40.location = v6;
              v40.length = v24;
              TDecorator::DrawDecoration(&v30, v33, v8, v40, TextPosition);
            }
          }
        }
      }
    }
  }
}

void CopyPhysicalFamilyName(const __CTFont *a1, const __CTFont *a2)
{
  v4 = CTFontCopyPhysicalFont(a2);
  if (v4)
  {
    v5 = v4;
    v6 = CTFontCopyFamilyName(v4);
  }

  else
  {

    v6 = CTFontCopyFamilyName(a2);
  }

  *a1 = v6;
}

uint64_t std::__function::__func<CTRunGetBaseAdvancesAndOrigins::$_2,std::allocator<CTRunGetBaseAdvancesAndOrigins::$_2>,void ()(long,long)>::operator()(uint64_t result, uint64_t *a2, uint64_t *a3)
{
  v3 = result;
  v4 = *a2;
  v5 = *a3;
  v6 = *(result + 8);
  if (v6)
  {
    v7 = *(result + 24);
    if (*(result + 16) == 1)
    {
      v8 = (v7 + 8 * v4);
      v9 = 0;
    }

    else
    {
      v8 = (v7 + 16 * v4);
      v9 = v8[1];
    }

    v10 = (v6 + 16 * v5);
    *v10 = *v8;
    v10[1] = v9;
  }

  v11 = *(result + 32);
  if (v11)
  {
    v12 = *(result + 40);
    if ((*(v12 + 33) & 0x10) != 0)
    {
      result = [*(v12 + 24) originAtIndex:*(v12 + 8) + v4];
      v11 = *(v3 + 32);
      *(&v13 + 1) = v14;
    }

    else
    {
      v13 = *MEMORY[0x1E695EFF8];
    }

    *(v11 + 16 * v5) = v13;
  }

  return result;
}

void TFont::CreatePathForGlyph(TFont *this@<X0>, const CGAffineTransform *a2@<X2>, unsigned int a3@<W1>, void *a4@<X8>)
{
  v12 = 0xAAAAAAAAAAAAAAAALL;
  (*(**(this + 51) + 488))(&v12);
  if (atomic_load_explicit(&v12, memory_order_acquire) && TFont::HasColorBitmapForGlyph(this, a3, atomic_load_explicit(&v12, memory_order_acquire)))
  {
    *a4 = 0;
  }

  else
  {
    *&v8 = -1;
    *(&v8 + 1) = -1;
    *&v11.c = v8;
    *&v11.tx = v8;
    *&v11.a = v8;
    TFont::GetScaledMatrix(this, &v11);
    if (a2)
    {
      t1 = v11;
      v9 = *&a2->c;
      *&t2.a = *&a2->a;
      *&t2.c = v9;
      *&t2.tx = *&a2->tx;
      CGAffineTransformConcat(&v10, &t1, &t2);
      v11 = v10;
    }

    t1.a = -3.72066208e-103;
    (*(**(this + 51) + 504))(&t1);
    atomic_load_explicit(&t1, memory_order_acquire);
    *&t2.a = CGFontCreateGlyphPath();
    *a4 = atomic_exchange(&t2, 0);
  }
}

CGPathRef CTFontCreatePathForGlyph(CTFontRef font, CGGlyph glyph, const CGAffineTransform *matrix)
{
  if (!font)
  {
    return 0;
  }

  TFont::CreatePathForGlyph(*(font + 5), matrix, glyph, &v5);
  v3 = atomic_exchange(&v5, 0);

  return v3;
}

void TBaseFont::CopyWeightAxisValue(TBaseFont *this@<X0>, unint64_t *a2@<X8>)
{
  v17 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyAttributeInternal(this, @"CTFontWeightAxisValueAttribute", &v17);
  if (!atomic_load_explicit(&v17, memory_order_acquire))
  {
    v16 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 112))(&v16, this);
    if (atomic_load_explicit(&v16, memory_order_acquire))
    {
      Value = CFDictionaryGetValue(atomic_load_explicit(&v16, memory_order_acquire), &unk_1EF27A6B0);
      if (Value)
      {
        TCFRef<__CTFont const*>::Retain(&v17, Value);
      }

      else
      {
        v15 = 0xAAAAAAAAAAAAAAAALL;
        (*(*this + 120))(&v15, this);
        explicit = atomic_load_explicit(&v15, memory_order_acquire);
        if (explicit)
        {
          Count = CFArrayGetCount(explicit);
          if (Count)
          {
            v9 = Count;
            v10 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(explicit, v10);
              v12 = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisIdentifier");
              if (v12 == &unk_1EF27A6B0 || v12 && CFEqual(v12, &unk_1EF27A6B0))
              {
                break;
              }

              if (v9 == ++v10)
              {
                goto LABEL_16;
              }
            }

            v13 = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisDefaultValue");
            TCFRef<__CTFont const*>::Retain(&v17, v13);
          }
        }

LABEL_16:
      }
    }

    if (atomic_load_explicit(&v17, memory_order_acquire))
    {
      v14 = atomic_load_explicit(&v17, memory_order_acquire);
      TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v14, @"CTFontWeightAxisValueAttribute");
    }

    else
    {
      TBaseFont::SetAttributeInternal<__CFDictionary const*>(this, *MEMORY[0x1E695E738], @"CTFontWeightAxisValueAttribute");
    }

    goto LABEL_20;
  }

  v4 = atomic_load_explicit(&v17, memory_order_acquire);
  if (*MEMORY[0x1E695E738] != v4)
  {
LABEL_20:
    v5 = atomic_exchange(&v17, 0);
    goto LABEL_21;
  }

  v5 = 0;
LABEL_21:
  *a2 = v5;
}

double GetRoundedWeight(TBaseFont **a1)
{
  v7 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyWeightAxisValue(a1[51], &v7);
  if (atomic_load_explicit(&v7, memory_order_acquire))
  {
    v2 = atomic_load_explicit(&v7, memory_order_acquire);
    valuePtr = NAN;
    CFNumberGetValue(v2, kCFNumberDoubleType, &valuePtr);
    v3 = round(valuePtr);

    v4 = v7;
  }

  else
  {

    TFont::CopyAttribute(a1, @"CTFontCSSWeightAttribute", 46, &valuePtr);
    v5 = atomic_exchange(&valuePtr, 0);

    valuePtr = NAN;
    CFNumberGetValue(v5, kCFNumberDoubleType, &valuePtr);
    v3 = valuePtr;
    v4 = v5;
  }

  return v3;
}

void SecondaryScaleRecipeForFont(uint64_t a1, uint64_t a2, __CFString *theString, uint64_t a4, uint64_t a5, char a6, double a7, double a8)
{
  v56 = 0;
  v16 = 48;
  v17 = &off_1E6E3DCF8;
  while (1)
  {
    v18 = *(v17 - 1);
    if (v18 == theString || theString && v18 && CFStringHasPrefix(theString, *(v17 - 1)))
    {
      break;
    }

    v17 += 3;
    v16 -= 24;
    if (!v16)
    {
      goto LABEL_11;
    }
  }

  if (*(v17 + 8) == 1)
  {
    theString = *v17;
  }

  else
  {

    explicit = atomic_load_explicit(&v56, memory_order_acquire);
    v59.length = CFStringGetLength(v18);
    v59.location = 0;
    CFStringReplace(explicit, v59, *v17);
    theString = atomic_load_explicit(&v56, memory_order_acquire);
  }

LABEL_11:
  SecondaryScaleData = [&unk_1EF275E58 objectForKeyedSubscript:theString];

  if (!SecondaryScaleData)
  {
    SecondaryScaleData = TFont::GetSecondaryScaleData(*(a2 + 40));
    TypeID = CFArrayGetTypeID();
    if (!SecondaryScaleData || (v50 = TypeID, CFGetTypeID(SecondaryScaleData) != TypeID) || !CFArrayGetCount(SecondaryScaleData) || (ValueAtIndex = CFArrayGetValueAtIndex(SecondaryScaleData, 0), CFGetTypeID(ValueAtIndex) != v50))
    {
      *a1 = 0;
      *(a1 + 32) = 0;
      return;
    }
  }

  v21 = [&unk_1EF275E30 objectForKeyedSubscript:a4];
  if (v21)
  {
    v22 = v21;
  }

  else
  {
    v22 = @"sfpro";
  }

  v56 = 0xAAAAAAAAAAAAAAAALL;
  theArray = 0xAAAAAAAAAAAAAAAALL;
  v58 = NAN;
  tuplesBracketingValue(&v56, SecondaryScaleData, a7, 0);
  v23 = v56;
  v24 = CFArrayGetValueAtIndex(v56, 1);
  Value = CFDictionaryGetValue(v24, v22);
  if (!Value)
  {
    v52 = CFDictionaryGetValue(&unk_1EF275E08, v22);
    if (v52)
    {
      v53 = v52;
      while (1)
      {
        v54 = CFDictionaryGetValue(v53, v22);
        if (!v54)
        {
          break;
        }

        v22 = v54;
        v55 = CFArrayGetValueAtIndex(v23, 1);
        Value = CFDictionaryGetValue(v55, v22);
        if (Value)
        {
          goto LABEL_16;
        }
      }
    }

LABEL_29:
    v48 = 0;
    *a1 = 0;
    goto LABEL_31;
  }

LABEL_16:
  v26 = TextScaleRecipeForSize(Value, a5, a6, a8);
  v30 = v26;
  v31 = v27;
  v32 = v28;
  v33 = v29;
  if (v23 == theArray)
  {
    *a1 = v26;
    *(a1 + 8) = v27;
    v48 = 1;
    *(a1 + 16) = v28;
    *(a1 + 24) = v29;
    goto LABEL_31;
  }

  v34 = CFArrayGetValueAtIndex(theArray, 1);
  v35 = CFDictionaryGetValue(v34, v22);
  if (!v35)
  {
    goto LABEL_29;
  }

  v36 = TextScaleRecipeForSize(v35, a5, a6, a8);
  v38 = v37;
  v40 = v39;
  v42 = v41;
  v43 = v58;
  v44 = std::__lerp[abi:fn200100]<double>(v30, v36, v58);
  v45 = std::__lerp[abi:fn200100]<double>(v31, v38, v43);
  v46 = std::__lerp[abi:fn200100]<double>(v32, v40, v43);
  v47 = std::__lerp[abi:fn200100]<double>(v33, v42, v43);
  *a1 = v44;
  *(a1 + 8) = v45;
  *(a1 + 16) = v46;
  *(a1 + 24) = v47;
  v48 = 1;
LABEL_31:
  *(a1 + 32) = v48;
}

void tuplesBracketingValue(const __CFArray *a1, CFArrayRef theArray, double a3, CFIndex a4)
{
  v42 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40[14] = v7;
  v40[13] = v7;
  v40[12] = v7;
  v40[11] = v7;
  v40[10] = v7;
  v40[9] = v7;
  v40[8] = v7;
  v40[7] = v7;
  v40[6] = v7;
  v40[5] = v7;
  v40[4] = v7;
  v40[2] = v7;
  v40[3] = v7;
  v40[0] = v7;
  v40[1] = v7;
  v39 = 0uLL;
  v38 = 0;
  v41 = v40;
  Count = CFArrayGetCount(theArray);
  if (Count <= a4)
  {
    v15 = v39;
  }

  else
  {
    v9 = Count;
    v10 = a4;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, v10);
      v12 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
      *&valuePtr = -1;
      CFNumberGetValue(v12, kCFNumberDoubleType, &valuePtr);
      v13 = valuePtr;
      v14 = v39;
      if (v39 >= *(&v39 + 1))
      {
        v37 = 0xAAAAAAAAAAAAAAAALL;
        *&v16 = 0xAAAAAAAAAAAAAAAALL;
        *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
        valuePtr = v16;
        v36 = v16;
        v17 = (v39 - v38) >> 3;
        if ((v17 + 1) >> 61)
        {
          goto LABEL_21;
        }

        v18 = (*(&v39 + 1) - v38) >> 2;
        if (v18 <= v17 + 1)
        {
          v18 = v17 + 1;
        }

        if (*(&v39 + 1) - v38 >= 0x7FFFFFFFFFFFFFF8uLL)
        {
          v19 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v19 = v18;
        }

        std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(&valuePtr, v19, v17, v40);
        v20 = v36;
        *v36 = v13;
        *&v36 = v20 + 8;
        v21 = (*(&valuePtr + 1) - (v39 - v38));
        memcpy(v21, v38, v39 - v38);
        v22 = v38;
        v23 = *(&v39 + 1);
        v38 = v21;
        v34 = v36;
        v39 = v36;
        *&v36 = v22;
        *(&v36 + 1) = v23;
        *&valuePtr = v22;
        *(&valuePtr + 1) = v22;
        std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&valuePtr);
        v15 = v34;
      }

      else
      {
        *v39 = valuePtr;
        v15 = (v14 + 8);
      }

      *&v39 = v15;
      ++v10;
    }

    while (v9 != v10);
  }

  v24 = IndexesBracketing<std::__wrap_iter<double *>,double>(v38, v15, a3);
  v25 = HIWORD(v24);
  v26 = v24;
  v27 = CFArrayGetValueAtIndex(theArray, v24 + a4);
  v28 = CFArrayGetValueAtIndex(theArray, v25 + a4);
  v29 = (v39 - v38) >> 3;
  if (v29 <= v26 || v29 <= v25)
  {
    __break(1u);
LABEL_21:
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v30 = v38[v26];
  v31 = v38[v25];
  v32 = 0.0;
  if (v30 != v31)
  {
    v32 = (a3 - v30) / (v31 - v30);
  }

  *a1 = v27;
  *(a1 + 1) = v28;
  *(a1 + 2) = v32;
  *&valuePtr = &v38;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&valuePtr);
}

uint64_t IndexesBracketing<std::__wrap_iter<double *>,double>(double *a1, double *a2, double a3)
{
  v3 = a1;
  if (a2 - a1 >= 2 && *a1 <= a3)
  {
    if (*(a2 - 1) <= a3)
    {
      v4 = ((a2 - a1) >> 3) - 1;
    }

    else
    {
      v7 = a1 + 1;
      if (a1 + 1 == a2)
      {
        v4 = 0;
        v5 = 1;
        return v4 | (v5 << 16);
      }

      v4 = 0;
      v5 = 1;
      while (vabdd_f64(a3, *v3) >= 2.22044605e-16)
      {
        if (vabdd_f64(a3, *v7) < 2.22044605e-16)
        {
          v4 = v5;
          return v4 | (v5 << 16);
        }

        if (*v3 >= a3 || *v7 <= a3)
        {
          ++v4;
          ++v5;
          ++v3;
          if (++v7 != a2)
          {
            continue;
          }
        }

        return v4 | (v5 << 16);
      }
    }

    v5 = v4;
    return v4 | (v5 << 16);
  }

  v4 = 0;
  v5 = 0;
  return v4 | (v5 << 16);
}

id std::vector<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul>>::emplace_back<long &,CFRange &,__CFDictionary const*&>(uint64_t *a1, void *a2, __int128 *a3, void **a4)
{
  v9 = a1[1];
  v8 = a1[2];
  if (v9 >= v8)
  {
    v24 = 0xAAAAAAAAAAAAAAAALL;
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22 = v14;
    v23 = v14;
    v15 = (v9 - *a1) >> 5;
    if ((v15 + 1) >> 59)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v16 = v8 - *a1;
    v17 = v16 >> 4;
    if (v16 >> 4 <= (v15 + 1))
    {
      v17 = v15 + 1;
    }

    if (v16 >= 0x7FFFFFFFFFFFFFE0)
    {
      v18 = 0x7FFFFFFFFFFFFFFLL;
    }

    else
    {
      v18 = v17;
    }

    std::__split_buffer<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul> &>::__split_buffer(&v22, v18, v15, (a1 + 3));
    v19 = v23;
    v20 = *a4;
    v21 = *a3;
    *v23 = *a2;
    *(v19 + 8) = v21;
    *(v19 + 24) = v20;
    *&v23 = v23 + 32;
    std::vector<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul>>::__swap_out_circular_buffer(a1, &v22);
    v13 = a1[1];
    result = std::__split_buffer<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul> &>::~__split_buffer(&v22);
  }

  else
  {
    v10 = *a4;
    v11 = *a3;
    *v9 = *a2;
    *(v9 + 8) = v11;
    result = v10;
    *(v9 + 24) = result;
    v13 = v9 + 32;
  }

  a1[1] = v13;
  return result;
}

void *std::__split_buffer<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul> &>::__split_buffer(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v5 = *(a4 + 960);
    v6 = v5 + 32 * a2;
    if (v6 > a4 + 960)
    {
      if (!(a2 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    *(a4 + 960) = v6;
  }

  else
  {
    v5 = 0;
  }

  v7 = v5 + 32 * a3;
  *a1 = v5;
  a1[1] = v7;
  a1[2] = v7;
  a1[3] = v5 + 32 * a2;
  return a1;
}

double TextScaleRecipeForSize(CFDictionaryRef theDict, uint64_t a2, char a3, double a4)
{
  if (a3)
  {
    v6 = *&a2 * 100.0;
  }

  else
  {
    v6 = 0.0;
  }

  if (v6 == 0.0)
  {
    Value = CFDictionaryGetValue(theDict, @"auto");
    theArray = 0xAAAAAAAAAAAAAAAALL;
    v50 = 0xAAAAAAAAAAAAAAAALL;
    v51 = NAN;
    tuplesBracketingValue(&theArray, Value, a4, 0);
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 1);
    valuePtr = NAN;
    CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, &valuePtr);
    v9 = valuePtr;
    v10 = CFArrayGetValueAtIndex(v50, 1);
    valuePtr = NAN;
    CFNumberGetValue(v10, kCFNumberDoubleType, &valuePtr);
    v6 = std::__lerp[abi:fn200100]<double>(v9, valuePtr, v51);
  }

  v11 = CFDictionaryGetValue(theDict, @"recipes");
  valuePtr = -3.72066208e-103;
  v47 = 0xAAAAAAAAAAAAAAAALL;
  v48 = NAN;
  tuplesBracketingValue(&valuePtr, v11, a4, 0);
  v12 = *&valuePtr;
  theArray = 0xAAAAAAAAAAAAAAAALL;
  v50 = 0xAAAAAAAAAAAAAAAALL;
  v51 = NAN;
  tuplesBracketingValue(&theArray, *&valuePtr, v6, 1);
  v13 = theArray;
  v14 = CFArrayGetValueAtIndex(theArray, 1);
  v52 = NAN;
  CFNumberGetValue(v14, kCFNumberDoubleType, &v52);
  v15 = v52;
  v16 = v50;
  v17 = CFArrayGetValueAtIndex(v50, 1);
  v52 = NAN;
  CFNumberGetValue(v17, kCFNumberDoubleType, &v52);
  v18 = v51;
  v19 = std::__lerp[abi:fn200100]<double>(v15, v52, v51);
  v20 = CFArrayGetValueAtIndex(v13, 2);
  v52 = NAN;
  CFNumberGetValue(v20, kCFNumberDoubleType, &v52);
  v21 = v52;
  v22 = CFArrayGetValueAtIndex(v16, 2);
  v52 = NAN;
  CFNumberGetValue(v22, kCFNumberDoubleType, &v52);
  v23 = std::__lerp[abi:fn200100]<double>(v21, v52, v18);
  v24 = CFArrayGetValueAtIndex(v13, 3);
  v52 = NAN;
  CFNumberGetValue(v24, kCFNumberDoubleType, &v52);
  v25 = v52;
  v26 = CFArrayGetValueAtIndex(v16, 3);
  v52 = NAN;
  CFNumberGetValue(v26, kCFNumberDoubleType, &v52);
  v27 = std::__lerp[abi:fn200100]<double>(v25, v52, v18);
  if (v12 != v47)
  {
    theArray = 0xAAAAAAAAAAAAAAAALL;
    v50 = 0xAAAAAAAAAAAAAAAALL;
    v51 = NAN;
    tuplesBracketingValue(&theArray, v47, v6, 1);
    v28 = theArray;
    v29 = CFArrayGetValueAtIndex(theArray, 1);
    v52 = NAN;
    CFNumberGetValue(v29, kCFNumberDoubleType, &v52);
    v45 = v19;
    v30 = v52;
    v31 = v50;
    v32 = CFArrayGetValueAtIndex(v50, 1);
    v52 = NAN;
    CFNumberGetValue(v32, kCFNumberDoubleType, &v52);
    v33 = v51;
    v34 = std::__lerp[abi:fn200100]<double>(v30, v52, v51);
    v35 = CFArrayGetValueAtIndex(v28, 2);
    v52 = NAN;
    CFNumberGetValue(v35, kCFNumberDoubleType, &v52);
    v36 = v52;
    v37 = CFArrayGetValueAtIndex(v31, 2);
    v52 = NAN;
    CFNumberGetValue(v37, kCFNumberDoubleType, &v52);
    v38 = std::__lerp[abi:fn200100]<double>(v36, v52, v33);
    v39 = CFArrayGetValueAtIndex(v28, 3);
    v52 = NAN;
    CFNumberGetValue(v39, kCFNumberDoubleType, &v52);
    v40 = v52;
    v41 = CFArrayGetValueAtIndex(v31, 3);
    v52 = NAN;
    CFNumberGetValue(v41, kCFNumberDoubleType, &v52);
    v42 = std::__lerp[abi:fn200100]<double>(v40, v52, v33);
    v43 = v48;
    std::__lerp[abi:fn200100]<double>(v45, v34, v48);
    std::__lerp[abi:fn200100]<double>(v23, v38, v43);
    std::__lerp[abi:fn200100]<double>(v27, v42, v43);
  }

  return v6;
}

void std::vector<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul>>::__swap_out_circular_buffer(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a2[1] + *a1 - v5;
  if (v5 != *a1)
  {
    v7 = *a1;
    v8 = a2[1] + *a1 - v5;
    do
    {
      v9 = *v7;
      *(v8 + 16) = *(v7 + 2);
      *v8 = v9;
      *(v8 + 24) = atomic_exchange(v7 + 3, 0);
      v7 += 2;
      v8 += 32;
    }

    while (v7 != v5);
    do
    {

      v4 += 4;
    }

    while (v4 != v5);
    v4 = *a1;
  }

  a2[1] = v6;
  *a1 = v6;
  a1[1] = v4;
  a2[1] = v4;
  v10 = a1[1];
  a1[1] = a2[2];
  a2[2] = v10;
  v11 = a1[2];
  a1[2] = a2[3];
  a2[3] = v11;
  *a2 = a2[1];
}

void CreateCopyOfFontWithSizeAndWeightClass(const __CTFont *a1, CGFloat a2, double a3, void *a4, int a5)
{
  v7 = a4;
  v68 = *MEMORY[0x1E69E9840];
  v59 = 0;
  if (a5)
  {
    CreateFeatureSettingsForLigatureSetting(&keys, *(a4[5] + 408), 0);
  }

  v9 = v7[5];
  (*(**(v9 + 51) + 120))(&keys);
  explicit = atomic_load_explicit(&keys, memory_order_acquire);

  if (!explicit)
  {
    v58 = 0xAAAAAAAAAAAAAAAALL;
    (*(**(v9 + 51) + 72))(&v58);
    v15 = atomic_load_explicit(&v58, memory_order_acquire);
    keys = @"NSFontFamilyAttribute";
    values[0] = v15;
    v16 = *MEMORY[0x1E695E480];
    v17 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    v18 = CTFontDescriptorCreateWithAttributes(v17);
    MatchingFontDescriptorsWithOptions = CTFontDescriptorCreateMatchingFontDescriptorsWithOptions(v18, 0, 1024);
    if (MatchingFontDescriptorsWithOptions)
    {
      v54 = v18;
      v55 = v17;
      v53 = v7;
      *&v20 = 0xAAAAAAAAAAAAAAAALL;
      *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v66[14] = v20;
      v66[13] = v20;
      v66[12] = v20;
      v66[11] = v20;
      v66[10] = v20;
      v66[9] = v20;
      v66[8] = v20;
      v66[7] = v20;
      v66[6] = v20;
      v66[5] = v20;
      v66[4] = v20;
      v66[3] = v20;
      v66[1] = v20;
      v66[2] = v20;
      v66[0] = v20;
      v65 = 0uLL;
      keys = 0;
      v56 = a1;
      v67 = v66;
      Mutable = CFDictionaryCreateMutable(v16, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      Count = CFArrayGetCount(MatchingFontDescriptorsWithOptions);
      if (Count)
      {
        v23 = Count;
        for (i = 0; i != v23; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(MatchingFontDescriptorsWithOptions, i);
          v26 = objc_autoreleasePoolPush();
          v27 = CTFontDescriptorCopyAttribute(ValueAtIndex, @"CTFontCSSWeightAttribute");
          values[0] = -1;
          CFNumberGetValue(v27, kCFNumberDoubleType, values);
          v28 = values[0];
          v29 = v65;
          if (v65 >= *(&v65 + 1))
          {
            v63 = 0xAAAAAAAAAAAAAAAALL;
            *&v31 = 0xAAAAAAAAAAAAAAAALL;
            *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *values = v31;
            v62 = v31;
            v32 = (v65 - keys) >> 3;
            v33 = v32 + 1;
            if ((v32 + 1) >> 61)
            {
              goto LABEL_36;
            }

            v34 = *(&v65 + 1) - keys;
            if ((*(&v65 + 1) - keys) >> 2 > v33)
            {
              v33 = v34 >> 2;
            }

            if (v34 >= 0x7FFFFFFFFFFFFFF8)
            {
              v35 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v35 = v33;
            }

            std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(values, v35, v32, v66);
            v36 = v62;
            *v62 = v28;
            *&v62 = v36 + 8;
            v37 = values[1] - (v65 - keys);
            memcpy(v37, keys, v65 - keys);
            v38 = keys;
            v39 = *(&v65 + 1);
            keys = v37;
            v57 = v62;
            v65 = v62;
            *&v62 = v38;
            *(&v62 + 1) = v39;
            values[0] = v38;
            values[1] = v38;
            std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(values);
            v30 = v57;
          }

          else
          {
            *v65 = values[0];
            v30 = v29 + 8;
          }

          *&v65 = v30;
          CFDictionaryAddValue(Mutable, [MEMORY[0x1E696AD98] numberWithDouble:{*&v28, v53}], ValueAtIndex);

          objc_autoreleasePoolPop(v26);
        }
      }

      LOBYTE(values[0]) = -86;
      std::__sort<std::__less<double,double> &,double *>();
      v40 = keys;
      v41 = v65;
      v42 = IndexesBracketing<std::__wrap_iter<double *>,double>(keys, v65, a3);
      v43 = (v41 - v40) >> 3;
      if (v43 <= v42 || (v44 = HIWORD(v42), v43 <= v44))
      {
        __break(1u);
LABEL_36:
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v45 = v40[v42];
      v46 = v40[v44];
      v47 = 0.0;
      a1 = v56;
      if (v45 != v46)
      {
        v47 = (a3 - v45) / (v46 - v45);
      }

      v48 = std::__lerp[abi:fn200100]<double>(v45, v46, round(v47));
      TCFNumber::TCFNumber<double>(values, v48);
      Value = CFDictionaryGetValue(Mutable, atomic_load_explicit(values, memory_order_acquire));

      if (Value)
      {
        if (atomic_load_explicit(&v59, memory_order_acquire))
        {
          v60 = atomic_load_explicit(&v59, memory_order_acquire);
          values[0] = @"NSCTFontFeatureSettingsAttribute";
          v50 = CFDictionaryCreate(v16, values, &v60, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          CopyWithAttributes = CTFontDescriptorCreateCopyWithAttributes(Value, v50);
          v52 = CTFontCreateWithFontDescriptor(CopyWithAttributes, a2, 0);
        }

        else
        {
          v52 = CTFontCreateWithFontDescriptor(Value, a2, 0);
        }

        *v56 = v52;

        values[0] = &keys;
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](values);

        v18 = v54;
        v17 = v55;
        goto LABEL_33;
      }

      values[0] = &keys;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](values);
      v7 = v53;
      v18 = v54;
      v17 = v55;
    }

    *a1 = v7;
LABEL_33:

    v14 = v58;
    goto LABEL_34;
  }

  keys = 0xAAAAAAAAAAAAAAAALL;
  TFont::CopyAttribute(v9, @"NSCTFontVariationAttribute", 7, values);
  TCFMutableDictionary::TCFMutableDictionary(&keys, atomic_load_explicit(values, memory_order_acquire));

  (*(**(v9 + 51) + 128))(values);
  v11 = atomic_load_explicit(values, memory_order_acquire);

  if (v11)
  {
    TCFNumber::TCFNumber<double>(values, a2);
    CFDictionarySetValue(atomic_load_explicit(&keys, memory_order_acquire), &unk_1EF27A638, atomic_load_explicit(values, memory_order_acquire));
  }

  TCFNumber::TCFNumber<double>(values, a3);
  CFDictionarySetValue(atomic_load_explicit(&keys, memory_order_acquire), &unk_1EF27A650, atomic_load_explicit(values, memory_order_acquire));

  v12 = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionarySetValue(v12, @"NSCTFontVariationAttribute", atomic_load_explicit(&keys, memory_order_acquire));
  if (atomic_load_explicit(&v59, memory_order_acquire))
  {
    CFDictionarySetValue(v12, @"NSCTFontFeatureSettingsAttribute", atomic_load_explicit(&v59, memory_order_acquire));
  }

  values[0] = 0xAAAAAAAAAAAAAAAALL;
  TFont::CopyDescriptor(v9, 0, values);
  v13 = CTFontDescriptorCreateCopyWithAttributes(atomic_load_explicit(values, memory_order_acquire), v12);
  *a1 = CTFontCreateWithFontDescriptor(v13, a2, 0);

  v14 = keys;
LABEL_34:
}

uint64_t std::__split_buffer<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  for (i = *(a1 + 16); i != v3; i = *(a1 + 16))
  {
    *(a1 + 16) = i - 32;
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 32);
    v6 = (v5 + 960);
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

void TDecorator::DrawDecoration(uint64_t a1, uint64_t a2, CFIndex a3, uint64_t a4)
{
  v153 = *MEMORY[0x1E69E9840];
  memset(v139, 170, sizeof(v139));
  v136 = 0;
  v137 = 0;
  v138 = 0;
  v140 = v139;
  if (a4)
  {
    v7 = *a4;
    v6 = *(a4 + 8);
    if (*a4 != v6)
    {
      while (1)
      {
        v8 = v7;
        v9 = *v7;
        v114[0] = *v7;
        while (*v7 == v9)
        {
          v7 += 4;
          if (v7 == v6)
          {
            v7 = v6;
            break;
          }
        }

        v10 = *(a3 + 16);
        if (v9 >= (*(a3 + 24) - v10) >> 3)
        {
          break;
        }

        v11 = *(*(*(v10 + 8 * v9) + 40) + 208);
        if (v11 >= 1)
        {
          v12 = 0;
          while (v8 != v7)
          {
            v13 = v8[1];
            v14 = v13 <= v12;
            v15 = v13 - v12;
            if (v14)
            {
              explicit = atomic_load_explicit(v8 + 3, memory_order_acquire);
              v17 = v137;
              if (v137 >= v138)
              {
                *&v148[32] = 0xAAAAAAAAAAAAAAAALL;
                *&v20 = 0xAAAAAAAAAAAAAAAALL;
                *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
                *&v148[16] = v20;
                *v148 = v20;
                v21 = (v137 - v136) >> 5;
                if ((v21 + 1) >> 59)
                {
                  goto LABEL_100;
                }

                v22 = (v138 - v136) >> 4;
                if (v22 <= v21 + 1)
                {
                  v22 = v21 + 1;
                }

                if (v138 - v136 >= 0x7FFFFFFFFFFFFFE0)
                {
                  v23 = 0x7FFFFFFFFFFFFFFLL;
                }

                else
                {
                  v23 = v22;
                }

                std::__split_buffer<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul> &>::__split_buffer(v148, v23, v21, v139);
                v24 = *&v148[16];
                v25 = *(v8 + 1);
                **&v148[16] = v114[0];
                *(v24 + 8) = v25;
                *(v24 + 24) = explicit;
                *&v148[16] += 32;
                std::vector<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul>>::__swap_out_circular_buffer(&v136, v148);
                v19 = v137;
                std::__split_buffer<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul> &>::~__split_buffer(v148);
              }

              else
              {
                v18 = *(v8 + 1);
                *v137 = v114[0];
                *(v17 + 1) = v18;
                v17[3] = explicit;
                v19 = v17 + 4;
              }

              v137 = v19;
              v26 = v8[1];
              v27 = v8[2];
              v8 += 4;
              v12 = v27 + v26;
            }

            else
            {
              *v148 = v12;
              *&v148[8] = v15;
              std::vector<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul>>::emplace_back<long &,CFRange>(&v136, v114, v148);
              v12 = v8[1];
            }

            if (v12 >= v11)
            {
              goto LABEL_26;
            }
          }

          *v148 = v12;
          *&v148[8] = v11 - v12;
          std::vector<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul>>::emplace_back<long &,CFRange>(&v136, v114, v148);
        }

LABEL_26:
        if (v7 == v6)
        {
          goto LABEL_27;
        }
      }

LABEL_99:
      __break(1u);
LABEL_100:
      std::__throw_bad_array_new_length[abi:fn200100]();
    }
  }

LABEL_27:
  TLine::GetLeftHangersGlyphCountAndWidth(a3, 0);
  if (v28 == 0.0)
  {
    v29 = 0.0;
  }

  else
  {
    v29 = 0.0 - v28;
  }

  if (*a2)
  {
    y = *(a2 + 24);
  }

  else
  {
    y = CGContextGetTextPosition(*(a2 + 8)).y;
  }

  *&v31 = 0.0;
  v33 = *(a3 + 16);
  v32 = *(a3 + 24);
  v112 = (v32 - v33) >> 3;
  v34 = *(a2 + 80);
  v110 = vdupq_n_s64(0x3CB0000000000000uLL);
  v108 = v34;
  v109 = y;
  while (1)
  {
    v114[0] = 0xAAAAAAAAAAAAAAAALL;
    v115 = 0xAAAAAAAAAAAAAA00;
    v117[1] = -1431655766;
    width[1] = NAN;
    v114[1] = 0;
    v117[0] = 0;
    width[0] = 0.0;
    *&v118 = v29;
    *(&v118 + 1) = y;
    v119 = *&v31;
    b = 0.0;
    LODWORD(v114[0]) = *a1;
    v127 = v34;
    v134[0] = 0.0;
    *&a = (v32 - v33) >> 3;
    *&v135.a = v31;
    v135.b = 0.0;
    if (v31 < *&a)
    {
      v36 = *(a3 + 16);
      if (v31 < ((*(a3 + 24) - v36) >> 3))
      {
        *&v143 = *(*(v36 + 8 * v31) + 40);
        LOBYTE(v141) = 0;
        *&v148[24] = 0;
        operator new();
      }

      goto LABEL_99;
    }

    if (v31 == *&a)
    {
      *&v119 = (v32 - v33) >> 3;
      b = 0.0;
      *&v31 = 0.0;
      v37 = v134[0];
    }

    else
    {
      v141 = v118;
      v124 = -1;
      v132 = 0.0;
      c[0] = 0;
      v125 = v31;
      *&v126 = 0;
      v130 = 0.0;
      v131 = 0.0;
      v123 = 0;
      if (v31 < *&a)
      {
        v38 = *(a3 + 16);
        if (v31 < ((*(a3 + 24) - v38) >> 3))
        {
          v122 = *(*(v38 + 8 * v31) + 40);
          v121 = 0;
          *(&v144 + 1) = 0;
          operator new();
        }

        goto LABEL_99;
      }

      v117[0] = v124;
      *&v118 = v134[0] + *&v141;
      *(&v118 + 1) = c[0];
      *&width[0] = v126;
      width[1] = v132;
      *(&v115 + 1) = v131;
      a = v135.a;
      v31 = *&v135.b;
      v119 = v135.a;
      b = v135.b;
      v37 = v134[0] + v131;
    }

    if (*&a >= v112)
    {
      break;
    }

    if (a == 0.0 && (v136 == v137 || *v136 >= 1))
    {
      goto LABEL_96;
    }

    if (v31 + *&a != v112 || v136 != v137)
    {
LABEL_56:
      v53 = v119;
      v52 = b;
      v54 = *(a1 + 8);
      if (v54)
      {
        TLine::GetLeftHangersGlyphCountAndWidth(a3, 0);
        if (v55 == 0.0)
        {
          v58 = 0.0;
        }

        else
        {
          v58 = 0.0 - v55;
        }

        v125 = v54;
        v59 = v114[0];
        v60 = atomic_load_explicit(&v114[1], memory_order_acquire);
        *&v56 = width[0];
        *&v57 = width[1];
        v61 = v117[0];
        v62 = *(&v118 + 1);
        if (*v54 == 1)
        {
          v106 = v118;
          v107 = *(&v115 + 1);
          memset(v148, 170, 24);
          *&v76 = 0xAAAAAAAAAAAAAAAALL;
          *(&v76 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v147 = v76;
          v146 = v76;
          v145 = v76;
          v144 = v76;
          v143 = v76;
          v104 = v56;
          v105 = v57;
          TDecorator::dashes(&v143, v117[0], width[0] / (v117[0] & 7));
          *v148 = 0;
          *&v148[8] = v59;
          *&v148[12] = vand_s8(vdup_n_s32(v61), 0x700000000FFLL);
          *&v77 = v107;
          *&v78 = v105;
          *(&v77 + 1) = v104;
          *(&v78 + 1) = v106;
          *&v148[40] = v78;
          *&v148[24] = v77;
          *&v148[56] = v62;
          *&v149 = v53;
          *(&v149 + 1) = v52;
          v150 = v143;
          v151 = (*(&v143 + 1) - v143) >> 3;
          v152 = v60;
          (*(*(v54 + 8) + 16))();
          std::vector<double,TInlineBufferAllocator<double,6ul>>::__destroy_vector::operator()[abi:fn200100](&v143);
        }

        else if (!*v54)
        {
          (*(*(v54 + 8) + 16))(*(&v115 + 1), width[0], width[1], *&v118, *(&v118 + 1));
        }

        *&v79 = -1;
        *(&v79 + 1) = -1;
        *&v135.c = v79;
        *&v135.tx = v79;
        *&v135.a = v79;
        if (*a2)
        {
          v80 = *(a2 + 48);
          *&v135.a = *(a2 + 32);
          *&v135.c = v80;
          *&v135.tx = *(a2 + 64);
        }

        else
        {
          CGContextGetTextMatrix(&v135, *(a2 + 8));
        }

        tx = v135.tx;
        ty = v135.ty;
        _V1.D[1] = v135.b;
        v84 = *MEMORY[0x1E695EFF8];
        *&v135.tx = v84;
        v85 = vandq_s8(vandq_s8(vcgeq_f64(v110, vabsq_f64(vaddq_f64(*&v135.c, xmmword_18475B150))), vcgeq_f64(v110, vabsq_f64(vaddq_f64(*&v135.a, xmmword_18475B140)))), vcgeq_f64(v110, vabsq_f64(v84)));
        v87 = *(&v118 + 1);
        _D12 = *&v118;
        _D13 = *&v118 + ceil(*(&v115 + 1));
        if ((vandq_s8(vdupq_laneq_s64(v85, 1), v85).u64[0] & 0x8000000000000000) != 0)
        {
          v94 = *(&v118 + 1);
        }

        else
        {
          __asm { FMLA            D6, D12, V1.D[1] }

          _D12 = v84.f64[0] + *(&v118 + 1) * v135.c + v135.a * *&v118;
          v94 = v84.f64[1] + _D6;
          __asm { FMLA            D3, D13, V1.D[1] }

          _D13 = v84.f64[0] + *(&v118 + 1) * v135.c + v135.a * _D13;
          v87 = v84.f64[1] + _D3;
        }

        v96 = tx - v58;
        *v148 = MEMORY[0x1E69E9820];
        *&v148[8] = 3321888768;
        *&v148[16] = ___ZZN14TDecorationRun22EnumerateDecorationRunIN12_GLOBAL__N_111TRunAdapterEEEvRK16TLineDrawContextT_S6_7CFRangeP18TDecoratorObserverdENKUl7CGPointSA_E_cvU13block_pointerFvSA_SA_EEv_block_invoke;
        *&v148[24] = &__block_descriptor_40_8_32c151_ZTSKZN14TDecorationRun22EnumerateDecorationRunIN12_GLOBAL__N_111TRunAdapterEEEvRK16TLineDrawContextT_S6_7CFRangeP18TDecoratorObserverdEUl7CGPointSA_E__e33_v40__0_CGPoint_dd_8_CGPoint_dd_24l;
        *&v148[32] = &v125;
        *&v97 = COERCE_DOUBLE([objc_msgSend(v148 copy]);
        v134[0] = v96;
        v134[1] = ty;
        c[0] = *&_D12;
        c[1] = *&v94;
        v132 = *&v97;
        v130 = width[0];
        v131 = width[0] * 0.75;
        if (v115 == 1)
        {
          v87 = v87 - v94 * 2.0;
          v94 = v94 - v94 * 2.0;
          c[1] = *&v94;
        }

        v31 = *&v52 + *&v53;
        v127 = &v131;
        v128 = v134;
        v129 = &v132;
        if (LODWORD(v114[0]))
        {
          if (_D13 - _D12 > width[0] * 0.75)
          {
            v98.n128_f64[0] = v96 + _D12;
            v99.n128_f64[0] = ty + v94;
            v100.n128_f64[0] = v96 + _D13;
            v101.n128_f64[0] = ty + v87;
            goto LABEL_91;
          }
        }

        else
        {
          v126 = *c;
          *&v102 = -1;
          *(&v102 + 1) = -1;
          *&v148[32] = v102;
          *&v148[16] = v102;
          *v148 = v102;
          if (*a2)
          {
            v99 = *(a2 + 48);
            *v148 = *(a2 + 32);
            *&v148[16] = v99;
            v98 = *(a2 + 64);
            *&v148[32] = v98;
          }

          else
          {
            CGContextGetTextMatrix(v148, *(a2 + 8));
          }

          if (8 * *&v53 != 8 * v31)
          {
            v143 = *v148;
            v144 = *&v148[16];
            v145 = *&v148[32];
            v142 = 0;
            operator new();
          }

          if (_D13 - *&v126 > v131)
          {
            v103 = v128[1];
            v98.n128_f64[0] = *&v126 + *v128;
            v99.n128_f64[0] = *(&v126 + 1) + v103;
            v100.n128_f64[0] = _D13 + *v128;
            v101.n128_f64[0] = v87 + v103;
            v97 = *v129;
LABEL_91:
            (*(v97 + 16))(v98, v99, v100, v101);
          }
        }

        v34 = v108;
        y = v109;
      }

      else
      {
        v63 = *(a2 + 8);
        TLine::GetLeftHangersGlyphCountAndWidth(a3, 0);
        if (v64 == 0.0)
        {
          v65 = 0.0;
        }

        else
        {
          v65 = 0.0 - v64;
        }

        v66 = *(a3 + 16);
        v31 = *&v52 + *&v53;
        v127 = (v66 + 8 * *&v53);
        *&v134[0] = v66 + 8 * v31;
        c[0] = v63;
        CGContextSaveGState(v63);
        TAttributes::SetStrokeColor(v63, atomic_load_explicit(&v114[1], memory_order_acquire), v67);
        v68 = v117[0];
        *&v69 = 0xAAAAAAAAAAAAAAAALL;
        *(&v69 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v149 = v69;
        *&v148[48] = v69;
        *&v148[32] = v69;
        *&v148[16] = v69;
        *v148 = v69;
        TDecorator::dashes(v148, v117[0], width[0] / (v117[0] & 7));
        v70 = c[0];
        CGContextSetLineWidth(c[0], width[0]);
        *&v71 = -1;
        *(&v71 + 1) = -1;
        *&v135.c = v71;
        *&v135.tx = v71;
        *&v135.a = v71;
        CGContextGetTextMatrix(&v135, v70);
        *&v141 = v135.tx - v65;
        *(&v141 + 1) = *&v135.ty;
        *&v135.tx = *MEMORY[0x1E695EFF8];
        v72 = vandq_s8(vandq_s8(vcgeq_f64(v110, vabsq_f64(vaddq_f64(*&v135.c, xmmword_18475B150))), vcgeq_f64(v110, vabsq_f64(vaddq_f64(*&v135.a, xmmword_18475B140)))), vcgeq_f64(v110, vabsq_f64(*&v135.tx)));
        LOBYTE(v126) = vandq_s8(vdupq_laneq_s64(v72, 1), v72).i64[0] < 0;
        *&v143 = &v126;
        *(&v143 + 1) = &v135;
        *&v144 = c;
        *(&v144 + 1) = &v141;
        *&v145 = &v127;
        *(&v145 + 1) = v134;
        *&v146 = v148;
        *(&v146 + 1) = v114;
        v73 = ceil(*(&v115 + 1));
        v75 = *(&v118 + 1);
        v74 = *&v118;
        if ((v68 & 8) != 0)
        {
          v74 = *&v118;
          v75 = *(&v118 + 1) + width[1];
        }

        std::vector<double,TInlineBufferAllocator<double,6ul>>::__destroy_vector::operator()[abi:fn200100](v148);
        CGContextRestoreGState(v63);
      }

      if (v136 != v137 && *v136 < v31)
      {
        v31 = *v136;
      }

      goto LABEL_96;
    }

    v39 = v119;
    v40 = *&b + *&v119 - 1;
    v41 = 0.0;
    while ((v40 + 1) > *&v39)
    {
      v42 = *(a3 + 16);
      if (v40 >= (*(a3 + 24) - v42) >> 3)
      {
        goto LABEL_99;
      }

      v43 = *(*(v42 + 8 * v40) + 40);
      v44 = *(v43 + 26);
      RightWhitespaceGlyphCountAndWidth = TRun::GetRightWhitespaceGlyphCountAndWidth(v43);
      v41 = v41 + *&v46;
      v47 = v44 - RightWhitespaceGlyphCountAndWidth;
      if (v44 <= RightWhitespaceGlyphCountAndWidth)
      {
        v48 = *(v43 + 21);
        v49 = v48 ? TParagraphStyle::GetLineBoundsOptions(v48, v46) : 0;
        RightHangersGlyphCountAndWidth = TRun::GetRightHangersGlyphCountAndWidth(v43, v47, v49, *a3, -1);
        v41 = v41 + v51;
        --v40;
        if (RightHangersGlyphCountAndWidth >= v44)
        {
          continue;
        }
      }

      *(&v115 + 1) = *(&v115 + 1) - v41;
      goto LABEL_56;
    }

    v31 = v112;
LABEL_96:
    v29 = v29 + v37;

    v33 = *(a3 + 16);
    v32 = *(a3 + 24);
  }

  *v148 = &v136;
  std::vector<DecorationOverride,TInlineBufferAllocator<DecorationOverride,30ul>>::__destroy_vector::operator()[abi:fn200100](v148);
}

uint64_t EnumerateOverrides(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a3)
  {
    v8 = *a3;
    v7 = a3[1];
    v9 = *a3;
    if (*a3 != v7)
    {
      v9 = *a3;
      while (*v9 == a2)
      {
        v9 += 4;
        if (v9 == v7)
        {
          v9 = a3[1];
          break;
        }
      }
    }

    if (a1 < 1)
    {
      v11 = 0;
      return v11 == a1;
    }

    v10 = 0;
    v11 = 0;
    do
    {
      if (v8 == v9)
      {
        v24 = 0;
        v22 = a1 - v11;
        v18 = *(a4 + 24);
        v19 = &v24 + 1;
        v20 = &v24;
        v21 = v11;
        goto LABEL_24;
      }

      v12 = v8[1];
      v13 = v8[2];
      v23 = 0;
      result = std::function<void ()(CFRange,__CFDictionary const*,BOOL *,BOOL *)>::operator()(*(a4 + 24), v12, v13, atomic_load_explicit(v8 + 3, memory_order_acquire), &v23 + 1, &v23);
      v10 += HIBYTE(v23);
      if (v23 == 1)
      {
        break;
      }

      v8 += 4;
      v11 = v13 + v12;
    }

    while (v13 + v12 < a1);
    if (!v10)
    {
      return v11 == a1;
    }

    v15 = *a3;
    if (!__CFADD__(*a3, 32 * v10))
    {
      v16 = 4 * v10;
      v17 = a3[1];
      if (&v15[4 * v10] != v17)
      {
        do
        {
          *v15 = *&v15[4 * v10];
          v15[2] = v15[v16 + 2];

          v15 += 4;
        }

        while (&v15[v16] != v17);
        v17 = a3[1];
      }

      for (; v17 != v15; v17 -= 4)
      {
      }

      a3[1] = v15;
      return v11 == a1;
    }

    __break(1u);
  }

  else
  {
    v25 = 0;
    v18 = *(a4 + 24);
    v19 = &v25 + 1;
    v20 = &v25;
    v21 = 0;
    v22 = a1;
LABEL_24:
    std::function<void ()(CFRange,__CFDictionary const*,BOOL *,BOOL *)>::operator()(v18, v21, v22, 0, v19, v20);
    return 1;
  }

  return result;
}

void std::__function::__func<TDecorator::NextDecorationRun(double,TLine const&,TInlineVector<DecorationOverride,30ul> *,TDecorationRun &)::$_0,std::allocator<TDecorator::NextDecorationRun(double,TLine const&,TInlineVector<DecorationOverride,30ul> *,TDecorationRun &)::$_0>,void ()(CFRange,__CFDictionary const*,BOOL *,BOOL *)>::operator()(uint64_t a1, CFIndex *a2, const __CFDictionary **a3, void *a4, _BYTE **a5)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v22[6] = xmmword_184778600;
  memset(&v22[7], 170, 40);
  v22[3] = unk_1847785D0;
  memset(&v22[4], 255, 32);
  memset(v22, 170, 48);
  v11 = *(a1 + 16);
  TAttributes::TAttributes(v22, *(a1 + 8), v8);
  if (*v11 == 1)
  {
    if ((BYTE9(v22[8]) & 0x10) != 0)
    {
      v21 = *(a1 + 24);
      v15 = *(a1 + 32);
      *v21 = 1;
      StrikethroughColor = TAttributes::GetStrikethroughColor(v22, v12, v13);
      goto LABEL_12;
    }
  }

  else if (!*v11 && (BYTE9(v22[8]) & 4) != 0)
  {
    v14 = *(a1 + 24);
    v15 = *(a1 + 32);
    *v14 = 1;
    StrikethroughColor = TAttributes::GetUnderlineColor(v22, v12, v13);
LABEL_12:
    TCFRef<__CTFont const*>::Retain((v15 + 8), StrikethroughColor);
    goto LABEL_13;
  }

  v17 = **(a1 + 48);
  v23.location = v6;
  v23.length = v7;
  Width = TStorageRange::GetWidth((v17 + 192), v23);
  v19 = 0.0;
  if (!v6)
  {
    v20 = *(v17 + 312);
    if (!v20)
    {
      v20 = MEMORY[0x1E695F060];
    }

    v19 = *v20;
  }

  **(a1 + 40) = Width + v19 + **(a1 + 40);
  v10 = v9;
LABEL_13:
  *v10 = 1;
  TAttributes::~TAttributes(v22);
}

uint64_t std::function<void ()(CFRange,__CFDictionary const*,BOOL *,BOOL *)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11[0] = a2;
  v11[1] = a3;
  v9 = a5;
  v10 = a4;
  v8 = a6;
  if (a1)
  {
    return (*(*a1 + 48))(a1, v11, &v10, &v9, &v8);
  }

  v7 = std::__throw_bad_function_call[abi:fn200100]();
  return TAttributes::GetUnderlineColor(v7);
}

const void *TAttributes::GetUnderlineColor(TAttributes *this, uint64_t a2, const __CFString **a3)
{
  if (*(this + 136))
  {
    return *MEMORY[0x1E695E738];
  }

  result = TAttributes::GetUnderlineColor(atomic_load_explicit(this, memory_order_acquire), 0, a3);
  if (!result)
  {
    if ((*(this + 136) & 2) != 0)
    {
      return atomic_load_explicit(this + 4, memory_order_acquire);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(CFRange,__CFDictionary const*,BOOL *,BOOL *)>::~__value_func[abi:fn200100](uint64_t a1)
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

void std::__function::__func<TDecorator::NextDecorationRun(double,TLine const&,TInlineVector<DecorationOverride,30ul> *,TDecorationRun &)::$_1,std::allocator<TDecorator::NextDecorationRun(double,TLine const&,TInlineVector<DecorationOverride,30ul> *,TDecorationRun &)::$_1>,void ()(CFRange,__CFDictionary const*,BOOL *,BOOL *)>::operator()(uint64_t a1, uint64_t *a2, const __CFDictionary **a3, _BYTE **a4, _BYTE **a5)
{
  v6 = *a2;
  v7 = a2[1];
  v8 = *a3;
  v9 = *a4;
  v10 = *a5;
  v11 = *(a1 + 40);
  v35[6] = xmmword_184778600;
  memset(&v35[7], 170, 40);
  v35[3] = unk_1847785D0;
  memset(&v35[4], 255, 32);
  memset(v35, 170, 48);
  TAttributes::TAttributes(v35, *(a1 + 8), v8);
  v34 = 0;
  v32 = 0.0;
  cf2 = 0;
  v30 = 0.0;
  v31 = 0.0;
  v12 = **(a1 + 16);
  v13 = **(a1 + 24);
  v14 = *(*(a1 + 32) + 8);
  v15 = *v11;
  v28 = *(a1 + 48);
  v29 = 0.0;
  if ((GetDecorationAttributes(v13, v6, v7, v35, v15, &v34, &cf2, &v32, v12, v14, &v31, &v30, &v29, v28) & 1) == 0)
  {
    goto LABEL_13;
  }

  v16 = *(a1 + 72);
  *(*(a1 + 64) + 16) = **(a1 + 48);
  if (*v16 == -1)
  {
    *v16 = v34;
    **(a1 + 80) = cf2;
  }

  else
  {
    if (v34 != *v16)
    {
      goto LABEL_13;
    }

    v17 = *(a1 + 80);
    v18 = *v17;
    if (*v17 != cf2 && (!v18 || !cf2 || !CFEqual(v18, cf2)))
    {
      goto LABEL_13;
    }
  }

  v19 = *v11;
  if (*v11 == 1 && **(a1 + 88) > **(a1 + 96) && **(a1 + 104) != v31)
  {
LABEL_13:
    **(a1 + 56) = 1;
    *v10 = 1;
    goto LABEL_14;
  }

  v20 = *(a1 + 120);
  **(a1 + 112) = v32 + **(a1 + 112);
  v21 = *v20;
  if (*v20 < v30)
  {
    v21 = v30;
  }

  *v20 = v21;
  if (v19)
  {
    v22 = v31;
    v23 = *(a1 + 104);
  }

  else
  {
    v23 = *(a1 + 104);
    v22 = v31;
    if (v31 >= *v23)
    {
      v22 = *v23;
    }
  }

  *v23 = v22;
  v24 = *(a1 + 128);
  v25 = *v24;
  if (*v24 < v29)
  {
    v25 = v29;
  }

  *v24 = v25;
  *v9 = 1;
  v26 = *(a1 + 96);
  v27 = v26[1];
  if (**(a1 + 88) == v27 + *v26)
  {
    v26[1] = v27 + 1;
  }

LABEL_14:
  TAttributes::~TAttributes(v35);
}

uint64_t GetDecorationAttributes(atomic_ullong *a1, uint64_t a2, const __CFString **a3, TAttributes *this, int a5, int *a6, void *a7, double *a8, double a9, double a10, double *a11, double *a12, double *a13, BOOL *a14)
{
  v23 = *(this + 15);
  if (a5 == 1)
  {
    if (v23)
    {
      v24 = *(v23 + 60);
      *a6 = v24;
      if (v24)
      {
        v83 = a8;
        StrikethroughColor = TAttributes::GetStrikethroughColor(this, a2, a3);
        goto LABEL_27;
      }

      return 0;
    }

LABEL_10:
    result = 0;
    *a6 = 0;
    return result;
  }

  if (!v23)
  {
    goto LABEL_10;
  }

  v24 = *(v23 + 56);
  *a6 = v24;
  if (!v24)
  {
    return 0;
  }

  v83 = a8;
  if (!*a14)
  {
    if ((*(*(atomic_load_explicit(this + 2, memory_order_acquire) + 40) + 12) & 1) == 0)
    {
      v26 = 0;
LABEL_25:
      *a14 = v26;
      goto LABEL_26;
    }

    *&v87 = -3.72066208e-103;
    LanguageIdentifierByNormalizing(atomic_load_explicit(this + 3, memory_order_acquire), 1u, &v87);
    if (!atomic_load_explicit(&v87, memory_order_acquire))
    {
      goto LABEL_24;
    }

    v28 = atomic_load_explicit(&v87, memory_order_acquire);
    v29 = v28;
    if (v28 != @"ja" && (!v28 || !CFEqual(v28, @"ja")))
    {
      v30 = atomic_load_explicit(&v87, memory_order_acquire);
      if (v30 != @"ko")
      {
        if (v30)
        {
          v81 = v30;
          v82 = CFEqual(v30, @"ko");

          if (!v82)
          {
            goto LABEL_24;
          }

LABEL_22:

          v26 = 1;
          goto LABEL_25;
        }

LABEL_24:
        v26 = TAttributes::GetCompositionLanguage(this, v31) == 2;
        goto LABEL_25;
      }
    }

    goto LABEL_22;
  }

LABEL_26:
  StrikethroughColor = TAttributes::GetUnderlineColor(this, a2, a3);
LABEL_27:
  *a7 = StrikethroughColor;
  v88.location = a2;
  v88.length = a3;
  Width = TStorageRange::GetWidth((a1 + 24), v88);
  v33 = 0.0;
  if (!a2)
  {
    v34 = a1[39];
    if (!v34)
    {
      v34 = MEMORY[0x1E695F060];
    }

    v33 = *v34;
  }

  *v83 = Width + v33;
  v84 = 0;
  if (a5 != 1)
  {
    v35 = *(atomic_load_explicit(a1 + 7, memory_order_acquire) + 40);
    *a11 = TFont::GetUnderlinePositionAndThickness(v35);
    *a12 = v38;
    if ((*(v35 + 12) & 1) == 0)
    {
      goto LABEL_41;
    }

    v39 = v35 + 56;
    v40 = v35 + 56;
    if (!*(v35 + 56))
    {
      TFont::InitStrikeMetrics(v35);
    }

    v41 = *(v40 + 8);
    if (!*v39)
    {
      TFont::InitStrikeMetrics(v35);
      v39 = v42;
    }

    v37 = (v41 + *(v39 + 16)) * -0.5;
    goto LABEL_40;
  }

  TAttributes::OriginalFont(this, &v87);

  v35 = *(atomic_load_explicit(&v84, memory_order_acquire) + 40);
  *a11 = TFont::GetStrikethroughPositionAndThickness(v35);
  *a12 = v36;
  v37 = 0.0;
  if (*(v35 + 12))
  {
LABEL_40:
    *a11 = v37;
  }

LABEL_41:
  v43 = *(this + 15);
  if (v43)
  {
    v44 = *(v43 + 48);
  }

  else
  {
    v44 = 0.0;
  }

  *a11 = v44 + *a11;
  if ((*(v35 + 12) & 1) == 0)
  {
    v86 = NAN;
    *&v87 = NAN;
    v85 = NAN;
    TFont::GetDefaultMetrics(v35, &v87, &v86, &v85);
    v45 = *a6;
    v46 = (*a6 & 7);
    if (a5)
    {
      *a11 = *a11 * a9;
      v47 = v46 * a9 * *a12;
      *a12 = v47;
      v48 = *a11;
      if (*a11 > 1.0 && v47 > 0.35)
      {
        *a12 = ceil(v47);
        v49 = vcvtpd_s64_f64(v47);
        v50 = a9 * a10 - floor(a9 * a10);
        v51 = floor(*a11 + 0.5);
        v52 = floor(*a11) + 0.5;
        if ((v49 & 1) == 0)
        {
          v52 = v51;
        }

        v48 = v52 - v50;
      }

      *a11 = v48 / a9;
      v53 = *a12 / a9;
      *a12 = v53;
      v54 = (v45 & 8) == 0;
      goto LABEL_53;
    }

    v56 = (v86 + *&v87) * 0.25;
    if (v86 >= 2.0)
    {
      v56 = v86;
    }

    v57 = v56 * 5.3636991;
    if (v56 * 5.3636991 > v86 + *&v87)
    {
      v57 = v86 + *&v87;
    }

    v58 = *a11;
    if (*a11 >= 0.0)
    {
      v58 = v57 * -0.0880554625;
    }

    *a11 = -(a9 * v58);
    v59 = *a12 * a9;
    v60 = v56 * a9;
    v61 = v59 * v46;
    *a12 = v59 * v46;
    if ((v45 & 8) != 0)
    {
      *a12 = v61 * 0.75;
      *a11 = v61 * 0.75 * 0.5 + *a11;
      if (v60 < 4.0 || *a12 <= 0.35)
      {
        *a12 = v60 * 0.25;
        v69 = v60 * 0.25 * 2.5;
      }

      else
      {
        v71 = *a12 + -0.5;
        *a12 = ceil(v71);
        v72 = vcvtpd_s64_f64(v71);
        v73 = a9 * a10 - floor(a9 * a10);
        v74 = floor(*a11 + 0.5);
        v75 = floor(*a11) + 0.5;
        if ((v72 & 1) == 0)
        {
          v75 = v74;
        }

        v69 = v73 + v75;
        *a11 = v69;
        if (v69 > 1.5)
        {
          v55 = *a12;
          v70 = 3.0;
          if (*a12 < 2.0 || v69 >= 3.0 && (v60 < 7.0 || v69 > 3.0))
          {
            goto LABEL_96;
          }
        }

        v69 = v69 + 1.0;
      }

      *a11 = v69;
      v55 = *a12;
      v70 = 3.0;
    }

    else if (v60 < 2.0 || v61 <= 0.35)
    {
      v69 = *a11;
      v55 = 0.0;
      v70 = 1.0;
    }

    else
    {
      v62 = ceil(v61);
      *a12 = v62;
      if (v62 >= v60 || (v60 <= 4.0 ? (v63 = v62 < 3.0) : (v63 = 1), !v63 || (v60 <= 2.5 ? (v64 = v62 < 2.0) : (v64 = 1), !v64)))
      {
        v62 = v62 + -1.0;
        *a12 = v62;
      }

      v65 = v62;
      v66 = a9 * a10 - floor(a9 * a10);
      v67 = floor(*a11 + 0.5);
      v68 = floor(*a11) + 0.5;
      if ((v65 & 1) == 0)
      {
        v68 = v67;
      }

      v69 = v66 + v68;
      *a11 = v69;
      if (v69 < 1.5 || (v55 = 0.0, v70 = 1.0, v60 > 4.0) && v69 <= 1.5)
      {
        v70 = 1.0;
        v69 = v69 + 1.0;
        *a11 = v69;
        v55 = 0.0;
      }
    }

LABEL_96:
    v76 = v44 * a9;
    v77 = v70 * *a12;
    if (v60 > 0.0)
    {
      v78 = floor(v60 - v76) + v77 * -0.5;
      if (v78 < v69)
      {
        v69 = v78;
      }
    }

    v79 = ceil(v59 - v76) + v77 * 0.5;
    if (v69 >= v79)
    {
      v79 = v69;
    }

    *a11 = v79 / -a9;
    v80 = v57 * v46 * 0.0440277313;
    if (*a12 / a9 > 0.0)
    {
      v80 = *a12 / a9;
    }

    *a12 = v80;
    goto LABEL_56;
  }

  v53 = *a12;
  v54 = (v24 & 8) == 0;
LABEL_53:
  if (v54)
  {
    v55 = 0.0;
  }

  else
  {
    v55 = v53;
  }

LABEL_56:
  *a13 = v55;

  return 1;
}