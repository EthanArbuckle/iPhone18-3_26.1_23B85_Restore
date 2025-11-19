void AlignMarkAnchor(TRunGlue **a1, int64_t a2, int64_t a3, uint64_t a4, uint64_t a5, atomic_ullong *this, uint64_t a7)
{
  v45 = NAN;
  v46 = NAN;
  v43 = NAN;
  v44 = NAN;
  GetAnchors(a4, a5, this, a7, &v45, &v43);
  v10 = v45 - v43;
  v11 = v46 - v44;
  v12 = *a1;
  v42 = a3;
  TRunGlue::GetUnscaledPosition(v12, a2);
  v14 = v10 + v13;
  v16 = v11 + v15;
  if (a2 >= a3)
  {
    v24 = a2 - 1;
    if (a2 - 1 > a3)
    {
      do
      {
        TRunGlue::ClearGlyphCombiningMark(*a1, v24);
        TRunGlue::GetUnscaledAdvance(*a1, v24);
        v14 = v14 + v25;
        v16 = v16 + v26;
        --v24;
      }

      while (v24 > a3);
      v24 = a3;
    }

    TRunGlue::GetUnscaledAdvance(*a1, v24);
    v18 = v14 + v27;
    v20 = v16 + v28;
  }

  else
  {
    TRunGlue::GetUnscaledAdvance(*a1, a2);
    v18 = v14 - v17;
    v20 = v16 - v19;
    if (a3 - 1 != a2)
    {
      v21 = a2 + 1;
      do
      {
        TRunGlue::ClearGlyphCombiningMark(*a1, v21);
        TRunGlue::GetUnscaledAdvance(*a1, v21);
        v18 = v18 - v22;
        v20 = v20 - v23;
        ++v21;
      }

      while (a3 != v21);
    }
  }

  TRunGlue::TGlyph::clearSafeToBreakAfter(v12, a2);
  if ((*(v12 + 18) || *(v12 + 23)) && (*(v12 + 516) & 1) == 0)
  {
    v48.x = v18 * *(v12 + 65);
    v48.y = v20 * *(v12 + 66);
    TRunGlue::SetOrigin(v12, a3, v48);
  }

  else
  {
    v29 = *(v12 + 14);
    v47 = &v42;
    v30 = std::__tree<std::__value_type<long,TGlyphDeltaListEntry>,std::__map_value_compare<long,std::__value_type<long,TGlyphDeltaListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TGlyphDeltaListEntry>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(v29, a3);
    a3 = v42;
    v31 = -v20;
    if (*(v12 + 516))
    {
      v32 = v18;
    }

    else
    {
      v32 = v20;
    }

    if (!*(v12 + 516))
    {
      v31 = v18;
    }

    v30[5] = v31;
    v30[6] = v32;
  }

  if (*(v12 + 18))
  {
    TRunGlue::FocusOnIndex(v12, a3);
    v33 = *(v12 + 18);
    v34 = a3 - *(v12 + 19);
    v35 = *(v33 + 216);
    v36 = *(v33 + 200);
    LODWORD(a3) = *(v35[5] + 4 * v36 + 4 * v34);
    if ((a3 & 0x40) != 0)
    {
      a3 = a3 & 0xFFFFEFBF | 0x1000;
      [v35 setProps:a3 atIndex:v36 + v34];
      v35 = *(v33 + 216);
      v36 = *(v33 + 200);
    }

    [v35 setProps:a3 | 0x4000 atIndex:v36 + v34];
  }

  else
  {
    v37 = *(v12 + 19);
    v38 = *(v12 + 51);
    if (!v38)
    {
      TRunGlue::InitPropertiesFromDeletedGlyphs(v12);
      v38 = *(v12 + 51);
    }

    v39 = v38 + 4 * v37;
    v40 = *(v39 + 4 * a3);
    if ((v40 & 0x40) != 0)
    {
      v41 = v40 & 0xFFFFAFBF | 0x5000;
    }

    else
    {
      v41 = v40 | 0x4000;
    }

    *(v39 + 4 * a3) = v41;
  }
}

