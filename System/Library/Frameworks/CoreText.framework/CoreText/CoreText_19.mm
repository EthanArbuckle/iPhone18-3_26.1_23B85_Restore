uint64_t TRunGlue::PhysicalRunIndexWithGlyphIndex(TRunGlue *this, int64_t a2, uint64_t *a3)
{
  if (a2 < 0)
  {
    return -1;
  }

  v4 = a2;
  if (*(this + 6) >= 1)
  {
    v6 = *(this + 1);
    v7 = *(*this + 16);
    v8 = *(*this + 24);
    v9 = v7 + 8 * v6;
    if (v9 != v8)
    {
      v10 = 0;
      v11 = v7 + 8 * v6;
      while (1)
      {
        v12 = *(*(*v11 + 40) + 208) + v10;
        if (v12 > a2)
        {
          break;
        }

        v11 += 8;
        v9 += 8;
        v10 = v12;
        if (v11 == v8)
        {
          v9 = *(*this + 24);
          goto LABEL_12;
        }
      }

      v4 = a2 - v10;
    }

LABEL_12:
    result = (v9 - v7) >> 3;
    if (v6 <= result && *(this + 2) + v6 > result)
    {
      *a3 = v4;
      return result;
    }

    return -1;
  }

  TRunGlue::FocusOnIndex(this, a2);
  *a3 = v4 - *(this + 19);
  v13 = *(this + 15);

  return TRunGlue::PhysicalRunIndexFromLogical(this, v13);
}

unint64_t TRunGlue::UpdateForSplitRun(TRunGlue *this, uint64_t a2)
{
  *(this + 2) += a2;
  *(this + 17) += a2;
  v3 = *this;
  result = TRunGlue::PhysicalRunIndexFromLogical(this, *(this + 15));
  v5 = *(v3 + 16);
  if (result >= (*(v3 + 24) - v5) >> 3)
  {
    __break(1u);
  }

  else
  {
    v6 = *(*(v5 + 8 * result) + 48);
    *(this + 18) = v6;
    *(this + 20) = *(v6 + 208) + *(this + 19);

    return TRunGlue::UpdateForCurrentRealRun(this);
  }

  return result;
}

void TRunGlue::InsertGlyphs(TRunGlue *this, CFRange a2)
{
  length = a2.length;
  location = a2.location;
  v5 = TRunGlue::length(this);
  if (v5 - 1 >= location)
  {
    v6 = location;
  }

  else
  {
    v6 = v5 - 1;
  }

  TRunGlue::FocusOnIndex(this, v6);
  v7 = *(this + 18);
  if (v7)
  {
    if (v7 != *(this + 53))
    {
      v8 = [*(v7 + 216) copyWithRange:{*(v7 + 200), *(v7 + 208)}];

      *(v7 + 216) = v8;
      *(v7 + 200) = 0;
      v7 = *(this + 18);
      *(this + 53) = v7;
    }

    v29.location = location - *(this + 19);
    v29.length = length;
    TStorageRange::InsertGlyphs((v7 + 192), v29);
    goto LABEL_8;
  }

  if (!std::function<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::operator()(*(this + 59), *(this + 19) + location, length, this + 168, this + 176, this + 184, this + 416))
  {
    return;
  }

  if (*(this + 51))
  {
    v10 = *(this + 32);
    if (v10 != *(this + 33))
    {
      v11 = (v10 + 4 * (*(this + 19) + location));
      v28.n128_u32[0] = 0;
      std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::insert(this + 32, v11, length, &v28);
      *(this + 51) = *(this + 32);
    }

    goto LABEL_8;
  }

  v12 = TRunGlue::length(this);
  v13 = length + v12 + 14;
  if (length + v12 + 7 >= 0)
  {
    v13 = length + v12 + 7;
  }

  v14 = v13 >> 3;
  v15 = *(this + 27);
  v16 = *(this + 28) - v15;
  if (v14 <= v16)
  {
    if (v14 < v16)
    {
      *(this + 28) = v15 + v14;
    }
  }

  else
  {
    std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__append(this + 216, v14 - v16);
  }

  v17 = TRunGlue::length(this);
  v18 = location + length;
  if (v17 >= location + length)
  {
    v19 = v17;
    do
    {
      v20 = v19 + *(this + 19);
      v21 = v20 + 7;
      if (v20 >= 0)
      {
        v21 = v19 + *(this + 19);
      }

      v22 = *(this + 27);
      if (*(this + 28) - v22 <= (v21 >> 3))
      {
        goto LABEL_36;
      }

      TRunGlue::SetDeletedGlyphsBit(this, v20 + 1, (*(v22 + (v21 >> 3)) >> (v20 & 7)) & 1);
    }

    while (v19-- > v18);
  }

  if (length >= 1)
  {
    v24 = location;
    while (1)
    {
      v25 = v24 + *(this + 19);
      v26 = v25 >= 0 ? v24 + *(this + 19) : v25 + 7;
      v27 = *(this + 27);
      if (*(this + 28) - v27 <= (v26 >> 3))
      {
        break;
      }

      *(v27 + (v26 >> 3)) &= ~(1 << (v25 & 7));
      if (++v24 >= v18)
      {
        goto LABEL_8;
      }
    }

LABEL_36:
    __break(1u);
    return;
  }

LABEL_8:
  TRunGlue::InsertedGlyphs(this, length);
  v9 = *(this + 13);
  v28 = 0uLL;
  if (location <= (v9[1] - *v9) >> 4)
  {
    std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::insert(v9, (*v9 + 16 * location), length, &v28);
  }
}

uint64_t std::function<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13[0] = a2;
  v13[1] = a3;
  v11 = a5;
  v12 = a4;
  v9 = a7;
  v10 = a6;
  if (a1)
  {
    return (*(*a1 + 48))(a1, v13, &v12, &v11, &v10, &v9);
  }

  v8 = std::__throw_bad_function_call[abi:fn200100]();
  return std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::resize(v8);
}

void std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::resize(void *a1, unint64_t a2)
{
  v2 = a1[1] - *a1;
  v3 = a2 >= v2;
  v4 = a2 - v2;
  if (v4 != 0 && v3)
  {
    std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__append(a1, v4);
  }

  else if (!v3)
  {
    a1[1] = *a1 + a2;
  }
}

uint64_t *std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::insert(uint64_t *result, char *__src, unint64_t a3, char *a4)
{
  if (a3)
  {
    v4 = a4;
    v7 = result;
    v8 = result[1];
    v9 = result[2];
    if (a3 <= (v9 - v8) >> 2)
    {
      v18 = v8 - __src;
      v19 = result[1];
      v20 = a3;
      if (a3 <= (v8 - __src) >> 2)
      {
        goto LABEL_21;
      }

      v21 = 0;
      v20 = v18 >> 2;
      v19 = &v8[4 * (a3 - (v18 >> 2))];
      v22 = *a4;
      v23 = (4 * a3 - v18 - 4) >> 2;
      v24 = (v23 + 4) & 0x7FFFFFFFFFFFFFFCLL;
      v25 = vdupq_n_s64(v23);
      v26 = v8 + 8;
      do
      {
        v27 = vdupq_n_s64(v21);
        v28 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_18475A340)));
        if (vuzp1_s16(v28, *v25.i8).u8[0])
        {
          *(v26 - 2) = v22;
        }

        if (vuzp1_s16(v28, *&v25).i8[2])
        {
          *(v26 - 1) = v22;
        }

        if (vuzp1_s16(*&v25, vmovn_s64(vcgeq_u64(v25, vorrq_s8(v27, xmmword_18475AAF0)))).i32[1])
        {
          *v26 = v22;
          v26[1] = v22;
        }

        v21 += 4;
        v26 += 4;
      }

      while (v24 != v21);
      result[1] = v19;
      if (v8 != __src)
      {
LABEL_21:
        v29 = &__src[4 * a3];
        v30 = &v19[-4 * a3];
        v31 = v19;
        if (v30 < v8)
        {
          v31 = v19;
          do
          {
            v32 = *v30;
            v30 += 4;
            *v31 = v32;
            v31 += 4;
          }

          while (v30 < v8);
        }

        result[1] = v31;
        if (v19 != v29)
        {
          result = memmove(&__src[4 * a3], __src, v19 - v29);
        }

        if (__src <= v4)
        {
          if (*(v7 + 8) <= v4)
          {
            v33 = 0;
          }

          else
          {
            v33 = a3;
          }

          v4 += 4 * v33;
        }

        v34 = 0;
        v35 = *v4;
        v36 = vdupq_n_s64(v20 - 1);
        v37 = __src + 8;
        do
        {
          v38 = vdupq_n_s64(v34);
          v39 = vmovn_s64(vcgeq_u64(v36, vorrq_s8(v38, xmmword_18475A340)));
          if (vuzp1_s16(v39, *v36.i8).u8[0])
          {
            *(v37 - 2) = v35;
          }

          if (vuzp1_s16(v39, *&v36).i8[2])
          {
            *(v37 - 1) = v35;
          }

          if (vuzp1_s16(*&v36, vmovn_s64(vcgeq_u64(v36, vorrq_s8(v38, xmmword_18475AAF0)))).i32[1])
          {
            *v37 = v35;
            v37[1] = v35;
          }

          v34 += 4;
          v37 += 4;
        }

        while (((v20 + 3) & 0xFFFFFFFFFFFFFFFCLL) != v34);
      }
    }

    else
    {
      v10 = *result;
      v11 = a3 + (&v8[-*result] >> 2);
      if (v11 >> 62)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v12 = &__src[-v10];
      v13 = v9 - v10;
      if (v13 >> 1 > v11)
      {
        v11 = v13 >> 1;
      }

      if (v13 >= 0x7FFFFFFFFFFFFFFCLL)
      {
        v14 = 0x3FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v14 = v11;
      }

      v15 = v12 >> 2;
      v16 = (result + 3);
      v56[4] = v7 + 24;
      if (v14)
      {
        v17 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<unsigned int,30ul>>(v16, v14);
      }

      else
      {
        v17 = 0;
      }

      v40 = 0;
      v41 = v17 + 4 * v15;
      v42 = *v4;
      v43 = (a3 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v44 = vdupq_n_s64(v43);
      v45 = v43 - ((a3 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v46 = (v41 + 8);
      do
      {
        v47 = vdupq_n_s64(v40);
        v48 = vmovn_s64(vcgeq_u64(v44, vorrq_s8(v47, xmmword_18475A340)));
        if (vuzp1_s16(v48, *v44.i8).u8[0])
        {
          *(v46 - 2) = v42;
        }

        if (vuzp1_s16(v48, *&v44).i8[2])
        {
          *(v46 - 1) = v42;
        }

        if (vuzp1_s16(*&v44, vmovn_s64(vcgeq_u64(v44, vorrq_s8(v47, xmmword_18475AAF0)))).i32[1])
        {
          *v46 = v42;
          v46[1] = v42;
        }

        v40 += 4;
        v46 += 4;
      }

      while (v45 != v40);
      v49 = v17 + 4 * v14;
      memcpy((v41 + 4 * a3), __src, *(v7 + 8) - __src);
      v50 = *v7;
      v51 = v41 + 4 * a3 + *(v7 + 8) - __src;
      *(v7 + 8) = __src;
      v52 = (__src - v50);
      v53 = (v41 - (__src - v50));
      memcpy(v53, v50, v52);
      v54 = *v7;
      *v7 = v53;
      *(v7 + 8) = v51;
      v55 = *(v7 + 16);
      *(v7 + 16) = v49;
      v56[2] = v54;
      v56[3] = v55;
      v56[0] = v54;
      v56[1] = v54;
      return std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::~__split_buffer(v56);
    }
  }

  return result;
}

void *TRunGlue::InsertedGlyphs(void *this, uint64_t a2)
{
  v3 = this;
  if (this[18])
  {
    *(*this + 144) += a2;
    this = TRunGlue::UpdateForCurrentRealRun(this);
  }

  v3[20] += a2;
  v4 = v3[4];
  if (v4 != -1)
  {
    v3[4] = v4 + a2;
  }

  return this;
}

void TRunGlue::TGlyphInVector::operator TStorageRange::GlyphEntry(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *(a2 + 8);
  v7 = *a2;
  *a1 = *(v4 + 2 * v6);
  *(a1 + 8) = *(v5 + 16 * v6);
  *(a1 + 24) = TRunGlue::GetGlyphProps(v7, v6);
  *(a1 + 32) = TRunGlue::GetStringIndex(*a2, *(a2 + 8));
  *(a1 + 40) = 0;
  *(a1 + 48) = TRunGlue::GetOrigin(*a2, *(a2 + 8));
  *(a1 + 56) = v8;
}

void TRunGlue::FilterJoiner(TRunGlue *this, TRunGlue::TGlyph *a2, unsigned __int16 *a3)
{
  v6 = *a3;
  if (v6 || ((*(**(*(this + 62) + 408) + 680))(*(*(this + 62) + 408), 32, 1, a3), (v6 = *a3) != 0))
  {
    if (v6 != 0xFFFF)
    {
      TRunGlue::SetGlyphID<true>(*a2, *(a2 + 1), v6);
      TRunGlue::SetAdvance(*a2, *(a2 + 1), *MEMORY[0x1E695F060]);
      v7 = *a2;
      v8 = *(a2 + 1);

      TRunGlue::OrGlyphProps(v7, v8, 0x20u);
      return;
    }
  }

  else
  {
    *a3 = -1;
  }

  v9 = *(a2 + 1);

  TRunGlue::Delete(this, v9, 0);
}

unint64_t TRunGlue::SelectRun(TRunGlue *this, uint64_t a2)
{
  v4 = *(this + 15);
  v5 = *(this + 1);
  if (v4 <= a2)
  {
    v6 = *(this + 15);
    v4 = *(this + 2) + v5;
  }

  else
  {
    v6 = v5 - 1;
    *(this + 20) = 0;
  }

  do
  {
    *(this + 15) = v6 + 1;
    if (v6 + 1 >= v4)
    {
      break;
    }

    v7 = *this;
    result = TRunGlue::PhysicalRunIndexFromLogical(this, v6 + 1);
    v9 = *(v7 + 16);
    if (result >= (*(v7 + 24) - v9) >> 3)
    {
      __break(1u);
      return result;
    }

    v10 = *(*(v9 + 8 * result) + 48);
    v11 = *(this + 20);
    *(this + 18) = v10;
    *(this + 19) = v11;
    *(this + 20) = *(v10 + 208) + v11;
    v6 = *(this + 15);
  }

  while (v6 != a2);

  return TRunGlue::UpdateForCurrentRealRun(this);
}

uint64_t TRunGlue::GlyphRangeForGlyphIndex(TRun **this, int64_t a2)
{
  v2 = a2;
  if (this[18])
  {
    TRunGlue::FocusOnIndex(this, a2);
    return this[19] + TRun::GetGlyphRangeForGlyphIndex(this[18], v2 - this[19]);
  }

  else if ((a2 & 0x8000000000000000) == 0 && TRunGlue::length(this) > a2)
  {
    v4 = v2;
    while (1)
    {
      v5 = *(this + 6);
      v4 += v5;
      if (v4 < 0 || this[4] <= v4)
      {
        break;
      }

      if ((TRunGlue::IsDeleted(this, v4) & 1) == 0)
      {
        v5 = *(this + 6);
        break;
      }
    }

    v6 = v4 - v5;
    if (v6 < v2)
    {
      return v6;
    }
  }

  return v2;
}

uint64_t TRun::GetGlyphRangeForGlyphIndex(TRun *this, uint64_t a2)
{
  v2 = 1;
  if (*(this + 224))
  {
    v2 = -1;
  }

  v3 = a2;
  if (v2 + a2 >= 0)
  {
    v4 = *(this + 26);
    v3 = a2;
    if (v4 > v2 + a2)
    {
      v5 = *(this + 27);
      v6 = *(this + 25);
      v7 = 2 * v2;
      v8 = 4 * v2 + 4 * v6;
      v9 = *(v5 + 16) + 2 * v2 + 2 * v6;
      v3 = a2;
      do
      {
        if (*(v9 + 2 * v3) != -1 && (*(*(v5 + 40) + v8 + 4 * v3) & 0x20) == 0)
        {
          break;
        }

        v11 = v7 + v3;
        v10 = v7 + v3 < 0;
        v3 += v2;
        if (v10)
        {
          break;
        }
      }

      while (v4 > v11);
    }
  }

  if (v3 >= a2)
  {
    return a2;
  }

  else
  {
    return v3;
  }
}

uint64_t std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<unsigned int,30ul>>(uint64_t a1, unint64_t a2)
{
  v3 = (a1 + 120);
  result = *(a1 + 120);
  v4 = result + 4 * a2;
  if (v4 > v3)
  {
    if (!(a2 >> 62))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v3 = v4;
  return result;
}

uint64_t CopyToStorage(TRunGlue *a1, uint64_t a2, uint64_t a3)
{
  v11 = a2;
  v4 = TRunGlue::EditRun(a1, &v11);
  result = TStorageRange::SetGlyphEntry(v4 + 192, v11, a3);
  *(v4 + 256) = 2;
  v7 = *(v4 + 8);
  v8 = *(a3 + 32);
  if (v7 > v8 || *(v4 + 16) + v7 <= v8)
  {
    result = TRunGlue::ActualCharRangeForStorage((v4 + 192), v6);
    *(v4 + 8) = result;
    *(v4 + 16) = v10;
  }

  return result;
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,TRunGlue::SeparateCharactersInGlyphRange(CFRange)::$_0 &,std::pair<long,long> *,false>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v8 = result;
LABEL_2:
  v9 = (a2 - 1);
  v10 = a2 - 3;
  v11 = (a2 - 5);
  for (i = v8; ; *(i - 1) = v58)
  {
LABEL_3:
    v8 = i;
    v13 = (a2 - i) >> 4;
    if (v13 > 2)
    {
      switch(v13)
      {
        case 3:
          v58 = i + 3;
          v4 = i[3];
          v72 = i + 1;
          v22 = i[1];
          v60 = a2 - 1;
          v73 = *(a2 - 1);
          if (v4 >= v22)
          {
            if (v73 >= v4)
            {
              return result;
            }

            v128 = i[2];
            i[2] = *(a2 - 2);
            *(a2 - 2) = v128;
            v129 = i[3];
            i[3] = *(a2 - 1);
            *(a2 - 1) = v129;
            if (i[3] >= i[1])
            {
              return result;
            }

            v130 = *i;
            *i = i[2];
            i[2] = v130;
LABEL_197:
            v138 = *v72;
            *v72 = *v58;
            *v58 = v138;
            return result;
          }

          v15 = *i;
          if (v73 < v4)
          {
            *i = *(a2 - 2);
            *(a2 - 2) = v15;
LABEL_196:
            v58 = v60;
            goto LABEL_197;
          }

LABEL_194:
          *v8 = v8[2];
          v8[1] = v4;
          v8[2] = v15;
          v8[3] = v22;
          if (*v60 >= v22)
          {
            return result;
          }

          v8[2] = *(a2 - 2);
          *(a2 - 2) = v15;
          v72 = v58;
          goto LABEL_196;
        case 4:

          return std::__sort4[abi:fn200100]<std::_ClassicAlgPolicy,TRunGlue::SeparateCharactersInGlyphRange(CFRange)::$_0 &,std::pair<long,long> *,0>(i, i + 2, i + 4, a2 - 2);
        case 5:
          result = std::__sort4[abi:fn200100]<std::_ClassicAlgPolicy,TRunGlue::SeparateCharactersInGlyphRange(CFRange)::$_0 &,std::pair<long,long> *,0>(i, i + 2, i + 4, i + 6);
          if (*(a2 - 1) < i[7])
          {
            v74 = i[6];
            i[6] = *(a2 - 2);
            *(a2 - 2) = v74;
            v75 = i[7];
            i[7] = *(a2 - 1);
            *(a2 - 1) = v75;
            v76 = i[7];
            v77 = i[5];
            if (v76 < v77)
            {
              v78 = i[6];
              v79 = i[3];
              v80 = i[4];
              i[4] = v78;
              i[5] = v76;
              i[6] = v80;
              i[7] = v77;
              if (v76 < v79)
              {
                v81 = i[1];
                v82 = i[2];
                i[2] = v78;
                i[3] = v76;
                i[4] = v82;
                i[5] = v79;
                if (v76 < v81)
                {
                  v83 = *i;
                  *i = v78;
                  i[1] = v76;
                  i[2] = v83;
                  i[3] = v81;
                }
              }
            }
          }

          return result;
      }
    }

    else
    {
      if (v13 < 2)
      {
        return result;
      }

      if (v13 == 2)
      {
        if (*(a2 - 1) < i[1])
        {
          v84 = *i;
          *i = *(a2 - 2);
          *(a2 - 2) = v84;
          v85 = i[1];
          i[1] = *(a2 - 1);
          *(a2 - 1) = v85;
        }

        return result;
      }
    }

    if (v13 <= 23)
    {
      break;
    }

    if (!a3)
    {
      if (i != a2)
      {
        v96 = (v13 - 2) >> 1;
        v97 = v96;
        do
        {
          v98 = v97;
          if (v96 >= v97)
          {
            v99 = (2 * v97) | 1;
            v100 = &i[2 * v99];
            if (2 * v98 + 2 < v13)
            {
              v101 = v100[1];
              v102 = v100[3];
              v100 += 2 * (v101 < v102);
              if (v101 < v102)
              {
                v99 = 2 * v98 + 2;
              }
            }

            v103 = &i[2 * v98];
            v104 = v103[1];
            if (v100[1] >= v104)
            {
              v105 = *v103;
              do
              {
                v106 = v100;
                *v103 = *v100;
                v103[1] = v100[1];
                if (v96 < v99)
                {
                  break;
                }

                v107 = (2 * v99) | 1;
                v100 = &i[2 * v107];
                v108 = 2 * v99 + 2;
                if (v108 < v13)
                {
                  v109 = v100[1];
                  v110 = v100[3];
                  v100 += 2 * (v109 < v110);
                  if (v109 < v110)
                  {
                    v107 = v108;
                  }
                }

                result = v100[1];
                v103 = v106;
                v99 = v107;
              }

              while (result >= v104);
              *v106 = v105;
              v106[1] = v104;
            }
          }

          v97 = v98 - 1;
        }

        while (v98);
        do
        {
          v111 = 0;
          v112 = *i;
          v113 = i[1];
          v114 = i;
          do
          {
            v115 = &v114[2 * v111];
            v116 = v115 + 2;
            v117 = (2 * v111) | 1;
            v111 = 2 * v111 + 2;
            if (v111 >= v13)
            {
              v111 = v117;
            }

            else
            {
              v118 = v115[3];
              result = v115[5];
              v119 = v115 + 4;
              if (v118 >= result)
              {
                v111 = v117;
              }

              else
              {
                v116 = v119;
              }
            }

            *v114 = *v116;
            v114[1] = v116[1];
            v114 = v116;
          }

          while (v111 <= ((v13 - 2) >> 1));
          if (v116 == a2 - 2)
          {
            *v116 = v112;
            v116[1] = v113;
          }

          else
          {
            *v116 = *(a2 - 2);
            v116[1] = *(a2 - 1);
            *(a2 - 2) = v112;
            *(a2 - 1) = v113;
            v120 = (v116 - i + 16) >> 4;
            v121 = v120 < 2;
            v122 = v120 - 2;
            if (!v121)
            {
              v123 = v122 >> 1;
              v124 = &i[2 * (v122 >> 1)];
              v125 = v116[1];
              if (v124[1] < v125)
              {
                v126 = *v116;
                do
                {
                  v127 = v124;
                  *v116 = *v124;
                  v116[1] = v124[1];
                  if (!v123)
                  {
                    break;
                  }

                  v123 = (v123 - 1) >> 1;
                  v124 = &i[2 * v123];
                  v116 = v127;
                }

                while (v124[1] < v125);
                *v127 = v126;
                v127[1] = v125;
              }
            }
          }

          a2 -= 2;
          v121 = v13-- <= 2;
        }

        while (!v121);
      }

      return result;
    }

    v14 = &i[2 * (v13 >> 1)];
    v15 = *v9;
    if (v13 >= 0x81)
    {
      v16 = v14 + 1;
      v17 = v14[1];
      v18 = i + 1;
      v19 = i[1];
      if (v17 >= v19)
      {
        if (v15 < v17)
        {
          v25 = *v14;
          *v14 = *(a2 - 2);
          *(a2 - 2) = v25;
          v26 = v14[1];
          v14[1] = *(a2 - 1);
          *(a2 - 1) = v26;
          if (v14[1] < *v18)
          {
            v27 = *i;
            *i = *v14;
            *v14 = v27;
            v28 = v14 + 1;
            goto LABEL_28;
          }
        }
      }

      else
      {
        v20 = *i;
        if (v15 < v17)
        {
          *i = *(a2 - 2);
          *(a2 - 2) = v20;
          goto LABEL_27;
        }

        *i = *v14;
        i[1] = v17;
        *v14 = v20;
        v14[1] = v19;
        if (*v9 < v19)
        {
          *v14 = *(a2 - 2);
          *(a2 - 2) = v20;
          v18 = v14 + 1;
LABEL_27:
          v28 = a2 - 1;
LABEL_28:
          v32 = *v18;
          *v18 = *v28;
          *v28 = v32;
        }
      }

      v33 = v14 - 1;
      v34 = *(v14 - 1);
      v15 = v14 - 2;
      v35 = i + 3;
      v36 = i[3];
      v37 = *v10;
      if (v34 >= v36)
      {
        if (v37 < v34)
        {
          v39 = *v15;
          *v15 = *(a2 - 4);
          *(a2 - 4) = v39;
          v40 = *(v14 - 1);
          *(v14 - 1) = *(a2 - 3);
          *(a2 - 3) = v40;
          if (*(v14 - 1) < *v35)
          {
            v41 = i[2];
            i[2] = *v15;
            *v15 = v41;
            v42 = v14 - 1;
            goto LABEL_42;
          }
        }
      }

      else
      {
        v38 = i[2];
        if (v37 < v34)
        {
          i[2] = *(a2 - 4);
          *(a2 - 4) = v38;
          goto LABEL_41;
        }

        i[2] = *v15;
        i[3] = v34;
        *v15 = v38;
        *(v14 - 1) = v36;
        if (*v10 < v36)
        {
          *v15 = *(a2 - 4);
          *(a2 - 4) = v38;
          v35 = v14 - 1;
LABEL_41:
          v42 = a2 - 3;
LABEL_42:
          v44 = *v35;
          *v35 = *v42;
          *v42 = v44;
        }
      }

      v22 = v14 + 3;
      v45 = v14[3];
      v4 = v14 + 2;
      v46 = i + 5;
      v47 = i[5];
      result = *v11;
      if (v45 >= v47)
      {
        if (result < v45)
        {
          v49 = *v4;
          *v4 = *(a2 - 6);
          *(a2 - 6) = v49;
          v50 = v14[3];
          v14[3] = *(a2 - 5);
          *(a2 - 5) = v50;
          v45 = v14[3];
          if (v45 < *v46)
          {
            v51 = i[4];
            i[4] = *v4;
            *v4 = v51;
            v52 = v14 + 3;
            goto LABEL_52;
          }
        }
      }

      else
      {
        v48 = i[4];
        if (result < v45)
        {
          i[4] = *(a2 - 6);
          *(a2 - 6) = v48;
          goto LABEL_51;
        }

        i[4] = *v4;
        i[5] = v45;
        *v4 = v48;
        v14[3] = v47;
        v45 = v47;
        if (*v11 < v47)
        {
          *v4 = *(a2 - 6);
          *(a2 - 6) = v48;
          v46 = v14 + 3;
LABEL_51:
          v52 = a2 - 5;
LABEL_52:
          v53 = *v46;
          *v46 = *v52;
          *v52 = v53;
          v45 = *v22;
        }
      }

      v54 = *v16;
      v55 = *v33;
      if (*v16 >= *v33)
      {
        v56 = *v14;
        if (v45 < v54)
        {
          v22 = *v4;
          *v14 = *v4;
          v14[1] = v45;
          *v4 = v56;
          v14[3] = v54;
          if (v45 < v55)
          {
            v4 = *v15;
            *v15 = v22;
            *v14 = v4;
            goto LABEL_62;
          }

          v54 = v45;
          v56 = v22;
        }
      }

      else
      {
        v56 = *v15;
        if (v45 < v54)
        {
          *v15 = *v4;
          *v4 = v56;
          goto LABEL_61;
        }

        *v15 = *v14;
        *(v14 - 1) = v54;
        *v14 = v56;
        v14[1] = v55;
        if (v45 >= v55)
        {
          v54 = v55;
        }

        else
        {
          *v14 = *v4;
          *v4 = v56;
          v33 = v14 + 1;
LABEL_61:
          v16 = v14 + 3;
LABEL_62:
          *v33 = v45;
          *v16 = v55;
          v56 = *v14;
          v54 = v14[1];
        }
      }

      v57 = *i;
      *i = v56;
      i[1] = v54;
      *v14 = v57;
      goto LABEL_64;
    }

    v21 = (i + 1);
    v22 = i[1];
    v23 = (v14 + 1);
    v24 = v14[1];
    if (v22 < v24)
    {
      v4 = *v14;
      if (v15 >= v22)
      {
        *v14 = *i;
        v14[1] = v22;
        *i = v4;
        i[1] = v24;
        if (*v9 >= v24)
        {
          goto LABEL_64;
        }

        *i = *(a2 - 2);
        *(a2 - 2) = v4;
        v23 = (i + 1);
      }

      else
      {
        *v14 = *(a2 - 2);
        *(a2 - 2) = v4;
      }

      v21 = (a2 - 1);
      goto LABEL_38;
    }

    if (v15 < v22)
    {
      v29 = *i;
      *i = *(a2 - 2);
      *(a2 - 2) = v29;
      v30 = i[1];
      i[1] = *(a2 - 1);
      *(a2 - 1) = v30;
      v15 = i[1];
      v4 = *v23;
      if (v15 < *v23)
      {
        v31 = *v14;
        v4 = *i;
        *v14 = *i;
        *i = v31;
LABEL_38:
        v43 = *v23;
        v15 = *v21;
        *v23 = *v21;
        *v21 = v43;
      }
    }

LABEL_64:
    --a3;
    if (a4)
    {
      v59 = *i;
      v58 = i[1];
LABEL_67:
      v15 = 0;
      do
      {
        v60 = (v15 + i);
        v4 = (v15 + i + 16);
        if (v4 == a2)
        {
          goto LABEL_193;
        }

        v15 += 2;
      }

      while (v60[3] < v58);
      v60 = (v15 + i);
      v4 = a2;
      if (v15 != 16)
      {
        while (v4 != i)
        {
          v15 = v4 - 2;
          v22 = *(v4 - 1);
          v4 -= 2;
          if (v22 < v58)
          {
            goto LABEL_79;
          }
        }

        goto LABEL_193;
      }

      v61 = a2;
      while (v60 < v61)
      {
        v15 = v61 - 2;
        v62 = *(v61 - 1);
        v61 -= 2;
        if (v62 < v58)
        {
          goto LABEL_79;
        }
      }

      v15 = v61;
LABEL_79:
      i = v60;
      if (v60 < v15)
      {
        v4 = v15;
LABEL_81:
        v63 = *i;
        *i = *v4;
        *v4 = v63;
        v64 = i[1];
        i[1] = v4[1];
        v4[1] = v64;
        v22 = i + 2;
        while (v22 != a2)
        {
          v65 = v22[1];
          v22 += 2;
          if (v65 >= v58)
          {
            i = v22 - 2;
            v22 = v4;
            while (v22 != v8)
            {
              v4 = v22 - 2;
              v66 = *(v22 - 1);
              v22 -= 2;
              if (v66 < v58)
              {
                if (i < v4)
                {
                  goto LABEL_81;
                }

                goto LABEL_88;
              }
            }

            goto LABEL_193;
          }
        }

        goto LABEL_193;
      }

LABEL_88:
      if (i - 2 != v8)
      {
        *v8 = *(i - 2);
        v8[1] = *(i - 1);
      }

      *(i - 2) = v59;
      *(i - 1) = v58;
      if (v60 < v15)
      {
LABEL_93:
        result = std::__introsort<std::_ClassicAlgPolicy,TRunGlue::SeparateCharactersInGlyphRange(CFRange)::$_0 &,std::pair<long,long> *,false>(v8, i - 2, a3, a4 & 1);
        a4 = 0;
        goto LABEL_3;
      }

      v67 = std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,TRunGlue::SeparateCharactersInGlyphRange(CFRange)::$_0 &,std::pair<long,long> *>(v8, i - 2);
      result = std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,TRunGlue::SeparateCharactersInGlyphRange(CFRange)::$_0 &,std::pair<long,long> *>(i, a2);
      if (!result)
      {
        if (v67)
        {
          goto LABEL_3;
        }

        goto LABEL_93;
      }

      a2 = i - 2;
      if (v67)
      {
        return result;
      }

      goto LABEL_2;
    }

    v59 = *i;
    v58 = i[1];
    if (*(i - 1) < v58)
    {
      goto LABEL_67;
    }

    if (v58 >= *v9)
    {
      v68 = i + 2;
      do
      {
        i = v68;
        if (v68 >= a2)
        {
          break;
        }

        v69 = v68[1];
        v68 += 2;
      }

      while (v58 >= v69);
    }

    else
    {
      v60 = i + 2;
      do
      {
        if (v60 == a2)
        {
          goto LABEL_193;
        }

        v15 = v60[1];
        v60 += 2;
      }

      while (v58 >= v15);
      i = v60 - 2;
    }

    v60 = a2;
    if (i < a2)
    {
      v15 = a2;
      while (v15 != v8)
      {
        v60 = v15 - 2;
        v4 = *(v15 - 1);
        v15 -= 2;
        if (v58 >= v4)
        {
          goto LABEL_115;
        }
      }

      goto LABEL_193;
    }

LABEL_115:
    if (i < v60)
    {
      v70 = *i;
      *i = *v60;
      *v60 = v70;
      v71 = i[1];
      v4 = v60[1];
      i[1] = v4;
      v60[1] = v71;
      v15 = i + 2;
      while (v15 != a2)
      {
        v4 = v15[1];
        v15 += 2;
        if (v58 < v4)
        {
          i = v15 - 2;
          v15 = v60;
          while (v15 != v8)
          {
            v60 = v15 - 2;
            v4 = *(v15 - 1);
            v15 -= 2;
            if (v58 >= v4)
            {
              goto LABEL_115;
            }
          }

          goto LABEL_193;
        }
      }

      goto LABEL_193;
    }

    if (i - 2 != v8)
    {
      *v8 = *(i - 2);
      v8[1] = *(i - 1);
    }

    a4 = 0;
    *(i - 2) = v59;
  }

  if ((a4 & 1) == 0)
  {
    if (i == a2)
    {
      return result;
    }

    v131 = i + 2;
    if (i + 2 == a2)
    {
      return result;
    }

    v60 = 0;
    v58 = i + 3;
    v132 = -16;
    v133 = 16;
    while (1)
    {
      v134 = v60 + i;
      v60 = v133;
      v4 = *(v134 + 3);
      if (v4 < *(v134 + 1))
      {
        break;
      }

LABEL_191:
      v133 = (v60 + 2);
      v131 = (v60 + i + 16);
      v58 += 2;
      v132 -= 16;
      if (v131 == a2)
      {
        return result;
      }
    }

    v15 = *v131;
    v135 = v132;
    v22 = v58;
    while (1)
    {
      v136 = *(v22 - 2);
      *(v22 - 1) = *(v22 - 3);
      *v22 = v136;
      if (!v135)
      {
        break;
      }

      v137 = *(v22 - 4);
      v22 -= 2;
      v135 += 16;
      if (v4 >= v137)
      {
        *(v22 - 1) = v15;
        *v22 = v4;
        goto LABEL_191;
      }
    }

LABEL_193:
    __break(1u);
    goto LABEL_194;
  }

  if (i != a2)
  {
    v86 = i + 2;
    if (i + 2 != a2)
    {
      v87 = 0;
      v88 = i;
      do
      {
        v89 = v88[3];
        v90 = v88[1];
        v88 = v86;
        if (v89 < v90)
        {
          v91 = *v86;
          v92 = v87;
          while (1)
          {
            v93 = i + v92;
            v94 = *(i + v92 + 8);
            *(v93 + 2) = *(i + v92);
            *(v93 + 3) = v94;
            if (!v92)
            {
              break;
            }

            v92 -= 16;
            if (v89 >= *(v93 - 1))
            {
              v95 = (i + v92 + 16);
              goto LABEL_144;
            }
          }

          v95 = i;
LABEL_144:
          *v95 = v91;
          v95[1] = v89;
        }

        v86 = v88 + 2;
        v87 += 16;
      }

      while (v88 + 2 != a2);
    }
  }

  return result;
}

uint64_t *std::__sort4[abi:fn200100]<std::_ClassicAlgPolicy,TRunGlue::SeparateCharactersInGlyphRange(CFRange)::$_0 &,std::pair<long,long> *,0>(uint64_t *result, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v4 = a2[1];
  v5 = result + 1;
  v6 = a3 + 1;
  v7 = a3[1];
  if (v4 >= result[1])
  {
    if (v7 < v4)
    {
      v10 = *a2;
      *a2 = *a3;
      *a3 = v10;
      v7 = a2[1];
      a2[1] = a3[1];
      a3[1] = v7;
      if (a2[1] < *v5)
      {
        v11 = *result;
        *result = *a2;
        *a2 = v11;
        v9 = result + 1;
        v12 = a2 + 1;
LABEL_10:
        v15 = *v9;
        *v9 = *v12;
        *v12 = v15;
        v7 = *v6;
      }
    }
  }

  else
  {
    v8 = *result;
    if (v7 < v4)
    {
      *result = *a3;
      *a3 = v8;
      v9 = result + 1;
LABEL_9:
      v12 = a3 + 1;
      goto LABEL_10;
    }

    *result = *a2;
    *a2 = v8;
    v13 = result[1];
    result[1] = a2[1];
    a2[1] = v13;
    v7 = *v6;
    if (*v6 < v13)
    {
      v14 = *a2;
      *a2 = *a3;
      *a3 = v14;
      v9 = a2 + 1;
      goto LABEL_9;
    }
  }

  if (a4[1] < v7)
  {
    v16 = *a3;
    *a3 = *a4;
    *a4 = v16;
    v17 = a3[1];
    a3[1] = a4[1];
    a4[1] = v17;
    if (a3[1] < a2[1])
    {
      v18 = *a2;
      *a2 = *a3;
      *a3 = v18;
      v19 = a2[1];
      a2[1] = a3[1];
      a3[1] = v19;
      if (a2[1] < *v5)
      {
        v20 = *result;
        *result = *a2;
        *a2 = v20;
        v21 = result[1];
        result[1] = a2[1];
        a2[1] = v21;
      }
    }
  }

  return result;
}

BOOL std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,TRunGlue::SeparateCharactersInGlyphRange(CFRange)::$_0 &,std::pair<long,long> *>(uint64_t *a1, uint64_t *a2)
{
  v4 = (a2 - a1) >> 4;
  if (v4 > 2)
  {
    if (v4 == 3)
    {
      v17 = a1 + 3;
      v18 = a1[3];
      v19 = a1 + 1;
      v20 = a1[1];
      v21 = *(a2 - 1);
      if (v18 >= v20)
      {
        if (v21 >= v18)
        {
          return 1;
        }

        v29 = a1[2];
        a1[2] = *(a2 - 2);
        *(a2 - 2) = v29;
        v30 = a1[3];
        a1[3] = *(a2 - 1);
        *(a2 - 1) = v30;
        if (a1[3] >= a1[1])
        {
          return 1;
        }

        v31 = *a1;
        *a1 = a1[2];
        a1[2] = v31;
      }

      else
      {
        v22 = *a1;
        if (v21 >= v18)
        {
          *a1 = a1[2];
          a1[1] = v18;
          a1[2] = v22;
          a1[3] = v20;
          if (*(a2 - 1) >= v20)
          {
            return 1;
          }

          a1[2] = *(a2 - 2);
          *(a2 - 2) = v22;
          v19 = a1 + 3;
        }

        else
        {
          *a1 = *(a2 - 2);
          *(a2 - 2) = v22;
        }

        v17 = a2 - 1;
      }

      v35 = *v19;
      *v19 = *v17;
      *v17 = v35;
      return 1;
    }

    if (v4 != 4)
    {
      if (v4 == 5)
      {
        std::__sort4[abi:fn200100]<std::_ClassicAlgPolicy,TRunGlue::SeparateCharactersInGlyphRange(CFRange)::$_0 &,std::pair<long,long> *,0>(a1, a1 + 2, a1 + 4, a1 + 6);
        if (*(a2 - 1) < a1[7])
        {
          v7 = a1[6];
          a1[6] = *(a2 - 2);
          *(a2 - 2) = v7;
          v8 = a1[7];
          a1[7] = *(a2 - 1);
          *(a2 - 1) = v8;
          v9 = a1[7];
          v10 = a1[5];
          if (v9 < v10)
          {
            v11 = a1[6];
            v12 = a1[3];
            v13 = a1[4];
            a1[4] = v11;
            a1[5] = v9;
            a1[6] = v13;
            a1[7] = v10;
            if (v9 < v12)
            {
              v14 = a1[1];
              v15 = a1[2];
              a1[2] = v11;
              a1[3] = v9;
              a1[4] = v15;
              a1[5] = v12;
              if (v9 < v14)
              {
                v16 = *a1;
                *a1 = v11;
                a1[1] = v9;
                a1[2] = v16;
                a1[3] = v14;
              }
            }
          }
        }

        return 1;
      }

      goto LABEL_17;
    }

    std::__sort4[abi:fn200100]<std::_ClassicAlgPolicy,TRunGlue::SeparateCharactersInGlyphRange(CFRange)::$_0 &,std::pair<long,long> *,0>(a1, a1 + 2, a1 + 4, a2 - 2);
    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    if (*(a2 - 1) < a1[1])
    {
      v5 = *a1;
      *a1 = *(a2 - 2);
      *(a2 - 2) = v5;
      v6 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v6;
    }

    return 1;
  }

LABEL_17:
  v23 = a1[3];
  v25 = a1 + 1;
  v24 = a1[1];
  v27 = a1 + 5;
  v26 = a1[5];
  if (v23 < v24)
  {
    v28 = *a1;
    if (v26 >= v23)
    {
      *a1 = a1[2];
      a1[1] = v23;
      a1[2] = v28;
      a1[3] = v24;
      if (v26 >= v24)
      {
        goto LABEL_34;
      }

      a1[2] = a1[4];
      a1[4] = v28;
      v25 = a1 + 3;
    }

    else
    {
      *a1 = a1[4];
      a1[4] = v28;
    }

    goto LABEL_33;
  }

  if (v26 < v23)
  {
    v32 = a1[2];
    v33 = a1[4];
    a1[2] = v33;
    a1[3] = v26;
    a1[4] = v32;
    a1[5] = v23;
    if (v26 < v24)
    {
      v34 = *a1;
      *a1 = v33;
      a1[2] = v34;
      v27 = a1 + 3;
LABEL_33:
      *v25 = v26;
      *v27 = v24;
    }
  }

LABEL_34:
  v36 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v37 = 0;
  v38 = 0;
  v39 = a1 + 4;
  while (1)
  {
    v40 = v36[1];
    if (v40 < v39[1])
    {
      v41 = *v36;
      v42 = v37;
      while (1)
      {
        v43 = (a1 + v42);
        v44 = *(a1 + v42 + 40);
        v43[6] = *(a1 + v42 + 32);
        v43[7] = v44;
        if (v42 == -32)
        {
          break;
        }

        v42 -= 16;
        if (v40 >= v43[3])
        {
          v45 = (a1 + v42 + 48);
          goto LABEL_42;
        }
      }

      v45 = a1;
LABEL_42:
      *v45 = v41;
      v45[1] = v40;
      if (++v38 == 8)
      {
        return v36 + 2 == a2;
      }
    }

    v39 = v36;
    v37 += 16;
    v36 += 2;
    if (v36 == a2)
    {
      return 1;
    }
  }
}

void std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::__append(uint64_t a1, size_t a2)
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
      v10 = *(a1 + 32);
      if (v10 + v9 > (a1 + 28))
      {
        operator new();
      }

      *(a1 + 32) = v10 + v9;
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
      if (a1 + 24 > v17 || a1 + 28 <= v17)
      {

        operator delete(v17);
      }

      else if (v18 == *(a1 + 32))
      {
        *(a1 + 32) = v17;
      }
    }
  }
}

