uint64_t _CFBundleGrokMachTypeForFatFile(int a1, UInt8 *a2, uint64_t a3, int a4, BOOL *a5, const __CFArray **a6, CFMutableDictionaryRef *a7, char *a8, _DWORD *a9, _DWORD *a10)
{
  v67 = *MEMORY[0x1E69E9840];
  v17 = NXGetLocalArchInfo();
  v18 = _CFBundleCurrentArchitecture();
  if (a5)
  {
    *a5 = 0;
  }

  if (a6)
  {
    *a6 = 0;
  }

  v61 = a5;
  v19 = a9;
  if (a7)
  {
    *a7 = 0;
  }

  v62 = a7;
  if (a8)
  {
    *a8 = 0;
  }

  if (a9)
  {
    *a9 = 0;
  }

  v20 = a8;
  if (a10)
  {
    *a10 = 0;
  }

  if (a3 >= 512)
  {
    v21 = 512;
  }

  else
  {
    v21 = a3;
  }

  __memmove_chk();
  if (a4 && a3 >= 1)
  {
    v24 = 0;
    do
    {
      *&v64[v24 + 32] = bswap32(*&v64[v24 + 32]);
      v24 += 4;
    }

    while (v21 > v24);
  }

  if (v65 >= ((v21 - 8) / 0x14uLL))
  {
    v25 = (v21 - 8) / 0x14uLL;
  }

  else
  {
    v25 = v65;
  }

  if (!v25)
  {
    v33 = 0;
    goto LABEL_114;
  }

  if (v17)
  {
    v17 = NXFindBestFatArch(v17[2], v17[3], v66, v25);
  }

  if (!v17 && v18)
  {
    v17 = NXFindBestFatArch(v18, 0, v66, v25);
  }

  if (a6)
  {
    v60 = v20;
    v26 = v66;
    Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
    v28 = -v25;
    do
    {
      v29 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberSInt32Type, v26);
      v68.length = CFArrayGetCount(Mutable);
      v68.location = 0;
      if (CFArrayGetFirstIndexOfValue(Mutable, v68, v29) < 0)
      {
        CFArrayAppendValue(Mutable, v29);
      }

      CFRelease(v29);
      ++v26;
    }

    while (!__CFADD__(v28++, 1));
    *a6 = Mutable;
    v20 = v60;
    v19 = a9;
  }

  if (a1 < 0 || (v17 ? (v31 = v17 + 2) : (v31 = &v66[0].offset), lseek(a1, *v31, 0) != *v31 || (v32 = v64, read(a1, v64, 0x20uLL) <= 31)))
  {
    v33 = 0;
    p_offset = &v66[0].offset;
    if (v17)
    {
      p_offset = v17 + 2;
    }

    if (!a2)
    {
      goto LABEL_114;
    }

    v35 = *p_offset;
    if (a3 < (v35 + 32))
    {
      goto LABEL_114;
    }

    v32 = &a2[v35];
  }

  v33 = 0;
  v36 = *v32;
  if (*v32 <= -17958195)
  {
    if (v36 == -822415874)
    {
      v50 = v32[3];
      if (v61 && v50 == 0x2000000)
      {
        v51 = &v66[0].offset;
        if (v17)
        {
          v51 = v17 + 2;
        }

        *v61 = _CFBundleGrokX11FromFile(a1, a2, a3, *v51, 1, 0);
      }

      v33 = bswap32(v50);
      if (v62)
      {
        v52 = &v66[0].offset;
        if (v17)
        {
          v52 = v17 + 2;
        }

        *v62 = _CFBundleCreateInfoDictFromFile(a1, a2, a3, *v52, 1, 0);
      }

      if (v20 || v19 || a10)
      {
        v53 = &v66[0].offset;
        if (v17)
        {
          v53 = v17 + 2;
        }

        _CFBundleGrokObjcImageInfoFromFile(a1, a2, a3, *v53, 1, 0, v20, v19, v22, v23, a10);
      }
    }

    else if (v36 == -805638658)
    {
      v37 = v32[3];
      if (v61 && v37 == 0x2000000)
      {
        v38 = &v66[0].offset;
        if (v17)
        {
          v38 = v17 + 2;
        }

        *v61 = _CFBundleGrokX11FromFile(a1, a2, a3, *v38, 1, 1);
      }

      v33 = bswap32(v37);
      if (v62)
      {
        v39 = &v66[0].offset;
        if (v17)
        {
          v39 = v17 + 2;
        }

        *v62 = _CFBundleCreateInfoDictFromFile(a1, a2, a3, *v39, 1, 1);
      }

      if (v20 || v19 || a10)
      {
        v40 = &v66[0].offset;
        if (v17)
        {
          v40 = v17 + 2;
        }

        _CFBundleGrokObjcImageInfoFromFile(a1, a2, a3, *v40, 1, 1, v20, v19, v22, v23, a10);
      }
    }

    goto LABEL_114;
  }

  if (v36 == -17958193)
  {
    v33 = v32[3];
    if (v61 && v33 == 2)
    {
      v54 = &v66[0].offset;
      if (v17)
      {
        v54 = v17 + 2;
      }

      *v61 = _CFBundleGrokX11FromFile(a1, a2, a3, *v54, 0, 1);
    }

    v42 = v20;
    if (v62)
    {
      v55 = &v66[0].offset;
      if (v17)
      {
        v55 = v17 + 2;
      }

      *v62 = _CFBundleCreateInfoDictFromFile(a1, a2, a3, *v55, 0, 1);
    }

    if (v20 || v19 || a10)
    {
      v56 = &v66[0].offset;
      if (v17)
      {
        v56 = v17 + 2;
      }

      v45 = *v56;
      v59 = a10;
      v46 = a1;
      v47 = a2;
      v48 = a3;
      v49 = 1;
      goto LABEL_113;
    }
  }

  else if (v36 == -17958194)
  {
    v33 = v32[3];
    if (v61 && v33 == 2)
    {
      v41 = &v66[0].offset;
      if (v17)
      {
        v41 = v17 + 2;
      }

      *v61 = _CFBundleGrokX11FromFile(a1, a2, a3, *v41, 0, 0);
    }

    v42 = v20;
    if (v62)
    {
      v43 = &v66[0].offset;
      if (v17)
      {
        v43 = v17 + 2;
      }

      *v62 = _CFBundleCreateInfoDictFromFile(a1, a2, a3, *v43, 0, 0);
    }

    if (v20 || v19 || a10)
    {
      v44 = &v66[0].offset;
      if (v17)
      {
        v44 = v17 + 2;
      }

      v45 = *v44;
      v59 = a10;
      v46 = a1;
      v47 = a2;
      v48 = a3;
      v49 = 0;
LABEL_113:
      _CFBundleGrokObjcImageInfoFromFile(v46, v47, v48, v45, 0, v49, v42, v19, v22, v23, v59);
    }
  }

LABEL_114:
  v57 = *MEMORY[0x1E69E9840];
  return v33;
}

uint64_t _CFURLComponentsGetURLUserAllowedCharacterSet()
{
  if (InitializeURLAllowedCharacterSets_static_init != -1)
  {
    _CFURLComponentsGetURLUserAllowedCharacterSet_cold_1();
  }

  return *sURLAllowedCharacterSets;
}

uint64_t _CFURLComponentsGetURLPasswordAllowedCharacterSet()
{
  if (InitializeURLAllowedCharacterSets_static_init != -1)
  {
    _CFURLComponentsGetURLPasswordAllowedCharacterSet_cold_1();
  }

  return *(sURLAllowedCharacterSets + 8);
}

uint64_t _CFURLComponentsGetURLPortAllowedCharacterSet()
{
  if (InitializeURLAllowedCharacterSets_static_init != -1)
  {
    _CFURLComponentsGetURLPortAllowedCharacterSet_cold_1();
  }

  return *(sURLAllowedCharacterSets + 48);
}

uint64_t _CFURLComponentsGetURLFragmentAllowedCharacterSet()
{
  if (InitializeURLAllowedCharacterSets_static_init != -1)
  {
    _CFURLComponentsGetURLFragmentAllowedCharacterSet_cold_1();
  }

  return *(sURLAllowedCharacterSets + 40);
}

uint64_t (**__CFStringEncodingGetJapaneseConverterDefinition(int a1, uint64_t (*a2)(uint64_t)))()
{
  if (!__CFStringEncodingIsDecomposableCharacter_2)
  {
    __CFStringEncodingIsDecomposableCharacter_2 = a2(1);
    __CFStringEncodingDecomposeCharacter_2 = a2(2);
    __CFStringEncodingIsValidCombiningCharacterForLatin1_4 = a2(3);
    __CFStringEncodingPrecomposeLatinCharacter_6 = a2(4);
  }

  if (a1 > 2813)
  {
    if (a1 <= 3056)
    {
      if (a1 == 2814)
      {
        return __CFConverterAutoDetect_JP;
      }

      if (a1 == 3056)
      {
        return __CFConverterShiftJIS_NTT_Docomo;
      }
    }

    else
    {
      switch(a1)
      {
        case 3057:
          return __CFConverterShiftJIS_KDDI;
        case 3058:
          return __CFConverterShiftJIS_SoftBank;
        case 3060:
          return __CFConverterISO_2022_JP_KDDI;
      }
    }
  }

  else if (a1 <= 2079)
  {
    if (a1 == 1)
    {
      return __CFConverterMacJapanese;
    }

    if (a1 == 1056)
    {
      return __CFConverterDOSJapanese;
    }
  }

  else
  {
    switch(a1)
    {
      case 2080:
        return __CFConverterISO_2022_JP;
      case 2336:
        return __CFConverterEUC_JP;
      case 2561:
        return __CFConverterShiftJIS;
    }
  }

  return 0;
}

uint64_t __CFToDOSJapanese(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    goto LABEL_4;
  }

  if ((a2 + 159) <= 0x3Eu)
  {
    LOBYTE(a2) = a2 + 64;
LABEL_4:
    *a3 = a2;
    return 1;
  }

  if (((a2 + 23) >> 2) < 0x80Bu)
  {
    goto LABEL_12;
  }

  v4 = &DOSJapanese_from_uni;
  v5 = &unk_1834321A4;
  while (1)
  {
    v6 = &v4[5 * ((0xCCCCCCCCCCCCCCCDLL * (v5 - v4)) >> 1)];
    v7 = *v6;
    if (v7 <= a2)
    {
      break;
    }

    v5 = v6 - 5;
LABEL_11:
    if (v4 > v5)
    {
      goto LABEL_12;
    }
  }

  if (v7 + 4 <= a2)
  {
    v4 = v6 + 5;
    goto LABEL_11;
  }

  v13 = v6[a2 - v7 + 1];
  if (v6[a2 - v7 + 1])
  {
    v14 = v13 >> 8;
LABEL_37:
    *a3 = v14;
    a3[1] = v13;
    return 2;
  }

LABEL_12:
  if ((a2 + 12) < 0xACu)
  {
    return 0;
  }

  v8 = &__CFToJISCharMap;
  v9 = (&__CFToJISCharMap + 40086);
  while (2)
  {
    v10 = &v8[17 * ((0xF0F0F0F0F0F0F0F1 * (v9 - v8)) >> 1)];
    v11 = *v10;
    if (v11 > a2)
    {
      v9 = v10 - 17;
      goto LABEL_18;
    }

    if (v11 + 16 <= a2)
    {
      v8 = v10 + 17;
LABEL_18:
      if (v8 > v9)
      {
        goto LABEL_19;
      }

      continue;
    }

    break;
  }

  v15 = v10[a2 - v11 + 1];
  if (v10[a2 - v11 + 1] && (v15 - 256) <= 0x7431u && (v15 - 12111) <= 0xF9D1u)
  {
    v16 = v15 >> 8;
    v17 = v15 & 0x7F;
    if ((v15 & 0x100) != 0)
    {
      v18 = 31;
    }

    else
    {
      v18 = 125;
    }

    v13 = v18 + v17;
    v14 = (v16 + 479) >> 1;
    v19 = v14 - 127;
    v20 = (v14 - 127);
    if (v13 > 0x7E)
    {
      LOBYTE(v13) = v13 + 1;
    }

    LOBYTE(v14) = v14 - 63;
    if (v20 <= 0x9F)
    {
      LOBYTE(v14) = v19;
    }

    goto LABEL_37;
  }

LABEL_19:
  if ((a2 + 0x2000) > 0x757u)
  {
    return 0;
  }

  if ((a2 - 57344) % 0xBC <= 0x3E)
  {
    v12 = a2 + 68 * ((a2 - 57344) / 0xBC);
  }

  else
  {
    v12 = a2 + 68 * ((a2 - 57344) / 0xBC) + 1;
  }

  *a3 = bswap32(v12 + 4160) >> 16;
  return 2;
}

uint64_t __CFFromDOSJapanese(uint64_t a1, unsigned __int8 *a2, uint64_t a3, __int16 *a4)
{
  v5 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    *a4 = v5;
    return 1;
  }

  if ((v5 - 161) <= 0x3E)
  {
    *a4 = v5 - 320;
    return 1;
  }

  if (a3 < 2)
  {
    return 0;
  }

  v7 = a2[1];
  v8 = v7 | (v5 << 8);
  if (v8 <= 33122)
  {
    if (v8 > 33119)
    {
      if (v8 == 33120)
      {
        v9 = -162;
        goto LABEL_33;
      }

      if (v8 == 33121)
      {
        v9 = 8741;
        goto LABEL_33;
      }
    }

    else
    {
      if (v8 == 33104)
      {
        v9 = -29;
        goto LABEL_33;
      }

      if (v8 == 33116)
      {
        v9 = 8213;
        goto LABEL_33;
      }
    }
  }

  else if (v8 <= 33168)
  {
    if (v8 == 33123)
    {
      v9 = 8230;
      goto LABEL_33;
    }

    if (v8 == 33148)
    {
      v9 = -243;
      goto LABEL_33;
    }
  }

  else
  {
    switch(v8)
    {
      case 33169:
        v9 = -32;
        goto LABEL_33;
      case 33170:
        v9 = -31;
        goto LABEL_33;
      case 33226:
        v9 = -30;
LABEL_33:
        *a4 = v9;
        return 2;
    }
  }

  if (v7 != 127 && (v5 - 250) >= 0xFFFFFFF6 && (v7 + 3) >= 0x43u)
  {
    v9 = v8 - 68 * (v5 & 0xF) + (v7 >> 7) - 4160;
    goto LABEL_33;
  }

  if (v8 >> 6 <= 0x3B4 && (v8 - 34624) > 0x5C)
  {
    v10 = ShiftJISToJIS0208(a2);
    v11 = __CFFromJIS0208(v10);
    *a4 = v11;
    return 2 * (v11 != 65533);
  }

  if ((v8 - 64609) < 0xFFFF8ADF)
  {
LABEL_45:
    *a4 = 0;
    return 0;
  }

  v12 = &DOSJapanese_to_uni;
  v13 = &unk_18343C55C;
  while (1)
  {
    v14 = &v12[33 * ((0xF83E0F83E0F83E1 * (v13 - v12)) >> 1)];
    v15 = *v14;
    if (v15 <= v8)
    {
      break;
    }

    v13 = v14 - 33;
LABEL_44:
    if (v12 > v13)
    {
      goto LABEL_45;
    }
  }

  if (v15 + 32 <= v8)
  {
    v12 = v14 + 33;
    goto LABEL_44;
  }

  v16 = v14[v8 - v15 + 1];
  *a4 = v16;
  if (!v16)
  {
    return 0;
  }

  return 2;
}

uint64_t __CFToShiftJISLen(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  for (result = 0; a3; --a3)
  {
    v5 = *a2++;
    v4 = v5;
    if ((v5 + 159) >= 0x3Fu && v4 >= 0xA5)
    {
      v7 = 2;
    }

    else
    {
      v7 = 1;
    }

    result += v7;
  }

  return result;
}

uint64_t __CFFromShiftJISLen(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    result = 0;
    while (1)
    {
      if ((*a2 & 0x80000000) == 0)
      {
        goto LABEL_4;
      }

      if (*a2 < 0xA1u)
      {
        break;
      }

      v4 = -1;
      if (a3 != 1)
      {
        v5 = 1;
        if (*a2 < 0xE0u)
        {
          goto LABEL_6;
        }

LABEL_14:
        v4 = -2;
        v5 = 2;
        goto LABEL_6;
      }

LABEL_5:
      v5 = 1;
LABEL_6:
      a2 += v5;
      ++result;
      v6 = __OFADD__(a3, v4);
      a3 += v4;
      if ((a3 < 0) ^ v6 | (a3 == 0))
      {
        return result;
      }
    }

    if (a3 != 1)
    {
      goto LABEL_14;
    }

LABEL_4:
    v4 = -1;
    goto LABEL_5;
  }

  return 0;
}

