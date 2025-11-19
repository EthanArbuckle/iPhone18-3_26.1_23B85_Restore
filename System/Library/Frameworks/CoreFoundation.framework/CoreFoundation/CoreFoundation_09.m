void _CFBundleSplitFileName(const __CFString *a1, __CFString **a2, CFStringRef *a3, CFStringRef *a4, const __CFString *a5, const __CFString *a6, uint64_t a7, int *a8)
{
  Length = CFStringGetLength(a1);
  if (a3 | a4)
  {
    v15 = Length;
    v16 = Length;
    do
    {
      if (v16-- < 1)
      {
        v18 = 0;
        goto LABEL_9;
      }
    }

    while (CFStringGetCharacterAtIndex(a1, v16) != 46);
    v18 = v16;
    if (a3 && v15 - 1 != v16)
    {
      v19 = CFStringGetLength(a1);
      v57.location = v16 + 1;
      v57.length = v19 + ~v16;
      *a3 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, a1, v57);
    }

LABEL_9:
    if (a4 && v15 >= 1)
    {
      v20 = -v15;
      v21 = 1;
      while (CFStringGetCharacterAtIndex(a1, v21 - 1) != 46)
      {
        ++v21;
        if (v20 + v21 == 1)
        {
          goto LABEL_17;
        }
      }

      if (v21 - v18 != 1)
      {
        v58.length = CFStringGetLength(a1) - v21;
        v58.location = v21;
        *a4 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, a1, v58);
      }
    }
  }

LABEL_17:
  v22 = CFStringGetLength(a1);
  v23 = v22 - 1;
  if (v22 <= 1)
  {
    v25 = 0;
    v26 = 0;
    v35 = 0;
    v36 = 0;
    v37 = 0;
    v38 = 3;
    goto LABEL_46;
  }

  v24 = v22;
  v52 = a6;
  v53 = a8;
  v54 = a2;
  v25 = 0;
  v26 = 0;
  v27 = 0;
  v28 = 0;
  v29 = 1 - v22;
  while (1)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, v23);
    if (CharacterAtIndex == 46)
    {
      v31 = v23;
    }

    else
    {
      v31 = v24;
    }

    if (CharacterAtIndex == 126 && !v27)
    {
      v32 = v24 + v29;
      v59.location = v23;
      v59.length = v32;
      v33 = CFStringCompareWithOptions(a1, a5, v59, 8uLL);
      if (v33 == kCFCompareEqualTo)
      {
        v25 = v23;
        v26 = v32;
      }

      v27 = v33 == kCFCompareEqualTo;
      v28 = v23;
      goto LABEL_28;
    }

    if (CharacterAtIndex == 45)
    {
      break;
    }

LABEL_28:
    v34 = v23-- + 1;
    ++v29;
    v24 = v31;
    if (v34 <= 2)
    {
      v35 = 0;
      v36 = 0;
      v37 = 0;
      goto LABEL_41;
    }
  }

  if (v27)
  {
    v39 = v28;
  }

  else
  {
    v39 = v24;
  }

  v40 = v39 - v23;
  v60.location = v23;
  v60.length = v39 - v23;
  v41 = CFStringCompareWithOptions(a1, v52, v60, 8uLL);
  if (v41)
  {
    v35 = 0;
  }

  else
  {
    v35 = v23;
  }

  if (v41)
  {
    v36 = 0;
  }

  else
  {
    v36 = v40;
  }

  v37 = v41 == kCFCompareEqualTo;
LABEL_41:
  if (v37 && v27)
  {
    v38 = 4;
  }

  else
  {
    v38 = 3;
  }

  a8 = v53;
  a2 = v54;
  if (v27)
  {
    v42 = 2;
    goto LABEL_47;
  }

LABEL_46:
  v42 = 1;
LABEL_47:
  if (v37)
  {
    v43 = v38;
  }

  else
  {
    v43 = v42;
  }

  *a8 = v43;
  if ((v43 - 2) <= 2)
  {
    v44 = v43 - 3;
    if (v43 == 4 || v43 == 2)
    {
      v46 = v26;
    }

    else
    {
      v46 = 0;
    }

    if (v44 >= 2)
    {
      v47 = v25;
    }

    else
    {
      v47 = v35;
    }

    if (v44 >= 2)
    {
      v48 = v46;
    }

    else
    {
      v48 = v36;
    }

    v49 = v36 + v26;
    if (v43 == 4)
    {
      v50 = v49;
    }

    else
    {
      v50 = v48;
    }

    MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, a1);
    v56.location = v47;
    v56.length = v50;
    CFStringDelete(MutableCopy, v56);
    *a2 = MutableCopy;
  }
}

void __NSMUTABLEDICTIONARY_CONCURRENT_MODIFICATION_DETECTED__()
{
  v0 = objc_opt_class();
  Name = class_getName(v0);
  CFLog(3, @"*** Collection <%s: %p> was mutated while rehashing.", v2, v3, v4, v5, v6, v7, Name);
  __break(1u);
}

uint64_t CFPREFERENCES_IS_WAITING_FOR_USER_CFPREFSD(const os_unfair_lock *a1, uint64_t a2)
{
  os_unfair_lock_assert_not_owner(a1 + 18);
  os_unfair_lock_assert_not_owner(a1 + 19);
  os_unfair_lock_assert_not_owner(a1 + 20);
  return (*(a2 + 16))(a2);
}

uint64_t _plistSizeIsAppropriateToRead(unint64_t a1)
{
  if (a1 - 0x7FFFFFFFFFFFFFFFLL <= 0x8000000000000001)
  {
    _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
    v2 = _CFPrefsClientLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      _plistSizeIsAppropriateToRead_cold_3();
    }

LABEL_11:
    _CFSetTSD(0xFu, 0, 0);
    return 0;
  }

  if (_plistSizeIsAppropriateToRead_onceToken != -1)
  {
    _plistSizeIsAppropriateToRead_cold_1();
  }

  result = 1;
  if (a1 >= 0x400000 && _plistSizeIsAppropriateToRead_isSizeLimitedProcess)
  {
    _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
    v4 = _CFPrefsClientLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      _plistSizeIsAppropriateToRead_cold_2();
    }

    goto LABEL_11;
  }

  return result;
}

CFMutableDictionaryRef _parseBundleStrings(uint64_t a1, CFDictionaryRef theDict)
{
  v8[6] = *MEMORY[0x1E69E9840];
  Count = CFDictionaryGetCount(theDict);
  Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, Count, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = ___parseBundleStrings_block_invoke;
  v8[3] = &__block_descriptor_tmp_162;
  v8[4] = a1;
  v8[5] = Mutable;
  CFDictionaryApply(theDict, v8);
  v6 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void ___parseBundleStrings_block_invoke(uint64_t a1, const void *a2, __CFString *cf)
{
  v6 = CFGetTypeID(cf);
  if (v6 == CFStringGetTypeID())
  {
    v8 = *(a1 + 32);
    v7 = (a1 + 32);
    v9 = _CFStringCreateByParsingMarkdownAndInflectingIfNeeded(cf, v8, 0);
    v10 = v7[1];
    if (v9)
    {
      CFDictionaryAddValue(v10, a2, v9);

      CFRelease(v9);
    }

    else
    {
      CFDictionaryAddValue(v10, a2, cf);
      v12 = _CFBundleResourceLogger();
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        ___parseBundleStrings_block_invoke_cold_1(a2, v7, v12);
      }
    }
  }

  else
  {
    v11 = *(a1 + 40);

    CFDictionaryAddValue(v11, a2, cf);
  }
}

CFArrayRef _copyBundleLocalizationsFromResources(__CFBundle *a1, uint64_t a2)
{
  v52[1] = *MEMORY[0x1E69E9840];
  InfoDictionary = CFBundleGetInfoDictionary(a1);
  if (InfoDictionary)
  {
    v5 = InfoDictionary;
    Value = CFDictionaryGetValue(InfoDictionary, @"CFBundleLocalizations");
    if (Value && (v7 = Value, v8 = CFGetTypeID(Value), v8 == CFArrayGetTypeID()))
    {
      v9 = CFGetAllocator(a1);
      Count = CFArrayGetCount(v7);
      Mutable = CFArrayCreateMutable(v9, Count, &kCFTypeArrayCallBacks);
      if (CFArrayGetCount(v7) >= 1)
      {
        v12 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v7, v12);
          v14 = CFGetTypeID(ValueAtIndex);
          if (v14 == CFStringGetTypeID() && CFStringGetLength(ValueAtIndex) >= 1)
          {
            CFArrayAppendValue(Mutable, ValueAtIndex);
          }

          ++v12;
        }

        while (v12 < CFArrayGetCount(v7));
      }

      v15 = CFGetAllocator(a1);
      Copy = CFArrayCreateCopy(v15, Mutable);
      CFRelease(Mutable);
    }

    else
    {
      Copy = _copyAppleLocalizations(v5);
    }
  }

  else
  {
    Copy = 0;
  }

  v17 = CFBundleCopyResourcesDirectoryURL(a1);
  if (v17)
  {
    v18 = v17;
    v19 = CFGetAllocator(a1);
    v20 = _CFBundleCopyLProjDirectoriesForURL(v19, v18);
    if (v20)
    {
      v21 = v20;
      if (Copy)
      {
        MutableCopy = CFArrayCreateMutableCopy(0, 0, Copy);
        CFRelease(Copy);
        v61.length = CFArrayGetCount(v21);
        v61.location = 0;
        CFArrayAppendArray(MutableCopy, v21, v61);
        CFRelease(v21);
        Copy = MutableCopy;
      }

      else
      {
        Copy = v20;
      }
    }

    CFRelease(v18);
  }

  DevelopmentRegion = CFBundleGetDevelopmentRegion(a1);
  v24 = DevelopmentRegion;
  v52[0] = DevelopmentRegion;
  if (Copy)
  {
    if (DevelopmentRegion)
    {
      v25 = CFArrayGetCount(Copy);
      if (a2 != 1)
      {
        if (a2)
        {
          goto LABEL_65;
        }

        if (dyld_program_sdk_at_least())
        {
          goto LABEL_25;
        }
      }

      v54.location = 0;
      v54.length = v25;
      if (CFArrayContainsValue(Copy, v54, @"Base"))
      {
LABEL_25:
        v26 = CFArrayGetCount(Copy);
        v55.location = 0;
        v55.length = v26;
        if (CFArrayContainsValue(Copy, v55, v24))
        {
          v27 = v24;
        }

        else
        {
          AlternateNameForLanguage = _CFBundleGetAlternateNameForLanguage(v24);
          if (AlternateNameForLanguage && (v33 = AlternateNameForLanguage, v56.location = 0, v56.length = v26, CFArrayContainsValue(Copy, v56, AlternateNameForLanguage)))
          {
            v27 = v33;
          }

          else
          {
            Length = CFStringGetLength(v24);
            if (Length >= 4)
            {
              v35 = Length;
              CharacterAtIndex = CFStringGetCharacterAtIndex(v24, 2);
              v37 = CharacterAtIndex;
              if (CharacterAtIndex == 95 || CharacterAtIndex == 45)
              {
                v38 = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, v35, v24);
                v28 = v38;
                v39 = v37 == 45 ? @"_" : @"-";
                v57.location = 2;
                v57.length = 1;
                CFStringReplace(v38, v57, v39);
                if (v28)
                {
                  v58.location = 0;
                  v58.length = v26;
                  if (CFArrayContainsValue(Copy, v58, v28))
                  {
                    goto LABEL_28;
                  }

                  CFRelease(v28);
                }
              }
            }

            if (CFArrayGetCount(Copy) < 1)
            {
              goto LABEL_56;
            }

            v40 = 0;
            while (1)
            {
              v41 = CFArrayGetValueAtIndex(Copy, v40);
              v42 = _CFBundleGetAlternateNameForLanguage(v24);
              v43 = _CFBundleGetAlternateNameForLanguage(v41);
              if (_CFBundleIsLanguageDefaultLanguageOfOther(v24, v41) || _CFBundleIsLanguageDefaultLanguageOfOther(v42, v41) || _CFBundleIsLanguageDefaultLanguageOfOther(v24, v43))
              {
                break;
              }

              if (++v40 >= CFArrayGetCount(Copy))
              {
                goto LABEL_56;
              }
            }

            if (v41 && (v59.location = 0, v59.length = v26, CFArrayContainsValue(Copy, v59, v41)))
            {
              v27 = v41;
            }

            else
            {
LABEL_56:
              CanonicalLanguageIdentifierFromString = CFLocaleCreateCanonicalLanguageIdentifierFromString(&__kCFAllocatorSystemDefault, v24);
              if (!CanonicalLanguageIdentifierFromString)
              {
                goto LABEL_64;
              }

              v28 = CanonicalLanguageIdentifierFromString;
              v60.location = 0;
              v60.length = v26;
              if (CFArrayContainsValue(Copy, v60, CanonicalLanguageIdentifierFromString))
              {
                goto LABEL_28;
              }

              if (v26 < 1)
              {
LABEL_63:
                CFRelease(v28);
                goto LABEL_64;
              }

              v45 = 0;
              while (1)
              {
                v46 = CFArrayGetValueAtIndex(Copy, v45);
                v47 = CFLocaleCreateCanonicalLanguageIdentifierFromString(&__kCFAllocatorSystemDefault, v46);
                if (v47)
                {
                  v48 = v47;
                  v49 = CFEqual(v47, v28);
                  CFRelease(v48);
                  if (v49)
                  {
                    break;
                  }
                }

                if (v26 == ++v45)
                {
                  goto LABEL_63;
                }
              }

              CFRelease(v28);
              v27 = v46;
            }
          }
        }

        v28 = CFRetain(v27);
        if (v28)
        {
LABEL_28:
          CFRelease(v28);
          goto LABEL_65;
        }

LABEL_64:
        v50 = CFArrayCreateMutableCopy(0, 0, Copy);
        CFRelease(Copy);
        CFArrayAppendValue(v50, v24);
        Copy = v50;
      }
    }

LABEL_65:
    v51 = *MEMORY[0x1E69E9840];
    return Copy;
  }

  v29 = CFGetAllocator(a1);
  if (v24)
  {
    Copy = CFArrayCreate(v29, v52, 1, &kCFTypeArrayCallBacks);
    goto LABEL_65;
  }

  v30 = *MEMORY[0x1E69E9840];

  return CFArrayCreate(v29, 0, 0, &kCFTypeArrayCallBacks);
}

CFArrayRef _copyAppleLocalizations(const __CFDictionary *a1)
{
  if (CFDictionaryGetValue(a1, @"_CFBundleUseAppleLocalizations") != &__kCFBooleanTrue)
  {
    return 0;
  }

  v2 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, @"/System/Library/Frameworks/CoreFoundation.framework", kCFURLPOSIXPathStyle, 1u);
  v3 = CFBundleCreate(&__kCFAllocatorSystemDefault, v2);
  v4 = _copyBundleLocalizationsFromResources(v3, 0);
  CFRelease(v2);
  CFRelease(v3);
  return v4;
}

void _releaseStringsSource(uint64_t a1, _OWORD *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2[3];
  v6[2] = a2[2];
  v6[3] = v3;
  v7 = *(a2 + 8);
  v4 = a2[1];
  v6[0] = *a2;
  v6[1] = v4;
  _CFBundleReleaseStringsSources(v6);
  v5 = *MEMORY[0x1E69E9840];

  free(a2);
}

CFURLRef CFBundleCopyResourcesDirectoryURL(CFBundleRef bundle)
{
  __CFCheckCFInfoPACSignature(bundle);
  v2 = _CFGetNonObjCTypeID(bundle);
  if (v2 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v2);
  }

  v3 = *(bundle + 2);
  v4 = *(bundle + 53);

  return _CFBundleCopyResourcesDirectoryURLInDirectory(v3, v4);
}

uint64_t __NSArrayChunkIterate(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, unint64_t *a7, void *a8, pthread_mutex_t *a9)
{
  v42 = a8;
  v44 = a6;
  v47 = *MEMORY[0x1E69E9840];
  v46 = 0;
  v45 = 0x7FFFFFFFFFFFFFFFLL;
  v14 = &v45;
  if (a7)
  {
    v14 = a7;
  }

  v43 = v14;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15 = atomic_load(v43);
    if (v15 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = v15 >= a3;
      v17 = v15 <= a4;
      if ((a2 & 2) != 0)
      {
        v16 = v17;
      }

      if (!v16)
      {
        v32 = 0;
        goto LABEL_42;
      }
    }
  }

  v39 = _CFAutoreleasePoolPush();
  v40 = &v38;
  v19 = MEMORY[0x1EEE9AC00](v39, v18);
  v21 = &v38 - v20;
  MEMORY[0x1EEE9AC00](v19, v22);
  v24 = &v38 - v23;
  if ((a2 & 0x1000000000000000) != 0 && ![a5 __getContainmentVector:&v38 - v23 inRange:{a3, a4 - a3 + 1}])
  {
    goto LABEL_41;
  }

  [a1 getObjects:v21 range:{a3, a4 - a3 + 1}];
  if (a4 - a3 == -1)
  {
    goto LABEL_41;
  }

  v25 = 0;
  v41 = a9;
  while (1)
  {
    v26 = a4 - a3 - v25;
    if ((a2 & 2) == 0)
    {
      v26 = v25;
    }

    if ((a2 & 0x1000000000000000) != 0 && v24[v26] != 1)
    {
      goto LABEL_32;
    }

    v27 = *&v21[8 * v26];
    if ((a2 & 2) != 0)
    {
      v28 = a4 - v25;
    }

    else
    {
      v28 = v25 + a3;
    }

    if ((a2 & 0x6000000000000000) == 0)
    {
      __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(v44);
      goto LABEL_26;
    }

    if (__NSARRAY_IS_CALLING_OUT_TO_A_BOOL_BLOCK__(v44))
    {
      break;
    }

LABEL_26:
    if (v46)
    {
      goto LABEL_41;
    }

    if ((a2 & 0x2000000000000000) != 0)
    {
      v29 = atomic_load(v43);
      if (v29 != 0x7FFFFFFFFFFFFFFFLL)
      {
        v30 = v29 >= a3;
        v31 = v29 <= a4;
        if ((a2 & 2) == 0)
        {
          v31 = v30;
        }

        if (!v31)
        {
          goto LABEL_41;
        }
      }
    }

LABEL_32:
    if (++v25 >= a4 - a3 + 1)
    {
      goto LABEL_41;
    }
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x4000000000000000) != 0)
    {
      if (v41)
      {
        pthread_mutex_lock(v41);
        [v42 addIndex:v28];
        pthread_mutex_unlock(v41);
      }

      else
      {
        [v42 addIndex:v28];
      }
    }

    goto LABEL_26;
  }

  do
  {
    v33 = atomic_load(v43);
    if (v33 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v34 = v33 < v28;
      if ((a2 & 2) == 0)
      {
        v34 = v28 < v33;
      }

      if (!v34)
      {
        break;
      }
    }

    v35 = v33;
    atomic_compare_exchange_strong_explicit(v43, &v35, v28, memory_order_relaxed, memory_order_relaxed);
  }

  while (v35 != v33);
LABEL_41:
  _CFAutoreleasePoolPop(v39);
  v32 = v46;
LABEL_42:
  v36 = *MEMORY[0x1E69E9840];
  return v32 & 1;
}

CFURLRef _CFBundleCopyResourcesDirectoryURLInDirectory(CFURLRef cf, int a2)
{
  if (cf)
  {
    if (a2 <= 1)
    {
      if (a2)
      {
        if (a2 != 1)
        {
          return CFRetain(cf);
        }

        v3 = @"Support%20Files/Resources/";
      }

      else
      {
        v3 = @"Resources/";
      }
    }

    else
    {
      if (a2 != 2)
      {
        if (a2 == 12)
        {
          v2 = @"WrappedBundle/Contents/Resources/";
          return _CFURLCreateResolvedDirectoryWithString(&__kCFAllocatorSystemDefault, v2, cf);
        }

        if (a2 == 13)
        {
          v2 = @"WrappedBundle/";
          return _CFURLCreateResolvedDirectoryWithString(&__kCFAllocatorSystemDefault, v2, cf);
        }

        return CFRetain(cf);
      }

      v3 = @"Contents/Resources/";
    }

    return CFURLCreateWithString(&__kCFAllocatorSystemDefault, v3, cf);
  }

  return cf;
}

uint64_t _CFBundleCopyLProjDirectoriesForURL(uint64_t a1, CFURLRef relativeURL)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0;
  v3 = CFURLCopyAbsoluteURL(relativeURL);
  v4 = CFURLCopyFileSystemPath(v3, kCFURLPOSIXPathStyle);
  CFRelease(v3);
  Length = CFStringGetLength(@".lproj");
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = ___CFBundleCopyLProjDirectoriesForURL_block_invoke;
  v9[3] = &unk_1E6D82A98;
  v9[4] = &v10;
  v9[5] = Length;
  v9[6] = @".lproj";
  v9[7] = a1;
  _CFIterateDirectory(v4, 0, 0, v9);
  CFRelease(v4);
  v6 = v11[3];
  _Block_object_dispose(&v10, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_18315A200(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFStringRef CFBundleGetDevelopmentRegion(CFBundleRef bundle)
{
  __CFCheckCFInfoPACSignature(bundle);
  v2 = _CFGetNonObjCTypeID(bundle);
  if (v2 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v2);
  }

  InfoDictionary = CFBundleGetInfoDictionary(bundle);
  if (!InfoDictionary)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(InfoDictionary, @"CFBundleDevelopmentRegion");
  v5 = Value;
  if (Value)
  {
    v6 = CFGetTypeID(Value);
    if (v6 != CFStringGetTypeID() || !CFStringGetLength(v5))
    {
      return 0;
    }
  }

  return v5;
}

uint64_t _CFAppVersionCheck(CFTypeRef cf2, const void *a2)
{
  if (_bundleInfo_onceToken != -1)
  {
    _CFAppVersionCheck_cold_1();
  }

  result = CFEqual(_bundleInfo_info_0, cf2);
  if (result)
  {
    if (!a2)
    {
      return 1;
    }

    result = CFEqual(_bundleInfo_info_1, a2);
    if (result)
    {
      return 1;
    }
  }

  return result;
}

void ___bundleInfo_block_invoke()
{
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle && (InfoDictionary = CFBundleGetInfoDictionary(MainBundle)) != 0)
  {
    v2 = InfoDictionary;
    Value = CFDictionaryGetValue(InfoDictionary, @"CFBundleIdentifier");
    v4 = CFDictionaryGetValue(v2, @"CFBundleShortVersionString");
    if (Value)
    {
      Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, Value);
    }

    else
    {
      Copy = &stru_1EF068AA8;
    }

    _bundleInfo_info_0 = Copy;
    if (v4)
    {
      v6 = CFStringCreateCopy(&__kCFAllocatorSystemDefault, v4);
    }

    else
    {
      v6 = &stru_1EF068AA8;
    }
  }

  else
  {
    v6 = &stru_1EF068AA8;
    _bundleInfo_info_0 = &stru_1EF068AA8;
  }

  _bundleInfo_info_1 = v6;
  _bundleInfo_info_2 = CFStringGetDoubleValue(v6);
}

void CFRunLoopRemoveObserver(CFRunLoopRef rl, CFRunLoopObserverRef observer, CFRunLoopMode mode)
{
  context[2] = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(rl);
  v6 = _CFGetNonObjCTypeID(rl);
  if (v6 != 43)
  {
    _CFAssertMismatchedTypeID(0x2BuLL, v6);
  }

  v7 = atomic_load(__CFMainThreadHasExited);
  if (v7)
  {
    CFRunLoopRemoveObserver_cold_1(rl);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((rl + 16));
  if (mode == @"kCFRunLoopCommonModes")
  {
    v12 = *(rl + 331);
    if (v12 && CFSetContainsValue(v12, observer))
    {
      v13 = *(rl + 330);
      if (!v13)
      {
        CFSetRemoveValue(*(rl + 331), observer);
        goto LABEL_22;
      }

      Copy = CFSetCreateCopy(&__kCFAllocatorSystemDefault, v13);
      CFSetRemoveValue(*(rl + 331), observer);
      if (Copy)
      {
        context[0] = rl;
        context[1] = observer;
        CFSetApplyFunction(Copy, __CFRunLoopRemoveItemFromCommonModes, context);
LABEL_15:
        CFRelease(Copy);
      }
    }
  }

  else
  {
    v8 = __CFRunLoopCopyMode(rl, mode, 0);
    if (v8)
    {
      Copy = v8;
      pthread_mutex_lock((v8 + 16));
      if (*(Copy + 14))
      {
        CFRetain(observer);
        v10 = *(Copy + 14);
        v16.length = CFArrayGetCount(v10);
        v16.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v10, v16, observer);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(*(Copy + 14), FirstIndexOfValue);
          __CFRunLoopObserverCancel(observer);
        }

        CFRelease(observer);
      }

      pthread_mutex_unlock((Copy + 16));
      goto LABEL_15;
    }
  }

LABEL_22:
  pthread_mutex_unlock((rl + 16));
  v14 = *MEMORY[0x1E69E9840];
}

void __CFRunLoopRemoveItemFromCommonModes(const __CFString *a1, uint64_t a2)
{
  v4 = *a2;
  v3 = *(a2 + 8);
  v5 = CFGetTypeID(v3);
  switch(v5)
  {
    case '-':

      CFRunLoopRemoveObserver(v4, v3, a1);
      break;
    case '/':

      CFRunLoopRemoveTimer(v4, v3, a1);
      break;
    case '.':

      CFRunLoopRemoveSource(v4, v3, a1);
      break;
  }
}

void _CFLogSimple(int a1, char *__format, ...)
{
  va_start(va, __format);
  v6 = *MEMORY[0x1E69E9840];
  v3 = vsnprintf(__str, 0x400uLL, __format, va);
  if (v3 >= 1)
  {
    __CFLogCStringLegacy(a1, __str, v3, 0);
  }

  v4 = *MEMORY[0x1E69E9840];
}

__CFDictionary *_createQueryTableAtPath(const __CFString *a1, const __CFArray *a2, const __CFString *a3, const __CFString *a4, char a5)
{
  Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v10 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  v30 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, a1);
  v12 = MutableCopy;
  if (a3)
  {
    _CFAppendPathComponent2(MutableCopy, a3);
  }

  Length = CFStringGetLength(v12);
  if (a4)
  {
    _CFAppendPathComponent2(v12, a4);
  }

  _CFBundleReadDirectory(v12, a4, a5, v10, 0, Mutable, v30, 0, 0, 0);
  v31.length = CFStringGetLength(v12) - Length;
  v31.location = Length;
  CFStringDelete(v12, v31);
  Count = CFArrayGetCount(v10);
  if (!a2)
  {
    cf = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    goto LABEL_11;
  }

  v14 = CFArrayGetCount(a2);
  cf = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v14 < 1)
  {
LABEL_11:
    v19 = 0;
    v18 = 0;
    goto LABEL_12;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(a2, 0);
  v16 = CFStringGetLength(ValueAtIndex);
  v17 = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, v16 + 5, ValueAtIndex);
  CFStringAppend(v17, @".lproj");
  _CFAppendPathComponent2(v12, ValueAtIndex);
  _CFAppendPathExtension2(v12, @"lproj");
  if (a4)
  {
    _CFAppendPathComponent2(v12, a4);
  }

  _CFBundleReadDirectory(v12, a4, a5, v10, 0, Mutable, v30, cf, 1, v17);
  CFRelease(v17);
  v32.length = CFStringGetLength(v12) - Length;
  v32.location = Length;
  CFStringDelete(v12, v32);
  v18 = Count < CFArrayGetCount(v10);
  v19 = v14 != 1;
