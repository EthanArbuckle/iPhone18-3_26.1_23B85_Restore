void TBaseFont::InitAnnexTables(TBaseFont *this)
{
  v2 = *(this + 44);
  v3 = v2 | 0x2000000;
  if ((*(this + 45) & 0x20000000) != 0 || (*(this + 44) & 0xC0) == 0xC0 || (Value = CFDictionaryGetValue(&unk_1EF275610, atomic_load_explicit(this + 12, memory_order_acquire))) == 0)
  {
    ConvertToMorxSync(this);
LABEL_15:
    atomic_fetch_or_explicit(this + 44, v3, memory_order_relaxed);
    return;
  }

  v5 = Value;
  v19 = 0xAAAAAAAAAAAAAAAALL;
  (*(*this + 72))(&v19, this, @"CTFontVersionName");
  if (!atomic_load_explicit(&v19, memory_order_acquire) || (v6 = CFDictionaryGetValue(v5, atomic_load_explicit(&v19, memory_order_acquire))) == 0 || (v7 = v6, (v8 = CFDictionaryGetValue(v6, @"aka")) != 0) && (v7 = CFDictionaryGetValue(v5, v8)) == 0)
  {
    v3 = v2 | 0x2004000;
    goto LABEL_13;
  }

  v9 = CFDictionaryGetValue(v7, @"kerx");
  v10 = CFDictionaryGetValue(v7, @"morx");
  if (v9)
  {
    v11 = CFRetain(v9);
    v12 = 0;
    atomic_compare_exchange_strong(this + 6, &v12, v11);
    if (v12)
    {

      goto LABEL_19;
    }

    v13 = 167772160;
  }

  else
  {
    v13 = 33570816;
  }

  v3 = v2 | v13;
LABEL_19:
  v14 = CFDictionaryGetValue(v7, @"ignoreGDEF");
  if (v14 && CFBooleanGetValue(v14))
  {
    v3 |= 0x100u;
  }

  v15 = CFDictionaryGetValue(v7, @"converted");
  if (!v15 || !CFBooleanGetValue(v15))
  {
    if (v10)
    {
      v17 = CFRetain(v10);
      v18 = 0;
      atomic_compare_exchange_strong(this + 8, &v18, v17);
      if (v18)
      {
      }

      else
      {

        v3 |= 0x20000000u;
      }

      goto LABEL_14;
    }

LABEL_13:
    v3 |= 4u;
LABEL_14:

    goto LABEL_15;
  }

  v16 = CFDictionaryGetValue(v7, @"ltag");
  TBaseFont::SetConvertedTables(this, v10, v16);
  atomic_fetch_or_explicit(this + 44, v3, memory_order_relaxed);
}

