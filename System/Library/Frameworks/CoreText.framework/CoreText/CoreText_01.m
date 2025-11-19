uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,OTL::Lookup>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OTL::Lookup>>>::find<unsigned int>(void *a1, unsigned int *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % v2.i32[0];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 4) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t OTL::GSUB::ApplyLookupAt(uint64_t a1, uint64_t a2, int a3, TGlyphIterator *a4, unsigned int a5, _WORD *a6, uint64_t a7, unint64_t a8)
{
  if (a8 <= 0x3E)
  {
    v13 = ((*(a2 + 104) - *(a2 + 96)) >> 6);
    v14 = *(a4 + 6);
    v35[0] = *a4;
    v35[1] = v14;
    v15 = TRunGlue::TGlyph::glyphID(v35);
    if (v13)
    {
      v16 = v15;
      v17 = 0;
      v18 = 0;
      v19 = a8 + 1;
      v20 = *a4;
      v21 = v13 << 6;
      do
      {
        v22 = *(a2 + 96);
        if (v18 >= (*(a2 + 104) - v22) >> 6)
        {
          break;
        }

        if ((*(v20 + 200) & *(v22 + v17 + 48)) != 0 && (*(v20 + 208) & *(v22 + v17 + 56)) != 0)
        {
          v23 = v22 + v17;
          v24 = *(v22 + v17 + 24);
          v25 = *(v23 + 32);
          v26 = v23 + (v25 >> 1);
          if (v25)
          {
            v24 = *(*(v26 + 8) + v24);
          }

          v27 = v24(v26 + 8, v16);
          if (v27)
          {
            v28 = *(a2 + 96);
            v29 = v18 >= (*(a2 + 104) - v28) >> 6 ? 0 : *(v28 + v17);
            OTL::GSUB::ApplyLookupSubtable(a1, a2, a3, v29, a4, v27, a5, a6, a7, v19);
            if (v30)
            {
              return 1;
            }
          }
        }

        ++v18;
        v17 += 64;
      }

      while (v21 != v17);
    }
  }

  return 0;
}

uint64_t OTL::Lookup::ignore(OTL::Lookup *this, const OTL::GDEF *a2)
{
  result = *(this + 11);
  if (!result)
  {
    if ((*(*this + 2) & 0x1EFF) != 0)
    {
      OTL::Lookup::PopulateIgnoreSet(this, a2);
      return *(this + 11);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t TRunGlue::TGlyph::glyphID(TRunGlue::TGlyph *this)
{
  v2 = *this;
  v1 = *(this + 1);
  if (*(*this + 144))
  {
    TRunGlue::FocusOnIndex(*this, v1);
    v3 = (*(v2 + 168) + 2 * (v1 - *(v2 + 152)));
  }

  else
  {
    v3 = (*(v2 + 168) + 2 * *(v2 + 152) + 2 * v1);
  }

  return *v3;
}

uint64_t OTL::GSUB::ApplyChainContextSubstFormat2(uint64_t a1, unsigned __int16 *a2, TGlyphIterator *a3, _WORD *a4, uint64_t a5, uint64_t a6)
{
  v12 = *(a3 + 6);
  v106 = *a3;
  *&v107[0] = v12;
  v101 = v12;
  v13 = TRunGlue::TGlyph::glyphID(&v106);
  v14 = *(a1 + 40);
  v15 = a2 + 6;
  if ((a2 + 5) < *(a1 + 32) || v15 > v14)
  {
    return 0;
  }

  v17 = __rev16(a2[5]);
  v18 = &v15[v17];
  v19 = (a2 + 7) <= v14 ? (v14 - v15) >> 1 : 0;
  v20 = v18 <= v14 && v18 >= v15;
  v21 = v20 || v19 == v17;
  if (!v21)
  {
    return 0;
  }

  v22 = (a2 + (bswap32(a2[3]) >> 16));
  if ((v22 + 1) > v14)
  {
    return 0;
  }

  v23 = v13;
  v24 = bswap32(*v22) >> 16;
  if (v24 == 2)
  {
    v25 = 6 * (bswap32(v22[1]) >> 16) + 4;
  }

  else if (v24 == 1)
  {
    v25 = 2 * (bswap32(v22[2]) >> 16) + 6;
  }

  else
  {
    v25 = 0;
  }

  result = 0;
  v27 = v22 + v25;
  if (v27 < v22 || v27 > v14)
  {
    return result;
  }

  if (!a2[5])
  {
    return 0;
  }

  v28 = a2[2];
  v29 = a2[4];
  *&v30 = 0xAAAAAAAAAAAAAAAALL;
  *(&v30 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v107[29] = v30;
  v107[30] = v30;
  v107[27] = v30;
  v107[28] = v30;
  v107[25] = v30;
  v107[26] = v30;
  v107[23] = v30;
  v107[24] = v30;
  v107[21] = v30;
  v107[22] = v30;
  v107[19] = v30;
  v107[20] = v30;
  v107[17] = v30;
  v107[18] = v30;
  v107[16] = v30;
  v108 = 0xAAAAAAAAAAAAAAAALL;
  v107[15] = v30;
  v107[14] = v30;
  v107[13] = v30;
  v107[12] = v30;
  v107[11] = v30;
  v107[10] = v30;
  v107[9] = v30;
  v107[8] = v30;
  v107[7] = v30;
  v107[6] = v30;
  v107[5] = v30;
  v107[3] = v30;
  v107[4] = v30;
  v107[1] = v30;
  v107[2] = v30;
  v107[0] = v30;
  v106 = v101;
  v95 = v22;
  v31 = OTL::ClassDefTable::ClassOf(v22, v23);
  result = ChainContextSubstFormat2::NthChainSubClassSet(a2, v31, v14);
  if (!result)
  {
    return result;
  }

  v32 = result;
  result = TGlyphIterator::Next(a3, 1);
  if (result)
  {
    v102 = v29;
    v33 = v28;
    v34 = a4;
    v35 = a5;
    v36 = a6;
    v37 = *(a3 + 6);
    v104 = *a3;
    v105 = v37;
    v38 = TRunGlue::TGlyph::glyphID(&v104);
    result = OTL::ClassDefTable::ClassOf(v95, v38);
    v39 = v37;
    a6 = v36;
    a5 = v35;
    a4 = v34;
    v28 = v33;
    v29 = v102;
    v96 = result;
    v40 = v101;
  }

  else
  {
    v96 = 0;
    v40 = v101;
    v39 = v101;
  }

  v41 = v32 + 1;
  v91 = a5;
  v92 = a4;
  v89 = a6;
  v90 = a1;
  if (v32 + 1 < a2 || (LODWORD(v42) = __rev16(*v32), v43 = &v41[v42], v43 < v41) || v43 > v14)
  {
    v44 = (v32 + 2) <= v14 && v41 >= a2;
    LODWORD(v42) = (v14 - v41) >> 1;
    if (!v44)
    {
      LODWORD(v42) = 0;
    }

    if (!(bswap32(v42) >> 16))
    {
      goto LABEL_145;
    }
  }

  else if (!*v32)
  {
LABEL_145:
    result = 0;
    *(a3 + 6) = v40;
    return result;
  }

  v45 = 0;
  v46 = (a2 + (bswap32(v28) >> 16));
  v97 = v46 + 1;
  v103 = (a2 + (bswap32(v29) >> 16));
  v94 = v103 + 1;
  if ((v42 & 0xFFFE) != 0)
  {
    v42 = v42;
  }

  else
  {
    v42 = 1;
  }

  v99 = a2;
  v100 = v42;
  v98 = v39;
  while (1)
  {
    if (v45 >= bswap32(*v32) >> 16)
    {
      goto LABEL_130;
    }

    v47 = v41[v45];
    v21 = v47 == 0;
    v48 = (v32 + __rev16(v47));
    if (v21 || v48 > v14)
    {
      goto LABEL_130;
    }

    v50 = v48 + 1;
    if (v48 < a2 || v50 > v14)
    {
      goto LABEL_145;
    }

    if (*v48)
    {
      if (v97 > v14)
      {
        goto LABEL_145;
      }

      v52 = bswap32(*v46) >> 16;
      if (v52 == 2)
      {
        v53 = 6 * (bswap32(*v97) >> 16) + 4;
      }

      else
      {
        v53 = v52 == 1 ? 2 * (bswap32(v46[2]) >> 16) + 6 : 0;
      }

      v55 = v46 + v53;
      if (v55 < v46 || v55 > v14)
      {
        goto LABEL_145;
      }

      v56 = __rev16(*v48);
      v57 = &v50[v56];
      if (v57 < v50 || v57 > v14)
      {
        v59 = (v48 + 2) <= v14 ? (v14 - v50) >> 1 : 0;
        if (v59 != v56)
        {
          goto LABEL_145;
        }
      }

      *(a3 + 6) = v40;
      if (v56 <= 1)
      {
        v60 = 1;
      }

      else
      {
        v60 = v56;
      }

      while (1)
      {
        result = TGlyphIterator::PrevContext(a3, 1);
        if (!result)
        {
          break;
        }

        v61 = *(a3 + 6);
        v104 = *a3;
        v105 = v61;
        v62 = TRunGlue::TGlyph::glyphID(&v104);
        result = OTL::ClassDefTable::ClassOf(v46, v62);
        if (result != bswap32(*v50) >> 16)
        {
          break;
        }

        ++v50;
        if (!--v60)
        {
          v54 = *(a3 + 6);
          v39 = v98;
          a2 = v99;
          *(a3 + 6) = v98;
          v40 = v101;
          v41 = v32 + 1;
          goto LABEL_79;
        }
      }

LABEL_129:
      v39 = v98;
      a2 = v99;
      *(a3 + 6) = v98;
      v40 = v101;
      v41 = v32 + 1;
      goto LABEL_130;
    }

    v54 = v40;
LABEL_79:
    v63 = v50 + 1;
    if (v50 < a2 || v63 > v14)
    {
      goto LABEL_145;
    }

    v65 = *v50;
    if (*v50)
    {
      v66 = __rev16(v65);
      if (v66 <= 0x40)
      {
        v67 = v66 - 1;
        v68 = &v63[v66 - 1];
        if (v68 < v63 || v68 > v14)
        {
          v70 = (v50 + 2) <= v14 ? (v14 - v63) >> 1 : 0;
          if (v70 != v67)
          {
            goto LABEL_145;
          }
        }

        v71 = &v50[v66];
        if (v39 == v40 || v65 == 256)
        {
          v72 = v40;
        }

        else
        {
          v72 = v40;
          if (v96 == bswap32(*v63) >> 16)
          {
            *&v107[0] = v39;
            v63 = v50 + 2;
            if (v65 == 512)
            {
              v72 = v39;
            }

            else
            {
              v76 = v54;
              result = TGlyphIterator::Next(a3, 1);
              if (result)
              {
                result = EqualClassSequenceAndNote<BigEndianScalar<unsigned short>>(v95, v63, v71, a3, v107 + 1);
                v63 = result;
                v72 = *(a3 + 6);
                v39 = v98;
                *(a3 + 6) = v98;
              }

              else
              {
                v39 = v98;
                v72 = v98;
              }

              v40 = v101;
              v41 = v32 + 1;
              v54 = v76;
            }
          }
        }

        v21 = v63 == v71;
        a2 = v99;
        if (v21)
        {
          break;
        }
      }
    }

LABEL_130:
    if (++v45 == v100)
    {
      goto LABEL_145;
    }
  }

  v73 = v63 + 1;
  if ((v63 + 1) > v14)
  {
    goto LABEL_145;
  }

  if (*v63)
  {
    if (v94 > v14)
    {
      goto LABEL_145;
    }

    v74 = bswap32(*v103) >> 16;
    if (v74 == 2)
    {
      v75 = 6 * (bswap32(*v94) >> 16) + 4;
    }

    else
    {
      v75 = v74 == 1 ? 2 * (bswap32(v103[2]) >> 16) + 6 : 0;
    }

    v77 = v103 + v75;
    if (v77 < v103 || v77 > v14)
    {
      goto LABEL_145;
    }

    v78 = __rev16(*v63);
    v79 = &v73[v78];
    if (v79 < v73 || v79 > v14)
    {
      v80 = (v63 + 2) <= v14 ? (v14 - v73) >> 1 : 0;
      if (v80 != v78)
      {
        goto LABEL_145;
      }
    }

    if (v67 >= 0x40)
    {
      __break(1u);
      return result;
    }

    v93 = v54;
    *(a3 + 6) = *(&v106 + v67);
    if (v78 <= 1)
    {
      v81 = 1;
    }

    else
    {
      v81 = v78;
    }

    v82 = v81;
    while (1)
    {
      result = TGlyphIterator::NextContext(a3, 1);
      if (!result)
      {
        goto LABEL_129;
      }

      v83 = *(a3 + 6);
      v104 = *a3;
      v105 = v83;
      v84 = TRunGlue::TGlyph::glyphID(&v104);
      result = OTL::ClassDefTable::ClassOf(v103, v84);
      if (result != bswap32(*v73) >> 16)
      {
        goto LABEL_129;
      }

      ++v73;
      if (!--v82)
      {
        v73 = &v63[v81 - 1 + 2];
        v72 = *(a3 + 6);
        a2 = v99;
        *(a3 + 6) = v98;
        v40 = v101;
        v54 = v93;
        break;
      }
    }
  }

  if (v73 < a2 || (v73 + 1) > v14)
  {
    goto LABEL_145;
  }

  v85 = v72;
  v86 = v54;
  if (OTL::GSUB::ApplySubstLookupRecords(v90, a2, v73 + 1, bswap32(*v73) >> 16, a3, v40, &v106, v66, v92, v91, v89) && *(*a3 + 144))
  {
    v87 = v86 - v85;
    if (v86 >= v85)
    {
      v88.location = v85;
    }

    else
    {
      v88.location = v86;
    }

    if (v86 - v85 < 0)
    {
      v87 = v85 - v86;
    }

    v88.length = v87 + 1;
    TRunGlue::ClearSafeToBreakAfter(*a3, v88);
  }

  return 1;
}

uint64_t OTL::ClassDefTable::ClassOf(OTL::ClassDefTable *this, unsigned int a2)
{
  v2 = bswap32(*this) >> 16;
  if (v2 == 2)
  {
    v5 = *(this + 1);
    if (*(this + 1))
    {
      v7 = *(this + 2);
      v6 = this + 4;
      if (a2 >= bswap32(v7) >> 16)
      {
        v8 = __rev16(v5);
        v9 = __clz(v8);
        v10 = 1 << (v9 ^ 0x1F);
        v11 = v8 - v10;
        if (a2 < bswap32(*&v6[6 * (v8 - v10)]) >> 16)
        {
          v11 = 0;
        }

        if (v9 != 31)
        {
          do
          {
            if (a2 >= bswap32(*&v6[6 * v11 + 6 * (v10 >> 1)]) >> 16)
            {
              v11 += v10 >> 1;
            }

            v12 = v10 > 3;
            v10 >>= 1;
          }

          while (v12);
        }

        v13 = &v6[6 * v11];
        if (a2 >= bswap32(*v13) >> 16 && a2 <= bswap32(*(v13 + 1)) >> 16)
        {
          v4 = (v13 + 4);
          return bswap32(*v4) >> 16;
        }
      }
    }

    return 0;
  }

  if (v2 != 1)
  {
    return 0;
  }

  v3 = bswap32(*(this + 1)) >> 16;
  if (v3 > a2 || v3 + (bswap32(*(this + 2)) >> 16) <= a2)
  {
    return 0;
  }

  v4 = (this + 2 * (a2 - v3) + 6);
  return bswap32(*v4) >> 16;
}

uint64_t TGlyphIterator::Next(TGlyphIterator *this, uint64_t a2)
{
  if (*(this + 6) == *(this + 3))
  {
    return 0;
  }

  v3 = a2;
  if (a2 >= 1)
  {
    while (1)
    {
      v5 = *(this + 2);
      v6 = *(this + 6) + v5;
      *(this + 6) = v6;
      if (v5 < 1)
      {
        if ((v5 & 0x80000000) != 0 && v6 <= *(this + 3))
        {
          return 0;
        }
      }

      else if (v6 >= *(this + 3))
      {
        return 0;
      }

      if ((TGlyphIterator::CurrentGlyphIsIgnored(this, 0) & 1) == 0)
      {
        result = 1;
        if (v3-- <= 1)
        {
          return result;
        }
      }
    }
  }

  return 1;
}

uint64_t TGlyphIterator::PrevContext(TGlyphIterator *this, uint64_t a2)
{
  if (*(this + 6) == *(this + 4))
  {
    return 0;
  }

  v3 = a2;
  if (a2 >= 1)
  {
    while (1)
    {
      v5 = *(this + 2);
      v6 = *(this + 6) - v5;
      *(this + 6) = v6;
      if (v5 < 1)
      {
        if ((v5 & 0x80000000) != 0 && v6 >= *(this + 4))
        {
          return 0;
        }
      }

      else if (v6 <= *(this + 4))
      {
        return 0;
      }

      if ((TGlyphIterator::CurrentGlyphIsIgnored(this, 0) & 1) == 0)
      {
        result = 1;
        if (v3-- <= 1)
        {
          return result;
        }
      }
    }
  }

  return 1;
}

unsigned __int16 *OTL::GSUB::GetSingleSubstLookups(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  if (!OTL::GCommon::GetLookups(a1, a2, a3, 0))
  {
    return v5;
  }

  v6 = *(a1[2] + 408);
  os_unfair_lock_lock_with_options();
  v7 = *(a3 + 8);
  result = std::remove_if[abi:fn200100]<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>,std::__not_fn_t<OTL::GSUB::GetSingleSubstLookups(OTL::FeatureBuffer const&,TInlineVector<std::pair<unsigned short,unsigned short>,30ul> *)::IsSingleSubst>>(*a3, v7, a1, v6);
  if (result <= v7)
  {
    v9 = *a3;
    v10 = *(a3 + 8);
    if (result != v7)
    {
      while (v7 != v10)
      {
        *result = *v7;
        result[1] = v7[1];
        v7 += 2;
        result += 2;
      }

      *(a3 + 8) = result;
      v10 = result;
    }

    v5 = v9 != v10;
    os_unfair_lock_unlock(v6 + 89);
    return v5;
  }

  __break(1u);
  return result;
}

uint64_t **std::__hash_table<std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::__unordered_map_hasher<unsigned short,std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::hash<unsigned short>,std::equal_to<unsigned short>,true>,std::__unordered_map_equal<unsigned short,std::__hash_value_type<unsigned short,OTL::FeatureTable const*>,std::equal_to<unsigned short>,std::hash<unsigned short>,true>,std::allocator<std::__hash_value_type<unsigned short,OTL::FeatureTable const*>>>::find<unsigned short>(void *a1, unsigned __int16 *a2)
{
  v2 = a1[1];
  if (!*&v2)
  {
    return 0;
  }

  v3 = *a2;
  v4 = vcnt_s8(v2);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v2 <= v3)
    {
      v5 = v3 % a1[1];
    }
  }

  else
  {
    v5 = (v2.i32[0] - 1) & v3;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6)
  {
    return 0;
  }

  for (result = *v6; result; result = *result)
  {
    v8 = result[1];
    if (v8 == v3)
    {
      if (*(result + 8) == v3)
      {
        return result;
      }
    }

    else
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v8 >= *&v2)
        {
          v8 %= *&v2;
        }
      }

      else
      {
        v8 &= *&v2 - 1;
      }

      if (v8 != v5)
      {
        return 0;
      }
    }
  }

  return result;
}

void OTL::GlyphLookups::SetLookupInRange<false>(uint64_t *a1, int a2, uint64_t a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = HIWORD(a2);
  v10 = *a1;
  v9 = a1[1];
  if (*a1 != v9)
  {
    while (*v10 != a2 || v10[1] != HIWORD(a2))
    {
      v10 += 52;
      if (v10 == v9)
      {
        goto LABEL_17;
      }
    }
  }

  if (v10 == v9)
  {
LABEL_17:
    v42 = 0xAAAAAAAAAAAAAAAALL;
    *&v18 = 0xAAAAAAAAAAAAAAAALL;
    *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v40 = v18;
    v41 = v18;
    v38 = v18;
    v39 = v18;
    v37 = v18;
    v36 = v18;
    *&v34 = a3;
    *(&v34 + 1) = a4;
    std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100](v35, &v34, 1uLL);
    LOWORD(v36) = v7;
    WORD1(v36) = v8;
    std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>(&v36 + 1, v35[0], v35[1]);
    v33 = v35;
    std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v33);
    v19 = a1[1];
    if (v19 >= a1[2])
    {
      v20 = std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__emplace_back_slow_path<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>>(a1, &v36);
    }

    else
    {
      *v19 = v36;
      v20 = v19 + 104;
      std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100]<std::__wrap_iter<CFRange const*>,0>((v19 + 8), *(&v36 + 1), v37);
    }

    a1[1] = v20;
    v35[0] = &v36 + 1;
    std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](v35);
  }

  else
  {
    v12 = *(v10 + 1);
    v13 = *(v10 + 2);
    if (v12 == v13 || (v14 = *(v13 - 1), (v14 & 0x8000000000000000) == 0) && (a3 == *(v13 - 2) ? (v15 = a4 == v14) : (v15 = 0), !v15))
    {
      v16 = *(v10 + 3);
      if (v13 >= v16)
      {
        v21 = (v13 - v12) >> 4;
        v22 = v21 + 1;
        if ((v21 + 1) >> 60)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        v23 = v16 - v12;
        if (v23 >> 3 > v22)
        {
          v22 = v23 >> 3;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF0)
        {
          v24 = 0xFFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        *&v38 = v10 + 16;
        if (v24)
        {
          v25 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<CFRange,4ul>>((v10 + 16), v24);
        }

        else
        {
          v25 = 0;
        }

        v26 = (v25 + 16 * v21);
        v27 = v25 + 16 * v24;
        *v26 = a3;
        v26[1] = a4;
        v17 = v26 + 2;
        v28 = *(v10 + 1);
        v29 = *(v10 + 2) - v28;
        v30 = v26 - v29;
        memcpy(v26 - v29, v28, v29);
        v31 = *(v10 + 1);
        *(v10 + 1) = v30;
        *(v10 + 2) = v17;
        v32 = *(v10 + 3);
        *(v10 + 3) = v27;
        *&v37 = v31;
        *(&v37 + 1) = v32;
        *&v36 = v31;
        *(&v36 + 1) = v31;
        std::__split_buffer<CFRange,TInlineBufferAllocator<CFRange,4ul> &>::~__split_buffer(&v36);
      }

      else
      {
        *v13 = a3;
        *(v13 + 1) = a4;
        v17 = v13 + 16;
      }

      *(v10 + 2) = v17;
    }
  }
}

uint64_t *std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::vector[abi:fn200100](uint64_t *a1, __int128 *a2, unint64_t a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[11] = (a1 + 3);
  if (a3)
  {
    std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__vallocate[abi:fn200100](a1, a3);
    v6 = a1[1];
    v7 = 16 * a3;
    do
    {
      v8 = *a2++;
      *v6++ = v8;
      v7 -= 16;
    }

    while (v7);
    a1[1] = v6;
  }

  return a1;
}

uint64_t std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__vallocate[abi:fn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >> 60)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  result = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<CFRange,4ul>>((a1 + 3), a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 16 * v4;
  return result;
}

uint64_t std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<CFRange,4ul>>(uint64_t a1, unint64_t a2)
{
  v3 = (a1 + 64);
  result = *(a1 + 64);
  v4 = result + 16 * a2;
  if (v4 > v3)
  {
    if (!(a2 >> 60))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v3 = v4;
  return result;
}

void std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = v1 + 11;
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
        *v3 = v2;
      }
    }

    else
    {
      operator delete(v2);
    }
  }
}

uint64_t std::allocator_traits<TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 3120);
  result = *(a1 + 3120);
  v4 = result + 104 * a2;
  if (v4 > v2)
  {
    if (a2 < 0x276276276276277)
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v2 = v4;
  return result;
}

void *std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<std::pair<unsigned short,unsigned short>*>,std::__wrap_iter<std::pair<unsigned short,unsigned short>*>>(void *result, int *a2, int *a3, unint64_t a4)
{
  v6 = a2;
  v7 = result;
  v8 = *result;
  if (a4 <= (result[2] - *result) >> 2)
  {
    v13 = result[1];
    if (a4 <= (v13 - v8) >> 2)
    {
      while (v6 != a3)
      {
        v17 = *v6++;
        *v8 = v17;
        v8 += 4;
      }
    }

    else
    {
      v14 = (a2 + v13 - v8);
      if (v13 != v8)
      {
        do
        {
          v15 = *v6++;
          *v8 = v15;
          v8 += 4;
        }

        while (v6 != v14);
      }

      v8 = v13;
      if (v14 != a3)
      {
        v8 = v13;
        do
        {
          v16 = *v14++;
          *v13 = v16;
          v13 += 4;
          v8 += 4;
        }

        while (v14 != a3);
      }
    }
  }

  else
  {
    std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::__vdeallocate(result);
    if (a4 >> 62)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = v7[2] - *v7;
    v10 = v9 >> 1;
    if (v9 >> 1 <= a4)
    {
      v10 = a4;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v11 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v10;
    }

    result = std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::__vallocate[abi:fn200100](v7, v11);
    v8 = v7[1];
    while (v6 != a3)
    {
      v12 = *v6++;
      *v8 = v12;
      v8 += 4;
    }
  }

  v7[1] = v8;
  return result;
}

uint64_t std::__function::__value_func<void ()(CFRange,long)>::~__value_func[abi:fn200100](uint64_t a1)
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

