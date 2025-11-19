uint64_t CFUniCharGetFirstBidiParagraphLength(uint64_t a1, uint64_t a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = 0;
  while (1)
  {
    v3 = *(a1 + v2);
    if (v3 == 13)
    {
      break;
    }

    if ((v3 - 11) <= 2)
    {
      *(a1 + v2) = 0;
    }

    if (a2 == ++v2)
    {
      return a2;
    }
  }

  a2 = v2 + 1;
  *(a1 + v2) = 10;
  return a2;
}

uint64_t CFUniCharApplyUnicodeBidiAlgorithm(uint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v74 = result;
  if (a4 < 1)
  {
    return result;
  }

  v5 = a2;
  v6 = a2 + a4;
  if (result)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  v69 = result & 1;
  v70 = !(result & 1);
  v71 = v7;
  v72 = a2 + a4;
  do
  {
    v8 = v6 - v5;
    v75 = a3;
    v73 = v6 - v5;
    if ((v6 - v5) < 1)
    {
      result = resolveExplicit(v74, 0, v5, a3, 0, 0);
      v11 = 0;
      v12 = 0;
      v13 = 0;
      v14 = v69;
      v15 = v71;
      goto LABEL_72;
    }

    v9 = 0;
    while (1)
    {
      v10 = *(v5 + v9);
      if (v10 == 13)
      {
        break;
      }

      if ((v10 - 11) <= 2)
      {
        *(v5 + v9) = 0;
      }

      if (v8 == ++v9)
      {
        goto LABEL_15;
      }
    }

    v8 = v9 + 1;
    *(v5 + v9) = 10;
LABEL_15:
    v16 = v74;
    result = resolveExplicit(v74, 0, v5, a3, v8, 0);
    v17 = v75;
    v11 = v8;
    v13 = 0;
    v18 = 0;
    v19 = v74;
    v15 = v71;
    do
    {
      v20 = *(v5 + v18);
      if ((v20 & 0x7F) == 0xA)
      {
        v17[v18] = v16;
        v21 = v18 + 1;
        if (v18 + 1 != v11 || v16 == v74)
        {
          if (v21 >= v11 || (v36 = v17[v21], v16 == v36) || *(v5 + v21) == 10)
          {
            if (v13)
            {
              ++v13;
            }

            else
            {
              v13 = 0;
            }

            v35 = *(v5 + v18) | 0x80;
            goto LABEL_64;
          }

          if (v16 > v36)
          {
            LOBYTE(v36) = v16;
          }

          v17[v18] = v36;
          if (v36)
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          *(v5 + v18) = v20;
          v16 = v17[v21];
        }

        else
        {
          if (v16)
          {
            v20 = 2;
          }

          else
          {
            v20 = 1;
          }

          *(v5 + v18) = v20;
        }

        v22 = 0x80;
      }

      else
      {
        v22 = 0;
      }

      v23 = v18 - 1;
      v24 = v17[v18];
      if (v19 != v24)
      {
        v25 = v20 > 5u || ((1 << v20) & 0x26) == 0;
        if (v25)
        {
          if (v13 >= 1)
          {
            if (v16 <= v24)
            {
              v26 = v17[v18];
            }

            else
            {
              v26 = v16;
            }

            v25 = (v26 & 1) == 0;
            v27 = 2;
            if (v25)
            {
              v27 = 1;
            }

            v28 = actionWeak[10 * v15 + v27] >> 4;
            if (v28 != 15)
            {
              v29 = v18 - v13;
              if (v23 < v29)
              {
                v29 = v18 - 1;
              }

              result = memset((v5 + v23 - (v23 - v29)), v28, (v23 - v29) + 1);
              v17 = v75;
              v11 = v8;
              v13 = 0;
              v24 = v75[v18];
            }
          }

          if (v19 <= v24)
          {
            v30 = v24;
          }

          else
          {
            v30 = v19;
          }

          if (v30)
          {
            v15 = 1;
          }

          else
          {
            v15 = 2;
          }
        }

        v19 = v24;
      }

      v31 = actionWeak[10 * v15 + v20];
      v32 = v31 >> 4;
      if (v32 != 15)
      {
        if (v13 >= 1)
        {
          v33 = v18 - v13;
          if (v23 < v33)
          {
            v33 = v18 - 1;
          }

          result = memset((v5 + v23 - (v23 - v33)), v32, (v23 - v33) + 1);
          v17 = v75;
          v11 = v8;
        }

        v13 = 0;
      }

      v34 = v31 & 0xF;
      if ((v31 & 0xF) == 0xF)
      {
        v34 = *(v5 + v18);
      }

      v13 += (v31 >> 8) & 1;
      v15 = stateWeak[10 * v15 + v20];
      v35 = v34 | v22;
      v21 = v18 + 1;
LABEL_64:
      *(v5 + v18) = v35;
      v18 = v21;
    }

    while (v21 != v11);
    v14 = v16 & 1;
    v12 = v11;
    v8 = v73;
LABEL_72:
    v25 = v14 == 0;
    v37 = 2;
    if (v25)
    {
      v37 = 1;
    }

    v38 = actionWeak[10 * v15 + v37] >> 4;
    v39 = v38 == 15 || v13 < 1;
    v76 = v11;
    if (!v39)
    {
      v40 = v12 - v13;
      v41 = v12 - 1;
      if (v40 >= v41)
      {
        v40 = v41;
      }

      result = memset((v5 - (v41 - v40) + v41), v38, (v41 - v40) + 1);
      v11 = v76;
    }

    if (v8 < 1)
    {
      v59 = 0;
      v43 = 0;
      v58 = v69;
      v50 = v70;
      v46 = v75;
    }

    else
    {
      v42 = 0;
      v43 = 0;
      v44 = -1;
      v45 = v5;
      v46 = v75;
      v47 = v75;
      v48 = v11;
      v49 = v74;
      v50 = v70;
      do
      {
        v51 = *v45;
        v52 = v51;
        if ((v51 & 0x80) != 0)
        {
          v52 = v51 & 0x7F;
          *v45 = v51 & 0x7F;
        }

        v53 = v44;
        if (v52 == 10)
        {
          if (v43)
          {
            ++v43;
          }

          else
          {
            v43 = 0;
          }

          v54 = 10;
        }

        else
        {
          v55 = actionNeutrals[5 * v50 + v52];
          v56 = v55 >> 4;
          if (v55 >> 4)
          {
            if (v56 == 3)
            {
              if (v49)
              {
                v56 = 2;
              }

              else
              {
                v56 = 1;
              }
            }

            if (v43 >= 1)
            {
              v57 = v42 - v43;
              if (v44 < v57)
              {
                v57 = v44;
              }

              result = memset((v5 + v44 - (v44 - v57)), v56, (v44 - v57) + 1);
              v46 = v75;
              v11 = v76;
            }

            v43 = 0;
          }

          v54 = v55 & 0xF;
          if ((v55 & 0xF) != 0)
          {
            *v45 = v54;
          }

          else
          {
            v54 = *v45;
          }

          v43 += (v55 >> 8) & 1;
          v50 = stateNeutrals[5 * v50 + v52];
          v49 = *v47;
        }

        *v45++ = v54 | v51 & 0x80;
        ++v47;
        v44 = v53 + 1;
        ++v42;
        --v48;
      }

      while (v48);
      v58 = v49 & 1;
      v59 = v11;
      v8 = v73;
    }

    if (v58)
    {
      v60 = 2;
    }

    else
    {
      v60 = 1;
    }

    if (actionNeutrals[5 * v50 + v60] >> 4)
    {
      if (actionNeutrals[5 * v50 + v60] >> 4 != 3)
      {
        v60 = actionNeutrals[5 * v50 + v60] >> 4;
      }

      if (v43 >= 1)
      {
        v61 = v59 - v43;
        v62 = v59 - 1;
        if (v61 >= v62)
        {
          v61 = v62;
        }

        result = memset((v5 - (v62 - v61) + v62), v60, (v62 - v61) + 1);
        v46 = v75;
        v11 = v76;
      }
    }

    if (v8 >= 1)
    {
      v63 = v5;
      v64 = v46;
      v65 = v11;
      LOBYTE(v66) = v74;
      do
      {
        v68 = *v63++;
        v67 = v68;
        if ((v68 & 0x8000000000000000) == 0)
        {
          v66 = *v64 + addLevel[4 * (*v64 & 1) - 1 + v67];
        }

        *v64++ = v66;
        --v65;
      }

      while (v65);
    }

    v5 += v11;
    a3 = &v46[v11];
    v6 = v72;
  }

  while (v5 < v72);
  return result;
}

uint64_t resolveExplicit(int a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 >= 1)
  {
    v6 = a5;
    v10 = a1;
    v11 = 0;
    if (a1)
    {
      v12 = 2;
    }

    else
    {
      v12 = 1;
    }

    v13 = v12 + a1;
    if (a1)
    {
      v14 = 1;
    }

    else
    {
      v14 = 2;
    }

    v15 = v14 + a1;
    v23 = a6;
    v16 = a6;
    while (1)
    {
      v17 = *(a3 + v11);
      if ((v17 - 14) < 2)
      {
        v18 = (v16 + 1);
        if (v13 > 0x3D)
        {
LABEL_16:
          LOBYTE(v17) = -118;
          *(a3 + v11) = -118;
LABEL_28:
          *(a4 + v11) = v10;
          if ((*(a3 + v11) & 0x7F) != 0xA)
          {
            if (a2)
            {
              LOBYTE(v17) = a2;
            }

            *(a3 + v11) = v17;
          }

          v16 = v18;
          goto LABEL_33;
        }

        *(a4 + v11) = v13;
        *(a3 + v11) = -118;
        v19 = *(a4 + v11);
        v20 = 2 * (v17 != 15);
      }

      else
      {
        if ((v17 - 16) >= 2)
        {
          if (v17 == 18)
          {
            *(a3 + v11) = -118;
            if (v16 <= v23)
            {
              v21 = v11;
            }

            else
            {
              v21 = v6;
            }

            if (v16)
            {
              v18 = v16 - (v16 > v23);
            }

            else
            {
              v18 = 0;
            }

            if (v16)
            {
              v6 = v21;
            }

            LOBYTE(v17) = -118;
          }

          else
          {
            v18 = v16;
          }

          goto LABEL_28;
        }

        v18 = (v16 + 1);
        if (v15 > 0x3D)
        {
          goto LABEL_16;
        }

        *(a4 + v11) = v15;
        *(a3 + v11) = -118;
        v19 = *(a4 + v11);
        v20 = v17 != 17;
      }

      v11 += resolveExplicit(v19, v20, a3 + v11 + 1, a4 + v11 + 1, v6 - (v11 + 1), v18);
LABEL_33:
      if (++v11 >= v6)
      {
        return v11;
      }
    }
  }

  return 0;
}

BOOL CFAttributedStringGetBidiLevelsAndResolvedDirections(const __CFAttributedString *a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v44 = a4;
  v61 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v14 = @"attributedString cannot be NULL";
LABEL_77:
    CFLog(3, v14, a3, a4, a5, a6, a7, a8, v41);
LABEL_78:
    result = 0;
    goto LABEL_79;
  }

  if (!a5)
  {
    v14 = @"bidiLevels cannot be NULL";
    goto LABEL_77;
  }

  String = CFAttributedStringGetString(a1);
  v52 = 0u;
  v53 = 0u;
  v50 = 0u;
  v51 = 0u;
  v48 = 0u;
  v49 = 0u;
  *buffer = 0u;
  v47 = 0u;
  theString = String;
  v57 = a2;
  v58 = a3;
  CharactersPtr = CFStringGetCharactersPtr(String);
  if (CharactersPtr)
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(String, 0x600u);
  }

  v59 = 0;
  v60 = 0;
  v56 = CStringPtr;
  v43 = ubidi_open();
  if (!v43)
  {
    v14 = @"ubidi_open return NULL object";
    goto LABEL_77;
  }

  if (a3 <= 0)
  {
    ubidi_close();
    goto LABEL_78;
  }

  v15 = 0;
  UnicodePropertyDataForPlane = 0;
  v17 = a2 - 1;
  LOBYTE(v18) = -1;
  v42 = a2 - 1;
  do
  {
    v19 = v15 + 1;
    if (v15 < 0 || (v20 = v58, v58 <= v15))
    {
      v22 = 0;
LABEL_16:
      ++v15;
      goto LABEL_17;
    }

    if (CharactersPtr)
    {
      v21 = CharactersPtr[v57 + v15];
    }

    else if (v56)
    {
      v21 = v56[v57 + v15];
    }

    else
    {
      if (v60 <= v15 || (v26 = v59, v59 > v15))
      {
        v27 = v15 - 4;
        if (v15 < 4)
        {
          v27 = 0;
        }

        if (v27 + 64 < v58)
        {
          v20 = v27 + 64;
        }

        v59 = v27;
        v60 = v20;
        v62.length = v20 - v27;
        v62.location = v57 + v27;
        CFStringGetCharacters(theString, v62, buffer);
        v26 = v59;
      }

      v21 = buffer[v15 - v26];
    }

    v22 = v21;
    if (v21 >> 10 != 54)
    {
      goto LABEL_16;
    }

    v28 = v58;
    if (v58 <= v19)
    {
      goto LABEL_16;
    }

    if (CharactersPtr)
    {
      v29 = CharactersPtr[v57 + v19];
    }

    else if (v56)
    {
      v29 = v56[v57 + v19];
    }

    else
    {
      if (v60 <= v19 || (v30 = v59, v59 > v19))
      {
        v31 = v15 - 3;
        if (v19 < 4)
        {
          v31 = 0;
        }

        if (v31 + 64 < v58)
        {
          v28 = v31 + 64;
        }

        v59 = v31;
        v60 = v28;
        v63.length = v28 - v31;
        v63.location = v57 + v31;
        CFStringGetCharacters(theString, v63, buffer);
        v30 = v59;
      }

      v29 = buffer[v19 - v30];
    }

    if (v29 >> 10 != 55)
    {
      goto LABEL_16;
    }

    v32 = v58;
    if (v58 <= v19)
    {
      v33 = 0;
    }

    else if (CharactersPtr)
    {
      v33 = CharactersPtr[v57 + v19];
    }

    else if (v56)
    {
      v33 = v56[v57 + v19];
    }

    else
    {
      if (v60 <= v19 || (v34 = v59, v59 > v19))
      {
        v35 = v15 - 3;
        if (v15 < 3)
        {
          v35 = 0;
        }

        if (v35 + 64 < v58)
        {
          v32 = v35 + 64;
        }

        v59 = v35;
        v60 = v32;
        v64.length = v32 - v35;
        v64.location = v57 + v35;
        CFStringGetCharacters(theString, v64, buffer);
        v34 = v59;
      }

      v33 = buffer[v19 - v34];
    }

    v15 += 2;
    v22 = (v22 << 10) + v33 - 56613888;
LABEL_17:
    if ((HIWORD(v22) & 0x1F) != v18)
    {
      UnicodePropertyDataForPlane = CFUniCharGetUnicodePropertyDataForPlane(1u, HIWORD(v22) & 0x1F);
      v18 = HIWORD(v22) & 0x1F;
    }

    if (UnicodePropertyDataForPlane)
    {
      v23 = *(UnicodePropertyDataForPlane + BYTE1(v22));
      if (v23 >= 0x13)
      {
        v23 = *(UnicodePropertyDataForPlane + (v23 << 8) - 4864 + v22 + 256);
      }
    }

    else
    {
      v23 = 1;
    }

    if (v23 == 13 || v15 == a3)
    {
      v24 = v17 + 1 - a2;
      if (a6)
      {
        v25 = (a6 + v24);
      }

      else
      {
        v25 = 0;
      }

      processParagraph(v43, a1, buffer, v17 + 1, v42 + v15 - v17, v44, &a5[v24], v25);
      v17 = v42 + v15;
    }
  }

  while (v15 < a3);
  ubidi_close();
  if (*a5)
  {
    result = 1;
  }

  else
  {
    v36 = 1;
    do
    {
      v37 = v36;
      if (a3 == v36)
      {
        break;
      }

      v38 = a5[v36++];
    }

    while ((v38 & 1) == 0);
    result = v37 < a3;
  }

LABEL_79:
  v40 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CFUniCharGetDefaultWritingDirection()
{
  v0 = __CFXPreferencesCopyCurrentApplicationState();
  v1 = CFUniCharGetDefaultWritingDirection_defaultDirection;
  if (CFUniCharGetDefaultWritingDirection_defaultDirection == 255)
  {
    v2 = v0;
    if (__CFUniCharGetBooleanValueForKey(@"NSForceRightToLeftWritingDirection", v0))
    {
      v1 = 1;
    }

    else
    {
      MainBundle = CFBundleGetMainBundle();
      if (MainBundle && (v4 = CFBundleCopyBundleLocalizations(MainBundle)) != 0)
      {
        v5 = v4;
        v6 = CFBundleCopyLocalizationsForPreferences(v4, 0);
        v1 = v6;
        if (v6)
        {
          if (CFArrayGetCount(v6) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v1, 0), CFLocaleGetLanguageCharacterDirection(ValueAtIndex) == kCFLocaleLanguageDirectionRightToLeft))
          {
            CFRelease(v1);
            v1 = __CFUniCharGetBooleanValueForKey(@"NSForceLeftToRightWritingDirection", v2) ^ 1;
          }

          else
          {
            CFRelease(v1);
            v1 = 0;
          }
        }

        CFRelease(v5);
      }

      else
      {
        v1 = 0;
      }
    }

    CFUniCharGetDefaultWritingDirection_defaultDirection = v1;
    if (v2)
    {
      CFRelease(v2);
      return CFUniCharGetDefaultWritingDirection_defaultDirection;
    }
  }

  return v1;
}