void ConvertToMorxSync(atomic_uint *a1)
{
  if (qword_1EA8697A8[0] != -1)
  {
    dispatch_once_f(qword_1EA8697A8, 0, ConvertToMorxSync(TBaseFont const*)::{lambda(void *)#1}::__invoke);
  }

  if ((_MergedGlobals_154 & 1) == 0 && (a1[44] & 0x4000000) == 0)
  {
    if ((*(*a1 + 712))(a1) || (*(*a1 + 480))(a1, 1836020344))
    {
      atomic_fetch_or_explicit(a1 + 44, 0x4000000u, memory_order_relaxed);
    }

    else
    {
      CommonTable = TBaseFont::GetCommonTable(a1, 0x47535542u, 0);
      if (CommonTable)
      {
        v3 = CommonTable;
        BytePtr = CFDataGetBytePtr(CommonTable);
        v5 = CFDataGetBytePtr(v3);
        if (!v5)
        {
          goto LABEL_19;
        }

        v6 = &v5[CFDataGetLength(v3)];
        if ((BytePtr + 10) > v6 || bswap32(*BytePtr) >> 16 > 1 || *(BytePtr + 1) && (BytePtr + 14) > v6)
        {
          goto LABEL_19;
        }

        LookupListTable = OTL::GCommon::GetLookupListTable(BytePtr, v6);
        if (!LookupListTable || *LookupListTable)
        {
          goto LABEL_19;
        }
      }

      v10 = 0;
      v11 = &v10;
      v12 = 0x2020000000;
      v13 = -86;
      if (GetMorxConversionQueue(void)::once != -1)
      {
        dispatch_once(&GetMorxConversionQueue(void)::once, &__block_literal_global_7);
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = ___Z17ConvertToMorxSyncPK9TBaseFont_block_invoke;
      v9[3] = &unk_1E6E3E768;
      v9[4] = &v10;
      v9[5] = a1;
      dispatch_sync(GetMorxConversionQueue(void)::sQueue, v9);
      v8 = *(v11 + 24);
      _Block_object_dispose(&v10, 8);
      if ((v8 & 1) == 0)
      {
LABEL_19:
        atomic_fetch_or_explicit(a1 + 44, 0x6000000u, memory_order_relaxed);
        TBaseFont::SetAttributeInternal<__CFDictionary const*>(a1, *MEMORY[0x1E695E4C0], @"CTFontMorxConversionResultAttribute");
      }
    }
  }
}

char *ConvertToMorxSync(TBaseFont const*)::{lambda(void *)#1}::__invoke()
{
  result = getenv("CT_SKIP_MORX_CONVERSION");
  _MergedGlobals_154 = result != 0;
  return result;
}

size_t TBaseFont::InitGlyphCount(TBaseFont *this, CGFontRef font)
{
  if (!font)
  {
    return 0;
  }

  result = CGFontGetNumberOfGlyphs(font);
  atomic_store(result, this + 25);
  return result;
}

uint64_t ScriptAndLangSysFromCanonicalLanguageInternal(__CFString *a1)
{
  v102 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    *&v2 = 0xAAAAAAAAAAAAAAAALL;
    *(&v2 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v95[0] = v2;
    v95[1] = v2;
    v92 = 0;
    v93 = 0;
    v94 = 0;
    v96 = v95;
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    if (!CStringPtr)
    {
      Length = CFStringGetLength(a1);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x600u);
      v7 = MaximumSizeForEncoding + 1;
      v8 = v92;
      if (MaximumSizeForEncoding + 1 <= (v93 - v92))
      {
        if (MaximumSizeForEncoding + 1 < (v93 - v92))
        {
          v93 = &v92[v7];
        }
      }

      else
      {
        std::vector<char,TInlineBufferAllocator<char,30ul>>::__append(&v92, MaximumSizeForEncoding + 1 - (v93 - v92));
        v8 = v92;
      }

      CFStringGetCString(a1, v8, v7, 0x600u);
      *&v4 = 0xAAAAAAAAAAAAAAAALL;
      *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    }

    v89[0] = v4;
    v89[1] = v4;
    v89[6] = v4;
    v89[4] = v4;
    v89[5] = v4;
    v89[2] = v4;
    v89[3] = v4;
    v90 = 0xAAAAAAAAAAAAAAAALL;
    v91 = v89 + 4;
    v87 = v89 + 4;
    v88 = v89 + 4;
    LODWORD(v89[0]) = 0;
    __p = v89;
    uscript_getCode();
    v9 = __p;
    if (__p == v87)
    {
      v13 = 0;
      v14 = 0xFFFFFFFFLL;
      if (__p)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    Value = *__p;
    if (Value == -1)
    {
      v13 = 0;
      v14 = *__p;
      goto LABEL_10;
    }

    if (!Value)
    {
      if (qword_1ED567E48 != -1)
      {
        dispatch_once_f(&qword_1ED567E48, 0, ScriptAndLangSysFromScriptCode(UScriptCode,__CFString const*)::$_1::__invoke);
      }

      if (!qword_1ED567E40)
      {
        Value = 0;
        goto LABEL_32;
      }

      Value = CFDictionaryGetValue(qword_1ED567E40, a1);
    }

    if (Value > 95)
    {
      if (Value == 96)
      {
        v12 = 0;
        Value = 1398362698;
        goto LABEL_35;
      }

      if (Value == 97)
      {
        v12 = 0;
        Value = 1398362702;
        goto LABEL_35;
      }

LABEL_33:
      v14 = Value;
      v12 = 1;
      Value = 0;
      goto LABEL_36;
    }

    if (Value)
    {
      if (Value == 95)
      {
        v12 = 0;
        Value = 1398362693;
LABEL_35:
        v14 = 34;
LABEL_36:
        CFLocaleGetLanguageRegionEncodingForLocaleIdentifier();
        if (!v12)
        {
          v21 = Value;
LABEL_852:
          v13 = v21 << 32;
          v9 = __p;
          if (__p)
          {
LABEL_10:
            v87 = v9;
            if (v89 > v9 || &v91 <= v9)
            {
              operator delete(v9);
            }
          }

LABEL_13:
          __p = &v92;
          std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](&__p);
          return v14 | v13;
        }

        *&v15 = 0xAAAAAAAAAAAAAAAALL;
        *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v100[1] = v15;
        v100[0] = v15;
        v97 = 0;
        v98 = 0;
        v99 = 0;
        v101 = v100;
        v16 = CFStringGetCStringPtr(a1, 0x600u);
        if (!v16)
        {
          v17 = CFStringGetLength(a1);
          v18 = CFStringGetMaximumSizeForEncoding(v17, 0x600u);
          v19 = v18 + 1;
          v20 = v97;
          if (v18 + 1 <= (v98 - v97))
          {
            if (v18 + 1 < (v98 - v97))
            {
              v98 = &v97[v19];
            }
          }

          else
          {
            std::vector<char,TInlineBufferAllocator<char,30ul>>::__append(&v97, v18 + 1 - (v98 - v97));
            v20 = v97;
          }

          if (CFStringGetCString(a1, v20, v19, 0x600u))
          {
            v16 = v97;
          }

          else
          {
            v16 = 0;
          }
        }

        ISO3Language = uloc_getISO3Language();
        if (!ISO3Language || !*ISO3Language)
        {
          if (!v16)
          {
            goto LABEL_841;
          }

          v28 = strlen(v16);
          if (v28 != 3 && (v28 < 4 || v16[3] != 45))
          {
            goto LABEL_841;
          }

          if (*v16)
          {
            v29 = (*v16 << 24) | (v16[1] << 16) | (v16[2] << 8) | 0x20;
          }

          else
          {
            v29 = 0;
          }

          v31 = std::__equal_range[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,LanguageToLangSysMapping const*,LanguageToLangSysMapping const*,unsigned int,std::__identity>(v29);
          if (v31 == v32 || (v21 = *(v31 + 1), !v21))
          {
            v33 = TagByUppercasing(v29);
            v34 = &kLanguageToLangSysMappings[4];
            v35 = 6352;
            while (1)
            {
              v36 = *v34;
              v34 += 8;
              if (v36 == v33)
              {
                break;
              }

              v35 -= 8;
              if (!v35)
              {
                goto LABEL_834;
              }
            }

            v21 = Value;
          }

LABEL_835:
          if (v21)
          {
            if (v21 != 1297042976)
            {
LABEL_851:
              v85 = &v97;
              std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](&v85);
              goto LABEL_852;
            }

            v21 = 1297042976;
            ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(*MEMORY[0x1E695E480], a1);
            v82 = CFDictionaryGetValue(ComponentsFromLocaleIdentifier, *MEMORY[0x1E695E6D0]);
            if (v82 == @"TH" || v82 && CFEqual(v82, @"TH"))
            {
              v21 = 1297043028;
            }

LABEL_850:

            goto LABEL_851;
          }

LABEL_841:
          v21 = 1230000193;
          ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(*MEMORY[0x1E695E480], a1);
          v83 = CFDictionaryGetValue(ComponentsFromLocaleIdentifier, *MEMORY[0x1E695E710]);
          if (v83 != @"fonipa")
          {
            v84 = v83;
            if (!v83)
            {
LABEL_848:
              v21 = 0;
              goto LABEL_850;
            }

            if (CFStringCompare(v83, @"fonipa", 1uLL))
            {
              if (v84 == @"fonnapa" || CFStringCompare(v84, @"fonnapa", 1uLL) == kCFCompareEqualTo)
              {
                goto LABEL_850;
              }

              if (v84 == @"fonupa" || CFStringCompare(v84, @"fonupa", 1uLL) == kCFCompareEqualTo)
              {
                v21 = 1431326792;
                goto LABEL_850;
              }

              goto LABEL_848;
            }
          }

          v21 = 1230000200;
          goto LABEL_850;
        }

        v23 = (*ISO3Language << 24) | (ISO3Language[1] << 16) | (ISO3Language[2] << 8) | 0x20;
        v24 = std::__equal_range[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,LanguageToLangSysMapping const*,LanguageToLangSysMapping const*,unsigned int,std::__identity>(v23);
        if (v24 != v25)
        {
          v21 = *(v24 + 1);
          if (v21)
          {
            goto LABEL_830;
          }
        }

        v26 = 1634885920;
        if (v23 <= 1836412959)
        {
          if (v23 > 1718973983)
          {
            if (v23 <= 1768842271)
            {
              if (v23 > 1751474463)
              {
                if (v23 > 1752003359)
                {
                  if (v23 > 1752132127)
                  {
                    if (v23 <= 1752525343)
                    {
                      if (v23 <= 1752331807)
                      {
                        if (v23 != 1752132128)
                        {
                          v27 = 1752329504;
                          goto LABEL_692;
                        }

LABEL_772:
                        v26 = 1918986784;
                        goto LABEL_826;
                      }

                      if (v23 != 1752331808)
                      {
                        v66 = 1752395296;
LABEL_724:
                        if (v23 != v66)
                        {
                          goto LABEL_829;
                        }

LABEL_725:
                        v26 = 2053664544;
                        goto LABEL_826;
                      }

LABEL_726:
                      v26 = 1751282464;
                      goto LABEL_826;
                    }

                    if (v23 > 1768645919)
                    {
                      if (v23 != 1768645920 && v23 != 1768649760)
                      {
                        goto LABEL_829;
                      }

                      v26 = 1768650016;
                      goto LABEL_826;
                    }

                    if (v23 == 1752525344)
                    {
                      goto LABEL_693;
                    }

                    v55 = 1768186144;
                    goto LABEL_804;
                  }

                  if (v23 > 1752005151)
                  {
                    if (v23 > 1752066591)
                    {
                      if (v23 == 1752066592)
                      {
                        goto LABEL_693;
                      }

                      v68 = 28448;
                      goto LABEL_811;
                    }

                    if (v23 != 1752005152)
                    {
                      v68 = 25632;
LABEL_811:
                      v44 = v68 | 0x686E0000;
LABEL_812:
                      if (v23 != v44)
                      {
                        goto LABEL_829;
                      }

LABEL_813:
                      v26 = 1818322976;
                      goto LABEL_826;
                    }

LABEL_693:
                    v26 = 1752002080;
                    goto LABEL_826;
                  }

                  if (v23 == 1752003360 || v23 == 1752004384)
                  {
                    goto LABEL_693;
                  }

                  v54 = 31008;
LABEL_691:
                  v27 = v54 | 0x686D0000;
LABEL_692:
                  if (v23 == v27)
                  {
                    goto LABEL_693;
                  }

LABEL_829:
                  v21 = TagByUppercasing(v23);
                  goto LABEL_830;
                }

                if (v23 > 1752000543)
                {
                  if (v23 <= 1752001567)
                  {
                    if (v23 == 1752000544 || v23 == 1752000800)
                    {
                      goto LABEL_693;
                    }

                    v54 = 27168;
                  }

                  else if (v23 > 1752002591)
                  {
                    if (v23 == 1752002592)
                    {
                      goto LABEL_693;
                    }

                    v54 = 28960;
                  }

                  else
                  {
                    if (v23 == 1752001568)
                    {
                      goto LABEL_693;
                    }

                    v54 = 27936;
                  }

                  goto LABEL_691;
                }

                if (v23 > 1751999263)
                {
                  if (v23 > 1751999775)
                  {
                    if (v23 == 1751999776)
                    {
                      goto LABEL_693;
                    }

                    v54 = 26400;
                  }

                  else
                  {
                    if (v23 == 1751999264)
                    {
                      goto LABEL_693;
                    }

                    v54 = 25632;
                  }

                  goto LABEL_691;
                }

                if (v23 == 1751474464)
                {
                  goto LABEL_693;
                }

                if (v23 != 1751804192)
                {
                  v54 = 24864;
                  goto LABEL_691;
                }

LABEL_788:
                v26 = 1836278048;
                goto LABEL_826;
              }

              if (v23 <= 1735292703)
              {
                if (v23 <= 1734631711)
                {
                  if (v23 > 1734441503)
                  {
                    if (v23 <= 1734504479)
                    {
                      if (v23 != 1734441504)
                      {
                        v47 = 1734504224;
                        goto LABEL_554;
                      }

                      goto LABEL_540;
                    }

                    if (v23 != 1734504480)
                    {
                      v78 = 1734504736;
LABEL_752:
                      if (v23 != v78)
                      {
                        goto LABEL_829;
                      }
                    }

LABEL_784:
                    v26 = 1734500640;
                    goto LABEL_826;
                  }

                  if (v23 != 1718973984)
                  {
                    if (v23 == 1734438432)
                    {
                      goto LABEL_725;
                    }

                    if (v23 != 1734440992)
                    {
                      goto LABEL_829;
                    }

                    goto LABEL_540;
                  }

LABEL_629:
                  v26 = 1718971424;
                  goto LABEL_826;
                }

                if (v23 <= 1735030047)
                {
                  if (v23 == 1734631712)
                  {
                    goto LABEL_772;
                  }

                  if (v23 == 1734697760)
                  {
                    goto LABEL_570;
                  }

                  v76 = 1734831904;
                }

                else
                {
                  if (v23 <= 1735224607)
                  {
                    if (v23 == 1735030048)
                    {
                      goto LABEL_772;
                    }

                    if (v23 != 1735094304)
                    {
                      goto LABEL_829;
                    }

LABEL_859:
                    v26 = 1802528032;
                    goto LABEL_826;
                  }

                  if (v23 == 1735224608)
                  {
                    goto LABEL_784;
                  }

                  v76 = 1735290656;
                }

                if (v23 != v76)
                {
                  goto LABEL_829;
                }

LABEL_783:
                v26 = 1735355936;
                goto LABEL_826;
              }

              if (v23 > 1735747871)
              {
                if (v23 > 1751213343)
                {
                  if (v23 > 1751218207)
                  {
                    if (v23 != 1751218208 && v23 != 1751412256)
                    {
                      goto LABEL_829;
                    }

                    v26 = 1751214368;
                    goto LABEL_826;
                  }

                  if (v23 != 1751213344)
                  {
                    v66 = 1751214880;
                    goto LABEL_724;
                  }

                  goto LABEL_540;
                }

                if (v23 != 1735747872 && v23 != 1735749152)
                {
                  v78 = 1736007968;
                  goto LABEL_752;
                }

                goto LABEL_769;
              }

              if (v23 > 1735554591)
              {
                if (v23 <= 1735618335)
                {
                  if (v23 == 1735554592)
                  {
LABEL_570:
                    v26 = 1735549472;
                    goto LABEL_826;
                  }

                  v59 = 31008;
                  goto LABEL_553;
                }

                if (v23 == 1735618336)
                {
                  goto LABEL_784;
                }

                if (v23 != 1735747360)
                {
                  goto LABEL_829;
                }

LABEL_769:
                v26 = 1735552544;
                goto LABEL_826;
              }

              if (v23 == 1735292704)
              {
                goto LABEL_769;
              }

              if (v23 != 1735355680)
              {
                v59 = 27168;
LABEL_553:
                v47 = v59 | 0x67720000;
LABEL_554:
                if (v23 != v47)
                {
                  goto LABEL_829;
                }

                goto LABEL_570;
              }

LABEL_861:
              v26 = 1802464032;
              goto LABEL_826;
            }

            if (v23 > 1819437343)
            {
              if (v23 > 1835561503)
              {
                if (v23 > 1835954207)
                {
                  if (v23 <= 1836279839)
                  {
                    if (v23 <= 1836214815)
                    {
                      if (v23 == 1835954208)
                      {
                        goto LABEL_725;
                      }

                      v39 = 1836148512;
                      goto LABEL_787;
                    }

                    if (v23 != 1836214816)
                    {
                      v42 = 1836278560;
                      goto LABEL_819;
                    }

LABEL_862:
                    v26 = 1667788064;
                    goto LABEL_826;
                  }

                  if (v23 <= 1836347935)
                  {
                    if (v23 != 1836279840)
                    {
                      v39 = 1836280096;
                      goto LABEL_787;
                    }

LABEL_800:
                    v26 = 1835820832;
                    goto LABEL_826;
                  }

                  if (v23 != 1836347936)
                  {
                    v39 = 1836411168;
                    goto LABEL_787;
                  }

LABEL_741:
                  v26 = 1836544544;
                  goto LABEL_826;
                }

                if (v23 <= 1835823391)
                {
                  if (v23 != 1835561504)
                  {
                    if (v23 == 1835626016)
                    {
                      goto LABEL_788;
                    }

                    v42 = 1835758880;
                    goto LABEL_819;
                  }

                  goto LABEL_862;
                }

                if (v23 > 1835889183)
                {
                  if (v23 == 1835889184)
                  {
                    goto LABEL_693;
                  }

                  v42 = 1835952928;
LABEL_819:
                  if (v23 != v42)
                  {
                    goto LABEL_829;
                  }

LABEL_820:
                  v26 = 1835101728;
                  goto LABEL_826;
                }

                if (v23 == 1835823392)
                {
                  goto LABEL_820;
                }

                v39 = 1835825440;
LABEL_787:
                if (v23 != v39)
                {
                  goto LABEL_829;
                }

                goto LABEL_788;
              }

              if (v23 > 1819764511)
              {
                if (v23 <= 1835298591)
                {
                  if (v23 == 1819764512)
                  {
                    goto LABEL_805;
                  }

                  if (v23 == 1819961376)
                  {
                    goto LABEL_725;
                  }

                  v39 = 1835104288;
                }

                else if (v23 > 1835426079)
                {
                  if (v23 == 1835426080)
                  {
                    goto LABEL_788;
                  }

                  v39 = 1835426336;
                }

                else
                {
                  if (v23 == 1835298592)
                  {
                    goto LABEL_784;
                  }

                  v39 = 1835364128;
                }

                goto LABEL_787;
              }

              if (v23 <= 1819567903)
              {
                if (v23 == 1819437344 || v23 == 1819438368)
                {
                  goto LABEL_805;
                }

                v55 = 1819503904;
                goto LABEL_804;
              }

              if (v23 > 1819570975)
              {
                if (v23 == 1819570976)
                {
                  goto LABEL_805;
                }

                if (v23 != 1819702048)
                {
                  goto LABEL_829;
                }
              }

              else if (v23 != 1819567904)
              {
                v55 = 1819569952;
                goto LABEL_804;
              }

              v26 = 1818326560;
              goto LABEL_826;
            }

            if (v23 <= 1802662943)
            {
              if (v23 <= 1802073375)
              {
                if (v23 <= 1784772639)
                {
                  if (v23 != 1768842272 && v23 != 1784769312)
                  {
                    v44 = 1784771616;
                    goto LABEL_812;
                  }

                  goto LABEL_788;
                }

                if (v23 <= 1801615647)
                {
                  if (v23 == 1784772640)
                  {
                    goto LABEL_788;
                  }

                  v48 = 1786340640;
                  goto LABEL_682;
                }

                if (v23 != 1801615648)
                {
                  if (v23 != 1802005280)
                  {
                    goto LABEL_829;
                  }

                  goto LABEL_760;
                }

LABEL_761:
                v26 = 1801549088;
                goto LABEL_826;
              }

              if (v23 > 1802397471)
              {
                if (v23 > 1802463519)
                {
                  if (v23 != 1802463520 && v23 != 1802532384)
                  {
                    goto LABEL_829;
                  }

                  v26 = 1802464544;
                  goto LABEL_826;
                }

                if (v23 != 1802397472)
                {
                  if (v23 != 1802399264)
                  {
                    goto LABEL_829;
                  }

                  goto LABEL_861;
                }

                goto LABEL_590;
              }

              if (v23 != 1802073376)
              {
                if (v23 != 1802334752)
                {
                  if (v23 != 1802396448)
                  {
                    goto LABEL_829;
                  }

                  goto LABEL_761;
                }

LABEL_621:
                v26 = 1802859040;
                goto LABEL_826;
              }

LABEL_608:
              v26 = 2054840608;
              goto LABEL_826;
            }

            if (v23 <= 1818453279)
            {
              if (v23 <= 1802991903)
              {
                if (v23 != 1802662944)
                {
                  if (v23 == 1802920480)
                  {
                    goto LABEL_788;
                  }

                  v39 = 1802924576;
                  goto LABEL_787;
                }

                goto LABEL_761;
              }

              if (v23 <= 1818389279)
              {
                if (v23 != 1802991904)
                {
                  v39 = 1803052064;
                  goto LABEL_787;
                }

LABEL_590:
                v26 = 1802464800;
                goto LABEL_826;
              }

              if (v23 != 1818389280)
              {
                v62 = 1818389536;
                goto LABEL_775;
              }

LABEL_777:
              v26 = 1651401504;
              goto LABEL_826;
            }

            if (v23 <= 1818851103)
            {
              if (v23 == 1818453280 || v23 == 1818453536)
              {
                goto LABEL_788;
              }

              if (v23 != 1818519840)
              {
                goto LABEL_829;
              }

              goto LABEL_590;
            }

            if (v23 > 1818980127)
            {
              if (v23 == 1818980128)
              {
                goto LABEL_805;
              }

              v67 = 29472;
            }

            else
            {
              if (v23 == 1818851104)
              {
                goto LABEL_788;
              }

              v67 = 25120;
            }

            v55 = v67 | 0x6C6B0000;
LABEL_804:
            if (v23 != v55)
            {
              goto LABEL_829;
            }

LABEL_805:
            v26 = 1819638048;
            goto LABEL_826;
          }

          if (v23 > 1652058911)
          {
            if (v23 > 1668968223)
            {
              if (v23 > 1701732895)
              {
                if (v23 > 1717988639)
                {
                  if (v23 > 1718969887)
                  {
                    if (v23 > 1718970655)
                    {
                      if (v23 == 1718970656)
                      {
                        goto LABEL_629;
                      }

                      v37 = 28960;
                    }

                    else
                    {
                      if (v23 == 1718969888)
                      {
                        goto LABEL_629;
                      }

                      v37 = 26656;
                    }
                  }

                  else if (v23 > 1718969119)
                  {
                    if (v23 == 1718969120)
                    {
                      goto LABEL_629;
                    }

                    v37 = 25888;
                  }

                  else
                  {
                    if (v23 == 1717988640)
                    {
                      goto LABEL_629;
                    }

                    v37 = 25120;
                  }

                  if (v23 != (v37 | 0x66750000))
                  {
                    goto LABEL_829;
                  }

                  goto LABEL_629;
                }

                if (v23 <= 1702062879)
                {
                  if (v23 == 1701732896)
                  {
                    goto LABEL_749;
                  }

                  if (v23 == 1702061856)
                  {
                    goto LABEL_783;
                  }

                  if (v23 != 1702062368)
                  {
                    goto LABEL_829;
                  }
                }

                else
                {
                  if (v23 > 1717662751)
                  {
                    v26 = 1634427168;
                    if (v23 == 1717662752)
                    {
                      goto LABEL_826;
                    }

                    v62 = 1717726240;
LABEL_775:
                    if (v23 != v62)
                    {
                      goto LABEL_829;
                    }

LABEL_776:
                    v26 = 1651075872;
                    goto LABEL_826;
                  }

                  if (v23 != 1702062880)
                  {
                    v65 = 1702457120;
                    goto LABEL_748;
                  }
                }

                v26 = 1768975136;
LABEL_826:
                v79 = std::__equal_range[abi:fn200100]<std::_ClassicAlgPolicy,std::__less<void,void> &,LanguageToLangSysMapping const*,LanguageToLangSysMapping const*,unsigned int,std::__identity>(v26);
                if (v79 == v80)
                {
                  v23 = v26;
                  goto LABEL_829;
                }

                v21 = *(v79 + 1);
                v23 = v26;
                if (!v21)
                {
                  goto LABEL_829;
                }

LABEL_830:
                if (v21 == 1514686496 || v21 == 1514689568 || v21 == 1514689312)
                {
                  v33 = LangSysForChineseLocale(a1);
LABEL_834:
                  v21 = v33;
                }

                goto LABEL_835;
              }

              if (v23 <= 1684633375)
              {
                if (v23 > 1684627999)
                {
                  if (v23 > 1684631583)
                  {
                    if (v23 != 1684631584)
                    {
                      if (v23 != 1684631840)
                      {
                        goto LABEL_829;
                      }

                      goto LABEL_608;
                    }
                  }

                  else if (v23 != 1684628000 && v23 != 1684630304)
                  {
                    goto LABEL_829;
                  }

LABEL_609:
                  v26 = 1684631072;
                  goto LABEL_826;
                }

                if (v23 == 1668968224)
                {
                  goto LABEL_725;
                }

                if (v23 != 1684500256)
                {
                  v71 = 1684562976;
                  goto LABEL_431;
                }

LABEL_863:
                v26 = 1685023008;
                goto LABEL_826;
              }

              if (v23 > 1685418015)
              {
                if (v23 <= 1701538591)
                {
                  if (v23 == 1685418016)
                  {
                    goto LABEL_788;
                  }

                  v60 = 1700948768;
                  goto LABEL_559;
                }

                if (v23 != 1701538592)
                {
                  v42 = 1701669664;
                  goto LABEL_819;
                }

                goto LABEL_855;
              }

              if (v23 == 1684633376 || v23 == 1684763424)
              {
                goto LABEL_609;
              }

              v72 = 1685354784;
LABEL_657:
              if (v23 != v72)
              {
                goto LABEL_829;
              }

              v26 = 1852141600;
              goto LABEL_826;
            }

            if (v23 <= 1668182559)
            {
              if (v23 <= 1667526431)
              {
                if (v23 <= 1652061471)
                {
                  if (v23 == 1652058912)
                  {
                    goto LABEL_805;
                  }

                  if (v23 != 1652059424 && v23 != 1652060704)
                  {
                    goto LABEL_829;
                  }

                  goto LABEL_508;
                }

                if (v23 <= 1667463199)
                {
                  if (v23 != 1652061472)
                  {
                    v45 = 1652187936;
                    goto LABEL_799;
                  }

LABEL_508:
                  v26 = 1651859744;
                  goto LABEL_826;
                }

                if (v23 != 1667463200)
                {
                  v69 = 1667463456;
                  goto LABEL_765;
                }

LABEL_766:
                v26 = 2053660960;
                goto LABEL_826;
              }

              if (v23 > 1667981855)
              {
                if (v23 > 1668115999)
                {
                  if (v23 == 1668116000)
                  {
                    goto LABEL_725;
                  }

                  v66 = 1668182048;
                  goto LABEL_724;
                }

                if (v23 == 1667981856)
                {
                  goto LABEL_621;
                }

                if (v23 != 1668047904)
                {
                  goto LABEL_829;
                }

LABEL_860:
                v26 = 1937338912;
                goto LABEL_826;
              }

              if (v23 == 1667526432)
              {
                goto LABEL_725;
              }

              if (v23 != 1667856160)
              {
                v66 = 1667922208;
                goto LABEL_724;
              }

LABEL_673:
              v26 = 1869244704;
              goto LABEL_826;
            }

            if (v23 > 1668443167)
            {
              if (v23 <= 1668511519)
              {
                if (v23 != 1668443168 && v23 != 1668443424)
                {
                  v66 = 1668509728;
                  goto LABEL_724;
                }
              }

              else if (v23 > 1668768799)
              {
                if (v23 != 1668768800)
                {
                  v66 = 1668966432;
                  goto LABEL_724;
                }
              }

              else if (v23 != 1668511520)
              {
                v62 = 1668576032;
                goto LABEL_775;
              }
            }

            else
            {
              if (v23 <= 1668375583)
              {
                if (v23 == 1668182560)
                {
                  goto LABEL_726;
                }

                if (v23 != 1668243744)
                {
                  v66 = 1668315168;
                  goto LABEL_724;
                }

                goto LABEL_788;
              }

              if (v23 <= 1668442655)
              {
                if (v23 == 1668375584)
                {
                  goto LABEL_693;
                }

                v57 = 1668379936;
                goto LABEL_711;
              }

              if (v23 != 1668442656 && v23 != 1668442912)
              {
                goto LABEL_829;
              }
            }

            v26 = 1668441376;
            goto LABEL_826;
          }

          if (v23 <= 1635150879)
          {
            if (v23 <= 1634298143)
            {
              if (v23 > 1633908511)
              {
                if (v23 > 1633969695)
                {
                  if (v23 > 1634034463)
                  {
                    if (v23 == 1634034464)
                    {
                      goto LABEL_826;
                    }

                    v41 = 1634099744;
                  }

                  else
                  {
                    if (v23 == 1633969696)
                    {
                      goto LABEL_826;
                    }

                    v41 = 1634034208;
                  }

                  goto LABEL_667;
                }

                if (v23 == 1633908512 || v23 == 1633908768)
                {
                  goto LABEL_826;
                }

                v74 = 31008;
LABEL_634:
                v41 = v74 | 0x61630000;
                goto LABEL_667;
              }

              if (v23 > 1633839135)
              {
                if (v23 <= 1633905951)
                {
                  if (v23 == 1633839136)
                  {
                    goto LABEL_826;
                  }

                  v41 = 1633842720;
LABEL_667:
                  if (v23 != v41)
                  {
                    goto LABEL_829;
                  }

                  goto LABEL_826;
                }

                if (v23 == 1633905952)
                {
                  goto LABEL_826;
                }

                v74 = 28960;
                goto LABEL_634;
              }

              if (v23 != 1633772832)
              {
                if (v23 == 1633775392)
                {
                  goto LABEL_826;
                }

                v51 = 1633776672;
                goto LABEL_426;
              }

              goto LABEL_644;
            }

            if (v23 > 1634755615)
            {
              if (v23 <= 1634890527)
              {
                if (v23 == 1634755616 || v23 == 1634886176)
                {
                  goto LABEL_826;
                }

                v64 = 28960;
              }

              else
              {
                if (v23 > 1634892319)
                {
                  if (v23 == 1634892320)
                  {
                    goto LABEL_826;
                  }

                  v41 = 1635088928;
                  goto LABEL_667;
                }

                if (v23 == 1634890528)
                {
                  goto LABEL_826;
                }

                v64 = 31008;
              }

              v41 = v64 | 0x61720000;
              goto LABEL_667;
            }

            if (v23 > 1634366751)
            {
              if (v23 <= 1634497311)
              {
                if (v23 == 1634366752)
                {
LABEL_683:
                  v26 = 1785881120;
                  goto LABEL_826;
                }

                v51 = 1634496032;
LABEL_426:
                if (v23 != v51)
                {
                  goto LABEL_829;
                }

                goto LABEL_644;
              }

              if (v23 != 1634497312)
              {
                v41 = 1634755360;
                goto LABEL_667;
              }

LABEL_644:
              v26 = 1936812320;
              goto LABEL_826;
            }

            if (v23 == 1634298144)
            {
              goto LABEL_860;
            }

            if (v23 == 1634365472)
            {
              goto LABEL_826;
            }

            v48 = 1634366496;
LABEL_682:
            if (v23 != v48)
            {
              goto LABEL_829;
            }

            goto LABEL_683;
          }

          if (v23 > 1650946079)
          {
            if (v23 > 1651275039)
            {
              if (v23 <= 1651796511)
              {
                if (v23 == 1651275040)
                {
                  goto LABEL_693;
                }

                if (v23 != 1651338528)
                {
                  if (v23 != 1651471136)
                  {
                    goto LABEL_829;
                  }

                  goto LABEL_726;
                }

                goto LABEL_800;
              }

              if (v23 > 1651926303)
              {
                if (v23 == 1651926304)
                {
                  goto LABEL_788;
                }

                v39 = 1651930400;
                goto LABEL_787;
              }

              if (v23 == 1651796512)
              {
                goto LABEL_788;
              }

              v62 = 1651797792;
              goto LABEL_775;
            }

            if (v23 > 1651012127)
            {
              if (v23 <= 1651142943)
              {
                if (v23 != 1651012128)
                {
                  v39 = 1651142176;
                  goto LABEL_787;
                }

                goto LABEL_800;
              }

              if (v23 == 1651142944)
              {
                goto LABEL_800;
              }

              v62 = 1651273248;
              goto LABEL_775;
            }

            if (v23 != 1650946080)
            {
              if (v23 == 1650946336)
              {
                goto LABEL_772;
              }

              v62 = 1651010336;
              goto LABEL_775;
            }
          }

          else
          {
            if (v23 <= 1635410463)
            {
              if (v23 <= 1635347487)
              {
                if (v23 == 1635150880)
                {
                  goto LABEL_826;
                }

                if (v23 != 1635345184)
                {
                  v43 = 26656;
LABEL_436:
                  v41 = v43 | 0x61790000;
                  goto LABEL_667;
                }
              }

              else
              {
                if (v23 <= 1635348511)
                {
                  if (v23 == 1635347488)
                  {
                    goto LABEL_826;
                  }

                  v43 = 28192;
                  goto LABEL_436;
                }

                if (v23 == 1635348512)
                {
                  goto LABEL_826;
                }

                if (v23 != 1635349024)
                {
                  goto LABEL_829;
                }
              }

              v26 = 1635347744;
              goto LABEL_826;
            }

            if (v23 <= 1650680607)
            {
              if (v23 == 1635410464 || v23 == 1635412512)
              {
                v26 = 1635411232;
                goto LABEL_826;
              }

              v41 = 1650620960;
              goto LABEL_667;
            }

            if (v23 > 1650750495)
            {
              if (v23 == 1650750496)
              {
                goto LABEL_784;
              }

              if (v23 != 1650945568)
              {
                goto LABEL_829;
              }
            }

            else if (v23 != 1650680608)
            {
              v62 = 1650682912;
              goto LABEL_775;
            }
          }

          v26 = 1650551840;
          goto LABEL_826;
        }

        if (v23 > 1952741407)
        {
          if (v23 <= 2053598495)
          {
            if (v23 > 2020504095)
            {
              if (v23 > 2053204255)
              {
                if (v23 > 2053207583)
                {
                  if (v23 <= 2053334047)
                  {
                    if (v23 > 2053208095)
                    {
                      if (v23 == 2053208096)
                      {
                        goto LABEL_825;
                      }

                      v77 = 2053333280;
                      goto LABEL_824;
                    }

                    if (v23 == 2053207584)
                    {
                      goto LABEL_825;
                    }

                    v30 = 30496;
                    goto LABEL_816;
                  }

                  if (v23 > 2053466143)
                  {
                    if (v23 == 2053466144)
                    {
                      goto LABEL_766;
                    }

                    v69 = 2053595680;
                    goto LABEL_765;
                  }

                  if (v23 != 2053334048)
                  {
                    v69 = 2053335072;
                    goto LABEL_765;
                  }

LABEL_825:
                  v26 = 2053206048;
                  goto LABEL_826;
                }

                if (v23 <= 2053206303)
                {
                  if (v23 == 2053204256 || v23 == 2053205280)
                  {
                    goto LABEL_825;
                  }

                  v30 = 28448;
                }

                else if (v23 > 2053206815)
                {
                  if (v23 == 2053206816)
                  {
                    goto LABEL_825;
                  }

                  v30 = 29728;
                }

                else
                {
                  if (v23 == 2053206304)
                  {
                    goto LABEL_825;
                  }

                  v30 = 29216;
                }

LABEL_816:
                v77 = v30 | 0x7A610000;
                goto LABEL_824;
              }

              if (v23 > 2037736735)
              {
                if (v23 <= 2053202719)
                {
                  if (v23 == 2037736736)
                  {
                    goto LABEL_725;
                  }

                  if (v23 == 2053202208)
                  {
                    goto LABEL_825;
                  }

                  v30 = 25120;
                }

                else if (v23 > 2053203231)
                {
                  if (v23 == 2053203232)
                  {
                    goto LABEL_825;
                  }

                  v30 = 26144;
                }

                else
                {
                  if (v23 == 2053202720)
                  {
                    goto LABEL_825;
                  }

                  v30 = 25632;
                }

                goto LABEL_816;
              }

              if (v23 > 2036622367)
              {
                if (v23 > 2036951071)
                {
                  if (v23 != 2036951072)
                  {
                    v48 = 2037736480;
                    goto LABEL_682;
                  }
                }

                else if (v23 != 2036622368)
                {
                  v48 = 2036884512;
                  goto LABEL_682;
                }

                v26 = 2036950048;
                goto LABEL_826;
              }

              if (v23 == 2020504096)
              {
                goto LABEL_863;
              }

              if (v23 == 2020631840)
              {
                goto LABEL_859;
              }

              if (v23 != 2020830240)
              {
                goto LABEL_829;
              }

LABEL_486:
              v26 = 1684368928;
              goto LABEL_826;
            }

            if (v23 <= 1970957855)
            {
              if (v23 > 1953855775)
              {
                if (v23 > 1969384479)
                {
                  if (v23 > 1970171167)
                  {
                    if (v23 != 1970171168)
                    {
                      v39 = 1970432800;
                      goto LABEL_787;
                    }
                  }

                  else
                  {
                    if (v23 == 1969384480)
                    {
                      goto LABEL_776;
                    }

                    if (v23 != 1970107680)
                    {
                      goto LABEL_829;
                    }
                  }

                  v26 = 1684368416;
                  goto LABEL_826;
                }

                if (v23 != 1953855776)
                {
                  v26 = 1634427168;
                  if (v23 == 1953982752)
                  {
                    goto LABEL_826;
                  }

                  v45 = 1954052384;
                  goto LABEL_799;
                }
              }

              else
              {
                if (v23 > 1953004063)
                {
                  if (v23 <= 1953330975)
                  {
                    if (v23 != 1953004064)
                    {
                      v45 = 1953195808;
                      goto LABEL_799;
                    }

LABEL_757:
                    v26 = 1953327136;
                    goto LABEL_826;
                  }

                  if (v23 == 1953330976)
                  {
                    goto LABEL_788;
                  }

                  v75 = 1953788192;
LABEL_756:
                  if (v23 != v75)
                  {
                    goto LABEL_829;
                  }

                  goto LABEL_757;
                }

                if (v23 == 1952741408)
                {
                  goto LABEL_800;
                }

                if (v23 != 1952801568)
                {
                  v75 = 1953003040;
                  goto LABEL_756;
                }
              }

LABEL_749:
              v26 = 1802268192;
              goto LABEL_826;
            }

            if (v23 <= 2003990815)
            {
              if (v23 <= 1986751263)
              {
                if (v23 == 1970957856 || v23 == 1970959136)
                {
                  v26 = 1970954784;
                  goto LABEL_826;
                }

                v60 = 1986161440;
LABEL_559:
                if (v23 != v60)
                {
                  goto LABEL_829;
                }

                goto LABEL_777;
              }

              if (v23 <= 1987211039)
              {
                if (v23 == 1986751264)
                {
                  goto LABEL_788;
                }

                v39 = 1986753568;
                goto LABEL_787;
              }

              if (v23 != 1987211040)
              {
                if (v23 != 2002940448)
                {
                  goto LABEL_829;
                }

                goto LABEL_772;
              }

LABEL_855:
              v26 = 1702065184;
              goto LABEL_826;
            }

            if (v23 <= 2020107551)
            {
              if (v23 != 2003990816)
              {
                if (v23 != 2004051744)
                {
                  v66 = 2004186400;
                  goto LABEL_724;
                }

                goto LABEL_783;
              }

              goto LABEL_741;
            }

            if (v23 <= 2020439583)
            {
              if (v23 == 2020107552)
              {
                goto LABEL_813;
              }

              v39 = 2020437280;
              goto LABEL_787;
            }

            if (v23 == 2020439584)
            {
              goto LABEL_800;
            }

            v45 = 2020439840;
LABEL_799:
            if (v23 != v45)
            {
              goto LABEL_829;
            }

            goto LABEL_800;
          }

          if (v23 <= 2054189855)
          {
            if (v23 > 2054186271)
            {
              if (v23 > 2054188063)
              {
                if (v23 <= 2054188831)
                {
                  if (v23 == 2054188064 || v23 == 2054188320)
                  {
                    goto LABEL_825;
                  }

                  v56 = 28192;
                }

                else if (v23 > 2054189343)
                {
                  if (v23 == 2054189344)
                  {
                    goto LABEL_825;
                  }

                  v56 = 29216;
                }

                else
                {
                  if (v23 == 2054188832)
                  {
                    goto LABEL_825;
                  }

                  v56 = 28704;
                }
              }

              else if (v23 <= 2054187039)
              {
                if (v23 == 2054186272 || v23 == 2054186528)
                {
                  goto LABEL_825;
                }

                v56 = 26400;
              }

              else if (v23 > 2054187551)
              {
                if (v23 == 2054187552)
                {
                  goto LABEL_825;
                }

                v56 = 27424;
              }

              else
              {
                if (v23 == 2054187040)
                {
                  goto LABEL_825;
                }

                v56 = 26912;
              }
            }

            else
            {
              if (v23 <= 2053927199)
              {
                if (v23 <= 2053664287)
                {
                  if (v23 == 2053598496 || v23 == 2053598752)
                  {
                    goto LABEL_766;
                  }

                  v69 = 2053661728;
                }

                else
                {
                  if (v23 > 2053926175)
                  {
                    if (v23 == 2053926176)
                    {
                      goto LABEL_788;
                    }

                    v49 = 28192;
                  }

                  else
                  {
                    if (v23 == 2053664288)
                    {
                      goto LABEL_766;
                    }

                    v49 = 27168;
                  }

                  v69 = v49 | 0x7A6C0000;
                }

                goto LABEL_765;
              }

              if (v23 <= 2054185247)
              {
                if (v23 == 2053927200)
                {
                  goto LABEL_766;
                }

                if (v23 == 2053990688)
                {
                  goto LABEL_788;
                }

                v77 = 2054123296;
                goto LABEL_824;
              }

              if (v23 > 2054185759)
              {
                if (v23 == 2054185760)
                {
                  goto LABEL_825;
                }

                v56 = 25632;
              }

              else
              {
                if (v23 == 2054185248)
                {
                  goto LABEL_825;
                }

                v56 = 25120;
              }
            }
          }

          else
          {
            if (v23 > 2054450207)
            {
              if (v23 > 2054452511)
              {
                if (v23 > 2054776607)
                {
                  if (v23 > 2054778399)
                  {
                    if (v23 == 2054778400)
                    {
                      goto LABEL_766;
                    }

                    v69 = 2054842912;
                    goto LABEL_765;
                  }

                  if (v23 == 2054776608)
                  {
                    goto LABEL_766;
                  }

                  v70 = 27168;
                }

                else
                {
                  if (v23 <= 2054453535)
                  {
                    if (v23 == 2054452512)
                    {
                      goto LABEL_825;
                    }

                    v40 = 30752;
                    goto LABEL_823;
                  }

                  if (v23 == 2054453536)
                  {
                    goto LABEL_825;
                  }

                  v70 = 25120;
                }

                v69 = v70 | 0x7A790000;
LABEL_765:
                if (v23 != v69)
                {
                  goto LABEL_829;
                }

                goto LABEL_766;
              }

              if (v23 <= 2054451231)
              {
                if (v23 == 2054450208 || v23 == 2054450464)
                {
                  goto LABEL_825;
                }

                v40 = 28192;
              }

              else if (v23 > 2054451999)
              {
                if (v23 == 2054452000)
                {
                  goto LABEL_825;
                }

                v40 = 29728;
              }

              else
              {
                if (v23 == 2054451232)
                {
                  goto LABEL_825;
                }

                v40 = 28960;
              }

LABEL_823:
              v77 = v40 | 0x7A740000;
LABEL_824:
              if (v23 != v77)
              {
                goto LABEL_829;
              }

              goto LABEL_825;
            }

            if (v23 > 2054191647)
            {
              if (v23 <= 2054386207)
              {
                if (v23 != 2054191648)
                {
                  if (v23 != 2054251808)
                  {
                    v39 = 2054384928;
                    goto LABEL_787;
                  }

                  goto LABEL_766;
                }

                goto LABEL_825;
              }

              if (v23 > 2054448415)
              {
                if (v23 == 2054448416)
                {
                  goto LABEL_825;
                }

                v40 = 26400;
              }

              else
              {
                if (v23 == 2054386208)
                {
                  goto LABEL_825;
                }

                v40 = 25376;
              }

              goto LABEL_823;
            }

            if (v23 <= 2054190623)
            {
              if (v23 == 2054189856 || v23 == 2054190112)
              {
                goto LABEL_825;
              }

              v56 = 29984;
            }

            else if (v23 > 2054191135)
            {
              if (v23 == 2054191136)
              {
                goto LABEL_825;
              }

              v56 = 31008;
            }

            else
            {
              if (v23 == 2054190624)
              {
                goto LABEL_825;
              }

              v56 = 30496;
            }
          }

          v77 = v56 | 0x7A700000;
          goto LABEL_824;
        }

        if (v23 > 1903584543)
        {
          if (v23 > 1919052575)
          {
            if (v23 > 1936092447)
            {
              if (v23 > 1936876319)
              {
                if (v23 > 1937203999)
                {
                  if (v23 <= 1937208863)
                  {
                    if (v23 != 1937204000 && v23 != 1937205280)
                    {
                      goto LABEL_829;
                    }

                    v26 = 1937203488;
                    goto LABEL_826;
                  }

                  if (v23 == 1937208864)
                  {
                    goto LABEL_741;
                  }

                  v75 = 1952543008;
                  goto LABEL_756;
                }

                if (v23 > 1936879647)
                {
                  if (v23 == 1936879648)
                  {
                    goto LABEL_726;
                  }

                  v41 = 1936943136;
                  goto LABEL_667;
                }

                if (v23 == 1936876320)
                {
LABEL_620:
                  v26 = 1936876576;
                  goto LABEL_826;
                }

                v38 = 1936879392;
LABEL_619:
                if (v23 != v38)
                {
                  goto LABEL_829;
                }

                goto LABEL_620;
              }

              if (v23 <= 1936418591)
              {
                if (v23 == 1936092448)
                {
                  goto LABEL_693;
                }

                if (v23 != 1936155424)
                {
                  v41 = 1936225568;
                  goto LABEL_667;
                }

                goto LABEL_749;
              }

              if (v23 <= 1936750111)
              {
                if (v23 != 1936418592)
                {
                  v44 = 1936421408;
                  goto LABEL_812;
                }

                goto LABEL_800;
              }

              if (v23 != 1936750112)
              {
                v65 = 1936750880;
LABEL_748:
                if (v23 != v65)
                {
                  goto LABEL_829;
                }

                goto LABEL_749;
              }

LABEL_857:
              v26 = 1869768992;
              goto LABEL_826;
            }

            if (v23 <= 1919776543)
            {
              if (v23 <= 1919772191)
              {
                if (v23 == 1919052576)
                {
                  goto LABEL_777;
                }

                if (v23 == 1919052832)
                {
                  goto LABEL_776;
                }

                v50 = 25376;
                goto LABEL_612;
              }

              if (v23 > 1919774239)
              {
                if (v23 != 1919774240)
                {
                  v50 = 28448;
LABEL_612:
                  if (v23 != (v50 | 0x726D0000))
                  {
                    goto LABEL_829;
                  }
                }
              }

              else if (v23 != 1919772192)
              {
                v50 = 27680;
                goto LABEL_612;
              }

LABEL_613:
              v26 = 1919905056;
              goto LABEL_826;
            }

            if (v23 > 1935897375)
            {
              if (v23 > 1935960095)
              {
                if (v23 == 1935960096)
                {
                  goto LABEL_621;
                }

                v61 = 28192;
              }

              else
              {
                if (v23 == 1935897376)
                {
                  goto LABEL_486;
                }

                v61 = 25376;
              }

              v38 = v61 | 0x73640000;
              goto LABEL_619;
            }

            if (v23 == 1919776544 || v23 == 1919777056)
            {
              goto LABEL_613;
            }

            v71 = 1920430624;
LABEL_431:
            if (v23 != v71)
            {
              goto LABEL_829;
            }

            goto LABEL_741;
          }

          if (v23 > 1903650847)
          {
            if (v23 > 1903718175)
            {
              if (v23 <= 1903719455)
              {
                if (v23 == 1903718176 || v23 == 1903718432)
                {
                  goto LABEL_712;
                }

                v58 = 29216;
              }

              else
              {
                if (v23 > 1903720223)
                {
                  if (v23 != 1903720224)
                  {
                    v55 = 1918986016;
                    goto LABEL_804;
                  }

LABEL_712:
                  v26 = 1903519008;
                  goto LABEL_826;
                }

                if (v23 == 1903719456)
                {
                  goto LABEL_712;
                }

                v58 = 29984;
              }
            }

            else if (v23 <= 1903715103)
            {
              if (v23 == 1903650848 || v23 == 1903653664)
              {
                goto LABEL_712;
              }

              v58 = 24864;
            }

            else if (v23 > 1903717407)
            {
              if (v23 == 1903717408)
              {
                goto LABEL_712;
              }

              v58 = 28192;
            }

            else
            {
              if (v23 == 1903715104)
              {
                goto LABEL_712;
              }

              v58 = 26656;
            }

            v57 = v58 | 0x71780000;
LABEL_711:
            if (v23 != v57)
            {
              goto LABEL_829;
            }

            goto LABEL_712;
          }

          if (v23 > 1903587103)
          {
            if (v23 <= 1903589151)
            {
              if (v23 == 1903587104 || v23 == 1903587360)
              {
                goto LABEL_712;
              }

              v46 = 29472;
            }

            else
            {
              if (v23 > 1903649055)
              {
                if (v23 == 1903649056)
                {
                  goto LABEL_712;
                }

                v57 = 1903649568;
                goto LABEL_711;
              }

              if (v23 == 1903589152)
              {
                goto LABEL_712;
              }

              v46 = 31264;
            }
          }

          else if (v23 <= 1903585823)
          {
            if (v23 == 1903584544 || v23 == 1903585312)
            {
              goto LABEL_712;
            }

            v46 = 26912;
          }

          else if (v23 > 1903586591)
          {
            if (v23 == 1903586592)
            {
              goto LABEL_712;
            }

            v46 = 28192;
          }

          else
          {
            if (v23 == 1903585824)
            {
              goto LABEL_712;
            }

            v46 = 27680;
          }

LABEL_704:
          v57 = v46 | 0x71760000;
          goto LABEL_711;
        }

        if (v23 <= 1885500703)
        {
          if (v23 <= 1853449247)
          {
            if (v23 > 1851878943)
            {
              if (v23 <= 1852597535)
              {
                if (v23 == 1851878944)
                {
                  goto LABEL_725;
                }

                if (v23 == 1852335136)
                {
                  goto LABEL_769;
                }

                v65 = 1852404000;
                goto LABEL_748;
              }

              if (v23 > 1852793375)
              {
                if (v23 != 1852793376)
                {
                  v72 = 1852860704;
                  goto LABEL_657;
                }
              }

              else
              {
                if (v23 == 1852597536)
                {
                  goto LABEL_805;
                }

                if (v23 != 1852731168)
                {
                  goto LABEL_829;
                }
              }

              v26 = 1852797472;
              goto LABEL_826;
            }

            if (v23 > 1836475935)
            {
              if (v23 > 1836545823)
              {
                if (v23 == 1836545824)
                {
                  goto LABEL_693;
                }

                v42 = 1836675360;
                goto LABEL_819;
              }

              if (v23 != 1836475936)
              {
                v42 = 1836542752;
                goto LABEL_819;
              }

LABEL_760:
              v26 = 1836019232;
              goto LABEL_826;
            }

            if (v23 == 1836412960)
            {
              goto LABEL_772;
            }

            if (v23 == 1836413216)
            {
              goto LABEL_693;
            }

            v71 = 1836475680;
            goto LABEL_431;
          }

          if (v23 <= 1869310239)
          {
            if (v23 <= 1869243167)
            {
              if (v23 == 1853449248)
              {
                goto LABEL_805;
              }

              if (v23 == 1868720928)
              {
                goto LABEL_777;
              }

              v52 = 25120;
            }

            else if (v23 > 1869247263)
            {
              if (v23 == 1869247264)
              {
                goto LABEL_673;
              }

              v52 = 30496;
            }

            else
            {
              if (v23 == 1869243168)
              {
                goto LABEL_673;
              }

              v52 = 26400;
            }

            if (v23 != (v52 | 0x6F6A0000))
            {
              goto LABEL_829;
            }

            goto LABEL_673;
          }

          if (v23 <= 1869771551)
          {
            if (v23 != 1869310240)
            {
              if (v23 == 1869767456)
              {
LABEL_540:
                v26 = 1869770016;
                goto LABEL_826;
              }

              v39 = 1869770272;
              goto LABEL_787;
            }

            goto LABEL_749;
          }

          if (v23 <= 1869903647)
          {
            if (v23 == 1869771552)
            {
              goto LABEL_788;
            }

            if (v23 != 1869773088)
            {
              goto LABEL_829;
            }

            goto LABEL_857;
          }

          if (v23 == 1869903648)
          {
            goto LABEL_673;
          }

          v63 = 1885500448;
          goto LABEL_671;
        }

        if (v23 > 1903519263)
        {
          if (v23 > 1903522591)
          {
            if (v23 <= 1903524127)
            {
              if (v23 == 1903522592 || v23 == 1903523616)
              {
                goto LABEL_712;
              }

              v53 = 30752;
            }

            else
            {
              if (v23 > 1903583519)
              {
                if (v23 == 1903583520)
                {
                  goto LABEL_712;
                }

                v46 = 25376;
                goto LABEL_704;
              }

              if (v23 == 1903524128)
              {
                goto LABEL_712;
              }

              v53 = 31264;
            }
          }

          else if (v23 <= 1903520543)
          {
            if (v23 == 1903519264 || v23 == 1903519520)
            {
              goto LABEL_712;
            }

            v53 = 26656;
          }

          else if (v23 > 1903521823)
          {
            if (v23 == 1903521824)
            {
              goto LABEL_712;
            }

            v53 = 29216;
          }

          else
          {
            if (v23 == 1903520544)
            {
              goto LABEL_712;
            }

            v53 = 27680;
          }
        }

        else
        {
          if (v23 <= 1886221599)
          {
            if (v23 > 1885823263)
            {
              if (v23 <= 1886088991)
              {
                if (v23 != 1885823264)
                {
                  v44 = 1885893152;
                  goto LABEL_812;
                }

                goto LABEL_826;
              }

              if (v23 == 1886088992)
              {
                goto LABEL_749;
              }

              v45 = 1886155808;
              goto LABEL_799;
            }

            if (v23 == 1885500704)
            {
LABEL_672:
              v26 = 1886745376;
              goto LABEL_826;
            }

            if (v23 == 1885695008)
            {
              goto LABEL_788;
            }

            v73 = 1885696800;
LABEL_464:
            if (v23 != v73)
            {
              goto LABEL_829;
            }

            v26 = 1717662496;
            goto LABEL_826;
          }

          if (v23 <= 1886610719)
          {
            if (v23 == 1886221600 || v23 == 1886282272)
            {
              goto LABEL_813;
            }

            v73 = 1886548768;
            goto LABEL_464;
          }

          if (v23 <= 1903518239)
          {
            if (v23 == 1886610720)
            {
              goto LABEL_788;
            }

            v63 = 1886614560;
LABEL_671:
            if (v23 != v63)
            {
              goto LABEL_829;
            }

            goto LABEL_672;
          }

          if (v23 == 1903518240)
          {
            goto LABEL_712;
          }

          v53 = 25632;
        }

        v57 = v53 | 0x71750000;
        goto LABEL_711;
      }

      goto LABEL_33;
    }

LABEL_32:
    v12 = 1;
    v14 = 0xFFFFFFFFLL;
    goto LABEL_36;
  }

  return 0xFFFFFFFFLL;
}

void std::__hash_table<std::__hash_value_type<unsigned int,OTL::Lookup>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OTL::Lookup>>>::__do_rehash<true>(uint64_t a1, unint64_t a2)
{
  if (a2)
  {
    if (!(a2 >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  v3 = *a1;
  *a1 = 0;
  if (v3)
  {
    operator delete(v3);
  }

  *(a1 + 8) = 0;
}

void std::__hash_table<std::__hash_value_type<unsigned int,OTL::Lookup>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OTL::Lookup>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
    goto LABEL_6;
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
LABEL_6:

      std::__hash_table<std::__hash_value_type<unsigned int,OTL::Lookup>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OTL::Lookup>>>::__do_rehash<true>(a1, prime);
    }
  }
}

void FallbackForLangSysTag(unsigned int)::$_0::__invoke()
{
  v0 = 1633776160;
  v1 = 8u;
  v2 = kLanguageToLangSysMappings;
  do
  {
    v3 = v0;
    v4 = &kLanguageToLangSysMappings[v1];
    v0 = *&kLanguageToLangSysMappings[v1];
    if (v0 == v3)
    {
      v5 = *(v2 + 1);
      if (qword_1ED567E88)
      {
        v6 = vcnt_s8(qword_1ED567E88);
        v6.i16[0] = vaddlv_u8(v6);
        if (v6.u32[0] > 1uLL)
        {
          v7 = *(v2 + 1);
          if (qword_1ED567E88 <= v5)
          {
            v7 = v5 % qword_1ED567E88;
          }
        }

        else
        {
          v7 = (qword_1ED567E88 - 1) & v5;
        }

        v8 = *(qword_1ED567E80 + 8 * v7);
        if (v8)
        {
          for (i = *v8; i; i = *i)
          {
            v10 = i[1];
            if (v10 == v5)
            {
              if (*(i + 4) == v5)
              {
                goto LABEL_21;
              }
            }

            else
            {
              if (v6.u32[0] > 1uLL)
              {
                if (v10 >= qword_1ED567E88)
                {
                  v10 %= qword_1ED567E88;
                }
              }

              else
              {
                v10 &= qword_1ED567E88 - 1;
              }

              if (v10 != v7)
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
    v1 += 8;
    v2 = v4;
  }

  while (v1 != 6352);
}

char *OTL::GCommon::FeatureTableSubstitutionsForFont@<X0>(unsigned __int16 *a1@<X0>, unint64_t a2@<X1>, atomic_ullong *a3@<X2>, uint64_t a4@<X8>)
{
  v7[7] = *MEMORY[0x1E69E9840];
  v7[2] = a2;
  *a4 = 0u;
  *(a4 + 16) = 0u;
  *(a4 + 32) = 0xAAAAAAAA3F800000;
  result = OTL::GCommon::GetFeatureVariationsTable(a1, a2);
  v7[1] = result;
  if (result)
  {
    v7[0] = 0xAAAAAAAAAAAAAAAALL;
    VariationValues = TFont::GetVariationValues(a3, v7);
    operator new();
  }

  return result;
}

CTFontDescriptorRef CTFontDescriptorCreateWithAttributes(CFDictionaryRef attributes)
{
  v4 = attributes;
  if (!attributes)
  {
    return 0;
  }

  v3 = 0xAAAAAAAAAAAAAAAALL;
  TCFBase_NEW<CTFontDescriptor,__CFDictionary const*&>(&v4, &v3);
  v1 = atomic_exchange(&v3, 0);

  return v1;
}

void TBaseFont::CopyVariationAxes(atomic_ullong *this@<X0>, unint64_t *a2@<X8>)
{
  if ((*(*this + 720))(this))
  {
    *a2 = 0;
    return;
  }

  v9 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyAttributeInternal(this, @"NSCTFontVariationAxesAttribute", &v8);
  v9 = atomic_exchange(&v8, 0);

  if (!atomic_load_explicit(&v9, memory_order_acquire))
  {
    if ((*(*this + 712))(this))
    {
      CopyAttributeForSystemFont(atomic_load_explicit(this + 12, memory_order_acquire), @"NSCTFontVariationAxesAttribute", &v8);
    }

    if (!atomic_load_explicit(&v9, memory_order_acquire))
    {
      TBaseFont::GetInitializedGraphicsFont(this);
      v8 = 0xAAAAAAAAAAAAAAAALL;
      CopyVariationAxes(&v8);
      if (atomic_load_explicit(&v8, memory_order_acquire))
      {
        TCFRef<__CTFont const*>::Retain(&v9, atomic_load_explicit(&v8, memory_order_acquire));
      }
    }

    if (!atomic_load_explicit(&v9, memory_order_acquire) || (v6 = CFGetTypeID(atomic_load_explicit(&v9, memory_order_acquire)), v6 != CFArrayGetTypeID()) || CFArrayGetCount(atomic_load_explicit(&v9, memory_order_acquire)) < 1)
    {
      TBaseFont::SetAttributeInternal<__CFDictionary const*>(this, *MEMORY[0x1E695E738], @"NSCTFontVariationAxesAttribute");
      goto LABEL_17;
    }

    v7 = atomic_load_explicit(&v9, memory_order_acquire);
    TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v7, @"NSCTFontVariationAxesAttribute");
  }

  explicit = atomic_load_explicit(&v9, memory_order_acquire);
  if (*MEMORY[0x1E695E738] == explicit)
  {
LABEL_17:
    v5 = 0;
    goto LABEL_18;
  }

  v5 = atomic_exchange(&v9, 0);
LABEL_18:
  *a2 = v5;
}

CFSetRef TDescriptor::TDescriptor(TDescriptor const&,__CFDictionary const*)::$_0::__invoke()
{
  v1[3] = *MEMORY[0x1E69E9840];
  v1[0] = @"NSCTFontFeatureSettingsAttribute";
  v1[1] = @"NSFontSizeAttribute";
  v1[2] = @"NSCTFontOpticalSizeAttribute";
  result = CFSetCreate(*MEMORY[0x1E695E480], v1, 3, MEMORY[0x1E695E9F8]);
  qword_1ED5679B8 = result;
  return result;
}

void TCFBase<TFont>::ClassDestruct(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v2(a1);
  }

  v3 = *(a1 + 40);

  TFont::~TFont(v3);
}

void TFont::~TFont(TFont *this)
{
  v2 = *(this + 49);
  if (v2)
  {
    TASCIIDataCache::~TASCIIDataCache(v2);
    MEMORY[0x1865F22D0]();
  }

  if ((*(this + 43) + 1) > 1)
  {
    MEMORY[0x1865F22B0]();
  }

  for (i = 352; i != 368; i += 8)
  {
    v4 = *(this + i);
    if ((v4 + 1) >= 2)
    {
      v5 = std::__hash_table<EncoderAttempt,std::hash<EncoderAttempt>,std::equal_to<EncoderAttempt>,std::allocator<EncoderAttempt>>::~__hash_table(v4);
      MEMORY[0x1865F22D0](v5, 0x10A0C408EF24B1CLL);
    }
  }

  if (MEMORY[0x1EEE8E088])
  {
    OTSVGTableRelease();
  }

  v6 = *(this + 51);
  *(this + 51) = 0;
  if (v6 && atomic_fetch_add_explicit(v6 + 2, 0xFFFFFFFF, memory_order_release) == 1)
  {
    __dmb(9u);
    (*(*v6 + 8))(v6);
  }

  v7 = *(this + 60);
  if (v7)
  {
    do
    {
      v8 = *v7;
      operator delete(v7);
      v7 = v8;
    }

    while (v8);
  }

  v9 = *(this + 58);
  *(this + 58) = 0;
  if (v9)
  {
    operator delete(v9);
  }

  v10 = *(this + 54);
  if (v10)
  {
    *(this + 55) = v10;
    operator delete(v10);
  }

  std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::~__hash_table(this + 256);
  std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::~__hash_table(this + 216);
  std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::destroy(this + 184, *(this + 24));

  v11 = *(this + 6);
  *(this + 6) = 0;
  if (v11)
  {
    MEMORY[0x1865F22D0](v11, 0x1000C40EED21634);
  }
}

uint64_t CTFontGetUIFontType(const void *a1)
{
  TextStyle = CTFontGetTextStyle(a1);
  if (!TextStyle)
  {
    return 0xFFFFFFFFLL;
  }

  return TDescriptorSource::MapTextStyle(TextStyle, v2);
}

uint64_t CompositionLanguageWithPreferences(const __CFArray *a1)
{
  if (a1)
  {
    Count = CFArrayGetCount(a1);
    if (Count)
    {
      v3 = Count;
      v4 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v4);
        if (ValueAtIndex == @"zh")
        {
          break;
        }

        v6 = ValueAtIndex;
        if (ValueAtIndex)
        {
          HasPrefix = CFStringHasPrefix(ValueAtIndex, @"zh");
          if (v6 == @"wuu")
          {
            break;
          }

          if (HasPrefix)
          {
            break;
          }

          v8 = CFStringHasPrefix(v6, @"wuu");
          if (v6 == @"yue")
          {
            break;
          }

          if (v8)
          {
            break;
          }

          v9 = CFStringHasPrefix(v6, @"yue");
          if (v6 == @"ja" || v9 || CFStringHasPrefix(v6, @"ja"))
          {
            break;
          }
        }

        if (v3 == ++v4)
        {
          return 1;
        }
      }

      v11 = CFBundleCopyLocalizationsForPreferences(&unk_1EF27B790, a1);
      v12 = v11;
      if (v12)
      {
        v13 = v12;
        v14 = CFArrayGetCount(v12);

        if (!v14)
        {
          goto LABEL_37;
        }

        v12 = v11;
        if (v12)
        {
          v15 = v12;
          v16 = CFArrayGetValueAtIndex(v12, 0);

          v10 = 1;
          if (v16 == @"zxx" || !v16 || CFEqual(v16, @"zxx"))
          {
            goto LABEL_38;
          }

          if (v16 == @"zh-Hans")
          {
            v10 = 3;
            goto LABEL_38;
          }

          v10 = 3;
          if (CFEqual(v16, @"zh-Hans") || v16 == @"wuu-Hans" || CFEqual(v16, @"wuu-Hans") || v16 == @"yue-Hans" || CFEqual(v16, @"yue-Hans"))
          {
            goto LABEL_38;
          }

          if (v16 == @"zh-Hant")
          {
            v10 = 4;
            goto LABEL_38;
          }

          v10 = 4;
          if (CFEqual(v16, @"zh-Hant") || v16 == @"yue-Hant" || CFEqual(v16, @"yue-Hant") || v16 == @"wuu-Hant" || CFEqual(v16, @"wuu-Hant"))
          {
            goto LABEL_38;
          }

          if (v16 == @"ja" || CFEqual(v16, @"ja"))
          {
            v10 = 2;
LABEL_38:

            return v10;
          }

LABEL_37:
          v10 = 1;
          goto LABEL_38;
        }
      }

      goto LABEL_37;
    }
  }

  return 1;
}

uint64_t TCFBase<TRun>::CreateTypeID()
{
  {
    TCFBase<TRun>::CreateTypeID(void)::runtimeClass = 0;
    *algn_1ED5671F8 = "CTRun";
    qword_1ED567200 = 0;
    unk_1ED567208 = 0;
    qword_1ED567210 = TCFBase<TRun>::ClassDestruct;
    qword_1ED567218 = TCFBase<TRun>::ClassEqual;
    qword_1ED567220 = TCFBase<TRun>::ClassHash;
    unk_1ED567228 = 0;
    qword_1ED567230 = TCFBase<TRun>::ClassDebug;
    unk_1ED567238 = 0;
    qword_1ED567240 = 0;
    unk_1ED567248 = 0;
  }

  result = _CFRuntimeRegisterClass();
  TCFBase<TRun>::fTypeID = result;
  return result;
}

uint64_t ___Z26GetDefaultWritingDirectionv_block_invoke()
{
  v0 = NSClassFromString(&cfstr_Nsparagraphsty.isa);
  if (v0)
  {
    result = [(objc_class *)v0 defaultWritingDirectionForLanguage:0];
  }

  else
  {
    result = 255;
  }

  _MergedGlobals_10 = result;
  return result;
}

void *TCFBase<TRunDelegate>::ClassHash(void *result)
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

uint64_t std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void TCFMutableArray::TCFMutableArray(TCFMutableArray *this, CFArrayRef theArray)
{
  v3 = *MEMORY[0x1E695E480];
  if (theArray)
  {
    MutableCopy = CFArrayCreateMutableCopy(v3, 0, theArray);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(v3, 0, MEMORY[0x1E695E9C0]);
  }

  *this = MutableCopy;
}

void TFontFeatures::SettingsByNormalizing(atomic_ullong *a1@<X0>, const TBaseFont *a2@<X1>, uint64_t a3@<X2>, atomic_ullong *a4@<X3>, CFArrayRef *a5@<X8>)
{
  v49 = [[CTFeatureSetting alloc] initWithDictionary:a3];
  if (!atomic_load_explicit(&v49, memory_order_acquire))
  {
    goto LABEL_40;
  }

  explicit = atomic_load_explicit(&v49, memory_order_acquire);
  if (explicit)
  {
    v11 = [*(explicit + 8) objectForKey:@"CTFeatureOpenTypeTag"];
    v48 = 0;
    v47 = 0;
    if (v11)
    {
      v12 = atomic_load_explicit(&v49, memory_order_acquire);
      if (v12 && (v13 = [*(v12 + 8) objectForKey:@"CTFeatureOpenTypeValue"]) != 0)
      {
        v14 = v13;
        v15 = CFGetTypeID(v13);
        LODWORD(v46) = 0;
        if (v15 == CFNullGetTypeID())
        {
          v16 = 0;
          v17 = 1;
        }

        else
        {
          GetValue<__CFNumber const*>(v14, &v46);
          v17 = 0;
          v16 = v46;
        }
      }

      else
      {
        v16 = 0;
        v17 = 0;
        LODWORD(v46) = 0;
      }

      CopyFeatureSettingForTag(v11, a2, &v48, &v47, v16, &values);

      v18 = 1;
    }

    else
    {
      v18 = 0;
      v17 = 0;
    }
  }

  else
  {
    v18 = 0;
    v11 = 0;
    v17 = 0;
    v48 = 0;
    v47 = 0;
  }

  v19 = atomic_load_explicit(&v49, memory_order_acquire);
  if (v19)
  {
    v20 = [*(v19 + 8) objectForKey:@"CTFeatureSelectorIdentifier"];
    if ((v17 & 1) == 0)
    {
      if (!v20)
      {
        goto LABEL_37;
      }

      v21 = CFGetTypeID(v20);
      if (v21 != CFNullGetTypeID())
      {
        goto LABEL_37;
      }
    }
  }

  else if ((v17 & 1) == 0)
  {
    goto LABEL_37;
  }

  v22 = atomic_load_explicit(&v49, memory_order_acquire);
  if (v22)
  {
    v23 = [*(v22 + 8) objectForKey:@"CTFeatureTypeIdentifier"];
  }

  else
  {
    v23 = 0;
  }

  v24 = TFontFeatures::FindFeatureType(atomic_load_explicit(a1, memory_order_acquire), v23, v9);
  v25 = v24;
  v42 = v11;
  if (v24)
  {
    Value = CFDictionaryGetValue(v24, @"CTFeatureTypeSelectors");
    v27 = Value;
    if (!Value)
    {
      v31 = a5;
      goto LABEL_29;
    }

    Count = CFArrayGetCount(Value);
    if (Count)
    {
      v29 = Count;
      v41 = a5;
      v30 = 0;
      while (1)
      {
        values = CFArrayGetValueAtIndex(v27, v30);
        {
          break;
        }

        if (v29 == ++v30)
        {
          v27 = 0;
          goto LABEL_28;
        }
      }

      v27 = atomic_load_explicit(&values, memory_order_acquire);

LABEL_28:
      v31 = v41;
      goto LABEL_29;
    }
  }

  v31 = a5;
  v27 = 0;
LABEL_29:
  v32 = v27;
  v33 = v32;
  if (v32)
  {
    v34 = CFDictionaryGetValue(v32, @"CTFeatureSelectorIdentifier");
  }

  else
  {
    v34 = 0;
  }

  values = [[CTFeatureSetting alloc] initWithType:v23 selector:v34 tag:0 value:0];

  v35 = v18 ^ 1;
  if (!a4)
  {
    v35 = 1;
  }

  if ((v35 & 1) == 0)
  {
    values = -[CTFeatureSetting initWithType:selector:tag:value:]([CTFeatureSetting alloc], 0, 0, v42, [MEMORY[0x1E696AD98] numberWithUnsignedInt:v47]);
  }

  a5 = v31;
LABEL_37:
  if (v48)
  {
    if (atomic_load_explicit(&v49, memory_order_acquire))
    {
      values = atomic_load_explicit(&v49, memory_order_acquire);
      *a5 = CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
      goto LABEL_49;
    }

LABEL_40:
    *a5 = 0;
    goto LABEL_49;
  }

  HasOTFontFeatureTable = TBaseFont::HasOTFontFeatureTable(a2);
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v46 = atomic_load_explicit(&v49, memory_order_acquire);
  v37 = *MEMORY[0x1E695E480];
  v38 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  v44 = CFArrayCreateMutable(v37, 0, v38);
  if (TFontFeatures::HandleAlias(a1, &v46, HasOTFontFeatureTable, &Mutable, &v44))
  {
    values = 0xAAAAAAAAAAAAAAAALL;
    TCFMutableArray::TCFMutableArray(&values, atomic_load_explicit(&v44, memory_order_acquire));
    CFArrayRemoveValueAtIndex(atomic_load_explicit(&values, memory_order_acquire), 0);
    *a5 = atomic_exchange(&values, 0);
    v39 = values;
  }

  else
  {
    v43 = -86;
    v40 = TFontFeatures::FindFeatureSelector(atomic_load_explicit(a1, memory_order_acquire), &v46, &v43);
    if (v40 && atomic_load_explicit(&v49, memory_order_acquire))
    {
      values = atomic_load_explicit(&v49, memory_order_acquire);
      *a5 = CFArrayCreate(v37, &values, 1, MEMORY[0x1E695E9C0]);
    }

    else
    {
      *a5 = 0;
    }

    v39 = v40;
  }

LABEL_49:
}

void TCFLazyMutableArray::LazyCreate(TCFLazyMutableArray *this)
{
  if (!atomic_load_explicit(this, memory_order_acquire))
  {
    v3 = *(this + 1);
    v4 = *MEMORY[0x1E695E480];
    if (v3)
    {
      MutableCopy = CFArrayCreateMutableCopy(v4, 0, v3);
    }

    else
    {
      MutableCopy = CFArrayCreateMutable(v4, 0, MEMORY[0x1E695E9C0]);
    }

    v6 = atomic_exchange(this, MutableCopy);
  }
}

void std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::destroy(uint64_t a1, void *a2)
{
  if (a2)
  {
    std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::destroy(a1, *a2);
    std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::destroy(a1, a2[1]);

    operator delete(a2);
  }
}

void std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::__deallocate_node(uint64_t a1, char *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      v4 = (v2 + 24);
      std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v4);
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

uint64_t TFontFeatureSettingList::ContainsAATSetting(atomic_ullong *this, const __CFNumber *a2, const __CFNumber *a3, char a4)
{
  result = 0;
  if (a2)
  {
    if (a3)
    {
      v17 = -21846;
      v16 = -21846;
      result = GetSettingValue<__CFNumber const*,unsigned short>(a2, &v17);
      if (result)
      {
        result = GetSettingValue<__CFNumber const*,unsigned short>(a3, &v16);
        if (result)
        {
          v8 = std::__tree<std::__value_type<unsigned short,AATFeaturePair>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,AATFeaturePair>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,AATFeaturePair>>>::__equal_range_multi<unsigned short>((this + 1), &v17);
          if (v8 == v9)
          {
            return 0;
          }

          v10 = v8;
          v11 = v9;
          while (1)
          {
            if (a4)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(this, memory_order_acquire), v10[6]);
              if (!ValueAtIndex || ![ValueAtIndex[1] objectForKey:@"CTFeatureOpenTypeTag"])
              {
                return 1;
              }
            }

            else if ((*(v10 + 20) ^ v16) < 2)
            {
              return 1;
            }

            v13 = v10[1];
            if (v13)
            {
              do
              {
                v14 = v13;
                v13 = *v13;
              }

              while (v13);
            }

            else
            {
              do
              {
                v14 = v10[2];
                v15 = *v14 == v10;
                v10 = v14;
              }

              while (!v15);
            }

            v10 = v14;
            if (v14 == v11)
            {
              return 0;
            }
          }
        }
      }
    }
  }

  return result;
}

void CopyOTFeatureSettingForTypeAndSelector(int a1@<W0>, int a2@<W1>, void *a3@<X8>)
{
  if ((atomic_load_explicit(&qword_1ED567E30, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED567E30))
  {
    *&qword_1ED567F08 = 0u;
    *&qword_1ED567EF8 = 0u;
    dword_1ED567F18 = 1065353216;
    __cxa_guard_release(&qword_1ED567E30);
  }

  if (qword_1ED567E38 != -1)
  {
    dispatch_once_f(&qword_1ED567E38, 0, CopyOTFeatureSettingForTypeAndSelector(unsigned short,unsigned short)::$_0::__invoke);
  }

  if (!v6)
  {
    goto LABEL_8;
  }

  v7 = v6[3];
  v8 = v7[2];
  if (v8)
  {
    if ((v8 & 0xA) == 0)
    {
      *cStr = bswap32(*v7);
      v15 = 0;
      v11 = CFStringCreateWithCString(*MEMORY[0x1E695E480], cStr, 0);
      *a3 = -[CTFeatureSetting initWithType:selector:tag:value:]([CTFeatureSetting alloc], 0, 0, v11, [MEMORY[0x1E696AD98] numberWithUnsignedInt:1]);
      v10 = v11;
      goto LABEL_10;
    }

LABEL_8:
    *a3 = 0;
    return;
  }

  v12 = bswap32(*v7);
  v13 = 0;
  v9 = CFStringCreateWithCString(*MEMORY[0x1E695E480], &v12, 0);
  *a3 = -[CTFeatureSetting initWithType:selector:tag:value:]([CTFeatureSetting alloc], 0, 0, v9, [MEMORY[0x1E696AD98] numberWithUnsignedInt:(a2 & 1) == 0]);
  v10 = v9;
LABEL_10:
}

uint64_t *std::__tree_balance_after_insert[abi:fn200100]<std::__tree_node_base<void *> *>(uint64_t *result, uint64_t *a2)
{
  *(a2 + 24) = a2 == result;
  if (a2 != result)
  {
    do
    {
      v2 = a2[2];
      if (v2[3])
      {
        break;
      }

      v3 = v2[2];
      v4 = *v3;
      if (*v3 == v2)
      {
        v8 = v3[1];
        if (!v8 || (v9 = *(v8 + 24), v7 = (v8 + 24), v9 == 1))
        {
          if (*v2 == a2)
          {
            v11 = a2[2];
          }

          else
          {
            v11 = v2[1];
            v12 = *v11;
            v2[1] = *v11;
            v13 = v2;
            if (v12)
            {
              v12[2] = v2;
              v3 = v2[2];
              v13 = *v3;
            }

            v11[2] = v3;
            v3[v13 != v2] = v11;
            *v11 = v2;
            v2[2] = v11;
            v3 = v11[2];
            v4 = *v3;
          }

          *(v11 + 24) = 1;
          *(v3 + 24) = 0;
          v18 = *(v4 + 8);
          *v3 = v18;
          if (v18)
          {
            *(v18 + 16) = v3;
          }

          v19 = v3[2];
          *(v4 + 16) = v19;
          v19[*v19 != v3] = v4;
          *(v4 + 8) = v3;
          v3[2] = v4;
          return result;
        }
      }

      else
      {
        if (!v4 || (v6 = *(v4 + 24), v5 = (v4 + 24), v6 == 1))
        {
          v10 = *v2;
          if (*v2 == a2)
          {
            v14 = v10[1];
            *v2 = v14;
            if (v14)
            {
              *(v14 + 16) = v2;
              v3 = v2[2];
            }

            v10[2] = v3;
            v3[*v3 != v2] = v10;
            v10[1] = v2;
            v2[2] = v10;
            v3 = v10[2];
          }

          else
          {
            v10 = a2[2];
          }

          *(v10 + 24) = 1;
          *(v3 + 24) = 0;
          v15 = v3[1];
          v16 = *v15;
          v3[1] = *v15;
          if (v16)
          {
            *(v16 + 16) = v3;
          }

          v17 = v3[2];
          v15[2] = v17;
          v17[*v17 != v3] = v15;
          *v15 = v3;
          v3[2] = v15;
          return result;
        }

        v7 = v5;
      }

      *(v2 + 24) = 1;
      a2 = v3;
      *(v3 + 24) = v3 == result;
      *v7 = 1;
    }

    while (v3 != result);
  }

  return result;
}

uint64_t TFontFeatures::HandleAlias(atomic_ullong *this, atomic_ullong *a2, int a3, atomic_ullong *a4, atomic_ullong *a5)
{
  v45 = *MEMORY[0x1E69E9840];
  v43[0] = xmmword_18475C5F0;
  v43[1] = xmmword_18475C600;
  v43[2] = xmmword_18475C610;
  v43[3] = xmmword_18475C620;
  v43[4] = xmmword_18475C630;
  v43[5] = xmmword_18475C640;
  v43[6] = xmmword_18475C650;
  v43[7] = xmmword_18475C660;
  v43[8] = xmmword_18475C670;
  v43[9] = xmmword_18475C680;
  v44 = 37;
  explicit = atomic_load_explicit(a2, memory_order_acquire);
  if (explicit)
  {
    Value = CFDictionaryGetValue(explicit, @"CTFeatureTypeIdentifier");
  }

  else
  {
    Value = 0;
  }

  v12 = atomic_load_explicit(a2, memory_order_acquire);
  if (v12)
  {
    v13 = CFDictionaryGetValue(v12, @"CTFeatureSelectorIdentifier");
  }

  else
  {
    v13 = 0;
  }

  v42 = -21846;
  v41 = -21846;
  if (GetSettingValue<__CFNumber const*,unsigned short>(Value, &v42) && GetSettingValue<__CFNumber const*,unsigned short>(v13, &v41))
  {
    v14 = v43 + 3;
    v15 = 168;
    while (*(v14 - 3) != v42 || *(v14 - 2) != v41)
    {
      v14 += 6;
      v15 -= 12;
      if (!v15)
      {
        return 0;
      }
    }

    if (!v14[1] || a3 != 0)
    {
      v18 = *(v14 - 1);
      v40 = 0xAAAAAAAAAAAAAAAALL;
      TCFNumber::TCFNumber<int>(&v40, v18);
      v19 = *v14;
      v39 = 0xAAAAAAAAAAAAAAAALL;
      TCFNumber::TCFNumber<int>(&v39, v19);
      v38 = -86;
      TFeatureSetting::TFeatureSetting(&v34, Value, v13);
      FeatureSelector = TFontFeatures::FindFeatureSelector(atomic_load_explicit(this, memory_order_acquire), &v34, &v38);

      if (!FeatureSelector)
      {
        TFeatureSetting::TFeatureSetting(&v34, atomic_load_explicit(&v40, memory_order_acquire), atomic_load_explicit(&v39, memory_order_acquire));
        FeatureSelector = TFontFeatures::FindFeatureSelector(atomic_load_explicit(this, memory_order_acquire), &v34, &v38);

        if (!FeatureSelector)
        {
          v24 = 0;
LABEL_40:

          return v24;
        }
      }

      TFontFeatureSettingList::TFontFeatureSettingList(&v34, atomic_load_explicit(a5, memory_order_acquire));
      v21 = TFontFeatureSettingList::ContainsAATSetting(&v34, Value, v13, v38);
      std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::~__hash_table(&v37);
      std::__hash_table<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::__unordered_map_hasher<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::hash<unsigned long>,std::equal_to<unsigned long>,true>,std::__unordered_map_equal<unsigned long,std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>,std::equal_to<unsigned long>,std::hash<unsigned long>,true>,std::allocator<std::__hash_value_type<unsigned long,std::pair<TInlineVector<std::pair<unsigned short,unsigned short>,30ul>,KerningStatus>>>>::~__hash_table(&v36);
      std::__tree<std::__value_type<long,TAATDeltaYListEntry>,std::__map_value_compare<long,std::__value_type<long,TAATDeltaYListEntry>,std::less<long>,true>,std::allocator<std::__value_type<long,TAATDeltaYListEntry>>>::destroy(v35, v35[1]);

      if (v21)
      {
LABEL_39:
        v24 = 1;
        goto LABEL_40;
      }

      v33 = 0xAAAAAAAAAAAAAAAALL;
      v34 = FeatureSelector;
      TFeatureSetting::TFeatureSetting(&v33, atomic_load_explicit(&v40, memory_order_acquire), atomic_load_explicit(&v39, memory_order_acquire));
      v22 = v38;
      if (v22)
      {
        if (v23)
        {
LABEL_30:
          v26 = [[CTFeatureSetting alloc] initWithDictionary:atomic_load_explicit(a2, memory_order_acquire)];
          CFArrayAppendValue(atomic_load_explicit(a5, memory_order_acquire), v26);

          v27 = [[CTFeatureSetting alloc] initWithDictionary:atomic_load_explicit(&v33, memory_order_acquire)];
          CFArrayAppendValue(atomic_load_explicit(a5, memory_order_acquire), v27);

          if (!v14[1])
          {
LABEL_38:

            goto LABEL_39;
          }

          TCFNumber::TCFNumber<int>(&v32, v14[1]);

          v28 = v14[2];
          TCFNumber::TCFNumber<int>(&v32, v28);

          v32 = 0xAAAAAAAAAAAAAAAALL;
          TFeatureSetting::TFeatureSetting(&v32, atomic_load_explicit(&v40, memory_order_acquire), atomic_load_explicit(&v39, memory_order_acquire));
          v29 = v38;
          if (v29)
          {
            if (v30)
            {
              goto LABEL_37;
            }
          }

          else if ((v30 ^ v28))
          {
LABEL_37:
            v31 = [[CTFeatureSetting alloc] initWithDictionary:atomic_load_explicit(&v32, memory_order_acquire)];
            CFArrayAppendValue(atomic_load_explicit(a5, memory_order_acquire), v31);

            goto LABEL_38;
          }

          TFontFeatures::HandleAlias(TFeatureSetting const&,BOOL,TCFMutableArray &,TCFMutableArray &)const::$_1::operator()(a4, &v32);
          goto LABEL_37;
        }
      }

      else if ((v23 ^ v19))
      {
        goto LABEL_30;
      }

      TFontFeatures::HandleAlias(TFeatureSetting const&,BOOL,TCFMutableArray &,TCFMutableArray &)const::$_1::operator()(a4, a2);
      TFontFeatures::HandleAlias(TFeatureSetting const&,BOOL,TCFMutableArray &,TCFMutableArray &)const::$_1::operator()(a4, &v33);
      goto LABEL_30;
    }
  }

  return 0;
}

BOOL TBaseFont::HasOTFontFeatureTable(atomic_ullong *this)
{
  v9 = 0xAAAAAAAAAAAAAAAALL;
  TBaseFont::CopyAttributeInternal(this, @"CTFontHasOTFeatures", &v9);
  if (atomic_load_explicit(&v9, memory_order_acquire))
  {
    goto LABEL_9;
  }

  if (!(*(*this + 712))(this) || (CopyAttributeForSystemFont(atomic_load_explicit(this + 12, memory_order_acquire), @"CTFontHasOTFeatures", &v8), atomic_exchange(&v9, atomic_exchange(&v8, 0)), v8, !atomic_load_explicit(&v9, memory_order_acquire)))
  {
    (*(*this + 144))(&v8, this);
    v4 = MEMORY[0x1E695E4D0];
    if (!atomic_load_explicit(&v8, memory_order_acquire))
    {
      v4 = MEMORY[0x1E695E4C0];
    }

    TCFRef<__CTFont const*>::Retain(&v9, *v4);

    v6 = atomic_load_explicit(&v9, memory_order_acquire);
    TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v6, @"CTFontHasOTFeatures");

LABEL_9:
    explicit = atomic_load_explicit(&v9, memory_order_acquire);
    if (!explicit)
    {
      goto LABEL_5;
    }

LABEL_10:
    v3 = CFBooleanGetValue(explicit) != 0;
    goto LABEL_11;
  }

  v7 = atomic_load_explicit(&v9, memory_order_acquire);
  TBaseFont::SetAttributeInternal<TCFRef<__CFSet const*>>(this, &v7, @"CTFontHasOTFeatures");

  explicit = atomic_load_explicit(&v9, memory_order_acquire);
  if (explicit)
  {
    goto LABEL_10;
  }

LABEL_5:
  v3 = 0;
LABEL_11:

  return v3;
}

void *anonymous namespace::TFeatureType::GetSelector(atomic_ullong *this, const __CFNumber *a2)
{
  v13 = -21846;
  if (!GetSettingValue<__CFNumber const*,unsigned short>(a2, &v13))
  {
    return 0;
  }

  {
    v13 &= ~1u;
  }

  explicit = atomic_load_explicit(this, memory_order_acquire);
  if (!explicit)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(explicit, @"CTFeatureTypeSelectors");
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  Count = CFArrayGetCount(Value);
  if (!Count)
  {
    return 0;
  }

  v7 = Count;
  v8 = 0;
  while (1)
  {
    v9 = CFArrayGetValueAtIndex(v5, v8);
    v10 = v9;
    v12 = -21846;
    if (v9)
    {
      v9 = CFDictionaryGetValue(v9, @"CTFeatureSelectorIdentifier");
    }

    if (GetSettingValue<__CFNumber const*,unsigned short>(v9, &v12) && v13 == v12)
    {
      break;
    }

    if (v7 == ++v8)
    {
      return 0;
    }
  }

  return v10;
}

const __CFDictionary *anonymous namespace::TFeatureType::IsExclusive(atomic_ullong *this)
{
  result = atomic_load_explicit(this, memory_order_acquire);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"CTFeatureTypeExclusive");
    if (result)
    {
      return (CFBooleanGetValue(result) != 0);
    }
  }

  return result;
}

uint64_t IsFontSpecificFeatureSetting(CTFeatureSetting *a1)
{
  v1 = a1;
  v14 = 0;
  v2 = [(CTFeatureSetting *)a1 type];
  if (v2)
  {
    v3 = v2;
    v4 = [(CTFeatureSetting *)v1 selector];
    LOWORD(v13) = -21846;
    CFNumberGetValue(v3, kCFNumberShortType, &v13);
    v5 = v13;
    LOWORD(v13) = -21846;
    CFNumberGetValue(v4, kCFNumberShortType, &v13);
    CopyOTFeatureSettingForTypeAndSelector(v5, v13, &v13);

    explicit = atomic_load_explicit(&v14, memory_order_acquire);
    if (!explicit)
    {
      v7 = &dword_184779F10;
      v8 = 1980;
      while (*(v7 - 2) != v5 || (*v7 & 0x8040) == 0)
      {
        v7 += 3;
        v8 -= 12;
        if (!v8)
        {
          goto LABEL_8;
        }
      }

      goto LABEL_10;
    }

    v1 = atomic_load_explicit(&v14, memory_order_acquire);
  }

LABEL_8:
  v9 = [(CTFeatureSetting *)v1 tag];
  if (!v9 || (v10 = FourCharCodeFromString(v9), (IsOTFeatureFontSpecific(v10) & 1) == 0))
  {
    v11 = 0;
    goto LABEL_12;
  }

LABEL_10:
  v11 = 1;
LABEL_12:

  return v11;
}

void CopyOTFeatureSettingForTypeAndSelector(unsigned short,unsigned short)::$_0::__invoke()
{
  for (i = 0; i != 495; i += 3)
  {
    v1 = &kMasterFeatureMap[i];
    if (kMasterFeatureMap[i] && (v1[2] & 0x40) == 0)
    {
      v2 = *(v1 + 2);
      v3 = *(v1 + 3) | (v2 << 16);
      if (qword_1ED567F00)
      {
        v4 = vcnt_s8(qword_1ED567F00);
        v4.i16[0] = vaddlv_u8(v4);
        if (v4.u32[0] > 1uLL)
        {
          v5 = *(v1 + 3) | (v2 << 16);
          if (qword_1ED567F00 <= v3)
          {
            v5 = v3 % qword_1ED567F00;
          }
        }

        else
        {
          v5 = (qword_1ED567F00 - 1) & v3;
        }

        v6 = *(qword_1ED567EF8 + 8 * v5);
        if (v6)
        {
          for (j = *v6; j; j = *j)
          {
            v8 = j[1];
            if (v8 == v3)
            {
              if (*(j + 4) == v3)
              {
                goto LABEL_22;
              }
            }

            else
            {
              if (v4.u32[0] > 1uLL)
              {
                if (v8 >= qword_1ED567F00)
                {
                  v8 %= qword_1ED567F00;
                }
              }

              else
              {
                v8 &= qword_1ED567F00 - 1;
              }

              if (v8 != v5)
              {
                break;
              }
            }
          }
        }
      }

      operator new();
    }

LABEL_22:
    ;
  }
}

const __CFDictionary *anonymous namespace::TFeatureSelector::IsDefault(atomic_ullong *this)
{
  result = atomic_load_explicit(this, memory_order_acquire);
  if (result)
  {
    result = CFDictionaryGetValue(result, @"CTFeatureSelectorDefault");
    if (result)
    {
      return (CFBooleanGetValue(result) != 0);
    }
  }

  return result;
}

BOOL TFont::ShouldPropagateFeatureSetting(TFont *this, const TFontFeatureSettingList *a2)
{
  if (!TFont::IsSystemUIFontAndForShaping(this, &v8) || TFontFeatureSettingList::IndexOfAATSetting(a2, 0x23u, 14) == -1)
  {
    return 0;
  }

  v4 = atomic_load_explicit((*(this + 51) + 96), memory_order_acquire);
  v5 = v4;
  if (v4 == @".SF")
  {
    v6 = 1;
  }

  else if (v4)
  {
    v6 = CFStringHasPrefix(v4, @".SF") != 0;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

NSNumber *ValidatedValue(NSNumber *a1)
{
  if (!a1)
  {
    return *MEMORY[0x1E695E4D0];
  }

  v1 = a1;
  v2 = CFGetTypeID(a1);
  if (v2 != CFNumberGetTypeID() && v2 != CFBooleanGetTypeID())
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      return 0;
    }
  }

  return v1;
}

uint64_t IsOTFeatureFontSpecific(unsigned int a1)
{
  v3 = 0xAAAAAAAAAAAAAAAALL;
  v1 = ConvertOTFeatureToAATFeature(a1, &v3);
  result = 1;
  if (v1 && v3 != 35)
  {
    if ((v3 & 0x800000000000) != 0)
    {
      return 1;
    }

    else
    {
      return (HIDWORD(v3) >> 6) & 1;
    }
  }

  return result;
}

uint64_t *std::__tree<std::__value_type<unsigned short,AATFeaturePair>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,AATFeaturePair>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,AATFeaturePair>>>::__equal_range_multi<unsigned short>(uint64_t a1, unsigned __int16 *a2)
{
  v2 = (a1 + 8);
  v3 = *(a1 + 8);
  if (!v3)
  {
    return v2;
  }

  v4 = *a2;
  while (1)
  {
    v5 = *(v3 + 16);
    if (v4 >= v5)
    {
      break;
    }

    v2 = v3;
LABEL_7:
    v3 = *v3;
    if (!v3)
    {
      return v2;
    }
  }

  if (v5 < v4)
  {
    ++v3;
    goto LABEL_7;
  }

  v7 = *v3;
  result = v3;
  if (*v3)
  {
    result = v3;
    do
    {
      v8 = *(v7 + 16);
      v9 = v8 >= v4;
      v10 = v8 < v4;
      if (v9)
      {
        result = v7;
      }

      v7 = v7[v10];
    }

    while (v7);
  }

    ;
  }

  return result;
}

