void TBaseFont::AddKerningDataAtIndex(void *a1, uint64_t *a2, unint64_t a3)
{
  v4 = a1[61];
  if (a3 >= (a1[62] - v4) >> 3)
  {
    std::vector<std::unique_ptr<unsigned short const[]>,TInlineBufferAllocator<std::unique_ptr<unsigned short const[]>,4ul>>::resize(a1 + 61, a3);
    v8 = a1[62];
    v9 = a1[63];
    if (v8 >= v9)
    {
      v29 = 0xAAAAAAAAAAAAAAAALL;
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v27 = v12;
      v28 = v12;
      v13 = a1[61];
      v14 = (v8 - v13) >> 3;
      v15 = v14 + 1;
      if ((v14 + 1) >> 61)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v16 = v9 - v13;
      if (v16 >> 2 > v15)
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

      std::__split_buffer<std::unique_ptr<unsigned short const[]>,TInlineBufferAllocator<std::unique_ptr<unsigned short const[]>,4ul> &>::__split_buffer(&v27, v17, v14, (a1 + 64));
      v18 = *a2;
      *a2 = 0;
      v20 = *(&v27 + 1);
      v19 = v28;
      *v28 = v18;
      *&v28 = v19 + 8;
      v21 = a1[61];
      v22 = a1[62] - v21;
      v23 = v20 - v22;
      memcpy((v20 - v22), v21, v22);
      v24 = a1[61];
      a1[61] = v23;
      v25 = a1[63];
      v26 = v28;
      *(a1 + 31) = v28;
      *&v28 = v24;
      *(&v28 + 1) = v25;
      *&v27 = v24;
      *(&v27 + 1) = v24;
      std::__split_buffer<std::unique_ptr<unsigned short const[]>,TInlineBufferAllocator<std::unique_ptr<unsigned short const[]>,4ul> &>::~__split_buffer(&v27);
      v11 = v26;
    }

    else
    {
      v10 = *a2;
      *a2 = 0;
      *v8 = v10;
      v11 = v8 + 1;
    }

    a1[62] = v11;
  }

  else
  {
    v5 = *a2;
    *a2 = 0;
    v6 = *(v4 + 8 * a3);
    *(v4 + 8 * a3) = v5;
    if (v6)
    {

      JUMPOUT(0x1865F22B0);
    }
  }
}

void *std::__split_buffer<std::unique_ptr<unsigned short const[]>,TInlineBufferAllocator<std::unique_ptr<unsigned short const[]>,4ul> &>::__split_buffer(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v7 = *(a4 + 32);
    v6 = (a4 + 32);
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

unint64_t TRunGlue::SelectRunForIndex(unint64_t this, int64_t a2)
{
  v2 = this;
  if (a2 < 0)
  {
    *(this + 120) = *(this + 8) - 1;
    v7 = -1;
LABEL_7:
    *(v2 + 19) = v7;
    *(v2 + 20) = v7;
    return this;
  }

  this = TRunGlue::length(this);
  if (this <= a2)
  {
    *(v2 + 15) = *(v2 + 2) + *(v2 + 1);
    v7 = *(v2 + 4);
    goto LABEL_7;
  }

  v4 = *(v2 + 19);
  if (v4 == *(v2 + 20))
  {
    v5 = *(v2 + 1);
    v6 = *(v2 + 2) + v5;
LABEL_10:
    *(v2 + 15) = v5 - 1;
    *(v2 + 20) = 0;
    goto LABEL_12;
  }

  if (v4 > a2)
  {
    v6 = *(v2 + 15);
    v5 = *(v2 + 1);
    goto LABEL_10;
  }

  v6 = *(v2 + 2) + *(v2 + 1);
  do
  {
LABEL_12:
    v8 = *(v2 + 15) + 1;
    *(v2 + 15) = v8;
    if (v8 >= v6)
    {
      break;
    }

    v9 = *v2;
    this = TRunGlue::PhysicalRunIndexFromLogical(v2, v8);
    v10 = *(v9 + 16);
    if (this >= (*(v9 + 24) - v10) >> 3)
    {
      __break(1u);
      return this;
    }

    v11 = *(*(v10 + 8 * this) + 48);
    v12 = *(v2 + 20);
    *(v2 + 18) = v11;
    *(v2 + 19) = v12;
    v13 = *(v11 + 208) + v12;
    *(v2 + 20) = v13;
  }

  while (v13 <= a2);

  return TRunGlue::UpdateForCurrentRealRun(v2);
}

void std::vector<std::unique_ptr<unsigned short const[]>,TInlineBufferAllocator<std::unique_ptr<unsigned short const[]>,4ul>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 3;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      std::vector<std::unique_ptr<unsigned short const[]>,TInlineBufferAllocator<std::unique_ptr<unsigned short const[]>,4ul>>::__base_destruct_at_end[abi:fn200100](a1, (*a1 + 8 * a2));
    }
  }

  else
  {
    std::vector<std::unique_ptr<unsigned short const[]>,TInlineBufferAllocator<std::unique_ptr<unsigned short const[]>,4ul>>::__append(a1, a2 - v2);
  }
}

uint64_t TAttributes::HandleRunDelegateAttribute(uint64_t result, uint64_t a2)
{
  if (result)
  {
    *(*a2 + 138) |= 0x40u;
  }

  return result;
}

uint64_t std::__split_buffer<std::unique_ptr<unsigned short const[]>,TInlineBufferAllocator<std::unique_ptr<unsigned short const[]>,4ul> &>::__destruct_at_end[abi:fn200100](uint64_t result, void *a2)
{
  v2 = *(result + 16);
  if (v2 != a2)
  {
    v4 = result;
    do
    {
      v5 = *--v2;
      result = v5;
      *(v4 + 16) = v2;
      *v2 = 0;
      if (v5)
      {
        result = MEMORY[0x1865F22B0](result, 0x1000C80BDFB0063);
        v2 = *(v4 + 16);
      }
    }

    while (v2 != a2);
  }

  return result;
}

void TGlyphEncoder::CreateSpecialRun(atomic_ullong *a1, uint64_t a2, uint64_t a3, __int16 a4)
{
  v13 = a3;
  *a1 = 0;
  if ((a4 & 0x40) != 0)
  {
    v6 = TCFBase<TRun>::Allocate();
    v7 = v6;
    if (v6)
    {
      v6[2] = 0;
      v6[3] = 0;
      v6[4] = 0;
      v6[5] = v6 + 9;
      v6[6] = v6 + 9;
      v6[7] = CTDelegateRun::CloneEntire;
      v6[8] = CTDelegateRun::CloneRange;
      TDelegateRun::TDelegateRun((v6 + 9), a3);
    }

    goto LABEL_14;
  }

  if ((a4 & 4) != 0)
  {
    v8 = TCFBase<TRun>::Allocate();
    v7 = v8;
    if (v8)
    {
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = 0;
      v8[5] = v8 + 9;
      v8[6] = v8 + 9;
      v8[7] = CTEmojiImageRun::CloneEntire;
      v8[8] = CTEmojiImageRun::CloneRange;
      TEmojiImageRun::TEmojiImageRun((v8 + 9), a3);
    }

    goto LABEL_14;
  }

  if ((a4 & 2) != 0)
  {
    v9 = TCFBase<TRun>::Allocate();
    v7 = v9;
    if (v9)
    {
      v9[2] = 0;
      v9[3] = 0;
      v9[4] = 0;
      v9[5] = v9 + 9;
      v9[6] = v9 + 9;
      v9[7] = CTMetricsDelegateRun::CloneEntire;
      v9[8] = CTMetricsDelegateRun::CloneRange;
      TRun::TRun((v9 + 9), *(a3 + 40));
      v7[9] = &unk_1EF25A900;
    }

LABEL_14:
    v12 = v7;
    v10 = atomic_exchange(&v12, 0);
    goto LABEL_15;
  }

  if ((a4 & 0x800) != 0)
  {
    v11 = *(*(a2 + 200) + 155) & 1;
    TCFBase_NEW<CTRubyRun,CTRun *&,BOOL>(&v13, &v11, &v12);
  }

  else if ((a4 & 0x1000) != 0)
  {
    TCFBase_NEW<CTTateChuYokoRun,CTRun *&>(&v13, &v12);
  }

  else
  {
    if ((a4 & 0x8000) == 0)
    {
      return;
    }

    TCFBase_NEW<CTTextEncapsulationRun,CTRun *&>(&v12, &v13);
  }

  v10 = atomic_exchange(&v12, 0);
LABEL_15:
}

void TRun::TRun(TRun *this, const TRun *a2)
{
  *this = &unk_1EF256D38;
  v4 = *(a2 + 8);
  *(this + 40) = 0u;
  v5 = this + 40;
  *(this + 89) = 0;
  *(this + 91) = 0;
  *(this + 96) = 0;
  *(this + 144) = 0;
  *(this + 23) = 0;
  *(this + 20) = 0;
  *(this + 21) = 0;
  *(this + 8) = v4;
  *(this + 24) = 0u;
  *(this + 56) = 0u;
  *(this + 72) = 0u;
  TAttributes::operator=(this + 40, a2 + 40);
  TStorageRange::TStorageRange((v5 + 152), (a2 + 192));
  *(v5 + 27) = *(a2 + 32);
  v6 = *(a2 + 34);
  *(v5 + 28) = -1;
  *(v5 + 29) = v6;
  v7 = MEMORY[0x1E695F060];
  *(v5 + 30) = 0;
  *(v5 + 248) = *v7;
  *(v5 + 66) = *(a2 + 76);
  if (*(a2 + 39))
  {
    operator new();
  }

  *(this + 39) = 0;
}

CTTypesetterRef CTTypesetterCreateWithAttributedString(CFAttributedStringRef string)
{
  v1 = string;
  if (string)
  {
    v2 = TCFBase<TTypesetter>::Allocate();
    if (v2)
    {
      v2[2] = 0;
      v2[3] = 0;
      v2[4] = 0;
      v2[5] = v2 + 6;
      TTypesetterAttrString::TTypesetterAttrString((v2 + 6), v1, 0);
    }

    v4 = 0;
    v1 = atomic_exchange(&v4, 0);
  }

  return v1;
}

void TAATKernEngine::KernOrderedList::ProcessGlyphsT<TRunGlue::TGlyphInSingleRun>(uint64_t a1, _BYTE *a2)
{
  if (*(a1 + 56))
  {
    v4 = *(a1 + 8);
    v5 = **a1;
    v6 = *(v5 + 21);
    v7 = TRunGlue::length(v5);
    if (v7 >= 2)
    {
      v8 = v7;
      v39 = v4 + 8;
      v9 = v4 + 10;
      v10 = *v6;
      for (i = 1; i != v8; ++i)
      {
        v12 = v6[i];
        if (v12 == 0xFFFF || (TRunGlue::IsDeleted(v5, i) & 1) != 0)
        {
          v12 = v10;
          goto LABEL_7;
        }

        if (*(a1 + 50) >= v10)
        {
          if (*(*(a1 + 56) + 2 * v10))
          {
            v13 = *(a1 + 48);
            if (v13 > (*(*(a1 + 56) + 2 * v10) - 1))
            {
              v14 = *(*(a1 + 56) + 2 * v10) - 1;
              v15 = (v9 + 6 * v14);
              do
              {
                v16 = bswap32(*(v15 - 1)) >> 16;
                if (v16 == v10)
                {
                  if (v12 <= bswap32(*v15) >> 16)
                  {
                    goto LABEL_19;
                  }
                }

                else if (v16 >= v10)
                {
LABEL_19:
                  v17 = (v39 + 6 * v14);
                  if (v10 != bswap32(*v17) >> 16)
                  {
                    break;
                  }

                  if (v12 != bswap32(v17[1]) >> 16)
                  {
                    break;
                  }

                  v18 = v17[2];
                  if (!v18)
                  {
                    break;
                  }

                  v19 = *a1;
                  v20 = *(a1 + 24);
                  v21 = (*(*a1 + 24) * (bswap32(v18) >> 16));
                  if ((v20 & 0x4000) != 0)
                  {
                    v40[0] = i;
                    v40[2] = v40;
                    v37 = v21;
                    v23 = std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long &&>,std::tuple<>>((v19 + 7), v40);
                    v24 = v37;
                    if (v37 == -32768)
                    {
                      v24 = 0;
                      *(v23 + 42) = 1;
                    }

                    else if ((v20 & 0x800) == 0)
                    {
                      v24 = *(v23 + 20) + v37;
                    }

                    *(v23 + 20) = v24;
                    goto LABEL_56;
                  }

                  if ((*(a1 + 24) & 0x800) == 0)
                  {
                    v22 = v19[5];
                    goto LABEL_43;
                  }

                  v25 = v19[4];
                  v22 = v19[5];
                  if (v25 != v22)
                  {
                    while (*v25 != i)
                    {
                      v25 += 2;
                      if (v25 == v22)
                      {
                        goto LABEL_43;
                      }
                    }

                    if (v25 != v22)
                    {
                      for (j = v25 + 2; j != v22; j += 2)
                      {
                        if (*j != i)
                        {
                          *v25 = *j;
                          *(v25 + 4) = *(j + 4);
                          v25 += 2;
                        }
                      }
                    }
                  }

                  if (v25 > v22)
                  {
                    __break(1u);
                  }

                  else
                  {
                    if (v25 != v22)
                    {
                      v19[5] = v25;
                      v22 = v25;
                    }

LABEL_43:
                    v27 = v19[6];
                    if (v22 < v27)
                    {
                      *v22 = i;
                      *(v22 + 4) = v21;
                      v28 = (v22 + 2);
                      goto LABEL_55;
                    }

                    v29 = v19[4];
                    v30 = v22 - v29;
                    v31 = (v22 - v29) >> 4;
                    v32 = v31 + 1;
                    if (!((v31 + 1) >> 60))
                    {
                      v33 = v27 - v29;
                      if (v33 >> 3 > v32)
                      {
                        v32 = v33 >> 3;
                      }

                      if (v33 >= 0x7FFFFFFFFFFFFFF0)
                      {
                        v32 = 0xFFFFFFFFFFFFFFFLL;
                      }

                      if (v32)
                      {
                        std::allocator<std::pair<long,TAATDeltaXListEntry>>::allocate_at_least[abi:fn200100]((v19 + 4), v32);
                      }

                      v34 = v19;
                      v35 = 16 * v31;
                      *v35 = i;
                      *(v35 + 8) = v21;
                      v38 = 16 * v31 + 16;
                      memcpy(0, v29, v30);
                      v36 = v34[4];
                      v34[4] = 0;
                      v34[5] = v38;
                      v34[6] = 0;
                      v19 = v34;
                      if (v36)
                      {
                        operator delete(v36);
                        v19 = v34;
                      }

                      v28 = v38;
LABEL_55:
                      v19[5] = v28;
LABEL_56:
                      *a2 = 1;
                      break;
                    }
                  }

                  std::__throw_bad_array_new_length[abi:fn200100]();
                }

                ++v14;
                v15 += 3;
              }

              while (v13 != v14);
            }
          }
        }

LABEL_7:
        v10 = v12;
      }
    }
  }
}

uint64_t TKerningEngineImplementation::MergeDeltas(TRunGlue **a1, uint64_t *a2, void *a3, _BYTE *a4, _BYTE *a5)
{
  v6 = a3;
  v8 = *a1;
  if (*(*a1 + 516))
  {
    v9 = *(*a1 + 66);
  }

  else
  {
    v9 = *(*a1 + 65);
  }

  if (*(*a1 + 516))
  {
    v10 = *(*a1 + 65);
  }

  else
  {
    v10 = *(*a1 + 66);
  }

  if (*a2 != a2[1])
  {
    v56 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *v54 = v12;
    v55 = v12;
    TAATPropTable::TAATPropTable(v54, *(v8 + 61));
    v14 = *a2;
    v13 = a2[1];
    if (*a2 != v13)
    {
      do
      {
        v15 = *(v14 + 8);
        if (*(v14 + 8))
        {
          v16 = *v14;
          v57 = *a1;
          v58 = v16;
          v17 = TRunGlue::TGlyph::glyphID(&v57);
          if (v17 != 0xFFFF)
          {
            v18 = v17;
            if ((TRunGlue::IsDeleted(v57, v58) & 1) == 0)
            {
              v19 = *(&v55 + 1);
              v20 = (v54 + (v56 >> 1));
              if (v56)
              {
                v19 = *(*v20 + DWORD2(v55));
              }

              if ((v19(v20, v18) & 0x8000) == 0)
              {
                v21 = v15;
                v22 = (v14 + 16);
                if (v14 + 16 == v13 || *(v14 + 24) + v15 || ((v23 = *v22, *v22 >= v16) ? (v24 = v16) : (v24 = *v22), v51 = v24, (TRunGlue::GetGlyphProps(*a1, v24) & 0x1040) == 0))
                {
LABEL_26:
                  v28 = *a1;
                  if (v16 <= 0)
                  {
                    v59.width = v9 * v21;
                    v59.height = 0.0;
                    if ((TRunGlue::AdvanceInitialAdvance(*a1, v59) & 1) == 0)
                    {

                      return 0;
                    }
                  }

                  else
                  {
                    Advance = TRunGlue::GetAdvance(*a1, v16 - 1);
                    TKerningEngineImplementation::SetAdvance<TRunGlue::TGlyph>(v28, v16 - 1, a5, Advance + v9 * v21, v30);
                  }
                }

                else
                {
                  v25 = v16;
                  if (v23 >= v16)
                  {
                    v25 = *v22;
                  }

                  v26 = v51 + 1;
                  while (v26 < v25)
                  {
                    v27 = TRunGlue::IsDeleted(*a1, v26++);
                    if ((v27 & 1) == 0)
                    {
                      goto LABEL_26;
                    }
                  }

                  if (v16 == v25)
                  {
                    v21 = *(v14 + 24);
                  }

                  v31 = *a1;
                  v60.x = TRunGlue::GetOrigin(*a1, v51) + v9 * v21;
                  TRunGlue::SetOrigin(v31, v51, v60);
                  v14 += 16;
                }
              }
            }
          }
        }

        v14 += 16;
      }

      while (v14 != v13);
    }

    *a4 = 1;

    v6 = a3;
  }

  if (v6[2])
  {
    v32 = *v6;
    if (*(*v6 + 32))
    {
      v33 = 0;
    }

    else
    {
      v33 = *(v32 + 20);
      if (v33)
      {
        v54[0] = *a1;
        v54[1] = 0;
        if (TRunGlue::TGlyph::IsDeleted(v54))
        {
          v33 = 0;
        }

        else
        {
          v61.height = v10 * v33;
          v61.width = 0.0;
          if ((TRunGlue::AdvanceInitialAdvance(*a1, v61) & 1) == 0)
          {
            return 0;
          }
        }
      }

      v34 = v32[1];
      if (v34)
      {
        do
        {
          v32 = v34;
          v34 = *v34;
        }

        while (v34);
      }

      else
      {
        do
        {
          v35 = v32;
          v32 = v32[2];
        }

        while (*v32 != v35);
      }
    }

    v36 = v6 + 1;
    if (v32 != v6 + 1)
    {
      do
      {
        v37 = v32[4];
        v54[0] = *a1;
        v54[1] = v37;
        IsDeleted = TRunGlue::TGlyph::IsDeleted(v54);
        if ((v37 & 0x8000000000000000) == 0 && (IsDeleted & 1) == 0)
        {
          v39 = *a1;
          v40 = v37 - 1;
          v41 = TRunGlue::GetAdvance(*a1, v40);
          v43 = v41;
          v44 = v42;
          if (*(v32 + 42) == 1)
          {
            v44 = v42 + -v10 * v33;
            TKerningEngineImplementation::SetAdvance<TRunGlue::TGlyph>(v39, v40, a5, v41, v44);
            v33 = 0;
          }

          v45 = *(v32 + 20);
          if (v45)
          {
            TKerningEngineImplementation::SetAdvance<TRunGlue::TGlyph>(v39, v40, a5, v43, v44 + v10 * v45);
            v33 += v45;
            v46 = *(*a1 + 18);
            if (v46)
            {
              TRun::NoteCrossStreamPosition(v46, v10 * v33);
            }
          }
        }

        v47 = v32[1];
        if (v47)
        {
          do
          {
            v48 = v47;
            v47 = *v47;
          }

          while (v47);
        }

        else
        {
          do
          {
            v48 = v32[2];
            v49 = *v48 == v32;
            v32 = v48;
          }

          while (!v49);
        }

        v32 = v48;
      }

      while (v48 != v36);
    }
  }

  return 1;
}

uint64_t GetOTFeaturesForOptionalLigatures(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = 0;
  v5 = *(result + 8);
  do
  {
    if ((kMasterFeatureMap[v4 + 2] & 0x100) != 0)
    {
      v6 = *v3;
      if (*v3 != v5)
      {
        v7 = kMasterFeatureMap[v4];
        while (*v6 != v7)
        {
          if (++v6 == v5)
          {
            goto LABEL_19;
          }
        }

        if (v6 != v5)
        {
          v9 = *(a2 + 8);
          v8 = *(a2 + 16);
          if (v9 >= v8)
          {
            v25 = 0xAAAAAAAAAAAAAAAALL;
            *&v11 = 0xAAAAAAAAAAAAAAAALL;
            *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v23 = v11;
            v24 = v11;
            v12 = (v9 - *a2) >> 3;
            v13 = v12 + 1;
            if ((v12 + 1) >> 61)
            {
              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            v14 = v8 - *a2;
            if (v14 >> 2 > v13)
            {
              v13 = v14 >> 2;
            }

            if (v14 >= 0x7FFFFFFFFFFFFFF8)
            {
              v15 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v15 = v13;
            }

            std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(&v23, v15, v12, a2 + 24);
            v17 = *(&v23 + 1);
            v16 = v24;
            *v24 = v7;
            *(v16 + 4) = 1;
            *&v24 = v16 + 8;
            v18 = *(a2 + 8) - *a2;
            v19 = v17 - v18;
            memcpy((v17 - v18), *a2, v18);
            v20 = *a2;
            *a2 = v19;
            v21 = *(a2 + 16);
            v22 = v24;
            *(a2 + 8) = v24;
            *&v24 = v20;
            *(&v24 + 1) = v21;
            *&v23 = v20;
            *(&v23 + 1) = v20;
            result = std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v23);
            v10 = v22;
          }

          else
          {
            *v9 = v7;
            v9[1] = 1;
            v10 = v9 + 2;
          }

          *(a2 + 8) = v10;
        }
      }
    }

LABEL_19:
    v4 += 3;
  }

  while (v4 != 495);
  return result;
}

uint64_t TDelegateRun::TDelegateRun(uint64_t a1, uint64_t a2)
{
  TRun::TRun(a1, *(a2 + 40));
  *v3 = &unk_1EF25A850;
  v4 = v3 + 40;
  *(a1 + 320) = CFDictionaryGetValue(atomic_load_explicit(v3 + 5, memory_order_acquire), @"CTRunDelegate");
  TRunDelegate::TRunDelegate((a1 + 328), atomic_load_explicit(v4, memory_order_acquire));
  v5 = *(a1 + 344);
  v6 = 0.0;
  v7 = 0.0;
  if (v5)
  {
    v7 = v5(*(a1 + 368), 0.0);
  }

  *(a1 + 376) = v7;
  v8 = *(a1 + 352);
  if (v8)
  {
    v6 = v8(*(a1 + 368));
  }

  *(a1 + 384) = v6;
  v9 = *(a1 + 360);
  if (v9)
  {
    v10 = *(a1 + 368);
    if (*(a1 + 328) == 2)
    {
      v9(v10, 0.0);
    }

    else
    {
      v11 = (v9)(v10);
    }
  }

  else
  {
    v11 = 0.0;
  }

  *(a1 + 392) = v11;
  v12 = *(a1 + 208);
  if (v12 >= 1)
  {
    for (i = 0; i != v12; ++i)
    {
      v15.width = *(a1 + 392);
      v15.height = 0.0;
      TStorageRange::SetAdvance((a1 + 192), i, v15);
    }
  }

  return a1;
}

void TAATKerxEngine::~TAATKerxEngine(id **this)
{
  std::unique_ptr<TAATAnkrTable>::reset[abi:fn200100](this + 50, 0);
  std::unique_ptr<TAATControlPointAccess>::reset[abi:fn200100](this + 49, 0);
  v3 = (this + 14);
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v3);
  std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::destroy((this + 6), this[7]);
  v2 = this[3];
  if (v2)
  {
    this[4] = v2;
    operator delete(v2);
  }
}

void TStorageRange::TStorageRange(TStorageRange *this, const TStorageRange *a2)
{
  *this = *a2;
  *(this + 8) = *(a2 + 8);
  *(this + 3) = *(a2 + 3);
  *(this + 32) = *(a2 + 32);
  v4 = *(this + 33) & 0xFE | *(a2 + 33) & 1;
  *(this + 33) = v4;
  v5 = v4 & 0xFFFFFFFD | (2 * ((*(a2 + 33) >> 1) & 1));
  *(this + 33) = v5;
  v6 = v5 & 0xFFFFFFFB | (4 * ((*(a2 + 33) >> 2) & 1));
  *(this + 33) = v6;
  LOBYTE(v6) = v6 & 0xF7 | (8 * ((*(a2 + 33) & 8) != 0));
  *(this + 33) = v6;
  *(this + 33) = v6 & 0xEF | *(a2 + 33) & 0x10;
  v7 = *(a2 + 6);
  *(this + 5) = *(a2 + 5);
  *(this + 6) = v7;
  if (v7)
  {
    atomic_fetch_add_explicit((v7 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 7) = *(a2 + 7);
}

void OTL::GlyphLookups::SetLookupInRange<true>(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v38 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = HIWORD(a2);
  *&v27 = a3;
  *(&v27 + 1) = a4;
  v7 = *a1;
  v8 = a1[1];
  if (v7 != v8)
  {
    while (*v7 != a2 || v7[1] != HIWORD(a2))
    {
      v7 += 52;
      if (v7 == v8)
      {
        goto LABEL_13;
      }
    }
  }

  if (v7 == v8)
  {
LABEL_13:
    v37 = 0xAAAAAAAAAAAAAAAALL;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v35 = v16;
    v36 = v16;
    v33 = v16;
    v34 = v16;
    v31 = v16;
    v32 = v16;
    v29 = v27;
    std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100](v30, &v29, 1uLL);
    LOWORD(v31) = v5;
    WORD1(v31) = v6;
    std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>(&v31 + 1, v30[0], v30[1]);
    v28 = v30;
    std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v28);
    v17 = a1[1];
    if (v17 >= a1[2])
    {
      v18 = std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__emplace_back_slow_path<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>>(a1, &v31);
    }

    else
    {
      *v17 = v31;
      v18 = v17 + 104;
      std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>((v17 + 8), *(&v31 + 1), v32);
    }

    a1[1] = v18;
    v30[0] = &v31 + 1;
    std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](v30);
    return;
  }

  v12 = *(v7 + 1);
  v11 = *(v7 + 2);
  v10 = (v7 + 4);
  if (v12 == v11)
  {
    goto LABEL_43;
  }

  v13 = *(v11 - 8);
  if (v13 < 0)
  {
    return;
  }

  v14 = *(v11 - 16);
  v15 = v14 + v13;
  if (v14 + v13 == a3)
  {
    *(v11 - 8) = v13 + a4;
    return;
  }

  v19 = a3 + a4;
  if (a3 + a4 == v14)
  {
    *(&v27 + 1) = v13 + a4;
    *(v11 - 16) = v27;
    return;
  }

  if (v19 >= v15)
  {
    v20 = v14 + v13;
  }

  else
  {
    v20 = a3 + a4;
  }

  v21 = v14 <= a3 && a3 < v15;
  v22 = a3;
  if (!v21 && (a3 <= v14 ? (v23 = v14 < v19) : (v23 = 0), v22 = *(v11 - 16), !v23) || v20 <= v22)
  {
    if (a3 == v14 && a4 == v13)
    {
      return;
    }

LABEL_43:
    std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::push_back[abi:fn200100](v10, &v27);
    return;
  }

  if (v14 >= a3)
  {
    v24 = a3;
  }

  else
  {
    v24 = *(v11 - 16);
  }

  if (v19 <= v15)
  {
    v25 = v15;
  }

  else
  {
    v25 = a3 + a4;
  }

  *(v11 - 16) = v24;
  *(v11 - 8) = v25 - v24;
}

void TRunDelegate::TRunDelegate(TRunDelegate *this, CFTypeRef cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 == CTRunDelegateGetTypeID())
  {
    v5 = *(cf + 5);
    v6 = *v5;
    v7 = v5[1];
    *(this + 4) = *(v5 + 4);
    *this = v6;
    *(this + 1) = v7;
    v8 = *(v5 + 5);
  }

  else
  {
    v8 = 0;
    *(this + 4) = 0;
    *this = 0u;
    *(this + 1) = 0u;
  }

  *(this + 5) = v8;
}

id **std::unique_ptr<TAATAnkrTable>::reset[abi:fn200100](id **result, id *a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    JUMPOUT(0x1865F22D0);
  }

  return result;
}