uint64_t __CFUniCharGetBooleanValueForKey(CFStringRef key, CFDictionaryRef theDict)
{
  v15[1] = *MEMORY[0x1E69E9840];
  if (theDict && (Value = CFDictionaryGetValue(theDict, key)) != 0)
  {
    v4 = Value;
    v5 = 0;
  }

  else
  {
    v6 = CFPreferencesCopyAppValue(key, @"kCFPreferencesCurrentApplication");
    if (!v6)
    {
      v9 = 0;
      goto LABEL_18;
    }

    v4 = v6;
    v5 = 1;
  }

  v7 = CFGetTypeID(v4);
  if (v7 == CFBooleanGetTypeID())
  {
    v8 = CFBooleanGetValue(v4) == 0;
  }

  else
  {
    if (v7 != CFNumberGetTypeID())
    {
      if (v7 == CFStringGetTypeID() && (Length = CFStringGetLength(v4), Length >= 1))
      {
        v13 = Length;
        CharacterAtIndex = CFStringGetCharacterAtIndex(v4, 0);
        if ((CharacterAtIndex & 0xFFFFFFDF) == 0x59 || (v9 = 0, v13 == 1) && (CharacterAtIndex - 49) <= 8)
        {
          v9 = 1;
        }
      }

      else
      {
        v9 = 0;
      }

      goto LABEL_15;
    }

    v15[0] = 0;
    if (CFNumberGetValue(v4, kCFNumberCFIndexType, v15))
    {
      v8 = v15[0] == 0;
    }

    else
    {
      v8 = 1;
    }
  }

  v9 = !v8;
LABEL_15:
  if (v5)
  {
    CFRelease(v4);
  }

LABEL_18:
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void __CFRelativeDateTimeFormatterDeallocate(uint64_t a1)
{
  if (!a1)
  {
    __CFRelativeDateTimeFormatterDeallocate_cold_1();
  }

  v2 = *(a1 + 32);
  if (v2)
  {

    CFRelease(v2);
  }
}

CFStringRef __CFRelativeDateTimeFormatterCopyDescription(const void *a1)
{
  if (!a1)
  {
    __CFRelativeDateTimeFormatterCopyDescription_cold_1();
  }

  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CFRelativeDateTimeFormatter %p>[%p]", a1, v3);
}

void *_CFRelativeDateTimeFormatterCreate(__objc2_class **a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (!a1)
  {
    a1 = _CFGetTSD(1u);
    if (!a1)
    {
      a1 = &__kCFAllocatorSystemDefault;
    }
  }

  Instance = _CFRuntimeCreateInstance(a1, 0x43uLL, 32, 0, a5, a6, a7, a8);
  if (Instance)
  {
    Instance[4] = CFRetain(a2);
    Instance[5] = a5;
    Instance[2] = a4;
    Instance[3] = a3;
  }

  return Instance;
}

CFStringRef _CFRelativeDateTimeFormatterCreateStringWithCalendarUnit(const __CFAllocator *a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  Identifier = CFLocaleGetIdentifier(*(a2 + 32));
  if (!CFStringGetCStringPtr(Identifier, 0x600u) && !CFStringGetCString(Identifier, buffer, 157, 0x600u))
  {
    result = 0;
    goto LABEL_37;
  }

  v7 = *(a2 + 24);
  if (v7 <= 1)
  {
    if (!v7)
    {
      goto LABEL_9;
    }

    if (v7 == 1)
    {
      v19 = 0;
      __cficu_unum_open();
      goto LABEL_9;
    }

LABEL_39:
    _CFRelativeDateTimeFormatterCreateStringWithCalendarUnit_cold_4();
  }

  if (v7 != 2 && v7 != 3)
  {
    goto LABEL_39;
  }

LABEL_9:
  v19 = 0;
  v8 = *(a2 + 40);
  if (v8 >= 6)
  {
    _CFRelativeDateTimeFormatterCreateStringWithCalendarUnit_cold_1();
  }

  v9 = dword_183306030[v8];
  v10 = __cficu_ureldatefmt_open();
  if (a3 <= 31)
  {
    switch(a3)
    {
      case 4:
        v12 = 0;
        goto LABEL_28;
      case 8:
        v12 = 2;
        goto LABEL_28;
      case 16:
        v12 = 4;
        goto LABEL_28;
    }

LABEL_41:
    _CFRelativeDateTimeFormatterCreateStringWithCalendarUnit_cold_3();
  }

  if (a3 > 127)
  {
    if (a3 == 128)
    {
      v12 = 7;
      goto LABEL_28;
    }

    if (a3 == 4096)
    {
      v12 = 3;
      goto LABEL_28;
    }

    goto LABEL_41;
  }

  if (a3 == 32)
  {
    v12 = 5;
    goto LABEL_28;
  }

  if (a3 != 64)
  {
    goto LABEL_41;
  }

  v12 = 6;
LABEL_28:
  MEMORY[0x1EEE9AC00](v10, v12);
  v19 = 0;
  v13 = *(a2 + 16);
  if (v13 == 1)
  {
    v14 = __cficu_ureldatefmt_format();
  }

  else
  {
    if (v13)
    {
      _CFRelativeDateTimeFormatterCreateStringWithCalendarUnit_cold_2();
    }

    v14 = __cficu_ureldatefmt_formatNumeric();
  }

  v15 = v14;
  __cficu_ureldatefmt_close();
  if (!a1)
  {
    v16 = _CFGetTSD(1u);
    if (v16)
    {
      a1 = v16;
    }

    else
    {
      a1 = &__kCFAllocatorSystemDefault;
    }
  }

  result = CFStringCreateWithCharacters(a1, &v18, v15);
LABEL_37:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t ___deque_enumerateObjectsWithOptionsBlock_block_invoke(uint64_t a1, int a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(v3 + 8) + a2;
  v5 = *(a1 + 48);
  if (v5 > v4)
  {
    v5 = 0;
  }

  v6 = *(*v3 + 8 * (v4 - v5));
  return __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(*(a1 + 32));
}

uint64_t (**__CFStringEncodingGetVietnameseConverterDefinition(int a1, uint64_t (*a2)(uint64_t)))()
{
  if (!__CFStringEncodingPrecomposeLatinCharacter_0)
  {
    __CFStringEncodingPrecomposeLatinCharacter_0 = a2(4);
  }

  if (a1 == 1288)
  {
    return __CFConverterWindowsVietnamese;
  }

  else
  {
    return 0;
  }
}

uint64_t __CFToWindowsVietnamese(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 8483 < 0xFFFFDF7D)
  {
    return 0;
  }

  v5 = &WindowsVietnamese_from_uni;
  v6 = &unk_183306378;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

BOOL __CFFromWindowsVietnamese(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = WindowsVietnamese_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToWindowsVietnamesePrecompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_0(a2, a3, 0);
  if (v9 > 0x7F)
  {
    if ((v9 - 8483) >= 0xDF7Du)
    {
      v11 = &WindowsVietnamese_from_uni;
      v12 = &unk_183306378;
      while (1)
      {
        v13 = &v11[2 * ((v12 - v11) >> 3)];
        v14 = *v13;
        if (v14 <= v9)
        {
          if (v14 >= v9)
          {
            LOBYTE(v9) = *(v13 + 2);
            goto LABEL_2;
          }

          v11 = v13 + 2;
        }

        else
        {
          v12 = v13 - 2;
        }

        if (v11 > v12)
        {
          return 0;
        }
      }
    }

    return 0;
  }

LABEL_2:
  if (!v9)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFIsValidCombiningCharacterForVietnamese(int a1)
{
  if ((a1 - 768) > 0x5F)
  {
    return 0;
  }

  else
  {
    return (__CFVietnameseCombiningCharBitmap[(a1 - 768) >> 5] >> ~a1) & 1;
  }
}

__CFString *__CFBinaryHeapCopyDescription(void *a1)
{
  v48 = *MEMORY[0x1E69E9840];
  v46 = 0u;
  v47 = 0u;
  v44 = 0u;
  v45 = 0u;
  v42 = 0u;
  v43 = 0u;
  v40 = 0u;
  v41 = 0u;
  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v18 = 0u;
  v19 = 0u;
  *values = 0u;
  v17 = 0u;
  v2 = a1[2];
  v3 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v3, 0);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<CFBinaryHeap %p [%p]>{count = %lu, capacity = %lu, objects = (\n"), a1, v5, v2, a1[3], 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0;
  if (v2 >= 129)
  {
    Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * v2, 0x80040B8603338, 0);
    v7 = Typed != values;
    if (__CFOASafe == 1 && Typed != values)
    {
      __CFSetLastAllocationEventName();
      v7 = 1;
    }

    CFBinaryHeapGetValues(a1, Typed);
  }

  else
  {
    Typed = values;
    CFBinaryHeapGetValues(a1, values);
    if (v2 <= 0)
    {
      CFStringAppend(Mutable, @"}"));
      goto LABEL_17;
    }

    v7 = 0;
  }

  for (i = 0; i != v2; ++i)
  {
    v9 = Typed[i];
    v10 = a1[7];
    if (v10 && (v11 = v10(Typed[i])) != 0)
    {
      v12 = v11;
      CFStringAppendFormat(Mutable, 0, @"\t%lu : %@\n", i, v11);
      CFRelease(v12);
    }

    else
    {
      CFStringAppendFormat(Mutable, 0, @"\t%lu : <%p>\n", i, v9);
    }
  }

  CFStringAppend(Mutable, @"}"));
  if (v7)
  {
    v13 = CFGetAllocator(a1);
    CFAllocatorDeallocate(v13, Typed);
  }

LABEL_17:
  v14 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFIndex CFBinaryHeapGetCountOfValue(CFBinaryHeapRef heap, const void *value)
{
  v2 = *(heap + 2);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = *(heap + 8);
  do
  {
    if (*(*(heap + 14) + 8 * v6) == value || v7 && (v8 = *(heap + 10), !v7(value)))
    {
      ++v5;
    }

    ++v6;
  }

  while (v2 != v6);
  return v5;
}

Boolean CFBinaryHeapContainsValue(CFBinaryHeapRef heap, const void *value)
{
  v2 = *(heap + 2);
  if (v2 < 1)
  {
    return 0;
  }

  v5 = 0;
  v6 = *(heap + 8);
  while (*(*(heap + 14) + 8 * v5) != value)
  {
    if (v6)
    {
      v7 = *(heap + 10);
      if (!v6(value))
      {
        break;
      }
    }

    if (v2 == ++v5)
    {
      return 0;
    }
  }

  return 1;
}

const void *__cdecl CFBinaryHeapGetMinimum(CFBinaryHeapRef heap)
{
  if (*(heap + 2) < 1)
  {
    return 0;
  }

  else
  {
    return **(heap + 14);
  }
}

Boolean CFBinaryHeapGetMinimumIfPresent(CFBinaryHeapRef heap, const void **value)
{
  if (!*(heap + 2))
  {
    return 0;
  }

  if (value)
  {
    *value = **(heap + 14);
  }

  return 1;
}

void CFBinaryHeapGetValues(CFBinaryHeapRef heap, const void **values)
{
  if (*(heap + 2))
  {
    v4 = CFGetAllocator(heap);
    Init = __CFBinaryHeapCreateInit(v4, *(heap + 14), *(heap + 2), heap + 32, heap + 72, v5, v6, v7);
    if (*(Init + 16) >= 1)
    {
      do
      {
        v9 = **(Init + 112);
        CFBinaryHeapRemoveMinimumValue(Init);
        *values++ = v9;
      }

      while (*(Init + 16) > 0);
    }

    CFRelease(Init);
  }
}

void CFBinaryHeapRemoveMinimumValue(CFBinaryHeapRef heap)
{
  v1 = *(heap + 2);
  if (!v1)
  {
    return;
  }

  v3 = v1 - 1;
  *(heap + 2) = v1 - 1;
  v4 = *(heap + 8);
  v5 = CFGetAllocator(heap);
  v6 = *(heap + 6);
  if (v6)
  {
    v6(v5, **(heap + 14));
  }

  v7 = *(heap + 14);
  v8 = *(v7 + 8 * v3);
  v9 = *(heap + 2);
  if (v9 < 2)
  {
    v10 = 0;
    goto LABEL_24;
  }

  v10 = 0;
  v11 = 1;
  while (1)
  {
    v12 = v10;
    v7 = *(heap + 14);
    v13 = *(v7 + 8 * v11);
    v14 = v11 + 1;
    if (v11 + 1 < v9)
    {
      break;
    }

    if (!v4 && v13 > v8)
    {
      goto LABEL_23;
    }

    v10 = v11;
    if (v4)
    {
      goto LABEL_14;
    }

LABEL_20:
    *(v7 + 8 * v12) = v13;
    v11 = (2 * v10) | 1;
    if (v11 >= v9)
    {
      v7 = *(heap + 14);
      goto LABEL_24;
    }
  }

  v15 = *(v7 + 8 * v14);
  if (v4)
  {
    if (v4(*(v7 + 8 * v11), *(v7 + 8 * v14), *(heap + 10)) == 1)
    {
      ++v11;
      v13 = v15;
    }

LABEL_14:
    v16 = v4(v13, v8, *(heap + 10));
    v7 = *(heap + 14);
    if (v16 == 1)
    {
      goto LABEL_23;
    }

    v9 = *(heap + 2);
    v10 = v11;
    goto LABEL_20;
  }

  if (v13 <= v15)
  {
    v10 = v11;
  }

  else
  {
    v13 = *(v7 + 8 * v14);
    v10 = v11 + 1;
  }

  if (v13 <= v8)
  {
    goto LABEL_20;
  }

LABEL_23:
  v10 = v12;
LABEL_24:
  *(v7 + 8 * v10) = v8;
}

void CFBinaryHeapApplyFunction(CFBinaryHeapRef heap, CFBinaryHeapApplierFunction applier, void *context)
{
  if (*(heap + 2))
  {
    v6 = CFGetAllocator(heap);
    Init = __CFBinaryHeapCreateInit(v6, *(heap + 14), *(heap + 2), heap + 32, heap + 72, v7, v8, v9);
    if (*(Init + 16) >= 1)
    {
      do
      {
        v11 = **(Init + 112);
        CFBinaryHeapRemoveMinimumValue(Init);
        (applier)(v11, context);
      }

      while (*(Init + 16) > 0);
    }

    CFRelease(Init);
  }
}

void CFBinaryHeapAddValue(CFBinaryHeapRef heap, const void *value)
{
  v4 = CFGetAllocator(heap);
  v5 = atomic_load(heap + 1);
  if ((v5 & 0xC) == 4)
  {
    v6 = *(heap + 2);
    if (v6 == *(heap + 3))
    {
      v7 = v6 >= 3 ? 1 << flsl(v6 + 1) : 4;
      v8 = CFGetAllocator(heap);
      *(heap + 3) = v7;
      *(heap + 14) = __CFSafelyReallocateWithAllocatorTyped(v8, *(heap + 14), 8 * v7, 0x80040B8603338, 0, 0);
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }
    }
  }

  v9 = *(heap + 2);
  *(heap + 2) = v9 + 1;
  if (v9 >= 1)
  {
    v10 = *(heap + 8);
    while (1)
    {
      v11 = v9 - 1;
      v12 = (v9 - 1) >> 1;
      v13 = *(heap + 14);
      v14 = *(v13 + 8 * v12);
      if (!v10 && v14 <= value)
      {
        break;
      }

      if (v10)
      {
        if (v10(*(v13 + 8 * v12), value, *(heap + 10)) != 1)
        {
          break;
        }

        v13 = *(heap + 14);
      }

      *(v13 + 8 * v9) = v14;
      v9 = (v9 - 1) >> 1;
      if (v11 <= 1)
      {
        v9 = 0;
        break;
      }
    }
  }

  v15 = *(heap + 5);
  if (v15)
  {
    value = v15(v4, value);
  }

  *(*(heap + 14) + 8 * v9) = value;
}

BOOL __CFBinaryPlistIsArray(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  result = 0;
  if (a3 >= 8 && *(a4 + 24) - 1 >= a3)
  {
    return (*(a1 + a3) & 0xF0) == 160;
  }

  return result;
}

uint64_t __CFBinaryPlistGetOffsetForValueFromArray2(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, unint64_t *a6)
{
  v6 = 0;
  if (a3 < 8)
  {
    return v6;
  }

  v7 = *(a4 + 24);
  v8 = v7 - 1;
  if (v7 - 1 < a3)
  {
    return v6;
  }

  v6 = 0;
  v9 = (a1 + a3);
  if (a1 + a3 == -1)
  {
    return v6;
  }

  v10 = *v9;
  if ((*v9 & 0xF0) != 0xA0)
  {
    return v6;
  }

  v11 = v9 + 1;
  v12 = v10 & 0xF;
  if ((v10 & 0xF) != 0xF)
  {
    goto LABEL_25;
  }

  if (a1 + v8 < v11)
  {
    return 0;
  }

  v13 = v9 + 2;
  v14 = *v11;
  if ((*v11 & 0xF0) != 0x10)
  {
    return 0;
  }

  v6 = 0;
  v15 = v14 & 0xF;
  v16 = 1 << (v14 & 0xF);
  if (__CFADD__(v16, v13) || &v11[v16] > a1 + v8)
  {
    return v6;
  }

  if (v16 > 3u)
  {
    if (v16 == 4)
    {
      v12 = bswap32(*(v11 + 1));
      goto LABEL_24;
    }

    if (v16 == 8)
    {
      v12 = bswap64(*(v11 + 1));
      goto LABEL_23;
    }

LABEL_17:
    if (v15 > 7)
    {
      v12 = 0;
      goto LABEL_24;
    }

    v12 = 0;
    v17 = v16;
    v18 = v11 + 1;
    do
    {
      v19 = *v18++;
      v12 = v19 | (v12 << 8);
      --v17;
    }

    while (v17);
LABEL_23:
    if ((v12 & 0x8000000000000000) != 0)
    {
      return 0;
    }

    goto LABEL_24;
  }

  if (v16 == 1)
  {
    v12 = *v13;
    goto LABEL_24;
  }

  if (v16 != 2)
  {
    goto LABEL_17;
  }

  v12 = __rev16(*(v11 + 1));
LABEL_24:
  v11 = &v13[v16];
LABEL_25:
  if (v12 <= a5)
  {
    return 0;
  }

  v20 = *(a4 + 7);
  if (!is_mul_ok(v12, v20))
  {
    return 0;
  }

  v6 = 0;
  if (!__CFADD__(v12 * v20, v11) && a1 + v8 >= &v11[v12 * v20 - 1])
  {
    v22 = &v11[v20 * a5];
    if (a1 + 8 > v22)
    {
      return 0;
    }

    v23 = a1 + v7;
    if (a1 + v7 - v20 < v22)
    {
      return 0;
    }

    if (v20 <= 1)
    {
      v24 = *(a4 + 7);
      if (!*(a4 + 7))
      {
        goto LABEL_45;
      }

      if (v20 == 1)
      {
        v24 = *v22;
        goto LABEL_45;
      }
    }

    else
    {
      switch(v20)
      {
        case 2:
          v24 = __rev16(*v22);
          goto LABEL_45;
        case 4:
          v24 = bswap32(*v22);
          goto LABEL_45;
        case 8:
          v24 = bswap64(*v22);
          goto LABEL_45;
      }
    }

    v24 = 0;
    do
    {
      v25 = *v22;
      v22 = (v22 + 1);
      v24 = v25 | (v24 << 8);
      --v20;
    }

    while (v20);
LABEL_45:
    if (*(a4 + 8) > v24)
    {
      if (!a6)
      {
        return 1;
      }

      v26 = *(a4 + 6);
      v27 = (v23 + v24 * v26);
      if (*(a4 + 6) <= 1u)
      {
        if (!*(a4 + 6))
        {
          goto LABEL_59;
        }

        if (v26 == 1)
        {
          v26 = *v27;
          goto LABEL_59;
        }
      }

      else
      {
        switch(v26)
        {
          case 2:
            v26 = __rev16(*v27);
            goto LABEL_59;
          case 4:
            v26 = bswap32(*v27);
            goto LABEL_59;
          case 8:
            v26 = bswap64(*v27);
LABEL_59:
            *a6 = v26;
            return 1;
        }
      }

      v28 = *(a4 + 6);
      v26 = 0;
      do
      {
        v29 = *v27;
        v27 = (v27 + 1);
        v26 = v29 | (v26 << 8);
        --v28;
      }

      while (v28);
      goto LABEL_59;
    }

    return 0;
  }

  return v6;
}

uint64_t __CFBitVectorEqual(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (v2)
    {
      v3 = v2 < -7;
    }

    else
    {
      v3 = 1;
    }

    if (v3)
    {
      return 1;
    }

    v4 = v2 / 8;
    v5 = *(a1 + 32);
    v6 = *(a2 + 32);
    v7 = v4 + 1;
    while (1)
    {
      v9 = *v5++;
      v8 = v9;
      v10 = *v6++;
      if (v8 != v10)
      {
        break;
      }

      if (!--v7)
      {
        return 1;
      }
    }
  }

  return 0;
}

__CFString *__CFBitVectorCopyDescription(void *a1)
{
  v2 = a1[2];
  v3 = a1[4];
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v5 = CFGetAllocator(a1);
  CFStringAppendFormat(Mutable, 0, @"<CFBitVector %p [%p]>{count = %lu, capacity = %lu, objects = (\n"), a1, v5, v2, a1[3];
  v6 = 0;
  v7 = v2 + 63;
  if (v2 >= 0)
  {
    v7 = v2;
  }

  if (v2 >= 64)
  {
    v8 = 0;
    v9 = 0;
    v10 = v7 >> 6;
    do
    {
      CFStringAppendFormat(Mutable, 0, @"\t%lu : ", v9 << 6);
      v11 = 0;
      do
      {
        v12 = *(v3 + ((v8 + v11) >> 3));
        CFStringAppendFormat(Mutable, 0, @"%u%u%u%u", (v12 >> (v11 & 4 ^ 7)) & 1, (v12 >> (v11 & 4 ^ 6)) & 1, (v12 >> (v11 & 4 ^ 5)) & 1, (v12 >> (v11 & 4 ^ 4)) & 1);
        v13 = v11 >= 0x3C;
        v11 += 4;
      }

      while (!v13);
      CFStringAppend(Mutable, @"\n");
      ++v9;
      v8 += 64;
    }

    while (v9 != v10);
    v6 = v10 << 6;
  }

  if (v6 < v2)
  {
    CFStringAppendFormat(Mutable, 0, @"\t%lu : ", v6);
    do
    {
      CFStringAppendFormat(Mutable, 0, @"%u", (*(v3 + (v6 >> 3)) >> (~v6 & 7)) & 1);
      ++v6;
    }

    while (v2 != v6);
  }

  CFStringAppend(Mutable, @"\n}"));
  return Mutable;
}