uint64_t __CFFromShiftJISFallback(char *a1, uint64_t a2, _WORD *a3, uint64_t a4, void *a5)
{
  if (a4)
  {
    *a3 = 63;
  }

  *a5 = 1;
  if (*a1 > -1 || a2 < 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t __CFToShiftJISPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v15 = *MEMORY[0x1E69E9840];
  v9 = __CFPrecomposeCharJapanese(a2, 0);
  v10 = __CFToShiftJIS(v9, v9, v14);
  result = 0;
  if (v10)
  {
    v12 = v14[0];
    if (v14[0])
    {
      result = 2;
      *a6 = 2;
      if (a5)
      {
        if (a5 >= 2)
        {
          *a4 = v12;
          a4[1] = v14[1];
          result = 2;
        }

        else
        {
          result = 0;
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL __CFIsValidCombiningCharJapanese(int a1)
{
  result = 1;
  if ((a1 - 774) > 0x32 || ((1 << (a1 - 6)) & 0x4000000000005) == 0)
  {
    return (a1 - 12441) < 2;
  }

  return result;
}

uint64_t __CFToJIS(unsigned int a1, int a2)
{
  if ((a1 + 12) < 0xACu)
  {
    return 65533;
  }

  v2 = &__CFToJISCharMap;
  v3 = (&__CFToJISCharMap + 40086);
  while (1)
  {
    v4 = &v2[17 * ((0xF0F0F0F0F0F0F0F1 * (v3 - v2)) >> 1)];
    v5 = *v4;
    if (v5 <= a1)
    {
      break;
    }

    v3 = v4 - 17;
LABEL_7:
    if (v2 > v3)
    {
      return 65533;
    }
  }

  if (v5 + 16 <= a1)
  {
    v2 = v4 + 17;
    goto LABEL_7;
  }

  v7 = v4[a1 - v5 + 1];
  if (!v4[a1 - v5 + 1])
  {
    return 65533;
  }

  if (!a2)
  {
    return v7;
  }

  result = 65533;
  if (v7 <= 0x7531 && (v7 - 10529) >= 0x62E)
  {
    return v7;
  }

  return result;
}

uint64_t JIS0208ToShiftJIS(uint64_t result, _BYTE *a2)
{
  if ((result & 0x100) != 0)
  {
    v2 = 31;
  }

  else
  {
    v2 = 125;
  }

  v3 = v2 + (result & 0x7F);
  v4 = ((result >> 8) + 479) >> 1;
  v5 = v4 - 127;
  v6 = (v4 - 127);
  if (v3 > 0x7E)
  {
    LOBYTE(v3) = v3 + 1;
  }

  v7 = v4 - 63;
  if (v6 <= 0x9F)
  {
    v7 = v5;
  }

  *a2 = v7;
  a2[1] = v3;
  return result;
}

uint64_t __CFFromJIS0208(unsigned int a1)
{
  if (a1 - 30067 < 0xFFFFABAE)
  {
    return -3;
  }

  v1 = &__CFFromJIS0208CharMap;
  v2 = (&__CFFromJIS0208CharMap + 15972);
  while (1)
  {
    v3 = &v1[33 * ((0xF83E0F83E0F83E1 * (v2 - v1)) >> 1)];
    v4 = *v3;
    if (v4 <= a1)
    {
      break;
    }

    v2 = v3 - 33;
LABEL_7:
    if (v1 > v2)
    {
      return -3;
    }
  }

  if (v4 + 32 <= a1)
  {
    v1 = v3 + 33;
    goto LABEL_7;
  }

  v5 = v3[a1 - v4 + 1];
  if (!v5)
  {
    return -3;
  }

  return v5;
}

uint64_t ShiftJISToJIS0208(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 0xA0)
  {
    v2 = 79;
  }

  else
  {
    v2 = 15;
  }

  v3 = 2 * (v2 + v1);
  if ((a1[1] + (a1[1] >> 7)) <= 0x9Du)
  {
    v4 = v3 + 1;
  }

  else
  {
    v4 = v3 + 2;
  }

  if ((a1[1] + (a1[1] >> 7)) <= 0x9Du)
  {
    v5 = -31;
  }

  else
  {
    v5 = -125;
  }

  return ((v5 + a1[1] + (a1[1] >> 7)) | ((v4 & 0x7FF) << 8));
}

uint64_t __CFToShiftJIS(uint64_t a1, unsigned int a2, char *a3)
{
  if (a2 <= 164)
  {
    if (a2 == 92)
    {
      *a3 = 24449;
      return 2;
    }

    if (a2 == 126)
    {
      return 0;
    }

    goto LABEL_8;
  }

  if (a2 == 165)
  {
    v4 = 92;
    goto LABEL_12;
  }

  if (a2 == 8254)
  {
    v4 = 126;
LABEL_12:
    *a3 = v4;
    return 1;
  }

LABEL_8:
  if (a2 <= 0x7F)
  {
    *a3 = a2;
    return 1;
  }

  if ((a2 + 159) <= 0x3Eu)
  {
    v4 = a2 + 64;
    goto LABEL_12;
  }

  if ((a2 + 12) < 0xACu)
  {
    return 0;
  }

  v5 = &__CFToJISCharMap;
  v6 = (&__CFToJISCharMap + 40086);
  while (1)
  {
    v7 = &v5[17 * ((0xF0F0F0F0F0F0F0F1 * (v6 - v5)) >> 1)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 17;
LABEL_22:
    if (v5 > v6)
    {
      goto LABEL_31;
    }
  }

  if (v8 + 16 <= a2)
  {
    v5 = v7 + 17;
    goto LABEL_22;
  }

  v9 = v7[a2 - v8 + 1];
  if (v7[a2 - v8 + 1])
  {
    v10 = v9 > 0x7531;
  }

  else
  {
    v10 = 1;
  }

  if (v10 || (v9 - 10529) < 0x62Eu)
  {
LABEL_31:
    if ((a2 + 0x2000) <= 0x98Bu)
    {
      if ((a2 - 57344) % 0xBC <= 0x3E)
      {
        v11 = a2 + 68 * ((a2 - 57344) / 0xBC);
      }

      else
      {
        v11 = a2 + 68 * ((a2 - 57344) / 0xBC) + 1;
      }

      *a3 = bswap32(v11 + 4160) >> 16;
      return 2;
    }
  }

  else if (v9 >= 0x100)
  {
    JIS0208ToShiftJIS(v9, a3);
    return 2;
  }

  return 0;
}

uint64_t __CFPrecomposeCharJapanese(unsigned __int16 *a1, int a2)
{
  v2 = *a1;
  v3 = a1[1];
  if (v3 <= 0x337)
  {
    if (v3 == 774)
    {
      if ((v2 & 0xFFFFFFDF) == 0x418)
      {
        return (v2 | 1);
      }
    }

    else if (v3 == 776)
    {
      if (v2 == 1077)
      {
        v4 = 1105;
      }

      else
      {
        v4 = -3;
      }

      if (v2 == 1045)
      {
        return 1025;
      }

      else
      {
        return v4;
      }
    }

    return -3;
  }

  if (v3 == 824)
  {
    if (v2 == 61)
    {
      return 8800;
    }

    return -3;
  }

  if (v3 == 12441)
  {
    if (*a1 <= 0x30B0u)
    {
      if ((v2 - 12358) <= 0x35)
      {
        if (((1 << (v2 - 70)) & 0x2492054AAAAAA0) != 0)
        {
          return (v2 + 1);
        }

        if (v2 == 12358)
        {
          v6 = a2 == 0;
          v7 = 12436;
          goto LABEL_48;
        }
      }

      if ((v2 - 12445) > 0x12)
      {
        return -3;
      }

      if (((1 << (v2 + 99)) & 0x54001) == 0)
      {
        if (v2 == 12454)
        {
          v6 = a2 == 0;
          v7 = 12532;
          goto LABEL_48;
        }

        return -3;
      }

      return (v2 + 1);
    }

    if (*a1 > 0x30F0u)
    {
      switch(v2)
      {
        case 12529:
          v6 = a2 == 0;
          v7 = 12537;
          break;
        case 12530:
          v6 = a2 == 0;
          v7 = 12538;
          break;
        case 12541:
          v6 = a2 == 0;
          v7 = 12542;
          break;
        default:
          return -3;
      }
    }

    else
    {
      v8 = (v2 - 12465);
      if (v8 > 0x3F)
      {
        return -3;
      }

      if (((1 << (v2 + 79)) & 0x49240A95555) != 0)
      {
        return (v2 + 1);
      }

      if (v8 == 62)
      {
        v6 = a2 == 0;
        v7 = 12535;
      }

      else
      {
        if (v8 != 63)
        {
          return -3;
        }

        v6 = a2 == 0;
        v7 = 12536;
      }
    }

LABEL_48:
    if (v6)
    {
      return -3;
    }

    else
    {
      return v7;
    }
  }

  if (v3 != 12442 || ((v2 - 12399) > 0xC || ((1 << (v2 - 111)) & 0x1249) == 0) && ((v2 - 12495) > 0xC || ((1 << (v2 + 49)) & 0x1249) == 0))
  {
    return -3;
  }

  return (v2 + 2);
}

uint64_t __CFToEUC_JP(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    *a3 = a2;
    return 1;
  }

  if ((a2 + 159) <= 0x3Eu)
  {
    *a3 = -114;
    LOBYTE(v4) = a2 + 64;
    goto LABEL_5;
  }

  if ((a2 + 12) < 0xACu)
  {
    return 0;
  }

  v5 = &__CFToJISCharMap;
  v6 = (&__CFToJISCharMap + 40086);
  while (1)
  {
    v7 = &v5[17 * ((0xF0F0F0F0F0F0F0F1 * (v6 - v5)) >> 1)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 17;
LABEL_13:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 + 16 <= a2)
  {
    v5 = v7 + 17;
    goto LABEL_13;
  }

  v9 = v7[a2 - v8 + 1];
  if (!v7[a2 - v8 + 1])
  {
    return 0;
  }

  result = 0;
  if ((v9 - 30002) >= 0xFFFF8BCE && (v9 - 10529) >= 0x62E)
  {
    v4 = v9 | 0x8080;
    *a3 = HIBYTE(v4);
LABEL_5:
    a3[1] = v4;
    return 2;
  }

  return result;
}

uint64_t __CFFromEUC_JP(uint64_t a1, char *a2, uint64_t a3, __int16 *a4)
{
  v4 = *a2;
  if ((v4 & 0x80000000) == 0)
  {
    *a4 = v4;
    return 1;
  }

  if (v4 == -96)
  {
    if (a3 < 2)
    {
      return 0;
    }

    v6 = 169;
    goto LABEL_19;
  }

  if (*a2 != 143)
  {
    if (*a2 == 142)
    {
      if (a3 < 2)
      {
        return 0;
      }

      v6 = a2[1] - 320;
LABEL_19:
      *a4 = v6;
      return 2;
    }

    if (a3 < 2)
    {
      return 0;
    }

    v8 = a2[1] & 0x7F | ((v4 & 0x7F) << 8);
    if ((v8 - 30067) >= 0xABAEu)
    {
      v13 = &__CFFromJIS0208CharMap;
      v14 = (&__CFFromJIS0208CharMap + 15972);
      do
      {
        v11 = &v13[33 * ((0xF83E0F83E0F83E1 * (v14 - v13)) >> 1)];
        v12 = *v11;
        if (v12 <= v8)
        {
          if (v12 + 32 > v8)
          {
            goto LABEL_30;
          }

          v13 = v11 + 33;
        }

        else
        {
          v14 = v11 - 33;
        }
      }

      while (v13 <= v14);
    }

LABEL_33:
    *a4 = -3;
    return 0;
  }

  if (a3 < 3)
  {
    return 0;
  }

  v7 = *(a2 + 1);
  if (((bswap32(v7) >> 16) + 4638) < 0xB4CDu)
  {
    goto LABEL_33;
  }

  v8 = __rev16(v7);
  v9 = &__CFFromJIS0212CharMap;
  v10 = (&__CFFromJIS0212CharMap + 13002);
  while (1)
  {
    v11 = &v9[33 * ((0xF83E0F83E0F83E1 * (v10 - v9)) >> 1)];
    v12 = *v11;
    if (v12 <= v8)
    {
      break;
    }

    v10 = v11 - 33;
LABEL_15:
    if (v9 > v10)
    {
      goto LABEL_33;
    }
  }

  if (v12 + 32 <= v8)
  {
    v9 = v11 + 33;
    goto LABEL_15;
  }

LABEL_30:
  v15 = v11[v8 - v12 + 1];
  if (!v15)
  {
    goto LABEL_33;
  }

  *a4 = v15;
  if (v15 != 65533)
  {
    return 2;
  }

  return 0;
}

unint64_t __CFToEUC_JPLen(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!a3)
  {
    v7 = 0;
    v3 = 0;
    v4 = 0;
LABEL_13:
    v9 = v3 - v7;
    v8 = 3 * v7 + v4;
    return v8 + 2 * v9;
  }

  v3 = 0;
  v4 = 0;
  do
  {
    v6 = *a2++;
    v5 = v6;
    if (v6 < 0x80)
    {
      ++v4;
    }

    if (v5 > 0x7F)
    {
      ++v3;
    }

    --a3;
  }

  while (a3);
  v7 = v3 / 3;
  if (v4 <= v3 / 3)
  {
    goto LABEL_13;
  }

  v8 = v4 - v7;
  if (v3 < 3)
  {
    v7 = 1;
  }

  v9 = v7 + v3;
  return v8 + 2 * v9;
}

uint64_t __CFFromEUC_JPLen(uint64_t a1, char *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  result = 0;
  do
  {
    v4 = -1;
    if (a3 == 1)
    {
      v12 = 1;
    }

    else
    {
      v5 = *a2;
      v6 = v5 == -113;
      v7 = a3 > 2;
      v8 = !v7 || !v6;
      if (v7 && v6)
      {
        v9 = 3;
      }

      else
      {
        v9 = 2;
      }

      if (v8)
      {
        v10 = -2;
      }

      else
      {
        v10 = -3;
      }

      v11 = v5 >= 0;
      if (v5 < 0)
      {
        v12 = v9;
      }

      else
      {
        v12 = 1;
      }

      if (!v11)
      {
        v4 = v10;
      }
    }

    a2 += v12;
    ++result;
    v13 = __OFADD__(a3, v4);
    a3 += v4;
  }

  while (!((a3 < 0) ^ v13 | (a3 == 0)));
  return result;
}

uint64_t __CFFromEUC_JPFallback(unsigned __int8 *a1, uint64_t a2, _WORD *a3, uint64_t a4, void *a5)
{
  if (a4)
  {
    *a3 = 63;
  }

  *a5 = 1;
  v5 = *a1;
  v6 = v5;
  v7 = v5 != 143 || a2 <= 2;
  v8 = 2;
  if (!v7)
  {
    v8 = 3;
  }

  if (v6 > -1 || a2 < 2)
  {
    return 1;
  }

  else
  {
    return v8;
  }
}

uint64_t __CFToEUC_JPPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v15 = *MEMORY[0x1E69E9840];
  if (*a2 > 0x7Fu)
  {
    v9 = __CFPrecomposeCharJapanese(a2, 0);
  }

  else
  {
    v9 = __CFStringEncodingPrecomposeLatinCharacter_6(a2, a3, 0);
  }

  v10 = __CFToEUC_JP(v9, v9, v14);
  result = 0;
  if (v10)
  {
    v12 = v14[0];
    if (v14[0])
    {
      result = 2;
      *a6 = 2;
      if (a5)
      {
        if (a5 >= 2)
        {
          *a4 = v12;
          a4[1] = v14[1];
          result = 2;
        }

        else
        {
          result = 0;
        }
      }
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFIsValidCombiningCharJapaneseWithJIS212(int a1)
{
  if ((a1 - 774) <= 0x32 && ((1 << (a1 - 6)) & 0x4000000000005) != 0 || (a1 - 12441) < 2)
  {
    return 1;
  }

  else
  {
    return __CFStringEncodingIsValidCombiningCharacterForLatin1_4();
  }
}

uint64_t __CFToISO_2022_JP(char a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  if (a3 < 1)
  {
    v8 = 0;
    v42 = 0;
    goto LABEL_141;
  }

  v8 = a3;
  v49 = a6;
  v9 = a2 - 2;
  v50 = a2;
  while (2)
  {
    v10 = 0;
    v11 = 0;
    v12 = 0;
    v13 = 0;
    do
    {
      if (a5 && a5 <= v11)
      {
        if ((a1 & 0x10) == 0)
        {
          goto LABEL_116;
        }

        v14 = *(a2 + 2 * v12);
        v15 = v14 - 774 > 0x32 || ((1 << (v14 - 6)) & 0x4000000000005) == 0;
        if (v15 && v14 - 12441 >= 2)
        {
          goto LABEL_116;
        }
      }

      else
      {
        v14 = *(a2 + 2 * v12);
        if (v14 <= 0x7F)
        {
          v10 = v13 != 0;
          if (v13)
          {
            v17 = 4;
          }

          else
          {
            v17 = 1;
          }

          if (!a5)
          {
            v13 = 0;
            goto LABEL_114;
          }

          if (a5 - v11 >= v17)
          {
            if (v13)
            {
              *a4 = 27;
              *(a4 + 1) = 16936;
              a4 += 3;
            }

            v13 = 0;
            *a4++ = v14;
            goto LABEL_114;
          }

          goto LABEL_116;
        }
      }

      if ((v14 + 159) <= 0x3Eu)
      {
        v10 = v13 != 3;
        if (v13 == 3)
        {
          v17 = 1;
        }

        else
        {
          v17 = 4;
        }

        if (!a5)
        {
LABEL_34:
          v13 = 3;
          goto LABEL_114;
        }

        if (a5 - v11 >= v17)
        {
          if (v13 != 3)
          {
            *a4 = 27;
            *(a4 + 1) = 18728;
            a4 += 3;
          }

          *a4++ = v14 - 64;
          goto LABEL_34;
        }

LABEL_116:
        v8 = v12;
        break;
      }

      if (v14 == 8254 || v14 == 165)
      {
        v10 = v13 != 2;
        if (v13 == 2)
        {
          v17 = 1;
        }

        else
        {
          v17 = 4;
        }

        if (a5)
        {
          if (a5 - v11 < v17)
          {
            goto LABEL_116;
          }

          if (v13 != 2)
          {
            *a4 = 27;
            *(a4 + 1) = 18984;
            a4 += 3;
          }

          if (v14 == 165)
          {
            v18 = 92;
          }

          else
          {
            v18 = 126;
          }

          *a4++ = v18;
        }

        v13 = 2;
        goto LABEL_114;
      }

      if ((v14 + 12) < 0xACu)
      {
        goto LABEL_72;
      }

      v19 = &__CFToJISCharMap;
      v20 = (&__CFToJISCharMap + 40086);
      while (1)
      {
        v21 = &v19[17 * ((0xF0F0F0F0F0F0F0F1 * (v20 - v19)) >> 1)];
        v22 = *v21;
        if (v22 <= v14)
        {
          break;
        }

        v20 = v21 - 17;
LABEL_55:
        if (v19 > v20)
        {
          goto LABEL_72;
        }
      }

      if (v22 + 16 <= v14)
      {
        v19 = v21 + 17;
        goto LABEL_55;
      }

      v23 = v21[v14 - v22 + 1];
      if (v21[v14 - v22 + 1])
      {
        v24 = v23 > 0x7531;
      }

      else
      {
        v24 = 1;
      }

      if (v24 || v23 - 10529 < 0x62E)
      {
LABEL_72:
        if ((a1 & 8) != 0)
        {
          goto LABEL_116;
        }

        if ((v14 - 774 > 0x32 || ((1 << (v14 - 6)) & 0x4000000000005) == 0) && v14 - 12441 >= 2)
        {
          IsValidCombiningCharacterForLatin1_4 = __CFStringEncodingIsValidCombiningCharacterForLatin1_4();
          a2 = v50;
          if (!IsValidCombiningCharacterForLatin1_4)
          {
            goto LABEL_116;
          }
        }

        if ((a1 & 0x10) == 0)
        {
          v17 = 0;
          goto LABEL_114;
        }

        if (!v12)
        {
          v8 = 0;
          break;
        }

        v26 = (v9 + 2 * v12);
        if (*v26 > 0x7Fu)
        {
          v27 = __CFPrecomposeCharJapanese(v26, 0);
        }

        else
        {
          v27 = __CFStringEncodingPrecomposeLatinCharacter_6(v26, v8 + 1 - v12, 0);
        }

        v28 = __CFToJIS(v27, 1);
        if (!v28)
        {
          v8 = v12;
          a2 = v50;
          break;
        }

        a2 = v50;
        if (v28 == 65533)
        {
          goto LABEL_116;
        }

        v29 = v28;
        if ((v28 & 0x80000000) == 0)
        {
          if (v13 == 1)
          {
            v17 = 0;
            v30 = 0;
            v10 = 0;
            v31 = 2;
            if (!a5)
            {
              goto LABEL_102;
            }
          }

          else
          {
            if (v13)
            {
              v31 = 2;
            }

            else
            {
              v31 = 1;
            }

            if (v10)
            {
              v31 += LOBYTE((&__CFISO2022JPSequences)[2 * v13 + 1]) + 1;
            }

            v17 = 5 - v31;
            v10 = 1;
            v30 = &off_1E6DCFCB0;
            if (!a5)
            {
              goto LABEL_102;
            }
          }

          if (a5 - v11 >= v17)
          {
            v34 = &a4[-v31];
            if (v13 != 1)
            {
              *v34 = 27;
              v35 = v29;
              v36 = v30;
              v37 = strncpy(v34 + 1, *v30, *(v30 + 8));
              v29 = v35;
              a2 = v50;
              v34 = &v37[*(v36 + 8)];
            }

            *v34 = HIBYTE(v29);
            a4 = v34 + 2;
            v34[1] = v29 & 0x7F;
            goto LABEL_102;
          }

          goto LABEL_116;
        }

        if (v13 == 4)
        {
          v17 = 0;
          v32 = 0;
          v10 = 0;
          v33 = 2;
          if (!a5)
          {
            goto LABEL_113;
          }
        }

        else
        {
          if (v13)
          {
            v33 = 2;
          }

          else
          {
            v33 = 1;
          }

          if (v10)
          {
            v33 += LOBYTE((&__CFISO2022JPSequences)[2 * v13 + 1]) + 1;
          }

          v17 = 6 - v33;
          v10 = 1;
          v32 = &off_1E6DCFCE0;
          if (!a5)
          {
            goto LABEL_113;
          }
        }

        if (a5 - v11 < v17)
        {
          goto LABEL_116;
        }

        v38 = &a4[-v33];
        if (v13 != 4)
        {
          *v38 = 27;
          v39 = v29;
          v40 = v32;
          v41 = strncpy(v38 + 1, *v32, *(v32 + 8));
          v29 = v39;
          a2 = v50;
          v38 = &v41[*(v40 + 8)];
        }

        *v38 = HIBYTE(v29) & 0x7F;
        a4 = v38 + 2;
        v38[1] = v29 & 0x7F;
LABEL_113:
        v13 = 4;
        goto LABEL_114;
      }

      if (v23 < 0x100)
      {
        goto LABEL_116;
      }

      v10 = v13 != 1;
      if (v13 == 1)
      {
        v17 = 2;
      }

      else
      {
        v17 = 5;
      }

      if (!a5)
      {
        goto LABEL_102;
      }

      if (a5 - v11 < v17)
      {
        goto LABEL_116;
      }

      if (v13 != 1)
      {
        *a4 = 27;
        *(a4 + 1) = 16932;
        a4 += 3;
      }

      *a4 = BYTE1(v23);
      a4[1] = v23 & 0x7F;
      a4 += 2;
LABEL_102:
      v13 = 1;
LABEL_114:
      v11 += v17;
      ++v12;
    }

    while (v12 != v8);
    if (!v13)
    {
      v42 = v11;
      goto LABEL_140;
    }

    v42 = v11 + 3;
    if (!a5)
    {
      goto LABEL_140;
    }

    if (v42 <= a5)
    {
      *a4 = 27;
      *(a4 + 1) = 16936;
      goto LABEL_140;
    }

    do
    {
      v43 = v8;
      v44 = *(v9 + 2 * v8);
      if (((v44 - 774) > 0x32 || ((1 << (v44 - 6)) & 0x4000000000005) == 0) && (v44 - 12441) >= 2)
      {
        v47 = __CFStringEncodingIsValidCombiningCharacterForLatin1_4();
        a2 = v50;
      }

      else
      {
        v47 = 1;
      }

      --v8;
    }

    while (v43 >= 2 && (v47 & 1) != 0);
    if (v43 >= 2)
    {
      a4 -= v11;
      continue;
    }

    break;
  }

  v42 = 0;
LABEL_140:
  a6 = v49;
LABEL_141:
  *a6 = v42;
  return v8;
}

uint64_t __CFFromISO_2022_JP(unsigned int a1, const char *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, void *a6)
{
  v6 = &a2[a3];
  if (__CFADD__(a2, a3))
  {
    v7 = 0;
    v8 = 0;
    if (!a6)
    {
      return v8;
    }

    goto LABEL_102;
  }

  v9 = a3;
  v43 = a6;
  if (a3 < 1)
  {
    v7 = 0;
    v8 = 0;
    goto LABEL_101;
  }

  v12 = a2;
  v13 = 0;
  v7 = 0;
  v8 = 0;
  v42 = a1 & 0xC0;
LABEL_7:
  if (a5 && v7 >= a5)
  {
LABEL_92:
    if (!a5)
    {
      goto LABEL_101;
    }

    goto LABEL_93;
  }

  v14 = *v12;
  if (v14 == 27)
  {
    v45 = a4;
    v46 = v9;
    v15 = v8;
    v16 = a5;
    v17 = v7;
    v18 = v13;
    v19 = 9;
    v20 = &byte_1E6DCFCA9;
    do
    {
      v21 = *(v20 - 1);
      if (v6 >= &v12[v21 + 1] && !strncmp(*(v20 - 9), v12 + 1, *(v20 - 1)))
      {
        v13 = *v20;
        v32 = v21 + 1;
        v7 = v17;
        a5 = v16;
        v8 = v15;
        a4 = v45;
        v9 = v46;
        goto LABEL_90;
      }

      v20 += 16;
      --v19;
    }

    while (v19);
    v13 = v18;
    v7 = v17;
    if ((v18 & 0xFD) == 0)
    {
      a5 = v16;
      if (v16)
      {
        *v45 = 27;
        a4 = v45 + 1;
        v8 = v15;
      }

      else
      {
        v8 = v15;
        a4 = v45;
      }

      ++v7;
      v32 = 1;
      v9 = v46;
      goto LABEL_90;
    }

    a5 = v16;
    v8 = v15;
    v9 = v46;
    if (!a5)
    {
      goto LABEL_101;
    }

    goto LABEL_93;
  }

  if (v13 > 1)
  {
    if (v13 == 2)
    {
      if (!a5)
      {
        goto LABEL_56;
      }

      if (v14 == 126)
      {
        v33 = 8254;
      }

      else
      {
        v33 = *v12;
      }

      if (v14 == 92)
      {
        LOWORD(v14) = 165;
      }

      else
      {
        LOWORD(v14) = v33;
      }

LABEL_55:
      *a4++ = v14;
      goto LABEL_56;
    }

    if (v13 == 3)
    {
      if ((v14 - 96) < 0xFFFFFFC1)
      {
        goto LABEL_104;
      }

      if (a5)
      {
        LOWORD(v14) = v14 - 192;
        goto LABEL_55;
      }

LABEL_56:
      v32 = 1;
      goto LABEL_89;
    }

    if (v13 != 4)
    {
      goto LABEL_92;
    }

    if (v9 == 1)
    {
      goto LABEL_104;
    }

    v22 = *(v12 + 1) | (v14 << 8);
    if ((v22 + 4638) < 0xB4CDu)
    {
      goto LABEL_62;
    }

    v23 = &__CFFromJIS0212CharMap;
    v24 = (&__CFFromJIS0212CharMap + 13002);
    while (1)
    {
      v25 = &v23[33 * ((0xF83E0F83E0F83E1 * (v24 - v23)) >> 1)];
      v26 = *v25;
      if (v26 <= v22)
      {
        if (v26 + 32 > v22)
        {
          v34 = v25[v22 - v26 + 1];
          if (v34 == 65533 || v34 == 0)
          {
LABEL_62:
            if (a1)
            {
              v34 = 63;
              goto LABEL_64;
            }

            goto LABEL_104;
          }

LABEL_64:
          if (!v42 || !__CFStringEncodingIsDecomposableCharacter_2(v34, (a1 >> 7) & 1))
          {
            if (a5)
            {
              *a4++ = v34;
            }

            goto LABEL_72;
          }

          if (!a5)
          {
            goto LABEL_69;
          }

          if (v7 >= a5)
          {
            return v8;
          }

          __CFStringEncodingDecomposeCharacter_2(a1, v34, a4);
          a4 += 2;
LABEL_69:
          ++v7;
LABEL_72:
          v32 = 2;
LABEL_89:
          ++v7;
LABEL_90:
          v8 += v32;
          v12 += v32;
          v38 = v9 <= v32;
          v9 -= v32;
          if (v38)
          {
            goto LABEL_92;
          }

          goto LABEL_7;
        }

        v23 = v25 + 33;
      }

      else
      {
        v24 = v25 - 33;
      }

      if (v23 > v24)
      {
        goto LABEL_62;
      }
    }
  }

  if (!v13)
  {
    if (!a5)
    {
      goto LABEL_56;
    }

    goto LABEL_55;
  }

  if (v9 == 1)
  {
    goto LABEL_104;
  }

  v27 = *(v12 + 1) | (v14 << 8);
  if (v27 - 30067 < 0xFFFFABAE)
  {
    goto LABEL_78;
  }

  v28 = &__CFFromJIS0208CharMap;
  v29 = (&__CFFromJIS0208CharMap + 15972);
  while (1)
  {
    v30 = &v28[33 * ((0xF83E0F83E0F83E1 * (v29 - v28)) >> 1)];
    v31 = *v30;
    if (v31 <= v27)
    {
      break;
    }

    v29 = v30 - 33;
LABEL_38:
    if (v28 > v29)
    {
      goto LABEL_78;
    }
  }

  if (v31 + 32 <= v27)
  {
    v28 = v30 + 33;
    goto LABEL_38;
  }

  v36 = v30[v27 - v31 + 1];
  if (v36 == 65533 || v36 == 0)
  {
LABEL_78:
    if (a1)
    {
      v36 = 63;
      goto LABEL_80;
    }

LABEL_104:
    LODWORD(v13) = 4;
    if (!a5)
    {
      goto LABEL_101;
    }

LABEL_93:
    if (v13 && v9 == 3 && v7 == a5 && *v12 == 27 && v6 >= (v12 + 3))
    {
      v39 = *(v12 + 1);
      if (v39 == 40)
      {
        v39 = *(v12 + 2);
        v40 = 66;
      }

      else
      {
        v40 = 40;
      }

      a6 = v43;
      if (v40 == v39)
      {
        v8 += 3;
      }

      goto LABEL_102;
    }

LABEL_101:
    a6 = v43;
LABEL_102:
    *a6 = v7;
    return v8;
  }

LABEL_80:
  if (!v42 || !__CFStringEncodingIsDecomposableCharacter_2(v36, (a1 >> 7) & 1))
  {
    if (a5)
    {
      *a4++ = v36;
    }

    v32 = 2;
    goto LABEL_89;
  }

  if (!a5)
  {
LABEL_85:
    ++v7;
    v32 = 2;
    goto LABEL_89;
  }

  if (v7 + 2 <= a5)
  {
    __CFStringEncodingDecomposeCharacter_2(a1, v36, a4);
    a4 += 2;
    goto LABEL_85;
  }

  return v8;
}

uint64_t __CFToMacJapanese(int a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  if (a3 < 1)
  {
    v7 = 0;
    result = 0;
    goto LABEL_255;
  }

  v7 = 0;
  result = 0;
  v74 = a1 & 0x480;
  v9 = &__CFToJISCharMap;
  v10 = 0x4E4Bu;
  do
  {
    v11 = a2;
    v12 = v7;
    v13 = v7;
    v14 = result;
    while (1)
    {
      if (a5 && v13 >= a5)
      {
        if ((a1 & 0x10) == 0)
        {
          goto LABEL_248;
        }

        v15 = *v11;
        v16 = v15 - 774 > 0x32 || ((1 << (v15 - 6)) & 0x4000000000005) == 0;
        if (!v16 || v15 - 12441 < 2)
        {
          goto LABEL_20;
        }

        if (v15 != 8413 && (v15 & 0xFFF0) != 0xF870)
        {
          goto LABEL_248;
        }
      }

      else
      {
        v15 = *v11;
      }

      if (v15 <= 0x7F)
      {
        v7 = v13 + 1;
        if (!a5)
        {
          goto LABEL_246;
        }

        if (v15 == 92 && v74 != 1024)
        {
          LOBYTE(v15) = 0x80;
        }

        goto LABEL_120;
      }

LABEL_20:
      if ((v15 + 159) <= 0x3Eu)
      {
        v7 = v13 + 1;
        if (!a5)
        {
          goto LABEL_246;
        }

        LOBYTE(v15) = v15 + 64;
LABEL_120:
        *a4++ = v15;
        goto LABEL_246;
      }

      v18 = v14 + 1;
      if (v14 + 1 < a3 && v15 == 8230)
      {
        break;
      }

      if ((v15 + 12) >= 0xACu)
      {
        goto LABEL_26;
      }

LABEL_33:
      v25 = v14 > 0 || (v15 & 0xFFF0) == 63584;
      if ((a1 & 8) != 0 || !v25)
      {
        goto LABEL_248;
      }

      if ((a1 & 0x10) == 0)
      {
        v14 = result;
        v11 = a2;
        v7 = v12;
        goto LABEL_246;
      }

      if (v15 != 63615)
      {
        if (v15 <= 12440)
        {
          if (v15 - 774 > 0x32 || ((1 << (v15 - 6)) & 0x4000000000005) == 0)
          {
            if (v15 == 8413)
            {
              v28 = *(v11 - 1);
              switch(v28)
              {
                case 22823:
                  LOBYTE(v29) = -111;
                  break;
                case 25511:
                  LOBYTE(v29) = -99;
                  break;
                case 23567:
                  LOBYTE(v29) = -110;
                  break;
                default:
LABEL_248:
                  v7 = v13;
LABEL_249:
                  result = v14;
                  goto LABEL_255;
              }

              if (a5)
              {
                v54 = -121;
LABEL_136:
                *(a4 - 2) = v54;
                *(a4 - 1) = v29;
              }

LABEL_245:
              v7 = v13;
              goto LABEL_246;
            }

            goto LABEL_99;
          }

LABEL_73:
          v32 = v13;
          v33 = v14;
          v34 = a5;
          v75 = a1;
          v35 = a3;
          v36 = v9;
          v37 = a4;
          v38 = a6;
          v39 = __CFPrecomposeCharJapanese(v11 - 1, 1);
          v40 = __CFToJIS(v39, 0);
          if ((v40 & 0x8000) != 0)
          {
            v7 = v32;
            result = v33;
            a6 = v38;
            goto LABEL_255;
          }

          a6 = v38;
          a5 = v34;
          v14 = v33;
          if (v34)
          {
            v41 = *(v37 - 1);
            if (v41 == 61)
            {
              v42 = v32 + 1;
            }

            else
            {
              v42 = v32;
            }

            if (v42 > v34)
            {
              if (v41 == 61)
              {
                v7 = v42 - 1;
              }

              else
              {
                v7 = v32;
              }

              goto LABEL_249;
            }

            v16 = v41 == 61;
            v43 = -2;
            if (v16)
            {
              v43 = -1;
            }

            v44 = v42;
            JIS0208ToShiftJIS(v40, &v37[v43]);
            v7 = v44;
            v14 = v33;
            a5 = v34;
            a4 = v37;
            a6 = v38;
          }

          else
          {
            v7 = v32;
            a4 = v37;
          }

          v9 = v36;
          a3 = v35;
          a1 = v75;
          v10 = 20043;
          goto LABEL_246;
        }

        if (v15 - 12441 < 2)
        {
          goto LABEL_73;
        }

        if (v15 != 63610)
        {
          if (v15 == 63614)
          {
            v30 = *(v11 - 1);
            if (v30 > 0x30A2)
            {
              if (*(v11 - 1) <= 0x30EDu)
              {
                if (*(v11 - 1) > 0x30C2u)
                {
                  if (*(v11 - 1) > 0x30E4u)
                  {
                    if (v30 == 12517)
                    {
                      v31 = 60805;
                    }

                    else
                    {
                      if (v30 != 12519)
                      {
                        goto LABEL_248;
                      }

                      v31 = 60807;
                    }
                  }

                  else if (v30 == 12483)
                  {
                    v31 = 60770;
                  }

                  else
                  {
                    if (v30 != 12515)
                    {
                      goto LABEL_248;
                    }

                    v31 = 60803;
                  }
                }

                else if (*(v11 - 1) > 0x30A6u)
                {
                  if (v30 == 12455)
                  {
                    v31 = 60742;
                  }

                  else
                  {
                    if (v30 != 12457)
                    {
                      goto LABEL_248;
                    }

                    v31 = 60744;
                  }
                }

                else if (v30 == 12451)
                {
                  v31 = 60738;
                }

                else
                {
                  if (v30 != 12453)
                  {
                    goto LABEL_248;
                  }

                  v31 = 60740;
                }
              }

              else if (*(v11 - 1) <= 0xFF1Cu)
              {
                if (*(v11 - 1) > 0x30F5u)
                {
                  if (v30 == 12534)
                  {
                    v31 = 60822;
                  }

                  else
                  {
                    if (v30 != 12540)
                    {
                      goto LABEL_248;
                    }

                    v31 = 60251;
                  }
                }

                else if (v30 == 12526)
                {
                  v31 = 60814;
                }

                else
                {
                  if (v30 != 12533)
                  {
                    goto LABEL_248;
                  }

                  v31 = 60821;
                }
              }

              else if (*(v11 - 1) <= 0xFF3Cu)
              {
                if (v30 == 65309)
                {
                  v31 = 60289;
                }

                else
                {
                  if (v30 != 65339)
                  {
                    goto LABEL_248;
                  }

                  v31 = 60269;
                }
              }

              else
              {
                switch(v30)
                {
                  case 0xFF3Du:
                    v31 = 60270;
                    break;
                  case 0xFF5Cu:
                    v31 = 60258;
                    break;
                  case 0xFFE3u:
                    v31 = 60240;
                    break;
                  default:
                    goto LABEL_248;
                }
              }
            }

            else if (*(v11 - 1) <= 0x3044u)
            {
              if (*(v11 - 1) > 0x3001u)
              {
                if (*(v11 - 1) > 0x3040u)
                {
                  if (v30 == 12353)
                  {
                    v31 = 60575;
                  }

                  else
                  {
                    if (v30 != 12355)
                    {
                      goto LABEL_248;
                    }

                    v31 = 60577;
                  }
                }

                else if (v30 == 12290)
                {
                  v31 = 60226;
                }

                else
                {
                  if (v30 != 12316)
                  {
                    goto LABEL_248;
                  }

                  v31 = 60256;
                }
              }

              else if (*(v11 - 1) > 0x2025u)
              {
                if (v30 == 8230)
                {
                  v31 = 60259;
                }

                else
                {
                  if (v30 != 12289)
                  {
                    goto LABEL_248;
                  }

                  v31 = 60225;
                }
              }

              else if (v30 == 8208)
              {
                v31 = 60253;
              }

              else
              {
                if (v30 != 8214)
                {
                  goto LABEL_248;
                }

                v31 = 60257;
              }
            }

            else if (*(v11 - 1) <= 0x3082u)
            {
              if (*(v11 - 1) > 0x3048u)
              {
                if (v30 == 12361)
                {
                  v31 = 60583;
                }

                else
                {
                  if (v30 != 12387)
                  {
                    goto LABEL_248;
                  }

                  v31 = 60609;
                }
              }

              else if (v30 == 12357)
              {
                v31 = 60579;
              }

              else
              {
                if (v30 != 12359)
                {
                  goto LABEL_248;
                }

                v31 = 60581;
              }
            }

            else if (*(v11 - 1) <= 0x3086u)
            {
              if (v30 == 12419)
              {
                v31 = 60641;
              }

              else
              {
                if (v30 != 12421)
                {
                  goto LABEL_248;
                }

                v31 = 60643;
              }
            }

            else
            {
              switch(v30)
              {
                case 0x3087u:
                  v31 = 60645;
                  break;
                case 0x308Eu:
                  v31 = 60652;
                  break;
                case 0x30A1u:
                  v31 = 60736;
                  break;
                default:
                  goto LABEL_248;
              }
            }

            if (a5)
            {
              *(a4 - 1) = __rev16(v31);
            }

            goto LABEL_245;
          }

LABEL_99:
          if (a5 && v13 + 2 > a5)
          {
            goto LABEL_248;
          }

          if (v15 == 63586)
          {
            if (v14 + 5 > a3)
            {
              goto LABEL_248;
            }

            result = v14;
            LOBYTE(v61) = -123;
            v62 = -85;
            v63 = &__CFF862SeqTable;
            while (2)
            {
              v64 = 1;
              while (v11[v64] == *&v63[v64 * 2])
              {
                if ((++v64 * 2) == 10)
                {
                  if (a5)
                  {
                    *a4 = v61;
                    a4[1] = v62;
                    a4 += 2;
                  }

                  v7 = v13 + 2;
                  v11 += 4;
                  v14 += 4;
                  goto LABEL_246;
                }
              }

              v65 = *(v63 + 5);
              v63 += 10;
              v62 = v65;
              v61 = v65 >> 8;
              if (v65)
              {
                continue;
              }

              break;
            }
          }

          else if (v15 == 63585)
          {
            if (v14 + 4 > a3)
            {
              goto LABEL_248;
            }

            result = v14;
            LOBYTE(v56) = -123;
            v57 = -84;
            v58 = &__CFF861SeqTable;
            while (2)
            {
              v59 = 1;
              while (v11[v59] == *&v58[v59 * 2])
              {
                if ((++v59 * 2) == 8)
                {
                  if (a5)
                  {
                    *a4 = v56;
                    a4[1] = v57;
                    a4 += 2;
                  }

                  v7 = v13 + 2;
                  v11 += 3;
                  v14 += 3;
                  goto LABEL_246;
                }
              }

              v60 = *(v58 + 5);
              v58 += 10;
              v57 = v60;
              v56 = v60 >> 8;
              if (v60)
              {
                continue;
              }

              break;
            }
          }

          else
          {
            if (v15 != 63584 || v14 + 3 > a3)
            {
              goto LABEL_248;
            }

            result = v14;
            LOBYTE(v49) = -123;
            v50 = -111;
            v51 = &__CFF860SeqTable;
            while (2)
            {
              v52 = 1;
              while (v11[v52] == *&v51[v52 * 2])
              {
                if ((++v52 * 2) == 6)
                {
                  if (a5)
                  {
                    *a4 = v49;
                    a4[1] = v50;
                    a4 += 2;
                  }

                  v7 = v13 + 2;
                  v11 += 2;
                  v14 += 2;
                  goto LABEL_246;
                }
              }

              v53 = *(v51 + 5);
              v51 += 10;
              v50 = v53;
              v49 = v53 >> 8;
              if (v53)
              {
                continue;
              }

              break;
            }
          }

LABEL_254:
          v7 = v13;
          goto LABEL_255;
        }

        v48 = *(v11 - 1) - 8678;
        if (v48 > 3u)
        {
          goto LABEL_248;
        }

        if (!a5)
        {
          goto LABEL_245;
        }

        v29 = 0xD6D3D5D4 >> (8 * v48);
LABEL_113:
        v54 = -122;
        goto LABEL_136;
      }

      v26 = *(v11 - 1);
      if (v26 != 8230)
      {
        if (v26 == 65351)
        {
          LOBYTE(v29) = 75;
          if (!a5)
          {
            goto LABEL_245;
          }
        }

        else
        {
          if (v26 != 65357)
          {
            goto LABEL_248;
          }

          LOBYTE(v29) = 69;
          if (!a5)
          {
            goto LABEL_245;
          }
        }

        goto LABEL_113;
      }

      if (a5)
      {
        *(a4 - 2) = -1;
      }

      --v13;
      ++v11;
      v14 = v18;
      if (v18 >= a3)
      {
        if (a3 <= result + 1)
        {
          ++result;
        }

        else
        {
          result = a3;
        }

        goto LABEL_254;
      }
    }

    if (v11[1] == -1921)
    {
      ++v11;
      v7 = v13 + 1;
      if (a5)
      {
        *a4++ = -1;
      }

      ++v14;
      goto LABEL_246;
    }

LABEL_26:
    v19 = v14;
    v20 = &v9[v10];
    v21 = v9;
    while (2)
    {
      v22 = &v21[17 * ((0xF0F0F0F0F0F0F0F1 * (v20 - v21)) >> 1)];
      v23 = *v22;
      if (v23 > v15)
      {
        v20 = v22 - 17;
        goto LABEL_31;
      }

      if (v23 + 16 <= v15)
      {
        v21 = v22 + 17;
LABEL_31:
        if (v21 > v20)
        {
          goto LABEL_32;
        }

        continue;
      }

      break;
    }

    v27 = v22[v15 - v23 + 1];
    if (!v22[v15 - v23 + 1])
    {
LABEL_32:
      v14 = v19;
      if ((v15 + 0x2000) > 0x98Bu)
      {
        goto LABEL_33;
      }

LABEL_91:
      v45 = v15 - 57344;
      v46 = (v15 - 57344) / 0xBC;
      v47 = v15 + 68 * v46;
      if (v45 - 188 * v46 > 0x3E)
      {
        ++v47;
      }

      if (a5)
      {
        if (v13 + 2 > a5)
        {
          goto LABEL_248;
        }

        *a4 = bswap32(v47 + 4160) >> 16;
        a4 += 2;
        v7 = v13 + 2;
      }

      else
      {
        v7 = v13 + 2;
      }

      goto LABEL_246;
    }

    if (v27 <= 0xFF)
    {
      v7 = v13 + 1;
      v14 = v19;
      if (a5)
      {
        *a4++ = v27;
      }

      goto LABEL_246;
    }

    v14 = v19;
    if ((v27 & 0x8000) != 0)
    {
      if ((v15 + 0x2000) >= 0x98Cu)
      {
        if (v27 == 65533)
        {
          goto LABEL_33;
        }

        goto LABEL_248;
      }

      goto LABEL_91;
    }

    if (a5)
    {
      if (v13 + 2 > a5)
      {
        goto LABEL_248;
      }

      v66 = v27 >> 8;
      v67 = v27 & 0x7F;
      if ((v27 & 0x100) != 0)
      {
        v68 = 31;
      }

      else
      {
        v68 = 125;
      }

      v69 = v68 + v67;
      v70 = (v66 + 479) >> 1;
      v71 = v70 - 127;
      v72 = (v70 - 127);
      if (v69 > 0x7E)
      {
        LOBYTE(v69) = v69 + 1;
      }

      v73 = v70 - 63;
      if (v72 <= 0x9F)
      {
        v73 = v71;
      }

      *a4 = v73;
      a4[1] = v69;
      a4 += 2;
      v7 = v13 + 2;
    }

    else
    {
      v7 = v13 + 2;
    }

LABEL_246:
    a2 = v11 + 1;
    result = v14 + 1;
  }

  while (v14 + 1 < a3);
LABEL_255:
  *a6 = v7;
  return result;
}

uint64_t __CFFromMacJapanese(uint64_t a1, unsigned __int8 *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t *a6)
{
  v53 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  if (a3 < 1)
  {
    v13 = 0;
    goto LABEL_97;
  }

  v9 = a3;
  v12 = 0;
  v13 = 0;
  v50 = a1 & 0x200;
  v51 = a1 & 0x480;
  v14 = a1 & 0xC0;
  while (1)
  {
    if (a5 && v12 >= a5)
    {
      goto LABEL_97;
    }

    v15 = *a2;
    if (v15 < 0x81 || v15 == 160)
    {
      if (v15 == 128)
      {
        v17 = 92;
      }

      else
      {
        v17 = *a2;
      }

      if (v15 == 92)
      {
        v17 = 165;
      }

      if (v51 == 1024)
      {
        v16 = *a2;
      }

      else
      {
        v16 = v17;
      }

      v18 = 1;
      if (v14)
      {
        goto LABEL_24;
      }

LABEL_59:
      if (a5)
      {
        *a4++ = v16;
      }

      v12 = *a6 + 1;
      *a6 = v12;
      goto LABEL_62;
    }

    if ((v15 + 95) <= 0x3Eu)
    {
      v16 = v15 - 320;
      goto LABEL_23;
    }

    if (v15 == 253)
    {
      v16 = 169;
LABEL_23:
      v18 = 1;
      if (!v14)
      {
        goto LABEL_59;
      }

      goto LABEL_24;
    }

    if (v15 == 254)
    {
      v16 = 8482;
      goto LABEL_23;
    }

    if (v9 == 1)
    {
      goto LABEL_65;
    }

    v24 = a2[1];
    v25 = v15 >= 0xA0 ? 79 : 15;
    v26 = 2 * (v25 + v15);
    v27 = (v24 + (v24 >> 7)) <= 0x9Du ? v26 + 1 : v26 + 2;
    v28 = (v24 + (v24 >> 7)) <= 0x9Du ? -31 : -125;
    if ((((v28 + v24 + (v24 >> 7)) | (v27 << 8)) - 30067) < 0xABAEu)
    {
      break;
    }

    v29 = ((v28 + v24 + (v24 >> 7)) | (v27 << 8));
    v30 = &__CFFromJIS0208CharMap;
    v31 = (&__CFFromJIS0208CharMap + 15972);
    while (1)
    {
      v32 = &v30[33 * ((0xF83E0F83E0F83E1 * (v31 - v30)) >> 1)];
      v33 = *v32;
      if (v33 <= v29)
      {
        break;
      }

      v31 = v32 - 33;
LABEL_47:
      if (v30 > v31)
      {
        goto LABEL_54;
      }
    }

    if (v33 + 32 <= v29)
    {
      v30 = v32 + 33;
      goto LABEL_47;
    }

    v16 = v32[v29 - v33 + 1];
    if (v16 == 65533 || v16 == 0)
    {
      break;
    }

LABEL_58:
    v18 = 2;
    if (!v14)
    {
      goto LABEL_59;
    }

LABEL_24:
    if (!__CFStringEncodingIsDecomposableCharacter_2(v16, (a1 >> 7) & 1))
    {
      goto LABEL_59;
    }

    v19 = __CFStringEncodingDecomposeCharacter_2(a1, v16, v52);
    v20 = *a6;
    v12 = *a6 + v19;
    *a6 = v12;
    if (a5)
    {
      if (v12 > a5)
      {
        *a6 = v20;
        goto LABEL_97;
      }

      if (v19)
      {
        v21 = v19 + 1;
        v22 = v52;
        do
        {
          v23 = *v22++;
          *a4++ = v23;
          --v21;
        }

        while (v21 > 1);
      }
    }

LABEL_62:
    v13 += v18;
    a2 += v18;
    v9 -= v18;
LABEL_63:
    if (v9 <= 0)
    {
      goto LABEL_97;
    }
  }

LABEL_54:
  if ((v15 + 16) > 0xCu)
  {
LABEL_65:
    if (v15 == 255)
    {
      v12 += 2;
      if (a5)
      {
        if (v12 > a5)
        {
          goto LABEL_97;
        }

        *a4 = -125886426;
        a4 += 2;
      }

      *a6 = v12;
      ++v13;
      ++a2;
      --v9;
      goto LABEL_63;
    }
  }

  else if (v24 != 127 && (v24 + 3) >= 0x43u)
  {
    v16 = (v24 | (v15 << 8)) - 68 * (v15 & 0xF) + (v24 >> 7) - 4160;
    goto LABEL_58;
  }

  if (v9 == 1)
  {
    goto LABEL_97;
  }

  v35 = a2[1] | (v15 << 8);
  if ((v35 + 4713) < 0x97FAu)
  {
    goto LABEL_97;
  }

  v36 = &macjapanese_to_uni_decomp;
  v37 = &unk_1834439E2;
  while (2)
  {
    v38 = &v36[2 * ((v37 - v36) >> 3)];
    v39 = *v38;
    if (v39 > v35)
    {
      v37 = v38 - 2;
      goto LABEL_73;
    }

    if (v39 < v35)
    {
      v36 = v38 + 2;
LABEL_73:
      if (v36 > v37)
      {
        goto LABEL_97;
      }

      continue;
    }

    break;
  }

  v40 = *(v38 + 2);
  v41 = v40 >> 6;
  if (v50)
  {
    if ((v40 - 7) >= 3 || *(v38 + 2) >= 0x40u)
    {
      v42 = v41 + 1;
    }

    else
    {
      v42 = 2;
    }
  }

  else
  {
    v42 = v41 + 2;
  }

  v12 += v42;
  if (!a5)
  {
LABEL_95:
    *a6 = v12;
    v13 += 2;
    a2 += 2;
    v9 -= 2;
    goto LABEL_63;
  }

  if (v12 <= a5)
  {
    if (v40 >= 0x40)
    {
      v44 = &__CFF86XCharDecompSeqTable + 10 * (v40 & 0x3F) + 2 * (v50 >> 9) - 10;
    }

    else
    {
      v44 = &__CFTwoCharDecompSeqTable_0 + 4 * v40 - 4;
    }

    v45 = v42;
    v46 = a4;
    do
    {
      v47 = *v44;
      v44 += 2;
      *v46++ = v47;
      --v45;
    }

    while (v45);
    a4 += v42;
    goto LABEL_95;
  }

LABEL_97:
  v48 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __CFFromMacJapaneseLen(__int16 a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  result = 0;
  v5 = a1 & 0x480;
  do
  {
    v6 = *a2;
    if (v6 == 255)
    {
      ++a2;
      --a3;
      ++result;
    }

    else if ((v6 & 0x80) == 0 || v6 - 161 < 0x3F || (v5 != 1024 ? (v7 = v6 == 128) : (v7 = 0), !v7 ? (v8 = 0) : (v8 = 1), a3 == 1 || v6 > 0xFC || v8))
    {
      ++a2;
      --a3;
    }

    else if (v6 - 235 >= 3 && v6 - 133 > 2)
    {
      a2 += 2;
      a3 -= 2;
    }

    else
    {
      a2 += 2;
      a3 -= 2;
      result += 5;
    }

    ++result;
  }

  while (a3 > 0);
  return result;
}

uint64_t __CFFromShiftJIS(uint64_t a1, unsigned __int8 *a2, uint64_t a3, __int16 *a4)
{
  v5 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    if (v5 == 126)
    {
      v6 = 8254;
    }

    else
    {
      v6 = *a2;
    }

    if (v5 == 92)
    {
      v7 = 165;
    }

    else
    {
      v7 = v6;
    }

    goto LABEL_10;
  }

  if (v5 - 161 <= 0x3E)
  {
    v7 = v5 - 320;
LABEL_10:
    *a4 = v7;
    return 1;
  }

  if (a3 < 2)
  {
    return 0;
  }

  if (v5 - 240 <= 0xC)
  {
    result = 0;
    v9 = a2[1];
    if (v9 != 127 && (v9 + 3) >= 0x43u)
    {
      *a4 = (v9 | (v5 << 8)) - 68 * (v5 & 0xF) + (v9 >> 7) - 4160;
      return 2;
    }

    return result;
  }

  if (v5 == 128)
  {
    return 0;
  }

  result = 0;
  if (v5 <= 0xEA && v5 - 133 >= 3)
  {
    v10 = ShiftJISToJIS0208(a2);
    v11 = __CFFromJIS0208(v10);
    *a4 = v11;
    return 2 * (v11 != 65533);
  }

  return result;
}

uint64_t __CFFromAutoDetect_JP(uint64_t a1, char *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t *a6)
{
  v8 = a4;
  v9 = a3;
  v10 = a2;
  v11 = a1;
  v62 = *MEMORY[0x1E69E9840];
  v12 = a2;
  v13 = a3;
  do
  {
    v43 = v13-- < 1;
    if (v43)
    {
      if (a3 < 1)
      {
LABEL_41:
        if (a5 >= a3)
        {
          v28 = a3;
        }

        else
        {
          v28 = a5;
        }

        if (a5)
        {
          v29 = v28;
        }

        else
        {
          v29 = a3;
        }

        *a6 = v29;
        if (a5 && v29)
        {
          for (i = 0; i != v29; ++i)
          {
            a4[i] = a2[i];
          }
        }

        goto LABEL_114;
      }

      v21 = (a2 + 1);
      v22 = a3;
      while (1)
      {
        if (*(v21 - 1) == 27)
        {
          if (v22 < 5)
          {
            if (v22 == 4)
            {
              v25 = *v21 - 96;
              v43 = v25 > 0x1E;
              v26 = (1 << v25) & 0x7000C00F;
              if (!v43 && v26 != 0)
              {
LABEL_52:
                v31 = *MEMORY[0x1E69E9840];

                return __CFFromISO_2022_JP(a1, a2, a3, a4, a5, a6);
              }
            }
          }

          else
          {
            v23 = *v21;
            v24 = v23 - 96 > 0x1E || ((1 << (v23 - 96)) & 0x7000C00F) == 0;
            if (!v24 || v23 <= 0x28 && ((1 << v23) & 0x11600000000) != 0)
            {
              goto LABEL_52;
            }
          }
        }

        --v22;
        ++v21;
        if (v22 + 1 <= 1)
        {
          goto LABEL_41;
        }
      }
    }

    v14 = *v12++;
  }

  while ((v14 & 0x80000000) == 0);
  if (a3 < 1)
  {
    goto LABEL_94;
  }

  v15 = a3;
  v16 = a2;
  while (1)
  {
    if ((*v16 & 0x80000000) == 0)
    {
      --v15;
      goto LABEL_8;
    }

    v17 = *v16;
    if (v17 == 142)
    {
      v20 = *++v16;
      if ((v20 - 224) < 0xFFFFFFC1)
      {
        goto LABEL_55;
      }

      v15 -= 2;
      goto LABEL_8;
    }

    if (v17 != 143)
    {
      break;
    }

    if (v16[1] - 224 < 0xFFFFFFC1)
    {
      goto LABEL_55;
    }

    v19 = v16[2];
    v16 += 2;
    if ((v19 - 224) < 0xFFFFFFC1)
    {
      goto LABEL_55;
    }

    v15 -= 3;
LABEL_8:
    ++v16;
    if (v15 <= 0)
    {
      v33 = 1;
      goto LABEL_56;
    }
  }

  if (v17 != 255)
  {
    v33 = 0;
    v15 -= 2;
    if (!v15 || v17 < 0xA0)
    {
      goto LABEL_56;
    }

    v18 = *++v16;
    if ((v18 - 255) >= 0xFFFFFFA1)
    {
      goto LABEL_8;
    }
  }

LABEL_55:
  v33 = 0;
LABEL_56:
  v34 = a3;
  v35 = a2;
  while (2)
  {
    v36 = v34 - 1;
    v37 = *v35;
    if ((v37 & 0x80000000) == 0 || (v37 + 32) > 0xC0u)
    {
LABEL_71:
      ++v35;
      v34 = v36;
      if (v36 <= 0)
      {
        if ((v33 & 1) == 0)
        {
          v29 = 0;
          *a6 = 0;
          v61 = 0;
          v46 = 1;
          while (1)
          {
            if (a5)
            {
              if (v46 - 1 >= a5)
              {
                goto LABEL_114;
              }

              a1 = __CFFromShiftJIS(a1, v10, v9, &v61);
              if (!a1)
              {
                goto LABEL_114;
              }

              v47 = a1;
              *v8++ = v61;
            }

            else
            {
              a1 = __CFFromShiftJIS(a1, v10, v9, &v61);
              if (!a1)
              {
                goto LABEL_114;
              }

              v47 = a1;
            }

            *a6 = v46;
            v29 += v47;
            v10 += v47;
            ++v46;
            v43 = v9 <= v47;
            v9 -= v47;
            if (v43)
            {
              goto LABEL_114;
            }
          }
        }

        goto LABEL_94;
      }

      continue;
    }

    break;
  }

  if (*v35 >= 0xA0u)
  {
    v38 = 79;
  }

  else
  {
    v38 = 15;
  }

  v39 = 2 * (v38 + *v35);
  v40 = *++v35;
  v41 = v40 + (v39 >> 7);
  v42 = (v40 + (v39 >> 7));
  a1 = (v39 + 2);
  v43 = v42 > 0x9D;
  if (v42 <= 0x9D)
  {
    v44 = v39 + 1;
  }

  else
  {
    v44 = v39 + 2;
  }

  if (v43)
  {
    v45 = -125;
  }

  else
  {
    v45 = -31;
  }

  if ((v44 - 127) >= 0xA1u && (v41 + v45 - 127) >= 0xA1u)
  {
    v36 = v34 - 2;
    goto LABEL_71;
  }

  if (v33)
  {
    v29 = 0;
    *a6 = 0;
    v61 = 0;
    v48 = 1;
    while (1)
    {
      if (a5)
      {
        if (v48 - 1 >= a5)
        {
          goto LABEL_114;
        }

        a1 = __CFFromEUC_JP(a1, v10, v9, &v61);
        if (!a1)
        {
          goto LABEL_114;
        }

        v49 = a1;
        *v8++ = v61;
      }

      else
      {
        a1 = __CFFromEUC_JP(a1, v10, v9, &v61);
        if (!a1)
        {
          goto LABEL_114;
        }

        v49 = a1;
      }

      *a6 = v48;
      v29 += v49;
      v10 += v49;
      ++v48;
      v43 = v9 <= v49;
      v9 -= v49;
      if (v43)
      {
        goto LABEL_114;
      }
    }
  }

LABEL_94:
  v50 = __CFFromMacJapanese(0, a2, a3, 0, 0, a6);
  v51 = v50;
  if (v9 <= v50)
  {
    goto LABEL_110;
  }

  v60 = v11;
  v52 = 0;
  *a6 = 0;
  v53 = 1;
  v54 = v10;
  v55 = v9;
  do
  {
    v50 = __CFFromDOSJapanese(v50, v54, v55, &v61);
    if (!v50)
    {
      break;
    }

    *a6 = v53;
    v52 += v50;
    v54 += v50;
    v55 -= v50;
    ++v53;
  }

  while (v55 > 0);
  v11 = v60;
  if (v52 <= v51)
  {
LABEL_110:
    v58 = *MEMORY[0x1E69E9840];

    return __CFFromMacJapanese(v11, v10, v9, v8, a5, a6);
  }

  else
  {
    *a6 = 0;
    if (v9 >= 1)
    {
      v29 = 0;
      v61 = 0;
      v56 = 1;
      while (1)
      {
        if (a5)
        {
          if (v56 - 1 >= a5)
          {
            goto LABEL_114;
          }

          v50 = __CFFromDOSJapanese(v50, v10, v9, &v61);
          if (!v50)
          {
            goto LABEL_114;
          }

          v57 = v50;
          *v8++ = v61;
        }

        else
        {
          v50 = __CFFromDOSJapanese(v50, v10, v9, &v61);
          if (!v50)
          {
            goto LABEL_114;
          }

          v57 = v50;
        }

        *a6 = v56;
        v29 += v57;
        v10 += v57;
        ++v56;
        v43 = v9 <= v57;
        v9 -= v57;
        if (v43)
        {
          goto LABEL_114;
        }
      }
    }

    v29 = 0;
LABEL_114:
    v59 = *MEMORY[0x1E69E9840];
    return v29;
  }
}

uint64_t __CFToNTTDocomoSJIS(char a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v56[1] = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    v12 = 0;
    v20 = 0;
    goto LABEL_85;
  }

  v11 = 0;
  v12 = 0;
  v56[0] = 0;
  do
  {
    if (a5 && v11 >= a5)
    {
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_83;
      }

      v13 = *a2;
      v14 = (v13 - 774) > 0x32 || ((1 << (v13 - 6)) & 0x4000000000005) == 0;
      v15 = v13 - 12441;
      if (v14 && v15 >= 2)
      {
        goto LABEL_83;
      }
    }

    v17 = __CFToEmojiIndex(a2, a3 - v12, v56);
    if (v17 != -1)
    {
      if (v17 == 312 || v17 == 69)
      {
        v18 = &__CFCompatibilityEmojiSequences + 6 * __CFNTTDocomoTable[v17] - 6;
        v19 = strlen(v18);
        v20 = v19 + v11;
        if (a5)
        {
          if (v20 <= a5)
          {
            v21 = v19;
            memcpy(a4, v18, v19);
            a4 += v21;
            goto LABEL_26;
          }

LABEL_83:
          v20 = v11;
          break;
        }
      }

      else
      {
        v20 = v11 + 2;
        if (a5)
        {
          if (v20 > a5)
          {
            goto LABEL_83;
          }

          *a4 = __rev16(__CFNTTDocomoTable[v17]);
          a4 += 2;
        }
      }

LABEL_26:
      v23 = v56[0];
      a2 += v56[0];
      goto LABEL_46;
    }

    v22 = *a2;
    if (v22 <= 0x7F)
    {
      v20 = v11 + 1;
      if (!a5)
      {
        goto LABEL_45;
      }

LABEL_30:
      *a4++ = v22;
      goto LABEL_45;
    }

    if ((v22 + 159) <= 0x3Eu)
    {
      v20 = v11 + 1;
      if (!a5)
      {
        goto LABEL_45;
      }

      LOBYTE(v22) = v22 + 64;
      goto LABEL_30;
    }

    if ((v22 + 12) < 0xACu)
    {
      LOWORD(v24) = -3;
      goto LABEL_40;
    }

    v25 = &__CFToJISCharMap;
    v26 = (&__CFToJISCharMap + 40086);
    while (1)
    {
      v27 = &v25[17 * ((0xF0F0F0F0F0F0F0F1 * (v26 - v25)) >> 1)];
      v28 = *v27;
      if (v28 <= v22)
      {
        break;
      }

      v26 = v27 - 17;
LABEL_38:
      if (v25 > v26)
      {
        goto LABEL_39;
      }
    }

    if (v28 + 16 <= v22)
    {
      v25 = v27 + 17;
      goto LABEL_38;
    }

    v24 = v27[v22 - v28 + 1];
    if (v27[v22 - v28 + 1])
    {
      if (v24 >= 256)
      {
        v20 = v11 + 2;
        if (!a5)
        {
          goto LABEL_45;
        }

        if (v20 <= a5)
        {
          v34 = BYTE1(v24);
          v35 = v24 & 0x7F;
          if ((v24 & 0x100) != 0)
          {
            v36 = 31;
          }

          else
          {
            v36 = 125;
          }

          v37 = v36 + v35;
          v38 = (v34 + 479) >> 1;
          v39 = v38 - 127;
          v40 = (v38 - 127);
          if (v37 > 0x7E)
          {
            LOBYTE(v37) = v37 + 1;
          }

          v41 = v38 - 63;
          if (v40 <= 0x9F)
          {
            v41 = v39;
          }

          *a4 = v41;
          a4[1] = v37;
          a4 += 2;
          goto LABEL_45;
        }

        goto LABEL_83;
      }
    }

    else
    {
LABEL_39:
      LOWORD(v24) = -3;
    }

LABEL_40:
    if ((a1 & 8) != 0 || v12 < 1 || v24 != 65533)
    {
      goto LABEL_83;
    }

    if ((a1 & 0x10) == 0)
    {
      goto LABEL_44;
    }

    if ((v22 - 774 > 0x32 || ((1 << (v22 - 6)) & 0x4000000000005) == 0) && v22 - 12441 >= 2)
    {
      goto LABEL_83;
    }

    v29 = __CFPrecomposeCharJapanese(a2 - 1, 1);
    if ((v29 + 12) < 0xACu)
    {
      goto LABEL_83;
    }

    v30 = &__CFToJISCharMap;
    v31 = (&__CFToJISCharMap + 40086);
    while (2)
    {
      v32 = &v30[17 * ((0xF0F0F0F0F0F0F0F1 * (v31 - v30)) >> 1)];
      v33 = *v32;
      if (v33 > v29)
      {
        v31 = v32 - 17;
        goto LABEL_57;
      }

      if (v33 + 16 <= v29)
      {
        v30 = v32 + 17;
LABEL_57:
        if (v30 > v31)
        {
          goto LABEL_83;
        }

        continue;
      }

      break;
    }

    v42 = v32[v29 - v33 + 1];
    if (v42 < 1)
    {
      goto LABEL_83;
    }

    if (a5)
    {
      v43 = -2;
      if (*(a4 - 1) == 61)
      {
        v43 = -1;
      }

      v44 = &a4[v43];
      v45 = BYTE1(v42);
      v46 = v42 & 0x7F;
      if ((v42 & 0x100) != 0)
      {
        v47 = 31;
      }

      else
      {
        v47 = 125;
      }

      v48 = v47 + v46;
      v49 = (v45 + 479) >> 1;
      v50 = v49 - 127;
      v51 = (v49 - 127);
      if (v48 > 0x7E)
      {
        LOBYTE(v48) = v48 + 1;
      }

      v52 = v49 - 63;
      if (v51 <= 0x9F)
      {
        v52 = v50;
      }

      *v44 = v52;
      v44[1] = v48;
    }

LABEL_44:
    v20 = v11;
LABEL_45:
    ++a2;
    v23 = 1;
LABEL_46:
    v12 += v23;
    v11 = v20;
  }

  while (v12 < a3);
LABEL_85:
  *a6 = v20;
  v53 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __CFFromNTTDocomoSJIS(unsigned int a1, char *a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v46 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  if (a3 < 1)
  {
    v12 = 0;
    goto LABEL_59;
  }

  v9 = a3;
  v11 = 0;
  v12 = 0;
  v42 = (a1 >> 7) & 1;
  v43 = a1 & 0xC0;
  do
  {
    if (a5 && a5 <= v11)
    {
      break;
    }

    v13 = *a2;
    if ((*a2 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    if ((v13 + 95) <= 0x3Eu)
    {
      LOWORD(v13) = v13 - 320;
LABEL_8:
      v14 = 1;
LABEL_9:
      if (v43 && __CFStringEncodingIsDecomposableCharacter_2(v13, v42))
      {
        v15 = __CFStringEncodingDecomposeCharacter_2(a1, v13, v45);
        v16 = *a6;
        v11 = *a6 + v15;
        *a6 = v11;
        if (a5)
        {
          if (v11 > a5)
          {
            *a6 = v16;
            break;
          }

          if (v15)
          {
            v17 = v15 + 1;
            v18 = v45;
            do
            {
              v19 = *v18++;
              *a4++ = v19;
              --v17;
            }

            while (v17 > 1);
          }
        }
      }

      else
      {
        if (a5)
        {
          *a4++ = v13;
        }

        v11 = *a6 + 1;
        *a6 = v11;
      }

      v12 += v14;
      a2 += v14;
      v9 -= v14;
      continue;
    }

    if (v9 == 1)
    {
      break;
    }

    v20 = a2[1];
    if (v13 >= 0xA0)
    {
      v21 = 79;
    }

    else
    {
      v21 = 15;
    }

    v22 = 2 * (v21 + v13);
    if ((v20 + (v20 >> 7)) <= 0x9Du)
    {
      v23 = v22 + 1;
    }

    else
    {
      v23 = v22 + 2;
    }

    if ((v20 + (v20 >> 7)) <= 0x9Du)
    {
      v24 = -31;
    }

    else
    {
      v24 = -125;
    }

    if ((((v24 + v20 + (v20 >> 7)) | (v23 << 8)) - 30067) < 0xABAEu)
    {
      goto LABEL_46;
    }

    v25 = ((v24 + v20 + (v20 >> 7)) | (v23 << 8));
    v26 = &__CFFromJIS0208CharMap;
    v27 = (&__CFFromJIS0208CharMap + 15972);
    while (1)
    {
      v28 = &v26[33 * ((0xF83E0F83E0F83E1 * (v27 - v26)) >> 1)];
      v29 = *v28;
      if (v29 <= v25)
      {
        break;
      }

      v27 = v28 - 33;
LABEL_39:
      if (v26 > v27)
      {
        goto LABEL_46;
      }
    }

    if (v29 + 32 <= v25)
    {
      v26 = v28 + 33;
      goto LABEL_39;
    }

    v30 = v28[v25 - v29 + 1];
    if (v30 != 65533 && v30 != 0)
    {
      LOWORD(v13) = v30;
      v14 = 2;
      goto LABEL_9;
    }

LABEL_46:
    v32 = v20 | (v13 << 8);
    if ((v32 + 1539) < 0xFEA2u)
    {
      break;
    }

    v33 = &__CFEmojiIndexFromNTTDocomoSJIS;
    v34 = &unk_1834449FC;
LABEL_48:
    v35 = &v33[2 * ((v34 - v33) >> 3)];
    v36 = *v35;
    if (v36 > v32)
    {
      v34 = v35 - 2;
      goto LABEL_52;
    }

    if (v36 < v32)
    {
      v33 = v35 + 2;
LABEL_52:
      if (v33 > v34)
      {
        break;
      }

      goto LABEL_48;
    }

    v37 = __CFFromEmojiIndex(v35[1], __src);
    v38 = v37;
    if (!a5)
    {
      goto LABEL_57;
    }

    if (a5 - v11 < v37)
    {
      break;
    }

    memcpy(a4, __src, 2 * v37);
    a4 += v38;
    v11 = *a6;
LABEL_57:
    v11 += v38;
    *a6 = v11;
    v12 += 2;
    a2 += 2;
    v9 -= 2;
  }

  while (v9 > 0);
LABEL_59:
  v39 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __CFToEmojiIndex(unsigned __int16 *a1, uint64_t a2, uint64_t *a3)
{
  v40 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  if (v4 <= 0x7F)
  {
    if (a2 >= 2 && a1[1] == 8419)
    {
      *a3 = 2;
      v5 = v4 + 654;
      if ((v4 - 48) > 9)
      {
        v5 = -1;
      }

      if (v4 == 35)
      {
        v6 = 701;
      }

      else
      {
        v6 = v5;
      }

      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if ((v4 & 0xFFFE) != 0xD83C)
  {
    v11 = &unk_183444626;
    v12 = __CFBMPEmojiList;
    while (1)
    {
      v13 = &v12[(v11 - v12) >> 2];
      v14 = *v13;
      if (v14 == v4)
      {
        break;
      }

      v15 = (v13 - 2);
      v16 = (v13 + 2);
      if (v14 > v4)
      {
        v11 = v15;
      }

      else
      {
        v12 = v16;
      }

      if (v12 > v11)
      {
        goto LABEL_28;
      }
    }

    if (v13 - __CFBMPEmojiList == -2)
    {
LABEL_28:
      v17 = &unk_18344462A;
      v18 = __CFCompatibilityEmojiList;
      while (1)
      {
        v19 = &v18[(v17 - v18) >> 2];
        v20 = *v19;
        if (v20 == v4)
        {
          break;
        }

        v21 = (v19 - 2);
        v22 = (v19 + 2);
        if (v20 > v4)
        {
          v17 = v21;
        }

        else
        {
          v18 = v22;
        }

        if (v18 > v17)
        {
          goto LABEL_36;
        }
      }

      if (v19 - __CFCompatibilityEmojiList == -2)
      {
        goto LABEL_36;
      }

      v6 = ((v19 - __CFCompatibilityEmojiList) >> 1) + 722;
    }

    else
    {
      v6 = (v13 - __CFBMPEmojiList) >> 1;
    }

    v25 = 1;
    goto LABEL_41;
  }

  if (a2 < 2)
  {
    goto LABEL_36;
  }

  v7 = a1[1];
  if (v7 >> 10 != 55)
  {
    goto LABEL_36;
  }

  v8 = v7 + (v4 << 10);
  if (v8 - 56741350 > 0x19)
  {
    v26 = &unk_18344443E;
    v27 = (v8 + 1024) & 0xFFF;
    v28 = __CFSMPEmojiList;
    while (1)
    {
      v29 = &v28[(v26 - v28) >> 2];
      v30 = *v29;
      if (v30 == v27)
      {
        break;
      }

      v31 = (v29 - 2);
      v32 = (v29 + 2);
      if (v30 > v27)
      {
        v26 = v31;
      }

      else
      {
        v28 = v32;
      }

      if (v28 > v26)
      {
        goto LABEL_50;
      }
    }

    if (v29 - __CFSMPEmojiList != -2)
    {
      v6 = ((v29 - __CFSMPEmojiList) >> 1) + 119;
      v25 = 2;
      goto LABEL_41;
    }

LABEL_50:
    v33 = &unk_183444538;
    v34 = &__CFSMPUnicodeOnlyEmojiList;
    v6 = -1;
    while (1)
    {
      v35 = &v34[(v33 - v34) >> 2];
      v36 = *v35;
      if (v36 == v27)
      {
        break;
      }

      v37 = (v35 - 2);
      v38 = (v35 + 2);
      if (v36 > v27)
      {
        v33 = v37;
      }

      else
      {
        v34 = v38;
      }

      if (v34 > v33)
      {
        goto LABEL_37;
      }
    }

    if (v35 - &__CFSMPUnicodeOnlyEmojiList != -2)
    {
      *a3 = 2;
      v6 = 724;
      goto LABEL_37;
    }

    goto LABEL_36;
  }

  if (a2 < 4 || (a1[2] & 0xFC00) != 0xD800 || (v9 = a1[3], v9 >> 10 != 55))
  {
LABEL_36:
    v6 = -1;
    goto LABEL_37;
  }

  __s1[0] = v7 + 91;
  __s1[1] = v9 + 91;
  v10 = __CFRegionSequences;
  v6 = 712;
  while (strncmp(__s1, *v10, 2uLL))
  {
    ++v6;
    ++v10;
    if (v6 == 722)
    {
      goto LABEL_36;
    }
  }

  v25 = 4;
LABEL_41:
  *a3 = v25;
LABEL_37:
  v23 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t __CFFromEmojiIndex(unint64_t a1, __int16 *a2)
{
  if (a1 <= 118)
  {
    v2 = __CFBMPEmojiList[a1];
LABEL_3:
    *a2 = v2;
    return 1;
  }

  if (a1 <= 0x2BC)
  {
    if (a2)
    {
      v4 = __CFSMPEmojiList[a1 - 119];
      *a2 = ((v4 + 61440) >> 10) | 0xD800;
      a2[1] = v4 & 0x3FF | 0xDC00;
    }

    return 2;
  }

  if (a1 <= 0x2C7)
  {
    v5 = a1 - 654;
    if (a1 == 701)
    {
      v5 = 35;
    }

    *a2 = v5;
    a2[1] = 8419;
    return 2;
  }

  if (a1 > 0x2D1)
  {
    if (a1 <= 0x2D3)
    {
      v2 = __CFCompatibilityEmojiList[a1 - 722];
      goto LABEL_3;
    }

    return 0;
  }

  else
  {
    v6 = __CFRegionSequences[a1 - 712];
    if (a2)
    {
      v7 = *v6;
      *a2 = -10180;
      a2[1] = v7 - 8795;
    }

    v8 = v6[1];
    a2[2] = -10180;
    a2[3] = v8 - 8795;
    return 4;
  }
}

uint64_t __CFToKDDISJIS(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v58[1] = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    v12 = 0;
    v21 = 0;
    goto LABEL_84;
  }

  v8 = a3;
  v11 = 0;
  v12 = 0;
  v58[0] = 0;
  do
  {
    if (a5 && v11 >= a5)
    {
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_82;
      }

      v13 = *a2;
      v14 = (v13 - 774) > 0x32 || ((1 << (v13 - 6)) & 0x4000000000005) == 0;
      v15 = v13 - 12441;
      if (v14 && v15 >= 2)
      {
        goto LABEL_82;
      }
    }

    v17 = __CFToEmojiIndex(a2, v8 - v12, v58);
    if (v17 != -1)
    {
      if (v17 == 613)
      {
        v18 = a1;
        v19 = &__CFCompatibilityEmojiSequences + 6 * __CFKDDITable[613] - 6;
        v20 = strlen(v19);
        v21 = v20 + v11;
        if (!a5)
        {
          a1 = v18;
          v8 = a3;
          goto LABEL_29;
        }

        if (v21 <= a5)
        {
          v22 = v20;
          memcpy(a4, v19, v20);
          a4 += v22;
          a1 = v18;
          v8 = a3;
LABEL_29:
          v24 = v58[0];
          a2 += v58[0];
          goto LABEL_45;
        }
      }

      else
      {
        v21 = v11 + 2;
        if (!a5)
        {
          goto LABEL_29;
        }

        if (v21 <= a5)
        {
          *a4 = __rev16(__CFKDDITable[v17]);
          a4 += 2;
          goto LABEL_29;
        }
      }

LABEL_82:
      v21 = v11;
      break;
    }

    v23 = *a2;
    if (v23 <= 0x7F)
    {
      v21 = v11 + 1;
      if (!a5)
      {
        goto LABEL_44;
      }

LABEL_27:
      *a4++ = v23;
      goto LABEL_44;
    }

    if ((v23 + 159) <= 0x3Eu)
    {
      v21 = v11 + 1;
      if (!a5)
      {
        goto LABEL_44;
      }

      LOBYTE(v23) = v23 + 64;
      goto LABEL_27;
    }

    if ((v23 + 12) < 0xACu)
    {
      LOWORD(v25) = -3;
      goto LABEL_39;
    }

    v26 = &__CFToJISCharMap;
    v27 = (&__CFToJISCharMap + 40086);
    while (1)
    {
      v28 = &v26[17 * ((0xF0F0F0F0F0F0F0F1 * (v27 - v26)) >> 1)];
      v29 = *v28;
      if (v29 <= v23)
      {
        break;
      }

      v27 = v28 - 17;
LABEL_37:
      if (v26 > v27)
      {
        goto LABEL_38;
      }
    }

    if (v29 + 16 <= v23)
    {
      v26 = v28 + 17;
      goto LABEL_37;
    }

    v25 = v28[v23 - v29 + 1];
    if (v28[v23 - v29 + 1])
    {
      if (v25 >= 256)
      {
        v21 = v11 + 2;
        if (!a5)
        {
          goto LABEL_44;
        }

        if (v21 <= a5)
        {
          v35 = BYTE1(v25);
          v36 = v25 & 0x7F;
          if ((v25 & 0x100) != 0)
          {
            v37 = 31;
          }

          else
          {
            v37 = 125;
          }

          v38 = v37 + v36;
          v39 = (v35 + 479) >> 1;
          v40 = v39 - 127;
          v41 = (v39 - 127);
          if (v38 > 0x7E)
          {
            LOBYTE(v38) = v38 + 1;
          }

          v42 = v39 - 63;
          if (v41 <= 0x9F)
          {
            v42 = v40;
          }

          *a4 = v42;
          a4[1] = v38;
          a4 += 2;
          goto LABEL_44;
        }

        goto LABEL_82;
      }
    }

    else
    {
LABEL_38:
      LOWORD(v25) = -3;
    }

LABEL_39:
    if ((a1 & 8) != 0 || v12 < 1 || v25 != 65533)
    {
      goto LABEL_82;
    }

    if ((a1 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    if ((v23 - 774 > 0x32 || ((1 << (v23 - 6)) & 0x4000000000005) == 0) && v23 - 12441 >= 2)
    {
      goto LABEL_82;
    }

    v30 = __CFPrecomposeCharJapanese(a2 - 1, 1);
    if ((v30 + 12) < 0xACu)
    {
      goto LABEL_82;
    }

    v31 = &__CFToJISCharMap;
    v32 = (&__CFToJISCharMap + 40086);
    while (2)
    {
      v33 = &v31[17 * ((0xF0F0F0F0F0F0F0F1 * (v32 - v31)) >> 1)];
      v34 = *v33;
      if (v34 > v30)
      {
        v32 = v33 - 17;
        goto LABEL_56;
      }

      if (v34 + 16 <= v30)
      {
        v31 = v33 + 17;
LABEL_56:
        if (v31 > v32)
        {
          goto LABEL_82;
        }

        continue;
      }

      break;
    }

    v43 = v33[v30 - v34 + 1];
    if (v43 < 1)
    {
      goto LABEL_82;
    }

    if (a5)
    {
      v44 = -2;
      if (*(a4 - 1) == 61)
      {
        v44 = -1;
      }

      v45 = &a4[v44];
      v46 = BYTE1(v43);
      v47 = v43 & 0x7F;
      if ((v43 & 0x100) != 0)
      {
        v48 = 31;
      }

      else
      {
        v48 = 125;
      }

      v49 = v48 + v47;
      v50 = (v46 + 479) >> 1;
      v51 = v50 - 127;
      v52 = (v50 - 127);
      if (v49 > 0x7E)
      {
        LOBYTE(v49) = v49 + 1;
      }

      v53 = v50 - 63;
      if (v52 <= 0x9F)
      {
        v53 = v51;
      }

      *v45 = v53;
      v45[1] = v49;
    }

LABEL_43:
    v21 = v11;
LABEL_44:
    ++a2;
    v24 = 1;
LABEL_45:
    v12 += v24;
    v11 = v21;
  }

  while (v12 < v8);
LABEL_84:
  *a6 = v21;
  v54 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __CFFromKDDISJIS(unsigned int a1, char *a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v47 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  if (a3 < 1)
  {
    v12 = 0;
    goto LABEL_63;
  }

  v9 = a3;
  v11 = 0;
  v12 = 0;
  v43 = (a1 >> 7) & 1;
  v44 = a1 & 0xC0;
  do
  {
    if (a5 && a5 <= v11)
    {
      break;
    }

    v13 = *a2;
    if ((*a2 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    if ((v13 + 95) <= 0x3Eu)
    {
      LOWORD(v13) = v13 - 320;
LABEL_8:
      v14 = 1;
      goto LABEL_9;
    }

    if (v9 == 1)
    {
      break;
    }

    v20 = a2[1];
    v21 = v20 | (v13 << 8);
    if (v13 >= 0xA0)
    {
      v22 = 79;
    }

    else
    {
      v22 = 15;
    }

    v23 = 2 * (v22 + v13);
    v24 = v20 + (v20 >> 7);
    if (v24 <= 0x9Du)
    {
      v25 = v23 + 1;
    }

    else
    {
      v25 = v23 + 2;
    }

    if (v24 <= 0x9Du)
    {
      v26 = -31;
    }

    else
    {
      v26 = -125;
    }

    v27 = (v26 + v24) | (v25 << 8);
    if ((v27 - 30067) < 0xABAEu)
    {
      goto LABEL_37;
    }

    v28 = &__CFFromJIS0208CharMap;
    v29 = (&__CFFromJIS0208CharMap + 15972);
    while (1)
    {
      v30 = &v28[33 * ((0xF83E0F83E0F83E1 * (v29 - v28)) >> 1)];
      v31 = *v30;
      if (v31 <= v27)
      {
        break;
      }

      v29 = v30 - 33;
LABEL_36:
      if (v28 > v29)
      {
        goto LABEL_37;
      }
    }

    if (v31 + 32 <= v27)
    {
      v28 = v30 + 33;
      goto LABEL_36;
    }

    LOWORD(v13) = v30[v27 - v31 + 1];
    if (v13)
    {
      v32 = (v21 + 31054);
      if (v13 == 65533 || v32 <= 3)
      {
        if (v32 > 3)
        {
          goto LABEL_48;
        }

LABEL_38:
        LOWORD(v21) = __CFFromKDDISJIS_KDDI_old_2_new_table[v21 - 34482] - 2128;
        goto LABEL_49;
      }

      v14 = 2;
LABEL_9:
      if (v44 && __CFStringEncodingIsDecomposableCharacter_2(v13, v43))
      {
        v15 = __CFStringEncodingDecomposeCharacter_2(a1, v13, v46);
        v16 = *a6;
        v11 = *a6 + v15;
        *a6 = v11;
        if (a5)
        {
          if (v11 > a5)
          {
            *a6 = v16;
            break;
          }

          if (v15)
          {
            v17 = v15 + 1;
            v18 = v46;
            do
            {
              v19 = *v18++;
              *a4++ = v19;
              --v17;
            }

            while (v17 > 1);
          }
        }
      }

      else
      {
        if (a5)
        {
          *a4++ = v13;
        }

        v11 = *a6 + 1;
        *a6 = v11;
      }

      v12 += v14;
      a2 += v14;
      v9 -= v14;
      continue;
    }

LABEL_37:
    if ((v21 + 31054) < 4u)
    {
      goto LABEL_38;
    }

LABEL_48:
    if (v21 >> 6 < 0x3CD)
    {
      break;
    }

LABEL_49:
    if (v21 > 0xF7FCu)
    {
      break;
    }

    v34 = &__CFEmojiIndexFromKDDI_SJIS;
    v35 = &unk_18344598E;
LABEL_51:
    v36 = &v34[2 * ((v35 - v34) >> 3)];
    v37 = *v36;
    if (v37 > v21)
    {
      v35 = v36 - 2;
      goto LABEL_55;
    }

    if (v37 < v21)
    {
      v34 = v36 + 2;
LABEL_55:
      if (v34 > v35)
      {
        break;
      }

      goto LABEL_51;
    }

    v38 = __CFFromEmojiIndex(v36[1], __src);
    v39 = v38;
    if (!a5)
    {
      goto LABEL_60;
    }

    if (a5 - v11 < v38)
    {
      break;
    }

    memcpy(a4, __src, 2 * v38);
    a4 += v39;
    v11 = *a6;
LABEL_60:
    v11 += v39;
    *a6 = v11;
    v12 += 2;
    a2 += 2;
    v9 -= 2;
  }

  while (v9 > 0);
LABEL_63:
  v40 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __CFToISO_2022_JP_KDDI(char a1, uint64_t a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v73[1] = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    v13 = 0;
    v60 = 0;
    goto LABEL_176;
  }

  v8 = a3;
  v9 = a2;
  v68 = a6;
  v10 = a2 - 2;
  v72 = a1;
LABEL_3:
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  do
  {
    if (a5 && a5 <= v12)
    {
      if ((a1 & 0x10) == 0)
      {
        break;
      }

      v15 = (v9 + 2 * v13);
      v16 = *v15;
      v17 = (v16 - 774) > 0x32 || ((1 << (v16 - 6)) & 0x4000000000005) == 0;
      if (v17 && (v16 - 12441) >= 2)
      {
        break;
      }
    }

    else
    {
      v15 = (v9 + 2 * v13);
      v16 = *v15;
      if (v16 <= 0x7F)
      {
        if (v13 + 1 >= v8 || *(v9 + 2 * (v13 + 1)) != 8419)
        {
          v11 = v14 != 0;
          if (v14)
          {
            v19 = 4;
          }

          else
          {
            v19 = 1;
          }

          if (!a5)
          {
            v14 = 0;
            goto LABEL_151;
          }

          if (a5 - v12 >= v19)
          {
            if (v14)
            {
              *a4 = 27;
              *(a4 + 1) = 16936;
              a4 += 3;
            }

            v14 = 0;
            *a4++ = v16;
            goto LABEL_151;
          }

          break;
        }

        goto LABEL_37;
      }
    }

    if ((v16 + 159) <= 0x3Eu)
    {
      v11 = v14 != 3;
      if (v14 == 3)
      {
        v19 = 1;
      }

      else
      {
        v19 = 4;
      }

      if (a5)
      {
        if (a5 - v12 < v19)
        {
          break;
        }

        if (v14 != 3)
        {
          *a4 = 27;
          *(a4 + 1) = 18728;
          a4 += 3;
        }

        *a4++ = v16 - 64;
      }

      v14 = 3;
      goto LABEL_151;
    }

LABEL_37:
    if (v16 == 8254 || v16 == 165)
    {
      v11 = v14 != 2;
      if (v14 == 2)
      {
        v19 = 1;
      }

      else
      {
        v19 = 4;
      }

      if (a5)
      {
        if (a5 - v12 < v19)
        {
          break;
        }

        if (v14 != 2)
        {
          *a4 = 27;
          *(a4 + 1) = 18984;
          a4 += 3;
        }

        if (v16 == 165)
        {
          v20 = 92;
        }

        else
        {
          v20 = 126;
        }

        *a4++ = v20;
      }

      v14 = 2;
      goto LABEL_151;
    }

    v70 = v11;
    v73[0] = 0;
    v21 = __CFToEmojiIndex(v15, v8 - v13, v73);
    if (v21 != -1)
    {
      v22 = __CFKDDITable[v21];
      v11 = v14 != 1;
      if (v14 == 1)
      {
        v23 = 0;
      }

      else
      {
        v23 = 3;
      }

      if (v21 == 613)
      {
        v24 = &__CFCompatibilityEmojiSequences + 6 * __CFKDDITable[613] - 6;
        v25 = strlen(v24);
        v19 = v25 + v23;
        if (!a5)
        {
          a1 = v72;
          v11 = v14 != 1;
          v9 = a2;
          goto LABEL_109;
        }

        v11 = v14 != 1;
        if (a5 - v12 >= v19)
        {
          if (v14 != 1)
          {
            *a4 = 27;
            *(a4 + 1) = 16932;
            a4 += 3;
          }

          v9 = a2;
          if (v25 >= 1)
          {
            v26 = &v24[v25];
            do
            {
              v27 = _byteswap_ushort(*v24);
              v28 = (v27 + 3264);
              if ((v27 + 2496) >= 0x1BDu)
              {
                v29 = v27;
              }

              else
              {
                v29 = v27 - 2816;
              }

              v30 = v27 - 1536;
              if (v28 > 0x14D)
              {
                v30 = v29;
              }

              if (v30 >= 0xA000u)
              {
                v31 = 79;
              }

              else
              {
                v31 = 15;
              }

              v32 = 2 * (v31 + HIBYTE(v30));
              v33 = *(v24 + 1) + (v24[1] >> 7);
              if ((v24[1] + (v24[1] >> 7)) <= 0x9Du)
              {
                v34 = v32 + 1;
              }

              else
              {
                v34 = v32 + 2;
              }

              if ((v24[1] + (v24[1] >> 7)) <= 0x9Du)
              {
                v35 = 97;
              }

              else
              {
                v35 = 3;
              }

              *a4 = v34 & 0x7F;
              a4[1] = (v35 + v33) & 0x7F;
              a4 += 2;
              v24 += 2;
            }

            while (v24 < v26);
          }

          goto LABEL_108;
        }
      }

      else
      {
        if ((v22 + 2496) >= 0x1BDu)
        {
          v40 = __CFKDDITable[v21];
        }

        else
        {
          v40 = v22 - 2816;
        }

        if ((v22 + 3264) <= 0x14Du)
        {
          v41 = v22 - 1536;
        }

        else
        {
          v41 = v40;
        }

        if (v41 >= 0xA000u)
        {
          v42 = 79;
        }

        else
        {
          v42 = 15;
        }

        v43 = 2 * (v42 + HIBYTE(v41));
        v44 = v22 + (v22 >> 7);
        if (v44 <= 0x9Du)
        {
          v45 = v43 + 1;
        }

        else
        {
          v45 = v43 + 2;
        }

        if (v44 <= 0x9Du)
        {
          v46 = 97;
        }

        else
        {
          v46 = 3;
        }

        v19 = v23 + 2;
        if (!a5)
        {
          goto LABEL_107;
        }

        if (a5 - v12 >= v19)
        {
          if (v14 != 1)
          {
            *a4 = 27;
            *(a4 + 1) = 16932;
            a4 += 3;
          }

          *a4 = v45 & 0x7F;
          a4[1] = (v46 + v44) & 0x7F;
          a4 += 2;
LABEL_107:
          v9 = a2;
LABEL_108:
          a1 = v72;
LABEL_109:
          v13 += v73[0];
          v14 = 1;
          goto LABEL_152;
        }
      }

LABEL_170:
      v9 = a2;
      if (!v14)
      {
        goto LABEL_171;
      }

LABEL_154:
      v60 = v12 + 3;
      if (!a5)
      {
        goto LABEL_175;
      }

      if (v60 <= a5)
      {
        *a4 = 27;
        *(a4 + 1) = 16936;
        goto LABEL_175;
      }

      do
      {
        v61 = v13;
        v62 = *(v10 + 2 * v13);
        if (((v62 - 774) > 0x32 || ((1 << (v62 - 6)) & 0x4000000000005) == 0) && (v62 - 12441) >= 2)
        {
          IsValidCombiningCharacterForLatin1_4 = __CFStringEncodingIsValidCombiningCharacterForLatin1_4(v62, v11);
        }

        else
        {
          IsValidCombiningCharacterForLatin1_4 = 1;
        }

        --v13;
      }

      while (v61 >= 2 && (IsValidCombiningCharacterForLatin1_4 & 1) != 0);
      if (v61 < 2)
      {
        v60 = 0;
        goto LABEL_175;
      }

      a4 -= v12;
      v8 = v61 - 1;
      a1 = v72;
      goto LABEL_3;
    }

    v11 = v70;
    if ((v16 + 12) < 0xACu)
    {
      goto LABEL_124;
    }

    v36 = &__CFToJISCharMap;
    v37 = (&__CFToJISCharMap + 40086);
    while (1)
    {
      v38 = &v36[17 * ((0xF0F0F0F0F0F0F0F1 * (v37 - v36)) >> 1)];
      v39 = *v38;
      if (v39 <= v16)
      {
        break;
      }

      v37 = v38 - 17;
LABEL_85:
      if (v36 > v37)
      {
        goto LABEL_124;
      }
    }

    if (v39 + 16 <= v16)
    {
      v36 = v38 + 17;
      goto LABEL_85;
    }

    v47 = v38[(v16 - v39) + 1];
    if (v38[(v16 - v39) + 1])
    {
      v48 = v47 > 0x7531;
    }

    else
    {
      v48 = 1;
    }

    if (v48 || v47 - 10529 < 0x62E)
    {
LABEL_124:
      if ((v72 & 8) == 0)
      {
        if ((v16 - 774) <= 0x32 && ((1 << (v16 - 6)) & 0x4000000000005) != 0 || (v16 - 12441) < 2 || (v51 = __CFStringEncodingIsValidCombiningCharacterForLatin1_4(v16, v70), v11 = v70, v51))
        {
          a1 = v72;
          if ((v72 & 0x10) == 0)
          {
            v19 = 0;
            goto LABEL_150;
          }

          v53 = *(v15 - 1);
          v52 = v15 - 1;
          v54 = v53 > 0x7F ? __CFPrecomposeCharJapanese(v52, 0) : __CFStringEncodingPrecomposeLatinCharacter_6(v52, v8 - v13 + 1, 0);
          v55 = __CFToJIS(v54, 1);
          if (v55)
          {
            if (v55 != 65533 && (v55 & 0x8000) == 0)
            {
              if (v14 == 1)
              {
                v19 = 0;
                v56 = 0;
                v11 = 0;
                v57 = 2;
                if (!a5)
                {
                  goto LABEL_149;
                }
              }

              else
              {
                if (v14)
                {
                  v57 = 2;
                }

                else
                {
                  v57 = 1;
                }

                if (v70)
                {
                  v57 += LOBYTE((&__CFISO2022JPSequences)[2 * v14 + 1]) + 1;
                }

                v19 = 5 - v57;
                v11 = 1;
                v56 = &off_1E6DCFCB0;
                if (!a5)
                {
LABEL_149:
                  v14 = 1;
                  a1 = v72;
                  goto LABEL_150;
                }
              }

              if (a5 - v12 >= v19)
              {
                a4 -= v57;
                v49 = v55;
                v50 = v55 >> 8;
                if (v14 != 1)
                {
                  *a4 = 27;
                  v58 = a4 + 1;
                  v71 = v11;
                  v59 = BYTE1(v55);
                  strncpy(v58, *v56, *(v56 + 8));
                  LOBYTE(v50) = v59;
                  v11 = v71;
                  a4 = &v58[*(v56 + 8)];
                }

                goto LABEL_142;
              }
            }
          }
        }
      }

      goto LABEL_170;
    }

    if (v47 < 0x100)
    {
      goto LABEL_170;
    }

    v11 = v14 != 1;
    if (v14 == 1)
    {
      v19 = 2;
    }

    else
    {
      v19 = 5;
    }

    if (!a5)
    {
      goto LABEL_149;
    }

    if (a5 - v12 < v19)
    {
      goto LABEL_170;
    }

    v49 = v38[(v16 - v39) + 1];
    v50 = v47 >> 8;
    if (v14 != 1)
    {
      *a4 = 27;
      *(a4 + 1) = 16932;
      a4 += 3;
    }

LABEL_142:
    a1 = v72;
    *a4 = v50;
    a4[1] = v49 & 0x7F;
    a4 += 2;
    v14 = 1;
LABEL_150:
    v9 = a2;
LABEL_151:
    ++v13;
LABEL_152:
    v12 += v19;
  }

  while (v13 < v8);
  if (v14)
  {
    goto LABEL_154;
  }

LABEL_171:
  v60 = v12;
LABEL_175:
  a6 = v68;
LABEL_176:
  *a6 = v60;
  v66 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __CFFromISO_2022_JP_KDDI(unsigned int a1, unsigned __int8 *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, void *a6)
{
  v65 = *MEMORY[0x1E69E9840];
  if (__CFADD__(a2, a3))
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    if (a6)
    {
      goto LABEL_105;
    }

    goto LABEL_106;
  }

  v9 = a3;
  if (a3 < 1)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_105;
  }

  v10 = a4;
  v11 = a2;
  v56 = &a2[a3];
  v13 = 0;
  v14 = 0;
  v7 = 0;
  v61 = a1 & 0xC0;
  v62 = a1;
  v6 = 0;
  v15 = a4;
  v63 = a5;
  v60 = a6;
  do
  {
    v8 = v7;
    v16 = v11;
    v17 = v9;
    while (1)
    {
      if (a5 && a5 <= v6)
      {
        goto LABEL_94;
      }

      v18 = *v16;
      if (v18 == 27)
      {
        v59 = v15;
        v47 = 9;
        v48 = &byte_1E6DCFCA9;
        do
        {
          v49 = *(v48 - 1);
          if (v56 >= &v16[v49 + 1])
          {
            v50 = strncmp(*(v48 - 9), v16 + 1, *(v48 - 1));
            a5 = v63;
            if (!v50)
            {
              v13 = *v48;
              v46 = v49 + 1;
              v15 = v59;
              a6 = v60;
              a1 = v62;
              goto LABEL_69;
            }
          }

          v48 += 16;
          --v47;
        }

        while (v47);
        if ((v13 & 0xFD) == 0)
        {
          a6 = v60;
          if (a5)
          {
            *v59 = 27;
            v15 = v59 + 1;
            a1 = v62;
          }

          else
          {
            a1 = v62;
            v15 = v59;
          }

          ++v6;
          v46 = 1;
          goto LABEL_69;
        }

        goto LABEL_113;
      }

      if (v13 != 1)
      {
        switch(v13)
        {
          case 3:
            if ((v18 - 96) < 0xFFFFFFC1)
            {
              LODWORD(v13) = 1;
              goto LABEL_115;
            }

            if (a5)
            {
              LOWORD(v18) = v18 - 192;
LABEL_88:
              *v10++ = v18;
            }

            break;
          case 2:
            if (a5)
            {
              if (v18 == 126)
              {
                v51 = 8254;
              }

              else
              {
                v51 = *v16;
              }

              if (v18 == 92)
              {
                LOWORD(v18) = 165;
              }

              else
              {
                LOWORD(v18) = v51;
              }

              goto LABEL_88;
            }

            break;
          case 0:
            if (!a5)
            {
              break;
            }

            goto LABEL_88;
          default:
LABEL_115:
            v6 = v14;
            goto LABEL_96;
        }

        v46 = 1;
        goto LABEL_68;
      }

      if (v17 == 1)
      {
        LODWORD(v13) = 1;
        v9 = 1;
        goto LABEL_95;
      }

      v19 = *(v16 + 1);
      if (v18)
      {
        v20 = 31;
      }

      else
      {
        v20 = 125;
      }

      v21 = (v19 & 0x7F) + v20;
      v22 = (v18 + 479) >> 1;
      v23 = v22 - 127;
      v24 = (v22 - 127);
      if (v21 > 0x7E)
      {
        LOBYTE(v21) = v21 + 1;
      }

      v25 = v22 - 63;
      if (v24 <= 0x9F)
      {
        v25 = v23;
      }

      v26 = v21 | (v25 << 8);
      v27 = (v26 + 4800);
      if ((v26 + 5312) >= 0x1BDu)
      {
        v28 = v26;
      }

      else
      {
        v28 = v26 + 2816;
      }

      v29 = v26 + 1536;
      if (v27 > 0x14D)
      {
        v29 = v28;
      }

      if ((v29 + 2051) < 0xFB43u)
      {
        break;
      }

      v30 = &__CFEmojiIndexFromKDDI_SJIS;
      v31 = &unk_18344598E;
      while (1)
      {
        v32 = &v30[2 * ((v31 - v30) >> 3)];
        v33 = *v32;
        if (v33 <= v29)
        {
          break;
        }

        v31 = v32 - 2;
LABEL_31:
        if (v30 > v31)
        {
          goto LABEL_39;
        }
      }

      if (v33 < v29)
      {
        v30 = v32 + 2;
        goto LABEL_31;
      }

      v57 = v14;
      v58 = v13;
      v34 = __CFFromEmojiIndex(v32[1], __src);
      a5 = v63;
      v35 = v34;
      if (!v63)
      {
        goto LABEL_36;
      }

      if (v63 - v6 < v34)
      {
        LODWORD(v13) = 1;
LABEL_113:
        v9 = v17;
        v11 = v16;
        v7 = v8;
        a6 = v60;
        goto LABEL_96;
      }

      memcpy(v15, __src, 2 * v34);
      a5 = v63;
      v15 += v35;
LABEL_36:
      a1 = v62;
      v6 += v35;
      v8 += 2;
      v16 += 2;
      v36 = v17 <= 2;
      v17 -= 2;
      v13 = v58;
      a6 = v60;
      v14 = v57;
      if (v36)
      {
        goto LABEL_93;
      }
    }

LABEL_39:
    if (a1)
    {
      v42 = 63;
      goto LABEL_58;
    }

    v37 = v19 | (v18 << 8);
    if ((v37 - 30067) < 0xABAEu)
    {
LABEL_93:
      LODWORD(v13) = 1;
LABEL_94:
      v9 = v17;
LABEL_95:
      v11 = v16;
      v7 = v8;
      break;
    }

    v38 = &__CFFromJIS0208CharMap;
    v39 = (&__CFFromJIS0208CharMap + 15972);
    while (1)
    {
      v40 = &v38[33 * ((0xF83E0F83E0F83E1 * (v39 - v38)) >> 1)];
      v41 = *v40;
      if (v41 <= v37)
      {
        break;
      }

      v39 = v40 - 33;
LABEL_46:
      if (v38 > v39)
      {
        goto LABEL_93;
      }
    }

    if (v41 + 32 <= v37)
    {
      v38 = v40 + 33;
      goto LABEL_46;
    }

    v42 = v40[v37 - v41 + 1];
    if (v42)
    {
      v43 = v42 == 65533;
    }

    else
    {
      v43 = 1;
    }

    if (v43)
    {
      goto LABEL_93;
    }

LABEL_58:
    v10 = v15;
    v44 = a6;
    if (!v61 || (IsDecomposableCharacter_2 = __CFStringEncodingIsDecomposableCharacter_2(v42, (a1 >> 7) & 1), a1 = v62, a5 = v63, !IsDecomposableCharacter_2))
    {
      if (a5)
      {
        *v10++ = v42;
      }

      v7 = v8;
      v11 = v16;
      v9 = v17;
      v14 = v6;
      goto LABEL_67;
    }

    v14 = v6 + 1;
    if (!v63)
    {
      goto LABEL_63;
    }

    if (v6 + 2 > v63)
    {
      goto LABEL_106;
    }

    __CFStringEncodingDecomposeCharacter_2(v62, v42, v10);
    v14 = v6 + 1;
    a1 = v62;
    a5 = v63;
    v10 += 2;
LABEL_63:
    v7 = v8;
    v11 = v16;
    v9 = v17;
LABEL_67:
    v46 = 2;
    a6 = v44;
LABEL_68:
    v6 = v14 + 1;
    v8 = v7;
    v16 = v11;
    v17 = v9;
    v15 = v10;
LABEL_69:
    v7 = v46 + v8;
    v11 = &v16[v46];
    v9 = v17 - v46;
    v14 = v6;
    v10 = v15;
  }

  while (v17 - v46 >= 1);
LABEL_96:
  if (a5 && v13 && v9 == 3 && v6 == a5 && *v11 == 27 && v56 >= (v11 + 3))
  {
    v52 = v11[1];
    if (v52 == 40)
    {
      v52 = v11[2];
      v53 = 66;
    }

    else
    {
      v53 = 40;
    }

    if (v53 == v52)
    {
      v7 += 3;
    }
  }

LABEL_105:
  *a6 = v6;
  v8 = v7;
LABEL_106:
  v54 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t __CFToSoftBankSJIS(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v59[1] = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    v12 = 0;
    v22 = 0;
    goto LABEL_84;
  }

  v8 = a3;
  v11 = 0;
  v12 = 0;
  v59[0] = 0;
  do
  {
    if (a5 && v11 >= a5)
    {
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_82;
      }

      v13 = *a2;
      v14 = (v13 - 774) > 0x32 || ((1 << (v13 - 6)) & 0x4000000000005) == 0;
      v15 = v13 - 12441;
      if (v14 && v15 >= 2)
      {
        goto LABEL_82;
      }
    }

    v17 = __CFToEmojiIndex(a2, v8 - v12, v59);
    if (v17 != -1)
    {
      v18 = __CFSoftBankTable[v17];
      if (v18 > 6)
      {
        v22 = v11 + 2;
        if (!a5)
        {
          goto LABEL_29;
        }

        if (v22 <= a5)
        {
          *a4 = BYTE1(v18);
          a4[1] = v18;
          a4 += 2;
          goto LABEL_29;
        }
      }

      else
      {
        v19 = a1;
        v20 = &__CFCompatibilityEmojiSequences + 6 * __CFSoftBankTable[v17] - 6;
        v21 = strlen(v20);
        v22 = v21 + v11;
        if (!a5)
        {
          a1 = v19;
          v8 = a3;
          goto LABEL_29;
        }

        if (v22 <= a5)
        {
          v23 = v21;
          memcpy(a4, v20, v21);
          a4 += v23;
          a1 = v19;
          v8 = a3;
LABEL_29:
          v25 = v59[0];
          a2 += v59[0];
          goto LABEL_45;
        }
      }

LABEL_82:
      v22 = v11;
      break;
    }

    v24 = *a2;
    if (v24 <= 0x7F)
    {
      v22 = v11 + 1;
      if (!a5)
      {
        goto LABEL_44;
      }

LABEL_27:
      *a4++ = v24;
      goto LABEL_44;
    }

    if ((v24 + 159) <= 0x3Eu)
    {
      v22 = v11 + 1;
      if (!a5)
      {
        goto LABEL_44;
      }

      LOBYTE(v24) = v24 + 64;
      goto LABEL_27;
    }

    if ((v24 + 12) < 0xACu)
    {
      LOWORD(v26) = -3;
      goto LABEL_39;
    }

    v27 = &__CFToJISCharMap;
    v28 = (&__CFToJISCharMap + 40086);
    while (1)
    {
      v29 = &v27[17 * ((0xF0F0F0F0F0F0F0F1 * (v28 - v27)) >> 1)];
      v30 = *v29;
      if (v30 <= v24)
      {
        break;
      }

      v28 = v29 - 17;
LABEL_37:
      if (v27 > v28)
      {
        goto LABEL_38;
      }
    }

    if (v30 + 16 <= v24)
    {
      v27 = v29 + 17;
      goto LABEL_37;
    }

    v26 = v29[v24 - v30 + 1];
    if (v29[v24 - v30 + 1])
    {
      if (v26 >= 256)
      {
        v22 = v11 + 2;
        if (!a5)
        {
          goto LABEL_44;
        }

        if (v22 <= a5)
        {
          v36 = BYTE1(v26);
          v37 = v26 & 0x7F;
          if ((v26 & 0x100) != 0)
          {
            v38 = 31;
          }

          else
          {
            v38 = 125;
          }

          v39 = v38 + v37;
          v40 = (v36 + 479) >> 1;
          v41 = v40 - 127;
          v42 = (v40 - 127);
          if (v39 > 0x7E)
          {
            LOBYTE(v39) = v39 + 1;
          }

          v43 = v40 - 63;
          if (v42 <= 0x9F)
          {
            v43 = v41;
          }

          *a4 = v43;
          a4[1] = v39;
          a4 += 2;
          goto LABEL_44;
        }

        goto LABEL_82;
      }
    }

    else
    {
LABEL_38:
      LOWORD(v26) = -3;
    }

LABEL_39:
    if ((a1 & 8) != 0 || v12 < 1 || v26 != 65533)
    {
      goto LABEL_82;
    }

    if ((a1 & 0x10) == 0)
    {
      goto LABEL_43;
    }

    if ((v24 - 774 > 0x32 || ((1 << (v24 - 6)) & 0x4000000000005) == 0) && v24 - 12441 >= 2)
    {
      goto LABEL_82;
    }

    v31 = __CFPrecomposeCharJapanese(a2 - 1, 1);
    if ((v31 + 12) < 0xACu)
    {
      goto LABEL_82;
    }

    v32 = &__CFToJISCharMap;
    v33 = (&__CFToJISCharMap + 40086);
    while (2)
    {
      v34 = &v32[17 * ((0xF0F0F0F0F0F0F0F1 * (v33 - v32)) >> 1)];
      v35 = *v34;
      if (v35 > v31)
      {
        v33 = v34 - 17;
        goto LABEL_56;
      }

      if (v35 + 16 <= v31)
      {
        v32 = v34 + 17;
LABEL_56:
        if (v32 > v33)
        {
          goto LABEL_82;
        }

        continue;
      }

      break;
    }

    v44 = v34[v31 - v35 + 1];
    if (v44 < 1)
    {
      goto LABEL_82;
    }

    if (a5)
    {
      v45 = -2;
      if (*(a4 - 1) == 61)
      {
        v45 = -1;
      }

      v46 = &a4[v45];
      v47 = BYTE1(v44);
      v48 = v44 & 0x7F;
      if ((v44 & 0x100) != 0)
      {
        v49 = 31;
      }

      else
      {
        v49 = 125;
      }

      v50 = v49 + v48;
      v51 = (v47 + 479) >> 1;
      v52 = v51 - 127;
      v53 = (v51 - 127);
      if (v50 > 0x7E)
      {
        LOBYTE(v50) = v50 + 1;
      }

      v54 = v51 - 63;
      if (v53 <= 0x9F)
      {
        v54 = v52;
      }

      *v46 = v54;
      v46[1] = v50;
    }

LABEL_43:
    v22 = v11;
LABEL_44:
    ++a2;
    v25 = 1;
LABEL_45:
    v12 += v25;
    v11 = v22;
  }

  while (v12 < v8);
LABEL_84:
  *a6 = v22;
  v55 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t __CFFromSoftBankSJIS(unsigned int a1, char *a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v46 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  if (a3 < 1)
  {
    v12 = 0;
    goto LABEL_59;
  }

  v9 = a3;
  v11 = 0;
  v12 = 0;
  v42 = (a1 >> 7) & 1;
  v43 = a1 & 0xC0;
  do
  {
    if (a5 && a5 <= v11)
    {
      break;
    }

    v13 = *a2;
    if ((*a2 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    if ((v13 + 95) <= 0x3Eu)
    {
      LOWORD(v13) = v13 - 320;
LABEL_8:
      v14 = 1;
LABEL_9:
      if (v43 && __CFStringEncodingIsDecomposableCharacter_2(v13, v42))
      {
        v15 = __CFStringEncodingDecomposeCharacter_2(a1, v13, v45);
        v16 = *a6;
        v11 = *a6 + v15;
        *a6 = v11;
        if (a5)
        {
          if (v11 > a5)
          {
            *a6 = v16;
            break;
          }

          if (v15)
          {
            v17 = v15 + 1;
            v18 = v45;
            do
            {
              v19 = *v18++;
              *a4++ = v19;
              --v17;
            }

            while (v17 > 1);
          }
        }
      }

      else
      {
        if (a5)
        {
          *a4++ = v13;
        }

        v11 = *a6 + 1;
        *a6 = v11;
      }

      v12 += v14;
      a2 += v14;
      v9 -= v14;
      continue;
    }

    if (v9 == 1)
    {
      break;
    }

    v20 = a2[1];
    if (v13 >= 0xA0)
    {
      v21 = 79;
    }

    else
    {
      v21 = 15;
    }

    v22 = 2 * (v21 + v13);
    if ((v20 + (v20 >> 7)) <= 0x9Du)
    {
      v23 = v22 + 1;
    }

    else
    {
      v23 = v22 + 2;
    }

    if ((v20 + (v20 >> 7)) <= 0x9Du)
    {
      v24 = -31;
    }

    else
    {
      v24 = -125;
    }

    if ((((v24 + v20 + (v20 >> 7)) | (v23 << 8)) - 30067) < 0xABAEu)
    {
      goto LABEL_46;
    }

    v25 = ((v24 + v20 + (v20 >> 7)) | (v23 << 8));
    v26 = &__CFFromJIS0208CharMap;
    v27 = (&__CFFromJIS0208CharMap + 15972);
    while (1)
    {
      v28 = &v26[33 * ((0xF83E0F83E0F83E1 * (v27 - v26)) >> 1)];
      v29 = *v28;
      if (v29 <= v25)
      {
        break;
      }

      v27 = v28 - 33;
LABEL_39:
      if (v26 > v27)
      {
        goto LABEL_46;
      }
    }

    if (v29 + 32 <= v25)
    {
      v26 = v28 + 33;
      goto LABEL_39;
    }

    v30 = v28[v25 - v29 + 1];
    if (v30 != 65533 && v30 != 0)
    {
      LOWORD(v13) = v30;
      v14 = 2;
      goto LABEL_9;
    }

LABEL_46:
    v32 = v20 | (v13 << 8);
    if ((v32 + 1064) < 0xFB69u)
    {
      break;
    }

    v33 = &__CFEmojiIndexFromSoftBankSJIS;
    v34 = &unk_183446694;
LABEL_48:
    v35 = &v33[2 * ((v34 - v33) >> 3)];
    v36 = *v35;
    if (v36 > v32)
    {
      v34 = v35 - 2;
      goto LABEL_52;
    }

    if (v36 < v32)
    {
      v33 = v35 + 2;
LABEL_52:
      if (v33 > v34)
      {
        break;
      }

      goto LABEL_48;
    }

    v37 = __CFFromEmojiIndex(v35[1], __src);
    v38 = v37;
    if (!a5)
    {
      goto LABEL_57;
    }

    if (a5 - v11 < v37)
    {
      break;
    }

    memcpy(a4, __src, 2 * v37);
    a4 += v38;
    v11 = *a6;
LABEL_57:
    v11 += v38;
    *a6 = v11;
    v12 += 2;
    a2 += 2;
    v9 -= 2;
  }

  while (v9 > 0);
LABEL_59:
  v39 = *MEMORY[0x1E69E9840];
  return v12;
}

void sub_183227A38(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 96), 8);
  free(0);
  _Unwind_Resume(a1);
}

void sub_183228C74(_Unwind_Exception *a1)
{
  free(v2);
  free(v1);
  _Unwind_Resume(a1);
}

void _systemClockChangedNotification()
{
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"NSSystemClockDidChangeNotification", 0, 0, 1u);
}

uint64_t _NSCFCalendarLogger()
{
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    _NSCFCalendarLogger_cold_1();
  }

  return _NSCFCalendarLogger__logger;
}

unint64_t _CFICULog(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v11 = *MEMORY[0x1E69E9840];
  result = _CFLogvEx3(0, 0, 0, 0, 7, a1, &a9);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __cficu_ucal_getAttribute()
{
  Attribute = ucal_getAttribute();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_getAttribute_cold_1();
  }

  return Attribute;
}

void __cficu_ucal_setMillis()
{
  ucal_setMillis();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_setMillis_cold_1();
  }
}

uint64_t __cficu_ucal_getDayOfWeekType()
{
  DayOfWeekType = ucal_getDayOfWeekType();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_getDayOfWeekType_cold_1();
  }

  return DayOfWeekType;
}

uint64_t __cficu_ucal_getWeekendTransition()
{
  WeekendTransition = ucal_getWeekendTransition();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_getWeekendTransition_cold_1();
  }

  return WeekendTransition;
}

uint64_t __cficu_ucal_isWeekend()
{
  isWeekend = ucal_isWeekend();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_isWeekend_cold_1();
  }

  return isWeekend;
}

uint64_t __cficu_ucal_getLimit()
{
  Limit = ucal_getLimit();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_getLimit_cold_1();
  }

  return Limit;
}

void __cficu_ucal_add()
{
  ucal_add();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_add_cold_1();
  }
}

void __cficu_ucal_roll()
{
  ucal_roll();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_roll_cold_1();
  }
}

uint64_t __cficu_ucal_getFieldDifference()
{
  FieldDifference = ucal_getFieldDifference();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_getFieldDifference_cold_1();
  }

  return FieldDifference;
}

double __cficu_ucal_getNow()
{
  v0 = MEMORY[0x1865E3B60]();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_getNow_cold_1();
  }

  v1 = _NSCFCalendarLogger__logger;
  if (os_log_type_enabled(_NSCFCalendarLogger__logger, OS_LOG_TYPE_DEBUG))
  {
    __cficu_ucal_getNow_cold_2(v1, v0);
  }

  return v0;
}

void sub_18322F524(_Unwind_Exception *a1)
{
  *(v3 - 272) = v1;
  *(v3 - 264) = v2;
  free(*(v3 - 272));
  free(*(v3 - 264));
  _Unwind_Resume(a1);
}

void __NSFastEnumerationMutationHandler(uint64_t a1)
{
  v2 = objc_opt_class();
  Name = class_getName(v2);
  v4 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** Collection <%s: %p> was mutated while being enumerated.", Name, a1);
  v5 = [NSException exceptionWithName:@"NSGenericException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v4), 0];
  objc_exception_throw(v5);
}

void __handleUncaughtException(uint64_t a1)
{
  v17 = *MEMORY[0x1E69E9840];
  if (objectIsKindOfClass(a1, NSException))
  {
    v2 = [a1 name];
    v3 = [a1 reason];
    v4 = [*(a1 + 32) objectForKey:@"callStackReturnAddresses"];
    os_unfair_lock_lock(&__last_exception_backtrace_lock__);
    if (v4)
    {
      v5 = [v4 count];
      __strlcpy_chk();
      if (v5)
      {
        for (i = 0; i != v5; ++i)
        {
          snprintf(__str, 0x44uLL, "%p ", [objc_msgSend(v4 objectAtIndex:{i), "unsignedIntegerValue"}]);
          __strlcat_chk();
        }
      }

      v7 = strrchr(__last_exception_backtrace__, 32);
      if (v7)
      {
        *v7 = 41;
      }

      else
      {
        __strlcat_chk();
      }
    }

    else
    {
      __strlcpy_chk();
    }

    __last_exception_class_name__ = object_getClassName(a1);
    v9 = *(a1 + 8);
    if (_NSIsNSCFConstantString(v9))
    {
      SystemEncoding = CFStringGetSystemEncoding();
      CStringPtr = CFStringGetCStringPtr(v9, SystemEncoding);
    }

    else
    {
      CStringPtr = 0;
    }

    __last_exception_name__ = CStringPtr;
    bzero(&__last_exception_os_log_pack__, 0x400uLL);
    v12 = [*(a1 + 32) objectForKey:@"osLogPack"];
    if (v12)
    {
      [v12 getBytes:&__last_exception_os_log_pack__ length:1024];
    }

    os_unfair_lock_unlock(&__last_exception_backtrace_lock__);
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** Terminating app due to uncaught exception '%@', reason: '%@'\n*** First throw call stack:\n%@\n", v2, v3, [v4 description]);
  }

  else
  {
    ClassName = object_getClassName(a1);
    v8 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** Terminating app due to uncaught exception of class '%s'", ClassName);
  }

  qword_1EA849A30 = [_CFAutoreleasePoolAddObject(0 v8)];
  v13 = strlen(qword_1EA849A30);
  _CFLogSimpleCString(3, qword_1EA849A30, v13);
  if (__uncaughtExceptionHandler && objectIsKindOfClass(a1, NSException))
  {
    __uncaughtExceptionHandler(a1);
  }

  v14 = *MEMORY[0x1E69E9840];
}

id *(*_CFDoExceptionOperation(uint64_t a1, uint64_t (*exception)(void)))(id *a1)
{
  v2 = __exceptionPreprocess;
  if (a1 <= 139)
  {
    if (a1 == 100)
    {
      return __uncaughtExceptionHandler;
    }

    else
    {
      if (a1 != 101)
      {
        return 0;
      }

      v2 = 0;
      __uncaughtExceptionHandler = exception;
    }
  }

  else if (a1 != 160)
  {
    if (a1 == 161)
    {
      if (exception)
      {
        v3 = exception;
      }

      else
      {
        v3 = __exceptionPreprocess;
      }

      objc_setExceptionPreprocessor(v3);
    }

    else if (a1 == 140)
    {
      objc_exception_throw(exception);
    }

    return 0;
  }

  return v2;
}

void sub_183234318(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    __NSMethodFrameArgInfoDestroy(*v14);
    __NSMethodFrameArgInfoDestroy(v14[1]);
    free(v14);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void typeStringRelease(int a1, char *__s)
{
  strlen(__s);
  if ((_dyld_is_memory_immutable() & 1) == 0)
  {

    free(__s);
  }
}

const char *__NSMS5(const char *result)
{
  if (result)
  {
    v1 = result;
    v2 = __NSMS5(*result);
    v3 = __NSMS5(*(v1 + 1)) + v2;
    v4 = strlen(v1 + 37);
    return (v3 + CFStringHashCString(v1 + 37, v4));
  }

  return result;
}

void __NSMS7(__CFString *a1, uint64_t *a2, uint64_t a3)
{
  if (!a3)
  {
    if (*(a2 + 36))
    {
      CFStringAppendFormat(a1, 0, @"type encoding (%c) '%s'\n", *(a2 + 36), a2 + 37);
      goto LABEL_10;
    }

LABEL_39:
    if ((*(a2 + 17) & 0x2000) != 0)
    {
      CFStringAppendFormat(a1, 0, @"class '%s'\n", a2 + 37);
    }

    else
    {
      CFStringAppendFormat(a1, 0, @"conforms to protocol '%s'\n", a2 + 37);
    }

    goto LABEL_104;
  }

  v6 = a3;
  do
  {
    CFStringAppendFormat(a1, 0, @"    ");
    --v6;
  }

  while (v6);
  if (!*(a2 + 36))
  {
    goto LABEL_39;
  }

  CFStringAppendFormat(a1, 0, @"type encoding (%c) '%s'\n", *(a2 + 36), a2 + 37);
  v7 = a3;
  do
  {
    CFStringAppendFormat(a1, 0, @"    ");
    --v7;
  }

  while (v7);
LABEL_10:
  v8 = "isSigned";
  v9 = *(a2 + 17);
  if ((*(a2 + 17) & 0x100) == 0)
  {
    v8 = "";
  }

  v10 = "";
  if ((*(a2 + 17) & 0x100) != 0)
  {
    v10 = ", ";
    if ((v9 & 0x3E00) == 0 && (v9 & 0x4000) == 0)
    {
      v10 = "";
    }
  }

  v11 = "isFloat";
  if ((v9 & 0x200) == 0)
  {
    v11 = "";
  }

  v12 = "";
  if ((v9 & 0x200) != 0)
  {
    v12 = ", ";
    if ((v9 & 0x3C00) == 0 && (v9 & 0x4000) == 0)
    {
      v12 = "";
    }
  }

  v13 = "isStruct";
  if ((v9 & 0x400) == 0)
  {
    v13 = "";
  }

  v14 = "";
  if ((v9 & 0x400) != 0)
  {
    v14 = ", ";
    if ((v9 & 0x3800) == 0 && (v9 & 0x4000) == 0)
    {
      v14 = "";
    }
  }

  v15 = "isArray";
  if ((v9 & 0x800) == 0)
  {
    v15 = "";
  }

  v16 = "";
  if ((v9 & 0x800) != 0)
  {
    v16 = ", ";
    if ((v9 & 0x3000) == 0 && (v9 & 0x4000) == 0)
    {
      v16 = "";
    }
  }

  v17 = "isPointer";
  if ((v9 & 0x1000) != 0)
  {
    if ((v9 & 0x2000) != 0)
    {
      v18 = "isObject, isBlock";
      if (v9 >= 0)
      {
        v18 = "isObject";
      }

      v19 = ", ";
      goto LABEL_50;
    }

    if ((v9 & 0x4000) != 0)
    {
      v19 = ", ";
    }

    else
    {
      v19 = "";
    }
  }

  else
  {
    v17 = "";
    v18 = "isObject, isBlock";
    if (v9 >= 0)
    {
      v18 = "isObject";
    }

    v19 = "";
    if ((v9 & 0x2000) != 0)
    {
      goto LABEL_50;
    }
  }

  v18 = "";
LABEL_50:
  if ((~v9 & 0x6000) != 0)
  {
    v20 = "";
  }

  else
  {
    v20 = ", ";
  }

  if ((v9 & 0x4000) != 0)
  {
    v21 = "isCString";
  }

  else
  {
    v21 = "";
  }

  CFStringAppendFormat(a1, 0, @"flags {%s%s%s%s%s%s%s%s%s%s%s%s%s}\n", v8, v10, v11, v12, v13, v14, v15, v16, v17, v19, v18, v20, v21);
  v22 = "out";
  v23 = *(a2 + 17);
  if ((v23 & 2) == 0)
  {
    v22 = 0;
  }

  if (v23)
  {
    v22 = "in";
  }

  if ((~v23 & 3) != 0)
  {
    v24 = v22;
  }

  else
  {
    v24 = "inout";
  }

  if (a3)
  {
    v25 = a3;
    do
    {
      CFStringAppendFormat(a1, 0, @"    ");
      --v25;
    }

    while (v25);
    v23 = *(a2 + 17);
  }

  if (v24)
  {
    v26 = v24;
  }

  else
  {
    v26 = "";
  }

  if (v24)
  {
    v27 = ", ";
    if ((v23 & 0x1C) == 0 && (v23 & 0x20) == 0)
    {
      v27 = "";
    }
  }

  else
  {
    v27 = "";
  }

  v28 = "bycopy";
  if ((v23 & 4) == 0)
  {
    v28 = "";
  }

  v29 = "";
  if ((v23 & 4) != 0)
  {
    v29 = ", ";
    if ((v23 & 0x18) == 0 && (v23 & 0x20) == 0)
    {
      v29 = "";
    }
  }

  v30 = "byref";
  if ((v23 & 8) != 0)
  {
    v32 = ", ";
    if ((v23 & 0x10) != 0)
    {
      v31 = "const";
    }

    else
    {
      if ((v23 & 0x20) == 0)
      {
        v32 = "";
      }

      v31 = "";
    }
  }

  else
  {
    v30 = "";
    v31 = "const";
    if ((v23 & 0x10) == 0)
    {
      v31 = "";
    }

    v32 = "";
  }

  if ((~v23 & 0x30) != 0)
  {
    v33 = "";
  }

  else
  {
    v33 = ", ";
  }

  if ((v23 & 0x20) != 0)
  {
    v34 = "oneway";
  }

  else
  {
    v34 = "";
  }

  CFStringAppendFormat(a1, 0, @"modifiers {%s%s%s%s%s%s%s%s%s}\n", v26, v27, v28, v29, v30, v32, v31, v33, v34);
  if (a3)
  {
    v35 = a3;
    do
    {
      CFStringAppendFormat(a1, 0, @"    ");
      --v35;
    }

    while (v35);
  }

  CFStringAppendFormat(a1, 0, @"frame {offset = %d, offset adjust = %d, size = %d, size adjust = %d}\n", *(a2 + 7), *(a2 + 32), *(a2 + 6), *(a2 + 33));
  if (a3)
  {
    v36 = a3;
    do
    {
      CFStringAppendFormat(a1, 0, @"    ");
      --v36;
    }

    while (v36);
  }

  CFStringAppendFormat(a1, 0, @"memory {offset = %d, size = %d}\n", *(a2 + 5), *(a2 + 4));
LABEL_104:
  for (i = *a2; i; i = *(i + 8))
  {
    __NSMS7(a1, i, a3 + 1);
  }
}

void *_NSMessageBuilder(uint64_t a1, uint64_t a2)
{
  v4 = __CFLookUpClass("__NSMessageBuilder");
  result = class_createInstance(v4, 0);
  result[1] = a1;
  result[2] = a2;
  return result;
}

_BYTE **setAndAdvance(_BYTE **result, unint64_t a2, char a3)
{
  v3 = *result;
  if (*result >= a2)
  {
    setAndAdvance_cold_1();
  }

  *result = v3 + 1;
  *v3 = a3;
  return result;
}

uint64_t __NSMFASetRegisterOffsetsForHFA_arm64(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (!a1)
  {
    return 0;
  }

  v5 = a1;
  v6 = 0;
  do
  {
    v7 = *(v5 + 34);
    v8 = *a3;
    *(v5 + 28) = a2 + 16 * *a3;
    if ((v7 & 0xC00) != 0)
    {
      v9 = __NSMFASetRegisterOffsetsForHFA_arm64(*v5, a2, a3);
      v10 = 0;
    }

    else
    {
      v10 = *(v5 + 16) - 16;
      *a3 = v8 + 1;
      v9 = 16;
    }

    *(v5 + 24) = v9;
    *(v5 + 33) = v10;
    v6 += v9;
    v5 = *(v5 + 8);
  }

  while (v5);
  return v6;
}

unint64_t _NSMS3StackAlignedOffset_arm64(uint64_t a1, uint64_t a2)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  __NSGetSizeAndAlignment((a1 + 37), 0, v6, 0, 1, 0, 1uLL);
  v3 = v6[0];
  if (v6[0] <= 1uLL)
  {
    v3 = 1;
  }

  v4 = *MEMORY[0x1E69E9840];
  return (a2 + v3 - 1) / v3 * v3;
}

BOOL __CFDateIntervalEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (*(a1 + 24) == *(a2 + 24))
  {
    return CFEqual(*(a1 + 16), *(a2 + 16)) != 0;
  }

  return 0;
}

uint64_t __CFDateIntervalHash(uint64_t a1)
{
  v6[2] = *MEMORY[0x1E69E9840];
  AbsoluteTime = CFDateGetAbsoluteTime(*(a1 + 16));
  v3 = AbsoluteTime + *(a1 + 24);
  *v6 = AbsoluteTime;
  *&v6[1] = v3;
  result = CFHashBytes(v6, 16);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CFDateIntervalCreate(__objc2_class **Default, const void *a2, double a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (!Default)
  {
    Default = CFAllocatorGetDefault();
  }

  result = _CFRuntimeCreateInstance(Default, 0x47uLL, 16, 0, a6, a7, a8, a9);
  if (result)
  {
    v12 = result;
    *(result + 16) = CFRetain(a2);
    *(v12 + 24) = a3;
    return v12;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t CFDateIntervalCreateWithEndDate(__objc2_class **a1, const __CFDate *a2, CFDateRef theDate)
{
  AbsoluteTime = CFDateGetAbsoluteTime(theDate);
  v12 = AbsoluteTime - CFDateGetAbsoluteTime(a2);

  return CFDateIntervalCreate(a1, a2, v12, v6, v7, v8, v9, v10, v11);
}

CFDateRef CFDateIntervalCopyEndDate(uint64_t a1)
{
  v1 = CFDateGetAbsoluteTime(*(a1 + 16)) + *(a1 + 24);

  return CFDateCreate(&__kCFAllocatorSystemDefault, v1);
}

CFComparisonResult CFDateIntervalCompare(uint64_t a1, uint64_t a2)
{
  result = CFDateCompare(*(a1 + 16), *(a2 + 16), 0);
  if (result == kCFCompareEqualTo)
  {
    v5 = *(a1 + 24);
    v6 = *(a2 + 24);
    if (v5 >= v6)
    {
      return (v5 > v6);
    }

    else
    {
      return -1;
    }
  }

  return result;
}

BOOL CFDateIntervalIntersectsDateInterval(uint64_t a1, uint64_t a2)
{
  AbsoluteTime = CFDateGetAbsoluteTime(*(a2 + 16));
  v5 = CFDateCreate(&__kCFAllocatorSystemDefault, AbsoluteTime + *(a2 + 24));
  v6 = CFDateGetAbsoluteTime(*(a1 + 16));
  v7 = CFDateCreate(&__kCFAllocatorSystemDefault, v6 + *(a1 + 24));
  v8 = CFDateGetAbsoluteTime(*(a2 + 16));
  v9 = CFDateGetAbsoluteTime(*(a1 + 16));
  v10 = v8 < v9 || v8 > v9 + *(a1 + 24);
  if (v10 && ((v11 = CFDateGetAbsoluteTime(v5), v12 = CFDateGetAbsoluteTime(*(a1 + 16)), v11 >= v12) ? (v13 = v11 > v12 + *(a1 + 24)) : (v13 = 1), v13 && ((v14 = CFDateGetAbsoluteTime(*(a1 + 16)), v15 = CFDateGetAbsoluteTime(*(a2 + 16)), v14 < v15) || v14 > v15 + *(a2 + 24))))
  {
    v18 = CFDateGetAbsoluteTime(v7);
    v19 = CFDateGetAbsoluteTime(*(a2 + 16));
    v16 = v18 <= v19 + *(a2 + 24) && v18 >= v19;
  }

  else
  {
    v16 = 1;
  }

  CFRelease(v5);
  CFRelease(v7);
  return v16;
}

BOOL CFDateIntervalContainsDate(uint64_t a1, CFDateRef theDate)
{
  AbsoluteTime = CFDateGetAbsoluteTime(theDate);
  v4 = CFDateGetAbsoluteTime(*(a1 + 16));
  return AbsoluteTime <= v4 + *(a1 + 24) && AbsoluteTime >= v4;
}

CFTypeRef CFDateIntervalCreateIntersectionWithDateInterval(__objc2_class **a1, CFDateRef *cf1, CFDateRef *cf2)
{
  if (CFEqual(cf1, cf2))
  {

    return CFRetain(cf1);
  }

  else if (CFDateIntervalIntersectsDateInterval(cf1, cf2))
  {
    AbsoluteTime = CFDateGetAbsoluteTime(cf1[2]);
    v8 = AbsoluteTime + *(cf1 + 3);
    v9 = CFDateGetAbsoluteTime(cf2[2]);
    if (v9 >= AbsoluteTime)
    {
      v10 = cf2;
    }

    else
    {
      v10 = cf1;
    }

    v11 = v10[2];
    if (v9 + *(cf2 + 3) < v8)
    {
      v12 = v9 + *(cf2 + 3);
    }

    else
    {
      v12 = v8;
    }

    v19 = v12 - CFDateGetAbsoluteTime(v10[2]);

    return CFDateIntervalCreate(a1, v11, v19, v13, v14, v15, v16, v17, v18);
  }

  else
  {
    return 0;
  }
}

size_t _CFPrefsCreatePreferencesDirectory(const char *a1)
{
  result = strlen(a1);
  if (!result)
  {
    return result;
  }

  v3 = &a1[result];
  v4 = 0xFFFFFFFFLL;
  do
  {
    while (1)
    {
      if (*v3 != 47)
      {
        goto LABEL_6;
      }

      *v3 = 0;
      v5 = open(a1, 1074790400);
      v4 = v5;
      *v3 = 47;
      if (v5 != -1)
      {
        break;
      }

      --v3;
      if (*__error() != 2 || v3 == a1)
      {
        return 0;
      }
    }

    if ((v5 & 0x80000000) == 0)
    {
      v7 = (v3 + 1);
      goto LABEL_18;
    }

LABEL_6:
    --v3;
  }

  while (v3 != a1);
  if ((v4 & 0x80000000) != 0)
  {
    return 0;
  }

  v7 = 0;
LABEL_18:
  v8 = _safe_recursive_mkdir_chown(v7, v4);
  v9 = *__error();
  close(v4);
  *__error() = v9;
  return v8 == 0;
}

uint64_t _safe_recursive_mkdir_chown(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  v12 = v3;
  v13 = v2;
  v29 = *MEMORY[0x1E69E9840];
  for (i = v2; ; ++i)
  {
    v15 = *i;
    if (!*i || v15 == 47)
    {
      break;
    }
  }

  *i = 0;
  v16 = openat(v3, v2, 0x100000);
  v17 = v16;
  if ((v16 & 0x80000000) != 0)
  {
    if (v16 == -1)
    {
      if (*__error() != 2)
      {
        goto LABEL_33;
      }

      goto LABEL_26;
    }
  }

  else
  {
    memset(&v28, 0, 512);
    if (fstatfs(v16, &v28) != -1 && (v28.f_flags & 1) != 0)
    {
      memset(&v27, 0, 512);
      if (fstatfs(v12, &v27) != -1 && (v27.f_flags & 0x20) != 0)
      {
        close(v17);
LABEL_26:
        if (mkdirat(v12, v13, v11) != -1)
        {
          v23 = openat(v12, v13, 1048832);
          if (v23 != -1)
          {
            v17 = v23;
            if (fchown(v23, v9, v7) != -1 || (v24 = *__error(), memset(&v28, 0, 144), !fstat(v17, &v28)) && v28.f_bfree == __PAIR64__(v7, v9))
            {
              v18 = 1;
              goto LABEL_13;
            }

            close(v17);
            unlinkat(v12, v13, 128);
            *__error() = v24;
          }
        }

LABEL_33:
        v20 = 0xFFFFFFFFLL;
        goto LABEL_34;
      }
    }
  }

  v18 = 0;
LABEL_13:
  *i = v15;
  while (v15 == 47)
  {
    v19 = *++i;
    LOBYTE(v15) = v19;
  }

  if (v15)
  {
    v20 = _safe_recursive_mkdir_chown(i, v17, v11, v9, v7, v5);
    v21 = *__error();
    close(v17);
    v22 = v18 ^ 1;
    if (v20 != -1)
    {
      v22 = 1;
    }

    if ((v22 & 1) == 0)
    {
      unlinkat(v12, v13, 128);
    }

    *__error() = v21;
  }

  else if (v5)
  {
    v20 = 0;
    *v5 = v17;
  }

  else
  {
    close(v17);
    v20 = 0;
  }

LABEL_34:
  v25 = *MEMORY[0x1E69E9840];
  return v20;
}

__CFArray *_CFPreferencesCopyApplicationList(const __CFString *a1, int a2)
{
  v2 = a2;
  PreferencesDirectoryURLForTriplet = _CFPrefsCreatePreferencesDirectoryURLForTriplet(a1, a2, 0);
  if (!PreferencesDirectoryURLForTriplet)
  {
    return 0;
  }

  v4 = PreferencesDirectoryURLForTriplet;
  v5 = CFURLCopyAbsoluteURL(PreferencesDirectoryURLForTriplet);
  CFRelease(v4);
  if (v2)
  {
    v6 = _CFXPreferencesGetByHostIdentifierString();
    v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @".%@.plist", v6);
  }

  else
  {
    v7 = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, ".plist", 0x600u);
  }

  v9 = v7;
  Length = CFStringGetLength(v7);
  v11 = _CFCreateContentsOfDirectory(&__kCFAllocatorSystemDefault, 0);
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  cf = v5;
  if (v11)
  {
    MutableCopy = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v11);
    CFRelease(v11);
  }

  else
  {
    MutableCopy = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  }

  Count = CFArrayGetCount(MutableCopy);
  if (Count >= 1)
  {
    v14 = Count + 1;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, v14 - 2);
      v16 = CFURLCopyFileSystemPath(ValueAtIndex, kCFURLPOSIXPathStyle);
      if (CFStringHasSuffix(v16, v9))
      {
        v21.length = CFStringGetLength(v16) - Length;
        v21.location = 0;
        v17 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v16, v21);
        if (CFEqual(v17, @".GlobalPreferences"))
        {
          v18 = @"kCFPreferencesAnyApplication";
        }

        else
        {
          v18 = v17;
        }

        CFArrayAppendValue(Mutable, v18);
        CFRelease(v17);
      }

      CFRelease(v16);
      --v14;
    }

    while (v14 > 1);
  }

  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

  CFRelease(cf);
  CFRelease(v9);
  return Mutable;
}