CFTypeID CTRunDelegateGetTypeID(void)
{
  if (_MergedGlobals_31 != -1)
  {
    dispatch_once_f(&_MergedGlobals_31, 0, TCFBase<TRunDelegate>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return qword_1ED5680E0;
}

uint64_t std::__split_buffer<CFRange,TInlineBufferAllocator<CFRange,4ul> &>::~__split_buffer(uint64_t a1)
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
    v6 = (v5 + 64);
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

void ***std::unique_ptr<TAATControlPointAccess>::reset[abi:fn200100](void ***result, void **a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {

    v3 = v2 + 2;
    std::vector<CGPoint,TInlineBufferAllocator<CGPoint,64ul>>::__destroy_vector::operator()[abi:fn200100](&v3);
    return MEMORY[0x1865F22D0](v2, 0x10E0C40A1378614);
  }

  return result;
}

CFDictionaryRef CTRunGetAttributes(CFDictionaryRef run)
{
  if (run)
  {
    return TAttributes::GetDictionary((*(run + 5) + 40));
  }

  return run;
}

CFIndex CTRunGetGlyphCount(CFIndex run)
{
  if (run)
  {
    return TRun::GetNonDeletedGlyphCount(*(run + 40));
  }

  return run;
}

__n128 TRun::GetPositions(__n128 *this, CGSize *a2)
{
  for (i = &this[17].n128_i64[1]; !atomic_load_explicit(i, memory_order_acquire); i = &this[17].n128_i64[1])
  {
    v5 = this[17].n128_i64[0];
    if (!v5)
    {
      break;
    }

    TLine::CachePositions(v5);
  }

  if (a2)
  {
    result = this[18];
    *a2 = result;
  }

  return result;
}

uint64_t TAttributes::GetRenderingStyle(TAttributes *this)
{
  if ((*(this + 69) & 0x80) == 0)
  {
    return 0;
  }

  v8 = v1;
  v9 = v2;
  valuePtr = 5;
  Value = CFDictionaryGetValue(atomic_load_explicit(this, memory_order_acquire), @"CTRenderingStyle");
  if (Value)
  {
    v5 = Value;
    v6 = CFGetTypeID(Value);
    if (v6 == CFNumberGetTypeID() || v6 == CFBooleanGetTypeID())
    {
      CFNumberGetValue(v5, kCFNumberIntType, &valuePtr);
    }

    else if (v6 == CFStringGetTypeID())
    {
      valuePtr = CFStringGetIntValue(v5);
    }
  }

  return valuePtr | 0x100000000;
}

const CGPoint *__cdecl CTRunGetPositionsPtr(CTRunRef run)
{
  if (!run)
  {
    return 0;
  }

  v1 = *(run + 5);
  if ((v1[14].n128_u8[1] & 8) != 0)
  {
    return 0;
  }

  TRun::GetPositions(v1, 0);
  return result;
}

void TStorageRange::UpdateAdvances(uint64_t a1, uint64_t a2, uint64_t x2_0)
{
  v84[1] = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 16);
  v7 = *(a1 + 33);
  if ((v7 & 2) != 0)
  {
    v32 = *(a1 + 8);
    v33 = *(a1 + 24);
    v34 = v33[3];
    if (v34)
    {
      v35 = (v34 + 8 * v32);
      v36 = a2;
      v37 = 1;
    }

    else
    {
      v35 = (v33[4] + 16 * v32);
      v36 = a2;
      v37 = 2;
    }

    TFont::GetAdvancesForGlyphs(v36, v33[2] + 2 * v32, v35, v37, v6, 0, x2_0, 0);
    *a1 = v38;
    return;
  }

  if ((*(a1 + 33) & 4) != 0)
  {
    if ([*(a1 + 24) implementsCustomAdvancesForIndexes])
    {
      *&v8 = 0xAAAAAAAAAAAAAAAALL;
      *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v83[14] = v8;
      v83[13] = v8;
      v83[12] = v8;
      v83[11] = v8;
      v83[10] = v8;
      v83[9] = v8;
      v83[8] = v8;
      v83[7] = v8;
      v83[6] = v8;
      v83[5] = v8;
      v83[4] = v8;
      v83[3] = v8;
      v83[2] = v8;
      v83[1] = v8;
      v83[0] = v8;
      __src = 0;
      v81 = 0;
      v82 = 0;
      v84[0] = v83;
      if (v6 >= 1)
      {
        v9 = 0;
        for (i = 0; i != v6; ++i)
        {
          if ((*(*(*(a1 + 24) + 40) + 4 * *(a1 + 8) + 4 * i) & 0x800) != 0)
          {
            if (v9 >= v82)
            {
              v11 = __src;
              v12 = v9 - __src;
              v13 = (v9 - __src) >> 3;
              v14 = v13 + 1;
              if ((v13 + 1) >> 61)
              {
                std::__throw_bad_array_new_length[abi:fn200100]();
              }

              v15 = v82 - __src;
              if ((v82 - __src) >> 2 > v14)
              {
                v14 = v15 >> 2;
              }

              if (v15 >= 0x7FFFFFFFFFFFFFF8)
              {
                v16 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v16 = v14;
              }

              *&v49[16] = v83;
              if (v16)
              {
                v17 = v84[0];
                if (v84[0] + 8 * v16 > v84)
                {
                  if (!(v16 >> 61))
                  {
                    operator new();
                  }

                  std::__throw_bad_array_new_length[abi:fn200100]();
                }

                v84[0] += 8 * v16;
              }

              else
              {
                v17 = 0;
              }

              v18 = v13;
              *v48 = 0u;
              *v49 = 0u;
              v19 = (v17 + 8 * v13);
              v20 = v17 + 8 * v16;
              v21 = &v19[-v18];
              *v19 = i;
              v9 = (v19 + 1);
              memcpy(v21, v11, v12);
              v22 = __src;
              v23 = v82;
              __src = v21;
              v81 = v9;
              v82 = v20;
              *v49 = v22;
              *&v49[8] = v23;
              v48[0] = v22;
              v48[1] = v22;
              std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(v48);
            }

            else
            {
              *v9 = i;
              v9 += 8;
            }

            v81 = v9;
          }
        }

        if (__src != v9)
        {
          *&v24 = 0xAAAAAAAAAAAAAAAALL;
          *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v77 = v24;
          v78 = v24;
          v25 = v9 - __src;
          v26 = (v9 - __src) >> 3;
          v75 = v24;
          v76 = v24;
          v73 = v24;
          v74 = v24;
          v71 = v24;
          v72 = v24;
          v69 = v24;
          v70 = v24;
          v67 = v24;
          v68 = v24;
          v65 = v24;
          v66 = v24;
          v64 = v24;
          v63 = v24;
          v62 = v24;
          v61 = v24;
          v60 = v24;
          v59 = v24;
          v58 = v24;
          v57 = v24;
          v56 = v24;
          v55 = v24;
          v54 = v24;
          v53 = v24;
          v52 = v24;
          v51 = v24;
          v50 = v24;
          *&v49[8] = v24;
          v48[0] = 0;
          v48[1] = 0;
          *v49 = 0;
          v79 = &v49[8];
          std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__vallocate[abi:fn200100](v48, v26);
          v27 = v48[1];
          bzero(v48[1], (2 * v25) & 0xFFFFFFFFFFFFFFF0);
          v48[1] = &v27[2 * v25];
          [*(a1 + 24) getCustomAdvances:v48[0] forIndexes:__src count:v26];
          v28 = 0;
          v29 = 0;
          if (v26 <= 1)
          {
            v30 = 1;
          }

          else
          {
            v30 = v26;
          }

          do
          {
            if (v29 >= (v81 - __src) >> 3 || v29 >= (v48[1] - v48[0]) >> 4)
            {
              goto LABEL_56;
            }

            v31 = *(__src + v29);
            TStorageRange::SetAdvance(a1, v31, *(v48[0] + v28));
            [*(a1 + 24) setProps:*(*(*(a1 + 24) + 40) + 4 * *(a1 + 8) + 4 * v31) & 0xFFFFF7FF atIndex:*(a1 + 8) + v31];
            ++v29;
            v28 += 16;
          }

          while (v30 != v29);
          v47 = v48;
          std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v47);
        }
      }

      v48[0] = &__src;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v48);
      return;
    }

    v7 = *(a1 + 33);
  }

  if ((v7 & 4) != 0)
  {
    if (v6 >= 1)
    {
      for (j = 0; j != v6; ++j)
      {
        v45 = *(a1 + 24);
        v46 = *(a1 + 8);
        if ((*(v45[5] + 4 * v46 + 4 * j) & 0x800) != 0)
        {
          [v45 customAdvanceForIndex:j + v46];
          TStorageRange::SetAdvance(a1, j, v85);
          [*(a1 + 24) setProps:*(*(*(a1 + 24) + 40) + 4 * *(a1 + 8) + 4 * j) & 0xFFFFF7FF atIndex:j + *(a1 + 8)];
        }
      }
    }
  }

  else
  {
    v39 = *(*(a1 + 24) + 16) + 2 * *(a1 + 8);
    *&v40 = 0xAAAAAAAAAAAAAAAALL;
    *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v77 = v40;
    v78 = v40;
    v75 = v40;
    v76 = v40;
    v73 = v40;
    v74 = v40;
    v71 = v40;
    v72 = v40;
    v69 = v40;
    v70 = v40;
    v67 = v40;
    v68 = v40;
    v65 = v40;
    v66 = v40;
    v64 = v40;
    v63 = v40;
    v62 = v40;
    v61 = v40;
    v60 = v40;
    v59 = v40;
    v58 = v40;
    v57 = v40;
    v56 = v40;
    v55 = v40;
    v54 = v40;
    v53 = v40;
    v52 = v40;
    v51 = v40;
    v50 = v40;
    *&v49[8] = v40;
    v48[0] = 0;
    v48[1] = 0;
    *v49 = 0;
    v79 = &v49[8];
    if (v6)
    {
      std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__vallocate[abi:fn200100](v48, v6);
      v41 = v48[1];
      bzero(v48[1], 16 * v6);
      v48[1] = &v41[16 * v6];
      TFont::GetAdvancesForGlyphs(a2, v39, v48[0], 2, v6, 0, x2_0, 0);
      if (v6 >= 1)
      {
        v42 = 0;
        for (k = 0; k != v6; ++k)
        {
          if ((*(*(*(a1 + 24) + 40) + 4 * *(a1 + 8) + 4 * k) & 0x800) != 0)
          {
            if (k >= (v48[1] - v48[0]) >> 4)
            {
LABEL_56:
              __break(1u);
            }

            TStorageRange::SetAdvance(a1, k, *(v48[0] + v42));
            [*(a1 + 24) setProps:*(*(*(a1 + 24) + 40) + 4 * *(a1 + 8) + 4 * k) & 0xFFFFF7FF atIndex:k + *(a1 + 8)];
          }

          v42 += 16;
        }
      }
    }

    else
    {
      TFont::GetAdvancesForGlyphs(a2, v39, 0, 2, 0, 0, x2_0, 0);
    }

    __src = v48;
    std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&__src);
  }
}

uint64_t CTFontIsLastResort(uint64_t result)
{
  if (result)
  {
    return (*(**(*(result + 40) + 408) + 696))();
  }

  return result;
}

const __CFNumber *TAttributes::HandleKernAttribute(const __CFNumber *result, TAttributes **a2)
{
  if (result)
  {
    v3 = result;
    valuePtr = -1;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID() || v4 == CFBooleanGetTypeID())
    {
      CFNumberGetValue(v3, kCFNumberDoubleType, &valuePtr);
      DoubleValue = *&valuePtr;
LABEL_5:
      result = TAttributes::EnsureRareData(*a2);
      *result = DoubleValue;
      *(result + 8) = 1;
      return result;
    }

    result = CFStringGetTypeID();
    if (v4 == result)
    {
      DoubleValue = CFStringGetDoubleValue(v3);
      valuePtr = *&DoubleValue;
      goto LABEL_5;
    }
  }

  return result;
}

uint64_t TCFBase<TNativeParagraphStyle>::GetTypeID(void)::{lambda(void *)#1}::__invoke()
{
  if ((atomic_load_explicit(&qword_1ED567D20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED567D20))
  {
    qword_1ED567D28 = 0;
    unk_1ED567D30 = "CTParagraphStyle";
    qword_1ED567D38 = 0;
    unk_1ED567D40 = 0;
    qword_1ED567D48 = TCFBase<TNativeParagraphStyle>::ClassDestruct;
    qword_1ED567D50 = TCFBase<TNativeParagraphStyle>::ClassEqual;
    qword_1ED567D58 = TCFBase<TNativeParagraphStyle>::ClassHash;
    unk_1ED567D60 = 0;
    qword_1ED567D68 = TCFBase<TNativeParagraphStyle>::ClassDebug;
    unk_1ED567D70 = 0;
    qword_1ED567D78 = 0;
    unk_1ED567D80 = 0;
    __cxa_guard_release(&qword_1ED567D20);
  }

  result = _CFRuntimeRegisterClass();
  qword_1ED567D18 = result;
  return result;
}

BOOL TBaseFont::Equal(atomic_ullong *this, atomic_ullong *a2)
{
  if (this == a2)
  {
    return 1;
  }

  v4 = (*(*this + 16))(this);
  if (v4 != (*(*a2 + 16))(a2))
  {
    return 0;
  }

  explicit = atomic_load_explicit(this + 10, memory_order_acquire);
  v6 = atomic_load_explicit(a2 + 10, memory_order_acquire);
  if (explicit == v6)
  {
    return 1;
  }

  return explicit && v6 != 0 && CFEqual(explicit, v6) != 0;
}

void TFont::GetAdvancesForGlyphs(uint64_t a1, uint64_t a2, double *a3, int a4, uint64_t a5, int a6, uint64_t a7, double *a8)
{
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  v50 = v16;
  v51 = v16;
  v49 = v16;
  TFont::GetEffectiveMatrix(a1, &v49);
  v17 = vandq_s8(vceqq_f64(v49, xmmword_18475BD80), vandq_s8(vceqq_f64(v50, xmmword_18475A330), vceqzq_f64(v51)));
  v18 = vandq_s8(v17, vdupq_laneq_s64(v17, 1)).u64[0];
  UnscaledTrackAmount = TFont::GetUnscaledTrackAmount(a1);
  v20 = (*(**(a1 + 408) + 720))();
  v21 = v20;
  if ((a7 & 0x100000000) != 0)
  {
    a7 = a7;
  }

  else
  {
    a7 = 5;
  }

  if (a6 != 2 && (a6 || (*(a1 + 12) & 1) == 0))
  {
    AdvancesForGlyphsWithStyleFromCG = TFont::GetAdvancesForGlyphsWithStyleFromCG(a1, a7, a2, a3, a4, a5, &v49, v18 >> 63, UnscaledTrackAmount, v20);
    v23 = 0.0;
    if (AdvancesForGlyphsWithStyleFromCG)
    {
      if (a8)
      {
        if (a5 >= 1)
        {
          v24 = *a8;
          v25 = a8[2] * 0.0;
          do
          {
            v26 = v25 + v24 * *a3;
            *a3 = v26;
            v23 = v23 + v26;
            a3 += a4;
            --a5;
          }

          while (a5);
        }
      }

      else
      {
        t1.a = NAN;
        vDSP_sveD(a3, a4, &t1.a, a5);
      }
    }

    return;
  }

  if (!GetUnscaledAdvances(a1, a2, a3, a4, a5, a6))
  {
    return;
  }

  if (*(a1 + 400) == 1)
  {
    if ((a7 & 4) != 0)
    {
      v27 = v21;
    }

    else
    {
      v27 = 1;
    }

    ApplyFixedAdvances(atomic_load_explicit((a1 + 168), memory_order_acquire), v27, a5, a3, a4);
    if (!a8)
    {
      return;
    }

    goto LABEL_41;
  }

  ScaleFactor = TFont::GetScaleFactor(a1);
  if ((v18 & 0x8000000000000000) == 0)
  {
    *&v29 = -1;
    *(&v29 + 1) = -1;
    *&v48.c = v29;
    *&v48.tx = v29;
    *&v48.a = v29;
    CGAffineTransformMakeScale(&v47, ScaleFactor, ScaleFactor);
    *&t1.a = v49;
    *&t1.c = v50;
    *&t1.tx = v51;
    t2 = v47;
    CGAffineTransformConcat(&v48, &t1, &t2);
    if (a5 >= 1)
    {
      a = v48.a;
      v31 = 0.0;
      v32 = v48.c * 0.0;
      v33 = a3;
      v34 = a5;
      do
      {
        if (*v33 != 0.0)
        {
          v35 = v32 + a * (UnscaledTrackAmount + *v33);
          v36 = round(v35);
          if (v21)
          {
            v35 = v36;
          }

          *v33 = v35;
          v31 = v31 + v35;
        }

        v33 += a4;
        --v34;
      }

      while (v34);
    }

    goto LABEL_40;
  }

  v37 = ScaleFactor != 1.0;
  if (UnscaledTrackAmount != 0.0)
  {
    v37 = 1;
  }

  if ((v37 | v21))
  {
    if (a5 >= 1)
    {
      v38 = 0.0;
      v39 = a3;
      v40 = a5;
      do
      {
        if (*v39 != 0.0)
        {
          v41 = ScaleFactor * (UnscaledTrackAmount + *v39);
          v42 = round(v41);
          if (v21)
          {
            v41 = v42;
          }

          *v39 = v41;
          v38 = v38 + v41;
        }

        v39 += a4;
        --v40;
      }

      while (v40);
    }

LABEL_40:
    if (!a8)
    {
      return;
    }

    goto LABEL_41;
  }

  t1.a = NAN;
  vDSP_sveD(a3, a4, &t1.a, a5);
  if (!a8)
  {
    return;
  }

LABEL_41:
  v43 = 0.0;
  if (a5 >= 1)
  {
    v44 = *a8;
    v45 = a8[2] * 0.0;
    do
    {
      v46 = v45 + v44 * *a3;
      *a3 = v46;
      v43 = v43 + v46;
      a3 += a4;
      --a5;
    }

    while (a5);
  }
}

double CTFontGetAdvancesForGlyphs(CTFontRef font, CTFontOrientation orientation, const CGGlyph *glyphs, CGSize *advances, CFIndex count)
{
  v17 = *MEMORY[0x1E69E9840];
  v5 = 0.0;
  if (font && glyphs)
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v15[28] = v10;
    v15[29] = v10;
    v15[26] = v10;
    v15[27] = v10;
    v15[24] = v10;
    v15[25] = v10;
    v15[22] = v10;
    v15[23] = v10;
    v15[20] = v10;
    v15[21] = v10;
    v15[18] = v10;
    v15[19] = v10;
    v15[16] = v10;
    v15[17] = v10;
    v15[15] = v10;
    v15[14] = v10;
    v15[13] = v10;
    v15[12] = v10;
    v15[11] = v10;
    v15[10] = v10;
    v15[9] = v10;
    v15[8] = v10;
    v15[7] = v10;
    v15[6] = v10;
    v15[4] = v10;
    v15[5] = v10;
    v15[2] = v10;
    v15[3] = v10;
    v15[0] = v10;
    v15[1] = v10;
    memset(v14, 0, sizeof(v14));
    v16 = v15;
    if (!advances)
    {
      std::vector<CGSize,TInlineBufferAllocator<CGSize,30ul>>::resize(v14, count);
      advances = v14[0];
    }

    TFont::GetAdvancesForGlyphs(*(font + 5), glyphs, &advances->width, 2, count, orientation, 0, 0);
    v5 = v11;
    v13 = v14;
    std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v13);
  }

  return v5;
}

void *TRunGlue::UpdateForCurrentRealRun(void *this)
{
  explicit = atomic_load_explicit((this[18] + 56), memory_order_acquire);
  if (this[61] != explicit)
  {
    v2 = *(explicit + 40);
    this[61] = explicit;
    this[62] = v2;
  }

  v3 = this[18];
  v4 = *(v3 + 216);
  v5 = *(v3 + 200);
  this[21] = v4[2] + 2 * v5;
  this[51] = v4[5] + 4 * v5;
  this[52] = v4[6] + 8 * v5;
  return this;
}

unint64_t TRunGlue::SetRunRange(unint64_t this, CFRange a2)
{
  v2 = this;
  if (a2.location == *(this + 8) && a2.length == *(this + 16))
  {
    v4 = *(this + 24);
    *(this + 8) = a2;
    *(this + 32) = -1;
    *(this + 40) = -1;
    *(this + 48) = 0;
    if ((v4 & 0x80000000) == 0)
    {
      return this;
    }
  }

  else
  {
    *(this + 8) = a2;
    *(this + 32) = -1;
    *(this + 40) = -1;
    *(this + 48) = 0;
  }

  *(this + 120) = a2.location;
  this = TRunGlue::PhysicalRunIndexFromLogical(this, a2.location);
  v5 = *(*v2 + 16);
  if (this >= (*(*v2 + 24) - v5) >> 3)
  {
    __break(1u);
  }

  else
  {
    v6 = *(*(v5 + 8 * this) + 48);
    v2[18] = v6;
    v2[19] = 0;
    v2[20] = *(v6 + 208);

    return TRunGlue::UpdateForCurrentRealRun(v2);
  }

  return this;
}

uint64_t TFont::Compare(TFont *this, const TFont *a2, int a3)
{
  if (this == a2)
  {
    return 2;
  }

  v52[9] = v3;
  v52[10] = v4;
  if (*(this + 3) != *(a2 + 3) || ((*(this + 12) ^ *(a2 + 12)) & 1) != 0)
  {
    return 0;
  }

  v8 = *(this + 6);
  v9 = *(a2 + 6);
  if (v8 != v9)
  {
    v10 = (v8 ? *(this + 6) : MEMORY[0x1E695EFD0]);
    v11 = (v9 ? *(a2 + 6) : MEMORY[0x1E695EFD0]);
    if (memcmp(v10, v11, 0x30uLL))
    {
      return 0;
    }
  }

  explicit = atomic_load_explicit(this + 2, memory_order_acquire);
  v13 = atomic_load_explicit(a2 + 2, memory_order_acquire);
  if (explicit == v13)
  {
    return TFont::CompareExtras(this, a2);
  }

  if (!explicit || !v13)
  {
    if (!a3)
    {
      return 0;
    }

LABEL_22:
    v15 = atomic_load_explicit((*(this + 51) + 96), memory_order_acquire);
    v16 = atomic_load_explicit((*(a2 + 51) + 96), memory_order_acquire);
    v17 = v15;
    v18 = v16;
    v19 = v18;
    if (v17 == v18)
    {
    }

    else
    {
      if (!v17 || !v18)
      {

        goto LABEL_29;
      }

      v20 = CFEqual(v17, v18);

      if (!v20)
      {
LABEL_29:
        v45[0] = 0xAAAAAAAAAAAAAAAALL;
        (*(**(this + 51) + 72))(v45);
        v39[0] = 0xAAAAAAAAAAAAAAAALL;
        (*(**(a2 + 51) + 72))(v39);
        v52[0] = atomic_load_explicit(v45, memory_order_acquire);
        v51 = atomic_load_explicit(v39, memory_order_acquire);
        v21 = operator==(v52, &v51);

        if (!v21)
        {
          goto LABEL_44;
        }
      }
    }

    ShapingType = TBaseFont::GetShapingType(*(this + 51));
    if (ShapingType)
    {
      v23 = ShapingType;
      if (ShapingType == TBaseFont::GetShapingType(*(a2 + 51)))
      {
        v24 = *(this + 51);
        if (v23 == 1)
        {
          CommonTable = TBaseFont::GetCommonTable(v24, 1819566439, 0);
          v26 = TBaseFont::GetCommonTable(*(a2 + 51), 1819566439, 0);
          if (DataEqual(CommonTable, v26))
          {
            v27 = TBaseFont::GetCommonTable(*(this + 51), 1836020344, 0);
            v28 = TBaseFont::GetCommonTable(*(a2 + 51), 1836020344, 0);
            v29 = DataEqual(v27, v28);
LABEL_41:
            v36 = v29;
            goto LABEL_42;
          }

          goto LABEL_44;
        }

        v30 = TBaseFont::GetCommonTable(v24, 1196643650, 0);
        v31 = TBaseFont::GetCommonTable(*(a2 + 51), 1196643650, 0);
        if (DataEqual(v30, v31))
        {
          v50 = 0xAAAAAAAAAAAAAAAALL;
          *&v32 = 0xAAAAAAAAAAAAAAAALL;
          *(&v32 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v48 = v32;
          v49 = v32;
          v46 = v32;
          v47 = v32;
          *v45 = v32;
          v33 = TBaseFont::GetCommonTable(*(this + 51), 1195656518, 0);
          OTL::GDEF::GDEF(v45, v33);
          v44 = 0xAAAAAAAAAAAAAAAALL;
          *&v34 = 0xAAAAAAAAAAAAAAAALL;
          *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
          v42 = v34;
          v43 = v34;
          v40 = v34;
          v41 = v34;
          *v39 = v34;
          v35 = TBaseFont::GetCommonTable(*(a2 + 51), 1195656518, 0);
          OTL::GDEF::GDEF(v39, v35);
          if (v46 != v40)
          {
            v36 = 0;
            if (v46 && v40)
            {
              if (OTL::ClassDefTable::operator==(v46, v40))
              {
                goto LABEL_40;
              }

              v36 = 0;
            }

LABEL_42:

            if (v36)
            {
              return TFont::CompareExtras(this, a2);
            }

            return 0;
          }

LABEL_40:
          FeatureTableSubstitutions = TFont::GetFeatureTableSubstitutions(this, 0);
          v38 = TFont::GetFeatureTableSubstitutions(a2, 0);
          v29 = std::operator==[abi:fn200100]<unsigned short,OTL::FeatureTable const*,std::hash<unsigned short>,std::equal_to<unsigned short>,std::allocator<std::pair<unsigned short const,OTL::FeatureTable const*>>>(FeatureTableSubstitutions, v38);
          goto LABEL_41;
        }
      }
    }

LABEL_44:

    return 0;
  }

  result = CFEqual(explicit, v13);
  if (!result && (a3 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (result)
  {
    return TFont::CompareExtras(this, a2);
  }

  return result;
}

uint64_t TRunGlue::PhysicalRunIndexFromLogical(TRunGlue *this, uint64_t a2)
{
  v2 = a2;
  if (*(this + 6) <= 0)
  {
    v4 = *(this + 16);
    v5 = *(this + 17) + v4;
    if (v4 > a2 || v5 <= a2)
    {
      TRunGlue::InitLevelRange(this);
      v4 = *(this + 16);
      v5 = *(this + 17) + v4;
    }

    v7 = *(this + 1);
    v8 = *(this + 2) + v7;
    if (v8 >= v5)
    {
      v9 = v5;
    }

    else
    {
      v9 = *(this + 2) + v7;
    }

    if (v4 <= v7 && v7 < v5)
    {
      v11 = v9 - v7;
    }

    else if (v7 > v4)
    {
      v7 = 0;
      v11 = 0;
    }

    else
    {
      if (v4 < v8)
      {
        v7 = v4;
      }

      else
      {
        v7 = 0;
      }

      if (v4 < v8)
      {
        v11 = v9 - v4;
      }

      else
      {
        v11 = 0;
      }
    }

    return v11 + ~v2 + 2 * v7;
  }

  return v2;
}

void TBaseFont::CopyTraitsInternal(TBaseFont *this@<X0>, atomic_ullong *a2@<X8>)
{
  *a2 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyAttributeInternal(this, @"NSCTFontTraitsAttribute", &v13);
  *a2 = atomic_exchange(&v13, 0);

  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    v12 = 0;
    v13 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 664))(&v13, this, &v12);
    if (atomic_load_explicit(&v13, memory_order_acquire))
    {
      v11 = 0xAAAAAAAAAAAAAAAALL;
      (*(*this + 120))(&v11, this);
      if (atomic_load_explicit(&v11, memory_order_acquire))
      {
        v10 = 0xAAAAAAAAAAAAAAAALL;
        (*(*this + 112))(&v10, this);
        v8 = 0;
        v9 = 0;
        v7 = 0xAAAAAAAAAAAAAAAALL;
        CreateTraitsWithVariation(atomic_load_explicit(&v13, memory_order_acquire), atomic_load_explicit(&v10, memory_order_acquire), atomic_load_explicit(&v11, memory_order_acquire), this, &v9, &v8, &v7);
        if (!v12)
        {
          TCFRef<__CTFont const*>::Retain(a2, atomic_load_explicit(&v7, memory_order_acquire));
        }

        if (atomic_load_explicit(&v9, memory_order_acquire))
        {
          v6 = atomic_load_explicit(&v9, memory_order_acquire);
          TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v6, @"CTFontCSSWeightAttribute");
        }

        if (atomic_load_explicit(&v8, memory_order_acquire))
        {
          v5 = atomic_load_explicit(&v8, memory_order_acquire);
          TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v5, @"CTFontCSSWidthAttribute");
        }
      }

      if (!atomic_load_explicit(a2, memory_order_acquire))
      {
      }

      if (atomic_load_explicit(a2, memory_order_acquire))
      {
        v11 = 0xAAAAAAAAAAAAAAAALL;
        (*(*this + 832))(&v11, this, atomic_load_explicit(a2, memory_order_acquire));
        if (atomic_load_explicit(&v11, memory_order_acquire))
        {
          TCFRef<__CTFont const*>::Retain(a2, atomic_load_explicit(&v11, memory_order_acquire));
        }

        v4 = atomic_load_explicit(a2, memory_order_acquire);
        TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v4, @"NSCTFontTraitsAttribute");
      }
    }
  }
}