LABEL_12:
  v20 = Mutable;
  _CFAppendPathComponent2(v12, @"Base");
  _CFAppendPathExtension2(v12, @"lproj");
  if (a4)
  {
    _CFAppendPathComponent2(v12, a4);
  }

  v21 = 1;
  _CFBundleReadDirectory(v12, a4, a5, v10, v18, v20, v30, cf, 1, @"Base.lproj");
  v33.length = CFStringGetLength(v12) - Length;
  v33.location = Length;
  CFStringDelete(v12, v33);
  if (v18)
  {
    if (!v19)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = Count < CFArrayGetCount(v10);
    if (!v19)
    {
      goto LABEL_26;
    }
  }

  if (CFArrayGetCount(a2) > 1)
  {
    v22 = 1;
    do
    {
      v23 = CFArrayGetValueAtIndex(a2, v22);
      v24 = CFStringGetLength(v23);
      v25 = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, v24 + 5, v23);
      CFStringAppend(v25, @".lproj");
      _CFAppendPathComponent2(v12, v23);
      _CFAppendPathExtension2(v12, @"lproj");
      if (a4)
      {
        _CFAppendPathComponent2(v12, a4);
      }

      _CFBundleReadDirectory(v12, a4, a5, v10, v21, v20, v30, cf, 0, v25);
      CFRelease(v25);
      v34.length = CFStringGetLength(v12) - Length;
      v34.location = Length;
      CFStringDelete(v12, v34);
      if (v21)
      {
        v21 = 1;
      }

      else
      {
        v21 = Count < CFArrayGetCount(v10);
      }

      ++v22;
    }

    while (v22 < CFArrayGetCount(a2));
  }

LABEL_26:
  CFRelease(cf);
  CFRelease(v12);
  if (CFArrayGetCount(v10) >= 1)
  {
    CFDictionarySetValue(v20, @"_CFBAF_", v10);
  }

  CFRelease(v10);
  CFRelease(v30);
  return v20;
}

uint64_t _CFDictionaryFastEnumeration(unint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  if (CF_IS_OBJC(0x12uLL, a1))
  {
    return 0;
  }

  return __CFBasicHashFastEnumeration(a1, a2, a3, a4);
}

uint64_t __CFRunLoopObserverCancel(uint64_t a1)
{
  pthread_mutex_lock((a1 + 16));
  v2 = *(a1 + 88) - 1;
  *(a1 + 88) = v2;
  if (!v2)
  {
    *(a1 + 80) = 0;
  }

  return pthread_mutex_unlock((a1 + 16));
}

void CFRunLoopObserverInvalidate(CFRunLoopObserverRef observer)
{
  __CFCheckCFInfoPACSignature(observer);
  v2 = _CFGetNonObjCTypeID(observer);
  if (v2 != 45)
  {
    _CFAssertMismatchedTypeID(0x2DuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((observer + 16));
  CFRetain(observer);
  v3 = atomic_load(observer + 1);
  if ((v3 & 8) != 0)
  {
    v4 = *(observer + 10);
    v5 = *(observer + 16);
    *(observer + 16) = 0;
    v6 = atomic_load(observer + 1);
    v7 = v6;
    do
    {
      atomic_compare_exchange_strong(observer + 1, &v7, v6 & 0xFFFFFFFFFFFFFFF7);
      v8 = v7 == v6;
      v6 = v7;
    }

    while (!v8);
    if (v4)
    {
      CFRetain(v4);
      pthread_mutex_unlock((observer + 16));
      pthread_mutex_lock((v4 + 16));
      v9 = CFRunLoopCopyAllModes(v4);
      Count = CFArrayGetCount(v9);
      if (Count)
      {
        v11 = Count - 1;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(v9, v11);
          CFRunLoopRemoveObserver(v4, observer, ValueAtIndex);
          --v11;
        }

        while (v11 != -1);
      }

      CFRunLoopRemoveObserver(v4, observer, @"kCFRunLoopCommonModes");
      pthread_mutex_unlock((v4 + 16));
      CFRelease(v9);
      CFRelease(v4);
      pthread_mutex_lock((observer + 16));
    }

    v13 = *(observer + 18);
    if (v13)
    {
      v13(v5);
    }
  }

  pthread_mutex_unlock((observer + 16));

  CFRelease(observer);
}

void _CFBundleReadDirectory(const __CFString *a1, const __CFArray *a2, char a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9, void *a10)
{
  v15 = a2;
  v16 = a10;
  values[2] = *MEMORY[0x1E69E9840];
  v27 = a2;
  ProductNameSuffix = _CFBundleGetProductNameSuffix();
  PlatformNameSuffix = _CFBundleGetPlatformNameSuffix();
  if (v16)
  {
    v19 = v15 == 0;
  }

  else
  {
    v19 = 1;
  }

  if (v19)
  {
    if (v16)
    {
      v15 = CFArrayCreate(&__kCFAllocatorSystemDefault, &a10, 1, &kCFTypeArrayCallBacks);
      v16 = a10;
    }

    else
    {
      if (v15)
      {
        v15 = CFArrayCreate(&__kCFAllocatorSystemDefault, &v27, 1, &kCFTypeArrayCallBacks);
      }

      v16 = 0;
    }
  }

  else
  {
    values[0] = v16;
    values[1] = v15;
    v15 = CFArrayCreate(&__kCFAllocatorSystemDefault, values, 2, &kCFTypeArrayCallBacks);
  }

  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 0x40000000;
  v23[2] = ___CFBundleReadDirectory_block_invoke;
  v23[3] = &__block_descriptor_tmp_75;
  v24 = a3;
  v23[4] = ProductNameSuffix;
  v23[5] = PlatformNameSuffix;
  v25 = a5;
  v23[6] = a4;
  v23[7] = a6;
  v23[8] = a7;
  v23[9] = a8;
  v26 = a9;
  v23[10] = v16;
  _CFIterateDirectory(a1, 1, v15, v23);
  if (v15)
  {
    CFRelease(v15);
  }

  v20 = *MEMORY[0x1E69E9840];
}

uint64_t __CFRunLoopObserverDeallocate(uint64_t a1)
{
  CFRunLoopObserverInvalidate(a1);

  return pthread_mutex_destroy((a1 + 16));
}

uint64_t __CFBitVectorInit(__objc2_class **a1, char a2, const void *a3, int64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Instance = _CFRuntimeCreateInstance(a1, 0x18uLL, 24, 0, a5, a6, a7, a8);
  v13 = Instance;
  if (Instance)
  {
    if (a4 <= 1)
    {
      v14 = 1;
    }

    else
    {
      v14 = a4;
    }

    v16 = v14 + 63;
    v15 = v14 < -63;
    v17 = v14 + 126;
    if (!v15)
    {
      v17 = v16;
    }

    *(Instance + 24) = v17 & 0xFFFFFFFFFFFFFFC0;
    Typed = CFAllocatorAllocateTyped(a1, (8 * (v17 >> 6)) | 1, 0x100004077774924, 0);
    *(v13 + 32) = Typed;
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
      Typed = *(v13 + 32);
    }

    if (Typed)
    {
      bzero(Typed, *(v13 + 24) / 8 + 1);
      *(v13 + 16) = a4;
      if (a3)
      {
        if ((a4 & 7) != 0)
        {
          v19 = a4 / 8 + 1;
        }

        else
        {
          v19 = a4 / 8;
        }

        memmove(*(v13 + 32), a3, v19);
      }

      v20 = atomic_load((v13 + 8));
      v21 = v20;
      do
      {
        atomic_compare_exchange_strong((v13 + 8), &v21, v20 & 0xFFFFFFFFFFFFFFF3 | (4 * (a2 & 3)));
        v22 = v21 == v20;
        v20 = v21;
      }

      while (!v22);
    }

    else
    {
      CFRelease(v13);
      return 0;
    }
  }

  return v13;
}

void _CFPreferencesAddSuitePreferencesToAppWithContainer(const void *a1, const void *a2, uint64_t a3)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v6 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPreferencesAddSuitePreferencesToAppWithContainer_cold_1();
    }

    v6 = [qword_1ED40BE18 copyPrefs];
  }

  v7 = v6;
  [(_CFXPreferences *)v6 addSuitePreferences:a2 toAppIdentifier:a1 container:a3];
}

uint64_t __CFBitVectorInternalMap(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, uint64_t, uint64_t), uint64_t a5)
{
  if (a3)
  {
    v7 = result;
    v8 = a2 / 8;
    v9 = (a2 & 7) + a3;
    if (v9 <= 7)
    {
      v10 = 0;
    }

    else
    {
      v10 = (a2 | 0xFFFFFFFFFFFFFFF8) + a3;
    }

    if (v9 <= 7)
    {
      v11 = (255 << (8 - a3)) >> (a2 & 7);
    }

    else
    {
      v11 = 0xFFu >> (a2 & 7);
    }

    result = a4(*(*(result + 32) + v8), v11, a5);
    *(*(v7 + 32) + v8) = *(*(v7 + 32) + v8) & ~v11 | result & v11;
    if (v10 >= 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 + 7;
    }

    v13 = v12 & 0xFFFFFFFFFFFFFFF8;
    v14 = v8 + 1;
    if ((v10 + 7) >= 0xF)
    {
      v15 = v12 >> 3;
      do
      {
        --v15;
        result = a4(*(*(v7 + 32) + v14), 255, a5);
        *(*(v7 + 32) + v14++) = result;
      }

      while (v15);
    }

    if (v13 != v10)
    {
      v16 = 255 << (v13 - v10 + 8);
      result = a4(*(*(v7 + 32) + v14), v16, a5);
      *(*(v7 + 32) + v14) = *(*(v7 + 32) + v14) & ~v16 | result & v16;
    }
  }

  return result;
}

void CFBitVectorGetBits(CFBitVectorRef bv, CFRange range, UInt8 *bytes)
{
  v4[4] = *MEMORY[0x1E69E9840];
  if (range.length)
  {
    v4[0] = bytes;
    v4[1] = range.location & 7;
    v4[2] = range.length;
    v4[3] = 1;
    __CFBitVectorInternalMap(bv, range.location, range.length, __CFBitVectorGetBits, v4);
  }

  v3 = *MEMORY[0x1E69E9840];
}

uint64_t __CFBitVectorGetBits(uint64_t result, int a2, uint64_t a3)
{
  v3 = a2 & result;
  v4 = *(a3 + 8);
  v5 = 8 - v4;
  if (8 - v4 >= *(a3 + 16))
  {
    v5 = *(a3 + 16);
  }

  if (v4 >= 1)
  {
    if ((*(a3 + 24) & 1) == 0)
    {
      **a3 |= v3 >> (8 - v4);
      v4 = *(a3 + 8);
      ++*a3;
      *(a3 + 16) -= v4;
      *(a3 + 24) = 0;
    }

    v3 <<= v4;
  }

  if (v5 < 8)
  {
    v7 = v3;
    v9 = v5;
  }

  else
  {
    v6 = *a3;
    do
    {
      v7 = 0;
      *v6 = v3;
      v8 = *(a3 + 8);
      v6 = (*a3 + 1);
      *a3 = v6;
      *(a3 + 16) -= v8;
      v9 = v5 - 8;
      LOBYTE(v3) = 0;
      v10 = v5 > 0xF;
      v5 -= 8;
    }

    while (v10);
  }

  if (v9 >= 1)
  {
    **a3 = v7;
    *(a3 + 16) -= v9;
  }

  return result;
}

void _CFBundleAddValueForType(void *key, __CFDictionary *a2, CFDictionaryRef theDict, const void *a4, __CFDictionary *a5, int a6)
{
  Value = CFDictionaryGetValue(theDict, key);
  if (Value)
  {
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v13 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@.%@", @"_CFBT_", key);
    Value = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
    CFDictionarySetValue(a2, v13, Value);
    CFDictionarySetValue(theDict, key, Value);
    CFRelease(Value);
    CFRelease(v13);
    if (!a5)
    {
      goto LABEL_7;
    }
  }

  if (a6)
  {
    CFDictionarySetValue(a5, key, key);
  }

  else if (CFDictionaryGetValue(a5, key))
  {
    return;
  }

LABEL_7:

  CFArrayAppendValue(Value, a4);
}

uint64_t _CFAppendPathExtension2(__CFString *a1, CFStringRef theString)
{
  if (!a1 || CFStringGetLength(theString) >= 1 && CFStringGetCharacterAtIndex(theString, 0) == 47 || CFStringGetLength(theString) > 1 && _hasDrive(theString))
  {
    return 0;
  }

  v4 = CFStringGetLength(a1) >= 2 && _hasDrive(a1);
  while (1)
  {
    Length = CFStringGetLength(a1);
    if (v4)
    {
      if (Length <= 3)
      {
        break;
      }
    }

    else if (Length < 2)
    {
      break;
    }

    v6 = CFStringGetLength(a1);
    if (CFStringGetCharacterAtIndex(a1, v6 - 1) != 47)
    {
      break;
    }

    v12.location = CFStringGetLength(a1) - 1;
    v12.length = 1;
    CFStringDelete(a1, v12);
  }

  if (!CFStringGetLength(a1))
  {
    return 0;
  }

  CharacterAtIndex = CFStringGetCharacterAtIndex(a1, 0);
  v8 = CFStringGetLength(a1);
  v9 = v8;
  if (v8 > 1)
  {
    if (v8 == 2)
    {
      if (_hasDrive(a1) || _hasNet(a1))
      {
        return 0;
      }
    }

    else if (v8 == 3 && CFStringGetCharacterAtIndex(a1, 2) == 47 && _hasDrive(a1))
    {
      return 0;
    }

    goto LABEL_29;
  }

  if (!v8)
  {
    return 0;
  }

  if (v8 != 1 || (v10 = 0, CharacterAtIndex != 47) && CharacterAtIndex != 126)
  {
LABEL_29:
    if (v9 < 1 || CharacterAtIndex != 126 || (v13.location = 1, v13.length = v9 - 1, CFStringFindWithOptions(a1, @"/", v13, 0, 0)))
    {
      v10 = 1;
      CFStringAppendCharacters(a1, _CFAppendPathExtension2_dotChar, 1);
      CFStringAppend(a1, theString);
      return v10;
    }

    return 0;
  }

  return v10;
}

void CFDictionaryReplaceValue(CFMutableDictionaryRef theDict, const void *key, const void *value)
{
  if (CF_IS_OBJC(0x12uLL, theDict))
  {

    [(__CFDictionary *)theDict replaceObject:value forKey:key];
  }

  else
  {
    v12 = atomic_load(theDict + 1);
    if ((v12 & 0x40) != 0)
    {
      CFLog(3, @"%s(): immutable collection %p given to mutating function", v6, v7, v8, v9, v10, v11, "void CFDictionaryReplaceValue(CFMutableDictionaryRef, const void *, const void *)");
    }

    v13 = atomic_load(theDict + 1);
    if (v13)
    {
      v14 = __CF_KVO_WillChangeSelector_hc;
      if (!__CF_KVO_WillChangeSelector_hc)
      {
        v14 = sel_registerName("willChangeValueForKey:");
        __CF_KVO_WillChangeSelector_hc = v14;
      }

      [theDict v14];
    }

    CFBasicHashReplaceValue(theDict, key, value);
    v15 = atomic_load(theDict + 1);
    if (v15)
    {
      v16 = __CF_KVO_DidChangeSelector_hc;
      if (!__CF_KVO_DidChangeSelector_hc)
      {
        v16 = sel_registerName("didChangeValueForKey:");
        __CF_KVO_DidChangeSelector_hc = v16;
      }

      [theDict v16];
    }
  }
}

uint64_t _CFURLCopyComponents(void *a1, uint64_t a2, uint64_t a3)
{
  v24 = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    _CFURLCopyComponents_cold_1();
  }

  if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, a1))
  {
    a1 = [a1 _cfurl];
  }

  if (a2 == 2)
  {
    v9 = CFGetAllocator(a1);
    memset(v23, 0, sizeof(v23));
    v21 = 0u;
    v22 = 0u;
    v20 = 0u;
    result = decomposeToRFC1808(a1, &v20);
    if (result)
    {
      v10 = *(&v20 + 1);
      *a3 = v20;
      if (v10)
      {
        v11 = v21;
        if (v21)
        {
          *(a3 + 8) = CFStringCreateWithFormat(v9, 0, @"%@:%@", v10, v21);
          CFRelease(v11);
          CFRelease(v10);
        }

        else
        {
          *(a3 + 8) = v10;
        }
      }

      else
      {
        *(a3 + 8) = 0;
      }

      v12 = v22;
      *(a3 + 16) = *(&v21 + 1);
      *(a3 + 24) = v12;
      v14 = *(&v22 + 1);
      v13 = *&v23[0];
      if (*&v23[0])
      {
        Count = CFArrayGetCount(*(&v22 + 1));
        MutableCopy = CFArrayCreateMutableCopy(v9, Count, v14);
        *(a3 + 32) = MutableCopy;
        ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, Count - 1);
        v18 = CFStringCreateWithFormat(v9, 0, @"%@;%@", ValueAtIndex, v13);
        CFArraySetValueAtIndex(*(a3 + 32), Count - 1, v18);
        CFRelease(v18);
        if (v14)
        {
          CFRelease(v14);
        }

        CFRelease(v13);
      }

      else
      {
        *(a3 + 32) = *(&v22 + 1);
      }

      *(a3 + 40) = *(v23 + 8);
      *(a3 + 56) = *(&v23[1] + 1);
      goto LABEL_29;
    }

LABEL_30:
    v19 = *MEMORY[0x1E69E9840];
    return result;
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      if (CFURLGetBaseURL(a1))
      {
        v6 = 0;
      }

      else
      {
        v6 = CFURLCopyScheme(a1);
      }

      *a3 = v6;
      *(a3 + 8) = CFURLCopyResourceSpecifier(a1);
LABEL_29:
      result = 1;
      goto LABEL_30;
    }

    result = 0;
    goto LABEL_30;
  }

  v7 = *MEMORY[0x1E69E9840];

  return decomposeToRFC1808(a1, a3);
}

CFMutableDictionaryRef _CFPrefsCopyAppDictionaryWithContainer(__CFString *a1, const __CFString *a2)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v4 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPrefsCopyAppDictionaryWithContainer_cold_1();
    }

    v4 = [qword_1ED40BE18 copyPrefs];
  }

  v5 = [(_CFXPreferences *)v4 copyDictionaryForApp:a1 withContainer:a2];

  return v5;
}

void CFArrayRemoveAllValues(CFMutableArrayRef theArray)
{
  if (CF_IS_OBJC(0x13uLL, theArray))
  {

    [(__CFArray *)theArray removeAllObjects];
  }

  else
  {
    __CFArrayReleaseValues(theArray, 0, *(theArray + 2), 1);
    v2 = *(theArray + 3) + 1;
    *(theArray + 2) = 0;
    *(theArray + 3) = v2;
  }
}

uint64_t decomposeToRFC1808(CFURLRef anURL, CFStringRef *a2)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    decomposeToRFC1808_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    result = CFURLCanBeDecomposed(anURL);
    if (!result)
    {
      return result;
    }

    v5 = CFURLCopyPath(anURL);
    if (v5)
    {
      v6 = v5;
      a2[5] = CFStringCreateArrayBySeparatingStrings(0, v5, @"/");
      CFRelease(v6);
    }

    else
    {
      a2[5] = 0;
    }

    v10 = CFURLGetBaseURL(anURL);
    a2[9] = v10;
    if (v10)
    {
      CFRetain(v10);
      v11 = 0;
    }

    else
    {
      v11 = CFURLCopyScheme(anURL);
    }

    *a2 = v11;
    a2[1] = _CFURLCopyUserName(anURL, 0);
    a2[2] = _CFURLCopyPassword(anURL, 0);
    a2[3] = _CFURLCopyHostName(anURL, 0);
    if ((*(anURL + 16) & 0x10) != 0)
    {
      v14 = CFURLGetPortNumber(anURL);
    }

    else
    {
      v14 = -1;
    }

    a2[4] = v14;
    a2[6] = 0;
    a2[7] = _CFURLCopyQueryString(anURL, 0);
    v15 = _CFURLCopyFragment(anURL, 0);
  }

  else
  {
    v7 = CFGetAllocator(anURL);
    result = CFURLCanBeDecomposed(anURL);
    if (!result)
    {
      return result;
    }

    v8 = CFURLCopyPath(anURL);
    if (v8)
    {
      v9 = v8;
      a2[5] = CFStringCreateArrayBySeparatingStrings(v7, v8, @"/");
      CFRelease(v9);
    }

    else
    {
      a2[5] = 0;
    }

    v12 = CFURLGetBaseURL(anURL);
    a2[9] = v12;
    if (v12)
    {
      CFRetain(v12);
      v13 = 0;
    }

    else
    {
      v13 = _retainedComponentString(anURL, 1, 1, 0);
    }

    *a2 = v13;
    a2[1] = _retainedComponentString(anURL, 2, 0, 0);
    a2[2] = _retainedComponentString(anURL, 4, 0, 0);
    a2[3] = _retainedComponentString(anURL, 8, 0, 0);
    if ((*(anURL + 16) & 0x10) != 0)
    {
      v16 = CFURLGetPortNumber(anURL);
    }

    else
    {
      v16 = -1;
    }

    a2[4] = v16;
    a2[6] = 0;
    a2[7] = _retainedComponentString(anURL, 128, 0, 0);
    v15 = _retainedComponentString(anURL, 256, 0, 0);
  }

  a2[8] = v15;
  return 1;
}

Boolean CFURLCanBeDecomposed(CFURLRef anURL)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCanBeDecomposed_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, anURL))
    {
      anURL = [(__CFURL *)anURL _cfurl];
    }

    LOBYTE(v2) = [(__CFURL *)anURL _isDecomposable];
  }

  else
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, anURL))
    {
      anURL = [(__CFURL *)anURL _cfurl];
    }

    return (*(anURL + 4) >> 14) & 1;
  }

  return v2;
}

__CFString *_CFBundleGetAlternateNameForLanguage(CFTypeRef cf1)
{
  v2 = 0;
  while (1)
  {
    v3 = _CFBundleGetAlternateNameForLanguage___CFBundleCommonLanguageAbbreviationsArray[v2];
    v4 = CFEqual(cf1, v3);
    v5 = _CFBundleGetAlternateNameForLanguage___CFBundleCommonLanguageNamesArray[v2];
    if (v4)
    {
      break;
    }

    if (CFEqual(cf1, v5))
    {
      return v3;
    }

    if (++v2 == 7)
    {
      return 0;
    }
  }

  return v5;
}

Boolean CFRunLoopTimerIsValid(CFRunLoopTimerRef timer)
{
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (CF_IS_OBJC(0x2FuLL, timer))
  {
    LOBYTE(v2) = [(__CFRunLoopTimer *)timer isValid];
  }

  else
  {
    v3 = atomic_load(timer + 1);
    return (v3 >> 3) & 1;
  }

  return v2;
}

