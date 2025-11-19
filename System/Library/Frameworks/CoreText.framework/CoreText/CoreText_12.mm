unint64_t sub_1846722FC()
{
  result = qword_1EA869470;
  if (!qword_1EA869470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869470);
  }

  return result;
}

unint64_t sub_184672354()
{
  result = qword_1EA869478;
  if (!qword_1EA869478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869478);
  }

  return result;
}

unint64_t sub_1846723AC()
{
  result = qword_1EA869480;
  if (!qword_1EA869480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869480);
  }

  return result;
}

unint64_t sub_184672404()
{
  result = qword_1EA869488;
  if (!qword_1EA869488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869488);
  }

  return result;
}

unint64_t sub_18467245C()
{
  result = qword_1EA869490;
  if (!qword_1EA869490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869490);
  }

  return result;
}

unint64_t sub_1846724B4()
{
  result = qword_1EA869498;
  if (!qword_1EA869498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA869498);
  }

  return result;
}

unint64_t sub_18467250C()
{
  result = qword_1EA8694A0;
  if (!qword_1EA8694A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8694A0);
  }

  return result;
}

unint64_t sub_184672564()
{
  result = qword_1EA8694A8;
  if (!qword_1EA8694A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8694A8);
  }

  return result;
}

uint64_t sub_1846725B8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1952867692 && a2 == 0xE400000000000000;
  if (v3 || (sub_18473DD14() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7265746E6563 && a2 == 0xE600000000000000 || (sub_18473DD14() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7468676972 && a2 == 0xE500000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_18473DD14();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

unint64_t sub_1846726C8()
{
  result = qword_1EA8694B0;
  if (!qword_1EA8694B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8694B0);
  }

  return result;
}

unint64_t sub_18467271C()
{
  result = qword_1EA8694B8;
  if (!qword_1EA8694B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EA8694B8);
  }

  return result;
}

double GetLanguageAwareAdjustRatio(void)
{
  if (qword_1ED5677B0 != -1)
  {
    dispatch_once_f(&qword_1ED5677B0, 0, GetLanguageAwareAdjustRatio(void)::$_0::__invoke);
  }

  return *&qword_1ED5677A8;
}

uint64_t ___ZL39_GetLanguageAwareOutsetIndexForFontNamePK10__CFString_block_invoke(uint64_t a1, unsigned __int16 *a2, unsigned __int16 *a3)
{
  v3 = *a2;
  v4 = *(*(*(a1 + 32) + 8) + 24);
  if (v3 == v4)
  {
    v5 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v5 = &aApplecoloremoj_1[v3];
  }

  v6 = *a3;
  if (v6 == v4)
  {
    v7 = *(*(*(a1 + 40) + 8) + 24);
  }

  else
  {
    v7 = &aApplecoloremoj_1[v6];
  }

  return strcmp(v5, v7);
}

void *GetLanguageAwareAdjustRatio(void)::$_0::__invoke()
{
  qword_1ED5677A8 = 0x3FD51EB851EB851FLL;
  result = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
  if (result)
  {
    result = [result doubleValue];
    v2 = 1.0;
    if (v1 <= 1.0)
    {
      v2 = v1;
    }

    v3 = v1 < 0.0;
    v4 = 0.0;
    if (!v3)
    {
      v4 = v2;
    }

    qword_1ED5677A8 = *&v4;
  }

  return result;
}

__CFString *TCharStream::DebugDescription(TCharStream *this)
{
  v2.length = *(this + 2);
  v2.location = 0;
  return TCharStream::DebugDescriptionForRange(this, v2);
}

uint64_t ChineseCompositionRules::GetCharacterClass(UChar32 c, int a2, int a3)
{
  result = 8;
  if (c > 12288)
  {
    if ((c - 12289) <= 0x1E)
    {
      v5 = 1 << (c - 1);
      if ((v5 & 0x77F9FF80) != 0)
      {
        return result;
      }

      if ((v5 & 3) != 0)
      {
        goto LABEL_14;
      }
    }

    v6 = c - 1;
    if ((c - 65281) <= 0x3C)
    {
      if (((1 << v6) & 0x46000001) != 0)
      {
        v7 = a3 == 2 || a3 == 4;
        goto LABEL_31;
      }

      if (((1 << v6) & 0x1400000000000180) != 0)
      {
        return result;
      }

      if (((1 << v6) & 0x2800) != 0)
      {
LABEL_14:
        v7 = a3 == 4;
LABEL_31:
        if (v7)
        {
          return 7;
        }

        else
        {
          return 1;
        }
      }
    }

    if ((c - 65371) <= 5 && c != 65372)
    {
      return result;
    }

    goto LABEL_16;
  }

  if (c > 10628)
  {
    if ((c - 10629) < 2)
    {
      return result;
    }
  }

  else
  {
    switch(c)
    {
      case 40:
        return 5;
      case 41:
        return 6;
      case 8943:
        return result;
    }
  }

LABEL_16:
  if ((c - 33) > 0xD)
  {
    if ((c - 8208) < 0x18 || (c - 58) <= 0x26 && ((1 << (c - 58)) & 0x7E0000003FLL) != 0)
    {
      return result;
    }
  }

  else if (c != 37 && c != 43)
  {
    return result;
  }

  if (!a2)
  {
    a2 = 1 << u_charType(c);
  }

  if ((a2 & 0xC0180D0) != 0)
  {
    return 8;
  }

  if ((a2 & 0x1000) != 0)
  {
    return 2;
  }

  if (uscript_getScript() == 18)
  {
    return 8;
  }

  result = 8;
  if (c && c != 8203)
  {
    if (((u_getIntPropertyValue(c, UCHAR_EAST_ASIAN_WIDTH) - 3) & 0xFFFFFFFD) != 0)
    {
      return 4;
    }

    else
    {
      return 3;
    }
  }

  return result;
}

uint64_t ChineseCompositionRules::GetCharacterSpacing(int a1, int a2, UChar32 c, int a4, UChar32 a5, int a6, _DWORD *a7)
{
  CharacterClass = a4;
  if (a4 == 9)
  {
    CharacterClass = ChineseCompositionRules::GetCharacterClass(c, 0, a1);
  }

  v14 = ChineseCompositionRules::GetCharacterClass(a5, a6, a1);
  *a7 = v14;
  if ((a6 & 0x6000) != 0 || a5 == 10)
  {
    v16 = 1;
  }

  else
  {
    v16 = 8;
  }

  if (CharacterClass != 1)
  {
    v16 = CharacterClass;
  }

  if (a5)
  {
    v17 = v16;
  }

  else
  {
    v17 = CharacterClass;
  }

  if ((c - 48) > 9 || (v18 = 5, a5 != 26085) && a5 != 26376)
  {
    if ((a5 - 48) > 9 || (v18 = 5, c != 26085) && c != 26376)
    {
      if (a1 == 4 && v17 == 1)
      {
        v18 = 0;
        if (v14 == 4)
        {
          v19 = a2;
        }

        else
        {
          v19 = 0;
        }

        if (v14 == 1 || (v19 & 1) != 0)
        {
          return v18;
        }
      }

      else if (a2)
      {
        v18 = 0;
        if (v17 == 4 || v14 == 4)
        {
          return v18;
        }
      }

      return ChineseCompositionRules::GetCharacterSpacing(CTCompositionLanguage,BOOL,unsigned int,ChineseCompositionRules::CharacterClass,unsigned int,unsigned int,ChineseCompositionRules::CharacterClass*)::kTable[9 * v17 + v14];
    }
  }

  return v18;
}

uint64_t TCompositionEngine::AdjustSpacing(TCompositionEngine *this, TRunGlue *a2, const TCharStream *a3)
{
  v144 = *MEMORY[0x1E69E9840];
  if (CJKCompositionEngine::IsEnabled(void)::once != -1)
  {
    dispatch_once_f(&CJKCompositionEngine::IsEnabled(void)::once, 0, CJKCompositionEngine::IsEnabled(void)::$_0::__invoke);
  }

  if (gCJKCompositionRulesEnabled != 1)
  {
    v29 = *(this + 5);
    if (v29 == -1)
    {
      TRunGlue::ComputeEndIndex(this);
      v29 = *(this + 5);
    }

    v30 = *(this + 6);
    v120 = v29;
    *&v121 = v30;
    if (!v30)
    {
      return 0;
    }

    __b = *this;
    AttributesAtCharIndex = TLine::GetAttributesAtCharIndex(*this, v29);
    CompositionLanguage = TAttributes::GetCompositionLanguage(AttributesAtCharIndex, v32);
    LODWORD(v114[0]) = 9;
    memset(&v136[18], 0, 24);
    v135 = 0u;
    memset(v136, 0, 144);
    v34 = *(a2 + 2);
    v35 = v30 + v29;
    v134 = a2;
    v136[18] = v34;
    if (v30 < 1)
    {
      FullChar = 0;
      v37 = v29;
    }

    else
    {
      FullChar = TCharStreamIterator::GetFullChar(&v134, &v120, 0);
      LODWORD(v114[0]) = ChineseCompositionRules::GetCharacterClass(FullChar, 0, CompositionLanguage);
      v37 = v120;
    }

    v48 = AttributesAtCharIndex[50];
    v138 = v37 + 1;
    if (v37 + 1 >= v35)
    {
      v38 = 0;
LABEL_96:
      if (v35 > 1 && ChineseCompositionRules::GetCharacterSpacing(CompositionLanguage, v48, FullChar, v114[0], 0, 0, v114) == 10)
      {
        AddSpace(__b, a2, v29, -0.25, -1, 0.0);
        return 1;
      }

      return v38;
    }

    v38 = 0;
    while (1)
    {
      v49 = TCharStreamIterator::GetFullChar(&v134, &v138, 0);
      v50 = 1 << u_charType(v49);
      if (v49 == 8205 || (v50 & 0x10080) == 0)
      {
        break;
      }

      v51 = v138;
LABEL_93:
      v138 = v51 + 1;
      if (v51 + 1 >= v35)
      {
        goto LABEL_96;
      }
    }

    CharacterSpacing = ChineseCompositionRules::GetCharacterSpacing(CompositionLanguage, v48, FullChar, v114[0], v49, v50, v114);
    v51 = v138;
    if (CharacterSpacing > 6)
    {
      if (CharacterSpacing > 9)
      {
        switch(CharacterSpacing)
        {
          case 10:
            v53 = -0.25;
            goto LABEL_83;
          case 11:
            v53 = 0.0;
            break;
          case 12:
            v53 = -0.25;
            break;
          default:
            goto LABEL_92;
        }

        v54 = -0.25;
        goto LABEL_90;
      }

      if (CharacterSpacing != 7)
      {
        if (CharacterSpacing == 8)
        {
          v53 = 0.25;
        }

        else
        {
          v53 = 0.5;
        }

        goto LABEL_86;
      }

      v53 = 0.0;
      v54 = 0.5;
    }

    else
    {
      if (CharacterSpacing <= 3)
      {
        if (CharacterSpacing == 1)
        {
          v53 = 0.25;
          goto LABEL_83;
        }

        if (CharacterSpacing != 2)
        {
          if (CharacterSpacing == 3)
          {
            v53 = 0.125;
LABEL_83:
            v54 = 0.0;
            goto LABEL_90;
          }

LABEL_92:
          v29 = v51;
          FullChar = v49;
          goto LABEL_93;
        }

        v53 = 0.0;
LABEL_86:
        v54 = 0.25;
        goto LABEL_90;
      }

      if (CharacterSpacing != 4)
      {
        if (CharacterSpacing == 5)
        {
          v54 = 0.0;
          v55 = __b;
          v56 = a2;
          v57 = v29;
          v53 = 0.04;
LABEL_91:
          AddSpace(v55, v56, v57, v53, v138, v54);
          v38 = 1;
          goto LABEL_92;
        }

        v53 = 0.5;
        goto LABEL_83;
      }

      v53 = 0.0;
      v54 = 0.125;
    }

LABEL_90:
    v55 = __b;
    v56 = a2;
    v57 = v29;
    goto LABEL_91;
  }

  v4 = *(this + 5);
  if (v4 == -1)
  {
    TRunGlue::ComputeEndIndex(this);
    v4 = *(this + 5);
  }

  v5 = *(this + 6);
  v111[0] = v4;
  v111[1] = v5;
  if (!v5)
  {
    return 0;
  }

  v104 = this;
  if (!TRunGlue::length(this))
  {
    v28 = 0;
LABEL_54:
    v105 = *this;
    v39 = TLine::GetAttributesAtCharIndex(*this, v4);
    v41 = TAttributes::GetCompositionLanguage(v39, v40);
    v138 = v4;
    memset(&v136[18], 0, 24);
    v135 = 0u;
    memset(v136, 0, 144);
    v43 = *(a2 + 2);
    v134 = a2;
    v136[18] = v43;
    v107 = v28;
    if (v5 < 1)
    {
      v45 = 0;
      CharacterClass = 8;
      v47 = v4;
    }

    else
    {
      v44 = v41;
      v45 = TCharStreamIterator::GetFullChar(&v134, v111, 0);
      CharacterClass = CJKCompositionRules::GetCharacterClass(v45, 0, v44);
      v47 = v111[0];
    }

    v58 = 0;
    v102 = v5 + v4;
    v59 = v47 + 1;
    while (1)
    {
      v114[0] = v59;
      v60 = *(this + 18);
      v61 = v60[1];
      v62 = (v60[2] + v61);
      v63 = TAttributes::GetCompositionLanguage((v60 + 5), v42);
      v64 = v63;
      if (v59 < v61 || v63 < 2)
      {
        v138 = v62 - 1;
        v45 = TCharStreamIterator::GetFullChar(&v134, &v138, 0);
        goto LABEL_238;
      }

      if (v59 < v62)
      {
        break;
      }

LABEL_238:
      v100 = v59;
LABEL_239:
      v59 = v62;
      this = v104;
      if ((TRunGlue::NextRunRange(v104, 1) & 1) == 0)
      {
        LOBYTE(StringIndex) = -86;
        if (!v58 || v100 != v102)
        {
          return v107;
        }

        v38 = v107;
        if (CJKCompositionRules::ShouldGlyphImageRightFlush(v64, 0, v58, &StringIndex))
        {
          *&v121 = 0;
          v120 = 0;
          v38 = 1;
          *(&v121 + 1) = 0xAAAAAAAA00000001;
          CJKAddSpace(v105, a2, v138, -1, &v120, 1, StringIndex);
        }

        return v38;
      }
    }

    v66 = v138;
    v103 = &CJKCompositionRules::GetCharacterSpacing(CTCompositionLanguage,BOOL,unsigned int,CJKCompositionRules::CharacterClass,unsigned int,unsigned int,CJKCompositionRules::CharacterClass*)::kTable + 64 * v63 - 128;
    __ba = v62;
    while (1)
    {
      v58 = TCharStreamIterator::GetFullChar(&v134, v114, 0);
      v67 = 1 << u_charType(v58);
      if (v58 == 8205 || (v67 & 0x10080) == 0)
      {
        break;
      }

      v68 = v114[0];
LABEL_232:
      v100 = v68 + 1;
      v114[0] = v68 + 1;
      if (v68 + 1 >= v62)
      {
        v138 = v66;
        goto LABEL_239;
      }
    }

    *&v121 = 0;
    v120 = 0;
    *(&v121 + 1) = 0xAAAAAAAA00000000;
    if (CharacterClass == 8)
    {
      CharacterClass = CJKCompositionRules::GetCharacterClass(v45, 0, v64);
    }

    v69 = CJKCompositionRules::GetCharacterClass(v58, v67, v64);
    v70 = CharacterClass != 4 || CJKCompositionEngine::GetCharacterClass(v45, 0) != 7;
    v71 = CharacterClass & 0xFFFFFFFE;
    v73 = (CharacterClass & 0xFFFFFFFE) == 2 && v69 != 7;
    v74 = v69 & 6;
    v76 = CharacterClass == 4 && v74 == 2;
    v77 = v69 >= 2 || CharacterClass >= 2;
    v78 = (!v77 || v73 || v76) && (v64 != 4 || v71 != 2 || v69 != 4);
    v82 = v71 == 2 && v74 == 2;
    v83 = CharacterClass == 7 || v69 >= 2;
    BYTE8(v121) = v78;
    if (!v83 || v82 || ((v84 = 0, v74 != 2) ? (v85 = v69 == 4) : (v85 = 1), !v85 ? (v86 = 0) : (v86 = 1), CharacterClass == 4 && v86))
    {
      v84 = CharacterClass != 4 || v64 != 4 || v69 > 1;
    }

    BYTE9(v121) = v84;
    v90 = v71 == 2 && CJKCompositionEngine::GetCharacterClass(v45, 0) == 4 && v74 == 2;
    BYTE10(v121) = v90;
    v92 = v69 <= 1 && CJKCompositionEngine::GetCharacterClass(v58, 0) == 1 && CharacterClass < 2;
    BYTE11(v121) = v92;
    if ((v45 - 48) <= 9)
    {
      v93 = 0x3FA47AE147AE147BLL;
      if (v58 == 26085)
      {
        goto LABEL_229;
      }

      v93 = 0x3FA47AE147AE147BLL;
      if (v58 == 26376)
      {
        goto LABEL_229;
      }
    }

    if (v45 == 26376 || v45 == 26085)
    {
      v93 = 0x3FA47AE147AE147BLL;
      if ((v58 - 48) < 0xA)
      {
        goto LABEL_229;
      }
    }

    if (CharacterClass == 7 && v69 == 6)
    {
      if (v45 != 41)
      {
        CharacterClass = 7;
        v94 = 6;
        goto LABEL_214;
      }

      CharacterClass = 5;
    }

    else if (CharacterClass == 6 && v69 == 7)
    {
      if (v58 == 40)
      {
        v94 = 5;
      }

      else
      {
        v94 = 7;
      }

      CharacterClass = 6;
LABEL_211:
      if (v45 == 8217 && v94 == 5)
      {
        v78 = 0;
        BYTE8(v121) = 0;
        CharacterClass = 5;
      }

LABEL_214:
      if (v64 == 4)
      {
        if ((v45 & 0xFFFFFFFB) == 0x2018 && v69 <= 1)
        {
          BYTE9(v121) = 0;
          v70 = 1;
        }

        else
        {
          v70 = 1;
          if ((v58 & 0xFFFFFFFB) == 0x2019 && v71 == 2)
          {
            v78 = 0;
            BYTE8(v121) = 0;
          }
        }
      }

      v95 = (&CJKCompositionRules::GetCharacterSpacing(CTCompositionLanguage,BOOL,unsigned int,CJKCompositionRules::CharacterClass,unsigned int,unsigned int,CJKCompositionRules::CharacterClass*)::kSpacingValues + 16 * v103[8 * CharacterClass + v94]);
      v96 = *v95;
      v97 = v95[1];
      v120 = *v95;
      *&v121 = v97;
      v99 = v69 < 2 || v94 == 5;
      if (v70 || (v93 = 0x3FD999999999999ALL, !v99))
      {
        v101 = v96 != 0.0;
        if (v97 != 0.0)
        {
          v101 = 1;
        }

        if (!v101 && !v78)
        {
          v68 = v114[0];
          goto LABEL_231;
        }

LABEL_230:
        v68 = v114[0];
        CJKAddSpace(v105, a2, v66, v114[0], &v120, 0, 0);
        v107 = 1;
LABEL_231:
        v62 = __ba;
        v66 = v68;
        CharacterClass = v69;
        v45 = v58;
        goto LABEL_232;
      }

LABEL_229:
      v120 = v93;
      *&v121 = 0;
      goto LABEL_230;
    }

    if (v58 == 8216)
    {
      v94 = v69;
      if (CharacterClass == 5)
      {
        BYTE9(v121) = 0;
        v94 = 5;
        goto LABEL_214;
      }
    }

    else
    {
      v94 = v69;
    }

    goto LABEL_211;
  }

  v106 = v4;
  v133 = 0;
  v131 = 0u;
  v121 = 0u;
  v122 = 0u;
  v123 = 0u;
  v124 = 0u;
  v125 = 0u;
  v126 = 0u;
  v127 = 0u;
  v128 = 0u;
  v129 = 0u;
  v130 = 0u;
  v7 = *(a2 + 2);
  v120 = a2;
  *&v131 = v7;
  v132 = 0;
  while (1)
  {
    v8 = TAttributes::GetCompositionLanguage((*(this + 18) + 40), v6);
    if (v8 < 2)
    {
      goto LABEL_45;
    }

    v9 = v8;
    v10 = *(this + 62);
    CommonTable = TBaseFont::GetCommonTable(*(v10 + 408), 1196643650, 0);
    if (!CommonTable)
    {
      goto LABEL_45;
    }

    v142 = 0xAAAAAAAAAAAAAAAALL;
    *&v12 = 0xAAAAAAAAAAAAAAAALL;
    *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v141[5] = v12;
    v141[6] = v12;
    v141[3] = v12;
    v141[4] = v12;
    v141[1] = v12;
    v141[2] = v12;
    v141[0] = v12;
    v138 = 0;
    v139 = 0;
    v140 = 0;
    v143 = v141;
    v119 = 0xAAAAAAAAAAAAAAAALL;
    v117 = v12;
    v118 = v12;
    v115 = v12;
    v116 = v12;
    *v114 = v12;
    v134 = 0;
    *&v135 = 0;
    *(&v135 + 1) = &OTL::GDEF::kNullClassDefTable;
    v136[0] = &OTL::GDEF::kNullClassDefTable;
    v136[1] = &OTL::GDEF::kNullMarkGlyphSets;
    memset(&v136[2], 0, 48);
    OTL::GCommon::GCommon(v114, 0, v10, CommonTable, &v134, 0, 0);
    v114[0] = &unk_1EF258990;
    v137 = 0x484F504568776964;
    OTL::FeatureBuffer::FeatureBuffer(&v134, &v137, 2);
    SingleSubstLookups = OTL::GSUB::GetSingleSubstLookups(v114, &v134, &v138);
    StringIndex = &v134;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&StringIndex);
    if (SingleSubstLookups)
    {
      break;
    }

LABEL_44:
    v134 = &v138;
    std::vector<std::pair<unsigned short,unsigned short>,TInlineBufferAllocator<std::pair<unsigned short,unsigned short>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v134);
LABEL_45:
    if ((TRunGlue::NextRunRange(this, 1) & 1) == 0)
    {
      v28 = v133;
      v4 = v106;
      goto LABEL_54;
    }
  }

  v14 = v136;
  memset(v136, 170, 0xC30uLL);
  v134 = 0;
  v135 = 0uLL;
  v136[390] = v136;
  v15 = *(*(this + 18) + 208);
  if (v15 < 1)
  {
    StringIndex = v15 - 1;
    v113 = 0xAAAAAAAAAAAAAA00;
    result = OTL::GSUB::ApplyLookups(v114, this, *(this + 6), &v134, &v133, 0, &StringIndex);
    if (v113)
    {
      goto LABEL_246;
    }

    goto LABEL_43;
  }

  v16 = 0;
  v17 = 0;
  Advance = NAN;
  do
  {
    StringIndex = TRunGlue::GetStringIndex(this, v16);
    v19 = TCharStreamIterator::GetFullChar(&v120, &StringIndex, 0);
    if (v19 <= 65280)
    {
      if (((v19 - 12289) > 0x16 || ((1 << (v19 - 1)) & 0x79FF83) == 0) && ((v19 - 8216) > 5 || ((1 << (v19 - 24)) & 0x33) == 0))
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }

    if ((v19 - 65281) > 0x1E)
    {
LABEL_33:
      if (v19 != 65371 && v19 != 65373)
      {
        goto LABEL_23;
      }

      goto LABEL_17;
    }

    v25 = 1 << (v19 - 1);
    if ((v25 & 0x2980) == 0)
    {
      if ((v25 & 0x46000001) == 0)
      {
        goto LABEL_33;
      }

      if (v9 == 2)
      {
        goto LABEL_23;
      }
    }

LABEL_17:
    v20 = v138;
    v21 = v139;
    while (v20 != v21)
    {
      v22 = *v20++;
      v14 = v14 & 0xFFFFFFFF00000000 | v22;
      OTL::GlyphLookups::SetLookupInRange<false>(&v134, v14, v16, 1);
    }

    if (v16 + 1 == v15)
    {
      v23 = (*(*a2 + 40))(a2, StringIndex, 2);
      this = v104;
      if (v23 + v24 == *(*v104 + 80) + *(*v104 + 72))
      {
        Advance = TRunGlue::GetAdvance(v104, v16);
        v17 = 1;
      }
    }

    else
    {
      this = v104;
    }

LABEL_23:
    ++v16;
  }

  while (v16 != v15);
  StringIndex = *(*(this + 18) + 208) - 1;
  v113 = 0xAAAAAAAAAAAAAA00;
  if (v17)
  {
    v26 = CJKCompositionEngine::SubstituteGlyphsForCJKComposition(TRunGlue &,TCharStream const&)::$_0::__invoke;
  }

  else
  {
    v26 = 0;
  }

  result = OTL::GSUB::ApplyLookups(v114, this, *(this + 6), &v134, &v133, v26, &StringIndex);
  if ((v113 & 1) == 0)
  {
LABEL_43:
    StringIndex = &v134;
    std::vector<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,TInlineBufferAllocator<std::pair<std::pair<unsigned short,unsigned short>,TInlineVector<CFRange,4ul>>,30ul>>::__destroy_vector::operator()[abi:fn200100](&StringIndex);
    goto LABEL_44;
  }

  if (v17)
  {
    TStorageRange::SetOriginalFinalAdvanceWidth((*(this + 18) + 192), Advance);
    goto LABEL_43;
  }

LABEL_246:
  __break(1u);
  return result;
}

uint64_t CJKCompositionEngine::IsEnabled(CJKCompositionEngine *this)
{
  if (CJKCompositionEngine::IsEnabled(void)::once != -1)
  {
    dispatch_once_f(&CJKCompositionEngine::IsEnabled(void)::once, 0, CJKCompositionEngine::IsEnabled(void)::$_0::__invoke);
  }

  return gCJKCompositionRulesEnabled;
}

unint64_t AddSpace(unint64_t result, const TCharStream *a2, uint64_t a3, double a4, uint64_t a5, double a6)
{
  v11 = result;
  if ((*(result + 152) & 1) == 0)
  {
    if (a4 != 0.0)
    {
      v6 = 0xAAAAAAAAAAAAAAAALL;
      v49 = 0xAAAAAAAAAAAAAAAALL;
      v50 = 0xAAAAAAAAAAAAAAAALL;
      result = TLine::GetClusterRange(result, a2, a3, 2, &v49, 0, 0);
      v13 = v50 + v49;
      v14 = v50 + v49 - 1;
      v15 = *(v11 + 2);
      v16 = *(v11 + 3);
      if (v15 == v16)
      {
        v18 = *(v11 + 2);
      }

      else
      {
        v17 = 0;
        v18 = *(v11 + 2);
        v19 = v18;
        while (1)
        {
          v20 = *(*(*v19 + 40) + 208) + v17;
          if (v20 >= v13)
          {
            break;
          }

          v19 += 8;
          v18 += 8;
          v17 = v20;
          if (v19 == v16)
          {
            v6 = 0xAAAAAAAAAAAAAAAALL;
            v18 = *(v11 + 3);
            goto LABEL_28;
          }
        }

        v6 = v14 - v17;
      }

LABEL_28:
      v30 = v18 - v15;
      if (v16 - v15 <= (v18 - v15))
      {
        goto LABEL_65;
      }

      while (1)
      {
        result = *(*(v15 + v30) + 48);
        v31 = *(result + 216);
        v32 = *(result + 200);
        if (*(*(v31 + 16) + 2 * v32 + 2 * v6) != -1 && (*(*(v31 + 40) + 4 * v32 + 4 * v6) & 0x20) == 0)
        {
          break;
        }

        if (v49 >= v14 || v13 == 0x8000000000000000)
        {
          goto LABEL_43;
        }

        if (v15 == v16)
        {
          v33 = *(v11 + 2);
        }

        else
        {
          result = 0;
          v33 = *(v11 + 2);
          v34 = v33;
          while (1)
          {
            v35 = *(*(*v34 + 40) + 208) + result;
            if (v35 >= v14)
            {
              break;
            }

            v34 += 8;
            v33 += 8;
            result = v35;
            if (v34 == v16)
            {
              v33 = *(v11 + 3);
              goto LABEL_40;
            }
          }

          v6 = v14 - 1 - result;
        }

LABEL_40:
        v30 = v33 - v15;
        --v14;
        if (v16 - v15 <= v30)
        {
          goto LABEL_65;
        }
      }

      result = AddSpace(result, v6, a4, 0);
    }

LABEL_43:
    if (a6 == 0.0)
    {
      return result;
    }

    v6 = 0xAAAAAAAAAAAAAAAALL;
    v49 = 0xAAAAAAAAAAAAAAAALL;
    v50 = 0xAAAAAAAAAAAAAAAALL;
    result = TLine::GetClusterRange(v11, a2, a5, 2, &v49, 0, 0);
    v36 = *(v11 + 2);
    v37 = *(v11 + 3);
    if (v36 == v37)
    {
      v39 = *(v11 + 2);
    }

    else
    {
      v38 = 0;
      v39 = *(v11 + 2);
      v40 = v39;
      while (1)
      {
        v41 = *(*(*v40 + 40) + 208) + v38;
        if (v41 > v49)
        {
          break;
        }

        v40 += 8;
        v39 += 8;
        v38 = v41;
        if (v40 == v37)
        {
          v6 = 0xAAAAAAAAAAAAAAAALL;
          v39 = *(v11 + 3);
          goto LABEL_51;
        }
      }

      v6 = v49 - v38;
    }

LABEL_51:
    v42 = v39 - v36;
    if (v37 - v36 > (v39 - v36))
    {
      v43 = v49;
      do
      {
        result = *(*(v36 + v42) + 48);
        v44 = *(result + 216);
        v45 = *(result + 200);
        if (*(*(v44 + 16) + 2 * v45 + 2 * v6) != -1 && (*(*(v44 + 40) + 4 * v45 + 4 * v6) & 0x20) == 0)
        {
          return AddSpace(result, v6, a6, 1);
        }

        if (v49 == 0x7FFFFFFFFFFFFFFFLL)
        {
          return result;
        }

        if ((v50 + v49) <= ++v43)
        {
          return result;
        }

        if (v36 == v37)
        {
          v47 = *(v11 + 2);
        }

        else
        {
          v46 = 0;
          v47 = *(v11 + 2);
          v48 = v47;
          while (1)
          {
            result = *(*(*v48 + 40) + 208) + v46;
            if (result > v43)
            {
              break;
            }

            v48 += 8;
            v47 += 8;
            v46 = result;
            if (v48 == v37)
            {
              v47 = *(v11 + 3);
              goto LABEL_64;
            }
          }

          v6 = v43 - v46;
        }

LABEL_64:
        v42 = v47 - v36;
      }

      while (v37 - v36 > v42);
    }

LABEL_65:
    __break(1u);
    return AddSpace(result, v6, a6, 1);
  }

  result = TLine::FindRunWithCharIndex(result, a3, 1);
  v21 = *(v11 + 2);
  if (result >= (*(v11 + 3) - v21) >> 3)
  {
    goto LABEL_65;
  }

  v22 = *(*(v21 + 8 * result) + 48);
  if (a5 < 0)
  {
    v25 = 0;
    v24 = 0;
  }

  else
  {
    result = TLine::FindRunWithCharIndex(v11, a5, 1);
    v23 = *(v11 + 2);
    if (result >= (*(v11 + 3) - v23) >> 3)
    {
      goto LABEL_65;
    }

    v24 = *(*(v23 + 8 * result) + 48);
    v25 = v24 != 0;
    if (v24)
    {
      v26 = v22 == v24;
    }

    else
    {
      v26 = 1;
    }

    if (!v26)
    {
      if (*(v22 + 224) != *(v24 + 224))
      {
        return result;
      }

      v25 = 1;
    }
  }

  if (a4 != 0.0)
  {
    GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(v22, a3);
    result = AddSpace(v22, GlyphIndexForChar, a4, 0);
  }

  v28 = !v25;
  if (a6 == 0.0)
  {
    v28 = 1;
  }

  if ((v28 & 1) == 0)
  {
    v29 = TRun::GetGlyphIndexForCharIndex<false>(v24, a5);

    return AddSpace(v24, v29, a6, 1);
  }

  return result;
}