uint64_t TFontFeatureSettingList::IndexOfAATSetting(TFontFeatureSettingList *this, unsigned __int16 a2, int a3)
{
  v10 = a2;
  v4 = std::__tree<std::__value_type<unsigned short,AATFeaturePair>,std::__map_value_compare<unsigned short,std::__value_type<unsigned short,AATFeaturePair>,std::less<unsigned short>,true>,std::allocator<std::__value_type<unsigned short,AATFeaturePair>>>::__equal_range_multi<unsigned short>(this + 8, &v10);
  if (v4 == v5)
  {
    return -1;
  }

  while (*(v4 + 20) != a3)
  {
    v6 = v4[1];
    if (v6)
    {
      do
      {
        v7 = v6;
        v6 = *v6;
      }

      while (v6);
    }

    else
    {
      do
      {
        v7 = v4[2];
        v8 = *v7 == v4;
        v4 = v7;
      }

      while (!v8);
    }

    v4 = v7;
    if (v7 == v5)
    {
      return -1;
    }
  }

  return v4[6];
}

uint64_t ConvertOTFeatureToAATFeature(unsigned int a1, uint64_t a2)
{
  v11 = a1;
  if (v4 == v5)
  {
    return 0;
  }

  v7 = v4[2];
  if ((~v7 & 0xE) != 0)
  {
    if (v4 != &unk_18477A6C4)
    {
      while (*v4 <= a1)
      {
        if (*v4 == a1 && (v4[2] & 0x44) != 4)
        {
          goto LABEL_15;
        }

        v4 += 3;
        if (v4 == &unk_18477A6C4)
        {
          break;
        }
      }
    }

    v4 = &unk_18477A6C4;
LABEL_15:
    if ((v4[2] & 8) == 0)
    {
      v10 = *(v4 + 1);
      *a2 = v10;
      if ((v4[2] & 0x40) != 0)
      {
        *(a2 + 2) = WORD1(v10) + 1;
      }

      return 1;
    }

    if ((v4[2] & 0x180) != 0x80)
    {
      return 0;
    }

    v8 = 1;
  }

  else
  {
    if (a1 != 1667460464)
    {
      return 2 * (v7 == 14);
    }

    v8 = 27;
  }

  *a2 = v8 & 0xFFFF0000FFFFFFFFLL | 0x200000000;
  return 1;
}

