CFIndex CFAttributedStringGetLength(CFAttributedStringRef aStr)
{
  if (CF_IS_OBJC(0x3EuLL, aStr))
  {

    return [(__CFAttributedString *)aStr length];
  }

  else
  {
    v3 = *(aStr + 2);

    return CFStringGetLength(v3);
  }
}

unint64_t __CFCharacterSetHash(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v17 = *MEMORY[0x1E69E9840];
  v4 = atomic_load(v2 + 1);
  if ((v4 & 4) == 0)
  {
    v5 = v2[5];
    if (!v5 || !*(v5 + 8) && !*(v5 + 13))
    {
      v6 = atomic_load(v2 + 1);
      v7 = (v6 >> 4) & 7;
      if (v7 > 2)
      {
        if ((v7 == 3 || v7 == 4) && !v2[3])
        {
          goto LABEL_21;
        }
      }

      else if ((v7 == 1 || v7 == 2) && !v2[4])
      {
LABEL_21:
        v15 = atomic_load(v2 + 1);
        v2[2] = (v15 << 28 >> 31);
LABEL_17:
        v10 = atomic_load(v3 + 1);
        v11 = v10;
        do
        {
          atomic_compare_exchange_strong(v3 + 1, &v11, v10 | 4);
          v12 = v11 == v10;
          v10 = v11;
        }

        while (!v12);
        goto LABEL_20;
      }
    }

    v8 = atomic_load(v2 + 1);
    if ((v8 & 0x70) == 0x30)
    {
      v9 = v2[3];
    }

    else
    {
      __CFCSetGetBitmap(v2, __b);
      v9 = __b;
    }

    v3[2] = CFHashBytes(v9, 0x2000);
    goto LABEL_17;
  }

LABEL_20:
  result = v3[2];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __notifyFunc_block_invoke(uint64_t result, uint64_t a2)
{
  v2 = (a2 + 55);
  *(*(*(result + 32) + 8) + 24) = *(a2 + 55);
  if (*(*(*(result + 32) + 8) + 24) == 1)
  {
    v2 = (a2 + 56);
  }

  *v2 = 1;
  return result;
}

void __notifyFunc_block_invoke_2(uint64_t a1, id a2)
{
  v12 = *MEMORY[0x1E69E9840];
  if (object_getClass(a2) != MEMORY[0x1E69E9E98])
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 0;
    v3 = *(a1 + 32);
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __notifyFunc_block_invoke_3;
    v7[3] = &unk_1E6DD1E08;
    v7[4] = &v8;
    if (withClientContext(v3, v7) && *(v9 + 24) == 1)
    {
      v5 = *(a1 + 56);
      v6 = *(a1 + 32);
      [CFPDSource observingConnectionsLockedSync:?];
    }

    _Block_object_dispose(&v8, 8);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t __notifyFunc_block_invoke_3(uint64_t result, uint64_t a2)
{
  *(*(*(result + 32) + 8) + 24) = *(a2 + 56);
  *(a2 + 56) = 0;
  *(a2 + 55) = 0;
  return result;
}

CFLocaleRef CFDateFormatterGetLocale(CFDateFormatterRef formatter)
{
  __CFCheckCFInfoPACSignature(formatter);
  v2 = _CFGetNonObjCTypeID(formatter);
  if (v2 != 56)
  {
    _CFAssertMismatchedTypeID(0x38uLL, v2);
  }

  return *(formatter + 3);
}

uint64_t findCFBurstTrieMappedPage(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v29 = *MEMORY[0x1E69E9840];
  v5 = ((*(a2 + 16) & 0xFFFFFFFC) + *(result + 2056));
  v6 = *v5;
  v27 = *(a2 + 20) - *(a2 + 24);
  if (v27 >= 1)
  {
    v7 = *(a2 + 20) - *(a2 + 24);
  }

  else
  {
    v7 = 0;
  }

  if ((*(result + 2072) & 8) != 0)
  {
    if (v6)
    {
      v14 = 0;
      v15 = 0;
      v16 = v5 + 1;
      v26 = a2 + 36;
      do
      {
        v17 = v15;
        v15 = v16 + v14;
        v18 = *(v15 + 1);
        v19 = *v15;
        if (v17 && v19 > *v17)
        {
          result = memcpy(&__s1[*v17], v17 + 7, v19 - *v17);
        }

        if (v19 + v18 >= v7)
        {
          v20 = *(a2 + 24);
          v21 = *v15;
          if (v27 <= 0 || (v22 = (*(a2 + 28) + v20), result = memcmp(__s1, v22, *v15), !result) && (result = memcmp(v15 + 7, &v22[v21], (*(a2 + 20) - v20 - v21)), !result))
          {
            memcpy((v26 + v20), __s1, v21);
            result = memcpy((v26 + *(a2 + 24) + *v15), v15 + 7, *(v15 + 1));
            *(v26 + *(a2 + 24) + *v15 + *(v15 + 1)) = 0;
            if (*(v15 + 3))
            {
              result = a4(a3, v26);
              if (result)
              {
                break;
              }
            }
          }
        }

        v14 += *(v15 + 1) + 7;
      }

      while (v14 < v6);
    }
  }

  else if (v6)
  {
    v8 = 0;
    v9 = v5 + 1;
    v10 = a2 + 36;
    do
    {
      v11 = (v9 + v8);
      v12 = *v11;
      if (v7 <= v12)
      {
        v13 = *(a2 + 24);
        result = memcmp(v11 + 3, (*(a2 + 28) + v13), v7);
        if (!result)
        {
          result = memcpy((v10 + v13), v11 + 3, v12);
          *(v10 + *(a2 + 24) + *v11) = 0;
          if (*(v11 + 1))
          {
            result = a4(a3, a2 + 36);
            if (result)
            {
              break;
            }
          }
        }
      }

      v8 += *v11 + 6;
    }

    while (v8 < v6);
  }

  v23 = *MEMORY[0x1E69E9840];
  return result;
}

__CFAttributedString *_CFDateFormatterCreateAttributedStringAndFieldsWithAbsoluteTime(const __CFAllocator *a1, uint64_t a2)
{
  v3 = a1;
  v22[192] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v4 = _CFGetTSD(1u);
    if (v4)
    {
      v3 = v4;
    }

    else
    {
      v3 = &__kCFAllocatorSystemDefault;
    }
  }

  __CFCheckCFInfoPACSignature(a2);
  v5 = _CFGetNonObjCTypeID(a2);
  if (v5 != 56)
  {
    _CFAssertMismatchedTypeID(0x38uLL, v5);
  }

  v6 = ufieldpositer_open();
  v7 = *(a2 + 16);
  v8 = __cficu_udat_formatForFields();
  v9 = v8;
  if (v8 >= 769)
  {
    Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 2 * (v8 + 2), 0x1000040BDFB0063, 0);
    ufieldpositer_close();
    v6 = ufieldpositer_open();
    v11 = *(a2 + 16);
    v9 = __cficu_udat_formatForFields();
  }

  else
  {
    Typed = 0;
  }

  if (Typed)
  {
    v18 = Typed;
  }

  else
  {
    v18 = &v21;
  }

  if (*(a2 + 304) == &__kCFBooleanTrue && (Identifier = CFLocaleGetIdentifier(*(a2 + 24)), CFLocaleGetLanguageCharacterDirection(Identifier) == kCFLocaleLanguageDirectionRightToLeft))
  {
    *v18 = 8207;
    ++v9;
  }

  else if (Typed)
  {
    v18 = Typed + 1;
  }

  else
  {
    v18 = v22;
  }

  v20 = CFStringCreateWithCharacters(v3, v18, v9);
  if (Typed)
  {
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
  }

  if (!v20)
  {
    Mutable = 0;
    if (!v6)
    {
      goto LABEL_17;
    }

    goto LABEL_16;
  }

  Length = CFStringGetLength(v20);
  Mutable = CFAttributedStringCreateMutable(v3, Length);
  v23.location = 0;
  v23.length = 0;
  CFAttributedStringReplaceString(Mutable, v23, v20);
  CFRelease(v20);
  for (i = ufieldpositer_next(); (i & 0x80000000) == 0; i = ufieldpositer_next())
  {
    if (i <= 0x23)
    {
      v15 = CFStringCreateWithBytes(v3, &aGymdkhmssedfww[i], 1, 0x600u, 0);
      v24.location = 0;
      v24.length = 0;
      CFAttributedStringSetAttribute(Mutable, v24, @"kCFDateFormatterPatternCharacterKey", v15);
      CFRelease(v15);
    }
  }

  if (v6)
  {
LABEL_16:
    ufieldpositer_close();
  }

LABEL_17:
  v16 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void CFStorageInsertValues(uint64_t cf, uint64_t a2, uint64_t a3)
{
  v4 = *(cf + 24);
  if (v4 == -1)
  {
    v7 = *(cf + 16);
    v5 = v7 * a3;
    v6 = v7 * a2;
  }

  else
  {
    v5 = a3 << v4;
    v6 = a2 << v4;
  }

  v8 = CFGetAllocator(cf);
  if (v5 >= 1)
  {
    v9 = v8;
    v10 = *(cf + 136);
    do
    {
      if (v5 >= v10)
      {
        v11 = v10;
      }

      else
      {
        v11 = v5;
      }

      __CFStorageInsertUnfrozen(v9, cf, cf + 144, v6, v11, v6);
      if (v12)
      {
        v13 = v12;
        Node = __CFStorageCreateNode(v9, cf, *(cf + 157), *(cf + 144));
        v15 = *(cf + 176);
        *(Node + 16) = *(cf + 160);
        *(Node + 32) = v15;
        if (*(cf + 157) == 1)
        {
          os_unfair_lock_lock_with_options();
          *(cf + 104) = 0;
          *(cf + 112) = 0;
          *(cf + 120) = 0;
          os_unfair_lock_unlock((cf + 128));
          *(cf + 157) = 0;
        }

        *(cf + 160) = Node;
        *(cf + 168) = v13;
        *(cf + 176) = 0;
        *(cf + 144) = *v13 + *Node;
      }

      v6 += v11;
      v16 = v5 <= v11;
      v5 -= v11;
    }

    while (!v16);
  }
}

uint64_t CFBurstTrieContains(uint64_t a1, const __CFString *a2, CFIndex a3, CFIndex a4, _DWORD *a5)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a4 > 1023)
  {
    v12 = 0;
  }

  else
  {
    usedBufLen = 0;
    if (a4 < 86)
    {
      v10 = 342;
      v11 = v17;
    }

    else
    {
      v10 = 4 * a4;
      v11 = malloc_type_malloc((4 * a4) | 1, 0x100004077774924uLL);
    }

    v19.location = a3;
    v19.length = a4;
    CFStringGetBytes(a2, v19, 0x8000100u, 0x2Du, 0, v11, v10, &usedBufLen);
    v13 = usedBufLen;
    v11[usedBufLen] = 0;
    v12 = CFBurstTrieContainsUTF8String(a1, v11, v13, a5);
    if (v17 != v11)
    {
      free(v11);
    }
  }

  v14 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t _CFHyphenationGetHyphenationLocations(const __CFString *a1, CFIndex a2, CFIndex a3, int a4, uint64_t a5, CFLocaleRef locale, uint64_t a7, uint64_t a8)
{
  v9 = locale;
  v108 = *MEMORY[0x1E69E9840];
  v15 = 100;
  if (a8 < 100)
  {
    v15 = a8;
  }

  v105 = v15;
  if (!CFStringIsHyphenationAvailableForLocale(locale))
  {
    v39 = -1;
    goto LABEL_112;
  }

  v104 = a5;
  Identifier = CFLocaleGetIdentifier(v9);
  os_unfair_lock_lock_with_options();
  TokenizersForLocale = getTokenizersForLocale(Identifier);
  if (!TokenizersForLocale || (v18 = TokenizersForLocale, (Count = CFArrayGetCount(TokenizersForLocale)) == 0))
  {
    os_unfair_lock_unlock(&tokenizerMutex);
LABEL_9:
    v106 = 0;
    CFStringGetCString(Identifier, v107, 256, 0x8000100u);
    v28 = ubrk_open();
    if (!v28)
    {
      v39 = 0;
      goto LABEL_112;
    }

    ValueAtIndex = v28;
    goto LABEL_11;
  }

  v102 = a1;
  v20 = a7;
  v21 = a4;
  v22 = a3;
  v23 = v9;
  v24 = a2;
  v25 = Count - 1;
  ValueAtIndex = CFArrayGetValueAtIndex(v18, Count - 1);
  v27 = v25;
  a2 = v24;
  v9 = v23;
  a3 = v22;
  a4 = v21;
  a7 = v20;
  a1 = v102;
  CFArrayRemoveValueAtIndex(v18, v27);
  os_unfair_lock_unlock(&tokenizerMutex);
  if (!ValueAtIndex)
  {
    goto LABEL_9;
  }

LABEL_11:
  v103 = a7;
  Length = CFStringGetLength(a1);
  v31 = &v91;
  v32 = a2 + 20 - a3;
  if (a2 <= a3)
  {
    v32 = a4;
  }

  if (a2 + 20 <= Length)
  {
    v33 = v32;
  }

  else
  {
    v33 = Length - a3;
  }

  v34 = v33;
  v106 = 0;
  MEMORY[0x1EEE9AC00](Length, v30);
  v36 = (&v91 - v35);
  v109.location = a3;
  v109.length = v34;
  CFStringGetCharacters(a1, v109, (&v91 - v35));
  ubrk_setText();
  v37 = ubrk_last();
  if (v37 != -1)
  {
    v38 = v37;
    v102 = v36;
    v39 = 0;
    v100 = a2;
    v40 = a2 - a3;
    v41 = 0;
    v99 = a3 + 1;
    v101 = &__kCFAllocatorNull;
    while (1)
    {
      do
      {
        v42 = v38;
        v43 = ubrk_preceding();
        if (v43 == -1)
        {
          goto LABEL_108;
        }

        v38 = v43;
      }

      while (v43 >= v40);
      v44 = (v42 - v43);
      if (v44 < 5)
      {
        goto LABEL_103;
      }

      v45 = v102 + v43;
      v46 = *v45;
      if (v46 == 39)
      {
        v47 = 1;
      }

      else
      {
        if (v46 == 99)
        {
LABEL_28:
          v51 = v45[1];
          if (v51 == 39 || v51 == 8217)
          {
            v47 = 2;
            goto LABEL_44;
          }
        }

        else
        {
          v47 = 1;
          if (v46 == 8217)
          {
            goto LABEL_44;
          }

          v48 = -1;
          v49 = &word_183447FB6;
          while (v48 != 6)
          {
            v50 = *v49++;
            ++v48;
            if (v50 == v46)
            {
              if (v48 > 6)
              {
                break;
              }

              goto LABEL_28;
            }
          }
        }

        if (v46 == 113 && v45[1] == 117)
        {
          v53 = v45[2];
          v54 = v53 == 8217 || v53 == 39;
          v47 = 3;
          if (!v54)
          {
            v47 = 0;
          }
        }

        else
        {
          v47 = 0;
        }
      }

LABEL_44:
      v55 = v44 - v47;
      if (v44 - v47 >= 1)
      {
        v56 = (v44 - 1);
        v57 = v45[v56];
        if (v57 == 8217 || v57 == 39)
        {
          LODWORD(v56) = v44 - 2;
          goto LABEL_48;
        }

        if (v55 != 1)
        {
          v75 = &v45[v44];
          v76 = *(v75 - 2);
          if ((v76 == 8217 || v76 == 39) && (v77 = v57 - 100, v77 <= 0x10) && ((1 << v77) & 0x18001) != 0)
          {
            LODWORD(v56) = v44 - 3;
LABEL_48:
            v56 = v56;
          }

          else if (v55 >= 3)
          {
            v81 = *(v75 - 3);
            if (v81 == 8217 || v81 == 39)
            {
              v82 = 0;
              v83 = 1;
              v84 = &word_183447FCA;
              do
              {
                if (v76 == *(v84 - 1))
                {
                  v43 = *v84;
                  if (*(v75 - 1) == v43)
                  {
                    break;
                  }
                }

                v83 = v82 < 4;
                v84 += 2;
                ++v82;
              }

              while (v82 != 5);
              if (v83)
              {
                v56 = v44 - 4;
              }
            }
          }
        }

        v58 = v56 <= v47;
        v59 = v56 - v47;
        if (v58)
        {
          v60 = 0;
        }

        else
        {
          v60 = v47;
        }

        if (v58)
        {
          v61 = (v42 - v38);
        }

        else
        {
          v61 = v59 + 1;
        }

        if (v61 < 5)
        {
          goto LABEL_103;
        }

        v96 = v31;
        v97 = v41;
        v92 = v38;
        v93 = a3 + v38;
        MEMORY[0x1EEE9AC00](v43, &v45[v60]);
        v64 = 0;
        do
        {
          v65 = 0;
          v66 = v64 + 2;
          if (v64 >= 3 && v66 < v61)
          {
            v65 = v62[v64 - 1] - 97 <= 0x19 && v62[v64] - 65 < 0x1A;
          }

          *(&v91 + v64++ - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0)) = v65;
        }

        while (v66 - 1 != v61);
        v94 = v63;
        MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(v97, v62, v61, v61, v101);
        if (!MutableWithExternalCharactersNoCopy)
        {
          goto LABEL_108;
        }

        v95 = &v91;
        v98 = MutableWithExternalCharactersNoCopy;
        CFStringLowercase(MutableWithExternalCharactersNoCopy, v9);
        v68 = __CFHyphenationCopyTrieInstance(v9);
        v69 = v98;
        if (v68)
        {
          v70 = v68;
          v107[0] = 0;
          CFBurstTrieContains(v68, v98, 0, v61, v107);
          CFBurstTrieRelease(v70);
          if (v107[0] >> 28 != 15)
          {
            v69 = v98;
            goto LABEL_82;
          }

          v71 = v105;
          if (v105 < 1 || v107[0] == -1)
          {
            CFRelease(v98);
          }

          else
          {
            v72 = 0;
            v73 = ~v107[0];
            v69 = v98;
            v74 = v99 + v94 + v92;
            do
            {
              if (v73)
              {
                *(v103 + 8 * v72++) = v74;
              }

              if (v73 < 2)
              {
                break;
              }

              v73 >>= 1;
              ++v74;
            }

            while (v72 < v71);
            if (v72 == -1)
            {
              goto LABEL_82;
            }

LABEL_88:
            CFRelease(v69);
            if (v72 >= 1)
            {
              v39 += v72;
              v41 = v97;
              if (v105 - v72 < 1)
              {
                goto LABEL_108;
              }

              v105 -= v72;
              v103 += 8 * v72;
              v31 = v96;
              goto LABEL_103;
            }
          }

          v31 = v96;
          v41 = v97;
          goto LABEL_103;
        }

LABEL_82:
        v78 = v61 - 200;
        if (v61 >= 200)
        {
          v79 = 200;
        }

        else
        {
          v79 = v61;
        }

        if (v61 <= 200)
        {
          v78 = 0;
        }

        HyphensForString = __CFHyphenationGetHyphensForString(v69, 0, v79, &v91 - ((v61 + 15) & 0xFFFFFFFFFFFFFFF0), v93 + v94 + v78, v100 - (v93 + v94 + v78), v9, v103, v105);
        v69 = v98;
        v72 = HyphensForString;
        goto LABEL_88;
      }

LABEL_103:
      if ((v104 & 1) == 0)
      {
        goto LABEL_108;
      }
    }
  }

  v39 = 0;
LABEL_108:
  v85 = CFLocaleGetIdentifier(v9);
  os_unfair_lock_lock_with_options();
  v86 = getTokenizersForLocale(v85);
  if (v86 && (v87 = v86, v88 = CFArrayGetCount(v86), v88 <= 2))
  {
    CFArraySetValueAtIndex(v87, v88, ValueAtIndex);
    os_unfair_lock_unlock(&tokenizerMutex);
  }

  else
  {
    os_unfair_lock_unlock(&tokenizerMutex);
    ubrk_close();
  }

LABEL_112:
  v89 = *MEMORY[0x1E69E9840];
  return v39;
}

