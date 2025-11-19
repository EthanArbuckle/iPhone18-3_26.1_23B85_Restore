uint64_t std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(uint64_t a1)
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
    if (v5 <= v4 && v5 + 60 > v4)
    {
      if (*(a1 + 24) == *(v5 + 64))
      {
        *(v5 + 64) = v4;
      }
    }

    else
    {
      operator delete(v4);
    }
  }

  return a1;
}

uint64_t TCFBase<TTypesetter>::CreateTypeID()
{
  {
    TCFBase<TTypesetter>::CreateTypeID(void)::runtimeClass = 0;
    *algn_1ED567128 = "CTTypesetter";
    qword_1ED567130 = 0;
    unk_1ED567138 = 0;
    qword_1ED567140 = TCFBase<TTypesetter>::ClassDestruct;
    qword_1ED567148 = TCFBase<TTypesetter>::ClassEqual;
    qword_1ED567150 = TCFBase<TTypesetter>::ClassHash;
    unk_1ED567158 = 0;
    qword_1ED567160 = TCFBase<TTypesetter>::ClassDebug;
    unk_1ED567168 = 0;
    qword_1ED567170 = 0;
    unk_1ED567178 = 0;
  }

  result = _CFRuntimeRegisterClass();
  TCFBase<TTypesetter>::fTypeID = result;
  return result;
}

void *TRunGlue::ComputeEndIndex(void *this)
{
  v1 = this[1];
  v2 = *(*this + 16);
  v3 = (*(*this + 24) - v2) >> 3;
  if (v3 <= v1)
  {
LABEL_11:
    __break(1u);
    return this;
  }

  v4 = this[2];
  v5 = *(*(v2 + 8 * v1) + 40);
  v6 = v5[26];
  this[4] = v6;
  v8 = v5[1];
  v7 = v5[2];
  this[5] = v8;
  this[6] = v7;
  if (v4 >= 2)
  {
    v9 = v4 + v1;
    v10 = v1 + 1;
    while (v3 != v10)
    {
      v11 = *(*(v2 + 8 * v10) + 40);
      v6 += v11[26];
      this[4] = v6;
      v13 = v11[1];
      v12 = v11[2];
      v14 = v7 + v8;
      if (v13 < v8)
      {
        v8 = v13;
      }

      v15 = v12 + v13;
      if (v14 <= v15)
      {
        v14 = v15;
      }

      v7 = v14 - v8;
      this[5] = v8;
      this[6] = v7;
      if (++v10 >= v9)
      {
        return this;
      }
    }

    goto LABEL_11;
  }

  return this;
}

void TBMPDataCachePage::TBMPDataCachePage(TBMPDataCachePage *this, const TBaseFont *a2, int a3)
{
  v23 = *MEMORY[0x1E69E9840];
  *(this + 198) = 0;
  *(this + 98) = 0u;
  *(this + 207) = this + 1592;
  v5 = a3 & 0xFFFFFF00;
  (*(*a2 + 680))(a2, a3 & 0xFFFFFF00, 256, this);
  v6 = 0;
  v7 = vorrq_s8(vdupq_n_s16(v5), xmmword_18477B810);
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[30] = v8;
  v18[31] = v8;
  v18[28] = v8;
  v18[29] = v8;
  v18[26] = v8;
  v18[27] = v8;
  v18[24] = v8;
  v18[25] = v8;
  v18[22] = v8;
  v18[23] = v8;
  v18[20] = v8;
  v18[21] = v8;
  v18[18] = v8;
  v18[19] = v8;
  v18[16] = v8;
  v18[17] = v8;
  v18[14] = v8;
  v18[15] = v8;
  v18[12] = v8;
  v18[13] = v8;
  v18[10] = v8;
  v18[11] = v8;
  v18[8] = v8;
  v18[9] = v8;
  v18[6] = v8;
  v18[7] = v8;
  v18[4] = v8;
  v18[5] = v8;
  v18[2] = v8;
  v18[3] = v8;
  v18[0] = v8;
  v18[1] = v8;
  v9.i64[0] = 0x8000800080008;
  v9.i64[1] = 0x8000800080008;
  do
  {
    v18[v6] = v7;
    v7 = vaddq_s16(v7, v9);
    ++v6;
  }

  while (v6 != 32);
  bzero(v17, 0x400uLL);
  memset(__b, 255, sizeof(__b));
  if ((*(*a2 + 520))(a2, this, __b, 1, 256))
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v21[14] = v10;
    v21[13] = v10;
    v21[12] = v10;
    v21[11] = v10;
    v21[10] = v10;
    v21[9] = v10;
    v21[8] = v10;
    v21[7] = v10;
    v21[6] = v10;
    v21[5] = v10;
    v21[4] = v10;
    v21[3] = v10;
    v21[2] = v10;
    v21[1] = v10;
    v21[0] = v10;
    memset(v20, 0, sizeof(v20));
    v22 = v21;
    v19 = v20;
    v15 = 0;
    v11 = __b;
    TUnicodeEncoder::EncodePortion(&v19, 0, v18, 256, a2, 0, this, __b, 1, v17, &v15, 1);
    for (i = 0; i != 1024; i += 16)
    {
      v14 = *v11;
      v13 = v11[1];
      v11 += 2;
      *(this + i + 512) = vcvt_hight_f32_f64(vcvt_f32_f64(v14), v13);
    }

    v19 = v20;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v19);
  }

  else
  {
    bzero(this + 512, 0x400uLL);
  }

  TCompactArray<unsigned short,8ul,3ul,30ul>::assign<unsigned int *>(this + 1536, v17, v18);
}

uint64_t TBaseFont::GetUnscaledAdvances(TBaseFont *a1, uint64_t a2, void *a3, int a4, int64_t a5)
{
  v24 = *MEMORY[0x1E69E9840];
  InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(a1);
  if (a4 != 2)
  {
    if (a4 == 1)
    {
      if (InitializedGraphicsFont && CGFontGetParserFont())
      {
        FPFontGetGlyphIdealAdvanceWidths();
        return 1;
      }

      TBaseFont::GetInitializedGraphicsFont(a1);
    }

    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v22[28] = v12;
    v22[29] = v12;
    v22[26] = v12;
    v22[27] = v12;
    v22[24] = v12;
    v22[25] = v12;
    v22[22] = v12;
    v22[23] = v12;
    v22[20] = v12;
    v22[21] = v12;
    v22[18] = v12;
    v22[19] = v12;
    v22[16] = v12;
    v22[17] = v12;
    v22[15] = v12;
    v22[14] = v12;
    v22[13] = v12;
    v22[12] = v12;
    v22[11] = v12;
    v22[10] = v12;
    v22[9] = v12;
    v22[8] = v12;
    v22[7] = v12;
    v22[6] = v12;
    v22[4] = v12;
    v22[5] = v12;
    v22[2] = v12;
    v22[3] = v12;
    v22[0] = v12;
    v22[1] = v12;
    v19 = 0;
    v20 = 0;
    v21 = 0;
    v23 = v22;
    if (a5)
    {
      std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__vallocate[abi:fn200100](&v19, a5);
      v13 = v20;
      bzero(v20, 16 * a5);
      v20 = &v13[16 * a5];
      GlyphAdvancesForStyle = CGFontGetGlyphAdvancesForStyle();
      v10 = GlyphAdvancesForStyle;
      if (a5 >= 1 && GlyphAdvancesForStyle)
      {
        v15 = v19;
        v16 = (v20 - v19) >> 4;
        do
        {
          if (!v16)
          {
            __break(1u);
          }

          v17 = *v15;
          v15 += 2;
          *a3 = v17;
          --v16;
          a3 += a4;
          --a5;
        }

        while (a5);
        v10 = 1;
      }
    }

    else
    {
      v10 = CGFontGetGlyphAdvancesForStyle();
    }

    v18 = &v19;
    std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v18);
    return v10;
  }

  return CGFontGetGlyphAdvancesForStyle();
}

void *TCFNumber::TCFNumber<int>(void *a1, int a2)
{
  valuePtr = a2;
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
  *a1 = atomic_exchange(&v4, 0);

  return a1;
}

uint64_t TTenuousComponentFont::GetUnscaledAdvances(atomic_ullong *this, unsigned __int16 *a2, void *a3, uint64_t a4, int64_t a5)
{
  if ((this[89] & 0x20) != 0)
  {
    ComponentAttribute = TComponentFont::GetComponentAttribute(this, @"hmtxPerAltFont");
    if (ComponentAttribute)
    {
      v17.isa = 0xAAAAAAAAAAAAAAAALL;
      CopyComponentFontDescriptorWithBaseSystemFallback(&v17, ComponentAttribute, 0, 1024);
      if (atomic_load_explicit(&v17, memory_order_acquire))
      {
        v12 = atomic_load_explicit(&v17, memory_order_acquire);
        v13 = v12;
        v14 = v12[5];
        if ((*(v14 + 4) & 0x80000000) == 0)
        {
          TDescriptor::InitBaseFont(v12[5], 0, 0.0);
        }

        explicit = atomic_load_explicit(v14 + 4, memory_order_acquire);

        if (explicit)
        {
          v16 = (*(*explicit + 520))(explicit, a2, a3, a4, a5);

          return v16;
        }
      }
    }

    return TComponentFont::GetUnscaledAdvances(this, a2, a3, a4, a5);
  }

  return TBaseFont::GetUnscaledAdvances(this, a2, a3, a4, a5);
}

uint64_t TUnicodeEncoder::EncodePortion(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, int a9, uint64_t a10, double *a11, char a12)
{
  v61 = a2;
  v60 = (*(*a5 + 696))(a5);
  v55 = (*(*a5 + 720))(a5);
  if (a4 >= 1)
  {
    v54 = a5;
    v18 = 0;
    v19 = (a8 + 8 * a9 * a2);
    v20 = 1;
    v58 = a3;
    v59 = a4;
    while (1)
    {
      v21 = v18 + 1;
      v22 = *(a3 + 2 * v18);
      if ((v22 & 0xFC00) != 0xD800 || v21 == a4)
      {
        ++v18;
      }

      else
      {
        v24 = *(a3 + 2 * v21);
        v25 = (v24 & 0xFC00) == 56320;
        v26 = v24 + (v22 << 10) - 56613888;
        if (v25)
        {
          v22 = v26;
        }

        else
        {
          v22 = *(a3 + 2 * v18);
        }

        if (v25)
        {
          v18 += 2;
        }

        else
        {
          ++v18;
        }
      }

      v27 = MEMORY[0x1865F2D20](v22);
      if (v27 >= 1)
      {
        if (v27 > 0x15 || ((1 << v27) & 0x20E022) == 0)
        {
          v29 = 0;
        }

        else
        {
          *(a10 + 4 * v61) |= 0x8000u;
          v29 = 2;
        }

        v20 |= v29;
      }

      v30 = u_charType(v22);
      v31 = a7;
      v32 = *(a7 + 2 * v61);
      v33 = ((v32 + 1) < 2u) | v60 & 1 && u_hasBinaryProperty(v22, UCHAR_DEFAULT_IGNORABLE_CODE_POINT) != 0;
      v34 = 1 << v30;
      v35 = ((1 << v30) & 0x5F001) == 0 && !v33;
      if (v35 || IsVisibleFormatter(v22))
      {
        break;
      }

      if (!v33)
      {
        v44 = *(v31 + 2 * v61);
        if (*(v31 + 2 * v61))
        {
          v43 = 0;
          if (u_hasBinaryProperty(v22, UCHAR_DEFAULT_IGNORABLE_CODE_POINT))
          {
            *v19 = 0.0;
          }
        }

        else
        {
          v43 = 8;
        }

        if ((v34 & 0x7000) == 0 && ((v34 & 0x8000) == 0 || !u_isUWhiteSpace(v22)))
        {
          v45 = *v19 + *a11;
          *a11 = v45;
          if (v30 == 16)
          {
            a3 = v58;
            if (IsVisibleFormatter(v22))
            {
              if (v44)
              {
                v43 |= 4u;
                *(a10 + 4 * v61) |= 0x40u;
              }

              a7 = v31;
              goto LABEL_91;
            }

            if (v22 >> 11 == 27)
            {
LABEL_97:
              a7 = v31;
              a4 = v59;
              goto LABEL_54;
            }

            v45 = *a11;
            a7 = v31;
          }

          else
          {
            a3 = v58;
            if (v22 >> 11 == 27)
            {
              goto LABEL_97;
            }

            a7 = v31;
            if (!v30)
            {
LABEL_91:
              a4 = v59;
              if (v22 >= 0x10000 && (a12 & 1) == 0)
              {
                v47 = v43;
                v48 = v61;
                v19 += a9;
                v49 = ++v61;
                if (*(a7 + 2 * v48))
                {
                  v50 = 0;
                  *(a7 + 2 * v49) = -1;
                  *v19 = 0.0;
                }

                else
                {
                  v50 = 8;
                }

                std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](*a1, &v61);
                v43 = v50 | v47;
              }

              goto LABEL_54;
            }
          }

          *a11 = v45 - *v19;
          v51 = v61;
          *(a7 + 2 * v61) = -1;
          v52 = *(a10 + 4 * v51);
          *v19 = 0.0;
          *(a10 + 4 * v51) = v52 | 0x20;
          v43 = 16;
          a4 = v59;
          if (v22 >= 0x10000 && (a12 & 1) == 0)
          {
            v19 += a9;
            v61 = v51 + 1;
            *(a7 + 2 * (v51 + 1)) = -1;
            goto LABEL_53;
          }

LABEL_54:
          v20 |= v43;
          goto LABEL_55;
        }

        if (v30 == 15)
        {
          a3 = v58;
          if ((v22 - 10) < 4)
          {
            goto LABEL_65;
          }

          if (v22 == 9)
          {
            *(a10 + 4 * v61) |= 4u;
            goto LABEL_99;
          }

          if (v22 == 133)
          {
LABEL_65:
            *(a10 + 4 * v61) |= 2u;
            if (v44)
            {
              goto LABEL_99;
            }

            v63 = 32;
            v62 = -21846;
            a7 = v31;
            if ((*(*v54 + 672))(v54, &v63, &v62, 1) == 1)
            {
              v43 = 0;
              *(v31 + 2 * v61) = v62;
            }
          }

          else
          {
LABEL_99:
            a7 = v31;
          }

          a4 = v59;
          *v19 = 0.0;
          v46 = 0.0;
        }

        else
        {
          if ((v34 & 0x6000) != 0)
          {
            *(a10 + 4 * v61) |= 2u;
            *v19 = 0.0;
            v46 = 0.0;
          }

          else
          {
            v46 = *v19;
          }

          a7 = v31;
          a3 = v58;
          a4 = v59;
        }

        *a11 = v46 + *a11;
        *(a10 + 4 * v61) |= 1u;
        goto LABEL_54;
      }

      if (!a6 || (v22 >> 1 != 32519) | v60 & 1 | (v55 ^ (v22 != 65039)) & 1)
      {
        v39 = v61;
        a7 = v31;
        *(v31 + 2 * v61) = -1;
        *v19 = 0.0;
        *(a10 + 4 * v39) |= 0x20u;
        a3 = v58;
        if (v22 < 0x10000)
        {
          a4 = v59;
        }

        else
        {
          a4 = v59;
          if ((a12 & 1) == 0)
          {
            v19 += a9;
            v40 = v39 + 1;
            v61 = v40;
            *(a7 + 2 * v40) = -1;
            *v19 = 0.0;
            *(a10 + 4 * v40) |= 0x20u;
            std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](*a1, &v61);
          }
        }

        v20 |= 0x10u;
        goto LABEL_55;
      }

      a3 = v58;
      if (v32 == 0xFFFF)
      {
        v20 |= 0x10u;
      }

      else
      {
        v20 |= 8u;
      }

LABEL_50:
      a7 = v31;
      a4 = v59;
LABEL_55:
      v19 += a9;
      ++v61;
      if (v18 >= a4)
      {
        return v20;
      }
    }

    *a11 = *v19 + *a11;
    if ((v34 & 0x37F80E1E) == 0)
    {
      if (v22 >> 5 == 1987 || (v34 & 0x1C0) != 0)
      {
        v20 |= 4u;
        v37 = v61;
        v38 = *(a10 + 4 * v61) | 0x40;
      }

      else
      {
        if ((v34 & 0x8000000) != 0)
        {
          goto LABEL_44;
        }

        IntPropertyValue = u_getIntPropertyValue(v22, UCHAR_GRAPHEME_CLUSTER_BREAK);
        if ((IntPropertyValue & 0xFFFFFFFE) != 8)
        {
          if (IntPropertyValue == 17)
          {
            v20 |= 4u;
          }

          goto LABEL_44;
        }

        v20 |= 4u;
        v37 = v61;
        v38 = *(a10 + 4 * v61) | 0x10;
      }

      *(a10 + 4 * v37) = v38;
    }

LABEL_44:
    a3 = v58;
    if (v22 >= 0x10000 && (a12 & 1) == 0)
    {
      v41 = v61;
      v19 += a9;
      v42 = ++v61;
      a7 = v31;
      if (*(v31 + 2 * v41))
      {
        v43 = 0;
        *(v31 + 2 * v42) = -1;
        *v19 = 0.0;
      }

      else
      {
        v43 = 8;
      }

      a4 = v59;
LABEL_53:
      std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](*a1, &v61);
      goto LABEL_54;
    }

    if (!v32)
    {
      v20 |= 8u;
    }

    goto LABEL_50;
  }

  LOBYTE(v20) = 1;
  return v20;
}

BOOL IsVisibleFormatter(unsigned int a1)
{
  if (a1 - 78896 < 0x10 || a1 - 6155 < 5 || a1 - 8204 < 2)
  {
    return 1;
  }

  if (a1 < 0xE0030)
  {
    return u_hasBinaryProperty(a1, UCHAR_PREPENDED_CONCATENATION_MARK) != 0;
  }

  if (a1 < 0xE003A)
  {
    return 1;
  }

  if (a1 < 0xE0061)
  {
    return u_hasBinaryProperty(a1, UCHAR_PREPENDED_CONCATENATION_MARK) != 0;
  }

  v3 = 1;
  if (a1 >= 0xE007B && a1 != 917631)
  {
    return u_hasBinaryProperty(a1, UCHAR_PREPENDED_CONCATENATION_MARK) != 0;
  }

  return v3;
}

unsigned __int16 *TCompactArray<unsigned short,8ul,3ul,30ul>::assign<unsigned int *>(uint64_t a1, int *a2, int *a3)
{
  *a1 = 0;
  v5 = a2 + 8;
  result = std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__insert_with_size[abi:fn200100]<unsigned int *,unsigned int *>((a1 + 32), *(a1 + 40), a2, a2 + 8, 8);
  v27 = a3;
  if (v5 != a3)
  {
    v7 = 1;
    do
    {
      v8 = v5;
      v5 += 8;
      v10 = *(a1 + 32);
      v9 = *(a1 + 40);
      v11 = v9 - v10;
      if (v9 - v10 < 15)
      {
LABEL_7:
        v15 = v8 + 7;
        if (v10 != v9)
        {
          v16 = v10;
          do
          {
            result = std::__search_impl[abi:fn200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>,unsigned int *,unsigned int *,std::__equal_to,std::__identity,std::__identity,0>(v16, v9, v8, v15);
            if (v10 == result)
            {
              break;
            }

            --v15;
            ++v10;
            ++v16;
          }

          while (v10 != v9);
        }

        if (v7 >= 0x20)
        {
          goto LABEL_26;
        }

        v17 = v5 - v15;
        v18 = (v5 - v15) >> 2;
        *(a1 + v7) = v18 + (v11 >> 1) - 8;
        v19 = *(a1 + 32);
        v20 = ((*(a1 + 40) - v19) >> 1) + v18;
        v21 = (*(a1 + 48) - v19) >> 1;
        if (v21 <= 0x1E)
        {
          v21 = 30;
        }

        if (v20 <= v21)
        {
          v25 = v17 >> 2;
          v26 = (a1 + 32);
          v24 = v9;
        }

        else
        {
          v22 = 0;
          while (1)
          {
            v23 = TCompactArray<unsigned short,8ul,3ul,30ul>::assign<unsigned int *>(unsigned int *,unsigned int *)::kBuckets[v22];
            if (v20 <= v23)
            {
              break;
            }

            if (++v22 == 3)
            {
              v23 = 256;
              break;
            }
          }

          std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::reserve((a1 + 32), v23);
          v24 = *(a1 + 40);
          v25 = v17 >> 2;
          v26 = (a1 + 32);
        }

        result = std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__insert_with_size[abi:fn200100]<unsigned int *,unsigned int *>(v26, v24, v15, v5, v25);
      }

      else
      {
        v12 = 0;
        v13 = v9 - v10;
        v14 = *(a1 + 32);
        while (1)
        {
          result = std::__search_impl[abi:fn200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>,unsigned int *,unsigned int *,std::__equal_to,std::__identity,std::__identity,0>(v14, v9, v8, v5);
          if (v10 == result)
          {
            break;
          }

          ++v10;
          ++v12;
          ++v14;
          v13 -= 2;
          if (v13 <= 14)
          {
            goto LABEL_7;
          }
        }

        if (v7 >= 0x20)
        {
LABEL_26:
          __break(1u);
          return result;
        }

        *(a1 + v7) = v12;
      }

      ++v7;
    }

    while (v5 != v27);
  }

  return result;
}

uint64_t *std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__insert_with_size[abi:fn200100]<unsigned int *,unsigned int *>(uint64_t *result, char *__src, int *a3, int *a4, uint64_t a5)
{
  if (a5 >= 1)
  {
    v6 = a3;
    v7 = __src;
    v8 = result;
    v10 = result[1];
    v9 = result[2];
    if (a5 <= (v9 - v10) >> 1)
    {
      v28 = (v10 - __src) >> 1;
      if (v28 >= a5)
      {
        v33 = &__src[2 * a5];
        v34 = &v10[-2 * a5];
        v35 = result[1];
        while (v34 < v10)
        {
          v36 = *v34;
          v34 += 2;
          *v35++ = v36;
        }

        result[1] = v35;
        if (v10 != v33)
        {
          result = memmove(&__src[2 * a5], __src, v10 - v33);
        }

        v41 = 4 * a5;
        do
        {
          v42 = *v6++;
          *v7 = v42;
          v7 += 2;
          v41 -= 4;
        }

        while (v41);
      }

      else
      {
        v29 = &a3[v28];
        v30 = result[1];
        v31 = v30;
        while (v29 != a4)
        {
          v32 = *v29++;
          *v31 = v32;
          v31 += 2;
          v30 += 2;
        }

        result[1] = v30;
        if (v28 >= 1)
        {
          v37 = &__src[2 * a5];
          v38 = &v30[-2 * a5];
          v39 = v30;
          while (v38 < v10)
          {
            v40 = *v38;
            v38 += 2;
            *v39 = v40;
            v39 += 2;
          }

          result[1] = v39;
          if (v31 != v37)
          {
            result = memmove(&__src[2 * a5], __src, v30 - v37);
          }

          if (v10 != v7)
          {
            v43 = 4 * v28;
            do
            {
              v44 = *v6++;
              *v7 = v44;
              v7 += 2;
              v43 -= 4;
            }

            while (v43);
          }
        }
      }
    }

    else
    {
      v11 = *result;
      v12 = a5 + (&v10[-*result] >> 1);
      v47 = 0xAAAAAAAAAAAAAAAALL;
      *&v13 = 0xAAAAAAAAAAAAAAAALL;
      *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v45 = v13;
      v46 = v13;
      if (v12 < 0)
      {
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v14 = &__src[-v11];
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

      std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(&v45, v17, v14 >> 1, (result + 3));
      v18 = v46;
      v19 = (v46 + 2 * a5);
      v20 = 2 * a5;
      do
      {
        v21 = *v6++;
        *v18++ = v21;
        v20 -= 2;
      }

      while (v20);
      *&v46 = v19;
      memcpy(v19, v7, *(v8 + 8) - v7);
      v22 = *v8;
      v23 = *(&v45 + 1);
      *&v46 = v46 + *(v8 + 8) - v7;
      *(v8 + 8) = v7;
      v24 = v7 - v22;
      v25 = (v23 - (v7 - v22));
      memcpy(v25, v22, v24);
      v26 = *v8;
      *v8 = v25;
      v27 = *(v8 + 16);
      *(v8 + 8) = v46;
      *&v46 = v26;
      *(&v46 + 1) = v27;
      *&v45 = v26;
      *(&v45 + 1) = v26;
      return std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(&v45);
    }
  }

  return result;
}

unsigned __int16 *std::__search_impl[abi:fn200100]<std::__wrap_iter<unsigned short *>,std::__wrap_iter<unsigned short *>,unsigned int *,unsigned int *,std::__equal_to,std::__identity,std::__identity,0>(unsigned __int16 *result, uint64_t a2, int *a3, int *a4)
{
  if (a4 != a3)
  {
    v4 = a4 - a3;
    v5 = (a2 - result) >> 1;
    v6 = __OFSUB__(v5, v4);
    v7 = v5 - v4;
    if (v7 < 0 != v6)
    {
      return a2;
    }

    v8 = &result[v7 + 1];
    if (v8 == result)
    {
      return a2;
    }

    else
    {
      v11 = *a3;
      v9 = a3 + 1;
      v10 = v11;
      while (v10 != *result)
      {
LABEL_11:
        if (++result == v8)
        {
          return a2;
        }
      }

      v12 = result + 1;
      v13 = v9;
      while (v13 != a4)
      {
        v15 = *v12++;
        v14 = v15;
        v16 = *v13++;
        if (v16 != v14)
        {
          goto LABEL_11;
        }
      }
    }
  }

  return result;
}

uint64_t std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<unsigned short,30ul>>(uint64_t a1, uint64_t a2)
{
  result = *(a1 + 64);
  v4 = result + 2 * a2;
  if (v4 > a1 + 60)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *(a1 + 64) = v4;
  return result;
}

const void **std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::reserve(const void **result, unint64_t a2)
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
    v4 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<unsigned short,30ul>>((result + 3), a2);
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
    return std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v12);
  }

  return result;
}

uint64_t *std::unique_ptr<TUnicodeDataCachePage>::reset[abi:fn200100](uint64_t *result, uint64_t a2)
{
  v2 = *result;
  *result = a2;
  if (v2)
  {
    v3 = (v2 + 1568);
    std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](&v3);
    return MEMORY[0x1865F22D0](v2, 0x1010C40E4D70334);
  }

  return result;
}