BOOL CJKCompositionEngine::IsEnabled(unsigned int a1, uint64_t a2)
{
  if (a1 < 2)
  {
    return 0;
  }

  if ((*(a2 + 138) & 0x1000) != 0)
  {
    return 0;
  }

  v2 = *(a2 + 120);
  if (v2)
  {
    if (*(v2 + 8))
    {
      return 0;
    }
  }

  if (CJKCompositionEngine::IsEnabled(void)::once != -1)
  {
    dispatch_once_f(&CJKCompositionEngine::IsEnabled(void)::once, 0, CJKCompositionEngine::IsEnabled(void)::$_0::__invoke);
  }

  return (gCJKCompositionRulesEnabled & 1) != 0;
}

void GetOpticalBoundsAdjustment(int a1, atomic_ullong *this, CFRange a3)
{
  atomic_load_explicit(this + 7, memory_order_acquire);
  v8 = 0;
  v9 = 0.0;
  a3.length = 1;
  ImageBounds = TRun::GetImageBounds(this, 0, a3, &v9, &v8);
  if (a1)
  {
    CGRectGetMaxX(*&ImageBounds);
  }

  else
  {
    CGRectGetMinX(*&ImageBounds);
  }
}

uint64_t CJKCompositionEngine::ShouldIgnoreCurlyQuotes(CJKCompositionEngine *this)
{
  v21 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  if (dword_1ED5677C4 != TGenerationSeed::sGeneration)
  {
    dword_1ED5677C4 = TGenerationSeed::sGeneration;
    v14 = 0xAAAAAAAAAAAAAAAALL;
    CopyPreferredLanguage(&v14);
    if (atomic_load_explicit(&v14, memory_order_acquire))
    {
      *&v1 = 0xAAAAAAAAAAAAAAAALL;
      *(&v1 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v19[0] = v1;
      v19[1] = v1;
      v17 = 0;
      v18 = 0;
      v16 = 0;
      v20 = v19;
      explicit = atomic_load_explicit(&v14, memory_order_acquire);
      if (CFStringGetCStringPtr(explicit, 0x600u))
      {
        goto LABEL_11;
      }

      Length = CFStringGetLength(explicit);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x600u);
      v5 = MaximumSizeForEncoding + 1;
      v6 = v16;
      if (MaximumSizeForEncoding + 1 <= (v17 - v16))
      {
        if (MaximumSizeForEncoding + 1 < (v17 - v16))
        {
          v17 = &v16[v5];
        }
      }

      else
      {
        std::vector<char,TInlineBufferAllocator<char,30ul>>::__append(&v16, MaximumSizeForEncoding + 1 - (v17 - v16));
        v6 = v16;
      }

      CString = CFStringGetCString(explicit, v6, v5, 0x600u);
      v7 = 0;
      if (CString)
      {
        if (v16)
        {
LABEL_11:
          ulocdata_open();
          v9 = 0;
          v15[3] = 0x200000000;
          while (1)
          {
            memset(v15, 170, 20);
            Delimiter = ulocdata_getDelimiter();
            if (Delimiter >= 1)
            {
              break;
            }

LABEL_14:
            v9 += 4;
            if (v9 == 8)
            {
              v7 = 0;
              goto LABEL_22;
            }
          }

          v11 = 0;
          while ((*(v15 + v11) | 4) != 0x201D)
          {
            v11 += 2;
            if (2 * Delimiter == v11)
            {
              goto LABEL_14;
            }
          }

          v7 = 1;
LABEL_22:
          ulocdata_close();
        }
      }

      v15[0] = &v16;
      std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](v15);
    }

    else
    {
      v7 = 0;
    }

    _MergedGlobals_4 = v7;
  }

  v12 = _MergedGlobals_4;
  os_unfair_lock_unlock(algn_1ED5677C8);
  return v12;
}

uint64_t CJKCompositionEngine::GetCharacterClass(UChar32 c, int a2)
{
  result = 0;
  if (c > 65280)
  {
    if (c > 65305)
    {
      if (c > 65370)
      {
        if (c == 65373)
        {
          return 4;
        }

        if (c == 65371)
        {
          return 1;
        }

        goto LABEL_32;
      }

      if ((c - 65306) >= 2 && c != 65311)
      {
        goto LABEL_32;
      }
    }

    else
    {
      if (c > 65288)
      {
        switch(c)
        {
          case 65289:
            return 3;
          case 65292:
            return 7;
          case 65294:
            return 8;
        }

        goto LABEL_32;
      }

      if (c != 65281)
      {
        if (c == 65288)
        {
          return result;
        }

LABEL_32:
        if ((c - 33) > 0xD)
        {
          if ((c - 8208) < 0x18 || (c - 58) <= 0x26 && ((1 << (c - 58)) & 0x7E0000003FLL) != 0)
          {
            return 13;
          }
        }

        else if (c != 37 && c != 43)
        {
          return 13;
        }

        if (!a2)
        {
          a2 = 1 << u_charType(c);
        }

        if ((a2 & 0xC0180D0) == 0)
        {
          if ((a2 & 0x1000) != 0)
          {
            return 12;
          }

          if (uscript_getScript() != 18)
          {
            if (((u_getIntPropertyValue(c, UCHAR_EAST_ASIAN_WIDTH) - 3) & 0xFFFFFFFD) != 0)
            {
              return 11;
            }

            else
            {
              return 14;
            }
          }
        }

        return 13;
      }
    }

    return 9;
  }

  switch(c)
  {
    case 12289:
      return 7;
    case 12290:
      return 6;
    case 12291:
    case 12292:
    case 12293:
    case 12294:
    case 12295:
    case 12306:
    case 12307:
      goto LABEL_32;
    case 12296:
    case 12298:
      return 1;
    case 12297:
    case 12299:
      return 4;
    case 12300:
    case 12302:
    case 12304:
    case 12308:
    case 12310:
      return result;
    case 12301:
    case 12303:
    case 12305:
    case 12309:
    case 12311:
      return 3;
    default:
      v4 = c - 20;
      if ((c - 8212) > 0x12)
      {
        goto LABEL_32;
      }

      if (((1 << v4) & 0x60001) != 0)
      {
        return 13;
      }

      if (((1 << v4) & 0x110) != 0)
      {
        v5 = CJKCompositionEngine::ShouldIgnoreCurlyQuotes(0) == 0;
        v6 = 2;
      }

      else
      {
        if (((1 << v4) & 0x220) == 0)
        {
          goto LABEL_32;
        }

        v5 = CJKCompositionEngine::ShouldIgnoreCurlyQuotes(0) == 0;
        v6 = 5;
      }

      if (v5)
      {
        result = v6;
      }

      else
      {
        result = 13;
      }

      break;
  }

  return result;
}

uint64_t CJKCompositionRules::GetCharacterClass(UChar32 a1, int a2, int a3)
{
  if ((a2 & 0xC0180D0) != 0)
  {
    return 7;
  }

  CharacterClass = CJKCompositionEngine::GetCharacterClass(a1, a2);
  if (CharacterClass > 6)
  {
    if (CharacterClass > 10)
    {
      if (CharacterClass == 11)
      {
        return 5;
      }

      if (CharacterClass == 12 || CharacterClass == 13)
      {
        return 7;
      }

      return 6;
    }

    if (CharacterClass == 7)
    {
      return 4;
    }

    if (CharacterClass == 8)
    {
      v6 = a3 == 2;
      v7 = 7;
      v8 = 4;
LABEL_30:
      if (v6)
      {
        return v8;
      }

      else
      {
        return v7;
      }
    }

    if (CharacterClass != 9)
    {
      return 6;
    }

    v6 = a3 == 2;
    v7 = 4;
LABEL_27:
    v8 = 7;
    goto LABEL_30;
  }

  if (CharacterClass > 3)
  {
    if (CharacterClass == 4)
    {
      return 2;
    }

    if (CharacterClass != 5)
    {
      return 4;
    }

    v6 = a3 == 4;
    v7 = 3;
    goto LABEL_27;
  }

  if (CharacterClass < 2)
  {
    return 0;
  }

  if (CharacterClass != 2)
  {
    if (CharacterClass != 3)
    {
      return 6;
    }

    return 2;
  }

  if (a3 == 4)
  {
    return 7;
  }

  else
  {
    return 1;
  }
}

unint64_t CJKAddSpace(unint64_t result, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6, CFIndex a7)
{
  v11 = result;
  if ((*(result + 152) & 1) == 0)
  {
    v7 = a7;
    if (*a5 != 0.0 || (*(a5 + 16) & 1) != 0 || *(a5 + 18) == 1)
    {
      v14 = 0xAAAAAAAAAAAAAAAALL;
      v55 = 0xAAAAAAAAAAAAAAAALL;
      v56 = 0xAAAAAAAAAAAAAAAALL;
      result = TLine::GetClusterRange(result, a2, a3, 2, &v55, 0, 0);
      v15 = v56 + v55;
      v16 = v56 + v55 - 1;
      v17 = *(v11 + 2);
      v18 = *(v11 + 3);
      if (v17 == v18)
      {
        v20 = *(v11 + 2);
      }

      else
      {
        v19 = 0;
        v20 = *(v11 + 2);
        v21 = v20;
        while (1)
        {
          v22 = *(*(*v21 + 40) + 208) + v19;
          if (v22 >= v15)
          {
            break;
          }

          v21 += 8;
          v20 += 8;
          v19 = v22;
          if (v21 == v18)
          {
            v14 = 0xAAAAAAAAAAAAAAAALL;
            v20 = *(v11 + 3);
            goto LABEL_30;
          }
        }

        v14 = v16 - v19;
      }

LABEL_30:
      v34 = v20 - v17;
      if (v18 - v17 <= (v20 - v17))
      {
        goto LABEL_71;
      }

      while (1)
      {
        result = *(*(v17 + v34) + 48);
        v35 = *(result + 216);
        v36 = *(result + 200);
        if (*(*(v35 + 16) + 2 * v36 + 2 * v14) != -1 && (*(*(v35 + 40) + 4 * v36 + 4 * v14) & 0x20) == 0)
        {
          break;
        }

        if (v55 >= v16 || v15 == 0x8000000000000000)
        {
          goto LABEL_47;
        }

        if (v17 == v18)
        {
          v37 = *(v11 + 2);
        }

        else
        {
          result = 0;
          v37 = *(v11 + 2);
          v38 = v37;
          while (1)
          {
            v39 = *(*(*v38 + 40) + 208) + result;
            if (v39 >= v16)
            {
              break;
            }

            v38 += 8;
            v37 += 8;
            result = v39;
            if (v38 == v18)
            {
              v37 = *(v11 + 3);
              goto LABEL_42;
            }
          }

          v14 = v16 - 1 - result;
        }

LABEL_42:
        v34 = v37 - v17;
        --v16;
        if (v18 - v17 <= v34)
        {
          goto LABEL_71;
        }
      }

      v40 = -0.0416666667;
      if (!*(a5 + 18))
      {
        v40 = 0.0;
      }

      v59.location = 0;
      v59.length = *(a5 + 16);
      result = CJKAddSpace(result, v14, *a5, v59, v40, a6, v7);
    }

LABEL_47:
    if (*(a5 + 8) == 0.0 && (*(a5 + 17) & 1) == 0 && *(a5 + 19) != 1)
    {
      return result;
    }

    v7 = 0xAAAAAAAAAAAAAAAALL;
    v55 = 0xAAAAAAAAAAAAAAAALL;
    v56 = 0xAAAAAAAAAAAAAAAALL;
    result = TLine::GetClusterRange(v11, a2, a4, 2, &v55, 0, 0);
    v41 = *(v11 + 2);
    v42 = *(v11 + 3);
    if (v41 == v42)
    {
      v44 = *(v11 + 2);
    }

    else
    {
      v43 = 0;
      v44 = *(v11 + 2);
      v45 = v44;
      while (1)
      {
        v46 = *(*(*v45 + 40) + 208) + v43;
        if (v46 > v55)
        {
          break;
        }

        v45 += 8;
        v44 += 8;
        v43 = v46;
        if (v45 == v42)
        {
          v7 = 0xAAAAAAAAAAAAAAAALL;
          v44 = *(v11 + 3);
          goto LABEL_57;
        }
      }

      v7 = v55 - v43;
    }

LABEL_57:
    v47 = v44 - v41;
    if (v42 - v41 > (v44 - v41))
    {
      v48 = v55;
      do
      {
        result = *(*(v41 + v47) + 48);
        v49 = *(result + 216);
        v50 = *(result + 200);
        if (*(*(v49 + 16) + 2 * v50 + 2 * v7) != -1 && (*(*(v49 + 40) + 4 * v50 + 4 * v7) & 0x20) == 0)
        {
          goto LABEL_72;
        }

        if (v55 == 0x7FFFFFFFFFFFFFFFLL)
        {
          return result;
        }

        if ((v56 + v55) <= ++v48)
        {
          return result;
        }

        if (v41 == v42)
        {
          v52 = *(v11 + 2);
        }

        else
        {
          v51 = 0;
          v52 = *(v11 + 2);
          v53 = v52;
          while (1)
          {
            result = *(*(*v53 + 40) + 208) + v51;
            if (result > v48)
            {
              break;
            }

            v53 += 8;
            v52 += 8;
            v51 = result;
            if (v53 == v42)
            {
              v52 = *(v11 + 3);
              goto LABEL_70;
            }
          }

          v7 = v48 - v51;
        }

LABEL_70:
        v47 = v52 - v41;
      }

      while (v42 - v41 > v47);
    }

LABEL_71:
    __break(1u);
LABEL_72:
    v54 = -0.0416666667;
    if (!*(a5 + 19))
    {
      v54 = 0.0;
    }

    v60.location = 1;
    v60.length = *(a5 + 17);
    return CJKAddSpace(result, v7, *(a5 + 8), v60, v54, 0, 0);
  }

  result = TLine::FindRunWithCharIndex(result, a3, 1);
  v23 = *(v11 + 2);
  if (result >= (*(v11 + 3) - v23) >> 3)
  {
    goto LABEL_71;
  }

  v24 = *(*(v23 + 8 * result) + 48);
  if (a4 < 0)
  {
    v27 = 0;
    v26 = 0;
  }

  else
  {
    result = TLine::FindRunWithCharIndex(v11, a4, 1);
    v25 = *(v11 + 2);
    if (result >= (*(v11 + 3) - v25) >> 3)
    {
      goto LABEL_71;
    }

    v26 = *(*(v25 + 8 * result) + 48);
    v27 = v26 != 0;
    if (v26)
    {
      v28 = v24 == v26;
    }

    else
    {
      v28 = 1;
    }

    if (!v28)
    {
      if (*(v24 + 224) != *(v26 + 224))
      {
        return result;
      }

      v27 = 1;
    }
  }

  if (*a5 != 0.0)
  {
    GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(v24, a3);
    v58.location = 0;
    v58.length = 0;
    result = CJKAddSpace(v24, GlyphIndexForChar, *a5, v58, 0.0, 0, 0);
  }

  v30 = !v27;
  if (*(a5 + 8) == 0.0)
  {
    v30 = 1;
  }

  if ((v30 & 1) == 0)
  {
    v31 = TRun::GetGlyphIndexForCharIndex<false>(v26, a4);
    v32 = *(a5 + 8);
    v33.location = 1;
    v33.length = 0;

    return CJKAddSpace(v26, v31, v32, v33, 0.0, 0, 0);
  }

  return result;
}

BOOL CJKCompositionRules::ShouldGlyphImageRightFlush(int a1, uint64_t a2, UChar32 a3, BOOL *a4)
{
  CharacterClass = CJKCompositionRules::GetCharacterClass(a3, 0, a1);
  v7 = CharacterClass;
  if (a4)
  {
    v8 = CharacterClass == 2 && CJKCompositionEngine::GetCharacterClass(a3, 0) == 4;
    *a4 = v8;
  }

  return v7 == 2 || v7 == 4;
}

uint64_t TRunGlue::GetStringIndex(TRunGlue *this, int64_t a2)
{
  if (*(this + 18))
  {
    TRunGlue::FocusOnIndex(this, a2);
    v4 = *(this + 52) + 8 * (a2 - *(this + 19));
    return *v4;
  }

  v5 = *(this + 52);
  if (v5)
  {
    v4 = v5 + 8 * *(this + 19) + 8 * a2;
    return *v4;
  }

  return -1;
}

BOOL CJKCompositionRules::ShouldGlyphImageLeftFlush(int a1, uint64_t a2, UChar32 a3, BOOL *a4)
{
  CharacterClass = CJKCompositionRules::GetCharacterClass(a3, 0, a1);
  v7 = CharacterClass;
  if (a4)
  {
    if (CharacterClass)
    {
      v8 = 0;
    }

    else
    {
      v8 = CJKCompositionEngine::GetCharacterClass(a3, 0) == 1;
    }

    *a4 = v8;
  }

  return v7 < 2;
}

uint64_t AddSpace(uint64_t result, uint64_t a2, double a3, int a4)
{
  if ((*(result + 178) & 0x1000) == 0)
  {
    v7 = result;
    explicit = atomic_load_explicit((result + 56), memory_order_acquire);
    if (explicit)
    {
      v9 = *(*(explicit + 40) + 24);
    }

    else
    {
      v9 = 0.0;
    }

    v10 = *(result + 216);
    v11 = *(v10 + 32);
    if (v11 || (v14 = *(v10 + 24)) == 0)
    {
      v12 = v11 + 16 * *(result + 200) + 16 * a2;
      v13 = *(v12 + 8);
    }

    else
    {
      v12 = v14 + 8 * *(result + 200) + 8 * a2;
      v13 = 0;
    }

    v15 = *v12 + v9 * a3;
    TStorageRange::SetAdvance((result + 192), a2, *(&v13 - 1));
    if (a4)
    {
      v16 = MEMORY[0x1E695EFF8];
      if ((*(v7 + 225) & 0x10) != 0)
      {
        [*(v7 + 216) originAtIndex:*(v7 + 200) + a2];
        v18 = v19;
      }

      else
      {
        v17 = *MEMORY[0x1E695EFF8];
        v18 = *(MEMORY[0x1E695EFF8] + 8);
      }

      v20 = v17 + v9 * a3;
      [*(v7 + 216) setOrigin:*(v7 + 200) + a2 atIndex:{v20, v18}];
      if (v20 != *v16 || v18 != v16[1])
      {
        *(v7 + 225) |= 0x10u;
      }
    }

    v22 = *(v7 + 216);
    v23 = *(v7 + 200);
    v24 = *(v22[5] + 4 * v23 + 4 * a2) | 0x400u;

    return [v22 setProps:v24 atIndex:v23 + a2];
  }

  return result;
}

void CJKCompositionEngine::IsEnabled(void)::$_0::__invoke()
{
  if (gCJKCompositionRulesEnabled == 1)
  {
    gCJKCompositionRulesEnabled = CFPreferencesGetAppBooleanValue(@"CTDisableNewCJKComposition", *MEMORY[0x1E695E8A8], 0) == 0;
  }
}

uint64_t CJKAddSpace(uint64_t this, CFIndex a2, double a3, CFRange a4, double a5, int a6, char a7)
{
  if ((*(this + 178) & 0x1000) != 0)
  {
    return this;
  }

  location = a4.location;
  v12 = this;
  v13 = *(*(atomic_load_explicit((this + 56), memory_order_acquire) + 40) + 24);
  v14 = 0.0;
  if (LODWORD(a4.length))
  {
    if (a4.location)
    {
      a4.location = a2;
      GetOpticalBoundsAdjustment(0, this, a4);
      v16 = v15;
      goto LABEL_10;
    }

    a4.location = a2;
    GetOpticalBoundsAdjustment(1, this, a4);
    v14 = v18;
    if (a6 && (a7 & 1) == 0)
    {
      v14 = v18 + v13 * -0.0416666667;
    }
  }

  v16 = 0.0;
LABEL_10:
  v19 = *(v12 + 216);
  v20 = *(v19 + 32);
  if (v20 || (v23 = *(v19 + 24)) == 0)
  {
    v21 = v20 + 16 * *(v12 + 200) + 16 * a2;
    v22 = *(v21 + 8);
  }

  else
  {
    v21 = v23 + 8 * *(v12 + 200) + 8 * a2;
    v22 = 0;
  }

  v24 = (a3 + a5) * v13;
  if (a6)
  {
    v25 = v24 + v14;
  }

  else
  {
    v25 = (a3 + a5) * v13;
  }

  if (!a6)
  {
    v24 = v24 - v14 - v16;
  }

  v26 = v24 + *v21;
  TStorageRange::SetAdvance((v12 + 192), a2, *(&v22 - 1));
  if (location)
  {
    v27 = MEMORY[0x1E695EFF8];
    if ((*(v12 + 225) & 0x10) != 0)
    {
      [*(v12 + 216) originAtIndex:*(v12 + 200) + a2];
      v29 = v30;
    }

    else
    {
      v28 = *MEMORY[0x1E695EFF8];
      v29 = *(MEMORY[0x1E695EFF8] + 8);
    }

    v31 = v25 - v16 + v28;
    [*(v12 + 216) setOrigin:*(v12 + 200) + a2 atIndex:{v31, v29}];
    if (v31 != *v27 || v29 != v27[1])
    {
      *(v12 + 225) |= 0x10u;
    }
  }

  else
  {
    TStorageRange::SetInterGlyphsExtraSpace((v12 + 192), a2, v25);
  }

  v33 = *(v12 + 216);
  v34 = *(v12 + 200);
  v35 = *(v33[5] + 4 * v34 + 4 * a2) | 0x400u;

  return [v33 setProps:v35 atIndex:v34 + a2];
}

unsigned __int16 *std::remove_if[abi:fn200100]<std::__wrap_iter<std::pair<unsigned short,unsigned short> *>,std::__not_fn_t<OTL::GSUB::GetSingleSubstLookups(OTL::FeatureBuffer const&,TInlineVector<std::pair<unsigned short,unsigned short>,30ul> *)::IsSingleSubst>>(unsigned __int16 *a1, unsigned __int16 *a2, void *a3, uint64_t a4)
{
  v7 = a1;
  if (a1 != a2)
  {
    while (1)
    {
      v8 = TBaseFont::NthLookup<OTL::GSUB>(a4, a3, *v7);
      if (!v8 || *(v8 + 8) != 1)
      {
        break;
      }

      v7 += 2;
      if (v7 == a2)
      {
        v7 = a2;
        break;
      }
    }
  }

  if (v7 != a2)
  {
    for (i = v7 + 2; i != a2; i += 2)
    {
      v10 = TBaseFont::NthLookup<OTL::GSUB>(a4, a3, *i);
      if (v10)
      {
        if (*(v10 + 8) == 1)
        {
          *v7 = *i;
          v7[1] = i[1];
          v7 += 2;
        }
      }
    }
  }

  return v7;
}

uint64_t CJKCompositionEngine::SubstituteGlyphsForCJKComposition(TRunGlue &,TCharStream const&)::$_0::__invoke(uint64_t result, uint64_t a2)
{
  if (a2 == *result)
  {
    *(result + 8) = 1;
  }

  return result;
}

uint64_t TAATLookupTable::LookupSimpleArray(TAATLookupTable *this, unsigned int a2, unint64_t *a3)
{
  if (*(this + 3) <= a2)
  {
    return 0;
  }

  *a3 = 2;
  return *(this + 2) + 2 * a2;
}

uint64_t TAATLookupTable::LookupTrimmedArray(TAATLookupTable *this, unsigned int a2, unint64_t *a3)
{
  if (*(this + 12) > a2 || *(this + 13) < a2)
  {
    return 0;
  }

  *a3 = 2;
  return *(this + 2) + 2 * a2 - 2 * *(this + 12) + 4;
}

unint64_t TAATLookupTable::LookupVector(TAATLookupTable *this, unsigned int a2, unint64_t *a3)
{
  if (*(this + 16) > a2 || *(this + 17) < a2)
  {
    return 0;
  }

  v4 = *(this + 3);
  *a3 = v4;
  return *(this + 2) + (a2 - *(this + 16)) * v4 + 6;
}

SFNTLookupSegment *TAATLookupTable::LookupSegmentArray(TAATLookupTable *this, unsigned int a2, unint64_t *a3)
{
  if (a2 == 0xFFFF)
  {
    return 0;
  }

  result = FindSegment((*(this + 2) + 2), *(this + 5), a2, a3);
  if (result)
  {
    v6 = *(this + 2);
    v7 = v6 + (bswap32(result->value[0]) >> 16) + 2 * a2 - 2 * (bswap32(result->firstGlyph) >> 16);
    if (v7 + 2 > *(this + 5) || v6 > v7)
    {
      return 0;
    }

    else
    {
      return v7;
    }
  }

  return result;
}

uint64_t TAATLookupTable::IterateSegmentSingle(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (*(v2 + 4))
  {
    v4 = result;
    v5 = 0;
    v6 = __rev16(*(v2 + 4));
    v7 = bswap32(*(v2 + 2)) >> 16;
    v8 = v2 + 18;
    do
    {
      if (v8 > *(v4 + 40))
      {
        break;
      }

      result = std::function<void ()(unsigned short,unsigned short,unsigned short const*)>::operator()(a2, bswap32(*(v8 - 4)) >> 16, bswap32(*(v8 - 6)) >> 16, v8 - 2);
      ++v5;
      v8 += v7;
    }

    while (v6 > v5);
  }

  return result;
}

uint64_t std::function<void ()(unsigned short,unsigned short,unsigned short const*)>::operator()(uint64_t a1, __int16 a2, __int16 a3, uint64_t a4)
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
  return TAATLookupTable::IterateSegmentArray(v6);
}

uint64_t TAATLookupTable::IterateSegmentArray(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = result;
  v5 = *(result + 16);
  v6 = *(v5 + 4);
  v7 = __rev16(v6);
  v8 = bswap32(*(v5 + 2)) >> 16;
  if (*(a2 + 24))
  {
    v9 = v7 >= 2;
  }

  else
  {
    v9 = 0;
  }

  if (v9)
  {
    v10 = v5 + (v7 - 2) * v8;
    if ((v10 + 18) > *(result + 40))
    {
      return result;
    }

    result = std::function<void ()>::operator()(a2, (bswap32(*(v10 + 12)) >> 16) + 1);
  }

  if (v6)
  {
    v11 = 0;
    v12 = v5 + 18;
    do
    {
      if (v12 > *(v4 + 40))
      {
        break;
      }

      v13 = *(v12 - 4);
      if (v13 == 0xFFFF)
      {
        break;
      }

      result = std::function<void ()(unsigned short,unsigned short,unsigned short const*)>::operator()(a3, __rev16(v13), bswap32(*(v12 - 6)) >> 16, v12 - 2);
      ++v11;
      v12 += v8;
    }

    while (v7 > v11);
  }

  return result;
}

uint64_t TAATLookupTable::IterateTrimmedArray(uint64_t result, uint64_t a2)
{
  v2 = *(result + 24);
  v3 = *(result + 26);
  if (v2 <= v3)
  {
    v5 = result;
    v6 = v3 + 1;
    do
    {
      result = std::function<void ()(unsigned short,unsigned short const*)>::operator()(a2, v2, *(v5 + 16) + 2 * v2 - 2 * *(v5 + 24) + 4);
      ++v2;
    }

    while (v6 != v2);
  }

  return result;
}