void CFRunLoopTimerGetContext(CFRunLoopTimerRef timer, CFRunLoopTimerContext *context)
{
  __CFCheckCFInfoPACSignature(timer);
  v4 = _CFGetNonObjCTypeID(timer);
  if (v4 != 47)
  {
    _CFAssertMismatchedTypeID(0x2FuLL, v4);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v5 = *(timer + 152);
  v6 = *(timer + 168);
  context->copyDescription = *(timer + 23);
  *&context->version = v5;
  *&context->retain = v6;
}

CFURLRef _CFURLCreateFromComponents(CFAllocatorRef alloc, uint64_t a2, uint64_t a3)
{
  v36 = *MEMORY[0x1E69E9840];
  if (a2 == 2)
  {
    Mutable = CFStringCreateMutable(alloc, 0);
    MutableCopy = Mutable;
    v14 = *a3;
    if (*a3)
    {
      CFStringAppend(Mutable, *a3);
      CFStringAppend(MutableCopy, @"://");
      v11 = 0;
    }

    else
    {
      v11 = *(a3 + 56);
    }

    v23 = *(a3 + 8);
    if (v23)
    {
      CFStringAppend(MutableCopy, v23);
      CFStringAppend(MutableCopy, @"@");
      v24 = *(a3 + 16);
      if (!v24)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v24 = *(a3 + 16);
      if (!v24)
      {
        if (!v14)
        {
LABEL_49:
          v27 = *(a3 + 32);
          if (v27)
          {
            v28 = CFStringCreateByCombiningStrings(alloc, v27, @"/");
            CFStringAppend(MutableCopy, v28);
            CFRelease(v28);
          }

          if (*(a3 + 40))
          {
            CFStringAppend(MutableCopy, @"?");
            CFStringAppend(MutableCopy, *(a3 + 40));
          }

          if (!*(a3 + 48))
          {
            goto LABEL_56;
          }

          CFStringAppend(MutableCopy, @"#");
          v22 = *(a3 + 48);
          goto LABEL_55;
        }

LABEL_46:
        v25 = *(a3 + 32);
        if (!v25 || (ValueAtIndex = CFArrayGetValueAtIndex(v25, 0), CFStringGetLength(ValueAtIndex)))
        {
          CFStringAppend(MutableCopy, @"/");
        }

        goto LABEL_49;
      }
    }

    CFStringAppend(MutableCopy, v24);
    if (*(a3 + 24) != -1)
    {
      CFStringAppendFormat(MutableCopy, 0, @":%ld", *(a3 + 24));
    }

    goto LABEL_46;
  }

  if (a2 != 1)
  {
    if (!a2)
    {
      v5 = *a3;
      if (*a3)
      {
        chars = 58;
        v6 = CFStringGetLength(v5) + 1;
        Length = *(a3 + 8);
        if (Length)
        {
          Length = CFStringGetLength(Length);
        }

        MutableCopy = CFStringCreateMutableCopy(alloc, Length + v6, *a3);
        CFStringAppendCharacters(MutableCopy, &chars, 1);
        v9 = *(a3 + 8);
        if (v9)
        {
          CFStringAppend(MutableCopy, v9);
        }

        if (!MutableCopy)
        {
          goto LABEL_61;
        }

        goto LABEL_59;
      }

      MutableCopy = *(a3 + 8);
      if (MutableCopy)
      {
        CFRetain(*(a3 + 8));
LABEL_59:
        v29 = alloc;
        v30 = MutableCopy;
        v31 = 0;
        goto LABEL_60;
      }
    }

LABEL_61:
    v32 = 0;
    goto LABEL_62;
  }

  v10 = CFStringCreateMutable(alloc, 0);
  MutableCopy = v10;
  if (*a3)
  {
    CFStringAppend(v10, *a3);
    CFStringAppend(MutableCopy, @"://");
    v11 = 0;
    v12 = 1;
  }

  else
  {
    v12 = 0;
    v11 = *(a3 + 72);
  }

  v15 = *(a3 + 8);
  if (v15)
  {
    CFStringAppend(MutableCopy, v15);
    if (!*(a3 + 16))
    {
      goto LABEL_21;
    }
  }

  else if (!*(a3 + 16))
  {
    goto LABEL_22;
  }

  CFStringAppend(MutableCopy, @":");
  CFStringAppend(MutableCopy, *(a3 + 16));
LABEL_21:
  CFStringAppend(MutableCopy, @"@");
  v12 = 1;
LABEL_22:
  v16 = *(a3 + 24);
  if (v16)
  {
    CFStringAppend(MutableCopy, v16);
    v17 = *(a3 + 32);
    if (v17 == -1)
    {
      goto LABEL_27;
    }

    goto LABEL_26;
  }

  v17 = *(a3 + 32);
  if (v17 != -1)
  {
LABEL_26:
    CFStringAppendFormat(MutableCopy, 0, @":%ld", v17);
LABEL_27:
    v18 = *(a3 + 40);
    if (!v18 || !CFArrayGetCount(v18) || (v19 = CFArrayGetValueAtIndex(*(a3 + 40), 0), CFStringGetLength(v19)))
    {
      CFStringAppend(MutableCopy, @"/");
    }

    goto LABEL_31;
  }

  if (v12)
  {
    goto LABEL_27;
  }

LABEL_31:
  v20 = *(a3 + 40);
  if (v20)
  {
    v21 = CFStringCreateByCombiningStrings(alloc, v20, @"/");
    CFStringAppend(MutableCopy, v21);
    CFRelease(v21);
  }

  if (*(a3 + 48))
  {
    CFStringAppend(MutableCopy, @";");
    CFStringAppend(MutableCopy, *(a3 + 48));
  }

  if (*(a3 + 56))
  {
    CFStringAppend(MutableCopy, @"?");
    CFStringAppend(MutableCopy, *(a3 + 56));
  }

  if (!*(a3 + 64))
  {
    goto LABEL_56;
  }

  CFStringAppend(MutableCopy, @"#");
  v22 = *(a3 + 64);
LABEL_55:
  CFStringAppend(MutableCopy, v22);
LABEL_56:
  v29 = alloc;
  v30 = MutableCopy;
  v31 = v11;
LABEL_60:
  v32 = CFURLCreateWithString(v29, v30, v31);
  CFRelease(MutableCopy);
LABEL_62:
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

CFStringRef CFStringCreateByCombiningStrings(CFAllocatorRef alloc, CFArrayRef theArray, CFStringRef separatorString)
{
  Count = CFArrayGetCount(theArray);
  v67 = CF_IS_OBJC(7uLL, separatorString);
  if (v67)
  {
    v8 = 0;
  }

  else
  {
    v9 = atomic_load(&separatorString->info);
    v8 = (v9 & 0x10) == 0;
  }

  if (Count == 1)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(theArray, 0);

    return CFStringCreateCopy(alloc, ValueAtIndex);
  }

  else
  {
    if (Count)
    {
      if (!alloc)
      {
        v18 = _CFGetTSD(1u);
        if (v18)
        {
          alloc = v18;
        }

        else
        {
          alloc = &__kCFAllocatorSystemDefault;
        }
      }

      v19 = CFStringGetLength(separatorString) * (Count - 1);
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          v21 = CFArrayGetValueAtIndex(theArray, i);
          Length = CFStringGetLength(v21);
          if (CF_IS_OBJC(7uLL, v21) || (v23 = atomic_load(&v21->info), (v23 & 0x10) != 0))
          {
            v8 = 0;
          }

          v19 += Length;
        }
      }

      v63 = 2 * v19;
      if (v8)
      {
        v24 = v19 + 1;
      }

      else
      {
        v24 = 2 * v19;
      }

      Typed = CFAllocatorAllocateTyped(alloc, v24, 0x100004077774924, 0);
      if (!Typed)
      {
        __CFStringHandleOutOfMemory();
      }

      v64 = alloc;
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      v68 = !v8;
      v26 = CFStringGetLength(separatorString);
      __dst = Typed;
      if (Count >= 1)
      {
        v27 = 0;
        v28 = 0;
        v29 = v26 << v68;
        p_data = &separatorString->data;
        do
        {
          if (v27)
          {
            if (v28)
            {
              memmove(Typed, v28, v29);
            }

            else
            {
              if (v67)
              {
                v70.length = CFStringGetLength(separatorString);
                v70.location = 0;
                CFStringGetCharacters(separatorString, v70, Typed);
              }

              else if (v8 || (v30 = atomic_load(&separatorString->info), (v30 & 0x10) != 0))
              {
                v33 = atomic_load(&separatorString->info);
                if ((v33 & 0x60) != 0)
                {
                  v34 = *p_data;
                }

                else
                {
                  v35 = atomic_load(&separatorString->info);
                  v34 = &p_data[(v35 & 5) != 4];
                }

                v36 = atomic_load(&separatorString->info);
                memmove(Typed, &v34[(v36 >> 2) & 1], v29);
              }

              else
              {
                v31 = atomic_load(&separatorString->info);
                if ((v31 & 0x60) != 0)
                {
                  v32 = *p_data;
                }

                else
                {
                  v54 = atomic_load(&separatorString->info);
                  v32 = &p_data[(v54 & 5) != 4];
                }

                v55 = atomic_load(&separatorString->info);
                v56 = atomic_load(&separatorString->info);
                v57 = atomic_load(&separatorString->info);
                v58 = v57 & 0x60;
                if ((v56 & 5) == 4)
                {
                  if (v58)
                  {
                    v59 = *p_data;
                  }

                  else
                  {
                    v61 = atomic_load(&separatorString->info);
                    v59 = &p_data[(v61 & 5) != 4];
                  }

                  v60 = *v59;
                }

                else if (v58)
                {
                  v60 = separatorString->length;
                }

                else
                {
                  v60 = *p_data;
                }

                __CFStrConvertBytesToUnicode(&v32[(v55 >> 2) & 1], Typed, v60);
              }

              v28 = Typed;
            }

            Typed += v29;
          }

          v37 = CFArrayGetValueAtIndex(theArray, v27);
          if (CF_IS_OBJC(7uLL, v37))
          {
            v38 = CFStringGetLength(v37);
            v71.location = 0;
            v71.length = v38;
            CFStringGetCharacters(v37, v71, Typed);
            v39 = 2 * v38;
          }

          else
          {
            v40 = atomic_load(&v37->info);
            v41 = &v37->data;
            if ((v40 & 0x60) != 0)
            {
              v42 = *v41;
            }

            else
            {
              v43 = atomic_load(&v37->info);
              v42 = &v41[(v43 & 5) != 4];
            }

            v44 = atomic_load(&v37->info);
            if ((v44 & 5) == 4)
            {
              v45 = *v42;
            }

            else
            {
              v46 = atomic_load(&v37->info);
              if ((v46 & 0x60) != 0)
              {
                v45 = v37->length;
              }

              else
              {
                v45 = *v41;
              }
            }

            v39 = v45 << v68;
            if (v8 || (p_info = &v37->info, v48 = atomic_load(&v37->info), (v48 & 0x10) != 0))
            {
              v52 = atomic_load(&v37->info);
              memmove(Typed, v42 + ((v52 >> 2) & 1), v39);
            }

            else
            {
              v49 = atomic_load(p_info);
              v50 = atomic_load(p_info);
              if ((v50 & 5) == 4)
              {
                v51 = *v42;
              }

              else
              {
                v53 = atomic_load(&v37->info);
                if ((v53 & 0x60) != 0)
                {
                  v51 = v37->length;
                }

                else
                {
                  v51 = *v41;
                }
              }

              __CFStrConvertBytesToUnicode(v42 + ((v49 >> 2) & 1), Typed, v51);
            }
          }

          Typed += v39;
          ++v27;
        }

        while (Count != v27);
      }

      if (v8)
      {
        *Typed = 0;
        v62 = __CFDefaultEightBitStringEncoding;
        if (__CFDefaultEightBitStringEncoding == -1)
        {
          v62 = __CFStringComputeEightBitStringEncoding();
        }

        v12 = strlen(__dst);
        v10 = v64;
        v11 = __dst;
        v13 = v62;
        v14 = 24;
        v15 = v64;
      }

      else
      {
        v12 = v63;
        v10 = v64;
        v11 = __dst;
        v13 = 256;
        v14 = 16;
        v15 = v64;
      }
    }

    else
    {
      v10 = alloc;
      v11 = 0;
      v12 = 0;
      v13 = 256;
      v14 = 2;
      v15 = -1;
    }

    return __CFStringCreateImmutableFunnel3(v10, v11, v12, v13, v14, v15, 0, v7);
  }
}

void _addBackstopValuesForIdentifierAndSource(const void *a1, os_unfair_lock_s *a2)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if (CFEqual(a1, @"NSRegistrationDomain"))
  {
    _addBackstopValuesForIdentifierAndSource_cold_1(a2);
  }

  else if (CFEqual(a1, @"NSArgumentDomain"))
  {
    if (getDefaultArguments_onceToken != -1)
    {
      _addBackstopValuesForIdentifierAndSource_cold_2();
    }

    v5 = getDefaultArguments___NSDefaultArguments;
    if (getDefaultArguments___NSDefaultArguments)
    {
      v6 = [getDefaultArguments___NSDefaultArguments count];
      v8 = v6;
      if (v6 >> 60)
      {
        v19 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
        v20 = [NSException exceptionWithName:@"NSGenericException" reason:v19 userInfo:0];
        CFRelease(v19);
        objc_exception_throw(v20);
      }

      if (v6 <= 1)
      {
        v9 = 1;
      }

      else
      {
        v9 = v6;
      }

      v10 = MEMORY[0x1EEE9AC00](v6, v7);
      v13 = &v22 - v12;
      v24[0] = 0;
      if (v8 > 0x100)
      {
        v16 = _CFCreateArrayStorage(v9, 0, v24);
        MEMORY[0x1EEE9AC00](v16, v18);
        v15 = &v21;
        v23 = 0;
        v17 = _CFCreateArrayStorage(v9, 0, &v23);
        v13 = v16;
      }

      else
      {
        MEMORY[0x1EEE9AC00](v10, v11);
        v15 = &v22 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
        v16 = 0;
        v17 = 0;
        v23 = 0;
      }

      if (v8 >= 0x101)
      {
        v15 = v17;
      }

      [v5 getObjects:v13 andKeys:v15 count:v8];
      if (a2)
      {
        [(CFPrefsSource *)a2 setValues:v13 forKeys:v15 count:v8 copyValues:0 removeValuesForKeys:0 count:0 from:0];
      }

      free(v17);
      free(v16);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

Boolean CFURLResourceIsReachable(CFURLRef url, CFErrorRef *error)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (!_CFURLHasFileURLScheme(url, &v14))
  {
    if (v14)
    {
      if (error)
      {
LABEL_7:
        v10 = CFErrorCreate(0, @"NSCocoaErrorDomain", 262, 0);
        LOBYTE(IsReachable) = 0;
        goto LABEL_8;
      }
    }

    else
    {
      CFLog(4, @"CFURLResourceIsReachable failed because it was passed a URL which has no scheme", v3, v4, v5, v6, v7, v8, v13);
      if (error)
      {
        goto LABEL_7;
      }
    }

    LOBYTE(IsReachable) = 0;
    goto LABEL_11;
  }

  IsReachable = _FSURLResourceIsReachable();
  if (!IsReachable && error)
  {
    v10 = CFErrorCreate(0, @"NSCocoaErrorDomain", 4, 0);
LABEL_8:
    *error = v10;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return IsReachable;
}

void __getDefaultArguments_block_invoke()
{
  v14[1] = *MEMORY[0x1E69E9840];
  if (!issetugid())
  {
    getDefaultArguments___NSDefaultArguments = objc_opt_new();
    v0 = [objc_msgSend(MEMORY[0x1E696AE30] "processInfo")];
    v1 = [v0 count] - 1;
    if (v1 >= 2)
    {
      v2 = 1;
      do
      {
        v3 = [v0 objectAtIndex:v2];
        v4 = v2 + 1;
        if (![v3 hasPrefix:@"-"])
        {
          goto LABEL_19;
        }

        v5 = [v0 objectAtIndex:v2 + 1];
        if (([(__CFString *)v5 hasPrefix:@"-"]& 1) != 0)
        {
          goto LABEL_19;
        }

        v6 = -[__CFString rangeOfCharacterFromSet:options:range:](v5, "rangeOfCharacterFromSet:options:range:", [objc_msgSend(MEMORY[0x1E696AB08] "whitespaceAndNewlineCharacterSet")], 0, 0, -[__CFString length](v5, "length"));
        if (!v7)
        {
          v5 = &stru_1EF068AA8;
LABEL_17:
          [getDefaultArguments___NSDefaultArguments setObject:v5 forKeyedSubscript:{objc_msgSend(v3, "substringFromIndex:", 1)}];
          goto LABEL_18;
        }

        v8 = [(__CFString *)v5 characterAtIndex:v6];
        if (((v8 - 34) > 0x39 || ((1 << (v8 - 34)) & 0x200000004000041) == 0) && v8 != 123)
        {
          goto LABEL_17;
        }

        v14[0] = 0;
        v9 = _CFPropertyListCreateFromXMLString(&__kCFAllocatorSystemDefault, v5, 0, v14, 1, 0);
        if (v14[0])
        {
          v10 = v14[0];
          v11 = [(__CFString *)v5 dataUsingEncoding:4 allowLossyConversion:0];
          error = 0;
          v5 = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, v11, 0, 0, &error);
          if (!v5 && error)
          {
            CFRelease(error);
            goto LABEL_18;
          }
        }

        else
        {
          v5 = v9;
        }

        if (v5)
        {
          goto LABEL_17;
        }

LABEL_18:
        v4 = v2 + 2;
LABEL_19:
        v2 = v4;
      }

      while (v4 < v1);
    }
  }

  v12 = *MEMORY[0x1E69E9840];
}

CFRunLoopSourceRef CFMachPortCreateRunLoopSource(CFAllocatorRef allocator, CFMachPortRef port, CFIndex order)
{
  v13.perform = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(port);
  v6 = _CFGetNonObjCTypeID(port);
  if (v6 != 36)
  {
    _CFAssertMismatchedTypeID(0x24uLL, v6);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if ((__CF_FORK_STATE & 1) == 0 && CFMachPortIsValid(port))
  {
    os_unfair_lock_lock(port + 24);
    if (*(port + 4))
    {
LABEL_9:
      v7 = 0;
LABEL_18:
      os_unfair_lock_unlock(port + 24);
      goto LABEL_19;
    }

    v8 = *(port + 5);
    if (v8)
    {
      IsValid = CFRunLoopSourceIsValid(v8);
      v10 = *(port + 5);
      if (IsValid)
      {
        if (v10)
        {
          goto LABEL_17;
        }
      }

      else
      {
        CFRelease(v10);
        *(port + 5) = 0;
      }
    }

    v13.version = 1;
    v13.info = port;
    v13.retain = CFRetain;
    v13.release = CFRelease;
    v13.copyDescription = __CFMachPortCopyDescription;
    v13.equal = __CFMachPortEqual;
    v13.hash = __CFMachPortHash;
    v13.schedule = __CFMachPortGetPort;
    v13.cancel = __CFMachPortPerform;
    v10 = CFRunLoopSourceCreate(allocator, order, &v13);
    *(port + 5) = v10;
    if (!v10)
    {
      goto LABEL_9;
    }

LABEL_17:
    v7 = CFRetain(v10);
    goto LABEL_18;
  }

  v7 = 0;
LABEL_19:
  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

CFRunLoopSourceRef CFRunLoopSourceCreate(CFAllocatorRef allocator, CFIndex order, CFRunLoopSourceContext *context)
{
  v21 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (!context)
  {
    CFRunLoopSourceCreate_cold_1();
  }

  Instance = _CFRuntimeCreateInstance(allocator, 0x2EuLL, 168, 0, v3, v4, v5, v6);
  v11 = Instance;
  if (Instance)
  {
    v12 = atomic_load((Instance + 8));
    v13 = v12;
    do
    {
      atomic_compare_exchange_strong((Instance + 8), &v13, v12 | 8);
      v14 = v13 == v12;
      v12 = v13;
    }

    while (!v14);
    atomic_store(0, (Instance + 88));
    v20.__sig = 0;
    *v20.__opaque = 0;
    pthread_mutexattr_init(&v20);
    pthread_mutexattr_settype(&v20, 2);
    pthread_mutex_init((v11 + 16), &v20);
    pthread_mutexattr_destroy(&v20);
    *(v11 + 80) = order;
    v15 = 72;
    if (context->version != 1)
    {
      v15 = 0;
    }

    if (context->version)
    {
      v16 = v15;
    }

    else
    {
      v16 = 80;
    }

    memmove((v11 + 104), context, v16);
    retain = context->retain;
    if (retain)
    {
      *(v11 + 112) = (retain)(context->info);
    }
  }

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

CFTypeRef _CFCopySystemVersionDictionary()
{
  if (_CFCopySystemVersionDictionary_onceToken != -1)
  {
    _CFCopySystemVersionDictionary_cold_1();
  }

  result = _CFCopySystemVersionDictionary_result;
  if (_CFCopySystemVersionDictionary_result)
  {

    return CFRetain(result);
  }

  return result;
}

void _CFPreferencesRegisterStandardUserDefaultsExists()
{
  if (_CFPreferencesRegisterStandardUserDefaultsExists_onceToken != -1)
  {
    _CFPreferencesRegisterStandardUserDefaultsExists_cold_1();
  }
}

void CFRunLoopAddSource(CFRunLoopRef rl, CFRunLoopSourceRef source, CFRunLoopMode mode)
{
  v34 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  __CFCheckCFInfoPACSignature(rl);
  v6 = _CFGetNonObjCTypeID(rl);
  if (v6 != 43)
  {
    _CFAssertMismatchedTypeID(0x2BuLL, v6);
  }

  v7 = atomic_load(__CFMainThreadHasExited);
  if (v7)
  {
    CFRunLoopAddSource_cold_1(rl);
  }

  v8 = atomic_load(rl + 1);
  if ((v8 & 4) == 0)
  {
    if (*(source + 13) == 1)
    {
      v9 = (*(source + 20))(*(source + 14));
      ptype[0] = 0;
      v10 = mach_port_type(*MEMORY[0x1E69E9A60], v9, ptype);
      if (!v10 && (ptype[0] & 0x20000) == 0)
      {
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __CFRunLoopAddSource_block_invoke;
        v31[3] = &__block_descriptor_56_e5_v8__0l;
        v31[4] = source;
        v31[5] = rl;
        v31[6] = mode;
        if (CFRunLoopAddSource_onceToken != -1)
        {
          dispatch_once(&CFRunLoopAddSource_onceToken, v31);
        }

        __CFRunLoopError_AddingSourceLackingReceiveRight(v10, v11, v12, v13, v14, v15, v16);
      }
    }

    v17 = atomic_load(source + 1);
    if ((v17 & 8) != 0)
    {
      pthread_mutex_lock((rl + 16));
      if (mode == @"kCFRunLoopCommonModes")
      {
        v22 = *(rl + 330);
        if (v22)
        {
          Copy = CFSetCreateCopy(&__kCFAllocatorSystemDefault, v22);
        }

        else
        {
          Copy = 0;
        }

        Mutable = *(rl + 331);
        if (!Mutable)
        {
          Mutable = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
          *(rl + 331) = Mutable;
        }

        CFSetAddValue(Mutable, source);
        if (!Copy)
        {
          goto LABEL_39;
        }

        *ptype = rl;
        v33 = source;
        CFSetApplyFunction(Copy, __CFRunLoopAddItemToCommonModes, ptype);
        v25 = Copy;
        goto LABEL_38;
      }

      v18 = __CFRunLoopCopyMode(rl, mode, 1);
      if (!v18)
      {
LABEL_39:
        pthread_mutex_unlock((rl + 16));
        goto LABEL_40;
      }

      v19 = v18;
      pthread_mutex_lock((v18 + 16));
      v20 = *(v19 + 96);
      if (!v20)
      {
        *(v19 + 96) = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
        *(v19 + 104) = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
        *(v19 + 128) = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, 0, 0);
        v20 = *(v19 + 96);
      }

      if (CFSetContainsValue(v20, source) || CFSetContainsValue(*(v19 + 104), source))
      {
        goto LABEL_37;
      }

      v21 = *(source + 13);
      if (v21 == 1)
      {
        CFSetAddValue(*(v19 + 104), source);
        v26 = (*(source + 20))(*(source + 14));
        if (v26)
        {
          v27 = v26;
          CFDictionarySetValue(*(v19 + 128), v26, source);
          mach_port_insert_member(*MEMORY[0x1E69E9A60], v27, *(v19 + 136));
        }
      }

      else if (!v21)
      {
        CFSetAddValue(*(v19 + 96), source);
      }

      pthread_mutex_lock((source + 16));
      v28 = *(source + 12);
      if (!v28)
      {
        v28 = CFBagCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeBagCallBacks);
        *(source + 12) = v28;
      }

      CFBagAddValue(v28, rl);
      pthread_mutex_unlock((source + 16));
      if (*(source + 13))
      {
LABEL_37:
        pthread_mutex_unlock((v19 + 16));
        v25 = v19;
LABEL_38:
        CFRelease(v25);
        goto LABEL_39;
      }

      v30 = *(source + 20);
      pthread_mutex_unlock((v19 + 16));
      CFRelease(v19);
      pthread_mutex_unlock((rl + 16));
      if (v30)
      {
        (*(source + 20))(*(source + 14), rl, mode);
      }
    }
  }

LABEL_40:
  v29 = *MEMORY[0x1E69E9840];
}

const void *_CFCopySystemVersionDictionaryValue(const void *a1)
{
  v2 = _CFCopyServerVersionDictionary();
  if (!v2)
  {
    v2 = _CFCopySystemVersionDictionary();
    if (!v2)
    {
      return 0;
    }
  }

  v3 = v2;
  Value = CFDictionaryGetValue(v2, a1);
  v5 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v3);
  return v5;
}

CFTypeRef _CFCopyServerVersionDictionary()
{
  if (_CFCopyServerVersionDictionary_onceToken != -1)
  {
    _CFCopyServerVersionDictionary_cold_1();
  }

  result = _CFCopyServerVersionDictionary_result;
  if (_CFCopyServerVersionDictionary_result)
  {

    return CFRetain(result);
  }

  return result;
}

void _addBackstopValuesForIdentifierAndSource_cold_1(os_unfair_lock_s *a1)
{
  v6[4] = *MEMORY[0x1E69E9840];
  values = @"en-001";
  v2 = CFArrayCreate(&__kCFAllocatorSystemDefault, &values, 1, &kCFTypeArrayCallBacks);
  v5[0] = xmmword_1E6DCF148;
  v5[1] = *&off_1E6DCF158;
  v6[0] = v2;
  v6[1] = @"en_001";
  v6[2] = v2;
  v6[3] = @"macintosh";
  if (a1)
  {
    [(CFPrefsSource *)a1 setValues:v6 forKeys:v5 count:4uLL copyValues:1 removeValuesForKeys:0 count:0 from:0];
  }

  CFRelease(v2);
  v3 = *MEMORY[0x1E69E9840];
}

CFArrayRef _arrayDeepImmutableCopy(const __CFAllocator *a1, CFArrayRef theArray)
{
  v19[1] = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(theArray);
  if (Count)
  {
    v6 = Count;
    if (Count >> 60)
    {
      _arrayDeepImmutableCopy_cold_2();
    }

    MEMORY[0x1EEE9AC00](Count, v5);
    Typed = v19 - v8;
    if (v7 >= 0x200)
    {
      v10 = 512;
    }

    else
    {
      v10 = v7;
    }

    bzero(v19 - v8, v10);
    if (v6 > 0x100)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * v6, 0xC0040B8AA526DLL, 0);
      if (!Typed)
      {
        _arrayDeepImmutableCopy_cold_1();
      }
    }

    else
    {
      bzero(Typed, 8 * v6);
    }

    v21.location = 0;
    v21.length = v6;
    CFArrayGetValues(theArray, v21, Typed);
    v13 = 0;
    while (1)
    {
      DeepCopy = CFPropertyListCreateDeepCopy(a1, *&Typed[8 * v13], 0);
      if (!DeepCopy)
      {
        break;
      }

      *&Typed[8 * v13++] = DeepCopy;
      if (v6 == v13)
      {
        v13 = v6;
        break;
      }
    }

    if (v13 == v6)
    {
      v15 = CFArrayCreate(a1, Typed, v6, &kCFTypeArrayCallBacks);
      if (!v13)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v15 = 0;
      if (!v13)
      {
        goto LABEL_22;
      }
    }

    v16 = Typed;
    do
    {
      v17 = *v16++;
      CFRelease(v17);
      --v13;
    }

    while (v13);
LABEL_22:
    if (v6 >= 0x101)
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
    }

    v18 = *MEMORY[0x1E69E9840];
    return v15;
  }

  v11 = *MEMORY[0x1E69E9840];

  return CFArrayCreate(a1, 0, 0, &kCFTypeArrayCallBacks);
}

Boolean CFBitVectorContainsBit(CFBitVectorRef bv, CFRange range, CFBit value)
{
  v7 = *MEMORY[0x1E69E9840];
  if (range.length)
  {
    v6 = 0;
    v5 = value;
    __CFBitVectorInternalMap(bv, range.location, range.length, __CFBitVectorCountBits, &v5);
    result = v6 != 0;
  }

  else
  {
    result = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void _CFXPreferencesRegisterDefaultValues(uint64_t a1)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v2 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFXPreferencesRegisterDefaultValues_cold_1();
    }

    v2 = [qword_1ED40BE18 copyPrefs];
  }

  v3 = v2;
  [v2 registerDefaultValues:a1];
}

os_log_t __makeLogHandles_block_invoke()
{
  clientHandle = os_log_create("com.apple.defaults", "User Defaults");
  result = os_log_create("com.apple.defaults", "cfprefsd");
  daemonHandle = result;
  return result;
}

uint64_t __CFBitVectorCountBits(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (*a3)
  {
    v3 = result;
  }

  else
  {
    v3 = ~result;
  }

  *(a3 + 8) += __CFBitVectorCountBits___CFNibbleBitCount[v3 & a2 & 0xFLL] + __CFBitVectorCountBits___CFNibbleBitCount[(v3 & a2) >> 4];
  return result;
}

void __CFBitVectorDeallocate(void *a1)
{
  v2 = CFGetAllocator(a1);
  v3 = a1[4];
  if (v3)
  {

    CFAllocatorDeallocate(v2, v3);
  }
}

uint64_t __CFArrayCreate0(__objc2_class **a1, uint64_t *a2, uint64_t a3, const CFArrayCallBacks *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Init = __CFArrayCreateInit(a1, 0, a3, a4, a5, a6, a7, a8);
  v12 = Init;
  v13 = atomic_load((Init + 8));
  v14 = (v13 >> 2) & 3;
  if (v14)
  {
    if (v14 == 1)
    {
      v15 = &kCFTypeArrayCallBacks;
    }

    else
    {
      v16 = atomic_load((Init + 8));
      v17 = v16 & 3;
      if (v17)
      {
        v18 = 0;
      }

      else
      {
        v18 = (Init + 48);
      }

      if (v17 == 2)
      {
        v15 = (Init + 48);
      }

      else
      {
        v15 = v18;
      }
    }
  }

  else
  {
    v15 = &__kCFNullArrayCallBacks;
  }

  v19 = atomic_load((Init + 8));
  v20 = v19 & 3;
  if (v20 == 2)
  {
    v24 = (*(Init + 40) + 8 * **(Init + 40) + 16);
  }

  else if (v20)
  {
    v24 = 0;
  }

  else
  {
    v21 = atomic_load((Init + 8));
    v22 = (~v21 & 0xC) == 0;
    v23 = 48;
    if (v22)
    {
      v23 = 88;
    }

    v24 = (Init + v23);
  }

  if (v15->retain)
  {
    if (a3 >= 1)
    {
      v25 = a3;
      do
      {
        v26 = *a2++;
        *v24++ = (v15->retain)(a1, v26);
        --v25;
      }

      while (v25);
    }
  }

  else if (a3 >= 1)
  {
    v27 = a3;
    do
    {
      v28 = *a2++;
      *v24++ = v28;
      --v27;
    }

    while (v27);
  }

  *(v12 + 16) = a3;
  return v12;
}