BOOL TScriptRun::NextRun(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  v5 = *(a1 + 16) + *(a1 + 8);
  if (v5 >= *a1)
  {
    v62 = *(a1 + 16) + *(a1 + 8);
    v9 = v5;
  }

  else
  {
    v6 = 0;
    v7 = *(a1 + 48);
    v8 = 2863311360;
    v9 = v5;
    while (1)
    {
      RunWithCharIndex = TLine::FindRunWithCharIndex(v7, v9, 1);
      v7 = *(a1 + 48);
      v11 = *(v7 + 16);
      if (RunWithCharIndex >= (*(v7 + 24) - v11) >> 3)
      {
        __break(1u);
LABEL_92:
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v12 = *(*(v11 + 8 * RunWithCharIndex) + 40);
      v13 = *(v12 + 304);
      if (v13 == -1)
      {
        break;
      }

      if ((v6 & 1) == 0 || (v14 = v8 == v13, v13 = v8, v14))
      {
        v9 = *(v12 + 16) + *(v12 + 8);
        v6 = 1;
        v8 = v13;
        if (v9 < *a1)
        {
          continue;
        }
      }

      goto LABEL_86;
    }

    v62 = v9;
    if (v6)
    {
LABEL_86:
      v58 = ScriptTagForScriptCode(v8);
      *(a1 + 32) = v58;
      if (v58 != 1145457748)
      {
        *(a1 + 36) = v8;
        *(a1 + 40) = 1;
      }

      *(a1 + 8) = v5;
      *(a1 + 16) = v9 - v5;
      return v5 < v9;
    }

    v4 = *a1;
  }

  v60 = v5;
  *(a1 + 24) = 0;
  if (v9 < v4)
  {
    v15 = 0;
    v16 = (a1 + 512);
    v61 = a2;
    while (1)
    {
      FullChar = TCharStreamIterator::GetFullChar((a1 + 56), &v62, 0);
      Script = uscript_getScript();
      v19 = Script;
      if (Script <= 1)
      {
        if (*(a1 + 40))
        {
          v19 = *(a1 + 36);
        }

        else if ((a2 & 0x100000000) != 0)
        {
          v19 = a2;
        }

        else
        {
          v19 = Script;
        }
      }

      IntPropertyValue = u_getIntPropertyValue(FullChar, UCHAR_BIDI_PAIRED_BRACKET_TYPE);
      v21 = IntPropertyValue;
      if (IntPropertyValue)
      {
        if (IntPropertyValue == 1)
        {
          ++*(a1 + 24);
          v23 = *(a1 + 256);
          v22 = *(a1 + 264);
          if (v23 < v22)
          {
            *v23 = FullChar;
            *(v23 + 1) = v15;
            v24 = v23 + 8;
            goto LABEL_52;
          }

          v32 = *(a1 + 248);
          v33 = v23 - v32;
          v34 = (v23 - v32) >> 3;
          v35 = v34 + 1;
          if ((v34 + 1) >> 61)
          {
            goto LABEL_92;
          }

          v36 = v22 - v32;
          if (v36 >> 2 > v35)
          {
            v35 = v36 >> 2;
          }

          if (v36 >= 0x7FFFFFFFFFFFFFF8)
          {
            v37 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v37 = v35;
          }

          if (v37)
          {
            v38 = *v16;
            v39 = *v16 + 8 * v37;
            if (v39 > v16)
            {
              if (!(v37 >> 61))
              {
                operator new();
              }

              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            *v16 = v39;
          }

          else
          {
            v38 = 0;
          }

          v40 = &v38[8 * v34];
          v41 = &v38[8 * v37];
          *v40 = FullChar;
          *(v40 + 1) = v15;
          v24 = v40 + 8;
          v42 = v38;
          memcpy(v38, v32, v33);
          v43 = *(a1 + 248);
          *(a1 + 248) = v42;
          *(a1 + 256) = v24;
          v44 = *(a1 + 264);
          *(a1 + 264) = v41;
          if (v43)
          {
            a2 = v61;
            if (a1 + 272 <= v43 && v16 > v43)
            {
              v30 = xmmword_18475A340;
              v29 = xmmword_18475AAF0;
              if (v44 == *v16)
              {
                *v16 = v43;
              }

              goto LABEL_53;
            }

            operator delete(v43);
          }

          else
          {
            a2 = v61;
          }

LABEL_52:
          v30 = xmmword_18475A340;
          v29 = xmmword_18475AAF0;
LABEL_53:
          *(a1 + 256) = v24;
          goto LABEL_54;
        }

        v25 = MEMORY[0x1865F2D50](FullChar);
        v26 = *(a1 + 248);
        v27 = *(a1 + 256);
        if (v26 != v27)
        {
          v28 = v27 - 2;
          v30 = xmmword_18475A340;
          v29 = xmmword_18475AAF0;
          while (*v28 != v25)
          {
            v31 = *(a1 + 24);
            if (v31)
            {
              *(a1 + 24) = v31 - 1;
            }

            *(a1 + 256) = v28;
            v14 = v28 == v26;
            v28 -= 2;
            if (v14)
            {
              goto LABEL_54;
            }
          }

          v19 = v28[1];
          goto LABEL_54;
        }
      }

      v30 = xmmword_18475A340;
      v29 = xmmword_18475AAF0;
LABEL_54:
      if (v15 == v19 || v15 < 2 || v19 < 2)
      {
        if (v15 <= 1 && v19 >= 2)
        {
          v47 = 8 * *(a1 + 24);
          if (v47)
          {
            v48 = 0;
            v49 = (v47 - 8) >> 3;
            v50 = vdupq_n_s64(v49);
            v51 = (*(a1 + 256) - 12);
            do
            {
              v52 = vdupq_n_s64(v48);
              v53 = vmovn_s64(vcgeq_u64(v50, vorrq_s8(v52, v30)));
              if (vuzp1_s16(v53, *v50.i8).u8[0])
              {
                v51[2] = v19;
              }

              if (vuzp1_s16(v53, *&v50).i8[2])
              {
                *v51 = v19;
              }

              if (vuzp1_s16(*&v50, vmovn_s64(vcgeq_u64(v50, vorrq_s8(v52, v29)))).i32[1])
              {
                *(v51 - 2) = v19;
                *(v51 - 4) = v19;
              }

              v48 += 4;
              v51 -= 8;
            }

            while (((v49 + 4) & 0x3FFFFFFFFFFFFFFCLL) != v48);
          }

          *(a1 + 24) = 0;
          v15 = v19;
        }
      }

      else if (!uscript_hasScript())
      {
        goto LABEL_83;
      }

      if (v21 == 2)
      {
        v55 = *(a1 + 256);
        if (*(a1 + 248) != v55)
        {
          v56 = *(a1 + 24);
          if (v56)
          {
            *(a1 + 24) = v56 - 1;
          }

          *(a1 + 256) = v55 - 8;
        }
      }

      v9 = v62 + 1;
      v62 = v9;
      if (v9 >= *a1)
      {
        goto LABEL_83;
      }
    }
  }

  v15 = 0;
LABEL_83:
  v5 = v60;
  *(a1 + 8) = v60;
  *(a1 + 16) = v9 - v60;
  v57 = ScriptTagForScriptCode(v15);
  *(a1 + 32) = v57;
  if (v57 != 1145457748)
  {
    *(a1 + 36) = v15;
    *(a1 + 40) = 1;
  }

  return v5 < v9;
}

void *TSimpleTracking::TrackRun(void *this, TRun *a2, double a3)
{
  v4 = this;
  v6 = this[26];
  v5 = this[27];
  v7 = *(v5 + 32);
  if (v7 || (v10 = *(v5 + 24)) == 0)
  {
    v8 = 0;
    v9 = v7 + 16 * this[25];
  }

  else
  {
    v9 = v10 + 8 * this[25];
    v8 = 1;
  }

  if (v6 >= 1)
  {
    v11 = 0;
    v12 = v9;
    do
    {
      v13 = v4[27];
      v14 = v4[25];
      if (*(*(v13 + 16) + 2 * v14 + 2 * v11) != -1 && (*(*(v13 + 40) + 4 * v14 + 4 * v11) & 0x20) == 0)
      {
        if (v8)
        {
          v15 = (v9 + 8 * v11);
          v16 = 0;
        }

        else
        {
          v16 = *(v12 + 8);
          v15 = v12;
        }

        v17 = *v15 + a3;
        if (v17 < 0.0)
        {
          v17 = 0.0;
        }

        this = TStorageRange::SetAdvance((v4 + 24), v11, *(&v16 - 1));
      }

      ++v11;
      v12 += 16;
    }

    while (v6 != v11);
  }

  return this;
}

void TAttributes::GetDefaultAttributes(void)::{lambda(void *)#1}::__invoke()
{
  if (qword_1ED567C30 != -1)
  {
    dispatch_once_f(&qword_1ED567C30, 0, TAttributes::GetDefaultFont(void)::{lambda(void *)#1}::__invoke);
  }

  values = qword_1ED567C00;
  keys = @"NSFont";
  v1 = CFDictionaryCreate(*MEMORY[0x1E695E480], &keys, &values, 1, MEMORY[0x1E695E528], MEMORY[0x1E695E9E8]);
  v0 = atomic_exchange(&v1, 0);

  _MergedGlobals_18 = v0;
}

CTFontRef TAttributes::GetDefaultFont(void)::{lambda(void *)#1}::__invoke(TDescriptorSource *a1)
{
  result = TDescriptorSource::CreateDefaultUserFont(a1);
  if (!result)
  {
    result = CTFontCreateWithName(0, 0.0, 0);
  }

  qword_1ED567C00 = result;
  return result;
}

CTFontRef CTFontCreateWithName(CFStringRef name, CGFloat size, const CGAffineTransform *matrix)
{
  v8 = name;
  v7 = size;
  v5 = 0xAAAAAAAAAAAAAAAALL;
  v6 = matrix;
  TCFBase_NEW<CTFont,__CFString const*&,double &,CGAffineTransform const*&,char const(&)[21]>(&v8, &v7, &v6, "CTFontCreateWithName", &v5);
  v3 = atomic_exchange(&v5, 0);

  return v3;
}

CTRunDelegateRef CTRunDelegateCreate(const CTRunDelegateCallbacks *callbacks, void *refCon)
{
  if (!callbacks || callbacks->version > 2uLL)
  {
    return 0;
  }

  if (_MergedGlobals_31 != -1)
  {
    dispatch_once_f(&_MergedGlobals_31, 0, TCFBase<TRunDelegate>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  Instance = _CFRuntimeCreateInstance();
  if (Instance)
  {
    *(Instance + 16) = CTRunDelegate::Destruct;
    *(Instance + 24) = 0;
    *(Instance + 32) = 0;
    *(Instance + 40) = Instance + 48;
    v5 = *&callbacks->getAscent;
    getWidth = callbacks->getWidth;
    *(Instance + 48) = *&callbacks->version;
    *(Instance + 64) = v5;
    *(Instance + 80) = getWidth;
    *(Instance + 88) = refCon;
  }

  v9 = Instance;
  v7 = atomic_exchange(&v9, 0);

  return v7;
}

uint64_t TCFBase<TRunDelegate>::GetTypeID(void)::{lambda(void *)#1}::__invoke()
{
  if ((atomic_load_explicit(&qword_1ED5680E8, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED5680E8))
  {
    qword_1ED5680F0 = 0;
    unk_1ED5680F8 = "CTRunDelegate";
    qword_1ED568100 = 0;
    unk_1ED568108 = 0;
    qword_1ED568110 = TCFBase<TRunDelegate>::ClassDestruct;
    qword_1ED568118 = TCFBase<TRunDelegate>::ClassEqual;
    qword_1ED568120 = TCFBase<TRunDelegate>::ClassHash;
    unk_1ED568128 = 0;
    qword_1ED568130 = TCFBase<TRunDelegate>::ClassDebug;
    unk_1ED568138 = 0;
    qword_1ED568140 = 0;
    unk_1ED568148 = 0;
    __cxa_guard_release(&qword_1ED5680E8);
  }

  result = _CFRuntimeRegisterClass();
  qword_1ED5680E0 = result;
  return result;
}

void TAttributes::HandleShadowAttribute(void *a1, uint64_t *a2)
{
  if (a1)
  {
    v4 = [a1 shadowColor];
    v5 = *a2;
    v6 = *(*a2 + 136);
    if (v4)
    {
      *(v5 + 136) = v6 | 8;

      TCFRef<__CTFont const*>::Retain((v5 + 40), a1);
    }

    else
    {
      *(v5 + 136) = v6 | 0x10;
    }
  }
}

uint64_t TAATMorphChain::ResolveFlags(TAATMorphChain *this, uint64_t a2, atomic_ullong *a3, atomic_ullong *a4, __CFString *a5)
{
  explicit = a5;
  v46 = *MEMORY[0x1E69E9840];
  if (!a5 && (*(this + 64) & 1) != 0 && !atomic_load_explicit(a3, memory_order_acquire))
  {
    if (!a4 || !atomic_load_explicit(a4 + 3, memory_order_acquire))
    {
      return *(this + 10);
    }

    goto LABEL_5;
  }

  if (a4)
  {
LABEL_5:
    explicit = atomic_load_explicit(a4 + 3, memory_order_acquire);
  }

  v37 = *MEMORY[0x1E695E738];
  if (explicit == *MEMORY[0x1E695E738])
  {
    v12 = 0;
    v13 = 43521;
    goto LABEL_47;
  }

  v38 = 0;
  if (explicit)
  {
    goto LABEL_8;
  }

  v14 = *(this + 7);
  LOBYTE(valuePtr) = -86;
  v12 = 0;
  v13 = 43521;
  if (!TFont::IsSystemUIFontAndForShaping(v14, &valuePtr) || (valuePtr & 1) == 0)
  {
    goto LABEL_46;
  }

  CopyPreferredLanguage(&valuePtr);

  explicit = atomic_load_explicit(&v38, memory_order_acquire);
  if (explicit)
  {
LABEL_8:
    v9 = *(this + 7);
    v10 = *(v9 + 408);
    p_valuePtr = 0xAAAAAAAAAAAAAAAALL;
    TBaseFont::RetainedObject(v10, 4u, 0, &p_valuePtr);
    if (!atomic_load_explicit(&p_valuePtr, memory_order_acquire) && v37 != atomic_load_explicit(&p_valuePtr, memory_order_acquire))
    {
      TAATLtagTable::TAATLtagTable(&valuePtr, v10);
      TAATLtagTable::CopyLanguageTags(&valuePtr, &v39);

      if (!atomic_load_explicit(&p_valuePtr, memory_order_acquire))
      {
        TCFRef<__CTFont const*>::Retain(&p_valuePtr, v37);
      }

      TBaseFont::SetObject(*(v9 + 408), 4u, 0, atomic_load_explicit(&p_valuePtr, memory_order_acquire));
    }

    if (v37 == atomic_load_explicit(&p_valuePtr, memory_order_acquire))
    {
      v11 = 0;
    }

    else
    {
      v11 = atomic_load_explicit(&p_valuePtr, memory_order_acquire);
    }

    valuePtr = v11;
    v15 = atomic_exchange(&valuePtr, 0);

    if (v15)
    {
      Value = CFDictionaryGetValue(v15, explicit);
      if (Value)
      {
        v17 = Value;
LABEL_27:
        LOWORD(valuePtr) = -21846;
        CFNumberGetValue(v17, kCFNumberShortType, &valuePtr);
        v13 = valuePtr + 1;
        v12 = 1;
LABEL_45:

        goto LABEL_46;
      }

      *&v18 = 0xAAAAAAAAAAAAAAAALL;
      *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v44[14] = v18;
      v44[13] = v18;
      v44[12] = v18;
      v44[11] = v18;
      v44[10] = v18;
      v44[9] = v18;
      v44[8] = v18;
      v44[7] = v18;
      v44[6] = v18;
      v44[5] = v18;
      v44[4] = v18;
      v44[3] = v18;
      v44[2] = v18;
      v44[1] = v18;
      v44[0] = v18;
      Count = CFDictionaryGetCount(v15);
      valuePtr = 0;
      v42 = 0;
      v43 = 0;
      v45 = v44;
      if (Count)
      {
        v20 = Count;
        std::vector<__CFString const*,TInlineBufferAllocator<__CFString const*,30ul>>::__vallocate[abi:fn200100](&valuePtr, Count);
        v21 = v42;
        bzero(v42, 8 * v20);
        v42 = &v21[8 * v20];
        v22 = valuePtr;
      }

      else
      {
        v22 = 0;
      }

      CFDictionaryGetKeysAndValues(v15, v22, 0);
      v23 = valuePtr;
      v24 = v42;
      if (valuePtr == v42)
      {
        goto LABEL_43;
      }

      theDict = v15;
      v25 = 0;
      v26 = 0;
      v27 = -1;
      do
      {
        v28 = *v23;
        if (CanonicalLocaleIdentifiersMatch(*v23, explicit))
        {
          if (v27 == -1)
          {
            v27 = ScriptAndLangSysFromCanonicalLanguage(explicit);
          }

          if (v27 == ScriptAndLangSysFromCanonicalLanguage(v28))
          {
            Length = CFStringGetLength(v28);
            if (Length > v26)
            {
              v26 = Length;
              v25 = v28;
            }
          }
        }

        ++v23;
      }

      while (v23 != v24);
      v15 = theDict;
      if (!v25)
      {
LABEL_43:
        p_valuePtr = &valuePtr;
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&p_valuePtr);
      }

      else
      {
        v17 = CFDictionaryGetValue(theDict, v25);
        p_valuePtr = &valuePtr;
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&p_valuePtr);
        if (v17)
        {
          goto LABEL_27;
        }
      }
    }

    v12 = 0;
    v13 = 43521;
    goto LABEL_45;
  }

  v12 = 0;
LABEL_46:

LABEL_47:
  v30 = *(this + 11);
  if (v30)
  {
    v31 = (*(this + 6) + 4);
    do
    {
      v32 = bswap32(*(v31 - 2)) >> 16;
      v33 = bswap32(*(v31 - 1)) >> 16;
      if (v32 == 27)
      {
        if ((*(this + 64) & 1) == 0 && TBaseFont::GetShapingType(*(*(this + 7) + 408)) != 3)
        {
          if (v33 > 3)
          {
            if (v33 == 5)
            {
              goto LABEL_61;
            }

            if (v33 == 4)
            {
              goto LABEL_60;
            }
          }

          else
          {
            if (!v33)
            {
              goto LABEL_61;
            }

            if (v33 == 1)
            {
LABEL_60:
              a2 = (bswap32(*v31) | a2) & bswap32(v31[1]);
              goto LABEL_61;
            }
          }
        }
      }

      else if (v32 == 39)
      {
        if (v13 == v33)
        {
          v34 = v12;
        }

        else
        {
          v34 = 0;
        }

        if (v34 == 1)
        {
          goto LABEL_60;
        }

        if (explicit == v37)
        {
          a2 = bswap32(*v31) | a2;
          goto LABEL_61;
        }
      }

      if (TFontFeatureSettingList::IndexOfAATSetting(a3, v32, v33) != -1)
      {
        goto LABEL_60;
      }

LABEL_61:
      v31 += 3;
      --v30;
    }

    while (v30);
  }

  return a2;
}

uint64_t TAATMorphChainMorx::NextChain(TAATMorphChainMorx *this, unsigned int a2)
{
  v2 = *(this + 4);
  *(this + 3) = v2;
  v3 = *(this + 1);
  v4 = *(this + 2);
  v5 = v2 + 4;
  v6 = v3 > (v2 + 3) || v5 > v4;
  if (v6)
  {
    return 0;
  }

  v8 = v2 + bswap32(v2[1]);
  *(this + 4) = v8;
  if (v8 > v4)
  {
    return 0;
  }

  v9 = &v5[3 * bswap32(v2[2])];
  *(this + 22) = v9;
  *(this + 23) = v9;
  *(this + 20) = v3;
  *(this + 21) = v4;
  *(this + 25) = *(this + 24);
  if (a2 < 3)
  {
    v62 = v2;
  }

  else
  {
    v10 = v2[3];
    v11 = bswap32(v10);
    if (v10)
    {
      if (v11 <= 1)
      {
        v12 = 1;
      }

      else
      {
        v12 = v11;
      }

      do
      {
        *(this + 22) = v9;
        v13 = v9 + 2;
        if (v3 > (v9 + 2) || (v9 + 3) > v4)
        {
          break;
        }

        v9 = (v9 + bswap32(*v9));
        *(this + 23) = v9;
        if (v9 > v4)
        {
          break;
        }

        *(this + 20) = bswap32(*v13);
        --v12;
      }

      while (v12);
    }

    if (v2 <= v9)
    {
      v15 = &v9[v11];
      if (v15 >= v9 && v15 <= v8)
      {
        goto LABEL_32;
      }
    }

    v16 = (v9 + 1) > v8 || v2 > v9;
    v17 = (v8 - v9) >> 2;
    if (v16)
    {
      v17 = 0;
    }

    if (v17 == v11)
    {
LABEL_32:
      GlyphCount = TBaseFont::GetGlyphCount(*(*(this + 7) + 408));
      if (GlyphCount <= 0x10000)
      {
        v19 = (GlyphCount + 7) >> 3;
      }

      else
      {
        v19 = 0x2000;
      }

      v20 = *(this + 24);
      if (v11 > (*(this + 26) - v20) >> 3)
      {
        v70 = 0xAAAAAAAAAAAAAAAALL;
        *&v21 = 0xAAAAAAAAAAAAAAAALL;
        *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v68 = v21;
        v69 = v21;
        std::__split_buffer<unsigned char const*,TInlineBufferAllocator<unsigned char const*,48ul> &>::__split_buffer(&v68, v11, (*(this + 25) - v20) >> 3, this + 216);
        v22 = *(this + 24);
        v23 = *(this + 25) - v22;
        v24 = *(&v68 + 1) - v23;
        memcpy((*(&v68 + 1) - v23), v22, v23);
        v25 = *(this + 24);
        *(this + 24) = v24;
        v26 = *(this + 26);
        *(this + 200) = v69;
        *&v69 = v25;
        *(&v69 + 1) = v26;
        *&v68 = v25;
        *(&v68 + 1) = v25;
        std::__split_buffer<unsigned char const*,TInlineBufferAllocator<unsigned char const*,48ul> &>::~__split_buffer(&v68);
      }

      if (v10)
      {
        v27 = 4 * v11;
        v28 = v9;
        do
        {
          v29 = bswap32(*v28);
          if (v29 + 1 > 1)
          {
            v33 = v9 + v29;
            v34 = *(this + 3);
            v35 = *(this + 4);
            v36 = &v33[v19] <= v35;
            v6 = v34 > v33;
            v37 = v34 <= v33;
            if (v6)
            {
              v36 = 0;
            }

            v38 = &v33[v19] >= v33 && v36;
            v39 = (v33 + 1) <= v35;
            v40 = v35 - v33;
            if (v37 && v39)
            {
              v41 = v40;
            }

            else
            {
              v41 = 0;
            }

            if (!v38 && v41 != v19)
            {
              *(this + 25) = *(this + 24);
              break;
            }

            v42 = *(this + 25);
            v43 = *(this + 26);
            if (v42 >= v43)
            {
              v70 = 0xAAAAAAAAAAAAAAAALL;
              *&v50 = 0xAAAAAAAAAAAAAAAALL;
              *(&v50 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v68 = v50;
              v69 = v50;
              v51 = *(this + 24);
              v52 = (v42 - v51) >> 3;
              v53 = v52 + 1;
              if ((v52 + 1) >> 61)
              {
LABEL_79:
                std::__throw_bad_array_new_length[abi:fn200100]();
              }

              v54 = v43 - v51;
              if (v54 >> 2 > v53)
              {
                v53 = v54 >> 2;
              }

              if (v54 >= 0x7FFFFFFFFFFFFFF8)
              {
                v55 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v55 = v53;
              }

              std::__split_buffer<unsigned char const*,TInlineBufferAllocator<unsigned char const*,48ul> &>::__split_buffer(&v68, v55, v52, this + 216);
              *v69 = v33;
              goto LABEL_63;
            }

            *v42 = v33;
            v32 = v42 + 1;
          }

          else
          {
            v30 = *(this + 25);
            v31 = *(this + 26);
            if (v30 >= v31)
            {
              v70 = 0xAAAAAAAAAAAAAAAALL;
              *&v44 = 0xAAAAAAAAAAAAAAAALL;
              *(&v44 + 1) = 0xAAAAAAAAAAAAAAAALL;
              v68 = v44;
              v69 = v44;
              v45 = *(this + 24);
              v46 = (v30 - v45) >> 3;
              v47 = v46 + 1;
              if ((v46 + 1) >> 61)
              {
                goto LABEL_79;
              }

              v48 = v31 - v45;
              if (v48 >> 2 > v47)
              {
                v47 = v48 >> 2;
              }

              if (v48 >= 0x7FFFFFFFFFFFFFF8)
              {
                v49 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v49 = v47;
              }

              std::__split_buffer<unsigned char const*,TInlineBufferAllocator<unsigned char const*,48ul> &>::__split_buffer(&v68, v49, v46, this + 216);
              *v69 = 0;
LABEL_63:
              *&v69 = v69 + 8;
              v56 = *(this + 24);
              v57 = *(this + 25) - v56;
              v58 = *(&v68 + 1) - v57;
              memcpy((*(&v68 + 1) - v57), v56, v57);
              v59 = *(this + 24);
              *(this + 24) = v58;
              v60 = *(this + 26);
              v67 = v69;
              *(this + 200) = v69;
              *&v69 = v59;
              *(&v69 + 1) = v60;
              *&v68 = v59;
              *(&v68 + 1) = v59;
              std::__split_buffer<unsigned char const*,TInlineBufferAllocator<unsigned char const*,48ul> &>::~__split_buffer(&v68);
              v32 = v67;
              goto LABEL_64;
            }

            *v30 = 0;
            v32 = v30 + 1;
          }

LABEL_64:
          *(this + 25) = v32;
          ++v28;
          v27 -= 4;
        }

        while (v27);
      }
    }

    v61 = &v5[3 * bswap32(v2[2])];
    *(this + 22) = v61;
    *(this + 23) = v61;
    *(this + 10) = *(this + 8);
    v62 = *(this + 3);
    v8 = *(this + 4);
  }

  *(this + 10) = bswap32(*v2);
  if (v62 > v5 || ((LODWORD(v63) = bswap32(v2[2]), v64 = &v5[3 * v63], v64 >= v5) ? (v65 = v64 > v8) : (v65 = 1), v65))
  {
    LODWORD(v63) = 0;
    if (v62 <= v5 && (v2 + 7) <= v8)
    {
      v63 = (v8 - v5) / 0xC;
    }
  }

  *(this + 11) = v63;
  *(this + 6) = v5;
  return 1;
}

uint64_t TAATMorphSubtableMorx::NextSubtable(TAATMorphSubtableMorx *this)
{
  v1 = *(this + 14);
  *(this + 13) = v1;
  v2 = v1 + 2;
  v3 = *(this + 12);
  if (*(this + 11) > (v1 + 2) || (v1 + 3) > v3)
  {
    return 0;
  }

  v5 = v1 + bswap32(*v1);
  *(this + 14) = v5;
  if (v5 > v3)
  {
    return 0;
  }

  *(this + 2) = bswap32(*v2);
  return 1;
}

uint64_t TAATMorphSubtableMorx::AddShapingGlyphs(uint64_t a1, uint64_t a2)
{
  v138 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 104);
  v5 = bswap32(*(v4 + 4));
  if ((v5 & 0x20000000) == 0 && *(a1 + 80) != v5 >> 31)
  {
    return 1;
  }

  v6 = 0;
  if (v5 > 1u)
  {
    if (v5 != 2)
    {
      if (v5 != 4)
      {
        if (v5 != 5)
        {
          return v6;
        }

        v7 = *(a1 + 112);
        if (v4 + 32 > v7)
        {
          return 0;
        }

        v8 = v4 + 12;
        v9 = (v4 + 12 + bswap32(*(v4 + 16)));
        if (&v9->fsHeader > v7)
        {
          return 0;
        }

        v6 = 0;
        v10 = bswap32(v9->format) >> 16;
        if (v10 > 5)
        {
          if (v10 != 6)
          {
            if (v10 != 10)
            {
              if (v10 != 8)
              {
                return v6;
              }

              p_searchRange = &v9->fsHeader.segment.binSearch.searchRange;
              if (v9->fsHeader.trimmedArray.valueArray <= v7)
              {
                v49 = bswap32(v9->fsHeader.segment.binSearch.nUnits) >> 16;
                v50 = &p_searchRange[v49];
                v51 = v9->fsHeader.vector.values <= v7 ? (v7 - p_searchRange) >> 1 : 0;
                v52 = v50 <= v7 && v50 >= p_searchRange;
                if (v52 || v51 == v49)
                {
LABEL_187:
                  v97 = bswap32(*(v4 + 12));
                  v98 = v8 + bswap32(*(v4 + 20));
                  v99 = v8 + bswap32(*(v4 + 24));
                  if (v97 < 2)
                  {
LABEL_188:
                    LOWORD(v100) = 0;
                    goto LABEL_196;
                  }

                  LOWORD(v100) = 0;
                  if (v4 <= v98 + 2 && v98 + 4 <= v7)
                  {
                    v101 = (v99 + 8 * (bswap32(*(v98 + 2)) >> 16));
                    if (v4 > v101 || v101 + 4 > v7)
                    {
                      goto LABEL_188;
                    }

                    v100 = bswap32(*v101) >> 16;
                  }

LABEL_196:
                  v113 = TAATLookupTable::BadTable;
                  v114 = 0;
                  v115 = 0;
                  v116 = -1;
                  TAATLookupTable::SetTable(&v113, v9, v7);
                  v117 = a1;
                  v118 = v97;
                  v119 = v98;
                  v120 = v99;
                  std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v121, a2);
                  v121[16] = v100;
                  operator new();
                }
              }

              return 0;
            }

            values = v9->fsHeader.vector.values;
            if (v9->fsHeader.vector.values > v7)
            {
              return 0;
            }

            v70 = bswap32(v9->fsHeader.theArray.lookupValues[0]) >> 16;
            searchRange = v9->fsHeader.segment.binSearch.searchRange;
LABEL_183:
            v95 = &values[(bswap32(searchRange) >> 16) * v70];
            if (v95 >= values && v95 <= v7)
            {
              goto LABEL_187;
            }

            return 0;
          }
        }

        else
        {
          if (!v10)
          {
            goto LABEL_187;
          }

          if (v10 != 2 && v10 != 4)
          {
            return v6;
          }
        }

        if (v9->fsHeader.trimmedArray.valueArray > v7)
        {
          return 0;
        }

        values = &v9->fsHeader.vector + 10;
        v70 = bswap32(v9->fsHeader.theArray.lookupValues[0]) >> 16;
        searchRange = v9->fsHeader.segment.binSearch.nUnits;
        goto LABEL_183;
      }

      v22 = *(a1 + 112);
      if (v4 + 14 > v22)
      {
        return 0;
      }

      v6 = 0;
      v23 = bswap32(*(v4 + 12)) >> 16;
      if (v23 > 5)
      {
        if (v23 != 6)
        {
          if (v23 != 10)
          {
            if (v23 != 8)
            {
              return v6;
            }

            v30 = v4 + 18;
            if (v4 + 18 > v22)
            {
              return 0;
            }

            v31 = bswap32(*(v4 + 16)) >> 16;
            v32 = v30 + 2 * v31;
            v33 = v4 + 20 <= v22 ? (v22 - v30) >> 1 : 0;
            v34 = v32 <= v22 && v32 >= v30;
            if (!v34 && v33 != v31)
            {
              return 0;
            }

LABEL_144:
            v113 = TAATLookupTable::BadTable;
            v114 = 0;
            v115 = 0;
            v116 = -1;
            TAATLookupTable::SetTable(&v113, (v4 + 12), v22);
            std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v122, a2);
            operator new();
          }

          v60 = v4 + 20;
          if (v4 + 20 > v22)
          {
            return 0;
          }

          v61 = bswap32(*(v4 + 14)) >> 16;
          v62 = *(v4 + 18);
LABEL_140:
          v75 = v60 + (bswap32(v62) >> 16) * v61;
          if (v75 < v60 || v75 > v22)
          {
            return 0;
          }

          goto LABEL_144;
        }
      }

      else
      {
        if (!v23)
        {
          goto LABEL_144;
        }

        if (v23 != 2 && v23 != 4)
        {
          return v6;
        }
      }

      if (v4 + 18 > v22)
      {
        return 0;
      }

      v60 = v4 + 24;
      v61 = bswap32(*(v4 + 14)) >> 16;
      v62 = *(v4 + 16);
      goto LABEL_140;
    }

    v17 = *(a1 + 112);
    if (v4 + 40 > v17)
    {
      return 0;
    }

    v18 = v4 + 12;
    v19 = (v4 + 12 + bswap32(*(v4 + 16)));
    if (&v19->fsHeader > v17)
    {
      return 0;
    }

    v6 = 0;
    v20 = bswap32(v19->format) >> 16;
    if (v20 > 5)
    {
      if (v20 != 6)
      {
        if (v20 != 10)
        {
          if (v20 != 8)
          {
            return v6;
          }

          v36 = &v19->fsHeader.segment.binSearch.searchRange;
          if (v19->fsHeader.trimmedArray.valueArray > v17)
          {
            return 0;
          }

          v37 = bswap32(v19->fsHeader.segment.binSearch.nUnits) >> 16;
          v38 = &v36[v37];
          v39 = v19->fsHeader.vector.values <= v17 ? (v17 - v36) >> 1 : 0;
          v40 = v38 <= v17 && v38 >= v36;
          if (!v40 && v39 != v37)
          {
            return 0;
          }

LABEL_151:
          v79 = bswap32(*(v4 + 12));
          v80 = v18 + bswap32(*(v4 + 20));
          v81 = v18 + bswap32(*(v4 + 24));
          if (v79 < 2 || (v4 <= v80 + 2 ? (v83 = v80 + 4 > v17) : (v83 = 1), v83 || ((v84 = (v81 + 6 * (bswap32(*(v80 + 2)) >> 16)), v4 <= v84) ? (v85 = v84 + 3 > v17) : (v85 = 1), v85)))
          {
            LOWORD(v82) = 0;
          }

          else
          {
            v82 = bswap32(*v84) >> 16;
          }

          v113 = TAATLookupTable::BadTable;
          v114 = 0;
          v115 = 0;
          v116 = -1;
          TAATLookupTable::SetTable(&v113, v19, v17);
          v123 = a1;
          v124 = v79;
          v125 = v80;
          v126 = v81;
          std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v127, a2);
          v127[16] = v82;
          operator new();
        }

        v63 = v19->fsHeader.vector.values;
        if (v19->fsHeader.vector.values > v17)
        {
          return 0;
        }

        v64 = bswap32(v19->fsHeader.theArray.lookupValues[0]) >> 16;
        nUnits = v19->fsHeader.segment.binSearch.searchRange;
LABEL_147:
        v77 = &v63[(bswap32(nUnits) >> 16) * v64];
        if (v77 < v63 || v77 > v17)
        {
          return 0;
        }

        goto LABEL_151;
      }
    }

    else
    {
      if (!v20)
      {
        goto LABEL_151;
      }

      if (v20 != 2 && v20 != 4)
      {
        return v6;
      }
    }

    if (v19->fsHeader.trimmedArray.valueArray > v17)
    {
      return 0;
    }

    v63 = &v19->fsHeader.vector + 10;
    v64 = bswap32(v19->fsHeader.theArray.lookupValues[0]) >> 16;
    nUnits = v19->fsHeader.segment.binSearch.nUnits;
    goto LABEL_147;
  }

  if (v5)
  {
    v12 = *(a1 + 112);
    if (v4 + 32 > v12)
    {
      return 0;
    }

    v13 = v4 + 12;
    v14 = (v4 + 12 + bswap32(*(v4 + 16)));
    if (&v14->fsHeader > v12)
    {
      return 0;
    }

    v6 = 0;
    v15 = bswap32(v14->format) >> 16;
    if (v15 > 5)
    {
      if (v15 != 6)
      {
        if (v15 != 10)
        {
          if (v15 != 8)
          {
            return v6;
          }

          v54 = &v14->fsHeader.segment.binSearch.searchRange;
          if (v14->fsHeader.trimmedArray.valueArray > v12)
          {
            return 0;
          }

          v55 = bswap32(v14->fsHeader.segment.binSearch.nUnits) >> 16;
          v56 = &v54[v55];
          v57 = v14->fsHeader.vector.values <= v12 ? (v12 - v54) >> 1 : 0;
          v58 = v56 <= v12 && v56 >= v54;
          if (!v58 && v57 != v55)
          {
            return 0;
          }

LABEL_203:
          v105 = bswap32(*(v4 + 12));
          v106 = v13 + bswap32(*(v4 + 20));
          v107 = v13 + bswap32(*(v4 + 24));
          if (v105 < 2 || (v4 <= v106 + 2 ? (v109 = v106 + 4 > v12) : (v109 = 1), v109 || ((v110 = (v107 + 8 * (bswap32(*(v106 + 2)) >> 16)), v4 <= v110) ? (v111 = v110 + 4 > v12) : (v111 = 1), v111)))
          {
            LOWORD(v108) = 0;
          }

          else
          {
            v108 = bswap32(*v110) >> 16;
          }

          v113 = TAATLookupTable::BadTable;
          v114 = 0;
          v115 = 0;
          v116 = -1;
          TAATLookupTable::SetTable(&v113, v14, v12);
          v128 = a1;
          v129 = v105;
          v130 = v106;
          v131 = v107;
          std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v132, a2);
          v132[16] = v108;
          operator new();
        }

        v72 = v14->fsHeader.vector.values;
        if (v14->fsHeader.vector.values > v12)
        {
          return 0;
        }

        v73 = bswap32(v14->fsHeader.theArray.lookupValues[0]) >> 16;
        v74 = v14->fsHeader.segment.binSearch.searchRange;
LABEL_199:
        v103 = &v72[(bswap32(v74) >> 16) * v73];
        if (v103 < v72 || v103 > v12)
        {
          return 0;
        }

        goto LABEL_203;
      }
    }

    else
    {
      if (!v15)
      {
        goto LABEL_203;
      }

      if (v15 != 2 && v15 != 4)
      {
        return v6;
      }
    }

    if (v14->fsHeader.trimmedArray.valueArray > v12)
    {
      return 0;
    }

    v72 = &v14->fsHeader.vector + 10;
    v73 = bswap32(v14->fsHeader.theArray.lookupValues[0]) >> 16;
    v74 = v14->fsHeader.segment.binSearch.nUnits;
    goto LABEL_199;
  }

  v25 = *(a1 + 112);
  if (v4 + 28 > v25)
  {
    return 0;
  }

  v26 = v4 + 12;
  v27 = (v4 + 12 + bswap32(*(v4 + 16)));
  if (&v27->fsHeader > v25)
  {
    return 0;
  }

  v6 = 0;
  v28 = bswap32(v27->format) >> 16;
  if (v28 > 5)
  {
    if (v28 != 6)
    {
      if (v28 != 10)
      {
        if (v28 != 8)
        {
          return v6;
        }

        v42 = &v27->fsHeader.segment.binSearch.searchRange;
        if (v27->fsHeader.trimmedArray.valueArray > v25)
        {
          return 0;
        }

        v43 = bswap32(v27->fsHeader.segment.binSearch.nUnits) >> 16;
        v44 = &v42[v43];
        v45 = v27->fsHeader.vector.values <= v25 ? (v25 - v42) >> 1 : 0;
        v46 = v44 <= v25 && v44 >= v42;
        if (!v46 && v45 != v43)
        {
          return 0;
        }

LABEL_169:
        v88 = bswap32(*(v4 + 12));
        v89 = v26 + bswap32(*(v4 + 20));
        v90 = v26 + bswap32(*(v4 + 24));
        if (v88 < 2 || (v4 <= v89 + 2 ? (v92 = v89 + 4 > v25) : (v92 = 1), v92 || ((v93 = (v90 + 4 * (bswap32(*(v89 + 2)) >> 16)), v4 <= v93) ? (v94 = v93 + 2 > v25) : (v94 = 1), v94)))
        {
          LOWORD(v91) = 0;
        }

        else
        {
          v91 = bswap32(*v93) >> 16;
        }

        v113 = TAATLookupTable::BadTable;
        v114 = 0;
        v115 = 0;
        v116 = -1;
        TAATLookupTable::SetTable(&v113, v27, v25);
        v133 = a1;
        v134 = v88;
        v135 = v89;
        v136 = v90;
        std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v137, a2);
        v137[16] = v91;
        operator new();
      }

      v66 = v27->fsHeader.vector.values;
      if (v27->fsHeader.vector.values > v25)
      {
        return 0;
      }

      v67 = bswap32(v27->fsHeader.theArray.lookupValues[0]) >> 16;
      v68 = v27->fsHeader.segment.binSearch.searchRange;
LABEL_165:
      v86 = &v66[(bswap32(v68) >> 16) * v67];
      if (v86 < v66 || v86 > v25)
      {
        return 0;
      }

      goto LABEL_169;
    }

LABEL_132:
    if (v27->fsHeader.trimmedArray.valueArray > v25)
    {
      return 0;
    }

    v66 = &v27->fsHeader.vector + 10;
    v67 = bswap32(v27->fsHeader.theArray.lookupValues[0]) >> 16;
    v68 = v27->fsHeader.segment.binSearch.nUnits;
    goto LABEL_165;
  }

  if (!v28)
  {
    goto LABEL_169;
  }

  if (v28 == 2 || v28 == 4)
  {
    goto LABEL_132;
  }

  return v6;
}

uint64_t TAATLookupTable::SetTable(uint64_t this, const SFNTLookupTable *a2, SFNTLookupTable *a3)
{
  p_fsHeader = &a2->fsHeader;
  if (&a2->fsHeader > a3)
  {
    goto LABEL_67;
  }

  v4 = bswap32(a2->format) >> 16;
  if (v4 <= 5)
  {
    if (!v4)
    {
      goto LABEL_38;
    }

    v5 = v4 == 2 || v4 == 4;
    if (!v5 || a2->fsHeader.trimmedArray.valueArray > a3)
    {
      goto LABEL_67;
    }

    goto LABEL_31;
  }

  if (v4 == 6)
  {
    if (a2->fsHeader.trimmedArray.valueArray > a3)
    {
      goto LABEL_67;
    }

LABEL_31:
    values = &a2->fsHeader.vector + 10;
    v15 = bswap32(a2->fsHeader.theArray.lookupValues[0]) >> 16;
    nUnits = a2->fsHeader.segment.binSearch.nUnits;
    goto LABEL_34;
  }

  if (v4 != 10)
  {
    v5 = v4 == 8;
    p_searchRange = &a2->fsHeader.segment.binSearch.searchRange;
    if (!v5 || p_searchRange > a3)
    {
      goto LABEL_67;
    }

    v9 = bswap32(a2->fsHeader.segment.binSearch.nUnits) >> 16;
    v10 = &p_searchRange[v9];
    v11 = a2->fsHeader.vector.values <= a3 ? (a3 - p_searchRange) >> 1 : 0;
    v12 = v10 <= a3 && v10 >= p_searchRange;
    if (!v12 && v11 != v9)
    {
      goto LABEL_67;
    }

    goto LABEL_38;
  }

  values = a2->fsHeader.vector.values;
  if (a2->fsHeader.vector.values > a3)
  {
    goto LABEL_67;
  }

  v15 = bswap32(a2->fsHeader.theArray.lookupValues[0]) >> 16;
  nUnits = a2->fsHeader.segment.binSearch.searchRange;
LABEL_34:
  v17 = &values[(bswap32(nUnits) >> 16) * v15];
  if (v17 < values || v17 > a3)
  {
    goto LABEL_67;
  }

LABEL_38:
  *(this + 40) = a3;
  v19 = bswap32(a2->format) >> 16;
  *(this + 48) = v19;
  if (v19 > 5)
  {
    if (v19 == 6)
    {
      *(this + 16) = a2;
      v20 = TAATLookupTable::LookupSingleTable;
      goto LABEL_72;
    }

    if (v19 != 8)
    {
      if (v19 == 10)
      {
        *(this + 16) = p_fsHeader;
        v21 = p_fsHeader->theArray.lookupValues[0];
        v22 = __rev16(v21);
        *(this + 24) = v22;
        if (v21)
        {
          v23 = bswap32(a2->fsHeader.segment.binSearch.nUnits) >> 16;
          *(this + 32) = v23;
          if (a2->fsHeader.segment.binSearch.searchRange)
          {
            v24 = &a2->fsHeader.vector.values[v22 * __rev16(a2->fsHeader.segment.binSearch.searchRange)];
            if (a3 < v24)
            {
              v24 = a3;
            }

            v25 = v24 - a2->fsHeader.vector.values;
            if (v25 < v22)
            {
              goto LABEL_67;
            }

            v26 = v25 / v22 - 1;
            v12 = __CFADD__(v26, v23);
            v27 = v26 + v23;
            *(this + 34) = v27;
            if (v12 || v27 >> 16)
            {
              goto LABEL_67;
            }
          }

          else
          {
            *(this + 32) = 0xFFFF;
          }

          v20 = TAATLookupTable::LookupVector;
          goto LABEL_72;
        }
      }

      goto LABEL_67;
    }

    *(this + 16) = p_fsHeader;
    v29 = bswap32(a2->fsHeader.theArray.lookupValues[0]) >> 16;
    *(this + 24) = v29;
    if (a2->fsHeader.segment.binSearch.nUnits)
    {
      v30 = __rev16(a2->fsHeader.segment.binSearch.nUnits);
      v31 = &a2->fsHeader.segment.binSearch.searchRange;
      v32 = &a2->fsHeader.segment.binSearch.searchRange + v30;
      if (v32 < &a2->fsHeader.segment.binSearch.searchRange || v32 > a3)
      {
        if (a2->fsHeader.vector.values > a3 || (a3 - v31) < 2)
        {
          goto LABEL_67;
        }

        v30 = (a3 - v31) >> 1;
      }

      v33 = v30 + v29 - 1;
      *(this + 26) = v33;
      if (v33 >> 16)
      {
LABEL_67:
        *(this + 8) = 0;
        *(this + 16) = a2;
        *this = TAATLookupTable::BadTable;
        *(this + 48) = -1;
        return this;
      }
    }

    else
    {
      *(this + 24) = 0xFFFF;
    }

    v20 = TAATLookupTable::LookupTrimmedArray;
    goto LABEL_72;
  }

  if (!v19)
  {
    if (&a2->fsHeader.segment.binSearch.nUnits <= a3)
    {
      v28 = (a3 - p_fsHeader) >> 1;
    }

    else
    {
      v28 = 0;
    }

    *(this + 16) = p_fsHeader;
    *(this + 24) = v28;
    v20 = TAATLookupTable::LookupSimpleArray;
    goto LABEL_72;
  }

  if (v19 == 2)
  {
    *(this + 16) = a2;
    v20 = TAATLookupTable::LookupSegmentSingle;
    goto LABEL_72;
  }

  if (v19 != 4)
  {
    goto LABEL_67;
  }

  *(this + 16) = a2;
  v20 = TAATLookupTable::LookupSegmentArray;
LABEL_72:
  *this = v20;
  *(this + 8) = 0;
  return this;
}

uint64_t TAATLookupTable::Iterate(uint64_t a1, uint64_t a2)
{
  result = 0;
  v14 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 48);
  if (v4 <= 3)
  {
    if (!*(a1 + 48))
    {
      std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::__value_func[abi:fn200100](v13, a2);
      operator new();
    }

    if (v4 == 2)
    {
      std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::__value_func[abi:fn200100](v12, a2);
      operator new();
    }
  }

  else
  {
    switch(v4)
    {
      case 4u:
        v11 = 0;
        std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::__value_func[abi:fn200100](v8, a2);
        v5 = *(a1 + 40);
        v9 = *(a1 + 16);
        v10 = v5;
        operator new();
      case 6u:
        std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::__value_func[abi:fn200100](v7, a2);
        operator new();
      case 8u:
        std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::__value_func[abi:fn200100](v6, a2);
        operator new();
    }
  }

  return result;
}

uint64_t TAATLookupTable::IterateSingleTable(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (*(v2 + 4))
  {
    v4 = result;
    v5 = 0;
    v6 = __rev16(*(v2 + 4));
    v7 = bswap32(*(v2 + 2)) >> 16;
    v8 = v2 + 16;
    do
    {
      if (v8 > *(v4 + 40))
      {
        break;
      }

      result = std::function<void ()(unsigned short,unsigned short const*)>::operator()(a2, bswap32(*(v8 - 4)) >> 16, v8 - 2);
      ++v5;
      v8 += v7;
    }

    while (v6 > v5);
  }

  return result;
}

uint64_t std::function<void ()(unsigned short,unsigned short const*)>::operator()(uint64_t a1, __int16 a2, uint64_t a3)
{
  v7 = a2;
  v6 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v7, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:fn200100]();
  return std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#2},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#2}>,void ()(unsigned short,unsigned short const*)>::operator()(v5);
}

BOOL _CTFontManagerRegisterActionFontsForURLs(const __CFArray *a1, int a2, int a3, void *a4)
{
  if (a1 && CFArrayGetCount(a1))
  {
    v27 = a4;
    if (a2)
    {
      EnsureGSFontInitialized();
      if (a2 != 1)
      {
        CFLog();
        v11 = 0;
        v12 = 307;
        goto LABEL_13;
      }
    }

    else
    {
      if (_CTFontManagerRegisterActionFontsForURLs(__CFArray const*,CTFontManagerScope,BOOL,Action,__CFArray const**)::logOnce != -1)
      {
        dispatch_once(&_CTFontManagerRegisterActionFontsForURLs(__CFArray const*,CTFontManagerScope,BOOL,Action,__CFArray const**)::logOnce, &__block_literal_global_10);
      }

      EnsureGSFontInitialized();
    }

    v12 = 0;
    v11 = 1;
LABEL_13:
    v13 = *MEMORY[0x1E695E480];
    v14 = MEMORY[0x1E695E9C0];
    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    v15 = CFArrayCreateMutable(v13, 0, v14);
    if (v11)
    {
      Count = CFArrayGetCount(a1);
      if (!Count)
      {
        v10 = 1;
LABEL_31:
        if (CFArrayGetCount(v15) >= 1)
        {
          if (a3)
          {
            v24 = v15;
            v25 = 0;
          }

          else
          {
            v24 = 0;
            v25 = v15;
          }

          CTFontManagerInstalledFontsChanged(v24, v25);
        }

        return v10;
      }

      v17 = Count;
      v12 = 0;
      for (i = 0; i != v17; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
        if (a3 == 1)
        {
          v20 = GSFontRegisterURL();
        }

        else
        {
          v20 = GSFontUnregisterURL();
        }

        v21 = v20;
        if (v20)
        {
          v29 = 0xAAAAAAAAAAAAAAAALL;
          values = ValueAtIndex;
          v22 = CFArrayCreate(v13, &values, 1, MEMORY[0x1E695E9C0]);
          CreateErrorForFailureToActOnFontURLs(&v29, a3, v22, v21);

          v23 = atomic_load_explicit(&v29, memory_order_acquire);
          CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), v23);

          if (!v12)
          {
            v12 = v21;
          }
        }

        else
        {
          CFArrayAppendValue(v15, ValueAtIndex);
        }
      }
    }

    else
    {
      CreateErrorForFailureToActOnFontURLs(&v28, a3, a1, v12);
      CFArrayAppendValue(atomic_load_explicit(&Mutable, memory_order_acquire), atomic_load_explicit(&v28, memory_order_acquire));
    }

    v10 = v12 == 0;
    if (v27 && v12)
    {
      v10 = 0;
      *v27 = atomic_exchange(&Mutable, 0);
    }

    goto LABEL_31;
  }

  if (a4)
  {
    v8 = *MEMORY[0x1E695E480];
    v9 = CFErrorCreate(*MEMORY[0x1E695E480], *MEMORY[0x1E695E640], 22, 0);
    values = v9;
    Mutable = CFArrayCreate(v8, &values, 1, MEMORY[0x1E695E9C0]);
    *a4 = atomic_exchange(&Mutable, 0);
  }

  return 0;
}