uint64_t OTL::GPOS::ApplyMarkLigPos(uint64_t a1, unsigned __int16 *a2, TGlyphIterator *this, int a4)
{
  v4 = *(a1 + 40);
  if (*(a1 + 32) > a2 || (a2 + 6) > v4)
  {
    return 0;
  }

  v10 = *(this + 6);
  v11 = *(this + 7);
  v12 = v10;
  if (!TGlyphIterator::Prev(this))
  {
LABEL_11:
    result = 0;
    *(this + 6) = v10;
    *(this + 7) = v10;
    *(this + 8) = v12;
    return result;
  }

  while (1)
  {
    v12 = *(this + 6);
    if (v12 == v11)
    {
      v12 = *(this + 8);
      v64 = *this;
      v65 = v12;
      v16 = TRunGlue::TGlyph::glyphID(&v64);
      v66 = 0xAAAAAAAAAAAAAAAALL;
      v67 = 0xAAAAAAAAAAAAAAAALL;
      v17 = (a2 + (bswap32(a2[2]) >> 16));
      v64 = v17;
      v65 = v4;
      v69 = 0;
      v68 = 0xAAAAAAAA0000FFFFLL;
      v70 = 0;
      if ((v17 + 2) <= v4)
      {
        v18 = bswap32(*v17) >> 16;
        if (v18 == 2)
        {
          v19 = bswap32(v17[1]) >> 16 > 7;
          v20 = OTL::Coverage::SearchFmt2Linear;
          v21 = OTL::Coverage::SearchFmt2Binary;
LABEL_23:
          if (v19)
          {
            v20 = v21;
          }

          goto LABEL_25;
        }

        if (v18 == 1)
        {
          v19 = bswap32(v17[1]) >> 16 > 4;
          v20 = OTL::Coverage::SearchFmt1Linear;
          v21 = OTL::Coverage::SearchFmt1Binary;
          goto LABEL_23;
        }
      }

      v64 = 0;
      v20 = OTL::Coverage::SearchUnknown;
LABEL_25:
      v66 = v20;
      v67 = 0;
      goto LABEL_30;
    }

    v64 = *this;
    v65 = v12;
    v13 = TRunGlue::TGlyph::glyphID(&v64);
    if (OTL::ClassDefTable::ClassOf(*(*(a1 + 24) + 16), v13) != 3)
    {
      GlyphProps = TRunGlue::GetGlyphProps(*this, v12);
      if ((GlyphProps & 0x10000000) != 0 || (GlyphProps & 0xF000000) == 0)
      {
        break;
      }
    }

    if ((TGlyphIterator::Prev(this) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v66 = 0xAAAAAAAAAAAAAAAALL;
  v67 = 0xAAAAAAAAAAAAAAAALL;
  v22 = (a2 + (bswap32(a2[2]) >> 16));
  v64 = v22;
  v65 = v4;
  v69 = 0;
  v68 = 0xAAAAAAAA0000FFFFLL;
  v70 = 0;
  if ((v22 + 2) > v4)
  {
    goto LABEL_21;
  }

  v23 = bswap32(*v22) >> 16;
  if (v23 == 2)
  {
    v24 = bswap32(v22[1]) >> 16 > 7;
    v20 = OTL::Coverage::SearchFmt2Linear;
    v25 = OTL::Coverage::SearchFmt2Binary;
    goto LABEL_27;
  }

  if (v23 == 1)
  {
    v24 = bswap32(v22[1]) >> 16 > 4;
    v20 = OTL::Coverage::SearchFmt1Linear;
    v25 = OTL::Coverage::SearchFmt1Binary;
LABEL_27:
    if (v24)
    {
      v20 = v25;
    }
  }

  else
  {
LABEL_21:
    v64 = 0;
    v20 = OTL::Coverage::SearchUnknown;
  }

  v66 = v20;
  v67 = 0;
  v16 = v13;
LABEL_30:
  v26 = v20(&v64, v16);
  *(this + 6) = v10;
  *(this + 7) = v10;
  *(this + 8) = v12;
  if (!v26)
  {
    return 0;
  }

  v27 = (a2 + (bswap32(a2[4]) >> 16));
  v28 = v27 + 1;
  if ((v27 + 1) > v4)
  {
    return 0;
  }

  v29 = bswap32(*v27) >> 16;
  v30 = &v28[2 * v29];
  v31 = (v27 + 3) <= v4 ? (v4 - v28) >> 2 : 0;
  v32 = v30 <= v4 && v30 >= v28;
  v33 = v32 || v31 == v29;
  if (!v33)
  {
    return 0;
  }

  v34 = &v28[2 * (a4 - 1)];
  if ((v34 + 2) > v4)
  {
    return 0;
  }

  if (!v34[1])
  {
    return 0;
  }

  v35 = v27 + __rev16(v34[1]);
  if ((v35 + 6) > v4)
  {
    return 0;
  }

  v36 = (a2 + (bswap32(a2[5]) >> 16));
  v37 = v36 + 1;
  if ((v36 + 1) > v4)
  {
    return 0;
  }

  result = 0;
  v38 = v26 - 1;
  v39 = bswap32(*v36);
  v40 = HIWORD(v39);
  v41 = &v37[v40];
  v42 = (v4 - v37) >> 1;
  if ((v36 + 2) > v4)
  {
    v42 = 0;
  }

  v45 = v41 >= v37 && v41 <= v4 || v42 == v40;
  if (v38 < HIWORD(v39) && v45)
  {
    result = 0;
    v46 = v37[v38];
    v33 = v46 == 0;
    v47 = v36 + (bswap32(v46) >> 16);
    v48 = v33 || (v47 + 2) > v4;
    v49 = v48;
    v50 = v49 ? 0 : v47;
    if (!v49 && v50 >= a2 && (v50 + 1) <= v4)
    {
      v62 = v35;
      if (!*v50)
      {
        return 0;
      }

      v63 = bswap32(*v34) >> 16;
      v51 = __rev16(*v50) - 1;
      v52 = TRunGlue::GetGlyphProps(*this, v10);
      v53 = HIBYTE(v52) & 0xF;
      v54 = TRunGlue::GetGlyphProps(*this, v12);
      v55 = v53 - 1;
      if (v53 - 1 >= v51)
      {
        v55 = v51;
      }

      v56 = v52 & 0x10000000 | ((v54 ^ v52) >> 29) || v53 == 0;
      v57 = v56 || v54 >> 29 == 0;
      v58 = v57 ? v51 : v55;
      v59 = &v50[v63 + 1 + v58 * (bswap32(a2[3]) >> 16)];
      if ((v59 + 1) > v4)
      {
        return 0;
      }

      v60 = *v59;
      if (!v60)
      {
        return 0;
      }

      v61 = v50 + __rev16(v60);
      if (v61 + 6 > v4)
      {
        return 0;
      }

      AlignMarkAnchor(this, v12, v10, v61, v62, *(a1 + 16), a1);
      return 1;
    }
  }

  return result;
}

uint64_t OTL::GPOS::ApplyMarkMarkPos(uint64_t a1, uint64_t a2, unsigned __int16 *a3, TGlyphIterator *this, int a5)
{
  v7 = *(a1 + 40);
  if (*(a1 + 32) > a3 || (a3 + 6) > v7)
  {
    return 0;
  }

  v64 = v5;
  v65 = v6;
  v54 = v7;
  v55 = *(this + 6);
  v56 = *(this + 9);
  v13 = a2 + 6;
  *(this + 9) = 0;
  while (1)
  {
    if (!TGlyphIterator::Prev(this))
    {
LABEL_16:
      result = 0;
      *(this + 9) = v56;
      *(this + 6) = v55;
      return result;
    }

    v14 = *(this + 6);
    v57 = *this;
    v58 = v14;
    v15 = TRunGlue::TGlyph::glyphID(&v57);
    v18 = *(a1 + 24);
    v19 = bswap32(*(a2 + 2)) >> 16;
    if ((v19 & 0x10) != 0)
    {
      break;
    }

    if (v19 < 0x100 || OTL::ClassDefTable::ClassOf(*(v18 + 24), v15) == v19 >> 8)
    {
      goto LABEL_17;
    }

LABEL_15:
    if (OTL::ClassDefTable::ClassOf(*(v18 + 16), v15) != 3)
    {
      goto LABEL_16;
    }
  }

  OTL::GDEF::MarkFilteringSet(*(a1 + 24), bswap32(*(v13 + 2 * (bswap32(*(a2 + 4)) >> 16))) >> 16, &v57, v16, v17);
  v20 = v59;
  v21 = (&v57 + (v60 >> 1));
  if (v60)
  {
    v20 = *(*v21 + v59);
  }

  if (!v20(v21, v15))
  {
    v18 = *(a1 + 24);
    goto LABEL_15;
  }

LABEL_17:
  v59 = 0xAAAAAAAAAAAAAAAALL;
  v60 = 0xAAAAAAAAAAAAAAAALL;
  v23 = (a3 + (bswap32(a3[2]) >> 16));
  v57 = v23;
  v58 = v54;
  v62 = 0;
  v61 = 0xAAAAAAAA0000FFFFLL;
  v63 = 0;
  if ((v23 + 2) > v54)
  {
    v57 = 0;
    v24 = OTL::Coverage::SearchUnknown;
    v25 = v55;
    goto LABEL_27;
  }

  v26 = bswap32(*v23) >> 16;
  v25 = v55;
  if (v26 == 2)
  {
    v27 = bswap32(v23[1]) >> 16 > 7;
    v24 = OTL::Coverage::SearchFmt2Linear;
    v28 = OTL::Coverage::SearchFmt2Binary;
    goto LABEL_23;
  }

  if (v26 == 1)
  {
    v27 = bswap32(v23[1]) >> 16 > 4;
    v24 = OTL::Coverage::SearchFmt1Linear;
    v28 = OTL::Coverage::SearchFmt1Binary;
LABEL_23:
    if (v27)
    {
      v24 = v28;
    }
  }

  else
  {
    v57 = 0;
    v24 = OTL::Coverage::SearchUnknown;
  }

LABEL_27:
  v59 = v24;
  v60 = 0;
  result = v24(&v57, v15);
  *(this + 9) = v56;
  *(this + 6) = v25;
  if (result)
  {
    v29 = result;
    GlyphProps = TRunGlue::GetGlyphProps(*this, v25);
    v31 = TRunGlue::GetGlyphProps(*this, v14);
    if ((v31 ^ GlyphProps) >> 29)
    {
      if ((!(GlyphProps >> 29) || (GlyphProps & 0x10000000) == 0) && (!(v31 >> 29) || (v31 & 0x10000000) == 0))
      {
        return 0;
      }
    }

    else if (GlyphProps >> 29)
    {
      v32 = HIBYTE(GlyphProps) & 0xF;
      v33 = HIBYTE(v31) & 0xF;
      if ((GlyphProps >> 28))
      {
        v32 = 0;
      }

      if ((v31 >> 28))
      {
        v33 = 0;
      }

      if (v32 != v33)
      {
        return 0;
      }
    }

    v34 = (a3 + (bswap32(a3[4]) >> 16));
    v35 = v34 + 1;
    if ((v34 + 1) > v54)
    {
      return 0;
    }

    v36 = bswap32(*v34) >> 16;
    v37 = &v35[2 * v36];
    v38 = (v34 + 3) <= v54 ? (v54 - v35) >> 2 : 0;
    v39 = v37 <= v54 && v37 >= v35;
    if (!v39 && v38 != v36)
    {
      return 0;
    }

    v41 = &v35[2 * (a5 - 1)];
    if ((v41 + 2) > v54 || !v41[1])
    {
      return 0;
    }

    v42 = v34 + __rev16(v41[1]);
    v43 = (v42 + 6) <= v54 ? v42 : 0;
    v44 = (v42 + 6) <= v54 && v43 >= a3;
    if (!v44 || v43 + 6 > v54)
    {
      return 0;
    }

    v46 = a3 + (bswap32(a3[5]) >> 16);
    if ((v46 + 2) > v54)
    {
      return 0;
    }

    v47 = &v46[2 * (bswap32(*v41) >> 16) + 2 + 2 * (v29 - 1) * (bswap32(a3[3]) >> 16)];
    if ((v47 + 2) > v54)
    {
      return 0;
    }

    v48 = *v47;
    if (!v48)
    {
      return 0;
    }

    v49 = &v46[__rev16(v48)];
    v50 = (v49 + 6) <= v54 ? v49 : 0;
    v51 = (v49 + 6) <= v54 && v50 >= a3;
    if (!v51 || v50 + 6 > v54)
    {
      return 0;
    }

    AlignMarkAnchor(this, v14, v25, v50, v43, *(a1 + 16), a1);
    return 1;
  }

  return result;
}

uint64_t OTL::GPOS::ApplyPosLookupRecords(uint64_t a1, unint64_t a2, unint64_t a3, int a4, TGlyphIterator *a5, uint64_t a6, unint64_t a7, unint64_t a8)
{
  v21 = *(a5 + 9);
  if (a4)
  {
    v11 = a4;
    v15 = 0;
    v16 = a3 + 4;
    do
    {
      if (a3 < a2 || v16 > *(a1 + 40))
      {
        break;
      }

      v17 = bswap32(*(v16 - 4)) >> 16;
      if (v17 < a7)
      {
        *(a5 + 6) = *(a6 + 8 * v17);
        v18 = TBaseFont::NthLookup<OTL::GPOS>(*(*(a1 + 16) + 408), a1, bswap32(*(v16 - 2)) >> 16);
        if (v18)
        {
          v19 = v18;
          *(a5 + 9) = OTL::Lookup::ignore(v18, *(a1 + 24));
          v15 |= OTL::GPOS::ApplyLookupAt(a1, v19, v19[8], a5, a8);
        }
      }

      v16 += 4;
      --v11;
    }

    while (v11);
  }

  else
  {
    LOBYTE(v15) = 0;
  }

  *(a5 + 9) = v21;
  return v15 & 1;
}

uint64_t OTL::GPOS::ApplyContextPosFormat1(uint64_t a1, unint64_t a2, TGlyphIterator *this, int a4, unint64_t a5)
{
  v5 = *(a1 + 40);
  v6 = a2 + 6;
  if (a2 + 4 < *(a1 + 32) || v6 > v5)
  {
    return 0;
  }

  v9 = bswap32(*(a2 + 4)) >> 16;
  v10 = v6 + 2 * v9;
  v11 = a2 + 8 <= v5 ? (v5 - v6) >> 1 : 0;
  v12 = v10 <= v5 && v10 >= v6;
  if (!v12 && v11 != v9)
  {
    return 0;
  }

  v15 = *(this + 6);
  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v55[29] = v16;
  v55[30] = v16;
  v55[27] = v16;
  v55[28] = v16;
  v55[25] = v16;
  v55[26] = v16;
  v55[23] = v16;
  v55[24] = v16;
  v55[21] = v16;
  v55[22] = v16;
  v55[19] = v16;
  v55[20] = v16;
  v55[17] = v16;
  v55[18] = v16;
  v55[16] = v16;
  v56 = 0xAAAAAAAAAAAAAAAALL;
  v55[15] = v16;
  v55[14] = v16;
  v55[13] = v16;
  v55[12] = v16;
  v55[11] = v16;
  v55[10] = v16;
  v55[9] = v16;
  v55[8] = v16;
  v55[7] = v16;
  v55[5] = v16;
  v55[6] = v16;
  v55[3] = v16;
  v55[4] = v16;
  v55[1] = v16;
  v55[2] = v16;
  v55[0] = v16;
  v54 = v15;
  if (a4 - 1 >= v9)
  {
    return 0;
  }

  v17 = *(v6 + 2 * (a4 - 1));
  if (!v17)
  {
    return 0;
  }

  v18 = (a2 + __rev16(v17));
  v19 = v18 + 1;
  if ((v18 + 1) > v5)
  {
    return 0;
  }

  v20 = v18 + 2;
  v21 = bswap32(*v18) >> 16;
  v22 = &v19[v21];
  v23 = v22 < v19 || v22 > v5;
  v24 = !v23;
  v25 = v20 <= v5 ? (v5 - v19) >> 1 : 0;
  v26 = v25 == v21 || v24;
  if (v26 != 1)
  {
    return 0;
  }

  v27 = *v18;
  if (v20 <= v5)
  {
    v28 = (v5 - v19) >> 1;
  }

  else
  {
    v28 = 0;
  }

  v29 = bswap32(v28) >> 16;
  if (!v24)
  {
    v27 = v29;
  }

  if (!v27)
  {
    return 0;
  }

  v30 = 0;
  if (!v24)
  {
    LOWORD(v21) = v28;
  }

  if ((v21 & 0xFFFE) != 0)
  {
    v31 = v21;
  }

  else
  {
    v31 = 1;
  }

  v49 = v18 + 1;
  v50 = v18;
  v48 = v31;
  while (1)
  {
    if (v30 < bswap32(*v18) >> 16)
    {
      v32 = (v18 + __rev16(v19[v30]));
      v33 = v32 + 2;
      if (v19[v30] && v33 <= v5)
      {
        if (*v32)
        {
          v35 = __rev16(*v32);
          if (v35 <= 0x40)
          {
            break;
          }
        }
      }
    }

LABEL_72:
    result = 0;
    if (++v30 == v31)
    {
      return result;
    }
  }

  v36 = (v35 - 1);
  v37 = &v33[v36];
  if (v33 < a2 || v37 < v33 || v37 > v5)
  {
    v40 = (v32 + 3) <= v5 && v33 >= a2;
    v41 = (v5 - v33) >> 1;
    if (!v40)
    {
      v41 = 0;
    }

    if (v41 != v36)
    {
      return 0;
    }
  }

  v51 = v35;
  v52 = (v35 - 1);
  if (v35 >= 2)
  {
    v42 = v35 - 1;
    v43 = v55;
    while (TGlyphIterator::Next(this, 1))
    {
      v44 = *(this + 6);
      v53[0] = *this;
      v53[1] = v44;
      if (TRunGlue::TGlyph::glyphID(v53) != bswap32(*v33) >> 16)
      {
        break;
      }

      ++v33;
      *v43++ = v44;
      if (!--v42)
      {
        goto LABEL_75;
      }
    }

    *(this + 6) = v15;
    v19 = v49;
    v18 = v50;
    v31 = v48;
    goto LABEL_72;
  }

LABEL_75:
  *(this + 6) = v15;
  if (OTL::GPOS::ApplyPosLookupRecords(a1, a2, v33, bswap32(v32[1]) >> 16, this, &v54, v51, a5))
  {
    TGlyphIterator::ClearSafeToBreakAfter(this, &v54, v51);
  }

  *(this + 6) = v15;
  TGlyphIterator::Next(this, v52);
  return 1;
}

CFIndex *TGlyphIterator::ClearSafeToBreakAfter(CFIndex *this, uint64_t *a2, uint64_t a3)
{
  if (*(*this + 144))
  {
    v3 = this;
    this = std::__minmax_element_impl[abi:fn200100]<long const*,long const*,std::__identity,std::__less<void,void>>(a2, &a2[a3]);
    if (this != v4)
    {
      v5.length = *v4 - *this + 1;
      v5.location = *this;
      return TRunGlue::ClearSafeToBreakAfter(*v3, v5);
    }
  }

  return this;
}

uint64_t OTL::GPOS::ApplyContextPosFormat2(uint64_t a1, unint64_t a2, uint64_t *a3, unint64_t a4)
{
  v8 = a3[6];
  v67 = *a3;
  *&v68[0] = v8;
  v9 = TRunGlue::TGlyph::glyphID(&v67);
  v10 = *(a1 + 40);
  v11 = a2 + 8;
  if (a2 + 6 < *(a1 + 32) || v11 > v10)
  {
    return 0;
  }

  v13 = bswap32(*(a2 + 6)) >> 16;
  v14 = v11 + 2 * v13;
  v15 = a2 + 10 <= v10 ? (v10 - v11) >> 1 : 0;
  v16 = v14 <= v10 && v14 >= v11;
  if (!v16 && v15 != v13)
  {
    return 0;
  }

  v18 = (a2 + (bswap32(*(a2 + 4)) >> 16));
  if ((v18 + 1) > v10)
  {
    return 0;
  }

  v19 = v9;
  v20 = bswap32(*v18) >> 16;
  if (v20 == 2)
  {
    v21 = 6 * (bswap32(v18[1]) >> 16) + 4;
  }

  else if (v20 == 1)
  {
    v21 = 2 * (bswap32(v18[2]) >> 16) + 6;
  }

  else
  {
    v21 = 0;
  }

  result = 0;
  v23 = v18 + v21;
  if (v23 >= v18 && v23 <= v10)
  {
    *&v24 = 0xAAAAAAAAAAAAAAAALL;
    *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v68[29] = v24;
    v68[30] = v24;
    v68[27] = v24;
    v68[28] = v24;
    v68[25] = v24;
    v68[26] = v24;
    v68[23] = v24;
    v68[24] = v24;
    v68[21] = v24;
    v68[22] = v24;
    v68[19] = v24;
    v68[20] = v24;
    v68[17] = v24;
    v68[18] = v24;
    v68[16] = v24;
    v69 = 0xAAAAAAAAAAAAAAAALL;
    v68[15] = v24;
    v68[14] = v24;
    v68[13] = v24;
    v68[12] = v24;
    v68[11] = v24;
    v68[10] = v24;
    v68[9] = v24;
    v68[8] = v24;
    v68[7] = v24;
    v68[5] = v24;
    v68[6] = v24;
    v68[3] = v24;
    v68[4] = v24;
    v68[1] = v24;
    v68[2] = v24;
    v68[0] = v24;
    v67 = v8;
    v25 = OTL::ClassDefTable::ClassOf(v18, v19);
    if (v13 > v25)
    {
      if (*(v11 + 2 * v25))
      {
        v26 = (a2 + __rev16(*(v11 + 2 * v25)));
        v27 = v26 + 1;
        if ((v26 + 1) <= v10)
        {
          v28 = v26 + 2;
          v29 = bswap32(*v26) >> 16;
          v30 = &v27[v29];
          v31 = v30 < v27 || v30 > v10;
          v32 = !v31;
          v33 = v28 <= v10 ? (v10 - v27) >> 1 : 0;
          v34 = v33 == v29 || v32;
          if (v34 == 1)
          {
            v35 = *v26;
            if (v28 <= v10)
            {
              v36 = (v10 - v27) >> 1;
            }

            else
            {
              v36 = 0;
            }

            v37 = bswap32(v36) >> 16;
            if (!v32)
            {
              v35 = v37;
            }

            if (v35)
            {
              v38 = 0;
              if (!v32)
              {
                LOWORD(v29) = v36;
              }

              if ((v29 & 0xFFFE) != 0)
              {
                v29 = v29;
              }

              else
              {
                v29 = 1;
              }

              v58 = v26;
              v59 = v29;
              v63 = a4;
              v64 = v8;
              v56 = a1;
              v57 = v26 + 1;
              while (1)
              {
                if (v38 < bswap32(*v26) >> 16 && v27[v38])
                {
                  v39 = (v26 + __rev16(v27[v38]));
                  if ((v39 + 2) <= v10)
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

                if (v40 >= a2)
                {
                  v41 = v40 + 2;
                  if ((v40 + 2) <= v10)
                  {
                    if (*v40)
                    {
                      v42 = __rev16(*v40);
                      if (v42 <= 0x40)
                      {
                        v43 = (v42 - 1);
                        v44 = &v41[v43];
                        v45 = v40 + 3;
                        v46 = (v10 - v41) >> 1;
                        if ((v40 + 3) > v10)
                        {
                          v46 = 0;
                        }

                        if ((v44 > v10 || v44 < v41) && v46 != v43)
                        {
                          return 0;
                        }

                        v49 = v42 - 2;
                        if (v42 < 2)
                        {
LABEL_83:
                          a3[6] = v8;
                          v54 = a2;
                          v55 = v42;
                          if (OTL::GPOS::ApplyPosLookupRecords(v56, v54, v41, bswap32(v40[1]) >> 16, a3, &v67, v42, a4))
                          {
                            TGlyphIterator::ClearSafeToBreakAfter(a3, &v67, v55);
                          }

                          a3[6] = v8;
                          TGlyphIterator::Next(a3, v43);
                          return 1;
                        }

                        v60 = v40;
                        v61 = v42;
                        v62 = (v42 - 1);
                        v65 = v38;
                        v50 = v42 - 1;
                        v51 = v68;
                        while (TGlyphIterator::Next(a3, 1))
                        {
                          v52 = a3[6];
                          v66[0] = *a3;
                          v66[1] = v52;
                          v53 = TRunGlue::TGlyph::glyphID(v66);
                          if (OTL::ClassDefTable::ClassOf(v18, v53) != bswap32(*v41) >> 16)
                          {
                            break;
                          }

                          ++v41;
                          *v51++ = v52;
                          if (!--v50)
                          {
                            v41 = &v45[v49];
                            a4 = v63;
                            v8 = v64;
                            v42 = v61;
                            v43 = v62;
                            v40 = v60;
                            goto LABEL_83;
                          }
                        }

                        a4 = v63;
                        v8 = v64;
                        a3[6] = v64;
                        v27 = v57;
                        v26 = v58;
                        v38 = v65;
                      }
                    }
                  }
                }

                result = 0;
                if (++v38 == v59)
                {
                  return result;
                }
              }
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t OTL::GPOS::ApplyContextPosFormat3(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = *(a1 + 40);
  v5 = a2 + 6;
  if (*(a1 + 32) > a2 || v5 > v4)
  {
    return 0;
  }

  v8 = *(a2 + 2);
  if (!*(a2 + 2))
  {
    return 0;
  }

  v12 = *(a3 + 48);
  v13 = __rev16(v8);
  v14 = v13 - 1;
  if (v13 != 1)
  {
    v15 = *(a3 + 24);
    if (*(a3 + 8) < 1)
    {
      if (v12 - v14 <= v15)
      {
        return 0;
      }
    }

    else if (v12 + v14 >= v15)
    {
      return 0;
    }
  }

  *&v16 = 0xAAAAAAAAAAAAAAAALL;
  *(&v16 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v20[29] = v16;
  v20[30] = v16;
  v20[27] = v16;
  v20[28] = v16;
  v20[25] = v16;
  v20[26] = v16;
  v20[23] = v16;
  v20[24] = v16;
  v20[21] = v16;
  v20[22] = v16;
  v20[19] = v16;
  v20[20] = v16;
  v20[17] = v16;
  v20[18] = v16;
  v20[16] = v16;
  v21 = 0xAAAAAAAAAAAAAAAALL;
  v20[15] = v16;
  v20[14] = v16;
  v20[13] = v16;
  v20[12] = v16;
  v20[11] = v16;
  v20[10] = v16;
  v20[9] = v16;
  v20[8] = v16;
  v20[7] = v16;
  v20[6] = v16;
  v20[5] = v16;
  v20[4] = v16;
  v20[3] = v16;
  v20[2] = v16;
  v20[1] = v16;
  v20[0] = v16;
  v19 = v12;
  if (v8 != 256)
  {
    if (v13 <= 0x40)
    {
      result = TGlyphIterator::MatchCoverSequenceAndNote(a3, v14, a2 + 8, v20, a2, v4);
      if (!result)
      {
        return result;
      }

      v17 = result + 1;
      goto LABEL_16;
    }

    return 0;
  }

  v17 = 1;
LABEL_16:
  if (OTL::GPOS::ApplyPosLookupRecords(a1, a2, v5 + 2 * v13, bswap32(*(a2 + 4)) >> 16, a3, &v19, v17, a4))
  {
    TGlyphIterator::ClearSafeToBreakAfter(a3, &v19, v17);
  }

  *(a3 + 48) = v12;
  TGlyphIterator::Next(a3, v17 - 1);
  return 1;
}

uint64_t TGlyphIterator::MatchCoverSequenceAndNote(TGlyphIterator *a1, unsigned int a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = *(a1 + 6);
  if (TGlyphIterator::Next(a1, 1))
  {
    v22 = v12;
    v13 = 0;
    while (1)
    {
      v14 = *(a1 + 6);
      v23 = *a1;
      v24 = v14;
      v15 = TRunGlue::TGlyph::glyphID(&v23);
      v27 = 0xAAAAAAAAAAAAAAAALL;
      v16 = (a5 + (bswap32(*(a3 + 2 * v13)) >> 16));
      v23 = v16;
      v24 = a6;
      LODWORD(v27) = 0xFFFF;
      v28 = 0;
      v29 = 0;
      if ((v16 + 2) > a6)
      {
        break;
      }

      v17 = bswap32(*v16) >> 16;
      if (v17 == 2)
      {
        v18 = bswap32(v16[1]) >> 16 > 7;
        v19 = OTL::Coverage::SearchFmt2Linear;
        v20 = OTL::Coverage::SearchFmt2Binary;
      }

      else
      {
        if (v17 != 1)
        {
          break;
        }

        v18 = bswap32(v16[1]) >> 16 > 4;
        v19 = OTL::Coverage::SearchFmt1Linear;
        v20 = OTL::Coverage::SearchFmt1Binary;
      }

      if (v18)
      {
        v19 = v20;
      }

LABEL_11:
      v25 = v19;
      v26 = 0;
      if (!(v19)(&v23, v15))
      {
        a2 -= v13;
        v12 = v22;
        goto LABEL_17;
      }

      *(a4 + 8 * v13) = v14;
      if (a2 - 1 == v13)
      {
        *(a1 + 6) = v22;
        return a2;
      }

      ++v13;
      if ((TGlyphIterator::Next(a1, 1) & 1) == 0)
      {
        v13 = 0;
        *(a1 + 6) = v22;
        return v13;
      }
    }

    v23 = 0;
    v19 = OTL::Coverage::SearchUnknown;
    goto LABEL_11;
  }

  v13 = 0;
LABEL_17:
  *(a1 + 6) = v12;
  if (a2)
  {
    return 0;
  }

  return v13;
}

uint64_t OTL::GPOS::ApplyChainContextPosFormat1(uint64_t a1, unint64_t a2, TGlyphIterator *this, int a4, unint64_t a5)
{
  v5 = *(a1 + 40);
  v6 = a2 + 6;
  if (a2 + 4 < *(a1 + 32) || v6 > v5)
  {
    return 0;
  }

  result = 0;
  v11 = bswap32(*(a2 + 4)) >> 16;
  v12 = __CFADD__(v6, 2 * v11);
  v13 = v6 + 2 * v11 > v5 || v12;
  v14 = (v5 - v6) >> 1;
  if (a2 + 8 > v5)
  {
    v14 = 0;
  }

  if (v14 == v11)
  {
    v13 = 0;
  }

  if (*(a2 + 4) && (v13 & 1) == 0)
  {
    v16 = *(this + 6);
    *&v17 = 0xAAAAAAAAAAAAAAAALL;
    *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v74[29] = v17;
    v74[30] = v17;
    v74[27] = v17;
    v74[28] = v17;
    v74[25] = v17;
    v74[26] = v17;
    v74[23] = v17;
    v74[24] = v17;
    v74[21] = v17;
    v74[22] = v17;
    v74[19] = v17;
    v74[20] = v17;
    v74[17] = v17;
    v74[18] = v17;
    v74[16] = v17;
    v75 = 0xAAAAAAAAAAAAAAAALL;
    v74[15] = v17;
    v74[14] = v17;
    v74[13] = v17;
    v74[12] = v17;
    v74[11] = v17;
    v74[10] = v17;
    v74[9] = v17;
    v74[8] = v17;
    v74[7] = v17;
    v74[5] = v17;
    v74[6] = v17;
    v74[3] = v17;
    v74[4] = v17;
    v74[1] = v17;
    v74[2] = v17;
    v74[0] = v17;
    v73 = v16;
    if (a4 - 1 < v11)
    {
      v18 = *(v6 + 2 * (a4 - 1));
      if (v18)
      {
        v19 = (a2 + __rev16(v18));
        v20 = v19 + 1;
        if ((v19 + 1) <= v5)
        {
          v21 = v19 + 2;
          v22 = bswap32(*v19) >> 16;
          v23 = &v20[v22];
          v24 = v23 < v20 || v23 > v5;
          v25 = !v24;
          v26 = v21 <= v5 ? (v5 - v20) >> 1 : 0;
          v27 = v26 == v22 || v25;
          if (v27 == 1)
          {
            v28 = *v19;
            if (v21 <= v5)
            {
              v29 = (v5 - v20) >> 1;
            }

            else
            {
              v29 = 0;
            }

            v30 = bswap32(v29) >> 16;
            if (!v25)
            {
              v28 = v30;
            }

            if (v28)
            {
              v63 = a1;
              v31 = 0;
              if (!v25)
              {
                LOWORD(v22) = v29;
              }

              if ((v22 & 0xFFFE) != 0)
              {
                v22 = v22;
              }

              else
              {
                v22 = 1;
              }

              v67 = v22;
              v68 = v19 + 1;
              v69 = v19;
              v70 = v16;
              while (1)
              {
                if (v31 >= bswap32(*v19) >> 16)
                {
                  return 0;
                }

                if (!v20[v31])
                {
                  return 0;
                }

                v32 = (v19 + __rev16(v20[v31]));
                if (v32 > v5)
                {
                  return 0;
                }

                v33 = v32 + 1;
                if (v32 < a2 || v33 > v5)
                {
                  return 0;
                }

                v35 = *v32;
                if (v35)
                {
                  break;
                }

                v42 = v16;
                v41 = v33;
LABEL_64:
                v43 = v41 + 1;
                if (v41 < a2 || v43 > v5)
                {
                  return 0;
                }

                if (*v41)
                {
                  v45 = __rev16(*v41);
                  if (v45 <= 0x40)
                  {
                    v66 = v42;
                    v46 = v16;
                    v47 = v41 + 1;
                    if (v45 < 2)
                    {
LABEL_78:
                      result = 0;
                      *(this + 6) = v16;
                      if (v47 < a2)
                      {
                        return result;
                      }

                      v53 = v47 + 1;
                      if ((v47 + 1) > v5)
                      {
                        return result;
                      }

                      if (!*v47)
                      {
LABEL_96:
                        result = 0;
                        if (v53 >= a2 && (v53 + 1) <= v5)
                        {
                          if (OTL::GPOS::ApplyPosLookupRecords(v63, a2, (v53 + 1), bswap32(*v53) >> 16, this, &v73, v45, a5) && *(*this + 144))
                          {
                            v61 = v66 - v46;
                            if (v66 >= v46)
                            {
                              v62.location = v46;
                            }

                            else
                            {
                              v62.location = v66;
                            }

                            if (v66 - v46 < 0)
                            {
                              v61 = v46 - v66;
                            }

                            v62.length = v61 + 1;
                            TRunGlue::ClearSafeToBreakAfter(*this, v62);
                          }

                          *(this + 6) = v16;
                          TGlyphIterator::Next(this, (v45 - 1));
                          return 1;
                        }

                        return result;
                      }

                      if ((v45 - 1) >= 0x40)
                      {
                        __break(1u);
                        return result;
                      }

                      v54 = v45;
                      v55 = __rev16(*v47);
                      *(this + 6) = *(&v73 + (v45 - 1));
                      if (v55 <= 1)
                      {
                        v56 = 1;
                      }

                      else
                      {
                        v56 = v55;
                      }

                      v57 = v47 + 2;
                      v58 = v56;
                      while (TGlyphIterator::NextContext(this, 1))
                      {
                        v59 = *(this + 6);
                        v71 = *this;
                        v72 = v59;
                        v60 = TRunGlue::TGlyph::glyphID(&v71);
                        if (v53 < a2 || v57 > v5 || v60 != bswap32(*(v57 - 1)) >> 16)
                        {
                          break;
                        }

                        ++v57;
                        if (!--v58)
                        {
                          v53 = &v47[v56 - 1 + 2];
                          v46 = *(this + 6);
                          v16 = v70;
                          *(this + 6) = v70;
                          v45 = v54;
                          goto LABEL_96;
                        }
                      }
                    }

                    else
                    {
                      v48 = v41 + 2;
                      v47 = &v41[(v45 - 2) + 2];
                      v65 = v45;
                      v49 = v45 - 1;
                      v50 = v74;
                      while (TGlyphIterator::Next(this, 1))
                      {
                        v51 = *(this + 6);
                        v71 = *this;
                        v72 = v51;
                        v52 = TRunGlue::TGlyph::glyphID(&v71);
                        if (v43 < a2 || v48 > v5 || v52 != bswap32(*(v48 - 1)) >> 16)
                        {
                          break;
                        }

                        *v50++ = v51;
                        ++v48;
                        if (!--v49)
                        {
                          v46 = *(this + 6);
                          v16 = v70;
                          v45 = v65;
                          goto LABEL_78;
                        }
                      }
                    }

                    goto LABEL_92;
                  }
                }

LABEL_93:
                ++v31;
                v20 = v68;
                v19 = v69;
                if (v31 == v67)
                {
                  return 0;
                }
              }

              v36 = __rev16(v35);
              if (v36 <= 1)
              {
                v37 = 1;
              }

              else
              {
                v37 = v36;
              }

              v38 = v33;
              while (TGlyphIterator::PrevContext(this, 1))
              {
                v39 = *(this + 6);
                v71 = *this;
                v72 = v39;
                v40 = TRunGlue::TGlyph::glyphID(&v71);
                if (v33 < a2)
                {
                  break;
                }

                v41 = v38 + 1;
                if ((v38 + 1) > v5 || v40 != bswap32(*v38) >> 16)
                {
                  break;
                }

                ++v38;
                if (!--v37)
                {
                  v42 = *(this + 6);
                  v16 = v70;
                  *(this + 6) = v70;
                  goto LABEL_64;
                }
              }

LABEL_92:
              v16 = v70;
              *(this + 6) = v70;
              goto LABEL_93;
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t OTL::GPOS::ApplyChainContextPosFormat2(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, unint64_t a4)
{
  v8 = a3[6];
  v95 = *a3;
  *&v96[0] = v8;
  v9 = TRunGlue::TGlyph::glyphID(&v95);
  v10 = *(a1 + 40);
  v11 = a2 + 6;
  if ((a2 + 5) < *(a1 + 32) || v11 > v10)
  {
    return 0;
  }

  v89 = a1;
  v13 = __rev16(a2[5]);
  v14 = &v11[v13];
  v15 = (a2 + 7) <= v10 ? (v10 - v11) >> 1 : 0;
  v16 = v14 <= v10 && v14 >= v11;
  if (!v16 && v15 != v13)
  {
    return 0;
  }

  v18 = (a2 + (bswap32(a2[3]) >> 16));
  if ((v18 + 1) > v10)
  {
    return 0;
  }

  v19 = v9;
  v20 = bswap32(*v18) >> 16;
  if (v20 == 2)
  {
    v21 = 6 * (bswap32(v18[1]) >> 16) + 4;
  }

  else if (v20 == 1)
  {
    v21 = 2 * (bswap32(v18[2]) >> 16) + 6;
  }

  else
  {
    v21 = 0;
  }

  result = 0;
  v23 = v18 + v21;
  if (v23 >= v18 && v23 <= v10)
  {
    if (a2[5])
    {
      v88 = a4;
      v24 = a2[2];
      v25 = a2[4];
      *&v26 = 0xAAAAAAAAAAAAAAAALL;
      *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v96[29] = v26;
      v96[30] = v26;
      v96[27] = v26;
      v96[28] = v26;
      v96[25] = v26;
      v96[26] = v26;
      v96[23] = v26;
      v96[24] = v26;
      v96[21] = v26;
      v96[22] = v26;
      v96[19] = v26;
      v96[20] = v26;
      v96[17] = v26;
      v96[18] = v26;
      v96[16] = v26;
      v97 = 0xAAAAAAAAAAAAAAAALL;
      v96[15] = v26;
      v96[14] = v26;
      v96[13] = v26;
      v96[12] = v26;
      v96[11] = v26;
      v96[10] = v26;
      v96[9] = v26;
      v96[8] = v26;
      v96[7] = v26;
      v96[5] = v26;
      v96[6] = v26;
      v96[3] = v26;
      v96[4] = v26;
      v96[1] = v26;
      v96[2] = v26;
      v96[0] = v26;
      v95 = v8;
      v91 = v18;
      v27 = OTL::ClassDefTable::ClassOf(v18, v19);
      if (v13 > v27)
      {
        if (v11[v27])
        {
          v28 = (a2 + __rev16(v11[v27]));
          v29 = v28 + 1;
          if ((v28 + 1) <= v10)
          {
            v30 = v28 + 2;
            v31 = bswap32(*v28) >> 16;
            v32 = &v29[v31];
            v33 = v32 < v29 || v32 > v10;
            v34 = !v33;
            v35 = v30 <= v10 ? (v10 - v29) >> 1 : 0;
            v36 = v35 == v31 || v34;
            if (v36 == 1)
            {
              v37 = *v28;
              if (v30 <= v10)
              {
                v38 = (v10 - v29) >> 1;
              }

              else
              {
                v38 = 0;
              }

              v39 = bswap32(v38) >> 16;
              if (!v34)
              {
                v37 = v39;
              }

              if (v37)
              {
                v40 = 0;
                v41 = (a2 + (bswap32(v24) >> 16));
                v42 = (a2 + (bswap32(v25) >> 16));
                if (!v34)
                {
                  LOWORD(v31) = v38;
                }

                v92 = v42;
                v82 = v42 + 1;
                if ((v31 & 0xFFFE) != 0)
                {
                  v31 = v31;
                }

                else
                {
                  v31 = 1;
                }

                v84 = v41 + 1;
                v85 = v31;
                v90 = v8;
                v86 = v28 + 1;
                v87 = v28;
                while (1)
                {
                  if (v40 >= bswap32(*v28) >> 16)
                  {
                    return 0;
                  }

                  if (!v29[v40])
                  {
                    return 0;
                  }

                  v43 = (v28 + __rev16(v29[v40]));
                  if (v43 > v10)
                  {
                    return 0;
                  }

                  v44 = v43 + 1;
                  if (v43 < a2 || v44 > v10)
                  {
                    return 0;
                  }

                  v46 = *v43;
                  if (v46)
                  {
                    break;
                  }

                  v49 = v8;
                  v50 = v44;
LABEL_80:
                  v57 = v50 + 1;
                  if (v50 < a2 || v57 > v10)
                  {
                    return 0;
                  }

                  if (*v50)
                  {
                    v59 = __rev16(*v50);
                    if (v59 <= 0x40)
                    {
                      v81 = v49;
                      v60 = v50 + 1;
                      v83 = v59;
                      if (v59 < 2)
                      {
LABEL_94:
                        result = 0;
                        v66 = a3[6];
                        a3[6] = v8;
                        if (v60 < a2)
                        {
                          return result;
                        }

                        v67 = v60 + 1;
                        if ((v60 + 1) > v10)
                        {
                          return result;
                        }

                        if (!*v60)
                        {
LABEL_120:
                          result = 0;
                          if (v67 >= a2 && (v67 + 1) <= v10)
                          {
                            if (OTL::GPOS::ApplyPosLookupRecords(v89, a2, (v67 + 1), bswap32(*v67) >> 16, a3, &v95, v59, v88) && *(*a3 + 144))
                            {
                              v78 = v81 - v66;
                              if (v81 >= v66)
                              {
                                v79.location = v66;
                              }

                              else
                              {
                                v79.location = v81;
                              }

                              if (v81 - v66 < 0)
                              {
                                v78 = v66 - v81;
                              }

                              v79.length = v78 + 1;
                              TRunGlue::ClearSafeToBreakAfter(*a3, v79);
                            }

                            a3[6] = v8;
                            TGlyphIterator::Next(a3, (v59 - 1));
                            return 1;
                          }

                          return result;
                        }

                        if (v82 > v10)
                        {
                          return 0;
                        }

                        v68 = bswap32(*v92) >> 16;
                        if (v68 == 2)
                        {
                          v69 = 6 * (bswap32(*v82) >> 16) + 4;
                        }

                        else if (v68 == 1)
                        {
                          v69 = 2 * (bswap32(v92[2]) >> 16) + 6;
                        }

                        else
                        {
                          v69 = 0;
                        }

                        result = 0;
                        v70 = v92 + v69;
                        if (v70 < v92 || v70 > v10)
                        {
                          return result;
                        }

                        if ((v59 - 1) >= 0x40)
                        {
                          __break(1u);
                          return result;
                        }

                        v71 = __rev16(*v60);
                        a3[6] = *(&v95 + (v59 - 1));
                        if (v71 <= 1)
                        {
                          v72 = 1;
                        }

                        else
                        {
                          v72 = v71;
                        }

                        v73 = v60;
                        v74 = v60 + 2;
                        v75 = v72;
                        while (TGlyphIterator::NextContext(a3, 1))
                        {
                          v76 = a3[6];
                          v93 = *a3;
                          v94 = v76;
                          v77 = TRunGlue::TGlyph::glyphID(&v93);
                          if (v67 < a2 || v74 > v10 || OTL::ClassDefTable::ClassOf(v92, v77) != bswap32(*(v74 - 1)) >> 16)
                          {
                            break;
                          }

                          ++v74;
                          if (!--v75)
                          {
                            v67 = &v73[v72 - 1 + 2];
                            v66 = a3[6];
                            v8 = v90;
                            a3[6] = v90;
                            v59 = v83;
                            goto LABEL_120;
                          }
                        }
                      }

                      else
                      {
                        v61 = v50 + 2;
                        v80 = &v61[(v59 - 2)];
                        v62 = v59 - 1;
                        v63 = v96;
                        while (TGlyphIterator::Next(a3, 1))
                        {
                          v64 = a3[6];
                          v93 = *a3;
                          v94 = v64;
                          v65 = TRunGlue::TGlyph::glyphID(&v93);
                          if (v57 < a2 || v61 > v10 || OTL::ClassDefTable::ClassOf(v91, v65) != bswap32(*(v61 - 1)) >> 16)
                          {
                            break;
                          }

                          *v63++ = v64;
                          ++v61;
                          if (!--v62)
                          {
                            v8 = v90;
                            v59 = v83;
                            v60 = v80;
                            goto LABEL_94;
                          }
                        }
                      }

                      goto LABEL_116;
                    }
                  }

LABEL_117:
                  ++v40;
                  v29 = v86;
                  v28 = v87;
                  if (v40 == v85)
                  {
                    return 0;
                  }
                }

                if (v84 > v10)
                {
                  return 0;
                }

                v47 = bswap32(*v41) >> 16;
                if (v47 == 2)
                {
                  v48 = 6 * (bswap32(*v84) >> 16) + 4;
                }

                else if (v47 == 1)
                {
                  v48 = 2 * (bswap32(v41[2]) >> 16) + 6;
                }

                else
                {
                  v48 = 0;
                }

                result = 0;
                v51 = v41 + v48;
                if (v51 < v41 || v51 > v10)
                {
                  return result;
                }

                v52 = __rev16(v46);
                if (v52 <= 1)
                {
                  v53 = 1;
                }

                else
                {
                  v53 = v52;
                }

                v54 = v44;
                while (TGlyphIterator::PrevContext(a3, 1))
                {
                  v55 = a3[6];
                  v93 = *a3;
                  v94 = v55;
                  v56 = TRunGlue::TGlyph::glyphID(&v93);
                  if (v44 < a2)
                  {
                    break;
                  }

                  v50 = v54 + 1;
                  if ((v54 + 1) > v10 || OTL::ClassDefTable::ClassOf(v41, v56) != bswap32(*v54) >> 16)
                  {
                    break;
                  }

                  ++v54;
                  if (!--v53)
                  {
                    v49 = a3[6];
                    v8 = v90;
                    a3[6] = v90;
                    goto LABEL_80;
                  }
                }

LABEL_116:
                v8 = v90;
                a3[6] = v90;
                goto LABEL_117;
              }
            }
          }
        }
      }
    }

    return 0;
  }

  return result;
}

uint64_t OTL::GPOS::ApplyChainContextPosFormat3(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v47 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = (a2 + 2);
  v6 = (a2 + 4);
  if (*(a1 + 32) > a2 || v5 > v4 || v6 > v4)
  {
    return 0;
  }

  v11 = *(a3 + 48);
  v12 = *v5;
  v13 = __rev16(v12);
  if (*v5)
  {
    v14 = *(a3 + 16);
    if (*(a3 + 8) < 1)
    {
      if (v11 + v13 >= v14)
      {
        return 0;
      }
    }

    else if (v11 - v13 <= v14)
    {
      return 0;
    }
  }

  v15 = &v6[v13];
  if ((v15 + 1) > v4)
  {
    return 0;
  }

  v16 = *v15;
  if (!*v15)
  {
    return 0;
  }

  v17 = __rev16(v16);
  v18 = &v15[v17 + 1];
  v40 = v18 + 1;
  if (v18 < a2 || (v18 + 1) > v4)
  {
    return 0;
  }

  v20 = *v18;
  v21 = v17 - 1 + (bswap32(v20) >> 16);
  if (v21)
  {
    v22 = *(a3 + 24);
    if (*(a3 + 8) >= 1)
    {
      if (v11 + v21 < v22)
      {
        goto LABEL_22;
      }

      return 0;
    }

    if (v11 - v21 <= v22)
    {
      return 0;
    }
  }

LABEL_22:
  v38 = v20;
  v37 = v13;
  v39 = *(a3 + 48);
  *&v23 = 0xAAAAAAAAAAAAAAAALL;
  *(&v23 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45[14] = v23;
  v45[13] = v23;
  v45[12] = v23;
  v45[11] = v23;
  v45[10] = v23;
  v45[9] = v23;
  v45[8] = v23;
  v45[7] = v23;
  v45[6] = v23;
  v45[5] = v23;
  v45[4] = v23;
  v45[3] = v23;
  v45[2] = v23;
  v45[1] = v23;
  v45[0] = v23;
  v43 = 0;
  v44 = 0;
  v42 = 0;
  v46 = v45;
  std::vector<long,TInlineBufferAllocator<long,30ul>>::__vallocate[abi:fn200100](&v42, v17);
  v24 = v43;
  bzero(v43, 8 * v17);
  v43 = &v24[8 * v17];
  v25 = v42;
  v26 = v43 - v42;
  if (v43 == v42)
  {
    goto LABEL_45;
  }

  *v42 = v39;
  if (v16 == 256)
  {
    v27 = 1;
    if (!v12)
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v26 <= 8)
    {
      goto LABEL_45;
    }

    matched = TGlyphIterator::MatchCoverSequenceAndNote(a3, v17 - 1, (v15 + 2), (v25 + 1), a2, v4);
    if (!matched)
    {
      goto LABEL_40;
    }

    v27 = matched + 1;
    if (!v12)
    {
      goto LABEL_30;
    }
  }

  if (!TGlyphIterator::MatchCoverSequence<(MatchDirection)1>(a3, v39, v37, v6, a2, v4, 0))
  {
    goto LABEL_40;
  }

LABEL_30:
  v29 = __rev16(v38);
  if (v38)
  {
    if (v27 - 1 < ((v43 - v42) >> 3))
    {
      if (!TGlyphIterator::MatchCoverSequence<(MatchDirection)0>(a3, v42[v27 - 1], v29, v40, a2, v4, 0))
      {
        goto LABEL_40;
      }

      goto LABEL_33;
    }

LABEL_45:
    __break(1u);
  }

LABEL_33:
  v30 = &v40[v29];
  v31 = (v30 + 1);
  if (v30 >= a2 && v31 <= v4)
  {
    if (OTL::GPOS::ApplyPosLookupRecords(a1, a2, v31, bswap32(*v30) >> 16, a3, v42, v27, a4))
    {
      TGlyphIterator::ClearSafeToBreakAfter(a3, v42, v27);
    }

    *(a3 + 48) = v39;
    TGlyphIterator::Next(a3, v27 - 1);
    v33 = 1;
    goto LABEL_41;
  }

LABEL_40:
  v33 = 0;
LABEL_41:
  v41 = &v42;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v41);
  return v33;
}

double *TRunGlue::TGlyph::AdjustXPositionBy(TRunGlue::TGlyph *this, double a2)
{
  v4 = *this;
  if ((*(v4 + 144) || *(v4 + 184)) && (*(v4 + 516) & 1) == 0)
  {
    Origin = TRunGlue::GetOrigin(v4, *(this + 1));
    v10 = *this;
    v11 = *(this + 1);
    v12 = Origin + *(*this + 520) * a2;

    return TRunGlue::SetOrigin(v10, v11, *&v12);
  }

  else
  {
    result = std::__tree<std::__value_type<long,TGlyphDeltaListEntry>,std::__map_value_compare<long,std::__value_type<long,TGlyphDeltaListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TGlyphDeltaListEntry>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(*(v4 + 112), *(this + 1));
    v6 = result[5];
    v7 = result[6];
    if (*(*this + 516))
    {
      v7 = v7 + a2;
    }

    else
    {
      v6 = v6 + a2;
    }

    result[5] = v6;
    result[6] = v7;
  }

  return result;
}

void *std::__tree<std::__value_type<long,TGlyphDeltaListEntry>,std::__map_value_compare<long,std::__value_type<long,TGlyphDeltaListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TGlyphDeltaListEntry>>>::__emplace_unique_key_args<long,std::piecewise_construct_t const&,std::tuple<long const&>,std::tuple<>>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
LABEL_8:
    operator new();
  }

  while (1)
  {
    while (1)
    {
      v3 = v2;
      v4 = v2[4];
      if (v4 <= a2)
      {
        break;
      }

      v2 = *v3;
      if (!*v3)
      {
        goto LABEL_8;
      }
    }

    if (v4 >= a2)
    {
      return v3;
    }

    v2 = v3[1];
    if (!v2)
    {
      goto LABEL_8;
    }
  }
}

void TRunGlue::GetUnscaledPosition(TRunGlue *this, int64_t a2)
{
  TRunGlue::FocusOnIndex(this, a2);
  TRunGlue::GetOrigin(this, a2);
  v4 = *(this + 14);
  if (v4)
  {
      ;
    }
  }
}

OTL::Coverage *OTL::GDEF::MarkFilteringSet@<X0>(OTL::Coverage *this@<X0>, unsigned int a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, int8x16_t a5@<Q1>)
{
  v5 = *(this + 4);
  if (a2 < bswap32(*(v5 + 2)) >> 16)
  {
    return OTL::Coverage::Coverage(a3, (v5 + bswap32(*(v5 + 4 * a2 + 4))), *(this + 1), 1, a4, a5);
  }

  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = OTL::Coverage::SearchUnknown;
  *(a3 + 24) = 0;
  *(a3 + 32) = 0xFFFF;
  *(a3 + 40) = 0;
  *(a3 + 48) = 0;
  return this;
}

uint64_t std::__function::__func<OTL::GPOS::ApplyPairPosAccelerated(OTL::Lookup const&,unsigned int,TGlyphIterator &)::$_0,std::allocator<OTL::GPOS::ApplyPairPosAccelerated(OTL::Lookup const&,unsigned int,TGlyphIterator &)::$_0>,void ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF258688;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<OTL::GPOS::ApplyPairPosAccelerated(OTL::Lookup const&,unsigned int,TGlyphIterator &)::$_0,std::allocator<OTL::GPOS::ApplyPairPosAccelerated(OTL::Lookup const&,unsigned int,TGlyphIterator &)::$_0>,void ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t result, uint64_t a2, unsigned __int16 *a3)
{
  v3 = *a3;
  v4 = *(result + 8);
  if (*v4 < v3)
  {
    *v4 = v3;
  }

  return result;
}

uint64_t std::__function::__func<OTL::GPOS::ApplyPairPosAccelerated(OTL::Lookup const&,unsigned int,TGlyphIterator &)::$_1,std::allocator<OTL::GPOS::ApplyPairPosAccelerated(OTL::Lookup const&,unsigned int,TGlyphIterator &)::$_1>,void ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF2586D0;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<OTL::GPOS::ApplyPairPosAccelerated(OTL::Lookup const&,unsigned int,TGlyphIterator &)::$_1,std::allocator<OTL::GPOS::ApplyPairPosAccelerated(OTL::Lookup const&,unsigned int,TGlyphIterator &)::$_1>,void ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t result, uint64_t a2, unsigned __int16 *a3)
{
  v3 = *a3;
  v4 = *(result + 8);
  if (*v4 < v3)
  {
    *v4 = v3;
  }

  return result;
}

uint64_t std::__function::__func<OTL::GPOS::ApplyPairPosAccelerated(OTL::Lookup const&,unsigned int,TGlyphIterator &)::$_2,std::allocator<OTL::GPOS::ApplyPairPosAccelerated(OTL::Lookup const&,unsigned int,TGlyphIterator &)::$_2>,void ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF258718;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<OTL::GPOS::ApplyPairPosAccelerated(OTL::Lookup const&,unsigned int,TGlyphIterator &)::$_2,std::allocator<OTL::GPOS::ApplyPairPosAccelerated(OTL::Lookup const&,unsigned int,TGlyphIterator &)::$_2>,void ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3, __int16 *a4)
{
  v4 = *a2;
  v5 = *a3;
  if (v4 <= v5)
  {
    v6 = *a4;
    v7 = *(result + 8);
    v8 = v5 + 1;
    do
    {
      *(v7 + 2 * v4++) = v6;
    }

    while (v8 != v4);
  }

  return result;
}

uint64_t std::__function::__func<OTL::GPOS::ApplyPairPosAccelerated(OTL::Lookup const&,unsigned int,TGlyphIterator &)::$_3,std::allocator<OTL::GPOS::ApplyPairPosAccelerated(OTL::Lookup const&,unsigned int,TGlyphIterator &)::$_3>,void ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF258760;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<OTL::GPOS::ApplyPairPosAccelerated(OTL::Lookup const&,unsigned int,TGlyphIterator &)::$_3,std::allocator<OTL::GPOS::ApplyPairPosAccelerated(OTL::Lookup const&,unsigned int,TGlyphIterator &)::$_3>,void ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3, __int16 *a4)
{
  v4 = *a2;
  v5 = *a3;
  if (v4 <= v5)
  {
    v6 = *a4;
    v7 = *(result + 8);
    v8 = v5 + 1;
    do
    {
      *(v7 + 2 * v4++) = v6;
    }

    while (v8 != v4);
  }

  return result;
}

uint64_t TRubyRun::TRubyRun(uint64_t a1, uint64_t a2, char a3)
{
  TRun::TRun(a1, *(a2 + 40));
  *v5 = &unk_1EF2587D0;
  v6 = v5 + 40;
  *(a1 + 320) = CFDictionaryGetValue(atomic_load_explicit(v5 + 5, memory_order_acquire), @"CTRubyAnnotation");
  TRubyAnnotation::TRubyAnnotation((a1 + 328), atomic_load_explicit(v6, memory_order_acquire));
  *(a1 + 472) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 696) = TRun::GetAscent(a1);
  *(a1 + 704) = TRun::GetDescent(a1);
  *(a1 + 712) = 0u;
  *(a1 + 728) = *(a1 + 8);
  *(a1 + 744) = *MEMORY[0x1E695F060];
  *(a1 + 760) = a3;
  *(a1 + 761) = 0;
  *(a1 + 768) = 0;
  TRubyRun::InitializeAnnotation(a1);
  return a1;
}

void TRubyRun::InitializeAnnotation(atomic_ullong *this)
{
  v2 = *(*(atomic_load_explicit(this + 7, memory_order_acquire) + 40) + 24);
  v3 = v2 * *(this + 42);
  explicit = atomic_load_explicit(this + 49, memory_order_acquire);
  v5 = atomic_load_explicit(this + 7, memory_order_acquire);
  if (explicit)
  {
    Value = CFDictionaryGetValue(explicit, @"NSFont");
    if (Value)
    {
      v3 = *(*(Value + 5) + 24);
      v5 = Value;
    }
  }

  else
  {
    explicit = TAttributes::GetDictionary(this + 5);
  }

  v7 = this[2];
  if (atomic_load_explicit(this + 49, memory_order_acquire))
  {
    v8 = *(this + 376);
  }

  else
  {
    v8 = 1;
  }

  RubyFont = CreateRubyFont(v5, v3, v8);
  v19 = 0xAAAAAAAAAAAAAAAALL;
  if (qword_1ED567C50 != -1)
  {
    dispatch_once_f(&qword_1ED567C50, 0, GetValidRubyAttributes(void)::$_0::__invoke);
  }

  CreateCopyOfDictionaryFilteredByKeys(explicit, _MergedGlobals_19, &v19);
  v18 = 0xAAAAAAAAAAAAAAAALL;
  TCFMutableDictionary::TCFMutableDictionary(&v18, atomic_load_explicit(&v19, memory_order_acquire));
  if (this[95])
  {
    v10 = 1;
  }

  else
  {
    v10 = *(this + 90);
  }

  CFDictionarySetValue(atomic_load_explicit(&v18, memory_order_acquire), @"NSFont", RubyFont);
  if (!CFDictionaryGetValue(atomic_load_explicit(&v18, memory_order_acquire), @"CTForegroundColor"))
  {
    v11 = atomic_load_explicit(this + 9, memory_order_acquire);
    if (v11)
    {
      CFDictionarySetValue(atomic_load_explicit(&v18, memory_order_acquire), @"CTForegroundColor", v11);
    }
  }

  BackgroundColor = TAttributes::GetBackgroundColor(atomic_load_explicit(this + 5, memory_order_acquire), 0, v11);
  RemoveIfValueEqual(&v18, BackgroundColor, @"CTBackgroundColor");
  RemoveIfValueEqual(&v18, BackgroundColor, @"NSBackgroundColor");
  if (atomic_load_explicit(this + 48, memory_order_acquire))
  {
    v13 = *(this + 376);
    TRubyAnnotationLine::InitWithAnnotation(&this[9 * *(this + 376) + 51], this + 41, v13, atomic_load_explicit(&v18, memory_order_acquire), v2 * v7, v10 & 1);
    TRubyRun::UpdateMetricsWithAnnotationLine(this, v13, v14);
  }

  else
  {
    v15 = 0;
    v16 = (this + 51);
    do
    {
      TRubyAnnotationLine::InitWithAnnotation(v16, this + 41, v15, atomic_load_explicit(&v18, memory_order_acquire), v2 * v7, v10 & 1);
      TRubyRun::UpdateMetricsWithAnnotationLine(this, v15++, v17);
      v16 = (v16 + 72);
    }

    while (v15 != 4);
  }

  *(this + 761) = (*(this + 89) & 0x1000) != 0;
}

void TRubyRun::TRubyRun(TRubyRun *this, const TRubyRun *a2)
{
  TRun::TRun(this, a2);
  *v4 = &unk_1EF2587D0;
  *(this + 40) = atomic_load_explicit(a2 + 40, memory_order_acquire);
  TRubyAnnotation::TRubyAnnotation((this + 328), (a2 + 328));
  *(this + 236) = 0;
  *(this + 440) = 0u;
  *(this + 456) = 0u;
  *(this + 408) = 0u;
  *(this + 424) = 0u;
  *(this + 30) = 0u;
  *(this + 31) = 0u;
  *(this + 32) = 0u;
  *(this + 33) = 0u;
  *(this + 272) = 0;
  *(this + 552) = 0u;
  *(this + 568) = 0u;
  *(this + 584) = 0u;
  *(this + 600) = 0u;
  *(this + 308) = 0;
  *(this + 39) = 0u;
  *(this + 40) = 0u;
  *(this + 41) = 0u;
  *(this + 42) = 0u;
  *(this + 344) = 0;
  *(this + 87) = TRun::GetAscent(this);
  *(this + 88) = TRun::GetDescent(this);
  *(this + 89) = *(a2 + 89);
  *(this + 90) = *(a2 + 90);
  *(this + 728) = *(a2 + 728);
  *(this + 744) = *MEMORY[0x1E695F060];
  *(this + 380) = *(a2 + 380);
  *(this + 96) = 0;
  TRubyRun::InitializeAnnotationFrom(this, a2);
}

void TRubyRun::InitializeAnnotationFrom(TRubyRun *this, const TRubyRun *a2)
{
  v4 = 0;
  v5 = 0;
  do
  {
    v6 = this + v4;
    TCFRef<__CTFont const*>::Retain((this + v4 + 408), atomic_load_explicit((a2 + v4 + 408), memory_order_acquire));
    TCFRef<__CTFont const*>::Retain((this + v4 + 416), atomic_load_explicit((a2 + v4 + 416), memory_order_acquire));
    v7 = *(a2 + v4 + 424);
    v8 = *(a2 + v4 + 440);
    v9 = *(a2 + v4 + 456);
    *(v6 + 236) = *(a2 + v4 + 472);
    *(v6 + 440) = v8;
    *(v6 + 456) = v9;
    *(v6 + 424) = v7;
    TRubyRun::UpdateMetricsWithAnnotationLine(this, v5++, v7);
    v4 += 72;
  }

  while (v4 != 288);
}

uint64_t TRubyRun::TRubyRun(uint64_t a1, uint64_t a2, uint64_t a3, CFIndex a4, int a5)
{
  *TRun::TRun(a1, a2, a3, a4, a5) = &unk_1EF2587D0;
  *(a1 + 320) = atomic_load_explicit((a2 + 320), memory_order_acquire);
  TRubyAnnotation::TRubyAnnotation((a1 + 328), (a2 + 328));
  *(a1 + 472) = 0;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 480) = 0u;
  *(a1 + 496) = 0u;
  *(a1 + 512) = 0u;
  *(a1 + 528) = 0u;
  *(a1 + 544) = 0;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0;
  *(a1 + 624) = 0u;
  *(a1 + 640) = 0u;
  *(a1 + 656) = 0u;
  *(a1 + 672) = 0u;
  *(a1 + 688) = 0;
  *(a1 + 696) = TRun::GetAscent(a1);
  *(a1 + 704) = TRun::GetDescent(a1);
  *(a1 + 712) = *(a2 + 712);
  *(a1 + 720) = *(a2 + 720);
  *(a1 + 728) = *(a2 + 728);
  *(a1 + 744) = *MEMORY[0x1E695F060];
  *(a1 + 760) = *(a2 + 760);
  *(a1 + 768) = 0;
  if (a3 == *(a1 + 728) && a4 == *(a1 + 736))
  {
    TRubyRun::InitializeAnnotationFrom(a1, a2);
  }

  return a1;
}

double TRubyRun::UpdateMetricsWithAnnotationLine(TRubyRun *this, int a2, __n128 a3)
{
  v3 = (this + 72 * a2 + 408);
  if (!atomic_load_explicit(v3, memory_order_acquire))
  {
    return a3.n128_f64[0];
  }

  v4 = *(this + 72 * a2 + 424);
  a3.n128_f64[0] = vaddvq_f64(v4);
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        a3.n128_f64[0] = a3.n128_f64[0] + *(this + 88);
        *(this + 88) = a3.n128_u64[0];
      }

      return a3.n128_f64[0];
    }

LABEL_11:
    a3.n128_f64[0] = a3.n128_f64[0] + *(this + 87);
    *(this + 87) = a3.n128_u64[0];
    return a3.n128_f64[0];
  }

  if (a2 == 2)
  {
    if (*(v3 + 64) != 1)
    {
      return a3.n128_f64[0];
    }

    *(this + 87) = a3.n128_f64[0] + *(this + 87);
    if (!atomic_load_explicit(this + 70, memory_order_acquire))
    {
      return a3.n128_f64[0];
    }

    goto LABEL_11;
  }

  if (a2 == 3)
  {
    a3 = vbslq_s8(vcgtq_f64(v4, *(this + 696)), v4, *(this + 696));
    *(this + 696) = a3;
  }

  return a3.n128_f64[0];
}

void TRubyRun::DrawAnnotationLine(TRubyRun *this, CGContextRef c, unsigned int a3)
{
  if (a3 == 2 && (*(this + 90) & 1) == 0)
  {
    CGContextSaveGState(c);
    *&v7 = -1;
    *(&v7 + 1) = -1;
    *&v12.c = v7;
    *&v12.tx = v7;
    *&v12.a = v7;
    *&transform.a = xmmword_18475B160;
    transform.c = 1.0;
    memset(&transform.d, 0, 24);
    CGAffineTransformInvert(&v12, &transform);
    *&transform.a = xmmword_18475B160;
    transform.c = 1.0;
    memset(&transform.d, 0, 24);
    CGContextConcatCTM(c, &transform);
    TextPosition = CGContextGetTextPosition(c);
    CGContextSetTextPosition(c, v12.tx + TextPosition.y * v12.c + v12.a * TextPosition.x, v12.ty + TextPosition.y * v12.d + v12.b * TextPosition.x);
    v6 = 1;
  }

  else
  {
    v6 = 0;
  }

  v9 = (this + 72 * a3 + 408);
  explicit = atomic_load_explicit(v9, memory_order_acquire);
  if (c && explicit)
  {
    TLine::DrawGlyphs(*(explicit + 40), c);
  }

  if (atomic_load_explicit(v9 + 1, memory_order_acquire))
  {
    v11 = atomic_load_explicit(v9 + 1, memory_order_acquire);
    if (c)
    {
      if (v11)
      {
        TLine::DrawGlyphs(*(v11 + 40), c);
      }
    }
  }

  if (v6)
  {
    CGContextRestoreGState(c);
  }
}

void TRubyRun::DrawGlyphs(TRubyRun *this, CGContextRef c, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  TextPosition = CGContextGetTextPosition(c);
  y = TextPosition.y;
  if (*(this + 401) == 1)
  {
    v15.location = location;
    v15.length = length;
    TRun::DrawGlyphs(this, c, v15);
    v9 = CGContextGetTextPosition(c);
    y = v9.y;
    x = v9.x;
  }

  else
  {
    x = TextPosition.x + *(this + 24);
  }

  v11 = y;
  v12 = 0;
  v13 = (this + 408);
  do
  {
    if (atomic_load_explicit(v13, memory_order_acquire))
    {
      CGContextSetTextPosition(c, TextPosition.x, TextPosition.y);
      TRubyRun::DrawAnnotationLine(this, c, v12);
    }

    v13 += 9;
    ++v12;
  }

  while (v12 != 4);

  CGContextSetTextPosition(c, x, v11);
}

void TRubyRun::AdvanceRubyLinesInitialAdvance(TRubyRun *this, double a2)
{
  v4 = 0;
  v5 = *(this + 90);
  v6 = (this + 408);
  v7 = MEMORY[0x1E695F060];
  do
  {
    explicit = atomic_load_explicit(v6, memory_order_acquire);
    if (explicit)
    {
      v10 = (*(explicit + 40) + 16);
      v9 = *v10;
      if (v10[1] - *v10 >= 1)
      {
        v11 = *(*v9 + 48);
        v12 = *(v11 + 39);
        if (!v12)
        {
          v12 = v7;
        }

        v13 = *v12;
        v14 = v12[1];
        v15 = *(v6 + 6) + a2;
        if (v4 == 2)
        {
          Ascent = TRun::GetAscent(this);
          if (v5)
          {
            v18 = 3;
          }

          else
          {
            v15 = v15 - Ascent;
            Ascent = *(this + 90);
            v18 = 2;
          }

          v16 = Ascent + *&v6[v18];
          v19 = atomic_load_explicit(v6 + 1, memory_order_acquire);
          if (v19)
          {
            v21 = (*(v19 + 40) + 16);
            v20 = *v21;
            if (v21[1] - *v21 >= 1)
            {
              v22 = *(*v20 + 48);
              v23 = *(v22 + 39);
              if (!v23)
              {
                v23 = v7;
              }

              v24.width = v15 - *(v6 + 6) + *(v6 + 7) - *v23;
              v24.height = v16 + *(v6 + 2) + *(v6 + 3) - v23[1];
              TRun::AdvanceInitialAdvance(v22, v24);
            }
          }
        }

        else if (v4 == 1)
        {
          v16 = -(TRun::GetDescent(this) + *(v6 + 2));
        }

        else
        {
          v16 = 0.0;
          if (!v4)
          {
            v16 = TRun::GetAscent(this) + *(v6 + 3);
          }
        }

        v25.width = v15 - v13;
        v25.height = v16 - v14;
        TRun::AdvanceInitialAdvance(v11, v25);
      }
    }

    ++v4;
    v6 += 9;
  }

  while (v4 != 4);
}

void TRubyRun::CacheGlyphPositions(double **this, double *a2, double *a3)
{
  TRubyRun::AdvanceRubyLinesInitialAdvance(this, *a2 - *(this + 93));
  v6 = *a2;
  v7 = *a3;
  TRun::CacheGlyphPositions(this, a2, a3);
  if (*(this + 761) == 1)
  {
    v8 = this[39];
    if (!v8)
    {
      v8 = MEMORY[0x1E695F060];
    }

    v9 = *(this + 24) + *v8;
    v10 = *(this + 87) + *(this + 88);
    if (v10 > v9 || vabdd_f64(v10, v9) < 0.001)
    {
      TRun::GetPositions(this, 0);
      *(this + 96) = *v11 - v6 - v7;
    }
  }
}

void TRubyRun::DrawGlyphsAtPositions(TRun *this, CGContextRef c, CFRange a3, CGPoint *a4, unsigned __int8 *a5)
{
  if (*(this + 401) == 1)
  {
    TRun::DrawRotatedGlyphsAtPositions(this, c, a3, a4, a5, *(this + 96));
  }

  v7 = 0;
  v8 = (this + 408);
  v9 = MEMORY[0x1E695EFD0];
  do
  {
    if (atomic_load_explicit(v8, memory_order_acquire))
    {
      *&v10 = -1;
      *(&v10 + 1) = -1;
      *&v14.c = v10;
      *&v14.tx = v10;
      *&v14.a = v10;
      CGContextGetTextMatrix(&v14, c);
      if (*(this + 144))
      {
        v11 = (this + 96);
      }

      else
      {
        v11 = v9;
      }

      v12 = v11[1];
      *&t1.a = *v11;
      *&t1.c = v12;
      *&t1.tx = v11[2];
      CGAffineTransformInvert(&t2, &t1);
      t1 = t2;
      t2 = v14;
      CGAffineTransformConcat(&v13, &t1, &t2);
      t1 = v13;
      CGContextSetTextMatrix(c, &t1);
      TRubyRun::DrawAnnotationLine(this, c, v7);
      t1 = v14;
      CGContextSetTextMatrix(c, &t1);
    }

    v8 += 9;
    ++v7;
  }

  while (v7 != 4);
}

double TRubyRun::GetBackgroundRect(TRubyRun *this)
{
  BackgroundRect = TRun::GetBackgroundRect(this);
  v6 = -*(this + 93);
  v7 = -*(this + 94);

  *&result = CGRectOffset(*&BackgroundRect, v6, v7);
  return result;
}

CTFontRef CreateRubyFont(const __CTFont *a1, CGFloat a2, int a3)
{
  explicit = atomic_load_explicit((*(a1 + 5) + 16), memory_order_acquire);
  if (a3 == 1)
  {

    return CTFontCreateWithFontDescriptor(explicit, a2, 0);
  }

  else
  {
    valuePtr = 28;
    v6 = *MEMORY[0x1E695E480];
    v7 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberIntType, &valuePtr);
    v12 = 2;
    v8 = CFNumberCreate(v6, kCFNumberIntType, &v12);
    CopyWithFeature = CTFontDescriptorCreateCopyWithFeature(explicit, v7, v8);

    v10 = CTFontCreateWithFontDescriptor(CopyWithFeature, a2, 0);
    return v10;
  }
}

void RemoveIfValueEqual(atomic_ullong *a1, const void *a2, const __CFString *key)
{
  Value = CFDictionaryGetValue(atomic_load_explicit(a1, memory_order_acquire), key);
  if (Value == a2 || a2 && Value && CFEqual(a2, Value))
  {
    explicit = atomic_load_explicit(a1, memory_order_acquire);

    CFDictionaryRemoveValue(explicit, key);
  }
}

void TRubyAnnotationLine::InitWithAnnotation(TRubyAnnotationLine *this, atomic_ullong *a2, unsigned int a3, const __CFDictionary *a4, double a5, int a6)
{
  v48 = 0;
  explicit = atomic_load_explicit(a2 + 7, memory_order_acquire);
  if (explicit)
  {
    Length = CFAttributedStringGetLength(explicit);
    if (Length)
    {
      v14 = Length;
      v15 = *MEMORY[0x1E695E480];
      MutableCopy = CFAttributedStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, explicit);
      v45[0] = MEMORY[0x1E69E9820];
      v45[1] = 3321888768;
      v45[2] = ___ZN19TRubyAnnotationLine18InitWithAnnotationERK15TRubyAnnotation14CTRubyPositionPK14__CFDictionarydb_block_invoke;
      v45[3] = &unk_1EF258878;
      v45[4] = a4;
      v46 = MutableCopy;
      v47 = a3;
      [(__CFAttributedString *)explicit enumerateAttributesInRange:0 options:v14 usingBlock:0, v45];
      Value = CFDictionaryGetValue(a4, @"NSFont");
      if (Value)
      {
        v18 = *(Value[5] + 24);
      }

      else
      {
        v18 = 0.0;
      }

      if (*(a2 + 72) == 1)
      {
        v19 = v18 * v14;
        if (v19 > a5)
        {
          v20 = CTFontCreateWithFontDescriptor(atomic_load_explicit((Value[5] + 16), memory_order_acquire), v18 * a5 / v19, 0);
          v49.location = 0;
          v49.length = v14;
          CFAttributedStringSetAttribute(MutableCopy, v49, @"NSFont", v20);
        }
      }

      if (a3 == 2)
      {
        String = CFAttributedStringGetString(explicit);
        LOBYTE(v42) = 0;
        if (HasToneString(String, &v42))
        {
          v22 = v14 - 1;
          v53.location = v22;
          v53.length = 1;
          v23 = CFAttributedStringCreateWithSubstring(v15, MutableCopy, v53);
          v50.location = v22;
          v50.length = 1;
          CFAttributedStringReplaceString(MutableCopy, v50, &stru_1EF25C610);
          if (v42 != 1)
          {
            CreateLine(v23, a6);
          }

          v51.location = 0;
          v51.length = 0;
          CFAttributedStringReplaceAttributedString(MutableCopy, v51, v23);
          *(this + 65) = 1;
        }
      }

      v38 = MutableCopy;
      TCFRef<__CTFont const*>::Retain(&v48, v38);

      v39 = MutableCopy;
      goto LABEL_28;
    }
  }

  if (a3 <= 3)
  {
    v24 = &a2[a3];
    v25 = v24[2];
    if (v25)
    {
      v26 = CFStringGetLength(v24[2]);
      if (v26)
      {
        v27 = v26;
        v44 = 0xAAAAAAAAAAAAAAAALL;
        TCFMutableDictionary::TCFMutableDictionary(&v44, a4);
        v28 = CFDictionaryGetValue(atomic_load_explicit(&v44, memory_order_acquire), @"NSFont");
        if (v28)
        {
          v29 = *(*(v28 + 5) + 24);
        }

        else
        {
          v29 = 0.0;
        }

        RubyFont = CreateRubyFont(v28, v29, a3);
        v31 = RubyFont;
        if (*(a2 + 72) == 1)
        {
          v32 = v29 * v27;
          if (v32 > a5)
          {
            v33 = CTFontCreateWithFontDescriptor(atomic_load_explicit((*(RubyFont + 5) + 16), memory_order_acquire), v29 * a5 / v32, 0);
            CFDictionarySetValue(atomic_load_explicit(&v44, memory_order_acquire), @"NSFont", v33);
          }
        }

        v34 = *MEMORY[0x1E695E480];
        v35 = CFStringCreateMutableCopy(*MEMORY[0x1E695E480], 0, v25);
        if (a3 == 2)
        {
          v36 = atomic_load_explicit(&v44, memory_order_acquire);
          CFDictionarySetValue(v36, @"CTVerticalForms", *MEMORY[0x1E695E4D0]);
          v43 = 0;
          if (HasToneString(v25, &v43))
          {
            v52.location = v27 - 1;
            v52.length = 1;
            CFStringDelete(v35, v52);
            if (!v43)
            {
              v54.location = v27 - 1;
              v54.length = 1;
              v40 = CFStringCreateWithSubstring(v34, v25, v54);
              v41 = CFAttributedStringCreate(v34, v40, atomic_load_explicit(&v44, memory_order_acquire));
              CreateLine(v41, a6);
            }

            ToneString = GetToneString(5);
            CFStringInsert(v35, 0, ToneString);
            *(this + 65) = 1;
          }
        }

        v42 = CFAttributedStringCreate(v34, v35, atomic_load_explicit(&v44, memory_order_acquire));

        v39 = v44;
LABEL_28:

        CreateLine(atomic_load_explicit(&v48, memory_order_acquire), a6);
      }
    }
  }
}

void TRubyRun::UpdateWidth(TRubyRun *this, TLine *a2, uint64_t a3, double a4)
{
  if (*(this + 89) > 0.0)
  {
    return;
  }

  v7 = this + 192;
  v8 = *(this + 328);
  v9 = *(this + 329);
  v10 = *(this + 39);
  if (!v10)
  {
    v10 = MEMORY[0x1E695F060];
  }

  v11 = *(this + 24) + *v10;
  v12 = *(*(atomic_load_explicit(this + 7, memory_order_acquire) + 40) + 24);
  v13 = *(this + 90);
  *(this + 90) = v11;
  v14 = 2;
  if (v13)
  {
    v14 = 3;
  }

  v15 = 448;
  v16 = v11;
  do
  {
    if (v16 < *(this + v15))
    {
      v16 = *(this + v15);
    }

    v15 += 72;
    --v14;
  }

  while (v14);
  v17 = *(this + 27);
  v18 = *(v17 + 32);
  if (v18 || (v21 = *(v17 + 24)) == 0)
  {
    v19 = 0;
    v20 = v18 + 16 * *(this + 25);
  }

  else
  {
    v20 = v21 + 8 * *(this + 25);
    v19 = 1;
  }

  v22 = v12 * 0.25;
  v23 = 0.0;
  if (v16 <= v11)
  {
    v91 = *(this + 26);
    v28 = 0;
    v29 = 0.0;
    goto LABEL_105;
  }

  if (!a2)
  {
    return;
  }

  v91 = *(this + 26);
  v24 = a3 - 1;
  if (a3 < 1)
  {
    v28 = 0;
  }

  else
  {
    v25 = *(a2 + 2);
    if (v24 >= (*(a2 + 3) - v25) >> 3)
    {
      goto LABEL_140;
    }

    v26 = *(*(v25 + 8 * v24) + 40);
    v27 = (*(*v26 + 120))(v26);
    if (v9 < 2)
    {
      v28 = v27;
    }

    else
    {
      v28 = 0;
    }
  }

  v30 = *(a2 + 2);
  v31 = (*(a2 + 3) - v30) >> 3;
  if ((v31 - 1) <= a3)
  {
LABEL_28:
    v33 = 0;
    goto LABEL_29;
  }

  if (v31 <= a3 + 1)
  {
LABEL_140:
    __break(1u);
    return;
  }

  v32 = *(*(v30 + 8 * (a3 + 1)) + 40);
  if (!(*(*v32 + 120))(v32))
  {
    goto LABEL_28;
  }

  v33 = (v9 & 0xFD) == 0;
LABEL_29:
  v34 = *(this + 26);
  if (v34 < 1)
  {
    v35 = 0;
  }

  else
  {
    v35 = 0;
    v36 = *(this + 27);
    v37 = *(this + 25);
    do
    {
      v38 = *(*(v36 + 40) + 4 * v37);
      v39 = (v38 & 0x1040) == 0 && (v38 & 0x20) == 0 && *(*(v36 + 16) + 2 * v37) != -1;
      v35 += v39;
      ++v37;
      --v34;
    }

    while (v34);
  }

  v41 = v16 - v11;
  v29 = 0.0;
  if (v8 <= 3)
  {
    if (v8)
    {
      if (v8 == 1)
      {
LABEL_89:
        v65 = 0;
        if (v8 == 3)
        {
          v41 = 0.0;
        }

        if (v22 > v29)
        {
          v66 = v29;
        }

        else
        {
          v66 = v22;
        }

        if (v28)
        {
          v67 = v66;
        }

        else
        {
          v67 = 0.0;
        }

        if (v22 > v41)
        {
          v68 = v41;
        }

        else
        {
          v68 = v22;
        }

        if (v33)
        {
          v69 = v68;
        }

        else
        {
          v69 = 0.0;
        }

        v70 = v29 - v67;
        v29 = v41 - v69;
        v71 = v70;
        TRun::AdvanceInitialAdvance(this, *(&v65 - 1));
        *(this + 93) = v70;
        *(this + 94) = 0;
        v16 = v16 - (v67 + v69);
        goto LABEL_105;
      }

      if (v8 == 3)
      {
LABEL_88:
        v29 = v41;
        goto LABEL_89;
      }

LABEL_87:
      v41 = v41 * 0.5;
      goto LABEL_88;
    }

LABEL_48:
    if (v22 > v41 * 0.5)
    {
      v42 = v41 * 0.5;
    }

    else
    {
      v42 = v22;
    }

    if (v28)
    {
      v43 = v42;
    }

    else
    {
      v43 = 0.0;
    }

    if (!v33)
    {
      v42 = 0.0;
    }

    v44 = (v41 - (v43 + v42)) / v35;
    v45 = v16 - (v43 + v42);
    if (v8 == 4)
    {
      v44 = 0.0;
    }

    v46 = v45 - v44;
    v47 = v16 - v46;
    v48 = v46 - v11;
    if (v35 >= 2)
    {
      v49 = v48 / (v35 - 1);
    }

    else
    {
      v49 = 0.0;
    }

    if (v43 <= 0.0 || v42 <= 0.0)
    {
      v52 = v42 < 0.0;
      v51 = v47 - v42;
      if (v52)
      {
        v51 = 0.0;
      }

      v53 = v47 - v43;
      if (v43 <= 0.0)
      {
        v50 = 0.0;
      }

      else
      {
        v51 = 0.0;
        v50 = v53;
      }
    }

    else
    {
      v50 = v47 * 0.5 - v43;
      v51 = v47 * 0.5 - v42;
    }

    v54 = v48 * 0.5;
    v55 = v54 + v50;
    v56 = v54 + v51;
    if (v35 >= 2)
    {
      v29 = v51;
    }

    else
    {
      v29 = v56;
    }

    if (v35 >= 2)
    {
      v57 = v50;
    }

    else
    {
      v57 = v55;
    }

    v93.height = 0.0;
    v93.width = v57;
    TRun::AdvanceInitialAdvance(this, v93);
    *(this + 93) = v57;
    *(this + 94) = 0;
    if (v91 < 2)
    {
      v16 = v45;
    }

    else
    {
      v58 = 0;
      v90 = v20;
      do
      {
        v59 = *(this + 27);
        v60 = *(this + 25);
        v61 = *(*(v59 + 40) + 4 * v60 + 4 * v58);
        if ((v61 & 0x1040) == 0 && (v61 & 0x20) == 0 && *(*(v59 + 16) + 2 * v60 + 2 * v58) != 0xFFFF)
        {
          if (v19)
          {
            v62 = (v90 + 8 * v58);
            v63 = 0;
          }

          else
          {
            v63 = *(v20 + 8);
            v62 = v20;
          }

          v64 = v49 + *v62;
          TStorageRange::SetAdvance(v7, v58, *(&v63 - 1));
        }

        ++v58;
        v20 += 16;
      }

      while (v91 - 1 != v58);
      v16 = v45;
      v20 = v90;
    }

    goto LABEL_105;
  }

  if ((v8 - 4) < 2)
  {
    goto LABEL_48;
  }

  if (v8 != 6)
  {
    goto LABEL_87;
  }

LABEL_105:
  TRubyAnnotationLine::UpdateWidth((v7 + 216), v8, v28, v11, v22);
  TRubyAnnotationLine::UpdateWidth((this + 480), v8, v28, v11, v22);
  if (atomic_load_explicit(this + 69, memory_order_acquire))
  {
    v72 = *(this + 71) + *(this + 72);
    if (v13)
    {
      v23 = 0.0;
    }

    else
    {
      v23 = v72 + 0.0;
    }

    if (v8 == 2)
    {
      v73 = *(this + 74);
      if (*(this + 617) == 1)
      {
        v74 = *(atomic_load_explicit(this + 69, memory_order_acquire) + 40);
        if (v74)
        {
          v76 = v74 + 16;
          v75 = *(v74 + 16);
          if (*(v76 + 8) - v75 >= 1)
          {
            v77 = *(*v75 + 40);
            if (v77)
            {
              v92.location = 0;
              v92.length = 1;
              Width = TStorageRange::GetWidth((v77 + 192), v92);
              v79 = *(v77 + 312);
              if (!v79)
              {
                v79 = MEMORY[0x1E695F060];
              }

              v80 = Width + *v79;
              if (!v13)
              {
                v80 = -v80;
              }

              v73 = v73 + v80;
            }
          }
        }
      }

      Descent = TRun::GetDescent(this);
      v82 = Descent + TRun::GetAscent(this) - v73;
      if (v82 > 0.0)
      {
        *(this + 75) = v82 * 0.5;
      }
    }

    if (atomic_load_explicit(this + 70, memory_order_acquire))
    {
      v83 = 0.0;
      if (v13)
      {
        v23 = 0.0;
      }

      else
      {
        v23 = v72 + v72 + 0.0;
      }

      explicit = atomic_load_explicit(this + 70, memory_order_acquire);
      if (explicit)
      {
        v83 = *(*(explicit + 40) + 104);
      }

      *(this + 76) = *(this + 75) + (*(this + 74) - v83) * 0.5;
    }
  }

  if (atomic_load_explicit(this + 78, memory_order_acquire))
  {
    *(this + 84) = v11 + v23;
    v23 = v23 + *(this + 83);
  }

  if (v23 >= v29)
  {
    v85 = v23;
  }

  else
  {
    v85 = v29;
  }

  if (v85 > 0.0)
  {
    v86 = v91 - 1;
    if (v19)
    {
      v87 = v20 + 8 * v86;
      v88 = 0;
    }

    else
    {
      v87 = v20 + 16 * v86;
      v88 = *(v87 + 8);
    }

    v89 = v85 + *v87;
    TStorageRange::SetAdvance(v7, v86, *(&v88 - 1));
  }

  TRubyRun::AdvanceRubyLinesInitialAdvance(this, 0.0);
  *(this + 89) = v16 + v23;
}

void TRubyAnnotationLine::UpdateWidth(TRubyAnnotationLine *this, int a2, int a3, double a4, double a5)
{
  if (atomic_load_explicit(this, memory_order_acquire))
  {
    v7 = a4 - *(this + 5);
    if (v7 > 0.0)
    {
      if (a2 > 3)
      {
        if ((a2 - 4) >= 2)
        {
          if (a2 == 6)
          {
            return;
          }

          goto LABEL_36;
        }
      }

      else if (a2)
      {
        if (a2 != 1)
        {
          if (a2 == 3)
          {
LABEL_45:
            *(this + 6) = v7;
            return;
          }

LABEL_36:
          v7 = v7 * 0.5;
          goto LABEL_45;
        }

LABEL_37:
        v7 = 0.0;
        goto LABEL_45;
      }

      v9 = *(atomic_load_explicit(this, memory_order_acquire) + 40);
      v10 = *(v9 + 16);
      v11 = (*(v9 + 24) - v10) >> 3;
      if (v11 >= 1)
      {
        v12 = 0;
        for (i = 0; i != v11; ++i)
        {
          v14 = *(*(v10 + 8 * i) + 40);
          v15 = v14[26];
          if (v15 < 1)
          {
            v16 = 0;
          }

          else
          {
            v16 = 0;
            v17 = v14[27];
            v18 = v14[25];
            do
            {
              v19 = *(*(v17 + 40) + 4 * v18);
              v20 = (v19 & 0x1040) == 0 && (v19 & 0x20) == 0 && *(*(v17 + 16) + 2 * v18) != -1;
              v16 += v20;
              ++v18;
              --v15;
            }

            while (v15);
          }

          v12 += v16;
        }

        if (v12 >= 2)
        {
          v22 = 0.0;
          if (a2 != 4)
          {
            v22 = v7 / v12;
          }

          v23 = a4 - v22;
          JustifiedLine = CTLineCreateJustifiedLine(atomic_load_explicit(this, memory_order_acquire), 1.0, a4 - v22);
          if (JustifiedLine)
          {
            v25 = JustifiedLine;
            TCFRef<__CTFont const*>::Retain(this, JustifiedLine);
            CFRelease(v25);
            *(this + 5) = v23;
          }
        }
      }

      v7 = a4 - *(this + 5);
      goto LABEL_36;
    }

    if (v7 >= 0.0)
    {
      return;
    }

    if (a2 != 1)
    {
      if (a2 == 3)
      {
        v8 = -v7;
      }

      else
      {
        if (a2 == 6)
        {
          return;
        }

        v8 = v7 * -0.5;
      }

      if (v8 >= a5)
      {
        v8 = a5;
      }

      v7 = -v8;
      if (!a3)
      {
        v7 = -0.0;
      }

      goto LABEL_45;
    }

    goto LABEL_37;
  }
}

double TRubyRun::GetImageBounds(atomic_ullong *this, CGContext *a2, CFRange a3, double *a4, double *a5)
{
  ImageBounds = TRun::GetImageBounds(this, a2, a3, a4, a5);
  y = v7;
  width = v9;
  height = v11;
  v13 = 0;
  do
  {
    explicit = atomic_load_explicit(this + 51, memory_order_acquire);
    if (explicit)
    {
      v15 = *(explicit + 40);
      v22.length = v15[18];
      v22.location = 0;
      TLine::GetImageBounds(v15, 0, v22);
      v25.origin.x = v16;
      v25.origin.y = v17;
      v25.size.width = v18;
      v25.size.height = v19;
      v23.origin.x = ImageBounds;
      v23.origin.y = y;
      v23.size.width = width;
      v23.size.height = height;
      v24 = CGRectUnion(v23, v25);
      ImageBounds = v24.origin.x;
      y = v24.origin.y;
      width = v24.size.width;
      height = v24.size.height;
    }
  }

  while (v13++ < 3);
  return ImageBounds;
}

void *TRubyRun::CopyDescriptionDictionary(TRubyRun *this, uint64_t a2)
{
  v17[6] = *MEMORY[0x1E69E9840];
  v11 = [TRun::CopyDescriptionDictionary(this a2)];
  v4 = [MEMORY[0x1E695DF90] dictionary];
  v5 = 0;
  v6 = &off_1E6E3DD30;
  do
  {
    v7 = (this + v5);
    if (atomic_load_explicit((this + v5 + 408), memory_order_acquire))
    {
      v16[0] = @"ascent";
      v17[0] = [MEMORY[0x1E696AD98] numberWithDouble:v7[53]];
      v16[1] = @"descent";
      v17[1] = [MEMORY[0x1E696AD98] numberWithDouble:v7[54]];
      v16[2] = @"leading";
      v17[2] = [MEMORY[0x1E696AD98] numberWithDouble:v7[55]];
      v16[3] = @"width";
      v17[3] = [MEMORY[0x1E696AD98] numberWithDouble:v7[56]];
      v16[4] = @"initialOffset";
      v17[4] = [MEMORY[0x1E696AD98] numberWithDouble:v7[57]];
      v16[5] = @"line";
      v17[5] = CTCopyDescriptionDictionary(atomic_load_explicit((this + v5 + 408), memory_order_acquire), a2);
      [v4 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v17, v16, 6), *v6}];
    }

    ++v6;
    v5 += 72;
  }

  while (v5 != 288);
  [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", TRun::GetAscent(this)), @"baseAscent"}];
  [v11 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithDouble:", TRun::GetDescent(this)), @"baseDescent"}];
  v14[0] = @"baseInitialAdvance";
  v12[0] = @"width";
  v8 = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 93)];
  v12[1] = @"height";
  v13[0] = v8;
  v13[1] = [MEMORY[0x1E696AD98] numberWithDouble:*(this + 94)];
  v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:v12 count:2];
  v14[1] = @"lines";
  v15[0] = v9;
  v15[1] = v4;
  [v11 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKeyedSubscript:{"dictionaryWithObjects:forKeys:count:", v15, v14, 2), @"rubyAnnotations"}];
  return v11;
}