unsigned int *TBaseFont::GetSymbolicTraitsInternal(atomic_ullong *this)
{
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

void TBaseFont::CreateTraitsValuesPerFontInfo(atomic_ullong *a1@<X0>, _DWORD *a2@<X1>, atomic_ullong *a3@<X8>)
{
  if ((TBaseFont::SkipMetadata(a1) & 1) == 0)
  {
    *a3 = 0;
    CopyAttributeForSystemFont(atomic_load_explicit(a1 + 12, memory_order_acquire), @"NSCTFontTraitsAttribute", valuePtr);

    if (atomic_load_explicit(a3, memory_order_acquire))
    {
      *a2 = 1;
      return;
    }
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v65 = 2.0;
  v66 = Mutable;
  v63 = 2.0;
  v64 = 2.0;
  v62 = 0;
  if (a1 && ((v7 = (*(*a1 + 16))(a1), v7 != 1414809156) ? (v8 = v7 == 1413695044) : (v8 = 1), v8))
  {
    TBaseFont::CopyNativeFont(a1, valuePtr);
  }

  else if ((*(*a1 + 16))(a1) == 1414088260)
  {
    TCFRef<__CTFont const*>::Retain(&v62, atomic_load_explicit(a1 + 80, memory_order_acquire));
  }

  if (atomic_load_explicit(&v62, memory_order_acquire))
  {
    atomic_load_explicit(&v62, memory_order_acquire);
  }

  else if (!TBaseFont::GetInitializedGraphicsFont(a1))
  {
LABEL_23:
    v13 = 0;
    v14 = 0;
    LODWORD(v15) = 0;
    LODWORD(v16) = 0;
    v17 = 0;
    v58 = -1;
    v59 = -1;
    goto LABEL_80;
  }

  if (!CGFontGetParserFont() || !FPFontIsNamedInstance())
  {
    goto LABEL_23;
  }

  v9 = FPFontCopyMetadata();
  v10 = v9;
  if (v9)
  {
    valuePtr[0] = 0x4000000000000000;
    Value = CFDictionaryGetValue(v9, @"MTD_Typeface_Metrics_IsMonoDesign");
    if (objc_opt_respondsToSelector() & 1) != 0 || (Value = CFDictionaryGetValue(v10, @"MTD_Typeface_Metrics_IsFixedPitchFlag"), (objc_opt_respondsToSelector()))
    {
      v12 = [Value BOOLValue];
    }

    else
    {
      v12 = -1;
    }

    v18 = CFDictionaryGetValue(v10, @"MTD_Typeface_Style_IsItalicDesign");
    if (objc_opt_respondsToSelector())
    {
      v19 = [v18 BOOLValue];
    }

    else
    {
      v19 = -1;
    }

    v20 = CFDictionaryGetValue(v10, @"MTD_Typeface_Style_ItalicAngle");
    v15 = v20;
    if (!v20)
    {
      goto LABEL_34;
    }

    v21 = CFGetTypeID(v20);
    if (v21 == CFNumberGetTypeID() || v21 == CFBooleanGetTypeID())
    {
      CFNumberGetValue(v15, kCFNumberDoubleType, valuePtr);
      DoubleValue = *valuePtr;
    }

    else
    {
      if (v21 != CFStringGetTypeID())
      {
        LODWORD(v15) = 0;
LABEL_34:
        v23 = CFDictionaryGetValue(v10, @"MTD_Typeface_Width_VisualDescriptor");
        v24 = 2.0;
        v58 = v12;
        if (v23 && (v25 = v23, v26 = CFGetTypeID(v23), v26 == CFStringGetTypeID()) && (v27 = [&unk_1EF275C50 objectForKeyedSubscript:v25]) != 0)
        {
          [v27 floatValue];
          v29 = v28;
          v14 = 1;
        }

        else
        {
          v14 = 0;
          v29 = 2.0;
        }

        v30 = CFDictionaryGetValue(v10, @"MTD_Typeface_Weight_VisualDescriptor");
        v59 = v19;
        if (!v30)
        {
          goto LABEL_67;
        }

        v31 = v30;
        v32 = CFGetTypeID(v30);
        if (v32 != CFStringGetTypeID())
        {
          goto LABEL_67;
        }

        if (v31 == @"reg" || CFEqual(v31, @"reg"))
        {
          v13 = 1;
          v24 = 0.0;
          goto LABEL_68;
        }

        v33 = 0x3FD3333333333333;
        if (v31 == @"semi" || CFEqual(v31, @"semi") || (v33 = 0x3FD999999999999ALL, v31 == @"bold") || CFEqual(v31, @"bold") || (v33 = 0xBFD999999999999ALL, v31 == @"light") || CFEqual(v31, @"light") || (v33 = 0x3FCD70A3D70A3D71, v31 == @"med") || CFEqual(v31, @"med") || (v33 = 0x3FE1EB851EB851ECLL, v31 == @"heavy") || CFEqual(v31, @"heavy") || (v33 = 0x3FE3D70A3D70A3D7, v31 == @"black") || CFEqual(v31, @"black") || (v33 = 0xBFE3333333333333, v31 == @"thin") || CFEqual(v31, @"thin") || (v33 = 0xBFE999999999999ALL, v31 == @"ulight") || CFEqual(v31, @"ulight"))
        {
          v13 = 1;
          v24 = *&v33;
          goto LABEL_68;
        }

        if (v31 == @"uthin" || CFEqual(v31, @"uthin"))
        {
          v13 = 1;
          v24 = -0.9;
        }

        else
        {
LABEL_67:
          v13 = 0;
        }

LABEL_68:
        v34 = CFDictionaryGetValue(v10, @"MTD_Typeface_Style_ATS_Class");
        v16 = v34;
        if (v34)
        {
          v35 = CFGetTypeID(v34);
          if (v35 == CFStringGetTypeID())
          {
            if (v16 == @"old-style-serifs" || CFEqual(v16, @"old-style-serifs"))
            {
              v17 = 0x10000000;
            }

            else if (v16 == @"transitional-serifs" || CFEqual(v16, @"transitional-serifs"))
            {
              v17 = 0x20000000;
            }

            else if (v16 == @"modern-serifs" || CFEqual(v16, @"modern-serifs"))
            {
              v17 = 805306368;
            }

            else if (v16 == @"clarendon-serifs" || CFEqual(v16, @"clarendon-serifs"))
            {
              v17 = 0x40000000;
            }

            else if (v16 == @"slab-serifs" || CFEqual(v16, @"slab-serifs"))
            {
              v17 = 1342177280;
            }

            else if (v16 == @"freeform-serifs" || CFEqual(v16, @"freeform-serifs"))
            {
              v17 = 1879048192;
            }

            else if (v16 == @"sans-serif" || CFEqual(v16, @"sans-serif"))
            {
              v17 = 0x80000000;
            }

            else
            {
              v17 = -1879048192;
              if (v16 != @"ornamentals" && !CFEqual(v16, @"ornamentals"))
              {
                v17 = -1610612736;
                if (v16 != @"scripts" && !CFEqual(v16, @"scripts"))
                {
                  v17 = -1073741824;
                  if (v16 != @"symbolic")
                  {
                    if (CFEqual(v16, @"symbolic"))
                    {
                      v17 = -1073741824;
                    }

                    else
                    {
                      v17 = 0;
                    }
                  }
                }
              }
            }

            LODWORD(v16) = 1;
            goto LABEL_76;
          }

          LODWORD(v16) = 0;
        }

        v17 = 0;
LABEL_76:
        v64 = v29;
        v65 = v24;
        v63 = *valuePtr;
        if ((v13 | v16 | v15 | v14) == 1)
        {
          *a2 = 1;
        }

        else
        {
          v13 = 0;
          v14 = 0;
          LODWORD(v15) = 0;
          LODWORD(v16) = 0;
        }

        goto LABEL_79;
      }

      DoubleValue = CFStringGetDoubleValue(v15);
    }

    *valuePtr = DoubleValue / 180.0;
    LODWORD(v15) = 1;
    goto LABEL_34;
  }

  v13 = 0;
  v14 = 0;
  LODWORD(v15) = 0;
  LODWORD(v16) = 0;
  v17 = 0;
  v58 = -1;
  v59 = -1;
LABEL_79:

LABEL_80:
  if ((*(*a1 + 16))(a1) == 1414088260)
  {
    LOBYTE(v36) = 1;
    goto LABEL_109;
  }

  (*(*a1 + 120))(valuePtr, a1);
  v36 = atomic_load_explicit(valuePtr, memory_order_acquire) != 0;

  if ((v13 | v36))
  {
LABEL_109:
    if (!v13)
    {
      v39 = 0;
      goto LABEL_113;
    }

    goto LABEL_110;
  }

  explicit = atomic_load_explicit(a1 + 12, memory_order_acquire);
  if (!explicit)
  {
LABEL_108:
    LOBYTE(v36) = 0;
    goto LABEL_109;
  }

  if (explicit == @"LucidaGrande" || CFEqual(explicit, @"LucidaGrande") || explicit == @".LucidaGrandeUI" || CFEqual(explicit, @".LucidaGrandeUI"))
  {
    goto LABEL_88;
  }

  if (explicit != @"STHeiti" && !CFEqual(explicit, @"STHeiti"))
  {
    if (explicit == @"STXihei" || CFEqual(explicit, @"STXihei"))
    {
      LOBYTE(v36) = 0;
      v38 = -0.1;
      goto LABEL_95;
    }

    if (explicit == @"TimesNewRomanPSMT" || CFEqual(explicit, @"TimesNewRomanPSMT"))
    {
LABEL_88:
      LOBYTE(v36) = 0;
      v65 = 0.0;
      goto LABEL_110;
    }

    if ((v16 & 1) == 0)
    {
      if (explicit == @"Times-Roman")
      {
        LOBYTE(v36) = 0;
        v39 = 0;
        LODWORD(v16) = 1;
        v17 = 0x10000000;
        goto LABEL_113;
      }

      LOBYTE(v36) = 0;
      if (CFEqual(explicit, @"Times-Roman"))
      {
        LODWORD(v16) = 1;
        v17 = 0x10000000;
        v39 = 0;
        goto LABEL_113;
      }

      goto LABEL_109;
    }

    goto LABEL_108;
  }

  LOBYTE(v36) = 0;
  v38 = 0.24;
LABEL_95:
  v65 = v38;
LABEL_110:
  v39 = 1;
  v40 = 1;
  if (v14 & v16)
  {
LABEL_170:
    IsFixedPitch = v58;
    if (!v36)
    {
      goto LABEL_171;
    }

LABEL_135:
    if (!v15)
    {
      goto LABEL_137;
    }

    goto LABEL_136;
  }

LABEL_113:
  memset(valuePtr, 170, sizeof(valuePtr));
  (*(*a1 + 488))(&v60, a1, 1330851634);
  OS2::OS2(valuePtr, &v60);

  if (valuePtr[2] < 78)
  {
    v40 = v14;
    IsFixedPitch = v58;
  }

  else
  {
    if ((v39 & 1) == 0)
    {
      v41 = bswap32(*(valuePtr[1] + 2)) >> 16;
      if (v41 < 0xB)
      {
        LOWORD(v41) = 100 * v41;
      }

      v42 = v41;
      if (v41 >= 0x3E8u)
      {
        v42 = 1000;
      }

      if (v41)
      {
        v43 = v42;
      }

      else
      {
        v43 = 1;
      }

      v65 = WeightOfClass(v43);
    }

    if (v14)
    {
      v40 = 1;
      IsFixedPitch = v58;
    }

    else
    {
      v45 = bswap32(*(valuePtr[1] + 3)) >> 16;
      v40 = v45 < 0xB;
      if (v45 > 0xA)
      {
        v46 = 0.0;
      }

      else
      {
        v46 = kWidthScale[v45];
      }

      IsFixedPitch = v58;
      v64 = v46;
    }

    if (*(valuePtr[1] + 15))
    {
      v17 = *(valuePtr[1] + 15) << 28;

      v39 = 1;
      if (!v36)
      {
        goto LABEL_171;
      }

      goto LABEL_135;
    }

    v39 = 1;
  }

  if (!v16)
  {
    v17 = 0;
    goto LABEL_170;
  }

  if (v36)
  {
    goto LABEL_135;
  }

LABEL_171:
  if (v39 && (v15 & v40 & 1) != 0)
  {
    LOBYTE(v39) = 1;
    LOBYTE(v40) = 1;
    LOBYTE(v15) = 1;
  }

  else
  {
    TraitsFromSubfamilyName = GetTraitsFromSubfamilyName(a1, v39, v40, v15, &v65, &v64, &v63);
    LOBYTE(v39) = TraitsFromSubfamilyName;
    LOBYTE(v15) = (TraitsFromSubfamilyName & 0xFF0000) != 0;
    v40 = (TraitsFromSubfamilyName >> 8) & 1;
    if ((TraitsFromSubfamilyName & 0xFF0000) == 0)
    {
      goto LABEL_137;
    }
  }

LABEL_136:
  if ((IsFixedPitch & 0x80000000) == 0)
  {
LABEL_142:
    LOBYTE(v15) = 1;
    goto LABEL_143;
  }

LABEL_137:
  InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(a1);
  if (InitializedGraphicsFont)
  {
    if ((v15 & 1) == 0)
    {
      v63 = CGFontGetItalicAngle(InitializedGraphicsFont) * -0.00555555556;
    }

    if (IsFixedPitch < 0)
    {
      IsFixedPitch = CGFontIsFixedPitch();
    }

    goto LABEL_142;
  }

LABEL_143:
  if ((*(*a1 + 480))(a1, 1935829368) & 1) != 0 || ((*(*a1 + 480))(a1, 1129270354))
  {
    v48 = 1;
    if (v39)
    {
      goto LABEL_146;
    }
  }

  else
  {
    v48 = (*(*a1 + 480))(a1, 1398163232);
    if (v39)
    {
LABEL_146:
      v49 = v65;
      if (v65 > 0.239)
      {
        v50 = 2;
      }

      else
      {
        v50 = 0;
      }

      goto LABEL_151;
    }
  }

  v50 = 0;
  v65 = 0.0;
  v49 = 0.0;
LABEL_151:
  TCFNumber::TCFNumber<double>(valuePtr, v49);
  CFDictionarySetValue(atomic_load_explicit(&v66, memory_order_acquire), @"NSCTFontWeightTrait", atomic_load_explicit(valuePtr, memory_order_acquire));

  if (v40)
  {
    v51 = v64;
    if (v64 <= 0.15)
    {
      if (v64 < -0.15)
      {
        v50 |= 0x40u;
      }
    }

    else
    {
      v50 |= 0x20u;
    }
  }

  else
  {
    v64 = 0.0;
    v51 = 0.0;
  }

  TCFNumber::TCFNumber<double>(valuePtr, v51);
  CFDictionarySetValue(atomic_load_explicit(&v66, memory_order_acquire), @"NSCTFontProportionTrait", atomic_load_explicit(valuePtr, memory_order_acquire));

  if ((v15 & 1) != 0 && (v52 = v63, fabs(v63) > 0.000001))
  {
    v53 = v59;
    if (v59 < 0)
    {
      v53 = 1;
    }

    v59 = v53;
  }

  else
  {
    v63 = 0.0;
    v52 = 0.0;
  }

  TCFNumber::TCFNumber<double>(valuePtr, v52);
  CFDictionarySetValue(atomic_load_explicit(&v66, memory_order_acquire), @"NSCTFontSlantTrait", atomic_load_explicit(valuePtr, memory_order_acquire));

  v54 = v50 | 0x400;
  if (IsFixedPitch <= 0)
  {
    v54 = v50;
  }

  v55 = v54 | v17 | (v59 > 0);
  if (v48)
  {
    v56 = v55 | 0x2000;
  }

  else
  {
    v56 = v55;
  }

  TCFNumber::TCFNumber<unsigned int>(valuePtr, v56);
  CFDictionarySetValue(atomic_load_explicit(&v66, memory_order_acquire), @"NSCTFontSymbolicTrait", atomic_load_explicit(valuePtr, memory_order_acquire));

  *a3 = atomic_exchange(&v66, 0);
}

uint64_t TBaseFont::SkipMetadata(atomic_ullong *this)
{
  if ((*(*this + 16))(this) == 1414088260 && atomic_load_explicit(this + 13, memory_order_acquire))
  {
    return IsNamedInstance(atomic_load_explicit(this + 13, memory_order_acquire)) ^ 1;
  }

  else
  {
    return 0;
  }
}

uint64_t _CTGetVisibleFormatterCharacterSet()
{
  if (qword_1ED5680D0 != -1)
  {
    dispatch_once_f(&qword_1ED5680D0, 0, _CTGetVisibleFormatterCharacterSet::$_0::__invoke);
  }

  return qword_1ED5680C8;
}

CFStringRef CTFontCopyFamilyName(CTFontRef font)
{
  if (!font)
  {
    return 0;
  }

  (*(**(*(font + 5) + 408) + 72))(&v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

void _CTGetVisibleFormatterCharacterSet::$_0::__invoke(_CTGetVisibleFormatterCharacterSet::$_0 *this, void *a2)
{
  v3[4] = *MEMORY[0x1E69E9840];
  Mutable = CFCharacterSetCreateMutable(*MEMORY[0x1E695E480]);
  v3[0] = &unk_1EF259858;
  v3[1] = Mutable;
  v3[3] = v3;
  ForEachVisibleFormatter(v3);
}

void ForEachVisibleFormatter(uint64_t a1)
{
  v4 = *MEMORY[0x1E69E9840];
  std::function<void ()>::operator()(a1, 6155);
  std::function<void ()>::operator()(a1, 6156);
  std::function<void ()>::operator()(a1, 6157);
  std::function<void ()>::operator()(a1, 6158);
  std::function<void ()>::operator()(a1, 6159);
  std::function<void ()>::operator()(a1, 8204);
  std::function<void ()>::operator()(a1, 8205);
  std::function<void ()>::operator()(a1, 78896);
  std::function<void ()>::operator()(a1, 78897);
  std::function<void ()>::operator()(a1, 78898);
  std::function<void ()>::operator()(a1, 78899);
  std::function<void ()>::operator()(a1, 78900);
  std::function<void ()>::operator()(a1, 78901);
  std::function<void ()>::operator()(a1, 78902);
  std::function<void ()>::operator()(a1, 78903);
  std::function<void ()>::operator()(a1, 78904);
  std::function<void ()>::operator()(a1, 78905);
  std::function<void ()>::operator()(a1, 78906);
  std::function<void ()>::operator()(a1, 78907);
  std::function<void ()>::operator()(a1, 78908);
  std::function<void ()>::operator()(a1, 78909);
  std::function<void ()>::operator()(a1, 78910);
  std::function<void ()>::operator()(a1, 78911);
  pErrorCode = U_ZERO_ERROR;
  u_getBinaryPropertySet(UCHAR_PREPENDED_CONCATENATION_MARK, &pErrorCode);
  std::__function::__value_func<void ()>::__value_func[abi:fn200100](v3, a1);
  operator new();
}

void std::__function::__func<_CTGetVisibleFormatterCharacterSet::$_0::operator() const(void *)::{lambda(unsigned int)#1},std::allocator<_CTGetVisibleFormatterCharacterSet::$_0::operator() const(void *)::{lambda(unsigned int)#1}>,void ()(unsigned int)>::operator()(uint64_t a1, unsigned int *a2)
{
  v2.location = *a2;
  v2.length = 1;
  CFCharacterSetAddCharactersInRange(*(a1 + 8), v2);
}

uint64_t std::__function::__value_func<void ()(unsigned int)>::__value_func[abi:fn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<_CTGetVisibleFormatterCharacterSet::$_0::operator() const(void *)::{lambda(unsigned int)#1},std::allocator<_CTGetVisibleFormatterCharacterSet::$_0::operator() const(void *)::{lambda(unsigned int)#1}>,void ()(unsigned int)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF259858;
  a2[1] = v2;
  return result;
}

uint64_t IterateItemRanges(uint64_t a1, int *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(unsigned int,unsigned int)>::__value_func[abi:fn200100](v8, a3);
  v7[0] = &unk_1EF259030;
  v7[3] = v7;
  v5 = IterateItems(a1, a2);
  std::__function::__value_func<void ()(__CFString const*)>::~__value_func[abi:fn200100](v7);
  std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:fn200100](v8);
  return v5;
}

void TDescriptorSource::CopyMatchingDescriptorsForFamily(TDescriptorSource *this@<X0>, const __CFString *a2@<X1>, void *a3@<X8>)
{
  if (a2)
  {
    v4 = this;
    v6 = a2;
    keys = @"NSFontFamilyAttribute";
    v5 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &v6, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    TDescriptorSource::CopyDescriptorsForRequest(v4, v5);
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t std::__function::__value_func<void ()(unsigned int,unsigned int)>::__value_func[abi:fn200100](uint64_t a1, uint64_t a2)
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

uint64_t IterateItems(uint64_t a1, int *a2)
{
  if (a1 && *a2 <= 0)
  {
    operator new();
  }

  return 0;
}

void TDescriptorSource::CopyDescriptorsForRequest(void *cf@<X1>, atomic_ullong **a2@<X0>, const __CFSet *a3@<X2>, CFComparisonResult (*a4)(const void *, const void *, void *)@<X3>, unint64_t Mutable@<X4>, atomic_ullong *a6@<X5>, atomic_ullong *a7@<X8>)
{
  v122 = *MEMORY[0x1E69E9840];
  v15 = CFGetTypeID(cf);
  TypeID = CFDictionaryGetTypeID();
  *a7 = 0;
  if (v15 == TypeID)
  {
    v112 = 0xAAAAAAAAAAAAAAAALL;
    TDescriptorSource::CopyMandatoryMatchableRequest(cf, a3, &v112);
    v107 = a6;
    if ((Mutable & 0x20) != 0)
    {
      v17 = 0;
    }

    else if (dispatch_get_specific(TDescriptorSource::DoNotCacheKey))
    {
      v17 = 0;
      Mutable |= 0x20uLL;
    }

    else
    {
      if (TDescriptorSource::CopyCachedDescriptors(a2, atomic_load_explicit(&v112, memory_order_acquire), Mutable, a7, a4))
      {
        goto LABEL_148;
      }

      v17 = 1;
    }

    v18 = atomic_load_explicit(&v112, memory_order_acquire);
    v19 = v18;
    if (v18)
    {
      Count = CFDictionaryGetCount(v18);
    }

    else
    {
      Count = 0;
    }

    valuePtr = 0;
    Value = CFDictionaryGetValue(cf, @"NSCTFontDownloadableAttribute");
    if (Value)
    {
      v22 = Value;
      v7 = CFGetTypeID(Value);
      if (v7 == CFNumberGetTypeID() || v7 == CFBooleanGetTypeID())
      {
        Value = CFNumberGetValue(v22, kCFNumberIntType, &valuePtr);
      }

      else
      {
        Value = CFStringGetTypeID();
        if (v7 == Value)
        {
          Value = CFStringGetIntValue(v22);
          valuePtr = Value;
        }
      }
    }

    v23 = valuePtr;
    if (Count <= 0 && !valuePtr)
    {
      *&v116 = -3.72066208e-103;
      TDescriptorSource::CreateDefaultDescriptor(Value);
      if (atomic_load_explicit(&v116, memory_order_acquire))
      {
        values = atomic_load_explicit(&v116, memory_order_acquire);
        v115 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
      }

      goto LABEL_55;
    }

    if ((Mutable & 0x10) != 0)
    {
LABEL_52:
      if ((Mutable & 0x200) == 0 && v23)
      {
        TDescriptorSource::CopyDownloadableDescriptorsForRequest(atomic_load_explicit(&v112, memory_order_acquire), Mutable, &values);

        v17 = 0;
LABEL_55:
        v39 = Mutable;
LABEL_56:
        v40 = atomic_load_explicit(a7, memory_order_acquire);
        v41 = v40;
        if (v40)
        {
          v42 = CFArrayGetCount(v40) > 1;
        }

        else
        {
          v42 = 0;
        }

        v43 = valuePtr;

        if (v42 && !v43)
        {
          v45 = ShouldFilterInvisibles(cf, v39);
          if ((v39 & 8) != 0 || (v39 & 4) != 0 || v45)
          {
            values = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
            if ((v39 & 4) != 0 || v45)
            {
              v105 = v17;
              v108 = a4;
              v46 = a7;
              explicit = atomic_load_explicit(a7, memory_order_acquire);
              if (explicit)
              {
                v48 = CFArrayGetCount(explicit);
                if (v48)
                {
                  v49 = v48;
                  for (i = 0; i != v49; ++i)
                  {
                    ValueAtIndex = CFArrayGetValueAtIndex(explicit, i);
                    v7 = ValueAtIndex;
                    v52 = ValueAtIndex[5];
                    if ((*(v52 + 4) & 0x80000000) == 0)
                    {
                      TDescriptor::InitBaseFont(ValueAtIndex[5], 0, 0.0);
                    }

                    v53 = atomic_load_explicit(v52 + 4, memory_order_acquire);
                    if (v53 && (!v45 || ((*(*v53 + 704))(v53) & 1) == 0) && ((v39 & 4) == 0 || (*(*v53 + 712))(v53)))
                    {
                      CFArrayAppendValue(atomic_load_explicit(&values, memory_order_acquire), v7);
                    }
                  }
                }
              }

              a7 = v46;

              a4 = v108;
              v17 = v105;
            }

            if ((v39 & 8) != 0)
            {
              CreateDescriptorArrayFilteringDuplicates(&v116, atomic_load_explicit(a7, memory_order_acquire), a4);
            }
          }
        }

        if (cf)
        {
          if ((v39 & 0x100) != 0)
          {
            v54 = CFDictionaryGetCount(cf);
            if (v54 >= 1)
            {
              Count = v54;
              v106 = v17;
              v107 = a7;
              v109 = a4;
              *&v55 = 0xAAAAAAAAAAAAAAAALL;
              *(&v55 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v120[14] = v55;
              v120[13] = v55;
              v120[12] = v55;
              v120[11] = v55;
              v120[10] = v55;
              v120[9] = v55;
              v120[8] = v55;
              v120[7] = v55;
              v120[6] = v55;
              v120[5] = v55;
              v120[4] = v55;
              v120[3] = v55;
              v120[2] = v55;
              v120[1] = v55;
              v120[0] = v55;
              v118 = 0;
              v119 = 0;
              values = 0;
              v121 = v120;
              std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&values, v54);
              v56 = v118;
              bzero(v118, 8 * Count);
              v118 = &v56[Count];
              CFDictionaryGetKeysAndValues(cf, values, 0);
              a2 = *MEMORY[0x1E695E480];
              Mutable = CFSetCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9F8]);
              v57 = 0;
              a7 = @"NSFontSizeAttribute";
              v17 = -1;
              while (1)
              {
                v58 = values;
                v59 = (v118 - values) >> 3;
                if (v59 <= v57)
                {
LABEL_167:
                  __break(1u);
                  goto LABEL_168;
                }

                v60 = *(values + v57);
                if (v60 != @"NSFontSizeAttribute")
                {
                  if (!@"NSFontSizeAttribute" || !v60 || !CFEqual(v60, @"NSFontSizeAttribute"))
                  {
                    goto LABEL_94;
                  }

                  v58 = values;
                  v59 = (v118 - values) >> 3;
                }

                if (v59 <= v57)
                {
                  goto LABEL_167;
                }

                v61 = CFDictionaryGetValue(cf, v58[v57]);
                if (!v61 || (v7 = v61, v56 = CFGetTypeID(v61), v56 == CFNumberGetTypeID()) && (*&v116 = NAN, CFNumberGetValue(v7, kCFNumberDoubleType, &v116), *&v116 != 0.0))
                {
LABEL_94:
                  if (v57 >= (v118 - values) >> 3)
                  {
                    goto LABEL_167;
                  }

                  CFSetAddValue(Mutable, *(values + v57));
                }

                if (Count == ++v57)
                {
                  if (qword_1ED567AD0 != -1)
                  {
                    dispatch_once_f(&qword_1ED567AD0, 0, TDescriptorSource::GetMatchableAttributes(void)::$_0::__invoke);
                  }

                  a7 = v107;
                  a4 = v109;
                  v17 = v106;
                  if (qword_1ED567AC8)
                  {
                    [Mutable minusSet:?];
                  }

                  if (CFSetGetCount(Mutable))
                  {
                    *&v116 = -3.72066208e-103;
                    CreateCopyOfDictionaryFilteredByKeys(cf, Mutable, &v116);
                    v62 = atomic_load_explicit(&v116, memory_order_acquire);
                    if (v62)
                    {
                      v63 = v62;
                      v64 = CFDictionaryGetCount(v62);

                      if (v64 >= 1)
                      {
                        v115 = CFArrayCreateMutable(a2, 0, MEMORY[0x1E695E9C0]);
                        v65 = atomic_load_explicit(v107, memory_order_acquire);
                        if (v65)
                        {
                          v66 = CFArrayGetCount(v65);
                          if (v66)
                          {
                            v67 = v66;
                            for (j = 0; j != v67; ++j)
                            {
                              v113 = CFArrayGetValueAtIndex(v65, j);
                              v114 = 0xAAAAAAAAAAAAAAAALL;
                              v110 = atomic_load_explicit(&v116, memory_order_acquire);
                              TCFBase_NEW<CTFontDescriptor,CTFontDescriptor*,__CFDictionary const*&>(&v113, &v110, &v114);
                              v69 = atomic_load_explicit(&v114, memory_order_acquire);
                              CFArrayAppendValue(atomic_load_explicit(&v115, memory_order_acquire), v69);
                            }
                          }
                        }

                        a7 = v107;

                        a4 = v109;
                        v17 = v106;
                      }
                    }

                    else
                    {
                    }
                  }

                  *&v116 = COERCE_DOUBLE(&values);
                  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v116);
                  break;
                }
              }
            }
          }
        }

        if (v17)
        {
          v83 = atomic_load_explicit(&v112, memory_order_acquire);
          v84 = atomic_load_explicit(a7, memory_order_acquire);
          if (v84 && CFArrayGetCount(v84))
          {
            values = 0;
            v118 = 0;
            v85 = CFArrayGetCount(v84);
            if (v85)
            {
              v86 = v85;
              for (k = 0; k != v86; ++k)
              {
                v88 = CFArrayGetValueAtIndex(v84, k);
                v89 = *(v88 + 5);
                if ((*(v89 + 16) & 0x80000000) == 0)
                {
                  TDescriptor::InitBaseFont(*(v88 + 5), 0, 0.0);
                }

                v90 = atomic_load_explicit((v89 + 32), memory_order_acquire);
                if (v90)
                {
                  *&v116 = -3.72066208e-103;
                  (*(*v90 + 200))(&v116);
                  if (atomic_load_explicit(&v116, memory_order_acquire))
                  {
                    v91 = atomic_load_explicit(&v116, memory_order_acquire);
                    TCFLazyMutableArray::LazyCreate(&values);
                    CFArrayAppendValue(atomic_load_explicit(&values, memory_order_acquire), v91);
                  }
                }
              }
            }

            TPerThreadLRUCache<TRequestCacheNode,(ThreadSpecificKey)3,16ul>::TPerThreadLRUCache(&v116);
            TRequestCache::AddResultForRequest(&v116, atomic_load_explicit(&values, memory_order_acquire), v83, v39, a4);
          }

          else
          {
            TDescriptorSource::AddMissedRequest(v83, v39, a4, v44);
          }
        }

        goto LABEL_148;
      }

      v109 = a4;
      v7 = atomic_load_explicit(&v112, memory_order_acquire);
      v114 = 0xAAAAAAAAAAAAAAAALL;
      v70 = CFDictionaryGetValue(v7, @"NSFontFamilyAttribute");
      if (v70)
      {
        v72 = v70;
        v73 = CFGetTypeID(v70);
        if (v73 == CFStringGetTypeID())
        {
          values = 0xAAAAAAAAAAAAAAAALL;
          TDescriptorSource::CopyDescriptorsForRequestWithFamilyName(&values, a2, v72, Mutable);
          if (atomic_load_explicit(&values, memory_order_acquire))
          {
            *&v116 = -3.72066208e-103;
            TCFMutableDictionary::TCFMutableDictionary(&v116, v7);
            CFDictionaryRemoveValue(atomic_load_explicit(&v116, memory_order_acquire), @"NSFontFamilyAttribute");
            if (ShouldFilterInvisibles(v7, Mutable))
            {
              v74 = Mutable;
            }

            else
            {
              v74 = Mutable | 2;
            }

            v75 = atomic_load_explicit(&values, memory_order_acquire);
            v76 = atomic_load_explicit(&v116, memory_order_acquire);
            a4 = v109;
            if (v109 == CompareDescriptorsByTraitsAndPrecedence)
            {
              v77 = CompareDescriptorsByTraitsAndPrecedenceForSingleFamily;
            }

            else
            {
              v77 = v109;
            }

            TDescriptorSource::CopyDescriptorsForRequestFromArray(&v115, v75, v76, v77, v74, 0);
            v114 = atomic_exchange(&v115, 0);

            atomic_load_explicit(&v114, memory_order_acquire);
            v39 = Mutable;
          }

          else
          {

            v114 = 0;
            atomic_load_explicit(&v114, memory_order_acquire);
            v39 = Mutable;
            a4 = v109;
          }

          goto LABEL_159;
        }
      }

      v114 = 0;
      v39 = Mutable;
      a4 = v109;
      if (atomic_load_explicit(&v114, memory_order_acquire))
      {
LABEL_159:
        values = atomic_exchange(&v114, 0);
LABEL_160:

        v95 = atomic_load_explicit(a7, memory_order_acquire);
        if ((Mutable & 0x200) == 0 && !v95 && Count == 1)
        {
          PostScriptNameAndAttribute = TDescriptorSource::GetPostScriptNameAndAttribute(atomic_load_explicit(&v112, memory_order_acquire), v94);
          if (PostScriptNameAndAttribute)
          {
            *&v116 = -3.72066208e-103;
            TDescriptorSource::CopyFontDescriptorPerPostScriptName(a2, PostScriptNameAndAttribute, v39, 0, 0, &v116);
            if (atomic_load_explicit(&v116, memory_order_acquire))
            {
              values = atomic_load_explicit(&v116, memory_order_acquire);
              v115 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
            }
          }
        }

        goto LABEL_56;
      }

      *&v116 = 0.0;
      v79 = TDescriptorSource::GetPostScriptNameAndAttribute(v7, v71);
      if (v79)
      {
        v80 = v78;
        v115 = 0xAAAAAAAAAAAAAAAALL;
        TDescriptorSource::CopyFontDescriptorPerPostScriptName(a2, v79, Mutable, 1, 0, &v115);
        if (atomic_load_explicit(&v115, memory_order_acquire))
        {
          values = atomic_load_explicit(&v115, memory_order_acquire);
          v113 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
        }

        v78 = v80;
      }

      v56 = &v116;
      v39 = Mutable;
      if (atomic_load_explicit(&v116, memory_order_acquire) || (v39 = Mutable, (Mutable & 0x200) != 0) || (v39 = Mutable, @"NSFontNameAttribute" != v78))
      {
LABEL_125:
        a4 = v109;
        if (atomic_load_explicit(v56, memory_order_acquire))
        {
          if (v109 || (v39 & 0x1000) == 0)
          {
            TDescriptorSource::CopyDescriptorsForRequestFromArray(&values, atomic_load_explicit(&v116, memory_order_acquire), v7, v109, v39, 0);
          }

          else
          {
            v102 = a2;
            v81 = a7;
            TDescriptorSource::CopyDescriptorsForRequestFromArray(&values, atomic_load_explicit(&v116, memory_order_acquire), v7, 0, v39, 1);
            v82 = atomic_exchange(&values, 0);

            if (v82)
            {
              values = v82;
              v115 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
            }

            a7 = v81;
            a2 = v102;
          }
        }

        goto LABEL_159;
      }

      v92 = IsLooseFontNameMatchingDisabled();
      if (v79 && v92 && CFDictionaryGetCount(v7) == 1)
      {
        TDescriptorSource::ReportMissedFontName(v79, Mutable, v109, v93);
        v39 = Mutable;
        goto LABEL_125;
      }

LABEL_168:
      v103 = a2;
      v39 = Mutable | 0x40;
      if ((Mutable & 0x20) == 0 && TDescriptorSource::CopyCachedDescriptors(a2, v7, (Mutable | 0x40), &v114, v109))
      {
        values = atomic_exchange(&v114, 0);
LABEL_171:

        a4 = v109;
        a2 = v103;
        goto LABEL_160;
      }

      v97 = CFDictionaryGetValue(v7, @"NSFontVisibleNameAttribute");
      if (v97)
      {
        v98 = v97;
        v99 = CFGetTypeID(v97);
        if (v99 == CFStringGetTypeID())
        {
          v100 = CGFontCreateWithFontName(v98);
          if (v100)
          {
            v115 = 0xAAAAAAAAAAAAAAAALL;
            TDescriptorSource::CopyDescriptor(v103, v100, 0, &v115);
            if (atomic_load_explicit(&v115, memory_order_acquire))
            {
              values = atomic_load_explicit(&v115, memory_order_acquire);
              v113 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);

              if (CFDictionaryGetCount(v7) == 1)
              {
                values = atomic_exchange(&v116, 0);

                goto LABEL_171;
              }
            }
          }
        }
      }

      v101 = atomic_load_explicit(&v116, memory_order_acquire);
      if (v107 && !v101)
      {
        TCFRef<__CTFont const*>::Retain(&v116, atomic_load_explicit(v107, memory_order_acquire));
      }

      if (!atomic_load_explicit(&v116, memory_order_acquire))
      {
        TDescriptorSource::CopyAllDescriptorsInternal(v103, 0, Mutable | 0x40, &values);

        if (v107)
        {
          TCFRef<__CTFont const*>::Retain(v107, atomic_load_explicit(&v116, memory_order_acquire));
        }
      }

      a2 = v103;
      goto LABEL_125;
    }

    *&v116 = -3.72066208e-103;
    TDescriptorSource::CopySplicedDescriptorsForRequest(&v116, a2, cf, Mutable, 0, 0, 0, -1, *MEMORY[0x1E695E4C0]);
    v24 = atomic_load_explicit(&v116, memory_order_acquire);
    if (v24)
    {
      v7 = v24;
      v25 = CFArrayGetCount(v24);

      if (v25 >= 1 && (CFDictionaryContainsKey(cf, @"NSFontFamilyAttribute") || TDescriptorSource::GetPostScriptNameAndAttribute(cf, v26)))
      {
        goto LABEL_30;
      }
    }

    else
    {

      v25 = 0;
    }

    if (!CFDictionaryContainsKey(cf, @"NSCTFontUIUsageAttribute"))
    {
      v35 = CFDictionaryGetValue(cf, @"NSCTFontTraitsAttribute");
      if (!v35 || (v7 = v35, v36 = a4, v37 = CFGetTypeID(v35), v38 = v37 == CFDictionaryGetTypeID(), a4 = v36, !v38) || !CFDictionaryGetValue(v7, @"NSCTFontUIFontDesignTrait"))
      {
        v115 = 0;
        goto LABEL_50;
      }
    }

LABEL_30:
    if (a4 && v25 >= 2)
    {
      v104 = v17;
      v27 = a7;
      v28 = a4;
      values = CFArrayCreateMutable(*MEMORY[0x1E695E480], v25, MEMORY[0x1E695E9C0]);
      v29 = atomic_load_explicit(&v116, memory_order_acquire);
      if (v29)
      {
        v30 = CFArrayGetCount(v29);
        if (v30)
        {
          v7 = v30;
          v31 = 0;
          v32 = *MEMORY[0x1E695E738];
          do
          {
            v33 = CFArrayGetValueAtIndex(v29, v31);
            if (v33 != v32)
            {
              CFArrayAppendValue(atomic_load_explicit(&values, memory_order_acquire), v33);
            }

            ++v31;
          }

          while (v7 != v31);
        }
      }

      a4 = v28;
      if (CFArrayGetCount(atomic_load_explicit(&values, memory_order_acquire)) > 1)
      {
        if (v28 == CompareDescriptorsByTraitsAndPrecedence)
        {
          v34 = CompareDescriptorsByTraitsAndPrecedenceForSingleFamily;
        }

        else
        {
          v34 = v28;
        }

        v7 = atomic_load_explicit(&values, memory_order_acquire);
        v123.length = CFArrayGetCount(atomic_load_explicit(&values, memory_order_acquire));
        v123.location = 0;
        CFArraySortValues(v7, v123, v34, 0);
      }

      v115 = atomic_exchange(&values, 0);

      a7 = v27;
      v17 = v104;
    }

    else
    {
      v115 = atomic_load_explicit(&v116, memory_order_acquire);
    }

LABEL_50:

    if (!atomic_load_explicit(a7, memory_order_acquire))
    {
      v23 = valuePtr;
      goto LABEL_52;
    }

LABEL_148:
  }
}

uint64_t std::function<void ()(unsigned int,unsigned int)>::operator()(uint64_t a1, int a2, int a3)
{
  v9 = a2;
  v8 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v9, &v8);
  }

  v5 = std::__throw_bad_function_call[abi:fn200100]();
  return TDescriptorSource::CopyMandatoryMatchableRequest(v5, v6, v7);
}

void TDescriptorSource::CopyMandatoryMatchableRequest(const __CFDictionary *this@<X0>, CFSetRef theSet@<X1>, void *a3@<X8>)
{
  if (qword_1ED567AD0 != -1)
  {
    dispatch_once_f(&qword_1ED567AD0, 0, TDescriptorSource::GetMatchableAttributes(void)::$_0::__invoke);
  }

  v7 = qword_1ED567AC8;
  if (theSet && CFSetGetCount(theSet))
  {
    v8 = 0xAAAAAAAAAAAAAAAALL;
    TCFMutableSet::TCFMutableSet(&v8, v7);
    [atomic_load_explicit(&v8 memory:"intersectSet:" order:theSetacquire)];
    CreateCopyOfDictionaryFilteredByKeys(this, atomic_load_explicit(&v8, memory_order_acquire), a3);
  }

  else
  {

    CreateCopyOfDictionaryFilteredByKeys(this, v7, a3);
  }
}

CFSetRef TDescriptorSource::GetMatchableAttributes(void)::$_0::__invoke()
{
  values[18] = *MEMORY[0x1E69E9840];
  values[0] = @"NSCTFontPostScriptNameAttribute";
  values[1] = @"NSFontNameAttribute";
  values[2] = @"NSFontVisibleNameAttribute";
  values[3] = @"NSFontFamilyAttribute";
  values[4] = @"NSFontFaceAttribute";
  values[5] = @"NSCTFontUIUsageAttribute";
  values[6] = @"NSCTFontFileURLAttribute";
  values[7] = @"NSCTFontTraitsAttribute";
  values[8] = @"NSCTFontCharacterSetAttribute";
  values[9] = @"NSCTFontLanguagesAttribute";
  values[10] = @"NSCTFontDesignLanguagesAttribute";
  values[11] = @"NSCTFontFormatAttribute";
  values[12] = @"NSCTFontRegistrationScopeAttribute";
  values[13] = @"NSCTFontPriorityAttribute";
  values[14] = @"NSCTFontDomainAttribute";
  values[15] = @"NSCTFontDownloadedAttribute";
  values[16] = @"NSCTFontUserInstalledAttribute";
  values[17] = @"CTFontDownloadableStubAttribute";
  result = CFSetCreate(*MEMORY[0x1E695E480], values, 18, MEMORY[0x1E695E9F8]);
  qword_1ED567AC8 = result;
  return result;
}

void *std::__function::__func<ForEachVisibleFormatter(std::function<void ()(unsigned int)>)::$_0,std::allocator<ForEachVisibleFormatter(std::function<void ()(unsigned int)>)::$_0>,void ()(unsigned int,unsigned int)>::operator()(void *result, int *a2, int *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (*a2 != *a3)
  {
    v5 = result;
    do
    {
      result = std::function<void ()>::operator()((v5 + 1), v3++);
    }

    while (v4 != v3);
  }

  return result;
}

uint64_t *std::__unique[abi:fn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<long *>,std::__wrap_iter<long *>,std::__equal_to &>(uint64_t *a1, uint64_t *a2)
{
  result = a2;
  if (a1 != a2)
  {
    v4 = a1 + 1;
    while (v4 != a2)
    {
      v5 = *(v4 - 1);
      v6 = *v4++;
      if (v5 == v6)
      {
        v7 = v4 - 2;
        goto LABEL_7;
      }
    }

    v7 = a2;
LABEL_7:
    result = a2;
    if (v7 != a2)
    {
      v8 = v7 + 2;
      if (v7 + 2 != a2)
      {
        v9 = *v7;
        do
        {
          v10 = v9;
          v9 = *v8;
          if (v10 != *v8)
          {
            v7[1] = v9;
            ++v7;
          }

          ++v8;
        }

        while (v8 != a2);
      }

      return v7 + 1;
    }
  }

  return result;
}

void TLine::DeleteGlyphs(TLine *this, uint64_t a2, uint64_t a3, const uint64_t *a4)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = *(this + 3) - *(this + 2);
  if (v4)
  {
    v5 = a2;
    v6 = v4 >> 3;
    if (v4 >> 3 > a2)
    {
      v7 = a3;
      v8 = this;
      v9 = 0;
      v10 = 0;
      while (1)
      {
        v23 = v6;
        while (1)
        {
          v11 = *(v8 + 2);
          if (v5 >= ((*(v8 + 3) - v11) >> 3))
          {
            __break(1u);
          }

          v12 = *(*(v11 + 8 * v5) + 48);
          v13 = *(v12 + 26);
          if (v7 > v10)
          {
            break;
          }

LABEL_18:
          ++v5;
          v9 += v13;
          if (v5 >= v6)
          {
            return;
          }
        }

        v14 = 0;
        v15 = &a4[v10];
        while (v15[v14] - v9 < v13)
        {
          if (v7 - v10 == ++v14)
          {
            v14 = v7 - v10;
            goto LABEL_12;
          }
        }

        if (!v14)
        {
          v8 = this;
          goto LABEL_18;
        }

LABEL_12:
        *&v16 = 0xAAAAAAAAAAAAAAAALL;
        *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v31[13] = v16;
        v31[14] = v16;
        v31[11] = v16;
        v31[12] = v16;
        v31[9] = v16;
        v31[10] = v16;
        v31[7] = v16;
        v31[8] = v16;
        v31[5] = v16;
        v31[6] = v16;
        v31[3] = v16;
        v31[4] = v16;
        v31[1] = v16;
        v31[2] = v16;
        v31[0] = v16;
        v28 = 0;
        v29 = 0;
        v30 = 0;
        v32 = v31;
        std::vector<long,TInlineBufferAllocator<long,30ul>>::__vallocate[abi:fn200100](&v28, v14);
        v17 = v29;
        bzero(v29, 8 * v14);
        v18 = 0;
        v29 = &v17[8 * v14];
        v19 = v28;
        do
        {
          v19[v18] = v15[v18] - v9;
          ++v18;
        }

        while (v14 != v18);
        v8 = this;
        v20 = TRun::DeleteGlyphs(v12, v14, v19, *(this + 9));
        *(this + 18) += *(v12 + 26) - v13;
        v7 = a3;
        if (v20 <= 0 || !TLine::AttachToPreviousRun(this, v5, v20))
        {
          break;
        }

        v10 += v18;
        if (v10 >= a3)
        {
          goto LABEL_24;
        }

        v21 = *(this + 3) - *(this + 2);
        v9 += v13;
        v27 = &v28;
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v27);
        v6 = v21 >> 3;
        v22 = v5 < v21 >> 3;
        v8 = this;
        if (!v22)
        {
          return;
        }
      }

      v10 += v18;
      if (v10 < a3)
      {
        v27 = &v28;
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v27);
        v6 = v23;
        goto LABEL_18;
      }

LABEL_24:
      v27 = &v28;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v27);
    }
  }
}