BOOL TAATMorphSubtableMorx::MorxContextualStateNeedsAction(TAATMorphSubtableMorx *this, unint64_t a2, int a3, int a4, const unsigned __int16 *a5, const STXEntryTwo *a6, uint64_t a7)
{
  v7 = a6 + (a4 + a3 * a5);
  v8 = v7 < this || (v7 + 1) > a2;
  result = 0;
  if (!v8)
  {
    v9 = (a7 + 8 * (bswap32(*v7) >> 16));
    if (v9 >= this && v9 + 8 <= a2)
    {
      v11 = (*(v9 + 1) & 0xE0) == 0 && *v9 == 0;
      if (!v11 || *(v9 + 2) != -1 || *(v9 + 3) != -1)
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL TAATMorphSubtableMorx::MorxInsertionStateNeedsAction(TAATMorphSubtableMorx *this, unint64_t a2, int a3, int a4, const unsigned __int16 *a5, const STXEntryTwo *a6, uint64_t a7)
{
  v7 = a6 + (a4 + a3 * a5);
  if (v7 < this || (v7 + 1) > a2)
  {
    return 0;
  }

  v9 = (a7 + 8 * (bswap32(*v7) >> 16));
  if (v9 < this || v9 + 8 > a2)
  {
    return 0;
  }

  v11 = *(v9 + 1);
  if ((v11 & 0xE0) != 0 || *v9 != 0)
  {
    return 1;
  }

  return (*(v9 + 2) != -1 || *(v9 + 3) != -1) && (v11 & 0xFF03) != 0;
}

uint64_t TAATMorphSubtableMorx::InitRearrangementState(uint64_t a1, TRunGlue *a2, void *a3)
{
  v6 = *(a1 + 104);
  v5 = *(a1 + 112);
  v7 = v6 + 3;
  a3[2] = bswap32(v6[3]);
  v8 = (v6 + bswap32(v6[4]) + 12);
  if (&v8->fsHeader > v5)
  {
    return 0;
  }

  result = 0;
  v11 = bswap32(v8->format) >> 16;
  if (v11 > 5)
  {
    if (v11 != 6)
    {
      if (v11 != 10)
      {
        if (v11 != 8)
        {
          return result;
        }

        p_searchRange = &v8->fsHeader.segment.binSearch.searchRange;
        if (v8->fsHeader.trimmedArray.valueArray <= v5)
        {
          v14 = bswap32(v8->fsHeader.segment.binSearch.nUnits) >> 16;
          v15 = &p_searchRange[v14];
          v16 = v8->fsHeader.vector.values <= v5 ? (v5 - p_searchRange) >> 1 : 0;
          v17 = v15 <= v5 && v15 >= p_searchRange;
          if (v17 || v16 == v14)
          {
            goto LABEL_32;
          }
        }

        return 0;
      }

      values = v8->fsHeader.vector.values;
      if (v8->fsHeader.vector.values > v5)
      {
        return 0;
      }

      v20 = bswap32(v8->fsHeader.theArray.lookupValues[0]) >> 16;
      searchRange = v8->fsHeader.segment.binSearch.searchRange;
LABEL_28:
      v22 = &values[(bswap32(searchRange) >> 16) * v20];
      if (v22 >= values && v22 <= v5)
      {
        goto LABEL_32;
      }

      return 0;
    }

LABEL_24:
    if (v8->fsHeader.trimmedArray.valueArray > v5)
    {
      return 0;
    }

    values = &v8->fsHeader.vector + 10;
    v20 = bswap32(v8->fsHeader.theArray.lookupValues[0]) >> 16;
    searchRange = v8->fsHeader.segment.binSearch.nUnits;
    goto LABEL_28;
  }

  if (!v11)
  {
LABEL_32:
    TAATLookupTable::SetTable(a1 + 24, v8, v5);
    if (*(a1 + 12) < 1)
    {
      *a3 = TRunGlue::length(a2) - 1;
      v24 = TRunGlue::length(a2) - 1;
    }

    else
    {
      v24 = 0;
      *a3 = 0;
    }

    a3[1] = v24;
    a3[3] = v7 + bswap32(v6[5]);
    a3[4] = v7 + bswap32(v6[6]);
    return 1;
  }

  if (v11 == 2 || v11 == 4)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t TAATMorphSubtableMorx::InitContextualState(uint64_t a1, TRunGlue *a2, uint64_t *a3)
{
  v6 = *(a1 + 104);
  v5 = *(a1 + 112);
  v7 = v6 + 3;
  a3[1] = bswap32(v6[3]);
  v8 = (v6 + bswap32(v6[4]) + 12);
  if (&v8->fsHeader > v5)
  {
    return 0;
  }

  result = 0;
  v11 = bswap32(v8->format) >> 16;
  if (v11 > 5)
  {
    if (v11 != 6)
    {
      if (v11 != 10)
      {
        if (v11 != 8)
        {
          return result;
        }

        p_searchRange = &v8->fsHeader.segment.binSearch.searchRange;
        if (v8->fsHeader.trimmedArray.valueArray <= v5)
        {
          v14 = bswap32(v8->fsHeader.segment.binSearch.nUnits) >> 16;
          v15 = &p_searchRange[v14];
          v16 = v8->fsHeader.vector.values <= v5 ? (v5 - p_searchRange) >> 1 : 0;
          v17 = v15 <= v5 && v15 >= p_searchRange;
          if (v17 || v16 == v14)
          {
            goto LABEL_32;
          }
        }

        return 0;
      }

      values = v8->fsHeader.vector.values;
      if (v8->fsHeader.vector.values > v5)
      {
        return 0;
      }

      v20 = bswap32(v8->fsHeader.theArray.lookupValues[0]) >> 16;
      searchRange = v8->fsHeader.segment.binSearch.searchRange;
LABEL_28:
      v22 = &values[(bswap32(searchRange) >> 16) * v20];
      if (v22 >= values && v22 <= v5)
      {
        goto LABEL_32;
      }

      return 0;
    }

LABEL_24:
    if (v8->fsHeader.trimmedArray.valueArray > v5)
    {
      return 0;
    }

    values = &v8->fsHeader.vector + 10;
    v20 = bswap32(v8->fsHeader.theArray.lookupValues[0]) >> 16;
    searchRange = v8->fsHeader.segment.binSearch.nUnits;
    goto LABEL_28;
  }

  if (!v11)
  {
LABEL_32:
    TAATLookupTable::SetTable(a1 + 24, v8, v5);
    if (*(a1 + 12) <= 0)
    {
      v24 = TRunGlue::length(a2) - 1;
    }

    else
    {
      v24 = 0;
    }

    *a3 = v24;
    a3[2] = v7 + bswap32(v6[5]);
    a3[3] = v7 + bswap32(v6[6]);
    return 1;
  }

  if (v11 == 2 || v11 == 4)
  {
    goto LABEL_24;
  }

  return result;
}

uint64_t TAATMorphSubtableMorx::DoRearrangementSubtable(uint64_t a1, TRunGlue *a2, uint64_t *a3, void *a4, int64_t a5, uint64_t a6, unint64_t a7)
{
  v35[4] = *MEMORY[0x1E69E9840];
  v30 = a4;
  v31 = a5;
  Class = a7;
  v11 = a7 >> 16;
  v12 = TRunGlue::TGlyph::glyphID(&v30);
  LODWORD(v13) = 0;
  v34 = 0;
  memset(v35, 170, 24);
  v32 = 0;
  v33 = 0;
  v35[3] = v35;
LABEL_2:
  while (2)
  {
    v26 = v13;
    v14 = v11;
    while (!a6 || v12 != 0xFFFF && (TRunGlue::IsDeleted(v30, v31) & 1) == 0)
    {
      v15 = (a3[3] + 2 * a3[2] * v14 + 2 * Class);
      v16 = *(a1 + 104);
      v17 = *(a1 + 112);
      v18 = v16 > v15 || (v15 + 1) > v17;
      if (v18 || ((v19 = (a3[4] + 4 * (bswap32(*v15) >> 16)), v16 <= v19) ? (v20 = (v19 + 2) > v17) : (v20 = 1), v20))
      {
        v13 = 0xFFFFFFFFLL;
        goto LABEL_40;
      }

      v11 = bswap32(*v19) >> 16;
      v21 = bswap32(v19[1]) >> 16;
      if ((v21 & 0xE00F) == 0)
      {
        goto LABEL_34;
      }

      if ((v21 & 0x80000000) == 0)
      {
        if ((v21 & 0x2000) == 0)
        {
          goto LABEL_18;
        }

LABEL_17:
        *a3 = v31;
        goto LABEL_18;
      }

      a3[1] = v31;
      if ((v21 & 0x2000) != 0)
      {
        goto LABEL_17;
      }

LABEL_18:
      if ((v21 & 0xF) != 0)
      {
        v22 = TAATMorphSubtable::DoRearrangementAction(a1, a2, v21 & 0xF, a3[1], *a3);
        if (v22)
        {
          v13 = v22;
          v26 = v22;
          if (v22 < 1)
          {
            goto LABEL_40;
          }
        }
      }

      if ((v21 & 0x4000) == 0)
      {
        goto LABEL_34;
      }

      LOWORD(__p) = v12;
      HIWORD(__p) = v14;
      __p_4 = v11;
      v23 = v32;
      if (v32 != v33)
      {
        while (*v23 != v12 || v23[1] != v14 || v23[2] != v11)
        {
          v23 += 3;
          if (v23 == v33)
          {
            goto LABEL_29;
          }
        }
      }

      if (v23 != v33)
      {
        goto LABEL_34;
      }

LABEL_29:
      std::vector<std::tuple<unsigned short,unsigned short,unsigned short>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,unsigned short>,4ul>>::push_back[abi:fn200100](&v32, &__p);
      v14 = v11;
      if (a6 >= 1)
      {
        LODWORD(v13) = v26;
LABEL_37:
        v12 = TRunGlue::TGlyph::glyphID(&v30);
        Class = TAATMorphSubtableMorx::FetchClass(a1, v12);
        goto LABEL_2;
      }
    }

    v11 = v14;
LABEL_34:
    v13 = v26;
    v33 = v32;
    v24 = a6 - 1;
    if (a6 > 1)
    {
      v31 += *(a1 + 12);
      --a6;
      goto LABEL_37;
    }

    Class = 0;
    a6 = 0;
    if (!v24)
    {
      continue;
    }

    break;
  }

LABEL_40:
  std::vector<std::tuple<unsigned short,unsigned short,unsigned short>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](&v32);
  return v13;
}

void std::vector<std::tuple<unsigned short,unsigned short,unsigned short>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,unsigned short>,4ul>>::push_back[abi:fn200100](uint64_t a1, int *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v7 = 0xAAAAAAAAAAAAAAABLL * ((v4 - *a1) >> 1);
    v8 = v7 + 1;
    if (v7 + 1 > 0x2AAAAAAAAAAAAAAALL)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = 0xAAAAAAAAAAAAAAABLL * ((v3 - *a1) >> 1);
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x1555555555555555)
    {
      v10 = 0x2AAAAAAAAAAAAAAALL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      v11 = *(a1 + 48);
      v12 = v11 + 6 * v10;
      if (v12 > a1 + 48)
      {
        if (v10 <= 0x2AAAAAAAAAAAAAAALL)
        {
          operator new();
        }

        std::__throw_bad_array_new_length[abi:fn200100]();
      }

      *(a1 + 48) = v12;
    }

    else
    {
      v11 = 0;
    }

    v13 = v11 + 6 * v7;
    v14 = v11 + 6 * v10;
    v15 = *a2;
    *(v13 + 4) = *(a2 + 2);
    *v13 = v15;
    v6 = v13 + 6;
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
      if (a1 + 24 > v18 || (v20 = (a1 + 48), a1 + 48 <= v18))
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
    *(v4 + 4) = *(a2 + 2);
    *v4 = v5;
    v6 = v4 + 6;
  }

  *(a1 + 8) = v6;
}

uint64_t TAATMorphSubtableMorx::DoInsertionSubtable(TAATMorphSubtable *a1, TRunGlue *a2, uint64_t *a3, TRunGlue *a4, int64_t a5, uint64_t a6, unint64_t a7)
{
  v7 = a6;
  v64[4] = *MEMORY[0x1E69E9840];
  v59 = a4;
  v60 = a5;
  Class = a7;
  v11 = a7 >> 16;
  v48 = a6 << 7;
  v12 = TRunGlue::TGlyph::glyphID(&v59);
  v47 = 0;
  v63 = 0;
  memset(v64, 170, 24);
  v64[3] = v64;
  v61 = 0;
  v62 = 0;
  v54 = a1;
  v51 = a3;
  while (2)
  {
    while (2)
    {
      v53 = Class;
      while (1)
      {
        if (v7 && (v12 == 0xFFFF || (TRunGlue::IsDeleted(v59, v60) & 1) != 0))
        {
          v36 = 1;
          goto LABEL_66;
        }

        v13 = (a3[2] + 2 * a3[1] * v11 + 2 * v53);
        v14 = *(a1 + 13);
        v15 = *(a1 + 14);
        v16 = v14 > v13 || (v13 + 1) > v15;
        if (v16)
        {
          goto LABEL_70;
        }

        v17 = (a3[3] + 8 * (bswap32(*v13) >> 16));
        if (v14 > v17 || (v17 + 4) > v15)
        {
          goto LABEL_70;
        }

        v19 = bswap32(*v17) >> 16;
        v20 = bswap32(v17[1]) >> 16;
        v21 = v17[2];
        v22 = __rev16(v21);
        v23 = v17[3];
        v55 = __rev16(v23);
        v24 = v21 == 0xFFFF ? 0 : (v20 >> 5) & 0x1F;
        v25 = v23 == 0xFFFF ? 0 : v20 & 0x1F;
        if (v24 | v25)
        {
          v26 = *(a1 + 13);
          v27 = v26 + bswap32(*(v26 + 28)) + 12;
          v50 = v7;
          if (v24)
          {
            v28 = a1;
            if (v60 < 0)
            {
              v29 = 1;
            }

            else
            {
              v29 = (v20 >> 11) & 1;
            }

            v30 = v60 & ~(v60 >> 63);
            v49 = v27;
            v31 = TAATMorphSubtable::DoInsertionAction(v28, a2, v24, v29, (v20 >> 13) & 1, (v27 + 2 * v22), v26, v28[14], v30, v30);
            if (v31)
            {
              v32 = v31;
              v47 = v31;
              if (v31 < 1)
              {
                goto LABEL_72;
              }
            }

            v33 = a2;
            v59 = a2;
            v60 = v30;
            if (*(v54 + 3) > 0)
            {
              v34 = 1;
            }

            else
            {
              v34 = v29;
            }

            if (v34)
            {
              v35 = v24 + 1;
            }

            else
            {
              v35 = 1;
            }

            v27 = v49;
            v7 = v50;
          }

          else
          {
            v35 = 1;
            v33 = a2;
          }

          a3 = v51;
          if (v25)
          {
            if (v60 < 0)
            {
              v37 = 1;
            }

            else
            {
              v37 = (v20 >> 10) & 1;
            }

            v38 = v60 & ~(v60 >> 63);
            if ((v20 & 0x1000) != 0)
            {
              v39 = *v51;
            }

            else
            {
              v39 = v60 & ~(v60 >> 63);
            }

            v40 = (v27 + 2 * v55);
            v56 = v37;
            v41 = TAATMorphSubtable::DoInsertionAction(v54, v33, v25, v37, (v20 & 0x1000) >> 12, v40, *(v54 + 13), *(v54 + 14), *v51, v39);
            if (v41)
            {
              v32 = v41;
              v47 = v41;
              if (v41 < 1)
              {
                goto LABEL_72;
              }
            }

            a3 = v51;
            v33 = a2;
            v59 = a2;
            v60 = v38;
            v42 = v56;
            if (*(v54 + 3) > 0)
            {
              v42 = 1;
            }

            if (v42)
            {
              v43 = v25;
            }

            else
            {
              v43 = 0;
            }

            v35 += v43;
            v7 = v50;
          }

          v44 = TRunGlue::length(v33);
          v36 = v35;
          a1 = v54;
          if (v44 > v48)
          {
LABEL_70:
            v32 = 0xFFFFFFFFLL;
            goto LABEL_72;
          }
        }

        else
        {
          v36 = 1;
          a3 = v51;
        }

        if ((v20 & 0x80000000) != 0)
        {
          *a3 = v60;
        }

        if ((v20 & 0x4000) == 0)
        {
          break;
        }

        v7 += v24 + v25;
        LOWORD(__p) = v12;
        HIWORD(__p) = v11;
        __p_4 = v19;
        v45 = v61;
        if (v61 != v62)
        {
          while (*v45 != v12 || v45[1] != v11 || v45[2] != v19)
          {
            v45 += 3;
            if (v45 == v62)
            {
              goto LABEL_62;
            }
          }
        }

        if (v45 != v62)
        {
          break;
        }

LABEL_62:
        std::vector<std::tuple<unsigned short,unsigned short,unsigned short>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,unsigned short>,4ul>>::push_back[abi:fn200100](&v61, &__p);
        v11 = v19;
        if (v7 >= 1)
        {
          goto LABEL_63;
        }
      }

      v11 = v19;
LABEL_66:
      v62 = v61;
      v16 = v7-- <= 1;
      if (!v16)
      {
        v60 += v36 * *(a1 + 3);
        v19 = v11;
LABEL_63:
        v12 = TRunGlue::TGlyph::glyphID(&v59);
        Class = TAATMorphSubtableMorx::FetchClass(a1, v12);
        v11 = v19;
        continue;
      }

      break;
    }

    if (!v7)
    {
      Class = 0;
      v60 += v36 * *(a1 + 3);
      continue;
    }

    break;
  }

  v32 = v47;
LABEL_72:
  std::vector<std::tuple<unsigned short,unsigned short,unsigned short>,TInlineBufferAllocator<std::tuple<unsigned short,unsigned short,unsigned short>,4ul>>::__destroy_vector::operator()[abi:fn200100](&v61);
  return v32;
}

unint64_t TAATMorphSubtableMorx::DoContextualAction(uint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4, int64_t a5)
{
  v45 = a4;
  v46 = a5;
  v8 = *(a1 + 104) + bswap32(*(*(a1 + 104) + 28)) + 12;
  v9 = TRunGlue::TGlyph::glyphID(&v45);
  v10 = (v8 + 4 * a3);
  v11 = *(a1 + 112);
  if (*(a1 + 104) > v10 || v10 + 1 > v11)
  {
    return 0xFFFFFFFFLL;
  }

  v13 = v9;
  v14 = bswap32(*v10);
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v43 = 0xAAAAAAAAAAAAAAAALL;
  v42 = v15;
  v40 = TAATLookupTable::BadTable;
  v41 = 0;
  v44 = 0xAAAAAAAAAAAAFFFFLL;
  TAATLookupTable::SetTable(&v40, (v8 + v14), v11);
  v16 = v40;
  v17 = !v41 || (v41 & 1 | v40) == 0;
  v18 = !v17;
  if (v40 == TAATLookupTable::BadTable && !v18)
  {
    return 0xFFFFFFFFLL;
  }

  v39 = 0xAAAAAAAAAAAAAAAALL;
  v19 = (&v40 + (v41 >> 1));
  if (v41)
  {
    v16 = *(*v19 + v40);
  }

  result = v16(v19, v13, &v39);
  if (result)
  {
    if (*(a1 + 104) > result || result + 2 > *(a1 + 112))
    {
      return 0;
    }

    v22 = *result;
    v23 = __rev16(v22);
    if (!*result || v23 == v13)
    {
      return 0;
    }

    else
    {
      v25 = v46;
      if (v22 == 0xFFFF)
      {
        TRunGlue::Delete(a2, v46, 0);
      }

      else
      {
        v26 = *(a2 + 192);
        if (v26 && *(a2 + 504) > v23)
        {
          *(v26 + (v23 >> 3)) |= 1 << (v23 & 7);
        }

        v27 = *(a2 + 208) | (1 << ((-1640531535 * v23) >> 26));
        *(a2 + 200) |= 1 << v23;
        *(a2 + 208) = v27;
        if (*(a2 + 144))
        {
          TRunGlue::FocusOnIndex(a2, v25);
          v28 = *(a2 + 144);
          v29 = v25 - *(a2 + 152);
          [*(v28 + 216) setGlyph:v23 atIndex:*(v28 + 200) + v29];
          *(a2 + 514) = 1;
          [*(v28 + 216) setProps:*(*(*(v28 + 216) + 40) + 4 * *(v28 + 200) + 4 * v29) | 0x800u atIndex:*(v28 + 200) + v29];
          v30 = *(v28 + 216);
          v31 = *(v28 + 200);
          v32 = *(v30[5] + 4 * v31 + 4 * v29);
          if ((v32 & 0x40) != 0)
          {
            [v30 setProps:v32 & 0xFFFFEFBF | 0x1000 atIndex:v31 + v29];
          }
        }

        else
        {
          v33 = *(a2 + 152) + v25;
          *(*(a2 + 168) + 2 * v33) = v23;
          v34 = *(a2 + 496);
          LOWORD(__p) = v23;
          v39 = -1;
          TFont::GetUnsummedAdvancesForGlyphs(v34, &__p, &v39, 1, 1, 0, 0);
          v35 = (*(a2 + 176) + 16 * v33);
          *v35 = v39;
          v35[1] = 0;
          v36 = *(a2 + 408);
          if (v36)
          {
            v37 = *(v36 + 4 * v33);
            if ((v37 & 0x1040) != 0)
            {
              *(v36 + 4 * v33) = v37 & 0xFFFFEFBF | 0x1000;
            }
          }
        }
      }

      return 2;
    }
  }

  return result;
}

void *std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#1},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#1}>,void ()(unsigned short,unsigned short const*)>::~__func(void *a1)
{
  *a1 = &unk_1EF256A68;
  std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#1},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#1}>,void ()(unsigned short,unsigned short const*)>::~__func(void *a1)
{
  *a1 = &unk_1EF256A68;
  std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 1));

  JUMPOUT(0x1865F22D0);
}

void std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#1},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#1}>,void ()(unsigned short,unsigned short const*)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100](a1 + 8);

  operator delete(a1);
}

void *std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short const*)#1},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short const*)#1}>,void ()(unsigned short,unsigned short,unsigned short const*)>::~__func(void *a1)
{
  *a1 = &unk_1EF256AB0;
  std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short const*)#1},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short const*)#1}>,void ()(unsigned short,unsigned short,unsigned short const*)>::~__func(void *a1)
{
  *a1 = &unk_1EF256AB0;
  std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 1));

  JUMPOUT(0x1865F22D0);
}

void std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short const*)#1},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short const*)#1}>,void ()(unsigned short,unsigned short,unsigned short const*)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short const*)>::~__value_func[abi:fn200100](uint64_t a1)
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

void *std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short const*)#2},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short const*)#2}>,void ()(unsigned short,unsigned short,unsigned short const*)>::~__func(void *a1)
{
  *a1 = &unk_1EF256AF8;
  std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short const*)#2},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short const*)#2}>,void ()(unsigned short,unsigned short,unsigned short const*)>::~__func(void *a1)
{
  *a1 = &unk_1EF256AF8;
  std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 1));

  JUMPOUT(0x1865F22D0);
}

__n128 std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short const*)#2},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short const*)#2}>,void ()(unsigned short,unsigned short,unsigned short const*)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF256AF8;
  std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::__value_func[abi:fn200100](a2 + 8, a1 + 8);
  result = *(a1 + 40);
  *(a2 + 40) = result;
  return result;
}

void std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short const*)#2},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short const*)#2}>,void ()(unsigned short,unsigned short,unsigned short const*)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short const*)#2},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short,unsigned short const*)#2}>,void ()(unsigned short,unsigned short,unsigned short const*)>::operator()(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3, unsigned __int16 **a4)
{
  v4 = result;
  v5 = *a2;
  v6 = *a3;
  v7 = *(result + 48);
  v8 = *(result + 40) + (bswap32(**a4) >> 16);
  v9 = v6 - v5 + 1;
  v10 = v8 + 2 * v9;
  if (v10 >= v8 && v10 <= v7)
  {
    if (v5 > v6)
    {
      return result;
    }

    goto LABEL_13;
  }

  if (v8 + 2 <= v7)
  {
    v12 = (v7 - v8) >> 1;
  }

  else
  {
    v12 = 0;
  }

  if (v5 <= v6 && v12 == v9)
  {
LABEL_13:
    v13 = v8 - 2 * v5;
    v14 = v6 + 1;
    do
    {
      result = std::function<void ()(unsigned short,unsigned short,unsigned short)>::operator()(v4 + 8, v5, v5, bswap32(*(v13 + 2 * v5)) >> 16);
      LODWORD(v5) = v5 + 1;
    }

    while (v14 != v5);
  }

  return result;
}

void *std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#2},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#2}>,void ()(unsigned short,unsigned short const*)>::~__func(void *a1)
{
  *a1 = &unk_1EF256B40;
  std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#2},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#2}>,void ()(unsigned short,unsigned short const*)>::~__func(void *a1)
{
  *a1 = &unk_1EF256B40;
  std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 1));

  JUMPOUT(0x1865F22D0);
}

void *std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#3},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#3}>,void ()(unsigned short,unsigned short const*)>::~__func(void *a1)
{
  *a1 = &unk_1EF256B88;
  std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#3},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#3}>,void ()(unsigned short,unsigned short const*)>::~__func(void *a1)
{
  *a1 = &unk_1EF256B88;
  std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 1));

  JUMPOUT(0x1865F22D0);
}

void std::__function::__func<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#3},std::allocator<TAATLookupTable::Iterate(std::function<void ()(unsigned short,unsigned short,unsigned short)>)::{lambda(unsigned short,unsigned short const*)#3}>,void ()(unsigned short,unsigned short const*)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned short,unsigned short,unsigned short)>::~__value_func[abi:fn200100](a1 + 8);

  operator delete(a1);
}

void *TRunGlue::Delete(void *this, int64_t a2, int a3)
{
  v5 = this;
  if (this[18])
  {
    TRunGlue::FocusOnIndex(this, a2);
    v6 = v5[18];
    v7 = a2 - v5[19];
    [*(v6 + 216) setGlyph:0xFFFFLL atIndex:*(v6 + 200) + v7];
    if ((*(v6 + 225) & 2) != 0)
    {
      *(v6 + 225) |= 8u;
    }

    TStorageRange::SetAdvance((v6 + 192), v7, *MEMORY[0x1E695F060]);
    [*(v6 + 216) setProps:*(*(*(v6 + 216) + 40) + 4 * *(v6 + 200) + 4 * v7) | 0x20u atIndex:*(v6 + 200) + v7];
    this = *(v6 + 216);
    v8 = *(v6 + 200);
    LODWORD(v9) = *(this[5] + 4 * v8 + 4 * v7);
    if ((v9 & 0x40) != 0)
    {
      v9 = v9 & 0xFFFFEFBF | 0x1000;
      this = [this setProps:v9 atIndex:v8 + v7];
    }

    if ((a3 & ~v9) != 0)
    {
      v10 = *(v6 + 216);
      v11 = *(v6 + 200) + v7;

      return [v10 setProps:v9 | a3 atIndex:v11];
    }
  }

  else
  {
    v12 = this[19] + a2;
    v13 = this[22];
    *(this[21] + 2 * v12) = -1;
    *(v13 + 16 * v12) = *MEMORY[0x1E695F060];
    v14 = this[51];
    if (v14)
    {
      v15 = *(v14 + 4 * v12) | a3;
      *(v14 + 4 * v12) = v15 | 0x20;
      if ((v15 & 0x1040) != 0)
      {
        *(v14 + 4 * v12) = v15 & 0xFFFFEF9F | 0x1020;
      }
    }

    else
    {
      if (v12 >= 0)
      {
        v16 = v12;
      }

      else
      {
        v16 = v12 + 7;
      }

      v17 = this[27];
      if (this[28] - v17 <= (v16 >> 3))
      {
        __break(1u);
      }

      else
      {
        *(v17 + (v16 >> 3)) |= 1 << (v12 & 7);
      }
    }
  }

  return this;
}

uint64_t TRunGlue::SetDeletedGlyphsBit(uint64_t this, uint64_t a2, int a3)
{
  v3 = a2 / 8;
  v4 = *(this + 216);
  v5 = *(this + 224) - v4;
  if (a3)
  {
    if (v5 > v3)
    {
      v6 = *(v4 + v3) | (1 << (a2 & 7));
LABEL_6:
      *(v4 + v3) = v6;
      return this;
    }
  }

  else if (v5 > v3)
  {
    v6 = *(v4 + v3) & ~(1 << (a2 & 7));
    goto LABEL_6;
  }

  __break(1u);
  return this;
}

void *std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_0,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_0>,void ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF256BD0;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 5));
  return a1;
}

void std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_0,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_0>,void ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF256BD0;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 5));

  JUMPOUT(0x1865F22D0);
}

uint64_t std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_0,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_0>,void ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF256BD0;
  v4 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v4;
  result = std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](a2 + 40, a1 + 40);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 74) = 0;
  *(a2 + 78) = 0;
  return result;
}

void std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_0,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_0>,void ()(unsigned short,unsigned short,unsigned short)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](a1 + 40);

  operator delete(a1);
}

uint64_t std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_0,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_0>,void ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t result, __int16 *a2, __int16 *a3, unsigned __int16 *a4)
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
    v11 = (v10 + 2 * *a4);
    v12 = *(v8 + 104);
    v13 = *(v8 + 112);
    if (v12 <= v11 && (v11 + 1) <= v13)
    {
      v15 = (v9 + 4 * (bswap32(*v11) >> 16));
      if (v12 <= v15 && (v15 + 2) <= v13)
      {
        v17 = v15[1];
        v18 = *v15;
        if ((v17 & 0xFE0) != 0 || v18 != 0)
        {
          return std::function<void ()(unsigned short,unsigned short)>::operator()(result + 40, v6, v7);
        }
      }
    }

    if (*(result + 72))
    {
      v20 = (v10 + 2 * (v4 + v5 * *(result + 72)));
      if (v20 >= v12 && (v20 + 1) <= v13)
      {
        v22 = (v9 + 4 * (bswap32(*v20) >> 16));
        if (v22 >= v12 && (v22 + 2) <= v13)
        {
          v24 = v22[1];
          v25 = *v22;
          if ((v24 & 0xFE0) != 0 || v25 != 0)
          {
            return std::function<void ()(unsigned short,unsigned short)>::operator()(result + 40, v6, v7);
          }
        }
      }
    }
  }

  return result;
}

void *std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_1,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_1>,void ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF256C18;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 5));
  return a1;
}

void std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_1,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_1>,void ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF256C18;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 5));

  JUMPOUT(0x1865F22D0);
}

uint64_t std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_1,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_1>,void ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF256C18;
  v4 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v4;
  result = std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](a2 + 40, a1 + 40);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 74) = 0;
  *(a2 + 78) = 0;
  return result;
}

void std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_1,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_1>,void ()(unsigned short,unsigned short,unsigned short)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](a1 + 40);

  operator delete(a1);
}

uint64_t std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_1,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_1>,void ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t result, __int16 *a2, __int16 *a3, unsigned __int16 *a4)
{
  v4 = *a4;
  v5 = *(result + 16);
  if (v5 > v4)
  {
    v6 = result;
    v7 = *a2;
    v8 = *a3;
    v9 = *(result + 8);
    v10 = *(result + 24);
    v11 = *(result + 32);
    v12 = *(v9 + 104);
    v13 = *(v9 + 112);
    result = TAATMorphSubtableMorx::MorxContextualStateNeedsAction(v12, v13, 0, *a4, v5, v10, v11);
    if ((result & 1) != 0 || *(v6 + 72) && (result = TAATMorphSubtableMorx::MorxContextualStateNeedsAction(v12, v13, *(v6 + 72), v4, v5, v10, v11), result))
    {

      return std::function<void ()(unsigned short,unsigned short)>::operator()(v6 + 40, v7, v8);
    }
  }

  return result;
}

void *std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_2,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_2>,void ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF256C60;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 5));
  return a1;
}

void std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_2,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_2>,void ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF256C60;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 5));

  JUMPOUT(0x1865F22D0);
}

uint64_t std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_2,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_2>,void ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF256C60;
  v4 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v4;
  result = std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](a2 + 40, a1 + 40);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 74) = 0;
  *(a2 + 78) = 0;
  return result;
}

void *std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_3,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_3>,void ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF256CA8;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 1));
  return a1;
}

void std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_3,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_3>,void ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF256CA8;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 1));

  JUMPOUT(0x1865F22D0);
}

void std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_3,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_3>,void ()(unsigned short,unsigned short,unsigned short)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](a1 + 8);

  operator delete(a1);
}

uint64_t std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_3,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_3>,void ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t result, unsigned __int16 *a2, unsigned __int16 *a3, _WORD *a4)
{
  v4 = *a4;
  if (*a4)
  {
    v5 = *a3;
    v6 = *a2;
    if (v6 <= v5)
    {
      v7 = result;
      v8 = v5 + 1;
      do
      {
        if (v4 != v6)
        {
          result = std::function<void ()(unsigned short,unsigned short)>::operator()(v7 + 8, v6, v6);
        }

        ++v6;
      }

      while (v8 != v6);
    }
  }

  return result;
}

void *std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_4,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_4>,void ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF256CF0;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 5));
  return a1;
}

void std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_4,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_4>,void ()(unsigned short,unsigned short,unsigned short)>::~__func(void *a1)
{
  *a1 = &unk_1EF256CF0;
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100]((a1 + 5));

  JUMPOUT(0x1865F22D0);
}

uint64_t std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_4,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_4>,void ()(unsigned short,unsigned short,unsigned short)>::__clone(uint64_t a1, uint64_t a2)
{
  *a2 = &unk_1EF256CF0;
  v4 = *(a1 + 8);
  *(a2 + 24) = *(a1 + 24);
  *(a2 + 8) = v4;
  result = std::__function::__value_func<void ()(unsigned short,unsigned short)>::__value_func[abi:fn200100](a2 + 40, a1 + 40);
  *(a2 + 72) = *(a1 + 72);
  *(a2 + 74) = 0;
  *(a2 + 78) = 0;
  return result;
}

void std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_4,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_4>,void ()(unsigned short,unsigned short,unsigned short)>::destroy_deallocate(void *a1)
{
  std::__function::__value_func<void ()(unsigned short,unsigned short)>::~__value_func[abi:fn200100](a1 + 40);

  operator delete(a1);
}

uint64_t std::__function::__func<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_4,std::allocator<TAATMorphSubtableMorx::AddShapingGlyphs(std::function<void ()(unsigned short,unsigned short)>)::$_4>,void ()(unsigned short,unsigned short,unsigned short)>::operator()(uint64_t result, __int16 *a2, __int16 *a3, unsigned __int16 *a4)
{
  v4 = *a4;
  v5 = *(result + 16);
  if (v5 > v4)
  {
    v6 = result;
    v7 = *a2;
    v8 = *a3;
    v9 = *(result + 8);
    v10 = *(result + 24);
    v11 = *(result + 32);
    v12 = *(v9 + 104);
    v13 = *(v9 + 112);
    result = TAATMorphSubtableMorx::MorxInsertionStateNeedsAction(v12, v13, 0, *a4, v5, v10, v11);
    if ((result & 1) != 0 || *(v6 + 72) && (result = TAATMorphSubtableMorx::MorxInsertionStateNeedsAction(v12, v13, *(v6 + 72), v4, v5, v10, v11), result))
    {

      return std::function<void ()(unsigned short,unsigned short)>::operator()(v6 + 40, v7, v8);
    }
  }

  return result;
}