uint64_t TGlyphIterator::CurrentGlyphIsIgnored(TGlyphIterator *this, const OTL::Lookup *a2)
{
  v4 = *(this + 6);
  v10 = *this;
  v11 = v4;
  v5 = TRunGlue::TGlyph::glyphID(&v10);
  v6 = v5;
  if (!a2)
  {
    if (v5 == 0xFFFF)
    {
      return 1;
    }

    goto LABEL_6;
  }

  v7 = OTL::Lookup::CoversGlyph(a2, v5);
  result = 1;
  if (v7 && v6 != 0xFFFF)
  {
LABEL_6:
    if ((TRunGlue::IsDeleted(v10, v11) & 1) == 0)
    {
      v9 = *(this + 9);
      if (v9)
      {
        return (*(v9 + (v6 >> 3)) >> (v6 & 7)) & 1;
      }

      else
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

BOOL OTL::CoverageBitmap::CoversBitmap(OTL::CoverageBitmap *this, const unsigned __int8 *a2, unint64_t a3)
{
  v3 = *this;
  if (!v3)
  {
    return 0;
  }

  v4 = *(this + 2);
  if (a3 <= v4 >> 3)
  {
    return 0;
  }

  v5 = v4 >> 3;
  if (v3 == 1)
  {
    return (a2[v5] >> (v4 & 7)) & 1;
  }

  v7 = a3 - v5;
  if (v3 <= 0x10000)
  {
    v8 = (v3 + 7) >> 3;
  }

  else
  {
    v8 = 0x2000;
  }

  if (v8 < v7)
  {
    v7 = v8;
  }

  v9 = *(this + 1);
  v10 = &a2[v5];
  if (v7 >= 0x2000)
  {
    v7 = 0x2000;
  }

  if (((v9 | v10) & 7) != 0)
  {
    v11 = 0;
  }

  else
  {
    v22 = 0;
    v11 = v7 & 0x3FF8;
    result = 1;
    while (v22 + 8 <= v7)
    {
      v23 = *(v9 + v22);
      v24 = *&v10[v22];
      v22 += 8;
      if ((v24 & v23) != 0)
      {
        return result;
      }
    }
  }

  v12 = v11 >= v7;
  v13 = v11 - v7;
  if (v12)
  {
    return 0;
  }

  v14 = v13 + 1;
  v15 = &a2[v11 + v5];
  v16 = (v9 + v11);
  do
  {
    v18 = *v16++;
    v17 = v18;
    v19 = *v15++;
    v20 = v19 & v17;
    result = v20 != 0;
    if (v20)
    {
      v21 = 1;
    }

    else
    {
      v21 = v14 == 0;
    }

    ++v14;
  }

  while (!v21);
  return result;
}

uint64_t TGlyphIterator::NextCoveredBy(TGlyphIterator *this, const OTL::Lookup *a2)
{
  if (*(this + 6) == *(this + 3))
  {
    return 0;
  }

  while (1)
  {
    v5 = *(this + 2);
    v6 = *(this + 6) + v5;
    *(this + 6) = v6;
    if (v5 < 1)
    {
      break;
    }

    if (v6 >= *(this + 3))
    {
      return 0;
    }

LABEL_8:
    if ((TGlyphIterator::CurrentGlyphIsIgnored(this, a2) & 1) == 0)
    {
      return 1;
    }
  }

  if ((v5 & 0x80000000) == 0 || v6 > *(this + 3))
  {
    goto LABEL_8;
  }

  return 0;
}

void OTL::GSUB::ApplyLookupSubtable(uint64_t a1, int a2, int a3, unsigned __int16 *a4, TGlyphIterator *this, unsigned int a6, unsigned int a7, _WORD *a8, uint64_t a9, uint64_t a10)
{
  if (a3 <= 3)
  {
    if (a3 == 1)
    {

      OTL::GSUB::ApplySingleSubst(a1, a4, this, a6, a9);
    }

    else if (a3 == 2)
    {
      if (*a4 == 256 && OTL::GSUB::ApplyMultipleSubst(a1, a4, this, a6, a8, a9) && TRunGlue::length(*this) > *(a9 + 40))
      {
        **(a9 + 32) = 1;
      }
    }

    else if (a3 == 3 && *a4 == 256)
    {

      OTL::GSUB::ApplyAlternateSubst(a1, a4, this, a6, a7, a9);
    }
  }

  else if (a3 > 5)
  {
    if (a3 == 6)
    {
      v12 = bswap32(*a4) >> 16;
      switch(v12)
      {
        case 3u:

          OTL::GSUB::ApplyChainContextSubstFormat3(a1, a4, this, a8, a9, a10);
          break;
        case 2u:

          OTL::GSUB::ApplyChainContextSubstFormat2(a1, a4, this, a8, a9, a10);
          break;
        case 1u:

          OTL::GSUB::ApplyChainContextSubstFormat1(a1, a4, this, a6, a8, a9, a10);
          break;
      }
    }

    else if (a3 == 8 && *a4 == 256)
    {

      OTL::GSUB::ApplyReverseChainSingleSubst(a1, a4, this, a6, a9);
    }
  }

  else if (a3 == 4)
  {
    if (*a4 == 256)
    {

      OTL::GSUB::ApplyLigatureSubst(a1, a4, this, a6, a8, a9);
    }
  }

  else
  {
    v11 = bswap32(*a4) >> 16;
    switch(v11)
    {
      case 3u:

        OTL::GSUB::ApplyContextSubstFormat3(a1, a4, this, a8, a9, a10);
        break;
      case 2u:

        OTL::GSUB::ApplyContextSubstFormat2(a1, a4, this, a8, a9, a10);
        break;
      case 1u:

        OTL::GSUB::ApplyContextSubstFormat1(a1, a4, this, a6, a8, a9, a10);
        break;
    }
  }
}

BOOL OTL::CoverageBitmap::Covers(OTL::CoverageBitmap *this, unsigned int a2)
{
  v2 = *this;
  if (!*this)
  {
    return 0;
  }

  if (v2 == 1)
  {
    return *(this + 2) == a2;
  }

  v4 = *(this + 2);
  v5 = a2 >= v4;
  v6 = a2 - v4;
  if (v5 && v2 > v6)
  {
    return (*(*(this + 1) + (v6 >> 3)) >> (v6 & 7)) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t OTL::Coverage::SearchFmt1Linear(OTL::Coverage *this, int a2)
{
  v2 = *(this + 1);
  v3 = (*this + 4);
  v4 = __rev16(*(*this + 2));
  v5 = &v3[v4];
  if (*this + 6 <= v2)
  {
    LODWORD(v6) = (v2 - v3) >> 1;
  }

  else
  {
    LODWORD(v6) = 0;
  }

  v7 = bswap32(v6) >> 16;
  if (v5 < v3 || v5 > v2)
  {
    v9 = v7;
  }

  else
  {
    LOWORD(v6) = v4;
    v9 = *(*this + 2);
  }

  if (!v9)
  {
    return 0;
  }

  if ((v6 & 0xFFFE) != 0)
  {
    v6 = v6;
  }

  else
  {
    v6 = 1;
  }

  result = 1;
  while (1)
  {
    v11 = *v3++;
    if (a2 == bswap32(v11) >> 16)
    {
      break;
    }

    result = (result + 1);
    if (!--v6)
    {
      return 0;
    }
  }

  return result;
}

unsigned __int16 *ChainContextSubstFormat2::NthChainSubClassSet(ChainContextSubstFormat2 *this, unsigned int a2, unint64_t a3)
{
  if (a2 >= bswap32(*(this + 5)) >> 16)
  {
    return 0;
  }

  if (!*(this + a2 + 6))
  {
    return 0;
  }

  v3 = (this + __rev16(*(this + a2 + 6)));
  v4 = v3 + 1;
  if ((v3 + 1) > a3)
  {
    return 0;
  }

  v6 = bswap32(*v3) >> 16;
  v7 = &v4[v6];
  v9 = v7 >= v4 && v7 <= a3;
  v10 = (a3 - v4) >> 1;
  if ((v3 + 2) > a3)
  {
    v10 = 0;
  }

  if (v9 || v10 == v6)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t OTL::GSUB::ApplySubstLookupRecords(uint64_t a1, unint64_t a2, unsigned __int16 *a3, int a4, uint64_t a5, uint64_t a6, void *a7, unint64_t a8, _WORD *a9, uint64_t a10, uint64_t a11)
{
  v49 = *MEMORY[0x1E69E9840];
  v43 = a8;
  v13 = *(a5 + 72);
  if (!a4)
  {
    LOBYTE(v18) = 0;
    if (!a8)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

  v14 = a4;
  v15 = a3;
  v16 = a2;
  v35 = *(a5 + 72);
  v36 = a6;
  v18 = 0;
  v19 = a3;
  while (1)
  {
    a8 = v43;
    if (v15 < v16)
    {
      break;
    }

    v20 = v19 + 2;
    if ((v19 + 2) > *(a1 + 40))
    {
      break;
    }

    v21 = bswap32(*v19) >> 16;
    if (v43 > v21)
    {
      *(a5 + 48) = a7[v21];
      v22 = TBaseFont::NthLookup<OTL::GSUB>(*(*(a1 + 16) + 408), a1, bswap32(v19[1]) >> 16);
      if (v22)
      {
        v23 = v22;
        v42 = 0;
        *&v24 = 0xAAAAAAAAAAAAAAAALL;
        *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v44[1] = 0xAAAAAAAAAAAAAAAALL;
        v45 = v24;
        v44[0] = v24;
        v41[0] = a10;
        v41[1] = a5;
        v41[2] = a7;
        v41[3] = &v43;
        v46 = &unk_1EF258900;
        v47 = v41;
        v48 = &v46;
        std::__function::__value_func<void ()(CFRange,long)>::swap[abi:fn200100](&v46, v44);
        std::__function::__value_func<void ()(CFRange,long)>::~__value_func[abi:fn200100](&v46);
        v25 = *(a10 + 40);
        *&v45 = *(a10 + 32);
        *(&v45 + 1) = v25;
        *(a5 + 72) = OTL::Lookup::ignore(v23, *(a1 + 24));
        v26 = OTL::GSUB::ApplyLookupAt(a1, v23, v23[8], a5, 0, &v42, v44, a11);
        if (v42)
        {
          v39 = v26;
          v40 = v18;
          *a9 += v42;
          v27 = &a7[v43];
          v28 = v27;
          v29 = a7;
          if (v43)
          {
            v30 = 8 * v43;
            v29 = a7;
            while (1)
            {
              v31 = *v29;
              v46 = *a5;
              v47 = v31;
              if (TRunGlue::TGlyph::glyphID(&v46) == 0xFFFF)
              {
                break;
              }

              ++v29;
              v30 -= 8;
              if (!v30)
              {
                goto LABEL_19;
              }
            }
          }

          if (v29 != v27)
          {
            v32 = v29 + 1;
            v28 = v29;
            while (v32 != v27)
            {
              v33 = *v32;
              v46 = *a5;
              v47 = v33;
              if (TRunGlue::TGlyph::glyphID(&v46) != 0xFFFF)
              {
                *v28++ = *v32;
              }

              ++v32;
            }
          }

LABEL_19:
          v43 = v28 - a7;
          v26 = v39;
          v18 = v40;
          v16 = a2;
          v15 = a3;
        }

        v18 |= v26;
        std::__function::__value_func<void ()(CFRange,long)>::~__value_func[abi:fn200100](v44);
      }
    }

    v19 = v20;
    if (!--v14)
    {
      a8 = v43;
      break;
    }
  }

  v13 = v35;
  a6 = v36;
  if (a8)
  {
LABEL_24:
    a6 = a7[a8 - 1];
  }

LABEL_25:
  *(a5 + 48) = a6;
  *(a5 + 72) = v13;
  return v18 & 1;
}

uint64_t TGlyphIterator::NextContext(TGlyphIterator *this, uint64_t a2)
{
  if (*(this + 6) == *(this + 5))
  {
    return 0;
  }

  v3 = a2;
  if (a2 >= 1)
  {
    while (1)
    {
      v5 = *(this + 2);
      v6 = *(this + 6) + v5;
      *(this + 6) = v6;
      if (v5 < 1)
      {
        if ((v5 & 0x80000000) != 0 && v6 <= *(this + 5))
        {
          return 0;
        }
      }

      else if (v6 >= *(this + 5))
      {
        return 0;
      }

      if ((TGlyphIterator::CurrentGlyphIsIgnored(this, 0) & 1) == 0)
      {
        result = 1;
        if (v3-- <= 1)
        {
          return result;
        }
      }
    }
  }

  return 1;
}

uint64_t std::__function::__func<OTL::GSUB::ApplySubstLookupRecords(OTL::LookupSubtable const*,OTL::SubstLookupRecord const*,unsigned int,TGlyphIterator &,long,long *,unsigned long,unsigned short *,OTL::SubstitutionState *,unsigned long)::$_0,std::allocator<OTL::GSUB::ApplySubstLookupRecords(OTL::LookupSubtable const*,OTL::SubstLookupRecord const*,unsigned int,TGlyphIterator &,long,long *,unsigned long,unsigned short *,OTL::SubstitutionState *,unsigned long)::$_0>,void ()(CFRange,long)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF258900;
  a2[1] = v2;
  return result;
}

uint64_t OTL::GSUB::ApplySingleSubst(uint64_t a1, unsigned __int16 *a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v10 = *(a3 + 48);
  v21[0] = *a3;
  v21[1] = v10;
  v11 = TRunGlue::TGlyph::glyphID(v21);
  v12 = bswap32(*a2) >> 16;
  if (v12 == 2)
  {
    v13 = *(a1 + 40);
    v14 = a2 + 3;
    if ((a2 + 3) <= v13)
    {
      v15 = bswap32(a2[2]) >> 16;
      v16 = __CFADD__(v14, 2 * v15);
      v17 = &v14[v15] > v13 || v16;
      v18 = (a2 + 4) <= v13 ? (v13 - v14) >> 1 : 0;
      v19 = v18 == v15 ? 0 : v17;
      if (v15 >= a4 && (v19 & 1) == 0)
      {
        v11 = bswap32(v14[a4 - 1]) >> 16;
      }
    }
  }

  else if (v12 == 1)
  {
    v11 += bswap32(a2[2]) >> 16;
  }

  TRunGlue::SetGlyphID<true>(*a3, *(a3 + 48), v11);
  std::function<void ()(CFRange,long)>::operator()(a5, *(a3 + 48), 1, 1);
  return 1;
}

void TTenuousComponentFont::InitializeVariationGraphicsFont(atomic_ullong *this)
{
  if (!atomic_load_explicit(this + 98, memory_order_acquire))
  {
    v9[3] = v1;
    v9[4] = v2;
    if ((*(*this + 904))(this))
    {
      v9[0] = 0xAAAAAAAAAAAAAAAALL;
      TBaseFont::CopyNativeFont(this, v9);
      v8 = 0;
      if (*(this + 793) == 1)
      {
        CreateFontWithVariation(atomic_load_explicit(v9, memory_order_acquire), atomic_load_explicit(this + 96, memory_order_acquire), &v7);
      }

      else
      {
        TCGFontCache::CopyFontWithOpticalSizeVariation(atomic_load_explicit(v9, memory_order_acquire), atomic_load_explicit(this + 10, memory_order_acquire), atomic_load_explicit(this + 96, memory_order_acquire), &v7);
      }

      v4 = 0;
      v5 = atomic_exchange(&v8, 0);
      atomic_compare_exchange_strong(this + 98, &v4, v5);
      if (v4)
      {
        v6 = v5;
      }

      else
      {
        v6 = 0;
      }
    }
  }
}

unint64_t TComponentFont::GetFontMatrix(TComponentFont *this)
{
  if ((*(this + 712) & 0x40) == 0)
  {
    return 0;
  }

  valuePtr[7] = v1;
  valuePtr[8] = v2;
  if (!*(this + 91))
  {
    ComponentAttribute = TComponentFont::GetComponentAttribute(this, @"Matrix");
    if (ComponentAttribute)
    {
      v6 = ComponentAttribute;
      v7 = malloc_type_calloc(1uLL, 0x30uLL, 0x1000040EED21634uLL);
      v8 = v7;
      if (v7)
      {
        v9 = 0;
        v10 = *MEMORY[0x1E695EFD0];
        v11 = *(MEMORY[0x1E695EFD0] + 32);
        v7[1] = *(MEMORY[0x1E695EFD0] + 16);
        v7[2] = v11;
        *v7 = v10;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v6, v9);
          if (ValueAtIndex)
          {
            valuePtr[0] = -1;
            CFNumberGetValue(ValueAtIndex, kCFNumberDoubleType, valuePtr);
            v13 = valuePtr[0];
          }

          else
          {
            v13 = 0;
          }

          v8[v9++] = v13;
        }

        while (v9 != 6);
      }

      v14 = 0;
      atomic_compare_exchange_strong(this + 91, &v14, v8);
      if (v14)
      {
        free(v8);
      }
    }
  }

  return atomic_load_explicit(this + 91, memory_order_acquire);
}

void TFont::GetUnsummedAdvancesForGlyphs(uint64_t a1, uint64_t a2, double *a3, int a4, uint64_t a5, int a6, uint64_t a7)
{
  v14.f64[0] = NAN;
  v14.f64[1] = NAN;
  v32 = v14;
  v33 = v14;
  v31 = v14;
  TFont::GetEffectiveMatrix(a1, &v31);
  v15 = vandq_s8(vceqq_f64(v31, xmmword_18475BD80), vandq_s8(vceqq_f64(v32, xmmword_18475A330), vceqzq_f64(v33)));
  v16 = vandq_s8(v15, vdupq_laneq_s64(v15, 1)).u64[0];
  UnscaledTrackAmount = TFont::GetUnscaledTrackAmount(a1);
  v18 = (*(**(a1 + 408) + 720))();
  v19 = v18;
  if ((a7 & 0x100000000) != 0)
  {
    a7 = a7;
  }

  else
  {
    a7 = 5;
  }

  if (a6 == 2 || !a6 && (*(a1 + 12) & 1) != 0)
  {
    if (GetUnscaledAdvances(a1, a2, a3, a4, a5, a6))
    {
      if (*(a1 + 400) == 1)
      {
        if ((a7 & 4) != 0)
        {
          v20 = v19;
        }

        else
        {
          v20 = 1;
        }

        ApplyFixedAdvances(atomic_load_explicit((a1 + 168), memory_order_acquire), v20, a5, a3, a4);
      }

      else
      {
        ScaleFactor = TFont::GetScaleFactor(a1);
        if ((v16 & 0x8000000000000000) != 0)
        {
          v27 = ScaleFactor != 1.0;
          if (UnscaledTrackAmount != 0.0)
          {
            v27 = 1;
          }

          if (a5 >= 1 && ((v27 | v19) & 1) != 0)
          {
            do
            {
              if (*a3 != 0.0)
              {
                v28 = ScaleFactor * (UnscaledTrackAmount + *a3);
                *a3 = v28;
                if (v19)
                {
                  *a3 = round(v28);
                }
              }

              a3 += a4;
              --a5;
            }

            while (a5);
          }
        }

        else
        {
          *&v22 = -1;
          *(&v22 + 1) = -1;
          *&v30.c = v22;
          *&v30.tx = v22;
          *&v30.a = v22;
          CGAffineTransformMakeScale(&v29, ScaleFactor, ScaleFactor);
          *&t1.a = v31;
          *&t1.c = v32;
          *&t1.tx = v33;
          t2 = v29;
          CGAffineTransformConcat(&v30, &t1, &t2);
          if (a5 >= 1)
          {
            a = v30.a;
            v24 = v30.c * 0.0;
            do
            {
              if (*a3 != 0.0)
              {
                v25 = v24 + a * (UnscaledTrackAmount + *a3);
                v26 = round(v25);
                if (v19)
                {
                  v25 = v26;
                }

                *a3 = v25;
              }

              a3 += a4;
              --a5;
            }

            while (a5);
          }
        }
      }
    }
  }

  else
  {
    TFont::GetAdvancesForGlyphsWithStyleFromCG(a1, a7, a2, a3, a4, a5, &v31, v16 >> 63, UnscaledTrackAmount, v18);
  }
}

void TRunGlue::SetGlyphID<true>(TRunGlue *this, int64_t a2, uint64_t a3)
{
  if (a3 == 0xFFFF)
  {

    TRunGlue::Delete(this, a2, 0);
  }

  else
  {
    v6 = *(this + 24);
    if (v6 && *(this + 63) > a3)
    {
      *(v6 + (a3 >> 3)) |= 1 << (a3 & 7);
    }

    v7 = *(this + 26);
    *(this + 25) |= 1 << a3;
    *(this + 26) = v7 | (1 << ((-1640531535 * a3) >> 26));
    if (*(this + 18))
    {
      TRunGlue::FocusOnIndex(this, a2);
      v8 = *(this + 18);
      v9 = a2 - *(this + 19);
      [*(v8 + 216) setGlyph:a3 atIndex:*(v8 + 200) + v9];
      if (*(this + 513) == 1 && (*(this + 512) & 1) != 0)
      {
        *(this + 514) = 1;
        [*(v8 + 216) setProps:*(*(*(v8 + 216) + 40) + 4 * *(v8 + 200) + 4 * v9) | 0x800u atIndex:*(v8 + 200) + v9];
      }

      else
      {
        v10 = *(this + 62);
        RenderingStyle = TAttributes::GetRenderingStyle((v8 + 40));
        TStorageRange::ResetAdvance(v8 + 192, v9, v10, RenderingStyle & 0xFFFFFFFFFFLL);
      }

      v12 = *(v8 + 216);
      v13 = *(v8 + 200);
      v14 = *(v12[5] + 4 * v13 + 4 * v9);
      if ((v14 & 0x40) != 0)
      {

        [v12 setProps:v14 & 0xFFFFEFBF | 0x1000 atIndex:v13 + v9];
      }
    }

    else
    {
      v15 = *(this + 19) + a2;
      *(*(this + 21) + 2 * v15) = a3;
      v16 = *(this + 62);
      v21 = a3;
      v20 = NAN;
      TFont::GetUnsummedAdvancesForGlyphs(v16, &v21, &v20, 1, 1, 0, 0);
      v17 = (*(this + 22) + 16 * v15);
      *v17 = *&v20;
      v17[1] = 0;
      v18 = *(this + 51);
      if (v18)
      {
        v19 = *(v18 + 4 * v15);
        if ((v19 & 0x1040) != 0)
        {
          *(v18 + 4 * v15) = v19 & 0xFFFFEFBF | 0x1000;
        }
      }
    }
  }
}

__n128 TFont::GetEffectiveMatrix@<Q0>(TFont *this@<X0>, uint64_t a2@<X8>)
{
  v4 = (*(**(this + 51) + 168))(*(this + 51));
  v5 = *(this + 6);
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
    v9 = *v4;
    v10 = v4[2];
    *&t1.c = v4[1];
    *&t1.tx = v10;
    *&t1.a = v9;
    v11 = *v5;
    v12 = v5[2];
    *&v16.c = v5[1];
    *&v16.tx = v12;
    *&v16.a = v11;
    CGAffineTransformConcat(a2, &t1, &v16);
    return result;
  }

  if (v4)
  {
    result = *v4;
    v7 = v4[1];
    v8 = v4[2];
  }

  else
  {
    if (!v5)
    {
      v14 = MEMORY[0x1E695EFD0];
      v15 = *(MEMORY[0x1E695EFD0] + 16);
      *a2 = *MEMORY[0x1E695EFD0];
      *(a2 + 16) = v15;
      result = v14[2];
      *(a2 + 32) = result;
      return result;
    }

    result = *v5;
    v7 = v5[1];
    v8 = v5[2];
  }

  *(a2 + 16) = v7;
  *(a2 + 32) = v8;
  *a2 = result;
  return result;
}

uint64_t TTenuousComponentFont::IsAppleColorEmoji(TTenuousComponentFont *this)
{
  if ((*(*this + 856))(this))
  {
    return 0;
  }

  if ((*(this + 46) & 0x40) == 0)
  {
    TBaseFont::DetermineFontFlags(this, 0x40u);
  }

  return (*(this + 45) >> 6) & 1;
}

double TFont::GetUnscaledTrackAmount(TFont *this)
{
  v5 = *(this + 10);
  if (v5 == 0x80000000)
  {
    v17 = v4;
    v18 = v3;
    v19 = v1;
    v20 = v2;
    valuePtr = 0;
    v7 = atomic_load_explicit(this + 21, memory_order_acquire);
    if (v7)
    {
      v8 = v7;
      Value = CFDictionaryGetValue(v7, @"NSCTFontUnscaledTrackingAttribute");

      if (Value)
      {
        CFNumberGetValue(Value, kCFNumberIntType, &valuePtr);
        goto LABEL_17;
      }
    }

    else
    {
    }

    v10 = *(this + 51);
    v11 = *(this + 4);
    if (v11 <= 0.0)
    {
      if ((v10[46] & 0x100) == 0)
      {
        TBaseFont::DetermineFontFlags(*(this + 51), 0x100u);
      }

      if ((v10[45] & 0x100) == 0 || !(*(*v10 + 704))(v10))
      {
        goto LABEL_17;
      }

      v11 = *(this + 3);
    }

    if (v11 != 0.0)
    {
      explicit = atomic_load_explicit(this + 21, memory_order_acquire);
      v13 = *(this + 3);
      if (*(this + 14))
      {
        v14 = (this + 56);
      }

      else
      {
        TFont::InitStrikeMetrics(this);
      }

      valuePtr = (*(*v10 + 560))(v10, explicit, v13 & 1, *v14, v11);
    }

LABEL_17:
    atomic_exchange(this + 10, valuePtr);
    return valuePtr;
  }

  return v5;
}

unint64_t TTenuousComponentFont::GetGraphicsFont(atomic_ullong *this)
{
  if (atomic_load_explicit(this + 96, memory_order_acquire) && (this[99] & 1) == 0)
  {
    TTenuousComponentFont::InitializeVariationGraphicsFont(this);
    v2 = 98;
  }

  else
  {
    v2 = 13;
  }

  return atomic_load_explicit(&this[v2], memory_order_acquire);
}

BOOL TFont::GetAdvancesForGlyphsWithStyleFromCG(uint64_t a1, uint64_t a2, uint64_t a3, double *a4, int a5, uint64_t a6, uint64_t a7, int a8, double a9, unsigned __int8 a10)
{
  InitializedGraphicsFont = TBaseFont::GetInitializedGraphicsFont(*(a1 + 408));
  if ((~a2 & 5) == 0 && a5 == 1 && (*(a1 + 400) & 1) == 0 && CGFontGetParserFont())
  {
    *&v20 = -1;
    *(&v20 + 1) = -1;
    *&v39.c = v20;
    *&v39.tx = v20;
    *&v39.a = v20;
    ScaleFactor = TFont::GetScaleFactor(a1);
    CGAffineTransformMakeScale(&v39, ScaleFactor, ScaleFactor);
    if ((a8 & 1) == 0)
    {
      v22 = *(a7 + 16);
      *&t1.a = *a7;
      *&t1.c = v22;
      *&t1.tx = *(a7 + 32);
      t2 = v39;
      CGAffineTransformConcat(&v38, &t1, &t2);
      v39 = v38;
    }

    FPFontGetGlyphIdealAdvanceWidths();
    if (a6 >= 1)
    {
      a = v39.a;
      v24 = v39.c * 0.0;
      v25 = a4;
      v26 = a6;
      do
      {
        if (*v25 != 0.0)
        {
          *v25 = v24 + a * (*v25 + a9);
        }

        ++v25;
        --v26;
      }

      while (v26);
      if (a10)
      {
        v27 = a6 + 1;
        do
        {
          *a4 = round(*a4);
          ++a4;
          --v27;
        }

        while (v27 > 1);
      }
    }

    return 1;
  }

  if (a2)
  {
    if ((a2 & 4) != 0)
    {
      v30 = a10;
    }

    else
    {
      v30 = 1;
    }

    result = GetGlyphAdvancesForStyle(InitializedGraphicsFont, 0, a2 | 4, a3, a6, a4, a5);
    if (result)
    {
      if (*(a1 + 400) == 1)
      {
        ApplyFixedAdvances(atomic_load_explicit((a1 + 168), memory_order_acquire), v30, a6, a4, a5);
      }

      else
      {
        *&v33 = -1;
        *(&v33 + 1) = -1;
        *&t1.c = v33;
        *&t1.tx = v33;
        *&t1.a = v33;
        TFont::GetScaledMatrix(a1, &t1);
        if (a6 >= 1)
        {
          v34 = t1.a;
          v35 = t1.c * 0.0;
          do
          {
            if (*a4 != 0.0)
            {
              v36 = v35 + v34 * (*a4 + a9);
              v37 = round(v36);
              if (v30)
              {
                v36 = v37;
              }

              *a4 = v36;
            }

            a4 += a5;
            --a6;
          }

          while (a6);
        }
      }

      return 1;
    }
  }

  else
  {
    EffectiveSize = TFont::GetEffectiveSize(a1);
    *&v29 = -1;
    *(&v29 + 1) = -1;
    *&t2.c = v29;
    *&t2.tx = v29;
    *&t2.a = v29;
    if (a8)
    {
      CGAffineTransformMakeScale(&t2, EffectiveSize, EffectiveSize);
    }

    else
    {
      v32 = *(a7 + 16);
      t1.a = *a7;
      t1.b = 0.0;
      t1.c = v32;
      t1.d = 1.0;
      *&t1.tx = *(a7 + 32);
      CGAffineTransformScale(&t2, &t1, EffectiveSize, EffectiveSize);
    }

    return GetGlyphAdvancesForStyle(InitializedGraphicsFont, &t2, a2, a3, a6, a4, a5);
  }

  return result;
}

uint64_t TBaseFont::GetInitializedGraphicsFont(TBaseFont *this)
{
  explicit = (*(*this + 576))(this);
  if (!explicit)
  {
    (*(*this + 504))(&v4, this);
    explicit = atomic_load_explicit(&v4, memory_order_acquire);
  }

  return explicit;
}

uint64_t TCFBase<TDescriptor>::CreateTypeID()
{
  {
    TCFBase<TDescriptor>::CreateTypeID(void)::runtimeClass = 0;
    *algn_1ED567278 = "CTFontDescriptor";
    qword_1ED567280 = 0;
    unk_1ED567288 = 0;
    qword_1ED567290 = TCFBase<TDescriptor>::ClassDestruct;
    qword_1ED567298 = TCFBase<TDescriptor>::ClassEqual;
    qword_1ED5672A0 = TCFBase<TDescriptor>::ClassHash;
    unk_1ED5672A8 = 0;
    qword_1ED5672B0 = TCFBase<TDescriptor>::ClassDebug;
    unk_1ED5672B8 = 0;
    qword_1ED5672C0 = 0;
    unk_1ED5672C8 = 0;
  }

  result = _CFRuntimeRegisterClass();
  TCFBase<TDescriptor>::fTypeID = result;
  return result;
}

Class _CTFontDescriptorEnableBridging(uint64_t a1)
{
  result = objc_lookUpClass("UICTFontDescriptor");
  if (result)
  {

    return MEMORY[0x1EEDB8558](a1, "UICTFontDescriptor");
  }

  return result;
}

void EnsureGSFontInitialized(void)
{
  if (EnsureGSFontInitialized(void)::onceToken != -1)
  {
    dispatch_once_f(&EnsureGSFontInitialized(void)::onceToken, 0, EnsureGSFontInitialized(void)::$_0::__invoke);
  }
}

void MakeSpliceDescriptor(TDescriptorSource *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, __CFString *a4@<X3>, const __CFNumber *a5@<X4>, const __CFNumber *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, int a10, const __CFNumber *a11, const __CFNumber *a12, uint64_t a13, void *a14, void *a15, uint64_t a16)
{
  v21 = a3;
  v310[1] = *MEMORY[0x1E69E9840];
  v306 = 0xAAAAAAAAAAAAAAAALL;
  if ((TDescriptorSource::StashIndexForFontName(a1, &v306, a3) & 1) == 0)
  {
    *a9 = 0;
    return;
  }

  key = a2;
  number = a6;
  v24 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  memcpy(__dst, &__const__ZN17TDescriptorSource24MapTextStyleSizeCategoryEPK10__CFStringj23CTFontTextStylePlatformPdS4_S4_S2__overrideSpec, sizeof(__dst));
  __dst[5] = 3;
  if (a12)
  {
    v307[0] = -1;
    v25 = a12;
LABEL_7:
    CFNumberGetValue(v25, kCFNumberDoubleType, v307);
    v26 = *v307;
    v288 = 1;
    goto LABEL_8;
  }

  if (a11)
  {
    v307[0] = -1;
    v25 = a11;
    goto LABEL_7;
  }

  v288 = 0;
  v26 = NAN;
LABEL_8:
  if (a7)
  {
    CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"grade", [MEMORY[0x1E696AD98] numberWithUnsignedInt:a7]);
  }

  v289 = a7;
  v27 = v306;
  TextStyle = FindTextStyle(v306, __dst, a8);
  if (!TextStyle)
  {
    v33 = v27 - 156;
    if (v27 < 0x9C)
    {
LABEL_146:
      v92 = 0;
LABEL_147:
      v43 = a12;
      goto LABEL_148;
    }

    if (v33 <= 0x15)
    {
      v34 = v24;
      v283 = a9;
      v35 = &kOtherSpec[10 * v33];
      v36 = *v35;
      v307[0] = 0;
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontUIFontDesignTrait", @"NSCTFontUIFontDesignDefault");
      value = v36;
      v37 = TDescriptorSource::UIFontNameForUIType(v36);
      *v298 = 0xAAAAAAAAAAAAAAAALL;
      v38 = v35[1];
      v39 = v35[2];
      makeStyleName(v298, v38, v39, v307[0]);
      addNames(@".AppleSystemUIFont", atomic_load_explicit(v298, memory_order_acquire), v37, &Mutable);
      addMetrics(v38, v39, 0, @"width", number, &Mutable);
      v303 = 0;
      LocalizedTrimSetKey = GetLocalizedTrimSetKey(v21, &v303);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"legibilityWeight", [MEMORY[0x1E696AD98] numberWithLong:a13]);
      v41 = *MEMORY[0x1E695E4D0];
      if (*MEMORY[0x1E695E4D0] == a14)
      {
        CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"ignoreLegibilityWeight", v41);
      }

      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasVariations", v41);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasOpticalSizeAxis", v41);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"languagePropertiesCacheKey", @".AppleSystemUIFont");
      if (@"NSCTFontUIFontDesignSoft" == a4 || a4 && @"NSCTFontUIFontDesignSoft" && CFEqual(a4, @"NSCTFontUIFontDesignSoft"))
      {
        v302 = CFDictionaryCreateMutable(v34, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v42 = v35[4];
        v43 = a12;
        if (a13 == 1)
        {
          a9 = v283;
          v44 = v289;
          v45 = v36;
          if (v42 <= 0x10 && ((0x1FEFFu >> v42) & 1) != 0)
          {
            v42 = dword_184773744[v42];
          }
        }

        else
        {
          a9 = v283;
          v44 = v289;
          v45 = v36;
        }

        if (v45 <= 0x8A)
        {
          v113 = v42 % 9;
          if (v42 % 9 <= 2)
          {
            DetermineLanguageSpecificParameters();
            if (v113 < dword_1ED567468)
            {
              v42 = v42 - v113 + dword_1ED567468;
            }
          }
        }

        setNameWithGrade(*(qword_1ED566F08 + 8 * (v42 % 9)), v44, &v302);
        if (v303 == 64 || v303 == 32)
        {
          CFDictionaryAddValue(atomic_load_explicit(&v302, memory_order_acquire), @"UnicodeCharSetTrim", LocalizedTrimSetKey);
        }

        v310[0] = atomic_load_explicit(&v302, memory_order_acquire);
        CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Components", [MEMORY[0x1E695DEC8] arrayWithObjects:v310 count:1]);
        CFDictionarySetValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontUIFontDesignTrait", a4);

        goto LABEL_200;
      }

      v101 = v35[4];
      if (a13 == 1)
      {
        v102 = number;
        if (v101 <= 0x10 && ((0x1FEFFu >> v101) & 1) != 0)
        {
          v101 = dword_184773744[v101];
        }
      }

      else
      {
        v102 = number;
      }

      if (v36 <= 0x8A)
      {
        v122 = v101 % 9;
        if (v101 % 9 <= 2)
        {
          DetermineLanguageSpecificParameters();
          if (v122 < dword_1ED567468)
          {
            v101 = v101 - v122 + dword_1ED567468;
          }
        }

        v102 = number;
      }

      if (v289)
      {
        v123 = LocalizedTrimSetKey;
        if (v101 != 17 && v101 != 8)
        {
          goto LABEL_197;
        }
      }

      else
      {
        v123 = LocalizedTrimSetKey;
      }

      v289 = 0;
LABEL_197:
      v124 = SFFontNameForWidth(v101, v102, v307);
      AddVariationInfoWithGrade(&Mutable, v124, v289);
      v125 = CFArrayCreateMutable(v34, 0, MEMORY[0x1E695E9C0]);
      for (i = 0; i != 4; i += 2)
      {
        v127 = *&kOtherSpec[10 * v27 - 1554 + i];
        v302 = CFDictionaryCreateMutable(v34, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        setOpticalSizeComponent(v124, &kFont2X[5 * v101], value, 0, v289, v123, &v302, 0, v127 * 0.5, 0.0, 0.0, 0.0, 0, 0);
        CFArrayInsertValueAtIndex(v125, 0, atomic_load_explicit(&v302, memory_order_acquire));
      }

      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Components", v125);

      a9 = v283;
      v43 = a12;
LABEL_200:
      v91 = *v298;
      goto LABEL_138;
    }

    v78 = v27 - 178;
    if (v27 - 178 <= 0x13)
    {
      v79 = kOtherSpecCompact[v78];
      v80 = &kOtherSpec[10 * v78];
      v81 = *(v80 + 1);
      *v307 = *v80;
      *&v307[2] = v81;
      v307[4] = *(v80 + 4);
      LODWORD(v307[0]) = v79;
      addPosingWithWeightAndSlant(v79, HIDWORD(v307[0]), v307[1], SHIDWORD(v307[1]), @".AppleSystemUIFontCompact", @"NSCTFontUIFontDesignCompact", &Mutable, 0, 0);
      v82 = a13;
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"legibilityWeight", [MEMORY[0x1E696AD98] numberWithLong:a13]);
      v83 = *MEMORY[0x1E695E4D0];
      if (*MEMORY[0x1E695E4D0] == a14)
      {
        CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"ignoreLegibilityWeight", v83);
      }

      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasVariations", v83);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasOpticalSizeAxis", v83);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"languagePropertiesCacheKey", @".AppleSystemUIFontCompact");
      v84 = &kFont2XCompact;
      v85 = v307;
      goto LABEL_130;
    }

    v93 = v27 - 198;
    if (v27 - 198 <= 0x13)
    {
      v94 = kOtherSpecCore[v93];
      v95 = &kOtherSpec[10 * v93];
      v96 = *(v95 + 1);
      *v307 = *v95;
      *&v307[2] = v96;
      v307[4] = *(v95 + 4);
      LODWORD(v307[0]) = v94;
      addPosingWithWeightAndSlant(v94, HIDWORD(v307[0]), v307[1], SHIDWORD(v307[1]), @".AppleSystemUIFontCore", @"NSCTFontUIFontDesignCore", &Mutable, @"width", a6);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"legibilityWeight", [MEMORY[0x1E696AD98] numberWithLong:a13]);
      v97 = *MEMORY[0x1E695E4D0];
      if (*MEMORY[0x1E695E4D0] == a14)
      {
        CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"ignoreLegibilityWeight", v97);
      }

      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasVariations", v97);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasOpticalSizeAxis", v97);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"languagePropertiesCacheKey", @".AppleSystemUIFontCore");
      v87 = GetLocalizedTrimSetKey(v21, v298);
      v84 = &kFont2XPro;
      v85 = v307;
      v86 = a7;
      v88 = a13;
      v89 = number;
      goto LABEL_145;
    }

    v103 = v24;
    v104 = v27 - 218;
    if (v27 - 218 <= 8)
    {
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontUIFontDesignTrait", @"NSCTFontUIFontDesignRounded");
      v105 = kSystemUIFontRoundNames[v104];
      v108 = TDescriptorSource::TextStyleForUIFontName(v105, v106, v107);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontUIUsageAttribute", v108);
      v109 = CommonStyleNameForIndex(v27 - 218);
      v110 = v27 - 217;
      addNames(@".AppleSystemUIFontRounded", v109, v105, &Mutable);
      addMetrics(v27 - 217, 0, 0, 0, 0, &Mutable);
      if (a13 == 1)
      {
        v111 = 0x1E696A000;
        v112 = a14;
        v43 = a12;
        if (v104 > 7)
        {
          v110 = v104;
        }

        else if (((1 << v104) & 0x78) != 0)
        {
          v110 = v104 + 2;
LABEL_205:
          CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"legibilityWeight", [*(v111 + 3480) numberWithLong:a13]);
          v128 = *MEMORY[0x1E695E4D0];
          if (*MEMORY[0x1E695E4D0] == v112)
          {
            CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"ignoreLegibilityWeight", v128);
          }

          CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasVariations", v128);
          CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"languagePropertiesCacheKey", @".AppleSystemUIFontRounded");
          LODWORD(v307[0]) = 0;
          v129 = GetLocalizedTrimSetKey(v21, v307);
          v130 = qword_1ED566F18;