int *std::equal_range[abi:fn200100]<anonymous namespace::FeatureMapEntry const*,unsigned int>(unsigned int *a1)
{
  result = &kMasterFeatureMap;
  v3 = &unk_18477A6C4;
  v4 = *a1;
  v5 = 165;
  while (1)
  {
    v6 = v5 >> 1;
    v7 = &result[3 * (v5 >> 1)];
    if (*v7 >= v4)
    {
      break;
    }

    result = v7 + 3;
    v6 = v5 + ~v6;
LABEL_6:
    v5 = v6;
    if (!v6)
    {
      return result;
    }
  }

  if (*v7 > v4)
  {
    v3 = &result[3 * (v5 >> 1)];
    goto LABEL_6;
  }

  if (v5 != 1)
  {
    do
    {
      v8 = v6 >> 1;
      v9 = &result[3 * (v6 >> 1)];
      v11 = *v9;
      v10 = v9 + 3;
      v6 += ~(v6 >> 1);
      if (v11 < v4)
      {
        result = v10;
      }

      else
      {
        v6 = v8;
      }
    }

    while (v6);
  }

  v12 = v7 + 3;
  if (v3 != v7 + 3)
  {
    v13 = 0xAAAAAAAAAAAAAAABLL * (v3 - (v7 + 3));
    do
    {
      v14 = v13 >> 1;
      v15 = &v12[3 * (v13 >> 1)];
      v17 = *v15;
      v16 = v15 + 3;
      v13 += ~(v13 >> 1);
      if (v17 > v4)
      {
        v13 = v14;
      }

      else
      {
        v12 = v16;
      }
    }

    while (v13);
  }

  return result;
}