CFIndex CFBitVectorGetCountOfBit(CFBitVectorRef bv, CFRange range, CFBit value)
{
  v7 = *MEMORY[0x1E69E9840];
  if (range.length)
  {
    v6 = 0;
    v5 = value;
    __CFBitVectorInternalMap(bv, range.location, range.length, __CFBitVectorCountBits, &v5);
    result = v6;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFIndex CFBitVectorGetFirstIndexOfBit(CFBitVectorRef bv, CFRange range, CFBit value)
{
  if (range.length < 1)
  {
    return -1;
  }

  while (((*(*(bv + 4) + range.location / 8) >> (~LOBYTE(range.location) & 7)) & 1) != value)
  {
    ++range.location;
    if (!--range.length)
    {
      return -1;
    }
  }

  return range.location;
}

CFIndex CFBitVectorGetLastIndexOfBit(CFBitVectorRef bv, CFRange range, CFBit value)
{
  v3 = range.length + range.location - 1;
  while (range.length)
  {
    --range.length;
    v4 = (*(*(bv + 4) + v3 / 8) >> (~v3 & 7)) & 1;
    --v3;
    if (v4 == value)
    {
      return v3 + 1;
    }
  }

  return -1;
}

void CFBitVectorFlipBits(CFMutableBitVectorRef bv, CFRange range)
{
  if (range.length)
  {
    __CFBitVectorInternalMap(bv, range.location, range.length, __CFBitVectorFlipBits, 0);
  }
}

void CFBitVectorSetBits(CFMutableBitVectorRef bv, CFRange range, CFBit value)
{
  if (range.length)
  {
    if (value)
    {
      v3 = __CFBitVectorOneBits;
    }

    else
    {
      v3 = __CFBitVectorZeroBits;
    }

    __CFBitVectorInternalMap(bv, range.location, range.length, v3, 0);
  }
}

uint64_t CFStringEncodingPrecomposeLatinCharacter(unsigned __int16 *a1, uint64_t a2, unint64_t *a3)
{
  if (a2 < 1)
  {
    goto LABEL_9;
  }

  v5 = *a1;
  if ((v5 & 0xF800 | 0x400) == 0xDC00)
  {
    if (a3)
    {
      *a3 = 1;
    }

    return v5;
  }

  v7 = 1;
  if (a2 != 1)
  {
    while (1)
    {
      v9 = a1[v7];
      if ((v9 & 0xF800 | 0x400) == 0xDC00 || !CFUniCharIsMemberOf(a1[v7], 8u))
      {
        break;
      }

      v10 = CFUniCharPrecomposeCharacter(v5, v9);
      if (v10 == 65533 || HIWORD(v10) != 0)
      {
        break;
      }

      ++v7;
      v5 = v10;
      if (a2 == v7)
      {
        LOWORD(v5) = v10;
        v7 = a2;
        break;
      }
    }
  }

  if (a3)
  {
    *a3 = v7;
  }

  if (v7 <= 1)
  {
LABEL_9:
    LOWORD(v5) = -3;
  }

  return v5;
}

uint64_t __CFFromASCII(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if ((a2 & 0x80) == 0)
  {
    *a3 = a2;
  }

  return (a2 >> 7) ^ 1;
}

unint64_t __CFToISOLatin1Precompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v13[0] = 0;
  v9 = CFStringEncodingPrecomposeLatinCharacter(a2, a3, v13);
  result = 0;
  if (v9 <= 0xFF)
  {
    result = 0;
    if (v9)
    {
      v11 = v13[0];
      if (v13[0] >= 2)
      {
        if (a5)
        {
          *a4 = v9;
        }

        *a6 = 1;
        result = v11;
      }
    }
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

unint64_t __CFToMacRomanPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v9 = CFStringEncodingPrecomposeLatinCharacter(a2, a3, v18);
  if (v9 <= 0x7F)
  {
    v10 = v9;
    goto LABEL_3;
  }

  if ((v9 + 1277) < 0x59Du)
  {
    goto LABEL_17;
  }

  v13 = &macRoman_from_uni;
  v14 = &unk_1833066AC;
  while (1)
  {
    v15 = &v13[2 * ((v14 - v13) >> 3)];
    v16 = *v15;
    if (v16 <= v9)
    {
      break;
    }

    v14 = v15 - 2;
LABEL_16:
    if (v13 > v14)
    {
      goto LABEL_17;
    }
  }

  if (v16 < v9)
  {
    v13 = v15 + 2;
    goto LABEL_16;
  }

  v10 = *(v15 + 2);
LABEL_3:
  result = v18[0];
  if (!v10 || v18[0] < 2)
  {
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  if (a5)
  {
    *a4 = v10;
  }

  *a6 = 1;
LABEL_18:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFToWinLatin1(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 < 0x80 || a2 - 160 <= 0x5F)
  {
    v8 = a2;
    goto LABEL_12;
  }

  if (a2 - 8483 < 0xFFFFE02F)
  {
    return 0;
  }

  v3 = &cp1252_from_uni;
  v4 = &unk_183306718;
  while (1)
  {
    v5 = &v3[2 * ((v4 - v3) >> 3)];
    v6 = *v5;
    if (v6 <= a2)
    {
      break;
    }

    v4 = v5 - 2;
LABEL_9:
    if (v3 > v4)
    {
      return 0;
    }
  }

  if (v6 < a2)
  {
    v3 = v5 + 2;
    goto LABEL_9;
  }

  v8 = *(v5 + 2);
LABEL_12:
  *a3 = v8;
  return 1;
}

BOOL __CFFromWinLatin1(uint64_t a1, int a2, _WORD *a3)
{
  if (a2 < -96)
  {
    a2 = cp1252_to_uni[a2 & 0x1F];
  }

  *a3 = a2;
  return a2 != 65533;
}

unint64_t __CFToWinLatin1Precompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v9 = CFStringEncodingPrecomposeLatinCharacter(a2, a3, v18);
  if (v9 < 0x80 || (v9 - 160) <= 0x5Fu)
  {
    goto LABEL_12;
  }

  if ((v9 - 8483) < 0xE02Fu)
  {
    goto LABEL_17;
  }

  v10 = &cp1252_from_uni;
  v11 = &unk_183306718;
  while (1)
  {
    v12 = &v10[2 * ((v11 - v10) >> 3)];
    v13 = *v12;
    if (v13 <= v9)
    {
      break;
    }

    v11 = v12 - 2;
LABEL_9:
    if (v10 > v11)
    {
      goto LABEL_17;
    }
  }

  if (v13 < v9)
  {
    v10 = v12 + 2;
    goto LABEL_9;
  }

  LOBYTE(v9) = *(v12 + 2);
LABEL_12:
  v14 = v18[0];
  if (!v9 || v18[0] < 2)
  {
LABEL_17:
    v14 = 0;
    goto LABEL_21;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
LABEL_21:
  v16 = *MEMORY[0x1E69E9840];
  return v14;
}

uint64_t __CFToNextStepLatin(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 > 0x7F)
  {
    if ((a2 + 2) >= 0xA2u)
    {
      v4 = &nextstep_from_tab;
      v5 = &unk_183306954;
      do
      {
        v6 = &v4[2 * ((v5 - v4) >> 3)];
        v7 = *v6;
        if (v7 <= a2)
        {
          if (v7 >= a2)
          {
            LOBYTE(a2) = *(v6 + 2);
            goto LABEL_2;
          }

          v4 = v6 + 2;
        }

        else
        {
          v5 = v6 - 2;
        }
      }

      while (v4 <= v5);
    }

    return 0;
  }

  else
  {
LABEL_2:
    *a3 = a2;
    return 1;
  }
}

BOOL __CFFromNextStepLatin(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = NSToPrecompUnicodeTable[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

unint64_t __CFToNextStepLatinPrecompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  v9 = CFStringEncodingPrecomposeLatinCharacter(a2, a3, v18);
  if (v9 <= 0x7F)
  {
    v10 = v9;
    goto LABEL_3;
  }

  if ((v9 + 2) < 0xA2u)
  {
    goto LABEL_17;
  }

  v13 = &nextstep_from_tab;
  v14 = &unk_183306954;
  while (1)
  {
    v15 = &v13[2 * ((v14 - v13) >> 3)];
    v16 = *v15;
    if (v16 <= v9)
    {
      break;
    }

    v14 = v15 - 2;
LABEL_16:
    if (v13 > v14)
    {
      goto LABEL_17;
    }
  }

  if (v16 < v9)
  {
    v13 = v15 + 2;
    goto LABEL_16;
  }

  v10 = *(v15 + 2);
LABEL_3:
  result = v18[0];
  if (!v10 || v18[0] < 2)
  {
LABEL_17:
    result = 0;
    goto LABEL_18;
  }

  if (a5)
  {
    *a4 = v10;
  }

  *a6 = 1;
LABEL_18:
  v17 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFToUTF8Len(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
{
  if (!a3)
  {
    return 0;
  }

  LODWORD(result) = 0;
  v4 = a2;
  do
  {
    v6 = *v4++;
    v5 = v6;
    v7 = a3 - 1;
    if ((v6 & 0xFC00) != 0xD800 || a3 == 1)
    {
      --a3;
    }

    else
    {
      v9 = *v4;
      v10 = v9 & 0xFC00;
      v11 = a2 + 2;
      v12 = v9 + (v5 << 10) - 56613888;
      a3 -= 2;
      if (v10 == 56320)
      {
        v4 = v11;
      }

      else
      {
        a3 = v7;
      }

      if (v10 == 56320)
      {
        v5 = v12;
      }
    }

    if (v5 < 0x10000)
    {
      v13 = 3;
    }

    else
    {
      v13 = 4;
    }

    if (v5 < 0x800)
    {
      v13 = 2;
    }

    if (v5 >= 0x80)
    {
      v14 = v13;
    }

    else
    {
      v14 = 1;
    }

    result = (v14 + result);
    a2 = v4;
  }

  while (a3);
  return result;
}

uint64_t __CFFromUTF8Len(__int16 a1, unsigned __int8 *a2, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v3 = a3;
    v6 = 0;
    v7 = a1 & 0xC0;
    while (1)
    {
      v8 = *a2;
      if (v3 <= trailingBytesForUTF8[*a2])
      {
        goto LABEL_56;
      }

      --v3;
      if ((~v8 & 0xF8) == 0)
      {
LABEL_5:
        if ((a1 & 1) == 0 && v8 != 169)
        {
          goto LABEL_56;
        }

        ++a2;
        goto LABEL_8;
      }

      v9 = trailingBytesForUTF8[*a2];
      if ((a1 & 0x800) == 0)
      {
        v10 = &a2[v9];
        while (v10 > a2)
        {
          v11 = *v10--;
          if ((v11 & 0xC0) != 0x80)
          {
            goto LABEL_5;
          }
        }

        if (v8 < -62 || v8 > 0xF4)
        {
          goto LABEL_5;
        }

        if (*a2 > 0xEFu)
        {
          if (v8 == 240)
          {
            if (a2[1] < 0x90u)
            {
              goto LABEL_5;
            }
          }

          else if (v8 == 244 && a2[1] >= 0x90u)
          {
            goto LABEL_5;
          }
        }

        else if (v8 == 224)
        {
          if (a2[1] < 0xA0u)
          {
            goto LABEL_5;
          }
        }

        else if (v8 == 237 && a2[1] > 0x9Fu)
        {
          goto LABEL_5;
        }
      }

      v12 = 0;
      v13 = trailingBytesForUTF8[*a2];
      if (v13 > 1)
      {
        break;
      }

      if (trailingBytesForUTF8[*a2])
      {
        goto LABEL_36;
      }

LABEL_37:
      v3 -= v9;
      ++a2;
      v17 = v13 + v8;
      v18 = v17 - offsetsFromUTF8[v9];
      if (v18 >= 0x10000)
      {
        if (v18 < 0x110000)
        {
          if (v7 && CFUniCharIsMemberOf(v17 - offsetsFromUTF8[v9], 0x65u))
          {
            v19 = CFUniCharDecomposeCharacter(v18, v26, 10);
            if (v19 >= 1)
            {
              v20 = v19 + 1;
              v21 = &v26[v19 - 1];
              do
              {
                v22 = *v21--;
                if (v22 < 0x10000)
                {
                  v23 = 1;
                }

                else
                {
                  v23 = 2;
                }

                v6 += v23;
                --v20;
              }

              while (v20 > 1);
            }
          }

          else
          {
            v6 += 2;
          }

          goto LABEL_9;
        }
      }

      else
      {
        if ((a1 & 0x80) == 0 && (v18 & 0xF800) == 0xD800)
        {
          goto LABEL_56;
        }

        if (v7 && v18 >= 0x80 && CFUniCharIsMemberOf(v18, 0x65u))
        {
          v6 += CFUniCharDecomposeCharacter(v18, v26, 10);
          goto LABEL_9;
        }
      }

LABEL_8:
      ++v6;
LABEL_9:
      if (!v3)
      {
        goto LABEL_56;
      }
    }

    if (v13 != 2)
    {
      v12 = v8 << 6;
      v14 = *++a2;
      v8 = v14;
    }

    v15 = *++a2;
    v12 = (v12 + v8) << 6;
    v8 = v15;
LABEL_36:
    v16 = *++a2;
    v13 = (v12 + v8) << 6;
    v8 = v16;
    goto LABEL_37;
  }

  v6 = 0;
LABEL_56:
  v24 = *MEMORY[0x1E69E9840];
  return v6;
}

CFURLRef _CFBundleCopyMainBundleExecutableURL(_BYTE *a1)
{
  v2 = _CFProcessPath();
  if (v2 && (v3 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, v2)) != 0)
  {
    v4 = v3;
    v5 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v3, kCFURLPOSIXPathStyle, 0);
    CFRelease(v4);
    if (!a1)
    {
      return v5;
    }
  }

  else
  {
    v5 = 0;
    if (!a1)
    {
      return v5;
    }
  }

  v6 = _mainBundle;
  if (_mainBundle)
  {
    v6 = *(_mainBundle + 53) - 5 < 0xFFFFFFFE;
  }

  *a1 = v6;
  return v5;
}

BOOL _CFBundleMainBundleHasCompatibilityIdentifier(const char *a1)
{
  os_unfair_lock_lock(&_mainBundleLock);
  if (__CFBundleMainID)
  {
    v2 = strncmp(a1, __CFBundleMainID, 0x402uLL) == 0;
  }

  else
  {
    v2 = 0;
  }

  os_unfair_lock_unlock(&_mainBundleLock);
  return v2;
}

BOOL _CFBundleMainBundleHasCompatibilityShortVersion(const char *a1)
{
  os_unfair_lock_lock(&_mainBundleLock);
  v2 = __CFBundleShortVersionString;
  if (__CFBundleShortVersionString)
  {
    v3 = strnlen(a1, 0x402uLL);
    v4 = strncmp(a1, v2, v3) == 0;
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&_mainBundleLock);
  return v4;
}

CFURLRef _CFURLCreateResolvedDirectoryWithString(const __CFAllocator *a1, const __CFString *a2, const __CFURL *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = CFURLCreateWithString(a1, a2, a3);
  v5 = CFURLCopyAbsoluteURL(v4);
  CFRelease(v4);
  v6 = CFURLCopyFileSystemPath(v5, kCFURLPOSIXPathStyle);
  CFRelease(v5);
  LODWORD(v5) = CFStringGetFileSystemRepresentation(v6, buffer, 1024);
  CFRelease(v6);
  if (!v5 || (v7 = open(buffer, 0), v7 < 1))
  {
LABEL_10:
    v10 = 0;
    goto LABEL_11;
  }

  v8 = v7;
  if (fcntl(v7, 50, v14) == -1)
  {
    if (_CFBundleResourceLogger_onceToken != -1)
    {
      _CFURLCreateResolvedDirectoryWithString_cold_1();
    }

    v11 = _CFBundleResourceLogger__log;
    if (os_log_type_enabled(_CFBundleResourceLogger__log, OS_LOG_TYPE_ERROR))
    {
      _CFURLCreateResolvedDirectoryWithString_cold_2(v11);
    }

    close(v8);
    goto LABEL_10;
  }

  close(v8);
  v9 = CFStringCreateWithFileSystemRepresentation(a1, v14);
  v10 = CFURLCreateWithFileSystemPath(a1, v9, kCFURLPOSIXPathStyle, 1u);
  CFRelease(v9);
LABEL_11:
  v12 = *MEMORY[0x1E69E9840];
  return v10;
}

const void *_CFBundleCreateIfLooksLikeBundle(const __CFAllocator *a1, const __CFURL *a2)
{
  v2 = _CFBundleCreate(a1, a2, 1, 0);
  v3 = v2;
  if (v2 && _CFBundleEffectiveLayoutVersion(v2) - 3 <= 1)
  {
    CFRelease(v3);
    return 0;
  }

  return v3;
}

uint64_t _CFBundleURLLooksLikeBundle(const __CFURL *a1)
{
  result = _CFBundleCreateIfLooksLikeBundle(&__kCFAllocatorSystemDefault, a1);
  if (result)
  {
    CFRelease(result);
    return 1;
  }

  return result;
}

CFBundleRef _CFBundleMainBundleInfoDictionaryComesFromResourceFork()
{
  result = CFBundleGetMainBundle();
  if (result)
  {
    return (*(result + 65) != 0);
  }

  return result;
}

void _CFBundleFlushBundleCaches(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  v3 = *(a1 + 24);
  v2 = *(a1 + 32);
  *(a1 + 24) = 0;
  if (v2)
  {
    CFRelease(v2);
    *(a1 + 32) = 0;
  }

  v4 = *(a1 + 216);
  if (v4)
  {
    CFRelease(v4);
    *(a1 + 216) = 0;
  }

  v5 = *(a1 + 104);
  if (v5)
  {
    CFRelease(v5);
    *(a1 + 104) = 0;
  }

  v6 = *(a1 + 40);
  if (v6)
  {
    CFRelease(v6);
    *(a1 + 40) = 0;
  }

  v7 = *(a1 + 144);
  if (v7)
  {
    CFRelease(v7);
    *(a1 + 144) = 0;
  }

  v8 = *(a1 + 152);
  if (v8)
  {
    CFRelease(v8);
    *(a1 + 152) = 0;
  }

  v9 = *(a1 + 160);
  if (v9)
  {
    CFRelease(v9);
    *(a1 + 160) = 0;
  }

  if (*(a1 + 128))
  {
    *(a1 + 128) = 0;
    v10 = *(a1 + 120);
    if (v10)
    {
      CFRelease(v10);
      *(a1 + 120) = 0;
    }
  }

  _CFBundleRefreshInfoDictionaryAlreadyLocked(a1);
  if (v3)
  {
    if (!*(a1 + 24))
    {
      *(a1 + 24) = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    Value = CFDictionaryGetValue(v3, @"NSPrincipalClass");
    if (Value)
    {
      CFDictionarySetValue(*(a1 + 24), @"NSPrincipalClass", Value);
    }

    CFRelease(v3);
  }

  _CFBundleFlushQueryTableCache(a1);

  os_unfair_lock_unlock((a1 + 112));
}

uint64_t _CFBundleCreateUniqueWithOptions(const __CFAllocator *a1, const __CFURL *a2, const __CFSet *a3, char a4)
{
  if (a4)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  return _CFBundleCreate(a1, a2, v5, a3);
}

UInt32 CFBundleGetVersionNumber(CFBundleRef bundle)
{
  v8 = *MEMORY[0x1E69E9840];
  InfoDictionary = CFBundleGetInfoDictionary(bundle);
  Value = CFDictionaryGetValue(InfoDictionary, @"CFBundleNumericVersion");
  if (Value)
  {
    v3 = Value;
    v4 = CFGetTypeID(Value);
    if (v4 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      CFNumberGetValue(v3, kCFNumberSInt32Type, &valuePtr);
      LODWORD(Value) = valuePtr;
    }

    else
    {
      LODWORD(Value) = 0;
    }
  }

  v5 = *MEMORY[0x1E69E9840];
  return Value;
}

CFURLRef _CFBundleCopyAppStoreReceiptURLInDirectory(CFURLRef baseURL, unsigned int a2)
{
  if (baseURL && a2 <= 0xD && ((0x300Fu >> a2) & 1) != 0)
  {
    return CFURLCreateWithString(&__kCFAllocatorSystemDefault, off_1E6D7D6A0[a2], baseURL);
  }

  else
  {
    return 0;
  }
}

CFURLRef _CFBundleCopyWrappedBundleURL(uint64_t a1)
{
  __CFCheckCFInfoPACSignature(a1);
  v2 = _CFGetNonObjCTypeID(a1);
  if (v2 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v2);
  }

  if ((*(a1 + 53) & 0xFE) != 0xC)
  {
    return 0;
  }

  v3 = *(a1 + 16);

  return _CFURLCreateResolvedDirectoryWithString(&__kCFAllocatorSystemDefault, @"WrappedBundle", v3);
}

CFURLRef _CFBundleCopyWrapperContainerURL(uint64_t a1)
{
  __CFCheckCFInfoPACSignature(a1);
  v2 = _CFGetNonObjCTypeID(a1);
  if (v2 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v2);
  }

  if ((*(a1 + 53) & 0xFE) != 0xC)
  {
    return 0;
  }

  v3 = *(a1 + 16);

  return CFURLCreateWithString(&__kCFAllocatorSystemDefault, @"Wrapper", v3);
}

const __CFURL *CFBundleGetExecutableType(uint64_t a1)
{
  __CFCheckCFInfoPACSignature(a1);
  v2 = _CFGetNonObjCTypeID(a1);
  if (v2 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v2);
  }

  result = CFBundleCopyExecutableURL(a1);
  if (result)
  {
    v6 = result;
    if (!*(a1 + 48))
    {
      v8 = _CFBundleGrokBinaryType(result, v4, v5);
      *(a1 + 48) = v8;
      if (v8 != 1 && v8 != 6)
      {
        *(a1 + 64) = 1;
      }
    }

    CFRelease(v6);
    v7 = *(a1 + 48) - 1;
    if (v7 > 7)
    {
      return 0;
    }

    else
    {
      return dword_183306BB0[v7];
    }
  }

  else
  {
    *(a1 + 48) = 7;
  }

  return result;
}

CFErrorRef _CFBundleCreateErrorDebug(const __CFAllocator *a1, CFBundleRef bundle, CFIndex a3, void *a4)
{
  v44 = *MEMORY[0x1E69E9840];
  v7 = CFBundleCopyBundleURL(bundle);
  v8 = CFURLCopyAbsoluteURL(v7);
  v9 = CFBundleCopyExecutableURL(bundle);
  BundleWithIdentifier = _CFBundleGetBundleWithIdentifier(@"com.apple.CoreFoundation", v4);
  v35 = v8;
  v11 = CFURLCopyFileSystemPath(v8, kCFURLPOSIXPathStyle);
  if (v9)
  {
    v12 = CFURLCopyFileSystemPath(v9, kCFURLPOSIXPathStyle);
  }

  else
  {
    v12 = 0;
  }

  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  *userInfoKeys = 0u;
  *userInfoValues = 0u;
  v38 = 0u;
  if (!BundleWithIdentifier)
  {
    StringWithValidatedFormat = 0;
    v16 = 0;
    v17 = 0;
    goto LABEL_36;
  }

  ValueForInfoDictionaryKey = CFBundleGetValueForInfoDictionaryKey(bundle, @"CFBundleName");
  if (ValueForInfoDictionaryKey)
  {
    v14 = CFRetain(ValueForInfoDictionaryKey);
  }

  else
  {
    v18 = CFBundleCopyBundleURL(bundle);
    if (!v18)
    {
      cf = @"<unknown>";
      goto LABEL_18;
    }

    v19 = v18;
    v20 = CFURLCopyFileSystemPath(v18, kCFURLPOSIXPathStyle);
    Length = CFStringGetLength(v20);
    CFRelease(v19);
    if (Length >= 1026)
    {
      v22 = 1026;
    }

    else
    {
      v22 = Length;
    }

    v45.location = 0;
    v45.length = v22;
    CFStringGetCharacters(v20, v45, buffer);
    CFRelease(v20);
    if (Length < 1)
    {
      PathComponent = 0;
    }

    else
    {
      PathComponent = _CFStartOfLastPathComponent(buffer, v22);
    }

    v14 = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, &buffer[PathComponent], v22 - PathComponent);
  }

  cf = v14;
LABEL_18:
  v17 = 0;
  if (a3 > 3585)
  {
    if (a3 == 3586)
    {
      v24 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"BundleErr3586", @"The bundle \\U201c%@\\U201d couldn\\U2019t be loaded because it isn\\U2019t compatible with the current application.", @"Error");
      v16 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"BundleErr3586-C", @"The bundle isn\\U2019t compatible with this application.", @"Error");
      v25 = @"BundleErr3586-R";
      v26 = @"Try installing a newer version of the bundle.";
      goto LABEL_32;
    }

    if (a3 == 3587)
    {
      v24 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"BundleErr3587", @"The bundle \\U201c%@\\U201d couldn\\U2019t be loaded because it is damaged or missing necessary resources.", @"Error");
      v16 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"BundleErr3587-C", @"The bundle is damaged or missing necessary resources.", @"Error");
      v25 = @"BundleErr3587-R";
    }

    else
    {
      v16 = 0;
      StringWithValidatedFormat = 0;
      if (a3 != 3588)
      {
        goto LABEL_35;
      }

      v24 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"BundleErr3588", @"The bundle \\U201c%@\\U201d couldn\\U2019t be loaded.", @"Error");
      v16 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"BundleErr3588-C", @"The bundle couldn\\U2019t be loaded.", @"Error");
      v25 = @"BundleErr3588-R";
    }

LABEL_31:
    v26 = @"Try reinstalling the bundle.";
LABEL_32:
    v17 = CFBundleCopyLocalizedString(BundleWithIdentifier, v25, v26, @"Error");
    if (v24)
    {
      StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(a1, 0, @"%@", v24, 0, cf);
      CFRelease(v24);
    }

    else
    {
      StringWithValidatedFormat = 0;
    }

    goto LABEL_35;
  }

  if (a3 == 4)
  {
    v24 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"BundleErr4", @"The bundle \\U201c%@\\U201d couldn\\U2019t be loaded because its executable couldn\\U2019t be located.", @"Error");
    v16 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"BundleErr4-C", @"The bundle\\U2019s executable couldn\\U2019t be located.", @"Error");
    v25 = @"BundleErr4-R";
    goto LABEL_31;
  }

  if (a3 == 3584)
  {
    v24 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"BundleErr3584", @"The bundle \\U201c%@\\U201d couldn\\U2019t be loaded because its executable isn\\U2019t loadable.", @"Error");
    v16 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"BundleErr3584-C", @"The bundle\\U2019s executable isn\\U2019t loadable.", @"Error");
    v25 = @"BundleErr3584-R";
    goto LABEL_31;
  }

  v16 = 0;
  StringWithValidatedFormat = 0;
  if (a3 == 3585)
  {
    v24 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"BundleErr3585", @"The bundle \\U201c%@\\U201d couldn\\U2019t be loaded because it doesn\\U2019t contain a version for the current architecture.", @"Error");
    v16 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"BundleErr3585-C", @"The bundle doesn\\U2019t contain a version for the current architecture.", @"Error");
    v25 = @"BundleErr3585-R";
    v26 = @"Try installing a universal version of the bundle.";
    goto LABEL_32;
  }

LABEL_35:
  CFRelease(cf);
LABEL_36:
  if (v11)
  {
    v27 = &userInfoValues[1];
    v28 = &userInfoKeys[1];
    userInfoKeys[0] = @"NSBundlePath";
    userInfoValues[0] = v11;
    v29 = 1;
    if (!v12)
    {
      goto LABEL_39;
    }

    goto LABEL_38;
  }

  v29 = 0;
  v28 = userInfoKeys;
  v27 = userInfoValues;
  if (v12)
  {
LABEL_38:
    *v28 = @"NSFilePath";
    *v27 = v12;
    ++v29;
  }

LABEL_39:
  if (StringWithValidatedFormat)
  {
    userInfoKeys[v29] = @"NSLocalizedDescription";
    userInfoValues[v29++] = StringWithValidatedFormat;
  }

  if (v16)
  {
    userInfoKeys[v29] = @"NSLocalizedFailureReason";
    userInfoValues[v29++] = v16;
  }

  if (v17)
  {
    userInfoKeys[v29] = @"NSLocalizedRecoverySuggestion";
    userInfoValues[v29++] = v17;
  }

  if (a4)
  {
    userInfoKeys[v29] = @"NSDebugDescription";
    userInfoValues[v29++] = a4;
  }

  v30 = CFErrorCreateWithUserInfoKeysAndValues(a1, @"NSCocoaErrorDomain", a3, userInfoKeys, userInfoValues, v29);
  if (v7)
  {
    CFRelease(v7);
  }

  if (v35)
  {
    CFRelease(v35);
  }

  if (v9)
  {
    CFRelease(v9);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  if (v12)
  {
    CFRelease(v12);
  }

  if (StringWithValidatedFormat)
  {
    CFRelease(StringWithValidatedFormat);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

Boolean CFBundlePreflightExecutable(CFBundleRef bundle, CFErrorRef *error)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = 0;
  if (error)
  {
    v4 = v18;
  }

  else
  {
    v4 = 0;
  }

  v5 = CFBundleCopyExecutableURL(bundle);
  os_unfair_lock_lock(bundle + 24);
  if (!v5)
  {
    *(bundle + 12) = 7;
  }

  _CFBundleDlfcnCheckLoaded(bundle);
  if (!*(bundle + 12))
  {
    v10 = _CFBundleGrokBinaryType(v5, v6, v7);
    *(bundle + 12) = v10;
    if (v10 != 1 && v10 != 6)
    {
      *(bundle + 64) = 1;
    }
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v8 = *(bundle + 52);
  os_unfair_lock_unlock(bundle + 24);
  if (v8)
  {
    LOBYTE(v9) = 1;
    goto LABEL_33;
  }

  v11 = *(bundle + 12);
  if (v11 <= 3)
  {
    if (!v11 || v11 == 3)
    {
      goto LABEL_25;
    }
  }

  else
  {
    if (v11 <= 6)
    {
      if (v11 != 4 && v11 != 6)
      {
        goto LABEL_21;
      }

LABEL_25:
      v9 = _CFBundleDlfcnPreflight(bundle, v4);
      if (!error)
      {
        goto LABEL_33;
      }

      goto LABEL_30;
    }

    if (v11 == 7)
    {
      if (error)
      {
        v12 = CFGetAllocator(bundle);
        v13 = bundle;
        v14 = 4;
        goto LABEL_29;
      }

LABEL_32:
      LOBYTE(v9) = 0;
      goto LABEL_33;
    }

    if (v11 == 8)
    {
      goto LABEL_25;
    }
  }

LABEL_21:
  if (!error)
  {
    goto LABEL_32;
  }

  v12 = CFGetAllocator(bundle);
  v13 = bundle;
  v14 = 3584;
LABEL_29:
  ErrorDebug = _CFBundleCreateErrorDebug(v12, v13, v14, 0);
  v9 = 0;
  v18[0] = ErrorDebug;
LABEL_30:
  if (!v9)
  {
    *error = v18[0];
  }

LABEL_33:
  v16 = *MEMORY[0x1E69E9840];
  return v9;
}

CFArrayRef CFBundleCopyExecutableArchitectures(CFBundleRef bundle)
{
  result = CFBundleCopyExecutableURL(bundle);
  if (result)
  {
    v4 = result;
    v5 = _CFBundleCopyArchitecturesForExecutable(result, v2, v3);
    CFRelease(v4);
    return v5;
  }

  return result;
}

CFPlugInRef CFBundleGetPlugIn(CFPlugInRef bundle)
{
  if (!*(bundle + 72))
  {
    return 0;
  }

  return bundle;
}

__CFBundle *_CFBundleGetBundleWithIdentifierAndLibraryName(void *a1, const __CFString *a2)
{
  if (a2)
  {
    _CFBundleEnsureBundlesUpToDateWithHint(a2);
  }

  os_unfair_lock_lock(&CFBundleGlobalDataLock);
  v3 = _CFBundleGetFromTablesLocked(a1);
  os_unfair_lock_unlock(&CFBundleGlobalDataLock);
  return v3;
}

CFArrayRef CFBundleGetAllBundles(void)
{
  os_unfair_lock_lock(&CFBundleGlobalDataLock);
  if (CFBundleGetAllBundles__lastBundleList)
  {
    if (!CFEqual(CFBundleGetAllBundles__lastBundleList, _allBundles))
    {
      os_unfair_lock_unlock(&CFBundleGlobalDataLock);
      v0 = _CFBundleCopyAllBundles();
      os_unfair_lock_lock(&CFBundleGlobalDataLock);
      CFBundleGetAllBundles__lastBundleList = v0;
    }
  }

  else
  {
    os_unfair_lock_unlock(&CFBundleGlobalDataLock);
    v1 = _CFBundleCopyAllBundles();
    os_unfair_lock_lock(&CFBundleGlobalDataLock);
    if (CFBundleGetAllBundles__lastBundleList)
    {
      CFRelease(v1);
    }

    else
    {
      CFBundleGetAllBundles__lastBundleList = v1;
    }
  }

  v2 = CFBundleGetAllBundles__lastBundleList;
  os_unfair_lock_unlock(&CFBundleGlobalDataLock);
  return v2;
}

__CFArray *_CFBundleCopyAllBundles()
{
  _CFBundleEnsureAllBundlesUpToDate();
  MainBundle = CFBundleGetMainBundle();
  os_unfair_lock_lock(&CFBundleGlobalDataLock);
  Count = CFArrayGetCount(_allBundles);
  MutableCopy = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, Count + 1, _allBundles);
  os_unfair_lock_unlock(&CFBundleGlobalDataLock);
  CFArrayInsertValueAtIndex(MutableCopy, 0, MainBundle);
  return MutableCopy;
}

CFURLRef CFBundleCopySharedFrameworksURL(CFBundleRef bundle)
{
  __CFCheckCFInfoPACSignature(bundle);
  v2 = _CFGetNonObjCTypeID(bundle);
  if (v2 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v2);
  }

  v3 = *(bundle + 53);
  v4 = CFGetAllocator(bundle);
  v5 = *(bundle + 2);
  if (v3 <= 11)
  {
    if (v3 == 1)
    {
      v6 = @"Support%20Files/SharedFrameworks/";
      goto LABEL_11;
    }

    if (v3 == 2)
    {
      v6 = @"Contents/SharedFrameworks/";
LABEL_11:

      return CFURLCreateWithString(v4, v6, v5);
    }

LABEL_9:
    v6 = @"SharedFrameworks/";
    goto LABEL_11;
  }

  if (v3 == 12)
  {
    v7 = @"WrappedBundle/Contents/SharedFrameworks/";
  }

  else
  {
    if (v3 != 13)
    {
      goto LABEL_9;
    }

    v7 = @"WrappedBundle/SharedFrameworks/";
  }

  return _CFURLCreateResolvedDirectoryWithString(v4, v7, v5);
}

