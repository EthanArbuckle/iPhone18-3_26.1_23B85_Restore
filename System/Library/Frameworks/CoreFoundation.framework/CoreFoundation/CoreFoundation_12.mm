void CFStringFold(CFMutableStringRef theString, CFStringCompareFlags theFlags, CFLocaleRef theLocale)
{
  v117 = *MEMORY[0x1E69E9840];
  v3 = atomic_load(&theString->info);
  if ((v3 & 1) == 0)
  {
    v4 = _CFOSLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
    {
      CFStringFold_cold_1(v4, v5, v6, v7, v8, v9, v10, v11);
    }

    goto LABEL_155;
  }

  v13 = theFlags;
  v116 = 0;
  v114 = 0u;
  v115 = 0u;
  v112 = 0u;
  theStringa = 0u;
  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v106 = 0u;
  v107 = 0u;
  *buffer = 0u;
  Length = CFStringGetLength(theString);
  v16 = CF_IS_OBJC(7uLL, theString);
  v97 = v16 != 0;
  v17 = theLocale;
  if ((v13 & 0x20) != 0)
  {
    v17 = theLocale;
    if (!theLocale)
    {
      v17 = CFLocaleCopyCurrent();
    }
  }

  theFlagsa = v13 & 0x181;
  if ((v13 & 0x181) != 0 && Length)
  {
    if (v17)
    {
      SpecialCaseHandlingLanguageIdentifierForLocale = _CFStrGetSpecialCaseHandlingLanguageIdentifierForLocale(v17, 1);
    }

    else
    {
      SpecialCaseHandlingLanguageIdentifierForLocale = 0;
    }

    v18 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v18 = __CFStringComputeEightBitStringEncoding();
    }

    CStringPtrInternal = _CFStringGetCStringPtrInternal(theString, v18, 0, v97);
    if (!CStringPtrInternal || (v13 & 1) != 0 || v18 != 1536)
    {
      *&theStringa = theString;
      *(&v114 + 1) = 0;
      *&v115 = Length;
      CharactersPtr = CFStringGetCharactersPtr(theString);
      v21 = 0;
      *(&theStringa + 1) = CharactersPtr;
      if (!CharactersPtr)
      {
        v21 = _CFStringGetCStringPtrInternal(theString, 0x600u, 0, v97);
      }

      v22 = 0;
      *(&v115 + 1) = 0;
      v116 = 0;
      *&v114 = v21;
      v95 = v17;
      v23 = 0;
      if ((v13 & 0x81) != 0 && CStringPtrInternal)
      {
        v94 = theLocale;
        if (v16)
        {
          v24 = 0;
        }

        else
        {
          v25 = atomic_load(&theString->info);
          p_data = &theString->data;
          if ((v25 & 0x60) != 0)
          {
            v27 = *p_data;
          }

          else
          {
            v28 = atomic_load(&theString->info);
            v27 = &p_data[(v28 & 5) != 4];
          }

          v29 = atomic_load(&theString->info);
          v24 = &v27[(v29 >> 2) & 1];
        }

        if (Length > 0)
        {
          v30 = 0;
          v22 = 0;
          v31 = CStringPtrInternal;
          while (1)
          {
            if (*v31 < 0 || SpecialCaseHandlingLanguageIdentifierForLocale)
            {
              v32 = __CFStringFoldCharacterClusterAtIndex(*(__CFCharToUniCharTable + 2 * *v31), buffer, v30, theFlagsa, SpecialCaseHandlingLanguageIdentifierForLocale, v103, 0, 0);
              v22 = v32;
              if (v32 >= 1)
              {
                if (v32 != 1 || v103[0] > 0x7F || !v24)
                {
                  goto LABEL_43;
                }

                v24[v30] = v103[0];
                v22 = 1;
              }
            }

            else if ((v13 & 1) != 0 && *v31 - 65 <= 0x19)
            {
              if (!v24)
              {
                goto LABEL_43;
              }

              v24[v30] += 32;
            }

            ++v31;
            ++v30;
            if (v31 >= CStringPtrInternal + Length)
            {
              goto LABEL_43;
            }
          }
        }

        v22 = 0;
        v31 = CStringPtrInternal;
LABEL_43:
        v23 = &v31[-CStringPtrInternal];
        theLocale = v94;
      }

      if (Length > v23)
      {
        if (v16)
        {
          Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 2 * (Length - v23), 0x1000040BDFB0063, 0);
          v118.location = v23;
          v118.length = Length - v23;
          CFStringGetCharacters(theString, v118, Typed);
          MutableWithExternalCharactersNoCopy = CFStringCreateMutableWithExternalCharactersNoCopy(&__kCFAllocatorSystemDefault, Typed, Length - v23, Length - v23, 0);
          if (MutableWithExternalCharactersNoCopy)
          {
            v35 = MutableWithExternalCharactersNoCopy;
            CFStringFold(MutableWithExternalCharactersNoCopy, theFlagsa, v17);
            v119.location = v23;
            v119.length = Length - v23;
            CFStringReplace(theString, v119, v35);
            CFRelease(v35);
            goto LABEL_152;
          }
        }

        v100 = 0;
        if (v22 >= 1)
        {
          v101 = v23 + 1;
          v102 = 0;
          __CFStringChangeSizeMultiple(theString, &v101, 1, v22 - 1, 1);
          v36 = atomic_load(&theString->info);
          v37 = v36 & 5;
          v38 = atomic_load(&theString->info);
          v39 = v38 & 0x60;
          if (v37 == 4)
          {
            v40 = &theString->data;
            if (v39)
            {
              v41 = *v40;
            }

            else
            {
              v42 = atomic_load(&theString->info);
              v41 = &v40[(v42 & 5) != 4];
            }

            Length = *v41;
          }

          else if ((v38 & 0x60) != 0)
          {
            Length = theString->length;
          }

          else
          {
            Length = theString->data;
          }

          *&theStringa = theString;
          *(&v114 + 1) = 0;
          *&v115 = Length;
          v43 = CFStringGetCharactersPtr(theString);
          v44 = 0;
          *(&theStringa + 1) = v43;
          if (!v43)
          {
            v44 = _CFStringGetCStringPtrInternal(theString, 0x600u, 0, v97);
          }

          *&v114 = v44;
          *(&v115 + 1) = 0;
          v116 = 0;
          v45 = atomic_load(&theString->info);
          v46 = &theString->data;
          if ((v45 & 0x60) != 0)
          {
            v47 = *v46;
          }

          else
          {
            v48 = atomic_load(&theString->info);
            v47 = &v46[(v48 & 5) != 4];
          }

          v49 = v103;
          v50 = &v47[2 * v23];
          do
          {
            v51 = *v49++;
            *v50 = v51;
            v50 += 2;
          }

          while (v49 < &v103[v22]);
          ++v23;
        }

        if (v23 >= Length)
        {
          goto LABEL_152;
        }

        v96 = &theString->data;
        do
        {
          if (*(&theStringa + 1))
          {
            v52 = *(*(&theStringa + 1) + 2 * *(&v114 + 1) + 2 * v23);
          }

          else if (v114)
          {
            v52 = *(v114 + *(&v114 + 1) + v23);
          }

          else
          {
            v53 = *(&v115 + 1);
            if (v116 <= v23 || *(&v115 + 1) > v23)
            {
              v55 = v23 - 4;
              if (v23 < 4)
              {
                v55 = 0;
              }

              v56 = v55 + 64;
              if (v55 + 64 >= v115)
              {
                v56 = v115;
              }

              *(&v115 + 1) = v55;
              v116 = v56;
              v120.length = v56 - v55;
              v120.location = *(&v114 + 1) + v55;
              CFStringGetCharacters(theStringa, v120, buffer);
              v53 = *(&v115 + 1);
            }

            v52 = buffer[v23 - v53];
          }

          v57 = v52;
          v100 = 0;
          if ((v13 & 0x80) != 0 || SpecialCaseHandlingLanguageIdentifierForLocale || v52 > 0x7Fu)
          {
            v61 = v23 + 1;
            if (v52 >> 10 == 54 && v61 < Length)
            {
              if (*(&theStringa + 1))
              {
                v63 = *(*(&theStringa + 1) + 2 * *(&v114 + 1) + 2 * v61);
              }

              else if (v114)
              {
                v63 = *(v114 + *(&v114 + 1) + v61);
              }

              else
              {
                if (v116 <= v61 || (v64 = *(&v115 + 1), *(&v115 + 1) > v61))
                {
                  v65 = v23 - 3;
                  if (v23 < 3)
                  {
                    v65 = 0;
                  }

                  v66 = v65 + 64;
                  if (v65 + 64 >= v115)
                  {
                    v66 = v115;
                  }

                  *(&v115 + 1) = v65;
                  v116 = v66;
                  v121.length = v66 - v65;
                  v121.location = *(&v114 + 1) + v65;
                  CFStringGetCharacters(theStringa, v121, buffer);
                  v64 = *(&v115 + 1);
                }

                v63 = buffer[v61 - v64];
              }

              v67 = v63 >> 10 == 55;
              v68 = (v57 << 10) + v63 - 56613888;
              if (v67)
              {
                v57 = v68;
              }
            }

            v69 = __CFStringFoldCharacterClusterAtIndex(v57, buffer, v23, theFlagsa, SpecialCaseHandlingLanguageIdentifierForLocale, v103, &v100, 0);
            v59 = v100;
            if (v100 < 1)
            {
              v60 = 1;
              v17 = v95;
              goto LABEL_151;
            }

            v60 = v69;
            v58 = &v103[v69];
            v17 = v95;
            if (v69 < 1)
            {
              v72 = 0;
              goto LABEL_117;
            }
          }

          else
          {
            if ((v13 & 1) == 0 || (v52 - 65) > 0x19u)
            {
              v60 = 1;
              goto LABEL_151;
            }

            v100 = 1;
            v103[0] = v52 | 0x20;
            v58 = v104;
            v59 = 1;
            v60 = 1;
          }

          v70 = v103;
          do
          {
            v71 = v70 + 1;
            if (*(v70 + 1))
            {
              ++v60;
            }

            ++v70;
          }

          while (v71 < v58);
          v72 = 1;
LABEL_117:
          if (v60 == v59)
          {
            v73 = atomic_load(&theString->info);
            if ((v73 & 0x10) != 0)
            {
              goto LABEL_134;
            }

            v59 = v100;
          }

          v74 = v59 - v60;
          if (v59 < v60)
          {
            v74 = 0;
            v75 = v60 - v59;
          }

          else
          {
            v59 = v60;
            v75 = 0;
          }

          v101 = v59 + v23;
          v102 = v74;
          __CFStringChangeSizeMultiple(theString, &v101, 1, v75, 1);
          v76 = atomic_load(&theString->info);
          v77 = atomic_load(&theString->info);
          v78 = v77 & 0x60;
          if ((v76 & 5) == 4)
          {
            if (v78)
            {
              v79 = *v96;
            }

            else
            {
              v80 = atomic_load(&theString->info);
              v79 = &v96[(v80 & 5) != 4];
            }

            Length = *v79;
          }

          else if (v78)
          {
            Length = theString->length;
          }

          else
          {
            Length = *v96;
          }

          *&theStringa = theString;
          *(&v114 + 1) = 0;
          *&v115 = Length;
          v81 = CFStringGetCharactersPtr(theString);
          v82 = 0;
          *(&theStringa + 1) = v81;
          if (!v81)
          {
            v82 = _CFStringGetCStringPtrInternal(theString, 0x600u, 0, v97);
          }

          *&v114 = v82;
          *(&v115 + 1) = 0;
          v116 = 0;
LABEL_134:
          v83 = atomic_load(&theString->info);
          if ((v83 & 0x60) != 0)
          {
            v84 = *v96;
            if (v72)
            {
              goto LABEL_138;
            }

            goto LABEL_151;
          }

          v85 = atomic_load(&theString->info);
          v84 = &v96[(v85 & 5) != 4];
          if (v72)
          {
LABEL_138:
            v86 = &v84[2 * v23];
            v87 = v103;
            v88 = v103;
            do
            {
              v90 = *v88++;
              v89 = v90;
              v91 = HIWORD(v90);
              if (HIWORD(v90))
              {
                if (v91 > 0x10)
                {
                  goto LABEL_146;
                }

                *v86 = ((v89 + 67043328) >> 10) - 10240;
                v86 += 2;
                LOWORD(v92) = v89 & 0x3FF | 0xDC00;
              }

              else
              {
                if ((v89 & 0xFC00) != 0xD800)
                {
                  if ((v89 & 0xFC00) == 0xDC00)
                  {
                    LOWORD(v92) = -3;
                  }

                  else
                  {
                    LOWORD(v92) = v89;
                  }

                  goto LABEL_150;
                }

                if (v88 >= v58 || (v92 = *v88, *v88 >> 10 != 55))
                {
LABEL_146:
                  LOWORD(v92) = -3;
                  goto LABEL_150;
                }

                *v86 = v89;
                v86 += 2;
                v88 = v87 + 2;
              }

LABEL_150:
              *v86 = v92;
              v86 += 2;
              v87 = v88;
            }

            while (v88 < v58);
          }

LABEL_151:
          v23 += v60;
        }

        while (v23 < Length);
      }
    }
  }

LABEL_152:
  if (!theLocale && v17)
  {
    CFRelease(v17);
  }

LABEL_155:
  v93 = *MEMORY[0x1E69E9840];
}

uint64_t checkFileWriteData(_OWORD *a1, uint64_t a2, int a3, const char *a4, uint64_t a5, unsigned int a6)
{
  v21 = *MEMORY[0x1E69E9840];
  v10 = *MEMORY[0x1E69E9BC0] | a6 | *MEMORY[0x1E69E9BB8];
  v11 = a1[1];
  v20[0] = *a1;
  v20[1] = v11;
  v12 = sandbox_check_by_audit_token();
  if (v12)
  {
    v13 = openat(a3, a4, 536871426, a5);
    if ((v13 & 0x80000000) == 0)
    {
      v14 = v13;
      bzero(v20, 0x400uLL);
      fcntl(v14, 50, v20);
      v15 = a1[1];
      *&v19.st_dev = *a1;
      v12 = sandbox_check_by_audit_token();
      memset(&v19, 0, sizeof(v19));
      v16 = fstat(v14, &v19);
      close(v14);
      if (!v16 && !v19.st_size)
      {
        unlinkat(a3, a4, 2048);
      }
    }
  }

  v17 = *MEMORY[0x1E69E9840];
  return v12;
}

CFURLRef CFBundleCopyBuiltInPlugInsURL(CFBundleRef bundle)
{
  __CFCheckCFInfoPACSignature(bundle);
  v2 = _CFGetNonObjCTypeID(bundle);
  if (v2 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v2);
  }

  v3 = CFGetAllocator(bundle);
  v4 = v3;
  v5 = *(bundle + 53);
  if (v5 > 0xB)
  {
    if (v5 == 12)
    {
      v8 = CFGetAllocator(bundle);
      v9 = *(bundle + 2);
      v10 = @"WrappedBundle/Contents/PlugIns/";
    }

    else
    {
      if (v5 != 13)
      {
LABEL_9:
        v6 = *(bundle + 2);
        v7 = @"PlugIns/";
        goto LABEL_11;
      }

      v8 = CFGetAllocator(bundle);
      v9 = *(bundle + 2);
      v10 = @"WrappedBundle/PlugIns/";
    }

    v11 = _CFURLCreateResolvedDirectoryWithString(v8, v10, v9);
    goto LABEL_14;
  }

  if (v5 == 1)
  {
    v6 = *(bundle + 2);
    v7 = @"Support%20Files/PlugIns/";
    goto LABEL_11;
  }

  if (v5 != 2)
  {
    goto LABEL_9;
  }

  v6 = *(bundle + 2);
  v7 = @"Contents/PlugIns/";
LABEL_11:
  v11 = CFURLCreateWithString(v3, v7, v6);
LABEL_14:
  v12 = v11;
  if (v11 && _CFURLExists(v11))
  {
    return v12;
  }

  v13 = *(bundle + 53);
  if (v13 <= 0xB)
  {
    if (v13 == 1)
    {
      v14 = *(bundle + 2);
      v15 = @"Support%20Files/Plug-ins/";
      goto LABEL_25;
    }

    if (v13 == 2)
    {
      v14 = *(bundle + 2);
      v15 = @"Contents/Plug-ins/";
LABEL_25:
      v19 = CFURLCreateWithString(v4, v15, v14);
      goto LABEL_28;
    }

LABEL_23:
    v14 = *(bundle + 2);
    v15 = @"Plug-ins/";
    goto LABEL_25;
  }

  if (v13 == 12)
  {
    v16 = CFGetAllocator(bundle);
    v17 = *(bundle + 2);
    v18 = @"WrappedBundle/Contents/Plug-ins/";
  }

  else
  {
    if (v13 != 13)
    {
      goto LABEL_23;
    }

    v16 = CFGetAllocator(bundle);
    v17 = *(bundle + 2);
    v18 = @"WrappedBundle/Plug-ins/";
  }

  v19 = _CFURLCreateResolvedDirectoryWithString(v16, v18, v17);
LABEL_28:
  v20 = v19;
  if (v19)
  {
    v21 = _CFURLExists(v19);
    if (v12 || !v21)
    {
      if (v21)
      {
        v22 = v20;
      }

      else
      {
        v22 = v12;
      }

      if (v21)
      {
        v23 = v12;
      }

      else
      {
        v23 = v20;
      }

      CFRelease(v23);
      return v22;
    }

    else
    {
      return v20;
    }
  }

  return v12;
}

uint64_t _hasNet(const __CFString *a1)
{
  if (CFStringGetLength(a1) < 2)
  {
    return 0;
  }

  CharacterAtIndex = CFStringGetCharacterAtIndex(a1, 0);
  v3 = 1;
  v4 = CFStringGetCharacterAtIndex(a1, 1);
  if (CharacterAtIndex != 92 || v4 != 92)
  {
    return 0;
  }

  return v3;
}

const __CFString *_unescapedFragment(void *a1)
{
  if (CF_IS_OBJC(0x1DuLL, a1))
  {
    v2 = [a1 fragment];
    v3 = v2;
    if (v2)
    {
      CFRetain(v2);
    }

    return v3;
  }

  else
  {

    return _retainedComponentString(a1, 256, 0, 0);
  }
}

CFStringRef CFURLCopyFragment(CFURLRef anURL, CFStringRef charactersToLeaveEscaped)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCopyFragment_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, anURL))
    {
      anURL = [(__CFURL *)anURL _cfurl];
    }

    v4 = [(__CFURL *)anURL _fragment:charactersToLeaveEscaped];

    return v4;
  }

  else
  {
    v6 = _unescapedFragment(anURL);
    if (!v6)
    {
      return 0;
    }

    v7 = v6;
    v8 = *(anURL + 5);
    v9 = CFGetAllocator(anURL);
    if (v8 == 134217984)
    {
      v10 = CFURLCreateStringByReplacingPercentEscapes(v9, v7, charactersToLeaveEscaped);
    }

    else
    {
      v10 = CFURLCreateStringByReplacingPercentEscapesUsingEncoding(v9, v7, charactersToLeaveEscaped, *(anURL + 5));
    }

    v11 = v10;
    CFRelease(v7);
    return v11;
  }
}

uint64_t _useLoctableInsteadOfFileBasedOnVersion(CFTypeRef *a1, CFTypeRef *a2, unsigned int a3, CFTypeRef cf)
{
  if (!cf)
  {
    return 0;
  }

  v7 = *a1;
  if (v7)
  {
    if (_CFBundleGetFileVersionForStringsResourceURL(v7) >= a3)
    {
      return 0;
    }

    if (*a1)
    {
      CFRelease(*a1);
    }
  }

  *a1 = 0;
  if (*a2)
  {
    CFRelease(*a2);
  }

  *a2 = CFRetain(cf);
  return 1;
}

void _CFBundleEnsureBundlesUpToDateWithHint(const __CFString *a1)
{
  CFBundleGetMainBundle();
  v2 = _CFBundleDYLDCopyLoadedImagePathsForHint(a1);
  if (v2)
  {
    v3 = v2;
    _CFBundleEnsureBundlesExistForImagePaths(v2);

    CFRelease(v3);
  }
}

CFDictionaryRef CFBundleCopyLocalizedStringTableForLocalization(unint64_t *a1, __CFString *a2, const void *a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = a3;
  __CFCheckCFInfoPACSignature(a1);
  v6 = _CFGetNonObjCTypeID(a1);
  if (v6 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v6);
  }

  CFBundleAllowMixedLocalizations();
  if (!a2 || CFEqual(a2, &stru_1EF068AA8))
  {
    a2 = @"Localizable";
  }

  if (!a3)
  {
    v8 = _copyStringTable(a1, a2, 0, 0, 0, 0);
    if (v8)
    {
      goto LABEL_9;
    }

LABEL_11:
    v8 = CFDictionaryCreate(&__kCFAllocatorSystemDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    goto LABEL_9;
  }

  v7 = CFArrayCreate(0, v11, 1, &kCFTypeArrayCallBacks);
  v8 = _copyStringTable(a1, a2, 0, v7, 0, 0);
  if (v7)
  {
    CFRelease(v7);
  }

  if (!v8)
  {
    goto LABEL_11;
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return v8;
}

CFStringRef _CFBundleCopyLanguageForStringsResourceURL(const __CFURL *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = CFURLCopyPath(a1);
  v8.length = CFStringGetLength(v1);
  result.location = 0;
  result.length = 0;
  v5.location = 0;
  v5.length = 0;
  v8.location = 0;
  if (CFStringFindWithOptions(v1, @".lproj", v8, 4uLL, &result) && (v9.length = result.location, v9.location = 0, CFStringFindWithOptions(v1, @"/", v9, 4uLL, &v5)))
  {
    v10.location = v5.length + v5.location;
    v10.length = result.location - (v5.length + v5.location);
    v2 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v1, v10);
  }

  else
  {
    v2 = 0;
  }

  CFRelease(v1);
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

__CFArray *_CFBundleDYLDCopyLoadedImagePathsForHint(const __CFString *a1)
{
  v31 = *MEMORY[0x1E69E9840];
  v2 = _dyld_image_count();
  theArray = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  Length = CFStringGetLength(a1);
  result.location = 0;
  result.length = 0;
  v4 = _CFProcessPath();
  v5 = _NSGetMachExecuteHeader();
  location = 0;
  if (Length >= 15)
  {
    v32.location = 0;
    v32.length = Length;
    if (!CFStringFindWithOptions(a1, @".framework", v32, 0xDuLL, &result) || (location = result.location, result.location < 1) || result.length <= 0)
    {
      v33.location = 0;
      v33.length = Length;
      if (!CFStringFindWithOptions(a1, @"framework", v33, 0xDuLL, &result) || (location = result.location, result.location < 1) || result.length <= 0)
      {
        v34.location = 0;
        v34.length = Length;
        if (CFStringFindWithOptions(a1, @"fw", v34, 0xDuLL, &result))
        {
          v7 = result.length <= 0;
        }

        else
        {
          v7 = 1;
        }

        if (v7 || result.location <= 0)
        {
          location = 0;
        }

        else
        {
          location = result.location;
        }
      }
    }
  }

  v27 = __CFGetDYLDImageSuffix();
  if (v2)
  {
    v9 = 0;
    v26 = v2;
    v24 = v5;
    v25 = v4;
    do
    {
      image_name = _dyld_get_image_name(v9);
      v11 = _CFBundleNormalizedPath(image_name);
      if (v11)
      {
        v12 = v11;
        if ((!v4 || strcmp(v11, v4)) && v5 != _dyld_get_image_header(v9))
        {
          v13 = strrchr(v12, 47);
          if (v13)
          {
            v14 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, v13 + 1);
            if (v14)
            {
              cf = v14;
              v15 = _CFBundleDYLDCreateLoadedImagePathVariants(v27, v14);
              Count = CFArrayGetCount(v15);
              if (Count >= 1)
              {
                v17 = Count;
                for (i = 0; i != v17; ++i)
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v15, i);
                  v35.location = 0;
                  v35.length = Length;
                  if (!CFStringFindWithOptions(a1, ValueAtIndex, v35, 0xDuLL, 0))
                  {
                    if (location < 1)
                    {
                      continue;
                    }

                    v36.location = 0;
                    v36.length = location;
                    if (!CFStringFindWithOptions(a1, ValueAtIndex, v36, 0xDuLL, 0))
                    {
                      continue;
                    }
                  }

                  v20 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, v12);
                  if (v20)
                  {
                    v21 = v20;
                    CFArrayAppendValue(theArray, v20);
                    CFRelease(v21);
                  }
                }
              }

              CFRelease(v15);
              CFRelease(cf);
              v2 = v26;
              v5 = v24;
              v4 = v25;
            }
          }
        }
      }

      ++v9;
    }

    while (v9 != v2);
  }

  v22 = *MEMORY[0x1E69E9840];
  return theArray;
}

uint64_t _stringContainsCharacter(const __CFString *a1, int a2)
{
  v30 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(a1);
  theString = a1;
  v26 = 0;
  v27 = Length;
  CharactersPtr = CFStringGetCharactersPtr(a1);
  CStringPtr = 0;
  v24 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(a1, 0x600u);
  }

  v28 = 0;
  v29 = 0;
  v25 = CStringPtr;
  if (Length >= 1)
  {
    v7 = 0;
    v8 = 0;
    v9 = 0;
    v10 = 64;
    memset(v22, 0, sizeof(v22));
    while (1)
    {
      v11 = v9 >= 4 ? 4 : v9;
      if (v24)
      {
        break;
      }

      if (!v25)
      {
        if (v29 <= v9 || v8 > v9)
        {
          v15 = -v11;
          v16 = v11 + v7;
          v17 = v10 - v11;
          v18 = v9 + v15;
          v19 = v18 + 64;
          if (v18 + 64 >= v27)
          {
            v19 = v27;
          }

          v28 = v18;
          v29 = v19;
          if (v27 < v17)
          {
            v17 = v27;
          }

          v31.location = v18 + v26;
          v31.length = v17 + v16;
          CFStringGetCharacters(theString, v31, v22);
          v8 = v28;
        }

        v12 = v22 - v8;
        goto LABEL_10;
      }

      v13 = v25[v26 + v9];
LABEL_13:
      if (a2 == v13)
      {
        result = 1;
        goto LABEL_28;
      }

      ++v9;
      --v7;
      ++v10;
      if (Length == v9)
      {
        goto LABEL_26;
      }
    }

    v12 = &v24[v26];
LABEL_10:
    v13 = v12[v9];
    goto LABEL_13;
  }

LABEL_26:
  result = 0;
LABEL_28:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