void TAATMorphSubtableMorx::DoLigatureAction<TRunGlue::TGlyphInVector>(TRunGlue&,unsigned short,TAATMorphSubtableMorx::MorxLigatureState *)::{lambda(void)#1}::operator()(uint64_t a1)
{
  v39 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 8);
  v3 = *(*a1 + 12);
  if (v3 != *(v2 + 6))
  {
    *&v4 = 0xAAAAAAAAAAAAAAAALL;
    *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v37 = v4;
    v36 = v4;
    v35 = v4;
    v34 = v4;
    v33 = v4;
    v32 = v4;
    v31 = v4;
    v30 = v4;
    v29 = v4;
    v27 = v4;
    v28 = v4;
    v25 = v4;
    v26 = v4;
    v23 = v4;
    v24 = v4;
    v5 = *(a1 + 16);
    v7 = *v5;
    v6 = *(v5 + 8);
    v20 = 0;
    __dst = 0;
    v22 = 0;
    v38 = &v23;
    v8 = v6 - v7;
    if (v6 != v7)
    {
      std::vector<long,TInlineBufferAllocator<long,30ul>>::__vallocate[abi:fn200100](&v20, v8 >> 3);
      v9 = __dst;
      memmove(__dst, v7, v8);
      __dst = &v9[v8];
      if (v20 != &v9[v8])
      {
        v10 = &v9[v8 - 8];
        if (v10 > v20)
        {
          v11 = v20 + 8;
          do
          {
            v12 = *(v11 - 1);
            *(v11 - 1) = *v10;
            *v10 = v12;
            v10 -= 8;
            v13 = v11 >= v10;
            v11 += 8;
          }

          while (!v13);
        }
      }
    }

    std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](&v20, *(a1 + 24));
    v14 = __dst;
    if (v20 == __dst)
    {
      __break(1u);
    }

    v15 = v20 + 8;
    **(a1 + 24) = *v20;
    if (v15 != v14)
    {
      memmove(**(a1 + 16), v15, v14 - v15);
    }

    v19 = &v20;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v19);
    v2 = *(a1 + 8);
    v3 = *(v2 + 6);
  }

  __dst = 0xAAAAAAAAAAAAAAAALL;
  v16 = TRunGlue::length(v2);
  v20 = v2;
  LODWORD(__dst) = v3;
  v17 = -1;
  v22 = -1;
  *&v23 = v16;
  *(&v23 + 1) = -1;
  v18 = TRunGlue::length(v2);
  *&v24 = v18;
  *&v25 = -1;
  *(&v25 + 1) = -1;
  *&v26 = 0;
  if (v3 < 0)
  {
    v22 = v16;
    *&v23 = -1;
    *(&v23 + 1) = v18;
    *&v24 = -1;
    v17 = v16;
  }

  *(&v24 + 1) = v17;
  TGlyphIterator::DoLigature(&v20, **(a1 + 24), **(a1 + 32), **(a1 + 16), (*(*(a1 + 16) + 8) - **(a1 + 16)) >> 3, 0);
}

char *std::vector<long,TInlineBufferAllocator<long,30ul>>::insert(void *a1, char *__src, void *a3)
{
  v4 = __src;
  v6 = a1[1];
  v7 = a1[2];
  if (v6 >= v7)
  {
    v10 = *a1;
    v11 = (&v6[-*a1] >> 3) + 1;
    if (v11 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v12 = &__src[-v10];
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
    v16 = (a1 + 3);
    v29 = a1 + 3;
    if (v14)
    {
      v17 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<long,30ul>>(v16, v14);
    }

    else
    {
      v17 = 0;
    }

    v26 = v17;
    v27 = v17 + 8 * v15;
    *&v28 = v27;
    *(&v28 + 1) = v17 + 8 * v14;
    std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::emplace_back<long>(&v26, a3);
    v18 = v27;
    memcpy(v28, v4, a1[1] - v4);
    v19 = *a1;
    v20 = v27;
    *&v28 = v28 + a1[1] - v4;
    a1[1] = v4;
    v21 = v4 - v19;
    v22 = (v20 - (v4 - v19));
    memcpy(v22, v19, v21);
    v23 = *a1;
    *a1 = v22;
    v24 = a1[2];
    *(a1 + 1) = v28;
    *&v28 = v23;
    *(&v28 + 1) = v24;
    v26 = v23;
    v27 = v23;
    std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(&v26);
    return v18;
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

void TGlyphIterator::DoLigature(TRunGlue **this, int64_t a2, uint64_t a3, int64_t *a4, uint64_t a5, OTL::ClassDefTable **a6)
{
  v8 = this;
  v9 = *this;
  if (a6)
  {
    if (*(v9 + 18))
    {
      TRunGlue::FocusOnIndex(*this, a2);
      v10 = (*(v9 + 21) + 2 * (a2 - *(v9 + 19)));
      v9 = *v8;
    }

    else
    {
      v10 = (*(v9 + 21) + 2 * *(v9 + 19) + 2 * a2);
    }

    v11 = OTL::ClassDefTable::ClassOf(a6[2], *v10);
  }

  else
  {
    v11 = 3;
  }

  v12 = v11 == 3;
  TRunGlue::SetGlyphID<true>(v9, a2, a3);
  GlyphProps = TRunGlue::GetGlyphProps(*v8, a2);
  v14 = v11 == 1;
  v58 = v8;
  v50 = a5;
  if (a5)
  {
    v15 = v11 == 1;
    v51 = GlyphProps;
    v16 = 0;
    v18 = a4;
    v17 = a6;
    do
    {
      v20 = *v18++;
      v19 = v20;
      v21 = TRunGlue::GetGlyphProps(*v8, v20);
      v56 = v21;
      if ((v21 & 0x10000000) != 0)
      {
        v22 = HIBYTE(v21);
      }

      else
      {
        LOBYTE(v22) = 1;
      }

      v23 = *v8;
      if (v17)
      {
        if (*(v23 + 18))
        {
          TRunGlue::FocusOnIndex(*v8, a2);
          v17 = a6;
          v24 = (*(v23 + 21) + 2 * (a2 - *(v23 + 19)));
          v23 = *v8;
        }

        else
        {
          v24 = (*(v23 + 21) + 2 * *(v23 + 19) + 2 * a2);
        }

        v25 = OTL::ClassDefTable::ClassOf(v17[2], *v24) == 3;
      }

      else
      {
        v25 = 1;
      }

      v16 += v22;
      TRunGlue::Delete(v23, v19, 4096);
      v15 &= v25;
      v12 &= v25;
      --a5;
      v8 = v58;
    }

    while (a5);
    GlyphProps = v51;
    v14 = v15;
    v26 = v56;
  }

  else
  {
    v16 = 0;
    v26 = GlyphProps;
  }

  v27 = v26 & 8 | GlyphProps & 0xFFFFFFF7;
  if (v12)
  {
    if (v27 != GlyphProps)
    {
      v28 = *v58;

      TRunGlue::SetGlyphProps(v28, a2, v27);
    }
  }

  else
  {
    v29 = GlyphProps >> 29;
    if ((GlyphProps & 0x10000000) != 0)
    {
      v30 = HIBYTE(GlyphProps) & 0xF;
    }

    else
    {
      v30 = 1;
    }

    v57 = GlyphProps >> 29;
    if (!v14)
    {
      v31 = *(*v58 + 7);
      LODWORD(v27) = (((v30 + v16) & 0xF) << 24) | (v31 << 29) | ((v26 & 8) + (GlyphProps & 0xFFFFFFF7)) & 0xFFFFFF | 0x10000000;
      do
      {
        ++v31;
        LODWORD(v27) = v27 + 0x20000000;
        v29 = v31 & 7;
      }

      while ((v31 & 7) == 0);
      *(*v58 + 7) = v31;
    }

    v32 = v27 & 0xFFFFEFFF;
    if (v32 != GlyphProps)
    {
      TRunGlue::SetGlyphProps(*v58, a2, v32);
    }

    v33 = *(v58 + 2) + a2;
    if (v33 >= 0 && TRunGlue::length(*v58) > v33)
    {
      v34 = -v30;
      if (v50)
      {
        v35 = 0;
        v36 = v30;
        do
        {
          v37 = v58[3];
          if (v33 == v37)
          {
            break;
          }

          v55 = v34;
          v38 = v30 + v34;
          v39 = v58;
          while (1)
          {
            v40 = *v39;
            if (v33 == a4[v35])
            {
              break;
            }

            if (((TRunGlue::IsDeleted(v40, v33) | v14) & 1) == 0)
            {
              v41 = TRunGlue::GetGlyphProps(*v58, v33);
              v42 = (v41 >> 28) & 1;
              if ((v41 & 0xF000000) == 0)
              {
                v42 = 1;
              }

              if (v42)
              {
                v43 = v36;
              }

              else
              {
                v43 = HIBYTE(v41) & 0xF;
              }

              if (v36 < v43)
              {
                LOBYTE(v43) = v36;
              }

              TRunGlue::SetGlyphProps(*v58, v33, (((v38 + v43) & 0xF) << 24) | (v29 << 29) | v41 & 0xFFFFFF);
            }

            v39 = v58;
            v33 += *(v58 + 2);
            if (v33 == v37)
            {
              v33 = v37;
              LOBYTE(v34) = v55;
              goto LABEL_59;
            }
          }

          v44 = TRunGlue::GetGlyphProps(v40, v33);
          v57 = v44 >> 29;
          v36 = (v44 & 0x10000000) != 0 ? HIBYTE(v44) & 0xF : 1;
          LOBYTE(v30) = v36 + v30;
          v33 += *(v58 + 2);
          ++v35;
          v34 = -v36;
        }

        while (v35 != v50);
      }

      else
      {
        v36 = v30;
      }

LABEL_59:
      if (v57)
      {
        v45 = v58[3];
        if (v33 != v45)
        {
          v46 = v34 + v30;
          do
          {
            if ((TRunGlue::IsDeleted(*v58, v33) & 1) == 0)
            {
              v47 = TRunGlue::GetGlyphProps(*v58, v33);
              if (v57 != v47 >> 29 || (v47 & 0x10000000) != 0)
              {
                return;
              }

              v49 = HIBYTE(v47) & 0xF;
              if (v36 < v49)
              {
                LOBYTE(v49) = v36;
              }

              TRunGlue::SetGlyphProps(*v58, v33, (((v46 + v49) & 0xF) << 24) | (v29 << 29) | v47 & 0xFFFFFF);
            }

            v33 += *(v58 + 2);
          }

          while (v33 != v45);
        }
      }
    }
  }
}

void TRunGlue::SetGlyphProps(TRunGlue *this, int64_t a2, uint64_t a3)
{
  if (*(this + 18))
  {
    TRunGlue::FocusOnIndex(this, a2);
    v6 = *(this + 18);
    v7 = *(v6 + 216);
    v8 = a2 - *(this + 19) + *(v6 + 200);

    [v7 setProps:a3 atIndex:v8];
    return;
  }

  v9 = *(this + 19) + a2;
  v10 = *(this + 51);
  if (v10)
  {
LABEL_8:
    *(v10 + 4 * v9) = a3;
    return;
  }

  if ((a3 & 0xFFFFFFDF) != 0)
  {
    TRunGlue::InitPropertiesFromDeletedGlyphs(this);
    v10 = *(this + 51);
    goto LABEL_8;
  }

  v11 = a3 != 0;
  v12 = *(this + 19) + a2;

  TRunGlue::SetDeletedGlyphsBit(this, v12, v11);
}

void TRunGlue::InitPropertiesFromDeletedGlyphs(TRunGlue *this)
{
  v2 = TRunGlue::length(this);
  std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::resize(this + 32, v2);
  v3 = *(this + 32);
  *(this + 51) = v3;
  v4 = *(this + 27);
  v5 = *(this + 28);
  if (v4 != v5)
  {
    v6 = *(this + 33) - v3;
    if (v6)
    {
      v7 = v6 >> 2;
      v8 = *(this + 19);
      v9 = v5 - v4;
      if (v7 <= 1)
      {
        v7 = 1;
      }

      while (1)
      {
        v10 = v8 + 7;
        if (v8 >= 0)
        {
          v10 = v8;
        }

        if (v9 <= v10 >> 3)
        {
          break;
        }

        if ((*(v4 + (v10 >> 3)) >> (v8 & 7)))
        {
          *(v3 + 4 * v8) = 32;
        }

        ++v8;
        if (!--v7)
        {
          return;
        }
      }

      __break(1u);
    }
  }
}

void std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::resize(void *a1, unint64_t a2)
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
    std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::__append(a1, a2 - v2);
  }
}

void std::vector<unsigned int,TInlineBufferAllocator<unsigned int,30ul>>::__append(uint64_t a1, unint64_t a2)
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
    v18 = 0xAAAAAAAAAAAAAAAALL;
    *&v6 = 0xAAAAAAAAAAAAAAAALL;
    *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v16 = v6;
    *v17 = v6;
    v7 = v5 - *a1;
    v8 = a2 + (v7 >> 2);
    if (v8 >> 62)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = v4 - *a1;
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

    std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::__split_buffer(&v16, v10, v7 >> 2, a1 + 24);
    v11 = v17[0];
    bzero(v17[0], 4 * a2);
    v17[0] = &v11[4 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = *(&v16 + 1) - v12;
    memcpy((*(&v16 + 1) - v12), *a1, v12);
    v14 = *a1;
    *a1 = v13;
    v15 = *(a1 + 16);
    *(a1 + 8) = *v17;
    v17[0] = v14;
    v17[1] = v15;
    *&v16 = v14;
    *(&v16 + 1) = v14;
    std::__split_buffer<unsigned int,TInlineBufferAllocator<unsigned int,30ul> &>::~__split_buffer(&v16);
  }
}

uint64_t *std::__split_buffer<long,TInlineBufferAllocator<long,30ul> &>::emplace_back<long>(uint64_t *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      v11 = &v4[-*result];
      v10 = v11 == 0;
      v12 = v11 >> 2;
      if (v10)
      {
        v13 = 1;
      }

      else
      {
        v13 = v12;
      }

      v14 = result[4];
      v27[4] = v3[4];
      v15 = std::__allocate_at_least[abi:fn200100]<TInlineBufferAllocator<long,30ul>>(v14, v13);
      v17 = v15 + 8 * (v13 >> 2);
      v19 = v3[1];
      v18 = v3[2];
      v20 = v17;
      v21 = v18 - v19;
      if (v18 != v19)
      {
        v20 = v17 + v21;
        v22 = (v15 + 8 * (v13 >> 2));
        v23 = v3[1];
        do
        {
          v24 = *v23++;
          *v22++ = v24;
          v21 -= 8;
        }

        while (v21);
      }

      v25 = *v3;
      *v3 = v15;
      v3[1] = v17;
      v27[0] = v25;
      v27[1] = v19;
      v26 = v3[3];
      v3[2] = v20;
      v3[3] = v15 + 8 * v16;
      v27[2] = v18;
      v27[3] = v26;
      result = std::__split_buffer<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul> &>::~__split_buffer(v27);
      v4 = v3[2];
    }

    else
    {
      v7 = ((v6 >> 3) + 1) / -2;
      v8 = &v5[-8 * (((v6 >> 3) + 1) / 2)];
      v9 = v4 - v5;
      if (v4 != v5)
      {
        result = memmove(&v5[-8 * (((v6 >> 3) + 1) / 2)], v5, v4 - v5);
        v5 = v3[1];
      }

      v4 = &v8[v9];
      v3[1] = &v5[8 * v7];
    }
  }

  *v4 = *a2;
  v3[2] = (v4 + 8);
  return result;
}

uint64_t TAATMorphSubtable::DoSwashSubtable(void *a1, TRunGlue *a2, int64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  v20 = a2;
  v21 = a3;
  if (a3 == a5)
  {
    return 0;
  }

  v6 = 0;
  v10 = a1 + 3;
  do
  {
    if ((TRunGlue::TGlyph::IsDeleted(&v20) & 1) == 0)
    {
      v11 = TRunGlue::TGlyph::glyphID(&v20);
      v22 = 0xAAAAAAAAAAAAAAAALL;
      v12 = a1[3];
      v13 = a1[4];
      v14 = (v10 + (v13 >> 1));
      if (v13)
      {
        v12 = *(*v14 + v12);
      }

      v15 = v12(v14, v11, &v22);
      if (v15)
      {
        if (v15 >= a6 && (v15 + 1) <= a1[12])
        {
          v17 = __rev16(*v15);
          if (*v15)
          {
            v18 = v17 == v11;
          }

          else
          {
            v18 = 1;
          }

          if (!v18)
          {
            TRunGlue::SetGlyphID<true>(v20, v21, v17);
            v6 = 1;
          }
        }
      }
    }

    ++v21;
  }

  while (v21 != a5);
  return v6;
}

uint64_t TAATMorphSubtable::DoInsertionAction(TAATMorphSubtable *this, TRunGlue *a2, unsigned int a3, int a4, int a5, const unsigned __int16 *a6, const unsigned __int16 *a7, const unsigned __int16 *a8, uint64_t a9, uint64_t a10)
{
  v10 = a6;
  v43 = *MEMORY[0x1E69E9840];
  v14 = a3;
  if (a7 <= a6)
  {
    v15 = &a6[a3];
    if (v15 >= a6 && v15 <= a8)
    {
      goto LABEL_11;
    }
  }

  v16 = a6 + 1 > a8 || a7 > a6;
  v17 = (a8 - a6) >> 1;
  if (v16)
  {
    v17 = 0;
  }

  if (v17 != a3)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_11:
  *&v18 = 0xAAAAAAAAAAAAAAAALL;
  *(&v18 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v41[3] = v18;
  v41[2] = v18;
  v41[1] = v18;
  v41[0] = v18;
  v40 = 0uLL;
  v39 = 0;
  v42 = v41;
  v19 = 0;
  if (a3)
  {
    do
    {
      v20 = *v10++;
      v21 = bswap32(v20) >> 16;
      if (v19 >= *(&v40 + 1))
      {
        v38 = 0xAAAAAAAAAAAAAAAALL;
        *&v22 = 0xAAAAAAAAAAAAAAAALL;
        *(&v22 + 1) = 0xAAAAAAAAAAAAAAAALL;
        *v36 = v22;
        v37 = v22;
        v23 = (v19 - v39) >> 1;
        if (v23 <= -2)
        {
          std::__throw_bad_array_new_length[abi:fn200100]();
        }

        if (*(&v40 + 1) - v39 <= (v23 + 1))
        {
          v24 = v23 + 1;
        }

        else
        {
          v24 = *(&v40 + 1) - v39;
        }

        if (*(&v40 + 1) - v39 >= 0x7FFFFFFFFFFFFFFEuLL)
        {
          v25 = 0x7FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v25 = v24;
        }

        std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::__split_buffer(v36, v25, v23, v41);
        v26 = v37;
        *v37 = v21;
        *&v37 = v26 + 2;
        v27 = (*&v36[8] - (v40 - v39));
        memcpy(v27, v39, v40 - v39);
        v28 = v39;
        v29 = *(&v40 + 1);
        v39 = v27;
        v35 = v37;
        v40 = v37;
        *&v37 = v28;
        *(&v37 + 1) = v29;
        *v36 = v28;
        *&v36[8] = v28;
        std::__split_buffer<unsigned short,TInlineBufferAllocator<unsigned short,30ul> &>::~__split_buffer(v36);
        v19 = v35;
      }

      else
      {
        *v19 = v21;
        v19 += 2;
      }

      *&v40 = v19;
      --v14;
    }

    while (v14);
    v30 = v39;
  }

  else
  {
    v30 = 0;
  }

  v36[0] = 0;
  v31 = TRunGlue::DoGlyphInsertion(a2, v30, ((v19 - v30) >> 1), a4, a5, a9, a10, 0, v36);
  if (v36[0])
  {
    v32 = -1;
  }

  else
  {
    v32 = -2;
  }

  if (v31)
  {
    v33 = 3;
  }

  else
  {
    v33 = v32;
  }

  *v36 = &v39;
  std::vector<unsigned short,TInlineBufferAllocator<unsigned short,30ul>>::__destroy_vector::operator()[abi:fn200100](v36);
  return v33;
}

uint64_t TAATMorphSubtable::DoRearrangementAction(TAATMorphSubtable *this, TRunGlue *a2, unsigned int a3, uint64_t a4, uint64_t a5)
{
  v149 = *MEMORY[0x1E69E9840];
  v7 = *(this + 3);
  if (v7 >= 0)
  {
    v8 = a5;
  }

  else
  {
    v8 = a4;
  }

  if (v7 >= 0)
  {
    v9 = a4;
  }

  else
  {
    v9 = a5;
  }

  v10 = v8 - v9;
  if (a3 > 0xF)
  {
    goto LABEL_18;
  }

  if (((1 << a3) & 0xF8) != 0)
  {
    if (v10 < 1)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_19;
  }

  if (((1 << a3) & 0xF00) != 0)
  {
    if (v10 < 2)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_19;
  }

  if (((1 << a3) & 0xF000) == 0)
  {
LABEL_18:
    if (a3 - 1 < 2 && v10 < 0)
    {
      return 0xFFFFFFFFLL;
    }

    goto LABEL_19;
  }

  if (v10 < 3)
  {
    return 0xFFFFFFFFLL;
  }

LABEL_19:
  if (v8 >= v9)
  {
    v11 = v9;
    do
    {
      TRunGlue::ClearGlyphCombiningMark(a2, v11++);
    }

    while (v8 + 1 != v11);
  }

  if (!*(a2 + 18))
  {
    v134 = 0u;
    v135 = 0u;
    *__p = 0u;
    switch(a3)
    {
      case 1u:
        TAATMorphSubtable::push(a2, __p, v9);
        v150.location = v9 + 1;
        v150.length = v8 - v9;
        TRunGlue::MoveGlyphs(a2, v150, v9);
        goto LABEL_94;
      case 2u:
        TAATMorphSubtable::push(a2, __p, v8);
        v155.location = v9;
        v155.length = v8 - v9;
        TRunGlue::MoveGlyphs(a2, v155, v9 + 1);
        goto LABEL_84;
      case 3u:
        TAATMorphSubtable::push(a2, __p, v9);
        TAATMorphSubtable::push(a2, __p, v8);
        goto LABEL_92;
      case 4u:
        TAATMorphSubtable::push(a2, __p, v9);
        TAATMorphSubtable::push(a2, __p, v9 + 1);
        v153.location = v9 + 2;
        v153.length = v8 + ~v9;
        TRunGlue::MoveGlyphs(a2, v153, v9);
        goto LABEL_80;
      case 5u:
        TAATMorphSubtable::push(a2, __p, v9);
        TAATMorphSubtable::push(a2, __p, v9 + 1);
        v151.location = v9 + 2;
        v151.length = v8 + ~v9;
        TRunGlue::MoveGlyphs(a2, v151, v9);
        goto LABEL_89;
      case 6u:
        TAATMorphSubtable::push(a2, __p, v8 - 1);
        TAATMorphSubtable::push(a2, __p, v8);
        v156.length = v8 + ~v9;
        v156.location = v9;
        TRunGlue::MoveGlyphs(a2, v156, v9 + 2);
        TAATMorphSubtable::pop(a2, __p, v9 + 1);
LABEL_84:
        v8 = v9;
        goto LABEL_94;
      case 7u:
        TAATMorphSubtable::push(a2, __p, v8 - 1);
        TAATMorphSubtable::push(a2, __p, v8);
        v157.length = v8 + ~v9;
        v157.location = v9;
        TRunGlue::MoveGlyphs(a2, v157, v9 + 2);
        TAATMorphSubtable::pop(a2, __p, v9);
        v8 = v9 + 1;
        goto LABEL_94;
      case 8u:
        TAATMorphSubtable::push(a2, __p, v9);
        TAATMorphSubtable::push(a2, __p, v8);
        TAATMorphSubtable::push(a2, __p, v8 - 1);
        v154.length = v10 - 2;
        v154.location = v9 + 1;
        TRunGlue::MoveGlyphs(a2, v154, v9 + 2);
        TAATMorphSubtable::pop(a2, __p, v9);
        v97 = v9 + 1;
        goto LABEL_90;
      case 9u:
        TAATMorphSubtable::push(a2, __p, v9);
        TAATMorphSubtable::push(a2, __p, v8);
        TAATMorphSubtable::push(a2, __p, v8 - 1);
        v159.length = v10 - 2;
        v159.location = v9 + 1;
        TRunGlue::MoveGlyphs(a2, v159, v9 + 2);
        TAATMorphSubtable::pop(a2, __p, v9 + 1);
LABEL_92:
        v96 = a2;
        v97 = v9;
        goto LABEL_93;
      case 0xAu:
        TAATMorphSubtable::push(a2, __p, v9);
        TAATMorphSubtable::push(a2, __p, v9 + 1);
        TAATMorphSubtable::push(a2, __p, v8);
        v152.length = v10 - 2;
        v152.location = v9 + 2;
        TRunGlue::MoveGlyphs(a2, v152, v9 + 1);
        TAATMorphSubtable::pop(a2, __p, v9);
LABEL_80:
        TAATMorphSubtable::pop(a2, __p, v8--);
        goto LABEL_94;
      case 0xBu:
        TAATMorphSubtable::push(a2, __p, v9);
        TAATMorphSubtable::push(a2, __p, v9 + 1);
        TAATMorphSubtable::push(a2, __p, v8);
        v158.length = v10 - 2;
        v158.location = v9 + 2;
        TRunGlue::MoveGlyphs(a2, v158, v9 + 1);
        TAATMorphSubtable::pop(a2, __p, v9);
LABEL_89:
        v97 = v8 - 1;
LABEL_90:
        v96 = a2;
        goto LABEL_93;
      case 0xCu:
        TAATMorphSubtable::push(a2, __p, v9);
        TAATMorphSubtable::push(a2, __p, v9 + 1);
        v93 = v8 - 1;
        TAATMorphSubtable::push(a2, __p, v8 - 1);
        TAATMorphSubtable::push(a2, __p, v8);
        TAATMorphSubtable::pop(a2, __p, v9 + 1);
        v94 = a2;
        v95 = v9;
        goto LABEL_86;
      case 0xDu:
        TAATMorphSubtable::push(a2, __p, v9);
        TAATMorphSubtable::push(a2, __p, v9 + 1);
        v90 = v8 - 1;
        TAATMorphSubtable::push(a2, __p, v8 - 1);
        TAATMorphSubtable::push(a2, __p, v8);
        TAATMorphSubtable::pop(a2, __p, v9 + 1);
        v92 = a2;
        v91 = v9;
        goto LABEL_75;
      case 0xEu:
        TAATMorphSubtable::push(a2, __p, v9);
        TAATMorphSubtable::push(a2, __p, v9 + 1);
        v93 = v8 - 1;
        TAATMorphSubtable::push(a2, __p, v8 - 1);
        TAATMorphSubtable::push(a2, __p, v8);
        TAATMorphSubtable::pop(a2, __p, v9);
        v95 = v9 + 1;
        v94 = a2;
LABEL_86:
        TAATMorphSubtable::pop(v94, __p, v95);
        TAATMorphSubtable::pop(a2, __p, v8);
        v8 = v93;
        goto LABEL_94;
      case 0xFu:
        TAATMorphSubtable::push(a2, __p, v9);
        TAATMorphSubtable::push(a2, __p, v9 + 1);
        v90 = v8 - 1;
        TAATMorphSubtable::push(a2, __p, v8 - 1);
        TAATMorphSubtable::push(a2, __p, v8);
        TAATMorphSubtable::pop(a2, __p, v9);
        v91 = v9 + 1;
        v92 = a2;
LABEL_75:
        TAATMorphSubtable::pop(v92, __p, v91);
        v96 = a2;
        v97 = v90;
LABEL_93:
        TAATMorphSubtable::pop(v96, __p, v97);
LABEL_94:
        TAATMorphSubtable::pop(a2, __p, v8);
        v99 = __p[1];
        v98 = v134;
        break;
      default:
        v98 = 0;
        v99 = 0;
        break;
    }

    if ((v98 - v99) < 0x11)
    {
      v100 = v99;
    }

    else
    {
      v100 = __p[1];
      v101 = v98 - __p[1];
      do
      {
        operator delete(*v99);
        ++v100;
        v101 -= 8;
        v99 = v100;
      }

      while (v101 > 0x10);
      __p[1] = v100;
    }

    while (v100 != v98)
    {
      v102 = *v100++;
      operator delete(v102);
    }

    if (__p[0])
    {
      operator delete(__p[0]);
    }

    return 4;
  }

  v127 = v9;
  v12 = TRunGlue::EditRun(a2, &v127);
  v126 = v8;
  v13 = TRunGlue::EditRun(a2, &v126);
  result = 4294967294;
  if (v12 && v13)
  {
    if (v12 != v13)
    {
      v146 = unk_18475A300;
      v147 = xmmword_18475A310;
      v148 = unk_18475A320;
      v142 = unk_18475A2C0;
      v143 = xmmword_18475A2D0;
      v144 = unk_18475A2E0;
      v145 = xmmword_18475A2F0;
      v138 = unk_18475A280;
      v139 = xmmword_18475A290;
      v140 = unk_18475A2A0;
      v141 = xmmword_18475A2B0;
      *__p = xmmword_18475A230;
      v134 = unk_18475A240;
      v135 = xmmword_18475A250;
      v136 = unk_18475A260;
      v137 = xmmword_18475A270;
      switch(a3)
      {
        case 1u:
          v132 = v9;
          v15 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v15 + 192), v132, v128);
          *__p = *v128;
          v134 = v129;
          v135 = v130;
          v136 = v131;
          v160.location = v8 - v9;
          v160.length = v9;
          TAATMorphSubtable::MoveInStorage(a2, (v9 + 1), v160);
          goto LABEL_65;
        case 2u:
          v132 = v8;
          v65 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v65 + 192), v132, v128);
          *__p = *v128;
          v134 = v129;
          v135 = v130;
          v136 = v131;
          v165.length = v9 + 1;
          v165.location = v8 - v9;
          TAATMorphSubtable::MoveInStorage(a2, v9, v165);
          goto LABEL_57;
        case 3u:
          v132 = v9;
          v55 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v55 + 192), v132, v128);
          *__p = *v128;
          v134 = v129;
          v135 = v130;
          v136 = v131;
          v132 = v8;
          v56 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v56 + 192), v132, v128);
          v137 = *v128;
          v138 = v129;
          v139 = v130;
          v140 = v131;
          v128[0] = v9;
          goto LABEL_64;
        case 4u:
          v132 = v9;
          v57 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v57 + 192), v132, v128);
          *__p = *v128;
          v134 = v129;
          v135 = v130;
          v136 = v131;
          v132 = v9 + 1;
          v58 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v58 + 192), v132, v128);
          v137 = *v128;
          v138 = v129;
          v139 = v130;
          v140 = v131;
          v163.location = v8 + ~v9;
          v163.length = v9;
          TAATMorphSubtable::MoveInStorage(a2, (v9 + 2), v163);
          v128[0] = v8;
          v59 = TRunGlue::EditRun(a2, v128);
          v53 = v128[0];
          v54 = v59 + 192;
          goto LABEL_53;
        case 5u:
          v132 = v9;
          v40 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v40 + 192), v132, v128);
          *__p = *v128;
          v134 = v129;
          v135 = v130;
          v136 = v131;
          v132 = v9 + 1;
          v41 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v41 + 192), v132, v128);
          v137 = *v128;
          v138 = v129;
          v139 = v130;
          v140 = v131;
          v161.location = v8 + ~v9;
          v161.length = v9;
          TAATMorphSubtable::MoveInStorage(a2, (v9 + 2), v161);
          v128[0] = v8 - 1;
          goto LABEL_64;
        case 6u:
          v132 = v8 - 1;
          v66 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v66 + 192), v132, v128);
          *__p = *v128;
          v134 = v129;
          v135 = v130;
          v136 = v131;
          v132 = v8;
          v67 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v67 + 192), v132, v128);
          v137 = *v128;
          v138 = v129;
          v139 = v130;
          v140 = v131;
          v166.location = v8 + ~v9;
          v166.length = v9 + 2;
          TAATMorphSubtable::MoveInStorage(a2, v9, v166);
          v128[0] = v9 + 1;
          v68 = TRunGlue::EditRun(a2, v128);
          TStorageRange::SetGlyphEntry(v68 + 192, v128[0], &v137);