CFURLRef CFBundleCopySharedSupportURL(CFBundleRef bundle)
{
  __CFCheckCFInfoPACSignature(bundle);
  v2 = _CFGetNonObjCTypeID(bundle);
  if (v2 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v2);
  }

  v3 = *(bundle + 53);
  v4 = CFGetAllocator(bundle);
  v5 = *(bundle + 2);
  if (v3 <= 11)
  {
    if (v3 == 1)
    {
      v6 = @"Support%20Files/SharedSupport/";
      goto LABEL_11;
    }

    if (v3 == 2)
    {
      v6 = @"Contents/SharedSupport/";
LABEL_11:

      return CFURLCreateWithString(v4, v6, v5);
    }

LABEL_9:
    v6 = @"SharedSupport/";
    goto LABEL_11;
  }

  if (v3 == 12)
  {
    v7 = @"WrappedBundle/Contents/SharedSupport/";
  }

  else
  {
    if (v3 != 13)
    {
      goto LABEL_9;
    }

    v7 = @"WrappedBundle/SharedSupport/";
  }

  return _CFURLCreateResolvedDirectoryWithString(v4, v7, v5);
}

void _CFBundleFlushQueryTableCache(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  v2 = *(a1 + 184);
  if (v2)
  {
    CFDictionaryRemoveAllValues(v2);
  }

  os_unfair_lock_unlock((a1 + 176));
}

CFMutableArrayRef _CFBundleCopyResourceURLForLanguage(CFMutableArrayRef result, const __CFString *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5)
{
  if (result)
  {
    return _CFBundleCopyFindResources(result, 0, a3, a2, a3, a4, a5, 0, 1, 0);
  }

  return result;
}

CFArrayRef CFBundleCopyResourceURLsOfTypeForLocalization(CFBundleRef bundle, CFStringRef resourceType, CFStringRef subDirName, CFStringRef localizationName)
{
  if (bundle)
  {
    return _CFBundleCopyFindResources(bundle, 0, subDirName, 0, resourceType, subDirName, localizationName, 1, 1, 0);
  }

  return CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
}

CFArrayRef CFBundleCopyExecutableArchitecturesForURL(CFURLRef url)
{
  v2 = CFBundleCreate(&__kCFAllocatorSystemDefault, url);
  if (v2)
  {
    v5 = v2;
    v6 = CFBundleCopyExecutableArchitectures(v2);
    CFRelease(v5);
    return v6;
  }

  else
  {

    return _CFBundleCopyArchitecturesForExecutable(url, v3, v4);
  }
}

CFBundleRef _CFBundleAddResourceURL(uint64_t a1, const __CFURL *a2)
{
  result = CFBundleCreate(&__kCFAllocatorSystemDefault, a2);
  if (result)
  {
    v5 = result;
    if (result == a1)
    {
      __break(1u);
    }

    else
    {
      os_unfair_lock_lock_with_options();
      Mutable = *(a1 + 208);
      if (!Mutable)
      {
        Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        *(a1 + 208) = Mutable;
      }

      CFDictionarySetValue(Mutable, a2, v5);
      os_unfair_lock_unlock((a1 + 200));
      CFRelease(v5);
      _CFBundleFlushStringSourceCache(a1);
      return 1;
    }
  }

  return result;
}

uint64_t _CFBundleRemoveResourceURL(uint64_t a1, const void *a2)
{
  os_unfair_lock_lock_with_options();
  v4 = *(a1 + 208);
  if (v4)
  {
    CFDictionaryRemoveValue(v4, a2);
    v5 = 1;
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock((a1 + 200));
  _CFBundleFlushStringSourceCache(a1);
  return v5;
}

void _CFBundleFindResourcesWithPredicate(__CFArray *a1, CFDictionaryRef theDict, uint64_t a3, _BYTE *a4)
{
  Count = CFDictionaryGetCount(theDict);
  if (!Count)
  {
    return;
  }

  v9 = Count;
  v10 = 8 * Count;
  v11 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
  v12 = malloc_type_malloc(v10, 0xC0040B8AA526DuLL);
  v13 = v12;
  if (v11 && v12)
  {
    v21 = v12;
    CFDictionaryGetKeysAndValues(theDict, v11, v12);
    v14 = v9 - 1;
    if (v9 >= 1)
    {
      v15 = v11;
      do
      {
        if ((*(a3 + 16))(a3, *v15, a4))
        {
          v16 = CFGetTypeID(*v13);
          TypeID = CFStringGetTypeID();
          v18 = *v13;
          if (v16 == TypeID)
          {
            CFArrayAppendValue(a1, *v13);
          }

          else
          {
            v23.length = CFArrayGetCount(*v13);
            v23.location = 0;
            CFArrayAppendArray(a1, v18, v23);
          }
        }

        if (*a4)
        {
          v19 = 1;
        }

        else
        {
          v19 = v14 == 0;
        }

        --v14;
        ++v13;
        ++v15;
      }

      while (!v19);
    }

    free(v11);
    v20 = v21;
    goto LABEL_20;
  }

  if (v11)
  {
    free(v11);
  }

  if (v13)
  {
    v20 = v13;
LABEL_20:

    free(v20);
  }
}

CFStringRef __CFCharacterSetCopyDescription(unint64_t *cf)
{
  v2 = cf[5];
  if (v2 && (*(v2 + 8) || *(v2 + 13)))
  {
    goto LABEL_12;
  }

  v3 = atomic_load(cf + 1);
  v4 = (v3 >> 4) & 7;
  if (v4 > 2)
  {
    if ((v4 == 3 || v4 == 4) && !cf[3])
    {
      goto LABEL_30;
    }

LABEL_12:
    Mutable = 0;
    v6 = atomic_load(cf + 1);
    v7 = (v6 >> 4) & 7;
    if (v7 > 2)
    {
      if ((v7 - 3) < 2)
      {
        v13 = @"<CFCharacterSet Bitmap>";
        goto LABEL_24;
      }
    }

    else
    {
      if (!v7)
      {
        switch(cf[3])
        {
          case 1uLL:
            v13 = @"<CFCharacterSet Predefined Control Set>";
            goto LABEL_24;
          case 2uLL:
            v13 = @"<CFCharacterSet Predefined Whitespace Set>";
            goto LABEL_24;
          case 3uLL:
            v13 = @"<CFCharacterSet Predefined WhitespaceAndNewline Set>";
            goto LABEL_24;
          case 4uLL:
            v13 = @"<CFCharacterSet Predefined DecimalDigit Set>";
            goto LABEL_24;
          case 5uLL:
            v13 = @"<CFCharacterSet Predefined Letter Set>";
            goto LABEL_24;
          case 6uLL:
            v13 = @"<CFCharacterSet Predefined LowercaseLetter Set>";
            goto LABEL_24;
          case 7uLL:
            v13 = @"<CFCharacterSet Predefined UppercaseLetter Set>";
            goto LABEL_24;
          case 8uLL:
            v13 = @"<CFCharacterSet Predefined NonBase Set>";
            goto LABEL_24;
          case 9uLL:
            v13 = @"<CFCharacterSet Predefined Decomposable Set>";
            goto LABEL_24;
          case 0xAuLL:
            v13 = @"<CFCharacterSet Predefined AlphaNumeric Set>";
            goto LABEL_24;
          case 0xBuLL:
            v13 = @"<CFCharacterSet Predefined Punctuation Set>";
            goto LABEL_24;
          case 0xCuLL:
            v13 = @"<CFCharacterSet Predefined Illegal Set>";
            goto LABEL_24;
          case 0xDuLL:
            v13 = @"<CFCharacterSet Predefined CapitalizedLetter Set>";
            goto LABEL_24;
          case 0xEuLL:
            v13 = @"<CFCharacterSet Predefined Symbol Set>";
            goto LABEL_24;
          case 0xFuLL:
            v13 = @"<CFCharacterSet Predefined Newline Set>";
            goto LABEL_24;
          default:
            return 0;
        }
      }

      if (v7 == 1)
      {
        v15 = CFGetAllocator(cf);
        return CFStringCreateWithFormat(v15, 0, @"<CFCharacterSet Range(%u, %ld)>", *(cf + 6), cf[4]);
      }

      v8 = cf[4];
      v9 = CFGetAllocator(cf);
      Length = CFStringGetLength(@"<CFCharacterSet Items(");
      Mutable = CFStringCreateMutable(v9, Length - v8 + 8 * v8 + 2);
      CFStringAppend(Mutable, @"<CFCharacterSet Items(");
      if (v8 >= 1)
      {
        for (i = 0; i != v8; ++i)
        {
          if (i)
          {
            v12 = " ";
          }

          else
          {
            v12 = "";
          }

          CFStringAppendFormat(Mutable, 0, @"%sU+%04X", v12, *(cf[3] + 2 * i));
        }
      }

      CFStringAppend(Mutable, @">"));
    }

    return Mutable;
  }

  if (v4 != 1 && v4 != 2 || cf[4])
  {
    goto LABEL_12;
  }

LABEL_30:
  v16 = atomic_load(cf + 1);
  if ((v16 & 8) != 0)
  {
    v13 = @"<CFCharacterSet All>";
  }

  else
  {
    v13 = @"<CFCharacterSet Empty>";
  }

LABEL_24:

  return CFRetain(v13);
}

