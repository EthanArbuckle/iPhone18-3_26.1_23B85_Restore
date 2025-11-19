uint64_t _CFStringHasStrongOrWeakRTL(__CFString *a1, uint64_t a2, int64_t a3)
{
  v49 = *MEMORY[0x1E69E9840];
  if (_os_feature_enabled_impl())
  {
    if (a3 && CFStringGetFastestEncoding(a1) != 1536)
    {
      v40 = 0u;
      v41 = 0u;
      v38 = 0u;
      v39 = 0u;
      v36 = 0u;
      v37 = 0u;
      *buffer = 0u;
      v35 = 0u;
      theString = a1;
      v45 = a2;
      v46 = a3;
      CharactersPtr = CFStringGetCharactersPtr(a1);
      v6 = CharactersPtr ? 0 : _CFStringGetCStringPtrInternal(a1, 0x600u, 1, 1);
      v47 = 0;
      v48 = 0;
      v44 = v6;
      v25 = _os_feature_enabled_impl();
      if (a3 >= 1)
      {
        v26 = v25;
        v27 = 0;
        while (1)
        {
          v32 = 0;
          v33 = 0;
          LongCharacterFromInlineBuffer = __CFStringGetLongCharacterFromInlineBuffer(buffer, a3, v27, &v32);
          v29 = MEMORY[0x1865E3980]();
          if (v29 > 4)
          {
            if (v29 == 5)
            {
              if (v26)
              {
                goto LABEL_72;
              }
            }

            else if (v29 == 13)
            {
              goto LABEL_72;
            }
          }

          else if (v29 == 2)
          {
            if ((LongCharacterFromInlineBuffer - 1776) < 0xA)
            {
              v30 = v26;
            }

            else
            {
              v30 = 0;
            }

            if (v30)
            {
LABEL_72:
              result = 1;
              goto LABEL_71;
            }
          }

          else if (v29 == 1)
          {
            goto LABEL_72;
          }

          v27 = v33 + v32;
          if (v33 + v32 >= a3)
          {
            goto LABEL_70;
          }
        }
      }
    }

    goto LABEL_70;
  }

  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  *buffer = 0u;
  v35 = 0u;
  BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(0x66u, 0);
  theString = a1;
  v45 = a2;
  v46 = a3;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  if (CharactersPtr)
  {
    CStringPtrInternal = 0;
  }

  else
  {
    CStringPtrInternal = _CFStringGetCStringPtrInternal(a1, 0x600u, 1, 1);
  }

  v47 = 0;
  v48 = 0;
  v44 = CStringPtrInternal;
  if (a3 >= 1)
  {
    v9 = 0;
    while ((v9 & 0x8000000000000000) == 0)
    {
      v10 = v46;
      if (v46 <= v9)
      {
        break;
      }

      if (CharactersPtr)
      {
        v11 = CharactersPtr[v45 + v9];
      }

      else if (v44)
      {
        v11 = *(v44 + v45 + v9);
      }

      else
      {
        if (v48 <= v9 || (v18 = v47, v47 > v9))
        {
          v19 = v9 - 4;
          if (v9 < 4)
          {
            v19 = 0;
          }

          if (v19 + 64 < v46)
          {
            v10 = v19 + 64;
          }

          v47 = v19;
          v48 = v10;
          v50.length = v10 - v19;
          v50.location = v45 + v19;
          CFStringGetCharacters(theString, v50, buffer);
          v18 = v47;
        }

        v11 = buffer[v9 - v18];
      }

      v12 = v11;
      if (v11 >> 10 != 54)
      {
        goto LABEL_16;
      }

      v17 = v9 + 1;
      v20 = v46;
      if (v46 <= v9 + 1)
      {
        goto LABEL_50;
      }

      if (CharactersPtr)
      {
        v21 = CharactersPtr[v45 + v17];
      }

      else if (v44)
      {
        v21 = *(v44 + v45 + v17);
      }

      else
      {
        if (v48 <= v17 || (v22 = v47, v47 > v17))
        {
          v23 = v9 - 3;
          if (v9 < 3)
          {
            v23 = 0;
          }

          if (v23 + 64 < v46)
          {
            v20 = v23 + 64;
          }

          v47 = v23;
          v48 = v20;
          v51.length = v20 - v23;
          v51.location = v45 + v23;
          CFStringGetCharacters(theString, v51, buffer);
          v22 = v47;
        }

        v21 = buffer[v17 - v22];
      }

      if (v21 >> 10 != 55)
      {
        goto LABEL_50;
      }

      v12 = (v12 << 10) + v21 - 56613888;
      v24 = HIWORD(v12) & 0x1F;
      if (!v24)
      {
        ++v9;
LABEL_16:
        v13 = BitmapPtrForPlane;
        if (!BitmapPtrForPlane)
        {
          goto LABEL_49;
        }

        goto LABEL_17;
      }

      v13 = CFUniCharGetBitmapPtrForPlane(0x66u, v24);
      ++v9;
      if (!v13)
      {
LABEL_49:
        v17 = v9 + 1;
        goto LABEL_50;
      }

LABEL_17:
      v14 = *(v13 + (v12 >> 3));
      result = 1;
      v16 = (1 << (v12 & 7)) & v14;
      if (v16)
      {
        v17 = v9;
      }

      else
      {
        v17 = v9 + 1;
      }

      if (v16)
      {
        goto LABEL_71;
      }

LABEL_50:
      v9 = v17;
      if (v17 >= a3)
      {
        goto LABEL_70;
      }
    }

    LOWORD(v12) = 0;
    goto LABEL_16;
  }

LABEL_70:
  result = 0;
LABEL_71:
  v31 = *MEMORY[0x1E69E9840];
  return result;
}

void __CFAppendDirectionalIsolate(int a1, CFMutableStringRef theString)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a1 == 1)
  {
    v6 = 8295;
    p_chars = &v6;
  }

  else if (a1)
  {
    chars = 8296;
    p_chars = &chars;
  }

  else
  {
    v7 = 8294;
    p_chars = &v7;
  }

  CFStringAppendCharacters(theString, p_chars, 1);
  v4 = *MEMORY[0x1E69E9840];
}

double __appendParagraphRangeInfo_block_invoke()
{
  v0 = malloc_type_calloc(0xAuLL, 8uLL, 0x80040B8603338uLL);
  appendParagraphRangeInfo_sArrayOfStatisticalWritingDirectionParagraphKeys = v0;
  v0[2] = xmmword_1E6D82E30;
  v0[3] = *&off_1E6D82E40;
  v0[4] = xmmword_1E6D82E50;
  result = COERCE_DOUBLE(@"WritingDirection");
  *v0 = xmmword_1E6D82E10;
  v0[1] = *&off_1E6D82E20;
  return result;
}

uint64_t (**__CFStringEncodingGetKoreanConverterDefinition(int a1, uint64_t (*a2)(uint64_t)))()
{
  if (!__CFStringEncodingIsDecomposableCharacter_0)
  {
    __CFStringEncodingIsDecomposableCharacter_0 = a2(1);
    __CFStringEncodingDecomposeCharacter_0 = a2(2);
  }

  if (a1 > 2111)
  {
    if (a1 != 2112)
    {
      if (a1 == 2368)
      {
        return __CFConverterEUC_KR;
      }

      return 0;
    }

    return &__CFConverterISO_2022_KR;
  }

  else
  {
    if (a1 != 3)
    {
      if (a1 == 1058)
      {
        return __CFConverterDOSKorean;
      }

      return 0;
    }

    return __CFConverterMacKorean;
  }
}

uint64_t __CFToDOSKorean(char a1, unsigned __int16 *a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  if (a3 < 1)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_96;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0xF73Eu;
  v48 = 1;
  do
  {
    if (a5 && v11 >= a5)
    {
      if ((a1 & 0x10) == 0)
      {
        break;
      }

      v14 = *a2;
      v15 = v14 - 774 > 0x32 || ((1 << (v14 - 6)) & 0x4000000000005) == 0;
      if (v15 && v14 - 12441 >= 2)
      {
        break;
      }
    }

    else
    {
      v14 = *a2;
      if (v14 <= 0x7F)
      {
        if (a5)
        {
          *a4++ = v14;
        }

        ++v11;
        ++a2;
        ++v12;
        v48 = 1;
        continue;
      }
    }

    if (v14 - 4352 > 0xFE)
    {
LABEL_34:
      if (v14 < 0xA1)
      {
        goto LABEL_54;
      }
    }

    else if (a3 - v12 >= 2 && v14 <= 0x13)
    {
      v17 = a2[1] - 4449;
      if (v17 <= 0x15)
      {
        if ((a3 - v12) < 3)
        {
          v18 = 0;
        }

        else
        {
          v18 = a2[2] - 4519;
          if (v18 > 0x1Cu)
          {
            v18 = 0;
          }
        }

        v19 = &KSX1001_from_uni;
        v20 = (&KSX1001_from_uni + v13);
        v21 = (v18 + 28 * (v17 + 21 * v14) - 21504);
        while (1)
        {
          v22 = &v19[33 * ((0xF83E0F83E0F83E1 * (v20 - v19)) >> 1)];
          v23 = *v22;
          if (v23 <= v21)
          {
            if (v23 + 32 > v21)
            {
              v37 = v22[v21 - v23 + 1];
              if (v37)
              {
                v45 = v18 <= 0;
                v38 = 2;
                if (!v45)
                {
                  v38 = 3;
                }

                goto LABEL_71;
              }

              goto LABEL_34;
            }

            v19 = v22 + 33;
          }

          else
          {
            v20 = v22 - 33;
          }

          if (v19 > v20)
          {
            goto LABEL_34;
          }
        }
      }
    }

    v24 = &KSX1001_from_uni;
    v25 = (&KSX1001_from_uni + v13);
    while (1)
    {
      v26 = &v24[33 * ((0xF83E0F83E0F83E1 * (v25 - v24)) >> 1)];
      v27 = *v26;
      if (v27 <= v14)
      {
        break;
      }

      v25 = v26 - 33;
LABEL_40:
      if (v24 > v25)
      {
        goto LABEL_41;
      }
    }

    if (v27 + 32 <= v14)
    {
      v24 = v26 + 33;
      goto LABEL_40;
    }

    v36 = &v26[v14 - v27];
    v37 = v36[1];
    if (v36[1])
    {
      v38 = 1;
LABEL_71:
      if (v37 != 65533)
      {
        if (a5)
        {
          if (v11 + 2 > a5)
          {
            break;
          }

          *a4 = BYTE1(v37);
          a4[1] = v37;
          a4 += 2;
        }

        v48 = 0;
        v12 += v38;
        v11 += 2;
        a2 += v38;
        continue;
      }
    }

LABEL_41:
    if ((v14 + 0x2000) <= 0xBBu)
    {
      if (a5)
      {
        if (v11 + 2 > a5)
        {
          break;
        }

        if (v14 >= 0xE05E)
        {
          v28 = -2;
        }

        else
        {
          v28 = -55;
        }

        *a4 = v28;
        if (v14 >= 0xE05E)
        {
          v29 = 67;
        }

        else
        {
          v29 = -95;
        }

        a4[1] = v29 + v14;
        a4 += 2;
      }

      v48 = 0;
      ++a2;
      ++v12;
      v11 += 2;
      continue;
    }

    if ((v14 - 4447) <= 1u)
    {
      ++a2;
      ++v12;
      continue;
    }

LABEL_54:
    if ((a1 & 8) != 0 || v12 < 1)
    {
      break;
    }

    if ((a1 & 0x10) == 0)
    {
      continue;
    }

    if ((v14 - 774 > 0x32 || ((1 << (v14 - 6)) & 0x4000000000005) == 0) && v14 - 12441 >= 2)
    {
      break;
    }

    v30 = a6;
    v31 = __CFPrecomposeCharKorean(a2 - 1);
    if (!v31)
    {
      a6 = v30;
      break;
    }

    a6 = v30;
    if (v31 < 0xA1)
    {
      break;
    }

    v13 = 0xF73Eu;
    v32 = &KSX1001_from_uni;
    v33 = (&KSX1001_from_uni + v13);
LABEL_63:
    v34 = &v32[33 * ((0xF83E0F83E0F83E1 * (v33 - v32)) >> 1)];
    v35 = *v34;
    if (v35 > v31)
    {
      v33 = v34 - 33;
      goto LABEL_67;
    }

    if (v35 + 32 <= v31)
    {
      v32 = v34 + 33;
LABEL_67:
      if (v32 > v33)
      {
        break;
      }

      goto LABEL_63;
    }

    v39 = &v34[v31 - v35];
    v40 = v39[1];
    if (v39[1])
    {
      v41 = v40 == 65533;
    }

    else
    {
      v41 = 1;
    }

    if (v41)
    {
      break;
    }

    if (v48)
    {
      v42 = v11 + 1;
    }

    else
    {
      v42 = v11;
    }

    if (!a5)
    {
      goto LABEL_92;
    }

    if (v42 > a5)
    {
      v47 = v42 - 1;
      if (v48)
      {
        v11 = v47;
      }

      break;
    }

    v43 = -2;
    if (v48)
    {
      v43 = -1;
    }

    v44 = &a4[v43];
    *v44 = __rev16(v40);
    a4 = v44 + 2;
LABEL_92:
    v48 = 0;
    ++a2;
    ++v12;
    v11 = v42;
  }

  while (v12 < a3);
LABEL_96:
  *a6 = v11;
  return v12;
}

uint64_t __CFFromDOSKorean(unsigned int a1, char *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t *a6)
{
  v39 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  if (a3 < 1)
  {
    v13 = 0;
    goto LABEL_50;
  }

  v9 = a3;
  v11 = a1;
  v12 = 0;
  v13 = 0;
  v14 = a1 & 0xC0;
  v15 = 0x9F74u;
  v16 = &unk_1EA849000;
LABEL_3:
  if (a5)
  {
    if (v12 >= a5)
    {
      goto LABEL_50;
    }

    v17 = *a2;
    if ((*a2 & 0x80000000) == 0)
    {
      *a4++ = v17;
LABEL_8:
      v18 = 1;
LABEL_32:
      *a6 = ++v12;
      goto LABEL_33;
    }
  }

  else
  {
    if ((*a2 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    v17 = *a2;
  }

  if (v9 == 1)
  {
    goto LABEL_50;
  }

  v19 = a2[1] | (v17 << 8);
  if ((v19 + 478) >= 0x831Fu)
  {
    v20 = (&KSX1001_to_uni + v15);
    v21 = &KSX1001_to_uni;
    while (1)
    {
      v22 = &v21[65 * ((0xFC0FC0FC0FC0FC1 * (v20 - v21)) >> 1)];
      v23 = *v22;
      if (v23 <= v19)
      {
        if (v23 + 64 > v19)
        {
          v24 = v22[v19 - v23 + 1];
          if (v24)
          {
            v25 = v22[v19 - v23 + 1] == 65533;
          }

          else
          {
            v25 = 1;
          }

          if (v25)
          {
LABEL_24:
            if ((v19 + 13919) > 0x5Du)
            {
              break;
            }

            if (a5)
            {
              v26 = v19 + 5727;
              goto LABEL_30;
            }

            goto LABEL_31;
          }

          if (!v14 || (v36 = v14, v37 = v11, v28 = (*(v16 + 435))(v22[v19 - v23 + 1], (v11 >> 7) & 1, 5727, 65533), v16 = &unk_1EA849000, v15 = 40820, v14 = v36, v11 = v37, !v28))
          {
            if (a5)
            {
              *a4++ = v24;
            }

            v12 = *a6;
            goto LABEL_31;
          }

          v29 = __CFStringEncodingDecomposeCharacter_0(v37, v24, v38, 65533, 0x1EA849000);
          v30 = *a6;
          v12 = *a6 + v29;
          *a6 = v12;
          if (!a5)
          {
            v18 = 2;
            v14 = v36;
            v11 = v37;
            v15 = 40820;
            v16 = &unk_1EA849000;
            goto LABEL_33;
          }

          v16 = &unk_1EA849000;
          if (v12 > a5)
          {
            *a6 = v30;
            goto LABEL_50;
          }

          if (v29 < 1)
          {
            v18 = 2;
            v14 = v36;
            v11 = v37;
            v15 = 40820;
          }

          else
          {
            v31 = v29 + 1;
            v32 = v38;
            v14 = v36;
            v11 = v37;
            v15 = 40820;
            do
            {
              v33 = *v32++;
              *a4++ = v33;
              --v31;
            }

            while (v31 > 1);
            v18 = 2;
          }

LABEL_33:
          v13 += v18;
          a2 += v18;
          v27 = v9 <= v18;
          v9 -= v18;
          if (v27)
          {
            goto LABEL_50;
          }

          goto LABEL_3;
        }

        v21 = v22 + 65;
      }

      else
      {
        v20 = v22 - 65;
      }

      if (v21 > v20)
      {
        goto LABEL_24;
      }
    }
  }

  if ((v19 + 351) <= 0x5Du)
  {
    if (a5)
    {
      v26 = v19 - 3907;
LABEL_30:
      *a4++ = v26;
    }

LABEL_31:
    v18 = 2;
    goto LABEL_32;
  }

LABEL_50:
  v34 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __CFToDOSKoreanLen(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  for (result = 0; a3; --a3)
  {
    v4 = *a2++;
    if (v4 < 0x80)
    {
      v5 = 1;
    }

    else
    {
      v5 = 2;
    }

    result += v5;
  }

  return result;
}

uint64_t __CFFromDOSKoreanLen(uint64_t a1, char *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  result = 0;
  do
  {
    v5 = a3 == 1 || *a2 >= 0;
    v6 = !v5;
    if (v5)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }

    a2 += v7;
    if (v6)
    {
      v8 = -2;
    }

    else
    {
      v8 = -1;
    }

    ++result;
    v9 = __OFADD__(v8, a3);
    a3 += v8;
  }

  while (!((a3 < 0) ^ v9 | (a3 == 0)));
  return result;
}

uint64_t __CFFromDOSKoreanFallback(char *a1, uint64_t a2, _WORD *a3, uint64_t a4, void *a5)
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

uint64_t __CFToKSX1001(unsigned __int16 *a1, uint64_t a2, uint64_t *a3, unsigned __int16 *a4)
{
  v4 = *a1;
  if (v4 - 4352 > 0xFE)
  {
    goto LABEL_16;
  }

  if (a2 >= 2 && v4 <= 0x13)
  {
    v5 = a1[1] - 4449;
    if (v5 <= 0x15)
    {
      if (a2 < 3)
      {
        v6 = 0;
      }

      else
      {
        v6 = a1[2] - 4519;
        if (v6 > 0x1Cu)
        {
          v6 = 0;
        }
      }

      v7 = &KSX1001_from_uni;
      v8 = v6 + 28 * (v5 + 21 * v4) - 21504;
      v9 = (&KSX1001_from_uni + 63294);
      while (1)
      {
        v10 = &v7[33 * ((0xF83E0F83E0F83E1 * (v9 - v7)) >> 1)];
        v11 = *v10;
        if (v11 <= v8)
        {
          if (v11 + 32 > v8)
          {
            v19 = &v10[v8 - v11];
            result = v19[1];
            if (v19[1])
            {
              if (a4)
              {
                *a4 = v8;
              }

              v18 = 2;
              if (v6 > 0)
              {
                v18 = 3;
              }

LABEL_26:
              *a3 = v18;
              return result;
            }

LABEL_16:
            if (v4 < 0xA1)
            {
              return 65533;
            }

            break;
          }

          v7 = v10 + 33;
        }

        else
        {
          v9 = v10 - 33;
        }

        if (v7 > v9)
        {
          goto LABEL_16;
        }
      }
    }
  }

  v12 = &KSX1001_from_uni;
  v13 = (&KSX1001_from_uni + 63294);
  while (1)
  {
    v14 = &v12[33 * ((0xF83E0F83E0F83E1 * (v13 - v12)) >> 1)];
    v15 = *v14;
    if (v15 <= v4)
    {
      break;
    }

    v13 = v14 - 33;
LABEL_22:
    if (v12 > v13)
    {
      return 65533;
    }
  }

  if (v15 + 32 <= v4)
  {
    v12 = v14 + 33;
    goto LABEL_22;
  }

  v17 = &v14[v4 - v15];
  result = v17[1];
  if (v17[1])
  {
    v18 = 1;
    goto LABEL_26;
  }

  return 65533;
}

uint64_t __CFPrecomposeCharKorean(unsigned __int16 *a1)
{
  v1 = *a1;
  v2 = a1[1];
  if (v2 <= 0x337)
  {
    if (v2 == 774)
    {
      if ((v1 & 0xFFFFFFDF) == 0x418)
      {
        return v1 | 1u;
      }

      return 0;
    }

    if (v2 != 776)
    {
      return 0;
    }

    if (v1 == 1077)
    {
      v3 = 1105;
    }

    else
    {
      v3 = 0;
    }

    if (v1 == 1045)
    {
      return 1025;
    }

    return v3;
  }

  if (v2 == 824)
  {
    v3 = 8800;
    if (*a1 > 0x2260u)
    {
      v4 = v1 - 100;
      if ((v1 - 8804) <= 0x1F)
      {
        if (((1 << v4) & 0xC0080000) != 0)
        {
          return (v1 + 2);
        }

        if (((1 << v4) & 3) != 0)
        {
          return (v1 + 12);
        }

        if (((1 << v4) & 0xC00000) != 0)
        {
          return (v1 + 6);
        }
      }

      if (v1 != 8801)
      {
        return 0;
      }
    }

    else
    {
      if (*a1 <= 0x2207u)
      {
        if (v1 == 60)
        {
          return 8814;
        }

        if (v1 != 61)
        {
          if (v1 == 62)
          {
            return 8815;
          }

          return 0;
        }

        return v3;
      }

      if ((v1 - 8712) > 0x1D || ((1 << (v1 - 8)) & 0x20000009) == 0)
      {
        return 0;
      }
    }

    return (v1 + 1);
  }

  if (v2 != 12441)
  {
    if (v2 == 12442)
    {
      return (v1 + 2);
    }

    return 0;
  }

  if (v1 == 12454)
  {
    return 12532;
  }

  else
  {
    return (v1 + 1);
  }
}

uint64_t __CFFromKSX1001(unsigned int a1)
{
  if ((a1 + 478) < 0x831Fu)
  {
    return -3;
  }

  v1 = &KSX1001_to_uni;
  v2 = (&KSX1001_to_uni + 40820);
  while (1)
  {
    v3 = &v1[65 * ((0xFC0FC0FC0FC0FC1 * (v2 - v1)) >> 1)];
    v4 = *v3;
    if (v4 <= a1)
    {
      break;
    }

    v2 = v3 - 65;
LABEL_7:
    if (v1 > v2)
    {
      return -3;
    }
  }

  if (v4 + 64 <= a1)
  {
    v1 = v3 + 65;
    goto LABEL_7;
  }

  v5 = v3[a1 - v4 + 1];
  if (!v5)
  {
    return -3;
  }

  return v5;
}

uint64_t __CFToEUC_KR(char a1, unsigned __int16 *a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  if (a3 < 1)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_104;
  }

  v11 = 0;
  v12 = 0;
  v13 = 0xF73Eu;
  v46 = 1;
LABEL_3:
  if (a5 && v11 >= a5)
  {
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_104;
    }

    v14 = *a2;
    v15 = v14 - 774 > 0x32 || ((1 << (v14 - 6)) & 0x4000000000005) == 0;
    if (v15 && v14 - 12441 >= 2)
    {
      goto LABEL_104;
    }
  }

  else
  {
    v14 = *a2;
    if (v14 <= 0x7F)
    {
      if (a5)
      {
        *a4++ = v14;
      }

      ++v11;
      ++a2;
      ++v12;
      v46 = 1;
      goto LABEL_101;
    }
  }

  if (v14 - 4352 > 0xFE)
  {
LABEL_34:
    if (v14 < 0xA1)
    {
      goto LABEL_54;
    }
  }

  else if (a3 - v12 >= 2 && v14 <= 0x13)
  {
    v17 = a2[1] - 4449;
    if (v17 <= 0x15)
    {
      if ((a3 - v12) < 3)
      {
        v18 = 0;
      }

      else
      {
        v18 = a2[2] - 4519;
        if (v18 > 0x1Cu)
        {
          v18 = 0;
        }
      }

      v19 = &KSX1001_from_uni;
      v20 = (&KSX1001_from_uni + v13);
      v21 = (v18 + 28 * (v17 + 21 * v14) - 21504);
      while (1)
      {
        v22 = &v19[33 * ((0xF83E0F83E0F83E1 * (v20 - v19)) >> 1)];
        v23 = *v22;
        if (v23 <= v21)
        {
          if (v23 + 32 > v21)
          {
            v37 = v22[v21 - v23 + 1];
            if (v37)
            {
              v44 = v18 <= 0;
              v38 = 2;
              if (!v44)
              {
                v38 = 3;
              }

              goto LABEL_71;
            }

            goto LABEL_34;
          }

          v19 = v22 + 33;
        }

        else
        {
          v20 = v22 - 33;
        }

        if (v19 > v20)
        {
          goto LABEL_34;
        }
      }
    }
  }

  v24 = &KSX1001_from_uni;
  v25 = (&KSX1001_from_uni + v13);
  while (1)
  {
    v26 = &v24[33 * ((0xF83E0F83E0F83E1 * (v25 - v24)) >> 1)];
    v27 = *v26;
    if (v27 <= v14)
    {
      break;
    }

    v25 = v26 - 33;
LABEL_40:
    if (v24 > v25)
    {
      goto LABEL_41;
    }
  }

  if (v27 + 32 <= v14)
  {
    v24 = v26 + 33;
    goto LABEL_40;
  }

  v36 = &v26[v14 - v27];
  v37 = v36[1];
  if (v36[1])
  {
    v38 = 1;
LABEL_71:
    if (v37 != 65533 && v37 >> 8 >= 0xA1 && v37 >> 8 != 255 && v37 >= 0xA1u && v37 != 255)
    {
      v11 += 2;
      if (a5)
      {
        if (v11 > a5)
        {
          goto LABEL_104;
        }

        *a4 = BYTE1(v37);
        a4[1] = v37;
        a4 += 2;
      }

      v46 = 0;
      a2 += v38;
      v12 += v38;
      goto LABEL_101;
    }
  }

LABEL_41:
  if ((v14 + 0x2000) <= 0xBBu)
  {
    v11 += 2;
    if (a5)
    {
      if (v11 > a5)
      {
        goto LABEL_104;
      }

      if (v14 >= 0xE05E)
      {
        v28 = -2;
      }

      else
      {
        v28 = -55;
      }

      *a4 = v28;
      if (v14 >= 0xE05E)
      {
        v29 = 67;
      }

      else
      {
        v29 = -95;
      }

      a4[1] = v29 + v14;
      a4 += 2;
    }

    v46 = 0;
LABEL_53:
    ++a2;
    ++v12;
    goto LABEL_101;
  }

  if ((v14 - 4447) <= 1u)
  {
    goto LABEL_53;
  }

LABEL_54:
  if ((a1 & 8) == 0 && v12 >= 1)
  {
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_101;
    }

    if (v14 - 774 <= 0x32 && ((1 << (v14 - 6)) & 0x4000000000005) != 0 || v14 - 12441 < 2)
    {
      v30 = a6;
      v31 = __CFPrecomposeCharKorean(a2 - 1);
      if (!v31)
      {
        a6 = v30;
        goto LABEL_104;
      }

      a6 = v30;
      if (v31 >= 0xA1)
      {
        v13 = 0xF73Eu;
        v32 = &KSX1001_from_uni;
        v33 = (&KSX1001_from_uni + v13);
        do
        {
          v34 = &v32[33 * ((0xF83E0F83E0F83E1 * (v33 - v32)) >> 1)];
          v35 = *v34;
          if (v35 <= v31)
          {
            if (v35 + 32 > v31)
            {
              v39 = v34[v31 - v35 + 1];
              if (v34[v31 - v35 + 1])
              {
                v40 = v39 == 65533;
              }

              else
              {
                v40 = 1;
              }

              if (v40 || v39 >> 8 < 0xA1 || v39 >> 8 == 255 || v34[v31 - v35 + 1] < 0xA1u || v34[v31 - v35 + 1] == 255)
              {
                break;
              }

              if (v46)
              {
                v41 = v11 + 1;
              }

              else
              {
                v41 = v11;
              }

              if (!a5)
              {
                goto LABEL_100;
              }

              if (v41 > a5)
              {
                break;
              }

              v42 = -2;
              if (v46)
              {
                v42 = -1;
              }

              v43 = &a4[v42];
              *v43 = BYTE1(v39);
              a4 = v43 + 2;
              v43[1] = v39;
LABEL_100:
              v46 = 0;
              ++a2;
              ++v12;
              v11 = v41;
LABEL_101:
              if (v12 >= a3)
              {
                break;
              }

              goto LABEL_3;
            }

            v32 = v34 + 33;
          }

          else
          {
            v33 = v34 - 33;
          }
        }

        while (v32 <= v33);
      }
    }
  }