LABEL_219:
          v139 = v130[v110];
          if (LODWORD(v307[0]) == 64 || LODWORD(v307[0]) == 32)
          {
            v141 = v129;
          }

          else
          {
            v141 = 0;
          }

          addComponentsWithNameAndTrimCharacterSet(v139, v141, &Mutable);
          goto LABEL_139;
        }
      }

      else
      {
        v110 = v27 - 218;
        v111 = 0x1E696A000uLL;
        v112 = a14;
        v43 = a12;
      }

      if (v110 <= 2)
      {
        DetermineLanguageSpecificParameters();
        if (v110 <= dword_1ED567468)
        {
          v110 = dword_1ED567468;
        }
      }

      goto LABEL_205;
    }

    v114 = v27 - 227;
    if (v27 - 227 <= 8)
    {
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontUIFontDesignTrait", @"NSCTFontUIFontDesignCompactRounded");
      v115 = kSystemUIFontCompactRoundNames[v114];
      v118 = TDescriptorSource::TextStyleForUIFontName(v115, v116, v117);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontUIUsageAttribute", v118);
      v119 = CommonStyleNameForIndex(v27 - 227);
      v110 = v27 - 226;
      addNames(@".AppleSystemUIFontCompactRounded", v119, v115, &Mutable);
      addMetrics(v27 - 226, 0, 0, 0, 0, &Mutable);
      if (a13 == 1)
      {
        v120 = 0x1E696A000;
        v121 = a14;
        v43 = a12;
        if (v114 > 7)
        {
          v110 = v114;
        }

        else if (((1 << v114) & 0x78) != 0)
        {
          v110 = v114 + 2;
LABEL_216:
          CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"legibilityWeight", [*(v120 + 3480) numberWithLong:a13]);
          v138 = *MEMORY[0x1E695E4D0];
          if (*MEMORY[0x1E695E4D0] == v121)
          {
            CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"ignoreLegibilityWeight", v138);
          }

          CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasVariations", v138);
          CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"languagePropertiesCacheKey", @".AppleSystemUIFontCompactRounded");
          LODWORD(v307[0]) = 0;
          v129 = GetLocalizedTrimSetKey(v21, v307);
          v130 = kFontCompactRounded;
          goto LABEL_219;
        }
      }

      else
      {
        v110 = v27 - 227;
        v120 = 0x1E696A000uLL;
        v121 = a14;
        v43 = a12;
      }

      if (v110 <= 2)
      {
        DetermineLanguageSpecificParameters();
        if (v110 <= dword_1ED567468)
        {
          v110 = dword_1ED567468;
        }
      }

      goto LABEL_216;
    }

    if (v27 - 236 <= 8)
    {
      v131 = &kOtherCondensedSpec + 40 * v27 - 9440;
      v132 = *v131;
      v133 = *(v131 + 1);
      makeStyleName(v307, v133, 0, @"Condensed");
      explicit = atomic_load_explicit(v307, memory_order_acquire);
      v135 = TDescriptorSource::UIFontNameForUIType(v132);
      addNames(@".AppleSystemUIFont", explicit, v135, &Mutable);

      v136 = [MEMORY[0x1E696AD98] numberWithDouble:-0.2];
      addMetrics(v133, 0, 0, @"width", v136, &Mutable);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontProportionTrait", v136);
      v82 = a13;
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"legibilityWeight", [MEMORY[0x1E696AD98] numberWithLong:a13]);
      v137 = *MEMORY[0x1E695E4D0];
      if (*MEMORY[0x1E695E4D0] == a14)
      {
        CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"ignoreLegibilityWeight", v137);
      }

      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasVariations", v137);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasOpticalSizeAxis", v137);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"languagePropertiesCacheKey", @".AppleSystemUIFont");
      v84 = &kFontInfoSemiCondensed;
LABEL_230:
      v85 = v131;
LABEL_130:
      v86 = v289;
      v87 = 0;
      v88 = v82;
      v89 = 0;
LABEL_145:
      addOpticalSizeComponents(v85, v84, v86, v87, v88, v89, &Mutable);
      goto LABEL_146;
    }

    if (v27 - 245 <= 8)
    {
      v131 = &kOtherCoreCondensedSpec + 40 * v27 - 9800;
      v142 = *v131;
      v143 = *(v131 + 1);
      makeStyleName(v307, v143, 0, @"Condensed");
      v144 = atomic_load_explicit(v307, memory_order_acquire);
      v145 = TDescriptorSource::UIFontNameForUIType(v142);
      addNames(@".AppleSystemUIFontCore", v144, v145, &Mutable);

      v146 = [MEMORY[0x1E696AD98] numberWithDouble:-0.2];
      addMetrics(v143, 0, 0, @"width", v146, &Mutable);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontProportionTrait", v146);
      v82 = a13;
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"legibilityWeight", [MEMORY[0x1E696AD98] numberWithLong:a13]);
      v147 = *MEMORY[0x1E695E4D0];
      if (*MEMORY[0x1E695E4D0] == a14)
      {
        CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"ignoreLegibilityWeight", v147);
      }

      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasVariations", v147);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasOpticalSizeAxis", v147);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"languagePropertiesCacheKey", @".AppleSystemUIFontCore");
      v84 = &kFontInfoCoreSemiCondensed;
      goto LABEL_230;
    }

    v148 = v27 - 254;
    if (v27 - 254 <= 0xB)
    {
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontUIFontDesignTrait", @"NSCTFontUIFontDesignSerif");
      v149 = (&kOtherSerifSpec + 16 * v148);
      v150 = kSystemUIFontSerifNames[v148];
      v151 = *v149;
      v152 = v149[1];
      makeStyleName(v307, *v149, v152, 0);
      addNames(@".AppleSystemUIFontSerif", atomic_load_explicit(v307, memory_order_acquire), v150, &Mutable);
      addMetrics(v151, v152, 0, 0, 0, &Mutable);

      v153 = v149[3];
      if (a13 == 1)
      {
        v154 = v289;
        v43 = a12;
        if (v153 <= 0x10 && ((0x1FEFFu >> v153) & 1) != 0)
        {
          v153 = dword_184773744[v153];
        }
      }

      else
      {
        v154 = v289;
        v43 = a12;
      }

      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"legibilityWeight", [MEMORY[0x1E696AD98] numberWithLong:a13]);
      v167 = *MEMORY[0x1E695E4D0];
      if (*MEMORY[0x1E695E4D0] == a14)
      {
        CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"ignoreLegibilityWeight", v167);
      }

      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasVariations", v167);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasOpticalSizeAxis", v167);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"languagePropertiesCacheKey", @".AppleSystemUIFontSerif");
      v168 = v153 % 9;
      if (v153 % 9 <= 2)
      {
        DetermineLanguageSpecificParameters();
        if (v168 < dword_1ED567468)
        {
          v153 = v153 - v168 + dword_1ED567468;
        }
      }

      if ((0x361Bu >> (v153 - 4)))
      {
        v169 = 0;
      }

      else
      {
        v169 = v154;
      }

      if (v153 - 4 <= 0xD)
      {
        v170 = v169;
      }

      else
      {
        v170 = v154;
      }

      if (v154)
      {
        v171 = v170;
      }

      else
      {
        v171 = 0;
      }

      v172 = (&kFontSerif + 5 * v153);
      AddVariationInfoWithGrade(&Mutable, *v172, v171);
      v307[0] = CFArrayCreateMutable(v103, 0, MEMORY[0x1E695E9C0]);
      insertOpticalSizeComponent(v172, 0, (v148 + 241), 0, v171, v307, 0, 0, 12.0, 0);
      v173 = atomic_load_explicit(&Mutable, memory_order_acquire);
      v174 = atomic_load_explicit(v307, memory_order_acquire);
LABEL_270:
      CFDictionaryAddValue(v173, @"Components", v174);
      v91 = v307[0];
      goto LABEL_138;
    }

    v155 = v27 - 266;
    if (v27 - 266 <= 0xB)
    {
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontUIFontDesignTrait", @"NSCTFontUIFontDesignMonospaced");
      v156 = (&kOtherMonospacedSpec + 16 * v155);
      v157 = kSystemUIFontMonospacedNames[v155];
      v158 = *v156;
      v159 = v156[1];
      makeStyleName(v307, *v156, v159, 0);
      addNames(@".AppleSystemUIFontMonospaced", atomic_load_explicit(v307, memory_order_acquire), v157, &Mutable);

      addMetrics(v158, v159, 0, @"isFixedPitch", @"1", &Mutable);
      v90 = CFArrayCreateMutable(v103, 0, MEMORY[0x1E695E9C0]);
      v160 = v156[3];
      if (a13 == 1 && v160 <= 0x10 && ((0x1FEFFu >> v160) & 1) != 0)
      {
        v160 = dword_184773744[v160];
      }

      v161 = v160 % 9;
      if (v160 % 9 <= 2)
      {
        DetermineLanguageSpecificParameters();
        if (v161 < dword_1ED567468)
        {
          v160 = v160 - v161 + dword_1ED567468;
        }
      }

      v43 = a12;
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"legibilityWeight", [MEMORY[0x1E696AD98] numberWithLong:a13]);
      v162 = *MEMORY[0x1E695E4D0];
      if (*MEMORY[0x1E695E4D0] == a14)
      {
        CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"ignoreLegibilityWeight", v162);
      }

      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasVariations", v162);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"languagePropertiesCacheKey", v157);
      AddVariationInfo(&Mutable, *(&kFontMono + 5 * v160));
      addComponentsWithTrimCharacterSet(&kFontMono + 5 * v160, 0, &Mutable, 0, 0);
      goto LABEL_137;
    }

    v163 = v27 - 278;
    if (v27 - 278 <= 8)
    {
      v43 = a12;
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontUIFontDesignTrait", @"NSCTFontUIFontDesignSoft");
      v164 = kSystemUIFontSoftNames[v163];
      v165 = CommonStyleNameForIndex(v163);
      v166 = v163 + 1;
      addNames(@".AppleSystemUIFontSoft", v165, v164, &Mutable);
      addMetrics(v163 + 1, 0, 0, 0, 0, &Mutable);
      if (a13 == 1 && v163 <= 7)
      {
        if (((1 << v163) & 0x78) != 0)
        {
          v166 = v163 + 2;
LABEL_280:
          CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"legibilityWeight", [MEMORY[0x1E696AD98] numberWithLong:a13]);
          if (*MEMORY[0x1E695E4D0] == a14)
          {
            CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"ignoreLegibilityWeight", *MEMORY[0x1E695E4D0]);
          }

          CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"languagePropertiesCacheKey", @".AppleSystemUIFontSoft");
          v298[0] = 0;
          v179 = GetLocalizedTrimSetKey(v21, v298);
          v307[0] = CFDictionaryCreateMutable(v103, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          setNameWithGrade(*(qword_1ED566F08 + 8 * v166), v289, v307);
          if (v298[0] == 64 || v298[0] == 32)
          {
            CFDictionaryAddValue(atomic_load_explicit(v307, memory_order_acquire), @"UnicodeCharSetTrim", v179);
          }

          v309 = atomic_load_explicit(v307, memory_order_acquire);
          v174 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v309 count:1];
          v173 = atomic_load_explicit(&Mutable, memory_order_acquire);
          goto LABEL_270;
        }
      }

      else
      {
        v166 = v163;
      }

      if (v166 <= 2)
      {
        DetermineLanguageSpecificParameters();
        if (v166 <= dword_1ED567468)
        {
          v166 = dword_1ED567468;
        }
      }

      goto LABEL_280;
    }

    v284 = a9;
    v286 = v21;
    v175 = v27 - 287;
    if (v27 - 287 <= 8)
    {
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontUIFontDesignTrait", @"NSCTFontUIFontDesignCompactSoft");
      v176 = kSystemUIFontCompactSoftNames[v175];
      v177 = CommonStyleNameForIndex(v27 - 287);
      v178 = v27 - 286;
      addNames(@".AppleSystemUIFontCompactSoft", v177, v176, &Mutable);
      addMetrics(v27 - 286, 0, 0, 0, 0, &Mutable);
      if (a13 == 1 && v175 <= 7)
      {
        if (((1 << v175) & 0x78) != 0)
        {
          v178 = v27 - 285;
LABEL_297:
          CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"legibilityWeight", [MEMORY[0x1E696AD98] numberWithLong:a13]);
          if (*MEMORY[0x1E695E4D0] == a14)
          {
            CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"ignoreLegibilityWeight", *MEMORY[0x1E695E4D0]);
          }

          CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"languagePropertiesCacheKey", @".AppleSystemUIFontCompactSoft");
          v298[0] = 0;
          v192 = GetLocalizedTrimSetKey(v21, v298);
          v307[0] = CFDictionaryCreateMutable(v103, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
          setNameWithGrade(kFontSoftCompact[v178], v289, v307);
          if (v298[0] == 64 || v298[0] == 32)
          {
            CFDictionaryAddValue(atomic_load_explicit(v307, memory_order_acquire), @"UnicodeCharSetTrim", v192);
          }

          v308 = atomic_load_explicit(v307, memory_order_acquire);
          v193 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v308 count:1];
          v194 = atomic_load_explicit(&Mutable, memory_order_acquire);
          goto LABEL_303;
        }
      }

      else
      {
        v178 = v27 - 287;
      }

      if (v178 <= 2)
      {
        DetermineLanguageSpecificParameters();
        if (v178 <= dword_1ED567468)
        {
          v178 = dword_1ED567468;
        }
      }

      goto LABEL_297;
    }

    v180 = v27 - 296;
    if (v27 - 296 > 0x1F)
    {
      v195 = v27 - 328;
      if (v27 - 328 > 8)
      {
        v205 = v27 - 338;
        if (v27 < 0x152)
        {
          goto LABEL_305;
        }

        if (v205 > 7)
        {
          v221 = v27 - 347;
          if (v27 < 0x15B)
          {
            goto LABEL_305;
          }

          if (v221 <= 8)
          {
            v222 = kArabicNames[v221];
            v223 = CommonStyleNameForIndex(v27 - 347);
            v224 = &kFontSFArabic + 5 * v221;
            v225 = *(v224 + 4);
            addNames(@".AppleArabicFont", v223, v222, &Mutable);
            addMetrics(v225, 0, 0, 0, 0, &Mutable);
            v307[0] = CFArrayCreateMutable(v103, 0, MEMORY[0x1E695E9C0]);
            AddVariationInfo(&Mutable, *v224);
            insertOpticalSizeComponent(v224, 0, 0xFFFFFFFFLL, 0, 0, v307, 0, 0, 17.0, 1);
            v226 = atomic_load_explicit(&Mutable, memory_order_acquire);
            v227 = *MEMORY[0x1E695E4D0];
            CFDictionaryAddValue(v226, @"hasVariations", *MEMORY[0x1E695E4D0]);
            CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasOpticalSizeAxis", v227);
            CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"languagePropertiesCacheKey", @".AppleArabicFont");
            v194 = atomic_load_explicit(&Mutable, memory_order_acquire);
            v193 = atomic_load_explicit(v307, memory_order_acquire);
LABEL_303:
            CFDictionaryAddValue(v194, @"Components", v193);
            v191 = v307[0];
            goto LABEL_304;
          }

          v228 = v27 - 357;
          if (v27 < 0x165)
          {
            goto LABEL_305;
          }

          if (v228 > 2)
          {
            v234 = v27 - 361;
            if (v27 < 0x169)
            {
              goto LABEL_305;
            }

            if (v234 > 1)
            {
              v239 = v27 - 364;
              if (v27 < 0x16C)
              {
                goto LABEL_305;
              }

              if (v239 > 8)
              {
                if (v27 == 374)
                {
                  v191 = atomic_exchange(&Mutable, CreateSyntheticAppleSymbolsSplicedFont());
                }

                else
                {
                  v254 = v27 - 375;
                  if (v27 < 0x177)
                  {
                    goto LABEL_305;
                  }

                  if (v254 <= 3)
                  {
                    SyntheticAppleTimesSplicedFont = CreateSyntheticAppleTimesSplicedFont(v254);
                    if (SyntheticAppleTimesSplicedFont)
                    {

                      v92 = 1;
                      goto LABEL_306;
                    }

LABEL_305:
                    v92 = 0;
LABEL_306:
                    a9 = v284;
                    v21 = v286;
                    goto LABEL_147;
                  }

                  v256 = v27 - 379;
                  if (v27 - 379 > 8)
                  {
                    goto LABEL_305;
                  }

                  v257 = &kFont2X[5 * v256];
                  v258 = *(v257 + 4);
                  v259 = kSystemFallbackFontNames[v256];
                  v260 = CommonStyleNameForIndex(v27 - 379);
                  LODWORD(v257) = *(v257 + 5);
                  addNames(@".AppleSystemFallback", v260, v259, &Mutable);
                  addMetrics(v258, v257, 0, 0, 0, &Mutable);
                  v261 = CFArrayCreateMutable(v103, 0, MEMORY[0x1E695E9C0]);
                  *&v262 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v262 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  *v307 = v262;
                  *&v307[2] = v262;
                  GetLocalizedTrimCharacterSet(v307, v21);
                  v263 = atomic_load_explicit(v307, memory_order_acquire);
                  v264 = v307[1];
                  v265 = v307[2];
                  AddVariationInfo(&Mutable, off_1ED566F20[0][v256]);
                  if (v263 && v265)
                  {
                    CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"language", atomic_load_explicit(&v307[3], memory_order_acquire));
                    v266 = CFDictionaryCreateMutable(v103, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    CFDictionaryAddValue(v266, @"UnicodeCharSet", v263);
                    if (v256 >= v265)
                    {
                      v267 = v265 - 1;
                    }

                    else
                    {
                      v267 = v27 - 379;
                    }

                    v268 = *(v264 + 40 * v267);
                    if (HasPingFangUIPrefix(v268))
                    {
                      v269 = RegionCodeFromPingFangUI(v268);
                      if (v265 >= 0xA)
                      {
                        v265 = 9;
                      }

                      CFDictionaryAddValue(v266, @"name", [MEMORY[0x1E696AEC0] stringWithFormat:@".CJKSymbolsFallback%@-%@", v269, off_1E6E3D8E0[v267 % v265]]);
                      v270 = @"languagePropertiesCacheKey";
                      v271 = @".CJKSymbolsFallback";
                      v272 = v266;
                    }

                    else
                    {
                      v270 = @"name";
                      v272 = v266;
                      v271 = v268;
                    }

                    CFDictionaryAddValue(v272, v270, v271);
                    CFArrayAppendValue(v261, v266);

                    v286 = 0;
                  }

                  v273 = CFDictionaryCreateMutable(v103, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  CFDictionaryAddValue(v273, @"name", off_1ED566F20[0][v256]);
                  v274 = *MEMORY[0x1E695E4D0];
                  CFDictionaryAddValue(v273, @"hasVariations", *MEMORY[0x1E695E4D0]);
                  CFDictionaryAddValue(v273, @"hasOpticalSizeAxis", v274);
                  CFDictionaryAddValue(v273, @"languagePropertiesCacheKey", @".AppleSystemUIFont");
                  CFArrayAppendValue(v261, v273);

                  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Components", v261);
                  v191 = v261;
                }
              }

              else
              {
                v240 = kIndicNames[v239];
                v241 = CommonStyleNameForIndex(v27 - 364);
                Length = CFStringGetLength(v240);
                v313.length = Length + ~CFStringGetLength(v241);
                v313.location = 0;
                v243 = CFStringCreateWithSubstring(v103, v240, v313);
                v244 = *(&kFontIndicDevanagari + 10 * v239 + 4);
                addNames(v243, v241, v240, &Mutable);
                v245 = MEMORY[0x1E695E9D8];
                v246 = MEMORY[0x1E695E9E8];
                v247 = CFDictionaryCreateMutable(v103, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                v248 = weightString(v244);
                v296 = v247;
                CFDictionaryAddValue(v247, @"weightClass", v248);
                valueb = CFDictionaryCreateMutable(v103, 0, v245, v246);
                *v298 = 0;
                v299 = v298;
                v300 = 0x2020000000;
                v301 = @".SF Tamil";
                if ((_os_feature_enabled_impl() & 1) == 0)
                {
                  block[0] = MEMORY[0x1E69E9820];
                  block[1] = 3221225472;
                  block[2] = ___Z20MakeSpliceDescriptorPK10__CFStringmS1_S1_PK10__CFNumberS4_j23CTFontTextStylePlatformjS4_S4_22CTFontLegibilityWeightPK11__CFBooleanPKvS1__block_invoke_3;
                  block[3] = &unk_1E6E37AF8;
                  block[4] = v298;
                  if (qword_1ED5674A0 != -1)
                  {
                    dispatch_once(&qword_1ED5674A0, block);
                  }
                }

                v307[0] = @".SF Bangla";
                v307[1] = &kFontIndicBangla;
                v307[2] = @".SF Devanagari";
                v307[3] = &kFontIndicDevanagari;
                v307[4] = @".SF Gujarati";
                v307[5] = &kFontIndicGujarati;
                v307[6] = @".SF Gurmukhi";
                v307[7] = &kFontIndicGurmukhi;
                v307[8] = @".SF Kannada";
                v307[9] = &kFontIndicKannada;
                v307[10] = @".SF Malayalam";
                v307[11] = &kFontIndicMalayalam;
                v307[12] = @".SF Odia";
                v307[13] = &kFontIndicOdia;
                v307[14] = *(v299 + 3);
                v307[15] = qword_1ED566F30;
                v307[16] = @".SF Telugu";
                v307[17] = &kFontIndicTelugu;
                v249 = CFArrayCreateMutable(v103, 0, MEMORY[0x1E695E9C0]);
                v250 = 0;
                v251 = 40 * v239;
                v252 = *MEMORY[0x1E695E4D0];
                do
                {
                  v253 = CFDictionaryCreateMutable(v103, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                  CFDictionaryAddValue(v253, @"name", *(v307[v250 + 1] + v251));
                  CFDictionaryAddValue(v253, @"hasVariations", v252);
                  CFDictionaryAddValue(v253, @"needsScriptAnalysis", v252);
                  CFDictionaryAddValue(v253, @"languagePropertiesCacheKey", v307[v250]);
                  CFArrayAppendValue(v249, v253);

                  v250 += 2;
                }

                while (v250 != 18);
                CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Components", v249);

                _Block_object_dispose(v298, 8);
                v191 = v243;
              }

LABEL_304:

              goto LABEL_305;
            }

            v235 = @"Bold";
            if (v27 != 362)
            {
              v235 = 0;
            }

            if (v27 == 361)
            {
              v236 = @"Regular";
            }

            else
            {
              v236 = v235;
            }

            v237 = &kFontUrduNotoNastaliq + 5 * v234;
            v238 = *(v237 + 4);
            addNames(@".AppleUrduFont", v236, kUrduNames[v234], &Mutable);
            addMetrics(v238, 0, 0, 0, 0, &Mutable);
            v212 = v237;
          }

          else
          {
            if (qword_1ED567498 != -1)
            {
              dispatch_once(&qword_1ED567498, &__block_literal_global_640);
            }

            v229 = kThaiNames[v228];
            v230 = 5 * v228;
            v231 = qword_1ED566F28 + 40 * v228;
            v232 = *(v231 + 16);
            v233 = *(v231 + 20);
            addNames(@".AppleThaiFont", off_1E6E3DAF8[v27 - 357], v229, &Mutable);
            addMetrics(v232, v233, 0, 0, 0, &Mutable);
            v212 = (qword_1ED566F28 + 8 * v230);
          }

          v213 = 0;
        }

        else
        {
          v206 = kKoreanNames[v205];
          v207 = CommonStyleNameForIndex(v27 - 338);
          v208 = 5 * v205;
          v209 = &off_1ED566F10[0][5 * v205];
          v210 = *(v209 + 4);
          v211 = *(v209 + 5);
          addNames(@".AppleKoreanFont", v207, v206, &Mutable);
          addMetrics(v210, v211, 0, 0, 0, &Mutable);
          v212 = &off_1ED566F10[0][v208];
          v213 = @"ko";
        }

        addComponentsWithTrimCharacterSet(v212, v213, &Mutable, 1, 0);
        goto LABEL_305;
      }

      if (!_os_feature_enabled_impl())
      {
        v214 = CommonStyleNameForIndex(v27 - 328);
        addNames(@".AppleJapaneseFont", v214, kJapaneseNames[v195], &Mutable);
        v215 = CFDictionaryCreateMutable(v103, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        if (qword_1ED567520 != -1)
        {
          dispatch_once(&qword_1ED567520, &__block_literal_global_3846);
        }

        v216 = qword_1ED567480;
        v217 = qword_1ED567480 + 40 * v195;
        v218 = *(v217 + 16);
        v219 = weightString(v218);
        CFDictionaryAddValue(v215, @"weightClass", v219);
        if (*(v217 + 20) == 1)
        {
          CFDictionaryAddValue(v215, @"italicAngle", @"12.5");
        }

        v220 = &kFont2X[5 * (v218 - 1)];
        CFDictionaryAddValue(v215, @"ascender", [MEMORY[0x1E696AD98] numberWithInt:*(v220 + 6)]);
        CFDictionaryAddValue(v215, @"descender", [MEMORY[0x1E696AD98] numberWithInt:-*(v220 + 7)]);
        CFDictionaryAddValue(v215, @"unitsPerEm", [MEMORY[0x1E696AD98] numberWithDouble:*(v220 + 1)]);
        CFDictionaryAddValue(v215, @"lineGap", &unk_1EF278268);
        CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"FontMetrics", v215);
        addComponentsWithTrimCharacterSet((v216 + 40 * v195), @"ja", &Mutable, 0, &__block_literal_global_638);
        v191 = v215;
        goto LABEL_304;
      }

      if (qword_1ED567520 != -1)
      {
        dispatch_once(&qword_1ED567520, &__block_literal_global_3846);
      }

      v196 = qword_1ED567480;
      v197 = kJapaneseNames[v195];
      v198 = CommonStyleNameForIndex(v27 - 328);
      v199 = CFStringGetLength(v197);
      v312.length = v199 + ~CFStringGetLength(v198);
      v200 = v103;
      v312.location = 0;
      v185 = CFStringCreateWithSubstring(v103, v197, v312);
      v201 = v196 + 40 * v195;
      v202 = *(v201 + 16);
      addNames(v185, v198, v197, &Mutable);
      v188 = CFDictionaryCreateMutable(v200, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v203 = weightString(v202);
      CFDictionaryAddValue(v188, @"weightClass", v203);
      if (*(v201 + 20) == 1)
      {
        CFDictionaryAddValue(v188, @"italicAngle", @"12.5");
      }

      v204 = &kFont2X[5 * (v202 - 1)];
      CFDictionaryAddValue(v188, @"ascender", [MEMORY[0x1E696AD98] numberWithInt:*(v204 + 6)]);
      CFDictionaryAddValue(v188, @"descender", [MEMORY[0x1E696AD98] numberWithInt:-*(v204 + 7)]);
      CFDictionaryAddValue(v188, @"unitsPerEm", [MEMORY[0x1E696AD98] numberWithDouble:*(v204 + 1)]);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"FontMetrics", v188);
      addComponentsForJapanese(&Mutable, v196, v195);
    }

    else
    {
      if (qword_1ED567518 != -1)
      {
        dispatch_once(&qword_1ED567518, &__block_literal_global_3603);
      }

      v181 = qword_1ED566F38;
      v182 = kChineseNames[v180];
      v183 = ChineseStyleNameForIndex(v27 - 40);
      v184 = CFStringGetLength(v182);
      v311.length = v184 + ~CFStringGetLength(v183);
      v311.location = 0;
      v185 = CFStringCreateWithSubstring(v103, v182, v311);
      v186 = v181 + 40 * v180;
      v187 = *(v186 + 16);
      addNames(v185, v183, v182, &Mutable);
      v188 = CFDictionaryCreateMutable(v103, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v189 = weightString(v187);
      CFDictionaryAddValue(v188, @"weightClass", v189);
      if (*(v186 + 20) == 1)
      {
        CFDictionaryAddValue(v188, @"italicAngle", @"12.5");
      }

      v190 = &kFont2X[5 * (v187 - 1)];
      CFDictionaryAddValue(v188, @"ascender", [MEMORY[0x1E696AD98] numberWithInt:*(v190 + 6)]);
      CFDictionaryAddValue(v188, @"descender", [MEMORY[0x1E696AD98] numberWithInt:-*(v190 + 7)]);
      CFDictionaryAddValue(v188, @"unitsPerEm", [MEMORY[0x1E696AD98] numberWithDouble:*(v190 + 1)]);
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"FontMetrics", v188);
      addComponentsForChinese(&Mutable, v181, v180, v185);
    }

    v191 = v185;
    goto LABEL_304;
  }

  v29 = TextStyle;
  v282 = a9;
  v30 = *TextStyle;
  theArray = CFArrayCreateMutable(v24, 0, MEMORY[0x1E695E9C0]);
  v287 = *(v29 + 4);
  v31 = kFont2X;
  if (@"NSCTFontUIFontDesignRounded" == a4)
  {
    v32 = 1;
    goto LABEL_28;
  }

  v291 = 0;
  if (a4 && @"NSCTFontUIFontDesignRounded")
  {
    v32 = CFEqual(a4, @"NSCTFontUIFontDesignRounded") != 0;
LABEL_28:
    v291 = v32;
  }

  if (@"NSCTFontUIFontDesignCompactRounded" == a4)
  {
    v46 = 1;
  }

  else
  {
    v46 = 0;
    if (a4 && @"NSCTFontUIFontDesignCompactRounded")
    {
      v46 = CFEqual(a4, @"NSCTFontUIFontDesignCompactRounded") != 0;
    }
  }

  v275 = v46;
  *v298 = -1;
  if (a5)
  {
    CFNumberGetValue(a5, kCFNumberDoubleType, v298);
  }

  else
  {
    *v298 = 0;
  }

  valuea = *MEMORY[0x1E695E4D0];
  if (v27 - 151 > 4)
  {
LABEL_48:
    v47 = v30;
  }

  else
  {
    v47 = v30;
    if (((v27 - 151) & 0x80000000) == 0)
    {
      v48 = &dword_1E6E3BF2C;
      v49 = 5;
      while (*(v48 - 1) != v30)
      {
        v48 += 88;
        if (!--v49)
        {
          v287 = *(v29 + 4);
          goto LABEL_44;
        }
      }

      v287 = *v48;
LABEL_44:
      v50 = -5;
      v51 = &dword_1E6E3BF28;
      v31 = &kFontInfoSemiCondensed;
      while (*v51 != v30)
      {
        v51 += 88;
        if (__CFADD__(v50++, 1))
        {
          goto LABEL_48;
        }
      }

      v47 = v50 + 182;
      v31 = &kFontInfoSemiCondensed;
    }
  }

  allocator = v24;
  v279 = v47;
  if (a4 == 0 || v291)
  {
    if (a8 == 4)
    {
      a4 = @"NSCTFontUIFontDesignCompact";
      v31 = &kFont2XCompact;
      v53 = @".AppleSystemUIFontCompact";
LABEL_62:
      v278 = valuea;
      goto LABEL_63;
    }

LABEL_61:
    v53 = @".AppleSystemUIFont";
    goto LABEL_62;
  }

  if (qword_1ED567488 != -1)
  {
    dispatch_once(&qword_1ED567488, &__block_literal_global_2);
  }

  v54 = CFDictionaryGetValue(qword_1ED567490, a4);
  if (!v54)
  {
    goto LABEL_61;
  }

  if (v54 == &kFontMono)
  {
    v278 = *MEMORY[0x1E695E4C0];
    v31 = &kFontMono;
    v53 = @".AppleSystemUIFontMonospaced";
  }

  else
  {
    if (v54 == &kFontSerif)
    {
      v53 = @".AppleSystemUIFontSerif";
    }

    else
    {
      v53 = @".AppleSystemUIFontCompact";
    }

    v278 = valuea;
    v31 = v54;
  }

LABEL_63:
  v303 = 0;
  v285 = v21;
  if (v31 == kFont2X)
  {
    v277 = GetLocalizedTrimSetKey(v21, &v303);
  }

  else
  {
    v277 = 0;
  }

  v55 = 3;
  if (key < 0xC)
  {
    v55 = key;
  }

  v276 = v55;
  v56 = *(v29 + 20);
  if (a13 == 1 && v56 <= 0x10 && ((0x1FEFFu >> v56) & 1) != 0)
  {
    v56 = dword_184773744[v56];
  }

  v57 = v56 % 9;
  if (v56 % 9 <= 2)
  {
    DetermineLanguageSpecificParameters();
    if (v57 < dword_1ED567468)
    {
      v56 = dword_1ED567468 + v56 - v57;
      v57 = v56 % 9;
    }
  }

  if (a5)
  {
    v58 = IndexesBracketing<double const*,double>(kCTFontDefaultWeights, &kCTFontWeightRegular, *v298, 0.001);
    *v307 = xmmword_18475CD50;
    *&v307[2] = xmmword_18475CD60;
    LODWORD(v307[4]) = 8;
    v56 = *(v307 + v58) + v56 - v57;
    if (a13 == 1 && v56 <= 0x10 && ((0x1FEFFu >> v56) & 1) != 0)
    {
      v56 = dword_184773744[v56];
    }

    v57 = v56 % 9;
    CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"weight", a5);
  }

  if (a5)
  {
    v59 = v57 + 1;
  }

  else
  {
    v59 = v287;
  }

  v60 = *(v29 + 8);
  if ((a10 & 1) != 0 && v56 <= 8)
  {
    LODWORD(v56) = ItalicTrait(v56);
    v60 = 1;
  }

  if (a4)
  {
    v61 = a4;
  }

  else
  {
    v61 = @"NSCTFontUIFontDesignDefault";
  }

  addPosingWithWeightAndSlant(v30, v59, v60, *(v29 + 12), v53, v61, &Mutable, @"width", a6);
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"isTextStyle", valuea);
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"legibilityWeight", [MEMORY[0x1E696AD98] numberWithLong:a13]);
  if (valuea == a14)
  {
    CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"ignoreLegibilityWeight", valuea);
  }

  a9 = v282;
  if (a8 != -1)
  {
    CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"platform", [MEMORY[0x1E696AD98] numberWithUnsignedInt:a8]);
  }

  v62 = v29 + 24 + 24 * v276;
  v307[0] = 0xAAAAAAAAAAAAAAAALL;
  v307[1] = -1;
  v63 = &v31[5 * v56];
  memset(&v307[2], 170, 24);
  v64 = *v63;
  v65 = *(v63 + 1);
  v307[4] = v63[4];
  *v307 = v64;
  *&v307[2] = v65;
  v66 = v278;
  if (v291)
  {
    v307[0] = *(qword_1ED566F18 + 8 * v57);
    v66 = *MEMORY[0x1E695E4C0];
    v53 = @".AppleSystemUIFontRounded";
  }

  else if (v275)
  {
    v307[0] = kFontCompactRounded[v57];
    v307[3] = 0xFFFFFE120000079ELL;
    v66 = *MEMORY[0x1E695E4C0];
    v53 = @".AppleSystemUIFontCompactRounded";
  }

  else if (a6)
  {
    if (v31 == kFont2X)
    {
      v307[0] = SFFontNameForWidth(v56, a6, 0);
    }

    v43 = a12;
    goto LABEL_99;
  }

  v43 = a12;