uint64_t std::__function::__value_func<void ()(__CFString const*)>::~__value_func[abi:fn200100](uint64_t a1)
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

void CreateCopyOfDictionaryFilteredByKeys(const __CFDictionary *a1@<X0>, CFSetRef theSet@<X1>, void *a3@<X8>)
{
  if (a1)
  {
    if (theSet && CFSetGetCount(theSet) >= 1)
    {
      v6 = theSet;
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      CFDictionaryApplyFunction(a1, KeyFilterApplier, &v6);
      *a3 = atomic_exchange(&Mutable, 0);
    }

    else
    {
      *a3 = a1;
    }
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t std::vector<long,TInlineBufferAllocator<long,30ul>>::__vallocate[abi:fn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  result = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<long,30ul>>((a1 + 3), a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 8 * v4;
  return result;
}

void KeyFilterApplier(const void *value, const void *a2, atomic_ullong *a3)
{
  if (a2 && CFSetContainsValue(atomic_load_explicit(a3, memory_order_acquire), value))
  {
    explicit = atomic_load_explicit(a3 + 1, memory_order_acquire);

    CFDictionaryAddValue(explicit, value, a2);
  }
}

uint64_t TDescriptorSource::CopyCachedDescriptors(atomic_ullong **a1, TDescriptorSource *a2, void *a3, atomic_ullong *a4, void *a5)
{
  if (TDescriptorSource::HasMissedRequest(a2, a3, a5, v10))
  {
    return 1;
  }

  v26 = 0;
  TPerThreadLRUCache<TRequestCacheNode,(ThreadSpecificKey)3,16ul>::TPerThreadLRUCache(&Mutable);
  v11 = TRequestCache::CopyResultForRequest(&Mutable, a2, a3, &v26, a5);
  if (v11 && atomic_load_explicit(&v26, memory_order_acquire))
  {
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v12 = CFGetTypeID(atomic_load_explicit(&v26, memory_order_acquire));
    if (v12 == CFArrayGetTypeID())
    {
      v13 = atomic_load_explicit(&v26, memory_order_acquire);
      v14 = v13;
      if (v13)
      {
        Count = CFArrayGetCount(v13);
        if (Count)
        {
          v16 = Count;
          for (i = 0; i != v16; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(v14, i);
            v24 = 0xAAAAAAAAAAAAAAAALL;
            TDescriptorSource::CopyDescriptor(a1, ValueAtIndex, 0, 0, &v24);
            v23 = 0xAAAAAAAAAAAAAAAALL;
            TDescriptorSource::CopyFontDescriptorWithOptions(&v24, a3, 0, &v23);
            if (atomic_load_explicit(&v23, memory_order_acquire))
            {
              v19 = atomic_load_explicit(&v23, memory_order_acquire);
              CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), v19);
            }
          }
        }
      }

      v20 = v14;
    }

    else
    {
      v24 = 0xAAAAAAAAAAAAAAAALL;
      TDescriptorSource::CopyDescriptor(a1, atomic_load_explicit(&v26, memory_order_acquire), 0, 0, &v24);
      v23 = 0xAAAAAAAAAAAAAAAALL;
      TDescriptorSource::CopyFontDescriptorWithOptions(&v24, a3, 0, &v23);
      if (atomic_load_explicit(&v23, memory_order_acquire))
      {
        v21 = atomic_load_explicit(&v23, memory_order_acquire);
        CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), v21);
      }

      v20 = v24;
    }

    if (CFArrayGetCount(atomic_load_explicit(&Mutable, memory_order_acquire)))
    {
    }
  }

  return v11;
}

uint64_t std::__function::__value_func<void ()(unsigned int,unsigned int)>::~__value_func[abi:fn200100](uint64_t a1)
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

void std::__function::__func<ForEachVisibleFormatter(std::function<void ()(unsigned int)>)::$_0,std::allocator<ForEachVisibleFormatter(std::function<void ()(unsigned int)>)::$_0>,void ()(unsigned int,unsigned int)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()>::~__value_func[abi:fn200100](a1 + 8);

  operator delete(a1);
}

uint64_t TRun::SetAttachmentsLeftToRight<true>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(&v50 + 1) = *MEMORY[0x1E69E9840];
  v8 = *(*(a1 + 216) + 48) + 8 * *(a1 + 200);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v49[16] = v9;
  *v49 = v9;
  v48 = v9;
  *&v47[16] = v9;
  *v47 = v9;
  v46 = v9;
  *&v45[16] = v9;
  *v45 = v9;
  v44 = v9;
  v42 = v9;
  v43 = v9;
  v40 = v9;
  v41 = v9;
  v38 = v9;
  v39 = v9;
  v36 = 0;
  v37 = 0;
  v35 = 0;
  *&v50 = &v38;
  if (a2 < 2)
  {
    v15 = a2 - 1;
  }

  else
  {
    for (i = a2; i > 1; --i)
    {
      v11 = *(a3 - 8 + 8 * i);
      v12 = [*(a1 + 216) attachmentCountAtIndex:*(a1 + 200) + v11];
      v13 = v11 < 1;
      v14 = v11 - 1;
      if (!v13)
      {
        [*(a1 + 216) setAttachmentCount:v12 + objc_msgSend(*(a1 + 216) atIndex:{"attachmentCountAtIndex:", *(a1 + 200) + v14) + 1, *(a1 + 200) + v14}];
      }
    }

    v15 = 0;
  }

  v16 = *(a3 + 8 * v15);
  v17 = *(v8 + 8 * v16);
  v18 = *(a1 + 8);
  if (v17 <= a4)
  {
    v24 = *(a1 + 16) + v18;
    v34 = v16;
    v25 = v16;
    while (1)
    {
      if (*(a1 + 256) > 1)
      {
        NextGlyphIndex = TRun::FindNextGlyphIndex(a1, v17, &v34);
      }

      else
      {
        if (*(a1 + 224))
        {
          v26 = v25 - 1;
          v34 = (v25 - 1);
          if (v25 <= 0)
          {
LABEL_15:
            NextGlyphIndex = *(a1 + 16) + *(a1 + 8);
            goto LABEL_19;
          }
        }

        else
        {
          v26 = v25 + 1;
          v34 = (v25 + 1);
          if (v25 + 1 >= *(a1 + 208))
          {
            goto LABEL_15;
          }
        }

        NextGlyphIndex = *(*(*(a1 + 216) + 48) + 8 * *(a1 + 200) + 8 * v26);
      }

LABEL_19:
      if (NextGlyphIndex >= v24)
      {
        v32 = [*(a1 + 216) attachmentCountAtIndex:v16 + *(a1 + 200)] + 1;
        goto LABEL_27;
      }

      v25 = v34;
      v28 = *(a1 + 216);
      v29 = *(a1 + 200);
      if (a2 < 2 || *(v28[2] + 2 * v29 + 2 * v34) != -1 && (*(v28[5] + 4 * v29 + 4 * v34) & 0x20) == 0)
      {
        [v28 setStringIndex:v17 atIndex:{v34 + v29, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, *v45, *&v45[8], *&v45[24], v46, *v47, *&v47[8], *&v47[24], v48, *v49, *&v49[8], *&v49[24], v50}];
        v30 = [*(a1 + 216) attachmentCountAtIndex:v16 + *(a1 + 200)];
        v31 = v30 + [*(a1 + 216) attachmentCountAtIndex:v25 + *(a1 + 200)];
        v21 = *(a1 + 216);
        v22 = v31 + 1;
        v23 = v25 + *(a1 + 200);
        goto LABEL_24;
      }
    }
  }

  v19 = [*(a1 + 216) attachmentCountAtIndex:v16 + *(a1 + 200)];
  if (v17 <= v18)
  {
    v32 = v19 + 1;
  }

  else
  {
    v20 = v19 + [*(a1 + 216) attachmentCountAtIndex:v16 + *(a1 + 200) - 1];
    v21 = *(a1 + 216);
    v22 = v20 + 1;
    v23 = v16 + *(a1 + 200) - 1;
LABEL_24:
    [v21 setAttachmentCount:v22 atIndex:v23];
    v32 = 0;
  }

LABEL_27:
  v34 = &v35;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v34);
  return v32;
}

void TDescriptorSource::CopySplicedDescriptorsForRequest(CFArrayRef *a1, TDescriptorSource *a2, CFDictionaryRef theDict, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, int isa, uint64_t a9)
{
  v10 = a6;
  Value = a5;
  if (a5)
  {
    if (a6)
    {
      goto LABEL_3;
    }

LABEL_24:
    LODWORD(v10) = CFDictionaryGetValue(theDict, @"CTFontLanguageAwareLineHeightRatioAttribute");
    if (a7)
    {
      goto LABEL_4;
    }

LABEL_25:
    LODWORD(a7) = CFDictionaryGetValue(theDict, @"CTFontLineSpacingOverrideAttribute");
    goto LABEL_4;
  }

  Value = CFDictionaryGetValue(theDict, @"CTFontDescriptorLanguageAttribute");
  if (!v10)
  {
    goto LABEL_24;
  }

LABEL_3:
  if (!a7)
  {
    goto LABEL_25;
  }

LABEL_4:
  v50 = v10;
  v13 = a9;
  v14 = CFDictionaryGetValue(theDict, @"CTFontLegibilityWeightAttribute");
  v15 = v14;
  if (v14)
  {
    v16 = CFGetTypeID(v14);
    if (v16 != CFNumberGetTypeID())
    {
      v15 = 0;
    }
  }

  if (a9)
  {
LABEL_12:
    if (!v15)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  v17 = CFDictionaryGetValue(theDict, @"CTFontIgnoreLegibilityWeightAttribute");
  if (v17)
  {
    v18 = v17;
    v19 = CFGetTypeID(v17);
    if (v19 == CFBooleanGetTypeID())
    {
      v13 = v18;
    }

    else
    {
      v13 = 0;
    }

    goto LABEL_12;
  }

  v13 = 0;
  if (v15)
  {
LABEL_13:
    LODWORD(valuePtr.isa) = -1431655766;
    CFNumberGetValue(v15, kCFNumberIntType, &valuePtr);
    isa = valuePtr.isa;
  }

LABEL_14:
  v20 = CFDictionaryGetValue(theDict, @"NSCTFontTraitsAttribute");
  v21 = v20;
  v47 = a7;
  if (v20)
  {
    v22 = CFGetTypeID(v20);
    if (v22 != CFDictionaryGetTypeID())
    {
      v44 = 0;
      v21 = 0;
      goto LABEL_27;
    }

    Count = CFDictionaryGetCount(v21);
    if (Count)
    {
      v24 = Count;
      v25 = CFDictionaryGetValue(v21, @"NSCTFontWeightTrait");
      CFDictionaryGetValue(v21, @"NSCTFontProportionTrait");
      v26 = CFDictionaryGetValue(v21, @"NSCTFontUIFontDesignTrait");
      v27 = CFDictionaryGetValue(v21, @"NSCTFontGradeTrait");
      if (v24 == 1)
      {
        if (v25 || v26 || v27)
        {
          cf2 = v26;
          v21 = 0;
        }

        else
        {
          cf2 = 0;
        }

        v44 = 1;
      }

      else
      {
        cf2 = v26;
        v44 = 0;
      }

      goto LABEL_28;
    }
  }

  v44 = 0;
LABEL_27:
  cf2 = 0;
LABEL_28:
  CFDictionaryGetValue(theDict, @"NSCTFontSizeCategoryAttribute");
  CFDictionaryGetValue(theDict, @"NSCTFontTextStylePlatformAttribute");
  PostScriptNameAndAttribute = TDescriptorSource::GetPostScriptNameAndAttribute(theDict, v28);
  v30 = CFDictionaryGetValue(theDict, @"NSCTFontUIUsageAttribute");
  if (v30)
  {
    if (!TDescriptorSource::FindFontNameForTextStyle(v30, v21, 0, 0, 0, v31))
    {
LABEL_35:
      *a1 = 0;
      return;
    }

LABEL_32:
    Mutable = 0xAAAAAAAAAAAAAAAALL;
    TDescriptorSource::CopySplicedDescriptorForName(&Mutable);
    if (atomic_load_explicit(&Mutable, memory_order_acquire))
    {
      valuePtr.isa = atomic_load_explicit(&Mutable, memory_order_acquire);
      *a1 = CFArrayCreate(*MEMORY[0x1E695E480], &valuePtr.isa, 1, MEMORY[0x1E695E9C0]);

      return;
    }

    goto LABEL_35;
  }

  if (PostScriptNameAndAttribute)
  {
    goto LABEL_32;
  }

  v32 = os_unfair_lock_lock_with_options();
  TDescriptorSource::EnsureSplicedFontStash(v32);
  if (cf2)
  {
    UIFontFamilyNameForDesign = TDescriptorSource::GetUIFontFamilyNameForDesign(cf2, v33);
  }

  else
  {
    UIFontFamilyNameForDesign = CFDictionaryGetValue(theDict, @"NSFontFamilyAttribute");
  }

  v36 = UIFontFamilyNameForDesign;
  if (!UIFontFamilyNameForDesign)
  {
    goto LABEL_60;
  }

  valuePtr.isa = 0xAAAAAAAAAAAAAAAALL;
  v37 = TDescriptorSource::FontNamesForFamily(UIFontFamilyNameForDesign, &valuePtr, v35);
  if (v37)
  {
    v38 = v37;
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], valuePtr.isa, MEMORY[0x1E695E9C0]);
    if (valuePtr.isa)
    {
      v39 = 0;
      v40 = v50;
      do
      {
        v53 = 0xAAAAAAAAAAAAAAAALL;
        TDescriptorSource::CopySpliceFontForName(&v53, *(v38 + 8 * v39), Value, v40, v47, isa, v13, 0, 0, 0, 0, 0, 0, 0, 0);
        if (atomic_load_explicit(&v53, memory_order_acquire))
        {
          v41 = atomic_load_explicit(&v53, memory_order_acquire);
          CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), v41);
          v42 = v41;
          v40 = v50;
        }

        v39 = v39 + 1;
      }

      while (v39 < valuePtr.isa);
      if (valuePtr.isa > 1)
      {
        v53 = 0xAAAAAAAAAAAAAAAALL;
        TCFMutableDictionary::TCFMutableDictionary(&v53, theDict);
        CFDictionaryRemoveValue(atomic_load_explicit(&v53, memory_order_acquire), @"NSFontFamilyAttribute");
        v43 = v44 ^ 1;
        if (!cf2)
        {
          v43 = 1;
        }

        if ((v43 & 1) == 0)
        {
          CFDictionaryRemoveValue(atomic_load_explicit(&v53, memory_order_acquire), @"NSCTFontTraitsAttribute");
        }

        if (CFDictionaryGetCount(atomic_load_explicit(&v53, memory_order_acquire)))
        {
          TDescriptorSource::CopyDescriptorsForRequestFromArray(&v52, atomic_load_explicit(&Mutable, memory_order_acquire), atomic_load_explicit(&v53, memory_order_acquire), 0, a4 | 0x43, 0);
          *a1 = atomic_exchange(&v52, 0);

LABEL_63:
          goto LABEL_64;
        }
      }
    }

    *a1 = atomic_exchange(&Mutable, 0);
    goto LABEL_63;
  }

  if (cf2)
  {
    TDescriptorSource::CopyMatchingDescriptorsForFamily(a2, v36, a1);
  }

  else
  {
LABEL_60:
    *a1 = 0;
  }