LABEL_104:
  *a6 = v11;
  return v12;
}

uint64_t __CFFromEUC_KR(unsigned int a1, char *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t *a6)
{
  v40 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  if (a3 < 1)
  {
    v13 = 0;
    goto LABEL_52;
  }

  v9 = a3;
  v11 = a1;
  v12 = 0;
  v13 = 0;
  v14 = a1 & 0xC0;
  v15 = 0x9F74u;
  v16 = &unk_1EA849000;
LABEL_3:
  if (a5)
  {
    if (v12 >= a5)
    {
      goto LABEL_52;
    }

    v17 = *a2;
    if ((*a2 & 0x80000000) == 0)
    {
      *a4++ = v17;
LABEL_8:
      v18 = 1;
LABEL_34:
      *a6 = ++v12;
      goto LABEL_35;
    }
  }

  else
  {
    if ((*a2 & 0x80000000) == 0)
    {
      goto LABEL_8;
    }

    v17 = *a2;
  }

  if (v9 == 1)
  {
    goto LABEL_52;
  }

  if ((v17 - 255) < 0xFFFFFFA2)
  {
    goto LABEL_52;
  }

  v19 = a2[1];
  if ((v19 - 255) < 0xFFFFFFA2)
  {
    goto LABEL_52;
  }

  v20 = v19 | (v17 << 8);
  if ((v20 + 478) >= 0x831Fu)
  {
    v21 = (&KSX1001_to_uni + v15);
    v22 = &KSX1001_to_uni;
    while (1)
    {
      v23 = &v22[65 * ((0xFC0FC0FC0FC0FC1 * (v21 - v22)) >> 1)];
      v24 = *v23;
      if (v24 <= v20)
      {
        if (v24 + 64 > v20)
        {
          v25 = v23[v20 - v24 + 1];
          if (v25)
          {
            v26 = v23[v20 - v24 + 1] == 65533;
          }

          else
          {
            v26 = 1;
          }

          if (v26)
          {
LABEL_26:
            if ((v20 + 13919) > 0x5Du)
            {
              break;
            }

            if (a5)
            {
              v27 = v20 + 5727;
              goto LABEL_32;
            }

            goto LABEL_33;
          }

          if (!v14 || (v37 = v14, v38 = v11, v29 = (*(v16 + 435))(v23[v20 - v24 + 1], (v11 >> 7) & 1, 5727, 65533), v16 = &unk_1EA849000, v15 = 40820, v14 = v37, v11 = v38, !v29))
          {
            if (a5)
            {
              *a4++ = v25;
            }

            v12 = *a6;
            goto LABEL_33;
          }

          v30 = __CFStringEncodingDecomposeCharacter_0(v38, v25, v39, 65533, 0x1EA849000);
          v31 = *a6;
          v12 = *a6 + v30;
          *a6 = v12;
          if (!a5)
          {
            v18 = 2;
            v14 = v37;
            v11 = v38;
            v15 = 40820;
            v16 = &unk_1EA849000;
            goto LABEL_35;
          }

          v16 = &unk_1EA849000;
          if (v12 > a5)
          {
            *a6 = v31;
            goto LABEL_52;
          }

          if (v30 < 1)
          {
            v18 = 2;
            v14 = v37;
            v11 = v38;
            v15 = 40820;
          }

          else
          {
            v32 = v30 + 1;
            v33 = v39;
            v14 = v37;
            v11 = v38;
            v15 = 40820;
            do
            {
              v34 = *v33++;
              *a4++ = v34;
              --v32;
            }

            while (v32 > 1);
            v18 = 2;
          }

LABEL_35:
          v13 += v18;
          a2 += v18;
          v28 = v9 <= v18;
          v9 -= v18;
          if (v28)
          {
            goto LABEL_52;
          }

          goto LABEL_3;
        }

        v22 = v23 + 65;
      }

      else
      {
        v21 = v23 - 65;
      }

      if (v22 > v21)
      {
        goto LABEL_26;
      }
    }
  }

  if ((v20 + 351) <= 0x5Du)
  {
    if (a5)
    {
      v27 = v20 - 3907;
LABEL_32:
      *a4++ = v27;
    }

LABEL_33:
    v18 = 2;
    goto LABEL_34;
  }

LABEL_52:
  v35 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __CFToISO_2022_KR(int a1, unsigned __int16 *a2, uint64_t a3, char *a4, uint64_t a5, uint64_t *a6)
{
  if ((a1 & 0x100) != 0)
  {
    if (a5)
    {
      if (a5 < 4)
      {
        return 0;
      }

      *a4 = 1126769691;
      a4 += 4;
    }

    v8 = 4;
  }

  else
  {
    v8 = 0;
  }

  if (a3 < 1)
  {
    v9 = 0;
    goto LABEL_133;
  }

  v10 = 0;
  v9 = 0;
  v11 = 0xF73Eu;
  v12 = 1;
  v13 = v8;
LABEL_10:
  if (a5 && v13 >= a5)
  {
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_131;
    }

    v14 = *a2;
    v15 = v14 - 774 > 0x32 || ((1 << (v14 - 6)) & 0x4000000000005) == 0;
    if (v15 && v14 - 12441 >= 2)
    {
      goto LABEL_131;
    }

    goto LABEL_32;
  }

  v14 = *a2;
  if (v14 > 0x7F)
  {
LABEL_32:
    if (v14 - 4447 <= 1)
    {
      goto LABEL_125;
    }

    if (v14 - 4352 > 0xFE)
    {
LABEL_48:
      if (v14 < 0xA1)
      {
        goto LABEL_70;
      }

LABEL_49:
      v25 = &KSX1001_from_uni;
      v26 = (&KSX1001_from_uni + v11);
      while (1)
      {
        v27 = &v25[33 * ((0xF83E0F83E0F83E1 * (v26 - v25)) >> 1)];
        v28 = *v27;
        if (v28 <= v14)
        {
          if (v28 + 32 > v14)
          {
            v42 = &v27[v14 - v28];
            v43 = v42[1];
            if (v42[1])
            {
              v44 = 1;
              goto LABEL_87;
            }

            goto LABEL_55;
          }

          v25 = v27 + 33;
        }

        else
        {
          v26 = v27 - 33;
        }

        if (v25 > v26)
        {
          goto LABEL_55;
        }
      }
    }

    if (a3 - v9 < 2)
    {
      goto LABEL_49;
    }

    if (v14 > 0x13)
    {
      goto LABEL_49;
    }

    v18 = a2[1] - 4449;
    if (v18 > 0x15)
    {
      goto LABEL_49;
    }

    if ((a3 - v9) < 3)
    {
      v19 = 0;
    }

    else
    {
      v19 = a2[2] - 4519;
      if (v19 > 0x1Cu)
      {
        v19 = 0;
      }
    }

    v20 = &KSX1001_from_uni;
    v21 = (&KSX1001_from_uni + v11);
    v22 = (v19 + 28 * (v18 + 21 * v14) - 21504);
    while (1)
    {
      v23 = &v20[33 * ((0xF83E0F83E0F83E1 * (v21 - v20)) >> 1)];
      v24 = *v23;
      if (v24 <= v22)
      {
        if (v24 + 32 > v22)
        {
          v43 = v23[v22 - v24 + 1];
          if (!v43)
          {
            goto LABEL_48;
          }

          v61 = v19 <= 0;
          v44 = 2;
          if (!v61)
          {
            v44 = 3;
          }

LABEL_87:
          if (v43 != 65533 && v43 >> 8 >= 0xA1 && v43 >> 8 != 255 && v43 >= 0xA1u && v43 != 255)
          {
            v10 = v12 != 0;
            if (v12)
            {
              v45 = v13 + 1;
            }

            else
            {
              v45 = v13;
            }

            v13 = v45 + 2;
            if (!a5)
            {
LABEL_100:
              v12 = 0;
              a2 += v44;
              v9 += v44;
              goto LABEL_126;
            }

            if (v13 <= a5)
            {
              if (v12)
              {
                *a4++ = 14;
              }

              *a4 = BYTE1(v43) & 0x7F;
              a4[1] = v43 & 0x7F;
              a4 += 2;
              goto LABEL_100;
            }

LABEL_164:
            v63 = -3;
            if (!v12)
            {
              v63 = -2;
            }

            v13 += v63;
LABEL_167:
            v8 = v13 + 1;
            goto LABEL_141;
          }

LABEL_55:
          if (v14 - 57344 <= 0xBB)
          {
            v10 = v12 != 0;
            if (v12)
            {
              v29 = v13 + 1;
            }

            else
            {
              v29 = v13;
            }

            v13 = v29 + 2;
            if (!a5)
            {
              goto LABEL_124;
            }

            if (v13 <= a5)
            {
              if (v12)
              {
                *a4++ = 14;
              }

              if (v14 >= 0xE05E)
              {
                v30 = 126;
              }

              else
              {
                v30 = 73;
              }

              *a4 = v30;
              if (v14 >= 0xE05E)
              {
                v31 = 67;
              }

              else
              {
                v31 = 33;
              }

              a4[1] = (v31 + v14) & 0x7F;
              a4 += 2;
              goto LABEL_124;
            }

            goto LABEL_164;
          }

LABEL_70:
          if ((a1 & 8) != 0 || v9 < 1)
          {
            goto LABEL_131;
          }

          if ((a1 & 0x10) == 0)
          {
            goto LABEL_126;
          }

          if ((v14 - 774 > 0x32 || ((1 << (v14 - 6)) & 0x4000000000005) == 0) && v14 - 12441 >= 2)
          {
            goto LABEL_131;
          }

          v32 = v12;
          v33 = v13;
          v64 = a3;
          v65 = a1;
          v34 = v10;
          v35 = a4;
          v36 = a6;
          v37 = __CFPrecomposeCharKorean(a2 - 1);
          if (!v37)
          {
            a6 = v36;
LABEL_139:
            a4 = v35;
            v10 = v34;
            v13 = v33;
            if (v32)
            {
              goto LABEL_132;
            }

            goto LABEL_140;
          }

          a6 = v36;
          if (v37 < 0xA1)
          {
            goto LABEL_139;
          }

          v11 = 0xF73Eu;
          v38 = &KSX1001_from_uni;
          v39 = (&KSX1001_from_uni + v11);
          a4 = v35;
          v12 = v32;
          while (2)
          {
            v40 = &v38[33 * ((0xF83E0F83E0F83E1 * (v39 - v38)) >> 1)];
            v41 = *v40;
            if (v41 > v37)
            {
              v39 = v40 - 33;
              goto LABEL_83;
            }

            if (v41 + 32 <= v37)
            {
              v38 = v40 + 33;
LABEL_83:
              if (v38 > v39)
              {
                goto LABEL_129;
              }

              continue;
            }

            break;
          }

          v46 = v40[v37 - v41 + 1];
          if (v40[v37 - v41 + 1])
          {
            v47 = v46 == 65533;
          }

          else
          {
            v47 = 1;
          }

          if (v47)
          {
LABEL_129:
            v10 = v34;
LABEL_130:
            v13 = v33;
            goto LABEL_131;
          }

          v10 = v34;
          if (v46 >> 8 < 0xA1)
          {
            goto LABEL_130;
          }

          v13 = v33;
          if (v46 >> 8 == 255 || v40[v37 - v41 + 1] < 0xA1u || v40[v37 - v41 + 1] == 255)
          {
            goto LABEL_131;
          }

          v10 = v32 != 0;
          if (v32)
          {
            v48 = v33 + 1;
          }

          else
          {
            v48 = v33;
          }

          v49 = -2;
          if (v32 != 0 && !v34)
          {
            v49 = -1;
          }

          v13 = v48 + v49 + 2;
          if (!a5)
          {
            a1 = v65;
            a3 = v64;
            goto LABEL_124;
          }

          a1 = v65;
          if (v13 > a5)
          {
            v13 = v48 - (v32 != 0);
            goto LABEL_167;
          }

          v50 = &v35[v49];
          if (v32)
          {
            *v50++ = 14;
          }

          a3 = v64;
          *v50 = BYTE1(v46) & 0x7F;
          a4 = v50 + 2;
          v50[1] = v46 & 0x7F;
LABEL_124:
          v12 = 0;
LABEL_125:
          ++a2;
          ++v9;
LABEL_126:
          if (v9 >= a3)
          {
LABEL_131:
            if (v12)
            {
LABEL_132:
              v8 = v13;
              goto LABEL_133;
            }

LABEL_140:
            v8 = v13 + 1;
            if (!a5)
            {
              goto LABEL_133;
            }

LABEL_141:
            if (v13 < a5)
            {
              *a4 = 15;
              goto LABEL_133;
            }

            v53 = a2 - 1;
            while (1)
            {
              v55 = *v53--;
              v54 = v55;
              v56 = (1 << (v55 - 6)) & 0x4000000000005;
              if ((v55 - 774 > 0x32 || v56 == 0) && v54 - 12441 >= 2)
              {
                v59 = v54 >> 5;
                v60 = v54 >> 9;
                v61 = v59 < 0x8B || v60 > 8;
                if (v61 || v9 < 2)
                {
LABEL_161:
                  --v9;
                  if (v10)
                  {
                    v8 = v13 - 3;
                  }

                  else
                  {
                    *(a4 - 2) = 15;
                    v8 = v13 - 1;
                  }

                  goto LABEL_133;
                }
              }

              else if (v9 <= 1)
              {
                goto LABEL_161;
              }

              --v9;
            }
          }

          goto LABEL_10;
        }

        v20 = v23 + 33;
      }

      else
      {
        v21 = v23 - 33;
      }

      if (v20 > v21)
      {
        goto LABEL_48;
      }
    }
  }

  v10 = v12 == 0;
  if (v12)
  {
    v17 = v13;
  }

  else
  {
    v17 = v13 + 1;
  }

  v13 = v17 + 1;
  if (!a5)
  {
LABEL_31:
    ++a2;
    ++v9;
    v12 = 1;
    goto LABEL_126;
  }

  if (v17 < a5)
  {
    if (!v12)
    {
      *a4++ = 15;
    }

    *a4++ = v14;
    goto LABEL_31;
  }

  v52 = -2;
  if (v12)
  {
    v52 = -1;
  }

  v8 = v13 + v52;
LABEL_133:
  *a6 = v8;
  return v9;
}