__CFArray *_CFBundleDYLDCreateLoadedImagePathVariants(const char *a1, const __CFString *a2)
{
  v23 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  if (a1)
  {
    if (*a1)
    {
      v5 = CFStringCreateWithCStringNoCopy(&__kCFAllocatorSystemDefault, a1, 0x8000100u, &__kCFAllocatorNull);
      if (v5)
      {
        v6 = v5;
        ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(&__kCFAllocatorSystemDefault, v5, @":");
        CFRelease(v6);
        if (ArrayBySeparatingStrings)
        {
          Length = CFStringGetLength(a2);
          Count = CFArrayGetCount(ArrayBySeparatingStrings);
          if (Count >= 1)
          {
            v10 = Count;
            for (i = 0; i != v10; ++i)
            {
              ValueAtIndex = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, i);
              v13 = CFStringGetLength(ValueAtIndex);
              if (v13)
              {
                v14 = v13;
                result.location = 0;
                result.length = 0;
                v25.location = 0;
                v25.length = Length;
                v15 = CFStringFindWithOptions(a2, @".", v25, 4uLL, &result);
                location = result.location;
                if (!v15)
                {
                  location = Length;
                }

                v17 = location - v14;
                if (location - v14 >= 1)
                {
                  v26.location = location - v14;
                  v26.length = v14;
                  if (CFStringCompareWithOptions(a2, ValueAtIndex, v26, 8uLL) == kCFCompareEqualTo)
                  {
                    MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, a2);
                    if (MutableCopy)
                    {
                      v19 = MutableCopy;
                      v24.location = v17;
                      v24.length = v14;
                      CFStringReplace(MutableCopy, v24, &stru_1EF068AA8);
                      CFArrayAppendValue(Mutable, v19);
                      CFRelease(v19);
                    }
                  }
                }
              }
            }
          }

          CFRelease(ArrayBySeparatingStrings);
        }
      }
    }
  }

  CFArrayAppendValue(Mutable, a2);
  v20 = *MEMORY[0x1E69E9840];
  return Mutable;
}

__CFArray *CFCopySearchPathForDirectoriesInDomains(uint64_t a1, uint64_t a2, int a3)
{
  v19 = *MEMORY[0x1E69E9840];
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  started = sysdir_start_search_path_enumeration_private();
  v6 = MEMORY[0x1865E3930](started, __s);
  if (v6)
  {
    v7 = v6;
    v8 = -1;
    do
    {
      v9 = __s;
      if (a3 && __s[0] == 126)
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          v10 = CFCopyHomeDirectoryURLForUser(0);
          if (v10)
          {
            v11 = v10;
            CFURLGetFileSystemRepresentation(v10, 1u, buffer, 1026);
            v8 = strlen(buffer);
            CFRelease(v11);
          }
        }

        if (strlen(__s) + v8 > 0x401)
        {
          goto LABEL_12;
        }

        v9 = buffer;
        buffer[v8] = 0;
        __strlcat_chk();
      }

      v12 = strlen(v9);
      v13 = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, v9, v12, 1u);
      if (v13)
      {
        v14 = v13;
        CFArrayAppendValue(Mutable, v13);
        CFRelease(v14);
      }

LABEL_12:
      v7 = MEMORY[0x1865E3930](v7, __s);
    }

    while (v7);
  }

  v15 = *MEMORY[0x1E69E9840];
  return Mutable;
}

void CFURLClearResourcePropertyCacheForKey(CFURLRef url, CFStringRef key)
{
  v4 = __CFURLResourceInfoPtr(url);

  MEMORY[0x1EEE00698](url, key, v4);
}

Boolean CFPreferencesAppValueIsForced(CFStringRef key, CFStringRef applicationID)
{
  if (_CFPrefsCurrentProcessIsCFPrefsD())
  {
    v4 = 0;
  }

  else
  {
    if (qword_1ED40BE20 != -1)
    {
      CFPreferencesAppValueIsForced_cold_1();
    }

    v4 = [qword_1ED40BE18 copyPrefs];
  }

  v5 = [(_CFXPreferences *)v4 appValueIsForcedForKey:applicationID appIdentifier:?];

  return v5;
}

void OUTLINED_FUNCTION_10_0(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_10_2(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_debug_impl(a1, log, OS_LOG_TYPE_DEBUG, a4, va, 0x16u);
}

void _CFBundleEnsureBundlesExistForImagePaths(const __CFArray *a1)
{
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v3 = Count;
    for (i = 0; i != v3; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      _CFBundleEnsureBundleExistsForImagePath(ValueAtIndex, 1);
    }
  }
}

CFArrayRef CFBundleCopyResourceURLsOfTypeInDirectory(CFURLRef bundleURL, CFStringRef resourceType, CFStringRef subDirName)
{
  v13 = *MEMORY[0x1E69E9840];
  if (CFURLGetFileSystemRepresentation(bundleURL, 1u, buffer, 1026))
  {
    v6 = strlen(buffer);
    v7 = CFURLCreateFromFileSystemRepresentation(&__kCFAllocatorSystemDefault, buffer, v6, 1u);
    if (!v7)
    {
      v7 = CFRetain(bundleURL);
    }

    if (_CFBundleCouldBeBundle(v7))
    {
      Resources = _CFBundleCopyFindResources(0, bundleURL, v8, 0, resourceType, subDirName, 0, 1, 0, 0);
      if (!v7)
      {
        goto LABEL_10;
      }

      goto LABEL_9;
    }

    Resources = 0;
    if (v7)
    {
LABEL_9:
      CFRelease(v7);
    }
  }

  else
  {
    Resources = 0;
  }

LABEL_10:
  v10 = *MEMORY[0x1E69E9840];
  return Resources;
}

uint64_t CFUniCharGetNumberOfPlanes(unsigned int a1)
{
  result = 15;
  if (a1 != 1 && a1 != 108)
  {
    if (a1 >= 4)
    {
      if (a1 == 12)
      {
        return 17;
      }

      else
      {
        if (a1 - 16 < 0x54)
        {
          a1 += 85;
        }

        if (a1 > 0x63)
        {
          a1 -= 85;
        }

        return __CFUniCharBitmapDataArray[4 * a1 - 16];
      }
    }

    else
    {
      return 1;
    }
  }

  return result;
}

unint64_t ___CFBasicHashFindBucket_Exponential_NoCollision(uint64_t a1, unint64_t a2)
{
  v3 = *(a1 + 26);
  v4 = __CFBasicHashTableSizes[v3];
  v5 = *(CFBasicHashCallBackPtrs[(*(a1 + 32) >> 49) & 0x1FLL] + 8 * ((*(a1 + 32) >> 44) & 0x1FLL));
  if (v5)
  {
    a2 = v5(a2);
  }

  v6 = a2 / v4 % v4;
  if (v4 <= 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = v4;
  }

  if (!v6)
  {
    v6 = v4 - 1;
  }

  v8 = 48;
  if ((*(a1 + 18) & 4) == 0)
  {
    v8 = 40;
  }

  v9 = *(a1 + v8);
  result = a2 % v4;
  v11 = __CFBasicHashPrimitiveRoots[v3];
  while (*(v9 + 8 * result))
  {
    result = a2 % v4 + v11 * v6;
    if (v4 <= result)
    {
      result %= v4;
    }

    v11 *= __CFBasicHashPrimitiveRoots[v3];
    if (v4 <= v11)
    {
      v11 %= v4;
    }

    if (!--v7)
    {
      return -1;
    }
  }

  return result;
}

CFTimeZoneRef CFTimeZoneCreateWithTimeIntervalFromGMT(CFAllocatorRef allocator, CFTimeInterval ti)
{
  v3 = _CFAutoreleasePoolPush();
  v4 = [NSTimeZone _timeZoneWithSecondsFromGMT:vcvtmd_s64_f64(ti)];
  _CFAutoreleasePoolPop(v3);
  return v4;
}

BOOL __CFStringIsRegionalIndicatorAtIndex(UniChar *buffer, int64_t a2)
{
  if (a2 < 0)
  {
    return 0;
  }

  v4 = *(buffer + 20);
  if (v4 <= a2)
  {
    return 0;
  }

  v5 = *(buffer + 17);
  if (v5)
  {
    v6 = (v5 + 2 * *(buffer + 19) + 2 * a2);
  }

  else
  {
    if (*(buffer + 18))
    {
      return 0;
    }

    if (*(buffer + 22) <= a2 || (v12 = *(buffer + 21), v12 > a2))
    {
      v13 = a2 - 4;
      if (a2 < 4)
      {
        v13 = 0;
      }

      if (v13 + 64 < v4)
      {
        v4 = v13 + 64;
      }

      *(buffer + 21) = v13;
      *(buffer + 22) = v4;
      v17.length = v4 - v13;
      v17.location = *(buffer + 19) + v13;
      CFStringGetCharacters(*(buffer + 16), v17, buffer);
      v12 = *(buffer + 21);
    }

    v6 = &buffer[a2 - v12];
  }

  if (*v6 != 55356)
  {
    return 0;
  }

  v7 = a2 + 1;
  v8 = *(buffer + 20);
  if (v8 <= a2 + 1)
  {
    v10 = 0;
  }

  else
  {
    v9 = *(buffer + 17);
    if (v9)
    {
      v10 = *(v9 + 2 * *(buffer + 19) + 2 * v7);
    }

    else
    {
      v14 = *(buffer + 18);
      if (v14)
      {
        v10 = *(v14 + *(buffer + 19) + v7);
      }

      else
      {
        if (*(buffer + 22) <= v7 || (v15 = *(buffer + 21), v15 > v7))
        {
          v16 = a2 - 3;
          if (a2 < 3)
          {
            v16 = 0;
          }

          if (v16 + 64 < v8)
          {
            v8 = v16 + 64;
          }

          *(buffer + 21) = v16;
          *(buffer + 22) = v8;
          v18.length = v8 - v16;
          v18.location = *(buffer + 19) + v16;
          CFStringGetCharacters(*(buffer + 16), v18, buffer);
          v15 = *(buffer + 21);
        }

        v10 = buffer[v7 - v15];
      }
    }
  }

  return (v10 + 8730) < 0x1Au;
}

void __CFApplySurrogatesInString(uint64_t a1, CFStringRef theString, void (*a3)(uint64_t, uint64_t, uint64_t))
{
  v33 = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(theString);
  theStringa = theString;
  v29 = 0;
  v30 = Length;
  CharactersPtr = CFStringGetCharactersPtr(theString);
  CStringPtr = 0;
  v27 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(theString, 0x600u);
  }

  v31 = 0;
  v32 = 0;
  v28 = CStringPtr;
  if (Length >= 1)
  {
    v9 = 0;
    v10 = 0;
    v11 = 0;
    memset(v25, 0, sizeof(v25));
    do
    {
      if (v27)
      {
        v12 = v27[v29 + v9];
      }

      else if (v28)
      {
        v12 = v28[v29 + v9];
      }

      else
      {
        v13 = v31;
        if (v32 <= v9 || v31 > v9)
        {
          v15 = v9 - 4;
          if (v9 < 4)
          {
            v15 = 0;
          }

          v16 = v15 + 64;
          if (v15 + 64 >= v30)
          {
            v16 = v30;
          }

          v31 = v15;
          v32 = v16;
          v34.length = v16 - v15;
          v34.location = v29 + v15;
          CFStringGetCharacters(theStringa, v34, v25);
          v13 = v31;
        }

        v12 = *(v25 + v9 - v13);
      }

      v17 = v9 + 1;
      if (v12 >> 10 == 54 && v17 < Length)
      {
        if (v27)
        {
          v19 = v27[v29 + v17];
        }

        else if (v28)
        {
          v19 = v28[v29 + v17];
        }

        else
        {
          if (v32 <= v17 || (v20 = v31, v31 > v17))
          {
            v21 = v9 - 3;
            if (v9 < 3)
            {
              v21 = 0;
            }

            v22 = v21 + 64;
            if (v21 + 64 >= v30)
            {
              v22 = v30;
            }

            v31 = v21;
            v32 = v22;
            v35.length = v22 - v21;
            v35.location = v29 + v21;
            CFStringGetCharacters(theStringa, v35, v25);
            v20 = v31;
          }

          v19 = *(v25 + v17 - v20);
        }

        if (v19 >> 10 == 55)
        {
          v23 = ((v12 << 10) + v19 + 2106368) & 0x3FFFFFLL;
          if (v10 + v11 == v23)
          {
            ++v11;
          }

          else
          {
            if (v11 >= 1)
            {
              a3(a1, v10, v11);
            }

            v11 = 1;
            v10 = v23;
          }
        }
      }

      else
      {
        v17 = v9;
      }

      v9 = v17 + 1;
    }

    while (v17 + 1 < Length);
    if (v11 >= 1)
    {
      a3(a1, v10, v11);
    }
  }

  v24 = *MEMORY[0x1E69E9840];
}

CFCharacterSetRef CFCharacterSetCreateWithCharactersInRange(CFAllocatorRef alloc, CFRange theRange)
{
  length = theRange.length;
  location = theRange.location;
  if (theRange.location >> 16 > 0x10 || theRange.length >= 1114113 || theRange.location + theRange.length >= 0x110001uLL)
  {
    result = CFLog(3, @"%s: Range (location: %ld, length: %ld) outside of valid Unicode range (0x0 - 0x10FFFF)", theRange.length, v2, v3, v4, v5, v6, "CFCharacterSetRef CFCharacterSetCreateWithCharactersInRange(CFAllocatorRef, CFRange)");
    qword_1EA849A30 = "CFCharacterSet range is outside of valid Unicode range (0x0 - 0x10FFFF)";
    __break(1u);
  }

  else
  {
    result = _CFRuntimeCreateInstance(alloc, 0x19uLL, 32, 0, v3, v4, v5, v6);
    if (length)
    {
      if (result)
      {
        v10 = atomic_load(result + 1);
        v11 = v10;
        do
        {
          atomic_compare_exchange_strong(result + 1, &v11, v10 & 0xFFFFFFFFFFFFFFFELL);
          v12 = v11 == v10;
          v10 = v11;
        }

        while (!v12);
        v13 = atomic_load(result + 1);
        v14 = v13;
        do
        {
          atomic_compare_exchange_strong(result + 1, &v14, v13 & 0xFFFFFFFFFFFFFF8FLL | 0x10);
          v12 = v14 == v13;
          v13 = v14;
        }

        while (!v12);
        *(result + 2) = 0;
        *(result + 6) = location;
        *(result + 4) = length;
        *(result + 5) = 0;
      }
    }

    else if (result)
    {
      v15 = atomic_load(result + 1);
      v16 = v15;
      do
      {
        atomic_compare_exchange_strong(result + 1, &v16, v15 & 0xFFFFFFFFFFFFFFFELL);
        v12 = v16 == v15;
        v15 = v16;
      }

      while (!v12);
      v17 = atomic_load(result + 1);
      v18 = v17;
      do
      {
        atomic_compare_exchange_strong(result + 1, &v18, v17 & 0xFFFFFFFFFFFFFF8FLL | 0x30);
        v12 = v18 == v17;
        v17 = v18;
      }

      while (!v12);
      *(result + 5) = 0;
      *(result + 2) = 0;
      *(result + 3) = 0;
      v19 = atomic_load(result + 1);
      v20 = v19;
      do
      {
        atomic_compare_exchange_strong(result + 1, &v20, v19 | 4);
        v12 = v20 == v19;
        v19 = v20;
      }

      while (!v12);
    }
  }

  return result;
}

uint64_t CFBundleGetLocalizationInfoForLocalization(CFStringRef localeIdentifier, unsigned int *a2, unsigned int *a3, _DWORD *a4, _DWORD *a5)
{
  ValueAtIndex = localeIdentifier;
  v26 = *MEMORY[0x1E69E9840];
  v24 = -1;
  v25 = -1;
  if (localeIdentifier)
  {
    goto LABEL_2;
  }

  MainBundle = CFBundleGetMainBundle();
  if (!MainBundle || (v16 = _CFBundleCopyLanguageSearchListInBundle(MainBundle)) == 0)
  {
    v16 = _CFBundleCopyUserLanguages();
    if (!v16)
    {
LABEL_13:
      _CFBundleGetLanguageAndRegionCodes(&v25, &v24);
      RegionCodeForLocalization = v24;
      LanguageCodeForLocalization = v25;
      goto LABEL_14;
    }
  }

  v17 = v16;
  if (CFArrayGetCount(v16) <= 0)
  {
    CFRelease(v17);
    goto LABEL_13;
  }

  ValueAtIndex = CFArrayGetValueAtIndex(v17, 0);
  CFRelease(v17);
  if (!ValueAtIndex)
  {
    goto LABEL_13;
  }

LABEL_2:
  v23 = -1;
  v22 = -1;
  v21 = 0;
  v20 = 0;
  result = CFLocaleGetLanguageRegionEncodingForLocaleIdentifier(ValueAtIndex, &v23, &v22, &v21, &v20);
  if (result)
  {
    LanguageCodeForLocalization = v23;
    RegionCodeForLocalization = v22;
    v13 = v21;
    v14 = v20;
    if (!a2)
    {
      goto LABEL_28;
    }

LABEL_27:
    *a2 = LanguageCodeForLocalization;
    goto LABEL_28;
  }

  LanguageCodeForLocalization = _CFBundleGetLanguageCodeForLocalization(ValueAtIndex);
  v25 = LanguageCodeForLocalization;
  RegionCodeForLocalization = _CFBundleGetRegionCodeForLocalization(ValueAtIndex);
  v24 = RegionCodeForLocalization;
LABEL_14:
  if (LanguageCodeForLocalization < 0x99 || RegionCodeForLocalization == -1)
  {
    v18 = LanguageCodeForLocalization != -1;
    if (RegionCodeForLocalization == -1 && LanguageCodeForLocalization != -1)
    {
      RegionCodeForLocalization = _CFBundleGetRegionCodeForLanguageCode(LanguageCodeForLocalization);
      v18 = 1;
    }
  }

  else
  {
    LanguageCodeForLocalization = _CFBundleGetLanguageCodeForRegionCode(RegionCodeForLocalization);
    v18 = LanguageCodeForLocalization != -1;
  }

  if (LanguageCodeForLocalization > 0x97)
  {
    v13 = 0;
    v14 = 0;
  }

  else
  {
    v13 = __CFBundleScriptCodesArray[LanguageCodeForLocalization];
    v14 = __CFBundleStringEncodingsArray[LanguageCodeForLocalization];
  }

  result = RegionCodeForLocalization != -1 || v18;
  if (a2)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (a3)
  {
    *a3 = RegionCodeForLocalization;
  }

  if (a4)
  {
    *a4 = v13;
  }

  if (a5)
  {
    *a5 = v14;
  }

  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void CFStringNormalize(CFMutableStringRef theString, CFStringNormalizationForm theForm)
{
  v2 = theString;
  __src[32] = *MEMORY[0x1E69E9840];
  if (!CF_IS_OBJC(7uLL, theString))
  {
    p_info = &v2->info;
    v5 = atomic_load(&v2->info);
    if ((v5 & 1) == 0)
    {
      v6 = _CFOSLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
      {
        CFStringNormalize_cold_1(v6, v7, v8, v9, v10, v11, v12, v13);
      }

      goto LABEL_264;
    }

    v14 = atomic_load(p_info);
    v15 = v14 & 5;
    v16 = atomic_load(p_info);
    v17 = v16 & 0x60;
    if (v15 == 4)
    {
      p_data = &v2->data;
      if (v17)
      {
        v19 = *p_data;
      }

      else
      {
        v21 = atomic_load(&v2->info);
        v19 = &p_data[(v21 & 5) != 4];
      }

      length = *v19;
    }

    else if ((v16 & 0x60) != 0)
    {
      length = v2->length;
    }

    else
    {
      length = v2->data;
    }

    v22 = atomic_load(&v2->info);
    if ((v22 & 0x10) != 0)
    {
      goto LABEL_27;
    }

    if (theForm == kCFStringNormalizationFormC)
    {
      goto LABEL_264;
    }

    v23 = atomic_load(&v2->info);
    v24 = &v2->data;
    if ((v23 & 0x60) != 0)
    {
      v25 = *v24;
    }

    else
    {
      v26 = atomic_load(&v2->info);
      v25 = &v24[(v26 & 5) != 4];
    }

    v27 = atomic_load(&v2->info);
    if (length < 1)
    {
LABEL_27:
      v29 = 0;
      v136 = 1;
    }

    else
    {
      v28 = (v27 >> 2) & 1;
      if (*(v25 + v28) < 0)
      {
        v136 = 0;
        v29 = 0;
      }

      else
      {
        v29 = 0;
        v30 = v25 + v28 + 1;
        do
        {
          if (length - 1 == v29)
          {
            goto LABEL_264;
          }

          v31 = *(v30 + v29++);
        }

        while ((v31 & 0x80000000) == 0);
        v136 = v29 >= length;
      }

      __src[0] = 0;
      __src[1] = 0;
      __CFStringChangeSizeMultiple(v2, __src, 1, 0, 1);
    }

    if (v29 >= length)
    {
      goto LABEL_264;
    }

    v32 = atomic_load(&v2->info);
    v33 = &v2->data;
    if ((v32 & 0x60) != 0)
    {
      v34 = *v33;
    }

    else
    {
      v35 = atomic_load(&v2->info);
      v34 = &v33[(v35 & 5) != 4];
    }

    v36 = &v34[2 * length];
    v37 = atomic_load(&v2->info);
    v140 = &v2->data;
    if ((v37 & 0x60) != 0)
    {
      v38 = *v33;
    }

    else
    {
      v39 = atomic_load(&v2->info);
      v38 = &v33[(v39 & 5) != 4];
    }

    v40 = &v38[2 * v29];
    BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(9u, 0);
    v41 = CFUniCharGetBitmapPtrForPlane(8u, 0);
    UnicodePropertyDataForPlane = CFUniCharGetUnicodePropertyDataForPlane(0, 0);
    if (v40 >= v36)
    {
LABEL_264:
      v134 = *MEMORY[0x1E69E9840];
      return;
    }

    v150 = v41;
    v151 = UnicodePropertyDataForPlane;
    v135 = UnicodePropertyDataForPlane + 256;
    Typed = __src;
    v44 = 64;
    v139 = v2;
LABEL_37:
    v45 = *v40;
    v46 = (v40 + 2);
    v47 = (v45 & 0xFC00) != 0xD800 || v46 >= v36;
    if (v47 || (v53 = *v46, (v53 & 0xFC00) != 0xDC00))
    {
      v48 = 1;
      v148 = (v40 + 2);
      v49 = *v40;
      v149 = 1;
      v50 = BitmapPtrForPlane;
      if (!BitmapPtrForPlane)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v49 = (v45 << 10) - 56613888 + v53;
      v148 = (v40 + 4);
      v45 = ((v45 << 10) + 9216 + v53);
      v50 = CFUniCharGetBitmapPtrForPlane(9u, HIWORD(v49));
      v48 = 0;
      v149 = 2;
      if (!v50)
      {
        goto LABEL_54;
      }
    }

    if ((*(v50 + (v45 >> 3)) >> (v45 & 7)))
    {
      v51 = v151;
      if ((v48 & 1) == 0)
      {
        v51 = CFUniCharGetUnicodePropertyDataForPlane(0, HIWORD(v49));
      }

      if ((!v51 || !*(v51 + (v45 >> 8)) || !*(v51 + (*(v51 + (v45 >> 8)) << 8) - 256 + v45 + 256)) && ((theForm & 2) == 0 || v49 - 55205 <= 0xFFFFD45A))
      {
        v52 = CFUniCharDecomposeCharacter(v49, Typed, 64);
LABEL_55:
        v147 = v36;
        if (!((theForm >> 1) & 1 | v136) || v148 >= v36 && v52)
        {
          goto LABEL_129;
        }

        if (v52 < 1)
        {
          v54 = v49;
          if (v49 >= 0x10000)
          {
LABEL_68:
            v57 = CFUniCharGetUnicodePropertyDataForPlane(0, HIWORD(v49));
            v56 = 0;
            if (!v57)
            {
              goto LABEL_125;
            }

            goto LABEL_69;
          }

          v56 = 1;
        }

        else
        {
          v54 = *v148;
          if ((v54 & 0xFC00) == 0xD800 && (v148 + 1) < v36)
          {
            v55 = v148[1];
            if ((v55 & 0xFC00) == 0xDC00)
            {
              v49 = (v54 << 10) - 56613888 + v55;
              v54 = ((v54 << 10) + 9216 + v55);
              goto LABEL_68;
            }
          }

          v56 = 1;
          v49 = *v148;
        }

        v57 = v151;
        if (!v151)
        {
LABEL_125:
          v77 = v136;
          if (v52 <= 1)
          {
            v77 = 0;
          }

          if (v77)
          {
            CFUniCharPrioritySort(Typed, v52);
          }

LABEL_129:
          if ((theForm & 1) == 0)
          {
LABEL_142:
            if ((theForm & 2) == 0)
            {
              goto LABEL_231;
            }

            v146 = v29;
            if (v52 < 2)
            {
              if (v49 - 4352 >= 0xFF)
              {
                if (v148 >= v36)
                {
                  goto LABEL_231;
                }

                do
                {
                  v103 = *v148;
                  v104 = v148 + 1;
                  v105 = (v103 & 0xFC00) != 0xD800 || v104 >= v36;
                  if (v105 || (v109 = *v104, (v109 & 0xFC00) != 0xDC00))
                  {
                    if (!v150 || ((*(v150 + (v103 >> 3)) >> (v103 & 7)) & 1) == 0 || v151 && *(v151 + (v103 >> 8)) && *(v135 + (*(v151 + (*v148 >> 8)) << 8) - 256 + *v148))
                    {
                      goto LABEL_231;
                    }
                  }

                  else
                  {
                    LODWORD(v103) = (v103 << 10) - 56613888 + v109;
                    v110 = CFUniCharGetBitmapPtrForPlane(8u, WORD1(v103));
                    if (!v110 || ((*(v110 + (v103 >> 3)) >> (v109 & 7)) & 1) == 0)
                    {
                      v29 = v146;
                      goto LABEL_231;
                    }

                    v111 = CFUniCharGetUnicodePropertyDataForPlane(0, WORD1(v103));
                    if (v111 && *(v111 + BYTE1(v103)))
                    {
                      v29 = v146;
                      if (*(v111 + (*(v111 + BYTE1(v103)) << 8) - 256 + v109 + 256))
                      {
                        goto LABEL_231;
                      }
                    }

                    else
                    {
                      v29 = v146;
                    }
                  }

                  v106 = CFUniCharPrecomposeCharacter(v49, v103);
                  if (v106 == 65533)
                  {
                    goto LABEL_231;
                  }

                  v49 = v106;
                  v107 = 1;
                  if (v103 >= 0x10000)
                  {
                    v107 = 2;
                  }

                  v149 += v107;
                  v108 = 4;
                  if (v103 < 0x10000)
                  {
                    v108 = 2;
                  }

                  *Typed = v106;
                  v52 = 1;
                  v148 = (v148 + v108);
                }

                while (v148 < v36);
              }

              else
              {
                if (v148 >= v36)
                {
                  goto LABEL_231;
                }

                if (v49 > 0x13)
                {
                  goto LABEL_231;
                }

                v97 = *v148 - 4449;
                if (v97 > 0x15)
                {
                  goto LABEL_231;
                }

                if ((v148 + 1) >= v36)
                {
                  v98 = 0;
                  ++v149;
                }

                else
                {
                  v98 = (v148[1] - 4519);
                  if (v148[1] - 4519 > 0x1C)
                  {
                    v99 = v149 + 1;
                  }

                  else
                  {
                    v99 = v149 + 2;
                  }

                  v149 = v99;
                  if (v148[1] - 4519 > 0x1C)
                  {
                    v98 = 0;
                  }
                }

                *Typed = v98 + 28 * (v97 + 21 * v49) + 44032;
              }

              v112 = Typed + 1;
LABEL_233:
              LODWORD(v113) = 0;
              v114 = Typed;
              do
              {
                v115 = v114 + 1;
                if (*(v114 + 1))
                {
                  v116 = 2;
                }

                else
                {
                  v116 = 1;
                }

                v113 = (v116 + v113);
                v114 = v115;
              }

              while (v115 < v112);
              v117 = 0;
LABEL_241:
              if (v149 != v113)
              {
                v153[0] = v29;
                v153[1] = v149;
                __CFStringChangeSizeMultiple(v2, v153, 1, v113, 1);
                v149 = v113;
              }

              v119 = atomic_load(&v2->info);
              if ((v119 & 0x60) != 0)
              {
                v120 = *v140;
              }

              else
              {
                v121 = atomic_load(&v2->info);
                v120 = &v140[(v121 & 5) != 4];
              }

              v122 = atomic_load(&v2->info);
              v123 = atomic_load(&v2->info);
              v124 = v123 & 0x60;
              if ((v122 & 5) == 4)
              {
                if (v124)
                {
                  v125 = *v140;
                }

                else
                {
                  v127 = atomic_load(&v2->info);
                  v125 = &v140[(v127 & 5) != 4];
                }

                v126 = *v125;
              }

              else if (v124)
              {
                v126 = v2->length;
              }

              else
              {
                v126 = *v140;
              }

              if ((v117 & 1) == 0)
              {
                v128 = Typed;
                v129 = &v120[2 * v29];
                do
                {
                  v131 = *v128++;
                  v130 = v131;
                  if (v131 < 0x10000)
                  {
                    v133 = v129 + 2;
                    LOWORD(v132) = v130;
                  }

                  else
                  {
                    v132 = ((v130 + 67043328) >> 10) - 10240;
                    v133 = v129 + 4;
                    *(v129 + 1) = v130 & 0x3FF | 0xDC00;
                  }

                  *v129 = v132;
                  v129 = v133;
                }

                while (v128 < v112);
              }

              v36 = &v120[2 * v126];
              v40 = &v120[2 * v29 + 2 * v113];
              v118 = v149;
              goto LABEL_261;
            }

            v137 = v44;
            v138 = 0;
            v143 = 0;
            v79 = *Typed;
            v80 = Typed;
            v81 = 1;
            while (1)
            {
              v141 = v80;
              v82 = v80;
              v83 = v81;
              v84 = v52;
              v142 = v79;
              while (1)
              {
                v85 = &Typed[v83];
                v86 = *v85;
                v87 = v151;
                if (*v85 >= 0x10000)
                {
                  v87 = CFUniCharGetUnicodePropertyDataForPlane(0, HIWORD(v86));
                }

                if (v87 && *(v87 + BYTE1(v86)))
                {
                  v88 = *(v87 + (*(v87 + BYTE1(v86)) << 8) - 256 + v86 + 256);
                }

                else
                {
                  v88 = 0;
                }

                if ((theForm & 1) == 0)
                {
                  v79 = v142;
                  v80 = v141;
                  goto LABEL_175;
                }

                if (v79 - 4352 <= 0xFE && v79 <= 0x13)
                {
                  v89 = (v86 - 4449);
                  if (v89 <= 0x15)
                  {
                    v91 = v83 + 1;
                    *v85 = 65533;
                    if (v83 + 1 < v84 && (v92 = (Typed[v91] - 4519), v92 <= 0x1C))
                    {
                      Typed[v91] = 65533;
                      v91 = v83 + 2;
                    }

                    else
                    {
                      v92 = 0;
                    }

                    *v82 = v92 + 28 * (v89 + 21 * v79) + 44032;
                    if (v84 >= 2)
                    {
                      v93 = v84 + 1;
                      v94 = &Typed[v84 - 1];
                      v95 = -v84;
                      do
                      {
                        if (*v94 == 65533)
                        {
                          --v91;
                          memmove(v94, v94 + 1, 4 * (v84 + v95));
                          --v84;
                        }

                        --v93;
                        --v94;
                        ++v95;
                      }

                      while (v93 > 2);
                    }

                    v82 = &Typed[v91];
                    v79 = *v82;
                    v83 = v91;
                    goto LABEL_161;
                  }
                }

                v90 = v150;
                if (v86 >= 0x10000)
                {
                  v90 = CFUniCharGetBitmapPtrForPlane(8u, HIWORD(v86));
                }

                if (v90 && ((*(v90 + (v86 >> 3)) >> (v86 & 7)) & 1) != 0)
                {
                  break;
                }

                *v82 = v79;
                v79 = v86;
                v82 = &Typed[v83];
LABEL_161:
                if (++v83 >= v84)
                {
                  v52 = v84;
                  v80 = v82;
                  v2 = v139;
                  v29 = v146;
                  v36 = v147;
                  goto LABEL_193;
                }
              }

              v80 = v82;
              v81 = v83;
              v52 = v84;
LABEL_175:
              v36 = v147;
              if (v143 && v88 <= v143)
              {
                v88 = v143;
              }

              else
              {
                v96 = CFUniCharPrecomposeCharacter(v79, v86);
                if (v96 != 65533)
                {
                  Typed[v81] = 65533;
                  v138 = 1;
                  v79 = v96;
                  v88 = v143;
                }
              }

              ++v81;
              v143 = v88;
              v2 = v139;
              v29 = v146;
              if (v81 >= v52)
              {
LABEL_193:
                *v80 = v79;
                if (v138)
                {
                  v44 = v137;
                  if (v52 > 1)
                  {
                    v100 = v52 + 1;
                    v101 = &Typed[v52 - 1];
                    v102 = -v52;
                    do
                    {
                      if (*v101 == 65533)
                      {
                        memmove(v101, v101 + 1, 4 * (v52 + v102));
                        --v52;
                        v36 = v147;
                      }

                      --v100;
                      --v101;
                      ++v102;
                    }

                    while (v100 > 2);
                  }
                }

                else
                {
                  v44 = v137;
                }

LABEL_231:
                if (v52 >= 1)
                {
                  v112 = &Typed[v52];
                  if (v52)
                  {
                    goto LABEL_233;
                  }

                  v113 = 0;
                  v117 = 1;
                  goto LABEL_241;
                }

                v40 = v148;
                v118 = v149;
LABEL_261:
                v29 += v118;
                if (v40 >= v36)
                {
                  if (Typed != __src)
                  {
                    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
                  }

                  goto LABEL_264;
                }

                goto LABEL_37;
              }
            }
          }

          if (v52)
          {
            if (v52 < 1)
            {
              goto LABEL_141;
            }
          }

          else
          {
            if (!CFUniCharIsMemberOf(v49, 0x64u))
            {
LABEL_141:
              v52 = 0;
              goto LABEL_142;
            }

            *Typed = v49;
            v52 = 1;
          }

          do
          {
            v78 = CFUniCharCompatibilityDecompose(Typed, v52, v44);
            if (!v78)
            {
              v44 += 64;
              if (Typed == __src)
              {
                Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 4 * v44, 0x100004052888210, 0);
                memmove(Typed, __src, 0x100uLL);
              }

              else
              {
                Typed = __CFSafelyReallocateWithAllocatorTyped(&__kCFAllocatorSystemDefault, Typed, 4 * v44, 0x100004052888210, 0, 0);
              }
            }
          }

          while (v78 < v52);
          v52 = v78;
          goto LABEL_142;
        }

LABEL_69:
        if (*(v57 + (v54 >> 8)) && *(v57 + (*(v57 + (v54 >> 8)) << 8) - 256 + v54 + 256))
        {
          if (v52)
          {
            v58 = 1;
            if (!v56)
            {
              v58 = 2;
            }

            v149 += v58;
          }

          else
          {
            v59 = 0x7FFFFFFFFFFFFFFELL;
            if (v56)
            {
              v59 = 0x7FFFFFFFFFFFFFFFLL;
            }

            v60 = &v148[v59];
            v148 = (v148 + v59 * 2);
            if (v29 < 1)
            {
              v52 = 0;
            }

            else
            {
              v61 = *(v60 - 1);
              if ((v61 & 0xFC00) == 0xDC00 && v29 != 1 && (v62 = *(v148 - 2), (v62 & 0xFC00) == 0xD800))
              {
                *Typed = v61 - 56613888 + (v62 << 10);
                v29 -= 2;
                v149 += 2;
                v52 = 1;
              }

              else
              {
                *Typed = v61;
                ++v149;
                v52 = 1;
                --v29;
              }
            }
          }

          if (v56)
          {
            v63 = 2;
          }

          else
          {
            v63 = 4;
          }

          v64 = BitmapPtrForPlane;
          if ((v56 & 1) == 0)
          {
            v64 = CFUniCharGetBitmapPtrForPlane(9u, HIWORD(v49));
          }

          if (v64 && ((*(v64 + (v54 >> 3)) >> (v54 & 7)) & 1) != 0)
          {
            v65 = CFUniCharDecomposeCharacter(v49, &Typed[v52], 64 - v52);
          }

          else
          {
            Typed[v52] = v49;
            v65 = 1;
          }

          v52 += v65;
          v148 = (v148 + v63);
          if (v148 < v36)
          {
            v145 = v29;
            v66 = v148;
            while (1)
            {
              v67 = *v66;
              v148 = v66;
              v68 = v66 + 1;
              v69 = (v67 & 0xFC00) != 0xD800 || v68 >= v36;
              if (v69 || (v74 = *v68, (v74 & 0xFC00) != 0xDC00))
              {
                v70 = 1;
                v49 = *v66;
                v71 = v151;
                if (!v151)
                {
                  break;
                }
              }

              else
              {
                v49 = (v67 << 10) - 56613888 + v74;
                v67 = ((v67 << 10) + 9216 + v74);
                v71 = CFUniCharGetUnicodePropertyDataForPlane(0, HIWORD(v49));
                v70 = 0;
                if (!v71)
                {
                  break;
                }
              }

              if (!*(v71 + (v67 >> 8)) || !*(v71 + (*(v71 + (v67 >> 8)) << 8) - 256 + v67 + 256))
              {
                break;
              }

              if (v70)
              {
                v72 = 1;
              }

              else
              {
                v72 = 2;
              }

              if (v70)
              {
                v73 = 1;
              }

              else
              {
                v73 = 2;
              }

              if (v52 == v44)
              {
                v44 += 64;
                if (Typed == __src)
                {
                  Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 4 * v44, 0x100004052888210, 0);
                  memmove(Typed, __src, 0x100uLL);
                }

                else
                {
                  Typed = __CFSafelyReallocateWithAllocatorTyped(&__kCFAllocatorSystemDefault, Typed, 4 * v44, 0x100004052888210, 0, 0);
                }
              }

              v75 = BitmapPtrForPlane;
              if ((v70 & 1) == 0)
              {
                v75 = CFUniCharGetBitmapPtrForPlane(9u, HIWORD(v49));
              }

              if (v75 && ((*(v75 + (v67 >> 3)) >> (v67 & 7)) & 1) != 0)
              {
                v76 = CFUniCharDecomposeCharacter(v49, &Typed[v52], 64 - v52);
              }

              else
              {
                Typed[v52] = v49;
                v76 = 1;
              }

              v149 += v72;
              v66 = &v148[v73];
              v52 += v76;
              v36 = v147;
              v29 = v145;
              if (v66 >= v147)
              {
                v148 = v66;
                goto LABEL_125;
              }
            }

            v29 = v145;
          }
        }

        goto LABEL_125;
      }
    }

LABEL_54:
    v52 = 0;
    goto LABEL_55;
  }

  v3 = *MEMORY[0x1E69E9840];

  [(__CFString *)v2 _cfNormalize:theForm];
}