uint64_t __CFStorageInsertUnfrozen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (*(a3 + 13) != 1)
  {
    v22 = a4 - 1;
    v24 = a3 + 16;
    v23 = *(a3 + 16);
    v25 = *v23;
    if (*v23 >= a4)
    {
      v27 = 0;
    }

    else
    {
      v22 -= v25;
      v23 = *(a3 + 24);
      v26 = v22 - *v23;
      if (v22 >= *v23)
      {
        v23 = *(a3 + 32);
        v27 = 2;
        v22 = v26;
      }

      else
      {
        v27 = 1;
      }
    }

    if (*(v23 + 12) == 1)
    {
      if (*(v23 + 8) != 1)
      {
        v42 = a1;
        inserted = __CFStorageInsertFrozen(a1, a2, v23, v22 + 1, a5, a6);
LABEL_29:
        v45 = inserted;
        v46 = v44;
        if (v23 != inserted)
        {
          if (*(v23 + 8) && atomic_fetch_add_explicit((v23 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
          {
            __CFStorageDeallocateNode(a2, v23);
          }

          *(v24 + 8 * v27) = v45;
        }

        if (v46)
        {
          if (*(a3 + 32))
          {
            Node = __CFStorageCreateNode(v42, a2, 0, 0);
            if (v27 == 1)
            {
              Node[2] = v46;
              Node[3] = *(a3 + 32);
            }

            else if (v27)
            {
              Node[2] = *(a3 + 32);
              Node[3] = v46;
            }

            else
            {
              Node[2] = *(a3 + 24);
              Node[3] = *(a3 + 32);
              *(a3 + 24) = v46;
            }

            *(a3 + 32) = 0;
            *a3 = **(a3 + 24) + **(a3 + 16);
            *Node = *Node[3] + *Node[2];
            return a3;
          }

          if (v25 >= a4)
          {
            *(a3 + 32) = *(a3 + 24);
          }

          *(v24 + 8 * v27 + 8) = v46;
        }

        v48 = *a3 + a5;
LABEL_44:
        *a3 = v48;
        return a3;
      }

      *(v23 + 12) = 0;
    }

    v42 = a1;
    inserted = __CFStorageInsertUnfrozen(a1, a2, v23, v22 + 1, a5, a6);
    goto LABEL_29;
  }

  v12 = *a3;
  v13 = *a3 + a5;
  v14 = *(a2 + 136);
  if (v13 > v14)
  {
    v15 = v12 - a4;
    if (!v15)
    {
      v16 = __CFStorageCreateNode(a1, a2, 1, a5);
      v17 = v16;
      if (v16)
      {
        v18 = *v16;
        v19 = *(a2 + 24);
        if (v19 == -1)
        {
          v66 = *(a2 + 16);
          v20 = a6 / v66;
          v21 = v18 / v66;
        }

        else
        {
          v20 = a6 >> v19;
          v21 = v18 >> v19;
        }
      }

      else
      {
        v20 = 0;
        v21 = 0;
      }

      os_unfair_lock_lock_with_options();
      *(a2 + 104) = v17;
      goto LABEL_125;
    }

    if (a4)
    {
      v32 = a5 + a4;
      if (a5 + a4 > v14)
      {
        v33 = __CFStorageCreateNode(a1, a2, 1, v13 - v14);
        v34 = v33;
        v35 = *(a3 + 24);
        if (v35)
        {
          v36 = *a3;
          v37 = *(a2 + 136);
          v38 = *a3 + a5 - v37;
          v39 = MEMORY[0x1E69E9AC8];
          if (v38 <= *MEMORY[0x1E69E9AC8] / 2)
          {
            v68 = v38 + 63;
            v49 = v38 < -63;
            v69 = v38 + 126;
            if (!v49)
            {
              v69 = v68;
            }

            v41 = v69 & 0xFFFFFFFFFFFFFFC0;
          }

          else
          {
            v40 = (v38 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
            if (v37 >= v40)
            {
              v41 = v40;
            }

            else
            {
              v41 = *(a2 + 136);
            }
          }

          if (v41 > *(v33 + 16))
          {
            pthread_mutex_lock((a2 + 32));
            if (v41 > *(v34 + 16))
            {
              *(v34 + 24) = __CFSafelyReallocateWithAllocatorTyped(a1, *(v34 + 24), v41, 864523722, 0, 0);
              if (__CFOASafe == 1)
              {
                __CFSetLastAllocationEventName();
              }

              *(v34 + 16) = v41;
            }

            pthread_mutex_unlock((a2 + 32));
            v37 = *(a2 + 136);
            v35 = *(a3 + 24);
            v36 = *a3;
          }

          memmove((*(v34 + 24) + a4 + a5 - v37), (v35 + a4), v36 - a4);
          v70 = *(a2 + 136);
          if (v70 <= *v39 / 2)
          {
            v76 = v70 + 63;
            v49 = v70 < -63;
            v77 = v70 + 126;
            if (!v49)
            {
              v77 = v76;
            }

            v72 = v77 & 0xFFFFFFFFFFFFFFC0;
          }

          else
          {
            v71 = (v70 + *v39 - 1) & -*v39;
            if (v70 >= v71)
            {
              v72 = v71;
            }

            else
            {
              v72 = *(a2 + 136);
            }
          }

          if (v72 > *(a3 + 16))
          {
            pthread_mutex_lock((a2 + 32));
            if (v72 > *(a3 + 16))
            {
              *(a3 + 24) = __CFSafelyReallocateWithAllocatorTyped(a1, *(a3 + 24), v72, 864523722, 0, 0);
              if (__CFOASafe == 1)
              {
                __CFSetLastAllocationEventName();
              }

              *(a3 + 16) = v72;
            }

            pthread_mutex_unlock((a2 + 32));
          }
        }

        v78 = a6 - a4;
        v79 = *a3;
        v80 = *(a2 + 24);
        if (v80 == -1)
        {
          v83 = *(a2 + 16);
          v81 = v78 / v83;
          v82 = v79 / v83;
        }

        else
        {
          v81 = v78 >> v80;
          v82 = v79 >> v80;
        }

        os_unfair_lock_lock_with_options();
        *(a2 + 104) = a3;
        *(a2 + 112) = v81;
        *(a2 + 120) = v82;
        os_unfair_lock_unlock((a2 + 128));
        v48 = *(a2 + 136);
        goto LABEL_44;
      }

      v59 = __CFStorageCreateNode(a1, a2, 1, v15);
      v60 = v59;
      v61 = *(a3 + 24);
      if (v61)
      {
        v62 = *a3 - a4;
        v63 = MEMORY[0x1E69E9AC8];
        if (v62 <= *MEMORY[0x1E69E9AC8] / 2)
        {
          v73 = v62 + 63;
          if (v62 < -63)
          {
            v73 = v62 + 126;
          }

          v65 = v73 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v64 = (v62 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
          if (*(a2 + 136) >= v64)
          {
            v65 = v64;
          }

          else
          {
            v65 = *(a2 + 136);
          }
        }

        if (v65 > *(v59 + 16))
        {
          pthread_mutex_lock((a2 + 32));
          if (v65 > *(v60 + 16))
          {
            *(v60 + 24) = __CFSafelyReallocateWithAllocatorTyped(a1, *(v60 + 24), v65, 864523722, 0, 0);
            if (__CFOASafe == 1)
            {
              __CFSetLastAllocationEventName();
            }

            *(v60 + 16) = v65;
          }

          pthread_mutex_unlock((a2 + 32));
          v61 = *(a3 + 24);
          v62 = *a3 - a4;
        }

        memmove(*(v60 + 24), (v61 + a4), v62);
        if (v32 <= *v63 / 2)
        {
          v84 = v32 + 63;
          if (v32 < -63)
          {
            v84 = v32 + 126;
          }

          v75 = v84 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v74 = (v32 + *v63 - 1) & -*v63;
          if (*(a2 + 136) >= v74)
          {
            v75 = v74;
          }

          else
          {
            v75 = *(a2 + 136);
          }
        }

        if (v75 > *(a3 + 16))
        {
          pthread_mutex_lock((a2 + 32));
          if (v75 > *(a3 + 16))
          {
            *(a3 + 24) = __CFSafelyReallocateWithAllocatorTyped(a1, *(a3 + 24), v75, 864523722, 0, 0);
            if (__CFOASafe == 1)
            {
              __CFSetLastAllocationEventName();
            }

            *(a3 + 16) = v75;
          }

          pthread_mutex_unlock((a2 + 32));
        }
      }

      *a3 = v32;
      v85 = a6 - a4;
      v86 = *(a2 + 24);
      if (v86 == -1)
      {
        v87 = *(a2 + 16);
        v20 = v85 / v87;
        v21 = v32 / v87;
      }

      else
      {
        v20 = v85 >> v86;
        v21 = v32 >> v86;
      }
    }

    else
    {
      v57 = __CFStorageCreateNode(a1, a2, 1, 0);
      *v57 = *a3;
      v57[2] = *(a3 + 16);
      v57[3] = *(a3 + 24);
      *a3 = a5;
      *(a3 + 16) = 0;
      *(a3 + 24) = 0;
      v58 = *(a2 + 24);
      if (v58 == -1)
      {
        v67 = *(a2 + 16);
        v20 = a6 / v67;
        v21 = a5 / v67;
      }

      else
      {
        v20 = a6 >> v58;
        v21 = a5 >> v58;
      }
    }

    os_unfair_lock_lock_with_options();
    *(a2 + 104) = a3;
LABEL_125:
    *(a2 + 112) = v20;
    *(a2 + 120) = v21;
    os_unfair_lock_unlock((a2 + 128));
    return a3;
  }

  v28 = *(a3 + 24);
  if (v28)
  {
    if (v13 <= *MEMORY[0x1E69E9AC8] / 2)
    {
      v50 = v13 + 63;
      v49 = v13 < -63;
      v51 = v13 + 126;
      if (!v49)
      {
        v51 = v50;
      }

      v30 = v51 & 0xFFFFFFFFFFFFFFC0;
    }

    else
    {
      v29 = (v13 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
      if (v14 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = *(a2 + 136);
      }
    }

    if (v30 > *(a3 + 16))
    {
      pthread_mutex_lock((a2 + 32));
      if (v30 > *(a3 + 16))
      {
        *(a3 + 24) = __CFSafelyReallocateWithAllocatorTyped(a1, *(a3 + 24), v30, 864523722, 0, 0);
        if (__CFOASafe == 1)
        {
          __CFSetLastAllocationEventName();
        }

        *(a3 + 16) = v30;
      }

      pthread_mutex_unlock((a2 + 32));
      v28 = *(a3 + 24);
      v12 = *a3;
    }

    memmove((v28 + a4 + a5), (v28 + a4), v12 - a4);
    v13 = *a3 + a5;
  }

  *a3 = v13;
  v52 = a6 - a4;
  v53 = *(a2 + 24);
  if (v53 == -1)
  {
    v56 = *(a2 + 16);
    v54 = v52 / v56;
    v55 = v13 / v56;
  }

  else
  {
    v54 = v52 >> v53;
    v55 = v13 >> v53;
  }

  os_unfair_lock_lock_with_options();
  *(a2 + 104) = a3;
  *(a2 + 112) = v54;
  *(a2 + 120) = v55;
  os_unfair_lock_unlock((a2 + 128));
  return a3;
}

uint64_t CFStorageGetValueAtIndex(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v38[1] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v6 = *(a1 + 104);
  v7 = *(a1 + 112);
  v8 = *(a1 + 120);
  os_unfair_lock_unlock((a1 + 128));
  if (v6 && (*(v6 + 12) & 1) == 0)
  {
    if (!*(v6 + 24))
    {
      v18 = CFGetAllocator(a1);
      v19 = *v6;
      if (*v6 <= *MEMORY[0x1E69E9AC8] / 2)
      {
        v30 = v19 + 63;
        v29 = v19 < -63;
        v31 = v19 + 126;
        if (!v29)
        {
          v31 = v30;
        }

        v21 = v31 & 0xFFFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = (v19 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
        if (*(a1 + 136) >= v20)
        {
          v21 = v20;
        }

        else
        {
          v21 = *(a1 + 136);
        }
      }

      if (v21 > *(v6 + 16))
      {
        pthread_mutex_lock((a1 + 32));
        if (v21 > *(v6 + 16))
        {
          *(v6 + 24) = __CFSafelyReallocateWithAllocatorTyped(v18, *(v6 + 24), v21, 864523722, 0, 0);
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          *(v6 + 16) = v21;
        }

        pthread_mutex_unlock((a1 + 32));
      }
    }

    v32 = a2 - v7;
    if (a2 >= v7 && v8 + v7 > a2)
    {
      if (a3)
      {
        *a3 = v7;
        a3[1] = v8;
      }

      v33 = *(v6 + 24);
      v34 = *(a1 + 24);
      if (v34 == -1)
      {
        v35 = *(a1 + 16) * v32;
        if (!v33)
        {
          goto LABEL_3;
        }
      }

      else
      {
        v35 = v32 << v34;
        if (!v33)
        {
          goto LABEL_3;
        }
      }

      Byte = v33 + v35;
      goto LABEL_21;
    }
  }

LABEL_3:
  v37 = 0;
  v38[0] = 0;
  v36 = 0;
  v9 = *(a1 + 24);
  if (v9 == -1)
  {
    v10 = *(a1 + 16) * a2;
  }

  else
  {
    v10 = a2 << v9;
  }

  Byte = __CFStorageFindByte(a1, a1 + 144, v10, 0, v38, &v36, 1);
  v12 = v38[0];
  v13 = v36;
  if (v38[0])
  {
    v14 = *v38[0];
    v15 = *(a1 + 24);
    if (v15 == -1)
    {
      v22 = *(a1 + 16);
      v16 = v36 / v22;
      v17 = v14 / v22;
    }

    else
    {
      v16 = v36 >> v15;
      v17 = v14 >> v15;
    }
  }

  else
  {
    v16 = 0;
    v17 = 0;
  }

  os_unfair_lock_lock_with_options();
  *(a1 + 104) = v12;
  *(a1 + 112) = v16;
  *(a1 + 120) = v17;
  os_unfair_lock_unlock((a1 + 128));
  v23 = *(a1 + 24);
  if (v23 != -1)
  {
    v24 = v13 >> v23;
    v25 = v37 >> v23;
    if (!a3)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  v26 = *(a1 + 16);
  v24 = v13 / v26;
  v25 = v37 / v26;
  if (a3)
  {
LABEL_20:
    *a3 = v24;
    a3[1] = v25;
  }

LABEL_21:
  v27 = *MEMORY[0x1E69E9840];
  return Byte;
}

CFIndex CFStringGetHyphenationLocationBeforeIndex(CFStringRef string, CFIndex location, CFRange limitRange, CFOptionFlags options, CFLocaleRef locale, UTF32Char *character)
{
  v17[1] = *MEMORY[0x1E69E9840];
  result = -1;
  if (string)
  {
    if (locale)
    {
      v9 = limitRange.location;
      if ((limitRange.location & 0x8000000000000000) == 0)
      {
        length = limitRange.length;
        if (limitRange.length >= 1 && limitRange.location <= location && limitRange.location + limitRange.length >= location)
        {
          if (limitRange.length <= CFStringGetLength(string))
          {
            if (character)
            {
              *character = 45;
            }

            v17[0] = 0;
            HyphenationLocations = _CFHyphenationGetHyphenationLocations(string, location, v9, length, options, locale, v17, 1);
            if (v17[0] >= location || HyphenationLocations <= 0)
            {
              result = -1;
            }

            else
            {
              result = v17[0];
            }
          }

          else
          {
            result = -1;
          }
        }
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t findCFBurstTrieCompactMappedLevel(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = a3;
  v9 = result;
  v11 = *(a2 + 16);
  v10 = *(a2 + 20);
  v12 = *(a2 + 24);
  v13 = a2 + 36;
  v14 = ((v11 & 0xFFFFFFFC) + *(result + 2056));
  if (v12 <= v10)
  {
    v15 = v10;
  }

  else
  {
    v15 = v12;
  }

  if (v12 >= v10)
  {
    LODWORD(v19) = v12;
LABEL_15:
    if (v14[4].i32[0])
    {
      result = (a5)(a4);
      if (result)
      {
        return result;
      }

      v10 = *(a2 + 20);
      LODWORD(v19) = *(a2 + 24);
    }

    if (v19 != v10 || (v7 & 1) == 0)
    {

      return traverseCFBurstTrieCompactMappedLevel(v9, v14, a2, v7, a4, a5);
    }
  }

  else
  {
    v16 = *(a2 + 28);
    v17 = v12;
    while (1)
    {
      v18 = *(v16 + v17);
      v19 = v17 + 1;
      *(v13 + v17) = v18;
      *(a2 + 24) = v17 + 1;
      v20 = v18 >> 6;
      v21 = v14[v18 >> 6];
      v22 = 1 << v18;
      if ((*&v21 & (1 << v18)) == 0)
      {
        break;
      }

      if (v18 >= 0x40)
      {
        v23 = 0;
        result = v14;
        do
        {
          v24 = *result;
          result += 8;
          v25 = vcnt_s8(v24);
          v25.i16[0] = vaddlv_u8(v25);
          v23 += v25.i32[0];
          --v20;
        }

        while (v20);
      }

      else
      {
        v23 = 0;
      }

      v26 = vcnt_s8(((v22 - 1) & *&v21));
      v26.i16[0] = vaddlv_u8(v26);
      v27 = v14[4].i32[v23 + v26.i32[0] + 1];
      *(a2 + 16) = v27;
      if ((v27 & 3) != 3)
      {
        if ((v27 & 3) != 0)
        {
          if ((v27 & 3) == 1)
          {

            return findCFBurstTrieMappedLevel(v9, a2, a3);
          }

          else
          {

            return findCFBurstTrieMappedPage(v9, a2, a4, a5);
          }
        }

        return result;
      }

      v14 = ((v27 & 0xFFFFFFFC) + *(v9 + 2056));
      v17 = v19;
      if (v19 == v15)
      {
        goto LABEL_15;
      }
    }
  }

  return result;
}

BOOL CFAttributedStringGetStatisticalWritingDirections(CFAttributedStringRef aStr, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v49 = *MEMORY[0x1E69E9840];
  if (a4 == -1)
  {
    if (aStr)
    {
      if (a5)
      {
        if (a3)
        {
          String = CFAttributedStringGetString(aStr);
          memset(v41, 0, sizeof(v41));
          v42 = String;
          v45 = a2;
          v46 = a3;
          if (CFStringGetCharactersPtr(String))
          {
            CStringPtr = 0;
          }

          else
          {
            CStringPtr = CFStringGetCStringPtr(String, 0x600u);
          }

          v44 = CStringPtr;
          v47 = 0;
          v48 = 0;
          v37 = ubidi_open();
          v18 = CFStringCopyStatisticalWritingDirections(String);
          Count = CFArrayGetCount(v18);
          if (Count >= 1)
          {
            v20 = Count;
            for (i = 0; i != v20; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v18, i);
              valuePtr = 0;
              v40 = 0;
              Value = CFDictionaryGetValue(ValueAtIndex, @"Location");
              CFNumberGetValue(Value, kCFNumberCFIndexType, &valuePtr);
              v24 = CFDictionaryGetValue(ValueAtIndex, @"Length");
              CFNumberGetValue(v24, kCFNumberCFIndexType, &v40);
              if (a2 <= valuePtr)
              {
                v25 = valuePtr;
              }

              else
              {
                v25 = a2;
              }

              v26 = v40 + valuePtr;
              if (a2 + a3 < v40 + valuePtr)
              {
                v26 = a2 + a3;
              }

              v27 = v26 <= v25;
              v28 = v26 - v25;
              if (v27)
              {
                v29 = 0;
              }

              else
              {
                v29 = v25;
              }

              if (v27)
              {
                v28 = 0;
              }

              valuePtr = v29;
              v40 = v28;
              if (v28)
              {
                v38 = 0;
                v30 = CFDictionaryGetValue(ValueAtIndex, @"WritingDirection");
                CFNumberGetValue(v30, kCFNumberSInt8Type, &v38);
                if (a6)
                {
                  v31 = (a6 + valuePtr - a2);
                }

                else
                {
                  v31 = 0;
                }

                processParagraph(v37, aStr, v41, valuePtr, v40, v38, &a5[valuePtr - a2], v31);
              }
            }
          }

          CFRelease(v18);
          ubidi_close();
          if (a3 >= 1)
          {
            if (*a5)
            {
              result = 1;
            }

            else
            {
              v32 = 1;
              do
              {
                v33 = v32;
                if (a3 == v32)
                {
                  break;
                }

                v34 = a5[v32++];
              }

              while ((v34 & 1) == 0);
              result = v33 < a3;
            }

            goto LABEL_14;
          }
        }

LABEL_13:
        result = 0;
LABEL_14:
        v17 = *MEMORY[0x1E69E9840];
        return result;
      }

      v16 = @"bidiLevels cannot be NULL";
    }

    else
    {
      v16 = @"attributedString cannot be NULL";
    }

    CFLog(3, v16, a3, a4, a5, a6, a7, a8, v35);
    goto LABEL_13;
  }

  v12 = *MEMORY[0x1E69E9840];

  return CFAttributedStringGetBidiLevelsAndResolvedDirections(aStr, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t findCFBurstTrieMappedLevel(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t))
{
  v7 = a3;
  v9 = result;
  v10 = *(a2 + 20);
  v11 = *(a2 + 24);
  v12 = (*(a2 + 16) & 0xFFFFFFFC) + *(result + 2056);
  if (v11 <= v10)
  {
    v13 = v10;
  }

  else
  {
    v13 = v11;
  }

  if (v11 >= v10)
  {
    v17 = *(a2 + 24);
LABEL_10:
    if (*(v12 + 1024))
    {
      result = a5(a4, a2 + 36);
      if (result)
      {
        return result;
      }

      v10 = *(a2 + 20);
      v17 = *(a2 + 24);
    }

    if (v17 != v10 || (v7 & 1) == 0)
    {

      return traverseCFBurstTrieMappedLevel(v9, v12, a2, v7, a4, a5);
    }
  }

  else
  {
    v14 = v13 - v11;
    v15 = v11 + 36;
    v16 = (*(a2 + 28) + v11);
    v17 = *(a2 + 24);
    while (1)
    {
      v18 = *v16++;
      v19 = *(v12 + 4 * v18);
      *(a2 + 16) = v19;
      *(a2 + 24) = ++v17;
      *(a2 + v15) = v18;
      if ((v19 & 3) != 1)
      {
        break;
      }

      v12 = (v19 & 0xFFFFFFFC) + *(result + 2056);
      ++v15;
      if (!--v14)
      {
        goto LABEL_10;
      }
    }

    if ((v19 & 3) != 0)
    {
      if ((v19 & 3) == 2)
      {

        return findCFBurstTrieMappedPage(result, a2, a4, a5);
      }

      else
      {

        return findCFBurstTrieCompactMappedLevel(result, a2, a3, a4, a5);
      }
    }
  }

  return result;
}

void processParagraph(uint64_t a1, const __CFAttributedString *a2, uint64_t a3, CFIndex a4, CFIndex a5, int a6, void *a7, _BYTE *a8)
{
  v8 = a5;
  v183 = *MEMORY[0x1E69E9840];
  code = U_ZERO_ERROR;
  if (a6 == -1 && a8)
  {
    *a8;
  }

  v182 = 0;
  memset(v181, 0, sizeof(v181));
  memset(v180, 0, sizeof(v180));
  v179 = -1;
  v178[0] = -1;
  v178[1] = -1;
  v177 = -1;
  v176[0] = -1;
  v176[1] = -1;
  if (a5 < 1)
  {
    v157 = 0;
    v11 = 0;
    v98 = 0;
    v14 = v181;
    v13 = v180;
    goto LABEL_152;
  }

  v9 = 0;
  v10 = 0;
  v11 = 0;
  v157 = 0;
  v166 = 0;
  v12 = 0;
  v156 = a4 + a5;
  v13 = v180;
  v14 = v181;
  v162 = 10;
  v15 = a4;
  do
  {
    ptr = v13;
    inRange_12 = v11;
    v174[0] = -1;
    v174[1] = -1;
    v175 = -1;
    if ((v10 & 1) != 0 && v9)
    {
      CFRelease(v9);
    }

    longestEffectiveRange.location = 0;
    longestEffectiveRange.length = 0;
    v185.length = a5;
    loc = v15;
    v185.location = a4;
    AttributeAndLongestEffectiveRange = CFAttributedStringGetAttributeAndLongestEffectiveRange(a2, v15, @"NSLink", v185, &longestEffectiveRange);
    v17 = longestEffectiveRange.length + longestEffectiveRange.location;
    v18 = a3;
    if (!AttributeAndLongestEffectiveRange)
    {
      goto LABEL_81;
    }

    numChars = v17 - v15;
    if (v17 - v15 < 1)
    {
      goto LABEL_80;
    }

    v19 = *(a3 + 152);
    v20 = v15 - v19;
    v21 = v17 - v19;
    v22 = v19 - v15;
    v23 = v15 - v19 + 64;
    v24 = loc - v19;
    while (1)
    {
      if (v24 >= 4)
      {
        v25 = 4;
      }

      else
      {
        v25 = v24;
      }

      if (v24 < 0 || (v26 = *(v18 + 160), v26 <= v24))
      {
        v30 = *(MEMORY[0x1E69E9830] + 60);
        if ((v30 & 0x4000) != 0)
        {
          goto LABEL_81;
        }

        v29 = 0;
        goto LABEL_26;
      }

      v27 = *(v18 + 136);
      if (v27)
      {
        v28 = v27 + 2 * *(v18 + 152);
      }

      else
      {
        v31 = *(v18 + 144);
        if (v31)
        {
          v29 = *(v31 + *(v18 + 152) + v24);
          goto LABEL_24;
        }

        if (*(v18 + 176) <= v24 || (v32 = *(v18 + 168), v32 > v24))
        {
          v33 = -v25;
          v34 = v25 + v22;
          v35 = v23 - v25;
          v36 = v24 + v33;
          v37 = v36 + 64;
          if (v36 + 64 >= v26)
          {
            v37 = *(v18 + 160);
          }

          *(v18 + 168) = v36;
          *(v18 + 176) = v37;
          if (v26 >= v35)
          {
            v26 = v35;
          }

          v184.location = v36 + *(v18 + 152);
          v184.length = v26 + v34;
          CFStringGetCharacters(*(v18 + 128), v184, v18);
          v18 = a3;
          v32 = *(a3 + 168);
        }

        v28 = v18 - 2 * v32;
      }

      v29 = *(v28 + 2 * v24);
LABEL_24:
      if (v29 > 0x7Fu)
      {
        break;
      }

      v30 = *(MEMORY[0x1E69E9830] + 4 * v29 + 60);
      if ((v30 & 0x4000) != 0)
      {
        goto LABEL_81;
      }

LABEL_26:
      if ((v30 & 0x500) == 0 && (v29 > 0x2Eu || ((1 << v29) & 0x680000000000) == 0))
      {
        break;
      }

      ++v24;
      --v22;
      ++v23;
      if (v24 >= v21)
      {
        goto LABEL_80;
      }
    }

    if (v20 < 0 || (v38 = *(v18 + 160), v21 > v38))
    {
LABEL_41:
      Typed = CFAllocatorAllocateTyped(0, 2 * numChars, 0x1000040BDFB0063, 0);
      v40 = Typed;
      v41 = *(a3 + 136);
      if (v41)
      {
        memmove(Typed, (v41 + 2 * *(a3 + 152) + 2 * v20), 2 * numChars);
      }

      else
      {
        v44 = *(a3 + 168);
        if (v20 < v44 || (v45 = *(a3 + 176), v46 = v45 <= v20, v47 = v45 - v20, v46))
        {
          if (v21 <= v44 || v21 >= *(a3 + 176))
          {
            v49 = Typed;
            v50 = numChars;
          }

          else
          {
            v50 = v44 - v20;
            memmove(&Typed[v44 - v20], a3, 2 * (v21 - v44));
            v49 = v40;
          }
        }

        else
        {
          if (numChars >= v47)
          {
            v48 = v47;
          }

          else
          {
            v48 = numChars;
          }

          memmove(Typed, (a3 + 2 * (v20 - v44)), 2 * v48);
          v49 = &v40[v48];
          v20 += v48;
          v50 = numChars - v48;
        }

        if (v50 >= 1)
        {
          v51 = *(a3 + 144);
          v52.location = *(a3 + 152) + v20;
          if (v51)
          {
            v53 = (v51 + v52.location);
            do
            {
              v54 = *v53++;
              *v49++ = v54;
              --v50;
            }

            while (v50);
          }

          else
          {
            v52.length = v50;
            CFStringGetCharacters(*(a3 + 128), v52, v49);
          }
        }
      }

      v42 = 1;
    }

    else
    {
      v43 = *(v18 + 136);
      if (v43)
      {
        v42 = 0;
        v40 = (v43 + 2 * *(v18 + 152) + 2 * v20);
      }

      else
      {
        if (numChars > 64)
        {
          goto LABEL_41;
        }

        if (v21 > *(v18 + 176) || (v55 = *(v18 + 168), v20 < v55))
        {
          v56 = v20 + 64;
          if (v20 + 64 >= v38)
          {
            v56 = *(v18 + 160);
          }

          *(v18 + 168) = v20;
          *(v18 + 176) = v56;
          v57 = *(v18 + 144);
          v58.location = *(v18 + 152) + v20;
          v58.length = v56 - v20;
          if (v57)
          {
            if (v58.length)
            {
              v59 = (v57 + v58.location);
              v60 = v18;
              do
              {
                v61 = *v59++;
                *v60++ = v61;
                --v58.length;
              }

              while (v58.length);
            }

            v55 = v20;
          }

          else
          {
            CFStringGetCharacters(*(v18 + 128), v58, v18);
            v18 = a3;
            v55 = *(a3 + 168);
          }
        }

        v42 = 0;
        v40 = (v18 + 2 * (v20 - v55));
      }
    }

    v62 = CFStringCreateWithCharactersNoCopy(0, v40, numChars, &__kCFAllocatorNull);
    if (!v62)
    {
      if (v42)
      {
        CFAllocatorDeallocate(0, v40);
      }

LABEL_81:
      values.location = 0;
      values.length = 0;
      v186.length = a5;
      v186.location = a4;
      v9 = CFAttributedStringGetAttributeAndLongestEffectiveRange(a2, loc, @"NSWritingDirection", v186, &values);
      v66 = 0;
      v67 = values.length + values.location;
      if (v17 < values.length + values.location)
      {
        v67 = v17;
      }

      numChars = v67 - loc;
      goto LABEL_84;
    }

    v63 = v62;
    v64 = CFURLCreateWithString(0, v62, 0);
    v65 = v64;
    if (v64)
    {
      CFRelease(v64);
    }

    CFRelease(v63);
    if (v42)
    {
      CFAllocatorDeallocate(0, v40);
    }

    if (!v65)
    {
      goto LABEL_81;
    }

LABEL_80:
    valuePtr = 8;
    values.location = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
    v66 = 1;
    v9 = CFArrayCreate(0, &values, 1, &kCFTypeArrayCallBacks);
    CFRelease(values.location);
    if (!v9)
    {
      goto LABEL_81;
    }

LABEL_84:
    v11 = inRange_12;
    v68 = v162;
    v13 = ptr;
    v161 = v66;
    if (inRange_12 + 2 > v162)
    {
      v69 = CFAllocatorAllocateTyped(0, 16 * v162, 0x10040436913F5, 0);
      memcpy(v69, ptr, 8 * v162);
      v70 = CFAllocatorAllocateTyped(0, 8 * v162, 0x100004052888210, 0);
      memcpy(v70, v14, 4 * v162);
      if (v157)
      {
        CFAllocatorDeallocate(0, ptr);
        CFAllocatorDeallocate(0, v14);
      }

      v157 = 1;
      v14 = v70;
      v68 = (2 * v162);
      v13 = v69;
      v11 = inRange_12;
    }

    v162 = v68;
    if (!v9)
    {
      v10 = v161;
      if (v12 < 1)
      {
        v87 = loc;
      }

      else
      {
        v88 = CFAllocatorAllocateTyped(0, 10, 0x1000040BDFB0063, 0);
        for (i = 0; i != v12; ++i)
        {
          v90 = *(v176 + i);
          if (v90 > 8)
          {
            v91 = 0;
          }

          else
          {
            v91 = *&aHI[2 * v90 + 4];
          }

          *(v88 + 2 * i) = v91;
          *(v176 + i) = -1;
        }

        v92 = (v88 + 2 * v12);
        v12 = 0;
        v87 = loc;
LABEL_130:
        *v92 = 0;
        *(v13 + v11) = v88;
        *&v14[4 * v11++] = v87 - a4;
      }

      goto LABEL_133;
    }

    Count = CFArrayGetCount(v9);
    if (Count < 1)
    {
      v87 = loc;
      v10 = v161;
      goto LABEL_133;
    }

    v72 = Count;
    ptra = v13;
    v155 = v14;
    v73 = 0;
    v74 = 0;
    v75 = 0;
    v76 = 0;
    while (2)
    {
      LODWORD(values.location) = 0;
      ValueAtIndex = CFArrayGetValueAtIndex(v9, v73);
      CFNumberGetValue(ValueAtIndex, kCFNumberIntType, &values);
      location = values.location;
      if (LODWORD(values.location) == LODWORD(v178[0]))
      {
        v79 = 0;
        v80 = 1;
LABEL_97:
        if (LODWORD(values.location) == *(v176 + v79))
        {
          if (v12 >= 1)
          {
            for (j = 0; j < v12; ++j)
            {
              v83 = *(v176 + j);
              if (location != v83)
              {
                *(v174 + v76++) = v83;
                *(v176 + j) = -1;
                --v12;
              }
            }
          }

          goto LABEL_111;
        }
      }

      else
      {
        v79 = 0;
        while (v79 != 3)
        {
          v81 = *(v178 + ++v79);
          if (LODWORD(values.location) == v81)
          {
            v80 = (v79 - 1) < 3;
            goto LABEL_97;
          }
        }

        v80 = 0;
      }

      if (!v74)
      {
        v84 = CFAllocatorAllocateTyped(0, 10, 0x1000040BDFB0063, 0);
        v74 = v84;
        v85 = values.location;
        v86 = LODWORD(values.location) > 9 ? 0 : *&aFG[2 * LODWORD(values.location)];
        *(v84 + 2 * v75++) = v86;
        *(v176 + v12++) = v85;
        if (!v80)
        {
          *(v178 + v166++) = v85;
        }
      }

LABEL_111:
      if (++v73 != v72)
      {
        continue;
      }

      break;
    }

    if (v74)
    {
      *(v74 + 2 * v75) = 0;
      ptra[inRange_12] = v74;
      v87 = loc;
      *&v155[4 * inRange_12] = loc - a4;
      v11 = inRange_12 + 1;
    }

    else
    {
      v11 = inRange_12;
      v87 = loc;
    }

    v10 = v161;
    if (v76 >= 1)
    {
      v88 = CFAllocatorAllocateTyped(0, 10, 0x1000040BDFB0063, 0);
      for (k = 0; k != v76; ++k)
      {
        v94 = *(v174 + k);
        if (v94 > 8)
        {
          v95 = 0;
        }

        else
        {
          v95 = *&aHI[2 * v94 + 4];
        }

        *(v88 + 2 * k) = v95;
      }

      v92 = (v88 + 2 * v76);
      v14 = v155;
      v13 = ptra;
      goto LABEL_130;
    }

    v14 = v155;
    v13 = ptra;
LABEL_133:
    v15 = numChars + v87;
  }

  while (v15 < v156);
  v96 = v10 ^ 1;
  if (!v9)
  {
    v96 = 1;
  }

  if ((v96 & 1) == 0)
  {
    CFRelease(v9);
  }

  if (v12 < 1)
  {
    v98 = 0;
    v8 = a5;
  }

  else
  {
    v97 = CFAllocatorAllocateTyped(0, 10, 0x1000040BDFB0063, 0);
    v98 = v97;
    for (m = 0; m != v12; ++m)
    {
      v100 = *(v176 + m);
      if (v100 > 8)
      {
        v101 = 0;
      }

      else
      {
        v101 = *&aHI[2 * v100 + 4];
      }

      *(v97 + 2 * m) = v101;
    }

    *(v97 + 2 * v12) = 0;
    ubidi_setContext();
    v102 = code;
    if (code >= U_ILLEGAL_ARGUMENT_ERROR)
    {
      u_errorName(code);
      CFLog(3, @"ubidi_setContext() failed with errorCode: %d -- %s", v103, v104, v105, v106, v107, v108, v102);
      CFAllocatorDeallocate(0, v98);
      goto LABEL_197;
    }

    v8 = a5;
  }

LABEL_152:
  v109 = a4 - *(a3 + 152);
  if (v109 >= 0 && (v110 = *(a3 + 160), v109 + v8 <= v110))
  {
    if (*(a3 + 136))
    {
      v111 = v8;
      v116 = 0;
    }

    else
    {
      if (v8 > 64)
      {
        goto LABEL_154;
      }

      if (v109 + v8 > *(a3 + 176) || v109 < *(a3 + 168))
      {
        if (v109 + 64 < v110)
        {
          v110 = v109 + 64;
        }

        *(a3 + 168) = v109;
        *(a3 + 176) = v110;
        v123.length = v110 - v109;
        v124 = *(a3 + 144);
        if (v124)
        {
          if (v123.length)
          {
            v125 = (v124 + a4);
            v126 = a3;
            do
            {
              v127 = *v125++;
              *v126++ = v127;
              --v123.length;
            }

            while (v123.length);
          }
        }

        else
        {
          v123.location = a4;
          CFStringGetCharacters(*(a3 + 128), v123, a3);
          v132 = *(a3 + 168);
        }
      }

      v111 = v8;
      v116 = 0;
    }
  }

  else
  {
LABEL_154:
    v111 = v8;
    v112 = 2 * v8;
    v113 = CFAllocatorAllocateTyped(0, 2 * v8, 0x1000040BDFB0063, 0);
    v114 = v113;
    v115 = *(a3 + 136);
    if (v115)
    {
      memmove(v113, (v115 + 2 * *(a3 + 152) + 2 * v109), v112);
      goto LABEL_156;
    }

    v117 = *(a3 + 168);
    if (v109 < v117 || (v118 = *(a3 + 176), v46 = v118 <= v109, v119 = v118 - v109, v46))
    {
      if (v109 + v111 <= v117)
      {
        v122 = v111;
      }

      else
      {
        if (v109 + v111 >= *(a3 + 176))
        {
          v121 = v113;
          v122 = v111;
          goto LABEL_181;
        }

        v122 = v117 - v109;
        memmove(&v113[v117 - v109], a3, 2 * (v109 + v111 - v117));
      }

      v121 = v114;
      goto LABEL_181;
    }

    if (v111 >= v119)
    {
      v120 = v119;
    }

    else
    {
      v120 = v111;
    }

    memmove(v113, (a3 + 2 * (v109 - v117)), 2 * v120);
    v121 = &v114[v120];
    v109 += v120;
    v122 = v111 - v120;
LABEL_181:
    if (v122 >= 1)
    {
      v128 = *(a3 + 144);
      v129.location = *(a3 + 152) + v109;
      if (v128)
      {
        v130 = (v128 + v129.location);
        do
        {
          v131 = *v130++;
          *v121++ = v131;
          --v122;
        }

        while (v122);
        v116 = v114;
        goto LABEL_189;
      }

      v129.length = v122;
      CFStringGetCharacters(*(a3 + 128), v129, v121);
    }

LABEL_156:
    v116 = v114;
  }

LABEL_189:
  code = U_ZERO_ERROR;
  ubidi_setParaWithControls();
  if (v98)
  {
    CFAllocatorDeallocate(0, v98);
  }

  v133 = code;
  if (code < U_ILLEGAL_ARGUMENT_ERROR)
  {
    Levels = ubidi_getLevels();
    v141 = code;
    if (code < U_ILLEGAL_ARGUMENT_ERROR)
    {
      if (Levels)
      {
        memcpy(a7, Levels, v111);
      }

      if (a8)
      {
        ParaLevel = ubidi_getParaLevel();
        memset(a8, ParaLevel, v111);
      }
    }

    else
    {
      u_errorName(code);
      CFLog(3, @"ubidi_getLevels() failed with errorCode: %d -- %s", v142, v143, v144, v145, v146, v147, v141);
    }
  }

  else
  {
    u_errorName(code);
    CFLog(3, @"ubidi_setParaWithControls() failed with errorCode: %d -- %s", v134, v135, v136, v137, v138, v139, v133);
  }

  if (v116)
  {
    CFAllocatorDeallocate(0, v116);
  }

LABEL_197:
  if (v11 >= 1)
  {
    v148 = v11;
    v149 = v13;
    do
    {
      v150 = *v149++;
      CFAllocatorDeallocate(0, v150);
      --v148;
    }

    while (v148);
  }

  if (v157)
  {
    CFAllocatorDeallocate(0, v13);
    CFAllocatorDeallocate(0, v14);
  }

  v151 = *MEMORY[0x1E69E9840];
}

void CFAttributedStringSetAttribute(CFMutableAttributedStringRef aStr, CFRange range, CFStringRef attrName, CFTypeRef value)
{
  length = range.length;
  location = range.location;
  v22 = *MEMORY[0x1E69E9840];
  if (!CF_IS_OBJC(0x3EuLL, aStr))
  {
    if (!length)
    {
LABEL_23:
      v19 = *MEMORY[0x1E69E9840];
      return;
    }

    while (1)
    {
      v20 = 0;
      v21 = 0;
      ValueAtIndex = CFRunArrayGetValueAtIndex(*(aStr + 3), location, &v20, 0);
      v11 = ValueAtIndex;
      v13 = v20;
      v12 = v21;
      v14 = v20 == location && v21 <= length;
      if (!v14)
      {
        goto LABEL_14;
      }

      if (CFGetRetainCount(ValueAtIndex) != 1)
      {
        break;
      }

      CFDictionarySetValue(v11, attrName, value);
LABEL_22:
      location += v21;
      length -= v21;
      if (!length)
      {
        goto LABEL_23;
      }
    }

    v13 = v20;
    v12 = v21;
LABEL_14:
    v14 = v13 < location;
    v15 = v13 - location;
    if (v14)
    {
      v12 += v15;
      v20 = location;
      v21 = v12;
    }

    if (v12 > length)
    {
      v21 = length;
    }

    v16 = CFDictionaryGetValue(v11, attrName);
    if (!v16 || !CFEqual(v16, value))
    {
      v17 = CFGetAllocator(aStr);
      AttributesDictionary = __CFAttributedStringCreateAttributesDictionary(v17, v11);
      CFDictionarySetValue(AttributesDictionary, attrName, value);
      CFRunArrayReplace(*(aStr + 3), v20, v21, AttributesDictionary, v21);
      CFRelease(AttributesDictionary);
    }

    goto LABEL_22;
  }

  v9 = *MEMORY[0x1E69E9840];

  [(__CFAttributedString *)aStr addAttribute:attrName value:value range:location, length];
}

uint64_t __CFHyphenationGetHyphensForString(const __CFString *a1, CFIndex a2, uint64_t a3, uint64_t a4, uint64_t a5, CFIndex a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v43 = a4;
  v45 = *MEMORY[0x1E69E9840];
  if (a3 <= 200)
  {
    v13 = a3;
    v16 = MEMORY[0x1EEE9AC00](a1, a2);
    MEMORY[0x1EEE9AC00](v16, v17);
    v19 = __CFHyphenationCopyTrieInstance(v18);
    if (v19)
    {
      v20 = v19;
      v39 = &v36;
      v40 = a8;
      v37 = a5;
      v38 = a9;
      memset(v35, 0, 406);
      v46.location = a2;
      v46.length = v13;
      CFStringGetCharacters(a1, v46, &v35[1]);
      v35[0] = 46;
      v35[v13 + 1] = 46;
      v21 = v13 + 2;
      v35[v13 + 2] = 0;
      v42 = &v34;
      __memset_chk();
      if ((v13 & 0x8000000000000000) == 0)
      {
        v41 = v43 - 1;
        v22 = v42 + 2;
        v23 = v13;
        do
        {
          if (v21 >= 8)
          {
            v24 = v21 - 8;
          }

          else
          {
            v24 = 0;
          }

          if (v24 <= a6)
          {
            if (v43 && v21 <= v13 && *(v41 + v21))
            {
              *(v42 + v21) = 9;
            }

            v35[v21] = 0;
            if (v24 < v21)
            {
              do
              {
                v44 = 0;
                if (v24 > a6)
                {
                  break;
                }

                CFBurstTrieContainsCharacters(v20, &v35[v24], v21 - v24, &v44);
                v25 = v44;
                v26 = v44 + 0x10000000 < 0x10000001 || v21 < v24;
                if (!v26)
                {
                  v27 = v23;
                  do
                  {
                    if ((v25 & 7) > v22[v27])
                    {
                      v22[v27] = v25 & 7;
                    }

                    v25 >>= 3;
                    v28 = v27 + 2;
                    --v27;
                  }

                  while (v28 > v24);
                }

                ++v24;
              }

              while (v24 != v21);
            }
          }

          --v23;
          v26 = v21-- <= 2;
        }

        while (!v26);
      }

      CFBurstTrieRelease(v20);
      result = 0;
      v29 = v38;
      v30 = v13 + v37 - 2;
      v31 = v42 - 1;
      v32 = v40;
      while (v13 >= 4)
      {
        if ((v31[v13] & 1) != 0 && v13 - 1 <= a6)
        {
          *(v32 + 8 * result++) = v30;
        }

        --v30;
        --v13;
        if (result == v29)
        {
          result = v29;
          break;
        }
      }
    }

    else
    {
      result = -1;
    }
  }

  else
  {
    result = -1;
  }

  v33 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef CFAttributedStringGetAttributeAndLongestEffectiveRange(CFAttributedStringRef aStr, CFIndex loc, CFStringRef attrName, CFRange inRange, CFRange *longestEffectiveRange)
{
  length = inRange.length;
  location = inRange.location;
  v23 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x3EuLL, aStr))
  {
    v11 = *MEMORY[0x1E69E9840];

    return [(__CFAttributedString *)aStr attribute:attrName atIndex:loc longestEffectiveRange:longestEffectiveRange inRange:location, length];
  }

  else
  {
    Attribute = CFAttributedStringGetAttribute(aStr, loc, attrName, longestEffectiveRange);
    if (longestEffectiveRange)
    {
      v22 = *longestEffectiveRange;
      v14 = location + length;
      do
      {
        v15 = v22.length + v22.location;
        if (v22.length + v22.location >= v14)
        {
          break;
        }

        v16 = CFAttributedStringGetAttribute(aStr, v22.length + v22.location, attrName, &v22);
      }

      while (v16 == Attribute || v16 && Attribute && CFEqual(v16, Attribute));
      v22 = *longestEffectiveRange;
      do
      {
        v17 = v22.location;
        if (v22.location <= location)
        {
          break;
        }

        v18 = CFAttributedStringGetAttribute(aStr, v22.location - 1, attrName, &v22);
      }

      while (v18 == Attribute || v18 && Attribute && CFEqual(v18, Attribute));
      if (v17 <= location)
      {
        v19 = location;
      }

      else
      {
        v19 = v17;
      }

      if (v14 >= v15)
      {
        v20 = v15;
      }

      else
      {
        v20 = v14;
      }

      longestEffectiveRange->location = v19;
      longestEffectiveRange->length = v20 - v19;
    }

    v21 = *MEMORY[0x1E69E9840];
    return Attribute;
  }
}

uint64_t CFBurstTrieContainsCharacters(uint64_t a1, uint64_t a2, uint64_t a3, _DWORD *a4)
{
  v14 = *MEMORY[0x1E69E9840];
  if (a3 > 1023)
  {
    v10 = 0;
  }

  else
  {
    v8 = v13;
    if (a3 >= 86)
    {
      v8 = malloc_type_malloc((4 * a3) | 1, 0x100004077774924uLL);
    }

    v9 = burstTrieConvertCharactersToUTF8(a2, a3, v8);
    v8[v9] = 0;
    v10 = CFBurstTrieContainsUTF8String(a1, v8, v9, a4);
    if (v13 != v8)
    {
      free(v8);
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void *__CFHyphenationCopyTrieInstance(const __CFLocale *a1)
{
  v16 = *MEMORY[0x1E69E9840];
  Identifier = CFLocaleGetIdentifier(a1);
  os_unfair_lock_lock_with_options();
  v3 = __CFHyphenationCopyTrieInstance_gTries;
  if (!__CFHyphenationCopyTrieInstance_gTries)
  {
    v15 = *byte_1EF068040;
    v3 = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &v15);
    __CFHyphenationCopyTrieInstance_gTries = v3;
  }

  Value = CFDictionaryGetValue(v3, Identifier);
  if (Value)
  {
    v5 = Value;
    CFBurstTrieRetain(Value);
    goto LABEL_16;
  }

  v6 = CFLocaleGetValue(a1, @"kCFLocaleLanguageCodeKey");
  v7 = CFLocaleGetValue(a1, @"kCFLocaleCountryCodeKey");
  DictionaryPathForLanguageAndRegion = __CFHyphenationCreateDictionaryPathForLanguageAndRegion(v6, v7);
  if (!DictionaryPathForLanguageAndRegion)
  {
    goto LABEL_15;
  }

  v9 = DictionaryPathForLanguageAndRegion;
  v5 = CFBurstTrieCreateFromFile(DictionaryPathForLanguageAndRegion);
  CFRelease(v9);
  if (v7)
  {
    v10 = v5 == 0;
  }

  else
  {
    v10 = 0;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = __CFHyphenationCreateDictionaryPathForLanguageAndRegion(v6, 0);
  if (!v11)
  {
LABEL_15:
    v5 = 0;
    goto LABEL_16;
  }

  v12 = v11;
  v5 = CFBurstTrieCreateFromFile(v11);
  CFRelease(v12);
LABEL_13:
  if (v5)
  {
    CFDictionaryAddValue(__CFHyphenationCopyTrieInstance_gTries, Identifier, v5);
  }

LABEL_16:
  os_unfair_lock_unlock(&__CFHyphenationCopyTrieInstance_trieMutex);
  v13 = *MEMORY[0x1E69E9840];
  return v5;
}

CFTypeRef getTokenizersForLocale(void *key)
{
  cf[1] = *MEMORY[0x1E69E9840];
  cf[0] = 0;
  Mutable = gTokenizers;
  if (!gTokenizers)
  {
    Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    gTokenizers = Mutable;
  }

  if (!CFDictionaryGetValueIfPresent(Mutable, key, cf))
  {
    v3 = CFArrayCreateMutable(0, 3, 0);
    cf[0] = v3;
    if (v3)
    {
      CFDictionarySetValue(gTokenizers, key, v3);
      CFRelease(cf[0]);
    }
  }

  result = cf[0];
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean CFStringIsHyphenationAvailableForLocale(CFLocaleRef locale)
{
  if (locale)
  {
    locale = __CFHyphenationCopyTrieInstance(locale);
    if (locale)
    {
      CFBurstTrieRelease(locale);
      LOBYTE(locale) = 1;
    }
  }

  return locale;
}

void readDataSchedule(char *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    *(a4 + 16) = 1;
    if (CFReadStreamGetStatus(a1) == kCFStreamStatusOpen)
    {
      BytePtr = CFDataGetBytePtr(*a4);
      if (&BytePtr[CFDataGetLength(*a4)] <= *(a4 + 8))
      {
        v12 = 16;
      }

      else
      {
        v12 = 2;
      }

      CFReadStreamSignalEvent(a1, v12, 0, v7, v8, v9, v10, v11);
    }
  }
}

uint64_t parseDateTag(uint64_t a1, CFDateRef *a2)
{
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  if (v3 < v4 && *v3 == 45)
  {
    v5 = 0;
    *(a1 + 8) = ++v3;
  }

  else
  {
    v5 = 1;
  }

  if (v3 >= v4)
  {
    goto LABEL_38;
  }

  v6 = 0;
  v7 = 0;
  while (1)
  {
    v8 = v3[v6];
    if ((v8 - 48) > 9)
    {
      break;
    }

    v7 = v8 + 10 * v7 - 48;
    *(a1 + 8) = &v3[++v6];
    if (v4 - v3 == v6)
    {
      goto LABEL_38;
    }
  }

  if (v8 != 45)
  {
    goto LABEL_38;
  }

  v9 = &v3[v6 + 1];
  *(a1 + 8) = v9;
  v10 = &v3[v6 + 3];
  if (v10 >= v4)
  {
    goto LABEL_38;
  }

  v11 = *v9;
  v12 = v3[v6 + 2];
  *(a1 + 8) = v10;
  if ((v11 - 48) > 9)
  {
    goto LABEL_38;
  }

  if ((v12 - 48) > 9)
  {
    goto LABEL_38;
  }

  if (*v10 != 45)
  {
    goto LABEL_38;
  }

  v13 = &v3[v6 + 4];
  *(a1 + 8) = v13;
  v14 = &v3[v6 + 6];
  if (v14 >= v4)
  {
    goto LABEL_38;
  }

  v15 = *v13;
  v16 = v3[v6 + 5];
  *(a1 + 8) = v14;
  if ((v15 - 48) > 9)
  {
    goto LABEL_38;
  }

  if ((v16 - 48) > 9)
  {
    goto LABEL_38;
  }

  if (*v14 != 84)
  {
    goto LABEL_38;
  }

  v17 = &v3[v6 + 7];
  *(a1 + 8) = v17;
  v18 = &v3[v6 + 9];
  if (v18 >= v4)
  {
    goto LABEL_38;
  }

  v19 = *v17;
  v20 = v3[v6 + 8];
  *(a1 + 8) = v18;
  if ((v19 - 48) > 9)
  {
    goto LABEL_38;
  }

  if ((v20 - 48) > 9)
  {
    goto LABEL_38;
  }

  if (*v18 != 58)
  {
    goto LABEL_38;
  }

  v21 = &v3[v6 + 10];
  *(a1 + 8) = v21;
  v22 = &v3[v6 + 12];
  if (v22 >= v4)
  {
    goto LABEL_38;
  }

  v23 = *v21;
  v24 = v3[v6 + 11];
  *(a1 + 8) = v22;
  if ((v23 - 48) > 9)
  {
    goto LABEL_38;
  }

  if ((v24 - 48) > 9)
  {
    goto LABEL_38;
  }

  if (*v22 != 58)
  {
    goto LABEL_38;
  }

  v25 = &v3[v6 + 13];
  *(a1 + 8) = v25;
  v26 = &v3[v6 + 15];
  if (v26 >= v4)
  {
    goto LABEL_38;
  }

  v27 = *v25;
  v28 = v3[v6 + 14];
  *(a1 + 8) = v26;
  if ((v27 - 48) > 9)
  {
    goto LABEL_38;
  }

  if ((v28 - 48) > 9)
  {
    goto LABEL_38;
  }

  if (*v26 != 90)
  {
    goto LABEL_38;
  }

  *(a1 + 8) = &v3[v6 + 16];
  v42 = v7;
  v43 = v5;
  v37 = v15;
  v38 = v11;
  v40 = v16;
  v41 = v12;
  v36 = v19;
  v39 = v20;
  if (checkForCloseTag(a1, "date", 4uLL))
  {
    if (v43)
    {
      v29 = v42;
    }

    else
    {
      v29 = -v42;
    }

    *&v44.year = (((v24 + 10 * v23 - 528) << 56) + ((v39 + 10 * v36 - 528) << 48) + ((v40 + 10 * v37 - 528) << 40) + ((v41 + 10 * v38 - 528) << 32)) | v29;
    v44.second = (v28 + 10 * v27 - 528);
    AbsoluteTime = CFGregorianDateGetAbsoluteTime(v44, 0);
    v31 = 0;
    if (!*(a1 + 80))
    {
      v31 = CFDateCreate(*(a1 + 32), AbsoluteTime);
    }

    *a2 = v31;
    return 1;
  }

  else
  {
LABEL_38:
    v33 = lineNumber(a1);
    Error = __CFPropertyListCreateError(3840, @"Could not interpret <date> at line %u", v33);
    result = 0;
    *(a1 + 24) = Error;
  }

  return result;
}

uint64_t burstTrieConvertCharactersToUTF8(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 >= 1)
  {
    v3 = result;
    v4 = 0;
    v5 = 0;
    LODWORD(result) = 0;
    while (1)
    {
      v6 = *(v3 + 2 * v4);
      if ((v6 & 0xFC00) == 0xD800)
      {
        v7 = v5 + 1;
        if (v7 >= a2 || (v8 = *(v3 + 2 * v7), (v8 & 0xFC00) != 0xDC00))
        {
LABEL_11:
          *(a3 + result) = (v6 >> 12) | 0xE0;
          v10 = result + 2;
          *(a3 + (result + 1)) = (v6 >> 6) & 0x3F | 0x80;
          v11 = v6 & 0x3F | 0x80;
          v12 = 3;
          goto LABEL_12;
        }

        v9 = v8 + (v6 << 10) - 56613888;
        *(a3 + result) = (v9 >> 18) - 16;
        *(a3 + (result + 1)) = (v9 >> 12) & 0x3F | 0x80;
        v10 = result + 3;
        *(a3 + (result + 2)) = (v9 >> 6) & 0x3F | 0x80;
        v11 = v8 & 0x3F | 0x80;
        v12 = 4;
        v5 = v7;
      }

      else if (v6 > 0x7F)
      {
        if (v6 > 0x7FF)
        {
          goto LABEL_11;
        }

        v10 = result + 1;
        *(a3 + result) = (v6 >> 6) | 0xC0;
        v11 = v6 & 0x3F | 0x80;
        v12 = 2;
      }

      else
      {
        v11 = *(v3 + 2 * v4);
        v12 = 1;
        v10 = result;
      }

LABEL_12:
      result = (result + v12);
      *(a3 + v10) = v11;
      v4 = ++v5;
      if (v5 >= a2)
      {
        goto LABEL_15;
      }
    }
  }

  result = 0;
LABEL_15:
  *(a3 + result) = 0;
  return result;
}

CFStringRef __CFHyphenationCreateDictionaryPathForLanguageAndRegion(const __CFString *a1, unint64_t a2)
{
  if (!a1)
  {
    return 0;
  }

  v4 = a2 | CFStringCompare(a1, @"en", 0) ? a2 : @"US";
  Mutable = CFArrayCreateMutable(0, 10, &kCFTypeArrayCallBacks);
  if (!Mutable)
  {
    return 0;
  }

  v6 = Mutable;
  LinguisticDataPath = _CFHyphenationGetLinguisticDataPath();
  CFArrayAppendValue(v6, LinguisticDataPath);
  CFArrayAppendValue(v6, a1);
  if (v4)
  {
    CFArrayAppendValue(v6, v4);
  }

  CFArrayAppendValue(v6, @"hyphenation.dat");
  v8 = CFStringCreateByCombiningStrings(0, v6, @"/");
  CFRelease(v6);
  return v8;
}

uint64_t _CFHyphenationGetLinguisticDataPath()
{
  result = _CFCustomHyphenationLinguisticDataPath;
  if (!_CFCustomHyphenationLinguisticDataPath)
  {
    if (_CFHyphenationGetLinguisticDataPath_once_token != -1)
    {
      _CFHyphenationGetLinguisticDataPath_cold_1();
    }

    return _CFDefaultHyphenationLinguisticDataPath;
  }

  return result;
}

uint64_t _CFBigNumInitWithInt64(uint64_t result, unint64_t a2)
{
  *result = 0;
  *(result + 8) = 0;
  *(result + 16) = 0;
  if ((a2 & 0x8000000000000000) != 0)
  {
    *(result + 20) |= 0xFFu;
    a2 = -a2;
  }

  *result = a2 % 0xDE0B6B3A7640000 % 0x3B9ACA00;
  *(result + 4) = a2 % 0xDE0B6B3A7640000 / 0x3B9ACA00;
  *(result + 8) = a2 / 0xDE0B6B3A7640000;
  return result;
}

CFDictionaryRef CFAttributedStringGetAttributesAndLongestEffectiveRange(CFAttributedStringRef aStr, CFIndex loc, CFRange inRange, CFRange *longestEffectiveRange)
{
  length = inRange.length;
  location = inRange.location;
  v21 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x3EuLL, aStr))
  {
    v9 = *MEMORY[0x1E69E9840];

    return [(__CFAttributedString *)aStr attributesAtIndex:loc longestEffectiveRange:longestEffectiveRange inRange:location, length];
  }

  else
  {
    Attributes = CFAttributedStringGetAttributes(aStr, loc, longestEffectiveRange);
    if (longestEffectiveRange)
    {
      v20 = *longestEffectiveRange;
      v12 = location + length;
      do
      {
        v13 = v20.length + v20.location;
        if (v20.length + v20.location >= v12)
        {
          break;
        }

        v14 = CFAttributedStringGetAttributes(aStr, v20.length + v20.location, &v20);
      }

      while (CFEqual(v14, Attributes));
      v20 = *longestEffectiveRange;
      do
      {
        v15 = v20.location;
        if (v20.location <= location)
        {
          break;
        }

        v16 = CFAttributedStringGetAttributes(aStr, v20.location - 1, &v20);
      }

      while (CFEqual(v16, Attributes));
      if (v15 <= location)
      {
        v17 = location;
      }

      else
      {
        v17 = v15;
      }

      if (v12 >= v13)
      {
        v18 = v13;
      }

      else
      {
        v18 = v12;
      }

      longestEffectiveRange->location = v17;
      longestEffectiveRange->length = v18 - v17;
    }

    v19 = *MEMORY[0x1E69E9840];
    return Attributes;
  }
}

void *CFBurstTrieCreateFromFile(const __CFString *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(&v10, 0, sizeof(v10));
  if (CFStringGetCString(a1, buffer, 1024, 0x8000100u))
  {
    if (!stat(buffer, &v10))
    {
      v4 = open(buffer, 0, 0);
      if ((v4 & 0x80000000) == 0)
      {
        v5 = v4;
        v6 = mmap(0, v10.st_size, 1, 1, v4, 0);
        v7 = *v6;
        if (*v6 == 14531089 || v7 == -889275714)
        {
          v1 = malloc_type_calloc(1uLL, 0x830uLL, 0x1010040873DE71CuLL);
          *(v1 + 257) = v6;
          *(v1 + 516) = v10.st_size;
        }

        else
        {
          v1 = 0;
          if (v7 != -1161889074)
          {
LABEL_15:
            close(v5);
            goto LABEL_4;
          }

          v1 = malloc_type_calloc(1uLL, 0x830uLL, 0x1010040873DE71CuLL);
          *(v1 + 257) = v6;
          *(v1 + 516) = v10.st_size;
          *(v1 + 517) = v6[1];
        }

        *(v1 + 518) = v6[4];
        *(v1 + 519) = v6[2];
        atomic_store(1u, v1 + 521);
        *(v1 + 2088) = 1;
        goto LABEL_15;
      }
    }
  }

  v1 = 0;
LABEL_4:
  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

void boundPairWriteUnschedule(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v4 = *(a4 + 52);
    v5 = __OFSUB__(v4, 1);
    v6 = v4 - 1;
    if (v6 < 0 == v5)
    {
      *(a4 + 52) = v6;
    }
  }
}

uint64_t _CFAttributedStringCheckAndReplaceAttributed(uint64_t a1, CFIndex a2, CFIndex a3, const __CFAttributedString *a4)
{
  Length = CFStringGetLength(*(a1 + 16));
  if (a2 > Length || a2 + a3 > Length)
  {
    return 3;
  }

  v11 = atomic_load((a1 + 8));
  if (v11)
  {
    return 1;
  }

  v12.location = a2;
  v12.length = a3;
  if (a4)
  {
    CFAttributedStringReplaceAttributedString(a1, v12, a4);
  }

  else
  {
    CFAttributedStringReplaceString(a1, v12, &stru_1EF068AA8);
  }

  return 0;
}

void CFAttributedStringReplaceAttributedString(CFMutableAttributedStringRef aStr, CFRange range, CFAttributedStringRef replacement)
{
  length = range.length;
  location = range.location;
  v16 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x3EuLL, aStr))
  {
    v7 = *MEMORY[0x1E69E9840];

    [(__CFAttributedString *)aStr replaceCharactersInRange:location withAttributedString:length, replacement];
  }

  else
  {
    if (CF_IS_OBJC(0x3EuLL, replacement))
    {
      v8 = [(__CFAttributedString *)replacement string];
    }

    else
    {
      v8 = *(replacement + 2);
    }

    v9 = CFStringGetLength(v8);
    if (v9 >= 1)
    {
      v10 = CFGetAllocator(aStr);
      v11 = 0;
      effectiveRange.location = 0;
      effectiveRange.length = 0;
      do
      {
        Attributes = CFAttributedStringGetAttributes(replacement, v11, &effectiveRange);
        AttributesDictionary = __CFAttributedStringCreateAttributesDictionary(v10, Attributes);
        CFRunArrayInsert(*(aStr + 3), effectiveRange.location + location, effectiveRange.length, AttributesDictionary);
        CFRelease(AttributesDictionary);
        v11 = effectiveRange.location + effectiveRange.length;
        effectiveRange.location = v11;
      }

      while (v11 < v9);
    }

    if (length >= 1)
    {
      CFRunArrayDelete(*(aStr + 3), v9 + location, length);
    }

    v18.location = location;
    v18.length = length;
    CFStringReplace(*(aStr + 2), v18, v8);
    v14 = *MEMORY[0x1E69E9840];
  }
}

void *setupScheduledStreamCloseBlock(void *result, CFTypeRef cf, CFTypeRef a3, CFTypeRef a4)
{
  v7 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *v7 = cf;
  if (a3)
  {
    result = CFRetain(a3);
  }

  v7[1] = a3;
  if (a4)
  {
    result = CFRetain(a4);
  }

  v7[2] = a4;
  return result;
}

void *__CFNumberCreateFormattingDescriptionAsFloat64(const __CFAllocator *a1, CFNumberRef number)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  valuePtr[0] = 0.0;
  CFNumberGetValue(number, kCFNumberFloat64Type, valuePtr);
  if (fabs(valuePtr[0]) == INFINITY)
  {
    if (valuePtr[0] <= 0.0)
    {
      v3 = @"-infinity";
    }

    else
    {
      v3 = @"+infinity";
    }
  }

  else
  {
    if (valuePtr[0] != 0.0)
    {
      result = CFStringCreateWithFormat(a1, 0, @"%.*g", 17, *&valuePtr[0]);
      goto LABEL_8;
    }

    v3 = @"0.0";
  }

  result = CFRetain(v3);
LABEL_8:
  v5 = *MEMORY[0x1E69E9840];
  return result;
}

void __initDayChangedNotification()
{
  if (__initDayChangedNotification_onceToken != -1)
  {
    __initDayChangedNotification_cold_1();
  }
}

void CFRunLoopAddSource_cold_1(uint64_t a1)
{
  if (_MergedGlobals_1)
  {
    v1 = _MergedGlobals_1 == a1;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && qword_1ED40BDD8 != -1)
  {
    dispatch_once(&qword_1ED40BDD8, &__block_literal_global_56);
  }
}

uint64_t _CFAttributedStringCheckAndSetAttributes(uint64_t a1, CFIndex a2, CFIndex a3, const __CFDictionary *a4, Boolean a5)
{
  Length = CFStringGetLength(*(a1 + 16));
  if (a2 > Length || a2 + a3 > Length)
  {
    return 3;
  }

  v13 = atomic_load((a1 + 8));
  if (v13)
  {
    return 1;
  }

  v14.location = a2;
  v14.length = a3;
  CFAttributedStringSetAttributes(a1, v14, a4, a5);
  return 0;
}

void ____initDayChangedNotification_block_invoke()
{
  v0 = qos_class_main();
  global_queue = dispatch_get_global_queue(v0, 2uLL);
  __CFMidnightTimer = dispatch_source_create(MEMORY[0x1E69E9710], 0, 0, global_queue);
  dispatch_source_set_event_handler(__CFMidnightTimer, &__block_literal_global_3);
  __postAndResetMidnight(0, 0);
  v2 = __CFMidnightTimer;

  dispatch_resume(v2);
}

void __postAndResetMidnight(int a1, int a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v11.tv_sec = 0;
  *&v11.tv_usec = 0;
  memset(&v10, 0, sizeof(v10));
  gettimeofday(&v11, 0);
  localtime_r(&v11.tv_sec, &v10);
  v4 = (v10.tm_gmtoff + v11.tv_sec) / 86400;
  if (a1 && v4 < __CFLastLocalMidnightDay || a2 && v4 > __CFLastLocalMidnightDay)
  {
    LocalCenter = CFNotificationCenterGetLocalCenter();
    +[NSLocale _resetCurrent];
    CFNotificationCenterPostNotification(LocalCenter, @"NSCalendarDayChangedNotification", 0, 0, 1u);
  }

  gettimeofday(&v11, 0);
  localtime_r(&v11.tv_sec, &v10);
  __CFLastLocalMidnightDay = (v11.tv_sec + v10.tm_gmtoff) / 86400;
  v9.tv_sec = 86400 * __CFLastLocalMidnightDay - v10.tm_gmtoff + 86400;
  v9.tv_nsec = 0;
  v6 = __CFMidnightTimer;
  v7 = dispatch_walltime(&v9, 0);
  dispatch_source_set_timer(v6, v7, 0xFFFFFFFFFFFFFFFFLL, 0xB2D05E00uLL);
  v8 = *MEMORY[0x1E69E9840];
}

void _CFRunLoopRunSpecificWithOptions_cold_1(uint64_t a1)
{
  if (_MergedGlobals_1)
  {
    v1 = _MergedGlobals_1 == a1;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && qword_1ED40BDD8 != -1)
  {
    dispatch_once(&qword_1ED40BDD8, &__block_literal_global_56);
  }
}

void CFXNotificationRegistrarRemoveRemoteToken(uint64_t a1, const void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  memset(v7, 0, sizeof(v7));
  os_unfair_lock_lock((a1 + 16));
  v4 = *(a1 + 88);
  if (v4)
  {
    value = 0;
    if (CFDictionaryGetValueIfPresent(v4, a2, &value))
    {
      if (*(a1 + 156) > value && *(*(a1 + 144) + 56 * value + 40) == HIDWORD(value))
      {
        _CFXNotificationRegistrarInvalidateObserver(a1, value, -1, -1, v7);
        CFDictionaryRemoveValue(*(a1 + 88), a2);
      }
    }
  }

  os_unfair_lock_unlock((a1 + 16));
  _CFXNotificationDisposalListRelease(v7);
  v5 = *MEMORY[0x1E69E9840];
}

char *CFStorageGetValues(char *result, uint64_t a2, uint64_t a3, char *a4)
{
  v37[1] = *MEMORY[0x1E69E9840];
  if (a3 >= 1)
  {
    v5 = a3;
    v7 = result;
    while (1)
    {
      os_unfair_lock_lock_with_options();
      v9 = *(v7 + 13);
      v8 = *(v7 + 14);
      v10 = *(v7 + 15);
      os_unfair_lock_unlock(v7 + 32);
      if (!v9)
      {
        break;
      }

      if (!v9[3])
      {
        v11 = CFGetAllocator(v7);
        v12 = *v9;
        if (*v9 <= *MEMORY[0x1E69E9AC8] / 2)
        {
          v16 = v12 + 63;
          v19 = v12 < -63;
          v17 = v12 + 126;
          if (!v19)
          {
            v17 = v16;
          }

          v14 = v17 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = (v12 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
          if (*(v7 + 17) >= v13)
          {
            v14 = v13;
          }

          else
          {
            v14 = *(v7 + 17);
          }
        }

        if (v14 > v9[2])
        {
          pthread_mutex_lock((v7 + 32));
          if (v14 > v9[2])
          {
            v9[3] = __CFSafelyReallocateWithAllocatorTyped(v11, v9[3], v14, 864523722, 0, 0);
            if (__CFOASafe == 1)
            {
              __CFSetLastAllocationEventName();
            }

            v9[2] = v14;
          }

          pthread_mutex_unlock((v7 + 32));
        }
      }

      v15 = *(v7 + 6);
      v18 = a2 - v8;
      v19 = a2 < v8 || v10 + v8 <= a2;
      if (v19)
      {
        goto LABEL_28;
      }

      v20 = v15 == 0xFFFFFFFFLL ? *(v7 + 2) * v18 : v18 << v15;
      v21 = v9[3];
      if (!v21)
      {
        goto LABEL_28;
      }

      Byte = (v21 + v20);
LABEL_39:
      if (v5 >= v8 - a2 + v10)
      {
        v32 = v8 - a2 + v10;
      }

      else
      {
        v32 = v5;
      }

      if (v15 == 0xFFFFFFFFLL)
      {
        v33 = *(v7 + 2) * v32;
      }

      else
      {
        v33 = v32 << v15;
      }

      result = memmove(a4, Byte, v33);
      a4 += v33;
      a2 += v32;
      v19 = v5 <= v32;
      v5 -= v32;
      if (v19)
      {
        goto LABEL_47;
      }
    }

    v15 = *(v7 + 6);
LABEL_28:
    v36 = 0;
    v37[0] = 0;
    v35 = 0;
    if (v15 == 0xFFFFFFFFLL)
    {
      v23 = *(v7 + 2) * a2;
    }

    else
    {
      v23 = a2 << v15;
    }

    Byte = __CFStorageFindByte(v7, (v7 + 144), v23, 0, v37, &v35, 0);
    v24 = v37[0];
    v25 = v35;
    if (v37[0])
    {
      v26 = *v37[0];
      v27 = *(v7 + 6);
      if (v27 == -1)
      {
        v30 = *(v7 + 2);
        v28 = v35 / v30;
        v29 = v26 / v30;
      }

      else
      {
        v28 = v35 >> v27;
        v29 = v26 >> v27;
      }
    }

    else
    {
      v28 = 0;
      v29 = 0;
    }

    os_unfair_lock_lock_with_options();
    *(v7 + 13) = v24;
    *(v7 + 14) = v28;
    *(v7 + 15) = v29;
    os_unfair_lock_unlock(v7 + 32);
    v15 = *(v7 + 6);
    if (v15 == -1)
    {
      v31 = *(v7 + 2);
      v8 = v25 / v31;
      v10 = v36 / v31;
    }

    else
    {
      v8 = v25 >> v15;
      v10 = v36 >> v15;
    }

    goto LABEL_39;
  }

LABEL_47:
  v34 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef CFAttributedStringGetAttribute(CFAttributedStringRef aStr, CFIndex loc, CFStringRef attrName, CFRange *effectiveRange)
{
  if (CF_IS_OBJC(0x3EuLL, aStr))
  {

    return [(__CFAttributedString *)aStr attribute:attrName atIndex:loc effectiveRange:effectiveRange];
  }

  else
  {
    ValueAtIndex = CFRunArrayGetValueAtIndex(*(aStr + 3), loc, &effectiveRange->location, 0);

    return CFDictionaryGetValue(ValueAtIndex, attrName);
  }
}

CFIndex CFDictionaryGetCountOfKey(CFDictionaryRef theDict, const void *key)
{
  if (CF_IS_OBJC(0x12uLL, theDict))
  {

    return [(__CFDictionary *)theDict countForKey:key];
  }

  else
  {

    return CFBasicHashGetCountOfKey(theDict, key);
  }
}

BOOL CFDateComponentsIsValidDateInCalendar(void *a1, void *a2)
{
  if (!a1)
  {
    CFDateComponentsIsValidDateInCalendar_cold_2();
  }

  if (!a2)
  {
    CFDateComponentsIsValidDateInCalendar_cold_1();
  }

  v3 = a1[20];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL || v3 <= 0x3B9AC9FF)
  {
    Copy = _CFCalendarCreateCopy(&__kCFAllocatorSystemDefault, a2);
    if (v3 - 1 >= 0x7FFFFFFFFFFFFFFELL)
    {
      DateFromComponents = CFCalendarCreateDateFromComponents(&__kCFAllocatorSystemDefault, Copy, a1);
      if (DateFromComponents)
      {
        goto LABEL_9;
      }
    }

    else
    {
      a1[20] = 0;
      DateFromComponents = CFCalendarCreateDateFromComponents(&__kCFAllocatorSystemDefault, Copy, a1);
      a1[20] = v3;
      if (DateFromComponents)
      {
LABEL_9:
        DateComponentsFromDate = CFCalendarCreateDateComponentsFromDate(&__kCFAllocatorSystemDefault, Copy);
        v8 = DateComponentsFromDate;
        v9 = a1[4];
        if (v9 != 0x7FFFFFFFFFFFFFFFLL && DateComponentsFromDate[4] != v9)
        {
          goto LABEL_42;
        }

        v10 = a1[5];
        if (v10 != 0x7FFFFFFFFFFFFFFFLL && DateComponentsFromDate[5] != v10)
        {
          goto LABEL_42;
        }

        v11 = a1[6];
        if (v11 != 0x7FFFFFFFFFFFFFFFLL && DateComponentsFromDate[6] != v11)
        {
          goto LABEL_42;
        }

        v12 = a1[7];
        if (v12 != 0x7FFFFFFFFFFFFFFFLL && DateComponentsFromDate[7] != v12)
        {
          goto LABEL_42;
        }

        v13 = a1[8];
        if (v13 != 0x7FFFFFFFFFFFFFFFLL && DateComponentsFromDate[8] != v13)
        {
          goto LABEL_42;
        }

        v14 = a1[9];
        if (v14 != 0x7FFFFFFFFFFFFFFFLL && DateComponentsFromDate[9] != v14)
        {
          goto LABEL_42;
        }

        v15 = a1[10];
        if (v15 != 0x7FFFFFFFFFFFFFFFLL && DateComponentsFromDate[10] != v15)
        {
          goto LABEL_42;
        }

        v16 = a1[11];
        if (v16 != 0x7FFFFFFFFFFFFFFFLL && DateComponentsFromDate[11] != v16)
        {
          goto LABEL_42;
        }

        if (((v17 = a1[12], v17 == 0x7FFFFFFFFFFFFFFFLL) || DateComponentsFromDate[12] == v17) && ((v18 = a1[14], v18 == 0x7FFFFFFFFFFFFFFFLL) || DateComponentsFromDate[14] == v18) && ((v19 = a1[15], v19 == 0x7FFFFFFFFFFFFFFFLL) || DateComponentsFromDate[15] == v19) && ((v20 = a1[16], v20 == 0x7FFFFFFFFFFFFFFFLL) || DateComponentsFromDate[16] == v20) && ((v21 = a1[17], v21 == 0x7FFFFFFFFFFFFFFFLL) || DateComponentsFromDate[17] == v21) && ((v22 = a1[18], v22 == 0x7FFFFFFFFFFFFFFFLL) || DateComponentsFromDate[18] == v22) && ((v23 = a1[21], v23 == 0x7FFFFFFFFFFFFFFFLL) || DateComponentsFromDate[21] == v23))
        {
          v24 = a1[19];
          v25 = v24 == 0x7FFFFFFFFFFFFFFFLL || DateComponentsFromDate[19] == v24;
        }

        else
        {
LABEL_42:
          v25 = 0;
        }

        CFRelease(DateFromComponents);
        CFRelease(v8);
        goto LABEL_46;
      }
    }

    v25 = 1;
LABEL_46:
    CFRelease(Copy);
    return v25;
  }

  return 0;
}

id CFCalendarCreateDateFromComponents(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = [[NSDateComponents alloc] _initWithCFDateComponents:a3];
  v5 = [a2 dateFromComponents:v4];

  return v5;
}

uint64_t __CFArrayEqual(unint64_t *a1, unint64_t *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = a1[2];
  if (v4 != a2[2])
  {
    return 0;
  }

  v5 = atomic_load(a1 + 1);
  v6 = (v5 >> 2) & 3;
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = &kCFTypeArrayCallBacks;
    }

    else
    {
      v9 = atomic_load(a1 + 1);
      v10 = v9 & 3;
      v11 = v10 ? 0 : (a1 + 6);
      v7 = v10 == 2 ? (a1 + 6) : v11;
    }
  }

  else
  {
    v7 = &__kCFNullArrayCallBacks;
  }

  v12 = atomic_load(a2 + 1);
  v13 = (v12 >> 2) & 3;
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = &kCFTypeArrayCallBacks;
    }

    else
    {
      atomic_load(a2 + 1);
      v14 = (a2 + 6);
    }
  }

  else
  {
    v14 = &__kCFNullArrayCallBacks;
  }

  if (v7->equal != v14->equal)
  {
    return 0;
  }

  if (v4 < 1)
  {
    return 1;
  }

  v15 = 0;
  while (1)
  {
    atomic_load(a1 + 1);
    v16 = atomic_load(a1 + 1);
    if ((v16 & 3) != 0)
    {
      v17 = a1[5] + 8 * *a1[5] + 16;
    }

    else
    {
      v18 = atomic_load(a1 + 1);
      v19 = (~v18 & 0xC) != 0 ? 48 : 88;
      v17 = a1 + v19;
    }

    v20 = *(v17 + 8 * v15);
    atomic_load(a2 + 1);
    v21 = atomic_load(a2 + 1);
    if ((v21 & 3) != 0)
    {
      v22 = a2[5] + 8 * *a2[5] + 16;
    }

    else
    {
      v23 = atomic_load(a2 + 1);
      v24 = (~v23 & 0xC) != 0 ? 48 : 88;
      v22 = a2 + v24;
    }

    if (v20 != *(v22 + 8 * v15))
    {
      equal = v7->equal;
      if (!equal)
      {
        return 0;
      }

      result = equal();
      if (!result)
      {
        break;
      }
    }

    if (v4 == ++v15)
    {
      return 1;
    }
  }

  return result;
}

CFTypeRef CFCalendarCreateDateComponentsFromDate(uint64_t a1, void *a2)
{
  v2 = [objc_msgSend(a2 "components:"_dateComponents" fromDate:?")];

  return CFRetain(v2);
}

uint64_t CFBasicHashesAreEqual(uint64_t a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  Count = CFBasicHashGetCount(a1);
  if (Count == CFBasicHashGetCount(a2))
  {
    v5 = 1;
    if (Count)
    {
      v9 = 0;
      v10 = &v9;
      v11 = 0x2020000000;
      v12 = 1;
      v8[0] = MEMORY[0x1E69E9820];
      v8[1] = 3221225472;
      v8[2] = __CFBasicHashesAreEqual_block_invoke;
      v8[3] = &unk_1E6DD1440;
      v8[4] = &v9;
      v8[5] = a2;
      v8[6] = a1;
      CFBasicHashApply(a1, v8);
      v5 = *(v10 + 24);
      _Block_object_dispose(&v9, 8);
    }
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void sub_1831A1CA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

__CFArray *__CFArrayCreateMutableCopy0(__objc2_class **a1, uint64_t a2, unint64_t *a3)
{
  if (CF_IS_OBJC(0x13uLL, a3))
  {
    v6 = [a3 count];
  }

  else
  {
    v6 = a3[2];
  }

  if (CF_IS_OBJC(0x13uLL, a3))
  {
    goto LABEL_5;
  }

  v16 = atomic_load(a3 + 1);
  v17 = (v16 >> 2) & 3;
  if (v17)
  {
    if (v17 == 1)
    {
LABEL_5:
      v11 = &kCFTypeArrayCallBacks;
      goto LABEL_6;
    }

    v18 = atomic_load(a3 + 1);
    v19 = v18 & 3;
    if (v19 != 2 && v19)
    {
      v11 = 0;
    }

    else
    {
      v11 = (a3 + 6);
    }
  }

  else
  {
    v11 = &__kCFNullArrayCallBacks;
  }

LABEL_6:
  Init = __CFArrayCreateInit(a1, 2, a2, v11, v7, v8, v9, v10);
  v13 = Init;
  if (!a2)
  {
    _CFArraySetCapacity(Init, v6);
  }

  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      CFArrayAppendValue(v13, [a3 objectAtIndex:i]);
    }
  }

  return v13;
}

void _CFCharacterSetCompact(unint64_t *cf)
{
  v2 = atomic_load(cf + 1);
  if ((v2 & 0x70) == 0x30 && cf[3])
  {
    __CFCSetMakeCompact(cf);
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
            v7 = atomic_load(v6 + 1);
            if ((v7 & 0x70) == 0x30)
            {
              if (v6[3])
              {
                __CFCSetMakeCompact(v6);
              }
            }
          }
        }
      }
    }
  }
}

