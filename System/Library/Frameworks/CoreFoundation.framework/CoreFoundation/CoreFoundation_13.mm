const void *CFCopySystemVersionString()
{
  v0 = _CFCopySupplementalVersionDictionary();
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  Value = CFDictionaryGetValue(v0, @"FullVersionString");
  v3 = Value;
  if (Value)
  {
    CFRetain(Value);
  }

  CFRelease(v1);
  return v3;
}

CFTypeRef _CFCopySupplementalVersionDictionary()
{
  if (_CFCopySupplementalVersionDictionary_onceToken != -1)
  {
    _CFCopySupplementalVersionDictionary_cold_1();
  }

  result = _CFCopySupplementalVersionDictionary_result;
  if (_CFCopySupplementalVersionDictionary_result)
  {

    return CFRetain(result);
  }

  return result;
}

BOOL __CFToISOLatin1(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  if (a2 <= 0xFF)
  {
    *a3 = a2;
  }

  return a2 < 0x100;
}

Boolean CFRunLoopTimerDoesRepeat(CFRunLoopTimerRef timer)
{
  __CFCheckCFInfoPACSignature(timer);
  v2 = _CFGetNonObjCTypeID(timer);
  if (v2 != 47)
  {
    _CFAssertMismatchedTypeID(0x2FuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  return *(timer + 14) > 0.0;
}

void _CFPrefsUnregisterUserDefaultsInstance(uint64_t a1)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v2 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      _CFPrefsUnregisterUserDefaultsInstance_cold_1();
    }

    v2 = [qword_1ED40BE18 copyPrefs];
  }

  v3 = v2;
  [v2 unregisterUserDefaultsInstance:a1];
}

uint64_t parseRealTag(uint64_t a1, void *a2)
{
  v34 = *MEMORY[0x1E69E9840];
  theString1 = 0;
  if (!parseStringTag(a1, &theString1))
  {
    if (*(a1 + 24))
    {
LABEL_24:
      result = 0;
      goto LABEL_35;
    }

    v14 = lineNumber(a1);
    Error = __CFPropertyListCreateError(3840, @"Encountered empty <real> on line %u", v14);
LABEL_34:
    v12 = Error;
    result = 0;
    *(a1 + 24) = v12;
    goto LABEL_35;
  }

  v4 = theString1;
  if (*(a1 + 80))
  {
    v5 = 0;
    if (!theString1)
    {
      goto LABEL_20;
    }

LABEL_19:
    CFRelease(v4);
    goto LABEL_20;
  }

  if (CFStringCompare(theString1, @"nan", 1uLL) == kCFCompareEqualTo)
  {
    v7 = &kCFNumberNaN;
    goto LABEL_17;
  }

  if (CFStringCompare(v4, @"+infinity", 1uLL) == kCFCompareEqualTo)
  {
    goto LABEL_14;
  }

  if (CFStringCompare(v4, @"-infinity", 1uLL))
  {
    if (CFStringCompare(v4, @"infinity", 1uLL))
    {
      if (CFStringCompare(v4, @"-inf", 1uLL))
      {
        if (CFStringCompare(v4, @"inf", 1uLL) && CFStringCompare(v4, @"+inf", 1uLL))
        {
          goto LABEL_25;
        }

        goto LABEL_14;
      }

      goto LABEL_16;
    }

LABEL_14:
    v7 = &kCFNumberPositiveInfinity;
    goto LABEL_17;
  }

LABEL_16:
  v7 = &kCFNumberNegativeInfinity;
LABEL_17:
  v5 = *v7;
  if (*v7)
  {
    CFRetain(*v7);
    if (!v4)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

LABEL_25:
  Length = CFStringGetLength(v4);
  v25 = 0u;
  v26 = 0u;
  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  *buffer = 0u;
  v20 = 0u;
  v27 = v4;
  v30 = 0;
  v31 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v4);
  CStringPtr = 0;
  v28 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v4, 0x600u);
  }

  v32 = 0;
  v33 = 0;
  v29 = CStringPtr;
  v17 = 0;
  valuePtr = 0.0;
  if (!__CFStringScanDouble(buffer, 0, &v17, &valuePtr) || Length != v17)
  {
    if (v4)
    {
      CFRelease(v4);
    }

    v15 = lineNumber(a1);
    Error = __CFPropertyListCreateError(3840, @"Encountered misformatted real on line %u", v15);
    goto LABEL_34;
  }

  v5 = CFNumberCreate(*(a1 + 32), kCFNumberDoubleType, &valuePtr);
  if (v4)
  {
    goto LABEL_19;
  }

LABEL_20:
  if (!checkForCloseTag(a1, "real", 4uLL))
  {
    if (v5)
    {
      CFRelease(v5);
    }

    goto LABEL_24;
  }

  *a2 = v5;
  result = 1;