LABEL_64:
  os_unfair_lock_unlock(&TDescriptorSource::sSplicedFontsLock);
}

uint64_t TRun::DeleteGlyphs(TRun *this, uint64_t a2, char *a3, uint64_t a4)
{
  if (*(this + 64))
  {
    if (*(this + 224))
    {
      v7 = TRun::SetAttachmentsRightToLeft<false>(this, a2, a3, a4);
    }

    else
    {
      v7 = TRun::SetAttachmentsLeftToRight<false>(this, a2, a3, a4);
    }
  }

  else if (*(this + 224))
  {
    v7 = TRun::SetAttachmentsRightToLeft<true>(this, a2, a3, a4);
  }

  else
  {
    v7 = TRun::SetAttachmentsLeftToRight<true>(this, a2, a3, a4);
  }

  v8 = v7;
  TStorageRange::DeleteGlyphs(this + 192, a2, a3);
  return v8;
}

const void *TDescriptorSource::GetPostScriptNameAndAttribute(TDescriptorSource *this, const __CFDictionary *a2)
{
  TypeID = CFStringGetTypeID();
  Value = CFDictionaryGetValue(this, @"NSCTFontPostScriptNameAttribute");
  if (!Value || (v5 = Value, CFGetTypeID(Value) != TypeID))
  {
    v6 = CFDictionaryGetValue(this, @"NSFontNameAttribute");
    if (v6)
    {
      v7 = v6;
      if (CFGetTypeID(v6) == TypeID)
      {
        return v7;
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

  return v5;
}

uint64_t TDescriptorSource::FontNamesForFamily(CFTypeRef cf2, const __CFString *a2, unint64_t *a3)
{
  if ((atomic_load_explicit(&qword_1ED567478, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED567478))
  {
    qword_1ED567540 = @".AppleSimplifiedChineseFont";
    qword_1ED567548 = 8;
    qword_1ED567550 = kChineseNames;
    unk_1ED567558 = @".AppleTraditionalChineseFont";
    qword_1ED567560 = 8;
    unk_1ED567568 = off_1E6E3AE50;
    qword_1ED567570 = @".AppleHongKongChineseFont";
    unk_1ED567578 = 8;
    qword_1ED567580 = off_1E6E3AE90;
    unk_1ED567588 = @".AppleMacaoChineseFont";
    qword_1ED567590 = 8;
    unk_1ED567598 = off_1E6E3AED0;
    qword_1ED5675A0 = @".AppleJapaneseFont";
    unk_1ED5675A8 = 9;
    qword_1ED5675B0 = kJapaneseNames;
    unk_1ED5675B8 = @".AppleKoreanFont";
    qword_1ED5675C0 = 8;
    unk_1ED5675C8 = kKoreanNames;
    qword_1ED5675E0 = kArabicNames;
    unk_1ED5675E8 = @".AppleThaiFont";
    qword_1ED5675F0 = 3;
    unk_1ED5675F8 = kThaiNames;
    qword_1ED567600 = @".AppleUrduFont";
    unk_1ED567608 = 2;
    qword_1ED567610 = kUrduNames;
    unk_1ED567618 = @".AppleIndicFont";
    qword_1ED567620 = 9;
    unk_1ED567628 = kIndicNames;
    qword_1ED567630 = @".AppleSystemUIFont";
    unk_1ED567638 = 29;
    qword_1ED5675D0 = @".AppleArabicFont";
    unk_1ED5675D8 = 9;
    qword_1ED567640 = kSystemUIFontNames;
    unk_1ED567648 = @".AppleSystemFallback";
    qword_1ED567650 = 9;
    unk_1ED567658 = kSystemFallbackFontNames;
    qword_1ED567660 = @".AppleSystemUIFontCompact";
    unk_1ED567668 = 18;
    qword_1ED567670 = kSystemUIFontCompactNames;
    unk_1ED567678 = @".AppleSystemUIFontCore";
    qword_1ED567680 = 27;
    qword_1ED567688 = kSystemUIFontCoreNames;
    qword_1ED567690 = @".AppleSystemUIFontRounded";
    qword_1ED567698 = 9;
    qword_1ED5676A0 = kSystemUIFontRoundNames;
    qword_1ED5676A8 = @".AppleSystemUIFontCompactRounded";
    qword_1ED5676B0 = 9;
    qword_1ED5676B8 = kSystemUIFontCompactRoundNames;
    qword_1ED5676C0 = @".AppleSystemUIFontCondensed";
    qword_1ED5676C8 = 9;
    qword_1ED5676D0 = kSystemUIFontCondensedNames;
    qword_1ED5676D8 = @".AppleSystemUIFontCoreCondensed";
    qword_1ED5676E0 = 9;
    qword_1ED5676E8 = kSystemUIFontCoreCondensedNames;
    qword_1ED5676F0 = @".AppleSystemUIFontSerif";
    qword_1ED567700 = kSystemUIFontSerifNames;
    qword_1ED5676F8 = 12;
    qword_1ED567708 = @".AppleSystemUIFontSoft";
    qword_1ED567710 = 9;
    qword_1ED567718 = kSystemUIFontSoftNames;
    qword_1ED567720 = @".AppleSystemUIFontCompactSoft";
    qword_1ED567728 = 9;
    qword_1ED567730 = kSystemUIFontCompactSoftNames;
    qword_1ED567738 = @".AppleSystemUIFontMonospaced";
    qword_1ED567740 = 12;
    qword_1ED567748 = kSystemUIFontMonospacedNames;
    qword_1ED567750 = @".Apple Symbols Fallback";
    qword_1ED567758 = 1;
    qword_1ED567760 = kSymbolsFBNames;
    qword_1ED567768 = @".Times Fallback";
    qword_1ED567770 = 4;
    qword_1ED567778 = kTimesFBNames;
    __cxa_guard_release(&qword_1ED567478);
  }

  v5 = &qword_1ED567550;
  v6 = 576;
  while (1)
  {
    v7 = *(v5 - 2);
    if (v7 == cf2 || cf2 && v7 && CFEqual(v7, cf2))
    {
      break;
    }

    v5 += 3;
    v6 -= 24;
    if (!v6)
    {
      result = 0;
      a2->isa = 0;
      return result;
    }
  }

  result = *v5;
  a2->isa = *(v5 - 1);
  return result;
}

CTFontDescriptorRef CTFontDescriptorCreateCopyWithFeature(CTFontDescriptorRef original, CFNumberRef featureTypeIdentifier, CFNumberRef featureSelectorIdentifier)
{
  v7 = featureSelectorIdentifier;
  v8 = featureTypeIdentifier;
  if (!original)
  {
    return 0;
  }

  if (featureTypeIdentifier && featureSelectorIdentifier)
  {
    v5 = original;
    v6 = 0xAAAAAAAAAAAAAAAALL;
    TCFBase_NEW<CTFontDescriptor,CTFontDescriptor*,__CFNumber const*&,__CFNumber const*&>(&v5, &v8, &v7, &v6);
    v3 = atomic_exchange(&v6, 0);

    return v3;
  }

  return original;
}

void TDescriptor::TDescriptor(TDescriptor *this, const TDescriptor *a2, const __CFNumber *a3, const __CFNumber *a4)
{
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
  v14 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptor::CopyAttributes(a2, &v14);
  v13 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableDictionary::TCFMutableDictionary(&v13, atomic_load_explicit(&v14, memory_order_acquire));
  v9 = [[CTFeatureSetting alloc] initWithType:a3 selector:a4 tag:0 value:0];
  if (v9)
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    Value = CFDictionaryGetValue(atomic_load_explicit(&v13, memory_order_acquire), @"NSCTFontFeatureSettingsAttribute");
    TCFMutableArray::TCFMutableArray(&v12, Value);
    v11 = v9;
    CFArrayAppendValue(atomic_load_explicit(&v12, memory_order_acquire), v11);

    CFDictionarySetValue(atomic_load_explicit(&v13, memory_order_acquire), @"NSCTFontFeatureSettingsAttribute", atomic_load_explicit(&v12, memory_order_acquire));
  }
}

void TInstanceFont::CopyName(atomic_ullong *this@<X0>, const __CFString *a2@<X1>, atomic_ullong *a3@<X8>)
{
  v17 = 0;
  TBaseFont::CopyAttributeInternal(this, @"CTFontNames", &v16);
  v6 = atomic_exchange(&v16, 0);

  if (@"CTFontSubFamilyName" == a2 || a2 && @"CTFontSubFamilyName" && CFEqual(a2, @"CTFontSubFamilyName") || @"CTFontPreferredSubFamilyName" == a2 || a2 && @"CTFontPreferredSubFamilyName" && CFEqual(a2, @"CTFontPreferredSubFamilyName"))
  {
    if (!atomic_load_explicit(this + 76, memory_order_acquire))
    {
      v16 = 0xAAAAAAAAAAAAAAAALL;
      TBaseFont::CopyName(this, @"CTFontSubFamilyName", &v16);
      if (atomic_load_explicit(&v16, memory_order_acquire))
      {
        v7 = 0;
        v8 = atomic_exchange(&v16, 0);
        atomic_compare_exchange_strong(this + 76, &v7, v8);
        if (v7)
        {
          v9 = v8;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    *a3 = atomic_load_explicit(this + 76, memory_order_acquire);
    goto LABEL_17;
  }

  if (@"CTFontFullName" != a2 && (!a2 || !@"CTFontFullName" || !CFEqual(a2, @"CTFontFullName")) || (IsNamedInstance(atomic_load_explicit(this + 13, memory_order_acquire)) & 1) != 0)
  {
LABEL_23:
    TBaseFont::CopyName(this, a2, a3);
    goto LABEL_17;
  }

  v10 = v6;
  v11 = v10;
  if (v10)
  {
    Value = CFDictionaryGetValue(v10, a2);
  }

  else
  {
    Value = 0;
  }

  TCFRef<__CTFont const*>::Retain(&v17, Value);

  if (atomic_load_explicit(&v17, memory_order_acquire))
  {
    *a3 = atomic_exchange(&v17, 0);
    goto LABEL_17;
  }

  v16 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyName(this, @"CTFontFamilyName", &v16);
  if (!atomic_load_explicit(&v16, memory_order_acquire))
  {
LABEL_35:

    goto LABEL_23;
  }

  MutableCopy = 0xAAAAAAAAAAAAAAAALL;
  MutableCopy = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, atomic_load_explicit(&v16, memory_order_acquire));
  if (!atomic_load_explicit(&MutableCopy, memory_order_acquire))
  {

    goto LABEL_35;
  }

  v14 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 72))(&v14, this, @"CTFontSubFamilyName");
  if (atomic_load_explicit(&v14, memory_order_acquire))
  {
    CFStringAppendFormat(atomic_load_explicit(&MutableCopy, memory_order_acquire), 0, @" %@", atomic_load_explicit(&v14, memory_order_acquire));
    v13 = 0xAAAAAAAAAAAAAAAALL;
    TCFMutableDictionary::TCFMutableDictionary(&v13, v6);
    CFDictionarySetValue(atomic_load_explicit(&v13, memory_order_acquire), a2, atomic_load_explicit(&MutableCopy, memory_order_acquire));
    TBaseFont::SetAttributeInternal<__CFDictionary const*>(this, atomic_load_explicit(&v13, memory_order_acquire), @"CTFontNames");
  }

  *a3 = atomic_exchange(&MutableCopy, 0);

LABEL_17:
}

uint64_t TStorageRange::DeleteGlyphs(uint64_t this, uint64_t a2, const uint64_t *a3)
{
  v5 = this;
  v6 = *(this + 8);
  v7 = *(this + 24);
  v8 = *(v7 + 32);
  if (v8 || (v11 = *(v7 + 24)) == 0)
  {
    v9 = 0;
    v10 = v8 + 16 * v6;
  }

  else
  {
    v10 = v11 + 8 * v6;
    v9 = 1;
  }

  v12 = *a3;
  if (a2 < 2)
  {
    v21 = 0;
  }

  else
  {
    v13 = 0;
    v14 = v6 + v12;
    v24 = a2 - 1;
    v15 = 1 - a2;
    v16 = a3 + 1;
    do
    {
      v17 = *(v5 + 8);
      if (v9)
      {
        v18 = 3;
      }

      else
      {
        v18 = 4;
      }

      *v5 = *v5 - *(v10 + ((v14 - v17) << v18));
      v19 = *v16++;
      v20 = v19 + v17;
      this = [*(v5 + 24) moveGlyphsFromRange:v14 + 1 toIndex:{v19 + v17 - v14, v14 + v13--}];
      v14 = v20;
    }

    while (v15 != v13);
    v21 = v24;
    v12 = a3[v24];
    v6 = *(v5 + 8);
  }

  v22 = 3;
  if (!v9)
  {
    v22 = 4;
  }

  *v5 = *v5 - *(v10 + (v12 << v22));
  v23 = *(v5 + 16);
  if (v23 - 1 > v12)
  {
    this = [*(v5 + 24) moveGlyphsFromRange:v12 + v6 + 1 toIndex:{v23 - 1 - v12, v12 + v6 - v21}];
    v23 = *(v5 + 16);
  }

  *(v5 + 16) = v23 - a2;
  return this;
}

void TInstanceFont::AddDescriptorAttributes(atomic_ullong *a1, uint64_t a2, uint64_t a3)
{
  if (((*(*a1 + 464))(a1) & 1) == 0)
  {
    v6 = atomic_load_explicit(a1 + 75, memory_order_acquire);
    if (v6)
    {
      v7 = v6;
      Count = CFDictionaryGetCount(v6);

      if (Count)
      {
        v10 = *(a2 + 8);
        v9 = *(a2 + 16);
        if (v10 >= v9)
        {
          v12 = (v10 - *a2) >> 3;
          if ((v12 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v13 = v9 - *a2;
          v14 = v13 >> 2;
          if (v13 >> 2 <= (v12 + 1))
          {
            v14 = v12 + 1;
          }

          if (v13 >= 0x7FFFFFFFFFFFFFF8)
          {
            v15 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v15 = v14;
          }

          v43 = a2 + 24;
          if (v15)
          {
            v16 = *(a2 + 264);
            v17 = v16 + 8 * v15;
            if (v17 > a2 + 264)
            {
              if (!(v15 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            *(a2 + 264) = v17;
          }

          else
          {
            v16 = 0;
          }

          v18 = v16 + 8 * v15;
          v19 = (v16 + 8 * v12);
          *v19 = @"NSCTFontVariationAttribute";
          v11 = v19 + 1;
          v20 = *(a2 + 8) - *a2;
          v21 = (v16 + 8 * v12 - v20);
          memcpy(v21, *a2, v20);
          v22 = *a2;
          *a2 = v21;
          *(a2 + 8) = v11;
          v23 = *(a2 + 16);
          *(a2 + 16) = v18;
          v41 = v22;
          v42 = v23;
          v39 = v22;
          v40 = v22;
          std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v39);
        }

        else
        {
          *v10 = @"NSCTFontVariationAttribute";
          v11 = v10 + 1;
        }

        *(a2 + 8) = v11;
        explicit = atomic_load_explicit(a1 + 75, memory_order_acquire);
        v26 = *(a3 + 8);
        v25 = *(a3 + 16);
        if (v26 >= v25)
        {
          v28 = (v26 - *a3) >> 3;
          if ((v28 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v29 = v25 - *a3;
          v30 = v29 >> 2;
          if (v29 >> 2 <= (v28 + 1))
          {
            v30 = v28 + 1;
          }

          if (v29 >= 0x7FFFFFFFFFFFFFF8)
          {
            v31 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v31 = v30;
          }

          v43 = a3 + 24;
          if (v31)
          {
            v32 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<void const*,30ul>>(a3 + 24, v31);
          }

          else
          {
            v32 = 0;
          }

          v34 = v32 + 8 * v31;
          v33 = (v32 + 8 * v28);
          *v33 = explicit;
          v27 = v33 + 1;
          v35 = *(a3 + 8) - *a3;
          v36 = v33 - v35;
          memcpy(v33 - v35, *a3, v35);
          v37 = *a3;
          *a3 = v36;
          *(a3 + 8) = v27;
          v38 = *(a3 + 16);
          *(a3 + 16) = v34;
          v41 = v37;
          v42 = v38;
          v39 = v37;
          v40 = v37;
          std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v39);
        }

        else
        {
          *v26 = explicit;
          v27 = v26 + 1;
        }

        *(a3 + 8) = v27;
      }
    }

    else
    {
    }
  }
}

unsigned int ClassOfWidth(double a1)
{
  v2 = IndexesBracketing<float const*,double>(kWidthScale, kWidthPercentScale, a1, 0.001);
  v3 = kWidthScale[v2];
  v4 = kWidthScale[HIWORD(v2)];
  v5 = 0.0;
  if (v3 != v4)
  {
    v6 = (a1 - v3) / (v4 - v3);
    v5 = v6;
  }

  return llround(std::__lerp[abi:fn200100]<double>(v2, HIWORD(v2), v5));
}

void TAttributes::HandleLanguageAttribute(const __CFString *a1, uint64_t a2)
{
  if (a1)
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFStringGetTypeID())
    {
      v5 = atomic_exchange((*a2 + 24), CFLocaleCreateCanonicalLanguageIdentifierFromString(*MEMORY[0x1E695E480], a1));
    }
  }
}

uint64_t TInstanceFont::GetSymbolicTraitsInternal(TInstanceFont *this)
{
  valuePtr = 0;
  TBaseFont::CopyAttributeInternal(this, @"NSCTFontSymbolicTrait", &v12);
  v10 = atomic_exchange(&v12, 0);

  if (atomic_load_explicit(&v10, memory_order_acquire))
  {
    v2 = atomic_load_explicit(&v10, memory_order_acquire);
    CFNumberGetValue(v2, kCFNumberIntType, &valuePtr);
  }

  else
  {
    v12 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 152))(&v12, this);
    v2 = atomic_exchange(&v12, 0);

    v3 = v2;
    v4 = v3;
    if (v3)
    {
      Value = CFDictionaryGetValue(v3, @"NSCTFontSymbolicTrait");
    }

    else
    {
      Value = 0;
    }

    TCFRef<__CTFont const*>::Retain(&v10, Value);

    if (atomic_load_explicit(&v10, memory_order_acquire))
    {
      v9 = atomic_load_explicit(&v10, memory_order_acquire);
      TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v9, @"NSCTFontSymbolicTrait");

      v6 = atomic_load_explicit(&v10, memory_order_acquire);
      CFNumberGetValue(v6, kCFNumberIntType, &valuePtr);
    }
  }

  v7 = valuePtr;
  return v7;
}

uint64_t IndexesBracketing<float const*,double>(float *a1, float *a2, double a3, double a4)
{
  if (a2 - a1 >= 2 && *a1 <= a3)
  {
    if (*(a2 - 1) <= a3)
    {
      v4 = ((a2 - a1) >> 2) - 1;
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
      while (1)
      {
        v8 = *(v7 - 1);
        if (vabdd_f64(a3, v8) < a4)
        {
          break;
        }

        v9 = *v7;
        if (vabdd_f64(a3, v9) < a4)
        {
          v4 = v5;
          return v4 | (v5 << 16);
        }

        if (v8 >= a3 || v9 <= a3)
        {
          ++v4;
          ++v5;
          if (++v7 != a2)
          {
            continue;
          }
        }

        return v4 | (v5 << 16);
      }
    }

    v5 = v4;
  }

  else
  {
    v4 = 0;
    v5 = 0;
  }

  return v4 | (v5 << 16);
}

void TSplicedFont::CreateTraitsValuesPerFontInfo(uint64_t a1@<X0>, _DWORD *a2@<X1>, void *a3@<X8>)
{
  *a2 = 1;
  v3 = *(a1 + 616);
  if (!v3)
  {
    v8 = 0;
    v5 = 2.0;
    v6 = 2.0;
    goto LABEL_9;
  }

  v4 = *v3;
  if (*v3 != v3[1])
  {
    v5 = *(v4 + 32);
    v6 = 2.0;
    if (v5 != 2.0)
    {
      v7 = 0.0;
      if (*(v4 + 52))
      {
        v7 = 0.0694444444;
      }

      v6 = *(v4 + 40);
      v8 = 1;
      goto LABEL_10;
    }

    v8 = 0;
    v5 = 0.0;
LABEL_9:
    v7 = 2.0;
LABEL_10:
    TSplicedFontDict::CreateTraitsValuesPerFontInfo((a1 + 600), v5, v6, *&v7, v8, v3 != 0, v3 != 0, a3);
    return;
  }

  __break(1u);
}

id TInstanceFont::CopyVariation@<X0>(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  result = atomic_load_explicit(this + 75, memory_order_acquire);
  *a2 = result;
  return result;
}

CFTypeID TAttributes::HandleForegroundColorFromContextAttribute(CFTypeID result, uint64_t a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID() || v4 == CFBooleanGetTypeID())
    {
      valuePtr = -1431655766;
      CFNumberGetValue(v3, kCFNumberIntType, &valuePtr);
      result = valuePtr;
      if (!valuePtr)
      {
        return result;
      }

      goto LABEL_5;
    }

    result = CFStringGetTypeID();
    if (v4 == result)
    {
      result = CFStringGetIntValue(v3);
      if (result)
      {
LABEL_5:
        *(*a2 + 136) |= 1u;
      }
    }
  }

  return result;
}

uint64_t CTGlyphStorageCreateMutableWithInterface(uint64_t a1, uint64_t a2)
{
  v4 = [_CTMutableGlyphStorage alloc];

  return [(_CTMutableGlyphStorage *)v4 initWithInterface:a2 options:a1];
}

void TFont::GetDefaultMetrics(TBaseFont **this, double *a2, double *a3, double *a4)
{
  if (*(this + 14))
  {
    v8 = (this + 7);
  }

  else
  {
    TFont::InitStrikeMetrics(this);
  }

  v10 = v8[1];
  v9 = v8[2];
  v11 = *(v8 + 3);
  if (*(v8 + 88) == 1 && (*(this + 12) & 1) == 0)
  {
    Table = GetTable();
    if (Table)
    {
      v13 = Table[12];
    }

    else
    {
      v13 = 0.0;
    }

    if (v13 == 0.0)
    {
      v13 = 0.2;
    }

    v10 = v10 + (v10 + v9) * v13;
  }

  *a2 = v10;
  *a3 = v9;
  *a4 = v11;
}

uint64_t CTLineCreateFromLineWithOffset(uint64_t a1, CFIndex a2, CFIndex a3, double a4)
{
  if (!a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = *(a1 + 40);
  v7 = v6[9];
  v8 = v6[10] + v7;
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = v8 - a2;
  }

  if ((v9 & 0x8000000000000000) == 0 && a2 >= v7 && v9 + a2 <= v8)
  {
    TCFBase_NEW<CTLine,std::shared_ptr<TCharStream const> const&>(v6, v18);
    v17 = atomic_exchange(v18, 0);

    if (atomic_load_explicit(&v17, memory_order_acquire))
    {
      if (v8 <= a2)
      {
        v12.location = 0;
      }

      else
      {
        v12.location = a2;
      }

      v13 = *(atomic_load_explicit(&v17, memory_order_acquire) + 40);
      v14 = *v6;
      if (v8 <= a2)
      {
        v12.length = 0;
      }

      else
      {
        v12.length = v9;
      }

      v18[0] = v6;
      v18[1] = v14;
      v18[2] = 0;
      v18[3] = 0;
      v19[0] = 0;
      *(v19 + 6) = 0;
      v19[2] = 0;
      TTypesetter::FillLine(v18, v13, v12, 1.79769313e308, a4);
      ExternalizeLine(&v17);
      v5 = v15;
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

void TSplicedFontDict::CreateTraitsValuesPerFontInfo(atomic_ullong *this@<X0>, double a2@<D0>, uint64_t a3@<D1>, char *a4@<D2>, _BOOL4 a5@<W1>, _BOOL4 a6@<W2>, BOOL a7@<W3>, void *a8@<X8>)
{
  v24[3] = *MEMORY[0x1E69E9840];
  v23 = a5;
  v22 = a6;
  v21 = a7;
  v19.length = a3;
  valuePtr = a2;
  v19.data = a4;
  HIDWORD(v19.info) = 0;
  if (a6 && a7)
  {
    if (a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    TSplicedFontDict::GetTraitsValuesFromMetrics(this, &v23, &v22, &v21, &valuePtr, &v19.length, &v19.data, &v19.info + 1);
    if (v23 && v22)
    {
LABEL_7:
      if (v21)
      {
        goto LABEL_25;
      }
    }
  }

  v10 = 0;
  v24[0] = @"CTFontFullName";
  v24[1] = @"CTFontFamilyName";
  v24[2] = @"CTFontSubFamilyName";
  while (1)
  {
    v11 = FontNameCodeForKey(v24[v10]);
    v12 = TSplicedFontDict::FindFontName(this, v11, 0);
    if (v12)
    {
      break;
    }

LABEL_24:

    if (++v10 == 3)
    {
      goto LABEL_25;
    }
  }

  v13 = v12;
  v19.isa = 0xAAAAAAAAAAAAAAAALL;
  CreateTraitsByStyleGlossaryString(&v19, v12);
  if (atomic_load_explicit(&v19, memory_order_acquire))
  {
    if (!v23)
    {
      Value = CFDictionaryGetValue(atomic_load_explicit(&v19, memory_order_acquire), @"NSCTFontWeightTrait");
      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
        v23 = 1;
      }
    }

    if (!v22)
    {
      v15 = CFDictionaryGetValue(atomic_load_explicit(&v19, memory_order_acquire), @"NSCTFontProportionTrait");
      if (v15)
      {
        CFNumberGetValue(v15, kCFNumberDoubleType, &v19.length);
        v22 = 1;
      }
    }

    if (!v21)
    {
      v16 = CFDictionaryGetValue(atomic_load_explicit(&v19, memory_order_acquire), @"NSCTFontSlantTrait");
      if (v16)
      {
        CFNumberGetValue(v16, kCFNumberDoubleType, &v19.data);
        v21 = 1;
      }
    }
  }

  if (!v23 || !v22 || !v21)
  {

    v12 = v13;
    goto LABEL_24;
  }

LABEL_25:
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (explicit)
  {
    v18 = CFDictionaryGetValue(explicit, @"NSCTFontUIFontDesignTrait");
  }

  else
  {
    v18 = 0;
  }

  CreateTraitValues(valuePtr, *&v19.length, *&v19.data, v18, v23, v22, v21, SHIDWORD(v19.info), a8);
}

void CreateTraitsWithVariation(CFDictionaryRef theDict@<X0>, const __CFDictionary *a2@<X1>, const __CFArray *a3@<X2>, const TBaseFont *a4@<X3>, atomic_ullong *a5@<X4>, atomic_ullong *a6@<X5>, void *a7@<X8>)
{
  v7 = theDict;
  if (!a3)
  {
    *a7 = theDict;
    return;
  }

  v11 = -1431655936;
  v50 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableDictionary::TCFMutableDictionary(&v50, theDict);
  SymbolicTraitsFromTraits = GetSymbolicTraitsFromTraits(v7);
  Count = CFArrayGetCount(a3);
  if (Count)
  {
    v40 = v7;
    v41 = SymbolicTraitsFromTraits;
    v47 = 0;
    v46 = 0;
    v14 = 0;
    v15 = 0;
    v16 = NAN;
    v17 = NAN;
    v18 = NAN;
    v45 = -1431655936;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a3, v15);
      Value = CFDictionaryGetValue(ValueAtIndex, @"NSCTVariationAxisIdentifier");
      LODWORD(valuePtr) = -1431655766;
      CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
      if (valuePtr > 2003072103)
      {
        if (valuePtr == 2003072104)
        {
          DetermineVariationValue(2003072104, a2, ValueAtIndex, 0, a6);
          v17 = v26;
          v46 = 1;
        }

        else if (valuePtr == 2003265652)
        {
          DetermineVariationValue(2003265652, a2, ValueAtIndex, a5, 0);
          v16 = v22;
          HIDWORD(v47) = 1;
        }
      }

      else if (valuePtr == 1769234796)
      {
        *&valuePtr = NAN;
        v23 = 0.0;
        if (a2)
        {
          v24 = CFDictionaryGetValue(a2, Value);
          if (v24)
          {
            CFNumberGetValue(v24, kCFNumberDoubleType, &valuePtr);
            v23 = *&valuePtr;
          }
        }

        v25 = v23 > 0.0;
        if (v23 > 1.0)
        {
          v25 = 0;
        }

        v45 = v25;
        if ((v14 & 1) == 0)
        {
          v14 = 1;
        }
      }

      else if (valuePtr == 1936486004)
      {
        DetermineVariationValue(1936486004, a2, ValueAtIndex, 0, 0);
        v18 = v21;
        LODWORD(v47) = 1;
      }

      ++v15;
    }

    while (Count != v15);
    v11 = v45;
    LODWORD(Count) = v46;
    SymbolicTraitsFromTraits = v41;
    v27 = v14;
    v29 = v47;
    v28 = HIDWORD(v47);
    v7 = v40;
  }

  else
  {
    v27 = 0;
    v29 = 0;
    v28 = 0;
    v18 = NAN;
    v17 = NAN;
    v16 = NAN;
  }

  if (((*(*a4 + 712))(a4) & 1) == 0)
  {
    v30 = (*(*a4 + 576))(a4);
    if (IsNamedInstance(v30))
    {
      if (v28 & Count & v29)
      {
        v31 = 1;
        v32 = 1;
        goto LABEL_57;
      }

      *&valuePtr = NAN;
      v48 = NAN;
      v49 = NAN;
      TraitsFromSubfamilyName = GetTraitsFromSubfamilyName(a4, v28 & 1, Count & 1, v29 & 1, &valuePtr, &v49, &v48);
      if (v28)
      {
        v34 = v28;
      }

      else
      {
        v34 = 1;
      }

      v35 = valuePtr;
      if (v28)
      {
        *&v35 = v16;
      }

      if (TraitsFromSubfamilyName)
      {
        v16 = *&v35;
        LOBYTE(v28) = v34;
      }

      if (!(Count & 1 | ((TraitsFromSubfamilyName & 0x100) == 0)))
      {
        v17 = v49;
      }

      if (!(v29 & 1 | ((TraitsFromSubfamilyName & 0xFFFFFF) < 0x10000)))
      {
        v18 = v48;
      }

      LOBYTE(v29) = v29 | ((TraitsFromSubfamilyName & 0xFF0000) != 0);
      LODWORD(Count) = Count | ((TraitsFromSubfamilyName & 0x100) >> 8);
    }
  }

  if (!v7)
  {
    v32 = v29;
    v31 = Count;
    if (v28)
    {
      goto LABEL_57;
    }

    goto LABEL_63;
  }

  if ((v28 & 1) == 0)
  {
    v36 = CFDictionaryGetValue(v7, @"NSCTFontWeightTrait");
    if (v36)
    {
      *&valuePtr = NAN;
      CFNumberGetValue(v36, kCFNumberDoubleType, &valuePtr);
      v16 = *&valuePtr;
      LOBYTE(v28) = 1;
      v31 = 1;
      if (Count)
      {
        goto LABEL_52;
      }

      goto LABEL_48;
    }

    v16 = 0.0;
  }

  if (Count)
  {
    v31 = 1;
    goto LABEL_52;
  }

LABEL_48:
  v37 = CFDictionaryGetValue(v7, @"NSCTFontProportionTrait");
  if (v37)
  {
    *&valuePtr = NAN;
    CFNumberGetValue(v37, kCFNumberDoubleType, &valuePtr);
    v17 = *&valuePtr;
    v31 = 1;
    v32 = 1;
    if (v29)
    {
LABEL_56:
      if (v28)
      {
        goto LABEL_57;
      }

LABEL_63:
      v39 = SymbolicTraitsFromTraits;
      if ((v31 & 1) == 0)
      {
        goto LABEL_68;
      }

      goto LABEL_64;
    }

    goto LABEL_53;
  }

  v31 = 0;
  v17 = 0.0;
LABEL_52:
  if (v29)
  {
LABEL_55:
    v32 = 1;
    goto LABEL_56;
  }

LABEL_53:
  v38 = CFDictionaryGetValue(v7, @"NSCTFontSlantTrait");
  if (v38)
  {
    *&valuePtr = NAN;
    CFNumberGetValue(v38, kCFNumberDoubleType, &valuePtr);
    v18 = *&valuePtr;
    goto LABEL_55;
  }

  v32 = 0;
  v18 = 0.0;
  if ((v28 & 1) == 0)
  {
    goto LABEL_63;
  }

LABEL_57:
  TCFNumber::TCFNumber<double>(&valuePtr, v16);
  CFDictionarySetValue(atomic_load_explicit(&v50, memory_order_acquire), @"NSCTFontWeightTrait", atomic_load_explicit(&valuePtr, memory_order_acquire));

  if (v16 <= 0.239)
  {
    v39 = SymbolicTraitsFromTraits & 0xFFFFFFFD;
    if ((v31 & 1) == 0)
    {
      goto LABEL_68;
    }
  }

  else
  {
    v39 = SymbolicTraitsFromTraits | 2;
    if ((v31 & 1) == 0)
    {
      goto LABEL_68;
    }
  }

LABEL_64:
  TCFNumber::TCFNumber<double>(&valuePtr, v17);
  CFDictionarySetValue(atomic_load_explicit(&v50, memory_order_acquire), @"NSCTFontProportionTrait", atomic_load_explicit(&valuePtr, memory_order_acquire));

  if (v17 <= 0.15)
  {
    if (v17 < -0.15)
    {
      v39 = v39 & 0xFFFFFF9F | 0x40;
    }
  }

  else
  {
    v39 = v39 & 0xFFFFFF9F | 0x20;
  }

LABEL_68:
  if (v32)
  {
    TCFNumber::TCFNumber<double>(&valuePtr, v18);
    CFDictionarySetValue(atomic_load_explicit(&v50, memory_order_acquire), @"NSCTFontSlantTrait", atomic_load_explicit(&valuePtr, memory_order_acquire));

    if ((v27 & 1) == 0)
    {
      v11 = fabs(v18) > 0.000001;
    }
  }

  else if ((v27 & 1) == 0)
  {
    goto LABEL_75;
  }

  if (v11)
  {
    v39 |= 1u;
  }

  else
  {
    v39 &= ~1u;
  }

LABEL_75:
  if (v39 != SymbolicTraitsFromTraits)
  {
    TCFNumber::TCFNumber<unsigned int>(&valuePtr, v39);
    CFDictionarySetValue(atomic_load_explicit(&v50, memory_order_acquire), @"NSCTFontSymbolicTrait", atomic_load_explicit(&valuePtr, memory_order_acquire));
  }

  *a7 = atomic_exchange(&v50, 0);
}

void TLine::CopyStringRange(TLine *this, const TLine *a2, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  v95 = *MEMORY[0x1E69E9840];
  v7 = a3.location == *(a2 + 9) && a3.length == *(a2 + 10);
  if (v7 && (*(a2 + 76) & 1) == 0)
  {

    TLine::operator=(this, a2);
    return;
  }

  v9 = *a2;
  v8 = *(a2 + 1);
  if (v8)
  {
    atomic_fetch_add_explicit((v8 + 8), 1uLL, memory_order_relaxed);
  }

  v10 = *(this + 1);
  *this = v9;
  *(this + 1) = v8;
  if (v10)
  {
    std::__shared_weak_count::__release_shared[abi:fn200100](v10);
  }

  *(this + 9) = location;
  *(this + 10) = length;
  if (*(a2 + 155))
  {
    *(this + 77) |= 0x100u;
  }

  v11 = *(a2 + 3) - *(a2 + 2);
  if (v11 && length)
  {
    v12 = *(a2 + 77);
    if ((v12 & 0x20) != 0)
    {
      *(this + 77) |= 0x20u;
      v12 = *(a2 + 77);
    }

    v13 = v11 >> 3;
    if ((v12 & 0x40) == 0)
    {
      RunWithCharIndex = TLine::FindRunWithCharIndex(a2, location, 1);
      if (RunWithCharIndex >= v13)
      {
        return;
      }

      v15 = location + length;
      v16 = this + 96;
      while (1)
      {
        v17 = *(a2 + 2);
        if (RunWithCharIndex >= ((*(a2 + 3) - v17) >> 3))
        {
          goto LABEL_128;
        }

        v18 = *(v17 + 8 * RunWithCharIndex);
        v19 = *(v18 + 40);
        v21 = *(v19 + 8);
        v20 = *(v19 + 16);
        v22 = v20 + v21;
        if (v20 + v21 >= v15)
        {
          v23 = v15;
        }

        else
        {
          v23 = v20 + v21;
        }

        v24 = v23 - location;
        v25 = v21 <= location && location < v22;
        if (v25)
        {
          v26 = location;
        }

        else
        {
          v26 = 0;
        }

        if (!v25)
        {
          v24 = 0;
        }

        v27 = v23 - v21;
        v28 = location <= v21 && v21 < v15;
        if (v28)
        {
          v29 = v21;
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

        if (v30 < 1)
        {
          return;
        }

        v31 = *(TLine::InsertPartialRun(this, (*(this + 3) - *(this + 2)) >> 3, v18, v29, v30) + 40);
        if (*(this + 11))
        {
          v32 = *v16;
          *(*v16 + 24) = v31;
        }

        else
        {
          *(this + 11) = v31;
          v33 = (this + 96);
          if (!v31)
          {
            goto LABEL_50;
          }

          v32 = 0;
        }

        *(v31 + 32) = v32;
        *v16 = v31;
        v33 = (v31 + 24);
LABEL_50:
        *v33 = 0;
        length -= v30;
        if (length >= 1)
        {
          RunWithCharIndex = TLine::FindRunWithCharIndex(a2, v22, 1);
          if (RunWithCharIndex < v13)
          {
            continue;
          }
        }

        return;
      }
    }

    if ((v12 & 0x80) != 0)
    {
      *(this + 77) |= 0x80u;
    }

    memset(v82, 0, sizeof(v82));
    v83 = 0xAAAAAAAA3F800000;
    *&v34 = 0xAAAAAAAAAAAAAAAALL;
    *(&v34 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v93[14] = v34;
    v93[13] = v34;
    v93[12] = v34;
    v93[11] = v34;
    v93[10] = v34;
    v93[9] = v34;
    v93[8] = v34;
    v93[7] = v34;
    v93[6] = v34;
    v93[5] = v34;
    v93[4] = v34;
    v93[3] = v34;
    v93[2] = v34;
    v93[1] = v34;
    v93[0] = v34;
    v90 = 0;
    v91 = 0;
    v92 = 0;
    v94 = v93;
    p_i = 0;
    if (v13 >= 1)
    {
      v35 = 0;
      v36 = location + length;
      do
      {
        v37 = *(a2 + 2);
        if (v35 >= ((*(a2 + 3) - v37) >> 3))
        {
LABEL_128:
          __break(1u);
        }

        v38 = *(v37 + 8 * v35);
        v39 = *(v38 + 40);
        i = v39;
        v41 = *(v39 + 8);
        v40 = *(v39 + 16);
        v42 = v40 + v41;
        if (v40 + v41 >= v36)
        {
          v43 = v36;
        }

        else
        {
          v43 = v40 + v41;
        }

        if (location <= v41 && v41 < v36)
        {
          v46 = v43 - v41;
        }

        else if (v41 <= location && location < v42)
        {
          v46 = v43 - location;
          v41 = location;
        }

        else
        {
          v41 = 0;
          v46 = 0;
        }

        if (v46 < 1)
        {
          if (*(this + 2) != *(this + 3))
          {
            std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](&v90, &p_i);
          }
        }

        else
        {
          v85 = &i;
          std::__hash_table<std::__hash_value_type<TRun const*,long>,std::__unordered_map_hasher<TRun const*,std::__hash_value_type<TRun const*,long>,std::hash<TRun const*>,std::equal_to<TRun const*>,true>,std::__unordered_map_equal<TRun const*,std::__hash_value_type<TRun const*,long>,std::equal_to<TRun const*>,std::hash<TRun const*>,true>,std::allocator<std::__hash_value_type<TRun const*,long>>>::__emplace_unique_key_args<TRun const*,std::piecewise_construct_t const&,std::tuple<TRun const* const&>,std::tuple<>>(v82, v39)[3] = v35;
          TLine::InsertPartialRun(this, (*(this + 3) - *(this + 2)) >> 3, v38, v41, v46);
        }

        v35 = p_i + 1;
        p_i = v35;
      }

      while (v35 < v13);
    }

    v47 = *(this + 2);
    v48 = *(this + 3);
    if (v47 == v48)
    {
LABEL_126:
      v85 = &v90;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v85);
      std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(v82);
      return;
    }

    *&v49 = 0xAAAAAAAAAAAAAAAALL;
    *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v88[14] = v49;
    v88[13] = v49;
    v88[12] = v49;
    v88[11] = v49;
    v88[10] = v49;
    v88[9] = v49;
    v88[8] = v49;
    v88[7] = v49;
    v88[6] = v49;
    v88[5] = v49;
    v88[4] = v49;
    v88[3] = v49;
    v88[1] = v49;
    v88[2] = v49;
    v88[0] = v49;
    v86 = 0;
    v87 = 0;
    v85 = 0;
    v89 = v88;
    std::vector<long,TInlineBufferAllocator<long,30ul>>::reserve(&v85, (v48 - v47) >> 3);
    v50 = *(a2 + 11);
    for (i = v50; v50; i = v50)
    {
      if (*(&v82[0] + 1))
      {
        v51 = 0x9DDFEA08EB382D69 * ((8 * (v50 & 0x1FFFFFFF) + 8) ^ HIDWORD(v50));
        v52 = 0x9DDFEA08EB382D69 * (HIDWORD(v50) ^ (v51 >> 47) ^ v51);
        v53 = 0x9DDFEA08EB382D69 * (v52 ^ (v52 >> 47));
        v54 = vcnt_s8(*(v82 + 8));
        v54.i16[0] = vaddlv_u8(v54);
        if (v54.u32[0] > 1uLL)
        {
          v55 = v53;
          if (v53 >= *(&v82[0] + 1))
          {
            v55 = v53 % *(&v82[0] + 1);
          }
        }

        else
        {
          v55 = v53 & (*(&v82[0] + 1) - 1);
        }

        v56 = *(*&v82[0] + 8 * v55);
        if (v56)
        {
          for (j = *v56; j; j = *j)
          {
            v58 = j[1];
            if (v58 == v53)
            {
              if (j[2] == v50)
              {
                p_i = &i;
                v59 = std::__hash_table<std::__hash_value_type<TRun const*,long>,std::__unordered_map_hasher<TRun const*,std::__hash_value_type<TRun const*,long>,std::hash<TRun const*>,std::equal_to<TRun const*>,true>,std::__unordered_map_equal<TRun const*,std::__hash_value_type<TRun const*,long>,std::equal_to<TRun const*>,std::hash<TRun const*>,true>,std::allocator<std::__hash_value_type<TRun const*,long>>>::__emplace_unique_key_args<TRun const*,std::piecewise_construct_t const&,std::tuple<TRun const* const&>,std::tuple<>>(v82, v50);
                std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](&v85, v59 + 3);
                v50 = i;
                break;
              }
            }

            else
            {
              if (v54.u32[0] > 1uLL)
              {
                if (v58 >= *(&v82[0] + 1))
                {
                  v58 %= *(&v82[0] + 1);
                }
              }

              else
              {
                v58 &= *(&v82[0] + 1) - 1;
              }

              if (v58 != v55)
              {
                break;
              }
            }
          }
        }
      }

      v50 = *(v50 + 24);
    }

    v60 = v90;
    v61 = v91;
    if (v90 != v91)
    {
      v62 = v91 - 1;
      if ((v91 - 1) > v90)
      {
        v63 = v90 + 8;
        do
        {
          v64 = *(v63 - 8);
          *(v63 - 8) = *v62;
          *v62-- = v64;
          v65 = v63 >= v62;
          v63 += 8;
        }

        while (!v65);
      }
    }

    v66 = v85;
    if (v60 == v61)
    {
      v67 = v86;
    }

    else
    {
      v67 = v86;
      do
      {
        if (v66 != v67)
        {
          v68 = *v60;
          v69 = v66;
          do
          {
            if (*v69 > v68)
            {
              *v69 = *v69 - 1;
            }

            ++v69;
          }

          while (v69 != v67);
        }

        ++v60;
      }

      while (v60 != v61);
    }

    v70 = v66 + 1;
    v71 = v66;
    if (v66 != v67)
    {
      v71 = v66;
      if (v70 != v67)
      {
        v72 = *v66;
        v73 = v66 + 1;
        v71 = v66;
        v74 = v66 + 1;
        do
        {
          v76 = *v74++;
          v75 = v76;
          if (v76 < v72)
          {
            v72 = v75;
            v71 = v73;
          }

          v73 = v74;
        }

        while (v74 != v67);
      }
    }

    v77 = *v71;
    if (v77)
    {
      if (v66 == v67)
      {
LABEL_125:
        TLine::LinkRunsWithOrder(this, &v85);
        p_i = &v85;
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&p_i);
        goto LABEL_126;
      }

      v78 = v66;
      do
      {
        *v78 = (*v78 - v77);
        ++v78;
      }

      while (v78 != v67);
    }

    if (v66 != v67)
    {
      while (v70 != v67)
      {
        v80 = *(v70 - 1);
        v79 = *v70++;
        if (v79 < v80)
        {
          *(this + 77) |= 0x40u;
          goto LABEL_125;
        }
      }
    }

    goto LABEL_125;
  }
}