void *_CFUnsandboxedHomeDirectoryForCurrentUser()
{
  v13 = *MEMORY[0x1E69E9840];
  v0 = geteuid();
  v1 = getuid();
  if (v0)
  {
    v1 = v0;
  }

  v2 = getpwuid(v1);
  if (!v2 || (pw_dir = v2->pw_dir) == 0 || (v4 = strnlen(v2->pw_dir, 0x400uLL), (v5 = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, pw_dir, v4, 1u)) == 0))
  {
    v6 = __CFgetenv("HOME");
    v5 = v6;
    if (v6)
    {
      v7 = strnlen(v6, 0x400uLL);
      v5 = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, v5, v7, 1u);
    }
  }

  bzero(buffer, 0x400uLL);
  CFURLGetFileSystemRepresentation(v5, 1u, buffer, 1024);
  v8 = strnlen(buffer, 0x400uLL);
  v9 = malloc_type_malloc(v8 + 1, 0x100004077774924uLL);
  memmove(v9, buffer, v8);
  *(v9 + v8) = 0;
  if (v5)
  {
    CFRelease(v5);
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

void withKeysAndValues(const __CFDictionary *a1, uint64_t a2)
{
  v16[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Count = CFDictionaryGetCount(a1);
    v6 = 2 * Count;
    if (((Count >> 59) & 0xF) != 0)
    {
      v13 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", v6);
      v14 = [NSException exceptionWithName:@"NSGenericException" reason:v13 userInfo:0];
      CFRelease(v13);
      objc_exception_throw(v14);
    }

    if (Count)
    {
      v7 = MEMORY[0x1EEE9AC00](v6, v4);
      v9 = (v16 - v8);
      v16[0] = 0;
      if (v7 >= 0x101)
      {
        v10 = _CFCreateArrayStorage(v7, 0, v16);
        v9 = v10;
      }

      else
      {
        v10 = 0;
      }
    }

    else
    {
      MEMORY[0x1EEE9AC00](v6, v4);
      v9 = v15;
      v10 = 0;
      v16[0] = 0;
    }

    v11 = &v9[Count];
    CFDictionaryGetKeysAndValues(a1, v9, v11);
  }

  else
  {
    MEMORY[0x1EEE9AC00](0, a2);
    v11 = v15;
    v10 = 0;
    Count = 0;
    v16[0] = 0;
    v9 = v15;
  }

  (*(a2 + 16))(a2, v9, v11, Count);
  free(v10);
  v12 = *MEMORY[0x1E69E9840];
}

void CFCharacterSetInvert(CFMutableCharacterSetRef theSet)
{
  if (CF_IS_OBJC(0x19uLL, theSet))
  {

    [(__CFCharacterSet *)theSet invert];
  }

  else
  {
    v8 = atomic_load(theSet + 1);
    if ((v8 & 1) == 0)
    {
      CFLog(3, @"%s: Immutable character set passed to mutable function", v2, v3, v4, v5, v6, v7, "void CFCharacterSetInvert(CFMutableCharacterSetRef)");
      if (dyld_program_sdk_at_least())
      {
        CFCharacterSetInvert_cold_2();
      }
    }

    CFCharacterSetInvert_cold_1(theSet + 1, theSet);
  }
}

uint64_t *_CFGetProcessPath()
{
  if (!__CFProcessPath)
  {
    _CFProcessPath();
  }

  return &__CFProcessPath;
}

uint64_t __CFRunLoopSourceHash(uint64_t a1)
{
  v1 = *(a1 + 152);
  result = *(a1 + 112);
  if (v1)
  {
    return v1(result);
  }

  return result;
}

char *CFCharacterSetInvert_cold_1(unint64_t *a1, char *cf)
{
  v4 = atomic_load(a1);
  if (v4 & 0x70) != 0 || (v5 = atomic_load(a1), (v5) || (v6 = atomic_load(a1), (v6 & 8) != 0) || (result = CFCharacterSetGetPredefined(*(cf + 3)), result != cf))
  {
    v8 = atomic_load(a1);
    v9 = v8;
    do
    {
      atomic_compare_exchange_strong(a1, &v9, v8 & 0xFFFFFFFFFFFFFFFBLL);
      v10 = v9 == v8;
      v8 = v9;
    }

    while (!v10);
    v11 = atomic_load(a1);
    if ((v11 & 0x70) == 0x30)
    {
      v12 = *(cf + 3);
      if (v12)
      {
        for (i = 0; i != 0x2000; i += 16)
        {
          *(v12 + i) = vmvnq_s8(*(v12 + i));
        }
      }

      else
      {
        v25 = CFGetAllocator(cf);
        Typed = CFAllocatorAllocateTyped(v25, 0x2000, 0x100004052888210, 0);
        *(cf + 3) = Typed;
        memset(Typed, 255, 0x2000uLL);
      }
    }

    else
    {
      v14 = atomic_load(a1);
      if ((v14 & 0x70) != 0x40)
      {
        v19 = atomic_load(a1);
        v20 = atomic_load(a1);
        v21 = v19 & 8;
        v22 = v20;
        do
        {
          atomic_compare_exchange_strong(a1, &v22, (v20 & 0xFFFFFFFFFFFFFFF7 | v21) ^ 8);
          v10 = v22 == v20;
          v20 = v22;
        }

        while (!v10);
        result = *(cf + 5);
        if (!result)
        {
          v23 = CFGetAllocator(cf);
          result = OUTLINED_FUNCTION_11(v23);
          *(cf + 5) = result;
          *result = 0;
          *(result + 6) = 0;
          v24 = 1;
LABEL_34:
          result[13] = v24;
          return result;
        }

LABEL_33:
        v24 = result[13] == 0;
        goto LABEL_34;
      }

      v15 = 0;
      LODWORD(v16) = 0;
      v17 = *(cf + 3);
      do
      {
        if (*(v17 + v15))
        {
          if (*(v17 + v15) == 255)
          {
            *(v17 + v15) = 0;
          }

          else
          {
            LODWORD(v16) = v16 + 32;
          }
        }

        else
        {
          *(v17 + v15) = -1;
        }

        ++v15;
      }

      while (v15 != 256);
      if (v16 >= 1)
      {
        v18 = (v17 + 256);
        v16 = v16;
        do
        {
          *v18 = ~*v18;
          ++v18;
          --v16;
        }

        while (v16);
      }
    }

    result = *(cf + 5);
    if (!result)
    {
      v27 = CFGetAllocator(cf);
      result = OUTLINED_FUNCTION_11(v27);
      *(cf + 5) = result;
      *result = 0;
      *(result + 6) = 0;
    }

    goto LABEL_33;
  }

  return result;
}

void CFXNotificationRegisteredObserverSetDistributedConnection(uint64_t a1, uint64_t a2, void *a3)
{
  os_unfair_lock_lock((a1 + 16));
  if (*(a1 + 156) > a2)
  {
    _CFXNotificationRegisteredObserverSetDistributedConnection(a1, SHIDWORD(a2), a2, a3);
  }

  os_unfair_lock_unlock((a1 + 16));
}

void *_CFXNotificationRegisteredObserverSetDistributedConnection(void *result, int a2, unsigned int a3, void *object)
{
  v4 = result[18] + 56 * a3;
  if (*(v4 + 40) == a2)
  {
    *(v4 + 44) |= 0x2000u;
    result = *(v4 + 32);
    if (result != object)
    {
      if (result)
      {
        xpc_release(result);
      }

      result = xpc_retain(object);
      *(v4 + 32) = result;
    }
  }

  return result;
}

void CFXNotificationRegistrarAddRemoteToken(uint64_t a1, const void *a2, __CFString *cf, CFTypeRef cf1, __CFString *a5, int a6, void *a7, const void *a8)
{
  v42 = *MEMORY[0x1E69E9840];
  v11 = *(a1 + 24);
  if (cf)
  {
    v12 = cf;
    if (@"kCFNotificationAnyName" != cf && CFEqual(cf, @"kCFNotificationAnyName"))
    {
      v12 = @"kCFNotificationAnyName";
    }
  }

  else
  {
    v12 = @"kCFNotificationAnyName";
  }

  v13 = (v11 >> 1) & 1;
  if (cf1)
  {
    if (v13 && @"kCFNotificationAnyObject" != cf1 && CFEqual(cf1, @"kCFNotificationAnyObject"))
    {
      cf1 = @"kCFNotificationAnyObject";
    }
  }

  else
  {
    cf1 = @"kCFNotificationAnyObject";
  }

  if (a5)
  {
    v14 = a5;
  }

  else
  {
    v14 = @"kCFNotificationAnyObserver";
  }

  v15 = CFHash(v12);
  if (v13)
  {
    v16 = CFHash(cf1);
  }

  else
  {
    v16 = (cf1 >> 5) & 0x7F;
  }

  v17 = atomic_fetch_add((a1 + 168), 1u) << 32;
  v39 = -1;
  v40 = -1;
  v38 = -1;
  memset(v41, 0, sizeof(v41));
  os_unfair_lock_lock((a1 + 16));
  if (v12 == @"kCFNotificationAnyName")
  {
    if (cf1 == @"kCFNotificationAnyObject")
    {
      v32 = v17;
      v33 = -1;
      v21 = (a1 + 80);
      v22 = a1;
      v23 = a7;
      v24 = a8;
      v20 = -1;
      goto LABEL_26;
    }

    v19 = _CFXNotificationRegistrarAddObject(a1, a1 + 48, cf1, v16, &v39, -1, v13);
    v20 = v39;
    LODWORD(v33) = -1;
    HIDWORD(v33) = v39;
LABEL_25:
    v32 = v17;
    v21 = (v19 + 16);
    v22 = a1;
    v23 = a7;
    v24 = a8;
LABEL_26:
    v25 = v14;
    v26 = a6;
    goto LABEL_28;
  }

  if (cf1 != @"kCFNotificationAnyObject")
  {
    v18 = _CFXNotificationRegistrarAddName(a1, a1 + 32, v12, v15, &v40, 0);
    v19 = _CFXNotificationRegistrarAddObject(a1, v18 + 24, cf1, v16, &v39, v40, v13);
    v20 = v39;
    v33 = __PAIR64__(v39, v40);
    goto LABEL_25;
  }

  v27 = _CFXNotificationRegistrarAddName(a1, a1 + 64, v12, v15, &v40, 1);
  v20 = v40;
  v33 = __PAIR64__(v39, v40);
  v32 = v17;
  v21 = (v27 + 24);
  v24 = a8;
  v26 = a6 | 0x800;
  v22 = a1;
  v23 = a7;
  v25 = v14;
LABEL_28:
  v28 = _CFXNotificationRegistrarAddObserver(v22, v21, v23, v24, v20, v25, &v38, v26, v32, v33, SHIDWORD(v33), v41);
  if (v28)
  {
    v29 = v38;
    Mutable = *(a1 + 88);
    if (!Mutable)
    {
      Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, 0, 0);
      *(a1 + 88) = Mutable;
    }

    CFDictionarySetValue(Mutable, a2, (v17 | v29));
    *(v28 + 32) = a2;
  }

  os_unfair_lock_unlock((a1 + 16));
  _CFXNotificationDisposalListRelease(v41);
  v31 = *MEMORY[0x1E69E9840];
}

double CFStringGetDoubleValue(CFStringRef str)
{
  v24 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v17 = str;
  v20 = 0;
  Length = CFStringGetLength(str);
  CharactersPtr = CFStringGetCharactersPtr(v17);
  CStringPtrInternal = 0;
  v18 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtrInternal = _CFStringGetCStringPtrInternal(str, 0x600u, 0, 1);
  }

  v8 = 0.0;
  *buffer = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v19 = CStringPtrInternal;
  v22 = 0;
  v23 = 0;
  v4 = __CFStringScanDouble(buffer, 0, &v7, &v8);
  result = v8;
  if (!v4)
  {
    result = 0.0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFStringScanDouble(UniChar *buffer, uint64_t a2, int *a3, double *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  v32 = 0;
  v7 = *a3;
  if (*a3 < 0)
  {
    goto LABEL_5;
  }

LABEL_2:
  v8 = v7;
  v9 = *(buffer + 20);
  if (v9 > v8)
  {
    v10 = *(buffer + 17);
    if (v10)
    {
      v11 = *(v10 + 2 * *(buffer + 19) + 2 * v8);
    }

    else
    {
      v12 = *(buffer + 18);
      if (v12)
      {
        v11 = *(v12 + *(buffer + 19) + v8);
      }

      else
      {
        if (*(buffer + 22) <= v8 || (v13 = *(buffer + 21), v13 > v8))
        {
          v14 = v8 - 4;
          if (v8 < 4)
          {
            v14 = 0;
          }

          if (v14 + 64 < v9)
          {
            v9 = v14 + 64;
          }

          *(buffer + 21) = v14;
          *(buffer + 22) = v9;
          v35.length = v9 - v14;
          v35.location = *(buffer + 19) + v14;
          CFStringGetCharacters(*(buffer + 16), v35, buffer);
          v13 = *(buffer + 21);
        }

        v11 = buffer[v8 - v13];
      }
    }

    goto LABEL_6;
  }

LABEL_5:
  while (1)
  {
    v11 = -1;
LABEL_6:
    if (v11 != 12288 && (v11 - 8204) <= 0xFFF3u && v11 >= 0x21u && (v11 - 161) <= 0xFFDDu)
    {
      break;
    }

    v7 = *a3 + 1;
    *a3 = v7;
    if ((v7 & 0x80000000) == 0)
    {
      goto LABEL_2;
    }
  }

  if (v11 >= 0x80u)
  {
    __src[0] = 0;
    Typed = __src;
    v28 = strtod_l(__src, &v32, 0);
  }

  else
  {
    v31 = a4;
    v15 = 0;
    v16 = 0;
    v17 = 256;
    Typed = __src;
    while (1)
    {
      v19 = v15;
      if (((__CFNumberSet[v11 >> 3] >> (v11 & 7)) & 1) == 0)
      {
        break;
      }

      if (v15 >= v17 - 1)
      {
        if (!v16)
        {
          v20 = _CFGetTSD(1u);
          if (v20)
          {
            v16 = v20;
          }

          else
          {
            v16 = &__kCFAllocatorSystemDefault;
          }
        }

        v17 += 256;
        if (Typed == __src)
        {
          Typed = CFAllocatorAllocateTyped(v16, v17, 0x100004077774924, 0);
          memmove(Typed, __src, v19);
        }

        else
        {
          Typed = __CFSafelyReallocateWithAllocatorTyped(v16, Typed, v17, 0x100004077774924, 0, 0);
        }
      }

      Typed[v19] = v11;
      v21 = v19 + *a3 + 1;
      if ((v21 & 0x80000000) == 0)
      {
        v22 = v21;
        v23 = *(buffer + 20);
        if (v23 > v21)
        {
          v24 = *(buffer + 17);
          if (v24)
          {
            v11 = *(v24 + 2 * *(buffer + 19) + 2 * v21);
          }

          else
          {
            v25 = *(buffer + 18);
            if (v25)
            {
              v11 = *(v25 + *(buffer + 19) + v21);
            }

            else
            {
              if (*(buffer + 22) <= v21 || (v26 = *(buffer + 21), v26 > v21))
              {
                if (v21 >= 4)
                {
                  v27 = v21 - 4;
                }

                else
                {
                  v27 = 0;
                }

                if (v27 + 64 < v23)
                {
                  v23 = v27 + 64;
                }

                *(buffer + 21) = v27;
                *(buffer + 22) = v23;
                v36.length = v23 - v27;
                v36.location = *(buffer + 19) + v27;
                CFStringGetCharacters(*(buffer + 16), v36, buffer);
                v26 = *(buffer + 21);
              }

              v11 = buffer[v22 - v26];
            }
          }

          v15 = v19 + 1;
          if (v11 < 0x80u)
          {
            continue;
          }
        }
      }

      LODWORD(v19) = v19 + 1;
      break;
    }

    Typed[v19] = 0;
    v28 = strtod_l(Typed, &v32, 0);
    if (v16)
    {
      CFAllocatorDeallocate(v16, Typed);
    }

    a4 = v31;
  }

  if (Typed == v32)
  {
    result = 0;
  }

  else
  {
    *a3 += v32 - Typed;
    if (a4)
    {
      *a4 = v28;
    }

    result = 1;
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

void CFStringUppercase(CFMutableStringRef theString, CFLocaleRef locale)
{
  v57 = *MEMORY[0x1E69E9840];
  p_info = &theString->info;
  v5 = atomic_load(&theString->info);
  if (!CF_IS_OBJC(7uLL, theString))
  {
    v7 = atomic_load(p_info);
    if ((v7 & 1) == 0)
    {
      v8 = _CFOSLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        CFStringUppercase_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
      }

      goto LABEL_77;
    }

    v16 = atomic_load(&theString->info);
    v17 = v16 & 5;
    v18 = atomic_load(&theString->info);
    v19 = v18 & 0x60;
    if (v17 == 4)
    {
      p_data = &theString->data;
      if (v19)
      {
        v21 = *p_data;
      }

      else
      {
        v23 = atomic_load(&theString->info);
        v21 = &p_data[(v23 & 5) != 4];
      }

      length = *v21;
      if (!locale)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if ((v18 & 0x60) != 0)
    {
      length = theString->length;
      if (!locale)
      {
        goto LABEL_17;
      }
    }

    else
    {
      length = theString->data;
      if (!locale)
      {
LABEL_17:
        v24 = 0;
        if (!locale && (v5 & 0x10) == 0)
        {
          v25 = atomic_load(&theString->info);
          v26 = &theString->data;
          if ((v25 & 0x60) != 0)
          {
            v27 = *v26;
          }

          else
          {
            v28 = atomic_load(&theString->info);
            v27 = &v26[(v28 & 5) != 4];
          }

          v29 = atomic_load(&theString->info);
          if (length >= 1)
          {
            v24 = 0;
            v30 = &v27[(v29 >> 2) & 1];
            do
            {
              v31 = v30[v24];
              if ((v31 - 97) > 0x19)
              {
                if (v31 < 0)
                {
                  goto LABEL_32;
                }
              }

              else
              {
                v30[v24] = v31 - 32;
              }

              ++v24;
            }

            while (length != v24);
            goto LABEL_77;
          }

          v24 = 0;
        }

LABEL_32:
        if (v24 >= length)
        {
LABEL_77:
          v52 = *MEMORY[0x1E69E9840];
          return;
        }

        if ((v5 & 0x10) == 0)
        {
          v53 = 0;
          v54 = 0;
          __CFStringChangeSizeMultiple(theString, &v53, 1, 0, 1);
        }

        v32 = atomic_load(&theString->info);
        v33 = &theString->data;
        if ((v32 & 0x60) != 0)
        {
          v34 = *v33;
        }

        else
        {
          v35 = atomic_load(&theString->info);
          v34 = &v33[(v35 & 5) != 4];
        }

        ConditionalCaseMappingFlags = 0;
        while (1)
        {
          v37 = *(v34 + 2 * v24);
          v38 = v24 + 1;
          if ((v37 & 0xFC00) == 0xD800 && v38 < length)
          {
            v45 = *(v34 + 2 * v38);
            if ((v45 & 0xFC00) == 0xDC00)
            {
              v37 = v45 + (v37 << 10) - 56613888;
            }
          }

          if (locale)
          {
            ConditionalCaseMappingFlags = CFUniCharGetConditionalCaseMappingFlags(v37, v34, v24, length, 1, locale, ConditionalCaseMappingFlags);
          }

          else
          {
            ConditionalCaseMappingFlags = 0;
          }

          v40 = CFUniCharMapCaseTo(v37, &v55, 8, 1, ConditionalCaseMappingFlags, locale);
          v41 = v40 - 1;
          if (v40 >= 1)
          {
            *(v34 + 2 * v24) = v55;
          }

          if (v37 < 0x10000)
          {
            if (!v40)
            {
              v53 = v24;
LABEL_62:
              v54 = 1;
              __CFStringChangeSizeMultiple(theString, &v53, 1, 0, 1);
              v46 = atomic_load(&theString->info);
              if ((v46 & 0x60) != 0)
              {
                v34 = *v33;
              }

              else
              {
                v48 = atomic_load(&theString->info);
                v34 = &v33[(v48 & 5) != 4];
              }

              --length;
              goto LABEL_76;
            }

            if (v40 >= 2)
            {
              v53 = v24 + 1;
              v54 = 0;
              __CFStringChangeSizeMultiple(theString, &v53, 1, v41, 1);
              v44 = atomic_load(&theString->info);
              if ((v44 & 0x60) != 0)
              {
                v34 = *v33;
              }

              else
              {
                v49 = atomic_load(&theString->info);
                v34 = &v33[(v49 & 5) != 4];
              }

              memmove((v34 + 2 * v24 + 2), v56, 2 * v41);
              length += v41;
LABEL_75:
              v24 += v41;
            }
          }

          else
          {
            v42 = v40 - 2;
            if (v40 != 2)
            {
              v41 = v40 - 1;
              if (v40 == 1)
              {
                v53 = v24 + 1;
                goto LABEL_62;
              }

              if (!v40)
              {
                v53 = v24;
                v54 = 2;
                __CFStringChangeSizeMultiple(theString, &v53, 1, 0, 1);
                v43 = atomic_load(&theString->info);
                if ((v43 & 0x60) != 0)
                {
                  v34 = *v33;
                }

                else
                {
                  v50 = atomic_load(&theString->info);
                  v34 = &v33[(v50 & 5) != 4];
                }

                length -= 2;
                goto LABEL_76;
              }

              v53 = v24 + 1;
              v54 = 0;
              __CFStringChangeSizeMultiple(theString, &v53, 1, v42, 1);
              v47 = atomic_load(&theString->info);
              if ((v47 & 0x60) != 0)
              {
                v34 = *v33;
              }

              else
              {
                v51 = atomic_load(&theString->info);
                v34 = &v33[(v51 & 5) != 4];
              }

              memmove((v34 + 2 * v24 + 2), v56, 2 * v41);
              length += v42;
              goto LABEL_75;
            }

            ++v24;
            *(v34 + 2 * v24) = v56[0];
          }

LABEL_76:
          if (++v24 >= length)
          {
            goto LABEL_77;
          }
        }
      }
    }

LABEL_16:
    locale = _CFStrGetSpecialCaseHandlingLanguageIdentifierForLocale(locale, 0);
    goto LABEL_17;
  }

  v6 = *MEMORY[0x1E69E9840];

  [(__CFString *)theString _cfUppercase:locale];
}

void __CFRunLoopGetMain_block_invoke()
{
  v0 = pthread_main_thread_np();
  v1 = _CFRunLoopGet0(v0);
  _MergedGlobals_1 = v1;

  __CFRuntimeSetImmortal(v1);
}

uint64_t __CFRunLoopCreate(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = *MEMORY[0x1E69E9840];
  Instance = _CFRuntimeCreateInstance(&__kCFAllocatorSystemDefault, 0x2BuLL, 2704, 0, a5, a6, a7, a8);
  if (!Instance)
  {
    goto LABEL_6;
  }

  v17.__sig = 0;
  *v17.__opaque = 0;
  pthread_mutexattr_init(&v17);
  pthread_mutexattr_settype(&v17, 2);
  pthread_mutex_init((Instance + 16), &v17);
  pthread_mutexattr_destroy(&v17);
  name = 0;
  *&options.flags = xmmword_18330A170;
  options.reserved[1] = 0;
  result = mach_port_construct(*MEMORY[0x1E69E9A60], &options, Instance, &name);
  if (result)
  {
    v15 = snprintf(&v17, 0x100uLL, "*** The system has no mach ports available. You may be able to diagnose which application(s) are using ports by using 'top' or Activity Monitor. (%d) ***", result);
    qword_1EA849A30 = &v17;
    __THE_SYSTEM_HAS_NO_PORTS_AVAILABLE__(v15);
  }

  v11 = name;
  *(Instance + 80) = name;
  if (v11)
  {
    *(Instance + 84) = 0;
    *(Instance + 339) = 1;
    Mutable = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
    *(Instance + 2640) = Mutable;
    CFSetAddValue(Mutable, @"kCFRunLoopDefaultMode");
    *(Instance + 2664) = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeSetCallBacks);
    *(Instance + 2632) = a1;
    *(Instance + 2716) = 0;
    *(Instance + 2713) = 1;
    v13 = __CFRunLoopCopyMode(Instance, @"kCFRunLoopDefaultMode", 1);
    if (v13)
    {
      CFRelease(v13);
    }

LABEL_6:
    v14 = *MEMORY[0x1E69E9840];
    return Instance;
  }

  __break(1u);
  return result;
}

char *__NSMakeSpecialForwardingCaptureBlock(const char *a1, uint64_t a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = strnlen(a1, 0x400uLL);
    if (v5 == 1024)
    {
      CFLog(3, @"Error: Attempt to make special forwarding block with a signature that is too large.", v6, v7, v8, v9, v10, v11, v14);
      return 0;
    }

    else
    {
      v12 = v5;
      v2 = malloc_type_calloc(1uLL, v5 + 89, 0x10F0040B1C390AAuLL);
      *v2 = MEMORY[0x1E69E9818];
      *(v2 + 3) = 0;
      *(v2 + 2) = -1023410174;
      *(v2 + 40) = xmmword_183446700;
      *(v2 + 3) = v2 + 40;
      *(v2 + 4) = a2;
      *(v2 + 2) = __forwarding_prep_b___;
      *(v2 + 7) = copyBlock;
      *(v2 + 8) = destroyBlock;
      *(v2 + 9) = v2 + 88;
      *(v2 + 10) = 256;
      strlcpy(v2 + 88, a1, v12 + 1);
      *(v2 + 4) = _Block_copy(*(v2 + 4));
    }
  }

  return v2;
}

CFNotificationCenterRef CFNotificationCenterGetDarwinNotifyCenter(void)
{
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
    return 0;
  }

  if (CFNotificationCenterGetDarwinNotifyCenter_static_init != -1)
  {
    CFNotificationCenterGetDarwinNotifyCenter_cold_1();
  }

  return __darwinCenter;
}

unint64_t _CFStringSlowPathCopyBundleUnloadingProtectedString(__CFString *a1)
{
  v22[1] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  if (!Length)
  {
    v11 = &stru_1EF068AA8;
    goto LABEL_5;
  }

  v3 = Length;
  FastestEncoding = CFStringGetFastestEncoding(a1);
  CStringPtrInternal = _CFStringGetCStringPtrInternal(a1, FastestEncoding, 0, 1);
  if (!CStringPtrInternal)
  {
    CharactersPtr = CFStringGetCharactersPtr(a1);
    if (CharactersPtr)
    {
      v15 = *MEMORY[0x1E69E9840];
      v8 = CharactersPtr;
      v9 = 2 * v3;
      v10 = 256;
      goto LABEL_8;
    }

    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v3, FastestEncoding);
    v18 = MaximumSizeForEncoding;
    v22[0] = 0;
    if (MaximumSizeForEncoding < 0x101)
    {
      if (MaximumSizeForEncoding)
      {
        MEMORY[0x1EEE9AC00](MaximumSizeForEncoding, v17);
        v19 = (v22 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
        bzero(v19, v18);
      }

      else
      {
        v19 = 0;
      }
    }

    else
    {
      v19 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
    }

    v24.location = 0;
    v24.length = v3;
    if (CFStringGetBytes(a1, v24, FastestEncoding, 0, 0, v19, v18, v22))
    {
      ImmutableFunnel3 = __CFStringCreateImmutableFunnel3(&__kCFAllocatorSystemDefault, v19, v22[0], FastestEncoding, 2, -1, 0, v20);
    }

    else
    {
      ImmutableFunnel3 = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, a1);
    }

    v11 = ImmutableFunnel3;
    if (v18 >= 0x101)
    {
      free(v19);
    }

LABEL_5:
    v12 = *MEMORY[0x1E69E9840];
    return v11;
  }

  v7 = *MEMORY[0x1E69E9840];
  v8 = CStringPtrInternal;
  v9 = v3;
  v10 = FastestEncoding;
LABEL_8:

  return __CFStringCreateImmutableFunnel3(&__kCFAllocatorSystemDefault, v8, v9, v10, 2, -1, 0, v6);
}