LABEL_99:
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"languagePropertiesCacheKey", v53);
  v67 = 0.0;
  v21 = v285;
  if ((*(v29 + 16) & 0x10) != 0)
  {
    v67 = *(v62 + 16);
  }

  v302 = CFDictionaryCreateMutable(allocator, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v68 = *(v62 + 8) * 0.5;
  v69 = *(v29 + 12);
  if ((a8 + 1) >= 3)
  {
    v70 = &_MergedGlobals_2;
  }

  else
  {
    v70 = (&off_1E6E3DAE0 + (a8 + 1));
  }

  v71 = 2.0;
  if (*v70 == &kTypeHierarchySpecWatch)
  {
    v71 = 1.0;
  }

  v72 = v68 + v71;
  if ((a10 & 0x10000) != 0)
  {
    v69 = -1;
  }

  else
  {
    v72 = *(v62 + 8) * 0.5;
  }

  v73 = v68 - v71;
  if ((a10 & 0x8000) != 0)
  {
    v74 = 1;
  }

  else
  {
    v74 = v69;
  }

  if ((a10 & 0x8000) != 0)
  {
    v75 = v73;
  }

  else
  {
    v75 = v72;
  }

  v76 = v289;
  if (!v289)
  {
    v77 = *(v29 + 16);
    if ((v77 & 0xF) != 0)
    {
      if ((v77 & 8) != 0)
      {
        v76 = 4;
      }

      else
      {
        v76 = ((*(v29 + 16) & 0xFu) >> 1) + 1;
      }

      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"grade", [MEMORY[0x1E696AD98] numberWithUnsignedInt:{v76, v73}]);
    }

    else
    {
      v76 = 0;
    }
  }

  if ((v288 & 1) == 0)
  {
    v26 = LanguageAwareLineSpacingOverrideRatio(v29, v285);
  }

  setOpticalSizeComponent(v307[0], v307, v279, v74, v76, v277, &v302, a16, *v62 * 0.5, v75, v26, v67, 0, 0);
  CFDictionaryAddValue(atomic_load_explicit(&v302, memory_order_acquire), @"sizeCategory", [MEMORY[0x1E696AD98] numberWithUnsignedLong:key]);
  if (v66 == valuea)
  {
    AddVariationInfoWithGrade(&Mutable, v307[0], v76);
  }

  v90 = theArray;
  CFArrayInsertValueAtIndex(theArray, 0, atomic_load_explicit(&v302, memory_order_acquire));
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasVariations", valuea);
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"hasOpticalSizeAxis", v66);
  CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"Components", theArray);

LABEL_137:
  v91 = v90;
LABEL_138:

LABEL_139:
  v92 = 0;
LABEL_148:
  if (atomic_load_explicit(&Mutable, memory_order_acquire) && CFDictionaryGetCount(atomic_load_explicit(&Mutable, memory_order_acquire)))
  {
    if (v21)
    {
      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"language", v21);
    }

    if (v43)
    {
      v98 = atomic_load_explicit(&Mutable, memory_order_acquire);
      v99 = @"lineSpacingOverride";
      v100 = v43;
    }

    else
    {
      v100 = a11;
      if (!a11)
      {
LABEL_158:
        if (a15)
        {
          CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"cacheKey", a15);
        }

        CreateSplicedFontFromStash(&Mutable, 0, v92, a9);
        goto LABEL_161;
      }

      v98 = atomic_load_explicit(&Mutable, memory_order_acquire);
      v99 = @"languageAwareLineHeightRatio";
    }

    CFDictionaryAddValue(v98, v99, v100);
    goto LABEL_158;
  }

  *a9 = 0;
LABEL_161:
}

__CFString *CommonStyleNameForIndex(unint64_t a1)
{
  if (a1 > 8)
  {
    return 0;
  }

  else
  {
    return off_1E6E3DB10[a1];
  }
}

uint64_t TCFBase<TDescriptor>::Allocate()
{
  if (TCFBase<TDescriptor>::GetTypeID(void)::once != -1)
  {
    dispatch_once_f(&TCFBase<TDescriptor>::GetTypeID(void)::once, 0, TCFBase<TDescriptor>::GetTypeID(void)::{lambda(void *)#1}::__invoke);
  }

  return _CFRuntimeCreateInstance();
}

void makeStyleName(atomic_ullong *a1, unsigned int a2, int a3, __CFString *a4)
{
  v7 = CommonStyleNameForIndex(a2 - 1);
  *a1 = 0;
  if (a3 && a4)
  {
    v8 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"%@ %@ %@", a4, v7, @"Italic");
LABEL_9:
    v10 = atomic_exchange(a1, v8);

    return;
  }

  if (a3)
  {
    v9 = *MEMORY[0x1E695E480];
    v11 = v7;
    v12 = @"Italic";
LABEL_8:
    v8 = CFStringCreateWithFormat(v9, 0, @"%@ %@", v11, v12);
    goto LABEL_9;
  }

  if (a4)
  {
    v9 = *MEMORY[0x1E695E480];
    v11 = a4;
    v12 = v7;
    goto LABEL_8;
  }

  TCFRef<__CTFont const*>::Retain(a1, v7);
}

void TDescriptor::TDescriptor(TDescriptor *this, const __CFDictionary *a2, int a3)
{
  *(this + 1) = 0;
  v4 = (this + 8);
  *this = &unk_1EF257E00;
  *(this + 4) = a3 & 0x7FFFFFFF;
  *(this + 4) = 0;
  *(this + 5) = 0;
  *(this + 3) = 0;
  if ((a3 & 0x40000000) != 0)
  {
    atomic_fetch_or_explicit(this + 4, 0x80000000, memory_order_relaxed);
  }

  TCFRef<__CTFont const*>::Retain(v4, a2);
}

void TDescriptor::CreateMatchingDescriptorInternal(atomic_ullong *this, const __CFSet *a2, const __CFSet *a3, uint64_t a4)
{
  v126 = *MEMORY[0x1E69E9840];
  *this = 0;
  v121 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::TDescriptorSource(&v121);
  Attributes = TDescriptor::GetAttributes(a2, 1);
  if (!Attributes || CFDictionaryGetCount(Attributes) < 1)
  {
    TDescriptor::IsSystemUIFont(a2);
    TDescriptorSource::CreateDefaultDescriptor(&v121);
    v15 = atomic_exchange(&valuePtr, 0);
    goto LABEL_147;
  }

  v115 = a3;
  v9 = AsMatchingOptions(*(a2 + 4));
  TypeID = CFStringGetTypeID();
  v11 = CFNumberGetTypeID();
  Value = CFDictionaryGetValue(atomic_load_explicit(a2 + 1, memory_order_acquire), @"CTFontDescriptorLanguageAttribute");
  if (Value)
  {
    v13 = Value;
    if (CFGetTypeID(Value) == TypeID)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v114 = v14;
  }

  else
  {
    v114 = 0;
  }

  v16 = CFDictionaryGetValue(atomic_load_explicit(a2 + 1, memory_order_acquire), @"CTFontLanguageAwareLineHeightRatioAttribute");
  if (v16)
  {
    v17 = v16;
    if (CFGetTypeID(v16) == v11)
    {
      v18 = v17;
    }

    else
    {
      v18 = 0;
    }

    v113 = v18;
  }

  else
  {
    v113 = 0;
  }

  v19 = CFDictionaryGetValue(atomic_load_explicit(a2 + 1, memory_order_acquire), @"CTFontLineSpacingOverrideAttribute");
  if (v19)
  {
    v20 = v19;
    if (CFGetTypeID(v19) == v11)
    {
      v21 = v20;
    }

    else
    {
      v21 = 0;
    }

    v112 = v21;
  }

  else
  {
    v112 = 0;
  }

  v22 = CFDictionaryGetValue(atomic_load_explicit(a2 + 1, memory_order_acquire), @"CTFontLegibilityWeightAttribute");
  if (v22)
  {
    v23 = v22;
    if (CFGetTypeID(v22) == v11)
    {
      v24 = v23;
    }

    else
    {
      v24 = 0;
    }
  }

  else
  {
    v24 = 0;
  }

  v25 = CFDictionaryGetValue(atomic_load_explicit(a2 + 1, memory_order_acquire), @"CTFontIgnoreLegibilityWeightAttribute");
  if (v25)
  {
    v26 = v25;
    v27 = CFGetTypeID(v25);
    if (v27 == CFBooleanGetTypeID())
    {
      v28 = v26;
    }

    else
    {
      v28 = 0;
    }

    v111 = v28;
    if (v24)
    {
      goto LABEL_32;
    }
  }

  else
  {
    v111 = 0;
    if (v24)
    {
LABEL_32:
      LODWORD(valuePtr) = -1431655766;
      CFNumberGetValue(v24, kCFNumberIntType, &valuePtr);
      v29 = valuePtr;
      goto LABEL_35;
    }
  }

  v29 = -1;
LABEL_35:
  v110 = v29;
  v30 = CFDictionaryGetValue(atomic_load_explicit(a2 + 1, memory_order_acquire), @"NSCTFontTraitsAttribute");
  if (v30)
  {
    v31 = v30;
    v32 = CFGetTypeID(v30);
    if (v32 == CFDictionaryGetTypeID())
    {
      v33 = v31;
    }

    else
    {
      v33 = 0;
    }
  }

  else
  {
    v33 = 0;
  }

  v34 = v9 | a4;
  v35 = CFDictionaryGetValue(atomic_load_explicit(a2 + 1, memory_order_acquire), @"NSCTFontUIUsageAttribute");
  v36 = v35;
  if (v35)
  {
    if (CFGetTypeID(v35) == TypeID)
    {
      v37 = v36;
    }

    else
    {
      v37 = 0;
    }

    if (!v33)
    {
      v41 = 0;
      if (v37)
      {
        v42 = 1;
        v109 = 0;
        v40 = 0;
        goto LABEL_65;
      }

LABEL_74:
      v107 = v41;
      explicit = atomic_load_explicit(a2 + 1, memory_order_acquire);
      v52 = CFDictionaryGetValue(explicit, @"NSFontNameAttribute");
      if (!v52 || (v53 = v52, v54 = CFGetTypeID(v52), v54 != CFStringGetTypeID()))
      {
        v55 = CFDictionaryGetValue(explicit, @"NSCTFontPostScriptNameAttribute");
        if (!v55)
        {
          v53 = 0;
          if (!explicit)
          {
            goto LABEL_90;
          }

LABEL_83:
          Count = CFDictionaryGetCount(explicit);
          if (Count >= 2)
          {
            v59 = Count;
            *&v60 = 0xAAAAAAAAAAAAAAAALL;
            *(&v60 + 1) = 0xAAAAAAAAAAAAAAAALL;
            v124[14] = v60;
            v124[13] = v60;
            v124[12] = v60;
            v124[11] = v60;
            v124[10] = v60;
            v124[9] = v60;
            v124[8] = v60;
            v124[7] = v60;
            v124[6] = v60;
            v124[5] = v60;
            v124[4] = v60;
            v124[3] = v60;
            v124[2] = v60;
            v124[1] = v60;
            v124[0] = v60;
            v123[0] = 0;
            v123[1] = 0;
            valuePtr = 0;
            v125 = v124;
            std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](&valuePtr, Count);
            v61 = v123[0];
            bzero(v123[0], 8 * v59);
            v123[0] = &v61[8 * v59];
            v62 = valuePtr;
            CFDictionaryGetKeysAndValues(explicit, &valuePtr->isa, 0);
            while (1)
            {
              v64 = *v62;
              if (TDescriptorSource::IsSearchableAttribute(*v62, v63))
              {
                if (!CFEqual(v64, @"NSFontNameAttribute") && !CFEqual(v64, @"NSCTFontPostScriptNameAttribute"))
                {
                  break;
                }
              }

              ++v62;
              if (!--v59)
              {
                values = &valuePtr;
                std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&values);
                goto LABEL_90;
              }
            }

            v119 = 0;
            values = &valuePtr;
            std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&values);
            LOBYTE(v53) = 0;
LABEL_93:
            MatchableAttributes = v115;

            v67 = atomic_load_explicit(this, memory_order_acquire);
            if (MatchableAttributes || v67 || !v107)
            {
              v47 = v34 | 2;
              goto LABEL_144;
            }

            valuePtr = 0xAAAAAAAAAAAAAAAALL;
            v68 = atomic_load_explicit(a2 + 1, memory_order_acquire);
            MatchableNameAttributes = TDescriptorSource::GetMatchableNameAttributes(v66);
            TDescriptorSource::CopyMandatoryMatchableRequest(v68, MatchableNameAttributes, &valuePtr);
            v70 = atomic_load_explicit(&valuePtr, memory_order_acquire);
            if (v70)
            {
              v71 = v70;
              v72 = CFDictionaryGetCount(v70);

              if (v72)
              {
                MatchableAttributes = 0;
                v47 = v34 | 2;
LABEL_102:

                goto LABEL_144;
              }
            }

            else
            {
            }

            MatchableAttributes = TDescriptorSource::GetMatchableAttributes(v73);
            v47 = v34 & 0xFFFFFFFFFFFFFFFDLL;
            goto LABEL_102;
          }

LABEL_90:
          if (v53)
          {
            TDescriptorSource::CopyFontDescriptorPerPostScriptName(&v121, v53, v34 | 2, 0, v114, &v119);
            LOBYTE(v53) = 1;
          }

          else
          {
            v119 = 0;
          }

          goto LABEL_93;
        }

        v56 = v55;
        v57 = CFGetTypeID(v55);
        if (v57 == CFStringGetTypeID())
        {
          v53 = v56;
        }

        else
        {
          v53 = 0;
        }
      }

      if (!explicit)
      {
        goto LABEL_90;
      }

      goto LABEL_83;
    }

    v36 = v37;
  }

  else if (!v33)
  {
    v41 = 0;
    goto LABEL_74;
  }

  v38 = CFDictionaryGetValue(v33, @"NSCTFontUIFontDesignTrait");
  if (v38)
  {
    v39 = v38;
    if (CFGetTypeID(v38) == TypeID)
    {
      v40 = v39;
    }

    else
    {
      v40 = 0;
    }
  }

  else
  {
    v40 = 0;
  }

  v43 = CFDictionaryGetValue(v33, @"NSCTFontWeightTrait");
  if (v43)
  {
    v44 = v43;
    if (CFGetTypeID(v43) == v11)
    {
      v45 = v44;
    }

    else
    {
      v45 = 0;
    }

    v109 = v45;
  }

  else
  {
    v109 = 0;
  }

  v46 = CFDictionaryGetValue(v33, @"NSCTFontSymbolicTrait");
  v41 = v46;
  if (v46 && CFGetTypeID(v46) != v11)
  {
    v41 = 0;
  }

  if (v36)
  {
    v42 = 0;
LABEL_65:
    v47 = v34 | 0x402;
    if ((v36 == @"CTFont" || CFStringHasPrefix(v36, @"CTFont")) && CFStringHasSuffix(v36, @"Usage") && v109 | v40)
    {
      if (v40)
      {
        TDescriptorSource::CreateDescriptorForUIFontDesign(v33, &v121, v40, v47, v114, v113, v112, v110, &valuePtr, v111);
        v49 = atomic_exchange(this, atomic_exchange(&valuePtr, 0));
      }

      else
      {
        valuePtr = 0xAAAAAAAAAAAAAAAALL;
        TCFMutableDictionary::TCFMutableDictionary(&valuePtr, v33);
        CFDictionarySetValue(atomic_load_explicit(&valuePtr, memory_order_acquire), @"NSCTFontUIFontDesignTrait", @"NSCTFontUIFontDesignDefault");
        TDescriptorSource::CreateDescriptorForUIFontDesign(atomic_load_explicit(&valuePtr, memory_order_acquire), &v121, @"NSCTFontUIFontDesignDefault", v47, v114, v113, v112, v110, &values, v111);

        v49 = values;
      }
    }

    if (atomic_load_explicit(this, memory_order_acquire))
    {
      goto LABEL_143;
    }

    v120 = 0;
    v118 = 0;
    v119 = 0;
    valuePtr = &v119;
    v123[0] = 0;
    values = &v118;
    v117 = 0;
    FontNameForTextStyle = TDescriptorSource::FindFontNameForTextStyle(v36, 0, &v120, v123, &v117, v48);

    if (!FontNameForTextStyle)
    {
      goto LABEL_141;
    }

    v108 = v41 && (LODWORD(valuePtr) = -1431655766, CFNumberGetValue(v41, kCFNumberIntType, &valuePtr), v75 = valuePtr, valuePtr) && (FontNameForNameAndTrait = TDescriptorSource::FindFontNameForNameAndTrait(FontNameForTextStyle, 0, valuePtr, valuePtr), FontNameForTextStyle = FontNameForNameAndTrait, (v75 & 1) != 0) && CFStringFind(FontNameForNameAndTrait, @"Italic", 0).location == -1;
    v77 = CFDictionaryGetValue(atomic_load_explicit(a2 + 1, memory_order_acquire), @"NSCTFontSizeCategoryAttribute");
    if (v77)
    {
      v78 = v77;
      if (CFGetTypeID(v77) == v11)
      {
        v79 = v78;
      }

      else
      {
        v79 = 0;
      }

      v106 = v79;
    }

    else
    {
      v106 = 0;
    }

    if (v40 == @"NSCTFontUIFontDesignDefault" || v40 && @"NSCTFontUIFontDesignDefault" && CFEqual(v40, @"NSCTFontUIFontDesignDefault"))
    {
      v40 = 0;
    }

    v80 = v47;
    v81 = CFDictionaryGetValue(atomic_load_explicit(a2 + 1, memory_order_acquire), @"NSCTFontTextStylePlatformAttribute");
    if (v81)
    {
      v82 = v81;
      if (CFGetTypeID(v81) == v11)
      {
        v83 = v82;
      }

      else
      {
        v83 = 0;
      }

      if (v42)
      {
        goto LABEL_127;
      }
    }

    else
    {
      v83 = 0;
      if (v42)
      {
LABEL_127:
        v84 = 0;
        goto LABEL_139;
      }
    }

    v85 = CFDictionaryGetValue(v33, @"NSCTFontProportionTrait");
    if (v85)
    {
      v86 = v85;
      if (CFGetTypeID(v85) == v11)
      {
        v84 = v86;
      }

      else
      {
        v84 = 0;
      }
    }

    else
    {
      v84 = 0;
    }

    v87 = CFDictionaryGetValue(v33, @"NSCTFontGradeTrait");
    if (v87)
    {
      v88 = v87;
      if (CFGetTypeID(v87) == v11)
      {
        v89 = v88;
      }

      else
      {
        v89 = 0;
      }

      goto LABEL_140;
    }

LABEL_139:
    v89 = 0;
LABEL_140:
    TDescriptorSource::CopySplicedDescriptorForName(FontNameForTextStyle, v114, v113, v112, v110, v111, &valuePtr, v106, v40, v109, v84, v89, v83, v108, atomic_load_explicit(&v118, memory_order_acquire));

    v47 = v80;
LABEL_141:

    v50 = v119;
    goto LABEL_142;
  }

  if (!v40)
  {
    goto LABEL_74;
  }

  v47 = v34 | 0x402;
  TDescriptorSource::CreateDescriptorForUIFontDesign(v33, &v121, v40, v47, v114, v113, v112, v110, &valuePtr, v111);

  v50 = valuePtr;
LABEL_142:

LABEL_143:
  LOBYTE(v53) = 0;
  MatchableAttributes = v115;
LABEL_144:
  v90 = atomic_load_explicit(this, memory_order_acquire);
  if ((v53 & 1) != 0 || v90)
  {
    goto LABEL_148;
  }

  TDescriptorSource::CopyDescriptorForRequest(&v121, atomic_load_explicit(a2 + 1, memory_order_acquire), MatchableAttributes, v33, v47, &valuePtr);
  v15 = atomic_exchange(&valuePtr, 0);
LABEL_147:

LABEL_148:
  if (atomic_load_explicit(this, memory_order_acquire))
  {
    v91 = *(a2 + 4) & 0x7FFFFFFF;
    v92 = atomic_load_explicit(a2 + 1, memory_order_acquire);
    v93 = v92;
    if (v92)
    {
      v94 = CFDictionaryGetValue(v92, @"NSCTFontCharacterSetAttribute");
      v95 = v94;
      if (v94)
      {
        v96 = CFGetTypeID(v94);
        if (v96 != CFCharacterSetGetTypeID())
        {
          v95 = 0;
        }
      }
    }

    else
    {
      v95 = 0;
    }

    if (v95 || v91)
    {
      if (v95)
      {
        valuePtr = @"NSCTFontCharacterSetAttribute";
        values = v95;
        v97 = CFDictionaryCreate(*MEMORY[0x1E695E480], &valuePtr, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v98 = atomic_load_explicit(this, memory_order_acquire);
        v99 = TCFBase<TDescriptor>::Allocate();
        if (v99)
        {
          CTFontDescriptor::CTFontDescriptor(v99, v98, v97, v91);
        }

        valuePtr = v99;

        v100 = v97;
LABEL_161:

        return;
      }

      v101 = atomic_load_explicit(this, memory_order_acquire);
      v102 = v101[5];

      if ((*(v102 + 16) & v91) == 0)
      {
        v103 = atomic_load_explicit(this, memory_order_acquire);
        v104 = TCFBase<TDescriptor>::Allocate();
        v105 = v104;
        if (v104)
        {
          v104->data = 0;
          v104->length = TDescriptor::Hash;
          v104[1].isa = 0;
          v104[1].info = &v104[1].data;
          TDescriptor::TDescriptor(&v104[1].data, *(v103 + 40), v91);
        }

        valuePtr = v105;

        v100 = valuePtr;
        goto LABEL_161;
      }
    }
  }
}