void DetermineVariationValue(uint64_t a1, const __CFDictionary *a2, const __CFDictionary *a3, atomic_ullong *a4, atomic_ullong *a5)
{
  v9 = a1;
  v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a1];
  if (!a2 || (Value = CFDictionaryGetValue(a2, v10)) == 0)
  {
    Value = CFDictionaryGetValue(a3, @"NSCTVariationAxisDefaultValue");
    if (!Value)
    {
      return;
    }
  }

  valuePtr = 0.0;
  CFNumberGetValue(Value, kCFNumberDoubleType, &valuePtr);
  if (v9 == 1936486004)
  {
    return;
  }

  v25 = NAN;
  if (a3)
  {
    v12 = CFDictionaryGetValue(a3, @"NSCTVariationAxisMinimumValue");
  }

  else
  {
    v12 = 0;
  }

  CFNumberGetValue(v12, kCFNumberDoubleType, &v25);
  if (v9 != 2003072104)
  {
    if (v9 == 2003265652 && round(v25) > 0.0)
    {
      v13 = llround(valuePtr);
      if (a4)
      {
        LODWORD(v23) = v13;
        v24 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v23);
      }

      if (v13 >= 0x3E8)
      {
        v14 = 1000;
      }

      else
      {
        v14 = v13;
      }

      WeightOfClass(v14);
      return;
    }

LABEL_24:
    v23 = -1;
    v24 = -1;
    if (a3)
    {
      v21 = CFDictionaryGetValue(a3, @"NSCTVariationAxisMaximumValue");
      CFNumberGetValue(v21, kCFNumberDoubleType, &v24);
      v22 = CFDictionaryGetValue(a3, @"NSCTVariationAxisDefaultValue");
    }

    else
    {
      CFNumberGetValue(0, kCFNumberDoubleType, &v24);
      v22 = 0;
    }

    CFNumberGetValue(v22, kCFNumberDoubleType, &v23);
    return;
  }

  if (round(v25) <= 0.0)
  {
    goto LABEL_24;
  }

  v15 = llround(valuePtr);
  v16 = IndexesBracketing<float const*,double>(kWidthPercentScale, &kWidthPercentScale[11], v15, 0.001);
  v17 = kWidthPercentScale[v16];
  v18 = kWidthPercentScale[HIWORD(v16)];
  v19 = 0.0;
  if (v17 != v18)
  {
    v19 = (v15 - v17) / (v18 - v17);
  }

  v20 = llround(std::__lerp[abi:fn200100]<double>(v16, HIWORD(v16), v19));
  if (a5)
  {
    LODWORD(v23) = v20;
    v24 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &v23);
  }
}

double TRun::GetCrossStreamMinMax(TRun *this)
{
  v1 = *(this + 39);
  if (v1)
  {
    return *(v1 + 16);
  }

  else
  {
    return 0.0;
  }
}

uint64_t TTypesetter::SuggestClusterBreak(TTypesetter *this, const TLine *a2, uint64_t a3, double a4, double a5, uint64_t *a6)
{
  v13 = *MEMORY[0x1E69E9840];
  v6 = *this;
  v9[0] = this;
  v9[1] = v6;
  v9[2] = 0;
  v9[3] = 0;
  v10[0] = 0;
  *(v10 + 6) = 0;
  v10[2] = a3;
  v12 = 0;
  v7 = TTypesetter::SuggestClusterBreak(v9, a2, v11, a4, a5);
  std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](v11);
  return v7;
}

void TTypesetter::FillLine(const TLine **a1, TLine *this, CFRange a3, double a4, double a5)
{
  TLine::CopyStringRange(this, *a1, a3);
  if (*(this + 76))
  {

    TTypesetter::FinishLineFill(a1, this, a4, a5);
  }
}

void TSplicedFont::CopyVariation(TSplicedFont *this@<X0>, void *a2@<X8>)
{
  v4 = (this + 600);
  if (TSplicedFontDict::ComponentHasVariations(this + 75))
  {
    explicit = atomic_load_explicit(v4, memory_order_acquire);
    if (explicit && (Value = CFDictionaryGetValue(explicit, @"variations")) != 0)
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

      v8 = *(*atomic_load_explicit((v7 + 32), memory_order_acquire) + 112);

      v8();
    }
  }

  else
  {
    *a2 = 0;
  }
}

const void *TRunEncoder::Encode(TRunEncoder *this, _CTGlyphStorage *a2, CFRange a3, unsigned int a4, const __CFDictionary *a5)
{
  v14 = a3;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  v13 = a2;
  v15.location = 0;
  v15.length = 0;
  TAttributes::TAttributes(v10, a5, 0, v15, 1);
  TCFBase_NEW<CTGlyphRun,_CTGlyphStorage *&,CFRange &,TAttributes>(&v13, &v14, v10, &v11);
  v12 = atomic_exchange(&v11, 0);

  TAttributes::~TAttributes(v10);
  if (!atomic_load_explicit(&v12, memory_order_acquire))
  {
    v8 = 0;
    goto LABEL_15;
  }

  v7 = *(atomic_load_explicit(&v12, memory_order_acquire) + 48);
  [*(v7 + 216) resetOrigins:{*(v7 + 200), *(v7 + 208)}];
  TStorageRange::SyncWithStorage((v7 + 192));
  if ((a4 & 8) != 0)
  {
    TAttributes::SetRareAttributes(v7 + 40, 1);
  }

  TAttributes::SetRareAttributes(v7 + 40, 2);
  if ((a4 & 0x10) == 0)
  {
    if ((a4 & 2) == 0)
    {
      goto LABEL_6;
    }

LABEL_9:
    *(v7 + 260) |= 1u;
    TAttributes::SetRareAttributes(v7 + 40, 8);
    if ((a4 & 0x20) == 0)
    {
      goto LABEL_12;
    }

LABEL_10:
    if (*(v7 + 256) <= 1)
    {
      *(v7 + 256) = 1;
    }

    goto LABEL_12;
  }

  *(v7 + 225) |= 1u;
  if ((a4 & 2) != 0)
  {
    goto LABEL_9;
  }

LABEL_6:
  if ((a4 & 0x20) != 0)
  {
    goto LABEL_10;
  }

LABEL_12:
  if ((a4 & 5) != 0)
  {
    v8 = TRunEncoder::EncodeWithLineOptions(this, &v12, a4);
  }

  else
  {
    v8 = atomic_exchange(&v12, 0);
  }

LABEL_15:

  return v8;
}

double WeightOfClass(unsigned int a1)
{
  v1 = (5243 * (a1 >> 2)) >> 17;
  if (v1 >= 9)
  {
    v2 = 9;
  }

  else
  {
    v2 = (5243 * (a1 >> 2)) >> 17;
  }

  v3 = v2 + 1;
  v4 = 0.0;
  if ((100 * v1) != (100 * v3))
  {
    v4 = (a1 - (100 * v1)) / (100 * v3 - 100 * v1);
  }

  return std::__lerp[abi:fn200100]<float>(kWeightScale[v1], kWeightScale[v3], v4);
}

uint64_t TTypesetter::SuggestClusterBreak(uint64_t a1, uint64_t a2, uint64_t a3, double a4, double a5)
{
  v26 = *MEMORY[0x1E69E9840];
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

  if (v12 >= a4)
  {
    goto LABEL_9;
  }

  std::__function::__value_func<unsigned char ()(long)>::__value_func[abi:fn200100](v25, a3);
  TTypesetter::FindGraphicalBreak(a1, a2, v25, v22, a4, a5);
  v14 = v22[0];
  Chars = v23;
  v16 = v24;
  std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](v25);
  if ((v14 & 3) != 0)
  {
    return Chars;
  }

  v11.n128_f64[0] = v16 - a4;
  if (v16 - a4 <= v12)
  {
    Chars = TTypesetter::DecomposeLastChars(a1, a2, Chars, a4);
  }

  if (!Chars)
  {
LABEL_9:
    Chars = *(a3 + 24) == 0;
  }

  v17 = Chars + a2;
  v18 = (*(**(a1 + 8) + 40))(*(a1 + 8), v17 - 1, 2, v11);
  if (v18 + v19 >= v17)
  {
    v20 = v17 - 1;
  }

  else
  {
    v20 = v18 + v19 - 1;
  }

  if (v18 + v19 > v17)
  {
    v20 = v18 - 1;
  }

  if (v18 <= a2)
  {
    v20 = v18 + v19 - 1;
  }

  return v20 - a2 + 1;
}

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
  v8 = TTypesetter::SuggestClusterBreak(&v10, a2, v18, a4, a5);
  std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](v18);
  return v8;
}