LABEL_35:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFArrayCreateCopy0(__objc2_class **a1, unint64_t *a2)
{
  if (CF_IS_OBJC(0x13uLL, a2))
  {
    v4 = [a2 count];
  }

  else
  {
    v4 = a2[2];
  }

  if (CF_IS_OBJC(0x13uLL, a2))
  {
LABEL_5:
    v9 = &kCFTypeArrayCallBacks;
    goto LABEL_6;
  }

  v15 = atomic_load(a2 + 1);
  v16 = (v15 >> 2) & 3;
  if (v16)
  {
    if (v16 != 1)
    {
      v17 = atomic_load(a2 + 1);
      v18 = v17 & 3;
      if (v18)
      {
        v19 = 0;
      }

      else
      {
        v19 = (a2 + 6);
      }

      if (v18 == 2)
      {
        v9 = (a2 + 6);
      }

      else
      {
        v9 = v19;
      }

      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = &__kCFNullArrayCallBacks;
LABEL_6:
  Init = __CFArrayCreateInit(a1, 0, v4, v9, v5, v6, v7, v8);
  v11 = Init;
  v12 = atomic_load((Init + 8));
  v13 = (v12 >> 2) & 3;
  if (v13)
  {
    if (v13 == 1)
    {
      v14 = &kCFTypeArrayCallBacks;
    }

    else
    {
      v20 = atomic_load((Init + 8));
      v21 = v20 & 3;
      if (v21 != 2 && v21)
      {
        v14 = 0;
      }

      else
      {
        v14 = (Init + 48);
      }
    }
  }

  else
  {
    v14 = &__kCFNullArrayCallBacks;
  }

  v22 = atomic_load((Init + 8));
  v23 = v22 & 3;
  if (v23 == 2)
  {
    v27 = *(Init + 40) + 8 * **(Init + 40) + 16;
  }

  else if (v23)
  {
    v27 = 0;
  }

  else
  {
    v24 = atomic_load((Init + 8));
    v25 = (~v24 & 0xC) == 0;
    v26 = 48;
    if (v25)
    {
      v26 = 88;
    }

    v27 = Init + v26;
  }

  if (v4 >= 1)
  {
    for (i = 0; i != v4; ++i)
    {
      v29 = [a2 objectAtIndex:i];
      retain = v14->retain;
      if (retain)
      {
        v29 = retain(a1, v29);
      }

      *(v27 + 8 * i) = v29;
    }
  }

  *(v11 + 16) = v4;
  return v11;
}

CFStringRef CFDateFormatterGetFormat(CFDateFormatterRef formatter)
{
  __CFCheckCFInfoPACSignature(formatter);
  v2 = _CFGetNonObjCTypeID(formatter);
  if (v2 != 56)
  {
    _CFAssertMismatchedTypeID(0x38uLL, v2);
  }

  return *(formatter + 6);
}

uint64_t _CFStringGetFileSystemRepresentation(__CFString *a1, _BYTE *a2, uint64_t a3)
{
  if (CFStringGetLength(a1))
  {
    return [(__CFString *)a1 getFileSystemRepresentation:a2 maxLength:a3];
  }

  if (!a3)
  {
    return 0;
  }

  *a2 = 0;
  return 1;
}

void _CFBundleGetLanguageAndRegionCodes(unsigned int *a1, unsigned int *a2)
{
  v13 = *MEMORY[0x1E69E9840];
  MainBundle = CFBundleGetMainBundle();
  if (MainBundle && (v5 = _CFBundleCopyLanguageSearchListInBundle(MainBundle)) != 0 || (v5 = _CFBundleCopyUserLanguages()) != 0)
  {
    v6 = v5;
    if (CFArrayGetCount(v5) < 1)
    {
      RegionCodeForLocalization = 0;
      LanguageCodeForLocalization = 0;
    }

    else
    {
      ValueAtIndex = CFArrayGetValueAtIndex(v6, 0);
      v12 = -1;
      v11 = -1;
      if (CFLocaleGetLanguageRegionEncodingForLocaleIdentifier(ValueAtIndex, &v12, &v11, 0, 0))
      {
        LanguageCodeForLocalization = v12;
        RegionCodeForLocalization = v11;
      }

      else
      {
        LanguageCodeForLocalization = _CFBundleGetLanguageCodeForLocalization(ValueAtIndex);
        RegionCodeForLocalization = _CFBundleGetRegionCodeForLocalization(ValueAtIndex);
      }

      if (LanguageCodeForLocalization != -1 || RegionCodeForLocalization == -1)
      {
        if (RegionCodeForLocalization == -1 && LanguageCodeForLocalization != -1)
        {
          RegionCodeForLocalization = _CFBundleGetRegionCodeForLanguageCode(LanguageCodeForLocalization);
        }
      }

      else
      {
        LanguageCodeForLocalization = _CFBundleGetLanguageCodeForRegionCode(RegionCodeForLocalization);
      }
    }

    CFRelease(v6);
    if (a1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    RegionCodeForLocalization = 0;
    LanguageCodeForLocalization = 0;
    if (a1)
    {
LABEL_18:
      *a1 = LanguageCodeForLocalization;
    }
  }

  if (a2)
  {
    *a2 = RegionCodeForLocalization;
  }

  v10 = *MEMORY[0x1E69E9840];
}

CFStringRef __CFStringCopyDescription(uint64_t a1)
{
  v1 = &kCFAllocatorSystemDefault;
  if ((a1 & 0x8000000000000000) == 0)
  {
    v2 = atomic_load((a1 + 8));
    if (v2 < 0)
    {
      v1 = &kCFAllocatorSystemDefault;
    }

    else
    {
      v1 = (a1 - 16);
    }
  }

  return CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<CFString %p [%p]>{contents = %@}", a1, *v1, a1);
}

CFTypeRef __CFBooleanCopyFormattingDescription(__objc2_class **a1)
{
  if (&__kCFBooleanTrue == a1)
  {
    return CFRetain(@"true");
  }

  else
  {
    return CFRetain(@"false");
  }
}

Boolean CFURLSetResourcePropertiesForKeys(CFURLRef url, CFDictionaryRef keyedPropertyValues, CFErrorRef *error)
{
  v14 = *MEMORY[0x1E69E9840];
  v13 = 0;
  if (_CFURLHasFileURLScheme(url, &v13))
  {
    __CFURLResourceInfoPtr(url);
    _FSURLSetResourcePropertiesForKeys();
  }

  else if (!v13)
  {
    CFLog(4, @"CFURLSetResourcePropertiesForKeys failed because it was passed a URL which has no scheme", v4, v5, v6, v7, v8, v9, v12);
  }

  result = 1;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

CFArrayRef __CFDateFormatterCopySymbolsArray(uint64_t a1, uint64_t a2, int a3)
{
  LODWORD(v3) = a3;
  v22 = *MEMORY[0x1E69E9840];
  v20 = 0;
  v4 = __cficu_udat_countSymbols();
  if (v4 > v3)
  {
    v6 = v4;
    v7 = v4 - v3;
    MEMORY[0x1EEE9AC00](v4, v5);
    v10 = (&v19 - v9);
    if (v8 >= 0x200)
    {
      v11 = 512;
    }

    else
    {
      v11 = v8;
    }

    bzero(&v19 - v9, v11);
    if (v7 < 1)
    {
      v15 = CFArrayCreate(&__kCFAllocatorSystemDefault, v10, v7, &kCFTypeArrayCallBacks);
      if (!v7)
      {
LABEL_18:
        v18 = *MEMORY[0x1E69E9840];
        return v15;
      }
    }

    else
    {
      v19 = &v19;
      v3 = v3;
      v12 = v10;
      do
      {
        v20 = 0;
        Symbols = __cficu_udat_getSymbols();
        if (v7 > 0x300 || v20 > 0 || (v14 = CFStringCreateWithCharacters(&__kCFAllocatorSystemDefault, v21, Symbols)) == 0)
        {
          v14 = CFRetain(@"<error>");
        }

        *v12++ = v14;
        ++v3;
      }

      while (v6 != v3);
      v15 = CFArrayCreate(&__kCFAllocatorSystemDefault, v10, v7, &kCFTypeArrayCallBacks);
    }

    do
    {
      CFRelease(v10[--v7]);
    }

    while (v7);
    goto LABEL_18;
  }

  v16 = *MEMORY[0x1E69E9840];

  return CFArrayCreate(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeArrayCallBacks);
}

CFIndex CFDictionaryGetCountOfValue(CFDictionaryRef theDict, const void *value)
{
  if (CF_IS_OBJC(0x12uLL, theDict))
  {

    return [(__CFDictionary *)theDict countForObject:value];
  }

  else
  {

    return CFBasicHashGetCountOfValue(theDict, value);
  }
}

void *__CFSetCreateTransfer(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  v12[10] = *MEMORY[0x1E69E9840];
  v12[0] = __CFTypeCollectionRetain;
  v12[1] = __CFTypeCollectionRetain;
  v12[2] = __CFTypeCollectionRelease;
  v12[3] = __CFTypeCollectionRelease;
  v12[4] = CFEqual;
  v12[5] = CFEqual;
  v12[6] = CFHash;
  v12[7] = 0;
  v12[8] = CFCopyDescription;
  v12[9] = CFCopyDescription;
  v5 = CFBasicHashCreate(a1, 0x2000u, v12);
  CFBasicHashSuppressRC(v5);
  if (a3 >= 1)
  {
    CFBasicHashSetCapacity(v5, a3);
    do
    {
      v6 = *a2++;
      CFBasicHashAddValue(v5, v6, v6);
      --a3;
    }

    while (a3);
  }

  CFBasicHashUnsuppressRC(v5);
  v7 = atomic_load(v5 + 1);
  v8 = v7;
  do
  {
    atomic_compare_exchange_strong(v5 + 1, &v8, v7 | 0x40);
    v9 = v8 == v7;
    v7 = v8;
  }

  while (!v9);
  _CFRuntimeSetInstanceTypeIDAndIsa(v5, 0x11uLL);
  if (__CFOASafe)
  {
    __CFSetLastAllocationEventName();
  }

  v10 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t CFBasicHashGetCountOfValue(uint64_t result, unint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if (a2 == 2814029233 || !*(result + 20))
  {
    v4 = 0;
LABEL_10:
    v5 = *MEMORY[0x1E69E9840];
    return v4;
  }

  v2 = *(result + 18);
  if ((v2 & 4) != 0)
  {
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = __CFBasicHashGetCountOfValue_block_invoke;
    v6[3] = &unk_1E6DD1440;
    v6[5] = a2;
    v6[6] = result;
    v6[4] = &v7;
    CFBasicHashApply(result, v6);
    v4 = v8[3];
    _Block_object_dispose(&v7, 8);
    goto LABEL_10;
  }

  if (!*(result + 26))
  {
    v11 = xmmword_183447130;
    v12 = unk_183447140;
LABEL_22:
    v4 = *(&v12 + 1);
    goto LABEL_10;
  }

  v3 = v2 & 3;
  if ((*(result + 18) & 0x8000) != 0)
  {
    if ((v2 & 3u) > 1)
    {
      if (v3 == 2)
      {
        ___CFBasicHashFindBucket_Double_Indirect(result, a2, &v11);
      }

      else
      {
        ___CFBasicHashFindBucket_Exponential_Indirect(result, a2, &v11);
      }

      goto LABEL_22;
    }

    if (v3 == 1)
    {
      ___CFBasicHashFindBucket_Linear_Indirect(result, a2, &v11);
      goto LABEL_22;
    }
  }

  else
  {
    if ((v2 & 3u) > 1)
    {
      if (v3 == 2)
      {
        ___CFBasicHashFindBucket_Double(result, a2, &v11);
      }

      else
      {
        ___CFBasicHashFindBucket_Exponential(result, a2, &v11);
      }

      goto LABEL_22;
    }

    if (v3 == 1)
    {
      ___CFBasicHashFindBucket_Linear(result, a2, &v11);
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

CFMutableStringRef CFBundleCopyLocalizedStringForLocalizations(__CFBundle *a1, void *a2, __CFString *a3, __CFString *a4, const __CFArray *a5)
{
  v10 = CFBundleCopyBundleLocalizations(a1);
  v11 = CFBundleCopyLocalizationsForPreferences(v10, a5);
  v12 = _CFBundleCopyLocalizedStringForLocalizationTableURLAndMarkdownOption(a1, a2, a3, a4, v11, 0, 0);
  if (v10)
  {
    CFRelease(v10);
  }

  if (v11)
  {
    CFRelease(v11);
  }

  return v12;
}

uint64_t _CFFileSecurityCreateFromFilesec(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  v3 = [NSFileSecurity alloc];

  return [(NSFileSecurity *)v3 initWithFileSec:a2];
}

void CFRunLoopSourceGetContext(CFRunLoopSourceRef source, CFRunLoopSourceContext *context)
{
  __CFCheckCFInfoPACSignature(source);
  v4 = _CFGetNonObjCTypeID(source);
  if (v4 != 46)
  {
    _CFAssertMismatchedTypeID(0x2EuLL, v4);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v5 = 72;
  if (context->version != 1)
  {
    v5 = 0;
  }

  if (context->version)
  {
    v6 = v5;
  }

  else
  {
    v6 = 80;
  }

  memmove(context, source + 104, v6);
}

CFFileSecurityRef CFFileSecurityCreateCopy(CFAllocatorRef allocator, CFFileSecurityRef fileSec)
{
  result = filesec_dup([(__CFFileSecurity *)fileSec _filesec]);
  if (result)
  {
    v3 = result;
    result = [[NSFileSecurity alloc] initWithFileSec:result];
    if (!result)
    {
      filesec_free(v3);
      return 0;
    }
  }

  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  CurrentTokenRange = __NLStringTokenizerGetCurrentTokenRange(*(tokenizer + 2));
  result.length = v2;
  result.location = CurrentTokenRange;
  return result;
}

const __CFNumber *_CFURLCreateFromPropertyListRepresentation(const __CFAllocator *a1, CFTypeRef cf)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  if (CFGetTypeID(cf) != 18)
  {
    goto LABEL_25;
  }

  Value = CFDictionaryGetValue(cf, @"_CFURLString");
  if (!Value)
  {
    goto LABEL_25;
  }

  v5 = Value;
  v6 = CFGetTypeID(Value);
  if (v6 != CFStringGetTypeID())
  {
    goto LABEL_25;
  }

  v7 = CFDictionaryGetValue(cf, @"_CFURLStringType");
  v8 = v7;
  if (!v7)
  {
    goto LABEL_26;
  }

  v9 = CFGetTypeID(v7);
  if (v9 != CFNumberGetTypeID())
  {
    goto LABEL_25;
  }

  valuePtr[0] = 0;
  if (!CFNumberGetValue(v8, kCFNumberSInt32Type, valuePtr))
  {
    goto LABEL_25;
  }

  v8 = 0;
  if (LODWORD(valuePtr[0]) > 0xF || ((1 << SLOBYTE(valuePtr[0])) & 0x8007) == 0)
  {
    goto LABEL_26;
  }

  v10 = CFDictionaryGetValue(cf, @"_CFURLBaseURLString");
  if (v10)
  {
    v11 = v10;
    v12 = CFGetTypeID(v10);
    if (v12 == CFStringGetTypeID())
    {
      v13 = CFDictionaryGetValue(cf, @"_CFURLBaseStringType");
      if (v13)
      {
        v14 = v13;
        v15 = CFGetTypeID(v13);
        if (v15 == CFNumberGetTypeID())
        {
          if (CFNumberGetValue(v14, kCFNumberSInt32Type, valuePtr + 4))
          {
            v16 = HIDWORD(valuePtr[0]);
            if (HIDWORD(valuePtr[0]) < 3)
            {
              Length = CFStringGetLength(v11);
              v18 = CFStringGetCharacterAtIndex(v11, Length - 1) == 47;
              v19 = _CFURLCreateWithFileSystemPath(a1, v11, v16, v18, 0);
LABEL_24:
              v20 = v19;
              goto LABEL_17;
            }

            if (HIDWORD(valuePtr[0]) == 15)
            {
              v19 = _CFURLCreateWithArbitraryString(a1, v11, 0);
              goto LABEL_24;
            }
          }
        }
      }
    }

LABEL_25:
    v8 = 0;
    goto LABEL_26;
  }

  v20 = 0;
LABEL_17:
  v21 = SLODWORD(valuePtr[0]);
  if (LODWORD(valuePtr[0]) == 15)
  {
    v22 = _CFURLCreateWithArbitraryString(a1, v5, v20);
  }

  else
  {
    v23 = CFStringGetLength(v5);
    v24 = CFStringGetCharacterAtIndex(v5, v23 - 1) == 47;
    v22 = _CFURLCreateWithFileSystemPath(a1, v5, v21, v24, v20);
  }

  v8 = v22;
  if (v20)
  {
    CFRelease(v20);
  }

LABEL_26:
  v25 = *MEMORY[0x1E69E9840];
  return v8;
}

void CFStreamCreateBoundPair(CFAllocatorRef alloc, CFReadStreamRef *readStream, CFWriteStreamRef *writeStream, CFIndex transferBufferSize)
{
  v22[1] = *MEMORY[0x1E69E9840];
  if (readStream)
  {
    *readStream = 0;
  }

  if (writeStream)
  {
    *writeStream = 0;
  }

  v22[0] = 0;
  if (cbInit(v22, transferBufferSize))
  {
    Typed = CFAllocatorAllocateTyped(alloc, 176, 0x10600400B962E3FLL, 0);
    *Typed = 0u;
    *(Typed + 16) = 0u;
    *(Typed + 32) = 0u;
    *(Typed + 48) = 0u;
    *(Typed + 64) = 0u;
    *(Typed + 80) = 0u;
    *(Typed + 96) = 0u;
    *(Typed + 112) = 0u;
    *(Typed + 128) = 0u;
    *(Typed + 144) = 0u;
    *(Typed + 160) = 0u;
    v9 = v22[0];
    *(Typed + 88) = alloc;
    *(Typed + 96) = v9;
    pthread_mutex_init((Typed + 104), 0);
    *(Typed + 168) = transferBufferSize;
    *(Typed + 24) = @"_kCFBoundPairReadPrivateRunLoopMode";
    *(Typed + 8) = CFRunLoopSourceCreate(alloc, 0, &_emptySourceCtxt);
    *(Typed + 72) = @"_kCFBoundPairWritePrivateRunLoopMode";
    *(Typed + 56) = CFRunLoopSourceCreate(alloc, 0, &_emptySourceCtxt);
    CFReadStreamCreate(alloc, &boundPairReadCallBacks, Typed, v10, v11, v12, v13, v14);
    CFWriteStreamCreate(alloc, boundPairWriteCallBacks, Typed, v15, v16, v17, v18, v19);
    v20 = *(Typed + 32);
    if (v20 && *(Typed + 80))
    {
      if (readStream)
      {
        *readStream = v20;
      }

      if (writeStream)
      {
        *writeStream = *(Typed + 80);
      }
    }

    else
    {
      boundPairCommonFinalize(Typed);
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

CFTimeInterval CFTimeZoneGetSecondsFromGMT(CFTimeZoneRef tz, CFAbsoluteTime at)
{
  v4 = _CFAutoreleasePoolPush();
  v5 = [(__CFTimeZone *)tz secondsFromGMTForDate:[NSDate dateWithTimeIntervalSinceReferenceDate:at]];
  _CFAutoreleasePoolPop(v4);
  return v5;
}

uint64_t cbInit(void ***a1, unsigned int a2)
{
  result = malloc_type_malloc(0x68uLL, 0x10500408CE9FA50uLL);
  *a1 = result;
  if (result)
  {
    **a1 = malloc_type_malloc(a2, 0x100004077774924uLL);
    v5 = *a1;
    v6 = **a1;
    if (!v6)
    {
LABEL_5:
      free(v5);
      result = 0;
      *a1 = 0;
      return result;
    }

    v5[1] = v6;
    (*a1)[2] = **a1;
    v7 = *a1;
    *(v7 + 8) = a2;
    *(v7 + 9) = a2;
    v7[3] = *v7 + a2;
    if (pthread_mutex_init((*a1 + 5), 0))
    {
      free(**a1);
      **a1 = 0;
      (*a1)[1] = 0;
      (*a1)[2] = 0;
      v8 = *a1;
      v8[3] = 0;
      v8[4] = 0;
      v5 = *a1;
      goto LABEL_5;
    }

    return 1;
  }

  return result;
}

void *CFReadStreamCreate(__objc2_class **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  _CFStreamCreate(a1, 1, a3, a4, a5, a6, a7, a8);
  v12 = v11;
  if (v11)
  {
    Typed = CFAllocatorAllocateTyped(a1, 136, 0x108004021366E3ELL, 0);
    if (Typed)
    {
      v14 = Typed;
      if (*a2 == 1)
      {
        v19 = *(a2 + 8);
        if (v19)
        {
          v8 = v19(v12, v8);
          v19 = *(a2 + 8);
        }

        v12[5] = v8;
        v20 = 1;
      }

      else
      {
        if (!*a2)
        {
          v15 = *(v8 + 8);
          v16 = *(v8 + 16);
          if (v16)
          {
            v15 = v16(v15);
            v16 = *(v8 + 16);
          }

          v12[5] = v15;
          *v14 = 0;
          *(v14 + 8) = v16;
          *(v14 + 16) = *(v8 + 24);
          *(v14 + 32) = *(a2 + 8);
          *(v14 + 48) = *(a2 + 24);
          *(v14 + 64) = *(a2 + 40);
          *(v14 + 72) = 0;
          *(v14 + 80) = 0;
          *(v14 + 88) = *(a2 + 48);
          v17 = (a2 + 64);
          *(v14 + 104) = 0;
          *(v14 + 112) = 0;
          v18 = 72;
          goto LABEL_16;
        }

        v19 = *(a2 + 8);
        if (v19)
        {
          v8 = v19(v12, v8);
          v19 = *(a2 + 8);
        }

        v12[5] = v8;
        v20 = 2;
      }

      *v14 = v20;
      *(v14 + 8) = v19;
      *(v14 + 16) = *(a2 + 16);
      *(v14 + 32) = *(a2 + 32);
      *(v14 + 48) = *(a2 + 48);
      *(v14 + 64) = *(a2 + 64);
      *(v14 + 72) = 0;
      *(v14 + 80) = 0;
      *(v14 + 88) = *(a2 + 72);
      *(v14 + 104) = *(a2 + 88);
      v17 = (a2 + 104);
      v18 = 112;
LABEL_16:
      *(v14 + 120) = *v17;
      *(v14 + 128) = *(a2 + v18);
      v12[6] = v14;
      return v12;
    }

    CFRelease(v12);
    return 0;
  }

  return v12;
}

uint64_t boundPairReadCreate(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 32) = a1;
  }

  return a2;
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v17[1] = *MEMORY[0x1E69E9840];
  SecondsFromGMT = 0.0;
  if (tz)
  {
    SecondsFromGMT = CFTimeZoneGetSecondsFromGMT(tz, at);
  }

  v17[0] = 0;
  v16 = 0;
  v15 = SecondsFromGMT + at;
  __CFYMDFromAbsolute(vcvtmd_s64_f64((SecondsFromGMT + at) / 86400.0), v17, &v16 + 1, &v16);
  if (v17[0] >= 2147481646)
  {
    v4 = 2147481646;
  }

  else
  {
    v4 = v17[0];
  }

  v5 = vrndmq_f64(vdivq_f64(vdupq_lane_s64(*&v15, 0), xmmword_183306F10));
  v6 = v15 - 60.0 * v5.f64[0];
  v7 = v6 + 60.0;
  if (v6 >= 0.0)
  {
    v7 = v15 - 60.0 * v5.f64[0];
  }

  if (v7 == 0.0)
  {
    v7 = 0.0;
  }

  v8 = *MEMORY[0x1E69E9840];
  v9 = vcvt_s32_f32(vcvt_f32_f64(vrndmq_f64(vmlsq_f64(v5, xmmword_183306F20, vrndmq_f64(vdivq_f64(v5, xmmword_183306F20))))));
  v10 = vand_s8(vadd_s32(v9, vand_s8(vcltz_s32(v9), 0x180000003CLL)), 0xFF000000FFLL);
  v11.i64[0] = v10.u32[0];
  v11.i64[1] = v10.u32[1];
  v12 = vshlq_u64(v11, xmmword_183306F30);
  v13 = v7;
  v14 = vorrq_s8(v12, vdupq_laneq_s64(v12, 1)).u64[0] | (v16 << 40) | (HIBYTE(v16) << 32) | (v4 + 2001);
  result.second = v13;
  result.year = v14;
  result.month = BYTE4(v14);
  result.day = BYTE5(v14);
  result.hour = BYTE6(v14);
  result.minute = HIBYTE(v14);
  return result;
}

uint64_t __CFYMDFromAbsolute(uint64_t result, uint64_t *a2, unsigned __int8 *a3, unint64_t a4)
{
  v4 = 400 * (result / 146097);
  for (i = result % 146097; i < 0; --v4)
  {
    v20 = v4 % 400;
    if (v4 % 400 < 0)
    {
      v20 = -v20;
    }

    if ((v20 & 3) != 0 || v20 == 100 || v20 == 300 || v20 == 200)
    {
      v21 = 365;
    }

    else
    {
      v21 = 366;
    }

    i += v21;
  }

  v6 = (v4 + 1) % 400;
  if (v6 < 0)
  {
    v6 = 400 * ((v4 + 1) / 400) - (v4 + 1);
  }

  if ((v6 & 3) != 0 || v6 == 100 || v6 == 300 || v6 == 200)
  {
    v7 = 365;
  }

  else
  {
    v7 = 366;
  }

  if (i >= v7)
  {
    do
    {
      v18 = (v4 + 2) % 400;
      if (v18 < 0)
      {
        v18 = 400 * ((v4 + 2) / 400) - (v4 + 2);
      }

      if ((v18 & 3) != 0 || v18 == 100 || v18 == 300 || v18 == 200)
      {
        v19 = 365;
      }

      else
      {
        v19 = 366;
      }

      i -= v7;
      ++v4;
      v7 = v19;
    }

    while (i >= v19);
  }

  if (a2)
  {
    *a2 = v4;
  }

  if (a3 | a4)
  {
    v8 = (v4 + 1) % 400;
    if (v8 >= 0)
    {
      v9 = v8;
    }

    else
    {
      v9 = -v8;
    }

    if ((v9 & 3) != 0)
    {
      v10 = 0;
    }

    else
    {
      v10 = 0;
      if (v9 != 100 && v9 != 200)
      {
        v10 = v9 != 300;
      }
    }

    v11 = (i / 33);
    if ((i / 33 + 1) <= 0xCu)
    {
      v12 = 12;
    }

    else
    {
      v12 = i / 33 + 1;
    }

    while ((v11 + 1) <= 0xBu)
    {
      v13 = v11;
      v14 = v11 + 1;
      v15 = daysBeforeMonth[v11 + 2];
      if (v11)
      {
        v16 = v10;
      }

      else
      {
        v16 = 0;
      }

      v17 = i < (v15 + v16);
      v11 = v14;
      if (v17)
      {
        v12 = v14;
        if (!a3)
        {
          goto LABEL_52;
        }

        goto LABEL_51;
      }
    }

    v13 = v12 - 1;
    if (!a3)
    {
      goto LABEL_52;
    }

LABEL_51:
    *a3 = v12;
LABEL_52:
    if (a4)
    {
      if (v13 > 0xEu)
      {
        v22 = -1;
      }

      else
      {
        if (v13 <= 1u)
        {
          LOBYTE(v10) = 0;
        }

        v22 = daysBeforeMonth[v12] + v10;
      }

      *a4 = i - v22 + 1;
    }
  }

  return result;
}

void *CFWriteStreamCreate(__objc2_class **a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a3;
  _CFStreamCreate(a1, 0, a3, a4, a5, a6, a7, a8);
  v12 = v11;
  if (v11)
  {
    Typed = CFAllocatorAllocateTyped(a1, 136, 0x108004021366E3ELL, 0);
    if (Typed)
    {
      v14 = Typed;
      v15 = *a2;
      if (*a2 == 1 || v15)
      {
        *Typed = v15;
        v20 = a2[1];
        if (v20)
        {
          v8 = v20(v12, v8);
          v20 = a2[1];
        }

        v12[5] = v8;
        v14[1] = v20;
        *(v14 + 1) = *(a2 + 1);
        *(v14 + 2) = *(a2 + 2);
        v14[7] = 0;
        v14[8] = 0;
        v14[6] = 0;
        *(v14 + 9) = *(a2 + 3);
        *(v14 + 11) = *(a2 + 4);
        *(v14 + 13) = *(a2 + 5);
        v18 = a2 + 12;
        v19 = 13;
      }

      else
      {
        v16 = *(v8 + 8);
        v17 = *(v8 + 16);
        if (v17)
        {
          v16 = v17(v16);
          v17 = *(v8 + 16);
        }

        v12[5] = v16;
        *v14 = 0;
        v14[1] = v17;
        *(v14 + 1) = *(v8 + 24);
        *(v14 + 2) = *(a2 + 1);
        v14[7] = 0;
        v14[8] = 0;
        v14[6] = 0;
        *(v14 + 9) = *(a2 + 3);
        *(v14 + 11) = *(a2 + 5);
        v18 = a2 + 7;
        v14[13] = 0;
        v14[14] = 0;
        v19 = 8;
      }

      v14[15] = *v18;
      v14[16] = a2[v19];
      v12[6] = v14;
    }

    else
    {
      CFRelease(v12);
      return 0;
    }
  }

  return v12;
}

uint64_t boundPairWriteCreate(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    *(a2 + 80) = a1;
  }

  return a2;
}

double __CFDictionaryGetKeyCallbacks@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0u;
  v9 = 0u;
  memset(v10, 0, sizeof(v10));
  v8 = 0u;
  __CFBasicHashGetCallbacks(a1, &v8);
  v3 = *(&v8 + 1);
  v4 = *(&v9 + 1);
  *a2 = 0;
  *(a2 + 8) = v3;
  v5 = *(&v11 + 1);
  *(a2 + 16) = v4;
  *(a2 + 24) = v5;
  result = *(v10 + 1);
  *(a2 + 32) = *(v10 + 8);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFBasicHashGetCallbacks@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  v2 = *(result + 24);
  v3 = *(result + 32);
  v4 = *(CFBasicHashCallBackPtrs[(v2 >> 29) & 0x1F] + 8 * ((v2 >> 24) & 0x1F));
  *a2 = *(CFBasicHashCallBackPtrs[(v2 >> 39) & 0x1F] + 8 * ((v2 >> 34) & 0x1F));
  a2[1] = v4;
  v5 = *(*(CFBasicHashCallBackPtrs + (HIBYTE(v2) & 0xF8)) + 8 * ((v2 >> 54) & 0x1F));
  v6 = *(CFBasicHashCallBackPtrs[(v2 >> 49) & 0x1F] + 8 * ((v2 >> 44) & 0x1F));
  a2[2] = v5;
  a2[3] = v6;
  v7 = *(CFBasicHashCallBackPtrs[(v3 >> 29) & 0x1F] + 8 * ((v3 >> 24) & 0x1F));
  v8 = *(CFBasicHashCallBackPtrs[(v3 >> 49) & 0x1F] + 8 * ((v3 >> 44) & 0x1F));
  a2[4] = *(CFBasicHashCallBackPtrs[(v3 >> 39) & 0x1F] + 8 * ((v3 >> 34) & 0x1F));
  a2[5] = v7;
  v9 = *(*(CFBasicHashCallBackPtrs + (HIBYTE(v3) & 0xF8)) + 8 * ((v3 >> 54) & 0x1F));
  v10 = *(CFBasicHashCallBackPtrs[(v3 >> 19) & 0x1F] + 8 * ((v3 >> 14) & 0x1F));
  v11 = CFBasicHashCallBackPtrs[(v3 >> 9) & 0x1F];
  a2[6] = v8;
  a2[7] = v9;
  v12 = *(v11 + 8 * ((v3 >> 4) & 0x1F));
  a2[8] = v10;
  a2[9] = v12;
  return result;
}

uint64_t __CFDictionaryGetValueCallbacks@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v14 = *MEMORY[0x1E69E9840];
  v12 = 0u;
  v13 = 0u;
  v10 = 0u;
  v11 = 0u;
  v9 = 0u;
  result = __CFBasicHashGetCallbacks(a1, &v9);
  v4 = v9;
  v5 = v10;
  *a2 = 0;
  a2[1] = v4;
  v6 = v13;
  v7 = v11;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

__CFString *CFBasicHashCopyDescription(uint64_t a1, int a2, uint64_t a3, uint64_t a4, char a5)
{
  v33 = *MEMORY[0x1E69E9840];
  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
  v11 = atomic_load((a1 + 8));
  if ((v11 & 0x40) != 0)
  {
    v12 = "immutable";
  }

  else
  {
    v12 = "mutable";
  }

  v13 = *(a1 + 18);
  if ((v13 & 0x18) != 0)
  {
    v14 = "multi";
  }

  else
  {
    v14 = "";
  }

  if ((v13 & 4) != 0)
  {
    v15 = "dict";
  }

  else
  {
    v15 = "set";
  }

  Count = CFBasicHashGetCount(a1);
  CFStringAppendFormat(Mutable, 0, @"%@{type = %s %s%s, count = %ld,\n", a3, v12, v14, v15, Count);
  if (a2)
  {
    CFStringAppendFormat(Mutable, 0, @"%@hash cache = %s, strong values = %s, strong keys = %s, cb = %s,\n", a3, "no", "no", "no", "custom");
    CFStringAppendFormat(Mutable, 0, @"%@num bucket index = %d, num buckets = %ld, capacity = %ld, num buckets used = %u,\n", a3, BYTE2(*(a1 + 24)), __CFBasicHashTableSizes[BYTE2(*(a1 + 24))], __CFBasicHashTableCapacities[BYTE2(*(a1 + 24))], *(a1 + 20));
    v17 = *(a1 + 18);
    if ((v17 & 0x18) != 0)
    {
      v18 = (1 << ((v17 >> 5) & 3));
    }

    else
    {
      v18 = 0;
    }

    if ((*(a1 + 32) & 8) != 0)
    {
      v19 = "yes";
    }

    else
    {
      v19 = "no";
    }

    CFStringAppendFormat(Mutable, 0, @"%@counts width = %d, finalized = %s,\n", a3, v18, v19);
    v20 = *(a1 + 16);
    v21 = *(a1 + 24);
    v22 = *(a1 + 18);
    v23 = 56;
    if ((v22 & 4) == 0)
    {
      v23 = 48;
    }

    if ((v22 & 0x18) != 0)
    {
      v24 = v23 + 8;
    }

    else
    {
      v24 = v23;
    }

    Size = CFBasicHashGetSize(a1, 1);
    CFStringAppendFormat(Mutable, 0, @"%@num mutations = %ld, num deleted = %ld, size = %ld, total size = %ld,\n", a3, v20, v21, v24, Size);
    v26 = 0;
    v27 = *(a1 + 18);
    if ((v27 & 4) != 0)
    {
      v26 = *(a1 + 48);
    }

    if ((v27 & 0x18) != 0)
    {
      v28 = *(a1 + 40 + (v27 & 0x18));
    }

    else
    {
      v28 = 0;
    }

    CFStringAppendFormat(Mutable, 0, @"%@values ptr = %p, keys ptr = %p, counts ptr = %p, hashes ptr = %p,\n", a3, *(a1 + 40), v26, v28, 0);
  }

  CFStringAppendFormat(Mutable, 0, @"%@entries =>\n", a3);
  v31[0] = MEMORY[0x1E69E9820];
  v31[1] = 3221225472;
  v31[2] = __CFBasicHashCopyDescription_block_invoke;
  v31[3] = &__block_descriptor_57_e15_C40__0___qQQQ_8l;
  v32 = a5;
  v31[4] = a1;
  v31[5] = Mutable;
  v31[6] = a4;
  CFBasicHashApply(a1, v31);
  CFStringAppendFormat(Mutable, 0, @"%@}\n", a3);
  v29 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFStringRef __CFBasicHashCopyDescription(const void *a1)
{
  v2 = CFBasicHashCopyDescription(a1, 0, &stru_1EF068AA8, @"\t", 1);
  v3 = CFGetAllocator(a1);
  v4 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<CFBasicHash %p [%p]>%@", a1, v3, v2);
  CFRelease(v2);
  return v4;
}

void CFTimeZoneResetSystem(void)
{
  v0 = _CFAutoreleasePoolPush();
  +[NSTimeZone resetSystemTimeZone];

  _CFAutoreleasePoolPop(v0);
}

uint64_t __CFBasicHashCopyDescription_block_invoke(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 56))
  {
    v4 = *(CFBasicHashCallBackPtrs[(*(*(a1 + 32) + 32) >> 19) & 0x1FLL] + 8 * ((*(*(a1 + 32) + 32) >> 14) & 0x1FLL));
    if (v4)
    {
      v5 = v4(a2[2]);
    }

    else
    {
      v5 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<%p>", a2[2]);
    }

    v6 = v5;
    v7 = *(a1 + 32);
    if ((*(v7 + 18) & 4) == 0)
    {
      goto LABEL_8;
    }

    v9 = *(CFBasicHashCallBackPtrs[(*(v7 + 32) >> 9) & 0x1FLL] + 8 * ((*(v7 + 32) >> 4) & 0x1FLL));
    if (v9)
    {
      v10 = v9(a2[1]);
LABEL_12:
      v8 = v10;
      goto LABEL_13;
    }

LABEL_11:
    v10 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<%p>", a2[1]);
    goto LABEL_12;
  }

  v6 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"<%p>", a2[2]);
  if ((*(*(a1 + 32) + 18) & 4) != 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v8 = 0;
LABEL_13:
  v11 = *(a1 + 40);
  v12 = *(*(a1 + 32) + 18);
  v13 = *(a1 + 48);
  v14 = *a2;
  if ((v12 & 4) != 0 && (v12 & 0x18) != 0)
  {
    CFStringAppendFormat(v11, 0, @"%@%ld : %@ = %@ (%ld)\n", v13, v14, v8, v6, a2[3]);
  }

  else if ((v12 & 4) != 0)
  {
    CFStringAppendFormat(v11, 0, @"%@%ld : %@ = %@\n", v13, v14, v8, v6);
  }

  else if ((v12 & 0x18) != 0)
  {
    CFStringAppendFormat(v11, 0, @"%@%ld : %@ (%ld)\n", v13, v14, v6, a2[3]);
  }

  else
  {
    CFStringAppendFormat(v11, 0, @"%@%ld : %@\n", v13, *a2, v6);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  return 1;
}

id _NSObjectStoreWeak(id *location, id obj, _BYTE *a3)
{
  if (!obj)
  {
    if (*location)
    {
      if (*a3 == 1)
      {
        v5 = 0;
        *location = 0;
        return v5;
      }

      objc_storeWeakOrNil(location, 0);
    }

    return 0;
  }

  v5 = obj;
  if (*a3 == 1)
  {
    *location = 0;
  }

  v6 = objc_storeWeakOrNil(location, obj);
  if (v6)
  {
    *a3 = 0;
    return v6;
  }

  else
  {
    *a3 = 1;
    *location = v5;
  }

  return v5;
}

Boolean CFWriteStreamSetClient(CFWriteStreamRef stream, CFOptionFlags streamEvents, CFWriteStreamClientCallBack clientCB, CFStreamClientContext *clientContext)
{
  if (CF_IS_OBJC(0x27uLL, stream))
  {
    if (objc_opt_respondsToSelector())
    {
      return [(__CFWriteStream *)stream _setCFClientFlags:streamEvents callback:clientCB context:clientContext];
    }

    else
    {
      if (clientCB)
      {
        v9 = [[_CFStreamDelegate alloc] initWithStreamEvents:streamEvents callback:clientCB context:clientContext];
        [(__CFWriteStream *)stream setDelegate:v9];
        v10 = objc_opt_class();
        objc_setAssociatedObject(stream, v10, v9, 0x301);
      }

      else
      {
        [(__CFWriteStream *)stream setDelegate:0];
      }

      return 1;
    }
  }

  else
  {

    return _CFStreamSetClient(stream, streamEvents & 0xFFFFFFFFFFFFFFFDLL, clientCB, clientContext);
  }
}

uint64_t _CFStreamSetClient(void *cf, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = a3 == 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = v5;
  if (a4)
  {
    v7 = v6;
  }

  else
  {
    v7 = 1;
  }

  if (v6)
  {
    v8 = 0;
  }

  else
  {
    v8 = a4;
  }

  if (v7)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  if (v7)
  {
    v10 = 0;
  }

  else
  {
    v10 = a2;
  }

  v11 = cf[4];
  if (v11)
  {
LABEL_20:
    if (*(v11 + 40))
    {
      v12 = *(v11 + 24);
      if (v12)
      {
        v12(*(v11 + 8));
        v11 = cf[4];
      }
    }

    *(v11 + 40) = v9;
    if (v8)
    {
      v13 = *(v8 + 16);
      *(v11 + 16) = v13;
      v14 = *(v8 + 8);
      *v11 = *v8;
      *(v11 + 32) = *(v8 + 32);
      if (v13 && v14)
      {
        v14 = (v13)();
        v11 = cf[4];
      }

      *(v11 + 8) = v14;
    }

    else
    {
      *(v11 + 24) = 0u;
      *(v11 + 8) = 0u;
    }

    if (*(v11 + 48) != v10)
    {
      v18 = cf[6];
      *(v11 + 48) = v10;
      v19 = *(v18 + 112);
      if (v19)
      {
        v19(cf, v10, cf[5]);
      }
    }

    return 1;
  }

  if ((v7 & 1) == 0)
  {
    v15 = CFGetAllocator(cf);
    Typed = CFAllocatorAllocateTyped(v15, 80, 0x10A00402EE2ECADLL, 0);
    cf[4] = Typed;
    *Typed = 0u;
    Typed[1] = 0u;
    Typed[2] = 0u;
    Typed[3] = 0u;
    Typed[4] = 0u;
    v11 = cf[4];
    if (!v11)
    {
      return 0;
    }

    goto LABEL_20;
  }

  return 1;
}

BOOL _CFDictionaryIsMutable(unint64_t a1)
{
  if (CF_IS_OBJC(0x12uLL, a1))
  {
    return 0;
  }

  v3 = atomic_load((a1 + 8));
  return ((v3 >> 6) & 1) == 0;
}

uint64_t _CFStreamSetDispatchQueue(uint64_t a1, NSObject *a2)
{
  v4 = _CFStreamCopyRunLoopsAndModes(a1);
  if (v4)
  {
    v5 = v4;
    Count = CFArrayGetCount(v4);
    if (Count >= 1)
    {
      v7 = Count;
      for (i = 0; i < v7; i += 2)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, i);
        v10 = CFArrayGetValueAtIndex(v5, i + 1);
        _CFStreamUnscheduleFromRunLoop(a1, ValueAtIndex, v10);
      }
    }

    CFRelease(v5);
  }

  if (a2)
  {
    if (_legacyStreamRunLoop_sOnce != -1)
    {
      _CFStreamSetDispatchQueue_cold_1();
    }

    _CFStreamScheduleWithRunLoop(a1, sLegacyRL, @"kCFRunLoopDefaultMode");
    v11 = (a1 + 56);
    pthread_mutex_lock((a1 + 56));
    if (*(a1 + 32))
    {
      v12 = *(a1 + 128);
      if (v12 != a2)
      {
        if (v12)
        {
          dispatch_release(v12);
        }

        *(a1 + 128) = a2;
        dispatch_retain(a2);
      }
    }
  }

  else
  {
    v11 = (a1 + 56);
    pthread_mutex_lock((a1 + 56));
    if (*(a1 + 32))
    {
      v13 = *(a1 + 128);
      if (v13)
      {
        dispatch_release(v13);
      }

      *(a1 + 128) = 0;
    }
  }

  return pthread_mutex_unlock(v11);
}

CFArrayRef _CFStreamCopyRunLoopsAndModes(uint64_t a1)
{
  if (!a1 || !*(a1 + 32))
  {
    return 0;
  }

  pthread_mutex_lock((a1 + 56));
  if (*(*(a1 + 32) + 64))
  {
    v2 = CFGetAllocator(a1);
    Copy = CFArrayCreateCopy(v2, *(*(a1 + 32) + 64));
  }

  else
  {
    Copy = 0;
  }

  pthread_mutex_unlock((a1 + 56));
  return Copy;
}

void _CFStreamScheduleWithRunLoop(char *cf, void *a2, const __CFString *a3)
{
  values[2] = *MEMORY[0x1E69E9840];
  v6 = *(cf + 6);
  v7 = *(cf + 4);
  if (!v7)
  {
    v8 = CFGetAllocator(cf);
    Typed = CFAllocatorAllocateTyped(v8, 80, 0x10A00402EE2ECADLL, 0);
    *(cf + 4) = Typed;
    *Typed = 0u;
    Typed[1] = 0u;
    Typed[2] = 0u;
    Typed[3] = 0u;
    Typed[4] = 0u;
    v7 = *(cf + 4);
    if (!v7)
    {
      goto LABEL_69;
    }
  }

  if (!*(v7 + 56))
  {
    values[0] = a2;
    values[1] = a3;
    v13 = CFArrayCreate(&__kCFAllocatorSystemDefault, values, 2, &kCFTypeArrayCallBacks);
    os_unfair_lock_lock(&sSourceLock);
    Mutable = sSharedSources;
    if (!sSharedSources)
    {
      Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      sSharedSources = Mutable;
    }

    Value = CFDictionaryGetValue(Mutable, v13);
    if (!Value)
    {
      *&v50.copyDescription = xmmword_1EF066478;
      *&v50.hash = unk_1EF066488;
      *&v50.cancel = xmmword_1EF066498;
      v50.version = xmmword_1EF066458;
      *&v50.retain = *&off_1EF066468;
      v16 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
      CFDictionaryAddValue(sSharedSources, v13, v16);
      v50.info = v16;
      v33 = CFRunLoopSourceCreate(&__kCFAllocatorSystemDefault, 0, &v50);
      pthread_mutex_lock((cf + 56));
      v34 = *(cf + 4);
      if (v34)
      {
        v35 = *(v34 + 56);
        if (v35)
        {
          CFRetain(*(v34 + 56));
          v34 = *(cf + 4);
        }

        *(v34 + 56) = v33;
        if (v33)
        {
          CFRetain(v33);
        }

        pthread_mutex_unlock((cf + 56));
        if (v35)
        {
          CFRelease(v35);
          CFRelease(v35);
        }
      }

      else
      {
        pthread_mutex_unlock((cf + 56));
      }

      CFRunLoopAddSource(a2, v33, a3);
      CFRelease(v33);
      goto LABEL_57;
    }

    v16 = Value;
    ValueAtIndex = CFArrayGetValueAtIndex(Value, 0);
    if (ValueAtIndex)
    {
      v18 = ValueAtIndex;
      pthread_mutex_lock((ValueAtIndex + 56));
      v19 = *(v18 + 4);
      if (v19)
      {
        v20 = *(v19 + 56);
        if (v20)
        {
          CFRetain(*(v19 + 56));
          pthread_mutex_unlock((v18 + 56));
          pthread_mutex_lock((cf + 56));
          v21 = *(cf + 4);
          if (v21)
          {
            v22 = *(v21 + 56);
            if (v22)
            {
              CFRetain(*(v21 + 56));
              *(*(cf + 4) + 56) = v20;
              CFRetain(v20);
              pthread_mutex_unlock((cf + 56));
              CFRelease(v22);
              CFRelease(v22);
LABEL_55:
              CFRelease(v20);
              goto LABEL_56;
            }

            *(v21 + 56) = v20;
            CFRetain(v20);
          }

          pthread_mutex_unlock((cf + 56));
          goto LABEL_55;
        }
      }

      pthread_mutex_unlock((v18 + 56));
    }

LABEL_56:
    CFRetain(v16);
LABEL_57:
    CFArrayAppendValue(v16, cf);
    CFDictionaryAddValue(sSharedSources, cf, v13);
    CFRelease(v13);
    CFRelease(v16);
    *(cf + 2) |= 0x100uLL;
    os_unfair_lock_unlock(&sSourceLock);
    goto LABEL_58;
  }

  if (cf[17])
  {
    v23 = CFGetAllocator(cf);
    v50.version = 0;
    v50.info = cf;
    *&v50.retain = 0uLL;
    v50.copyDescription = CFCopyDescription;
    memset(&v50.equal, 0, 32);
    v50.perform = _cfstream_solo_signalEventSync;
    os_unfair_lock_lock(&sSourceLock);
    v24 = CFDictionaryGetValue(sSharedSources, cf);
    v25 = CFRetain(v24);
    v26 = CFDictionaryGetValue(sSharedSources, v25);
    Count = CFArrayGetCount(v26);
    v52.location = 0;
    v52.length = Count;
    FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v26, v52, cf);
    if (FirstIndexOfValue != -1)
    {
      CFArrayRemoveValueAtIndex(v26, FirstIndexOfValue);
      --Count;
    }

    if (!Count)
    {
      pthread_mutex_lock((cf + 56));
      v29 = *(cf + 4);
      if (v29 && (v30 = *(v29 + 56)) != 0)
      {
        CFRetain(*(v29 + 56));
        pthread_mutex_unlock((cf + 56));
        v31 = CFArrayGetValueAtIndex(v25, 0);
        v32 = CFArrayGetValueAtIndex(v25, 1);
        CFRunLoopRemoveSource(v31, v30, v32);
        CFRelease(v30);
      }

      else
      {
        pthread_mutex_unlock((cf + 56));
      }

      CFDictionaryRemoveValue(sSharedSources, v25);
    }

    CFDictionaryRemoveValue(sSharedSources, cf);
    pthread_mutex_lock((cf + 56));
    v36 = *(cf + 4);
    if (v36)
    {
      v37 = *(v36 + 56);
      if (v37)
      {
        CFRetain(*(v36 + 56));
        *(*(cf + 4) + 56) = 0;
        pthread_mutex_unlock((cf + 56));
        CFRelease(v37);
        if (!Count)
        {
          CFRunLoopSourceInvalidate(v37);
        }

        CFRelease(v37);
        goto LABEL_41;
      }

      *(v36 + 56) = 0;
    }

    pthread_mutex_unlock((cf + 56));
LABEL_41:
    *(cf + 2) &= ~0x100uLL;
    os_unfair_lock_unlock(&sSourceLock);
    v38 = CFRunLoopSourceCreate(v23, 0, &v50);
    pthread_mutex_lock((cf + 56));
    v39 = *(cf + 4);
    if (v39)
    {
      v40 = *(v39 + 56);
      if (v40)
      {
        CFRetain(*(v39 + 56));
        v39 = *(cf + 4);
      }

      *(v39 + 56) = v38;
      if (v38)
      {
        CFRetain(v38);
      }

      pthread_mutex_unlock((cf + 56));
      if (v40)
      {
        CFRelease(v40);
        CFRelease(v40);
      }
    }

    else
    {
      pthread_mutex_unlock((cf + 56));
    }

    v41 = CFArrayGetValueAtIndex(v25, 0);
    v42 = CFArrayGetValueAtIndex(v25, 1);
    CFRunLoopAddSource(v41, v38, v42);
    CFRelease(v25);
    CFRunLoopAddSource(a2, v38, a3);
    v12 = v38;
    goto LABEL_50;
  }

  pthread_mutex_lock((cf + 56));
  v10 = *(cf + 4);
  if (v10)
  {
    v11 = *(v10 + 56);
    if (v11)
    {
      CFRetain(*(v10 + 56));
      pthread_mutex_unlock((cf + 56));
      CFRunLoopAddSource(a2, v11, a3);
      v12 = v11;
LABEL_50:
      CFRelease(v12);
      goto LABEL_58;
    }
  }

  pthread_mutex_unlock((cf + 56));
LABEL_58:
  pthread_mutex_lock((cf + 56));
  v43 = *(*(cf + 4) + 64);
  if (!v43)
  {
    v44 = CFGetAllocator(cf);
    v43 = CFArrayCreateMutable(v44, 0, &kCFTypeArrayCallBacks);
    *(*(cf + 4) + 64) = v43;
  }

  CFArrayAppendValue(v43, a2);
  CFArrayAppendValue(*(*(cf + 4) + 64), a3);
  pthread_mutex_unlock((cf + 56));
  if (v6)
  {
    v45 = *(v6 + 120);
    if (v45)
    {
      *(cf + 2) |= 0x40uLL;
      v45(cf, a2, a3, *(cf + 5));
      *(cf + 2) &= ~0x40uLL;
    }
  }

  v46 = *(cf + 4);
  if (v46 && *(v46 + 72))
  {
    pthread_mutex_lock((cf + 56));
    v47 = *(cf + 4);
    if (v47 && (v48 = *(v47 + 56)) != 0)
    {
      CFRetain(*(v47 + 56));
      pthread_mutex_unlock((cf + 56));
      CFRunLoopSourceSignal(v48);
      CFRelease(v48);
      _wakeUpRunLoop(cf);
    }

    else
    {
      pthread_mutex_unlock((cf + 56));
    }
  }

LABEL_69:
  v49 = *MEMORY[0x1E69E9840];
}

void CFCharacterSetRemoveCharactersInString(CFMutableCharacterSetRef theSet, CFStringRef theString)
{
  if (CF_IS_OBJC(0x19uLL, theSet))
  {

    [(__CFCharacterSet *)theSet removeCharactersInString:theString];
  }

  else
  {
    v10 = atomic_load(theSet + 1);
    if ((v10 & 1) == 0)
    {
      CFLog(3, @"%s: Immutable character set passed to mutable function", v4, v5, v6, v7, v8, v9, "void CFCharacterSetRemoveCharactersInString(CFMutableCharacterSetRef, CFStringRef)");
      if (dyld_program_sdk_at_least())
      {
        CFCharacterSetRemoveCharactersInString_cold_2();
      }
    }

    CFCharacterSetRemoveCharactersInString_cold_1(theSet + 1, theSet, theString);
  }
}

uint64_t _CFURLIsPromiseName(const __CFString *a1)
{
  if (!a1 || CFStringGetLength(a1) < 1 || CFStringGetCharacterAtIndex(a1, 0) != 46)
  {
    return 0;
  }

  return CFStringHasSuffix(a1, @".icloud");
}

void CFURLSetTemporaryResourcePropertyForKey(CFURLRef url, CFStringRef key, CFTypeRef propertyValue)
{
  v11[1] = *MEMORY[0x1E69E9840];
  HIBYTE(v11[0]) = 0;
  if (_CFURLHasFileURLScheme(url, v11 + 7))
  {
    __CFURLResourceInfoPtr(url);
    _FSURLSetResourcePropertyForKey();
  }

  else if (!HIBYTE(v11[0]))
  {
    CFLog(4, @"CFURLSetTemporaryResourcePropertyForKey failed because it was passed a URL which has no scheme", v4, v5, v6, v7, v8, v9, v11[0]);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void CFCharacterSetRemoveCharactersInString_cold_1(unint64_t *a1, uint64_t a2, CFStringRef theString)
{
  v87 = *MEMORY[0x1E69E9840];
  v9 = atomic_load(a1);
  if ((v9 & 0x70) == 0)
  {
    v10 = atomic_load(a1);
    if ((v10 & 1) == 0)
    {
      v11 = atomic_load(a1);
      if ((v11 & 8) == 0 && CFCharacterSetGetPredefined(*(a2 + 24)) == a2)
      {
        goto LABEL_87;
      }
    }
  }

  v12 = *(a2 + 40);
  if (!v12 || !*(v12 + 8) && !*(v12 + 13))
  {
    OUTLINED_FUNCTION_5();
    switch(v13)
    {
      case 0:
      case 1:
        if (*(a2 + 32))
        {
          goto LABEL_13;
        }

        break;
      case 2:
      case 3:
        if (*(a2 + 24))
        {
          goto LABEL_13;
        }

        break;
      default:
        goto LABEL_13;
    }

    v14 = atomic_load(a1);
    if ((v14 & 8) == 0)
    {
      goto LABEL_87;
    }
  }

LABEL_13:
  Length = CFStringGetLength(theString);
  if (!Length)
  {
    goto LABEL_87;
  }

  v16 = Length;
  v17 = atomic_load(a1);
  if ((v17 & 8) == 0)
  {
    goto LABEL_26;
  }

  v18 = *(a2 + 40);
  if (v18 && (*(v18 + 8) || *(v18 + 13)))
  {
LABEL_22:
    v21 = atomic_load(a1);
    v20 = (v21 & 0x70) == 0x20 ? *(a2 + 32) : 64;
  }

  else
  {
    OUTLINED_FUNCTION_5();
    switch(v19)
    {
      case 0:
      case 1:
        if (*(a2 + 32))
        {
          goto LABEL_22;
        }

        break;
      case 2:
      case 3:
        if (*(a2 + 24))
        {
          goto LABEL_22;
        }

        break;
      default:
        goto LABEL_22;
    }

    v20 = 0;
  }

  v22 = v20 + v16;
  if (v20 + v16 > 63)
  {
LABEL_26:
    __CFCSetMakeBitmap(a2);
    OUTLINED_FUNCTION_13();
    theStringa = theString;
    v83 = 0;
    v84 = v16;
    CharactersPtr = CFStringGetCharactersPtr(theString);
    CStringPtr = 0;
    v81 = CharactersPtr;
    if (!CharactersPtr)
    {
      CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
    }

    v63 = theString;
    v85 = 0;
    v86 = 0;
    v82 = CStringPtr;
    if (v16 >= 1)
    {
      OUTLINED_FUNCTION_7();
      while (1)
      {
        if (v4 >= 4)
        {
          v26 = v5;
        }

        else
        {
          v26 = v4;
        }

        if (v81)
        {
          v27 = v81 + 2 * v83;
        }

        else
        {
          if (v82)
          {
            v28 = *(v82 + v83 + v4);
            goto LABEL_38;
          }

          v30 = v85;
          if (v86 <= v4 || v85 > v4)
          {
            OUTLINED_FUNCTION_2_0(v26, v62, v63, v64, v65, v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, theStringa, v81, v82, v83, v84, v85, v86);
            v25 = &v64;
            v30 = v85;
          }

          v27 = &v25[-v30];
        }

        v28 = *(v27 + 2 * v4);
LABEL_38:
        if ((v28 & 0xF800 | 0x400) == 0xDC00)
        {
          v3 = 1;
        }

        else
        {
          *(*(a2 + 24) + (v28 >> 3)) &= ~(1 << (v28 & 7));
        }

        OUTLINED_FUNCTION_15();
        if (v29)
        {
          goto LABEL_51;
        }
      }
    }

    v3 = 0;
LABEL_51:
    OUTLINED_FUNCTION_8();
    do
    {
      OUTLINED_FUNCTION_4(v32);
    }

    while (!v29);
    OUTLINED_FUNCTION_9();
    if (v29)
    {
      __CFCheckForExpandedSet(a2, v33, v34, v35, v36, v37, v38, v39);
    }

    if (v3)
    {
      __CFApplySurrogatesInString(a2, v63, CFCharacterSetRemoveCharactersInRange);
    }

    goto LABEL_87;
  }

  v40 = *(a2 + 24);
  if (v40)
  {
    v41 = (v40 + 2 * *(a2 + 32));
  }

  else
  {
    v42 = CFGetAllocator(a2);
    v41 = OUTLINED_FUNCTION_3(v42);
  }

  v88.location = 0;
  v88.length = v16;
  CFStringGetCharacters(theString, v88, v41);
  if (v16 < 2)
  {
    v43 = 0;
  }

  else
  {
    v43 = 0;
    v44 = &v41[v16];
    v45 = -2 - v41;
    v46 = v41;
    do
    {
      if ((*v46 & 0xF800 | 0x400) == 0xDC00)
      {
        memmove(v46, v46 + 1, (v44-- + v45) >> 1);
        v43 = 1;
      }

      ++v46;
      v45 -= 2;
    }

    while (v46 < v44);
    v22 = v20 + v44 - v41;
  }

  if (!*(a2 + 24))
  {
    OUTLINED_FUNCTION_8();
    do
    {
      OUTLINED_FUNCTION_17(v47);
    }

    while (!v29);
    *(a2 + 24) = v41;
  }

  *(a2 + 32) = v22;
  OUTLINED_FUNCTION_0_1();
  qsort(v48, v22, 2uLL, v49);
  v50 = *(a2 + 32);
  if (v50 >= 2)
  {
    OUTLINED_FUNCTION_16();
    do
    {
      OUTLINED_FUNCTION_10(v51);
      if (!v29)
      {
        ++v51;
        *(v52 + 2 * v51) = v54;
      }
    }

    while (v53 != 1);
    v50 = v51 + 1;
  }

  *(a2 + 32) = v50;
  OUTLINED_FUNCTION_8();
  do
  {
    OUTLINED_FUNCTION_4(v55);
  }

  while (!v29);
  if ((v43 & 1) == 0)
  {
LABEL_87:
    v61 = *MEMORY[0x1E69E9840];
    OUTLINED_FUNCTION_12();
    return;
  }

  v56 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_12();

  __CFApplySurrogatesInString(v57, v58, v59);
}

void boundPairWriteSchedule(int a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = *(a4 + 64);
    if (v6)
    {
      CFRelease(v6);
    }

    if (cf)
    {
      v7 = CFRetain(cf);
    }

    else
    {
      v7 = 0;
    }

    *(a4 + 64) = v7;
    ++*(a4 + 52);
  }
}

uint64_t _NSIsNSTimeZone(uint64_t a1)
{
  if (!a1)
  {
    return a1 & 1;
  }

  v1 = a1;
  MethodImplementation = object_getMethodImplementation();
  if (MethodImplementation == MEMORY[0x1E69E58E8])
  {
    objc_opt_class();
    LOBYTE(a1) = objc_opt_isKindOfClass();
    return a1 & 1;
  }

  return MethodImplementation(v1, sel_isNSTimeZone__);
}

uint64_t boundPairWriteOpen(char *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a4 + 52))
  {
    CFWriteStreamSignalEvent(a1, 1uLL, 0, a4, a5, a6, a7, a8);
    CFWriteStreamSignalEvent(a1, 4uLL, 0, v11, v12, v13, v14, v15);
    _wakeWriteStreamScheduledRunLoops();
  }

  *(a2 + 8) = 0;
  *a3 = 1;
  return 1;
}

void _CFStreamSignalEvent(char *cf, unint64_t a2, _OWORD *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = a4;
  v10 = *(cf + 2);
  v11 = v10 & 0x1F;
  if ((v10 & 0x1F) == 0)
  {
    CFLog(3, @"Stream %p is sending an event before being opened", a3, a4, a5, a6, a7, a8, cf);
    goto LABEL_7;
  }

  if ((v10 & 0x1E) == 6)
  {
LABEL_7:
    v13 = 0;
    goto LABEL_8;
  }

  v13 = a2;
  if (v11 == 1)
  {
    if (a2)
    {
      v10 = v10 & 0xFFFFFFE0 | 2;
      *(cf + 2) = v10;
    }

    goto LABEL_22;
  }

  if (v11 != 5)
  {
    v13 = a2 & 0xFFFFFFFFFFFFFFFELL;
LABEL_22:
    if (v11 <= 4 && (v13 & 0x10) != 0 && (v10 & 0x1E) != 6)
    {
      *(cf + 2) = v10 & 0xFFFFFFE0 | 5;
    }

    goto LABEL_30;
  }

  v13 = a2 & 8;
LABEL_30:
  if ((v13 & 8) != 0)
  {
    if (**(cf + 6) > 1)
    {
      CFRetain(a3);
      v25 = *(cf + 3);
      if (v25)
      {
        CFRelease(v25);
      }

      *(cf + 3) = a3;
    }

    else
    {
      Typed = *(cf + 3);
      if (!Typed)
      {
        v24 = CFGetAllocator(cf);
        Typed = CFAllocatorAllocateTyped(v24, 16, 0x1000040D9A13B51, 0);
        *(cf + 3) = Typed;
      }

      *Typed = *a3;
    }

    v26 = *(cf + 2);
    if ((v26 & 0x1F) != 7)
    {
      *(cf + 2) = v26 & 0xFFFFFFE0 | 7;
    }
  }

LABEL_8:
  v14 = *(cf + 4);
  if (v14 && (*(v14 + 48) & v13) != 0 && (*(v14 + 72) & v13) == 0)
  {
    pthread_mutex_lock((cf + 56));
    v15 = *(cf + 4);
    if (v15 && (v16 = *(v15 + 56)) != 0)
    {
      CFRetain(*(v15 + 56));
      pthread_mutex_unlock((cf + 56));
      *(*(cf + 4) + 72) |= v13;
      if (v8 && (cf[16] & 0x40) == 0 && (Current = CFRunLoopGetCurrent(), (v18 = CFRunLoopCopyCurrentMode(Current)) != 0) && (v19 = v18, v20 = CFRunLoopContainsSource(Current, v16, v18), CFRelease(v19), v20))
      {
        _cfstream_solo_signalEventSync(cf);
      }

      else
      {
        CFRunLoopSourceSignal(v16);
        _wakeUpRunLoop(cf);
      }

      CFRelease(v16);
    }

    else
    {

      pthread_mutex_unlock((cf + 56));
    }
  }
}

const __CFString *_CFURLCopyUserName(uint64_t a1, int a2)
{
  while (1)
  {
    if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
    {
      _CFURLCopyUserName_cold_1();
    }

    if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
    {
      break;
    }

    if (!a1)
    {
      _CFURLCopyUserName_cold_2();
    }

    if (CF_IS_OBJC(0x1DuLL, a1))
    {
      v9 = [a1 user];
      v6 = v9;
      if (v9)
      {
        CFRetain(v9);
      }

      return v6;
    }

    v4 = _retainedComponentString(a1, 2, 1, a2);
    if (v4)
    {
      return v4;
    }

    if (*(a1 + 32))
    {
      v5 = *(a1 + 16);
      a1 = *(a1 + 32);
      if ((v5 & 0x1F) == 0)
      {
        continue;
      }
    }

    return 0;
  }

  if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, a1))
  {
    a1 = [a1 _cfurl];
  }

  v7 = [a1 _user:a2 == 0];

  return v7;
}

void _wakeWriteStreamScheduledRunLoops()
{
  v0 = _CFWriteStreamCopyRunLoopsAndModes();
  if (v0)
  {
    v1 = v0;
    _wakeRunLoops(v0);

    CFRelease(v1);
  }
}

const __CFString *_CFURLCopyPassword(unint64_t a1, int a2)
{
  while (1)
  {
    if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
    {
      _CFURLCopyPassword_cold_1();
    }

    if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
    {
      break;
    }

    if (!a1)
    {
      _CFURLCopyPassword_cold_2();
    }

    if (CF_IS_OBJC(0x1DuLL, a1))
    {
      v9 = [a1 password];
      v6 = v9;
      if (v9)
      {
        CFRetain(v9);
      }

      return v6;
    }

    v4 = _retainedComponentString(a1, 4, 1, a2);
    if (v4)
    {
      return v4;
    }

    if (*(a1 + 32))
    {
      v5 = *(a1 + 16);
      a1 = *(a1 + 32);
      if ((v5 & 0x1F) == 0)
      {
        continue;
      }
    }

    return 0;
  }

  v7 = [a1 _password:a2 == 0];

  return v7;
}

uint64_t _CFRelease_cold_4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (__CFObjectAllocRecordAllocationFunction)
  {
    return OUTLINED_FUNCTION_0_8(29, result, 0, 0, a5, __CFObjectAllocRecordAllocationFunction);
  }

  return result;
}