Boolean CFCharacterSetHasMemberInPlane(CFCharacterSetRef theSet, CFIndex thePlane)
{
  v2 = MEMORY[0x1EEE9AC00](theSet, thePlane);
  v37 = *MEMORY[0x1E69E9840];
  v4 = atomic_load((v2 + 8));
  if (v3 > 0x10)
  {
    goto LABEL_2;
  }

  v6 = v3;
  v7 = v2;
  if (CF_IS_OBJC(0x19uLL, v2))
  {
    LOBYTE(v5) = [v7 hasMemberInPlane:v6];
    goto LABEL_5;
  }

  v5 = (v4 >> 3) & 1;
  v9 = v7[5];
  if (v9 && (*(v9 + 8) || *(v9 + 13)))
  {
    goto LABEL_17;
  }

  v10 = atomic_load(v7 + 1);
  v11 = (v10 >> 4) & 7;
  if (v11 <= 2)
  {
    if ((v11 == 1 || v11 == 2) && !v7[4])
    {
      goto LABEL_5;
    }

LABEL_17:
    v12 = atomic_load(v7 + 1);
    if ((v12 & 0x70) != 0)
    {
      v13 = atomic_load(v7 + 1);
      if ((v13 & 0x70) == 0x10)
      {
        v14 = *(v7 + 6);
        v15 = v14 >> 16;
        v16 = (v14 + *(v7 + 8) - 1) >> 16;
        if ((v4 & 8) == 0)
        {
          LOBYTE(v5) = v15 <= v6 && v16 >= v6;
          goto LABEL_5;
        }

        LOBYTE(v5) = 1;
        if (v15 > v6 || v16 < v6)
        {
          goto LABEL_5;
        }

        if (v15 >= v6 || v16 <= v6)
        {
          v24 = *(v7 + 6);
          v25 = (v14 + *(v7 + 16) - 1);
          if (v15 == v6)
          {
            if (!*(v7 + 6))
            {
              v18 = v15 != v16 || v25 == 0xFFFF;
              goto LABEL_69;
            }

LABEL_92:
            LOBYTE(v5) = 1;
            goto LABEL_5;
          }

          if (v25 != 0xFFFF)
          {
            goto LABEL_92;
          }

          if (*(v7 + 6))
          {
            v28 = v15 == v16;
          }

          else
          {
            v28 = 0;
          }

LABEL_78:
          LOBYTE(v5) = v28;
          goto LABEL_5;
        }

        goto LABEL_2;
      }

      if (v6)
      {
        v19 = v7[5];
        if (!v19)
        {
          goto LABEL_2;
        }

        if (((*(v19 + 8) >> v6) & 1) != 0 && *(v19 + 12) >= v6 && (v20 = *(*v19 + 8 * v6 - 8)) != 0)
        {
          v21 = atomic_load(v20 + 1);
          if ((v21 & 0x70) != 0x10)
          {
            v29 = atomic_load(v20 + 1);
            if ((v29 & 0x70) == 0x30)
            {
              v30 = v7[5];
              if (!v30 || !*(v30 + 13))
              {
                goto LABEL_92;
              }

              v28 = __CFCSetIsEqualBitmap(v20[3], -1) == 0;
              goto LABEL_78;
            }

            __CFCSetGetBitmap(v20, __b);
            v31 = v7[5];
            if (!v31 || !*(v31 + 13))
            {
              goto LABEL_92;
            }

            if (&v35 != -9)
            {
              v32 = 0;
              do
              {
                LOBYTE(v5) = v32 != 2048;
                if (v32 == 2048)
                {
                  break;
                }

                v33 = __b[0].i32[v32++];
              }

              while (v33 == -1);
              goto LABEL_5;
            }

LABEL_2:
            LOBYTE(v5) = 0;
            goto LABEL_5;
          }

          v22 = v7[5];
          if (!v22 || !*(v22 + 13) || *(v20 + 6))
          {
            goto LABEL_92;
          }

          v18 = v20[4] == 0x10000;
        }

        else
        {
          v18 = *(v19 + 13) == 0;
        }
      }

      else
      {
        v26 = atomic_load(v7 + 1);
        v27 = (v26 >> 4) & 7;
        if (v27 != 4 && v27 != 3)
        {
          if (v27 == 2 && !v7[4])
          {
            goto LABEL_5;
          }

          goto LABEL_92;
        }

        v18 = v7[3] == 0;
      }
    }

    else
    {
      v5 = v7[3];
      if (v5 == 1)
      {
        if (v6 == 14 || (v4 & 8) != 0)
        {
          goto LABEL_5;
        }

        LODWORD(v5) = 1;
      }

      else
      {
        if (v5 < 4 || v5 == 15)
        {
          if (v6)
          {
            v18 = (v4 & 8) == 0;
          }

          else
          {
            v18 = 0;
          }

          goto LABEL_69;
        }

        if (v5 == 12)
        {
          LOBYTE(v5) = (v4 & 8) == 0 || v6 - 14 < 0xFFFFFFFFFFFFFFF5;
          goto LABEL_5;
        }

        if ((v4 & 8) != 0)
        {
          goto LABEL_92;
        }
      }

      v18 = CFUniCharGetBitmapPtrForPlane(v5, v6) == 0;
    }

LABEL_69:
    LOBYTE(v5) = !v18;
    goto LABEL_5;
  }

  if (v11 != 3 && v11 != 4 || v7[3])
  {
    goto LABEL_17;
  }

LABEL_5:
  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

CFDataRef CFCharacterSetCreateBitmapRepresentation(CFAllocatorRef alloc, CFCharacterSetRef theSet)
{
  v96 = *MEMORY[0x1E69E9840];
  if (!CF_IS_OBJC(0x19uLL, theSet))
  {
    v6 = *(theSet + 5);
    if (v6)
    {
      v7 = *(v6 + 13);
      v8 = *(v6 + 13) != 0;
      v9 = *(v6 + 8);
      if (v9)
      {
        v10 = 0;
        v11 = 0;
        do
        {
          v12 = v10 + 1;
          if (v7 || ((v9 >> (v10 + 1)) & 1) != 0 && v12 <= *(v6 + 12) && *(*v6 + 8 * v10))
          {
            v95[v11++] = v12;
          }

          ++v10;
        }

        while (v10 != 16);
        v13 = 8193 * v11 + 0x2000;
        Mutable = CFDataCreateMutable(alloc, v13);
        CFDataSetLength(Mutable, v13);
        MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
        __CFCSetGetBitmap(theSet, MutableBytePtr);
        if (v11 > 0)
        {
          v16 = CFDataGetMutableBytePtr(Mutable);
          v17 = *(theSet + 5);
          if (v17)
          {
            if (*(v17 + 8))
            {
              v18 = v16;
              v19 = 0;
              if (v7)
              {
                v20 = -1;
              }

              else
              {
                v20 = 0;
              }

              v21 = vdupq_n_s32(v20);
              v22 = v16 + 8193;
              v94 = v21;
              do
              {
                v23 = v95[v19];
                v18[512].i8[0] = v23;
                if (!v23)
                {
                  __break(1u);
                }

                v18 = (v18 + 8193);
                if (v23 <= 0x10 && (v24 = *(theSet + 5)) != 0 && ((*(v24 + 8) >> v23) & 1) != 0 && *(v24 + 12) >= v23 && (v25 = *(*v24 + 8 * v23 - 8)) != 0)
                {
                  __CFCSetGetBitmap(v25, v18);
                  v21 = v94;
                  if (v7)
                  {
                    for (i = 0; i != 0x2000; i += 16)
                    {
                      *&v22[i] = vmvnq_s8(*&v22[i]);
                    }
                  }
                }

                else
                {
                  for (j = 0; j != 0x2000; j += 16)
                  {
                    *&v22[j] = v21;
                  }
                }

                ++v19;
                v22 += 8193;
              }

              while (v19 != v11);
            }
          }
        }

        goto LABEL_136;
      }
    }

    else
    {
      v8 = 0;
    }

    v28 = atomic_load(theSet + 1);
    v29 = atomic_load(theSet + 1);
    if ((v28 & 0x70) == 0)
    {
      if ((v29 & 8) != 0)
      {
        v35 = 16;
      }

      else
      {
        v35 = CFUniCharGetNumberOfPlanes(*(theSet + 6)) - 1;
      }

      v40 = 8193 * v35 + 0x2000;
      Mutable = CFDataCreateMutable(alloc, v40);
      CFDataSetLength(Mutable, v40);
      v41 = CFDataGetMutableBytePtr(Mutable);
      __CFCSetGetBitmap(theSet, v41);
      if (v35 >= 1)
      {
        v42 = CFDataGetMutableBytePtr(Mutable) + 0x2000;
        v43 = atomic_load(theSet + 1);
        v44 = 1;
        v45 = (v43 >> 3) & 1;
        do
        {
          BitmapForPlane = CFUniCharGetBitmapForPlane(*(theSet + 6), v44, v42 + 1, v45);
          if (BitmapForPlane != 255)
          {
            *v42 = v44;
            if (BitmapForPlane == 1)
            {
              memset(v42 + 1, 255, 0x2000uLL);
            }

            v42 += 8193;
          }

          ++v44;
          --v35;
        }

        while (v35);
        v47 = v42 - CFDataGetBytePtr(Mutable);
        if (v47 < v40)
        {
          CFDataSetLength(Mutable, v47);
        }
      }

      goto LABEL_136;
    }

    if ((v29 & 0x70) != 0x10)
    {
      if (v8)
      {
        Mutable = CFDataCreateMutable(alloc, 139280);
        CFDataSetLength(Mutable, 139280);
        v36 = CFDataGetMutableBytePtr(Mutable);
        __CFCSetGetBitmap(theSet, v36);
        v37 = CFDataGetMutableBytePtr(Mutable) + 0x2000;
        v38 = -16;
        do
        {
          *v37 = v38 + 17;
          memset(v37 + 1, 255, 0x2000uLL);
          v37 += 8193;
        }

        while (!__CFADD__(v38++, 1));
      }

      else
      {
        Mutable = CFDataCreateMutable(alloc, 0x2000);
        CFDataSetLength(Mutable, 0x2000);
        v74 = CFDataGetMutableBytePtr(Mutable);
        __CFCSetGetBitmap(theSet, v74);
      }

LABEL_136:
      v93 = *MEMORY[0x1E69E9840];
      return Mutable;
    }

    v30 = *(theSet + 6);
    v31 = v30 + *(theSet + 8) - 1;
    v32 = atomic_load(theSet + 1);
    v33 = v32 & 8;
    if (v31 >= 0x10000)
    {
      v48 = HIWORD(v31);
      v49 = HIWORD(v30);
      if (v30 < 0x10000)
      {
        v49 = 1;
      }

      v50 = v48 - v49;
      if (v30 <= 0x10000)
      {
        LOWORD(v30) = 0;
      }

      if (v30)
      {
        v51 = 16 - v50;
      }

      else
      {
        v51 = 15 - v50;
      }

      if (v31 != 0xFFFF)
      {
        ++v51;
      }

      if (v30 | ~v31)
      {
        v52 = 16 - v50;
      }

      else
      {
        v52 = 15 - v50;
      }

      if (v48 != v49)
      {
        v52 = v51;
      }

      if (v33)
      {
        v34 = v52;
      }

      else
      {
        v34 = v50 + 1;
      }
    }

    else
    {
      v34 = 2 * v33;
    }

    v53 = 8193 * v34 + 0x2000;
    Mutable = CFDataCreateMutable(alloc, v53);
    CFDataSetLength(Mutable, v53);
    v54 = CFDataGetMutableBytePtr(Mutable);
    __CFCSetGetBitmap(theSet, v54);
    if (v34 < 1)
    {
      goto LABEL_136;
    }

    v55 = CFDataGetMutableBytePtr(Mutable);
    v56 = *(theSet + 6);
    v57 = v56 + *(theSet + 8) - 1;
    v58 = HIWORD(v57);
    if (v56 <= 0x10000)
    {
      v59 = 0;
    }

    else
    {
      v59 = *(theSet + 6);
    }

    if (v56 < 0x10000)
    {
      v60 = 1;
    }

    else
    {
      v60 = HIWORD(v56);
    }

    v61 = atomic_load(theSet + 1);
    if ((v61 & 8) == 0)
    {
      v62 = v60 - v58;
      if (v60 <= v58)
      {
        v63 = 0;
        v64 = v58 - v60 + 1;
        v65 = v55 + 8194;
        v66 = -v64;
        do
        {
          *(v65 - 2) = v60;
          if (v63)
          {
            v67 = 0;
          }

          else
          {
            v67 = v59;
          }

          if (v62 == v63)
          {
            v68 = v57;
          }

          else
          {
            v68 = -1;
          }

          v69 = v67;
          v70 = v67 >> 3;
          if (v69 == v68)
          {
            v65[v70 - 1] |= 1 << (v69 & 7);
          }

          else
          {
            v71 = v68 >> 3;
            v72 = 255 << (v69 & 7);
            v73 = &v65[v70];
            if (v70 == v71)
            {
              *(v73 - 1) |= (0xFFu >> (~v68 & 7)) & v72;
            }

            else
            {
              *(v73 - 1) |= v72;
              v65[(v68 >> 3) - 1] |= 0xFFu >> (~v68 & 7);
              if (v70 + 1 < v71)
              {
                memset(&v65[v70], 255, v71 - v70 - 2 + 1);
              }
            }
          }

          LOBYTE(v60) = v60 + 1;
          v65 += 8193;
          --v63;
        }

        while (v66 != v63);
      }

      goto LABEL_136;
    }

    v75 = (v55 + 0x2000);
    if (v60 < 2)
    {
      v78 = 1;
    }

    else
    {
      v76 = v60 - 1;
      v77 = 1;
      do
      {
        *v75 = v77;
        memset(v75 + 1, 255, 0x2000uLL);
        v75 += 8193;
        ++v77;
        --v76;
      }

      while (v76);
      v78 = v60;
    }

    if (v60 == v58)
    {
      if (v59 || v57 != 0xFFFF)
      {
        *v75 = v78;
        v79 = v75 + 1;
        memset(v75 + 1, 255, 0x2000uLL);
        v80 = v59 >> 3;
        v81 = v57 >> 3;
        v82 = 255 << (v59 & 7);
        if (v81 == v80)
        {
          v79[v80] &= ~((0xFFu >> (~v57 & 7)) & v82);
        }

        else
        {
          v79[v80] &= ~v82;
          v79[v57 >> 3] &= -256 >> (~v57 & 7);
          if ((v59 >> 3) + 1 < v81)
          {
            bzero(&v75[(v59 >> 3) + 2], v81 - (v59 >> 3) - 2 + 1);
          }
        }

        v75 += 8193;
      }

      goto LABEL_133;
    }

    if (v60 >= v58)
    {
LABEL_133:
      if (!(v57 >> 20))
      {
        v91 = 16 - v58;
        v92 = v58 + 1;
        do
        {
          *v75 = v92;
          memset(v75 + 1, 255, 0x2000uLL);
          v75 += 8193;
          ++v92;
          --v91;
        }

        while (v91);
      }

      goto LABEL_136;
    }

    if (!v59)
    {
LABEL_122:
      if (v57 != 0xFFFF)
      {
        v86 = v75 + 0x2000;
        *v75 = v78;
        bzero(v75 + 1, 0x2000uLL);
        v87 = v57 >> 3;
        v88 = 255 << (v57 & 7);
        if (v87 == 0x1FFF)
        {
          *v86 = v88;
        }

        else
        {
          v75[v87 + 1] |= v88;
          *v86 = -1;
          if (v87 >> 1 <= 0xFFE)
          {
            memset(&v75[(v87 + 2)], 255, (8190 - v87));
          }
        }

        v75 += 8193;
      }

      goto LABEL_133;
    }

    *v75 = v78;
    v83 = v75 + 1;
    bzero(v75 + 1, 0x2000uLL);
    v84 = v59 - 1;
    if (v59 == 1)
    {
      LOBYTE(v85) = 1;
    }

    else
    {
      if ((v59 - 1) > 7u)
      {
        v89 = v84 >> 3;
        *v83 = -1;
        v83[v89] |= 0xFFu >> (~v84 & 7);
        if ((v59 - 1) >= 0x10u)
        {
          if (v89 <= 2)
          {
            v90 = 2;
          }

          else
          {
            v90 = v84 >> 3;
          }

          memset(v75 + 2, 255, (v90 - 1));
        }

        goto LABEL_121;
      }

      v85 = 0xFFu >> (v84 ^ 7);
    }

    *v83 = v85;
LABEL_121:
    v75 += 8193;
    goto LABEL_122;
  }

  v4 = *MEMORY[0x1E69E9840];

  return [(__CFCharacterSet *)theSet _retainedBitmapRepresentation];
}

const char *__CFCheckForExpandedSet(const char *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = result;
  v9 = __CFCheckForExpandedSet___CFNumberOfPlanesForLogging;
  if (__CFCheckForExpandedSet___CFNumberOfPlanesForLogging < 0)
  {
    result = getenv("CFCharacterSetCheckForExpandedSet");
    if (result)
    {
      result = strtol_l(result, 0, 0, 0);
    }

    if ((result - 1) >= 0x10)
    {
      v9 = 0;
    }

    else
    {
      v9 = result;
    }

    __CFCheckForExpandedSet___CFNumberOfPlanesForLogging = v9;
  }

  if (v9)
  {
    v10 = *(v8 + 5);
    if (v10)
    {
      v11 = *(v10 + 8);
      if (v11)
      {
        v12 = 0;
        while ((v11 & 1) == 0 || ++v12 < v9)
        {
          v13 = v11 > 1;
          v11 >>= 1;
          if (!v13)
          {
            return result;
          }
        }

        if ((__CFCheckForExpandedSet_warnedOnce & 1) == 0)
        {
          result = CFLog(4, @"An expanded CFMutableCharacter has been detected.  Recommend to compact with CFCharacterSetCreateCopy", a3, a4, a5, a6, a7, a8, v14);
          __CFCheckForExpandedSet_warnedOnce = 1;
        }
      }
    }
  }

  return result;
}

void _CFCharacterSetFast(unint64_t *cf)
{
  v2 = atomic_load(cf + 1);
  if ((v2 & 0x70) == 0x40 && cf[3])
  {
    __CFCSetMakeBitmap(cf);
  }

  v3 = cf[5];
  if (v3 && *(v3 + 8))
  {
    for (i = 0; i != 16; ++i)
    {
      v5 = cf[5];
      if (v5)
      {
        if (((*(v5 + 8) >> (i + 1)) & 1) != 0 && *(v5 + 12) >= (i + 1))
        {
          v6 = *(*v5 + 8 * i);
          if (v6)
          {
            v7 = atomic_load((v6 + 8));
            if ((v7 & 0x70) == 0x40)
            {
              if (*(v6 + 24))
              {
                __CFCSetMakeBitmap(v6);
              }
            }
          }
        }
      }
    }
  }
}

uint64_t _CFCharacterSetGetKeyedCodingType(void *a1)
{
  if (CF_IS_OBJC(0x19uLL, a1))
  {
    return 1;
  }

  v3 = atomic_load(a1 + 1);
  v4 = (v3 >> 4) & 7;
  if (v4 == 2)
  {
    v5 = a1[5];
    if (!v5 || !*(v5 + 8) && !*(v5 + 13))
    {
      return 4;
    }

    return 1;
  }

  if (v4 == 1)
  {
    return 3;
  }

  if (v4)
  {
    return 1;
  }

  if (a1[3] >= 14)
  {
    return 5;
  }

  else
  {
    return 2;
  }
}

uint64_t _CFCharacterSetSetIsInverted(uint64_t result, int a2)
{
  v2 = atomic_load((result + 8));
  v3 = 8;
  if (!a2)
  {
    v3 = 0;
  }

  v4 = v2;
  do
  {
    atomic_compare_exchange_strong((result + 8), &v4, v2 & 0xFFFFFFFFFFFFFFF7 | v3);
    v5 = v4 == v2;
    v2 = v4;
  }

  while (!v5);
  return result;
}

unint64_t *_CFCreateCharacterSetFromUSet(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1, a2);
  v13 = *MEMORY[0x1E69E9840];
  Mutable = CFCharacterSetCreateMutable(0);
  if (Mutable)
  {
    v3 = Mutable;
    ItemCount = uset_getItemCount();
    if (ItemCount >= 1)
    {
      v5 = ItemCount;
      for (i = 0; i != v5; ++i)
      {
        Item = uset_getItem();
        if (Item <= 0)
        {
          v14.location = 0;
          v14.length = 1;
          CFCharacterSetAddCharactersInRange(v3, v14);
        }

        else
        {
          v8 = CFStringCreateWithCharactersNoCopy(&__kCFAllocatorSystemDefault, v12, Item, &__kCFAllocatorNull);
          CFCharacterSetAddCharactersInString(v3, v8);
          CFRelease(v8);
        }
      }
    }

    Copy = __CFCharacterSetCreateCopy(&__kCFAllocatorSystemDefault, v3, 0);
    CFRelease(v3);
  }

  else
  {
    Copy = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return Copy;
}

uint64_t __CFCSetIsEqualAnnex(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x1EEE9AC00](a1, a2);
  v44 = *MEMORY[0x1E69E9840];
  v4 = *(v3 + 40);
  if (!v4)
  {
    v6 = (v2 + 40);
    v7 = *(v2 + 40);
    if (!v7)
    {
LABEL_66:
      v33 = 0;
      while (1)
      {
        v34 = v33 + 1;
        v35 = (v33 + 1);
        v36 = *(v3 + 40);
        if (v36 && ((*(v36 + 8) >> v34) & 1) != 0 && *(v36 + 12) >= v35)
        {
          v37 = *(*v36 + 8 * v33);
        }

        else
        {
          v37 = 0;
        }

        v38 = *v6;
        if (*v6 && ((*(v38 + 8) >> v34) & 1) != 0 && *(v38 + 12) >= v35)
        {
          v39 = *(*v38 + 8 * v33);
          if (v37)
          {
LABEL_75:
            result = __CFCharacterSetEqual(v37, v39);
            if (!result)
            {
              goto LABEL_83;
            }
          }
        }

        else
        {
          v39 = 0;
          if (v37)
          {
            goto LABEL_75;
          }
        }

        if (++v33 == 16)
        {
          goto LABEL_82;
        }
      }
    }

    v8 = *(v7 + 13);
    if (!*(v7 + 13))
    {
      goto LABEL_63;
    }

    goto LABEL_9;
  }

  v6 = (v2 + 40);
  v5 = *(v2 + 40);
  if (!v5)
  {
    if (!*(v4 + 13))
    {
      v7 = 0;
      goto LABEL_62;
    }

    goto LABEL_9;
  }

  v7 = *(v2 + 40);
  if ((*(v4 + 13) != 0) != (*(v5 + 13) != 0))
  {
LABEL_9:
    v9 = 1;
    while (1)
    {
      v10 = *(v3 + 40);
      if (v10 && ((*(v10 + 8) >> v9) & 1) != 0 && *(v10 + 12) >= v9)
      {
        v11 = *(*v10 + 8 * v9 - 8);
      }

      else
      {
        v11 = 0;
      }

      v12 = *v6;
      if (*v6 && ((*(v12 + 8) >> v9) & 1) != 0 && *(v12 + 12) >= v9)
      {
        v13 = *(*v12 + 8 * v9 - 8);
      }

      else
      {
        v13 = 0;
      }

      if (!(v11 | v13))
      {
        goto LABEL_81;
      }

      if (v11)
      {
        v14 = atomic_load((v11 + 8));
        v15 = v14 & 0x70;
        if (v13)
        {
          v16 = atomic_load((v13 + 8));
          v17 = v16 & 0x70;
          if (v15 == 48 && v17 == 48)
          {
            v18 = 0;
            while (v18 != 0x2000)
            {
              v19 = *(*(v13 + 24) + v18) ^ *(*(v11 + 24) + v18);
              v18 += 4;
              if (v19 != -1)
              {
                goto LABEL_81;
              }
            }
          }

          else if (v15 == 48 || v17 == 48)
          {
            v28 = v17 == 48;
            if (v17 == 48)
            {
              v29 = v11;
            }

            else
            {
              v29 = v13;
            }

            if (!v28)
            {
              v13 = v11;
            }

            __CFCSetGetBitmap(v29, v43);
            v30 = 0;
            while (v30 != 2048)
            {
              v31 = v43[0].i32[v30] ^ *(*(v13 + 24) + v30 * 4);
              ++v30;
              if (v31 != -1)
              {
                goto LABEL_81;
              }
            }
          }

          else
          {
            __CFCSetGetBitmap(v11, v43);
            __CFCSetGetBitmap(v13, __b);
            v22 = 0;
            while (v22 != 2048)
            {
              v23 = __b[0].i32[v22] ^ v43[0].i32[v22];
              ++v22;
              if (v23 != -1)
              {
                goto LABEL_81;
              }
            }
          }
        }

        else
        {
          if (v15 == 48)
          {
            v21 = *(v11 + 24);
LABEL_31:
            if (!__CFCSetIsEqualBitmap(v21, -1))
            {
              goto LABEL_81;
            }

            goto LABEL_32;
          }

          __CFCSetGetBitmap(v11, v43);
          if (v43 != -1)
          {
            v26 = 0;
            while (v26 != 2048)
            {
              v27 = v43[0].i32[v26++];
              if (v27 != -1)
              {
                goto LABEL_81;
              }
            }
          }
        }
      }

      else
      {
        v20 = atomic_load((v13 + 8));
        if ((v20 & 0x70) == 0x30)
        {
          v21 = *(v13 + 24);
          goto LABEL_31;
        }

        __CFCSetGetBitmap(v13, v43);
        if (v43 != -1)
        {
          v24 = 0;
          while (v24 != 2048)
          {
            v25 = v43[0].i32[v24++];
            if (v25 != -1)
            {
              goto LABEL_81;
            }
          }
        }
      }

LABEL_32:
      if (++v9 == 17)
      {
LABEL_82:
        result = 1;
        goto LABEL_83;
      }
    }
  }

LABEL_62:
  v8 = *(v4 + 8);
  if (v5)
  {
LABEL_63:
    v32 = *(v7 + 8);
    goto LABEL_65;
  }

  v32 = 0;
LABEL_65:
  if (v8 == v32)
  {
    goto LABEL_66;
  }

LABEL_81:
  result = 0;
LABEL_83:
  v41 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFCSetIsBitmapEqualToRange(uint64_t a1, unsigned int a2, unsigned int a3, int a4)
{
  if ((a3 ^ a2) <= 7)
  {
    if (a4)
    {
      v4 = ~(((0xFFu >> (~a3 & 7)) & (255 << (a2 & 7))) << 24 >> (~a2 & 0x18));
    }

    else
    {
      v4 = ((0xFFu >> (~a3 & 7)) & (255 << (a2 & 7))) << 24 >> (~a2 & 0x18);
    }

    v5 = a2 >> 5;
    if (a4)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    if (*(a1 + 4 * v5) == v4)
    {
      v7 = a2 >> 5;
      goto LABEL_26;
    }

    return 0;
  }

  v8 = ((255 << (a2 & 7)) << (a2 & 0x18 ^ 0x18)) | (0xFFFFFFu >> (a2 & 0x18));
  v9 = (0xFFu >> (~a3 & 7) << (a3 & 0x18 ^ 0x18)) | (0xFFFFFFFFLL << (32 - (a3 & 0x18)));
  v5 = a2 >> 5;
  v7 = a3 >> 5;
  if (v5 == a3 >> 5)
  {
    v10 = bswap32(v9 & v8);
    if (a4)
    {
      v11 = ~v10;
    }

    else
    {
      v11 = v10;
    }

    v12 = *(a1 + 4 * v5);
    if (a4)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v13 = bswap32(v8);
    if (a4)
    {
      v14 = ~v13;
    }

    else
    {
      v14 = v13;
    }

    if (a4)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    if (*(a1 + 4 * v5) != v14)
    {
      return 0;
    }

    v12 = *(a1 + 4 * v7);
    v11 = bswap32(v9) ^ v6;
  }

  if (v12 != v11)
  {
    return 0;
  }

LABEL_26:
  v15 = 0;
  while (v5 != v15)
  {
    v16 = *(a1 + 4 * v15++);
    if (v16 != v6)
    {
      return 0;
    }
  }

  v17 = v7 + ~v5;
  if (a4)
  {
    v18 = 0;
  }

  else
  {
    v18 = -1;
  }

  v19 = (4 * v5 + a1 + 4);
  while (v17-- >= 1)
  {
    v21 = *v19++;
    if (v21 != v18)
    {
      return 0;
    }
  }

  if (v5 == v7)
  {
    v22 = v19;
  }

  else
  {
    v22 = v19 + 1;
  }

  for (i = v7 - 2047; i; ++i)
  {
    v24 = *v22++;
    if (v24 != v6)
    {
      return 0;
    }
  }

  return 1;
}

BOOL fdCanRead(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 >= 1024)
  {
    v3 = (a1 + 1) >> 5;
    if (((a1 + 1) & 0x1F) != 0)
    {
      ++v3;
    }

    v4 = 4 * v3;
    v2 = malloc_type_malloc(v4, 0x100004052888210uLL);
    bzero(v2, v4);
  }

  else
  {
    v2 = v8;
  }

  memset(v8, 0, sizeof(v8));
  if (__darwin_check_fd_set_overflow(a1, v2, 1))
  {
    *(v2 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
  }

  v5 = select_DARWIN_EXTSN();
  if (v2 != v8)
  {
    free(v2);
  }

  result = v5 == 1;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL fdCanWrite(int a1)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a1 >= 1024)
  {
    v3 = (a1 + 1) >> 5;
    if (((a1 + 1) & 0x1F) != 0)
    {
      ++v3;
    }

    v4 = 4 * v3;
    v2 = malloc_type_malloc(v4, 0x100004052888210uLL);
    bzero(v2, v4);
  }

  else
  {
    v2 = v8;
  }

  memset(v8, 0, sizeof(v8));
  if (__darwin_check_fd_set_overflow(a1, v2, 1))
  {
    *(v2 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFFCLL)) |= 1 << a1;
  }

  v5 = select_DARWIN_EXTSN();
  if (v2 != v8)
  {
    free(v2);
  }

  result = v5 == 1;
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFReadStreamCreateFromFileDescriptor(__objc2_class **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  DWORD2(v10[0]) = a2;
  result = _CFStreamCreateWithConstantCallbacks(a1, v10, fileCallBacks, 1, a5, a6, a7, a8);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFWriteStreamCreateFromFileDescriptor(__objc2_class **a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  memset(v10, 0, sizeof(v10));
  DWORD2(v10[0]) = a2;
  result = _CFStreamCreateWithConstantCallbacks(a1, v10, fileCallBacks, 0, a5, a6, a7, a8);
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

CFWriteStreamRef CFWriteStreamCreateWithBuffer(CFAllocatorRef alloc, UInt8 *buffer, CFIndex bufferCapacity)
{
  v10[4] = *MEMORY[0x1E69E9840];
  v9[0] = buffer;
  v9[1] = bufferCapacity;
  v9[2] = 0;
  v9[3] = 0;
  v10[0] = v9;
  v10[1] = v9;
  v10[2] = &__kCFAllocatorNull;
  v10[3] = 0;
  result = _CFStreamCreateWithConstantCallbacks(alloc, v10, writeDataCallBacks, 0, v3, v4, v5, v6);
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef fileCopyDescription(const void *a1, uint64_t a2)
{
  if (*a2)
  {
    v3 = *a2;

    return CFCopyDescription(v3);
  }

  else
  {
    v6 = CFGetAllocator(a1);
    return CFStringCreateWithFormat(v6, 0, @"fd = %d", *(a2 + 8));
  }
}

CFDataRef fileCopyProperty(const void *a1, CFTypeRef cf1, uint64_t a3)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!CFEqual(cf1, @"kCFStreamPropertyFileCurrentOffset"))
  {
    if (CFEqual(cf1, @"_kCFStreamPropertyFileNativeHandle"))
    {
      *bytes = *(a3 + 8);
      if (*bytes != -1)
      {
        v12 = CFGetAllocator(a1);
        result = CFDataCreate(v12, bytes, 4);
LABEL_13:
        v13 = *MEMORY[0x1E69E9840];
        return result;
      }
    }

LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  if ((*(a3 + 24) & 8) == 0)
  {
    v6 = *(a3 + 8);
    if (v6 != -1)
    {
      *(a3 + 32) = lseek(v6, 0, 1);
    }
  }

  v8 = *(a3 + 32);
  v7 = (a3 + 32);
  if (v8 == -1)
  {
    goto LABEL_12;
  }

  v9 = CFGetAllocator(a1);
  v10 = *MEMORY[0x1E69E9840];

  return CFNumberCreate(v9, kCFNumberSInt64Type, v7);
}

uint64_t fileSetProperty(void *a1, CFTypeRef cf1, __objc2_class **a3, uint64_t a4)
{
  if (CFEqual(cf1, @"kCFStreamPropertyAppendToFile") && (v8 = CFGetTypeID(a1), v8 == CFWriteStreamGetTypeID()) && CFWriteStreamGetStatus(a1) == kCFStreamStatusNotOpen)
  {
    v11 = *(a4 + 24);
    if (&__kCFBooleanTrue == a3)
    {
      *(a4 + 24) = v11 | 8;
      *(a4 + 32) = -1;
    }

    else
    {
      *(a4 + 24) = v11 & 0xFFFFFFFFFFFFFFF7;
    }

    return 1;
  }

  else if (CFEqual(cf1, @"kCFStreamPropertyFileCurrentOffset"))
  {
    if ((*(a4 + 24) & 8) != 0)
    {
      Value = 0;
    }

    else
    {
      Value = CFNumberGetValue(a3, kCFNumberSInt64Type, (a4 + 32));
    }

    v10 = *(a4 + 8);
    if (v10 != -1)
    {
      if (lseek(v10, *(a4 + 32), 0) == -1)
      {
        return 0;
      }

      else
      {
        return Value;
      }
    }
  }

  else
  {
    return 0;
  }

  return Value;
}

void fileUnschedule(void *a1, __CFRunLoop *a2, const __CFString *a3, uint64_t a4)
{
  v8 = CFGetTypeID(a1);
  if (v8 == CFReadStreamGetTypeID())
  {
    Status = CFReadStreamGetStatus(a1);
  }

  else
  {
    Status = CFWriteStreamGetStatus(a1);
  }

  v10 = *(a4 + 16);
  if (Status)
  {
    if (!v10)
    {
      return;
    }

    if ((*(a4 + 24) & 0x20) == 0)
    {
      v11 = CFGetAllocator(a1);
      RunLoopSource = CFFileDescriptorCreateRunLoopSource(v11, *(a4 + 16), 0);
      CFRunLoopRemoveSource(a2, RunLoopSource, a3);

      CFRelease(RunLoopSource);
      return;
    }

    Count = CFArrayGetCount(*(a4 + 16));
    if (Count < 2)
    {
      return;
    }

    v20 = Count;
    for (i = 0; ; i += 2)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v10, i);
      if (CFEqual(ValueAtIndex, a2))
      {
        v22 = CFArrayGetValueAtIndex(v10, i + 1);
        if (CFEqual(v22, a3))
        {
          break;
        }
      }

      v23 = i + 3;
      if (v23 >= v20)
      {
        return;
      }
    }
  }

  else
  {
    if (!v10)
    {
      return;
    }

    v13 = CFArrayGetCount(*(a4 + 16));
    if (v13 < 2)
    {
      return;
    }

    v14 = v13;
    for (i = 0; ; i += 2)
    {
      v16 = CFArrayGetValueAtIndex(v10, i);
      if (CFEqual(v16, a2))
      {
        v17 = CFArrayGetValueAtIndex(v10, i + 1);
        if (CFEqual(v17, a3))
        {
          break;
        }
      }

      v18 = i + 3;
      if (v18 >= v14)
      {
        return;
      }
    }
  }

  CFArrayRemoveValueAtIndex(v10, i);

  CFArrayRemoveValueAtIndex(v10, i);
}

uint64_t dataGetBuffer(char *a1, CFIndex a2, CFIndex *a3, uint64_t a4, BOOL *a5, uint64_t a6)
{
  BytePtr = CFDataGetBytePtr(*a6);
  v18 = &BytePtr[CFDataGetLength(*a6) - *(a6 + 8)];
  v19 = v18 <= a2;
  if (v18 >= a2)
  {
    v18 = a2;
  }

  *a3 = v18;
  *a5 = v19;
  *(a4 + 8) = 0;
  v20 = *(a6 + 8);
  *(a6 + 8) = v20 + *a3;
  if (*(a6 + 16) && !*a5)
  {
    CFReadStreamSignalEvent(a1, 2uLL, 0, v13, v14, v15, v16, v17);
  }

  return v20;
}

void writeDataSchedule(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 24))
  {
    *(a4 + 24) = 1;
    if (CFWriteStreamGetStatus(a1) == kCFStreamStatusOpen)
    {
      if (*(a4 + 16) == &__kCFAllocatorNull)
      {
        if (*(*(a4 + 8) + 8) <= *(*(a4 + 8) + 16))
        {
          v11 = 16;
        }

        else
        {
          v11 = 4;
        }
      }

      else
      {
        v11 = 4;
      }

      CFWriteStreamSignalEvent(a1, v11, 0, v6, v7, v8, v9, v10);
    }
  }
}