void TRubyRun::CopyRubyAnnotationLineForPosition(atomic_ullong *this@<X0>, unsigned int a2@<W1>, void *a3@<X8>)
{
  if (a2 == 5)
  {
    v4 = 2;
  }

  else
  {
    v4 = a2;
  }

  if (v4 > 3)
  {
    *a3 = 0;
  }

  else
  {
    v5 = atomic_load_explicit(&this[9 * v4 + 51 + (a2 == 5)], memory_order_acquire);
    *a3 = atomic_exchange(&v5, 0);
  }
}

uint64_t ___ZN19TRubyAnnotationLine18InitWithAnnotationERK15TRubyAnnotation14CTRubyPositionPK14__CFDictionarydb_block_invoke(uint64_t a1, uint64_t a2, CFIndex a3, CFIndex a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v18 = 0u;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = *(a1 + 32);
  result = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
  if (result)
  {
    v9 = result;
    v10 = *v19;
    do
    {
      v11 = 0;
      do
      {
        if (*v19 != v10)
        {
          objc_enumerationMutation(v7);
        }

        v12 = *(*(&v18 + 1) + 8 * v11);
        Value = CFDictionaryGetValue(*(a1 + 32), v12);
        if (Value)
        {
          v14 = Value;
          if (v12 == @"NSFont" || @"NSFont" && v12 && CFEqual(v12, @"NSFont"))
          {
            RubyFont = CreateRubyFont(v14, *(*(v14 + 5) + 24), *(a1 + 48));
            v24.location = a3;
            v24.length = a4;
            CFAttributedStringSetAttribute(atomic_load_explicit((a1 + 40), memory_order_acquire), v24, v12, RubyFont);
          }
        }

        else
        {
          explicit = atomic_load_explicit((a1 + 40), memory_order_acquire);
          v17 = [*(a1 + 32) objectForKeyedSubscript:v12];
          v25.location = a3;
          v25.length = a4;
          CFAttributedStringSetAttribute(explicit, v25, v12, v17);
        }

        ++v11;
      }

      while (v9 != v11);
      result = [v7 countByEnumeratingWithState:&v18 objects:v22 count:16];
      v9 = result;
    }

    while (result);
  }

  return result;
}