__n128 std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::insert(void *a1, __n128 *__src, unint64_t a3, __n128 *a4)
{
  if (a3)
  {
    v4 = a4;
    v6 = __src;
    v8 = a1[1];
    v9 = a1[2];
    if (a3 <= (v9 - v8) >> 4)
    {
      v26 = v8 - __src;
      if (a3 <= v8 - __src)
      {
        v29 = a1[1];
        v28 = a3;
      }

      else
      {
        v27 = 0;
        v28 = v26 >> 4;
        v29 = &v8[a3 - (v26 >> 4)];
        do
        {
          result = *a4;
          v8[v27 / 0x10] = *a4;
          v27 += 16;
        }

        while (16 * a3 - 16 * v28 != v27);
        a1[1] = v29;
        if (v8 == __src)
        {
          return result;
        }
      }

      v30 = &__src[a3];
      v31 = &v29[-16 * a3];
      v32 = v29;
      if (v31 < v8)
      {
        v32 = v29;
        do
        {
          v33 = *v31;
          v31 += 16;
          *v32 = v33;
          v32 += 16;
        }

        while (v31 < v8);
      }

      a1[1] = v32;
      if (v29 != v30)
      {
        memmove(&__src[a3], __src, v29 - v30);
      }

      if (v6 <= v4)
      {
        if (a1[1] <= v4)
        {
          v34 = 0;
        }

        else
        {
          v34 = a3;
        }

        v4 += v34;
      }

      do
      {
        result = *v4;
        *v6++ = *v4;
        --v28;
      }

      while (v28);
    }

    else
    {
      v10 = *a1;
      v11 = a3 + ((v8 - *a1) >> 4);
      v37 = 0xAAAAAAAAAAAAAAAALL;
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v35 = v12;
      v36 = v12;
      if (v11 >> 60)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v13 = __src - v10;
      v14 = v9 - v10;
      if (v14 >> 3 > v11)
      {
        v11 = v14 >> 3;
      }

      if (v14 >= 0x7FFFFFFFFFFFFFF0)
      {
        v15 = 0xFFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v11;
      }

      std::__split_buffer<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul> &>::__split_buffer(&v35, v15, v13 >> 4, (a1 + 3));
      v16 = v36;
      v17 = (v36 + 16 * a3);
      v18 = 16 * a3;
      do
      {
        *v16++ = *v4;
        v18 -= 16;
      }

      while (v18);
      *&v36 = v17;
      memcpy(v17, v6, a1[1] - v6);
      v19 = *a1;
      v20 = *(&v35 + 1);
      *&v36 = v36 + a1[1] - v6;
      a1[1] = v6;
      v21 = v6 - v19;
      v22 = (v20 - (v6 - v19));
      memcpy(v22, v19, v21);
      v23 = *a1;
      *a1 = v22;
      v24 = a1[2];
      *(a1 + 1) = v36;
      *&v36 = v23;
      *(&v36 + 1) = v24;
      *&v35 = v23;
      *(&v35 + 1) = v23;
      std::__split_buffer<std::tuple<unsigned short,unsigned short,long>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,long>,30ul> &>::~__split_buffer(&v35);
    }
  }

  return result;
}

void *std::__split_buffer<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul> &>::__split_buffer(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t TRunGlue::SetAttachmentCount(TRunGlue *this, int64_t a2, uint64_t a3)
{
  result = TRunGlue::FocusOnIndex(this, a2);
  v7 = *(this + 18);
  if (v7)
  {
    v8 = *(v7 + 216);
    v9 = a2 - *(this + 19) + *(v7 + 200);

    return [v8 setAttachmentCount:a3 atIndex:v9];
  }

  return result;
}

BOOL ContinueScriptRunGivenCharacterWithScript(unsigned int a1, uint64_t a2)
{
  if (uscript_hasScript())
  {
    return 1;
  }

  if (a1 > 0x20 || ((1 << a1) & 0x122085148) == 0)
  {
    return 0;
  }

  if (qword_1ED567CC0 != -1)
  {
    dispatch_once(&qword_1ED567CC0, &__block_literal_global_3);
  }

  return MEMORY[0x1865F3040](qword_1ED567CB8, a2) != 0;
}

void TOpenTypeMorph::SetLookups(TOpenTypeMorph *this, unsigned int *a2, OTL::GlyphLookups *a3)
{
  v42 = *MEMORY[0x1E69E9840];
  v4 = *(this + 4);
  v5 = *(this + 5) - v4;
  if (v5)
  {
    v6 = v4 == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = *a2;
    if (*a2)
    {
      v9 = 0;
      v10 = v5 >> 4;
      do
      {
        v30 = v9;
        v40 = 0xAAAAAAAAAAAAAAAALL;
        *&v11 = 0xAAAAAAAAAAAAAAAALL;
        *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v39[5] = v11;
        v39[6] = v11;
        v39[3] = v11;
        v39[4] = v11;
        v39[1] = v11;
        v39[2] = v11;
        v39[0] = v11;
        v37 = 0;
        v38 = 0;
        v36 = 0;
        v41 = v39;
        if (v10 >= 1)
        {
          v32 = 0;
          v12 = 0;
          v13 = 1;
          do
          {
            if (v10 <= v12 + 1)
            {
              v14 = v12 + 1;
            }

            else
            {
              v14 = v10;
            }

            v15 = v12;
            while (1)
            {
              v16 = *(v4 + 16 * v15);
              if (v16)
              {
                v17 = *v16;
                if (*v16)
                {
                  break;
                }
              }

LABEL_18:
              if (++v15 >= v10)
              {
                v15 = v14;
                goto LABEL_21;
              }
            }

            v18 = v16 + 1;
            while (v17 != v7)
            {
              v19 = *v18++;
              v17 = v19;
              if (!v19)
              {
                goto LABEL_18;
              }
            }

            v32 = *(v4 + 12 + 16 * v15);
LABEL_21:
            if (v15 == v10)
            {
              break;
            }

            v12 = v15 + 1;
            if (v15 + 1 < v10)
            {
              while (1)
              {
                v20 = v4 + 16 * v12;
                v21 = *v20;
                if (!*v20)
                {
                  break;
                }

                if (v32 != *(v20 + 12))
                {
                  break;
                }

                v22 = *v21;
                if (!*v21)
                {
                  break;
                }

                v23 = v21 + 1;
                while (v22 != v7)
                {
                  v24 = *v23++;
                  v22 = v24;
                  if (!v24)
                  {
                    goto LABEL_32;
                  }
                }

                if (++v12 == v10)
                {
                  v12 = v10;
                  break;
                }
              }
            }

LABEL_32:
            if (v13)
            {
              v33 = v7;
              OTL::FeatureBuffer::FeatureBuffer(v35, &v33, 1);
              Lookups = OTL::GCommon::GetLookups(this + 648, v35, &v36, 0);
              v34 = v35;
              std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v34);
              if (!Lookups)
              {
                break;
              }
            }

            v27 = v36;
            v26 = v37;
            while (v27 != v26)
            {
              v28 = *v27++;
              v3 = v3 & 0xFFFFFFFF00000000 | v28;
              OTL::GlyphLookups::SetLookupInRange<false>(a3, v3, v15, v12 - v15);
            }

            v13 = 0;
          }

          while (v12 < v10);
        }

        v35[0] = &v36;
        std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v35);
        v9 = v30 + 1;
        v7 = a2[v30 + 1];
      }

      while (v7);
    }
  }
}

void TOpenTypeMorph::SetPresentationLookups(TOpenTypeMorph *this, const unsigned int *a2, OTL::GlyphLookups *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v4 = *(this + 4);
  v3 = *(this + 5);
  v5 = v3 - v4;
  if (v3 != v4 && v4 != 0)
  {
    v9 = 0;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v41[6] = v10;
    v41[5] = v10;
    v11 = v5 >> 4;
    v41[4] = v10;
    v41[3] = v10;
    v41[2] = v10;
    v41[1] = v10;
    v41[0] = v10;
    v39 = 0;
    v40 = 0;
    v38 = 0;
    v42 = 0xAAAAAAAAAAAAAAAALL;
    v43 = v41;
    v12 = v46;
    v46[14] = v10;
    v46[13] = v10;
    v46[12] = v10;
    v46[11] = v10;
    v46[10] = v10;
    v46[9] = v10;
    v46[8] = v10;
    v46[7] = v10;
    v46[6] = v10;
    v46[5] = v10;
    v46[4] = v10;
    v46[3] = v10;
    v46[2] = v10;
    v46[1] = v10;
    v46[0] = v10;
    v44 = 0;
    v45 = 0uLL;
    v47 = v46;
    do
    {
      if (v9 >= *(&v45 + 1))
      {
        v37 = 0xAAAAAAAAAAAAAAAALL;
        *&v13 = 0xAAAAAAAAAAAAAAAALL;
        *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v35 = v13;
        v36 = v13;
        v14 = (v9 - v44) >> 3;
        v15 = v14 + 1;
        if ((v14 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
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

        std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(&v35, v17, v14, v46);
        v18 = v36;
        *v36 = *a2;
        *(v18 + 4) = 1;
        *&v36 = v18 + 8;
        v19 = (*(&v35 + 1) - (v45 - v44));
        memcpy(v19, v44, v45 - v44);
        v20 = v44;
        v21 = *(&v45 + 1);
        v44 = v19;
        v34 = v36;
        v45 = v36;
        *&v36 = v20;
        *(&v36 + 1) = v21;
        *&v35 = v20;
        *(&v35 + 1) = v20;
        std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v35);
        v9 = v34;
      }

      else
      {
        *v9 = *a2;
        *(v9 + 1) = 1;
        v9 += 8;
      }

      *&v45 = v9;
    }

    while (*a2++);
    Lookups = OTL::GCommon::GetLookups(this + 648, &v44, &v38, 0);
    *&v35 = &v44;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v35);
    if (Lookups && v11 >= 1)
    {
      v24 = 0;
      do
      {
        v25 = v24;
        v26 = *(v4 + 16 * v24 + 12);
        if (v11 <= v24 + 1)
        {
          v27 = v24 + 1;
        }

        else
        {
          v27 = v11;
        }

        v28 = (v4 + 28 + 16 * v24);
        while (v27 - 1 != v24)
        {
          ++v24;
          v29 = *v28;
          v28 += 4;
          if (v29 != v26)
          {
            goto LABEL_27;
          }
        }

        v24 = v27;
LABEL_27:
        v31 = v38;
        v30 = v39;
        while (v31 != v30)
        {
          v32 = *v31++;
          v12 = v12 & 0xFFFFFFFF00000000 | v32;
          OTL::GlyphLookups::SetLookupInRange<false>(a3, v12, v25, v24 - v25);
        }
      }

      while (v24 < v11);
    }

    v44 = &v38;
    std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v44);
  }
}