BOOL TGlyphIterator::MatchCoverSequence<(MatchDirection)0>(TGlyphIterator *a1, unint64_t a2, int a3, unsigned __int16 *a4, uint64_t a5, unint64_t a6, unint64_t *a7)
{
  v12 = a2;
  v14 = *(a1 + 6);
  *(a1 + 6) = a2;
  if (TGlyphIterator::NextContext(a1, 1))
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

      if ((TGlyphIterator::NextContext(a1, 1) & 1) == 0)
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

uint64_t OTL::GSUB::ApplyChainContextSubstFormat3(uint64_t result, unint64_t a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t a6)
{
  v6 = *(result + 40);
  v7 = (a2 + 4);
  if (a2 + 4 > v6)
  {
    return 0;
  }

  v10 = result;
  v11 = *(a3 + 48);
  v12 = *(a2 + 2);
  v13 = __rev16(v12);
  if (*(a2 + 2))
  {
    v14 = *(a3 + 32);
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

  v15 = &v7[v13];
  if ((v15 + 1) > v6)
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
  v19 = v18 + 1;
  if (v18 < a2 || v19 > v6)
  {
    return 0;
  }

  v21 = *v18;
  v22 = v17 - 1 + (bswap32(v21) >> 16);
  if (v22)
  {
    v23 = *(a3 + 40);
    if (*(a3 + 8) < 1)
    {
      if (v11 - v22 <= v23)
      {
        return 0;
      }
    }

    else if (v11 + v22 >= v23)
    {
      return 0;
    }
  }

  *&v24 = 0xAAAAAAAAAAAAAAAALL;
  *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v40[29] = v24;
  v40[30] = v24;
  v40[27] = v24;
  v40[28] = v24;
  v40[25] = v24;
  v40[26] = v24;
  v40[23] = v24;
  v40[24] = v24;
  v40[21] = v24;
  v40[22] = v24;
  v40[19] = v24;
  v40[20] = v24;
  v40[17] = v24;
  v40[18] = v24;
  v40[16] = v24;
  v41 = 0xAAAAAAAAAAAAAAAALL;
  v40[15] = v24;
  v40[14] = v24;
  v40[13] = v24;
  v40[12] = v24;
  v40[11] = v24;
  v40[10] = v24;
  v40[9] = v24;
  v40[8] = v24;
  v40[7] = v24;
  v40[5] = v24;
  v40[6] = v24;
  v40[3] = v24;
  v40[4] = v24;
  v40[1] = v24;
  v40[2] = v24;
  v40[0] = v24;
  v39 = v11;
  if (v16 == 256)
  {
    v33 = result;
    v25 = 1;
    goto LABEL_23;
  }

  if (v17 > 0x40)
  {
    return 0;
  }

  result = TGlyphIterator::MatchCoverSequenceAndNote(a3, v17 - 1, (v15 + 2), v40, a2, v6);
  if (!result)
  {
    return result;
  }

  v33 = v10;
  v25 = result + 1;
LABEL_23:
  v38 = v11;
  if (!v12 || (result = TGlyphIterator::MatchCoverSequence<(MatchDirection)1>(a3, v11, v13, v7, a2, v6, &v38), result))
  {
    if (v25 >= 0x41)
    {
      __break(1u);
      return result;
    }

    v26 = __rev16(v21);
    v27 = *(&v39 + v25 - 1);
    v37 = v27;
    if (!v21 || (result = TGlyphIterator::MatchCoverSequence<(MatchDirection)0>(a3, v27, v26, v19, a2, v6, &v37), result))
    {
      v28 = &v19[v26];
      v29 = v28 + 1;
      if (v28 < a2 || v29 > v6)
      {
        return 0;
      }

      if (OTL::GSUB::ApplySubstLookupRecords(v33, a2, v29, bswap32(*v28) >> 16, a3, v11, &v39, v25, a4, a5, a6) && *(*a3 + 144))
      {
        if (v38 >= v37)
        {
          v31.location = v37;
        }

        else
        {
          v31.location = v38;
        }

        if (v38 - v37 >= 0)
        {
          v32 = v38 - v37;
        }

        else
        {
          v32 = v37 - v38;
        }

        v31.length = v32 + 1;
        TRunGlue::ClearSafeToBreakAfter(*a3, v31);
      }

      return 1;
    }
  }

  return result;
}

void GetPossiblyCompressedDataForAttribute(const __CFString *a1@<X0>, const __CFString *a2@<X1>, void *a3@<X8>)
{
  v8 = 0xAAAAAAAAAAAAAAAALL;
  CopyAttributeForSystemFont(a1, a2, &v8);
  if (atomic_load_explicit(&v8, memory_order_acquire))
  {
    v4 = CFGetTypeID(atomic_load_explicit(&v8, memory_order_acquire));
    if (v4 == CFDataGetTypeID())
    {
      *a3 = atomic_exchange(&v8, 0);
    }

    else
    {
      explicit = atomic_load_explicit(&v8, memory_order_acquire);
      ValueAtIndex = CFArrayGetValueAtIndex(explicit, 0);
      LODWORD(v7) = -1431655766;
      CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &v7);
      v7 = [CFArrayGetValueAtIndex(explicit 1)];
      *a3 = atomic_exchange(&v7, 0);
    }
  }

  else
  {

    *a3 = 0;
  }
}

void std::__hash_table<std::__hash_value_type<TRun const*,long>,std::__unordered_map_hasher<TRun const*,std::__hash_value_type<TRun const*,long>,std::hash<TRun const*>,std::equal_to<TRun const*>,true>,std::__unordered_map_equal<TRun const*,std::__hash_value_type<TRun const*,long>,std::equal_to<TRun const*>,std::hash<TRun const*>,true>,std::allocator<std::__hash_value_type<TRun const*,long>>>::__rehash<true>(uint64_t a1, size_t __n)
{
  if (__n == 1)
  {
    prime = 2;
  }

  else
  {
    prime = __n;
    if ((__n & (__n - 1)) != 0)
    {
      prime = std::__next_prime(__n);
    }
  }

  v4 = *(a1 + 8);
  if (prime > *&v4)
  {
LABEL_6:
    if (!(prime >> 61))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  if (prime < *&v4)
  {
    v5 = vcvtps_u32_f32(*(a1 + 24) / *(a1 + 32));
    if (*&v4 < 3uLL || (v6 = vcnt_s8(v4), v6.i16[0] = vaddlv_u8(v6), v6.u32[0] > 1uLL))
    {
      v5 = std::__next_prime(v5);
    }

    else
    {
      v7 = 1 << -__clz(v5 - 1);
      if (v5 >= 2)
      {
        v5 = v7;
      }
    }

    if (prime <= v5)
    {
      prime = v5;
    }

    if (prime < *&v4)
    {
      if (prime)
      {
        goto LABEL_6;
      }

      v8 = *a1;
      *a1 = 0;
      if (v8)
      {
        operator delete(v8);
      }

      *(a1 + 8) = 0;
    }
  }
}

int *std::__unique[abi:fn200100]<std::_ClassicAlgPolicy,std::__wrap_iter<unsigned int *>,std::__wrap_iter<unsigned int *>,std::__equal_to &>(int *a1, int *a2)
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

void TBaseFont::AccessAttributes(uint64_t a1, uint64_t a2)
{
  os_unfair_lock_lock_with_options();
  if (!atomic_load_explicit((a1 + 120), memory_order_acquire))
  {
    TBaseFont::InitAttributesDict(a1);
  }

  explicit = atomic_load_explicit((a1 + 120), memory_order_acquire);
  v5 = *(a2 + 24);
  v7 = explicit;
  if (v5)
  {
    (*(*v5 + 48))(v5, &v7);

    os_unfair_lock_unlock((a1 + 112));
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:fn200100]();
    std::__function::__func<TFont::InitShapingGlyphs(void)::$_0,std::allocator<TFont::InitShapingGlyphs(void)::$_0>,void ()(__CFDictionary *)>::operator()(v6);
  }
}

void std::__function::__func<TFont::InitShapingGlyphs(void)::$_0,std::allocator<TFont::InitShapingGlyphs(void)::$_0>,void ()(__CFDictionary *)>::operator()(uint64_t a1, const __CFDictionary **a2)
{
  v3 = *a2;
  if (*(a1 + 16))
  {
    Value = CFDictionaryGetValue(v3, *(a1 + 8));
    if (!Value)
    {
      goto LABEL_6;
    }

    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
  }

  else
  {
    v6 = *(a1 + 24);
    v5 = *(a1 + 8);
    Value = v3;
  }

  v7 = CFDictionaryGetValue(Value, v5);
  TCFRef<__CTFont const*>::Retain(v6, v7);
LABEL_6:
  if (*(a1 + 32) == 1)
  {
    v8 = *(a1 + 40);
    v9 = CFDictionaryGetValue(v3, @"CTFontLangSysListAttribute");

    TCFRef<__CTFont const*>::Retain(v8, v9);
  }
}

uint64_t *FindMasterFeatureMapEntry(unsigned int a1)
{
  if ((atomic_load_explicit(&qword_1ED567E50, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED567E50))
  {
    xmmword_1ED567F20 = 0u;
    *&qword_1ED567F30 = 0u;
    dword_1ED567F40 = 1065353216;
    __cxa_guard_release(&qword_1ED567E50);
  }

  if (qword_1ED567E58 != -1)
  {
    dispatch_once_f(&qword_1ED567E58, 0, FindMasterFeatureMapEntry::$_0::__invoke);
  }

  if (result)
  {
    return result[3];
  }

  return result;
}

void *std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(void *a1, unint64_t a2, uint64_t a3, uint64_t a4)
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

void *TInlineVector<std::pair<unsigned short,unsigned short>,30ul>::TInlineVector(void *a1, int **a2)
{
  v3 = *a2;
  v4 = a2[1];
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[18] = a1 + 3;
  if (v4 != v3)
  {
    std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::__vallocate[abi:fn200100](a1, v4 - v3);
    v5 = a1[1];
    do
    {
      v6 = *v3++;
      *v5++ = v6;
    }

    while (v3 != v4);
    a1[1] = v5;
  }

  return a1;
}

void std::vector<unsigned int,TInlineBufferAllocator<unsigned int,36ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = v1 + 21;
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
      if (v1[2] == v1[21])
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

uint64_t std::__function::__value_func<void ()(__CFDictionary *)>::~__value_func[abi:fn200100](uint64_t a1)
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

BOOL IsOTFeatureTurnedOnByShapingEngine(unsigned int a1)
{
  v2 = a1;
  if ((atomic_load_explicit(&qword_1ED567E20, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED567E20))
  {
    xmmword_1ED567ED0 = 0u;
    unk_1ED567EE0 = 0u;
    dword_1ED567EF0 = 1065353216;
    __cxa_guard_release(&qword_1ED567E20);
  }

  if (qword_1ED567E28 != -1)
  {
    dispatch_once_f(&qword_1ED567E28, 0, IsOTFeatureTurnedOnByShapingEngine::$_0::__invoke);
  }

  return std::__hash_table<std::__hash_value_type<unsigned int,OTL::Lookup>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OTL::Lookup>>>::find<unsigned int>(&xmmword_1ED567ED0, &v2) != 0;
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(void *a1, unsigned int *a2)
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

void std::vector<anonymous namespace::FeatureMapEntry,TInlineBufferAllocator<anonymous namespace::FeatureMapEntry,10ul>>::push_back[abi:fn200100](uint64_t a1, uint64_t *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 2);
    v8 = v7 + 1;
    if (v7 + 1 > 0x1555555555555555)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 2);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0xAAAAAAAAAAAAAAALL)
    {
      v10 = 0x1555555555555555;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = *(a1 + 144);
      v12 = v11 + 12 * v10;
      if (v12 > a1 + 144)
      {
        if (v10 <= 0x1555555555555555)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      *(a1 + 144) = v12;
    }

    else
    {
      v11 = 0;
    }

    v13 = v11 + 12 * v7;
    v14 = v11 + 12 * v10;
    v15 = *a2;
    *(v13 + 8) = *(a2 + 2);
    *v13 = v15;
    v6 = v13 + 12;
    v16 = *(a1 + 8) - *a1;
    v17 = v13 - v16;
    memcpy((v13 - v16), *a1, v16);
    v18 = *a1;
    *a1 = v17;
    *(a1 + 8) = v6;
    v19 = *(a1 + 16);
    *(a1 + 16) = v14;
    if (v18)
    {
      if (a1 + 24 > v18 || (v20 = (a1 + 144), a1 + 144 <= v18))
      {
        operator delete(v18);
      }

      else if (v19 == *v20)
      {
        *v20 = v18;
      }
    }
  }

  else
  {
    v5 = *a2;
    *(v4 + 8) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 12;
  }

  *(a1 + 8) = v6;
}

void GetDefaultFeatureList<false>(void)::{lambda(void *)#1}::__invoke()
{
  for (i = 0; i != 495; i += 3)
  {
    *v1 = *&kMasterFeatureMap[i];
    *&v1[8] = kMasterFeatureMap[i + 2];
    if ((*&v1[4] & 0x1600000000) == 0x200000000)
    {
    }
  }
}

void FindMasterFeatureMapEntry(unsigned int)::$_0::__invoke()
{
  for (i = 0; i != 495; i += 3)
  {
    v1 = &kMasterFeatureMap[i];
    if ((kMasterFeatureMap[i + 2] & 0x44) != 4)
    {
      v2 = *v1;
      if (*(&xmmword_1ED567F20 + 1))
      {
        v3 = vcnt_s8(*(&xmmword_1ED567F20 + 8));
        v3.i16[0] = vaddlv_u8(v3);
        if (v3.u32[0] > 1uLL)
        {
          v4 = *v1;
          if (*(&xmmword_1ED567F20 + 1) <= v2)
          {
            v4 = v2 % DWORD2(xmmword_1ED567F20);
          }
        }

        else
        {
          v4 = (DWORD2(xmmword_1ED567F20) - 1) & v2;
        }

        v5 = *(xmmword_1ED567F20 + 8 * v4);
        if (v5)
        {
          for (j = *v5; j; j = *j)
          {
            v7 = j[1];
            if (v7 == v2)
            {
              if (*(j + 4) == v2)
              {
                goto LABEL_21;
              }
            }

            else
            {
              if (v3.u32[0] > 1uLL)
              {
                if (v7 >= *(&xmmword_1ED567F20 + 1))
                {
                  v7 %= *(&xmmword_1ED567F20 + 1);
                }
              }

              else
              {
                v7 &= *(&xmmword_1ED567F20 + 1) - 1;
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
}

void TFont::InitShapingGlyphs(atomic_ullong *this)
{
  v2[23] = *MEMORY[0x1E69E9840];
  v1 = this + 22;
  atomic_load_explicit(this + 22, memory_order_acquire);
  TFont::IsSystemUIFontAndForShaping(this, v2);
  atomic_load_explicit(v1, memory_order_acquire);
  operator new();
}

void std::vector<unsigned int,TInlineBufferAllocator<unsigned int,36ul>>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 2)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 4 * a2);
      v5 += 4 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = *a1;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = v4 - v6;
    if (v9 >> 1 > v8)
    {
      v8 = v9 >> 1;
    }

    if (v9 >= 0x7FFFFFFFFFFFFFFCLL)
    {
      v10 = 0x3FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v12 = (a1 + 168);
      v11 = *(a1 + 168);
      v13 = v11 + 4 * v10;
      if (v13 > a1 + 168)
      {
        if (!(v10 >> 62))
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      *v12 = v13;
    }

    else
    {
      v11 = 0;
    }

    v14 = (v11 + 4 * (v7 >> 2));
    v15 = v11 + 4 * v10;
    bzero(v14, 4 * a2);
    memcpy(&v14[-4 * (v7 >> 2)], v6, v7);
    v16 = *a1;
    *a1 = &v14[-4 * (v7 >> 2)];
    *(a1 + 8) = &v14[4 * a2];
    v17 = *(a1 + 16);
    *(a1 + 16) = v15;
    if (v16)
    {
      if (a1 + 24 > v16 || (v18 = (a1 + 168), a1 + 168 <= v16))
      {

        operator delete(v16);
      }

      else if (v17 == *v18)
      {
        *v18 = v16;
      }
    }
  }
}

void std::vector<unsigned int,TInlineBufferAllocator<unsigned int,36ul>>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 2;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 4 * a2;
    }
  }

  else
  {
    std::vector<unsigned int,TInlineBufferAllocator<unsigned int,36ul>>::__append(a1, a2 - v2);
  }
}

BOOL OTL::GCommon::GetFeatures(OTL::GCommon *this, OTL::FeatureList *a2)
{
  v3 = *(this + 7);
  if (v3)
  {
    v5 = *(this + 6);
    if (v5)
    {
      v6 = *v3;
      v7 = *(v5 + 4);
      v8 = __rev16(v7);
      std::vector<unsigned int,TInlineBufferAllocator<unsigned int,36ul>>::resize(a2, v8);
      v9 = *a2;
      if (v7)
      {
        v10 = 0;
        v11 = bswap32(v6) >> 16;
        v12 = *(this + 6) + 6;
        if (v8 <= 1)
        {
          v13 = 1;
        }

        else
        {
          v13 = v8;
        }

        while (1)
        {
          v14 = bswap32(*(v12 + 2 * v10)) >> 16;
          if (v14 >= v11)
          {
            break;
          }

          *(v9 + 4 * v10++) = bswap32(*(*(this + 7) + 6 * v14 + 2));
          if (v13 == v10)
          {
            goto LABEL_11;
          }
        }

        std::vector<unsigned int,TInlineBufferAllocator<unsigned int,36ul>>::resize(a2, v10);
      }

LABEL_11:
      std::__sort<std::__less<unsigned int,unsigned int> &,unsigned int *>();
    }
  }

  return *a2 != *(a2 + 1);
}

void ConvertSettingsToOTFeatures(unsigned int **a1, atomic_ullong *a2, int a3, uint64_t a4, uint64_t (*a5)(void), _DWORD *a6, uint64_t a7)
{
  v10 = *a1;
  v9 = a1[1];
  explicit = atomic_load_explicit(a2, memory_order_acquire);
  if (!explicit || (Count = CFArrayGetCount(explicit), Count < 1))
  {
    if (a3)
    {
      if ((atomic_load_explicit(&qword_1ED567E60, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED567E60))
      {
        qword_1ED567F48 = 0;
        unk_1ED567F50 = 0;
        qword_1ED567F58 = 0;
        qword_1ED567FD8 = &unk_1ED567F60;
        __cxa_guard_release(&qword_1ED567E60);
      }

      if (qword_1ED567E68 == -1)
      {
        v81 = &qword_1ED567F48;
      }

      else
      {
LABEL_223:
        dispatch_once_f(&qword_1ED567E68, 0, GetDefaultFeatureList<true>(void)::{lambda(void *)#1}::__invoke);
        v81 = &qword_1ED567F48;
      }
    }

    else
    {
      if ((atomic_load_explicit(&qword_1ED567E70, memory_order_acquire) & 1) == 0 && __cxa_guard_acquire(&qword_1ED567E70))
      {
        qword_1ED567FE0 = 0;
        unk_1ED567FE8 = 0;
        qword_1ED567FF0 = 0;
        qword_1ED568070 = &unk_1ED567FF8;
        __cxa_guard_release(&qword_1ED567E70);
      }

      if (qword_1ED567E78 != -1)
      {
        dispatch_once_f(&qword_1ED567E78, 0, GetDefaultFeatureList<false>(void)::{lambda(void *)#1}::__invoke);
      }

      v81 = &qword_1ED567FE0;
    }

    if (v10 >= v9)
    {
      v16 = 0;
      goto LABEL_163;
    }

    v16 = 0;
    while (1)
    {
      v83 = *a4;
      v82 = *(a4 + 8);
      v84 = *v10;
      if (*a4 != v82)
      {
        while (*v83 != v84)
        {
          v83 += 2;
          if (v83 == v82)
          {
            v83 = *(a4 + 8);
            break;
          }
        }
      }

      MasterFeatureMapEntry = FindMasterFeatureMapEntry(v84);
      if (!MasterFeatureMapEntry)
      {
        goto LABEL_122;
      }

      v86 = MasterFeatureMapEntry;
      v87 = *(a4 + 8);
      if (v83 == v87)
      {
        v86 = *v81;
        v88 = v81[1];
        if (*v81 == v88)
        {
          goto LABEL_122;
        }

        v89 = *v10;
        while (1)
        {
          if (*v86 > v89)
          {
            goto LABEL_122;
          }

          if (*v86 == v89 && (v86[2] & 0x44) != 4)
          {
            break;
          }

          v86 += 3;
          if (v86 == v88)
          {
            goto LABEL_122;
          }
        }

        if (v86 == v88)
        {
          goto LABEL_122;
        }

        v91 = *(a4 + 16);
        if (v83 >= v91)
        {
          v152 = 0xAAAAAAAAAAAAAAAALL;
          *&v93 = 0xAAAAAAAAAAAAAAAALL;
          *(&v93 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *valuePtr = v93;
          *&valuePtr[16] = v93;
          v94 = (v87 - *a4) >> 3;
          v95 = v94 + 1;
          if ((v94 + 1) >> 61)
          {
            goto LABEL_224;
          }

          v96 = v91 - *a4;
          if (v96 >> 2 > v95)
          {
            v95 = v96 >> 2;
          }

          if (v96 >= 0x7FFFFFFFFFFFFFF8)
          {
            v97 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v97 = v95;
          }

          std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(valuePtr, v97, v94, a4 + 24);
          v98 = *&valuePtr[16];
          **&valuePtr[16] = *v86;
          *(v98 + 4) = 1;
          *&valuePtr[16] = v98 + 8;
          v99 = *(a4 + 8) - *a4;
          v100 = *&valuePtr[8] - v99;
          memcpy((*&valuePtr[8] - v99), *a4, v99);
          v101 = *a4;
          *a4 = v100;
          v102 = *(a4 + 16);
          v149 = *&valuePtr[16];
          *(a4 + 8) = *&valuePtr[16];
          *&valuePtr[16] = v101;
          *&valuePtr[24] = v102;
          *valuePtr = v101;
          *&valuePtr[8] = v101;
          std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(valuePtr);
          v92 = v149;
        }

        else
        {
          *v87 = v89;
          v87[1] = 1;
          v92 = v87 + 2;
        }

        *(a4 + 8) = v92;
      }

      v16 |= v86[2] & 0xFFFFFE00;
LABEL_122:
      if (++v10 >= v9)
      {
        goto LABEL_163;
      }
    }
  }

  v144 = Count;
  if (v10 < v9)
  {
    v143 = a5;
    v16 = 0;
    if (a3)
    {
      v17 = 32;
    }

    else
    {
      v17 = 16;
    }

    v148 = v17;
    v146 = a2 + 2;
    v145 = a7;
    while (1)
    {
      v18 = *a4;
      v19 = *(a4 + 8);
      v20 = *v10;
      if (*a4 != v19)
      {
        while (*v18 != v20)
        {
          v18 += 2;
          if (v18 == v19)
          {
            v18 = *(a4 + 8);
            break;
          }
        }
      }

      v21 = FindMasterFeatureMapEntry(v20);
      if (!v21)
      {
        goto LABEL_20;
      }

      v22 = v21;
      v23 = *(v21 + 2);
      if ((v23 & v148) != 0)
      {
        if (v18 != v19)
        {
          v24 = *(a4 + 8);
          if (v24 == v18)
          {
            goto LABEL_222;
          }

          v25 = v18 + 2;
          if (v18 + 2 != v24)
          {
            do
            {
              v26 = v25[1];
              *(v25 - 2) = *v25;
              *(v25 - 1) = v26;
              v25 += 2;
            }

            while (v25 != v24);
            goto LABEL_18;
          }

          goto LABEL_19;
        }
      }

      else
      {
        v27 = *(v21 + 2);
        if (a7 != 1 || (v23 & 2) == 0)
        {
          if ((v23 & 0x40) != 0)
          {
            v35 = *v146;
            if (!*v146)
            {
              goto LABEL_49;
            }

            v36 = a2 + 2;
            do
            {
              v37 = *(v35 + 32);
              v38 = v37 >= v27;
              v39 = v37 < v27;
              if (v38)
              {
                v36 = v35;
              }

              v35 = *(v35 + 8 * v39);
            }

            while (v35);
            if (v36 == v146 || *(v36 + 16) > v27)
            {
LABEL_49:
              if (v18 == v19 || v143 && ((v143)(*v22, v27) & 1) != 0)
              {
LABEL_102:
                a7 = v145;
                goto LABEL_20;
              }

              v40 = *(a4 + 8);
              a7 = v145;
              if (v40 == v18)
              {
LABEL_222:
                __break(1u);
                goto LABEL_223;
              }

              v25 = v18 + 2;
              if (v18 + 2 != v40)
              {
                do
                {
                  v41 = v25[1];
                  *(v25 - 2) = *v25;
                  *(v25 - 1) = v41;
                  v25 += 2;
                }

                while (v25 != v40);
LABEL_18:
                v18 = v25 - 2;
              }

LABEL_19:
              *(a4 + 8) = v18;
              goto LABEL_20;
            }

            v30 = v36[6];
          }

          else
          {
            v30 = TFontFeatureSettingList::IndexOfAATSetting(a2, v27, *(v21 + 3));
          }

          if (v30 == -1)
          {
            goto LABEL_49;
          }

          if ((v22[1] & 0x40) != 0 && (ValueAtIndex = CFArrayGetValueAtIndex(atomic_load_explicit(a2, memory_order_acquire), v30), (v32 = [(CTFeatureSetting *)ValueAtIndex type]) != 0) && (*valuePtr = -21846, CFNumberGetValue(v32, kCFNumberShortType, valuePtr), *valuePtr == *(v22 + 2)) && (v33 = [(CTFeatureSetting *)ValueAtIndex selector]) != 0)
          {
            *valuePtr = -1431655766;
            CFNumberGetValue(v33, kCFNumberIntType, valuePtr);
            v34 = *valuePtr;
          }

          else
          {
            v34 = 1;
          }

          v49 = CFArrayGetValueAtIndex(atomic_load_explicit(a2, memory_order_acquire), v30);
          v50 = [(CTFeatureSetting *)v49 tag];
          v51 = FourCharCodeFromString(v50);
          if (v51 && v51 != *v22)
          {
            memset(valuePtr, 170, 24);
            TFontFeatureSettingList::IndexesOfAATSetting(a2, *(v22 + 2), *(v22 + 3), valuePtr);
            v52 = *valuePtr;
            v53 = (*valuePtr + 8);
            if (*&valuePtr[8] == *valuePtr + 8)
            {
              v56 = 0;
              if (*valuePtr)
              {
                goto LABEL_88;
              }
            }

            else
            {
              while (1)
              {
                v54 = CFArrayGetValueAtIndex(atomic_load_explicit(a2, memory_order_acquire), *v53);
                v55 = [(CTFeatureSetting *)v54 tag];
                if (!v55 || FourCharCodeFromString(v55) == *v22)
                {
                  break;
                }

                if (++v53 == *&valuePtr[8])
                {
                  v56 = 0;
                  goto LABEL_87;
                }
              }

              v56 = 1;
LABEL_87:
              v52 = *valuePtr;
              if (*valuePtr)
              {
LABEL_88:
                *&valuePtr[8] = v52;
                operator delete(v52);
              }
            }

            if (!v56)
            {
              goto LABEL_102;
            }
          }

          a7 = v145;
          if (v18 == v19)
          {
            v69 = *(a4 + 8);
            v68 = *(a4 + 16);
            if (v69 >= v68)
            {
              v152 = 0xAAAAAAAAAAAAAAAALL;
              *&v71 = 0xAAAAAAAAAAAAAAAALL;
              *(&v71 + 1) = 0xAAAAAAAAAAAAAAAALL;
              *valuePtr = v71;
              *&valuePtr[16] = v71;
              v72 = (v69 - *a4) >> 3;
              v73 = v72 + 1;
              if ((v72 + 1) >> 61)
              {
LABEL_224:
                std::__throw_bad_array_new_length[abi:fn200100]();
              }

              v74 = v68 - *a4;
              if (v74 >> 2 > v73)
              {
                v73 = v74 >> 2;
              }

              if (v74 >= 0x7FFFFFFFFFFFFFF8)
              {
                v75 = 0x1FFFFFFFFFFFFFFFLL;
              }

              else
              {
                v75 = v73;
              }

              std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(valuePtr, v75, v72, a4 + 24);
              v76 = *&valuePtr[16];
              **&valuePtr[16] = *v22;
              *(v76 + 4) = v34;
              *&valuePtr[16] = v76 + 8;
              v77 = *(a4 + 8) - *a4;
              v78 = *&valuePtr[8] - v77;
              memcpy((*&valuePtr[8] - v77), *a4, v77);
              v79 = *a4;
              *a4 = v78;
              v80 = *(a4 + 16);
              v142 = *&valuePtr[16];
              *(a4 + 8) = *&valuePtr[16];
              *&valuePtr[16] = v79;
              *&valuePtr[24] = v80;
              *valuePtr = v79;
              *&valuePtr[8] = v79;
              std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(valuePtr);
              v70 = v142;
              a7 = v145;
            }

            else
            {
              *v69 = *v22;
              v69[1] = v34;
              v70 = v69 + 2;
            }

            *(a4 + 8) = v70;
          }

          v16 |= v22[1] & 0xFFFFFE00;
          goto LABEL_20;
        }

        if (v23)
        {
          v42 = *v146;
          if (*v146)
          {
            v43 = a2 + 2;
            do
            {
              v44 = *(v42 + 32);
              v38 = v44 >= v27;
              v45 = v44 < v27;
              if (v38)
              {
                v43 = v42;
              }

              v42 = *(v42 + 8 * v45);
            }

            while (v42);
            if (v43 != v146 && *(v43 + 16) <= v27 && v43[6] != -1)
            {
LABEL_26:
              if (v18 == v19 || v143 && (v143(*v22) & 1) != 0)
              {
                goto LABEL_20;
              }

              v28 = *(a4 + 8);
              if (v28 == v18)
              {
                goto LABEL_222;
              }

              v25 = v18 + 2;
              if (v18 + 2 != v28)
              {
                do
                {
                  v29 = v25[1];
                  *(v25 - 2) = *v25;
                  *(v25 - 1) = v29;
                  v25 += 2;
                }

                while (v25 != v28);
                goto LABEL_18;
              }

              goto LABEL_19;
            }
          }
        }

        else if (TFontFeatureSettingList::IndexOfAATSetting(a2, v27, *(v21 + 3) ^ 1u) != -1)
        {
          goto LABEL_26;
        }

        if (v18 == v19)
        {
          v47 = *(a4 + 8);
          v46 = *(a4 + 16);
          if (v47 >= v46)
          {
            v152 = 0xAAAAAAAAAAAAAAAALL;
            *&v57 = 0xAAAAAAAAAAAAAAAALL;
            *(&v57 + 1) = 0xAAAAAAAAAAAAAAAALL;
            *valuePtr = v57;
            *&valuePtr[16] = v57;
            v58 = (v47 - *a4) >> 3;
            v59 = v58 + 1;
            if ((v58 + 1) >> 61)
            {
              goto LABEL_224;
            }

            v60 = a7;
            v61 = v46 - *a4;
            if (v61 >> 2 > v59)
            {
              v59 = v61 >> 2;
            }

            if (v61 >= 0x7FFFFFFFFFFFFFF8)
            {
              v62 = 0x1FFFFFFFFFFFFFFFLL;
            }

            else
            {
              v62 = v59;
            }

            std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(valuePtr, v62, v58, a4 + 24);
            v63 = *&valuePtr[16];
            **&valuePtr[16] = *v22;
            *(v63 + 4) = 1;
            *&valuePtr[16] = v63 + 8;
            v64 = *(a4 + 8) - *a4;
            v65 = *&valuePtr[8] - v64;
            memcpy((*&valuePtr[8] - v64), *a4, v64);
            v66 = *a4;
            *a4 = v65;
            v67 = *(a4 + 16);
            v141 = *&valuePtr[16];
            *(a4 + 8) = *&valuePtr[16];
            *&valuePtr[16] = v66;
            *&valuePtr[24] = v67;
            *valuePtr = v66;
            *&valuePtr[8] = v66;
            std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(valuePtr);
            v48 = v141;
            a7 = v60;
          }

          else
          {
            *v47 = *v22;
            v47[1] = 1;
            v48 = v47 + 2;
          }

          *(a4 + 8) = v48;
        }

        v16 |= v22[1] & 0xFFFFFE00;
      }

LABEL_20:
      if (++v10 >= v9)
      {
        goto LABEL_147;
      }
    }
  }

  v16 = 0;
LABEL_147:
  v103 = v144 + 1;
  do
  {
    v104 = CFArrayGetValueAtIndex(atomic_load_explicit(a2, memory_order_acquire), v103 - 2);
    v105 = [(CTFeatureSetting *)v104 tag];
    if (!v105)
    {
      break;
    }

    v106 = v105;
    if ([(CTFeatureSetting *)v104 type])
    {
      break;
    }

    v107 = FourCharCodeFromString(v106);
    if (v107)
    {
      v108 = v107;
      v109 = [(CTFeatureSetting *)v104 value];
      *valuePtr = -1431655766;
      CFNumberGetValue(v109, kCFNumberIntType, valuePtr);
      v110 = *valuePtr;
      if (*valuePtr)
      {
        v112 = *(a4 + 8);
        v111 = *(a4 + 16);
        if (v112 >= v111)
        {
          v152 = 0xAAAAAAAAAAAAAAAALL;
          *&v114 = 0xAAAAAAAAAAAAAAAALL;
          *(&v114 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *valuePtr = v114;
          *&valuePtr[16] = v114;
          v115 = (v112 - *a4) >> 3;
          v116 = v115 + 1;
          if ((v115 + 1) >> 61)
          {
            goto LABEL_224;
          }

          v117 = v111 - *a4;
          if (v117 >> 2 > v116)
          {
            v116 = v117 >> 2;
          }

          if (v117 >= 0x7FFFFFFFFFFFFFF8)
          {
            v118 = 0x1FFFFFFFFFFFFFFFLL;
          }

          else
          {
            v118 = v116;
          }

          std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(valuePtr, v118, v115, a4 + 24);
          v119 = *&valuePtr[16];
          **&valuePtr[16] = v108;
          *(v119 + 4) = v110;
          *&valuePtr[16] = v119 + 8;
          v120 = *(a4 + 8) - *a4;
          v121 = *&valuePtr[8] - v120;
          memcpy((*&valuePtr[8] - v120), *a4, v120);
          v122 = *a4;
          *a4 = v121;
          v123 = *(a4 + 16);
          v150 = *&valuePtr[16];
          *(a4 + 8) = *&valuePtr[16];
          *&valuePtr[16] = v122;
          *&valuePtr[24] = v123;
          *valuePtr = v122;
          *&valuePtr[8] = v122;
          std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(valuePtr);
          v113 = v150;
        }

        else
        {
          *v112 = v108;
          v112[1] = v110;
          v113 = v112 + 2;
        }

        *(a4 + 8) = v113;
      }
    }

    --v103;
  }

  while (v103 > 1);
LABEL_163:
  if (a6)
  {
    if (!*a6)
    {
      LOWORD(v16) = v16 | 0x200;
      if ((v16 & 0x200) == 0)
      {
        goto LABEL_192;
      }

      goto LABEL_171;
    }

    if ((v16 & 0x4000) != 0)
    {
      *a6 = 2;
      v16 &= ~0x4000u;
    }
  }

  if (!v16)
  {
    return;
  }

  if ((v16 & 0x200) != 0)
  {
LABEL_171:
    v125 = *a4;
    v124 = *(a4 + 8);
    if (*a4 == v124)
    {
      v126 = *a4;
    }

    else
    {
      v126 = *a4;
      while (*v126 != 1801810542)
      {
        v126 += 2;
        if (v126 == v124)
        {
          v126 = *(a4 + 8);
          break;
        }
      }
    }

    if (v124 != v126)
    {
      v127 = v126 + 2;
      if (v126 + 2 == v124)
      {
        v124 = v126;
      }

      else
      {
        do
        {
          v128 = v127[1];
          *(v127 - 2) = *v127;
          *(v127 - 1) = v128;
          v127 += 2;
        }

        while (v127 != v124);
        v124 = v127 - 2;
      }

      *(a4 + 8) = v124;
    }

    if (v125 != v124)
    {
      while (*v125 != 1986753134)
      {
        v125 += 2;
        if (v125 == v124)
        {
          v125 = v124;
          break;
        }
      }
    }

    if (v124 != v125)
    {
      v129 = v125 + 2;
      if (v125 + 2 != v124)
      {
        do
        {
          v130 = v129[1];
          *(v129 - 2) = *v129;
          *(v129 - 1) = v130;
          v129 += 2;
        }

        while (v129 != v124);
        v125 = v129 - 2;
      }

      *(a4 + 8) = v125;
    }
  }

LABEL_192:
  if ((v16 & 0x800) != 0)
  {
    v132 = *a4;
    v131 = *(a4 + 8);
    if (*a4 != v131)
    {
      while (*v132 != 1885432948)
      {
        v132 += 2;
        if (v132 == v131)
        {
          v132 = *(a4 + 8);
          break;
        }
      }
    }

    if (v131 != v132)
    {
      v133 = v132 + 2;
      if (v132 + 2 != v131)
      {
        do
        {
          v134 = v133[1];
          *(v133 - 2) = *v133;
          *(v133 - 1) = v134;
          v133 += 2;
        }

        while (v133 != v131);
        v132 = v133 - 2;
      }

      *(a4 + 8) = v132;
    }
  }

  if ((v16 & 0x2000) != 0)
  {
    v136 = *a4;
    v139 = *(a4 + 8);
    if (*a4 != v139)
    {
      while (*v136 != 1987212338)
      {
        v136 += 2;
        if (v136 == v139)
        {
          v136 = *(a4 + 8);
          break;
        }
      }
    }

    if (v139 != v136)
    {
      v137 = v136 + 2;
      if (v136 + 2 != v139)
      {
        do
        {
          v140 = v137[1];
          *(v137 - 2) = *v137;
          *(v137 - 1) = v140;
          v137 += 2;
        }

        while (v137 != v139);
        goto LABEL_219;
      }

LABEL_220:
      *(a4 + 8) = v136;
    }
  }

  else if ((v16 & 0x1000) != 0)
  {
    v136 = *a4;
    v135 = *(a4 + 8);
    if (*a4 != v135)
    {
      while (*v136 != 1986359924)
      {
        v136 += 2;
        if (v136 == v135)
        {
          v136 = *(a4 + 8);
          break;
        }
      }
    }

    if (v135 != v136)
    {
      v137 = v136 + 2;
      if (v136 + 2 != v135)
      {
        do
        {
          v138 = v137[1];
          *(v137 - 2) = *v137;
          *(v137 - 1) = v138;
          v137 += 2;
        }

        while (v137 != v135);
LABEL_219:
        v136 = v137 - 2;
        goto LABEL_220;
      }

      goto LABEL_220;
    }
  }
}

BOOL OTL::FeatureList::StripMissingFeaturesFrom(unsigned int **this, unsigned int *__dst)
{
  if (!*__dst)
  {
    return 0;
  }

  v4 = __dst;
  do
  {
    v5 = v4[1];
    ++v4;
  }

  while (v5);
  if (v4 > __dst)
  {
    v6 = *this;
    v7 = __dst;
    do
    {
      v8 = this[1];
      if (v8 == v6)
      {
        goto LABEL_14;
      }

      v9 = v8 - v6;
      v10 = *v7;
      v11 = v6;
      do
      {
        v12 = v9 >> 1;
        v13 = &v11[v9 >> 1];
        v15 = *v13;
        v14 = v13 + 1;
        v9 += ~(v9 >> 1);
        if (v15 < v10)
        {
          v11 = v14;
        }

        else
        {
          v9 = v12;
        }
      }

      while (v9);
      if (v11 == v8 || v10 < *v11)
      {
LABEL_14:
        if (v4 != v7 + 1)
        {
          memmove(v7, v7 + 1, v4 - (v7 + 1));
          v6 = *this;
        }

        --v4;
      }

      else
      {
        ++v7;
      }
    }

    while (v7 < v4);
  }

  *v4 = 0;
  return v4 != __dst;
}

uint64_t std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul>>(uint64_t a1, unint64_t a2)
{
  v2 = (a1 + 256);
  result = *(a1 + 256);
  v4 = result + (a2 << 6);
  if (v4 > v2)
  {
    if (!(a2 >> 58))
    {
      operator new();
    }

    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  *v2 = v4;
  return result;
}

OTL::Coverage *OTL::LookupWithCoverage::GetCoverage@<X0>(OTL::Coverage *this@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, int8x16_t a5@<Q1>)
{
  if (this + 4 <= a2)
  {
    return OTL::Coverage::Coverage(a3, (this + (bswap32(*(this + 1)) >> 16)), a2, 0, a4, a5);
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

OTL::Coverage *OTL::Coverage::Coverage(OTL::Coverage *this, unsigned __int16 *a2, unint64_t a3, char a4, double a5, int8x16_t a6)
{
  *this = a2;
  *(this + 1) = a3;
  *(this + 8) = 0xFFFF;
  *(this + 5) = 0;
  *(this + 6) = 0;
  if ((a2 + 2) > a3 || (a4 & 1) == 0 && !OTL::Coverage::Init(this, a5, a6))
  {
    goto LABEL_2;
  }

  v8 = bswap32(*a2) >> 16;
  if (v8 == 2)
  {
    v9 = bswap32(a2[1]) >> 16 > 7;
    v10 = OTL::Coverage::SearchFmt2Linear;
    v11 = OTL::Coverage::SearchFmt2Binary;
    goto LABEL_9;
  }

  if (v8 != 1)
  {
LABEL_2:
    *this = 0;
    *(this + 2) = OTL::Coverage::SearchUnknown;
    goto LABEL_12;
  }

  v9 = bswap32(a2[1]) >> 16 > 4;
  v10 = OTL::Coverage::SearchFmt1Linear;
  v11 = OTL::Coverage::SearchFmt1Binary;
LABEL_9:
  if (v9)
  {
    v10 = v11;
  }

  *(this + 2) = v10;
LABEL_12:
  *(this + 3) = 0;
  return this;
}

uint64_t OTL::Coverage::Init(OTL::Coverage *this, double a2, int8x16_t a3)
{
  v4 = *this;
  v5 = bswap32(**this) >> 16;
  if (v5 == 2)
  {
    v21 = v4 + 2;
    v22 = *(this + 1);
    v23 = __rev16(v4[1]);
    v24 = &v4[3 * v23 + 2];
    if (v24 < (v4 + 2) || v24 > v22)
    {
      if ((v4 + 5) > v22)
      {
        LODWORD(v26) = 0;
      }

      else
      {
        v26 = (v22 - v21) / 6;
      }

      v27 = bswap32(v26) >> 16;
      v28 = 3 * v26;
      if (!v27)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v28 = 3 * v23;
      if (!v4[1])
      {
        goto LABEL_39;
      }
    }

    v15 = 0;
    v29 = &v4[v28 + 2];
    v18 = -1;
    do
    {
      v30 = bswap32(*v21) >> 16;
      v31 = bswap32(v21[1]);
      if (v30 <= HIWORD(v31))
      {
        v32 = HIWORD(v31);
        if (v30 < v18)
        {
          v18 = v30;
        }

        if (v15 <= v32)
        {
          v15 = HIWORD(v31);
        }

        HashFilterCombiner<IdentityHashFilter,MultiplicativeHashFilter>::AddRange(this + 5, v30, v32, a2, a3);
      }

      v21 += 3;
    }

    while (v21 != v29);
    goto LABEL_40;
  }

  if (v5 != 1)
  {
    return 0;
  }

  v6 = v4 + 2;
  v7 = v4[1];
  v8 = *(this + 1);
  v9 = __rev16(v7);
  v10 = &v4[v9 + 2];
  if ((v4 + 3) <= v8)
  {
    v11 = (v8 - (v4 + 4)) >> 1;
  }

  else
  {
    v11 = 0;
  }

  v12 = bswap32(v11) >> 16;
  v13 = 2 * v11;
  if (v10 < v6 || v10 > v8)
  {
    v7 = v12;
  }

  else
  {
    v13 = v9 * 2;
  }

  if (v7)
  {
    v15 = 0;
    v16 = *(this + 5);
    v17 = *(this + 6);
    v18 = -1;
    do
    {
      v19 = *v6++;
      v20 = bswap32(v19);
      if (HIWORD(v20) < v18)
      {
        v18 = HIWORD(v20);
      }

      if (v15 <= HIWORD(v20))
      {
        v15 = HIWORD(v20);
      }

      v16 |= 1 << SBYTE2(v20);
      v17 |= 1 << ((-1640531535 * HIWORD(v20)) >> 26);
      *(this + 5) = v16;
      *(this + 6) = v17;
      v13 -= 2;
    }

    while (v13);
    goto LABEL_40;
  }

LABEL_39:
  v15 = 0;
  v18 = -1;
LABEL_40:
  *(this + 16) = v18;
  *(this + 17) = v15;
  return 1;
}

unint64_t *HashFilterCombiner<IdentityHashFilter,MultiplicativeHashFilter>::AddRange(unint64_t *result, unsigned int a2, unsigned int a3, double a4, int8x16_t a5)
{
  v5 = a3 - a2;
  if (a3 >= a2 && a3 + 1 != a2)
  {
    a5.i64[0] = *result;
    v6 = vadd_s32(vdup_n_s32(a2), 0x100000000);
    v7 = vdup_n_s32(v5);
    v8 = 2;
    v9 = vdupq_n_s64(1uLL);
    do
    {
      v10 = a5;
      v11 = vand_s8(v6, 0x3F0000003FLL);
      v12.i64[0] = v11.u32[0];
      v12.i64[1] = v11.u32[1];
      a5 = vorrq_s8(vshlq_u64(v9, v12), v10);
      v6 = vadd_s32(v6, 0x200000002);
      v8 -= 2;
    }

    while (((v5 + 2) & 0xFFFFFFFE) + v8 != 2);
    v13 = vcgt_u32(vorr_s8(vdup_n_s32(-v8), 0x100000000), v7);
    v14.i64[0] = v13.i32[0];
    v14.i64[1] = v13.i32[1];
    v15 = vbslq_s8(v14, v10, a5);
    *result = vorr_s8(*v15.i8, *&vextq_s8(v15, v15, 8uLL));
    v16 = -1640531535 * a2;
    v17 = result[1];
    v18 = v5 + 1;
    do
    {
      if (v17 == -1)
      {
        break;
      }

      v17 |= 1 << (v16 >> 26);
      result[1] = v17;
      v16 -= 1640531535;
      --v18;
    }

    while (v18);
  }

  return result;
}

uint64_t *std::__hash_table<std::__hash_value_type<unsigned int,OTL::Lookup>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,OTL::Lookup>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,OTL::Lookup>>>::__emplace_unique_key_args<unsigned int,std::piecewise_construct_t const&,std::tuple<unsigned int const&>,std::tuple<OTL::Lookup&&>>(void *a1, unsigned int *a2)
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

uint64_t std::vector<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul>>::__vallocate[abi:fn200100](uint64_t *a1, unint64_t a2)
{
  if (a2 >> 58)
  {
    std::__throw_bad_array_new_length[abi:fn200100]();
  }

  result = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul>>((a1 + 3), a2);
  *a1 = result;
  a1[1] = result;
  a1[2] = result + (v4 << 6);
  return result;
}

uint64_t OTL::Lookup::Lookup(uint64_t a1, __int128 *a2)
{
  v3 = *a2;
  v4 = a2[1];
  *(a1 + 32) = *(a2 + 4);
  *a1 = v3;
  *(a1 + 16) = v4;
  v5 = *(a2 + 10);
  *(a1 + 40) = v5;
  *(a1 + 44) = *(a2 + 22);
  *(a1 + 48) = a1 + 56;
  if (v5 >= 2)
  {
    v6 = *(a2 + 6);
    if (v6 == (a2 + 56))
    {
      v7 = v6[1];
      *(a1 + 56) = *v6;
      *(a1 + 72) = v7;
    }

    else
    {
      *(a1 + 48) = v6;
      *(a2 + 6) = a2 + 56;
    }
  }

  v9 = *(a2 + 11);
  v8 = *(a2 + 12);
  *(a2 + 11) = 0;
  *(a1 + 88) = v9;
  std::vector<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul>>::vector[abi:fn200100]<std::__wrap_iter<std::pair<OTL::LookupSubtable const*,OTL::Coverage> const*>,0>((a1 + 96), v8, *(a2 + 13));
  return a1;
}

uint64_t *std::vector<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul>>::vector[abi:fn200100]<std::__wrap_iter<std::pair<OTL::LookupSubtable const*,OTL::Coverage> const*>,0>(uint64_t *a1, char *a2, char *a3)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  a1[35] = (a1 + 3);
  if (a3 != a2)
  {
    v5 = a2;
    std::vector<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul>>::__vallocate[abi:fn200100](a1, (a3 - a2) >> 6);
    v6 = a1[1];
    do
    {
      v7 = *v5;
      v8 = *(v5 + 1);
      v9 = *(v5 + 3);
      v6[2] = *(v5 + 2);
      v6[3] = v9;
      *v6 = v7;
      v6[1] = v8;
      v6 += 4;
      v5 += 64;
    }

    while (v5 != a3);
    a1[1] = v6;
  }

  return a1;
}

void OTL::Lookup::~Lookup(OTL::Lookup *this)
{
  v4 = (this + 96);
  std::vector<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul>>::__destroy_vector::operator()[abi:fn200100](&v4);
  v2 = *(this + 11);
  *(this + 11) = 0;
  if (v2)
  {
    MEMORY[0x1865F22D0](v2, 0x1000C401B2BBF36);
  }

  v3 = *(this + 6);
  if (v3 != this + 56)
  {
    free(v3);
  }
}

void std::vector<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul>>::__destroy_vector::operator()[abi:fn200100](void ***a1)
{
  v1 = *a1;
  v2 = **a1;
  if (v2)
  {
    v1[1] = v2;
    v3 = v1 + 35;
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
      if (v1[2] == v1[35])
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

uint64_t OTL::Lookup::InitCoverageUnion(uint64_t this)
{
  v14[4] = *MEMORY[0x1E69E9840];
  if ((*(this + 18) & 1) == 0)
  {
    v1 = this;
    *(this + 18) = 1;
    v2 = *(this + 96);
    v3 = *(this + 104);
    if (v2 != v3)
    {
      v4 = 0;
      v5 = -1;
      do
      {
        v6 = *(v2 + 40);
        v7 = *(v2 + 42);
        v8 = v5;
        if (v6 < v5)
        {
          v8 = *(v2 + 40);
        }

        v9 = v4;
        if (v4 <= v7)
        {
          v9 = *(v2 + 42);
        }

        if (v6 <= v7)
        {
          v4 = v9;
          v5 = v8;
        }

        v2 += 64;
      }

      while (v2 != v3);
      if (v5 <= v4)
      {
        if (v5 == v4)
        {
          v10 = *(this + 32) | (1 << ((-1640531535 * v5) >> 26));
          *(this + 24) |= 1 << v5;
          *(this + 32) = v10;
          *(this + 40) = 1;
          *(this + 44) = v4;
        }

        else
        {
          v11 = this + 40;
          this = OTL::CoverageBitmap::Reset((this + 40), v5, v4);
          v12 = *(v1 + 96);
          for (i = *(v1 + 104); v12 != i; v12 += 64)
          {
            v14[0] = &unk_1EF2569E0;
            v14[1] = v1 + 24;
            v14[2] = v11;
            v14[3] = v14;
            OTL::Coverage::Iterate((v12 + 8), v14);
            this = std::__function::__value_func<BOOL ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100](v14);
          }
        }
      }
    }
  }

  return this;
}

_DWORD *OTL::CoverageBitmap::Reset(_DWORD *this, int a2, int a3)
{
  v3 = this;
  if (a2 == a3)
  {
    *this = 1;
    *(this + 2) = a2;
  }

  else
  {
    *(this + 2) = a2 & 0xFFC0;
    v4 = a3 - (a2 & 0xFFC0);
    v5 = v4 + 1;
    *this = v4 + 1;
    v6 = ((v4 + 64) >> 3) & 0x7FF8;
    if (v5 <= 0x10000)
    {
      v7 = v6;
    }

    else
    {
      v7 = 0x2000;
    }

    if (v7 > 0x20)
    {
      this = malloc_type_calloc(1uLL, v7, 0x100004077774924uLL);
      v3[1] = this;
    }

    else
    {
      v8 = *(this + 1);
      *v8 = 0u;
      v8[1] = 0u;
    }
  }

  return this;
}

BOOL OTL::Coverage::Iterate(void *a1, uint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  if (*a1)
  {
    v3 = bswap32(**a1) >> 16;
    if (v3 == 2)
    {
      v4 = v8;
      std::__function::__value_func<BOOL ()(unsigned short,unsigned short,unsigned short)>::__value_func[abi:fn200100](v8, a2);
      OTL::Coverage::IterateFmt2(a1, v8);
      goto LABEL_7;
    }

    if (v3 == 1)
    {
      v4 = v9;
      std::__function::__value_func<BOOL ()(unsigned short,unsigned short,unsigned short)>::__value_func[abi:fn200100](v9, a2);
      v5 = OTL::Coverage::IterateFmt1(a1, v9);
LABEL_7:
      v6 = v5;
      std::__function::__value_func<BOOL ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100](v4);
      return v6;
    }
  }

  return 0;
}

uint64_t std::__function::__value_func<BOOL ()(unsigned short,unsigned short,unsigned short)>::__value_func[abi:fn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<OTL::Lookup::InitCoverageUnion(void)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<OTL::Lookup::InitCoverageUnion(void)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,BOOL ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3, double a4, int8x16_t a5)
{
  v6 = *a2;
  v7 = *a3;
  HashFilterCombiner<IdentityHashFilter,MultiplicativeHashFilter>::AddRange(*(a1 + 8), v6, v7, a4, a5);
  if (v6 <= v7)
  {
    do
    {
      v8 = *(a1 + 16);
      *(*(v8 + 8) + ((v6 - *(v8 + 4)) >> 3)) |= 1 << ((v6 - *(v8 + 4)) & 7);
      ++v6;
    }

    while (v7 + 1 != v6);
  }

  return 1;
}

void OTL::Coverage::IterateFmt2(void *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = (*a1 + 4);
  v6 = __rev16(*(*a1 + 2));
  v7 = &v5[3 * v6];
  if (v7 < v5 || v7 > v4)
  {
    if (v3 + 10 > v4)
    {
      LODWORD(v9) = 0;
    }

    else
    {
      v9 = (v4 - v5) / 6;
    }

    v10 = bswap32(v9) >> 16;
    v11 = 6 * v9;
    if (!v10)
    {
      return;
    }
  }

  else
  {
    v11 = 6 * v6;
    if (!*(*a1 + 2))
    {
      return;
    }
  }

  v12 = v3 + v11 + 4;
  do
  {
    std::function<BOOL ()(unsigned short,unsigned short,unsigned short)>::operator()(a2, bswap32(*v5) >> 16, bswap32(v5[1]) >> 16, bswap32(v5[2]) >> 16);
    v5 += 3;
    if (v13)
    {
      v14 = v5 == v12;
    }

    else
    {
      v14 = 1;
    }
  }

  while (!v14);
}

uint64_t std::__function::__value_func<BOOL ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100](uint64_t a1)
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

uint64_t IsAnyLangSysTagInPreferredLanguages(_DWORD *a1, uint64_t a2)
{
  v4 = CFLocaleCopyPreferredLanguages();
  v5 = v4;
  if (v4 && (Count = CFArrayGetCount(v4)) != 0)
  {
    v7 = Count;
    v8 = 0;
    v9 = 4 * a2;
    v10 = &a1[a2];
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
      v12 = ScriptAndLangSysFromCanonicalLanguageInternal(ValueAtIndex) >> 32;
      if (v12)
      {
        v13 = a1;
        if (a1 != v10)
        {
          v14 = v9;
          v13 = a1;
          while (*v13 != v12)
          {
            ++v13;
            v14 -= 4;
            if (!v14)
            {
              goto LABEL_11;
            }
          }
        }

        if (v10 != v13)
        {
          break;
        }
      }

LABEL_11:
      if (++v8 == v7)
      {
        goto LABEL_12;
      }
    }

    v16 = 1;
  }

  else
  {
LABEL_12:
    v16 = 0;
  }

  return v16;
}

unsigned __int16 **OTL::Lookup::Lookup<OTL::GPOS>(unsigned __int16 **a1, void *a2, unsigned __int16 *a3)
{
  v4 = a2[5];
  *a1 = a3;
  a1[1] = v4;
  *(a1 + 8) = 0;
  *(a1 + 18) = 0;
  *(a1 + 38) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[6] = (a1 + 7);
  v5 = (a1 + 15);
  *(a1 + 13) = 0u;
  *(a1 + 11) = 0u;
  a1[47] = (a1 + 15);
  v6 = a3 + 3;
  if ((a3 + 3) <= v4)
  {
    LODWORD(v7) = bswap32(a3[2]) >> 16;
    v8 = &a3[v7 + 3] + ((a3[1] >> 11) & 2);
    if (v8 >= a3 && v8 <= v4)
    {
      v11 = &v6[v7];
      if (v11 < v6 || v11 > v4)
      {
        if ((a3 + 4) > v4)
        {
          return a1;
        }

        v7 = (v4 - v6) >> 1;
      }

      if (v7)
      {
        v13 = v7;
        std::vector<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul>>::reserve(a1 + 12, v7);
        v14 = **a1;
        v41 = __rev16(v14);
        v15 = 3;
        do
        {
          v16 = *a1 + (bswap32((*a1)[v15]) >> 16);
          if (v14 == 2304)
          {
            v17 = a1[1];
            if ((v16 + 8) > v17 || *v16 != 256)
            {
              return a1;
            }

            v18 = *(v16 + 1);
            if (v18 == 2304)
            {
              v16 = 0;
              v21 = 9;
            }

            else
            {
              v19 = __rev16(v18);
              v20 = &v16[bswap32(*(v16 + 1))];
              if ((v20 + 2) <= v17)
              {
                v16 = v20;
              }

              else
              {
                v16 = 0;
              }

              if ((v20 + 2) <= v17)
              {
                v21 = v19;
              }

              else
              {
                v21 = 9;
              }
            }
          }

          else
          {
            v21 = v41;
          }

          (*(*a2 + 16))(v42, a2);
          v44 = v42[0];
          v45 = v42[1];
          v46 = v42[2];
          v47 = v43;
          v22 = a1[13];
          v23 = a1[14];
          if (v22 >= v23)
          {
            v26 = a1[12];
            v27 = (v22 - v26) >> 6;
            v28 = v27 + 1;
            if ((v27 + 1) >> 58)
            {
              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            v29 = v23 - v26;
            if (v29 >> 5 > v28)
            {
              v28 = v29 >> 5;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFC0)
            {
              v30 = 0x3FFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            v48[4] = v5;
            if (v30)
            {
              v31 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul>>(v5, v30);
            }

            else
            {
              v31 = 0;
            }

            v32 = v31 + (v27 << 6);
            v33 = v45;
            *(v32 + 8) = v44;
            v34 = (v31 + (v30 << 6));
            *v32 = v16;
            *(v32 + 24) = v33;
            *(v32 + 40) = v46;
            *(v32 + 56) = v47;
            v25 = (v32 + 64);
            v35 = a1[12];
            v36 = a1[13] - v35;
            v37 = (v32 - v36);
            memcpy((v32 - v36), v35, v36);
            v38 = a1[12];
            a1[12] = v37;
            a1[13] = v25;
            v39 = a1[14];
            a1[14] = v34;
            v48[2] = v38;
            v48[3] = v39;
            v48[0] = v38;
            v48[1] = v38;
            std::__split_buffer<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul> &>::~__split_buffer(v48);
          }

          else
          {
            *v22 = v16;
            v24 = v45;
            *(v22 + 4) = v44;
            *(v22 + 12) = v24;
            *(v22 + 20) = v46;
            *(v22 + 7) = v47;
            v25 = v22 + 32;
          }

          a1[13] = v25;
          ++v15;
          --v13;
        }

        while (v13);
        *(a1 + 8) = v21;
      }
    }
  }

  return a1;
}

OTL::Coverage *OTL::GPOS::GetCoverageForSubtable@<X0>(OTL::LookupWithCoverage *this@<X3>, OTL::Coverage *result@<X0>, unint64_t a3@<X1>, int a4@<W2>, uint64_t a5@<X8>, double a6@<D0>, int8x16_t a7@<Q1>)
{
  if (a3 > this)
  {
    goto LABEL_19;
  }

  v7 = *(result + 5);
  if (this + 2 > v7)
  {
    goto LABEL_19;
  }

  if ((a4 - 1) < 6)
  {
    return OTL::LookupWithCoverage::GetCoverage(this, v7, a5, a6, a7);
  }

  if (a4 == 7)
  {
    v11 = bswap32(*this) >> 16;
    if (v11 - 1 < 2)
    {
      return OTL::LookupWithCoverage::GetCoverage(this, v7, a5, a6, a7);
    }

    if (v11 == 3 && this + 8 <= v7)
    {
      v10 = *(this + 3);
      return OTL::Coverage::Coverage(a5, (this + (bswap32(v10) >> 16)), v7, 0, a6, a7);
    }

LABEL_19:
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = OTL::Coverage::SearchUnknown;
    *(a5 + 24) = 0;
    *(a5 + 32) = 0xFFFF;
    *(a5 + 40) = 0;
    *(a5 + 48) = 0;
    return result;
  }

  if (a4 != 8)
  {
    goto LABEL_19;
  }

  v8 = bswap32(*this) >> 16;
  if (v8 - 1 < 2)
  {
    return OTL::LookupWithCoverage::GetCoverage(this, v7, a5, a6, a7);
  }

  if (v8 != 3)
  {
    goto LABEL_19;
  }

  if (this + 4 > v7)
  {
    goto LABEL_19;
  }

  v9 = this + 2 * (bswap32(*(this + 1)) >> 16) + 4;
  if (v9 + 2 < this || (v9 + 4) > v7)
  {
    goto LABEL_19;
  }

  v10 = *(v9 + 1);
  return OTL::Coverage::Coverage(a5, (this + (bswap32(v10) >> 16)), v7, 0, a6, a7);
}

double std::function<BOOL ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t a1, __int16 a2, __int16 a3, __int16 a4)
{
  v10 = a2;
  v9 = a3;
  v8 = a4;
  v4 = *(a1 + 24);
  if (v4)
  {
    (*(*v4 + 48))(v4, &v10, &v9, &v8);
  }

  else
  {
    v6 = std::__throw_bad_function_call[abi:fn200100]();
    *&result = std::__function::__func<OTL::Lookup::InitCoverageUnion(void)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<OTL::Lookup::InitCoverageUnion(void)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,BOOL ()(unsigned short,unsigned short,unsigned short)>::__clone(v6, v7).n128_u64[0];
  }

  return result;
}

__n128 std::__function::__func<OTL::Lookup::InitCoverageUnion(void)::{lambda(unsigned short,unsigned short,unsigned short)#1},std::allocator<OTL::Lookup::InitCoverageUnion(void)::{lambda(unsigned short,unsigned short,unsigned short)#1}>,BOOL ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF2569E0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

BOOL OTL::Coverage::IterateFmt1(void *a1, uint64_t a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a1 + 4);
  v5 = __rev16(*(*a1 + 2));
  v6 = &v4[v5];
  if (*a1 + 6 <= v2)
  {
    v7 = (v2 - v4) >> 1;
  }

  else
  {
    v7 = 0;
  }

  v8 = bswap32(v7) >> 16;
  v9 = v6 < v4 || v6 > v2;
  if (v9)
  {
    v10 = v7;
  }

  else
  {
    v10 = v5;
  }

  if (v9)
  {
    v11 = v8;
  }

  else
  {
    v11 = *(*a1 + 2);
  }

  if (!v11)
  {
    return 1;
  }

  if ((v10 & 0xFFFE) != 0)
  {
    v13 = v10;
  }

  else
  {
    v13 = 1;
  }

  v14 = bswap32(*v4) >> 16;
  std::function<BOOL ()(unsigned short,unsigned short,unsigned short)>::operator()(a2, v14, v14, 0);
  v16 = v15;
  result = 0;
  if (v16)
  {
    v18 = (v3 + 6);
    v19 = 1;
    do
    {
      v20 = v19;
      if (v13 == v19)
      {
        break;
      }

      v21 = *v18++;
      v22 = bswap32(v21) >> 16;
      std::function<BOOL ()(unsigned short,unsigned short,unsigned short)>::operator()(a2, v22, v22, v19);
      v19 = v20 + 1;
    }

    while ((v23 & 1) != 0);
    return v20 >= v10;
  }

  return result;
}

void GetShapingGlyphsAndLangSysListForFont(const __CFString *a1@<X0>, atomic_ullong *a2@<X1>, atomic_ullong *a3@<X8>)
{
  if (!a1)
  {
    goto LABEL_6;
  }

  *a3 = 0xAAAAAAAAAAAAAAAALL;
  GetPossiblyCompressedDataForAttribute(a1, @"CTFontShapingGlyphsAttribute", a3);
  if (!atomic_load_explicit(a3, memory_order_acquire))
  {

LABEL_6:
    *a3 = 0;
    return;
  }

  if (a2)
  {
    GetPossiblyCompressedDataForAttribute(a1, @"CTFontLangSysListAttribute", &v6);
  }
}

uint64_t TAATMorphTable::AddShapingGlyphs(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v45 = *MEMORY[0x1E69E9840];
  CommonTable = TBaseFont::GetCommonTable(*(a1 + 408), 1634561906, 0);
  if (!CommonTable)
  {
    return 0;
  }

  v7 = CommonTable;
  BytePtr = CFDataGetBytePtr(CommonTable);
  Length = CFDataGetLength(v7);
  if (Length <= 7)
  {
    std::function<void ()(void)>::operator()(a3);
    return 0;
  }

  v32 = a3;
  v10 = BytePtr + Length;
  memset(v43, 170, sizeof(v43));
  v11 = *(a1 + 12);
  *&v43[4] = a1;
  v12 = 1;
  LOBYTE(v43[6]) = 1;
  v40[0] = &unk_1EF257678;
  v40[1] = BytePtr;
  *&v43[14] = TAATLookupTable::BadTable;
  *&v43[16] = 0;
  *&v43[24] = 0;
  LOWORD(v43[26]) = -1;
  LOBYTE(v43[28]) = v11 & 1;
  *&v43[8] = &unk_1EF256A28;
  memset(&v43[38], 0, 24);
  v44 = &v43[44];
  v40[2] = v10;
  v41 = BytePtr + 2;
  v42 = BytePtr + 2;
  v13 = BytePtr[1];
  if (!v13)
  {
LABEL_29:
    v40[0] = &unk_1EF257678;
    v38 = &v43[38];
    std::vector<unsigned char const*,TInlineBufferAllocator<unsigned char const*,48ul>>::__destroy_vector::operator()[abi:fn200100](&v38);
    return v12;
  }

  v12 = 0;
  v14 = 0;
  v15 = bswap32(*BytePtr);
  v16 = bswap32(v13);
  v36 = *MEMORY[0x1E695E738];
  if (v16 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v16;
  }

  v33 = v17;
  v34 = v16;
  v37 = HIWORD(v15);
  while (1)
  {
    if ((TAATMorphChainMorx::NextChain(v40, v37) & 1) == 0)
    {
      std::function<void ()(void)>::operator()(v32);
      goto LABEL_29;
    }

    v35 = v12;
    v18 = TAATMorphChain::ResolveFlags(v40, v43[0], (a1 + 176), 0, v36);
    v19 = v41[3];
    if (v19)
    {
      break;
    }

LABEL_25:
    v12 = ++v14 >= v34;
    if (v14 == v33)
    {
      v12 = 1;
      goto LABEL_29;
    }
  }

  v20 = v18;
  v21 = 0;
  v22 = bswap32(v19);
  if (v22 <= 1)
  {
    v23 = 1;
  }

  else
  {
    v23 = v22;
  }

  while (((*(*&v43[8] + 16))(&v43[8]) & 1) != 0)
  {
    if ((v43[10] & v20) != 0)
    {
      if (v21 < (*&v43[40] - *&v43[38]) >> 3 && (v24 = *(*&v43[38] + 8 * v21)) != 0)
      {
        GlyphCount = TBaseFont::GetGlyphCount(*(a1 + 408));
        if (GlyphCount >= 1)
        {
          v26 = GlyphCount;
          for (i = 0; i != v26; ++i)
          {
            if ((*(v24 + (i >> 3)) >> (i & 7)))
            {
              std::function<void ()(unsigned short,unsigned short)>::operator()(a2, i, i);
            }
          }
        }
      }

      else
      {
        std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v39, a2);
        v28 = TAATMorphSubtableMorx::AddShapingGlyphs(&v43[8], v39);
        std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](v39);
        if ((v28 & 1) == 0)
        {
          break;
        }
      }
    }

    if (++v21 == v23)
    {
      goto LABEL_25;
    }
  }

  v29 = *(v32 + 24);
  if (v29)
  {
    (*(*v29 + 48))(v29);
    v12 = v35;
    goto LABEL_29;
  }

  v31 = std::__throw_bad_function_call[abi:fn200100]();
  return std::__function::__value_func<void ()(void)>::~__value_func[abi:fn200100](v31);
}

uint64_t std::__function::__value_func<void ()(void)>::~__value_func[abi:fn200100](uint64_t a1)
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

uint64_t std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](uint64_t a1)
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

uint64_t TOpenTypeMorph::AddShapingGlyphs(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  CommonTable = TBaseFont::GetCommonTable(*(a1 + 408), 1196643650, 0);
  v13 = CommonTable;
  if (CommonTable)
  {
    v3 = CommonTable;
    v4 = TBaseFont::GetCommonTable(*(a1 + 408), 1195656518, 0);
    v12 = 0xAAAAAAAAAAAAAAAALL;
    *&v5 = 0xAAAAAAAAAAAAAAAALL;
    *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v11[3] = v5;
    v11[4] = v5;
    v11[1] = v5;
    v11[2] = v5;
    v11[0] = v5;
    OTL::GDEF::GDEF(v11, v4);
    BytePtr = CFDataGetBytePtr(v3);
    v6 = CFDataGetBytePtr(v3);
    if (v6)
    {
      v7 = &v6[CFDataGetLength(v3)];
    }

    else
    {
      v7 = 0;
    }

    v9 = v7;
    operator new();
  }

  return 1;
}

uint64_t OTL::GCommon::IterateScriptTables(unsigned __int16 *a1, unint64_t a2, uint64_t a3)
{
  if ((a1 + 5) > a2 || bswap32(*a1) >> 16 > 1)
  {
    return 0;
  }

  if (a1[1] && (a1 + 7) > a2)
  {
    return 0;
  }

  if (!a1[2])
  {
    return 0;
  }

  v5 = __rev16(a1[2]);
  v6 = (a1 + v5);
  v7 = a1 + v5 + 2;
  if (v7 > a2)
  {
    return 0;
  }

  v11 = __rev16(*v6);
  v12 = v7 + 6 * v11;
  if (v12 >= v7 && v12 <= a2)
  {
    goto LABEL_31;
  }

  v14 = (a2 - v7) / 6;
  if ((v6 + 4) > a2)
  {
    v14 = 0;
  }

  if (v14 != v11)
  {
    return 0;
  }

LABEL_31:
  if (!*v6)
  {
    return 1;
  }

  if (v11 <= 1)
  {
    v11 = 1;
  }

  else
  {
    v11 = v11;
  }

  v15 = v11 - 1;
  v16 = (a1 + v5 + 6);
  do
  {
    v17 = v6 + (bswap32(*v16) >> 16);
    v8 = v17 + 4 <= a2;
    if (v17 + 4 > a2)
    {
      break;
    }

    v18 = v15;
    if ((std::function<BOOL ()(unsigned int,OTL::ScriptTable const*,BOOL &)>::operator()(a3, bswap32(*(v16 - 1)), v17) & 1) == 0)
    {
      return 0;
    }

    v15 = v18 - 1;
    v16 += 3;
  }

  while (v18);
  return v8;
}

uint64_t std::function<BOOL ()(unsigned int,OTL::ScriptTable const*,BOOL &)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v7 = a2;
  v6 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v7, &v6);
  }

  v5 = std::__throw_bad_function_call[abi:fn200100]();
  return std::__function::__func<TOpenTypeMorph::AddShapingGlyphs(TFont const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()>,std::function<void ()(void)>)::$_0,std::allocator<TOpenTypeMorph::AddShapingGlyphs(TFont const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()>,std::function<void ()(void)>)::$_0>,BOOL ()(unsigned int,OTL::ScriptTable const*,BOOL &)>::operator()(v5);
}

uint64_t std::__function::__func<TOpenTypeMorph::AddShapingGlyphs(TFont const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(unsigned int)>,std::function<void ()(void)>)::$_0::operator() const(unsigned int,OTL::ScriptTable const*,BOOL &)::{lambda(unsigned int,OTL::LangSysTable const*,BOOL &)#1},std::allocator<TOpenTypeMorph::AddShapingGlyphs(TFont const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(unsigned int)>,std::function<void ()(void)>)::$_0::operator() const(unsigned int,OTL::ScriptTable const*,BOOL &)::{lambda(unsigned int,OTL::LangSysTable const*,BOOL &)#1}>,BOOL ()(unsigned int,OTL::LangSysTable const*,BOOL &)>::operator()(uint64_t a1, unsigned int *a2)
{
  v58 = *MEMORY[0x1E69E9840];
  v3 = *a2;
  v34 = 0xAAAAAAAAAAAAAAAALL;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v32[3] = v4;
  v33 = v4;
  v32[1] = v4;
  v32[2] = v4;
  v32[0] = v4;
  OTL::GCommon::GCommon(v32, 0, *(a1 + 16), **(a1 + 24), *(a1 + 32), *(a1 + 8), v3);
  *&v32[0] = &unk_1EF258990;
  if (HIDWORD(v33) && HIDWORD(v33) != *(a1 + 8))
  {
    return 1;
  }

  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v56 = v6;
  v57 = v6;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](&v56, *(a1 + 40));
  if (v3)
  {
    std::function<void ()>::operator()(*(a1 + 48), v3);
    std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](&v48, *(a1 + 56));
    v7 = *&v50[0];
    if (*&v50[0] == &v48)
    {
      if (*(&v57 + 1) == &v56)
      {
        memset(v52, 170, sizeof(v52));
        (*(**&v50[0] + 24))();
        (*(**&v50[0] + 32))(*&v50[0]);
        *&v50[0] = 0;
        (*(**(&v57 + 1) + 24))(*(&v57 + 1), &v48);
        (*(**(&v57 + 1) + 32))(*(&v57 + 1));
        *(&v57 + 1) = 0;
        *&v50[0] = &v48;
        (*(v52[0] + 3))(v52, &v56);
        (*(v52[0] + 4))(v52);
      }

      else
      {
        (*(**&v50[0] + 24))();
        (*(**&v50[0] + 32))(*&v50[0]);
        *&v50[0] = *(&v57 + 1);
      }

      *(&v57 + 1) = &v56;
    }

    else if (*(&v57 + 1) == &v56)
    {
      (*(**(&v57 + 1) + 24))(*(&v57 + 1), &v48);
      (*(**(&v57 + 1) + 32))(*(&v57 + 1));
      *(&v57 + 1) = *&v50[0];
      *&v50[0] = &v48;
    }

    else
    {
      *&v50[0] = *(&v57 + 1);
      *(&v57 + 1) = v7;
    }

    std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](&v48);
  }

  v8 = DWORD2(v33);
  if (SDWORD2(v33) > 1818324767)
  {
    if (DWORD2(v33) == 1818324768)
    {
      GetLaoClassTable();
      v9 = *(a1 + 16);
      std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v55, &v56);
      v10 = &GetLaoClassTable(void)::laoClassTable;
      goto LABEL_24;
    }

    if (DWORD2(v33) == 1952997737)
    {
      GetThaiClassTable();
      v9 = *(a1 + 16);
      std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v55, &v56);
      v10 = &GetThaiClassTable(void)::thaiClassTable;
      goto LABEL_24;
    }
  }

  else
  {
    if (DWORD2(v33) == 1751215719)
    {
      v12 = *(a1 + 16);
      std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v55, &v56);
      HangulShapingEngine::AddShapingGlyphs(v12, v55);
      goto LABEL_25;
    }

    if (DWORD2(v33) == 1802005874)
    {
      GetKhmerClassTable();
      v9 = *(a1 + 16);
      std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v55, &v56);
      v10 = &GetKhmerClassTable(void)::khmerClassTable;
LABEL_24:
      OpenTypeClassTable::AddShapingGlyphs(v10, v9, v55);
      goto LABEL_25;
    }
  }

  v11 = *(a1 + 16);
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v55, &v56);
  UniversalShapingEngine::AddShapingGlyphsForScript(v11, v8, v55);