id __copy_helper_block_8_40c36_ZTS6TCFRefIP20__CFAttributedStringE(uint64_t a1, uint64_t a2)
{
  result = atomic_load_explicit((a2 + 40), memory_order_acquire);
  *(a1 + 40) = result;
  return result;
}

BOOL HasToneString(const __CFString *a1, BOOL *a2)
{
  ToneString = GetToneString(5);
  if (CFStringHasSuffix(a1, ToneString))
  {
    result = 1;
    *a2 = 1;
  }

  else
  {
    v6 = GetToneString(2);
    if (CFStringHasSuffix(a1, v6))
    {
      return 1;
    }

    v7 = GetToneString(3);
    if (CFStringHasSuffix(a1, v7))
    {
      return 1;
    }

    else
    {
      v8 = GetToneString(4);
      return CFStringHasSuffix(a1, v8) != 0;
    }
  }

  return result;
}

void CreateLine(const __CFAttributedString *a1, int a2)
{
  keys[34] = *MEMORY[0x1E69E9840];
  v4 = 0;
  if (a2)
  {
    values = *MEMORY[0x1E695E4D0];
    keys[0] = @"CTTypesetterOptionVerticalLayout";
    v3 = CFDictionaryCreate(*MEMORY[0x1E695E480], keys, &values, 1, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  }

  memcpy(keys, &unk_184773BD8, 0x110uLL);
  TTypesetterAttrString::TTypesetterAttrString(keys, a1, atomic_load_explicit(&v4, memory_order_acquire));
}

uint64_t GetToneString(int a1)
{
  if (a1 > 3)
  {
    if (a1 == 4)
    {
      v3 = 715;
      if ((atomic_load_explicit(&qword_1ED567C80, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED567C80))
      {
        qword_1ED567C78 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], &v3, 1);
        __cxa_guard_release(&qword_1ED567C80);
      }

      return qword_1ED567C78;
    }

    else
    {
      v2 = 729;
      if ((atomic_load_explicit(&qword_1ED567C90, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED567C90))
      {
        qword_1ED567C88 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], &v2, 1);
        __cxa_guard_release(&qword_1ED567C90);
      }

      return qword_1ED567C88;
    }
  }

  else if (a1 == 2)
  {
    chars = 714;
    if ((atomic_load_explicit(&qword_1ED567C60, memory_order_acquire) & 1) == 0)
    {
      if (__cxa_guard_acquire(&qword_1ED567C60))
      {
        qword_1ED567C58 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], &chars, 1);
        __cxa_guard_release(&qword_1ED567C60);
      }
    }

    return qword_1ED567C58;
  }

  else
  {
    v4 = 711;
    if ((atomic_load_explicit(&qword_1ED567C70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED567C70))
    {
      qword_1ED567C68 = CFStringCreateWithCharacters(*MEMORY[0x1E695E480], &v4, 1);
      __cxa_guard_release(&qword_1ED567C70);
    }

    return qword_1ED567C68;
  }
}

void TRubyRun::~TRubyRun(id *this)
{
  v2 = 0;
  *this = &unk_1EF2587D0;
  do
  {

    v2 -= 9;
  }

  while (v2 != -36);
  TRubyAnnotation::~TRubyAnnotation(this + 41);

  TRun::~TRun(this);
}

{
  v2 = 0;
  *this = &unk_1EF2587D0;
  do
  {

    v2 -= 9;
  }

  while (v2 != -36);
  TRubyAnnotation::~TRubyAnnotation(this + 41);

  TRun::~TRun(this);

  JUMPOUT(0x1865F22D0);
}

uint64_t TRubyRun::FindBreak@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, const TCharStream *a3@<X2>, int a4@<W3>, uint64_t a5@<X8>, double a6@<D0>)
{
  v6 = result;
  if (atomic_load_explicit((result + 408), memory_order_acquire))
  {
LABEL_2:
    v8 = *(result + 712);
    if (v8 > 0.0)
    {
      v9 = *(result + 8) - a2 + *(result + 16);
      v10 = v8 <= a6;
      if (v8 > a6)
      {
        v9 = 0;
      }

      v11 = 0.0;
      *a5 = 0;
      if (v10)
      {
        v11 = v8;
      }

      *(a5 + 8) = v9;
      *(a5 + 16) = v11;
      return result;
    }
  }

  else
  {
    v12 = (result + 480);
    v13 = -1;
    while (v13 != 2)
    {
      explicit = atomic_load_explicit(v12, memory_order_acquire);
      ++v13;
      v12 += 9;
      if (explicit)
      {
        if (v13 <= 2)
        {
          goto LABEL_2;
        }

        break;
      }
    }
  }

  *a5 = 0xAAAAAAAAAAAAAAAALL;
  *(a5 + 8) = 0xAAAAAAAAAAAAAAAALL;
  *(a5 + 16) = -1;
  result = TRun::FindBreak(result, a2, a3, a4, a5, a6);
  if (*(v6 + 712) <= 0.0)
  {
    *a5 |= 8u;
  }

  return result;
}

CFSetRef GetValidRubyAttributes(void)::$_0::__invoke()
{
  values[12] = *MEMORY[0x1E69E9840];
  values[0] = @"CTBackgroundColor";
  values[1] = @"CTBaselineOffset";
  values[2] = @"NSFont";
  values[3] = @"CTForegroundColor";
  values[4] = @"NSKern";
  values[5] = @"NSLanguage";
  values[6] = @"NSLigature";
  values[7] = @"CTRenderingStyle";
  values[8] = @"NSStrokeWidth";
  values[9] = @"CTStrokeColor";
  values[10] = @"CTTracking";
  values[11] = @"NSBackgroundColor";
  result = CFSetCreate(*MEMORY[0x1E695E480], values, 12, MEMORY[0x1E695E9F8]);
  _MergedGlobals_19 = result;
  return result;
}

uint64_t OTL::GSUB::ApplyMultipleSubst(uint64_t a1, uint64_t a2, int64_t *a3, unsigned int a4, _WORD *a5, uint64_t a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v6 = *(a1 + 40);
  v7 = a2 + 6;
  if (a2 + 6 > v6)
  {
    return 0;
  }

  v11 = bswap32(*(a2 + 4)) >> 16;
  v12 = v7 + 2 * v11;
  v13 = v12 < v7 || v12 > v6;
  v14 = !v13;
  v15 = a2 + 8 <= v6 ? (v6 - v7) >> 1 : 0;
  if (!v14 && v15 != v11 || v11 < a4)
  {
    return 0;
  }

  v16 = a4 - 1;
  if (v14)
  {
    if (v16 >= v11)
    {
      return 0;
    }
  }

  else if (v15 != v11 || v16 >= v11)
  {
    return 0;
  }

  v18 = (a2 + (bswap32(*(v7 + 2 * v16)) >> 16));
  v19 = v18 + 1;
  if ((v18 + 1) <= v6)
  {
    v21 = *v18;
    v22 = bswap32(*v18) >> 16;
    v23 = &v19[v22];
    v24 = (v18 + 2) <= v6 ? (v6 - v19) >> 1 : 0;
    v25 = v23 <= v6 && v23 >= v19;
    if (v25 || v24 == v22)
    {
      if (v21)
      {
        std::__function::__value_func<void ()(CFRange,long)>::__value_func[abi:fn200100](v29, a6);
        v27 = TGlyphIterator::ReplaceWithGlyphs(a3, v22, v19, v29);
        std::__function::__value_func<void ()(CFRange,long)>::~__value_func[abi:fn200100](v29);
        if (!v27)
        {
          result = 1;
          **(a6 + 32) = 1;
          return result;
        }

        v28 = a3[9];
        a3[9] = 0;
        TGlyphIterator::Next(a3, (v22 - 1));
        a3[9] = v28;
      }

      else
      {
        TRunGlue::Delete(*a3, a3[6], 0);
        ++*a5;
      }

      return 1;
    }
  }

  return 0;
}

uint64_t OTL::GSUB::ApplyAlternateSubst(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, unsigned int a5, uint64_t a6)
{
  v12 = *(a3 + 48);
  v34[0] = *a3;
  v34[1] = v12;
  v13 = TRunGlue::TGlyph::glyphID(v34);
  v14 = *(a1 + 40);
  v15 = a2 + 6;
  if (a2 + 6 > v14)
  {
    return 0;
  }

  v16 = v13;
  v17 = bswap32(*(a2 + 4)) >> 16;
  v18 = v15 + 2 * v17;
  v19 = v18 < v15 || v18 > v14;
  v20 = !v19;
  v21 = a2 + 8 <= v14 ? (v14 - v15) >> 1 : 0;
  if (!v20 && v21 != v17)
  {
    return 0;
  }

  if (v17 >= a4)
  {
    v22 = a4 - 1;
    if (v20)
    {
      if (v22 >= v17)
      {
        goto LABEL_37;
      }
    }

    else if (v21 != v17 || v22 >= v17)
    {
      goto LABEL_37;
    }

    v24 = (a2 + (bswap32(*(v15 + 2 * v22)) >> 16));
    v25 = v24 + 1;
    if ((v24 + 1) <= v14)
    {
      v26 = bswap32(*v24) >> 16;
      v27 = &v25[v26];
      if ((v24 + 2) <= v14)
      {
        v28 = (v14 - v25) >> 1;
      }

      else
      {
        v28 = 0;
      }

      if ((v27 <= v14 && v27 >= v25 || v28 == v26) && v26 > a5)
      {
        v16 = bswap32(v25[a5]) >> 16;
      }
    }
  }

LABEL_37:
  TRunGlue::SetGlyphID<true>(*a3, v12, v16);
  v32 = 1;
  std::function<void ()(CFRange,long)>::operator()(a6, v12, 1, 1);
  return v32;
}

unsigned __int16 *EqualSequenceAndNote<BigEndianScalar<unsigned short>>(unsigned __int16 *a1, unsigned __int16 *a2, TGlyphIterator *a3, void *a4)
{
  v4 = a1;
  if (a1 != a2)
  {
    do
    {
      v8 = *(a3 + 6);
      v10[0] = *a3;
      v10[1] = v8;
      if (TRunGlue::TGlyph::glyphID(v10) != bswap32(*v4) >> 16)
      {
        break;
      }

      *a4 = *(a3 + 6);
      if (++v4 == a2)
      {
        break;
      }

      ++a4;
    }

    while ((TGlyphIterator::Next(a3, 1) & 1) != 0);
  }

  return v4;
}

uint64_t OTL::GSUB::WouldSubstituteLigature(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, unsigned int a5)
{
  v5 = *(a1 + 40);
  v6 = a2 + 6;
  if ((a2 + 4) < *(a1 + 32) || v6 > v5)
  {
    return 0;
  }

  v8 = bswap32(*(a2 + 4)) >> 16;
  v9 = v6 + 2 * v8;
  v10 = v9 < v6 || v9 > v5;
  v11 = !v10;
  v12 = a2 + 8 <= v5 ? (v5 - v6) >> 1 : 0;
  if (!v11 && v12 != v8 || v8 < a3)
  {
    return 0;
  }

  v13 = a3 - 1;
  if (v11)
  {
    if (v13 >= v8)
    {
      return 0;
    }
  }

  else if (v12 != v8 || v13 >= v8)
  {
    return 0;
  }

  v15 = (a2 + (bswap32(*(v6 + 2 * v13)) >> 16));
  v16 = v15 + 1;
  if ((v15 + 1) <= v5)
  {
    v17 = bswap32(*v15) >> 16;
    v18 = &v16[v17];
    v19 = v18 < v16 || v18 > v5;
    v20 = !v19;
    v21 = (v15 + 2) <= v5 ? (v5 - v16) >> 1 : 0;
    v22 = v21 == v17 || v20;
    if (v22 == 1 && *v15 != 0)
    {
      v25 = 0;
      v26 = (a4 + 2);
      while (1)
      {
        if (v20)
        {
          if (v25 >= v17)
          {
            return 0;
          }
        }

        else
        {
          result = 0;
          if (v21 != v17 || v25 >= v17)
          {
            return result;
          }
        }

        v27 = v15 + (bswap32(v16[v25]) >> 16);
        v28 = (v27 + 4);
        if ((v27 + 4) > v5)
        {
          break;
        }

        v29 = *(v27 + 1);
        v30 = bswap32(v29) >> 16;
        v31 = &v28[v30 - 1];
        v32 = (v27 + 6) <= v5 ? (v5 - v28) >> 1 : 0;
        v33 = v31 <= v5 && v31 >= v28;
        if (!v33 && v32 != v30 - 1)
        {
          break;
        }

        if (v29)
        {
          v35 = v30 > a5;
        }

        else
        {
          v35 = 1;
        }

        if (!v35)
        {
          v36 = (v30 - 1);
          v37 = v26;
          while (v36)
          {
            v39 = *v37++;
            v38 = v39;
            v40 = *v28++;
            --v36;
            if (v38 != bswap32(v40) >> 16)
            {
              goto LABEL_68;
            }
          }

          return 1;
        }

LABEL_68:
        result = 0;
        if (++v25 == v17)
        {
          return result;
        }
      }
    }
  }

  return 0;
}

unsigned __int16 *ContextSubstFormat1::NthSubRuleSet(ContextSubstFormat1 *this, unsigned int a2, unint64_t a3)
{
  if (a2 >= bswap32(*(this + 2)) >> 16)
  {
    return 0;
  }

  v3 = (this + (bswap32(*(this + a2 + 3)) >> 16));
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

uint64_t OTL::GSUB::ApplyContextSubstFormat1(uint64_t a1, ContextSubstFormat1 *this, TGlyphIterator *a3, int a4, _WORD *a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 40);
  v8 = this + 6;
  if (this + 4 < *(a1 + 32) || v8 > v7)
  {
    return 0;
  }

  v11 = bswap32(*(this + 2)) >> 16;
  v12 = &v8[2 * v11];
  v13 = this + 8 <= v7 ? (v7 - v8) >> 1 : 0;
  v14 = v12 <= v7 && v12 >= v8;
  if (!v14 && v13 != v11)
  {
    return 0;
  }

  v21 = *(a3 + 6);
  *&v22 = 0xAAAAAAAAAAAAAAAALL;
  *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v55[29] = v22;
  v55[30] = v22;
  v55[27] = v22;
  v55[28] = v22;
  v55[25] = v22;
  v55[26] = v22;
  v55[23] = v22;
  v55[24] = v22;
  v55[21] = v22;
  v55[22] = v22;
  v55[19] = v22;
  v55[20] = v22;
  v55[17] = v22;
  v55[18] = v22;
  v55[16] = v22;
  v56 = 0xAAAAAAAAAAAAAAAALL;
  v55[15] = v22;
  v55[14] = v22;
  v55[13] = v22;
  v55[12] = v22;
  v55[11] = v22;
  v55[10] = v22;
  v55[9] = v22;
  v55[8] = v22;
  v55[7] = v22;
  v55[5] = v22;
  v55[6] = v22;
  v55[3] = v22;
  v55[4] = v22;
  v55[1] = v22;
  v55[2] = v22;
  v55[0] = v22;
  v54 = v21;
  result = ContextSubstFormat1::NthSubRuleSet(this, a4 - 1, v7);
  if (result)
  {
    v24 = result;
    if (TGlyphIterator::Next(a3, 1))
    {
      v25 = *(a3 + 6);
      v53[0] = *a3;
      v53[1] = v25;
      v26 = TRunGlue::TGlyph::glyphID(v53);
      v27 = v25;
    }

    else
    {
      v26 = 0xFFFF;
      v27 = v21;
    }

    v28 = (v24 + 1);
    v52 = a3;
    v47 = a6;
    v48 = a5;
    v45 = a7;
    v46 = a1;
    if (v24 + 1 < this || (v29 = __rev16(*v24), v30 = v28 + 2 * v29, v30 < v28) || v30 > v7)
    {
      v31 = (v24 + 2) <= v7 && v28 >= this;
      v29 = (v7 - v28) >> 1;
      if (!v31)
      {
        v29 = 0;
      }

      if (!(bswap32(v29) >> 16))
      {
        goto LABEL_65;
      }
    }

    else if (!*v24)
    {
LABEL_65:
      result = 0;
      *(v52 + 6) = v21;
      return result;
    }

    v32 = 0;
    if ((v29 & 0xFFFE) != 0)
    {
      v33 = v29;
    }

    else
    {
      v33 = 1;
    }

    v50 = v27;
    v51 = v21;
    v49 = v26;
    while (1)
    {
      if (v32 < bswap32(*v24) >> 16)
      {
        v34 = (v24 + (bswap32(v24[v32 + 1]) >> 16));
        v35 = v34 + 2;
        if ((v34 + 2) <= v7)
        {
          if (*v34)
          {
            v36 = __rev16(*v34);
            if (v36 <= 0x40)
            {
              v37 = (v36 - 1);
              v38 = &v35[v37];
              if (v35 < this || v38 < v35 || v38 > v7)
              {
                v41 = (v34 + 3) <= v7 && v35 >= this;
                v42 = (v7 - v35) >> 1;
                if (!v41)
                {
                  v42 = 0;
                }

                if (v42 != v37)
                {
                  goto LABEL_65;
                }
              }

              v43 = &v34[v36 + 1];
              if (2 * v36 != 2 && v27 != v21 && v26 == bswap32(*v35) >> 16)
              {
                *&v55[0] = v27;
                v35 = v34 + 3;
                if (2 * v36 != 4)
                {
                  if (TGlyphIterator::Next(v52, 1))
                  {
                    v35 = EqualSequenceAndNote<BigEndianScalar<unsigned short>>(v34 + 3, v43, v52, v55 + 1);
                    v27 = v50;
                    *(v52 + 6) = v50;
                  }

                  else
                  {
                    v27 = v50;
                  }

                  v21 = v51;
                  v26 = v49;
                }
              }

              if (v35 == v43)
              {
                break;
              }
            }
          }
        }
      }

      if (v33 == ++v32)
      {
        goto LABEL_65;
      }
    }

    if (OTL::GSUB::ApplySubstLookupRecords(v46, this, v35, bswap32(v34[1]) >> 16, v52, v21, &v54, v36, v48, v47, v45))
    {
      TGlyphIterator::ClearSafeToBreakAfter(v52, &v54, v36);
    }

    return 1;
  }

  return result;
}