uint64_t __CFNotificationCenterGetDarwinNotifyCenter_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = _CFXNotificationCenterCreate(&__kCFAllocatorSystemDefault, _kCFXNotificationConfigurationStandardDarwinConfiguration, a3, a4, a5, a6, a7, a8);
  __darwinCenter = result;
  return result;
}

CFURLRef CFURLCreateCopyDeletingPathExtension(CFAllocatorRef allocator, CFURLRef url)
{
  v20 = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCreateCopyDeletingPathExtension_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled != 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, url))
    {
      url = [(__CFURL *)url _cfurl];
    }

    v7 = CFURLIsFileReferenceURL(url);
    if (v7 && (url = CFURLCreateFilePathURL(allocator, url, 0)) == 0)
    {
      v16 = 0;
    }

    else
    {
      PathComponent = _rangeOfLastPathComponent(url);
      if (PathComponent == -1 || (v10 = PathComponent, v23.length = v9, v11 = atomic_load(url + 3), v23.location = PathComponent, (v12 = CFStringCreateWithSubstring(allocator, v11, v23)) == 0))
      {
        v16 = 0;
        if (!v7)
        {
          goto LABEL_22;
        }
      }

      else
      {
        v13 = v12;
        v18 = 0;
        v19 = 0;
        _CFGetPathExtensionRangesFromPathComponent(v12, &v18, 0);
        if (v18 == -1)
        {
          v16 = CFRetain(url);
        }

        else
        {
          v14 = atomic_load(url + 3);
          MutableCopy = CFStringCreateMutableCopy(allocator, 0, v14);
          v22.location = v10 + v18 - 1;
          v22.length = v19 + 1;
          CFStringDelete(MutableCopy, v22);
          v16 = _CFURLCreateWithArbitraryString(allocator, MutableCopy, *(url + 4));
          CFRelease(MutableCopy);
        }

        CFRelease(v13);
        if (!v7)
        {
          goto LABEL_22;
        }
      }

      CFRelease(url);
    }

LABEL_22:
    v17 = *MEMORY[0x1E69E9840];
    return v16;
  }

  v4 = [(__CFURL *)url URLByDeletingPathExtension];
  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t _CFBundleGetInfoDictionaryBoolean(const void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  MainBundle = CFBundleGetMainBundle();
  if (!MainBundle)
  {
    goto LABEL_18;
  }

  InfoDictionary = CFBundleGetInfoDictionary(MainBundle);
  if (!InfoDictionary)
  {
    goto LABEL_18;
  }

  Value = CFDictionaryGetValue(InfoDictionary, a1);
  if (!Value)
  {
    goto LABEL_18;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFBooleanGetTypeID())
  {
    if (v6 == CFStringGetTypeID())
    {
      v9 = 1;
      if (CFStringCompare(v5, @"true", 1uLL))
      {
        v9 = CFStringCompare(v5, @"YES", 1uLL) == kCFCompareEqualTo;
      }

      goto LABEL_19;
    }

    if (v6 == CFNumberGetTypeID())
    {
      valuePtr = 0;
      if (CFNumberGetValue(v5, kCFNumberSInt32Type, &valuePtr))
      {
        v10 = valuePtr == 0;
      }

      else
      {
        v10 = 1;
      }

      v9 = !v10;
      goto LABEL_19;
    }

LABEL_18:
    v9 = 0;
LABEL_19:
    v11 = *MEMORY[0x1E69E9840];
    return v9;
  }

  v7 = *MEMORY[0x1E69E9840];

  return CFBooleanGetValue(v5);
}

void DEBUG_READ(void *a1, void *a2, uint64_t a3)
{
  v8[5] = *MEMORY[0x1E69E9840];
  v6 = _CFPrefsDaemonLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEBUG))
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __DEBUG_READ_block_invoke;
    v8[3] = &__block_descriptor_40_e29_v64__0i8_12_20_28_36_44_52B60l;
    v8[4] = a3;
    _extractCFPDBits(a1, 0, a2, v8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

CFTypeID CFDateGetTypeID(void)
{
  if (CFDateGetTypeID_initOnce != -1)
  {
    CFDateGetTypeID_cold_1();
  }

  return 42;
}

double __CFDateGetTypeID_block_invoke()
{
  v4[1] = *MEMORY[0x1E69E9840];
  v4[0] = 0;
  mach_timebase_info(v4);
  LODWORD(v1) = v4[0].denom;
  LODWORD(v0) = v4[0].numer;
  *&__CFTSRRate = 1000000000.0 / v0 * v1;
  result = 1.0 / *&__CFTSRRate;
  *&__CF1_TSRRate = 1.0 / *&__CFTSRRate;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void CFDataDeleteBytes(CFMutableDataRef theData, CFRange range)
{
  length = range.length;
  location = range.location;
  if (CF_IS_OBJC(0x14uLL, theData))
  {

    [(__CFData *)theData replaceBytesInRange:location withBytes:length length:0, 0];
  }

  else
  {
    v5.location = location;
    v5.length = length;

    CFDataReplaceBytes(theData, v5, 0, 0);
  }
}

uint64_t CFStringEncodingCharLengthForBytes(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v7 = __CFGetConverter(a1);
  if (!v7)
  {
    a4 = 0;
    goto LABEL_34;
  }

  v8 = v7;
  v9 = *v7;
  v10 = *(*v7 + 20);
  if (v10 != 4)
  {
    if (v10 == 5)
    {
      v11 = v7[1];
      v12 = *MEMORY[0x1E69E9840];

      return __CFStringEncodingICUCharLength(v11, a2, a3, a4);
    }

    if (*(v9 + 16) != 1)
    {
      v15 = *(v9 + 32);
      if (v15)
      {
        v16 = *MEMORY[0x1E69E9840];

        return v15(a2, a3, a4);
      }

      v26[0] = 0;
      if (a4 < 1)
      {
        v17 = 0;
      }

      else
      {
        v17 = 0;
        while (1)
        {
          v18 = v8[2];
          if (v18)
          {
            if ((a2 & 0xC0) != 0)
            {
              v18 = v8[3];
            }

            v19 = v18(v8, a2, a3, a4, 0, 0, v26);
          }

          else
          {
            v19 = (*(*v8 + 8))(a2, a3, a4, 0, 0, v26);
          }

          v20 = a4 - v19;
          v17 += v26[0];
          if (v20 < 1 || (a2 & 1) == 0)
          {
            break;
          }

          v22 = a3 + v19;
          v23 = (v8[5])(v22, v20, 0, 0, v26);
          a3 = v22 + v23;
          v17 += v26[0];
          v24 = v20 <= v23;
          a4 = v20 - v23;
          if (v24)
          {
            goto LABEL_33;
          }
        }

        if (v20 >= 1)
        {
          v17 = 0;
        }
      }

LABEL_33:
      a4 = v17;
    }

LABEL_34:
    v25 = *MEMORY[0x1E69E9840];
    return a4;
  }

  v14 = *MEMORY[0x1E69E9840];

  return __CFStringEncodingPlatformCharLengthForBytes();
}

void CFMachPortInvalidate(CFMachPortRef port)
{
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
    if (CF_IS_OBJC(0x24uLL, port))
    {

      [(__CFMachPort *)port invalidate];
    }

    else
    {
      CFRetain(port);
      os_unfair_lock_lock(&__CFAllMachPortsLock);
      os_unfair_lock_lock(port + 24);
      v2 = *(port + 4);
      if (v2)
      {
        v3 = 0;
      }

      else
      {
        *(port + 4) = 1;
        __dmb(0xBu);
        if (__CFAllMachPorts)
        {
          Count = CFArrayGetCount(__CFAllMachPorts);
          if (Count >= 1)
          {
            v5 = Count;
            v6 = 0;
            while (CFArrayGetValueAtIndex(__CFAllMachPorts, v6) != port)
            {
              if (v5 == ++v6)
              {
                goto LABEL_20;
              }
            }

            CFArrayRemoveValueAtIndex(__CFAllMachPorts, v6);
          }
        }

LABEL_20:
        v7 = *(port + 3);
        if (v7)
        {
          dispatch_source_cancel(v7);
          *(port + 3) = 0;
        }

        v3 = *(port + 5);
        *(port + 5) = 0;
      }

      os_unfair_lock_unlock(port + 24);
      os_unfair_lock_unlock(&__CFAllMachPortsLock);
      if (!v2)
      {
        os_unfair_lock_lock(port + 24);
        v8 = *(port + 4);
        v9 = *(port + 8);
        v10 = *(port + 14);
        *(port + 8) = 0;
        if (v8)
        {
          os_unfair_lock_unlock(port + 24);
          v8(port, v9);
          os_unfair_lock_lock(port + 24);
        }

        if (v3)
        {
          os_unfair_lock_unlock(port + 24);
          CFRunLoopSourceInvalidate(v3);
          CFRelease(v3);
          os_unfair_lock_lock(port + 24);
        }

        if (v10 && v9)
        {
          os_unfair_lock_unlock(port + 24);
          v10(v9);
          os_unfair_lock_lock(port + 24);
        }

        *(port + 4) = 2;
        __dmb(0xBu);
        os_unfair_lock_unlock(port + 24);
      }

      CFRelease(port);
    }
  }
}

BOOL _cfmp_equal(int *a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1 && a2)
  {
    v4 = *a1;
    v5 = *(a1 + 4);
    return v4 == *a2 && v5 == *(a2 + 4);
  }

  return result;
}

Boolean CFDictionaryContainsValue(CFDictionaryRef theDict, const void *value)
{
  if (CF_IS_OBJC(0x12uLL, theDict))
  {
    return [(__CFDictionary *)theDict containsObject:value];
  }

  else
  {
    return CFBasicHashGetCountOfValue(theDict, value) > 0;
  }
}

void _cfmp_source_invalidated(int a1, int a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (_cfmp_records_oGuard != -1)
  {
    _cfmp_source_invalidated_cold_1();
  }

  v4 = _cfmp_records_oRecords;
  os_unfair_lock_lock(&_cfmp_records_lock);
  v8[0] = a2;
  v8[1] = a1;
  Value = CFSetGetValue(v4, v8);
  if (Value)
  {
    if ((*(Value + 5) & 2) != 0)
    {
      v6 = *Value;
      CFSetRemoveValue(v4, Value);
      os_unfair_lock_unlock(&_cfmp_records_lock);
      _cfmp_cleanup(v6);
      goto LABEL_9;
    }

    *(Value + 5) |= 4u;
  }

  else
  {
    _cfmp_log_failure("not expecting invalidation", 0, a1, a2);
  }

  os_unfair_lock_unlock(&_cfmp_records_lock);
LABEL_9:
  v7 = *MEMORY[0x1E69E9840];
}

void _cfmp_deallocation_record_release(int a1, int *a2)
{
  if ((*(a2 + 5) & 1) == 0)
  {
    _cfmp_log_failure("Freeing a record not in the set", a2, *(a2 + 4), *a2);
  }

  free(a2);
}

unint64_t _cfmp_cleanup(unint64_t name)
{
  v1 = name;
  v2 = BYTE5(name);
  v3 = MEMORY[0x1E69E9A60];
  if (((name >> 40) & 0x10) != 0)
  {
    name = mach_port_mod_refs(*MEMORY[0x1E69E9A60], name, 1u, -1);
    if ((v2 & 8) == 0)
    {
LABEL_3:
      if ((v2 & 0x20) == 0)
      {
        return name;
      }

      goto LABEL_7;
    }
  }

  else if ((name & 0x80000000000) == 0)
  {
    goto LABEL_3;
  }

  name = mach_port_deallocate(*v3, v1);
  if ((v2 & 0x20) == 0)
  {
    return name;
  }

LABEL_7:
  if (v2 < 0)
  {
    name = mach_port_mod_refs(*v3, v1, 1u, -1);
    if ((v2 & 0x40) == 0)
    {
      return name;
    }
  }

  else if ((v2 & 0x40) == 0)
  {
    return name;
  }

  v4 = *v3;

  return mach_port_deallocate(v4, v1);
}

CFMutableSetRef CFSetCreateMutableCopy(CFAllocatorRef allocator, CFIndex capacity, CFSetRef theSet)
{
  v19 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x11uLL, theSet))
  {
    Count = CFSetGetCount(theSet);
    memset(v18, 0, 512);
    if (Count >= 257)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * Count, 0xC0040B8AA526DLL, 0);
    }

    else
    {
      Typed = v18;
    }

    CFSetGetValues(theSet, Typed);
    Generic = __CFSetCreateGeneric(allocator, &kCFTypeSetCallBacks);
    Copy = Generic;
    if (Count >= 1 && Generic)
    {
      CFBasicHashSetCapacity(Generic, Count);
      for (i = 0; i < Count; ++i)
      {
        CFBasicHashAddValue(Copy, Typed[i], Typed[i]);
      }
    }

    if (Typed != v18)
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
    }
  }

  else
  {
    Copy = CFBasicHashCreateCopy(allocator, theSet, v5, v6, v7, v8, v9, v10);
  }

  if (Copy)
  {
    _CFRuntimeSetInstanceTypeIDAndIsa(Copy, 0x11uLL);
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return Copy;
}

CFReadStreamRef CFReadStreamCreateWithBytesNoCopy(CFAllocatorRef alloc, const UInt8 *bytes, CFIndex length, CFAllocatorRef bytesDeallocator)
{
  cf[3] = *MEMORY[0x1E69E9840];
  cf[1] = 0;
  cf[2] = 0;
  cf[0] = CFDataCreateWithBytesNoCopy(alloc, bytes, length, bytesDeallocator);
  v9 = _CFStreamCreateWithConstantCallbacks(alloc, cf, readDataCallBacks, 1, v5, v6, v7, v8);
  CFRelease(cf[0]);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t ___plistSizeIsAppropriateToRead_block_invoke()
{
  v0 = _CFProcessNameString();
  result = CFEqual(v0, @"localizationswitcherd");
  if (result)
  {
    _plistSizeIsAppropriateToRead_isSizeLimitedProcess = 1;
  }

  return result;
}

Boolean CFReadStreamOpen(CFReadStreamRef stream)
{
  if (CF_IS_OBJC(0x26uLL, stream))
  {
    [(__CFReadStream *)stream open];
    return 1;
  }

  else
  {

    return _CFStreamOpen(stream);
  }
}

CFPropertyListRef CFPropertyListCreateFromStream(CFAllocatorRef allocator, CFReadStreamRef stream, CFIndex streamLength, CFOptionFlags mutabilityOption, CFPropertyListFormat *format, CFStringRef *errorString)
{
  cf[1] = *MEMORY[0x1E69E9840];
  if (errorString)
  {
    *errorString = 0;
  }

  cf[0] = 0;
  v7 = CFPropertyListCreateWithStream(allocator, stream, streamLength, mutabilityOption, format, cf);
  v8 = cf[0];
  if (errorString && cf[0])
  {
    *errorString = __copyErrorDebugDescription(cf[0]);
    v8 = cf[0];
  }

  if (v8)
  {
    CFRelease(v8);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t readDataOpen(char *a1, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  if (*(a4 + 16))
  {
    if (CFDataGetLength(*a4))
    {
      v12 = 2;
    }

    else
    {
      v12 = 16;
    }

    CFReadStreamSignalEvent(a1, v12, 0, v7, v8, v9, v10, v11);
  }

  *(a2 + 8) = 0;
  *a3 = 1;
  return 1;
}

void *__CFAllocatorSystemAllocate(size_t size, uint64_t a2, malloc_zone_t *zone)
{
  if (zone == &__MallocDefaultZoneInfoPlaceholder)
  {
    zone = malloc_default_zone();
  }

  if (a2 == 1)
  {

    return malloc_type_zone_calloc(zone, 1uLL, size, 0xB480B5EuLL);
  }

  else
  {

    return malloc_type_zone_malloc(zone, size, 0x513E9A69uLL);
  }
}

void CFRunLoopRemoveSource(CFRunLoopRef rl, CFRunLoopSourceRef source, CFRunLoopMode mode)
{
  context[2] = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(rl);
  v6 = _CFGetNonObjCTypeID(rl);
  if (v6 != 43)
  {
    _CFAssertMismatchedTypeID(0x2BuLL, v6);
  }

  v7 = atomic_load(__CFMainThreadHasExited);
  if (v7)
  {
    CFRunLoopRemoveSource_cold_1(rl);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((rl + 16));
  if (mode == @"kCFRunLoopCommonModes")
  {
    v16 = *(rl + 331);
    if (v16 && CFSetContainsValue(v16, source))
    {
      v17 = *(rl + 330);
      if (v17)
      {
        Copy = CFSetCreateCopy(&__kCFAllocatorSystemDefault, v17);
        CFSetRemoveValue(*(rl + 331), source);
        if (Copy)
        {
          context[0] = rl;
          context[1] = source;
          CFSetApplyFunction(Copy, __CFRunLoopRemoveItemFromCommonModes, context);
          CFRelease(Copy);
        }
      }

      else
      {
        CFSetRemoveValue(*(rl + 331), source);
      }
    }

    goto LABEL_36;
  }

  v8 = __CFRunLoopCopyMode(rl, mode, 0);
  if (!v8)
  {
LABEL_36:
    pthread_mutex_unlock((rl + 16));
LABEL_37:
    v21 = *MEMORY[0x1E69E9840];
    return;
  }

  v9 = v8;
  pthread_mutex_lock((v8 + 16));
  v10 = *(v9 + 96);
  if (!v10 || !CFSetContainsValue(v10, source))
  {
    v11 = *(v9 + 104);
    if (!v11 || !CFSetContainsValue(v11, source))
    {
      v15 = 1;
      goto LABEL_27;
    }
  }

  CFRetain(source);
  if (*(source + 13) == 1)
  {
    v12 = (*(source + 20))(*(source + 14));
    if (v12)
    {
      v13 = v12;
      CFDictionaryRemoveValue(*(v9 + 128), v12);
      mach_port_extract_member(*MEMORY[0x1E69E9A60], v13, *(v9 + 136));
    }
  }

  CFSetRemoveValue(*(v9 + 96), source);
  CFSetRemoveValue(*(v9 + 104), source);
  pthread_mutex_lock((source + 16));
  v14 = *(source + 12);
  if (v14)
  {
    CFBagRemoveValue(v14, rl);
  }

  pthread_mutex_unlock((source + 16));
  if (*(source + 13))
  {
    v15 = 0;
LABEL_27:
    v19 = 1;
    goto LABEL_29;
  }

  v15 = 0;
  v19 = *(source + 21) == 0;
LABEL_29:
  pthread_mutex_unlock((v9 + 16));
  CFRelease(v9);
  pthread_mutex_unlock((rl + 16));
  if (!v19)
  {
    (*(source + 21))(*(source + 14), rl, mode);
  }

  if (v15)
  {
    goto LABEL_37;
  }

  v20 = *MEMORY[0x1E69E9840];

  CFRelease(source);
}

uint64_t dataRead(char *a1, void *a2, uint64_t a3, uint64_t a4, BOOL *a5, uint64_t a6)
{
  BytePtr = CFDataGetBytePtr(*a6);
  v18 = &BytePtr[CFDataGetLength(*a6)];
  v19 = *(a6 + 8);
  v20 = v18 - v19;
  if (v18 - v19 >= a3)
  {
    v20 = a3;
  }

  v21 = v20 & ~(v20 >> 63);
  if (v20 >= 1)
  {
    memmove(a2, v19, v20 & ~(v20 >> 63));
    v19 = (*(a6 + 8) + v21);
    *(a6 + 8) = v19;
  }

  *(a4 + 8) = 0;
  *a5 = v19 >= v18;
  if (*(a6 + 16) && v19 < v18)
  {
    CFReadStreamSignalEvent(a1, 2uLL, 0, v13, v14, v15, v16, v17);
  }

  return v21;
}

void CFPlugInRemoveInstanceForFactory(CFUUIDRef factoryID)
{
  os_unfair_recursive_lock_lock_with_options();
  if (_factoriesByFactoryID && (Value = CFDictionaryGetValue(_factoriesByFactoryID, factoryID)) != 0 && Value[24])
  {
    _CFPFactoryRemoveInstanceLocked(Value);
    if (_CFBundlePluginLogger_onceToken != -1)
    {
      CFPlugInRemoveInstanceForFactory_cold_1();
    }

    if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
    {
      CFPlugInRemoveInstanceForFactory_cold_2();
    }
  }

  else
  {
    if (_CFBundlePluginLogger_onceToken != -1)
    {
      CFPlugInRemoveInstanceForFactory_cold_3();
    }

    if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_ERROR))
    {
      CFPlugInRemoveInstanceForFactory_cold_4();
    }
  }

  os_unfair_recursive_lock_unlock();
}

void _CFPFactoryRemoveInstanceLocked(uint64_t a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  if (v1 && *__CFBundleGetPlugInData(*(a1 + 40)))
  {
    PlugInData = __CFBundleGetPlugInData(v1);
    --*(PlugInData + 8);
    if (!*(__CFBundleGetPlugInData(v1) + 8) && *(__CFBundleGetPlugInData(v1) + 1))
    {
      os_unfair_recursive_lock_lock_with_options();
      v3 = _plugInsToUnload;
      if (!_plugInsToUnload)
      {
        memset(&v5, 0, 24);
        v5.copyDescription = kCFTypeSetCallBacks.copyDescription;
        *&v5.equal = *&kCFTypeSetCallBacks.equal;
        v3 = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &v5);
        _plugInsToUnload = v3;
      }

      CFSetAddValue(v3, v1);
      if (_CFBundlePluginLogger_onceToken != -1)
      {
        _CFPFactoryRemoveInstanceLocked_cold_1();
      }

      if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
      {
        _CFPFactoryRemoveInstanceLocked_cold_2();
      }

      os_unfair_recursive_lock_unlock();
    }

    CFRelease(v1);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void __CFUUIDDeallocate(uint64_t a1)
{
  v2[5] = *MEMORY[0x1E69E9840];
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 0x40000000;
  v2[2] = ____CFUUIDDeallocate_block_invoke;
  v2[3] = &__block_descriptor_tmp_3_0;
  v2[4] = a1;
  os_unfair_lock_lock_with_options();
  ____CFUUIDDeallocate_block_invoke(v2);
  os_unfair_lock_unlock(&_uniquedUUIDsLock);
  v1 = *MEMORY[0x1E69E9840];
}

void __CFMachPortDeallocate(uint64_t a1)
{
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
    os_unfair_lock_lock((a1 + 96));
    if (!*(a1 + 16))
    {
      *(a1 + 16) = 1;
      __dmb(0xBu);
      v2 = *(a1 + 24);
      if (v2)
      {
        dispatch_source_cancel(v2);
        *(a1 + 24) = 0;
      }

      v4 = *(a1 + 32);
      v3 = *(a1 + 40);
      *(a1 + 40) = 0;
      v5 = *(a1 + 64);
      v6 = *(a1 + 112);
      *(a1 + 64) = 0;
      if (v4)
      {
        os_unfair_lock_unlock((a1 + 96));
        v4(a1, v5);
        os_unfair_lock_lock((a1 + 96));
      }

      if (v3)
      {
        os_unfair_lock_unlock((a1 + 96));
        CFRunLoopSourceInvalidate(v3);
        CFRelease(v3);
        os_unfair_lock_lock((a1 + 96));
      }

      if (v6 && v5)
      {
        os_unfair_lock_unlock((a1 + 96));
        v6(v5);
        os_unfair_lock_lock((a1 + 96));
      }

      *(a1 + 16) = 2;
      __dmb(0xBu);
    }

    *(a1 + 16) = 3;
    v7 = *(a1 + 20);
    v8 = atomic_load((a1 + 8));
    v9 = (v8 >> 2) & 1;
    v10 = atomic_load((a1 + 8));
    v11 = (v10 >> 1) & 1;
    os_unfair_lock_unlock((a1 + 96));

    _cfmp_record_deallocation(0, v7, v9, v11);
  }
}

void _cfmp_record_deallocation(unsigned __int8 a1, unsigned int a2, char a3, char a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = a2;
    if (_cfmp_records_oGuard != -1)
    {
      _cfmp_record_deallocation_cold_1();
    }

    v8 = _cfmp_records_oRecords;
    os_unfair_lock_lock(&_cfmp_records_lock);
    v17[0] = v6;
    v17[1] = a1;
    Value = CFSetGetValue(v8, v17);
    if (Value)
    {
      v10 = Value[5];
      if ((v10 & 4) == 0)
      {
        Value[5] = (16 * (a4 & 1)) | (8 * (a3 & 1)) | v10 & 0xE3 | 2;
        os_unfair_lock_unlock(&_cfmp_records_lock);
        goto LABEL_10;
      }

      v6 = *Value;
      v14 = Value[4];
      v13 = (8 * (a3 & 1)) & 0xEF | (16 * (a4 & 1)) | v10 & 0xE7;
      v15 = *(Value + 3);
      CFSetRemoveValue(v8, Value);
      v12 = v15 << 48;
      v11 = v14 << 32;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      v13 = (8 * (a3 & 1)) & 0xEF | (16 * (a4 & 1));
    }

    os_unfair_lock_unlock(&_cfmp_records_lock);
    _cfmp_cleanup(v11 | v6 | v12 | (v13 << 40));
  }

LABEL_10:
  v16 = *MEMORY[0x1E69E9840];
}

__CFString *_calculateUserNameForUID(uid_t a1)
{
  v2 = 0;
  while (1)
  {
    *__error() = 0;
    v3 = getpwuid(a1);
    if (*__error() != 4)
    {
      break;
    }

LABEL_6:
    if (v3)
    {
      goto LABEL_10;
    }
  }

  if (!*__error())
  {
    goto LABEL_9;
  }

  if (v2 < 3)
  {
    ++v2;
    goto LABEL_6;
  }

  v4 = _CFPrefsDaemonLog();
  if (!os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
  {
LABEL_9:
    if (!v3)
    {
      return 0;
    }

    goto LABEL_10;
  }

  _calculateUserNameForUID_cold_1(a1, v4);
  if (!v3)
  {
    return 0;
  }

LABEL_10:
  if (v3->pw_name)
  {
    v5 = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, v3->pw_name, 0x8000100u);
    v6 = _internString(v5);
    CFRelease(v5);
    return v6;
  }

  return 0;
}

CFErrorDomain CFErrorGetDomain(CFErrorRef err)
{
  if (!CF_IS_OBJC(0x1BuLL, err))
  {
    return *(err + 3);
  }

  return [(__CFError *)err domain];
}

const __CFDictionary *_CFCopyVersionDictionary(CFStringRef filePath)
{
  resourceData[1] = *MEMORY[0x1E69E9840];
  v1 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, filePath, kCFURLPOSIXPathStyle, 0);
  if (!v1)
  {
    goto LABEL_20;
  }

  v2 = v1;
  resourceData[0] = 0;
  if (!CFURLCreateDataAndPropertiesFromResource(&__kCFAllocatorSystemDefault, v1, resourceData, 0, 0, 0))
  {
    CFRelease(v2);
LABEL_20:
    v3 = 0;
    goto LABEL_28;
  }

  v3 = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, resourceData[0], 1uLL, 0, 0);
  CFRelease(resourceData[0]);
  CFRelease(v2);
  if (v3)
  {
    cf = 0;
    v4 = _CFCopyLocalizedVersionKey(&cf, @"Version");
    v5 = _CFCopyLocalizedVersionKey(&cf, @"Build");
    format = _CFCopyLocalizedVersionKey(&cf, @"FullVersionString");
    if (cf)
    {
      CFRelease(cf);
    }

    Value = CFDictionaryGetValue(v3, @"ProductBuildVersionOverride");
    if (Value)
    {
      CFDictionarySetValue(v3, @"ProductBuildVersion", Value);
    }

    v7 = CFDictionaryGetValue(v3, @"ProductVersion");
    v8 = CFDictionaryGetValue(v3, @"ProductVersionExtra");
    v9 = v8;
    if (v7 && v8)
    {
      v7 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@ %@", v7, v8);
    }

    v10 = CFDictionaryGetValue(v3, @"ProductBuildVersion");
    v11 = @"?";
    if (v7)
    {
      v12 = v7;
    }

    else
    {
      v12 = @"?";
    }

    Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, v12);
    if (v10)
    {
      v11 = v10;
    }

    StringWithValidatedFormat = CFStringCreateStringWithValidatedFormat(&__kCFAllocatorSystemDefault, 0, @"%@ %@", format, 0, v12, v11);
    v15 = StringWithValidatedFormat;
    if (StringWithValidatedFormat && !CFEqual(StringWithValidatedFormat, @"FullVersionString"))
    {
      v16 = CFRetain(v15);
    }

    else
    {
      v16 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@ %@ (%@ %@)", v4, v12, v5, v11);
    }

    v17 = v16;
    if (v7 && v9)
    {
      CFRelease(v7);
    }

    if (v15)
    {
      CFRelease(v15);
    }

    CFDictionarySetValue(v3, @"Version", v4);
    CFDictionarySetValue(v3, @"Build", v5);
    CFDictionarySetValue(v3, @"FullVersionString", v17);
    CFDictionarySetValue(v3, @"ShortVersionString", Copy);
    CFRelease(v4);
    CFRelease(v5);
    CFRelease(format);
    CFRelease(v17);
    CFRelease(Copy);
  }