void TDescriptor::InitBaseFont(TDescriptor *this, uint64_t a2, double a3)
{
  v4 = a2;
  v48 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptor::CreateMatchingDescriptorInternal(&v48, this, 0, a2);
  v47 = 0x80000000;
  if (atomic_load_explicit(&v48, memory_order_acquire))
  {
    v6 = atomic_load_explicit(&v48, memory_order_acquire);
    v7 = v6;
    v8 = v6[5];
    if ((*(v8 + 4) & 0x80000000) == 0)
    {
      TDescriptor::InitBaseFont(v6[5], 0, 0.0);
    }

    explicit = atomic_load_explicit(v8 + 4, memory_order_acquire);

    v46 = explicit;
    if (explicit)
    {
      v10 = atomic_load_explicit(&v48, memory_order_acquire);
      v11 = v10[5];

      if (v4 < 0 || !TDescriptor::IsSystemUIFont(this) && !TDescriptor::IsSystemUIFont(v11))
      {
LABEL_29:
        v12 = v46;
        if (!v46)
        {
LABEL_45:
          v41 = 0;
          v42 = v46;
          atomic_fetch_add_explicit(v46 + 2, 1u, memory_order_relaxed);
          atomic_compare_exchange_strong(this + 4, &v41, v42);
          if (v41)
          {
            v43 = v46;
            if (v46)
            {
              if (atomic_fetch_add_explicit(v46 + 2, 0xFFFFFFFF, memory_order_release) == 1)
              {
                __dmb(9u);
                (*(*v43 + 8))(v43);
              }
            }
          }

          goto LABEL_49;
        }

LABEL_30:
        (*(*v12 + 120))(&valuePtr, v12);
        v25 = atomic_load_explicit(&valuePtr, memory_order_acquire);

        if (v25)
        {
          v26 = atomic_load_explicit(this + 1, memory_order_acquire);
          v27 = v26;
          if (v26 && (v28 = CFDictionaryGetValue(v26, @"NSCTFontVariationAttribute")) != 0 && (v29 = v28, v30 = CFGetTypeID(v28), v30 == CFDictionaryGetTypeID()))
          {

            values = v29;
            valuePtr = @"NSCTFontVariationAttribute";
            v31 = CFDictionaryCreate(*MEMORY[0x1E695E480], &valuePtr, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
            valuePtr = 0xAAAAAAAAAAAAAAAALL;
            TCFBase_NEW<CTFontDescriptor,TBaseFont const*&,unsigned int &>(&v46, &v47, &valuePtr);
            v32 = atomic_load_explicit(&valuePtr, memory_order_acquire);
            v44 = v31;
            v45 = v32;
            TCFBase_NEW<CTFontDescriptor,CTFontDescriptor*,__CFDictionary const*&>(&v45, &v44, &values);

            v33 = atomic_load_explicit(&v48, memory_order_acquire);
            v34 = *(v33[5] + 16);

            if (v34 < 0)
            {
              v35 = atomic_load_explicit(&v48, memory_order_acquire);
              v36 = v35;
              v37 = v35[5];
              if ((*(v37 + 4) & 0x80000000) == 0)
              {
                TDescriptor::InitBaseFont(v35[5], 0, 0.0);
              }

              v38 = atomic_load_explicit(v37 + 4, memory_order_acquire);

              if (v38)
              {
                v46 = v38;
              }
            }
          }

          else
          {

            if ((*(*v46 + 16))(v46) == 1414088260)
            {
              atomic_load_explicit((v11 + 8), memory_order_acquire);
              v39 = atomic_load_explicit((v11 + 8), memory_order_acquire);
              if (v39)
              {
                Value = CFDictionaryGetValue(v39, @"NSCTFontTraitsAttribute");
                if (Value)
                {
                  if (CFDictionaryGetValue(Value, @"NSCTFontWeightTrait"))
                  {
                    operator new();
                  }
                }
              }
            }
          }
        }

        goto LABEL_45;
      }

      v47 |= *(v11 + 16) & 0x404;
      v12 = v46;
      if ((*(*v46 + 16))(v46) != 1414743620 || !(*(*v46 + 848))(v46))
      {
        goto LABEL_30;
      }

      v13 = atomic_load_explicit(this + 1, memory_order_acquire);
      if (v13)
      {
        v14 = CFDictionaryGetValue(v13, @"NSCTFontOpticalSizeAttribute");
        if (v14)
        {
          v15 = v14;
          v16 = CFGetTypeID(v14);
          if (v16 == CFNumberGetTypeID())
          {
            goto LABEL_15;
          }
        }

        if (a3 == 0.0)
        {
          v15 = CFDictionaryGetValue(v13, @"NSFontSizeAttribute");
          if (!v15)
          {
LABEL_16:
            v18 = CFDictionaryGetValue(v13, @"NSCTFontVariationAttribute");
            if (v18)
            {
              v15 = CFDictionaryGetValue(v18, &unk_1EF278070);
            }

            if (v15)
            {
              goto LABEL_19;
            }

LABEL_23:
            v21 = 12.0;
LABEL_24:
            v22 = v46;
LABEL_25:
            OpticalSizeComponent = TSplicedFont::GetOpticalSizeComponent(v22, v21);
            v12 = OpticalSizeComponent;
            if (OpticalSizeComponent)
            {
              (*(*OpticalSizeComponent + 128))(&valuePtr, OpticalSizeComponent);
              v24 = atomic_load_explicit(&valuePtr, memory_order_acquire);

              if (v24)
              {
                v47 |= 0x8000u;
              }

              v46 = v12;
              goto LABEL_30;
            }

            goto LABEL_29;
          }

LABEL_15:
          v17 = CFGetTypeID(v15);
          if (v17 == CFNumberGetTypeID())
          {
LABEL_19:
            v19 = CFGetTypeID(v15);
            TypeID = CFNumberGetTypeID();
            v21 = 12.0;
            if (v19 == TypeID)
            {
              valuePtr = -1;
              CFNumberGetValue(v15, kCFNumberDoubleType, &valuePtr);
              v21 = *&valuePtr;
            }

            goto LABEL_24;
          }

          goto LABEL_16;
        }
      }

      else if (a3 == 0.0)
      {
        goto LABEL_23;
      }

      v22 = v46;
      v21 = a3;
      goto LABEL_25;
    }
  }

LABEL_49:
  atomic_fetch_or_explicit(this + 4, v47, memory_order_relaxed);
}

uint64_t AsMatchingOptions(int a1)
{
  if (qword_1ED5679B0 != -1)
  {
    dispatch_once_f(&qword_1ED5679B0, 0, TDescriptor::GetSystemUIFontOptions(void)::$_0::__invoke);
  }

  v2 = a1 & 0x95;
  if ((_MergedGlobals_13 & a1) != 0)
  {
    v2 |= 0x400uLL;
  }

  return v2 | a1 & 0x10000;
}

uint64_t _ExuberatedGroupForPreferredLanguages(BOOL *a1, const __CFString **a2)
{
  os_unfair_lock_lock_with_options();
  if (qword_1ED567BA0 != -1)
  {
    dispatch_once_f(&qword_1ED567BA0, 0, GetLocaleChangedCount(void)::$_0::__invoke);
  }

  if (dword_1ED567B78 != gLocaleChangedCount)
  {
    dword_1ED567B7C = 0;
    v4 = CFLocaleCopyPreferredLanguages();
    if (qword_1ED567BA0 != -1)
    {
      dispatch_once_f(&qword_1ED567BA0, 0, GetLocaleChangedCount(void)::$_0::__invoke);
    }

    dword_1ED567B78 = gLocaleChangedCount;
    if (v4)
    {

      dword_1ED567B7C = _LargestExuberatedGroupForLanguages(v4, &qword_1ED567BC0, 1, &byte_1ED567B5A);
    }
  }

  if (a2)
  {
    *a2 = qword_1ED567BC0;
  }

  if (a1)
  {
    *a1 = byte_1ED567B5A;
  }

  v5 = dword_1ED567B7C;
  os_unfair_lock_unlock(&stru_1ED567B74);
  return v5;
}

void TDescriptorSource::CopySplicedDescriptorForName(void *a1@<X1>, __CFString *a2@<X3>, const __CFNumber *a3@<X4>, const __CFNumber *a4@<X5>, uint64_t a5@<X6>, void *a6@<X7>, unint64_t *a7@<X8>, const __CFNumber *a8, __CFString *a9, const __CFNumber *a10, const __CFNumber *a11, const __CFNumber *a12, const __CFNumber *a13, unsigned int a14, void *a15)
{
  v19 = os_unfair_lock_lock_with_options();
  TDescriptorSource::EnsureSplicedFontStash(v19);
  v24 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::CopySpliceFontForName(&v24, a1, a2, a3, a4, a5, a6, a8, a9, a10, a11, a12, a13, a14, a15);
  explicit = atomic_load_explicit(&v24, memory_order_acquire);
  if (explicit)
  {
    explicit = atomic_exchange(&v24, 0);
  }

  *a7 = explicit;

  os_unfair_lock_unlock(&TDescriptorSource::sSplicedFontsLock);
}

void TDescriptorSource::EnsureSplicedFontStash(TDescriptorSource *this)
{
  if (TDescriptorSource::sSplicedFonts)
  {
    if (TDescriptorSource::EnsureSplicedFontStash(void)::sGeneration == TGenerationSeed::sGeneration)
    {
      return;
    }

    TDescriptorSource::EnsureSplicedFontStash(void)::sGeneration = TGenerationSeed::sGeneration;
    CFRelease(TDescriptorSource::sSplicedFonts);
  }

  else
  {
    TDescriptorSource::EnsureSplicedFontStash(void)::sGeneration = TGenerationSeed::sGeneration;
  }

  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  TDescriptorSource::sSplicedFonts = atomic_exchange(&Mutable, 0);
}

void TDescriptorSource::CopySpliceFontForName(uint64_t *__return_ptr a1@<X8>, id a2@<X0>, __CFString *a3@<X1>, const __CFNumber *a4@<X2>, const __CFNumber *a5@<X3>, uint64_t a6@<X4>, void *a7@<X5>, const __CFNumber *a8@<X6>, __CFString *a9@<X7>, const __CFNumber *a10, const __CFNumber *a11, const __CFNumber *a12, const __CFNumber *a13, unsigned int a14, void *a15)
{
  if (!TDescriptorSource::sSplicedFonts || !a2)
  {
    *a1 = 0;
    return;
  }

  v63 = a2;
  v21 = *MEMORY[0x1E695E4D0];
  if (*MEMORY[0x1E695E4D0] == a7)
  {
    a6 = 0;
  }

  else if (a6 == -1)
  {
    a6 = _AXSEnhanceTextLegibilityEnabled() != 0;
  }

  v62 = a3;
  if (a3)
  {
    LODWORD(valuePtr.receiver) = 0;
    LocalizedTrimSetKey = GetLocalizedTrimSetKey(a3, &valuePtr);
    v65[0] = 0;
    v23 = GetLocalizedTrimSetKey(0, v65);
    if (LocalizedTrimSetKey != v23 && (!LocalizedTrimSetKey || !v23 || !CFEqual(LocalizedTrimSetKey, v23)) || LODWORD(valuePtr.receiver) != v65[0] || GetExuberatedGroupForLanguage(a3, 0))
    {
      goto LABEL_18;
    }

    v24 = atomic_exchange(&v62, 0);
    goto LABEL_17;
  }

  if (CurrentLocaleIsExuberated())
  {
    valuePtr.receiver = &v62;
    valuePtr.super_class = 0;
    _ExuberatedGroupForPreferredLanguages(0, &valuePtr.super_class);
    v24 = atomic_exchange(valuePtr.receiver, valuePtr.super_class);
LABEL_17:
  }

LABEL_18:
  if (a8)
  {
    valuePtr.receiver = 0xAAAAAAAAAAAAAAAALL;
    CFNumberGetValue(a8, kCFNumberLongType, &valuePtr);
    receiver = valuePtr.receiver;
  }

  else
  {
    receiver = 3;
  }

  v61 = receiver;
  if (a13)
  {
    LODWORD(valuePtr.receiver) = -1431655766;
    CFNumberGetValue(a13, kCFNumberIntType, &valuePtr);
    v26 = valuePtr.receiver;
  }

  else
  {
    v26 = -1;
  }

  v57 = v26;
  if (a12)
  {
    LODWORD(valuePtr.receiver) = -1431655766;
    CFNumberGetValue(a12, kCFNumberIntType, &valuePtr);
    receiver_low = LODWORD(valuePtr.receiver);
  }

  else
  {
    receiver_low = 0;
  }

  if (v21 == a7 || a6 || v61 != 3 || (v28 = atomic_load_explicit(&v62, memory_order_acquire), a13) || a15 || a14 || a5 || a4 || a11 || a10 || a9 || v28 || receiver_low)
  {
    v29 = [_CTSplicedFontKey alloc];
    explicit = atomic_load_explicit(&v62, memory_order_acquire);
    if (v29)
    {
      valuePtr.receiver = v29;
      valuePtr.super_class = _CTSplicedFontKey;
      v31 = objc_msgSendSuper2(&valuePtr, sel_init);
      if (v31)
      {
        *(v31 + 4) = [a2 copy];
        *(v31 + 5) = explicit;
        if (a4)
        {
          *v65 = -1;
          CFNumberGetValue(a4, kCFNumberDoubleType, v65);
          v32 = *v65;
        }

        else
        {
          v32 = 0x7FEFFFFFFFFFFFFFLL;
        }

        *(v31 + 6) = v32;
        if (a5)
        {
          *v65 = -1;
          CFNumberGetValue(a5, kCFNumberDoubleType, v65);
          v33 = *v65;
        }

        else
        {
          v33 = 0x7FEFFFFFFFFFFFFFLL;
        }

        *(v31 + 7) = v33;
        *(v31 + 16) = v21 == a7;
        *(v31 + 8) = a6;
        *(v31 + 9) = v61;
        *(v31 + 10) = a9;
        if (a10)
        {
          *v65 = -1;
          CFNumberGetValue(a10, kCFNumberDoubleType, v65);
          v34 = *v65;
        }

        else
        {
          v34 = 0x7FEFFFFFFFFFFFFFLL;
        }

        *(v31 + 11) = v34;
        v35 = v21;
        if (a11)
        {
          *v65 = -1;
          CFNumberGetValue(a11, kCFNumberDoubleType, v65);
          v36 = *v65;
        }

        else
        {
          v36 = 0x7FEFFFFFFFFFFFFFLL;
        }

        *(v31 + 12) = v36;
        *(v31 + 5) = receiver_low;
        *(v31 + 6) = v57;
        *(v31 + 7) = a14;
        *(v31 + 13) = a15;
        v56 = [a2 hash];
        v37 = [explicit hash];
        v38 = [(__CFString *)a9 hash];
        v39 = [*(v31 + 13) hash];
        v40 = *(v31 + 7);
        v41 = *(v31 + 11);
        v42 = *(v31 + 12);
        v43 = *(v31 + 6) + 2654435769;
        if (*(v31 + 6) == 0.0)
        {
          v43 = 2654435769;
        }

        v44 = *&v40 + 2654435769;
        if (v40 == 0.0)
        {
          v44 = 2654435769;
        }

        v45 = ((v43 >> 2) + (v43 << 6) + v44) ^ v43;
        v46 = (a6 + (v45 << 6) + (v45 >> 2) + 2654435769u) ^ v45;
        if (v35 == a7)
        {
          v47 = 2654435770;
        }

        else
        {
          v47 = 2654435769;
        }

        v48 = (v47 + (v46 << 6) + (v46 >> 2)) ^ v46;
        v49 = (v61 + 64 * v48 + (v48 >> 2) + 2654435769u) ^ v48;
        v50 = *&v41 + 2654435769;
        if (v41 == 0.0)
        {
          v50 = 2654435769;
        }

        v51 = (v50 + (v49 << 6) + (v49 >> 2)) ^ v49;
        v52 = *&v42 + 2654435769;
        if (v42 == 0.0)
        {
          v52 = 2654435769;
        }

        v53 = (v52 + (v51 << 6) + (v51 >> 2)) ^ v51;
        v54 = ((v53 << 6) + receiver_low + (v53 >> 2) + 2654435769u) ^ v53;
        v55 = ((v54 << 6) + v57 + (v54 >> 2) + 2654435769u) ^ v54;
        *(v31 + 1) = v37 ^ v56 ^ v38 ^ v39 ^ v55 ^ ((v55 << 6) + a14 + (v55 >> 2) + 2654435769u);
      }
    }

    else
    {
      v31 = 0;
    }
  }

  *a1 = 0xAAAAAAAAAAAAAAAALL;
  *a1 = CFDictionaryGetValue(TDescriptorSource::sSplicedFonts, atomic_load_explicit(&v63, memory_order_acquire));
  if (!atomic_load_explicit(a1, memory_order_acquire))
  {
    MakeSpliceDescriptor(a2, v61, a3, a9, a10, a11, receiver_low, v57, &valuePtr, a14, a4, a5, a6, a7, atomic_load_explicit(&v63, memory_order_acquire), a15);

    if (atomic_load_explicit(a1, memory_order_acquire))
    {
      CFDictionarySetValue(TDescriptorSource::sSplicedFonts, atomic_load_explicit(&v63, memory_order_acquire), atomic_load_explicit(a1, memory_order_acquire));
    }
  }
}

BOOL CurrentLocaleIsExuberated(void)
{
  if (qword_1ED567BA8 != -1)
  {
    dispatch_once_f(&qword_1ED567BA8, 0, ExuberatedGroupForTallPseudolanguageIfEnabled(void)::$_0::__invoke);
  }

  return dword_1ED567B6C || _ExuberatedGroupForPreferredLanguages(0, 0) != 0;
}

double TFont::GetScaleFactor(TFont *this)
{
  result = *(this + 19);
  if (result == 0.0)
  {
    EffectiveSize = TFont::GetEffectiveSize(this);
    if (*(this + 14))
    {
      v4 = (this + 56);
    }

    else
    {
      TFont::InitStrikeMetrics(this);
    }

    result = EffectiveSize / *v4;
    *(this + 19) = result;
  }

  return result;
}

uint64_t std::function<void ()(CFRange,long)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8[0] = a2;
  v8[1] = a3;
  v7 = a4;
  v4 = *(a1 + 24);
  if (v4)
  {
    return (*(*v4 + 48))(v4, v8, &v7);
  }

  v6 = std::__throw_bad_function_call[abi:fn200100]();
  return std::__function::__func<OTL::GSUB::ApplyLookups(TRunGlue &,int,OTL::GlyphLookups &,SyncState &,void (*)(void *,CFRange,long),void *)::{lambda(CFRange,long)#1},std::allocator<OTL::GSUB::ApplyLookups(TRunGlue &,int,OTL::GlyphLookups &,SyncState &,void (*)(void *,CFRange,long),void *)::{lambda(CFRange,long)#1}>,void ()(CFRange,long)>::operator()(v6);
}

uint64_t *std::__function::__func<OTL::GSUB::ApplyLookups(TRunGlue &,int,OTL::GlyphLookups &,SyncState &,void (*)(void *,CFRange,long),void *)::{lambda(CFRange,long)#1},std::allocator<OTL::GSUB::ApplyLookups(TRunGlue &,int,OTL::GlyphLookups &,SyncState &,void (*)(void *,CFRange,long),void *)::{lambda(CFRange,long)#1}>,void ()(CFRange,long)>::operator()(uint64_t a1, CFIndex *a2, uint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  v12.location = *a2;
  v12.length = v5;
  result = OTL::GlyphLookups::Substituted(**(a1 + 8), v12, v6);
  v8 = *(a1 + 8);
  v9 = *(v8 + 8);
  if (v9)
  {
    v10 = *(v8 + 16);

    return v9(v10, v4, v5, v6);
  }

  return result;
}

uint64_t std::__function::__func<OTL::GSUB::ApplySubstLookupRecords(OTL::LookupSubtable const*,OTL::SubstLookupRecord const*,unsigned int,TGlyphIterator &,long,long *,unsigned long,unsigned short *,OTL::SubstitutionState *,unsigned long)::$_0,std::allocator<OTL::GSUB::ApplySubstLookupRecords(OTL::LookupSubtable const*,OTL::SubstLookupRecord const*,unsigned int,TGlyphIterator &,long,long *,unsigned long,unsigned short *,OTL::SubstitutionState *,unsigned long)::$_0>,void ()(CFRange,long)>::operator()(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  v4 = *a2;
  v5 = a2[1];
  v6 = *a3;
  v7 = *(a1 + 8);
  v8 = v7[2];
  v9 = v7[3];
  v10 = *a3 - v5;
  v11 = *(v7[1] + 8);
  v12 = *v9;
  if (v11 <= 0)
  {
    if (v12)
    {
      for (i = 0; i != v12; ++i)
      {
        v18 = *(v8 + 8 * i);
        if (v18 > v4)
        {
          *(v8 + 8 * i) = v18 + v10;
          v12 = *v9;
        }
      }
    }
  }

  else if (v12)
  {
    v13 = 0;
    v14 = v12 - 1;
    v15 = *a3;
    v16 = v8 + 8 * v6;
    while (*(v8 + v13) != v4)
    {
      --v14;
      v13 += 8;
      ++v15;
      if (v14 == -1)
      {
        goto LABEL_27;
      }
    }

    v19 = v6 - 1;
    v20 = v12 + v6 - 1;
    if (v20 <= 0x40)
    {
      v21 = v8 + v13;
      v22 = 8 * v12;
      if (v22 - 8 != v13)
      {
        v32 = v8 + 8 * v6;
        v31 = v8 + v13;
        memmove((v8 + 8 * v20 - (v22 - v13 - 8)), (v21 + 8), v22 - v13 - 8);
        v21 = v31;
        v19 = v6 - 1;
        v16 = v32;
      }

      if (v6 >= 2)
      {
        v23 = 0;
        v24 = (v21 + 16);
        v25 = vdupq_n_s64(v6 - 2);
        v26 = v4 + 2;
        do
        {
          v27 = vmovn_s64(vcgeq_u64(v25, vorrq_s8(vdupq_n_s64(v23), xmmword_18475A340)));
          if (v27.i8[0])
          {
            *(v24 - 1) = v26 - 1;
          }

          if (v27.i8[4])
          {
            *v24 = v26;
          }

          v23 += 2;
          v24 += 2;
          v26 += 2;
        }

        while ((v6 & 0xFFFFFFFFFFFFFFFELL) != v23);
      }

      *v9 += v19;
      if (v6 != v5 && v15 < v20)
      {
        v28 = (v16 + v13);
        do
        {
          *v28++ += v10;
          --v14;
        }

        while (v14);
      }
    }
  }

LABEL_27:
  v29 = **(a1 + 8);

  return std::function<void ()(CFRange,long)>::operator()(v29, v4, v5, v6);
}

uint64_t *OTL::GlyphLookups::Substituted(uint64_t *this, CFRange a2, uint64_t a3)
{
  v3 = a3 - a2.length;
  if (a3 - a2.length >= 1)
  {
    v4 = *this;
    v5 = this[1];
    if (*this != v5)
    {
      v6 = (a2.location + a2.length);
      do
      {
        v7 = *(v4 + 8);
        v8 = *(v4 + 16);
        while (v7 != v8)
        {
          v9 = *v7;
          v10 = v7 + 1;
          v11 = v7[1];
          this = (v11 + *v7);
          if (this >= v6)
          {
            v12 = v6;
          }

          else
          {
            v12 = (v11 + *v7);
          }

          v13 = a2.location <= v9 && v9 < v6;
          location = *v7;
          if ((v13 || (v9 <= a2.location ? (v15 = a2.location < this) : (v15 = 0), location = a2.location, v15)) && v12 > location)
          {
            v9 = v7[1];
          }

          else
          {
            v10 = v7;
            if (v9 <= a2.location)
            {
              goto LABEL_22;
            }
          }

          *v10 = v9 + v3;
LABEL_22:
          v7 += 2;
        }

        v4 += 104;
      }

      while (v4 != v5);
    }
  }

  return this;
}

void OTL::GSUB::ApplyLigatureSubst(uint64_t a1, uint64_t a2, TGlyphIterator *this, unsigned int a4, _WORD *a5, uint64_t a6)
{
  v66 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 40);
  v7 = (a2 + 4);
  v8 = a2 + 6;
  if ((a2 + 4) >= *(a1 + 32) && v8 <= v6)
  {
    v12 = bswap32(*(a2 + 4)) >> 16;
    v13 = __CFADD__(v8, 2 * v12);
    v14 = v8 + 2 * v12 > v6 || v13;
    if (a2 + 8 <= v6)
    {
      v15 = (v6 - v8) >> 1;
    }

    else
    {
      v15 = 0;
    }

    if (v15 == v12)
    {
      v14 = 0;
    }

    if (v12 >= a4 && (v14 & 1) == 0)
    {
      v17 = this;
      v18 = *(this + 6);
      v59 = v18;
      if (TGlyphIterator::Next(this, 1))
      {
        v58 = *(v17 + 6);
        v59 = v58;
        v61 = *v17;
        v62 = v58;
        v19 = TRunGlue::TGlyph::glyphID(&v61);
      }

      else
      {
        v19 = 0xFFFF;
        v58 = v18;
      }

      v20 = v18;
      v21 = a4 - 1;
      v22 = bswap32(*v7) >> 16;
      v23 = v8 + 2 * v22;
      if (v23 < v8 || v23 > v6)
      {
        if (v15 != v22 || v21 >= v22)
        {
          goto LABEL_83;
        }
      }

      else if (v21 >= v22)
      {
LABEL_83:
        *(v17 + 6) = v20;
        return;
      }

      v56 = a6;
      v24 = (a2 + (bswap32(*(v8 + 2 * v21)) >> 16));
      v25 = v24 + 1;
      if ((v24 + 1) <= v6)
      {
        v26 = bswap32(*v24) >> 16;
        v27 = &v25[v26];
        v28 = (v24 + 2) <= v6 ? (v6 - v25) >> 1 : 0;
        v29 = v27 <= v6 && v27 >= v25;
        v30 = v29 || v28 == v26;
        if (v30 && *v24 != 0)
        {
          v53 = v18;
          v54 = v17;
          v32 = 0;
          v33 = v58;
          v34 = v58;
          v52 = v19;
          v50 = v28;
          v51 = v26;
          while (1)
          {
            v35 = bswap32(*v24) >> 16;
            v36 = &v25[v35];
            if (v36 < v25 || v36 > v6)
            {
              if (v28 != v35 || v32 >= v35)
              {
                goto LABEL_82;
              }
            }

            else if (v32 >= v35)
            {
              goto LABEL_82;
            }

            v39 = (v24 + (bswap32(v25[v32]) >> 16));
            v40 = v39 + 2;
            if ((v39 + 2) > v6)
            {
              goto LABEL_82;
            }

            v41 = bswap32(v39[1]) >> 16;
            v42 = &v40[v41 - 1];
            v43 = (v6 - v40) >> 1;
            if ((v39 + 3) > v6)
            {
              v43 = 0;
            }

            v44 = v42 <= v6 && v42 >= v40;
            if (!v44 && v43 != v41 - 1)
            {
LABEL_82:
              v17 = v54;
              goto LABEL_83;
            }

            if (v41)
            {
              if (v41 == 2)
              {
                if (v33 == v20)
                {
                  v46 = v34;
                  v33 = v20;
                }

                else
                {
                  v46 = v34;
                  if (v19 == bswap32(*v40) >> 16)
                  {
                    v17 = v54;
                    TGlyphIterator::DoLigature(v54, v53, bswap32(*v39) >> 16, &v59, 1, *(a1 + 24));
                    std::function<void ()(CFRange,long)>::operator()(v56, v53, 1, 1);
                    v20 = v53;
                    ++*a5;
                    goto LABEL_83;
                  }
                }
              }

              else
              {
                if (v41 == 1)
                {
                  v17 = v54;
                  TGlyphIterator::DoLigature(v54, v53, bswap32(*v39) >> 16, 0, 0, *(a1 + 24));
                  std::function<void ()(CFRange,long)>::operator()(v56, v53, 1, 1);
                  v20 = v53;
                  goto LABEL_83;
                }

                v46 = v20;
                v33 = v20;
                if (v34 != v20)
                {
                  if (v19 == bswap32(*v40) >> 16)
                  {
                    *&v47 = 0xAAAAAAAAAAAAAAAALL;
                    *(&v47 + 1) = 0xAAAAAAAAAAAAAAAALL;
                    v64[13] = v47;
                    v64[14] = v47;
                    v64[11] = v47;
                    v64[12] = v47;
                    v64[9] = v47;
                    v64[10] = v47;
                    v64[7] = v47;
                    v64[8] = v47;
                    v64[5] = v47;
                    v64[6] = v47;
                    v64[3] = v47;
                    v64[4] = v47;
                    v64[1] = v47;
                    v64[2] = v47;
                    v64[0] = v47;
                    v61 = 0;
                    v62 = 0;
                    v63 = 0;
                    v65 = v64;
                    v48 = (v41 - 1);
                    std::vector<long,TInlineBufferAllocator<long,30ul>>::__vallocate[abi:fn200100](&v61, v48);
                    v49 = v62;
                    bzero(v62, 8 * v48);
                    v62 = &v49[8 * v48];
                    if (v62 == v61)
                    {
                      __break(1u);
                      return;
                    }

                    *v61 = v34;
                    v17 = v54;
                    if (TGlyphIterator::Next(v54, 1) && &v40[v48] == EqualSequenceAndNote<BigEndianScalar<unsigned short>>(v39 + 3, &v40[v48], v54, v61 + 1))
                    {
                      TGlyphIterator::DoLigature(v54, v53, bswap32(*v39) >> 16, v61, v48, *(a1 + 24));
                      std::function<void ()(CFRange,long)>::operator()(v56, v53, 1, 1);
                      *a5 += v48;
                      *(v54 + 6) = v58;
                      v60 = &v61;
                      std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v60);
                      v20 = v53;
                      goto LABEL_83;
                    }

                    *(v54 + 6) = v58;
                    v60 = &v61;
                    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v60);
                    v46 = v58;
                    v33 = v58;
                    v20 = v53;
                    v19 = v52;
                    v28 = v50;
                    v26 = v51;
                  }

                  else
                  {
                    v46 = v34;
                    v33 = v34;
                  }
                }
              }
            }

            else
            {
              v46 = v34;
            }

            ++v32;
            v34 = v46;
            if (v26 == v32)
            {
              goto LABEL_82;
            }
          }
        }
      }

      goto LABEL_83;
    }
  }
}

uint64_t OTL::Coverage::SearchFmt1Binary(OTL::Coverage *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = (*this + 4);
  v4 = __rev16(*(*this + 2));
  v5 = &v3[2 * v4];
  if (*this + 6 <= v2)
  {
    v6 = (v2 - v3) >> 1;
  }

  else
  {
    v6 = 0;
  }

  v7 = bswap32(v6) >> 16;
  v8 = v5 < v3 || v5 > v2;
  if (v8)
  {
    v9 = v6;
  }

  else
  {
    v9 = v4;
  }

  if (v8)
  {
    v10 = v7;
  }

  else
  {
    v10 = *(*this + 2);
  }

  if (!v10 || a2 < bswap32(*v3) >> 16)
  {
    return 0;
  }

  v12 = __clz(v9) ^ 0x1F;
  v13 = &v3[2 * (-1 << v12) + 2 * v9];
  v14 = *v13;
  if (bswap32(v14) >> 16 <= a2)
  {
    v15 = v13;
  }

  else
  {
    v14 = *v3;
    v15 = (*this + 4);
  }

  v16 = (2 << v12);
  if (v16 >= 3)
  {
    do
    {
      if (a2 >= bswap32(*&v15[v16 >> 1]) >> 16)
      {
        v15 += v16 >> 1;
      }

      v8 = v16 > 5;
      v16 >>= 1;
    }

    while (v8);
    v14 = *v15;
  }

  v17 = (v15 - v3) >> 1;
  if (a2 == bswap32(v14) >> 16)
  {
    return (v17 + 1);
  }

  else
  {
    return 0;
  }
}