CFDateRef CFDateFormatterCreateDateFromString(CFAllocatorRef allocator, CFDateFormatterRef formatter, CFStringRef string, CFRange *rangep)
{
  v7 = allocator;
  at[1] = *MEMORY[0x1E69E9840];
  if (!allocator)
  {
    v8 = _CFGetTSD(1u);
    if (v8)
    {
      v7 = v8;
    }

    else
    {
      v7 = &__kCFAllocatorSystemDefault;
    }
  }

  __CFCheckCFInfoPACSignature(formatter);
  v9 = _CFGetNonObjCTypeID(formatter);
  if (v9 != 56)
  {
    _CFAssertMismatchedTypeID(0x38uLL, v9);
  }

  at[0] = 0.0;
  if (CFDateFormatterGetAbsoluteTimeFromString(formatter, string, rangep, at))
  {
    result = CFDateCreate(v7, at[0]);
  }

  else
  {
    result = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t CFLocaleGetLanguageRegionEncodingForLocaleIdentifier(CFStringRef localeIdentifier, _WORD *a2, _WORD *a3, _WORD *a4, _DWORD *a5)
{
  v27 = *MEMORY[0x1E69E9840];
  CanonicalLocaleIdentifierFromString = CFLocaleCreateCanonicalLocaleIdentifierFromString(0, localeIdentifier);
  if (CanonicalLocaleIdentifierFromString)
  {
    v10 = CanonicalLocaleIdentifierFromString;
    if (!CFStringGetCString(CanonicalLocaleIdentifierFromString, buffer, 257, 0x600u))
    {
LABEL_27:
      v12 = 0;
      goto LABEL_28;
    }

    v23 = 0;
    Language = uloc_getLanguage();
    v12 = 0;
    v13 = Language;
    if (Language < 1)
    {
LABEL_28:
      CFRelease(v10);
      goto LABEL_29;
    }

    __s[Language] = 0;
    __key[0] = __s;
    __key[1] = 0;
    v23 = 0;
    Script = uloc_getScript();
    v15 = Script != 0;
    if (!Script)
    {
      v23 = 0;
      Script = uloc_getCountry();
      if (!Script)
      {
        v23 = 0;
        Script = uloc_getVariant();
      }
    }

    if (Script >= 1)
    {
      v24 = 0;
      __strlcat_chk();
      __strlcat_chk();
    }

    v16 = bsearch(__key, &localeToLegacyCodes, 0xA3uLL, 0x10uLL, CompareLocaleToLegacyCodesEntries);
    if (!v16)
    {
      if (a5)
      {
        v18 = v15;
      }

      else
      {
        v18 = 0;
      }

      v19 = strlen(__s);
      v12 = 0;
      if (v18 || v13 >= v19)
      {
        goto LABEL_28;
      }

      __s[v13] = 0;
      v16 = bsearch(__key, &localeToLegacyCodes, 0xA3uLL, 0x10uLL, CompareLocaleToLegacyCodesEntries);
      if (!v16)
      {
        goto LABEL_27;
      }
    }

    if (a2)
    {
      *a2 = *(v16 + 5);
    }

    if (a3)
    {
      *a3 = *(v16 + 4);
    }

    if (a5)
    {
      *a5 = *(v16 + 3);
    }

    if (!a4)
    {
LABEL_19:
      v12 = 1;
      goto LABEL_28;
    }

    v17 = *(v16 + 3);
    if (v17 <= 0x20)
    {
LABEL_18:
      *a4 = v17;
      goto LABEL_19;
    }

    if (v17 > 235)
    {
      if (v17 == 236)
      {
        LOWORD(v17) = 28;
        goto LABEL_18;
      }

      if (v17 == 252)
      {
        LOWORD(v17) = 32;
        goto LABEL_18;
      }
    }

    else
    {
      if (v17 == 140)
      {
        LOWORD(v17) = 4;
        goto LABEL_18;
      }

      if (v17 == 152)
      {
        LOWORD(v17) = 7;
        goto LABEL_18;
      }
    }

    LOWORD(v17) = 0;
    goto LABEL_18;
  }

  v12 = 0;
LABEL_29:
  v20 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t compareHashesAscending(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 >= v3;
  v5 = v2 != v3;
  if (v4)
  {
    return v5;
  }

  else
  {
    return 0xFFFFFFFFLL;
  }
}

Boolean CFDateFormatterGetAbsoluteTimeFromString(CFDateFormatterRef formatter, CFStringRef string, CFRange *rangep, CFAbsoluteTime *atp)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(formatter);
  v8 = _CFGetNonObjCTypeID(formatter);
  if (v8 != 56)
  {
    _CFAssertMismatchedTypeID(0x38uLL, v8);
  }

  if (rangep)
  {
    location = rangep->location;
    length = rangep->length;
  }

  else
  {
    length = CFStringGetLength(string);
    location = 0;
  }

  if (length >= 1024)
  {
    v11 = 1024;
  }

  else
  {
    v11 = length;
  }

  CharactersPtr = CFStringGetCharactersPtr(string);
  if (!MEMORY[0x1EEE9AC00](CharactersPtr, v13))
  {
    v38.location = location;
    v38.length = v11;
    CFStringGetCharacters(string, v38, (&v35 - v14));
  }

  v36 = 0;
  v15 = *(formatter + 2);
  __cficu_udat_clone();
  __cficu_udat_getCalendar();
  v16 = __cficu_ucal_clone();
  v17 = CFDateFormatterCopyProperty(formatter, @"kCFDateFormatterCalendarIdentifierKey");
  if (CFEqual(v17, @"chinese") || CFEqual(v17, @"japanese"))
  {
    if (CFEqual(v17, @"chinese"))
    {
      __cficu_ucal_clear();
    }

    else
    {
      if (!CFEqual(v17, @"japanese"))
      {
        goto LABEL_17;
      }

      __cficu_ucal_getNow();
      __cficu_ucal_setMillis();
      __cficu_ucal_get();
      __cficu_ucal_clear();
    }

    __cficu_ucal_set();
  }

  else
  {
    __cficu_ucal_clear();
    __cficu_ucal_set();
    __cficu_udat_set2DigitYearStart();
  }

LABEL_17:
  v18 = *(formatter + 15);
  if (v18)
  {
    CFDateGetAbsoluteTime(v18);
    __cficu_ucal_setMillis();
  }

  __cficu_udat_parseCalendar();
  Millis = __cficu_ucal_getMillis();
  if (rangep)
  {
    rangep->length = SHIDWORD(v36);
  }

  if (v36 > 0)
  {
    goto LABEL_82;
  }

  valuePtr[0] = 1;
  v20 = *(formatter + 37);
  if (v20)
  {
    CFNumberGetValue(v20, kCFNumberSInt64Type, valuePtr);
  }

  if (!CFEqual(v17, @"chinese"))
  {
    if (CFEqual(v17, @"japanese"))
    {
      __cficu_ucal_clear();
      __cficu_ucal_set();
      __cficu_udat_parseCalendar();
      if (__cficu_ucal_getMillis() == Millis)
      {
        goto LABEL_81;
      }

      __cficu_ucal_setMillis();
      v21 = __cficu_ucal_get();
      __cficu_ucal_getNow();
      __cficu_ucal_setMillis();
      v22 = __cficu_ucal_get();
      v23 = __cficu_ucal_get();
      if (valuePtr[0] > 4)
      {
        switch(valuePtr[0])
        {
          case 5:
            if (v21 > v22)
            {
              if (v23 < 235)
              {
                goto LABEL_82;
              }

              v31 = (v23 - 1);
              while (v21 > __CFDateFormatterGetMaxYearGivenJapaneseEra())
              {
                v29 = v31-- < 235;
                if (v29)
                {
                  goto LABEL_82;
                }
              }
            }

            break;
          case 6:
            if (v21 < v22 - 10)
            {
              goto LABEL_82;
            }

            break;
          case 7:
            if (v21 > v22 + 10)
            {
              if (v23 < 235)
              {
                goto LABEL_82;
              }

              v28 = (v23 - 1);
              while (v21 > __CFDateFormatterGetMaxYearGivenJapaneseEra())
              {
                v29 = v28-- < 235;
                if (v29)
                {
                  goto LABEL_82;
                }
              }
            }

            break;
          default:
            goto LABEL_81;
        }
      }

      else
      {
        if (!valuePtr[0])
        {
          goto LABEL_82;
        }

        if (valuePtr[0] != 2)
        {
          if (valuePtr[0] != 4)
          {
            goto LABEL_81;
          }

          if (v21 < v22)
          {
            goto LABEL_82;
          }
        }
      }

      goto LABEL_73;
    }

    v24 = __cficu_ucal_get() - 12000;
    if (v24 > 0x63)
    {
      goto LABEL_81;
    }

    if (*(formatter + 14))
    {
      v25 = __cficu_ucal_clone();
      __cficu_ucal_clear();
      v26 = (CFDateGetAbsoluteTime(*(formatter + 14)) + 978307200.0) * 1000.0;
      __cficu_ucal_setMillis();
      v27 = __cficu_ucal_get() % 100;
      if (v27 >= v24 && v24 >= v27)
      {
        __cficu_ucal_set();
        __cficu_ucal_getMillis();
      }

      __cficu_ucal_close(v25);
      __cficu_ucal_set();
      v30 = __cficu_ucal_getMillis();
      goto LABEL_80;
    }

    if (valuePtr[0] <= 3)
    {
      switch(valuePtr[0])
      {
        case 0:
          goto LABEL_82;
        case 2:
LABEL_94:
          __cficu_ucal_getNow();
          __cficu_ucal_setMillis();
          __cficu_ucal_get();
          goto LABEL_73;
        case 3:
LABEL_58:
          v30 = __CFDateFormatterCorrectTimeToARangeAroundCurrentDate();
LABEL_80:
          Millis = v30;
          goto LABEL_81;
      }
    }

    else if (valuePtr[0] <= 6 || valuePtr[0] == 7)
    {
      goto LABEL_58;
    }

    if (!CFEqual(v17, @"gregorian"))
    {
      goto LABEL_81;
    }

LABEL_73:
    v30 = __CFDateFormatterCorrectTimeWithTarget();
    goto LABEL_80;
  }

  if (__cficu_ucal_get() > 9)
  {
    goto LABEL_81;
  }

  if (valuePtr[0] <= 3)
  {
    if (!valuePtr[0])
    {
      goto LABEL_82;
    }

    if (valuePtr[0] != 2)
    {
      if (valuePtr[0] != 3)
      {
        goto LABEL_81;
      }

      goto LABEL_58;
    }

    goto LABEL_94;
  }

  if (valuePtr[0] <= 6 || valuePtr[0] == 7)
  {
    goto LABEL_58;
  }

LABEL_81:
  if (v36 <= 0)
  {
    if (atp)
    {
      *atp = Millis / 1000.0 - 978307200.0;
    }

    v32 = 1;
    if (v17)
    {
      goto LABEL_83;
    }

    goto LABEL_84;
  }

LABEL_82:
  v32 = 0;
  if (v17)
  {
LABEL_83:
    CFRelease(v17);
  }

LABEL_84:
  __cficu_udat_close();
  __cficu_ucal_close(v16);
  v33 = *MEMORY[0x1E69E9840];
  return v32;
}

CFStringRef _CFStringCreateWithASCIICStringNoCopyOrIndirectTagged(const __CFAllocator *a1, char *__s)
{
  v4 = strlen(__s);

  return _CFStringCreateWithASCIIBytesNoCopyOrIndirectTagged(a1, __s, v4);
}

CFStringRef _CFBundleCopyLocaleAbbreviationForRegionCode(unsigned int a1)
{
  if (a1 <= 0x6C && __CFBundleLocaleAbbreviationsArray && (v1 = 6 * a1, *(__CFBundleLocaleAbbreviationsArray + v1)))
  {
    return _CFStringCreateWithASCIICStringNoCopyOrIndirectTagged(&__kCFAllocatorSystemDefault, (__CFBundleLocaleAbbreviationsArray + v1));
  }

  else
  {
    return 0;
  }
}

uint64_t __CFStringCreateCollator(const __CFLocale *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  Value = CFLocaleGetValue(a1, @"locale:collator id");
  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v7 = 0u;
  v8 = 0u;
  *buffer = 0u;
  v6 = 0u;
  CFStringGetCString(Value, buffer, 128, 0x600u);
  v2 = ucol_open();
  ucol_setAttribute();
  ucol_setAttribute();
  ucol_setAttribute();
  ucol_setAttribute();
  ucol_setAttribute();
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

CFStringRef CFBundleCopyLocalizationForLocalizationInfo(unsigned int a1, unsigned int a2, int a3, int a4)
{
  result = _CFBundleCopyLocaleAbbreviationForRegionCode(a2);
  if (!result)
  {
    if (a1 > 0x97 || (v8 = 3 * a1, !byte_18330A6CF[v8]) || (result = _CFStringCreateWithASCIICStringNoCopyOrIndirectTagged(&__kCFAllocatorSystemDefault, &byte_18330A6CF[v8])) == 0)
    {
      v9 = 0;
      do
      {
        if (__CFBundleScriptCodesArray[v9] == a3)
        {
          if (__CFBundleStringEncodingsArray[v9] == a4)
          {
            v10 = v9;
          }

          else
          {
            v10 = -1;
          }
        }

        else
        {
          v10 = -1;
        }

        if (v10 != -1)
        {
          break;
        }

        v11 = v9++ >= 0x97;
      }

      while (!v11);
      v12 = 0;
      v13 = -1;
      do
      {
        v14 = __CFBundleScriptCodesArray[v12];
        ++v13;
        if (v14 == a3)
        {
          break;
        }

        v11 = v12++ >= 0x97;
      }

      while (!v11);
      v15 = 0;
      if (v14 == a3)
      {
        v16 = v13;
      }

      else
      {
        v16 = -1;
      }

      v17 = -1;
      do
      {
        v18 = __CFBundleStringEncodingsArray[v15];
        ++v17;
        if (v18 == a4)
        {
          break;
        }

        v11 = v15++ >= 0x97;
      }

      while (!v11);
      if (v18 == a4)
      {
        v19 = v17;
      }

      else
      {
        v19 = -1;
      }

      if (v10 > 0x97 || (v20 = 3 * v10, !byte_18330A6CF[v20]) || (result = _CFStringCreateWithASCIICStringNoCopyOrIndirectTagged(&__kCFAllocatorSystemDefault, &byte_18330A6CF[v20])) == 0)
      {
        if (v19 > 0x97 || (v21 = 3 * v19, !byte_18330A6CF[v21]) || (result = _CFStringCreateWithASCIICStringNoCopyOrIndirectTagged(&__kCFAllocatorSystemDefault, &byte_18330A6CF[v21])) == 0)
        {
          if (v16 <= 0x97 && (v22 = 3 * v16, byte_18330A6CF[v22]))
          {

            return _CFStringCreateWithASCIICStringNoCopyOrIndirectTagged(&__kCFAllocatorSystemDefault, &byte_18330A6CF[v22]);
          }

          else
          {
            return 0;
          }
        }
      }
    }
  }

  return result;
}

CFStringRef _CFStringCreateWithASCIIBytesNoCopyOrIndirectTagged(const __CFAllocator *a1, const UInt8 *a2, unint64_t a3)
{
  result = _CFStringCreateIndirectASCIITaggedPointerString(a2, a3);
  if (!result)
  {

    return CFStringCreateWithBytesNoCopy(a1, a2, a3, 0x600u, 0, &__kCFAllocatorNull);
  }

  return result;
}

void CFURLClearResourcePropertyCache(CFURLRef url)
{
  v2 = __CFURLResourceInfoPtr(url);

  MEMORY[0x1EEE00698](url, 0, v2);
}

CFTypeRef CFDateFormatterCopyProperty(CFDateFormatterRef formatter, CFDateFormatterKey key)
{
  v52 = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(formatter);
  v4 = _CFGetNonObjCTypeID(formatter);
  if (v4 != 56)
  {
    _CFAssertMismatchedTypeID(0x38uLL, v4);
  }

  if (@"kCFDateFormatterIsLenientKey" == key)
  {
    result = *(formatter + 8);
    if (result)
    {
      goto LABEL_114;
    }

    v8 = *(formatter + 2);
    isLenient = __cficu_udat_isLenient();
    v10 = &kCFBooleanTrue;
    if (!isLenient)
    {
      v10 = &kCFBooleanFalse;
    }

    v11 = *MEMORY[0x1E69E9840];
LABEL_42:
    result = *v10;
LABEL_115:

    return CFRetain(result);
  }

  if (@"kCFDateFormatterDoesRelativeDateFormattingKey" == key)
  {
    result = *(formatter + 9);
    if (result)
    {
      goto LABEL_114;
    }

LABEL_41:
    v12 = *MEMORY[0x1E69E9840];
    v10 = &kCFBooleanFalse;
    goto LABEL_42;
  }

  if (@"kCFDateFormatterCalendarKey" == key)
  {
    result = *(formatter + 12);
    if (result)
    {
      goto LABEL_114;
    }

    v13 = *(formatter + 3);
    v14 = &kCFLocaleCalendarKey;
LABEL_47:
    result = CFLocaleGetValue(v13, *v14);
    if (!result)
    {
      goto LABEL_68;
    }

    goto LABEL_114;
  }

  if (@"kCFDateFormatterCalendarIdentifierKey" == key)
  {
    result = *(formatter + 13);
    if (result)
    {
      goto LABEL_114;
    }

    v13 = *(formatter + 3);
    v14 = &kCFLocaleCalendarIdentifierKey;
    goto LABEL_47;
  }

  if (@"kCFDateFormatterTimeZoneKey" == key)
  {
    result = *(formatter + 11);
    if (!result)
    {
      goto LABEL_68;
    }

    goto LABEL_114;
  }

  if (@"kCFDateFormatterDefaultFormatKey" == key)
  {
    result = *(formatter + 7);
    if (!result)
    {
      goto LABEL_68;
    }

    goto LABEL_114;
  }

  if (@"kCFDateFormatterTwoDigitStartDateKey" == key)
  {
    result = *(formatter + 14);
    if (!result)
    {
      goto LABEL_68;
    }

    goto LABEL_114;
  }

  if (@"kCFDateFormatterDefaultDateKey" == key)
  {
    result = *(formatter + 15);
    if (!result)
    {
      goto LABEL_68;
    }

    goto LABEL_114;
  }

  if (@"kCFDateFormatterGregorianStartDateKey" == key)
  {
    result = *(formatter + 16);
    if (!result)
    {
      v15 = *(formatter + 2);
      __cficu_udat_getCalendar();
      v22 = __cficu_ucal_getGregorianChange() / 1000.0 - 978307200.0;
      v23 = CFGetAllocator(formatter);
      result = CFDateCreate(v23, v22);
      goto LABEL_68;
    }

    goto LABEL_114;
  }

  if (@"kCFDateFormatterEraSymbolsKey" == key)
  {
    result = *(formatter + 17);
    if (result)
    {
      goto LABEL_114;
    }

    v16 = *(formatter + 2);
    v17 = *MEMORY[0x1E69E9840];
    v18 = 0;
  }

  else if (@"kCFDateFormatterLongEraSymbolsKey" == key)
  {
    result = *(formatter + 18);
    if (result)
    {
      goto LABEL_114;
    }

    v16 = *(formatter + 2);
    v19 = *MEMORY[0x1E69E9840];
    v18 = 7;
  }

  else if (@"kCFDateFormatterMonthSymbolsKey" == key)
  {
    result = *(formatter + 19);
    if (result)
    {
      goto LABEL_114;
    }

    v16 = *(formatter + 2);
    v20 = *MEMORY[0x1E69E9840];
    v18 = 1;
  }

  else if (@"kCFDateFormatterShortMonthSymbolsKey" == key)
  {
    result = *(formatter + 20);
    if (result)
    {
      goto LABEL_114;
    }

    v16 = *(formatter + 2);
    v21 = *MEMORY[0x1E69E9840];
    v18 = 2;
  }

  else if (@"kCFDateFormatterVeryShortMonthSymbolsKey" == key)
  {
    result = *(formatter + 21);
    if (result)
    {
      goto LABEL_114;
    }

    v16 = *(formatter + 2);
    v25 = *MEMORY[0x1E69E9840];
    v18 = 8;
  }

  else if (@"kCFDateFormatterStandaloneMonthSymbolsKey" == key)
  {
    result = *(formatter + 22);
    if (result)
    {
      goto LABEL_114;
    }

    v16 = *(formatter + 2);
    v26 = *MEMORY[0x1E69E9840];
    v18 = 10;
  }

  else if (@"kCFDateFormatterShortStandaloneMonthSymbolsKey" == key)
  {
    result = *(formatter + 23);
    if (result)
    {
      goto LABEL_114;
    }

    v16 = *(formatter + 2);
    v27 = *MEMORY[0x1E69E9840];
    v18 = 11;
  }

  else
  {
    if (@"kCFDateFormatterVeryShortStandaloneMonthSymbolsKey" != key)
    {
      if (@"kCFDateFormatterWeekdaySymbolsKey" == key)
      {
        result = *(formatter + 25);
        if (result)
        {
          goto LABEL_114;
        }

        v16 = *(formatter + 2);
        v30 = *MEMORY[0x1E69E9840];
        v18 = 3;
      }

      else if (@"kCFDateFormatterShortWeekdaySymbolsKey" == key)
      {
        result = *(formatter + 26);
        if (result)
        {
          goto LABEL_114;
        }

        v16 = *(formatter + 2);
        v31 = *MEMORY[0x1E69E9840];
        v18 = 4;
      }

      else if (@"kCFDateFormatterVeryShortWeekdaySymbolsKey" == key)
      {
        result = *(formatter + 27);
        if (result)
        {
          goto LABEL_114;
        }

        v16 = *(formatter + 2);
        v32 = *MEMORY[0x1E69E9840];
        v18 = 9;
      }

      else if (@"kCFDateFormatterStandaloneWeekdaySymbolsKey" == key)
      {
        result = *(formatter + 28);
        if (result)
        {
          goto LABEL_114;
        }

        v16 = *(formatter + 2);
        v33 = *MEMORY[0x1E69E9840];
        v18 = 13;
      }

      else if (@"kCFDateFormatterShortStandaloneWeekdaySymbolsKey" == key)
      {
        result = *(formatter + 29);
        if (result)
        {
          goto LABEL_114;
        }

        v16 = *(formatter + 2);
        v34 = *MEMORY[0x1E69E9840];
        v18 = 14;
      }

      else
      {
        if (@"kCFDateFormatterVeryShortStandaloneWeekdaySymbolsKey" != key)
        {
          if (@"kCFDateFormatterQuarterSymbolsKey" == key)
          {
            result = *(formatter + 31);
            if (result)
            {
              goto LABEL_114;
            }

            v16 = *(formatter + 2);
            v36 = *MEMORY[0x1E69E9840];
            v18 = 16;
          }

          else if (@"kCFDateFormatterShortQuarterSymbolsKey" == key)
          {
            result = *(formatter + 32);
            if (result)
            {
              goto LABEL_114;
            }

            v16 = *(formatter + 2);
            v37 = *MEMORY[0x1E69E9840];
            v18 = 17;
          }

          else if (@"kCFDateFormatterStandaloneQuarterSymbolsKey" == key)
          {
            result = *(formatter + 33);
            if (result)
            {
              goto LABEL_114;
            }

            v16 = *(formatter + 2);
            v38 = *MEMORY[0x1E69E9840];
            v18 = 18;
          }

          else
          {
            if (@"kCFDateFormatterShortStandaloneQuarterSymbolsKey" != key)
            {
              if (@"kCFDateFormatterAMSymbolKey" == key)
              {
                result = *(formatter + 35);
                if (result)
                {
                  goto LABEL_114;
                }

                v40 = *(formatter + 2);
                v41 = __cficu_udat_countSymbols();
                if (v41 < 2)
                {
                  goto LABEL_59;
                }

                v42 = v41;
                v43 = *(formatter + 2);
              }

              else
              {
                if (@"kCFDateFormatterPMSymbolKey" != key)
                {
                  if (@"kCFDateFormatterAmbiguousYearStrategyKey" == key)
                  {
                    result = *(formatter + 37);
                    if (!result)
                    {
                      goto LABEL_68;
                    }

                    goto LABEL_114;
                  }

                  if (@"kCFDateFormatterUsesCharacterDirectionKey" != key)
                  {
                    if (CFEqual(key, @"kCFDateFormatterFormattingContextKey"))
                    {
                      result = *(formatter + 39);
                      if (!result)
                      {
                        v6 = *(formatter + 2);
                        *valuePtr = __cficu_udat_getContext();
                        v7 = CFGetAllocator(formatter);
                        result = CFNumberCreate(v7, kCFNumberIntType, valuePtr);
LABEL_68:
                        v24 = *MEMORY[0x1E69E9840];
                        return result;
                      }

                      goto LABEL_114;
                    }

LABEL_59:
                    result = 0;
                    goto LABEL_68;
                  }

                  result = *(formatter + 38);
                  if (result)
                  {
LABEL_114:
                    v50 = *MEMORY[0x1E69E9840];
                    goto LABEL_115;
                  }

                  goto LABEL_41;
                }

                result = *(formatter + 36);
                if (result)
                {
                  goto LABEL_114;
                }

                v44 = *(formatter + 2);
                v45 = __cficu_udat_countSymbols();
                if (v45 < 2)
                {
                  goto LABEL_59;
                }

                v42 = v45;
                v46 = *(formatter + 2);
              }

              Symbols = __cficu_udat_getSymbols();
              result = 0;
              if (v42 <= 0x300)
              {
                v48 = Symbols;
                v49 = CFGetAllocator(formatter);
                result = CFStringCreateWithCharacters(v49, valuePtr, v48);
              }

              goto LABEL_68;
            }

            result = *(formatter + 34);
            if (result)
            {
              goto LABEL_114;
            }

            v16 = *(formatter + 2);
            v39 = *MEMORY[0x1E69E9840];
            v18 = 19;
          }

          goto LABEL_78;
        }

        result = *(formatter + 30);
        if (result)
        {
          goto LABEL_114;
        }

        v16 = *(formatter + 2);
        v35 = *MEMORY[0x1E69E9840];
        v18 = 15;
      }

      v29 = 1;
      goto LABEL_79;
    }

    result = *(formatter + 24);
    if (result)
    {
      goto LABEL_114;
    }

    v16 = *(formatter + 2);
    v28 = *MEMORY[0x1E69E9840];
    v18 = 12;
  }

LABEL_78:
  v29 = 0;
LABEL_79:

  return __CFDateFormatterCopySymbolsArray(v16, v18, v29);
}

uint64_t __CompareTextDefault(uint64_t a1, int a2, unsigned int a3, unsigned __int16 *a4, unint64_t a5, unsigned __int16 *a6, unint64_t a7, BOOL *a8, int *a9)
{
  v14 = a3;
  v45 = *MEMORY[0x1E69E9840];
  *a8 = 1;
  *a9 = 0;
  if (!a2 || ((_CFGetTSD(0x11u) >> 6) & 1) != ((a3 >> 6) & 1))
  {
    ucol_setAttribute();
  }

  v15 = ucol_strcoll();
  if (v15)
  {
    if (v15 == -1)
    {
      v16 = -2;
    }

    else
    {
      v16 = 2;
    }

LABEL_8:
    *a9 = v16;
    goto LABEL_10;
  }

  v16 = *a9;
  if (!*a9)
  {
    ucol_setAttribute();
    ucol_setAttribute();
    ucol_setAttribute();
    v21 = ucol_strcoll();
    if (v21)
    {
      if (v21 == -1)
      {
        v22 = -1;
      }

      else
      {
        v22 = 1;
      }

      *a9 = v22;
    }

    ucol_setAttribute();
    ucol_setAttribute();
    ucol_setAttribute();
    v16 = *a9;
    if ((v14 & 0x10) == 0 && !v16)
    {
      v40 = a5;
      ucol_openElements();
      v26 = ucol_openElements();
      v39 = a7;
      v27 = ucol_next();
      v42 = v26;
      v28 = ucol_next();
      v16 = 0;
      v41 = 0;
      if (v27 != -1)
      {
        v29 = v28;
        if (v28 != -1)
        {
          v41 = 0;
          v30 = 0;
          v31 = 0;
          while (1)
          {
            v44 = MEMORY[0x1865E3D10]();
            v32 = MEMORY[0x1865E3D10](v26);
            v43 = v32;
            if ((v29 ^ v27) <= 0xFF)
            {
              if (v27 >= 0x10000)
              {
                v35 = v27;
                v36 = v29;
                if (v27 - 143 < 9)
                {
                  v35 = v27 - 138;
                }

                if (v29 - 143 < 9)
                {
                  v36 = v29 - 138;
                }

                if (v35 != v36)
                {
                  if (v35 < v36)
                  {
                    v16 = -1;
                  }

                  else
                  {
                    v16 = 1;
                  }

                  break;
                }
              }

              else
              {
                if (v44 - v31 > v32 - v30)
                {
                  v33 = -1;
                }

                else
                {
                  v33 = 1;
                }

                if (v44 - v31 == v32 - v30)
                {
                  v33 = 0;
                }

                v34 = v41;
                if (v41)
                {
                  v33 = v41;
                }

                if (v27 >= 0x100)
                {
                  v34 = v33;
                }

                v41 = v34;
              }
            }

            v27 = ucol_next();
            v26 = v42;
            v37 = ucol_next();
            v29 = v37;
            v38 = v27 == -1 || v37 == -1;
            v30 = v43;
            v31 = v44;
            if (v38)
            {
              v16 = 0;
              break;
            }
          }
        }
      }

      ucol_closeElements();
      ucol_closeElements();
      a7 = v39;
      if (!v16)
      {
        v16 = v41;
      }

      a5 = v40;
      goto LABEL_8;
    }
  }

LABEL_10:
  *a8 = v16 == 0;
  if (!*a9)
  {
    ucol_setAttribute();
    ucol_setAttribute();
    ucol_setAttribute();
    v18 = ucol_strcoll();
    if (v18)
    {
      if (v18 == -1)
      {
        v19 = -1;
      }

      else
      {
        v19 = 1;
      }
    }

    else
    {
      if (a5 >= a7)
      {
        v23 = a7;
      }

      else
      {
        v23 = a5;
      }

      if (v23)
      {
        while (1)
        {
          v24 = *a4;
          v25 = *a6;
          if (v24 != v25)
          {
            break;
          }

          ++a4;
          ++a6;
          if (!--v23)
          {
            goto LABEL_30;
          }
        }

        if (v24 < v25)
        {
          v19 = -1;
        }

        else
        {
          v19 = 1;
        }
      }

      else
      {
LABEL_30:
        if (a5 < a7)
        {
          v19 = -1;
        }

        else
        {
          v19 = 1;
        }

        if (a5 == a7)
        {
          v19 = 0;
        }
      }
    }

    *a9 = v19;
    ucol_setAttribute();
    ucol_setAttribute();
    ucol_setAttribute();
  }

  result = 0;
  v20 = *MEMORY[0x1E69E9840];
  return result;
}

void __cficu_ucal_clear()
{
  MEMORY[0x1865E3AC0]();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_clear_cold_1();
  }
}

void CFDateFormatterSetProperty(CFDateFormatterRef formatter, CFStringRef key, CFTypeRef value)
{
  __CFCheckCFInfoPACSignature(formatter);
  v6 = _CFGetNonObjCTypeID(formatter);
  if (v6 != 56)
  {
    _CFAssertMismatchedTypeID(0x38uLL, v6);
  }

  __CFDateFormatterSetProperty(formatter, key, value, 0);
}

CFStringTokenizerRef CFStringTokenizerCreate(CFAllocatorRef alloc, CFStringRef string, CFRange range, CFOptionFlags options, CFLocaleRef locale)
{
  length = range.length;
  location = range.location;
  if (__CFSTLoadCoreNLP_once != -1)
  {
    CFStringTokenizerCreate_cold_1();
  }

  if (!__CFSTLoadCoreNLP_isCoreNLPAvailable)
  {
    return 0;
  }

  Instance = _CFRuntimeCreateInstance(alloc, 0x28uLL, 8, 0, options, locale, v5, v6);
  if (Instance)
  {
    v14 = __NLStringTokenizerCreate(alloc, string, location, length, options, locale);
    Instance[2] = v14;
    if (!v14)
    {
      CFRelease(Instance);
      return 0;
    }
  }

  return Instance;
}

uint64_t __extendLocationBackward(uint64_t a1, UniChar *buffer, uint64_t a3, uint64_t a4)
{
  v4 = a1;
  if (a1 >= 1)
  {
    v8 = -a1;
    for (i = a1 + 64; ; --i)
    {
      if (v4 >= 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = v4;
      }

      if (v4 >= 5)
      {
        v11 = 5;
      }

      else
      {
        v11 = v4;
      }

      v12 = *(buffer + 20);
      if (v12 <= v4)
      {
        v15 = 0;
        goto LABEL_32;
      }

      v13 = *(buffer + 17);
      if (v13)
      {
        v14 = (v13 + 2 * *(buffer + 19));
      }

      else
      {
        v16 = *(buffer + 18);
        if (v16)
        {
          v15 = *(v16 + *(buffer + 19) + v4);
          goto LABEL_16;
        }

        if (*(buffer + 22) <= v4 || (v21 = *(buffer + 21), v21 > v4))
        {
          v22 = -v10;
          v23 = v10 + v8;
          v24 = i - v10;
          v25 = v4 + v22;
          v26 = v25 + 64;
          if (v25 + 64 >= v12)
          {
            v26 = *(buffer + 20);
          }

          *(buffer + 21) = v25;
          *(buffer + 22) = v26;
          if (v12 >= v24)
          {
            v12 = v24;
          }

          v33.location = v25 + *(buffer + 19);
          v33.length = v12 + v23;
          CFStringGetCharacters(*(buffer + 16), v33, buffer);
          v21 = *(buffer + 21);
        }

        v14 = &buffer[-v21];
      }

      v15 = v14[v4];
LABEL_16:
      if (v15 >> 10 == 55)
      {
        v17 = *(buffer + 20);
        if (v17 >= v4)
        {
          v18 = *(buffer + 17);
          if (v18)
          {
            v19 = (v18 + 2 * *(buffer + 19));
            goto LABEL_20;
          }

          v27 = *(buffer + 18);
          if (v27)
          {
            v20 = *(v27 + *(buffer + 19) + v4 - 1);
          }

          else
          {
            if (*(buffer + 22) < v4 || (v29 = *(buffer + 21), v29 >= v4))
            {
              v30 = v4 - v11;
              v31 = v4 - v11 + 64;
              if (v31 >= v17)
              {
                v31 = *(buffer + 20);
              }

              *(buffer + 21) = v30;
              *(buffer + 22) = v31;
              if (v17 >= i - v11)
              {
                v17 = i - v11;
              }

              v34.location = v30 + *(buffer + 19);
              v34.length = v17 + v11 + v8;
              CFStringGetCharacters(*(buffer + 16), v34, buffer);
              v29 = *(buffer + 21);
            }

            v19 = &buffer[-v29];
LABEL_20:
            v20 = v19[v4 - 1];
          }

          if (v20 >> 10 == 54)
          {
            return v4;
          }
        }
      }

LABEL_32:
      if (a3 && ((*(a3 + (v15 >> 3)) >> (v15 & 7)) & 1) != 0)
      {
        if (((v15 - 11904) >> 7) < 0xFBu)
        {
          return v4;
        }
      }

      else if (!a4 || ((v15 - 11904) >> 7) < 0xFBu || ((1 << (v15 & 7)) & *(a4 + (v15 >> 3))) == 0)
      {
        return v4;
      }

      ++v8;
      if (v4-- <= 1)
      {
        return 0;
      }
    }
  }

  return v4;
}

void __cficu_ucal_set()
{
  ucal_set();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_set_cold_1();
  }
}

__CFBundle *_CFBundleCreateWithExecutableURLIfMightBeBundle(const __CFAllocator *a1, const __CFURL *a2)
{
  v2 = _CFBundleCreateWithExecutableURLIfLooksLikeBundle(a1, a2);
  v3 = v2;
  if (v2)
  {
    if (_CFBundleEffectiveLayoutVersion(v2) - 3 <= 1)
    {
      InfoDictionary = CFBundleGetInfoDictionary(v3);
      if (!InfoDictionary || !CFDictionaryGetCount(InfoDictionary))
      {
        CFRelease(v3);
        return 0;
      }
    }
  }

  return v3;
}

Boolean CFRunLoopContainsObserver(CFRunLoopRef rl, CFRunLoopObserverRef observer, CFRunLoopMode mode)
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
    CFRunLoopContainsObserver_cold_1(rl);
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
      v11 = CFSetContainsValue(v12, observer);
      goto LABEL_17;
    }