uint64_t OTL::GSUB::WouldSubstituteContext1(void *a1, ContextSubstFormat1 *this, int a3, uint64_t a4, unsigned int a5)
{
  v5 = a1[5];
  v6 = this + 6;
  if (this + 4 < a1[4] || v6 > v5)
  {
    return 0;
  }

  v9 = bswap32(*(this + 2)) >> 16;
  v10 = &v6[2 * v9];
  v11 = this + 8 <= v5 ? (v5 - v6) >> 1 : 0;
  v12 = v10 <= v5 && v10 >= v6;
  if (!v12 && v11 != v9)
  {
    return 0;
  }

  result = ContextSubstFormat1::NthSubRuleSet(this, a3 - 1, v5);
  if (!result)
  {
    return result;
  }

  v18 = result;
  v19 = result + 2;
  if (result + 2 < this || ((v20 = __rev16(*result), v21 = v19 + 2 * v20, v21 >= v19) ? (v22 = v21 > v5) : (v22 = 1), v22))
  {
    v23 = result + 4 <= v5 && v19 >= this;
    v20 = (v5 - v19) >> 1;
    if (!v23)
    {
      v20 = 0;
    }

    if (!(bswap32(v20) >> 16))
    {
      return 0;
    }

LABEL_30:
    v24 = 0;
    if ((v20 & 0xFFFE) != 0)
    {
      v25 = v20;
    }

    else
    {
      v25 = 1;
    }

    while (1)
    {
      if (v24 < bswap32(*v18) >> 16)
      {
        v26 = bswap32(*(v19 + 2 * v24)) >> 16;
        v27 = (v18 + v26);
        v28 = (v18 + v26 + 4);
        if (v28 <= v5)
        {
          v29 = __rev16(*v27);
          if (*v27 && v29 <= a5)
          {
            v31 = (v29 - 1);
            v32 = &v28[v31];
            if (v28 < this || v32 < v28 || v32 > v5)
            {
              v35 = (v27 + 3) <= v5 && v28 >= this;
              v36 = (v5 - v28) >> 1;
              if (!v35)
              {
                v36 = 0;
              }

              if (v36 != v31)
              {
                return 0;
              }
            }

            if (v29 < 2)
            {
LABEL_58:
              if (OTL::GSUB::WouldSubstituteLookupRecords(a1, this, v28, bswap32(v27[1]) >> 16, a4, a5))
              {
                return 1;
              }
            }

            else
            {
              v37 = (v19 + 2 * v29 + v26);
              v38 = v29 - 1;
              v39 = (a4 + 2);
              while (1)
              {
                v40 = *v39++;
                if (v40 != bswap32(*v28) >> 16)
                {
                  break;
                }

                ++v28;
                if (!--v38)
                {
                  v28 = v37;
                  goto LABEL_58;
                }
              }
            }
          }
        }
      }

      if (++v24 == v25)
      {
        return 0;
      }
    }
  }

  if (*result)
  {
    goto LABEL_30;
  }

  return 0;
}

uint64_t OTL::GSUB::WouldSubstituteLookupRecords(void *a1, unint64_t a2, unsigned __int16 *a3, int a4, uint64_t a5, unsigned int a6)
{
  if (!a4 || a3 < a2)
  {
    return 0;
  }

  v8 = a4;
  do
  {
    v10 = a3 + 2;
    if ((a3 + 2) > a1[5])
    {
      break;
    }

    v11 = bswap32(*a3);
    if (a6 > HIWORD(v11))
    {
      v12 = TBaseFont::NthLookup<OTL::GSUB>(*(a1[2] + 408), a1, bswap32(a3[1]) >> 16);
      if (v12)
      {
        v13 = v12;
        v27 = ((*(v12 + 26) - *(v12 + 24)) >> 6);
        if (((*(v12 + 26) - *(v12 + 24)) >> 6))
        {
          v14 = 0;
          v28 = a6 - HIWORD(v11);
          v29 = (a5 + 2 * HIWORD(v11));
          while (2)
          {
            v15 = v13[12];
            v16 = (v13[13] - v15) >> 6;
            v17 = v15 + (v14 << 6) + 8;
            v18 = v16 <= v14 ? 0 : v15 + (v14 << 6) + 8;
            if (v16 > v14)
            {
              v20 = v28;
              v19 = v29;
              do
              {
                v21 = *(v17 + 16);
                v22 = *(v17 + 24);
                v23 = (v18 + (v22 >> 1));
                if (v22)
                {
                  v21 = *(*v23 + v21);
                }

                if (v21(v23, *v19))
                {
                  v24 = v13[12];
                  v25 = v14 >= (v13[13] - v24) >> 6 ? 0 : *(v24 + (v14 << 6));
                  if (OTL::GSUB::WouldSubstituteSubtable(a1, v13, *(v13 + 8), v25))
                  {
                    return 1;
                  }
                }

                ++v19;
                --v20;
              }

              while (v20);
              if (++v14 != v27)
              {
                continue;
              }
            }

            break;
          }
        }
      }
    }

    a3 = v10;
    --v8;
  }

  while (v8);
  return 0;
}