void TOpenTypeMorph::SetInitLookups(TOpenTypeMorph *this, OTL::GlyphLookups *a2)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(this + 4);
  if (v2)
  {
    v4 = this;
    v5 = *(this + 5);
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21[6] = v6;
    v21[5] = v6;
    v21[4] = v6;
    v21[3] = v6;
    v21[2] = v6;
    v21[1] = v6;
    v21[0] = v6;
    v19 = 0;
    v20 = 0;
    v18 = 0;
    v22 = 0xAAAAAAAAAAAAAAAALL;
    v23 = v21;
    v15 = 1768843636;
    OTL::FeatureBuffer::FeatureBuffer(v17, &v15, 1);
    LODWORD(v4) = OTL::GCommon::GetLookups(v4 + 648, v17, &v18, 0);
    v16 = v17;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v16);
    if (v4)
    {
      v7 = (v5 - v2) >> 4;
      if (v7 >= 1)
      {
        v8 = 0;
        v9 = -1;
        do
        {
          v10 = v2 + 16 * v8;
          v11 = *(v10 + 12);
          if (v9 != v11)
          {
            if ((*(v10 + 8) & 0x70FFFF) != 0x400006 || v8 && *(v10 - 8) || (v13 = v18, v12 = v19, v18 == v19))
            {
              v9 = *(v10 + 12);
            }

            else
            {
              do
              {
                v14 = *v13++;
                v5 = v5 & 0xFFFFFFFF00000000 | v14;
                OTL::GlyphLookups::SetLookupInRange<false>(a2, v5, v8, 1);
              }

              while (v13 != v12);
              v9 = v11;
            }
          }

          ++v8;
        }

        while (v8 != v7);
      }
    }

    v17[0] = &v18;
    std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v17);
  }
}

void TOpenTypeMorph::ApplyVerticalGlyphs(TOpenTypeMorph *this)
{
  v36 = *MEMORY[0x1E69E9840];
  HasAvailable = StackHasAvailable(0x4000uLL);
  if (HasAvailable)
  {
    v3 = *(*this + 104);
    *(*this + 104) = this + 32;
    v4 = *this;
    v5 = *(*this + 504);
    if (v5 <= 0x10000)
    {
      v6 = ((v5 + 63) >> 3) & 0x7FF8;
    }

    else
    {
      v6 = 0x2000;
    }

    MEMORY[0x1EEE9AC00](HasAvailable, v6);
    v8 = &v19[-v7];
    bzero(&v19[-v7], v9);
    TRunGlue::DetermineCoverage(v4, v8);
    v21 = 0x7665727476727432;
    v22 = 0;
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v34[8] = v10;
    v34[7] = v10;
    v34[6] = v10;
    v34[5] = v10;
    v34[4] = v10;
    v34[3] = v10;
    v34[2] = v10;
    v34[1] = v10;
    v34[0] = v10;
    memset(v33, 0, sizeof(v33));
    v35 = v34;
    if (OTL::GCommon::GetFeatures((this + 648), v33) && OTL::FeatureList::StripMissingFeaturesFrom(v33, &v21))
    {
      v31 = 0xAAAAAAAAAAAAAAAALL;
      v11 = &v27;
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v30[6] = v12;
      v30[5] = v12;
      v30[4] = v12;
      v30[3] = v12;
      v30[2] = v12;
      v30[1] = v12;
      v30[0] = v12;
      v28 = 0;
      v29 = 0;
      v27 = 0;
      v32 = v30;
      v20 = v21;
      OTL::FeatureBuffer::FeatureBuffer(v24, &v20, 1);
      SingleSubstLookups = OTL::GSUB::GetSingleSubstLookups(this + 81, v24, &v27);
      v23 = v24;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v23);
      if (SingleSubstLookups)
      {
        memset(v25, 170, sizeof(v25));
        memset(v24, 0, sizeof(v24));
        v26 = v25;
        v14 = TRunGlue::length(*this);
        v15 = v27;
        v16 = v28;
        if (v27 != v28)
        {
          v17 = v14;
          do
          {
            v18 = *v15++;
            v11 = v11 & 0xFFFFFFFF00000000 | v18;
            OTL::GlyphLookups::SetLookupInRange<false>(v24, v11, 0, v17);
          }

          while (v15 != v16);
        }

        LOBYTE(v23) = 0;
        OTL::GSUB::ApplyLookups(this + 648, *this, *(this + 4), v24, &v23, 0, 0);
        v23 = v24;
        std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v23);
      }

      v24[0] = &v27;
      std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v24);
    }

    *(*this + 104) = v3;
    v24[0] = v33;
    std::vector<unsigned int,TInlineBufferAllocator<unsigned int,36ul>>::__destroy_vector::operator()[abi:fn200100](v24);
  }
}

uint64_t TOpenTypeMorph::AddVariantsOfGlyph(uint64_t a1, __int16 a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v25 = a2;
  CommonTable = TBaseFont::GetCommonTable(*(a1 + 408), 1196643650, 0);
  if (!CommonTable)
  {
    return 1;
  }

  v3 = CommonTable;
  BytePtr = CFDataGetBytePtr(CommonTable);
  v24 = BytePtr;
  v5 = CFDataGetBytePtr(v3);
  if (v5)
  {
    v6 = &v5[CFDataGetLength(v3)];
  }

  else
  {
    v6 = 0;
  }

  v23 = v6;
  if (*(BytePtr + 3))
  {
    v8 = &BytePtr[__rev16(*(BytePtr + 3))];
    v9 = (v8 + 2);
    if ((v8 + 2) <= v6)
    {
      v10 = bswap32(*v8) >> 16;
      v11 = &v9[3 * v10];
      if (v11 >= v9 && v11 <= v6)
      {
        goto LABEL_34;
      }

      v13 = (v6 - v9) / 6;
      if ((v8 + 8) > v6)
      {
        v13 = 0;
      }

      if (v13 == v10)
      {
LABEL_34:
        if (*(BytePtr + 4))
        {
          v14 = &BytePtr[__rev16(*(BytePtr + 4))];
          v15 = (v14 + 2);
          if ((v14 + 2) <= v6)
          {
            v17 = bswap32(*v14) >> 16;
            v18 = &v15[v17];
            if ((v14 + 4) <= v6)
            {
              v19 = (v6 - v15) >> 1;
            }

            else
            {
              v19 = 0;
            }

            if (v18 <= v6 && v18 >= v15 || v19 == v17)
            {
              v22 = v14;
              operator new();
            }
          }
        }
      }
    }
  }

  return 0;
}

uint64_t TOpenTypeMorph::AddCoveredGlyphs(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v15 = a2;
  CommonTable = TBaseFont::GetCommonTable(*(a1 + 408), 1196643650, 0);
  v14 = CommonTable;
  if (CommonTable)
  {
    v4 = CommonTable;
    v5 = TBaseFont::GetCommonTable(*(a1 + 408), 1195656518, 0);
    v13 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v12[3] = v6;
    v12[4] = v6;
    v12[1] = v6;
    v12[2] = v6;
    v12[0] = v6;
    OTL::GDEF::GDEF(v12, v5);
    BytePtr = CFDataGetBytePtr(v4);
    v7 = CFDataGetBytePtr(v4);
    if (v7)
    {
      v8 = &v7[CFDataGetLength(v4)];
    }

    else
    {
      v8 = 0;
    }

    v10 = v8;
    operator new();
  }

  return 1;
}

unint64_t TOpenTypeMorph::FindScriptForVerticalGlyphs(TBaseFont **this, const TFont *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0xAAAAAA00AAAAAA00;
  CommonTable = TBaseFont::GetCommonTable(this[51], 1196643650, 0);
  v10 = CommonTable;
  if (CommonTable)
  {
    v4 = CommonTable;
    v5 = TBaseFont::GetCommonTable(this[51], 1195656518, 0);
    v9 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v8[3] = v6;
    v8[4] = v6;
    v8[1] = v6;
    v8[2] = v6;
    v8[0] = v6;
    OTL::GDEF::GDEF(v8, v5);
    CFDataGetBytePtr(v4);
    if (CFDataGetBytePtr(v4))
    {
      CFDataGetLength(v4);
    }

    operator new();
  }

  return v11;
}

uint64_t TOpenTypeMorph::AddShapingLanguages(TBaseFont *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  CommonTable = TBaseFont::GetCommonTable(a1, 1196643650, 0);
  if (!CommonTable)
  {
    return 1;
  }

  v3 = CommonTable;
  v4 = TBaseFont::GetCommonTable(a1, 1195656518, 0);
  v14 = 0xAAAAAAAAAAAAAAAALL;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[3] = v5;
  v13[4] = v5;
  v13[1] = v5;
  v13[2] = v5;
  v13[0] = v5;
  OTL::GDEF::GDEF(v13, v4);
  BytePtr = CFDataGetBytePtr(v3);
  v12 = BytePtr;
  v7 = CFDataGetBytePtr(v3);
  if (v7)
  {
    v8 = &v7[CFDataGetLength(v3)];
    v11 = v8;
    if ((BytePtr + 10) <= v8 && bswap32(*BytePtr) >> 16 <= 1 && (!*(BytePtr + 1) || (BytePtr + 14) <= v8))
    {
      operator new();
    }
  }

  return 0;
}

uint64_t TOpenTypeMorph::EnumerateScriptRanges(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(unsigned int,CFRange)>::__value_func[abi:fn200100](v7, a1);
  EnumeratePatternScriptRanges(L"[:script=Arab:]", 1634885986, v7);
  std::__function::__value_func<void ()(unsigned int,CFRange)>::~__value_func[abi:fn200100](v7);
  std::__function::__value_func<void ()(unsigned int,CFRange)>::__value_func[abi:fn200100](v6, a1);
  EnumeratePatternScriptRanges(L"[:block=Syriac:]", 1937338979, v6);
  std::__function::__value_func<void ()(unsigned int,CFRange)>::~__value_func[abi:fn200100](v6);
  GetThaiClassTable();
  std::function<void ()(unsigned int,CFRange)>::operator()(a1, 1952997737, qword_1EA86BA78, WORD1(qword_1EA86BA78) - qword_1EA86BA78 + 1);
  GetLaoClassTable();
  std::function<void ()(unsigned int,CFRange)>::operator()(a1, 1818324768, qword_1EA86B978, WORD1(qword_1EA86B978) - qword_1EA86B978 + 1);
  GetKhmerClassTable();
  std::function<void ()(unsigned int,CFRange)>::operator()(a1, 1802005874, qword_1EA86BCD0, WORD1(qword_1EA86BCD0) - qword_1EA86BCD0 + 1);
  std::__function::__value_func<void ()(unsigned int,CFRange)>::__value_func[abi:fn200100](v5, a1);
  EnumeratePatternScriptRanges("[", 1751215719, v5);
  std::__function::__value_func<void ()(unsigned int,CFRange)>::~__value_func[abi:fn200100](v5);
  std::__function::__value_func<void ()(unsigned int,CFRange)>::__value_func[abi:fn200100](v4, a1);
  EnumeratePatternScriptRanges("[", 1836674418, v4);
  std::__function::__value_func<void ()(unsigned int,CFRange)>::~__value_func[abi:fn200100](v4);
  std::__function::__value_func<void ()(unsigned int,CFRange)>::__value_func[abi:fn200100](v3, a1);
  UniversalClassTable::EnumerateScriptRanges(v3);
  return std::__function::__value_func<void ()(unsigned int,CFRange)>::~__value_func[abi:fn200100](v3);
}

uint64_t EnumeratePatternScriptRanges(uint64_t a1, int a2, uint64_t a3)
{
  v8[8] = *MEMORY[0x1E69E9840];
  v6 = 0;
  result = uset_openPattern();
  if (result)
  {
    v7 = a2;
    std::__function::__value_func<void ()(unsigned int,CFRange)>::__value_func[abi:fn200100](v8, a3);
    operator new();
  }

  return result;
}

uint64_t std::function<void ()(unsigned int,CFRange)>::operator()(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a3;
  v8[1] = a4;
  v7 = a2;
  v4 = *(a1 + 24);
  if (v4)
  {
    return (*(*v4 + 48))(v4, &v7, v8);
  }

  v6 = std::__throw_bad_function_call[abi:fn200100]();
  return TOpenTypeMorph::GetCharacterClass(v6);
}

uint64_t TOpenTypeMorph::GetCharacterClass(TOpenTypeMorph *this)
{
  v1 = this;
  v2 = ScriptCodeForLongCharacter(this);
  v3 = ScriptTagForScriptCode(v2);
  if (v3 <= 1818324767)
  {
    if (v3 <= 1735750260)
    {
      if (v3 <= 1684371040)
      {
        if (v3 != 1634885986)
        {
          if (v3 == 1650814567)
          {
            StaticClassTable = BengaliShapingEngine::GetStaticClassTable(v3);
LABEL_52:

            return IndicClassTable::getCharClass(StaticClassTable, v1);
          }

          goto LABEL_55;
        }

        goto LABEL_35;
      }

      if (v3 == 1684371041)
      {
        StaticClassTable = DevanagariShapingEngine::GetStaticClassTable(v3);
        goto LABEL_52;
      }

      if (v3 == 1735748210)
      {
        StaticClassTable = GujaratiShapingEngine::GetStaticClassTable(v3);
        goto LABEL_52;
      }

      goto LABEL_55;
    }

    if (v3 <= 1802005873)
    {
      if (v3 == 1735750261)
      {
        StaticClassTable = GurmukhiShapingEngine::GetStaticClassTable(v3);
        goto LABEL_52;
      }

      if (v3 != 1751215719)
      {
        goto LABEL_55;
      }

      if (v1 >> 1 != 6167)
      {
        v8 = v1;
        v9 = UCHAR_HANGUL_SYLLABLE_TYPE;
        goto LABEL_36;
      }

      return 0xFFFFFFFFLL;
    }

    if (v3 != 1802005874)
    {
      if (v3 == 1802396769)
      {
        StaticClassTable = KannadaShapingEngine::GetStaticClassTable(v3);
        goto LABEL_52;
      }

      goto LABEL_55;
    }

    GetKhmerClassTable();
    CharClass = 0;
    v6 = v1 - qword_1EA86BCD0;
    if (v1 < qword_1EA86BCD0 || WORD1(qword_1EA86BCD0) < v1)
    {
      return CharClass;
    }

    v7 = qword_1EA86BCD8;
    return *(v7 + 4 * v6);
  }

  if (v3 > 1937338978)
  {
    if (v3 <= 1952803956)
    {
      if (v3 == 1937338979)
      {
LABEL_35:
        v8 = v1;
        v9 = UCHAR_JOINING_TYPE;
LABEL_36:

        return u_getIntPropertyValue(v8, v9);
      }

      if (v3 == 1952542060)
      {
        StaticClassTable = TamilShapingEngine::GetStaticClassTable(v3);
        goto LABEL_52;
      }

LABEL_55:
      v12 = 0xAAAAAAAAAAAAAAAALL;
      UniversalClassTable::ClassTableForScript(v3, &v12);
      v11 = v12;
      if (!v12)
      {
        return 0;
      }

      CharClass = UniversalClassTable::getCharClass(v12, v1);
      MEMORY[0x1865F22D0](v11, 0x1050C409ECFBC67);
      return CharClass;
    }

    if (v3 == 1952803957)
    {
      StaticClassTable = TeluguShapingEngine::GetStaticClassTable(v3);
      goto LABEL_52;
    }

    if (v3 != 1952997737)
    {
      goto LABEL_55;
    }

    GetThaiClassTable();
    CharClass = 0;
    v6 = v1 - qword_1EA86BA78;
    if (v1 < qword_1EA86BA78 || WORD1(qword_1EA86BA78) < v1)
    {
      return CharClass;
    }

    v7 = qword_1EA86BA80;
    return *(v7 + 4 * v6);
  }

  if (v3 <= 1836674417)
  {
    if (v3 != 1818324768)
    {
      if (v3 == 1835825517)
      {
        StaticClassTable = MalayalamShapingEngine::GetStaticClassTable(v3);
        goto LABEL_52;
      }

      goto LABEL_55;
    }

    GetLaoClassTable();
    CharClass = 0;
    v6 = v1 - qword_1EA86B978;
    if (v1 < qword_1EA86B978 || WORD1(qword_1EA86B978) < v1)
    {
      return CharClass;
    }

    v7 = qword_1EA86B980;
    return *(v7 + 4 * v6);
  }

  if (v3 != 1836674418)
  {
    if (v3 == 1869773153)
    {
      StaticClassTable = OriyaShapingEngine::GetStaticClassTable(v3);
      goto LABEL_52;
    }

    goto LABEL_55;
  }

  return GetCharClass(v1);
}

uint64_t IsRightAssociative(unsigned int)::$_0::__invoke()
{
  pErrorCode = U_ZERO_ERROR;
  v0 = uset_openEmpty();
  MEMORY[0x1865F3020](v0, 4117, 1, &pErrorCode);
  MEMORY[0x1865F3000](v0, 9676);
  BinaryPropertySet = u_getBinaryPropertySet(UCHAR_BINARY_LIMIT, &pErrorCode);
  MEMORY[0x1865F3010](v0, BinaryPropertySet);
  v2 = u_getBinaryPropertySet(UCHAR_IDS_BINARY_OPERATOR, &pErrorCode);
  MEMORY[0x1865F3010](v0, v2);
  v3 = u_getBinaryPropertySet(UCHAR_IDS_TRINARY_OPERATOR, &pErrorCode);
  MEMORY[0x1865F3010](v0, v3);
  result = MEMORY[0x1865F3050](v0);
  _MergedGlobals_21 = v0;
  return result;
}

void ___ZL22IsSimpleNonSpacingMarkj_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  uset_openEmpty();
  v2 = xmmword_184773D60;
  v3 = xmmword_184773D70;
  v4 = 6;
  v1 = U_ZERO_ERROR;
  Name = uscript_getName();
  OpenUSetWithPattern(&v1, "[[:sc=%s:]&[:gc=Mn:]]", Name);
}

void std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&>(__int16 *a1, __int16 *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  *a1 = *a2;
  *a2 = v3;
  v4 = a1[1];
  a1[1] = a2[1];
  a2[1] = v4;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v8[4] = v5;
  v8[5] = v5;
  v8[2] = v5;
  v8[3] = v5;
  v8[0] = v5;
  v8[1] = v5;
  v6 = (a1 + 4);
  std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>(v8, *(a1 + 1), *(a1 + 2));
  std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(v6, *(a2 + 1), *(a2 + 2), (*(a2 + 2) - *(a2 + 1)) >> 4);
  std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(a2 + 1, *&v8[0], *(&v8[0] + 1), (*(&v8[0] + 1) - *&v8[0]) >> 4);
  v7 = v8;
  std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v7);
}

void std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,0>(__int16 *a1, __int16 *a2, __int16 *a3)
{
  v5 = a1;
  v6 = *a2;
  v7 = *a1;
  v8 = -1;
  if (v6 >= v7)
  {
    v8 = 1;
  }

  if (v6 == v7)
  {
    v9 = a2[1];
    v10 = a1[1];
    v11 = v9 >= v10;
    v12 = v9 == v10;
    v13 = -1;
    if (v11)
    {
      v13 = 1;
    }

    if (v12)
    {
      v8 = 0;
    }

    else
    {
      v8 = v13;
    }
  }

  v14 = *a3;
  v15 = -1;
  if (v14 >= v6)
  {
    v15 = 1;
  }

  if (v8 < 0)
  {
    if (v14 == v6)
    {
      v28 = a3[1];
      v29 = a2[1];
      v11 = v28 >= v29;
      v30 = v28 == v29;
      v31 = -1;
      if (v11)
      {
        v31 = 1;
      }

      if (v30)
      {
        v15 = 0;
      }

      else
      {
        v15 = v31;
      }
    }

    if ((v15 & 0x80) == 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&>(a1, a2);
      v32 = *a3;
      v33 = *a2;
      v34 = v32 == v33;
      if (v32 >= v33)
      {
        v35 = 1;
      }

      else
      {
        v35 = -1;
      }

      if (v34)
      {
        v36 = a3[1];
        v37 = a2[1];
        v11 = v36 >= v37;
        v38 = v36 == v37;
        v35 = -1;
        if (v11)
        {
          v35 = 1;
        }

        if (v38)
        {
          v35 = 0;
        }
      }

      if ((v35 & 0x80) == 0)
      {
        return;
      }

      a1 = a2;
    }

    v27 = a3;
    goto LABEL_55;
  }

  if (v14 == v6)
  {
    v16 = a3[1];
    v17 = a2[1];
    v11 = v16 >= v17;
    v18 = v16 == v17;
    v19 = -1;
    if (v11)
    {
      v19 = 1;
    }

    if (v18)
    {
      v15 = 0;
    }

    else
    {
      v15 = v19;
    }
  }

  if (v15 < 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&>(a2, a3);
    v20 = *a2;
    v21 = *v5;
    v22 = v20 == v21;
    if (v20 >= v21)
    {
      v23 = 1;
    }

    else
    {
      v23 = -1;
    }

    if (v22)
    {
      v24 = a2[1];
      v25 = v5[1];
      v11 = v24 >= v25;
      v26 = v24 == v25;
      v23 = -1;
      if (v11)
      {
        v23 = 1;
      }

      if (v26)
      {
        v23 = 0;
      }
    }

    if (v23 < 0)
    {
      a1 = v5;
      v27 = a2;
LABEL_55:

      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&>(a1, v27);
    }
  }
}

void std::__sort4[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,0>(__int16 *a1, __int16 *a2, __int16 *a3, __int16 *a4)
{
  std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,0>(a1, a2, a3);
  v8 = *a4;
  v9 = *a3;
  v10 = v8 == v9;
  if (v8 >= v9)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  if (v10)
  {
    v12 = a4[1];
    v13 = a3[1];
    v14 = v12 >= v13;
    v15 = v12 == v13;
    v11 = -1;
    if (v14)
    {
      v11 = 1;
    }

    if (v15)
    {
      v11 = 0;
    }
  }

  if (v11 < 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&>(a3, a4);
    v16 = *a3;
    v17 = *a2;
    v18 = v16 == v17;
    if (v16 >= v17)
    {
      v19 = 1;
    }

    else
    {
      v19 = -1;
    }

    if (v18)
    {
      v20 = a3[1];
      v21 = a2[1];
      v14 = v20 >= v21;
      v22 = v20 == v21;
      v19 = -1;
      if (v14)
      {
        v19 = 1;
      }

      if (v22)
      {
        v19 = 0;
      }
    }

    if (v19 < 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&>(a2, a3);
      v23 = *a2;
      v24 = *a1;
      v25 = v23 == v24;
      if (v23 >= v24)
      {
        v26 = 1;
      }

      else
      {
        v26 = -1;
      }

      if (v25)
      {
        v27 = a2[1];
        v28 = a1[1];
        v14 = v27 >= v28;
        v29 = v27 == v28;
        v26 = -1;
        if (v14)
        {
          v26 = 1;
        }

        if (v29)
        {
          v26 = 0;
        }
      }

      if (v26 < 0)
      {

        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&>(a1, a2);
      }
    }
  }
}

void std::__sort5[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,0>(__int16 *a1, __int16 *a2, __int16 *a3, __int16 *a4, __int16 *a5)
{
  std::__sort4[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,0>(a1, a2, a3, a4);
  v10 = *a5;
  v11 = *a4;
  v12 = v10 == v11;
  if (v10 >= v11)
  {
    v13 = 1;
  }

  else
  {
    v13 = -1;
  }

  if (v12)
  {
    v14 = a5[1];
    v15 = a4[1];
    v16 = v14 >= v15;
    v17 = v14 == v15;
    v13 = -1;
    if (v16)
    {
      v13 = 1;
    }

    if (v17)
    {
      v13 = 0;
    }
  }

  if (v13 < 0)
  {
    std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&>(a4, a5);
    v18 = *a4;
    v19 = *a3;
    v20 = v18 == v19;
    if (v18 >= v19)
    {
      v21 = 1;
    }

    else
    {
      v21 = -1;
    }

    if (v20)
    {
      v22 = a4[1];
      v23 = a3[1];
      v16 = v22 >= v23;
      v24 = v22 == v23;
      v21 = -1;
      if (v16)
      {
        v21 = 1;
      }

      if (v24)
      {
        v21 = 0;
      }
    }

    if (v21 < 0)
    {
      std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&>(a3, a4);
      v25 = *a3;
      v26 = *a2;
      v27 = v25 == v26;
      if (v25 >= v26)
      {
        v28 = 1;
      }

      else
      {
        v28 = -1;
      }

      if (v27)
      {
        v29 = a3[1];
        v30 = a2[1];
        v16 = v29 >= v30;
        v31 = v29 == v30;
        v28 = -1;
        if (v16)
        {
          v28 = 1;
        }

        if (v31)
        {
          v28 = 0;
        }
      }

      if (v28 < 0)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&>(a2, a3);
        v32 = *a2;
        v33 = *a1;
        v34 = v32 == v33;
        if (v32 >= v33)
        {
          v35 = 1;
        }

        else
        {
          v35 = -1;
        }

        if (v34)
        {
          v36 = a2[1];
          v37 = a1[1];
          v16 = v36 >= v37;
          v38 = v36 == v37;
          v35 = -1;
          if (v16)
          {
            v35 = 1;
          }

          if (v38)
          {
            v35 = 0;
          }
        }

        if (v35 < 0)
        {

          std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&>(a1, a2);
        }
      }
    }
  }
}

uint64_t std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*>(__int16 *a1, unsigned __int16 *a2)
{
  v43 = *MEMORY[0x1E69E9840];
  v4 = 0x4EC4EC4EC4EC4EC5 * ((a2 - a1) >> 3);
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,0>(a1, a1 + 52, a2 - 52);
        return 1;
      case 4:
        std::__sort4[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,0>(a1, a1 + 52, a1 + 104, a2 - 52);
        return 1;
      case 5:
        std::__sort5[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,0>(a1, a1 + 52, a1 + 104, a1 + 156, a2 - 52);
        return 1;
    }
  }

  else
  {
    if (v4 < 2)
    {
      return 1;
    }

    if (v4 == 2)
    {
      v5 = (a2 - 52);
      v6 = *(a2 - 52);
      v7 = *a1;
      v8 = v6 == v7;
      if (v6 >= v7)
      {
        v9 = 1;
      }

      else
      {
        v9 = -1;
      }

      if (v8)
      {
        v10 = *(a2 - 51);
        v11 = a1[1];
        v12 = v10 >= v11;
        v13 = v10 == v11;
        v9 = -1;
        if (v12)
        {
          v9 = 1;
        }

        if (v13)
        {
          v9 = 0;
        }
      }

      if (v9 < 0)
      {
        std::_IterOps<std::_ClassicAlgPolicy>::iter_swap[abi:fn200100]<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> *&>(a1, v5);
      }

      return 1;
    }
  }

  v14 = (a1 + 104);
  std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,OTL::GlyphLookups::SortLookups(void)::{lambda(std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>> const&)#1} &,std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>*,0>(a1, a1 + 52, a1 + 104);
  v15 = (a1 + 156);
  if (a1 + 156 != a2)
  {
    v16 = 0;
    v17 = 0;
    do
    {
      v18 = *v15;
      v19 = *v14;
      v20 = v18 == v19;
      if (v18 >= v19)
      {
        v21 = 1;
      }

      else
      {
        v21 = -1;
      }

      if (v20)
      {
        v22 = *(v15 + 1);
        v23 = *(v14 + 1);
        v24 = v22 == v23;
        v21 = v22 >= v23 ? 1 : -1;
        if (v24)
        {
          v21 = 0;
        }
      }

      if (v21 < 0)
      {
        v42 = 0xAAAAAAAAAAAAAAAALL;
        *&v25 = 0xAAAAAAAAAAAAAAAALL;
        *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v40 = v25;
        v41 = v25;
        v38 = v25;
        v39 = v25;
        v36 = v25;
        v37 = v25;
        LODWORD(v36) = *v15;
        std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>(&v36 + 1, v15[1], v15[2]);
        LOWORD(v26) = *v14;
        v27 = v16;
        while (1)
        {
          v28 = (a1 + v27);
          v28[156] = v26;
          v28[157] = *(a1 + v27 + 210);
          std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>((a1 + v27 + 320), *(a1 + v27 + 216), *(a1 + v27 + 224), (*(a1 + v27 + 224) - *(a1 + v27 + 216)) >> 4);
          if (v27 == -208)
          {
            break;
          }

          v26 = v28[52];
          if (v36 >= v26)
          {
            v29 = 1;
          }

          else
          {
            v29 = -1;
          }

          if (v36 == v26)
          {
            v30 = *(a1 + v27 + 106);
            v31 = WORD1(v36) == v30;
            v29 = WORD1(v36) >= v30 ? 1 : -1;
            if (v31)
            {
              v29 = 0;
            }
          }

          v27 -= 104;
          if ((v29 & 0x80) == 0)
          {
            v32 = a1 + v27 + 312;
            goto LABEL_48;
          }
        }

        v32 = a1;
LABEL_48:
        *v32 = v36;
        std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>((v32 + 8), *(&v36 + 1), v37, (v37 - *(&v36 + 1)) >> 4);
        if (++v17 == 8)
        {
          v33 = v15 + 13 == a2;
          v35 = &v36 + 1;
          std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v35);
          return v33;
        }

        v35 = &v36 + 1;
        std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v35);
      }

      v14 = v15;
      v16 += 104;
      v15 += 13;
    }

    while (v15 != a2);
  }

  return 1;
}

uint64_t *std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<CFRange const*>,std::__wrap_iter<CFRange const*>>(uint64_t *result, char *__src, char *a3, unint64_t a4)
{
  v6 = __src;
  v7 = result;
  v8 = result[2];
  v9 = *result;
  if (a4 <= (v8 - *result) >> 4)
  {
    v12 = result[1];
    v13 = v12 - v9;
    if (a4 <= (v12 - v9) >> 4)
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
          v14 += 16;
          *v16 = v17;
          v16 += 16;
          v15 += 16;
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
      v10 = (result + 11);
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

    if (a4 >> 60)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v20 = v8 >> 3;
    if (v8 >> 3 <= a4)
    {
      v20 = a4;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v21 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v21 = v20;
    }

    result = std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__vallocate[abi:fn200100](v7, v21);
    for (i = v7[1]; v6 != a3; i += 16)
    {
      v22 = *v6++;
      *i = v22;
    }
  }

  v7[1] = i;
  return result;
}

void *std::__function::__func<EnumeratePatternScriptRanges(char16_t const*,unsigned int,std::function<void ()(unsigned int,CFRange)>)::$_0,std::allocator<EnumeratePatternScriptRanges(char16_t const*,unsigned int,std::function<void ()(unsigned int,CFRange)>)::$_0>,void ()(unsigned int,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1EF258C88;
  std::__function::__value_func<void ()(unsigned int,CFRange)>::~__value_func[abi:fn200100]((a1 + 2));
  return a1;
}

void std::__function::__func<EnumeratePatternScriptRanges(char16_t const*,unsigned int,std::function<void ()(unsigned int,CFRange)>)::$_0,std::allocator<EnumeratePatternScriptRanges(char16_t const*,unsigned int,std::function<void ()(unsigned int,CFRange)>)::$_0>,void ()(unsigned int,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1EF258C88;
  std::__function::__value_func<void ()(unsigned int,CFRange)>::~__value_func[abi:fn200100]((a1 + 2));

  JUMPOUT(0x1865F22D0);
}

uint64_t std::__function::__func<EnumeratePatternScriptRanges(char16_t const*,unsigned int,std::function<void ()(unsigned int,CFRange)>)::$_0,std::allocator<EnumeratePatternScriptRanges(char16_t const*,unsigned int,std::function<void ()(unsigned int,CFRange)>)::$_0>,void ()(unsigned int,unsigned int)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF258C88;
  *(a2 + 8) = *(a1 + 8);
  return std::__function::__value_func<void ()(unsigned int,CFRange)>::__value_func[abi:fn200100](a2 + 16, a1 + 16);
}