void std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#2},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#2}>,void ()(unsigned short,unsigned short const*)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned short,unsigned short const*)>::~__value_func[abi:fn200100](uint64_t a1)
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

BOOL _CTFontManagerRegisterActionFontsForURL(void *a1, int a2, int a3, void *a4)
{
  v5 = MEMORY[0x1E695E480];
  if (a1)
  {
    values = a1;
    v8 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
    v9 = v8;
    if (!v8)
    {
      v10 = 0;
      v11 = 12;
      goto LABEL_14;
    }

    v18 = 0;
    v19 = 0;
    values = &v19;
    v10 = _CTFontManagerRegisterActionFontsForURLs(v8, a2, a3, &v18);

    v11 = 0;
    if (a4 && !v10)
    {
      v12 = atomic_load_explicit(&v19, memory_order_acquire);
      if (v12)
      {
        v13 = v12;
        Count = CFArrayGetCount(v12);

        if (Count)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(&v19, memory_order_acquire), 0);
          v11 = 0;
          *a4 = CFRetain(ValueAtIndex);
          goto LABEL_13;
        }
      }

      else
      {
      }

      CFLog();
      v11 = 22;
    }

LABEL_13:

LABEL_14:
    if (!a4)
    {
      return v10;
    }

    goto LABEL_15;
  }

  v10 = 0;
  v11 = 22;
  if (!a4)
  {
    return v10;
  }

LABEL_15:
  if (v11)
  {
    *a4 = CFErrorCreate(*v5, *MEMORY[0x1E695E640], v11, 0);
  }

  return v10;
}

void CTFontManagerInstalledFontsChanged(const void *a1, CFArrayRef theArray)
{
  atomic_fetch_add_explicit(&TGenerationSeed::sGeneration, 1u, memory_order_relaxed);
  if (theArray)
  {
    Count = CFArrayGetCount(theArray);
    if (Count)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
        TDescriptorSource::TDescriptorSource(&Mutable);
        TDescriptorSource::PurgeFromCaches(&Mutable, ValueAtIndex);
      }
    }
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v8 = atomic_exchange(&Mutable, 0);

  if (v8)
  {
    if (a1)
    {
      CFDictionaryAddValue(v8, @"CTFontManagerAvailableFontURLsAdded", a1);
    }

    if (theArray)
    {
      CFDictionaryAddValue(v8, @"CTFontManagerAvailableFontURLsRemoved", theArray);
    }

    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = __CTFontManagerInstalledFontsChanged_block_invoke;
    v9[3] = &__block_descriptor_40_e5_v8__0l;
    v9[4] = v8;
    dispatch_async(MEMORY[0x1E69E96A0], v9);
  }
}

void TLRUCacheImp<TRequestCacheNode,16ul>::RemoveAll(uint64_t a1)
{
  *a1 = TGenerationSeed::sGeneration;
  v2 = (a1 + 24);
  v12[0] = &unk_1EF257FE0;
  v12[1] = 0;
  *v13 = 0u;
  *v14 = 0u;
  v3 = -16;
  do
  {
    v2 = TRequestCacheNode::operator=(v2, v12) + 6;
  }

  while (!__CFADD__(v3++, 1));
  v12[0] = &unk_1EF257FE0;

  *(a1 + 8) = xmmword_18475CCF0;
  v5 = xmmword_18475A340;
  v6 = (a1 + 80);
  v7 = 16;
  v8 = vdupq_n_s64(0xFuLL);
  v9 = vdupq_n_s64(1uLL);
  v10 = vdupq_n_s64(2uLL);
  do
  {
    v11 = vaddq_s64(v5, v9);
    if (vmovn_s64(vcgtq_u64(v8, v5)).u8[0])
    {
      *(v6 - 6) = v11.i64[0];
    }

    if (vmovn_s64(vcgtq_u64(vdupq_n_s64(0xFuLL), *&v5)).i32[1])
    {
      *v6 = v11.i64[1];
    }

    v5 = vaddq_s64(v5, v10);
    v6 += 12;
    v7 -= 2;
  }

  while (v7);
  *(a1 + 752) = 0;
}

uint64_t TBaseFont::CalculateFontMetrics@<X0>(TBaseFont *this@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(this);
  FontBBox = CGFontGetFontBBox(InitializedGraphicsFont);
  v8 = (*(*this + 552))(this, FontBBox.origin, *&FontBBox.origin.y, FontBBox.size, *&FontBBox.size.height);
  v10 = v9;
  v12 = v11;
  v14 = v13;
  CapHeight = CGFontGetCapHeight(InitializedGraphicsFont);
  if (a2)
  {
    VMetrics = CGFontGetVMetrics();
  }

  else
  {
    VMetrics = CGFontGetHMetrics();
  }

  v17 = VMetrics;
  result = CGFontGetUnitsPerEm(InitializedGraphicsFont);
  *a3 = __const__ZL17StrikeMetricsFromPK14CGFontHMetricsj6CGRectd_result;
  *(a3 + 16) = unk_18477AD20;
  *(a3 + 32) = xmmword_18477AD30;
  *(a3 + 48) = unk_18477AD40;
  *(a3 + 64) = xmmword_18477AD50;
  *(a3 + 80) = unk_18477AD60;
  *a3 = result;
  *(a3 + 24) = 0u;
  *(a3 + 8) = 0u;
  *(a3 + 40) = *MEMORY[0x1E695EFF8];
  *(a3 + 88) = 0;
  *(a3 + 56) = v8;
  *(a3 + 64) = v10;
  *(a3 + 72) = v12;
  *(a3 + 80) = v14;
  if (v17)
  {
    v19 = v17[1];
    if (v19 >= 0)
    {
      v20 = v17[1];
    }

    else
    {
      v20 = -v19;
    }

    *(a3 + 8) = *v17;
    *(a3 + 16) = v20;
    *(a3 + 24) = v17[2];
    *(a3 + 32) = CapHeight;
  }

  return result;
}

atomic_ullong *anonymous namespace::TSingleAttrDescriptor::operator=(atomic_ullong *a1, atomic_ullong *a2)
{
  if (a1 != a2)
  {
    TCFRef<__CTFont const*>::Retain(a1 + 2, atomic_load_explicit(a2 + 2, memory_order_acquire));
    TCFRef<__CTFont const*>::Retain(a1 + 3, atomic_load_explicit(a2 + 3, memory_order_acquire));
    TCFRef<__CTFont const*>::Retain(a1 + 4, atomic_load_explicit(a2 + 4, memory_order_acquire));
    TCFRef<__CTFont const*>::Retain(a1 + 5, atomic_load_explicit(a2 + 5, memory_order_acquire));
  }

  return a1;
}

void TSplicedFont::~TSplicedFont(TSplicedFont *this)
{
  *this = &unk_1EF25A4B8;

  std::unique_ptr<TInlineVector<TOpticalFontInfo,2ul>>::reset[abi:fn200100](this + 77, 0);

  TBaseFont::~TBaseFont(this);
}

{
  TSplicedFont::~TSplicedFont(this);

  JUMPOUT(0x1865F22D0);
}

void __CTFontManagerInstalledFontsChanged_block_invoke(uint64_t a1)
{
  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"CTFontManagerFontChangedNotification", 0, *(a1 + 32), 0);
  v3 = *(a1 + 32);

  CFRelease(v3);
}

void std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_2,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_2>,void ()(unsigned short,unsigned short,unsigned short)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](a1 + 40);

  operator delete(a1);
}

void std::vector<unsigned char const*,TInlineBufferAllocator<unsigned char const*,48ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = v1 + 51;
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
      if (v1[2] == v1[51])
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

uint64_t GetValue<__CFNumber const*>(uint64_t result, void *a2)
{
  if (result)
  {
    v3 = result;
    v4 = CFGetTypeID(result);
    if (v4 == CFNumberGetTypeID() || v4 == CFBooleanGetTypeID())
    {
      if (a2)
      {
        CFNumberGetValue(v3, kCFNumberIntType, a2);
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

void MergeOTFeaturesFromTable<TInlineVector<unsigned int,30ul>>(uint64_t a1, TBaseFont *this, uint64_t a3)
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
                v18 = *(a1 + 8);
                v19 = &v18[-*a1];
                v20 = v13 + (v19 >> 2);
                if (v20 > (*(a1 + 16) - *a1) >> 2)
                {
                  if (v20 >> 62)
                  {
LABEL_36:
                    std::__throw_bad_array_new_length[abi:fn200100]();
                  }

                  v43 = 0xAAAAAAAAAAAAAAAALL;
                  *&v21 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  v41 = v21;
                  v42 = v21;
                  std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::__split_buffer(&v41, v20, v19 >> 2, a1 + 24);
                  v22 = *(a1 + 8) - *a1;
                  v23 = *(&v41 + 1) - v22;
                  memcpy((*(&v41 + 1) - v22), *a1, v22);
                  v24 = *a1;
                  *a1 = v23;
                  v25 = *(a1 + 16);
                  *(a1 + 8) = v42;
                  *&v42 = v24;
                  *(&v42 + 1) = v25;
                  *&v41 = v24;
                  *(&v41 + 1) = v24;
                  std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::~__split_buffer(&v41);
                  v18 = *(a1 + 8);
                }

                if (v12)
                {
                  v26 = 2 * v14;
                  do
                  {
                    v27 = bswap32(*v11);
                    v28 = *(a1 + 16);
                    if (v18 >= v28)
                    {
                      v43 = 0xAAAAAAAAAAAAAAAALL;
                      *&v29 = 0xAAAAAAAAAAAAAAAALL;
                      *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
                      v41 = v29;
                      v42 = v29;
                      v30 = &v18[-*a1] >> 2;
                      if ((v30 + 1) >> 62)
                      {
                        goto LABEL_36;
                      }

                      v31 = v28 - *a1;
                      v32 = v31 >> 1;
                      if (v31 >> 1 <= (v30 + 1))
                      {
                        v32 = v30 + 1;
                      }

                      if (v31 >= 0x7FFFFFFFFFFFFFFCLL)
                      {
                        v33 = 0x3FFFFFFFFFFFFFFFLL;
                      }

                      else
                      {
                        v33 = v32;
                      }

                      std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::__split_buffer(&v41, v33, v30, a1 + 24);
                      v34 = v42;
                      *v42 = v27;
                      *&v42 = v34 + 4;
                      v35 = *(a1 + 8) - *a1;
                      v36 = *(&v41 + 1) - v35;
                      memcpy((*(&v41 + 1) - v35), *a1, v35);
                      v37 = *a1;
                      *a1 = v36;
                      v38 = *(a1 + 16);
                      v40 = v42;
                      *(a1 + 8) = v42;
                      *&v42 = v37;
                      *(&v42 + 1) = v38;
                      *&v41 = v37;
                      *(&v41 + 1) = v37;
                      std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::~__split_buffer(&v41);
                      v18 = v40;
                    }

                    else
                    {
                      *v18 = v27;
                      v18 += 4;
                    }

                    *(a1 + 8) = v18;
                    v11 = (v11 + 6);
                    v26 -= 6;
                  }

                  while (v26);
                }

                v39 = *a1;
                LOBYTE(v41) = -86;
                std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
                std::__inplace_merge[abi:fn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__less<void,void> &>(v39, &v39[v19], v18);
              }
            }
          }
        }
      }
    }
  }
}