LABEL_25:
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](v55);
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v53[8] = v13;
  v53[7] = v13;
  v53[6] = v13;
  v53[5] = v13;
  v53[4] = v13;
  v53[3] = v13;
  v53[2] = v13;
  v53[1] = v13;
  v53[0] = v13;
  memset(v52, 0, sizeof(v52));
  v54 = v53;
  OTL::GCommon::GetFeatures(v32, v52);
  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v50[14] = v14;
  v50[13] = v14;
  v50[12] = v14;
  v50[11] = v14;
  v50[10] = v14;
  v50[9] = v14;
  v50[8] = v14;
  v50[7] = v14;
  v50[6] = v14;
  v50[5] = v14;
  v50[4] = v14;
  v50[3] = v14;
  v50[2] = v14;
  v50[1] = v14;
  v50[0] = v14;
  v48 = 0;
  v49 = 0uLL;
  v51 = v50;
  v15 = v52[0];
  for (i = v52[1]; v15 != i; ++v15)
  {
    v17 = *v15;
    if (IsOTFeatureTurnedOnByShapingEngine(*v15))
    {
      v18 = v49;
      if (v49 >= *(&v49 + 1))
      {
        *&v39[16] = 0xAAAAAAAAAAAAAAAALL;
        *&v20 = 0xAAAAAAAAAAAAAAAALL;
        *(&v20 + 1) = 0xAAAAAAAAAAAAAAAALL;
        v38 = v20;
        *v39 = v20;
        v21 = (v49 - v48) >> 3;
        v22 = v21 + 1;
        if ((v21 + 1) >> 61)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        v23 = *(&v49 + 1) - v48;
        if ((*(&v49 + 1) - v48) >> 2 > v22)
        {
          v22 = v23 >> 2;
        }

        if (v23 >= 0x7FFFFFFFFFFFFFF8)
        {
          v24 = 0x1FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v24 = v22;
        }

        std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::__split_buffer(&v38, v24, v21, v50);
        v25 = *v39;
        **v39 = v17;
        *(v25 + 4) = 1;
        *v39 = v25 + 8;
        v26 = (*(&v38 + 1) - (v49 - v48));
        memcpy(v26, v48, v49 - v48);
        v27 = v48;
        v28 = *(&v49 + 1);
        v48 = v26;
        v31 = *v39;
        v49 = *v39;
        *v39 = v27;
        *&v39[8] = v28;
        *&v38 = v27;
        *(&v38 + 1) = v27;
        std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v38);
        v19 = v31;
      }

      else
      {
        *v49 = v17;
        *(v18 + 4) = 1;
        v19 = v18 + 8;
      }

      *&v49 = v19;
    }
  }

  ConvertSettingsToOTFeatures(v52, (*(a1 + 16) + 176), *(*(a1 + 16) + 12) & 1, &v48, 0, 0, 1);
  *&v29 = 0xAAAAAAAAAAAAAAAALL;
  *(&v29 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v45 = v29;
  v44 = v29;
  v43 = v29;
  v42 = v29;
  v41 = v29;
  v40 = v29;
  *&v39[8] = v29;
  v46 = 0xAAAAAAAAAAAAAAAALL;
  v47 = &v39[8];
  *v39 = 0;
  v38 = 0uLL;
  OTL::GCommon::GetLookups(v32, &v48, &v38, 1);
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v37, &v56);
  std::__function::__value_func<void ()(void)>::__value_func[abi:fn200100](v36, *(a1 + 64));
  v5 = OTL::GSUB::AddShapingGlyphs(v32, &v38, v37, v36);
  std::__function::__value_func<void ()(void)>::~__value_func[abi:fn200100](v36);
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](v37);
  v35 = &v38;
  std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v35);
  *&v38 = &v48;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v38);
  v48 = v52;
  std::vector<unsigned int,TInlineBufferAllocator<unsigned int,36ul>>::__destroy_vector::operator()[abi:fn200100](&v48);
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](&v56);
  return v5;
}