void boundPairReadFinalize(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    pthread_mutex_lock((a2 + 104));
    v3 = *(a2 + 48);
    *a2 = 1;
    *(a2 + 4) = 0;
    v4 = *(a2 + 16);
    if (v4)
    {
      CFRelease(v4);
      *(a2 + 16) = 0;
    }

    v5 = *(a2 + 40);
    if (v5)
    {
      CFRelease(v5);
      *(a2 + 40) = 0;
    }

    pthread_mutex_unlock((a2 + 104));
    if (v3)
    {

      boundPairCommonFinalize(a2);
    }
  }
}

void boundPairCommonFinalize(uint64_t a1)
{
  cbDestroy(*(a1 + 96));
  if (*(a1 + 8))
  {
    CFRunLoopSourceInvalidate(*(a1 + 56));
    CFRelease(*(a1 + 8));
    *(a1 + 8) = 0;
  }

  v2 = *(a1 + 56);
  if (v2)
  {
    CFRunLoopSourceInvalidate(v2);
    CFRelease(*(a1 + 56));
    *(a1 + 56) = 0;
  }

  pthread_mutex_destroy((a1 + 104));
  v3 = *(a1 + 88);

  CFAllocatorDeallocate(v3, a1);
}

void CFBundleGetPackageInfo(CFBundleRef bundle, UInt32 *packageType, UInt32 *packageCreator)
{
  v6 = CFBundleCopyBundleURL(bundle);
  InfoDictionary = CFBundleGetInfoDictionary(bundle);
  if (!_CFBundleGetPackageInfoInDirectoryWithInfoDictionary(v6, InfoDictionary, packageType, packageCreator))
  {
    if (packageType)
    {
      *packageType = 1112425548;
    }

    if (packageCreator)
    {
      *packageCreator = 1061109567;
    }
  }

  if (v6)
  {

    CFRelease(v6);
  }
}