void TSupplementaryDataCachePage::TSupplementaryDataCachePage(TSupplementaryDataCachePage *this, const TBaseFont *a2)
{
  v2 = MEMORY[0x1EEE9AC00](this, a2);
  v4 = v3;
  v6 = v5;
  v7 = v2;
  v27 = *MEMORY[0x1E69E9840];
  *(v2 + 1584) = 0;
  *(v2 + 1568) = 0u;
  *(v2 + 1656) = v2 + 1592;
  (*(*v6 + 680))(v6, v3 & 0xFFFFFF00, 256, v2);
  memset(__b, 170, sizeof(__b));
  v8 = 0;
  v9 = vorrq_s8(vdupq_n_s16(v4 & 0x300 | 0xFFFFDC00), xmmword_18477B810);
  v10 = vdupq_n_s16((v4 >> 10) - 10304);
  v11.i64[0] = 0x8000800080008;
  v11.i64[1] = 0x8000800080008;
  do
  {
    v12 = &__b[v8];
    v13 = v9;
    vst2q_s16(v12, *v10.i8);
    v9 = vaddq_s16(v9, v11);
    v8 += 8;
  }

  while (v8 != 256);
  bzero(v21, 0x400uLL);
  memset(v20, 255, sizeof(v20));
  if ((*(*v6 + 520))(v6, v7, v20, 1, 256))
  {
    *&v14 = 0xAAAAAAAAAAAAAAAALL;
    *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v25[14] = v14;
    v25[13] = v14;
    v25[12] = v14;
    v25[11] = v14;
    v25[10] = v14;
    v25[9] = v14;
    v25[8] = v14;
    v25[7] = v14;
    v25[6] = v14;
    v25[5] = v14;
    v25[4] = v14;
    v25[3] = v14;
    v25[2] = v14;
    v25[1] = v14;
    v25[0] = v14;
    memset(v24, 0, sizeof(v24));
    v26 = v25;
    v23 = v24;
    v19 = 0;
    v15 = v20;
    TUnicodeEncoder::EncodePortion(&v23, 0, __b, 512, v6, 0, v7, v20, 1, v21, &v19, 1);
    for (i = 0; i != 1024; i += 16)
    {
      v18 = *v15;
      v17 = v15[1];
      v15 += 2;
      *(v7 + 512 + i) = vcvt_hight_f32_f64(vcvt_f32_f64(v18), v17);
    }

    v23 = v24;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v23);
  }

  else
  {
    bzero((v7 + 512), 0x400uLL);
  }

  TCompactArray<unsigned short,8ul,3ul,30ul>::assign<unsigned int *>(v7 + 1536, v21, __b);
}

void TAATMorphTable::TAATMorphTable(TAATMorphTable *this, TRunGlue *a2, uint64_t a3)
{
  *this = &unk_1EF257550;
  *(this + 1) = a2;
  *(this + 2) = 0;
  *(this + 24) = *(a2 + 516);
  *(this + 25) = 0;
  *(this + 7) = a3;
  CommonTable = TBaseFont::GetCommonTable(*(*(a2 + 62) + 408), a3, this + 7);
  *(this + 4) = CommonTable;
  v5 = this + 32;
  if (!CommonTable)
  {
    *(this + 5) = 0;
    *(this + 56) = 1;
    return;
  }

  BytePtr = CFDataGetBytePtr(CommonTable);
  *(this + 5) = BytePtr;
  *(this + 56) = 1;
  if (BytePtr)
  {
    v7 = BytePtr;
    Length = CFDataGetLength(*(this + 4));
    *(this + 6) = &v7[Length];
    if (*(this + 5) + 4 > &v7[Length])
    {
LABEL_19:
      *cStr = bswap32(*(this + 7));
      v23 = 0;
      v20 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0);
      v21 = TFont::DebugDescription(*(*(this + 1) + 496));
      CFLog();

      v19 = *(*(*(this + 1) + 496) + 408);
      (*(*v19 + 496))(v19, *(this + 7));
      *v5 = 0;
      *(v5 + 1) = 0;

      return;
    }

    v9 = *(this + 1);
    v10 = *(v9 + 16);
    if (v10 < 1)
    {
      *(this + 25) = *(v9 + 515);
      return;
    }

    v11 = *(v9 + 8);
    v13 = (*v9 + 16);
    v12 = *v13;
    if (v11 >= (v13[1] - *v13) >> 3)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v5 = *(*(v12 + 8 * v11) + 48);
    *(this + 25) = v5[260] & 1;
    if (v10 != 1)
    {
      v14 = v10 + v11;
      v15 = 1;
      while (1)
      {
        v16 = *(this + 1);
        v17 = *(*v16 + 16);
        if (v11 + v15 >= (*(*v16 + 24) - v17) >> 3)
        {
          goto LABEL_18;
        }

        v18 = *(*(v17 + 8 * v11 + 8 * v15) + 48);
        if (v5[224] != *(v18 + 224))
        {
          goto LABEL_16;
        }

        if (!TFont::Compare(*(atomic_load_explicit(v5 + 7, memory_order_acquire) + 40), *(atomic_load_explicit((v18 + 56), memory_order_acquire) + 40), 1))
        {
          v16 = *(this + 1);
LABEL_16:
          v24.location = v11;
          v24.length = v15;
          TRunGlue::SetRunRange(v16, v24);
          return;
        }

        *(this + 25) |= *(v18 + 260) & 1;
        *(this + 56) = 0;
        ++v15;
        if ((v11 + v15) >= v14)
        {
          return;
        }
      }
    }
  }
}

void TAATMorphTableMorx::TAATMorphTableMorx(TAATMorphTableMorx *this, TRunGlue *a2)
{
  TAATMorphTable::TAATMorphTable(this, a2, 1634561906);
  *v3 = &unk_1EF257650;
  v4 = *(v3 + 8);
  v5 = *(v4 + 496);
  v6 = *(v3 + 24);
  v7 = *(v3 + 25);
  *(v3 + 88) = 0u;
  *(v3 + 72) = 0u;
  *(v3 + 120) = v5;
  *(v3 + 128) = v7;
  *(v3 + 64) = &unk_1EF257678;
  *(v3 + 160) = TAATLookupTable::BadTable;
  *(v3 + 168) = 0;
  *(v3 + 200) = 0;
  *(v3 + 208) = -1;
  *(v3 + 216) = v6;
  *(v3 + 136) = &unk_1EF256A28;
  *(v3 + 264) = 0;
  *(v3 + 272) = 0;
  *(v3 + 256) = 0;
  *(v3 + 664) = v3 + 280;
  v8 = *(v3 + 40);
  if (v8)
  {
    v9 = *(this + 6);
    v10 = v8 + 8;
    if (v8 + 8 > v9)
    {
      v12 = TFont::DebugDescription(*(v4 + 496));
      CFLog();

      v11 = *(*(*(this + 1) + 496) + 408);
      (*(*v11 + 496))(v11);
      *(this + 4) = 0;
      *(this + 5) = 0;
    }

    else
    {
      *(this + 9) = v8;
      *(this + 10) = v9;
      *(this + 11) = v10;
      *(this + 12) = v10;
    }
  }
}

uint64_t TAATMorphTable::ShapeGlyphs(uint64_t *a1, _BYTE *a2, __CFString *a3)
{
  v3 = a1;
  v115 = *MEMORY[0x1E69E9840];
  a1[2] = TRunGlue::length(a1[1]) << 7;
  v101 = v3;
  if ((v3[7] & 1) == 0)
  {
    v38 = *v3;
    v37 = v3[1];
    v39 = *(v37 + 16);
    v100 = *(v37 + 8);
    v103 = -1431655766;
    v40 = (*(v38 + 16))();
    v41 = 0;
    while ((*(*v40 + 16))(v40))
    {
      v94 = TAATMorphChain::FlagsForOptionalLigatures(v40);
      v113 = 0xAAAAAAAAAAAAAAAALL;
      *&v42 = 0xAAAAAAAAAAAAAAAALL;
      *(&v42 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v112[5] = v42;
      v112[6] = v42;
      v112[3] = v42;
      v112[4] = v42;
      v112[1] = v42;
      v112[2] = v42;
      v112[0] = v42;
      __p = 0;
      v111 = 0uLL;
      v43 = v100;
      v44 = v39;
      v114 = v112;
      if (v39 >= 1)
      {
        do
        {
          v45 = *(*v3[1] + 16);
          if (v43 >= (*(*v3[1] + 24) - v45) >> 3)
          {
            goto LABEL_97;
          }

          v46 = *(*(v45 + 8 * v43) + 48);
          v47 = TAATMorphChain::ResolveFlags(v40, v40[10], (*(atomic_load_explicit((v46 + 56), memory_order_acquire) + 40) + 176), (v46 + 40), 0);
          v48 = v47;
          v49 = v111;
          if (v111 >= *(&v111 + 1))
          {
            v106 = 0xAAAAAAAAAAAAAAAALL;
            *&v51 = 0xAAAAAAAAAAAAAAAALL;
            *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *v104 = v51;
            v105 = v51;
            v52 = (v111 - __p) >> 2;
            v53 = v52 + 1;
            if ((v52 + 1) >> 62)
            {
              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            v54 = *(&v111 + 1) - __p;
            if ((*(&v111 + 1) - __p) >> 1 > v53)
            {
              v53 = v54 >> 1;
            }

            if (v54 >= 0x7FFFFFFFFFFFFFFCLL)
            {
              v55 = 0x3FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v55 = v53;
            }

            std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::__split_buffer(v104, v55, v52, v112);
            v56 = v105;
            *v105 = v48;
            *&v105 = v56 + 4;
            v57 = v104[1] - (v111 - __p);
            memcpy(v57, __p, v111 - __p);
            v58 = __p;
            v59 = *(&v111 + 1);
            __p = v57;
            v97 = v105;
            v111 = v105;
            *&v105 = v58;
            *(&v105 + 1) = v59;
            v104[0] = v58;
            v104[1] = v58;
            std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::~__split_buffer(v104);
            v50 = v97;
          }

          else
          {
            *v111 = v47;
            v50 = v49 + 4;
          }

          *&v111 = v50;
          ++v43;
          --v44;
        }

        while (v44);
      }

      v102 = -1431655766;
      v60 = (*(*v40 + 40))(v40, &v102);
      if (v102)
      {
        v61 = v60;
        v98 = v41;
        v62 = 0;
        while (((*(*v61 + 16))(v61) & 1) != 0)
        {
          if (v39 >= 1)
          {
            v63 = 0;
            v64 = v61[2];
            while (v63 < (v111 - __p) >> 2)
            {
              v65 = *(__p + v63);
              if ((v65 & v64) != 0)
              {
                v66 = v63 + 1;
                v67 = 1;
                do
                {
                  v68 = v67;
                  v69 = v66;
                  if (v66 >= v39 || (v64 & v94) != 0)
                  {
                    break;
                  }

                  if ((v111 - __p) >> 2 <= v66)
                  {
                    goto LABEL_97;
                  }

                  v70 = *(__p + v66) ^ v65;
                  ++v67;
                  ++v66;
                }

                while ((v70 & v64) == 0);
                v71 = (*(*v40 + 32))(v40, v62);
                v3 = v101;
                if (!v71 || (v118.location = v100, v118.length = v39, TRunGlue::CoveredByBitmap(v101[1], v71, v118)))
                {
                  v116.location = v63 + v100;
                  v116.length = v68;
                  TRunGlue::SetRunRange(v101[1], v116);
                  v72 = v101[1];
                  v109[0] = &unk_1EF257608;
                  v109[3] = v109;
                  v73 = TRunGlue::GlyphRangeByTrimming(v72, v109);
                  v75 = v74;
                  std::__function::__value_func<BOOL ()(TRunGlue::TGlyph)>::~__value_func[abi:fn200100](v109);
                  if (v75)
                  {
                    v76 = (*(*v61 + 40))(v61, v101[1], v73, v75);
                    if (v76)
                    {
                      if (v76 == -2)
                      {
                        goto LABEL_98;
                      }

                      *a2 = 1;
                      if (v76 != 1)
                      {
                        v77 = v101[1];
                        *(v77 + 514) = 1;
                        if (v76 == 3)
                        {
                          if (TRunGlue::length(v77) > v101[2])
                          {
                            goto LABEL_87;
                          }
                        }

                        else if (v76 == -1)
                        {
                          goto LABEL_87;
                        }
                      }
                    }
                  }
                }
              }

              else
              {
                v69 = v63 + 1;
                v3 = v101;
              }

              v63 = v69;
              if (v69 >= v39)
              {
                goto LABEL_87;
              }
            }

LABEL_97:
            __break(1u);
LABEL_98:
            v104[0] = &__p;
            std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v104);
            return 0;
          }

LABEL_87:
          v62 = (v62 + 1);
          v78 = v102;
          if (v62 >= v102)
          {
            goto LABEL_88;
          }
        }

        v78 = v102;
LABEL_88:
        v41 = v98;
        if (v62 < v78)
        {
          LODWORD(v104[0]) = bswap32(*(v3 + 7));
          BYTE4(v104[0]) = 0;
          v89 = CFStringCreateWithCString(*MEMORY[0x1E695E480], v104, 0);
          v93 = TFont::DebugDescription(*(v3[1] + 496));
          CFLog();

          v84 = *(*(v3[1] + 496) + 408);
          (*(*v84 + 496))(v84, *(v3 + 7));
          v3[4] = 0;
          v41 = v103;

          v104[0] = &__p;
          std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v104);
          v85 = 0;
LABEL_94:
          if (v41 < v103)
          {
            LODWORD(__p) = bswap32(*(v3 + 7));
            BYTE4(__p) = 0;
            v86 = CFStringCreateWithCString(*MEMORY[0x1E695E480], &__p, 0);
            v90 = TFont::DebugDescription(*(v3[1] + 496));
            CFLog();

            v79 = *(*(v3[1] + 496) + 408);
            (*(*v79 + 496))(v79, *(v3 + 7));
            v3[4] = 0;

            v85 = 0;
          }

          v80 = v3[1];
          v117.location = v100;
          v117.length = v39;
          v81 = v85;
          TRunGlue::SetRunRange(v80, v117);
          return v81;
        }
      }

      v104[0] = &__p;
      std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](v104);
      if (++v41 >= v103)
      {
        break;
      }
    }

    v85 = 1;
    goto LABEL_94;
  }

  v4 = v3[1];
  v108[0] = &unk_1EF257578;
  v108[3] = v108;
  v5 = TRunGlue::GlyphRangeByTrimming(v4, v108);
  v7 = v6;
  std::__function::__value_func<BOOL ()(TRunGlue::TGlyph)>::~__value_func[abi:fn200100](v108);
  if (v7 < 1)
  {
    return 1;
  }

  v8 = v3;
  v9 = *v3[5];
  LODWORD(v104[0]) = -1431655766;
  v10 = (*(*v8 + 16))(v8, v104);
  result = 1;
  v12 = 0;
  if (!LODWORD(v104[0]))
  {
    v13 = v101;
    goto LABEL_101;
  }

  v96 = bswap32(v9) >> 16;
  v13 = v101;
  while ((*(*v10 + 16))(v10, v96))
  {
    if ((atomic_load_explicit(&qword_1ED5678B0, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED5678B0))
    {
      _MergedGlobals_9 = GetLocaleChangedCount();
      __cxa_guard_release(&qword_1ED5678B0);
    }

    LocaleChangedCount = GetLocaleChangedCount();
    v15 = LocaleChangedCount;
    v16 = _MergedGlobals_9;
    v17 = v101[1];
    v18 = *(v17 + 496);
    v19 = *(v17 + 144);
    if (v19 && (atomic_load_explicit((v19 + 64), memory_order_acquire) ? (v20 = LocaleChangedCount == v16) : (v20 = 0), v20))
    {
      v24 = *(v10 + 40);
      v25 = (v18 + 176);
      v27 = (v19 + 40);
      v26 = v10;
      v28 = 0;
    }

    else
    {
      if (!a3 && !v12)
      {
        v21 = v18 + 296;
        v22 = *(v18 + 296 + 4 * *(v10 + 64));
        if (v22)
        {
          v23 = LocaleChangedCount == v16;
        }

        else
        {
          v23 = 0;
        }

        if (!v23)
        {
          v22 = TAATMorphChain::ResolveFlags(v10, *(v10 + 40), (v18 + 176), 0, 0);
          *(v21 + 4 * *(v10 + 64)) = v22;
          if (v15 != v16)
          {
            _MergedGlobals_9 = v15;
          }
        }

        goto LABEL_23;
      }

      v24 = *(v10 + 40);
      v25 = (v18 + 176);
      v26 = v10;
      v27 = 0;
      v28 = a3;
    }

    v22 = TAATMorphChain::ResolveFlags(v26, v24, v25, v27, v28);
LABEL_23:
    LODWORD(v109[0]) = -1431655766;
    v29 = (*(*v10 + 40))(v10, v109);
    if (LODWORD(v109[0]))
    {
      v30 = v29;
      v31 = 0;
      v13 = v101;
      while ((*(*v30 + 16))(v30))
      {
        if ((v30[2] & v22) != 0)
        {
          v32 = (*(*v10 + 32))(v10, v31);
          if (!v32 || TRunGlue::CoveredByBitmap(v101[1], v32, *(v101[1] + 8)))
          {
            v33 = (*(*v30 + 40))(v30, v101[1], v5, v7);
            if (v33)
            {
              v34 = v33;
              if (v33 == -2)
              {
                return 0;
              }

              *a2 = 1;
              v35 = v101[1];
              if (v34 != 1)
              {
                *(v35 + 514) = 1;
                if (v34 == 3)
                {
                  if (TRunGlue::length(v35) > v101[2])
                  {
                    break;
                  }

                  v35 = v101[1];
                }

                else if (v34 == -1)
                {
                  break;
                }
              }

              v107[0] = &unk_1EF2575C0;
              v107[3] = v107;
              v5 = TRunGlue::GlyphRangeByTrimming(v35, v107);
              v7 = v36;
              std::__function::__value_func<BOOL ()(TRunGlue::TGlyph)>::~__value_func[abi:fn200100](v107);
            }
          }
        }

        v31 = (v31 + 1);
        if (v31 >= LODWORD(v109[0]))
        {
          break;
        }
      }

      if (v31 < LODWORD(v109[0]))
      {
        LODWORD(__p) = bswap32(*(v101 + 7));
        BYTE4(__p) = 0;
        v87 = CFStringCreateWithCString(*MEMORY[0x1E695E480], &__p, 0);
        v91 = TFont::DebugDescription(*(v101[1] + 496));
        CFLog();

        v82 = *(*(v101[1] + 496) + 408);
        (*(*v82 + 496))(v82, *(v101 + 7));
        v101[4] = 0;
        v12 = v104[0];

        result = 0;
        goto LABEL_101;
      }
    }

    else
    {
      v13 = v101;
    }

    if (++v12 >= LODWORD(v104[0]))
    {
      break;
    }
  }

  result = 1;
LABEL_101:
  if (v12 < LODWORD(v104[0]))
  {
    LODWORD(__p) = bswap32(*(v13 + 7));
    BYTE4(__p) = 0;
    v88 = CFStringCreateWithCString(*MEMORY[0x1E695E480], &__p, 0);
    v92 = TFont::DebugDescription(*(v13[1] + 496));
    CFLog();

    v83 = *(*(v13[1] + 496) + 408);
    (*(*v83 + 496))(v83, *(v13 + 7));
    v13[4] = 0;

    return 0;
  }

  return result;
}

double TFont::GetBoundingBox(TBaseFont **this)
{
  if (*(this + 14))
  {
    v1 = (this + 7);
  }

  else
  {
    TFont::InitStrikeMetrics(this);
  }

  return v1[7];
}

double TRun::GetImageBounds(TRun *this, CGContext *a2, CFRange a3, double *a4, double *a5)
{
  length = a3.length;
  v54 = *MEMORY[0x1E69E9840];
  if (a3.length > 0)
  {
    location = a3.location;
    v11 = *(this + 20);
    if (v11)
    {
      v12 = *(v11 + 48);
    }

    else
    {
      v12 = 0.0;
    }

    v14 = *(this + 27);
    v15 = *(v14 + 32);
    if (v15 || (v18 = *(v14 + 24)) == 0)
    {
      v16 = 0;
      v17 = (v15 + 16 * *(this + 25));
    }

    else
    {
      v17 = (v18 + 8 * *(this + 25));
      v16 = 1;
    }

    v19 = *a4;
    v20 = *a5;
    *&v21 = 0xAAAAAAAAAAAAAAAALL;
    *(&v21 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v52[28] = v21;
    v52[29] = v21;
    v52[26] = v21;
    v52[27] = v21;
    v52[24] = v21;
    v52[25] = v21;
    v52[22] = v21;
    v52[23] = v21;
    v52[20] = v21;
    v52[21] = v21;
    v52[18] = v21;
    v52[19] = v21;
    v52[16] = v21;
    v52[17] = v21;
    v52[15] = v21;
    v52[14] = v21;
    v52[13] = v21;
    v52[12] = v21;
    v52[11] = v21;
    v52[10] = v21;
    v52[9] = v21;
    v52[8] = v21;
    v52[7] = v21;
    v52[6] = v21;
    v52[5] = v21;
    v52[4] = v21;
    v52[3] = v21;
    v52[2] = v21;
    v52[1] = v21;
    v52[0] = v21;
    v50 = 0;
    v49 = 0;
    v51 = 0;
    v53 = v52;
    v22 = a3.location + a3.length;
    if (!(a3.location + a3.length) || (std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__vallocate[abi:fn200100](&v49, a3.location + a3.length), v23 = v50, bzero(v50, 16 * v22), v24 = &v23[16 * v22], v50 = v24, (v25 = v49) == 0))
    {
      ImageBounds = *MEMORY[0x1E695F050];
      goto LABEL_26;
    }

    v41 = a4;
    v42 = a5;
    v43.location = location;
    v26 = v20 + v12;
    if (v22 < 1)
    {
LABEL_22:
      *&v36 = 0xAAAAAAAAAAAAAAAALL;
      *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v47[28] = v36;
      v47[29] = v36;
      v47[26] = v36;
      v47[27] = v36;
      v47[24] = v36;
      v47[25] = v36;
      v47[22] = v36;
      v47[23] = v36;
      v47[20] = v36;
      v47[21] = v36;
      v47[18] = v36;
      v47[19] = v36;
      v47[16] = v36;
      v47[17] = v36;
      v47[15] = v36;
      v47[14] = v36;
      v47[13] = v36;
      v47[12] = v36;
      v47[11] = v36;
      v47[10] = v36;
      v47[9] = v36;
      v47[8] = v36;
      v47[7] = v36;
      v47[6] = v36;
      v47[5] = v36;
      v47[4] = v36;
      v47[3] = v36;
      v47[2] = v36;
      v47[1] = v36;
      v47[0] = v36;
      __dst = 0;
      v45 = 0;
      v46 = 0;
      v48 = v47;
      std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__vallocate[abi:fn200100](&__dst, length);
      v37 = v45;
      bzero(v45, 16 * length);
      v45 = &v37[16 * length];
      if (__dst)
      {
        v55.location = v43.location;
        v55.length = length;
        TRun::GetStretchFactors(this, v55, __dst);
        *v41 = v19;
        *v42 = v26 - v12;
        v38 = *(atomic_load_explicit(this + 7, memory_order_acquire) + 40);
        v56.location = v43.location;
        v56.length = length;
        ImageBounds = TStorageRange::GetImageBounds((this + 192), v38, a2, v56, (v49 + 16 * v56.location), __dst);
LABEL_24:
        v43.length = &__dst;
        std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v43.length);
LABEL_26:
        __dst = &v49;
        std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&__dst);
        return ImageBounds;
      }
    }

    else
    {
      v27 = 0;
      v28 = 0;
      v29 = MEMORY[0x1E695EFF8];
      v30 = v17;
      while (1)
      {
        if ((*(this + 225) & 0x10) != 0)
        {
          [*(this + 27) originAtIndex:v28 + *(this + 25)];
          v24 = v50;
          v25 = v49;
        }

        else
        {
          v31 = *v29;
          v32 = v29[1];
        }

        if (v28 >= &v24[-v25] >> 4)
        {
          break;
        }

        v33 = (v25 + v27 * 8);
        *v33 = v19 + v31;
        v33[1] = v26 + v32;
        v34 = 0.0;
        v35 = v30;
        if ((v16 & 1) == 0)
        {
          v34 = v17[v27 + 1];
          v35 = &v17[2 * v28];
        }

        v19 = v19 + *v35;
        v26 = v26 + v34;
        ++v28;
        v27 += 2;
        ++v30;
        if (v22 == v28)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
    }

    ImageBounds = *MEMORY[0x1E695F050];
    goto LABEL_24;
  }

  if (a3.length < 0)
  {
    v13 = MEMORY[0x1E695F050];
  }

  else
  {
    v13 = MEMORY[0x1E695F058];
  }

  return *v13;
}

void TLine::GetImageBounds(TLine *this, CGContext *a2, CFRange a3)
{
  v4 = *MEMORY[0x1E695F058];
  v3 = *(MEMORY[0x1E695F058] + 8);
  v6 = *(MEMORY[0x1E695F058] + 16);
  v5 = *(MEMORY[0x1E695F058] + 24);
  v7 = *(this + 2);
  v8 = (*(this + 3) - v7) >> 3;
  if (v8 >= 1)
  {
    length = a3.length;
    v12 = *(*v7 + 40);
    v13 = v12[39];
    v14 = MEMORY[0x1E695F060];
    if (!v13)
    {
      v13 = MEMORY[0x1E695F060];
    }

    v15 = *v13;
    v28 = v13[1];
    v29 = v15;
    v16 = 1;
    while (1)
    {
      v17 = v12[26];
      if (v17 >= length + a3.location)
      {
        a3.length = length + a3.location;
      }

      else
      {
        a3.length = v12[26];
      }

      if (a3.location > 0 || length + a3.location < 1)
      {
        v18 = a3.length - a3.location;
        if (a3.location < v17)
        {
          location = a3.location;
        }

        else
        {
          location = 0;
        }

        if (a3.location >= v17)
        {
          v18 = 0;
        }

        v20 = a3.location >= 0;
        if (a3.location >= 0)
        {
          a3.location = location;
        }

        else
        {
          a3.location = 0;
        }

        if (v20)
        {
          a3.length = v18;
        }

        else
        {
          a3.length = 0;
        }
      }

      else
      {
        a3.location = 0;
      }

      v30.origin.x = (*(*v12 + 104))(v12, a2, a3.location, a3.length, &v29, &v28);
      x = v30.origin.x;
      y = v30.origin.y;
      width = v30.size.width;
      height = v30.size.height;
      if (CGRectIsNull(v30))
      {
        goto LABEL_32;
      }

      v31.origin.x = v4;
      v31.origin.y = v3;
      v31.size.width = v6;
      v31.size.height = v5;
      if (!CGRectIsEmpty(v31))
      {
        v32.origin.x = x;
        v32.origin.y = y;
        v32.size.width = width;
        v32.size.height = height;
        if (CGRectIsEmpty(v32))
        {
          x = v4;
          y = v3;
          width = v6;
          height = v5;
        }

        else
        {
          v33.origin.x = v4;
          v33.origin.y = v3;
          v33.size.width = v6;
          v33.size.height = v5;
          v35.origin.x = x;
          v35.origin.y = y;
          v35.size.width = width;
          v35.size.height = height;
          v34 = CGRectUnion(v33, v35);
          x = v34.origin.x;
          y = v34.origin.y;
          width = v34.size.width;
          height = v34.size.height;
        }
      }

      if (v8 == v16)
      {
LABEL_32:
        TLine::GetLeftHangersGlyphCountAndWidth(this, 0);
        return;
      }

      v25 = *(this + 2);
      if (v16 >= (*(this + 3) - v25) >> 3)
      {
        break;
      }

      a3.location = 0;
      v12 = *(*(v25 + 8 * v16) + 40);
      v26 = v12[39];
      if (!v26)
      {
        v26 = v14;
      }

      v27 = *v26 + v29;
      length -= v17;
      ++v16;
      v28 = v26[1] + v28;
      v29 = v27;
      v5 = height;
      v6 = width;
      v3 = y;
      v4 = x;
    }

    __break(1u);
  }
}