void _wakeRunLoops(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i < v3; i = v6 + 1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v6 = i + 1;
      v7 = CFArrayGetValueAtIndex(a1, v6);
      v8 = CFRunLoopCopyCurrentMode(ValueAtIndex);
      if (!v8)
      {
        break;
      }

      v9 = v8;
      if (CFEqual(v8, v7))
      {
        CFRunLoopWakeUp(ValueAtIndex);
      }

      CFRelease(v9);
    }
  }
}

Boolean CFRunLoopIsWaiting(CFRunLoopRef rl)
{
  __CFCheckCFInfoPACSignature(rl);
  v2 = _CFGetNonObjCTypeID(rl);
  if (v2 != 43)
  {
    _CFAssertMismatchedTypeID(0x2BuLL, v2);
  }

  v3 = atomic_load(__CFMainThreadHasExited);
  if (v3)
  {
    CFRunLoopIsWaiting_cold_1(rl);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v4 = atomic_load(rl + 1);
  return (v4 >> 1) & 1;
}

void _wakeUpRunLoop(uint64_t a1)
{
  v1 = _CFStreamCopyRunLoopsAndModes(a1);
  if (!v1)
  {
    return;
  }

  v2 = v1;
  Count = CFArrayGetCount(v1);
  if (Count == 2)
  {
    goto LABEL_3;
  }

  v5 = Count;
  if (Count < 3)
  {
    goto LABEL_23;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v2, 0);
  if (ValueAtIndex)
  {
    v4 = ValueAtIndex;
    v7 = 4;
    do
    {
      v8 = CFArrayGetValueAtIndex(v2, v7 - 2);
      v9 = v8 == v4 && v7 < v5;
      v7 += 2;
    }

    while (v9);
    if (v8 != v4)
    {
      v4 = 0;
    }

    if (v4)
    {
      goto LABEL_4;
    }
  }

  v10 = 0;
  while (1)
  {
    v4 = CFArrayGetValueAtIndex(v2, v10);
    v11 = CFRunLoopCopyCurrentMode(v4);
    if (v11)
    {
      break;
    }

LABEL_21:
    v10 += 2;
    if (v10 >= v5)
    {
      goto LABEL_3;
    }
  }

  v12 = v11;
  v13 = CFArrayGetValueAtIndex(v2, v10 + 1);
  if (!CFEqual(v12, v13) || !CFRunLoopIsWaiting(v4))
  {
    CFRelease(v12);
    goto LABEL_21;
  }

  CFRelease(v12);
  if (v4)
  {
LABEL_4:
    CFRunLoopWakeUp(v4);
    goto LABEL_23;
  }

LABEL_3:
  v4 = CFArrayGetValueAtIndex(v2, 0);
  if (v4)
  {
    goto LABEL_4;
  }

LABEL_23:

  CFRelease(v2);
}

void CFRunLoopSourceInvalidate(CFRunLoopSourceRef source)
{
  context[2] = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(source);
  v2 = _CFGetNonObjCTypeID(source);
  if (v2 != 46)
  {
    _CFAssertMismatchedTypeID(0x2EuLL, v2);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  pthread_mutex_lock((source + 16));
  CFRetain(source);
  v3 = atomic_load(source + 1);
  if ((v3 & 8) != 0)
  {
    v4 = *(source + 12);
    v5 = atomic_load(source + 1);
    v6 = v5;
    do
    {
      atomic_compare_exchange_strong(source + 1, &v6, v5 & 0xFFFFFFFFFFFFFFF7);
      v7 = v6 == v5;
      v5 = v6;
    }

    while (!v7);
    atomic_store(0, source + 11);
    if (v4)
    {
      *(source + 12) = 0;
      pthread_mutex_unlock((source + 16));
      context[0] = source;
      context[1] = 0;
      CFBagApplyFunction(v4, __CFRunLoopSourceRemoveFromRunLoop, context);
      CFRelease(v4);
      pthread_mutex_lock((source + 16));
    }
  }

  pthread_mutex_unlock((source + 16));
  CFRelease(source);
  v8 = *MEMORY[0x1E69E9840];
}

void CFBagApplyFunction(CFBagRef theBag, CFBagApplierFunction applier, void *context)
{
  v4[6] = *MEMORY[0x1E69E9840];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __CFBagApplyFunction_block_invoke;
  v4[3] = &__block_descriptor_48_e15_C40__0___qQQQ_8l;
  v4[4] = applier;
  v4[5] = context;
  CFBasicHashApply(theBag, v4);
  v3 = *MEMORY[0x1E69E9840];
}

void _cfstream_shared_signalEventSync(const void *a1)
{
  v2 = CFGetTypeID(a1);
  if (v2 == CFArrayGetTypeID())
  {
    os_unfair_lock_lock(&sSourceLock);
    Count = CFArrayGetCount(a1);
    if (Count < 1)
    {
      v10 = 0;
      v12 = 0;
      v13 = 0;
    }

    else
    {
      v10 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(a1, v10);
        if (!*(ValueAtIndex + 136))
        {
          v12 = ValueAtIndex;
          if (*(ValueAtIndex[4] + 72))
          {
            break;
          }
        }

        if (Count == ++v10)
        {

          os_unfair_lock_unlock(&sSourceLock);
          return;
        }
      }

      CFRetain(ValueAtIndex);
      v13 = *(v12 + 128);
      if (v13)
      {
        dispatch_retain(*(v12 + 128));
      }

      *(v12 + 136) = 1;
    }

    if (v10 < Count)
    {
      while (1)
      {
        v14 = CFArrayGetValueAtIndex(a1, v10);
        if (v14 != v12)
        {
          v15 = v14;
          if (!v14[136])
          {
            if (*(*(v14 + 4) + 72))
            {
              break;
            }
          }
        }

        if (Count == ++v10)
        {
          goto LABEL_21;
        }
      }

      pthread_mutex_lock((v14 + 56));
      v16 = *(v15 + 4);
      if (v16 && (v17 = *(v16 + 56)) != 0)
      {
        CFRetain(*(v16 + 56));
        pthread_mutex_unlock((v15 + 56));
        CFRunLoopSourceSignal(v17);
        CFRelease(v17);
      }

      else
      {
        pthread_mutex_unlock((v15 + 56));
      }
    }

LABEL_21:
    os_unfair_lock_unlock(&sSourceLock);
    if (v12)
    {
      if (v13)
      {
        _signalEventQueue(v13, v12);
        dispatch_release(v13);
      }

      else
      {
        _signalEventSync(v12);
      }

      CFRelease(v12);
    }
  }

  else
  {
    CFLog(3, @"Expected an array for %p", v3, v4, v5, v6, v7, v8, a1);
  }
}

void _signalEventQueue(NSObject *a1, CFTypeRef cf)
{
  v5[5] = *MEMORY[0x1E69E9840];
  CFRetain(cf);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___signalEventQueue_block_invoke;
  v5[3] = &__block_descriptor_40_e5_v8__0l;
  v5[4] = cf;
  dispatch_async(a1, v5);
  v4 = *MEMORY[0x1E69E9840];
}

void __CFRunLoopSourceRemoveFromRunLoop(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 8) != a1)
  {
    v4 = *a2;
    pthread_mutex_lock((a1 + 16));
    v5 = CFRunLoopCopyAllModes(a1);
    Count = CFArrayGetCount(v5);
    if (Count)
    {
      v7 = Count - 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v7);
        CFRunLoopRemoveSource(a1, v4, ValueAtIndex);
        --v7;
      }

      while (v7 != -1);
    }

    CFRunLoopRemoveSource(a1, v4, @"kCFRunLoopCommonModes");
    pthread_mutex_unlock((a1 + 16));
    CFRelease(v5);
    *(a2 + 8) = a1;
  }
}

Boolean CFReadStreamSetClient(CFReadStreamRef stream, CFOptionFlags streamEvents, CFReadStreamClientCallBack clientCB, CFStreamClientContext *clientContext)
{
  if (CF_IS_OBJC(0x26uLL, stream))
  {
    if (objc_opt_respondsToSelector())
    {
      return [(__CFReadStream *)stream _setCFClientFlags:streamEvents callback:clientCB context:clientContext];
    }

    else
    {
      if (clientCB)
      {
        v9 = [[_CFStreamDelegate alloc] initWithStreamEvents:streamEvents callback:clientCB context:clientContext];
        [(__CFReadStream *)stream setDelegate:v9];
        v10 = objc_opt_class();
        objc_setAssociatedObject(stream, v10, v9, 0x301);
      }

      else
      {
        [(__CFReadStream *)stream setDelegate:0];
      }

      return 1;
    }
  }

  else
  {

    return _CFStreamSetClient(stream, streamEvents & 0xFFFFFFFFFFFFFFFBLL, clientCB, clientContext);
  }
}

void _legacyStreamRunLoop_workThread(dispatch_semaphore_t *a1)
{
  pthread_setname_np("com.apple.CFStream.LegacyThread");
  sLegacyRL = CFRunLoopGetCurrent();
  v2 = CFStringCreateWithFormat(0, 0, @"<< CFStreamLegacySource for Runloop %p >>", sLegacyRL);
  context.version = 0;
  context.info = v2;
  context.retain = CFRetain;
  context.release = CFRelease;
  context.copyDescription = CFCopyDescription;
  context.equal = CFEqual;
  context.schedule = 0;
  context.cancel = 0;
  context.hash = CFHash;
  context.perform = _perform;
  v3 = CFRunLoopSourceCreate(0, 0, &context);
  CFRelease(v2);
  CFRunLoopAddSource(sLegacyRL, v3, @"kCFRunLoopDefaultMode");
  CFRelease(v3);
  dispatch_semaphore_signal(*a1);
  while (1)
  {
    CFRunLoopRunInMode(@"kCFRunLoopDefaultMode", 1.0e30, 1u);
  }
}

void ___signalEventQueue_block_invoke(uint64_t a1)
{
  _signalEventSync(*(a1 + 32));
  v2 = *(a1 + 32);

  CFRelease(v2);
}

uint64_t __CFBagApplyFunction_block_invoke(uint64_t a1, uint64_t a2)
{
  for (i = *(a2 + 24); i; --i)
  {
    (*(a1 + 32))(*(a2 + 16), *(a1 + 40));
  }

  return 1;
}

uint64_t _signalEventSync(uint64_t a1)
{
  *(a1 + 16) |= 0x40uLL;
  pthread_mutex_lock((a1 + 56));
  v2 = *(a1 + 32);
  if (v2 && (v3 = v2[9]) != 0)
  {
    v4 = v2[5];
    v6 = v2[1];
    v5 = v2[2];
    if (v5)
    {
      v6 = v5(v2[1]);
      v2 = *(a1 + 32);
      v7 = v2[3];
      v3 = v2[9];
    }

    else
    {
      v7 = 0;
    }

    v2[9] = 0;
    *(a1 + 136) = 0;
    result = pthread_mutex_unlock((a1 + 56));
    if (v3)
    {
      for (i = 1; i <= v3; i *= 2)
      {
        pthread_mutex_lock((a1 + 56));
        if ((i & v3) != 0 && (v10 = *(a1 + 32)) != 0)
        {
          v11 = *(v10 + 48) & i;
          result = pthread_mutex_unlock((a1 + 56));
          if (v11)
          {
            result = v4(a1, i, v6);
          }
        }

        else
        {
          result = pthread_mutex_unlock((a1 + 56));
        }
      }
    }

    if (v7)
    {
      result = v7(v6);
    }
  }

  else
  {
    *(a1 + 136) = 0;
    result = pthread_mutex_unlock((a1 + 56));
  }

  *(a1 + 16) &= ~0x40uLL;
  return result;
}

double __CFRunLoopSourceDeallocate(uint64_t a1)
{
  CFRunLoopSourceInvalidate(a1);
  v2 = *(a1 + 128);
  if (v2)
  {
    v2(*(a1 + 112));
  }

  pthread_mutex_destroy((a1 + 16));
  result = 0.0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0;
  return result;
}

uint64_t CFUniCharDecomposeCharacter(unsigned int a1, unsigned int *a2, uint64_t a3)
{
  if (a1 - 44032 > 0x2BA4)
  {
    return __CFUniCharRecursivelyDecomposeCharacter(a1, a2, a3);
  }

  v3 = 2;
  if ((a1 + 21504) % 0x1Cu)
  {
    v3 = 3;
  }

  if (v3 > a3)
  {
    return 0;
  }

  *a2 = ((28533 * (a1 + 21504)) >> 24) | 0x1100;
  a2[1] = (a1 + 21504) % 0x24Cu / 0x1C + 4449;
  if (!((a1 + 21504) % 0x1Cu))
  {
    return 2;
  }

  a2[2] = ((a1 + 21504) % 0x1Cu + 4519);
  return 3;
}