uint64_t __CFDataSetDontDeallocate(uint64_t result, int a2)
{
  v2 = atomic_load((result + 8));
  v3 = v2;
  do
  {
    atomic_compare_exchange_strong((result + 8), &v3, v2 & 0xFFFFFFFFFFFFFFEFLL | (16 * (a2 != 0)));
    v4 = v3 == v2;
    v2 = v3;
  }

  while (!v4);
  return result;
}

CFRange CFDataFind(CFDataRef theData, CFDataRef dataToFind, CFRange searchRange, CFDataSearchFlags compareOptions)
{
  length = searchRange.length;
  location = searchRange.location;
  if (CF_IS_OBJC(0x14uLL, theData))
  {
    v9 = [(__CFData *)theData length];
    if ((location & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *(theData + 2);
    if ((location & 0x8000000000000000) == 0)
    {
LABEL_3:
      if (location > v9)
      {
        if (dyld_program_sdk_at_least())
        {
          CFDataFind_cold_8();
        }

        CFDataFind_cold_7();
      }

      else if (length < 0)
      {
        if (dyld_program_sdk_at_least())
        {
          CFDataFind_cold_4();
        }

        CFDataFind_cold_3();
      }

      else if (location + length > v9)
      {
        if (dyld_program_sdk_at_least())
        {
          CFDataFind_cold_6();
        }

        CFDataFind_cold_5();
      }

      goto LABEL_6;
    }
  }

  if (dyld_program_sdk_at_least())
  {
    CFDataFind_cold_2();
  }

  CFDataFind_cold_1();
LABEL_6:
  Bytes = _CFDataFindBytes(theData, dataToFind, location, length, compareOptions);
  result.length = v11;
  result.location = Bytes;
  return result;
}

void sub_1831D5E30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _compare_clumpiness(void *a1, void *a2)
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

Boolean CFGregorianDateIsValid(CFGregorianDate gdate, CFOptionFlags unitFlags)
{
  v2 = *&gdate.year;
  if ((unitFlags & 1) != 0 && gdate.year < 1)
  {
    return 0;
  }

  month = gdate.month;
  if ((unitFlags & 2) != 0 && (gdate.month - 1) > 0xBu)
  {
    return 0;
  }

  v4 = *&gdate.year >> 40;
  if ((unitFlags & 4) != 0 && (gdate.day - 1) > 0x1Eu)
  {
    return 0;
  }

  if ((unitFlags & 8) != 0 && (*&gdate.year >> 24) >> 27 > 2 || (unitFlags & 0x10) != 0 && *&gdate.year >> 58 > 0xEuLL)
  {
    return 0;
  }

  if ((unitFlags & 0x20) == 0 || (LOBYTE(gdate.year) = 0, gdate.second >= 0.0) && gdate.second < 60.0)
  {
    if ((~unitFlags & 7) != 0)
    {
      LOBYTE(gdate.year) = 1;
    }

    else
    {
      if ((gdate.month - 1) >= 0xCu)
      {
        gdate.year = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
        if (gdate.year)
        {
          CFGregorianDateIsValid_cold_1(month);
        }
      }

      v5 = (v2 - 2001 + 1) % 400;
      if (v5 >= 0)
      {
        v6 = (v2 - 2001 + 1) % 400;
      }

      else
      {
        v6 = -v5;
      }

      if ((v6 & 3) != 0)
      {
        v7 = 0;
      }

      else
      {
        v7 = 0;
        if (v6 != 100 && v6 != 200)
        {
          v7 = v6 != 300;
        }
      }

      if (BYTE4(v2) >= 0x10u)
      {
        __break(1u);
      }

      else
      {
        if (BYTE4(v2) != 2)
        {
          v7 = 0;
        }

        LOBYTE(gdate.year) = (daysInMonth[HIDWORD(v2) & 0xF] + v7) >= v4;
      }
    }
  }

  return gdate.year;
}

CFGregorianUnits *__cdecl CFAbsoluteTimeGetDifferenceAsGregorianUnits(CFGregorianUnits *__return_ptr retstr, CFAbsoluteTime at1, CFAbsoluteTime at2, CFGregorianUnits *tz, CFOptionFlags unitFlags)
{
  v5 = unitFlags;
  v6 = tz;
  v10 = 0;
  v22 = *MEMORY[0x1E69E9840];
  if (at2 < at1)
  {
    v11 = 1;
  }

  else
  {
    v11 = -1;
  }

  *&retstr->years = 0uLL;
  *&retstr->minutes = 0uLL;
  v12 = at2;
  do
  {
    if (((1 << v10) & v5) != 0)
    {
      v13 = ((at1 - v12) / dword_183306F40[v10]);
      *(&retstr->years + v10) = -3 * v11 + v13;
      v14 = -4 * v11 + v13;
      v15 = -2 * v11 + v13;
      do
      {
        v16 = v12;
        *(&retstr->years + v10) = v15;
        v17 = *&retstr->minutes;
        *&v21.years = *&retstr->years;
        *&v21.minutes = v17;
        v12 = CFAbsoluteTimeAddGregorianUnits(at2, v6, &v21);
        v18 = v12 <= at1;
        if (at2 >= at1)
        {
          v18 = v12 >= at1;
        }

        v14 += v11;
        v15 += v11;
      }

      while (v18);
      *(&retstr->years + v10) = v14;
      v12 = v16;
    }

    ++v10;
  }

  while (v10 != 5);
  if ((v5 & 0x20) == 0 || (v19 = at1 - v12, retstr->seconds = v19, v19 == 0.0))
  {
    retstr->seconds = 0.0;
  }

  v20 = *MEMORY[0x1E69E9840];
  return tz;
}

SInt32 CFAbsoluteTimeGetDayOfWeek(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  if (tz)
  {
    SecondsFromGMT = CFTimeZoneGetSecondsFromGMT(tz, at);
  }

  else
  {
    SecondsFromGMT = 0.0;
  }

  v4 = vcvtmd_s64_f64((SecondsFromGMT + at) / 86400.0);
  v5 = (~v4 * 0x2492492492492493uLL) >> 64;
  v6 = (~v4 - 7 * ((v5 + ((~v4 - v5) >> 1)) >> 2)) ^ 7;
  if (v4 >= 0)
  {
    return v4 % 7uLL + 1;
  }

  else
  {
    LODWORD(v7) = v6;
  }

  return v7;
}

SInt32 CFAbsoluteTimeGetDayOfYear(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v16 = *MEMORY[0x1E69E9840];
  if (tz)
  {
    SecondsFromGMT = CFTimeZoneGetSecondsFromGMT(tz, at);
  }

  else
  {
    SecondsFromGMT = 0.0;
  }

  v13 = 0;
  v12 = 0;
  __CFYMDFromAbsolute(vcvtmd_s64_f64((SecondsFromGMT + at) / 86400.0), &v13, &v12 + 1, &v12);
  v4 = SHIBYTE(v12);
  v5 = HIBYTE(v12);
  if ((SHIBYTE(v12) - 1) >= 0xC && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    *buf = 67109120;
    v15 = v4;
    _os_log_error_impl(&dword_1830E6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Month %d is out of bounds", buf, 8u);
    v5 = HIBYTE(v12);
  }

  v6 = (v13 + 1) % 400;
  if (v6 >= 0)
  {
    v7 = (v13 + 1) % 400;
  }

  else
  {
    v7 = -v6;
  }

  if ((v7 & 3) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = 0;
    if (v7 != 100 && v7 != 200)
    {
      v8 = v7 != 300;
    }
  }

  if (v5 > 0xF)
  {
    v9 = 0xFFFF;
  }

  else
  {
    if (v5 <= 2)
    {
      v8 = 0;
    }

    v9 = (daysBeforeMonth[v5] + v8);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9 + v12;
}

SInt32 CFAbsoluteTimeGetWeekOfYear(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v25 = *MEMORY[0x1E69E9840];
  if (tz)
  {
    SecondsFromGMT = CFTimeZoneGetSecondsFromGMT(tz, at);
  }

  else
  {
    SecondsFromGMT = 0.0;
  }

  v22 = 0;
  v21 = 0;
  __CFYMDFromAbsolute(vcvtmd_s64_f64((SecondsFromGMT + at) / 86400.0), &v22, &v21 + 1, &v21);
  v4 = v22;
  v5 = __CFAbsoluteFromYMD(v22, 1u, 1);
  v6 = floor(v5 - floor(v5 / 7.0) * 7.0);
  if (v6 >= 0)
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 + 7;
  }

  v8 = SHIBYTE(v21);
  v9 = v21;
  if (SHIBYTE(v21) == 1 && v21 <= 3)
  {
    if (v7 == 4 || v21 <= 2 && v7 == 5 || (v10 = 1, v21 < 2) && v7 == 6)
    {
      v11 = 53;
      goto LABEL_37;
    }
  }

  else
  {
    v10 = HIBYTE(v21);
    if (HIBYTE(v21) == 12 && v21 >= 29)
    {
      v11 = 1;
      v12 = __CFAbsoluteFromYMD(v4 + 1, 1u, 1);
      v13 = floor(v12 - floor(v12 / 7.0) * 7.0);
      if (v13 + (v13 < 0 ? 7 : 0) == 3 || v9 >= 0x1E && v13 + (v13 < 0 ? 7 : 0) == 2)
      {
        goto LABEL_37;
      }

      v10 = 12;
      if (v9 >= 0x1F && v13 + (v13 < 0 ? 7 : 0) == 1)
      {
        v11 = 1;
        goto LABEL_37;
      }
    }

    else if (HIBYTE(v21) - 1 >= 0xC && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
    {
      *buf = 67109120;
      v24 = v8;
      _os_log_error_impl(&dword_1830E6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "Month %d is out of bounds", buf, 8u);
      v10 = HIBYTE(v21);
      v4 = v22;
    }
  }

  v14 = (v4 + 1) % 400;
  if (v14 >= 0)
  {
    v15 = (v4 + 1) % 400;
  }

  else
  {
    v15 = -v14;
  }

  if ((v15 & 3) != 0)
  {
    v16 = 0;
  }

  else
  {
    v16 = 0;
    if (v15 != 100 && v15 != 200)
    {
      v16 = v15 != 300;
    }
  }

  if (v10 > 0xF)
  {
    v17 = 0xFFFF;
  }

  else
  {
    if (v10 <= 2)
    {
      v16 = 0;
    }

    v17 = (daysBeforeMonth[v10] + v16);
  }

  v18 = (2454267027 * (v17 + v7 - 10 + v21 - 7 * ((v7 - 10) / 7) + 2)) >> 32;
  v11 = (v18 >> 2) + (v18 >> 31) + 1;
LABEL_37:
  v19 = *MEMORY[0x1E69E9840];
  return v11;
}

CFStringRef __CFDateFormatterCopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFGetAllocator(a1);
  return CFStringCreateWithFormat(v2, 0, @"<CFDateFormatter %p [%p]>", a1, v3);
}

CFDateFormatterStyle CFDateFormatterGetDateStyle(CFDateFormatterRef formatter)
{
  __CFCheckCFInfoPACSignature(formatter);
  v2 = _CFGetNonObjCTypeID(formatter);
  if (v2 != 56)
  {
    _CFAssertMismatchedTypeID(0x38uLL, v2);
  }

  return *(formatter + 5);
}

CFDateFormatterStyle CFDateFormatterGetTimeStyle(CFDateFormatterRef formatter)
{
  __CFCheckCFInfoPACSignature(formatter);
  v2 = _CFGetNonObjCTypeID(formatter);
  if (v2 != 56)
  {
    _CFAssertMismatchedTypeID(0x38uLL, v2);
  }

  return *(formatter + 4);
}

uint64_t _CFDateFormatterCreateSkeletonFromTemplate(const __CFString *a1, const __CFLocale *a2, _DWORD *a3)
{
  v16 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  if (Length)
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2020000000;
    v15 = 0;
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___CFDateFormatterCreateSkeletonFromTemplate_block_invoke;
    v11[3] = &unk_1E6D7D8B0;
    v11[4] = &v12;
    v11[5] = Length;
    v11[6] = a1;
    v11[7] = a3;
    v7 = useTemplatePatternGenerator(a2, v11);
    v8 = v13[3];
    if (!v7 && v8)
    {
      CFRelease(v13[3]);
      v8 = 0;
      v13[3] = 0;
    }

    _Block_object_dispose(&v12, 8);
  }

  else
  {
    v8 = 0;
    if (a3)
    {
      *a3 = 1;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void sub_1831D76F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __useTemplatePatternGenerator_block_invoke()
{
  __cficu_udatpg_close();
  useTemplatePatternGenerator_ptg = 0;
  free(useTemplatePatternGenerator_ptgLocaleName);
  useTemplatePatternGenerator_ptgLocaleName = 0;
}

void __useTemplatePatternGenerator_block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock(&useTemplatePatternGenerator_ptgLock);
  dispatch_source_cancel(useTemplatePatternGenerator_pressureSrc);
  dispatch_release(useTemplatePatternGenerator_pressureSrc);
  useTemplatePatternGenerator_pressureSrc = 0;
  (*(*(a1 + 32) + 16))();

  os_unfair_lock_unlock(&useTemplatePatternGenerator_ptgLock);
}

uint64_t __CFDateFormatterStoreSymbolPrefs(const __CFString *a1, const void *a2, void *a3)
{
  v6 = CFGetTypeID(a1);
  result = CFStringGetTypeID();
  if (v6 == result)
  {
    v8 = CFGetTypeID(a2);
    result = CFArrayGetTypeID();
    if (v8 == result)
    {
      IntValue = CFStringGetIntValue(a1);
      result = CFArrayGetCount(a2);
      switch(IntValue)
      {
        case 0:
          v10 = a3 + 40;
          v11 = a3[40];
          if (v11)
          {
            goto LABEL_7;
          }

          goto LABEL_8;
        case 1:
          v10 = a3 + 42;
          v11 = a3[42];
          if (!v11)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 2:
          v10 = a3 + 43;
          v11 = a3[43];
          if (!v11)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 3:
          v10 = a3 + 48;
          v11 = a3[48];
          if (!v11)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 4:
          v10 = a3 + 49;
          v11 = a3[49];
          if (!v11)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 5:
          v12 = result;
          if (result < 1)
          {
            return result;
          }

          v13 = 0;
          v14 = (a3 + 63);
          v15 = (a3 + 62);
          break;
        case 7:
          v10 = a3 + 41;
          v11 = a3[41];
          if (!v11)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 8:
          v10 = a3 + 44;
          v11 = a3[44];
          if (!v11)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 9:
          v10 = a3 + 50;
          v11 = a3[50];
          if (!v11)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 10:
          v10 = a3 + 45;
          v11 = a3[45];
          if (!v11)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 11:
          v10 = a3 + 46;
          v11 = a3[46];
          if (!v11)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 12:
          v10 = a3 + 47;
          v11 = a3[47];
          if (!v11)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 13:
          v10 = a3 + 51;
          v11 = a3[51];
          if (!v11)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 14:
          v10 = a3 + 52;
          v11 = a3[52];
          if (!v11)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 15:
          v10 = a3 + 53;
          v11 = a3[53];
          if (!v11)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 16:
          v10 = a3 + 54;
          v11 = a3[54];
          if (!v11)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 17:
          v10 = a3 + 55;
          v11 = a3[55];
          if (!v11)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 18:
          v10 = a3 + 56;
          v11 = a3[56];
          if (!v11)
          {
            goto LABEL_8;
          }

          goto LABEL_7;
        case 19:
          v10 = a3 + 57;
          v11 = a3[57];
          if (v11)
          {
LABEL_7:
            CFRelease(v11);
          }

LABEL_8:
          result = CFRetain(a2);
          *v10 = result;
          return result;
        default:
          return result;
      }

      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a2, v13);
        v17 = CFGetTypeID(ValueAtIndex);
        result = CFStringGetTypeID();
        if (v17 == result)
        {
          if (v13 == 1)
          {
            v18 = *v14;
            v19 = v14;
            if (*v14)
            {
LABEL_26:
              CFRelease(v18);
            }

LABEL_27:
            result = CFRetain(ValueAtIndex);
            *v19 = result;
            goto LABEL_28;
          }

          if (!v13)
          {
            v18 = *v15;
            v19 = v15;
            if (*v15)
            {
              goto LABEL_26;
            }

            goto LABEL_27;
          }
        }

LABEL_28:
        ++v13;
      }

      while (v12 != v13);
    }
  }

  return result;
}

CFIndex __CFDateFormatterSetSymbolsArray(int a1, int a2, int a3, CFArrayRef theArray)
{
  v15 = a2;
  v17 = *MEMORY[0x1E69E9840];
  v16 = 0;
  result = CFArrayGetCount(theArray);
  if (result >= 1)
  {
    v6 = result;
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(theArray, i);
      Length = CFStringGetLength(ValueAtIndex);
      if (Length >= 768)
      {
        v11 = 768;
      }

      else
      {
        v11 = Length;
      }

      MEMORY[0x1EEE9AC00](Length, v10);
      v13 = (&v15 - v12);
      if (!CFStringGetCharactersPtr(ValueAtIndex))
      {
        v18.location = 0;
        v18.length = v11;
        CFStringGetCharacters(ValueAtIndex, v18, v13);
      }

      v16 = 0;
      result = __cficu_udat_setSymbols();
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return result;
}

double __CFDateFormatterCorrectTimeWithTarget()
{
  __cficu_ucal_setMillis();
  __cficu_ucal_set();

  return __cficu_ucal_getMillis();
}

double __CFDateFormatterCorrectTimeToARangeAroundCurrentDate()
{
  __cficu_ucal_getNow();
  __cficu_ucal_setMillis();
  __cficu_ucal_get();
  __cficu_ucal_get();
  __cficu_ucal_setMillis();
  __cficu_ucal_get();

  return __CFDateFormatterCorrectTimeWithTarget();
}

uint64_t __CFDateFormatterGetMaxYearGivenJapaneseEra()
{
  __cficu_ucal_clear();
  __cficu_ucal_set();
  __cficu_ucal_getMillis();
  __cficu_ucal_set();
  return __cficu_ucal_getFieldDifference() + 1;
}

BOOL __CFDictionaryApply_block_invoke(uint64_t a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v3 = *(a2 + 8);
  v2 = *(a2 + 16);
  (*(*(a1 + 32) + 16))();
  result = v6 == 0;
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFDictionarySetKVOBit(uint64_t result, char a2)
{
  v2 = atomic_load((result + 8));
  v3 = v2;
  do
  {
    atomic_compare_exchange_strong((result + 8), &v3, v2 & 0xFFFFFFFFFFFFFFFELL | a2 & 1);
    v4 = v3 == v2;
    v2 = v3;
  }

  while (!v4);
  return result;
}

CFMutableStringRef _CFDoubledStringCreate(const __CFString *a1)
{
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  CFStringAppend(Mutable, a1);
  v4.length = CFStringGetLength(Mutable);
  v4.location = 0;
  CFStringFindAndReplace(Mutable, @"%", &stru_1EF068AA8, v4, 0);
  CFStringAppendFormat(Mutable, 0, @" %@", a1);
  return Mutable;
}

CFStringRef _CFAccentuatedStringCreate(const __CFString *a1)
{
  if (_CFAccentuatedStringCreate_onceToken != -1)
  {
    _CFAccentuatedStringCreate_cold_1();
  }

  v2 = _CFAccentuatedStringCreate_charsToSkip;

  return __CFPseudoLanguageStringCreateWithTransform(a1, 2, v2, &__block_literal_global_17);
}

CFStringRef __CFPseudoLanguageStringCreateWithTransform(const __CFString *a1, uint64_t a2, const __CFCharacterSet *a3, uint64_t a4)
{
  v43 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  MutableCopy = CFStringCreateMutableCopy(0, Length, a1);
  v10 = CFStringGetLength(MutableCopy);
  theString = MutableCopy;
  v39 = 0;
  v40 = v10;
  CharactersPtr = CFStringGetCharactersPtr(MutableCopy);
  CStringPtr = 0;
  v37 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(MutableCopy, 0x600u);
  }

  v34 = 0u;
  v35 = 0u;
  v32 = 0u;
  v33 = 0u;
  v30 = 0u;
  v31 = 0u;
  *buffer = 0u;
  v29 = 0u;
  v41 = 0;
  v42 = 0;
  v38 = CStringPtr;
  v13 = malloc_type_malloc(2 * a2 * v10 + 2, 0x1000040BDFB0063uLL);
  capacity = 0;
  if (v10 < 1)
  {
    v22 = 0;
  }

  else
  {
    v14 = 0;
    do
    {
      RangeOfComposedCharactersAtIndex = CFStringGetRangeOfComposedCharactersAtIndex(MutableCopy, v14);
      if (RangeOfComposedCharactersAtIndex.length < 1)
      {
        v16 = v14;
      }

      else
      {
        v16 = RangeOfComposedCharactersAtIndex.length + v14;
        do
        {
          if (v14 < 0 || (v17 = v40, v40 <= v14))
          {
            v18 = 0;
          }

          else if (v37)
          {
            v18 = v37[v39 + v14];
          }

          else if (v38)
          {
            v18 = v38[v39 + v14];
          }

          else
          {
            if (v42 <= v14 || (v20 = v41, v41 > v14))
            {
              v21 = v14 - 4;
              if (v14 < 4)
              {
                v21 = 0;
              }

              if (v21 + 64 < v40)
              {
                v17 = v21 + 64;
              }

              v41 = v21;
              v42 = v17;
              v44.length = v17 - v21;
              v44.location = v39 + v21;
              CFStringGetCharacters(theString, v44, buffer);
              v20 = v41;
            }

            v18 = buffer[v14 - v20];
          }

          ++v14;
          v19 = capacity++;
          v13[v19] = v18;
        }

        while (v14 != v16);
        if (RangeOfComposedCharactersAtIndex.length == 1 && !CFCharacterSetIsCharacterMember(a3, v18))
        {
          (*(a4 + 16))(a4, v13, &capacity, v18);
        }
      }

      v14 = v16;
    }

    while (v16 < v10);
    v22 = capacity;
  }

  v13[v22] = 0;
  MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(0, v13, v22, v22, &__kCFAllocatorNull);
  Copy = CFStringCreateCopy(0, MutableWithExternalCharactersNoCopy);
  CFRelease(MutableCopy);
  CFRelease(MutableWithExternalCharactersNoCopy);
  free(v13);
  v25 = *MEMORY[0x1E69E9840];
  return Copy;
}

CFStringRef _CFTallStringCreate(uint64_t a1)
{
  v2 = CFStringCreateWithCharacters(0, _CFTallStringCreate_tallCharacters, 7);
  v3 = CFStringCreateWithFormat(0, 0, @"%@%@%@", v2, a1, v2);
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetNonBase);
  v5 = __CFPseudoLanguageStringCreateWithTransform(v3, 7, Predefined, &__block_literal_global_20);
  CFRelease(v2);
  CFRelease(v3);
  return v5;
}

BOOL __CFErrorEqual(void *a1, void *a2)
{
  if (CF_IS_OBJC(0x1BuLL, a1))
  {
    v4 = [a1 code];
  }

  else
  {
    v4 = a1[2];
  }

  if (CF_IS_OBJC(0x1BuLL, a2))
  {
    v5 = [a2 code];
  }

  else
  {
    v5 = a2[2];
  }

  if (v4 != v5)
  {
    return 0;
  }

  v6 = (CF_IS_OBJC(0x1BuLL, a1) ? [a1 domain] : a1[3]);
  v7 = (CF_IS_OBJC(0x1BuLL, a2) ? [a2 domain] : a2[3]);
  if (!CFEqual(v6, v7))
  {
    return 0;
  }

  v8 = CFErrorCopyUserInfo(a1);
  v9 = CFErrorCopyUserInfo(a2);
  v10 = v9;
  if (v8 == v9)
  {
    v11 = 1;
    goto LABEL_21;
  }

  v11 = 0;
  if (!v8 || !v9)
  {
LABEL_21:
    if (!v8)
    {
      goto LABEL_23;
    }

    goto LABEL_22;
  }

  v11 = CFEqual(v8, v9) != 0;
LABEL_22:
  CFRelease(v8);
LABEL_23:
  if (v10)
  {
    CFRelease(v10);
  }

  return v11;
}

CFStringRef __CFErrorCopyFormattingDescription(__CFError *a1)
{
  if (dyld_program_sdk_at_least())
  {

    return _CFErrorCreateDebugDescription(a1);
  }

  else
  {

    return CFErrorCopyDescription(a1);
  }
}

uint64_t _CFErrorCreateUnlocalizedDebugDescription(void *a1)
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[1] = 0;
  v4[0] = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v4[2] = 0;
  _CFErrorFormatDebugDescriptionAux(a1, v4);
  result = v4[0];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef CFErrorCopyDescription(CFErrorRef err)
{
  if (CF_IS_OBJC(0x1BuLL, err))
  {
    result = [(__CFError *)err localizedDescription];
    if (result)
    {

      return CFRetain(result);
    }
  }

  else
  {

    return _CFErrorCreateLocalizedDescription(err);
  }

  return result;
}

CFStringRef CFErrorCopyFailureReason(CFErrorRef err)
{
  if (CF_IS_OBJC(0x1BuLL, err))
  {
    result = [(__CFError *)err localizedFailureReason];
    if (result)
    {

      return CFRetain(result);
    }
  }

  else
  {

    return _CFErrorCopyUserInfoKey(err, @"NSLocalizedFailureReason");
  }

  return result;
}

CFStringRef CFErrorCopyRecoverySuggestion(CFErrorRef err)
{
  if (CF_IS_OBJC(0x1BuLL, err))
  {
    result = [(__CFError *)err localizedRecoverySuggestion];
    if (result)
    {

      return CFRetain(result);
    }
  }

  else
  {

    return _CFErrorCopyUserInfoKey(err, @"NSLocalizedRecoverySuggestion");
  }

  return result;
}

const void *CFErrorGetCallBackBlockForDomain(const void *a1)
{
  if (!_CFErrorCallBackTable)
  {
    _CFErrorInitializeCallBackTable();
  }

  os_unfair_lock_lock_with_options();
  Value = CFDictionaryGetValue(_CFErrorCallBackTable, a1);
  os_unfair_lock_unlock(&_CFErrorLock);
  return Value;
}

void CFErrorSetCallBackForDomain(const void *a1, void *a2)
{
  v4[5] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v2 = a2;
    a2 = v4;
    v4[0] = MEMORY[0x1E69E9820];
    v4[1] = 3221225472;
    v4[2] = __CFErrorSetCallBackForDomain_block_invoke;
    v4[3] = &__block_descriptor_40_e89__v24__0____CFError____CFRuntimeBase_QAQ_q____CFString_____CFDictionary__8____CFString__16l;
    v4[4] = v2;
  }

  CFErrorSetCallBackBlockForDomain(a1, a2);
  v3 = *MEMORY[0x1E69E9840];
}

const void *__CFErrorSetCallBackForDomain_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = (*(a1 + 32))(a2, a3);
  v4 = v3;
  if (v3)
  {
    CFAutorelease(v3);
  }

  return v4;
}