uint64_t __CFBasicHashesAreEqual_block_invoke(void *a1, void *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v12 = 0u;
  result = a1[5];
  if (!*(result + 26))
  {
    v11 = xmmword_183447130;
    v12 = unk_183447140;
    goto LABEL_16;
  }

  v5 = a2[1];
  v6 = *(result + 18) & 3;
  if ((*(result + 18) & 0x8000) == 0)
  {
    if ((*(result + 18) & 3u) > 1)
    {
      if (v6 == 2)
      {
        ___CFBasicHashFindBucket_Double(result, v5, &v11);
      }

      else
      {
        ___CFBasicHashFindBucket_Exponential(result, v5, &v11);
      }

      goto LABEL_16;
    }

    if (v6 == 1)
    {
      ___CFBasicHashFindBucket_Linear(result, v5, &v11);
      goto LABEL_16;
    }

LABEL_24:
    __break(1u);
    return result;
  }

  if ((*(result + 18) & 3u) > 1)
  {
    if (v6 == 2)
    {
      ___CFBasicHashFindBucket_Double_Indirect(result, v5, &v11);
    }

    else
    {
      ___CFBasicHashFindBucket_Exponential_Indirect(result, v5, &v11);
    }

    goto LABEL_16;
  }

  if (v6 != 1)
  {
    goto LABEL_24;
  }

  ___CFBasicHashFindBucket_Linear_Indirect(result, v5, &v11);
LABEL_16:
  if (a2[3] == *(&v12 + 1) && ((v7 = a1[6], (*(v7 + 18) & 4) == 0) || (v8 = a2[2], v8 == v12) || (v9 = *(CFBasicHashCallBackPtrs[(*(v7 + 32) >> 39) & 0x1FLL] + 8 * ((*(v7 + 32) >> 34) & 0x1FLL))) != 0 && v9(v8, v12)))
  {
    result = 1;
  }

  else
  {
    result = 0;
    *(*(a1[4] + 8) + 24) = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t cbDestroy(void **a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = *a1;
  if (v2)
  {
    free(v2);
    v3 = 1;
  }

  else
  {
    v3 = 0;
  }

  free(a1);
  return v3;
}

uint64_t _CFBundleGetPackageInfoInDirectoryWithInfoDictionary(CFURLRef baseURL, const __CFDictionary *a2, int *a3, _DWORD *a4)
{
  usedBufLen[257] = *MEMORY[0x1E69E9840];
  v8 = CFURLCreateWithString(&__kCFAllocatorSystemDefault, @"Contents/PkgInfo", baseURL);
  v9 = _CFDataCreateFromURL(v8, 0);
  CFRelease(v8);
  if (v9 || (v10 = CFURLCreateWithString(&__kCFAllocatorSystemDefault, @"Support%20Files/PkgInfo", baseURL), v9 = _CFDataCreateFromURL(v10, 0), CFRelease(v10), v9) || (v11 = CFURLCreateWithString(&__kCFAllocatorSystemDefault, @"PkgInfo", baseURL), v9 = _CFDataCreateFromURL(v11, 0), CFRelease(v11), v9))
  {
    if (CFDataGetLength(v9) > 7)
    {
      BytePtr = CFDataGetBytePtr(v9);
      if (a3)
      {
        *a3 = bswap32(*BytePtr);
      }

      if (a4)
      {
        *a4 = bswap32(BytePtr[1]);
      }

      CFRelease(v9);
      LOBYTE(v18) = 1;
      LOBYTE(v16) = 1;
      v19 = 1;
      goto LABEL_34;
    }

    CFRelease(v9);
  }

  v12 = a2;
  if (a2 || (v12 = _CFBundleCopyInfoDictionaryInDirectory(&__kCFAllocatorSystemDefault, baseURL, 0)) != 0)
  {
    Value = CFDictionaryGetValue(v12, @"CFBundlePackageType");
    v14 = CFDictionaryGetValue(v12, @"CFBundleSignature");
    *buffer = 0;
    usedBufLen[0] = 0;
    if (Value && (v15 = CFGetTypeID(Value), v15 == CFStringGetTypeID()) && CFStringGetLength(Value) == 4)
    {
      v47.location = 0;
      v47.length = 4;
      v16 = 0;
      if (CFStringGetBytes(Value, v47, 0, 0, 0, buffer, 4, usedBufLen) == 4 && usedBufLen[0] == 4)
      {
        if (a3)
        {
          *a3 = bswap32(*buffer);
        }

        v16 = 1;
      }
    }

    else
    {
      v16 = 0;
    }

    if (v14 && (v20 = CFGetTypeID(v14), v20 == CFStringGetTypeID()) && CFStringGetLength(v14) == 4)
    {
      v48.location = 0;
      v48.length = 4;
      v18 = 0;
      if (CFStringGetBytes(v14, v48, 0, 0, 0, buffer, 4, usedBufLen) == 4)
      {
        v19 = v16;
        if (usedBufLen[0] == 4)
        {
          if (a4)
          {
            *a4 = bswap32(*buffer);
          }

          v18 = 1;
          v19 = 1;
        }

        goto LABEL_32;
      }
    }

    else
    {
      v18 = 0;
    }

    v19 = v16;
LABEL_32:
    if (a2)
    {
      if (v18)
      {
        goto LABEL_34;
      }

LABEL_35:
      if (v19)
      {
LABEL_41:
        if (a4 && (v18 & 1) == 0)
        {
          *a4 = 1061109567;
        }

        if (a3)
        {
          v21 = v16;
        }

        else
        {
          v21 = 1;
        }

        if (v21)
        {
          goto LABEL_107;
        }

        v22 = CFURLCopyAbsoluteURL(baseURL);
        v23 = CFURLCopyFileSystemPath(v22, kCFURLPOSIXPathStyle);
        CFRelease(v22);
        if (!v23)
        {
          goto LABEL_105;
        }

        Length = CFStringGetLength(v23);
        if (Length >= 1026)
        {
          v25 = 1026;
        }

        else
        {
          v25 = Length;
        }

        v49.location = 0;
        v49.length = v25;
        CFStringGetCharacters(v23, v49, usedBufLen);
        CFRelease(v23);
        v26 = _CFStartOfPathExtension(usedBufLen, v25);
        v27 = v25 - v26;
        v28 = (v25 - v26) & 0xFFFFFFFFFFFFFFFELL;
        switch(v28)
        {
          case 4uLL:
            if (*(usedBufLen + v26) != 46)
            {
              goto LABEL_105;
            }

            v29 = usedBufLen + 2 * v26;
            if (*(v29 + 1) != 97 || *(v29 + 2) != 112 || *(usedBufLen + v26 + 3) != 112)
            {
              goto LABEL_105;
            }

            if (v27 == 4)
            {
LABEL_60:
              v31 = 1095782476;
LABEL_106:
              *a3 = v31;
LABEL_107:
              v19 = 1;
              goto LABEL_108;
            }

            v30 = *(&usedBufLen[1] + v26);
            break;
          case 6uLL:
            if (*(usedBufLen + v26) != 46)
            {
              goto LABEL_105;
            }

            if (*(usedBufLen + v26 + 1) != 100)
            {
              goto LABEL_105;
            }

            v32 = usedBufLen + 2 * v26;
            if (*(v32 + 2) != 101)
            {
              goto LABEL_105;
            }

            if (*(v32 + 3) != 98)
            {
              goto LABEL_105;
            }

            v33 = usedBufLen + 2 * v26;
            if (*(v33 + 4) != 117 || *(v33 + 5) != 103)
            {
              goto LABEL_105;
            }

            if (v27 == 6)
            {
              goto LABEL_60;
            }

            v30 = *(&usedBufLen[1] + v26 + 2);
            break;
          case 8uLL:
            if (*(usedBufLen + v26) != 46)
            {
              goto LABEL_105;
            }

            if (*(usedBufLen + v26 + 1) == 112)
            {
              v34 = usedBufLen + 2 * v26;
              if (*(v34 + 2) == 114 && *(v34 + 3) == 111)
              {
                v35 = usedBufLen + 2 * v26;
                if (*(v35 + 4) == 102 && *(v35 + 5) == 105)
                {
                  v36 = usedBufLen + 2 * v26;
                  if (*(v36 + 6) == 108 && *(v36 + 7) == 101 && (v27 == 8 || *(&usedBufLen[2] + v26) == 47))
                  {
                    goto LABEL_60;
                  }
                }
              }
            }

            if (*(usedBufLen + v26 + 1) != 115 || *(usedBufLen + v26 + 2) != 101 || (v37 = usedBufLen + 2 * v26, *(v37 + 3) != 114) || *(v37 + 4) != 118 || (v38 = usedBufLen + 2 * v26, *(v38 + 5) != 105) || *(v38 + 6) != 99 || *(&usedBufLen[1] + v26 + 3) != 101)
            {
LABEL_105:
              v31 = 1112425548;
              goto LABEL_106;
            }

            if (v27 == 8)
            {
              goto LABEL_60;
            }

            v30 = *(&usedBufLen[2] + v26);
            break;
          default:
            if (v28 == 10 && *(usedBufLen + v26) == 46 && *(usedBufLen + v26 + 1) == 102)
            {
              v39 = usedBufLen + 2 * v26;
              if (*(v39 + 2) == 114 && *(v39 + 3) == 97)
              {
                v40 = usedBufLen + 2 * v26;
                if (*(v40 + 4) == 109 && *(v40 + 5) == 101)
                {
                  v41 = usedBufLen + 2 * v26;
                  if (*(v41 + 6) == 119 && *(v41 + 7) == 111)
                  {
                    v42 = usedBufLen + 2 * v26;
                    if (*(v42 + 8) == 114 && *(v42 + 9) == 107 && (v27 == 10 || *(&usedBufLen[2] + v26 + 2) == 47))
                    {
                      v31 = 1179473739;
                      goto LABEL_106;
                    }
                  }
                }
              }
            }

            goto LABEL_105;
        }

        if (v30 == 47)
        {
          goto LABEL_60;
        }

        goto LABEL_105;
      }

      goto LABEL_40;
    }

    CFRelease(v12);
    if (!v18)
    {
      goto LABEL_35;
    }

LABEL_34:
    if (v16)
    {
      goto LABEL_108;
    }

    goto LABEL_35;
  }

  LOBYTE(v16) = 0;
  LOBYTE(v18) = 0;
LABEL_40:
  if (_CFBundleURLLooksLikeBundle(baseURL))
  {
    goto LABEL_41;
  }

  v19 = 0;
LABEL_108:
  v43 = *MEMORY[0x1E69E9840];
  return v19;
}

void CFRunLoopWakeUp_cold_1(uint64_t a1)
{
  if (_MergedGlobals_1)
  {
    v1 = _MergedGlobals_1 == a1;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && qword_1ED40BDD8 != -1)
  {
    dispatch_once(&qword_1ED40BDD8, &__block_literal_global_56);
  }
}

void CFStringGetParagraphBounds(CFStringRef string, CFRange range, CFIndex *parBeginIndex, CFIndex *parEndIndex, CFIndex *contentsEndIndex)
{
  length = range.length;
  location = range.location;
  if (CF_IS_OBJC(7uLL, string))
  {

    [(__CFString *)string getParagraphStart:parBeginIndex end:parEndIndex contentsEnd:contentsEndIndex forRange:location, length];
  }

  else
  {

    __CFStringGetLineOrParagraphBounds(string, location, length, parBeginIndex, parEndIndex, contentsEndIndex, 0);
  }
}

void __CFStringGetLineOrParagraphBounds(CFStringRef theString, uint64_t a2, uint64_t a3, uint64_t *a4, unint64_t a5, uint64_t *a6, int a7)
{
  v102 = *MEMORY[0x1E69E9840];
  v101 = 0;
  v99 = 0u;
  v100 = 0u;
  v97 = 0u;
  *theStringa = 0u;
  v95 = 0u;
  v96 = 0u;
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  *buffer = 0u;
  v14 = atomic_load(&theString->info);
  v15 = v14 & 5;
  v16 = atomic_load(&theString->info);
  v17 = v16 & 0x60;
  if (v15 == 4)
  {
    p_data = &theString->data;
    if (v17)
    {
      v19 = *p_data;
    }

    else
    {
      v21 = atomic_load(&theString->info);
      v19 = &p_data[(v21 & 5) != 4];
    }

    length = *v19;
    if (!a4)
    {
      goto LABEL_94;
    }
  }

  else if ((v16 & 0x60) != 0)
  {
    length = theString->length;
    if (!a4)
    {
      goto LABEL_94;
    }
  }

  else
  {
    length = theString->data;
    if (!a4)
    {
      goto LABEL_94;
    }
  }

  if (!a2)
  {
    v23 = 0;
    goto LABEL_93;
  }

  theStringa[0] = theString;
  *(&v99 + 1) = 0;
  *&v100 = length;
  theStringa[1] = CFStringGetCharactersPtr(theString);
  if (theStringa[1])
  {
    goto LABEL_13;
  }

  v24 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v24 = __CFStringComputeEightBitStringEncoding();
  }

  if (v24 != 1536)
  {
    v25 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v25 = __CFStringComputeEightBitStringEncoding();
    }

    if (v25 != 1536)
    {
      goto LABEL_13;
    }
  }

  p_info = &theString->info;
  v27 = atomic_load(&theString->info);
  if ((v27 & 0x10) == 0 || (v28 = atomic_load(p_info), (v28 & 8) != 0))
  {
    v29 = atomic_load(p_info);
    v30 = &theString->data;
    if ((v29 & 0x60) != 0)
    {
      v31 = *v30;
    }

    else
    {
      v32 = atomic_load(&theString->info);
      v31 = &v30[(v32 & 5) != 4];
    }

    v33 = atomic_load(&theString->info);
    v22 = &v31[(v33 >> 2) & 1];
  }

  else
  {
LABEL_13:
    v22 = 0;
  }

  *(&v100 + 1) = 0;
  v101 = 0;
  *&v99 = v22;
  v89 = length;
  if ((a2 & 0x8000000000000000) == 0)
  {
    v34 = v100;
    if (v100 > a2)
    {
      if (theStringa[1])
      {
        v35 = 0;
        v36 = *(&theStringa[1]->isa + *(&v99 + 1) + a2);
      }

      else if (v22)
      {
        v35 = 0;
        v36 = v22[*(&v99 + 1) + a2];
      }

      else
      {
        v38 = a2 - 4;
        if (a2 < 4)
        {
          v38 = 0;
        }

        if (v38 + 64 < v100)
        {
          v34 = v38 + 64;
        }

        *(&v100 + 1) = v38;
        v101 = v34;
        v103.length = v34 - v38;
        v103.location = *(&v99 + 1) + v38;
        CFStringGetCharacters(theStringa[0], v103, buffer);
        v35 = *(&v100 + 1);
        v36 = buffer[a2 - *(&v100 + 1)];
      }

      v37 = a2 - 1;
      if (v36 != 10)
      {
        goto LABEL_56;
      }

      v39 = v100;
      if (v100 < a2)
      {
        goto LABEL_56;
      }

      if (theStringa[1])
      {
        v40 = *(&theStringa[1]->isa + *(&v99 + 1) + v37);
      }

      else if (v99)
      {
        v40 = *(v99 + *(&v99 + 1) + v37);
      }

      else
      {
        if (v101 < a2 || v35 >= a2)
        {
          v41 = a2 - 5;
          if (a2 < 5)
          {
            v41 = 0;
          }

          if (v41 + 64 < v100)
          {
            v39 = v41 + 64;
          }

          *(&v100 + 1) = v41;
          v101 = v39;
          v104.length = v39 - v41;
          v104.location = *(&v99 + 1) + v41;
          CFStringGetCharacters(theStringa[0], v104, buffer);
          v35 = *(&v100 + 1);
        }

        v40 = buffer[v37 - v35];
      }

      if (v40 != 13)
      {
        goto LABEL_56;
      }

      v37 = a2 - 2;
      if (((a2 - 2) & 0x8000000000000000) == 0)
      {
        goto LABEL_56;
      }

LABEL_32:
      v23 = 0;
      length = v89;
      goto LABEL_93;
    }
  }

  v35 = 0;
  v37 = a2 - 1;
  if (a2 - 1 < 0)
  {
    goto LABEL_32;
  }

LABEL_56:
  v88 = a6;
  v42 = -v37;
  v43 = v37 + 64;
  while (1)
  {
    if (v37 >= 4)
    {
      v44 = 4;
    }

    else
    {
      v44 = v37;
    }

    v45 = v100;
    if (v100 <= v37)
    {
      v47 = 0;
      goto LABEL_75;
    }

    if (theStringa[1])
    {
      v46 = theStringa[1] + *(&v99 + 1);
LABEL_63:
      v47 = v46[v37];
      goto LABEL_67;
    }

    if (!v99)
    {
      v50 = v101 > v37 && v35 <= v37;
      if (!v50)
      {
        v51 = -v44;
        v52 = v44 + v42;
        v53 = v43 - v44;
        v54 = v37 + v51;
        v55 = v54 + 64;
        if (v54 + 64 >= v100)
        {
          v55 = v100;
        }

        *(&v100 + 1) = v54;
        v101 = v55;
        if (v100 >= v53)
        {
          v45 = v53;
        }

        v105.location = v54 + *(&v99 + 1);
        v105.length = v45 + v52;
        CFStringGetCharacters(theStringa[0], v105, buffer);
        v35 = *(&v100 + 1);
      }

      v46 = &buffer[-v35];
      goto LABEL_63;
    }

    v47 = *(v99 + *(&v99 + 1) + v37);
LABEL_67:
    if ((v47 - 14) < 0x77u)
    {
      goto LABEL_78;
    }

    v48 = v47 == 10 || v47 == 13;
    if (v48 || v47 == 8233)
    {
      break;
    }

LABEL_75:
    if (a7 && (v47 == 8232 || v47 == 133))
    {
      break;
    }

LABEL_78:
    ++v42;
    --v43;
    v50 = v37-- <= 0;
    if (v50)
    {
      v23 = 0;
      goto LABEL_92;
    }
  }

  v23 = v37 + 1;
LABEL_92:
  a6 = v88;
  length = v89;
LABEL_93:
  *a4 = v23;
LABEL_94:
  if (!(a5 | a6))
  {
    goto LABEL_151;
  }

  theStringa[0] = theString;
  *(&v99 + 1) = 0;
  *&v100 = length;
  theStringa[1] = CFStringGetCharactersPtr(theString);
  if (theStringa[1])
  {
LABEL_96:
    v56 = 0;
    goto LABEL_97;
  }

  v65 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v65 = __CFStringComputeEightBitStringEncoding();
  }

  if (v65 == 1536)
  {
    if (!theString)
    {
      goto LABEL_96;
    }

LABEL_138:
    v68 = &theString->info;
    v69 = atomic_load(&theString->info);
    if ((v69 & 0x10) != 0)
    {
      v70 = atomic_load(v68);
      if ((v70 & 8) == 0)
      {
        goto LABEL_96;
      }
    }

    v71 = atomic_load(v68);
    v72 = &theString->data;
    if ((v71 & 0x60) != 0)
    {
      v73 = *v72;
    }

    else
    {
      v79 = atomic_load(&theString->info);
      v73 = &v72[(v79 & 5) != 4];
    }

    v80 = atomic_load(&theString->info);
    v56 = &v73[(v80 >> 2) & 1];
  }

  else
  {
    v67 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v67 = __CFStringComputeEightBitStringEncoding();
    }

    v56 = 0;
    if (theString && v67 == 1536)
    {
      goto LABEL_138;
    }
  }