void _outputStreamCallbackFunc(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 retainedDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 stream:a1 handleEvent:a2];
  }
}

uint64_t __CFUniCharRecursivelyDecomposeCharacter(unsigned int a1, _DWORD *a2, uint64_t a3)
{
  v4 = a2;
  v20 = *MEMORY[0x1E69E9840];
  if (a1 - 195102 < 0xFFFD06A2)
  {
LABEL_8:
    v8 = 0;
    goto LABEL_9;
  }

  v5 = &__CFUniCharDecompositionTable;
  v6 = &__CFUniCharDecompositionTable + 16624;
  while (1)
  {
    v7 = &v5[8 * ((v6 - v5) >> 4)];
    if (*v7 <= a1)
    {
      break;
    }

    v6 = v7 - 8;
LABEL_7:
    if (v5 > v6)
    {
      goto LABEL_8;
    }
  }

  if (*v7 < a1)
  {
    v5 = v7 + 8;
    goto LABEL_7;
  }

  v8 = *(v7 + 1);
LABEL_9:
  v9 = HIBYTE(v8) & 0x1F;
  v19 = v8 & 0xFFFFFF;
  v10 = (&__CFUniCharMultipleDecompositionTable + 4 * (v8 & 0xFFFFFF));
  v11 = &v19;
  if ((v8 & 0x1E000000) != 0)
  {
    v11 = (&__CFUniCharMultipleDecompositionTable + 4 * (v8 & 0xFFFFFF));
  }

  v12 = a3 - v9;
  if (a3 >= v9)
  {
    if ((v8 & 0x40000000) != 0)
    {
      v14 = __CFUniCharRecursivelyDecomposeCharacter(*v11, a2, v12);
      if (v14)
      {
        v15 = v14 + v9 - 1 <= a3;
      }

      else
      {
        v15 = 0;
      }

      if (!v15)
      {
        goto LABEL_12;
      }

      v16 = &v19;
      if (v9 > 1)
      {
        v16 = v10;
      }

      v11 = v16 + 1;
      v4 += v14;
      --v9;
    }

    else
    {
      v14 = 0;
    }

    for (result = v14 + v9; v9; --v9)
    {
      v17 = *v11++;
      *v4++ = v17;
    }
  }

  else
  {
LABEL_12:
    result = 0;
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

CFDictionaryRef _CFURLCopyPropertyListRepresentation(unint64_t *a1)
{
  keys[4] = *MEMORY[0x1E69E9840];
  *values = 0u;
  v17 = 0u;
  v2 = CFGetAllocator(a1);
  v3 = CFURLGetBaseURL(a1);
  keys[0] = @"_CFURLStringType";
  keys[1] = @"_CFURLString";
  keys[2] = @"_CFURLBaseStringType";
  keys[3] = @"_CFURLBaseURLString";
  valuePtr = 15;
  if (CF_IS_OBJC(0x1DuLL, a1))
  {
    values[0] = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
    v4 = CFURLGetString(a1);
  }

  else
  {
    values[0] = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
    v5 = atomic_load(a1 + 3);
    v4 = CFRetain(v5);
  }

  values[1] = v4;
  if (v3)
  {
    if (CF_IS_OBJC(0x1DuLL, v3))
    {
      valuePtr = 15;
      *&v17 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
      v6 = CFURLGetString(v3);
    }

    else
    {
      valuePtr = 15;
      *&v17 = CFNumberCreate(v2, kCFNumberSInt32Type, &valuePtr);
      v8 = atomic_load(v3 + 3);
      v6 = CFRetain(v8);
    }

    *(&v17 + 1) = v6;
    v7 = 4;
  }

  else
  {
    v7 = 2;
  }

  v9 = CFGetAllocator(a1);
  v10 = CFDictionaryCreate(v9, keys, values, v7, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v11 = 0;
  v12 = 8 * v7;
  do
  {
    CFRelease(values[v11 / 8]);
    v11 += 8;
  }

  while (v12 != v11);
  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

void ___legacyStreamRunLoop_block_invoke()
{
  v5 = *MEMORY[0x1E69E9840];
  sLegacyRL = 0;
  dsema = dispatch_semaphore_create(0);
  memset(&__attr, 0, sizeof(__attr));
  pthread_attr_init(&__attr);
  pthread_attr_setdetachstate(&__attr, 2);
  v0 = qos_class_main();
  pthread_attr_set_qos_class_np(&__attr, v0, 0);
  v2 = 0;
  pthread_create(&v2, &__attr, _legacyStreamRunLoop_workThread, &dsema);
  pthread_attr_destroy(&__attr);
  dispatch_semaphore_wait(dsema, 0xFFFFFFFFFFFFFFFFLL);
  dispatch_release(dsema);
  v1 = *MEMORY[0x1E69E9840];
}

id _NSObjectLoadWeakRetained(id *a1, _BYTE *a2)
{
  if (*a2)
  {
    return *a1;
  }

  else
  {
    return objc_loadWeakRetained(a1);
  }
}

uint64_t _CFURLCopyResourcePropertyForKeyFromCache(const __CFURL *a1, uint64_t a2, void *a3)
{
  v13[1] = *MEMORY[0x1E69E9840];
  HIBYTE(v13[0]) = 0;
  if (_CFURLHasFileURLScheme(a1, v13 + 7))
  {
    __CFURLResourceInfoPtr(a1);
    result = _FSURLCopyResourcePropertyForKeyFromCache();
  }

  else
  {
    if (!HIBYTE(v13[0]))
    {
      CFLog(4, @"_CFURLCopyResourcePropertyForKeyFromCache failed because it was passed a URL which has no scheme", v5, v6, v7, v8, v9, v10, v13[0]);
    }

    *a3 = 0;
    result = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t boundPairWrite(char *a1, char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a3 > 0)
  {
    v10 = a3;
    pthread_mutex_lock((a5 + 104));
    if (!a5)
    {
      goto LABEL_5;
    }

LABEL_3:
    if (!*(a5 + 48) && _cbCanWrite(*(a5 + 96)))
    {
      if (!*(a5 + 2))
      {
        v22 = cbWrite(*(a5 + 96), a2, v10);
        goto LABEL_20;
      }
    }

    else
    {
LABEL_5:
      while (!*(a5 + 2))
      {
        if (*(a5 + 4))
        {
          _CFReadStreamSignalEventDelayed(*(a5 + 32), 2uLL, 0, v12, v13, v14, v15, v16);
          v17 = *(a5 + 32);
          _wakeReadStreamScheduledRunLoops();
        }

        Current = CFRunLoopGetCurrent();
        CFRunLoopAddSource(Current, *(a5 + 56), *(a5 + 72));
        v19 = *(a5 + 64);
        if (v19)
        {
          CFRelease(v19);
        }

        if (Current)
        {
          v20 = CFRetain(Current);
        }

        else
        {
          v20 = 0;
        }

        *(a5 + 64) = v20;
        *(a5 + 49) = 1;
        pthread_mutex_unlock((a5 + 104));
        CFRunLoopRunInMode(*(a5 + 72), 1.0e20, 1u);
        pthread_mutex_lock((a5 + 104));
        *(a5 + 49) = 0;
        CFRunLoopRemoveSource(Current, *(a5 + 56), *(a5 + 72));
        if (a5)
        {
          goto LABEL_3;
        }
      }
    }

    v22 = -1;
LABEL_20:
    if (*(a5 + 1))
    {
      CFRunLoopSourceSignal(*(a5 + 8));
      v23 = *(a5 + 16);
      if (v23)
      {
        CFRunLoopWakeUp(v23);
      }
    }

    if (*(a5 + 4))
    {
      _CFReadStreamSignalEventDelayed(*(a5 + 32), 2uLL, 0, v12, v13, v14, v15, v16);
      v24 = *(a5 + 32);
      _wakeReadStreamScheduledRunLoops();
    }

    if (!*(a5 + 52))
    {
      goto LABEL_32;
    }

    if (*(a5 + 48) || !_cbCanWrite(*(a5 + 96)))
    {
      if (!*(a5 + 2))
      {
LABEL_32:
        pthread_mutex_unlock((a5 + 104));
        return v22;
      }

      v25 = 16;
    }

    else
    {
      v25 = 4;
    }

    CFWriteStreamSignalEvent(a1, v25, 0, v12, v13, v14, v15, v16);
    _wakeWriteStreamScheduledRunLoops();
    goto LABEL_32;
  }

  *(a4 + 8) = 22;
  *a4 = 1;
  if (*(a5 + 52))
  {
    CFWriteStreamSignalEvent(a1, 8uLL, a4, a4, a5, a6, a7, a8);
    v21 = *(a5 + 80);
    _wakeWriteStreamScheduledRunLoops();
  }

  return -1;
}

void fileSchedule(void *a1, __CFRunLoop *a2, const __CFString *a3, uint64_t a4)
{
  v8 = CFGetTypeID(a1);
  v9 = v8 == CFReadStreamGetTypeID();
  v10 = v9;
  if (v9)
  {
    Status = CFReadStreamGetStatus(a1);
  }

  else
  {
    Status = CFWriteStreamGetStatus(a1);
  }

  if ((*(a4 + 8) & 0x80000000) == 0 || Status == kCFStreamStatusNotOpen)
  {
    Mutable = *(a4 + 16);
    if (Status)
    {
      if (!Mutable)
      {
        constructCFFD(a4, v10, a1);
      }

      v13 = CFGetAllocator(a1);
      RunLoopSource = CFFileDescriptorCreateRunLoopSource(v13, *(a4 + 16), 0);
      CFRunLoopAddSource(a2, RunLoopSource, a3);

      CFRelease(RunLoopSource);
    }

    else
    {
      if (!Mutable)
      {
        v15 = CFGetAllocator(a1);
        Mutable = CFArrayCreateMutable(v15, 0, &kCFTypeArrayCallBacks);
        *(a4 + 16) = Mutable;
      }

      CFArrayAppendValue(Mutable, a2);
      v16 = *(a4 + 16);

      CFArrayAppendValue(v16, a3);
    }
  }
}

size_t cbWrite(uint64_t a1, char *a2, unsigned int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 >= 1)
  {
    pthread_mutex_lock((a1 + 40));
    v7 = *(a1 + 36);
    if (v7)
    {
      if (v7 >= a3)
      {
        v3 = a3;
      }

      else
      {
        v3 = v7;
      }

      v9 = *(a1 + 8);
      v8 = *(a1 + 16);
      if (v8 == v9)
      {
        if (v7 != *(a1 + 32))
        {
          cbWrite_cold_3();
        }

        v10 = *(a1 + 24);
        v11 = v10 - v8;
        v12 = v3 - (v10 - v8);
        if (v3 > v10 - v8)
        {
          __cbWrite(a1, v8, a2, v10 - v8);
          v13 = *(a1 + 36);
          if (v12 >= v13)
          {
            v14 = v13;
          }

          else
          {
            v14 = v12;
          }

          __cbWrite(a1, *(a1 + 16), &a2[v11], v14);
          v3 = (v14 + v11);
          goto LABEL_27;
        }
      }

      else if (v8 >= v9)
      {
        v15 = *(a1 + 24) - v8;
        if (&v9[v15 - *a1] != v7)
        {
          cbWrite_cold_1();
        }

        v16 = v3 - v15;
        if (v3 > v15)
        {
          __cbWrite(a1, v8, a2, *(a1 + 24) - v8);
          v17 = *(a1 + 36);
          if (v16 >= v17)
          {
            v18 = v17;
          }

          else
          {
            v18 = v16;
          }

          __cbWrite(a1, *(a1 + 16), &a2[v15], v18);
          v3 = (v18 + v15);
          goto LABEL_27;
        }
      }

      else
      {
        if (v9 - v8 != v7)
        {
          cbWrite_cold_2();
        }

        if (v7 <= a3)
        {
          __cbWrite(a1, v8, a2, *(a1 + 36));
          v3 = v7;
LABEL_27:
          pthread_mutex_unlock((a1 + 40));
          return v3;
        }
      }

      __cbWrite(a1, v8, a2, v3);
      goto LABEL_27;
    }

    v3 = 0;
    goto LABEL_27;
  }

  return v3;
}

CFStreamStatus CFReadStreamGetStatus(CFReadStreamRef stream)
{
  if (CF_IS_OBJC(0x26uLL, stream))
  {

    return [(__CFReadStream *)stream streamStatus];
  }

  else
  {

    return _CFStreamGetStatus(stream);
  }
}

size_t __cbWrite(uint64_t *a1, void *__dst, void *__src, size_t __len)
{
  if (!__dst)
  {
    __cbWrite_cold_3();
  }

  if (!__src)
  {
    __cbWrite_cold_2();
  }

  if (__len <= 0)
  {
    __cbWrite_cold_1();
  }

  memmove(__dst, __src, __len);
  v6 = *(a1 + 8);
  *(a1 + 9) -= __len;
  v7 = a1[2] + __len;
  if (v7 == *a1 + v6)
  {
    v7 = *a1;
  }

  a1[2] = v7;
  return __len;
}

uint64_t constructCFFD(uint64_t a1, int a2, void *cf)
{
  v21 = *MEMORY[0x1E69E9840];
  v20.version = 0;
  v20.info = cf;
  v20.retain = _fs_retain;
  v20.release = _fs_release;
  v20.copyDescription = CFCopyDescription;
  v6 = CFGetAllocator(cf);
  v7 = CFFileDescriptorCreate(v6, *(a1 + 8), 0, fileCallBack, &v20);
  if (v7)
  {
    v8 = v7;
    if (a2)
    {
      v9 = 1;
    }

    else
    {
      v9 = 2;
    }

    CFFileDescriptorEnableCallBacks(v7, v9);
    v10 = *(a1 + 16);
    if (v10)
    {
      Count = CFArrayGetCount(v10);
      v12 = CFGetAllocator(cf);
      RunLoopSource = CFFileDescriptorCreateRunLoopSource(v12, v8, 0);
      if (Count >= 2)
      {
        v14 = 0;
        do
        {
          ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 16), v14);
          v16 = CFArrayGetValueAtIndex(*(a1 + 16), v14 + 1);
          CFRunLoopAddSource(ValueAtIndex, RunLoopSource, v16);
          v17 = v14 + 3;
          v14 += 2;
        }

        while (v17 < Count);
      }

      CFRelease(*(a1 + 16));
      CFRelease(RunLoopSource);
    }

    *(a1 + 16) = v8;
    result = 1;
  }

  else
  {
    result = *(a1 + 16);
    if (result)
    {
      CFRelease(result);
      result = 0;
      *(a1 + 16) = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void CFDateComponentsSetTimeZone(uint64_t a1, CFTypeRef cf)
{
  if (!a1)
  {
    CFDateComponentsSetTimeZone_cold_1();
  }

  v4 = *(a1 + 24);
  if (cf && v4)
  {
    if (CFEqual(v4, cf))
    {
      return;
    }

    v4 = *(a1 + 24);
    goto LABEL_7;
  }

  if (v4)
  {
LABEL_7:
    CFRelease(v4);
    *(a1 + 24) = 0;
  }

  if (cf)
  {
    *(a1 + 24) = CFRetain(cf);
    v5 = *(a1 + 16);
    if (v5)
    {

      CFCalendarSetTimeZone(v5, cf);
    }
  }
}

CFFileDescriptorRef CFFileDescriptorCreate(CFAllocatorRef allocator, CFFileDescriptorNativeDescriptor fd, Boolean closeOnInvalidate, CFFileDescriptorCallBack callout, const CFFileDescriptorContext *context)
{
  v29 = *MEMORY[0x1E69E9840];
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
    goto LABEL_27;
  }

  memset(&v28, 0, sizeof(v28));
  if (fstat(fd, &v28) < 0)
  {
    goto LABEL_27;
  }

  st_mode = v28.st_mode;
  if ((v28.st_mode & 0x180) != 0)
  {
    v11 = HIBYTE(v28.st_mode) & 1;
  }

  else
  {
    v11 = 1;
  }

  if (v11 == 1)
  {
    v12 = fcntl(fd, 67, 3);
    if ((st_mode & 0x80) == 0)
    {
LABEL_12:
      v13 = -1;
      goto LABEL_15;
    }
  }

  else
  {
    v12 = -1;
    if ((v28.st_mode & 0x80) == 0)
    {
      goto LABEL_12;
    }
  }

  v13 = fcntl(fd, 67, 3);
LABEL_15:
  if (v12 < 0)
  {
    v14 = v11;
  }

  else
  {
    v14 = 0;
  }

  if ((v14 & 1) != 0 || ((v13 < 0) & (st_mode >> 7)) != 0)
  {
    if ((v12 & 0x80000000) == 0)
    {
      close(v12);
    }

    if ((v13 & 0x80000000) == 0)
    {
      close(v13);
    }

LABEL_27:
    v16 = 0;
    goto LABEL_28;
  }

  v24 = 0;
  v25 = &v24;
  v26 = 0x2000000000;
  v27 = 0;
  v15 = __fdQueue();
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __CFFileDescriptorCreate_block_invoke;
  block[3] = &unk_1E6D7DBA0;
  v23 = closeOnInvalidate;
  v20 = fd;
  v21 = v12;
  v22 = v13;
  block[6] = callout;
  block[7] = context;
  block[4] = &v24;
  block[5] = allocator;
  dispatch_sync(v15, block);
  v16 = v25[3];
  if (!v16)
  {
    close(v12);
    close(v13);
    v16 = v25[3];
  }

  _Block_object_dispose(&v24, 8);
LABEL_28:
  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

void sub_183194BA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __fdQueue()
{
  if (!__fdQueue___fddq)
  {
    v0 = dispatch_queue_create("com.apple.CFFileDescriptor", 0);
    v1 = 0;
    atomic_compare_exchange_strong(&__fdQueue___fddq, &v1, v0);
    if (v1)
    {
      dispatch_release(v0);
    }
  }

  return __fdQueue___fddq;
}

CFLocaleIdentifier CFLocaleCreateLocaleIdentifierFromComponents(CFAllocatorRef allocator, CFDictionaryRef dictionary)
{
  v42 = *MEMORY[0x1E69E9840];
  if (dictionary)
  {
    v34 = allocator;
    Count = CFDictionaryGetCount(dictionary);
    v33[1] = v33;
    MEMORY[0x1EEE9AC00](Count, v4);
    v5 = (8 * Count + 15) & 0xFFFFFFFFFFFFFFF0;
    v6 = (v33 - v5);
    if ((8 * Count) >= 0x200)
    {
      v7 = 512;
    }

    else
    {
      v7 = 8 * Count;
    }

    bzero(v33 - v5, v7);
    MEMORY[0x1EEE9AC00](v8, v9);
    v10 = (v33 - v5);
    bzero(v10, v7);
    CFDictionaryGetKeysAndValues(dictionary, v10, v6);
    if (Count >= 1)
    {
      v11 = 0;
      v37 = 0;
      v38 = 0;
      v35 = 0;
      v36 = @"kCFLocaleCountryCodeKey";
      v33[0] = @"kCFLocaleVariantCodeKey";
      v12 = v10;
      v13 = Count;
      v14 = v6;
      while (!CFEqual(@"kCFLocaleLanguageCodeKey", *v12))
      {
        if (CFEqual(@"kCFLocaleScriptCodeKey", *v12))
        {
          v38 = __CStringFromString(*v14);
          goto LABEL_15;
        }

        if (CFEqual(v36, *v12))
        {
          v37 = __CStringFromString(*v14);
          goto LABEL_15;
        }

        if (CFEqual(v33[0], *v12))
        {
          v35 = __CStringFromString(*v14);
          goto LABEL_15;
        }

LABEL_16:
        ++v14;
        ++v12;
        if (!--v13)
        {
          goto LABEL_20;
        }
      }

      v11 = __CStringFromString(*v14);
LABEL_15:
      *v12 = 0;
      goto LABEL_16;
    }

    v37 = 0;
    v38 = 0;
    v35 = 0;
    v11 = 0;
LABEL_20:
    v40 = 0;
    v16 = "";
    v17 = "_";
    if (v11)
    {
      v18 = v11;
    }

    else
    {
      v18 = "";
    }

    v19 = v37;
    v20 = v38;
    if (v38)
    {
      v21 = "_";
    }

    else
    {
      v21 = "";
    }

    if (v38)
    {
      v22 = v38;
    }

    else
    {
      v22 = "";
    }

    v23 = v35;
    if (v37 | v35)
    {
      v24 = "_";
    }

    else
    {
      v24 = "";
    }

    if (v37)
    {
      v25 = v37;
    }

    else
    {
      v25 = "";
    }

    if (v35)
    {
      v16 = v35;
    }

    else
    {
      v17 = "";
    }

    asprintf(&v40, "%s%s%s%s%s%s%s", v18, v21, v22, v24, v25, v17, v16);
    __strlcpy_chk();
    free(v11);
    free(v20);
    free(v19);
    free(v23);
    free(v40);
    if (Count >= 1)
    {
      do
      {
        if (*v10)
        {
          v26 = __CStringFromString(*v10);
          v27 = strcmp(v26, "kCFLocaleCalendarKey");
          v28 = *v6;
          if (v27)
          {
            v29 = __CStringFromString(v28);
          }

          else
          {
            Identifier = CFCalendarGetIdentifier(v28);
            v29 = __CStringFromString(Identifier);
            v31 = strdup("calendar");
            free(v26);
            v26 = v31;
          }

          v39 = 0;
          uloc_setKeywordValue();
          free(v26);
          free(v29);
        }

        ++v6;
        ++v10;
        --Count;
      }

      while (Count);
    }

    result = CFStringCreateWithCString(v34, v41, 0x600u);
  }

  else
  {
    result = 0;
  }

  v32 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFStringCopyWithFomatStringConfiguration(void *a1, uint64_t a2)
{
  if (objc_opt_respondsToSelector())
  {

    return [a1 _copyFormatStringWithConfiguration:a2];
  }

  else
  {
    CFRetain(a1);
    return a1;
  }
}

UInt8 *__CStringFromString(const __CFString *a1)
{
  maxBufLen[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Length = CFStringGetLength(a1);
    maxBufLen[0] = 0;
    v7.location = 0;
    v7.length = Length;
    CFStringGetBytes(a1, v7, 0x600u, 0x3Fu, 0, 0, 0, maxBufLen);
    v3 = malloc_type_malloc(maxBufLen[0] + 1, 0x100004077774924uLL);
    v8.location = 0;
    v8.length = Length;
    CFStringGetBytes(a1, v8, 0x600u, 0x3Fu, 0, v3, maxBufLen[0], maxBufLen);
    v3[maxBufLen[0]] = 0;
  }

  else
  {
    v3 = 0;
  }

  v4 = *MEMORY[0x1E69E9840];
  return v3;
}

BOOL _CFLocaleGetCalendarDirection()
{
  v12 = *MEMORY[0x1E69E9840];
  keyExistsAndHasValidFormat = 0;
  AppBooleanValue = CFPreferencesGetAppBooleanValue(@"NSLocaleCalendarDirectionIsRightToLeft", @"kCFPreferencesAnyApplication", &keyExistsAndHasValidFormat);
  if (keyExistsAndHasValidFormat)
  {
    v1 = AppBooleanValue != 0;
  }

  else
  {
    MainBundle = CFBundleGetMainBundle();
    v3 = CFBundleCopyBundleLocalizations(MainBundle);
    if (v3)
    {
      v4 = v3;
      v5 = CFBundleCopyPreferredLocalizationsFromArray(v3);
      ValueAtIndex = CFArrayGetValueAtIndex(v5, 0);
      ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(0, ValueAtIndex);
      Value = CFDictionaryGetValue(ComponentsFromLocaleIdentifier, @"kCFLocaleLanguageCodeKey");
      if (Value)
      {
        v1 = CFLocaleGetLanguageCharacterDirection(Value) == kCFLocaleLanguageDirectionRightToLeft;
      }

      else
      {
        v1 = 0;
      }

      CFRelease(ComponentsFromLocaleIdentifier);
      CFRelease(v5);
      CFRelease(v4);
    }

    else
    {
      v1 = 0;
    }
  }

  v9 = *MEMORY[0x1E69E9840];
  return v1;
}

void __CFFileDescriptorCreate_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  handler[6] = *MEMORY[0x1E69E9840];
  v9 = *(a1 + 40);
  if (CFFileDescriptorGetTypeID_initOnce != -1)
  {
    __CFFileDescriptorCreate_block_invoke_cold_1();
  }

  Instance = _CFRuntimeCreateInstance(v9, 0x3CuLL, 96, 0, a5, a6, a7, a8);
  if (Instance)
  {
    v11 = Instance;
    if (*(a1 + 76))
    {
      v12 = atomic_load((Instance + 8));
      v13 = v12;
      do
      {
        atomic_compare_exchange_strong((Instance + 8), &v13, v12 | 2);
        v14 = v13 == v12;
        v12 = v13;
      }

      while (!v14);
    }

    *(Instance + 20) = *(a1 + 64);
    *(Instance + 24) = *(a1 + 68);
    v15 = *(a1 + 72);
    *(Instance + 28) = v15;
    *(Instance + 32) = 0;
    *(Instance + 40) = 0;
    v16 = *(a1 + 68);
    if ((v16 & 0x80000000) == 0)
    {
      v17 = __fdQueue();
      v18 = dispatch_source_create(MEMORY[0x1E69E96F8], v16, 0, v17);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 0x40000000;
      handler[2] = __CFFileDescriptorCreate_block_invoke_2;
      handler[3] = &__block_descriptor_tmp_2;
      handler[4] = v11;
      handler[5] = v18;
      dispatch_source_set_event_handler(v18, handler);
      v32[0] = MEMORY[0x1E69E9820];
      v32[1] = 0x40000000;
      v32[2] = __CFFileDescriptorCreate_block_invoke_3;
      v32[3] = &__block_descriptor_tmp_3;
      v32[4] = v18;
      v33 = *(a1 + 68);
      dispatch_source_set_cancel_handler(v18, v32);
      *(v11 + 32) = v18;
      v15 = *(a1 + 72);
    }

    if ((v15 & 0x80000000) == 0)
    {
      v19 = v15;
      v20 = __fdQueue();
      v21 = dispatch_source_create(MEMORY[0x1E69E9730], v19, 0, v20);
      v31[0] = MEMORY[0x1E69E9820];
      v31[1] = 0x40000000;
      v31[2] = __CFFileDescriptorCreate_block_invoke_4;
      v31[3] = &__block_descriptor_tmp_4;
      v31[4] = v11;
      v31[5] = v21;
      dispatch_source_set_event_handler(v21, v31);
      v29[0] = MEMORY[0x1E69E9820];
      v29[1] = 0x40000000;
      v29[2] = __CFFileDescriptorCreate_block_invoke_5;
      v29[3] = &__block_descriptor_tmp_5;
      v29[4] = v21;
      v30 = *(a1 + 72);
      dispatch_source_set_cancel_handler(v21, v29);
      *(v11 + 40) = v21;
    }

    *(v11 + 48) = 257;
    *(v11 + 64) = *(a1 + 48);
    v22 = *(a1 + 56);
    if (v22)
    {
      v23 = *v22;
      v24 = v22[1];
      *(v11 + 104) = *(v22 + 4);
      *(v11 + 88) = v24;
      *(v11 + 72) = v23;
      v25 = *(a1 + 56);
      v26 = *(v25 + 8);
      v27 = *(v25 + 16);
      if (v27)
      {
        v26 = v27(v26);
      }

      *(v11 + 80) = v26;
    }

    *(v11 + 16) = 0;
    *(*(*(a1 + 32) + 8) + 24) = v11;
  }

  v28 = *MEMORY[0x1E69E9840];
}

uint64_t _CFStreamUnscheduleFromRunLoop(uint64_t result, __CFRunLoop *a2, const __CFString *a3)
{
  v3 = *(result + 32);
  if (!v3 || !*(v3 + 56))
  {
    return result;
  }

  v6 = result;
  v7 = *(result + 48);
  if ((*(result + 17) & 1) == 0)
  {
    pthread_mutex_lock((result + 56));
    v8 = *(v6 + 32);
    if (v8 && (v9 = *(v8 + 56)) != 0)
    {
      CFRetain(*(v8 + 56));
      pthread_mutex_unlock((v6 + 56));
      CFRunLoopRemoveSource(a2, v9, a3);
      CFRelease(v9);
    }

    else
    {
      pthread_mutex_unlock((v6 + 56));
    }

    goto LABEL_24;
  }

  os_unfair_lock_lock(&sSourceLock);
  Value = CFDictionaryGetValue(sSharedSources, v6);
  v11 = CFDictionaryGetValue(sSharedSources, Value);
  Count = CFArrayGetCount(v11);
  v29.location = 0;
  v29.length = Count;
  FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v11, v29, v6);
  if (FirstIndexOfValue != -1)
  {
    CFArrayRemoveValueAtIndex(v11, FirstIndexOfValue);
    --Count;
  }

  if (!Count)
  {
    pthread_mutex_lock((v6 + 56));
    v14 = *(v6 + 32);
    if (v14 && (v15 = *(v14 + 56)) != 0)
    {
      CFRetain(*(v14 + 56));
      pthread_mutex_unlock((v6 + 56));
      CFRunLoopRemoveSource(a2, v15, a3);
      CFRelease(v15);
    }

    else
    {
      pthread_mutex_unlock((v6 + 56));
    }

    CFDictionaryRemoveValue(sSharedSources, Value);
  }

  CFDictionaryRemoveValue(sSharedSources, v6);
  pthread_mutex_lock((v6 + 56));
  v16 = *(v6 + 32);
  if (v16)
  {
    v17 = *(v16 + 56);
    if (v17)
    {
      CFRetain(*(v16 + 56));
      *(*(v6 + 32) + 56) = 0;
      pthread_mutex_unlock((v6 + 56));
      CFRelease(v17);
      if (!Count)
      {
        CFRunLoopSourceInvalidate(v17);
      }

      CFRelease(v17);
      goto LABEL_23;
    }

    *(v16 + 56) = 0;
  }

  pthread_mutex_unlock((v6 + 56));
LABEL_23:
  *(v6 + 16) &= ~0x100uLL;
  os_unfair_lock_unlock(&sSourceLock);
LABEL_24:
  pthread_mutex_lock((v6 + 56));
  v18 = *(v6 + 32);
  v19 = *(v18 + 64);
  if (v19)
  {
    v20 = CFArrayGetCount(*(v18 + 64));
    if (v20 >= 2)
    {
      v21 = v20;
      v22 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v19, v22);
        if (CFEqual(ValueAtIndex, a2))
        {
          v24 = CFArrayGetValueAtIndex(v19, v22 + 1);
          if (CFEqual(v24, a3))
          {
            break;
          }
        }

        v25 = v22 + 3;
        v22 += 2;
        if (v25 >= v21)
        {
          goto LABEL_32;
        }
      }

      CFArrayRemoveValueAtIndex(v19, v22);
      CFArrayRemoveValueAtIndex(v19, v22);
    }
  }

LABEL_32:
  result = pthread_mutex_unlock((v6 + 56));
  if (v7)
  {
    v26 = *(v7 + 128);
    if (v26)
    {
      v27 = *(v6 + 40);

      return v26(v6, a2, a3, v27);
    }
  }

  return result;
}

uint64_t _CFURLComponentsGetURLPathAllowedCharacterSet()
{
  if (InitializeURLAllowedCharacterSets_static_init != -1)
  {
    _CFURLComponentsGetURLPathAllowedCharacterSet_cold_1();
  }

  return *(sURLAllowedCharacterSets + 24);
}

uint64_t __CFFileDescriptorGetTypeID_block_invoke()
{
  v9 = *MEMORY[0x1E69E9840];
  v7.rlim_cur = 0;
  v7.rlim_max = 0;
  v0 = getrlimit(8, &v7);
  *v8 = 0x1D00000001;
  rlim_max = 0;
  v5 = 4;
  result = sysctl(v8, 2u, &rlim_max, &v5, 0, 0);
  if (result | v0)
  {
    if (v0)
    {
      goto LABEL_10;
    }

    LODWORD(v2) = rlim_max;
  }

  else
  {
    LODWORD(v2) = rlim_max;
    if (v7.rlim_max < rlim_max)
    {
      rlim_max = v7.rlim_max;
      LODWORD(v2) = v7.rlim_max;
    }
  }

  if (v7.rlim_cur < v2)
  {
    v2 = v2;
    v4 = v7;
    if (v7.rlim_cur + 2304 < v2)
    {
      v2 = v7.rlim_cur + 2304;
    }

    v4.rlim_cur = v2;
    result = setrlimit(8, &v4);
  }

LABEL_10:
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFStringValidateFormatSpec(const __CFString *a1, uint64_t a2, uint64_t a3)
{
  v28 = *MEMORY[0x1E69E9840];
  v6 = _CFGetTSD(1u);
  if (v6)
  {
    v7 = v6;
  }

  else
  {
    v7 = &__kCFAllocatorSystemDefault;
  }

  v22 = 0;
  v23 = 0;
  ptr = 0;
  v21 = 0;
  v18 = 0;
  v19 = 0;
  v25 = 0;
  memset(v24, 0, sizeof(v24));
  Length = CFStringGetLength(a1);
  __CFStringSetUpFormatAndSpecBuffers(a1, Length, &v22, &v21, &ptr, v27, &v19, v26, &v18, v24);
  v9 = v18;
  v10 = v19;
  FormatSpecifiersInString = __CFStringFindFormatSpecifiersInString(v22, v21, Length, v19, v18, &v23);
  v12 = __CFStringValidateFormatSpecBuffers(a2, 1, v10, FormatSpecifiersInString, a3);
  if (ptr && ptr != v27)
  {
    CFAllocatorDeallocate(v7, ptr);
  }

  if (v10 != v26)
  {
    CFAllocatorDeallocate(v7, v10);
  }

  v13 = v23;
  if (v23 >= 1)
  {
    v14 = 0;
    do
    {
      v15 = v9[v14];
      if (v15)
      {
        CFRelease(v15);
        v13 = v23;
      }

      ++v14;
    }

    while (v14 < v13);
  }

  if (v9 != v24)
  {
    CFAllocatorDeallocate(v7, v9);
  }

  if (v12)
  {
    result = a3 + 1;
  }

  else
  {
    result = -1;
  }

  v17 = *MEMORY[0x1E69E9840];
  return result;
}

CFTypeRef _fs_retain(CFTypeRef cf)
{
  if (cf)
  {
    CFRetain(cf);
  }

  return cf;
}

void CFFileDescriptorEnableCallBacks(CFFileDescriptorRef f, CFOptionFlags callBackTypes)
{
  block[6] = *MEMORY[0x1E69E9840];
  if (CFFileDescriptorGetTypeID_initOnce != -1)
  {
    CFFileDescriptorEnableCallBacks_cold_1();
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
    block[2] = __CFFileDescriptorEnableCallBacks_block_invoke;
    block[3] = &__block_descriptor_tmp_8;
    block[4] = f;
    block[5] = callBackTypes;
    dispatch_sync(v5, block);
  }

  v6 = *MEMORY[0x1E69E9840];
}

const __CFString *_CFCopyResolvedFormatStringWithConfiguration(__CFString *a1, CFDictionaryRef theDict, const void *a3)
{
  value[20] = *MEMORY[0x1E69E9840];
  v6 = CFDictionaryGetValue(theDict, @"NSStringFormatSpecTypeKey");
  if (!v6)
  {
    goto LABEL_134;
  }

  v7 = v6;
  v8 = CFDictionaryGetValue(theDict, @"NSStringFormatLocaleKey");
  if (!v8)
  {
    v8 = a3;
    if (!a3)
    {
      v8 = _CFCopyResolvedFormatStringWithConfiguration_mainBundleLocale;
      if (!_CFCopyResolvedFormatStringWithConfiguration_mainBundleLocale)
      {
        MainBundle = CFBundleGetMainBundle();
        v10 = CFBundleCopyBundleLocalizations(MainBundle);
        if (v10)
        {
          v11 = v10;
          v12 = CFBundleCopyPreferredLocalizationsFromArray(v10);
          CFRelease(v11);
          if (v12)
          {
            if (CFArrayGetCount(v12) <= 0)
            {
              CFRelease(v12);
            }

            else
            {
              ValueAtIndex = CFArrayGetValueAtIndex(v12, 0);
              v8 = CFLocaleCreate(0, ValueAtIndex);
              CFRelease(v12);
              if (v8)
              {
                goto LABEL_12;
              }
            }
          }
        }

        v8 = CFLocaleCreate(0, @"en");
LABEL_12:
        v14 = 0;
        atomic_compare_exchange_strong(&_CFCopyResolvedFormatStringWithConfiguration_mainBundleLocale, &v14, v8);
        if (v14)
        {
          CFRelease(v8);
          v8 = _CFCopyResolvedFormatStringWithConfiguration_mainBundleLocale;
        }
      }
    }
  }

  if (v7 == @"NSStringPluralRuleType" || CFEqual(v7, @"NSStringPluralRuleType"))
  {
    v15 = CFGetTypeID(a1);
    if (v15 != CFNumberGetTypeID())
    {
      goto LABEL_134;
    }

    v84 = 0;
    if (CFNumberGetValue(a1, kCFNumberCFIndexType, &v84))
    {
      v16 = v84;
      if (v84)
      {
        v17 = 0;
      }

      else
      {
        if (CFNumberIsFloatType(a1))
        {
          v17 = 0;
        }

        else
        {
          v17 = CFDictionaryGetValue(theDict, @"zero");
        }

        v16 = v84;
      }

      if (v16 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v17 = CFDictionaryGetValue(theDict, @"other");
      }

      if (v17)
      {
        goto LABEL_65;
      }
    }

    else
    {
      v84 = -1;
    }

    v83 = 0;
    Identifier = CFLocaleGetIdentifier(v8);
    if (!Identifier)
    {
      Identifier = @"en";
    }

    if (!CFStringGetCString(Identifier, value, 157, 0x8000100u))
    {
      strcpy(value, "en");
    }

    uplrules_open();
    v83 = 0;
    v82 = 0;
    if (CFNumberGetValue(a1, kCFNumberDoubleType, &v82))
    {
      v38 = uplrules_select();
    }

    else
    {
      v38 = 0;
    }

    uplrules_close();
    v17 = 0;
    if (v83 <= 0 && v38 >= 1)
    {
      v39 = CFStringCreateWithCharactersNoCopy(0, v85, v38, &__kCFAllocatorNull);
      v17 = CFDictionaryGetValue(theDict, v39);
      CFRelease(v39);
    }

    if (!v17 && v84 == 1)
    {
      if (CFNumberIsFloatType(a1))
      {
LABEL_64:
        v17 = CFDictionaryGetValue(theDict, @"other");
        if (v17)
        {
          goto LABEL_65;
        }

        goto LABEL_134;
      }

      v17 = CFDictionaryGetValue(theDict, @"one");
    }

    if (v17)
    {
LABEL_65:
      v20 = CFRetain(v17);
      goto LABEL_66;
    }

    goto LABEL_64;
  }

  if (v7 == @"NSStringGenderRuleType" || CFEqual(v7, @"NSStringGenderRuleType"))
  {
    value[0] = 0;
    v18 = CFGetTypeID(a1);
    if (v18 == CFNumberGetTypeID())
    {
      LODWORD(v84) = 0;
      if (CFNumberGetValue(a1, kCFNumberIntType, &v84))
      {
        v85[0] = 0;
        v85[1] = 0;
        v86 = 0;
        if ((v84 & 0x80000000) == 0 && snprintf(v85, 0x14uLL, "%d", v84) >= 1)
        {
          if (LOBYTE(v85[0]))
          {
            v19 = CFStringCreateWithCStringNoCopy(0, v85, 0x600u, &__kCFAllocatorNull);
            if (v19)
            {
              if (!CFDictionaryGetValueIfPresent(theDict, v19, value))
              {
                value[0] = CFDictionaryGetValue(theDict, @"0");
              }

              CFRelease(v19);
              if (value[0])
              {
                v20 = CFRetain(value[0]);
LABEL_66:
                v40 = v20;
LABEL_135:
                v75 = *MEMORY[0x1E69E9840];
                return v40;
              }
            }
          }
        }
      }
    }

    goto LABEL_134;
  }

  if (v7 == @"NSStringEntityFormattingRuleType" || CFEqual(v7, @"NSStringEntityFormattingRuleType"))
  {
    v21 = CFDictionaryGetValue(theDict, @"NSStringFormatFamilyInfoKey");
    v22 = CFDictionaryGetValue(theDict, @"NSStringFormatLocaleInfoKey");
    RelevantLocaleInfoFromLocaleSummary = _CFStringGetRelevantLocaleInfoFromLocaleSummary(v22, v8);
    v24 = CFRetain(RelevantLocaleInfoFromLocaleSummary);
    v85[0] = 0;
    if (CFDictionaryGetValueIfPresent(v24, @"NSStringFormatRuleStartEndInfoKey", v85))
    {
      v25 = CFGetTypeID(a1);
      if (v25 == CFStringGetTypeID())
      {
        v78[0] = MEMORY[0x1E69E9820];
        v78[1] = 3221225472;
        v79 = ___CFCopyResolvedFormatStringWithConfiguration_block_invoke;
        v80 = &__block_descriptor_40_e29__v20__0____CFDictionary__8S16l;
        v81 = v21;
        if (CFStringGetLength(a1) >= 1)
        {
          v26 = v85[0];
          CharacterAtIndex = CFStringGetCharacterAtIndex(a1, 0);
          v28 = v79(v78, v26, CharacterAtIndex);
          v29 = v28;
          if (v28)
          {
            v30 = CFGetTypeID(v28);
            if (v30 == CFDictionaryGetTypeID())
            {
              Length = CFStringGetLength(a1);
              v32 = CFStringGetCharacterAtIndex(a1, Length - 1);
              v33 = v79(v78, v29, v32);
              v34 = v33;
              if (v33)
              {
                v35 = CFGetTypeID(v33);
                TypeID = CFStringGetTypeID();
                goto LABEL_92;
              }
            }
          }

LABEL_95:
          v55 = 0;
          goto LABEL_96;
        }

        v56 = CFLocaleGetValue(v8, @"kCFLocaleLanguageCodeKey");
        v57 = CFDictionaryGetValue(v85[0], v56);
        v55 = v57;
        if (!v57)
        {
          goto LABEL_96;
        }

        v58 = CFGetTypeID(v57);
        if (v58 != CFDictionaryGetTypeID())
        {
          goto LABEL_95;
        }

        v47 = CFDictionaryGetValue(v55, v56);
        v34 = v47;
        if (!v47)
        {
          goto LABEL_95;
        }
      }

      else
      {
        v44 = CFDictionaryGetValue(v85[0], @"default");
        v45 = v44;
        if (!v44)
        {
          goto LABEL_95;
        }

        v46 = CFGetTypeID(v44);
        if (v46 != CFDictionaryGetTypeID())
        {
          goto LABEL_95;
        }

        v47 = CFDictionaryGetValue(v45, @"default");
        v34 = v47;
        if (!v47)
        {
          goto LABEL_95;
        }
      }

      v35 = CFGetTypeID(v47);
      TypeID = CFStringGetTypeID();
LABEL_92:
      if (v35 == TypeID)
      {
        v55 = v34;
      }

      else
      {
        v55 = 0;
      }

      goto LABEL_96;
    }

    if (CFDictionaryGetValueIfPresent(v24, @"NSStringConditionalFormatRuleInfoKey", v85))
    {
      v41 = CFDictionaryGetValue(v85[0], @"default");
      v42 = CFGetTypeID(a1);
      if (v42 == CFStringGetTypeID() && _CFStringConditionalFormattingMeetsCondition(a1, v8))
      {
        v43 = CFDictionaryGetValue(v41, @"NSStringConditionalFormatKey");
      }

      else
      {
        v43 = CFDictionaryGetValue(v41, @"default");
      }

      v55 = v43;
LABEL_96:
      v59 = CFGetTypeID(a1);
      if (v59 == CFStringGetTypeID() && !v55)
      {
        v60 = CFDictionaryGetValue(theDict, @"NSStringFormatClassInfoKey");
        value[0] = 0;
        if (CFDictionaryGetValueIfPresent(v24, @"NSStringFormatClassTypeKey", value))
        {
          v61 = CFDictionaryGetValue(v60, value[0]);
        }

        else
        {
          v61 = CFDictionaryGetValue(v24, @"NSStringFormatRuleInfoKey");
        }

        v85[0] = v61;
        Count = CFDictionaryGetCount(v61);
        v64 = Count;
        if (Count >> 60)
        {
          v76 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", Count);
          v77 = [NSException exceptionWithName:@"NSGenericException" reason:v76 userInfo:0];
          CFRelease(v76);
          objc_exception_throw(v77);
        }

        if (Count <= 1)
        {
          Count = 1;
        }

        v65 = MEMORY[0x1EEE9AC00](Count, v63);
        v67 = (v78 - v66);
        v84 = 0;
        if (v64 >= 0x101)
        {
          v67 = _CFCreateArrayStorage(v65, 0, &v84);
          v68 = v67;
        }

        else
        {
          v68 = 0;
        }

        CFDictionaryGetKeysAndValues(v85[0], v67, 0);
        if (v64)
        {
          while (1)
          {
            v69 = *v67;
            if (CFStringCompare(*v67, @"default", 0))
            {
              v70 = CFDictionaryGetValue(v21, v69);
              if (_CFStringContentsInCharacterSet(a1, v70))
              {
                break;
              }
            }

            ++v67;
            if (!--v64)
            {
              goto LABEL_111;
            }
          }
        }

        else
        {
LABEL_111:
          v69 = 0;
        }

        if (v69)
        {
          v71 = v69;
        }

        else
        {
          v71 = @"default";
        }

        v55 = CFDictionaryGetValue(v85[0], v71);
        free(v68);
      }

      if (v24)
      {
        CFRelease(v24);
      }

      if (v55)
      {
        v20 = CFRetain(v55);
        goto LABEL_66;
      }

      goto LABEL_134;
    }

    goto LABEL_95;
  }

  if (v7 != @"NSStringAffixRuleType" && !CFEqual(v7, @"NSStringAffixRuleType"))
  {
    if (v7 == @"NSStringVocativeNameFormattingRuleType" || CFEqual(v7, @"NSStringVocativeNameFormattingRuleType"))
    {
      v72 = CFGetTypeID(a1);
      v40 = a1;
      if (v72 == 7)
      {
        goto LABEL_130;
      }

      if (_CFCopyResolvedFormatStringWithConfiguration_onceToken != -1)
      {
        _CFCopyResolvedFormatStringWithConfiguration_cold_1();
      }

      if (__NSPersonNameComponentsClass)
      {
        if (objc_opt_isKindOfClass())
        {
          v40 = [(__CFString *)a1 givenName];
          if (CFGetTypeID(v40) == 7)
          {
LABEL_130:
            if (v40)
            {
              v73 = _CFStringCopyVocativeCaseOfGivenName(v40, v8);
              v40 = v73;
              if (v72 != 7)
              {
                if (v73)
                {
                  v74 = [(__CFString *)a1 copy];
                  [v74 setGivenName:v40];
                  if (_CFCopyResolvedFormatStringWithConfiguration_onceToken_61 != -1)
                  {
                    _CFCopyResolvedFormatStringWithConfiguration_cold_2();
                  }

                  CFRelease(v40);
                  v40 = [objc_msgSend(_CFCopyResolvedFormatStringWithConfiguration_formatter stringFromPersonNameComponents:{v74), "copy"}];
                  CFRelease(v74);
                }
              }
            }

            goto LABEL_135;
          }
        }
      }
    }

    goto LABEL_134;
  }

  v48 = CFLocaleGetValue(v8, @"kCFLocaleLanguageCodeKey");
  v49 = CFGetTypeID(a1);
  if (v49 != CFStringGetTypeID() || (v48 ? (v50 = v48) : (v50 = @"en"), AffixRuleFormat = _CFStringFindAffixRuleFormat(v50, a1), (v52 = CFDictionaryGetValue(theDict, AffixRuleFormat)) == 0))
  {
    v52 = CFDictionaryGetValue(theDict, @"other");
    if (!v52)
    {
LABEL_134:
      v40 = 0;
      goto LABEL_135;
    }
  }

  v53 = *MEMORY[0x1E69E9840];

  return CFRetain(v52);
}

uint64_t __CFStringFormatLocalizedNumber(__CFString *a1, const void *a2, uint64_t a3, uint64_t a4, int a5, int a6, int a7)
{
  *&length[1] = *MEMORY[0x1E69E9840];
  length[0] = a5;
  if (__CFStringFormatLocalizedNumber_disableLocalizedFormatting == -1)
  {
    __CFStringFormatLocalizedNumber_disableLocalizedFormatting = getenv("CFStringDisableLocalizedNumberFormatting") != 0;
    if (!__CFStringFormatLocalizedNumber_disableLocalizedFormatting)
    {
      goto LABEL_5;
    }

LABEL_115:
    result = 0;
    goto LABEL_116;
  }

  if (__CFStringFormatLocalizedNumber_disableLocalizedFormatting)
  {
    goto LABEL_115;
  }

LABEL_5:
  os_unfair_lock_lock(&__CFStringFormatLocalizedNumber_formatterLock);
  v13 = *(a4 + 28);
  if (v13 > 2)
  {
    if (v13 == 3)
    {
      if (__CFStringFormatLocalizedNumber_gFormatter)
      {
        Locale = CFNumberFormatterGetLocale(__CFStringFormatLocalizedNumber_gFormatter);
        if (CFEqual(Locale, a2))
        {
          v15 = &__CFStringFormatLocalizedNumber_gFormatter;
          goto LABEL_31;
        }

        if (__CFStringFormatLocalizedNumber_gFormatter)
        {
          CFRelease(__CFStringFormatLocalizedNumber_gFormatter);
        }
      }

      v19 = CFNumberFormatterCreate(0, a2, kCFNumberFormatterDecimalStyle);
      __CFStringFormatLocalizedNumber_gFormatter = v19;
      if (v19)
      {
        v15 = &__CFStringFormatLocalizedNumber_gFormatter;
        v20 = CFNumberFormatterCopyProperty(v19, @"kCFNumberFormatterGroupingSizeKey");
        CFNumberGetValue(v20, kCFNumberSInt32Type, &__CFStringFormatLocalizedNumber_groupingSize);
        CFRelease(v20);
        v21 = CFNumberFormatterCopyProperty(__CFStringFormatLocalizedNumber_gFormatter, @"kCFNumberFormatterSecondaryGroupingSizeKey");
        CFNumberGetValue(v21, kCFNumberSInt32Type, &__CFStringFormatLocalizedNumber_secondaryGroupingSize);
        CFRelease(v21);
        goto LABEL_31;
      }

LABEL_50:
      os_unfair_lock_unlock(&__CFStringFormatLocalizedNumber_formatterLock);
      goto LABEL_115;
    }

    if (v13 != 4)
    {
LABEL_120:
      __CFStringFormatLocalizedNumber_cold_1();
    }

LABEL_13:
    if (__CFStringFormatLocalizedNumber_decimalFormatter)
    {
      v16 = CFNumberFormatterGetLocale(__CFStringFormatLocalizedNumber_decimalFormatter);
      if (CFEqual(v16, a2))
      {
        goto LABEL_19;
      }

      if (__CFStringFormatLocalizedNumber_decimalFormatter)
      {
        CFRelease(__CFStringFormatLocalizedNumber_decimalFormatter);
      }
    }

    v17 = CFNumberFormatterCreate(0, a2, kCFNumberFormatterDecimalStyle);
    __CFStringFormatLocalizedNumber_decimalFormatter = v17;
    if (!v17)
    {
      goto LABEL_50;
    }

    CFNumberFormatterSetProperty(v17, @"kCFNumberFormatterMaxFractionDigitsKey", &unk_1EF1B9E40);
LABEL_19:
    v15 = &__CFStringFormatLocalizedNumber_decimalFormatter;
    goto LABEL_31;
  }

  if (v13 == 1)
  {
    goto LABEL_13;
  }

  if (v13 != 2)
  {
    goto LABEL_120;
  }

  if (__CFStringFormatLocalizedNumber_scientificFormatter)
  {
    v14 = CFNumberFormatterGetLocale(__CFStringFormatLocalizedNumber_scientificFormatter);
    if (CFEqual(v14, a2))
    {
      v15 = &__CFStringFormatLocalizedNumber_scientificFormatter;
      goto LABEL_31;
    }

    if (__CFStringFormatLocalizedNumber_scientificFormatter)
    {
      CFRelease(__CFStringFormatLocalizedNumber_scientificFormatter);
    }
  }

  v22 = CFNumberFormatterCreate(0, a2, kCFNumberFormatterScientificStyle);
  __CFStringFormatLocalizedNumber_scientificFormatter = v22;
  if (!v22)
  {
    goto LABEL_50;
  }

  v15 = &__CFStringFormatLocalizedNumber_scientificFormatter;
  CFNumberFormatterSetFormat(v22, @"#E+00");
  CFNumberFormatterSetProperty(__CFStringFormatLocalizedNumber_scientificFormatter, @"kCFNumberFormatterUseSignificantDigitsKey", &__kCFBooleanTrue);
LABEL_31:
  v23 = *v15;
  if (!*v15)
  {
    goto LABEL_50;
  }

  Format = CFNumberFormatterGetFormat(*v15);
  Copy = CFStringCreateCopy(0, Format);
  if (!a7)
  {
    if (*(a4 + 2) == 33)
    {
      a6 = 0;
    }

    else
    {
      a6 = 6;
    }
  }

  valuePtr = a6;
  if (*(a4 + 28) == 3)
  {
    if (!a6)
    {
      a6 = 1;
      valuePtr = 1;
    }

    Mutable = CFStringCreateMutable(0, 0);
    CFStringAppendCString(Mutable, "@", 0x600u);
    CFStringPad(Mutable, @"#", a6, 0);
    v27 = *(a3 + 16 * *(a4 + 24) + 8);
    v28 = __exp10(a6);
    if (v27 > 0.0 && (v27 < 0.0001 || v27 > v28) || v27 < 0.0 && (v27 > -0.0001 || v27 < -v28))
    {
      CFStringAppendCString(Mutable, "E+00", 0x600u);
    }

    else if (a6 > __CFStringFormatLocalizedNumber_groupingSize)
    {
      if (__CFStringFormatLocalizedNumber_groupingSize)
      {
        CFStringInsert(Mutable, a6 - __CFStringFormatLocalizedNumber_groupingSize, @",");
        if (__CFStringFormatLocalizedNumber_secondaryGroupingSize)
        {
          if (a6 > __CFStringFormatLocalizedNumber_groupingSize + __CFStringFormatLocalizedNumber_secondaryGroupingSize)
          {
            CFStringInsert(Mutable, a6 - (__CFStringFormatLocalizedNumber_groupingSize + __CFStringFormatLocalizedNumber_secondaryGroupingSize), @",");
          }
        }
      }
    }

    CFNumberFormatterSetFormat(v23, Mutable);
    CFRelease(Mutable);
  }

  CFNumberFormatterSetProperty(v23, @"kCFNumberFormatterFormatWidthKey", &unk_1EF1B9E40);
  v29 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
  CFNumberFormatterSetProperty(v23, @"kCFNumberFormatterMaxFractionDigitsKey", v29);
  if (*(a4 + 2) == 34)
  {
    v30 = v23;
    v31 = v29;
  }

  else
  {
    v31 = &unk_1EF1B9E40;
    v30 = v23;
  }

  CFNumberFormatterSetProperty(v30, @"kCFNumberFormatterMinFractionDigitsKey", v31);
  CFRelease(v29);
  v32 = (a3 + 16 * *(a4 + 24));
  v33 = *v32;
  if (v33 == 34)
  {
    if (*(v32 + 1) == 5)
    {
      v35 = v32[1];
      if (v35 < 0.0)
      {
        goto LABEL_64;
      }
    }

    else
    {
      v35 = v32[1];
    }

    if (v35 >= 0.0)
    {
      goto LABEL_65;
    }

LABEL_64:
    LOBYTE(v34) = 1;
    goto LABEL_66;
  }

  if (v33 != 33)
  {
LABEL_65:
    LOBYTE(v34) = 0;
    goto LABEL_66;
  }

  v34 = *(v32 + 1) >> 63;
LABEL_66:
  v36 = CFNumberFormatterGetFormat(v23);
  v37 = *(a4 + 20);
  CharacterAtIndex = CFStringGetCharacterAtIndex(v36, 0);
  if ((v34 & 1) != 0 || (v37 & 4) == 0)
  {
    if (CharacterAtIndex == 43)
    {
      v66.length = CFStringGetLength(v36) - 1;
      v66.location = 1;
      MutableCopy = CFStringCreateWithSubstring(0, v36, v66);
      goto LABEL_72;
    }
  }

  else if (CharacterAtIndex != 43)
  {
    MutableCopy = CFStringCreateMutableCopy(0, 0, @"+");
    CFStringAppend(MutableCopy, v36);
LABEL_72:
    CFNumberFormatterSetFormat(v23, MutableCopy);
    CFRelease(MutableCopy);
  }

  v40 = *(a4 + 20) & 1;
  if (a7 && *(a4 + 2) == 33)
  {
    v41 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFNumberFormatterSetProperty(v23, @"kCFNumberFormatterFormatWidthKey", v41);
  }

  else
  {
    v41 = CFNumberCreate(0, kCFNumberSInt32Type, length);
    CFNumberFormatterSetProperty(v23, @"kCFNumberFormatterFormatWidthKey", v41);
    if (!a7)
    {
      goto LABEL_79;
    }
  }

  if (*(a4 + 2) == 33)
  {
    v40 = 1;
  }

LABEL_79:
  if ((*(a4 + 20) & 2) != 0)
  {
    v42 = 3;
  }

  else
  {
    v42 = v40;
  }

  v62 = 0;
  v63 = v42;
  CFNumberGetValue(v41, kCFNumberSInt32Type, &v62);
  if (v40 && v62 >= 1 && v63 && *(a4 + 2) != 34)
  {
    CFNumberFormatterSetProperty(v23, @"kCFNumberFormatterMinIntegerDigitsKey", v41);
  }

  CFRelease(v41);
  if (a7 && *(a4 + 2) == 33)
  {
    LODWORD(v61[0]) = 1;
    v43 = v61;
  }

  else
  {
    v43 = &v63;
  }

  v44 = CFNumberCreate(0, kCFNumberSInt32Type, v43);
  CFNumberFormatterSetProperty(v23, @"kCFNumberFormatterPaddingPositionKey", v44);
  CFRelease(v44);
  if (v40)
  {
    v45 = *(a4 + 28);
    if (v45 != 3)
    {
      goto LABEL_96;
    }

    v46 = @"0";
  }

  else
  {
    v46 = @" ";
  }

  CFNumberFormatterSetProperty(v23, @"kCFNumberFormatterPaddingCharacterKey", v46);
  v45 = *(a4 + 28);
LABEL_96:
  if (v45 == 2)
  {
    ++valuePtr;
    v47 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
    CFNumberFormatterSetProperty(v23, @"kCFNumberFormatterMinSignificantDigitsKey", v47);
    CFNumberFormatterSetProperty(v23, @"kCFNumberFormatterMaxSignificantDigitsKey", v47);
    CFRelease(v47);
  }

  v48 = *(a4 + 2);
  if (v48 == 34)
  {
    v52 = a3 + 16 * *(a4 + 24);
    if (*(v52 + 2) == 5)
    {
      v61[0] = *(v52 + 8);
      v49 = v61;
    }

    else
    {
      v49 = (v52 + 8);
    }

    v50 = v23;
    v51 = kCFNumberDoubleType;
  }

  else
  {
    if (v48 != 33)
    {
      StringWithValue = 0;
      goto LABEL_109;
    }

    if ((*(a4 + 28) & 4) != 0)
    {
      v54 = *(a3 + 16 * *(a4 + 24) + 8);
      v61[0] = 0;
      v61[1] = v54;
      v49 = v61;
      v50 = v23;
      v51 = kCFNumberMaxType|kCFNumberSInt8Type;
    }

    else
    {
      v49 = (a3 + 16 * *(a4 + 24) + 8);
      v50 = v23;
      v51 = kCFNumberSInt64Type;
    }
  }

  StringWithValue = CFNumberFormatterCreateStringWithValue(0, v50, v51, v49);
LABEL_109:
  CFNumberFormatterSetFormat(v23, Copy);
  CFRelease(Copy);
  os_unfair_lock_unlock(&__CFStringFormatLocalizedNumber_formatterLock);
  if (!StringWithValue)
  {
    goto LABEL_115;
  }

  if (a7)
  {
    if (*(a4 + 2) == 33)
    {
      v55 = CFStringGetLength(StringWithValue);
      if (v55 < length[0])
      {
        if (v63 == 3)
        {
          v56 = CFStringCreateMutableCopy(0, 0, StringWithValue);
          CFStringPad(v56, @" ", length[0], 0);
        }

        else
        {
          v56 = CFStringCreateMutable(0, 0);
          v59 = length[0];
          v60 = CFStringGetLength(StringWithValue);
          CFStringPad(v56, @" ", v59 - v60, 0);
          CFStringAppend(v56, StringWithValue);
        }

        CFRelease(StringWithValue);
        StringWithValue = v56;
      }
    }
  }

  CFStringAppend(a1, StringWithValue);
  CFRelease(StringWithValue);
  result = 1;
LABEL_116:
  v58 = *MEMORY[0x1E69E9840];
  return result;
}

void __CFFileDescriptorEnableCallBacks_block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  if (!*(v1 + 16))
  {
    if ((*(a1 + 40) & 1) != 0 && *(v1 + 32))
    {
      is_readable = cffd_is_readable(*(v1 + 20));
      v4 = *(a1 + 32);
      if (is_readable)
      {
        *(v4 + 50) = 1;
        if (!*(v4 + 48))
        {
          dispatch_suspend(*(v4 + 32));
          v4 = *(a1 + 32);
          *(v4 + 48) = 1;
        }

        v5 = *(v4 + 56);
        if (v5)
        {
          CFRunLoopSourceSignal(v5);
          _CFRunLoopSourceWakeUpRunLoops(*(*(a1 + 32) + 56));
        }
      }

      else if (*(v4 + 48))
      {
        *(v4 + 48) = 0;
        dispatch_resume(*(v4 + 32));
      }
    }

    if ((*(a1 + 40) & 2) != 0)
    {
      v6 = *(a1 + 32);
      if (*(v6 + 40))
      {
        is_writeable = cffd_is_writeable(*(v6 + 20));
        v8 = *(a1 + 32);
        if (is_writeable)
        {
          *(v8 + 51) = 1;
          if (!*(v8 + 49))
          {
            dispatch_suspend(*(v8 + 40));
            v8 = *(a1 + 32);
            *(v8 + 49) = 1;
          }

          v9 = *(v8 + 56);
          if (v9)
          {
            CFRunLoopSourceSignal(v9);
            v10 = *(*(a1 + 32) + 56);

            _CFRunLoopSourceWakeUpRunLoops(v10);
          }
        }

        else if (*(v8 + 49))
        {
          *(v8 + 49) = 0;
          v11 = *(v8 + 40);

          dispatch_resume(v11);
        }
      }
    }
  }
}

BOOL cffd_is_readable(unsigned int a1)
{
  v10 = *MEMORY[0x1E69E9840];
  if (a1 >= 0x100000)
  {
    __break(1u);
  }

  v2 = ((a1 + 8) >> 3) + 7;
  v3 = malloc_type_malloc(v2, 0xA8AFE1CAuLL);
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

void boundPairWriteClose(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    pthread_mutex_lock((a2 + 104));
    *(a2 + 50) = 1;
    *(a2 + 3) = 1;
    if (!*(a2 + 2))
    {
      if (*(a2 + 4))
      {
        setupScheduledStreamCloseBlock(&v6, *(a2 + 32), *(a2 + 8), *(a2 + 16));
      }

      else
      {
        v4 = *(a2 + 8);
        v3 = *(a2 + 16);
        v6 = 0;
        if (v4)
        {
          CFRetain(v4);
        }

        v7 = v4;
        if (v3)
        {
          CFRetain(v3);
        }

        v8 = v3;
      }
    }

    pthread_mutex_unlock((a2 + 104));
    performUnlockParamsAndDealloc(&v6);
  }

  v5 = *MEMORY[0x1E69E9840];
}

CFRunLoopSourceRef CFFileDescriptorCreateRunLoopSource(CFAllocatorRef allocator, CFFileDescriptorRef f, CFIndex order)
{
  v16 = *MEMORY[0x1E69E9840];
  if (CFFileDescriptorGetTypeID_initOnce != -1)
  {
    CFFileDescriptorCreateRunLoopSource_cold_1();
  }

  __CFCheckCFInfoPACSignature(f);
  v6 = _CFGetNonObjCTypeID(f);
  if (v6 != 60)
  {
    _CFAssertMismatchedTypeID(0x3CuLL, v6);
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if ((__CF_FORK_STATE & 1) != 0 || !CFFileDescriptorIsValid(f))
  {
    v8 = 0;
  }

  else
  {
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v7 = __fdQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __CFFileDescriptorCreateRunLoopSource_block_invoke;
    block[3] = &unk_1E6D7DC50;
    block[6] = allocator;
    block[7] = order;
    block[4] = &v12;
    block[5] = f;
    dispatch_sync(v7, block);
    v8 = v13[3];
    _Block_object_dispose(&v12, 8);
  }

  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

void performUnlockParamsAndDealloc(uint64_t a1)
{
  v2 = *a1;
  if (v2)
  {
    v3 = CFGetTypeID(v2);
    TypeID = CFReadStreamGetTypeID();
    v10 = *a1;
    if (v3 == TypeID)
    {
      CFReadStreamSignalEvent(v10, 2uLL, 0, v4, v5, v6, v7, v8);
      v11 = 0;
      goto LABEL_6;
    }

    CFWriteStreamSignalEvent(v10, 0x10uLL, 0, v4, v5, v6, v7, v8);
  }

  v11 = 1;
LABEL_6:
  v12 = *(a1 + 8);
  if (v12)
  {
    CFRunLoopSourceSignal(v12);
  }

  if (*a1)
  {
    if (v11)
    {
      _wakeWriteStreamScheduledRunLoops();
    }

    else
    {
      _wakeReadStreamScheduledRunLoops();
    }
  }

  v13 = *(a1 + 16);
  if (v13)
  {
    CFRunLoopWakeUp(v13);
  }

  if (*a1)
  {
    CFRelease(*a1);
    *a1 = 0;
  }

  v14 = *(a1 + 8);
  if (v14)
  {
    CFRelease(v14);
    *(a1 + 8) = 0;
  }

  v15 = *(a1 + 16);
  if (v15)
  {
    CFRelease(v15);
    *(a1 + 16) = 0;
  }
}

void boundPairWriteFinalize(uint64_t a1, unsigned __int8 *a2)
{
  if (a2)
  {
    pthread_mutex_lock((a2 + 104));
    v3 = *a2;
    a2[48] = 1;
    *(a2 + 26) = 0;
    v4 = *(a2 + 8);
    if (v4)
    {
      CFRelease(v4);
      *(a2 + 8) = 0;
    }

    pthread_mutex_unlock((a2 + 104));
    if (v3)
    {

      boundPairCommonFinalize(a2);
    }
  }
}

Boolean CFFileDescriptorIsValid(CFFileDescriptorRef f)
{
  v6 = *MEMORY[0x1E69E9840];
  if (CFFileDescriptorGetTypeID_initOnce != -1)
  {
    CFFileDescriptorIsValid_cold_1();
  }

  __CFCheckCFInfoPACSignature(f);
  v2 = _CFGetNonObjCTypeID(f);
  if (v2 != 60)
  {
    _CFAssertMismatchedTypeID(0x3CuLL, v2);
  }

  if (!*(f + 4))
  {
    memset(&v5, 0, sizeof(v5));
    if ((fstat(*(f + 5), &v5) & 0x80000000) == 0)
    {
      result = 1;
      goto LABEL_8;
    }

    CFFileDescriptorInvalidate(f);
  }

  result = 0;
LABEL_8:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void CFReadStreamScheduleWithRunLoop(CFReadStreamRef stream, CFRunLoopRef runLoop, CFRunLoopMode runLoopMode)
{
  if (CF_IS_OBJC(0x26uLL, stream))
  {
    if (objc_opt_respondsToSelector())
    {

      [(__CFReadStream *)stream _scheduleInCFRunLoop:runLoop forMode:runLoopMode];
    }

    else
    {
      v6 = _CFRunLoopGet2(runLoop);

      [(__CFReadStream *)stream scheduleInRunLoop:v6 forMode:runLoopMode];
    }
  }

  else
  {

    _CFStreamScheduleWithRunLoop(stream, runLoop, runLoopMode);
  }
}

void *__CFFileDescriptorCreateRunLoopSource_block_invoke(void *result)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = result[5];
  if (!*(v1 + 16))
  {
    v2 = result;
    v3 = *(v1 + 56);
    if (v3)
    {
      IsValid = CFRunLoopSourceIsValid(v3);
      v1 = v2[5];
      if (!IsValid)
      {
        CFRelease(*(v1 + 56));
        *(v2[5] + 56) = 0;
        v1 = v2[5];
      }
    }

    result = *(v1 + 56);
    if (result)
    {
      goto LABEL_12;
    }

    context.version = 0;
    context.info = v1;
    context.retain = CFRetain;
    context.release = CFRelease;
    context.equal = 0;
    context.hash = 0;
    context.copyDescription = __CFFileDescriptorCopyDescription;
    context.schedule = __CFFileDescriptorSchedule;
    context.cancel = __CFFileDescriptorCancel;
    context.perform = __CFFileDescriptorPerform;
    *(v2[5] + 56) = CFRunLoopSourceCreate(v2[6], v2[7], &context);
    v5 = v2[5];
    v6 = *(v5 + 56);
    if (v6)
    {
      if (*(v5 + 50))
      {
        CFRunLoopSourceSignal(v6);
        _CFRunLoopSourceWakeUpRunLoops(*(v2[5] + 56));
        v5 = v2[5];
      }

      if (*(v5 + 51))
      {
        CFRunLoopSourceSignal(*(v5 + 56));
        _CFRunLoopSourceWakeUpRunLoops(*(v2[5] + 56));
        v5 = v2[5];
      }
    }

    result = *(v5 + 56);
    if (result)
    {
LABEL_12:
      result = CFRetain(result);
    }

    *(*(v2[4] + 8) + 24) = result;
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

void boundPairReadSchedule(int a1, CFTypeRef cf, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
    v6 = *(a4 + 16);
    if (v6)
    {
      CFRelease(v6);
    }

    if (cf)
    {
      v7 = CFRetain(cf);
    }

    else
    {
      v7 = 0;
    }

    *(a4 + 16) = v7;
    ++*(a4 + 4);
  }
}

void _CFRunLoopSourceWakeUpRunLoops(uint64_t a1)
{
  __CFCheckCFInfoPACSignature(a1);
  v2 = _CFGetNonObjCTypeID(a1);
  if (v2 != 46)
  {
    _CFAssertMismatchedTypeID(0x2EuLL, v2);
  }

  pthread_mutex_lock((a1 + 16));
  v3 = atomic_load((a1 + 8));
  if ((v3 & 8) != 0 && (v4 = *(a1 + 96)) != 0)
  {
    Copy = CFBagCreateCopy(&__kCFAllocatorSystemDefault, v4);
    pthread_mutex_unlock((a1 + 16));
    if (Copy)
    {
      CFBagApplyFunction(Copy, __CFRunLoopSourceWakeUpLoop, 0);

      CFRelease(Copy);
    }
  }

  else
  {

    pthread_mutex_unlock((a1 + 16));
  }
}

CFStringRef CFDateFormatterCreateDateFormatFromTemplate(CFAllocatorRef allocator, CFStringRef tmplate, CFOptionFlags options, CFLocaleRef locale)
{
  v23 = *MEMORY[0x1E69E9840];
  TypeID = CFStringGetTypeID();
  v9 = CFGetTypeID(tmplate);
  Mutable = 0;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v11 = TypeID == v9;
  if (!v11)
  {
    Mutable = CFArrayCreateMutable(allocator, 0, &kCFTypeArrayCallBacks);
  }

  v22 = Mutable;
  v17[0] = MEMORY[0x1E69E9820];
  v17[1] = 3221225472;
  v17[2] = __CFDateFormatterCreateDateFormatFromTemplate_block_invoke;
  v17[3] = &unk_1E6D7D888;
  v18 = v11;
  v17[6] = locale;
  v17[7] = options;
  v17[8] = allocator;
  v17[4] = &v19;
  v17[5] = tmplate;
  v12 = useTemplatePatternGenerator(locale, v17);
  v13 = v20;
  v14 = v20[3];
  if (!v12)
  {
    if (v14)
    {
      CFRelease(v20[3]);
      v13 = v20;
    }

    v14 = 0;
    v13[3] = 0;
  }

  _Block_object_dispose(&v19, 8);
  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

void __CFFileDescriptorPerform(uint64_t a1)
{
  v27 = *MEMORY[0x1E69E9840];
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
    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = 0;
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22 = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2000000000;
    v18 = 0;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2000000000;
    v14 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x2000000000;
    v10 = 0;
    v2 = __fdQueue();
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ____CFFileDescriptorPerform_block_invoke;
    block[3] = &unk_1E6D7DCA0;
    block[4] = &v15;
    block[5] = &v23;
    block[6] = &v19;
    block[7] = &v11;
    block[8] = &v7;
    block[9] = a1;
    dispatch_sync(v2, block);
    if (*(v16 + 24) && (*(v24 + 24) || *(v20 + 24)))
    {
      v3 = *(a1 + 64);
      if (v3)
      {
        v3(a1, (*(v24 + 24) != 0) | (2 * (*(v20 + 24) != 0)), v12[3]);
      }

      v4 = v8[3];
      if (v4)
      {
        v4(v12[3]);
      }

      if ((__CF_FORK_STATE & 2) == 0)
      {
        __CF_USED();
      }

      if (__CF_FORK_STATE)
      {
        __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
      }
    }

    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v19, 8);
    _Block_object_dispose(&v23, 8);
  }

  v5 = *MEMORY[0x1E69E9840];
}

void sub_183197F8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, char a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a20, 8);
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 136), 8);
  _Block_object_dispose((v28 - 104), 8);
  _Unwind_Resume(a1);
}