const void *CTRunCreateMutableRunsWithStorageAndOptions(_CTGlyphStorage *a1, CFIndex a2, CFIndex a3, const __CFDictionary *a4, unsigned int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = 0;
  if (a1 && a6)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      result = 0;
      if (a4)
      {
        if ((a2 & 0x8000000000000000) == 0 && (a3 & 0x8000000000000000) == 0)
        {
          count = a1->_count;
          if (a2 + a3 <= count)
          {
            v18 = count - a2;
            if (a3)
            {
              v19.length = a3;
            }

            else
            {
              v19.length = v18;
            }

            v20[0] = a6;
            v20[1] = a7;
            v20[2] = a8;
            v19.location = a2;
            return TRunEncoder::Encode(v20, a1, v19, a5, a4);
          }
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

double TFont::GetOpticalBoundsForGlyphs(TFont *this, const unsigned __int16 *a2, CGRect *a3, uint64_t a4)
{
  v80 = *MEMORY[0x1E69E9840];
  v8 = *(this + 51);
  v9 = MEMORY[0x1E695F058];
  if (v8 && (*(*v8 + 408))(v8))
  {
    v66 = 0xAAAAAAAAAAAAAAAALL;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v65[3] = v10;
    v65[4] = v10;
    v65[2] = v10;
    v65[0] = v10;
    v65[1] = v10;
    CommonTable = TBaseFont::GetCommonTable(*(this + 51), 1195656518, 0);
    OTL::GDEF::GDEF(v65, CommonTable);
    v64 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v63[3] = v12;
    v63[4] = v12;
    v63[1] = v12;
    v63[2] = v12;
    v63[0] = v12;
    v13 = TBaseFont::GetCommonTable(*(this + 51), 1196445523, 0);
    OTL::GCommon::GCommon(v63, 1, this, v13, v65, 1145457748, 0);
    *&v63[0] = &unk_1EF2587A8;
    v14 = (this + 56);
    v15 = (this + 56);
    if (!*(this + 14))
    {
      TFont::InitStrikeMetrics(this);
    }

    v61 = a3;
    v16 = v15[1];
    v17 = (this + 56);
    if (!*v14)
    {
      TFont::InitStrikeMetrics(this);
    }

    if (a4)
    {
      v18 = v17[2];
      v19 = -v18;
      v20 = v16 + v18;
      v21 = 2 * a4;
      v22 = a2;
      v23 = a3;
      do
      {
        v24 = *v22++;
        LOWORD(v70) = v24;
        v25 = *(v9 + 16);
        v68 = *v9;
        v69[0] = v25;
        TFont::GetAdvancesForGlyphs(this, &v70, v69, 2, 1, 0, 0, 0);
        v26 = *v69;
        *&v23->origin.x = v68;
        v23->origin.y = v19;
        v23->size.width = v26;
        v23->size.height = v20;
        ++v23;
        v21 -= 2;
      }

      while (v21);
    }

    if (!*v14)
    {
      TFont::InitStrikeMetrics(this);
      v14 = v27;
    }

    v28 = v14[5];
    *&v29 = 0xAAAAAAAAAAAAAAAALL;
    *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v78 = v29;
    v79 = v29;
    v76 = v29;
    v77 = v29;
    v74 = v29;
    v75 = v29;
    v72 = v29;
    v73 = v29;
    v70 = v29;
    v71 = v29;
    v62 = 1818649188;
    OTL::FeatureBuffer::FeatureBuffer(&v68, &v62, 1);
    OTL::GCommon::GetLookups(v63, &v68, &v70);
    v67 = COERCE_DOUBLE(&v68);
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v67);
    if (a4 >= 1 && BYTE8(v79))
    {
      p_size = &a3->size;
      v31 = a2;
      v32 = a4;
      do
      {
        v67 = NAN;
        *&v68 = -1;
        if ((BYTE8(v79) & 1) == 0)
        {
LABEL_52:
          __break(1u);
        }

        if (OTL::GPOS::GetSinglePosAdjustments(v63, &v70, *v31, &v68, &v67))
        {
          v33 = v28 * *&v68;
          p_size[-1].width = p_size[-1].width - v28 * *&v68;
          p_size->width = v33 + p_size->width;
        }

        p_size += 2;
        ++v31;
        --v32;
      }

      while (v32);
      if ((BYTE8(v79) & 1) == 0)
      {
LABEL_33:
        *&v49 = 0xAAAAAAAAAAAAAAAALL;
        *(&v49 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v78 = v49;
        v79 = v49;
        v76 = v49;
        v77 = v49;
        v74 = v49;
        v75 = v49;
        v72 = v49;
        v73 = v49;
        v70 = v49;
        v71 = v49;
        v62 = 1920229988;
        OTL::FeatureBuffer::FeatureBuffer(&v68, &v62, 1);
        OTL::GCommon::GetLookups(v63, &v68, &v70);
        v67 = COERCE_DOUBLE(&v68);
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v67);
        if (a4 >= 1 && BYTE8(v79))
        {
          p_width = &v61->size.width;
          v51 = a4;
          do
          {
            v67 = NAN;
            *&v68 = -1;
            if ((BYTE8(v79) & 1) == 0)
            {
              goto LABEL_52;
            }

            if (OTL::GPOS::GetSinglePosAdjustments(v63, &v70, *a2, &v68, &v67))
            {
              *p_width = v28 * v67 + *p_width;
            }

            p_width += 4;
            ++a2;
            --v51;
          }

          while (v51);
          if ((BYTE8(v79) & 1) == 0)
          {
            goto LABEL_44;
          }
        }

        else if (!BYTE8(v79))
        {
          goto LABEL_44;
        }

        *&v68 = &v70;
        std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v68);
LABEL_44:
        x = *v9;
        y = *(v9 + 8);
        v53 = *(v9 + 16);
        v54 = *(v9 + 24);
        if (a4 >= 1)
        {
          v55 = &v61->size;
          do
          {
            width = v55[-1].width;
            height = v55[-1].height;
            v59 = v55->width;
            v58 = v55->height;
            v85.origin.x = x;
            v85.origin.y = y;
            v85.size.width = v53;
            v85.size.height = v54;
            if (CGRectIsEmpty(v85))
            {
              x = width;
              y = height;
              v53 = v59;
              v54 = v58;
            }

            else
            {
              v86.origin.x = width;
              v86.origin.y = height;
              v86.size.width = v59;
              v86.size.height = v58;
              if (!CGRectIsEmpty(v86))
              {
                v87.origin.x = x;
                v87.origin.y = y;
                v87.size.width = v53;
                v87.size.height = v54;
                v90.origin.x = width;
                v90.origin.y = height;
                v90.size.width = v59;
                v90.size.height = v58;
                v88 = CGRectUnion(v87, v90);
                x = v88.origin.x;
                y = v88.origin.y;
                v53 = v88.size.width;
                v54 = v88.size.height;
              }
            }

            v55 += 2;
            --a4;
          }

          while (a4);
        }

        return x;
      }
    }

    else if (!BYTE8(v79))
    {
      goto LABEL_33;
    }

    *&v68 = &v70;
    std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v68);
    goto LABEL_33;
  }

  v68 = xmmword_18475C438;
  v69[0] = unk_18475C448;
  memset(&v69[1], 170, 40);
  TAATOpbdTable::TAATOpbdTable(&v68, this);
  x = *v9;
  v35 = *(v9 + 8);
  v36 = *(v9 + 16);
  v37 = *(v9 + 24);
  if (a4 >= 1)
  {
    v38 = &a3->size;
    do
    {
      v39 = *&v69[2];
      v40 = (&v69[-1] + (*(&v69[2] + 1) >> 1));
      if (BYTE8(v69[2]))
      {
        v39 = *(*v40 + LODWORD(v69[2]));
      }

      v41 = *a2++;
      v42 = v39(v40, v41);
      v44 = v43;
      v46 = v45;
      v48 = v47;
      v38[-1].width = v42;
      v38[-1].height = v43;
      v38->width = v45;
      v38->height = v47;
      v81.origin.x = x;
      v81.origin.y = v35;
      v81.size.width = v36;
      v81.size.height = v37;
      if (CGRectIsEmpty(v81))
      {
        x = v42;
        v35 = v44;
        v36 = v46;
        v37 = v48;
      }

      else
      {
        v82.origin.x = v42;
        v82.origin.y = v44;
        v82.size.width = v46;
        v82.size.height = v48;
        if (!CGRectIsEmpty(v82))
        {
          v83.origin.x = x;
          v83.origin.y = v35;
          v83.size.width = v36;
          v83.size.height = v37;
          v89.origin.x = v42;
          v89.origin.y = v44;
          v89.size.width = v46;
          v89.size.height = v48;
          v84 = CGRectUnion(v83, v89);
          x = v84.origin.x;
          v35 = v84.origin.y;
          v36 = v84.size.width;
          v37 = v84.size.height;
        }
      }

      v38 += 2;
      --a4;
    }

    while (a4);
  }

  std::unique_ptr<TAATControlPointAccess>::reset[abi:fn200100](&v69[3], 0);

  return x;
}

uint64_t TBaseFont::HasOpticalBoundsInGPOS(TBaseFont *this)
{
  if ((*(this + 46) & 0x4000000) != 0)
  {
    return (*(this + 45) >> 26) & 1;
  }

  memset(v8, 170, sizeof(v8));
  CustomOTFeatures(this, 0, v8);
  v2 = v8[0];
  v3 = v8[0];
  if (v8[0] != v8[1])
  {
    v4 = v8[0];
    while (*v4 != 1818649188)
    {
      if (++v4 == v8[1])
      {
        goto LABEL_9;
      }
    }

    if (v4 != v8[1])
    {
      goto LABEL_14;
    }

LABEL_9:
    v3 = v8[0];
    while (*v3 != 1920229988)
    {
      if (++v3 == v8[1])
      {
        goto LABEL_15;
      }
    }
  }

  if (v3 == v8[1])
  {
LABEL_15:
    v6 = 0;
    v5 = 0;
  }

  else
  {
LABEL_14:
    v5 = 1;
    v6 = 0x4000000;
  }

  atomic_fetch_or_explicit(this + 45, v6, memory_order_relaxed);
  atomic_fetch_or_explicit(this + 46, 0x4000000u, memory_order_relaxed);
  if (v2)
  {
    v8[1] = v2;
    operator delete(v2);
  }

  return v5;
}

unint64_t TLine::InsertPartialRun(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  (*(a3 + 64))(&v9, a3, a4, a5, 2);
  TLine::InsertRun(a1, a2, atomic_load_explicit(&v9, memory_order_acquire));
  explicit = atomic_load_explicit(&v9, memory_order_acquire);

  return explicit;
}

uint64_t CTLineSuggestClusterBreakWithTabOverflow(uint64_t result, const TLine *a2, uint64_t *a3, uint64_t *a4, double a5, double a6)
{
  if (result)
  {
    v7 = *(result + 40);
    v8 = -1;
    result = TTypesetter::SuggestClusterBreak(v7, a2, &v8, a5, a6, a4);
    if (a3)
    {
      *a3 = v8;
    }
  }

  return result;
}

float std::__lerp[abi:fn200100]<float>(float a1, float a2, float a3)
{
  if (a1 <= 0.0 && a2 >= 0.0 || a1 >= 0.0 && a2 <= 0.0)
  {
    return ((1.0 - a3) * a1) + (a3 * a2);
  }

  v4 = a3 <= 1.0;
  if (a3 != 1.0)
  {
    v5 = a1 + (a3 * (a2 - a1));
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

void CTGlyphRun::CloneRange(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, void *a5@<X8>)
{
  v8[0] = a2;
  v8[1] = a3;
  v7 = a4;
  TCFBase_NEW<CTGlyphRun,TRun const&,CFRange &,TRun::SubrangingStyle &>(a1 + 72, v8, &v7, &v6);
  *a5 = atomic_exchange(&v6, 0);
}

void CustomOTFeatures(const TBaseFont *this@<X0>, int a2@<W1>, void **a3@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v53[5] = v6;
  v53[6] = v6;
  v53[3] = v6;
  v53[4] = v6;
  v53[1] = v6;
  v53[2] = v6;
  v53[0] = v6;
  v51 = 0;
  v52 = 0;
  v50 = 0;
  v54 = 0xAAAAAAAAAAAAAAAALL;
  v55 = v53;
  MergeOTFeaturesFromTable<TInlineVector<unsigned int,30ul>>(&v50, this, 1196643650);
  MergeOTFeaturesFromTable<TInlineVector<unsigned int,30ul>>(&v50, this, 1196445523);
  v7 = std::__unique[abi:fn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>,std::__equal_to &>(v50, v51);
  v8 = v51;
  if (v7 > v51)
  {
LABEL_70:
    __break(1u);
  }

  v9 = v50;
  if (v7 != v51)
  {
    v8 = v7;
    v51 = v7;
  }

  *a3 = 0;
  a3[1] = 0;
  a3[2] = 0;
  v48 = a3;
  if (v9 != v8)
  {
    v10 = 0;
    while (v10 != 495)
    {
      v11 = kMasterFeatureMap[v10];
      if (v11 <= *v9)
      {
        v10 += 3;
        if (v11 >= *v9)
        {
          ++v9;
        }
      }

      else
      {
        std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:fn200100](&v48, v9++);
      }

      if (v9 == v8)
      {
        goto LABEL_12;
      }
    }

    v49 = v48;
    while (v9 != v8)
    {
      std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:fn200100](&v49, v9++);
    }
  }

LABEL_12:
  if (a2)
  {
    for (i = 0; i != 495; i += 3)
    {
      v13 = &kMasterFeatureMap[i];
      if ((kMasterFeatureMap[i + 2] & 0x8000) != 0)
      {
        v14 = v50;
        if (v51 != v50)
        {
          v15 = v51 - v50;
          v16 = *v13;
          do
          {
            v17 = v15 >> 1;
            v18 = &v14[v15 >> 1];
            v20 = *v18;
            v19 = v18 + 1;
            v15 += ~(v15 >> 1);
            if (v20 < v16)
            {
              v14 = v19;
            }

            else
            {
              v15 = v17;
            }
          }

          while (v15);
          if (v14 != v51 && v16 >= *v14 && NumberOfGlyphVariants(this, *v13) >= 2)
          {
            v22 = *a3;
            v21 = a3[1];
            v23 = v21 - *a3;
            if (v21 == *a3)
            {
              v25 = a3[1];
            }

            else
            {
              v24 = v23 >> 2;
              v25 = *a3;
              do
              {
                v26 = v24 >> 1;
                v27 = &v25[v24 >> 1];
                v29 = *v27;
                v28 = (v27 + 1);
                v24 += ~(v24 >> 1);
                if (v29 < v16)
                {
                  v25 = v28;
                }

                else
                {
                  v24 = v26;
                }
              }

              while (v24);
            }

            v30 = a3[2];
            if (v21 >= v30)
            {
              v32 = (v23 >> 2) + 1;
              if (v32 >> 62)
              {
                std::__throw_bad_array_new_length[abi:fn200100]();
              }

              v33 = v30 - v22;
              v34 = (v30 - v22) >> 1;
              if (v34 > v32)
              {
                v32 = v34;
              }

              if (v33 >= 0x7FFFFFFFFFFFFFFCLL)
              {
                v35 = 0x3FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v35 = v32;
              }

              if (v35)
              {
                std::allocator<unsigned int>::allocate_at_least[abi:fn200100](a3, v35);
              }

              v36 = v25 - v22;
              v37 = (v25 - v22) >> 2;
              v38 = (4 * v37);
              if (!v37)
              {
                if (v36 < 1)
                {
                  v41 = v36 >> 1;
                  if (v25 == v22)
                  {
                    v42 = 1;
                  }

                  else
                  {
                    v42 = v41;
                  }

                  std::allocator<unsigned int>::allocate_at_least[abi:fn200100](a3, v42);
                }

                v38 = (v38 - (((v36 >> 1) + 2) & 0xFFFFFFFFFFFFFFFCLL));
              }

              *v38 = v16;
              memcpy(v38 + 1, v25, a3[1] - v25);
              v43 = *a3;
              v44 = v38 + a3[1] - v25 + 4;
              a3[1] = v25;
              v45 = v25 - v43;
              v46 = v38 - (v25 - v43);
              memcpy(v46, v43, v45);
              v47 = *a3;
              *a3 = v46;
              a3[1] = v44;
              a3[2] = 0;
              if (v47)
              {
                operator delete(v47);
              }
            }

            else if (v25 == v21)
            {
              *v21 = v16;
              a3[1] = v21 + 1;
            }

            else
            {
              if (v21 < 4)
              {
                v31 = a3[1];
              }

              else
              {
                *v21 = *(v21 - 1);
                v31 = (v21 + 1);
              }

              a3[1] = v31;
              if (v21 != (v25 + 1))
              {
                memmove(v25 + 1, v25, v21 - (v25 + 1));
                v31 = a3[1];
              }

              if (v31 < v25)
              {
                goto LABEL_70;
              }

              v39 = v31 <= v13 || v25 > v13;
              v40 = 1;
              if (v39)
              {
                v40 = 0;
              }

              *v25 = v13[v40];
            }
          }
        }
      }
    }
  }

  v49 = &v50;
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v49);
}

void TInstanceFont::ModifyTraitsDictionary(TInstanceFont *this@<X0>, const __CFDictionary *a2@<X1>, void *a3@<X8>)
{
  if (*(this + 624) == 1)
  {
    v6 = 0xAAAAAAAAAAAAAAAALL;
    TCFMutableDictionary::TCFMutableDictionary(&v6, a2);
    if (*(this + 624))
    {
      TCFNumber::TCFNumber<double>(&v5, *(this + 77));
      CFDictionarySetValue(atomic_load_explicit(&v6, memory_order_acquire), @"NSCTFontWeightTrait", atomic_load_explicit(&v5, memory_order_acquire));

      *a3 = atomic_exchange(&v6, 0);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    *a3 = 0;
  }
}

uint64_t std::__function::__value_func<unsigned char ()(long)>::__value_func[abi:fn200100](uint64_t a1, uint64_t a2)
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

void TTypesetter::FindGraphicalBreak(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>, double a6@<D1>)
{
  v6 = a4;
  v115[3] = *MEMORY[0x1E69E9840];
  v7 = *a1;
  if (*(*a1 + 80) + *(*a1 + 72) <= a2)
  {
    *a4 = 1;
    *(a4 + 8) = 0;
    *(a4 + 16) = 0;
    return;
  }

  std::__function::__value_func<unsigned char ()(long)>::__value_func[abi:fn200100](v89, a3);
  TLine::FindWidthOverflow(v7, a2, 0, v89, &v107, a5);
  v13 = v107;
  v14 = *(&v107 + 1);
  v15 = *&v108;
  std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](v89);
  v16 = v13 & 0x20;
  if ((v13 & 0x5C) == 0)
  {
    goto LABEL_68;
  }

  v17 = *a1;
  v67 = xmmword_18475AE90;
  v82[5] = unk_18475AEAC;
  v65 = unk_18475AEC0;
  memset(v66, 170, sizeof(v66));
  v85 = unk_18475AEC0;
  memset(v64, 170, sizeof(v64));
  v62 = unk_18475AE80;
  v63 = xmmword_18475AE70;
  memset(v61, 170, sizeof(v61));
  memset(&v75[8], 170, 24);
  memset(v74, 0, sizeof(v74));
  *v75 = 0;
  v76 = &v75[8];
  BYTE8(v85) = 0;
  v80 = 0;
  v77 = 0u;
  v78 = 0u;
  v79 = 0u;
  memset(v82, 0, 20);
  v83 = 0;
  v84 = 0;
  LOBYTE(v85) = 0;
  v88 = 0;
  v86 = 0;
  v87 = 0;
  v81 = 0xFFEFFFFFFFFFFFFFLL;
  if ((v13 & 8) != 0)
  {
    v116.length = *(v17 + 10) - a2;
    v116.location = a2;
    TLine::CopyStringRange(v74, v17, v116);
    TTypesetter::ReorderRunsIfNecessary(a1, v74);
    TLine::UpdateWidth(v74, a6);
    if (v18 != 0.0)
    {
      std::__function::__value_func<unsigned char ()(long)>::__value_func[abi:fn200100](v73, a3);
      v17 = v74;
      TLine::FindWidthOverflow(v74, a2, 0, v73, &v107, a5);
      v13 = v107;
      v14 = *(&v107 + 1);
      v15 = *&v108;
      std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](v73);
    }
  }

  if ((v13 & 0x54) == 0)
  {
    goto LABEL_67;
  }

  v55 = v6;
  v54 = v16;
  v60 = v17;
  if ((v13 & 0x10) != 0)
  {
    v23 = v14;
    if (v14 >= 1)
    {
      v59 = *(v60 + 9);
      v58 = *(v60 + 10);
      v68.location = &v109 + 8;
      v24 = 0x7FFFFFFFFFFFFFFFLL;
      v25 = v14;
      while (1)
      {
        v114 = v65;
        *&v112[28] = HIDWORD(v66[1]);
        *(&v109 + 1) = *(&v61[1] + 1);
        v110 = v61[0];
        v107 = 0u;
        v108 = 0u;
        *&v109 = 0;
        *v111 = v68.location;
        BYTE8(v114) = 0;
        memset(&v112[8], 0, 20);
        memset(&v111[8], 0, 56);
        v113 = 0uLL;
        LOBYTE(v114) = 0;
        memset(v115, 0, 24);
        *v112 = 0xFFEFFFFFFFFFFFFFLL;
        v118.location = a2;
        v118.length = v25;
        TLine::CopyStringRange(&v107, v60, v118);
        TTypesetter::MakeLineConsistent(a1, &v107);
        if ((v112[24] & 2) != 0)
        {
          TTypesetter::ReorderRunsIfNecessary(a1, &v107);
          v26 = a1[1];
          v70 = &v107;
          v71 = v26;
          v103 = 0xAAAAAAAAAAAAAAAALL;
          v104 = NAN;
          *&v105 = -3.72066208e-103;
          TTabEngine::ApplyTabs(&v70, a6, a5, v27, &v103);
          if (v105 == 1)
          {
            v28 = a1[6];
            if (v28)
            {
              break;
            }
          }
        }

        *&v92 = 0;
        TLine::FindWidthOverflow(&v107, a2, 1, &v90, &v103, a5);
        v13 = v103;
        v29 = v104;
        v15 = *&v105;
        std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](&v90);
        if ((v13 & 2) != 0)
        {
          goto LABEL_35;
        }

        v23 = *&v29;
        if ((v13 & 1) != 0 || *&v29 >= v24)
        {
          if (*&v29 + a2 < v58 + v59)
          {
            v13 &= ~1u;
          }

          goto LABEL_35;
        }

        TLine::GetTrailingWhitespace(&v107, &v103);
        if ((v103 + *&v29) >= v25)
        {
          v13 = 1;
          v15 = *&v111[40];
          v29 = *&v25;
LABEL_35:
          TLine::~TLine(&v107);
          v23 = *&v29;
          goto LABEL_36;
        }

        if ((v13 & 0x10) == 0)
        {
          goto LABEL_35;
        }

        v25 += ~v103;
        TLine::~TLine(&v107);
        v24 = *&v29;
        if (v25 <= 0)
        {
          goto LABEL_36;
        }
      }

      v52 = v103;
      *v28 = v103;
      v23 = v52 - a2;
      v15 = v104 - a6;
      TLine::~TLine(&v107);
      v13 = 5;
    }

LABEL_36:
    v56 = v23;
    v17 = v60;
    if ((v13 & 0x40) == 0)
    {
LABEL_30:
      v14 = v56;
      goto LABEL_66;
    }
  }

  else
  {
    v56 = v14;
    if ((v13 & 4) != 0)
    {
      *&v112[28] = HIDWORD(v66[1]);
      v114 = v65;
      *(&v109 + 1) = *(&v61[1] + 1);
      v110 = v61[0];
      v107 = 0u;
      v108 = 0u;
      *&v109 = 0;
      *v111 = &v109 + 8;
      BYTE8(v114) = 0;
      memset(&v111[8], 0, 56);
      memset(&v112[8], 0, 20);
      LOBYTE(v114) = 0;
      memset(v115, 0, 24);
      v113 = 0uLL;
      *v112 = 0xFFEFFFFFFFFFFFFFLL;
      v117.location = a2;
      v117.length = v14;
      TLine::CopyStringRange(&v107, v17, v117);
      TTypesetter::MakeLineConsistent(a1, &v107);
      TTypesetter::ReorderRunsIfNecessary(a1, &v107);
      v19 = a1[1];
      v68.length = &v107;
      v69 = v19;
      v103 = 0xAAAAAAAAAAAAAAAALL;
      v104 = NAN;
      *&v105 = -3.72066208e-103;
      TTabEngine::ApplyTabs(&v68.length, a6, a5, v20, &v103);
      if (v105 == 1 && (v21 = a1[6]) != 0)
      {
        v22 = v103;
        *v21 = v103;
        v56 = v22 - a2;
        v15 = v104 - a6;
        v13 = 5;
      }

      else
      {
        *&v92 = 0;
        TLine::FindWidthOverflow(&v107, a2, 1, &v90, &v70, a5);
        v13 = v70;
        v30 = v71;
        v15 = v72;
        std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](&v90);
        v56 = v30;
        if ((v13 & 1) != 0 && v30 + a2 < *(v17 + 10) + *(v17 + 9))
        {
          v13 &= ~1u;
        }
      }

      TLine::~TLine(&v107);
    }

    if ((v13 & 0x40) == 0)
    {
      goto LABEL_30;
    }
  }

  v31 = 0;
  v57 = *(v17 + 9);
  v32 = *(v17 + 10) + v57;
  v33 = v13 & 0xFE;
  v68.location = a2;
  if (v56 + a2 >= v32)
  {
    v33 = v13;
  }

  v53 = v33;
  v34 = 0.0;
  v13 = 0;
  while (1)
  {
    v109 = v61[1];
    v110 = v61[0];
    *&v111[32] = v63;
    *&v111[48] = v62;
    *v111 = v64[1];
    *&v111[16] = v64[0];
    v114 = v65;
    memset(v115, 170, 24);
    *v112 = v67;
    *&v112[16] = v66[1];
    v113 = v66[0];
    v107 = v61[3];
    v108 = v61[2];
    v36 = **a1;
    v35 = *(*a1 + 8);
    if (v35)
    {
      atomic_fetch_add_explicit((v35 + 8), 1uLL, memory_order_relaxed);
    }

    *&v107 = v36;
    *(&v107 + 1) = v35;
    *&v109 = 0;
    v108 = 0uLL;
    BYTE8(v114) = 0;
    memset(&v112[8], 0, 21);
    memset(&v111[8], 0, 56);
    v113 = 0uLL;
    LOBYTE(v114) = 0;
    memset(v115, 0, 24);
    *v111 = &v109 + 8;
    *v112 = 0xFFEFFFFFFFFFFFFFLL;
    location = v68.location;
    v119.location = v68.location;
    v119.length = v14;
    TLine::CopyStringRange(&v107, v60, v119);
    TTypesetter::MakeLineConsistent(a1, &v107);
    if ((v112[26] & 4) == 0)
    {
      if (!v31)
      {
        v31 = v56;
        v34 = v15;
      }

      goto LABEL_64;
    }

    v38 = v112[24];
    if ((v112[24] & 2) != 0)
    {
      break;
    }

LABEL_47:
    if ((v38 & 8) != 0)
    {
      TLine::GetLeftPartialHangingGlyphCountAndWidth(&v107, 0);
      v43 = v45;
      TLine::GetRightHangersGlyphCountAndWidth(&v107, 0);
    }

    else
    {
      TLine::GetLeftHangersGlyphCountAndWidth(&v107, 0);
      v43 = v42;
      TLine::GetRightPartialHangingGlyphCountAndWidth(&v107, 0);
    }

    v46 = v44 + v43;
    v70 = 0xAAAAAAAAAAAAAAAALL;
    v71 = 0xAAAAAAAAAAAAAAAALL;
    v72 = NAN;
    v106 = 0;
    TLine::FindWidthOverflow(&v107, v68.location, 1, &v103, &v70, v44 + v43 + a5);
    std::__function::__value_func<unsigned char ()(long)>::~__value_func[abi:fn200100](&v103);
    v47 = v72 - v46;
    v72 = v72 - v46;
    v48 = v70;
    if ((v70 & 2) != 0)
    {
      v31 = v71;
      v34 = v47;
      v13 = v70;
LABEL_64:
      TLine::~TLine(&v107);
      goto LABEL_65;
    }

    if (v70)
    {
      v48 = v53;
      LOBYTE(v70) = v53;
    }

    if (v71 > v31)
    {
      v13 = v48;
      v31 = v71;
      v34 = v47;
    }

    if (v71 < v14)
    {
      goto LABEL_64;
    }

    v68.length = v14;
    if (v57 > v14 || v32 <= v14)
    {
      goto LABEL_64;
    }

    v49 = a1[1];
    v91 = 0u;
    v92 = 0u;
    v93 = 0u;
    v94 = 0u;
    v95 = 0u;
    v96 = 0u;
    v97 = 0u;
    v98 = 0u;
    v99 = 0u;
    v100 = 0u;
    v102 = 0;
    v101 = 0u;
    v50 = *(v49 + 16);
    v90 = v49;
    *&v101 = v50;
    TCharStreamIterator::GetFullChar(&v90, &v68.length, 0);
    v14 = v68.length + 1;
    TLine::~TLine(&v107);
    if (v14 + v68.location > v32)
    {
      goto LABEL_65;
    }
  }

  TTypesetter::ReorderRunsIfNecessary(a1, &v107);
  v39 = a1[1];
  v70 = &v107;
  v71 = v39;
  v90 = 0xAAAAAAAAAAAAAAAALL;
  *&v91 = -1;
  *(&v91 + 1) = 0xAAAAAAAAAAAAAAAALL;
  TTabEngine::ApplyTabs(&v70, a6, a5, v40, &v90);
  if (BYTE8(v91) != 1 || (v41 = a1[6]) == 0)
  {
    v38 = v112[24];
    goto LABEL_47;
  }

  v51 = v90;
  *v41 = v90;
  v31 = v51 - location;
  v34 = *&v91 - a6;
  TLine::~TLine(&v107);
  v13 = 5;
LABEL_65:
  v14 = v31;
  v15 = v34;
LABEL_66:
  v16 = v54;
  v6 = v55;
LABEL_67:
  TLine::~TLine(v74);
LABEL_68:
  *v6 = v13 | v16;
  *(v6 + 8) = v14;
  *(v6 + 16) = v15;
}

uint64_t TLine::FindWidthOverflow@<X0>(uint64_t this@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v7 = this;
  v10 = *(this + 16);
  v9 = *(this + 24);
  v11 = v9 - v10;
  if (v9 == v10 || (this = TLine::FindRunWithCharIndex(this, a2, 1), this < 0) || v11 >> 3 <= this)
  {
    v17 = v7[9] - a2 + v7[10];
    v19 = 0.0;
    v20 = 1;
    goto LABEL_26;
  }

  v15 = v7[2];
  if (this < ((v7[3] - v15) >> 3))
  {
    v16 = *(*(v15 + 8 * this) + 40);
    this = (*(*v16 + 48))(&v27, v16, a2, *v7, a3, a6);
    v17 = v28;
    v18 = v29;
    v19 = v29 + 0.0;
    v20 = (16 * *(v7 + 154)) & 0x40 | v27;
    if ((v27 & 2) == 0)
    {
      if (v28 >= 1)
      {
        v21 = v16[1];
        if (v21 <= v28 + a2 && v16[2] + v21 > v28 + a2)
        {
          goto LABEL_26;
        }

        do
        {
          a6 = a6 - v18;
          if (a6 <= 0.0)
          {
            break;
          }

          v16 = v16[3];
          if (!v16)
          {
            break;
          }

          v23 = v16[1];
          v24 = v16[2];
          v25 = *(a4 + 24);
          if (v25)
          {
            v27 = v16[1];
            this = (*(*v25 + 48))(v25, &v27);
            if (this)
            {
              v20 |= this;
              goto LABEL_26;
            }
          }

          this = (*(*v16 + 48))(&v27, v16, v23, *v7, a3, a6);
          v18 = v29;
          v20 |= v27;
          if (v23 - a2 + v28 > v17)
          {
            v17 = v23 - a2 + v28;
          }

          v19 = v19 + v29;
          if ((v20 & 2) != 0)
          {
            goto LABEL_26;
          }
        }

        while (v28 >= v24 && v28 != 0);
      }

      v20 |= v7[9] - a2 + v7[10] == v17;
    }

LABEL_26:
    *a5 = v20;
    *(a5 + 8) = v17;
    *(a5 + 16) = v19;
    return this;
  }

  __break(1u);
  return this;
}