unsigned __int16 *ContextSubstFormat2::NthSubClassSet(ContextSubstFormat2 *this, unsigned int a2, unint64_t a3)
{
  if (a2 >= bswap32(*(this + 3)) >> 16)
  {
    return 0;
  }

  if (!*(this + a2 + 4))
  {
    return 0;
  }

  v3 = (this + __rev16(*(this + a2 + 4)));
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

unsigned __int16 *OTL::GSUB::ApplyContextSubstFormat2(uint64_t a1, unsigned __int16 *a2, uint64_t *a3, _WORD *a4, uint64_t a5, uint64_t a6)
{
  v12 = a3[6];
  v64 = *a3;
  *&v65[0] = v12;
  v13 = TRunGlue::TGlyph::glyphID(&v64);
  v14 = *(a1 + 40);
  v15 = a2 + 4;
  if ((a2 + 3) < *(a1 + 32) || v15 > v14)
  {
    return 0;
  }

  v17 = bswap32(a2[3]) >> 16;
  v18 = &v15[v17];
  v19 = (a2 + 5) <= v14 ? (v14 - v15) >> 1 : 0;
  v20 = v18 <= v14 && v18 >= v15;
  if (!v20 && v19 != v17)
  {
    return 0;
  }

  v22 = (a2 + (bswap32(a2[2]) >> 16));
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
  if (v27 >= v22 && v27 <= v14)
  {
    *&v28 = 0xAAAAAAAAAAAAAAAALL;
    *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v65[29] = v28;
    v65[30] = v28;
    v65[27] = v28;
    v65[28] = v28;
    v65[25] = v28;
    v65[26] = v28;
    v65[23] = v28;
    v65[24] = v28;
    v65[21] = v28;
    v65[22] = v28;
    v65[19] = v28;
    v65[20] = v28;
    v65[17] = v28;
    v65[18] = v28;
    v65[16] = v28;
    v66 = 0xAAAAAAAAAAAAAAAALL;
    v65[15] = v28;
    v65[14] = v28;
    v65[13] = v28;
    v65[12] = v28;
    v65[11] = v28;
    v65[10] = v28;
    v65[9] = v28;
    v65[8] = v28;
    v65[7] = v28;
    v65[5] = v28;
    v65[6] = v28;
    v65[3] = v28;
    v65[4] = v28;
    v65[1] = v28;
    v65[2] = v28;
    v65[0] = v28;
    v64 = v12;
    v29 = OTL::ClassDefTable::ClassOf(v22, v23);
    result = ContextSubstFormat2::NthSubClassSet(a2, v29, v14);
    if (result)
    {
      v30 = result;
      v31 = TGlyphIterator::Next(a3, 1);
      v57 = a4;
      if (v31)
      {
        v32 = a5;
        v33 = a6;
        v34 = a3[6];
        v63[0] = *a3;
        v63[1] = v34;
        v35 = TRunGlue::TGlyph::glyphID(v63);
        v31 = OTL::ClassDefTable::ClassOf(v22, v35);
        v36 = v34;
        a6 = v33;
        a5 = v32;
      }

      else
      {
        v36 = v12;
      }

      v37 = v30 + 1;
      v62 = a3;
      v55 = a1;
      v56 = a5;
      v54 = a6;
      v58 = v22;
      if (v30 + 1 < a2 || (v38 = __rev16(*v30), v39 = &v37[v38], v39 < v37) || v39 > v14)
      {
        v40 = (v30 + 2) <= v14 && v37 >= a2;
        v38 = (v14 - v37) >> 1;
        if (!v40)
        {
          v38 = 0;
        }

        if (!(bswap32(v38) >> 16))
        {
          goto LABEL_74;
        }
      }

      else if (!*v30)
      {
LABEL_74:
        result = 0;
        *(v62 + 6) = v12;
        return result;
      }

      v41 = 0;
      if ((v38 & 0xFFFE) != 0)
      {
        v42 = v38;
      }

      else
      {
        v42 = 1;
      }

      v60 = v36;
      v61 = v12;
      v59 = v31;
      while (1)
      {
        if (v41 < bswap32(*v30) >> 16)
        {
          v43 = (v30 + __rev16(v30[v41 + 1]));
          v44 = v43 + 2;
          if (v30[v41 + 1] && v44 <= v14)
          {
            if (*v43)
            {
              v46 = __rev16(*v43);
              if (v46 <= 0x40)
              {
                v47 = (v46 - 1);
                v48 = &v44[v47];
                if (v44 < a2 || v48 < v44 || v48 > v14)
                {
                  v51 = (v43 + 3) <= v14 && v44 >= a2;
                  v52 = (v14 - v44) >> 1;
                  if (!v51)
                  {
                    v52 = 0;
                  }

                  if (v52 != v47)
                  {
                    goto LABEL_74;
                  }
                }

                v53 = &v43[v46 + 1];
                if (v36 != v12 && 2 * v46 != 2 && v31 == bswap32(*v44) >> 16)
                {
                  *&v65[0] = v36;
                  v44 = v43 + 3;
                  if (2 * v46 != 4)
                  {
                    if (TGlyphIterator::Next(v62, 1))
                    {
                      v44 = EqualClassSequenceAndNote<BigEndianScalar<unsigned short>>(v58, v43 + 3, v53, v62, v65 + 1);
                      v36 = v60;
                      *(v62 + 6) = v60;
                    }

                    else
                    {
                      v36 = v60;
                    }

                    v12 = v61;
                    v31 = v59;
                  }
                }

                if (v44 == v53)
                {
                  break;
                }
              }
            }
          }
        }

        if (v42 == ++v41)
        {
          goto LABEL_74;
        }
      }

      if (OTL::GSUB::ApplySubstLookupRecords(v55, a2, v44, bswap32(v43[1]) >> 16, v62, v12, &v64, v46, v57, v56, v54))
      {
        TGlyphIterator::ClearSafeToBreakAfter(v62, &v64, v46);
      }

      return 1;
    }
  }

  return result;
}

unsigned __int16 *EqualClassSequenceAndNote<BigEndianScalar<unsigned short>>(OTL::ClassDefTable *a1, unsigned __int16 *a2, unsigned __int16 *a3, TGlyphIterator *a4, void *a5)
{
  v5 = a2;
  if (a2 != a3)
  {
    do
    {
      v10 = *(a4 + 6);
      v13[0] = *a4;
      v13[1] = v10;
      v11 = TRunGlue::TGlyph::glyphID(v13);
      if (OTL::ClassDefTable::ClassOf(a1, v11) != bswap32(*v5) >> 16)
      {
        break;
      }

      *a5 = *(a4 + 6);
      if (++v5 == a3)
      {
        break;
      }

      ++a5;
    }

    while ((TGlyphIterator::Next(a4, 1) & 1) != 0);
  }

  return v5;
}

uint64_t OTL::GSUB::WouldSubstituteContext2(void *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = a1[5];
  v5 = a2 + 4;
  if ((a2 + 3) < a1[4] || v5 > v4)
  {
    return 0;
  }

  v8 = bswap32(a2[3]) >> 16;
  v9 = &v5[v8];
  v10 = (a2 + 5) <= v4 ? (v4 - v5) >> 1 : 0;
  v11 = v9 <= v4 && v9 >= v5;
  v12 = v11 || v10 == v8;
  if (!v12)
  {
    return 0;
  }

  v13 = (a2 + (bswap32(a2[2]) >> 16));
  if ((v13 + 1) > v4)
  {
    return 0;
  }

  v14 = bswap32(*v13) >> 16;
  if (v14 == 2)
  {
    v15 = 6 * (bswap32(v13[1]) >> 16) + 4;
  }

  else if (v14 == 1)
  {
    v15 = 2 * (bswap32(v13[2]) >> 16) + 6;
  }

  else
  {
    v15 = 0;
  }

  result = 0;
  v17 = v13 + v15;
  if (v17 >= v13 && v17 <= v4)
  {
    v18 = OTL::ClassDefTable::ClassOf(v13, *a3);
    result = ContextSubstFormat2::NthSubClassSet(a2, v18, v4);
    if (result)
    {
      v19 = result;
      v20 = (result + 2);
      if (result + 2 < a2 || ((v21 = __rev16(*result), v22 = &v20[v21], v22 >= v20) ? (v23 = v22 > v4) : (v23 = 1), v23))
      {
        v24 = result + 4 <= v4 && v20 >= a2;
        v21 = (v4 - v20) >> 1;
        if (!v24)
        {
          v21 = 0;
        }

        if (!(bswap32(v21) >> 16))
        {
          return 0;
        }
      }

      else if (!*result)
      {
        return 0;
      }

      v46 = a2;
      v25 = 0;
      if ((v21 & 0xFFFE) != 0)
      {
        v26 = v21;
      }

      else
      {
        v26 = 1;
      }

      while (1)
      {
        if (v25 < bswap32(*v19) >> 16)
        {
          v27 = v20[v25];
          v12 = v27 == 0;
          v28 = __rev16(v27);
          v29 = (v19 + v28);
          v30 = (v19 + v28 + 4);
          if (!v12 && v30 <= v4)
          {
            v32 = __rev16(*v29);
            if (*v29 && v32 <= a4)
            {
              v34 = (v32 - 1);
              v35 = &v30[v34];
              v36 = v46;
              if (v30 < v46 || v35 < v30 || v35 > v4)
              {
                v39 = (v29 + 3) <= v4 && v30 >= v46;
                v40 = (v4 - v30) >> 1;
                if (!v39)
                {
                  v40 = 0;
                }

                if (v40 != v34)
                {
                  return 0;
                }
              }

              if (v32 < 2)
              {
LABEL_69:
                if (OTL::GSUB::WouldSubstituteLookupRecords(a1, v36, v30, bswap32(v29[1]) >> 16, a3, a4))
                {
                  return 1;
                }
              }

              else
              {
                v44 = (&v20[v32] + v28);
                v41 = v32 - 1;
                v42 = a3 + 1;
                while (1)
                {
                  v43 = *v42++;
                  if (OTL::ClassDefTable::ClassOf(v13, v43) != bswap32(*v30) >> 16)
                  {
                    break;
                  }

                  ++v30;
                  if (!--v41)
                  {
                    v30 = v44;
                    v36 = v46;
                    goto LABEL_69;
                  }
                }
              }
            }
          }
        }

        if (++v25 == v26)
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t OTL::GSUB::ApplyContextSubstFormat3(uint64_t a1, unint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6)
{
  v7 = *(a1 + 40);
  v8 = a2 + 6;
  if (*(a1 + 32) > a2 || v8 > v7)
  {
    return 0;
  }

  v11 = *(a2 + 2);
  if (!*(a2 + 2))
  {
    return 0;
  }

  v16 = *(a3 + 48);
  v17 = __rev16(v11);
  v18 = v17 - 1;
  if (v17 != 1)
  {
    v19 = *(a3 + 24);
    if (*(a3 + 8) < 1)
    {
      if (v16 - v18 <= v19)
      {
        return 0;
      }
    }

    else if (v16 + v18 >= v19)
    {
      return 0;
    }
  }

  *&v20 = 0xAAAAAAAAAAAAAAAALL;
  *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v24[29] = v20;
  v24[30] = v20;
  v24[27] = v20;
  v24[28] = v20;
  v24[25] = v20;
  v24[26] = v20;
  v24[23] = v20;
  v24[24] = v20;
  v24[21] = v20;
  v24[22] = v20;
  v24[19] = v20;
  v24[20] = v20;
  v24[17] = v20;
  v24[18] = v20;
  v24[16] = v20;
  v25 = 0xAAAAAAAAAAAAAAAALL;
  v24[15] = v20;
  v24[14] = v20;
  v24[13] = v20;
  v24[12] = v20;
  v24[11] = v20;
  v24[10] = v20;
  v24[9] = v20;
  v24[8] = v20;
  v24[6] = v20;
  v24[7] = v20;
  v24[4] = v20;
  v24[5] = v20;
  v24[2] = v20;
  v24[3] = v20;
  v24[0] = v20;
  v24[1] = v20;
  v23 = v16;
  if (v11 != 256)
  {
    if (v17 <= 0x40)
    {
      result = TGlyphIterator::MatchCoverSequenceAndNote(a3, v18, a2 + 8, v24, a2, v7);
      if (!result)
      {
        return result;
      }

      v21 = result + 1;
      goto LABEL_16;
    }

    return 0;
  }

  v21 = 1;
LABEL_16:
  if (OTL::GSUB::ApplySubstLookupRecords(a1, a2, (v8 + 2 * v17), bswap32(*(a2 + 4)) >> 16, a3, v16, &v23, v21, a4, a5, a6))
  {
    TGlyphIterator::ClearSafeToBreakAfter(a3, &v23, v21);
  }

  return 1;
}

uint64_t OTL::GSUB::WouldSubstituteContext3(void *a1, unint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a1[5];
  v5 = a2 + 6;
  if (a1[4] <= a2)
  {
    v6 = v5 >= v4;
    v7 = v5 == v4;
  }

  else
  {
    v6 = 1;
    v7 = 0;
  }

  if (!v7 && v6)
  {
    return 0;
  }

  v10 = *(a2 + 2);
  v11 = __rev16(v10);
  if (*(a2 + 2))
  {
    v12 = v11 >= a4;
    v13 = v11 == a4;
  }

  else
  {
    v12 = 1;
    v13 = 0;
  }

  if (!v13 && v12)
  {
    return 0;
  }

  v17 = (a2 + 8);
  if (v10 != 256)
  {
    v18 = (v11 - 1);
    v19 = &v17[v18];
    if (a2 + 10 <= v4)
    {
      v20 = (v4 - v17) >> 1;
    }

    else
    {
      v20 = 0;
    }

    if ((v19 > v4 || v19 < v17) && v20 != v18)
    {
      return 0;
    }

    if (v11 >= 2)
    {
      v23 = (a3 + 2);
      for (i = v11 - 1; i; --i)
      {
        v25 = *v17++;
        v26 = (a2 + (bswap32(v25) >> 16));
        v34[0] = v26;
        v34[1] = v4;
        v34[4] = 0xAAAAAAAA0000FFFFLL;
        v34[5] = 0;
        v34[6] = 0;
        if ((v26 + 2) <= v4)
        {
          v27 = bswap32(*v26) >> 16;
          if (v27 == 2)
          {
            v33 = bswap32(v26[1]) >> 16;
            v29 = v33 >= 7;
            v30 = v33 == 7;
            v31 = OTL::Coverage::SearchFmt2Linear;
            v32 = OTL::Coverage::SearchFmt2Binary;
LABEL_31:
            if (!v30 && v29)
            {
              v31 = v32;
            }

            goto LABEL_33;
          }

          if (v27 == 1)
          {
            v28 = bswap32(v26[1]) >> 16;
            v29 = v28 >= 4;
            v30 = v28 == 4;
            v31 = OTL::Coverage::SearchFmt1Linear;
            v32 = OTL::Coverage::SearchFmt1Binary;
            goto LABEL_31;
          }
        }

        v34[0] = 0;
        v31 = OTL::Coverage::SearchUnknown;
LABEL_33:
        v34[2] = v31;
        v34[3] = 0;
        result = (v31)(v34, *v23);
        if (!result)
        {
          return result;
        }

        ++v23;
      }
    }
  }

  return OTL::GSUB::WouldSubstituteLookupRecords(a1, a2, v17, bswap32(*(a2 + 4)) >> 16, a3, a4);
}

unsigned __int16 *ChainContextSubstFormat1::NthChainSubRuleSet(ChainContextSubstFormat1 *this, unsigned int a2, unint64_t a3)
{
  if (a2 >= bswap32(*(this + 2)) >> 16)
  {
    return 0;
  }

  if (!*(this + a2 + 3))
  {
    return 0;
  }

  v3 = (this + __rev16(*(this + a2 + 3)));
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

uint64_t OTL::GSUB::ApplyChainContextSubstFormat1(uint64_t a1, ChainContextSubstFormat1 *this, TGlyphIterator *a3, int a4, _WORD *a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 40);
  v8 = this + 6;
  if (this + 4 < *(a1 + 32) || v8 > v7)
  {
    return 0;
  }

  result = 0;
  v12 = bswap32(*(this + 2)) >> 16;
  v13 = __CFADD__(v8, 2 * v12);
  v14 = &v8[2 * v12] > v7 || v13;
  v15 = (v7 - v8) >> 1;
  if (this + 8 > v7)
  {
    v15 = 0;
  }

  if (v15 == v12)
  {
    v16 = 0;
  }

  else
  {
    v16 = v14;
  }

  if (*(this + 2))
  {
    if ((v16 & 1) == 0)
    {
      v21 = *(a3 + 6);
      *&v22 = 0xAAAAAAAAAAAAAAAALL;
      *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v82[29] = v22;
      v82[30] = v22;
      v82[27] = v22;
      v82[28] = v22;
      v82[25] = v22;
      v82[26] = v22;
      v82[23] = v22;
      v82[24] = v22;
      v82[21] = v22;
      v82[22] = v22;
      v82[19] = v22;
      v82[20] = v22;
      v82[17] = v22;
      v82[18] = v22;
      v82[16] = v22;
      v83 = 0xAAAAAAAAAAAAAAAALL;
      v82[15] = v22;
      v82[14] = v22;
      v82[13] = v22;
      v82[12] = v22;
      v82[11] = v22;
      v82[10] = v22;
      v82[9] = v22;
      v82[8] = v22;
      v82[7] = v22;
      v82[5] = v22;
      v82[6] = v22;
      v82[3] = v22;
      v82[4] = v22;
      v82[1] = v22;
      v82[2] = v22;
      v82[0] = v22;
      v76 = v21;
      v81 = v21;
      result = ChainContextSubstFormat1::NthChainSubRuleSet(this, a4 - 1, v7);
      if (result)
      {
        v23 = result;
        result = TGlyphIterator::Next(a3, 1);
        v69 = a7;
        if (result)
        {
          v24 = *(a3 + 6);
          v79 = *a3;
          v80 = v24;
          result = TRunGlue::TGlyph::glyphID(&v79);
          v25 = v24;
          v74 = result;
          v27 = v76;
          v26 = this;
        }

        else
        {
          v74 = 0xFFFF;
          v27 = v76;
          v26 = this;
          v25 = v76;
        }

        v70 = a1;
        v71 = a6;
        v28 = (v23 + 1);
        v72 = a5;
        if (v23 + 1 < v26 || (LODWORD(v29) = __rev16(*v23), v30 = v28 + 2 * v29, v30 < v28) || v30 > v7)
        {
          v31 = (v23 + 2) <= v7 && v28 >= v26;
          LODWORD(v29) = (v7 - v28) >> 1;
          if (!v31)
          {
            LODWORD(v29) = 0;
          }

          if (!(bswap32(v29) >> 16))
          {
            goto LABEL_115;
          }
        }

        else if (!*v23)
        {
          goto LABEL_115;
        }

        v32 = 0;
        if ((v29 & 0xFFFE) != 0)
        {
          v29 = v29;
        }

        else
        {
          v29 = 1;
        }

        v78 = v29;
        v75 = v25;
        while (1)
        {
          if (v32 >= bswap32(*v23) >> 16)
          {
            goto LABEL_114;
          }

          v33 = *(v28 + v32);
          v54 = v33 == 0;
          v34 = (v23 + __rev16(v33));
          if (v54 || v34 > v7)
          {
            goto LABEL_114;
          }

          v36 = (v34 + 2);
          if (v34 < v26 || v36 > v7)
          {
            goto LABEL_115;
          }

          if (*v34)
          {
            break;
          }

          v44 = v27;
LABEL_64:
          v45 = (v36 + 2);
          if (v36 < v26 || v45 > v7)
          {
            goto LABEL_115;
          }

          v47 = *v36;
          if (*v36)
          {
            v48 = __rev16(v47);
            if (v48 <= 0x40)
            {
              v49 = v48 - 1;
              v50 = &v45[v48 - 1];
              if (v50 < v45 || v50 > v7)
              {
                v52 = v36 + 4 <= v7 ? (v7 - v45) >> 1 : 0;
                if (v52 != v49)
                {
                  goto LABEL_115;
                }
              }

              v53 = (v36 + 2 * v48);
              v54 = v47 == 256 || v25 == v27;
              if (v54)
              {
                v55 = v27;
              }

              else
              {
                v55 = v27;
                if (v74 == bswap32(*v45) >> 16)
                {
                  *&v82[0] = v25;
                  v45 = (v36 + 4);
                  if (v47 == 512)
                  {
                    v55 = v25;
                  }

                  else
                  {
                    v56 = v44;
                    result = TGlyphIterator::Next(a3, 1);
                    if (result)
                    {
                      result = EqualSequenceAndNote<BigEndianScalar<unsigned short>>(v45, v53, a3, v82 + 1);
                      v45 = result;
                      v55 = *(a3 + 6);
                      v25 = v75;
                      *(a3 + 6) = v75;
                    }

                    else
                    {
                      v25 = v75;
                      v55 = v75;
                    }

                    v27 = v76;
                    v26 = this;
                    v44 = v56;
                  }
                }
              }

              if (v45 == v53)
              {
                v57 = v45 + 1;
                if ((v45 + 1) > v7)
                {
                  goto LABEL_115;
                }

                if (!*v45)
                {
LABEL_116:
                  if (v57 >= v26 && (v57 + 1) <= v7)
                  {
                    v65 = v55;
                    v66 = v44;
                    if (OTL::GSUB::ApplySubstLookupRecords(v70, v26, v57 + 1, bswap32(*v57) >> 16, a3, v27, &v81, v48, v72, v71, v69) && *(*a3 + 144))
                    {
                      v67 = v66 - v65;
                      if (v66 >= v65)
                      {
                        v68.location = v65;
                      }

                      else
                      {
                        v68.location = v66;
                      }

                      if (v66 - v65 < 0)
                      {
                        v67 = v65 - v66;
                      }

                      v68.length = v67 + 1;
                      TRunGlue::ClearSafeToBreakAfter(*a3, v68);
                    }

                    return 1;
                  }

LABEL_115:
                  result = 0;
                  *(a3 + 6) = v27;
                  return result;
                }

                v58 = __rev16(*v45);
                v59 = &v57[v58];
                if (v59 < v57 || v59 > v7)
                {
                  v61 = (v45 + 2) <= v7 ? (v7 - v57) >> 1 : 0;
                  if (v61 != v58)
                  {
                    goto LABEL_115;
                  }
                }

                if (v49 >= 0x40)
                {
                  __break(1u);
                  return result;
                }

                v73 = v44;
                *(a3 + 6) = *(&v81 + v49);
                if (v58 <= 1)
                {
                  v62 = 1;
                }

                else
                {
                  v62 = v58;
                }

                v63 = v62;
                while (1)
                {
                  result = TGlyphIterator::NextContext(a3, 1);
                  if (!result)
                  {
                    goto LABEL_113;
                  }

                  v64 = *(a3 + 6);
                  v79 = *a3;
                  v80 = v64;
                  result = TRunGlue::TGlyph::glyphID(&v79);
                  if (result != bswap32(*v57) >> 16)
                  {
                    goto LABEL_113;
                  }

                  ++v57;
                  if (!--v63)
                  {
                    v57 = &v45[v62 - 1 + 2];
                    v55 = *(a3 + 6);
                    v27 = v76;
                    *(a3 + 6) = v75;
                    v26 = this;
                    v44 = v73;
                    goto LABEL_116;
                  }
                }
              }
            }
          }

LABEL_114:
          if (++v32 == v78)
          {
            goto LABEL_115;
          }
        }

        v38 = __rev16(*v34);
        v39 = (v36 + 2 * v38);
        if (v39 < v36 || v39 > v7)
        {
          v41 = v34 + 4 <= v7 ? (v7 - v36) >> 1 : 0;
          if (v41 != v38)
          {
            goto LABEL_115;
          }
        }

        *(a3 + 6) = v27;
        if (v38 <= 1)
        {
          v42 = 1;
        }

        else
        {
          v42 = v38;
        }

        while (1)
        {
          result = TGlyphIterator::PrevContext(a3, 1);
          if (!result)
          {
            break;
          }

          v43 = *(a3 + 6);
          v79 = *a3;
          v80 = v43;
          result = TRunGlue::TGlyph::glyphID(&v79);
          if (result != bswap32(*v36) >> 16)
          {
            break;
          }

          v36 = (v36 + 2);
          if (!--v42)
          {
            v44 = *(a3 + 6);
            v25 = v75;
            v27 = v76;
            *(a3 + 6) = v75;
            v26 = this;
            goto LABEL_64;
          }
        }

LABEL_113:
        v25 = v75;
        v27 = v76;
        *(a3 + 6) = v75;
        v26 = this;
        goto LABEL_114;
      }
    }
  }

  return result;
}

uint64_t OTL::GSUB::WouldSubstituteChainContext1(void *a1, ChainContextSubstFormat1 *this, int a3, uint64_t a4, unsigned int a5)
{
  v5 = a1[5];
  v6 = this + 6;
  if (this + 4 < a1[4] || v6 > v5)
  {
    return 0;
  }

  result = 0;
  v11 = bswap32(*(this + 2)) >> 16;
  v12 = __CFADD__(v6, 2 * v11);
  v13 = &v6[2 * v11] > v5 || v12;
  v14 = (v5 - v6) >> 1;
  if (this + 8 > v5)
  {
    v14 = 0;
  }

  if (v14 == v11)
  {
    v15 = 0;
  }

  else
  {
    v15 = v13;
  }

  if (*(this + 2))
  {
    if ((v15 & 1) == 0)
    {
      result = ChainContextSubstFormat1::NthChainSubRuleSet(this, a3 - 1, v5);
      if (result)
      {
        v18 = result;
        v19 = result + 2;
        if (result + 2 < this || ((v20 = __rev16(*result), v21 = v19 + 2 * v20, v21 >= v19) ? (v22 = v21 > v5) : (v22 = 1), v22))
        {
          v23 = result + 4 <= v5 && v19 >= this;
          v20 = (v5 - v19) >> 1;
          if (!v23)
          {
            v20 = 0;
          }

          if (!(bswap32(v20) >> 16))
          {
            return 0;
          }
        }

        else if (!*result)
        {
          return 0;
        }

        v24 = 0;
        if ((v20 & 0xFFFE) != 0)
        {
          v25 = v20;
        }

        else
        {
          v25 = 1;
        }

        while (1)
        {
          if (v24 < bswap32(*v18) >> 16)
          {
            v26 = *(v19 + 2 * v24);
            v27 = v26 == 0;
            v28 = __rev16(v26);
            v29 = (v18 + v28);
            if (!v27 && v29 <= v5)
            {
              v31 = bswap32(*v29) >> 16;
              v32 = &v29[v31];
              v33 = v32 + 1;
              v34 = v32 + 2;
              if (v33 < this || v34 > v5)
              {
                return 0;
              }

              v36 = bswap32(*v33) >> 16;
              if (v36 <= a5)
              {
                if (v36 >= 2)
                {
                  v37 = 0;
                  v38 = 2 * v36 - 2;
                  v39 = v28 + 2 * v31;
                  v40 = v18 + v39;
                  do
                  {
                    if (v34 < this || &v40[v37 + 6] > v5)
                    {
                      break;
                    }

                    if (*(a4 + 2 + v37) != bswap32(*&v40[v37 + 4]) >> 16)
                    {
                      goto LABEL_58;
                    }

                    v37 += 2;
                  }

                  while (v38 != v37);
                  v34 = (v18 + v39 + v37 + 4);
                }

                if (v34 < this || (v34 + 1) > v5)
                {
                  return 0;
                }

                v42 = &v34[bswap32(*v34) >> 16];
                if ((v42 + 2) > v5)
                {
                  return 0;
                }

                if (OTL::GSUB::WouldSubstituteLookupRecords(a1, this, v42 + 2, bswap32(v42[1]) >> 16, a4, a5))
                {
                  return 1;
                }
              }
            }
          }

LABEL_58:
          if (++v24 == v25)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

unsigned __int16 *OTL::GSUB::WouldSubstituteChainContext2(void *a1, unsigned __int16 *a2, unsigned __int16 *a3, unsigned int a4)
{
  v4 = a1[5];
  v5 = a2 + 6;
  if ((a2 + 5) < a1[4] || v5 > v4)
  {
    return 0;
  }

  result = 0;
  v9 = bswap32(a2[5]) >> 16;
  v10 = __CFADD__(v5, 2 * v9);
  v11 = &v5[v9] > v4 || v10;
  v12 = (v4 - v5) >> 1;
  if ((a2 + 7) > v4)
  {
    v12 = 0;
  }

  if (v12 == v9)
  {
    v13 = 0;
  }

  else
  {
    v13 = v11;
  }

  if (a2[5] && (v13 & 1) == 0)
  {
    v14 = (a2 + (bswap32(a2[3]) >> 16));
    if ((v14 + 1) > v4)
    {
      return 0;
    }

    v15 = bswap32(*v14) >> 16;
    if (v15 == 2)
    {
      v16 = 6 * (bswap32(v14[1]) >> 16) + 4;
    }

    else if (v15 == 1)
    {
      v16 = 2 * (bswap32(v14[2]) >> 16) + 6;
    }

    else
    {
      v16 = 0;
    }

    result = 0;
    v17 = v14 + v16;
    if (v17 >= v14 && v17 <= v4)
    {
      v18 = OTL::ClassDefTable::ClassOf(v14, *a3);
      result = ChainContextSubstFormat2::NthChainSubClassSet(a2, v18, v4);
      if (result)
      {
        v19 = result + 1;
        if (result + 1 < a2 || ((LODWORD(v20) = __rev16(*result), v21 = &v19[v20], v21 >= v19) ? (v22 = v21 > v4) : (v22 = 1), v22))
        {
          v23 = (result + 2) <= v4 && v19 >= a2;
          LODWORD(v20) = (v4 - v19) >> 1;
          if (!v23)
          {
            LODWORD(v20) = 0;
          }

          if (!(bswap32(v20) >> 16))
          {
            return 0;
          }
        }

        else if (!*result)
        {
          return 0;
        }

        v46 = result + 1;
        v24 = 0;
        if ((v20 & 0xFFFE) != 0)
        {
          v20 = v20;
        }

        else
        {
          v20 = 1;
        }

        v45 = v20;
        while (1)
        {
          v25 = result;
          if (v24 < bswap32(*result) >> 16)
          {
            v26 = v46[v24];
            v27 = v26 == 0;
            v28 = __rev16(v26);
            v29 = (result + v28);
            if (!v27 && v29 <= v4)
            {
              v31 = bswap32(*v29) >> 16;
              v32 = &v29[v31];
              v33 = v32 + 2;
              if (v32 + 1 < a2 || v33 > v4)
              {
                return 0;
              }

              v35 = bswap32(v32[1]) >> 16;
              if (v35 <= a4)
              {
                if (v35 >= 2)
                {
                  v36 = 0;
                  v37 = 2 * v35 - 2;
                  v41 = v28 + 2 * v31;
                  v38 = result + v41;
                  while (v33 >= a2 && &v38[v36 + 6] <= v4)
                  {
                    if (OTL::ClassDefTable::ClassOf(v14, a3[v36 / 2 + 1]) != bswap32(*&v38[v36 + 4]) >> 16)
                    {
                      goto LABEL_67;
                    }

                    v36 += 2;
                    if (v37 == v36)
                    {
                      v33 = (v25 + v41 + v36 + 4);
                      goto LABEL_61;
                    }
                  }

                  v33 = (v25 + v41 + v36 + 4);
                }

LABEL_61:
                if (v33 < a2 || (v33 + 1) > v4)
                {
                  return 0;
                }

                v40 = &v33[bswap32(*v33) >> 16];
                if ((v40 + 2) > v4)
                {
                  return 0;
                }

                if (OTL::GSUB::WouldSubstituteLookupRecords(a1, a2, v40 + 2, bswap32(v40[1]) >> 16, a3, a4))
                {
                  return 1;
                }
              }
            }
          }

LABEL_67:
          ++v24;
          result = v25;
          if (v24 == v45)
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t OTL::GSUB::WouldSubstituteChainContext3(void *a1, unint64_t a2, uint64_t a3, unsigned int a4)
{
  v4 = a1[5];
  v5 = bswap32(*(a2 + 2)) >> 16;
  v6 = a2 + 2 * v5;
  if (v6 + 6 > v4)
  {
    return 0;
  }

  v7 = a4;
  v8 = v6 + 4;
  v9 = bswap32(*(v6 + 4)) >> 16;
  if (v9 > a4)
  {
    return 0;
  }

  v10 = a3;
  v12 = (v6 + 8);
  if (v9 < 2)
  {
    LODWORD(v21) = 1;
    goto LABEL_32;
  }

  v13 = (v9 - 1);
  v14 = &v12[v13];
  v15 = v12 >= a2 && v14 >= v12;
  if (!v15 || v14 > v4)
  {
    v17 = v8 + 6 <= v4 && v12 >= a2;
    v18 = (v4 - v12) >> 1;
    if (!v17)
    {
      v18 = 0;
    }

    if (v18 != v13)
    {
      return 0;
    }
  }

  v31 = a1;
  v19 = 0;
  v20 = a3 + 2;
  v21 = 1;
  v22 = a2 + 2 * v5;
  while (1)
  {
    v35 = 0xAAAAAAAAAAAAAAAALL;
    v23 = (a2 + (bswap32(*(v22 + v19 + 8)) >> 16));
    v34[0] = v23;
    v34[1] = v4;
    LODWORD(v35) = 0xFFFF;
    v36 = 0;
    v37 = 0;
    if ((v23 + 2) > v4)
    {
LABEL_23:
      v34[0] = 0;
      v26 = OTL::Coverage::SearchUnknown;
      goto LABEL_27;
    }

    v24 = bswap32(*v23) >> 16;
    if (v24 == 2)
    {
      v25 = bswap32(v23[1]) >> 16 > 7;
      v26 = OTL::Coverage::SearchFmt2Linear;
      v27 = OTL::Coverage::SearchFmt2Binary;
    }

    else
    {
      if (v24 != 1)
      {
        goto LABEL_23;
      }

      v25 = bswap32(v23[1]) >> 16 > 4;
      v26 = OTL::Coverage::SearchFmt1Linear;
      v27 = OTL::Coverage::SearchFmt1Binary;
    }

    if (v25)
    {
      v26 = v27;
    }

LABEL_27:
    v34[2] = v26;
    v34[3] = 0;
    if (!(v26)(v34, *(v20 + v19)))
    {
      break;
    }

    ++v21;
    v19 += 2;
    if (v9 == v21)
    {
      v12 = (v22 + v19 + 8);
      v7 = a4;
      a1 = v31;
      v10 = a3;
      goto LABEL_33;
    }
  }

  v12 = (v22 + v19 + 10);
  v7 = a4;
  a1 = v31;
  v10 = a3;
LABEL_32:
  if (v21 != v9)
  {
    return 0;
  }

LABEL_33:
  if (v12 < a2 || (v12 + 1) > v4)
  {
    return 0;
  }

  v29 = &v12[bswap32(*v12) >> 16];
  if ((v29 + 2) > v4)
  {
    return 0;
  }

  result = OTL::GSUB::WouldSubstituteLookupRecords(a1, a2, v29 + 2, bswap32(v29[1]) >> 16, v10, v7);
  if (result)
  {
    return 1;
  }

  return result;
}

uint64_t OTL::GSUB::ApplyReverseChainSingleSubst(uint64_t a1, unint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v10 = *(a3 + 48);
  v37[0] = *a3;
  v37[1] = v10;
  TRunGlue::TGlyph::glyphID(v37);
  v11 = *(a1 + 40);
  v12 = (a2 + 6);
  if (a2 + 6 > v11)
  {
    return 0;
  }

  v13 = *(a2 + 4);
  v14 = __rev16(v13);
  if (*(a2 + 4))
  {
    v15 = *(a3 + 40);
    v16 = *(a3 + 48);
    if (*(a3 + 8) < 1)
    {
      if (v16 - v14 <= v15)
      {
        return 0;
      }
    }

    else if (v16 + v14 >= v15)
    {
      return 0;
    }
  }

  v17 = &v12[v14];
  v18 = v17 + 1;
  if ((v17 + 1) > v11)
  {
    return 0;
  }

  v19 = *v17;
  v20 = __rev16(v19);
  if (!*v17)
  {
    goto LABEL_13;
  }

  v21 = *(a3 + 48);
  v22 = *(a3 + 32);
  if (*(a3 + 8) < 1)
  {
    if (v21 + v20 < v22)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v21 - v20 <= v22)
  {
    return 0;
  }

LABEL_13:
  v37[0] = v10;
  if (v13 && !TGlyphIterator::MatchCoverSequence<(MatchDirection)0>(a3, v10, v14, v12, a2, v11, v37))
  {
    return 0;
  }

  v36 = v10;
  if (v19)
  {
    if (!TGlyphIterator::MatchCoverSequence<(MatchDirection)1>(a3, v10, v20, v18, a2, v11, &v36))
    {
      return 0;
    }
  }

  v23 = &v18[v20];
  v24 = v23 + 1;
  if (v23 < a2 || v24 > v11)
  {
    return 0;
  }

  v26 = bswap32(*v23) >> 16;
  if (v26 < a4)
  {
    return 0;
  }

  v27 = &v24[v26];
  v28 = v24 >= a2 && v27 >= v24;
  if (!v28 || v27 > v11)
  {
    v30 = (v23 + 2) <= v11 && v24 >= a2;
    v31 = (v11 - v24) >> 1;
    if (!v30)
    {
      v31 = 0;
    }

    if (v31 != v26)
    {
      return 0;
    }
  }

  TRunGlue::SetGlyphID<true>(*a3, *(a3 + 48), bswap32(v24[a4 - 1]) >> 16);
  v32 = 1;
  std::function<void ()(CFRange,long)>::operator()(a5, v10, 1, 1);
  if (*(*a3 + 144))
  {
    if (v37[0] >= v36)
    {
      v33.location = v36;
    }

    else
    {
      v33.location = v37[0];
    }

    if ((v37[0] - v36) >= 0)
    {
      v34 = v37[0] - v36;
    }

    else
    {
      v34 = v36 - v37[0];
    }

    v33.length = v34 + 1;
    TRunGlue::ClearSafeToBreakAfter(*a3, v33);
    return 1;
  }

  return v32;
}

uint64_t OTL::GSUB::AddCoveredGlyphs(void *a1, unsigned __int16 **a2, uint64_t a3, uint64_t a4)
{
  v18 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[0] = v7;
  v17[1] = v7;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v17, a3);
  v14 = *(a1[2] + 408);
  os_unfair_lock_lock_with_options();
  v8 = *a2;
  v9 = a2[1];
  if (*a2 == v9)
  {
LABEL_7:
    v11 = 1;
  }

  else
  {
    while (1)
    {
      v10 = TBaseFont::NthLookup<OTL::GSUB>(v14, a1, *v8);
      if (v10)
      {
        if (((*(v10 + 26) - *(v10 + 24)) >> 6))
        {
          break;
        }
      }

      v8 += 2;
      if (v8 == v9)
      {
        goto LABEL_7;
      }
    }

    if ((v10[13] - v10[12]) >> 6)
    {
      std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v15, v17);
      v16 = 0;
      operator new();
    }

    v12 = *(a4 + 24);
    if (!v12)
    {
      std::__throw_bad_function_call[abi:fn200100]();
      JUMPOUT(0x1846D1130);
    }

    (*(*v12 + 48))(v12);
    v11 = 0;
  }

  os_unfair_lock_unlock(v14 + 89);
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](v17);
  return v11;
}

unsigned __int16 *OTL::GSUB::WouldSubstituteSubtable(void *a1, int a2, int a3, ChainContextSubstFormat1 *this, unsigned int a5, unsigned __int16 *a6, unsigned int a7)
{
  switch(a3)
  {
    case 6:
      v9 = bswap32(*this) >> 16;
      switch(v9)
      {
        case 3u:
          return OTL::GSUB::WouldSubstituteChainContext3(a1, this, a6, a7);
        case 2u:
          return OTL::GSUB::WouldSubstituteChainContext2(a1, this, a6, a7);
        case 1u:
          return OTL::GSUB::WouldSubstituteChainContext1(a1, this, a5, a6, a7);
        default:
          return 0;
      }

    case 5:
      v8 = bswap32(*this) >> 16;
      switch(v8)
      {
        case 3u:
          return OTL::GSUB::WouldSubstituteContext3(a1, this, a6, a7);
        case 2u:
          return OTL::GSUB::WouldSubstituteContext2(a1, this, a6, a7);
        case 1u:
          return OTL::GSUB::WouldSubstituteContext1(a1, this, a5, a6, a7);
        default:
          return 0;
      }

    case 4:
      return OTL::GSUB::WouldSubstituteLigature(a1, this, a5, a6, a7);
    default:
      return 0;
  }
}

void *std::__function::__func<OTL::GSUB::AddShapingGlyphsForLookup(OTL::Lookup const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0,std::allocator<OTL::GSUB::AddShapingGlyphsForLookup(OTL::Lookup const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0>,BOOL ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF2588B8;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<OTL::GSUB::AddShapingGlyphsForLookup(OTL::Lookup const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0,std::allocator<OTL::GSUB::AddShapingGlyphsForLookup(OTL::Lookup const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0>,BOOL ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF2588B8;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 1));

  JUMPOUT(0x1865F22D0);
}

uint64_t std::__function::__value_func<void ()(CFRange,long)>::__value_func[abi:fn200100](uint64_t a1, uint64_t a2)
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

void *std::__function::__func<OTL::GSUB::AddCoveredGlyphs(TInlineVector<std::pair<unsigned short,unsigned short>,30ul> const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0,std::allocator<OTL::GSUB::AddCoveredGlyphs(TInlineVector<std::pair<unsigned short,unsigned short>,30ul> const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0>,BOOL ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF258948;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<OTL::GSUB::AddCoveredGlyphs(TInlineVector<std::pair<unsigned short,unsigned short>,30ul> const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0,std::allocator<OTL::GSUB::AddCoveredGlyphs(TInlineVector<std::pair<unsigned short,unsigned short>,30ul> const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0>,BOOL ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF258948;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 1));

  JUMPOUT(0x1865F22D0);
}

void std::__function::__func<OTL::GSUB::AddCoveredGlyphs(TInlineVector<std::pair<unsigned short,unsigned short>,30ul> const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0,std::allocator<OTL::GSUB::AddCoveredGlyphs(TInlineVector<std::pair<unsigned short,unsigned short>,30ul> const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)::$_0>,BOOL ()(unsigned short,unsigned short,unsigned short)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](a1 + 8);

  operator delete(a1);
}

unsigned __int16 *OTL::ClassDefTable::PopulateGlyphClassBitmap(unsigned __int16 *this, int a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = bswap32(*this) >> 16;
  if (v4 == 2)
  {
    if (this[1])
    {
      v10 = &this[3 * __rev16(this[1]) + 2];
      v11 = this + 2;
      do
      {
        if (a2 == bswap32(v11[2]) >> 16)
        {
          v12 = bswap32(*v11) >> 16;
          v13 = bswap32(v11[1]);
          if (v12 <= HIWORD(v13))
          {
            v14 = HIWORD(v13) + 1;
            do
            {
              if (v12 >= a4)
              {
                break;
              }

              a3[v12 >> 3] |= 1 << (v12 & 7);
              ++v12;
            }

            while (v14 != v12);
          }
        }

        v11 += 3;
      }

      while (v11 != v10);
    }
  }

  else if (v4 == 1 && this[2])
  {
    v5 = 0;
    v6 = bswap32(this[1]) >> 16;
    LODWORD(v7) = __rev16(this[2]);
    if (a4 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = a4;
    }

    v9 = v8 - v6;
    if (v7 <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = v7;
    }

    do
    {
      if (v9 == v5)
      {
        break;
      }

      if (a2 == bswap32(this[v5 + 3]) >> 16)
      {
        a3[(v6 + v5) >> 3] |= 1 << ((v6 + v5) & 7);
      }

      ++v5;
    }

    while (v7 != v5);
  }

  return this;
}

BOOL OTL::ClassDefTable::operator==(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == v3 && ((v4 = __rev16(v3), v5 = __rev16(v2), v5 == 2) ? (v6 = 6 * (bswap32(a1[1]) >> 16) + 4) : v5 != 1 ? (v6 = 0) : (v6 = 2 * (bswap32(a1[2]) >> 16) + 6), v4 == 2 ? (v7 = 6 * (bswap32(a2[1]) >> 16) + 4) : v4 != 1 ? (v7 = 0) : (v7 = 2 * (bswap32(a2[2]) >> 16) + 6), v6 == v7))
  {
    return memcmp(a1, a2, v6) == 0;
  }

  else
  {
    return 0;
  }
}

uint64_t OTL::GCommon::IterateFeatureTables(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  if (!*(a1 + 6))
  {
    return 0;
  }

  v6 = (a1 + __rev16(*(a1 + 6)));
  v7 = v6 + 1;
  if ((v6 + 1) > a3)
  {
    return 0;
  }

  v10 = bswap32(*v6) >> 16;
  v11 = &v7[3 * v10];
  if (v11 < v7 || v11 > a3)
  {
    v13 = (v6 + 4) <= a3 ? (a3 - v7) / 6 : 0;
    if (v13 != v10)
    {
      return 0;
    }
  }

  if (*(a2 + 4))
  {
    v14 = (a2 + 6);
    for (i = 2 * __rev16(*(a2 + 4)) - 2; ; i -= 2)
    {
      v16 = bswap32(*v14) >> 16;
      v17 = &v7[3 * v16];
      if (v17 < a1 || v17 + 6 > a3)
      {
        break;
      }

      v19 = v6 + (bswap32(v7[3 * v16 + 2]) >> 16);
      v20 = v19 + 4;
      if (v19 + 2 < v6 || v20 > a3)
      {
        break;
      }

      v22 = bswap32(*(v19 + 2)) >> 16;
      v23 = v20 + 2 * v22;
      v24 = v19 + 6 <= a3 ? (a3 - v20) >> 1 : 0;
      v25 = v23 <= a3 && v23 >= v20;
      v26 = v25 || v24 == v22;
      if (!v26 || (std::function<BOOL ()(unsigned int,OTL::FeatureTable const*,BOOL &)>::operator()(a4, bswap32(*v17), v19) & 1) == 0)
      {
        break;
      }

      result = 1;
      ++v14;
      if (!i)
      {
        return result;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t OTL::GCommon::IterateLookupIndexes(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (!*(a1 + 8))
  {
    return 0;
  }

  v4 = (a1 + __rev16(*(a1 + 8)));
  v5 = v4 + 1;
  if ((v4 + 1) > a3)
  {
    return 0;
  }

  v7 = bswap32(*v4) >> 16;
  v8 = &v5[v7];
  if ((v4 + 2) <= a3)
  {
    v9 = (a3 - v5) >> 1;
  }

  else
  {
    v9 = 0;
  }

  if ((v8 > a3 || v8 < v5) && v9 != v7)
  {
    return 0;
  }

  if (*(a2 + 2))
  {
    v13 = (a2 + 4);
    v14 = 2 * __rev16(*(a2 + 2)) - 2;
    while (1)
    {
      v15 = bswap32(*v13) >> 16;
      if (v15 >= v7)
      {
        break;
      }

      result = std::function<BOOL ()(unsigned short,BOOL &)>::operator()(a4, v15);
      if (result)
      {
        result = 1;
        ++v13;
        v16 = v14;
        v14 -= 2;
        if (v16)
        {
          continue;
        }
      }

      return result;
    }

    return 0;
  }

  return 1;
}

uint64_t std::function<BOOL ()(unsigned short,BOOL &)>::operator()(uint64_t a1, __int16 a2)
{
  v8 = a2;
  v2 = *(a1 + 24);
  if (v2)
  {
    return (*(*v2 + 48))(v2, &v8);
  }

  v4 = std::__throw_bad_function_call[abi:fn200100]();
  return OTL::GCommon::IterateConditionSetTables(v4, v5, v6, v7);
}

uint64_t OTL::GCommon::IterateConditionSetTables(uint64_t a1, unsigned int *a2, unint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    return 0;
  }

  v5 = a2[1];
  if (!v5)
  {
    return 1;
  }

  v7 = bswap32(a2[2]);
  v8 = (a2 + v7);
  v9 = a2 + v7 + 2;
  if (v9 <= a3)
  {
    v11 = a2 + 4;
    v12 = 8 * bswap32(v5) - 8;
    do
    {
      v13 = bswap32(*v8) >> 16;
      v14 = v9 + 4 * v13;
      v15 = (v8 + 3) <= a3 ? (a3 - v9) >> 2 : 0;
      v16 = v14 <= a3 && v14 >= v9;
      if (!v16 && v15 != v13)
      {
        break;
      }

      v18 = (a2 + bswap32(*(v11 - 1)));
      v19 = v18 + 3;
      if ((v18 + 3) > a3)
      {
        break;
      }

      v20 = bswap32(v18[2]) >> 16;
      v21 = &v19[3 * v20];
      if (v21 < v19 || v21 > a3)
      {
        v23 = (a3 - v19) / 6;
        if ((v18 + 6) > a3)
        {
          v23 = 0;
        }

        if (v23 != v20)
        {
          break;
        }
      }

      if (*v18 == 256)
      {
        result = std::function<BOOL ()(OTL::ConditionSetTable const*,OTL::FeatureTableSubstitutionTable const*,BOOL &)>::operator()(a4, v8, v18);
        if (!result)
        {
          return result;
        }

        result = 1;
        if (!v12)
        {
          return result;
        }
      }

      else if (!v12)
      {
        return 1;
      }

      v25 = *v11;
      v11 += 2;
      v8 = (a2 + bswap32(v25));
      v9 = (v8 + 1);
      v12 -= 8;
    }

    while ((v8 + 1) <= a3);
  }

  return 0;
}

uint64_t std::function<BOOL ()(OTL::ConditionSetTable const*,OTL::FeatureTableSubstitutionTable const*,BOOL &)>::operator()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = a3;
  v7 = a2;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v7, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:fn200100]();
  return OTL::GDEF::IterateMarkGlyphsNotInSet(v5);
}

void OTL::GDEF::IterateMarkGlyphsNotInSet(OTL::Coverage *a1, unsigned int a2, uint64_t a3, double a4, int8x16_t a5)
{
  v10[8] = *MEMORY[0x1E69E9840];
  v8 = 0xAAAAAAAAAAAAAAAALL;
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v7[1] = v6;
  v7[2] = v6;
  v7[0] = v6;
  OTL::GDEF::MarkFilteringSet(a1, a2, v7, -3.72066208e-103, a5);
  v9 = v7;
  std::__function::__value_func<void ()(unsigned short)>::__value_func[abi:fn200100](v10, a3);
  operator new();
}

void OTL::GDEF::IterateMarkGlyphsNotOfAttachmentType(uint64_t a1, __int16 a2)
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = a2;
  operator new();
}

void *std::__function::__func<OTL::GDEF::IterateGlyphsWithClassMask(unsigned int,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<OTL::GDEF::IterateGlyphsWithClassMask(unsigned int,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,void ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF2589E0;
  std::__function::__value_func<void ()(unsigned short)>::~__value_func[abi:fn200100]((a1 + 2));
  return a1;
}

void std::__function::__func<OTL::GDEF::IterateGlyphsWithClassMask(unsigned int,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<OTL::GDEF::IterateGlyphsWithClassMask(unsigned int,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,void ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF2589E0;
  std::__function::__value_func<void ()(unsigned short)>::~__value_func[abi:fn200100]((a1 + 2));

  JUMPOUT(0x1865F22D0);
}

uint64_t std::__function::__func<OTL::GDEF::IterateGlyphsWithClassMask(unsigned int,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<OTL::GDEF::IterateGlyphsWithClassMask(unsigned int,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,void ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF2589E0;
  *(a2 + 8) = *(a1 + 8);
  return std::__function::__value_func<void ()(unsigned short)>::__value_func[abi:fn200100](a2 + 16, a1 + 16);
}

_DWORD *std::__invoke_void_return_wrapper<void,true>::__call[abi:fn200100]<OTL::GDEF::IterateGlyphsWithClassMask(unsigned int,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1} &,unsigned short,unsigned short,unsigned short>(_DWORD *result, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 *a4)
{
  v4 = *a4;
  if (v4 <= 0x1F)
  {
    v5 = result;
    if ((*result >> v4))
    {
      v6 = *a2;
      v7 = *a3;
      if (v6 <= v7)
      {
        v8 = v7 + 1;
        do
        {
          result = std::function<void ()(unsigned short)>::operator()((v5 + 2), v6++);
        }

        while (v8 != v6);
      }
    }
  }

  return result;
}

uint64_t std::function<void ()(unsigned short)>::operator()(uint64_t a1, __int16 a2)
{
  v4 = a2;
  v2 = *(a1 + 24);
  if (!v2)
  {
    std::__throw_bad_function_call[abi:fn200100]();
    JUMPOUT(0x1846D209CLL);
  }

  return (*(*v2 + 48))(v2, &v4);
}

void *std::__function::__func<OTL::GDEF::IterateMarkGlyphsNotInSet(unsigned short,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<OTL::GDEF::IterateMarkGlyphsNotInSet(unsigned short,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,void ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF258A70;
  std::__function::__value_func<void ()(unsigned short)>::~__value_func[abi:fn200100]((a1 + 2));
  return a1;
}

void std::__function::__func<OTL::GDEF::IterateMarkGlyphsNotInSet(unsigned short,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<OTL::GDEF::IterateMarkGlyphsNotInSet(unsigned short,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,void ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF258A70;
  std::__function::__value_func<void ()(unsigned short)>::~__value_func[abi:fn200100]((a1 + 2));

  JUMPOUT(0x1865F22D0);
}

uint64_t std::__function::__func<OTL::GDEF::IterateMarkGlyphsNotInSet(unsigned short,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<OTL::GDEF::IterateMarkGlyphsNotInSet(unsigned short,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,void ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, void *a2)
{
  v2 = *(a1 + 8);
  *a2 = &unk_1EF258A70;
  a2[1] = v2;
  return std::__function::__value_func<void ()(unsigned short)>::__value_func[abi:fn200100]((a2 + 2), a1 + 16);
}

void std::__function::__func<OTL::GDEF::IterateMarkGlyphsNotInSet(unsigned short,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<OTL::GDEF::IterateMarkGlyphsNotInSet(unsigned short,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,void ()(unsigned short,unsigned short,unsigned short)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned short)>::~__value_func[abi:fn200100](a1 + 16);

  operator delete(a1);
}

uint64_t std::__function::__func<OTL::GDEF::IterateMarkGlyphsNotInSet(unsigned short,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<OTL::GDEF::IterateMarkGlyphsNotInSet(unsigned short,std::function<void ()(unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,void ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3, _WORD *a4)
{
  if (*a4 == 3)
  {
    v4 = *a2;
    v5 = *a3;
    if (v4 <= v5)
    {
      v6 = result;
      v7 = v5 + 1;
      do
      {
        v8 = *(v6 + 8);
        v9 = *(v8 + 16);
        v10 = *(v8 + 24);
        v11 = (v8 + (v10 >> 1));
        if (v10)
        {
          v9 = *(*v11 + v9);
        }

        result = v9(v11, v4);
        if (!result)
        {
          result = std::function<void ()(unsigned short)>::operator()(v6 + 16, v4);
        }

        ++v4;
      }

      while (v7 != v4);
    }
  }

  return result;
}

uint64_t std::__function::__func<OTL::GDEF::IterateGlyphsIgnoredByLookupTable(OTL::LookupTable const*,std::function<void ()(unsigned short)>)::{lambda(unsigned short)#2},std::allocator<OTL::GDEF::IterateGlyphsIgnoredByLookupTable(OTL::LookupTable const*,std::function<void ()(unsigned short)>)::{lambda(unsigned short)#2}>,void ()(unsigned short)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF258AB8;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<OTL::GDEF::IterateMarkGlyphsNotOfAttachmentType(unsigned short,std::function<void ()(unsigned short)>)::{lambda(unsigned short)#1},std::allocator<OTL::GDEF::IterateMarkGlyphsNotOfAttachmentType(unsigned short,std::function<void ()(unsigned short)>)::{lambda(unsigned short)#1}>,void ()(unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF258B00;
  result = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<OTL::GDEF::IterateMarkGlyphsNotOfAttachmentType(unsigned short,std::function<void ()(unsigned short)>)::{lambda(unsigned short)#1},std::allocator<OTL::GDEF::IterateMarkGlyphsNotOfAttachmentType(unsigned short,std::function<void ()(unsigned short)>)::{lambda(unsigned short)#1}>,void ()(unsigned short)>::operator()(uint64_t a1, __int16 *a2)
{
  v3 = *a2;
  result = OTL::ClassDefTable::ClassOf(*(*(a1 + 8) + 24), *a2);
  if (result != **(a1 + 16))
  {
    v5 = *(a1 + 24);

    return std::function<void ()(unsigned short)>::operator()(v5, v3);
  }

  return result;
}

uint64_t std::__function::__func<OTL::GDEF::IterateGlyphsIgnoredByLookupTable(OTL::LookupTable const*,std::function<void ()(unsigned short)>)::{lambda(unsigned short)#3},std::allocator<OTL::GDEF::IterateGlyphsIgnoredByLookupTable(OTL::LookupTable const*,std::function<void ()(unsigned short)>)::{lambda(unsigned short)#3}>,void ()(unsigned short)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF258B48;
  a2[1] = v2;
  return result;
}

BOOL std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *>(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = (a2 - a1) >> 2;
  if (v4 > 2)
  {
    switch(v4)
    {
      case 3:
        std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(a1, a1 + 2, a2 - 2);
        break;
      case 4:
        std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(a1, a1 + 2, a1 + 4);
        v32 = *(a2 - 2);
        v33 = a1[4];
        v34 = -1;
        if (v32 >= v33)
        {
          v34 = 1;
        }

        if (v32 == v33)
        {
          v35 = *(a2 - 1);
          v36 = a1[5];
          v10 = v35 >= v36;
          v37 = v35 == v36;
          v34 = -1;
          if (v10)
          {
            v34 = 1;
          }

          if (v37)
          {
            v34 = 0;
          }
        }

        if (v34 < 0)
        {
          a1[4] = v32;
          *(a2 - 2) = v33;
          v38 = a1[5];
          a1[5] = *(a2 - 1);
          *(a2 - 1) = v38;
          v39 = a1[4];
          v40 = a1[2];
          v41 = -1;
          if (v39 >= v40)
          {
            v41 = 1;
          }

          if (v39 == v40)
          {
            v42 = a1[5];
            v43 = a1[3];
            v10 = v42 >= v43;
            v44 = v42 == v43;
            v41 = -1;
            if (v10)
            {
              v41 = 1;
            }

            if (v44)
            {
              v41 = 0;
            }
          }

          if (v41 < 0)
          {
            a1[2] = v39;
            a1[4] = v40;
            v45 = a1[3];
            v46 = a1[5];
            a1[3] = v46;
            a1[5] = v45;
            v47 = *a1;
            v48 = -1;
            if (v39 >= v47)
            {
              v48 = 1;
            }

            if (v39 == v47)
            {
              v49 = a1[1];
              v10 = v46 >= v49;
              v50 = v46 == v49;
              v48 = -1;
              if (v10)
              {
                v48 = 1;
              }

              if (v50)
              {
                v48 = 0;
              }
            }

            if (v48 < 0)
            {
              *a1 = v39;
              a1[2] = v47;
              v51 = a1[1];
              a1[1] = v46;
              a1[3] = v51;
            }
          }
        }

        return 1;
      case 5:
        std::__sort5[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(a1, a1 + 2, a1 + 4, a1 + 6, a2 - 2);
        break;
      default:
        goto LABEL_19;
    }

    return 1;
  }

  if (v4 < 2)
  {
    return 1;
  }

  if (v4 == 2)
  {
    v5 = *(a2 - 2);
    v6 = *a1;
    v7 = -1;
    if (v5 >= v6)
    {
      v7 = 1;
    }

    if (v5 == v6)
    {
      v8 = *(a2 - 1);
      v9 = a1[1];
      v10 = v8 >= v9;
      v11 = v8 == v9;
      v7 = -1;
      if (v10)
      {
        v7 = 1;
      }

      if (v11)
      {
        v7 = 0;
      }
    }

    if (v7 < 0)
    {
      *a1 = v5;
      *(a2 - 2) = v6;
      v12 = a1[1];
      a1[1] = *(a2 - 1);
      *(a2 - 1) = v12;
    }

    return 1;
  }

LABEL_19:
  v13 = a1 + 4;
  std::__sort3[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,std::pair<unsigned short,unsigned short> *,0>(a1, a1 + 2, a1 + 4);
  v14 = a1 + 6;
  if (a1 + 6 == a2)
  {
    return 1;
  }

  v15 = 0;
  v16 = 0;
  while (1)
  {
    v17 = *v14;
    v18 = *v13;
    v19 = v17 == v18;
    if (v17 >= v18)
    {
      v20 = 1;
    }

    else
    {
      v20 = -1;
    }

    if (v19)
    {
      v21 = v14[1];
      v22 = v13[1];
      v23 = v21 == v22;
      v20 = v21 >= v22 ? 1 : -1;
      if (v23)
      {
        v20 = 0;
      }
    }

    if (v20 < 0)
    {
      v24 = *v14;
      v25 = HIWORD(*v14);
      v26 = v15;
      while (1)
      {
        v27 = (a1 + v26);
        v27[6] = v18;
        v27[7] = *(a1 + v26 + 10);
        if (v26 == -8)
        {
          break;
        }

        v18 = v27[2];
        if (v18 <= v24)
        {
          v28 = 1;
        }

        else
        {
          v28 = -1;
        }

        if (v18 == v24)
        {
          v29 = *(a1 + v26 + 6);
          v30 = v29 == v25;
          v28 = v29 <= v25 ? 1 : -1;
          if (v30)
          {
            v28 = 0;
          }
        }

        v26 -= 4;
        if ((v28 & 0x80) == 0)
        {
          v31 = (a1 + v26 + 12);
          goto LABEL_46;
        }
      }

      v31 = a1;
LABEL_46:
      *v31 = v24;
      v31[1] = v25;
      if (++v16 == 8)
      {
        return v14 + 2 == a2;
      }
    }

    v13 = v14;
    v15 += 4;
    v14 += 2;
    if (v14 == a2)
    {
      return 1;
    }
  }
}

uint64_t std::__function::__func<OTL::GCommon::GCommon(OTL::GCommon::Table,TFont const&,__CFData const*,OTL::GDEF const&,unsigned int,unsigned int)::$_0,std::allocator<OTL::GCommon::GCommon(OTL::GCommon::Table,TFont const&,__CFData const*,OTL::GDEF const&,unsigned int,unsigned int)::$_0>,BOOL ()(unsigned int,OTL::FeatureTable const*,BOOL &)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF258B90;
  a2[1] = v2;
  return result;
}

uint64_t std::__function::__func<OTL::GCommon::GCommon(OTL::GCommon::Table,TFont const&,__CFData const*,OTL::GDEF const&,unsigned int,unsigned int)::$_0,std::allocator<OTL::GCommon::GCommon(OTL::GCommon::Table,TFont const&,__CFData const*,OTL::GDEF const&,unsigned int,unsigned int)::$_0>,BOOL ()(unsigned int,OTL::FeatureTable const*,BOOL &)>::operator()(uint64_t a1, _DWORD *a2, uint64_t a3, _BYTE *a4)
{
  if (*a2 == 1987212338 || *a2 == 1986359924)
  {
    **(a1 + 8) = 1;
    *a4 = 1;
  }

  return 1;
}

uint64_t std::__function::__func<OTL::Lookup::PopulateIgnoreSet(OTL::GDEF const&)::$_0,std::allocator<OTL::Lookup::PopulateIgnoreSet(OTL::GDEF const&)::$_0>,void ()(unsigned short)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF258BD8;
  a2[1] = v2;
  return result;
}

__n128 std::__function::__func<OTL::GCommon::FeatureTableSubstitutionsForFont(OTL::GCommon::Header const*,void const*,TFont const&)::$_0,std::allocator<OTL::GCommon::FeatureTableSubstitutionsForFont(OTL::GCommon::Header const*,void const*,TFont const&)::$_0>,BOOL ()(OTL::ConditionSetTable const*,OTL::FeatureTableSubstitutionTable const*,BOOL &)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF258C20;
  result = *(a1 + 8);
  v3 = *(a1 + 24);
  *(a2 + 40) = *(a1 + 40);
  *(a2 + 24) = v3;
  *(a2 + 8) = result;
  return result;
}

uint64_t std::__function::__func<OTL::GCommon::FeatureTableSubstitutionsForFont(OTL::GCommon::Header const*,void const*,TFont const&)::$_0,std::allocator<OTL::GCommon::FeatureTableSubstitutionsForFont(OTL::GCommon::Header const*,void const*,TFont const&)::$_0>,BOOL ()(OTL::ConditionSetTable const*,OTL::FeatureTableSubstitutionTable const*,BOOL &)>::operator()(uint64_t a1, unsigned __int16 **a2, uint64_t *a3)
{
  v3 = *a2;
  v4 = *a3;
  if (**a2)
  {
    v5 = 4 * __rev16(**a2);
    v6 = (v3 + 1);
    v7 = **(a1 + 8);
    while (1)
    {
      v8 = (v3 + bswap32(*v6));
      if ((v8 + 1) > v7)
      {
        return 0;
      }

      if (*v8 == 256)
      {
        if (**(a1 + 16) > v8 || (v8 + 4) > v7)
        {
          return 0;
        }

        v10 = bswap32(v8[1]) >> 16;
        if (**(a1 + 24) <= v10)
        {
          return 0;
        }

        v11 = *(**(a1 + 32) + 2 * v10);
        if (v11 < bswap32(v8[2]) >> 16 || v11 > bswap32(v8[3]) >> 16)
        {
          return 1;
        }
      }

      ++v6;
      v5 -= 4;
      if (!v5)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
LABEL_13:
    if (*(v4 + 4))
    {
      v12 = v4 + 6 * __rev16(*(v4 + 4));
      v13 = *a3;
      v14 = *a3;
      do
      {
        v15 = *(v14 + 6);
        v14 += 6;
        v16 = bswap32(v15) >> 16;
        v17 = *(a1 + 40);
        v18 = v17[1];
        if (v18)
        {
          v19 = vcnt_s8(v18);
          v19.i16[0] = vaddlv_u8(v19);
          if (v19.u32[0] > 1uLL)
          {
            v20 = v16;
            if (*&v18 <= v16)
            {
              v20 = v16 % v17[1];
            }
          }

          else
          {
            v20 = (v18.i32[0] - 1) & v16;
          }

          v21 = *(*v17 + 8 * v20);
          if (v21)
          {
            for (i = *v21; i; i = *i)
            {
              v23 = i[1];
              if (v23 == v16)
              {
                if (*(i + 8) == v16)
                {
                  goto LABEL_61;
                }
              }

              else
              {
                if (v19.u32[0] > 1uLL)
                {
                  if (v23 >= *&v18)
                  {
                    v23 %= *&v18;
                  }
                }

                else
                {
                  v23 &= *&v18 - 1;
                }

                if (v23 != v20)
                {
                  break;
                }
              }
            }
          }
        }

        v24 = v4 + bswap32(*(v13 + 8));
        v25 = **(a1 + 8);
        v26 = v24 + 4;
        if (v24 + 4 <= v25)
        {
          v27 = bswap32(*(v24 + 2)) >> 16;
          v28 = v26 + 2 * v27;
          v29 = v24 + 6 <= v25 ? (v25 - v26) >> 1 : 0;
          v30 = v28 <= v25 && v28 >= v26;
          if (v30 || v29 == v27)
          {
            if (v18)
            {
              v32 = vcnt_s8(v18);
              v32.i16[0] = vaddlv_u8(v32);
              if (v32.u32[0] > 1uLL)
              {
                v33 = v16;
                if (*&v18 <= v16)
                {
                  v33 = v16 % v17[1];
                }
              }

              else
              {
                v33 = (v18.i32[0] - 1) & v16;
              }

              v34 = *(*v17 + 8 * v33);
              if (v34)
              {
                for (j = *v34; j; j = *j)
                {
                  v36 = j[1];
                  if (v36 == v16)
                  {
                    if (*(j + 8) == v16)
                    {
                      goto LABEL_61;
                    }
                  }

                  else
                  {
                    if (v32.u32[0] > 1uLL)
                    {
                      if (v36 >= *&v18)
                      {
                        v36 %= *&v18;
                      }
                    }

                    else
                    {
                      v36 &= *&v18 - 1;
                    }

                    if (v36 != v33)
                    {
                      break;
                    }
                  }
                }
              }
            }

            operator new();
          }
        }

LABEL_61:
        v13 = v14;
      }

      while (v14 != v12);
    }

    return 1;
  }
}

uint64_t std::__function::__value_func<BOOL ()(OTL::ConditionSetTable const*,OTL::FeatureTableSubstitutionTable const*,BOOL &)>::~__value_func[abi:fn200100](uint64_t a1)
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

uint64_t TRunGlue::ReorderGlyphs(uint64_t this)
{
  v1 = *(this + 168);
  v2 = *(this + 32);
  v3 = (v1 + 2 * v2 - 2);
  if (v2)
  {
    v4 = v3 > v1;
  }

  else
  {
    v4 = 0;
  }

  if (v4)
  {
    v5 = v1 + 2;
    do
    {
      v6 = *(v5 - 2);
      *(v5 - 2) = *v3;
      *v3-- = v6;
      v7 = v5 >= v3;
      v5 += 2;
    }

    while (!v7);
  }

  v8 = *(this + 176);
  v9 = &v8[2 * v2 - 2];
  if (v2)
  {
    v10 = v9 > v8;
  }

  else
  {
    v10 = 0;
  }

  if (v10)
  {
    do
    {
      v11 = *v8;
      v12 = v8[1];
      *v8 = *v9;
      v8 += 2;
      *v9 = v11;
      *(v9 + 8) = v12;
      v9 -= 16;
    }

    while (v8 < v9);
    v2 = *(this + 32);
  }

  if (v2)
  {
    v13 = *(this + 184);
    v14 = &v13[2 * v2 - 2];
    if (v14 > v13)
    {
      do
      {
        v15 = *v13;
        v16 = v13[1];
        *v13 = *v14;
        v13 += 2;
        *v14 = v15;
        *(v14 + 8) = v16;
        v14 -= 16;
      }

      while (v13 < v14);
      v2 = *(this + 32);
    }
  }

  v17 = *(this + 408);
  v18 = (v17 + 4 * v2 - 4);
  if (v2)
  {
    v19 = v18 > v17;
  }

  else
  {
    v19 = 0;
  }

  if (v19)
  {
    v20 = v17 + 4;
    do
    {
      v21 = *(v20 - 4);
      *(v20 - 4) = *v18;
      *v18-- = v21;
      v7 = v20 >= v18;
      v20 += 4;
    }

    while (!v7);
  }

  if (v2)
  {
    v22 = *(this + 416);
    v23 = (v22 + 8 * v2 - 8);
    if (v23 > v22)
    {
      v24 = v22 + 8;
      do
      {
        v25 = *(v24 - 8);
        *(v24 - 8) = *v23;
        *v23-- = v25;
        v7 = v24 >= v23;
        v24 += 8;
      }

      while (!v7);
    }
  }

  *(this + 24) = -*(this + 24);
  return this;
}

void TRunGlue::InitPropertiesForCombining(TRunGlue *this, const TCharStream *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  *(this + 515) = 1;
  TRunGlue::InitPropertiesFromDeletedGlyphs(this);
  v8 = 0xAAAAAAAAAAAAAAAALL;
  Chars = TCharStream::GetChars(a2, *(this + 5), &v8);
  if (Chars)
  {
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v13[14] = v5;
    v13[13] = v5;
    v13[12] = v5;
    v13[11] = v5;
    v13[10] = v5;
    v13[9] = v5;
    v13[8] = v5;
    v13[7] = v5;
    v13[6] = v5;
    v13[5] = v5;
    v13[3] = v5;
    v13[4] = v5;
    v13[1] = v5;
    v13[2] = v5;
    v13[0] = v5;
    v11 = 0;
    v12 = 0;
    v9 = &v10;
    v10 = 0;
    v14 = v13;
    v6 = -1;
    v7 = -1;
    TUnicodeEncoder::EncodePortion(&v9, 0, Chars, v8, *(*(this + 62) + 408), 0, *(this + 21), *(this + 22), 2, *(this + 51), &v7, 0);
    if (v10 != v11)
    {
      TRunGlue::FilterSurrogates(this, a2, &v10);
      v6 = 1;
    }

    *(this + 60) = v6;
    v9 = &v10;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v9);
  }
}

uint64_t TCharStream::GetChars(TCharStream *this, uint64_t a2, uint64_t *a3)
{
  v4 = *(this + 1);
  v3 = *(this + 2);
  v5 = v3 + v4;
  v9 = __OFSUB__(a2, v4);
  v6 = a2 - v4;
  if (v6 < 0 != v9)
  {
    v9 = 0;
    v7 = 1;
    v8 = 0;
  }

  else
  {
    v9 = __OFSUB__(v5, a2);
    v7 = v5 == a2;
    v8 = v5 - a2 < 0;
  }

  if (v8 ^ v9 | v7)
  {
    return 0;
  }

  v10 = *(this + 3);
  if (!v10)
  {
    return (*(*this + 64))();
  }

  *a3 = v3 - v6;
  return v10 + 2 * v6;
}

BOOL TRunGlue::FilterSurrogates(TRunGlue *this, uint64_t a2, const uint64_t **a3)
{
  v46 = *MEMORY[0x1E69E9840];
  v3 = *(this + 60);
  if (!v3)
  {
    v5 = a3;
    *&v7 = 0xAAAAAAAAAAAAAAAALL;
    *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v44[14] = v7;
    v44[13] = v7;
    v44[12] = v7;
    v44[11] = v7;
    v44[10] = v7;
    v44[9] = v7;
    v44[8] = v7;
    v44[7] = v7;
    v44[6] = v7;
    v44[5] = v7;
    v44[4] = v7;
    v44[3] = v7;
    v44[2] = v7;
    v44[1] = v7;
    v44[0] = v7;
    memset(v43, 0, sizeof(v43));
    v45 = v44;
    if (a3)
    {
      if (*a3 == a3[1])
      {
        goto LABEL_21;
      }
    }

    else
    {
      v37 = a2;
      v41 = 0u;
      v38 = 0u;
      *v39 = 0u;
      memset(v40, 0, sizeof(v40));
      v8 = *(a2 + 16);
      v42 = 0;
      *&v41 = v8;
      v9 = *(this + 5);
      v10 = *(this + 6);
      v33[0] = v9;
      if (v10 < 1)
      {
LABEL_21:
        v4 = 0;
LABEL_41:
        v37 = v43;
        std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v37);
        return v4;
      }

      v11 = 0;
      v12 = v10 + v9;
      do
      {
        while (!((TCharStreamIterator::GetFullChar(&v37, v33, 0) - 0x10000) >> 20) && v33[0] < v12)
        {
          std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](v43, v33);
          ++v33[0];
          v11 = 1;
          if (v33[0] >= v12)
          {
            goto LABEL_17;
          }
        }

        ++v33[0];
      }

      while (v33[0] < v12);
      if ((v11 & 1) == 0)
      {
        goto LABEL_21;
      }

LABEL_17:
      v5 = v43;
    }

    if (*(this + 18))
    {
      v14 = (*(*this + 24) - *(*this + 16)) >> 3;
      TLine::DeleteChars(*this, v5[1] - *v5, *v5);
      v15 = *(*this + 24) - *(*this + 16);
      if (v14 == v15 >> 3)
      {
        *(this + 20) = *(*(this + 18) + 208) + *(this + 19);
        TRunGlue::ComputeEndIndex(this);
      }

      else
      {
        v21 = v14 - (v15 >> 3);
        v47.location = *(this + 1);
        v47.length = *(this + 2) - v21;
        *(this + 17) -= v21;
        TRunGlue::SetRunRange(this, v47);
      }
    }

    else
    {
      v16 = *(this + 52);
      v17 = *v5;
      v18 = *(this + 4);
      if (v18)
      {
        v19 = 8 * v18;
        v20 = *(this + 52);
        while (*v20 != *v17)
        {
          ++v20;
          v19 -= 8;
          if (!v19)
          {
            v20 = (v16 + 8 * v18);
            break;
          }
        }
      }

      else
      {
        v20 = *(this + 52);
      }

      v22 = (v20 - v16) >> 3;
      if (v22 < v18)
      {
        v32 = v16 + 8 * *(this + 19);
        v23 = v5[1];
        v24 = 16 * v22;
        v25 = (v20 - v16) >> 3;
        do
        {
          if (v17 != v23 && *(v32 + 8 * v25) == *v17)
          {
            if (++v25 >= v18)
            {
              break;
            }

            ++v17;
          }

          v33[0] = this;
          v33[1] = v25;
          v26 = *(this + 19);
          v28 = *(this + 22) + 16 * v26;
          v34 = *(this + 21) + 2 * v26;
          v27 = v34;
          v35 = v28;
          v36 = *(this + 23) + 16 * v26;
          v29 = v36;
          TRunGlue::TGlyphInVector::operator TStorageRange::GlyphEntry(&v37, v33);
          *(v27 + 2 * v22) = v37;
          *(v28 + v24) = v38;
          TRunGlue::SetGlyphProps(this, v22, v39[0]);
          TRunGlue::SetStringIndex(this, v22, *&v39[2]);
          *(v29 + v24) = *(v40 + 8);
          ++v25;
          ++v22;
          v18 = *(this + 4);
          v24 += 16;
        }

        while (v25 < v18);
      }

      while (v22 < v18)
      {
        TRunGlue::SetStringIndex(this, v22, -1);
        TRunGlue::Delete(this, v22++, 0);
        v18 = *(this + 4);
      }

      v30 = v5[1] - *v5;
      std::function<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::operator()(*(this + 59), *(this + 19) + v18, -(v30 >> 3), this + 168, this + 176, this + 184, this + 416);
      *(this + 4) -= v30 >> 3;
      *(this + 20) -= v30 >> 3;
    }

    v4 = 1;
    goto LABEL_41;
  }

  return v3 > 0;
}

uint64_t TRunGlue::GetMappedCharsInRange(uint64_t *a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  result = *a1;
  if (result)
  {

    return TLine::GetMappedCharsInRange(result, a2, a3, a4);
  }

  else
  {
    v8 = a1[4];
    if (v8 >= 1)
    {
      v9 = 0;
      v10 = a1[19];
      v11 = a1[52] + 8 * v10;
      v12 = (a1[51] + 4 * v10);
      v13 = a2 + a3;
      while (1)
      {
        v14 = *(v11 + 8 * v9);
        if (v14 >= a2)
        {
          break;
        }

        ++v9;
        v12 += 4;
        if (v8 == v9)
        {
          return result;
        }
      }

      v18 = *(v11 + 8 * v9);
      if (v14 < v13)
      {
        v15 = v9 + 1;
        do
        {
          v16 = *v12;
          v12 += 4;
          if ((v16 & 0x20) == 0 && a2 <= v14)
          {
            v17 = a4[1];
            if (*a4 == v17 || v14 != *(v17 - 8))
            {
              result = std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](a4, &v18);
              v8 = a1[4];
            }
          }

          if (v15 >= v8)
          {
            break;
          }

          v14 = *(v11 + 8 * v15);
          v18 = v14;
          ++v15;
        }

        while (v14 < v13);
      }
    }
  }

  return result;
}

unint64_t TRunGlue::GetGlyphIDForCharIndex(TRunGlue *this, uint64_t a2)
{
  v4 = *this;
  if (!v4)
  {
    v10 = *(this + 4);
    if (v10 >= 1)
    {
      v11 = *(this + 19);
      v12 = (*(this + 52) + 8 * v11);
      for (i = (*(this + 21) + 2 * v11); ; ++i)
      {
        v13 = *v12++;
        if (v13 >= a2)
        {
          break;
        }

        if (!--v10)
        {
          return 0;
        }
      }

      return *i;
    }

    return 0;
  }

  result = TLine::FindRunWithCharIndex(v4, a2, 1);
  v6 = *(*this + 16);
  v7 = *(*this + 24) - v6;
  if (result >= v7 >> 3)
  {
    return 0;
  }

  if (v7 >> 3 > result)
  {
    v8 = *(*(v6 + 8 * result) + 40);
    i = (*(*(v8 + 216) + 16) + 2 * *(v8 + 200) + 2 * TRun::GetGlyphIndexForCharIndex<false>(v8, a2));
    return *i;
  }

  __break(1u);
  return result;
}

uint64_t TRunGlue::ReplaceCharRangeWithGlyphs(TRunGlue *this, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  if (*this)
  {
    return 0;
  }

  v8 = this;
  v9 = *(this + 4);
  if (v9 < 1)
  {
    return 0;
  }

  v10 = a2;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = *(this + 19);
  v16 = *(this + 21) + 2 * v15;
  v17 = *(this + 52);
  v18 = *(this + 51) + 4 * v15;
  v19 = v17 + 8 * v15;
  v20 = 1 - a3;
  v21 = (v17 + 8);
  v22 = 8 * v9 - 8;
  v23 = 2;
  v24 = 4;
  v25 = 8;
  while (*(v19 + 8 * v14) < a2)
  {
    ++v14;
    ++v20;
    v13 += 2;
    v12 += 4;
    v11 += 8;
    v23 += 2;
    v24 += 4;
    v25 += 8;
    ++v21;
    v22 -= 8;
    if (v14 == v9)
    {
      return 0;
    }
  }

  while (v22)
  {
    v27 = *(v21 - 1);
    v26 = *v21++;
    v22 -= 8;
    if (v26 < v27)
    {
      return 0;
    }
  }

  v28 = *a4;
  v29 = *(a4 + 8);
  v75 = a4;
  v30 = v29 - *a4;
  v31 = a3 - (v30 >> 1);
  if (v31 >= 1)
  {
    if (v29 != v28)
    {
      v32 = 0;
      v56 = (*v28 & 0xF800) == 55296;
      v33 = 1;
      if (v56)
      {
        v33 = 2;
      }

      v34 = v33 + a2;
      v6 = v14;
      while (1)
      {
        v35 = *(v8 + 4);
        if (v6 >= v35)
        {
          return 0;
        }

        v36 = v34 + v32;
        while (*(v19 + 8 * v6) < v36)
        {
          if (v35 == ++v6)
          {
            return 0;
          }
        }

        v76 = v34;
        v77 = v32;
        v78 = v30;
        v79 = v18;
        v89 = v31;
        v92 = a3;
        v83 = v16;
        v85 = v8;
        v94 = v10;
        v97 = a5;
        TRunGlue::Delete(v8, v6, 0);
        v10 = v94;
        if (a6)
        {
          *(v19 + 8 * v14) = *(a6 + 8 * (v36 - v94)) + v94;
        }

        v30 = v78;
        v32 = v77 + 1;
        v8 = v85;
        v31 = v89;
        a5 = v97;
        a3 = v92;
        v16 = v83;
        v18 = v79;
        v34 = v76;
        if (v77 + 1 == v89)
        {
          goto LABEL_23;
        }
      }
    }

    goto LABEL_80;
  }

LABEL_23:
  a4 = v30 >> 1;
  v37 = (v30 >> 1) - a3;
  if (v30 >> 1 <= a3)
  {
    v23 = 0;
    v24 = v10;
    v6 = v14;
  }

  else
  {
    v80 = v30 >> 1;
    v90 = v31;
    v93 = a3;
    v95 = v10;
    v98 = a5;
    v38 = *a5;
    if (a5[1] == *a5)
    {
LABEL_80:
      __break(1u);
LABEL_81:
      v88 = v8;
      v91 = v31;
      v96 = v10;
      v70 = a5;
      v71 = a3;
      v72 = v16;
      v73 = v18;
      v82 = a4;
      v74 = __cxa_guard_acquire(&qword_1ED567CA0);
      a4 = v82;
      v8 = v88;
      v31 = v91;
      v18 = v73;
      v16 = v72;
      a3 = v71;
      a5 = v70;
      v10 = v96;
      if (v74)
      {
        _MergedGlobals_20 = CFCharacterSetGetPredefined(kCFCharacterSetNonBase);
        __cxa_guard_release(&qword_1ED567CA0);
        a4 = v82;
        v8 = v88;
        v31 = v91;
        v18 = v73;
        v16 = v72;
        a3 = v71;
        a5 = v70;
        v10 = v96;
      }

      goto LABEL_46;
    }

    v86 = *(v18 + 4 * v14);
    *(v16 + 2 * v14) = *v38;
    v6 = v8;
    TRunGlue::DoGlyphInsertion(v8, (v38 + 2), ((v30 >> 1) - a3), 0, 1, v14, v14, 0, 0);
    v8 = v6;
    v39 = *(v6 + 168);
    v40 = *(v6 + 152);
    v16 = v39 + 2 * v40;
    v18 = *(v6 + 408) + 4 * v40;
    v19 = *(v6 + 416) + 8 * v40;
    *(v18 + 4 * v14) |= 0x80u;
    v10 = v95;
    *(v19 + 8 * v14) = v95;
    if (a6)
    {
      if (v80 < 2)
      {
        v6 = v14 + 1;
        goto LABEL_79;
      }

      v41 = 0;
      if (((v98[1] - *v98) >> 1) <= 1)
      {
        v42 = 1;
      }

      else
      {
        v42 = (v98[1] - *v98) >> 1;
      }

      v31 = v16 + v23;
      v43 = v18 + v24;
      v44 = v42 - 1;
      v16 = a6 + 8;
      v45 = *v98 + 2;
      while (v44 != v41)
      {
        *(v31 + 2 * v41) = *(v45 + 2 * v41);
        v46 = *(v16 + 8 * v41);
        *(v43 + 4 * v41) = v86 | ((v46 == 0) << 9) | 0x40;
        *(v19 + v25 + 8 * v41++) = v46 + v95;
        v18 = v14 + v41;
        v6 = v14 + v41 + 1;
        if (v6 >= v80 + v14)
        {
          goto LABEL_79;
        }
      }

      goto LABEL_80;
    }

    v6 = v14 + 1;
    a5 = v98;
    a4 = v80;
    if (v14 + 1 < v37 + v14 + 1)
    {
      v47 = *v98;
      v48 = (v98[1] - *v98) >> 1;
      if (v48 <= 1)
      {
        v48 = 1;
      }

      v6 = v80 + v20;
      v31 = v16 + v13;
      v23 = 1;
      while (v48 != v23)
      {
        *(v31 + 2 * v23) = *(v47 + 2 * v23);
        *(v18 + v12 + 4 * v23) = v86 | 0x240;
        *(v19 + v11 + 8 * v23++) = v95;
        if (v90 + v23 == 1)
        {
          goto LABEL_44;
        }
      }

      goto LABEL_80;
    }

    v23 = 1;
LABEL_44:
    v31 = 0;
    v24 = v95 + 1;
    a3 = v93;
  }

  if ((atomic_load_explicit(&qword_1ED567CA0, memory_order_acquire) & 1) == 0)
  {
    goto LABEL_81;
  }

LABEL_46:
  v49 = v10 + a3;
  if (v24 < v10 + a3)
  {
    v50 = &qword_1ED567000;
    do
    {
      v51 = *(v8 + 4);
      if (v6 >= v51)
      {
        return 0;
      }

      v52 = v23;
      while (*(v19 + 8 * v6) < v24)
      {
        result = 0;
        if (v51 == ++v6)
        {
          return result;
        }
      }

      if (v23 >= (a5[1] - *a5) >> 1)
      {
        goto LABEL_80;
      }

      *(v16 + 2 * v6) = *(*a5 + 2 * v23);
      v53 = *v75;
      v54 = (v75[1] - *v75) >> 1;
      if (v54 <= v23)
      {
        goto LABEL_80;
      }

      ++v23;
      v55 = *(v53 + 2 * v52);
      v56 = (v55 & 0xFC00) != 0xD800 || v23 == a4;
      if (!v56)
      {
        if (v54 <= v23)
        {
          goto LABEL_80;
        }

        v57 = *(v53 + 2 * v23);
        v58 = (v57 & 0xFC00) == 56320;
        v59 = v57 + (v55 << 10) - 56613888;
        if (v58)
        {
          v23 = v52 + 2;
        }

        else
        {
          v23 = v52 + 1;
        }

        if (v58)
        {
          v55 = v59;
        }
      }

      v60 = v50[403];
      if (v60 && (v84 = v16, v87 = v8, v61 = v10, v99 = a5, v62 = a3, v63 = v18, v81 = a4, v64 = v31, IsLongCharacterMember = CFCharacterSetIsLongCharacterMember(v60, v55), v50 = &qword_1ED567000, a4 = v81, v31 = v64, v18 = v63, v16 = v84, v8 = v87, a3 = v62, a5 = v99, v10 = v61, IsLongCharacterMember))
      {
        v66 = *(v63 + 4 * v6) | 0x40;
      }

      else
      {
        v67 = *(v18 + 4 * v6);
        if ((v67 & 0x40) == 0)
        {
          goto LABEL_72;
        }

        v66 = v67 & 0xFFFFFFBF;
      }

      *(v18 + 4 * v6) = v66;
LABEL_72:
      if (a6)
      {
        v68 = *(a6 + 8 * (v24 - v10));
        if (a3 > v68 && (v68 & 0x8000000000000000) == 0)
        {
          v69 = v68 + v10;
          if (v69 != v24)
          {
            *(v19 + 8 * v6) = v69;
          }
        }
      }

      ++v6;
      v24 += v31 - v52 + v23;
      v31 = 0;
    }

    while (v24 < v49);
  }

  v39 = *(v8 + 21);
LABEL_79:
  TFont::GetUnsummedAdvancesForGlyphs(*(v8 + 62), v39 + 2 * v14, (*(v8 + 22) + 16 * v14), 2, v6 - v14, 0, 0);
  return 1;
}

uint64_t TRunGlue::DoGlyphInsertion(TRunGlue *this, const unsigned __int16 *a2, unsigned int a3, int a4, int a5, int64_t a6, int64_t a7, char a8, BOOL *a9)
{
  v80 = *MEMORY[0x1E69E9840];
  if (*(this + 18))
  {
    if (a7 < 0)
    {
      return 0;
    }

LABEL_6:
    TRunGlue::FocusOnIndex(this, a7);
    v17 = TRunGlue::length(this);
    if (v17 - 1 >= a7)
    {
      v18 = a7;
    }

    else
    {
      v18 = v17 - 1;
    }

    StringIndex = TRunGlue::GetStringIndex(this, v18);
    GlyphProps = TRunGlue::GetGlyphProps(this, v18);
    v72 = GlyphProps & 0xFFFFEF37;
    if ((GlyphProps & 0x300) == 0)
    {
      TRunGlue::SetGlyphProps(this, v18, v72 | 0x80);
    }

    if (a5)
    {
      v21 = 256;
    }

    else
    {
      v21 = 512;
    }

    TRunGlue::FocusOnIndex(this, a6);
    v70 = a6;
    v22 = (a4 ^ 1u) + a6;
    if (v22 < 0 || *(this + 20) < v22)
    {
      if (a9)
      {
        result = 0;
        *a9 = 1;
        return result;
      }

      return 0;
    }

    v23 = a3;
    v24 = *(this + 18);
    if (v24)
    {
      v69 = a3;
      if (v24 != *(this + 53))
      {
        TStorageRange::DetachStorageIfShared((v24 + 192));
        v24 = *(this + 18);
        *(this + 53) = v24;
      }

      if (v22 - *(this + 19) < 0)
      {
        v25.location = 0;
      }

      else
      {
        v25.location = v22 - *(this + 19);
      }

      v25.length = a3;
      TStorageRange::InsertGlyphs((v24 + 192), v25);
    }

    else
    {
      result = std::function<BOOL ()(CFRange,unsigned short **,CGSize **,CGPoint **,long **)>::operator()(*(this + 59), *(this + 19) + v22, a3, this + 168, this + 176, this + 184, this + 416);
      if (!result)
      {
        return result;
      }

      v69 = a3;
      if (!*(this + 51))
      {
        v68 = v21;
        v55 = TRunGlue::length(this);
        v56 = a3 + v55 + 14;
        if (a3 + v55 + 7 >= 0)
        {
          v56 = a3 + v55 + 7;
        }

        std::vector<unsigned char,TInlineBufferAllocator<unsigned char,4ul>>::resize(this + 27, v56 >> 3);
        v57 = TRunGlue::length(this);
        v58 = v22 + a3;
        if (v57 < (v22 + v23))
        {
LABEL_81:
          v21 = v68;
          if (!v69)
          {
            goto LABEL_25;
          }

          v64 = v22;
          while (1)
          {
            v65 = v64 + *(this + 19);
            v66 = v65 >= 0 ? v64 + *(this + 19) : v65 + 7;
            v67 = *(this + 27);
            if (*(this + 28) - v67 <= (v66 >> 3))
            {
              break;
            }

            *(v67 + (v66 >> 3)) &= ~(1 << (v65 & 7));
            if (++v64 >= v58)
            {
              goto LABEL_25;
            }
          }
        }

        else
        {
          v59 = v57;
          while (1)
          {
            v60 = v59 + *(this + 19);
            v61 = v60 + 7;
            if (v60 >= 0)
            {
              v61 = v59 + *(this + 19);
            }

            v62 = *(this + 27);
            if (*(this + 28) - v62 <= (v61 >> 3))
            {
              break;
            }

            TRunGlue::SetDeletedGlyphsBit(this, v60 + 1, (*(v62 + (v61 >> 3)) >> (v60 & 7)) & 1);
            if (v59-- <= v58)
            {
              goto LABEL_81;
            }
          }
        }

LABEL_89:
        __break(1u);
      }

      v41 = *(this + 32);
      if (v41 != *(this + 33))
      {
        LODWORD(v74) = 0;
        std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::insert(this + 32, (v41 + 4 * v22), a3, &v74);
        *(this + 51) = *(this + 32);
      }
    }

LABEL_25:
    TRunGlue::InsertedGlyphs(this, v23);
    v26 = *(this + 13);
    v27 = v69;
    if (v26)
    {
      v28 = *v26;
      v29 = v26[1];
      if (*v26 != v29)
      {
        v30 = (v29 - v28) >> 4;
        if (v30 <= v18)
        {
          goto LABEL_89;
        }

        if (v30 >= v22)
        {
          std::vector<TGlyphAuxDataListEntry,TInlineBufferAllocator<TGlyphAuxDataListEntry,30ul>>::insert(v26, (v28 + 16 * v22), v23, (v28 + 16 * v18));
        }
      }
    }

    *&v31 = 0xAAAAAAAAAAAAAAAALL;
    *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v77[5] = v31;
    v77[6] = v31;
    v77[3] = v31;
    v77[4] = v31;
    v77[1] = v31;
    v77[2] = v31;
    v77[0] = v31;
    v75 = 0;
    v76 = 0;
    v74 = 0;
    v78 = 0xAAAAAAAAAAAAAAAALL;
    v79 = v77;
    if (v69)
    {
      v32 = v72 | v21;
      std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::__vallocate[abi:fn200100](&v74, v23);
      v33 = 0;
      v34 = (v23 + 0x3FFFFFFFFFFFFFFFLL) & 0x3FFFFFFFFFFFFFFFLL;
      v35 = vdupq_n_s64(v34);
      v36 = v75 + 4 * v23;
      v37 = v34 - ((v23 + 0x3FFFFFFFFFFFFFFFLL) & 3) + 4;
      v38 = (v75 + 8);
      do
      {
        v39 = vdupq_n_s64(v33);
        v40 = vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_18475A340)));
        if (vuzp1_s16(v40, *v35.i8).u8[0])
        {
          *(v38 - 2) = v32;
        }

        if (vuzp1_s16(v40, *&v35).i8[2])
        {
          *(v38 - 1) = v32;
        }

        if (vuzp1_s16(*&v35, vmovn_s64(vcgeq_u64(v35, vorrq_s8(v39, xmmword_18475AAF0)))).i32[1])
        {
          *v38 = v32;
          v38[1] = v32;
        }

        v33 += 4;
        v38 += 4;
      }

      while (v37 != v33);
      v75 = v36;
      v27 = v69;
    }

    else
    {
      v36 = 0;
    }

    if (!(GlyphProps >> 29) && (a8 & 1) == 0)
    {
      v42 = v74;
      if (v74 != v36)
      {
        v43 = 0x1000000;
        v44 = v74;
        do
        {
          *(v44 + 3) = HIBYTE(v43) & 0xF;
          v44 += 4;
          v43 += 0x1000000;
        }

        while (v44 != v36);
      }

      if ((*(this + 6) & 0x80000000) != 0 && v42 != v36)
      {
        v45 = (v36 - 4);
        if (v45 > v42)
        {
          v46 = v42 + 4;
          do
          {
            v47 = *(v46 - 4);
            *(v46 - 4) = *v45;
            *v45-- = v47;
            v48 = v46 >= v45;
            v46 += 4;
          }

          while (!v48);
        }
      }
    }

    if (v27)
    {
      v49 = 0;
      v50 = MEMORY[0x1E695EFF8];
      while (v49 < (v75 - v74) >> 2)
      {
        TRunGlue::SetGlyphProps(this, v22 + v49, *(v74 + 4 * v49));
        TRunGlue::SetOrigin(this, v22 + v49, *v50);
        TRunGlue::SetStringIndex(this, v22 + v49, StringIndex);
        TRunGlue::SetAttachmentCount(this, v22 + v49, 0);
        v51 = a2[v49];
        TRunGlue::SetGlyphID<true>(this, v22 + v49, v51);
        v52 = *(this + 24);
        if (v52)
        {
          if (*(this + 63) > v51)
          {
            *(v52 + (v51 >> 3)) |= 1 << (v51 & 7);
          }
        }

        if (v23 == ++v49)
        {
          goto LABEL_64;
        }
      }

      goto LABEL_89;
    }

LABEL_64:
    v53 = *(this + 18);
    if (!v53)
    {
      goto LABEL_70;
    }

    if (a7 == v70)
    {
      if (*(v53 + 256) > 1)
      {
LABEL_70:
        v73 = &v74;
        std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v73);
        return 1;
      }

      v54 = 1;
    }

    else
    {
      v54 = 2;
    }

    *(v53 + 256) = v54;
    goto LABEL_70;
  }

  result = 0;
  if ((a7 & 0x8000000000000000) == 0 && *(this + 59))
  {
    goto LABEL_6;
  }

  return result;
}

void TRunGlue::Rotate(TRunGlue *this, uint64_t a2, int64_t a3, int64_t a4, void *a5)
{
  v192[1] = *MEMORY[0x1E69E9840];
  v5 = a3 - a2;
  if (a3 < a2)
  {
    return;
  }

  v6 = a3;
  v7 = a4 - a3;
  if (a4 <= a3)
  {
    return;
  }

  v8 = a2;
  if (a5)
  {
    v10 = 16 * a3;
    if (16 * a3 != 16 * a2)
    {
      v11 = 16 * a4 - v10;
      if (16 * a4 != v10)
      {
        v12 = (*a5 + 16 * a2);
        v13 = (*a5 + 16 * a3);
        if (v12 + 2 == v13)
        {
          v14 = *v12;
          v15 = v12[1];
          memmove((*a5 + 16 * v8), v13, 16 * a4 - v10);
          v12 = (v12 + v11);
LABEL_8:
          *v12 = v14;
          v12[1] = v15;
          goto LABEL_9;
        }

        v48 = *a5 + 16 * a4;
        if (v13 + 2 == v48)
        {
          v14 = *(v48 - 16);
          v15 = *(v48 - 8);
          if ((v48 - 16) != v12)
          {
            memmove(v12 + 2, (*a5 + 16 * v8), v48 - 16 - v12);
          }

          goto LABEL_8;
        }

        v80 = v10 - 16 * v8;
        v81 = v80 >> 4;
        if (v80 >> 4 == v11 >> 4)
        {
          v82 = *a5 + 16 * a3;
          do
          {
            v83 = *v12;
            v84 = v12[1];
            *v12 = *v82;
            v12 += 2;
            *v82 = v83;
            *(v82 + 8) = v84;
            if (v12 == v13)
            {
              break;
            }

            v82 += 16;
          }

          while (v82 != v48);
        }

        else
        {
          v134 = v11 >> 4;
          v135 = v80 >> 4;
          do
          {
            v136 = v135;
            v135 = v134;
            v134 = v136 % v134;
          }

          while (v134);
          v137 = &v12[2 * v135];
          do
          {
            v139 = *(v137 - 2);
            v137 -= 2;
            v138 = v139;
            v140 = v137[1];
            v141 = (v137 + v80);
            v142 = v137;
            do
            {
              v143 = v141;
              *v142 = *v141;
              v144 = &v141[2 * v81];
              v145 = __OFSUB__(v81, (v48 - v141) >> 4);
              v147 = v81 - ((v48 - v141) >> 4);
              v146 = (v147 < 0) ^ v145;
              v141 = &v12[2 * v147];
              if (v146)
              {
                v141 = v144;
              }

              v142 = v143;
            }

            while (v141 != v137);
            *v143 = v138;
            v143[1] = v140;
          }

          while (v137 != v12);
        }
      }
    }
  }

LABEL_9:
  TRunGlue::FocusOnIndex(this, v6);
  v16 = *(this + 18);
  if (!v16)
  {
    goto LABEL_105;
  }

  v17 = a4 - v8;
  v18 = *(this + 19);
  v19 = v8 - v18;
  if (v8 >= v18 && *(this + 20) >= a4)
  {
    if (v5 <= v7)
    {
      v66 = v6 - v18;
      v153 = v19 + v17 - v66;
      v67 = v8 - v18;
      v68 = v66 - v19;
      [*(v16 + 216) initGlyphStackWithCapacity:v66 - v19];
      if (v68 >= 1)
      {
        v69 = v67;
        v70 = v5;
        do
        {
          [*(v16 + 216) pushGlyphAtIndex:v69 + *(v16 + 200)];
          ++v69;
          --v70;
        }

        while (v70);
      }

      if (v153 >= 1)
      {
        v71 = v66;
        do
        {
          v72 = *(v16 + 216);
          v73 = *(v16 + 200);
          v74 = *(v72[5] + 4 * v73 + 4 * v71);
          if ((v74 & 0x40) != 0)
          {
            [v72 setProps:v74 & 0xFFFFEFBF | 0x1000 atIndex:v71 + v73];
          }

          ++v71;
          --v7;
        }

        while (v7);
      }

      [*(v16 + 216) moveGlyphsFromRange:*(v16 + 200) + v66 toIndex:{v153, *(v16 + 200) + v67}];
      if (v68 >= 1)
      {
        v75 = v5 + 1;
        v76 = ~v18 + a4;
        do
        {
          [*(v16 + 216) popGlyphAtIndex:v76 + *(v16 + 200)];
          v77 = *(v16 + 216);
          v78 = *(v16 + 200);
          v79 = *(v77[5] + 4 * v78 + 4 * v76);
          if ((v79 & 0x40) != 0)
          {
            [v77 setProps:v79 & 0xFFFFEFBF | 0x1000 atIndex:v76 + v78];
          }

          --v75;
          --v76;
        }

        while (v75 > 1);
      }
    }

    else
    {
      v155 = v8 - v18;
      v34 = ~v8 + v6;
      v35 = v17 - v5;
      [*(v16 + 216) initGlyphStackWithCapacity:v17 - v5];
      if (v17 - v5 >= 1)
      {
        v36 = v155 + v5;
        v37 = v17 - v5;
        do
        {
          [*(v16 + 216) pushGlyphAtIndex:v36 + *(v16 + 200)];
          ++v36;
          --v37;
        }

        while (v37);
      }

      if ((v34 & 0x8000000000000000) == 0)
      {
        v38 = v8 - v18;
        v39 = v5;
        do
        {
          v40 = *(v16 + 216);
          v41 = *(v16 + 200);
          v42 = *(v40[5] + 4 * v41 + 4 * v38);
          if ((v42 & 0x40) != 0)
          {
            [v40 setProps:v42 & 0xFFFFEFBF | 0x1000 atIndex:v38 + v41];
          }

          ++v38;
          --v39;
        }

        while (v39);
      }

      [*(v16 + 216) moveGlyphsFromRange:*(v16 + 200) + v155 toIndex:{v5, v155 + v35 + *(v16 + 200)}];
      if (v35 >= 1)
      {
        v43 = ~v18 + v8;
        v44 = 4 * v8 - 4 * v18 - 4;
        do
        {
          [*(v16 + 216) popGlyphAtIndex:v43 + v35 + *(v16 + 200)];
          v45 = *(v16 + 216);
          v46 = *(v16 + 200);
          v47 = *(v45[5] + 4 * v46 + v44 + 4 * v35);
          if ((v47 & 0x40) != 0)
          {
            [v45 setProps:v47 & 0xFFFFEFBF | 0x1000 atIndex:v43 + v35 + v46];
          }

          --v35;
        }

        while ((v35 + 1) > 1);
      }
    }

    [*(v16 + 216) disposeGlyphStack];
    *(*(this + 18) + 256) = 2;
    return;
  }

  v20 = *(this + 13);
  if (!v20)
  {
    goto LABEL_21;
  }

  v21 = *v20;
  v22 = (*(*(this + 13) + 8) - v21) >> 4;
  if (v22 <= v8)
  {
    goto LABEL_21;
  }

  if (v22 <= v8)
  {
LABEL_172:
    __break(1u);
  }

  v23 = v21 + 16 * v8;
  v24 = *(v23 + 12);
  if (v24)
  {
    if (v8 < 1)
    {
      v26 = v8;
    }

    else
    {
      v25 = (v23 - 4);
      v26 = v8;
      while (1)
      {
        v27 = *v25;
        v25 -= 4;
        if (v27 != v24)
        {
          break;
        }

        --v26;
        ++v17;
        if ((v26 + 1) <= 1)
        {
          v26 = 0;
          v17 = a4;
          break;
        }
      }
    }

    v148 = v17 + v26;
    v149 = TRunGlue::length(this);
    if (v17 + v26 < v149)
    {
      v150 = *(this + 13);
      if ((v150[1] - *v150) >> 4 <= v148)
      {
        v151 = v17 + v26;
      }

      else
      {
        v151 = (v150[1] - *v150) >> 4;
      }

      v152 = (*v150 + 16 * v148 + 12);
      do
      {
        if (!(v26 - v151 + v17))
        {
          goto LABEL_172;
        }

        if (*v152 != v24)
        {
          goto LABEL_22;
        }

        ++v17;
        v152 += 4;
      }

      while (v26 + v17 < v149);
      v17 = v149 - v26;
    }
  }

  else
  {
LABEL_21:
    v26 = v8;
  }

LABEL_22:
  *&v28 = 0xAAAAAAAAAAAAAAAALL;
  *(&v28 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v190 = v28;
  v191 = v28;
  v188 = v28;
  v189 = v28;
  v186 = v28;
  v187 = v28;
  v184 = v28;
  v185 = v28;
  v182 = v28;
  v183 = v28;
  v180 = v28;
  v181 = v28;
  v178 = v28;
  v179 = v28;
  v177 = v28;
  v176 = v28;
  v175 = v28;
  v174 = v28;
  v173 = v28;
  v172 = v28;
  v171 = v28;
  v170 = v28;
  v169 = v28;
  v168 = v28;
  v167 = v28;
  v166 = v28;
  v165 = v28;
  *&v164[32] = v28;
  *&v164[16] = v28;
  *v164 = v28;
  __src = 0;
  v163 = 0uLL;
  v192[0] = v164;
  if (v17 < 1)
  {
    v32 = 0;
    v33 = 0;
  }

  else
  {
    GlyphProps = TRunGlue::GetGlyphProps(this, v26);
    StringIndex = TRunGlue::GetStringIndex(this, v26);
    if ((GlyphProps & 0x380) != 0)
    {
      v31 = 0;
      goto LABEL_98;
    }

    v49 = StringIndex;
    v50 = 0;
    while (1)
    {
      v51 = v163;
      if (v163 >= *(&v163 + 1))
      {
        v52 = __src;
        v53 = v163 - __src;
        v54 = (v163 - __src) >> 4;
        v55 = v54 + 1;
        if ((v54 + 1) >> 60)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        v56 = *(&v163 + 1) - __src;
        if ((*(&v163 + 1) - __src) >> 3 > v55)
        {
          v55 = v56 >> 3;
        }

        v57 = v56 >= 0x7FFFFFFFFFFFFFF0 ? 0xFFFFFFFFFFFFFFFLL : v55;
        if (v57)
        {
          v58 = v192[0];
          if (v192[0] + 16 * v57 > v192)
          {
            if (!(v57 >> 60))
            {
              operator new();
            }

            std::__throw_bad_array_new_length[abi:fn200100]();
          }

          v192[0] += 16 * v57;
        }

        else
        {
          v58 = 0;
        }

        v59 = (v163 - __src) >> 4;
        v60 = (v58 + 16 * v54);
        v61 = v58 + 16 * v57;
        *v60 = v26;
        v60[1] = v49;
        v32 = v60 + 2;
        v62 = &v60[-2 * v59];
        memcpy(v62, v52, v53);
        v63 = __src;
        v64 = *(&v163 + 1);
        __src = v62;
        *&v163 = v32;
        *(&v163 + 1) = v61;
        if (v63)
        {
          if (v164 > v63 || v192 <= v63)
          {
            operator delete(v63);
          }

          else if (v64 == v192[0])
          {
            v192[0] = v63;
          }
        }
      }

      else
      {
        *v163 = v26;
        *(v51 + 8) = v49;
        v32 = (v51 + 16);
      }

      *&v163 = v32;
      if (1 - v17 == v50)
      {
        break;
      }

      v65 = TRunGlue::GetGlyphProps(this, ++v26);
      v49 = TRunGlue::GetStringIndex(this, v26);
      --v50;
      if ((v65 & 0x380) != 0)
      {
        v31 = -v50 >= v17;
        goto LABEL_98;
      }
    }

    v33 = __src;
  }

  v85 = 126 - 2 * __clz((v32 - v33) >> 4);
  if (v32 == v33)
  {
    v86 = 0;
  }

  else
  {
    v86 = v85;
  }

  std::__introsort<std::_ClassicAlgPolicy,TRunGlue::SeparateCharactersInGlyphRange(CFRange)::$_0 &,std::pair<long,long> *,false>(v33, v32, v86, 1);
  v87 = __src;
  v88 = v163;
  while (v87 != v88)
  {
    v89 = *v87;
    v91 = *(*this + 16);
    v90 = *(*this + 24);
    v156 = 0;
    v161[0] = TRunGlue::PhysicalRunIndexWithGlyphIndex(this, v89, &v156);
    if (TLine::SeparateCharWithGlyphIndex(*this, v161, v156))
    {
      v92 = *this;
      *(v92 + 152) = *(*this + 152) | 1;
      v93 = ((*(v92 + 24) - *(v92 + 16)) >> 3) - ((v90 - v91) >> 3);
      if (v93 >= 1)
      {
        TRunGlue::UpdateForSplitRun(this, v93);
      }
    }

    v87 += 2;
  }

  *(this + 20) = *(this + 19);
  v31 = 1;
LABEL_98:
  if (__src)
  {
    *&v163 = __src;
    if (v164 > __src || v192 <= __src)
    {
      operator delete(__src);
      if (v31)
      {
        goto LABEL_102;
      }

LABEL_105:
      v98 = a4;
      if (v6 != v8)
      {
        v99 = 16 * v8;
        v100 = v6;
        do
        {
          if (*(this + 18))
          {
            __src = 0xAAAAAAAAAAAAAAAALL;
            *&v163 = -1;
            *(&v163 + 1) = -1;
            memset(v164, 170, 24);
            *&v164[24] = -1;
            *&v164[32] = -1;
            v156 = v8;
            v101 = TRunGlue::EditRun(this, &v156);
            TStorageRange::GetGlyphEntry((v101 + 192), v156, &__src);
            v161[0] = v6;
            v102 = TRunGlue::EditRun(this, v161);
            TStorageRange::GetGlyphEntry((v102 + 192), v161[0], &v156);
            CopyToStorage(this, v8, &v156);
            CopyToStorage(this, v6, &__src);
          }

          else
          {
            __src = 0xAAAAAAAAAAAAAAAALL;
            *&v163 = -1;
            *(&v163 + 1) = -1;
            memset(v164, 170, 24);
            *&v164[24] = -1;
            *&v164[32] = -1;
            v156 = this;
            *&v157 = v8;
            v103 = *(this + 19);
            v104 = *(this + 22) + 16 * v103;
            *(&v157 + 1) = *(this + 21) + 2 * v103;
            *v158 = v104;
            v159 = *(this + 23) + 16 * v103;
            TRunGlue::TGlyphInVector::operator TStorageRange::GlyphEntry(&__src, &v156);
            v161[0] = this;
            v161[1] = v6;
            v105 = *(this + 19);
            v106 = *(this + 22) + 16 * v105;
            v161[2] = *(this + 21) + 2 * v105;
            v161[3] = v106;
            v161[4] = *(this + 23) + 16 * v105;
            TRunGlue::TGlyphInVector::operator TStorageRange::GlyphEntry(&v156, v161);
            v107 = *(this + 19);
            v108 = *(this + 22) + 16 * v107;
            v109 = *(this + 23) + 16 * v107;
            *(*(this + 21) + 2 * v107 + 2 * v8) = v156;
            *(v108 + v99) = v157;
            TRunGlue::SetGlyphProps(this, v8, v158[0]);
            TRunGlue::SetStringIndex(this, v8, v159);
            *(v109 + v99) = v160;
            v110 = *(this + 19);
            v111 = *(this + 22) + 16 * v110;
            v112 = *(this + 23) + 16 * v110;
            *(*(this + 21) + 2 * v110 + 2 * v6) = __src;
            *(v111 + 16 * v6) = v163;
            TRunGlue::SetGlyphProps(this, v6, *v164);
            TRunGlue::SetStringIndex(this, v6, *&v164[8]);
            *(v112 + 16 * v6) = *&v164[24];
            v98 = a4;
          }

          v113 = v6 + 1;
          if (++v8 == v100)
          {
            v114 = v6 + 1;
          }

          else
          {
            v114 = v100;
          }

          if (v113 == v98)
          {
            v6 = v100;
          }

          else
          {
            ++v6;
          }

          if (v113 != v98)
          {
            v100 = v114;
          }

          v99 += 16;
        }

        while (v8 != v6);
      }

      return;
    }
  }

  if (!v31)
  {
    goto LABEL_105;
  }

LABEL_102:
  v94 = TRunGlue::PhysicalRunIndexWithGlyphIndex(this, v8, &__src);
  v95 = TRunGlue::PhysicalRunIndexWithGlyphIndex(this, v6, &__src);
  if (TRunGlue::length(this) <= a4)
  {
    v97 = *(this + 6);
    v115 = *(this + 1);
    if (v97 < 1)
    {
      v96 = v115 - 1;
    }

    else
    {
      v96 = *(this + 2) + v115;
    }
  }

  else
  {
    v96 = TRunGlue::PhysicalRunIndexWithGlyphIndex(this, a4, &__src);
    v97 = *(this + 6);
  }

  if (v97 < 0)
  {
    v116 = v96 + 1;
  }

  else
  {
    v116 = v94;
  }

  if (v97 < 0)
  {
    v117 = v94 + 1;
  }

  else
  {
    v117 = v96;
  }

  v118 = v95 + (v97 >> 31);
  v119 = *this;
  if (v116 != v118)
  {
    v120 = v118 - 1;
    v121 = v116;
    while (v121 != v120)
    {
      v122 = *(v119 + 16);
      v123 = (*(v119 + 24) - v122) >> 3;
      if (v123 <= v121 || v123 <= v120)
      {
        goto LABEL_172;
      }

      v124 = *(v122 + 8 * v121);
      *(v122 + 8 * v121) = *(v122 + 8 * v120);
      *(v122 + 8 * v120) = v124;
      *(v119 + 154) |= 0x40u;
      v125 = ++v121 == v120--;
      if (v125)
      {
        break;
      }
    }

    v119 = *this;
  }

  if (v118 != v117)
  {
    v126 = v117 - 1;
    while (v118 != v126)
    {
      v127 = *(v119 + 16);
      v128 = (*(v119 + 24) - v127) >> 3;
      if (v128 <= v118 || v128 <= v126)
      {
        goto LABEL_172;
      }

      v129 = *(v127 + 8 * v118);
      *(v127 + 8 * v118) = *(v127 + 8 * v126);
      *(v127 + 8 * v126) = v129;
      *(v119 + 154) |= 0x40u;
      v125 = ++v118 == v126--;
      if (v125)
      {
        break;
      }
    }

    v119 = *this;
  }

  if (v116 != v117)
  {
    for (i = v117 - 1; v116 != i; --i)
    {
      v131 = *(v119 + 16);
      v132 = (*(v119 + 24) - v131) >> 3;
      if (v132 <= v116 || v132 <= i)
      {
        goto LABEL_172;
      }

      v133 = *(v131 + 8 * v116);
      *(v131 + 8 * v116) = *(v131 + 8 * i);
      *(v131 + 8 * i) = v133;
      *(v119 + 154) |= 0x40u;
      v125 = ++v116 == i;
      if (v125)
      {
        return;
      }
    }
  }
}