uint64_t useTemplatePatternGenerator(const __CFLocale *a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    Identifier = CFLocaleGetIdentifier(a1);
  }

  else
  {
    Identifier = &stru_1EF068AA8;
  }

  CStringPtr = CFStringGetCStringPtr(Identifier, 0x600u);
  if (!CStringPtr)
  {
    CStringPtr = buffer;
    if (!CFStringGetCString(Identifier, buffer, 768, 0x600u))
    {
      CStringPtr = 0;
    }
  }

  os_unfair_lock_lock(&useTemplatePatternGenerator_ptgLock);
  if (!useTemplatePatternGenerator_ptgLocaleName || !strcmp(useTemplatePatternGenerator_ptgLocaleName, CStringPtr))
  {
    v5 = useTemplatePatternGenerator_ptg;
    v14 = 0;
    if (useTemplatePatternGenerator_ptg)
    {
      v6 = 0;
      goto LABEL_15;
    }
  }

  else
  {
    __cficu_udatpg_close();
    useTemplatePatternGenerator_ptg = 0;
    free(useTemplatePatternGenerator_ptgLocaleName);
    useTemplatePatternGenerator_ptgLocaleName = 0;
    v14 = 0;
  }

  v5 = __cficu_udatpg_open();
  useTemplatePatternGenerator_ptg = v5;
  v6 = v14;
  if (v5)
  {
    useTemplatePatternGenerator_ptgLocaleName = strdup(CStringPtr);
    if (!useTemplatePatternGenerator_pressureSrc)
    {
      v7 = qos_class_main();
      global_queue = dispatch_get_global_queue(v7, 2uLL);
      useTemplatePatternGenerator_pressureSrc = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, global_queue);
      handler[0] = MEMORY[0x1E69E9820];
      handler[1] = 3221225472;
      handler[2] = __useTemplatePatternGenerator_block_invoke_2;
      handler[3] = &unk_1E6D7D8D8;
      handler[4] = &__block_literal_global_1;
      dispatch_source_set_event_handler(useTemplatePatternGenerator_pressureSrc, handler);
      dispatch_resume(useTemplatePatternGenerator_pressureSrc);
      v5 = useTemplatePatternGenerator_ptg;
      v6 = v14;
    }
  }