CFURLRef _CFPreferencesCopyManagedPreferencesContainerURL()
{
  v10[1] = *MEMORY[0x1E69E9840];
  v10[0] = 1;
  v0 = container_system_group_path_for_identifier();
  if (v0)
  {
    v1 = v0;
    v2 = strlen(v0);
    v3 = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, v1, v2, 1u);
    if (v3)
    {
      v4 = v3;
      v5 = CFURLCreateWithFileSystemPathRelativeToBase(&__kCFAllocatorSystemDefault, @"Library/Managed Preferences/", kCFURLPOSIXPathStyle, 1u, v3);
      CFRelease(v4);
      if (v5)
      {
LABEL_7:
        free(v1);
        goto LABEL_11;
      }

      v6 = _CFPrefsDaemonLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        _CFPreferencesCopyManagedPreferencesContainerURL_cold_1();
      }
    }

    v5 = 0;
    goto LABEL_7;
  }

  v7 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_FAULT))
  {
    _CFPreferencesCopyManagedPreferencesContainerURL_cold_2(v10);
  }

  v5 = 0;
LABEL_11:
  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

CFStringRef _CFPreferencesCopyPathForManagedDomain(__CFString *a1, __CFString *a2, int a3)
{
  v9 = *MEMORY[0x1E69E9840];
  bzero(buffer, 0x402uLL);
  if (!_CFPrefsGetPathForManagedBundleID(a1, a2, a3 != 0, buffer) || (result = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, buffer)) == 0)
  {
    result = 0;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFPreferencesUIDForUsername(const void *a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 4294967195;
  os_unfair_lock_lock(&_cfprefsUsernameLock);
  if (!_cfprefsUsernameToUid || !CFDictionaryGetValueIfPresent(_cfprefsUsernameToUid, a1, v4))
  {
    v4[0] = 4294967195;
  }

  os_unfair_lock_unlock(&_cfprefsUsernameLock);
  result = LODWORD(v4[0]);
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void __CFZombifyNSObject()
{
  v0 = objc_lookUpClass("NSObject");
  InstanceMethod = class_getInstanceMethod(v0, sel_dealloc);
  v2 = class_getInstanceMethod(v0, sel___dealloc_zombie);

  method_exchangeImplementations(InstanceMethod, v2);
}

void __CFOAInitializeNSObject()
{
  v0 = objc_lookUpClass("NSObject");
  InstanceMethod = class_getInstanceMethod(v0, sel_retain);
  v2 = class_getInstanceMethod(v0, sel___retain_OA);
  method_exchangeImplementations(InstanceMethod, v2);
  v3 = class_getInstanceMethod(v0, sel_release);
  v4 = class_getInstanceMethod(v0, sel___release_OA);
  method_exchangeImplementations(v3, v4);
  v5 = class_getInstanceMethod(v0, sel_autorelease);
  v6 = class_getInstanceMethod(v0, sel___autorelease_OA);
  method_exchangeImplementations(v5, v6);
  v7 = class_getInstanceMethod(v0, sel__tryRetain);
  v8 = class_getInstanceMethod(v0, sel____tryRetain_OA);
  method_exchangeImplementations(v7, v8);
  Class = object_getClass(v0);
  v10 = class_getInstanceMethod(Class, sel_allocWithZone_);
  v11 = class_getInstanceMethod(Class, sel___allocWithZone_OA_);

  method_exchangeImplementations(v10, v11);
}

void couldNotInstantiate(objc_class *a1)
{
  Name = class_getName(a1);
  v2 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** [NSObject allocWithZone:]: attempt to allocate object of class '%s' failed", Name);
  v3 = [NSException exceptionWithName:@"NSMallocException" reason:_CFAutoreleasePoolAddObject(v2 userInfo:v2), 0];
  objc_exception_throw(v3);
}

uint64_t _objc_getTaggedPointerTag_2(uint64_t a1)
{
  v1 = 0;
  v2 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v2 = 0;
  }

  v3 = v2 ^ a1;
  do
  {
    if ((v3 & 7) == *(MEMORY[0x1E69E5900] + v1))
    {
      break;
    }

    ++v1;
  }

  while (v1 != 7);
  v4 = v1 | v3;
  v5 = v1 & 7;
  v6 = (v4 >> 55) + 8;
  if (v5 == 7)
  {
    return v6;
  }

  else
  {
    return v5;
  }
}

uint64_t _NSIsNSAttributedString()
{
  if (_NSAttributedStringClass || (Class = objc_getClass("NSAttributedString"), (_NSAttributedStringClass = Class) != 0))
  {
    LOBYTE(Class) = objc_opt_isKindOfClass();
  }

  return Class & 1;
}

unint64_t makeAtom(unint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least())
  {
    result = 0;
  }

  else
  {
    makeAtom_cold_1(a1, v4);
    result = v4[0];
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t getAtomTarget(uint64_t a1)
{
  v4[1] = *MEMORY[0x1E69E9840];
  if (dyld_program_sdk_at_least())
  {
    result = 0;
  }

  else
  {
    getAtomTarget_cold_1(a1, v4);
    result = v4[0];
  }

  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFFullMethodName(objc_class *a1, objc_class *a2, const char *a3)
{
  cStr[1] = *MEMORY[0x1E69E9840];
  cStr[0] = 0;
  if (a2 == a1)
  {
    v4 = 43;
  }

  else
  {
    v4 = 45;
  }

  if (a1)
  {
    Name = class_getName(a1);
    if (a3)
    {
LABEL_6:
      v6 = sel_getName(a3);
      goto LABEL_9;
    }
  }

  else
  {
    Name = "(null class)";
    if (a3)
    {
      goto LABEL_6;
    }
  }

  v6 = "(null selector)";
LABEL_9:
  asprintf(cStr, "%c[%s %s]", v4, Name, v6);
  if (cStr[0])
  {
    v7 = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, cStr[0], 0x8000100u);
    v8 = _CFAutoreleasePoolAddObject(v7, v7);
    free(cStr[0]);
  }

  else
  {
    v8 = 0;
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_183248298(_Unwind_Exception *a1)
{
  free(v2);
  free(v1);
  _Unwind_Resume(a1);
}

uint64_t _compare_clumpiness_1(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a1 > *a2;
  }
}

void *__mset_enumerateObjectsWithOptionsUsingBlock_block_invoke(void *result, uint64_t a2)
{
  v2 = *(result[5] + 8 * a2);
  if (v2)
  {
    v3 = v2 == &___NSSetM_DeletedMarker;
  }

  else
  {
    v3 = 1;
  }

  if (!v3)
  {
    v4 = result;
    v5 = _CFAutoreleasePoolPush();
    __NSSET_IS_CALLING_OUT_TO_A_BLOCK__(v4[4]);

    return _CFAutoreleasePoolPop(v5);
  }

  return result;
}

CFStringRef __CFListFormatterCopyDescription(const void *a1)
{
  if (!a1)
  {
    __CFListFormatterCopyDescription_cold_1();
  }

  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CFListFormatter %p>[%p]", a1, v3);
}

void _dayChangedNotification(int a1, int a2, CFTypeRef cf2)
{
  v3 = CFEqual(@"com.apple.system.timezone", cf2);

  __postAndResetMidnight(1, v3);
}

void sub_18324E808(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18324EBDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _CFCalendarGetUnitsFromDateFormat(const __CFString *a1)
{
  Length = CFStringGetLength(a1);
  if (Length < 1)
  {
    return 0;
  }

  v3 = Length;
  v4 = 0;
  for (i = 0; i != v3; ++i)
  {
    CFStringGetCharacterAtIndex(a1, i);
    udat_patternCharToDateFormatField();
    v6 = udat_toCalendarDateField();
    if (v6 > 0x18)
    {
      v7 = 0;
    }

    else
    {
      v7 = qword_183446AB0[v6];
    }

    v4 |= v7;
  }

  return v4;
}

void _systemTimeZoneChangedNotification()
{
  +[NSLocale _resetCurrent];
  v0 = +[NSTimeZone _resetSystemTimeZone];
  LocalCenter = CFNotificationCenterGetLocalCenter();

  CFNotificationCenterPostNotification(LocalCenter, @"kCFTimeZoneSystemTimeZoneDidChangeNotification", v0, 0, 1u);
}

BOOL _CFIsMatchingLibrary(char *a1, const char *a2)
{
  v3 = a1;
  v4 = strrchr(a1, 47);
  if (v4)
  {
    v3 = v4 + 1;
  }

  v5 = strlen(a2);
  return strncmp(v3, a2, v5) == 0;
}

void *_CFGetHandleForLoadedLibrary(const char *a1)
{
  v2 = _dyld_image_count();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = 0;
  while (1)
  {
    image_name = _dyld_get_image_name(v4);
    if (_CFIsMatchingLibrary(image_name, a1))
    {
      break;
    }

    if (v3 == ++v4)
    {
      return 0;
    }
  }

  if (!image_name)
  {
    return 0;
  }

  result = dlopen(image_name, 21);
  if (!result)
  {
    _CFGetHandleForLoadedLibrary_cold_1();
  }

  return result;
}

void CFTimeZoneSetDefault(CFTimeZoneRef tz)
{
  v2 = _CFAutoreleasePoolPush();
  [NSTimeZone setDefaultTimeZone:tz];

  _CFAutoreleasePoolPop(v2);
}

CFArrayRef CFTimeZoneCopyKnownNames(void)
{
  v0 = _CFAutoreleasePoolPush();
  v1 = +[NSTimeZone knownTimeZoneNames];
  if (v1)
  {
    v2 = CFRetain(v1);
  }

  else
  {
    v2 = 0;
  }

  _CFAutoreleasePoolPop(v0);
  return v2;
}

CFDictionaryRef CFTimeZoneCopyAbbreviationDictionary(void)
{
  v0 = _CFAutoreleasePoolPush();
  v1 = +[NSTimeZone abbreviationDictionary];
  if (v1)
  {
    v2 = CFRetain(v1);
  }

  else
  {
    v2 = 0;
  }

  _CFAutoreleasePoolPop(v0);
  return v2;
}

void CFTimeZoneSetAbbreviationDictionary(CFDictionaryRef dict)
{
  v2 = _CFAutoreleasePoolPush();
  [NSTimeZone setAbbreviationDictionary:dict];

  _CFAutoreleasePoolPop(v2);
}

CFTimeZoneRef CFTimeZoneCreate(CFAllocatorRef allocator, CFStringRef name, CFDataRef data)
{
  v5 = _CFAutoreleasePoolPush();
  v6 = [[NSTimeZone alloc] initWithName:name data:data];
  _CFAutoreleasePoolPop(v5);
  return v6;
}

CFStringRef CFTimeZoneCopyAbbreviation(CFTimeZoneRef tz, CFAbsoluteTime at)
{
  v4 = _CFAutoreleasePoolPush();
  v5 = [(__CFTimeZone *)tz abbreviationForDate:[NSDate dateWithTimeIntervalSinceReferenceDate:at]];
  if (v5)
  {
    v6 = CFRetain(v5);
  }

  else
  {
    v6 = 0;
  }

  _CFAutoreleasePoolPop(v4);
  return v6;
}

Boolean CFTimeZoneIsDaylightSavingTime(CFTimeZoneRef tz, CFAbsoluteTime at)
{
  v4 = _CFAutoreleasePoolPush();
  LOBYTE(tz) = [(__CFTimeZone *)tz isDaylightSavingTimeForDate:[NSDate dateWithTimeIntervalSinceReferenceDate:at]];
  _CFAutoreleasePoolPop(v4);
  return tz;
}

CFTimeInterval CFTimeZoneGetDaylightSavingTimeOffset(CFTimeZoneRef tz, CFAbsoluteTime at)
{
  v4 = _CFAutoreleasePoolPush();
  [(__CFTimeZone *)tz daylightSavingTimeOffsetForDate:[NSDate dateWithTimeIntervalSinceReferenceDate:at]];
  v6 = v5;
  _CFAutoreleasePoolPop(v4);
  return v6;
}

CFAbsoluteTime CFTimeZoneGetNextDaylightSavingTimeTransition(CFTimeZoneRef tz, CFAbsoluteTime at)
{
  v4 = _CFAutoreleasePoolPush();
  v5 = [(__CFTimeZone *)tz nextDaylightSavingTimeTransitionAfterDate:[NSDate dateWithTimeIntervalSinceReferenceDate:at]];
  if (v5)
  {
    [v5 timeIntervalSinceReferenceDate];
    v7 = v6;
  }

  else
  {
    v7 = 0.0;
  }

  _CFAutoreleasePoolPop(v4);
  return v7;
}

CFStringRef CFTimeZoneCopyLocalizedName(CFTimeZoneRef tz, CFTimeZoneNameStyle style, CFLocaleRef locale)
{
  v6 = _CFAutoreleasePoolPush();
  v7 = [(__CFTimeZone *)tz localizedName:style locale:locale];
  if (v7)
  {
    v8 = CFRetain(v7);
  }

  else
  {
    v8 = 0;
  }

  _CFAutoreleasePoolPop(v6);
  return v8;
}

const char *__CFStringEncodingGetICUName(int a1)
{
  v6 = *MEMORY[0x1E69E9840];
  if (a1 == 2576)
  {
    result = "IMAP-mailbox-name";
  }

  else if ((a1 & 0xF00) == 0x100 || (WindowsCodePage = __CFStringEncodingGetWindowsCodePage(a1)) == 0 || snprintf(__str, 0x3CuLL, "windows-%d", WindowsCodePage) > 59 || (result = ucnv_getAlias()) == 0)
  {
    if (__CFStringEncodingGetCanonicalName(a1, __str, 60))
    {
      result = ucnv_getAlias();
    }

    else
    {
      result = 0;
    }
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFStringEncodingGetFromICUName(const char *a1)
{
  __endptr[1] = *MEMORY[0x1E69E9840];
  __endptr[0] = 0;
  if (strncasecmp_l(a1, "windows-", 8uLL, 0) || (v13 = strtol(a1 + 8, __endptr, 10)) == 0 || *__endptr[0])
  {
    if (!ucnv_countAliases())
    {
      goto LABEL_13;
    }

    StandardName = ucnv_getStandardName();
    if (StandardName)
    {
      v3 = StandardName;
      if (!strncasecmp_l(StandardName, "windows-", 8uLL, 0))
      {
        v15 = strtol(v3 + 8, __endptr, 10);
        if (v15)
        {
          if (!*__endptr[0])
          {
            result = __CFStringEncodingGetFromWindowsCodePage(v15);
            goto LABEL_14;
          }
        }
      }

      v4 = strlen(v3);
      if (strncasecmp_l(a1, v3, v4, 0))
      {
        result = __CFStringEncodingGetFromCanonicalName(v3);
        if (result != -1)
        {
          goto LABEL_14;
        }
      }
    }

    v6 = ucnv_getStandardName();
    if (v6)
    {
      v7 = v6;
      v8 = strlen(v6);
      if (strncasecmp_l(a1, v7, v8, 0))
      {
        result = __CFStringEncodingGetFromCanonicalName(v7);
        if (result != -1)
        {
          goto LABEL_14;
        }
      }
    }

    v9 = ucnv_getStandardName();
    if (v9 && (v10 = v9, v11 = strlen(v9), strncasecmp_l(a1, v10, v11, 0)))
    {
      result = __CFStringEncodingGetFromCanonicalName(v10);
    }

    else
    {
LABEL_13:
      result = 0xFFFFFFFFLL;
    }

LABEL_14:
    v12 = *MEMORY[0x1E69E9840];
    return result;
  }

  v14 = *MEMORY[0x1E69E9840];

  return __CFStringEncodingGetFromWindowsCodePage(v13);
}

unint64_t __CFStringEncodingICUToBytes(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, void *a8)
{
  v24 = *MEMORY[0x1E69E9840];
  if ((a2 & 0xFF0000) == 0)
  {
    goto LABEL_6;
  }

  Typed = _CFGetTSD(7u);
  if (!Typed)
  {
    Typed = CFAllocatorAllocateTyped(0, 16, 0x1080040EF48E34ELL, 0);
    *Typed = 0;
    Typed[1] = 0;
    _CFSetTSD(7u, Typed, __CFICUThreadDataDestructor);
  }

  if (*Typed <= (BYTE2(a2) - 1) || (v16 = *(Typed[1] + 8 * (BYTE2(a2) - 1))) == 0)
  {
LABEL_6:
    v17 = ucnv_open();
    if (!v17)
    {
      result = 3;
      goto LABEL_23;
    }

    v16 = v17;
    v18 = HIBYTE(a2);
    if ((a2 & 0xFF000001) == 1)
    {
      v18 = 63;
    }

    if (v18)
    {
      ucnv_setSubstChars();
    }

    else
    {
      ucnv_setFromUCallBack();
    }
  }

  v20 = a3 + 2 * a4;
  if (a7)
  {
    ucnv_fromUnicode();
    if (a8)
    {
      *a8 = a6 - a6;
    }
  }

  else
  {
    while (a3 < v20)
    {
      ucnv_fromUnicode();
    }

    if (a8)
    {
      *a8 = 0;
    }
  }

  if (a5)
  {
    *a5 = (a3 - a3) >> 1;
  }

  result = __CFStringEncodingConverterReleaseICUConverter(v16, a2, 0);
LABEL_23:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t __CFStringEncodingConverterReleaseICUConverter(uint64_t a1, unsigned int a2, uint64_t a3)
{
  v3 = BYTE2(a2);
  if (a3 != 1 && ((a2 & 0x1000) != 0 || a3 == 2 && (a2 & 0x2000) != 0))
  {
    if ((a2 & 0xFF0000) != 0)
    {
      LODWORD(v7) = HIWORD(a2);
      return v7 << 16;
    }

    Typed = _CFGetTSD(7u);
    if (!Typed)
    {
      Typed = CFAllocatorAllocateTyped(0, 16, 0x1080040EF48E34ELL, 0);
      *Typed = 0;
      *(Typed + 1) = 0;
      _CFSetTSD(7u, Typed, __CFICUThreadDataDestructor);
    }

    v9 = *(Typed + 1);
    if (v9)
    {
      LODWORD(v7) = Typed[1];
      v10 = *Typed;
      if (v7 >= v10)
      {
        if (!*Typed)
        {
          v10 = 0;
LABEL_30:
          v13 = v10 + 10;
          v14 = 8 * (v10 + 10);
          v9 = CFAllocatorAllocateTyped(0, v14, 0x2004093837F09, 0);
          bzero(v9, v14);
          memcpy(v9, *(Typed + 1), 8 * *Typed);
          CFAllocatorDeallocate(0, *(Typed + 1));
          *(Typed + 1) = v9;
          LOBYTE(v7) = *Typed;
          LOBYTE(v10) = v13;
          *Typed = v13;
          goto LABEL_31;
        }
      }

      else if (!*(v9 + Typed[1]))
      {
        goto LABEL_31;
      }

      v7 = 0;
      while (*(v9 + v7))
      {
        if (v10 == ++v7)
        {
          if (v10 <= 0xF5)
          {
            goto LABEL_30;
          }

          CFLog(3, @"Per-thread streaming ID for ICU converters exhausted. Ignoring...");
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v11 = CFAllocatorAllocateTyped(0, 80, 0x2004093837F09, 0);
    LOBYTE(v7) = 0;
    *(Typed + 1) = v11;
    *v11 = 0u;
    v11[1] = 0u;
    v11[2] = 0u;
    v11[3] = 0u;
    v11[4] = 0u;
    LOBYTE(v10) = 10;
    *Typed = 10;
    v9 = *(Typed + 1);
LABEL_31:
    *(v9 + v7) = a1;
    LOBYTE(v7) = v7 + 1;
    Typed[1] = v7;
    if (v7 >= v10 || *(*(Typed + 1) + 8 * v7))
    {
      v15 = 0;
      while (*(*(Typed + 1) + 8 * v15))
      {
        if (v10 == ++v15)
        {
          goto LABEL_38;
        }
      }

      LOBYTE(v10) = v15;
LABEL_38:
      Typed[1] = v10;
    }

    return v7 << 16;
  }

  if ((a2 & 0xFF0000) != 0)
  {
    v5 = _CFGetTSD(7u);
    if (!v5)
    {
      v5 = CFAllocatorAllocateTyped(0, 16, 0x1080040EF48E34ELL, 0);
      *v5 = 0;
      *(v5 + 1) = 0;
      _CFSetTSD(7u, v5, __CFICUThreadDataDestructor);
    }

    if (*v5 > (v3 - 1))
    {
      v6 = *(v5 + 1);
      if (*(v6 + 8 * (v3 - 1)) == a1)
      {
        *(v6 + 8 * (v3 - 1)) = 0;
        if (v5[1] > (v3 - 1))
        {
          v5[1] = v3 - 1;
        }
      }
    }
  }

LABEL_27:
  ucnv_close();
  return 0;
}

unint64_t __CFStringEncodingICUToUnicode(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v23 = *MEMORY[0x1E69E9840];
  if ((a2 & 0xFF0000) == 0)
  {
    goto LABEL_6;
  }

  Typed = _CFGetTSD(7u);
  if (!Typed)
  {
    Typed = CFAllocatorAllocateTyped(0, 16, 0x1080040EF48E34ELL, 0);
    *Typed = 0;
    Typed[1] = 0;
    _CFSetTSD(7u, Typed, __CFICUThreadDataDestructor);
  }

  if (*Typed <= (BYTE2(a2) - 1) || (v16 = *(Typed[1] + 8 * (BYTE2(a2) - 1))) == 0)
  {
LABEL_6:
    v17 = ucnv_open();
    if (!v17)
    {
      result = 3;
      goto LABEL_25;
    }

    v16 = v17;
    v18 = HIBYTE(a2);
    if ((a2 & 0xFF000001) == 1)
    {
      v18 = 63;
    }

    if (v18)
    {
      ucnv_setSubstChars();
    }

    else
    {
      ucnv_setToUCallBack();
    }
  }

  if (a7)
  {
    ucnv_toUnicode();
    if (a8)
    {
      *a8 = (a6 - a6) >> 1;
    }

    goto LABEL_20;
  }

  if (a4 < 1)
  {
    if (!a8)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  do
  {
    ucnv_toUnicode();
  }

  while (a3 < a3 + a4);
  if (a8)
  {
LABEL_19:
    *a8 = 0;
  }

LABEL_20:
  if (a5)
  {
    *a5 = a3 - a3;
  }

  result = __CFStringEncodingConverterReleaseICUConverter(v16, a2, 0);
LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFStringEncodingICUCharLength(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (__CFStringEncodingICUToUnicode(a1, a2, a3, a4, 0, 0, 0, v6))
  {
    result = 0;
  }

  else
  {
    result = v6[0];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFStringEncodingICUByteLength(uint64_t a1, unsigned int a2, unint64_t a3, uint64_t a4)
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0;
  if (__CFStringEncodingICUToBytes(a1, a2, a3, a4, 0, 0, 0, v6))
  {
    result = 0;
  }

  else
  {
    result = v6[0];
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

_DWORD *__CFStringEncodingCreateICUEncodings(const __CFAllocator *a1, void *a2)
{
  v4 = ucnv_countAvailable();
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  Typed = CFAllocatorAllocateTyped(0, 4 * v4, 0x100004052888210, 0);
  if (v5 < 1)
  {
    goto LABEL_8;
  }

  v7 = 0;
  v8 = 0;
  do
  {
    AvailableName = ucnv_getAvailableName();
    v10 = __CFStringEncodingGetFromICUName(AvailableName);
    if (v10 != -1)
    {
      Typed[v8++] = v10;
    }

    ++v7;
  }

  while (v5 != v7);
  if (!v8)
  {
LABEL_8:
    CFAllocatorDeallocate(a1, Typed);
    v8 = 0;
    Typed = 0;
  }

  *a2 = v8;
  return Typed;
}

void __CFICUThreadDataDestructor(void *ptr)
{
  v2 = ptr[1];
  if (v2)
  {
    if (*ptr)
    {
      v3 = &v2[*ptr];
      do
      {
        v4 = *v2++;
        ucnv_close();
      }

      while (v2 < v3);
      v2 = ptr[1];
    }

    CFAllocatorDeallocate(0, v2);
  }

  CFAllocatorDeallocate(0, ptr);
}

uint64_t __CFStringEncodingGetWindowsCodePage(int a1)
{
  if ((a1 & 0xF00) == 0x200)
  {
    return a1 + 28590;
  }

  if ((a1 & 0xF00) == 0x100)
  {
    HIDWORD(v2) = a1 - 256;
    LODWORD(v2) = a1 - 256;
    v1 = v2 >> 26;
    if (v1 < 7)
    {
      return word_183446D18[v1];
    }

    return 0;
  }

  v4 = &unk_183446D16;
  v5 = a1 & 0xFFF;
  v6 = &__CFKnownEncodingList;
  while (1)
  {
    v7 = &v6[(v4 - v6) >> 2];
    v8 = *v7;
    if (v5 == v8)
    {
      break;
    }

    v9 = (v7 - 2);
    v10 = (v7 + 2);
    if (v5 < v8)
    {
      v4 = v9;
    }

    else
    {
      v6 = v10;
    }

    if (v6 > v4)
    {
      return 0;
    }
  }

  if (v7 - &__CFKnownEncodingList == -2)
  {
    return 0;
  }

  return *(&__CFWindowsCPList + v7 - &__CFKnownEncodingList);
}

uint64_t __CFCanonicalNameHash(char *a1)
{
  v1 = *a1;
  if (!*a1)
  {
    return 0;
  }

  v2 = 0;
  v3 = 1;
  do
  {
    v2 += v1 + 32 * ((v1 - 65) < 0x1Au);
    v1 = a1[v3];
    v4 = v3 + 1;
    if (!v1)
    {
      break;
    }
  }

  while (v3++ < 256);
  return (v4 - 1) * v2;
}

const char *__CFStringEncodingGetName(int a1)
{
  if (a1 > 67109119)
  {
    if (a1 <= 268435711)
    {
      switch(a1)
      {
        case 67109120:
          return "Unicode (UTF-7)";
        case 134217984:
          return "Unicode (UTF-8)";
        case 201326848:
          return "Unicode (UTF-32)";
      }
    }

    else if (a1 > 402653439)
    {
      if (a1 == 402653440)
      {
        return "Unicode (UTF-32BE)";
      }

      if (a1 == 469762304)
      {
        return "Unicode (UTF-32LE)";
      }
    }

    else
    {
      if (a1 == 268435712)
      {
        return "Unicode (UTF-16BE)";
      }

      if (a1 == 335544576)
      {
        return "Unicode (UTF-16LE)";
      }
    }

    return 0;
  }

  if (a1 <= 3057)
  {
    switch(a1)
    {
      case 256:
        return "Unicode (UTF-16)";
      case 3056:
        return "Japanese (NTT Docomo Shift JIS)";
      case 3057:
        return "Japanese (KDDI Shift JIS)";
    }

    return 0;
  }

  if (a1 > 3059)
  {
    if (a1 == 3060)
    {
      return "Japanese (KDDI ISO 2022-JP)";
    }

    if (a1 == 3071)
    {
      return "Non-lossy ASCII";
    }

    return 0;
  }

  if (a1 == 3058)
  {
    return "Japanese (SoftBank Shift JIS)";
  }

  else
  {
    return "Japanese (NTT Docomo ISO 2022-JP)";
  }
}

char *__CFStringEncodingCopyNameAsCF(int a1)
{
  result = __CFStringEncodingGetName(a1);
  if (result)
  {

    return _CFStringCreateWithASCIICStringNoCopyOrIndirectTagged(&__kCFAllocatorSystemDefault, result);
  }

  return result;
}

void _CFPrefsDumpDescriptionOfAllSearchLists(const char *a1)
{
  v2 = +[_CFXPreferences copyDefaultPreferences];
  v3 = [(_CFXPreferences *)v2 copyDescriptionOfSearchLists];

  if (!v3)
  {
    return;
  }

  if (a1)
  {
    v4 = strlen(a1);
    v5 = CFURLCreateWithBytes(&__kCFAllocatorSystemDefault, a1, v4, 0x8000100u, 0);
    if (!v5)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = _CFProcessNameString();
  v7 = getpid();
  Current = CFAbsoluteTimeGetCurrent();
  v9 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"/tmp/%@-preferences-search-lists(%d:%f).txt", v6, v7, *&Current);
  if (v9)
  {
    v10 = v9;
    v5 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v9, kCFURLPOSIXPathStyle, 0);
    CFRelease(v10);
    if (v5)
    {
LABEL_8:
      Length = CFStringGetLength(v3);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
      v13 = malloc_type_calloc(MaximumSizeForEncoding + 1, 1uLL, 0x100004077774924uLL);
      CFStringGetCString(v3, v13, MaximumSizeForEncoding + 1, 0x8000100u);
      v14 = strlen(v13);
      _CFWriteBytesToFile(v5, v13, v14);
      CFRelease(v5);
      free(v13);
    }
  }

LABEL_9:

  CFRelease(v3);
}

const __CFString *_CFPrefsCreateConfigurationFileNameFromIdentifier(const __CFString *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = eduModeEnabled();
    MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v1);
    v1 = MutableCopy;
    if (v2)
    {
      v4 = @"-cloud-users.defaults";
    }

    else
    {
      v4 = @".defaults";
    }

    CFStringAppend(MutableCopy, v4);
  }

  return v1;
}

CFURLRef _CFPrefsCopyCloudConfigurationURLFromBundle(__CFBundle *a1, const __CFString *Identifier)
{
  v4 = CFBundleCopyResourcesDirectoryURL(a1);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  if (!Identifier)
  {
    Identifier = CFBundleGetIdentifier(a1);
  }

  ConfigurationFileNameFromIdentifier = _CFPrefsCreateConfigurationFileNameFromIdentifier(Identifier);
  if (ConfigurationFileNameFromIdentifier)
  {
    v7 = ConfigurationFileNameFromIdentifier;
    v8 = CFURLCreateCopyAppendingPathComponent(&__kCFAllocatorSystemDefault, v5, ConfigurationFileNameFromIdentifier, 0);
    CFRelease(v7);
  }

  else
  {
    v8 = 0;
  }

  CFRelease(v5);
  return v8;
}

CFURLRef _CFPrefsCopyCloudConfigurationURLForIdentifier(const void *a1)
{
  os_unfair_lock_lock(&_CFPrefsCopyCloudConfigurationURLForIdentifier_cachedMappingLock);
  Mutable = _CFPrefsCopyCloudConfigurationURLForIdentifier_cachedMapping;
  if (!_CFPrefsCopyCloudConfigurationURLForIdentifier_cachedMapping)
  {
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    _CFPrefsCopyCloudConfigurationURLForIdentifier_cachedMapping = Mutable;
  }

  Value = CFDictionaryGetValue(Mutable, a1);
  if (Value)
  {
    v4 = Value;
    CFRetain(Value);
    goto LABEL_12;
  }

  v5 = objc_autoreleasePoolPush();
  v6 = sel_registerName("applicationProxyForIdentifier:");
  v7 = [getLSApplicationProxyClass[0]() v6];
  if (!v7 || (v8 = [v7 registerName("bundleURL")]) == 0)
  {
    objc_autoreleasePoolPop(v5);
    goto LABEL_11;
  }

  v9 = v8;
  CFRetain(v8);
  objc_autoreleasePoolPop(v5);
  Unique = _CFBundleCreateUnique(&__kCFAllocatorSystemDefault, v9);
  CFRelease(v9);
  if (!Unique)
  {
LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  v4 = _CFPrefsCopyCloudConfigurationURLFromBundle(Unique, 0);
  CFRelease(Unique);
  if (v4)
  {
    CFDictionarySetValue(_CFPrefsCopyCloudConfigurationURLForIdentifier_cachedMapping, a1, v4);
  }

LABEL_12:
  os_unfair_lock_unlock(&_CFPrefsCopyCloudConfigurationURLForIdentifier_cachedMappingLock);
  return v4;
}