LABEL_57:
          v128[0] = v9;
          goto LABEL_66;
        case 7u:
          v132 = v8 - 1;
          v76 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v76 + 192), v132, v128);
          *__p = *v128;
          v134 = v129;
          v135 = v130;
          v136 = v131;
          v132 = v8;
          v77 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v77 + 192), v132, v128);
          v137 = *v128;
          v138 = v129;
          v139 = v130;
          v140 = v131;
          v167.location = v8 + ~v9;
          v167.length = v9 + 2;
          TAATMorphSubtable::MoveInStorage(a2, v9, v167);
          v128[0] = v9;
          v78 = TRunGlue::EditRun(a2, v128);
          TStorageRange::SetGlyphEntry(v78 + 192, v128[0], &v137);
          v60 = v9 + 1;
          goto LABEL_61;
        case 8u:
          v132 = v9;
          v61 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v61 + 192), v132, v128);
          *__p = *v128;
          v134 = v129;
          v135 = v130;
          v136 = v131;
          v132 = v8;
          v62 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v62 + 192), v132, v128);
          v137 = *v128;
          v138 = v129;
          v139 = v130;
          v140 = v131;
          v132 = v8 - 1;
          v63 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v63 + 192), v132, v128);
          v141 = *v128;
          v142 = v129;
          v143 = v130;
          v144 = v131;
          v164.location = v10 - 2;
          v164.length = v9 + 2;
          TAATMorphSubtable::MoveInStorage(a2, (v9 + 1), v164);
          v128[0] = v9;
          v64 = TRunGlue::EditRun(a2, v128);
          TStorageRange::SetGlyphEntry(v64 + 192, v128[0], &v141);
          v128[0] = v9 + 1;
          goto LABEL_64;
        case 9u:
          v132 = v9;
          v83 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v83 + 192), v132, v128);
          *__p = *v128;
          v134 = v129;
          v135 = v130;
          v136 = v131;
          v132 = v8;
          v84 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v84 + 192), v132, v128);
          v137 = *v128;
          v138 = v129;
          v139 = v130;
          v140 = v131;
          v132 = v8 - 1;
          v85 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v85 + 192), v132, v128);
          v141 = *v128;
          v142 = v129;
          v143 = v130;
          v144 = v131;
          v169.location = v10 - 2;
          v169.length = v9 + 2;
          TAATMorphSubtable::MoveInStorage(a2, (v9 + 1), v169);
          v128[0] = v9 + 1;
          v86 = TRunGlue::EditRun(a2, v128);
          TStorageRange::SetGlyphEntry(v86 + 192, v128[0], &v141);
          v128[0] = v9;
          goto LABEL_64;
        case 0xAu:
          v132 = v9;
          v48 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v48 + 192), v132, v128);
          *__p = *v128;
          v134 = v129;
          v135 = v130;
          v136 = v131;
          v132 = v9 + 1;
          v49 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v49 + 192), v132, v128);
          v137 = *v128;
          v138 = v129;
          v139 = v130;
          v140 = v131;
          v132 = v8;
          v50 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v50 + 192), v132, v128);
          v141 = *v128;
          v142 = v129;
          v143 = v130;
          v144 = v131;
          v162.location = v10 - 2;
          v162.length = v9 + 1;
          TAATMorphSubtable::MoveInStorage(a2, (v9 + 2), v162);
          v128[0] = v9;
          v51 = TRunGlue::EditRun(a2, v128);
          TStorageRange::SetGlyphEntry(v51 + 192, v128[0], &v141);
          v128[0] = v8;
          v52 = TRunGlue::EditRun(a2, v128);
          v53 = v128[0];
          v54 = v52 + 192;
LABEL_53:
          TStorageRange::SetGlyphEntry(v54, v53, &v137);
          v60 = v8 - 1;
LABEL_61:
          v128[0] = v60;
          goto LABEL_66;
        case 0xBu:
          v132 = v9;
          v79 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v79 + 192), v132, v128);
          *__p = *v128;
          v134 = v129;
          v135 = v130;
          v136 = v131;
          v132 = v9 + 1;
          v80 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v80 + 192), v132, v128);
          v137 = *v128;
          v138 = v129;
          v139 = v130;
          v140 = v131;
          v132 = v8;
          v81 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v81 + 192), v132, v128);
          v141 = *v128;
          v142 = v129;
          v143 = v130;
          v144 = v131;
          v168.location = v10 - 2;
          v168.length = v9 + 1;
          TAATMorphSubtable::MoveInStorage(a2, (v9 + 2), v168);
          v128[0] = v9;
          v82 = TRunGlue::EditRun(a2, v128);
          TStorageRange::SetGlyphEntry(v82 + 192, v128[0], &v141);
          v128[0] = v8 - 1;
          goto LABEL_64;
        case 0xCu:
          v132 = v9;
          v34 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v34 + 192), v132, v128);
          *__p = *v128;
          v134 = v129;
          v135 = v130;
          v136 = v131;
          v132 = v9 + 1;
          v35 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v35 + 192), v132, v128);
          v137 = *v128;
          v138 = v129;
          v139 = v130;
          v140 = v131;
          v36 = v8 - 1;
          v132 = v8 - 1;
          v37 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v37 + 192), v132, v128);
          v141 = *v128;
          v142 = v129;
          v143 = v130;
          v144 = v131;
          v132 = v8;
          v38 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v38 + 192), v132, v128);
          v145 = *v128;
          v146 = v129;
          v147 = v130;
          v148 = v131;
          v128[0] = v9 + 1;
          v39 = TRunGlue::EditRun(a2, v128);
          TStorageRange::SetGlyphEntry(v39 + 192, v128[0], &v145);
          v128[0] = v9;
          goto LABEL_59;
        case 0xDu:
          v132 = v9;
          v42 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v42 + 192), v132, v128);
          *__p = *v128;
          v134 = v129;
          v135 = v130;
          v136 = v131;
          v132 = v9 + 1;
          v43 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v43 + 192), v132, v128);
          v137 = *v128;
          v138 = v129;
          v139 = v130;
          v140 = v131;
          v132 = v8 - 1;
          v44 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v44 + 192), v132, v128);
          v141 = *v128;
          v142 = v129;
          v143 = v130;
          v144 = v131;
          v132 = v8;
          v45 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v45 + 192), v132, v128);
          v145 = *v128;
          v146 = v129;
          v147 = v130;
          v148 = v131;
          v128[0] = v9 + 1;
          v46 = TRunGlue::EditRun(a2, v128);
          TStorageRange::SetGlyphEntry(v46 + 192, v128[0], &v145);
          v128[0] = v9;
          v47 = TRunGlue::EditRun(a2, v128);
          TStorageRange::SetGlyphEntry(v47 + 192, v128[0], &v141);
          v128[0] = v8 - 1;
          goto LABEL_64;
        case 0xEu:
          v132 = v9;
          v69 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v69 + 192), v132, v128);
          *__p = *v128;
          v134 = v129;
          v135 = v130;
          v136 = v131;
          v132 = v9 + 1;
          v70 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v70 + 192), v132, v128);
          v137 = *v128;
          v138 = v129;
          v139 = v130;
          v140 = v131;
          v36 = v8 - 1;
          v132 = v8 - 1;
          v71 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v71 + 192), v132, v128);
          v141 = *v128;
          v142 = v129;
          v143 = v130;
          v144 = v131;
          v132 = v8;
          v72 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v72 + 192), v132, v128);
          v145 = *v128;
          v146 = v129;
          v147 = v130;
          v148 = v131;
          v128[0] = v9;
          v73 = TRunGlue::EditRun(a2, v128);
          TStorageRange::SetGlyphEntry(v73 + 192, v128[0], &v145);
          v128[0] = v9 + 1;
LABEL_59:
          v74 = TRunGlue::EditRun(a2, v128);
          TStorageRange::SetGlyphEntry(v74 + 192, v128[0], &v141);
          v128[0] = v8;
          v75 = TRunGlue::EditRun(a2, v128);
          TStorageRange::SetGlyphEntry(v75 + 192, v128[0], &v137);
          v128[0] = v36;
          goto LABEL_66;
        case 0xFu:
          v132 = v9;
          v28 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v28 + 192), v132, v128);
          *__p = *v128;
          v134 = v129;
          v135 = v130;
          v136 = v131;
          v132 = v9 + 1;
          v29 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v29 + 192), v132, v128);
          v137 = *v128;
          v138 = v129;
          v139 = v130;
          v140 = v131;
          v132 = v8 - 1;
          v30 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v30 + 192), v132, v128);
          v141 = *v128;
          v142 = v129;
          v143 = v130;
          v144 = v131;
          v132 = v8;
          v31 = TRunGlue::EditRun(a2, &v132);
          TStorageRange::GetGlyphEntry((v31 + 192), v132, v128);
          v145 = *v128;
          v146 = v129;
          v147 = v130;
          v148 = v131;
          v128[0] = v9;
          v32 = TRunGlue::EditRun(a2, v128);
          TStorageRange::SetGlyphEntry(v32 + 192, v128[0], &v145);
          v128[0] = v9 + 1;
          v33 = TRunGlue::EditRun(a2, v128);
          TStorageRange::SetGlyphEntry(v33 + 192, v128[0], &v141);
          v128[0] = v8 - 1;
LABEL_64:
          v87 = TRunGlue::EditRun(a2, v128) + 192;
          TStorageRange::SetGlyphEntry(v87, v128[0], &v137);
LABEL_65:
          v128[0] = v8;
LABEL_66:
          v88 = TRunGlue::EditRun(a2, v128);
          TStorageRange::SetGlyphEntry(v88 + 192, v128[0], __p);
          break;
        default:
          break;
      }

      if (v8 >= v9)
      {
        v89 = v8 + 1;
        do
        {
          __p[0] = v9;
          *(TRunGlue::EditRun(a2, __p) + 256) = 2;
          ++v9;
        }

        while (v89 != v9);
      }

      return 4;
    }

    v16 = v126;
    v17 = v127;
    if (a3 != 1)
    {
      v19 = *(v12 + 216);
      goto LABEL_41;
    }

    v18 = *(*(atomic_load_explicit((v12 + 56), memory_order_acquire) + 40) + 408);
    if (!(*(*v18 + 720))(v18))
    {
      [*(v12 + 216) initGlyphStackWithCapacity:4];
LABEL_44:
      [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17];
      [*(v12 + 216) moveGlyphsFromRange:*(v12 + 200) + v17 + 1 toIndex:v16 - v17];
LABEL_139:
      v124 = *(v12 + 216);
      v125 = *(v12 + 200) + v16;
LABEL_140:
      [v124 popGlyphAtIndex:v125];
LABEL_141:
      [*(v12 + 216) disposeGlyphStack];
      *(v12 + 256) = 2;
      return 4;
    }

    v19 = *(v12 + 216);
    v20 = v19[2];
    v21 = *(v12 + 200);
    if (v17 + 1 < v16)
    {
      v22 = ~v17 + v16;
      v23 = v21 + v17 + 1;
      while (*(v20 + 2 * v23) == -1 || (*(v19[5] + 4 * v23) & 0x20) != 0)
      {
        ++v23;
        if (!--v22)
        {
          goto LABEL_38;
        }
      }

LABEL_41:
      [v19 initGlyphStackWithCapacity:4];
      switch(a3)
      {
        case 1u:
          goto LABEL_44;
        case 2u:
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v16];
          [*(v12 + 216) moveGlyphsFromRange:*(v12 + 200) + v17 toIndex:{v16 - v17, *(v12 + 200) + v17 + 1}];
          goto LABEL_130;
        case 3u:
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17];
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v16];
          goto LABEL_137;
        case 4u:
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17];
          [*(v12 + 216) pushGlyphAtIndex:v17 + *(v12 + 200) + 1];
          [*(v12 + 216) moveGlyphsFromRange:*(v12 + 200) + v17 + 2 toIndex:v16 + ~v17];
          goto LABEL_127;
        case 5u:
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17];
          [*(v12 + 216) pushGlyphAtIndex:v17 + *(v12 + 200) + 1];
          [*(v12 + 216) moveGlyphsFromRange:*(v12 + 200) + v17 + 2 toIndex:v16 + ~v17];
          goto LABEL_135;
        case 6u:
          [*(v12 + 216) pushGlyphAtIndex:v16 + *(v12 + 200) - 1];
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v16];
          [*(v12 + 216) moveGlyphsFromRange:*(v12 + 200) + v17 toIndex:{v16 + ~v17, *(v12 + 200) + v17 + 2}];
          [*(v12 + 216) popGlyphAtIndex:v17 + *(v12 + 200) + 1];
LABEL_130:
          v124 = *(v12 + 216);
          v125 = *(v12 + 200) + v17;
          goto LABEL_140;
        case 7u:
          [*(v12 + 216) pushGlyphAtIndex:v16 + *(v12 + 200) - 1];
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v16];
          [*(v12 + 216) moveGlyphsFromRange:*(v12 + 200) + v17 toIndex:{v16 + ~v17, *(v12 + 200) + v17 + 2}];
          [*(v12 + 216) popGlyphAtIndex:*(v12 + 200) + v17];
          v124 = *(v12 + 216);
          v125 = v17 + *(v12 + 200) + 1;
          goto LABEL_140;
        case 8u:
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17];
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v16];
          [*(v12 + 216) pushGlyphAtIndex:v16 + *(v12 + 200) - 1];
          [*(v12 + 216) moveGlyphsFromRange:*(v12 + 200) + v17 + 1 toIndex:{v16 - v17 - 2, v17 + *(v12 + 200) + 2}];
          [*(v12 + 216) popGlyphAtIndex:*(v12 + 200) + v17];
          v122 = *(v12 + 216);
          v123 = *(v12 + 200) + v17 + 1;
          goto LABEL_138;
        case 9u:
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17];
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v16];
          [*(v12 + 216) pushGlyphAtIndex:v16 + *(v12 + 200) - 1];
          [*(v12 + 216) moveGlyphsFromRange:*(v12 + 200) + v17 + 1 toIndex:{v16 - v17 - 2, v17 + *(v12 + 200) + 2}];
          [*(v12 + 216) popGlyphAtIndex:*(v12 + 200) + v17 + 1];
LABEL_137:
          v122 = *(v12 + 216);
          v123 = *(v12 + 200) + v17;
          goto LABEL_138;
        case 0xAu:
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17];
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17 + 1];
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v16];
          [*(v12 + 216) moveGlyphsFromRange:v17 + *(v12 + 200) + 2 toIndex:{v16 - v17 - 2, *(v12 + 200) + v17 + 1}];
          [*(v12 + 216) popGlyphAtIndex:*(v12 + 200) + v17];
LABEL_127:
          [*(v12 + 216) popGlyphAtIndex:*(v12 + 200) + v16];
          v124 = *(v12 + 216);
          v125 = v16 + *(v12 + 200) - 1;
          goto LABEL_140;
        case 0xBu:
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17];
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17 + 1];
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v16];
          [*(v12 + 216) moveGlyphsFromRange:v17 + *(v12 + 200) + 2 toIndex:{v16 - v17 - 2, *(v12 + 200) + v17 + 1}];
          [*(v12 + 216) popGlyphAtIndex:*(v12 + 200) + v17];
LABEL_135:
          v122 = *(v12 + 216);
          v123 = v16 + *(v12 + 200) - 1;
          goto LABEL_138;
        case 0xCu:
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17];
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17 + 1];
          v119 = v16 - 1;
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v16 - 1];
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v16];
          [*(v12 + 216) popGlyphAtIndex:*(v12 + 200) + v17 + 1];
          v120 = *(v12 + 216);
          v121 = *(v12 + 200) + v17;
          goto LABEL_132;
        case 0xDu:
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17];
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17 + 1];
          v116 = v16 - 1;
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v16 - 1];
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v16];
          [*(v12 + 216) popGlyphAtIndex:*(v12 + 200) + v17 + 1];
          v117 = *(v12 + 216);
          v118 = *(v12 + 200) + v17;
          goto LABEL_123;
        case 0xEu:
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17];
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17 + 1];
          v119 = v16 - 1;
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v16 - 1];
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v16];
          [*(v12 + 216) popGlyphAtIndex:*(v12 + 200) + v17];
          v120 = *(v12 + 216);
          v121 = *(v12 + 200) + v17 + 1;
LABEL_132:
          [v120 popGlyphAtIndex:v121];
          [*(v12 + 216) popGlyphAtIndex:*(v12 + 200) + v16];
          v124 = *(v12 + 216);
          v125 = *(v12 + 200) + v119;
          goto LABEL_140;
        case 0xFu:
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17];
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v17 + 1];
          v116 = v16 - 1;
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v16 - 1];
          [*(v12 + 216) pushGlyphAtIndex:*(v12 + 200) + v16];
          [*(v12 + 216) popGlyphAtIndex:*(v12 + 200) + v17];
          v117 = *(v12 + 216);
          v118 = *(v12 + 200) + v17 + 1;
LABEL_123:
          [v117 popGlyphAtIndex:v118];
          v122 = *(v12 + 216);
          v123 = *(v12 + 200) + v116;
LABEL_138:
          [v122 popGlyphAtIndex:v123];
          goto LABEL_139;
        default:
          goto LABEL_141;
      }
    }

LABEL_38:
    v24 = v20 + 2 * v21;
    v25 = v19[4];
    if (v25 || (v103 = v19[3]) == 0)
    {
      v26 = v25 + 16 * v21 + 16 * v17;
      v27 = *(v26 + 8);
    }

    else
    {
      v26 = v103 + 8 * v21 + 8 * v17;
      v27 = 0.0;
    }

    v104 = *(v24 + 2 * v17);
    v105 = *v26;
    v106 = *(v19[5] + 4 * v21 + 4 * v17);
    v107 = *(v24 + 2 * v16);
    [v19 setGlyph:*(v24 + 2 * v16) atIndex:v21 + v17];
    v108 = *(v12 + 225);
    if (v107 == 0xFFFF && (v108 & 2) != 0)
    {
      *(v12 + 225) = v108 | 8;
    }

    v110 = *(v12 + 216);
    v111 = *(v110 + 32);
    if (v111 || (v114 = *(v110 + 24)) == 0)
    {
      v112 = (v111 + 16 * *(v12 + 200) + 16 * v16);
      v113 = v112[1];
    }

    else
    {
      v112 = (v114 + 8 * *(v12 + 200) + 8 * v16);
      v113 = 0;
    }

    v115 = *v112;
    TStorageRange::SetAdvance((v12 + 192), v17, *(&v113 - 1));
    [*(v12 + 216) setProps:*(*(*(v12 + 216) + 40) + 4 * *(v12 + 200) + 4 * v16) atIndex:*(v12 + 200) + v17];
    [*(v12 + 216) setGlyph:v104 atIndex:*(v12 + 200) + v16];
    if (v104 == 0xFFFF && (*(v12 + 225) & 2) != 0)
    {
      *(v12 + 225) |= 8u;
    }

    v170.width = v105;
    v170.height = v27;
    TStorageRange::SetAdvance((v12 + 192), v16, v170);
    [*(v12 + 216) setProps:v106 atIndex:*(v12 + 200) + v16];
    return 1;
  }

  return result;
}

uint64_t TAATMorphSubtable::push(TRunGlue *a1, void *a2, int64_t a3)
{
  v24 = a1;
  v25 = a3;
  v4 = TRunGlue::TGlyph::glyphID(&v24);
  Advance = TRunGlue::GetAdvance(v24, v25);
  v7 = v6;
  GlyphProps = TRunGlue::GetGlyphProps(v24, v25);
  Origin = TRunGlue::GetOrigin(v24, v25);
  v11 = v10;
  result = TRunGlue::GetStringIndex(v24, v25);
  v13 = result;
  v14 = a2[2];
  v15 = a2[1];
  if (v14 == v15)
  {
    v16 = 0;
  }

  else
  {
    v16 = 73 * ((v14 - v15) >> 3) - 1;
  }

  v17 = a2[4];
  v18 = a2[5] + v17;
  if (v16 == v18)
  {
    if (v17 < 0x49)
    {
      v19 = a2[3];
      v20 = v19 - *a2;
      if (v14 - v15 < v20)
      {
        operator new();
      }

      v21 = v20 >> 2;
      if (v19 == *a2)
      {
        v22 = 1;
      }

      else
      {
        v22 = v21;
      }

      std::allocator<TAATMorphSubtable::SimpleGlyphEntry *>::allocate_at_least[abi:fn200100](v22);
    }

    a2[4] = v17 - 73;
    v26 = *v15;
    a2[1] = v15 + 8;
    result = std::__split_buffer<TAATMorphSubtable::SimpleGlyphEntry *>::emplace_back<TAATMorphSubtable::SimpleGlyphEntry *&>(a2, &v26);
    v15 = a2[1];
    v18 = a2[5] + a2[4];
  }

  v23 = (*&v15[8 * (v18 / 0x49)] + 56 * (v18 % 0x49));
  *v23 = v4 | 0xAAAAAAAAAAAA0000;
  v23[1] = Advance;
  *(v23 + 2) = v7;
  *(v23 + 3) = GlyphProps | 0xAAAAAAAA00000000;
  v23[4] = Origin;
  *(v23 + 5) = v11;
  *(v23 + 6) = v13;
  ++a2[5];
  return result;
}

TRunGlue *TAATMorphSubtable::pop(TRunGlue *this, void *a2, int64_t a3)
{
  v3 = a2[5];
  if (v3)
  {
    v6 = this;
    v8 = a2[1];
    v7 = a2[2];
    v9 = 73 * ((v7 - v8) >> 3) - 1;
    if (v7 == v8)
    {
      v9 = 0;
    }

    v10 = v3 - 1;
    v11 = a2[4] + v10;
    v12 = (*(v8 + 8 * (v11 / 0x49)) + 56 * (v11 % 0x49));
    v13 = *v12;
    v14 = *(v12 + 1);
    v15 = *(v12 + 2);
    v16 = *(v12 + 6);
    v17 = *(v12 + 4);
    v18 = *(v12 + 5);
    v19 = *(v12 + 6);
    a2[5] = v10;
    if (v9 - v11 >= 0x92)
    {
      operator delete(*(v7 - 8));
      a2[2] -= 8;
    }

    TRunGlue::SetGlyphID<true>(v6, a3, v13);
    v21.width = v14;
    v21.height = v15;
    TRunGlue::SetAdvance(v6, a3, v21);
    TRunGlue::SetGlyphProps(v6, a3, v16);
    v22.x = v17;
    v22.y = v18;
    TRunGlue::SetOrigin(v6, a3, v22);

    return TRunGlue::SetStringIndex(v6, a3, v19);
  }

  else
  {
    __break(1u);
  }

  return this;
}

unint64_t TRunGlue::EditRun(TRunGlue *this, uint64_t *a2)
{
  result = TRunGlue::PhysicalRunIndexWithGlyphIndex(this, *a2, a2);
  if (result == -1)
  {
    return 0;
  }

  v4 = *(*this + 16);
  if (result < (*(*this + 24) - v4) >> 3)
  {
    return *(*(v4 + 8 * result) + 48);
  }

  __break(1u);
  return result;
}

TRunGlue *TAATMorphSubtable::MoveInStorage(TRunGlue *this, TRunGlue *a2, CFRange a3)
{
  length = a3.length;
  location = a3.location;
  v5 = a2;
  v6 = this;
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = -1;
  *&v14 = -1;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v15 = 0xAAAAAAAAAAAAAAAALL;
  *(&v15 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v16 = -1;
  *(&v16 + 1) = -1;
  if (a3.length - a2 >= a3.location)
  {
    if (a3.location >= 1)
    {
      do
      {
        v21 = v5;
        v11 = TRunGlue::EditRun(v6, &v21);
        TStorageRange::GetGlyphEntry((v11 + 192), v21, v17);
        v13 = *v17;
        v14 = v18;
        v15 = v19;
        v16 = v20;
        v17[0] = length;
        v12 = TRunGlue::EditRun(v6, v17);
        this = TStorageRange::SetGlyphEntry(v12 + 192, v17[0], &v13);
        ++length;
        v5 = (v5 + 1);
        --location;
      }

      while (location);
    }
  }

  else
  {
    v7 = a3.location - 1;
    if (a3.location >= 1)
    {
      do
      {
        v21 = v5 + v7;
        v8 = TRunGlue::EditRun(v6, &v21);
        TStorageRange::GetGlyphEntry((v8 + 192), v21, v17);
        v13 = *v17;
        v14 = v18;
        v15 = v19;
        v16 = v20;
        v17[0] = length + v7;
        v9 = TRunGlue::EditRun(v6, v17);
        this = TStorageRange::SetGlyphEntry(v9 + 192, v17[0], &v13);
        v10 = v7-- + 1;
      }

      while (v10 > 1);
    }
  }

  return this;
}

uint64_t TStorageRange::GetGlyphEntry@<X0>(TStorageRange *this@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = 0xAAAAAAAAAAAAAAAALL;
  a3[3] = 0xAAAAAAAAAAAAAAAALL;
  v6 = *(this + 3);
  v7 = *(this + 1);
  *a3 = *(v6[2] + 2 * v7 + 2 * a2);
  v8 = v6[4];
  if (v8 || (v11 = v6[3]) == 0)
  {
    v9 = (v8 + 16 * v7 + 16 * a2);
    v10 = v9[1];
  }

  else
  {
    v9 = (v11 + 8 * v7 + 8 * a2);
    v10 = 0;
  }

  v12 = *v9;
  v13 = v6[6];
  v14 = *(v6[5] + 4 * v7 + 4 * a2);
  a3[1] = v12;
  a3[2] = v10;
  *(a3 + 6) = v14;
  a3[4] = *(v13 + 8 * v7 + 8 * a2);
  result = [v6 attachmentCountAtIndex:v7 + a2];
  a3[5] = result;
  if ((*(this + 33) & 0x10) != 0)
  {
    result = [*(this + 3) originAtIndex:*(this + 1) + a2];
  }

  else
  {
    v16 = *MEMORY[0x1E695EFF8];
    v17 = *(MEMORY[0x1E695EFF8] + 8);
  }

  a3[6] = v16;
  a3[7] = v17;
  return result;
}

uint64_t TStorageRange::SetGlyphEntry(uint64_t a1, uint64_t a2, unsigned __int16 *a3)
{
  v6 = *a3;
  [*(a1 + 24) setGlyph:*a3 atIndex:*(a1 + 8) + a2];
  v7 = *(a1 + 33);
  if (v6 == 0xFFFF && (v7 & 2) != 0)
  {
    *(a1 + 33) = v7 | 8;
  }

  TStorageRange::SetAdvance(a1, a2, *(a3 + 4));
  [*(a1 + 24) setProps:*(a3 + 6) atIndex:*(a1 + 8) + a2];
  [*(a1 + 24) setStringIndex:*(a3 + 4) atIndex:*(a1 + 8) + a2];
  [*(a1 + 24) setAttachmentCount:*(a3 + 5) atIndex:*(a1 + 8) + a2];
  v9 = *(a3 + 6);
  v10 = *(a3 + 7);
  result = [*(a1 + 24) setOrigin:*(a1 + 8) + a2 atIndex:{v9, v10}];
  if (v9 != *MEMORY[0x1E695EFF8] || v10 != *(MEMORY[0x1E695EFF8] + 8))
  {
    *(a1 + 33) |= 0x10u;
  }

  return result;
}

void GlyphName(TBaseFont **a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = *MEMORY[0x1E69E9840];
  *a3 = 0;
  *(a3 + 8) = 0;
  *(a3 + 16) = 0;
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  if (Mutable)
  {
    v7 = Mutable;
    if (a2 == 0xFFFF)
    {
      CFStringAppend(Mutable, @"DEL");
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"%d", a2);
      if (TBaseFont::GetGlyphCount(a1[51]) > a2)
      {
        TFont::CopyNameForGlyph(a1, a2, &v20);
        v8 = atomic_exchange(&v20, 0);

        if (v8)
        {
          CFStringAppendFormat(v7, 0, @"/%@", v8);
          CFRelease(v8);
        }
      }
    }

    *&v9 = 0xAAAAAAAAAAAAAAAALL;
    *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v23[0] = v9;
    v23[1] = v9;
    v21 = 0;
    v22 = 0;
    v20 = 0;
    v24 = v23;
    CStringPtr = CFStringGetCStringPtr(v7, 0x8000100u);
    if (CStringPtr)
    {
      goto LABEL_16;
    }

    Length = CFStringGetLength(v7);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v13 = MaximumSizeForEncoding + 1;
    v14 = v20;
    if (MaximumSizeForEncoding + 1 <= (v21 - v20))
    {
      if (MaximumSizeForEncoding + 1 < (v21 - v20))
      {
        v21 = v20 + v13;
      }
    }

    else
    {
      std::vector<char,TInlineBufferAllocator<char,30ul>>::__append(&v20, MaximumSizeForEncoding + 1 - (v21 - v20));
      v14 = v20;
    }

    CString = CFStringGetCString(v7, v14, v13, 0x8000100u);
    CStringPtr = v20;
    if (CString && v20 != 0)
    {
LABEL_16:
      v17 = strlen(CStringPtr);
      v19 = a3;
      if (v17)
      {
        v18 = v17;
        do
        {
          std::back_insert_iterator<std::vector<char>>::operator=[abi:fn200100](&v19, CStringPtr++);
          --v18;
        }

        while (v18);
      }
    }

    CFRelease(v7);
    v19 = &v20;
    std::vector<char,TInlineBufferAllocator<char,30ul>>::__destroy_vector::operator()[abi:fn200100](&v19);
  }

  LOBYTE(v20) = 0;
  std::vector<char>::push_back[abi:fn200100](a3, &v20);
}

void std::vector<char>::push_back[abi:fn200100](uint64_t a1, _BYTE *a2)
{
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  if (v4 >= v3)
  {
    v6 = *a1;
    v7 = &v4[-*a1];
    v8 = (v7 + 1);
    if ((v7 + 1) < 0)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v9 = v3 - v6;
    if (2 * v9 > v8)
    {
      v8 = 2 * v9;
    }

    if (v9 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v10 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v10 = v8;
    }

    if (v10)
    {
      operator new();
    }

    v11 = &v4[-*a1];
    *v7 = *a2;
    v5 = v7 + 1;
    memcpy(0, v6, v11);
    *a1 = 0;
    *(a1 + 8) = v7 + 1;
    *(a1 + 16) = 0;
    if (v6)
    {
      operator delete(v6);
    }
  }

  else
  {
    *v4 = *a2;
    v5 = v4 + 1;
  }

  *(a1 + 8) = v5;
}