LABEL_15:
  if (v5)
  {
    v9 = v6 < 1;
  }

  else
  {
    v9 = 0;
  }

  v10 = v9;
  if (a2 && v10)
  {
    (*(a2 + 16))(a2, v5);
  }

  os_unfair_lock_unlock(&useTemplatePatternGenerator_ptgLock);
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

uint64_t boundPairReadOpen(char *a1, uint64_t a2, _BYTE *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*(a4 + 4))
  {
    CFReadStreamSignalEvent(a1, 1uLL, 0, a4, a5, a6, a7, a8);
    if (boundPairReadCanRead(v12, a4))
    {
      CFReadStreamSignalEvent(a1, 2uLL, 0, v13, v14, v15, v16, v17);
    }

    _wakeReadStreamScheduledRunLoops();
  }

  *(a2 + 8) = 0;
  *a3 = 1;
  return 1;
}

BOOL boundPairReadCanRead(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (*a2)
  {
    return 0;
  }

  if (_cbCanRead(*(a2 + 96)))
  {
    return 1;
  }

  return *(a2 + 3) == 1;
}

BOOL _cbCanRead(_BOOL8 result)
{
  if (result)
  {
    return *(result + 36) < *(result + 32);
  }

  return result;
}

void fileCallBack(int a1, uint64_t a2, void *cf)
{
  if (cf)
  {
    v5 = CFGetTypeID(cf);
    if (v5 == CFReadStreamGetTypeID())
    {
      InfoPointer = CFReadStreamGetInfoPointer(cf);
      if (!InfoPointer)
      {
        return;
      }
    }

    else
    {
      InfoPointer = CFWriteStreamGetInfoPointer(cf);
      if (!InfoPointer)
      {
        return;
      }
    }

    v12 = *(InfoPointer + 24);
    if (a2 == 2)
    {
      *(InfoPointer + 24) = v12 | 1;

      CFWriteStreamSignalEvent(cf, 4uLL, 0, v7, v8, v9, v10, v11);
    }

    else
    {
      *(InfoPointer + 24) = v12 | 2;

      CFReadStreamSignalEvent(cf, 2uLL, 0, v7, v8, v9, v10, v11);
    }
  }
}

void _wakeReadStreamScheduledRunLoops()
{
  v0 = _CFReadStreamCopyRunLoopsAndModes();
  if (v0)
  {
    v1 = v0;
    _wakeRunLoops(v0);

    CFRelease(v1);
  }
}

Boolean CFReadStreamHasBytesAvailable(CFReadStreamRef stream)
{
  if (CF_IS_OBJC(0x26uLL, stream))
  {
    return [(__CFReadStream *)stream hasBytesAvailable];
  }

  if ((_CFStreamGetStatus(stream) - 4) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  v3 = *(stream + 6);
  v4 = v3[8];
  if (!v4)
  {
    return 1;
  }

  *(stream + 2) |= 0x40uLL;
  if (*v3 > 1)
  {
    v2 = v4(stream, stream + 24, *(stream + 5));
    if (*(stream + 3))
    {
      v5 = *(stream + 2);
      if ((v5 & 0x1F) != 7)
      {
        *(stream + 2) = v5 & 0xFFFFFFE0 | 7;
      }

      v6 = *(stream + 4);
      if (v6 && (*(v6 + 48) & 8) != 0)
      {
        pthread_mutex_lock((stream + 56));
        v7 = *(stream + 4);
        if (v7 && (v8 = *(v7 + 56)) != 0)
        {
          CFRetain(*(v7 + 56));
          pthread_mutex_unlock((stream + 56));
          *(*(stream + 4) + 72) |= 8uLL;
          CFRunLoopSourceSignal(v8);
          CFRelease(v8);
          _wakeUpRunLoop(stream);
        }

        else
        {
          pthread_mutex_unlock((stream + 56));
        }
      }
    }
  }

  else
  {
    v2 = (v4)(stream, *(stream + 5));
  }

  *(stream + 2) &= ~0x40uLL;
  return v2;
}

uint64_t CFReadStreamGetInfoPointer(uint64_t result)
{
  if (result)
  {
    return *(result + 40);
  }

  return result;
}

void __CFDateFormatterCreateDateFormatFromTemplate_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = MEMORY[0x1EEE9AC00](a1, a2);
  v3 = v2;
  v66 = *MEMORY[0x1E69E9840];
  if (*(v2 + 72))
  {
    Count = 1;
LABEL_4:
    v4 = 0;
    v57 = v3;
    while (1)
    {
      ValueAtIndex = *(v3 + 40);
      if (!*(v3 + 72))
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(v3 + 40), v4);
      }

      v7 = CFStringFind(ValueAtIndex, @"J", 0);
      length = v7.length;
      System = *(v3 + 48);
      if (System)
      {
        if (!ValueAtIndex)
        {
          goto LABEL_15;
        }
      }

      else
      {
        System = CFLocaleGetSystem();
        if (!ValueAtIndex)
        {
LABEL_15:
          Mutable = 0;
          goto LABEL_83;
        }
      }

      v9 = *(v3 + 56);
      if (v9)
      {
        v13 = 1;
        if ((v9 & 2) != 0)
        {
          goto LABEL_21;
        }
      }

      else
      {
        AppleICUForce24HourTimePref = _CFLocaleGetAppleICUForce24HourTimePref(System, length);
        if (AppleICUForce24HourTimePref && (v11 = AppleICUForce24HourTimePref, v12 = CFGetTypeID(AppleICUForce24HourTimePref), v12 == CFBooleanGetTypeID()))
        {
          v13 = CFBooleanGetValue(v11) != 0;
          if ((v9 & 2) != 0)
          {
            goto LABEL_21;
          }
        }

        else
        {
          v13 = 0;
          if ((v9 & 2) != 0)
          {
LABEL_21:
            v19 = !v13;
            goto LABEL_25;
          }
        }
      }

      AppleICUForce12HourTimePref = _CFLocaleGetAppleICUForce12HourTimePref(System, length);
      v18 = AppleICUForce12HourTimePref && (v16 = AppleICUForce12HourTimePref, v17 = CFGetTypeID(AppleICUForce12HourTimePref), v17 == CFBooleanGetTypeID()) && CFBooleanGetValue(v16) != 0;
      if (!v13 && !v18)
      {
        Mutable = CFRetain(ValueAtIndex);
        goto LABEL_83;
      }

      v19 = !v13 && v18;
LABEL_25:
      v59 = v19;
      Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
      v20 = CFStringGetLength(ValueAtIndex);
      if (v20 >= 1)
      {
        v21 = v20;
        v22 = 0;
        v23 = 0;
        v61 = v13;
        v24 = v7.location != -1 || v13;
        v60 = v24;
        v25 = -1;
        while (1)
        {
          CharacterAtIndex = CFStringGetCharacterAtIndex(ValueAtIndex, v22);
          chars[0] = CharacterAtIndex;
          if (CharacterAtIndex > 103)
          {
            break;
          }

          if (CharacterAtIndex <= 73)
          {
            if (CharacterAtIndex == 39)
            {
              v23 = !v23;
              goto LABEL_79;
            }

            if (CharacterAtIndex != 72)
            {
LABEL_79:
              CFStringAppendCharacters(Mutable, chars, 1);
              goto LABEL_80;
            }

            if (v23)
            {
              goto LABEL_73;
            }

            if (v25 == -1)
            {
              v25 = CFStringGetLength(Mutable);
            }

            if (!v59)
            {
              goto LABEL_46;
            }

LABEL_60:
            v23 = 0;
            v28 = 104;
            goto LABEL_78;
          }

          if (CharacterAtIndex == 74)
          {
            goto LABEL_56;
          }

          if (CharacterAtIndex == 75)
          {
            if (v23)
            {
LABEL_73:
              v23 = 1;
              goto LABEL_79;
            }

            if (v25 == -1)
            {
              v25 = CFStringGetLength(Mutable);
            }

            if (v61)
            {
              v23 = 0;
              v28 = 107;
              goto LABEL_78;
            }

LABEL_46:
            v23 = 0;
            goto LABEL_79;
          }

          if (CharacterAtIndex != 97)
          {
            goto LABEL_79;
          }

          v46 = !v23;
          v23 = v23;
          v27 = v46;
          if ((v27 & v60 & 1) == 0)
          {
            goto LABEL_79;
          }

          v23 = 0;
LABEL_80:
          if (v21 == ++v22)
          {
            goto LABEL_83;
          }
        }

        if (CharacterAtIndex <= 106)
        {
          if (CharacterAtIndex == 104)
          {
            if (v23)
            {
              goto LABEL_73;
            }

            if (v25 == -1)
            {
              v25 = CFStringGetLength(Mutable);
            }

            if (!v61)
            {
              goto LABEL_46;
            }
          }

          else
          {
            if (CharacterAtIndex != 106)
            {
              goto LABEL_79;
            }

LABEL_56:
            if (v23)
            {
              goto LABEL_73;
            }

            if (v25 == -1)
            {
              v25 = CFStringGetLength(Mutable);
            }

            if (!v61)
            {
              goto LABEL_60;
            }
          }

          v23 = 0;
          v28 = 72;
        }

        else
        {
          if (CharacterAtIndex != 107)
          {
            if (CharacterAtIndex != 109 && CharacterAtIndex != 115)
            {
              goto LABEL_79;
            }

            if (v23)
            {
              goto LABEL_73;
            }

            CFStringGetLength(Mutable);
            goto LABEL_46;
          }

          if (v23)
          {
            goto LABEL_73;
          }

          if (v25 == -1)
          {
            v25 = CFStringGetLength(Mutable);
          }

          if (!v59)
          {
            goto LABEL_46;
          }

          v23 = 0;
          v28 = 75;
        }

LABEL_78:
        chars[0] = v28;
        goto LABEL_79;
      }

LABEL_83:
      location = CFStringFind(Mutable, @"j", 1uLL).location;
      if (location == -1)
      {
        v30 = 0;
        v31 = 0;
      }

      else
      {
        CFStringGetCharacterAtIndex(Mutable, location);
        if (location + 1 < CFStringGetLength(Mutable) && (CFStringGetCharacterAtIndex(Mutable, location + 1) == 106 || CFStringGetCharacterAtIndex(Mutable, location + 1) == 74))
        {
          CFStringGetCharacterAtIndex(Mutable, location + 1);
          v30 = 1;
          v31 = 2;
        }

        else
        {
          v30 = 0;
          v31 = 1;
        }
      }

      bzero(chars, 0x600uLL);
      bzero(v64, 0x600uLL);
      bzero(v63, 0x600uLL);
      v32 = CFStringGetLength(Mutable);
      if (v32 >= 768)
      {
        v33 = 768;
      }

      else
      {
        v33 = v32;
      }

      v67.location = 0;
      v67.length = v33;
      CFStringGetCharacters(Mutable, v67, chars);
      CFRelease(Mutable);
      v62 = 0;
      Skeleton = __cficu_udatpg_getSkeleton();
      if (v62 > 0)
      {
        goto LABEL_99;
      }

      if (location != -1 && (v31 + Skeleton) <= 0x2FF)
      {
        v64[Skeleton] = 106;
        if (v30)
        {
          v64[Skeleton + 1] = 106;
        }
      }

      v62 = 0;
      BestPattern = __cficu_udatpg_getBestPattern();
      if (v62 <= 0)
      {
        v39 = BestPattern;
        if (v7.location != -1)
        {
          Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
          if (v39 >= 1)
          {
            v41 = Predefined;
            for (i = 0; i < v39; ++i)
            {
              v43 = v63[i] - 66;
              v44 = v43 > 0x20;
              v45 = (1 << v43) & 0x180000003;
              v46 = v44 || v45 == 0;
              if (!v46)
              {
                v47 = i - 1;
                v48 = &v63[i + 1];
                do
                {
                  v49 = v48;
                  IsCharacterMember = CFCharacterSetIsCharacterMember(v41, *(v48 - 2));
                  --v47;
                  --v48;
                }

                while (IsCharacterMember);
                i = v47 + 2;
                while (1)
                {
                  v51 = *v48;
                  v52 = (v51 - 66) > 0x20 || ((1 << (v51 - 66)) & 0x180000003) == 0;
                  if (v52 && !CFCharacterSetIsCharacterMember(v41, v51))
                  {
                    break;
                  }

                  if (v39 >= 767)
                  {
                    v53 = 767;
                  }

                  else
                  {
                    v53 = v39;
                  }

                  if (i < v53)
                  {
                    v54 = v49;
                    v55 = v47 + 2;
                    do
                    {
                      ++v55;
                      *(v54 - 1) = *v54;
                      ++v54;
                    }

                    while (v55 < v53);
                  }

                  --v39;
                }
              }
            }
          }
        }

        v3 = v57;
        v36 = CFStringCreateWithCharacters(*(v57 + 64), v63, v39);
      }

      else
      {
LABEL_99:
        v36 = 0;
        v3 = v57;
      }

      v37 = *(*(v3 + 32) + 8);
      if (*(v3 + 72))
      {
        *(v37 + 24) = v36;
      }

      else
      {
        if (v36)
        {
          v38 = v36;
        }

        else
        {
          v38 = &__kCFNull;
        }

        CFArrayAppendValue(*(v37 + 24), v38);
        if (v36)
        {
          CFRelease(v36);
        }
      }

      if (++v4 == Count)
      {
        goto LABEL_133;
      }
    }
  }

  Count = CFArrayGetCount(*(v2 + 40));
  if (Count >= 1)
  {
    goto LABEL_4;
  }