LABEL_14:
    v11 = 0;
    goto LABEL_17;
  }

  v8 = __CFRunLoopCopyMode(rl, mode, 0);
  if (!v8)
  {
    goto LABEL_14;
  }

  v9 = v8;
  pthread_mutex_lock((v8 + 16));
  v10 = *(v9 + 112);
  if (v10)
  {
    v14.length = CFArrayGetCount(*(v9 + 112));
    v14.location = 0;
    v11 = CFArrayContainsValue(v10, v14, observer);
  }

  else
  {
    v11 = 0;
  }

  pthread_mutex_unlock((v9 + 16));
  CFRelease(v9);
LABEL_17:
  pthread_mutex_unlock((rl + 16));
  return v11;
}

void *__CFAllocatorSystemReallocate(void *ptr, size_t size, int a3, malloc_zone_t *zone)
{
  if (zone == &__MallocDefaultZoneInfoPlaceholder)
  {
    zone = malloc_default_zone();
  }

  return malloc_type_zone_realloc(zone, ptr, size, 0xD69374A8uLL);
}

uint64_t _CFBundleEffectiveLayoutVersion(uint64_t a1)
{
  v1 = *(a1 + 53);
  if (!*(a1 + 53))
  {
    InfoDictionary = CFBundleGetInfoDictionary(a1);
    if (InfoDictionary && CFDictionaryGetCount(InfoDictionary))
    {
      return 0;
    }

    else
    {
      v5 = CFBundleCopyExecutableURL(a1);
      if (v5)
      {
        v8 = v5;
        v9 = *(a1 + 48);
        if (!v9)
        {
          v9 = _CFBundleGrokBinaryType(v8, v6, v7);
          *(a1 + 48) = v9;
        }

        v1 = 4;
        if (v9 != 1 && v9 != 6)
        {
          v1 = 0;
          *(a1 + 64) = 1;
        }

        CFRelease(v8);
      }

      else
      {
        return 4;
      }
    }
  }

  return v1;
}

CFTypeRef _CFBundleCopyInfoPlistURL(uint64_t a1)
{
  os_unfair_lock_lock_with_options();
  v2 = *(a1 + 216);
  if (v2)
  {
    v3 = CFRetain(v2);
  }

  else
  {
    v3 = 0;
  }

  os_unfair_lock_unlock((a1 + 112));
  return v3;
}

CFURLRef CFBundleCopySupportFilesDirectoryURL(CFBundleRef bundle)
{
  __CFCheckCFInfoPACSignature(bundle);
  v2 = _CFGetNonObjCTypeID(bundle);
  if (v2 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v2);
  }

  v3 = *(bundle + 2);
  if (!v3)
  {
    return 0;
  }

  v4 = *(bundle + 53);
  if (v4 <= 0xB)
  {
    if (v4 == 1)
    {
      v5 = @"Support%20Files/";
      goto LABEL_15;
    }

    if (v4 == 2)
    {
      v5 = @"Contents/";
LABEL_15:

      return CFURLCreateWithString(&__kCFAllocatorSystemDefault, v5, v3);
    }

    goto LABEL_11;
  }

  if (v4 == 12)
  {
    v7 = @"WrappedBundle/Contents/";
  }

  else
  {
    if (v4 != 13)
    {
LABEL_11:
      v8 = *(bundle + 2);

      return CFRetain(v8);
    }

    v7 = @"WrappedBundle/";
  }

  return _CFURLCreateResolvedDirectoryWithString(&__kCFAllocatorSystemDefault, v7, v3);
}

CFPropertyListRef CFPropertyListCreateFromXMLData(CFAllocatorRef allocator, CFDataRef xmlData, CFOptionFlags mutabilityOption, CFStringRef *errorString)
{
  v10[1] = *MEMORY[0x1E69E9840];
  if (errorString)
  {
    *errorString = 0;
  }

  cf = 0;
  v10[0] = 0;
  _CFPropertyListCreateWithData(allocator, xmlData, mutabilityOption, &cf, 1, 0, 0, v10);
  v5 = cf;
  v6 = v10[0];
  if (errorString && cf)
  {
    *errorString = __copyErrorDebugDescription(cf);
    v5 = cf;
  }

  if (v5)
  {
    CFRelease(v5);
  }

  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

uint64_t CFDateComponentsCreateCopy(__objc2_class **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  CFDateComponentsCreate(a1, a2, a3, a4, a5, a6, a7, a8);
  if (!v9)
  {
    CFDateComponentsCreateCopy_cold_1();
  }

  v10 = v9;
  v11 = CFDateComponentsCopyCalendar(a2);
  if (v11)
  {
    v12 = v11;
    CFDateComponentsSetCalendar(v10, v11);
    CFRelease(v12);
  }

  v13 = CFDateComponentsCopyTimeZone(a2);
  if (v13)
  {
    v14 = v13;
    CFDateComponentsSetTimeZone(v10, v13);
    CFRelease(v14);
  }

  *(v10 + 32) = *(a2 + 32);
  *(v10 + 48) = *(a2 + 48);
  *(v10 + 64) = *(a2 + 64);
  *(v10 + 80) = *(a2 + 80);
  *(v10 + 96) = *(a2 + 96);
  *(v10 + 112) = *(a2 + 112);
  *(v10 + 128) = *(a2 + 128);
  *(v10 + 168) = *(a2 + 168);
  *(v10 + 144) = *(a2 + 144);
  *(v10 + 160) = *(a2 + 160);
  return v10;
}

CFStringRef __CFURLCopyFormattingDescription(void *cf)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    __CFURLCopyFormattingDescription_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    v2 = [cf description];

    return v2;
  }

  else
  {
    v4 = CFGetAllocator(cf);
    v5 = CFURLCopyScheme(cf);
    if (v5 && (v6 = v5, v7 = CFStringCompare(v5, @"data", 1uLL), CFRelease(v6), v7 == kCFCompareEqualTo))
    {
      v10 = *(cf + 4);
      v11 = atomic_load(cf + 3);
      TruncatedURLString = CreateTruncatedURLString(v4, v11);
      v13 = TruncatedURLString;
      if (!v10)
      {
        return TruncatedURLString;
      }

      v14 = CFURLGetString(*(cf + 4));
      v15 = CreateTruncatedURLString(v4, v14);
      v16 = CFStringCreateWithFormat(v4, 0, @"%@ -- %@", v13, v15);
      if (v13)
      {
        CFRelease(v13);
      }

      if (v15)
      {
        CFRelease(v15);
      }

      return v16;
    }

    else
    {
      v8 = *(cf + 4);
      v9 = atomic_load(cf + 3);
      if (v8)
      {
        return CFStringCreateWithFormat(v4, 0, @"%@ -- %@", v9, *(cf + 4));
      }

      else
      {

        return CFStringCreateCopy(v4, v9);
      }
    }
  }
}