LABEL_97:
  *(&v100 + 1) = 0;
  v101 = 0;
  *&v99 = v56;
  v57 = a2 + a3 - (a3 != 0);
  if (v57 < 0 || (v58 = v100, v100 <= v57))
  {
    v59 = 0;
    v60 = -1;
  }

  else
  {
    if (theStringa[1])
    {
      v59 = 0;
      v60 = *(&theStringa[1]->isa + *(&v99 + 1) + v57);
    }

    else if (v56)
    {
      v59 = 0;
      v60 = v56[*(&v99 + 1) + v57];
    }

    else
    {
      v81 = v57 - 4;
      if (v57 < 4)
      {
        v81 = 0;
      }

      if (v81 + 64 < v100)
      {
        v58 = v81 + 64;
      }

      *(&v100 + 1) = v81;
      v101 = v58;
      v107.length = v58 - v81;
      v107.location = *(&v99 + 1) + v81;
      CFStringGetCharacters(theStringa[0], v107, buffer);
      v59 = *(&v100 + 1);
      v60 = buffer[v57 - *(&v100 + 1)];
    }

    if (v60 == 10)
    {
      v82 = v57 - 1;
      if (v57 && (v83 = v100, v100 >= v57))
      {
        if (theStringa[1])
        {
          v84 = *(&theStringa[1]->isa + *(&v99 + 1) + v82);
        }

        else if (v99)
        {
          v84 = *(v99 + *(&v99 + 1) + v82);
        }

        else
        {
          if (v101 < v57 || v59 >= v57)
          {
            v86 = v57 - 5;
            if (v57 < 5)
            {
              v86 = 0;
            }

            if (v86 + 64 < v100)
            {
              v83 = v86 + 64;
            }

            *(&v100 + 1) = v86;
            v101 = v83;
            v108.length = v83 - v86;
            v108.location = *(&v99 + 1) + v86;
            CFStringGetCharacters(theStringa[0], v108, buffer);
            v59 = *(&v100 + 1);
          }

          v84 = buffer[v82 - v59];
        }
      }

      else
      {
        v84 = -1;
      }

      v85 = v84 == 13;
      if (v84 == 13)
      {
        v62 = v57 - 1;
      }

      else
      {
        v62 = a2 + a3 - (a3 != 0);
      }

LABEL_183:
      v66 = 1;
      if (v85)
      {
        v66 = 2;
      }

      if (a6)
      {
        goto LABEL_148;
      }

      goto LABEL_149;
    }
  }

  if (length <= v57)
  {
    v61 = a2 + a3 - (a3 != 0);
  }

  else
  {
    v61 = length;
  }

  while (2)
  {
    v62 = v57;
    if ((v60 - 14) < 0x77u)
    {
LABEL_112:
      if (v61 == v57)
      {
        v66 = 0;
        v62 = length;
        if (a6)
        {
          goto LABEL_148;
        }

        goto LABEL_149;
      }

      ++v57;
      v60 = -1;
      if (v62 >= -1 && v100 > v57)
      {
        if (theStringa[1])
        {
          v60 = *(&theStringa[1]->isa + *(&v99 + 1) + v62 + 1);
        }

        else if (v99)
        {
          v60 = *(v99 + *(&v99 + 1) + 1 + v62);
        }

        else
        {
          v57 = v62 + 1;
          if (v101 <= v62 + 1 || v59 > v57)
          {
            v63 = v62 - 3;
            if (v57 < 4)
            {
              v63 = 0;
            }

            v64 = v63 + 64;
            if (v63 + 64 >= v100)
            {
              v64 = v100;
            }

            *(&v100 + 1) = v63;
            v101 = v64;
            v106.length = v64 - v63;
            v106.location = *(&v99 + 1) + v63;
            CFStringGetCharacters(theStringa[0], v106, buffer);
            v59 = *(&v100 + 1);
          }

          v60 = buffer[v62 + 1 - v59];
        }
      }

      continue;
    }

    break;
  }

  if (v60 == 10)
  {
    goto LABEL_147;
  }

  if (v60 != 13)
  {
    if (v60 == 8233 || a7 && (v60 == 133 || v60 == 8232))
    {
      goto LABEL_147;
    }

    goto LABEL_112;
  }

  if (v57 >= -1)
  {
    v74 = v57 + 1;
    v75 = v100;
    if (v100 > v57 + 1)
    {
      if (theStringa[1])
      {
        v76 = theStringa[1] + *(&v99 + 1);
        goto LABEL_146;
      }

      if (v99)
      {
        v77 = *(v99 + *(&v99 + 1) + v57 + 1);
      }

      else
      {
        if (v101 <= v74 || v59 > v74)
        {
          v87 = v57 - 3;
          if (v74 < 4)
          {
            v87 = 0;
          }

          if (v87 + 64 < v100)
          {
            v75 = v87 + 64;
          }

          *(&v100 + 1) = v87;
          v101 = v75;
          v109.length = v75 - v87;
          v109.location = *(&v99 + 1) + v87;
          CFStringGetCharacters(theStringa[0], v109, buffer);
          v59 = *(&v100 + 1);
        }

        v76 = &buffer[-v59];
LABEL_146:
        v77 = v76[v57 + 1];
      }

      v85 = v77 == 10;
      goto LABEL_183;
    }
  }

LABEL_147:
  v66 = 1;
  if (!a6)
  {
    goto LABEL_149;
  }

LABEL_148:
  *a6 = v62;
LABEL_149:
  if (a5)
  {
    *a5 = v66 + v62;
  }

LABEL_151:
  v78 = *MEMORY[0x1E69E9840];
}

CFRange CFStringGetRangeOfComposedCharactersAtIndex(CFStringRef theString, CFIndex theIndex)
{
  RangeOfCharacterClusterAtIndex = CFStringGetRangeOfCharacterClusterAtIndex(theString, theIndex, 2);
  result.length = v3;
  result.location = RangeOfCharacterClusterAtIndex;
  return result;
}

void _CFPrefsResetPreferences(char a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = _os_activity_create(&dword_1830E6000, "Resetting CFPreferences/NSUserDefaults", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0;
  state.opaque[1] = 0;
  os_activity_scope_enter(v2, &state);
  if (qword_1ED40BE20 != -1)
  {
    _CFPrefsResetPreferences_cold_1();
  }

  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___CFPrefsResetPreferences_block_invoke;
  v4[3] = &__block_descriptor_33_e25_v16__0___CFXPreferences_8l;
  v5 = a1;
  [qword_1ED40BE18 forEachPrefsPerformBlock:v4];

  os_activity_scope_leave(&state);
  v3 = *MEMORY[0x1E69E9840];
}

unint64_t CFBasicHashReplaceValue(unint64_t result, unint64_t a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  v3 = atomic_load((result + 8));
  if ((v3 & 0x40) != 0 || a2 == 2780474809 || a2 == 2814029233 || a3 == 2780474809 || a3 == 2814029233)
  {
    goto LABEL_26;
  }

  v6 = result;
  v11 = 0u;
  v12 = 0u;
  if (!*(result + 26))
  {
    v11 = xmmword_183447130;
    v12 = unk_183447140;
    goto LABEL_21;
  }

  v7 = *(result + 18) & 3;
  if ((*(result + 18) & 0x8000) == 0)
  {
    if ((*(result + 18) & 3u) > 1)
    {
      if (v7 == 2)
      {
        result = ___CFBasicHashFindBucket_Double(result, a2, &v11);
      }

      else
      {
        result = ___CFBasicHashFindBucket_Exponential(result, a2, &v11);
      }

      goto LABEL_21;
    }

    if (v7 == 1)
    {
      result = ___CFBasicHashFindBucket_Linear(result, a2, &v11);
      goto LABEL_21;
    }

LABEL_26:
    __break(1u);
  }

  if ((*(result + 18) & 3u) <= 1)
  {
    if (v7 == 1)
    {
      result = ___CFBasicHashFindBucket_Linear_Indirect(result, a2, &v11);
      goto LABEL_21;
    }

    goto LABEL_26;
  }

  if (v7 == 2)
  {
    result = ___CFBasicHashFindBucket_Double_Indirect(result, a2, &v11);
  }

  else
  {
    result = ___CFBasicHashFindBucket_Exponential_Indirect(result, a2, &v11);
  }

LABEL_21:
  if (*(&v12 + 1))
  {
    v8 = v11;
    v9 = *MEMORY[0x1E69E9840];

    return __CFBasicHashReplaceValue(v6, v8, a2, a3);
  }

  else
  {
    v10 = *MEMORY[0x1E69E9840];
  }

  return result;
}

void CFCharacterSetIntersect(CFMutableCharacterSetRef theSet, CFCharacterSetRef theOtherSet)
{
  v2 = MEMORY[0x1EEE9AC00](theSet, theOtherSet);
  v4 = v3;
  v5 = v2;
  v242 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x19uLL, v2))
  {
    v12 = *MEMORY[0x1E69E9840];

    [v5 formIntersectionWithCharacterSet:v4];
    return;
  }

  v13 = atomic_load((v5 + 8));
  if ((v13 & 1) == 0)
  {
    CFLog(3, @"%s: Immutable character set passed to mutable function", v6, v7, v8, v9, v10, v11, "void CFCharacterSetIntersect(CFMutableCharacterSetRef, CFCharacterSetRef)");
    if (dyld_program_sdk_at_least())
    {
      CFCharacterSetIntersect_cold_1();
    }
  }

  v14 = atomic_load((v5 + 8));
  if ((v14 & 0x70) == 0)
  {
    v15 = atomic_load((v5 + 8));
    if ((v15 & 1) == 0)
    {
      v16 = atomic_load((v5 + 8));
      if ((v16 & 8) == 0 && CFCharacterSetGetPredefined(*(v5 + 24)) == v5)
      {
        goto LABEL_363;
      }
    }
  }

  v17 = *(v5 + 40);
  if (v17 && (*(v17 + 8) || *(v17 + 13)))
  {
    goto LABEL_24;
  }

  v18 = atomic_load((v5 + 8));
  v19 = (v18 >> 4) & 7;
  if (v19 > 2)
  {
    if ((v19 == 3 || v19 == 4) && !*(v5 + 24))
    {
LABEL_23:
      v20 = atomic_load((v5 + 8));
      if ((v20 & 8) == 0)
      {
        goto LABEL_363;
      }
    }
  }

  else if ((v19 == 1 || v19 == 2) && !*(v5 + 32))
  {
    goto LABEL_23;
  }