void GlyphNames(TBaseFont ***a1@<X0>, void *a2@<X8>)
{
  *a2 = 0;
  a2[1] = 0;
  a2[2] = 0;
  v11 = a1;
  v12 = 0;
  v4 = TRunGlue::length(a1);
  if (v4)
  {
    v5 = v4;
    do
    {
      memset(__p, 170, sizeof(__p));
      v6 = a1[62];
      v7 = TRunGlue::TGlyph::glyphID(&v11);
      GlyphName(v6, v7, __p);
      LOBYTE(v13) = 9;
      std::vector<char>::push_back[abi:fn200100](a2, &v13);
      v8 = __p[0];
      v9 = __p[1] - 1;
      v13 = a2;
      if (__p[1] - 1 != __p[0])
      {
        do
        {
          std::back_insert_iterator<std::vector<char>>::operator=[abi:fn200100](&v13, v8++);
        }

        while (v8 != v9);
      }

      LOBYTE(v13) = 9;
      std::vector<char>::push_back[abi:fn200100](a2, &v13);
      LOBYTE(v13) = 10;
      std::vector<char>::push_back[abi:fn200100](a2, &v13);
      if (__p[0])
      {
        __p[1] = __p[0];
        operator delete(__p[0]);
      }

      ++v12;
    }

    while (v12 != v5);
  }

  LOBYTE(__p[0]) = 0;
  std::vector<char>::push_back[abi:fn200100](a2, __p);
}

void *TRunGlue::ClearGlyphCombiningMark(void *this, int64_t a2)
{
  v3 = this;
  if (this[18])
  {
    TRunGlue::FocusOnIndex(this, a2);
    v4 = v3[18];
    v5 = a2 - v3[19];
    this = *(v4 + 216);
    v6 = *(v4 + 200);
    v7 = *(this[5] + 4 * v6 + 4 * v5);
    if ((v7 & 0x40) != 0)
    {

      return [this setProps:v7 & 0xFFFFEFBF | 0x1000 atIndex:v6 + v5];
    }
  }

  else
  {
    v8 = this[51];
    if (v8)
    {
      v9 = v8 + 4 * this[19];
      v10 = *(v9 + 4 * a2);
      if ((v10 & 0x40) != 0)
      {
        *(v9 + 4 * a2) = v10 & 0xFFFFEFBF | 0x1000;
      }
    }
  }

  return this;
}

double TRunGlue::GetOrigin(TRunGlue *this, int64_t a2)
{
  if (*(this + 18))
  {
    TRunGlue::FocusOnIndex(this, a2);
    v4 = *(this + 18);
    if ((*(v4 + 225) & 0x10) != 0)
    {
      [*(v4 + 216) originAtIndex:a2 - *(this + 19) + *(v4 + 200)];
      return result;
    }

    goto LABEL_6;
  }

  v6 = *(this + 23);
  if (!v6)
  {
LABEL_6:
    v7 = MEMORY[0x1E695EFF8];
    return *v7;
  }

  v7 = v6 + 16 * *(this + 19) + 16 * a2;
  return *v7;
}

void *std::__split_buffer<TAATMorphSubtable::SimpleGlyphEntry *>::emplace_back<TAATMorphSubtable::SimpleGlyphEntry *&>(void *result, void *a2)
{
  v3 = result;
  v4 = result[2];
  if (v4 == result[3])
  {
    v5 = result[1];
    v6 = &v5[-*result];
    if (v5 <= *result)
    {
      if (v4 == *result)
      {
        v11 = 1;
      }

      else
      {
        v11 = &v4[-*result] >> 2;
      }

      std::allocator<TAATMorphSubtable::SimpleGlyphEntry *>::allocate_at_least[abi:fn200100](v11);
    }

    v7 = ((v6 >> 3) + 1) / -2;
    v8 = ((v6 >> 3) + 1) / 2;
    v9 = &v5[-8 * v8];
    v10 = v4 - v5;
    if (v4 != v5)
    {
      result = memmove(&v5[-8 * v8], v5, v4 - v5);
      v5 = v3[1];
    }

    v4 = &v9[v10];
    v3[1] = &v5[8 * v7];
    v3[2] = &v9[v10];
  }

  *v4 = *a2;
  v3[2] += 8;
  return result;
}

void std::allocator<TAATMorphSubtable::SimpleGlyphEntry *>::allocate_at_least[abi:fn200100](unint64_t a1)
{
  if (!(a1 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fn200100]();
}

void *TRunGlue::MoveGlyphs(TRunGlue *this, CFRange a2, uint64_t a3)
{
  length = a2.length;
  location = a2.location;
  if (*(this + 18))
  {
    TRunGlue::FocusOnIndex(this, a2.location);
    v7 = *(this + 18);
    v8 = *(this + 19);
    v9 = *(v7 + 200);
    v10 = *(v7 + 216);

    return [v10 moveGlyphsFromRange:location - v8 + v9 toIndex:{length, a3 - v8 + v9}];
  }

  else
  {
    v12 = *(this + 19);
    v13 = v12 + a2.location;
    v14 = v12 + a3;
    memmove((*(this + 21) + 2 * (v12 + a3)), (*(this + 21) + 2 * (v12 + a2.location)), 2 * a2.length);
    memmove((*(this + 22) + 16 * v14), (*(this + 22) + 16 * v13), 16 * length);
    v15 = *(this + 51);
    if (!v15)
    {
      TRunGlue::InitPropertiesFromDeletedGlyphs(this);
      v15 = *(this + 51);
    }

    result = memmove((v15 + 4 * v14), (v15 + 4 * v13), 4 * length);
    v16 = *(this + 23);
    if (v16)
    {
      result = memmove((v16 + 16 * v14), (v16 + 16 * v13), 16 * length);
    }

    v17 = *(this + 52);
    if (v17)
    {

      return memmove((v17 + 8 * v14), (v17 + 8 * v13), 8 * length);
    }
  }

  return result;
}

void *TRunGlue::SetOrigin(void *this, int64_t a2, CGPoint a3)
{
  y = a3.y;
  x = a3.x;
  v6 = this;
  if (this[18])
  {
    TRunGlue::FocusOnIndex(this, a2);
    v7 = v6[18];
    [*(v7 + 216) setOrigin:a2 - v6[19] + *(v7 + 200) atIndex:{x, y}];
    if (x != *MEMORY[0x1E695EFF8] || y != *(MEMORY[0x1E695EFF8] + 8))
    {
      *(v7 + 225) |= 0x10u;
    }

    v9 = v6[18];

    return TRun::NoteCrossStreamPosition(v9, y);
  }

  else
  {
    v10 = this[23];
    if (v10)
    {
      *(v10 + 16 * this[19] + 16 * a2) = a3;
    }
  }

  return this;
}

void *TRunGlue::SetStringIndex(void *this, int64_t a2, uint64_t a3)
{
  v5 = this;
  if (this[18])
  {
    this = TRunGlue::FocusOnIndex(this, a2);
    v6 = v5[18];
    if (v6)
    {
      this = [*(v6 + 216) setStringIndex:a3 atIndex:a2 - v5[19] + *(v6 + 200)];
      v8 = v5[18];
      v9 = *(v8 + 8);
      v10 = *(v8 + 16) + v9;
      if (v9 > a3 || v10 <= a3)
      {
        this = TRunGlue::ActualCharRangeForStorage((v6 + 192), v7);
        v12 = v5[18];
        *(v12 + 8) = this;
        *(v12 + 16) = v13;
      }
    }
  }

  else
  {
    v14 = this[52];
    if (v14)
    {
      *(v14 + 8 * this[19] + 8 * a2) = a3;
    }
  }

  return this;
}

uint64_t TRunGlue::ActualCharRangeForStorage(TRunGlue *this, const TStorageRange *a2)
{
  v3 = (*(*(this + 3) + 48) + 8 * *(this + 1));
  v4 = *std::__minmax_element_impl[abi:fn200100]<long const*,long const*,std::__identity,std::__less<void,void>>(v3, &v3[*(this + 2)]);
  [*(this + 3) attachmentCountAtIndex:*(this + 1) + ((v5 - v3) >> 3)];
  return v4;
}

void *std::__minmax_element_impl[abi:fn200100]<long const*,long const*,std::__identity,std::__less<void,void>>(void *result, void *a2)
{
  v2 = result;
  if (result != a2 && result + 1 != a2)
  {
    v5 = *result;
    v4 = result[1];
    if (v4 < *result)
    {
      ++result;
    }

    v6 = v4 >= *v2 ? v2 + 1 : v2;
    v7 = v2 + 2;
    if (v7 != a2)
    {
      if (v4 <= v5)
      {
        v8 = v5;
      }

      else
      {
        v8 = v4;
      }

      if (v4 >= v5)
      {
        v4 = v5;
      }

      while (v7 + 1 != a2)
      {
        v10 = *v7;
        v9 = v7[1];
        if (v9 >= *v7)
        {
          if (v10 < v4)
          {
            v4 = *v7;
            result = v7;
          }

          v11 = v9 < v8;
          if (v9 > v8)
          {
            v8 = v7[1];
          }

          if (!v11)
          {
            v6 = v7 + 1;
          }
        }

        else
        {
          v4 = *result;
          if (v9 < *result)
          {
            v4 = v7[1];
            result = v7 + 1;
          }

          v8 = *v6;
          if (v10 > *v6)
          {
            v8 = *v7;
          }

          if (v10 >= *v6)
          {
            v6 = v7;
          }
        }

        v7 += 2;
        if (v7 == a2)
        {
          return result;
        }
      }

      if (*v7 < *result)
      {
        return v7;
      }
    }
  }

  return result;
}

uint64_t *std::back_insert_iterator<std::vector<char>>::operator=[abi:fn200100](uint64_t *a1, _BYTE *a2)
{
  v3 = *a1;
  v5 = *(*a1 + 8);
  v4 = *(*a1 + 16);
  if (v5 >= v4)
  {
    v7 = *v3;
    v8 = &v5[-*v3];
    v9 = (v8 + 1);
    if ((v8 + 1) < 0)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v10 = v4 - v7;
    if (2 * v10 > v9)
    {
      v9 = 2 * v10;
    }

    if (v10 >= 0x3FFFFFFFFFFFFFFFLL)
    {
      v11 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      v11 = v9;
    }

    if (v11)
    {
      operator new();
    }

    v12 = &v5[-*v3];
    *v8 = *a2;
    v6 = v8 + 1;
    memcpy(0, v7, v12);
    *v3 = 0;
    *(v3 + 8) = v8 + 1;
    *(v3 + 16) = 0;
    if (v7)
    {
      operator delete(v7);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  *(v3 + 8) = v6;
  return a1;
}

void TRun::TRun(TRun *this, CFRange a2, _CTGlyphStorage *a3, const TAttributes *a4, const __CTFont *a5)
{
  length = a2.length;
  location = a2.location;
  *this = &unk_1EF256D38;
  *(this + 1) = a2.location;
  *(this + 3) = 0;
  *(this + 4) = 0;
  *(this + 2) = a2.length;
  TAttributes::TAttributes((this + 40), a4, a5);
  v9.location = location;
  v9.length = length;
  TStorageRange::TStorageRange((this + 192), a3, v9);
  *(this + 34) = 0;
  *(this + 35) = 0;
  *(this + 32) = 0;
  *(this + 33) = -1;
  *(this + 18) = *MEMORY[0x1E695F060];
  *(this + 76) = -1;
  *(this + 39) = 0;
}

uint64_t TRun::IsRangeMonotonic(TRun *this, CFRange a2)
{
  if (*(this + 64) < 2)
  {
    return 1;
  }

  length = a2.length;
  location = a2.location;
  GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(this, a2.location);
  v7 = TRun::GetGlyphIndexForCharIndex<false>(this, length + location - 1);
  if (GlyphIndexForChar >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = GlyphIndexForChar;
  }

  if (GlyphIndexForChar <= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = GlyphIndexForChar;
  }

  v10 = v9 + 1;
  if (v8 == v9 + 1)
  {
    return 1;
  }

  v11 = *(this + 224);
  v12 = *(*(this + 27) + 48) + 8 * *(this + 25);
  while (location == *(v12 + 8 * v8))
  {
    v13 = *(this + 27);
    v14 = *(this + 25);
    if ((*(v13[5] + 4 * v14 + 4 * v8) & 0x380) != 0)
    {
      break;
    }

    v15 = [v13 attachmentCountAtIndex:v8 + v14];
    v16 = ~v15;
    if ((v11 & 1) == 0)
    {
      v16 = v15 + 1;
    }

    location += v16;
    if (v10 == ++v8)
    {
      return 1;
    }
  }

  return 0;
}

void std::vector<CGSize>::resize(void *a1, unint64_t a2)
{
  v2 = (a1[1] - *a1) >> 4;
  if (a2 <= v2)
  {
    if (a2 < v2)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<CGSize>::__append(a1, a2 - v2);
  }
}

uint64_t TRun::operator==(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8) != *(a2 + 8) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  if (*(a1 + 256) != *(a2 + 256) || *(a1 + 178) != *(a2 + 178))
  {
    return 0;
  }

  Dictionary = TAttributes::GetDictionary((a1 + 40));
  v7 = TAttributes::GetDictionary((a2 + 40));
  if (Dictionary == v7 || (v8 = v7, result = 0, Dictionary) && v8 && (result = CFEqual(Dictionary, v8), result))
  {
    result = TStorageRange::operator==(a1 + 192, a2 + 192);
    if (result)
    {
      v9 = MEMORY[0x1E695F060];
      v10 = *(a1 + 312);
      if (!v10)
      {
        v10 = MEMORY[0x1E695F060];
      }

      if (*(a2 + 312))
      {
        v9 = *(a2 + 312);
      }

      if (*v10 == *v9 && v10[1] == v9[1])
      {
        return *(a1 + 304) == *(a2 + 304);
      }

      return 0;
    }
  }

  return result;
}

__CFString *TRun::DebugDescription(TRun *this)
{
  v2 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v4 = CFStringCreateWithFormat(v2, 0, @"(%ld, %ld)", *(this + 1), *(this + 2));
  CFStringAppendFormat(Mutable, 0, @"string range = %@, string = ", v4);

  v5 = *(this + 34);
  if (v5 && *v5)
  {
    v6 = TCharStream::DebugDescriptionForRange(*v5, *(this + 8));
    CFStringAppendFormat(Mutable, 0, @"%@", v6);
  }

  else
  {
    CFStringAppend(Mutable, @"<not found>");
  }

  v7 = TAttributes::DebugDescription(this + 5);
  CFStringAppendFormat(Mutable, 0, @", attributes = %@", v7);

  explicit = atomic_load_explicit(this + 7, memory_order_acquire);
  v9 = MEMORY[0x1E695F060];
  if (*(this + 39))
  {
    v9 = *(this + 39);
  }

  v10 = TStorageRange::DebugDescriptionWithInfoFromRun((this + 192), explicit, *v9, *(this + 33));
  CFStringAppendFormat(Mutable, 0, @", {%@}", v10);

  return Mutable;
}

id TRun::CopyDescriptionDictionary(TRun *this, char a2)
{
  v64[2] = *MEMORY[0x1E69E9840];
  v4 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v5 = *(this + 26);
  [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithInteger:", v5), @"numGlyphs"}];
  v6 = *(this + 34);
  if (v6 && *v6)
  {
    v7 = TCharStream::DebugDescriptionForRange(*v6, *(this + 8));
    if (v7)
    {
      [v4 setObject:v7 forKey:@"string"];
    }
  }

  v8 = (*(*(this + 27) + 16) + 2 * *(this + 25));
  v9 = [MEMORY[0x1E695DF70] array];
  if ((a2 & 1) == 0)
  {
    v10 = v9;
    v11 = a2;
    v12 = v4;
    if (v5 >= 1)
    {
      v13 = v8;
      v14 = v5;
      do
      {
        v15 = *v13++;
        [v10 addObject:{objc_msgSend(MEMORY[0x1E696AD98], "numberWithUnsignedShort:", v15)}];
        --v14;
      }

      while (v14);
    }

    v4 = v12;
    [v12 setObject:v10 forKey:@"glyphs"];
    a2 = v11;
  }

  explicit = atomic_load_explicit(this + 7, memory_order_acquire);
  if (explicit)
  {
    v17 = CTFontCopyAttribute(explicit, @"NSFontNameAttribute");
    [v4 setObject:v17 forKey:@"fontName"];
    v18 = *(explicit + 5);
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithDouble:", v18[3]), @"fontSize"}];
    if (a2)
    {
      v54 = v4;
      v19 = [MEMORY[0x1E695DF70] array];
      if (v5 >= 1)
      {
        v20 = v5;
        do
        {
          v22 = *v8++;
          v21 = v22;
          if (v22 == 0xFFFF)
          {
            [v19 addObject:@"DELETED"];
          }

          else
          {
            v56 = 0xAAAAAAAAAAAAAAAALL;
            TFont::CopyNameForGlyph(v18, v21, &v56);
            if (atomic_load_explicit(&v56, memory_order_acquire))
            {
              v23 = atomic_load_explicit(&v56, memory_order_acquire);
              v24 = v19;
            }

            else
            {
              v24 = v19;
              v23 = @"** No Glyph Name **";
            }

            [v24 addObject:v23];
          }

          --v20;
        }

        while (v20);
      }

      v4 = v54;
      [v54 setObject:v19 forKey:@"glyphNames"];
    }
  }

  if ((a2 & 2) != 0)
  {
    v25 = *(this + 39);
    v26 = MEMORY[0x1E695F060];
    if (!v25)
    {
      v25 = MEMORY[0x1E695F060];
    }

    v27 = *v25;
    v28 = v25[1];
    v63[0] = @"width";
    *&v27 = v27;
    v64[0] = [MEMORY[0x1E696AD98] numberWithFloat:v27];
    v63[1] = @"height";
    *&v29 = v28;
    v64[1] = [MEMORY[0x1E696AD98] numberWithFloat:v29];
    [v4 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKey:{"dictionaryWithObjects:forKeys:count:", v64, v63, 2), @"initialAdvance"}];
    while (1)
    {
      v30 = atomic_load_explicit(this + 35, memory_order_acquire);
      if (v30)
      {
        break;
      }

      v31 = *(this + 34);
      if (!v31)
      {
        v30 = 0;
        break;
      }

      TLine::CachePositions(v31);
    }

    v61[0] = @"width";
    v32 = *(this + 36);
    *&v32 = v32;
    v33 = [MEMORY[0x1E696AD98] numberWithFloat:v32];
    v61[1] = @"height";
    v62[0] = v33;
    v34 = *(this + 37);
    *&v34 = v34;
    v62[1] = [MEMORY[0x1E696AD98] numberWithFloat:v34];
    [v4 setObject:objc_msgSend(MEMORY[0x1E695DF20] forKey:{"dictionaryWithObjects:forKeys:count:", v62, v61, 2), @"cachedOffset"}];
    v35 = *(this + 39);
    if (!v35)
    {
      v35 = v26;
    }

    v36 = *(this + 24) + *v35;
    *&v36 = v36;
    [v4 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKey:{"numberWithFloat:", v36), @"width"}];
    v37 = [MEMORY[0x1E695DF70] array];
    v55 = [MEMORY[0x1E695DF70] array];
    v38 = *(this + 27);
    v39 = *(v38 + 32);
    if (v39 || (v42 = *(v38 + 24)) == 0)
    {
      v40 = 0;
      v41 = (v39 + 16 * *(this + 25));
    }

    else
    {
      v41 = (v42 + 8 * *(this + 25));
      v40 = 1;
    }

    if (v5 >= 1)
    {
      v43 = (v30 + 8);
      v44 = v41;
      do
      {
        v59[0] = @"x";
        if (v40)
        {
          v45 = v41;
        }

        else
        {
          v45 = v44;
        }

        v46 = *v45;
        *&v46 = *v45;
        v47 = [MEMORY[0x1E696AD98] numberWithFloat:v46];
        v59[1] = @"y";
        v60[0] = v47;
        v48 = 0.0;
        if ((v40 & 1) == 0)
        {
          v48 = v44[1];
          *&v48 = v48;
        }

        v60[1] = [MEMORY[0x1E696AD98] numberWithFloat:v48];
        [v37 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v60, v59, 2)}];
        v57[0] = @"x";
        v49 = *(v43 - 1);
        *&v49 = v49;
        v50 = [MEMORY[0x1E696AD98] numberWithFloat:v49];
        v57[1] = @"y";
        v58[0] = v50;
        v51 = *v43;
        v43 += 2;
        HIDWORD(v52) = HIDWORD(v51);
        *&v52 = v51;
        v58[1] = [MEMORY[0x1E696AD98] numberWithFloat:v52];
        [v55 addObject:{objc_msgSend(MEMORY[0x1E695DF20], "dictionaryWithObjects:forKeys:count:", v58, v57, 2)}];
        v44 += 2;
        ++v41;
        --v5;
      }

      while (v5);
    }

    [v4 setObject:v37 forKey:@"advances"];
    [v4 setObject:v55 forKey:@"positions"];
  }

  return v4;
}

double TRun::GetBackgroundRect(TRun *this)
{
  v2 = *(this + 34);
  if (v2)
  {
    if ((*(this + 177) & 8) != 0 && *(this + 2) + *(this + 1) == *(v2 + 80) + *(v2 + 72))
    {
      if (*(this + 224))
      {
        (*(*this + 80))(this);
      }

      else
      {
        TRun::GetRightWhitespaceGlyphCountAndWidth(this);
      }
    }
  }

  else
  {
    (*(*this + 56))(this);
    (*(*this + 64))(this);
    TFont::GetWindowsDescent(*(atomic_load_explicit(this + 7, memory_order_acquire) + 40));
  }

  return 0.0;
}

void TRun::DrawRotatedGlyphsAtPositions(atomic_ullong *this, CGContextRef c, CFRange a3, CGPoint *a4, unsigned __int8 *a5, double a6)
{
  length = a3.length;
  location = a3.location;
  if (a6 == 0.0)
  {
    v16 = *a5;
    v17 = *(a5 + 1);
    v18 = a5[16];

    TRun::DrawGlyphsAtPositionsInternal(this, c, a3, a4, v16, v17, v18);
  }

  else
  {
    TextPosition = CGContextGetTextPosition(c);
    if (*(a5 + 1))
    {
      v14 = *(a5 + 1);
    }

    else
    {
      v14 = (this + 5);
    }

    v15 = *(v14 + 137);
    if (v15)
    {
      v21.location = location;
      v21.length = length;
      TRun::DrawBackground(this, c, v21, v14, 1);
    }

    CGContextSaveGState(c);
    *&v19.a = xmmword_18475A330;
    v19.c = -1.0;
    memset(&v19.d, 0, 24);
    CGContextConcatCTM(c, &v19);
    CGContextSetTextPosition(c, TextPosition.y + TextPosition.x * 0.0 + 0.0 + a6, TextPosition.y * 0.0 - TextPosition.x + 0.0 + a6);
    v22.location = location;
    v22.length = length;
    TRun::DrawGlyphsAtPositionsInternal(this, c, v22, a4, (v15 & 1) == 0, v14, 0);
    CGContextSetTextPosition(c, TextPosition.x, TextPosition.y);
    CGContextRestoreGState(c);
  }
}

void TRun::CopyPath(atomic_ullong *this@<X0>, void *a2@<X8>)
{
  Mutable = CGPathCreateMutable();
  v3 = *(atomic_load_explicit(this + 7, memory_order_acquire) + 40);
  v4 = *(this[27] + 16);
  v5 = this[25];
  explicit = atomic_load_explicit(this + 35, memory_order_acquire);
  if (!explicit)
  {
    v7 = this[34];
    if (v7)
    {
      v8 = v4;
      while (1)
      {
        TLine::CachePositions(v7);
        explicit = atomic_load_explicit(this + 35, memory_order_acquire);
        if (explicit)
        {
          break;
        }

        v7 = this[34];
        if (!v7)
        {
          explicit = 0;
          break;
        }
      }

      v4 = v8;
    }

    else
    {
      explicit = 0;
    }
  }

  v9 = this[26];
  if (v9 >= 1)
  {
    v10 = 0;
    v11 = (explicit + 8);
    v12 = v4 + 2 * v5;
    do
    {
      v17 = 0xAAAAAAAAAAAAAAAALL;
      TFont::CreatePathForGlyph(v3, 0, *(v12 + 2 * v10), &v17);
      *&v13 = -1;
      *(&v13 + 1) = -1;
      *&m.c = v13;
      *&m.tx = v13;
      *&m.a = v13;
      CGAffineTransformMakeTranslation(&m, *(v11 - 1), *v11);
      __dst.width = NAN;
      __dst.height = NAN;
      v19.location = v10;
      v19.length = 1;
      TRun::GetStretchFactors(this, v19, &__dst);
      m.a = __dst.width * m.a;
      m.d = __dst.height * m.d;
      CGPathAddPath(atomic_load_explicit(&Mutable, memory_order_acquire), &m, atomic_load_explicit(&v17, memory_order_acquire));

      ++v10;
      v11 += 2;
    }

    while (v9 != v10);
  }

  *a2 = atomic_exchange(&Mutable, 0);
}

CFIndex TRun::NormalizeRange(TRun *this, CFRange a2, uint64_t *a3)
{
  location = a2.location;
  v6 = *(this + 1);
  v7 = *(this + 2);
  v8 = *(*(this + 27) + 48) + 8 * *(this + 25);
  v9 = (v6 - a2.location + v7) & ~((v6 - a2.location + v7) >> 63);
  if (a2.length <= v9)
  {
    GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(this, a2.length + a2.location - 1);
    v11 = *(v8 + 8 * GlyphIndexForChar);
    v9 = v11 - location + [*(this + 27) attachmentCountAtIndex:*(this + 25) + GlyphIndexForChar] + 1;
  }

  *a3 = v9;
  if (location == *(this + 1))
  {
    return location;
  }

  v13 = v7 + v6;
  do
  {
    v12 = location;
    if (v9-- < 1)
    {
      break;
    }

    if (location >= v13)
    {
      break;
    }

    v15 = TRun::GetGlyphIndexForCharIndex<false>(this, location++);
  }

  while (v12 != *(v8 + 8 * v15));
  return v12;
}

uint64_t TRun::GetTrailingBaseChar(TRun *this)
{
  PrevGlyphIndex = *(this + 1) + *(this + 2) - 1;
  GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(this, PrevGlyphIndex);
  v3 = *(this + 1);
  while (v3 <= PrevGlyphIndex)
  {
    v4 = GlyphIndexForChar;
    v5 = *(this + 27);
    v6 = *(this + 25);
    if (*(v5[2] + 2 * v6 + 2 * GlyphIndexForChar) != -1 && (*(v5[5] + 4 * v6 + 4 * GlyphIndexForChar) & 0x20) == 0 && (*(v5[5] + 4 * v6 + 4 * GlyphIndexForChar) & 0x2040) != 0x40 && (*(v5[5] + 4 * v6 + 4 * GlyphIndexForChar) & 0x300) == 0)
    {
      break;
    }

    if (*(this + 64) > 1 || (*(this + 224) & 1) != 0)
    {
      PrevGlyphIndex = TRun::FindPrevGlyphIndex(this, PrevGlyphIndex, &GlyphIndexForChar);
      v3 = *(this + 1);
    }

    else
    {
      --GlyphIndexForChar;
      if (v4 <= 0)
      {
        return v3 - 1;
      }

      PrevGlyphIndex = *(v5[6] + 8 * v6 + 8 * (v4 - 1));
    }
  }

  return PrevGlyphIndex;
}

uint64_t TRun::GetLeadingUncombinedCharCount(TRun *this)
{
  NextChar = *(this + 1);
  GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(this, NextChar);
  v3 = *(this + 1);
  v4 = *(this + 2) + v3;
  if (NextChar < v4)
  {
    do
    {
      v5 = *(this + 27);
      v6 = *(this + 25);
      if (*(*(v5 + 16) + 2 * v6 + 2 * GlyphIndexForChar) != -1 && (*(*(v5 + 40) + 4 * v6 + 4 * GlyphIndexForChar) & 0x20) == 0 && (*(*(v5 + 40) + 4 * v6 + 4 * GlyphIndexForChar) & 0x2040) != 0x40 && (*(*(v5 + 40) + 4 * v6 + 4 * GlyphIndexForChar) & 0x300) == 0)
      {
        break;
      }

      NextChar = TRun::GetNextChar(this, NextChar, &GlyphIndexForChar);
    }

    while (NextChar < v4);
    v3 = *(this + 1);
  }

  return NextChar - v3;
}

uint64_t TRun::AppendMappedCharsInRange(uint64_t a1, uint64_t a2, uint64_t a3, size_t *a4)
{
  std::vector<long,TInlineBufferAllocator<long,30ul>>::reserve(a4, a3 + ((a4[1] - *a4) >> 3));
  v8 = a2 + a3;
  GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(a1, a2);
  v9 = *(*(a1 + 216) + 48) + 8 * *(a1 + 200);
  if (a2 != *(v9 + 8 * GlyphIndexForChar))
  {
    NextChar = TRun::GetNextChar(a1, a2, &GlyphIndexForChar);
LABEL_3:
    a2 = NextChar;
  }

  while (a2 < v8)
  {
    v13 = *(a1 + 216);
    v14 = *(a1 + 200);
    if (*(*(v13 + 16) + 2 * v14 + 2 * GlyphIndexForChar) != -1 && (*(*(v13 + 40) + 4 * v14 + 4 * GlyphIndexForChar) & 0x20) == 0)
    {
      v15 = a4[1];
      if (*a4 == v15 || *(v9 + 8 * GlyphIndexForChar) != *(v15 - 8))
      {
        std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](a4, (v9 + 8 * GlyphIndexForChar));
        if (a4[1] - *a4 > 0xF0)
        {
          return 0;
        }
      }
    }

    if (*(a1 + 256) > 1)
    {
      NextChar = TRun::FindNextGlyphIndex(a1, a2, &GlyphIndexForChar);
      goto LABEL_3;
    }

    v11 = GlyphIndexForChar;
    if (*(a1 + 224))
    {
      v12 = --GlyphIndexForChar;
      if (v11 > 0)
      {
        goto LABEL_8;
      }

LABEL_6:
      a2 = *(a1 + 16) + *(a1 + 8);
    }

    else
    {
      v12 = GlyphIndexForChar + 1;
      GlyphIndexForChar = v12;
      if (v12 >= *(a1 + 208))
      {
        goto LABEL_6;
      }

LABEL_8:
      a2 = *(*(*(a1 + 216) + 48) + 8 * *(a1 + 200) + 8 * v12);
    }
  }

  return 1;
}

uint64_t TRun::ReverseGlyphs(uint64_t this)
{
  v7 = *(this + 208);
  if (v7 >= 2)
  {
    v11 = v4;
    v12 = v3;
    v13 = v2;
    v14 = v1;
    v15 = v5;
    v16 = v6;
    v8 = this;
    v9 = 0;
    v10 = v7 - 1;
    do
    {
      this = [*(v8 + 216) swapGlyphsAtIndex:v9 + *(v8 + 200) withIndex:{v10 + *(v8 + 200), v11, v12, v13, v14, v15, v16}];
      ++v9;
      --v10;
    }

    while (v9 < v10);
  }

  return this;
}