void __CFStringTokenizerDeallocate(uint64_t a1)
{
  if (a1)
  {
    v1 = *(a1 + 16);
    if (v1)
    {
      CFRelease(v1);
    }
  }
}

uint64_t CFStorageCreate(__objc2_class **a1, int64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Instance = _CFRuntimeCreateInstance(a1, 0x1AuLL, 168, 0, a5, a6, a7, a8);
  v10 = Instance;
  if (Instance)
  {
    *(Instance + 128) = 0;
    *(Instance + 16) = a2;
    v11 = __clz(__rbit64(a2));
    if (((a2 + 0x7FFFFFFFFFFFFFFFLL) & a2) != 0)
    {
      v12 = -1;
    }

    else
    {
      v12 = v11;
    }

    if (a2 >= 1)
    {
      v13 = v12;
    }

    else
    {
      v13 = -1;
    }

    *(Instance + 24) = v13;
    *(Instance + 32) = 850045857;
    *(Instance + 40) = 0u;
    *(Instance + 56) = 0u;
    *(Instance + 72) = 0u;
    *(Instance + 88) = 0;
    *(Instance + 136) = 12288;
    if (a2 && 12288 % a2)
    {
      *(Instance + 136) = 12288 - 12288 % a2;
    }

    *(Instance + 157) = 1;
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }
  }

  return v10;
}