id _CFErrorCopyCallStackReturnAddresses(void *a1)
{
  result = objc_getAssociatedObject(a1, "CFErrorCallStacks");
  if (result)
  {

    return CFRetain(result);
  }

  return result;
}

CFStringRef _CFErrorMachCallBack(void *a1, CFTypeRef cf1)
{
  if (!CFEqual(cf1, @"NSDescription"))
  {
    return 0;
  }

  if (CF_IS_OBJC(0x1BuLL, a1))
  {
    LODWORD(v3) = [a1 code];
  }

  else
  {
    v3 = a1[2];
  }

  v4 = mach_error_string(v3);
  if (!v4 || !*v4)
  {
    return 0;
  }

  return CFStringCreateWithCString(&__kCFAllocatorSystemDefault, v4, 0x8000100u);
}

CFStringRef __CFFileDescriptorCopyDescription(uint64_t a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  if (!v2)
  {
    goto LABEL_5;
  }

  v3 = *(a1 + 104);
  if (!v3)
  {
    goto LABEL_5;
  }

  v4 = v3();
  if (!v4)
  {
    v2 = *(a1 + 80);
LABEL_5:
    v4 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<CFFileDescriptor context %p>", v2);
  }

  memset(&v13, 0, sizeof(v13));
  v5 = *(a1 + 64);
  dli_sname = "???";
  if (dladdr(v5, &v13))
  {
    if (v13.dli_sname && v13.dli_saddr == v5)
    {
      dli_sname = v13.dli_sname;
    }
  }

  v8 = CFGetAllocator(a1);
  v9 = "No";
  if (!*(a1 + 16))
  {
    v9 = "Yes";
  }

  v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<CFFileDescriptor %p [%p]>{valid = %s, fd = %x, source = %p, callout = %s (%p), context = %@}", a1, v8, v9, *(a1 + 20), *(a1 + 56), dli_sname, v5, v4);
  if (v4)
  {
    CFRelease(v4);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

CFTypeID CFFileDescriptorGetTypeID(void)
{
  if (CFFileDescriptorGetTypeID_initOnce != -1)
  {
    CFFileDescriptorGetTypeID_cold_1();
  }

  return 60;
}

void __CFFileDescriptorCreate_block_invoke_2(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 50) = 1;
  if (!*(v2 + 48))
  {
    dispatch_suspend(*(a1 + 40));
    v2 = *(a1 + 32);
    *(v2 + 48) = 1;
  }

  v3 = *(v2 + 56);
  if (v3)
  {
    CFRunLoopSourceSignal(v3);
    v4 = *(*(a1 + 32) + 56);

    _CFRunLoopSourceWakeUpRunLoops(v4);
  }
}

void __CFFileDescriptorCreate_block_invoke_4(uint64_t a1)
{
  v2 = *(a1 + 32);
  *(v2 + 51) = 1;
  if (!*(v2 + 49))
  {
    dispatch_suspend(*(a1 + 40));
    v2 = *(a1 + 32);
    *(v2 + 49) = 1;
  }

  v3 = *(v2 + 56);
  if (v3)
  {
    CFRunLoopSourceSignal(v3);
    v4 = *(*(a1 + 32) + 56);

    _CFRunLoopSourceWakeUpRunLoops(v4);
  }
}

CFFileDescriptorNativeDescriptor CFFileDescriptorGetNativeDescriptor(CFFileDescriptorRef f)
{
  if (CFFileDescriptorGetTypeID_initOnce != -1)
  {
    CFFileDescriptorGetNativeDescriptor_cold_1();
  }

  __CFCheckCFInfoPACSignature(f);
  v2 = _CFGetNonObjCTypeID(f);
  if (v2 != 60)
  {
    _CFAssertMismatchedTypeID(0x3CuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (__CF_FORK_STATE)
  {
    return -1;
  }

  else
  {
    return *(f + 5);
  }
}

void CFFileDescriptorGetContext(CFFileDescriptorRef f, CFFileDescriptorContext *context)
{
  if (CFFileDescriptorGetTypeID_initOnce != -1)
  {
    CFFileDescriptorGetContext_cold_1();
  }

  __CFCheckCFInfoPACSignature(f);
  v4 = _CFGetNonObjCTypeID(f);
  if (v4 != 60)
  {
    _CFAssertMismatchedTypeID(0x3CuLL, v4);
  }

  v5 = *(f + 72);
  v6 = *(f + 88);
  context->copyDescription = *(f + 13);
  *&context->version = v5;
  *&context->retain = v6;
}

BOOL cffd_is_writeable(unsigned int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 >= 0x100000)
  {
    __break(1u);
  }

  v2 = ((a1 + 8) >> 3) + 7;
  v3 = malloc_type_malloc(v2, 0x3B6252B5uLL);
  v4 = 1 << a1;
  v5 = a1 >> 5;
  while (1)
  {
    bzero(v3, v2);
    if (__darwin_check_fd_set_overflow(a1, v3, 1))
    {
      *(v3 + v5) |= v4;
    }

    v6 = pselect_DARWIN_EXTSN();
    if ((v6 & 0x80000000) == 0)
    {
      break;
    }

    if (*__error() != 4 && *__error() != 35)
    {
      goto LABEL_12;
    }
  }

  if (v6 && __darwin_check_fd_set_overflow(a1, v3, 1))
  {
    v7 = (*(v3 + v5) & v4) != 0;
    goto LABEL_13;
  }

LABEL_12:
  v7 = 0;
LABEL_13:
  free(v3);
  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

void CFFileDescriptorDisableCallBacks(CFFileDescriptorRef f, CFOptionFlags callBackTypes)
{
  block[6] = *MEMORY[0x1E69E9840];
  if (CFFileDescriptorGetTypeID_initOnce != -1)
  {
    CFFileDescriptorDisableCallBacks_cold_1();
  }

  __CFCheckCFInfoPACSignature(f);
  v4 = _CFGetNonObjCTypeID(f);
  if (v4 != 60)
  {
    _CFAssertMismatchedTypeID(0x3CuLL, v4);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if ((__CF_FORK_STATE & 1) == 0)
  {
    v5 = __fdQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __CFFileDescriptorDisableCallBacks_block_invoke;
    block[3] = &__block_descriptor_tmp_9;
    block[4] = f;
    block[5] = callBackTypes;
    dispatch_sync(v5, block);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __CFFileDescriptorDisableCallBacks_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 16))
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      v4 = *(v1 + 32);
      if (v4)
      {
        if (!*(v1 + 48))
        {
          dispatch_suspend(v4);
          v1 = *(a1 + 32);
          v3 = *(a1 + 40);
          *(v1 + 48) = 1;
        }
      }
    }

    if ((v3 & 2) != 0)
    {
      v5 = *(v1 + 40);
      if (v5)
      {
        if (!*(v1 + 49))
        {
          dispatch_suspend(v5);
          *(*(a1 + 32) + 49) = 1;
        }
      }
    }
  }
}

CFTypeRef _CFCopyExtensionForAbstractType(CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  return cf;
}

BOOL _CFCreateDirectory(char *a1)
{
  if (__CFProphylacticAutofsAccess)
  {
    v2 = open("/dev/autofs_nowait", 0);
    v3 = mkdir(a1, 0x1FFu);
    if (v2 != -1)
    {
      close(v2);
    }
  }

  else
  {
    v3 = mkdir(a1, 0x1FFu);
  }

  return v3 == 0;
}

BOOL _CFRemoveDirectory(char *a1)
{
  if (__CFProphylacticAutofsAccess)
  {
    v2 = open("/dev/autofs_nowait", 0);
    v3 = rmdir(a1);
    if (v2 != -1)
    {
      close(v2);
    }
  }

  else
  {
    v3 = rmdir(a1);
  }

  return v3 == 0;
}

BOOL _CFDeleteFile(char *a1)
{
  if (__CFProphylacticAutofsAccess)
  {
    v2 = open("/dev/autofs_nowait", 0);
    v3 = unlink(a1);
    if (v2 != -1)
    {
      close(v2);
    }
  }

  else
  {
    v3 = unlink(a1);
  }

  return v3 == 0;
}

uint64_t _CFWriteBytesToFile(const __CFURL *a1, const void *a2, size_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  memset(&v13, 0, sizeof(v13));
  result = CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1026);
  if (result)
  {
    if (__CFProphylacticAutofsAccess)
    {
      v6 = open("/dev/autofs_nowait", 0);
    }

    else
    {
      v6 = -1;
    }

    if (stat(buffer, &v13) && *__error() != 2 || (v7 = open(buffer, 1537, 438), v7 < 0))
    {
      if (v6 != -1)
      {
        close(v6);
      }

      result = 0;
    }

    else
    {
      v8 = v7;
      if (a3 && write(v7, a2, a3) != a3)
      {
        v10 = *__error();
        close(v8);
        if (v6 != -1)
        {
          close(v6);
        }

        v11 = __error();
        result = 0;
        *v11 = v10;
      }

      else
      {
        fsync(v8);
        close(v8);
        if (v6 != -1)
        {
          close(v6);
        }

        result = 1;
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _CFIsAbsolutePath(unsigned __int16 *a1, uint64_t a2)
{
  if (a2 < 1)
  {
    return 0;
  }

  v2 = *a1;
  return v2 == 126 || v2 == 47;
}

BOOL _CFStripTrailingPathSlashes(unsigned __int16 *a1, uint64_t *a2)
{
  v2 = *a2;
  if (*a2 >= 2 && a1[1] == 58)
  {
    v3 = *a1;
    v4 = v3 - 65;
    v5 = (v3 - 97) < 0x1A;
    if (v4 < 0x1A)
    {
      v5 = 1;
    }
  }

  else
  {
    v5 = 0;
  }

  for (i = 0; ; ++i)
  {
    v7 = v2--;
    if (v5)
    {
      if (v7 <= 3)
      {
        return i != 0;
      }
    }

    else if (v7 < 2)
    {
      return i != 0;
    }

    if (a1[v2] != 47)
    {
      break;
    }

    *a2 = v2;
  }

  return i != 0;
}

void _CFAppendConditionalTrailingPathSlash2(__CFString *a1)
{
  Length = CFStringGetLength(a1);
  if (CFStringGetCharacterAtIndex(a1, Length - 1) != 47)
  {

    CFStringAppendCharacters(a1, &_CFAppendConditionalTrailingPathSlash2_slash, 1);
  }
}

uint64_t _CFAppendPathComponent(unsigned __int16 *a1, uint64_t *a2, uint64_t a3, void *__src, uint64_t a5)
{
  if (!a5)
  {
    return 1;
  }

  v7 = *a2;
  v8 = *a2 + 1;
  if (v8 + a5 > a3)
  {
    return 0;
  }

  v10 = v7 >= a3 || v7 == 0;
  v11 = *a2;
  if (!v10)
  {
    v11 = *a2 + 1;
    if (v7 != 2)
    {
      if (v7 == 1)
      {
        if (*a1 == 47)
        {
          v11 = 1;
          goto LABEL_23;
        }

        *a2 = v8;
        v14 = a1 + 1;
      }

      else
      {
        *a2 = v8;
        v14 = &a1[v7];
      }

LABEL_22:
      *v14 = 47;
      goto LABEL_23;
    }

    v12 = a1[1];
    v13 = *a1;
    if (v12 == 58)
    {
      if ((v13 & 0xFFFFFFDF) - 65 >= 0x1A)
      {
LABEL_20:
        *a2 = v11;
        v14 = a1 + 2;
        goto LABEL_22;
      }
    }

    else if (v12 != 92 || v13 != 92)
    {
      goto LABEL_20;
    }

    v11 = 2;
  }

LABEL_23:
  memmove(&a1[v11], __src, 2 * a5);
  *a2 += a5;
  return 1;
}

uint64_t _CFAppendPathExtension(unsigned __int16 *a1, uint64_t *a2, uint64_t a3, unsigned __int16 *a4, uint64_t a5)
{
  if (a5 + *a2 + 1 > a3)
  {
    return 0;
  }

  if (a5 >= 1)
  {
    v10 = *a4;
    if (v10 == 47 || a5 != 1 && a4[1] == 58 && (v10 & 0xFFFFFFDF) - 65 < 0x1A)
    {
      return 0;
    }
  }

  _CFStripTrailingPathSlashes(a1, a2);
  v11 = *a2;
  v12 = *a2 - 1;
  if (*a2 > 1)
  {
    if (v11 != 2)
    {
      if (v11 != 3)
      {
LABEL_20:
        if (v11 >= 1)
        {
LABEL_21:
          v14 = *a1;
          goto LABEL_22;
        }

LABEL_33:
        *a2 = v11 + 1;
        a1[v11] = 46;
        memmove(&a1[v11 + 1], a4, 2 * a5);
        *a2 += a5;
        return 1;
      }

      if (a1[2] != 47 || a1[1] != 58 || (*a1 & 0xFFDFu) - 65 >= 0x1A)
      {
        goto LABEL_21;
      }

      return 0;
    }

    v17 = a1[1];
    v14 = *a1;
    if (v17 == 58)
    {
      if ((v14 & 0xFFFFFFDF) - 65 < 0x1A)
      {
        return 0;
      }
    }

    else if (v14 == 92)
    {
      if (v17 != 92)
      {
        goto LABEL_33;
      }

      return 0;
    }

LABEL_22:
    if (v14 == 126)
    {
      v15 = a1 + 1;
      while (1)
      {
        v16 = *v15++;
        if (v16 == 47)
        {
          break;
        }

        if (!--v12)
        {
          return 0;
        }
      }
    }

    goto LABEL_33;
  }

  if (!v11)
  {
    return 0;
  }

  if (v11 != 1)
  {
    goto LABEL_20;
  }

  result = 0;
  v13 = *a1;
  if (v13 != 47 && v13 != 126)
  {
    goto LABEL_33;
  }

  return result;
}

BOOL _CFTransmutePathSlashes(_WORD *a1, uint64_t *a2, __int16 a3)
{
  v3 = *a2;
  if (*a2 >= 2 && *a1 == 92)
  {
    v4 = 2 * (a1[1] == 92);
  }

  else
  {
    v4 = 0;
  }

  if (v4 < v3)
  {
    v5 = v4;
    while (1)
    {
      v6 = a1[v5];
      if (v6 == 47)
      {
        break;
      }

      v9 = v5 + 1;
      a1[v4] = v6;
LABEL_16:
      ++v4;
      v5 = v9;
      if (v9 >= v3)
      {
        goto LABEL_19;
      }
    }

    a1[v4] = a3;
    if (v3 <= v5 + 1)
    {
      v7 = v5 + 1;
    }

    else
    {
      v7 = v3;
    }

    v8 = v7 - 1;
    while (v8 != v5)
    {
      v9 = v5 + 1;
      v10 = a1[++v5];
      if (v10 != 47)
      {
        goto LABEL_16;
      }
    }

    ++v4;
  }

LABEL_19:
  *a2 = v4;
  return v3 != v4;
}

uint64_t _cfmp_log_failure(uint64_t a1, int *a2, int a3, int a4)
{
  v40 = *MEMORY[0x1E69E9840];
  v8 = os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR);
  if (a2)
  {
    if (v8)
    {
      v9 = *(a2 + 5);
      v10 = *(a2 + 4);
      v11 = *a2;
      v14 = 136449283;
      v15 = a1;
      v16 = 1025;
      v17 = v11;
      v18 = 1024;
      v19 = v10;
      v20 = 1024;
      v21 = v9 & 1;
      v22 = 1024;
      v23 = (v9 >> 2) & 1;
      v24 = 1024;
      v25 = (v9 >> 1) & 1;
      v26 = 1024;
      v27 = (v9 >> 3) & 1;
      v28 = 1024;
      v29 = (v9 >> 4) & 1;
      v30 = 1024;
      v31 = (v9 >> 5) & 1;
      v32 = 1024;
      v33 = (v9 >> 6) & 1;
      v34 = 1024;
      v35 = v9 >> 7;
      v36 = 1024;
      v37 = a3;
      v38 = 1024;
      v39 = a4;
      _os_log_error_impl(&dword_1830E6000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "*** %{public}s, break on '_CFMachPortDeallocationFailure' to debug: {p:%{private}d c:%d is:%d <i:%d,d:%d> s:%d,r:%d nsi:%d,nss:%d,nsr:%d - ic:%d,ip:%d}", &v14, 0x54u);
    }
  }

  else if (v8)
  {
    _cfmp_log_failure_cold_1(a1, a3, a4);
  }

  result = _CFMachPortDeallocationFailure();
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void _cfmp_source_record_deadness(int a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (_cfmp_records_oGuard != -1)
  {
    _cfmp_source_record_deadness_cold_1();
  }

  v4 = _cfmp_records_oRecords;
  os_unfair_lock_lock(&_cfmp_records_lock);
  v7[0] = a2;
  v7[1] = a1;
  Value = CFSetGetValue(v4, v7);
  if (Value)
  {
    Value[5] &= ~0x10u;
  }

  else
  {
    _cfmp_log_failure("received deadname notification for untracked port", 0, a1, a2);
  }

  os_unfair_lock_unlock(&_cfmp_records_lock);
  v6 = *MEMORY[0x1E69E9840];
}

void _cfmp_record_nsmachport_is_interested(unsigned __int8 a1, int a2)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (_cfmp_records_oGuard != -1)
    {
      _cfmp_record_nsmachport_is_interested_cold_1();
    }

    v4 = _cfmp_records_oRecords;
    os_unfair_lock_lock(&_cfmp_records_lock);
    v7[0] = a2;
    v7[1] = a1;
    Value = CFSetGetValue(v4, v7);
    if (Value)
    {
      Value[5] |= 0x20u;
    }

    os_unfair_lock_unlock(&_cfmp_records_lock);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void _cfmp_record_nsmachport_deallocation(int a1, unsigned int a2, int a3, int a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v4 = a4;
    v5 = a3;
    if (a4 | a3)
    {
      v6 = a2;
      if (_cfmp_records_oGuard != -1)
      {
        _cfmp_record_nsmachport_deallocation_cold_1();
      }

      v8 = _cfmp_records_oRecords;
      os_unfair_lock_lock(&_cfmp_records_lock);
      v17[0] = v6;
      v17[1] = a1;
      Value = CFSetGetValue(v8, v17);
      if (Value)
      {
        v10 = *(Value + 5);
        if ((v10 & 0x20) == 0)
        {
          _cfmp_log_failure("setting nsport state - when its not interested", Value, a1, v6);
LABEL_11:
          os_unfair_lock_unlock(&_cfmp_records_lock);
          goto LABEL_14;
        }

        if ((*(Value + 5) & 4) == 0)
        {
          *(Value + 5) = v10 & 0x39 | ((v5 & 1) << 6) | (v4 << 7) | 2;
          goto LABEL_11;
        }

        v6 = *Value;
        v14 = *(Value + 4);
        v13 = v10 & 0x3F | ((v5 & 1) << 6) | (v4 << 7);
        v15 = *(Value + 3);
        CFSetRemoveValue(v8, Value);
        v12 = v15 << 48;
        v11 = v14 << 32;
      }

      else
      {
        v11 = 0;
        v12 = 0;
        v13 = (v4 << 7) | ((v5 & 1) << 6) | 0x20;
      }

      os_unfair_lock_unlock(&_cfmp_records_lock);
      _cfmp_cleanup(v11 | v6 | v12 | (v13 << 40));
    }
  }

LABEL_14:
  v16 = *MEMORY[0x1E69E9840];
}

CFStringRef _cfmp_copy_description(unsigned int *a1)
{
  if (!a1)
  {
    return @"{null}";
  }

  v1 = *(a1 + 5);
  return CFStringCreateWithFormat(0, 0, @"{p:%d c:%d is:%d <i:%d,d:%d> s:%d,r:%d nsi:%d,nss:%d,nsr:%d}", *a1, *(a1 + 4), v1 & 1, (v1 >> 2) & 1, (v1 >> 1) & 1, (v1 >> 3) & 1, (v1 >> 4) & 1, (v1 >> 5) & 1, (v1 >> 6) & 1, v1 >> 7);
}

uint64_t (**__CFStringEncodingGetLatinSuppConverterDefinition(int a1, uint64_t (*a2)(uint64_t)))()
{
  if (!__CFStringEncodingPrecomposeLatinCharacter_1)
  {
    __CFStringEncodingPrecomposeLatinCharacter_1 = a2(4);
    __CFStringEncodingIsValidCombiningCharacterForLatin1_0 = a2(3);
  }

  if (a1 > 1029)
  {
    if (a1 > 1286)
    {
      switch(a1)
      {
        case 1287:
          return __CFConverterWindowsBalticRim;
        case 2564:
          return __CFConverterMacRomanLatin1;
        case 2817:
          return __CFConverterNextStepLatin_0;
      }
    }

    else
    {
      switch(a1)
      {
        case 1030:
          return __CFConverterDOSBalticRim;
        case 1040:
          return __CFConverterDOSLatin1;
        case 1046:
          return __CFConverterDOSIcelandic;
      }
    }
  }

  else if (a1 > 525)
  {
    switch(a1)
    {
      case 526:
        return __CFConverterISOLatin8;
      case 527:
        return __CFConverterISOLatin9;
      case 1024:
        return __CFConverterDOSLatinUS;
    }
  }

  else
  {
    switch(a1)
    {
      case 37:
        return __CFConverterMacIcelandic;
      case 522:
        return __CFConverterISOLatin6;
      case 525:
        return __CFConverterISOLatin7;
    }
  }

  return 0;
}

uint64_t __CFToISOLatin6(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0xA0)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 8214 < 0xFFFFE091)
  {
    return 0;
  }

  v5 = &ISOLatin6_from_uni;
  v6 = &unk_183307200;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

uint64_t __CFFromISOLatin6(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (a2 > 0xA0)
  {
    LOWORD(a2) = ISOLatin6_to_uni[a2 - 161];
  }

  *a3 = a2;
  return 1;
}

uint64_t __CFToISOLatin6Precompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_1(a2, a3, 0);
  if (v9 > 0xA0)
  {
    if ((v9 - 8214) >= 0xE091u)
    {
      v11 = &ISOLatin6_from_uni;
      v12 = &unk_183307200;
      while (1)
      {
        v13 = &v11[2 * ((v12 - v11) >> 3)];
        v14 = *v13;
        if (v14 <= v9)
        {
          if (v14 >= v9)
          {
            LOBYTE(v9) = *(v13 + 2);
            goto LABEL_2;
          }

          v11 = v13 + 2;
        }

        else
        {
          v12 = v13 - 2;
        }

        if (v11 > v12)
        {
          return 0;
        }
      }
    }

    return 0;
  }

LABEL_2:
  if (!v9)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFIsValidCombiningCharacterForLatinSupp(int a1)
{
  if ((a1 - 768) > 0x5F)
  {
    return 0;
  }

  else
  {
    return (__CFLatinSuppCombiningCharBitmap[(a1 - 768) >> 5] >> ~a1) & 1;
  }
}

uint64_t __CFToISOLatin7(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0xA0)
  {
    v3 = a2;
    goto LABEL_3;
  }

  result = 0;
  if (a2 != 161 && a2 <= 0x201E)
  {
    v5 = &ISOLatin7_from_uni;
    v6 = &unk_183307448;
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

uint64_t __CFFromISOLatin7(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (a2 > 0xA0)
  {
    LOWORD(a2) = ISOLatin7_to_uni[a2 - 161];
  }

  *a3 = a2;
  return 1;
}

uint64_t __CFToISOLatin7Precompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_1(a2, a3, 0);
  if (v9 > 0xA0)
  {
    if (v9 != 161 && v9 <= 0x201E)
    {
      v12 = &ISOLatin7_from_uni;
      v13 = &unk_183307448;
      while (1)
      {
        v14 = &v12[2 * ((v13 - v12) >> 3)];
        v15 = *v14;
        if (v15 <= v9)
        {
          if (v15 >= v9)
          {
            LOBYTE(v9) = *(v14 + 2);
            goto LABEL_2;
          }

          v12 = v14 + 2;
        }

        else
        {
          v13 = v14 - 2;
        }

        if (v12 > v13)
        {
          return 0;
        }
      }
    }

    return 0;
  }

LABEL_2:
  if (!v9)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFToISOLatin8(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0xA0)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 7924 < 0xFFFFE1AF)
  {
    return 0;
  }

  v5 = &ISOLatin8_from_uni;
  v6 = &unk_183307682;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

uint64_t __CFFromISOLatin8(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (a2 > 0xA0)
  {
    LOWORD(a2) = ISOLatin8_to_uni[a2 - 161];
  }

  *a3 = a2;
  return 1;
}

uint64_t __CFToISOLatin8Precompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_1(a2, a3, 0);
  if (v9 > 0xA0)
  {
    if ((v9 - 7924) >= 0xE1AFu)
    {
      v11 = &ISOLatin8_from_uni;
      v12 = &unk_183307682;
      while (1)
      {
        v13 = &v11[2 * ((v12 - v11) >> 3)];
        v14 = *v13;
        if (v14 <= v9)
        {
          if (v14 >= v9)
          {
            LOBYTE(v9) = *(v13 + 2);
            goto LABEL_2;
          }

          v11 = v13 + 2;
        }

        else
        {
          v12 = v13 - 2;
        }

        if (v11 > v12)
        {
          return 0;
        }
      }
    }

    return 0;
  }

LABEL_2:
  if (!v9)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFToISOLatin9(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0xA3)
  {
    v3 = a2;
    goto LABEL_3;
  }

  result = 0;
  if (a2 != 164 && a2 <= 0x20AC)
  {
    v5 = &ISOLatin9_from_uni;
    v6 = &unk_1833078B0;
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

uint64_t __CFFromISOLatin9(uint64_t a1, unsigned int a2, _WORD *a3)
{
  if (a2 > 0xA3)
  {
    LOWORD(a2) = ISOLatin9_to_uni[a2 - 164];
  }

  *a3 = a2;
  return 1;
}

uint64_t __CFToISOLatin9Precompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_1(a2, a3, 0);
  if (v9 > 0xA3)
  {
    if (v9 != 164 && v9 <= 0x20AC)
    {
      v12 = &ISOLatin9_from_uni;
      v13 = &unk_1833078B0;
      while (1)
      {
        v14 = &v12[2 * ((v13 - v12) >> 3)];
        v15 = *v14;
        if (v15 <= v9)
        {
          if (v15 >= v9)
          {
            LOBYTE(v9) = *(v14 + 2);
            goto LABEL_2;
          }

          v12 = v14 + 2;
        }

        else
        {
          v13 = v14 - 2;
        }

        if (v12 > v13)
        {
          return 0;
        }
      }
    }

    return 0;
  }

LABEL_2:
  if (!v9)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFToMacIcelandic(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 > 0x7F)
  {
    if ((a2 + 1792) >= 0x7A0u)
    {
      v4 = &MacIcelandic_from_uni;
      v5 = &unk_183307B68;
      do
      {
        v6 = &v4[2 * ((v5 - v4) >> 3)];
        v7 = *v6;
        if (v7 <= a2)
        {
          if (v7 >= a2)
          {
            LOBYTE(a2) = *(v6 + 2);
            goto LABEL_2;
          }

          v4 = v6 + 2;
        }

        else
        {
          v5 = v6 - 2;
        }
      }

      while (v4 <= v5);
    }

    return 0;
  }

  else
  {
LABEL_2:
    *a3 = a2;
    return 1;
  }
}

uint64_t __CFFromMacIcelandic(uint64_t a1, __int16 a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = MacIcelandic_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return 1;
}

uint64_t __CFToMacIcelandicPrecompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_1(a2, a3, 0);
  if (v9 <= 0x7F)
  {
    v10 = v9;
    if (!v9)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if ((v9 + 1792) < 0x7A0u)
  {
    return 0;
  }

  v12 = &MacIcelandic_from_uni;
  v13 = &unk_183307B68;
  while (1)
  {
    v14 = &v12[2 * ((v13 - v12) >> 3)];
    v15 = *v14;
    if (v15 <= v9)
    {
      break;
    }

    v13 = v14 - 2;
LABEL_12:
    if (v12 > v13)
    {
      return 0;
    }
  }

  if (v15 < v9)
  {
    v12 = v14 + 2;
    goto LABEL_12;
  }

  v10 = *(v14 + 2);
  if (!v10)
  {
    return 0;
  }

LABEL_3:
  if (a5)
  {
    *a4 = v10;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFToWindowsBalticRim(uint64_t a1, unsigned int a2, char *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 < 0xA8)
  {
LABEL_12:
    if (a2 < 0xA0)
    {
      return 0;
    }
  }

  else if (a2 <= 0x2122)
  {
    v5 = &WindowsBalticRim_from_uni;
    v6 = &unk_183307CC8;
    while (1)
    {
      v7 = &v5[2 * ((v6 - v5) >> 3)];
      v8 = *v7;
      if (v8 <= a2)
      {
        if (v8 >= a2)
        {
LABEL_29:
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
        goto LABEL_12;
      }
    }
  }

  result = 0;
  if ((a2 - 161 > 0x13 || ((1 << (a2 + 95)) & 0x80011) == 0) && a2 != 255)
  {
    if (a2 < 0xA1)
    {
      v3 = -96;
      goto LABEL_3;
    }

    result = 0;
    if (a2 != 161 && a2 <= 0x201E)
    {
      v9 = &ISOLatin7_from_uni;
      v10 = &unk_183307448;
      do
      {
        v7 = &v9[2 * ((v10 - v9) >> 3)];
        v11 = *v7;
        if (v11 <= a2)
        {
          if (v11 >= a2)
          {
            goto LABEL_29;
          }

          v9 = v7 + 2;
        }

        else
        {
          v10 = v7 - 2;
        }

        result = 0;
      }

      while (v9 <= v10);
    }
  }

  return result;
}

uint64_t __CFFromWindowsBalticRim(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) == 0)
  {
    goto LABEL_2;
  }

  if (a2 >= 0xA0)
  {
    *a3 = -3;
  }

  else
  {
    *a3 = WindowsBalticRim_to_uni[a2 & 0x7F];
    if (((0x9501150AuLL >> a2) & 1) == 0)
    {
      return 1;
    }
  }

  if (a2 > 179)
  {
    if (a2 == 180)
    {
      LOWORD(a2) = 180;
    }

    else
    {
      if (a2 != 255)
      {
LABEL_16:
        if (a2 > 0xA0)
        {
          LOWORD(a2) = ISOLatin7_to_uni[a2 - 161];
        }

        goto LABEL_2;
      }

      LOWORD(a2) = 729;
    }

LABEL_2:
    *a3 = a2;
    return 1;
  }

  result = 0;
  if (a2 != 161 && a2 != 165)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t __CFToWindowsBalticRimPrecompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  v9 = __CFStringEncodingPrecomposeLatinCharacter_1(a2, a3, 0);
  v10 = __CFToWindowsBalticRim(v9, v9, &v14);
  result = 0;
  if (v10)
  {
    v12 = v14 == 0;
  }

  else
  {
    v12 = 1;
  }

  if (!v12)
  {
    if (a5)
    {
      *a4 = v14;
    }

    *a6 = 1;
    result = 2;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFToNextStepLatin_0(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 > 0x7F)
  {
    if ((a2 + 2) >= 0xA2u)
    {
      v4 = &nextstep_from_tab_0;
      v5 = &unk_183307F08;
      do
      {
        v6 = &v4[2 * ((v5 - v4) >> 3)];
        v7 = *v6;
        if (v7 <= a2)
        {
          if (v7 >= a2)
          {
            LOBYTE(a2) = *(v6 + 2);
            goto LABEL_2;
          }

          v4 = v6 + 2;
        }

        else
        {
          v5 = v6 - 2;
        }
      }

      while (v4 <= v5);
    }

    return 0;
  }

  else
  {
LABEL_2:
    *a3 = a2;
    return 1;
  }
}

BOOL __CFFromNextStepLatin_0(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = NSToPrecompUnicodeTable_0[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToNextStepLatinPrecompose_0(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_1(a2, a3, 0);
  if (v9 <= 0x7F)
  {
    v10 = v9;
    if (!v9)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if ((v9 + 2) < 0xA2u)
  {
    return 0;
  }

  v12 = &nextstep_from_tab_0;
  v13 = &unk_183307F08;
  while (1)
  {
    v14 = &v12[2 * ((v13 - v12) >> 3)];
    v15 = *v14;
    if (v15 <= v9)
    {
      break;
    }

    v13 = v14 - 2;
LABEL_12:
    if (v12 > v13)
    {
      return 0;
    }
  }

  if (v15 < v9)
  {
    v12 = v14 + 2;
    goto LABEL_12;
  }

  v10 = *(v14 + 2);
  if (!v10)
  {
    return 0;
  }

LABEL_3:
  if (a5)
  {
    *a4 = v10;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFToMacRomanLatin1(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 > 0x7F)
  {
    if ((a2 + 1277) >= 0x59Du)
    {
      v4 = &MacRomanLatin1_from_uni;
      v5 = &unk_183308210;
      do
      {
        v6 = &v4[2 * ((v5 - v4) >> 3)];
        v7 = *v6;
        if (v7 <= a2)
        {
          if (v7 >= a2)
          {
            LOBYTE(a2) = *(v6 + 2);
            goto LABEL_2;
          }

          v4 = v6 + 2;
        }

        else
        {
          v5 = v6 - 2;
        }
      }

      while (v4 <= v5);
    }

    return 0;
  }

  else
  {
LABEL_2:
    *a3 = a2;
    return 1;
  }
}

BOOL __CFFromMacRomanLatin1(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = MacRomanLatin1_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToMacRomanLatin1Precompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_1(a2, a3, 0);
  if (v9 <= 0x7F)
  {
    v10 = v9;
    if (!v9)
    {
      return 0;
    }

    goto LABEL_3;
  }

  if ((v9 + 1277) < 0x59Du)
  {
    return 0;
  }

  v12 = &MacRomanLatin1_from_uni;
  v13 = &unk_183308210;
  while (1)
  {
    v14 = &v12[2 * ((v13 - v12) >> 3)];
    v15 = *v14;
    if (v15 <= v9)
    {
      break;
    }

    v13 = v14 - 2;
LABEL_12:
    if (v12 > v13)
    {
      return 0;
    }
  }

  if (v15 < v9)
  {
    v12 = v14 + 2;
    goto LABEL_12;
  }

  v10 = *(v14 + 2);
  if (!v10)
  {
    return 0;
  }

LABEL_3:
  if (a5)
  {
    *a4 = v10;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFToDOSLatinUS(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 9633 < 0xFFFFDAFF)
  {
    return 0;
  }

  v5 = &DOSLatinUS_from_uni;
  v6 = &unk_183308510;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

BOOL __CFFromDOSLatinUS(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = DOSLatinUS_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToDOSLatinUSPrecompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_1(a2, a3, 0);
  if (v9 > 0x7F)
  {
    if ((v9 - 9633) >= 0xDAFFu)
    {
      v11 = &DOSLatinUS_from_uni;
      v12 = &unk_183308510;
      while (1)
      {
        v13 = &v11[2 * ((v12 - v11) >> 3)];
        v14 = *v13;
        if (v14 <= v9)
        {
          if (v14 >= v9)
          {
            LOBYTE(v9) = *(v13 + 2);
            goto LABEL_2;
          }

          v11 = v13 + 2;
        }

        else
        {
          v12 = v13 - 2;
        }

        if (v11 > v12)
        {
          return 0;
        }
      }
    }

    return 0;
  }

LABEL_2:
  if (!v9)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFToDOSLatin1(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 9633 < 0xFFFFDAFF)
  {
    return 0;
  }

  v5 = &DOSLatin1_from_uni;
  v6 = &unk_183308810;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

BOOL __CFFromDOSLatin1(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = DOSLatin1_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToDOSLatin1Precompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_1(a2, a3, 0);
  if (v9 > 0x7F)
  {
    if ((v9 - 9633) >= 0xDAFFu)
    {
      v11 = &DOSLatin1_from_uni;
      v12 = &unk_183308810;
      while (1)
      {
        v13 = &v11[2 * ((v12 - v11) >> 3)];
        v14 = *v13;
        if (v14 <= v9)
        {
          if (v14 >= v9)
          {
            LOBYTE(v9) = *(v13 + 2);
            goto LABEL_2;
          }

          v11 = v13 + 2;
        }

        else
        {
          v12 = v13 - 2;
        }

        if (v11 > v12)
        {
          return 0;
        }
      }
    }

    return 0;
  }

LABEL_2:
  if (!v9)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFToDOSBalticRim(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 9633 < 0xFFFFDAFF)
  {
    return 0;
  }

  v5 = &DOSBalticRim_from_uni;
  v6 = &unk_183308B10;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

BOOL __CFFromDOSBalticRim(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = DOSIcelandic_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToDOSBalticRimPrecompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_1(a2, a3, 0);
  if (v9 > 0x7F)
  {
    if ((v9 - 9633) >= 0xDAFFu)
    {
      v11 = &DOSBalticRim_from_uni;
      v12 = &unk_183308B10;
      while (1)
      {
        v13 = &v11[2 * ((v12 - v11) >> 3)];
        v14 = *v13;
        if (v14 <= v9)
        {
          if (v14 >= v9)
          {
            LOBYTE(v9) = *(v13 + 2);
            goto LABEL_2;
          }

          v11 = v13 + 2;
        }

        else
        {
          v12 = v13 - 2;
        }

        if (v11 > v12)
        {
          return 0;
        }
      }
    }

    return 0;
  }

LABEL_2:
  if (!v9)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  return 2;
}

uint64_t __CFToDOSIcelandic(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0x7F)
  {
    v3 = a2;
    goto LABEL_3;
  }

  if (a2 - 9633 < 0xFFFFDAFF)
  {
    return 0;
  }

  v5 = &DOSIcelandic_from_uni;
  v6 = &unk_183308D10;
  while (1)
  {
    v7 = &v5[2 * ((v6 - v5) >> 3)];
    v8 = *v7;
    if (v8 <= a2)
    {
      break;
    }

    v6 = v7 - 2;
LABEL_10:
    if (v5 > v6)
    {
      return 0;
    }
  }

  if (v8 < a2)
  {
    v5 = v7 + 2;
    goto LABEL_10;
  }

  v3 = *(v7 + 2);
LABEL_3:
  *a3 = v3;
  return 1;
}

BOOL __CFFromDOSIcelandic(uint64_t a1, int a2, _WORD *a3)
{
  if ((a2 & 0x80) != 0)
  {
    a2 = DOSIcelandic_to_uni[a2 & 0x7F];
  }

  *a3 = a2;
  return a2 != 65533;
}

uint64_t __CFToDOSIcelandicPrecompose(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = __CFStringEncodingPrecomposeLatinCharacter_1(a2, a3, 0);
  if (v9 > 0x7F)
  {
    if ((v9 - 9633) >= 0xDAFFu)
    {
      v11 = &DOSIcelandic_from_uni;
      v12 = &unk_183308D10;
      while (1)
      {
        v13 = &v11[2 * ((v12 - v11) >> 3)];
        v14 = *v13;
        if (v14 <= v9)
        {
          if (v14 >= v9)
          {
            LOBYTE(v9) = *(v13 + 2);
            goto LABEL_2;
          }

          v11 = v13 + 2;
        }

        else
        {
          v12 = v13 - 2;
        }

        if (v11 > v12)
        {
          return 0;
        }
      }
    }

    return 0;
  }

LABEL_2:
  if (!v9)
  {
    return 0;
  }

  if (a5)
  {
    *a4 = v9;
  }

  *a6 = 1;
  return 2;
}

CFLocaleIdentifier CFLocaleCreateCanonicalLocaleIdentifierFromScriptManagerCodes(CFAllocatorRef allocator, LangCode lcode, RegionCode rcode)
{
  v3 = lcode;
  if (rcode > 0x6C || (v5 = regionCodeToLocaleString[rcode]) == 0 || !*v5 || (result = _CFStringCreateWithASCIICStringNoCopyOrIndirectTagged(allocator, v5)) == 0)
  {
    if (v3 <= 0x97 && (v3 - 95) >= 0x21 && (v7 = langCodeToLocaleString[v3], *v7))
    {

      return _CFStringCreateWithASCIICStringNoCopyOrIndirectTagged(allocator, v7);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

const NXArchInfo *_CFBundleCurrentArchitecture()
{
  result = NXGetLocalArchInfo();
  if (result)
  {
    return result->cputype;
  }

  return result;
}

uint64_t _CFBundleDlfcnPreflight(uint64_t a1, CFErrorRef *a2)
{
  v31 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v4 = *(a1 + 52);
  os_unfair_lock_unlock((a1 + 96));
  if (v4)
  {
    result = 1;
    goto LABEL_46;
  }

  v6 = CFBundleCopyExecutableURL(a1);
  v7 = v6;
  if (!v6 || !CFURLGetFileSystemRepresentation(v6, 1u, buffer, 1026))
  {
    if (a2)
    {
      v15 = CFGetAllocator(a1);
      Error = _CFBundleCreateError(v15, a1, 4);
    }

    else
    {
      Error = 0;
    }

    goto LABEL_41;
  }

  v8 = dlopen_preflight(buffer);
  v9 = v8;
  Error = 0;
  if (!a2 || v8)
  {
    goto LABEL_42;
  }

  v11 = CFBundleCopyExecutableArchitectures(a1);
  v12 = dlerror();
  if (!v12 || !*v12)
  {
    v13 = 0;
    if (!v11)
    {
      goto LABEL_10;
    }

LABEL_15:
    Count = CFArrayGetCount(v11);
    valuePtr = 0;
    v17 = NXGetLocalArchInfo();
    if (v17)
    {
      cputype = v17->cputype;
    }

    else
    {
      cputype = 0;
    }

    if (Count < 1)
    {
      goto LABEL_31;
    }

    v19 = 0;
    do
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v11, v19);
      if (CFNumberGetValue(ValueAtIndex, kCFNumberSInt32Type, &valuePtr))
      {
        v21 = valuePtr == cputype;
      }

      else
      {
        v21 = 0;
      }

      v22 = !v21;
      ++v19;
    }

    while (v22 == 1 && v19 < Count);
    if (v22)
    {
LABEL_31:
      v24 = 3585;
    }

    else
    {
      v28 = 0;
      if (_CFBundleGrokObjCImageInfoFromMainExecutable(0, &v28) && (v28 & 2) != 0 && (v27 = 0, _CFBundleGetObjCImageInfo(a1, 0, &v27)) && (v27 & 2) == 0)
      {
        v24 = 3586;
      }

      else
      {
        v24 = 3587;
      }
    }

    v25 = CFGetAllocator(a1);
    Error = _CFBundleCreateErrorDebug(v25, a1, v24, v13);
    CFRelease(v11);
    goto LABEL_39;
  }

  v13 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, v12);
  if (v11)
  {
    goto LABEL_15;
  }

LABEL_10:
  v14 = CFGetAllocator(a1);
  Error = _CFBundleCreateErrorDebug(v14, a1, 3587, v13);
LABEL_39:
  if (v13)
  {
    CFRelease(v13);
  }

LABEL_41:
  v9 = 0;
  result = 0;
  if (v7)
  {
LABEL_42:
    CFRelease(v7);
    result = v9;
  }

  if (a2 && (result & 1) == 0)
  {
    *a2 = Error;
  }

LABEL_46:
  v26 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFBundleDlfcnLoadFramework(uint64_t a1, CFTypeRef *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v4 = *(a1 + 52);
  os_unfair_lock_unlock((a1 + 96));
  if (v4)
  {
    v5 = 1;
    goto LABEL_23;
  }

  cf = 0;
  v6 = CFBundleCopyExecutableURL(a1);
  v7 = v6;
  if (v6 && CFURLGetFileSystemRepresentation(v6, 1u, buffer, 1026))
  {
    v8 = dlopen(buffer, 265);
    v9 = _CFBundleLoadingLogger();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138544130;
      v19 = a1;
      v20 = 2082;
      v21 = buffer;
      v22 = 1024;
      v23 = 265;
      v24 = 2048;
      v25 = v8;
      _os_log_debug_impl(&dword_1830E6000, v9, OS_LOG_TYPE_DEBUG, "dlfcn load framework %{public}@, dlopen of %{public}s mode 0x%x returns handle %p", buf, 0x26u);
    }

    os_unfair_lock_lock_with_options();
    if (v8)
    {
      if (v8 == *(a1 + 56))
      {
        v10 = _CFBundleLoadingLogger();
        if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
        {
          _CFBundleDlfcnLoadFramework_cold_1();
        }

        os_unfair_lock_unlock((a1 + 96));
        dlclose(v8);
        os_unfair_lock_lock_with_options();
      }

      *(a1 + 56) = v8;
      v5 = 1;
      *(a1 + 52) = 1;
      os_unfair_lock_unlock((a1 + 96));
      goto LABEL_17;
    }

    *(a1 + 56) = 0;
    os_unfair_lock_unlock((a1 + 96));
    v5 = dlerror();
    v15 = _CFOSLog();
    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
    {
      _CFBundleDlfcnLoadFramework_cold_2();
      if (!v5)
      {
LABEL_27:
        if (a2)
        {
          _CFBundleDlfcnPreflight(a1, &cf);
          if (!cf)
          {
            v16 = CFGetAllocator(a1);
            cf = _CFBundleCreateErrorDebug(v16, a1, 3588, v5);
          }
        }

        if (v5)
        {
          CFRelease(v5);
          v5 = 0;
        }

        goto LABEL_17;
      }
    }

    else if (!v5)
    {
      goto LABEL_27;
    }

    v5 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, v5);
    goto LABEL_27;
  }

  v11 = _CFBundleLoadingLogger();
  if (!os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
  {
    if (!a2)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  _CFBundleDlfcnLoadFramework_cold_3();
  if (a2)
  {
LABEL_15:
    v12 = CFGetAllocator(a1);
    cf = _CFBundleCreateError(v12, a1, 4);
  }

LABEL_16:
  v5 = 0;
  if (v7)
  {
LABEL_17:
    CFRelease(v7);
  }

  if (!a2 || v5)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a2 = cf;
  }

LABEL_23:
  v13 = *MEMORY[0x1E69E9840];
  return v5;
}