LABEL_24:
  if (CF_IS_OBJC(0x19uLL, v4))
  {
    v28 = [v4 _expandedCFCharacterSet];
    if (!v28)
    {
      BitmapRepresentation = CFCharacterSetCreateBitmapRepresentation(&__kCFAllocatorSystemDefault, v4);
      if (!BitmapRepresentation)
      {
        goto LABEL_363;
      }

      v30 = BitmapRepresentation;
      if (CFDataGetLength(BitmapRepresentation))
      {
        BytePtr = CFDataGetBytePtr(v30);
        if (BytePtr)
        {
          v32 = BytePtr;
          __CFCSetMakeBitmap(v5);
          v33 = 0;
          v34 = *(v5 + 24);
          do
          {
            *(v34 + v33) &= *&v32[v33];
            v33 += 4;
          }

          while (v33 != 0x2000);
          v35 = atomic_load((v5 + 8));
          v36 = v35;
          do
          {
            atomic_compare_exchange_strong((v5 + 8), &v36, v35 & 0xFFFFFFFFFFFFFFFBLL);
            v37 = v36 == v35;
            v35 = v36;
          }

          while (!v37);
        }
      }

      v38 = *MEMORY[0x1E69E9840];

      CFRelease(v30);
      return;
    }
  }

  else
  {
    v28 = 0;
  }

  if (v28)
  {
    v4 = v28;
  }

  v39 = *(v4 + 40);
  if (!v39 || !*(v39 + 8) && !*(v39 + 13))
  {
    v40 = atomic_load((v4 + 8));
    v41 = (v40 >> 4) & 7;
    if (v41 > 2)
    {
      if ((v41 == 3 || v41 == 4) && !*(v4 + 24))
      {
LABEL_198:
        v124 = atomic_load((v4 + 8));
        if ((v124 & 8) != 0)
        {
          goto LABEL_361;
        }

        v125 = atomic_load((v5 + 8));
        if ((v125 & 0x70) == 0x20 && *(v5 + 24) || (v126 = atomic_load((v5 + 8)), (v126 & 0x70) == 0x30) && *(v5 + 24) || (v127 = atomic_load((v5 + 8)), (v127 & 0x70) == 0x40) && *(v5 + 24))
        {
          v128 = CFGetAllocator(v5);
          CFAllocatorDeallocate(v128, *(v5 + 24));
        }

        v129 = atomic_load((v5 + 8));
        v130 = v129;
        do
        {
          atomic_compare_exchange_strong((v5 + 8), &v130, v129 & 0xFFFFFFFFFFFFFF8FLL | 0x30);
          v37 = v130 == v129;
          v129 = v130;
        }

        while (!v37);
        *(v5 + 24) = 0;
        v131 = atomic_load((v5 + 8));
        v132 = v131;
        do
        {
          atomic_compare_exchange_strong((v5 + 8), &v132, v131 & 0xFFFFFFFFFFFFFFF7);
          v37 = v132 == v131;
          v131 = v132;
        }

        while (!v37);
        *(v5 + 16) = 0;
        v133 = atomic_load((v5 + 8));
        v134 = v133;
        do
        {
          atomic_compare_exchange_strong((v5 + 8), &v134, v133 | 4);
          v37 = v134 == v133;
          v133 = v134;
        }

        while (!v37);
        if (!*(v5 + 40))
        {
          goto LABEL_361;
        }

        for (i = 0; i != 16; ++i)
        {
          v136 = *(v5 + 40);
          if (((*(v136 + 8) >> i) & 2) != 0)
          {
            CFRelease(*(*v136 + 8 * i));
          }
        }

LABEL_262:
        v172 = CFGetAllocator(v5);
        CFAllocatorDeallocate(v172, **(v5 + 40));
        v173 = CFGetAllocator(v5);
        CFAllocatorDeallocate(v173, *(v5 + 40));
        *(v5 + 40) = 0;
        goto LABEL_361;
      }
    }

    else if ((v41 == 1 || v41 == 2) && !*(v4 + 32))
    {
      goto LABEL_198;
    }
  }

  v42 = *(v5 + 40);
  if (v42 && (*(v42 + 8) || *(v42 + 13)))
  {
    goto LABEL_62;
  }

  v43 = atomic_load((v5 + 8));
  v44 = (v43 >> 4) & 7;
  if (v44 > 2)
  {
    if ((v44 == 3 || v44 == 4) && !*(v5 + 24))
    {
      goto LABEL_221;
    }

    goto LABEL_62;
  }

  if (v44 != 1 && v44 != 2 || *(v5 + 32))
  {
LABEL_62:
    __CFCSetMakeBitmap(v5);
    v45 = atomic_load((v4 + 8));
    v46 = *(v5 + 24);
    if ((v45 & 0x70) == 0x30)
    {
      v47 = 0;
      v48 = *(v4 + 24);
      do
      {
        *(v46 + v47) &= *(v48 + v47);
        v47 += 4;
      }

      while (v47 != 0x2000);
    }

    else
    {
      __CFCSetGetBitmap(v4, __b);
      for (j = 0; j != 2048; ++j)
      {
        *(v46 + j * 4) &= __b[0].u32[j];
      }
    }

    v50 = atomic_load((v5 + 8));
    v51 = v50;
    do
    {
      atomic_compare_exchange_strong((v5 + 8), &v51, v50 & 0xFFFFFFFFFFFFFFFBLL);
      v37 = v51 == v50;
      v50 = v51;
    }

    while (!v37);
    v52 = *(v4 + 40);
    if (v52 && *(v52 + 8))
    {
      Mutable = CFCharacterSetCreateMutable(0);
      v54 = 0;
      v55 = 8;
      while (1)
      {
        v56 = v54 + 1;
        v57 = (v54 + 1);
        v58 = *(v4 + 40);
        if (v58)
        {
          v59 = 1 << v56;
          if ((*(v58 + 8) & (1 << v56)) != 0 && *(v58 + 12) >= v57)
          {
            v60 = *(*v58 + 8 * v54);
            if (v60)
            {
              break;
            }
          }
        }

        v65 = *(v5 + 40);
        if (v65)
        {
          v59 = 1 << v56;
          if ((v65[1] & (1 << v56)) != 0)
          {
            if (*(v65 + 12) >= v57)
            {
              v66 = *(*v65 + 8 * v54);
              if (v66)
              {
                if (!*(v65 + 13))
                {
                  v81 = *(*v65 + 8 * v54);
                  goto LABEL_127;
                }

                CFCharacterSetInvert(v66);
                CFCharacterSetIntersect(v66, Mutable);
                goto LABEL_125;
              }
            }

            if (*(v65 + 12) >= v57 && *(*v65 + 8 * v54))
            {
              goto LABEL_137;
            }
          }

          if (!*(v65 + 13))
          {
            goto LABEL_137;
          }

          if (*(v65 + 12) < v57)
          {
            *(v65 + 12) = v57;
            v67 = *v65;
            v68 = CFGetAllocator(v5);
            if (v67)
            {
              Typed = __CFSafelyReallocateWithAllocatorTyped(v68, **(v5 + 40), v55, 0x6004044C4A2DFLL, 0, 0);
            }

            else
            {
              Typed = CFAllocatorAllocateTyped(v68, v55, 0x6004044C4A2DFLL, 0);
            }

            v65 = *(v5 + 40);
            *v65 = Typed;
          }

          if ((v65[1] & v59) == 0)
          {
            v79 = CFGetAllocator(v5);
            *(**(v5 + 40) + 8 * v54) = CFCharacterSetCreateMutable(v79);
            v65 = *(v5 + 40);
            *(v65 + 2) |= v59;
          }

          v66 = *(*v65 + 8 * v54);
          if (*(v65 + 13))
          {
            CFCharacterSetInvert(v66);
          }

          CFCharacterSetIntersect(v66, Mutable);
          v80 = *(v5 + 40);
          if (!v80 || !*(v80 + 13))
          {
            goto LABEL_137;
          }

LABEL_125:
          CFCharacterSetInvert(v66);
        }

LABEL_137:
        ++v54;
        v55 += 8;
        if (v54 == 16)
        {
          CFRelease(Mutable);
          v96 = *(v5 + 40);
          if (!v96 || *(v96 + 8))
          {
            goto LABEL_361;
          }

          for (k = 0; k != 16; ++k)
          {
            v98 = *(v5 + 40);
            if (((*(v98 + 8) >> k) & 2) != 0)
            {
              CFRelease(*(*v98 + 8 * k));
            }
          }

          goto LABEL_262;
        }
      }

      if (*(v58 + 13))
      {
        CFCharacterSetInvert(v60);
      }

      v61 = *(v5 + 40);
      if (v61)
      {
        if (*(v61 + 12) >= v57)
        {
          goto LABEL_99;
        }

        *(v61 + 12) = v57;
        v62 = *v61;
        v63 = CFGetAllocator(v5);
        if (v62)
        {
          v64 = __CFSafelyReallocateWithAllocatorTyped(v63, **(v5 + 40), v55, 0x6004044C4A2DFLL, 0, 0);
LABEL_98:
          v61 = *(v5 + 40);
          *v61 = v64;
LABEL_99:
          if ((v61[1] & v59) == 0)
          {
            v72 = CFGetAllocator(v5);
            *(**(v5 + 40) + 8 * v54) = CFCharacterSetCreateMutable(v72);
            v61 = *(v5 + 40);
            *(v61 + 2) |= v59;
          }

          v73 = *(*v61 + 8 * v54);
          if (*(v61 + 13))
          {
            CFCharacterSetInvert(v73);
          }

          CFCharacterSetIntersect(v73, v60);
          v74 = *(v5 + 40);
          if (v74 && *(v74 + 13))
          {
            CFCharacterSetInvert(v73);
          }

          v75 = *(v4 + 40);
          if (v75 && *(v75 + 13))
          {
            CFCharacterSetInvert(v60);
          }

          v76 = v73[5];
          if (v76 && (*(v76 + 8) || *(v76 + 13)))
          {
            goto LABEL_137;
          }

          v77 = atomic_load(v73 + 1);
          v78 = (v77 >> 4) & 7;
          if (v78 > 2)
          {
            if (v78 != 3 && v78 != 4 || v73[3])
            {
              goto LABEL_137;
            }
          }

          else if (v78 != 1 && v78 != 2 || v73[4])
          {
            goto LABEL_137;
          }

          v84 = atomic_load(v73 + 1);
          if ((v84 & 8) == 0)
          {
            v82 = *(v5 + 40);
            if (!v82)
            {
              v88 = CFGetAllocator(v5);
              v89 = CFAllocatorAllocateTyped(v88, 16, 0x1080040FC6463CFLL, 0);
              *(v5 + 40) = v89;
              *(v89 + 12) = v57;
              *(v89 + 8) = 0;
              v86 = CFGetAllocator(v5);
              goto LABEL_140;
            }

            if (*(v82 + 12) < v57)
            {
              *(v82 + 12) = v57;
              v85 = *v82;
              v86 = CFGetAllocator(v5);
              if (v85)
              {
                v87 = __CFSafelyReallocateWithAllocatorTyped(v86, **(v5 + 40), v55, 0x6004044C4A2DFLL, 0, 0);
                goto LABEL_141;
              }

LABEL_140:
              v87 = CFAllocatorAllocateTyped(v86, v55, 0x6004044C4A2DFLL, 0);
LABEL_141:
              v82 = *(v5 + 40);
              *v82 = v87;
            }

            v83 = *(v82 + 2);
            if ((v83 & v59) != 0)
            {
              v81 = *(*v82 + 8 * v54);
LABEL_127:
              CFRelease(v81);
              v82 = *(v5 + 40);
              v83 = *(v82 + 2);
            }

            *(v82 + 2) = v83 & ~v59;
            goto LABEL_137;
          }

          goto LABEL_137;
        }
      }

      else
      {
        v70 = CFGetAllocator(v5);
        v71 = CFAllocatorAllocateTyped(v70, 16, 0x1080040FC6463CFLL, 0);
        *(v5 + 40) = v71;
        *(v71 + 12) = v57;
        *(v71 + 8) = 0;
        v63 = CFGetAllocator(v5);
      }

      v64 = CFAllocatorAllocateTyped(v63, v55, 0x6004044C4A2DFLL, 0);
      goto LABEL_98;
    }

    v90 = atomic_load((v4 + 8));
    if ((v90 & 0x70) == 0)
    {
      v103 = *(v4 + 40);
      if (!v103 || !*(v103 + 13))
      {
        v104 = 1;
        while (1)
        {
          v105 = *(v5 + 40);
          if (v105)
          {
            v106 = 1 << v104;
            if ((*(v105 + 8) & (1 << v104)) != 0 && v104 <= *(v105 + 12))
            {
              v107 = *(*v105 + 8 * v104 - 8);
              if (v107)
              {
                BitmapForPlane = CFUniCharGetBitmapForPlane(*(v4 + 24), v104, __b, 0);
                if (!BitmapForPlane)
                {
                  __CFCSetMakeBitmap(v107);
                  v114 = 0;
                  v115 = *(v107 + 24);
                  v116 = 1;
                  do
                  {
                    v117 = *(v115 + v114 * 4);
                    v37 = (v117 & __b[0].i32[v114]) == 0;
                    *(v115 + v114 * 4) = v117 & __b[0].i32[v114];
                    if (!v37)
                    {
                      v116 = 0;
                    }

                    ++v114;
                  }

                  while (v114 != 2048);
                  if (!v116)
                  {
                    goto LABEL_195;
                  }

                  v109 = *(v5 + 40);
                  if (!v109)
                  {
                    goto LABEL_188;
                  }

                  if (v104 <= *(v109 + 12))
                  {
                    goto LABEL_192;
                  }

                  *(v109 + 12) = v104;
                  v118 = *v109;
                  v111 = CFGetAllocator(v5);
                  if (v118)
                  {
                    v113 = **(v5 + 40);
                    v112 = 8 * v104;
LABEL_187:
                    v119 = __CFSafelyReallocateWithAllocatorTyped(v111, v113, v112, 0x6004044C4A2DFLL, 0, 0);
                    goto LABEL_191;
                  }

LABEL_189:
                  v122 = 8 * v104;
                  goto LABEL_190;
                }

                if (BitmapForPlane == 255)
                {
                  v109 = *(v5 + 40);
                  if (v109)
                  {
                    if (v104 > *(v109 + 12))
                    {
                      *(v109 + 12) = v104;
                      v110 = *v109;
                      v111 = CFGetAllocator(v5);
                      v112 = 8 * v104;
                      if (v110)
                      {
                        v113 = **(v5 + 40);
                        goto LABEL_187;
                      }

                      v122 = 8 * v104;
LABEL_190:
                      v119 = CFAllocatorAllocateTyped(v111, v122, 0x6004044C4A2DFLL, 0);
LABEL_191:
                      v109 = *(v5 + 40);
                      *v109 = v119;
                    }

LABEL_192:
                    v123 = *(v109 + 2);
                    if ((v123 & v106) != 0)
                    {
                      CFRelease(*(*v109 + 8 * v104 - 8));
                      v109 = *(v5 + 40);
                      v123 = *(v109 + 2);
                    }

                    *(v109 + 2) = v123 & ~v106;
                    goto LABEL_195;
                  }

LABEL_188:
                  v120 = CFGetAllocator(v5);
                  v121 = CFAllocatorAllocateTyped(v120, 16, 0x1080040FC6463CFLL, 0);
                  *(v5 + 40) = v121;
                  *(v121 + 12) = v104;
                  *(v121 + 13) = 0;
                  *(v121 + 8) = 0;
                  v111 = CFGetAllocator(v5);
                  goto LABEL_189;
                }
              }
            }
          }

LABEL_195:
          if (++v104 == 17)
          {
            v169 = *(v5 + 40);
            if (!v169 || *(v169 + 8))
            {
              goto LABEL_361;
            }

            for (m = 0; m != 16; ++m)
            {
              v171 = *(v5 + 40);
              if (((*(v171 + 8) >> m) & 2) != 0)
              {
                CFRelease(*(*v171 + 8 * m));
              }
            }

            goto LABEL_262;
          }
        }
      }
    }

    v91 = atomic_load((v4 + 8));
    if ((v91 & 0x70) != 0x10)
    {
      v99 = *(v5 + 40);
      if (!v99 || !*(v99 + 8) && !*(v99 + 13))
      {
        goto LABEL_361;
      }

      v100 = *(v4 + 40);
      if (v100)
      {
        if (*(v100 + 13))
        {
          goto LABEL_361;
        }
      }

      for (n = 0; n != 16; ++n)
      {
        v102 = *(v5 + 40);
        if (((*(v102 + 8) >> n) & 2) != 0)
        {
          CFRelease(*(*v102 + 8 * n));
        }
      }

      goto LABEL_262;
    }

    v92 = CFGetAllocator(v5);
    v93 = CFCharacterSetCreateMutable(v92);
    theOtherSeta = CFCharacterSetCreateMutable(0);
    __CFCSetAddNonBMPPlanesInRange(v93, *(v4 + 24), *(v4 + 32));
    v94 = *(v5 + 40);
    if (v94)
    {
      v95 = *(v94 + 13) != 0;
    }

    else
    {
      v95 = 0;
    }

    v174 = *(v93 + 5);
    if (v174)
    {
      v175 = *(v174 + 13) == 0;
    }

    else
    {
      v175 = 1;
    }

    v239 = v175;
    v176 = 0;
    v177 = 8;
    while (1)
    {
      v178 = v176 + 1;
      v179 = (v176 + 1);
      v180 = *(v93 + 5);
      if (!v180 || (v181 = 1 << v178, (*(v180 + 8) & (1 << v178)) == 0) || *(v180 + 12) < v179 || (v182 = *(*v180 + 8 * v176)) == 0)
      {
        v187 = *(v5 + 40);
        if (v187)
        {
          v181 = 1 << v178;
          if ((v187[1] & (1 << v178)) == 0)
          {
            goto LABEL_287;
          }

          if (*(v187 + 12) >= v179)
          {
            v188 = *(*v187 + 8 * v176);
            if (v188)
            {
              if (v95)
              {
                goto LABEL_298;
              }

              v189 = *(*v187 + 8 * v176);
LABEL_282:
              CFRelease(v189);
              v190 = *(v5 + 40);
              v191 = *(v190 + 2);
LABEL_283:
              *(v190 + 2) = v191 & ~v181;
              goto LABEL_299;
            }
          }

          if (*(v187 + 12) < v179)
          {
LABEL_287:
            if (!v95)
            {
              goto LABEL_299;
            }

LABEL_290:
            if (*(v187 + 12) < v179)
            {
              *(v187 + 12) = v179;
              v195 = *v187;
              v194 = CFGetAllocator(v5);
              if (v195)
              {
                v196 = __CFSafelyReallocateWithAllocatorTyped(v194, **(v5 + 40), v177, 0x6004044C4A2DFLL, 0, 0);
                goto LABEL_294;
              }

LABEL_293:
              v196 = CFAllocatorAllocateTyped(v194, v177, 0x6004044C4A2DFLL, 0);
LABEL_294:
              v187 = *(v5 + 40);
              *v187 = v196;
            }

            if ((v187[1] & (1 << v178)) == 0)
            {
              v197 = CFGetAllocator(v5);
              *(**(v5 + 40) + 8 * v176) = CFCharacterSetCreateMutable(v197);
              v187 = *(v5 + 40);
              *(v187 + 2) |= 1 << v178;
            }

            v188 = *(*v187 + 8 * v176);
LABEL_298:
            CFCharacterSetInvert(v188);
            CFCharacterSetIntersect(v188, theOtherSeta);
            CFCharacterSetInvert(v188);
            goto LABEL_299;
          }

          if (*(*v187 + 8 * v176) == 0 && v95)
          {
            goto LABEL_290;
          }
        }

        else if (v95)
        {
          v192 = CFGetAllocator(v5);
          v193 = CFAllocatorAllocateTyped(v192, 16, 0x1080040FC6463CFLL, 0);
          *(v5 + 40) = v193;
          *(v193 + 12) = v179;
          *(v193 + 8) = 0;
          v194 = CFGetAllocator(v5);
          goto LABEL_293;
        }

        goto LABEL_299;
      }

      v183 = *(v5 + 40);
      if (!v183)
      {
        break;
      }

      if (*(v183 + 12) >= v179)
      {
        goto LABEL_304;
      }

      *(v183 + 12) = v179;
      v184 = *v183;
      v185 = CFGetAllocator(v5);
      if (!v184)
      {
        goto LABEL_302;
      }

      v186 = __CFSafelyReallocateWithAllocatorTyped(v185, **(v5 + 40), v177, 0x6004044C4A2DFLL, 0, 0);
LABEL_303:
      v183 = *(v5 + 40);
      *v183 = v186;
LABEL_304:
      if ((v183[1] & v181) == 0)
      {
        v200 = CFGetAllocator(v5);
        *(**(v5 + 40) + 8 * v176) = CFCharacterSetCreateMutable(v200);
        v183 = *(v5 + 40);
        *(v183 + 2) |= v181;
      }

      v201 = *(*v183 + 8 * v176);
      if (!v239)
      {
        CFCharacterSetInvert(v182);
      }

      if (v95)
      {
        CFCharacterSetInvert(v201);
        CFCharacterSetIntersect(v201, v182);
        CFCharacterSetInvert(v201);
      }

      else
      {
        CFCharacterSetIntersect(v201, v182);
      }

      if (!v239)
      {
        CFCharacterSetInvert(v182);
      }

      v202 = v201[5];
      if (v202 && (*(v202 + 8) || *(v202 + 13)))
      {
        goto LABEL_299;
      }

      v203 = atomic_load(v201 + 1);
      v204 = (v203 >> 4) & 7;
      if (v204 > 2)
      {
        if (v204 != 3 && v204 != 4 || v201[3])
        {
          goto LABEL_299;
        }
      }

      else if (v204 != 1 && v204 != 2 || v201[4])
      {
        goto LABEL_299;
      }

      v205 = atomic_load(v201 + 1);
      if ((v205 & 8) == 0)
      {
        v190 = *(v5 + 40);
        if (v190)
        {
          if (*(v190 + 12) < v179)
          {
            *(v190 + 12) = v179;
            v206 = *v190;
            v207 = CFGetAllocator(v5);
            if (v206)
            {
              v208 = __CFSafelyReallocateWithAllocatorTyped(v207, **(v5 + 40), v177, 0x6004044C4A2DFLL, 0, 0);
              goto LABEL_331;
            }

LABEL_330:
            v208 = CFAllocatorAllocateTyped(v207, v177, 0x6004044C4A2DFLL, 0);
LABEL_331:
            v190 = *(v5 + 40);
            *v190 = v208;
          }

          v191 = *(v190 + 2);
          if ((v191 & v181) != 0)
          {
            v189 = *(*v190 + 8 * v176);
            goto LABEL_282;
          }

          goto LABEL_283;
        }

        v209 = CFGetAllocator(v5);
        v210 = CFAllocatorAllocateTyped(v209, 16, 0x1080040FC6463CFLL, 0);
        *(v5 + 40) = v210;
        *(v210 + 12) = v179;
        *(v210 + 8) = 0;
        v207 = CFGetAllocator(v5);
        goto LABEL_330;
      }

LABEL_299:
      ++v176;
      v177 += 8;
      if (v176 == 16)
      {
        v211 = *(v5 + 40);
        if (v211 && !*(v211 + 8))
        {
          for (ii = 0; ii != 16; ++ii)
          {
            v213 = *(v5 + 40);
            if (((*(v213 + 8) >> ii) & 2) != 0)
            {
              CFRelease(*(*v213 + 8 * ii));
            }
          }

          v214 = CFGetAllocator(v5);
          CFAllocatorDeallocate(v214, **(v5 + 40));
          v215 = CFGetAllocator(v5);
          CFAllocatorDeallocate(v215, *(v5 + 40));
          *(v5 + 40) = 0;
        }

        CFRelease(v93);
        CFRelease(theOtherSeta);
        goto LABEL_361;
      }
    }

    v198 = CFGetAllocator(v5);
    v199 = CFAllocatorAllocateTyped(v198, 16, 0x1080040FC6463CFLL, 0);
    *(v5 + 40) = v199;
    *(v199 + 12) = v179;
    *(v199 + 8) = 0;
    v185 = CFGetAllocator(v5);
LABEL_302:
    v186 = CFAllocatorAllocateTyped(v185, v177, 0x6004044C4A2DFLL, 0);
    goto LABEL_303;
  }

LABEL_221:
  v137 = atomic_load((v4 + 8));
  v138 = v137 & 0x70;
  v139 = atomic_load((v5 + 8));
  v140 = v139;
  do
  {
    atomic_compare_exchange_strong((v5 + 8), &v140, v139 & 0xFFFFFFFFFFFFFF8FLL | v138);
    v37 = v140 == v139;
    v139 = v140;
  }

  while (!v37);
  v141 = atomic_load((v4 + 8));
  v142 = atomic_load((v5 + 8));
  v143 = v141 & 4;
  v144 = v142;
  do
  {
    atomic_compare_exchange_strong((v5 + 8), &v144, v142 & 0xFFFFFFFFFFFFFFFBLL | v143);
    v37 = v144 == v142;
    v142 = v144;
  }

  while (!v37);
  v145 = atomic_load((v4 + 8));
  v146 = atomic_load((v5 + 8));
  v147 = v145 & 8;
  v148 = v146;
  do
  {
    atomic_compare_exchange_strong((v5 + 8), &v148, v146 & 0xFFFFFFFFFFFFFFF7 | v147);
    v37 = v148 == v146;
    v146 = v148;
  }

  while (!v37);
  *(v5 + 16) = *(v4 + 16);
  v149 = *(v4 + 40);
  if (!v149 || !*(v149 + 8))
  {
    goto LABEL_346;
  }

  v150 = 0;
  for (jj = 1; jj != 17; ++jj)
  {
    v152 = *(v4 + 40);
    if (!v152)
    {
      goto LABEL_250;
    }

    v153 = 1 << jj;
    if ((*(v152 + 8) & (1 << jj)) == 0)
    {
      goto LABEL_250;
    }

    if (*(v152 + 12) < jj)
    {
      goto LABEL_250;
    }

    v154 = *(*v152 + v150);
    if (!v154)
    {
      goto LABEL_250;
    }

    v155 = CFGetAllocator(v5);
    Copy = __CFCharacterSetCreateCopy(v155, v154, 1);
    v157 = *(v5 + 40);
    if (!v157)
    {
      v161 = CFGetAllocator(v5);
      v162 = CFAllocatorAllocateTyped(v161, 16, 0x1080040FC6463CFLL, 0);
      *(v5 + 40) = v162;
      *(v162 + 12) = jj;
      *(v162 + 8) = 0;
      v159 = CFGetAllocator(v5);
      goto LABEL_242;
    }

    if (*(v157 + 12) < jj)
    {
      *(v157 + 12) = jj;
      v158 = *v157;
      v159 = CFGetAllocator(v5);
      if (v158)
      {
        v160 = __CFSafelyReallocateWithAllocatorTyped(v159, **(v5 + 40), v150 + 8, 0x6004044C4A2DFLL, 0, 0);
LABEL_243:
        v157 = *(v5 + 40);
        *v157 = v160;
        goto LABEL_244;
      }

LABEL_242:
      v160 = CFAllocatorAllocateTyped(v159, v150 + 8, 0x6004044C4A2DFLL, 0);
      goto LABEL_243;
    }

LABEL_244:
    if ((v157[1] & v153) != 0)
    {
      CFRelease(*(*v157 + v150));
    }

    if (Copy)
    {
      *(**(v5 + 40) + v150) = CFRetain(Copy);
      v163 = *(v5 + 40);
      v164 = *(v163 + 8) | v153;
    }

    else
    {
      v163 = *(v5 + 40);
      v164 = *(v163 + 8) & ~v153;
    }

    *(v163 + 8) = v164;
    CFRelease(Copy);
LABEL_250:
    v150 += 8;
  }

  v165 = *(v4 + 40);
  if (v165)
  {
    v166 = *(v5 + 40);
    if (*(v165 + 13))
    {
      if (!v166)
      {
        v167 = CFGetAllocator(v5);
        v166 = CFAllocatorAllocateTyped(v167, 16, 0x1080040FC6463CFLL, 0);
        *(v5 + 40) = v166;
        *v166 = 0;
        *(v166 + 6) = 0;
      }

      v168 = 1;
LABEL_345:
      *(v166 + 13) = v168;
      goto LABEL_346;
    }
  }

  else
  {
    v166 = *(v5 + 40);
  }

  if (v166)
  {
    v168 = 0;
    goto LABEL_345;
  }

LABEL_346:
  v216 = atomic_load((v4 + 8));
  v217 = (v216 >> 4) & 7;
  if (v217 <= 1)
  {
    if (v217)
    {
      *(v5 + 24) = *(v4 + 24);
      *(v5 + 32) = *(v4 + 32);
    }

    else
    {
      *(v5 + 24) = *(v4 + 24);
    }
  }

  else
  {
    switch(v217)
    {
      case 2:
        v235 = *(v4 + 32);
        *(v5 + 32) = v235;
        v232 = *(v5 + 24);
        if (!v232)
        {
          v236 = CFGetAllocator(v5);
          v232 = CFAllocatorAllocateTyped(v236, 128, 0x1000040BDFB0063, 0);
          *(v5 + 24) = v232;
          v235 = *(v5 + 32);
        }

        v233 = *(v4 + 24);
        v234 = 2 * v235;
LABEL_359:
        memmove(v232, v233, v234);
        break;
      case 3:
        v237 = CFGetAllocator(v5);
        v232 = CFAllocatorAllocateTyped(v237, 0x2000, 0x100004077774924, 0);
        *(v5 + 24) = v232;
        v233 = *(v4 + 24);
        v234 = 0x2000;
        goto LABEL_359;
      case 4:
        v218 = 0;
        v219 = xmmword_183306BF0;
        v220 = *(v4 + 24);
        v221 = 0uLL;
        v222.i64[0] = -1;
        v222.i64[1] = -1;
        v223.i64[0] = 0xFEFEFEFEFEFEFEFELL;
        v223.i64[1] = 0xFEFEFEFEFEFEFEFELL;
        v224.i64[0] = 0x2000000020;
        v224.i64[1] = 0x2000000020;
        v225 = 0uLL;
        v226 = 0uLL;
        do
        {
          v227 = vcgtq_u8(v223, vaddq_s8(*&v220[v218], v222));
          v228 = vmovl_s8(*v227.i8);
          v229 = vmovl_high_s8(v227);
          v226 = vaddq_s32(v226, vandq_s8(vmovl_high_u16(v229), v224));
          v225 = vaddq_s32(v225, vandq_s8(vmovl_u16(*v229.i8), v224));
          v221 = vaddq_s32(v221, vandq_s8(vmovl_high_u16(v228), v224));
          v219 = vaddq_s32(v219, vandq_s8(vmovl_u16(*v228.i8), v224));
          v218 += 16;
        }

        while (v218 != 256);
        v230 = vaddvq_s32(vaddq_s32(vaddq_s32(v219, v225), vaddq_s32(v221, v226)));
        v231 = CFGetAllocator(v5);
        v232 = CFAllocatorAllocateTyped(v231, v230, 0x100004077774924, 0);
        *(v5 + 24) = v232;
        v233 = v220;
        v234 = v230;
        goto LABEL_359;
    }
  }

LABEL_361:
  if (__CFCheckForExapendedSet == 1)
  {
    __CFCheckForExpandedSet(v5, v21, v22, v23, v24, v25, v26, v27);
  }

LABEL_363:
  v238 = *MEMORY[0x1E69E9840];
}

void CFStringGetLineBounds(CFStringRef theString, CFRange range, CFIndex *lineBeginIndex, CFIndex *lineEndIndex, CFIndex *contentsEndIndex)
{
  length = range.length;
  location = range.location;
  if (CF_IS_OBJC(7uLL, theString))
  {

    [(__CFString *)theString getLineStart:lineBeginIndex end:lineEndIndex contentsEnd:contentsEndIndex forRange:location, length];
  }

  else
  {

    __CFStringGetLineOrParagraphBounds(theString, location, length, lineBeginIndex, lineEndIndex, contentsEndIndex, 1);
  }
}

CFAttributedStringRef CFAttributedStringCreateWithSubstring(CFAllocatorRef alloc, CFAttributedStringRef aStr, CFRange range)
{
  length = range.length;
  location = range.location;
  if (CF_IS_OBJC(0x3EuLL, aStr))
  {

    return [(__CFAttributedString *)aStr _createAttributedSubstringWithRange:location, length];
  }

  else
  {
    v8 = CFAttributedStringGetLength(aStr);
    if (location || length != v8)
    {
      result = __CFAttributedStringCreateMutableWithSubstring(alloc, aStr, location, length);
      v9 = atomic_load(result + 1);
      v10 = v9;
      do
      {
        atomic_compare_exchange_strong(result + 1, &v10, v9 | 1);
        v11 = v10 == v9;
        v9 = v10;
      }

      while (!v11);
    }

    else
    {

      return CFAttributedStringCreateCopy(alloc, aStr);
    }
  }

  return result;
}

void CFRunLoopContainsSource_cold_1(uint64_t a1)
{
  if (_MergedGlobals_1)
  {
    v1 = _MergedGlobals_1 == a1;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && qword_1ED40BDD8 != -1)
  {
    dispatch_once(&qword_1ED40BDD8, &__block_literal_global_56);
  }
}

void CFRunLoopRemoveSource_cold_1(uint64_t a1)
{
  if (_MergedGlobals_1)
  {
    v1 = _MergedGlobals_1 == a1;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && qword_1ED40BDD8 != -1)
  {
    dispatch_once(&qword_1ED40BDD8, &__block_literal_global_56);
  }
}