uint64_t std::function<BOOL ()(unsigned int,OTL::LangSysTable const*,BOOL &)>::operator()(uint64_t a1, int a2, uint64_t a3)
{
  v6 = a2;
  v5 = a3;
  if (a1)
  {
    return (*(*a1 + 48))(a1, &v6, &v5);
  }

  v4 = std::__throw_bad_function_call[abi:fn200100]();
  return OTL::GCommon::IterateLangSysTables(v4);
}

uint64_t OTL::GCommon::IterateLangSysTables(unint64_t a1, unsigned __int16 *a2, unint64_t a3, uint64_t a4)
{
  v8 = a2 + 2;
  if ((a2 + 2) < a1 || ((v9 = a2[1], v10 = __rev16(v9), v11 = &v8[3 * v10], v11 >= v8) ? (v12 = v11 > a3) : (v12 = 1), v12))
  {
    if (v8 < a1)
    {
      v10 = 0;
    }

    else
    {
      v13 = (a3 - v8) / 6;
      if ((a2 + 5) <= a3)
      {
        v10 = v13;
      }

      else
      {
        v10 = 0;
      }
    }

    v9 = bswap32(v10) >> 16;
  }

  if (!*a2)
  {
    if (!v9)
    {
      return std::function<BOOL ()(unsigned int,OTL::LangSysTable const*,BOOL &)>::operator()(*(a4 + 24), 0, 0);
    }

    goto LABEL_32;
  }

  v14 = a2 + __rev16(*a2);
  v15 = v14 + 6;
  if (v14 + 4 < a1 || v15 > a3)
  {
    return 0;
  }

  v17 = bswap32(*(v14 + 4)) >> 16;
  v18 = v15 + 2 * v17;
  v19 = v14 + 8 <= a3 ? (a3 - v15) >> 1 : 0;
  v20 = v18 <= a3 && v18 >= v15;
  v21 = v20 || v19 == v17;
  if (!v21 || (std::function<BOOL ()(unsigned int,OTL::LangSysTable const*,BOOL &)>::operator()(*(a4 + 24), 0, v14) & 1) == 0)
  {
    return 0;
  }

  result = 1;
  if (v9)
  {
LABEL_32:
    if ((v10 & 0xFFFE) != 0)
    {
      v23 = v10;
    }

    else
    {
      v23 = 1;
    }

    v24 = v23 - 1;
    v25 = a2 + 4;
    do
    {
      v26 = v24;
      if (*v25)
      {
        v27 = a2 + __rev16(*v25);
        v28 = v27 + 6;
        if (v27 + 4 < a1 || v28 > a3)
        {
          return 0;
        }

        v30 = bswap32(*(v27 + 4)) >> 16;
        v31 = v28 + 2 * v30;
        v32 = v27 + 8 <= a3 ? (a3 - v28) >> 1 : 0;
        v33 = v31 <= a3 && v31 >= v28;
        if (!v33 && v32 != v30)
        {
          return 0;
        }
      }

      else
      {
        v27 = 0;
      }

      if ((std::function<BOOL ()(unsigned int,OTL::LangSysTable const*,BOOL &)>::operator()(*(a4 + 24), bswap32(*(v25 - 1)), v27) & 1) == 0)
      {
        return 0;
      }

      result = 1;
      v24 = v26 - 1;
      v25 += 3;
    }

    while (v26);
  }

  return result;
}