LABEL_133:
  v56 = *MEMORY[0x1E69E9840];
}

uint64_t boundPairRead(char *a1, char *a2, int a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (*a6)
  {
    *(a4 + 8) = 22;
    *a4 = 1;
    if (*(a6 + 4))
    {
      CFReadStreamSignalEvent(a1, 8uLL, a4, a4, a5, a6, a7, a8);
      _wakeReadStreamScheduledRunLoops();
    }

    return -1;
  }

  pthread_mutex_lock((a6 + 104));
  while (1)
  {
    if (*a6)
    {
      v20 = *(a6 + 3);
      goto LABEL_10;
    }

    if (_cbCanRead(*(a6 + 96)))
    {
      break;
    }

    v20 = *(a6 + 3);
    if (v20 == 1)
    {
      break;
    }

LABEL_10:
    if (v20)
    {
      break;
    }

    if (*(a6 + 52))
    {
      _CFWriteStreamSignalEventDelayed(*(a6 + 80), 4uLL, 0, v15, v16, v17, v18, v19);
      v21 = *(a6 + 80);
      _wakeWriteStreamScheduledRunLoops();
    }

    Current = CFRunLoopGetCurrent();
    CFRunLoopAddSource(Current, *(a6 + 8), *(a6 + 24));
    v23 = *(a6 + 16);
    if (v23)
    {
      CFRelease(v23);
    }

    if (Current)
    {
      v24 = CFRetain(Current);
    }

    else
    {
      v24 = 0;
    }

    *(a6 + 16) = v24;
    *(a6 + 1) = 1;
    pthread_mutex_unlock((a6 + 104));
    CFRunLoopRunInMode(*(a6 + 24), 1.0e20, 1u);
    pthread_mutex_lock((a6 + 104));
    *(a6 + 1) = 0;
    CFRunLoopRemoveSource(Current, *(a6 + 8), *(a6 + 24));
  }

  v25 = cbRead(*(a6 + 96), a2, a3);
  v31 = v25;
  if (!v25 && *(a6 + 3) == 1)
  {
    if (*(a6 + 4))
    {
      CFReadStreamSignalEvent(*(a6 + 32), 0x10uLL, 0, v26, v27, v28, v29, v30);
      v32 = *(a6 + 32);
      _wakeReadStreamScheduledRunLoops();
    }

    else
    {
      *a5 = 1;
    }

    pthread_mutex_unlock((a6 + 104));
    return 0;
  }

  if (*a6)
  {
    if (*(a6 + 3) == 1)
    {
      v33 = 16;
      goto LABEL_28;
    }
  }

  else
  {
    v25 = _cbCanRead(*(a6 + 96));
    if (*(a6 + 3) == 1)
    {
      v33 = 2;
LABEL_28:
      CFReadStreamSignalEvent(a1, v33, 0, v26, v27, v28, v29, v30);
      _wakeReadStreamScheduledRunLoops();
    }
  }

  *(a4 + 8) = 0;
  *a5 = 0;
  if (*(a6 + 49))
  {
    CFRunLoopSourceSignal(*(a6 + 56));
    v25 = *(a6 + 64);
    if (v25)
    {
      CFRunLoopWakeUp(v25);
    }
  }

  if (*(a6 + 4) && !*(a6 + 3))
  {
    _CFWriteStreamSignalEventDelayed(*(a6 + 80), 4uLL, 0, v26, v27, v28, v29, v30);
    v34 = *(a6 + 80);
    _wakeWriteStreamScheduledRunLoops();
  }

  if (*(a6 + 52) && boundPairReadCanRead(v25, a6))
  {
    CFReadStreamSignalEvent(a1, 2uLL, 0, v35, v36, v37, v38, v39);
    _wakeReadStreamScheduledRunLoops();
  }

  pthread_mutex_unlock((a6 + 104));
  return v31;
}

void _fs_release(CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

size_t cbRead(uint64_t a1, char *a2, int a3)
{
  v3 = 0;
  if (a1 && a2 && a3 >= 1)
  {
    pthread_mutex_lock((a1 + 40));
    v8 = *(a1 + 32);
    v7 = *(a1 + 36);
    if (v8 <= v7)
    {
      v3 = 0;
    }

    else
    {
      v9 = v8 - v7;
      if (v9 >= a3)
      {
        v3 = a3;
      }

      else
      {
        v3 = v9;
      }

      v10 = *(a1 + 8);
      v11 = *(a1 + 16);
      v12 = v11 - v10;
      if (v11 == v10)
      {
        if (v7)
        {
          cbRead_cold_8();
        }

        v17 = *(a1 + 24);
        v18 = v17 - v11;
        v19 = (v3 - (v17 - v11));
        if (v3 <= v17 - v11)
        {
          __cbRead(a1, a2, v10, v3);
          if (*(a1 + 8) > *(a1 + 24))
          {
            cbRead_cold_9();
          }
        }

        else
        {
          __cbRead(a1, a2, v10, v17 - v11);
          __cbRead(a1, &a2[v18], *(a1 + 8), v19);
          if (*(a1 + 8) > *(a1 + 24))
          {
            cbRead_cold_10();
          }
        }
      }

      else if (v11 >= v10)
      {
        if ((v10 - &v11[*a1] + *(a1 + 24)) != v7)
        {
          cbRead_cold_1();
        }

        if (v12 <= v3)
        {
          v3 = v11 - v10;
          __cbRead(a1, a2, v10, v12);
          v20 = *(a1 + 8);
          if (v20 != *(a1 + 16))
          {
            cbRead_cold_2();
          }

          if (v20 > *(a1 + 24))
          {
            cbRead_cold_3();
          }
        }

        else
        {
          __cbRead(a1, a2, v10, v3);
          if (*(a1 + 8) > *(a1 + 24))
          {
            cbRead_cold_4();
          }
        }
      }

      else
      {
        if ((v10 - v11) != v7)
        {
          cbRead_cold_5();
        }

        v13 = *(a1 + 24);
        v14 = v13 - v10;
        v15 = (v3 - (v13 - v10));
        if (v3 <= v13 - v10)
        {
          __cbRead(a1, a2, v10, v3);
          if (*(a1 + 8) > *(a1 + 24))
          {
            cbRead_cold_6();
          }
        }

        else
        {
          __cbRead(a1, a2, v10, v13 - v10);
          __cbRead(a1, &a2[v14], *(a1 + 8), v15);
          if (*(a1 + 8) > *(a1 + 24))
          {
            cbRead_cold_7();
          }
        }
      }
    }

    pthread_mutex_unlock((a1 + 40));
  }

  return v3;
}

size_t __cbRead(uint64_t *a1, void *__dst, void *__src, size_t __len)
{
  if (!__dst)
  {
    __cbRead_cold_3();
  }

  if (!__src)
  {
    __cbRead_cold_2();
  }

  if (__len <= 0)
  {
    __cbRead_cold_1();
  }

  memmove(__dst, __src, __len);
  v6 = *(a1 + 8);
  *(a1 + 9) += __len;
  v7 = a1[1] + __len;
  if (v7 == *a1 + v6)
  {
    v7 = *a1;
  }

  a1[1] = v7;
  return __len;
}

uint64_t _CFBigNumInitWithInt128(uint64_t a1, uint64_t a2, uint64_t a3)
{
  LODWORD(v3) = a2;
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  if (a3 < 0)
  {
    *(a1 + 20) |= 0xFFu;
    v3 = -a2;
  }

  v5 = __udivti3();
  v6 = __udivti3();
  v7 = __udivti3();
  result = __udivti3();
  *a1 = 1486618624 * v7 + 402653184 * v6 + v3 - 1000000000 * result;
  *(a1 + 4) = result;
  *(a1 + 8) = v7;
  *(a1 + 12) = v6;
  *(a1 + 16) = v5;
  return result;
}

size_t _CFBigNumToCString(uint64_t a1, int a2, int a3, char *a4, size_t a5)
{
  v5 = a5;
  v6 = a4;
  v15 = *MEMORY[0x1E69E9840];
  if ((*(a1 + 20) & 0x80) != 0)
  {
    v8 = 45;
  }

  else
  {
    if (!a3)
    {
      goto LABEL_6;
    }

    v8 = 43;
  }

  *a4 = v8;
  v6 = a4 + 1;
  v5 = a5 - 1;
LABEL_6:
  snprintf(__str, 0x2EuLL, "%09u%09u%09u%09u%09u", *(a1 + 16), *(a1 + 12), *(a1 + 8), *(a1 + 4), *a1);
  if (a2)
  {
    memset(v6, 48, v5);
    if (v5 >= 0x2E)
    {
      v9 = 46;
    }

    else
    {
      v9 = v5;
    }

    result = memmove(&v6[v5 - v9], &__str[-v9 + 46], v9);
  }

  else
  {
      ;
    }

    if (*i)
    {
      v12 = i;
    }

    else
    {
      v12 = i - 1;
    }

    result = strlcpy(v6, v12, v5);
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void CFNumberFormatterSetFormat(CFNumberFormatterRef formatter, CFStringRef formatString)
{
  v19 = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(formatter);
  v4 = _CFGetNonObjCTypeID(formatter);
  if (v4 != 57)
  {
    _CFAssertMismatchedTypeID(0x39uLL, v4);
  }

  v5 = *(formatter + 4);
  v6 = v5 > 9;
  v7 = (1 << v5) & 0x2E0;
  if (v6 || v7 == 0)
  {
    Length = CFStringGetLength(formatString);
    v11 = *(formatter + 5);
    if (v11)
    {
      if (CFEqual(v11, formatString) || Length >= 1025)
      {
        goto LABEL_6;
      }
    }

    else if (Length > 1024)
    {
      goto LABEL_6;
    }

    if (__CFNumberFormatterApplyPattern(formatter, formatString) <= 0)
    {
      v12 = *(formatter + 2);
      v13 = __cficu_unum_toPattern();
      v14 = v13;
      if (v13 <= 768)
      {
        v15 = *(formatter + 5);
        if (v15)
        {
          CFRelease(v15);
        }

        v16 = CFGetAllocator(formatter);
        v17 = CFStringCreateWithCharacters(v16, chars, v14);
        *(formatter + 5) = v17;
        if (*(formatter + 7))
        {
          CFRelease(*(formatter + 7));
          v17 = *(formatter + 5);
        }

        *(formatter + 7) = __CFNumberFormatterCreateCompressedString(v17, 1, 0);
      }
    }
  }

LABEL_6:
  v9 = *MEMORY[0x1E69E9840];
}

uint64_t __CFNumberFormatterApplyPattern(uint64_t a1, CFStringRef theString)
{
  v19 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 32) - 5;
  if (v4 >= 5 || ((0x17u >> v4) & 1) == 0)
  {
    Length = CFStringGetLength(theString);
    v8 = Length;
    v9 = 2 * Length;
    if ((2 * Length) < 0x101)
    {
      if (Length < 1)
      {
        v10 = 0;
      }

      else
      {
        MEMORY[0x1EEE9AC00](Length, v7);
        v10 = &valuePtr - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
        bzero(v10, v9);
      }
    }

    else
    {
      v10 = malloc_type_malloc(2 * Length, 0x1000040BDFB0063uLL);
    }

    if (!CFStringGetCharactersPtr(theString))
    {
      v20.location = 0;
      v20.length = v8;
      CFStringGetCharacters(theString, v20, v10);
    }

    v18 = 0;
    v11 = *(a1 + 16);
    __cficu_unum_applyPattern();
    if (v9 >= 0x101)
    {
      free(v10);
    }

    if (!*(a1 + 81))
    {
      v12 = *(a1 + 64);
      if (v12)
      {
        CFRelease(v12);
      }

      *(a1 + 64) = 0;
      v13 = *(a1 + 16);
      valuePtr = __cficu_unum_getAttribute();
      if (valuePtr == 1)
      {
        goto LABEL_19;
      }

      v14 = CFGetAllocator(a1);
      *(a1 + 64) = CFNumberCreate(v14, kCFNumberSInt32Type, &valuePtr);
    }

    v15 = *(a1 + 16);
    __cficu_unum_setAttribute();
LABEL_19:
    result = v18;
    goto LABEL_20;
  }

  result = 16;
LABEL_20:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFURL *_CFURLIsItemPromiseAtURL(const __CFURL *a1)
{
  v1 = a1;
  cf[1] = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (_CFURLIsFileURL(a1))
    {
      cf[0] = 0;
      if (CFURLIsFileReferenceURL(v1) && _CFURLCopyResourcePropertyForKeyFromCache(v1, @"NSURLNameKey", cf))
      {
        PathComponent = cf[0];
        if (!cf[0])
        {
          goto LABEL_6;
        }
      }

      else
      {
        PathComponent = CFURLCopyLastPathComponent(v1);
        cf[0] = PathComponent;
        if (!PathComponent)
        {
          goto LABEL_6;
        }
      }

      v1 = _CFURLIsPromiseName(PathComponent);
      CFRelease(cf[0]);
      goto LABEL_9;
    }

LABEL_6:
    v1 = 0;
  }

LABEL_9:
  v3 = *MEMORY[0x1E69E9840];
  return v1;
}

void _CFFileDescriptorInduceFakeReadCallBack(uint64_t a1)
{
  v4[5] = *MEMORY[0x1E69E9840];
  v2 = __fdQueue();
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = ___CFFileDescriptorInduceFakeReadCallBack_block_invoke;
  v4[3] = &__block_descriptor_tmp_7;
  v4[4] = a1;
  dispatch_async(v2, v4);
  v3 = *MEMORY[0x1E69E9840];
}

CFBagRef CFBagCreateCopy(CFAllocatorRef allocator, CFBagRef theBag)
{
  v22 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(4uLL, theBag))
  {
    Count = CFBasicHashGetCount(theBag);
    memset(v21, 0, 512);
    if (Count >= 257)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * Count, 0xC0040B8AA526DLL, 0);
    }

    else
    {
      Typed = v21;
    }

    v13 = CFBasicHashGetCount(theBag);
    CFBasicHashGetElements(theBag, v13, 0, Typed);
    Generic = __CFBagCreateGeneric(allocator, &kCFTypeBagCallBacks);
    Copy = Generic;
    if (Count >= 1 && Generic)
    {
      CFBasicHashSetCapacity(Generic, Count);
      for (i = 0; i < Count; ++i)
      {
        CFBasicHashAddValue(Copy, *(Typed + i), *(Typed + i));
      }
    }

    if (Count >= 257)
    {
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
    }
  }

  else
  {
    Copy = CFBasicHashCreateCopy(allocator, theBag, v4, v5, v6, v7, v8, v9);
  }

  if (Copy)
  {
    v16 = atomic_load(Copy + 1);
    v17 = v16;
    do
    {
      atomic_compare_exchange_strong(Copy + 1, &v17, v16 | 0x40);
      v18 = v17 == v16;
      v16 = v17;
    }

    while (!v18);
    _CFRuntimeSetInstanceTypeIDAndIsa(Copy, 4uLL);
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return Copy;
}

uint64_t __CFDateComponentsEqual(void *a1, void *a2)
{
  if (!a1)
  {
    __CFDateComponentsEqual_cold_2();
  }

  if (!a2)
  {
    __CFDateComponentsEqual_cold_1();
  }

  if (a1[4] != a2[4] || a1[5] != a2[5] || a1[16] != a2[16] || a1[6] != a2[6] || a1[9] != a2[9] || a1[10] != a2[10] || a1[11] != a2[11] || a1[12] != a2[12] || a1[20] != a2[20] || a1[13] != a2[13] || a1[18] != a2[18] || a1[21] != a2[21] || a1[17] != a2[17] || a1[19] != a2[19] || a1[14] != a2[14] || a1[15] != a2[15])
  {
    return 0;
  }

  v2 = a1[7];
  v3 = a2[7];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (!v3)
    {
      goto LABEL_27;
    }
  }

  else if (!v2 && v3 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (v2 != v3)
  {
    return 0;
  }

LABEL_27:
  if (a1[8] != a2[8])
  {
    return 0;
  }

  v4 = a1[2];
  v5 = a2[2];
  if (v4)
  {
    if (!v5)
    {
      return 0;
    }

    result = CFEqual(v4, v5);
    if (!result)
    {
      return result;
    }
  }

  else if (v5)
  {
    return 0;
  }

  v7 = a1[3];
  v8 = a2[3];
  if (!v7)
  {
    return !v8;
  }

  if (!v8)
  {
    return 0;
  }

  result = CFEqual(v7, v8);
  if (result)
  {
    return 1;
  }

  return result;
}

Boolean CFRunLoopContainsSource(CFRunLoopRef rl, CFRunLoopSourceRef source, CFRunLoopMode mode)
{
  __CFCheckCFInfoPACSignature(rl);
  v6 = _CFGetNonObjCTypeID(rl);
  if (v6 != 43)
  {
    _CFAssertMismatchedTypeID(0x2BuLL, v6);
  }

  v7 = atomic_load(__CFMainThreadHasExited);
  if (v7)
  {
    CFRunLoopContainsSource_cold_1(rl);
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
    if (v12)
    {
      v11 = CFSetContainsValue(v12, source);
      goto LABEL_20;
    }

LABEL_15:
    v11 = 0;
    goto LABEL_20;
  }

  v8 = __CFRunLoopCopyMode(rl, mode, 0);
  if (!v8)
  {
    goto LABEL_15;
  }

  v9 = v8;
  pthread_mutex_lock((v8 + 16));
  v10 = *(v9 + 96);
  if (v10 && CFSetContainsValue(v10, source))
  {
    v11 = 1;
  }

  else
  {
    v13 = *(v9 + 104);
    if (v13)
    {
      v11 = CFSetContainsValue(v13, source) != 0;
    }

    else
    {
      v11 = 0;
    }
  }

  pthread_mutex_unlock((v9 + 16));
  CFRelease(v9);
LABEL_20:
  pthread_mutex_unlock((rl + 16));
  return v11;
}

void _cfstream_solo_signalEventSync(uint64_t a1)
{
  if ((CFGetTypeID(a1) & 0xFFFFFFFFFFFFFFFELL) == 0x26)
  {
    pthread_mutex_lock((a1 + 56));
    if (*(a1 + 136))
    {

      pthread_mutex_unlock((a1 + 56));
    }

    else
    {
      v8 = *(a1 + 128);
      if (v8)
      {
        dispatch_retain(*(a1 + 128));
        CFRetain(a1);
        pthread_mutex_unlock((a1 + 56));
        _signalEventQueue(v8, a1);
        dispatch_release(v8);
      }

      else
      {
        CFRetain(a1);
        pthread_mutex_unlock((a1 + 56));
        _signalEventSync(a1);
      }

      CFRelease(a1);
    }
  }

  else
  {
    CFLog(3, @"Expected a read or write stream for %p", v2, v3, v4, v5, v6, v7, a1);
  }
}

uint64_t _CFStreamCopyDispatchQueue(uint64_t a1)
{
  pthread_mutex_lock((a1 + 56));
  if (*(a1 + 32))
  {
    v2 = *(a1 + 128);
    if (v2)
    {
      dispatch_retain(*(a1 + 128));
    }
  }

  else
  {
    v2 = 0;
  }

  pthread_mutex_unlock((a1 + 56));
  return v2;
}

void CFFileDescriptorInvalidate(CFFileDescriptorRef f)
{
  v17 = *MEMORY[0x1E69E9840];
  if (CFFileDescriptorGetTypeID_initOnce != -1)
  {
    CFFileDescriptorInvalidate_cold_1();
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

  if ((__CF_FORK_STATE & 1) == 0)
  {
    CFRetain(f);
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    v3 = __fdQueue();
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __CFFileDescriptorInvalidate_block_invoke;
    v8[3] = &unk_1E6D7DC28;
    v8[5] = &v13;
    v8[6] = f;
    v8[4] = &v9;
    dispatch_sync(v3, v8);
    if (*(v10 + 24))
    {
      v4 = v14[3];
      if (v4)
      {
        CFRunLoopSourceInvalidate(v4);
        CFRelease(v14[3]);
      }

      v5 = *(f + 10);
      *(f + 10) = 0;
      v6 = *(f + 12);
      if (v6)
      {
        v6(v5);
      }

      *(f + 4) = 2;
      __dmb(0xBu);
    }

    CFRelease(f);
    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void sub_18319A49C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 72), 8);
  _Unwind_Resume(a1);
}

CFAttributedStringRef CFAttributedStringCreate(CFAllocatorRef alloc, CFStringRef str, CFDictionaryRef attributes)
{
  Instance = _CFRuntimeCreateInstance(alloc, 0x3EuLL, 16, 0, v3, v4, v5, v6);
  if (Instance)
  {
    *(Instance + 16) = CFStringCreateCopy(alloc, str);
    *(Instance + 24) = CFRunArrayCreate(alloc, v11, v12, v13, v14, v15, v16, v17);
    Length = CFStringGetLength(*(Instance + 16));
    if (Length)
    {
      v19 = Length;
      AttributesDictionary = __CFAttributedStringCreateAttributesDictionary(alloc, attributes);
      CFRunArrayInsert(*(Instance + 24), 0, v19, AttributesDictionary);
      CFRelease(AttributesDictionary);
    }

    v21 = atomic_load((Instance + 8));
    v22 = v21;
    do
    {
      atomic_compare_exchange_strong((Instance + 8), &v22, v21 | 1);
      v23 = v22 == v21;
      v21 = v22;
    }

    while (!v23);
  }

  return Instance;
}

void __CFFileDescriptorInvalidate_block_invoke(void *a1)
{
  *(*(a1[4] + 8) + 24) = *(a1[6] + 16) == 0;
  if (*(*(a1[4] + 8) + 24))
  {
    *(a1[6] + 16) = 1;
    __dmb(0xBu);
    v2 = a1[6];
    v3 = v2[4];
    if (v3)
    {
      dispatch_source_cancel(v3);
      v4 = a1[6];
      if (*(v4 + 48))
      {
        *(v4 + 48) = 0;
        dispatch_resume(*(v4 + 32));
        v4 = a1[6];
      }

      *(v4 + 32) = 0;
      v2 = a1[6];
    }

    v5 = v2[5];
    if (v5)
    {
      dispatch_source_cancel(v5);
      v6 = a1[6];
      if (*(v6 + 49))
      {
        *(v6 + 49) = 0;
        dispatch_resume(*(v6 + 40));
        v6 = a1[6];
      }

      *(v6 + 40) = 0;
      v2 = a1[6];
    }

    *(*(a1[5] + 8) + 24) = v2[7];
    *(a1[6] + 56) = 0;
    v7 = atomic_load((a1[6] + 8));
    if ((v7 & 2) != 0)
    {
      shutdown(*(a1[6] + 20), 2);
      v8 = open("/dev/null", 0);
      dup2(v8, *(a1[6] + 20));
      close(v8);
      close(*(a1[6] + 20));
    }

    *(a1[6] + 20) = -1;
  }
}

void CFMachPortGetContext(CFMachPortRef port, CFMachPortContext *context)
{
  __CFCheckCFInfoPACSignature(port);
  v4 = _CFGetNonObjCTypeID(port);
  if (v4 != 36)
  {
    _CFAssertMismatchedTypeID(0x24uLL, v4);
  }

  v5 = *(port + 56);
  v6 = *(port + 72);
  context->copyDescription = *(port + 11);
  *&context->version = v5;
  *&context->retain = v6;
}