os_unfair_lock_s *_CFXPreferencesCopyDictionaryForNamedVolatileSource(__CFString *a1)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v2 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFXPreferencesCopyDictionaryForNamedVolatileSource_cold_1();
    }

    v2 = [qword_1ED40BE18 copyPrefs];
  }

  v3 = [(_CFXPreferences *)v2 copyDictionaryForVolatileSourceWithName:a1];

  return v3;
}

CFIndex CFArrayGetLastIndexOfValue(CFArrayRef theArray, CFRange range, const void *value)
{
  length = range.length;
  location = range.location;
  if (CF_IS_OBJC(0x13uLL, theArray))
  {
    goto LABEL_2;
  }

  v11 = atomic_load(theArray + 1);
  v12 = (v11 >> 2) & 3;
  if (v12)
  {
    if (v12 == 1)
    {
LABEL_2:
      v7 = &kCFTypeArrayCallBacks;
      goto LABEL_3;
    }

    v13 = atomic_load(theArray + 1);
    v14 = v13 & 3;
    if (v14)
    {
      v15 = 0;
    }

    else
    {
      v15 = (theArray + 48);
    }

    if (v14 == 2)
    {
      v7 = (theArray + 48);
    }

    else
    {
      v7 = v15;
    }
  }

  else
  {
    v7 = &__kCFNullArrayCallBacks;
  }

LABEL_3:
  if (!length)
  {
    return -1;
  }

  for (i = length + location - 1; ; --i)
  {
    --length;
    v9 = [(__CFArray *)theArray objectAtIndex:i];
    if (v9 == value)
    {
      break;
    }

    equal = v7->equal;
    if (equal && equal(value, v9))
    {
      return i;
    }

    if (!length)
    {
      return -1;
    }
  }

  return length + location;
}

uint64_t _CFPreferencesCopyKeyListWithContainer(__CFString *a1, const __CFString *a2, const void *a3, __CFString *a4)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v8 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesCopyKeyListWithContainer_cold_1();
    }

    v8 = [qword_1ED40BE18 copyPrefs];
  }

  v9 = [(_CFXPreferences *)v8 copyKeyListForIdentifier:a1 user:a2 host:a3 container:a4];

  return v9;
}

void _CFXPreferencesReplaceValuesInNamedVolatileSource()
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v0 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      dispatch_once(&qword_1ED40BE20, &__block_literal_global_263);
    }

    v0 = [qword_1ED40BE18 copyPrefs];
  }

  v1 = v0;
  [_CFXPreferences replaceValuesInVolatileSourceNamed:v0 withValues:?];
}

uint64_t _CFPlatformExecutableLinkedOnOrAfter(unint64_t a1, unsigned int a2)
{
  if (a2 != 6)
  {
    _CFBuildVersionForCFSystemVersion(a1, a2);
  }

  return dyld_program_sdk_at_least();
}

uint64_t CFReadStreamCreateWithData(const __CFAllocator *a1, const __CFData *a2)
{
  v11[3] = *MEMORY[0x1E69E9840];
  v11[1] = 0;
  v11[2] = 0;
  Copy = CFDataCreateCopy(a1, a2);
  v11[0] = Copy;
  v8 = _CFStreamCreateWithConstantCallbacks(a1, v11, readDataCallBacks, 1, v4, v5, v6, v7);
  CFRelease(Copy);
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

uint64_t CFPREFERENCES_IS_WAITING_FOR_DIRECT_CFPREFSD(const os_unfair_lock *a1, uint64_t a2)
{
  os_unfair_lock_assert_not_owner(a1 + 18);
  os_unfair_lock_assert_not_owner(a1 + 19);
  os_unfair_lock_assert_not_owner(a1 + 20);
  return (*(a2 + 16))(a2);
}

os_unfair_lock_s *__directCFPrefsD_block_invoke()
{
  v0 = [CFPrefsDaemon alloc];
  if (__CFProcessIsRestricted())
  {
    v1 = 0;
  }

  else
  {
    v1 = getenv("__CFPreferencesTestDaemon") != 0;
  }

  result = [(CFPrefsDaemon *)v0 initWithRole:v1 testMode:?];
  qword_1ED40BE08 = result;
  return result;
}

unint64_t _CFNumberFormatterGetFormatter(unint64_t *a1)
{
  __CFCheckCFInfoPACSignature(a1);
  v2 = _CFGetNonObjCTypeID(a1);
  if (v2 != 57)
  {
    _CFAssertMismatchedTypeID(0x39uLL, v2);
  }

  return a1[2];
}

uint64_t CFUniCharCompatibilityDecompose(int *a1, uint64_t a2, uint64_t a3)
{
  v3 = a2;
  v18 = *MEMORY[0x1E69E9840];
  if (a2 >= 1)
  {
    v5 = a1;
    v6 = &a1[a2];
    do
    {
      v7 = *v5;
      if (CFUniCharIsMemberOf(*v5, 0x64u))
      {
        v8 = __CFUniCharRecursivelyCompatibilityDecomposeCharacter(v7, v17);
        v3 = v3 + v8 - 1;
        if (v3 > a3)
        {
          v3 = 0;
          break;
        }

        if (v8 > 1)
        {
          if (v6 <= (v5 + 1))
          {
            goto LABEL_10;
          }

          v9 = v6;
          v10 = v6;
          do
          {
            v11 = *(v10 - 4);
            v10 -= 4;
            *(v9 + 4 * v8 - 8) = v11;
            v9 = v10;
          }

          while (v10 > (v5 + 1));
        }

        if (v8 >= 1)
        {
LABEL_10:
          v12 = v8 + 1;
          v13 = v17;
          do
          {
            v14 = *v13++;
            *v5++ = v14;
            --v12;
          }

          while (v12 > 1);
        }
      }

      else
      {
        ++v5;
      }
    }

    while (v5 < v6);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t __CFBinaryHeapCreateInit(__objc2_class **a1, const void **a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Instance = _CFRuntimeCreateInstance(a1, 0x17uLL, 104, 0, a5, a6, a7, a8);
  v14 = Instance;
  if (Instance)
  {
    *(Instance + 24) = 4;
    Typed = CFAllocatorAllocateTyped(a1, 32, 0x80040B8603338, 0);
    *(v14 + 112) = Typed;
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
      Typed = *(v14 + 112);
    }

    if (Typed)
    {
      if (a4)
      {
        *(v14 + 40) = *(a4 + 8);
        *(v14 + 56) = *(a4 + 24);
      }

      if (a5)
      {
        v16 = *a5;
        v17 = *(a5 + 16);
        *(v14 + 104) = *(a5 + 32);
        *(v14 + 88) = v17;
        *(v14 + 72) = v16;
      }

      v18 = atomic_load((v14 + 8));
      v19 = v18;
      do
      {
        atomic_compare_exchange_strong((v14 + 8), &v19, v18 & 0xFFFFFFFFFFFFFFF3 | 4);
        v20 = v19 == v18;
        v18 = v19;
      }

      while (!v20);
      if (a3 >= 1)
      {
        do
        {
          v21 = *a2++;
          CFBinaryHeapAddValue(v14, v21);
          --a3;
        }

        while (a3);
      }

      v22 = atomic_load((v14 + 8));
      v23 = v22;
      do
      {
        atomic_compare_exchange_strong((v14 + 8), &v23, v22 & 0xFFFFFFFFFFFFFFF3 | 4);
        v20 = v23 == v22;
        v22 = v23;
      }

      while (!v20);
    }

    else
    {
      CFRelease(v14);
      return 0;
    }
  }

  return v14;
}

uint64_t __CFUniCharRecursivelyCompatibilityDecomposeCharacter(unsigned int a1, _DWORD *a2)
{
  v20 = *MEMORY[0x1E69E9840];
  if (a1 - 130042 >= 0xFFFE04A6)
  {
    v3 = &__CFUniCharCompatibilityDecompositionTable;
    v4 = &__CFUniCharCompatibilityDecompositionTable + 30648;
    while (1)
    {
      v5 = &v3[8 * ((v4 - v3) >> 4)];
      if (*v5 <= a1)
      {
        break;
      }

      v4 = v5 - 8;
LABEL_7:
      if (v3 > v4)
      {
        goto LABEL_8;
      }
    }

    if (*v5 < a1)
    {
      v3 = v5 + 8;
      goto LABEL_7;
    }

    v9 = *(v5 + 1);
    v6 = (v9 >> 24) & 0x1F;
    v10 = v9 & 0xFFFFFF;
    v19 = v10;
    if (v6)
    {
      v11 = (&__CFUniCharCompatibilityMultipleDecompositionTable + 4 * v10);
      if (v6 == 1)
      {
        v12 = &v19;
      }

      else
      {
        v12 = v11;
      }

      v13 = v6 + 1;
      v14 = 33 - v6;
      while (1)
      {
        v16 = *v12++;
        v15 = v16;
        BitmapPtrForPlane = &__CFUniCharCanonicalDecomposableCharacterSetBitmapPlane0_0;
        if (v16 < 0x10000 || (BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(9u, BYTE2(v15))) != 0) && ((BitmapPtrForPlane[v15 >> 3] >> (v15 & 7)))
        {
          v18 = __CFUniCharRecursivelyDecomposeCharacter(v15, a2, v14);
        }

        else
        {
          if (!CFUniCharIsMemberOf(v15, 0x64u))
          {
            *a2++ = v15;
            goto LABEL_23;
          }

          v18 = __CFUniCharRecursivelyCompatibilityDecomposeCharacter(v15, a2);
        }

        a2 += v18;
        v6 = v6 + v18 - 1;
LABEL_23:
        --v13;
        ++v14;
        if (v13 <= 1)
        {
          goto LABEL_9;
        }
      }
    }
  }

LABEL_8:
  v6 = 0;
LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t ___canDup_block_invoke()
{
  getpid();
  v0 = *MEMORY[0x1E69E9BD0];
  result = sandbox_check();
  if (result)
  {
    _canDup_canDup = 1;
  }

  return result;
}

BOOL CFPreferencesIsManaged(__CFString *a1, int a2)
{
  v3 = a1;
  if (CFEqual(a1, @"kCFPreferencesAnyUser") || CFEqual(v3, @"kCFPreferencesCurrentUser") && !cfprefsdEuid())
  {
    return _CFPrefsIsUserManaged(@"kCFPreferencesAnyUser", a2);
  }

  if (CFEqual(v3, @"kCFPreferencesCurrentUser"))
  {
    if (_CFPrefsCurrentProcessIsCFPrefsD())
    {
      v5 = _CFPrefsDCopyCurrentUserName();
    }

    else
    {
      v5 = CFCopyUserName();
    }

    v3 = v5;
  }

  else
  {
    CFRetain(v3);
  }

  IsUserManaged = _CFPrefsIsUserManaged(v3, a2);
  CFRelease(v3);
  return IsUserManaged;
}

BOOL _CFPrefsIsUserManaged(__CFString *a1, int a2)
{
  v14 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&managedPreferencesLock);
  ManagedStateCache = locked_getManagedStateCache(a2);
  Value = CFDictionaryGetValue(ManagedStateCache, a1);
  *valuePtr = 0;
  if (!Value || !CFNumberGetValue(Value, kCFNumberIntType, valuePtr) || (v6 = *valuePtr) == 0)
  {
    bzero(valuePtr, 0x400uLL);
    if (_CFPrefsGetPathForManagedBundleID(0, a1, a2, valuePtr))
    {
      memset(&v12, 0, sizeof(v12));
      if (stat(valuePtr, &v12))
      {
        v6 = 2;
      }

      else
      {
        v6 = 1;
      }
    }

    else
    {
      v6 = 0;
    }

    v7 = _CFPrefsClientLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
    {
      _CFPrefsIsUserManaged_cold_1(v6, a1, v7);
    }

    v12.st_dev = v6;
    v8 = locked_getManagedStateCache(a2);
    v9 = CFNumberCreate(&__kCFAllocatorSystemDefault, kCFNumberIntType, &v12);
    CFDictionarySetValue(v8, a1, v9);
    CFRelease(v9);
  }

  os_unfair_lock_unlock(&managedPreferencesLock);
  result = v6 == 1;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

CFMutableDictionaryRef locked_getManagedStateCache(int a1)
{
  if (a1)
  {
    v1 = &locked_getManagedStateCache_knownContainerizedManagedPrefsStates;
  }

  else
  {
    v1 = &locked_getManagedStateCache_knownManagedPrefsStates;
  }

  result = *v1;
  if (!*v1)
  {
    result = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    *v1 = result;
  }

  return result;
}

CFStringEncoding CFStringConvertIANACharSetNameToEncoding(CFStringRef theString)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = __CFDefaultEightBitStringEncoding;
  if (__CFDefaultEightBitStringEncoding == -1)
  {
    v2 = __CFStringComputeEightBitStringEncoding();
  }

  CStringPtr = CFStringGetCStringPtr(theString, v2);
  if (!CStringPtr)
  {
    v4 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v4 = __CFStringComputeEightBitStringEncoding();
    }

    CStringPtr = buffer;
    if (!CFStringGetCString(theString, buffer, 100, v4))
    {
LABEL_10:
      result = -1;
      goto LABEL_11;
    }
  }

  result = __CFStringEncodingGetFromCanonicalName(CStringPtr);
  if (result == -1)
  {
    result = __CFStringEncodingGetFromICUName(CStringPtr);
    if (result == -1)
    {
      if (!strncasecmp(CStringPtr, "ms950", 5uLL))
      {
        result = __CFStringEncodingGetFromCanonicalName("cp950");
        goto LABEL_11;
      }

      goto LABEL_10;
    }
  }

LABEL_11:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFStringEncodingGetFromCanonicalName(const char *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (!strncasecmp_l(a1, "iso-8859-", 9uLL, 0))
  {
    v7 = strtol(a1 + 9, 0, 10);
    if ((v7 - 17) < 0xFFFFFFF0)
    {
      result = 0xFFFFFFFFLL;
    }

    else
    {
      result = (v7 + 512);
    }

LABEL_19:
    v8 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (strncasecmp_l(a1, "cp", 2uLL, 0))
  {
    if (strncasecmp_l(a1, "windows-", 8uLL, 0))
    {
      os_unfair_lock_lock_with_options();
      if (!__CFStringEncodingGetFromCanonicalName_mappingTable)
      {
        v12 = *byte_1EF067AF0;
        __CFStringEncodingGetFromCanonicalName_mappingTable = CFDictionaryCreateMutable(0, 0, &v12, 0);
        CFDictionarySetValue(__CFStringEncodingGetFromCanonicalName_mappingTable, "utf-7", 0x4000100);
        CFDictionarySetValue(__CFStringEncodingGetFromCanonicalName_mappingTable, "utf-8", 0x8000100);
        CFDictionarySetValue(__CFStringEncodingGetFromCanonicalName_mappingTable, "utf-16", 0x100);
        CFDictionarySetValue(__CFStringEncodingGetFromCanonicalName_mappingTable, "utf-16be", 0x10000100);
        CFDictionarySetValue(__CFStringEncodingGetFromCanonicalName_mappingTable, "utf-16le", 0x14000100);
        CFDictionarySetValue(__CFStringEncodingGetFromCanonicalName_mappingTable, "utf-32", 0xC000100);
        CFDictionarySetValue(__CFStringEncodingGetFromCanonicalName_mappingTable, "utf-32be", 0x18000100);
        CFDictionarySetValue(__CFStringEncodingGetFromCanonicalName_mappingTable, "utf-32le", 0x1C000100);
        for (i = 0; i != 98; ++i)
        {
          v3 = __CFCanonicalNameList[i];
          if (v3)
          {
            CFDictionarySetValue(__CFStringEncodingGetFromCanonicalName_mappingTable, v3, __CFKnownEncodingList[i]);
          }
        }
      }

      os_unfair_lock_unlock(&__CFStringEncodingGetFromCanonicalName_lock);
      result = strncasecmp_l(a1, "macintosh", 9uLL, 0);
      if (result)
      {
        v5 = __CFStringEncodingGetFromCanonicalName_mappingTable;
        if (strncasecmp_l(a1, "x-mac-", 6uLL, 0))
        {
          v6 = 0;
        }

        else
        {
          v6 = 6;
        }

        LODWORD(result) = CFDictionaryGetValue(v5, &a1[v6]);
        if (result)
        {
          result = result;
        }

        else
        {
          result = 0xFFFFFFFFLL;
        }
      }

      goto LABEL_19;
    }

    v9 = a1 + 8;
  }

  else
  {
    v9 = a1 + 2;
  }

  v10 = strtol(v9, 0, 10);
  v11 = *MEMORY[0x1E69E9840];

  return __CFStringEncodingGetFromWindowsCodePage(v10);
}

void *CFBurstTrieCreateCursorForBytes(uint64_t a1, unsigned __int8 *a2, size_t a3)
{
  v6 = malloc_type_calloc(0x21uLL, 1uLL, 0x1020040FF696577uLL);
  if (!CFBurstTrieSetCursorForBytes(a1, v6, a2, a3) && v6)
  {
    free(v6);
    return 0;
  }

  return v6;
}

uint64_t CFBurstTrieSetCursorForBytes(uint64_t a1, uint64_t *a2, unsigned __int8 *a3, size_t a4)
{
  v4 = *(a1 + 2056);
  if (!v4)
  {
    return 0;
  }

  result = 0;
  if ((a4 & 0x8000000000000000) == 0 && (*(a1 + 2072) & 0x18) != 0)
  {
    *(a2 + 25) = a1;
    result = 1;
    *(a2 + 17) = 1;
    *a2 = *(v4 + 4);
    *(a2 + 9) = 0;
    *(a2 + 4) = 0;
    if (a3)
    {
      if (a4)
      {
        return CFBurstTrieCursorAdvanceForBytes(a2, a3, a4);
      }
    }
  }

  return result;
}

uint64_t advanceMapCursor(uint64_t a1, int *a2, unsigned __int8 *a3, size_t a4)
{
  v7 = *a2;
  v8 = *a2 & 3;
  if (v8 <= 1)
  {
    if (!v8)
    {
      if (v7 == *(*(a1 + 2056) + 4))
      {
        v9 = advanceCursorMappedLevel(a1, a2, a3, a4);
        return v9 & 1;
      }

      goto LABEL_85;
    }

    v16 = advanceCursorMappedLevel(a1, a2, a3, a4);
LABEL_15:
    v9 = v16 != 0;
    return v9 & 1;
  }

  if (v8 != 2)
  {
    v9 = 0;
    if (!a3 || (a4 & 0x8000000000000000) != 0)
    {
      return v9 & 1;
    }

    v17 = (*(a1 + 2056) + (v7 & 0xFFFFFFFC));
    if (!a4)
    {
      v23 = v17[4].i32[0];
      goto LABEL_23;
    }

    v18 = *a3;
    v19 = v18 >> 6;
    v20 = v17[v18 >> 6];
    v21 = 1 << v18;
    if (((1 << v18) & *&v20) != 0)
    {
      if (v18 >= 0x40)
      {
        v22 = 0;
        v40 = v17;
        do
        {
          v41 = *v40++;
          v42 = vcnt_s8(v41);
          v42.i16[0] = vaddlv_u8(v42);
          v22 += v42.i32[0];
          --v19;
        }

        while (v19);
      }

      else
      {
        v22 = 0;
      }

      v43 = vcnt_s8(((v21 - 1) & *&v20));
      v43.i16[0] = vaddlv_u8(v43);
      *a2 = v17[4].i32[v22 + v43.i32[0] + 1];
      v16 = advanceMapCursor();
      goto LABEL_15;
    }

LABEL_85:
    v9 = 0;
    return v9 & 1;
  }

  v9 = 0;
  if (!a3 || (a4 & 0x8000000000000000) != 0)
  {
    return v9 & 1;
  }

  v10 = *(a1 + 2056) + (v7 & 0xFFFFFFFC);
  v11 = *v10 - 4;
  if (*v10 == 4)
  {
    goto LABEL_85;
  }

  v12 = *(a1 + 2072);
  if ((v12 & 8) != 0)
  {
    if (a4)
    {
      v24 = 0;
      v25 = v10 + 4;
      v26 = *(a2 + 16);
      while (1)
      {
        v27 = a3[v24];
        if ((v26 & 1) == 0)
        {
          break;
        }

        v28 = a2[1];
        v29 = (v25 + v28);
        if (v28 || (v30 = *(v29 + 1), *(v29 + 1)))
        {
          v31 = a2[2];
          v32 = v29[v31 + 7];
          if (v32 == v27)
          {
            v33 = v31 + 1;
            goto LABEL_48;
          }

          if (v32 > v27)
          {
            v9 = 0;
            a2[2] = v31 + 1;
            return v9 & 1;
          }

          v30 = v31 + *v29;
          LODWORD(v28) = v28 + *(v29 + 1) + 7;
          goto LABEL_35;
        }

        LODWORD(v28) = 0;
LABEL_36:
        v34 = *v10 - 4;
        if (v28 >= v34)
        {
          goto LABEL_85;
        }

        while (1)
        {
          v35 = (v25 + v28);
          v36 = *v35;
          v37 = v30 >= v36;
          if (v30 > v36)
          {
            goto LABEL_85;
          }

          v38 = *(v35 + 1);
          if (v37)
          {
            if (!*(v35 + 1))
            {
              LODWORD(v28) = v28 + 7;
              goto LABEL_44;
            }

            v39 = v35[7];
            if (v39 > v27)
            {
              goto LABEL_85;
            }

            if (v39 >= v27)
            {
              break;
            }
          }

          LODWORD(v28) = v28 + v38 + 7;
LABEL_44:
          v9 = 0;
          a2[1] = v28;
          if (v28 >= v34)
          {
            return v9 & 1;
          }
        }

        v33 = 1;
LABEL_48:
        a2[2] = v33;
        v26 = 1;
        *(a2 + 16) = 1;
        if (++v24 == a4)
        {
          v58 = v25 + v28;
          a2[3] = 0;
          v59 = *(v58 + 1);
          if (v28 | v33 | v59)
          {
            v60 = v33 == v59;
          }

          else
          {
            v60 = 1;
          }

          if (!v60)
          {
            goto LABEL_24;
          }

          v23 = *(v58 + 3);
LABEL_23:
          a2[3] = v23;
          goto LABEL_24;
        }
      }

      LODWORD(v28) = 0;
      v30 = 0;
LABEL_35:
      a2[1] = v28;
      goto LABEL_36;
    }

    if (*(a2 + 16) == 1)
    {
      v44 = a2[2];
      v45 = a2[1] == 0;
    }

    else
    {
      v49 = 0;
      a2[1] = 0;
      a2[2] = 0;
      if (!*(v10 + 4))
      {
        v49 = *(v10 + 5) == 0;
      }

      v44 = 0;
      *(a2 + 16) = v49;
      v45 = 1;
    }

    a2[3] = 0;
    if (v45 && !v44)
    {
      if (!*(v10 + 5))
      {
LABEL_67:
        v23 = *(v10 + 7);
        goto LABEL_23;
      }

      v44 = 0;
    }

    if (v44 != *(v10 + 5))
    {
      goto LABEL_24;
    }

    goto LABEL_67;
  }

  if ((v12 & 0x10) == 0)
  {
    goto LABEL_85;
  }

  v13 = *(a2 + 16);
  if (!a4)
  {
    if (a2[4])
    {
      a2[3] = 0;
      v46 = a2 + 3;
      v47 = a2[2];
      if (a2[1])
      {
        v48 = *(v10 + 4);
        goto LABEL_91;
      }

      v48 = *(v10 + 4);
      if (v47)
      {
LABEL_91:
        if (v47 != v48)
        {
          goto LABEL_24;
        }

LABEL_92:
        v57 = (v10 + 6);
        goto LABEL_93;
      }
    }

    else
    {
      a2[3] = 0;
      v46 = a2 + 3;
      *(a2 + 1) = 0;
      v48 = *(v10 + 4);
      *(a2 + 16) = *(v10 + 4) == 0;
    }

    if (!v48)
    {
      goto LABEL_92;
    }

    v47 = 0;
    goto LABEL_91;
  }

  if (a2[4])
  {
    v14 = a2[1];
    v15 = a2[2];
    v62 = (v10 + v14 + 10);
  }

  else
  {
    v15 = 0;
    v62 = 0;
    LODWORD(v14) = a2[1];
  }

  if (v14 >= v11)
  {
    goto LABEL_85;
  }

  v50 = v10 + 4;
  v61 = a4 + v15;
  while (1)
  {
    v51 = (v50 + v14);
    v52 = *v51;
    if (*v51)
    {
      break;
    }

    LODWORD(v14) = v14 + 6;
LABEL_83:
    v9 = 0;
    a2[1] = v14;
    if (v14 >= v11)
    {
      return v9 & 1;
    }
  }

  if (v52 <= v15)
  {
    goto LABEL_85;
  }

  if (v15)
  {
    v53 = memcmp(v51 + 3, v62, v15);
    if (v53 > 0)
    {
      goto LABEL_85;
    }

    if (v53)
    {
LABEL_82:
      LODWORD(v14) = v14 + v52 + 6;
      goto LABEL_83;
    }
  }

  v54 = v51 + v15 + 6;
  if (v61 > v52)
  {
    if (memcmp(v54, a3, v52 - v15) > 0)
    {
      goto LABEL_85;
    }

    goto LABEL_82;
  }

  v55 = memcmp(v54, a3, a4);
  if (v55 > 0)
  {
    goto LABEL_85;
  }

  if (v55)
  {
    goto LABEL_82;
  }

  a2[3] = 0;
  v46 = a2 + 3;
  v9 = 1;
  *(v46 + 4) = 1;
  *(v46 - 1) = v61;
  if (v61 == v52)
  {
    v57 = (v51 + 1);
LABEL_93:
    *v46 = *v57;
LABEL_24:
    v9 = 1;
  }

  return v9 & 1;
}

uint64_t advanceCursorMappedLevel(uint64_t a1, _DWORD *a2, unsigned __int8 *a3, uint64_t a4)
{
  v4 = 0;
  if (a3 && (a4 & 0x8000000000000000) == 0)
  {
    v5 = (*a2 & 0xFFFFFFFC) + *(a1 + 2056);
    if (a4)
    {
      *a2 = *(v5 + 4 * *a3);
      return advanceMapCursor();
    }

    a2[3] = *(v5 + 1024);
    return 1;
  }

  return v4;
}

uint64_t CFBurstTrieCursorAdvanceForBytes(uint64_t *a1, unsigned __int8 *a2, size_t a3)
{
  if (*(a1 + 17) != 1)
  {
    return 0;
  }

  v4 = *a1;
  v5 = *(a1 + 16);
  v6 = *(a1 + 2);
  v7 = *(a1 + 3);
  result = advanceMapCursor(*(a1 + 25), a1, a2, a3);
  if (result)
  {
    return 1;
  }

  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 2) = v6;
  *(a1 + 3) = v7;
  return result;
}

void CFBurstTrieCursorRelease(void *a1)
{
  if (a1)
  {
    free(a1);
  }
}

CFTypeRef _CFBundleCopyXPCBootstrapMainBundleLanguages()
{
  if (_CFBundleCopyXPCBootstrapMainBundleLanguages_onceToken != -1)
  {
    _CFBundleCopyXPCBootstrapMainBundleLanguages_cold_1();
  }

  result = _CFBundleCopyXPCBootstrapMainBundleLanguages_result;
  if (_CFBundleCopyXPCBootstrapMainBundleLanguages_result)
  {

    return CFRetain(result);
  }

  return result;
}

CFDateRef _CFPropertyListCreateFromXMLString(const __CFAllocator *a1, const __CFString *a2, int a3, CFStringRef *a4, char a5, void *a6)
{
  err[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    *a4 = 0;
  }

  err[0] = 0;
  v7 = _CFPropertyListCreateFromXMLStringError(a1, a2, a3, err, a5, a6);
  v8 = err[0];
  if (a4 && err[0])
  {
    v9 = CFErrorCopyUserInfo(err[0]);
    value = 0;
    ValueIfPresent = CFDictionaryGetValueIfPresent(v9, @"kCFPropertyListOldStyleParsingError", &value);
    v11 = CFDictionaryGetValue(v9, @"NSDebugDescription");
    v12 = v11;
    if (ValueIfPresent)
    {
      v13 = CFErrorCopyUserInfo(value);
      v14 = CFDictionaryGetValue(v9, @"NSDebugDescription");
      v12 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"XML parser error:\n\t%@\nOld-style plist parser error:\n\t%@\n", v12, v14);
      CFRelease(v13);
    }

    else if (v11)
    {
      CFRetain(v11);
    }

    CFRelease(v9);
    *a4 = v12;
    v8 = err[0];
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v15 = *MEMORY[0x1E69E9840];
  return v7;
}

CFDataRef _createUTF8DataFromString(const __CFAllocator *a1, CFStringRef theString)
{
  maxBufLen[1] = *MEMORY[0x1E69E9840];
  maxBufLen[0] = 0;
  v8.length = CFStringGetLength(theString);
  v8.location = 0;
  CFStringGetBytes(theString, v8, 0x8000100u, 0, 0, 0, 0, maxBufLen);
  Typed = CFAllocatorAllocateTyped(a1, maxBufLen[0], 0x100004077774924, 0);
  v9.length = CFStringGetLength(theString);
  v9.location = 0;
  CFStringGetBytes(theString, v9, 0x8000100u, 0, 0, Typed, maxBufLen[0], 0);
  result = CFDataCreateWithBytesNoCopy(a1, Typed, maxBufLen[0], a1);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CFDateRef _CFPropertyListCreateFromXMLStringError(const __CFAllocator *a1, const __CFString *a2, int a3, void *a4, char a5, void *a6)
{
  v15[1] = *MEMORY[0x1E69E9840];
  UTF8DataFromString = _createUTF8DataFromString(a1, a2);
  v15[0] = 0;
  _CFPropertyListCreateFromUTF8Data(a1, UTF8DataFromString, 0, a2, 0, a3, a4, a5, a6, 0, v15, 1, 1);
  if (UTF8DataFromString)
  {
    CFRelease(UTF8DataFromString);
  }

  result = v15[0];
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

const void *__CFCreateOldStylePropertyListOrStringsFile(const __CFAllocator *a1, CFDataRef theData, CFTypeRef cf, CFStringEncoding a4, int a5, CFErrorRef *a6, void *a7)
{
  v41 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v11 = CFRetain(cf);
  }

  else
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    v11 = CFStringCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, BytePtr, Length, a4, 0, &__kCFAllocatorNull);
    if (!v11)
    {
      if (a6)
      {
        v24 = 0;
        *a6 = __CFPropertyListCreateError(3840, @"Conversion of string failed.");
        goto LABEL_21;
      }

LABEL_20:
      v24 = 0;
      goto LABEL_21;
    }
  }

  v16 = CFStringGetLength(v11);
  if (!v16)
  {
    if (a6)
    {
      *a6 = __CFPropertyListCreateError(3840, @"Conversion of string failed. The string is empty.");
    }

    goto LABEL_19;
  }

  v17 = v16;
  CharactersPtr = CFStringGetCharactersPtr(v11);
  v19 = CharactersPtr;
  if (CharactersPtr)
  {
    v39 = 0;
    v34 = CharactersPtr;
    if (!__OFADD__(CharactersPtr, v17))
    {
      v23 = CharactersPtr;
      goto LABEL_22;
    }

    v20 = &unk_1EA849000;
    v21 = "Unable to address entirety of CFPropertyList";
    goto LABEL_18;
  }

  Typed = CFAllocatorAllocateTyped(a1, 2 * v17, 0x1000040BDFB0063, 0);
  if (!Typed)
  {
    v20 = &unk_1EA849000;
    v21 = "CFPropertyList ran out of memory while attempting to allocate temporary storage.";
LABEL_18:
    v20[326] = v21;
LABEL_19:
    CFRelease(v11);
    goto LABEL_20;
  }

  v23 = Typed;
  v42.location = 0;
  v42.length = v17;
  CFStringGetCharacters(v11, v42, Typed);
  CFRelease(v11);
  v39 = 0;
  v34 = v23;
  if (__OFADD__(v23, v17))
  {
    qword_1EA849A30 = "Unable to address entirety of CFPropertyList";
LABEL_31:
    CFAllocatorDeallocate(a1, v23);
    goto LABEL_20;
  }

  v11 = 0;
LABEL_22:
  v35 = v23;
  v36 = &v23[v17];
  v38 = a1;
  LODWORD(v39) = a5;
  Mutable = CFSetCreateMutable(a1, 0, &kCFTypeSetCallBacks);
  if (!Mutable)
  {
    qword_1EA849A30 = "CFPropertyList ran out of memory while attempting to allocate temporary storage.";
    if (!v19)
    {
      goto LABEL_31;
    }

    goto LABEL_19;
  }

  cfa = 0;
  if (advanceToNonSpace(&v34))
  {
    v27 = parsePlistObject(&v34, 1, 0);
    if (!v27)
    {
LABEL_40:
      Error = cfa;
      if (!a6)
      {
        if (cfa)
        {
          CFRelease(cfa);
        }

        v24 = 0;
        if (!v19)
        {
          goto LABEL_36;
        }

        goto LABEL_45;
      }

      if (!cfa)
      {
        v33 = lineNumberStrings(&v34);
        Error = __CFPropertyListCreateError(3840, @"Unknown error parsing property list around line %d", v33);
      }

      v24 = 0;
      *a6 = Error;
      goto LABEL_44;
    }

    v24 = v27;
    if (!advanceToNonSpace(&v34))
    {
      goto LABEL_34;
    }

    v28 = CFGetTypeID(v24);
    TypeID = CFStringGetTypeID();
    CFRelease(v24);
    if (v28 != TypeID)
    {
      if (cfa)
      {
        CFRelease(cfa);
      }

      v31 = lineNumberStrings(&v34);
      cfa = __CFPropertyListCreateError(3840, @"Junk after plist at line %d", v31);
      goto LABEL_40;
    }

    if (cfa)
    {
      CFRelease(cfa);
      cfa = 0;
    }

    v35 = v23;
    v30 = parsePlistDictContent(&v34, 0);
  }

  else
  {
    v30 = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v24 = v30;
  if (!v30)
  {
    goto LABEL_40;
  }

LABEL_34:
  if (!a7)
  {
LABEL_44:
    if (!v19)
    {
      goto LABEL_36;
    }

    goto LABEL_45;
  }

  *a7 = 1;
  if (!v19)
  {
LABEL_36:
    CFAllocatorDeallocate(a1, v23);
    goto LABEL_46;
  }

LABEL_45:
  CFRelease(v11);
LABEL_46:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_21:
  v25 = *MEMORY[0x1E69E9840];
  return v24;
}

uint64_t advanceToNonSpace(uint64_t a1)
{
  v2 = *(a1 + 8);
  v1 = *(a1 + 16);
  if (v2 >= v1)
  {
    return 0;
  }

  while (1)
  {
    v3 = v2 + 1;
    v4 = *v2;
    v5 = (v4 - 9) >= 5 && (v4 - 8232) >= 2;
    if (!v5 || v4 == 32)
    {
      goto LABEL_6;
    }

    if (v4 != 47 || v3 >= v1)
    {
      break;
    }

    v6 = *v3;
    if (v6 == 42)
    {
      v3 = v2 + 2;
      if ((v2 + 2) < v1)
      {
        v2 += 2;
        while (1)
        {
          v10 = *v2++;
          v11 = v10 != 42 || v2 >= v1;
          if (!v11 && *v2 == 47)
          {
            break;
          }

          v3 = v2;
          if (v2 >= v1)
          {
            goto LABEL_7;
          }
        }

        v2 = v3 + 2;
        goto LABEL_7;
      }

LABEL_6:
      v2 = v3;
      goto LABEL_7;
    }

    if (v6 != 47)
    {
      break;
    }

    for (v2 += 2; v2 < v1; ++v2)
    {
      v7 = *v2;
      v8 = (v7 - 8232) < 2 || v7 == 10;
      if (v8 || v7 == 13)
      {
        break;
      }
    }

LABEL_7:
    if (v2 >= v1)
    {
      v12 = 0;
      goto LABEL_36;
    }
  }

  v12 = 1;
LABEL_36:
  *(a1 + 8) = v2;
  return v12;
}

__CFString *parsePlistObject(uint64_t a1, int a2, unsigned int a3)
{
  v46 = *MEMORY[0x1E69E9840];
  if (a3 >= 0x201)
  {
    v36 = lineNumberStrings(a1);
    Error = __CFPropertyListCreateError(3840, @"Too many nested arrays or dictionaries at line %d", v36);
    goto LABEL_3;
  }

  if (!advanceToNonSpace(a1))
  {
    if (a2)
    {
      Error = __CFPropertyListCreateError(3840, @"Unexpected EOF while parsing plist");
      goto LABEL_3;
    }

LABEL_88:
    v7 = 0;
LABEL_6:
    v8 = *MEMORY[0x1E69E9840];
    return v7;
  }

  v12 = *(a1 + 8);
  v14 = *v12;
  v13 = *v12;
  *(a1 + 8) = v12 + 1;
  if (v14 > 39)
  {
    if (v13 == 40)
    {
      Mutable = CFArrayCreateMutable(*(a1 + 32), 0, &kCFTypeArrayCallBacks);
      if (!Mutable)
      {
        Error = __CFPropertyListCreateError(3840, @"Unable to allocate array string while parsing plist");
        goto LABEL_3;
      }

      v7 = Mutable;
      v18 = parsePlistObject(a1, 0, a3 + 1);
      if (v18)
      {
        v19 = v18;
        do
        {
          CFArrayAppendValue(v7, v19);
          CFRelease(v19);
          if (!advanceToNonSpace(a1))
          {
            CFRelease(v7);
            v42 = lineNumberStrings(a1);
            Error = __CFPropertyListCreateError(3840, @"Expected ',' for array at line %d", v42);
            goto LABEL_3;
          }

          v20 = *(a1 + 8);
          if (*v20 != 44)
          {
            break;
          }

          *(a1 + 8) = v20 + 1;
          v19 = parsePlistObject(a1, 0, a3 + 1);
        }

        while (v19);
      }

      if (advanceToNonSpace(a1))
      {
        v15 = *(a1 + 8);
        if (*v15 == 41)
        {
          v21 = *(a1 + 24);
          if (v21)
          {
            CFRelease(v21);
            *(a1 + 24) = 0;
            v15 = *(a1 + 8);
          }

          goto LABEL_67;
        }
      }

      CFRelease(v7);
      v39 = lineNumberStrings(a1);
      Error = __CFPropertyListCreateError(3840, @"Expected terminating '' for array at line %d"), v39);
LABEL_3:
      v5 = Error;
      v6 = *(a1 + 24);
      if (v6)
      {
        CFRelease(v6);
      }

      v7 = 0;
      *(a1 + 24) = v5;
      goto LABEL_6;
    }

    if (v13 != 60)
    {
      if (v13 == 123)
      {
        v7 = parsePlistDictContent(a1, a3);
        if (!v7)
        {
          goto LABEL_6;
        }

        if (advanceToNonSpace(a1))
        {
          v15 = *(a1 + 8);
          if (*v15 == 125)
          {
            goto LABEL_67;
          }
        }

        CFRelease(v7);
        v37 = lineNumberStrings(a1);
        Error = __CFPropertyListCreateError(3840, @"Expected terminating '}' for dictionary at line %d", v37);
        goto LABEL_3;
      }

      goto LABEL_68;
    }

    v22 = CFDataCreateMutable(*(a1 + 32), 0);
    if (!v22)
    {
      v38 = lineNumberStrings(a1);
      Error = __CFPropertyListCreateError(3840, @"Unable to allocate data while parsing property list at line %d", v38);
      goto LABEL_3;
    }

    v7 = v22;
    v15 = *(a1 + 8);
    v23 = *(a1 + 16);
    if (v15 >= v23)
    {
      goto LABEL_63;
    }

LABEL_35:
    v24 = 0;
    while (1)
    {
      v25 = *v15;
      if (v25 == 62)
      {
LABEL_60:
        if (v24 < 0)
        {
          CFRelease(v7);
          if (v24 == -2)
          {
LABEL_84:
            v40 = lineNumberStrings(a1);
            v33 = __CFPropertyListCreateError(3840, @"Malformed data byte group at line %d; uneven length", v40);
          }

          else
          {
LABEL_94:
            v43 = lineNumberStrings(a1);
            v33 = __CFPropertyListCreateError(3840, @"Malformed data byte group at line %d; invalid hex", v43);
          }

          v34 = v33;
          v35 = *(a1 + 24);
          if (v35)
          {
            CFRelease(v35);
          }

          *(a1 + 24) = v34;
          goto LABEL_88;
        }

        if (v24)
        {
          CFDataAppendBytes(v7, bytes, v24);
          v15 = *(a1 + 8);
          v23 = *(a1 + 16);
          if (v15 < v23)
          {
            goto LABEL_35;
          }
        }

LABEL_63:
        v29 = *(a1 + 24);
        if (v29)
        {
          CFRelease(v29);
          *(a1 + 24) = 0;
          v15 = *(a1 + 8);
          v23 = *(a1 + 16);
        }

        if (v15 < v23 && *v15 == 62)
        {
LABEL_67:
          *(a1 + 8) = v15 + 1;
          goto LABEL_6;
        }

        CFRelease(v7);
        v41 = lineNumberStrings(a1);
        Error = __CFPropertyListCreateError(3840, @"Expected terminating '>' for data at line %d", v41);
        goto LABEL_3;
      }

      if ((v25 & 0xFE) - 48 <= 9)
      {
        break;
      }

      if ((v25 - 97) <= 5u)
      {
        v26 = v25 - 87;
LABEL_43:
        *(a1 + 8) = ++v15;
        if (v15 >= v23)
        {
          goto LABEL_83;
        }

        v27 = *v15;
        if ((*v15 & 0xFEu) - 48 > 9)
        {
          if ((v27 - 97) > 5u)
          {
            if ((v27 - 65) > 5u)
            {
              goto LABEL_83;
            }

            v28 = v27 - 55;
            goto LABEL_56;
          }

          v28 = v27 - 87;
        }

        else
        {
          v28 = v27 - 48;
LABEL_56:
          if (v28 == -1)
          {
LABEL_83:
            CFRelease(v7);
            goto LABEL_84;
          }
        }

        bytes[v24++] = v28 + 16 * v26;
        goto LABEL_58;
      }

      if ((v25 - 65) <= 5u)
      {
        v26 = v25 - 55;
LABEL_39:
        if (v26 != -1)
        {
          goto LABEL_43;
        }
      }

      if ((v25 > 0x20 || ((1 << v25) & 0x100002600) == 0) && v25 - 8232 >= 2)
      {
        CFRelease(v7);
        goto LABEL_94;
      }

LABEL_58:
      *(a1 + 8) = ++v15;
      if (v15 >= v23 || v24 >= 400)
      {
        goto LABEL_60;
      }
    }

    v26 = v25 - 48;
    goto LABEL_39;
  }

  if (v13 != 34 && v13 != 39)
  {
LABEL_68:
    v30 = (v13 - 48) >= 0xA && ((v13 & 0xFFDF) - 65) >= 0x1Au;
    if (!v30 || ((v13 - 36) <= 0x3B ? (v31 = ((1 << (v13 - 36)) & 0x800000000400E01) == 0) : (v31 = 1), !v31))
    {
      *(a1 + 8) = v12;
      v32 = *MEMORY[0x1E69E9840];

      return parseUnquotedPlistString(a1);
    }

    *(a1 + 8) = v12;
    if (a2)
    {
      v44 = lineNumberStrings(a1);
      Error = __CFPropertyListCreateError(3840, @"Unexpected character '0x%x' at line %d", v13, v44);
      goto LABEL_3;
    }

    goto LABEL_88;
  }

  v16 = *MEMORY[0x1E69E9840];

  return parseQuotedPlistString(a1, v13);
}

uint64_t lineNumberStrings(unint64_t *a1)
{
  v1 = *a1;
  v2 = a1[2];
  if (*a1 >= v2)
  {
    return 1;
  }

  v3 = a1[1];
  result = 1;
  do
  {
    if (v1 >= v3)
    {
      break;
    }

    v5 = *v1;
    if (v5 == 10)
    {
      result = (result + 1);
    }

    else if (v5 == 13)
    {
      result = (result + 1);
      if ((v1 + 1) < v2 && (v1 + 1) < v3 && v1[1] == 10)
      {
        ++v1;
      }
    }

    ++v1;
  }

  while (v1 < v2);
  return result;
}

void _CFPlugInUnscheduleForUnloading_cold_2()
{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_2_2();
  OUTLINED_FUNCTION_3_1(&dword_1830E6000, v0, v1, "PlugIn %{public}@ is now unscheduled for unloading", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

CFStringRef __CFBundleCopyDescription(uint64_t a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (v2 && CFURLGetFileSystemRepresentation(v2, 1u, buffer, 1026))
  {
    v3 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, buffer);
  }

  else
  {
    v3 = 0;
  }

  v4 = *(a1 + 48) - 2;
  v5 = &stru_1EF068AA8;
  v6 = &stru_1EF068AA8;
  if (v4 <= 3)
  {
    v6 = off_1E6D7D680[v4];
  }

  if (!*(a1 + 52))
  {
    v5 = @"not ";
  }

  if (*(a1 + 72))
  {
    v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"CFBundle/CFPlugIn %p <%@> (%@%@loaded)", a1, v3, v6, v5);
  }

  else
  {
    v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"CFBundle %p <%@> (%@%@loaded)", a1, v3, v6, v5);
  }

  v8 = v7;
  if (v3)
  {
    CFRelease(v3);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

CFStringRef __CFUUIDCopyFormattingDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);

  return CFUUIDCreateString(v2, a1);
}