void std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
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
        v7 = v4 - 104;
        v10 = (v4 - 96);
        std::vector<CFRange,TInlineBufferAllocator<CFRange,4ul>>::__destroy_vector::operator()[abi:fn200100](&v10);
        v4 = v7;
      }

      while (v7 != v2);
      v6 = *a1;
      v5 = **a1;
    }

    v1[1] = v2;
    v8 = v6 + 393;
    if (v6 + 3 <= v5 && v8 > v5)
    {
      if (v6[2] == *v8)
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

void std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::__destroy_vector::operator()[abi:fn200100](uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    *(a1 + 8) = v2;
    v3 = (a1 + 504);
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
      if (*(a1 + 16) == *(a1 + 504))
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

void TRunGlue::UpdateAdvancesIfNeeded(TRunGlue *this)
{
  *(this + 256) = 256;
  if (*(this + 514) == 1)
  {
    *(this + 514) = 0;
    if (*(this + 18))
    {
      if (*(this + 2) >= 1)
      {
        v2 = 0;
        while (1)
        {
          v3 = v2 + *(this + 1);
          v4 = *(*this + 16);
          if (v3 >= (*(*this + 24) - v4) >> 3)
          {
            break;
          }

          v5 = *(*(v4 + 8 * v3) + 48);
          v6 = *(atomic_load_explicit((v5 + 56), memory_order_acquire) + 40);
          RenderingStyle = TAttributes::GetRenderingStyle((v5 + 40));
          TStorageRange::UpdateAdvances(v5 + 192, v6, RenderingStyle & 0xFFFFFFFFFFLL);
          if (++v2 >= *(this + 2))
          {
            return;
          }
        }

        __break(1u);
      }
    }

    else
    {
      v8 = *(this + 62);
      v9 = *(this + 21);
      v10 = *(this + 22);
      v11 = TRunGlue::length(this);

      TFont::GetUnsummedAdvancesForGlyphs(v8, v9, v10, 2, v11, 0, 0);
    }
  }
}

uint64_t TKerningEngine::PositionGlyphs(TRunGlue *this, int a2, const TFont *a3, char a4, __CFString *a5, uint64_t a6, char a7)
{
  InitialScriptAndLangSys = a3;
  v12 = a2;
  v28 = *MEMORY[0x1E69E9840];
  v26 = a7 & 1;
  v25 = 0;
  if (a2 == 2)
  {
    CommonTable = -1;
  }

  else
  {
    CommonTable = TBaseFont::GetCommonTable(*(*(this + 62) + 408), 1634428274, 0);
    if (CommonTable && (a7 & 2) == 0)
    {
      v15 = 1;
LABEL_13:
      if (CommonTable == -1)
      {
        CommonTable = TBaseFont::GetCommonTable(*(*(this + 62) + 408), 1634428274, 0);
      }

      memcpy(__dst, &unk_18475A5C8, sizeof(__dst));
      TAATKerxEngine::TAATKerxEngine(__dst, this, CommonTable);
      if (*&__dst[88])
      {
        v15 = TAATKerxEngine::KernRuns(__dst, &v25, &v26);
      }

      TAATKerxEngine::~TAATKerxEngine(__dst);
      if (v26 != 2)
      {
        *__dst = xmmword_18475A760;
        *&__dst[16] = unk_18475A770;
        memset(&__dst[32], 170, 88);
        TAATKernEngine::TAATKernEngine(__dst, this);
        if (*&__dst[96])
        {
          v15 = TAATKernEngine::KernRuns(__dst, &v25, &v26);
        }

        std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::destroy(&__dst[56], *&__dst[64]);
        if (*&__dst[32])
        {
          *&__dst[40] = *&__dst[32];
          operator delete(*&__dst[32]);
        }
      }

      goto LABEL_22;
    }
  }

  v23 = v12;
  if ((a4 & 1) == 0)
  {
    InitialScriptAndLangSys = TOpenTypeMorph::GetInitialScriptAndLangSys(a5, *(this + 62), a3);
  }

  v16 = *(this + 5);
  if (v16 == -1)
  {
    TRunGlue::ComputeEndIndex(this);
    v16 = *(this + 5);
  }

  v17 = *(this + 6);
  v18 = v17 + v16;
  v24.location = v16;
  location = v16;
  do
  {
    v24.length = v18 - location;
    *&v20 = 0xAAAAAAAAAAAAAAAALL;
    *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *&__dst[224] = v20;
    *&__dst[240] = v20;
    *&__dst[192] = v20;
    *&__dst[208] = v20;
    *&__dst[160] = v20;
    *&__dst[176] = v20;
    *&__dst[128] = v20;
    *&__dst[144] = v20;
    *&__dst[112] = v20;
    *&__dst[80] = v20;
    *&__dst[96] = v20;
    *&__dst[48] = v20;
    *&__dst[64] = v20;
    *&__dst[16] = v20;
    *&__dst[32] = v20;
    *__dst = v20;
    TOpenTypePositioningEngine::TOpenTypePositioningEngine(__dst, this, a6, InitialScriptAndLangSys, &v24);
    v15 = TOpenTypePositioningEngine::PositionRuns(__dst, &v25, &v26);
    v24.location += v24.length;
    location = v24.location;
    std::__tree<std::__value_type<long,TGlyphDeltaListEntry>,std::__map_value_compare<long,std::__value_type<long,TGlyphDeltaListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TGlyphDeltaListEntry>>>::destroy(*&__dst[240]);
  }

  while (location < v18);
  *(this + 5) = v16;
  *(this + 6) = v17;
  v21 = *(this + 4);
  *(this + 19) = 0;
  *(this + 20) = v21;
  v12 = v23;
  if (v26 != 2)
  {
    goto LABEL_13;
  }

LABEL_22:
  if (v12)
  {
    TRunGlue::FilterJoiners(this);
  }

  return v15;
}

uint64_t *TOpenTypePositioningEngine::TOpenTypePositioningEngine(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, CFRange *a5)
{
  v6 = a4;
  v47[3] = *MEMORY[0x1E69E9840];
  *a1 = a2;
  v9 = *(a2 + 496);
  a1[1] = v9;
  *(a1 + 4) = *(a2 + 24);
  *(a1 + 20) = *(a2 + 516);
  a1[3] = 0xFFFFFFFFLL;
  *(a1 + 8) = HIDWORD(a4);
  CommonTable = TBaseFont::GetCommonTable(*(v9 + 408), 1195656518, 0);
  OTL::GDEF::GDEF((a1 + 5), CommonTable);
  *(a1 + 128) = 0;
  *(a1 + 216) = 0;
  a1[31] = 0;
  a1[30] = 0;
  a1[28] = a3;
  a1[29] = (a1 + 30);
  TOpenTypePositioningEngine::SetScript(a1, v6);
  v11 = *(*a1 + 56);
  v12 = *(*a1 + 64);
  v46 = 0;
  v47[0] = 0xAAAAAAAAAAAAAAAALL;
  v44 = 0;
  v45 = 0;
  v47[1] = 0xAAAAAAAAAAAAAAAALL;
  v47[2] = v47;
  if (v12 != v11)
  {
    std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__vallocate[abi:fn200100](&v44, v12 - v11);
    v13 = v45;
    do
    {
      v14 = *v11++;
      *v13++ = v14;
    }

    while (v11 != v12);
    v45 = v13;
    v15 = v44;
    if (v13 != v44)
    {
      v16 = v13;
      while (v16 != v44)
      {
        v17 = v16 - 1;
        v18 = *(v16-- - 1);
        if (v18 <= a5->location)
        {
          v15 = v17 + 1;
          break;
        }
      }

      v19 = v15 - 1;
      if (v13 != v15 - 1)
      {
        v20 = *v19;
        v21 = *(a1 + 6);
        if (v21 == -1)
        {
          TOpenTypePositioningEngine::SetScript(a1, v20);
          if (v45 != v19 + 1)
          {
            a5->length = *(v19 + 3) - a5->location;
          }
        }

        else if (v21 != v20)
        {
          TOpenTypePositioningEngine::SetScript(a1, -1);
        }
      }
    }
  }

  if (a3 && *(a1 + 6) == -1)
  {
    v22 = *(a1[1] + 408);
    if ((*(v22 + 184) & 0x400) == 0)
    {
      TBaseFont::DetermineFontFlags(*(a1[1] + 408), 0x400u);
    }

    if ((*(v22 + 180) & 0x400) == 0)
    {
      v42 = 0u;
      v32 = 0u;
      v33 = 0u;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v38 = 0u;
      v39 = 0u;
      v40 = 0u;
      v41 = 0u;
      v23 = *(a3 + 16);
      v43 = 0;
      *&v42 = v23;
      location = a5->location;
      length = a5->length;
      v30 = a5->location;
      v31 = a3;
      if (length >= 1)
      {
        v26 = length + location;
        while (1)
        {
          FullChar = TCharStreamIterator::GetFullChar(&v31, &v30, 0);
          v28 = ScriptCodeForLongCharacter(FullChar);
          if (v28)
          {
            break;
          }

          if (++v30 >= v26)
          {
            goto LABEL_26;
          }
        }

        TOpenTypePositioningEngine::SetScript(a1, v28);
      }
    }
  }

LABEL_26:
  TRunGlue::SetCharRange(*a1, *a5);
  v31 = &v44;
  std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](&v31);
  return a1;
}

const __CFData *TOpenTypePositioningEngine::SetScript(uint64_t a1, int a2)
{
  *(a1 + 24) = a2;
  *(a1 + 28) = ScriptTagForScriptCode(a2);
  result = TBaseFont::GetCommonTable(*(*(a1 + 8) + 408), 1196445523, 0);
  if (result)
  {
    v4 = *(a1 + 8);
    v5 = *(a1 + 28);
    v6 = *(a1 + 32);
    if (*(a1 + 216) == 1)
    {
      *(a1 + 216) = 0;
    }

    result = OTL::GCommon::GCommon(a1 + 128, 1, v4, result, a1 + 40, v5, v6);
    *(a1 + 128) = &unk_1EF2587A8;
    *(a1 + 216) = 1;
  }

  return result;
}

void std::vector<std::pair<UScriptCode,long>,TInlineBufferAllocator<std::pair<UScriptCode,long>,1ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = v1 + 5;
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
      if (v1[2] == v1[5])
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

uint64_t TOpenTypePositioningEngine::PositionRuns(uint64_t a1, _BYTE *a2, int *a3)
{
  v4 = a1;
  v165 = *MEMORY[0x1E69E9840];
  v5 = *(*a1 + 112);
  *(*a1 + 112) = a1 + 232;
  v133 = 0u;
  v134 = 0u;
  *__dst = 0u;
  v132 = 0u;
  if ((*(a1 + 216) & 1) == 0)
  {
    if ((*(a1 + 24) | 0x20) == 0x22)
    {
      *&v139[0] = 0xAAAAAAAAAAAAAA00;
      v16 = *(a1 + 224);
      v17 = *a1;
      __src = &unk_1EF25B9F8;
      v137 = v16;
      v138 = v17;
      if (v16)
      {
        off_1EF25BA08(&__src);
      }

      v18 = 1;
      *a2 = 1;
      goto LABEL_34;
    }

    goto LABEL_33;
  }

  v7 = *(a1 + 200);
  v9 = *(a1 + 24);
  v8 = *(a1 + 28);
  if (v7 == v8)
  {
    v10 = 0;
    v11 = 0;
    v12 = 1;
    v13 = 2;
    switch(v9)
    {
      case 2:
      case 34:
      case 38:
        goto LABEL_20;
      case 4:
      case 10:
      case 15:
      case 16:
      case 21:
      case 26:
      case 31:
      case 35:
      case 36:
        goto LABEL_4;
      case 18:
        goto LABEL_19;
      case 23:
        v13 = 0;
        *__dst = 0x626C776D6162766DLL;
        goto LABEL_20;
      case 28:
        v10 = 1;
LABEL_4:
        *__dst = 0x626C776D6162766DLL;
        v14 = (v4 + 16);
        v15 = (v4 + 5);
        if ((v10 & 1) == 0)
        {
          goto LABEL_17;
        }

        goto LABEL_15;
      default:
        break;
    }
  }

  *__dst = 0x626C776D6162766DLL;
  v11 = 2;
  v12 = 1;
  if (v9 == -1 || v9 == 25)
  {
LABEL_19:
    v13 = v11;
    if (v12)
    {
LABEL_20:
      v14 = (v4 + 16);
      v15 = (v4 + 5);
      v20 = v13 == 2;
      goto LABEL_21;
    }

LABEL_182:
    std::__throw_bad_optional_access[abi:fn200100]();
    goto LABEL_183;
  }

  FirstBlockForScript(0, v8, &__src);
  v12 = *(v4 + 216);
  if (!__src)
  {
    v11 = 2;
    goto LABEL_19;
  }

  if ((v4[27] & 1) == 0)
  {
    goto LABEL_182;
  }

  v15 = (v4 + 5);
  v14 = (v4 + 16);
LABEL_15:
  if (*v15)
  {
    v19 = ZeroMarkWidths(*v4, v15);
    v20 = 0;
    *a2 |= v19;
  }

  else
  {
LABEL_17:
    v20 = 0;
  }

LABEL_21:
  if (!v4[22] || (v21 = v4[23]) == 0 || !*v21)
  {
    if (v20)
    {
      v29 = *(v4 + 6);
      if (v29 == 19 || v29 == 2)
      {
        v30 = ZeroMarkWidths(*v4, 0, ZeroCombiningMarkWidths(TRunGlue &)::$_0::__invoke);
      }

      else
      {
        if (TBaseFont::GetCommonTable(v4[1][51], 1801810542, 0))
        {
          goto LABEL_33;
        }

        v30 = ZeroMarkWidths(*v4, v15);
      }

      *a2 |= v30;
      *a3 = 2;
    }

LABEL_33:
    v18 = 1;
    goto LABEL_34;
  }

  v117 = v20;
  v118 = v5;
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v145[6] = v22;
  v145[5] = v22;
  v145[4] = v22;
  v145[3] = v22;
  v145[2] = v22;
  v145[1] = v22;
  v145[0] = v22;
  v146 = 0xAAAAAAAAAAAAAAAALL;
  v144 = 0;
  v142 = 0;
  v143 = 0;
  v147 = v145;
  v23 = v4[1];
  v24 = (*(v4 + 8) + ((*(v4 + 6) + 2654435769) << 6) + ((*(v4 + 6) + 2654435769) >> 2) + 2654435769u) ^ (*(v4 + 6) + 2654435769);
  p_src = (*a3 + (v24 << 6) + (v24 >> 2) + 2654435769u) ^ v24;
  os_unfair_lock_lock_with_options();
  v26 = v23[33];
  v121 = v4;
  v116 = v15;
  if (v26)
  {
    v27 = vcnt_s8(v26);
    v27.i16[0] = vaddlv_u8(v27);
    if (v27.u32[0] > 1uLL)
    {
      v28 = p_src;
      if (*&v26 <= p_src)
      {
        v28 = p_src % *&v26;
      }
    }

    else
    {
      v28 = p_src & (*&v26 - 1);
    }

    v32 = *(v23[32] + 8 * v28);
    if (v32)
    {
      for (i = *v32; i; i = *i)
      {
        v34 = i[1];
        if (v34 == p_src)
        {
          if (i[2] == p_src)
          {
            std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__assign_with_size[abi:fn200100]<std::__wrap_iter<std::pair<unsigned short,unsigned short>*>,std::__wrap_iter<std::pair<unsigned short,unsigned short>*>>(&v142, i[3], i[4], (i[4] - i[3]) >> 2);
            *a3 = *(i + 44);
            goto LABEL_88;
          }
        }

        else
        {
          if (v27.u32[0] > 1uLL)
          {
            if (v34 >= *&v26)
            {
              v34 %= *&v26;
            }
          }

          else
          {
            v34 &= *&v26 - 1;
          }

          if (v34 != v28)
          {
            break;
          }
        }
      }
    }
  }

  v126 = a3;
  v128 = p_src;
  *&v35 = 0xAAAAAAAAAAAAAAAALL;
  *(&v35 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v163 = v35;
  p_src = &__src;
  v162 = v35;
  v161 = v35;
  v160 = v35;
  v159 = v35;
  v158 = v35;
  v157 = v35;
  v156 = v35;
  v155 = v35;
  v152 = 0;
  v153 = 0;
  v154 = 0;
  v164 = &v155;
  OTL::GCommon::GetFeatures(v14, &v152);
  *&v36 = 0xAAAAAAAAAAAAAAAALL;
  *(&v36 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v139[14] = v36;
  v139[13] = v36;
  v139[12] = v36;
  v139[11] = v36;
  v139[10] = v36;
  v139[9] = v36;
  v139[8] = v36;
  v139[7] = v36;
  v139[6] = v36;
  v139[5] = v36;
  v139[4] = v36;
  v139[3] = v36;
  v139[2] = v36;
  v139[0] = v36;
  v139[1] = v36;
  v137 = 0;
  v138 = 0;
  __src = 0;
  *&v139[15] = v139;
  if (OTL::FeatureList::StripMissingFeaturesFrom(&v152, __dst))
  {
    for (j = 0; j != 16; ++j)
    {
      v38 = __dst[j];
      if (!v38)
      {
        break;
      }

      v39 = v137;
      if (v137 >= v138)
      {
        v40 = __src;
        v41 = v137 - __src;
        v42 = (v137 - __src) >> 3;
        v43 = v42 + 1;
        if ((v42 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        v44 = v138 - __src;
        if ((v138 - __src) >> 2 > v43)
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

        v150 = v139;
        if (v45)
        {
          v46 = *&v139[15];
          if (*&v139[15] + 8 * v45 > &v139[15])
          {
            if (!(v45 >> 61))
            {
              operator new();
            }

LABEL_183:
            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          *&v139[15] += 8 * v45;
        }

        else
        {
          v46 = 0;
        }

        v47 = (v137 - __src) >> 3;
        v149 = 0u;
        v148 = 0u;
        v48 = (v46 + 8 * v42);
        v49 = v46 + 8 * v45;
        *v48 = v38;
        v48[1] = 1;
        p_src = (v48 + 2);
        v50 = &v48[-2 * v47];
        memcpy(v50, v40, v41);
        v51 = __src;
        v52 = v138;
        __src = v50;
        v137 = p_src;
        v138 = v49;
        *&v149 = v51;
        *(&v149 + 1) = v52;
        *(&v148 + 1) = v51;
        *&v148 = v51;
        std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v148);
      }

      else
      {
        *v137 = v38;
        *(v39 + 1) = 1;
        p_src = (v39 + 8);
      }

      v137 = p_src;
    }
  }

  v4 = v121;
  ConvertSettingsToOTFeatures(&v152, v23 + 22, *(v121 + 20), &__src, 0, v126, 1);
  OTL::GCommon::GetLookups(v14, &__src, &v142, 1);
  TInlineVector<std::pair<unsigned short,unsigned short>,30ul>::TInlineVector(&v148, &v142);
  v151 = *v126;
  v53 = v23[33];
  if (!*&v53)
  {
    goto LABEL_84;
  }

  v54 = vcnt_s8(v53);
  v54.i16[0] = vaddlv_u8(v54);
  if (v54.u32[0] > 1uLL)
  {
    v55 = v128;
    if (*&v53 <= v128)
    {
      v55 = v128 % *&v53;
    }
  }

  else
  {
    v55 = (*&v53 - 1) & v128;
  }

  v56 = *(v23[32] + 8 * v55);
  if (!v56 || (v57 = *v56) == 0)
  {
LABEL_84:
    operator new();
  }

  while (1)
  {
    v58 = v57[1];
    if (v58 == v128)
    {
      break;
    }

    if (v54.u32[0] > 1uLL)
    {
      if (v58 >= *&v53)
      {
        v58 %= *&v53;
      }
    }

    else
    {
      v58 &= *&v53 - 1;
    }

    if (v58 != v55)
    {
      goto LABEL_84;
    }

LABEL_83:
    v57 = *v57;
    if (!v57)
    {
      goto LABEL_84;
    }
  }

  if (v57[2] != v128)
  {
    goto LABEL_83;
  }

  v135 = &v148;
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v135);
  *&v148 = &__src;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v148);
  __src = &v152;
  std::vector<unsigned int,TInlineBufferAllocator<unsigned int,36ul>>::__destroy_vector::operator()[abi:fn200100](&__src);
LABEL_88:
  v59 = v142;
  v60 = v143;
  os_unfair_lock_unlock(v23 + 52);
  if (v59 == v60)
  {
    v18 = 1;
  }

  else
  {
    v61 = v4[1][51];
    LOWORD(v148) = *(v61 + 440);
    if (v148 == 0xFFFF)
    {
      v62 = atomic_load_explicit((v61 + 96), memory_order_acquire);
      if (v62 == @".DecoTypeNastaleeqUrduUI")
      {
      }

      else
      {
        v63 = v62;
        if (v62)
        {
          p_src = CFStringHasPrefix(v62, @".DecoTypeNastaleeqUrduUI");

          if (!p_src)
          {
            goto LABEL_97;
          }
        }

        else
        {

LABEL_97:
          v64 = v4[23];
          v65 = v4[20];
          v66 = v4[21];
          v141[0] = &unk_1EF258FA0;
          v141[1] = &v148;
          v141[3] = v141;
          OTL::GCommon::IterateFeatureTables(v65, v64, v66, v141);
          std::__function::__value_func<BOOL ()(unsigned int,OTL::FeatureTable const*,BOOL &)>::~__value_func[abi:fn200100](v141);
          if (v148 == -1)
          {
            LOWORD(v148) = 0;
          }
        }
      }

      LOWORD(v148) = v148 + 1;
      *(v4[1][51] + 440) = v148;
    }

    memset(v139, 170, sizeof(v139));
    __src = 0;
    v137 = 0;
    v138 = 0;
    v140 = v139;
    v67 = TRunGlue::length(*v4);
    v68 = v142;
    v69 = v143;
    if (v142 != v143)
    {
      v70 = v67;
      do
      {
        v71 = *v68++;
        p_src = p_src & 0xFFFFFFFF00000000 | v71;
        OTL::GlyphLookups::SetLookupInRange<false>(&__src, p_src, 0, v70);
      }

      while (v68 != v69);
    }

    if (v137 != __src)
    {
      v72 = *v121;
      v120 = *(v121 + 4);
      v73 = v148 - 1;
      v74 = 0x4EC4EC4EC4EC4EC5 * ((v137 - __src) >> 3);
      v75 = (*v121)[63];
      v76 = ((v75 + 63) >> 3) & 0x7FF8;
      v77 = v75 > 0x10000;
      v78 = 0x2000;
      if (!v77)
      {
        v78 = v76;
      }

      v122 = v78;
      v123 = (*v121)[24];
      v124 = TRunGlue::length(v72);
      v127 = *(*(v14 + 16) + 408);
      os_unfair_lock_lock_with_options();
      v79 = 0;
      if (v74 <= 1)
      {
        v80 = 1;
      }

      else
      {
        v80 = v74;
      }

      v125 = v80;
      v119 = v73;
      do
      {
        if (0x4EC4EC4EC4EC4EC5 * ((v137 - __src) >> 3) <= v79)
        {
          __break(1u);
        }

        v129 = v79;
        v81 = *(__src + 26 * v79);
        v82 = TBaseFont::NthLookup<OTL::GPOS>(v127, v14, v81);
        if (v82)
        {
          v83 = v82;
          v84 = *(v82 + 8);
          if (v124 != 1 || (v84 <= 8 ? (v85 = ((1 << v84) & 0x182) == 0) : (v85 = 1), !v85))
          {
            if ((*(v72 + 25) & v82[3]) != 0 && (*(v72 + 26) & v82[4]) != 0 && (!v123 || OTL::CoverageBitmap::CoversBitmap((v82 + 5), v123, v122)))
            {
              if (v84 == 3)
              {
                if ((*(*v83 + 2) & 0x100) != 0)
                {
                  v86 = -1;
                }

                else
                {
                  v86 = 1;
                }
              }

              else
              {
                v86 = 1;
              }

              v87 = __src;
              if (__src != v137)
              {
                while (*v87 != v81 || *(v87 + 1) != HIWORD(v81))
                {
                  v87 += 104;
                  if (v87 == v137)
                  {
                    v87 = v137;
                    break;
                  }
                }
              }

              v89 = *(v87 + 1);
              v90 = *(v87 + 2);
              if (v89 != v90)
              {
                v91 = v86 * v120;
                v93 = v119 == v81 && v84 == 2;
                v130 = v93;
                do
                {
                  v94 = *v89;
                  v95 = v89[1];
                  *&v158 = 0xAAAAAAAAAAAAAAAALL;
                  *&v96 = 0xAAAAAAAAAAAAAAAALL;
                  *(&v96 + 1) = 0xAAAAAAAAAAAAAAAALL;
                  v157 = v96;
                  v156 = v96;
                  v152 = v72;
                  v153 = v91 | 0xAAAAAAAA00000000;
                  v154 = v94 - 1;
                  *&v155 = v95 + v94;
                  *(&v155 + 1) = -1;
                  v97 = TRunGlue::length(v72);
                  *&v157 = -1;
                  *(&v157 + 1) = -1;
                  *&v156 = v97;
                  *&v158 = 0;
                  v98 = v154;
                  if ((v91 & 0x80000000) != 0)
                  {
                    v99 = *(&v155 + 1);
                    v154 = v155;
                    *&v155 = v98;
                    *(&v155 + 1) = v97;
                    *&v156 = v99;
                    v98 = v154;
                  }

                  *(&v156 + 1) = v98;
                  v100 = OTL::Lookup::ignore(v83, *(v14 + 24));
                  *(&v156 + 1) = v154;
                  *&v158 = v100;
                  if (v130 && (v101 = v83[13] - v83[12], (v101 >> 6) <= 0x10u))
                  {
                    *a2 |= OTL::GPOS::ApplyPairPosAccelerated(v14, v83, (v101 >> 6) & 0x1F, &v152);
                  }

                  else if (TGlyphIterator::NextCoveredBy(&v152, v83))
                  {
                    do
                    {
                      *a2 |= OTL::GPOS::ApplyLookupAt(v14, v83, v84, &v152, 0);
                    }

                    while ((TGlyphIterator::NextCoveredBy(&v152, v83) & 1) != 0);
                  }

                  v89 += 2;
                }

                while (v89 != v90);
              }
            }
          }
        }

        v79 = v129 + 1;
      }

      while (v129 + 1 != v125);
      os_unfair_lock_unlock(v127 + 89);
    }

    v4 = v121;
    if (v121[31])
    {
      v102 = *(*v121 + 65);
      v103 = *(*v121 + 66);
      if ((*v121)[18] || (*v121)[23])
      {
        v104 = v121[29];
        if (v104 != (v121 + 30))
        {
          v105 = MEMORY[0x1E695EFF8];
          do
          {
            v106 = v104[5];
            v107 = v104[6];
            if (v106 != 0.0 || v107 != 0.0)
            {
              v108 = v102 * v106;
              v109 = v103 * v107;
              v110 = -(v102 * v106);
              if (!*(v121 + 20))
              {
                v110 = v108;
              }

              if (v110 != *v105 || v109 != v105[1])
              {
                v112 = v103 * v107;
                TRunGlue::SetOrigin(*v121, *(v104 + 4), *&v110);
                v113 = (*v121)[18];
                if (v113)
                {
                  TRun::NoteCrossStreamPosition(v113, v103 * v109);
                }
              }
            }

            v114 = *(v104 + 1);
            if (v114)
            {
              do
              {
                v115 = v114;
                v114 = *v114;
              }

              while (v114);
            }

            else
            {
              do
              {
                v115 = *(v104 + 2);
                v85 = *v115 == v104;
                v104 = v115;
              }

              while (!v85);
            }

            v104 = v115;
          }

          while (v115 != (v121 + 30));
        }

        v18 = 1;
        *a2 = 1;
      }

      else
      {
        v18 = 0;
      }
    }

    else
    {
      v18 = 1;
    }

    v152 = &__src;
    std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v152);
  }

  v5 = v118;
  if (v117)
  {
    *a2 |= ZeroMarkWidths(*v4, v116);
  }

  __src = &v142;
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&__src);
LABEL_34:
  (*v4)[14] = v5;
  return v18;
}

uint64_t *TBaseFont::NthLookup<OTL::GPOS>(uint64_t a1, void *a2, unsigned int a3)
{
  v22[48] = *MEMORY[0x1E69E9840];
  v19 = a3;
  v5 = std::__hash_table<std::__hash_value_type<unsigned int,OTL::Lookup>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OTL::Lookup>>>::find<unsigned int>((a1 + 400), &v19);
  if (v5)
  {
    return v5 + 3;
  }

  v7 = a2[8];
  if (v19 >= bswap32(*v7) >> 16)
  {
    return 0;
  }

  v8 = (v7 + (bswap32(v7[v19 + 1]) >> 16));
  v10 = a2[4];
  v9 = a2[5];
  if ((v8 + 2) < v10 || (v8 + 3) > v9)
  {
    return 0;
  }

  v12 = &v8[(bswap32(v8[2]) >> 16) + 3] + ((v8[1] >> 11) & 2);
  v13 = v10 <= v8 && v12 >= v8;
  if (!v13 || v12 > v9)
  {
    return 0;
  }

  OTL::Lookup::Lookup<OTL::GPOS>(v22, a2, v8);
  v20 = v22;
  v21 = &v19;
  v15 = std::__hash_table<std::__hash_value_type<unsigned int,OTL::Lookup>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OTL::Lookup>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<OTL::Lookup&&>>((a1 + 400), &v19);
  v17 = v16;
  OTL::Lookup::~Lookup(v22);
  if ((v17 & 1) == 0)
  {
    return 0;
  }

  v6 = (v15 + 3);
  OTL::Lookup::InitCoverageUnion(v6);
  return v6;
}

void *TRunGlue::GetGlyphProps(void *this, int64_t a2)
{
  v3 = this;
  if (this[18])
  {
    TRunGlue::FocusOnIndex(this, a2);
    return *(v3[51] + 4 * (a2 - v3[19]));
  }

  else
  {
    v4 = this[19] + a2;
    v5 = this[51];
    if (v5)
    {
      return *(v5 + 4 * v4);
    }

    else
    {
      v6 = v4 + 7;
      if (v4 >= 0)
      {
        v6 = this[19] + a2;
      }

      v7 = this[27];
      if (this[28] - v7 <= (v6 >> 3))
      {
        __break(1u);
      }

      else
      {
        return ((*(v7 + (v6 >> 3)) >> (v4 & 7) << 31 >> 31) & 0x20);
      }
    }
  }

  return this;
}

void std::__tree<std::__value_type<long,TGlyphDeltaListEntry>,std::__map_value_compare<long,std::__value_type<long,TGlyphDeltaListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TGlyphDeltaListEntry>>>::destroy(void *a1)
{
  if (a1)
  {
    std::__tree<std::__value_type<long,TGlyphDeltaListEntry>,std::__map_value_compare<long,std::__value_type<long,TGlyphDeltaListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TGlyphDeltaListEntry>>>::destroy(*a1);
    std::__tree<std::__value_type<long,TGlyphDeltaListEntry>,std::__map_value_compare<long,std::__value_type<long,TGlyphDeltaListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TGlyphDeltaListEntry>>>::destroy(a1[1]);

    operator delete(a1);
  }
}

uint64_t TRunGlue::FilterJoiners(TRunGlue *this)
{
  if (((*(**(*(this + 62) + 408) + 696))(*(*(this + 62) + 408)) & 1) != 0 || (v3 = TBaseFont::GetCachedSpaceAndJoinerGlyphs(*(*(this + 62) + 408), 0) + 2, v3 == v2) || (v4 = v2, v14 = 0, v12 = this, v13 = 0, (v5 = TRunGlue::length(this)) == 0))
  {
    v7 = 0;
  }

  else
  {
    v6 = v5;
    v7 = 0;
    do
    {
      v8 = TRunGlue::TGlyph::glyphID(&v12);
      if (v8 != 0xFFFF)
      {
        v9 = v8;
        if ((TRunGlue::IsDeleted(v12, v13) & 1) == 0)
        {
          v10 = v3;
          while (*v10 != v9)
          {
            if (++v10 == v4)
            {
              v10 = v4;
              break;
            }
          }

          if (v10 != v4)
          {
            TRunGlue::FilterJoiner(this, &v12, &v14);
            v7 = 1;
          }
        }
      }

      ++v13;
    }

    while (v13 != v6);
  }

  return v7 & 1;
}

uint64_t TTenuousComponentFont::IsLastResort(TTenuousComponentFont *this)
{
  if ((*(*this + 856))(this))
  {
    return 0;
  }

  if ((*(this + 46) & 2) == 0)
  {
    TBaseFont::DetermineFontFlags(this, 2u);
  }

  return (*(this + 45) >> 1) & 1;
}

atomic_ullong *TBaseFont::GetCachedSpaceAndJoinerGlyphs(atomic_ullong *this, TBaseFont **a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v3 = (this + 29);
  if (!atomic_load_explicit(this + 29, memory_order_acquire))
  {
    *v16 = 0x34F200D200C0020;
    if (a2)
    {
      v4 = (this + 28);
      v5 = a2;
    }

    else
    {
      v15 = this;
      v5 = &v15;
      v4 = (this + 28);
    }

    TcmapTable::Map(v5, v16, v4, 4, 1);
    v6 = 0;
    v7 = (this + 226);
    while (*(v7 + v6))
    {
      v6 += 2;
      if (v6 == 6)
      {
        v8 = (this + 228);
        v9 = v3;
        goto LABEL_16;
      }
    }

    v9 = (this + v6 + 226);
    if (v6 != 4)
    {
      v10 = this + 228;
      do
      {
        if (*&v10[v6])
        {
          *v9 = *&v10[v6];
          v9 = (v9 + 2);
        }

        v6 += 2;
      }

      while (v6 != 4);
    }

    if (v7 == v9)
    {
      v9 = (this + 226);
      goto LABEL_24;
    }

    v8 = (this + 228);
    if ((this + 228) == v9)
    {
      goto LABEL_24;
    }

LABEL_16:
    v11 = 0;
    v12 = v8;
    do
    {
      v13 = *v12;
      v12 = (v12 + 2);
      if (v13 == *v7)
      {
        ++v11;
      }
    }

    while (v12 != v9);
    if (v11 == (v9 - v8) >> 1)
    {
      v9 = (this + 226);
    }

LABEL_24:
    __dmb(0xBu);
    *v3 = v9;
  }

  return this + 28;
}

void TTenuousComponentFont::CopyGraphicsFont(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  if (atomic_load_explicit(this + 96, memory_order_acquire) && (this[99] & 1) == 0)
  {
    TTenuousComponentFont::InitializeVariationGraphicsFont(this);
    *a2 = atomic_load_explicit(this + 98, memory_order_acquire);
  }

  else
  {

    TBaseFont::CopyNativeFont(this, a2);
  }
}

CGFontRef CTFontCopyGraphicsFont(CTFontRef font, CTFontDescriptorRef *attributes)
{
  if (!font)
  {
    return 0;
  }

  if (attributes)
  {
    *attributes = 0;
  }

  (*(**(*(font + 5) + 408) + 504))(&v4);
  v2 = atomic_exchange(&v4, 0);

  return v2;
}

void CTFontDrawGlyphsWithAdvancesInternal(uint64_t a1, CGGlyph *a2, float64x2_t *a3, unint64_t a4, CGContextRef c, uint64_t a6)
{
  v85 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return;
  }

  if (!a2)
  {
    return;
  }

  v7 = a3;
  if (!a3)
  {
    return;
  }

  v8 = a4;
  if (!a4 || !c)
  {
    return;
  }

  v10 = a6;
  v11 = 1;
  if (a6)
  {
    if (*(a6 + 224))
    {
      v12 = -1;
    }

    else
    {
      v12 = 1;
    }

    v65 = v12;
    v11 = (*(a6 + 224) & 1) == 0;
  }

  else
  {
    v65 = 1;
  }

  v13 = a6 != 0;
  v14 = *(a1 + 40);
  *&v15 = -1;
  *(&v15 + 1) = -1;
  *&v80.c = v15;
  *&v80.tx = v15;
  *&v80.a = v15;
  CGContextGetTextMatrix(&v80, c);
  *&v16 = -1;
  *(&v16 + 1) = -1;
  *&v79.c = v16;
  *&v79.tx = v16;
  *&v79.a = v16;
  v82 = *&v80.a;
  *v83 = *&v80.c;
  *&v83[16] = *&v80.tx;
  CGAffineTransformInvert(&v79, &v82);
  Type = CGContextGetType();
  if (Type == 1 || v10 && v79.d < 0.0)
  {
    goto LABEL_20;
  }

  v18 = TFont::ensureSVGTableObject(v14);
  if (v18 != 0 || v11)
  {
    if (!v18)
    {
      goto LABEL_19;
    }

LABEL_20:
    v19 = *MEMORY[0x1E695EFD0];
    v20 = *(MEMORY[0x1E695EFD0] + 32);
    *v83 = *(MEMORY[0x1E695EFD0] + 16);
    *&v83[16] = v20;
    *&v83[32] = *MEMORY[0x1E695EFD0];
    *&v83[48] = *v83;
    *&v83[64] = v20;
    *&v83[88] = -1431655766;
    *&v83[80] = v10;
    v83[88] = v13;
    *&v83[92] = Type;
    *&v83[96] = 0;
    *t1 = v79;
    *&t2.a = v19;
    *&t2.c = *v83;
    *&t2.tx = *(MEMORY[0x1E695EFD0] + 32);
    v82 = *&v83[32];
    DrawGlyphsWithAdvancesAndTransform(v14, a2, v7, v8, c, t1, &t2.a, &v82);
    return;
  }

  if ((*(*v14[51] + 480))(v14[51], 1935829368))
  {
    goto LABEL_20;
  }

LABEL_19:
  if ((*(*v14[51] + 480))(v14[51], 1129270354))
  {
    goto LABEL_20;
  }

  v21 = *MEMORY[0x1E695EFF8];
  v22 = *(MEMORY[0x1E695EFF8] + 8);
  v78 = 0xAAAAAAAAAAAAAAAALL;
  (*(*v14[51] + 488))(&v78);
  if (!atomic_load_explicit(&v78, memory_order_acquire))
  {
    goto LABEL_51;
  }

  memset(v77, 170, sizeof(v77));
  explicit = atomic_load_explicit(&v78, memory_order_acquire);
  TBaseFont::GetGlyphCount(v14[51]);
  TsbixContext::TsbixContext(v77, explicit);
  if (v77[1])
  {
    v64 = (*(v77[1] + 1) >> 9) & 1;
  }

  else
  {
    v64 = 0;
  }

  memset(&v83[8], 170, 0x3C0uLL);
  v82 = 0uLL;
  *v83 = 0;
  v84 = &v83[8];
  std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::__vallocate[abi:fn200100](&v82, v8);
  v24 = *(&v82 + 1);
  bzero(*(&v82 + 1), 32 * v8);
  *(&v82 + 1) = v24 + 32 * v8;
  if (((*(*v14[51] + 720))() & 1) != 0 || TFont::HasBBoxes(v14[51], a2, v8, v82))
  {
    *&v25 = -1;
    *(&v25 + 1) = -1;
    *&v76.c = v25;
    *&v76.tx = v25;
    *&v76.a = v25;
    GetFontScaleTransform(&v76, v14);
    *&v26 = -1;
    *(&v26 + 1) = -1;
    *&v75.c = v26;
    *&v75.tx = v26;
    *&v75.a = v26;
    CGContextGetCTM(&v75, c);
    _D0 = 0;
    v28 = v80.c + v80.a * 0.0;
    v66 = *&v80.c;
    v62 = *&v80.a;
    __asm { FMLA            D10, D0, V2.D[1] }

    v34 = hypot(v28, _D10);
    tx = v80.tx;
    ty = v80.ty;
    v37 = 1.0;
    if (v34 > 1.0 || fabs(v28) <= fabs(_D10))
    {
      *&t2.a = v62;
      *&t2.c = v66;
      t2.tx = v80.tx;
      t2.ty = v80.ty;
      CGAffineTransformScale(t1, &t2, 1.0 / v34, 1.0 / v34);
      v38 = 0;
      v40 = *t1;
      v39 = *&t1[16];
      v37 = v34;
      tx = *&t1[32];
      ty = *&t1[40];
    }

    else
    {
      v38 = 1;
      v39 = v66;
      v40 = v62;
    }

    *&v41 = -1;
    *(&v41 + 1) = -1;
    *&v74.c = v41;
    *&v74.tx = v41;
    *&v74.a = v41;
    *t1 = v40;
    *&t1[16] = v39;
    *&t1[32] = tx;
    *&t1[40] = ty;
    t2 = v75;
    CGAffineTransformConcat(&v74, t1, &t2);
    *t1 = v74;
    CGContextSetCTM();
    FillColorAsColor = CGContextGetFillColorAsColor();
    Alpha = CGColorGetAlpha(FillColorAsColor);
    ContentsScale = GetContentsScale(c);
    TFont::GetColorBitmapFontTranslate(v14);
    v21 = v45;
    v22 = v46;
    *&v47 = -1;
    *(&v47 + 1) = -1;
    *&t2.c = v47;
    *&t2.tx = v47;
    *&t2.a = v47;
    v61 = v10;
    v67 = *&v80.tx;
    if (v38)
    {
      t2 = v79;
    }

    else
    {
      CGAffineTransformMakeScale(&t2, v37, v37);
    }

    v48 = 0;
    v49 = 0;
    v50 = v14;
    v63 = v38;
    v51 = v67;
    do
    {
      v52 = v51.f64[1];
      v68 = v51;
      if (v38)
      {
        v53 = v51.f64[0];
      }

      else
      {
        v53 = v79.tx + v51.f64[1] * v79.c + v79.a * v51.f64[0];
        v52 = v79.ty + v51.f64[1] * v79.d + v79.b * v51.f64[0];
      }

      v54 = a2[v49];
      *t1 = -1;
      *&t1[8] = -1;
      *&t1[16] = 0xAAAAAAAAAAAAAAAALL;
      *&v55 = -1;
      *(&v55 + 1) = -1;
      *&t1[24] = v55;
      *&t1[40] = v55;
      v73 = -1;
      v88.x = v21;
      v88.y = v22;
      if (atomic_load_explicit(&t1[16], memory_order_acquire))
      {
        if (Alpha != 0.0)
        {
          if (v49 >= (*(&v82 + 1) - v82) >> 5)
          {
            __break(1u);
          }

          v56 = vaddq_f64(*&t2.tx, vmlaq_n_f64(vmulq_n_f64(*&t2.c, v52 + v76.ty + *(v82 + v48 + 8) * v76.d + v76.b * *(v82 + v48)), *&t2.a, v53 + v76.tx + *(v82 + v48 + 8) * v76.c + v76.a * *(v82 + v48)));
          y = v56.y;
        }

        if ((v64 & 1) == 0)
        {
          v86.x = v53;
          v86.y = v52;
          DrawInvisibleGlyph(c, v54, v86, MEMORY[0x1E695EFD0], MEMORY[0x1E695EFD0]);
        }
      }

      else if ((v64 & 1) == 0)
      {
        CGContextSetCTM();
        v87.x = v21 + v53;
        v87.y = v22 + v52;
        DrawVisibleGlyph(c, v54, v87, MEMORY[0x1E695EFD0], MEMORY[0x1E695EFD0]);
        v71 = v74;
        CGContextSetCTM();
      }

      v69 = vaddq_f64(v68, v7[v49]);

      v51 = v69;
      ++v49;
      v48 += 32;
      LOBYTE(v38) = v63;
    }

    while (v8 != v49);
    v14 = v50;
    *t1 = v75;
    CGContextSetCTM();
    v10 = v61;
  }

  *t1 = &v82;
  std::vector<CGRect,TInlineBufferAllocator<CGRect,30ul>>::__destroy_vector::operator()[abi:fn200100](t1);

  if (!v64)
  {
    v59 = *&v80.tx;
    do
    {
      v60 = *v7++;
      v59 = vaddq_f64(v59, v60);
      --v8;
    }

    while (v8);
    CGContextSetTextPosition(c, v59.f64[0], v59.f64[1]);
  }

  else
  {
LABEL_51:
    if (v21 != 0.0 || v22 != 0.0)
    {
      TextPosition = CGContextGetTextPosition(c);
      CGContextSetTextPosition(c, v21 + TextPosition.x, v22 + TextPosition.y);
    }

    if (v10)
    {
      v82 = *&v80.a;
      *v83 = *&v80.c;
      *&v83[16] = *&v80.tx;
      LODWORD(v10) = HandleFlippedTextMatrix(c, &v82);
    }

    v70[0] = MEMORY[0x1E69E9820];
    v70[1] = 3221225472;
    v70[2] = __CTFontDrawGlyphsWithAdvancesInternal_block_invoke;
    v70[3] = &__block_descriptor_56_e16_v28__0___qq_8B24l;
    v70[4] = c;
    v70[5] = a2;
    v70[6] = v7;
    EnumerateOverlappingGlyphs(v14[51], a2, v8, v65, v70);
    if (v10)
    {
      RestoreFlippedTextMatrix(c);
    }
  }
}

uint64_t TFont::ensureSVGTableObject(TFont *this)
{
  os_unfair_lock_lock_with_options();
  if (MEMORY[0x1EEE8E080] && (*(this + 528) & 1) == 0)
  {
    v4 = 0xAAAAAAAAAAAAAAAALL;
    (*(**(this + 51) + 488))(&v4);
    if (atomic_load_explicit(&v4, memory_order_acquire))
    {
      atomic_load_explicit(&v4, memory_order_acquire);
      if (!*(this + 14))
      {
        TFont::InitStrikeMetrics(this);
      }

      *(this + 65) = OTSVGTableCreateFromData();
    }
  }

  *(this + 528) = 1;
  v2 = *(this + 65);
  os_unfair_lock_unlock(this + 128);
  return v2;
}

uint64_t TTenuousComponentFont::HasTable(atomic_uint *this, int a2)
{
  result = 0;
  if (a2 <= 1634561905)
  {
    if (a2 == 1129270354)
    {
      return result;
    }

    if (a2 != 1398030676)
    {
      if (a2 == 1398163232)
      {
        return result;
      }

      goto LABEL_11;
    }

    return (*(this + 712) >> 2) & 1;
  }

  if (a2 == 1634561906 || a2 == 1935829368)
  {
    return result;
  }

  if (a2 == 1953653099)
  {
    return (*(this + 712) >> 2) & 1;
  }

LABEL_11:
  result = (*(*this + 904))(this);
  if (result)
  {

    return TBaseFont::HasTable(this, a2);
  }

  return result;
}