uint64_t TRun::DeleteChars(TRun *this, int64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a2;
  v38 = *MEMORY[0x1E69E9840];
  if (*(this + 64))
  {
    if (a2 < 1)
    {
      return 0;
    }

    else
    {
      v8 = 0;
      do
      {
        v9 = *a3++;
        GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(this, v9);
        if (*(*(*(this + 27) + 48) + 8 * *(this + 25) + 8 * GlyphIndexForChar) == v9)
        {
          v8 += TRun::DeleteGlyphs(this, 1, &GlyphIndexForChar, a4);
        }

        --v6;
      }

      while (v6);
    }
  }

  else
  {
    *&v10 = 0xAAAAAAAAAAAAAAAALL;
    *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
    v36[14] = v10;
    v36[13] = v10;
    v36[12] = v10;
    v36[11] = v10;
    v36[10] = v10;
    v36[9] = v10;
    v36[8] = v10;
    v36[7] = v10;
    v36[6] = v10;
    v36[4] = v10;
    v36[5] = v10;
    v36[2] = v10;
    v36[3] = v10;
    v36[0] = v10;
    v36[1] = v10;
    v34 = 0;
    v35 = 0;
    GlyphIndexForChar = 0;
    v37 = v36;
    std::vector<long,TInlineBufferAllocator<long,30ul>>::reserve(&GlyphIndexForChar, a2);
    v11 = *(this + 26);
    v12 = *(*(this + 27) + 48) + 8 * *(this + 25);
    if (*(this + 224))
    {
      v21 = v11 - 1;
      p_GlyphIndexForChar = (v11 - 1);
      if (v6 >= 1)
      {
        for (i = 0; i != v6; ++i)
        {
          v23 = a3[i];
          v24 = *(v12 + 8 * v21);
          if ((v21 & 0x8000000000000000) == 0)
          {
            do
            {
              if (v24 >= v23)
              {
                break;
              }

              v25 = v21;
              v26 = v21-- != 0;
              p_GlyphIndexForChar = v21;
              v24 = *(v12 - 8 + 8 * v25);
            }

            while (v26);
          }

          if (v24 == v23)
          {
            if (v21 < 0)
            {
              break;
            }

            std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](&GlyphIndexForChar, &p_GlyphIndexForChar);
            v21 = p_GlyphIndexForChar - 1;
            p_GlyphIndexForChar = (p_GlyphIndexForChar - 1);
          }
        }
      }

      v19 = GlyphIndexForChar;
      v20 = v34;
      v27 = v34 - 8;
      if (GlyphIndexForChar != v34 && v27 > GlyphIndexForChar)
      {
        v29 = GlyphIndexForChar + 8;
        do
        {
          v30 = *(v29 - 8);
          *(v29 - 8) = *v27;
          *v27 = v30;
          v27 -= 8;
          v26 = v29 >= v27;
          v29 += 8;
        }

        while (!v26);
      }
    }

    else
    {
      p_GlyphIndexForChar = 0;
      if (v6 >= 1)
      {
        v13 = 0;
        for (j = 0; j != v6; ++j)
        {
          v15 = a3[j];
          for (k = *(v12 + 8 * v13); k < v15 && v13 < v11; k = *(v12 + 8 + 8 * v18))
          {
            v18 = v13;
            v13 = (v13 + 1);
            p_GlyphIndexForChar = v13;
          }

          if (k == v15)
          {
            if (v13 >= v11)
            {
              break;
            }

            std::vector<long,TInlineBufferAllocator<long,30ul>>::push_back[abi:fn200100](&GlyphIndexForChar, &p_GlyphIndexForChar);
            v13 = (p_GlyphIndexForChar + 1);
            p_GlyphIndexForChar = (p_GlyphIndexForChar + 1);
          }
        }
      }

      v19 = GlyphIndexForChar;
      v20 = v34;
    }

    if (v19 == v20)
    {
      v8 = 0;
    }

    else
    {
      v8 = TRun::DeleteGlyphs(this, (v20 - v19) >> 3, v19, a4);
    }

    p_GlyphIndexForChar = &GlyphIndexForChar;
    std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&p_GlyphIndexForChar);
  }

  return v8;
}

uint64_t TRun::SetAttachmentsRightToLeft<true>(TRun *this, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v8 = 0;
  v38 = *MEMORY[0x1E69E9840];
  v9 = *(*(this + 27) + 48) + 8 * *(this + 25);
  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v36[14] = v10;
  v36[13] = v10;
  v36[12] = v10;
  v36[11] = v10;
  v36[10] = v10;
  v36[9] = v10;
  v36[8] = v10;
  v36[7] = v10;
  v36[6] = v10;
  v36[5] = v10;
  v36[4] = v10;
  v36[3] = v10;
  v36[2] = v10;
  v36[1] = v10;
  v36[0] = v10;
  memset(v35, 0, sizeof(v35));
  v37 = v36;
  if (a2 >= 2)
  {
    v8 = a2 - 1;
    v11 = a3;
    v12 = a2 - 1;
    do
    {
      v13 = *v11++;
      v14 = [*(this + 27) attachmentCountAtIndex:*(this + 25) + v13];
      v15 = v13 + 1;
      if (v13 + 1 < *(this + 26))
      {
        [*(this + 27) setAttachmentCount:v14 + objc_msgSend(*(this + 27) atIndex:{"attachmentCountAtIndex:", *(this + 25) + v15) + 1, *(this + 25) + v15}];
      }

      --v12;
    }

    while (v12);
  }

  v16 = a3[v8];
  v17 = *(v9 + 8 * v16);
  v18 = *(this + 1);
  if (v17 <= a4)
  {
    v24 = *(this + 2) + v18;
    v34 = v16;
    v25 = v16;
    while (1)
    {
      if (*(this + 64) > 1)
      {
        NextGlyphIndex = TRun::FindNextGlyphIndex(this, v17, &v34);
      }

      else
      {
        if (*(this + 224))
        {
          v26 = v25 - 1;
          v34 = v25 - 1;
          if (v25 <= 0)
          {
LABEL_13:
            NextGlyphIndex = *(this + 2) + *(this + 1);
            goto LABEL_17;
          }
        }

        else
        {
          v26 = v25 + 1;
          v34 = v25 + 1;
          if (v25 + 1 >= *(this + 26))
          {
            goto LABEL_13;
          }
        }

        NextGlyphIndex = *(*(*(this + 27) + 48) + 8 * *(this + 25) + 8 * v26);
      }

LABEL_17:
      if (NextGlyphIndex >= v24)
      {
        v32 = [*(this + 27) attachmentCountAtIndex:*(this + 25) + v16] + 1;
        goto LABEL_25;
      }

      v25 = v34;
      v28 = *(this + 27);
      v29 = *(this + 25);
      if (a2 < 2 || *(v28[2] + 2 * v29 + 2 * v34) != -1 && (*(v28[5] + 4 * v29 + 4 * v34) & 0x20) == 0)
      {
        [v28 setStringIndex:v17 atIndex:v29 + v34];
        v30 = [*(this + 27) attachmentCountAtIndex:*(this + 25) + v16];
        v31 = v30 + [*(this + 27) attachmentCountAtIndex:*(this + 25) + v25];
        v21 = *(this + 27);
        v22 = v31 + 1;
        v23 = *(this + 25) + v25;
        goto LABEL_22;
      }
    }
  }

  v19 = [*(this + 27) attachmentCountAtIndex:*(this + 25) + v16];
  if (v17 <= v18)
  {
    v32 = v19 + 1;
  }

  else
  {
    v20 = v19 + [*(this + 27) attachmentCountAtIndex:*(this + 25) + v16 + 1];
    v21 = *(this + 27);
    v22 = v20 + 1;
    v23 = *(this + 25) + v16 + 1;
LABEL_22:
    [v21 setAttachmentCount:v22 atIndex:v23];
    v32 = 0;
  }

LABEL_25:
  v34 = v35;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](&v34);
  return v32;
}

uint64_t TRun::SetAttachmentsLeftToRight<false>(uint64_t a1, uint64_t a2, char *__src, uint64_t a4)
{
  v5 = a2;
  v69 = *MEMORY[0x1E69E9840];
  v7 = *(*(a1 + 216) + 48);
  v8 = *(a1 + 200);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v67[14] = v9;
  v67[13] = v9;
  v67[12] = v9;
  v67[11] = v9;
  v67[10] = v9;
  v67[9] = v9;
  v67[8] = v9;
  v67[7] = v9;
  v67[6] = v9;
  v67[5] = v9;
  v67[4] = v9;
  v67[3] = v9;
  v67[2] = v9;
  v67[1] = v9;
  v67[0] = v9;
  v65 = 0;
  v66 = 0;
  v64 = 0;
  v68 = v67;
  std::vector<long,TInlineBufferAllocator<long,30ul>>::__insert_with_size[abi:fn200100]<long const*,long const*>(&v64, __src, &__src[8 * a2], a2);
  v10 = 126 - 2 * __clz(v65 - v64);
  v11 = v7 + 8 * v8;
  v62[0] = v11;
  if (v65 == v64)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,LessByStringIndex &,long *,false>(v64, v65, v62, v12, 1);
  v13 = v64;
  v14 = v5 - 1;
  if (v5 >= 2)
  {
    v60 = a4;
    v61 = v5;
    v15 = 0;
    v16 = &v64[v5];
    v17 = v16 - 2;
    while (1)
    {
      v18 = v5;
      v5 = v14;
      v19 = v13;
      v20 = v13[v14];
      v63 = v20;
      v21 = *(v11 + 8 * v20);
      v22 = *(a1 + 216);
      v23 = *(a1 + 200);
      if ((*(v22[5] + 4 * v23 + 4 * v20) & 0x380) == 0)
      {
        goto LABEL_24;
      }

      memset(v62, 170, sizeof(v62));
      TRun::FindInsertionGroup(v62, a1, v20);
      v24 = (v62[1] - v62[0]) >> 3;
      if (v24 < 2)
      {
        break;
      }

      v25 = v17;
      v26 = v5;
      do
      {
        v27 = *v25--;
        if (*(v11 + 8 * v27) != v21)
        {
          break;
        }

        --v24;
        --v26;
      }

      while (v26 > 0);
      if (v18 < v61)
      {
        v28 = v24 + v15;
        v29 = v15;
        while (*(v11 + 8 * v16[v29]) == v21)
        {
          --v24;
          if (__CFADD__(v29++, 1))
          {
            v24 = v28;
            break;
          }
        }
      }

      if (v24 <= 1)
      {
        break;
      }

      if (v62[0])
      {
        v62[1] = v62[0];
        operator delete(v62[0]);
      }

      v13 = v19;
LABEL_30:
      --v15;
      --v17;
      v14 = v5 - 1;
      if (v5 <= 1)
      {
        v14 = 0;
        a4 = v60;
        v5 = v61;
        v33 = 1;
        goto LABEL_33;
      }
    }

    if (v62[0])
    {
      v62[1] = v62[0];
      operator delete(v62[0]);
    }

    v22 = *(a1 + 216);
    v23 = *(a1 + 200);
LABEL_24:
    v31 = [v22 attachmentCountAtIndex:{v23 + v20, v60}];
    if (*(a1 + 256) > 1 || (*(a1 + 224) & 1) != 0)
    {
      TRun::FindPrevGlyphIndex(a1, v21, &v63);
      v32 = v63;
    }

    else
    {
      v32 = v20 - 1;
    }

    v13 = v19;
    if ((v32 & 0x8000000000000000) == 0)
    {
      [*(a1 + 216) setAttachmentCount:v31 + objc_msgSend(*(a1 + 216) atIndex:{"attachmentCountAtIndex:", *(a1 + 200) + v32) + 1, *(a1 + 200) + v32}];
    }

    goto LABEL_30;
  }

  v33 = v5;
LABEL_33:
  v34 = v13[v14];
  v63 = v34;
  if ((*(*(*(a1 + 216) + 40) + 4 * *(a1 + 200) + 4 * v34) & 0x380) == 0)
  {
    v35 = 0;
    goto LABEL_46;
  }

  memset(v62, 170, sizeof(v62));
  TRun::FindInsertionGroup(v62, a1, v34);
  v35 = (v62[1] - v62[0]) >> 3;
  if (v35 < 2)
  {
    goto LABEL_41;
  }

  if (v33 < v5)
  {
    v36 = v33 - v5 + v35;
    v37 = v5 - v33;
    v38 = &v13[v33];
    while (1)
    {
      v39 = *v38++;
      if (*(v11 + 8 * v39) != *(v11 + 8 * v34))
      {
        break;
      }

      --v35;
      if (!--v37)
      {
        v35 = v36;
        break;
      }
    }

    if (v35 <= 1)
    {
LABEL_41:
      v40 = 1;
      if (!v62[0])
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  v40 = 0;
  if (v62[0])
  {
LABEL_42:
    v62[1] = v62[0];
    operator delete(v62[0]);
  }

LABEL_43:
  if (!v40)
  {
LABEL_71:
    v57 = 0;
    goto LABEL_72;
  }

LABEL_46:
  v41 = *(v11 + 8 * v34);
  v42 = *(a1 + 8);
  if (v41 <= a4)
  {
    v46 = *(a1 + 16) + v42;
    v62[0] = v34;
    v47 = v34;
    while (1)
    {
      if (*(a1 + 256) > 1)
      {
        NextGlyphIndex = TRun::FindNextGlyphIndex(a1, v41, v62);
      }

      else
      {
        if (*(a1 + 224))
        {
          v48 = v47 - 1;
          v62[0] = v47 - 1;
          if (v47 <= 0)
          {
LABEL_55:
            NextGlyphIndex = *(a1 + 16) + *(a1 + 8);
            goto LABEL_59;
          }
        }

        else
        {
          v48 = v47 + 1;
          v62[0] = v47 + 1;
          if (v47 + 1 >= *(a1 + 208))
          {
            goto LABEL_55;
          }
        }

        NextGlyphIndex = *(*(*(a1 + 216) + 48) + 8 * *(a1 + 200) + 8 * v48);
      }

LABEL_59:
      if (NextGlyphIndex >= v46)
      {
        v57 = [*(a1 + 216) attachmentCountAtIndex:*(a1 + 200) + v34] + 1;
        goto LABEL_72;
      }

      v47 = v62[0];
      v50 = *(a1 + 216);
      v51 = *(a1 + 200);
      if (v5 < 2 || *(v50[2] + 2 * v51 + 2 * v62[0]) != -1 && (*(v50[5] + 4 * v51 + 4 * v62[0]) & 0x20) == 0)
      {
        [v50 setStringIndex:v41 atIndex:{v51 + v62[0], v60}];
        v52 = [*(a1 + 216) attachmentCountAtIndex:*(a1 + 200) + v34];
        v53 = v52 + [*(a1 + 216) attachmentCountAtIndex:*(a1 + 200) + v47];
        v54 = *(a1 + 216);
        v55 = v53 + 1;
        v56 = *(a1 + 200) + v47;
        goto LABEL_70;
      }
    }
  }

  v43 = [*(a1 + 216) attachmentCountAtIndex:*(a1 + 200) + v34];
  v44 = v43;
  if (v41 > v42)
  {
    if (*(a1 + 256) > 1 || (*(a1 + 224) & 1) != 0)
    {
      TRun::FindPrevGlyphIndex(a1, v41, &v63);
      v45 = v63;
    }

    else
    {
      v45 = v34 - 1;
    }

    v58 = v44 - v35 + [*(a1 + 216) attachmentCountAtIndex:{*(a1 + 200) + v45, v60}];
    v54 = *(a1 + 216);
    v55 = v58 + 1;
    v56 = *(a1 + 200) + v45;
LABEL_70:
    [v54 setAttachmentCount:v55 atIndex:v56];
    goto LABEL_71;
  }

  v57 = v43 + 1;
LABEL_72:
  v62[0] = &v64;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v62);
  return v57;
}

uint64_t TRun::SetAttachmentsRightToLeft<false>(uint64_t a1, uint64_t a2, char *__src, uint64_t a4)
{
  v5 = a2;
  v80 = *MEMORY[0x1E69E9840];
  v7 = *(*(a1 + 216) + 48);
  v8 = *(a1 + 200);
  *&v9 = 0xAAAAAAAAAAAAAAAALL;
  *(&v9 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v78[14] = v9;
  v78[13] = v9;
  v78[12] = v9;
  v78[11] = v9;
  v78[10] = v9;
  v78[9] = v9;
  v78[8] = v9;
  v78[7] = v9;
  v78[6] = v9;
  v78[5] = v9;
  v78[4] = v9;
  v78[3] = v9;
  v78[2] = v9;
  v78[1] = v9;
  v78[0] = v9;
  v76 = 0;
  v77 = 0;
  v75 = 0;
  v79 = v78;
  std::vector<long,TInlineBufferAllocator<long,30ul>>::__insert_with_size[abi:fn200100]<long const*,long const*>(&v75, __src, &__src[8 * a2], a2);
  v10 = 126 - 2 * __clz(v76 - v75);
  v11 = v7 + 8 * v8;
  v73[0] = v11;
  if (v76 == v75)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10;
  }

  std::__introsort<std::_ClassicAlgPolicy,LessByStringIndex &,long *,false>(v75, v76, v73, v12, 1);
  v13 = a1;
  v14 = 0;
  v15 = v75;
  v72 = a1;
  v69 = v75;
  if (v5 >= 2)
  {
    v67 = a4;
    v68 = v5;
    v16 = 0;
    v17 = 0;
    v18 = v75 - 1;
    v19 = v75 + 1;
    v20 = 1;
    v21 = v5 - 1;
    v22 = v75;
    v70 = v21;
    while (1)
    {
      v23 = v22[v17];
      v74 = v23;
      v24 = *(v11 + 8 * v23);
      v25 = *(v13 + 216);
      v26 = *(v13 + 200);
      if ((*(v25[5] + 4 * v26 + 4 * v23) & 0x380) == 0)
      {
        break;
      }

      memset(v73, 170, sizeof(v73));
      TRun::FindInsertionGroup(v73, v13, v23);
      v27 = (v73[1] - v73[0]) >> 3;
      if (v27 < 2)
      {
        goto LABEL_20;
      }

      if (v17)
      {
        v28 = v27 + v16;
        v29 = v18;
        v30 = v20;
        while (1)
        {
          v31 = *v29--;
          if (*(v11 + 8 * v31) != v24)
          {
            break;
          }

          --v27;
          if (--v30 <= 1)
          {
            v27 = v28;
            break;
          }
        }
      }

      v32 = v19;
      v33 = v21;
      do
      {
        v34 = *v32++;
        if (*(v11 + 8 * v34) != v24)
        {
          break;
        }

        --v27;
        --v33;
      }

      while (v33);
      if (v27 <= 1)
      {
LABEL_20:
        if (v73[0])
        {
          v73[1] = v73[0];
          operator delete(v73[0]);
        }

        v35 = v72;
        v25 = *(v72 + 216);
        v26 = *(v72 + 200);
        goto LABEL_24;
      }

      if (v73[0])
      {
        v73[1] = v73[0];
        operator delete(v73[0]);
      }

      v13 = v72;
      v14 = v70;
LABEL_30:
      ++v17;
      --v16;
      ++v20;
      ++v18;
      --v21;
      ++v19;
      if (v17 == v14)
      {
        v15 = v22;
        a4 = v67;
        v5 = v68;
        goto LABEL_32;
      }
    }

    v35 = v13;
LABEL_24:
    v71 = [v25 attachmentCountAtIndex:{v26 + v23, v67, v68}];
    v13 = v35;
    if (*(v35 + 256) > 1 || (*(v35 + 224) & 1) != 0)
    {
      TRun::FindPrevGlyphIndex(v35, v24, &v74);
      v13 = v72;
      v36 = v74;
    }

    else
    {
      v36 = v23 - 1;
    }

    v22 = v69;
    v14 = v70;
    if (v36 < *(v13 + 208))
    {
      [*(v72 + 216) setAttachmentCount:v71 + objc_msgSend(*(v13 + 216) atIndex:{"attachmentCountAtIndex:", *(v13 + 200) + v36) + 1, *(v72 + 200) + v36}];
      v13 = v72;
    }

    goto LABEL_30;
  }

LABEL_32:
  v37 = v15[v14];
  v74 = v37;
  if ((*(*(*(v13 + 216) + 40) + 4 * *(v13 + 200) + 4 * v37) & 0x380) == 0)
  {
    v38 = 0;
    goto LABEL_54;
  }

  memset(v73, 170, sizeof(v73));
  TRun::FindInsertionGroup(v73, v13, v37);
  v38 = (v73[1] - v73[0]) >> 3;
  if (v38 < 2)
  {
    v13 = v72;
    goto LABEL_51;
  }

  v39 = *(v11 + 8 * v37);
  v13 = v72;
  if (v14 >= 1)
  {
    v40 = v38 - v14;
    if (v5 <= 1)
    {
      v41 = 1;
    }

    else
    {
      v41 = v5;
    }

    while (*(v11 + 8 * v69[v41 - 2]) == v39)
    {
      --v38;
      if (--v41 <= 1)
      {
        v38 = v40;
        break;
      }
    }
  }

  v42 = v5 - (v14 + 1);
  if (v5 > v14 + 1)
  {
    v43 = v14 - v5 + v38 + 1;
    v44 = &v69[v14 + 1];
    while (1)
    {
      v45 = *v44++;
      if (*(v11 + 8 * v45) != v39)
      {
        break;
      }

      --v38;
      if (!--v42)
      {
        v38 = v43;
        break;
      }
    }
  }

  if (v38 <= 1)
  {
LABEL_51:
    v46 = 1;
    if (!v73[0])
    {
      goto LABEL_53;
    }

    goto LABEL_52;
  }

  v46 = 0;
  if (v73[0])
  {
LABEL_52:
    v73[1] = v73[0];
    operator delete(v73[0]);
    v13 = v72;
  }

LABEL_53:
  if (!v46)
  {
LABEL_77:
    v64 = 0;
    goto LABEL_78;
  }

LABEL_54:
  v47 = *(v11 + 8 * v37);
  v48 = *(v13 + 8);
  if (v47 <= a4)
  {
    v54 = *(v13 + 16) + v48;
    v73[0] = v37;
    v53 = v37;
    while (1)
    {
      if (*(v13 + 256) > 1)
      {
        NextGlyphIndex = TRun::FindNextGlyphIndex(v13, v47, v73);
        v13 = v72;
      }

      else
      {
        if (*(v13 + 224))
        {
          v55 = v53 - 1;
          v73[0] = v53 - 1;
          if (v53 <= 0)
          {
LABEL_63:
            NextGlyphIndex = *(v13 + 16) + *(v13 + 8);
            goto LABEL_67;
          }
        }

        else
        {
          v55 = v53 + 1;
          v73[0] = v53 + 1;
          if (v53 + 1 >= *(v13 + 208))
          {
            goto LABEL_63;
          }
        }

        NextGlyphIndex = *(*(*(v13 + 216) + 48) + 8 * *(v13 + 200) + 8 * v55);
      }

LABEL_67:
      if (NextGlyphIndex >= v54)
      {
        v64 = [*(v13 + 216) attachmentCountAtIndex:*(v13 + 200) + v37] + 1;
        goto LABEL_78;
      }

      v53 = v73[0];
      v57 = *(v13 + 216);
      v58 = *(v13 + 200);
      if (v5 < 2 || *(v57[2] + 2 * v58 + 2 * v73[0]) != -1 && (*(v57[5] + 4 * v58 + 4 * v73[0]) & 0x20) == 0)
      {
        v59 = v13;
        [v57 setStringIndex:v47 atIndex:{v58 + v73[0], v67, v68}];
        v60 = [*(v59 + 216) attachmentCountAtIndex:*(v59 + 200) + v37];
        v61 = v60 + [*(v59 + 216) attachmentCountAtIndex:*(v59 + 200) + v53];
        v62 = *(v59 + 216);
        v63 = *(v59 + 200);
        goto LABEL_76;
      }
    }
  }

  v49 = v13;
  v50 = [*(v13 + 216) attachmentCountAtIndex:*(v13 + 200) + v37];
  v51 = v50;
  if (v47 > v48)
  {
    v52 = v49;
    if (*(v49 + 256) > 1 || (*(v49 + 224) & 1) != 0)
    {
      TRun::FindPrevGlyphIndex(v49, v47, &v74);
      v52 = v72;
      v53 = v74;
    }

    else
    {
      v53 = v37 - 1;
    }

    v65 = v52;
    v61 = v51 - v38 + [*(v52 + 216) attachmentCountAtIndex:{*(v52 + 200) + v53, v67, v68}];
    v62 = *(v65 + 216);
    v63 = *(v65 + 200);
LABEL_76:
    [v62 setAttachmentCount:v61 + 1 atIndex:v63 + v53];
    goto LABEL_77;
  }

  v64 = v50 + 1;
LABEL_78:
  v73[0] = &v75;
  std::vector<std::pair<unsigned int,unsigned int>,TInlineBufferAllocator<std::pair<unsigned int,unsigned int>,30ul>>::__destroy_vector::operator()[abi:fn200100](v73);
  return v64;
}

void TRun::TruncateBeginToChar(TRun *this, uint64_t a2)
{
  NextChar = a2;
  GlyphIndexForChar = TRun::GetGlyphIndexForCharIndex<false>(this, a2);
  v7 = GlyphIndexForChar;
  if (*(*(*(this + 27) + 48) + 8 * *(this + 25) + 8 * GlyphIndexForChar) >= NextChar)
  {
    v5.location = GlyphIndexForChar;
  }

  else
  {
    NextChar = TRun::GetNextChar(this, NextChar, &v7);
    v5.location = v7;
  }

  if (*(this + 224))
  {
    v5.length = v5.location + 1;
    v5.location = 0;
  }

  else
  {
    v5.length = *(this + 26) - v5.location;
  }

  TRun::TruncateStorageRange(this, v5);
  v6 = *(this + 1) - NextChar + *(this + 2);
  *(this + 1) = NextChar;
  *(this + 2) = v6;
}

uint64_t TRun::AbsorbFollowingRun(TRun *this, TRun *a2)
{
  v2 = *(this + 25);
  v3 = *(this + 26);
  if (v3 + v2 != *(a2 + 25))
  {
    return 0;
  }

  v4 = *(a2 + 26);
  if (v4 < 0)
  {
    return 0;
  }

  v5 = v3 + v4;
  if (v5 + v2 > *(*(this + 27) + 8))
  {
    return 0;
  }

  *(this + 26) = v5;
  if (*(a2 + 225))
  {
    *(this + 225) |= 1u;
  }

  *(this + 24) = *(this + 24) + *(a2 + 24);
  return 1;
}

uint64_t TRun::FindNextGlyphIndex(TRun *this, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *(this + 27);
  v7 = *(this + 25);
  v8 = v6[6] + 8 * v7;
  v9 = *(this + 1);
  v10 = *(this + 2);
  v11 = v6[5] + 4 * v7;
  if ((*(v11 + 4 * *a3) & 0x380) == 0)
  {
LABEL_14:
    v16 = v10 + v9;
    v17 = v4 - 1;
    while (1)
    {
      v18 = v17 + 2;
      if (v17 + 2 >= v16)
      {
        break;
      }

      Glyph = TRun::FindGlyphIndex<false>(this, v18, 1);
      if (*(v8 + 8 * Glyph) > ++v17)
      {
        goto LABEL_17;
      }
    }

    if (*(this + 224))
    {
      v19 = -1;
    }

    else
    {
      v19 = *(this + 26);
    }

    *a3 = v19;
    return v18;
  }

  v12 = 1;
  if (*(this + 224))
  {
    v12 = -1;
  }

  Glyph = v12 + *a3;
  if (*(this + 224))
  {
    v14 = -1;
  }

  else
  {
    v14 = *(this + 26);
  }

  if (Glyph == v14)
  {
LABEL_13:
    v4 = [*(this + 27) attachmentCountAtIndex:{*(this + 25) + TRun::FindGlyphIndex<false>(this, a2, 1)}] + a2;
    goto LABEL_14;
  }

  v15 = v6[2] + 2 * v7;
  while (*(v15 + 2 * Glyph) == -1 || (*(v11 + 4 * Glyph) & 0x20) != 0 || *(v8 + 8 * Glyph) != a2)
  {
    Glyph += v12;
    if (v14 == Glyph)
    {
      goto LABEL_13;
    }
  }

LABEL_17:
  *a3 = Glyph;
  return *(v8 + 8 * Glyph);
}

uint64_t TRun::FindGlyphIndex<false>(uint64_t a1, uint64_t a2, int a3)
{
  v3 = *(a1 + 216);
  v4 = *(a1 + 200);
  v5 = v3[6] + 8 * v4;
  v6 = *(a1 + 224);
  if (v6)
  {
    v7 = -a3;
  }

  else
  {
    v7 = a3;
  }

  if (v7 >= 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(a1 + 208) - 1;
  }

  if (v7 < 0)
  {
    v9 = -1;
  }

  else
  {
    v9 = *(a1 + 208);
  }

  if (*(a1 + 256) >= 2)
  {
    if (v8 == v9)
    {
      LOBYTE(v11) = 1;
      v12 = v8;
    }

    else
    {
      v17 = v3[2] + 2 * v4;
      v18 = 4 * v4;
      v11 = 1;
      v12 = v8;
      do
      {
        if (*(v17 + 2 * v8) != -1 && (*(v3[5] + v18 + 4 * v8) & 0x20) == 0)
        {
          v19 = *(v5 + 8 * v8);
          if (v19 == a2)
          {
            goto LABEL_29;
          }

          v20 = (v19 < a2) & ((v19 > *(v5 + 8 * v12)) | v11);
          v11 &= v20 ^ 1;
          if (v20)
          {
            v12 = v8;
          }
        }

        v8 += v7;
      }

      while (v9 != v8);
      v8 = v9;
    }

LABEL_29:
    if (v8 == v9)
    {
      result = v12;
    }

    else
    {
      result = v8;
    }

    if (v8 == v9)
    {
      if (v6)
      {
        v22 = -1;
      }

      else
      {
        v22 = 1;
      }

      v23 = v9 - v7;
      if (v7 == v22)
      {
        v23 = v12;
      }

      if (v11)
      {
        return v23;
      }
    }
  }

  else
  {
    if (v8 == v9)
    {
      v10 = v8;
    }

    else
    {
      v13 = v3[2] + 2 * v4;
      v14 = 4 * v4;
      v15 = v8;
      while (1)
      {
        v10 = v8;
        if (*(v13 + 2 * v15) != -1 && (*(v3[5] + v14 + 4 * v15) & 0x20) == 0)
        {
          v16 = *(v5 + 8 * v15);
          v8 = v15;
          if (v16 >= a2)
          {
            break;
          }
        }

        v15 += v7;
        if (v9 == v15)
        {
          v10 = v8;
          v8 = v9;
          goto LABEL_44;
        }
      }

      if (v16 <= a2)
      {
        v8 = v15;
      }

      else
      {
        v8 = v10;
      }
    }

LABEL_44:
    if (v8 == v9)
    {
      return v10;
    }

    else
    {
      return v8;
    }
  }

  return result;
}

uint64_t TRun::FindPrevGlyphIndex(TRun *this, uint64_t a2, uint64_t *a3)
{
  v4 = a2;
  v6 = *(this + 27);
  v7 = *(this + 25);
  v8 = v6[6] + 8 * v7;
  if (*(this + 64) <= 1 && (*(this + 224) & 1) != 0)
  {
    Glyph = *a3 + 1;
    *a3 = Glyph;
    if (Glyph != *(this + 26))
    {
      return *(v8 + 8 * Glyph);
    }

    return *(this + 1) - 1;
  }

  else
  {
    v9 = *a3;
    v10 = v6[5] + 4 * v7;
    if ((*(v10 + 4 * *a3) & 0x380) == 0)
    {
      goto LABEL_16;
    }

    if (*(this + 224))
    {
      Glyph = v9 + 1;
      v13 = *(this + 26);
      v12 = 1;
    }

    else
    {
      Glyph = v9 - 1;
      v12 = -1;
      v13 = -1;
    }

    if (Glyph != v13)
    {
      v15 = v6[2] + 2 * v7;
      while (*(v15 + 2 * Glyph) == -1 || (*(v10 + 4 * Glyph) & 0x20) != 0 || *(v8 + 8 * Glyph) != a2)
      {
        Glyph += v12;
        if (v13 == Glyph)
        {
          goto LABEL_15;
        }
      }

LABEL_18:
      *a3 = Glyph;
      return *(v8 + 8 * Glyph);
    }

LABEL_15:
    v4 = [*(this + 27) attachmentCountAtIndex:{*(this + 25) + TRun::FindGlyphIndex<false>(this, a2, -1)}] + a2;
LABEL_16:
    while (1)
    {
      v14 = v4 - 1;
      if (v4 <= *(this + 1))
      {
        break;
      }

      Glyph = TRun::FindGlyphIndex<false>(this, --v4, -1);
      if (Glyph != *a3)
      {
        goto LABEL_18;
      }
    }
  }

  return v14;
}

uint64_t *TRun::FindInsertionGroup(TRun *this, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  *(this + 1) = 0;
  *(this + 2) = 0;
  *this = 0;
  std::vector<long>::push_back[abi:fn200100](this, &v21);
  v6 = *(*(a2 + 216) + 48) + 8 * *(a2 + 200);
  v7 = *(v6 + 8 * a3);
  v20 = a3;
  if (*(a2 + 256) > 1 || (*(a2 + 224) & 1) != 0)
  {
    goto LABEL_6;
  }

  v20 = a3 - 1;
  if (a3 <= 0)
  {
    goto LABEL_5;
  }

  PrevGlyphIndex = *(v6 + 8 * (a3 - 1));
  while (PrevGlyphIndex == v7)
  {
    std::vector<long>::push_back[abi:fn200100](this, &v20);
    if (*(a2 + 256) > 1 || (*(a2 + 224) & 1) != 0)
    {
LABEL_6:
      PrevGlyphIndex = TRun::FindPrevGlyphIndex(a2, v7, &v20);
    }

    else
    {
      v9 = v20;
      v10 = --v20;
      if (v9 <= 0)
      {
LABEL_5:
        PrevGlyphIndex = *(a2 + 8) - 1;
      }

      else
      {
        PrevGlyphIndex = *(*(*(a2 + 216) + 48) + 8 * *(a2 + 200) + 8 * v10);
      }
    }
  }

  v19 = a3;
  if (*(a2 + 256) > 1)
  {
    goto LABEL_20;
  }

  if ((*(a2 + 224) & 1) == 0)
  {
    v11 = a3 + 1;
    goto LABEL_18;
  }

  v11 = a3 - 1;
  v19 = a3 - 1;
  if (a3 > 0)
  {
    goto LABEL_19;
  }

LABEL_17:
  NextGlyphIndex = *(a2 + 16) + *(a2 + 8);
  while (NextGlyphIndex == v7)
  {
    std::vector<long>::push_back[abi:fn200100](this, &v19);
    if (*(a2 + 256) > 1)
    {
LABEL_20:
      NextGlyphIndex = TRun::FindNextGlyphIndex(a2, v7, &v19);
    }

    else
    {
      v13 = v19;
      if (*(a2 + 224))
      {
        v11 = --v19;
        if (v13 <= 0)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v11 = v19 + 1;
LABEL_18:
        v19 = v11;
        if (v11 >= *(a2 + 208))
        {
          goto LABEL_17;
        }
      }

LABEL_19:
      NextGlyphIndex = *(*(*(a2 + 216) + 48) + 8 * *(a2 + 200) + 8 * v11);
    }
  }

  result = *this;
  v15 = *(this + 1);
  v16 = (v15 - *this) >> 3;
  if (v16 >= 2)
  {
    if (*(a2 + 224))
    {
      v17 = 126 - 2 * __clz(v16);
      if (v15 == result)
      {
        v18 = 0;
      }

      else
      {
        v18 = v17;
      }

      return std::__introsort<std::_ClassicAlgPolicy,std::greater<long> &,long *,true>(result, v15, v18, 1);
    }

    else
    {
      v22 = -86;
      return std::__sort<std::__less<long,long> &,long *>();
    }
  }

  return result;
}

void std::vector<long>::push_back[abi:fn200100](const void **a1, void *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 3) + 1;
    if (v9 >> 61)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 2 > v9)
    {
      v9 = v10 >> 2;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFF8;
    v12 = 0x1FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::allocator<long>::allocate_at_least[abi:fn200100](a1, v12);
    }

    v13 = (8 * (v8 >> 3));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t *TRun::GetLeadingWhitespace@<X0>(uint64_t *this@<X0>, double *a2@<X8>)
{
  if (this[26] <= 0)
  {
    *a2 = 0.0;
    a2[1] = 0.0;
    a2[2] = 0.0;
  }

  else
  {
    v3 = this;
    v4 = this[27];
    v5 = *(v4 + 32);
    if (v5 || (v8 = *(v4 + 24)) == 0)
    {
      v6 = 0;
      v7 = v5 + 16 * this[25];
    }

    else
    {
      v7 = v8 + 8 * this[25];
      v6 = 1;
    }

    this = TRun::ResolveCharIndex(this, this[1]);
    v9 = this;
    v20 = v10;
    v11 = v3[1];
    v12 = 0;
    v13 = 0.0;
    if (v11 > this || v11 + v3[2] <= this)
    {
      v15 = this;
    }

    else
    {
      v15 = this;
      do
      {
        v16 = v3[27];
        v17 = v3[25];
        if (*(*(v16 + 16) + 2 * v17 + 2 * v20) != -1 && (*(*(v16 + 40) + 4 * v17 + 4 * v20) & 0x21) == 0)
        {
          break;
        }

        ++v12;
        v18 = v6 ? 3 : 4;
        v13 = v13 + *(v7 + (v20 << v18));
        this = TRun::GetNextChar(v3, v15, &v20);
        v15 = this;
        v19 = v3[1];
        if (v19 > this)
        {
          break;
        }
      }

      while (v19 + v3[2] > this);
    }

    *a2 = v15 - v9;
    *(a2 + 1) = v12;
    a2[2] = v13;
  }

  return this;
}