void std::__function::__func<EnumeratePatternScriptRanges(char16_t const*,unsigned int,std::function<void ()(unsigned int,CFRange)>)::$_0,std::allocator<EnumeratePatternScriptRanges(char16_t const*,unsigned int,std::function<void ()(unsigned int,CFRange)>)::$_0>,void ()(unsigned int,unsigned int)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned int,CFRange)>::~__value_func[abi:fn200100](a1 + 16);

  operator delete(a1);
}

uint64_t IndicShapingEngine::ApplyLookups(IndicShapingEngine *this, unsigned __int16 **a2)
{
  v9 = 0;
  OTL::GSUB::ApplyLookups(*(this + 64), *(this + 1), 1, a2, &v9, IndicShapingEngine::ApplyLookups(OTL::GlyphLookups &)::{lambda(void *,CFRange,long)#1}::__invoke, this + 520);
  if ((*(this + 888) & 1) != 0 || (*(*(this + 62) + 15) & 8) != 0)
  {
    v11 = 0;
    v3 = *(this + 63);
    v4 = v3;
    if (!v3)
    {
      v4 = *(this + 62);
    }

    v5 = *(v4 + 12);
    v10 = v5;
    if (v5)
    {
      v6 = *(*(*(this + 1) + 496) + 408);
      (*(*v6 + 672))(v6, &v10, &v11, 1);
      v7 = v11;
      v3 = *(this + 63);
    }

    else
    {
      v7 = 0;
    }

    if (!v3)
    {
      v3 = *(this + 62);
    }

    PostGSUBFixups::apply((this + 520), *(this + 1), v7, v3, *(*(this + 64) + 72));
  }

  OpenTypeShapingEngine::SetSafeToBreakAfterEachSyllable(this);
  return v9;
}

void std::vector<unsigned int,TInlineBufferAllocator<unsigned int,1ul>>::push_back[abi:fn200100](uint64_t a1, int *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    if (v10 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      v12 = *(a1 + 32);
      v13 = &v12[4 * v11];
      if (v13 > a1 + 28)
      {
        if (!(v11 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      *(a1 + 32) = v13;
    }

    else
    {
      v12 = 0;
    }

    v14 = &v12[4 * (v8 >> 2)];
    v15 = &v12[4 * v11];
    v16 = *a2;
    v17 = v12;
    *v14 = v16;
    v6 = v14 + 4;
    memcpy(v12, v7, v8);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v6;
    v19 = *(a1 + 16);
    *(a1 + 16) = v15;
    if (v18)
    {
      if (a1 + 24 > v18 || a1 + 28 <= v18)
      {
        operator delete(v18);
      }

      else if (v19 == *(a1 + 32))
      {
        *(a1 + 32) = v18;
      }
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

void IndicShapingEngine::IndicShapingEngine(IndicShapingEngine *this, const TCharStream *a2, TRunGlue *a3, const IndicClassTable *a4, OTL::GSUB *a5)
{
  OpenTypeShapingEngine::OpenTypeShapingEngine(this, a2, a3);
  *v7 = &unk_1EF25BA28;
  *(v7 + 496) = a4;
  *(v7 + 504) = 0;
  *(v7 + 512) = a5;
  *(v7 + 536) = 0;
  *(v7 + 528) = 0;
  *(v7 + 520) = 0;
  *(v7 + 800) = v7 + 544;
  *(v7 + 808) = 0;
  *(v7 + 824) = 0;
  *(v7 + 816) = 0;
  *(v7 + 880) = v7 + 832;
  *(v7 + 888) = *(a5 + 19) != 0 || (*(a4 + 80) & 1) == 0;
  operator new();
}

uint64_t IndicShapingEngine::ApplyLookups(OTL::GlyphLookups &)::{lambda(void *,CFRange,long)#1}::__invoke(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 - a3;
  if (a4 - a3 >= 1)
  {
    v5 = *result;
    v6 = *(result + 8);
    while (v5 != v6)
    {
      if (*v5 > a2)
      {
        *v5 += v4;
      }

      v7 = v5[1];
      if (v7 > a2)
      {
        v5[1] = v7 + v4;
      }

      v5 += 4;
    }
  }

  return result;
}

const void **std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::push_back[abi:fn200100](const void **result, _OWORD *a2)
{
  v3 = result;
  v5 = result[1];
  v4 = result[2];
  if (v5 >= v4)
  {
    v7 = (v5 - *result) >> 4;
    v8 = v7 + 1;
    if ((v7 + 1) >> 60)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = v4 - *result;
    if (v9 >> 3 > v8)
    {
      v8 = v9 >> 3;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFF0)
    {
      v10 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    v11 = (result + 3);
    v19[4] = v3 + 3;
    if (v10)
    {
      v12 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<CFRange,4ul>>(v11, v10);
    }

    else
    {
      v12 = 0;
    }

    v13 = (v12 + 16 * v7);
    v14 = v12 + 16 * v10;
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
    result = std::__split_buffer<CFRange,TInlineBufferAllocator<CFRange,4ul> &>::~__split_buffer(v19);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  v3[1] = v6;
  return result;
}

__n128 std::__function::__func<TOpenTypeMorph::AddVariantsOfGlyph(TFont const&,unsigned short,std::function<void ()(unsigned short,__CFDictionary const*)>)::$_0,std::allocator<TOpenTypeMorph::AddVariantsOfGlyph(TFont const&,unsigned short,std::function<void ()(unsigned short,__CFDictionary const*)>)::$_0>,BOOL ()(unsigned int,OTL::FeatureTable const*,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF258D18;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<TOpenTypeMorph::AddVariantsOfGlyph(TFont const&,unsigned short,std::function<void ()(unsigned short,__CFDictionary const*)>)::$_0,std::allocator<TOpenTypeMorph::AddVariantsOfGlyph(TFont const&,unsigned short,std::function<void ()(unsigned short,__CFDictionary const*)>)::$_0>,BOOL ()(unsigned int,OTL::FeatureTable const*,BOOL &)>::operator()(uint64_t a1, unsigned int *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a2;
  v9 = v2;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  if (v2 != 1667460464)
  {
    v4 = ConvertOTFeatureToAATFeature(v2, &v8);
    if (v2 == 1819239276 || v4 != 2)
    {
      if (*(*(a1 + 8) + 12))
      {
        v6 = 32;
      }

      else
      {
        v6 = 16;
      }

      if ((v6 & HIDWORD(v8)) == 0)
      {
        operator new();
      }
    }
  }

  return 1;
}

__n128 std::__function::__func<TOpenTypeMorph::AddVariantsOfGlyph(TFont const&,unsigned short,std::function<void ()(unsigned short,__CFDictionary const*)>)::$_0::operator() const(unsigned int,OTL::FeatureTable const*,BOOL &)::{lambda(unsigned short,BOOL &)#1},std::allocator<TOpenTypeMorph::AddVariantsOfGlyph(TFont const&,unsigned short,std::function<void ()(unsigned short,__CFDictionary const*)>)::$_0::operator() const(unsigned int,OTL::FeatureTable const*,BOOL &)::{lambda(unsigned short,BOOL &)#1}>,BOOL ()(unsigned short,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF258D60;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<TOpenTypeMorph::AddVariantsOfGlyph(TFont const&,unsigned short,std::function<void ()(unsigned short,__CFDictionary const*)>)::$_0::operator() const(unsigned int,OTL::FeatureTable const*,BOOL &)::{lambda(unsigned short,BOOL &)#1},std::allocator<TOpenTypeMorph::AddVariantsOfGlyph(TFont const&,unsigned short,std::function<void ()(unsigned short,__CFDictionary const*)>)::$_0::operator() const(unsigned int,OTL::FeatureTable const*,BOOL &)::{lambda(unsigned short,BOOL &)#1}>,BOOL ()(unsigned short,BOOL &)>::operator()(uint64_t a1, unsigned __int16 *a2, double a3, int8x16_t a4)
{
  v4 = (**(a1 + 8) + (bswap32(*(**(a1 + 8) + 2 * *a2 + 2)) >> 16));
  v5 = **(a1 + 16);
  v6 = **(a1 + 24);
  v7 = v4 + 3;
  v8 = (v4 + 2) < v5 || v7 > v6;
  if (v8 || ((v9 = v4[2], v10 = __rev16(v9), v11 = &v4[v10 + 3] + ((v4[1] >> 11) & 2), v5 <= v4) ? (v12 = v11 >= v4) : (v12 = 0), v12 ? (v13 = v11 > v6) : (v13 = 1), v13))
  {
    v65 = 0;
    return v65 & 1;
  }

  v14 = &v7[v10];
  if ((v4 + 4) <= v6)
  {
    v15 = (v6 - v7) >> 1;
  }

  else
  {
    v15 = 0;
  }

  v16 = bswap32(v15) >> 16;
  v17 = v14 < v7 || v14 > v6;
  if (v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = v10;
  }

  if (v17)
  {
    v9 = v16;
  }

  if (!v9)
  {
    v21 = 1;
    goto LABEL_119;
  }

  v20 = 0;
  v21 = 0;
  v68 = v18;
  if ((v18 & 0xFFFE) != 0)
  {
    v22 = v18;
  }

  else
  {
    v22 = 1;
  }

  alloc = *MEMORY[0x1E695E480];
  while (1)
  {
    v23 = (v4 + (bswap32(v7[v20]) >> 16));
    v24 = **(a1 + 24);
    if ((v23 + 1) > v24)
    {
      break;
    }

    v25 = *v4;
    if (v25 == 1792)
    {
      if (*v23 != 256 || (v23 + 4) > v24)
      {
        break;
      }

      v27 = v23[1];
      if (v27 == 1792 || (v23 = (v23 + bswap32(*(v23 + 1))), (v23 + 1) > v24))
      {
LABEL_118:
        LOBYTE(v18) = 1;
        goto LABEL_119;
      }

      v28 = __rev16(v27);
    }

    else
    {
      v28 = __rev16(v25);
    }

    if ((v28 & 0xFFFFFFFD) != 1)
    {
      goto LABEL_118;
    }

    OTL::LookupWithCoverage::GetCoverage(v23, v24, v70, a3, a4);
    v29 = v71;
    v30 = (v70 + (v72 >> 1));
    if (v72)
    {
      v29 = *(*v30 + v71);
    }

    v31 = v29(v30, **(a1 + 32));
    if (v31)
    {
      v32 = v31;
      v70[0] = 0;
      v33 = **(a1 + 40);
      if (v33 != 1633774708 && v33 != 1819239276)
      {
        *cStr = bswap32(v33);
        v74 = 0;
        v69 = CFStringCreateWithCString(alloc, cStr, 0);
      }

      if (v28 == 3)
      {
        if (*v23 == 256)
        {
          v35 = **(a1 + 24);
          v36 = v23 + 3;
          if ((v23 + 3) > v35)
          {
            goto LABEL_123;
          }

          v37 = bswap32(v23[2]) >> 16;
          v38 = &v36[v37];
          v39 = v38 < v36 || v38 > v35;
          v40 = !v39;
          v41 = (v23 + 4) <= v35 ? (v35 - v36) >> 1 : 0;
          if (!v40 && v41 != v37)
          {
            goto LABEL_123;
          }

          if (v32 <= v37)
          {
            v42 = v32 - 1;
            if (v40)
            {
              if (v42 >= v37)
              {
                goto LABEL_123;
              }
            }

            else if (v41 != v37 || v42 >= v37)
            {
              goto LABEL_123;
            }

            v54 = (v23 + (bswap32(v36[v42]) >> 16));
            v55 = v54 + 1;
            if ((v54 + 1) > v35)
            {
              goto LABEL_123;
            }

            v56 = bswap32(*v54) >> 16;
            v57 = &v55[v56];
            v58 = (v54 + 2) <= v35 ? (v35 - v55) >> 1 : 0;
            v59 = v57 <= v35 && v57 >= v55;
            if (!v59 && v58 != v56)
            {
              goto LABEL_123;
            }

            if (*v54)
            {
              if (v56 <= 1)
              {
                v61 = 1;
              }

              else
              {
                v61 = v56;
              }

              v62 = -v61;
              v63 = 1;
              do
              {
                v69 = 0xAAAAAAAAAAAAAAAALL;
                explicit = atomic_load_explicit(v70, memory_order_acquire);
                if (explicit)
                {
                  v69 = 0xAAAAAAAAAAAAAAAALL;
                  CopyFeatureSettingForTag(explicit, 0, 0, 0, v63, &v69);
                }

                else
                {
                  v69 = 0;
                }

                std::function<void ()(unsigned short,__CFDictionary const*)>::operator()(*(*(a1 + 56) + 24), bswap32(v54[v63]) >> 16, atomic_load_explicit(&v69, memory_order_acquire));

                ++v63;
              }

              while (v62 + v63 != 1);
            }
          }
        }
      }

      else if (v28 == 1)
      {
        v69 = 0xAAAAAAAAAAAAAAAALL;
        v34 = atomic_load_explicit(v70, memory_order_acquire);
        if (v34)
        {
          v69 = 0xAAAAAAAAAAAAAAAALL;
          CopyFeatureSettingForTag(v34, 0, 0, 0, 1, &v69);
        }

        else
        {
          v69 = 0;
        }

        v43 = bswap32(*v23) >> 16;
        if (v43 == 2)
        {
          v46 = **(a1 + 24);
          v47 = v23 + 3;
          if ((v23 + 3) > v46 || ((v48 = bswap32(v23[2]) >> 16, v49 = &v47[v48], (v23 + 4) <= v46) ? (v50 = (v46 - v47) >> 1) : (v50 = 0), v49 <= v46 ? (v51 = v49 >= v47) : (v51 = 0), !v51 ? (v52 = v50 == v48) : (v52 = 1), !v52))
          {
LABEL_122:

LABEL_123:
            break;
          }

          if (v32 <= v48)
          {
            v44 = *(a1 + 56);
            v45 = bswap32(v47[v32 - 1]) >> 16;
            goto LABEL_86;
          }
        }

        else if (v43 == 1)
        {
          if ((v23 + 3) > **(a1 + 24))
          {
            goto LABEL_122;
          }

          v44 = *(a1 + 56);
          v45 = **(a1 + 32) + (bswap32(v23[2]) >> 16);
LABEL_86:
          std::function<void ()(unsigned short,__CFDictionary const*)>::operator()(*(v44 + 24), v45, atomic_load_explicit(&v69, memory_order_acquire));
        }
      }
    }

    ++v20;
    LOBYTE(v18) = v68;
    v21 = v20 >= v68;
    if (v20 == v22)
    {
      goto LABEL_119;
    }
  }

  LOBYTE(v18) = 0;
LABEL_119:
  v65 = v21 | v18;
  return v65 & 1;
}

uint64_t std::function<void ()(unsigned short,__CFDictionary const*)>::operator()(uint64_t a1, __int16 a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:fn200100]();
  return std::__function::__value_func<BOOL ()(unsigned short,BOOL &)>::~__value_func[abi:fn200100](v4);
}

uint64_t std::__function::__value_func<BOOL ()(unsigned short,BOOL &)>::~__value_func[abi:fn200100](uint64_t a1)
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

__n128 std::__function::__func<TOpenTypeMorph::AddShapingGlyphs(TFont const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(unsigned int)>,std::function<void ()(void)>)::$_0,std::allocator<TOpenTypeMorph::AddShapingGlyphs(TFont const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(unsigned int)>,std::function<void ()(void)>)::$_0>,BOOL ()(unsigned int,OTL::ScriptTable const*,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF258DA8;
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

__n128 std::__function::__func<TOpenTypeMorph::AddShapingGlyphs(TFont const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(unsigned int)>,std::function<void ()(void)>)::$_0::operator() const(unsigned int,OTL::ScriptTable const*,BOOL &)::{lambda(unsigned int,OTL::LangSysTable const*,BOOL &)#1},std::allocator<TOpenTypeMorph::AddShapingGlyphs(TFont const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(unsigned int)>,std::function<void ()(void)>)::$_0::operator() const(unsigned int,OTL::ScriptTable const*,BOOL &)::{lambda(unsigned int,OTL::LangSysTable const*,BOOL &)#1}>,BOOL ()(unsigned int,OTL::LangSysTable const*,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF258DF0;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<TOpenTypeMorph::AddCoveredGlyphs(TFont const&,CTFeatureSetting *,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0,std::allocator<TOpenTypeMorph::AddCoveredGlyphs(TFont const&,CTFeatureSetting *,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0>,BOOL ()(unsigned int,OTL::ScriptTable const*,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF258E38;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

__n128 std::__function::__func<TOpenTypeMorph::AddCoveredGlyphs(TFont const&,CTFeatureSetting *,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0::operator() const(unsigned int,OTL::ScriptTable const*,BOOL &)::{lambda(unsigned int,OTL::LangSysTable const*,BOOL &)#1},std::allocator<TOpenTypeMorph::AddCoveredGlyphs(TFont const&,CTFeatureSetting *,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0::operator() const(unsigned int,OTL::ScriptTable const*,BOOL &)::{lambda(unsigned int,OTL::LangSysTable const*,BOOL &)#1}>,BOOL ()(unsigned int,OTL::LangSysTable const*,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF258E80;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  v4 = *(a1 + 40);
  *(a2 + 56) = *(a1 + 56);
  *(a2 + 40) = v4;
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<TOpenTypeMorph::AddCoveredGlyphs(TFont const&,CTFeatureSetting *,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0::operator() const(unsigned int,OTL::ScriptTable const*,BOOL &)::{lambda(unsigned int,OTL::LangSysTable const*,BOOL &)#1},std::allocator<TOpenTypeMorph::AddCoveredGlyphs(TFont const&,CTFeatureSetting *,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0::operator() const(unsigned int,OTL::ScriptTable const*,BOOL &)::{lambda(unsigned int,OTL::LangSysTable const*,BOOL &)#1}>,BOOL ()(unsigned int,OTL::LangSysTable const*,BOOL &)>::operator()(uint64_t a1, unsigned int *a2)
{
  v32 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v16 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[3] = v4;
  v15[4] = v4;
  v15[1] = v4;
  v15[2] = v4;
  v15[0] = v4;
  OTL::GCommon::GCommon(v15, 0, *(a1 + 16), **(a1 + 24), *(a1 + 32), *(a1 + 8), v3);
  *&v15[0] = &unk_1EF258990;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v30[8] = v5;
  v30[7] = v5;
  v30[6] = v5;
  v30[5] = v5;
  v30[4] = v5;
  v30[3] = v5;
  v30[2] = v5;
  v30[1] = v5;
  v30[0] = v5;
  memset(v29, 0, sizeof(v29));
  v31 = v30;
  if (OTL::GCommon::GetFeatures(v15, v29))
  {
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v27[14] = v6;
    v27[13] = v6;
    v27[12] = v6;
    v27[11] = v6;
    v27[10] = v6;
    v27[9] = v6;
    v27[8] = v6;
    v27[7] = v6;
    v27[6] = v6;
    v27[5] = v6;
    v27[4] = v6;
    v27[3] = v6;
    v27[2] = v6;
    v27[1] = v6;
    v27[0] = v6;
    v24 = 0;
    v25 = 0;
    v26 = 0;
    v28 = v27;
    values[0] = **(a1 + 40);
    v7 = 1;
    v8 = CFArrayCreate(*MEMORY[0x1E695E480], values, 1, MEMORY[0x1E695E9C0]);
    v12 = xmmword_184773E58;
    memset(v13, 170, sizeof(v13));
    v14 = 0xAAAAAAAAFFFFFFFFLL;
    memset(v11, 170, sizeof(v11));
    TFontFeatureSettingList::TFontFeatureSettingList(v11, v8);
    ConvertSettingsToOTFeatures(v29, v11, *(*(a1 + 16) + 12) & 1, &v24, 0, 0, 0);
    if (v24 != v25)
    {
      *&v9 = 0xAAAAAAAAAAAAAAAALL;
      *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v21[6] = v9;
      v21[5] = v9;
      v21[4] = v9;
      v21[3] = v9;
      v21[2] = v9;
      v21[1] = v9;
      v21[0] = v9;
      v22 = 0xAAAAAAAAAAAAAAAALL;
      v23 = v21;
      memset(values, 0, sizeof(values));
      OTL::GCommon::GetLookups(v15, &v24, values, 0);
      std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v19, *(a1 + 48));
      std::__function::__value_func<void ()(void)>::__value_func[abi:fn200100](v18, *(a1 + 56));
      v7 = OTL::GSUB::AddCoveredGlyphs(v15, values, v19, v18);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:fn200100](v18);
      std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](v19);
      v17 = values;
      std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v17);
    }

    std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::~__hash_table(v13);
    std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::~__hash_table(&v11[5]);
    std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::destroy(&v11[1], v11[2]);

    values[0] = &v24;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](values);
  }

  else
  {
    v7 = 1;
  }

  v24 = v29;
  std::vector<unsigned int,TInlineBufferAllocator<unsigned int,36ul>>::__destroy_vector::operator()[abi:fn200100](&v24);
  return v7;
}

__n128 std::__function::__func<TOpenTypeMorph::FindScriptForVerticalGlyphs(TFont const&)::$_0,std::allocator<TOpenTypeMorph::FindScriptForVerticalGlyphs(TFont const&)::$_0>,BOOL ()(unsigned int,OTL::ScriptTable const*,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF258EC8;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<TOpenTypeMorph::FindScriptForVerticalGlyphs(TFont const&)::$_0,std::allocator<TOpenTypeMorph::FindScriptForVerticalGlyphs(TFont const&)::$_0>,BOOL ()(unsigned int,OTL::ScriptTable const*,BOOL &)>::operator()(uint64_t a1, unsigned int *a2, uint64_t a3, _BYTE *a4)
{
  v6 = *a2;
  v12 = 0xAAAAAAAAAAAAAAAALL;
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[3] = v7;
  v11[4] = v7;
  v11[1] = v7;
  v11[2] = v7;
  v11[0] = v7;
  OTL::GCommon::GCommon(v11, 0, *(a1 + 8), **(a1 + 16), *(a1 + 24), v6, 0);
  *&v11[0] = &unk_1EF258990;
  if (OTL::GCommon::HasFeature(v11, 0x76727432u) || OTL::GCommon::HasFeature(v11, 0x76657274u))
  {
    if (v6 == 1145457748)
    {
      v8 = 0;
    }

    else
    {
      v8 = ScriptCodeForScriptTag(v6);
    }

    v9 = *(a1 + 32);
    *v9 = v8;
    *(v9 + 4) = 1;
    *a4 = 1;
  }

  return 1;
}

__n128 std::__function::__func<TOpenTypeMorph::AddShapingLanguages(TBaseFont const&,std::function<void ()(__CFString const*)>,std::function<void ()(void)>)::$_0,std::allocator<TOpenTypeMorph::AddShapingLanguages(TBaseFont const&,std::function<void ()(__CFString const*)>,std::function<void ()(void)>)::$_0>,BOOL ()(unsigned int,OTL::ScriptTable const*,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF258F10;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<TOpenTypeMorph::AddShapingLanguages(TBaseFont const&,std::function<void ()(__CFString const*)>,std::function<void ()(void)>)::$_0,std::allocator<TOpenTypeMorph::AddShapingLanguages(TBaseFont const&,std::function<void ()(__CFString const*)>,std::function<void ()(void)>)::$_0>,BOOL ()(unsigned int,OTL::ScriptTable const*,BOOL &)>::operator()(uint64_t a1, unsigned int *a2, unsigned __int16 **a3)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v4 = *a3;
  v5 = **(a1 + 8);
  v6 = **(a1 + 16);
  v7 = *(a1 + 24);
  v10[0] = &unk_1EF258F58;
  v10[1] = v3;
  v10[2] = v7;
  v10[3] = v10;
  v8 = OTL::GCommon::IterateLangSysTables(v5, v4, v6, v10);
  std::__function::__value_func<BOOL ()(unsigned int,OTL::LangSysTable const*,BOOL &)>::~__value_func[abi:fn200100](v10);
  return v8;
}

__n128 std::__function::__func<TOpenTypeMorph::AddShapingLanguages(TBaseFont const&,std::function<void ()(__CFString const*)>,std::function<void ()(void)>)::$_0::operator() const(unsigned int,OTL::ScriptTable const*,BOOL &)::{lambda(unsigned int,OTL::LangSysTable const*,BOOL &)#1},std::allocator<TOpenTypeMorph::AddShapingLanguages(TBaseFont const&,std::function<void ()(__CFString const*)>,std::function<void ()(void)>)::$_0::operator() const(unsigned int,OTL::ScriptTable const*,BOOL &)::{lambda(unsigned int,OTL::LangSysTable const*,BOOL &)#1}>,BOOL ()(unsigned int,OTL::LangSysTable const*,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF258F58;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<TOpenTypeMorph::AddShapingLanguages(TBaseFont const&,std::function<void ()(__CFString const*)>,std::function<void ()(void)>)::$_0::operator() const(unsigned int,OTL::ScriptTable const*,BOOL &)::{lambda(unsigned int,OTL::LangSysTable const*,BOOL &)#1},std::allocator<TOpenTypeMorph::AddShapingLanguages(TBaseFont const&,std::function<void ()(__CFString const*)>,std::function<void ()(void)>)::$_0::operator() const(unsigned int,OTL::ScriptTable const*,BOOL &)::{lambda(unsigned int,OTL::LangSysTable const*,BOOL &)#1}>,BOOL ()(unsigned int,OTL::LangSysTable const*,BOOL &)>::operator()(uint64_t a1, unsigned int *a2)
{
  v3 = *a2;
  if (*a2)
  {
    v15 = 0xAAAAAAAAAAAAAAAALL;
    LanguagesWithLangSysTag(v3, &v15);
    explicit = atomic_load_explicit(&v15, memory_order_acquire);
    if (explicit)
    {
      Count = CFArrayGetCount(explicit);
      if (Count)
      {
        v6 = Count;
        for (i = 0; i != v6; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(explicit, i);
          std::function<void ()(__CFString const*)>::operator()(*(a1 + 16), ValueAtIndex);
        }
      }
    }
  }

  else
  {
    v10 = *(a1 + 8);
    v11 = v10 & 0xFFFFFF00 | 0x20;
    if (v11 > 1835822367)
    {
      if (v11 <= 1869773087)
      {
        if (v11 == 1835822368)
        {
          v10 = 1835825517;
        }

        else if (v11 == 1836674336)
        {
          v10 = 1836674418;
        }
      }

      else
      {
        switch(v11)
        {
          case 1869773088:
            v10 = 1869773153;
            break;
          case 1952803872:
            v10 = 1952803957;
            break;
          case 1953328160:
            v10 = 1952542060;
            break;
        }
      }
    }

    else if (v11 <= 1735029279)
    {
      if (v11 == 1651402528)
      {
        v10 = 1650814567;
      }

      else if (v11 == 1684370976)
      {
        v10 = 1684371041;
      }
    }

    else
    {
      switch(v11)
      {
        case 1735029280:
          v10 = 1735748210;
          break;
        case 1735750176:
          v10 = 1735750261;
          break;
        case 1802396704:
          v10 = 1802396769;
          break;
      }
    }

    ScriptCodeForScriptTag(v10);
    ShortName = uscript_getShortName();
    if (ShortName)
    {
      v13 = CFStringCreateWithCString(*MEMORY[0x1E695E480], ShortName, 0x600u);
      if (v13)
      {
        v14 = v13;
        std::function<void ()(__CFString const*)>::operator()(*(a1 + 16), v13);
        CFRelease(v14);
      }
    }
  }

  return 1;
}

uint64_t std::__function::__value_func<void ()(unsigned int,CFRange)>::__value_func[abi:fn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__value_func<void ()(unsigned int,CFRange)>::~__value_func[abi:fn200100](uint64_t a1)
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

uint64_t UniversalClassTable::EnumerateScriptRanges(uint64_t a1)
{
  v2 = "Q";
  v3 = 1696;
  do
  {
    result = std::function<void ()(unsigned int,CFRange)>::operator()(a1, *(v2 - 2), *(v2 - 1), *(v2 + 1) + *v2);
    v2 += 16;
    v3 -= 16;
  }

  while (v3);
  return result;
}

uint64_t UniversalClassTable::determineCharClass(unsigned int c)
{
  if (c == 32)
  {
    return 14;
  }

  if (c == 847)
  {
    return 21;
  }

  if (c >> 9 < 0x7F || (result = 22, c >> 4 >= 0xFE1) && c - 917760 >= 0xF0)
  {
    v3 = u_charType(c);
    if (v3 > 0x18)
    {
      if (v3 == 27 || v3 == 25)
      {
        return 16;
      }
    }

    else
    {
      if (v3 == 12)
      {
        return 14;
      }

      if (v3 == 23)
      {
        return 2;
      }
    }

    IntPropertyValue = u_getIntPropertyValue(c, UCHAR_SCRIPT);
    if (IntPropertyValue == 71)
    {
      v5 = 23;
    }

    else
    {
      v5 = 0;
    }

    if (IntPropertyValue)
    {
      return v5;
    }

    else
    {
      return 14;
    }
  }

  return result;
}

void std::vector<unsigned short,TInlineBufferAllocator<unsigned short,48ul>>::push_back[abi:fn200100](uint64_t a1, __int16 *a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
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

    v14 = a1 + 24;
    if (v13)
    {
      v15 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<unsigned short,48ul>>(a1 + 24, v13);
      v13 = v16;
      v7 = *a1;
      v8 = *(a1 + 8) - *a1;
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
    v21 = *a1;
    *a1 = v20;
    *(a1 + 8) = v6;
    v22 = *(a1 + 16);
    *(a1 + 16) = v18;
    if (v21)
    {
      if (v14 > v21 || (v23 = (a1 + 120), a1 + 120 <= v21))
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
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(a1 + 8) = v6;
}

uint64_t UniversalClassTable::ClassTableForScript@<X0>(uint64_t this@<X0>, void *a2@<X8>)
{
  if (this)
  {
    v4 = 0;
    memset(v3, 170, sizeof(v3));
    FirstBlockForScript(&v4, this, v3);
    if (v3[0])
    {
      operator new();
    }

    this = 0;
    *a2 = 0;
  }

  else
  {
    *a2 = 0;
  }

  return this;
}

uint64_t *FirstBlockForScript@<X0>(BOOL *a1@<X1>, unsigned int a2@<W0>, uint64_t a3@<X8>)
{
  if ((atomic_load_explicit(&_MergedGlobals_22, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&_MergedGlobals_22))
  {
    xmmword_1ED567CD8 = 0u;
    *&qword_1ED567CE8 = 0u;
    dword_1ED567CF8 = 1065353216;
    __cxa_guard_release(&_MergedGlobals_22);
  }

  if (qword_1ED567CD0 != -1)
  {
    dispatch_once_f(&qword_1ED567CD0, 0, FirstBlockForScript(unsigned int,BOOL *)::$_0::__invoke);
  }

  if (result)
  {
    v7 = result[3];
    v8 = *(v7 + 14);
    if (a1)
    {
      *a1 = v8 != 0;
    }

    *a3 = &kClassDataTable + 2 * *(v7 + 12);
    v9 = *(v7 + 4);
    v10 = v9 + *(v7 + 8);
    *(a3 + 8) = v9;
    *(a3 + 12) = v10 - 1;
    *(a3 + 16) = v10 + *(v7 + 10);
    *(a3 + 20) = v8 != 0;
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }

  return result;
}

uint64_t UniversalClassTable::getCharClass(UniversalClassTable *this, unsigned int c)
{
  if (c >= *this && *(this + 1) >= c)
  {
    return *(*(this + 2) + 2 * (c - *this));
  }

  v2 = &word_184773E9C;
  v3 = 1696;
  while (1)
  {
    v4 = *(v2 - 2);
    v5 = v4 + *(v2 - 2) - 1;
    v7 = c >= v4;
    v6 = c - v4;
    v7 = v7 && v5 >= c;
    if (v7)
    {
      break;
    }

    v2 += 8;
    v3 -= 16;
    if (!v3)
    {
      return UniversalClassTable::determineCharClass(c);
    }
  }

  return kClassDataTable[*v2 + v6];
}

uint64_t UniversalClassTable::getSplitMatra(UniversalClassTable *this)
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = 0;
  *&v1 = 0xAAAAAAAAAAAAAAAALL;
  *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[2] = v1;
  v17[0] = v1;
  v17[1] = v1;
  v18 = 0xAAAAAAAAAAAAAAAALL;
  v19 = v17 + 4;
  v15 = v17 + 4;
  v16 = 0;
  LODWORD(v17[0]) = 0;
  v13 = &v16;
  v14 = v17 + 4;
  LODWORD(v12) = 0;
  unorm2_getNFDInstance();
  Decomposition = unorm2_getDecomposition();
  if (Decomposition < 1)
  {
    v3 = 0;
  }

  else
  {
    v4 = 0;
    v5 = v13;
    v6 = (v14 - v13) >> 1;
    v7 = &v10;
    do
    {
      if (v6 <= v4)
      {
LABEL_12:
        __break(1u);
      }

      v8 = *&v5[2 * v4];
      if ((v8 & 0xFC00) == 0xD800)
      {
        if (v6 <= ++v4)
        {
          goto LABEL_12;
        }

        v8 = *&v5[2 * v4] + (v8 << 10) - 56613888;
      }

      *v7++ = v8;
      ++v4;
    }

    while (v4 < Decomposition);
    v3 = v10;
  }

  v12 = &v13;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v12);
  return v3;
}

uint64_t std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<unsigned short,48ul>>(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + 96);
  result = *(a1 + 96);
  v4 = result + 2 * a2;
  if (v4 > v3)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v3 = v4;
  return result;
}

void std::vector<unsigned short,TInlineBufferAllocator<unsigned short,48ul>>::__destroy_vector::operator()[abi:fn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    v3 = (a1 + 120);
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
      if (*(a1 + 16) == *(a1 + 120))
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

uint64_t *std::unordered_map<unsigned int,anonymous namespace::DirectoryEntry const&>::find[abi:fn200100](unsigned int a1)
{
  if (!*(&xmmword_1ED567CD8 + 1))
  {
    return 0;
  }

  v1 = vcnt_s8(*(&xmmword_1ED567CD8 + 8));
  v1.i16[0] = vaddlv_u8(v1);
  if (v1.u32[0] > 1uLL)
  {
    v2 = a1;
    if (*(&xmmword_1ED567CD8 + 1) <= a1)
    {
      v2 = a1 % DWORD2(xmmword_1ED567CD8);
    }
  }

  else
  {
    v2 = (DWORD2(xmmword_1ED567CD8) - 1) & a1;
  }

  i = *(xmmword_1ED567CD8 + 8 * v2);
  if (i)
  {
    for (i = *i; i; i = *i)
    {
      v4 = i[1];
      if (v4 == a1)
      {
        if (*(i + 4) == a1)
        {
          return i;
        }
      }

      else
      {
        if (v1.u32[0] > 1uLL)
        {
          if (v4 >= *(&xmmword_1ED567CD8 + 1))
          {
            v4 %= *(&xmmword_1ED567CD8 + 1);
          }
        }

        else
        {
          v4 &= *(&xmmword_1ED567CD8 + 1) - 1;
        }

        if (v4 != v2)
        {
          return 0;
        }
      }
    }
  }

  return i;
}

uint64_t *FirstBlockForScript(unsigned int,BOOL *)::$_0::__invoke()
{
  for (i = 0; i != 1696; i += 16)
  {
    v1 = *&kClassDataDirectory[i];
    if (!result)
    {
      if (*(&xmmword_1ED567CD8 + 1))
      {
        v3 = vcnt_s8(*(&xmmword_1ED567CD8 + 8));
        v3.i16[0] = vaddlv_u8(v3);
        if (v3.u32[0] > 1uLL)
        {
          v4 = v1;
          if (*(&xmmword_1ED567CD8 + 1) <= v1)
          {
            v4 = v1 % DWORD2(xmmword_1ED567CD8);
          }
        }

        else
        {
          v4 = (DWORD2(xmmword_1ED567CD8) - 1) & v1;
        }

        v5 = *(xmmword_1ED567CD8 + 8 * v4);
        if (v5)
        {
          for (j = *v5; j; j = *j)
          {
            v7 = j[1];
            if (v7 == v1)
            {
              if (*(j + 4) == v1)
              {
                goto LABEL_21;
              }
            }

            else
            {
              if (v3.u32[0] > 1uLL)
              {
                if (v7 >= *(&xmmword_1ED567CD8 + 1))
                {
                  v7 %= *(&xmmword_1ED567CD8 + 1);
                }
              }

              else
              {
                v7 &= *(&xmmword_1ED567CD8 + 1) - 1;
              }

              if (v7 != v4)
              {
                break;
              }
            }
          }
        }
      }

      operator new();
    }

LABEL_21:
    ;
  }

  return result;
}

uint64_t ZeroMarkWidths(TRunGlue *this, unsigned __int16 **a2)
{
  v2 = this;
  v20 = *MEMORY[0x1E69E9840];
  if (a2[2] == &OTL::GDEF::kNullClassDefTable)
  {

    return ZeroMarkWidths(this, 0, ZeroCombiningMarkWidths(TRunGlue &)::$_0::__invoke);
  }

  else
  {
    v4 = *(this + 62);
    v5 = *(v4 + 408);
    if ((*(v5 + 184) & 0x400) == 0)
    {
      TBaseFont::DetermineFontFlags(*(v4 + 408), 0x400u);
    }

    if ((*(v5 + 180) & 0x400) != 0)
    {
      goto LABEL_6;
    }

    this = TBaseFont::GetCommonTable(*(v4 + 408), 1634561906, 0);
    if (this)
    {
      goto LABEL_6;
    }

    this = TBaseFont::GetCommonTable(*(v4 + 408), 1196643650, 0);
    if (!this)
    {
      goto LABEL_6;
    }

    v12 = this;
    if (*(v2 + 2) < 1)
    {
      v15 = 0;
    }

    else
    {
      v13 = *(v2 + 1);
      v14 = *(*v2 + 16);
      if (v13 >= (*(*v2 + 24) - v14) >> 3)
      {
        __break(1u);
      }

      v15 = ScriptTagForScriptCode(*(*(*(v14 + 8 * v13) + 48) + 304));
    }

    v19 = 0xAAAAAAAAAAAAAAAALL;
    *&v16 = 0xAAAAAAAAAAAAAAAALL;
    *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v17[3] = v16;
    v18 = v16;
    v17[1] = v16;
    v17[2] = v16;
    v17[0] = v16;
    this = OTL::GCommon::GCommon(v17, 0, v4, v12, a2, v15, 0);
    if (DWORD2(v18))
    {
LABEL_6:
      v6 = *(v2 + 63);
      if (v6 <= 0x10000)
      {
        v7 = ((v6 + 63) >> 3) & 0x7FF8;
      }

      else
      {
        v7 = 0x2000;
      }

      MEMORY[0x1EEE9AC00](this, v7);
      v9 = v17 - v8;
      *&v17[0] = v17 - v8;
      *(&v17[0] + 1) = v10;
      bzero(v17 - v8, v10);
      OTL::ClassDefTable::PopulateGlyphClassBitmap(a2[2], 3, v9, v6);
      return ZeroMarkWidths(v2, v17, ZeroMarkWidths(TRunGlue &,OTL::GDEF const&)::$_0::__invoke);
    }

    else
    {
      return 0;
    }
  }
}

uint64_t ZeroMarkWidths(TRunGlue *this, void *a2, unsigned int (*a3)(void *, TRunGlue *, int64_t))
{
  if ((*(this + 6) & 0x80000000) != 0)
  {
    v17 = TRunGlue::length(this);
    v8 = 0;
    if (v17)
    {
      v18 = v17 - 1;
      v19 = 0.0;
      v20 = MEMORY[0x1E695F060];
      do
      {
        v28 = this;
        v29 = v18;
        if (TRunGlue::TGlyph::glyphID(&v28) != 0xFFFF && (TRunGlue::IsDeleted(v28, v29) & 1) == 0)
        {
          if (a3(a2, v28, v29))
          {
            Advance = TRunGlue::GetAdvance(v28, v29);
            v23 = v22;
            v19 = v19 + Advance;
            if (v19 != 0.0 && (TRunGlue::GetGlyphProps(v28, v29) & 0x4000) != 0)
            {
              v31.x = TRunGlue::GetOrigin(v28, v29) - v19;
              TRunGlue::SetOrigin(v28, v29, v31);
            }

            v25 = v20[1];
            if (Advance != *v20 || v23 != v25)
            {
              v24 = *v20;
              TRunGlue::SetAdvance(v28, v29, *(&v25 - 1));
              v8 = 1;
            }
          }

          else
          {
            v19 = 0.0;
          }
        }

        --v18;
      }

      while (v18 != -1);
    }
  }

  else
  {
    v28 = this;
    v29 = 0;
    v6 = TRunGlue::length(this);
    if (v6)
    {
      v7 = v6;
      v8 = 0;
      v9 = 0.0;
      v10 = MEMORY[0x1E695F060];
      do
      {
        if (TRunGlue::TGlyph::glyphID(&v28) != 0xFFFF && (TRunGlue::IsDeleted(v28, v29) & 1) == 0)
        {
          if (a3(a2, v28, v29))
          {
            v11 = TRunGlue::GetAdvance(v28, v29);
            v13 = v12;
            if (v9 != 0.0 && (TRunGlue::GetGlyphProps(v28, v29) & 0x4000) != 0)
            {
              v30.x = v9 + TRunGlue::GetOrigin(v28, v29);
              TRunGlue::SetOrigin(v28, v29, v30);
            }

            v9 = v9 + v11;
            v15 = v10[1];
            if (v11 != *v10 || v13 != v15)
            {
              v14 = *v10;
              TRunGlue::SetAdvance(v28, v29, *(&v15 - 1));
              v8 = 1;
            }
          }

          else
          {
            v9 = 0.0;
          }
        }

        ++v29;
      }

      while (v29 != v7);
    }

    else
    {
      v8 = 0;
    }
  }

  return v8 & 1;
}

uint64_t ZeroMarkWidths(TRunGlue &,OTL::GDEF const&)::$_0::__invoke(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v7[0] = a2;
  v7[1] = a3;
  v3 = *a1;
  v4 = a1[1];
  v5 = TRunGlue::TGlyph::glyphID(v7);
  if (v4 <= v5 >> 3)
  {
    return 0;
  }

  else
  {
    return (*(v3 + (v5 >> 3)) >> (v5 & 7)) & 1;
  }
}

uint64_t std::__function::__func<TOpenTypePositioningEngine::PositionRuns(SyncState &,KerningStatus &)::$_0,std::allocator<TOpenTypePositioningEngine::PositionRuns(SyncState &,KerningStatus &)::$_0>,BOOL ()(unsigned int,OTL::FeatureTable const*,BOOL &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF258FA0;
  a2[1] = v2;
  return result;
}

CTParagraphStyleRef CTParagraphStyleCreateCopy(CTParagraphStyleRef paragraphStyle)
{
  if (!paragraphStyle)
  {
    return 0;
  }

  v6[0] = 0;
  v6[1] = 0xAAAAAAAAAAAAAA00;
  if (!TParagraphStyle::SetStyle(v6, paragraphStyle))
  {
    return 0;
  }

  v1 = TCFBase<TNativeParagraphStyle>::Allocate();
  v2 = v1;
  if (v1)
  {
    v1[2] = 0;
    v1[3] = TNativeParagraphStyle::Hash;
    v1[4] = 0;
    v1[5] = v1 + 6;
    TNativeParagraphStyle::TNativeParagraphStyle((v1 + 6), v6);
  }

  v5 = v2;
  v3 = atomic_exchange(&v5, 0);

  return v3;
}

BOOL CTParagraphStyleGetValueForSpecifier(CTParagraphStyleRef paragraphStyle, CTParagraphStyleSpecifier spec, size_t valueBufferSize, void *valueBuffer)
{
  v5 = paragraphStyle;
  LOBYTE(paragraphStyle) = 0;
  if (v5)
  {
    if (valueBuffer)
    {
      v16 = 0;
      v17 = 0xAAAAAAAAAAAAAA00;
      LODWORD(paragraphStyle) = TParagraphStyle::SetStyle(&v16, v5);
      if (paragraphStyle)
      {
        switch(spec)
        {
          case kCTParagraphStyleSpecifierAlignment:
            if (!valueBufferSize)
            {
              goto LABEL_48;
            }

            Alignment = TParagraphStyle::GetAlignment(&v16, v8);
            goto LABEL_41;
          case kCTParagraphStyleSpecifierFirstLineHeadIndent:
            if (valueBufferSize < 8)
            {
              goto LABEL_48;
            }

            FirstLineHeadIndent = TParagraphStyle::GetFirstLineHeadIndent(&v16, v8);
            goto LABEL_46;
          case kCTParagraphStyleSpecifierHeadIndent:
            if (valueBufferSize < 8)
            {
              goto LABEL_48;
            }

            FirstLineHeadIndent = TParagraphStyle::GetHeadIndent(&v16, v8);
            goto LABEL_46;
          case kCTParagraphStyleSpecifierTailIndent:
            if (valueBufferSize < 8)
            {
              goto LABEL_48;
            }

            FirstLineHeadIndent = TParagraphStyle::GetTailIndent(&v16, v8);
            goto LABEL_46;
          case kCTParagraphStyleSpecifierTabStops:
            if (valueBufferSize < 8)
            {
              goto LABEL_48;
            }

            TabStops = TParagraphStyle::GetTabStops(&v16, v8);
            goto LABEL_36;
          case kCTParagraphStyleSpecifierDefaultTabInterval:
            if (valueBufferSize < 8)
            {
              goto LABEL_48;
            }

            TParagraphStyle::GetDefaultTabInterval(&v16, v8);
            goto LABEL_46;
          case kCTParagraphStyleSpecifierLineBreakMode:
            if (!valueBufferSize)
            {
              goto LABEL_48;
            }

            Alignment = TParagraphStyle::GetLineBreakMode(&v16, v8);
            goto LABEL_41;
          case kCTParagraphStyleSpecifierLineHeightMultiple:
            if (valueBufferSize < 8)
            {
              goto LABEL_48;
            }

            FirstLineHeadIndent = TParagraphStyle::GetLineHeightMultiple(&v16, v8);
            goto LABEL_46;
          case kCTParagraphStyleSpecifierMaximumLineHeight:
            if (valueBufferSize < 8)
            {
              goto LABEL_48;
            }

            FirstLineHeadIndent = TParagraphStyle::GetMaximumLineHeight(&v16, v8);
            goto LABEL_46;
          case kCTParagraphStyleSpecifierMinimumLineHeight:
            if (valueBufferSize < 8)
            {
              goto LABEL_48;
            }

            FirstLineHeadIndent = TParagraphStyle::GetMinimumLineHeight(&v16, v8);
            goto LABEL_46;
          case kCTParagraphStyleSpecifierLineSpacing:
          case kCTParagraphStyleSpecifierMinimumLineSpacing:
            if (valueBufferSize < 8)
            {
              goto LABEL_48;
            }

            v9 = 0;
            if (v17 == 1)
            {
              v10 = TParagraphStyle::GetNative(v16, v8)[1];
              if (v10)
              {
                v9 = *(v10 + 40);
              }
            }

            goto LABEL_27;
          case kCTParagraphStyleSpecifierParagraphSpacing:
            if (valueBufferSize < 8)
            {
              goto LABEL_48;
            }

            FirstLineHeadIndent = TParagraphStyle::GetParagraphSpacing(&v16, v8);
            goto LABEL_46;
          case kCTParagraphStyleSpecifierParagraphSpacingBefore:
            if (valueBufferSize < 8)
            {
              goto LABEL_48;
            }

            FirstLineHeadIndent = TParagraphStyle::GetParagraphSpacingBefore(&v16, v8);
            goto LABEL_46;
          case kCTParagraphStyleSpecifierBaseWritingDirection:
            if (!valueBufferSize)
            {
              goto LABEL_48;
            }

            Alignment = TParagraphStyle::GetBaseWritingDirection(&v16, v8);
LABEL_41:
            *valueBuffer = Alignment;
            goto LABEL_47;
          case kCTParagraphStyleSpecifierMaximumLineSpacing:
            if (valueBufferSize < 8)
            {
              goto LABEL_48;
            }

            v9 = 0x416312D000000000;
            if (v17 == 1)
            {
              v14 = TParagraphStyle::GetNative(v16, v8)[1];
              if (v14)
              {
                v9 = *(v14 + 32);
              }
            }

LABEL_27:
            *valueBuffer = v9;
            goto LABEL_47;
          case kCTParagraphStyleSpecifierLineSpacingAdjustment:
            if (valueBufferSize < 8)
            {
              goto LABEL_48;
            }

            FirstLineHeadIndent = TParagraphStyle::GetLineSpacingAdjustment(&v16, v8);
LABEL_46:
            *valueBuffer = FirstLineHeadIndent;
            goto LABEL_47;
          case kCTParagraphStyleSpecifierLineBoundsOptions:
            if (valueBufferSize < 8)
            {
              goto LABEL_48;
            }

            TabStops = TParagraphStyle::GetLineBoundsOptions(&v16, v8);
LABEL_36:
            *valueBuffer = TabStops;
LABEL_47:
            LOBYTE(paragraphStyle) = 1;
            break;
          default:
LABEL_48:
            LOBYTE(paragraphStyle) = 0;
            break;
        }
      }
    }
  }

  return paragraphStyle;
}

uint64_t CTParagraphStyleGetCompositionLanguage(CFTypeRef cf)
{
  if (!cf)
  {
    return 1;
  }

  v3[0] = 0;
  v3[1] = 0xAAAAAAAAAAAAAA00;
  if (TParagraphStyle::SetStyle(v3, cf))
  {
    return TParagraphStyle::GetCompositionLanguage(v3, v1);
  }

  else
  {
    return 1;
  }
}

const void *CTParagraphStyleSetCompositionLanguage(const void *cf, uint64_t a2)
{
  if (cf)
  {
    v3[0] = 0;
    v3[1] = 0xAAAAAAAAAAAAAA00;
    cf = TParagraphStyle::SetStyle(v3, cf);
    if (cf)
    {
      return TParagraphStyle::SetCompositionLanguage(v3, a2);
    }
  }

  return cf;
}

__CFString *TCFBase<TNativeParagraphStyle>::ClassDebug(uint64_t a1)
{
  result = TNativeParagraphStyle::DebugDescription(*(a1 + 40));
  if (result)
  {
    v3 = result;
    v4 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%s: %p>{%@}", "CTParagraphStyle", a1, result);
    CFRelease(v3);
    return v4;
  }

  return result;
}

void TNativeParagraphStyle::TNativeParagraphStyle(TNativeParagraphStyle *this, const TParagraphStyle *a2)
{
  *this = 0;
  *(this + 1) = 0;
  *(this + 3) = TParagraphStyle::GetTabStops(a2, a2);
  *(this + 32) = TParagraphStyle::GetLineBreakMode(a2, v4);
  *(this + 33) = TParagraphStyle::GetAlignment(a2, v5);
  *(this + 34) = TParagraphStyle::GetBaseWritingDirection(a2, v6);
  *(this + 5) = TParagraphStyle::GetLineBoundsOptions(a2, v7);
  *(this + 48) = TParagraphStyle::GetCompositionLanguage(a2, v8);
  FirstLineHeadIndent = TParagraphStyle::GetFirstLineHeadIndent(a2, v9);
  if (FirstLineHeadIndent != 0.0)
  {
    if (!*this)
    {
      TNativeParagraphStyle::CreateIndentPack(this);
    }

    **this = FirstLineHeadIndent;
  }

  HeadIndent = TParagraphStyle::GetHeadIndent(a2, v10);
  if (HeadIndent != 0.0)
  {
    if (!*this)
    {
      TNativeParagraphStyle::CreateIndentPack(this);
    }

    *(*this + 8) = HeadIndent;
  }

  TailIndent = TParagraphStyle::GetTailIndent(a2, v12);
  if (TailIndent != 0.0)
  {
    if (!*this)
    {
      TNativeParagraphStyle::CreateIndentPack(this);
    }

    *(*this + 16) = TailIndent;
  }

  LineHeightMultiple = TParagraphStyle::GetLineHeightMultiple(a2, v14);
  if (LineHeightMultiple != 0.0)
  {
    v18 = *(this + 1);
    if (!v18)
    {
      TNativeParagraphStyle::CreateSpacePack(this);
    }

    *v18 = LineHeightMultiple;
  }

  LineSpacingAdjustment = TParagraphStyle::GetLineSpacingAdjustment(a2, v16);
  if (LineSpacingAdjustment != 0.0)
  {
    v21 = *(this + 1);
    if (!v21)
    {
      TNativeParagraphStyle::CreateSpacePack(this);
    }

    *(v21 + 24) = LineSpacingAdjustment;
  }

  if (*(a2 + 8) == 1)
  {
    v22 = TParagraphStyle::GetNative(*a2, v19)[1];
    if (v22)
    {
      v23 = *(v22 + 32);
      if (v23 != 10000000.0)
      {
        v24 = *(this + 1);
        if (!v24)
        {
          TNativeParagraphStyle::CreateSpacePack(this);
        }

        *(v24 + 32) = v23;
      }
    }
  }

  if (*(a2 + 8) == 1)
  {
    v25 = TParagraphStyle::GetNative(*a2, v19)[1];
    if (v25)
    {
      v26 = *(v25 + 40);
      if (v26 != 0.0)
      {
        v27 = *(this + 1);
        if (!v27)
        {
          TNativeParagraphStyle::CreateSpacePack(this);
        }

        *(v27 + 40) = v26;
      }
    }
  }

  ParagraphSpacing = TParagraphStyle::GetParagraphSpacing(a2, v19);
  if (ParagraphSpacing != 0.0)
  {
    v30 = *(this + 1);
    if (!v30)
    {
      TNativeParagraphStyle::CreateSpacePack(this);
    }

    *(v30 + 48) = ParagraphSpacing;
  }

  ParagraphSpacingBefore = TParagraphStyle::GetParagraphSpacingBefore(a2, v28);
  if (ParagraphSpacingBefore != 0.0)
  {
    v32 = *(this + 1);
    if (!v32)
    {
      TNativeParagraphStyle::CreateSpacePack(this);
    }

    *(v32 + 56) = ParagraphSpacingBefore;
  }
}

BOOL TNativeParagraphStyle::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 32) != *(a2 + 32) || *(a1 + 33) != *(a2 + 33) || *(a1 + 34) != *(a2 + 34) || *(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48))
  {
    return 0;
  }

  result = operator==((a1 + 24), (a2 + 24));
  if (!result)
  {
    return result;
  }

  v5 = *a1;
  v6 = *a2;
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *v5;
    v8 = v5[1];
    v9 = *v6;
    v10 = v6[1];
    v11 = v5[2];
    v12 = v6[2];
    v13 = v7 == v9 && v8 == v10;
    if (!v13 || v11 != v12)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v15 = *(a1 + 8);
  v16 = *(a2 + 8);
  if (v15)
  {
    return v16 && !memcmp(v15, v16, 0x40uLL);
  }

  return !v16;
}

__CFString *TNativeParagraphStyle::DebugDescription(TNativeParagraphStyle *this)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = *(this + 34);
  if (!*(this + 34))
  {
    v5 = @"left to right";
    goto LABEL_7;
  }

  if (v4 == 1)
  {
    v5 = @"right to left";
    goto LABEL_7;
  }

  if (v4 == 255)
  {
    v5 = @"natural";
LABEL_7:
    v6 = v5;
    goto LABEL_9;
  }

  v6 = CFStringCreateWithFormat(v2, 0, @"%d", v4);
LABEL_9:
  v7 = v6;
  v8 = *(this + 33);
  if (v8 <= 1)
  {
    if (!*(this + 33))
    {
      v9 = @"left";
      goto LABEL_20;
    }

    if (v8 == 1)
    {
      v9 = @"right";
      goto LABEL_20;
    }
  }

  else
  {
    switch(v8)
    {
      case 2u:
        v9 = @"center";
        goto LABEL_20;
      case 3u:
        v9 = @"justified";
        goto LABEL_20;
      case 4u:
        v9 = @"natural";
LABEL_20:
        v10 = v9;
        goto LABEL_21;
    }
  }

  v10 = CFStringCreateWithFormat(v2, 0, @"%d", *(this + 33));
LABEL_21:
  v11 = v10;
  v12 = *(this + 32);
  if (v12 > 2)
  {
    switch(v12)
    {
      case 3u:
        v13 = @"truncating head";
        goto LABEL_36;
      case 4u:
        v13 = @"truncating tail";
        goto LABEL_36;
      case 5u:
        v13 = @"truncating middle";
        goto LABEL_36;
    }

LABEL_33:
    v14 = CFStringCreateWithFormat(v2, 0, @"%d", *(this + 32));
    goto LABEL_37;
  }

  if (!*(this + 32))
  {
    v13 = @"word wrapping";
    goto LABEL_36;
  }

  if (v12 == 1)
  {
    v13 = @"char wrapping";
    goto LABEL_36;
  }

  if (v12 != 2)
  {
    goto LABEL_33;
  }

  v13 = @"clipping";
LABEL_36:
  v14 = v13;
LABEL_37:
  v15 = v14;
  CFStringAppendFormat(Mutable, 0, @"base writing direction = %@, alignment = %@, line break mode = %@, default tab interval = %g\n", v7, v11, v14, *(this + 2));

  v16 = *this;
  v17 = 0;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  if (*this)
  {
    v19 = *v16;
    v18 = v16[1];
    v20 = v16[2];
  }

  CFStringAppendFormat(Mutable, 0, @"first line head indent = %g, head indent = %g, tail indent = %g\n", v19, v18, v20);
  v21 = *(this + 1);
  v22 = 0;
  v23 = 0;
  if (v21)
  {
    v22 = *v21;
    v17 = v21[1];
    v23 = v21[2];
  }

  CFStringAppendFormat(Mutable, 0, @"line height multiple = %g, maximum line height = %g, minimum line height = %g\n", v22, v17, v23);
  v24 = *(this + 1);
  if (v24)
  {
    v25 = v24[3];
    v26 = v24[6];
    v27 = v24[7];
  }

  else
  {
    v26 = 0;
    v25 = 0;
    v27 = 0;
  }

  CFStringAppendFormat(Mutable, 0, @"line spacing adjustment = %g, paragraph spacing = %g, paragraph spacing before = %g\n", v25, v26, v27);
  v28 = *(this + 1);
  v29 = (v28 + 32);
  if (!v28)
  {
    v29 = &TParagraphStyle::kLargeNumber;
  }

  if (*v29 != 10000000.0)
  {
    CFStringAppendFormat(Mutable, 0, @"maximum line spacing = %g\n", *v29);
    v28 = *(this + 1);
  }

  if (v28 && *(v28 + 40) != 0.0)
  {
    CFStringAppendFormat(Mutable, 0, @"minimum line spacing = %g\n", *(v28 + 40));
  }

  explicit = atomic_load_explicit(this + 3, memory_order_acquire);
  if (explicit)
  {
    v31 = objc_alloc_init(MEMORY[0x1E695DF70]);
    Count = CFArrayGetCount(explicit);
    if (Count)
    {
      v33 = Count;
      for (i = 0; i != v33; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(explicit, i);
        v36 = objc_autoreleasePoolPush();
        v37 = CFGetTypeID(ValueAtIndex);
        if (TCFBase<TNativeTextTab>::GetTypeID(void)::once != -1)
        {
          dispatch_once_f(&TCFBase<TNativeTextTab>::GetTypeID(void)::once, 0, TCFBase<TNativeTextTab>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
        }

        if (v37 == TCFBase<TNativeTextTab>::fTypeID)
        {
          v38 = TNativeTextTab::DebugDescription(ValueAtIndex[5]);
        }

        else
        {
          v38 = [ValueAtIndex description];
        }

        [v31 addObject:v38];
        objc_autoreleasePoolPop(v36);
      }
    }

    CFStringAppendFormat(Mutable, 0, @"tabs = %@", v31);
  }

  v39 = *(this + 48);
  v40 = @"none";
  if (v39 > 2)
  {
    if (v39 == 4)
    {
      v40 = @"Traditional Chinese";
    }

    else if (v39 == 3)
    {
      v40 = @"Simplified Chinese";
    }

    goto LABEL_69;
  }

  if (*(this + 48))
  {
    if (v39 == 2)
    {
      v40 = @"Japanese";
    }

LABEL_69:
    CFStringAppendFormat(Mutable, 0, @"composition language = %@", v40);
  }

  return Mutable;
}

id TParagraphStyle::GetTabStops(TParagraphStyle *this, const void *a2)
{
  v3 = *(this + 8);
  v4 = *this;
  if (v3)
  {
    return atomic_load_explicit(TParagraphStyle::GetNative(v4, a2) + 3, memory_order_acquire);
  }

  return [(TParagraphStyle *)v4 tabStops];
}

uint64_t *TParagraphStyle::GetDefaultTabInterval(TParagraphStyle *this, const void *a2)
{
  v3 = *(this + 8);
  v4 = *this;
  if (v3)
  {
    return TParagraphStyle::GetNative(v4, a2);
  }

  return [(TParagraphStyle *)v4 defaultTabInterval];
}

TNativeParagraphStyle **TParagraphStyle::SetFirstLineHeadIndent(TParagraphStyle *this, double a2)
{
  v2 = *(this + 8);
  result = *this;
  if (v2)
  {
    v4 = *result[5];
    if (!v4)
    {
      TNativeParagraphStyle::CreateIndentPack(result[5]);
    }

    *v4 = a2;
  }

  else
  {

    return [result setFirstLineHeadIndent_];
  }

  return result;
}

TNativeParagraphStyle **TParagraphStyle::SetHeadIndent(TParagraphStyle *this, double a2)
{
  v2 = *(this + 8);
  result = *this;
  if (v2)
  {
    v4 = *result[5];
    if (!v4)
    {
      TNativeParagraphStyle::CreateIndentPack(result[5]);
    }

    *(v4 + 8) = a2;
  }

  else
  {

    return [result setHeadIndent_];
  }

  return result;
}

TNativeParagraphStyle **TParagraphStyle::SetTailIndent(TParagraphStyle *this, double a2)
{
  v2 = *(this + 8);
  result = *this;
  if (v2)
  {
    v4 = *result[5];
    if (!v4)
    {
      TNativeParagraphStyle::CreateIndentPack(result[5]);
    }

    *(v4 + 16) = a2;
  }

  else
  {

    return [result setTailIndent_];
  }

  return result;
}

void TParagraphStyle::SetTabStops(TParagraphStyle *this, id a2)
{
  v2 = *(this + 8);
  v3 = *this;
  if (v2)
  {
    TCFRef<__CTFont const*>::Retain((v3[5] + 24), a2);
  }

  else
  {
    [v3 setTabStops_];
  }
}

void *TParagraphStyle::SetDefaultTabInterval(TParagraphStyle *this, double a2)
{
  v2 = *(this + 8);
  result = *this;
  if ((v2 & 1) == 0)
  {
    return [result setDefaultTabInterval_];
  }

  *(result[5] + 16) = a2;
  return result;
}

void *TParagraphStyle::SetLineBreakMode(TParagraphStyle *this, uint64_t a2)
{
  v2 = *(this + 8);
  result = *this;
  if ((v2 & 1) == 0)
  {
    return [result setLineBreakMode_];
  }

  *(result[5] + 32) = a2;
  return result;
}

TNativeParagraphStyle **TParagraphStyle::SetLineHeightMultiple(TParagraphStyle *this, double a2)
{
  v2 = *(this + 8);
  result = *this;
  if (v2)
  {
    v4 = *(result[5] + 1);
    if (!v4)
    {
      TNativeParagraphStyle::CreateSpacePack(result[5]);
    }

    *v4 = a2;
  }

  else
  {

    return [result setLineHeightMultiple_];
  }

  return result;
}

TNativeParagraphStyle **TParagraphStyle::SetMaximumLineHeight(TParagraphStyle *this, double a2)
{
  v2 = *(this + 8);
  result = *this;
  if (v2)
  {
    v4 = *(result[5] + 1);
    if (!v4)
    {
      TNativeParagraphStyle::CreateSpacePack(result[5]);
    }

    *(v4 + 8) = a2;
  }

  else
  {

    return [result setMaximumLineHeight_];
  }

  return result;
}

TNativeParagraphStyle **TParagraphStyle::SetMinimumLineHeight(TParagraphStyle *this, double a2)
{
  v2 = *(this + 8);
  result = *this;
  if (v2)
  {
    v4 = *(result[5] + 1);
    if (!v4)
    {
      TNativeParagraphStyle::CreateSpacePack(result[5]);
    }

    *(v4 + 16) = a2;
  }

  else
  {

    return [result setMinimumLineHeight_];
  }

  return result;
}

TNativeParagraphStyle **TParagraphStyle::SetLineSpacingAdjustment(TParagraphStyle *this, double a2)
{
  v2 = *(this + 8);
  result = *this;
  if (v2)
  {
    v4 = *(result[5] + 1);
    if (!v4)
    {
      TNativeParagraphStyle::CreateSpacePack(result[5]);
    }

    *(v4 + 24) = a2;
  }

  else
  {

    return [result setLineSpacing_];
  }

  return result;
}

id TParagraphStyle::SetMinimumLineSpacing(TParagraphStyle *this, double a2)
{
  result = _CFExecutableLinkedOnOrAfter();
  if (result)
  {
    if ((*(this + 8) & 1) == 0)
    {
      v5 = *this;

      return [v5 setLineSpacing_];
    }
  }

  else if ((*(this + 8) & 1) == 0)
  {
    return result;
  }

  v6 = *(*this + 40);
  v7 = *(v6 + 1);
  if (!v7)
  {
    TNativeParagraphStyle::CreateSpacePack(v6);
  }

  *(v7 + 40) = a2;
  return result;
}

TNativeParagraphStyle **TParagraphStyle::SetParagraphSpacing(TParagraphStyle *this, double a2)
{
  v2 = *(this + 8);
  result = *this;
  if (v2)
  {
    v4 = *(result[5] + 1);
    if (!v4)
    {
      TNativeParagraphStyle::CreateSpacePack(result[5]);
    }

    *(v4 + 48) = a2;
  }

  else
  {

    return [result setParagraphSpacing_];
  }

  return result;
}

TNativeParagraphStyle **TParagraphStyle::SetParagraphSpacingBefore(TParagraphStyle *this, double a2)
{
  v2 = *(this + 8);
  result = *this;
  if (v2)
  {
    v4 = *(result[5] + 1);
    if (!v4)
    {
      TNativeParagraphStyle::CreateSpacePack(result[5]);
    }

    *(v4 + 56) = a2;
  }

  else
  {

    return [result setParagraphSpacingBefore_];
  }

  return result;
}

void *TParagraphStyle::SetBaseWritingDirection(TParagraphStyle *this, uint64_t a2)
{
  v2 = *(this + 8);
  result = *this;
  if ((v2 & 1) == 0)
  {
    return [result setBaseWritingDirection_];
  }

  *(result[5] + 34) = a2;
  return result;
}

uint64_t TParagraphStyle::SetLineBoundsOptions(TParagraphStyle *this, uint64_t a2)
{
  v4 = *(this + 8);
  result = *this;
  if (v4)
  {
    *(*(result + 40) + 40) = a2;
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v6 = *this;

      return [v6 _setLineBoundsOptions_];
    }
  }

  return result;
}

uint64_t TParagraphStyle::SetCompositionLanguage(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  result = *a1;
  if (v4)
  {
    *(*(result + 40) + 48) = a2;
  }

  else
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {
      v6 = *a1;

      return [v6 setCompositionLanguage_];
    }
  }

  return result;
}

uint64_t IsProhibitedSequence(int a1, int a2, BOOL *a3)
{
  if (a1 > 3336)
  {
    if (a1 > 70143)
    {
      if (a1 <= 70794)
      {
        if (a1 > 70207)
        {
          switch(a1)
          {
            case 70208:
              v10 = 70190;
              break;
            case 70320:
              v6 = a2 + 32;
              if ((a2 - 70368) >= 9)
              {
                goto LABEL_152;
              }

              v7 = 481;
              goto LABEL_148;
            case 70785:
              v10 = 70832;
              break;
            default:
              goto LABEL_152;
          }
        }

        else
        {
          if (a1 == 70144)
          {
            v6 = a2 - 44;
            if ((a2 - 70188) >= 8)
            {
              goto LABEL_152;
            }

            v7 = 161;
            goto LABEL_148;
          }

          if (a1 != 70150)
          {
            if (a1 != 70188 || (a2 & 0xFFFFFFFE) != 0x11230)
            {
              goto LABEL_152;
            }

            goto LABEL_151;
          }

          v10 = 70188;
        }
      }

      else if (a1 <= 71167)
      {
        if (a1 != 70795 && a1 != 70797)
        {
          if (a1 != 70826)
          {
            goto LABEL_152;
          }

          v3 = a2 - 70837;
          goto LABEL_61;
        }

        v10 = 70842;
      }

      else
      {
        if (a1 <= 71295)
        {
          if (a1 != 71168 && a1 != 71169)
          {
            goto LABEL_152;
          }

          v3 = a2 - 71225;
LABEL_61:
          if (v3 < 2)
          {
            goto LABEL_151;
          }

          goto LABEL_152;
        }

        if (a1 == 71296)
        {
          v6 = a2 + 83;
          if ((a2 - 71341) >= 9)
          {
            goto LABEL_152;
          }

          v7 = 385;
          goto LABEL_148;
        }

        if (a1 != 71302)
        {
          goto LABEL_152;
        }

        v10 = 71346;
      }

LABEL_150:
      if (a2 == v10)
      {
        goto LABEL_151;
      }

      goto LABEL_152;
    }

    if (a1 > 3470)
    {
      if (a1 > 69636)
      {
        switch(a1)
        {
          case 69637:
            v10 = 69688;
            break;
          case 69643:
            v10 = 69694;
            break;
          case 69647:
            v10 = 69698;
            break;
          default:
            goto LABEL_152;
        }

        goto LABEL_150;
      }

      if (a1 != 3471)
      {
        if (a1 == 3473)
        {
          v6 = a2 + 54;
          if ((a2 - 3530) >= 0x15)
          {
            goto LABEL_152;
          }

          v7 = 1933313;
          goto LABEL_148;
        }

        if (a1 != 3476)
        {
          goto LABEL_152;
        }
      }
    }

    else
    {
      if (a1 <= 3460)
      {
        if (a1 == 3337)
        {
LABEL_100:
          if (a2 != 3415)
          {
            goto LABEL_152;
          }

LABEL_151:
          LOBYTE(v9) = 1;
          return v9 & 1;
        }

        if (a1 == 3342)
        {
          if (a2 != 3398)
          {
            goto LABEL_152;
          }

          goto LABEL_151;
        }

        if (a1 != 3346)
        {
LABEL_152:
          LOBYTE(v9) = 0;
          return v9 & 1;
        }

        v4 = a2 == 3390;
        v5 = 3415;
LABEL_67:
        LOBYTE(v9) = v4 || a2 == v5;
        return v9 & 1;
      }

      if (a1 == 3461)
      {
        v11 = a2 - 3535;
LABEL_144:
        if (v11 >= 3)
        {
          goto LABEL_152;
        }

        goto LABEL_151;
      }

      if (a1 != 3467)
      {
        if (a1 != 3469 || a2 != 3544)
        {
          goto LABEL_152;
        }

        goto LABEL_151;
      }
    }

    if (a2 == 3551)
    {
      goto LABEL_151;
    }

    goto LABEL_152;
  }

  if (a1 > 2756)
  {
    if (a1 > 3134)
    {
      if (a1 <= 3208)
      {
        if (a1 != 3135 && a1 != 3142 && a1 != 3146 || a2 != 3157)
        {
          goto LABEL_152;
        }

        goto LABEL_151;
      }

      if (a1 <= 3217)
      {
        if (a1 != 3209 && a1 != 3211 || a2 != 3262)
        {
          goto LABEL_152;
        }

        goto LABEL_151;
      }

      if (a1 == 3218)
      {
        if (a2 != 3276)
        {
          goto LABEL_152;
        }

        goto LABEL_151;
      }

      if (a1 == 3335)
      {
        goto LABEL_100;
      }

      goto LABEL_152;
    }

    if (a1 <= 2834)
    {
      if (a1 == 2757)
      {
        if (a2 != 2750)
        {
          goto LABEL_152;
        }

        goto LABEL_151;
      }

      if (a1 == 2821)
      {
        if (a2 != 2878)
        {
          goto LABEL_152;
        }

        goto LABEL_151;
      }

      if (a1 != 2831)
      {
        goto LABEL_152;
      }

LABEL_106:
      if (a2 != 2903)
      {
        goto LABEL_152;
      }

      goto LABEL_151;
    }

    if (a1 == 2835)
    {
      goto LABEL_106;
    }

    if (a1 == 2949)
    {
      if (a2 != 3010)
      {
        goto LABEL_152;
      }

      goto LABEL_151;
    }

    if (a1 != 3090)
    {
      goto LABEL_152;
    }

    v4 = a2 == 3148;
    v5 = 3157;
    goto LABEL_67;
  }

  if (a1 > 2442)
  {
    if (a1 > 2673)
    {
      switch(a1)
      {
        case 2674:
          v6 = a2 - 63;
          if ((a2 - 2623) >= 9)
          {
            goto LABEL_152;
          }

          v7 = 259;
          break;
        case 2675:
          v6 = a2 - 65;
          if ((a2 - 2625) >= 0xB)
          {
            goto LABEL_152;
          }

          v7 = 1027;
          break;
        case 2693:
          v6 = a2 + 66;
          if ((a2 - 2750) >= 0xF)
          {
            goto LABEL_152;
          }

          v7 = 28289;
          break;
        default:
          goto LABEL_152;
      }
    }

    else
    {
      if (a1 == 2443)
      {
        if (a2 != 2499)
        {
          goto LABEL_152;
        }

        goto LABEL_151;
      }

      if (a1 == 2444)
      {
        if (a2 != 2530)
        {
          goto LABEL_152;
        }

        goto LABEL_151;
      }

      if (a1 != 2565)
      {
        goto LABEL_152;
      }

      v6 = a2 - 62;
      if ((a2 - 2622) >= 0xF)
      {
        goto LABEL_152;
      }

      v7 = 17409;
    }

LABEL_148:
    v9 = v7 >> v6;
    return v9 & 1;
  }

  if (a1 <= 2318)
  {
    if (a1 == 2309)
    {
      v6 = a2 - 58;
      if ((a2 - 2362) >= 0x1E)
      {
        goto LABEL_152;
      }

      v7 = 807899155;
    }

    else
    {
      if (a1 != 2310)
      {
        if (a1 != 2313 || a2 != 2369)
        {
          goto LABEL_152;
        }

        goto LABEL_151;
      }

      v6 = a2 - 58;
      if ((a2 - 2362) >= 0xF)
      {
        goto LABEL_152;
      }

      v7 = 30721;
    }

    goto LABEL_148;
  }

  if (a1 == 2319)
  {
    v11 = a2 - 2373;
    goto LABEL_144;
  }

  if (a1 != 2352)
  {
    if (a1 != 2437 || a2 != 2494)
    {
      goto LABEL_152;
    }

    goto LABEL_151;
  }

  if (a2 != 2381 || !a3)
  {
    goto LABEL_152;
  }

  LOBYTE(v9) = 0;
  *a3 = 1;
  return v9 & 1;
}

id TTextTab::SetTabRef(TTextTab *this, void *cf)
{
  v4 = CFGetTypeID(cf);
  if (v4 == CTTextTabGetTypeID())
  {
    v5 = *(cf + 5);
    *this = *v5;
    *(this + 8) = *(v5 + 8);
    result = *(v5 + 16);
  }

  else
  {
    [cf location];
    *this = v7;
    v8 = [cf alignment];
    if (IsLinkedOnOrAfter(SDKVersion)::once != -1)
    {
      dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
    }

    if ((IsLinkedOnOrAfter(SDKVersion)::linkedOnOrAfter & (v8 < 5u)) != 0)
    {
      v9 = 0x403010200uLL >> (8 * v8);
    }

    else
    {
      v9 = v8;
    }

    *(this + 8) = v9;
    result = [cf options];
  }

  *(this + 2) = result;
  return result;
}

void OpenUSetWithPattern(UErrorCode *a1, const char *a2, ...)
{
  va_start(va, a2);
  va_copy(&src[1], va);
  src[0] = 0xAAAAAAAAAAAAAAAALL;
  vasprintf(src, a2, va);
  operator new[]();
}

void std::vector<unsigned short>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 1;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 2 * a2;
    }
  }

  else
  {
    std::vector<unsigned short>::__append(a1, a2 - v2);
  }
}

void std::vector<unsigned short>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 1)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 2 * a2);
      v5 += 2 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 1);
    if (v8 < 0)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = v4 - v6;
    if (v9 > v8)
    {
      v8 = v9;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFELL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      std::allocator<unsigned short>::allocate_at_least[abi:fn200100](a1, v10);
    }

    v11 = (2 * (v7 >> 1));
    bzero(v11, 2 * a2);
    memcpy(0, v6, v7);
    v12 = *a1;
    *a1 = 0;
    *(a1 + 8) = &v11[2 * a2];
    *(a1 + 16) = 0;
    if (v12)
    {

      operator delete(v12);
    }
  }
}

void *std::__function::__func<ForEachVisibleFormatter(std::function<void ()(unsigned int)>)::$_0,std::allocator<ForEachVisibleFormatter(std::function<void ()(unsigned int)>)::$_0>,void ()(unsigned int,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1EF258FE8;
  std::__function::__value_func<void ()>::~__value_func[abi:fn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<ForEachVisibleFormatter(std::function<void ()(unsigned int)>)::$_0,std::allocator<ForEachVisibleFormatter(std::function<void ()(unsigned int)>)::$_0>,void ()(unsigned int,unsigned int)>::~__func(void *a1)
{
  *a1 = &unk_1EF258FE8;
  std::__function::__value_func<void ()>::~__value_func[abi:fn200100]((a1 + 1));

  JUMPOUT(0x1865F22D0);
}

BOOL TNativeTextTab::operator==(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (v2 == v3)
  {
    return 1;
  }

  result = 0;
  if (v2)
  {
    if (v3)
    {
      return CFEqual(v2, v3) != 0;
    }
  }

  return result;
}

CFStringRef TNativeTextTab::DebugDescription(TNativeTextTab *this)
{
  v2 = *MEMORY[0x1E695E480];
  v3 = *this;
  v4 = *(this + 8);
  if (v4 >= 5)
  {
    v6 = *(this + 2);
    v5 = "?";
    if (v6 && CFDictionaryGetValue(v6, @"NSTabColumnTerminatorsAttributeName"))
    {
      v5 = "D";
    }
  }

  else
  {
    v5 = off_1E6E3DD58[v4];
  }

  v7 = CFStringCreateWithFormat(v2, 0, @"%g%s", v3, v5);
  if (v7)
  {
    v8 = *(this + 2);
    if (v8)
    {
      if (CFDictionaryGetCount(v8))
      {
        v9 = CFStringCreateWithFormat(v2, 0, @"%@%@", v7, *(this + 2));
        if (v9)
        {
          v10 = v9;
          CFRelease(v7);
          return v10;
        }
      }
    }
  }

  return v7;
}

void TTabEngine::ApplyTabs(TLine **this@<X0>, double a2@<D0>, double a3@<D1>, const void *a4@<X1>, uint64_t a5@<X8>)
{
  v6 = *(*this + 2);
  if (*(*this + 3) - v6 <= 7 || !TAttributes::GetTabStopsPresent((*(*v6 + 40) + 40), a4))
  {
    *a5 = 0;
    *(a5 + 16) = 0;
    return;
  }

  v10 = *this;
  v11 = *(*this + 76);
  if ((v11 & 8) != 0)
  {
    v12 = ((*(*this + 3) - *(*this + 2)) >> 3) - 1;
  }

  else
  {
    v12 = 0;
  }

  if ((v11 & 8) != 0)
  {
    v13 = -1;
  }

  else
  {
    v13 = (*(*this + 3) - *(*this + 2)) >> 3;
  }

  if ((v11 & 8) != 0)
  {
    v14 = -1;
  }

  else
  {
    v14 = 1;
  }

  *a5 = 0xAAAAAAAAAAAAAA00;
  *(a5 + 8) = -1;
  *(a5 + 16) = 0xAAAAAAAAAAAAAA00;
  if (v12 == v13)
  {
    goto LABEL_72;
  }

  v15 = a2 + a3;
  v16 = MEMORY[0x1E695F060];
  v44 = v13;
  while (1)
  {
    v17 = *(v10 + 2);
    if (v12 >= (*(v10 + 3) - v17) >> 3)
    {
LABEL_75:
      __break(1u);
      return;
    }

    v18 = *(*(v17 + 8 * v12) + 40);
    if ((v11 & 8) == 0)
    {
      v19 = *(v18 + 312);
      if (!v19)
      {
        v19 = v16;
      }

      a2 = a2 + *v19;
    }

    if (*(v18 + 225))
    {
      break;
    }

LABEL_62:
    v41 = *(v18 + 192);
    v42 = *(v18 + 312);
    if (!v42)
    {
      v42 = v16;
    }

    v43 = a2 + v41 + *v42;
    v12 += v14;
    if ((v11 & 8) != 0)
    {
      a2 = *v42 + v43;
    }

    else
    {
      a2 = v43;
    }

    if (v12 == v13)
    {
      goto LABEL_72;
    }
  }

  TLine::DetachRun(v10, v12);
  v47 = 0xAAAAAAAAAAAAAAAALL;
  theDict = 0xAAAAAAAAAAAAAAAALL;
  v10 = *this;
  v20 = *(*this + 2);
  if (v12 >= (*(*this + 3) - v20) >> 3)
  {
    goto LABEL_75;
  }

  v46 = NAN;
  v21 = *(*(v20 + 8 * v12) + 48);
  if ((v11 & 8) != 0)
  {
    v22 = -1;
  }

  else
  {
    v22 = v21[26];
  }

  if ((v11 & 8) != 0)
  {
    v23 = v21[26] - 1;
  }

  else
  {
    v23 = 0;
  }

  v45 = 0.0;
  TabGlyph = TStorageRange::FindTabGlyph((v21 + 24), v23, v14, &v45);
  if (TabGlyph == v22)
  {
LABEL_60:
    v40 = *(v10 + 2);
    if (v12 >= (*(v10 + 3) - v40) >> 3)
    {
      goto LABEL_75;
    }

    v18 = *(*(v40 + 8 * v12) + 40);
    v13 = v44;
    v16 = MEMORY[0x1E695F060];
    goto LABEL_62;
  }

  v25 = TabGlyph;
  v26 = a2;
  while (1)
  {
    v27 = v26 + v45;
    if ((TAttributes::GetTabStopForLocation((v21 + 5), v27, &v46) & 1) == 0)
    {
      break;
    }

    v28 = v46 - v27;
    if (theDict)
    {
      Value = CFDictionaryGetValue(theDict, @"NSTabColumnTerminatorsAttributeName");
      if (Value)
      {
        TTabEngine::CalculateCylinderWidth(this, v12, v14, v25, v28, Value);
        v28 = v28 - v30;
        goto LABEL_54;
      }
    }

    if ((v11 & 8) != 0)
    {
      if (v47 <= 2u)
      {
        if (!v47)
        {
          goto LABEL_49;
        }

        if (v47 == 1)
        {
          goto LABEL_54;
        }

        goto LABEL_41;
      }
    }

    else if (v47 <= 2u)
    {
      if (!v47)
      {
        goto LABEL_54;
      }

      if (v47 == 1)
      {
LABEL_49:
        TTabEngine::CalculateCylinderWidth(this, v12, v14, v25, v28, 0);
        v34 = v33 < v28 || (v11 & 8) == 0;
        v35 = v28 - v33;
        if (v34)
        {
          v28 = v35;
        }

        goto LABEL_54;
      }

LABEL_41:
      if (v47 != 2)
      {
        goto LABEL_48;
      }

      v31 = v15 - v46;
      if (v28 <= v15 - v46)
      {
        v31 = v28;
      }

      TTabEngine::CalculateCylinderWidth(this, v12, v14, v25, v31 + v31, 0);
      if (v32 == v28)
      {
        v28 = 0.0;
      }

      else
      {
        v28 = v28 + v32 * -0.5;
      }

      goto LABEL_54;
    }

    if (v47 - 3 >= 2)
    {
LABEL_48:
      v28 = 0.0;
    }

LABEL_54:
    v36 = v21[27];
    v37 = *(v36 + 32);
    if (v37 || (v38 = 0, !*(v36 + 24)))
    {
      v38 = *(v37 + 16 * v21[25] + 16 * v25 + 8);
    }

    v39 = v28;
    TStorageRange::SetAdvance((v21 + 24), v25, *(&v38 - 1));
    v26 = v27 + v28;
    if (v26 > v15)
    {
      goto LABEL_71;
    }

    v45 = 0.0;
    v25 = TStorageRange::FindTabGlyph((v21 + 24), v25 + v14, v14, &v45);
    if (v25 == v22)
    {
      v10 = *this;
      goto LABEL_60;
    }
  }

  *a5 = *(*(v21[27] + 48) + 8 * v21[25] + 8 * v25);
  *(a5 + 8) = v27;
  *(a5 + 16) = 1;
LABEL_71:
  v10 = *this;
LABEL_72:

  TLine::SyncWithRuns(v10);
}

uint64_t TTabEngine::CalculateCylinderWidth(uint64_t this, unint64_t a2, int a3, uint64_t a4, double a5, const __CFCharacterSet *a6)
{
  v34 = this;
  v7 = (*(*this + 24) - *(*this + 16)) >> 3;
  if (a3 < 0)
  {
    v7 = -1;
  }

  v8 = 0.0;
  v30 = v7;
  if (v7 != a2)
  {
    v10 = a2;
    v11 = a3 + a4;
    v35 = 16 * a3;
    v12 = 8 * a3;
    while (1)
    {
      v13 = *(*v34 + 16);
      if (v10 >= (*(*v34 + 24) - v13) >> 3)
      {
        __break(1u);
        return this;
      }

      v14 = *(*(v13 + 8 * v10) + 40);
      v15 = v14[27];
      v16 = v14[26] - 1;
      if (a3 < 0)
      {
        v17 = -1;
      }

      else
      {
        v16 = 0;
        v17 = v14[26];
      }

      if (v10 != a2)
      {
        v11 = v16;
      }

      v18 = v15[4];
      if (v18 || (v21 = v15[3]) == 0)
      {
        v33 = 0;
        v19 = v14[25];
        v20 = v18 + 16 * v19;
      }

      else
      {
        v19 = v14[25];
        v20 = v21 + 8 * v19;
        v33 = 1;
      }

      if (v11 != v17)
      {
        break;
      }

LABEL_28:
      v10 += a3;
      if (v10 == v30)
      {
        return this;
      }
    }

    v22 = v15[5];
    v23 = v20 + 16 * v11;
    v24 = v20 + 8 * v11;
    while (1)
    {
      v25 = *(v22 + 4 * v19 + 4 * v11);
      if ((v25 & 4) != 0)
      {
        break;
      }

      if (a6)
      {
        v26 = v34[1];
        v49 = *(v15[6] + 8 * v19 + 8 * v11);
        v37 = 0u;
        v38 = 0u;
        v39 = 0u;
        v40 = 0u;
        v41 = 0u;
        v42 = 0u;
        v43 = 0u;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v48 = 0;
        v47 = 0u;
        v27 = *(v26 + 16);
        v36 = v26;
        *&v47 = v27;
        FullChar = TCharStreamIterator::GetFullChar(&v36, &v49, 0);
        this = CFCharacterSetIsLongCharacterMember(a6, FullChar);
        if (this)
        {
          return this;
        }

        v15 = v14[27];
        v19 = v14[25];
        v22 = v15[5];
        v25 = *(v22 + 4 * v19 + 4 * v11);
      }

      if ((v25 & 2) == 0)
      {
        v29 = (v33 ? v24 : v23);
        v8 = v8 + *v29;
        if (v8 >= a5)
        {
          break;
        }
      }

      v11 += a3;
      v23 += v35;
      v24 += v12;
      if (v17 == v11)
      {
        v11 = v17;
        goto LABEL_28;
      }
    }
  }

  return this;
}

atomic_ullong *ColorPaletteTable::ColorPaletteTable(atomic_ullong *a1, atomic_ullong *a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (!atomic_load_explicit(a2, memory_order_acquire))
  {
    return a1;
  }

  v4 = atomic_load_explicit(a2, memory_order_acquire);
  v5 = v4;
  if (v4)
  {
    BytePtr = CFDataGetBytePtr(v4);
  }

  else
  {
    BytePtr = 0;
  }

  v7 = atomic_load_explicit(a2, memory_order_acquire);
  v8 = v7;
  if (!v8)
  {

    goto LABEL_12;
  }

  v9 = v8;
  v10 = CFDataGetBytePtr(v8);

  if (!v10)
  {
LABEL_12:

    return a1;
  }

  v11 = &v10[CFDataGetLength(v7)];

  if ((BytePtr + 12) <= v11)
  {
    v12 = bswap32(*BytePtr) >> 16;
    if (v12 <= 1)
    {
      if (*(BytePtr + 2))
      {
        v13 = __rev16(*(BytePtr + 2));

        a1[1] = v12;
        a1[2] = v13;
      }
    }
  }

  return a1;
}

const UInt8 *ColorPaletteTable::PaletteTypeArray(ColorPaletteTable *this)
{
  if (!*(this + 1))
  {
    return 0;
  }

  v2 = atomic_load_explicit(this, memory_order_acquire);
  v3 = v2;
  if (v2)
  {
    BytePtr = CFDataGetBytePtr(v2);
  }

  else
  {
    BytePtr = 0;
  }

  v6 = atomic_load_explicit(this, memory_order_acquire);
  v7 = v6;
  if (v7)
  {
    v8 = v7;
    v9 = CFDataGetBytePtr(v7);

    if (v9)
    {
      v9 += CFDataGetLength(v6);
    }
  }

  else
  {

    v9 = 0;
  }

  result = 0;
  v10 = *(this + 2);
  v11 = &BytePtr[2 * v10];
  if (BytePtr <= v11 + 12 && v11 + 16 <= v9)
  {
    v12 = *(v11 + 3);
    if (v12)
    {
      v13 = &BytePtr[bswap32(v12)];
      v14 = &v13[4 * v10];
      if (v13 + 4 <= v9)
      {
        v15 = (v9 - v13) >> 2;
      }

      else
      {
        v15 = 0;
      }

      if (v14 <= v9 && v14 >= v13 || v15 == v10)
      {
        return v13;
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

const UInt8 *ColorPaletteTable::IndexOfFirstPaletteWithFlags(const UInt8 **this, int a2, int a3)
{
  result = ColorPaletteTable::PaletteTypeArray(this);
  if (result)
  {
    v7 = this[2];
    if (v7)
    {
      v8 = result;
      result = 0;
      while ((bswap32(*&v8[4 * result]) & a3) != a2)
      {
        if (v7 == ++result)
        {
          return 0;
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

atomic_ullong *ColorPaletteTable::Palette::Palette(atomic_ullong *this, CFDataRef theData, unint64_t a3)
{
  *this = 0;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    v7 = CFDataGetBytePtr(theData);
    v8 = v7 ? &v7[CFDataGetLength(theData)] : 0;
    if (*(BytePtr + 2))
    {
      v9 = __rev16(*(BytePtr + 2)) <= a3 ? 0 : a3;
      v10 = &BytePtr[2 * v9];
      v11 = v10 + 12;
      v12 = (v10 + 14);
      if (BytePtr <= v11 && v12 <= v8)
      {
        v14 = &BytePtr[4 * (bswap32(*v11) >> 16) + bswap32(*(BytePtr + 2))];
        v15 = bswap32(*(BytePtr + 1)) >> 16;
        v16 = v14 + 4 * v15;
        v17 = BytePtr <= v14 && v16 >= v14;
        if (v17 && v16 <= v8)
        {
          goto LABEL_28;
        }

        v19 = v14 + 4 > v8 || BytePtr > v14;
        v20 = (v8 - v14) >> 2;
        if (v19)
        {
          v20 = 0;
        }

        if (v20 == v15)
        {
LABEL_28:
          TCFRef<__CTFont const*>::Retain(this, theData);
          this[1] = v14;
          this[2] = v15;
        }
      }
    }
  }

  return this;
}

atomic_ullong *ColorPaletteTable::Palette::ColorForPaletteEntry@<X0>(atomic_ullong *this@<X0>, unint64_t a2@<X1>, atomic_ullong **a3@<X8>, uint8x8_t a4@<D0>)
{
  v14 = *MEMORY[0x1E69E9840];
  if (atomic_load_explicit(this, memory_order_acquire) && this[2] > a2)
  {
    a4.i32[0] = *(this[1] + 4 * a2);
    v5 = vmovl_u16(*&vmovl_u8(a4));
    v6 = vand_s8(*&vextq_s8(v5, v5, 8uLL), 0xFF000000FFLL);
    v7.i64[0] = v6.u32[0];
    v7.i64[1] = v6.u32[1];
    v8 = vcvtq_f64_u64(v7);
    *v5.i8 = vand_s8(*v5.i8, 0xFF000000FFLL);
    v7.i64[0] = v5.u32[0];
    v7.i64[1] = v5.u32[1];
    v9 = vdupq_n_s64(0x406FE00000000000uLL);
    v10 = vdivq_f64(vcvtq_f64_u64(v7), v9);
    v11 = vdivq_f64(v8, v9);
    v9.f64[1] = v10.f64[1];
    v10.f64[1] = v11.f64[1];
    v9.f64[0] = v11.f64[0];
    v13 = v10;
    *components = v9;
    if (qword_1ED567DA0 != -1)
    {
      dispatch_once_f(&qword_1ED567DA0, 0, sRGBColorSpace(void)::$_0::__invoke);
    }

    this = CGColorCreate(_MergedGlobals_25, components);
    *a3 = this;
  }

  else
  {
    *a3 = 0;
  }

  return this;
}

CGColorSpaceRef sRGBColorSpace(void)::$_0::__invoke()
{
  result = CGColorSpaceCreateWithName(*MEMORY[0x1E695F1C0]);
  _MergedGlobals_25 = result;
  return result;
}

uint64_t *PostGSUBFixups::add(uint64_t *this, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v9 = this;
  v10 = *this;
  v11 = this[1];
  if (*this != v11 && *(v11 - 32) == a2 && (v12 = *(v11 - 16), *(v11 - 24) + v12 == a3))
  {
    *(v11 - 16) = v12 + a4;
  }

  else
  {
    v13 = this[2];
    if (v11 >= v13)
    {
      v29 = 0xAAAAAAAAAAAAAAAALL;
      *&v15 = 0xAAAAAAAAAAAAAAAALL;
      *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v27 = v15;
      v28 = v15;
      v16 = (v11 - v10) >> 5;
      v17 = v16 + 1;
      if ((v16 + 1) >> 59)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v18 = v13 - v10;
      if (v18 >> 4 > v17)
      {
        v17 = v18 >> 4;
      }

      if (v18 >= 0x7FFFFFFFFFFFFFE0)
      {
        v19 = 0x7FFFFFFFFFFFFFFLL;
      }

      else
      {
        v19 = v17;
      }

      std::__split_buffer<PostGSUBFixups::FixupData,TInlineBufferAllocator<PostGSUBFixups::FixupData,8ul> &>::__split_buffer(&v27, v19, v16, (this + 3));
      v21 = *(&v27 + 1);
      v20 = v28;
      *v28 = a2;
      *(v20 + 8) = a3;
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;
      *&v28 = v20 + 32;
      v22 = *(v9 + 8) - *v9;
      v23 = v21 - v22;
      memcpy((v21 - v22), *v9, v22);
      v24 = *v9;
      *v9 = v23;
      v25 = *(v9 + 16);
      v26 = v28;
      *(v9 + 8) = v28;
      *&v28 = v24;
      *(&v28 + 1) = v25;
      *&v27 = v24;
      *(&v27 + 1) = v24;
      this = std::__split_buffer<PostGSUBFixups::FixupData,TInlineBufferAllocator<PostGSUBFixups::FixupData,8ul> &>::~__split_buffer(&v27);
      v14 = v26;
    }

    else
    {
      *v11 = a2;
      *(v11 + 8) = a3;
      *(v11 + 16) = a4;
      v14 = v11 + 32;
      *(v11 + 24) = a5;
    }

    *(v9 + 8) = v14;
  }

  return this;
}

uint64_t PostGSUBFixups::apply(PostGSUBFixups *this, TRunGlue *a2, int a3, const IndicClassTable *a4, int a5)
{
  if (*this != *(this + 1))
  {
    v7 = this;
    v113 = *(a2 + 13);
    v8 = TRunGlue::length(a2);
    v9 = *v7;
    v119 = *(v7 + 1);
    if (*v7 != v119)
    {
      v10 = v8;
      v11 = 0;
      v115 = 0;
      v112 = v7 + 312;
      v12 = -1;
      v110 = vdupq_n_s64(1uLL);
      v120 = a3;
      v116 = v7;
      v117 = v8;
      while (1)
      {
        v14 = *(v7 + 36);
        v13 = *(v7 + 37);
        v16 = *v9;
        v15 = *(v9 + 8);
        if (v14 != v13)
        {
          v17 = v14 + 2;
          do
          {
            v19 = *(v17 - 2);
            v18 = v17 - 2;
            v20 = *(v17 - 1) + v19;
            if (v19 <= v16 && v20 > v16)
            {
              v16 += *v17;
            }

            if (v19 <= v15 && v20 > v15)
            {
              v15 += *v17;
            }

            v17 += 3;
          }

          while (v18 + 3 != v13);
        }

        v122 = *(v9 + 16);
        v23 = *(v9 + 24);
        v118 = v23 & 0x30000000;
        if ((v23 & 0x30000000) != 0)
        {
          *&v125 = a2;
          *(&v125 + 1) = v15;
          if (TRunGlue::TGlyph::IsDeleted(&v125))
          {
            goto LABEL_196;
          }

          if ((v23 & 0x10000000) != 0)
          {
            *&v125 = a2;
            *(&v125 + 1) = v15 + 1;
            if (!TRunGlue::TGlyph::IsDeleted(&v125))
            {
              goto LABEL_196;
            }
          }
        }

        v24 = **(a2 + 13);
        v25 = (*(*(a2 + 13) + 8) - v24) >> 4;
        if (v25 <= v15)
        {
          goto LABEL_205;
        }

        v26 = v24 + 16 * v15;
        v27 = *(v26 + 12);
        if (v12 > v15 || v12 + v11 <= v15)
        {
          if (v15 < 1)
          {
            v12 = v15;
            v11 = 1;
          }

          else
          {
            v11 = v15 + 1;
            v28 = (v26 - 4);
            v29 = 1;
            v12 = v15;
            while (1)
            {
              v30 = *v28;
              v28 -= 4;
              if (v30 != v27)
              {
                break;
              }

              ++v29;
              --v12;
              if (v29 - v15 == 1)
              {
                v12 = 0;
                goto LABEL_31;
              }
            }

            v11 = v29;
          }

LABEL_31:
          v31 = v11 + v12;
          if (v11 + v12 < v10)
          {
            v32 = (v24 + 16 * v31 + 12);
            do
            {
              if (v25 <= v31)
              {
                goto LABEL_205;
              }

              if (*v32 != v27)
              {
                goto LABEL_37;
              }

              ++v11;
              v32 += 4;
              ++v31;
            }

            while (v31 < v10);
            v11 = v10 - v12;
          }

LABEL_37:
          *(v7 + 37) = *(v7 + 36);
        }

        v121 = v9;
        if (v23 < 0)
        {
          if ((v23 & 0x40000000) != 0)
          {
            *&v125 = a2;
            *(&v125 + 1) = v16;
            if (a3)
            {
              if (a3 == TRunGlue::TGlyph::glyphID(&v125))
              {
                ++v16;
              }
            }
          }

          if (v16 < v10)
          {
            while (1)
            {
              *&v125 = a2;
              *(&v125 + 1) = v16;
              if ((TRunGlue::TGlyph::IsDeleted(&v125) & 1) == 0)
              {
                if ((TRunGlue::GetGlyphProps(a2, v16) & 0x200) == 0)
                {
                  break;
                }

                StringIndex = TRunGlue::GetStringIndex(a2, v16);
                if (StringIndex != TRunGlue::GetStringIndex(a2, v15))
                {
                  break;
                }
              }

              if (v10 == ++v16)
              {
                v16 = v10;
                break;
              }
            }
          }
        }

        else
        {
          v33 = v11 + v12;
          if (v16 <= v11 + v12)
          {
            v34 = *(v26 + 8);
            if ((v34 & 0x40000000) != 0)
            {
              if ((*(a4 + 15) & 3) == 0)
              {
                goto LABEL_81;
              }

              v42 = v15 + 1;
              if (v15 + 1 < v16)
              {
                v43 = 16 * v15 + 40;
                v44 = v15 + 1;
                while (1)
                {
                  *&v125 = a2;
                  *(&v125 + 1) = v44;
                  if (v120)
                  {
                    if (TRunGlue::TGlyph::glyphID(&v125) == v120)
                    {
                      break;
                    }
                  }

                  ++v44;
                  v43 += 16;
                  if (v16 == v44)
                  {
                    goto LABEL_69;
                  }
                }

                v52 = v44 + 1;
                if (v44 + 1 < v16)
                {
                  v65 = **(a2 + 13);
                  if (v52 >= ((*(*(a2 + 13) + 8) - v65) >> 4))
                  {
LABEL_205:
                    __break(1u);
LABEL_206:
                    std::__throw_bad_array_new_length[abi:fn200100]();
                  }

                  v66 = *(v65 + v43);
                  if (v66 == 8 || v66 == 9)
                  {
                    v52 = v44 + 2;
                  }
                }

                if (v52 != -1)
                {
                  goto LABEL_149;
                }
              }

LABEL_69:
              v45 = *(a4 + 3) & 0x3000000;
              if (v45 == 50331648)
              {
                if (v16 == -1)
                {
                  goto LABEL_81;
                }
              }

              else
              {
                if (v45 == 0x1000000)
                {
                  if (v42 < v16)
                  {
                    v46 = 16 * v15 + 24;
                    while (1)
                    {
                      *&v125 = a2;
                      *(&v125 + 1) = v42;
                      if ((TRunGlue::TGlyph::IsDeleted(&v125) & 1) == 0)
                      {
                        v47 = **(a2 + 13);
                        if (v42 >= (*(*(a2 + 13) + 8) - v47) >> 4)
                        {
                          goto LABEL_205;
                        }

                        if ((~*(v47 + v46) & 0x88000000) == 0)
                        {
                          break;
                        }
                      }

                      ++v42;
                      v46 += 16;
                      if (v16 == v42)
                      {
                        v45 = *(a4 + 3) & 0x3000000;
                        goto LABEL_78;
                      }
                    }

                    v52 = v42;
                    goto LABEL_149;
                  }

LABEL_81:
                  v48 = *(a2 + 13);
                  if (v33 >= v12)
                  {
                    v49 = v12;
                  }

                  else
                  {
                    v49 = v11 + v12;
                  }

                  v50 = 16 * v33 - 8;
                  while (v33 > v12)
                  {
                    if (--v33 >= ((v48[1] - *v48) >> 4))
                    {
                      goto LABEL_205;
                    }

                    v51 = *(*v48 + v50) & 0xFFFE;
                    v50 -= 16;
                    if (v51 != 12)
                    {
                      v49 = v33 + 1;
                      break;
                    }
                  }

                  if (v49 == -1)
                  {
                    v52 = v16;
                  }

                  else
                  {
                    v52 = v49;
                  }

                  goto LABEL_149;
                }

LABEL_78:
                if (v45 != 0x2000000)
                {
                  goto LABEL_81;
                }
              }
            }

            else if ((v23 & 0x10000000) != 0 || (v34 & 0x70FFFF) == 0x400006)
            {
              v35 = v16;
              if (v16 + 2 < v33)
              {
                if (v16 <= v25)
                {
                  v36 = v25;
                }

                else
                {
                  v36 = v16;
                }

                v37 = v16 + 1;
                v38 = (v24 + 16 * v16 + 8);
                v39 = -v36;
                while (1)
                {
                  if (v39 + v37 == 1)
                  {
                    goto LABEL_205;
                  }

                  if ((*v38 & 0x80000000) != 0 && *v38 != 8)
                  {
                    break;
                  }

                  v40 = v37 + 2;
                  ++v37;
                  v38 += 4;
                  if (v40 >= v33)
                  {
                    goto LABEL_96;
                  }
                }

                *&v125 = a2;
                *(&v125 + 1) = v37;
                if (a3)
                {
                  v53 = v37 + 1;
                  if (a3 == TRunGlue::TGlyph::glyphID(&v125))
                  {
                    v35 = v53;
                  }

                  else
                  {
                    v35 = v16;
                  }
                }

                else
                {
LABEL_96:
                  v35 = v16;
                }
              }

              if (a5 != 1952542060)
              {
                if (a5 == 1835825517)
                {
                  v54 = v35 + 1;
                  if (v35 + 1 >= v33)
                  {
                    v16 = v35;
                  }

                  else
                  {
                    v55 = 16 * v35 + 24;
                    v16 = v35;
                    do
                    {
                      *&v124 = a2;
                      *(&v124 + 1) = v54;
                      if ((TRunGlue::TGlyph::IsDeleted(&v124) & 1) == 0)
                      {
                        v125 = v124;
                        if (!a3 || TRunGlue::TGlyph::glyphID(&v125) != a3)
                        {
                          v56 = **(a2 + 13);
                          if (v54 >= (*(*(a2 + 13) + 8) - v56) >> 4)
                          {
                            goto LABEL_205;
                          }

                          if ((*(v56 + v55 + 3) & 0x10) != 0)
                          {
                            v16 = v54;
                          }
                        }
                      }

                      ++v54;
                      v55 += 16;
                    }

                    while (v33 != v54);
                  }
                }

                else
                {
                  v57 = v15;
                  if (v35 - 1 > v15)
                  {
                    v58 = 16 * v35;
                    v59 = v35;
                    while (1)
                    {
                      *&v125 = a2;
                      *(&v125 + 1) = v59 - 1;
                      if (a3 && TRunGlue::TGlyph::glyphID(&v125) == a3)
                      {
                        v60 = **(a2 + 13);
                        v61 = (*(*(a2 + 13) + 8) - v60) >> 4;
                        if (v61 <= v59 - 2)
                        {
                          goto LABEL_205;
                        }

                        if (*(v60 + v58 - 24) != 9 && *(v60 + v58 - 24) != 8)
                        {
                          if (v61 <= v59)
                          {
                            goto LABEL_205;
                          }

                          if (*(v60 + v58 + 8) != 8)
                          {
                            if (*(v60 + v58 + 8) == 9)
                            {
                              v57 = v59 + 1;
                            }

                            else
                            {
                              v57 = v59;
                            }

                            break;
                          }

                          if ((v59 + 2) < v33)
                          {
                            if (v61 <= v59 + 1)
                            {
                              goto LABEL_205;
                            }

                            if ((*(v60 + v58 + 27) & 2) != 0)
                            {
                              if (v61 <= v59 + 2)
                              {
                                goto LABEL_205;
                              }

                              if (*(v60 + v58 + 40) == 7)
                              {
                                *&v125 = a2;
                                *(&v125 + 1) = v59 + 2;
                                if (TRunGlue::TGlyph::glyphID(&v125) != a3)
                                {
                                  v57 = v59 + 1;
                                  break;
                                }
                              }
                            }
                          }
                        }
                      }

                      v63 = v59 - 2;
                      v58 -= 16;
                      --v59;
                      if (v63 <= v15)
                      {
                        v57 = v15;
                        break;
                      }
                    }
                  }

                  if (v57 != v15 || v118 == 0)
                  {
                    v16 = v57;
                  }

                  else
                  {
                    v16 = v35;
                  }
                }
              }

              if (v16 > v12)
              {
                while (1)
                {
                  *&v125 = a2;
                  *(&v125 + 1) = v16;
                  if (!TRunGlue::TGlyph::IsDeleted(&v125))
                  {
                    break;
                  }

                  if (--v16 <= v12)
                  {
                    v16 = v12;
                    break;
                  }
                }
              }
            }
          }
        }

        v52 = v16;
LABEL_149:
        v68 = v15 + v122;
        v10 = v117;
        if (v15 + v122 >= v117)
        {
          v7 = v116;
          v9 = v121;
        }

        else
        {
          v7 = v116;
          v9 = v121;
          while (1)
          {
            *&v125 = a2;
            *(&v125 + 1) = v68;
            if (!TRunGlue::TGlyph::IsDeleted(&v125))
            {
              break;
            }

            if (++v68 >= v117)
            {
              v68 = v117;
              break;
            }
          }
        }

        if (v52 != v68)
        {
          if (v52 == v15)
          {
            v70 = *(v7 + 37);
            v69 = *(v7 + 38);
            if (v70 >= v69)
            {
              v78 = *(v7 + 36);
              v79 = v70 - v78;
              v80 = 0xAAAAAAAAAAAAAAABLL * ((v70 - v78) >> 3);
              v81 = v80 + 1;
              a3 = v120;
              if (v80 + 1 > 0xAAAAAAAAAAAAAAALL)
              {
                goto LABEL_206;
              }

              v82 = 0xAAAAAAAAAAAAAAABLL * ((v69 - v78) >> 3);
              if (2 * v82 > v81)
              {
                v81 = 2 * v82;
              }

              if (v82 >= 0x555555555555555)
              {
                v83 = 0xAAAAAAAAAAAAAAALL;
              }

              else
              {
                v83 = v81;
              }

              v127 = v112;
              if (v83)
              {
                v84 = std::allocator_traits<TInlineBufferAllocator<PostGSUBFixups::Adjustment,2ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<PostGSUBFixups::Adjustment,2ul>>(v112, v83);
                v83 = v85;
                v78 = *(v7 + 36);
                v79 = *(v7 + 37) - v78;
              }

              else
              {
                v84 = 0;
              }

              v95 = v7;
              v125 = 0u;
              v126 = 0u;
              v96 = v84 + 24 * v80;
              v97 = v84 + 24 * v83;
              *v96 = v15;
              *(v96 + 8) = vdupq_n_s64(1uLL);
              v71 = v96 + 24;
              v98 = v96 - v79;
              memcpy((v96 - v79), v78, v79);
              v99 = *(v95 + 36);
              *(v95 + 36) = v98;
              *(v95 + 37) = v71;
              v100 = *(v95 + 38);
              *(v95 + 38) = v97;
              *&v126 = v99;
              *(&v126 + 1) = v100;
              *&v125 = v99;
              *(&v125 + 1) = v99;
              std::__split_buffer<PostGSUBFixups::Adjustment,TInlineBufferAllocator<PostGSUBFixups::Adjustment,2ul> &>::~__split_buffer(&v125);
              v7 = v95;
              v10 = v117;
            }

            else
            {
              *v70 = v15;
              *(v70 + 8) = v110;
              v71 = v70 + 24;
              a3 = v120;
            }

            *(v7 + 37) = v71;
            v9 = v121;
            goto LABEL_196;
          }

          if (v15 > v52)
          {
            v72 = v15 - v52 + 1;
          }

          else
          {
            v72 = v52 - v68;
          }

          if (v52 >= v15)
          {
            v73 = v68;
          }

          else
          {
            v73 = v52;
          }

          if (v52 >= v15)
          {
            v74 = v15 - v68;
          }

          else
          {
            v74 = v68 - v15;
          }

          v76 = *(v7 + 37);
          v75 = *(v7 + 38);
          if (v76 >= v75)
          {
            v86 = *(v7 + 36);
            v87 = v76 - v86;
            v88 = 0xAAAAAAAAAAAAAAABLL * ((v76 - v86) >> 3);
            v89 = v88 + 1;
            if (v88 + 1 > 0xAAAAAAAAAAAAAAALL)
            {
              goto LABEL_206;
            }

            v90 = 0xAAAAAAAAAAAAAAABLL * ((v75 - v86) >> 3);
            if (2 * v90 > v89)
            {
              v89 = 2 * v90;
            }

            if (v90 >= 0x555555555555555)
            {
              v91 = 0xAAAAAAAAAAAAAAALL;
            }

            else
            {
              v91 = v89;
            }

            v127 = v112;
            if (v91)
            {
              v92 = v74;
              v123 = v73;
              v93 = std::allocator_traits<TInlineBufferAllocator<PostGSUBFixups::Adjustment,2ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<PostGSUBFixups::Adjustment,2ul>>(v112, v91);
              v73 = v123;
              v74 = v92;
              v91 = v94;
              v86 = *(v7 + 36);
              v87 = *(v7 + 37) - v86;
            }

            else
            {
              v93 = 0;
            }

            v125 = 0u;
            v126 = 0u;
            v101 = (v93 + 24 * v88);
            v102 = v93 + 24 * v91;
            *v101 = v73;
            v101[1] = v72;
            v101[2] = v74;
            v77 = v101 + 3;
            v103 = v101 - v87;
            memcpy(v101 - v87, v86, v87);
            v104 = *(v7 + 36);
            *(v7 + 36) = v103;
            *(v7 + 37) = v77;
            v105 = *(v7 + 38);
            *(v7 + 38) = v102;
            *&v126 = v104;
            *(&v126 + 1) = v105;
            *&v125 = v104;
            *(&v125 + 1) = v104;
            std::__split_buffer<PostGSUBFixups::Adjustment,TInlineBufferAllocator<PostGSUBFixups::Adjustment,2ul> &>::~__split_buffer(&v125);
            v10 = v117;
            v9 = v121;
          }

          else
          {
            *v76 = v73;
            *(v76 + 1) = v72;
            v77 = v76 + 24;
            *(v76 + 2) = v74;
          }

          *(v7 + 37) = v77;
          if (v15 >= v52)
          {
            v106 = v52;
            v107 = v15;
            v108 = v68;
          }

          else
          {
            v106 = v15;
            v107 = v68;
            v108 = v52;
          }

          TRunGlue::Rotate(a2, v106, v107, v108, v113);
          v115 = 1;
        }

        a3 = v120;
LABEL_196:
        v9 += 32;
        if (v9 == v119)
        {
          return v115 & 1;
        }
      }
    }
  }

  v115 = 0;
  return v115 & 1;
}

void *std::__split_buffer<PostGSUBFixups::FixupData,TInlineBufferAllocator<PostGSUBFixups::FixupData,8ul> &>::__split_buffer(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  a1[3] = 0;
  a1[4] = a4;
  if (a2)
  {
    v5 = *(a4 + 256);
    v6 = v5 + 32 * a2;
    if (v6 > a4 + 256)
    {
      if (!(a2 >> 59))
      {
        operator new();
      }

      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    *(a4 + 256) = v6;
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

uint64_t std::__split_buffer<PostGSUBFixups::FixupData,TInlineBufferAllocator<PostGSUBFixups::FixupData,8ul> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 31) & 0xFFFFFFFFFFFFFFE0);
  }

  v4 = *a1;
  if (*a1)
  {
    v5 = *(a1 + 32);
    v6 = (v5 + 256);
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

uint64_t std::allocator_traits<TInlineBufferAllocator<PostGSUBFixups::Adjustment,2ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<PostGSUBFixups::Adjustment,2ul>>(uint64_t a1, unint64_t a2)
{
  v3 = (a1 + 48);
  result = *(a1 + 48);
  v4 = result + 24 * a2;
  if (v4 > v3)
  {
    if (a2 < 0xAAAAAAAAAAAAAABLL)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v3 = v4;
  return result;
}

uint64_t std::__split_buffer<PostGSUBFixups::Adjustment,TInlineBufferAllocator<PostGSUBFixups::Adjustment,2ul> &>::~__split_buffer(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2 != *(a1 + 8))
  {
    *(a1 + 16) = (v2 - *(a1 + 8) - 24) % 0x18uLL + *(a1 + 8);
  }

  v3 = *a1;
  if (*a1)
  {
    v4 = *(a1 + 32);
    v5 = (v4 + 48);
    if (v4 <= v3 && v5 > v3)
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

uint64_t TTextEncapsulationRun::TTextEncapsulationRun(uint64_t a1, uint64_t a2)
{
  TRun::TRun(a1, *(a2 + 40));
  *v3 = &unk_1EF259078;
  v3[40] = 0;
  v3[41] = 0;
  v4 = v3[20];
  if (v4)
  {
    v4 = *(v4 + 80);
  }

  *(a1 + 336) = v4;
  *(a1 + 344) = TRun::GetAscent(a1);
  *(a1 + 352) = TRun::GetDescent(a1);
  *(a1 + 376) = 0;
  *(a1 + 388) = 1;
  *(a1 + 390) = 0;
  v5 = *(a1 + 336);
  v6 = *v5;
  v7 = *(v5 + 3);
  if (!*(v5 + 3))
  {
    v8 = v5[1];
    if (v8 <= 0.0)
    {
      TTextEncapsulationRun::GetParameter(5, *(v5 + 20), *v5);
      *(a1 + 368) = v9;
      v5 = *(a1 + 336);
    }

    else
    {
      *(a1 + 368) = v8;
    }
  }

  if (*(v5 + 1))
  {
    v10 = 4;
  }

  else
  {
    v10 = 3;
  }

  TTextEncapsulationRun::GetParameter(v10, *(v5 + 20), v6);
  *(a1 + 360) = v11;
  *(a1 + 384) = 0;
  if (v7 == 1)
  {
    explicit = atomic_load_explicit((a1 + 72), memory_order_acquire);
    if (!explicit || (v13 = *(*(a1 + 336) + 24)) == 0 || CFEqual(explicit, v13))
    {
      *(a1 + 384) = 16;
    }
  }

  return a1;
}

void TTextEncapsulationRun::GetParameter(int a1, unsigned int a2, unsigned int a3)
{
  if (a3 == 1 && TTextEncapsulationRun::GetParameter(TTextEncapsulationRun::Parameter,unsigned short,CTTextEncapsulationScale,double)::onceToken != -1)
  {
    dispatch_once(&TTextEncapsulationRun::GetParameter(TTextEncapsulationRun::Parameter,unsigned short,CTTextEncapsulationScale,double)::onceToken, &__block_literal_global_4);
  }

  v6 = &kEnclosureParameters + 144 * a3;
  if (a2 > 0x190)
  {
    v9 = *&v6[8 * a1 + 96];
    v8 = (a2 + -400.0) / 600.0;
    v7 = *&v6[8 * a1 + 48];
  }

  else
  {
    v7 = *&v6[8 * a1];
    v8 = a2 / 400.0;
    v9 = *&v6[8 * a1 + 48];
  }

  std::__lerp[abi:fn200100]<double>(v7, v9, v8);
}

void TTextEncapsulationRun::TTextEncapsulationRun(TTextEncapsulationRun *this, atomic_ullong *a2)
{
  TRun::TRun(this, a2);
  *v4 = &unk_1EF259078;
  v5 = a2[41];
  v4[40] = a2[40];
  v4[41] = v5;
  if (v5)
  {
    atomic_fetch_add_explicit((v5 + 8), 1uLL, memory_order_relaxed);
  }

  *(this + 42) = a2[42];
  *(this + 43) = TRun::GetAscent(this);
  Descent = TRun::GetDescent(this);
  v7 = a2[45];
  v8 = a2[46];
  *(this + 44) = Descent;
  *(this + 45) = v7;
  *(this + 46) = v8;
  *(this + 47) = atomic_load_explicit(a2 + 47, memory_order_acquire);
  *(this + 96) = *(a2 + 96);
  *(this + 388) = *(a2 + 388);
  *(this + 389) = 0;
  *(this + 390) = *(a2 + 390);
}

uint64_t TTextEncapsulationRun::TTextEncapsulationRun(uint64_t a1, uint64_t a2, uint64_t a3, CFIndex a4, int a5)
{
  v7 = TRun::TRun(a1, a2, a3, a4, a5);
  *v7 = &unk_1EF259078;
  *(v7 + 40) = 0;
  *(v7 + 41) = 0;
  *(v7 + 42) = *(a2 + 336);
  *(a1 + 344) = TRun::GetAscent(v7);
  Descent = TRun::GetDescent(a1);
  v9 = *(a2 + 360);
  v10 = *(a2 + 368);
  *(a1 + 352) = Descent;
  *(a1 + 360) = v9;
  *(a1 + 368) = v10;
  *(a1 + 376) = 0;
  *(a1 + 384) = *(a2 + 384);
  *(a1 + 388) = 1;
  *(a1 + 390) = *(a2 + 390);
  *(a1 + 256) = 3;
  v11 = *(a1 + 312);
  if (v11)
  {
    *v11 = *MEMORY[0x1E695F060];
    v12 = *(a1 + 312);
    if (v12)
    {
      v13 = *(v12 + 56);
      if (v13 != *(v12 + 64))
      {
        *(v12 + 64) = v13;
      }
    }
  }

  return a1;
}

unsigned int TTextEncapsulationRun::GetClassOfWeight(TTextEncapsulationRun *this, double a2)
{
  v3 = IndexesBracketing<double const*,double>(kSFWeightScale, &unk_1847781F8, a2, 0.001);
  v4 = kSFWeightScale[v3];
  v5 = kSFWeightScale[HIWORD(v3)];
  v6 = 0.0;
  if (v4 != v5)
  {
    v6 = (a2 - v4) / (v5 - v4);
  }

  return llround(std::__lerp[abi:fn200100]<double>((100 * v3), (100 * HIWORD(v3)), v6));
}

void TTextEncapsulationRun::CreateEncapsulationFont(const __CTFont *a1@<X0>, unsigned int a2@<W1>, int a3@<W2>, unsigned int a4@<W3>, CTFontRef *a5@<X8>)
{
  if (a3)
  {
    v9 = 2;
  }

  else
  {
    v9 = 1;
  }

  TTextEncapsulationRun::GetParameter(v9, a2, a4);
  v11 = v10;
  v20 = 0;
  if (a1)
  {
    v12 = *(*(a1 + 5) + 408);
    if (v12)
    {
      v12 = (*(v12->isa + 68))(v12);
    }
  }

  else
  {
    v12 = 0;
  }

  if (v12 == @"NSCTFontUIFontDesignDefault" || v12 && @"NSCTFontUIFontDesignDefault" && CFEqual(v12, @"NSCTFontUIFontDesignDefault"))
  {
    TTextEncapsulationRun::GetParameter(0, a2, a4);
    values = [MEMORY[0x1E696AD98] numberWithDouble:?];
    keys = &unk_1EF27A668;
    v13 = *MEMORY[0x1E695E480];
    v14 = MEMORY[0x1E695E9D8];
    v15 = MEMORY[0x1E695E9E8];
    v16 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
    values = v16;
    keys = @"NSCTFontVariationAttribute";
    v17 = CFDictionaryCreate(v13, &keys, &values, 1, v14, v15);
    v18 = TCFBase<TDescriptor>::Allocate();
    v19 = v18;
    if (v18)
    {
      *(v18 + 56) = 0;
      *(v18 + 16) = 0;
      *(v18 + 24) = TDescriptor::Hash;
      *(v18 + 32) = 0;
      *(v18 + 40) = v18 + 48;
      *(v18 + 48) = &unk_1EF257E00;
      *(v18 + 64) = 0;
      *(v18 + 80) = 0;
      *(v18 + 88) = 0;
      *(v18 + 72) = 0;
      TCFRef<__CTFont const*>::Retain((v18 + 56), v17);
    }

    keys = v19;
  }

  *a5 = CTFontCreateCopyWithAttributes(a1, v11, 0, atomic_load_explicit(&v20, memory_order_acquire));
}

void ___ZN21TTextEncapsulationRun12GetParameterENS_9ParameterEt24CTTextEncapsulationScaled_block_invoke()
{
  v0 = 0;
  v1 = &xmmword_1EA8690D0;
  v2 = vdupq_n_s64(0x3FDB851EB851EB85uLL);
  v3 = vdupq_n_s64(0x3FE23D70A3D70A3EuLL);
  do
  {
    v4 = 6;
    v5 = v1;
    do
    {
      v6 = *(v5 - 9);
      v7 = v5[9];
      v8 = vandq_s8(vornq_s8(vmvnq_s8(vclezq_f64(v6)), vcgezq_f64(v7)), vornq_s8(vmvnq_s8(vcgezq_f64(v6)), vclezq_f64(v7)));
      v9 = vcgtq_f64(v7, v6);
      v10 = vmulq_f64(v6, v3);
      v11 = vmlaq_f64(v6, v2, vsubq_f64(v7, v6));
      *v5++ = vbslq_s8(v8, vbslq_s8(v9, vbslq_s8(vcgtq_f64(v7, v11), v11, v7), vbslq_s8(vcgtq_f64(v11, v7), v11, v7)), vmlaq_f64(v10, v2, v7));
      v4 -= 2;
    }

    while (v4);
    ++v0;
    v1 += 3;
  }

  while (v0 != 3);
}

void TTextEncapsulationRun::CopyPlatterPath(atomic_ullong *this, __n128 *a2)
{
  *&v35.size.height = a2[22].n128_u64[1];
  v35.origin.y = (*(a2[21].n128_u64[0] + 48) - v35.size.height) * 0.5;
  v35.size.width = *(a2[20].n128_u64[0] + 32);
  v35.origin.x = 0.0;
  v36 = CGRectInset(v35, a2[23].n128_f64[0], 0.0);
  *this = 0;
  v4 = *(a2[21].n128_u64[0] + 2);
  if (v4 == 2 || v4 == 1)
  {
    v5 = CGPathCreateWithContinuousRoundedRect();
  }

  else
  {
    if (*(a2[21].n128_u64[0] + 2))
    {
      goto LABEL_7;
    }

    v5 = CGPathCreateWithRect(v36, 0);
  }

  *&v33.a = v5;

LABEL_7:
  if (*(a2[21].n128_u64[0] + 3))
  {
    return;
  }

  *&v33.a = CGPathCreateCopyByStrokingPath(atomic_load_explicit(this, memory_order_acquire), 0, a2[23].n128_f64[0], kCGLineCapButt, kCGLineJoinMiter, 10.0);

  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (*(a2[21].n128_u64[0] + 3) || a2[5].n128_u8[10] == 1)
  {
    v32 = explicit;
LABEL_11:

    return;
  }

  BoundingBox = CGPathGetBoundingBox(explicit);
  x = BoundingBox.origin.x;
  y = BoundingBox.origin.y;
  width = BoundingBox.size.width;
  height = BoundingBox.size.height;
  *&v33.a = CGPathCreateMutable();
  v11 = a2[17].n128_u64[0];
  if (!v11)
  {
LABEL_31:

    v34.width = NAN;
    v34.height = NAN;
    TRun::GetPositions(a2, &v34);
    v38 = CGPathGetBoundingBox(v11);
    v23 = v38.origin.x;
    v24 = v38.origin.y;
    v25 = v38.size.width;
    v26 = v38.size.height;
    if (CGRectIsNull(v38) || (v39.origin.x = v23, v39.origin.y = v24, v39.size.width = v25, v39.size.height = v26, v40 = CGRectOffset(v39, -v34.width, -v34.height), v41 = CGRectInset(v40, a2[23].n128_f64[0] * -0.5, a2[23].n128_f64[0] * -0.5), v27 = v41.origin.x, v28 = v41.origin.y, v29 = v41.size.width, v30 = v41.size.height, v41.origin.x = x, v41.origin.y = y, v41.size.width = width, v41.size.height = height, v42 = CGRectInset(v41, a2[23].n128_f64[0], a2[23].n128_f64[0]), v43.origin.x = v27, v43.origin.y = v28, v43.size.width = v29, v43.size.height = v30, !CGRectContainsRect(v42, v43)))
    {
      *&v31 = -1;
      *(&v31 + 1) = -1;
      *&v33.c = v31;
      *&v33.tx = v31;
      *&v33.a = v31;
      CGAffineTransformMakeTranslation(&v33, -v34.width, -v34.height);
      CreateMaskedPath(explicit, v11, a2[23].n128_f64[0], &v33, 1, &v32);
    }

    else
    {
      v32 = explicit;
    }

    goto LABEL_11;
  }

  v12 = *(v11 + 3) - *(v11 + 2);
  v13 = v12 >> 3;
  v14 = a2[20].n128_u64[0];
  v15 = *v14;
  v16 = v14[1] + *v14;
  if (v16 >= v12 >> 3)
  {
    v17 = v12 >> 3;
  }

  else
  {
    v17 = v16;
  }

  if (v15 < 0 || v15 >= v13)
  {
    v18 = v16 > 0 && v15 < 1;
    v15 = 0;
    if (!v18)
    {
      v17 = 0;
    }
  }

  else
  {
    v17 -= v15;
  }

  if (v17 < 1)
  {
LABEL_30:
    v11 = atomic_exchange(&v33, 0);
    goto LABEL_31;
  }

  v19 = v15 + v17;
  v20 = v15;
  while (1)
  {
    v21 = *(v11 + 2);
    if (v20 >= (*(v11 + 3) - v21) >> 3)
    {
      break;
    }

    v22 = *(*(v21 + 8 * v20) + 40);
    v34.width = -3.72066208e-103;
    TRun::CopyPath(v22, &v34);
    CGPathAddPath(atomic_load_explicit(&v33, memory_order_acquire), 0, atomic_load_explicit(&v34, memory_order_acquire));

    if (v15 > ++v20 || v19 <= v20)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
}

void TTextEncapsulationRun::DrawGlyphs(__n128 *this, CGContextRef c, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  TextPosition = CGContextGetTextPosition(c);
  v24.width = NAN;
  v24.height = NAN;
  TRun::GetPositions(this, &v24);
  v9 = v8;
  CGContextSetTextPosition(c, TextPosition.x - v24.width, TextPosition.y - v24.height);
  v23[1] = 0;
  v23[2] = 0xAAAAAAAAAAAAAA00;
  v23[0] = 0xAAAAAAAAAAAAAA01;
  TTextEncapsulationRun::DrawGlyphsAtPositions(this, c, location, length, v9, v23);
  v10 = this[19].n128_u64[1];
  if (!v10)
  {
    v10 = MEMORY[0x1E695F060];
  }

  v11 = TextPosition.x + *v10;
  v12 = TextPosition.y + v10[1];
  v13 = this[13].n128_i64[0];
  if (v13)
  {
    v14 = this[13].n128_u64[1];
    v15 = *(v14 + 32);
    if (v15 || (v18 = *(v14 + 24)) == 0)
    {
      v16 = 0;
      v17 = (v15 + 16 * this[12].n128_u64[1]);
    }

    else
    {
      v17 = (v18 + 8 * this[12].n128_u64[1]);
      v16 = 1;
    }

    if (v13 >= 1)
    {
      v19 = 0;
      v20 = v17;
      do
      {
        if (v16)
        {
          v21 = &v17[v19];
          v22 = 0.0;
        }

        else
        {
          v22 = v20[1];
          v21 = v20;
        }

        v11 = v11 + *v21;
        v12 = v12 + v22;
        ++v19;
        v20 += 2;
        --v13;
      }

      while (v13);
    }
  }

  CGContextSetTextPosition(c, v11, v12);
}