void CFStorageDeleteValues(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = CFGetAllocator(a1);
  v7 = *(a1 + 24);
  if (v7 == -1)
  {
    v10 = *(a1 + 16);
    v8 = v10 * a2;
    v9 = v10 * a3;
  }

  else
  {
    v8 = a2 << v7;
    v9 = a3 << v7;
  }

  os_unfair_lock_lock_with_options();
  *(a1 + 104) = 0;
  *(a1 + 112) = 0;
  *(a1 + 120) = 0;
  os_unfair_lock_unlock((a1 + 128));
  v11 = __CFStorageDeleteUnfrozen(v6, a1, a1 + 144, v8, v9, 1);
  if (v11)
  {
    v12 = v11;
    if (v11 != a1 + 144)
    {
      v13 = *v11;
      v14 = *(v11 + 13);
      *(a1 + 160) = 0;
      v15 = (a1 + 160);
      *(a1 + 144) = v13;
      *(a1 + 157) = v14;
      *(a1 + 168) = 0;
      *(a1 + 176) = 0;
      if (*(v11 + 13) == 1)
      {
        if (*(v11 + 12))
        {
          v16 = *(v11 + 24);
          if (v16)
          {
            if (v13 <= *MEMORY[0x1E69E9AC8] / 2)
            {
              v23 = v13 + 63;
              v22 = v13 < -63;
              v24 = v13 + 126;
              if (!v22)
              {
                v24 = v23;
              }

              v18 = v24 & 0xFFFFFFFFFFFFFFC0;
            }

            else
            {
              v17 = (v13 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
              if (*(a1 + 136) >= v17)
              {
                v18 = v17;
              }

              else
              {
                v18 = *(a1 + 136);
              }
            }

            if (v18 > *v15)
            {
              pthread_mutex_lock((a1 + 32));
              if (v18 > *(a1 + 160))
              {
                *(a1 + 168) = __CFSafelyReallocateWithAllocatorTyped(v6, *(a1 + 168), v18, 864523722, 0, 0);
                if (__CFOASafe == 1)
                {
                  __CFSetLastAllocationEventName();
                }

                *v15 = v18;
              }

              pthread_mutex_unlock((a1 + 32));
              v16 = *(v12 + 24);
            }

            memmove(*(a1 + 168), v16, *v12);
          }
        }

        else
        {
          *(a1 + 168) = *(v11 + 24);
          *(v11 + 16) = 0;
          *(v11 + 24) = 0;
          *(v11 + 32) = 0;
        }
      }

      else
      {
        v19 = *(v11 + 16);
        if (*(v19 + 8))
        {
          atomic_fetch_add_explicit((v19 + 8), 1u, memory_order_relaxed);
        }

        *v15 = v19;
        v20 = *(v11 + 24);
        if (*(v20 + 8))
        {
          atomic_fetch_add_explicit((v20 + 8), 1u, memory_order_relaxed);
        }

        *(a1 + 168) = v20;
        v21 = *(v11 + 32);
        if (v21)
        {
          if (*(v21 + 8))
          {
            atomic_fetch_add_explicit((v21 + 8), 1u, memory_order_relaxed);
          }

          *(a1 + 176) = v21;
        }
      }
    }

    if (*(v12 + 8) && atomic_fetch_add_explicit((v12 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {

      __CFStorageDeallocateNode(a1, v12);
    }
  }

  else
  {

    __CFStorageClearRootNode(a1);
  }
}

void __CFStorageClearRootNode(uint64_t a1)
{
  v2 = CFGetAllocator(a1);
  if (*(a1 + 157) == 1)
  {
    CFAllocatorDeallocate(v2, *(a1 + 168));
  }

  else
  {
    v3 = *(a1 + 160);
    if (v3 && *(v3 + 8) && atomic_fetch_add_explicit((v3 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      __CFStorageDeallocateNode(a1, v3);
    }

    v4 = *(a1 + 168);
    if (v4 && *(v4 + 8) && atomic_fetch_add_explicit((v4 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      __CFStorageDeallocateNode(a1, v4);
    }

    v5 = *(a1 + 176);
    if (v5 && *(v5 + 8) && atomic_fetch_add_explicit((v5 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
    {
      __CFStorageDeallocateNode(a1, v5);
    }
  }

  *(a1 + 157) = 1;
  *(a1 + 144) = 0;
  *(a1 + 160) = 0;
  *(a1 + 168) = 0;
}

uint64_t __CFStorageDeleteUnfrozen(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, int a6)
{
  v38 = *MEMORY[0x1E69E9840];
  v6 = *a3 - a5;
  if (*a3 == a5)
  {
    v7 = 0;
    goto LABEL_54;
  }

  v7 = a3;
  if (*(a3 + 13) == 1)
  {
    *a3 = v6;
    v12 = *(a3 + 24);
    if (v12)
    {
      memmove((v12 + a4), (v12 + a4 + a5), v6 - a4);
      if (a6)
      {
        v13 = *v7;
        if (*v7 <= *MEMORY[0x1E69E9AC8] / 2)
        {
          v30 = v13 + 63;
          v29 = v13 < -63;
          v31 = v13 + 126;
          if (!v29)
          {
            v31 = v30;
          }

          v15 = v31 & 0xFFFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = (v13 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
          if (*(a2 + 136) >= v14)
          {
            v15 = v14;
          }

          else
          {
            v15 = *(a2 + 136);
          }
        }

        if (v15 != *(v7 + 16))
        {
          pthread_mutex_lock((a2 + 32));
          if (v15 != *(v7 + 16))
          {
            *(v7 + 24) = __CFSafelyReallocateWithAllocatorTyped(a1, *(v7 + 24), v15, 864523722, 0, 0);
            if (__CFOASafe == 1)
            {
              __CFSetLastAllocationEventName();
            }

            *(v7 + 16) = v15;
          }

          pthread_mutex_unlock((a2 + 32));
        }
      }
    }

    goto LABEL_52;
  }

  v16 = 0;
  v17 = 0;
  v36 = 0uLL;
  v18 = a4 + a5;
  v19 = 16;
  v37 = 0;
  do
  {
    v20 = *(v7 + v19);
    if (!v20)
    {
      break;
    }

    v21 = *v20;
    if (a4 <= v17)
    {
      v22 = v17;
    }

    else
    {
      v22 = a4;
    }

    v23 = v21 + v17;
    if (v18 >= v21 + v17)
    {
      v24 = v21 + v17;
    }

    else
    {
      v24 = a4 + a5;
    }

    if (v24 <= v22)
    {
      if (*(v20 + 8))
      {
        atomic_fetch_add_explicit((v20 + 8), 1u, memory_order_relaxed);
      }

LABEL_27:
      *(&v36 + v16++) = v20;
      goto LABEL_28;
    }

    if (*(v20 + 12) != 1)
    {
      goto LABEL_22;
    }

    if (*(v20 + 8) == 1)
    {
      *(v20 + 12) = 0;
LABEL_22:
      v25 = __CFStorageDeleteUnfrozen(a1, a2);
      goto LABEL_26;
    }

    v25 = __CFStorageDeleteFrozen(a1, a2, v20, v22 - v17, v24 - v22);
LABEL_26:
    v20 = v25;
    if (v25)
    {
      goto LABEL_27;
    }

LABEL_28:
    v19 += 8;
    v17 = v23;
  }

  while (v19 != 40);
  *v7 -= a5;
  v26 = *(v7 + 16);
  if (*(v26 + 8) && atomic_fetch_add_explicit((v26 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    __CFStorageDeallocateNode(a2, v26);
  }

  v27 = *(v7 + 24);
  if (v27 && *(v27 + 8) && atomic_fetch_add_explicit((v27 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    __CFStorageDeallocateNode(a2, v27);
  }

  v28 = *(v7 + 32);
  if (v28 && *(v28 + 8) && atomic_fetch_add_explicit((v28 + 8), 0xFFFFFFFF, memory_order_relaxed) == 1)
  {
    __CFStorageDeallocateNode(a2, v28);
  }

  *(v7 + 16) = 0;
  *(v7 + 24) = 0;
  *(v7 + 32) = 0;
  if (v16 == 1)
  {
    v7 = v36;
    goto LABEL_54;
  }

  *(v7 + 16) = v36;
  *(v7 + 32) = v37;
LABEL_52:
  v32 = *(v7 + 8);
  if (v32)
  {
    *(v7 + 8) = v32 + 1;
  }

LABEL_54:
  v33 = *MEMORY[0x1E69E9840];
  return v7;
}

CFAbsoluteTime CFGregorianDateGetAbsoluteTime(CFGregorianDate gdate, CFTimeZoneRef tz)
{
  v3 = *&gdate.year;
  second = gdate.second;
  v5 = __CFAbsoluteFromYMD(gdate.year - 2001, (v3 >> 8) >> 24, (v3 >> 16) >> 24) * 86400.0;
  v6 = (v3 >> 56) * 60.0 + ((v3 >> 24) >> 24) * 3600.0 + second;
  v7 = v6 + v5;
  if (tz)
  {
    SecondsFromGMT = CFTimeZoneGetSecondsFromGMT(tz, v6 + v5);
    return v7 - CFTimeZoneGetSecondsFromGMT(tz, v7 - SecondsFromGMT);
  }

  return v7;
}

double __CFAbsoluteFromYMD(uint64_t a1, unsigned int a2, int a3)
{
  v3 = (a1 / 400) * 146097.0 + 0.0;
  v4 = a1 % 400;
  if (a1 % 400 < 0)
  {
    v9 = ~a1 + 400 * (a1 / 400);
    v10 = a1 % 400;
    do
    {
      v11 = v9 % 0x190;
      if (((v9 % 0x190) & 3) != 0 || v11 == 100 || v11 == 300 || (v12 = 366.0, v11 == 200))
      {
        v12 = 365.0;
      }

      v3 = v3 - v12;
      --v9;
      ++v10;
    }

    while (v10);
  }

  else if (v4)
  {
    v5 = 1;
    v6 = a1 % 400;
    do
    {
      v7 = v5 % 0x190;
      if (((v5 % 0x190) & 3) != 0 || v7 == 100 || v7 == 300 || (v8 = 366.0, v7 == 200))
      {
        v8 = 365.0;
      }

      v3 = v3 + v8;
      ++v5;
      --v6;
    }

    while (v6);
  }

  v13 = (v4 + 1) % 400;
  if (v13 >= 0)
  {
    v14 = (v4 + 1) % 400;
  }

  else
  {
    v14 = -v13;
  }

  if ((v14 & 3) != 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = 0;
    if (v14 != 100 && v14 != 200)
    {
      v15 = v14 != 300;
    }
  }

  if (a2 <= 0xF)
  {
    if (a2 <= 2)
    {
      v15 = 0;
    }

    v16 = (daysBeforeMonth[a2] + v15);
    if (v16 != 0xFFFF)
    {
      v3 = v3 + v16;
    }
  }

  return v3 + (a3 - 1);
}

void __CFNumberFormatterDeallocate(void *a1)
{
  if (a1[2])
  {
    __cficu_unum_close();
  }

  v2 = a1[3];
  if (v2)
  {
    CFRelease(v2);
  }

  v3 = a1[5];
  if (v3)
  {
    CFRelease(v3);
  }

  v4 = a1[6];
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = a1[7];
  if (v5)
  {
    CFRelease(v5);
  }

  v6 = a1[8];
  if (v6)
  {
    CFRelease(v6);
  }

  v7 = a1[9];
  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t _CFBundleDlfcnLoadBundle(uint64_t a1, int a2, CFTypeRef *a3)
{
  v30 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock_with_options();
  v6 = *(a1 + 52);
  os_unfair_lock_unlock((a1 + 96));
  if (v6)
  {
    v7 = 1;
    goto LABEL_26;
  }

  cf = 0;
  v8 = CFBundleCopyExecutableURL(a1);
  v9 = v8;
  if (v8 && CFURLGetFileSystemRepresentation(v8, 1u, buffer, 1026))
  {
    if (a2)
    {
      v10 = 265;
    }

    else
    {
      v10 = 262;
    }

    v11 = dlopen(buffer, v10);
    v12 = _CFBundleLoadingLogger();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEBUG))
    {
      *buf = 138544130;
      v22 = a1;
      v23 = 2082;
      v24 = buffer;
      v25 = 1024;
      v26 = v10;
      v27 = 2048;
      v28 = v11;
      _os_log_debug_impl(&dword_1830E6000, v12, OS_LOG_TYPE_DEBUG, "dlfcn load bundle %{public}@, dlopen of %{public}s mode 0x%x returns handle %p", buf, 0x26u);
    }

    os_unfair_lock_lock_with_options();
    if (v11)
    {
      if (v11 == *(a1 + 56))
      {
        v13 = _CFBundleLoadingLogger();
        if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
        {
          _CFBundleDlfcnLoadBundle_cold_1();
        }

        os_unfair_lock_unlock((a1 + 96));
        dlclose(v11);
        os_unfair_lock_lock_with_options();
      }

      *(a1 + 56) = v11;
      v7 = 1;
      *(a1 + 52) = 1;
      os_unfair_lock_unlock((a1 + 96));
      goto LABEL_20;
    }

    *(a1 + 56) = 0;
    os_unfair_lock_unlock((a1 + 96));
    v7 = dlerror();
    v18 = _CFBundleLoadingLogger();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      _CFBundleDlfcnLoadBundle_cold_2();
      if (!v7)
      {
LABEL_30:
        if (a3)
        {
          _CFBundleDlfcnPreflight(a1, &cf);
          if (!cf)
          {
            v19 = CFGetAllocator(a1);
            cf = _CFBundleCreateErrorDebug(v19, a1, 3588, v7);
          }
        }

        if (v7)
        {
          CFRelease(v7);
          v7 = 0;
        }

        goto LABEL_20;
      }
    }

    else if (!v7)
    {
      goto LABEL_30;
    }

    v7 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, v7);
    goto LABEL_30;
  }

  v14 = _CFBundleLoadingLogger();
  if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    if (!a3)
    {
      goto LABEL_19;
    }

    goto LABEL_18;
  }

  _CFBundleDlfcnLoadBundle_cold_3();
  if (a3)
  {
LABEL_18:
    v15 = CFGetAllocator(a1);
    cf = _CFBundleCreateError(v15, a1, 4);
  }

LABEL_19:
  v7 = 0;
  if (v9)
  {
LABEL_20:
    CFRelease(v9);
  }

  if (!a3 || v7)
  {
    if (cf)
    {
      CFRelease(cf);
    }
  }

  else
  {
    *a3 = cf;
  }

LABEL_26:
  v16 = *MEMORY[0x1E69E9840];
  return v7;
}

unint64_t *skipXMLComment(unint64_t *result)
{
  v1 = result;
  v3 = result[1];
  v2 = result[2];
  if (v3 >= v2 - 3)
  {
LABEL_7:
    v6 = lineNumber(result);
    result = __CFPropertyListCreateError(3840, @"Unterminated comment started on line %u", v6);
    v1[3] = result;
  }

  else
  {
    v4 = v2 - v3 - 3;
    v5 = v3 + 3;
    while (*(v5 - 3) != 45 || *(v5 - 2) != 45 || *(v5 - 1) != 62)
    {
      ++v5;
      if (!--v4)
      {
        goto LABEL_7;
      }
    }

    result[1] = v5;
  }

  return result;
}

double __cficu_ucal_getMillis()
{
  ucal_getMillis();
  v1 = v0;
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_getMillis_cold_1();
  }

  return v1;
}

uint64_t __cficu_ucal_get()
{
  v0 = ucal_get();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_get_cold_1();
  }

  return v0;
}

CFTypeRef _CFCopySystemVersionPlatformDictionary()
{
  if (_CFCopySystemVersionPlatformDictionary_onceToken != -1)
  {
    _CFCopySystemVersionPlatformDictionary_cold_1();
  }

  result = _CFCopySystemVersionPlatformDictionary_result;
  if (_CFCopySystemVersionPlatformDictionary_result)
  {

    return CFRetain(result);
  }

  return result;
}

uint64_t CFStringEncodingIsValidCombiningCharacterForLatin1(int a1)
{
  if ((a1 - 768) > 0x5F)
  {
    return 0;
  }

  else
  {
    return (__CFLatin1CombiningCharBitmap[(a1 - 768) >> 5] >> ~a1) & 1;
  }
}

SInt32 CFURLGetPortNumber(CFURLRef anURL)
{
  *&v12[47] = *MEMORY[0x1E69E9840];
  while (1)
  {
    if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
    {
      CFURLGetPortNumber_cold_1();
    }

    if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
    {
      break;
    }

    if (!anURL)
    {
      CFURLGetPortNumber_cold_2();
    }

    if (CF_IS_OBJC(0x1DuLL, anURL))
    {
      v4 = [(__CFURL *)anURL port];
      v12[1] = 0;
      if (v4)
      {
        goto LABEL_14;
      }

LABEL_17:
      result = -1;
      goto LABEL_24;
    }

    v2 = _retainedComponentString(anURL, 16, 1, 0);
    if (v2)
    {
      v6 = v2;
      memset(v12, 0, 132);
      Length = CFStringGetLength(v2);
      *&v12[33] = v6;
      *&v12[39] = 0;
      *&v12[41] = Length;
      CharactersPtr = CFStringGetCharactersPtr(v6);
      CStringPtr = 0;
      *&v12[35] = CharactersPtr;
      if (!CharactersPtr)
      {
        CStringPtr = CFStringGetCStringPtr(v6, 0x600u);
      }

      *&v12[43] = 0;
      *&v12[45] = 0;
      *&v12[37] = CStringPtr;
      v11 = 0;
      if (!__CFStringScanInteger(&v12[1], 0, &v11, 0, v12) || v11 != Length)
      {
        v12[0] = -1;
      }

      CFRelease(v6);
      result = v12[0];
      goto LABEL_24;
    }

    if (*(anURL + 4))
    {
      v3 = *(anURL + 16);
      anURL = *(anURL + 4);
      if ((v3 & 0x1F) == 0)
      {
        continue;
      }
    }

    goto LABEL_17;
  }

  v4 = [(__CFURL *)anURL port];
  if (!v4)
  {
    goto LABEL_17;
  }

  v12[1] = 0;
LABEL_14:
  if (CFNumberGetValue(v4, kCFNumberSInt32Type, &v12[1]))
  {
    result = v12[1];
  }

  else
  {
    result = -1;
  }

LABEL_24:
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

CFCharacterSetRef CFCharacterSetCreateWithBitmapRepresentation(CFAllocatorRef alloc, CFDataRef theData)
{
  Instance = _CFRuntimeCreateInstance(alloc, 0x19uLL, 32, 0, v2, v3, v4, v5);
  v9 = Instance;
  if (!Instance)
  {
    return v9;
  }

  v10 = atomic_load(Instance + 1);
  v11 = v10;
  do
  {
    atomic_compare_exchange_strong(Instance + 1, &v11, v10 & 0xFFFFFFFFFFFFFFFELL);
    v12 = v11 == v10;
    v10 = v11;
  }

  while (!v12);
  v13 = atomic_load(Instance + 1);
  v14 = v13;
  do
  {
    atomic_compare_exchange_strong(Instance + 1, &v14, v13 & 0xFFFFFFFFFFFFFF8FLL | 0x30);
    v12 = v14 == v13;
    v13 = v14;
  }

  while (!v12);
  Instance[2] = 0;
  Instance[5] = 0;
  if (!theData || (Length = CFDataGetLength(theData), Length < 1))
  {
    v9[3] = 0;
    v23 = atomic_load(v9 + 1);
    v24 = v23;
    do
    {
      atomic_compare_exchange_strong(v9 + 1, &v24, v23 | 4);
      v12 = v24 == v23;
      v23 = v24;
    }

    while (!v12);
    return v9;
  }

  v16 = Length;
  if (!(Length >> 13))
  {
    Typed = CFAllocatorAllocateTyped(alloc, 0x2000, 0x100004077774924, 0);
    BytePtr = CFDataGetBytePtr(theData);
    memmove(Typed, BytePtr, v16);
    bzero(&Typed[v16], 0x2000 - v16);
    v19 = __CFCreateCompactBitmap(alloc, Typed);
    if (v19)
    {
      v20 = v19;
      CFAllocatorDeallocate(alloc, Typed);
      v9[3] = v20;
      v21 = atomic_load(v9 + 1);
      v22 = v21;
      do
      {
        atomic_compare_exchange_strong(v9 + 1, &v22, v21 & 0xFFFFFFFFFFFFFF8FLL | 0x40);
        v12 = v22 == v21;
        v21 = v22;
      }

      while (!v12);
    }

    else
    {
      v9[3] = Typed;
    }

    return v9;
  }

  v26 = CFDataGetBytePtr(theData);
  v27 = __CFCreateCompactBitmap(alloc, v26);
  if (v27)
  {
    v9[3] = v27;
    v28 = atomic_load(v9 + 1);
    v29 = v28;
    do
    {
      atomic_compare_exchange_strong(v9 + 1, &v29, v28 & 0xFFFFFFFFFFFFFF8FLL | 0x40);
      v12 = v29 == v28;
      v28 = v29;
    }

    while (!v12);
  }

  else
  {
    v30 = CFAllocatorAllocateTyped(alloc, 0x2000, 0x100004077774924, 0);
    v31 = CFDataGetBytePtr(theData);
    memmove(v30, v31, 0x2000uLL);
    v9[3] = v30;
  }

  v32 = v16 - 0x2000;
  if (v16 == 0x2000)
  {
    return v9;
  }

  result = CFDataGetBytePtr(theData);
  if (v16 < 8194)
  {
    return v9;
  }

  v33 = result;
  while (1)
  {
    v34 = v33[0x2000];
    if (!v33[0x2000])
    {
      break;
    }

    v33 += 8193;
    if (v34 <= 0x10)
    {
      v35 = v9[5];
      if (v35)
      {
        if (*(v35 + 12) < v34)
        {
          *(v35 + 12) = v34;
          v36 = *v35;
          v37 = CFGetAllocator(v9);
          if (v36)
          {
            result = __CFSafelyReallocateWithAllocatorTyped(v37, *v9[5], 8 * v34, 0x6004044C4A2DFLL, 0, 0);
            goto LABEL_38;
          }

LABEL_37:
          result = CFAllocatorAllocateTyped(v37, 8 * v34, 0x6004044C4A2DFLL, 0);
LABEL_38:
          v35 = v9[5];
          *v35 = result;
        }

        if ((*(v35 + 8) & (1 << v34)) == 0)
        {
          v40 = CFGetAllocator(v9);
          result = CFCharacterSetCreateMutable(v40);
          *(*v9[5] + 8 * v34 - 8) = result;
          v35 = v9[5];
          *(v35 + 8) |= 1 << v34;
        }

        v41 = *(*v35 + 8 * v34 - 8);
        if (v32 <= 0x2000 && v41)
        {
          v42 = CFAllocatorAllocateTyped(alloc, 0x2000, 0x100004077774924, 0);
          memmove(v42, v33, v32 - 1);
          bzero(&v42[v32 - 1], 8193 - v32);
          result = __CFCreateCompactBitmap(alloc, v42);
          if (result)
          {
            v43 = result;
            CFAllocatorDeallocate(alloc, v42);
            *(v41 + 24) = v43;
            v44 = atomic_load((v41 + 8));
            v45 = v44;
            do
            {
              atomic_compare_exchange_strong((v41 + 8), &v45, v44 & 0xFFFFFFFFFFFFFF8FLL | 0x40);
              v12 = v45 == v44;
              v44 = v45;
            }

            while (!v12);
          }

          else
          {
            *(v41 + 24) = v42;
            v48 = atomic_load((v41 + 8));
            v49 = v48;
            do
            {
              atomic_compare_exchange_strong((v41 + 8), &v49, v48 & 0xFFFFFFFFFFFFFF8FLL | 0x30);
              v12 = v49 == v48;
              v48 = v49;
            }

            while (!v12);
          }
        }

        else if (v41)
        {
          result = __CFCreateCompactBitmap(alloc, v33);
          if (result)
          {
            *(v41 + 24) = result;
            v46 = atomic_load((v41 + 8));
            v47 = v46;
            do
            {
              atomic_compare_exchange_strong((v41 + 8), &v47, v46 & 0xFFFFFFFFFFFFFF8FLL | 0x40);
              v12 = v47 == v46;
              v46 = v47;
            }

            while (!v12);
          }

          else
          {
            v50 = CFAllocatorAllocateTyped(alloc, 0x2000, 0x100004077774924, 0);
            result = memmove(v50, v33, 0x2000uLL);
            *(v41 + 24) = v50;
            v51 = atomic_load((v41 + 8));
            v52 = v51;
            do
            {
              atomic_compare_exchange_strong((v41 + 8), &v52, v51 & 0xFFFFFFFFFFFFFF8FLL | 0x30);
              v12 = v52 == v51;
              v51 = v52;
            }

            while (!v12);
          }
        }

        goto LABEL_61;
      }

      v38 = CFGetAllocator(v9);
      v39 = CFAllocatorAllocateTyped(v38, 16, 0x1080040FC6463CFLL, 0);
      v9[5] = v39;
      *(v39 + 12) = v34;
      *(v39 + 13) = 0;
      *(v39 + 8) = 0;
      v37 = CFGetAllocator(v9);
      goto LABEL_37;
    }

LABEL_61:
    v53 = v32 <= 8194;
    v32 -= 8193;
    if (v53)
    {
      return v9;
    }
  }

  __break(1u);
  return result;
}

uint64_t _appendPercentEscapesForCharacter(unsigned __int16 *a1, int a2, uint64_t a3, __CFString *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = 1;
  }

  v6 = CFStringEncodingUnicodeToBytes(a3, 0, a1, v5, 0, v17, 8, &v14);
  result = 0;
  if (!v6)
  {
    if (v14 < 1)
    {
      v8 = 0;
    }

    else
    {
      v8 = 0;
      v9 = (v17 + v14);
      v10 = v16;
      v11 = v17;
      do
      {
        v12 = *v11;
        v11 = (v11 + 1);
        *(v10 - 1) = 37;
        *v10 = CreateStringFromFileSystemRepresentationByAddingPercentEscapes_hexchars[v12 >> 4];
        v8 += 3;
        v10[1] = CreateStringFromFileSystemRepresentationByAddingPercentEscapes_hexchars[v12 & 0xF];
        v10 += 3;
      }

      while (v11 < v9);
    }

    CFStringAppendCharacters(a4, &chars, v8);
    result = 1;
  }

  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void *_CFURLAllocateExtraDataspace(void *result)
{
  if (!result[5])
  {
    v1 = result;
    v2 = CFGetAllocator(result);
    result = CFAllocatorAllocateTyped(v2, 24, 0x10E0040191BE475, 0);
    v3 = v1[5];
    if (v3)
    {
      v4 = *(v3 + 8);
      *result = *v3;
      *(result + 4) = *(v3 + 16);
    }

    else
    {
      v4 = 0;
      *result = 0;
      *(result + 4) = 0;
    }

    result[1] = v4;
    v1[5] = result;
  }

  return result;
}

Boolean CFCharacterSetIsSupersetOfSet(CFCharacterSetRef theSet, CFCharacterSetRef theOtherset)
{
  v2 = MEMORY[0x1EEE9AC00](theSet, theOtherset);
  v4 = v3;
  v5 = v2;
  v67 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x19uLL, v2))
  {
    v6 = [v5 _expandedCFCharacterSet];
    if (!v6)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v6 = 0;
  }

  if (CF_IS_OBJC(0x19uLL, v4))
  {
    v7 = [v4 _expandedCFCharacterSet];
    if (!v7)
    {
      goto LABEL_49;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
    v5 = v6;
  }

  if (v7)
  {
    v4 = v7;
  }

  v8 = v5[5];
  if (v8 && (*(v8 + 8) || *(v8 + 13)))
  {
    goto LABEL_24;
  }

  v9 = atomic_load(v5 + 1);
  v10 = (v9 >> 4) & 7;
  if (v10 <= 2)
  {
    if ((v10 == 1 || v10 == 2) && !v5[4])
    {
      goto LABEL_50;
    }

LABEL_24:
    v11 = v4[5];
    if (v11 && (*(v11 + 8) || *(v11 + 13)))
    {
      goto LABEL_36;
    }

    v12 = atomic_load(v4 + 1);
    v13 = (v12 >> 4) & 7;
    if (v13 > 2)
    {
      if (v13 != 3 && v13 != 4 || v4[3])
      {
        goto LABEL_36;
      }
    }

    else if (v13 != 1 && v13 != 2 || v4[4])
    {
      goto LABEL_36;
    }

    v14 = atomic_load(v4 + 1);
    if ((v14 & 8) == 0)
    {
LABEL_108:
      LOBYTE(IsEqualBitmap) = 1;
      goto LABEL_117;
    }

LABEL_36:
    v15 = atomic_load(v5 + 1);
    if ((v15 & 0x70) == 0 || (v16 = atomic_load(v4 + 1), (v16 & 0x70) == 0))
    {
      v26 = atomic_load(v5 + 1);
      v27 = atomic_load(v4 + 1);
      if (((v27 ^ v26) & 0x70) != 0)
      {
        goto LABEL_49;
      }

      if (v5[3] != v4[3])
      {
        goto LABEL_49;
      }

      v28 = atomic_load(v5 + 1);
      if ((v28 & 8) != 0)
      {
        goto LABEL_49;
      }

      v29 = atomic_load(v4 + 1);
      if ((v29 & 8) != 0)
      {
        goto LABEL_49;
      }

      goto LABEL_108;
    }

    v17 = atomic_load(v5 + 1);
    if ((v17 & 0x70) == 0x10 || (v18 = atomic_load(v4 + 1), (v18 & 0x70) == 0x10))
    {
      v19 = atomic_load(v5 + 1);
      v20 = atomic_load(v4 + 1);
      if (((v20 ^ v19) & 0x70) != 0)
      {
        goto LABEL_49;
      }

      v21 = atomic_load(v5 + 1);
      v22 = atomic_load(v4 + 1);
      if ((v21 & 8) == 0)
      {
        if ((v22 & 8) != 0)
        {
          v58 = *(v5 + 6);
          if (!v58 && v5[4] == 1114112)
          {
            goto LABEL_108;
          }

          v59 = *(v4 + 6);
          if (!v59 && v58 >= *(v4 + 8))
          {
            goto LABEL_108;
          }

          if ((v5[4] + v58) > v59)
          {
            goto LABEL_116;
          }

          LOBYTE(IsEqualBitmap) = v4[4] + v59 == 1114112;
        }

        else
        {
          v23 = *(v4 + 6);
          v24 = *(v5 + 6);
          if (v23 < v24)
          {
            goto LABEL_116;
          }

          LOBYTE(IsEqualBitmap) = (v5[4] + v24) >= (v4[4] + v23);
        }

LABEL_117:
        v62 = *MEMORY[0x1E69E9840];
        return IsEqualBitmap;
      }

      v39 = *(v4 + 6);
      if ((v22 & 8) != 0)
      {
        v60 = *(v5 + 6);
        if (v39 > v60)
        {
          goto LABEL_116;
        }

        v41 = v5[4] + v60;
        v39 += v4[4];
      }

      else
      {
        v40 = *(v5 + 6);
        if ((v4[4] + v39) <= v40)
        {
          goto LABEL_108;
        }

        v41 = v5[4] + v40;
      }

      LOBYTE(IsEqualBitmap) = v41 <= v39;
      goto LABEL_117;
    }

    v37 = v5[5];
    if (v37)
    {
      v38 = *(v37 + 8);
    }

    else
    {
      v38 = 0;
    }

    v42 = v4[5];
    if (v42)
    {
      v43 = *(v42 + 8);
      if (v37)
      {
        goto LABEL_67;
      }
    }

    else
    {
      v43 = 0;
      if (v37)
      {
LABEL_67:
        v44 = *(v37 + 13) == 0;
        if (v42)
        {
          goto LABEL_68;
        }

        goto LABEL_75;
      }
    }

    v44 = 1;
    if (v42)
    {
LABEL_68:
      v45 = *(v42 + 13) == 0;
      if (v44)
      {
        v46 = v38;
      }

      else
      {
        v46 = ~v38 & 0x1FFFE;
      }

      if (*(v42 + 13))
      {
        v43 = ~v43 & 0x1FFFE;
      }

      goto LABEL_79;
    }

LABEL_75:
    if (v44)
    {
      v46 = v38;
    }

    else
    {
      v46 = ~v38 & 0x1FFFE;
    }

    v45 = 1;
LABEL_79:
    __CFCSetGetBitmap(v5, v66);
    __CFCSetGetBitmap(v4, __b);
    v47 = 0;
    while (v47 != 2048)
    {
      v48 = __b[0].i32[v47];
      v49 = v66[0].i32[v47++];
      if ((v48 & ~v49) != 0)
      {
        goto LABEL_116;
      }
    }

    if (v43)
    {
      if ((v43 & ~v46) == 0)
      {
        v64 = v44 << 63 >> 63;
        v50 = v44 - 1;
        v51 = 1;
        while (1)
        {
          v52 = v5[5];
          if (v52)
          {
            if ((*(v52 + 8) & (1 << v51)) != 0 && *(v52 + 12) >= v51)
            {
              v53 = *(*v52 + 8 * v51 - 8);
              if (v53)
              {
                v54 = v4[5];
                if (v54 && (*(v54 + 8) & (1 << v51)) != 0 && *(v54 + 12) >= v51 && (v55 = *(*v54 + 8 * v51 - 8)) != 0)
                {
                  __CFCSetGetBitmap(v53, v66);
                  __CFCSetGetBitmap(v55, __b);
                  v56 = 0;
                  while (v56 != 2048)
                  {
                    LOBYTE(IsEqualBitmap) = 0;
                    v57 = v66[0].i32[v56] ^ v50 | __b[0].i32[v56] ^ (v45 << 31 >> 31);
                    ++v56;
                    if (v57 != -1)
                    {
                      goto LABEL_117;
                    }
                  }
                }

                else if ((v45 & 1) == 0)
                {
                  __CFCSetGetBitmap(v53, v66);
                  IsEqualBitmap = __CFCSetIsEqualBitmap(v66, v64);
                  if (!IsEqualBitmap)
                  {
                    goto LABEL_117;
                  }
                }
              }
            }
          }

          if (++v51 == 17)
          {
            goto LABEL_108;
          }
        }
      }

      goto LABEL_116;
    }

    goto LABEL_108;
  }

  if (v10 != 3 && v10 != 4 || v5[3])
  {
    goto LABEL_24;
  }

LABEL_50:
  v33 = atomic_load(v5 + 1);
  if ((v33 & 8) != 0)
  {
    goto LABEL_108;
  }

  v34 = v4[5];
  if (v34 && (*(v34 + 8) || *(v34 + 13)))
  {
    goto LABEL_116;
  }

  LOBYTE(IsEqualBitmap) = 0;
  v35 = atomic_load(v4 + 1);
  v36 = (v35 >> 4) & 7;
  if (v36 > 2)
  {
    if (v36 != 3 && v36 != 4)
    {
      goto LABEL_117;
    }

    if (v4[3])
    {
      goto LABEL_116;
    }
  }

  else
  {
    if (v36 != 1 && v36 != 2)
    {
      goto LABEL_117;
    }

    if (v4[4])
    {
      goto LABEL_116;
    }
  }

  v61 = atomic_load(v4 + 1);
  if ((v61 & 8) != 0)
  {
LABEL_116:
    LOBYTE(IsEqualBitmap) = 0;
    goto LABEL_117;
  }

LABEL_49:
  Copy = __CFCharacterSetCreateCopy(&__kCFAllocatorSystemDefault, v5, 1);
  CFCharacterSetIntersect(Copy, v4);
  v31 = __CFCharacterSetEqual(Copy, v4);
  CFRelease(Copy);
  v32 = *MEMORY[0x1E69E9840];
  LOBYTE(IsEqualBitmap) = v31;
  return IsEqualBitmap;
}

void CFDateComponentsSetCalendar(uint64_t a1, void *cf2)
{
  if (!a1)
  {
    CFDateComponentsSetCalendar_cold_1();
  }

  v4 = *(a1 + 16);
  if (cf2 && v4)
  {
    if (CFEqual(v4, cf2))
    {
      return;
    }

    v4 = *(a1 + 16);
  }

  else if (!v4)
  {
    goto LABEL_8;
  }

  CFRelease(v4);
  *(a1 + 16) = 0;
LABEL_8:
  if (cf2)
  {
    Copy = _CFCalendarCreateCopy(&__kCFAllocatorSystemDefault, cf2);
    v6 = Copy;
    v7 = *(a1 + 24);
    if (v7)
    {
      CFCalendarSetTimeZone(Copy, v7);
    }

    *(a1 + 16) = v6;
  }
}

BOOL __CFStringEncodingGetCanonicalName(int a1, char *__str, int64_t __size)
{
  v4 = ((a1 & 0xF00u) - 256) >> 8;
  if (v4 - 3 < 2)
  {
    v8 = &unk_183446D16;
    v9 = a1 & 0xFFF;
    v10 = &__CFKnownEncodingList;
    while (1)
    {
      v11 = &v10[(v8 - v10) >> 2];
      v12 = *v11;
      if (v9 == v12)
      {
        break;
      }

      v13 = (v11 - 2);
      v14 = (v11 + 2);
      if (v9 < v12)
      {
        v8 = v13;
      }

      else
      {
        v10 = v14;
      }

      if (v10 > v8)
      {
        return 0;
      }
    }

    if (v11 - &__CFKnownEncodingList != -2 && *(&__CFWindowsCPList + v11 - &__CFKnownEncodingList))
    {
      if ((a1 & 0xF00) == 0x400)
      {
        v15 = "cp%d";
      }

      else
      {
        v15 = "windows-%d";
      }

      v7 = snprintf(__str, __size, v15, *(&__CFWindowsCPList + v11 - &__CFKnownEncodingList));
      return v7 < __size;
    }
  }

  else
  {
    if (v4 == 1)
    {
      v7 = snprintf(__str, __size, "iso-8859-%u");
      return v7 < __size;
    }

    if (v4)
    {
      v17 = &unk_183446D16;
      v18 = a1 & 0xFFF;
      v19 = &__CFKnownEncodingList;
      while (1)
      {
        v20 = &v19[(v17 - v19) >> 2];
        v21 = *v20;
        if (v18 == v21)
        {
          break;
        }

        v22 = (v20 - 2);
        v23 = (v20 + 2);
        if (v18 < v21)
        {
          v17 = v22;
        }

        else
        {
          v19 = v23;
        }

        if (v19 > v17)
        {
          return 0;
        }
      }

      if (v20 - &__CFKnownEncodingList != -2 && *(__CFCanonicalNameList + 4 * (v20 - &__CFKnownEncodingList)))
      {
        v7 = snprintf(__str, __size, "%s%s");
        return v7 < __size;
      }
    }

    else
    {
      HIDWORD(v6) = a1 - 256;
      LODWORD(v6) = a1 - 256;
      v5 = v6 >> 26;
      if (v5 <= 7)
      {
        v24 = off_1E6DD0850[v5];
        v7 = snprintf(__str, __size, "%s");
        return v7 < __size;
      }
    }
  }

  return 0;
}

CFStringRef CFStringConvertEncodingToIANACharSetName(CFStringEncoding encoding)
{
  v8 = *MEMORY[0x1E69E9840];
  v2 = encoding;
  os_unfair_lock_lock_with_options();
  if (!CFStringConvertEncodingToIANACharSetName_mappingTable || (Value = CFDictionaryGetValue(CFStringConvertEncodingToIANACharSetName_mappingTable, v2)) == 0)
  {
    if (__CFStringEncodingGetCanonicalName(encoding, cStr, 100))
    {
      Value = CFStringCreateWithCString(0, cStr, 0x600u);
      if (Value)
      {
        Mutable = CFStringConvertEncodingToIANACharSetName_mappingTable;
        if (!CFStringConvertEncodingToIANACharSetName_mappingTable)
        {
          Mutable = CFDictionaryCreateMutable(0, 0, 0, &kCFTypeDictionaryValueCallBacks);
          CFStringConvertEncodingToIANACharSetName_mappingTable = Mutable;
        }

        CFDictionaryAddValue(Mutable, v2, Value);
        CFRelease(Value);
      }
    }

    else
    {
      Value = 0;
    }
  }

  os_unfair_lock_unlock(&CFStringConvertEncodingToIANACharSetName_lock);
  v5 = *MEMORY[0x1E69E9840];
  return Value;
}

CFDateFormatterRef CFDateFormatterCreateISO8601Formatter(CFAllocatorRef allocator, CFISO8601DateFormatOptions formatOptions)
{
  v4 = CFStringCreateWithCString(&__kCFAllocatorSystemDefault, "en_US_POSIX", 0x8000100u);
  v5 = CFLocaleCreate(&__kCFAllocatorSystemDefault, v4);
  CFDateFormatter = __CreateCFDateFormatter(allocator, v5, 0, 0, &__kCFBooleanTrue, v6, v7, v8);
  if (!formatOptions)
  {
    goto LABEL_54;
  }

  Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 33);
  v11 = Mutable;
  if ((~formatOptions & 0x773) == 0)
  {
    CFStringAppendCString(Mutable, "yyyy-MM-dd", 0x8000100u);
    if ((formatOptions & 0x80) != 0)
    {
      v12 = " ";
    }

    else
    {
      v12 = "'T'";
    }

    CFStringAppendCString(v11, v12, 0x8000100u);
    CFStringAppendCString(v11, "HH:mm:ss", 0x8000100u);
    if ((formatOptions & 0x800) != 0)
    {
      CFStringAppendCString(v11, ".SSS", 0x8000100u);
    }

    CFStringAppendCString(v11, "XXXXX", 0x8000100u);
    goto LABEL_52;
  }

  if (formatOptions)
  {
    v13 = 0;
    v14 = 0;
    if ((formatOptions & 0x400) != 0)
    {
      v15 = "XXXXX";
    }

    else
    {
      v15 = "XXXX";
    }

    if ((formatOptions & 0x80) != 0)
    {
      v16 = " ";
    }

    else
    {
      v16 = "'T'";
    }

    v17 = "HH:mm:ss";
    if ((formatOptions & 0x200) == 0)
    {
      v17 = "HHmmss";
    }

    cStr = v16;
    v24 = v17;
    v18 = "dd";
    if ((formatOptions & 2) == 0)
    {
      v18 = "DDD";
    }

    if ((formatOptions & 4) != 0)
    {
      v18 = "ee";
    }

    v25 = v18;
    if ((formatOptions & 4) != 0)
    {
      v19 = "YYYY";
    }

    else
    {
      v19 = "yyyy";
    }

    do
    {
      Length = CFStringGetLength(v11);
      if (v13 > 15)
      {
        if (v13 != 16)
        {
          if (v13 == 32)
          {
            if ((formatOptions & 0x20) == 0)
            {
              goto LABEL_51;
            }

            if (Length >= 1)
            {
              CFStringAppendCString(v11, cStr, 0x8000100u);
            }

            CFStringAppendCString(v11, v24, 0x8000100u);
            v21 = ".SSS";
            if ((formatOptions & 0x800) == 0)
            {
              goto LABEL_51;
            }
          }

          else
          {
            if (v13 != 64)
            {
              goto LABEL_51;
            }

            v21 = v15;
            if ((formatOptions & 0x40) == 0)
            {
              goto LABEL_51;
            }
          }

          goto LABEL_50;
        }

        if ((formatOptions & 0x10) != 0)
        {
          v21 = v25;
          if ((formatOptions & 0x100) != 0)
          {
            v21 = v25;
            goto LABEL_44;
          }

LABEL_50:
          CFStringAppendCString(v11, v21, 0x8000100u);
        }
      }

      else
      {
        if (v13 == 1)
        {
          v21 = v19;
          if ((formatOptions & 1) == 0)
          {
            goto LABEL_51;
          }

          goto LABEL_50;
        }

        if (v13 != 2)
        {
          if (v13 != 4 || (formatOptions & 4) == 0)
          {
            goto LABEL_51;
          }

          v21 = "'W'ww";
          if ((formatOptions & 0x100) == 0)
          {
            goto LABEL_50;
          }

LABEL_44:
          if (Length >= 1)
          {
            CFStringAppendCString(v11, "-", 0x8000100u);
          }

          goto LABEL_50;
        }

        if ((formatOptions & 2) != 0)
        {
          v21 = "MM";
          if ((formatOptions & 0x100) != 0)
          {
            goto LABEL_44;
          }

          goto LABEL_50;
        }
      }

LABEL_51:
      v13 = 1 << v14++;
    }

    while (v13 < formatOptions);
  }

LABEL_52:
  if (v11)
  {
    CFDateFormatterSetFormat(CFDateFormatter, v11);
    CFRelease(v11);
  }

LABEL_54:
  CFRelease(v4);
  CFRelease(v5);
  return CFDateFormatter;
}

CFStringRef _CFErrorCreateLocalizedDescription(void *a1)
{
  v2 = 1;
  do
  {
    v3 = v2;
    if (v2)
    {
      v4 = _CFErrorCopyUserInfoKeyFromUserInfo;
      v5 = _CFErrorCopyUserInfoKeyFromUserInfo(a1, @"NSLocalizedDescription");
    }

    else
    {
      v4 = _CFErrorCopyUserInfoKeyFromCallBack;
      v5 = _CFErrorCopyUserInfoKeyFromCallBack(a1, @"NSLocalizedDescription");
    }

    if (v5)
    {
      return v5;
    }

    v6 = v4(a1, @"NSLocalizedFailure");
    if (v6)
    {
      v11 = v6;
      v13 = _CFErrorCopyUserInfoKey(a1, @"NSLocalizedFailureReason");
      if (v13)
      {
        v14 = v13;
        BundleWithIdentifier = CFBundleGetBundleWithIdentifier(@"com.apple.CoreFoundation");
        if (!BundleWithIdentifier || (v16 = CFBundleCopyLocalizedString(BundleWithIdentifier, @"%@ %@", @"%@ %@", @"Error"), v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, v16, v11, v14), CFRelease(v16), !v17))
        {
          v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@ %@", v11, v14);
        }

        CFRelease(v11);
        CFRelease(v14);
        return v17;
      }

      return v11;
    }

    v2 = 0;
  }

  while ((v3 & 1) != 0);
  v7 = CFBundleGetBundleWithIdentifier(@"com.apple.CoreFoundation");
  v8 = _CFErrorCopyUserInfoKey(a1, @"NSLocalizedFailureReason");
  v9 = v8;
  if (v7)
  {
    if (v8)
    {
      v10 = CFBundleCopyLocalizedString(v7, @"The operation couldn\\U2019t be completed. %@", @"The operation couldn\\U2019t be completed. %@", @"Error");
      v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, v10, v9);
      v12 = v10;
    }

    else
    {
      v19 = _CFErrorCopyUserInfoKey(a1, @"NSDescription");
      if (CF_IS_OBJC(0x1BuLL, a1))
      {
        v20 = [a1 domain];
      }

      else
      {
        v20 = a1[3];
      }

      if (CF_IS_OBJC(0x1BuLL, a1))
      {
        v23 = [a1 domain];
      }

      else
      {
        v23 = a1[3];
      }

      v9 = CFBundleCopyLocalizedString(v7, v20, v23, @"Error");
      if (v19)
      {
        v24 = CFBundleCopyLocalizedString(v7, @"The operation couldn\\U2019t be completed. (%@ error %ld - %@)", @"The operation couldn\\U2019t be completed. (%@ error %ld - %@)", @"Error");
        if (CF_IS_OBJC(0x1BuLL, a1))
        {
          v25 = [a1 code];
        }

        else
        {
          v25 = a1[2];
        }

        v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, v24, v9, v25, v19);
        CFRelease(v24);
      }

      else
      {
        v19 = CFBundleCopyLocalizedString(v7, @"The operation couldn\\U2019t be completed. (%@ error %ld.)", @"The operation couldn\\U2019t be completed. (%@ error %ld.)", @"Error");
        if (CF_IS_OBJC(0x1BuLL, a1))
        {
          v26 = [a1 code];
        }

        else
        {
          v26 = a1[2];
        }

        v11 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, v19, v9, v26);
      }

      v12 = v19;
    }

    CFRelease(v12);
LABEL_48:
    CFRelease(v9);
    return v11;
  }

  if (v8)
  {
    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"The operation couldn\\U2019t be completed. %@", v8);
LABEL_47:
    v11 = v18;
    goto LABEL_48;
  }

  v9 = _CFErrorCopyUserInfoKey(a1, @"NSDescription");
  v21 = CF_IS_OBJC(0x1BuLL, a1);
  if (v9)
  {
    if (v21)
    {
      v22 = [a1 domain];
    }

    else
    {
      v22 = a1[3];
    }

    if (CF_IS_OBJC(0x1BuLL, a1))
    {
      v28 = [a1 code];
    }

    else
    {
      v28 = a1[2];
    }

    v18 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"The operation couldn\\U2019t be completed. (%@ error %ld - %@)", v22, v28, v9);
    goto LABEL_47;
  }

  if (v21)
  {
    v27 = [a1 domain];
  }

  else
  {
    v27 = a1[3];
  }

  if (CF_IS_OBJC(0x1BuLL, a1))
  {
    v30 = [a1 code];
  }

  else
  {
    v30 = a1[2];
  }

  return CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"The operation couldn\\U2019t be completed. (%@ error %ld.)", v27, v30);
}

CFIndex _loadStringsDictTable(const void *a1, void *a2, void *a3, CFDictionaryRef theDict, uint64_t a5, CFTypeRef *a6)
{
  Count = CFDictionaryGetCount(theDict);
  StringsFromData = _loadStringsFromData(a1, a2, a3, *(a5 + 40), *(a5 + 65), theDict, a5);
  if (a6 && StringsFromData && !*a6)
  {
    *a6 = CFRetain(*(a5 + 24));
  }

  result = CFDictionaryGetCount(theDict);
  if (result > Count)
  {
    *(a5 + 75) = 1;
  }

  return result;
}

uint64_t _loadStringsFromData(CFTypeRef cf, void *a2, void *a3, const __CFData *a4, int a5, const __CFDictionary *a6, _BYTE *a7)
{
  v31 = *MEMORY[0x1E69E9840];
  v27 = 0;
  v28 = &v27;
  v29 = 0x2020000000;
  v30 = 0;
  if (a7[73])
  {
    v14 = 0;
    v15 = 1;
    if (!a3)
    {
      Mutable = 0;
      goto LABEL_11;
    }

    Mutable = 0;
    if (a7[72])
    {
      goto LABEL_11;
    }
  }

  else if (!a3)
  {
    v14 = 0;
    Mutable = 0;
    v15 = 1;
    goto LABEL_11;
  }

  if (_dictionaryContainsAllKeysInSet(a6, a3))
  {
    v17 = 0;
    goto LABEL_20;
  }

  Count = CFSetGetCount(a3);
  Mutable = CFSetCreateMutable(&__kCFAllocatorSystemDefault, Count, &kCFTypeSetCallBacks);
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v26[2] = ___loadStringsFromData_block_invoke;
  v26[3] = &__block_descriptor_40_e13_v24__0r_v8_16l;
  v26[4] = Mutable;
  CFSetApply(a3, v26);
  v15 = 0;
  v14 = a3;
LABEL_11:
  StringsFromPlistData = __CFBundleCreateStringsFromPlistData(cf, Mutable, a4, a5, a2);
  v20 = StringsFromPlistData;
  if (StringsFromPlistData)
  {
    if (CFGetTypeID(StringsFromPlistData) == 18)
    {
      if (v15)
      {
        v21 = CFDictionaryGetCount(a6);
        CFDictionaryApplyFunction(v20, __CFStringsDictAddFunction, a6);
        v22 = CFDictionaryGetCount(a6) > v21;
        *(v28 + 24) = v22;
        a7[74] = 1;
      }

      else
      {
        v25[0] = MEMORY[0x1E69E9820];
        v25[1] = 3221225472;
        v25[2] = ___loadStringsFromData_block_invoke_2;
        v25[3] = &unk_1E6DD1630;
        v25[4] = &v27;
        v25[5] = v20;
        v25[6] = a6;
        CFSetApply(v14, v25);
      }
    }

    CFRelease(v20);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v17 = *(v28 + 24);
LABEL_20:
  _Block_object_dispose(&v27, 8);
  v23 = *MEMORY[0x1E69E9840];
  return v17;
}

void sub_18318AD14(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void ___loadStringsFromData_block_invoke(uint64_t a1, const void *a2)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = a2;
  v3 = CFArrayCreate(&__kCFAllocatorSystemDefault, v5, 1, &kCFTypeArrayCallBacks);
  CFSetAddValue(*(a1 + 32), v3);
  CFRelease(v3);
  v4 = *MEMORY[0x1E69E9840];
}

void ___loadStringsFromData_block_invoke_2(uint64_t a1, const void *a2)
{
  Value = CFDictionaryGetValue(*(a1 + 40), a2);
  if (Value)
  {
    v5 = Value;
    *(*(*(a1 + 32) + 8) + 24) = 1;
    v6 = *(a1 + 48);

    CFDictionaryAddValue(v6, a2, v5);
  }
}

void _CFBundleEnsureAllBundlesUpToDate()
{
  CFBundleGetMainBundle();
  v0 = _CFBundleDYLDCopyLoadedImagePathsIfChanged();
  if (v0)
  {
    v1 = v0;
    _CFBundleEnsureBundlesExistForImagePaths(v0);

    CFRelease(v1);
  }
}

__CFArray *_CFBundleDYLDCopyLoadedImagePathsIfChanged()
{
  v0 = _dyld_image_count();
  if (v0 != _CFBundleDYLDCopyLoadedImagePathsIfChanged__cachedDYLDImageCount)
  {
    v2 = v0;
    v3 = _CFProcessPath();
    v4 = _NSGetMachExecuteHeader();
    Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
    if (!v2)
    {
LABEL_39:
      _CFBundleDYLDCopyLoadedImagePathsIfChanged__cachedDYLDImageCount = v2;
      return Mutable;
    }

    v5 = 0;
    while (1)
    {
      image_name = _dyld_get_image_name(v5);
      v7 = _CFBundleNormalizedPath(image_name);
      v8 = v7;
      v9 = 0;
      if (!v5 && v7)
      {
        v10 = strdup(v7);
        v9 = v10;
        if (!v10)
        {
          goto LABEL_29;
        }

        v11 = strlen(v10);
        if (v11 < 1)
        {
          v13 = 0;
        }

        else
        {
          v12 = 0;
          v13 = 0;
          do
          {
            v9[v13] = v9[v12];
            while (v12 < v11 - 1)
            {
              v14 = &v9[v12];
              if (v9[v12] != 47)
              {
                break;
              }

              v15 = v14[1];
              if (v15 != 47)
              {
                v16 = v15 == 46 && v12 < v11 - 2;
                if (!v16 || v14[2] != 47)
                {
                  break;
                }
              }

              if (v15 == 47)
              {
                v17 = 1;
              }

              else
              {
                v17 = 2;
              }

              v12 += v17;
            }

            ++v13;
            ++v12;
          }

          while (v12 < v11);
        }

        v9[v13] = 0;
      }

      if (!v8)
      {
        goto LABEL_36;
      }

LABEL_29:
      if (v3)
      {
        if (!strcmp(v8, v3))
        {
          goto LABEL_36;
        }

        if (v9 && !strcmp(v9, v3))
        {
LABEL_37:
          free(v9);
          goto LABEL_38;
        }
      }

      if (v4 != _dyld_get_image_header(v5))
      {
        v18 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, v8);
        if (v18)
        {
          v19 = v18;
          CFArrayAppendValue(Mutable, v18);
          CFRelease(v19);
        }
      }

LABEL_36:
      if (v9)
      {
        goto LABEL_37;
      }

LABEL_38:
      if (++v5 == v2)
      {
        goto LABEL_39;
      }
    }
  }

  return 0;
}

CFStringRef _CFURLCopyHostName(unint64_t a1, int a2)
{
  while (1)
  {
    if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
    {
      _CFURLCopyHostName_cold_1();
    }

    if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
    {
      v7 = [a1 _host:a2 == 0];

      return v7;
    }

    if (!a1)
    {
      _CFURLCopyHostName_cold_2();
    }

    if (CF_IS_OBJC(0x1DuLL, a1))
    {
      v9 = [a1 host];
      v6 = v9;
      if (v9)
      {
        CFRetain(v9);
      }

      return v6;
    }

    v4 = _retainedComponentString(a1, 8, 1, a2);
    if (v4)
    {
      break;
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

  v6 = v4;
  if ((*(a1 + 17) & 4) == 0)
  {
    return v6;
  }

  v10 = CFGetAllocator(a1);
  v13.length = CFStringGetLength(v6) - 2;
  v13.location = 1;
  v11 = CFStringCreateWithSubstring(v10, v6, v13);
  CFRelease(v6);
  return v11;
}

void CFAllocatorGetContext(CFAllocatorRef allocator, CFAllocatorContext *context)
{
  v3 = allocator;
  if (!allocator)
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

  v5 = *v3 & ~MEMORY[0x1E69E58F0];
  if ((*v3 & MEMORY[0x1E69E58F0]) != 0)
  {
    v5 |= *v3 & MEMORY[0x1E69E58F0];
  }

  if (v5 == qword_1ED40C0D0)
  {
    context->version = 0;
    v6 = *(v3 + 18);
    if (v6 == &__MallocDefaultZoneInfoPlaceholder)
    {
      v6 = malloc_default_zone();
    }

    context->info = v6;
    *&context->retain = *(v3 + 152);
    *&context->copyDescription = *(v3 + 168);
    *&context->reallocate = *(v3 + 184);
    context->preferredSize = *(v3 + 25);
  }
}

unsigned int *__CFUniCharPrioritySort(unsigned int *result, uint64_t a2)
{
  v2 = &result[a2];
  if (a2 >= 1)
  {
    do
    {
      v3 = *result;
      if (!(v3 >> 17))
      {
        v4 = *(&__CFUniCharCombiningPriorityTable_0 + ((v3 >> 13) & 0x7FFF8));
        if (*(v4 + BYTE1(v3)))
        {
          if (*(v4 + (*(v4 + BYTE1(v3)) << 8) - 256 + v3 + 256))
          {
            break;
          }
        }
      }

      ++result;
    }

    while (result < v2);
  }

  if ((v2 - result) >= 5)
  {
    do
    {
      v5 = *result;
      if (v5 >> 17)
      {
        v7 = 0;
      }

      else
      {
        v6 = *(&__CFUniCharCombiningPriorityTable_0 + ((v5 >> 13) & 0x7FFF8));
        v7 = *(v6 + BYTE1(v5));
        if (*(v6 + BYTE1(v5)))
        {
          v7 = *(v6 + (v7 << 8) - 256 + v5 + 256);
        }
      }

      if ((result + 1) >= v2)
      {
        break;
      }

      v8 = 0;
      v9 = result + 1;
      do
      {
        v10 = *v9;
        if (v10 >> 17 || (v11 = *(&__CFUniCharCombiningPriorityTable_0 + ((v10 >> 13) & 0x7FFF8)), !*(v11 + BYTE1(v10))))
        {
          v12 = 0;
        }

        else
        {
          v12 = *(v11 + (*(v11 + BYTE1(v10)) << 8) - 256 + v10 + 256);
        }

        if (v7 > v12)
        {
          v13 = *(v9 - 1);
          *(v9 - 1) = v10;
          *v9 = v13;
          v8 = 1;
        }

        ++v9;
        v7 = v12;
      }

      while (v9 < v2);
    }

    while ((v8 & 1) != 0);
  }

  return result;
}

CFPlugInRef CFPlugInCreate(CFAllocatorRef allocator, CFURLRef plugInURL)
{
  v2 = CFBundleCreate(allocator, plugInURL);
  if (!atomic_load(CFPlugInCreate_checkedLinkage))
  {
    v4 = NSVersionOfLinkTimeLibrary("System");
    v5 = NSVersionOfLinkTimeLibrary("CoreFoundation");
    if (v4 == -1 && v5 == -1 || v5 != -1 && v5 < 24576000 || v4 != -1 && v4 < 5832704)
    {
      atomic_store(1u, CFPlugInCreate_doDynamicRegistrationAtCreateTime);
    }

    atomic_store(1u, CFPlugInCreate_checkedLinkage);
  }

  if (v2)
  {
    if (atomic_load(CFPlugInCreate_doDynamicRegistrationAtCreateTime))
    {
      if (*__CFBundleGetPlugInData(v2) && *(__CFBundleGetPlugInData(v2) + 3) && !CFBundleIsExecutableLoaded(v2))
      {
        CFBundleLoadExecutable(v2);
      }
    }
  }

  return v2;
}

const __CFString *_searchForDummyUUID(const __CFString *result, const __CFString *a2, _BYTE *a3)
{
  if (!*a3)
  {
    v5 = result;
    v6 = CFGetTypeID(result);
    result = CFStringGetTypeID();
    if (v6 == result)
    {
      result = CFStringCompare(v5, @"00000000-0000-0000-0000-000000000000", 0);
      if (a2)
      {
        if (!result)
        {
          v7 = CFGetTypeID(a2);
          result = CFStringGetTypeID();
          if (v7 == result)
          {
            result = CFStringCompare(a2, @"MyFactoryFunction", 0);
            if (!result)
            {
              *a3 = 1;
            }
          }
        }
      }
    }
  }

  return result;
}

void _searchForExistingFactoryLocked(const __CFString *a1, uint64_t a2, CFTypeRef *a3)
{
  if (!*a3)
  {
    v5 = CFGetTypeID(a1);
    if (v5 != CFStringGetTypeID() || (v6 = CFUUIDCreateFromString(&__kCFAllocatorSystemDefault, a1)) == 0)
    {
      v6 = CFRetain(a1);
    }

    if (_factoriesByFactoryID)
    {
      Value = CFDictionaryGetValue(_factoriesByFactoryID, v6);
      if (Value)
      {
        *a3 = CFRetain(Value[5]);
      }
    }

    if (v6)
    {

      CFRelease(v6);
    }
  }
}

void _registerFactoryLocked(const __CFString *a1, const __CFString *a2, const void *a3)
{
  v23 = *MEMORY[0x1E69E9840];
  v6 = CFGetTypeID(a1);
  if (v6 != CFStringGetTypeID() || (v7 = CFUUIDCreateFromString(&__kCFAllocatorSystemDefault, a1)) == 0)
  {
    v7 = CFRetain(a1);
  }

  v8 = CFGetTypeID(a2);
  if (v8 != CFStringGetTypeID() || CFStringGetLength(a2) <= 0)
  {
    a2 = 0;
  }

  if (_CFBundlePluginLogger_onceToken != -1)
  {
    _registerFactoryLocked_cold_1();
  }

  v9 = _CFBundlePluginLogger__log;
  if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
  {
    v16 = @"<no func>";
    v17 = 138543874;
    if (a2)
    {
      v16 = a2;
    }

    v18 = v7;
    v19 = 2114;
    v20 = v16;
    v21 = 2050;
    v22 = a3;
    _os_log_debug_impl(&dword_1830E6000, v9, OS_LOG_TYPE_DEBUG, "Registering static factory %{public}@ %{public}@ bundle %{public}p", &v17, 0x20u);
  }

  _CFPlugInRegisterFactoryFunctionByNameLocked(v7, a3, a2, v10, v11, v12, v13, v14);
  if (v7)
  {
    CFRelease(v7);
  }

  v15 = *MEMORY[0x1E69E9840];
}

const void *__CFDateCopyDescription(void *a1)
{
  v2 = _CFAutoreleasePoolPush();
  v3 = [a1 description];
  v4 = v3;
  if (v3)
  {
    CFRetain(v3);
  }

  _CFAutoreleasePoolPop(v2);
  return v4;
}

CFErrorRef __CFPropertyListCreateError(CFIndex code, CFStringRef format, ...)
{
  va_start(va, format);
  v10 = *MEMORY[0x1E69E9840];
  if (format)
  {
    v3 = CFStringCreateWithFormatAndArguments(&__kCFAllocatorSystemDefault, 0, format, va);
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    CFDictionarySetValue(Mutable, @"NSDebugDescription", v3);
    v5 = CFErrorCreate(&__kCFAllocatorSystemDefault, @"NSCocoaErrorDomain", code, Mutable);
    CFRelease(v3);
    CFRelease(Mutable);
    v6 = *MEMORY[0x1E69E9840];
    return v5;
  }

  else
  {
    v8 = *MEMORY[0x1E69E9840];
    v9 = *MEMORY[0x1E69E9840];

    return CFErrorCreate(&__kCFAllocatorSystemDefault, @"NSCocoaErrorDomain", code, 0);
  }
}

CFStringRef _CFStringCreateByRemovingPercentEncoding(const __CFAllocator *a1, CFStringRef theString)
{
  v21[1] = *MEMORY[0x1E69E9840];
  Length = CFStringGetLength(theString);
  if (Length)
  {
    v5 = Length;
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    if (MaximumSizeForEncoding == -1)
    {
      v9 = 0;
    }

    else
    {
      v8 = MaximumSizeForEncoding;
      v9 = 0;
      if ((MaximumSizeForEncoding & 0x8000000000000000) == 0)
      {
        v10 = 2 * MaximumSizeForEncoding;
        if (2 * MaximumSizeForEncoding)
        {
          if (v10 < 0x401)
          {
            MEMORY[0x1EEE9AC00](MaximumSizeForEncoding, v7);
            v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
            bzero(v11, 2 * v8);
          }

          else
          {
            v11 = malloc_type_malloc(2 * MaximumSizeForEncoding, 0x100004077774924uLL);
          }

          v21[0] = 0;
          v23.location = 0;
          v23.length = v5;
          if (CFStringGetBytes(theString, v23, 0x8000100u, 0, 0, v11, v8, v21))
          {
            v14 = v21[0];
            v15 = &v11[v8];
            if (v21[0] >= 1)
            {
              v16 = 0;
              v17 = v11;
              v15 = &v11[v8];
              do
              {
                v18 = *v17;
                if (v18 == 37)
                {
                  v16 += 2;
                  if (v16 >= v14)
                  {
                    goto LABEL_22;
                  }

                  v19 = _CFStringCreateByRemovingPercentEncoding_hexvalues[v17[1]];
                  v18 = _CFStringCreateByRemovingPercentEncoding_hexvalues[v17[2]];
                  if (((v18 | v19) & 0x80) != 0)
                  {
                    goto LABEL_22;
                  }

                  v17 += 3;
                  LOBYTE(v18) = v18 + 16 * v19;
                }

                else
                {
                  ++v17;
                }

                *v15++ = v18;
                ++v16;
                v14 = v21[0];
              }

              while (v16 < v21[0]);
            }

            v9 = CFStringCreateWithBytes(0, &v11[v8], v15 - &v11[v8], 0x8000100u, 0);
          }

          else
          {
LABEL_22:
            v9 = 0;
          }

          if (v10 >= 0x401)
          {
            free(v11);
          }
        }
      }
    }

    v20 = *MEMORY[0x1E69E9840];
    return v9;
  }

  else
  {
    v12 = *MEMORY[0x1E69E9840];

    return CFStringCreateCopy(a1, theString);
  }
}

ssize_t fdWrite(int a1, const void *a2, size_t a3, uint64_t a4)
{
  result = write(a1, a2, a3);
  if (result < 0)
  {
    v6 = *__error();
    *a4 = 1;
    result = -1;
  }

  else
  {
    v6 = 0;
  }

  *(a4 + 8) = v6;
  return result;
}

ssize_t fileWrite(uint64_t a1, const void *a2, size_t a3, uint64_t a4, uint64_t a5)
{
  v6 = fdWrite(*(a5 + 8), a2, a3, a4);
  v7 = *(a5 + 24);
  if (v7)
  {
    *(a5 + 24) = v7 & 0xFFFFFFFFFFFFFFFELL;
    v8 = *(a5 + 16);
    if (v8)
    {
      CFFileDescriptorEnableCallBacks(v8, 2uLL);
    }
  }

  return v6;
}

uint64_t _CFPFactoryCommonCreateLocked(__objc2_class **a1, const void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = *MEMORY[0x1E69E9840];
  Instance = _CFRuntimeCreateInstance(a1, 0x20uLL, 48, 0, a5, a6, a7, a8);
  if (Instance)
  {
    *(Instance + 16) = CFRetain(a2);
    *(Instance + 24) = 1;
    *(Instance + 56) = CFArrayCreateMutable(a1, 0, &kCFTypeArrayCallBacks);
    v11 = *(Instance + 16);
    v12 = _factoriesByFactoryID;
    if (!_factoriesByFactoryID)
    {
      memset(&v15, 0, sizeof(v15));
      v12 = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &v15);
      _factoriesByFactoryID = v12;
    }

    CFDictionarySetValue(v12, v11, Instance);
    if (_CFBundlePluginLogger_onceToken != -1)
    {
      _CFPFactoryCommonCreateLocked_cold_1();
    }

    if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
    {
      _CFPFactoryCommonCreateLocked_cold_2();
    }
  }

  v13 = *MEMORY[0x1E69E9840];
  return Instance;
}

CFStringRef _CFPlugInRegisterFactoryFunctionByNameLocked(const void *a1, const void *a2, const __CFString *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  Locked = _CFPFactoryCommonCreateLocked(&__kCFAllocatorSystemDefault, a1, a3, a4, a5, a6, a7, a8);
  Locked[4] = 0;
  Locked[5] = CFRetain(a2);
  if (a2 && *__CFBundleGetPlugInData(a2))
  {
    PlugInData = __CFBundleGetPlugInData(a2);
    CFArrayAppendValue(*(PlugInData + 16), Locked);
  }

  if (a3)
  {
    result = CFStringCreateCopy(&__kCFAllocatorSystemDefault, a3);
  }

  else
  {
    result = 0;
  }

  Locked[6] = result;
  return result;
}

CFTypeRef _CFLocaleCopyPreferredTemperatureUnit()
{
  v6 = *MEMORY[0x1E69E9840];
  v0 = CFPreferencesCopyValue(@"AppleTemperatureUnit", @"kCFPreferencesAnyApplication", @"kCFPreferencesCurrentUser", @"kCFPreferencesAnyHost");
  v5 = 0;
  if (!_CFLocaleGetTemperatureUnitForPreferences(v0, &v5))
  {
    v2 = 0;
    if (!v0)
    {
      goto LABEL_8;
    }

LABEL_7:
    CFRelease(v0);
    goto LABEL_8;
  }

  v1 = &kCFLocaleTemperatureUnitCelsius;
  if (!v5)
  {
    v1 = &kCFLocaleTemperatureUnitFahrenheit;
  }

  v2 = CFRetain(*v1);
  if (v0)
  {
    goto LABEL_7;
  }

LABEL_8:
  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t _CFLocaleGetTemperatureUnitForPreferences(uint64_t result, char *a2)
{
  if (result)
  {
    v3 = result;
    if (CFEqual(result, @"Celsius"))
    {
      v4 = 1;
    }

    else
    {
      result = CFEqual(v3, @"Fahrenheit");
      v4 = 0;
      if (!result)
      {
        return result;
      }
    }

    *a2 = v4;
    return 1;
  }

  return result;
}

void _registerTypeLocked(const __CFString *a1, const __CFString *cf, const void *a3)
{
  v25 = *MEMORY[0x1E69E9840];
  v6 = CFGetTypeID(cf);
  if (v6 == CFArrayGetTypeID())
  {
    Count = CFArrayGetCount(cf);
  }

  else
  {
    Count = 0;
  }

  v8 = CFGetTypeID(a1);
  if (v8 == CFStringGetTypeID() && (v9 = CFUUIDCreateFromString(&__kCFAllocatorSystemDefault, a1)) != 0)
  {
    if (Count)
    {
      goto LABEL_7;
    }
  }

  else
  {
    v9 = CFRetain(a1);
    if (Count)
    {
LABEL_7:
      if (Count >= 1)
      {
        for (i = 0; i != Count; ++i)
        {
          ValueAtIndex = CFArrayGetValueAtIndex(cf, i);
          v12 = CFGetTypeID(ValueAtIndex);
          if (v12 != CFStringGetTypeID() || (v13 = CFGetAllocator(a3), (v14 = CFUUIDCreateFromString(v13, ValueAtIndex)) == 0))
          {
            v14 = CFRetain(ValueAtIndex);
          }

          if (_CFBundlePluginLogger_onceToken != -1)
          {
            _registerTypeLocked_cold_1();
          }

          v15 = _CFBundlePluginLogger__log;
          if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
          {
            *buf = 138543618;
            v22 = v14;
            v23 = 2114;
            v24 = v9;
            _os_log_debug_impl(&dword_1830E6000, v15, OS_LOG_TYPE_DEBUG, "Registering factory %{public}@ type %{public}@", buf, 0x16u);
          }

          _CFPlugInRegisterPlugInTypeLocked(v14, v9);
          if (v14)
          {
            CFRelease(v14);
          }
        }
      }

      goto LABEL_31;
    }
  }

  v16 = CFGetTypeID(cf);
  if (v16 != CFArrayGetTypeID())
  {
    v17 = CFGetTypeID(cf);
    if (v17 != CFStringGetTypeID() || (v18 = CFGetAllocator(a3), (v19 = CFUUIDCreateFromString(v18, cf)) == 0))
    {
      v19 = CFRetain(cf);
    }

    if (_CFBundlePluginLogger_onceToken != -1)
    {
      _registerTypeLocked_cold_2();
    }

    if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
    {
      _registerTypeLocked_cold_3();
    }

    _CFPlugInRegisterPlugInTypeLocked(v19, v9);
    if (v19)
    {
      CFRelease(v19);
    }
  }

LABEL_31:
  if (v9)
  {
    CFRelease(v9);
  }

  v20 = *MEMORY[0x1E69E9840];
}

void CFStringPad(CFMutableStringRef theString, CFStringRef padString, CFIndex length, CFIndex indexIntoPad)
{
  v50 = *MEMORY[0x1E69E9840];
  if (!CF_IS_OBJC(7uLL, theString))
  {
    p_info = &theString->info;
    v10 = atomic_load(&theString->info);
    if ((v10 & 1) == 0)
    {
      v11 = _CFOSLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_FAULT))
      {
        CFStringPad_cold_1(v11, v12, v13, v14, v15, v16, v17, v18);
      }

      goto LABEL_49;
    }

    v19 = atomic_load(p_info);
    v20 = v19 & 5;
    v21 = atomic_load(p_info);
    v22 = v21 & 0x60;
    if (v20 == 4)
    {
      p_data = &theString->data;
      if (v22)
      {
        v24 = *p_data;
      }

      else
      {
        v26 = atomic_load(&theString->info);
        v24 = &p_data[(v26 & 5) != 4];
      }

      data = *v24;
    }

    else if ((v21 & 0x60) != 0)
    {
      data = theString->length;
    }

    else
    {
      data = theString->data;
    }

    if (data > length)
    {
      v48 = length;
      v49 = data - length;
      __CFStringChangeSizeMultiple(theString, &v48, 1, 0, 0);
LABEL_49:
      v47 = *MEMORY[0x1E69E9840];
      return;
    }

    if (data >= length)
    {
      goto LABEL_49;
    }

    v27 = length - data;
    if (CF_IS_OBJC(7uLL, padString))
    {
      v28 = CFStringGetLength(padString);
    }

    else
    {
      v29 = atomic_load(&padString->info);
      v30 = v29 & 5;
      v31 = atomic_load(&padString->info);
      v32 = v31 & 0x60;
      if (v30 == 4)
      {
        v33 = &padString->data;
        if (v32)
        {
          v34 = *v33;
        }

        else
        {
          v35 = atomic_load(&padString->info);
          v34 = &v33[(v35 & 5) != 4];
        }

        v28 = *v34;
      }

      else if ((v31 & 0x60) != 0)
      {
        v28 = padString->length;
      }

      else
      {
        v28 = padString->data;
      }

      v36 = atomic_load(&theString->info);
      if ((v36 & 0x10) == 0)
      {
        v37 = atomic_load(&padString->info);
        v38 = (v37 >> 4) & 1;
        goto LABEL_32;
      }
    }

    LODWORD(v38) = 1;
LABEL_32:
    v48 = data;
    v49 = 0;
    __CFStringChangeSizeMultiple(theString, &v48, 1, v27, v38);
    v39 = atomic_load(&theString->info);
    v40 = &theString->data;
    if ((v39 & 0x60) != 0)
    {
      v41 = *v40;
    }

    else
    {
      v42 = atomic_load(&theString->info);
      v41 = &v40[(v42 & 5) != 4];
    }

    v43 = atomic_load(&theString->info);
    if (v27 >= 1)
    {
      if (v27 >= v28 - indexIntoPad)
      {
        v44 = v28 - indexIntoPad;
      }

      else
      {
        v44 = v27;
      }

      v45 = &v41[(data << v38) + ((v43 >> 2) & 1)];
      do
      {
        if (v38)
        {
          v52.location = indexIntoPad;
          v52.length = v44;
          CFStringGetCharacters(padString, v52, v45);
        }

        else
        {
          v46 = __CFDefaultEightBitStringEncoding;
          if (__CFDefaultEightBitStringEncoding == -1)
          {
            v46 = __CFStringComputeEightBitStringEncoding();
          }

          v53.location = indexIntoPad;
          v53.length = v44;
          CFStringGetBytes(padString, v53, v46, 0, 0, v45, v27, 0);
        }

        indexIntoPad = 0;
        v45 = (v45 + (v44 << v38));
        v27 -= v44;
        if (v27 >= v44)
        {
          v44 = v28;
        }

        else
        {
          v44 = v27;
        }
      }

      while (v27 > 0);
    }

    goto LABEL_49;
  }

  v8 = *MEMORY[0x1E69E9840];

  [(__CFString *)theString _cfPad:padString length:length padIndex:indexIntoPad];
}

void _CFPlugInRegisterPlugInTypeLocked(void *key, const void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  if (_factoriesByFactoryID && (v3 = CFDictionaryGetValue(_factoriesByFactoryID, key)) != 0 && (v4 = v3, *(v3 + 24)))
  {
    CFArrayAppendValue(v3[7], a2);
    Mutable = _factoriesByTypeID;
    if (!_factoriesByTypeID)
    {
      Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
      _factoriesByTypeID = Mutable;
    }

    Value = CFDictionaryGetValue(Mutable, a2);
    if (!Value)
    {
      memset(&v8, 0, sizeof(v8));
      Value = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &v8);
      CFDictionarySetValue(_factoriesByTypeID, a2, Value);
      CFRelease(Value);
    }

    CFArrayAppendValue(Value, v4);
    if (_CFBundlePluginLogger_onceToken != -1)
    {
      _CFPlugInRegisterPlugInTypeLocked_cold_1();
    }

    if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
    {
      _CFPlugInRegisterPlugInTypeLocked_cold_2(a2, v4);
    }
  }

  else
  {
    if (_CFBundlePluginLogger_onceToken != -1)
    {
      _CFPlugInRegisterPlugInTypeLocked_cold_3();
    }

    if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_ERROR))
    {
      _CFPlugInRegisterPlugInTypeLocked_cold_4();
    }
  }

  v7 = *MEMORY[0x1E69E9840];
}