uint64_t std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__vallocate[abi:fn200100](void *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v3 = a1 + 63;
  result = a1[63];
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

double TStorageRange::GetImageBounds(TStorageRange *this, const TFont *a2, CGContext *a3, CFRange a4, const CGPoint *a5, const CGSize *a6)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a5)
  {
    return *MEMORY[0x1E695F050];
  }

  v6 = a6;
  if (!a6)
  {
    return *MEMORY[0x1E695F050];
  }

  v7 = a5;
  length = a4.length;
  location = a4.location;
  memset(v34, 170, sizeof(v34));
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v35 = v34;
  if (length && (std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::__vallocate[abi:fn200100](&v31, length), v12 = v32, bzero(v32, 32 * length), v32 = &v12[32 * length], v31))
  {
    v13 = *(this + 3);
    v14 = *(this + 1);
    v15 = (*(v13 + 16) + 2 * v14 + 2 * location);
    if (length >= 1 && *v15 == -1 && !*(*(v13 + 48) + 8 * v14 + 8 * location))
    {
      ++v15;
      ++v6;
      ++v7;
      --length;
    }

    TFont::GetBoundingBoxesForGlyphs(a2, v15, v31, length, kCTFontOrientationDefault);
    v16 = *MEMORY[0x1E695F058];
    v17 = *(MEMORY[0x1E695F058] + 8);
    v18 = *(MEMORY[0x1E695F058] + 16);
    v19 = *(MEMORY[0x1E695F058] + 24);
    if (length >= 1)
    {
      v20 = 0;
      v21 = 0;
      p_height = &v6->height;
      p_y = &v7->y;
      while (v21 < (v32 - v31) >> 5)
      {
        v24 = *(p_height - 1);
        v37.origin.x = v24 * v31[v20].origin.x;
        v37.origin.y = *p_height * v31[v20].origin.y;
        v37.size.width = v24 * v31[v20].size.width;
        v37.size.height = *p_height * v31[v20].size.height;
        v38 = CGRectOffset(v37, *(p_y - 1), *p_y);
        x = v38.origin.x;
        y = v38.origin.y;
        width = v38.size.width;
        height = v38.size.height;
        v38.origin.x = v16;
        v38.origin.y = v17;
        v38.size.width = v18;
        v38.size.height = v19;
        if (CGRectIsEmpty(v38))
        {
          v16 = x;
          v17 = y;
          v18 = width;
          v19 = height;
        }

        else
        {
          v39.origin.x = x;
          v39.origin.y = y;
          v39.size.width = width;
          v39.size.height = height;
          if (!CGRectIsEmpty(v39))
          {
            v40.origin.x = v16;
            v40.origin.y = v17;
            v40.size.width = v18;
            v40.size.height = v19;
            v42.origin.x = x;
            v42.origin.y = y;
            v42.size.width = width;
            v42.size.height = height;
            v41 = CGRectUnion(v40, v42);
            v16 = v41.origin.x;
            v17 = v41.origin.y;
            v18 = v41.size.width;
            v19 = v41.size.height;
          }
        }

        ++v21;
        p_height += 2;
        p_y += 2;
        ++v20;
        if (length == v21)
        {
          goto LABEL_19;
        }
      }

      __break(1u);
      return *MEMORY[0x1E695F050];
    }
  }

  else
  {
    v16 = *MEMORY[0x1E695F050];
  }

LABEL_19:
  v30 = &v31;
  std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::__destroy_vector::operator()[abi:fn200100](&v30);
  return v16;
}

void *TRun::GetStretchFactors(void *this, CFRange a2, CGSize *__dst)
{
  v3 = this[39];
  if (!v3 || (v4 = *(v3 + 56), v4 == *(v3 + 64)))
  {
    if (a2.length >= 1)
    {
      v5 = a2.length + 1;
      do
      {
        *__dst++ = kUnitSize;
        --v5;
      }

      while (v5 > 1);
    }
  }

  else if (a2.length)
  {
    return memmove(__dst, (v4 + 16 * a2.location), 16 * a2.length);
  }

  return this;
}

uint64_t std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::__vallocate[abi:fn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >> 59)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  result = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<CGRect,30ul>>((a1 + 3), a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 32 * v4;
  return result;
}

uint64_t std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<CGRect,30ul>>(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 960);
  result = *(a1 + 960);
  v4 = result + 32 * a2;
  if (v4 > v2)
  {
    if (!(a2 >> 59))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v2 = v4;
  return result;
}

double TFont::GetBoundingBoxesForGlyphs(TFont *this, const unsigned __int16 *a2, CGRect *a3, uint64_t a4, CTFontOrientation a5)
{
  v38 = *MEMORY[0x1E69E9840];
  v27 = 0xAAAAAAAAAAAAAAAALL;
  bboxes = a3;
  (*(**(this + 51) + 504))(&v27);
  if (a4 >= 1)
  {
    explicit = atomic_load_explicit(&v27, memory_order_acquire);
    v10 = bboxes;
    if (CGFontGetGlyphBBoxes(explicit, a2, a4, bboxes))
    {
      *&v11 = 0xAAAAAAAAAAAAAAAALL;
      *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v36[14] = v11;
      v36[13] = v11;
      v36[12] = v11;
      v36[11] = v11;
      v36[10] = v11;
      v36[9] = v11;
      v36[8] = v11;
      v36[7] = v11;
      v36[6] = v11;
      v36[5] = v11;
      v36[4] = v11;
      v36[3] = v11;
      v36[2] = v11;
      v36[1] = v11;
      v36[0] = v11;
      v33 = 0;
      v34 = 0;
      v35 = 0;
      v37 = v36;
      BoundingBoxesForSVGGlyphs = TFont::GetBoundingBoxesForSVGGlyphs(this, 0, a2, v10, a4, 1, &v33, 0);
      *&v13 = -1;
      *(&v13 + 1) = -1;
      *&v26.c = v13;
      *&v26.tx = v13;
      *&v26.a = v13;
      TFont::GetScaledMatrix(this, &v26);
      if (a5 != kCTFontOrientationVertical && (a5 || (*(this + 12) & 1) == 0))
      {
LABEL_11:
        TFont::GetColorBitmapFontTranslate(this);
        v31[0] = v21;
        v31[1] = v22;
        operator new();
      }

      TFont::GetEffectiveMatrix(this, v31);
      *&v26.a = *v31;
      *&v26.c = *v32;
      *&v26.tx = *&v32[2];
      *&v14 = 0xAAAAAAAAAAAAAAAALL;
      *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
      *&v32[57] = v14;
      *&v32[59] = v14;
      *&v32[53] = v14;
      *&v32[55] = v14;
      *&v32[49] = v14;
      *&v32[51] = v14;
      *&v32[45] = v14;
      *&v32[47] = v14;
      *&v32[41] = v14;
      *&v32[43] = v14;
      *&v32[37] = v14;
      *&v32[39] = v14;
      *&v32[33] = v14;
      *&v32[35] = v14;
      *&v32[31] = v14;
      *&v32[29] = v14;
      *&v32[27] = v14;
      *&v32[25] = v14;
      *&v32[23] = v14;
      *&v32[21] = v14;
      *&v32[19] = v14;
      *&v32[17] = v14;
      *&v32[15] = v14;
      *&v32[13] = v14;
      *&v32[11] = v14;
      *&v32[9] = v14;
      *&v32[7] = v14;
      *&v32[5] = v14;
      *&v32[3] = v14;
      *&v32[1] = v14;
      v31[0] = 0;
      v31[1] = 0;
      v32[0] = 0;
      v32[61] = &v32[1];
      std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__vallocate[abi:fn200100](v31, a4);
      v15 = v31[1];
      bzero(v31[1], 16 * a4);
      v31[1] = &v15[a4];
      v16 = v31[0];
      if (!v31[0])
      {
        v23 = *MEMORY[0x1E695F050];
        *&v29.a = v31;
        std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v29);
        v31[0] = &v33;
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v31);
        goto LABEL_14;
      }

      if (TFont::GetUnscaledVerticalTranslationsForGlyphs(this, a2, v31[0], a4))
      {
        ScaleFactor = TFont::GetScaleFactor(this);
        v30[0] = &unk_1EF257C98;
        v30[1] = &bboxes;
        v30[2] = &ScaleFactor;
        v30[3] = v30;
        ForEachIndex(a4, BoundingBoxesForSVGGlyphs ^ 1, v33, v34, v30);
        std::__function::__value_func<void ()(long)>::~__value_func[abi:fn200100](v30);
        p_size = &bboxes->size;
        v18 = a4;
        do
        {
          v39 = *&p_size[-1].width;
          v29 = *kRotateLeftTransform;
          v40 = CGRectApplyAffineTransform(v39, &v29);
          *&p_size[-1].width = v40;
          v19 = *v16++;
          v40.size.height = v40.origin.y;
          x = v40.origin.x;
          p_size[-1] = vextq_s8(vsubq_f64(*&v40.size.height, v19), vaddq_f64(*&v40.origin.y, v19), 8uLL);
          p_size += 2;
          --v18;
        }

        while (v18);
        *&v29.a = v31;
        std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v29);
        goto LABEL_11;
      }

      *&v29.a = v31;
      std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](&v29);
      v31[0] = &v33;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v31);
    }
  }

  v23 = *MEMORY[0x1E695F050];
LABEL_14:

  return v23;
}

uint64_t TFont::GetBoundingBoxesForSVGGlyphs(TFont *a1, _OWORD *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, CGFloat *a8)
{
  result = TFont::ensureSVGTableObject(a1);
  if (!result)
  {
    return result;
  }

  if (a6 == 2)
  {
    v17 = 1;
    goto LABEL_6;
  }

  if (!a6)
  {
    v17 = *(a1 + 12) & 1;
LABEL_6:
    v63 = v17;
    goto LABEL_8;
  }

  v63 = 0;
LABEL_8:
  TFont::GetPaletteColors(a1);
  if (a5 < 1)
  {
    return 0;
  }

  v61 = a1;
  v62 = a2;
  v60 = a8;
  v18 = 0;
  v19 = 0;
  v21 = *(MEMORY[0x1E695F058] + 16);
  v20 = *(MEMORY[0x1E695F058] + 24);
  v64 = a4 + 16;
  v23 = *MEMORY[0x1E695F058];
  v22 = *(MEMORY[0x1E695F058] + 8);
  do
  {
    v24 = -2 * v19;
    v25 = v19;
    v26 = (v64 + 32 * v19);
    while (OTSVGTableGetDocumentIndexForGlyph() == -1)
    {
      if (v18)
      {
        v42 = *(a7 + 8);
        v43 = *(a7 + 16);
        if (v42 >= v43)
        {
          v66.tx = -3.72066208e-103;
          *&v45 = 0xAAAAAAAAAAAAAAAALL;
          *(&v45 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *&v66.a = v45;
          *&v66.c = v45;
          v46 = (v42 - *a7) >> 3;
          v47 = v46 + 1;
          if ((v46 + 1) >> 61)
          {
            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v48 = v43 - *a7;
          if (v48 >> 2 > v47)
          {
            v47 = v48 >> 2;
          }

          if (v48 >= 0x7FFFFFFFFFFFFFF8)
          {
            v49 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v49 = v47;
          }

          std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(&v66, v49, v46, a7 + 24);
          c = v66.c;
          **&v66.c = v25;
          *&v66.c = *&c + 8;
          v51 = *(a7 + 8) - *a7;
          v52 = *&v66.b - v51;
          memcpy((*&v66.b - v51), *a7, v51);
          v53 = *a7;
          *a7 = v52;
          v54 = *(a7 + 16);
          v59 = v66.c;
          *(a7 + 8) = *&v66.c;
          *&v66.c = v53;
          v66.d = v54;
          *&v66.a = v53;
          *&v66.b = v53;
          std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v66);
          v44 = v59;
        }

        else
        {
          *v42 = v25;
          *&v44 = v42 + 1;
        }

        *(a7 + 8) = v44;
        goto LABEL_46;
      }

      v18 = 0;
      result = 0;
      ++v25;
      v24 -= 2;
      v26 += 4;
      if (a5 == v25)
      {
        return result;
      }
    }

    if ((v18 & 1) == 0)
    {
      std::vector<long,TInlineBufferAllocator<long,30ul>>::resize(a7, v25);
      v27 = *a7;
      v28 = *(a7 + 8);
      if (*a7 != v28)
      {
        v29 = 0;
        v30 = (v28 - v27 - 8) >> 3;
        v31 = vdupq_n_s64(v30);
        v32 = xmmword_18475A340;
        do
        {
          v33 = vmovn_s64(vcgeq_u64(v31, v32));
          if (v33.i8[0])
          {
            v27[v29] = v29;
          }

          if (v33.i8[4])
          {
            v27[v29 + 1] = v29 + 1;
          }

          v29 += 2;
          v32 = vaddq_s64(v32, vdupq_n_s64(2uLL));
        }

        while (((v30 + 2) & 0x3FFFFFFFFFFFFFFELL) != v29);
      }
    }

    if (OTSVGDocumentCreate())
    {
      if (OTSVGGlyphRecordingCreate())
      {
        OTSVGGlyphRecordingGetBoundingRect();
        *(v26 - 2) = v34;
        *(v26 - 1) = v35;
        *v26 = v36;
        v26[1] = v37;
        if (v63)
        {
          v65.width = NAN;
          v65.height = NAN;
          TFont::GetUnscaledVerticalTranslationsForGlyphs(v61, (a3 - v24), &v65, 1);
          v67 = *(v26 - 2);
          v66 = *kRotateLeftTransform;
          v68 = CGRectApplyAffineTransform(v67, &v66);
          width = v68.size.width;
          height = v68.size.height;
          *v26 = v68.size.width;
          v26[1] = v68.size.height;
          x = v68.origin.x - v65.height;
          y = v68.origin.y + v65.width;
          *(v26 - 2) = v68.origin.x - v65.height;
          *(v26 - 1) = y;
        }

        else
        {
          x = v34;
          y = v35;
          width = v36;
          height = v37;
        }

        if (v62)
        {
          v55 = v62[1];
          *&v66.a = *v62;
          *&v66.c = v55;
          *&v66.tx = v62[2];
          v56 = x;
          *&v55 = y;
          v57 = width;
          v58 = height;
          v69 = CGRectApplyAffineTransform(*(&v55 - 8), &v66);
          x = v69.origin.x;
          y = v69.origin.y;
          width = v69.size.width;
          height = v69.size.height;
          *(v26 - 2) = v69;
        }

        v70.origin.x = v23;
        v70.origin.y = v22;
        v70.size.width = v21;
        v70.size.height = v20;
        if (!CGRectIsEmpty(v70))
        {
          v71.origin.x = x;
          v71.origin.y = y;
          v71.size.width = width;
          v71.size.height = height;
          if (CGRectIsEmpty(v71))
          {
            x = v23;
            y = v22;
            width = v21;
            height = v20;
          }

          else
          {
            v72.origin.x = v23;
            v72.origin.y = v22;
            v72.size.width = v21;
            v72.size.height = v20;
            v74.origin.x = x;
            v74.origin.y = y;
            v74.size.width = width;
            v74.size.height = height;
            v73 = CGRectUnion(v72, v74);
            x = v73.origin.x;
            y = v73.origin.y;
            width = v73.size.width;
            height = v73.size.height;
          }
        }

        OTSVGGlyphRecordingRelease();
        v23 = x;
        v22 = y;
        v21 = width;
        v20 = height;
      }

      OTSVGDocumentRelease();
    }

LABEL_46:
    v19 = v25 + 1;
    v18 = 1;
  }

  while (a5 - 1 != v25);
  if (!v60)
  {
    return 1;
  }

  *v60 = v23;
  v60[1] = v22;
  result = 1;
  v60[2] = v21;
  v60[3] = v20;
  return result;
}

void ForEachIndex(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  if (a2)
  {
    if (a1 >= 1)
    {
      for (i = 0; i != a1; ++i)
      {
        std::function<void ()(long)>::operator()(a5, i);
      }
    }
  }

  else
  {
    while (a3 != a4)
    {
      v10 = *a3++;
      std::function<void ()(long)>::operator()(a5, v10);
    }
  }
}

void std::__function::__func<TFont::GetBoundingBoxesForGlyphs(unsigned short const*,CGRect *,long,CTFontOrientation)::$_1,std::allocator<TFont::GetBoundingBoxesForGlyphs(unsigned short const*,CGRect *,long,CTFontOrientation)::$_1>,void ()(long)>::operator()(uint64_t a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *(a1 + 16);
  v5 = (**(a1 + 8) + 32 * *a2);
  v9 = *v5;
  v6 = *v4;
  v7 = v4[2];
  *&v8.c = v4[1];
  *&v8.tx = v7;
  *&v8.a = v6;
  v10 = CGRectApplyAffineTransform(v9, &v8);
  *v5 = v10;
  *(**(a1 + 8) + 32 * v3) = CGRectOffset(v10, **(a1 + 24), *(*(a1 + 24) + 8));
}

CGRect CTFontGetBoundingBox(CTFontRef font)
{
  if (font)
  {
    BoundingBox = TFont::GetBoundingBox(*(font + 5));
  }

  else
  {
    BoundingBox = *MEMORY[0x1E695F050];
    v2 = *(MEMORY[0x1E695F050] + 8);
    v3 = *(MEMORY[0x1E695F050] + 16);
    v4 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v4;
  result.size.width = v3;
  result.origin.y = v2;
  result.origin.x = BoundingBox;
  return result;
}

void std::vector<CGPoint,TInlineBufferAllocator<CGPoint,30ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = v1 + 63;
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
      if (v1[2] == v1[63])
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

void TLine::GetBounds(TLine *this, unint64_t a2)
{
  v2 = a2;
  v76[0] = a2;
  v4 = *(this + 2);
  v5 = *(this + 3) - v4;
  if ((a2 & 0x40) != 0 && v5 >= 1)
  {
    v6 = a2 & 0xFFFFFFFFFFFFFFE3;
    v7 = *(*(*v4 + 40) + 168);
    if (v7)
    {
      v8 = TParagraphStyle::GetLineBoundsOptions(v7, a2) & 0x1C;
    }

    else
    {
      v8 = 0;
    }

    v2 = v8 | v6;
    v76[0] = v2;
  }

  if ((v2 & 0x18) == 8)
  {
    if ((v2 & 4) != 0)
    {
      v64[0] = 4;
      LeftHangersGlyphCountAndWidth = TLine::GetLeftHangersGlyphCountAndWidth(this, v64);
      v10.length = *(this + 18) - (TLine::GetRightHangersGlyphCountAndWidth(this, v64) + LeftHangersGlyphCountAndWidth);
      v9 = this;
      v10.location = LeftHangersGlyphCountAndWidth;
    }

    else
    {
      v10.length = *(this + 18);
      v9 = this;
      v10.location = 0;
    }

    TLine::GetImageBounds(v9, 0, v10);
  }

  else
  {
    if ((v2 & 0x20) != 0)
    {
      v2 |= 2uLL;
      v76[0] = v2;
    }

    v11 = 0.0;
    if (v5 < 1 || (v12 = *(this + 2), v13 = *(this + 3), v12 == v13))
    {
      r1a = NAN;
      v14 = 0;
      v61 = 0.0;
      v57 = NAN;
      r2a = NAN;
      v16 = NAN;
      v60 = 0.0;
      v62 = 0.0;
      v63 = 0.0;
      v20 = 0.0;
      v19 = 0.0;
      v18 = 0.0;
    }

    else
    {
      v53 = v5;
      v14 = 0;
      x = NAN;
      v16 = NAN;
      v17 = *(this + 76);
      v18 = 0.0;
      v19 = 0.0;
      v20 = 0.0;
      v62 = 0.0;
      v63 = 0.0;
      v60 = 0.0;
      v61 = 0.0;
      width = NAN;
      y = NAN;
      do
      {
        v23 = *(*v12 + 40);
        v24 = *(atomic_load_explicit(v23 + 7, memory_order_acquire) + 40);
        v64[0] = -1;
        v74 = NAN;
        v75 = NAN;
        TFont::GetDefaultMetrics(v24, v64, &v75, &v74);
        if ((v76[0] & 2) != 0)
        {
          if ((v76[0] & 0x20) != 0)
          {
            v73 = 0xAAAAAAAAAAAAAAAALL;
            TAttributes::OriginalFont(v23 + 5, &v73);
            v71 = NAN;
            v72 = NAN;
            v69 = NAN;
            v70 = NAN;
            if (CTFontGetLanguageAwareOutsetsForLanguage(atomic_load_explicit(&v73, memory_order_acquire), &v72, &v71, &v70, &v69))
            {
              v27 = *(atomic_load_explicit(&v73, memory_order_acquire) + 40);
              v28 = v27 + 56;
              v29 = v27 + 56;
              if (!*(v27 + 56))
              {
                TFont::InitStrikeMetrics(v27);
              }

              v30 = v62;
              if (v62 < *(v29 + 8) + v71)
              {
                v30 = *(v29 + 8) + v71;
              }

              v62 = v30;
              if (!*v28)
              {
                TFont::InitStrikeMetrics(v27);
                v28 = v31;
              }

              v32 = v63;
              if (v63 < *(v28 + 16) + v69)
              {
                v32 = *(v28 + 16) + v69;
              }

              v63 = v32;
              v33 = v61;
              if (v60 >= v72)
              {
                v34 = v60;
              }

              else
              {
                v34 = v72;
              }

              if (v61 < v70)
              {
                v33 = v70;
              }

              v60 = v34;
              v61 = v33;
            }

            v67 = NAN;
            v68 = NAN;
            if (TFont::GetWinMetrics(v24, &v68, &v67))
            {
              v35 = v63;
              if (v62 >= v68)
              {
                v36 = v62;
              }

              else
              {
                v36 = v68;
              }

              if (v63 < v67)
              {
                v35 = v67;
              }

              v62 = v36;
              v63 = v35;
            }

            v66 = 0xAAAAAAAAAAAAAAAALL;
            (*(*v23 + 128))(&v66, v23);
            if (atomic_load_explicit(&v66, memory_order_acquire))
            {
              v56 = width;
              r2 = y;
              r1 = v16;
              v37 = x;
              BoundingBox = CGPathGetBoundingBox(atomic_load_explicit(&v66, memory_order_acquire));
              x = BoundingBox.origin.x;
              y = BoundingBox.origin.y;
              width = BoundingBox.size.width;
              height = BoundingBox.size.height;
              if (v14)
              {
                v78.origin.x = v37;
                v78.size.width = v56;
                v78.origin.y = r2;
                v78.size.height = r1;
                v82.origin.x = x;
                v82.origin.y = y;
                v82.size.width = width;
                v82.size.height = height;
                v79 = CGRectUnion(v78, v82);
                x = v79.origin.x;
                y = v79.origin.y;
                width = v79.size.width;
                height = v79.size.height;
              }

              v14 = 1;
            }

            else
            {
              height = v16;
            }

            v16 = height;
          }
        }

        else
        {
          CrossStreamMinMax = TRun::GetCrossStreamMinMax(v23);
          *v64 = *v64 + v26;
          v75 = v75 - CrossStreamMinMax;
        }

        if ((v17 & 0x20) != 0)
        {
          v39 = (*(*v23 + 56))(v23);
        }

        else
        {
          v39 = *v64;
        }

        if (v18 < v39)
        {
          v18 = v39;
        }

        if (v19 < v75)
        {
          v19 = v75;
        }

        if (v20 < v74)
        {
          v20 = v74;
        }

        v12 += 8;
      }

      while (v12 != v13);
      v57 = width;
      r2a = y;
      r1a = x;
      LOBYTE(v2) = v76[0];
      v5 = v53;
      v11 = 0.0;
    }

    if (v2)
    {
      v40 = -v19;
    }

    else
    {
      v40 = -(v20 + v19);
    }

    if (v2)
    {
      v41 = v19 + v18;
    }

    else
    {
      v41 = v20 + v19 + v18;
    }

    v42 = *(this + 13);
    TLine::GetLeftHangersGlyphCountAndWidth(this, 0);
    if (v43 != 0.0)
    {
      v11 = 0.0 - v43;
    }

    if ((v2 & 0x14) != 0)
    {
      TLine::GetLeftHangersGlyphCountAndWidth(this, v76);
      v11 = v11 + v44;
      v45 = v42 - v44;
      TLine::GetRightHangersGlyphCountAndWidth(this, v76);
      v42 = v45 - v46;
    }

    else if ((v2 & 0xA0) != 0)
    {
      TLine::GetTrailingWhitespace(this, v64);
      v42 = v42 - v65;
      if ((*(this + 76) & 8) != 0)
      {
        v11 = v11 + v65;
      }

      else if (v5 >= 1 && (v2 & 0x20) == 0)
      {
        v48 = *(this + 3);
        if (v48 == *(this + 2))
        {
          __break(1u);
          return;
        }

        v49 = *(atomic_load_explicit((*(*(v48 - 8) + 40) + 56), memory_order_acquire) + 40);
        UnscaledTrackAmount = TFont::GetUnscaledTrackAmount(v49);
        if (UnscaledTrackAmount != 0.0)
        {
          v51 = UnscaledTrackAmount;
          if (*(v49 + 14))
          {
            v52 = (v49 + 56);
          }

          else
          {
            TFont::InitStrikeMetrics(v49);
          }

          v42 = v42 - v51 * v52[5];
        }
      }
    }

    if ((v76[0] & 0x20) != 0)
    {
      v83.origin.x = v11 - v60;
      v83.origin.y = -v63;
      v83.size.width = v61 + v60 + v42;
      v83.size.height = v63 + v62;
      v80.origin.x = v11;
      v80.origin.y = v40;
      v80.size.width = v42;
      v80.size.height = v41;
      v81 = CGRectUnion(v80, v83);
      if (v14)
      {
        v84.origin.x = r1a;
        v84.size.width = v57;
        v84.origin.y = r2a;
        v84.size.height = v16;
        CGRectUnion(v81, v84);
      }
    }
  }
}

CGRect CTLineGetBoundsWithOptions(CTLineRef line, CTLineBoundsOptions options)
{
  if (line)
  {
    TLine::GetBounds(*(line + 5), options);
  }

  else
  {
    v2 = *MEMORY[0x1E695F050];
    v3 = *(MEMORY[0x1E695F050] + 8);
    v4 = *(MEMORY[0x1E695F050] + 16);
    v5 = *(MEMORY[0x1E695F050] + 24);
  }

  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}

void TFont::GetColorBitmapFontTranslate(TFont *this)
{
  if (TFont::GetEffectiveSize(this) != *(this + 3))
  {
    UnscaledTrackAmount = TFont::GetUnscaledTrackAmount(this);
    v3 = *(this + 3);
    if ((v3 & 2) == 0)
    {
      if (UnscaledTrackAmount != 0.0)
      {
        TFont::GetScaleFactor(this);
        v3 = *(this + 3);
      }

      if ((v3 & 1) == 0 && IsLinkedOnOrAfter(SDKVersion)::once != -1)
      {
        dispatch_once(&IsLinkedOnOrAfter(SDKVersion)::once, &__block_literal_global_5);
      }
    }
  }
}

void std::function<void ()(long)>::operator()(uint64_t a1, uint64_t a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    (*(*v2 + 48))(v2, &v4);
  }

  else
  {
    v3 = std::__throw_bad_function_call[abi:fn200100]();
    std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::__destroy_vector::operator()[abi:fn200100](v3);
  }
}

void std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = v1 + 123;
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
      if (v1[2] == v1[123])
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

void TASCIIDataCache::~TASCIIDataCache(TASCIIDataCache *this)
{
  v2 = *(this + 241);
  if (v2)
  {
    MEMORY[0x1865F22D0](v2, 0x1000C400F47AF14);
  }

  v3 = *(this + 242);
  if (v3)
  {
    MEMORY[0x1865F22B0](v3, 0x1000C80F7F8B94BLL);
  }
}

void CopyFeatureSettingForTag(const __CFString *a1@<X0>, const TBaseFont *a2@<X2>, BOOL *a3@<X3>, unsigned int *a4@<X4>, uint64_t a5@<X1>, void *a6@<X8>)
{
  v57 = *MEMORY[0x1E69E9840];
  v12 = FourCharCodeFromString(a1);
  v51 = v12;
  if (!v12)
  {
    *a6 = 0;
    return;
  }

  v13 = v12;
  MasterFeatureMapEntry = FindMasterFeatureMapEntry(v12);
  if (a2)
  {
    v15 = a3 == 0;
  }

  else
  {
    v15 = 1;
  }

  v16 = !v15;
  if (!MasterFeatureMapEntry)
  {
    if (v16)
    {
      memset(valuePtr, 170, sizeof(valuePtr));
      CustomOTFeatures(a2, 0, valuePtr);
      v26 = valuePtr[0];
      if (valuePtr[1] == valuePtr[0])
      {
        goto LABEL_53;
      }

      v27 = (valuePtr[1] - valuePtr[0]) >> 2;
      v28 = valuePtr[0];
      do
      {
        v29 = v27 >> 1;
        v30 = &v28[v27 >> 1];
        v32 = *v30;
        v31 = v30 + 1;
        v27 += ~(v27 >> 1);
        if (v32 < v13)
        {
          v28 = v31;
        }

        else
        {
          v27 = v29;
        }
      }

      while (v27);
      if (v28 == valuePtr[1])
      {
LABEL_53:
        v33 = 0;
      }

      else
      {
        v33 = v13 >= *v28;
      }

      *a3 = v33;
      if (v26)
      {
        valuePtr[1] = v26;
        operator delete(v26);
      }
    }

    if (a4)
    {
      *a4 = 0;
    }

    v50 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:a5];
    v43 = [CTFeatureSetting alloc];
    v44 = 0;
    v45 = 0;
    v46 = a1;
    v47 = v50;
LABEL_59:
    *a6 = [(CTFeatureSetting *)v43 initWithType:v44 selector:v45 tag:v46 value:v47];
    return;
  }

  v17 = MasterFeatureMapEntry;
  if (!v16)
  {
LABEL_37:
    v34 = *(v17 + 3);
    v35 = *(v17 + 2);
    if (v35)
    {
      if (v17[1] & 2 | a5)
      {
        if ((v35 & 0x40) != 0)
        {
          v34 = a5;
        }
      }

      else
      {
        {
          if ((i[2] & 2) != 0)
          {
            v34 = *(i + 3);
            break;
          }
        }
      }
    }

    else if (a5)
    {
      v34 &= ~1u;
    }

    else
    {
      v34 |= 1u;
    }

    if (a4)
    {
      *a4 = (v35 >> 1) & 1;
      v35 = *(v17 + 2);
    }

    if ((v35 & 8) == 0)
    {
      valuePtr[0] = a5;
      v36 = *MEMORY[0x1E695E480];
      v37 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberLongType, valuePtr);
      LODWORD(valuePtr[0]) = *(v17 + 2);
      v38 = CFNumberCreate(v36, kCFNumberIntType, valuePtr);
      LODWORD(valuePtr[0]) = v34;
      v39 = CFNumberCreate(v36, kCFNumberIntType, valuePtr);
      valuePtr[0] = @"CTFeatureOpenTypeTag";
      valuePtr[1] = @"CTFeatureOpenTypeValue";
      valuePtr[2] = @"CTFeatureTypeIdentifier";
      *&v54[0] = @"CTFeatureSelectorIdentifier";
      values[0] = a1;
      values[1] = v37;
      values[2] = v38;
      values[3] = v39;
      v40 = CFDictionaryCreate(v36, valuePtr, values, 4, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      *a6 = [[CTFeatureSetting alloc] initWithDictionary:v40];

      return;
    }

    v41 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:*(v17 + 2)];
    v42 = [MEMORY[0x1E696AD98] numberWithUnsignedShort:v34];
    v43 = [CTFeatureSetting alloc];
    v44 = v41;
    v45 = v42;
    v46 = 0;
    v47 = 0;
    goto LABEL_59;
  }

  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v54[6] = v18;
  v54[5] = v18;
  v54[4] = v18;
  v54[3] = v18;
  v54[2] = v18;
  v54[1] = v18;
  v54[0] = v18;
  memset(valuePtr, 0, sizeof(valuePtr));
  v55 = 0xAAAAAAAAAAAAAAAALL;
  v56 = v54;
  MergeOTFeaturesFromTable<TInlineVector<unsigned int,30ul>>(valuePtr, a2, 1196643650);
  MergeOTFeaturesFromTable<TInlineVector<unsigned int,30ul>>(valuePtr, a2, 1196445523);
  v19 = valuePtr[0];
  if (valuePtr[1] == valuePtr[0])
  {
    goto LABEL_35;
  }

  v20 = (valuePtr[1] - valuePtr[0]) >> 2;
  do
  {
    v21 = v20 >> 1;
    v22 = &v19[v20 >> 1];
    v24 = *v22;
    v23 = v22 + 1;
    v20 += ~(v20 >> 1);
    if (v24 < v13)
    {
      v19 = v23;
    }

    else
    {
      v20 = v21;
    }
  }

  while (v20);
  if (v19 == valuePtr[1])
  {
LABEL_35:
    *a3 = 0;
LABEL_36:
    values[0] = valuePtr;
    std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](values);
    goto LABEL_37;
  }

  v25 = v13 >= *v19;
  *a3 = v25;
  if (!v25 || a5 < 2 || (v17[1] & 0x8000) == 0 || NumberOfGlyphVariants(a2, v13) < a5)
  {
    goto LABEL_36;
  }

  if (a4)
  {
    *a4 = 0;
  }

  *a6 = -[CTFeatureSetting initWithType:selector:tag:value:]([CTFeatureSetting alloc], 0, 0, a1, [MEMORY[0x1E696AD98] numberWithUnsignedInt:a5]);
  values[0] = valuePtr;
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](values);
}