void TRun::InitStretchFactors(TRun *this)
{
  v2 = *(this + 39);
  if (!v2)
  {
    operator new();
  }

  v3 = *(this + 26);
  v5 = *(v2 + 56);
  v6 = *(v2 + 64);
  v4 = (v2 + 56);
  if (v3 > (v6 - v5) >> 4)
  {

    std::vector<CGSize>::resize(v4, v3, &kUnitSize);
  }
}

void std::vector<CGSize>::resize(void *a1, unint64_t a2, _OWORD *a3)
{
  v3 = (a1[1] - *a1) >> 4;
  if (a2 <= v3)
  {
    if (a2 < v3)
    {
      a1[1] = *a1 + 16 * a2;
    }
  }

  else
  {
    std::vector<CGSize>::__append(a1, a2 - v3, a3);
  }
}

uint64_t TRun::NoteCrossStreamPosition(uint64_t this, double a2)
{
  v3 = *(this + 312);
  if (v3)
  {
    v4 = *(v3 + 16);
    v5 = *(v3 + 24);
    if (v4 > a2)
    {
      v4 = a2;
    }

    if (v5 < a2)
    {
      v5 = a2;
    }

    *(v3 + 16) = v4;
    *(v3 + 24) = v5;
  }

  else if (a2 != 0.0)
  {
    operator new();
  }

  return this;
}

void *std::vector<CGSize>::vector[abi:fn200100](void *result, void *a2)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  v2 = a2[1];
  if (v2 != *a2)
  {
    std::vector<CGSize>::__vallocate[abi:fn200100](result, (v2 - *a2) >> 4);
  }

  return result;
}

void std::vector<CGSize>::__append(uint64_t a1, unint64_t a2)
{
  v5 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (a2 <= (v4 - v5) >> 4)
  {
    if (a2)
    {
      bzero(*(a1 + 8), 16 * a2);
      v5 += 16 * a2;
    }

    *(a1 + 8) = v5;
  }

  else
  {
    v6 = v5 - *a1;
    v7 = a2 + (v6 >> 4);
    if (v7 >> 60)
    {
      std::__throw_bad_array_new_length[abi:fn200100]();
    }

    v8 = v4 - *a1;
    if (v8 >> 3 > v7)
    {
      v7 = v8 >> 3;
    }

    if (v8 >= 0x7FFFFFFFFFFFFFF0)
    {
      v9 = 0xFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      std::allocator<CGSize>::allocate_at_least[abi:fn200100](a1, v9);
    }

    v10 = (16 * (v6 >> 4));
    bzero(v10, 16 * a2);
    v11 = &v10[16 * a2];
    v12 = *(a1 + 8) - *a1;
    v13 = &v10[-v12];
    memcpy(&v10[-v12], *a1, v12);
    v14 = *a1;
    *a1 = v13;
    *(a1 + 8) = v11;
    *(a1 + 16) = 0;
    if (v14)
    {

      operator delete(v14);
    }
  }
}

void std::allocator<long>::allocate_at_least[abi:fn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::__throw_bad_array_new_length[abi:fn200100]();
}

uint64_t std::__introsort<std::_ClassicAlgPolicy,std::greater<long> &,long *,true>(uint64_t result, uint64_t *a2, uint64_t a3, char a4)
{
  v6 = result;
  v7 = vdupq_n_s64(1uLL);
  v8 = xmmword_18475A340;
  v9 = vdupq_n_s64(2uLL);
  v194 = v7;
  v193 = v9;
  while (2)
  {
    v10 = v6;
    while (1)
    {
LABEL_3:
      v6 = v10;
      v11 = a2 - v10;
      if (v11 > 2)
      {
        switch(v11)
        {
          case 3:
            v122 = v10[1];
            v123 = *(a2 - 1);
            if (v122 <= v123)
            {
              v124 = *(a2 - 1);
            }

            else
            {
              v124 = v10[1];
            }

            if (v122 >= v123)
            {
              v122 = *(a2 - 1);
            }

            *(a2 - 1) = v122;
            v10[1] = v124;
            v125 = *(a2 - 1);
            if (v125 <= *v10)
            {
              v126 = *v10;
            }

            else
            {
              v126 = *(a2 - 1);
            }

            if (v125 >= *v10)
            {
              v125 = *v10;
            }

            *(a2 - 1) = v125;
            v128 = *v10;
            v127 = v10[1];
            if (v126 <= v127)
            {
              v128 = v10[1];
            }

            if (v126 < v127)
            {
              v127 = v126;
            }

            *v10 = v128;
            v10[1] = v127;
            return result;
          case 4:
            v111 = v10[1];
            v110 = v10[2];
            if (*v10 <= v110)
            {
              v112 = v10[2];
            }

            else
            {
              v112 = *v10;
            }

            if (*v10 < v110)
            {
              v110 = *v10;
            }

            v10[2] = v110;
            *v10 = v112;
            v113 = *(a2 - 1);
            if (v111 <= v113)
            {
              v114 = *(a2 - 1);
            }

            else
            {
              v114 = v111;
            }

            if (v111 < v113)
            {
              v113 = v111;
            }

            *(a2 - 1) = v113;
            v115 = *v10;
            if (*v10 <= v114)
            {
              v116 = v114;
            }

            else
            {
              v116 = *v10;
            }

            if (*v10 >= v114)
            {
              v115 = v114;
            }

            *v10 = v116;
            v10[1] = v115;
            v117 = v10[2];
            v118 = *(a2 - 1);
            if (v117 <= v118)
            {
              v119 = *(a2 - 1);
            }

            else
            {
              v119 = v10[2];
            }

            if (v117 >= v118)
            {
              v117 = *(a2 - 1);
            }

            *(a2 - 1) = v117;
            v120 = v10[1];
            if (v120 <= v119)
            {
              v121 = v119;
            }

            else
            {
              v121 = v10[1];
            }

            if (v120 >= v119)
            {
              v120 = v119;
            }

            v10[1] = v121;
            v10[2] = v120;
            return result;
          case 5:
            v129 = *v10;
            v130 = v10[1];
            if (*v10 <= v130)
            {
              v131 = v10[1];
            }

            else
            {
              v131 = *v10;
            }

            if (*v10 >= v130)
            {
              v129 = v10[1];
            }

            *v10 = v131;
            v10[1] = v129;
            v132 = v10[3];
            v133 = *(a2 - 1);
            if (v132 <= v133)
            {
              v134 = *(a2 - 1);
            }

            else
            {
              v134 = v10[3];
            }

            if (v132 >= v133)
            {
              v132 = *(a2 - 1);
            }

            *(a2 - 1) = v132;
            v10[3] = v134;
            v135 = *(a2 - 1);
            v136 = v10[2];
            if (v135 <= v136)
            {
              v137 = v10[2];
            }

            else
            {
              v137 = *(a2 - 1);
            }

            if (v135 >= v136)
            {
              v135 = v10[2];
            }

            *(a2 - 1) = v135;
            v139 = v10[2];
            v138 = v10[3];
            v140 = v10[1];
            if (v137 <= v138)
            {
              v139 = v10[3];
            }

            if (v137 < v138)
            {
              v138 = v137;
            }

            v10[2] = v139;
            v10[3] = v138;
            v141 = *(a2 - 1);
            if (v140 <= v141)
            {
              v142 = *(a2 - 1);
            }

            else
            {
              v142 = v140;
            }

            if (v140 < v141)
            {
              v141 = v140;
            }

            *(a2 - 1) = v141;
            v143 = *v10;
            v145 = v10[2];
            v144 = v10[3];
            if (v144 <= *v10)
            {
              v146 = *v10;
            }

            else
            {
              v146 = v10[3];
            }

            if (v144 >= *v10)
            {
              v144 = *v10;
            }

            if (v146 <= v145)
            {
              v143 = v10[2];
            }

            if (v146 < v145)
            {
              v145 = v146;
            }

            if (v144 <= v142)
            {
              v147 = v142;
            }

            else
            {
              v147 = v144;
            }

            if (v144 >= v142)
            {
              v144 = v142;
            }

            if (v147 <= v145)
            {
              v142 = v145;
            }

            *v10 = v143;
            v10[1] = v142;
            if (v147 >= v145)
            {
              v148 = v145;
            }

            else
            {
              v148 = v147;
            }

            v10[2] = v148;
            v10[3] = v144;
            return result;
        }
      }

      else
      {
        if (v11 < 2)
        {
          return result;
        }

        if (v11 == 2)
        {
          v149 = *(a2 - 1);
          v150 = *v10;
          if (v149 > *v10)
          {
            *v10 = v149;
            *(a2 - 1) = v150;
          }

          return result;
        }
      }

      if (v11 <= 23)
      {
        v151 = v10 + 1;
        v153 = v10 == a2 || v151 == a2;
        if (a4)
        {
          if (!v153)
          {
            v154 = 8;
            v155 = v10;
            do
            {
              v156 = *v155;
              v155 = v151;
              v157 = *v151;
              if (v157 > v156)
              {
                v158 = v154;
                while (1)
                {
                  *(v10 + v158) = v156;
                  v159 = v158 - 8;
                  if (v158 == 8)
                  {
                    break;
                  }

                  v156 = *(v10 + v158 - 16);
                  v158 -= 8;
                  if (v157 <= v156)
                  {
                    v160 = (v10 + v159);
                    goto LABEL_297;
                  }
                }

                v160 = v10;
LABEL_297:
                *v160 = v157;
              }

              v151 = v155 + 1;
              v154 += 8;
            }

            while (v155 + 1 != a2);
          }

          return result;
        }

        if (v153)
        {
          return result;
        }

        v188 = 0;
        v189 = 8;
        while (1)
        {
          v190 = *(v10 + v188);
          v188 = v189;
          v191 = *v151;
          if (*v151 > v190)
          {
            break;
          }

LABEL_348:
          v189 = v188 + 8;
          if (++v151 == a2)
          {
            return result;
          }
        }

        v192 = 0;
        while (1)
        {
          v151[v192] = v190;
          if (!(v188 + v192 * 8))
          {
            break;
          }

          v190 = v151[v192 - 2];
          --v192;
          if (v191 <= v190)
          {
            v151[v192] = v191;
            goto LABEL_348;
          }
        }

LABEL_350:
        __break(1u);
        return result;
      }

      if (!a3)
      {
        if (v10 != a2)
        {
          v161 = (v11 - 2) >> 1;
          v162 = v161;
          do
          {
            v163 = v162;
            if (v161 >= v162)
            {
              v164 = (2 * v162) | 1;
              v165 = &v10[v164];
              if (2 * v163 + 2 >= v11)
              {
                v166 = *v165;
              }

              else
              {
                v166 = v165[1];
                v167 = *v165 <= v166;
                if (*v165 < v166)
                {
                  v166 = *v165;
                }

                if (!v167)
                {
                  ++v165;
                  v164 = 2 * v163 + 2;
                }
              }

              v168 = &v10[v163];
              v169 = *v168;
              if (v166 <= *v168)
              {
                do
                {
                  *v168 = v166;
                  v168 = v165;
                  if (v161 < v164)
                  {
                    break;
                  }

                  v170 = (2 * v164) | 1;
                  v165 = &v10[v170];
                  v164 = 2 * v164 + 2;
                  if (v164 >= v11)
                  {
                    v166 = *v165;
                    v164 = v170;
                  }

                  else
                  {
                    v166 = *v165;
                    result = v165[1];
                    if (*v165 >= result)
                    {
                      v166 = v165[1];
                    }

                    if (*v165 <= result)
                    {
                      v164 = v170;
                    }

                    else
                    {
                      ++v165;
                    }
                  }
                }

                while (v166 <= v169);
                *v168 = v169;
              }
            }

            v162 = v163 - 1;
          }

          while (v163);
          do
          {
            v171 = 0;
            v172 = *v10;
            v173 = v10;
            do
            {
              v174 = &v173[v171];
              v175 = v174 + 1;
              v176 = (2 * v171) | 1;
              v171 = 2 * v171 + 2;
              if (v171 >= v11)
              {
                v177 = *v175;
                v171 = v176;
              }

              else
              {
                v179 = v174[2];
                v178 = v174 + 2;
                v177 = v179;
                v180 = *(v178 - 1);
                v181 = v180 <= v179;
                if (v180 < v179)
                {
                  v177 = *(v178 - 1);
                }

                if (v181)
                {
                  v171 = v176;
                }

                else
                {
                  v175 = v178;
                }
              }

              *v173 = v177;
              v173 = v175;
            }

            while (v171 <= ((v11 - 2) >> 1));
            if (v175 == --a2)
            {
              *v175 = v172;
            }

            else
            {
              *v175 = *a2;
              *a2 = v172;
              v182 = (v175 - v10 + 8) >> 3;
              v20 = v182 < 2;
              v183 = v182 - 2;
              if (!v20)
              {
                v184 = v183 >> 1;
                v185 = &v10[v184];
                v186 = *v185;
                v187 = *v175;
                if (*v185 > *v175)
                {
                  do
                  {
                    *v175 = v186;
                    v175 = v185;
                    if (!v184)
                    {
                      break;
                    }

                    v184 = (v184 - 1) >> 1;
                    v185 = &v10[v184];
                    v186 = *v185;
                  }

                  while (*v185 > v187);
                  *v175 = v187;
                }
              }
            }

            v20 = v11-- <= 2;
          }

          while (!v20);
        }

        return result;
      }

      v12 = v11 >> 1;
      v13 = *(a2 - 1);
      if (v11 < 0x81)
      {
        v47 = *v10;
        if (*v10 <= v13)
        {
          v48 = *(a2 - 1);
        }

        else
        {
          v48 = *v10;
        }

        if (*v10 >= v13)
        {
          v47 = *(a2 - 1);
        }

        *(a2 - 1) = v47;
        *v10 = v48;
        v49 = *(a2 - 1);
        v50 = v10[v12];
        if (v49 <= v50)
        {
          v51 = v10[v12];
        }

        else
        {
          v51 = *(a2 - 1);
        }

        if (v49 >= v50)
        {
          v49 = v10[v12];
        }

        *(a2 - 1) = v49;
        v52 = *v10;
        v53 = v51 <= *v10;
        if (v51 > *v10)
        {
          v52 = v10[v12];
        }

        v10[v12] = v52;
        v46 = *v10;
        if (v53)
        {
          v46 = v51;
        }

        *v10 = v46;
      }

      else
      {
        v14 = &v10[v12];
        v15 = *v14;
        if (*v14 <= v13)
        {
          v16 = *(a2 - 1);
        }

        else
        {
          v16 = *v14;
        }

        if (*v14 >= v13)
        {
          v15 = *(a2 - 1);
        }

        *(a2 - 1) = v15;
        *v14 = v16;
        v17 = *(a2 - 1);
        if (v17 <= *v10)
        {
          v18 = *v10;
        }

        else
        {
          v18 = *(a2 - 1);
        }

        if (v17 >= *v10)
        {
          v17 = *v10;
        }

        *(a2 - 1) = v17;
        v19 = *v14;
        v20 = v18 <= *v14;
        if (v18 > *v14)
        {
          v19 = *v10;
        }

        *v10 = v19;
        v22 = *(v14 - 1);
        v21 = *v14;
        if (v20)
        {
          v21 = v18;
        }

        *v14 = v21;
        v23 = *(a2 - 2);
        if (v22 <= v23)
        {
          v24 = *(a2 - 2);
        }

        else
        {
          v24 = v22;
        }

        if (v22 < v23)
        {
          v23 = v22;
        }

        *(a2 - 2) = v23;
        *(v14 - 1) = v24;
        v25 = *(a2 - 2);
        v26 = v10[1];
        if (v25 <= v26)
        {
          v27 = v10[1];
        }

        else
        {
          v27 = *(a2 - 2);
        }

        if (v25 >= v26)
        {
          v25 = v10[1];
        }

        *(a2 - 2) = v25;
        v28 = *(v14 - 1);
        v29 = v27 <= v28;
        if (v27 > v28)
        {
          v28 = v10[1];
        }

        v10[1] = v28;
        v30 = *(v14 - 1);
        if (v29)
        {
          v30 = v27;
        }

        *(v14 - 1) = v30;
        v31 = v14[1];
        v32 = *(a2 - 3);
        if (v31 <= v32)
        {
          v33 = *(a2 - 3);
        }

        else
        {
          v33 = v14[1];
        }

        if (v31 >= v32)
        {
          v31 = *(a2 - 3);
        }

        *(a2 - 3) = v31;
        v14[1] = v33;
        v34 = *(a2 - 3);
        v35 = v10[2];
        if (v34 <= v35)
        {
          v36 = v10[2];
        }

        else
        {
          v36 = *(a2 - 3);
        }

        if (v34 >= v35)
        {
          v34 = v10[2];
        }

        *(a2 - 3) = v34;
        v37 = v14[1];
        v38 = v36 <= v37;
        if (v36 > v37)
        {
          v37 = v10[2];
        }

        v10[2] = v37;
        v40 = *v14;
        v39 = v14[1];
        if (v38)
        {
          v39 = v36;
        }

        v41 = *(v14 - 1);
        if (v40 <= v39)
        {
          v42 = v39;
        }

        else
        {
          v42 = *v14;
        }

        if (v40 < v39)
        {
          v39 = *v14;
        }

        if (v39 <= v41)
        {
          v43 = *(v14 - 1);
        }

        else
        {
          v43 = v39;
        }

        if (v39 >= v41)
        {
          v39 = *(v14 - 1);
        }

        v14[1] = v39;
        if (v41 <= v42)
        {
          v44 = v42;
        }

        else
        {
          v44 = v41;
        }

        if (v41 > v42)
        {
          v43 = v42;
        }

        *(v14 - 1) = v44;
        *v14 = v43;
        v45 = *v10;
        *v10 = v43;
        *v14 = v45;
        v46 = *v10;
      }

      --a3;
      if ((a4 & 1) != 0 || *(v10 - 1) > v46)
      {
        break;
      }

      if (v46 <= *(a2 - 1))
      {
        v101 = v10 + 1;
        do
        {
          v10 = v101;
          if (v101 >= a2)
          {
            break;
          }

          ++v101;
        }

        while (v46 <= *v10);
      }

      else
      {
        v99 = v10 + 1;
        do
        {
          if (v99 == a2)
          {
            goto LABEL_350;
          }

          v100 = *v99++;
        }

        while (v46 <= v100);
        v10 = v99 - 1;
      }

      v102 = a2;
      if (v10 < a2)
      {
        v102 = a2;
        while (v102 != v6)
        {
          v103 = *--v102;
          if (v46 <= v103)
          {
            goto LABEL_181;
          }
        }

        goto LABEL_350;
      }

LABEL_181:
      if (v10 < v102)
      {
        v104 = *v10;
        v105 = *v102;
        do
        {
          *v10 = v105;
          v106 = v10 + 1;
          *v102 = v104;
          do
          {
            if (v106 == a2)
            {
              goto LABEL_350;
            }

            v107 = *v106++;
            v104 = v107;
          }

          while (v46 <= v107);
          v10 = v106 - 1;
          do
          {
            if (v102 == v6)
            {
              goto LABEL_350;
            }

            v108 = *--v102;
            v105 = v108;
          }

          while (v46 > v108);
        }

        while (v10 < v102);
      }

      v109 = v10 - 1;
      if (v10 - 1 != v6)
      {
        *v6 = *v109;
      }

      a4 = 0;
      *v109 = v46;
    }

    if (v46 <= *(a2 - 1))
    {
      v57 = v10 + 1;
      do
      {
        v56 = v57;
        if (v57 >= a2)
        {
          break;
        }

        ++v57;
      }

      while (v46 <= *v56);
    }

    else
    {
      v54 = v10 + 1;
      do
      {
        if (v54 == a2)
        {
          goto LABEL_350;
        }

        v55 = *v54++;
      }

      while (v46 <= v55);
      v56 = v54 - 1;
    }

    v58 = a2;
    if (v56 < a2)
    {
      v58 = a2;
      while (v58 != v10)
      {
        v59 = *--v58;
        if (v46 <= v59)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_350;
    }

LABEL_104:
    v60 = v56;
    if (v56 < v58)
    {
      v61 = *v56;
      *v56 = *v58;
      v60 = v56 + 1;
      *v58 = v61;
    }

    v62 = v58 - 1;
    v63 = (v58 - 1) - v60;
    if (v63 < 1009)
    {
      v64 = 0;
      v77 = v63 >> 3;
      v75 = 1;
LABEL_130:
      v81 = v77 + 1;
      v78 = (v77 + 1) / 2;
      v79 = v81 - v81 / 2;
      goto LABEL_131;
    }

    v64 = 0;
    v65 = 0;
    v66 = vdupq_n_s64(v46);
    do
    {
      if (v65)
      {
        if (v64)
        {
          goto LABEL_110;
        }
      }

      else
      {
        v67 = 0uLL;
        v68 = v8;
        do
        {
          v67 = vorrq_s8(vshlq_u64(vandq_s8(vcgeq_s64(v66, *(v60 + v65)), v7), v68), v67);
          v68 = vaddq_s64(v68, v9);
          v65 += 16;
        }

        while (v65 != 512);
        v65 = vorr_s8(*v67.i8, *&vextq_s8(v67, v67, 8uLL));
        if (v64)
        {
LABEL_110:
          if (!v65)
          {
            goto LABEL_121;
          }

          goto LABEL_118;
        }
      }

      v69 = 0uLL;
      v70 = 0x1FFFFFFFFFFFFFFFLL;
      v71 = v8;
      do
      {
        v69 = vorrq_s8(vshlq_u64(vandq_s8(vcgtq_s64(vextq_s8(*&v62[v70], *&v62[v70], 8uLL), v66), vdupq_n_s64(1uLL)), v71), v69);
        v71 = vaddq_s64(v71, vdupq_n_s64(2uLL));
        v70 -= 2;
      }

      while (v70 != -65);
      v64 = vorr_s8(*v69.i8, *&vextq_s8(v69, v69, 8uLL));
      if (!v65)
      {
        goto LABEL_121;
      }

LABEL_118:
      if (v64)
      {
        do
        {
          v72 = __clz(__rbit64(v65));
          v65 &= v65 - 1;
          v73 = &v62[-__clz(__rbit64(v64))];
          v74 = v60[v72];
          v60[v72] = *v73;
          *v73 = v74;
          v64 &= v64 - 1;
        }

        while (v64 && v65);
      }

LABEL_121:
      v60 += 64 * (v65 == 0);
      v75 = v64 == 0;
      if (v64)
      {
        v76 = 0;
      }

      else
      {
        v76 = -512;
      }

      v62 = (v62 + v76);
    }

    while (v62 - v60 > 1008);
    v77 = v62 - v60;
    if (!(v64 | v65))
    {
      goto LABEL_130;
    }

    v78 = v77 - 63;
    v79 = 64;
    v80 = 64;
    if (v65)
    {
      if (v64)
      {
        goto LABEL_140;
      }

LABEL_137:
      if (v78 >= 1)
      {
        v83 = 0;
        v64 = 0;
        v84 = v62;
        do
        {
          v85 = *v84--;
          v64 |= (v85 > v46) << v83++;
        }

        while (v78 != v83);
        goto LABEL_140;
      }

      if (v65)
      {
        v93 = 0;
      }

      else
      {
        v93 = v80;
      }

      v10 = &v60[v93];
LABEL_157:
      if (v65)
      {
        v62 -= v78;
        goto LABEL_159;
      }

      goto LABEL_163;
    }

LABEL_131:
    if (v78 < 1)
    {
      v65 = 0;
    }

    else
    {
      v82 = 0;
      v65 = 0;
      do
      {
        v65 |= (v60[v82] <= v46) << v82;
        ++v82;
      }

      while (v78 != v82);
    }

    v80 = v78;
    v78 = v79;
    if (v75)
    {
      goto LABEL_137;
    }

LABEL_140:
    if (v65 && v64)
    {
      do
      {
        v86 = __clz(__rbit64(v65));
        v65 &= v65 - 1;
        v87 = &v62[-__clz(__rbit64(v64))];
        v88 = v60[v86];
        v60[v86] = *v87;
        *v87 = v88;
        v64 &= v64 - 1;
      }

      while (v64 && v65);
    }

    if (v65)
    {
      v89 = 0;
    }

    else
    {
      v89 = v80;
    }

    v10 = &v60[v89];
    if (!v64)
    {
      goto LABEL_157;
    }

    if (v65)
    {
      do
      {
LABEL_159:
        v94 = __clz(v65) ^ 0x3F;
        v95 = &v10[v94];
        if (v62 != v95)
        {
          v96 = *v95;
          *v95 = *v62;
          *v62 = v96;
        }

        v65 &= ~(-1 << v94);
        --v62;
      }

      while (v65);
      v10 = v62 + 1;
    }

    else
    {
      do
      {
        v90 = __clz(v64) ^ 0x3F;
        v91 = &v62[-v90];
        if (v10 != v91)
        {
          v92 = *v91;
          *v91 = *v10;
          *v10 = v92;
        }

        v64 &= ~(-1 << v90);
        ++v10;
      }

      while (v64);
    }

LABEL_163:
    v97 = v10 - 1;
    if (v10 - 1 != v6)
    {
      *v6 = *v97;
    }

    *v97 = v46;
    if (v56 < v58)
    {
LABEL_168:
      result = std::__introsort<std::_ClassicAlgPolicy,std::greater<long> &,long *,true>(v6, v10 - 1, a3, a4 & 1);
      v9 = v193;
      v8 = xmmword_18475A340;
      v7 = v194;
      a4 = 0;
      goto LABEL_3;
    }

    v98 = std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,std::greater<long> &,long *>(v6, v10 - 1);
    result = std::__insertion_sort_incomplete[abi:fn200100]<std::_ClassicAlgPolicy,std::greater<long> &,long *>(v10, a2);
    if (!result)
    {
      v8 = xmmword_18475A340;
      v7 = v194;
      v9 = v193;
      if (!v98)
      {
        goto LABEL_168;
      }

      goto LABEL_3;
    }

    a2 = v10 - 1;
    v8 = xmmword_18475A340;
    v7 = v194;
    v9 = v193;
    if (!v98)
    {
      continue;
    }

    return result;
  }
}