uint64_t __CFFromISO_2022_KR(uint64_t a1, char *__s1, uint64_t a3, unsigned __int16 *a4, uint64_t a5, uint64_t *a6)
{
  v41 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  if (a3 < 1)
  {
    v13 = 0;
    goto LABEL_74;
  }

  v9 = a3;
  v12 = 0;
  v13 = 0;
  v39 = a1 & 0xC0;
  v14 = 1;
  while (2)
  {
    if (a5 && v12 >= a5)
    {
      goto LABEL_68;
    }

    v15 = *__s1;
    if (v9 >= 4 && v15 == 27)
    {
      if (!strncmp(__s1, "\x1B$)C", 4uLL))
      {
        v17 = 4;
        goto LABEL_25;
      }

      v16 = 27;
    }

    else
    {
      if (v15 == 14)
      {
        v14 = 0;
        v17 = 1;
        goto LABEL_25;
      }

      v16 = *__s1;
      if (v15 == 15)
      {
        goto LABEL_15;
      }
    }

    if (v14)
    {
      if (a5)
      {
        *a4++ = v15;
      }

      *a6 = ++v12;
LABEL_15:
      v17 = 1;
      v14 = 1;
      goto LABEL_25;
    }

    if (v9 == 1 || (v16 | 0x80u) < 0xA1 || (v16 | 0x80) == 0xFF || (v19 = __s1[1], (v19 | 0x80u) < 0xA1) || (v19 | 0x80) == 0xFF)
    {
      if (a1)
      {
        if (a5)
        {
          *a4++ = 63;
        }

        v14 = 0;
        *a6 = ++v12;
        v17 = 1;
        if (v9 != 1)
        {
          v17 = 2;
        }

        goto LABEL_25;
      }

      goto LABEL_67;
    }

    v20 = v19 | (v16 << 8) | 0x8080;
    v21 = v20;
    if ((v20 + 478) < 0x831Fu)
    {
      break;
    }

    v22 = &KSX1001_to_uni;
    v23 = (&KSX1001_to_uni + 40820);
    while (1)
    {
      v24 = &v22[65 * ((0xFC0FC0FC0FC0FC1 * (v23 - v22)) >> 1)];
      v25 = *v24;
      if (v25 <= v21)
      {
        break;
      }

      v23 = v24 - 65;
LABEL_38:
      if (v22 > v23)
      {
        goto LABEL_45;
      }
    }

    if (v25 + 64 <= v21)
    {
      v22 = v24 + 65;
      goto LABEL_38;
    }

    v26 = v24[v21 - v25 + 1];
    if (v26)
    {
      v27 = v24[v21 - v25 + 1] == 65533;
    }

    else
    {
      v27 = 1;
    }

    if (!v27)
    {
      if (!v39 || !__CFStringEncodingIsDecomposableCharacter_0(v24[v21 - v25 + 1], (a1 >> 7) & 1))
      {
        if (a5)
        {
          *a4++ = v26;
        }

        v14 = 0;
        v12 = *a6 + 1;
        goto LABEL_53;
      }

      v31 = __CFStringEncodingDecomposeCharacter_0(a1, v26, v40, v29, v30);
      v32 = *a6;
      v12 = *a6 + v31;
      *a6 = v12;
      if (!a5)
      {
        goto LABEL_62;
      }

      if (v12 > a5)
      {
        *a6 = v32;
        v36 = 1;
        v12 = v32;
        goto LABEL_69;
      }

      if (v31 >= 1)
      {
        v33 = v31 + 1;
        v34 = v40;
        do
        {
          v35 = *v34++;
          *a4++ = v35;
          --v33;
        }

        while (v33 > 1);
      }

LABEL_62:
      v14 = 0;
LABEL_54:
      v17 = 2;
LABEL_25:
      v13 += v17;
      __s1 += v17;
      v18 = v9 <= v17;
      v9 -= v17;
      if (v18)
      {
        goto LABEL_74;
      }

      continue;
    }

    break;
  }

LABEL_45:
  if ((v21 + 13919) <= 0x5Du)
  {
    if (a5)
    {
      v28 = v21 + 5727;
      goto LABEL_51;
    }

    goto LABEL_52;
  }

  if ((v21 + 351) <= 0x5Du)
  {
    if (a5)
    {
      v28 = v21 - 3907;
LABEL_51:
      *a4++ = v28;
    }

LABEL_52:
    v14 = 0;
    ++v12;
LABEL_53:
    *a6 = v12;
    goto LABEL_54;
  }

LABEL_67:
  v14 = 0;
LABEL_68:
  v36 = v14 == 0;
  if (a5)
  {
LABEL_69:
    if (v9 == 1 && v36 && v12 == a5 && *__s1 == 15)
    {
      ++v13;
    }
  }

LABEL_74:
  v37 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __CFToISO_2022_KRLen(unsigned int a1, unsigned __int16 *a2, uint64_t a3)
{
  v3 = (a1 >> 6) & 4;
  if (a3)
  {
    LOBYTE(v4) = 1;
    do
    {
      v6 = *a2++;
      v5 = v6;
      if (v4)
      {
        v7 = 1;
      }

      else
      {
        v7 = 2;
      }

      if (v4)
      {
        v8 = 3;
      }

      else
      {
        v8 = 2;
      }

      v4 = v5 < 0x80;
      if (v5 >= 0x80)
      {
        v9 = v8;
      }

      else
      {
        v9 = v7;
      }

      v3 += v9;
      --a3;
    }

    while (a3);
    v10 = !v4;
  }

  else
  {
    v10 = 0;
  }

  return v3 + v10;
}

uint64_t __CFFromISO_2022_KRLen(int a1, char *__s1, uint64_t a3)
{
  if (a3 >= 1)
  {
    v3 = a3;
    v5 = 0;
    v6 = 1;
    while (1)
    {
      v7 = *__s1;
      if (v3 >= 4 && v7 == 27)
      {
        if (strncmp(__s1, "\x1B$)C", 4uLL))
        {
          goto LABEL_10;
        }

        v8 = -4;
        v9 = 4;
      }

      else if (v7 == 14)
      {
        v6 = 0;
        v8 = -1;
        v9 = 1;
      }

      else
      {
        if (v7 != 15)
        {
LABEL_10:
          v10 = v3 != 1 && v6 == 0;
          ++v5;
          if (v10)
          {
            v9 = 2;
          }

          else
          {
            v9 = 1;
          }

          if (v10)
          {
            v8 = -2;
          }

          else
          {
            v8 = -1;
          }

          goto LABEL_20;
        }

        v9 = 1;
        v8 = -1;
        v6 = 1;
      }

LABEL_20:
      __s1 += v9;
      v11 = __OFADD__(v3, v8);
      v3 += v8;
      if ((v3 < 0) ^ v11 | (v3 == 0))
      {
        return v5;
      }
    }
  }

  return 0;
}

uint64_t __CFToMacKorean(int a1, unsigned __int16 *a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  v148[1] = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_464;
  }

  v10 = 0;
  v11 = 0;
  v12 = 0;
  v148[0] = 0;
  v147 = 0;
  v13 = 1;
LABEL_3:
  if (!a5 || v10 < a5)
  {
    v14 = *a2;
    goto LABEL_15;
  }

  if ((a1 & 0x10) == 0)
  {
    goto LABEL_464;
  }

  v14 = *a2;
  if (((v14 - 774) > 0x32 || ((1 << (v14 - 6)) & 0x4000000000005) == 0) && (v14 - 12441) >= 2)
  {
    v27 = v14 & 0xFFF0;
    if (v27 != 8400 && v27 != 8416 && v27 != 63600)
    {
      if (v14 != 839 && v14 != 822)
      {
        goto LABEL_464;
      }

      goto LABEL_13;
    }

LABEL_15:
    v147 = v14;
    if (v14 < 0x80)
    {
      goto LABEL_18;
    }

    goto LABEL_16;
  }

LABEL_13:
  v147 = *a2;
LABEL_16:
  if ((a1 & 0x80) != 0 && (v14 - 133) <= 0x1Au)
  {
LABEL_18:
    if (a5)
    {
      *a4++ = v14;
    }

    ++v10;
    ++a2;
    v17 = v11 + 1;
    v13 = 1;
    goto LABEL_111;
  }

  v17 = v11 + 1;
  if (v11 + 1 < a3 && a2[1] == -1921)
  {
    switch(v14)
    {
      case 65343:
        v18 = 1;
        goto LABEL_59;
      case 8230:
        v18 = 2;
        goto LABEL_59;
      case 8211:
        v18 = 3;
LABEL_59:
        v31 = v18 + v10;
        if (a5)
        {
          if (v31 > a5)
          {
            goto LABEL_464;
          }

          if (v14 != 65343)
          {
            if (v14 != 8230)
            {
              *a4++ = -126;
            }

            *a4++ = -1;
          }

          *a4++ = -124;
        }

        v13 = 0;
        v17 = v11 + 2;
        a2 += 2;
        goto LABEL_110;
    }
  }

  if ((v14 + 418) < 0x242u)
  {
    goto LABEL_34;
  }

  v19 = &MacKorean_from_uni_one_char;
  v20 = &unk_1833731D2;
  while (1)
  {
    v21 = &v19[5 * ((0xCCCCCCCCCCCCCCCDLL * (v20 - v19)) >> 1)];
    v22 = *v21;
    if (v22 <= v14)
    {
      break;
    }

    v20 = v21 - 5;
LABEL_33:
    if (v19 > v20)
    {
      goto LABEL_34;
    }
  }

  if (v22 + 4 <= v14)
  {
    v19 = v21 + 5;
    goto LABEL_33;
  }

  v28 = &v21[v14 - v22];
  v29 = v28[1];
  if (v28[1])
  {
    v13 = v29 < 0x100;
    if (v29 < 0x100)
    {
      v30 = 1;
    }

    else
    {
      v30 = 2;
    }

    v31 = v30 + v10;
    if (a5)
    {
      if (v31 > a5)
      {
        goto LABEL_464;
      }

      if (v29 >= 0x100)
      {
        *a4++ = BYTE1(v29);
      }

      *a4++ = v29;
    }

    goto LABEL_109;
  }

LABEL_34:
  v145 = v13;
  v146 = a4;
  v23 = a3 - v11;
  v24 = *a2;
  if (v24 - 4352 > 0xFE)
  {
LABEL_74:
    if (v24 < 0xA1)
    {
      goto LABEL_81;
    }

LABEL_75:
    v37 = &KSX1001_from_uni;
    v38 = (&KSX1001_from_uni + 63294);
    while (1)
    {
      v39 = &v37[33 * ((0xF83E0F83E0F83E1 * (v38 - v37)) >> 1)];
      v40 = *v39;
      if (v40 <= v24)
      {
        if (v40 + 32 > v24)
        {
          v45 = &v39[v24 - v40];
          LODWORD(v42) = v45[1];
          if (v45[1])
          {
            v46 = 1;
            goto LABEL_100;
          }

          goto LABEL_81;
        }

        v37 = v39 + 33;
      }

      else
      {
        v38 = v39 - 33;
      }

      if (v37 > v38)
      {
        goto LABEL_81;
      }
    }
  }

  if (v23 < 2)
  {
    goto LABEL_75;
  }

  if (v24 > 0x13)
  {
    goto LABEL_75;
  }

  v25 = a2[1] - 4449;
  if (v25 > 0x15)
  {
    goto LABEL_75;
  }

  if (v23 < 3)
  {
    v26 = 0;
  }

  else
  {
    v26 = a2[2] - 4519;
    if ((a2[2] - 4519) > 0x1Cu)
    {
      v26 = 0;
    }
  }

  v32 = v26 + 28 * (v25 + 21 * v24) - 21504;
  v33 = &KSX1001_from_uni;
  v34 = (&KSX1001_from_uni + 63294);
  while (2)
  {
    v35 = &v33[33 * ((0xF83E0F83E0F83E1 * (v34 - v33)) >> 1)];
    v36 = *v35;
    if (v36 > v32)
    {
      v34 = v35 - 33;
      goto LABEL_73;
    }

    if (v36 + 32 <= v32)
    {
      v33 = v35 + 33;
LABEL_73:
      if (v33 > v34)
      {
        goto LABEL_74;
      }

      continue;
    }

    break;
  }

  v55 = &v35[v32 - v36];
  LODWORD(v42) = v55[1];
  if (!v55[1])
  {
    goto LABEL_74;
  }

  if (v26 <= 0)
  {
    v46 = 2;
  }

  else
  {
    v46 = 3;
  }

  v12 = v32;
LABEL_100:
  v148[0] = v46;
  if (v42 == 65533)
  {
LABEL_81:
    LOBYTE(v41) = -1;
    LOBYTE(v42) = -3;
  }

  else
  {
    LODWORD(v41) = v42 >> 8;
    if (v42 >> 8 >= 0xA1 && v41 != 255)
    {
      LODWORD(v41) = v42 >> 8;
      if (v42 >= 0xA1u && v42 != 255)
      {
        if (a5)
        {
          if (v10 + 2 > a5)
          {
            goto LABEL_464;
          }

          *a4 = __rev16(v42);
          a4 += 2;
          v46 = v148[0];
        }

        v13 = 0;
        v17 = v46 + v11;
        v10 += 2;
        goto LABEL_194;
      }
    }
  }

  if ((v14 + 0x2000) <= 0xBBu)
  {
    v31 = v10 + 2;
    if (a5)
    {
      if (v31 > a5)
      {
        goto LABEL_464;
      }

      if (v14 >= 0xE05E)
      {
        v43 = -2;
      }

      else
      {
        v43 = -55;
      }

      *a4 = v43;
      if (v147 >= 0xE05Eu)
      {
        v44 = 67;
      }

      else
      {
        v44 = -95;
      }

      a4[1] = v44 + v147;
      a4 += 2;
    }

LABEL_108:
    v13 = 0;
LABEL_109:
    ++a2;
LABEL_110:
    v10 = v31;
    goto LABEL_111;
  }

  if ((v14 - 4447) <= 1u)
  {
    ++a2;
LABEL_97:
    v13 = v145;
    goto LABEL_111;
  }

  if ((a1 & 8) != 0)
  {
    goto LABEL_464;
  }

  if ((a1 & 0x10) == 0)
  {
    v17 = v11;
    goto LABEL_97;
  }

  v48 = v14 == 63584 || (v14 + 1945) < 3u;
  if (v23 < 3 || !v48)
  {
    if (v23 > 3 && v14 == 63585)
    {
      v52 = a2[1];
      if (v52 == 40)
      {
        v71 = a2[2];
        v72 = v71 - 65;
        if (v71 - 65 > 0x19 || a2[3] != 41)
        {
          goto LABEL_464;
        }

        if (v71 >= 0x56)
        {
          v73 = 108;
        }

        else
        {
          v73 = 105;
        }

        v54 = v72 + v73;
        v53 = -93;
      }

      else
      {
        if (v52 != 8224 || a2[2] != 8224 || a2[3] != 8224)
        {
          goto LABEL_464;
        }

        v53 = -90;
        v54 = 70;
      }

      v31 = v10 + 2;
      if (a5)
      {
        if (v31 > a5)
        {
          goto LABEL_464;
        }

        *a4 = v53;
        a4[1] = v54;
        a4 += 2;
      }

      v13 = 0;
      a2 += 4;
      v17 = v11 + 4;
      goto LABEL_110;
    }

    if (v23 >= 5 && (v14 + 1950) <= 4u)
    {
      v56 = a2[1];
      if (v56 != 91)
      {
        if (v56 == 51452 && a2[2] == 49885 && a2[3] == 54924 && a2[4] == 49324)
        {
          if (v14 == 63587)
          {
            LOBYTE(v41) = -89;
            LOBYTE(v42) = -127;
          }

          else if (v14 == 63586)
          {
            LOBYTE(v41) = -89;
            LOBYTE(v42) = 125;
          }

          goto LABEL_391;
        }

LABEL_219:
        if (v14 > 0xF864)
        {
          goto LABEL_464;
        }

        if (v56 == 40)
        {
          v76 = a2[2];
          if (v76 == 50)
          {
            v79 = a2[3];
            LOWORD(v41) = v79 - 49;
            if (v79 - 49 > 8 || a2[4] != 41)
            {
              goto LABEL_464;
            }

            if (v14 == 63588)
            {
              v95 = v79 >= 0x37;
              v96 = -23053;
              v97 = -22791;
            }

            else
            {
              if (v14 == 63587)
              {
                LOBYTE(v42) = v79 - 60;
                LOBYTE(v41) = -89;
                goto LABEL_391;
              }

              v95 = v79 >= 0x37;
              v96 = -21519;
              v97 = -21767;
            }

            if (!v95)
            {
              v96 = v97;
            }

            LOBYTE(v42) = v41 + v96;
            LOBYTE(v41) = (v41 + v96) >> 8;
          }

          else
          {
            if (v76 != 51 || a2[3] != 48 || a2[4] != 41)
            {
              goto LABEL_464;
            }

            v77 = 8 * (v14 - 98);
            LODWORD(v42) = 0xFCFEFAu >> v77;
            LODWORD(v41) = 0xA5A7ABu >> v77;
          }
        }

        else
        {
          if (v14 == 63588 || v56 != 91 || a2[4] != 93)
          {
            goto LABEL_464;
          }

          v78 = a2[2];
          if (v78 == 21313)
          {
            v80 = a2[3] | (v14 << 16);
            if (v80 + 127707428 < 0xFFFEF724)
            {
              goto LABEL_464;
            }

            v81 = &MacKorean_from_uni_0xF862_3;
            v82 = &unk_1833739A8;
            while (1)
            {
              v83 = &v81[8 * ((v82 - v81) >> 4)];
              if (*v83 <= v80)
              {
                if (*v83 >= v80)
                {
                  LODWORD(v42) = *(v83 + 2);
                  LODWORD(v41) = v42 >> 8;
                  goto LABEL_391;
                }

                v81 = v83 + 8;
              }

              else
              {
                v82 = v83 - 8;
              }

              if (v81 > v82)
              {
                goto LABEL_464;
              }
            }
          }

          if (v78 != 20108 || a2[3] != 21313)
          {
            goto LABEL_464;
          }

          if (v14 == 63586)
          {
            LOBYTE(v42) = 104;
          }

          else
          {
            LOBYTE(v42) = 84;
          }

          LOBYTE(v41) = -83;
        }

        goto LABEL_391;
      }

      v74 = a2[2];
      if (v74 == 50)
      {
        if (a2[3] == 48 && a2[4] == 93)
        {
          v75 = 8 * (v14 - 98);
          v42 = 0xF66854F954uLL >> v75;
          v41 = 0xACA4A3A2A4uLL >> v75;
          goto LABEL_391;
        }

        goto LABEL_219;
      }

      if (v74 != 49)
      {
        goto LABEL_219;
      }

      LODWORD(v41) = a2[3];
      if ((v41 - 48) > 9 || a2[4] != 93)
      {
        goto LABEL_219;
      }

      if (v14 <= 63587)
      {
        if (v14 != 63586)
        {
          LOBYTE(v42) = v41 - 65;
          LOBYTE(v41) = -94;
          goto LABEL_391;
        }

        LOBYTE(v42) = v41 + 26;
      }

      else
      {
        if (v14 == 63588)
        {
          LOBYTE(v42) = v41 + 26;
          LOBYTE(v41) = -93;
          goto LABEL_391;
        }

        if (v14 != 63589)
        {
          if (v41 >= 0x36)
          {
            v116 = -20;
          }

          else
          {
            v116 = -53;
          }

          LOBYTE(v42) = v41 + v116 - 48;
          LOBYTE(v41) = -84;
          goto LABEL_391;
        }

        LOBYTE(v42) = v41 + 46;
      }

      LOBYTE(v41) = -92;
LABEL_391:
      if (a5)
      {
        if (v10 + 2 > a5)
        {
          goto LABEL_464;
        }

        *a4 = v41;
        a4[1] = v42;
        a4 += 2;
      }

      v13 = 0;
      a2 += 5;
      v17 = v11 + 5;
      v10 += 2;
      goto LABEL_111;
    }

    if (v23 > 1)
    {
      v62 = a2[1];
      v63 = v62 & 0xFFF0;
      v64 = v62 | (v14 << 16);
      if (v63 == 63600 && v64 + 12584832 >= 0xE1FFF7)
      {
        v65 = &MacKorean_from_uni_0xF870;
        v66 = &unk_1833745A0;
        do
        {
          v67 = &v65[8 * ((v66 - v65) >> 4)];
          if (*v67 <= v64)
          {
            if (*v67 >= v64)
            {
LABEL_249:
              v31 = v10 + 2;
              if (a5)
              {
                if (v31 > a5)
                {
                  goto LABEL_464;
                }

                *a4 = __rev16(*(v67 + 2));
                a4 += 2;
              }

              v13 = 0;
              a2 += 2;
              v17 = v11 + 2;
              goto LABEL_110;
            }

            v65 = v67 + 8;
          }

          else
          {
            v66 = v67 - 8;
          }
        }

        while (v65 <= v66);
      }

      if (v64 - 721224520 >= 0xFAB71D9C)
      {
        v68 = &MacKorean_from_uni_other_two_char;
        v69 = &unk_1833745C0;
        do
        {
          v67 = &v68[8 * ((v69 - v68) >> 4)];
          if (*v67 <= v64)
          {
            if (*v67 >= v64)
            {
              goto LABEL_249;
            }

            v68 = v67 + 8;
          }

          else
          {
            v69 = v67 - 8;
          }
        }

        while (v68 <= v69);
      }
    }

    if (v11 < 1)
    {
      goto LABEL_464;
    }

    v144 = a6;
    if (v14 > 823)
    {
      if ((v14 - 12441) >= 2)
      {
        if (v14 != 824)
        {
          if (v14 == 839)
          {
            if (*(a2 - 1) != 8741)
            {
              goto LABEL_297;
            }

            if (a5)
            {
              v70 = -24924;
              goto LABEL_214;
            }

LABEL_215:
            v13 = 0;
            ++a2;
            goto LABEL_111;
          }

          goto LABEL_273;
        }

        if (*(a2 - 1) == 8869)
        {
          if (a5)
          {
            *(a4 - 1) = 28071;
          }

          v13 = 0;
          ++a2;
          goto LABEL_111;
        }
      }
    }

    else if (v14 != 774)
    {
      if (v14 != 776)
      {
        if (v14 == 822)
        {
          if (*(a2 - 1) != 8765)
          {
            goto LABEL_297;
          }

          if (a5)
          {
            v70 = 31143;
LABEL_214:
            *(a4 - 1) = v70;
            goto LABEL_215;
          }

          goto LABEL_215;
        }

        goto LABEL_273;
      }

      if (*(a2 - 1) == 45)
      {
        if (a5)
        {
          if (v10 >= a5)
          {
            goto LABEL_464;
          }

          *(a4++ - 1) = 26535;
        }

        v13 = 0;
        ++v10;
        goto LABEL_375;
      }
    }

    v142 = v12;
    v143 = a1;
    v84 = __CFPrecomposeCharKorean(a2 - 1);
    v147 = v84;
    if (!v84)
    {
      goto LABEL_474;
    }

    v14 = v84;
    LODWORD(v42) = __CFToKSX1001(&v147, 1, v148, 0);
    LODWORD(v41) = v42 >> 8;
    if (v42 >> 8 < 0xA1)
    {
      a6 = v144;
      v12 = v142;
      a1 = v143;
    }

    else
    {
      v12 = v142;
      a1 = v143;
      if ((v42 & 0xFF00) == 0xFF00)
      {
LABEL_273:
        a6 = v144;
        goto LABEL_275;
      }

      a6 = v144;
      if (v42 >= 0xA1u && v42 != 255)
      {
        if (v145)
        {
          v85 = v10 + 1;
        }

        else
        {
          v85 = v10;
        }

        if (a5)
        {
          if (v85 > a5)
          {
            v140 = v85 - 1;
            v141 = !v145;
            goto LABEL_469;
          }

          v86 = -2;
          if (v145)
          {
            v86 = -1;
          }

          *&v146[v86] = __rev16(v42);
          a4 = &v146[v86 + 2];
        }

        else
        {
          a4 = v146;
        }

        v13 = 0;
        ++a2;
        v10 = v85;
        goto LABEL_111;
      }
    }

LABEL_275:
    if (v14 > 8414)
    {
      if (v14 == 8415)
      {
        v99 = *(a2 - 1);
        if (v99 > 0x25C6)
        {
          a4 = v146;
          if (v99 == 9671)
          {
            if (v17 < a3 && a2[1] == 8415)
            {
              v100 = 97;
              ++a2;
              ++v11;
            }

            else
            {
              v100 = 87;
            }
          }

          else
          {
            if (v99 != 63494)
            {
              goto LABEL_464;
            }

            v100 = 96;
          }
        }

        else
        {
          a4 = v146;
          if (v99 == 9632)
          {
            v100 = 86;
          }

          else
          {
            if (v99 != 9633)
            {
              goto LABEL_464;
            }

            v100 = 89;
          }
        }

        if (a5)
        {
          *(a4 - 2) = -90;
          *(a4 - 1) = v100;
        }

        v13 = 0;
        ++a2;
        v17 = v11 + 1;
        goto LABEL_111;
      }

      if (v14 == 8420)
      {
        if (*(a2 - 1) != 35036)
        {
          goto LABEL_464;
        }

        a4 = v146;
        if (a5)
        {
          *(v146 - 1) = 31911;
        }

        goto LABEL_374;
      }

      if (v14 != 8421)
      {
        goto LABEL_297;
      }

      v89 = *(a2 - 1);
      if (v89 != 8801)
      {
        a4 = v146;
        if (v89 != 61)
        {
          goto LABEL_464;
        }

        v31 = v10 + 1;
        if (!a5)
        {
          goto LABEL_108;
        }

        if (v10 >= a5)
        {
          goto LABEL_464;
        }

        v90 = 25255;
LABEL_318:
        *(a4++ - 1) = v90;
        goto LABEL_108;
      }

      a4 = v146;
      if (a5)
      {
        v114 = 25511;
        goto LABEL_365;
      }
    }

    else
    {
      if (v14 != 8402)
      {
        if (v14 == 8413)
        {
          if (*(a2 - 1) - 4352 >= 0xFF)
          {
            v12 = *(a2 - 1);
          }

          a4 = v146;
          v87 = v145;
          if (v23 >= 2 && a2[1] == -1926 && (v12 + 10891) >= 0xD68Bu)
          {
            v101 = &MacKorean_from_uni_0x20DD_0xF87A;
            v102 = &unk_183373268;
            do
            {
              v103 = &v101[2 * ((v102 - v101) >> 3)];
              v104 = *v103;
              if (v104 <= v12)
              {
                if (v104 >= v12)
                {
                  v115 = 2;
LABEL_406:
                  if (v145)
                  {
                    v121 = v10 + 1;
                  }

                  else
                  {
                    v121 = v10;
                  }

                  if (a5)
                  {
                    if (v121 > a5)
                    {
                      goto LABEL_468;
                    }

                    v122 = v103[1];
                    v123 = -2;
                    if (v145)
                    {
                      v123 = -1;
                    }

                    *&v146[v123] = __rev16(v122);
                    a4 = &v146[v123 + 2];
                  }

                  v13 = 0;
                  v17 = v115 + v11;
                  v10 = v121;
                  a2 += v115;
                  goto LABEL_111;
                }

                v101 = v103 + 2;
              }

              else
              {
                v102 = v103 - 2;
              }
            }

            while (v101 <= v102);
          }

          if ((v12 + 10443) < 0x29C2u)
          {
            goto LABEL_464;
          }

          v105 = &MacKorean_from_uni_0x20DD;
          v106 = &unk_1833733FC;
          while (1)
          {
            v103 = &v105[2 * ((v106 - v105) >> 3)];
            v107 = *v103;
            if (v107 <= v12)
            {
              if (v107 >= v12)
              {
                v115 = 1;
                goto LABEL_406;
              }

              v105 = v103 + 2;
            }

            else
            {
              v106 = v103 - 2;
            }

            if (v105 > v106)
            {
              goto LABEL_464;
            }
          }
        }

        if (v14 != 8414)
        {
LABEL_297:
          if ((v14 & 0xFFF0) != 0xF870)
          {
            goto LABEL_464;
          }

          v91 = v14 | (*(a2 - 1) << 16);
          if (v91 + 12584832 < 0xE1FFF7)
          {
            goto LABEL_464;
          }

          v92 = &MacKorean_from_uni_0xF870;
          v93 = &unk_1833745A0;
          a4 = v146;
          while (1)
          {
            v94 = &v92[8 * ((v93 - v92) >> 4)];
            if (*v94 <= v91)
            {
              if (*v94 >= v91)
              {
                v108 = *(v94 + 2);
                if (v108 >= 0x100)
                {
                  v109 = 0;
                }

                else
                {
                  v109 = -1;
                }

                if (v145)
                {
                  v109 = 1;
                }

                v10 += v109;
                if (a5)
                {
                  if (v10 <= a5)
                  {
                    v110 = -2;
                    if (v145)
                    {
                      v110 = -1;
                    }

                    v111 = &v146[v110];
                    if (v108 < 0x100)
                    {
                      v113 = 1;
                      v112 = v111;
                    }

                    else
                    {
                      *v111 = BYTE1(v108);
                      v112 = v111 + 1;
                      v113 = 2;
                    }

                    a4 = &v111[v113];
                    *v112 = v108;
                    goto LABEL_374;
                  }

                  if (v145)
                  {
                    --v10;
                  }

                  else if (v108 < 0x100)
                  {
                    ++v10;
                  }

LABEL_474:
                  a6 = v144;
                  goto LABEL_464;
                }

LABEL_374:
                v13 = 0;
LABEL_375:
                ++a2;
LABEL_111:
                v11 = v17;
                if (v17 >= a3)
                {
                  goto LABEL_464;
                }

                goto LABEL_3;
              }

              v92 = v94 + 8;
            }

            else
            {
              v93 = v94 - 8;
            }

            if (v92 > v93)
            {
              goto LABEL_464;
            }
          }
        }

        if (*(a2 - 1) - 4352 >= 0xFF)
        {
          v12 = *(a2 - 1);
        }

        v87 = v145;
        if (v23 < 2)
        {
          goto LABEL_443;
        }

        v88 = a2[1];
        if ((v88 & 0xFFF0) != 0xF870)
        {
          goto LABEL_443;
        }

        v147 = v12;
        if ((v12 - 49) > 8u)
        {
          if (v88 != 63612)
          {
            if (v88 == 63610)
            {
              if ((v12 + 2042) < 0x82Au)
              {
                goto LABEL_474;
              }

              v117 = &MacKorean_from_uni_0x20DE;
              v118 = &unk_183373550;
              while (1)
              {
                v119 = &v117[2 * ((v118 - v117) >> 3)];
                v120 = *v119;
                if (v120 <= v12)
                {
                  if (v120 >= v12)
                  {
                    LOWORD(v41) = v119[1];
                    if ((v41 + 21163) <= 9u)
                    {
                      LOBYTE(v42) = v41 - 20;
                      LOBYTE(v41) = -83;
                      goto LABEL_462;
                    }

LABEL_432:
                    if ((v12 + 10891) < 0xB4C6u)
                    {
                      goto LABEL_474;
                    }

                    v128 = &MacKorean_from_uni_0x20DE_F87A;
                    v129 = &unk_18337357C;
                    while (1)
                    {
                      v130 = &v128[2 * ((v129 - v128) >> 3)];
                      v131 = *v130;
                      if (v131 <= v12)
                      {
                        if (v131 >= v12)
                        {
                          LODWORD(v42) = v130[1];
                          LODWORD(v41) = v42 >> 8;
LABEL_462:
                          v46 = 2;
                          a6 = v144;
                          a4 = v146;
                          v87 = v145;
LABEL_452:
                          if (v87)
                          {
                            v121 = v10 + 1;
                          }

                          else
                          {
                            v121 = v10;
                          }

                          if (a5)
                          {
                            if (v121 <= a5)
                            {
                              v136 = -2;
                              if (v87)
                              {
                                v136 = -1;
                              }

                              v137 = &a4[v136];
                              *v137 = v41;
                              a4 = v137 + 2;
                              v137[1] = v42;
                              goto LABEL_460;
                            }

LABEL_468:
                            v140 = v121 - 1;
                            v141 = !v87;
LABEL_469:
                            if (!v141)
                            {
                              v10 = v140;
                            }

                            goto LABEL_464;
                          }

LABEL_460:
                          v13 = 0;
                          v17 = v46 + v11;
                          v10 = v121;
LABEL_194:
                          a2 += v46;
                          goto LABEL_111;
                        }

                        v128 = v130 + 2;
                      }

                      else
                      {
                        v129 = v130 - 2;
                      }

                      if (v128 > v129)
                      {
                        goto LABEL_474;
                      }
                    }
                  }

                  v117 = v119 + 2;
                }

                else
                {
                  v118 = v119 - 2;
                }

                if (v117 > v118)
                {
                  goto LABEL_432;
                }
              }
            }

            goto LABEL_443;
          }

          if ((v12 + 2042) < 0x82Au)
          {
            goto LABEL_464;
          }

          v124 = &MacKorean_from_uni_0x20DE;
          v125 = &unk_183373550;
          while (1)
          {
            v126 = &v124[2 * ((v125 - v124) >> 3)];
            v127 = *v126;
            if (v127 <= v12)
            {
              if (v127 >= v12)
              {
                LOWORD(v41) = v126[1];
                if ((v41 + 21143) <= 6u)
                {
                  LOBYTE(v42) = v41 + 14;
                  LOBYTE(v41) = -83;
                  goto LABEL_442;
                }

LABEL_443:
                if ((v12 + 2042) < 0x82Au)
                {
                  goto LABEL_464;
                }

                v132 = &MacKorean_from_uni_0x20DE;
                v133 = &unk_183373550;
                a4 = v146;
                while (1)
                {
                  v134 = &v132[2 * ((v133 - v132) >> 3)];
                  v135 = *v134;
                  if (v135 <= v12)
                  {
                    if (v135 >= v12)
                    {
                      LODWORD(v42) = v134[1];
                      LODWORD(v41) = v42 >> 8;
                      v46 = 1;
                      goto LABEL_452;
                    }

                    v132 = v134 + 2;
                  }

                  else
                  {
                    v133 = v134 - 2;
                  }

                  if (v132 > v133)
                  {
                    goto LABEL_464;
                  }
                }
              }

              v124 = v126 + 2;
            }

            else
            {
              v125 = v126 - 2;
            }

            if (v124 > v125)
            {
              goto LABEL_443;
            }
          }
        }

        if (v88 <= 63610)
        {
          if (v88 != 63605)
          {
            v46 = 2;
            a4 = v146;
            if (v88 != 63610)
            {
              goto LABEL_452;
            }

            LOBYTE(v42) = v12 + 36;
            goto LABEL_418;
          }

          LOBYTE(v42) = v12 - 111;
          LOBYTE(v41) = -84;
        }

        else if (v88 == 63611)
        {
          LOBYTE(v42) = v12 + 16;
          LOBYTE(v41) = -93;
        }

        else
        {
          if (v88 != 63612)
          {
            v46 = 2;
            a4 = v146;
            if (v88 != 63615)
            {
              goto LABEL_452;
            }

            LOBYTE(v42) = v12 + 16;
LABEL_418:
            LOBYTE(v41) = -92;
            v46 = 2;
            goto LABEL_452;
          }

          LOBYTE(v42) = v12 - 75;
          LOBYTE(v41) = -94;
        }

LABEL_442:
        v46 = 2;
        a4 = v146;
        goto LABEL_452;
      }

      v98 = *(a2 - 1);
      if (v98 != 8801)
      {
        a4 = v146;
        if (v98 != 61)
        {
          goto LABEL_464;
        }

        v31 = v10 + 1;
        if (!a5)
        {
          goto LABEL_108;
        }

        if (v10 >= a5)
        {
          goto LABEL_464;
        }

        v90 = 26023;
        goto LABEL_318;
      }

      a4 = v146;
      if (a5)
      {
        v114 = 28327;
LABEL_365:
        *(a4 - 1) = v114;
      }
    }

    v31 = v10;
    goto LABEL_108;
  }

  v49 = a2[1];
  if (v49 == 8225)
  {
    if (a2[2] == 8225)
    {
      LOBYTE(v50) = -90;
      LOBYTE(v51) = 69;
      goto LABEL_204;
    }

    goto LABEL_464;
  }

  if (v49 == 8224)
  {
    if (a2[2] == 8224)
    {
      LOBYTE(v50) = -90;
      LOBYTE(v51) = 68;
      goto LABEL_204;
    }

    goto LABEL_464;
  }

  if (v49 > 0x7F)
  {
    goto LABEL_464;
  }

  v57 = a2[2];
  if (v57 > 0x7F)
  {
    goto LABEL_464;
  }

  v58 = (v14 << 16) | (v49 << 8) | v57;
  if (v58 + 127325910 < 0xFFF6F815)
  {
    goto LABEL_464;
  }

  v59 = &MacKorean_from_uni_0xF860;
  v60 = &unk_183373918;
  while (2)
  {
    v61 = &v59[8 * ((v60 - v59) >> 4)];
    if (*v61 > v58)
    {
      v60 = v61 - 8;
      goto LABEL_157;
    }

    if (*v61 < v58)
    {
      v59 = v61 + 8;
LABEL_157:
      if (v59 > v60)
      {
        goto LABEL_464;
      }

      continue;
    }

    break;
  }

  v51 = *(v61 + 2);
  v50 = v51 >> 8;
LABEL_204:
  v31 = v10 + 2;
  if (!a5)
  {
LABEL_207:
    v13 = 0;
    a2 += 3;
    v17 = v11 + 3;
    goto LABEL_110;
  }

  if (v31 <= a5)
  {
    *a4 = v50;
    a4[1] = v51;
    a4 += 2;
    goto LABEL_207;
  }

LABEL_464:
  *a6 = v10;
  v138 = *MEMORY[0x1E69E9840];
  return v11;
}