void TTenuousComponentFont::CopyTable(atomic_uint *this@<X0>, uint64_t a2@<X1>, atomic_ullong *a3@<X8>)
{
  if (a2 <= 1398163231)
  {
    if (a2 == 1129270354 || a2 == 1398030676 && ((*(*this + 480))(this, 1398030676) & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else if (a2 == 1398163232 || a2 == 1634561906 || a2 == 1935829368)
  {
    goto LABEL_13;
  }

  if (((*(*this + 904))(this) & 1) == 0)
  {
LABEL_13:
    *a3 = 0;
    return;
  }

  TBaseFont::CopyTable(this, a2, a3);
}

void EnumerateOverlappingGlyphs(atomic_ullong *a1, unsigned __int16 *a2, uint64_t a3, int a4, uint64_t a5)
{
  v86[1] = *MEMORY[0x1E69E9840];
  memset(v85, 170, sizeof(v85));
  __src = 0;
  v83 = 0;
  v84 = 0;
  v86[0] = v85;
  MergeTable = TBaseFont::GetMergeTable(a1);
  if (MergeTable)
  {
    if (a3 <= 1)
    {
      v14 = 0xAAAAAAAAAAAAAAALL;
      v15 = __src;
      v16 = v83 - __src;
      v17 = 0xAAAAAAAAAAAAAAABLL * ((v83 - __src) >> 3) + 1;
      if (v17 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_86;
      }

      if (0x5555555555555556 * ((v84 - __src) >> 3) > v17)
      {
        v17 = 0x5555555555555556 * ((v84 - __src) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v84 - __src) >> 3) < 0x555555555555555)
      {
        v14 = v17;
      }

      v81 = v85;
      if (v14)
      {
        v18 = std::allocator_traits<TInlineBufferAllocator<OTL::MergeTable::Group,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<OTL::MergeTable::Group,30ul>>(v85, v14);
        v14 = v19;
        v15 = __src;
        v16 = v83 - __src;
      }

      else
      {
        v18 = 0;
      }

      v60 = v18 + 8 * ((v83 - __src) >> 3);
      v61 = v18 + 24 * v14;
      *v60 = 0;
      *(v60 + 8) = a3;
      *(v60 + 16) = 0;
      v46 = (v60 + 24);
      v62 = (v60 - v16);
      memcpy((v60 - v16), v15, v16);
      v63 = __src;
      v64 = v84;
      __src = v62;
      v83 = v46;
      v84 = v61;
      goto LABEL_72;
    }

    v11 = MergeTable;
    if (*(*(MergeTable + 8) + 2) == 256)
    {
      v12 = **(MergeTable + 24);
      if (a4 < 0)
      {
        v12 = **(MergeTable + 24) >> 4;
      }

      v13 = v12 & 1;
      v47 = 0xAAAAAAAAAAAAAAALL;
      v48 = __src;
      v49 = v83 - __src;
      v50 = 0xAAAAAAAAAAAAAAABLL * ((v83 - __src) >> 3) + 1;
      if (v50 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_86;
      }

      if (0x5555555555555556 * ((v84 - __src) >> 3) > v50)
      {
        v50 = 0x5555555555555556 * ((v84 - __src) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v84 - __src) >> 3) < 0x555555555555555)
      {
        v47 = v50;
      }

      v81 = v85;
      if (v47)
      {
        v51 = std::allocator_traits<TInlineBufferAllocator<OTL::MergeTable::Group,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<OTL::MergeTable::Group,30ul>>(v85, v47);
        v47 = v52;
        v48 = __src;
        v49 = v83 - __src;
      }

      else
      {
        v51 = 0;
      }

      v65 = v51 + 8 * ((v83 - __src) >> 3);
      v66 = v51 + 24 * v47;
      *v65 = 0;
      *(v65 + 8) = a3;
      *(v65 + 16) = v13;
      v46 = (v65 + 24);
      v67 = (v65 - v49);
      memcpy((v65 - v49), v48, v49);
      v63 = __src;
      v64 = v84;
      __src = v67;
      v83 = v46;
      v84 = v66;
LABEL_72:
      v79 = v63;
      v80 = v64;
      v77 = v63;
      v78 = v63;
      std::__split_buffer<std::pair<double,CFRange>,TInlineBufferAllocator<std::pair<double,CFRange>,30ul> &>::~__split_buffer(&v77);
      v83 = v46;
      goto LABEL_76;
    }

    v76 = a3;
    v20 = OTL::MergeTable::MergeClassForGlyph(MergeTable, *a2);
    v21 = 0;
    v22 = 0;
    v23 = 1;
    v24 = 1;
    while (1)
    {
      v25 = OTL::MergeTable::MergeClassForGlyph(v11, a2[v23]);
      v26 = v25;
      v27 = bswap32(*(*(v11 + 1) + 2)) >> 16;
      if (v27 <= v20 || v27 <= v25)
      {
        break;
      }

      v31 = *(*(v11 + 3) + v20 * v27 + v25);
      if (v25 == v20 && v31 == 0)
      {
        goto LABEL_35;
      }

      if (a4 < 0)
      {
        v31 >>= 4;
      }

      if (!v31)
      {
        break;
      }

      if (v31)
      {
        v22 = 1;
      }

      if ((v31 & 4) == 0)
      {
LABEL_35:
        v20 = v25;
      }

      ++v24;
      v26 = v20;
LABEL_48:
      ++v23;
      v20 = v26;
      if (v76 == v23)
      {
        v45 = v83;
        if (v83 < v84)
        {
          *v83 = v21;
          *(v45 + 1) = v24;
          v46 = v45 + 24;
          v45[16] = v22;
          goto LABEL_75;
        }

        v53 = __src;
        v54 = v83 - __src;
        v55 = 0xAAAAAAAAAAAAAAABLL * ((v83 - __src) >> 3);
        v56 = v55 + 1;
        if (v55 + 1 <= 0xAAAAAAAAAAAAAAALL)
        {
          if (0x5555555555555556 * ((v84 - __src) >> 3) > v56)
          {
            v56 = 0x5555555555555556 * ((v84 - __src) >> 3);
          }

          if (0xAAAAAAAAAAAAAAABLL * ((v84 - __src) >> 3) >= 0x555555555555555)
          {
            v57 = 0xAAAAAAAAAAAAAAALL;
          }

          else
          {
            v57 = v56;
          }

          v81 = v85;
          if (v57)
          {
            v58 = std::allocator_traits<TInlineBufferAllocator<OTL::MergeTable::Group,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<OTL::MergeTable::Group,30ul>>(v85, v57);
            v57 = v59;
            v53 = __src;
            v54 = v83 - __src;
          }

          else
          {
            v58 = 0;
          }

          v68 = v58 + 24 * v55;
          v69 = v58 + 24 * v57;
          *v68 = v21;
          *(v68 + 8) = v24;
          *(v68 + 16) = v22;
          v46 = (v68 + 24);
          v70 = (v68 - v54);
          memcpy((v68 - v54), v53, v54);
          v71 = __src;
          v72 = v84;
          __src = v70;
          v83 = v46;
          v84 = v69;
          v79 = v71;
          v80 = v72;
          v77 = v71;
          v78 = v71;
          std::__split_buffer<std::pair<double,CFRange>,TInlineBufferAllocator<std::pair<double,CFRange>,30ul> &>::~__split_buffer(&v77);
LABEL_75:
          v83 = v46;
LABEL_76:
          v73 = __src;
          if (__src != v46)
          {
            do
            {
              (*(a5 + 16))(a5, *v73, *(v73 + 1), v73[16]);
              v73 += 24;
            }

            while (v73 != v46);
            goto LABEL_78;
          }

          goto LABEL_79;
        }

LABEL_86:
        std::__throw_bad_array_new_length[abi:fn200100]();
      }
    }

    v29 = v83;
    if (v83 >= v84)
    {
      v33 = __src;
      v34 = v83 - __src;
      v35 = 0xAAAAAAAAAAAAAAABLL * ((v83 - __src) >> 3);
      v36 = v35 + 1;
      if (v35 + 1 > 0xAAAAAAAAAAAAAAALL)
      {
        goto LABEL_86;
      }

      if (0x5555555555555556 * ((v84 - __src) >> 3) > v36)
      {
        v36 = 0x5555555555555556 * ((v84 - __src) >> 3);
      }

      if (0xAAAAAAAAAAAAAAABLL * ((v84 - __src) >> 3) >= 0x555555555555555)
      {
        v37 = 0xAAAAAAAAAAAAAAALL;
      }

      else
      {
        v37 = v36;
      }

      v81 = v85;
      if (v37)
      {
        v38 = std::allocator_traits<TInlineBufferAllocator<OTL::MergeTable::Group,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<OTL::MergeTable::Group,30ul>>(v85, v37);
        v37 = v39;
        v33 = __src;
        v34 = v83 - __src;
      }

      else
      {
        v38 = 0;
      }

      v40 = v38 + 24 * v35;
      v41 = v38 + 24 * v37;
      *v40 = v21;
      *(v40 + 8) = v24;
      *(v40 + 16) = v22;
      v30 = (v40 + 24);
      v42 = (v40 - v34);
      memcpy((v40 - v34), v33, v34);
      v43 = __src;
      v44 = v84;
      __src = v42;
      v83 = v30;
      v84 = v41;
      v79 = v43;
      v80 = v44;
      v77 = v43;
      v78 = v43;
      std::__split_buffer<std::pair<double,CFRange>,TInlineBufferAllocator<std::pair<double,CFRange>,30ul> &>::~__split_buffer(&v77);
    }

    else
    {
      *v83 = v21;
      *(v29 + 1) = v24;
      v30 = v29 + 24;
      v29[16] = v22;
    }

    v22 = 0;
    v83 = v30;
    v24 = 1;
    v21 = v23;
    goto LABEL_48;
  }

  v10 = (*(*a1 + 400))(a1) && (*(*a1 + 208))(a1) != 5;
  (*(a5 + 16))(a5, 0, a3, v10);
LABEL_78:
  v73 = __src;
LABEL_79:
  if (v73)
  {
    v83 = v73;
    if (v85 > v73 || v86 <= v73)
    {
      operator delete(v73);
    }
  }
}

unint64_t TBaseFont::GetMergeTable(atomic_ullong *this)
{
  explicit = atomic_load_explicit(this + 74, memory_order_acquire);
  if (explicit == -1)
  {
    return 0;
  }

  if (!explicit)
  {
    v4 = 0xAAAAAAAAAAAAAAAALL;
    (*(*this + 488))(&v4);
    if (atomic_load_explicit(&v4, memory_order_acquire))
    {
      operator new();
    }

    explicit = 0;
    atomic_store(0xFFFFFFFFFFFFFFFFLL, this + 74);
  }

  return explicit;
}

uint64_t OTL::MergeTable::MergeClassForGlyph(OTL::MergeTable *this, unsigned int a2)
{
  v2 = *(this + 1);
  if (!*(v2 + 6))
  {
    return 0;
  }

  v4 = __rev16(*(v2 + 6));
  if (v4 <= 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = v4;
  }

  v6 = *(this + 4);
  while (1)
  {
    v7 = *v6++;
    result = OTL::ClassDefTable::ClassOf((v2 + (bswap32(v7) >> 16)), a2);
    if (result)
    {
      break;
    }

    if (!--v5)
    {
      return 0;
    }
  }

  return result;
}

uint64_t std::allocator_traits<TInlineBufferAllocator<OTL::MergeTable::Group,30ul>>::allocate_at_least[abi:fn200100]<TInlineBufferAllocator<OTL::MergeTable::Group,30ul>>(uint64_t a1, unint64_t a2)
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

uint64_t std::__split_buffer<std::pair<double,CFRange>,TInlineBufferAllocator<std::pair<double,CFRange>,30ul> &>::~__split_buffer(uint64_t a1)
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
    v6 = v4 > v3;
    v5 = (v4 + 720);
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

void __CTFontDrawGlyphsWithAdvancesInternal_block_invoke(void *a1, uint64_t a2, size_t count, int a4)
{
  v5 = a1[4];
  v6 = (a1[5] + 2 * a2);
  v7 = (a1[6] + 16 * a2);
  if (a4)
  {
    CGContextGetShouldDrawBitmapRuns();
    CGContextSetShouldDrawBitmapRuns();
    CGContextShowGlyphsWithAdvances(v5, v6, v7, count);

    CGContextSetShouldDrawBitmapRuns();
  }

  else
  {
    v8 = a1[4];

    CGContextShowGlyphsWithAdvances(v8, v6, v7, count);
  }
}

void TCFRef<__CTFont const*>::Retain(atomic_ullong *a1, id a2)
{
  if (atomic_load_explicit(a1, memory_order_acquire) != a2)
  {
    v4 = v2;
    v3 = atomic_exchange(a1, a2);
  }
}

id ___Z25VariableSizeTextStylesSetv_block_invoke()
{
  result = [MEMORY[0x1E695DFD8] setWithObjects:{@"UICTFontTextStylePreferredSizeRegular", @"UICTFontTextStylePreferredSizeBold", 0}];
  qword_1ED5674F8 = result;
  return result;
}

void addPosingWithWeightAndSlant(TDescriptorSource *a1, unsigned int a2, int a3, int a4, __CFString *a5, const void *a6, atomic_ullong *a7, const void *a8, const void *a9)
{
  v16 = TDescriptorSource::UIFontNameForUIType(a1);
  v17 = 0xAAAAAAAAAAAAAAAALL;
  makeStyleName(&v17, a2, a3, 0);
  addNames(a5, atomic_load_explicit(&v17, memory_order_acquire), v16, a7);
  addMetrics(a2, a3, a4, a8, a9, a7);
  if (a6)
  {
    CFDictionaryAddValue(atomic_load_explicit(a7, memory_order_acquire), @"NSCTFontUIFontDesignTrait", a6);
  }
}

unint64_t CTFontDescriptorCreateWithTextStyleAndAttributes(__CFString *a1, __CFString *a2, const __CFDictionary *a3)
{
  TDescriptorSource::TDescriptorSource(&v8);
  TDescriptorSource::CreateDescriptorForTextStyle(a1, a2, 0, a3, &v9);
  v6 = atomic_exchange(&v9, 0);

  return v6;
}

uint64_t TDescriptorSource::MapTextStyle(uint64_t this, const __CFString *a2)
{
  if (this)
  {
    v2 = this;
    if (qword_1ED5674B0 != -1)
    {
      dispatch_once(&qword_1ED5674B0, &__block_literal_global_682);
    }

    this = [objc_msgSend(qword_1ED5674A8 objectForKeyedSubscript:{v2), "unsignedIntValue"}];
    if (this > 0x144)
    {
      return 2;
    }
  }

  return this;
}

void TDescriptorSource::CreateDescriptorForTextStyle(__CFString *a1@<X1>, __CFString *a2@<X2>, unint64_t a3@<X3>, const __CFDictionary *a4@<X4>, void *a5@<X8>)
{
  explicit = a1;
  v37[4] = *MEMORY[0x1E69E9840];
  v11 = TDescriptorSource::MapTextStyle(a1, a1);
  if (!explicit)
  {
    explicit = @"CTFontRegularUsage";
  }

  v34 = 0;
  v35 = 0xAAAAAAAAFFFFFFFFLL;
  value = 0;
  v33 = 0.0;
  if (SetDescriptorInfoForUIType(&value, v11) && (FontNameForTextStyle = value) != 0)
  {
    ContentSizeCategoryIndex = CTFontDescriptorGetContentSizeCategoryIndex(a2);
    if (a4)
    {
      v14 = CFDictionaryGetValue(a4, @"NSCTFontTextStylePlatformAttribute");
      if (v14)
      {
        LODWORD(valuePtr) = -1431655766;
        CFNumberGetValue(v14, kCFNumberIntType, &valuePtr);
        v15 = valuePtr;
      }

      else
      {
        v15 = 0xFFFFFFFFLL;
      }

      v16 = CFDictionaryGetValue(a4, @"NSCTFontTraitsAttribute");
      if (v16)
      {
        v17 = v16;
        if (CFDictionaryGetCount(v16) == 1 && (GetSymbolicTraitsFromTraits(v17) & 0x40) != 0)
        {
          FontNameForTextStyle = TDescriptorSource::FindFontNameForTextStyle(explicit, v17, 0, 0, 0, v18);
        }
      }
    }

    else
    {
      v15 = 0xFFFFFFFFLL;
    }

    v19 = TDescriptorSource::MapTextStyleSizeCategory(FontNameForTextStyle, ContentSizeCategoryIndex, v15, 0, 0, 0, 0);
    valuePtr = 0;
    if (TDescriptorSource::IsVariableSizeTextStyleName(explicit, v20))
    {
      TDescriptorSource::CreateVariableSizeTextStyle(explicit, a4, &Mutable);

      explicit = atomic_load_explicit(&valuePtr, memory_order_acquire);
    }

    if (a3 | a4)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      v21 = atomic_load_explicit(&Mutable, memory_order_acquire);
      CFDictionaryAddValue(v21, @"NSFontNameAttribute", value);
      v22 = v33;
      if (v19 != 0.0)
      {
        v22 = v19;
      }

      CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSFontSizeAttribute", [MEMORY[0x1E696AD98] numberWithDouble:v22]);
      if (a3)
      {
        CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"CTFontDescriptorLanguageAttribute", a3);
      }

      if (v11)
      {
        CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontUIUsageAttribute", explicit);
        CFDictionaryAddValue(atomic_load_explicit(&Mutable, memory_order_acquire), @"NSCTFontSizeCategoryAttribute", [MEMORY[0x1E696AD98] numberWithUnsignedInt:ContentSizeCategoryIndex]);
        if (a4)
        {
          TCFMutableDictionary::SetPairs(&Mutable, a4);
        }
      }

      v29 = atomic_load_explicit(&Mutable, memory_order_acquire);
      if (v11 <= 1)
      {
        v23 = 20;
      }

      else
      {
        v23 = 1028;
      }

      v28 = v23;
      TCFBase_NEW<CTFontDescriptor,__CFDictionary const*&,unsigned int &>(&v29, &v28, a5);
    }

    else
    {
      v37[0] = value;
      v36[0] = @"NSFontNameAttribute";
      v36[1] = @"NSFontSizeAttribute";
      v37[1] = [MEMORY[0x1E696AD98] numberWithDouble:v19];
      v37[2] = explicit;
      v36[2] = @"NSCTFontUIUsageAttribute";
      v36[3] = @"NSCTFontSizeCategoryAttribute";
      v37[3] = [MEMORY[0x1E696AD98] numberWithUnsignedInt:ContentSizeCategoryIndex];
      v24 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:4];
      v25 = TCFBase<TDescriptor>::Allocate();
      v26 = v25;
      if (v25)
      {
        if (v11 <= 1)
        {
          v27 = 20;
        }

        else
        {
          v27 = 1028;
        }

        v25[2] = 0;
        v25[3] = TDescriptor::Hash;
        v25[4] = 0;
        v25[5] = v25 + 6;
        TDescriptor::TDescriptor((v25 + 6), v24, v27);
      }

      *a5 = v26;
    }
  }

  else
  {
    *a5 = 0;
  }
}

uint64_t TDescriptorSource::IsVariableSizeTextStyleName(TDescriptorSource *this, const __CFString *a2)
{
  if (qword_1ED567500 != -1)
  {
    dispatch_once(&qword_1ED567500, &__block_literal_global_2827);
  }

  v3 = qword_1ED5674F8;

  return [v3 containsObject:this];
}

uint64_t CTFontDescriptorGetContentSizeCategoryIndex(__CFString *cf)
{
  if (!cf || @"UICTContentSizeCategoryL" == cf || @"UICTContentSizeCategoryL" && CFEqual(cf, @"UICTContentSizeCategoryL"))
  {
    return 3;
  }

  v2 = CFGetTypeID(cf);
  if (v2 == CFNumberGetTypeID())
  {
    valuePtr = -1431655766;
    CFNumberGetValue(cf, kCFNumberIntType, &valuePtr);
    return valuePtr;
  }

  v4 = [&unk_1EF275C78 objectForKeyedSubscript:cf];
  if (!v4)
  {
    return 3;
  }

  return [v4 unsignedIntValue];
}

double TDescriptorSource::MapTextStyleSizeCategory(TDescriptorSource *a1, unsigned int a2, uint64_t *a3, double *a4, double *a5, double *a6, const __CFString *a7)
{
  v7 = 0.0;
  if (a1)
  {
    v12 = a3;
    v19.isa = 0xAAAAAAAAAAAAAAAALL;
    if (TDescriptorSource::StashIndexForFontName(a1, &v19, a3))
    {
      memcpy(__dst, &__const__ZN17TDescriptorSource24MapTextStyleSizeCategoryEPK10__CFStringj23CTFontTextStylePlatformPdS4_S4_S2__overrideSpec, sizeof(__dst));
      __dst[5] = 3;
      TextStyle = FindTextStyle(v19.isa, __dst, v12);
      if (TextStyle)
      {
        v15 = TextStyle;
        if (a4)
        {
          *a4 = GetWeightForLocalTrait(*(TextStyle + 5));
        }

        v16 = v15 + 24;
        if (a5)
        {
          *a5 = *(v16 + 24 * a2 + 8) * 0.5;
        }

        if (a6)
        {
          *a6 = LanguageAwareLineSpacingOverrideRatio(v15, a7);
        }

        return *(v16 + 24 * a2) * 0.5;
      }
    }
  }

  return v7;
}

void *TCFBase<TDescriptor>::ClassHash(void *result)
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

const __CFDictionary *GetSymbolicTraitsFromTraits(const __CFDictionary *result)
{
  if (result)
  {
    result = CFDictionaryGetValue(result, @"NSCTFontSymbolicTrait");
    if (result)
    {
      valuePtr = -1431655766;
      CFNumberGetValue(result, kCFNumberIntType, &valuePtr);
      return valuePtr;
    }
  }

  return result;
}