__CFString *__CFDataCopyDescription(unint64_t *cf)
{
  v2 = cf[2];
  v3 = atomic_load(cf + 1);
  if ((v3 & 4) != 0)
  {
    v4 = ((cf + 63) & 0xFFFFFFFFFFFFFFF0);
  }

  else
  {
    v4 = cf[5];
  }

  v5 = CFGetAllocator(cf);
  Mutable = CFStringCreateMutable(v5, 0);
  v7 = CFGetAllocator(cf);
  CFStringAppendFormat(Mutable, 0, @"<CFData %p [%p]>{length = %lu, capacity = %lu, bytes = 0x", cf, v7, v2, cf[3]);
  if (v2 < 25)
  {
    if (v2 >= 1)
    {
      do
      {
        v11 = *v4++;
        CFStringAppendFormat(Mutable, 0, @"%02x", v11);
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v8 = 0;
    do
    {
      CFStringAppendFormat(Mutable, 0, @"%02x%02x%02x%02x", v4[v8], v4[v8 + 1], v4[v8 + 2], v4[v8 + 3]);
      v9 = v8 >= 0xC;
      v8 += 4;
    }

    while (!v9);
    CFStringAppend(Mutable, @" ... ");
    v10 = v2 - 8;
    do
    {
      CFStringAppendFormat(Mutable, 0, @"%02x%02x%02x%02x", v4[v10], v4[v10 + 1], v4[v10 + 2], v4[v10 + 3]);
      v10 += 4;
    }

    while (v10 < v2);
  }

  CFStringAppend(Mutable, @"}");
  return Mutable;
}

void __collatorFinalize(uint64_t a1)
{
  v2 = _CFGetTSD(8u);
  _CFSetTSD(9u, 0, 0);
  _CFSetTSD(8u, 0, 0);
  _CFSetTSD(0x11u, 0, 0);
  os_unfair_lock_lock_with_options();
  v3 = __CFDefaultCollatorsCount;
  if (__CFDefaultCollatorLocale == v2 && __CFDefaultCollatorsCount <= 7)
  {
    ++__CFDefaultCollatorsCount;
    __CFDefaultCollators[v3] = a1;
    os_unfair_lock_unlock(&__CFDefaultCollatorLock);
    if (!v2)
    {
      return;
    }

    goto LABEL_8;
  }

  os_unfair_lock_unlock(&__CFDefaultCollatorLock);
  if (a1)
  {
    ucol_close();
  }

  if (v2)
  {
LABEL_8:

    CFRelease(v2);
  }
}

CFTimeInterval CFRunLoopTimerGetInterval(CFRunLoopTimerRef timer)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (!CF_IS_OBJC(0x2FuLL, timer))
  {
    return *(timer + 14);
  }

  [(__CFRunLoopTimer *)timer timeInterval];
  return result;
}

void __CFXNotificationRegistrarDeallocate(uint64_t a1)
{
  v28 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (v2)
  {
    for (i = 0; i < v2; ++i)
    {
      v4 = *(*(a1 + 32) + 4 * i);
      if (v4 != -1)
      {
        v5 = *(*(a1 + 96) + 40 * v4 + 24);
        if (v5)
        {
          free(v5);
          v2 = *(a1 + 40);
        }
      }
    }
  }

  v6 = *(a1 + 96);
  if (v6)
  {
    v7 = *(a1 + 108);
    if (v7)
    {
      v8 = 0;
      v9 = 8;
      do
      {
        v10 = *(a1 + 96);
        if (*(v10 + v9))
        {
          _CFXNotificationRegistrarRemoveCachedName((v10 + v9));
          v7 = *(a1 + 108);
        }

        ++v8;
        v9 += 40;
      }

      while (v8 < v7);
      v6 = *(a1 + 96);
    }

    free(v6);
  }

  v11 = *(a1 + 120);
  if (v11)
  {
    if ((*(a1 + 24) & 2) != 0)
    {
      v12 = *(a1 + 132);
      if (v12)
      {
        v13 = 0;
        v14 = 8;
        do
        {
          v15 = *(a1 + 120);
          if (*(v15 + v14))
          {
            _CFXNotificationRegistrarRemoveCachedName((v15 + v14));
            v12 = *(a1 + 132);
          }

          ++v13;
          v14 += 32;
        }

        while (v13 < v12);
        v11 = *(a1 + 120);
      }
    }

    free(v11);
  }

  v16 = *(a1 + 156);
  if (v16)
  {
    v17 = 0;
    v18 = 44;
    do
    {
      v19 = *(a1 + 144);
      v20 = *(v19 + v18);
      if ((v20 & 0x8000) == 0)
      {
        if ((v20 & 0x400) != 0)
        {
          objc_destroyWeak((v19 + v18 - 36));
          v20 = *(v19 + v18);
        }

        memset(v27, 0, sizeof(v27));
        _CFXNotificationHandlerRelease((v19 + v18 - 28), v20, v27);
        _CFXNotificationDisposalListRelease(v27);
        v16 = *(a1 + 156);
      }

      ++v17;
      v18 += 56;
    }

    while (v17 < v16);
  }

  free(*(a1 + 144));
  v21 = *(a1 + 32);
  if (v21)
  {
    free(v21);
  }

  v22 = *(a1 + 48);
  if (v22)
  {
    free(v22);
  }

  v23 = *(a1 + 64);
  if (v23)
  {
    free(v23);
  }

  v24 = *(a1 + 88);
  if (v24)
  {
    v25 = *MEMORY[0x1E69E9840];

    CFRelease(v24);
  }

  else
  {
    v26 = *MEMORY[0x1E69E9840];
  }
}

CFStringRef __CFUUIDCopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = CFUUIDCreateString(v2, a1);
  v4 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<CFUUID %p> %@", a1, v3);
  CFRelease(v3);
  return v4;
}

void CFRunLoopPerformBlock_cold_1(uint64_t a1)
{
  if (_MergedGlobals_1)
  {
    v1 = _MergedGlobals_1 == a1;
  }

  else
  {
    v1 = 0;
  }

  if (v1 && qword_1ED40BDD8 != -1)
  {
    dispatch_once(&qword_1ED40BDD8, &__block_literal_global_56);
  }
}

id _CFLocaleCreateLikeCurrentWithBundleLocalizations(uint64_t a1, int a2)
{
  v2 = [NSLocale _currentLocaleWithBundleLocalizations:a1 disableBundleMatching:a2 != 0];

  return v2;
}

CFDictionaryRef _CFBundleCreateFilteredInfoPlist(uint64_t a1, void *a2, char a3)
{
  v19[1] = *MEMORY[0x1E69E9840];
  v6 = _CFBundleCopyInfoPlistURL(a1);
  if (v6)
  {
    v7 = v6;
    v8 = *(a1 + 55);
    v9 = CFURLCopyAbsoluteURL(v6);
    v10 = CFURLCopyFileSystemPath(v9, kCFURLPOSIXPathStyle);
    CFRelease(v9);
    if (v10 && (v18 = 0, v19[0] = 0, v11 = a3 & 1, v12 = _CFReadMappedFromFile(v10, v11, 0, v19, &v18, 0), CFRelease(v10), v12))
    {
      v13 = CFDataCreateWithBytesNoCopy(&__kCFAllocatorSystemDefault, v19[0], v18, &__kCFAllocatorNull);
      FilteredInfoPlistWithData = _CFBundleCreateFilteredInfoPlistWithData(v13, a2, v8, 0, v7);
      CFRelease(v13);
      if (v11)
      {
        munmap(v19[0], v18);
      }

      else
      {
        free(v19[0]);
      }
    }

    else
    {
      FilteredInfoPlistWithData = CFDictionaryCreate(&__kCFAllocatorSystemDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    CFRelease(v7);
    v17 = *MEMORY[0x1E69E9840];
    return FilteredInfoPlistWithData;
  }

  else
  {
    v15 = *MEMORY[0x1E69E9840];

    return CFDictionaryCreate(&__kCFAllocatorSystemDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }
}

uint64_t _CFReadMappedFromFile(__CFString *a1, int a2, int a3, void *a4, off_t *a5, CFErrorRef *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  if (CFStringGetFileSystemRepresentation(a1, buffer, 1026))
  {
    memset(&v28, 0, sizeof(v28));
    v12 = open(buffer, 0, 438);
    if ((v12 & 0x80000000) == 0)
    {
      v13 = v12;
      if (a3)
      {
        fcntl(v12, 48, 1);
      }

      if ((fstat(v13, &v28) & 0x80000000) == 0)
      {
        if ((v28.st_mode & 0xF000) != 0x8000)
        {
          close(v13);
          if (a6)
          {
            v17 = @"NSPOSIXErrorDomain";
            v18 = 13;
            goto LABEL_33;
          }

          goto LABEL_34;
        }

        if ((v28.st_size & 0x8000000000000000) == 0)
        {
          if (!v28.st_size)
          {
            v15 = malloc_type_malloc(8uLL, 0x547558DCuLL);
            st_size = 0;
            goto LABEL_38;
          }

          if (a2)
          {
            v14 = mmap(0, v28.st_size, 1, 2, v13, 0);
            if (v14 != -1)
            {
              v15 = v14;
              st_size = v28.st_size;
LABEL_38:
              close(v13);
              *a4 = v15;
              *a5 = st_size;
              result = 1;
              goto LABEL_35;
            }

            goto LABEL_16;
          }

          v20 = malloc_type_malloc(v28.st_size, 0xE0B3E39AuLL);
          if (v20)
          {
            v15 = v20;
            v21 = v28.st_size;
            if (!v28.st_size)
            {
              goto LABEL_37;
            }

            v22 = v20;
            while (1)
            {
              v23 = v21 >= 0x7FFFFFFF ? 0x7FFFFFFFLL : v21;
              v24 = read(v13, v22, v23);
              if (v24 <= 0)
              {
                break;
              }

              v22 += v24;
              v21 -= v24;
              if (!v21)
              {
                goto LABEL_37;
              }
            }

            if ((v24 & 0x8000000000000000) == 0)
            {
LABEL_37:
              st_size = v28.st_size - v21;
              goto LABEL_38;
            }

            v19 = *__error();
            free(v15);
LABEL_17:
            close(v13);
            if (a6)
            {
              v17 = @"NSPOSIXErrorDomain";
              v18 = v19;
              goto LABEL_33;
            }

LABEL_34:
            result = 0;
            goto LABEL_35;
          }
        }

        close(v13);
        if (a6)
        {
          v17 = @"NSPOSIXErrorDomain";
          v18 = 12;
          goto LABEL_33;
        }

        goto LABEL_34;
      }

LABEL_16:
      v19 = *__error();
      goto LABEL_17;
    }

    if (!a6)
    {
      goto LABEL_34;
    }

    v18 = *__error();
    v17 = @"NSPOSIXErrorDomain";
  }

  else
  {
    if (!a6)
    {
      goto LABEL_34;
    }

    v17 = @"NSCocoaErrorDomain";
    v18 = -1;
  }

LABEL_33:
  v25 = _CFErrorWithFilePathCodeDomain(v17, v18, a1);
  result = 0;
  *a6 = v25;
LABEL_35:
  v27 = *MEMORY[0x1E69E9840];
  return result;
}