uint64_t __CFFromMacKorean(uint64_t a1, char *a2, uint64_t a3, _WORD *a4, uint64_t a5, uint64_t *a6)
{
  v109 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  if (a3 < 1)
  {
    v13 = 0;
    goto LABEL_199;
  }

  v9 = a3;
  v12 = 0;
  v13 = 0;
  v14 = (a1 & 0x200) == 0;
  if ((a1 & 0x200) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = a1 & 0xC0;
  if ((a1 & 0x200) != 0)
  {
    v17 = 3;
  }

  else
  {
    v17 = 4;
  }

  while (2)
  {
    if (a5 && v12 >= a5)
    {
      goto LABEL_199;
    }

    v18 = *a2;
    if ((*a2 & 0x80000000) == 0 || (a1 & 0x80) != 0 && (v18 - 133) <= 0x1A)
    {
      if (a5)
      {
        *a4++ = v18;
      }

LABEL_15:
      ++v12;
LABEL_16:
      v19 = 1;
      goto LABEL_17;
    }

    if (*a2 > 0x82u)
    {
      switch(v18)
      {
        case 131:
          if (a5)
          {
            *a4++ = 169;
          }

          goto LABEL_15;
        case 132:
          v12 += v15;
          if (!a5)
          {
            goto LABEL_16;
          }

          if (v12 > a5)
          {
            goto LABEL_199;
          }

          *a4 = -193;
          v21 = a4 + 1;
          if ((a1 & 0x200) == 0)
          {
            goto LABEL_35;
          }

LABEL_28:
          a4 = v21;
          goto LABEL_16;
        case 255:
          v12 += v15;
          if (!a5)
          {
            goto LABEL_16;
          }

          if (v12 > a5)
          {
            goto LABEL_199;
          }

          *a4 = 8230;
          v21 = a4 + 1;
          if ((a1 & 0x200) != 0)
          {
            goto LABEL_28;
          }

          goto LABEL_35;
      }
    }

    else
    {
      switch(v18)
      {
        case 128:
          if (a5)
          {
            *a4++ = 160;
          }

          goto LABEL_15;
        case 129:
          if (a5)
          {
            *a4++ = 8361;
          }

          goto LABEL_15;
        case 130:
          v12 += v15;
          if (!a5)
          {
            goto LABEL_16;
          }

          if (v12 > a5)
          {
            goto LABEL_199;
          }

          *a4 = 8211;
          v21 = a4 + 1;
          if ((a1 & 0x200) != 0)
          {
            goto LABEL_28;
          }

LABEL_35:
          a4[1] = -1921;
          a4 += 2;
          goto LABEL_16;
      }
    }

    if (v9 == 1)
    {
      goto LABEL_199;
    }

    v22 = a2[1];
    v23 = v22 | (v18 << 8);
    if (((v22 | (v18 << 8)) + 21070) < 0xF39Bu)
    {
      goto LABEL_48;
    }

    v24 = &MacKorean_to_uni_one_char;
    v25 = &unk_183374A1E;
    while (1)
    {
      v26 = &v24[5 * ((0xCCCCCCCCCCCCCCCDLL * (v25 - v24)) >> 1)];
      v27 = *v26;
      if (v27 <= v23)
      {
        break;
      }

      v25 = v26 - 5;
LABEL_47:
      if (v24 > v25)
      {
        goto LABEL_48;
      }
    }

    if (v27 + 4 <= v23)
    {
      v24 = v26 + 5;
      goto LABEL_47;
    }

    v49 = &v26[v23 - v27];
    v50 = v49[1];
    if (v49[1])
    {
      if (v16)
      {
        v103 = v16;
        v51 = v14;
        v106 = v15;
        v100 = v17;
        IsDecomposableCharacter_0 = __CFStringEncodingIsDecomposableCharacter_0(v50, (a1 >> 7) & 1);
        v17 = v100;
        v16 = v103;
        v15 = v106;
        v14 = v51;
        if (IsDecomposableCharacter_0)
        {
          v53 = __CFStringEncodingDecomposeCharacter_0(a1, v50, v108, 160, v100);
          v45 = *a6;
          v12 = *a6 + v53;
          *a6 = v12;
          if (!a5)
          {
LABEL_163:
            v19 = 2;
            v14 = v51;
            v15 = v106;
            v16 = v103;
            v17 = v100;
            goto LABEL_18;
          }

          if (v12 <= a5)
          {
            if (v53 >= 1)
            {
              v54 = v53 + 1;
              v55 = v108;
              v14 = v51;
              v15 = v106;
              v16 = v103;
              v17 = v100;
              do
              {
                v56 = *v55++;
                *a4++ = v56;
                --v54;
              }

              while (v54 > 1);
              v19 = 2;
              goto LABEL_18;
            }

            goto LABEL_163;
          }

LABEL_200:
          *a6 = v45;
          goto LABEL_199;
        }
      }

      if (a5)
      {
        *a4++ = v50;
      }

      goto LABEL_127;
    }

LABEL_48:
    if ((v23 + 21070) < 0xF38Fu)
    {
      goto LABEL_69;
    }

    v28 = &MacKorean_to_uni_two_char;
    v29 = &unk_18337635E;
    while (2)
    {
      v30 = &v28[17 * ((0xF0F0F0F0F0F0F0F1 * (v29 - v28)) >> 1)];
      v31 = *v30;
      if (v31 > v23)
      {
        v29 = v30 - 17;
        goto LABEL_54;
      }

      if (v31 + 16 <= v23)
      {
        v28 = v30 + 17;
LABEL_54:
        if (v28 > v29)
        {
          goto LABEL_55;
        }

        continue;
      }

      break;
    }

    v57 = v30[v23 - v31 + 1];
    if (v57)
    {
      v58 = &__CFTwoCharDecompSeqTable + 4 * (v57 & 0x7FFF);
      v61 = *(v58 - 2);
      v59 = v58 - 4;
      v60 = v61;
      v62 = v57;
      if (!v16)
      {
        goto LABEL_149;
      }

      v94 = v59;
      v101 = v17;
      v104 = v16;
      v107 = v15;
      v97 = v14;
      if ((__CFStringEncodingIsDecomposableCharacter_0(v60, (a1 >> 7) & 1) & 1) == 0)
      {
        v12 = *a6;
        v14 = v97;
        v15 = v107;
        v16 = v104;
        v17 = v101;
        v59 = v94;
LABEL_149:
        if (((v62 < 0) & (a1 >> 9)) != 0)
        {
          v80 = 1;
        }

        else
        {
          v80 = 2;
        }

        v12 += v80;
        if (a5)
        {
          if (v12 > a5)
          {
            goto LABEL_199;
          }

          *a4 = v60;
          if (((v62 < 0) & (a1 >> 9)) != 0)
          {
            ++a4;
          }

          else
          {
            a4[1] = *(v59 + 1);
            a4 += 2;
          }

          goto LABEL_165;
        }

LABEL_173:
        v19 = 2;
        goto LABEL_17;
      }

      v65 = __CFStringEncodingDecomposeCharacter_0(a1, v60, v108, v63, v64);
      v12 = v65 + !((v62 < 0) & (a1 >> 9)) + *a6;
      if (!a5)
      {
        v19 = 2;
        v14 = v97;
        goto LABEL_191;
      }

      v14 = v97;
      v15 = v107;
      v16 = v104;
      v17 = v101;
      if (v12 > a5)
      {
        goto LABEL_199;
      }

      if (v65 >= 1)
      {
        v66 = v65 + 1;
        v67 = v108;
        do
        {
          v68 = *v67++;
          *a4++ = v68;
          --v66;
        }

        while (v66 > 1);
      }

      if (((v62 < 0) & (a1 >> 9)) == 0)
      {
        *a4++ = *(v94 + 1);
      }

LABEL_189:
      v19 = 2;
LABEL_17:
      *a6 = v12;
LABEL_18:
      v13 += v19;
      a2 += v19;
      v20 = v9 <= v19;
      v9 -= v19;
      if (v20)
      {
        goto LABEL_199;
      }

      continue;
    }

    break;
  }

LABEL_55:
  if ((v23 + 21112) < 0xF3C9u)
  {
    goto LABEL_69;
  }

  v32 = &MacKorean_to_uni_three_char;
  v33 = &unk_18337668E;
  while (1)
  {
    v34 = &v32[17 * ((0xF0F0F0F0F0F0F0F1 * (v33 - v32)) >> 1)];
    v35 = *v34;
    if (v35 <= v23)
    {
      break;
    }

    v33 = v34 - 17;
LABEL_61:
    if (v32 > v33)
    {
      goto LABEL_62;
    }
  }

  if (v35 + 16 <= v23)
  {
    v32 = v34 + 17;
    goto LABEL_61;
  }

  v70 = v34[v23 - v35 + 1];
  if (v70)
  {
    v95 = (&__CFThreeCharDecompSeqTable + 6 * (v34[v23 - v35 + 1] & 0x7FFF));
    v71 = *v95;
    v72 = v70;
    if (v16)
    {
      v101 = v17;
      v104 = v16;
      v107 = v15;
      v98 = v14;
      if (__CFStringEncodingIsDecomposableCharacter_0(v71, (a1 >> 7) & 1))
      {
        v75 = __CFStringEncodingDecomposeCharacter_0(a1, v71, v108, v73, v74);
        if (((v72 < 0) & (a1 >> 9)) != 0)
        {
          v76 = 1;
        }

        else
        {
          v76 = 2;
        }

        v12 = v75 + v76 + *a6;
        if (a5)
        {
          v14 = v98;
          v15 = v107;
          v16 = v104;
          v17 = v101;
          if (v12 > a5)
          {
            goto LABEL_199;
          }

          if (v75 >= 1)
          {
            v77 = v75 + 1;
            v78 = v108;
            do
            {
              v79 = *v78++;
              *a4++ = v79;
              --v77;
            }

            while (v77 > 1);
          }

          *a4 = v95[1];
          v91 = v98 ^ 1;
          if (v72 < 0)
          {
            v91 = 0;
          }

          if (v91)
          {
            ++a4;
          }

          else
          {
            a4[1] = v95[2];
            a4 += 2;
          }

          goto LABEL_86;
        }

        v19 = 2;
        v14 = v98;
LABEL_191:
        v15 = v107;
        v16 = v104;
        v17 = v101;
        goto LABEL_17;
      }

      v12 = *a6;
      v14 = v98;
      v15 = v107;
      v16 = v104;
      v17 = v101;
    }

    v84 = 2;
    if (((v72 < 0) & (a1 >> 9)) == 0)
    {
      v84 = 3;
    }

    v12 += v84;
    if (a5)
    {
      if (v12 > a5)
      {
        goto LABEL_199;
      }

      if (((v72 < 0) & (a1 >> 9)) != 0)
      {
        v85 = v95;
        *a4 = v95[1];
        v86 = a4 + 1;
LABEL_179:
        a4 += 2;
        *v86 = v85[2];
        goto LABEL_86;
      }

      a4[1] = v95[1];
      v87 = a4 + 1;
      *a4 = v71;
      a4 += 2;
      v86 = a4;
      v88 = v14 ^ 1;
      if (v72 < 0)
      {
        v88 = 0;
      }

      if ((v88 & 1) == 0)
      {
        a4 = v87;
        v85 = v95;
        goto LABEL_179;
      }

LABEL_165:
      v19 = 2;
      goto LABEL_17;
    }

    goto LABEL_173;
  }

LABEL_62:
  if ((v23 + 21136) < 0xF57Fu)
  {
    goto LABEL_69;
  }

  v36 = &MacKorean_to_uni_five_char;
  v37 = &unk_18337686A;
  while (1)
  {
    v38 = &v36[17 * ((0xF0F0F0F0F0F0F0F1 * (v37 - v36)) >> 1)];
    v39 = *v38;
    if (v39 <= v23)
    {
      break;
    }

    v37 = v38 - 17;
LABEL_68:
    if (v36 > v37)
    {
      goto LABEL_69;
    }
  }

  if (v39 + 16 <= v23)
  {
    v36 = v38 + 17;
    goto LABEL_68;
  }

  v81 = v38[v23 - v39 + 1];
  if (!v81)
  {
LABEL_69:
    if ((v18 - 255) >= 0xFFFFFFA2 && (v22 - 255) >= 0xFFFFFFA2)
    {
      v96 = v14;
      v105 = v15;
      v102 = v16;
      v99 = v17;
      v40 = __CFFromKSX1001(v23);
      v17 = v99;
      v16 = v102;
      v15 = v105;
      v14 = v96;
      v41 = v40;
      if (v40 != 65533)
      {
        if (v102)
        {
          v43 = __CFStringEncodingIsDecomposableCharacter_0(v40, (a1 >> 7) & 1);
          v17 = v99;
          v16 = v102;
          v15 = v105;
          v14 = v96;
          if (v43)
          {
            v44 = __CFStringEncodingDecomposeCharacter_0(a1, v41, v108, 160, v99);
            v45 = *a6;
            v12 = *a6 + v44;
            *a6 = v12;
            if (a5)
            {
              if (v12 > a5)
              {
                goto LABEL_200;
              }

              if (v44 >= 1)
              {
                v46 = v44 + 1;
                v47 = v108;
                v14 = v96;
                v15 = v105;
                v16 = v102;
                v17 = v99;
                do
                {
                  v48 = *v47++;
                  *a4++ = v48;
                  --v46;
                }

                while (v46 > 1);
                v19 = 2;
                goto LABEL_18;
              }
            }

            v19 = 2;
            v14 = v96;
            v15 = v105;
            v16 = v102;
            v17 = v99;
            goto LABEL_18;
          }
        }

        if (a5)
        {
          *a4++ = v41;
        }

LABEL_127:
        v12 = *a6 + 1;
        v19 = 2;
        goto LABEL_17;
      }
    }

    if ((v23 + 13919) > 0x5Du)
    {
      if ((v23 + 351) > 0x5Du)
      {
        if ((v23 + 23703) > 0x1Cu)
        {
          if (v23 != 42566)
          {
            goto LABEL_199;
          }

          v12 += v17;
          if (a5)
          {
            if (v12 > a5)
            {
              goto LABEL_199;
            }

            if ((a1 & 0x200) == 0)
            {
              *a4++ = -1951;
            }

            *a4 = 538976288;
            a4[2] = 8224;
            a4 += 3;
LABEL_86:
            v19 = 2;
            goto LABEL_17;
          }
        }

        else
        {
          v12 += v17;
          if (a5)
          {
            if (v12 > a5)
            {
              goto LABEL_199;
            }

            if ((a1 & 0x200) == 0)
            {
              *a4++ = -1951;
            }

            *a4 = 40;
            if (v23 >= 0xA381)
            {
              v69 = 62;
            }

            else
            {
              v69 = 65;
            }

            a4[1] = v69 + v23 + 23703;
            a4[2] = 41;
            a4 += 3;
            goto LABEL_165;
          }
        }

        v19 = 2;
        goto LABEL_17;
      }

      if (a5)
      {
        v42 = v23 - 3907;
        goto LABEL_84;
      }
    }

    else if (a5)
    {
      v42 = v23 + 5727;
LABEL_84:
      *a4++ = v42;
    }

    ++v12;
    goto LABEL_86;
  }

  v82 = (v81 < 0) & (a1 >> 9);
  v83 = 4;
  if (!v82)
  {
    v83 = 5;
  }

  v12 += v83;
  if (!a5)
  {
    v19 = 2;
    goto LABEL_17;
  }

  if (v12 <= a5)
  {
    if ((v82 & 1) == 0)
    {
      *a4++ = __CFFiveCharDecompSeqTable[5 * (v81 & 0x7FFF)];
    }

    v89 = &__CFFiveCharDecompSeqTable[5 * (v81 & 0x7FFF)];
    *a4 = *(v89 + 2);
    a4[2] = *(v89 + 3);
    v90 = v14 ^ 1;
    if (v81 < 0)
    {
      v90 = 0;
    }

    if (v90)
    {
      a4 += 3;
    }

    else
    {
      a4[3] = *(v89 + 4);
      a4 += 4;
    }

    goto LABEL_189;
  }

LABEL_199:
  v92 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __CFFromMacKoreanLen(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  result = 0;
  do
  {
    v4 = *a2;
    v5 = v4 < 0x85 || a3 == 1;
    if (v5 || v4 == 255)
    {
      ++a2;
      --a3;
    }

    else
    {
      a2 += 2;
      a3 -= 2;
      if (v4 - 161 < 0xD)
      {
        result += 5;
      }
    }

    ++result;
  }

  while (a3 > 0);
  return result;
}

unint64_t CFStringEncodingBytesToUnicode(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t *a5, uint64_t a6, uint64_t a7, uint64_t *a8)
{
  v36[1] = *MEMORY[0x1E69E9840];
  v15 = __CFGetConverter(a1);
  if (!v15)
  {
    result = 3;
    goto LABEL_62;
  }

  v16 = v15;
  v36[0] = 0;
  v17 = *(*v15 + 20);
  if (v17 == 4)
  {
    result = __CFStringEncodingPlatformBytesToUnicode();
    goto LABEL_62;
  }

  if (v17 == 5)
  {
    result = __CFStringEncodingICUToUnicode(v15[1], a2, a3, a4, a5, a6, a7, a8);
    goto LABEL_62;
  }

  v34 = a5;
  if (a4 < 1)
  {
    v20 = 0;
    v19 = 0;
    v29 = 0;
    goto LABEL_49;
  }

  v19 = 0;
  v20 = 0;
  while (1)
  {
    if (a7 && a7 <= v19)
    {
LABEL_42:
      v29 = 0;
      goto LABEL_49;
    }

    v21 = v16[2];
    if (v21)
    {
      if ((a2 & 0xC0) != 0)
      {
        v21 = v16[3];
      }

      v22 = a7 ? a7 - v19 : 0;
      v23 = v21(v16, a2, a3 + v20, a4 - v20, a6 + 2 * v19, v22, v36);
    }

    else
    {
      v24 = a7 - v19;
      if (!a7)
      {
        v24 = 0;
      }

      v23 = (*(*v16 + 8))(a2, a3 + v20, a4 - v20, a6 + 2 * v19, v24, v36);
    }

    v20 += v23;
    if (a4 > v20)
    {
      break;
    }

LABEL_41:
    v19 += v36[0];
    if (v20 >= a4)
    {
      goto LABEL_42;
    }
  }

  v35 = 0;
  if (!a7)
  {
    goto LABEL_26;
  }

  if (v36[0] + v19 == a7)
  {
    v29 = 2;
    goto LABEL_48;
  }

  if ((a2 & 0xC0) == 0 && v36[0] + v19 + 1 != a7)
  {
LABEL_26:
    if ((a2 & 1) == 0)
    {
      v29 = 1;
      goto LABEL_48;
    }

    goto LABEL_37;
  }

  v25 = v16[2];
  if (v25)
  {
    v33 = a2 & 1;
    if ((a2 & 0xC0) != 0)
    {
      v26 = (v16[3])(v16, a2, a3 + v20, a4 - v20, 0, 0, &v35);
    }

    else
    {
      v26 = v25(v16, a2, a3 + v20, a4 - v20, 0, 0, &v35);
    }
  }

  else
  {
    v33 = a2 & 1;
    v26 = (*(*v16 + 8))(a2, a3 + v20, a4 - v20, 0, 0, &v35);
  }

  if (v26)
  {
    v27 = 1;
  }

  else
  {
    v27 = v33 == 0;
  }

  if (!v27)
  {
LABEL_37:
    v19 += v36[0];
    if (a7)
    {
      v28 = a7 - v19;
    }

    else
    {
      v28 = 0;
    }

    v20 += (v16[5])(a3 + v20, a4 - v20, a6 + 2 * v19, v28, v36);
    goto LABEL_41;
  }

  if (v26)
  {
    v29 = 2;
  }

  else
  {
    v29 = 1;
  }

LABEL_48:
  v19 += v36[0];
LABEL_49:
  if (v29)
  {
    v30 = 0;
  }

  else
  {
    v30 = v20 < a4;
  }

  if (!v30 || a7 == 0)
  {
    result = v29;
  }

  else
  {
    result = 2;
  }

  if (a8)
  {
    *a8 = v19;
  }

  if (v34)
  {
    *v34 = v20;
  }

LABEL_62:
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CFStringEncodingByteLengthForCharacters(uint64_t a1, uint64_t a2, unsigned __int16 *a3, uint64_t a4)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v8 = __CFGetConverter(a1);
  if (!v8)
  {
    a4 = 0;
    goto LABEL_19;
  }

  v9 = *v8;
  v10 = *(*v8 + 20);
  if (v10 != 4)
  {
    if (v10 == 5)
    {
      v11 = v8[1];
      v12 = *MEMORY[0x1E69E9840];

      return __CFStringEncodingICUByteLength(v11, a2, a3, a4);
    }

    if (*(v9 + 16) != 1)
    {
      v15 = *(v9 + 24);
      if (v15)
      {
        v16 = *MEMORY[0x1E69E9840];

        return v15(a2, a3, a4);
      }

      v18[0] = 0;
      if (CFStringEncodingUnicodeToBytes(a1, a2, a3, a4, 0, 0, 0, v18))
      {
        a4 = 0;
      }

      else
      {
        a4 = v18[0];
      }
    }

LABEL_19:
    v17 = *MEMORY[0x1E69E9840];
    return a4;
  }

  v14 = *MEMORY[0x1E69E9840];

  return __CFStringEncodingPlatformByteLengthForCharacters();
}

void *CFStringEncodingRegisterFallbackProcedures(uint64_t a1, uint64_t (*a2)(unsigned __int16 *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5), uint64_t (*a3)(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, void *a5))
{
  result = __CFGetConverter(a1);
  if (result)
  {
    v7 = result;
    result = __CFGetConverter(a1);
    if (result)
    {
      v8 = *result;
      if (!a2)
      {
        if (v8)
        {
          a2 = *(v8 + 40);
        }

        else
        {
          a2 = __CFDefaultToBytesFallbackProc;
        }
      }
    }

    else
    {
      v8 = 0;
      if (!a2)
      {
        a2 = __CFDefaultToBytesFallbackProc;
      }
    }

    v7[4] = a2;
    if (!a3)
    {
      if (v8)
      {
        a3 = *(v8 + 48);
      }

      else
      {
        a3 = __CFDefaultToUnicodeFallbackProc;
      }
    }

    v7[5] = a3;
  }

  return result;
}

uint64_t __CFDefaultToBytesFallbackProc(unsigned __int16 *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t *a5)
{
  v24 = *MEMORY[0x1E69E9840];
  v8 = *a1;
  if (v8 <= 0x9F)
  {
    v9 = v8 ^ 0x80;
LABEL_3:
    result = 1;
LABEL_4:
    if (a4)
    {
      *a3 = v9;
    }

    v11 = 1;
    goto LABEL_7;
  }

  if (v8 <= 0xFF)
  {
    if (a4 >= 4)
    {
      v12 = 4;
    }

    else
    {
      v12 = a4;
    }

    if (!a4)
    {
      v12 = 4;
    }

    if (v12 < 1)
    {
      v13 = 0;
    }

    else
    {
      v13 = 0;
      v14 = &_toLossyASCIITable + 4 * (v8 & 0x3FFF) - 640;
      while (v14[v13])
      {
        if (a4)
        {
          a3[v13] = v14[v13];
        }

        if (v12 == ++v13)
        {
          v13 = v12;
          break;
        }
      }
    }

    *a5 = v13;
    goto LABEL_34;
  }

  if (v8 >> 11 == 27)
  {
    v9 = 63;
    result = 1;
    if (a2 >= 2 && v8 <= 0xDC00)
    {
      v16 = a1[1];
      v17 = v16 >> 10;
      v18 = v16 >= 0xE000;
      v19 = 1;
      if (!v18)
      {
        v19 = 2;
      }

      if (v17 >= 0x37)
      {
        result = v19;
      }

      else
      {
        result = 1;
      }

      v9 = 63;
    }

    goto LABEL_4;
  }

  if (CFUniCharIsMemberOf(*a1, 2u))
  {
    v9 = 32;
    goto LABEL_3;
  }

  if (CFUniCharIsMemberOf(*a1, 3u))
  {
    v9 = 10;
    goto LABEL_3;
  }

  v21 = *a1;
  if (v21 != 8230)
  {
    if (CFUniCharIsMemberOf(v21, 9u))
    {
      CFUniCharDecomposeCharacter(*a1, v23, 10);
      v9 = v23[0];
      if (v23[0] > 0x7F)
      {
        v22 = v23[0];
        result = __CFDefaultToBytesFallbackProc(&v22, 1, a3, a4, a5);
        goto LABEL_35;
      }

      goto LABEL_3;
    }

    goto LABEL_45;
  }

  if (a4)
  {
    if (a4 >= 3)
    {
      a3[2] = 46;
      *a3 = 11822;
      *a5 = 3;
LABEL_34:
      result = 1;
      goto LABEL_35;
    }

LABEL_45:
    v9 = 63;
    goto LABEL_3;
  }

  result = 1;
  v11 = 3;
LABEL_7:
  *a5 = v11;
LABEL_35:
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFDefaultToUnicodeFallbackProc(uint64_t a1, uint64_t a2, _WORD *a3, uint64_t a4, void *a5)
{
  if (a4)
  {
    *a3 = 63;
  }

  *a5 = 1;
  return 1;
}

uint64_t CFStringEncodingListOfAvailableEncodings()
{
  v20[1] = *MEMORY[0x1E69E9840];
  result = CFStringEncodingListOfAvailableEncodings_encodings;
  if (!CFStringEncodingListOfAvailableEncodings_encodings)
  {
    v19 = 0;
    v20[0] = 0;
    ICUEncodings = __CFStringEncodingCreateICUEncodings(0, v20);
    v2 = __CFStringEncodingCreateListOfAvailablePlatformConverters(0, &v19);
    if (ICUEncodings | v2)
    {
      v4 = v2;
      v5 = v20[0] + v19 + 14;
      Typed = CFAllocatorAllocateTyped(0, 4 * v5, 0x100004052888210, 0);
      v10 = Typed;
      *(Typed + 48) = -3825204992;
      *Typed = __CFBuiltinEncodings;
      *(Typed + 16) = unk_18337689C;
      *(Typed + 32) = xmmword_1833768AC;
      if (ICUEncodings)
      {
        memcpy((Typed + 56), ICUEncodings, 4 * v20[0]);
        CFAllocatorDeallocate(0, ICUEncodings);
      }

      if (v4)
      {
        memcpy(v10 + 4 * v20[0] + 56, v4, 4 * v19);
        CFAllocatorDeallocate(0, v4);
      }

      CFQSortArray(v10, v5, 4, __CFStringEncodingComparator, 0, v7, v8, v9);
      if (v5 >= 1)
      {
        v11 = v10 + v5;
        v12 = -1;
        v13 = v10;
        do
        {
          v14 = v13 + 1;
          v15 = *v13;
          if (v12 == *v13)
          {
            if (v14 < v11)
            {
              memmove(v13, v14, v11 - v13 - 4);
            }

            --v11;
          }

          else
          {
            ++v13;
            v12 = v15;
          }
        }

        while (v13 < v11);
      }

      v16 = 0;
      atomic_compare_exchange_strong(&CFStringEncodingListOfAvailableEncodings_encodings, &v16, v10);
      v17 = v16 == 0;
      if (v10 != &__CFBuiltinEncodings && !v17)
      {
        CFAllocatorDeallocate(0, v10);
      }
    }

    else
    {
      v3 = ICUEncodings | v2;
      atomic_compare_exchange_strong(&CFStringEncodingListOfAvailableEncodings_encodings, &v3, &__CFBuiltinEncodings);
    }

    result = CFStringEncodingListOfAvailableEncodings_encodings;
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFStringEncodingComparator(_DWORD *a1, _DWORD *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 - v3;
  v5 = v2 - v3;
  if (v2 == *a2)
  {
    return v4;
  }

  else
  {
    return v5;
  }
}

uint64_t __CFToUnicodeCheapEightBitWrapper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v19 = *MEMORY[0x1E69E9840];
  if (a6 >= a4)
  {
    v8 = a4;
  }

  else
  {
    v8 = a6;
  }

  if (a6)
  {
    v9 = v8;
  }

  else
  {
    v9 = a4;
  }

  if (v9 < 1)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    v18 = 0;
    while ((*(*a1 + 8))(a2, *(a3 + v15), &v18))
    {
      if (a6)
      {
        *(a5 + 2 * v15) = v18;
      }

      if (v9 == ++v15)
      {
        v15 = v9;
        break;
      }
    }
  }

  *a7 = v15;
  v16 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __CFToCanonicalUnicodeCheapEightBitWrapper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, void *a7)
{
  v24 = *MEMORY[0x1E69E9840];
  if (a4 < 1)
  {
    v15 = 0;
    v14 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    v22 = 0;
    while ((!a6 || v14 < a6) && (*(*a1 + 8))(a2, *(a3 + v15), &v22))
    {
      if (v22 >= 0x80u && CFUniCharIsMemberOf(v22, 0x65u))
      {
        v16 = CFUniCharDecomposeCharacter(v22, v23, 10);
        *a7 = v14;
        if (v16 >= 1)
        {
          v17 = v23;
          do
          {
            v18 = *v17;
            v19 = *v17 - 0x10000;
            if (*v17 < 0x10000)
            {
              if (v14 >= a6)
              {
                goto LABEL_25;
              }

              ++v14;
              *a5++ = v18;
            }

            else
            {
              v14 += 2;
              if (v14 > a6)
              {
                goto LABEL_25;
              }

              if (a6)
              {
                *v17 = v19;
                *a5 = (v19 >> 10) - 10240;
                a5[1] = v18 & 0x3FF | 0xDC00;
                a5 += 2;
              }
            }

            ++v17;
            --v16;
          }

          while (v16);
        }
      }

      else
      {
        if (a6)
        {
          *a5++ = v22;
        }

        ++v14;
      }

      if (++v15 == a4)
      {
        v15 = a4;
        break;
      }
    }
  }

  *a7 = v14;
LABEL_25:
  v20 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __CFToBytesStandardEightBitWrapper(uint64_t (***a1)(uint64_t, uint64_t, uint64_t, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0;
  *a7 = 0;
  if (a4)
  {
    v10 = a4;
    v14 = 0;
    v15 = 0;
    do
    {
      if (a6 && v14 >= a6)
      {
        break;
      }

      v16 = (**a1)(a2, a3, v10, &v19);
      if (!v16)
      {
        break;
      }

      if (a6)
      {
        *(a5 + *a7) = v19;
      }

      v14 = *a7 + 1;
      *a7 = v14;
      a3 += 2 * v16;
      v15 += v16;
      v10 -= v16;
    }

    while (v10);
  }

  else
  {
    v15 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __CFToUnicodeStandardEightBitWrapper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v19[5] = *MEMORY[0x1E69E9840];
  *a7 = 0;
  if (a4 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    while (!a6 || v14 < a6)
    {
      v16 = (*(*a1 + 8))(a2, *(a3 + v15), v19);
      if (!v16)
      {
        break;
      }

      v14 = *a7 + v16;
      if (a6)
      {
        if (v14 > a6)
        {
          break;
        }

        memcpy((a5 + 2 * *a7), v19, 2 * v16);
      }

      *a7 = v14;
      if (a4 == ++v15)
      {
        v15 = a4;
        break;
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __CFToCanonicalUnicodeStandardEightBitWrapper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, uint64_t a6, void *a7)
{
  v29 = *MEMORY[0x1E69E9840];
  if (a4 < 1)
  {
    v13 = 0;
    v12 = 0;
  }

  else
  {
    v10 = a3;
    v11 = a2;
    v12 = 0;
    v13 = 0;
    v24 = a2;
    while (!a6 || v12 < a6)
    {
      v14 = a1;
      v15 = (*(*a1 + 8))(v11, *(v10 + v13), v27);
      if (!v15)
      {
        break;
      }

      v16 = 0;
      v17 = v15;
      do
      {
        v18 = v27[v16];
        if (v18 >= 0x80 && CFUniCharIsMemberOf(v18, 0x65u))
        {
          v19 = CFUniCharDecomposeCharacter(v27[v16], v28, 10);
          *a7 = v12;
          if (v19 >= 1)
          {
            v20 = v28;
            do
            {
              v21 = *v20++;
              if (v21 < 0x10000)
              {
                if (v12 >= a6)
                {
                  goto LABEL_27;
                }

                ++v12;
                *a5++ = v27[v16];
              }

              else
              {
                v12 += 2;
                if (v12 > a6)
                {
                  goto LABEL_27;
                }

                if (a6)
                {
                  *a5 = (v27[v16] >> 10) | 0xD800;
                  a5[1] = v27[v16] & 0x3FF | 0xDC00;
                  a5 += 2;
                }
              }

              --v19;
            }

            while (v19);
          }
        }

        else
        {
          if (a6)
          {
            *a5++ = v27[v16];
          }

          ++v12;
        }

        ++v16;
      }

      while (v16 != v17);
      ++v13;
      v10 = a3;
      v11 = v24;
      a1 = v14;
      if (v13 == a4)
      {
        v13 = a4;
        break;
      }
    }
  }

  *a7 = v12;
LABEL_27:
  v22 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __CFToBytesCheapMultiByteWrapper(uint64_t (***a1)(uint64_t, void, _BYTE *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int64_t a6, int64_t *a7)
{
  v24 = *MEMORY[0x1E69E9840];
  *a7 = 0;
  if (a4 < 1)
  {
    v15 = 0;
  }

  else
  {
    v14 = 0;
    v15 = 0;
    while (!a6 || v14 < a6)
    {
      v16 = (**a1)(a2, *(a3 + 2 * v15), v23);
      if (!v16)
      {
        break;
      }

      if (a6)
      {
        if (*a7 + v16 > a6)
        {
          break;
        }

        v17 = v23;
        v18 = a5;
        v19 = v16;
        do
        {
          v20 = *v17++;
          *(v18 + *a7) = v20;
          ++v18;
          --v19;
        }

        while (v19);
      }

      v14 = *a7 + v16;
      *a7 = v14;
      if (++v15 == a4)
      {
        v15 = a4;
        break;
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __CFToUnicodeCheapMultiByteWrapper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _WORD *a5, uint64_t a6, uint64_t *a7)
{
  v20 = *MEMORY[0x1E69E9840];
  v19 = 0;
  *a7 = 0;
  if (a4)
  {
    v10 = a4;
    v14 = 0;
    v15 = 0;
    do
    {
      if (a6 && v14 >= a6)
      {
        break;
      }

      v16 = (*(*a1 + 8))(a2, a3, v10, &v19);
      if (!v16)
      {
        break;
      }

      if (a6)
      {
        *a5++ = v19;
      }

      v14 = *a7 + 1;
      *a7 = v14;
      v15 += v16;
      a3 += v16;
      v10 -= v16;
    }

    while (v10);
  }

  else
  {
    v15 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __CFToCanonicalUnicodeCheapMultiByteWrapper(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int16 *a5, uint64_t a6, void *a7)
{
  v26 = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v10 = a4;
    v14 = 0;
    v15 = 0;
    v24 = 0;
    do
    {
      if (a6 && v14 >= a6)
      {
        break;
      }

      v16 = (*(*a1 + 8))(a2, a3, v10, &v24);
      if (!v16)
      {
        break;
      }

      v17 = v16;
      if (v24 >= 0x80u && CFUniCharIsMemberOf(v24, 0x65u))
      {
        v18 = CFUniCharDecomposeCharacter(v24, v25, 10);
        *a7 = v14;
        if (v18 >= 1)
        {
          v19 = v25;
          do
          {
            v20 = *v19;
            v21 = *v19 - 0x10000;
            if (*v19 < 0x10000)
            {
              if (v14 >= a6)
              {
                goto LABEL_25;
              }

              ++v14;
              *a5++ = v20;
            }

            else
            {
              v14 += 2;
              if (v14 > a6)
              {
                goto LABEL_25;
              }

              if (a6)
              {
                *v19 = v21;
                *a5 = (v21 >> 10) - 10240;
                a5[1] = v20 & 0x3FF | 0xDC00;
                a5 += 2;
              }
            }

            ++v19;
            --v18;
          }

          while (v18);
        }
      }

      else
      {
        if (a6)
        {
          *a5++ = v24;
        }

        ++v14;
      }

      v15 += v17;
      a3 += v17;
      v10 -= v17;
    }

    while (v10);
  }

  else
  {
    v15 = 0;
    v14 = 0;
  }

  *a7 = v14;
LABEL_25:
  v22 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t _CFStringGetInstallationEncodingAndRegion(_DWORD *a1, _DWORD *a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v13 = 0;
  *a1 = 0;
  *a2 = 0;
  result = getpwuid(0);
  if (result)
  {
    v5 = *(result + 48);
    __strlcpy_chk();
    __strlcat_chk();
    if (__CFProphylacticAutofsAccess)
    {
      v6 = open("/dev/autofs_nowait", 0);
    }

    else
    {
      v6 = -1;
    }

    result = open(v14, 0, 0);
    if ((result & 0x80000000) != 0)
    {
      v8 = 0;
    }

    else
    {
      v7 = result;
      v8 = v15;
      v9 = read(result, v15, 0x3FuLL);
      v15[v9 & ~(v9 >> 63)] = 0;
      result = close(v7);
      v13 = v15;
    }

    if (v6 != -1)
    {
      result = close(v6);
    }

    if (v8)
    {
      result = strtol_l(v8, &v13, 0, 0);
      *a1 = result;
      if (result <= 9 && ((1 << result) & 0x230) != 0)
      {
        result = 0;
        *a1 = 0;
      }

      HIDWORD(v11) = result - 256;
      LODWORD(v11) = result - 256;
      v10 = v11 >> 26;
      if ((v10 - 3) < 5 || !v10)
      {
        *a1 = 0;
      }

      if (*v13 == 58)
      {
        result = strtol_l(++v13, 0, 0, 0);
        *a2 = result;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _CFStringSaveUserDefaultEncoding(int a1, int a2)
{
  v24 = *MEMORY[0x1E69E9840];
  HIDWORD(v3) = a1 - 256;
  LODWORD(v3) = a1 - 256;
  v2 = v3 >> 26;
  v4 = v2 > 7;
  v5 = (1 << v2) & 0xF9;
  if (!v4 && v5 != 0)
  {
    _CFStringSaveUserDefaultEncoding_cold_1();
  }

  v9 = getuid();
  v10 = getpwuid(v9);
  if (v10)
  {
    pw_dir = v10->pw_dir;
    if (!issetugid())
    {
      __CFgetenv("CFFIXED_USER_HOME");
    }

    __strlcpy_chk();
    __strlcat_chk();
    if (__CFProphylacticAutofsAccess)
    {
      v12 = open("/dev/autofs_nowait", 0);
    }

    else
    {
      v12 = -1;
    }

    unlink(v23);
    v14 = open(v23, 513, 256);
    if (v14 < 0)
    {
      v13 = 0;
    }

    else
    {
      v15 = v14;
      if ((a1 & 0xFFFFFFFE) == 4)
      {
        v16 = 0;
      }

      else
      {
        v16 = a1;
      }

      v17 = snprintf(__str, 0x40uLL, "0x%X:0x%X", v16, a2);
      v13 = 0;
      if (v17 <= 0x40)
      {
        v13 = v17 <= write(v15, __str, v17);
      }

      v18 = *__error();
      close(v15);
      *__error() = v18;
    }

    v19 = *__error();
    if (v12 != -1)
    {
      close(v12);
    }

    *__error() = v19;
  }

  else
  {
    v13 = 0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t _objc_getTaggedPointerTag_1(uint64_t a1)
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

uint64_t __CFStringScanHex(UniChar *buffer, int *a2, unsigned int *a3)
{
  v6 = *a2;
  if (*a2 < 0)
  {
    goto LABEL_5;
  }

LABEL_2:
  v7 = v6;
  v8 = *(buffer + 20);
  if (v8 > v7)
  {
    v9 = *(buffer + 17);
    if (v9)
    {
      v10 = *(v9 + 2 * *(buffer + 19) + 2 * v7);
    }

    else
    {
      v11 = *(buffer + 18);
      if (v11)
      {
        v10 = *(v11 + *(buffer + 19) + v7);
      }

      else
      {
        if (*(buffer + 22) <= v7 || (v12 = *(buffer + 21), v12 > v7))
        {
          v13 = v7 - 4;
          if (v7 < 4)
          {
            v13 = 0;
          }

          if (v13 + 64 < v8)
          {
            v8 = v13 + 64;
          }

          *(buffer + 21) = v13;
          *(buffer + 22) = v8;
          v41.length = v8 - v13;
          v41.location = *(buffer + 19) + v13;
          CFStringGetCharacters(*(buffer + 16), v41, buffer);
          v12 = *(buffer + 21);
        }

        v10 = buffer[v7 - v12];
      }
    }

    goto LABEL_6;
  }

LABEL_5:
  while (1)
  {
    v10 = -1;
LABEL_6:
    if (v10 != 12288 && (v10 - 8204) <= 0xFFF3u && v10 >= 0x21u && (v10 - 161) < 0xFFDEu)
    {
      break;
    }

    v6 = *a2 + 1;
    *a2 = v6;
    if ((v6 & 0x80000000) == 0)
    {
      goto LABEL_2;
    }
  }

  v14 = v10 - 48;
  if (v10 != 48)
  {
    if ((v10 - 48) > 9u)
    {
      if ((v10 - 65) > 5u)
      {
        if ((v10 - 97) > 5u)
        {
          return 0;
        }

        v14 = v10 - 87;
      }

      else
      {
        v14 = v10 - 55;
      }
    }

    if (v14 != -1)
    {
      goto LABEL_33;
    }

    return 0;
  }

  v15 = *a2;
  v16 = v15 + 1;
  *a2 = v15 + 1;
  if (v15 >= -1)
  {
    v17 = *(buffer + 20);
    if (v17 > v16)
    {
      v18 = *(buffer + 17);
      if (v18)
      {
        v19 = *(v18 + 2 * *(buffer + 19) + 2 * v16);
      }

      else
      {
        v31 = *(buffer + 18);
        if (v31)
        {
          v19 = *(v31 + *(buffer + 19) + v16);
        }

        else
        {
          if (*(buffer + 22) <= v16 || (v32 = *(buffer + 21), v32 > v16))
          {
            v33 = v16 - 4;
            if (v16 < 4)
            {
              v33 = 0;
            }

            if (v33 + 64 < v17)
            {
              v17 = v33 + 64;
            }

            *(buffer + 21) = v33;
            *(buffer + 22) = v17;
            v43.length = v17 - v33;
            v43.location = *(buffer + 19) + v33;
            CFStringGetCharacters(*(buffer + 16), v43, buffer);
            v32 = *(buffer + 21);
          }

          v19 = buffer[v16 - v32];
        }
      }

      if ((v19 & 0xFFDF) == 0x58)
      {
        v34 = *a2;
        v35 = v34 + 1;
        *a2 = v34 + 1;
        if (v34 < -1)
        {
          goto LABEL_93;
        }

        v36 = *(buffer + 20);
        if (v36 <= v35)
        {
          goto LABEL_93;
        }

        v37 = *(buffer + 17);
        if (v37)
        {
          v19 = *(v37 + 2 * *(buffer + 19) + 2 * v35);
        }

        else
        {
          v38 = *(buffer + 18);
          if (v38)
          {
            v19 = *(v38 + *(buffer + 19) + v35);
          }

          else
          {
            if (*(buffer + 22) <= v35 || (v39 = *(buffer + 21), v39 > v35))
            {
              v40 = v35 - 4;
              if (v35 < 4)
              {
                v40 = 0;
              }

              if (v40 + 64 < v36)
              {
                v36 = v40 + 64;
              }

              *(buffer + 21) = v40;
              *(buffer + 22) = v36;
              v44.length = v36 - v40;
              v44.location = *(buffer + 19) + v40;
              CFStringGetCharacters(*(buffer + 16), v44, buffer);
              v39 = *(buffer + 21);
            }

            v19 = buffer[v35 - v39];
          }
        }
      }

      if ((v19 - 48) > 9u)
      {
        if (v19 - 65 > 5)
        {
          if (v19 - 97 > 5)
          {
            goto LABEL_93;
          }

          v14 = v19 - 87;
        }

        else
        {
          v14 = v19 - 55;
        }
      }

      else
      {
        v14 = v19 - 48;
      }

      if (v14 != -1)
      {
LABEL_33:
        v20 = 0;
        do
        {
          v21 = v14 + 16 * v20;
          if (v20 >> 28)
          {
            v20 = -1;
          }

          else
          {
            v20 = v21;
          }

          v22 = *a2;
          v23 = v22 + 1;
          *a2 = v22 + 1;
          if (v22 < -1)
          {
            break;
          }

          v24 = *(buffer + 20);
          if (v24 <= v23)
          {
            break;
          }

          v25 = *(buffer + 17);
          if (v25)
          {
            v26 = *(v25 + 2 * *(buffer + 19) + 2 * v23);
          }

          else
          {
            v27 = *(buffer + 18);
            if (v27)
            {
              v26 = *(v27 + *(buffer + 19) + v23);
            }

            else
            {
              if (*(buffer + 22) <= v23 || (v28 = *(buffer + 21), v28 > v23))
              {
                v29 = v23 - 4;
                if (v23 < 4)
                {
                  v29 = 0;
                }

                if (v29 + 64 < v24)
                {
                  v24 = v29 + 64;
                }

                *(buffer + 21) = v29;
                *(buffer + 22) = v24;
                v42.length = v24 - v29;
                v42.location = *(buffer + 19) + v29;
                CFStringGetCharacters(*(buffer + 16), v42, buffer);
                v28 = *(buffer + 21);
              }

              v26 = buffer[v23 - v28];
            }
          }

          if ((v26 - 48) > 9u)
          {
            if (v26 - 65 > 5)
            {
              if (v26 - 97 > 5)
              {
                break;
              }

              v14 = v26 - 87;
            }

            else
            {
              v14 = v26 - 55;
            }
          }

          else
          {
            v14 = v26 - 48;
          }
        }

        while (v14 != -1);
        if (!a3)
        {
          return 1;
        }

        goto LABEL_95;
      }
    }
  }

LABEL_93:
  --*a2;
  if (a3)
  {
    v20 = 0;
LABEL_95:
    *a3 = v20;
  }

  return 1;
}

CFStringRef CFStringTokenizerCopyBestStringLanguage(CFStringRef string, CFRange range)
{
  length = range.length;
  location = range.location;
  if (__CFSTLoadCoreNLP_once != -1)
  {
    CFStringTokenizerCopyBestStringLanguage_cold_1();
  }

  if (!__CFSTLoadCoreNLP_isCoreNLPAvailable)
  {
    return 0;
  }

  v5 = __NLStringTokenizerCopyBestStringLanguage;

  return v5(string, location, length);
}

uint64_t CFStringTokenizerCopyBestStringLanguageWithHints(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (__CFSTLoadCoreNLP_once != -1)
  {
    CFStringTokenizerCopyBestStringLanguageWithHints_cold_1();
  }

  if (!__CFSTLoadCoreNLP_isCoreNLPAvailable)
  {
    return 0;
  }

  v8 = __NLStringTokenizerCopyBestStringLanguageWithHints;

  return v8(a1, a2, a3, a4);
}

uint64_t _CFStringTokenizerCopyPossibleStringLanguages(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (__CFSTLoadCoreNLP_once != -1)
  {
    _CFStringTokenizerCopyPossibleStringLanguages_cold_1();
  }

  if (!__CFSTLoadCoreNLP_isCoreNLPAvailable)
  {
    return 0;
  }

  v6 = ___NLStringTokenizerCopyPossibleStringLanguages;

  return v6(a1, a2, a3);
}

uint64_t (**__CFStringEncodingGetSymbolConverterDefinition(int a1))()
{
  v1 = __CFConverterMacSymbol;
  if (a1 != 33)
  {
    v1 = 0;
  }

  if (a1 == 34)
  {
    return __CFConverterMacDingbats;
  }

  else
  {
    return v1;
  }
}

uint64_t __CFToMacDingbats(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4)
{
  v4 = *a2;
  if (v4 > 0x1F)
  {
    if (v4 <= 0x3015)
    {
      v6 = MacDingbats_from_uni;
      v7 = &unk_18337718C;
      do
      {
        v8 = &v6[2 * ((v7 - v6) >> 3)];
        v9 = *v8;
        if (v9 <= v4)
        {
          if (v9 >= v4)
          {
            LOBYTE(v4) = *(v8 + 2);
            goto LABEL_2;
          }

          v6 = v8 + 2;
        }

        else
        {
          v7 = v8 - 2;
        }
      }

      while (v6 <= v7);
    }

    return 0;
  }

  else
  {
LABEL_2:
    *a4 = v4;
    return 1;
  }
}

BOOL __CFFromMacDingbats(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (a2 > 0x1F)
  {
    if (a2 > 0x8F)
    {
      v3 = a2 - 160;
      if (a2 < 0xA0)
      {
        return 0;
      }

      v4 = &MacDingbats_to_uni_FF;
    }

    else
    {
      v3 = a2 - 32;
      v4 = &MacDingbats_to_uni_8F;
    }

    a2 = v4[v3];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToMacDingbatsLen(uint64_t a1, __int16 *a2, uint64_t a3)
{
  for (result = 0; a3; --a3)
  {
    v4 = *a2++;
    if ((v4 & 0xFFF0) != 0xF870)
    {
      ++result;
    }
  }

  return result;
}

uint64_t __CFFromMacDingbatsLen(uint64_t a1, char *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = a3 + 1;
  do
  {
    v5 = *a2++;
    v6 = v5 + 126;
    if ((v5 + 126) > 7u)
    {
      v7 = 1;
    }

    else
    {
      v7 = qword_183377770[v6];
    }

    result += v7;
    --v4;
  }

  while (v4 > 1);
  return result;
}

uint64_t __CFToMacSymbol(uint64_t a1, unsigned __int16 *a2, uint64_t a3, char *a4)
{
  v4 = *a2;
  if (v4 <= 0x1F)
  {
LABEL_2:
    *a4 = v4;
    return 1;
  }

  if (a3 < 2 || (v6 = a2[1], (v6 & 0xFFF0) != 0xF870))
  {
LABEL_10:
    if (v4 >> 8 > 0xF8)
    {
      return 0;
    }

    goto LABEL_11;
  }

  if (v4 == 169)
  {
    if (v6 == 63615)
    {
      v7 = -29;
      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (v4 == 8482)
  {
    if (v6 == 63615)
    {
      v7 = -28;
      goto LABEL_23;
    }

LABEL_11:
    v8 = MacSymbol_from_uni;
    v9 = &unk_18337761C;
    while (1)
    {
      v10 = &v8[2 * ((v9 - v8) >> 3)];
      v11 = *v10;
      if (v11 <= v4)
      {
        if (v11 >= v4)
        {
          LOBYTE(v4) = *(v10 + 2);
          goto LABEL_2;
        }

        v8 = v10 + 2;
      }

      else
      {
        v9 = v10 - 2;
      }

      if (v8 > v9)
      {
        return 0;
      }
    }
  }

  if (v4 != 174)
  {
    goto LABEL_10;
  }

  if (v6 != 63615)
  {
    goto LABEL_11;
  }

  v7 = -30;
LABEL_23:
  *a4 = v7;
  return 2;
}

uint64_t __CFFromMacSymbol(__int16 a1, unsigned int a2, __int16 *a3)
{
  if (a2 <= 0x3F)
  {
    if (a2 <= 38)
    {
      if (a2 == 34)
      {
        v3 = 8704;
        goto LABEL_20;
      }

      if (a2 == 36)
      {
        v3 = 8707;
        goto LABEL_20;
      }
    }

    else
    {
      switch(a2)
      {
        case '\'':
          v3 = 8717;
          goto LABEL_20;
        case '*':
          v3 = 8727;
          goto LABEL_20;
        case '-':
          v3 = 8722;
LABEL_20:
          *a3 = v3;
          return 1;
      }
    }

    *a3 = a2;
    return 1;
  }

  if (a2 <= 0x7E)
  {
    v4 = a2 - 64;
    v5 = &MacSymbol_to_uni_to7E;
LABEL_9:
    v3 = v5[v4];
    goto LABEL_20;
  }

  v4 = a2 - 160;
  if (a2 < 0xA0)
  {
    return 0;
  }

  if (a2 <= 0xDF)
  {
    v5 = &MacSymbol_to_uni_toDF;
    goto LABEL_9;
  }

  v8 = a2 - 224;
  v9 = MacSymbol_to_uni_toFF[v8];
  *a3 = v9;
  if (a2 == 255)
  {
    return 0;
  }

  else
  {
    v10 = v8 - 2;
    v6 = 1;
    if (v10 <= 2)
    {
      *a3 = __CFMacSymbolTwoCharDecompSeqTable[v9];
      if ((a1 & 0x200) != 0)
      {
        return 1;
      }

      else
      {
        return 2;
      }
    }
  }

  return v6;
}

uint64_t __CFToMacSymbolLen(uint64_t a1, __int16 *a2, uint64_t a3)
{
  for (result = 0; a3; --a3)
  {
    v4 = *a2++;
    if ((v4 & 0xFFF0) != 0xF870)
    {
      ++result;
    }
  }

  return result;
}

uint64_t __CFFromMacSymbolLen(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  result = 0;
  v4 = a3 + 1;
  do
  {
    v5 = *a2++;
    if (v5 < 0xE0)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    result += v6;
    --v4;
  }

  while (v4 > 1);
  return result;
}

uint64_t __CFPrecomposeCharMacSymbol(uint64_t a1, unsigned __int16 *a2, uint64_t a3, char *a4, uint64_t a5, void *a6)
{
  if (a3 < 2 || a2[1] != 824)
  {
    return 0;
  }

  if (a5)
  {
    v6 = *a2;
    switch(v6)
    {
      case 61:
        v7 = -71;
        goto LABEL_11;
      case 8834:
        v7 = -53;
        goto LABEL_11;
      case 8712:
        v7 = -49;
LABEL_11:
        *a4 = v7;
        break;
    }
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFDateComponentsHash(void *a1)
{
  if (!a1)
  {
    __CFDateComponentsHash_cold_1();
  }

  v2 = a1[2];
  if (v2)
  {
    v3 = CFHash(v2);
  }

  else
  {
    v3 = 0;
  }

  v4 = a1[3];
  if (v4)
  {
    v4 = CFHash(v4);
  }

  v5 = v4 ^ v3;
  v6 = a1[6];
  if (a1[5] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v7 = 0;
  }

  else
  {
    v7 = a1[5];
  }

  v8 = 2678437 * v6;
  v9 = a1[10];
  if (a1[9] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v10 = 0;
  }

  else
  {
    v10 = a1[9];
  }

  v11 = a1[11];
  if (a1[12] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v12 = 0;
  }

  else
  {
    v12 = a1[12];
  }

  v13 = a1[19];
  if (v13 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v13 = 0;
  }

  v14 = v13 + v7;
  v15 = a1[21];
  if (v15 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v15 = 0;
  }

  if (v6 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v8 = 0;
  }

  v16 = v15 + v10;
  if (v9 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v17 = 0;
  }

  else
  {
    v17 = 3607 * v9;
  }

  if (v11 == 0x7FFFFFFFFFFFFFFFLL)
  {
    v18 = 0;
  }

  else
  {
    v18 = 61 * v11;
  }

  return v8 + v5 + v17 + v18 + v12 + 32832013 * v14 + 86413 * v16 + 32 * (41 * a1[18] + 11 * a1[17] - a1[14] + 8 * a1[14] + 3 * a1[15] + a1[16]);
}

CFStringRef __CFDateComponentsCopyDescription(void *a1)
{
  if (!a1)
  {
    __CFDateComponentsCopyDescription_cold_1();
  }

  v2 = _CFDateComponentsCopyDescriptionInner(a1);
  v3 = CFGetAllocator(a1);
  v4 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<CFDateComponents %p [%p]>%@", a1, v3, v2);
  CFRelease(v2);
  return v4;
}

Boolean CFStringTransform(CFMutableStringRef string, CFRange *range, CFStringRef transform, Boolean reverse)
{
  v4 = reverse;
  v53 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&__CFStringTransformGlobalLock);
  v8 = __CFStringTransformCacheID;
  if (__CFStringTransformCacheID && __CFStringTransformCacheRev == (v4 != 0))
  {
    if (__CFStringTransformCacheID == transform)
    {
LABEL_6:
      CFRelease(v8);
      __CFStringTransformCacheID = 0;
      v9 = __CFStringTransformCacheTL;
      __CFStringTransformCacheTL = 0;
      os_unfair_lock_unlock(&__CFStringTransformGlobalLock);
      goto LABEL_33;
    }

    if (CFEqual(transform, __CFStringTransformCacheID))
    {
      v8 = __CFStringTransformCacheID;
      goto LABEL_6;
    }
  }

  os_unfair_lock_unlock(&__CFStringTransformGlobalLock);
  LODWORD(v34) = 0;
  if (CFStringGetLength(transform) >= 1 && CFStringGetCharacterAtIndex(transform, 0) == 41)
  {
    if (transform == @"kCFStringTransformStripCombiningMarks"))
    {
      goto LABEL_15;
    }

    v10 = &__CFStringTransformNameMap;
    v11 = 16;
    while (--v11)
    {
      v12 = v10 + 2;
      isa = v10[2]->isa;
      v10 += 2;
      if (isa == transform)
      {
        goto LABEL_16;
      }
    }

    if (CFEqual(@"kCFStringTransformStripCombiningMarks"), transform))
    {
LABEL_15:
      v12 = &__CFStringTransformNameMap;
LABEL_16:
      v14 = v12[1];
      if (v14)
      {
        v15 = strlen(v14);
        if (v15 >= 1)
        {
          v16 = buffer;
          v17 = v15;
          do
          {
            v18 = *v14++;
            *v16++ = v18;
            --v17;
          }

          while (v17);
        }

        goto LABEL_28;
      }
    }

    else
    {
      v19 = &__CFStringTransformNameMap;
      v20 = 16;
      while (--v20)
      {
        v12 = v19 + 2;
        v21 = CFEqual(v19[2]->isa, transform);
        v19 = v12;
        if (v21)
        {
          goto LABEL_16;
        }
      }
    }
  }

  Length = CFStringGetLength(transform);
  if (CFStringGetCharactersPtr(transform))
  {
LABEL_28:
    v9 = utrans_openU();
    goto LABEL_29;
  }

  if (Length <= 1024)
  {
    v54.location = 0;
    v54.length = Length;
    CFStringGetCharacters(transform, v54, buffer);
    goto LABEL_28;
  }

  Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 2 * Length, 0x1000040BDFB0063, 0);
  if (!Typed)
  {
    goto LABEL_32;
  }

  v30 = Typed;
  v55.location = 0;
  v55.length = Length;
  CFStringGetCharacters(transform, v55, Typed);
  v9 = utrans_openU();
  CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v30);
LABEL_29:
  if (v34 >= 1 && v9)
  {
    utrans_close();
LABEL_32:
    v9 = 0;
  }

LABEL_33:
  if (v9)
  {
    v34 = 0;
    v31 = 0;
    if (range)
    {
      p_length = &range->length;
    }

    else
    {
      v31 = CFStringGetLength(string);
      p_length = &v31;
      range = &v34;
    }

    v43 = 0u;
    v44 = 0u;
    v41 = 0u;
    v42 = 0u;
    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    *buffer = string;
    v36 = CFStringGetLength(string);
    v45 = string;
    v48 = 0;
    v49 = v36;
    CharactersPtr = CFStringGetCharactersPtr(string);
    CStringPtr = 0;
    v46 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(string, 0x600u);
    }

    v47 = CStringPtr;
    v50 = 0;
    v51 = 0;
    cf = 0;
    v32 = *p_length + LODWORD(range->location);
    v33 = 0;
    utrans_trans();
    if (cf)
    {
      CFRelease(cf);
    }

    if (v33 <= 0)
    {
      *p_length = v32 - range->location;
      v24 = 1;
    }

    else
    {
      v24 = 0;
    }

    os_unfair_lock_lock(&__CFStringTransformGlobalLock);
    if (__CFStringTransformCacheID)
    {
      CFRelease(__CFStringTransformCacheID);
      utrans_close();
    }

    __CFStringTransformCacheID = CFStringCreateCopy(&__kCFAllocatorSystemDefault, transform);
    __CFStringTransformCacheTL = v9;
    __CFStringTransformCacheRev = v4 != 0;
    os_unfair_lock_unlock(&__CFStringTransformGlobalLock);
  }

  else
  {
    v24 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t __CFStringReplaceableCharAt(uint64_t a1, signed int a2)
{
  if (*(a1 + 8) <= a2)
  {
    return -1;
  }

  else if (a2 < 0)
  {
    return 0;
  }

  else
  {
    v3 = a2;
    v4 = *(a1 + 176);
    if (v4 <= a2)
    {
      return 0;
    }

    else
    {
      v5 = *(a1 + 152);
      if (v5)
      {
        return *(v5 + 2 * *(a1 + 168) + 2 * a2);
      }

      else
      {
        v8 = *(a1 + 160);
        if (v8)
        {
          return *(v8 + *(a1 + 168) + a2);
        }

        else
        {
          if (*(a1 + 192) <= a2 || (v9 = *(a1 + 184), v9 > a2))
          {
            v10 = a2 - 4;
            if (a2 < 4)
            {
              v10 = 0;
            }

            if (v10 + 64 < v4)
            {
              v4 = v10 + 64;
            }

            *(a1 + 184) = v10;
            *(a1 + 192) = v4;
            v11.length = v4 - v10;
            v11.location = *(a1 + 168) + v10;
            CFStringGetCharacters(*(a1 + 144), v11, (a1 + 16));
            v9 = *(a1 + 184);
          }

          return *(a1 + 16 + 2 * (v3 - v9));
        }
      }
    }
  }
}

uint64_t __CFStringReplaceableChar32At(uint64_t a1, signed int a2)
{
  if (*(a1 + 8) <= a2)
  {
    return 0xFFFFLL;
  }

  if (a2 < 0)
  {
    return 0;
  }

  v4 = *(a1 + 176);
  if (v4 <= a2)
  {
    return 0;
  }

  v5 = a1 + 16;
  v6 = *(a1 + 152);
  if (v6)
  {
    v7 = *(v6 + 2 * *(a1 + 168) + 2 * a2);
  }

  else
  {
    v10 = *(a1 + 160);
    if (v10)
    {
      v7 = *(v10 + *(a1 + 168) + a2);
    }

    else
    {
      if (*(a1 + 192) <= a2 || (v11 = *(a1 + 184), v11 > a2))
      {
        v12 = a2 - 4;
        if (a2 < 4)
        {
          v12 = 0;
        }

        if (v12 + 64 < v4)
        {
          v4 = v12 + 64;
        }

        *(a1 + 184) = v12;
        *(a1 + 192) = v4;
        v20.length = v4 - v12;
        v20.location = *(a1 + 168) + v12;
        CFStringGetCharacters(*(a1 + 144), v20, (a1 + 16));
        v11 = *(a1 + 184);
      }

      v7 = *(v5 + 2 * (a2 - v11));
    }
  }

  if (v7 >> 10 != 54 || *(a1 + 8) - 1 <= a2)
  {
    return v7;
  }

  v8 = v7;
  v13 = a2 + 1;
  v14 = *(a1 + 176);
  if (v14 > v13)
  {
    v15 = *(a1 + 152);
    if (v15)
    {
      v16 = *(v15 + 2 * *(a1 + 168) + 2 * v13);
    }

    else
    {
      v17 = *(a1 + 160);
      if (v17)
      {
        v16 = *(v17 + *(a1 + 168) + v13);
      }

      else
      {
        if (*(a1 + 192) <= v13 || (v18 = *(a1 + 184), v18 > v13))
        {
          v19 = a2 - 3;
          if (a2 < 3)
          {
            v19 = 0;
          }

          if (v19 + 64 < v14)
          {
            v14 = v19 + 64;
          }

          *(a1 + 184) = v19;
          *(a1 + 192) = v14;
          v21.length = v14 - v19;
          v21.location = *(a1 + 168) + v19;
          CFStringGetCharacters(*(a1 + 144), v21, (a1 + 16));
          v18 = *(a1 + 184);
        }

        v16 = *(v5 + 2 * (v13 - v18));
      }
    }

    if (v16 >> 10 == 55)
    {
      return (v8 << 10) + v16 - 56613888;
    }
  }

  return v8;
}

const char *__CFStringReplaceableReplace(uint64_t a1, int a2, int a3, UniChar *chars, int a5)
{
  v8 = *(a1 + 200);
  if (v8)
  {
    CFStringSetExternalCharactersNoCopy(v8, chars, a5, a5);
    MutableWithExternalCharactersNoCopy = *(a1 + 200);
  }

  else
  {
    MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(&__kCFAllocatorSystemDefault, chars, a5, a5, &__kCFAllocatorNull);
    *(a1 + 200) = MutableWithExternalCharactersNoCopy;
  }

  v14.location = a2;
  v14.length = a3 - a2;
  CFStringReplace(*a1, v14, MutableWithExternalCharactersNoCopy);
  Length = CFStringGetLength(*a1);
  *(a1 + 8) = Length;
  v11 = *a1;
  *(a1 + 144) = *a1;
  *(a1 + 168) = 0;
  *(a1 + 176) = Length;
  CharactersPtr = CFStringGetCharactersPtr(v11);
  result = 0;
  *(a1 + 152) = CharactersPtr;
  if (!CharactersPtr)
  {
    result = CFStringGetCStringPtr(v11, 0x600u);
  }

  *(a1 + 160) = result;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  return result;
}

void __CFStringReplaceableExtract(void *a1, int a2, int a3, UniChar *__dst)
{
  v4 = __dst;
  v6 = a2;
  v7 = a3 - a2;
  v8 = a1[19];
  if (v8)
  {
    v9 = (v8 + 2 * a1[21] + 2 * a2);

    memmove(__dst, v9, 2 * v7);
  }

  else
  {
    v10 = (a1 + 2);
    v11 = a1[23];
    v12 = v11 - v6;
    if (v11 > v6 || (v13 = a1[24], v14 = v13 <= v6, v15 = v13 - v6, v14))
    {
      v17 = __OFSUB__(v7 + v6, v11);
      v18 = v7 + v6 - v11;
      if (!((v18 < 0) ^ v17 | (v18 == 0)) && v7 + v6 < a1[24])
      {
        memmove(&__dst[v12], v10, 2 * v18);
        v7 = v12;
      }
    }

    else
    {
      if (v15 >= v7)
      {
        v16 = v7;
      }

      else
      {
        v16 = v15;
      }

      memmove(__dst, &v10[2 * (v6 - v11)], 2 * v16);
      v4 += v16;
      v6 += v16;
      v7 -= v16;
    }

    if (v7 >= 1)
    {
      v19 = a1[20];
      v20.location = a1[21] + v6;
      if (v19)
      {
        v21 = (v19 + v20.location);
        do
        {
          v22 = *v21++;
          *v4++ = v22;
          --v7;
        }

        while (v7);
      }

      else
      {
        v23 = a1[18];
        v20.length = v7;

        CFStringGetCharacters(v23, v20, v4);
      }
    }
  }
}

const char *__CFStringReplaceableCopy(uint64_t a1, int a2, int a3, int a4)
{
  v11.length = a3 - a2;
  v11.location = a2;
  v6 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, *a1, v11);
  CFStringInsert(*a1, a4, v6);
  CFRelease(v6);
  Length = CFStringGetLength(*a1);
  *(a1 + 8) = Length;
  v8 = *a1;
  *(a1 + 144) = *a1;
  *(a1 + 168) = 0;
  *(a1 + 176) = Length;
  CharactersPtr = CFStringGetCharactersPtr(v8);
  result = 0;
  *(a1 + 152) = CharactersPtr;
  if (!CharactersPtr)
  {
    result = CFStringGetCStringPtr(v8, 0x600u);
  }

  *(a1 + 160) = result;
  *(a1 + 184) = 0;
  *(a1 + 192) = 0;
  return result;
}

uint64_t (**__CFStringEncodingGetHebrewConverterDefinition(int a1, uint64_t (*a2)(uint64_t)))()
{
  if (!__CFStringEncodingPrecomposeLatinCharacter_4)
  {
    __CFStringEncodingPrecomposeLatinCharacter_4 = a2(4);
    __CFStringEncodingIsValidCombiningCharacterForLatin1_2 = a2(3);
  }

  v4 = __CFConverterISOLatinHebrew;
  v5 = __CFConverterMacHebrew;
  if (a1 != 5)
  {
    v5 = 0;
  }

  if (a1 != 520)
  {
    v4 = v5;
  }

  if (a1 == 1285)
  {
    return __CFConverterWindowsHebrew;
  }

  else
  {
    return v4;
  }
}

uint64_t __CFToISOLatinHebrew(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0xA0)
  {
    v3 = a2;
    goto LABEL_3;
  }

  result = 0;
  if (a2 != 161 && a2 <= 0x203E)
  {
    v5 = &ISOLatinHebrew_from_uni;
    v6 = &unk_183377890;
    while (1)
    {
      v7 = &v5[2 * ((v6 - v5) >> 3)];
      v8 = *v7;
      if (v8 <= a2)
      {
        if (v8 >= a2)
        {
          v3 = *(v7 + 2);
LABEL_3:
          *a3 = v3;
          return 1;
        }

        v5 = v7 + 2;
      }

      else
      {
        v6 = v7 - 2;
      }

      if (v5 > v6)
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL __CFFromISOLatinHebrew(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (a2 > 0xA0)
  {
    if (a2 <= 0xBE)
    {
      v3 = a2 - 161;
      v4 = &ISOLatinHebrew_to_uni;
LABEL_7:
      a2 = v4[v3];
      goto LABEL_8;
    }

    if (a2 - 251 >= 0xFFFFFFE4)
    {
      v3 = a2 - 223;
      v4 = &ISOLatinHebrew_to_uni2;
      goto LABEL_7;
    }

    a2 = 65533;
  }

LABEL_8:
  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToMacHebrew(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a5;
  }

  if (!a5)
  {
    v6 = a3;
  }

  if (v6 < 1)
  {
    result = 0;
    goto LABEL_23;
  }

  result = 0;
  while (1)
  {
    v8 = *(a2 + 2 * result);
    if (v8 <= 0x7F)
    {
      goto LABEL_18;
    }

    if ((v8 + 1204) < 0x554u)
    {
      break;
    }

    v9 = &unk_183377A6C;
    v10 = &MacHebrew_from_uni;
    while (1)
    {
      v11 = &v10[2 * ((v9 - v10) >> 3)];
      v12 = *v11;
      if (v12 <= v8)
      {
        break;
      }

      v9 = v11 - 2;
LABEL_15:
      if (v10 > v9)
      {
        goto LABEL_23;
      }
    }

    if (v12 < v8)
    {
      v10 = v11 + 2;
      goto LABEL_15;
    }

    LOBYTE(v8) = *(v11 + 2);
LABEL_18:
    if (a5)
    {
      *(a4 + result) = v8;
    }

    if (++result == v6)
    {
      result = v6;
      break;
    }
  }

LABEL_23:
  *a6 = result;
  return result;
}

uint64_t __CFFromMacHebrew(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  if (a5 >= a3)
  {
    v6 = a3;
  }

  else
  {
    v6 = a5;
  }

  if (!a5)
  {
    v6 = a3;
  }

  if (v6 < 1)
  {
    result = 0;
    goto LABEL_18;
  }

  for (result = 0; result != v6; ++result)
  {
    v8 = *(a2 + result);
    if ((v8 & 0x80000000) == 0)
    {
      if (!a5)
      {
        continue;
      }

LABEL_10:
      *(a4 + 2 * result) = v8;
      continue;
    }

    if (v8 == -64 || *(a2 + result) == 222)
    {
      goto LABEL_18;
    }

    LOWORD(v8) = MacHebrew_to_uni[*(a2 + result) & 0x7F];
    if (a5)
    {
      goto LABEL_10;
    }
  }

  result = v6;
LABEL_18:
  *a6 = result;
  return result;
}

uint64_t __CFToWindowsHebrew(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0xA3)
  {
    v3 = a2;
    goto LABEL_3;
  }

  result = 0;
  if (a2 != 164 && a2 <= 0x2122)
  {
    v5 = &WindowsHebrew_from_uni;
    v6 = &unk_183377D00;
    while (1)
    {
      v7 = &v5[2 * ((v6 - v5) >> 3)];
      v8 = *v7;
      if (v8 <= a2)
      {
        if (v8 >= a2)
        {
          v3 = *(v7 + 2);
LABEL_3:
          *a3 = v3;
          return 1;
        }

        v5 = v7 + 2;
      }

      else
      {
        v6 = v7 - 2;
      }

      if (v5 > v6)
      {
        return 0;
      }
    }
  }

  return result;
}

BOOL __CFFromWindowsHebrew(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = WindowsHebrew_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFAttributedStringAccess(uint64_t a1, uint64_t a2, int a3)
{
  String = CFAttributedStringGetString(*(a1 + 72));

  return doAccess(a1, a2, a3, String);
}

uint64_t __CFAttributedStringExtract(uint64_t a1, CFIndex a2, CFIndex a3, UniChar *a4, int a5, int *a6)
{
  String = CFAttributedStringGetString(*(a1 + 72));

  return doExtract(a2, a3, a4, a5, a6, String);
}

unint64_t __CFAttributedStringReplace(uint64_t a1, CFIndex a2, CFIndex a3, UniChar *a4, int a5, int *a6)
{
  v12 = *(a1 + 72);
  String = CFAttributedStringGetString(v12);
  Length = CFAttributedStringGetLength(v12);
  if (*a6 > 0)
  {
    return 0;
  }

  v16 = Length;
  if (!a4 && a5)
  {
    v15 = 0;
    v17 = 1;
LABEL_8:
    *a6 = v17;
    return v15;
  }

  if (a2 > a3)
  {
    v15 = 0;
    v17 = 8;
    goto LABEL_8;
  }

  v18 = __pinIndex(a2, Length, String, 1, 1);
  v19 = __pinIndex(a3, v16, String, 0, 1);
  MutableWithExternalCharactersNoCopy = *(a1 + 80);
  if (MutableWithExternalCharactersNoCopy)
  {
    CFStringSetExternalCharactersNoCopy(*(a1 + 80), a4, a5, a5);
  }

  else
  {
    MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(&__kCFAllocatorSystemDefault, a4, a5, a5, &__kCFAllocatorNull);
    *(a1 + 80) = MutableWithExternalCharactersNoCopy;
  }

  v23.length = v19 - v18;
  v23.location = v18;
  CFAttributedStringReplaceString(v12, v23, MutableWithExternalCharactersNoCopy);
  if (*(a1 + 16) > v18 || *(a1 + 48) != *(a1 + 88))
  {
    *(a1 + 16) = 0;
    *(a1 + 28) = 0;
    *(a1 + 44) = 0;
    *(a1 + 36) = 0;
    *(a1 + 52) = 0;
  }

  v15 = CFAttributedStringGetLength(v12) - v16;
  v21 = CFAttributedStringGetString(v12);
  doAccess(a1, v15 + v19, 1, v21);
  return v15;
}

CFIndex __CFAttributedStringCopy(uint64_t a1, CFIndex a2, CFIndex a3, CFIndex a4, int a5, int *a6)
{
  v12 = *(a1 + 72);
  String = CFAttributedStringGetString(v12);
  result = CFAttributedStringGetLength(v12);
  if (*a6 > 0)
  {
    return result;
  }

  if (a2 > a3 || (v15 = result, a2 < a4) && a4 < a3)
  {
    *a6 = 8;
    return result;
  }

  v16 = __pinIndex(a2, result, String, 1, 1);
  v17 = __pinIndex(a3, v15, String, 0, 1);
  v18 = v17 - v16;
  v26.location = v16;
  v26.length = v17 - v16;
  v19 = CFAttributedStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v12, v26);
  CFAttributedStringBeginEditing(v12);
  v24.location = a4;
  v24.length = 0;
  CFAttributedStringReplaceAttributedString(v12, v24, v19);
  CFRelease(v19);
  if (a5)
  {
    if (v16 > a4)
    {
      v16 = v17;
    }

    v25.location = v16;
    v25.length = v18;
    CFAttributedStringReplaceString(v12, v25, &stru_1EF068AA8);
  }

  CFAttributedStringEndEditing(v12);
  if (v16 >= a4)
  {
    v20 = a4;
  }

  else
  {
    v20 = v16;
  }

  if (*(a1 + 48) == *(a1 + 88))
  {
    v22 = *(a1 + 16);
    if (a5)
    {
      if (v22 <= v20)
      {
        goto LABEL_16;
      }
    }

    else if (v22 <= a4)
    {
      goto LABEL_16;
    }
  }

  *(a1 + 16) = 0;
  *(a1 + 28) = 0;
  *(a1 + 44) = 0;
  *(a1 + 36) = 0;
  *(a1 + 52) = 0;
LABEL_16:
  v21 = CFAttributedStringGetString(v12);

  return doAccess(a1, v18 + a4, 1, v21);
}

uint64_t doExtract(CFIndex a1, CFIndex a2, UniChar *a3, int a4, int *a5, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  if (*a5 > 0)
  {
    return 0;
  }

  if (a4 < 0 || (v14 = Length, !a3) && a4)
  {
    v13 = 0;
    v15 = 1;
LABEL_7:
    *a5 = v15;
    return v13;
  }

  if (a1 < 0 || a2 < a1 || a2 - a1 >= 0x80000000)
  {
    v13 = 0;
    v15 = 8;
    goto LABEL_7;
  }

  v17 = __pinIndex(a1, Length, theString, 1, 1);
  v13 = __pinIndex(a2, v14, theString, 1, 1) - v17;
  if (a3 && a4)
  {
    if (v13 >= a4)
    {
      v18 = a4;
    }

    else
    {
      v18 = v13;
    }

    v21.length = v18;
    v21.location = v17;
    CFStringGetCharacters(theString, v21, a3);
  }

  v19 = *a5;
  if (*a5 <= 0)
  {
    if (v13 < 1 || v13 >= a4)
    {
      if (v13 == a4)
      {
        v20 = -124;
      }

      else
      {
        v20 = 15;
      }
    }

    else
    {
      v20 = 0;
      a3[v13] = 0;
      if (v19 != -124)
      {
        return v13;
      }
    }

    *a5 = v20;
  }

  return v13;
}

unint64_t __CFStringReplace(uint64_t a1, CFIndex a2, CFIndex a3, UniChar *a4, int a5, int *a6)
{
  v12 = *(a1 + 72);
  Length = CFStringGetLength(v12);
  if (*a6 > 0)
  {
    return 0;
  }

  v15 = Length;
  if (!a4 && a5)
  {
    v14 = 0;
    v16 = 1;
LABEL_8:
    *a6 = v16;
    return v14;
  }

  if (a2 > a3)
  {
    v14 = 0;
    v16 = 8;
    goto LABEL_8;
  }

  v17 = __pinIndex(a2, Length, v12, 1, 1);
  v18 = __pinIndex(a3, v15, v12, 0, 1);
  MutableWithExternalCharactersNoCopy = *(a1 + 80);
  if (MutableWithExternalCharactersNoCopy)
  {
    CFStringSetExternalCharactersNoCopy(*(a1 + 80), a4, a5, a5);
  }

  else
  {
    MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(&__kCFAllocatorSystemDefault, a4, a5, a5, &__kCFAllocatorNull);
    *(a1 + 80) = MutableWithExternalCharactersNoCopy;
  }

  v21.length = v18 - v17;
  v21.location = v17;
  CFStringReplace(v12, v21, MutableWithExternalCharactersNoCopy);
  if (*(a1 + 16) > v17 || *(a1 + 48) != *(a1 + 88))
  {
    *(a1 + 16) = 0;
    *(a1 + 28) = 0;
    *(a1 + 44) = 0;
    *(a1 + 36) = 0;
    *(a1 + 52) = 0;
  }

  v14 = CFStringGetLength(v12) - v15;
  doAccess(a1, v14 + v18, 1, v12);
  return v14;
}

CFIndex __CFStringCopy(uint64_t a1, CFIndex a2, CFIndex a3, CFIndex a4, int a5, int *a6)
{
  v12 = *(a1 + 72);
  result = CFStringGetLength(v12);
  if (*a6 > 0)
  {
    return result;
  }

  if (a2 > a3 || (v14 = result, a2 < a4) && a4 < a3)
  {
    *a6 = 8;
    return result;
  }

  v15 = __pinIndex(a2, result, v12, 1, 1);
  v16 = __pinIndex(a3, v14, v12, 0, 1);
  v22.location = v15;
  v22.length = v16 - v15;
  v17 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v12, v22);
  CFStringInsert(v12, a4, v17);
  CFRelease(v17);
  if (a5)
  {
    if (v15 <= a4)
    {
      v18 = v15;
    }

    else
    {
      v18 = v16;
    }

    v21.location = v18;
    v21.length = v16 - v15;
    CFStringDelete(v12, v21);
    if (*(a1 + 48) == *(a1 + 88))
    {
      v19 = v18 >= a4 ? a4 : v18;
      if (*(a1 + 16) <= v19)
      {
        goto LABEL_20;
      }
    }

    goto LABEL_19;
  }

  if (*(a1 + 48) != *(a1 + 88) || *(a1 + 16) > a4)
  {
LABEL_19:
    *(a1 + 16) = 0;
    *(a1 + 36) = 0;
    *(a1 + 28) = 0;
    *(a1 + 44) = 0;
    *(a1 + 48) = 0;
  }

LABEL_20:

  return doAccess(a1, v16 - v15 + a4, 1, v12);
}

CFStringRef CFStringGetNameOfEncoding(CFStringEncoding encoding)
{
  LODWORD(v1) = encoding;
  os_unfair_lock_lock(&CFStringGetNameOfEncoding_mappingTableLock);
  if (CFStringGetNameOfEncoding_mappingTable)
  {
    Value = CFDictionaryGetValue(CFStringGetNameOfEncoding_mappingTable, v1);
    os_unfair_lock_unlock(&CFStringGetNameOfEncoding_mappingTableLock);
    if (Value)
    {
      return Value;
    }
  }

  else
  {
    os_unfair_lock_unlock(&CFStringGetNameOfEncoding_mappingTableLock);
  }

  v3 = __CFStringEncodingCopyNameAsCF(v1);
  if (v3)
  {
    v4 = v3;
    os_unfair_lock_lock(&CFStringGetNameOfEncoding_mappingTableLock);
    if (CFStringGetNameOfEncoding_mappingTable)
    {
      v1 = v1;
      Value = CFDictionaryGetValue(CFStringGetNameOfEncoding_mappingTable, v1);
      if (Value)
      {
LABEL_12:
        os_unfair_lock_unlock(&CFStringGetNameOfEncoding_mappingTableLock);
        CFRelease(v4);
        return Value;
      }

      Mutable = CFStringGetNameOfEncoding_mappingTable;
    }

    else
    {
      Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
      CFStringGetNameOfEncoding_mappingTable = Mutable;
      v1 = v1;
    }

    CFDictionaryAddValue(Mutable, v1, v4);
    Value = v4;
    goto LABEL_12;
  }

  return 0;
}

UInt32 CFStringConvertEncodingToWindowsCodepage(CFStringEncoding encoding)
{
  result = __CFStringEncodingGetWindowsCodePage(encoding);
  if (!result)
  {
    return -1;
  }

  return result;
}

uint64_t __CFGetNextSearchPathEnumeration(uint64_t a1, char *a2, int64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a3 > 1023)
  {
    v5 = MEMORY[0x1865E3930](a1, a2);
  }

  else
  {
    v5 = MEMORY[0x1865E3930](a1, __source);
    strlcpy(a2, __source, a3);
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

CFURLRef _CFCreateContainerURLForSecurityApplicationGroupIdentifier(const void *a1)
{
  _CFGetEUID();

  return _CFCreateContainerURLForSecurityApplicationIdentifierGroupIdentifierAndUser(0, a1);
}

void __CFTreeDeallocate(unint64_t *cf)
{
  v2 = atomic_load(cf + 1);
  v3 = v2 & 3;
  if (v3)
  {
    if (v3 == 1)
    {
      v4 = &__kCFTypeTreeCallBacks;
    }

    else
    {
      v4 = cf[7];
    }
  }

  else
  {
    v4 = &__kCFNullTreeCallBacks;
  }

  v5 = *(v4 + 1);
  if (v5)
  {
    v5(cf[6]);
  }

  v6 = atomic_load(cf + 1);
  if ((~v6 & 3) == 0)
  {
    v7 = CFGetAllocator(cf);
    v8 = cf[7];

    CFAllocatorDeallocate(v7, v8);
  }
}

__CFString *__CFTreeCopyDescription(unint64_t *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  v4 = atomic_load(a1 + 1);
  v5 = v4 & 3;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = &__kCFTypeTreeCallBacks;
    }

    else
    {
      v6 = a1[7];
    }
  }

  else
  {
    v6 = &__kCFNullTreeCallBacks;
  }

  v7 = *(v6 + 2);
  if (!v7 || (v8 = v7(a1[6])) == 0)
  {
    v8 = CFStringCreateWithFormat(v2, 0, @"<CFTree context %p>", a1[6]);
  }

  ChildCount = CFTreeGetChildCount(a1);
  CFStringAppendFormat(Mutable, 0, @"<CFTree %p [%p]>{children = %lu, context = %@}", a1, v2, ChildCount, v8);
  if (v8)
  {
    CFRelease(v8);
  }

  return Mutable;
}

CFTreeRef CFTreeCreate(CFAllocatorRef allocator, const CFTreeContext *context)
{
  Instance = _CFRuntimeCreateInstance(allocator, 0x1CuLL, 48, 0, v2, v3, v4, v5);
  v8 = Instance;
  if (Instance)
  {
    v9 = atomic_load(Instance + 1);
    v10 = v9;
    do
    {
      atomic_compare_exchange_strong(Instance + 1, &v10, v9 & 0xFFFFFFFFFFFFFFFCLL);
      v11 = v10 == v9;
      v9 = v10;
    }

    while (!v11);
    CFTreeSetContext(Instance, context);
  }

  return v8;
}

void CFTreeSetContext(CFTreeRef tree, const CFTreeContext *context)
{
  __CFCheckCFInfoPACSignature(tree);
  v4 = _CFGetNonObjCTypeID(tree);
  if (v4 != 28)
  {
    _CFAssertMismatchedTypeID(0x1CuLL, v4);
  }

  v5 = atomic_load(tree + 1);
  v6 = atomic_load(tree + 1);
  v7 = v6 & 3;
  if (v7)
  {
    if (v7 == 1)
    {
      v8 = &__kCFTypeTreeCallBacks;
    }

    else
    {
      v8 = *(tree + 7);
    }
  }

  else
  {
    v8 = &__kCFNullTreeCallBacks;
  }

  v9 = *(tree + 6);
  v10 = CFGetAllocator(tree);
  v11 = v10;
  if (!context)
  {
    copyDescription = 0;
    goto LABEL_19;
  }

  retain = context->retain;
  if (retain)
  {
    if (retain == CFRetain && context->release == CFRelease && context->copyDescription == CFCopyDescription)
    {
      copyDescription = 1;
      goto LABEL_19;
    }
  }

  else if (!context->release)
  {
    copyDescription = context->copyDescription;
    if (!copyDescription)
    {
      goto LABEL_19;
    }
  }

  Typed = CFAllocatorAllocateTyped(v10, 24, 0x80040D6874129, 0);
  *(tree + 7) = Typed;
  if (__CFOASafe == 1)
  {
    __CFSetLastAllocationEventName();
    Typed = *(tree + 7);
  }

  *Typed = *&context->retain;
  *(Typed + 16) = context->copyDescription;
  copyDescription = 3;
LABEL_19:
  v15 = atomic_load(tree + 1);
  v16 = v15;
  do
  {
    atomic_compare_exchange_strong(tree + 1, &v16, v15 & 0xFFFFFFFFFFFFFFFCLL | copyDescription);
    v17 = v16 == v15;
    v15 = v16;
  }

  while (!v17);
  v18 = atomic_load(tree + 1);
  v19 = v18 & 3;
  if (v19)
  {
    if (v19 == 1)
    {
      v20 = &__kCFTypeTreeCallBacks;
    }

    else
    {
      v20 = *(tree + 7);
    }
  }

  else
  {
    v20 = &__kCFNullTreeCallBacks;
  }

  v21 = *v20;
  info = context->info;
  if (v21)
  {
    info = v21(info);
  }

  *(tree + 6) = info;
  v23 = *(v8 + 1);
  if (v23)
  {
    v23(v9);
  }

  if ((~v5 & 3) == 0)
  {

    CFAllocatorDeallocate(v11, v8);
  }
}

CFIndex CFTreeGetChildCount(CFTreeRef tree)
{
  __CFCheckCFInfoPACSignature(tree);
  v2 = _CFGetNonObjCTypeID(tree);
  if (v2 != 28)
  {
    _CFAssertMismatchedTypeID(0x1CuLL, v2);
  }

  v3 = *(tree + 4);
  if (!v3)
  {
    return 0;
  }

  result = 0;
  do
  {
    v3 = *(v3 + 24);
    ++result;
  }

  while (v3);
  return result;
}

CFTreeRef CFTreeGetParent(CFTreeRef tree)
{
  __CFCheckCFInfoPACSignature(tree);
  v2 = _CFGetNonObjCTypeID(tree);
  if (v2 != 28)
  {
    _CFAssertMismatchedTypeID(0x1CuLL, v2);
  }

  return *(tree + 2);
}

CFTreeRef CFTreeGetNextSibling(CFTreeRef tree)
{
  __CFCheckCFInfoPACSignature(tree);
  v2 = _CFGetNonObjCTypeID(tree);
  if (v2 != 28)
  {
    _CFAssertMismatchedTypeID(0x1CuLL, v2);
  }

  return *(tree + 3);
}

CFTreeRef CFTreeGetFirstChild(CFTreeRef tree)
{
  __CFCheckCFInfoPACSignature(tree);
  v2 = _CFGetNonObjCTypeID(tree);
  if (v2 != 28)
  {
    _CFAssertMismatchedTypeID(0x1CuLL, v2);
  }

  return *(tree + 4);
}

CFTreeRef CFTreeFindRoot(CFTreeRef tree)
{
  v1 = tree;
  __CFCheckCFInfoPACSignature(tree);
  v2 = _CFGetNonObjCTypeID(v1);
  if (v2 != 28)
  {
    _CFAssertMismatchedTypeID(0x1CuLL, v2);
  }

  do
  {
    result = v1;
    v1 = v1[2];
  }

  while (v1);
  return result;
}

void CFTreeGetContext(CFTreeRef tree, CFTreeContext *context)
{
  __CFCheckCFInfoPACSignature(tree);
  v4 = _CFGetNonObjCTypeID(tree);
  if (v4 != 28)
  {
    _CFAssertMismatchedTypeID(0x1CuLL, v4);
  }

  v5 = atomic_load(tree + 1);
  v6 = v5 & 3;
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = &__kCFTypeTreeCallBacks;
    }

    else
    {
      v7 = *(tree + 7);
    }
  }

  else
  {
    v7 = &__kCFNullTreeCallBacks;
  }

  v8 = *(tree + 6);
  context->version = 0;
  context->info = v8;
  *&context->retain = *v7;
  context->copyDescription = *(v7 + 2);
}

CFTreeRef CFTreeGetChildAtIndex(CFTreeRef tree, CFIndex idx)
{
  __CFCheckCFInfoPACSignature(tree);
  v4 = _CFGetNonObjCTypeID(tree);
  if (v4 != 28)
  {
    _CFAssertMismatchedTypeID(0x1CuLL, v4);
  }

  result = *(tree + 4);
  if (result)
  {
    v6 = idx == 0;
  }

  else
  {
    v6 = 1;
  }

  if (!v6)
  {
    v7 = idx - 1;
    do
    {
      result = *(result + 3);
      if (result)
      {
        v8 = v7 == 0;
      }

      else
      {
        v8 = 1;
      }

      --v7;
    }

    while (!v8);
  }

  return result;
}

void CFTreeGetChildren(CFTreeRef tree, CFTreeRef *children)
{
  __CFCheckCFInfoPACSignature(tree);
  v4 = _CFGetNonObjCTypeID(tree);
  if (v4 != 28)
  {
    _CFAssertMismatchedTypeID(0x1CuLL, v4);
  }

  for (i = *(tree + 4); i; i = *(i + 3))
  {
    *children++ = i;
  }
}

void CFTreeApplyFunctionToChildren(CFTreeRef tree, CFTreeApplierFunction applier, void *context)
{
  __CFCheckCFInfoPACSignature(tree);
  v6 = _CFGetNonObjCTypeID(tree);
  if (v6 != 28)
  {
    _CFAssertMismatchedTypeID(0x1CuLL, v6);
  }

  for (i = *(tree + 4); i; i = *(i + 24))
  {
    (applier)(i, context);
  }
}

void CFTreePrependChild(CFTreeRef tree, CFTreeRef newChild)
{
  __CFCheckCFInfoPACSignature(tree);
  v4 = _CFGetNonObjCTypeID(tree);
  if (v4 != 28)
  {
    _CFAssertMismatchedTypeID(0x1CuLL, v4);
  }

  CFRetain(newChild);
  *(newChild + 2) = tree;
  v5 = *(tree + 4);
  *(newChild + 3) = v5;
  if (!v5)
  {
    *(tree + 5) = newChild;
  }

  *(tree + 4) = newChild;
}

void CFTreeAppendChild(CFTreeRef tree, CFTreeRef newChild)
{
  __CFCheckCFInfoPACSignature(tree);
  v4 = _CFGetNonObjCTypeID(tree);
  if (v4 != 28 || (__CFCheckCFInfoPACSignature(newChild), v4 = _CFGetNonObjCTypeID(newChild), v4 != 28))
  {
    _CFAssertMismatchedTypeID(0x1CuLL, v4);
  }

  if (*(newChild + 2))
  {
    __break(1u);
  }

  else
  {
    CFRetain(newChild);
    CFGetAllocator(tree);
    *(newChild + 2) = tree;
    *(newChild + 3) = 0;
    v5 = (tree + 32);
    if (*(tree + 4))
    {
      v5 = (*(tree + 5) + 24);
    }

    *v5 = newChild;
    *(tree + 5) = newChild;
  }
}

void CFTreeInsertSibling(CFTreeRef tree, CFTreeRef newSibling)
{
  __CFCheckCFInfoPACSignature(tree);
  v4 = _CFGetNonObjCTypeID(tree);
  if (v4 != 28 || (__CFCheckCFInfoPACSignature(newSibling), v4 = _CFGetNonObjCTypeID(newSibling), v4 != 28))
  {
    _CFAssertMismatchedTypeID(0x1CuLL, v4);
  }

  CFRetain(newSibling);
  CFGetAllocator(tree);
  *(newSibling + 2) = *(tree + 2);
  *(newSibling + 3) = *(tree + 3);
  *(tree + 3) = newSibling;
  v5 = *(tree + 2);
  if (v5)
  {
    if (*(v5 + 40) == tree)
    {
      *(v5 + 40) = newSibling;
    }
  }
}

void CFTreeRemove(CFTreeRef tree)
{
  __CFCheckCFInfoPACSignature(tree);
  v2 = _CFGetNonObjCTypeID(tree);
  if (v2 != 28)
  {
    _CFAssertMismatchedTypeID(0x1CuLL, v2);
  }

  v3 = tree + 16;
  v4 = *(tree + 2);
  if (v4)
  {
    v5 = *(v4 + 32);
    if (v5 == tree)
    {
      v8 = *(tree + 3);
      *(v4 + 32) = v8;
      if (!v8)
      {
        *(*v3 + 40) = 0;
      }
    }

    else
    {
      while (v5)
      {
        v6 = v5;
        v5 = v5[3];
        if (v5 == tree)
        {
          v6[3] = *(tree + 3);
          v7 = *(tree + 2);
          if (*(v7 + 40) == tree)
          {
            *(v7 + 40) = v6;
          }

          break;
        }
      }
    }

    *v3 = 0;
    *(tree + 3) = 0;

    CFRelease(tree);
  }
}

void CFTreeRemoveAllChildren(CFTreeRef tree)
{
  __CFCheckCFInfoPACSignature(tree);
  v2 = _CFGetNonObjCTypeID(tree);
  if (v2 != 28)
  {
    _CFAssertMismatchedTypeID(0x1CuLL, v2);
  }

  v3 = *(tree + 4);
  *(tree + 4) = 0;
  *(tree + 5) = 0;
  if (v3)
  {
    do
    {
      v4 = v3[3];
      v3[2] = 0;
      v3[3] = 0;
      CFRelease(v3);
      v3 = v4;
    }

    while (v4);
  }
}

void CFTreeSortChildren(CFTreeRef tree, CFComparatorFunction comparator, void *context)
{
  v23 = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(tree);
  v6 = _CFGetNonObjCTypeID(tree);
  if (v6 != 28)
  {
    _CFAssertMismatchedTypeID(0x1CuLL, v6);
  }

  ChildCount = CFTreeGetChildCount(tree);
  if (ChildCount >= 2)
  {
    v11 = ChildCount;
    memset(v22, 0, 512);
    if (ChildCount >= 0x80)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * ChildCount, 0x2004093837F09, 0);
      v12 = Typed != v22;
      if (__CFOASafe == 1 && Typed != v22)
      {
        v14 = *(tree + 7);
        __CFSetLastAllocationEventName();
        v12 = 1;
      }
    }

    else
    {
      v12 = 0;
      Typed = v22;
    }

    v15 = *(tree + 4);
    if (v15)
    {
      v16 = Typed;
      do
      {
        *v16++ = v15;
        v15 = *(v15 + 24);
      }

      while (v15);
    }

    v21[0] = comparator;
    v21[1] = context;
    CFQSortArray(Typed, v11, 8, __CFTreeCompareValues, v21, v8, v9, v10);
    v17 = *Typed;
    *(tree + 4) = *Typed;
    for (i = 1; i != v11; ++i)
    {
      v19 = v17;
      v17 = *(Typed + i);
      *(v19 + 24) = v17;
    }

    *(v17 + 24) = 0;
    *(tree + 5) = *(Typed + v11 - 1);
    if (v12)
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
    }
  }

  v20 = *MEMORY[0x1E69E9840];
}

const char *_CFURLCStringIsPromiseName(const char *__s)
{
  if (__s)
  {
    v1 = __s;
    if (*__s == 46 && (v2 = strlen(__s), v2 >= 7))
    {
      return (*&v1[v2 - 7] == 1818454318 && *&v1[v2 - 4] == 1685417836);
    }

    else
    {
      return 0;
    }
  }

  return __s;
}

CFDictionaryRef _CFURLPromiseCreateProperties(void *a1, void *a2, int a3)
{
  keys[3] = *MEMORY[0x1E69E9840];
  keys[0] = @"NSURLNameKey";
  keys[1] = @"NSURLFileSizeKey";
  keys[2] = @"NSURLFileResourceTypeKey";
  values[0] = a1;
  values[1] = a2;
  v3 = &kCFURLFileResourceTypeRegular;
  if (a3)
  {
    v3 = &kCFURLFileResourceTypeDirectory;
  }

  values[2] = *v3;
  result = CFDictionaryCreate(0, keys, values, 3, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void *_CFURLCopyPropertiesOfPromiseAtURL(CFURLRef fileURL, __CFError **a2)
{
  error[1] = *MEMORY[0x1E69E9840];
  v3 = CFReadStreamCreateWithFile(0, fileURL);
  error[0] = 0;
  if (v3)
  {
    v4 = v3;
    if (!CFReadStreamOpen(v3))
    {
      values = CFReadStreamCopyError(v4);
      v10 = CFDictionaryCreate(0, &kCFErrorUnderlyingErrorKey, &values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      if (values && (Domain = CFErrorGetDomain(values), CFEqual(Domain, @"NSPOSIXErrorDomain")))
      {
        if (CFErrorGetCode(values) == 2)
        {
          v12 = 4;
        }

        else
        {
          v12 = 256;
        }
      }

      else
      {
        v12 = 256;
      }

      error[0] = CFErrorCreate(0, @"NSCocoaErrorDomain", v12, v10);
      if (values)
      {
        CFRelease(values);
      }

      if (v10)
      {
        CFRelease(v10);
      }

      v5 = 0;
LABEL_29:
      v13 = error[0];
      if (!error[0])
      {
        goto LABEL_32;
      }

      goto LABEL_30;
    }

    v5 = CFPropertyListCreateWithStream(0, v4, 0, 1uLL, 0, error);
    CFReadStreamClose(v4);
    if (v5)
    {
      if (CFGetTypeID(v5) != 18)
      {
        CFRelease(v5);
        v13 = CFErrorCreate(0, @"NSCocoaErrorDomain", 259, 0);
        error[0] = v13;
        if (v13)
        {
          goto LABEL_25;
        }

        goto LABEL_21;
      }

      Value = CFDictionaryGetValue(v5, @"NSURLFileResourceTypeKey");
      if (Value)
      {
        v7 = Value;
        CFDictionarySetValue(v5, @"NSURLIsSymbolicLinkKey", &__kCFBooleanFalse);
        CFDictionarySetValue(v5, @"NSURLIsAliasFileKey", &__kCFBooleanFalse);
        CFDictionarySetValue(v5, @"NSURLIsVolumeKey", &__kCFBooleanFalse);
        if (CFEqual(v7, @"NSURLFileResourceTypeRegular"))
        {
          CFDictionarySetValue(v5, @"NSURLIsPackageKey", &__kCFBooleanFalse);
          CFDictionarySetValue(v5, @"NSURLIsDirectoryKey", &__kCFBooleanFalse);
          v8 = &__kCFBooleanTrue;
          v9 = v5;
        }

        else
        {
          CFDictionarySetValue(v5, @"NSURLIsPackageKey", &__kCFBooleanTrue);
          CFDictionarySetValue(v5, @"NSURLIsDirectoryKey", &__kCFBooleanTrue);
          v9 = v5;
          v8 = &__kCFBooleanFalse;
        }

        CFDictionarySetValue(v9, @"NSURLIsRegularFileKey", v8);
        goto LABEL_29;
      }

      CFRelease(v5);
    }

    v13 = error[0];
    if (error[0])
    {
LABEL_25:
      v5 = 0;
      if (a2)
      {
LABEL_31:
        *a2 = v13;
        goto LABEL_32;
      }

      goto LABEL_26;
    }

LABEL_21:
    v13 = CFErrorCreate(0, @"NSCocoaErrorDomain", 256, 0);
    v5 = 0;
    error[0] = v13;
    if (!v13)
    {
      goto LABEL_32;
    }

LABEL_30:
    if (a2)
    {
      goto LABEL_31;
    }

LABEL_26:
    CFRelease(v13);
LABEL_32:
    CFRelease(v4);
    goto LABEL_33;
  }

  v5 = 0;
LABEL_33:
  v14 = *MEMORY[0x1E69E9840];
  return v5;
}

CFStringRef _CFURLCopyLogicalNameOfPromiseAtURL(const __CFURL *a1, CFErrorRef *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  if (CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1026) && (v3 = getxattr(buffer, "com.apple.icloud.itemName", value, 0x2FCuLL, 0, 1), v3 >= 1))
  {
    v4 = v3;
    v5 = CFStringFileSystemEncoding();
    v6 = CFStringCreateWithBytes(0, value, v4, v5, 0);
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v6 = 0;
    if (!a2)
    {
      goto LABEL_8;
    }
  }

  if (!v6)
  {
    *a2 = CFErrorCreate(0, @"NSCocoaErrorDomain", 256, 0);
  }

LABEL_8:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

const __CFURL *_CFURLCopyLogicalURLOfPromiseAtURL(const __CFURL *a1, CFErrorRef *a2)
{
  v4 = _CFURLCopyLogicalNameOfPromiseAtURL(a1, a2);
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  PathComponent = CFURLCreateCopyDeletingLastPathComponent(0, a1);
  if (!PathComponent)
  {
    v8 = 0;
    if (!a2)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (!v8)
    {
      *a2 = CFErrorCreate(0, @"NSCocoaErrorDomain", 256, 0);
      CFRelease(v5);
      return v8;
    }

    goto LABEL_9;
  }

  v7 = PathComponent;
  v8 = CFURLCreateCopyAppendingPathComponent(0, PathComponent, v5, 0);
  CFRelease(v7);
  if (a2)
  {
    goto LABEL_7;
  }

LABEL_9:
  CFRelease(v5);
  if (v8)
  {
    _CFURLPromiseSetPhysicalURL(v8, a1);
  }

  return v8;
}

CFStringRef _CFURLCopyPromiseNameOfLogicalURL(const __CFURL *a1)
{
  *&v23[253] = *MEMORY[0x1E69E9840];
  if (_CFURLIsFileURL(a1))
  {
    PathComponent = CFURLCopyLastPathComponent(a1);
    if (PathComponent)
    {
      v3 = PathComponent;
      if (CFStringGetLength(PathComponent) < 1)
      {
        v7 = 0;
LABEL_27:
        CFRelease(v3);
        goto LABEL_28;
      }

      range.location = 0;
      range.length = 0;
      v18 = 0;
      v19 = 0;
      _CFGetPathExtensionRangesFromPathComponent(v3, &range.location, &v18);
      location = range.location;
      if (range.location == -1 || (v5 = range.length, range.length > 50))
      {
        Length = CFStringGetLength(v3);
        v5 = 0;
        location = -1;
      }

      else
      {
        if (v18 != -1 && v19 + range.length <= 49)
        {
          v6 = 0;
          while (CFStringCompareWithOptions(v3, _CFURLCopyPromiseNameOfLogicalURL_compressionExtensions[v6], range, 0))
          {
            if (++v6 == 4)
            {
              location = range.location;
              v5 = range.length;
              goto LABEL_16;
            }
          }

          location = v18;
          v5 = v19 + range.length + 1;
        }

LABEL_16:
        Length = location - 1;
        if (v5 >= 1)
        {
          usedBufLen = 0;
          v24.location = location;
          v24.length = v5;
          if (CFStringGetBytes(v3, v24, 0x8000100u, 0, 0, 0, 0, &usedBufLen) <= 0)
          {
            v9 = 248;
          }

          else
          {
            v9 = 247 - usedBufLen;
          }

LABEL_21:
          bytes = 46;
          if (CFStringGetCharacterAtIndex(v3, 0) == 95)
          {
            v10 = v23;
            v22 = 46;
            v11 = 2;
          }

          else
          {
            v10 = &v22;
            v11 = 1;
          }

          usedBufLen = 0;
          v25.location = 0;
          v25.length = Length;
          CFStringGetBytes(v3, v25, 0x8000100u, 0, 0, v10, v9 - v11, &usedBufLen);
          v12 = usedBufLen + v11;
          if (location != -1)
          {
            v13 = v12 + 1;
            *(&bytes + v12) = 46;
            v26.location = location;
            v26.length = v5;
            CFStringGetBytes(v3, v26, 0x8000100u, 0, 0, &bytes + v12 + 1, 254 - v12, &usedBufLen);
            v12 = usedBufLen + v13;
          }

          v14 = &bytes + v12;
          *(v14 + 3) = 1685417836;
          *v14 = 1818454318;
          v7 = CFStringCreateWithBytes(&__kCFAllocatorSystemDefault, &bytes, v12 + 7, 0x8000100u, 0);
          goto LABEL_27;
        }
      }

      v9 = 248;
      goto LABEL_21;
    }
  }

  v7 = 0;
LABEL_28:
  v15 = *MEMORY[0x1E69E9840];
  return v7;
}