CFIndex TFontFeatureSettingList::IndexOfOpenTypeSetting(atomic_ullong *this, const __CFString *a2)
{
  v4 = atomic_load_explicit(this, memory_order_acquire);
  if (!v4)
  {

    return -1;
  }

  v5 = v4;
  Count = CFArrayGetCount(v4);

  if (Count < 1)
  {
    return -1;
  }

  v7 = 0;
  while (1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(this, memory_order_acquire), v7);
    Value = CFDictionaryGetValue(ValueAtIndex, @"CTFeatureOpenTypeTag");
    if (Value == a2 || a2 && Value && CFEqual(Value, a2))
    {
      break;
    }

    if (Count == ++v7)
    {
      return -1;
    }
  }

  return v7;
}

uint64_t TAATMorphSubtableMorx::Process(TAATMorphSubtableMorx *this, TRunGlue *a2, CFRange a3)
{
  v3 = MEMORY[0x1EEE9AC00](this, a2);
  v6 = v5;
  v8 = v7;
  v9 = v4;
  v10 = v3;
  v359[256] = *MEMORY[0x1E69E9840];
  v11 = *(v3 + 104);
  v12 = bswap32(*(v11 + 4));
  if ((v12 & 0x20000000) == 0 && *(v3 + 80) != v12 >> 31)
  {
    return 0;
  }

  if ((v12 & 0x40000000) != 0)
  {
    v13 = -1;
  }

  else
  {
    v13 = 1;
  }

  *(v3 + 12) = v13;
  if ((v12 & 0x10000000) != 0)
  {
    *(v3 + 12) = *(v4 + 24) * v13;
  }

  v14 = *(v4 + 16);
  v321 = v4;
  v322 = v3;
  if (v14 != 1)
  {
    if (v14)
    {
      memset(__b, 170, sizeof(__b));
      v15 = 0;
      memset(v324, 170, sizeof(v324));
      v323 = -1431655766;
      if (v12 > 1u)
      {
        switch(v12)
        {
          case 2u:
            if ((v11 + 40) > *(v10 + 112) || !TAATMorphSubtableMorx::InitLigatureState(v10, __b))
            {
              return 0xFFFFFFFFLL;
            }

            if (TAATMorphSubtableMorx::FetchInitialClass(v10, v9, v8, v6, &v324[1], v324, &v323))
            {
              v212 = v324[0];
              Class = v323;
              v214 = HIWORD(v323);
              v326 = *&v324[1];
              v296 = TRunGlue::TGlyph::glyphID(&v326);
              v15 = 0;
              v215 = 0;
              v216 = 0;
              v282 = 0;
              memset(v338, 170, sizeof(v338));
              v336 = 0uLL;
              v337 = 0;
              v339 = v338;
              v217 = __b[128];
              v218 = 0xFFFF;
              while (1)
              {
                v304 = v218;
                v291 = Class;
                v219 = v215;
                v220 = v282;
                v268 = v212;
                while (!v212 || v296 != 0xFFFF && (TRunGlue::IsDeleted(v326, *(&v326 + 1)) & 1) == 0)
                {
                  v221 = (*&__b[129] + 2 * *(&__b[128] + 1) * v214 + 2 * v291);
                  v222 = *(v10 + 104);
                  v223 = *(v10 + 112);
                  if (v222 > v221 || (v221 + 1) > v223)
                  {
                    goto LABEL_465;
                  }

                  if (v220 == v221)
                  {
                    v300 = v214;
                  }

                  else
                  {
                    v216 = (*(&__b[129] + 1) + 6 * (bswap32(*v221) >> 16));
                    if (v222 > v216 || (v216 + 3) > v223)
                    {
                      goto LABEL_465;
                    }

                    v300 = bswap32(*v216) >> 16;
                    v219 = bswap32(v216[1]) >> 16;
                    v304 = v214;
                    v220 = *&__b[129] + 2 * *(&__b[128] + 1) * v214 + 2 * v291;
                  }

                  v214 = v300;
                  v226 = v296;
                  v218 = v304;
                  if (v219 < 0x2000u)
                  {
                    goto LABEL_446;
                  }

                  if ((v219 & 0x8000) != 0)
                  {
                    v227 = v217 + 1;
                    LODWORD(__b[128]) = v217 + 1;
                    if (v217 > 126)
                    {
                      v217 = 0;
                      v229 = 0;
                      LODWORD(__b[128]) = 0;
                    }

                    else
                    {
                      v228 = DWORD1(__b[128]);
                      if (v227 > SDWORD1(__b[128]))
                      {
                        v228 = v217 + 1;
                      }

                      DWORD1(__b[128]) = v228;
                      v229 = v227;
                      ++v217;
                    }

                    v230 = *(&v326 + 1);
                    v231 = &__b[v229];
                    *v231 = v326;
                    v231[1] = v230;
                    if ((v219 & 0x2000) == 0)
                    {
LABEL_391:
                      if ((v219 & 0x4000) != 0)
                      {
                        goto LABEL_435;
                      }

                      goto LABEL_446;
                    }
                  }

                  else if ((v219 & 0x2000) == 0)
                  {
                    goto LABEL_391;
                  }

                  if (v217 < 0)
                  {
                    goto LABEL_465;
                  }

                  v271 = v219;
                  v278 = v216;
                  v274 = v219;
                  v232 = bswap32(v216[2]) >> 16;
                  memset(v359, 170, 0x800uLL);
                  v233 = *(v10 + 104);
                  v310 = v233 + bswap32(v233[9]) + 12;
                  v314 = v233 + bswap32(v233[8]) + 12;
                  v234 = &v233[v232 + 3] + bswap32(v233[7]);
                  v235 = 0;
                  v335 = -1;
                  v334 = -1;
                  *&v236 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v236 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  v356 = v236;
                  v357 = v236;
                  v354 = v236;
                  v355 = v236;
                  v352 = v236;
                  v353 = v236;
                  v350 = v236;
                  v351 = v236;
                  v348 = v236;
                  v349 = v236;
                  v346 = v236;
                  v347 = v236;
                  v344 = v236;
                  v345 = v236;
                  v343 = v236;
                  v340 = 0;
                  v342 = 0;
                  v341 = 0;
                  v358 = &v343;
                  v329 = v10;
                  v330 = v321;
                  v331 = &v340;
                  v332 = &v335;
                  v333 = &v334;
                  v320 = -1;
                  v237 = DWORD1(__b[128]);
                  do
                  {
                    v31 = *(v10 + 104) > v234;
                    v234 += 4;
                    v238 = v31 || v234 > *(v10 + 112);
                    if (v238 || ((v239 = bswap32(*(v234 - 4)), v328 = __b[v217], v240 = (v314 + 2 * (TRunGlue::TGlyph::glyphID(&v328) + ((4 * v239) >> 2))), *(v10 + 104) <= v240) ? (v241 = (v240 + 1) > *(v10 + 112)) : (v241 = 1), v241))
                    {
LABEL_463:
                      v329 = &v340;
LABEL_464:
                      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v329);
LABEL_465:
                      v15 = 0xFFFFFFFFLL;
                      goto LABEL_466;
                    }

                    v235 += bswap32(*v240) >> 16;
                    TRunGlue::TGlyph::glyphID(&v328);
                    if (v239 >> 30)
                    {
                      v243 = (v310 + 2 * v235);
                      if (*(v322 + 13) > v243 || (v243 + 1) > *(v322 + 14))
                      {
                        goto LABEL_463;
                      }

                      if (v335 != -1)
                      {
                        TAATMorphSubtableMorx::DoLigatureAction<TRunGlue::TGlyphInVector>(TRunGlue&,unsigned short,TAATMorphSubtableMorx::MorxLigatureState *)::{lambda(void)#1}::operator()(&v329);
                        v341 = v340;
                      }

                      v245 = *(&v328 + 1);
                      v335 = *(&v328 + 1);
                      v334 = bswap32(*v243) >> 16;
                      if (v320 > 126)
                      {
                        goto LABEL_463;
                      }

                      v246 = &v359[2 * v320 + 2];
                      *v246 = v328;
                      v246[1] = v245;
                      v242 = (v239 & 0x80000000) == 0;
                      ++v320;
                    }

                    else
                    {
                      v327[0] = *(&v328 + 1);
                      std::vector<long,TInlineBufferAllocator<long,30ul>>::insert(&v340, v340, v327);
                      v242 = 1;
                    }

                    if (v217 >= 1)
                    {
                      --v217;
                    }

                    else
                    {
                      v217 = v237;
                    }

                    LODWORD(__b[128]) = v217;
                    v10 = v322;
                  }

                  while (v242);
                  TAATMorphSubtableMorx::DoLigatureAction<TRunGlue::TGlyphInVector>(TRunGlue&,unsigned short,TAATMorphSubtableMorx::MorxLigatureState *)::{lambda(void)#1}::operator()(&v329);
                  if (v320 < 0)
                  {
                    v212 = v268;
                    v216 = v278;
                    v214 = v300;
                  }

                  else
                  {
                    v247 = v320 + 1;
                    v248 = &v359[2 * v320 + 1];
                    v249 = v237;
                    v214 = v300;
                    do
                    {
                      if (v217 + 1 > v249)
                      {
                        v250 = v217 + 1;
                      }

                      else
                      {
                        v250 = v249;
                      }

                      if (v217 >= 127)
                      {
                        v217 = 0;
                      }

                      else
                      {
                        v237 = v250;
                        v249 = v250;
                        ++v217;
                      }

                      v251 = *v248;
                      v252 = &__b[v217];
                      *v252 = *(v248 - 1);
                      v252[1] = v251;
                      v248 -= 2;
                      --v247;
                    }

                    while (v247);
                    *&__b[128] = __PAIR64__(v237, v217);
                    v212 = v268;
                    v216 = v278;
                  }

                  v329 = &v340;
                  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v329);
                  v15 = 1;
                  v219 = v274;
                  v226 = v296;
                  v218 = v304;
                  if ((v271 & 0x4000) == 0)
                  {
                    goto LABEL_446;
                  }

LABEL_435:
                  LOWORD(v359[0]) = v226;
                  WORD1(v359[0]) = v218;
                  WORD2(v359[0]) = v214;
                  v253 = v336;
                  if (v336 != *(&v336 + 1))
                  {
                    while (*v253 != v226 || v253[1] != v218 || v253[2] != v214)
                    {
                      v253 += 3;
                      if (v253 == *(&v336 + 1))
                      {
                        goto LABEL_442;
                      }
                    }
                  }

                  if (v253 != *(&v336 + 1))
                  {
                    goto LABEL_446;
                  }

LABEL_442:
                  std::vector<std::tuple<unsigned short,unsigned short,unsigned short>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,unsigned short>,4ul>>::push_back[abi:fn200100](&v336, v359);
                  if (v212 >= 1)
                  {
                    v282 = v220;
                    v215 = v219;
                    goto LABEL_444;
                  }
                }

                v218 = v304;
LABEL_446:
                v282 = v220;
                *(&v336 + 1) = v336;
                v254 = v212 - 1;
                if (v212 > 1)
                {
                  v304 = v218;
                  v215 = v219;
                  *(&v326 + 1) += *(v10 + 12);
                  --v212;
LABEL_444:
                  v296 = TRunGlue::TGlyph::glyphID(&v326);
                  Class = TAATMorphSubtableMorx::FetchClass(v10, v296);
                  v218 = v304;
                }

                else
                {
                  v215 = v219;
                  Class = 0;
                  v212 = 0;
                  if (v254)
                  {
                    goto LABEL_466;
                  }
                }
              }
            }

            break;
          case 4u:
            goto LABEL_175;
          case 5u:
            if ((v11 + 32) > *(v10 + 112) || !TAATMorphSubtableMorx::InitContextualState(v10, v9, __b))
            {
              return 0xFFFFFFFFLL;
            }

            if (TAATMorphSubtableMorx::FetchInitialClass(v10, v9, v8, v6, &v324[1], v324, &v323))
            {
              v18 = v324[2];
              v17 = v324[1];
              v19 = v324[0];
              v20 = v323;
              return TAATMorphSubtableMorx::DoInsertionSubtable(v10, v9, __b, v17, v18, v19, v20);
            }

            break;
          default:
            return v15;
        }

        return 0;
      }

      if (v12)
      {
        if (v12 != 1)
        {
          return v15;
        }

        if ((v11 + 32) > *(v10 + 112) || !TAATMorphSubtableMorx::InitContextualState(v10, v9, __b))
        {
          return 0xFFFFFFFFLL;
        }

        if (!TAATMorphSubtableMorx::FetchInitialClass(v10, v9, v8, v6, &v324[1], v324, &v323))
        {
          return 0;
        }

        v70 = v324[0];
        v293 = v323;
        v71 = HIWORD(v323);
        v336 = *&v324[1];
        v72 = TRunGlue::TGlyph::glyphID(&v336);
        LODWORD(v15) = 0;
        memset(&v359[3], 170, 24);
        memset(v359, 0, 24);
        v359[6] = &v359[3];
        v73 = *&__b[0];
        v74 = __b[1];
        v307 = *(&__b[0] + 1);
        do
        {
LABEL_132:
          v75 = v71;
          v298 = v15;
          while (1)
          {
            if (v70 && (v72 == 0xFFFF || (TRunGlue::IsDeleted(v336, *(&v336 + 1)) & 1) != 0))
            {
              v15 = v298;
              v71 = v75;
              goto LABEL_167;
            }

            v76 = (v74 + 2 * v293 + 2 * v307 * v75);
            v77 = *(v322 + 13);
            v78 = *(v322 + 14);
            if (v77 > v76 || (v76 + 1) > v78)
            {
              goto LABEL_467;
            }

            v80 = (*(&v74 + 1) + 8 * (bswap32(*v76) >> 16));
            if (v77 > v80 || (v80 + 4) > v78)
            {
              goto LABEL_467;
            }

            v71 = bswap32(*v80) >> 16;
            v82 = bswap32(v80[1]) >> 16;
            v83 = v80[2];
            v84 = __rev16(v83);
            v85 = v80[3];
            v317 = __rev16(v85);
            if (v83 == 0xFFFF)
            {
              v86 = v321;
            }

            else
            {
              v86 = v321;
              v87 = TAATMorphSubtableMorx::DoContextualAction(v322, v321, v84, v321, v73);
              if (v87)
              {
                v15 = v87;
                v298 = v87;
                if (v87 < 1)
                {
                  goto LABEL_468;
                }
              }
            }

            if (v85 != 0xFFFF)
            {
              v88 = TAATMorphSubtableMorx::DoContextualAction(v322, v86, v317, v336, *(&v336 + 1));
              if (v88)
              {
                v298 = v88;
                if (v88 < 1)
                {
                  goto LABEL_467;
                }
              }
            }

            if (v82 < 0)
            {
              v73 = *(&v336 + 1);
            }

            if ((v82 & 0x4000) == 0)
            {
              break;
            }

            LOWORD(v340) = v72;
            WORD1(v340) = v75;
            WORD2(v340) = v71;
            v89 = v359[0];
            if (v359[0] != v359[1])
            {
              while (*v89 != v72 || v89[1] != v75 || v89[2] != v71)
              {
                v89 += 3;
                if (v89 == v359[1])
                {
                  goto LABEL_162;
                }
              }
            }

            if (v89 != v359[1])
            {
              break;
            }

LABEL_162:
            std::vector<std::tuple<unsigned short,unsigned short,unsigned short>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,unsigned short>,4ul>>::push_back[abi:fn200100](v359, &v340);
            v75 = v71;
            if (v70 >= 1)
            {
              LODWORD(v15) = v298;
LABEL_164:
              v72 = TRunGlue::TGlyph::glyphID(&v336);
              v293 = TAATMorphSubtableMorx::FetchClass(v322, v72);
              goto LABEL_132;
            }
          }

          v15 = v298;
LABEL_167:
          v359[1] = v359[0];
          v90 = v70 - 1;
          if (v70 > 1)
          {
            *(&v336 + 1) += *(v322 + 3);
            --v70;
            goto LABEL_164;
          }

          v293 = 0;
          v70 = 0;
        }

        while (!v90);
        goto LABEL_468;
      }

      if ((v11 + 28) > *(v10 + 112) || !TAATMorphSubtableMorx::InitRearrangementState(v10, v9, __b))
      {
        return 0xFFFFFFFFLL;
      }

      if (!TAATMorphSubtableMorx::FetchInitialClass(v10, v9, v8, v6, &v324[1], v324, &v323))
      {
        return 0;
      }

      v92 = v324[2];
      v91 = v324[1];
      v93 = v324[0];
      v94 = v323;
      return TAATMorphSubtableMorx::DoRearrangementSubtable(v10, v9, __b, v91, v92, v93, v94);
    }

    memset(__b, 170, sizeof(__b));
    v15 = 0;
    *(&v328 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&v328 = 0xAAAAAAAAAAAAAAAALL;
    v324[1] = 0xAAAAAAAAAAAAAAAALL;
    LODWORD(v335) = -1431655766;
    v16 = v12;
    if (v12 > 1u)
    {
      if (v12 != 2)
      {
        if (v12 == 4)
        {
LABEL_175:
          v95 = *(v10 + 112);
          if (v11 + 14 <= v95)
          {
            v96 = bswap32(*(v11 + 12)) >> 16;
            v15 = 0xFFFFFFFFLL;
            if (v96 <= 5)
            {
              if (v96)
              {
                if (v96 != 2 && v96 != 4)
                {
                  return v15;
                }

                goto LABEL_365;
              }

LABEL_459:
              TAATLookupTable::SetTable(v10 + 24, (v11 + 12), v95);
              return TAATMorphSubtable::DoSwashSubtable(v10, v9, v8, v9, v8 + v6, *(v10 + 104));
            }

LABEL_352:
            if (v96 != 6)
            {
              if (v96 == 10)
              {
                v255 = v11 + 20;
                if (v11 + 20 <= v95)
                {
                  v256 = v255 + (bswap32(*(v11 + 18)) >> 16) * (bswap32(*(v11 + 14)) >> 16);
                  if (v256 >= v255 && v256 <= v95)
                  {
                    goto LABEL_459;
                  }
                }
              }

              else if (v96 == 8)
              {
                v206 = v11 + 18;
                if (v11 + 18 <= v95)
                {
                  v207 = bswap32(*(v11 + 16)) >> 16;
                  v208 = v206 + 2 * v207;
                  v209 = v11 + 20 <= v95 ? (v95 - v206) >> 1 : 0;
                  v210 = v208 <= v95 && v208 >= v206;
                  if (v210 || v209 == v207)
                  {
                    goto LABEL_459;
                  }
                }
              }

              return v15;
            }

LABEL_365:
            if (v11 + 18 > v95)
            {
              return v15;
            }

            v211 = v11 + 24 + (bswap32(*(v11 + 16)) >> 16) * (bswap32(*(v11 + 14)) >> 16);
            if (v211 < v11 + 24 || v211 > v95)
            {
              return v15;
            }

            goto LABEL_459;
          }

          return 0xFFFFFFFFLL;
        }

LABEL_17:
        if (v16 != 5)
        {
          return v15;
        }

        if ((v11 + 32) > *(v10 + 112) || !TAATMorphSubtableMorx::InitContextualState(v10, v9, __b))
        {
          return 0xFFFFFFFFLL;
        }

        if (TAATMorphSubtableMorx::FetchInitialClass(v10, v9, v8, v6, &v328, &v324[1], &v335))
        {
          v18 = *(&v328 + 1);
          v17 = v328;
          v19 = v324[1];
          v20 = v335;
          return TAATMorphSubtableMorx::DoInsertionSubtable(v10, v9, __b, v17, v18, v19, v20);
        }

        return 0;
      }

      if ((v11 + 40) > *(v10 + 112) || !TAATMorphSubtableMorx::InitLigatureState(v10, __b))
      {
        return 0xFFFFFFFFLL;
      }

      if (!TAATMorphSubtableMorx::FetchInitialClass(v10, v9, v8, v6, &v328, &v324[1], &v335))
      {
        return 0;
      }

      v15 = 0;
      LOWORD(v97) = 0;
      v98 = 0;
      v99 = 0;
      v100 = 0;
      v101 = v324[1];
      v102 = v335;
      v259 = v328;
      v262 = *(v328 + 168) + 2 * *(v328 + 152);
      v272 = *(&v328 + 1);
      v280 = *(v262 + 2 * *(&v328 + 1));
      v103 = WORD1(v335);
      memset(v338, 170, sizeof(v338));
      v336 = 0uLL;
      v337 = 0;
      v339 = v338;
      v104 = LODWORD(__b[128]);
      v289 = 0xFFFF;
LABEL_185:
      if (v101)
      {
        v105 = v280 == 0xFFFF;
      }

      else
      {
        v105 = 0;
      }

      v106 = v105;
      v276 = v106;
      v285 = v102;
      v261 = v101;
      while (1)
      {
        if (v276)
        {
          v113 = v289;
LABEL_261:
          v289 = v113;
          *(&v336 + 1) = v336;
          v153 = v101 - 1;
          if (v101 > 1)
          {
            v152 = v104;
            v294 = v100;
            v272 += *(v10 + 12);
            --v101;
LABEL_259:
            v280 = *(v262 + 2 * v272);
            v102 = TAATMorphSubtableMorx::FetchClass(v10, v280);
            v100 = v294;
            v104 = v152;
            goto LABEL_185;
          }

          v102 = 0;
          v101 = 0;
          if (v153)
          {
LABEL_466:
            v257 = &v336;
            goto LABEL_469;
          }

          goto LABEL_185;
        }

        v107 = (*&__b[129] + 2 * *(&__b[128] + 1) * v103 + 2 * v285);
        v108 = *(v10 + 104);
        v109 = *(v10 + 112);
        if (v108 > v107 || (v107 + 1) > v109)
        {
          goto LABEL_465;
        }

        if (v100 == v107)
        {
          v112 = v104;
          v294 = v100;
        }

        else
        {
          v98 = bswap32(*v107) >> 16;
          v99 = (*(&__b[129] + 1) + 6 * v98);
          if (v108 > v99 || v99 + 6 > v109)
          {
            goto LABEL_465;
          }

          v112 = v104;
          v289 = v103;
          v97 = bswap32(*(v99 + 1)) >> 16;
          v103 = bswap32(*v99) >> 16;
          v294 = v107;
        }

        v113 = v289;
        v100 = v294;
        v104 = v112;
        v114 = v280;
        if (v97 < 0x2000u)
        {
          goto LABEL_261;
        }

        if ((v97 & 0x8000) != 0)
        {
          v115 = v112 + 1;
          LODWORD(__b[128]) = v112 + 1;
          if (v112 > 126)
          {
            v104 = 0;
            v117 = 0;
            LODWORD(__b[128]) = 0;
          }

          else
          {
            v116 = DWORD1(__b[128]);
            if (v115 > SDWORD1(__b[128]))
            {
              v116 = v112 + 1;
            }

            DWORD1(__b[128]) = v116;
            v117 = v115;
            v104 = (v112 + 1);
          }

          v118 = &__b[v117];
          *v118 = v259;
          v118[1] = v272;
          if ((v97 & 0x2000) != 0)
          {
LABEL_215:
            if ((v104 & 0x80000000) != 0)
            {
              goto LABEL_465;
            }

            v264 = v103;
            v266 = v99;
            v269 = v98;
            v119 = bswap32(*(v99 + 2)) >> 16;
            v120 = v104;
            memset(v359, 170, 0x800uLL);
            v121 = *(v10 + 104);
            v308 = v121 + bswap32(v121[8]) + 12;
            v299 = v121 + bswap32(v121[9]) + 12;
            v122 = &v121[v119 + 3] + bswap32(v121[7]);
            LODWORD(v123) = v120;
            v124 = 0;
            *&v326 = -1;
            LOWORD(v324[0]) = -1;
            *&v125 = 0xAAAAAAAAAAAAAAAALL;
            *(&v125 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v356 = v125;
            v357 = v125;
            v354 = v125;
            v355 = v125;
            v352 = v125;
            v353 = v125;
            v350 = v125;
            v351 = v125;
            v348 = v125;
            v349 = v125;
            v346 = v125;
            v347 = v125;
            v344 = v125;
            v345 = v125;
            v343 = v125;
            v340 = 0;
            v342 = 0;
            v341 = 0;
            v358 = &v343;
            v329 = v10;
            v330 = v321;
            v331 = &v340;
            v332 = &v326;
            v333 = v324;
            v312 = -1;
            v302 = DWORD1(__b[128]);
            do
            {
              v126 = *(v10 + 104);
              v127 = *(v10 + 112);
              v31 = v126 > v122;
              v122 += 4;
              v128 = v31 || v122 > v127;
              if (v128 || ((v129 = bswap32(*(v122 - 4)), v130 = &__b[v123], v131 = *v130, v132 = v130[1], v133 = (v308 + 2 * (*(*(*v130 + 168) + 2 * *(*v130 + 152) + 2 * v132) + ((4 * v129) >> 2))), v126 <= v133) ? (v134 = (v133 + 1) > v127) : (v134 = 1), v134))
              {
LABEL_461:
                v329 = &v340;
                goto LABEL_464;
              }

              v135 = v124 + (bswap32(*v133) >> 16);
              v318 = v123;
              if (v129 >> 30)
              {
                v138 = (v299 + 2 * v135);
                if (v126 > v138 || (v138 + 1) > v127)
                {
                  goto LABEL_461;
                }

                if (v326 != -1)
                {
                  v140 = v135;
                  TAATMorphSubtableMorx::DoLigatureAction<TRunGlue::TGlyphInVector>(TRunGlue&,unsigned short,TAATMorphSubtableMorx::MorxLigatureState *)::{lambda(void)#1}::operator()(&v329);
                  v135 = v140;
                  v341 = v340;
                }

                *&v326 = v132;
                LOWORD(v324[0]) = bswap32(*v138) >> 16;
                if (v312 > 126)
                {
                  goto LABEL_461;
                }

                v136 = v135;
                v141 = &v359[2 * v312 + 2];
                *v141 = v131;
                v141[1] = v132;
                v137 = (v129 & 0x80000000) == 0;
                ++v312;
              }

              else
              {
                v136 = v135;
                v327[0] = v132;
                std::vector<long,TInlineBufferAllocator<long,30ul>>::insert(&v340, v340, v327);
                v137 = 1;
              }

              v142 = v302;
              if (v318 >= 1)
              {
                v123 = (v318 - 1);
              }

              else
              {
                v123 = v302;
              }

              v10 = v322;
              v124 = v136;
            }

            while (v137);
            v143 = v123;
            LODWORD(__b[128]) = v123;
            TAATMorphSubtableMorx::DoLigatureAction<TRunGlue::TGlyphInVector>(TRunGlue&,unsigned short,TAATMorphSubtableMorx::MorxLigatureState *)::{lambda(void)#1}::operator()(&v329);
            v101 = v261;
            if (v312 < 0)
            {
              v98 = v269;
              v103 = v264;
              v99 = v266;
            }

            else
            {
              v144 = v312 + 1;
              v145 = &v359[2 * v312 + 1];
              v146 = v302;
              v98 = v269;
              v103 = v264;
              v99 = v266;
              LODWORD(v147) = v143;
              do
              {
                if (v147 + 1 > v146)
                {
                  v148 = v147 + 1;
                }

                else
                {
                  v148 = v146;
                }

                if (v147 >= 127)
                {
                  v147 = 0;
                }

                else
                {
                  v142 = v148;
                  v146 = v148;
                  v147 = (v147 + 1);
                }

                v149 = *v145;
                v150 = &__b[v147];
                *v150 = *(v145 - 1);
                v150[1] = v149;
                v145 -= 2;
                --v144;
              }

              while (v144);
              v143 = v147;
              *&__b[128] = __PAIR64__(v142, v147);
            }

            v329 = &v340;
            std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v329);
            v15 = 1;
            v100 = v294;
            v104 = v143;
            v114 = v280;
            v113 = v289;
            if ((v97 & 0x4000) == 0)
            {
              goto LABEL_261;
            }

            goto LABEL_251;
          }
        }

        else if ((v97 & 0x2000) != 0)
        {
          goto LABEL_215;
        }

        if ((v97 & 0x4000) == 0)
        {
          goto LABEL_261;
        }

LABEL_251:
        LOWORD(v359[0]) = v114;
        WORD1(v359[0]) = v113;
        WORD2(v359[0]) = v103;
        v151 = v336;
        if (v336 != *(&v336 + 1))
        {
          while (*v151 != v114 || v151[1] != v113 || v151[2] != v103)
          {
            v151 += 3;
            if (v151 == *(&v336 + 1))
            {
              goto LABEL_258;
            }
          }
        }

        if (v151 != *(&v336 + 1))
        {
          goto LABEL_261;
        }

LABEL_258:
        v152 = v104;
        std::vector<std::tuple<unsigned short,unsigned short,unsigned short>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,unsigned short>,4ul>>::push_back[abi:fn200100](&v336, v359);
        v104 = v152;
        v100 = v294;
        if (v101 >= 1)
        {
          goto LABEL_259;
        }
      }
    }

    if (v12)
    {
      if (v12 != 1)
      {
        return v15;
      }

      if ((v11 + 32) > *(v10 + 112) || !TAATMorphSubtableMorx::InitContextualState(v10, v9, __b))
      {
        return 0xFFFFFFFFLL;
      }

      if (!TAATMorphSubtableMorx::FetchInitialClass(v10, v9, v8, v6, &v328, &v324[1], &v335))
      {
        return 0;
      }

      LODWORD(v15) = 0;
      v311 = v324[1];
      v315 = *(&v328 + 1);
      v283 = v335;
      v22 = WORD1(v335);
      v275 = v328;
      v279 = *(v328 + 168) + 2 * *(v328 + 152);
      v23 = *(v279 + 2 * *(&v328 + 1));
      memset(&v359[3], 170, 24);
      memset(v359, 0, 24);
      v359[6] = &v359[3];
      v24 = *&__b[0];
      v25 = __b[1];
      v297 = *(&__b[0] + 1);
      do
      {
LABEL_37:
        if (v311)
        {
          v26 = v23 == 0xFFFF;
        }

        else
        {
          v26 = 0;
        }

        v27 = v26;
        v305 = v27;
        v287 = v15;
        while (1)
        {
          if (v305)
          {
            v42 = v359[0];
            v15 = v287;
            goto LABEL_75;
          }

          v28 = (v25 + 2 * v283 + 2 * v297 * v22);
          v29 = *(v322 + 13);
          v30 = *(v322 + 14);
          v31 = v29 > v28 || (v28 + 1) > v30;
          if (v31)
          {
            goto LABEL_467;
          }

          v32 = (*(&v25 + 1) + 8 * (bswap32(*v28) >> 16));
          if (v29 > v32 || (v32 + 4) > v30)
          {
            goto LABEL_467;
          }

          v34 = bswap32(*v32) >> 16;
          v35 = bswap32(v32[1]) >> 16;
          v36 = v32[2];
          v37 = __rev16(v36);
          v38 = v32[3];
          v39 = __rev16(v38);
          if (v36 != 0xFFFF)
          {
            v40 = TAATMorphSubtableMorx::DoContextualAction(v322, v321, v37, v321, v24);
            if (v40)
            {
              v15 = v40;
              v287 = v40;
              if (v40 < 1)
              {
                goto LABEL_468;
              }
            }
          }

          if (v38 != 0xFFFF)
          {
            v41 = TAATMorphSubtableMorx::DoContextualAction(v322, v321, v39, v275, v315);
            if (v41)
            {
              v287 = v41;
              if (v41 < 1)
              {
                goto LABEL_467;
              }
            }
          }

          if (v35 < 0)
          {
            v24 = v315;
          }

          v42 = v359[0];
          if ((v35 & 0x4000) == 0)
          {
            break;
          }

          LOWORD(v340) = v23;
          WORD1(v340) = v22;
          WORD2(v340) = v34;
          v43 = v359[0];
          if (v359[0] != v359[1])
          {
            v43 = v359[0];
            while (*v43 != v23 || v43[1] != v22 || v43[2] != v34)
            {
              v43 += 3;
              if (v43 == v359[1])
              {
                goto LABEL_70;
              }
            }
          }

          if (v43 != v359[1])
          {
            v15 = v287;
            LOWORD(v22) = v34;
            v44 = v322;
            goto LABEL_76;
          }

LABEL_70:
          std::vector<std::tuple<unsigned short,unsigned short,unsigned short>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,unsigned short>,4ul>>::push_back[abi:fn200100](v359, &v340);
          LOWORD(v22) = v34;
          if (v311 >= 1)
          {
            LOWORD(v22) = v34;
            LODWORD(v15) = v287;
            v44 = v322;
LABEL_72:
            v23 = *(v279 + 2 * v315);
            v283 = TAATMorphSubtableMorx::FetchClass(v44, v23);
            goto LABEL_37;
          }
        }

        v15 = v287;
        LOWORD(v22) = v34;
LABEL_75:
        v44 = v322;
LABEL_76:
        v359[1] = v42;
        v45 = v311 - 1;
        if (v311 > 1)
        {
          --v311;
          v315 += v44[3];
          goto LABEL_72;
        }

        v283 = 0;
        v311 = 0;
      }

      while (!v45);
LABEL_468:
      v257 = v359;
LABEL_469:
      std::vector<std::tuple<unsigned short,unsigned short,unsigned short>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](v257);
      return v15;
    }

LABEL_171:
    if ((v11 + 28) > *(v10 + 112) || !TAATMorphSubtableMorx::InitRearrangementState(v10, v9, __b))
    {
      return 0xFFFFFFFFLL;
    }

    if (!TAATMorphSubtableMorx::FetchInitialClass(v10, v9, v8, v6, &v328, &v324[1], &v335))
    {
      return 0;
    }

    v92 = *(&v328 + 1);
    v91 = v328;
    v93 = v324[1];
    v94 = v335;
    return TAATMorphSubtableMorx::DoRearrangementSubtable(v10, v9, __b, v91, v92, v93, v94);
  }

  memset(__b, 170, sizeof(__b));
  v15 = 0;
  *(&v328 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v328 = 0xAAAAAAAAAAAAAAAALL;
  v324[1] = 0xAAAAAAAAAAAAAAAALL;
  LODWORD(v335) = -1431655766;
  v16 = v12;
  if (v12 <= 1u)
  {
    if (v12)
    {
      if (v12 != 1)
      {
        return v15;
      }

      if ((v11 + 32) > *(v10 + 112) || !TAATMorphSubtableMorx::InitContextualState(v10, v9, __b))
      {
        return 0xFFFFFFFFLL;
      }

      if (TAATMorphSubtableMorx::FetchInitialClass(v10, v9, v8, v6, &v328, &v324[1], &v335))
      {
        LODWORD(v15) = 0;
        v47 = *(&v328 + 1);
        v46 = v328;
        v48 = v324[1];
        v288 = v335;
        v49 = WORD1(v335);
        v284 = *(v328 + 168);
        v50 = *(v284 + 2 * *(&v328 + 1));
        memset(&v359[3], 170, 24);
        memset(v359, 0, 24);
        v359[6] = &v359[3];
        v316 = *&__b[0];
        v51 = __b[1];
        v301 = *(&__b[0] + 1);
LABEL_87:
        while (1)
        {
          v306 = v48;
          v52 = v49;
          v292 = v15;
          while (1)
          {
            if (v48 && (v50 == 0xFFFF || (TRunGlue::IsDeleted(v46, v47) & 1) != 0))
            {
              v15 = v292;
              v49 = v52;
              goto LABEL_122;
            }

            v53 = (v51 + 2 * v288 + 2 * v301 * v52);
            v54 = *(v322 + 13);
            v55 = *(v322 + 14);
            if (v54 > v53 || (v53 + 1) > v55)
            {
              goto LABEL_467;
            }

            v57 = (*(&v51 + 1) + 8 * (bswap32(*v53) >> 16));
            if (v54 > v57 || (v57 + 4) > v55)
            {
              goto LABEL_467;
            }

            v49 = bswap32(*v57) >> 16;
            v59 = bswap32(v57[1]) >> 16;
            v60 = v57[2];
            v61 = __rev16(v60);
            v62 = v57[3];
            v63 = __rev16(v62);
            if (v60 == 0xFFFF)
            {
              v48 = v306;
            }

            else
            {
              v64 = TAATMorphSubtableMorx::DoContextualAction(v322, v321, v61, v321, v316);
              v48 = v306;
              if (v64)
              {
                v15 = v64;
                v292 = v64;
                if (v64 < 1)
                {
                  goto LABEL_468;
                }
              }
            }

            if (v62 != 0xFFFF)
            {
              v65 = TAATMorphSubtableMorx::DoContextualAction(v322, v321, v63, v46, v47);
              if (v65)
              {
                v292 = v65;
                if (v65 < 1)
                {
LABEL_467:
                  v15 = 0xFFFFFFFFLL;
                  goto LABEL_468;
                }
              }
            }

            v66 = v316;
            if (v59 < 0)
            {
              v66 = v47;
            }

            v316 = v66;
            if ((v59 & 0x4000) == 0)
            {
              break;
            }

            LOWORD(v340) = v50;
            WORD1(v340) = v52;
            WORD2(v340) = v49;
            v67 = v359[0];
            if (v359[0] != v359[1])
            {
              while (*v67 != v50 || v67[1] != v52 || v67[2] != v49)
              {
                v67 += 3;
                if (v67 == v359[1])
                {
                  goto LABEL_117;
                }
              }
            }

            if (v67 != v359[1])
            {
              break;
            }

LABEL_117:
            std::vector<std::tuple<unsigned short,unsigned short,unsigned short>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,unsigned short>,4ul>>::push_back[abi:fn200100](v359, &v340);
            v52 = v49;
            if (v48 >= 1)
            {
              LODWORD(v15) = v292;
              v68 = v322;
LABEL_119:
              v50 = *(v284 + 2 * v47);
              v288 = TAATMorphSubtableMorx::FetchClass(v68, v50);
              goto LABEL_87;
            }
          }

          v15 = v292;
LABEL_122:
          v359[1] = v359[0];
          v69 = v48 - 1;
          if (v48 > 1)
          {
            break;
          }

          v288 = 0;
          v48 = 0;
          if (v69)
          {
            goto LABEL_468;
          }
        }

        v68 = v322;
        v47 += *(v322 + 3);
        --v48;
        goto LABEL_119;
      }

      return 0;
    }

    goto LABEL_171;
  }

  if (v12 == 2)
  {
    if ((v11 + 40) > *(v10 + 112) || !TAATMorphSubtableMorx::InitLigatureState(v10, __b))
    {
      return 0xFFFFFFFFLL;
    }

    if (!TAATMorphSubtableMorx::FetchInitialClass(v10, v9, v8, v6, &v328, &v324[1], &v335))
    {
      return 0;
    }

    v15 = 0;
    LOWORD(v154) = 0;
    v155 = 0;
    v156 = 0;
    v270 = v324[1];
    v273 = 0;
    v157 = v335;
    v267 = v328;
    v260 = *(v328 + 168);
    v277 = *(&v328 + 1);
    v286 = *(v260 + 2 * *(&v328 + 1));
    v158 = WORD1(v335);
    memset(v338, 170, sizeof(v338));
    v336 = 0uLL;
    v337 = 0;
    v339 = v338;
    v159 = LODWORD(__b[128]);
    v290 = -1;
LABEL_269:
    v281 = v157;
    v160 = v270;
    while (1)
    {
      if (v160 && (v286 == 0xFFFF || (TRunGlue::IsDeleted(v267, v277) & 1) != 0))
      {
        v167 = v159;
LABEL_340:
        v159 = v167;
        *(&v336 + 1) = v336;
        v204 = v270 - 1;
        if (v270 > 1)
        {
          v277 += *(v10 + 12);
          --v270;
LABEL_338:
          v286 = *(v260 + 2 * v277);
          v157 = TAATMorphSubtableMorx::FetchClass(v10, v286);
        }

        else
        {
          v157 = 0;
          v270 = 0;
          if (v204)
          {
            goto LABEL_466;
          }
        }

        goto LABEL_269;
      }

      v161 = (*&__b[129] + 2 * *(&__b[128] + 1) * v158 + 2 * v281);
      v162 = *(v10 + 104);
      v163 = *(v10 + 112);
      if (v162 > v161 || (v161 + 1) > v163)
      {
        goto LABEL_465;
      }

      if (v273 != v161)
      {
        v155 = bswap32(*v161) >> 16;
        v156 = (*(&__b[129] + 1) + 6 * v155);
        if (v162 > v156 || (v156 + 3) > v163)
        {
          goto LABEL_465;
        }

        v290 = v158;
        v154 = bswap32(v156[1]) >> 16;
        v158 = bswap32(*v156) >> 16;
        v273 = v161;
      }

      v166 = v154;
      v167 = v159;
      if (v154 < 0x2000u)
      {
        goto LABEL_340;
      }

      if ((v154 & 0x8000) != 0)
      {
        v170 = v159 + 1;
        LODWORD(__b[128]) = v159 + 1;
        if (v159 > 126)
        {
          v167 = 0;
          v172 = 0;
          LODWORD(__b[128]) = 0;
        }

        else
        {
          v171 = DWORD1(__b[128]);
          if (v170 > SDWORD1(__b[128]))
          {
            v171 = v159 + 1;
          }

          DWORD1(__b[128]) = v171;
          v172 = v170;
          v167 = (v159 + 1);
        }

        v168 = v286;
        v169 = v290;
        v173 = &__b[v172];
        *v173 = v267;
        v173[1] = v277;
        if ((v154 & 0x2000) == 0)
        {
          goto LABEL_329;
        }
      }

      else
      {
        v168 = v286;
        v169 = v290;
        if ((v154 & 0x2000) == 0)
        {
          goto LABEL_329;
        }
      }

      if ((v167 & 0x80000000) != 0)
      {
        goto LABEL_465;
      }

      v263 = v156;
      v265 = v155;
      v174 = bswap32(v156[2]) >> 16;
      v175 = v167;
      memset(v359, 170, 0x800uLL);
      v176 = *(v10 + 104);
      v309 = v176 + bswap32(v176[8]) + 12;
      v295 = v176 + bswap32(v176[9]) + 12;
      v177 = &v176[v174 + 3] + bswap32(v176[7]);
      LODWORD(v178) = v175;
      v179 = 0;
      *&v326 = -1;
      LOWORD(v324[0]) = -1;
      *&v180 = 0xAAAAAAAAAAAAAAAALL;
      *(&v180 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v356 = v180;
      v357 = v180;
      v354 = v180;
      v355 = v180;
      v352 = v180;
      v353 = v180;
      v350 = v180;
      v351 = v180;
      v348 = v180;
      v349 = v180;
      v346 = v180;
      v347 = v180;
      v344 = v180;
      v345 = v180;
      v343 = v180;
      v340 = 0;
      v342 = 0;
      v341 = 0;
      v358 = &v343;
      v329 = v10;
      v330 = v9;
      v331 = &v340;
      v332 = &v326;
      v333 = v324;
      v313 = -1;
      v303 = DWORD1(__b[128]);
      do
      {
        v181 = *(v10 + 104);
        v182 = *(v10 + 112);
        v31 = v181 > v177;
        v177 += 4;
        v183 = v31 || v177 > v182;
        if (v183 || ((v184 = bswap32(*(v177 - 4)), v185 = &__b[v178], v186 = *v185, v187 = v185[1], v188 = (v309 + 2 * (*(*(*v185 + 168) + 2 * v187) + ((4 * v184) >> 2))), v181 <= v188) ? (v189 = (v188 + 1) > v182) : (v189 = 1), v189))
        {
LABEL_462:
          v329 = &v340;
          goto LABEL_464;
        }

        v179 += bswap32(*v188) >> 16;
        v319 = v178;
        if (v184 >> 30)
        {
          v191 = (v295 + 2 * v179);
          if (v181 > v191 || (v191 + 1) > v182)
          {
            goto LABEL_462;
          }

          if (v326 != -1)
          {
            TAATMorphSubtableMorx::DoLigatureAction<TRunGlue::TGlyphInVector>(TRunGlue&,unsigned short,TAATMorphSubtableMorx::MorxLigatureState *)::{lambda(void)#1}::operator()(&v329);
            v341 = v340;
          }

          *&v326 = v187;
          LOWORD(v324[0]) = bswap32(*v191) >> 16;
          if (v313 > 126)
          {
            goto LABEL_462;
          }

          v193 = &v359[2 * v313 + 2];
          *v193 = v186;
          v193[1] = v187;
          v190 = (v184 & 0x80000000) == 0;
          ++v313;
        }

        else
        {
          v327[0] = v187;
          std::vector<long,TInlineBufferAllocator<long,30ul>>::insert(&v340, v340, v327);
          v190 = 1;
        }

        v194 = v303;
        if (v319 >= 1)
        {
          v178 = (v319 - 1);
        }

        else
        {
          v178 = v303;
        }

        v10 = v322;
      }

      while (v190);
      v195 = v178;
      LODWORD(__b[128]) = v178;
      TAATMorphSubtableMorx::DoLigatureAction<TRunGlue::TGlyphInVector>(TRunGlue&,unsigned short,TAATMorphSubtableMorx::MorxLigatureState *)::{lambda(void)#1}::operator()(&v329);
      if (v313 < 0)
      {
        v9 = v321;
        v155 = v265;
        v156 = v263;
      }

      else
      {
        v196 = v313 + 1;
        v197 = &v359[2 * v313 + 1];
        v198 = v303;
        v9 = v321;
        v155 = v265;
        v156 = v263;
        LODWORD(v199) = v195;
        do
        {
          if (v199 + 1 > v198)
          {
            v200 = v199 + 1;
          }

          else
          {
            v200 = v198;
          }

          if (v199 >= 127)
          {
            v199 = 0;
          }

          else
          {
            v194 = v200;
            v198 = v200;
            v199 = (v199 + 1);
          }

          v201 = *v197;
          v202 = &__b[v199];
          *v202 = *(v197 - 1);
          v202[1] = v201;
          v197 -= 2;
          --v196;
        }

        while (v196);
        v195 = v199;
        *&__b[128] = __PAIR64__(v194, v199);
      }

      v329 = &v340;
      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v329);
      v15 = 1;
      v167 = v195;
      v168 = v286;
      v169 = v290;
      v166 = v154;
LABEL_329:
      if ((v166 & 0x4000) == 0)
      {
        goto LABEL_340;
      }

      LOWORD(v359[0]) = v168;
      WORD1(v359[0]) = v169;
      WORD2(v359[0]) = v158;
      v203 = v336;
      if (v336 != *(&v336 + 1))
      {
        while (*v203 != v168 || v203[1] != v169 || v203[2] != v158)
        {
          v203 += 3;
          if (v203 == *(&v336 + 1))
          {
            goto LABEL_337;
          }
        }
      }

      if (v203 != *(&v336 + 1))
      {
        goto LABEL_340;
      }

LABEL_337:
      v159 = v167;
      std::vector<std::tuple<unsigned short,unsigned short,unsigned short>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,unsigned short>,4ul>>::push_back[abi:fn200100](&v336, v359);
      v160 = v270;
      if (v270 >= 1)
      {
        goto LABEL_338;
      }
    }
  }

  if (v12 != 4)
  {
    goto LABEL_17;
  }

  v95 = *(v10 + 112);
  if (v11 + 14 > v95)
  {
    return 0xFFFFFFFFLL;
  }

  v96 = bswap32(*(v11 + 12)) >> 16;
  v15 = 0xFFFFFFFFLL;
  if (v96 > 5)
  {
    goto LABEL_352;
  }

  if (!v96)
  {
    goto LABEL_459;
  }

  if (v96 == 2 || v96 == 4)
  {
    goto LABEL_365;
  }

  return v15;
}

uint64_t std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](uint64_t result, uint64_t *a2)
{
  v3 = result;
  v5 = *(result + 8);
  v4 = *(result + 16);
  if (v5 >= v4)
  {
    v7 = *result;
    v8 = v5 - *result;
    v9 = v8 >> 3;
    v10 = (v8 >> 3) + 1;
    if (v10 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v11 = v4 - v7;
    if (v11 >> 2 > v10)
    {
      v10 = v11 >> 2;
    }

    v12 = v11 >= 0x7FFFFFFFFFFFFFF8;
    v13 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v12)
    {
      v13 = v10;
    }

    v14 = result + 24;
    v23[4] = v3 + 24;
    if (v13)
    {
      v15 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<long,30ul>>(v14, v13);
      v13 = v16;
      v7 = *v3;
      v8 = *(v3 + 8) - *v3;
    }

    else
    {
      v15 = 0;
    }

    v17 = (v15 + 8 * v9);
    v18 = v15 + 8 * v13;
    v19 = *a2;
    v20 = &v17[-(v8 >> 3)];
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
    result = std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(v23);
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 8) = v6;
  return result;
}

uint64_t std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_2,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_2>,void ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t result, __int16 *a2, __int16 *a3, unsigned __int16 *a4)
{
  v4 = *a4;
  v5 = *(result + 16);
  if (v5 > v4)
  {
    v6 = *a2;
    v7 = *a3;
    v8 = *(result + 8);
    v10 = *(result + 24);
    v9 = *(result + 32);
    v11 = *(v8 + 104);
    v12 = *(v8 + 112);
    v13 = (v10 + 2 * *a4);
    if (v13 >= v11 && (v13 + 1) <= v12)
    {
      v15 = (v9 + 6 * (bswap32(*v13) >> 16));
      if (v15 >= v11 && (v15 + 3) <= v12)
      {
        v17 = v15[1];
        v18 = *v15;
        if ((v17 & 0xE0) != 0 || v18 != 0)
        {
          return std::function<void ()(unsigned short,unsigned short)>::operator()(result + 40, v6, v7);
        }
      }
    }

    if (*(result + 72))
    {
      v20 = (v10 + 2 * (v4 + v5 * *(result + 72)));
      if (v20 >= v11 && (v20 + 1) <= v12)
      {
        v22 = (v9 + 6 * (bswap32(*v20) >> 16));
        if (v22 >= v11 && (v22 + 3) <= v12 && ((v22[1] & 0xE0) != 0 || *v22 != 0))
        {
          return std::function<void ()(unsigned short,unsigned short)>::operator()(result + 40, v6, v7);
        }
      }
    }
  }

  return result;
}

uint64_t std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<long,30ul>>(uint64_t a1, unint64_t a2)
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

uint64_t TAATMorphChainMorx::GetCoverage(TAATMorphChainMorx *this, unsigned int a2)
{
  v2 = *(this + 24);
  if (a2 >= ((*(this + 25) - v2) >> 3))
  {
    return 0;
  }

  else
  {
    return *(v2 + 8 * a2);
  }
}

uint64_t TAATMorphSubtableMorx::InitLigatureState(uint64_t a1, void *a2)
{
  a2[256] = -1;
  v4 = *(a1 + 104);
  v3 = *(a1 + 112);
  v5 = v4 + 3;
  a2[257] = bswap32(v4[3]);
  v6 = (v4 + bswap32(v4[4]) + 12);
  if (&v6->fsHeader > v3)
  {
    return 0;
  }

  v7 = 0;
  v8 = bswap32(v6->format) >> 16;
  if (v8 > 5)
  {
    if (v8 == 6)
    {
LABEL_24:
      if (v6->fsHeader.trimmedArray.valueArray > v3)
      {
        return 0;
      }

      values = &v6->fsHeader.vector + 10;
      v17 = bswap32(v6->fsHeader.theArray.lookupValues[0]) >> 16;
      nUnits = v6->fsHeader.segment.binSearch.nUnits;
      goto LABEL_28;
    }

    if (v8 == 10)
    {
      values = v6->fsHeader.vector.values;
      if (v6->fsHeader.vector.values > v3)
      {
        return 0;
      }

      v17 = bswap32(v6->fsHeader.theArray.lookupValues[0]) >> 16;
      nUnits = v6->fsHeader.segment.binSearch.searchRange;
LABEL_28:
      v19 = &values[(bswap32(nUnits) >> 16) * v17];
      if (v19 >= values && v19 <= v3)
      {
        goto LABEL_32;
      }

      return 0;
    }

    if (v8 != 8)
    {
      return v7;
    }

    p_searchRange = &v6->fsHeader.segment.binSearch.searchRange;
    if (v6->fsHeader.trimmedArray.valueArray > v3)
    {
      return 0;
    }

    v11 = bswap32(v6->fsHeader.segment.binSearch.nUnits) >> 16;
    v12 = &p_searchRange[v11];
    v13 = v6->fsHeader.vector.values <= v3 ? (v3 - p_searchRange) >> 1 : 0;
    v14 = v12 <= v3 && v12 >= p_searchRange;
    if (!v14 && v13 != v11)
    {
      return 0;
    }

LABEL_32:
    TAATLookupTable::SetTable(a1 + 24, v6, v3);
    a2[258] = v5 + bswap32(v4[5]);
    a2[259] = v5 + bswap32(v4[6]);
    return 1;
  }

  if (!v8)
  {
    goto LABEL_32;
  }

  if (v8 == 2 || v8 == 4)
  {
    goto LABEL_24;
  }

  return v7;
}

uint64_t TAATMorphSubtable::FindFirstGlyph(uint64_t a1, TRunGlue *this, uint64_t a3, uint64_t a4, void *a5, uint64_t *a6)
{
  if (a4 < 1)
  {
    return 0;
  }

  v11 = *(a1 + 12);
  v12 = TRunGlue::length(this);
  if (v11 >= 1)
  {
    *a5 = this;
    a5[1] = a3;
    v13 = v12 - a3;
    if (v12 == a3)
    {
      return 0;
    }

LABEL_8:
    *a6 = v13;
    return 1;
  }

  v13 = a3 + a4 - v12 + TRunGlue::length(this);
  if (v13)
  {
    *a5 = this;
    a5[1] = v13 - 1;
    goto LABEL_8;
  }

  return 0;
}

uint64_t TAATMorphSubtableMorx::FetchInitialClass(TAATMorphSubtableMorx *a1, TRunGlue *a2, uint64_t a3, uint64_t a4, TRunGlue::TGlyph *a5, uint64_t *a6, _WORD *a7)
{
  FirstGlyph = TAATMorphSubtable::FindFirstGlyph(a1, a2, a3, a4, a5, a6);
  if (FirstGlyph)
  {
    v11 = TRunGlue::TGlyph::glyphID(a5);
    *a7 = TAATMorphSubtableMorx::FetchClass(a1, v11);
    a7[1] = 0;
  }

  return FirstGlyph;
}

uint64_t TAATMorphSubtableMorx::FetchClass(TAATMorphSubtableMorx *this, int a2)
{
  if (a2 == 0xFFFF)
  {
    return 2;
  }

  v10 = v2;
  v11 = v3;
  v9 = 0xAAAAAAAAAAAAAAAALL;
  v4 = *(this + 3);
  v5 = *(this + 4);
  v6 = (this + (v5 >> 1) + 24);
  if (v5)
  {
    v4 = *(*v6 + v4);
  }

  v8 = v4(v6);
  if (v8)
  {
    return bswap32(*v8) >> 16;
  }

  else
  {
    return 1;
  }
}

unsigned __int16 *TAATLookupTable::LookupSingleTable(TAATLookupTable *this, unsigned int a2, unint64_t *a3)
{
  if (a2 == 0xFFFF)
  {
    return 0;
  }

  v3 = *(this + 2);
  v4 = bswap32(v3[1]) >> 16;
  if (v4 < 4 || !v3[2])
  {
    return 0;
  }

  v5 = __rev16(v3[2]) * v4 + 12;
  v6 = v3 + v5 > *(this + 5) || v5 - v4 < 2;
  if (v6 || v3 + v5 < v3 + v5 - v4)
  {
    return 0;
  }

  v8 = v3 + v5;
  v9 = v3 + 6;
  while (1)
  {
    v10 = bswap32(*v9) >> 16;
    if (v10 >= a2)
    {
      break;
    }

    v9 = (v9 + v4);
    if (v8 <= v9)
    {
      return 0;
    }
  }

  if (v10 != a2)
  {
    return 0;
  }

  *a3 = v4 - 2;
  return v9 + 1;
}

void TAATKerxEngine::TAATKerxEngine(TAATKerxEngine *this, TRunGlue *a2, CFDataRef theData)
{
  *this = a2;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 8) = 0;
  *(this + 7) = 0;
  *(this + 5) = 0;
  *(this + 6) = this + 56;
  *(this + 72) = 0;
  *(this + 10) = theData;
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    v6 = *this;
  }

  else
  {
    BytePtr = 0;
    v6 = a2;
  }

  v7 = *(v6 + 516);
  *(this + 14) = 0;
  v8 = (this + 112);
  *(this + 11) = BytePtr;
  *(this + 104) = v7;
  *(this + 15) = 0;
  *(this + 16) = 0;
  *(this + 49) = 0;
  *(this + 50) = 0;
  *(this + 47) = this + 136;
  *(this + 48) = 0;
  if (!BytePtr)
  {
    return;
  }

  v9 = &BytePtr[CFDataGetLength(*(this + 10))];
  *(this + 12) = v9;
  v10 = *(this + 11);
  v11 = v10 + 2;
  if ((v10 + 2) > v9 || (v12 = bswap32(*v10), (v12 & 0xFFFF0000) != 0x40000) && (v12 & 0xFFFE0000) != 0x20000)
  {
LABEL_69:
    v62 = TFont::DebugDescription(*(*this + 496));
    CFLog();

    v61 = *(*(*this + 496) + 408);
    (*(*v61 + 496))(v61);
    *(this + 11) = 0;
    return;
  }

  if (v12 < 0x30000)
  {
    return;
  }

  v13 = v10[1];
  if (!v13)
  {
    return;
  }

  v14 = bswap32(v13);
  if (v14 <= 1)
  {
    v15 = 1;
  }

  else
  {
    v15 = v14;
  }

  do
  {
    if ((v11 + 1) > v9)
    {
      goto LABEL_69;
    }

    v11 = (v11 + bswap32(*v11));
    if (v11 > v9)
    {
      goto LABEL_69;
    }

    --v15;
  }

  while (v15);
  v16 = &v11[v14];
  v18 = v10 > v11 || v16 < v11 || v16 > v9;
  if (v18)
  {
    v19 = (v11 + 1) > v9 || v10 > v11;
    v20 = (v9 - v11) >> 2;
    if (v19)
    {
      v20 = 0;
    }

    if (v20 != v14)
    {
      return;
    }
  }

  v21 = 0;
  v22 = *(a2 + 63);
  if (v22 <= 0x10000)
  {
    v23 = (v22 + 7) >> 3;
  }

  else
  {
    v23 = 0x2000;
  }

  v24 = 4 * v14;
  v25 = v11;
  while (1)
  {
    v26 = bswap32(*v25);
    if (v26 + 1 > 1)
    {
      break;
    }

    if (v13 == 0x1000000)
    {
      goto LABEL_72;
    }

    v27 = *(this + 15);
    v28 = *(this + 16);
    if (v27 >= v28)
    {
      v67 = 0xAAAAAAAAAAAAAAAALL;
      *&v51 = 0xAAAAAAAAAAAAAAAALL;
      *(&v51 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v65 = v51;
      v66 = v51;
      v52 = (v27 - *v8) >> 3;
      v53 = v52 + 1;
      if ((v52 + 1) >> 61)
      {
LABEL_76:
        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      v54 = v28 - *v8;
      if (v54 >> 2 > v53)
      {
        v53 = v54 >> 2;
      }

      if (v54 >= 0x7FFFFFFFFFFFFFF8)
      {
        v55 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v55 = v53;
      }

      std::__split_buffer<unsigned char const*,TInlineBufferAllocator<unsigned char const*,30ul> &>::__split_buffer(&v65, v55, v52, this + 136);
      *v66 = 0;
      *&v66 = v66 + 8;
      v56 = *(this + 14);
      v57 = *(this + 15) - v56;
      v58 = *(&v65 + 1) - v57;
      memcpy((*(&v65 + 1) - v57), v56, v57);
      v59 = *(this + 14);
      *(this + 14) = v58;
      v60 = *(this + 16);
      v64 = v66;
      *(this + 120) = v66;
      *&v66 = v59;
      *(&v66 + 1) = v60;
      *&v65 = v59;
      *(&v65 + 1) = v59;
      std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v65);
      v29 = v64;
    }

    else
    {
      *v27 = 0;
      v29 = v27 + 1;
    }

LABEL_66:
    *(this + 15) = v29;
    ++v25;
    v24 -= 4;
    if (!v24)
    {
      if (v21)
      {
        return;
      }

      goto LABEL_74;
    }
  }

  v30 = v11 + v26;
  v31 = *(this + 11);
  v32 = *(this + 12);
  v33 = &v30[v23] <= v32;
  v18 = v31 > v30;
  v34 = v31 <= v30;
  if (v18)
  {
    v33 = 0;
  }

  v35 = &v30[v23] >= v30 && v33;
  v36 = (v30 + 1) <= v32;
  v37 = v32 - v30;
  if (v34 && v36)
  {
    v38 = v37;
  }

  else
  {
    v38 = 0;
  }

  if (v35 || v38 == v23)
  {
    v39 = *(this + 15);
    v40 = *(this + 16);
    if (v39 >= v40)
    {
      v67 = 0xAAAAAAAAAAAAAAAALL;
      *&v41 = 0xAAAAAAAAAAAAAAAALL;
      *(&v41 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v65 = v41;
      v66 = v41;
      v42 = (v39 - *v8) >> 3;
      v43 = v42 + 1;
      if ((v42 + 1) >> 61)
      {
        goto LABEL_76;
      }

      v44 = v40 - *v8;
      if (v44 >> 2 > v43)
      {
        v43 = v44 >> 2;
      }

      if (v44 >= 0x7FFFFFFFFFFFFFF8)
      {
        v45 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v45 = v43;
      }

      std::__split_buffer<unsigned char const*,TInlineBufferAllocator<unsigned char const*,30ul> &>::__split_buffer(&v65, v45, v42, this + 136);
      *v66 = v30;
      *&v66 = v66 + 8;
      v46 = *(this + 14);
      v47 = *(this + 15) - v46;
      v48 = *(&v65 + 1) - v47;
      memcpy((*(&v65 + 1) - v47), v46, v47);
      v49 = *(this + 14);
      *(this + 14) = v48;
      v50 = *(this + 16);
      v63 = v66;
      *(this + 120) = v66;
      *&v66 = v49;
      *(&v66 + 1) = v50;
      *&v65 = v49;
      *(&v65 + 1) = v49;
      std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v65);
      v29 = v63;
    }

    else
    {
      *v39 = v30;
      v29 = v39 + 1;
    }

    v21 = 1;
    goto LABEL_66;
  }

  *(this + 15) = *(this + 14);
LABEL_72:
  if ((v21 & 1) == 0)
  {
    v29 = *(this + 15);
LABEL_74:
    if (*v8 != v29)
    {
      *(this + 15) = *v8;
    }
  }
}

uint64_t TRun::GetNonDeletedGlyphCount(TRun *this)
{
  v1 = *(this + 26);
  if ((*(this + 225) & 8) != 0)
  {
    v2 = 0;
    if (v1)
    {
      v3 = (*(*(this + 27) + 16) + 2 * *(this + 25));
      v4 = 2 * v1;
      do
      {
        v5 = *v3++;
        if (v5 != -1)
        {
          ++v2;
        }

        v4 -= 2;
      }

      while (v4);
    }

    if (*(this + 33) == -1)
    {
      return v2;
    }

    else
    {
      return v2 + 1;
    }
  }

  return v1;
}

void TAATKernEngine::TAATKernEngine(TAATKernEngine *this, TRunGlue *a2)
{
  *this = a2;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 8) = 0;
  *(this + 9) = 0;
  *(this + 6) = 0;
  *(this + 7) = this + 64;
  *(this + 80) = 0;
  CommonTable = TBaseFont::GetCommonTable(*(*(a2 + 62) + 408), 1801810542, 0);
  *(this + 11) = CommonTable;
  if (!CommonTable)
  {
    *(this + 12) = 0;
    *(this + 112) = *(*this + 516);
    return;
  }

  BytePtr = CFDataGetBytePtr(CommonTable);
  *(this + 12) = BytePtr;
  *(this + 112) = *(*this + 516);
  if (BytePtr)
  {
    v5 = BytePtr;
    Length = CFDataGetLength(*(this + 11));
    *(this + 13) = &v5[Length];
    v7 = *(this + 12);
    if (v7 + 2 <= &v5[Length])
    {
      v8 = *v7;
      if (v8 == 256)
      {
        *(this + 113) = 0;
        return;
      }

      if (!v8)
      {
        *(this + 113) = 1;
        return;
      }
    }

    v9 = atomic_load_explicit((*(*(*this + 496) + 408) + 96), memory_order_acquire);
    if (v9 == @"Bauhaus93")
    {
      v12 = @"Bauhaus93";
    }

    else
    {
      if (v9)
      {
        v10 = v9;
        v11 = CFEqual(v9, @"Bauhaus93");

        if (v11)
        {
LABEL_18:
          v13 = *(*(*this + 496) + 408);
          (*(*v13 + 496))(v13, 1801810542);
          *(this + 12) = 0;
          return;
        }
      }

      else
      {
      }

      v14 = TFont::DebugDescription(*(*this + 496));
      CFLog();
      v12 = v14;
    }

    goto LABEL_18;
  }
}

unint64_t TAATKernEngine::KernRuns(uint64_t a1, _BYTE *a2, int *a3)
{
  v4 = *a3;
  *a3 = 2;
  if (!TRunGlue::length(*a1))
  {
    return 1;
  }

  v5 = *(a1 + 96);
  if (*(a1 + 113) == 1)
  {
    v128 = bswap32(*(v5 + 2)) >> 16;
    v6 = 4;
  }

  else
  {
    v128 = bswap32(*(v5 + 4));
    v6 = 8;
  }

  v7 = *a1;
  v8 = *(*a1 + 520);
  v9 = *(*a1 + 528);
  *(a1 + 8) = v8;
  *(a1 + 16) = v9;
  if (*(v7 + 516) == 1)
  {
    *(a1 + 8) = v9;
    *(a1 + 16) = v8;
  }

  *(a1 + 24) = 0x3FF0000000000000;
  if (v128 < 1)
  {
LABEL_197:
    result = TKerningEngineImplementation::MergeDeltas(a1, (a1 + 32), (a1 + 56), a2, (a1 + 80));
    if (!result)
    {
      return result;
    }

    if (*(a1 + 80) == 1)
    {

      return TKerningEngineImplementation::TransferDeletedAdvances(a1);
    }

    return 1;
  }

  v135 = 0;
  v10 = 0;
  v11 = v5 + v6;
  v122 = v4;
  while (1)
  {
    v11 += v10;
    v136 = v11;
    v12 = v11 + 6;
    if (*(a1 + 96) > (v11 + 4) || v12 > *(a1 + 104))
    {
      goto LABEL_205;
    }

    v14 = bswap32(*(v11 + 4)) >> 16;
    if (*(a1 + 113) == 1)
    {
      v10 = bswap32(*(v11 + 2)) >> 16;
      if (((v14 << 11) & 0x1000) != 0)
      {
        goto LABEL_196;
      }

      v14 = ((v14 >> 8) & 0xFFFFA7FF | (v14 << 15) | (((v14 >> 2) & 1) << 14) | (((v14 >> 3) & 1) << 11) & 0xFFFFEFFF | (((v14 >> 1) & 1) << 12)) ^ 0xFFFF8000;
      v15 = (v11 + 6);
    }

    else
    {
      v15 = (v11 + 8);
      v10 = bswap32(*v11);
    }

    v16 = *(a1 + 112);
    if (v16 == v14 >> 15)
    {
      if ((v14 & 0x4000) != 0)
      {
        if (v16)
        {
          goto LABEL_196;
        }
      }

      else if (!v4)
      {
        goto LABEL_196;
      }

      if ((v14 & 0x2000) == 0)
      {
        goto LABEL_30;
      }

      v17 = *(*(*a1 + 496) + 408);
      if (!v17 || !TBaseFont::GetInitializedGraphicsFont(v17) || !CGFontGetParserFont() || *(a1 + 96) > v12 || (v11 + 8) > *(a1 + 104))
      {
        goto LABEL_30;
      }

      FPFontGetVariationScalar();
      if (v18 != 0.0)
      {
        break;
      }
    }

LABEL_196:
    if (++v135 == v128)
    {
      goto LABEL_197;
    }
  }

  *(a1 + 24) = v18;
LABEL_30:
  v137 = v15;
  if (v14 > 1u)
  {
    if (v14 == 2)
    {
      v126 = v14;
      v84 = *(a1 + 104);
      if ((v15 + 4) > v84)
      {
        goto LABEL_205;
      }

      v85 = v11 - v15;
      v86 = (v11 + (bswap32(v15[1]) >> 16));
      if (v86 < v15 || (v86 + 3) > v84)
      {
        v134 = 0;
      }

      else
      {
        v88 = v86 + 2;
        v89 = bswap32(v86[1]) >> 16;
        v90 = &v86[v89 + 2];
        if (v90 > v84 || v90 < v88)
        {
          v89 = (v84 - (v86 + 4)) >> 1;
        }

        if (v88 >= v15)
        {
          v92 = v89;
        }

        else
        {
          v92 = 0;
        }

        v134 = v92;
      }

      v93 = (v11 + (bswap32(v15[2]) >> 16));
      if (v93 >= v15 && (v93 + 3) <= v84)
      {
        v94 = v93 + 2;
        v95 = bswap32(v93[1]) >> 16;
        v96 = &v93[v95 + 2];
        if (v96 > v84 || v96 < v94)
        {
          v95 = (v84 - (v93 + 4)) >> 1;
        }

        v98 = v94 >= v15 ? v95 : 0;
        if (v134)
        {
          if (v98)
          {
            v131 = v98;
            v139 = *a1;
            v140 = 0;
            v99 = TRunGlue::length(v139);
            v100 = TRunGlue::TGlyph::glyphID(&v139);
            v140 = (v140 + 1);
            if (v99 >= 2)
            {
              v101 = v100;
              v124 = v137 + v85;
              for (i = v99 + 1; i > 2; --i)
              {
                v103 = TRunGlue::TGlyph::glyphID(&v139);
                if (v103 == 0xFFFF || (v104 = v103, (TRunGlue::IsDeleted(v139, v140) & 1) != 0))
                {
                  v104 = v101;
                }

                else
                {
                  v105 = bswap32(*v86);
                  v106 = (v101 - HIWORD(v105));
                  v107 = v104 - (bswap32(*v93) >> 16);
                  v108 = &v86[(v101 - HIWORD(v105)) + 2];
                  if (v106 >= v134)
                  {
                    v108 = v137 + 3;
                  }

                  if (v107 >= v131)
                  {
                    v109 = 0;
                  }

                  else
                  {
                    v109 = bswap32(v94[v107]) >> 16;
                  }

                  v110 = &v124[(bswap32(*v108) >> 16) + v109];
                  if (v110 < v137 || (v110 + 1) > v84)
                  {
                    break;
                  }

                  v112 = *v110;
                  if (v112)
                  {
                    TAATKernEngine::HandleKern<TRunGlue::TGlyph>(a1, v139, v140, bswap32(v112) >> 16, v14);
                    *a2 = 1;
                  }
                }

                v140 = (v140 + 1);
                v101 = v104;
              }
            }
          }
        }
      }
    }

    else
    {
      if (v14 != 3)
      {
        goto LABEL_125;
      }

      v126 = v14;
      v48 = *(a1 + 104);
      v49 = v15 + 3;
      if ((v15 + 3) > v48)
      {
        goto LABEL_205;
      }

      v50 = v15;
      v51 = bswap32(*v15) >> 16;
      v52 = &v49[*(v15 + 2)];
      v53 = v52 + v51;
      v54 = v52 + v51 + v51;
      if (v52 + 1 <= v48)
      {
        v55 = v48 - v52;
      }

      else
      {
        v55 = 0;
      }

      v133 = v52;
      if (v53 <= v48 && v53 >= v52)
      {
        v55 = v51;
      }

      v57 = v54 >= v53;
      v58 = v54;
      v59 = v54 <= v48;
      v60 = v53 >= v50;
      if (!v60)
      {
        v57 = 0;
      }

      if (v60 && v53 + 1 <= v48)
      {
        v61 = v48 - v53;
      }

      else
      {
        v61 = 0;
      }

      if (!v57 || !v59)
      {
        LOWORD(v51) = v61;
      }

      LODWORD(v51) = v51;
      if (v51 >= v55)
      {
        LODWORD(v51) = v55;
      }

      if (v51)
      {
        v62 = v51;
        v121 = v10;
        v130 = *(v137 + 4);
        v139 = *a1;
        v140 = 0;
        v63 = TRunGlue::length(v139);
        v64 = TRunGlue::TGlyph::glyphID(&v139);
        v140 = (v140 + 1);
        if (v63 < 2)
        {
          goto LABEL_124;
        }

        if (v62 <= v64)
        {
          v65 = 0;
        }

        else
        {
          v65 = v64;
        }

        v66 = v63 + 1;
        while (1)
        {
          v67 = TRunGlue::TGlyph::glyphID(&v139);
          if (v67 == 0xFFFF || (LODWORD(v68) = v67, (TRunGlue::IsDeleted(v139, v140) & 1) != 0))
          {
            v68 = v65;
          }

          else
          {
            if (v62 <= v68)
            {
              v68 = 0;
            }

            else
            {
              v68 = v68;
            }

            v69 = (v58 + *(v133 + v65) * v130 + *(v53 + v68));
            if (v69 < v137 || (v69 + 1) > v48)
            {
              goto LABEL_124;
            }

            v71 = &v49[*v69];
            if ((v71 + 1) > v48)
            {
              goto LABEL_124;
            }

            v72 = *v71;
            if (v72)
            {
              TAATKernEngine::HandleKern<TRunGlue::TGlyph>(a1, v139, v140, bswap32(v72) >> 16, v14);
              *a2 = 1;
            }
          }

          v140 = (v140 + 1);
          --v66;
          v65 = v68;
          if (v66 <= 2)
          {
            goto LABEL_124;
          }
        }
      }
    }

LABEL_193:
    v4 = v122;
    if ((v126 & 0x2000) == 0)
    {
LABEL_195:
      v11 = v136;
      goto LABEL_196;
    }

LABEL_194:
    *(a1 + 24) = 0x3FF0000000000000;
    goto LABEL_195;
  }

  if (!v14)
  {
    v126 = v14;
    v73 = *(a1 + 104);
    v74 = v15 + 4;
    if ((v15 + 4) <= v73)
    {
      *&v75 = 0xAAAAAAAAAAAAAAAALL;
      *(&v75 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v143 = v75;
      v142 = v75;
      v139 = a1;
      v140 = v15;
      v141 = v73;
      LOWORD(v142) = v14;
      v144[0] = 0;
      v76 = bswap32(*v15) >> 16;
      v77 = &v74[3 * v76];
      if ((v15 + 7) <= v73)
      {
        v78 = (v73 - v74) / 6;
      }

      else
      {
        v78 = 0;
      }

      if (v77 < v74 || v77 > v73)
      {
        v80 = v78;
      }

      else
      {
        v80 = v76;
      }

      WORD4(v143) = v80;
      v81 = *a1;
      v82 = *(*a1 + 16);
      v83 = TAATKernEngine::KernOrderedList::ProcessGlyphsT<TRunGlue::TGlyphInVector>;
      if (v82)
      {
        if (v82 == 1)
        {
          v83 = TAATKernEngine::KernOrderedList::ProcessGlyphsT<TRunGlue::TGlyphInSingleRun>;
        }

        else
        {
          v83 = TAATKernEngine::KernOrderedList::ProcessGlyphsT<TRunGlue::TGlyph>;
        }
      }

      v113 = v83;
      *(&v142 + 1) = v83;
      *&v143 = 0;
      v114 = *(*(v81 + 62) + 408);
      if (TBaseFont::GetGlyphCount(v114))
      {
        os_unfair_lock_lock_with_options();
        v115 = *(v114 + 488);
        if (2 * v135 >= ((*(v114 + 496) - v115) >> 3) || (v116 = *(v115 + 16 * v135)) == 0)
        {
          operator new[]();
        }

        WORD5(v143) = *v116;
        v144[0] = v116 + 1;
        os_unfair_lock_unlock((v114 + 444));
      }

      v113(&v139, a2);
      goto LABEL_193;
    }

    goto LABEL_205;
  }

  if (v14 != 1)
  {
LABEL_125:
    if ((v14 & 0x2000) == 0)
    {
      goto LABEL_195;
    }

    goto LABEL_194;
  }

  v126 = v14;
  v19 = v15;
  v20 = *(a1 + 104);
  if ((v19 + 5) <= v20)
  {
    v21 = (v19 + (bswap32(v19[1]) >> 16));
    v22 = v21 + 2;
    if ((v21 + 2) <= v20)
    {
      v120 = v21 + 2;
      v121 = v10;
      *&v23 = 0xAAAAAAAAAAAAAAAALL;
      *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v143 = v23;
      v142 = v23;
      v129 = v19 + (bswap32(v19[3]) >> 16);
      v24 = bswap32(v21[1]) >> 16;
      v25 = v22 + v24;
      v125 = v21;
      if (v21 + 5 <= v20)
      {
        v26 = v20 - v22;
      }

      else
      {
        v26 = 0;
      }

      if (v25 > v20 || v25 < v22)
      {
        LOWORD(v24) = v26;
      }

      v123 = v24;
      v28 = v19[2];
      BYTE11(v143) = 0;
      memset(v144, 0, sizeof(v144));
      v145 = -1;
      v29 = bswap32(v28) >> 16;
      v146 = *a1;
      v147 = 0;
      v30 = TRunGlue::length(v146);
      v31 = 0;
      v127 = v19 + 1;
LABEL_44:
      v132 = v30;
      while (1)
      {
        v32 = v30 - 1;
        if (v30 < 1)
        {
          break;
        }

        if (v31)
        {
          goto LABEL_51;
        }

        v33 = TRunGlue::TGlyph::glyphID(&v146);
        if (v33 == 0xFFFF)
        {
          v31 = 0;
          v36 = 2;
        }

        else
        {
          v34 = v33 - (bswap32(*v125) >> 16);
          if (v34 < v123)
          {
            v31 = 0;
            v35 = v120 + v34;
            goto LABEL_52;
          }

          v31 = 0;
          v36 = 1;
        }

LABEL_53:
        v37 = v137 + v29 + v36;
        if (v37 < v137 || (v37 + 1) > v20)
        {
          goto LABEL_124;
        }

        v38 = &v129[4 * *v37];
        if (v38 < v137 || (v38 + 4) > v20)
        {
          goto LABEL_124;
        }

        v40 = *v38;
        v41 = bswap32(*(v38 + 1)) >> 16;
        if (v41 < 0)
        {
          if (v145 <= 6)
          {
            v42 = v145 + 1;
          }

          else
          {
            v42 = 0;
          }

          v145 = v42;
          if (v42 >= 8)
          {
LABEL_204:
            __break(1u);
            goto LABEL_205;
          }

          v144[v42] = v147;
        }

        if ((v41 & 0x3FFF) != 0)
        {
          v43 = v145;
          if ((v145 & 0x8000000000000000) == 0)
          {
            if ((v137 + (v41 & 0x3FFF)) >= v137)
            {
              v44 = v127 + (v41 & 0x3FFF);
              while (v44 <= v20)
              {
                if (v43 >= 8)
                {
                  goto LABEL_204;
                }

                if (v43)
                {
                  v45 = v43 - 1;
                }

                else
                {
                  v45 = 7;
                }

                v46 = bswap32(*(v44 - 2)) >> 16;
                if ((v46 & 0xFFFE) != 0)
                {
                  v47 = v144[v43];
                  if ((v47 & 0x8000000000000000) == 0)
                  {
                    TAATKernEngine::HandleKern<TRunGlue::TGlyph>(a1, *a1, v47, (v46 & 0xFFFE), v14);
                    *a2 = 1;
                  }
                }

                v44 += 2;
                v43 = v45;
                if (v46)
                {
                  goto LABEL_78;
                }
              }
            }

LABEL_124:
            v10 = v121;
            goto LABEL_193;
          }
        }

LABEL_78:
        v29 = bswap32(v40) >> 16;
        v30 = v132;
        if ((v41 & 0x4000) == 0)
        {
          v30 = v32;
          if ((v31 & 1) == 0)
          {
            ++v147;
            v30 = v32;
          }

          goto LABEL_44;
        }
      }

      if (((v30 == 0) & (v31 ^ 1)) == 0)
      {
        goto LABEL_124;
      }

LABEL_51:
      v31 = 1;
      v35 = &v143 + 11;
LABEL_52:
      v36 = *v35;
      goto LABEL_53;
    }
  }

LABEL_205:
  v119 = TFont::DebugDescription(*(*a1 + 496));
  CFLog();

  v118 = *(*(*a1 + 496) + 408);
  (*(*v118 + 496))(v118);
  result = 0;
  *(a1 + 96) = 0;
  return result;
}

uint64_t TOpenTypeMorph::CompareRuns(atomic_ullong *this, atomic_ullong *a2, const TRun *a3)
{
  if (*(this + 224) != *(a2 + 224))
  {
    return 0;
  }

  v5 = *(atomic_load_explicit(this + 7, memory_order_acquire) + 40);
  v6 = *(atomic_load_explicit(a2 + 7, memory_order_acquire) + 40);
  result = TFont::Compare(v5, v6, 1);
  if (result != 1)
  {
    if (result != 2)
    {
      return result;
    }

    explicit = atomic_load_explicit(this + 8, memory_order_acquire);
    v9 = atomic_load_explicit(a2 + 8, memory_order_acquire);
    if (explicit != v9)
    {
      result = 0;
      if (!explicit)
      {
        return result;
      }

      if (!v9)
      {
        return result;
      }

      result = CFEqual(explicit, v9);
      if (!result)
      {
        return result;
      }
    }

    return 1;
  }

  AATSettingOfType = TFontFeatureSettingList::GetAATSettingOfType((v5 + 176), 0x16u);
  v11 = TFontFeatureSettingList::GetAATSettingOfType((v6 + 176), 0x16u);
  if (AATSettingOfType == v11)
  {
    return 1;
  }

  if (AATSettingOfType)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 1;
  }

  return !v12 && CFEqual(AATSettingOfType, v11) != 0;
}

uint64_t std::__split_buffer<std::unique_ptr<unsigned short const[]>,TInlineBufferAllocator<std::unique_ptr<unsigned short const[]>,4ul> &>::~__split_buffer(uint64_t a1)
{
  std::__split_buffer<std::unique_ptr<unsigned short const[]>,TInlineBufferAllocator<std::unique_ptr<unsigned short const[]>,4ul> &>::__destruct_at_end[abi:fn200100](a1, *(a1 + 8));
  v2 = *a1;
  if (*a1)
  {
    v3 = *(a1 + 32);
    v4 = (v3 + 32);
    if (v3 <= v2 && v4 > v2)
    {
      if (*(a1 + 24) == *v4)
      {
        *v4 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }

  return a1;
}