CFArrayRef CFPlugInFindFactoriesForPlugInTypeInPlugIn(CFUUIDRef typeUUID, CFPlugInRef plugIn)
{
  v23 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  if (_factoriesByTypeID && (Value = CFDictionaryGetValue(_factoriesByTypeID, typeUUID)) != 0)
  {
    v5 = Value;
    Count = CFArrayGetCount(Value);
    Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
    if (Count >= 1)
    {
      v8 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v5, v8);
        v10 = ValueAtIndex;
        v11 = ValueAtIndex[5];
        if (v11)
        {
          CFRetain(ValueAtIndex[5]);
        }

        if (v11 == plugIn)
        {
          break;
        }

        if (v11)
        {
          goto LABEL_9;
        }

LABEL_10:
        if (Count == ++v8)
        {
          goto LABEL_17;
        }
      }

      v12 = v10[2];
      if (v12)
      {
        CFRetain(v12);
      }

      CFArrayAppendValue(Mutable, v12);
      CFRelease(v12);
      if (!v11)
      {
        goto LABEL_10;
      }

LABEL_9:
      CFRelease(v11);
      goto LABEL_10;
    }
  }

  else
  {
    Mutable = 0;
  }

LABEL_17:
  os_unfair_recursive_lock_unlock();
  if (_CFBundlePluginLogger_onceToken != -1)
  {
    CFPlugInFindFactoriesForPlugInTypeInPlugIn_cold_1();
  }

  v13 = _CFBundlePluginLogger__log;
  if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
  {
    if (Mutable)
    {
      v16 = CFArrayGetCount(Mutable);
    }

    else
    {
      v16 = 0;
    }

    v17 = 134349570;
    v18 = v16;
    v19 = 2114;
    v20 = typeUUID;
    v21 = 2114;
    v22 = plugIn;
    _os_log_debug_impl(&dword_1830E6000, v13, OS_LOG_TYPE_DEBUG, "%{public}ld factories found for requested plugin type %{public}@ in plugin %{public}@", &v17, 0x20u);
  }

  v14 = *MEMORY[0x1E69E9840];
  return Mutable;
}