uint64_t IndexesBracketing<double const*,double>(double *a1, double *a2, double a3, double a4)
{
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
      while (1)
      {
        v8 = *(v7 - 1);
        if (vabdd_f64(a3, v8) < a4)
        {
          break;
        }

        if (vabdd_f64(a3, *v7) < a4)
        {
          v4 = v5;
          return v4 | (v5 << 16);
        }

        if (v8 >= a3 || *v7 <= a3)
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

void TCFMutableDictionary::SetPairs(atomic_ullong *this, CFDictionaryRef theDict)
{
  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (theDict)
  {
    CFDictionaryApplyFunction(theDict, SetValuesToDictionaryFromDictionary(__CFDictionary *,__CFDictionary const*)::$_0::__invoke, explicit);
  }
}

double LanguageAwareLineSpacingOverrideRatio(uint64_t a1, const __CFString *a2)
{
  if (qword_1ED567508 != -1)
  {
  }

  ExuberatedGroupForLanguage = ExuberatedGroupForTallPseudolanguageIfEnabled();
  if (a2)
  {
    ExuberatedGroupForLanguage = GetExuberatedGroupForLanguage(a2, 0);
    if (!ExuberatedGroupForLanguage)
    {
      return 0.0;
    }
  }

  else if (!ExuberatedGroupForLanguage)
  {
    ExuberatedGroupForLanguage = _ExuberatedGroupForPreferredLanguages(0, 0);
    if (!ExuberatedGroupForLanguage)
    {
      return 0.0;
    }
  }

  if (!dword_1ED567464)
  {
    v6 = *(a1 + 8 * ExuberatedGroupForLanguage + 296);
    if (v6 != 0.0)
    {
      return v6 / *(a1 + 104);
    }
  }

  return GetLanguageAwareAdjustRatio();
}

uint64_t ExuberatedGroupForTallPseudolanguageIfEnabled(void)
{
  if (qword_1ED567BA8 != -1)
  {
    dispatch_once_f(&qword_1ED567BA8, 0, ExuberatedGroupForTallPseudolanguageIfEnabled(void)::$_0::__invoke);
  }

  return dword_1ED567B6C;
}

void *LanguageAwareLineSpacingOverrideRatio(anonymous namespace::THIUsageSpec const*,__CFString const*)::$_0::__invoke()
{
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (result)
  {
    result = [result integerValue];
    dword_1ED567464 = result == 0;
  }

  return result;
}

void SetValuesToDictionaryFromDictionary(__CFDictionary *,__CFDictionary const*)::$_0::__invoke(void *key, void *value, CFMutableDictionaryRef theDict)
{
  if (key)
  {
    if (value)
    {
      CFDictionarySetValue(theDict, key, value);
    }
  }
}

void CopyPreferredLanguageCode(void *a1@<X8>)
{
  v6 = 0xAAAAAAAAAAAAAAAALL;
  CopyPreferredLanguage(&v6);
  ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(*MEMORY[0x1E695E480], atomic_load_explicit(&v6, memory_order_acquire));
  v3 = ComponentsFromLocaleIdentifier;
  if (ComponentsFromLocaleIdentifier && (Value = CFDictionaryGetValue(ComponentsFromLocaleIdentifier, *MEMORY[0x1E695E6F0])) != 0)
  {
    v5 = Value;
  }

  else
  {
    v5 = atomic_exchange(&v6, 0);
  }

  *a1 = v5;
}

uint64_t OTL::Coverage::SearchFmt2Binary(OTL::Coverage *this, unsigned int a2)
{
  v2 = *(this + 1);
  v3 = (*this + 4);
  v4 = *(*this + 2);
  LODWORD(v5) = __rev16(v4);
  v6 = &v3[3 * v5];
  v7 = v6 < v3 || v6 > v2;
  if (v7)
  {
    if (*this + 10 > v2)
    {
      LODWORD(v5) = 0;
    }

    else
    {
      v5 = (v2 - v3) / 6;
    }

    v4 = bswap32(v5) >> 16;
  }

  if (!v4)
  {
    return 0;
  }

  v8 = *v3;
  if (a2 < bswap32(v8) >> 16)
  {
    return 0;
  }

  v9 = __clz(v5) ^ 0x1F;
  v10 = &v3[3 * (-1 << v9) + 3 * v5];
  if (bswap32(*v10) >> 16 <= a2)
  {
    v8 = *v10;
    v3 = v10;
  }

  v11 = (6 << v9);
  if (v11 >= 7)
  {
    do
    {
      if (a2 >= bswap32(*(v3 + (v11 >> 1))) >> 16)
      {
        v3 = (v3 + (v11 >> 1));
      }

      v7 = v11 > 0xD;
      v11 >>= 1;
    }

    while (v7);
    v8 = *v3;
  }

  v12 = bswap32(v8) >> 16;
  if (v12 <= a2 && a2 <= bswap32(v3[1]) >> 16)
  {
    return a2 - v12 + (bswap32(v3[2]) >> 16) + 1;
  }

  else
  {
    return 0;
  }
}

unsigned __int16 *PairSet::ValuePair(PairSet *this, int a2, __int32 a3, __int32 a4, unsigned __int16 *a5, int8x8_t a6)
{
  if (*this)
  {
    v6 = this + 4 > a5;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    return 0;
  }

  v7 = (this + 2);
  if (a2 < bswap32(*(this + 1)) >> 16)
  {
    return 0;
  }

  v10 = __rev16(*this);
  v11 = __clz(v10);
  v12 = 1 << (v11 ^ 0x1F);
  v13 = v10 - v12;
  a6.i32[0] = a3;
  v14 = vcnt_s8(a6);
  v14.i16[0] = vaddlv_u8(v14);
  v15 = v14.i32[0];
  v14.i32[0] = a4;
  v16 = vcnt_s8(v14);
  v16.i16[0] = vaddlv_u8(v16);
  v17 = v15 + v16.i32[0] + 1;
  v18 = &v7[v13 * v17];
  if (v18 + 1 <= a5 && a2 >= bswap32(*v18) >> 16)
  {
    v7 = v18;
  }

  if (v11 != 31)
  {
    do
    {
      v19 = &v7[v17 * (v12 >> 1)];
      v20 = v19 < this || v19 + 1 > a5;
      if (!v20 && a2 >= bswap32(*v19) >> 16)
      {
        v7 += v17 * (v12 >> 1);
      }

      v6 = v12 > 3;
      v12 >>= 1;
    }

    while (v6);
  }

  v8 = 0;
  if (v7 >= this && v7 + 1 <= a5)
  {
    if (a2 == bswap32(*v7) >> 16)
    {
      return v7 + 1;
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

unsigned __int16 *PairPosFormat1::NthPairSet(PairPosFormat1 *this, unsigned int a2, unint64_t a3)
{
  if (a2 >= bswap32(*(this + 4)) >> 16)
  {
    return 0;
  }

  if (!*(this + a2 + 5))
  {
    return 0;
  }

  v3 = (this + __rev16(*(this + a2 + 5)));
  v4 = v3 + 1;
  if ((v3 + 1) > a3)
  {
    return 0;
  }

  v6 = bswap32(*v3) >> 16;
  v7 = &v4[v6];
  v9 = v7 >= v4 && v7 <= a3;
  v10 = (a3 - v4) >> 1;
  if ((v3 + 2) > a3)
  {
    v10 = 0;
  }

  if (v9 || v10 == v6)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t TDescriptorSource::IsVariableSizeTextStyleInstance(TDescriptorSource *this, const __CFString *a2, const __CFString **a3, const __CFString **a4)
{
  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v15 = 0;
  if (this)
  {
    v7 = CFGetTypeID(this);
    if (v7 == CFStringGetTypeID())
    {
      v8 = [(TDescriptorSource *)this length];
      if (qword_1ED567500 != -1)
      {
        dispatch_once(&qword_1ED567500, &__block_literal_global_2827);
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = ___ZN17TDescriptorSource31IsVariableSizeTextStyleInstanceEPK10__CFStringPS2_S3__block_invoke;
      v11[3] = &unk_1E6E38FB8;
      v11[6] = v8;
      v11[7] = a3;
      v11[8] = a2;
      v11[4] = this;
      v11[5] = &v12;
      [qword_1ED5674F8 enumerateObjectsUsingBlock:v11];
    }
  }

  v9 = *(v13 + 24);
  _Block_object_dispose(&v12, 8);
  return v9;
}

uint64_t ___ZN17TDescriptorSource31IsVariableSizeTextStyleInstanceEPK10__CFStringPS2_S3__block_invoke(uint64_t a1, void *a2, _BYTE *a3)
{
  v6 = [a2 length];
  v7 = v6 + 1;
  if (*(a1 + 48) > (v6 + 1) && (v8 = v6, [*(a1 + 32) hasPrefix:a2]) && objc_msgSend(*(a1 + 32), "characterAtIndex:", v8) == 45)
  {
    result = [*(a1 + 32) substringFromIndex:v7];
    if (!result)
    {
      return result;
    }
  }

  else
  {
    result = [*(a1 + 32) isEqualToString:a2];
    if ((result & 1) == 0)
    {
      return result;
    }

    result = @"12";
  }

  if (*(a1 + 56))
  {
    result = CFRetain(result);
    **(a1 + 56) = result;
  }

  if (*(a1 + 64))
  {
    result = CFRetain(a2);
    **(a1 + 64) = result;
  }

  *a3 = 1;
  *(*(*(a1 + 40) + 8) + 24) = 1;
  return result;
}

CFStringRef CTFontCopyPostScriptName(CTFontRef font)
{
  if (!font)
  {
    return 0;
  }

  (*(**(*(font + 5) + 408) + 72))(&v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

void TTenuousComponentFont::CopyName(atomic_ullong *this@<X0>, __CFString *cf1@<X1>, const __CFDictionary **a3@<X8>)
{
  if (@"CTFontPostScriptName" == cf1 || cf1 && @"CTFontPostScriptName" && CFEqual(cf1, @"CTFontPostScriptName"))
  {
    explicit = atomic_load_explicit(this + 12, memory_order_acquire);
LABEL_6:
    *a3 = explicit;
    return;
  }

  if (@"CTFontSyntheticFamilyName" == cf1)
  {
    v7 = 1;
    goto LABEL_16;
  }

  v7 = 0;
  if (cf1 && @"CTFontSyntheticFamilyName")
  {
    v7 = CFEqual(cf1, @"CTFontSyntheticFamilyName") != 0;
  }

  if (v7 || (this[89] & 0x8000) != 0)
  {
LABEL_16:
    if (@"CTFontFullName" == cf1 || cf1 && @"CTFontFullName" && CFEqual(cf1, @"CTFontFullName") || @"CTFontMarketingName" == cf1)
    {
      v9 = 0;
    }

    else
    {
      v9 = 1;
      if (cf1 && @"CTFontMarketingName")
      {
        v9 = CFEqual(cf1, @"CTFontMarketingName") == 0;
        if (!v7)
        {
LABEL_24:
          v8 = 0;
          goto LABEL_25;
        }

LABEL_28:
        v8 = 1;
        v10 = @"familyName";
        goto LABEL_29;
      }
    }

    if (!v7)
    {
      goto LABEL_24;
    }

    goto LABEL_28;
  }

  v8 = 0;
  v9 = 0;
LABEL_25:
  v10 = cf1;
LABEL_29:
  if (v10 == @"CTFontSyntheticName" || v10 && @"CTFontSyntheticName" && CFEqual(v10, @"CTFontSyntheticName"))
  {
    if ((*(*this + 864))(this))
    {
      explicit = TComponentFont::GetSyntheticName(this);
      if (explicit)
      {
        goto LABEL_6;
      }
    }

    goto LABEL_59;
  }

  if (!v9)
  {
    goto LABEL_61;
  }

  if ((v8 & 1) != 0 || @"CTFontFamilyName" == cf1 || cf1 && @"CTFontFamilyName" && CFEqual(cf1, @"CTFontFamilyName"))
  {
    if ((*(*this + 848))(this))
    {
      v11 = atomic_load_explicit(this + 90, memory_order_acquire);
      if (v11)
      {
        Value = CFDictionaryGetValue(v11, @"Components");
        if (Value)
        {
          v13 = Value;
          Count = CFArrayGetCount(Value);
          if (Count)
          {
            v15 = Count;
            v16 = 0;
            while (1)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v13, v16);
              v18 = CFDictionaryGetValue(ValueAtIndex, @"name");
              v19 = atomic_load_explicit(this + 12, memory_order_acquire);
              v20 = v19;
              if (v19 == v18)
              {
                break;
              }

              if (v18 && v19)
              {
                v21 = CFEqual(v18, v19);

                if (v21)
                {
                  goto LABEL_53;
                }
              }

              else
              {
              }

LABEL_56:
              if (v15 == ++v16)
              {
                goto LABEL_57;
              }
            }

LABEL_53:
            explicit = CFDictionaryGetValue(ValueAtIndex, @"familyName");
            if (explicit)
            {
              goto LABEL_6;
            }

            goto LABEL_56;
          }
        }
      }
    }

LABEL_57:
    v22 = atomic_load_explicit(this + 90, memory_order_acquire);
    if (v22)
    {
      explicit = CFDictionaryGetValue(v22, @"familyName");
      if (explicit)
      {
        goto LABEL_6;
      }
    }
  }

LABEL_59:
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  TSplicedFontDict::CopyName(this + 90, v10, a3);
  if (atomic_load_explicit(a3, memory_order_acquire))
  {
    return;
  }

LABEL_61:
  if ((*(*this + 904))(this))
  {

    TBaseFont::CopyName(this, v10, a3);
  }

  else
  {
    *a3 = 0;
  }
}

double TDescriptorSource::GetTextStyleSize(TDescriptorSource *a1, __CFString *a2, uint64_t *a3, const __CFString **a4, double *a5, int a6, const __CFString *a7)
{
  v42 = 0;
  v43 = 0;
  *&v33 = &v43;
  *(&v33 + 1) = 0;
  v40 = COERCE_DOUBLE(&v42);
  v41 = 0;
  IsVariableSizeTextStyleInstance = TDescriptorSource::IsVariableSizeTextStyleInstance(a1, (&v33 + 8), &v41, a4);

  if (IsVariableSizeTextStyleInstance)
  {
    explicit = atomic_load_explicit(&v43, memory_order_acquire);
    if (explicit)
    {
      if (qword_1ED5674B0 != -1)
      {
        dispatch_once(&qword_1ED5674B0, &__block_literal_global_682);
      }

      v16 = [objc_msgSend(qword_1ED5674A8 objectForKeyedSubscript:{explicit, v33), "unsignedIntValue"}];
      v17 = 0.0;
      if (v16 > 0x144)
      {
        goto LABEL_35;
      }
    }

    else
    {
      v16 = 0;
    }

    if (TDescriptorSource::UIFontNameForUIType(v16))
    {
      ContentSizeCategoryIndex = CTFontDescriptorGetContentSizeCategoryIndex(a2);
      [atomic_load_explicit(&v42 memory:"doubleValue" order:?acquire)];
      if (v20 == 0.0)
      {
        v20 = 12.0;
      }

      v17 = dbl_18475D240[ContentSizeCategoryIndex] * v20;
      if (!a5)
      {
        goto LABEL_35;
      }

      v21 = v17 * 1.2;
LABEL_32:
      *a5 = v21;
      goto LABEL_35;
    }

LABEL_28:
    v17 = 0.0;
    goto LABEL_35;
  }

  if (a1)
  {
    if (qword_1ED5674B0 != -1)
    {
      dispatch_once(&qword_1ED5674B0, &__block_literal_global_682);
    }

    v18 = [objc_msgSend(qword_1ED5674A8 objectForKeyedSubscript:{a1, v33), "unsignedIntValue"}];
    v17 = 0.0;
    if (v18 > 0x144)
    {
      goto LABEL_35;
    }
  }

  else
  {
    v18 = 0;
  }

  v22 = TDescriptorSource::UIFontNameForUIType(v18);
  if (!v22)
  {
    goto LABEL_28;
  }

  v23 = v22;
  v24 = CTFontDescriptorGetContentSizeCategoryIndex(a2);
  v40 = NAN;
  v17 = TDescriptorSource::MapTextStyleSizeCategory(v23, v24, a3, a4, a5, &v40, a7);
  if (!a5 || !a6)
  {
    goto LABEL_35;
  }

  v25 = v40;
  if (v40 <= 0.0 || v40 > 1.0)
  {
    if (v40 == 0.0)
    {
      v25 = 1.0;
    }

    v21 = v25 * *a5;
    goto LABEL_32;
  }

  v39 = 0xAAAAAAAAAAAAAAAALL;
  TDescriptorSource::TDescriptorSource(&v33);
  TDescriptorSource::CreateDescriptorForTextStyle(a1, a2, a7, 0, &v39);
  v26 = atomic_load_explicit(&v39, memory_order_acquire);
  v27 = v26[5];

  if ((*(v27 + 16) & 0x80000000) == 0)
  {
    TDescriptor::InitBaseFont(v27, 0, 0.0);
  }

  v28 = atomic_load_explicit((v27 + 32), memory_order_acquire);
  v35 = xmmword_18475D2C0;
  v36 = unk_18475D2D0;
  v37 = xmmword_18475D2E0;
  v38 = unk_18475D2F0;
  v33 = xmmword_18475D2A0;
  v34 = unk_18475D2B0;
  if (v28[62])
  {
    inited = v28 + 62;
  }

  else
  {
    inited = TBaseFont::InitFontMetrics(v28, 0.0);
  }

  StrikeMetrics::StrikeMetrics(&v33, inited);
  v30 = v33;
  v31 = (*(*v28 + 648))(v28, v17, *(&v34 + 1));
  *a5 = v17 * (v31 + *(&v33 + 1) + *&v34) / v30;

LABEL_35:
  return v17;
}

uint64_t std::vector<void const*,TInlineBufferAllocator<void const*,30ul>>::__vallocate[abi:fn200100](void *a1, unint64_t a2)
{
  if (a2 >> 61)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v3 = a1 + 33;
  result = a1[33];
  v5 = result + 8 * a2;
  if (v5 > v3)
  {
    operator new();
  }

  *v3 = v5;
  *a1 = result;
  a1[1] = result;
  a1[2] = result + 8 * a2;
  return result;
}

const __CFString *FourCharCodeFromString(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    Length = CFStringGetLength(result);
    if ((Length - 5) >= 0xFFFFFFFFFFFFFFFCLL)
    {
      v4.length = Length;
      strcpy(buffer, "    ");
      v4.location = 0;
      CFStringGetBytes(v1, v4, 0x600u, 0, 0, buffer, 4, 0);
      return ((buffer[1] << 16) | (buffer[0] << 24) | (buffer[2] << 8) | buffer[3]);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id ___Z28TextStyleForUITypeDictionaryv_block_invoke()
{
  v2[274] = *MEMORY[0x1E69E9840];
  v1[0] = &unk_1EF278280;
  v1[1] = &unk_1EF278298;
  v2[0] = @"CTFontRegularUsage";
  v2[1] = @"CTFontEmphasizedUsage";
  v1[2] = &unk_1EF278370;
  v1[3] = &unk_1EF278388;
  v2[2] = @"CTFontObliqueUsage";
  v2[3] = @"CTFontEmphasizedObliqueUsage";
  v1[4] = &unk_1EF279300;
  v1[5] = &unk_1EF279318;
  v2[4] = @"UICTFontTextStyleCaption3";
  v2[5] = @"UICTFontTextStyleEmphasizedCaption3";
  v1[6] = &unk_1EF2782B0;
  v1[7] = &unk_1EF2782C8;
  v2[6] = @"UICTFontTextStyleHeadline";
  v2[7] = @"UICTFontTextStyleShortHeadline";
  v1[8] = &unk_1EF2783A0;
  v1[9] = &unk_1EF2783B8;
  v2[8] = @"UICTFontTextStyleHeadline2";
  v2[9] = @"UICTFontTextStyleItalicHeadline2";
  v1[10] = &unk_1EF2783D0;
  v1[11] = &unk_1EF2783E8;
  v2[10] = @"UICTFontTextStyleShortHeadline2";
  v2[11] = @"UICTFontTextStyleShortItalicHeadline2";
  v1[12] = &unk_1EF278400;
  v1[13] = &unk_1EF278418;
  v2[12] = @"UICTFontTextStyleEmphasizedBody";
  v2[13] = @"UICTFontTextStyleBody";
  v1[14] = &unk_1EF278430;
  v1[15] = &unk_1EF278448;
  v2[14] = @"UICTFontTextStyleEmphasizedItalicBody";
  v2[15] = @"UICTFontTextStyleItalicBody";
  v1[16] = &unk_1EF278460;
  v1[17] = &unk_1EF278478;
  v2[16] = @"UICTFontTextStyleShortEmphasizedBody";
  v2[17] = @"UICTFontTextStyleShortBody";
  v1[18] = &unk_1EF278490;
  v1[19] = &unk_1EF2784A8;
  v2[18] = @"UICTFontTextStyleShortEmphasizedItalicBody";
  v2[19] = @"UICTFontTextStyleShortItalicBody";
  v1[20] = &unk_1EF2782E0;
  v1[21] = &unk_1EF2782F8;
  v2[20] = @"UICTFontTextStyleEmphasizedSubhead";
  v2[21] = @"UICTFontTextStyleSubhead";
  v1[22] = &unk_1EF278310;
  v1[23] = &unk_1EF278328;
  v2[22] = @"UICTFontTextStyleItalicSubhead";
  v2[23] = @"UICTFontTextStyleShortEmphasizedSubhead";
  v1[24] = &unk_1EF278340;
  v1[25] = &unk_1EF278358;
  v2[24] = @"UICTFontTextStyleShortSubhead";
  v2[25] = @"UICTFontTextStyleShortItalicSubhead";
  v1[26] = &unk_1EF2784C0;
  v1[27] = &unk_1EF2784D8;
  v2[26] = @"UICTFontTextStyleEmphasizedSubhead2";
  v2[27] = @"UICTFontTextStyleSubhead2";
  v1[28] = &unk_1EF2784F0;
  v1[29] = &unk_1EF278508;
  v2[28] = @"UICTFontTextStyleItalicSubhead2";
  v2[29] = @"UICTFontTextStyleShortEmphasizedSubhead2";
  v1[30] = &unk_1EF278520;
  v1[31] = &unk_1EF278538;
  v2[30] = @"UICTFontTextStyleShortSubhead2";
  v2[31] = @"UICTFontTextStyleShortItalicSubhead2";
  v1[32] = &unk_1EF278550;
  v1[33] = &unk_1EF278568;
  v2[32] = @"UICTFontTextStyleEmphasizedFootnote";
  v2[33] = @"UICTFontTextStyleFootnote";
  v1[34] = &unk_1EF278580;
  v1[35] = &unk_1EF278598;
  v2[34] = @"UICTFontTextStyleItalicFootnote";
  v2[35] = @"UICTFontTextStyleShortEmphasizedFootnote";
  v1[36] = &unk_1EF2785B0;
  v1[37] = &unk_1EF2785C8;
  v2[36] = @"UICTFontTextStyleShortFootnote";
  v2[37] = @"UICTFontTextStyleShortItalicFootnote";
  v1[38] = &unk_1EF2785E0;
  v1[39] = &unk_1EF2785F8;
  v2[38] = @"UICTFontTextStyleEmphasizedCaption1";
  v2[39] = @"UICTFontTextStyleCaption1";
  v1[40] = &unk_1EF278610;
  v1[41] = &unk_1EF278628;
  v2[40] = @"UICTFontTextStyleItalicCaption1";
  v2[41] = @"UICTFontTextStyleShortEmphasizedCaption1";
  v1[42] = &unk_1EF278640;
  v1[43] = &unk_1EF278658;
  v2[42] = @"UICTFontTextStyleShortCaption1";
  v2[43] = @"UICTFontTextStyleShortItalicCaption1";
  v1[44] = &unk_1EF278670;
  v1[45] = &unk_1EF278688;
  v2[44] = @"UICTFontTextStyleEmphasizedCaption2";
  v2[45] = @"UICTFontTextStyleCaption2";
  v1[46] = &unk_1EF2786A0;
  v1[47] = &unk_1EF2786B8;
  v2[46] = @"UICTFontTextStyleItalicCaption2";
  v2[47] = @"UICTFontTextStyleTallEmphasizedBody";
  v1[48] = &unk_1EF2786D0;
  v1[49] = &unk_1EF2786E8;
  v2[48] = @"UICTFontTextStyleTallBody";
  v2[49] = @"UICTFontTextStyleTallEmphasizedItalicBody";
  v1[50] = &unk_1EF278700;
  v1[51] = &unk_1EF278718;
  v2[50] = @"UICTFontTextStyleTallItalicBody";
  v2[51] = @"UICTFontTextStyleItalicHeadline";
  v1[52] = &unk_1EF278730;
  v1[53] = &unk_1EF278748;
  v2[52] = @"UICTFontTextStyleShortItalicHeadline";
  v2[53] = @"CTFontThinUsage";
  v1[54] = &unk_1EF278760;
  v1[55] = &unk_1EF278778;
  v2[54] = @"CTFontLightUsage";
  v2[55] = @"CTFontUltraLightUsage";
  v1[56] = &unk_1EF278790;
  v1[57] = &unk_1EF2787A8;
  v2[56] = @"CTFontMediumUsage";
  v2[57] = @"CTFontDemiUsage";
  v1[58] = &unk_1EF2787C0;
  v1[59] = &unk_1EF2787D8;
  v2[58] = @"CTFontBoldUsage";
  v2[59] = @"CTFontHeavyUsage";
  v1[60] = &unk_1EF2787F0;
  v1[61] = &unk_1EF278808;
  v2[60] = @"CTFontBlackUsage";
  v2[61] = @"UICTFontTextStyleCallout";
  v1[62] = &unk_1EF278820;
  v1[63] = &unk_1EF278838;
  v2[62] = @"UICTFontTextStyleItalicCallout";
  v2[63] = @"UICTFontTextStyleEmphasizedCallout";
  v1[64] = &unk_1EF278850;
  v2[64] = @"UICTFontTextStyleEmphasizedItalicCallout";
  v1[65] = &unk_1EF278868;
  v2[65] = @"UICTFontTextStyleShortCallout";
  v1[66] = &unk_1EF278880;
  v2[66] = @"UICTFontTextStyleShortItalicCallout";
  v1[67] = &unk_1EF278898;
  v2[67] = @"UICTFontTextStyleShortEmphasizedCallout";
  v1[68] = &unk_1EF2788B0;
  v2[68] = @"UICTFontTextStyleShortEmphasizedItalicCallout";
  v1[69] = &unk_1EF2788C8;
  v2[69] = @"UICTFontTextStyleTallCallout";
  v1[70] = &unk_1EF2788E0;
  v2[70] = @"UICTFontTextStyleTallItalicCallout";
  v1[71] = &unk_1EF2788F8;
  v2[71] = @"UICTFontTextStyleTallEmphasizedCallout";
  v1[72] = &unk_1EF278910;
  v2[72] = @"UICTFontTextStyleTallEmphasizedItalicCallout";
  v1[73] = &unk_1EF278928;
  v2[73] = @"UICTFontTextStyleEmphasizedFootnote2";
  v1[74] = &unk_1EF278940;
  v2[74] = @"UICTFontTextStyleFootnote2";
  v1[75] = &unk_1EF278958;
  v2[75] = @"UICTFontTextStyleItalicFootnote2";
  v1[76] = &unk_1EF278970;
  v2[76] = @"UICTFontTextStyleShortEmphasizedFootnote2";
  v1[77] = &unk_1EF278988;
  v2[77] = @"UICTFontTextStyleShortFootnote2";
  v1[78] = &unk_1EF2789A0;
  v2[78] = @"UICTFontTextStyleShortItalicFootnote2";
  v1[79] = &unk_1EF2789B8;
  v2[79] = @"UICTFontTextStyleShortEmphasizedCaption2";
  v1[80] = &unk_1EF2789D0;
  v2[80] = @"UICTFontTextStyleShortCaption2";
  v1[81] = &unk_1EF2789E8;
  v2[81] = @"UICTFontTextStyleShortItalicCaption2";
  v1[82] = &unk_1EF278A00;
  v2[82] = @"CTFontThinItalicUsage";
  v1[83] = &unk_1EF278A18;
  v2[83] = @"CTFontLightItalicUsage";
  v1[84] = &unk_1EF278A30;
  v2[84] = @"CTFontUltraLightItalicUsage";
  v1[85] = &unk_1EF278A48;
  v2[85] = @"CTFontMediumItalicUsage";
  v1[86] = &unk_1EF278A60;
  v2[86] = @"CTFontDemiItalicUsage";
  v1[87] = &unk_1EF278A78;
  v2[87] = @"CTFontBoldItalicUsage";
  v1[88] = &unk_1EF278A90;
  v2[88] = @"CTFontHeavyItalicUsage";
  v1[89] = &unk_1EF278AA8;
  v2[89] = @"CTFontBlackItalicUsage";
  v1[90] = &unk_1EF278AC0;
  v2[90] = @"CTFontTextStyleUltraLight";
  v1[91] = &unk_1EF278AD8;
  v2[91] = @"CTFontTextStyleThin";
  v1[92] = &unk_1EF278AF0;
  v2[92] = @"CTFontSystemUIAlternateRegular";
  v1[93] = &unk_1EF278B08;
  v2[93] = @"CTFontSystemUIAlternateBold";
  v1[94] = &unk_1EF278B20;
  v2[94] = @"CTFontSystemUIAlternateThin";
  v1[95] = &unk_1EF278B38;
  v2[95] = @"CTFontSystemUIAlternateLight";
  v1[96] = &unk_1EF278B50;
  v2[96] = @"CTFontSystemUIAlternateUltraLight";
  v1[97] = &unk_1EF278B68;
  v2[97] = @"CTFontSystemUIAlternateMedium";
  v1[98] = &unk_1EF278B80;
  v2[98] = @"CTFontSystemUIAlternateSemiBold";
  v1[99] = &unk_1EF278B98;
  v2[99] = @"CTFontSystemUIAlternateHeavy";
  v1[100] = &unk_1EF278BB0;
  v2[100] = @"CTFontSystemUIAlternateBlack";
  v1[101] = &unk_1EF278BC8;
  v2[101] = @"CTFontSystemUIAlternateItalic";
  v1[102] = &unk_1EF278BE0;
  v2[102] = @"CTFontSystemUIAlternateBoldItalic";
  v1[103] = &unk_1EF278BF8;
  v2[103] = @"CTFontSystemUIAlternateThinItalic";
  v1[104] = &unk_1EF278C10;
  v2[104] = @"CTFontSystemUIAlternateLightItalic";
  v1[105] = &unk_1EF278C28;
  v2[105] = @"CTFontSystemUIAlternateUltraLightItalic";
  v1[106] = &unk_1EF278C40;
  v2[106] = @"CTFontSystemUIAlternateMediumItalic";
  v1[107] = &unk_1EF278C58;
  v2[107] = @"CTFontSystemUIAlternateSemiBoldItalic";
  v1[108] = &unk_1EF278C70;
  v2[108] = @"CTFontSystemUIAlternateHeavyItalic";
  v1[109] = &unk_1EF278C88;
  v2[109] = @"CTFontSystemUIAlternateBlackItalic";
  v1[110] = &unk_1EF278CA0;
  v2[110] = @"CTFontSystemUIRoundedUltralight";
  v1[111] = &unk_1EF278CB8;
  v2[111] = @"CTFontSystemUIRoundedThin";
  v1[112] = &unk_1EF278CD0;
  v2[112] = @"CTFontSystemUIRoundedLight";
  v1[113] = &unk_1EF278CE8;
  v2[113] = @"CTFontSystemUIRoundedRegular";
  v1[114] = &unk_1EF278D00;
  v2[114] = @"CTFontSystemUIRoundedMedium";
  v1[115] = &unk_1EF278D18;
  v2[115] = @"CTFontSystemUIRoundedSemibold";
  v1[116] = &unk_1EF278D30;
  v2[116] = @"CTFontSystemUIRoundedBold";
  v1[117] = &unk_1EF278D48;
  v2[117] = @"CTFontSystemUIRoundedHeavy";
  v1[118] = &unk_1EF278D60;
  v2[118] = @"CTFontSystemUIRoundedBlack";
  v1[119] = &unk_1EF278D78;
  v2[119] = @"UICTFontTextStyleTitle1";
  v1[120] = &unk_1EF278D90;
  v2[120] = @"UICTFontTextStyleItalicTitle1";
  v1[121] = &unk_1EF278DA8;
  v2[121] = @"UICTFontTextStyleEmphasizedTitle1";
  v1[122] = &unk_1EF278DC0;
  v2[122] = @"UICTFontTextStyleEmphasizedItalicTitle1";
  v1[123] = &unk_1EF278DD8;
  v2[123] = @"UICTFontTextStyleShortTitle1";
  v1[124] = &unk_1EF278DF0;
  v2[124] = @"UICTFontTextStyleShortItalicTitle1";
  v1[125] = &unk_1EF278E08;
  v1[143] = &unk_1EF278FB8;
  v1[145] = &unk_1EF278FE8;
  v1[144] = &unk_1EF278FD0;
  v2[144] = @"UICTFontTextStyleItalicTitle3";
  v2[143] = @"UICTFontTextStyleTitle3";
  v1[142] = &unk_1EF278FA0;
  v2[142] = @"UICTFontTextStyleTallEmphasizedItalicTitle2";
  v1[141] = &unk_1EF278F88;
  v2[141] = @"UICTFontTextStyleTallEmphasizedTitle2";
  v1[140] = &unk_1EF278F70;
  v2[140] = @"UICTFontTextStyleTallItalicTitle2";
  v1[139] = &unk_1EF278F58;
  v2[139] = @"UICTFontTextStyleTallTitle2";
  v1[138] = &unk_1EF278F40;
  v2[138] = @"UICTFontTextStyleShortEmphasizedItalicTitle2";
  v1[137] = &unk_1EF278F28;
  v2[137] = @"UICTFontTextStyleShortEmphasizedTitle2";
  v1[136] = &unk_1EF278F10;
  v2[136] = @"UICTFontTextStyleShortItalicTitle2";
  v1[135] = &unk_1EF278EF8;
  v2[135] = @"UICTFontTextStyleShortTitle2";
  v1[134] = &unk_1EF278EE0;
  v2[134] = @"UICTFontTextStyleEmphasizedItalicTitle2";
  v1[133] = &unk_1EF278EC8;
  v2[133] = @"UICTFontTextStyleEmphasizedTitle2";
  v2[125] = @"UICTFontTextStyleShortEmphasizedTitle1";
  v2[132] = @"UICTFontTextStyleItalicTitle2";
  v1[126] = &unk_1EF278E20;
  v2[131] = @"UICTFontTextStyleTitle2";
  v1[132] = &unk_1EF278EB0;
  v2[130] = @"UICTFontTextStyleTallEmphasizedItalicTitle1";
  v1[131] = &unk_1EF278E98;
  v2[129] = @"UICTFontTextStyleTallEmphasizedTitle1";
  v1[130] = &unk_1EF278E80;
  v2[128] = @"UICTFontTextStyleTallItalicTitle1";
  v1[129] = &unk_1EF278E68;
  v2[127] = @"UICTFontTextStyleTallTitle1";
  v1[128] = &unk_1EF278E50;
  v2[126] = @"UICTFontTextStyleShortEmphasizedItalicTitle1";
  v1[127] = &unk_1EF278E38;
  v2[145] = @"UICTFontTextStyleEmphasizedTitle3";
  v1[146] = &unk_1EF279000;
  v2[146] = @"UICTFontTextStyleEmphasizedItalicTitle3";
  v1[147] = &unk_1EF279018;
  v2[147] = @"UICTFontTextStyleShortTitle3";
  v1[148] = &unk_1EF279030;
  v2[148] = @"UICTFontTextStyleShortItalicTitle3";
  v1[149] = &unk_1EF279048;
  v2[149] = @"UICTFontTextStyleShortEmphasizedTitle3";
  v1[150] = &unk_1EF279060;
  v2[150] = @"UICTFontTextStyleShortEmphasizedItalicTitle3";
  v1[151] = &unk_1EF279078;
  v2[151] = @"UICTFontTextStyleTallTitle3";
  v1[152] = &unk_1EF279090;
  v2[152] = @"UICTFontTextStyleTallItalicTitle3";
  v1[153] = &unk_1EF2790A8;
  v2[153] = @"UICTFontTextStyleTallEmphasizedTitle3";
  v1[154] = &unk_1EF2790C0;
  v2[154] = @"UICTFontTextStyleTallEmphasizedItalicTitle3";
  v1[155] = &unk_1EF2790D8;
  v2[155] = @"UICTFontTextStyleSubtitle3";
  v1[156] = &unk_1EF2790F0;
  v2[156] = @"UICTFontTextStyleSubtitle2";
  v1[157] = &unk_1EF279108;
  v2[157] = @"UICTFontTextStyleSubtitle1";
  v1[158] = &unk_1EF279120;
  v2[158] = @"UICTFontTextStyleSection1";
  v1[159] = &unk_1EF279138;
  v2[159] = @"UICTFontTextStyleSection2";
  v1[160] = &unk_1EF279150;
  v2[160] = @"UICTFontTextStyleSection3";
  v1[161] = &unk_1EF279168;
  v2[161] = @"UICTFontTextStyleTitle4";
  v1[162] = &unk_1EF279180;
  v2[162] = @"UICTFontTextStyleHeadline3";
  v1[163] = &unk_1EF279198;
  v2[163] = @"UICTFontTextStyleItalicSubtitle1";
  v1[164] = &unk_1EF2791B0;
  v2[164] = @"UICTFontTextStyleEmphasizedSubtitle1";
  v1[165] = &unk_1EF2791C8;
  v2[165] = @"UICTFontTextStyleEmphasizedItalicSubtitle1";
  v1[166] = &unk_1EF2791E0;
  v2[166] = @"UICTFontTextStyleTitle0";
  v1[167] = &unk_1EF2791F8;
  v2[167] = @"UICTFontTextStyleEmphasizedTitle0";
  v1[168] = &unk_1EF279210;
  v2[168] = @"UICTFontTextStyleShortTitle0";
  v1[169] = &unk_1EF279228;
  v2[169] = @"UICTFontTextStyleShortEmphasizedTitle0";
  v1[170] = &unk_1EF279240;
  v2[170] = @"UICTFontTextStyleTallTitle0";
  v1[171] = &unk_1EF279258;
  v2[171] = @"UICTFontTextStyleTallEmphasizedTitle0";
  v1[172] = &unk_1EF279270;
  v2[172] = @"UICTFontTextStyleEmphasizedHeadline";
  v1[173] = &unk_1EF279288;
  v2[173] = @"UICTFontTextStyleEmphasizedItalicHeadline";
  v1[174] = &unk_1EF2792A0;
  v2[174] = @"UICTFontTextStyleShortEmphasizedHeadline";
  v1[175] = &unk_1EF2792B8;
  v2[175] = @"UICTFontTextStyleShortEmphasizedItalicHeadline";
  v1[176] = &unk_1EF2792D0;
  v2[176] = @"UICTFontTextStyleTallHeadline";
  v1[177] = &unk_1EF2792E8;
  v2[177] = @"UICTFontTextStyleTallEmphasizedHeadline";
  v1[178] = &unk_1EF279408;
  v2[178] = @"CTFontSystemUISerifRegular";
  v1[179] = &unk_1EF279420;
  v2[179] = @"CTFontSystemUISerifMedium";
  v1[180] = &unk_1EF279438;
  v2[180] = @"CTFontSystemUISerifSemibold";
  v1[181] = &unk_1EF279450;
  v2[181] = @"CTFontSystemUISerifBold";
  v1[182] = &unk_1EF279468;
  v2[182] = @"CTFontSystemUISerifHeavy";
  v1[183] = &unk_1EF279480;
  v2[183] = @"CTFontSystemUISerifBlack";
  v1[184] = &unk_1EF279498;
  v2[184] = @"CTFontSystemUISerifItalic";
  v1[185] = &unk_1EF2794B0;
  v2[185] = @"CTFontSystemUISerifMediumItalic";
  v1[186] = &unk_1EF2794C8;
  v2[186] = @"CTFontSystemUISerifSemiboldItalic";
  v1[187] = &unk_1EF2794E0;
  v2[187] = @"CTFontSystemUISerifBoldItalic";
  v1[188] = &unk_1EF2794F8;
  v2[188] = @"CTFontSystemUISerifHeavyItalic";
  v1[189] = &unk_1EF279510;
  v2[189] = @"CTFontSystemUISerifBlackItalic";
  v1[190] = &unk_1EF279528;
  v2[190] = @"CTFontSystemUIMonospacedLight";
  v1[191] = &unk_1EF279540;
  v2[191] = @"CTFontSystemUIMonospacedRegular";
  v1[192] = &unk_1EF279558;
  v2[192] = @"CTFontSystemUIMonospacedMedium";
  v1[193] = &unk_1EF279570;
  v2[193] = @"CTFontSystemUIMonospacedSemibold";
  v1[194] = &unk_1EF279588;
  v2[194] = @"CTFontSystemUIMonospacedBold";
  v1[195] = &unk_1EF2795A0;
  v2[195] = @"CTFontSystemUIMonospacedHeavy";
  v1[196] = &unk_1EF2795B8;
  v2[196] = @"CTFontSystemUIMonospacedLightItalic";
  v1[197] = &unk_1EF2795D0;
  v2[197] = @"CTFontSystemUIMonospacedRegularItalic";
  v1[198] = &unk_1EF2795E8;
  v2[198] = @"CTFontSystemUIMonospacedMediumItalic";
  v1[199] = &unk_1EF279600;
  v2[199] = @"CTFontSystemUIMonospacedSemiboldItalic";
  v1[200] = &unk_1EF279618;
  v2[200] = @"CTFontSystemUIMonospacedBoldItalic";
  v1[201] = &unk_1EF279630;
  v2[201] = @"CTFontSystemUIMonospacedHeavyItalic";
  v1[202] = &unk_1EF279330;
  v2[202] = @"CTFontSystemUICondensedRegular";
  v1[203] = &unk_1EF279348;
  v2[203] = @"CTFontSystemUICondensedBold";
  v1[204] = &unk_1EF279360;
  v2[204] = @"CTFontSystemUICondensedThin";
  v1[205] = &unk_1EF279378;
  v2[205] = @"CTFontSystemUICondensedLight";
  v1[206] = &unk_1EF279390;
  v2[206] = @"CTFontSystemUICondensedUltraLight";
  v1[207] = &unk_1EF2793A8;
  v2[207] = @"CTFontSystemUICondensedMedium";
  v1[208] = &unk_1EF2793C0;
  v2[208] = @"CTFontSystemUICondensedSemiBold";
  v1[209] = &unk_1EF2793D8;
  v2[209] = @"CTFontSystemUICondensedHeavy";
  v1[210] = &unk_1EF2793F0;
  v2[210] = @"CTFontSystemUICondensedBlack";
  v1[211] = &unk_1EF279648;
  v2[211] = @"UICTFontTextStyleExtraLargeTitle";
  v1[212] = &unk_1EF279660;
  v2[212] = @"UICTFontTextStyleEmphasizedExtraLargeTitle";
  v1[213] = &unk_1EF279678;
  v2[213] = @"UICTFontTextStyleExtraLargeTitle2";
  v1[214] = &unk_1EF279690;
  v2[214] = @"UICTFontTextStyleEmphasizedExtraLargeTitle2";
  v1[215] = &unk_1EF2796A8;
  v2[215] = @"CTFontSystemUICompactRoundedUltralight";
  v1[216] = &unk_1EF2796C0;
  v2[216] = @"CTFontSystemUICompactRoundedThin";
  v1[217] = &unk_1EF2796D8;
  v2[217] = @"CTFontSystemUICompactRoundedLight";
  v1[218] = &unk_1EF2796F0;
  v2[218] = @"CTFontSystemUICompactRoundedRegular";
  v1[219] = &unk_1EF279708;
  v2[219] = @"CTFontSystemUICompactRoundedMedium";
  v1[220] = &unk_1EF279720;
  v2[220] = @"CTFontSystemUICompactRoundedSemibold";
  v1[221] = &unk_1EF279738;
  v2[221] = @"CTFontSystemUICompactRoundedBold";
  v1[222] = &unk_1EF279750;
  v2[222] = @"CTFontSystemUICompactRoundedHeavy";
  v1[223] = &unk_1EF279768;
  v2[223] = @"CTFontSystemUICompactRoundedBlack";
  v1[224] = &unk_1EF279780;
  v2[224] = @"CTFontSystemUICoreRegular";
  v1[225] = &unk_1EF279798;
  v2[225] = @"CTFontSystemUICoreBold";
  v1[226] = &unk_1EF2797B0;
  v2[226] = @"CTFontSystemUICoreThin";
  v1[227] = &unk_1EF2797C8;
  v2[227] = @"CTFontSystemUICoreLight";
  v1[228] = &unk_1EF2797E0;
  v2[228] = @"CTFontSystemUICoreUltraLight";
  v1[229] = &unk_1EF2797F8;
  v2[229] = @"CTFontSystemUICoreMedium";
  v1[230] = &unk_1EF279810;
  v2[230] = @"CTFontSystemUICoreSemiBold";
  v1[231] = &unk_1EF279828;
  v2[231] = @"CTFontSystemUICoreHeavy";
  v1[232] = &unk_1EF279840;
  v2[232] = @"CTFontSystemUICoreBlack";
  v1[233] = &unk_1EF279858;
  v2[233] = @"CTFontSystemUICoreItalic";
  v1[234] = &unk_1EF279870;
  v2[234] = @"CTFontSystemUICoreBoldItalic";
  v1[235] = &unk_1EF279888;
  v2[235] = @"CTFontSystemUICoreThinItalic";
  v1[236] = &unk_1EF2798A0;
  v2[236] = @"CTFontSystemUICoreLightItalic";
  v1[237] = &unk_1EF2798B8;
  v2[237] = @"CTFontSystemUICoreUltraLightItalic";
  v1[238] = &unk_1EF2798D0;
  v2[238] = @"CTFontSystemUICoreMediumItalic";
  v1[239] = &unk_1EF2798E8;
  v2[239] = @"CTFontSystemUICoreSemiBoldItalic";
  v1[240] = &unk_1EF279900;
  v2[240] = @"CTFontSystemUICoreHeavyItalic";
  v1[241] = &unk_1EF279918;
  v2[241] = @"CTFontSystemUICoreBlackItalic";
  v1[242] = &unk_1EF279930;
  v2[242] = @"CTFontSystemUICoreCondensedRegular";
  v1[243] = &unk_1EF279948;
  v2[243] = @"CTFontSystemUICoreCondensedBold";
  v1[244] = &unk_1EF279960;
  v2[244] = @"CTFontSystemUICoreCondensedThin";
  v1[245] = &unk_1EF279978;
  v2[245] = @"CTFontSystemUICoreCondensedLight";
  v1[246] = &unk_1EF279990;
  v2[246] = @"CTFontSystemUICoreCondensedUltraLight";
  v1[247] = &unk_1EF2799A8;
  v2[247] = @"CTFontSystemUICoreCondensedMedium";
  v1[248] = &unk_1EF2799C0;
  v2[248] = @"CTFontSystemUICoreCondensedSemiBold";
  v1[249] = &unk_1EF2799D8;
  v2[249] = @"CTFontSystemUICoreCondensedHeavy";
  v1[250] = &unk_1EF2799F0;
  v2[250] = @"CTFontSystemUICoreCondensedBlack";
  v1[251] = &unk_1EF279A08;
  v2[251] = @"UICTFontTextStyleEmphasizedItalicCaption1";
  v1[252] = &unk_1EF279A20;
  v2[252] = @"UICTFontTextStyleShortEmphasizedItalicCaption1";
  v1[253] = &unk_1EF279A38;
  v2[253] = @"UICTFontTextStyleTallCaption1";
  v1[254] = &unk_1EF279A50;
  v2[254] = @"UICTFontTextStyleTallItalicCaption1";
  v1[255] = &unk_1EF279A68;
  v2[255] = @"UICTFontTextStyleTallEmphasizedCaption1";
  v1[256] = &unk_1EF279A80;
  v2[256] = @"UICTFontTextStyleTallEmphasizedItalicCaption1";
  v1[257] = &unk_1EF279A98;
  v2[257] = @"UICTFontTextStyleEmphasizedItalicCaption2";
  v1[258] = &unk_1EF279AB0;
  v2[258] = @"UICTFontTextStyleShortEmphasizedItalicCaption2";
  v1[259] = &unk_1EF279AC8;
  v2[259] = @"UICTFontTextStyleTallCaption2";
  v1[260] = &unk_1EF279AE0;
  v2[260] = @"UICTFontTextStyleTallItalicCaption2";
  v1[261] = &unk_1EF279AF8;
  v2[261] = @"UICTFontTextStyleTallEmphasizedCaption2";
  v1[262] = &unk_1EF279B10;
  v2[262] = @"UICTFontTextStyleTallEmphasizedItalicCaption2";
  v1[263] = &unk_1EF279B28;
  v2[263] = @"UICTFontTextStyleItalicExtraLargeTitle";
  v1[264] = &unk_1EF279B40;
  v2[264] = @"UICTFontTextStyleEmphasizedItalicExtraLargeTitle";
  v1[265] = &unk_1EF279B58;
  v2[265] = @"UICTFontTextStyleItalicExtraLargeTitle2";
  v1[266] = &unk_1EF279B70;
  v2[266] = @"UICTFontTextStyleEmphasizedItalicExtraLargeTitle2";
  v1[267] = &unk_1EF279B88;
  v2[267] = @"UICTFontTextStyleCondensedHeadline";
  v1[268] = &unk_1EF279BA0;
  v2[268] = @"UICTFontTextStyleCondensedTitle1";
  v1[269] = &unk_1EF279BB8;
  v2[269] = @"UICTFontTextStyleCondensedTitle2";
  v1[270] = &unk_1EF279BD0;
  v2[270] = @"UICTFontTextStyleCondensedTitle3";
  v1[271] = &unk_1EF279BE8;
  v2[271] = @"UICTFontTextStyleCondensedBody";
  v1[272] = &unk_1EF279C00;
  v2[272] = @"UICTFontTextStylePreferredSizeRegular";
  v1[273] = &unk_1EF279C18;
  v2[273] = @"UICTFontTextStylePreferredSizeBold";
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:274];
  qword_1ED5674B8 = result;
  return result;
}