void *_CFRunArrayCreateWithGuts(__objc2_class **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Instance = _CFRuntimeCreateInstance(a1, 0x3FuLL, 8, 0, a5, a6, a7, a8);
  v10 = Instance;
  if (Instance)
  {
    if (a2)
    {
      Instance[2] = a2;
      os_unfair_lock_lock(&runArrayLock);
      ++*v10[2];
      os_unfair_lock_unlock(&runArrayLock);
    }

    else
    {
      v11 = CFGetAllocator(Instance);
      Typed = CFAllocatorAllocateTyped(v11, 80, 0x1000040EED21634, 0);
      Typed[2] = 0;
      Typed[3] = 2;
      Typed[4] = 0;
      Typed[5] = 0;
      *Typed = 1;
      Typed[1] = 0;
      v10[2] = Typed;
    }
  }

  return v10;
}

CFMutableDictionaryRef __CFAttributedStringCreateAttributesDictionary(const __CFAllocator *a1, CFDictionaryRef theDict)
{
  if (theDict)
  {
    return CFDictionaryCreateMutableCopy(a1, 0, theDict);
  }

  else
  {
    return CFDictionaryCreateMutable(a1, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }
}

CFStringRef CFURLCopyParameterString(CFURLRef anURL, CFStringRef charactersToLeaveEscaped)
{
  v8[5] = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCopyParameterString_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __CFURLCopyParameterString_block_invoke;
    v8[3] = &__block_descriptor_40_e5_v8__0l;
    v8[4] = anURL;
    if (CFURLCopyParameterString_onceToken == -1)
    {
      goto LABEL_7;
    }

    v5 = &CFURLCopyParameterString_onceToken;
    v6 = v8;
    goto LABEL_10;
  }

  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __CFURLCopyParameterString_block_invoke_35;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = anURL;
  if (CFURLCopyParameterString_onceToken_34 != -1)
  {
    v5 = &CFURLCopyParameterString_onceToken_34;
    v6 = block;
LABEL_10:
    dispatch_once(v5, v6);
  }

LABEL_7:
  v3 = *MEMORY[0x1E69E9840];
  return 0;
}

CFTypeRef CFRunArrayInsert(CFTypeRef result, uint64_t a2, uint64_t a3, const void *a4)
{
  v30 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    v7 = result;
    v8 = *(result + 2);
    os_unfair_lock_lock(&runArrayLock);
    if (*v8 >= 2)
    {
      __CFRunArrayMakeNewList(v7, v8);
      v8 = v7[2];
    }

    os_unfair_lock_unlock(&runArrayLock);
    if (a2 == v8[1])
    {
      if (a2 < 1)
      {
        __CFRunArraySetBlockCapacity(v7, 1);
        v8 = v7[2];
        result = CFRetain(a4);
        v8[6] = a3;
        v8[7] = result;
        v13 = v8[2];
      }

      else
      {
        result = CFEqual(a4, v8[2 * v8[2] + 5]);
        v9 = v8[2];
        if (result)
        {
          v8[2 * v9 + 4] += a3;
          if (v8[4] >= v9)
          {
            v8[5] += a3;
          }

          goto LABEL_20;
        }

        __CFRunArraySetBlockCapacity(v7, v9 + 1);
        v8 = v7[2];
        result = CFRetain(a4);
        v13 = v8[2];
        v15 = &v8[2 * v13];
        v15[6] = a3;
        v15[7] = result;
      }

      v8[2] = v13 + 1;
LABEL_20:
      v8[1] += a3;
      goto LABEL_21;
    }

    v28 = 0;
    v29 = 0;
    v10 = blockForLocation(v8, a2, &v28);
    v11 = &v8[2 * v10 + 6];
    result = CFEqual(a4, *(v11 + 8));
    if (result)
    {
      goto LABEL_10;
    }

    v14 = v28;
    if (v10 >= 1 && v28 == a2)
    {
      result = CFEqual(a4, *(v11 - 8));
      if (result)
      {
        *(v11 - 16) += a3;
        if (v8[4] < v10)
        {
          goto LABEL_20;
        }

        v11 = (v8 + 5);
LABEL_10:
        v12 = a3;
LABEL_11:
        *v11 += v12;
        goto LABEL_20;
      }

      v14 = v28;
    }

    v17 = v8[2];
    if (v14 == a2)
    {
      __CFRunArraySetBlockCapacity(v7, v17 + 1);
      v8 = v7[2];
      v11 = (v8 + 2);
      v18 = v8[2];
      if (v18 > v10)
      {
        v19 = &v8[2 * v18 + 6];
        do
        {
          --v18;
          *v19 = *(v19 - 1);
          v19 -= 2;
        }

        while (v18 > v10);
      }

      result = CFRetain(a4);
      v20 = &v8[2 * v10];
      v20[6] = a3;
      v20[7] = result;
      v12 = 1;
    }

    else
    {
      __CFRunArraySetBlockCapacity(v7, v17 + 2);
      v8 = v7[2];
      v11 = (v8 + 2);
      v21 = v8[2];
      v22 = v10 + 2;
      if (v21 + 1 >= v10 + 2)
      {
        v23 = v21 + 2;
        v24 = &v8[2 * v21 + 8];
        do
        {
          *v24 = *(v24 - 2);
          v24 -= 2;
          --v23;
        }

        while (v23 > v22);
      }

      v25 = CFRetain(a4);
      v26 = &v8[2 * v10 + 6];
      *(v26 + 16) = a3;
      *(v26 + 24) = v25;
      *v26 = a2 - v28;
      result = CFRetain(*(v26 + 8));
      v27 = &v8[2 * v22 + 6];
      *v27 = v29 - a2 + v28;
      v27[1] = result;
      v12 = 2;
    }

    goto LABEL_11;
  }

LABEL_21:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

void *__CFRunArraySetBlockCapacity(void *result, uint64_t a2)
{
  if (a2 <= 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = a2;
  }

  v3 = *(result[2] + 24);
  if (v3 < v2 || v3 / 2 > v2)
  {
    v5 = result;
    v6 = v2 + 3;
    v7 = CFGetAllocator(result);
    result = __CFSafelyReallocateWithAllocatorTyped(v7, v5[2], ((v6 / 3) << 6) | 0x30, 0x1000040EED21634, 0, 0);
    v5[2] = result;
    result[3] = 4 * (v6 / 3);
  }

  return result;
}

CFMutableAttributedStringRef CFAttributedStringCreateMutableCopy(CFAllocatorRef alloc, CFIndex maxLength, CFAttributedStringRef aStr)
{
  if (CF_IS_OBJC(0x3EuLL, aStr))
  {

    return [(__CFAttributedString *)aStr mutableCopy];
  }

  else
  {
    Length = CFStringGetLength(*(aStr + 2));

    return __CFAttributedStringCreateMutableWithSubstring(alloc, aStr, 0, Length);
  }
}

uint64_t __CFStringEncodingGetFromWindowsCodePage(int a1)
{
  v5[1] = *MEMORY[0x1E69E9840];
  if (a1 <= 64999)
  {
    switch(a1)
    {
      case 0:
        result = 0xFFFFFFFFLL;
        goto LABEL_27;
      case 1200:
        result = 256;
        goto LABEL_27;
      case 1201:
        result = 268435712;
        goto LABEL_27;
    }
  }

  else if (a1 > 65004)
  {
    if (a1 == 65005)
    {
      result = 201326848;
      goto LABEL_27;
    }

    if (a1 == 65006)
    {
      result = 402653440;
      goto LABEL_27;
    }
  }

  else
  {
    if (a1 == 65000)
    {
      result = 67109120;
      goto LABEL_27;
    }

    if (a1 == 65001)
    {
      result = 134217984;
      goto LABEL_27;
    }
  }

  if ((a1 - 28591) > 0xF)
  {
    v5[0] = 0;
    os_unfair_lock_lock_with_options();
    if (!__CFStringEncodingGetFromWindowsCodePage_mappingTable)
    {
      v3 = 0;
      __CFStringEncodingGetFromWindowsCodePage_mappingTable = CFDictionaryCreateMutable(0, 0, 0, 0);
      do
      {
        if (__CFWindowsCPList[v3])
        {
          CFDictionarySetValue(__CFStringEncodingGetFromWindowsCodePage_mappingTable, __CFWindowsCPList[v3], __CFKnownEncodingList[v3]);
        }

        ++v3;
      }

      while (v3 != 98);
    }

    os_unfair_lock_unlock(&__CFStringEncodingGetFromWindowsCodePage_lock);
    if (CFDictionaryGetValueIfPresent(__CFStringEncodingGetFromWindowsCodePage_mappingTable, a1, v5))
    {
      result = LODWORD(v5[0]);
    }

    else
    {
      result = 0xFFFFFFFFLL;
    }
  }

  else
  {
    result = (a1 - 28078);
  }

LABEL_27:
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFMutableAttributedStringRef CFAttributedStringCreateMutable(CFAllocatorRef alloc, CFIndex maxLength)
{
  Instance = _CFRuntimeCreateInstance(alloc, 0x3EuLL, 16, 0, v2, v3, v4, v5);
  if (Instance)
  {
    *(Instance + 2) = CFStringCreateMutable(alloc, maxLength);
    *(Instance + 3) = CFRunArrayCreate(alloc, v9, v10, v11, v12, v13, v14, v15);
  }

  return Instance;
}

CFDataRef CFURLCreateData(CFAllocatorRef allocator, CFURLRef url, CFStringEncoding encoding, Boolean escapeWhitespace)
{
  if (!url)
  {
    return 0;
  }

  v6 = CFURLGetString(url);
  if (!v6)
  {
    return 0;
  }

  return CFStringCreateExternalRepresentation(allocator, v6, encoding, 0);
}

void __CFURLCopyParameterString_block_invoke_35(uint64_t a1)
{
  v2 = _CFOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __CFURLCopyParameterString_block_invoke_35_cold_1(a1, v2);
  }
}

void __CFFileDescriptorDeallocate(uint64_t a1)
{
  v16 = *MEMORY[0x1E69E9840];
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
    v12 = 0;
    v13 = &v12;
    v14 = 0x2000000000;
    v15 = 0;
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v2 = __fdQueue();
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = ____CFFileDescriptorDeallocate_block_invoke;
    v7[3] = &unk_1E6D7DC78;
    v7[5] = &v12;
    v7[6] = a1;
    v7[4] = &v8;
    dispatch_sync(v2, v7);
    if (*(v9 + 24))
    {
      v3 = v13[3];
      if (v3)
      {
        CFRunLoopSourceInvalidate(v3);
        CFRelease(v13[3]);
      }

      v4 = *(a1 + 80);
      *(a1 + 80) = 0;
      v5 = *(a1 + 96);
      if (v5)
      {
        v5(v4);
      }

      *(a1 + 16) = 2;
      __dmb(0xBu);
    }

    *(a1 + 16) = 3;
    _Block_object_dispose(&v8, 8);
    _Block_object_dispose(&v12, 8);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void sub_18319B2A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 72), 8);
  _Unwind_Resume(a1);
}

__CFAttributedString *__CFAttributedStringCreateMutableWithSubstring(const __CFAllocator *a1, CFStringRef *a2, CFIndex a3, CFIndex a4)
{
  v18 = *MEMORY[0x1E69E9840];
  Mutable = CFAttributedStringCreateMutable(a1, 0);
  v20.location = a3;
  v20.length = a4;
  v9 = CFStringCreateWithSubstring(a1, a2[2], v20);
  v19.location = 0;
  v19.length = 0;
  CFAttributedStringReplaceString(Mutable, v19, v9);
  CFRelease(v9);
  if (a4 >= 1)
  {
    v10 = a3 + a4;
    v11 = a3;
    do
    {
      effectiveRange.location = 0;
      effectiveRange.length = 0;
      Attributes = CFAttributedStringGetAttributes(a2, v11, &effectiveRange);
      if (effectiveRange.location + effectiveRange.length <= v10)
      {
        v13.length = effectiveRange.location - v11 + effectiveRange.length;
      }

      else
      {
        v13.length = v10 - v11;
      }

      if (effectiveRange.location != v11 || effectiveRange.location + effectiveRange.length > v10)
      {
        effectiveRange.length = v13.length;
      }

      v13.location = v11 - a3;
      CFAttributedStringSetAttributes(Mutable, v13, Attributes, 1u);
      v11 += effectiveRange.length;
    }

    while (v11 < v10);
  }

  v15 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void CFAttributedStringReplaceString(CFMutableAttributedStringRef aStr, CFRange range, CFStringRef replacement)
{
  length = range.length;
  location = range.location;
  if (CF_IS_OBJC(0x3EuLL, aStr))
  {

    [(__CFAttributedString *)aStr replaceCharactersInRange:location withString:length, replacement];
    return;
  }

  v7 = CFStringGetLength(replacement);
  v8 = v7;
  if (v7 >= 1)
  {
    if (length >= 1)
    {
      ValueAtIndex = CFRunArrayGetValueAtIndex(*(aStr + 3), location, 0, 0);
      CFRetain(ValueAtIndex);
      goto LABEL_10;
    }

    v10 = location - 1;
    if (location < 1)
    {
      if (CFStringGetLength(*(aStr + 2)) < 1)
      {
        v14 = CFGetAllocator(aStr);
        ValueAtIndex = CFDictionaryCreateMutable(v14, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
LABEL_19:
        CFRunArrayInsert(*(aStr + 3), location, v8, ValueAtIndex);
        if (ValueAtIndex)
        {
LABEL_20:
          CFRelease(ValueAtIndex);
          goto LABEL_21;
        }

        goto LABEL_21;
      }

      v11 = *(aStr + 3);
      v10 = 0;
    }

    else
    {
      v11 = *(aStr + 3);
    }

    ValueAtIndex = CFRunArrayGetValueAtIndex(v11, v10, 0, 0);
    CFRetain(ValueAtIndex);
    goto LABEL_19;
  }

  if (length >= 1)
  {
    ValueAtIndex = 0;
LABEL_10:
    CFRunArrayReplace(*(aStr + 3), location, length, ValueAtIndex, v8);
    if (!ValueAtIndex)
    {
      goto LABEL_21;
    }

    goto LABEL_20;
  }

  if (v7)
  {
    ValueAtIndex = 0;
    goto LABEL_19;
  }

LABEL_21:
  v12 = *(aStr + 2);
  v13.location = location;
  v13.length = length;

  CFStringReplace(v12, v13, replacement);
}

uint64_t __CFFileDescriptorCreate_block_invoke_3(uint64_t a1)
{
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);

  return close(v2);
}

uint64_t CFRunArrayGetValueAtIndex(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = blockForLocation(*(a1 + 16), a2, a3);
  if (a4)
  {
    *a4 = v6;
  }

  return *(*(a1 + 16) + 16 * v6 + 56);
}

uint64_t __CFFileDescriptorCreate_block_invoke_5(uint64_t a1)
{
  dispatch_release(*(a1 + 32));
  v2 = *(a1 + 40);

  return close(v2);
}

void CFAttributedStringSetAttributes(CFMutableAttributedStringRef aStr, CFRange range, CFDictionaryRef replacement, Boolean clearOtherAttributes)
{
  v4 = MEMORY[0x1EEE9AC00](aStr, range.location);
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v12 = v11;
  v13 = v4;
  v111 = *MEMORY[0x1E69E9840];
  v14 = CF_IS_OBJC(0x3EuLL, v4);
  if (v6)
  {
    if (v14)
    {
      v15 = *MEMORY[0x1E69E9840];

      [v13 setAttributes:v8 range:{v12, v10}];
      return;
    }

    if (v10)
    {
      v17 = CFGetAllocator(v13);
      AttributesDictionary = __CFAttributedStringCreateAttributesDictionary(v17, v8);
      CFRunArrayReplace(v13[3], v12, v10, AttributesDictionary, v10);
      v19 = *MEMORY[0x1E69E9840];

      CFRelease(AttributesDictionary);
      return;
    }

LABEL_42:
    v44 = *MEMORY[0x1E69E9840];
    return;
  }

  if (!v14)
  {
    Count = CFDictionaryGetCount(v8);
    if (!Count)
    {
      goto LABEL_42;
    }

    v21 = Count;
    v110 = 0u;
    v109 = 0u;
    v108 = 0u;
    v107 = 0u;
    v106 = 0u;
    v105 = 0u;
    v104 = 0u;
    v103 = 0u;
    v102 = 0u;
    v101 = 0u;
    v100 = 0u;
    v99 = 0u;
    v98 = 0u;
    v97 = 0u;
    v96 = 0u;
    v95 = 0u;
    v94 = 0u;
    v93 = 0u;
    v92 = 0u;
    v91 = 0u;
    v90 = 0u;
    v89 = 0u;
    v88 = 0u;
    v87 = 0u;
    v86 = 0u;
    v85 = 0u;
    v84 = 0u;
    v83 = 0u;
    v82 = 0u;
    v81 = 0u;
    v80 = 0u;
    *keys = 0u;
    if (Count >= 0xFFFFFFFFFFFFFFFLL)
    {
      CFAttributedStringSetAttributes_cold_1();
    }

    if (Count > 0x100)
    {
      v23 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
      v77 = 0u;
      v78 = 0u;
      v75 = 0u;
      v76 = 0u;
      v73 = 0u;
      v74 = 0u;
      v71 = 0u;
      v72 = 0u;
      v69 = 0u;
      v70 = 0u;
      v67 = 0u;
      v68 = 0u;
      v65 = 0u;
      v66 = 0u;
      v63 = 0u;
      v64 = 0u;
      v61 = 0u;
      v62 = 0u;
      v59 = 0u;
      v60 = 0u;
      v57 = 0u;
      v58 = 0u;
      v55 = 0u;
      v56 = 0u;
      v53 = 0u;
      v54 = 0u;
      v51 = 0u;
      v52 = 0u;
      v49 = 0u;
      v50 = 0u;
      *values = 0u;
      v48 = 0u;
      v22 = malloc_type_malloc(8 * v21, 0xC0040B8AA526DuLL);
    }

    else
    {
      v77 = 0uLL;
      v78 = 0uLL;
      v75 = 0uLL;
      v76 = 0uLL;
      v73 = 0uLL;
      v74 = 0uLL;
      v71 = 0uLL;
      v72 = 0uLL;
      v69 = 0uLL;
      v70 = 0uLL;
      v67 = 0uLL;
      v68 = 0uLL;
      v65 = 0uLL;
      v66 = 0uLL;
      v63 = 0uLL;
      v64 = 0uLL;
      v61 = 0uLL;
      v62 = 0uLL;
      v59 = 0uLL;
      v60 = 0uLL;
      v57 = 0uLL;
      v58 = 0uLL;
      v55 = 0uLL;
      v56 = 0uLL;
      v53 = 0uLL;
      v54 = 0uLL;
      v51 = 0uLL;
      v52 = 0uLL;
      v49 = 0uLL;
      v50 = 0uLL;
      v22 = values;
      v23 = keys;
      *values = 0uLL;
      v48 = 0uLL;
    }

    CFDictionaryGetKeysAndValues(v8, v23, v22);
    if (!v10)
    {
LABEL_38:
      if (v23 != keys)
      {
        free(v23);
      }

      if (v22 != values)
      {
        free(v22);
      }

      goto LABEL_42;
    }

    while (1)
    {
      v45 = 0;
      v46 = 0;
      ValueAtIndex = CFRunArrayGetValueAtIndex(v13[3], v12, &v45, 0);
      v25 = ValueAtIndex;
      v27 = v45;
      v26 = v46;
      v28 = v45 == v12 && v46 <= v10;
      if (!v28)
      {
        goto LABEL_29;
      }

      v29 = v23;
      v30 = v22;
      v31 = v21;
      if (CFGetRetainCount(ValueAtIndex) != 1)
      {
        break;
      }

      do
      {
        v33 = *v29++;
        v32 = v33;
        v34 = *v30++;
        CFDictionarySetValue(v25, v32, v34);
        --v31;
      }

      while (v31);
LABEL_37:
      v12 += v46;
      v10 -= v46;
      if (!v10)
      {
        goto LABEL_38;
      }
    }

    v27 = v45;
    v26 = v46;
LABEL_29:
    v28 = v27 < v12;
    v35 = v27 - v12;
    if (v28)
    {
      v26 += v35;
      v45 = v12;
      v46 = v26;
    }

    if (v26 > v10)
    {
      v46 = v10;
    }

    v36 = CFGetAllocator(v13);
    v37 = __CFAttributedStringCreateAttributesDictionary(v36, v25);
    v38 = v23;
    v39 = v22;
    v40 = v21;
    do
    {
      v42 = *v38++;
      v41 = v42;
      v43 = *v39++;
      CFDictionarySetValue(v37, v41, v43);
      --v40;
    }

    while (v40);
    CFRunArrayReplace(v13[3], v45, v46, v37, v46);
    CFRelease(v37);
    goto LABEL_37;
  }

  v16 = *MEMORY[0x1E69E9840];

  [v13 addAttributes:v8 range:{v12, v10}];
}

uint64_t blockForLocation(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v3 = *(a1 + 40);
  if (a2 <= v3 / 2)
  {
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v4 = *(a1 + 32);
  }

  v5 = a1 + 16 * v4;
  if (v3 <= a2)
  {
    --v4;
    v10 = (v5 + 48);
    do
    {
      v7 = v3;
      v11 = *v10;
      v10 += 2;
      v3 += v11;
      ++v4;
    }

    while (v3 <= a2);
  }

  else
  {
    v6 = (v5 + 32);
    v7 = v3;
    do
    {
      v8 = v4--;
      v9 = *v6;
      v6 -= 2;
      v7 -= v9;
    }

    while (v8 >= 2 && v7 > a2);
  }

  *(a1 + 32) = v4;
  *(a1 + 40) = v7;
  if (a3)
  {
    v12 = *(a1 + 48 + 16 * v4);
    *a3 = v7;
    a3[1] = v12;
  }

  return v4;
}

void CFRunArrayReplace(void *a1, uint64_t a2, uint64_t a3, const void *a4, uint64_t a5)
{
  v48 = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    goto LABEL_50;
  }

  v6 = a4;
  v10 = a1[2];
  v46 = 0;
  v47 = 0;
  if (a5)
  {
    v11 = a4;
  }

  else
  {
    v11 = 0;
  }

  os_unfair_lock_lock(&runArrayLock);
  v44 = a1;
  if (*v10 >= 2)
  {
    __CFRunArrayMakeNewList(a1, v10);
    v10 = a1[2];
  }

  os_unfair_lock_unlock(&runArrayLock);
  v12 = blockForLocation(v10, a2, &v46);
  v13 = v12;
  v10[1] -= a3;
  v45 = a2;
  if (v47 - a2 + v46 >= a3)
  {
    v14 = a3;
  }

  else
  {
    v14 = v47 - a2 + v46;
  }

  v15 = v10 + 6;
  v16 = &v10[2 * v12 + 6];
  v18 = *v16 - v14;
  v17 = *v16 == v14;
  *v16 = v18;
  if (v17)
  {
    CFRelease(*(v16 + 8));
    v18 = *v16;
  }

  if (v18)
  {
    v19 = v13 + 1;
  }

  else
  {
    v19 = v13;
  }

  v20 = a3 - v14;
  if (v20)
  {
    v21 = &v10[2 * v13 + 8];
    do
    {
      v22 = *v21;
      if (v20 >= *v21)
      {
        v23 = *v21;
      }

      else
      {
        v23 = v20;
      }

      *v21 = v22 - v23;
      if (v22 <= v20)
      {
        CFRelease(*(v21 + 8));
      }

      v21 += 16;
      ++v13;
      v20 -= v23;
    }

    while (v20);
  }

  if (v13)
  {
    v13 -= v15[2 * v13] != 0;
  }

  v24 = a5;
  if (v19 > v13)
  {
    v6 = v11;
    v25 = v45;
    goto LABEL_48;
  }

  v26 = v19 - 1;
  if (v19 < 1)
  {
    if (!v11)
    {
      goto LABEL_41;
    }
  }

  else
  {
    if (v19 == v10[4])
    {
      v27 = v10[5] - v15[2 * v26];
      v10[4] = v26;
      v10[5] = v27;
    }

    if (!v11)
    {
LABEL_38:
      if (v13 + 1 < v10[2])
      {
        v31 = &v15[2 * v19];
        v32 = &v15[2 * v13 + 2];
        if (CFEqual(*(v31 - 1), v32[1]))
        {
          v33 = v32[1];
          *(v31 - 2) += *v32;
          CFRelease(v33);
          v6 = 0;
          ++v13;
        }

        else
        {
          v6 = 0;
        }

        v24 = a5;
        goto LABEL_47;
      }

LABEL_41:
      v6 = 0;
      goto LABEL_47;
    }

    v28 = &v15[2 * v19];
    if (CFEqual(*(v28 - 1), v11))
    {
      *(v28 - 2) += a5;
      v10[1] += a5;
      goto LABEL_38;
    }
  }

  v29 = v10[2];
  if (v13 + 1 < v29)
  {
    v30 = &v15[2 * v13 + 2];
    if (CFEqual(v30[1], v11))
    {
      *v30 += a5;
      v10[1] += a5;
      if (v19 < 1)
      {
        goto LABEL_41;
      }

      goto LABEL_38;
    }

    v29 = v10[2];
  }

  if (v19 < v29)
  {
    v34 = CFRetain(v6);
    v6 = 0;
    v35 = &v15[2 * v19];
    *v35 = a5;
    v35[1] = v34;
    v10[1] += a5;
    ++v19;
  }

LABEL_47:
  v25 = v45;
  if (v19 <= v13)
  {
    v38 = v10[2];
    v39 = v38 + ~v13;
    if (v39 >= 1)
    {
      v40 = &v10[2 * v13 + 8];
      v41 = &v10[2 * v19 + 6];
      do
      {
        v42 = *v40;
        v40 += 2;
        *v41 = v42;
        v41 += 2;
        --v39;
      }

      while (v39);
      v38 = v10[2];
    }

    v36 = v44;
    v43 = v38 + v19 - (v13 + 1);
    v10[2] = v43;
    __CFRunArraySetBlockCapacity(v44, v43);
    if (v6)
    {
      goto LABEL_49;
    }

    goto LABEL_50;
  }

LABEL_48:
  v36 = v44;
  if (v6)
  {
LABEL_49:
    CFRunArrayInsert(v36, v25, v24, v6);
  }

LABEL_50:
  v37 = *MEMORY[0x1E69E9840];
}

void __CFAttributedStringDeallocate(uint64_t a1)
{
  CFRelease(*(a1 + 16));
  v2 = *(a1 + 24);

  CFRelease(v2);
}

void __CFRunArrayDeallocate(void *a1)
{
  v2 = a1[2];
  os_unfair_lock_lock(&runArrayLock);
  if (*v2 > 1)
  {
    *v2 = *v2 - 1;

    os_unfair_lock_unlock(&runArrayLock);
  }

  else
  {
    os_unfair_lock_unlock(&runArrayLock);
    if (v2[2] >= 1)
    {
      v3 = 0;
      v4 = v2 + 7;
      do
      {
        v5 = *v4;
        v4 += 2;
        CFRelease(v5);
        ++v3;
      }

      while (v3 < v2[2]);
    }

    v6 = CFGetAllocator(a1);

    CFAllocatorDeallocate(v6, v2);
  }
}

void boundPairReadClose(uint64_t a1, uint64_t a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v6 = 0;
    v7 = 0;
    v8 = 0;
    pthread_mutex_lock((a2 + 104));
    *(a2 + 2) = 1;
    if (!*(a2 + 50))
    {
      if (*(a2 + 52))
      {
        setupScheduledStreamCloseBlock(&v6, *(a2 + 80), *(a2 + 56), *(a2 + 64));
      }

      else
      {
        v4 = *(a2 + 56);
        v3 = *(a2 + 64);
        v6 = 0;
        if (v4)
        {
          CFRetain(v4);
        }

        v7 = v4;
        if (v3)
        {
          CFRetain(v3);
        }

        v8 = v3;
      }
    }

    pthread_mutex_unlock((a2 + 104));
    performUnlockParamsAndDealloc(&v6);
  }

  v5 = *MEMORY[0x1E69E9840];
}