id _CFLocaleCreateCopyWithNewCalendarIdentifier(uint64_t a1, void *a2)
{
  v2 = [a2 _localeWithNewCalendarIdentifier:?];

  return v2;
}

const void *_CFRunLoopCacheLookup(_opaque_pthread_t *a1, int a2)
{
  v3 = a1;
  if (pthread_equal(a1, 0))
  {
    v3 = pthread_main_thread_np();
  }

  os_unfair_lock_lock(&loopsLock);
  v4 = __CFRunLoops;
  if (a2 && !__CFRunLoops)
  {
    os_unfair_lock_unlock(&loopsLock);
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
    v6 = pthread_main_thread_np();
    v14 = __CFRunLoopCreate(v6, v7, v8, v9, v10, v11, v12, v13);
    v15 = pthread_main_thread_np();
    CFDictionarySetValue(Mutable, v15, v14);
    v16 = 0;
    atomic_compare_exchange_strong(&__CFRunLoops, &v16, Mutable);
    if (v16)
    {
      CFRelease(Mutable);
    }

    CFRelease(v14);
    os_unfair_lock_lock(&loopsLock);
    v4 = __CFRunLoops;
  }

  if (v4)
  {
    Value = CFDictionaryGetValue(v4, v3);
  }

  else
  {
    Value = 0;
  }

  os_unfair_lock_unlock(&loopsLock);
  return Value;
}

void *__cdecl CFPlugInInstanceCreate(CFAllocatorRef allocator, CFUUIDRef factoryUUID, CFUUIDRef typeUUID)
{
  v34 = *MEMORY[0x1E69E9840];
  os_unfair_recursive_lock_lock_with_options();
  if (!_factoriesByFactoryID || (Value = CFDictionaryGetValue(_factoriesByFactoryID, factoryUUID)) == 0 || (v7 = Value, !*(Value + 24)))
  {
    if (_CFBundlePluginLogger_onceToken != -1)
    {
      CFPlugInInstanceCreate_cold_8();
    }

    if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_ERROR))
    {
      CFPlugInInstanceCreate_cold_9();
    }

    goto LABEL_27;
  }

  v8 = *(Value + 7);
  v35.length = CFArrayGetCount(v8);
  v35.location = 0;
  if ((CFArrayGetFirstIndexOfValue(v8, v35, typeUUID) & 0x80000000) != 0)
  {
    if (_CFBundlePluginLogger_onceToken != -1)
    {
      CFPlugInInstanceCreate_cold_1();
    }

    if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_ERROR))
    {
      CFPlugInInstanceCreate_cold_2();
    }

    goto LABEL_27;
  }

  if (!*(v7 + 24))
  {
    if (_CFBundlePluginLogger_onceToken != -1)
    {
      CFPlugInInstanceCreate_cold_6();
    }

    v18 = _CFBundlePluginLogger__log;
    if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
    {
      CFPlugInInstanceCreate_cold_7(v7, v18, v19, v20, v21, v22, v23, v24);
    }

    goto LABEL_27;
  }

  FunctionPointerForName = *(v7 + 32);
  if (!FunctionPointerForName)
  {
    FunctionPointerForName = CFBundleGetFunctionPointerForName(*(v7 + 40), *(v7 + 48));
    *(v7 + 32) = FunctionPointerForName;
    if (!FunctionPointerForName)
    {
      if (_CFBundlePluginLogger_onceToken != -1)
      {
        CFPlugInInstanceCreate_cold_3();
      }

      v10 = _CFBundlePluginLogger__log;
      if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_ERROR))
      {
        v25 = *(v7 + 16);
        v27 = *(v7 + 40);
        v26 = *(v7 + 48);
        v28 = 138543874;
        v29 = v26;
        v30 = 2114;
        v31 = v25;
        v32 = 2114;
        v33 = v27;
        _os_log_error_impl(&dword_1830E6000, v10, OS_LOG_TYPE_ERROR, "Cannot find function pointer %{public}@ for factory %{public}@ in %{public}@", &v28, 0x20u);
      }

      FunctionPointerForName = *(v7 + 32);
      if (!FunctionPointerForName)
      {
LABEL_27:
        v13 = 0;
        goto LABEL_28;
      }
    }
  }

  v11 = *(v7 + 40);
  if (v11 && *__CFBundleGetPlugInData(*(v7 + 40)))
  {
    PlugInData = __CFBundleGetPlugInData(v11);
    ++*(PlugInData + 12);
  }

  os_unfair_recursive_lock_unlock();
  v13 = __CFPLUGIN_IS_CALLING_OUT_TO_A_FACTORY_FUNCTION__(FunctionPointerForName, allocator, typeUUID);
  if (_CFBundlePluginLogger_onceToken != -1)
  {
    CFPlugInInstanceCreate_cold_4();
  }

  if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
  {
    CFPlugInInstanceCreate_cold_5();
  }

  os_unfair_recursive_lock_lock_with_options();
  v14 = *(v7 + 40);
  if (v14 && *__CFBundleGetPlugInData(*(v7 + 40)))
  {
    v15 = __CFBundleGetPlugInData(v14);
    --*(v15 + 12);
  }

LABEL_28:
  os_unfair_recursive_lock_unlock();
  v16 = *MEMORY[0x1E69E9840];
  return v13;
}

void *__cdecl CFBundleGetFunctionPointerForName(CFBundleRef bundle, CFStringRef functionName)
{
  __CFCheckCFInfoPACSignature(bundle);
  v4 = _CFGetNonObjCTypeID(bundle);
  if (v4 != 31)
  {
    _CFAssertMismatchedTypeID(0x1FuLL, v4);
  }

  if (!CFBundleLoadExecutable(bundle))
  {
    return 0;
  }

  return _CFBundleDlfcnGetSymbolByNameWithSearch(bundle, functionName, 0);
}

BOOL _CFStringObjCFormatRequiresInflection(void *a1)
{
  Class = object_getClass(a1);
  if (__NSGetCFLocalizedAttributedStringClass_onceToken != -1)
  {
    _CFStringObjCFormatRequiresInflection_cold_1();
  }

  return Class == __NSCFLocalizedAttributedStringClass;
}

CFAttributedStringRef CFAttributedStringCreateCopy(CFAllocatorRef alloc, CFAttributedStringRef aStr)
{
  v2 = aStr;
  if (!CF_IS_OBJC(0x3EuLL, aStr))
  {
    v5 = atomic_load(v2 + 1);
    if ((v5 & 1) == 0)
    {
      goto LABEL_16;
    }

    v6 = alloc;
    if (alloc)
    {
      if ((v2 & 0x8000000000000000) != 0)
      {
LABEL_8:
        v7 = &kCFAllocatorSystemDefault;
        goto LABEL_15;
      }
    }

    else
    {
      v8 = _CFGetTSD(1u);
      v6 = &__kCFAllocatorSystemDefault;
      if (v8)
      {
        v6 = v8;
      }

      if ((v2 & 0x8000000000000000) != 0)
      {
        goto LABEL_8;
      }
    }

    v9 = atomic_load(v2 + 1);
    if (v9 < 0)
    {
      v7 = &kCFAllocatorSystemDefault;
    }

    else
    {
      v7 = (v2 - 2);
    }

LABEL_15:
    if (v6 == *v7)
    {
      CFRetain(v2);
      return v2;
    }

LABEL_16:
    Length = CFAttributedStringGetLength(v2);
    MutableWithSubstring = __CFAttributedStringCreateMutableWithSubstring(alloc, v2, 0, Length);
    v2 = MutableWithSubstring;
    v12 = atomic_load(MutableWithSubstring + 1);
    v13 = v12;
    do
    {
      atomic_compare_exchange_strong(MutableWithSubstring + 1, &v13, v12 | 1);
      v14 = v13 == v12;
      v12 = v13;
    }

    while (!v14);
    return v2;
  }

  return [v2 copy];
}

uint64_t __CFCalendarCreateUCalendar(const void *a1, CFLocaleIdentifier localeID, const __CFTimeZone *a3)
{
  LocaleIdentifierFromComponents = localeID;
  v19 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    ComponentsFromLocaleIdentifier = CFLocaleCreateComponentsFromLocaleIdentifier(&__kCFAllocatorSystemDefault, localeID);
    MutableCopy = CFDictionaryCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, ComponentsFromLocaleIdentifier);
    CFDictionarySetValue(MutableCopy, @"calendar", a1);
    LocaleIdentifierFromComponents = CFLocaleCreateLocaleIdentifierFromComponents(&__kCFAllocatorSystemDefault, MutableCopy);
    CFRelease(MutableCopy);
    CFRelease(ComponentsFromLocaleIdentifier);
  }

  MEMORY[0x1EEE9AC00](a1, localeID);
  CStringPtr = CFStringGetCStringPtr(LocaleIdentifierFromComponents, 0x600u);
  if (CStringPtr || (CStringPtr = CFStringGetCString(LocaleIdentifierFromComponents, &v17, 512, 0x600u), CStringPtr))
  {
    MEMORY[0x1EEE9AC00](CStringPtr, v9);
    Name = CFTimeZoneGetName(a3);
    Length = CFStringGetLength(Name);
    if (Length >= 0x200)
    {
      v12 = 512;
    }

    else
    {
      v12 = Length;
    }

    v20.location = 0;
    v20.length = v12;
    CFStringGetCharacters(Name, v20, &v16);
    v18 = 0;
    v13 = __cficu_ucal_open();
    if (a1)
    {
      CFRelease(LocaleIdentifierFromComponents);
    }
  }

  else
  {
    if (a1)
    {
      CFRelease(LocaleIdentifierFromComponents);
    }

    v13 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __cficu_ucal_open()
{
  v0 = ucal_open();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_open_cold_1();
  }

  return v0;
}

uint64_t __NSOrderedSetChunkIterate(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, void *a5, uint64_t a6, unint64_t *a7, void *a8, pthread_mutex_t *a9)
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
      __NSORDEREDSET_IS_CALLING_OUT_TO_A_BLOCK__(v44);
      goto LABEL_26;
    }

    if (__NSORDEREDSET_IS_CALLING_OUT_TO_A_BOOL_BLOCK__(v44))
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

CFStringRef CFAttributedStringGetString(CFAttributedStringRef aStr)
{
  if (!CF_IS_OBJC(0x3EuLL, aStr))
  {
    return *(aStr + 2);
  }

  return [(__CFAttributedString *)aStr string];
}

CFDictionaryRef CFAttributedStringGetAttributes(CFAttributedStringRef aStr, CFIndex loc, CFRange *effectiveRange)
{
  if (CF_IS_OBJC(0x3EuLL, aStr))
  {

    return [(__CFAttributedString *)aStr attributesAtIndex:loc effectiveRange:effectiveRange];
  }

  else
  {
    v7 = *(aStr + 3);

    return CFRunArrayGetValueAtIndex(v7, loc, &effectiveRange->location, 0);
  }
}

uint64_t __NSCacheCallDelegateWillEvictObjectCallbackWithValue(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = _CFGetTSD(3u);
  _CFSetTSD(3u, a2, 0);
  [a1 cache:a2 willEvictObject:a3];

  return _CFSetTSD(3u, v6, 0);
}

void CFPlugInAddInstanceForFactory(CFUUIDRef factoryID)
{
  os_unfair_recursive_lock_lock_with_options();
  if (_factoriesByFactoryID && (Value = CFDictionaryGetValue(_factoriesByFactoryID, factoryID)) != 0 && Value[24])
  {
    _CFPFactoryAddInstanceLocked(Value);
    if (_CFBundlePluginLogger_onceToken != -1)
    {
      CFPlugInAddInstanceForFactory_cold_1();
    }

    if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_DEBUG))
    {
      CFPlugInAddInstanceForFactory_cold_2();
    }
  }

  else
  {
    if (_CFBundlePluginLogger_onceToken != -1)
    {
      CFPlugInAddInstanceForFactory_cold_3();
    }

    if (os_log_type_enabled(_CFBundlePluginLogger__log, OS_LOG_TYPE_ERROR))
    {
      CFPlugInAddInstanceForFactory_cold_4();
    }
  }

  os_unfair_recursive_lock_unlock();
}

void __cficu_ucal_setAttribute()
{
  ucal_setAttribute();
  if (_NSCFCalendarLogger_onceToken != -1)
  {
    __cficu_ucal_setAttribute_cold_1();
  }
}

CFBundleRef _CFBundleGetMainBundleIfLooksLikeBundle()
{
  result = CFBundleGetMainBundle();
  if (result)
  {
    if (*(result + 53) - 3 < 2)
    {
      return 0;
    }
  }

  return result;
}

void *_CFPFactoryAddInstanceLocked(void *result)
{
  v1 = result[5];
  if (v1)
  {
    result = __CFBundleGetPlugInData(result[5]);
    if (*result)
    {
      if (!*(__CFBundleGetPlugInData(v1) + 8) && *(__CFBundleGetPlugInData(v1) + 1))
      {
        _CFPlugInUnscheduleForUnloading(v1);
      }

      PlugInData = __CFBundleGetPlugInData(v1);
      ++*(PlugInData + 8);

      return CFRetain(v1);
    }
  }

  return result;
}

CFIndex CFArrayBSearchValues(CFArrayRef theArray, CFRange range, const void *value, CFComparatorFunction comparator, void *context)
{
  location = range.location;
  if (range.length >= 1)
  {
    length = range.length;
    v11 = range.location + range.length;
    if ((comparator)([(__CFArray *)theArray objectAtIndex:range.location + range.length - 1], value, context) < 0)
    {
      return v11;
    }

    else if (((comparator)(value, [(__CFArray *)theArray objectAtIndex:location], context) & 0x8000000000000000) == 0)
    {
      v12 = flsl(length);
      v13 = 1 << (v12 - 1);
      if ((comparator)([(__CFArray *)theArray objectAtIndex:location + v13 - 1], value, context) >= 0)
      {
        v14 = -1;
      }

      else
      {
        v14 = length - v13;
      }

      if (v12 != 1)
      {
        v15 = v12 - 2;
        do
        {
          v14 += (1 << v15) & ((comparator)([(__CFArray *)theArray objectAtIndex:v14 + location + (1 << v15)], value, context) >> 63);
          --v15;
        }

        while (v15 != -1);
      }

      location += v14 + 1;
    }
  }

  return location;
}

CFNumberRef CFNumberFormatterCreateNumberFromString(CFAllocatorRef allocator, CFNumberFormatterRef formatter, CFStringRef string, CFRange *rangep, CFOptionFlags options)
{
  v5 = options;
  v9 = allocator;
  valuePtr[2] = *MEMORY[0x1E69E9840];
  if (!allocator)
  {
    v10 = _CFGetTSD(1u);
    if (v10)
    {
      v9 = v10;
    }

    else
    {
      v9 = &__kCFAllocatorSystemDefault;
    }
  }

  __CFCheckCFInfoPACSignature(formatter);
  v11 = _CFGetNonObjCTypeID(formatter);
  if (v11 != 57)
  {
    _CFAssertMismatchedTypeID(0x39uLL, v11);
  }

  if (rangep)
  {
    rangepa = *rangep;
  }

  else
  {
    rangepa.location = 0;
    rangepa.length = CFStringGetLength(string);
  }

  v12 = *(formatter + 8);
  *(formatter + 8) = 0;
  ValueFromString = CFNumberFormatterGetValueFromString(formatter, string, &rangepa, kCFNumberSInt64Type, valuePtr);
  *(formatter + 8) = v12;
  if (!ValueFromString)
  {
    goto LABEL_31;
  }

  if (v12)
  {
    v14 = valuePtr[0];
    v36 = 1.0;
    Value = CFNumberGetValue(v12, kCFNumberFloat64Type, &v36);
    if (v14 >= 0)
    {
      v16 = v14;
    }

    else
    {
      v16 = -v14;
    }

    if (Value)
    {
      v17 = v36;
    }

    else
    {
      v17 = 1.0;
    }

    v18 = fabs(v36);
    if (!Value)
    {
      v18 = 1.0;
    }

    if (v18 > v16 || v18 < 1.0)
    {
      goto LABEL_31;
    }

    if (modf(v17, &__y) == 0.0)
    {
      v20 = v14 / v17;
      if (v14 % v17)
      {
        goto LABEL_31;
      }
    }

    else if (v17 == -1.0)
    {
      v20 = -v14;
    }

    else
    {
      if (v17 == 1.0)
      {
        goto LABEL_29;
      }

      v34 = 0.0;
      v26 = -1;
      do
      {
        v27 = scalbn(v17, ++v26);
      }

      while (modf(v27, &v34) != 0.0);
      for (i = v34; ; i *= 2)
      {
        v29 = i >= 0 ? i : -i;
        if (v29 >> 50)
        {
          break;
        }

        LOBYTE(v26) = v26 + 1;
      }

      if (v16 >> 53)
      {
        v30 = 0;
        v31 = v14;
        do
        {
          v14 = v31 - i;
          v32 = v31 - i;
          v30 += 1 << v26;
          if (v32 < 0)
          {
            v32 = -v32;
          }

          v33 = v32 >> 53;
          v31 = v14;
        }

        while (v33);
      }

      else
      {
        v30 = 0;
      }

      if (fmod(v14, v17) != 0.0)
      {
        goto LABEL_31;
      }

      v20 = v30 + (v14 / v17);
    }

    valuePtr[0] = v20;
  }

LABEL_29:
  length = rangepa.length;
  v22 = CFStringGetLength(string);
  if ((v5 & 1) != 0 || length == v22)
  {
    if (rangep)
    {
      *rangep = rangepa;
    }

    v23 = kCFNumberSInt64Type;
    goto LABEL_37;
  }

LABEL_31:
  if ((v5 & 1) == 0)
  {
    v23 = kCFNumberFloat64Type;
    if (CFNumberFormatterGetValueFromString(formatter, string, rangep, kCFNumberFloat64Type, valuePtr))
    {
LABEL_37:
      result = CFNumberCreate(v9, v23, valuePtr);
      goto LABEL_38;
    }
  }

  result = 0;
LABEL_38:
  v25 = *MEMORY[0x1E69E9840];
  return result;
}

Boolean CFNumberFormatterGetValueFromString(CFNumberFormatterRef formatter, CFStringRef string, CFRange *rangep, CFNumberType numberType, void *valuePtr)
{
  theString = string;
  v70[128] = *MEMORY[0x1E69E9840];
  __CFCheckCFInfoPACSignature(formatter);
  v9 = _CFGetNonObjCTypeID(formatter);
  if (v9 != 57)
  {
    _CFAssertMismatchedTypeID(0x39uLL, v9);
  }

  if (*(formatter + 80))
  {
    CompressedString = __CFNumberFormatterCreateCompressedString(theString, 0, &rangep->location);
  }

  else
  {
    CompressedString = CFRetain(theString);
  }

  v11 = CompressedString;
  if (*(formatter + 80))
  {
    Length = CFStringGetLength(CompressedString);
    location = 0;
  }

  else
  {
    if (rangep)
    {
      location = rangep->location;
      Length = rangep->length;
    }

    else
    {
      Length = CFStringGetLength(CompressedString);
      location = 0;
    }

    Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
    if (Length >= 1)
    {
      v42 = Predefined;
      while (1)
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(v11, location);
        if (!CFCharacterSetIsCharacterMember(v42, CharacterAtIndex))
        {
          break;
        }

        ++location;
        v34 = Length-- <= 1;
        if (v34)
        {
          Length = 0;
          break;
        }
      }
    }
  }

  v14 = *(formatter + 9);
  v65 = rangep;
  if (v14)
  {
    if (*(formatter + 80))
    {
      v15 = __CFNumberFormatterCreateCompressedString(v14, 0, 0);
    }

    else
    {
      v15 = CFRetain(v14);
    }

    v17 = v15;
    v16 = CFStringCompare(v11, v15, 0) != kCFCompareEqualTo;
    CFRelease(v17);
  }

  else
  {
    v16 = 1;
  }

  if ((Length & ~(Length >> 63)) >= 1024)
  {
    v18 = 1024;
  }

  else
  {
    v18 = Length & ~(Length >> 63);
  }

  CharactersPtr = CFStringGetCharactersPtr(v11);
  v21 = MEMORY[0x1EEE9AC00](CharactersPtr, v20);
  v23 = &v60 - v22;
  if (v21)
  {
    if (!*(formatter + 80))
    {
      v23 = (v21 + 2 * location);
      v24 = (formatter + 64);
      v64 = *(formatter + 8);
LABEL_26:
      *v24 = 0;
      goto LABEL_27;
    }

    v24 = (formatter + 64);
    v64 = *(formatter + 8);
    *(formatter + 8) = 0;
    v23 = v21;
LABEL_23:
    __CFNumberFormatterApplyPattern(formatter, *(formatter + 7));
    v26 = *(formatter + 8);
    if (v26)
    {
      CFRelease(v26);
    }

    goto LABEL_26;
  }

  if (Length < 1)
  {
    if (v11)
    {
      CFRelease(v11);
    }

LABEL_79:
    result = 0;
    goto LABEL_80;
  }

  v71.location = location;
  v71.length = v18;
  CFStringGetCharacters(v11, v71, (&v60 - v22));
  v24 = (formatter + 64);
  v64 = *(formatter + 8);
  v25 = *(formatter + 80);
  *(formatter + 8) = 0;
  if (v25)
  {
    goto LABEL_23;
  }

LABEL_27:
  v66 = valuePtr;
  if (numberType <= kCFNumberCFIndexType && ((1 << numberType) & 0x4F9E) != 0)
  {
    v27 = numberType;
    v28 = 1;
  }

  else
  {
    v27 = numberType;
    v28 = 0;
  }

  v29 = *(formatter + 2);
  __cficu_unum_setAttribute();
  v69 = 0;
  if (v16)
  {
    v63 = v24;
    bzero(v70, 0x400uLL);
    v30 = *(formatter + 2);
    v31 = __cficu_unum_parseDecimal();
    v32 = v31;
    v33 = v69;
    v34 = v69 >= 1 || v31 <= 0;
    if (v34)
    {
      v35 = 0;
    }

    else
    {
      v35 = v28;
    }

    if (v35 == 1)
    {
      v68 = 0;
      *__error() = 0;
      v62 = strtoll_l(v70, &v68, 10, 0);
      if (*__error() || *v68)
      {
        v33 = 3;
        LODWORD(v69) = 3;
      }

      else
      {
        v33 = v69;
      }
    }

    else
    {
      v62 = 0;
    }

    v38 = v27;
    v40 = v65;
    v39 = v66;
    v37 = 0.0;
    if (v33 > 0)
    {
      v24 = v63;
    }

    else
    {
      v34 = v32 < 1;
      v24 = v63;
      if (!v34)
      {
        v68 = 0;
        *__error() = 0;
        v37 = strtod_l(v70, &v68, 0);
        if (*__error() || *v68)
        {
          LODWORD(v69) = 3;
        }
      }
    }
  }

  else
  {
    v36 = CFStringGetLength(v11);
    v62 = 0;
    HIDWORD(v69) = v36;
    v37 = 0.0;
    v38 = v27;
    v40 = v65;
    v39 = v66;
  }

  if (*(formatter + 80))
  {
    if (v40)
    {
      v44 = v40->location;
      if (SHIDWORD(v69) >= 1)
      {
        v63 = v24;
        v61 = v38;
        v45 = 0;
        v46 = v40->length + v44;
        while (v44 < v46)
        {
          v47 = v44;
          while (1)
          {
            v48 = *&v23[2 * v45];
            v49 = CFStringGetCharacterAtIndex(theString, v47);
            v50 = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
            v51 = CFCharacterSetIsCharacterMember(v50, v49) ? 32 : v49;
            v44 = v47 + 1;
            if (v48 == v51)
            {
              break;
            }

            ++v47;
            if (v46 == v44)
            {
              v44 = v46;
              v39 = v66;
              goto LABEL_74;
            }
          }

          ++v45;
          v39 = v66;
          if (v45 >= SHIDWORD(v69))
          {
            v44 = v47 + 1;
            break;
          }
        }

LABEL_74:
        v38 = v61;
        v40 = v65;
        v24 = v63;
      }

      v40->length = v44 - v40->location;
    }

    __CFNumberFormatterApplyPattern(formatter, *(formatter + 5));
    v52 = *(formatter + 8);
    if (v52)
    {
      CFRelease(v52);
    }
  }

  else if (v40)
  {
    v40->length = location - v40->location + SHIDWORD(v69);
  }

  *v24 = v64;
  CFRelease(v11);
  if (v69 > 0)
  {
    goto LABEL_79;
  }

  v55 = *v24;
  if (*v24)
  {
    v70[0] = 0x3FF0000000000000;
    Value = CFNumberGetValue(v55, kCFNumberFloat64Type, v70);
    v57 = *v70;
    if (!Value)
    {
      v57 = 1.0;
    }

    v58 = (v62 / v57);
    v37 = v37 / v57;
  }

  else
  {
    v58 = v62;
  }

  switch(v38)
  {
    case kCFNumberSInt8Type:
    case kCFNumberCharType:
      if (v58 != v58)
      {
        goto LABEL_79;
      }

      *v39 = v58;
      break;
    case kCFNumberSInt16Type:
    case kCFNumberShortType:
      if (v58 != v58)
      {
        goto LABEL_79;
      }

      *v39 = v58;
      break;
    case kCFNumberSInt32Type:
    case kCFNumberIntType:
      if (v58 != v58)
      {
        goto LABEL_79;
      }

      *v39 = v58;
      break;
    case kCFNumberSInt64Type:
    case kCFNumberLongType:
    case kCFNumberLongLongType:
    case kCFNumberCFIndexType:
      *v39 = v58;
      break;
    case kCFNumberFloat32Type:
    case kCFNumberFloatType:
      if (fabs(v37) > 3.40282347e38)
      {
        goto LABEL_79;
      }

      v59 = v37;
      *v39 = v59;
      break;
    case kCFNumberFloat64Type:
    case kCFNumberDoubleType:
      if (fabs(v37) > 1.79769313e308)
      {
        goto LABEL_79;
      }

      *v39 = v37;
      break;
    default:
      goto LABEL_79;
  }

  result = 1;
LABEL_80:
  v54 = *MEMORY[0x1E69E9840];
  return result;
}