uint64_t std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](uint64_t a1, uint64_t a2)
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

__n128 std::__function::__func<TFont::InitShapingGlyphs(void)::$_1,std::allocator<TFont::InitShapingGlyphs(void)::$_1>,void ()(unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF257AA0;
  result = *(a1 + 8);
  *(a2 + 8) = result;
  return result;
}

uint64_t UniversalShapingEngine::AddShapingGlyphsForScript(uint64_t result, int a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a2 != 1145457748)
  {
    v4 = result;
    std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v5, a3);
    UniversalClassTable::AddShapingGlyphsForScript(v4, a2, v5);
    return std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](v5);
  }

  return result;
}

uint64_t *IsOTFeatureTurnedOnByShapingEngine(unsigned int)::$_0::__invoke()
{
  v0 = kMasterFeatureMap;
  v1 = 1980;
  do
  {
    if (v0[2] == 14)
    {
      result = std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int const&>(&xmmword_1ED567ED0, v0);
    }

    v0 += 3;
    v1 -= 12;
  }

  while (v1);
  return result;
}

uint64_t OTL::GSUB::AddShapingGlyphs(void *a1, unsigned __int16 **a2, uint64_t a3, uint64_t a4)
{
  v19 = *MEMORY[0x1E69E9840];
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v18[0] = v8;
  v18[1] = v8;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v18, a3);
  v9 = *(a1[2] + 408);
  os_unfair_lock_lock_with_options();
  v10 = *a2;
  v11 = a2[1];
  while (1)
  {
    if (v10 == v11)
    {
      v14 = 1;
      goto LABEL_8;
    }

    v12 = TBaseFont::NthLookup<OTL::GSUB>(v9, a1, *v10);
    if (v12)
    {
      v13 = v12;
      std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v17, a3);
      std::__function::__value_func<void ()(void)>::__value_func[abi:fn200100](v16, a4);
      LODWORD(v13) = OTL::GSUB::AddShapingGlyphsForLookup(a1, v13, v17, v16);
      std::__function::__value_func<void ()(void)>::~__value_func[abi:fn200100](v16);
      std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](v17);
      if (!v13)
      {
        break;
      }
    }

    v10 += 2;
  }

  v14 = 0;
LABEL_8:
  os_unfair_lock_unlock(v9 + 89);
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](v18);
  return v14;
}

uint64_t std::__function::__value_func<void ()(void)>::__value_func[abi:fn200100](uint64_t a1, uint64_t a2)
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

uint64_t std::__function::__func<TFont::InitShapingGlyphs(void)::$_2,std::allocator<TFont::InitShapingGlyphs(void)::$_2>,void ()(void)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF257AE8;
  a2[1] = v2;
  return result;
}

const void **std::vector<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul>>::reserve(const void **result, unint64_t a2)
{
  if (a2 > (result[2] - *result) >> 6)
  {
    if (a2 >> 58)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v2 = result;
    v3 = result[1] - *result;
    v12[4] = result + 3;
    v4 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul>>((result + 3), a2);
    v5 = (v4 + v3);
    v7 = v4 + (v6 << 6);
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
    return std::__split_buffer<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul> &>::~__split_buffer(v12);
  }

  return result;
}

unsigned __int16 **OTL::Lookup::Lookup<OTL::GSUB>(unsigned __int16 **a1, void *a2, unsigned __int16 *a3)
{
  v4 = a2[5];
  *a1 = a3;
  a1[1] = v4;
  *(a1 + 8) = 0;
  *(a1 + 18) = 0;
  *(a1 + 38) = 0;
  a1[3] = 0;
  a1[4] = 0;
  a1[6] = (a1 + 7);
  v5 = (a1 + 15);
  *(a1 + 13) = 0u;
  *(a1 + 11) = 0u;
  a1[47] = (a1 + 15);
  v6 = a3 + 3;
  if ((a3 + 3) <= v4)
  {
    LODWORD(v7) = bswap32(a3[2]) >> 16;
    v8 = &a3[v7 + 3] + ((a3[1] >> 11) & 2);
    if (v8 >= a3 && v8 <= v4)
    {
      v11 = &v6[v7];
      if (v11 < v6 || v11 > v4)
      {
        if ((a3 + 4) > v4)
        {
          return a1;
        }

        v7 = (v4 - v6) >> 1;
      }

      if (v7)
      {
        v13 = v7;
        std::vector<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul>>::reserve(a1 + 12, v7);
        v14 = **a1;
        v41 = __rev16(v14);
        v15 = 3;
        do
        {
          v16 = *a1 + (bswap32((*a1)[v15]) >> 16);
          if (v14 == 1792)
          {
            v17 = a1[1];
            if ((v16 + 8) > v17 || *v16 != 256)
            {
              return a1;
            }

            v18 = *(v16 + 1);
            if (v18 == 1792)
            {
              v16 = 0;
              v21 = 7;
            }

            else
            {
              v19 = __rev16(v18);
              v20 = &v16[bswap32(*(v16 + 1))];
              if ((v20 + 2) <= v17)
              {
                v16 = v20;
              }

              else
              {
                v16 = 0;
              }

              if ((v20 + 2) <= v17)
              {
                v21 = v19;
              }

              else
              {
                v21 = 7;
              }
            }
          }

          else
          {
            v21 = v41;
          }

          (*(*a2 + 16))(v42, a2);
          v44 = v42[0];
          v45 = v42[1];
          v46 = v42[2];
          v47 = v43;
          v22 = a1[13];
          v23 = a1[14];
          if (v22 >= v23)
          {
            v26 = a1[12];
            v27 = (v22 - v26) >> 6;
            v28 = v27 + 1;
            if ((v27 + 1) >> 58)
            {
              std::__throw_bad_array_new_length[abi:fn200100]();
            }

            v29 = v23 - v26;
            if (v29 >> 5 > v28)
            {
              v28 = v29 >> 5;
            }

            if (v29 >= 0x7FFFFFFFFFFFFFC0)
            {
              v30 = 0x3FFFFFFFFFFFFFFLL;
            }

            else
            {
              v30 = v28;
            }

            v48[4] = v5;
            if (v30)
            {
              v31 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul>>(v5, v30);
            }

            else
            {
              v31 = 0;
            }

            v32 = v31 + (v27 << 6);
            v33 = v45;
            *(v32 + 8) = v44;
            v34 = (v31 + (v30 << 6));
            *v32 = v16;
            *(v32 + 24) = v33;
            *(v32 + 40) = v46;
            *(v32 + 56) = v47;
            v25 = (v32 + 64);
            v35 = a1[12];
            v36 = a1[13] - v35;
            v37 = (v32 - v36);
            memcpy((v32 - v36), v35, v36);
            v38 = a1[12];
            a1[12] = v37;
            a1[13] = v25;
            v39 = a1[14];
            a1[14] = v34;
            v48[2] = v38;
            v48[3] = v39;
            v48[0] = v38;
            v48[1] = v38;
            std::__split_buffer<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul> &>::~__split_buffer(v48);
          }

          else
          {
            *v22 = v16;
            v24 = v45;
            *(v22 + 4) = v44;
            *(v22 + 12) = v24;
            *(v22 + 20) = v46;
            *(v22 + 7) = v47;
            v25 = v22 + 32;
          }

          a1[13] = v25;
          ++v15;
          --v13;
        }

        while (v13);
        *(a1 + 8) = v21;
      }
    }
  }

  return a1;
}

uint64_t std::__split_buffer<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,TInlineBufferAllocator<std::pair<OTL::LookupSubtable const*,OTL::Coverage>,4ul> &>::~__split_buffer(uint64_t a1)
{
  v3 = *(a1 + 8);
  v2 = *(a1 + 16);
  if (v2 != v3)
  {
    *(a1 + 16) = v2 + ((v3 - v2 + 63) & 0xFFFFFFFFFFFFFFC0);
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

OTL::Coverage *OTL::GSUB::GetCoverageForSubtable@<X0>(OTL::LookupWithCoverage *this@<X3>, OTL::Coverage *result@<X0>, unint64_t a3@<X1>, int a4@<W2>, uint64_t a5@<X8>, double a6@<D0>, int8x16_t a7@<Q1>)
{
  if (a3 <= this)
  {
    v7 = *(result + 5);
    if (this + 2 <= v7)
    {
      if (a4 <= 4)
      {
        if ((a4 - 1) < 4)
        {
          return OTL::LookupWithCoverage::GetCoverage(this, v7, a5, a6, a7);
        }

        goto LABEL_23;
      }

      switch(a4)
      {
        case 5:
          v8 = bswap32(*this) >> 16;
          if (v8 - 1 < 2)
          {
            return OTL::LookupWithCoverage::GetCoverage(this, v7, a5, a6, a7);
          }

          if (v8 == 3 && this + 8 <= v7)
          {
            v10 = *(this + 3);
            return OTL::Coverage::Coverage(a5, (this + (bswap32(v10) >> 16)), v7, 0, a6, a7);
          }

          break;
        case 6:
          v11 = bswap32(*this) >> 16;
          if (v11 - 1 < 2)
          {
            return OTL::LookupWithCoverage::GetCoverage(this, v7, a5, a6, a7);
          }

          if (v11 == 3 && this + 4 <= v7)
          {
            v12 = this + 2 * (bswap32(*(this + 1)) >> 16) + 4;
            if (v12 + 2 >= this && (v12 + 4) <= v7)
            {
              v10 = *(v12 + 1);
              return OTL::Coverage::Coverage(a5, (this + (bswap32(v10) >> 16)), v7, 0, a6, a7);
            }
          }

          break;
        case 8:
          return OTL::LookupWithCoverage::GetCoverage(this, v7, a5, a6, a7);
        default:
          break;
      }
    }
  }

LABEL_23:
  *a5 = 0;
  *(a5 + 8) = 0;
  *(a5 + 16) = OTL::Coverage::SearchUnknown;
  *(a5 + 24) = 0;
  *(a5 + 32) = 0xFFFF;
  *(a5 + 40) = 0;
  *(a5 + 48) = 0;
  return result;
}

BOOL OTL::GSUB::AddShapingGlyphsForLookup(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v54[0] = v6;
  v54[1] = v6;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v54, a3);
  v53[0] = a2;
  v53[1] = a4;
  v53[2] = v54;
  v46 = ((*(a2 + 104) - *(a2 + 96)) >> 6);
  if (((*(a2 + 104) - *(a2 + 96)) >> 6))
  {
    v47 = a2;
    v7 = 0;
    v48 = 0;
    while (1)
    {
      v8 = *(v47 + 96);
      if (v7 >= (*(v47 + 104) - v8) >> 6)
      {
        v9 = 0;
      }

      else
      {
        v9 = *(v8 + (v7 << 6));
      }

      if (*(v47 + 16) == 4)
      {
        v10 = *(a1 + 40);
        v11 = v9 + 6;
        v51 = (v9 + 4);
        if ((v9 + 4) < *(a1 + 32) || v11 > v10)
        {
          goto LABEL_87;
        }

        v13 = __rev16(*(v9 + 4));
        v14 = v11 + 2 * v13;
        v50 = v9;
        v15 = v9 + 8 <= v10 ? (v10 - v11) >> 1 : 0;
        v16 = v14 <= v10 && v14 >= v11;
        v49 = v15;
        if (!v16 && v15 != v13)
        {
          goto LABEL_87;
        }

        if (*(v9 + 4))
        {
          for (i = 0; i != v13; ++i)
          {
            v19 = bswap32(*v51) >> 16;
            v20 = v11 + 2 * v19;
            if (v20 < v11 || v20 > v10)
            {
              if (v49 == v19 && i < v19)
              {
LABEL_36:
                v23 = (v50 + (bswap32(*(v11 + 2 * i)) >> 16));
                v24 = v23 + 1;
                if ((v23 + 1) <= v10)
                {
                  v25 = bswap32(*v23) >> 16;
                  v26 = &v24[v25];
                  v27 = (v23 + 2) <= v10 ? (v10 - v24) >> 1 : 0;
                  v28 = v26 <= v10 && v26 >= v24;
                  v29 = v28 || v27 == v25;
                  if (v29 && *v23 != 0)
                  {
                    v31 = 0;
                    do
                    {
                      v32 = bswap32(*v23) >> 16;
                      v33 = &v24[v32];
                      if (v33 < v24 || v33 > v10)
                      {
                        if (v27 != v32 || v31 >= v32)
                        {
                          break;
                        }
                      }

                      else if (v31 >= v32)
                      {
                        break;
                      }

                      v36 = v23 + (bswap32(v24[v31]) >> 16);
                      v37 = (v36 + 4);
                      if ((v36 + 4) > v10)
                      {
                        break;
                      }

                      v38 = bswap32(*(v36 + 1)) >> 16;
                      v39 = &v37[v38 - 1];
                      v40 = (v36 + 6) <= v10 ? (v10 - v37) >> 1 : 0;
                      v41 = v39 <= v10 && v39 >= v37;
                      if (!v41 && v40 != v38 - 1)
                      {
                        break;
                      }

                      if (v38)
                      {
                        if (v38 == 1)
                        {
                          if ((OTL::GSUB::AddShapingGlyphsForLookup(OTL::Lookup const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)const::$_1::operator()(v53, v7) & 1) == 0)
                          {
                            goto LABEL_87;
                          }
                        }

                        else
                        {
                          v43 = bswap32(*v37) >> 16;
                          std::function<void ()(unsigned short,unsigned short)>::operator()(a3, v43, v43);
                        }
                      }

                      ++v31;
                    }

                    while (v25 != v31);
                  }
                }
              }
            }

            else if (i < v19)
            {
              goto LABEL_36;
            }
          }
        }
      }

      else if (!OTL::GSUB::AddShapingGlyphsForLookup(OTL::Lookup const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)const::$_1::operator()(v53, v7))
      {
        goto LABEL_87;
      }

      v48 = ++v7 >= v46;
      if (v7 == v46)
      {
        goto LABEL_87;
      }
    }
  }

  v48 = 1;
LABEL_87:
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](v54);
  return v48;
}

uint64_t OTL::GSUB::AddShapingGlyphsForLookup(OTL::Lookup const&,std::function<void ()(unsigned short,unsigned short)>,std::function<void ()(void)>)const::$_1::operator()(uint64_t *a1, unsigned int a2)
{
  v4 = *MEMORY[0x1E69E9840];
  if (a2 < ((*(*a1 + 104) - *(*a1 + 96)) >> 6))
  {
    std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](v3, a1[2]);
    operator new();
  }

  std::function<void ()(void)>::operator()(a1[1]);
  return 0;
}

uint64_t OTL::Lookup::PopulateIgnoreSet(OTL::Lookup *this, const OTL::GDEF *a2)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v4 = operator new(0x2000uLL, MEMORY[0x1E69E5398]);
  v7 = v4;
  if (v4)
  {
    bzero(v4, 0x2000uLL);
  }

  result = *(this + 11);
  *(this + 11) = v7;
  if (result)
  {
    result = MEMORY[0x1865F22D0](result, 0x1000C401B2BBF36);
    v7 = *(this + 11);
  }

  if (v7)
  {
    v9 = *this;
    v10[0] = &unk_1EF258BD8;
    v10[1] = v7;
    v10[3] = v10;
    OTL::GDEF::IterateGlyphsIgnoredByLookupTable(a2, v9, v10, v5, v6);
    return std::__function::__value_func<void ()(unsigned short)>::~__value_func[abi:fn200100](v10);
  }

  return result;
}

void OTL::GDEF::IterateGlyphsWithClassMask(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[8] = *MEMORY[0x1E69E9840];
  std::__function::__value_func<void ()(unsigned short)>::__value_func[abi:fn200100](v3, a3);
  operator new();
}

uint64_t std::function<void ()(unsigned short,unsigned short)>::operator()(uint64_t a1, __int16 a2, __int16 a3)
{
  v8 = a2;
  v7 = a3;
  v3 = *(a1 + 24);
  if (v3)
  {
    return (*(*v3 + 48))(v3, &v8, &v7);
  }

  v5 = std::__throw_bad_function_call[abi:fn200100]();
  return std::__function::__func<OTL::GDEF::IterateGlyphsIgnoredByLookupTable(OTL::LookupTable const*,std::function<void ()(unsigned short)>)::{lambda(unsigned short)#1},std::allocator<OTL::GDEF::IterateGlyphsIgnoredByLookupTable(OTL::LookupTable const*,std::function<void ()(unsigned short)>)::{lambda(unsigned short)#1}>,void ()(unsigned short)>::__clone(v5, v6);
}

uint64_t std::__function::__func<OTL::GDEF::IterateGlyphsIgnoredByLookupTable(OTL::LookupTable const*,std::function<void ()(unsigned short)>)::{lambda(unsigned short)#1},std::allocator<OTL::GDEF::IterateGlyphsIgnoredByLookupTable(OTL::LookupTable const*,std::function<void ()(unsigned short)>)::{lambda(unsigned short)#1}>,void ()(unsigned short)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EF258A28;
  a2[1] = v2;
  return result;
}