uint64_t TRun::TRun(uint64_t a1, uint64_t a2, uint64_t a3, CFIndex a4, int a5)
{
  *a1 = &unk_1EF256D38;
  *(a1 + 8) = a3;
  *(a1 + 16) = a4;
  *(a1 + 89) = 0;
  *(a1 + 91) = 0;
  *(a1 + 96) = 0;
  *(a1 + 144) = 0;
  *(a1 + 184) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
  *(a1 + 24) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 40) = 0u;
  TAttributes::operator=(a1 + 40, a2 + 40);
  TStorageRange::TStorageRange((a1 + 192), (a2 + 192));
  *(a1 + 256) = *(a2 + 256);
  v10 = *(a2 + 272);
  *(a1 + 264) = -1;
  *(a1 + 272) = v10;
  v11 = MEMORY[0x1E695F060];
  *(a1 + 280) = 0;
  *(a1 + 288) = *v11;
  *(a1 + 304) = *(a2 + 304);
  if (*(a2 + 312))
  {
    operator new();
  }

  v12 = 0;
  *(a1 + 312) = 0;
  v13 = *(a2 + 8);
  v14 = *(a2 + 16);
  if (a3 != v13 || a4 != v14)
  {
    v16 = a3 + a4;
    if (a5 == 3 || *(a1 + 256) != 2)
    {
      goto LABEL_25;
    }

    v17 = v14 + v13;
    v19 = a3 == v13 || v17 == v16;
    if (a5 == 1 && v19)
    {
      v20 = v17 - v16;
      if (!v20)
      {
        v14 = a4;
      }

      if (a3 == v13)
      {
        v21.length = v20;
      }

      else
      {
        v21.length = v14;
      }

      if (a3 == v13)
      {
        v21.location = a3 + a4;
      }

      else
      {
        v21.location = *(a2 + 8);
      }

      if (TRun::IsRangeMonotonic(a2, v21))
      {
LABEL_25:
        GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(a2, v16 - 1);
        v23 = TRun::GetGlyphIndexForCharIndex<false>(a2, a3);
        v24 = *(*(a2 + 216) + 48);
        v25 = *(a2 + 200);
        if (*(a1 + 224))
        {
          v26 = -1;
        }

        else
        {
          v26 = 1;
        }

        v51 = *(*(a2 + 216) + 48);
        if ((a5 & 0xFFFFFFFD) == 1 || *(a1 + 256) == 1)
        {
          v27 = *(a2 + 208);
          if (*(a1 + 224))
          {
            v28 = -1;
          }

          else
          {
            v28 = *(a2 + 208);
          }

          v29 = v28 - v26;
          do
          {
            v30 = GlyphIndexForChar;
            if (v29 == GlyphIndexForChar)
            {
              break;
            }

            GlyphIndexForChar += v26;
            v31 = *(v24 + 8 * v26 + 8 * v25 + 8 * v30);
          }

          while (a3 <= v31 && v16 > v31);
          if ((*(a1 + 224) & 1) == 0)
          {
            v27 = -1;
          }

          v33 = v27 + v26;
          do
          {
            v34 = v23;
            if (v33 == v23)
            {
              break;
            }

            v23 -= v26;
            v35 = *(v24 - 8 * v26 + 8 * v25 + 8 * v34);
          }

          while (a3 <= v35 && v16 > v35);
          v23 = v34;
          GlyphIndexForChar = v30;
        }

        if (v23 >= GlyphIndexForChar)
        {
          v37 = GlyphIndexForChar;
        }

        else
        {
          v37 = v23;
        }

        if (v23 - GlyphIndexForChar >= 0)
        {
          v38 = v23 - GlyphIndexForChar;
        }

        else
        {
          v38 = GlyphIndexForChar - v23;
        }

        v53.length = v38 + 1;
        v53.location = v37;
        TStorageRange::SetStorageSubRange((a1 + 192), v53);
        if (a5 != 2)
        {
          goto LABEL_83;
        }

        v52 = TRun::GetGlyphIndexForCharIndex<false>(a2, v16 - 1);
        if (TRun::GetNextChar(a2, v16 - 1, &v52) == v16)
        {
          v39 = *(a1 + 8);
          if (v39 == *(a2 + 8))
          {
            goto LABEL_83;
          }

          if (v39 >= 1)
          {
            v43 = *(a2 + 216);
            v44 = *(a2 + 200);
            v45 = v23;
            while (v45 - v26 >= 0 && *(a2 + 208) > v45 - v26)
            {
              v46 = v45 - v26;
              v47 = *(*(v43 + 48) - 8 * v26 + 8 * v44 + 8 * v45);
              v45 -= v26;
              if (v47 < v39)
              {
                if ((*(*(v43 + 40) + 4 * v44 + 4 * v46) & 8) != 0)
                {
                  goto LABEL_76;
                }

                break;
              }
            }
          }

          if (*(v51 + 8 * v25 + 8 * v23) == v39 && TRun::ResolveCharIndex(a2, v39) == *(a1 + 8))
          {
LABEL_83:
            if (v37 != *(a2 + 200))
            {
              v40 = *(a1 + 312);
              if (v40)
              {
                *v40 = *MEMORY[0x1E695F060];
              }
            }

            v41 = *(a2 + 312);
            if (v41 && *(v41 + 56) != *(v41 + 64))
            {
              TRun::InitStretchFactors(a1);
              v42 = *(a1 + 312);
              std::vector<CGSize>::resize((v42 + 56), v38 + 1);
              v54.length = v38 + 1;
              v54.location = v37;
              TRun::GetStretchFactors(a2, v54, *(v42 + 56));
            }

            return a1;
          }
        }

LABEL_76:
        *(a1 + 256) = 3;
        v48 = *(a1 + 312);
        if (!v48)
        {
          return a1;
        }

        *v48 = *MEMORY[0x1E695F060];
        goto LABEL_78;
      }

      v12 = *(a1 + 312);
    }

    *(a1 + 256) = 3;
    if (!v12)
    {
      return a1;
    }

    *v12 = *v11;
LABEL_78:
    v49 = *(a1 + 312);
    if (v49)
    {
      v50 = *(v49 + 56);
      if (v50 != *(v49 + 64))
      {
        *(v49 + 64) = v50;
      }
    }
  }

  return a1;
}

BOOL TGlyphIterator::MatchCoverSequence<(MatchDirection)1>(TGlyphIterator *a1, unint64_t a2, int a3, unsigned __int16 *a4, uint64_t a5, unint64_t a6, unint64_t *a7)
{
  v12 = a2;
  v14 = *(a1 + 6);
  *(a1 + 6) = a2;
  if (TGlyphIterator::PrevContext(a1, 1))
  {
    while (1)
    {
      v12 = *(a1 + 6);
      v23 = *a1;
      v24 = v12;
      v15 = TRunGlue::TGlyph::glyphID(&v23);
      v27 = 0xAAAAAAAAAAAAAAAALL;
      v16 = *a4++;
      v17 = (a5 + (bswap32(v16) >> 16));
      v23 = v17;
      v24 = a6;
      LODWORD(v27) = 0xFFFF;
      v28 = 0;
      v29 = 0;
      if ((v17 + 2) <= a6)
      {
        v18 = bswap32(*v17) >> 16;
        if (v18 == 2)
        {
          v19 = bswap32(v17[1]) >> 16 > 7;
          v20 = OTL::Coverage::SearchFmt2Linear;
          v21 = OTL::Coverage::SearchFmt2Binary;
LABEL_8:
          if (v19)
          {
            v20 = v21;
          }

          goto LABEL_10;
        }

        if (v18 == 1)
        {
          v19 = bswap32(v17[1]) >> 16 > 4;
          v20 = OTL::Coverage::SearchFmt1Linear;
          v21 = OTL::Coverage::SearchFmt1Binary;
          goto LABEL_8;
        }
      }

      v23 = 0;
      v20 = OTL::Coverage::SearchUnknown;
LABEL_10:
      v25 = v20;
      v26 = 0;
      if (!(v20)(&v23, v15))
      {
        break;
      }

      if (!--a3)
      {
        break;
      }

      if ((TGlyphIterator::PrevContext(a1, 1) & 1) == 0)
      {
        a3 = 1;
        break;
      }
    }
  }

  if (a7)
  {
    *a7 = v12;
  }

  *(a1 + 6) = v14;
  return a3 == 0;
}

uint64_t TRun::FindBreak@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, const TCharStream *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  if (*(result + 208) <= 0)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    return result;
  }

  v10 = result;
  v11 = *(result + 216);
  v12 = v11[4];
  if (v12 || (v14 = v11[3]) == 0)
  {
    v62 = 0;
    v13 = *(result + 200);
    v61 = v12 + 16 * v13;
  }

  else
  {
    v13 = *(result + 200);
    v61 = v14 + 8 * v13;
    v62 = 1;
  }

  v66 = v11[6];
  v64 = *(result + 225);
  GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<true>(result, a2);
  v15 = *(*(*(v10 + 216) + 40) + 4 * *(v10 + 200) + 4 * GlyphIndexForChar) >> 1;
  result = GetTable();
  v17 = 0.0002;
  if (result)
  {
    v18 = *(result + 64);
    if (v18)
    {
      v17 = *v18;
    }
  }

  v19 = v15 & 0x10;
  v20 = *(v10 + 8);
  if (v20 == a2)
  {
    v21 = *(v10 + 312);
    if (!v21)
    {
      v21 = MEMORY[0x1E695F060];
    }

    if (*(v10 + 192) + *v21 - a6 <= v17)
    {
      a6 = 1.79769313e308;
    }
  }

  v22 = *(v10 + 16) + v20;
  v23 = -1;
  if (*(v10 + 224))
  {
    v24 = 1;
  }

  else
  {
    v24 = -1;
  }

  if (v22 <= a2)
  {
    v65 = 0;
    v25 = 0;
    v27 = 0.0;
    v26 = 0.0;
    v28 = a2;
    goto LABEL_82;
  }

  v57 = *(v10 + 224);
  v58 = a4;
  v25 = 0;
  v65 = 0;
  v56 = *(v10 + 208);
  v26 = 0.0;
  v27 = 0.0;
  v28 = a2;
  v59 = v66 + 8 * v13;
  v63 = v13;
  while (1)
  {
    while (1)
    {
      v29 = GlyphIndexForChar;
      result = *(v10 + 216);
      v30 = *(v10 + 200);
      v31 = *(*(result + 40) + 4 * v30 + 4 * GlyphIndexForChar);
      if ((v31 & 2) == 0)
      {
        break;
      }

      if ((v31 & 0x20) == 0)
      {
        LOBYTE(v19) = v19 | 2;
        v45 = *(v59 + 8 * GlyphIndexForChar);
        result = [result attachmentCountAtIndex:v30 + GlyphIndexForChar];
        v28 = v45 + result + 1;
        goto LABEL_81;
      }

      if (*(v10 + 256) > 1)
      {
        result = TRun::FindNextGlyphIndex(v10, v28, &GlyphIndexForChar);
        v28 = result;
      }

      else
      {
        if (*(v10 + 224))
        {
          v32 = --GlyphIndexForChar;
          if (v29 > 0)
          {
LABEL_27:
            v28 = *(*(result + 48) + 8 * v30 + 8 * v32);
            goto LABEL_28;
          }
        }

        else
        {
          v32 = ++GlyphIndexForChar;
          if (v29 + 1 < *(v10 + 208))
          {
            goto LABEL_27;
          }
        }

        v28 = *(v10 + 16) + *(v10 + 8);
      }

LABEL_28:
      if (v28 >= v22)
      {
        goto LABEL_81;
      }
    }

    if ((v64 & 1) == 0)
    {
      break;
    }

    v33 = (v31 >> 2) & 1;
    if (v58 || (v31 & 4) == 0)
    {
      goto LABEL_38;
    }

    v19 |= 4u;
    if (*(v10 + 256) > 1)
    {
      result = TRun::FindNextGlyphIndex(v10, v28, &GlyphIndexForChar);
      v28 = result;
    }

    else
    {
      if (*(v10 + 224))
      {
        v34 = --GlyphIndexForChar;
        if (v29 > 0)
        {
LABEL_76:
          v28 = *(*(result + 48) + 8 * v30 + 8 * v34);
          goto LABEL_77;
        }
      }

      else
      {
        v34 = ++GlyphIndexForChar;
        if (v29 + 1 < *(v10 + 208))
        {
          goto LABEL_76;
        }
      }

      v28 = *(v10 + 16) + *(v10 + 8);
    }

LABEL_77:
    v13 = v63;
    if (v28 >= v22)
    {
      goto LABEL_82;
    }
  }

  v33 = 0;
LABEL_38:
  v35 = 3;
  if (!v62)
  {
    v35 = 4;
  }

  v36 = v26 + *(v61 + (GlyphIndexForChar << v35));
  if (!GlyphIndexForChar)
  {
    v37 = *(v10 + 312);
    if (!v37)
    {
      v37 = MEMORY[0x1E695F060];
    }

    v36 = v36 + *v37;
  }

  if (v36 - a6 <= v17)
  {
    v27 = 0.0;
    v23 = -1;
    goto LABEL_56;
  }

  if (v25 > v28 || (v38 = v65, &v65[v25] <= v28))
  {
    v39 = v33;
    v16.n128_f64[0] = v36 - a6;
    result = (*(*a3 + 40))(a3, v28, 2, v16);
    v33 = v39;
    v25 = result;
  }

  v65 = v38;
  if (v28 != &v38[v25 - 1])
  {
    v42 = v23 == -1;
    if (v23 == -1)
    {
      v23 = v28;
    }

    if (v42)
    {
      v27 = v26;
    }

LABEL_56:
    if (v33)
    {
      v19 |= 4u;
    }

    if (*(v10 + 256) > 1)
    {
      result = TRun::FindNextGlyphIndex(v10, v28, &GlyphIndexForChar);
      v28 = result;
      goto LABEL_65;
    }

    if (*(v10 + 224))
    {
      v43 = v29 - 1;
      GlyphIndexForChar = v29 - 1;
      if (v29 <= 0)
      {
        goto LABEL_61;
      }
    }

    else
    {
      v43 = v29 + 1;
      GlyphIndexForChar = v29 + 1;
      if (v29 + 1 >= *(v10 + 208))
      {
LABEL_61:
        v28 = *(v10 + 16) + *(v10 + 8);
LABEL_65:
        v26 = v36;
        goto LABEL_77;
      }
    }

    v28 = *(*(*(v10 + 216) + 48) + 8 * *(v10 + 200) + 8 * v43);
    goto LABEL_65;
  }

  v40 = *(v10 + 168);
  if (v40)
  {
    LineBoundsOptions = TParagraphStyle::GetLineBoundsOptions(v40, v38);
  }

  else
  {
    LineBoundsOptions = 0;
  }

  if ((v57 & 1) == 0)
  {
    result = TRun::GetRightHangersGlyphCountAndWidth(v10, v29, LineBoundsOptions, a3, 1);
    if (result < 1)
    {
      goto LABEL_81;
    }

    v44 = result + v29;
    GlyphIndexForChar = result + v29;
    if (result + v29 == v56)
    {
      goto LABEL_112;
    }

    goto LABEL_74;
  }

  result = TRun::GetLeftHangersGlyphCountAndWidth(v10, v29, LineBoundsOptions, a3, -1);
  if (result < 1)
  {
    goto LABEL_81;
  }

  v44 = v29 - result;
  GlyphIndexForChar = v29 - result;
  if (v29 - result != -1)
  {
LABEL_74:
    v28 = *(v59 + 8 * v44);
    goto LABEL_77;
  }

LABEL_112:
  v28 = v22;
LABEL_81:
  v13 = v63;
LABEL_82:
  v46 = v19 & 0xFD;
  if (v23 >= v28)
  {
    v46 = v19;
  }

  if (v23 == -1)
  {
    v47 = v28;
  }

  else
  {
    v47 = v23;
  }

  if (v23 == -1)
  {
    v48 = v26;
  }

  else
  {
    v48 = v27;
  }

  if (v23 == -1)
  {
    v46 = v19;
  }

  v49 = v47 - a2;
  if (v49 >= 1 && v49 < *(v10 + 16) && (v46 & 2) == 0)
  {
    v51 = *(v10 + 208);
    v52 = GlyphIndexForChar;
    do
    {
      v53 = v52 + v24;
      if (v52 + v24 < 0 || v51 <= v53)
      {
        goto LABEL_107;
      }

      v54 = *(v66 + 8 * v24 + 8 * v13 + 8 * v52);
      v55 = v25 > v54 || &v65[v25] <= v54;
      v52 = v53;
    }

    while (!v55);
    if ((*(*(*(v10 + 216) + 40) + 4 * *(v10 + 200) + 4 * v53) & 8) == 0)
    {
LABEL_107:
      if (GlyphIndexForChar < 0 || v51 <= GlyphIndexForChar || (*(*(*(v10 + 216) + 40) + 4 * *(v10 + 200) + 4 * GlyphIndexForChar) & 0x380) == 0)
      {
        goto LABEL_111;
      }
    }

    v46 |= 0x10u;
  }

LABEL_111:
  *a5 = v46;
  *(a5 + 8) = v49;
  *(a5 + 16) = v48;
  return result;
}

uint64_t TRun::GetGlyphIndexForCharIndex<true>(uint64_t a1, uint64_t a2)
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

  return TRun::FindGlyphIndex<true>(a1, a2, 1);
}

CTFontRef CreateBestFontForCSS<anonymous namespace::ValuesAreDescriptors>(id a1, CFArrayRef theArray, unsigned int a3, int a4, CGFloat a5)
{
  v7 = theArray;
  v67[2] = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  if (Count == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(v7, 0);

    return CTFontCreateWithFontDescriptor(ValueAtIndex, a5, 0);
  }

  v12 = Count;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v66[28] = v13;
  v66[29] = v13;
  v66[26] = v13;
  v66[27] = v13;
  v66[24] = v13;
  v66[25] = v13;
  v66[22] = v13;
  v66[23] = v13;
  v66[20] = v13;
  v66[21] = v13;
  v66[18] = v13;
  v66[19] = v13;
  v66[16] = v13;
  v66[17] = v13;
  v66[15] = v13;
  v66[14] = v13;
  v66[13] = v13;
  v66[12] = v13;
  v66[11] = v13;
  v66[10] = v13;
  v66[9] = v13;
  v66[8] = v13;
  v66[7] = v13;
  v66[6] = v13;
  v66[5] = v13;
  v66[4] = v13;
  v66[3] = v13;
  v66[2] = v13;
  v66[1] = v13;
  v66[0] = v13;
  __p[0] = 0;
  __p[1] = 0;
  v65 = 0;
  v67[0] = v66;
  if (Count < 1)
  {
    return 0;
  }

  v60 = 0;
  v56 = 0;
  v57 = 0;
  v55 = 0;
  v14 = 0;
  v58 = a3;
  v15 = a3;
  v16 = INFINITY;
  v17 = 500.0;
  v18 = -500.0;
  v59 = v7;
  do
  {
    v19 = CFArrayGetValueAtIndex(v7, v14);
    valuePtr = 0.0;
    v20 = CTFontCreateWithFontDescriptor(v19, a5, 0);
    v63 = CTFontCopyAttribute(v20, @"CTFontCSSWeightAttribute");
    v21 = atomic_exchange(&v63, 0);

    if (v20)
    {
      v22 = (*(**(*(v20 + 5) + 408) + 160))(*(*(v20 + 5) + 408));
      if (v21)
      {
        goto LABEL_9;
      }
    }

    else
    {
      v22 = 0;
      if (v21)
      {
LABEL_9:
        CFNumberGetValue(v21, kCFNumberDoubleType, &valuePtr);
        goto LABEL_12;
      }
    }

    valuePtr = 400.0;
LABEL_12:
    v63 = CTFontDescriptorCopyAttribute(v19, @"NSCTFontPostScriptNameAttribute");
    v23 = atomic_exchange(&v63, 0);

    v24 = v23;
    v25 = v24;
    if (v24 == a1)
    {

LABEL_18:
      if (v58 < 0x258 || (v22 & 2) != 0)
      {
        v52 = CTFontCreateWithFontDescriptor(v19, a5, 0);

        goto LABEL_94;
      }

      goto LABEL_22;
    }

    if (!a1 || !v24)
    {

      goto LABEL_22;
    }

    v26 = CFEqual(v24, a1);

    if (v26)
    {
      goto LABEL_18;
    }

LABEL_22:
    v27 = valuePtr;
    v28 = valuePtr - v15;
    v29 = fabs(valuePtr - v15);
    if ((v22 & 0x61) == a4)
    {
      if (v29 >= 0.001)
      {
        v36 = __p[1];
        if (__p[1] >= v65)
        {
          v38 = (__p[1] - __p[0]) >> 4;
          v39 = v38 + 1;
          if ((v38 + 1) >> 60)
          {
            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v40 = v65 - __p[0];
          if ((v65 - __p[0]) >> 3 > v39)
          {
            v39 = v40 >> 3;
          }

          if (v40 >= 0x7FFFFFFFFFFFFFF0)
          {
            v41 = 0xFFFFFFFFFFFFFFFLL;
          }

          else
          {
            v41 = v39;
          }

          if (v41)
          {
            v42 = v67[0];
            if (v67[0] + 16 * v41 > v67)
            {
              if (!(v41 >> 60))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            v67[0] += 16 * v41;
          }

          else
          {
            v42 = 0;
          }

          v43 = (v42 + 16 * v38);
          v44 = (v42 + 16 * v41);
          *v43 = v19;
          *(v43 + 1) = v27;
          v37 = v43 + 2;
          v45 = v43 - (__p[1] - __p[0]);
          memcpy(v45, __p[0], __p[1] - __p[0]);
          v46 = __p[0];
          v47 = v65;
          __p[0] = v45;
          __p[1] = v37;
          v65 = v44;
          if (v46)
          {
            if (v66 > v46 || v67 <= v46)
            {
              operator delete(v46);
            }

            else if (v47 == v67[0])
            {
              v67[0] = v46;
            }
          }
        }

        else
        {
          *__p[1] = v19;
          v36[1] = v27;
          v37 = v36 + 2;
        }

        __p[1] = v37;
        if (v28 <= 0.0 || v28 >= v17)
        {
          v48 = v56;
          if (v28 < 0.0 && v28 > v18)
          {
            v48 = v19;
          }

          v56 = v48;
          if (v28 < 0.0 && v28 > v18)
          {
            v18 = v28;
          }
        }

        else
        {
          v55 = v19;
          v17 = v28;
        }
      }

      else
      {
        v30 = v57;
        if (!v57)
        {
          v30 = v19;
        }

        v57 = v30;
      }
    }

    else
    {
      v31 = fabs(v16);
      v32 = v29 < v31;
      if (v29 < v31)
      {
        v33 = valuePtr - v15;
      }

      else
      {
        v33 = v16;
      }

      v34 = v60;
      if (v32)
      {
        v35 = v19;
      }

      else
      {
        v35 = v60;
      }

      if (__p[0] == __p[1])
      {
        v16 = v33;
        v34 = v35;
      }

      v60 = v34;
    }

    ++v14;
    v7 = v59;
  }

  while (v12 != v14);
  v49 = v57;
  if (!v57)
  {
    v50 = __p[0];
    if (__p[0] == __p[1])
    {
      v53 = v60;
      if (!v60)
      {
        v52 = 0;
        goto LABEL_95;
      }

      goto LABEL_89;
    }

    if (v58 != 500)
    {
      if (v58 == 400)
      {
        v51 = __p[0];
        while (fabs(v51[1] + -500.0) >= 0.001)
        {
          v51 += 2;
          if (v51 == __p[1])
          {
            goto LABEL_84;
          }
        }

        goto LABEL_82;
      }

      goto LABEL_84;
    }

    v51 = __p[0];
    while (fabs(v51[1] + -400.0) >= 0.001)
    {
      v51 += 2;
      if (v51 == __p[1])
      {
        goto LABEL_84;
      }
    }

LABEL_82:
    if (v51 != __p[1])
    {
      v49 = *v51;
      goto LABEL_93;
    }

LABEL_84:
    if (v58 < 0x1F5)
    {
      v53 = v56;
      v54 = v55;
      if (v56)
      {
        goto LABEL_89;
      }

      if (!v55)
      {
LABEL_92:
        v49 = *__p[0];
        goto LABEL_93;
      }
    }

    else
    {
      v53 = v56;
      v54 = v55;
      if (!v55)
      {
        if (!v56)
        {
          goto LABEL_92;
        }

LABEL_89:
        v49 = v53;
        goto LABEL_93;
      }
    }

    v49 = v54;
  }

LABEL_93:
  v52 = CTFontCreateWithFontDescriptor(v49, a5, 0);
LABEL_94:
  v50 = __p[0];
LABEL_95:
  if (v50)
  {
    __p[1] = v50;
    if (v66 > v50 || v67 <= v50)
    {
      operator delete(v50);
    }
  }

  return v52;
}

uint64_t *std::back_insert_iterator<std::vector<unsigned int>>::operator=[abi:fn200100](uint64_t *a1, _DWORD *a2)
{
  v4 = *a1;
  v6 = *(*a1 + 8);
  v5 = *(*a1 + 16);
  if (v6 >= v5)
  {
    v8 = *v4;
    v9 = v6 - *v4;
    v10 = (v9 >> 2) + 1;
    if (v10 >> 62)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v11 = v5 - v8;
    if (v11 >> 1 > v10)
    {
      v10 = v11 >> 1;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFFCLL;
    v13 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    if (v13)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:fn200100](*a1, v13);
    }

    v14 = (4 * (v9 >> 2));
    *v14 = *a2;
    v7 = v14 + 1;
    memcpy(0, v8, v9);
    v15 = *v4;
    *v4 = 0;
    *(v4 + 8) = v7;
    *(v4 + 16) = 0;
    if (v15)
    {
      operator delete(v15);
    }
  }

  else
  {
    *v6 = *a2;
    v7 = v6 + 1;
  }

  *(v4 + 8) = v7;
  return a1;
}

double TStorageRange::SetStorageSubRange(TStorageRange *this, CFRange a2)
{
  v3 = *(this + 1) + a2.location;
  *this = 0;
  *(this + 1) = v3;
  *(this + 2) = a2.length;
  v4 = *(this + 33);
  if (v4)
  {
    *(this + 33) = v4 & 0xFE;
    if (a2.length >= 1)
    {
      v5 = (*(*(this + 3) + 40) + 4 * v3);
      length = a2.length;
      while (1)
      {
        v7 = *v5;
        v5 += 4;
        if ((v7 & 4) != 0)
        {
          break;
        }

        if (!--length)
        {
          goto LABEL_8;
        }
      }

      *(this + 33) = v4 | 1;
    }
  }

LABEL_8:
  __C = NAN;
  v8 = *(this + 3);
  v9 = *(v8 + 32);
  if (v9 || (v11 = *(v8 + 24)) == 0)
  {
    v10 = (v9 + 16 * v3);
    a2.location = 2;
  }

  else
  {
    v10 = (v11 + 8 * v3);
    a2.location = 1;
  }

  vDSP_sveD(v10, a2.location, &__C, a2.length);
  result = __C;
  *this = __C;
  return result;
}

CFTypeRef CTFontCopyAttribute(CTFontRef font, CFStringRef attribute)
{
  if (!font)
  {
    return 0;
  }

  v3 = *(font + 5);
  FontAttributeID = GetFontAttributeID(attribute);
  TFont::CopyAttribute(v3, attribute, FontAttributeID, &v7);
  v5 = atomic_exchange(&v7, 0);

  return v5;
}

void TAATOpbdTable::TAATOpbdTable(TAATOpbdTable *this, const TFont *a2)
{
  *this = a2;
  TFont::GetScaledMatrix(a2, &v25);
  *(this + 8) = vaddq_f64(vaddq_f64(*&v25.a, *&v25.c), *&v25.tx);
  (*(**(a2 + 51) + 488))();
  v4 = atomic_load_explicit(this + 3, memory_order_acquire);
  v5 = v4;
  if (v4)
  {
    BytePtr = CFDataGetBytePtr(v4);
  }

  else
  {
    BytePtr = 0;
  }

  *(this + 4) = BytePtr;
  v7 = atomic_load_explicit(this + 3, memory_order_acquire);
  v8 = v7;
  if (v8)
  {
    v9 = v8;
    v10 = CFDataGetBytePtr(v8);

    if (v10)
    {
      v10 += CFDataGetLength(v7);
    }
  }

  else
  {

    v10 = 0;
  }

  *(this + 8) = 0;
  *(this + 5) = v10;
  *(this + 6) = TAATOpbdTable::GetDefaultBounds;
  *(this + 7) = 0;
  v11 = *(this + 4);
  if (v11)
  {
    if (v11 + 4 > v10)
    {
      goto LABEL_10;
    }

    v13 = bswap32(v11[3]) >> 16;
    if (v13 > 5)
    {
      if (v13 == 6)
      {
LABEL_31:
        if (v11 + 6 > v10)
        {
          goto LABEL_10;
        }

        v19 = v11 + 9;
        v20 = bswap32(v11[4]) >> 16;
        v21 = v11[5];
        goto LABEL_35;
      }

      if (v13 == 10)
      {
        v19 = v11 + 7;
        if (v11 + 7 > v10)
        {
          goto LABEL_10;
        }

        v20 = bswap32(v11[4]) >> 16;
        v21 = v11[6];
LABEL_35:
        v22 = v19 + (bswap32(v21) >> 16) * v20;
        if (v22 < v19 || v22 > v10)
        {
          goto LABEL_10;
        }

        goto LABEL_39;
      }

      if (v13 != 8)
      {
        goto LABEL_10;
      }

      v14 = (v11 + 6);
      if (v11 + 6 > v10)
      {
        goto LABEL_10;
      }

      v15 = bswap32(v11[5]) >> 16;
      v16 = &v14[2 * v15];
      v17 = v11 + 7 <= v10 ? (v10 - v14) >> 1 : 0;
      v18 = v16 <= v10 && v16 >= v14;
      if (!v18 && v17 != v15)
      {
        goto LABEL_10;
      }
    }

    else if (v13)
    {
      if (v13 != 2 && v13 != 4)
      {
        goto LABEL_10;
      }

      goto LABEL_31;
    }

LABEL_39:
    if (*v11 == 256)
    {
      v24 = bswap32(v11[2]) >> 16;
      if (v24 == 1)
      {
        *(this + 6) = TAATOpbdTable::LookupByControlPoint;
        *(this + 7) = 0;
        operator new();
      }

      if (!v24)
      {
        v12 = TAATOpbdTable::LookupByDistance;
        goto LABEL_11;
      }
    }

LABEL_10:
    (*(**(a2 + 51) + 496))(*(a2 + 51), 1869636196);
    v12 = TAATOpbdTable::InvalidLookup;
LABEL_11:
    *(this + 6) = v12;
    *(this + 7) = 0;
  }
}