LABEL_28:
  v18 = *MEMORY[0x1E69E9840];
  return v3;
}

CFIndex CFErrorGetCode(CFErrorRef err)
{
  if (!CF_IS_OBJC(0x1BuLL, err))
  {
    return *(err + 2);
  }

  return [(__CFError *)err code];
}

CFDictionaryRef CFErrorCopyUserInfo(CFErrorRef err)
{
  if (CF_IS_OBJC(0x1BuLL, err))
  {
    v2 = [(__CFError *)err userInfo];
    if (v2)
    {
LABEL_3:

      return CFRetain(v2);
    }
  }

  else
  {
    v2 = *(err + 4);
    if (v2)
    {
      goto LABEL_3;
    }
  }

  v4 = CFGetAllocator(err);

  return _CFErrorCreateEmptyDictionary(v4);
}

uint64_t _CFErrorCreateRedactedDescription(void *a1)
{
  v4[3] = *MEMORY[0x1E69E9840];
  v4[1] = 0;
  v4[0] = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v4[2] = 257;
  _CFErrorFormatDebugDescriptionAux(a1, v4);
  result = v4[0];
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean CFURLCreateDataAndPropertiesFromResource(CFAllocatorRef alloc, CFURLRef url, CFDataRef *resourceData, CFDictionaryRef *properties, CFArrayRef desiredProperties, SInt32 *errorCode)
{
  bytes[9] = *MEMORY[0x1E69E9840];
  v12 = CFURLCopyScheme(url);
  if (v12)
  {
    v13 = v12;
    if (CFStringCompare(v12, @"file", 1uLL))
    {
      if (CFStringCompare(v13, @"data", 1uLL) == kCFCompareEqualTo)
      {
        v14 = _CFDataURLCreateDataAndPropertiesFromResource(alloc, url, resourceData, desiredProperties, properties, errorCode);
        goto LABEL_24;
      }

      if (__CFNetwork__CFURLCreateDataAndPropertiesFromResource_onceToken != -1)
      {
        CFURLCreateDataAndPropertiesFromResource_cold_1();
      }

      if (__CFNetwork__CFURLCreateDataAndPropertiesFromResource_dyfunc)
      {
        v14 = __CFNetwork__CFURLCreateDataAndPropertiesFromResource_dyfunc(alloc, url, resourceData, properties, desiredProperties, errorCode);
LABEL_24:
        LOBYTE(v15) = v14;
LABEL_106:
        CFRelease(v13);
        goto LABEL_107;
      }

      if (resourceData)
      {
        *resourceData = 0;
      }

      if (properties)
      {
        *properties = 0;
      }

      if (errorCode)
      {
        LOBYTE(v15) = 0;
        *errorCode = -15;
        goto LABEL_106;
      }

LABEL_105:
      LOBYTE(v15) = 0;
      goto LABEL_106;
    }

    if (errorCode)
    {
      *errorCode = 0;
    }

    if (resourceData)
    {
      bytes[0] = 0;
      length = 0;
      v16 = alloc;
      if (!alloc)
      {
        v17 = _CFGetTSD(1u);
        if (!v17)
        {
          v17 = &__kCFAllocatorSystemDefault;
        }

        v16 = CFRetain(v17);
      }

      if (_CFReadBytesFromFile(v16, url, bytes, &length, 0, 0))
      {
        v18 = CFDataCreateWithBytesNoCopy(v16, bytes[0], length, v16);
        v15 = 1;
      }

      else
      {
        v18 = 0;
        v15 = 0;
        if (errorCode)
        {
          *errorCode = -10;
        }
      }

      *resourceData = v18;
      if (!alloc)
      {
        CFRelease(v16);
      }
    }

    else
    {
      v15 = 1;
      v16 = alloc;
    }

    if (!properties)
    {
LABEL_101:
      if (!resourceData || v15)
      {
        goto LABEL_106;
      }

      if (*resourceData)
      {
        CFRelease(*resourceData);
        LOBYTE(v15) = 0;
        *resourceData = 0;
        goto LABEL_106;
      }

      goto LABEL_105;
    }

    allocator = v16;
    value = 0;
    cf = 0;
    if (errorCode)
    {
      *errorCode = 0;
    }

    v46 = 0;
    valuePtr = 0;
    length = 0;
    v41 = 0;
    if (!desiredProperties)
    {
      desiredProperties = _CFFileURLCreatePropertiesFromResource__allProps;
      if (!_CFFileURLCreatePropertiesFromResource__allProps)
      {
        memset(&bytes[6], 0, 24);
        bytes[0] = @"kCFURLFileExists";
        bytes[1] = @"kCFURLFilePOSIXMode";
        bytes[2] = @"kCFURLFileDirectoryContents";
        bytes[3] = @"kCFURLFileLength";
        bytes[4] = @"kCFURLFileLastModificationTime";
        bytes[5] = @"kCFURLFileOwnerID";
        desiredProperties = CFArrayCreate(&__kCFAllocatorSystemDefault, bytes, 6, &kCFTypeArrayCallBacks);
        _CFFileURLCreatePropertiesFromResource__allProps = desiredProperties;
      }
    }

    Count = CFArrayGetCount(desiredProperties);
    theDict = CFDictionaryCreateMutable(v16, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    if (!Count)
    {
LABEL_99:
      *properties = theDict;
      if (!theDict)
      {
        v15 = 0;
      }

      goto LABEL_101;
    }

    v48.location = 0;
    v48.length = Count;
    if (CFArrayContainsValue(desiredProperties, v48, @"kCFURLFileDirectoryContents"))
    {
      p_value = &value;
    }

    else
    {
      p_value = 0;
    }

    v49.location = 0;
    v49.length = Count;
    if (CFArrayContainsValue(desiredProperties, v49, @"kCFURLFileLastModificationTime"))
    {
      p_cf = &cf;
    }

    else
    {
      p_cf = 0;
    }

    if (_CFGetFileProperties(allocator, url, &v46, &valuePtr, &length, p_cf, &v41, p_value))
    {
      if (Count == 1 && (v50.location = 0, v50.length = 1, CFArrayContainsValue(desiredProperties, v50, @"kCFURLFileExists")))
      {
        CFDictionarySetValue(theDict, @"kCFURLFileExists", &__kCFBooleanFalse);
      }

      else if (errorCode)
      {
        *errorCode = -10;
      }

      goto LABEL_99;
    }

    if (Count < 1)
    {
LABEL_95:
      if (cf)
      {
        CFRelease(cf);
      }

      if (value)
      {
        CFRelease(value);
      }

      goto LABEL_99;
    }

    v22 = 0;
    v23 = @"kCFURLFileLength";
    while (1)
    {
      v24 = v23;
      ValueAtIndex = CFArrayGetValueAtIndex(desiredProperties, v22);
      if (ValueAtIndex == @"kCFURLFilePOSIXMode" || CFEqual(@"kCFURLFilePOSIXMode", ValueAtIndex))
      {
        break;
      }

      v29 = @"kCFURLFileDirectoryContents";
      if (ValueAtIndex == @"kCFURLFileDirectoryContents" || (v30 = CFEqual(@"kCFURLFileDirectoryContents", ValueAtIndex), v29 = @"kCFURLFileDirectoryContents", v30))
      {
        if (v46)
        {
          if ((valuePtr & 0xF000) == 0x4000)
          {
            v31 = value;
            if (value)
            {
              goto LABEL_68;
            }
          }
        }

LABEL_78:
        v23 = v24;
        goto LABEL_79;
      }

      v23 = v24;
      if (ValueAtIndex != v24)
      {
        v33 = CFEqual(v24, ValueAtIndex);
        v23 = v24;
        if (!v33)
        {
          v29 = @"kCFURLFileLastModificationTime";
          if (ValueAtIndex == @"kCFURLFileLastModificationTime" || (v34 = CFEqual(@"kCFURLFileLastModificationTime", ValueAtIndex), v29 = @"kCFURLFileLastModificationTime", v34))
          {
            if (v46)
            {
              v31 = cf;
              if (cf)
              {
LABEL_68:
                v32 = theDict;
LABEL_69:
                CFDictionarySetValue(v32, v29, v31);
                goto LABEL_62;
              }
            }
          }

          else
          {
            v29 = @"kCFURLFileExists";
            if (ValueAtIndex == @"kCFURLFileExists" || (v36 = CFEqual(@"kCFURLFileExists", ValueAtIndex), v29 = @"kCFURLFileExists", v36))
            {
              v32 = theDict;
              if (v46)
              {
                v31 = &__kCFBooleanTrue;
              }

              else
              {
                v31 = &__kCFBooleanFalse;
              }

              goto LABEL_69;
            }

            if (ValueAtIndex != @"kCFURLFileOwnerID" && !CFEqual(@"kCFURLFileOwnerID", ValueAtIndex))
            {
              v23 = v24;
              if (!errorCode)
              {
                goto LABEL_82;
              }

              v35 = -16;
              goto LABEL_81;
            }

            if (v46)
            {
              v26 = CFNumberCreate(allocator, kCFNumberSInt32Type, &v41);
              v27 = theDict;
              v28 = @"kCFURLFileOwnerID";
LABEL_61:
              CFDictionarySetValue(v27, v28, v26);
              CFRelease(v26);
LABEL_62:
              v23 = v24;
              goto LABEL_82;
            }
          }

          goto LABEL_78;
        }
      }

      if (v46)
      {
        v26 = CFNumberCreate(allocator, kCFNumberSInt64Type, &length);
        v27 = theDict;
        v28 = v24;
        goto LABEL_61;
      }

LABEL_79:
      if (errorCode)
      {
        v35 = -10;
LABEL_81:
        *errorCode = v35;
      }

LABEL_82:
      if (Count == ++v22)
      {
        goto LABEL_95;
      }
    }

    if (v46)
    {
      v26 = CFNumberCreate(allocator, kCFNumberSInt32Type, &valuePtr);
      v27 = theDict;
      v28 = @"kCFURLFilePOSIXMode";
      goto LABEL_61;
    }

    goto LABEL_78;
  }

  if (errorCode)
  {
    *errorCode = -15;
  }

  if (resourceData)
  {
    *resourceData = 0;
  }

  LOBYTE(v15) = 0;
  if (properties)
  {
    *properties = 0;
  }

LABEL_107:
  v37 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t parseDictTag(uint64_t a1, void *a2, unint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v40 = 0;
  v38 = 0;
  cf = 0;
  if (*(a1 + 80))
  {
    while (getContentObject(a1, &v40, &cf, a3))
    {
      if (!v40)
      {
        if (*(a1 + 24))
        {
          goto LABEL_68;
        }

        v33 = lineNumber(a1);
        Error = __CFPropertyListCreateError(3840, @"Found non-key inside <dict> at line %u", v33);
LABEL_49:
        v24 = Error;
        result = 0;
        *(a1 + 24) = v24;
        goto LABEL_69;
      }

      if (!getContentObject(a1, 0, &v38, a3))
      {
        if (*(a1 + 24))
        {
          goto LABEL_68;
        }

        v34 = lineNumber(a1);
        Error = __CFPropertyListCreateError(3840, @"Value missing for key inside <dict> at line %u", v34);
        goto LABEL_49;
      }

      if (cf)
      {
        CFRelease(cf);
      }

      cf = 0;
      if (v38)
      {
        CFRelease(v38);
      }

      v38 = 0;
    }

    result = checkForCloseTag(a1, "dict", 4uLL);
    if (!result)
    {
      goto LABEL_69;
    }

    *a2 = 0;
    goto LABEL_44;
  }

  v6 = *(a1 + 72);
  v36 = 0;
  v37 = 0;
  __CFPropertyListCreateSplitKeypaths(*(a1 + 32), v6, &v36, &v37);
  v7 = 0;
  if (!getContentObject(a1, &v40, &cf, a3) || (v8 = cf) == 0)
  {
LABEL_31:
    if (v37)
    {
      CFRelease(v37);
    }

    if (v36)
    {
      CFRelease(v36);
    }

    if (*(a1 + 24) || !checkForCloseTag(a1, "dict", 4uLL))
    {
      goto LABEL_66;
    }

    if (v7)
    {
      if (CFDictionaryGetCount(v7) == 1)
      {
        Value = CFDictionaryGetValue(v7, @"CF$UID");
        if (Value)
        {
          v14 = Value;
          if (CFGetTypeID(Value) == 22)
          {
            valuePtr = 0;
            CFNumberGetValue(v14, kCFNumberSInt32Type, &valuePtr);
            v21 = _CFKeyedArchiverUIDCreate(*(a1 + 32), valuePtr, v15, v16, v17, v18, v19, v20);
            CFRelease(v7);
            *a2 = v21;
LABEL_44:
            result = 1;
            goto LABEL_69;
          }
        }
      }

      v29 = allowImmutableCollections;
      if (allowImmutableCollections == -1)
      {
        v29 = getenv("CFPropertyListAllowImmutableCollections") != 0;
        allowImmutableCollections = v29;
      }

      if (v29 == 1 && !*(a1 + 40))
      {
        Copy = CFDictionaryCreateCopy(*(a1 + 32), v7);
        CFRelease(v7);
        v7 = Copy;
      }
    }

    else
    {
      v31 = *(a1 + 32);
      if (*(a1 + 40))
      {
        Mutable = CFDictionaryCreateMutable(v31, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      else
      {
        Mutable = CFDictionaryCreate(v31, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      v7 = Mutable;
    }

    *a2 = v7;
    goto LABEL_44;
  }

  v7 = 0;
  while (1)
  {
    if (!v40)
    {
      if (*(a1 + 24) || (v25 = lineNumber(a1), *(a1 + 24) = __CFPropertyListCreateError(3840, @"Found non-key inside <dict> at line %u", v25), (v8 = cf) != 0))
      {
        CFRelease(v8);
      }

      if (v37)
      {
        CFRelease(v37);
      }

      v26 = v36;
      if (v36)
      {
        goto LABEL_65;
      }

      goto LABEL_66;
    }

    v9 = v36;
    if (v36)
    {
      break;
    }

    if (!getContentObject(a1, 0, &v38, a3))
    {
      goto LABEL_57;
    }

LABEL_20:
    v11 = cf;
    if (cf)
    {
      v12 = v38;
      if (v38)
      {
        if (!v7)
        {
          v7 = CFDictionaryCreateMutable(*(a1 + 32), 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
          _CFDictionarySetCapacity(v7, 10);
          v12 = v38;
          v11 = cf;
        }

        CFDictionarySetValue(v7, v11, v12);
        v11 = cf;
      }
    }

    if (v11)
    {
      CFRelease(v11);
    }

    cf = 0;
    if (v38)
    {
      CFRelease(v38);
    }

    v38 = 0;
    if (getContentObject(a1, &v40, &cf, a3))
    {
      v8 = cf;
      if (cf)
      {
        continue;
      }
    }

    goto LABEL_31;
  }

  if (!__CFPropertyListKeyPassesFilterSet(v8, v36))
  {
    *(a1 + 80) = 1;
  }

  *(a1 + 72) = v37;
  ContentObject = getContentObject(a1, 0, &v38, a3);
  *(a1 + 72) = v6;
  *(a1 + 80) = 0;
  if (ContentObject)
  {
    goto LABEL_20;
  }

LABEL_57:
  if (!*(a1 + 24))
  {
    v27 = lineNumber(a1);
    *(a1 + 24) = __CFPropertyListCreateError(3840, @"Value missing for key inside <dict> at line %u", v27);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (v9)
  {
    v26 = v9;
LABEL_65:
    CFRelease(v26);
  }

LABEL_66:
  if (v7)
  {
    CFRelease(v7);
  }

LABEL_68:
  result = 0;
LABEL_69:
  v28 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFPropertyListCreateFromUTF8Data(const __CFAllocator *a1, CFDataRef theData, uint64_t a3, const void *a4, CFStringEncoding a5, int a6, void *a7, char a8, void *a9, const __CFSet *a10, CFDateRef *a11, char a12, char a13)
{
  v77[1] = *MEMORY[0x1E69E9840];
  Length = CFDataGetLength(theData);
  if (!Length)
  {
    if (!a7)
    {
      goto LABEL_97;
    }

    Error = __CFPropertyListCreateError(3840, @"Conversion of string failed. The string is empty.");
    goto LABEL_8;
  }

  v22 = Length;
  v77[0] = 0;
  *v76 = 0u;
  *cf = 0u;
  *v74 = 0u;
  BytePtr = CFDataGetBytePtr(theData);
  v69 = &BytePtr[a3];
  if (__OFADD__(&BytePtr[a3], v22))
  {
    if (!a7)
    {
      goto LABEL_97;
    }

    Error = __CFPropertyListCreateError(3840, @"Unable to address entirety of CFPropertyList");
    goto LABEL_8;
  }

  v27 = a9;
  v70 = &BytePtr[a3];
  v71 = &BytePtr[v22];
  v72 = 0;
  v73 = a1;
  LODWORD(v74[0]) = a6;
  LOBYTE(cf[1]) = a8;
  LOBYTE(v76[1]) = 0;
  if (!a12)
  {
    goto LABEL_75;
  }

  CFRetain(theData);
  v74[1] = CFBurstTrieCreate();
  cf[0] = CFArrayCreateMutable(a1, 0, &kCFTypeArrayCallBacks);
  v76[0] = __CFPropertyListCreateTopLevelKeyPaths(a1, a10);
  while (1)
  {
    v28 = v70;
    if (v70 >= v71)
    {
      v48 = __CFPropertyListCreateError(3840, @"Encountered unexpected EOF", v63, v65);
LABEL_65:
      v49 = 0;
      v50 = 0;
      v72 = v48;
      goto LABEL_71;
    }

    while (1)
    {
      v29 = *v28;
      v30 = v29 > 0x20;
      v31 = (1 << v29) & 0x100002600;
      if (v30 || v31 == 0)
      {
        break;
      }

      if (++v28 == v71)
      {
        v28 = v71;
        break;
      }
    }

    v70 = v28;
    if ((v28 + 1) >= v71)
    {
      v48 = __CFPropertyListCreateError(3840, @"No XML content found", v63, v65);
      goto LABEL_65;
    }

    v33 = *v28;
    if (v33 != 60)
    {
      v67 = lineNumber(&v69);
      v48 = __CFPropertyListCreateError(3840, @"Unexpected character %c at line %u", v33, v67);
      goto LABEL_65;
    }

    v70 = v28 + 1;
    v34 = v28[1];
    if (v34 == 63)
    {
      v70 = v28 + 2;
      skipXMLProcessingInstruction(&v69);
      goto LABEL_28;
    }

    if (v34 != 33)
    {
      break;
    }

    v35 = v28 + 2;
    v70 = v28 + 2;
    if ((v28 + 3) < v71 && *v35 == 45 && v28[3] == 45)
    {
      v70 = v28 + 5;
      skipXMLComment(&v69);
LABEL_28:
      if (v72)
      {
        goto LABEL_66;
      }
    }

    else
    {
      if ((v71 - v35) >= 7 && (*v35 == 1413697348 ? (v36 = *(v28 + 5) == 1162893652) : (v36 = 0), v36))
      {
        v38 = v28 + 9;
        v70 = v38;
        if (v38 < v71)
        {
          while (1)
          {
            v39 = *v38;
            v30 = v39 > 0x20;
            v40 = (1 << v39) & 0x100002600;
            if (v30 || v40 == 0)
            {
              break;
            }

            v70 = ++v38;
            if (v38 == v71)
            {
              v38 = v71;
              break;
            }
          }
        }

        if (v38 < v71)
        {
          v42 = v71 - v38;
          while (1)
          {
            v43 = *v38;
            if (v43 == 91)
            {
              break;
            }

            if (v43 == 62)
            {
              v45 = v38 + 1;
LABEL_60:
              v70 = v45;
              goto LABEL_28;
            }

            v70 = ++v38;
            if (!--v42)
            {
              v38 = v71;
              break;
            }
          }
        }

        if (v38 == v71 || v38 >= v71)
        {
LABEL_57:
          v37 = __CFPropertyListCreateError(3840, @"Encountered unexpected EOF while parsing DTD", v63, v65);
        }

        else
        {
          v44 = v71 - v38;
          v45 = v38 + 1;
          while (1)
          {
            v46 = *(v45 - 1);
            if (v46 > 0x3E)
            {
              break;
            }

            if (((1 << v46) & 0x100002600) == 0)
            {
              if (v46 == 62)
              {
                goto LABEL_60;
              }

              break;
            }

            v70 = v45++;
            if (!--v44)
            {
              goto LABEL_57;
            }
          }

          v47 = v46;
          v66 = lineNumber(&v69);
          v37 = __CFPropertyListCreateError(3840, @"Encountered unexpected character %c on line %u while parsing DTD", v47, v66);
        }
      }

      else
      {
        v64 = lineNumber(&v69);
        v37 = __CFPropertyListCreateError(3840, @"Malformed DTD on line %u", v64, v65);
      }

      v72 = v37;
      if (v37)
      {
LABEL_66:
        v49 = 0;
        v50 = 0;
        goto LABEL_71;
      }
    }
  }

  v51 = parseXMLElement(&v69, 0, v77, 0);
  v50 = v51;
  v49 = v77[0];
  if (a9 && v51 && v77[0])
  {
    *a9 = 100;
    v50 = 1;
  }

LABEL_71:
  CFBurstTrieRelease(v74[1]);
  CFRelease(cf[0]);
  if (v76[0])
  {
    CFRelease(v76[0]);
  }

  CFRelease(theData);
  v27 = a9;
  if (v50)
  {
    *a11 = v49;
    goto LABEL_83;
  }

LABEL_75:
  if (!a13)
  {
    if (!a7)
    {
      result = v72;
      if (!v72)
      {
        goto LABEL_98;
      }

      goto LABEL_96;
    }

    if (a12)
    {
      v25 = v72;
      if (v72)
      {
        goto LABEL_9;
      }
    }

    Error = __CFPropertyListCreateError(3840, @"Unsupported property list");
LABEL_8:
    v25 = Error;
LABEL_9:
    result = 0;
    *a7 = v25;
    goto LABEL_98;
  }

  value = 0;
  if (a7)
  {
    p_value = &value;
  }

  else
  {
    p_value = 0;
  }

  v53 = __CFCreateOldStylePropertyListOrStringsFile(a1, theData, a4, a5, a6, p_value, v27);
  v54 = v72;
  if (!v53)
  {
    if (a7)
    {
      v25 = value;
      if (v72 && value)
      {
        v56 = CFErrorCopyUserInfo(v72);
        Count = CFDictionaryGetCount(v56);
        MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, Count + 1, v56);
        CFDictionaryAddValue(MutableCopy, @"kCFPropertyListOldStyleParsingError", value);
        Domain = CFErrorGetDomain(v54);
        Code = CFErrorGetCode(v54);
        v61 = CFErrorCreate(&__kCFAllocatorSystemDefault, Domain, Code, MutableCopy);
        CFRelease(v56);
        CFRelease(MutableCopy);
        CFRelease(value);
        CFRelease(v54);
        result = 0;
        *a7 = v61;
        goto LABEL_98;
      }

      if (v72 && !value)
      {
        result = 0;
        *a7 = v72;
        goto LABEL_98;
      }

      if (!v72 && value)
      {
        goto LABEL_9;
      }

      if (!(v72 | value))
      {
        Error = __CFPropertyListCreateError(3840, @"Encountered unknown error during parse");
        goto LABEL_8;
      }

LABEL_97:
      result = 0;
      goto LABEL_98;
    }

    if (!v72)
    {
      goto LABEL_97;
    }

    result = v72;
LABEL_96:
    CFRelease(result);
    goto LABEL_97;
  }

  v55 = v53;
  if (v72)
  {
    CFRelease(v72);
  }

  *a11 = v55;
LABEL_83:
  result = 1;
LABEL_98:
  v62 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef _CFCopyLocalizedVersionKey(CFBundleRef *a1, CFStringRef key)
{
  if (a1 && (v4 = *a1) != 0)
  {
    v5 = CFBundleCopyLocalizedString(*a1, key, key, @"SystemVersion");
  }

  else
  {
    Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, @"/System/Library/CoreServices/SystemVersion.bundle");
    v7 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, Copy, kCFURLPOSIXPathStyle, 0);
    CFRelease(Copy);
    if (!v7)
    {
      goto LABEL_10;
    }

    v4 = CFBundleCreate(&__kCFAllocatorSystemDefault, v7);
    CFRelease(v7);
    if (!v4)
    {
      goto LABEL_10;
    }

    v5 = CFBundleCopyLocalizedString(v4, key, key, @"SystemVersion");
    if (!a1)
    {
      CFRelease(v4);
      if (v5)
      {
        return v5;
      }

      goto LABEL_10;
    }
  }

  *a1 = v4;
  if (v5)
  {
    return v5;
  }

LABEL_10:

  return CFRetain(key);
}

_DWORD *CFBurstTrieCreate()
{
  v6 = *MEMORY[0x1E69E9840];
  valuePtr = 256;
  v0 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  Mutable = CFDictionaryCreateMutable(0, 1, 0, 0);
  CFDictionarySetValue(Mutable, @"ContainerSize", v0);
  v2 = CFBurstTrieCreateWithOptions(Mutable);
  CFRelease(v0);
  CFRelease(Mutable);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

CFBundleRef CFBundleCreate(CFAllocatorRef allocator, CFURLRef bundleURL)
{
  if (!bundleURL)
  {
    return 0;
  }

  MainBundle = CFBundleGetMainBundle();
  if (MainBundle)
  {
    v5 = MainBundle;
    v6 = *(MainBundle + 2);
    if (v6)
    {
      if (CFEqual(v6, bundleURL))
      {
        CFRetain(v5);
        return v5;
      }
    }
  }

  return _CFBundleCreate(allocator, bundleURL, 0, 0);
}

CFCharacterSetRef CFCharacterSetCreateInvertedSet(CFAllocatorRef alloc, CFCharacterSetRef theSet)
{
  if (CF_IS_OBJC(0x19uLL, theSet))
  {
    v4 = [(__CFCharacterSet *)theSet invertedSet];

    return v4;
  }

  else
  {
    Copy = __CFCharacterSetCreateCopy(alloc, theSet, 1);
    CFCharacterSetInvert(Copy);
    v7 = atomic_load(Copy + 1);
    v8 = v7;
    do
    {
      atomic_compare_exchange_strong(Copy + 1, &v8, v7 & 0xFFFFFFFFFFFFFFFELL);
      v9 = v8 == v7;
      v7 = v8;
    }

    while (!v9);
    return Copy;
  }
}

_DWORD *CFBurstTrieCreateWithOptions(const __CFDictionary *a1)
{
  value[1] = *MEMORY[0x1E69E9840];
  v2 = malloc_type_calloc(1uLL, 0x830uLL, 0x1010040873DE71CuLL);
  v2[520] = 256;
  value[0] = 0;
  if (CFDictionaryGetValueIfPresent(a1, @"ContainerSize", value))
  {
    valuePtr = 0;
    CFNumberGetValue(value[0], kCFNumberIntType, &valuePtr);
    v3 = valuePtr;
    if ((valuePtr - 3) >= 0xFFD)
    {
      v3 = 256;
    }

    v2[520] = v3;
  }

  atomic_store(1u, v2 + 521);
  v4 = *MEMORY[0x1E69E9840];
  return v2;
}

unint64_t *skipXMLProcessingInstruction(unint64_t *result)
{
  v1 = result;
  v2 = result[1];
  v3 = result[2];
  if (v2 >= v3 - 2)
  {
LABEL_6:
    result[1] = v2;
    v6 = lineNumber(result);
    result = __CFPropertyListCreateError(3840, @"Encountered unexpected EOF while parsing the processing instruction begun on line %u", v6);
    v1[3] = result;
  }

  else
  {
    v4 = v3 - v2 - 2;
    v5 = (v2 + 1);
    while (*(v5 - 1) != 63 || *v5 != 62)
    {
      result[1] = v5++;
      if (!--v4)
      {
        goto LABEL_6;
      }
    }

    result[1] = (v5 + 1);
  }

  return result;
}

void notifyFunc(_xpc_connection_s *a1, uint64_t *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v2 = a2[2];
  if (v2 != a1)
  {
    v13 = 0;
    v14 = &v13;
    v15 = 0x2020000000;
    v16 = 0;
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = __notifyFunc_block_invoke;
    v12[3] = &unk_1E6DD1E08;
    v12[4] = &v13;
    v5 = withClientContext(a1, v12);
    if ((v14[3] & 1) == 0 && ((v5 ^ 1) & 1) == 0)
    {
      v6 = a1;
      v7 = v2;
      v8 = xpc_copy(a2[1]);
      v9 = *a2;
      if (_CFPrefsObservationConnectionQueue_onceToken != -1)
      {
        notifyFunc_cold_1();
      }

      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = __notifyFunc_block_invoke_2;
      v11[3] = &unk_1E6DD1E58;
      v11[4] = a1;
      v11[5] = v9;
      v11[6] = v8;
      v11[7] = v2;
      xpc_connection_send_message_with_reply(a1, v8, _CFPrefsObservationConnectionQueue_observationQueue, v11);
    }

    _Block_object_dispose(&v13, 8);
  }

  v10 = *MEMORY[0x1E69E9840];
}

unint64_t *__CFCharacterSetCreateCopy(const __CFAllocator *a1, unint64_t a2, uint64_t a3)
{
  if (CF_IS_OBJC(0x19uLL, a2))
  {

    return [a2 mutableCopy];
  }

  if ((a3 & 1) == 0)
  {
    v7 = atomic_load((a2 + 8));
    if ((v7 & 1) == 0)
    {

      return CFRetain(a2);
    }
  }

  Mutable = CFCharacterSetCreateMutable(a1);
  v9 = Mutable;
  v10 = atomic_load((a2 + 8));
  v11 = v10 & 0x70;
  v12 = atomic_load(Mutable + 1);
  v13 = v12;
  do
  {
    atomic_compare_exchange_strong(Mutable + 1, &v13, v12 & 0xFFFFFFFFFFFFFF8FLL | v11);
    v14 = v13 == v12;
    v12 = v13;
  }

  while (!v14);
  v15 = atomic_load((a2 + 8));
  v16 = atomic_load(Mutable + 1);
  v17 = v15 & 4;
  v18 = v16;
  do
  {
    atomic_compare_exchange_strong(Mutable + 1, &v18, v16 & 0xFFFFFFFFFFFFFFFBLL | v17);
    v14 = v18 == v16;
    v16 = v18;
  }

  while (!v14);
  v19 = atomic_load((a2 + 8));
  v20 = atomic_load(Mutable + 1);
  v21 = v19 & 8;
  v22 = v20;
  do
  {
    atomic_compare_exchange_strong(Mutable + 1, &v22, v20 & 0xFFFFFFFFFFFFFFF7 | v21);
    v14 = v22 == v20;
    v20 = v22;
  }

  while (!v14);
  *(Mutable + 2) = *(a2 + 16);
  v23 = atomic_load((a2 + 8));
  v24 = (v23 >> 4) & 7;
  if (v24 <= 1)
  {
    if (v24)
    {
      *(Mutable + 6) = *(a2 + 24);
      *(Mutable + 4) = *(a2 + 32);
    }

    else
    {
      *(Mutable + 3) = *(a2 + 24);
    }
  }

  else
  {
    switch(v24)
    {
      case 2:
        Typed = CFAllocatorAllocateTyped(a1, 128, 0x1000040BDFB0063, 0);
        v9[3] = Typed;
        v40 = *(a2 + 32);
        v9[4] = v40;
        memmove(Typed, *(a2 + 24), 2 * v40);
        break;
      case 3:
        v41 = *(a2 + 24);
        if (v41)
        {
          if ((a3 & 1) != 0 || (v42 = __CFCreateCompactBitmap(a1, v41)) == 0)
          {
            v45 = CFAllocatorAllocateTyped(a1, 0x2000, 0x100004077774924, 0);
            memmove(v45, *(a2 + 24), 0x2000uLL);
            v9[3] = v45;
          }

          else
          {
            v9[3] = v42;
            v43 = atomic_load(v9 + 1);
            v44 = v43;
            do
            {
              atomic_compare_exchange_strong(v9 + 1, &v44, v43 & 0xFFFFFFFFFFFFFF8FLL | 0x40);
              v14 = v44 == v43;
              v43 = v44;
            }

            while (!v14);
          }
        }

        else
        {
          *(Mutable + 3) = 0;
        }

        break;
      case 4:
        v25 = *(a2 + 24);
        if (v25)
        {
          v26 = 0;
          v27 = xmmword_183306BF0;
          v28 = 0uLL;
          v29.i64[0] = -1;
          v29.i64[1] = -1;
          v30.i64[0] = 0xFEFEFEFEFEFEFEFELL;
          v30.i64[1] = 0xFEFEFEFEFEFEFEFELL;
          v31.i64[0] = 0x2000000020;
          v31.i64[1] = 0x2000000020;
          v32 = 0uLL;
          v33 = 0uLL;
          do
          {
            v34 = vcgtq_u8(v30, vaddq_s8(*&v25[v26], v29));
            v35 = vmovl_s8(*v34.i8);
            v36 = vmovl_high_s8(v34);
            v33 = vaddq_s32(v33, vandq_s8(vmovl_high_u16(v36), v31));
            v32 = vaddq_s32(v32, vandq_s8(vmovl_u16(*v36.i8), v31));
            v28 = vaddq_s32(v28, vandq_s8(vmovl_high_u16(v35), v31));
            v27 = vaddq_s32(v27, vandq_s8(vmovl_u16(*v35.i8), v31));
            v26 += 16;
          }

          while (v26 != 256);
          v37 = vaddvq_s32(vaddq_s32(vaddq_s32(v27, v32), vaddq_s32(v28, v33)));
          v38 = CFAllocatorAllocateTyped(a1, v37, 0x100004077774924, 0);
          memmove(v38, v25, v37);
          v9[3] = v38;
        }

        break;
    }
  }

  v46 = *(a2 + 40);
  if (!v46)
  {
    return v9;
  }

  if (!*(v46 + 8))
  {
    if (*(v46 + 13))
    {
      v62 = v9[5];
      if (!v62)
      {
        goto LABEL_67;
      }

      goto LABEL_68;
    }

    return v9;
  }

  v47 = 0;
  for (i = 1; i != 17; ++i)
  {
    v49 = *(a2 + 40);
    if (!v49)
    {
      goto LABEL_60;
    }

    v50 = 1 << i;
    if ((*(v49 + 8) & (1 << i)) == 0)
    {
      goto LABEL_60;
    }

    if (*(v49 + 12) < i)
    {
      goto LABEL_60;
    }

    v51 = *(*v49 + v47);
    if (!v51)
    {
      goto LABEL_60;
    }

    Copy = __CFCharacterSetCreateCopy(a1, v51, a3);
    v53 = v9[5];
    if (!v53)
    {
      v57 = CFGetAllocator(v9);
      v58 = CFAllocatorAllocateTyped(v57, 16, 0x1080040FC6463CFLL, 0);
      v9[5] = v58;
      *(v58 + 12) = i;
      *(v58 + 8) = 0;
      v55 = CFGetAllocator(v9);
      goto LABEL_52;
    }

    if (*(v53 + 12) < i)
    {
      *(v53 + 12) = i;
      v54 = *v53;
      v55 = CFGetAllocator(v9);
      if (v54)
      {
        v56 = __CFSafelyReallocateWithAllocatorTyped(v55, *v9[5], v47 + 8, 0x6004044C4A2DFLL, 0, 0);
LABEL_53:
        v53 = v9[5];
        *v53 = v56;
        goto LABEL_54;
      }

LABEL_52:
      v56 = CFAllocatorAllocateTyped(v55, v47 + 8, 0x6004044C4A2DFLL, 0);
      goto LABEL_53;
    }

LABEL_54:
    if ((*(v53 + 8) & v50) != 0)
    {
      CFRelease(*(*v53 + v47));
    }

    if (Copy)
    {
      *(*v9[5] + v47) = CFRetain(Copy);
      v59 = v9[5];
      v60 = *(v59 + 8) | v50;
    }

    else
    {
      v59 = v9[5];
      v60 = *(v59 + 8) & ~v50;
    }

    *(v59 + 8) = v60;
    CFRelease(Copy);
LABEL_60:
    v47 += 8;
  }

  v61 = *(a2 + 40);
  if (v61)
  {
    v62 = v9[5];
    if (*(v61 + 13))
    {
      if (!v62)
      {
LABEL_67:
        v63 = CFGetAllocator(v9);
        v62 = CFAllocatorAllocateTyped(v63, 16, 0x1080040FC6463CFLL, 0);
        v9[5] = v62;
        *v62 = 0;
        *(v62 + 6) = 0;
      }

LABEL_68:
      v64 = 1;
LABEL_72:
      *(v62 + 13) = v64;
      return v9;
    }
  }

  else
  {
    v62 = v9[5];
  }

  if (v62)
  {
    v64 = 0;
    goto LABEL_72;
  }

  return v9;
}

uint64_t parseXMLElement(uint64_t a1, _BYTE *a2, CFDateRef *a3, uint64_t a4)
{
  v6 = *(a1 + 8);
  v7 = v6;
  if (a2)
  {
    *a2 = 0;
    v7 = *(a1 + 8);
  }

  v8 = *(a1 + 16);
  if (v7 < v8)
  {
    v9 = v8 - v7;
    v10 = v7 - v6;
    v11 = -1;
    while (1)
    {
      v12 = *v7;
      if (v12 <= 0x3E)
      {
        if (((1 << v12) & 0x100002600) != 0)
        {
          if (v11 == -1)
          {
            v11 = v10;
          }
        }

        else if (v12 == 62)
        {
          goto LABEL_14;
        }
      }

      *(a1 + 8) = ++v7;
      ++v10;
      if (!--v9)
      {
        goto LABEL_14;
      }
    }
  }

  v11 = -1;
LABEL_14:
  if (v7 >= v8)
  {
    return 0;
  }

  v13 = *(v7 - 1);
  if (v11 == -1)
  {
    v11 = v7 - (v13 == 47) - v6;
  }

  *(a1 + 8) = v7 + 1;
  if (!v11)
  {
    *(a1 + 8) = v6;
    v44 = lineNumber(a1);
    Error = __CFPropertyListCreateError(3840, @"Malformed tag on line %u", v44);
LABEL_87:
    v30 = Error;
    result = 0;
    *(a1 + 24) = v30;
    return result;
  }

  v14 = *v6;
  v15 = -1;
  v16 = 1;
  v17 = 6;
  if (v14 <= 0x6A)
  {
    if (*v6 <= 0x65u)
    {
      if (v14 != 97)
      {
        v18 = 1;
        v19 = 1;
        v20 = 1;
        v21 = 1;
        v22 = 1;
        if (v14 == 100)
        {
          if (v11 == 4)
          {
            if (*v6 != 1952672100)
            {
              v17 = 6;
              if (*v6 == 1635017060)
              {
                v22 = 0;
                v15 = 5;
              }

              else if (*v6 == 1702125924)
              {
                v15 = 6;
              }

              else
              {
                v15 = -1;
              }

              v16 = 1;
              goto LABEL_170;
            }

            v19 = 0;
            v15 = 2;
LABEL_162:
            v16 = 1;
            v17 = 6;
LABEL_170:
            v18 = 1;
            goto LABEL_79;
          }

          goto LABEL_52;
        }

        goto LABEL_79;
      }

      if (v11 == 5)
      {
        v25 = *v6 ^ 0x61727261 | v6[4] ^ 0x79;
        v18 = v25 != 0;
        if (v25)
        {
          v15 = -1;
        }

        else
        {
          v15 = 1;
        }

        v16 = 1;
        v17 = 6;
        goto LABEL_77;
      }

      goto LABEL_76;
    }

    if (v14 == 102)
    {
      if (v11 == 5)
      {
        v26 = (*v6 ^ 0x736C6166 | v6[4] ^ 0x65) == 0;
        v27 = 10;
        goto LABEL_62;
      }

LABEL_76:
      v17 = 6;
      v18 = 1;
LABEL_77:
      v19 = 1;
      v20 = 1;
LABEL_78:
      v21 = 1;
      v22 = 1;
      goto LABEL_79;
    }

    v18 = 1;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
    if (v14 != 105)
    {
      goto LABEL_79;
    }

    if (v11 == 7)
    {
      if (*v6 ^ 0x65746E69 | *(v6 + 3) ^ 0x72656765)
      {
        v15 = -1;
      }

      else
      {
        v15 = 8;
      }

      v16 = 1;
      v17 = 6;
      v18 = 1;
      goto LABEL_51;
    }

LABEL_52:
    v17 = 6;
    goto LABEL_79;
  }

  if (*v6 <= 0x71u)
  {
    if (v14 == 107)
    {
      if (v11 == 3)
      {
        if (*v6 == 25963 && v6[2] == 121)
        {
          v16 = 1;
          v21 = 0;
          v17 = 3;
          if (a2)
          {
            *a2 = 1;
          }

          v18 = 1;
          v19 = 1;
          v20 = 1;
          v22 = 1;
          v15 = 3;
          goto LABEL_79;
        }

        goto LABEL_70;
      }

      goto LABEL_76;
    }

    v18 = 1;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    v22 = 1;
    if (v14 != 112)
    {
      goto LABEL_79;
    }

    if (v11 == 5)
    {
      v24 = *v6 ^ 0x73696C70 | v6[4] ^ 0x74;
      v26 = v24 == 0;
      v16 = v24 != 0;
      if (v26)
      {
        v15 = 0;
      }

      else
      {
        v15 = -1;
      }

      v18 = 1;
      v17 = 6;
LABEL_51:
      v19 = 1;
      goto LABEL_79;
    }

    goto LABEL_52;
  }

  if (v14 == 114)
  {
    if (v11 == 4)
    {
      v26 = *v6 == 1818322290;
      v27 = 7;
LABEL_62:
      if (v26)
      {
        v15 = v27;
      }

      else
      {
        v15 = -1;
      }

LABEL_70:
      v16 = 1;
      goto LABEL_76;
    }

    goto LABEL_76;
  }

  if (v14 == 115)
  {
    if (v11 == 6)
    {
      v29 = *v6 ^ 0x69727473 | *(v6 + 2) ^ 0x676E;
      v20 = v29 != 0;
      if (v29)
      {
        v15 = -1;
      }

      else
      {
        v15 = 4;
      }

      v16 = 1;
      v17 = 6;
      v18 = 1;
      v19 = 1;
      goto LABEL_78;
    }

    goto LABEL_76;
  }

  v18 = 1;
  v19 = 1;
  v20 = 1;
  v21 = 1;
  v22 = 1;
  if (v14 == 116)
  {
    if (v11 == 4)
    {
      if (*v6 == 1702195828)
      {
        v15 = 9;
      }

      else
      {
        v15 = -1;
      }

      goto LABEL_162;
    }

    goto LABEL_52;
  }

LABEL_79:
  if (v22 && v21 && v20 && v19 && v18 && v16 && !*(a1 + 64))
  {
    Error = __CFPropertyListCreateError(3840, @"Encountered new tag when expecting only old-style property list objects");
    goto LABEL_87;
  }

  if (v15 > 5)
  {
    if (v15 <= 7)
    {
      if (v15 == 6)
      {
        if (v13 == 47)
        {
          v47 = lineNumber(a1);
          Error = __CFPropertyListCreateError(3840, @"Encountered empty <date> on line %u", v47);
          goto LABEL_87;
        }

        return parseDateTag(a1, a3);
      }

      else
      {
        if (v13 == 47)
        {
          v45 = lineNumber(a1);
          Error = __CFPropertyListCreateError(3840, @"Encountered empty <real> on line %u", v45);
          goto LABEL_87;
        }

        return parseRealTag(a1, a3);
      }
    }

    if (v15 == 8)
    {
      if (v13 == 47)
      {
        v48 = lineNumber(a1);
        Error = __CFPropertyListCreateError(3840, @"Encountered empty <integer> on line %u", v48);
        goto LABEL_87;
      }

      return parseIntegerTag(a1, a3);
    }

    if (v15 == 9)
    {
      if (v13 != 47 && !checkForCloseTag(a1, "true", 4uLL))
      {
        v49 = lineNumber(a1);
        Error = __CFPropertyListCreateError(3840, @"Encountered non-empty <true> on line %u", v49);
        goto LABEL_87;
      }

      if (!*(a1 + 80))
      {
        v35 = &kCFBooleanTrue;
        goto LABEL_167;
      }
    }

    else
    {
      if (v13 != 47 && !checkForCloseTag(a1, "false", 5uLL))
      {
        v50 = lineNumber(a1);
        Error = __CFPropertyListCreateError(3840, @"Encountered non-empty <false> on line %u", v50);
        goto LABEL_87;
      }

      if (!*(a1 + 80))
      {
        v35 = &kCFBooleanFalse;
LABEL_167:
        Mutable = CFRetain(*v35);
        goto LABEL_178;
      }
    }

    Mutable = 0;
LABEL_178:
    *a3 = Mutable;
    return 1;
  }

  if (v15 > 2)
  {
    if ((v15 - 3) >= 2)
    {
      if (v15 == 5)
      {
        if (v13 == 47)
        {
          v46 = lineNumber(a1);
          Error = __CFPropertyListCreateError(3840, @"Encountered empty <data> on line %u", v46);
          goto LABEL_87;
        }

        return parseDataTag(a1, a3);
      }

      goto LABEL_132;
    }

    if (v13 != 47)
    {
      result = parseStringTag(a1, a3);
      if (!result)
      {
        return result;
      }

      if (checkForCloseTag(a1, &CFXMLPlistTags[10 * v15], v17))
      {
        return 1;
      }

      result = *a3;
      if (!*a3)
      {
        return result;
      }

      goto LABEL_137;
    }

    if (!*(a1 + 80))
    {
      v36 = *(a1 + 40);
      v37 = *(a1 + 32);
      if (v36 == 2)
      {
        Mutable = CFStringCreateMutable(v37, 0);
      }

      else
      {
        Mutable = CFStringCreateWithCharacters(v37, 0, 0);
      }

      goto LABEL_178;
    }

LABEL_123:
    *a3 = 0;
    return 1;
  }

  if (!v15)
  {
    if (v13 == 47)
    {
      Error = __CFPropertyListCreateError(3840, @"Encountered empty plist tag");
      goto LABEL_87;
    }

    return parsePListTag(a1, a3, a4 + 1);
  }

  if (v15 == 1)
  {
    if (v13 != 47)
    {

      return parseArrayTag(a1, a3, a4 + 1);
    }

    if (!*(a1 + 80))
    {
      v42 = *(a1 + 40);
      v43 = *(a1 + 32);
      if (v42)
      {
        Mutable = CFArrayCreateMutable(v43, 0, &kCFTypeArrayCallBacks);
      }

      else
      {
        Mutable = CFArrayCreate(v43, 0, 0, &kCFTypeArrayCallBacks);
      }

      goto LABEL_178;
    }

    goto LABEL_123;
  }

  if (v15 != 2)
  {
LABEL_132:
    v38 = CFStringCreateWithBytes(&__kCFAllocatorSystemDefault, v6, v11, 0x8000100u, 0);
    v39 = v38;
    *(a1 + 8) = v6;
    if (v38)
    {
      v40 = v38;
    }

    else
    {
      v40 = @"<unknown>";
    }

    v41 = lineNumber(a1);
    *(a1 + 24) = __CFPropertyListCreateError(3840, @"Encountered unknown tag %@ on line %u", v40, v41);
    if (!v39)
    {
      return 0;
    }

    result = v39;
LABEL_137:
    CFRelease(result);
    return 0;
  }

  if (v13 == 47)
  {
    if (!*(a1 + 80))
    {
      v32 = *(a1 + 40);
      v33 = *(a1 + 32);
      if (v32)
      {
        Mutable = CFDictionaryCreateMutable(v33, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      else
      {
        Mutable = CFDictionaryCreate(v33, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      }

      goto LABEL_178;
    }

    goto LABEL_123;
  }

  return parseDictTag(a1, a3, a4 + 1);
}

uint64_t getContentObject(unint64_t *a1, _BYTE *a2, uint64_t a3, unint64_t a4)
{
  if (a4 >= 0x81)
  {
    v15 = lineNumber(a1);
    Error = __CFPropertyListCreateError(3840, @"Too many nested arrays or dictionaries, failing on line %u", v15);
LABEL_24:
    a1[3] = Error;
    return 0;
  }

  if (a2)
  {
    *a2 = 0;
  }

  if (a1[3])
  {
    return 0;
  }

  while (2)
  {
    v9 = a1[1];
    v10 = a1[2];
    if (v9 >= v10)
    {
      return 0;
    }

    while (1)
    {
      v11 = *v9;
      if (v11 > 0x3C)
      {
        goto LABEL_23;
      }

      if (((1 << v11) & 0x100002600) == 0)
      {
        break;
      }

      a1[1] = ++v9;
      if (v9 == v10)
      {
        goto LABEL_22;
      }
    }

    if (v11 != 60)
    {
LABEL_23:
      v13 = v11;
      v16 = lineNumber(a1);
      Error = __CFPropertyListCreateError(3840, @"Encountered unexpected character %c on line %u while looking for open tag", v13, v16);
      goto LABEL_24;
    }

    a1[1] = (v9 + 1);
    if ((v9 + 1) >= v10)
    {
      goto LABEL_22;
    }

    v12 = v9[1];
    switch(v12)
    {
      case '!':
        if ((v9 + 3) < v10 && v9[2] == 45 && v9[3] == 45)
        {
          a1[1] = (v9 + 4);
          skipXMLComment(a1);
LABEL_20:
          if (!a1[3])
          {
            continue;
          }

          return 0;
        }

LABEL_22:
        Error = __CFPropertyListCreateError(3840, @"Encountered unexpected EOF");
        goto LABEL_24;
      case '?':
        skipXMLProcessingInstruction(a1);
        goto LABEL_20;
      case '/':
        a1[1] = v9;
        return 0;
    }
  }

  return parseXMLElement(a1, a2, a3, a4);
}

CFMutableCharacterSetRef CFCharacterSetCreateMutable(CFAllocatorRef alloc)
{
  result = _CFRuntimeCreateInstance(alloc, 0x19uLL, 32, 0, v1, v2, v3, v4);
  if (result)
  {
    v6 = atomic_load(result + 1);
    v7 = v6;
    do
    {
      atomic_compare_exchange_strong(result + 1, &v7, v6 | 1);
      v8 = v7 == v6;
      v6 = v7;
    }

    while (!v8);
    v9 = atomic_load(result + 1);
    v10 = v9;
    do
    {
      atomic_compare_exchange_strong(result + 1, &v10, v9 & 0xFFFFFFFFFFFFFF8FLL | 0x30);
      v8 = v10 == v9;
      v9 = v10;
    }

    while (!v8);
    *(result + 5) = 0;
    *(result + 2) = 0;
    *(result + 3) = 0;
    v11 = atomic_load(result + 1);
    v12 = v11;
    do
    {
      atomic_compare_exchange_strong(result + 1, &v12, v11 | 4);
      v8 = v12 == v11;
      v11 = v12;
    }

    while (!v8);
  }

  return result;
}

BOOL _CFPrefsGetImpersonatedApplicationAuditToken(_OWORD *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = _CFPrefsAuditTokenToImpersonate | *(&_CFPrefsAuditTokenToImpersonate + 1) | qword_1EA84A4D4 | unk_1EA84A4DC;
  if (a1 && v1)
  {
    v2 = *&qword_1EA84A4D4;
    *a1 = _CFPrefsAuditTokenToImpersonate;
    a1[1] = v2;
  }

  result = v1 != 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t parsePListTag(unint64_t *a1, CFTypeRef *a2, unint64_t a3)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  if (!getContentObject(a1, 0, v14, a3))
  {
    if (!a1[3])
    {
      Error = __CFPropertyListCreateError(3840, @"Encountered empty plist tag");
LABEL_10:
      v8 = Error;
      result = 0;
      a1[3] = v8;
      goto LABEL_16;
    }

LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  v6 = a1[1];
  cf = 0;
  if (getContentObject(a1, 0, &cf, a3))
  {
    if (cf)
    {
      CFRelease(cf);
    }

    if (v14[0])
    {
      CFRelease(v14[0]);
    }

    a1[1] = v6;
    v12 = lineNumber(a1);
    Error = __CFPropertyListCreateError(3840, @"Encountered unexpected element at line %u (plist can only include one object)", v12);
    goto LABEL_10;
  }

  if (a1[3])
  {
    result = v14[0];
  }

  else
  {
    v11 = checkForCloseTag(a1, "plist", 5uLL);
    result = v14[0];
    if (v11)
    {
      *a2 = v14[0];
      result = 1;
      goto LABEL_16;
    }
  }

  if (result)
  {
    CFRelease(result);
    goto LABEL_15;
  }

LABEL_16:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef CFStringCreateStringWithValidatedFormat(CFAllocatorRef alloc, CFDictionaryRef formatOptions, CFStringRef validFormatSpecifiers, CFStringRef format, CFErrorRef *errorPtr, ...)
{
  v7 = *MEMORY[0x1E69E9840];
  result = _CFStringCreateStringWithValidatedFormatAuxWithDesc(alloc, 0, 0, formatOptions, 0, validFormatSpecifiers);
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void *visit(uint64_t a1, int a2, uint64_t a3)
{
  v6 = 0;
  v7 = 0;
  v22 = *MEMORY[0x1E69E9840];
  v8 = *(a1 + 24);
  v21 = 0;
  v9 = a1 + 8;
  while (1)
  {
    v10 = v9;
    WeakRetained = objc_loadWeakRetained(v9);
    v12 = WeakRetained;
    if (v6)
    {
      v13 = v6;
    }

    else
    {
      v13 = v9;
    }

    if (WeakRetained)
    {
      ++v7;
    }

    else
    {
      v6 = v13;
    }

    (*(a3 + 16))(a3, v9, WeakRetained, &v21);
    v9 = *(v9 + 8);
    if (v12)
    {
      v14 = v12;
    }

    v15 = v21;
    if (v21 || v7 > v8)
    {
      break;
    }

    if (!v9)
    {
      v17 = (v10 + 8);
      goto LABEL_17;
    }
  }

  v17 = (v10 + 8);
  if (v9)
  {
    goto LABEL_18;
  }

LABEL_17:
  *(a1 + 24) = v7;
LABEL_18:
  if (!a2 && !v15 && !v6)
  {
    v18 = malloc_type_calloc(1uLL, 0x10uLL, 0xA0040BD48D6D6uLL);
    if (!v18)
    {
      visit_cold_1();
    }

    v6 = v18;
    *v17 = v18;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v6;
}

CFStringRef _CFStringCreateStringWithValidatedFormatAuxWithDesc(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  Mutable[1].info = Mutable[1].info & 0xF | 0x780;
  if (__CFStringAppendFormatCore(Mutable, a2, a3, a4, 0, a5, a6))
  {
    Copy = CFStringCreateCopy(a1, Mutable);
  }

  else
  {
    Copy = 0;
  }

  CFRelease(Mutable);
  return Copy;
}

uint64_t parseStringTag(uint64_t a1, CFMutableStringRef *a2)
{
  v60 = *MEMORY[0x1E69E9840];
  if (*(a1 + 24))
  {
    goto LABEL_2;
  }

  Mutable = 0;
  v6 = *(a1 + 8);
  v7 = v6;
  do
  {
    v8 = *(a1 + 16);
    if (v6 >= v8)
    {
LABEL_91:
      v36 = *(a1 + 80);
      if (Mutable)
      {
        if (*(a1 + 80))
        {
          *a2 = 0;
LABEL_106:
          CFRelease(Mutable);
          goto LABEL_107;
        }

        CFDataAppendBytes(Mutable, v7, v6 - v7);
        if (*(a1 + 40) == 2)
        {
          v37 = *(a1 + 32);
          BytePtr = CFDataGetBytePtr(Mutable);
          Length = CFDataGetLength(Mutable);
          v40 = CFStringCreateWithBytes(v37, BytePtr, Length, 0x8000100u, 0);
          if (v40)
          {
            v41 = v40;
            *a2 = CFStringCreateMutableCopy(*(a1 + 32), 0, v40);
            CFRelease(v41);
            goto LABEL_106;
          }

          goto LABEL_109;
        }

        v44 = CFDataGetBytePtr(Mutable);
        v45 = CFDataGetLength(Mutable);
        UniqueStringWithUTF8Bytes = _createUniqueStringWithUTF8Bytes(a1, v44, v45);
        if (!UniqueStringWithUTF8Bytes)
        {
LABEL_109:
          CFRelease(Mutable);
          goto LABEL_112;
        }

LABEL_105:
        *a2 = UniqueStringWithUTF8Bytes;
        goto LABEL_106;
      }

      if (*(a1 + 80))
      {
        *a2 = 0;
LABEL_107:
        result = 1;
        goto LABEL_108;
      }

      if (*(a1 + 40) == 2)
      {
        v42 = CFStringCreateWithBytes(*(a1 + 32), v7, v6 - v7, 0x8000100u, 0);
        if (v42)
        {
          Mutable = v42;
          UniqueStringWithUTF8Bytes = CFStringCreateMutableCopy(*(a1 + 32), 0, v42);
          goto LABEL_105;
        }
      }

      else
      {
        v47 = _createUniqueStringWithUTF8Bytes(a1, v7, v6 - v7);
        if (v47)
        {
          *a2 = v47;
          goto LABEL_107;
        }
      }

LABEL_112:
      Error = __CFPropertyListCreateError(3840, @"Unable to convert string to correct encoding");
      result = 0;
      *(a1 + 24) = Error;
      goto LABEL_108;
    }

    v9 = *v6;
    if (v9 != 38)
    {
      if (v9 != 60)
      {
        *(a1 + 8) = ++v6;
        continue;
      }

      if ((v6 + 1) >= v8 || v6[1] != 33)
      {
        goto LABEL_91;
      }

      if (!Mutable)
      {
        Mutable = CFDataCreateMutable(*(a1 + 32), 0);
        v6 = *(a1 + 8);
      }

      CFDataAppendBytes(Mutable, v7, v6 - v7);
      v10 = *(a1 + 8);
      v11 = *(a1 + 16);
      if (v11 - v10 > 8)
      {
        if (*v10 == 0x41544144435B213CLL && *(v10 + 8) == 91)
        {
          v21 = (v10 + 9);
          *(a1 + 8) = v10 + 9;
          if (v10 + 9 < (v11 - 2))
          {
            v22 = 0;
            v23 = v10 - v11 + 11;
            while (*(v10 + 9) != 93 || *(v10 + 10) != 93 || *(v10 + 11) != 62)
            {
              *(a1 + 8) = v10 + 10;
              --v22;
              ++v10;
              if (v23 == v22)
              {
                goto LABEL_42;
              }
            }

            CFDataAppendBytes(Mutable, v21, -v22);
            *(a1 + 8) += 3;
            goto LABEL_82;
          }

LABEL_42:
          *(a1 + 8) = v21;
          usedBufLenb = lineNumber(a1);
          v13 = __CFPropertyListCreateError(3840, @"Could not find end of CDATA started on line %u", usedBufLenb, v55, *bytes);
        }

        else
        {
          usedBufLena = lineNumber(a1);
          v13 = __CFPropertyListCreateError(3840, @"Encountered improper CDATA opening at line %u", usedBufLena, v55, *bytes);
        }

        goto LABEL_81;
      }

LABEL_72:
      v13 = __CFPropertyListCreateError(3840, @"Encountered unexpected EOF", usedBufLen, v55, *bytes);
LABEL_81:
      *(a1 + 24) = v13;
      goto LABEL_82;
    }

    if (!Mutable)
    {
      Mutable = CFDataCreateMutable(*(a1 + 32), 0);
      v6 = *(a1 + 8);
    }

    CFDataAppendBytes(Mutable, v7, v6 - v7);
    v14 = *(a1 + 8);
    v15 = *(a1 + 16);
    *(a1 + 8) = v14 + 1;
    v16 = v15 - (v14 + 1);
    if (v16 <= 0)
    {
      goto LABEL_72;
    }

    v17 = v14[1];
    if (v17 <= 0x66)
    {
      if (v17 == 35)
      {
        if (v16 > 3)
        {
          v25 = v14 + 2;
          *(a1 + 8) = v14 + 2;
          v26 = v14[2];
          if (v26 == 120)
          {
            v25 = v14 + 3;
            *(a1 + 8) = v14 + 3;
          }

          if (v25 < v15)
          {
            v27 = 0;
            v28 = v15 - v25;
            v29 = v25 + 1;
            v30 = 8;
            while (1)
            {
              v31 = *(v29 - 1);
              *(a1 + 8) = v29;
              if (v31 == 59)
              {
                break;
              }

              if (!v30)
              {
                usedBufLend = lineNumber(a1);
                v13 = __CFPropertyListCreateError(3840, @"Encountered unparseable unicode sequence at line %u while parsing data (too large of a value for a Unicode sequence)", usedBufLend, v55, *bytes);
                goto LABEL_81;
              }

              v32 = 16 * v27;
              if ((v31 - 48) > 9)
              {
                if (v26 != 120)
                {
                  goto LABEL_89;
                }

                if ((v31 - 97) > 5)
                {
                  if ((v31 - 65) > 5)
                  {
LABEL_89:
                    v56 = lineNumber(a1);
                    v13 = __CFPropertyListCreateError(3840, @"Encountered unexpected character %c at line %u while parsing data", v31, v56, *bytes);
                    goto LABEL_81;
                  }

                  v27 = v32 + v31 - 55;
                }

                else
                {
                  v27 = v32 + v31 - 87;
                }
              }

              else
              {
                v33 = 10 * v27;
                if (v26 == 120)
                {
                  v33 = v32;
                }

                v27 = v31 + v33 - 48;
              }

              *v58 = v27;
              --v30;
              ++v29;
              if (!--v28)
              {
                goto LABEL_72;
              }
            }

            *v58 = bswap32(v27);
            v34 = CFStringCreateWithBytes(*(a1 + 32), v58, 4, 0x18000100u, 0);
            if (v34)
            {
              v35 = v34;
              *bytes = 0;
              v61.length = CFStringGetLength(v34);
              v61.location = 0;
              CFStringGetBytes(v35, v61, 0x8000100u, 0, 0, buffer, 6, bytes);
              CFDataAppendBytes(Mutable, buffer, *bytes);
              CFRelease(v35);
              goto LABEL_82;
            }

            usedBufLene = lineNumber(a1);
            v13 = __CFPropertyListCreateError(3840, @"Encountered unparseable Unicode sequence at line %u while parsing data (input did not result in a real string)", usedBufLene, v55, *bytes);
            goto LABEL_81;
          }
        }

        goto LABEL_72;
      }

      if (v17 != 97)
      {
        goto LABEL_80;
      }

      if (v16 <= 3)
      {
        goto LABEL_72;
      }

      v19 = v14[2];
      if (v19 != 109)
      {
        if (v16 == 4 || v19 != 112 || v14[3] != 111 || v14[4] != 115 || v14[5] != 59)
        {
LABEL_80:
          usedBufLenc = lineNumber(a1);
          v13 = __CFPropertyListCreateError(3840, @"Encountered unknown ampersand-escape sequence at line %u", usedBufLenc, v55, *bytes);
          goto LABEL_81;
        }

        v24 = 39;
        goto LABEL_79;
      }

      if (v14[3] != 112 || v14[4] != 59)
      {
        goto LABEL_80;
      }

      bytes[0] = 38;
      v20 = 5;
    }

    else
    {
      if (v17 == 103)
      {
        if (v16 < 3 || v14[2] != 116 || v14[3] != 59)
        {
          goto LABEL_80;
        }

        v18 = 62;
      }

      else
      {
        if (v17 == 113)
        {
          if (v16 < 5 || v14[2] != 117 || v14[3] != 111 || v14[4] != 116 || v14[5] != 59)
          {
            goto LABEL_80;
          }

          v24 = 34;
LABEL_79:
          bytes[0] = v24;
          v20 = 6;
          goto LABEL_48;
        }

        if (v17 != 108 || v16 < 3 || v14[2] != 116 || v14[3] != 59)
        {
          goto LABEL_80;
        }

        v18 = 60;
      }

      bytes[0] = v18;
      v20 = 4;
    }

LABEL_48:
    *(a1 + 8) = &v14[v20];
    CFDataAppendBytes(Mutable, bytes, 1);
LABEL_82:
    v6 = *(a1 + 8);
    v7 = v6;
  }

  while (!*(a1 + 24));
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_2:
  result = 0;
LABEL_108:
  v46 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFStringValidateFormat(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v31 = v3;
  v5 = v4;
  v7 = v6;
  v8 = v2;
  v52 = *MEMORY[0x1E69E9840];
  v42 = 0;
  v43 = 0;
  v9 = _CFGetTSD(1u);
  if (v9)
  {
    v10 = v9;
  }

  else
  {
    v10 = &__kCFAllocatorSystemDefault;
  }

  v40 = 0;
  v41 = 0;
  v38 = 0;
  v39 = 0;
  v36 = 0;
  ptr = 0;
  v34 = 0;
  v35 = 0;
  v32 = 0;
  v33 = 0;
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  v45 = 0;
  memset(v44, 0, sizeof(v44));
  Length = CFStringGetLength(v7);
  __CFStringSetUpFormatAndSpecBuffers(v7, Length, &v41, &v40, &ptr, v51, &v35, v49, &v33, v46);
  v12 = CFStringGetLength(v8);
  __CFStringSetUpFormatAndSpecBuffers(v8, v12, &v39, &v38, &v36, v50, &v34, v48, &v32, v44);
  v13 = v35;
  v14 = v33;
  FormatSpecifiersInString = __CFStringFindFormatSpecifiersInString(v41, v40, Length, v35, v33, &v43);
  v16 = v34;
  v17 = v32;
  v18 = __CFStringFindFormatSpecifiersInString(v39, v38, v12, v34, v32, &v42);
  v19 = __CFStringValidateFormatSpecBuffers(v13, FormatSpecifiersInString, v16, v18, v5);
  v20 = v19;
  if (v31 && !v19)
  {
    v21 = CFStringCreateWithFormat(v10, 0, @"Format '%@' does not match expected '%@'", v7, v8);
    Mutable = CFDictionaryCreateMutable(v10, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, @"NSDebugDescription", v21);
    *v31 = CFErrorCreate(v10, @"NSCocoaErrorDomain", 2048, Mutable);
    CFRelease(Mutable);
    CFRelease(v21);
  }

  if (ptr && ptr != v51)
  {
    CFAllocatorDeallocate(v10, ptr);
  }

  if (v36 && v36 != v50)
  {
    CFAllocatorDeallocate(v10, v36);
  }

  if (v13 != v49)
  {
    CFAllocatorDeallocate(v10, v13);
  }

  if (v16 != v48)
  {
    CFAllocatorDeallocate(v10, v16);
  }

  v23 = v43;
  if (v43 >= 1)
  {
    v24 = 0;
    do
    {
      v25 = v14[v24];
      if (v25)
      {
        CFRelease(v25);
        v23 = v43;
      }

      ++v24;
    }

    while (v24 < v23);
  }

  v26 = v42;
  if (v42 >= 1)
  {
    v27 = 0;
    do
    {
      v28 = v17[v27];
      if (v28)
      {
        CFRelease(v28);
        v26 = v42;
      }

      ++v27;
    }

    while (v27 < v26);
  }

  if (v14 != v46)
  {
    CFAllocatorDeallocate(v10, v14);
  }

  if (v17 != v44)
  {
    CFAllocatorDeallocate(v10, v17);
  }

  if (v20)
  {
    result = v5 + FormatSpecifiersInString;
  }

  else
  {
    result = -1;
  }

  v30 = *MEMORY[0x1E69E9840];
  return result;
}

CFCalendarRef CFCalendarCopyCurrent(void)
{
  v0 = +[NSCalendar _current];

  return v0;
}

uint64_t __CFStringFindFormatSpecifiersInString(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v81 = *MEMORY[0x1E69E9840];
  if (a3 < 1)
  {
    v10 = 0;
    goto LABEL_185;
  }

  LODWORD(v9) = 0;
  LODWORD(v10) = 0;
  if (a5)
  {
    v11 = a6 == 0;
  }

  else
  {
    v11 = 1;
  }

  v12 = !v11;
  v13 = xmmword_183317CD0;
  v78 = v12;
  do
  {
    v14 = a4 + 32 * v10;
    *(v14 + 4) = v9;
    *(v14 + 8) = 0;
    *v14 = 0;
    *(v14 + 12) = v13;
    v15 = v9;
    v9 = v9;
    if (a1)
    {
      if (v9 < a3)
      {
        do
        {
          if (*(a1 + v9) == 37)
          {
            break;
          }

          ++v9;
        }

        while (v9 < a3);
        goto LABEL_17;
      }
    }

    else if (v9 < a3)
    {
      do
      {
        if (*(a2 + 2 * v9) == 37)
        {
          break;
        }

        ++v9;
      }

      while (v9 < a3);
LABEL_17:
      if (v15 != v9)
      {
LABEL_181:
        LODWORD(v10) = v10 + (~v10 >> 31);
        goto LABEL_182;
      }
    }

    LODWORD(v9) = v15 + 1;
    if (v15 + 1 >= a3)
    {
LABEL_113:
      *(v14 + 2) = 43;
      goto LABEL_115;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v19 = 0;
    v20 = 0;
    v21 = (v14 + 16);
    v22 = -1;
    v23 = -1;
    v24 = -1;
    while (1)
    {
      v25 = a1 ? *(a1 + v9) : *(a2 + 2 * v9);
      LODWORD(v9) = v9 + 1;
      if (v22 < 0)
      {
        break;
      }

      v26 = v25 >= 0x30 && v25 - 58 >= 7;
      if (!v26 || (v25 != 95 ? (v27 = v25 - 91 >= 6) : (v27 = 1), v27 ? (v28 = 0) : (v28 = 1), v25 <= 0x7A ? (v29 = v28 == 0) : (v29 = 0), !v29))
      {
        if (v25 == 93)
        {
          if (v18)
          {
            v17 = 1;
          }
        }

        else
        {
          if (v25 == 64)
          {
            v46 = v16 | 0x40;
            if (!v17)
            {
              v46 = v16;
            }

            *(v14 + 20) = v46 | 0x10;
LABEL_131:
            v47 = 2424836;
LABEL_132:
            *v14 = v47;
            goto LABEL_115;
          }

          v22 = -1;
        }
      }

LABEL_71:
      if (v9 >= a3)
      {
        goto LABEL_113;
      }
    }

    v79 = v21;
    while (2)
    {
      if (v20)
      {
        v30 = v21;
      }

      else
      {
        v30 = (v14 + 12);
      }

      v31 = v20;
LABEL_47:
      if (v25 - 49 >= 9)
      {
        switch(v25)
        {
          case ' ':
            if ((v16 & 4) != 0)
            {
              goto LABEL_108;
            }

            v16 |= 8u;
LABEL_92:
            *(v14 + 20) = v16;
            goto LABEL_108;
          case '#':
            v19 = 1;
            goto LABEL_108;
          case '*':
            v23 = -2;
            *(v14 + 26) = -2;
            goto LABEL_108;
          case '+':
            v16 = v16 & 0xFFFFFFF3 | 4;
            goto LABEL_92;
          case '-':
            v16 = v16 & 0xFFFFFFFC | 2;
            goto LABEL_92;
          case '.':
            if (v9 >= a3)
            {
              goto LABEL_113;
            }

            if (a1)
            {
              v25 = *(a1 + v9);
            }

            else
            {
              v25 = *(a2 + 2 * v9);
            }

            v21 = v79;
            LODWORD(v9) = v9 + 1;
            v20 = 1;
            if (v25 != 42)
            {
              continue;
            }

            v24 = -2;
            *(v14 + 25) = -2;
            goto LABEL_71;
          case '0':
            if (v20)
            {
              v21 = v79;
              *v79 = 0;
              v20 = 1;
            }

            else
            {
              v21 = v79;
              v20 = 0;
              if ((v16 & 2) == 0)
              {
                v16 |= 1u;
                *(v14 + 20) = v16;
              }
            }

            goto LABEL_71;
          case '@':
            if (!v19)
            {
              goto LABEL_131;
            }

            v19 = 0;
            v22 = v9;
            goto LABEL_108;
          case 'A':
          case 'a':
            goto LABEL_126;
          case 'C':
            v47 = 2686978;
            goto LABEL_132;
          case 'D':
          case 'U':
          case 'd':
          case 'i':
          case 'u':
            v73 = a4;
            v75 = a5;
            v77 = a6;
            if (_CFExecutableLinkedOnOrAfter(8uLL))
            {
              *(v14 + 20) |= 0x20u;
            }

            if ((v25 & 0xFFDF) == 0x55)
            {
              v48 = 4;
            }

            else
            {
              v48 = 1;
            }

            *(v14 + 28) = v48;
            a5 = v75;
            a6 = v77;
            a4 = v73;
            v12 = v78;
            v13 = xmmword_183317CD0;
            goto LABEL_139;
          case 'E':
          case 'F':
          case 'G':
          case 'e':
          case 'f':
          case 'g':
            v72 = a4;
            v74 = a5;
            v76 = a6;
            if (_CFExecutableLinkedOnOrAfter(8uLL))
            {
              *(v14 + 20) |= 0x20u;
            }

            if (v25 - 65 >= 0x1A)
            {
              v45 = v25;
            }

            else
            {
              v45 = v25 + 32;
            }

            *(v14 + 28) = ((v45 & 0xFFFE) == 102) | (2 * ((v45 & 0xFFFD) == 101));
            a5 = v74;
            a6 = v76;
            a4 = v72;
            v12 = v78;
            v13 = xmmword_183317CD0;
            if (v31 && *v79 == -1 && *(v14 + 25) == 255)
            {
              *v79 = 0;
            }

LABEL_126:
            *(v14 + 2) = 34;
            if (*v14 != 5)
            {
              *v14 = 4;
            }

            goto LABEL_140;
          case 'L':
            v41 = 5;
            goto LABEL_107;
          case 'O':
          case 'X':
          case 'o':
          case 'x':
LABEL_139:
            *(v14 + 2) = 33;
            goto LABEL_140;
          case 'P':
            v47 = 2621444;
            goto LABEL_132;
          case 'S':
            v47 = 2490372;
            goto LABEL_132;
          case '[':
            if (!v18)
            {
              v22 = v9;
            }

            v18 = 1;
            goto LABEL_108;
          case 'c':
            v69 = 2162689;
            goto LABEL_176;
          case 'h':
            if (v9 < a3 && (!a1 ? (v43 = *(a2 + 2 * v9)) : (v43 = *(a1 + v9)), v43 == 104))
            {
              LODWORD(v9) = v9 + 1;
              v41 = 1;
            }

            else
            {
              v41 = 2;
            }

            goto LABEL_107;
          case 'j':
          case 'q':
          case 't':
          case 'z':
            goto LABEL_106;
          case 'l':
            if (v9 < a3)
            {
              v42 = a1 ? *(a1 + v9) : *(a2 + 2 * v9);
              if (v42 == 108)
              {
                LODWORD(v9) = v9 + 1;
              }
            }

LABEL_106:
            v41 = 4;
LABEL_107:
            *v14 = v41;
LABEL_108:
            v21 = v79;
            goto LABEL_71;
          case 'n':
            v47 = 2752516;
            goto LABEL_132;
          case 'p':
            v69 = 2293764;
LABEL_176:
            *v14 = v69;
LABEL_140:
            v49 = (v9 - v15);
            *(v14 + 8) = v49;
            if (!v12)
            {
              goto LABEL_182;
            }

            v50 = *(v14 + 4);
            v51 = a4;
            v52 = a5;
            v53 = a6;
            if (a1)
            {
              if (v49 >= 1)
              {
                v54 = 0;
                LODWORD(v55) = 0;
                v56 = a1 + v50;
                while (1)
                {
                  v57 = *(v56 + v54);
                  if (v57 == 36)
                  {
                    if ((v55 & 0x80000000) == 0)
                    {
                      v55 = v55;
                      while (1)
                      {
                        v58 = v55 - 1;
                        if (v55 < 1)
                        {
                          break;
                        }

                        v59 = *(&v79 + v55-- + 7) - 48;
                        if (v59 >= 0xA)
                        {
                          goto LABEL_152;
                        }
                      }

                      v58 = -1;
                      goto LABEL_152;
                    }
                  }

                  else
                  {
                    __s.i8[v55] = v57;
                  }

                  v58 = v55;
LABEL_152:
                  LODWORD(v55) = v58 + 1;
                  if (++v54 >= v49 || v58 >= 127)
                  {
                    goto LABEL_171;
                  }
                }
              }

LABEL_170:
              LODWORD(v55) = 0;
              goto LABEL_171;
            }

            if (v49 < 1)
            {
              goto LABEL_170;
            }

            v60 = 0;
            LODWORD(v55) = 0;
            v61 = a2 + 2 * v50;
            break;
          case 's':
            v47 = 2555908;
            goto LABEL_132;
          default:
            *(v14 + 2) = 32;
            goto LABEL_181;
        }

        while (1)
        {
          v62 = *(v61 + 2 * v60);
          if (v62 == 36)
          {
            if ((v55 & 0x80000000) == 0)
            {
              v55 = v55;
              while (1)
              {
                v63 = v55 - 1;
                if (v55 < 1)
                {
                  break;
                }

                v64 = *(&v79 + v55-- + 7) - 48;
                if (v64 >= 0xA)
                {
                  goto LABEL_166;
                }
              }

              v63 = -1;
              goto LABEL_166;
            }
          }

          else
          {
            __s.i8[v55] = v62;
          }

          v63 = v55;
LABEL_166:
          LODWORD(v55) = v63 + 1;
          if (++v60 >= v49 || v63 >= 127)
          {
LABEL_171:
            __s.i8[v55] = 0;
            v65 = strlen(__s.i8);
            v67 = __CFStringCreateImmutableFunnel3(0, &__s, v65, 0x8000100uLL, 8, -1, 0, v66);
            a6 = v53;
            v68 = (*v53)++;
            a5 = v52;
            *(v52 + 8 * v68) = v67;
            a4 = v51;
            v12 = v78;
            v13 = xmmword_183317CD0;
            goto LABEL_182;
          }
        }
      }

      break;
    }

    v32 = 0;
    if (v9 <= a3)
    {
      v33 = a3;
    }

    else
    {
      v33 = v9;
    }

    v34 = v33 - v9;
    v35 = (a2 + 2 * v9);
    v36 = (a1 + v9);
    do
    {
      v37 = (v32 * 10) >> 64;
      v38 = 10 * v32;
      if (v37 != v38 >> 63)
      {
        goto LABEL_115;
      }

      v39 = v25 - 48;
      v40 = __OFADD__(v38, v39);
      v32 = v38 + v39;
      if (v40)
      {
        goto LABEL_115;
      }

      if (!v34)
      {
        *(v14 + 2) = 43;
        LODWORD(v9) = v33;
        goto LABEL_115;
      }

      if (a1)
      {
        v25 = *v36;
      }

      else
      {
        v25 = *v35;
      }

      LODWORD(v9) = v9 + 1;
      --v34;
      ++v35;
      ++v36;
    }

    while (v25 - 48 < 0xA);
    if (v25 == 36)
    {
      if (v32 > 127)
      {
        goto LABEL_115;
      }

      if (v24 == 254)
      {
        v24 = v32 - 1;
        *(v14 + 25) = v32 - 1;
      }

      else if (v23 == 254)
      {
        *(v14 + 26) = v32 - 1;
        v23 = v32 - 1;
      }

      else
      {
        *(v14 + 24) = v32 - 1;
      }

      v21 = v79;
      v20 = v31;
      goto LABEL_71;
    }

    if (v32 <= 0x7FFFFFFF)
    {
      *v30 = v32;
      v20 = v31;
      goto LABEL_47;
    }

LABEL_115:
    *(v14 + 8) = v9 - v15;
    if (v12)
    {
      v44 = (*a6)++;
      *(a5 + 8 * v44) = 0;
    }

LABEL_182:
    v10 = (v10 + 1);
  }

  while (v9 < a3);
LABEL_185:
  v70 = *MEMORY[0x1E69E9840];
  return v10;
}

CFTypeRef _createUniqueStringWithUTF8Bytes(uint64_t a1, unsigned __int8 *a2, uint64_t a3)
{
  v12 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v11 = 0;
    if (CFBurstTrieContainsUTF8String(*(a1 + 48), a2, a3, &v11))
    {
      v6 = v11 == 0;
    }

    else
    {
      v6 = 1;
    }

    if (v6)
    {
      ValueAtIndex = CFStringCreateWithBytes(*(a1 + 32), a2, a3, 0x8000100u, 0);
      if (ValueAtIndex)
      {
        v11 = CFArrayGetCount(*(a1 + 56)) + 1;
        if (CFBurstTrieAddUTF8String(*(a1 + 48), a2, a3, v11))
        {
          CFArrayAppendValue(*(a1 + 56), ValueAtIndex);
        }
      }
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 56), v11 - 1);
      CFRetain(ValueAtIndex);
    }

    v10 = *MEMORY[0x1E69E9840];
    return ValueAtIndex;
  }

  else
  {
    v7 = *MEMORY[0x1E69E9840];

    return CFRetain(&stru_1EF068AA8);
  }
}