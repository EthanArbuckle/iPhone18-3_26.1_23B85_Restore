uint64_t scanCharacters(const __CFAllocator *a1, __CFString **a2, _DWORD *a3, uint64_t a4, uint64_t a5, int a6, uint64_t a7, uint64_t a8, void *a9, int a10, unsigned int a11)
{
  v55 = *MEMORY[0x1E69E9840];
  if (!a6)
  {
    if (a7 >= a8)
    {
      goto LABEL_104;
    }

    v15 = 0;
    v49 = a8 - 1;
    if (a3)
    {
      v31 = a10 == 0;
    }

    else
    {
      v31 = 1;
    }

    v32 = !v31;
    v33 = a7;
    while (1)
    {
      v35 = (a5 + 2 * v33);
      v52 = *v35;
      if (v52 <= 0x7Fu)
      {
        if (sURLValidCharacters[v52])
        {
          if (a10 == 4 || a10 == 2)
          {
            v39 = v52 - 47;
            v21 = v39 > 0x11;
            v40 = (1 << v39) & 0x30001;
            if (!v21 && v40 != 0)
            {
              goto LABEL_81;
            }
          }

          goto LABEL_94;
        }

        v36 = v33 + 2;
        if (v52 == 37 && v36 < a8)
        {
          v44 = v35[1];
          if (v44 <= 0x7F && (sURLValidCharacters[v44] & 0x10) != 0)
          {
            v45 = *(a5 + 2 * v36);
            if (v45 <= 0x7F && (sURLValidCharacters[v45] & 0x10) != 0)
            {
              goto LABEL_94;
            }
          }
        }
      }

      if (a10 != 8)
      {
        goto LABEL_81;
      }

      if (v33 != a7 || v52 != 91)
      {
        if (v33 == v49)
        {
          v38 = v49;
          if (v52 == 93)
          {
            goto LABEL_95;
          }
        }

LABEL_81:
        if (v32)
        {
          *a3 |= a10;
        }

        Mutable = *a2;
        if (!*a2)
        {
          Mutable = CFStringCreateMutable(a1, 0);
          *a2 = Mutable;
        }

        CFStringAppendCharacters(Mutable, (a5 + 2 * *a9), v33 - *a9);
        if (_appendPercentEscapesForCharacter(&v52, 0, a11, *a2))
        {
          *a9 = v33 + 1;
        }

        else if (a11 == 134217984)
        {
          v38 = v33 + 1;
          if (v33 + 1 < a8 && (v52 & 0xFC00) == 0xD800)
          {
            v43 = *(a5 + 2 * v38);
            if ((v43 & 0xFC00) == 0xDC00)
            {
              v53 = v52;
              v54 = v43;
              if (_appendPercentEscapesForCharacter(&v53, 1, 134217984, *a2))
              {
                *a9 = v33 + 2;
              }

              else
              {
                v38 = v33;
              }

              v15 = 1;
              goto LABEL_95;
            }
          }
        }

        v15 = 1;
LABEL_94:
        v38 = v33;
        goto LABEL_95;
      }

      v38 = a7;
LABEL_95:
      v33 = v38 + 1;
      if (v38 + 1 >= a8)
      {
        goto LABEL_105;
      }
    }
  }

  if (a7 < a8)
  {
    v15 = 0;
    v48 = a8 - 1;
    if (a3)
    {
      v16 = a10 == 0;
    }

    else
    {
      v16 = 1;
    }

    v17 = !v16;
    v18 = a7;
    while (1)
    {
      v19 = *(a4 + v18);
      v52 = *(a4 + v18);
      if ((v19 & 0x80000000) == 0)
      {
        if (sURLValidCharacters[v19])
        {
          if (a10 == 4 || a10 == 2)
          {
            v23 = v19 - 47;
            v21 = v23 > 0x11;
            v24 = (1 << v23) & 0x30001;
            if (!v21 && v24 != 0)
            {
              goto LABEL_30;
            }
          }

          goto LABEL_43;
        }

        v20 = v18 + 2;
        v21 = v19 == 37 && v20 < a8;
        if (v21)
        {
          v28 = *(a4 + v18 + 1);
          if ((v28 & 0x8000000000000000) == 0 && (sURLValidCharacters[v28] & 0x10) != 0)
          {
            v29 = *(a4 + v20);
            if ((v29 & 0x8000000000000000) == 0 && (sURLValidCharacters[v29] & 0x10) != 0)
            {
              goto LABEL_43;
            }
          }
        }
      }

      if (a10 != 8)
      {
        goto LABEL_30;
      }

      if (v18 != a7 || v19 != 91)
      {
        if (v18 == v48)
        {
          v22 = v48;
          if (v19 == 93)
          {
            goto LABEL_44;
          }
        }

LABEL_30:
        if (v17)
        {
          *a3 |= a10;
        }

        if (!*a2)
        {
          *a2 = CFStringCreateMutable(a1, 0);
        }

        v26 = CFStringCreateWithBytes(a1, (a4 + *a9), v18 - *a9, 0x201u, 0);
        CFStringAppend(*a2, v26);
        CFRelease(v26);
        if (_appendPercentEscapesForCharacter(&v52, 0, a11, *a2))
        {
          *a9 = v18 + 1;
        }

        else if (a11 == 134217984)
        {
          v22 = v18 + 1;
          if (v18 + 1 < a8 && (v52 & 0xFC00) == 0xD800)
          {
            v27 = *(a4 + v22);
            if (v27 >> 10 == 55)
            {
              v53 = v52;
              v54 = v27;
              if (_appendPercentEscapesForCharacter(&v53, 1, 134217984, *a2))
              {
                *a9 = v18 + 2;
              }

              else
              {
                v22 = v18;
              }

              v15 = 1;
              goto LABEL_44;
            }
          }
        }

        v15 = 1;
LABEL_43:
        v22 = v18;
        goto LABEL_44;
      }

      v22 = a7;
LABEL_44:
      v18 = v22 + 1;
      if (v22 + 1 >= a8)
      {
        goto LABEL_105;
      }
    }
  }

LABEL_104:
  v15 = 0;
LABEL_105:
  v46 = *MEMORY[0x1E69E9840];
  return v15;
}

CFTypeRef _CFURLCreateWithFileSystemPath(const __CFAllocator *a1, CFStringRef theString, uint64_t a3, _BOOL4 a4, const __CFURL *a5)
{
  v88 = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    _CFURLCreateWithFileSystemPath_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    v10 = [NSURL _fileURLWithPath:theString pathStyle:a3 isDirectory:a4 relativeToURL:a5];
    v11 = *MEMORY[0x1E69E9840];

    return v10;
  }

  v86 = 0;
  Length = CFStringGetLength(theString);
  if (Length >= 1)
  {
    v14 = Length;
    if (a3 != 2)
    {
      if (a3 != 1)
      {
        if (a3)
        {
          goto LABEL_114;
        }

        v15 = CFStringGetCharacterAtIndex(theString, 0) == 47;
        v85 = v14;
        v16 = !theString || CFStringHasPrefix(theString, @"/.file/id=") == 0;
        v35 = POSIXPathToURLPath(theString, a4, v15, &v86);
        v36 = 0;
        if (!v35)
        {
          goto LABEL_114;
        }

LABEL_107:
        if (v15)
        {
          v64 = 0;
          v65 = 0;
          a5 = 0;
          if (a4)
          {
            goto LABEL_118;
          }

          goto LABEL_116;
        }

LABEL_110:
        if (a5)
        {
          v65 = 0;
          v64 = 1;
          if (a4)
          {
            goto LABEL_118;
          }
        }

        else
        {
          a5 = _CFURLCreateCurrentDirectoryURL(a1);
          v64 = 1;
          v65 = 1;
          if (a4)
          {
LABEL_118:
            if (v64)
            {
              v67 = 56;
            }

            else
            {
              v67 = 72;
            }

            Instance = _CFRuntimeCreateInstance(a1, 0x1DuLL, v67, 0, v31, v32, v33, v34);
            v66 = Instance;
            if (Instance)
            {
              *(Instance + 20) = 134217984;
              atomic_store(CFStringCreateCopy(a1, v35), (Instance + 24));
              if (a5)
              {
                v69 = CFURLCopyAbsoluteURL(a5);
              }

              else
              {
                v69 = 0;
              }

              *(v66 + 32) = v69;
              if (v64)
              {
                if (a4)
                {
                  v70 = 84000;
                }

                else
                {
                  v70 = 81952;
                }

                *(v66 + 16) = v70;
                v71 = atomic_load((v66 + 24));
                v72 = CFStringGetLength(v71);
                *(v66 + 56) = 0;
                v73 = 64;
              }

              else
              {
                if (a4)
                {
                  v74 = 84001;
                }

                else
                {
                  v74 = 81953;
                }

                if (v16)
                {
                  v75 = (v86 << 15) | ((v36 == 0) << 12) | v74;
                }

                else
                {
                  v75 = v74 | 0x2000;
                }

                *(v66 + 16) = v75 | 0x60000000;
                *(v66 + 56) = xmmword_183377E70;
                v72 = CFStringGetLength(v35) - 7;
                *(v66 + 72) = 7;
                v73 = 80;
              }

              *(v66 + v73) = v72;
            }

            if (a5)
            {
              v76 = v65;
            }

            else
            {
              v76 = 0;
            }

            if (v76 == 1)
            {
              CFRelease(a5);
            }

            CFRelease(v35);
            goto LABEL_144;
          }
        }

LABEL_116:
        if (v85 == 1)
        {
          a4 = CFStringGetCharacterAtIndex(v35, 0) == 47;
        }

        goto LABEL_118;
      }

      CharacterAtIndex = CFStringGetCharacterAtIndex(theString, 0);
      v19 = CharacterAtIndex != 58;
      v91.location = 0;
      v91.length = v14;
      v80 = CharacterAtIndex;
      v81 = CFStringFindWithOptions(theString, @"::", v91, 0, 0);
      if (v81)
      {
        v20 = malloc_type_malloc(2 * v14, 0x1000040BDFB0063uLL);
        v90.location = 0;
        v90.length = v14;
        CFStringGetCharacters(theString, v90, v20);
        v21 = 0;
        v22 = 0;
        v23 = -1;
        do
        {
          v24 = v20[v21];
          if (v24 == 58)
          {
            v25 = v21 + 1;
            if (v21 + 1 < v14 && v20[v25] == 58)
            {
              if (v22 >= 1 && (v23 & 0x8000000000000000) == 0)
              {
                if (v23 >= v22)
                {
                  v26 = v22;
                }

                else
                {
                  v26 = v23;
                }

                v27 = v26 - 1;
                while (1)
                {
                  if (v22 < 2)
                  {
                    v22 = 0;
                    goto LABEL_33;
                  }

                  if (v22 <= v23)
                  {
                    break;
                  }

                  v28 = v20[--v22];
                  if (v28 == 58)
                  {
                    goto LABEL_33;
                  }
                }

                v22 = v27;
              }
            }

            else
            {
              v25 = v21;
            }

LABEL_33:
            if (v23 == -1)
            {
              v23 = v22;
            }

            LOWORD(v24) = v20[v25];
            v21 = v25;
          }

          v20[v22++] = v24;
          ++v21;
        }

        while (v21 < v14);
        theString = CFStringCreateWithCharacters(a1, v20, v22);
        v85 = CFStringGetLength(theString);
        free(v20);
      }

      else
      {
        v85 = v14;
      }

      ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, theString, @":");
      MutableCopy = CFArrayCreateMutableCopy(a1, 0, ArrayBySeparatingStrings);
      v39 = CFStringGetCharacterAtIndex(theString, 0);
      CFRelease(ArrayBySeparatingStrings);
      cf = theString;
      if (v39 == 58)
      {
        CFArrayRemoveValueAtIndex(MutableCopy, 0);
      }

      else
      {
        ValueAtIndex = CFArrayGetValueAtIndex(MutableCopy, 0);
        if (CFStringGetLength(ValueAtIndex) == 1 && CFStringGetCharacterAtIndex(ValueAtIndex, 0) == 47)
        {
          CFArrayRemoveValueAtIndex(MutableCopy, 0);
        }

        CFArrayInsertValueAtIndex(MutableCopy, 0, &stru_1EF068AA8);
      }

      v83 = v19;
      v84 = a5;
      Count = CFArrayGetCount(MutableCopy);
      v42 = Count;
      if (Count)
      {
        v78 = Count;
        v79 = a4;
        v43 = 0;
        do
        {
          v44 = CFArrayGetValueAtIndex(MutableCopy, v43);
          result.location = 0;
          result.length = 0;
          v45 = CFStringGetLength(v44);
          v92.location = 0;
          v92.length = v45;
          if (CFStringFindWithOptions(v44, @"/", v92, 0, &result))
          {
            v46 = 0;
            v47 = 0;
            do
            {
              v48 = v46 + v45;
              if (!v47)
              {
                v47 = CFStringCreateMutableCopy(a1, v48, v44);
              }

              CFStringReplace(v47, result, @":");
              v45 = v48 + ~result.location;
              v46 = result.location + 1;
              v93.location = result.location + 1;
              v93.length = v45;
            }

            while (CFStringFindWithOptions(v44, @"/", v93, 0, &result));
            if (v47)
            {
              CFArraySetValueAtIndex(MutableCopy, v43, v47);
              CFRelease(v47);
            }
          }

          ++v43;
        }

        while (v43 != v42);
        a4 = v79;
        if (v79)
        {
          v49 = CFArrayGetValueAtIndex(MutableCopy, v78 - 1);
          if (CFStringGetLength(v49))
          {
            CFArrayAppendValue(MutableCopy, &stru_1EF068AA8);
          }
        }
      }

      if (!MutableCopy)
      {
        v35 = 0;
        LOBYTE(v15) = v83;
        goto LABEL_105;
      }

      v50 = a4;
      v51 = CFGetAllocator(MutableCopy);
      v52 = CFArrayGetCount(MutableCopy);
      v53 = v52;
      if (v52 >= 1)
      {
        v54 = 0;
        v55 = 0;
        while (1)
        {
          v56 = CFArrayGetValueAtIndex(MutableCopy, v55);
          v57 = CFURLCreateStringByAddingPercentEscapes(v51, v56, 0, @";?/", 0x8000100u);
          if (!v57)
          {
            break;
          }

          v58 = v57;
          if (v57 != v56)
          {
            if (!v54)
            {
              v54 = CFArrayCreateMutableCopy(v51, v53, MutableCopy);
            }

            CFArraySetValueAtIndex(v54, v55, v58);
          }

          CFRelease(v58);
          if (v53 == ++v55)
          {
            goto LABEL_92;
          }
        }

        if (v53 == v55)
        {
LABEL_92:
          v60 = v54;
          if (v54)
          {
            goto LABEL_94;
          }

          goto LABEL_93;
        }

        v63 = 0;
        v35 = 0;
        a5 = v84;
        LOBYTE(v15) = v83;
        if (!v54)
        {
          goto LABEL_104;
        }

        goto LABEL_103;
      }

      if (v52)
      {
        v35 = 0;
        a5 = v84;
      }

      else
      {
LABEL_93:
        CFRetain(MutableCopy);
        v60 = MutableCopy;
LABEL_94:
        CFRelease(MutableCopy);
        if (CFArrayGetCount(v60) == 1 && (v61 = CFArrayGetValueAtIndex(v60, 0), !CFStringGetLength(v61)))
        {
          v62 = CFRetain(@"/");
        }

        else
        {
          v62 = CFStringCreateByCombiningStrings(a1, v60, @"/");
        }

        v54 = v62;
        a5 = v84;
        if (v80 != 58 && v62)
        {
          v63 = CFStringCreateWithFormat(a1, 0, @"file://%@", v62);
          MutableCopy = v60;
          LOBYTE(v15) = v83;
LABEL_103:
          CFRelease(v54);
          v35 = v63;
          goto LABEL_104;
        }

        MutableCopy = v60;
        v35 = v62;
      }

      LOBYTE(v15) = v83;
LABEL_104:
      CFRelease(MutableCopy);
      a4 = v50;
LABEL_105:
      if (v81)
      {
        CFRelease(cf);
        v36 = 1;
        v16 = 1;
        if (v35)
        {
          goto LABEL_107;
        }
      }

      else
      {
        v16 = 1;
        v36 = 1;
        if (v35)
        {
          goto LABEL_107;
        }
      }

LABEL_114:
      v66 = 0;
LABEL_144:
      v77 = *MEMORY[0x1E69E9840];
      return v66;
    }

    v29 = CFStringGetCharacterAtIndex(theString, 0);
    if (v14 == 1)
    {
      v30 = 0;
    }

    else
    {
      v30 = CFStringGetCharacterAtIndex(theString, 1);
    }

    if (v29 > 0x7F || (sURLValidCharacters[v29] & 2) == 0 || v30 != 124 && v30 != 58)
    {
      if (v29 == 47)
      {
        v85 = v14;
        v16 = 1;
        v35 = POSIXPathToURLPath(theString, a4, 1, &v86);
        v36 = 0;
LABEL_85:
        LOBYTE(v15) = 1;
        if (v35)
        {
          goto LABEL_107;
        }

        goto LABEL_114;
      }

      if (v29 != 92)
      {
        v59 = WindowsPathToURLPath(theString, a1, a4, 0);
        if (v59)
        {
          v35 = v59;
          v85 = v14;
          v16 = 1;
          v36 = 2;
          goto LABEL_110;
        }

        goto LABEL_114;
      }
    }

    v85 = v14;
    v16 = 1;
    v35 = WindowsPathToURLPath(theString, a1, a4, 1);
    v36 = 2;
    goto LABEL_85;
  }

  if (!a5)
  {
    goto LABEL_114;
  }

  v17 = *MEMORY[0x1E69E9840];

  return CFRetain(a5);
}

CFIndex CFStringGetMaximumSizeOfFileSystemRepresentation(CFStringRef string)
{
  Length = CFStringGetLength(string);
  FastestEncoding = CFStringGetFastestEncoding(string);
  if (FastestEncoding != 1536 && FastestEncoding)
  {
    v4 = Length <= 0xE38E38E38E38E38;
    v5 = 9 * Length;
  }

  else
  {
    v4 = Length <= 0x2AAAAAAAAAAAAAAALL;
    v5 = 3 * Length;
  }

  if (v4)
  {
    return v5 + 1;
  }

  else
  {
    return -1;
  }
}

CFStringRef CFURLCopyFileSystemPath(CFURLRef anURL, CFURLPathStyle pathStyle)
{
  v18 = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCopyFileSystemPath_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, anURL))
    {
      anURL = [(__CFURL *)anURL _cfurl];
    }

    v4 = [(__CFURL *)anURL _fileSystemPath:pathStyle resolveAgainstBase:0];
    v5 = *MEMORY[0x1E69E9840];

    return v4;
  }

  else
  {
    v7 = CFGetAllocator(anURL);
    if (pathStyle || CFURLGetBaseURL(anURL) || CF_IS_OBJC(0x1DuLL, anURL) || (*(anURL + 17) & 0x10) == 0)
    {
      goto LABEL_25;
    }

    v8 = CFURLGetString(anURL);
    Length = CFStringGetLength(v8);
    if (Length <= 1)
    {
      Length = 1;
    }

    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v11 = MaximumSizeForEncoding;
    if (MaximumSizeForEncoding >= 1025)
    {
      v12 = malloc_type_malloc(MaximumSizeForEncoding, 0x100004077774924uLL);
    }

    else
    {
      v12 = v17;
    }

    v13 = atomic_load(anURL + 3);
    if (CanonicalFileURLStringToFileSystemRepresentation(v13, v12, v11))
    {
      v14 = strlen(v12);
      v15 = CFStringCreateWithBytes(v7, v12, v14, 0x8000100u, 0);
    }

    else
    {
      v15 = 0;
    }

    if (v12 != v17)
    {
      free(v12);
    }

    if (!v15)
    {
LABEL_25:
      v15 = CFURLCreateStringWithFileSystemPath(v7, anURL, pathStyle, 0);
    }

    v16 = *MEMORY[0x1E69E9840];
    return v15;
  }
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v12 = *MEMORY[0x1E69E9840];
  result.location = 0;
  result.length = 0;
  v14.length = CFStringGetLength(theString);
  v14.location = 0;
  v6 = CFStringFindWithOptionsAndLocale(theString, stringToFind, v14, compareOptions, 0, &result);
  v7 = v6 == 0;
  if (v6)
  {
    location = result.location;
  }

  else
  {
    location = -1;
  }

  if (v7)
  {
    length = 0;
  }

  else
  {
    length = result.length;
  }

  v10 = *MEMORY[0x1E69E9840];
  v13.length = length;
  v13.location = location;
  return v13;
}

uint64_t _CFXNotificationRegistrarFindName(uint64_t a1, uint64_t a2, const void *a3, unint64_t a4, _DWORD *a5)
{
  v5 = *(a2 + 8);
  if (v5)
  {
    v9 = *(*a2 + 4 * (a4 % v5));
    while (v9 != 0xFFFFFFFFLL)
    {
      v10 = v9;
      v11 = *(a1 + 96) + 40 * v9;
      v9 = *(v11 + 4);
      if (CFCachedStringEqual((v11 + 8), a3))
      {
        if (a5)
        {
          *a5 = v10;
        }

        return v11;
      }
    }
  }

  return 0;
}

BOOL CFCachedStringEqual(CFTypeRef *a1, const void *a2)
{
  os_unfair_lock_lock(&__CFXNotificationRegistrarNamePoolLock);
  if (*a1)
  {
    v4 = CFEqual(*a1, a2) != 0;
  }

  else
  {
    v4 = 0;
  }

  os_unfair_lock_unlock(&__CFXNotificationRegistrarNamePoolLock);
  return v4;
}

void _CFXNotificationDisposalListRelease(unsigned int *a1)
{
  if (*a1)
  {
    v2 = 1;
    do
    {
      CFRelease(*&a1[2 * v2]);
      v3 = *a1;
      if (*a1 >= 4)
      {
        v4 = 4;
      }

      else
      {
        v4 = v3;
      }
    }

    while (v2++ < v4);
    if (v3 >= 5)
    {
      v6 = 0;
      do
      {
        CFRelease(*(*(a1 + 5) + 8 * v6));
        v7 = v6 + 5;
        ++v6;
      }

      while (v7 < *a1);
    }
  }
}

void CFBagAddValue(CFMutableBagRef theBag, const void *value)
{
  v10 = atomic_load(theBag + 1);
  if ((v10 & 0x40) != 0)
  {
    CFLog(3, @"%s(): immutable collection %p given to mutating function", v2, v3, v4, v5, v6, v7, "void CFBagAddValue(CFMutableBagRef, const void *)");
  }

  CFBasicHashAddValue(theBag, value, value);
}

void __CFBasicHashIncSlotCount(char *cf, uint64_t a2)
{
  v4 = cf + 40;
  while (1)
  {
    v5 = *(cf + 9);
    v6 = *&v4[v5 & 0x18];
    v7 = (v5 >> 5) & 3;
    if (v7 > 1)
    {
      if (v7 == 2)
      {
        v17 = v6[a2];
        if (v17 <= 0x7FFFFFFE)
        {
          v6[a2] = v17 + 1;
          return;
        }

        v9 = CFGetAllocator(cf);
        v18 = *(cf + 9);
        v19 = (v18 >> 5) & 3;
        if (v19 > 1)
        {
          if (v19 != 2)
          {
            goto LABEL_121;
          }

          *(cf + 9) = v18 | 0x60;
          v42 = __CFBasicHashTableSizes[cf[26]];
          if ((v42 - 0x1000000000000000) >> 61 != 7)
          {
            __CFBasicHashIncSlotCount_cold_4();
          }

          v43 = CFGetAllocator(cf);
          Typed = CFAllocatorAllocateTyped(v43, 8 * v42, 2111234908, 0);
          if (!Typed)
          {
            goto LABEL_121;
          }

          v15 = Typed;
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          if (v42 >= 1)
          {
            for (i = 0; i != v42; ++i)
            {
              *(v15 + 8 * i) = v6[i];
            }
          }
        }

        else if (v19)
        {
          *(cf + 9) = v18 & 0xFF9F | 0x40;
          v58 = __CFBasicHashTableSizes[cf[26]];
          if ((v58 - 0x2000000000000000) >> 62 != 3)
          {
            __CFBasicHashIncSlotCount_cold_5();
          }

          v59 = CFGetAllocator(cf);
          v60 = CFAllocatorAllocateTyped(v59, 4 * v58, 2111234908, 0);
          if (!v60)
          {
            goto LABEL_121;
          }

          v15 = v60;
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          if (v58 >= 1)
          {
            for (j = 0; j != v58; ++j)
            {
              *(v15 + 4 * j) = *(v6 + j);
            }
          }
        }

        else
        {
          *(cf + 9) = v18 & 0xFF9F | 0x20;
          v20 = __CFBasicHashTableSizes[cf[26]];
          if (v20 + 0x4000000000000000 < 0)
          {
            __CFBasicHashIncSlotCount_cold_6();
          }

          v21 = CFGetAllocator(cf);
          v22 = CFAllocatorAllocateTyped(v21, 2 * v20, 2111234908, 0);
          if (!v22)
          {
            goto LABEL_121;
          }

          v15 = v22;
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          if (v20 >= 1)
          {
            for (k = 0; k != v20; ++k)
            {
              *(v15 + 2 * k) = *(v6 + k);
            }
          }
        }
      }

      else
      {
        v31 = *&v6[2 * a2];
        if (v31 <= 0x7FFFFFFFFFFFFFFELL)
        {
          *&v6[2 * a2] = v31 + 1;
          return;
        }

        v9 = CFGetAllocator(cf);
        v32 = *(cf + 9);
        v33 = (v32 >> 5) & 3;
        if (v33 > 1)
        {
          if (v33 != 2)
          {
            goto LABEL_121;
          }

          *(cf + 9) = v32 | 0x60;
          v50 = __CFBasicHashTableSizes[cf[26]];
          if ((v50 - 0x1000000000000000) >> 61 != 7)
          {
            goto LABEL_122;
          }

          v51 = CFGetAllocator(cf);
          v52 = CFAllocatorAllocateTyped(v51, 8 * v50, 2111234908, 0);
          if (!v52)
          {
            goto LABEL_121;
          }

          v15 = v52;
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          if (v50 >= 1)
          {
            for (m = 0; m != v50; ++m)
            {
              *(v15 + 8 * m) = v6[m];
            }
          }
        }

        else if (v33)
        {
          *(cf + 9) = v32 & 0xFF9F | 0x40;
          v66 = __CFBasicHashTableSizes[cf[26]];
          if ((v66 - 0x2000000000000000) >> 62 != 3)
          {
            __CFBasicHashIncSlotCount_cold_2();
          }

          v67 = CFGetAllocator(cf);
          v68 = CFAllocatorAllocateTyped(v67, 4 * v66, 2111234908, 0);
          if (!v68)
          {
LABEL_121:
            __break(1u);
LABEL_122:
            __CFBasicHashIncSlotCount_cold_1();
          }

          v15 = v68;
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          if (v66 >= 1)
          {
            for (n = 0; n != v66; ++n)
            {
              *(v15 + 4 * n) = *(v6 + n);
            }
          }
        }

        else
        {
          *(cf + 9) = v32 & 0xFF9F | 0x20;
          v34 = __CFBasicHashTableSizes[cf[26]];
          if (v34 + 0x4000000000000000 < 0)
          {
            __CFBasicHashIncSlotCount_cold_3();
          }

          v35 = CFGetAllocator(cf);
          v36 = CFAllocatorAllocateTyped(v35, 2 * v34, 2111234908, 0);
          if (!v36)
          {
            goto LABEL_121;
          }

          v15 = v36;
          if (__CFOASafe == 1)
          {
            __CFSetLastAllocationEventName();
          }

          if (v34 >= 1)
          {
            for (ii = 0; ii != v34; ++ii)
            {
              *(v15 + 2 * ii) = *(v6 + ii);
            }
          }
        }
      }

      goto LABEL_116;
    }

    if (!v7)
    {
      break;
    }

    v24 = *(v6 + a2);
    if (v24 <= 0x7FFE)
    {
      *(v6 + a2) = v24 + 1;
      return;
    }

    v9 = CFGetAllocator(cf);
    v25 = *(cf + 9);
    v26 = (v25 >> 5) & 3;
    if (v26 > 1)
    {
      if (v26 != 2)
      {
        goto LABEL_121;
      }

      *(cf + 9) = v25 | 0x60;
      v46 = __CFBasicHashTableSizes[cf[26]];
      if ((v46 - 0x1000000000000000) >> 61 != 7)
      {
        __CFBasicHashIncSlotCount_cold_7();
      }

      v47 = CFGetAllocator(cf);
      v48 = CFAllocatorAllocateTyped(v47, 8 * v46, 2111234908, 0);
      if (!v48)
      {
        goto LABEL_121;
      }

      v15 = v48;
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      if (v46 >= 1)
      {
        for (jj = 0; jj != v46; ++jj)
        {
          *(v15 + 8 * jj) = v6[jj];
        }
      }
    }

    else if (v26)
    {
      *(cf + 9) = v25 & 0xFF9F | 0x40;
      v62 = __CFBasicHashTableSizes[cf[26]];
      if ((v62 - 0x2000000000000000) >> 62 != 3)
      {
        __CFBasicHashIncSlotCount_cold_8();
      }

      v63 = CFGetAllocator(cf);
      v64 = CFAllocatorAllocateTyped(v63, 4 * v62, 2111234908, 0);
      if (!v64)
      {
        goto LABEL_121;
      }

      v15 = v64;
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      if (v62 >= 1)
      {
        for (kk = 0; kk != v62; ++kk)
        {
          *(v15 + 4 * kk) = *(v6 + kk);
        }
      }
    }

    else
    {
      *(cf + 9) = v25 & 0xFF9F | 0x20;
      v27 = __CFBasicHashTableSizes[cf[26]];
      if (v27 + 0x4000000000000000 < 0)
      {
        __CFBasicHashIncSlotCount_cold_9();
      }

      v28 = CFGetAllocator(cf);
      v29 = CFAllocatorAllocateTyped(v28, 2 * v27, 2111234908, 0);
      if (!v29)
      {
        goto LABEL_121;
      }

      v15 = v29;
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      if (v27 >= 1)
      {
        for (mm = 0; mm != v27; ++mm)
        {
          *(v15 + 2 * mm) = *(v6 + mm);
        }
      }
    }

LABEL_116:
    *&v4[*(cf + 9) & 0x18] = v15;
    CFAllocatorDeallocate(v9, v6);
  }

  v8 = *(v6 + a2);
  if (v8 > 0x7E)
  {
    v9 = CFGetAllocator(cf);
    v10 = *(cf + 9);
    v11 = (v10 >> 5) & 3;
    if (v11 > 1)
    {
      if (v11 != 2)
      {
        goto LABEL_121;
      }

      *(cf + 9) = v10 | 0x60;
      v38 = __CFBasicHashTableSizes[cf[26]];
      if ((v38 - 0x1000000000000000) >> 61 != 7)
      {
        __CFBasicHashIncSlotCount_cold_10();
      }

      v39 = CFGetAllocator(cf);
      v40 = CFAllocatorAllocateTyped(v39, 8 * v38, 2111234908, 0);
      if (!v40)
      {
        goto LABEL_121;
      }

      v15 = v40;
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      if (v38 >= 1)
      {
        for (nn = 0; nn != v38; ++nn)
        {
          *(v15 + 8 * nn) = v6[nn];
        }
      }
    }

    else if (v11)
    {
      *(cf + 9) = v10 & 0xFF9F | 0x40;
      v54 = __CFBasicHashTableSizes[cf[26]];
      if ((v54 - 0x2000000000000000) >> 62 != 3)
      {
        __CFBasicHashIncSlotCount_cold_11();
      }

      v55 = CFGetAllocator(cf);
      v56 = CFAllocatorAllocateTyped(v55, 4 * v54, 2111234908, 0);
      if (!v56)
      {
        goto LABEL_121;
      }

      v15 = v56;
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      if (v54 >= 1)
      {
        for (i1 = 0; i1 != v54; ++i1)
        {
          *(v15 + 4 * i1) = *(v6 + i1);
        }
      }
    }

    else
    {
      *(cf + 9) = v10 & 0xFF9F | 0x20;
      v12 = __CFBasicHashTableSizes[cf[26]];
      if (v12 + 0x4000000000000000 < 0)
      {
        __CFBasicHashIncSlotCount_cold_12();
      }

      v13 = CFGetAllocator(cf);
      v14 = CFAllocatorAllocateTyped(v13, 2 * v12, 2111234908, 0);
      if (!v14)
      {
        goto LABEL_121;
      }

      v15 = v14;
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }

      if (v12 >= 1)
      {
        for (i2 = 0; i2 != v12; ++i2)
        {
          *(v15 + 2 * i2) = *(v6 + i2);
        }
      }
    }

    goto LABEL_116;
  }

  *(v6 + a2) = v8 + 1;
}

CFStringRef CFURLCreateStringByReplacingPercentEscapesUsingEncoding(CFAllocatorRef allocator, CFStringRef origString, CFStringRef charsToLeaveEscaped, CFStringEncoding encoding)
{
  v6 = allocator;
  v49 = *MEMORY[0x1E69E9840];
  if (encoding == 134217984)
  {
    v7 = *MEMORY[0x1E69E9840];

    return CFURLCreateStringByReplacingPercentEscapes(allocator, origString, charsToLeaveEscaped);
  }

  result.location = 0;
  result.length = 0;
  if (charsToLeaveEscaped)
  {
    Length = CFStringGetLength(charsToLeaveEscaped);
    if (origString)
    {
      v10 = Length;
      v11 = CFStringGetLength(origString);
      v51.location = 0;
      v51.length = v11;
      if (!CFStringFindWithOptions(origString, @"%", v51, 0, &result))
      {
LABEL_61:
        Copy = CFStringCreateCopy(v6, origString);
LABEL_65:
        v39 = *MEMORY[0x1E69E9840];
        return Copy;
      }

      v40 = v10;
      alloc = v6;
      range_8 = charsToLeaveEscaped;
      cf = 0;
      Copy = 0;
      v13 = 0;
      v14 = 8;
      v15 = &v48;
LABEL_9:
      v16 = 0;
      range = v13;
      chars = 0;
      v17 = result.location + 3;
      v18 = -result.location;
      while (1)
      {
        v19 = v16;
        if (v11 + v18 < 3)
        {
          break;
        }

        v13 = v17;
        if (v16 == v14)
        {
          if (v15 == &v48)
          {
            v15 = malloc_type_malloc(0x10uLL, 0x100004077774924uLL);
            __memmove_chk();
            v14 = 16;
          }

          else
          {
            v20 = malloc_type_malloc(2 * v14, 0x100004077774924uLL);
            memmove(v20, v15, v14);
            free(v15);
            v14 *= 2;
            v15 = v20;
          }
        }

        chars = CFStringGetCharacterAtIndex(origString, v13 - 2);
        CharacterAtIndex = CFStringGetCharacterAtIndex(origString, v13 - 1);
        v22 = chars;
        v15[v19] = 0;
        if ((v22 - 48) >= 0xA)
        {
          if ((v22 - 97) >= 6)
          {
            if ((v22 - 65) > 5)
            {
              break;
            }

            v23 = -55;
          }

          else
          {
            v23 = -87;
          }
        }

        else
        {
          v23 = -48;
        }

        v24 = 16 * (v23 + v22);
        v15[v19] = v24;
        if ((CharacterAtIndex - 48) > 9)
        {
          if ((CharacterAtIndex - 97) > 5)
          {
            if ((CharacterAtIndex - 65) > 5)
            {
              break;
            }

            v25 = CharacterAtIndex + v24 - 55;
          }

          else
          {
            v25 = CharacterAtIndex + v24 - 87;
          }
        }

        else
        {
          v25 = CharacterAtIndex + v24 - 48;
        }

        v15[v19] = v25;
        if (v11 > v13)
        {
          v26 = CFStringGetCharacterAtIndex(origString, v13);
          v17 = v13 + 3;
          v18 -= 3;
          v16 = v19 + 1;
          if (v26 == 37)
          {
            continue;
          }
        }

        v6 = alloc;
        v27 = CFStringCreateWithBytes(alloc, v15, (v19 + 1), encoding, 0);
        if (!v27)
        {
          goto LABEL_52;
        }

        v28 = v27;
        if (!Copy)
        {
          Copy = CFStringCreateMutable(alloc, v11);
        }

        v29.location = range;
        if (result.location - range >= 1)
        {
          v29.length = result.location - range;
          v30 = CFStringCreateWithSubstring(alloc, origString, v29);
          CFStringAppend(Copy, v30);
          CFRelease(v30);
        }

        if (v40)
        {
          v31 = CFStringGetLength(v28);
          v32 = cf;
          if (!cf)
          {
            v32 = CFStringCreateMutableWithExternalCharactersNoCopy(alloc, &chars, 1, 1, &__kCFAllocatorNull);
          }

          cf = v32;
          if (v31 >= 1)
          {
            for (i = 0; i != v31; ++i)
            {
              chars = CFStringGetCharacterAtIndex(v28, i);
              if (CFStringFind(range_8, cf, 0).location == -1)
              {
                CFStringAppendCharacters(Copy, &chars, 1);
              }

              else
              {
                _appendPercentEscapesForCharacter(&chars, 0, encoding, Copy);
              }
            }
          }
        }

        else
        {
          CFStringAppend(Copy, v28);
        }

        CFRelease(v28);
        v52.location = v13;
        v52.length = v11 - v13;
        if (!CFStringFindWithOptions(origString, @"%", v52, 0, &result))
        {
          v34 = 1;
          range = v13;
          v6 = alloc;
          v35 = cf;
          goto LABEL_53;
        }

        goto LABEL_9;
      }

      v6 = alloc;
LABEL_52:
      v35 = cf;
      v34 = 0;
LABEL_53:
      if (v35)
      {
        CFRelease(v35);
      }

      if (v15 != &v48)
      {
        free(v15);
      }

      if (v34)
      {
        if (Copy)
        {
          v37.location = range;
          if (v11 > range)
          {
            v37.length = v11 - range;
            v38 = CFStringCreateWithSubstring(v6, origString, v37);
            CFStringAppend(Copy, v38);
            CFRelease(v38);
          }

          goto LABEL_65;
        }

        goto LABEL_61;
      }

      if (!Copy)
      {
        goto LABEL_65;
      }

      CFRelease(Copy);
    }

LABEL_64:
    Copy = 0;
    goto LABEL_65;
  }

  if (!origString)
  {
    goto LABEL_64;
  }

  v36 = *MEMORY[0x1E69E9840];

  return CFStringCreateCopy(allocator, origString);
}

uint64_t __CFURLEndResourcePropertyCacheAccess(uint64_t a1)
{
  v2 = __CFURLResourceInfoPtr(a1);

  return MEMORY[0x1EEE006D0](a1, v2);
}

CFStringRef CFStringCreateWithFormat(CFAllocatorRef alloc, CFDictionaryRef formatOptions, CFStringRef format, ...)
{
  va_start(va, format);
  v5 = *MEMORY[0x1E69E9840];
  result = CFStringCreateWithFormatAndArguments(alloc, formatOptions, format, va);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFDataGetBinaryPlistTopLevelInfo(void *a1, _BYTE *a2, unint64_t *a3, uint64_t a4)
{
  if (CF_IS_OBJC(0x14uLL, a1))
  {
    return [a1 _getBPlistMarker:a2 offset:a3 trailer:a4];
  }

  BytePtr = CFDataGetBytePtr(a1);
  if (CF_IS_OBJC(0x14uLL, a1))
  {
    v10 = [a1 length];
  }

  else
  {
    v10 = a1[2];
  }

  return __CFBinaryPlistGetTopLevelInfo(BytePtr, v10, a2, a3, a4);
}

uint64_t __CFBinaryPlistCreateObjectFiltered(uint64_t Value, int a2, unint64_t a3, uint64_t a4, __objc2_class **a5, uint64_t a6, uint64_t a7, const __CFDictionary *a8, CFSetRef theSet, uint64_t a10, const __CFSet *a11, CFTypeRef *a12, CFTypeID *a13)
{
  v212[1] = *MEMORY[0x1E69E9840];
  if (a10 >= 0x81)
  {
    v13 = _CFOSLog();
    if (os_log_type_enabled(v13, OS_LOG_TYPE_FAULT))
    {
      __CFBinaryPlistCreateObjectFiltered_cold_1(v13);
    }

    goto LABEL_12;
  }

  v204 = a5;
  v205 = Value;
  v206 = ~a3;
  if (a8)
  {
    if (a12)
    {
      Value = CFDictionaryGetValue(a8, v206);
      *a12 = Value;
      if (Value)
      {
        CFRetain(Value);
        if (a13)
        {
          *a13 = CFGetTypeID(*a12);
        }

        goto LABEL_9;
      }
    }
  }

  v203 = a12;
  if (theSet)
  {
    Value = CFSetContainsValue(theSet, v206);
    if (Value)
    {
LABEL_12:
      LOBYTE(v20) = 0;
      goto LABEL_13;
    }
  }

  v202 = theSet;
  LOBYTE(v20) = 0;
  if (a3 < 8)
  {
    goto LABEL_13;
  }

  v201 = a13;
  v23 = *(a4 + 24) - 1;
  if (v23 < a3)
  {
    goto LABEL_13;
  }

  LOBYTE(v20) = 0;
  v200 = a6;
  v24 = v205 + a3;
  v25 = *(v205 + a3);
  v26 = v25 >> 4;
  if (v25 >> 4 <= 4)
  {
    if (v25 >> 4 > 1)
    {
      if (v26 != 2)
      {
        if (v26 != 3)
        {
          if (v26 != 4)
          {
            goto LABEL_13;
          }

          if (v24 == -1)
          {
            goto LABEL_12;
          }

          v32 = (v24 + 1);
          v33 = v25 & 0xF;
          if ((v25 & 0xF) != 0xF)
          {
LABEL_343:
            v139 = v205;
            goto LABEL_344;
          }

          if (v205 + v23 < v32)
          {
            goto LABEL_12;
          }

          v34 = (v24 + 2);
          v35 = *v32;
          if ((*v32 & 0xF0) != 0x10)
          {
            goto LABEL_12;
          }

          LOBYTE(v20) = 0;
          v36 = v35 & 0xF;
          v37 = 1 << (v35 & 0xF);
          if (__CFADD__(v37, v34) || &v32[v37] > v205 + v23)
          {
            goto LABEL_13;
          }

          if (v37 > 3u)
          {
            if (v37 == 4)
            {
              v33 = bswap32(*(v24 + 2));
              goto LABEL_311;
            }

            if (v37 == 8)
            {
              v33 = bswap64(*(v24 + 2));
LABEL_341:
              if (v33 < 0)
              {
                goto LABEL_12;
              }

              v32 = &v34[v37];
              goto LABEL_343;
            }
          }

          else
          {
            if (v37 == 1)
            {
              v33 = *v34;
              goto LABEL_311;
            }

            if (v37 == 2)
            {
              v33 = __rev16(*(v24 + 2));
LABEL_311:
              v139 = v205;
              v32 = &v34[v37];
LABEL_344:
              LOBYTE(v20) = 0;
              if (__CFADD__(v33, v32) || v139 + v23 < &v32[v33 - 1])
              {
                goto LABEL_13;
              }

              if (v201)
              {
                *v201 = 20;
              }

              if (v203)
              {
                if (v200 == 2)
                {
                  Mutable = CFDataCreateMutable(v204, 0);
                  v144 = Mutable;
                  if (Mutable)
                  {
                    CFDataAppendBytes(Mutable, v32, v33);
                  }

                  LOBYTE(v20) = v144 != 0;
                }

                else
                {
                  v145 = CFDataCreate(v204, v32, v33);
                  v144 = v145;
                  LOBYTE(v20) = v145 != 0;
                  if (a8 && v145)
                  {
                    CFDictionarySetValue(a8, v206, v145);
                    LOBYTE(v20) = 1;
                  }
                }

                *v203 = v144;
                goto LABEL_13;
              }

              goto LABEL_9;
            }
          }

          if (v36 > 7)
          {
            v33 = 0;
            goto LABEL_311;
          }

          v33 = 0;
          v140 = v37;
          v141 = (v24 + 2);
          do
          {
            v142 = *v141++;
            v33 = v142 | (v33 << 8);
            --v140;
          }

          while (v140);
          goto LABEL_341;
        }

        LOBYTE(v20) = 0;
        if (v24 == -1)
        {
          goto LABEL_13;
        }

        if (v25 != 51)
        {
          goto LABEL_13;
        }

        LOBYTE(v20) = 0;
        if (v24 > 0xFFFFFFFFFFFFFFF6 || v205 + v23 < v24 + 8)
        {
          goto LABEL_13;
        }

        v59 = *(v24 + 1);
        if (v201)
        {
          *v201 = 42;
        }

        if (v203)
        {
          v60 = CFDateCreate(v204, COERCE_CFABSOLUTETIME(bswap64(v59)));
          v61 = v60;
          LOBYTE(v20) = v60 != 0;
          if (!a8 || !v60)
          {
            goto LABEL_164;
          }

          goto LABEL_145;
        }

LABEL_9:
        LOBYTE(v20) = 1;
        goto LABEL_13;
      }

      if ((v25 & 0xF) == 3)
      {
        if (v24 == -1)
        {
          goto LABEL_12;
        }

        LOBYTE(v20) = 0;
        if (v24 > 0xFFFFFFFFFFFFFFF6 || v205 + v23 < v24 + 8)
        {
          goto LABEL_13;
        }

        valuePtr[0] = bswap64(*(v24 + 1));
        if (v201)
        {
          *v201 = 22;
        }

        if (!v203)
        {
          goto LABEL_9;
        }

        v61 = CFNumberCreate(v204, kCFNumberFloat64Type, valuePtr);
        LOBYTE(v20) = v61 != 0;
        if (v61)
        {
          v64 = a8 != 0;
        }

        else
        {
          v64 = 0;
        }

        if (!v64)
        {
          goto LABEL_164;
        }
      }

      else
      {
        if ((v25 & 0xF) != 2 || v24 == -1)
        {
          goto LABEL_12;
        }

        LOBYTE(v20) = 0;
        if (v24 > 0xFFFFFFFFFFFFFFFALL || v205 + v23 < v24 + 4)
        {
          goto LABEL_13;
        }

        LODWORD(valuePtr[0]) = bswap32(*(v24 + 1));
        if (v201)
        {
          *v201 = 22;
        }

        if (!v203)
        {
          goto LABEL_9;
        }

        v61 = CFNumberCreate(v204, kCFNumberFloat32Type, valuePtr);
        LOBYTE(v20) = v61 != 0;
        if (v61)
        {
          v63 = a8 != 0;
        }

        else
        {
          v63 = 0;
        }

        if (!v63)
        {
          goto LABEL_164;
        }
      }

LABEL_163:
      CFDictionarySetValue(a8, v206, v61);
      goto LABEL_164;
    }

    if (v26)
    {
      if (v26 != 1)
      {
        goto LABEL_13;
      }

      if (v24 == -1)
      {
        goto LABEL_12;
      }

      v44 = v25 & 0xF;
      v45 = 1 << (v25 & 0xF);
      if (v24 >= ~v45)
      {
        goto LABEL_12;
      }

      LOBYTE(v20) = 0;
      if (v44 > 4)
      {
        goto LABEL_13;
      }

      v46 = (v24 + 1);
      if (v205 + v23 < v24 + v45)
      {
        goto LABEL_13;
      }

      v47 = (1 << (v25 & 0xF));
      if (v47 > 3)
      {
        v48 = v204;
        if (v47 != 4)
        {
          v49 = v201;
          if (v47 == 8)
          {
            v50 = bswap64(*v46);
            goto LABEL_155;
          }

          goto LABEL_149;
        }

        v50 = bswap32(*v46);
      }

      else
      {
        v48 = v204;
        if (v47 != 1)
        {
          v49 = v201;
          if (v47 == 2)
          {
            v50 = __rev16(*v46);
            goto LABEL_155;
          }

LABEL_149:
          v50 = 0;
          do
          {
            v69 = *v46;
            v46 = (v46 + 1);
            v50 = v69 | (v50 << 8);
            --v45;
          }

          while (v45);
LABEL_155:
          v212[0] = v50;
          if (v49)
          {
            *v49 = 22;
          }

          if (!v203)
          {
            goto LABEL_9;
          }

          if (v44 == 4)
          {
            valuePtr[0] = 0;
            valuePtr[1] = v50;
            v70 = CFNumberCreate(v48, kCFNumberMaxType|kCFNumberSInt8Type, valuePtr);
          }

          else
          {
            v70 = CFNumberCreate(v48, kCFNumberSInt64Type, v212);
          }

          v61 = v70;
          LOBYTE(v20) = v70 != 0;
          if (!a8 || !v70)
          {
            goto LABEL_164;
          }

          goto LABEL_163;
        }

        v50 = *v46;
      }

      v49 = v201;
      goto LABEL_155;
    }

    if (v25 == 9)
    {
      v65 = v203;
      if (v203)
      {
        v66 = &kCFBooleanTrue;
        goto LABEL_123;
      }
    }

    else
    {
      if (v25 != 8)
      {
        if (*(v205 + a3))
        {
          goto LABEL_12;
        }

        if (v203)
        {
          *v203 = &__kCFNull;
        }

        v57 = v201;
        if (!v201)
        {
          goto LABEL_9;
        }

        v58 = 16;
        goto LABEL_126;
      }

      v65 = v203;
      if (v203)
      {
        v66 = &kCFBooleanFalse;
LABEL_123:
        *v65 = *v66;
      }
    }

    v57 = v201;
    if (!v201)
    {
      goto LABEL_9;
    }

    v58 = 21;
LABEL_126:
    *v57 = v58;
    goto LABEL_9;
  }

  if (v25 >> 4 <= 9)
  {
    switch(v26)
    {
      case 5u:
        v210[0] = MEMORY[0x1E69E9820];
        v210[1] = 3221225472;
        v210[2] = ____CFBinaryPlistCreateObjectFiltered_block_invoke;
        v210[3] = &__block_descriptor_104_e12_B24__0r_8q16l;
        v210[4] = v201;
        v210[5] = v203;
        v210[6] = v200;
        v210[7] = a6;
        v210[8] = v204;
        v210[9] = a7;
        v210[10] = a3;
        v210[11] = a8;
        v210[12] = v206;
        v62 = __CFBinaryPlistParseASCIIString(v205, v23, v24, v210);
        break;
      case 6u:
        v209[0] = MEMORY[0x1E69E9820];
        v209[1] = 3221225472;
        v209[2] = ____CFBinaryPlistCreateObjectFiltered_block_invoke_2;
        v209[3] = &__block_descriptor_104_e13_B24__0r_S8q16l;
        v209[4] = v201;
        v209[5] = v203;
        v209[6] = v200;
        v209[7] = a6;
        v209[8] = v204;
        v209[9] = a7;
        v209[10] = a3;
        v209[11] = a8;
        v209[12] = v206;
        v62 = __CFBinaryPlistParseUnicode16String(v205, v23, v24, v209);
        break;
      case 8u:
        if (v24 == -1)
        {
          goto LABEL_12;
        }

        LOBYTE(v20) = 0;
        v27 = (v25 & 0xF) + 1;
        if (v24 >= ~v27)
        {
          goto LABEL_13;
        }

        v28 = (v24 + 1);
        if (v205 + v23 < v24 + v27)
        {
          goto LABEL_13;
        }

        if (v27 > 3)
        {
          v29 = v204;
          if ((v25 & 0xF) != 3)
          {
            v30 = v201;
            if ((v25 & 0xF) == 7)
            {
              v31 = bswap64(*v28);
              goto LABEL_135;
            }

LABEL_133:
            v31 = 0;
            do
            {
              v67 = *v28;
              v28 = (v28 + 1);
              v31 = v67 | (v31 << 8);
              --v27;
            }

            while (v27);
LABEL_135:
            if (HIDWORD(v31))
            {
              goto LABEL_12;
            }

LABEL_140:
            if (v30)
            {
              *v30 = 41;
            }

            if (!v203)
            {
              goto LABEL_9;
            }

            Instance = _CFRuntimeCreateInstance(v29, 0x29uLL, 8, 0, a5, a6, a7, a8);
            v61 = Instance;
            LOBYTE(v20) = Instance != 0;
            if (Instance)
            {
              *(Instance + 16) = v31;
              if (a8)
              {
LABEL_145:
                CFDictionarySetValue(a8, v206, v61);
              }
            }

LABEL_164:
            *v203 = v61;
            goto LABEL_13;
          }

          LODWORD(v31) = bswap32(*v28);
        }

        else
        {
          v29 = v204;
          if ((v25 & 0xF) != 0)
          {
            v30 = v201;
            if ((v25 & 0xF) == 1)
            {
              LODWORD(v31) = __rev16(*v28);
              goto LABEL_140;
            }

            goto LABEL_133;
          }

          LODWORD(v31) = *v28;
        }

        v30 = v201;
        goto LABEL_140;
      default:
        goto LABEL_13;
    }

    LOBYTE(v20) = v62;
    goto LABEL_13;
  }

  v199 = a11;
  if (v26 == 10 || v26 == 12)
  {
    if (v24 == -1)
    {
      goto LABEL_12;
    }

    v51 = (v24 + 1);
    v52 = v25 & 0xF;
    if ((v25 & 0xF) != 0xF)
    {
LABEL_181:
      if (v52)
      {
        if (!is_mul_ok(v52, *(a4 + 7)))
        {
          goto LABEL_12;
        }

        v74 = v52 * *(a4 + 7);
        v198 = v52;
      }

      else
      {
        v198 = 0;
        v74 = 0;
      }

      LOBYTE(v20) = 0;
      if (__CFADD__(v74, v51))
      {
        goto LABEL_13;
      }

      v195 = v51;
      if (v205 + v23 < &v51[v74 - 1])
      {
        goto LABEL_13;
      }

      if (v52)
      {
        v75 = v198;
        if (v198 >> 61)
        {
          goto LABEL_12;
        }

        v197 = v52;
        v194 = (8 * v198);
      }

      else
      {
        v197 = 0;
        v194 = 0;
        v75 = v198;
      }

      v198 = v75;
      v193 = &v186;
      MEMORY[0x1EEE9AC00](Value, v23);
      v78 = &v186 - v77;
      if (v76 >= 0x200)
      {
        v79 = 512;
      }

      else
      {
        v79 = v76;
      }

      bzero(&v186 - v77, v79);
      v190 = v78;
      if (v203)
      {
        Typed = v78;
        if (v198 >= 0x101)
        {
          Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, v194, 0xC0040B8AA526DLL, 0);
          if (!Typed)
          {
            LOBYTE(v20) = 0;
            goto LABEL_13;
          }
        }
      }

      else
      {
        Typed = 0;
      }

      v194 = 0;
      if (v202)
      {
        v80 = v199;
      }

      else
      {
        v80 = v199;
        if (a10 >= 16)
        {
          v194 = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, 0);
          v202 = v194;
        }
      }

      if (v202)
      {
        CFSetAddValue(v202, v206);
      }

      valuePtr[0] = 0;
      v212[0] = 0;
      v189 = &__kCFAllocatorSystemDefault;
      __CFPropertyListCreateSplitKeypaths(&__kCFAllocatorSystemDefault, v80, valuePtr, v212);
      LODWORD(v188) = v25 & 0xF0;
      if (v80)
      {
        v86 = (v25 & 0xF0) == 160;
      }

      else
      {
        v86 = 0;
      }

      v87 = !v86;
      if (valuePtr[0])
      {
        v88 = CFSetContainsValue(valuePtr[0], @"*");
        v89 = v198;
        v90 = v88 != 0;
      }

      else
      {
        v90 = 0;
        v89 = v198;
      }

      if ((v87 | v90))
      {
        v91 = v195;
        if (v89)
        {
          v92 = 0;
          v199 = (v205 + 8);
          v93 = &v208;
          if (!v203)
          {
            v93 = 0;
          }

          v191 = v93;
          v192 = a10 + 1;
          v94 = -1;
          do
          {
            if (v199 > v91 || (v95 = v91, v96 = v205 + *(a4 + 24), v97 = *(a4 + 7), v96 - v97 < v95))
            {
LABEL_278:
              if (Typed)
              {
                v129 = v190;
                while (v94 != -1)
                {
                  v130 = *&Typed[8 * v94--];
                  CFRelease(v130);
                }

                if (Typed != v129)
                {
                  goto LABEL_315;
                }
              }

              goto LABEL_316;
            }

            if (*(a4 + 7) <= 1u)
            {
              v98 = *(a4 + 7);
              if (!*(a4 + 7))
              {
                goto LABEL_233;
              }

              if (v97 == 1)
              {
                v98 = *v95;
                goto LABEL_233;
              }
            }

            else
            {
              switch(v97)
              {
                case 2:
                  v98 = __rev16(*v95);
                  goto LABEL_233;
                case 4:
                  v98 = bswap32(*v95);
                  goto LABEL_233;
                case 8:
                  v98 = bswap64(*v95);
                  goto LABEL_233;
              }
            }

            v98 = 0;
            v99 = v95;
            do
            {
              v100 = *v99;
              v99 = (v99 + 1);
              v98 = v100 | (v98 << 8);
              --v97;
            }

            while (v97);
LABEL_233:
            if (*(a4 + 8) <= v98)
            {
              goto LABEL_278;
            }

            v101 = *(a4 + 6);
            v102 = (v96 + v98 * v101);
            if (*(a4 + 6) <= 1u)
            {
              if (!*(a4 + 6))
              {
                goto LABEL_246;
              }

              if (v101 == 1)
              {
                LODWORD(v101) = *v102;
                goto LABEL_246;
              }
            }

            else
            {
              switch(v101)
              {
                case 2:
                  LODWORD(v101) = __rev16(*v102);
                  goto LABEL_246;
                case 4:
                  LODWORD(v101) = bswap32(*v102);
                  goto LABEL_246;
                case 8:
                  LODWORD(v101) = bswap64(*v102);
                  goto LABEL_246;
              }
            }

            v103 = *(a4 + 6);
            LODWORD(v101) = 0;
            do
            {
              v104 = *v102;
              v102 = (v102 + 1);
              LODWORD(v101) = v104 | (v101 << 8);
              --v103;
            }

            while (v103);
LABEL_246:
            v208 = 0;
            v105 = v212[0];
            if (v87)
            {
              v105 = 0;
            }

            if ((__CFBinaryPlistCreateObjectFiltered(v205, a2, v101, a4, v204, a6, a7, a8, v202, v192, v105, v191, 0) & 1) == 0)
            {
              v137 = Typed;
              if (Typed)
              {
                while (v94 != -1)
                {
                  v138 = *&v137[8 * v94--];
                  CFRelease(v138);
                }

                if (v137 != v190)
                {
LABEL_315:
                  CFAllocatorDeallocate(v189, Typed);
                }
              }

LABEL_316:
              LOBYTE(v20) = 0;
LABEL_336:
              if (v194)
              {
                CFRelease(v194);
              }

              goto LABEL_13;
            }

            if (Typed)
            {
              *&Typed[8 * v92] = v208;
            }

            ++v92;
            v91 = v95 + *(a4 + 7);
            ++v94;
          }

          while (v92 < v198);
        }

        if (v188 != 160)
        {
          if (!v203)
          {
            goto LABEL_301;
          }

          if (v200)
          {
            v106 = CFSetCreateMutable(v204, 0, &kCFTypeSetCallBacks);
            v107 = v198;
            *v203 = v106;
            if (v107)
            {
              v108 = Typed;
              v109 = v197;
              do
              {
                CFSetAddValue(*v203, *v108++);
                v109 = (v109 - 1);
              }

              while (v109);
              v110 = 17;
              v111 = Typed;
              do
              {
                CFRelease(*v111++);
                v197 = (v197 - 1);
              }

              while (v197);
LABEL_288:
              LOBYTE(v20) = 1;
LABEL_303:
              v113 = v201;
              goto LABEL_321;
            }

LABEL_301:
            LOBYTE(v20) = 1;
            v110 = 17;
            goto LABEL_303;
          }

          Transfer = __CFSetCreateTransfer(v204, Typed, v198);
          v110 = 17;
          goto LABEL_319;
        }

        if (v203)
        {
          if (!v200)
          {
            Transfer = __CFArrayCreateTransfer(v204, Typed, v198, v81, v82, v83, v84, v85);
            v110 = 19;
LABEL_319:
            v113 = v201;
            goto LABEL_320;
          }

          v131 = CFArrayCreateMutable(v204, 0, &kCFTypeArrayCallBacks);
          v132 = v198;
          *v203 = v131;
          v213.location = 0;
          v213.length = 0;
          CFArrayReplaceValues(v131, v213, Typed, v132);
          if (v132)
          {
            v110 = 19;
            v133 = Typed;
            do
            {
              CFRelease(*v133++);
              v197 = (v197 - 1);
            }

            while (v197);
            goto LABEL_288;
          }
        }

        LOBYTE(v20) = 1;
        v110 = 19;
        goto LABEL_303;
      }

      Count = CFSetGetCount(valuePtr[0]);
      v113 = v201;
      v192 = CFArrayCreateMutable(v204, Count, &kCFTypeArrayCallBacks);
      if (valuePtr[0])
      {
        v114 = CFSetGetCount(valuePtr[0]);
        v115 = malloc_type_malloc(8 * v114, 0xC0040B8AA526DuLL);
        CFSetGetValues(valuePtr[0], v115);
        v116 = CFSetGetCount(valuePtr[0]);
        v187 = v115;
        if (v116 >= 1)
        {
          LOBYTE(v20) = 0;
          v191 = a10 + 1;
          v117 = &v207;
          if (!v203)
          {
            v117 = 0;
          }

          v188 = v117;
          v118 = 1;
          v119 = v116;
          v195 = v116;
          while (1)
          {
            v198 = v119;
            v199 = v118;
            v197 = v115;
            v120 = *v115;
            IntValue = CFStringGetIntValue(v120);
            v123 = IntValue;
            v125 = v198;
            v124 = v199;
            if (IntValue != 0x7FFFFFFF)
            {
              if (IntValue)
              {
                v125 = v198;
                v124 = v199;
                if ((IntValue & 0x80000000) == 0)
                {
LABEL_271:
                  v208 = 0;
                  v127 = v123;
                  v128 = v205;
                  if (__CFBinaryPlistGetOffsetForValueFromArray2(v205, v122, a3, a4, v127, &v208))
                  {
                    v207 = 0;
                    if (!__CFBinaryPlistCreateObjectFiltered(v128, a2, v208, a4, v204, a6, a7, a8, v202, v191, v212[0], v188, 0))
                    {
                      goto LABEL_292;
                    }

                    if (v207)
                    {
                      CFArrayAppendValue(v192, v207);
                      CFRelease(v207);
                    }
                  }

                  v125 = v198;
                  v124 = v199;
                }
              }

              else
              {
                v126 = CFStringCompare(@"0", v120, 0);
                v125 = v198;
                v124 = v199;
                if (v126 == kCFCompareEqualTo)
                {
                  goto LABEL_271;
                }
              }
            }

            LOBYTE(v20) = v124 >= v195;
            v118 = v124 + 1;
            v115 = v197 + 1;
            v119 = v125 - 1;
            if (!v119)
            {
              goto LABEL_292;
            }
          }
        }

        LOBYTE(v20) = 1;
LABEL_292:
        free(v187);
        v113 = v201;
      }

      else
      {
        LOBYTE(v20) = 1;
      }

      if (v203 && (v20 & 1) != 0)
      {
        if ((v200 - 1) < 2)
        {
          v110 = 19;
          Transfer = v192;
LABEL_320:
          *v203 = Transfer;
          LOBYTE(v20) = 1;
          goto LABEL_321;
        }

        v135 = v192;
        Copy = CFArrayCreateCopy(v204, v192);
        *v203 = Copy;
        CFRelease(v135);
        LOBYTE(v20) = 1;
      }

      else if (v192)
      {
        CFRelease(v192);
      }

      v110 = 19;
LABEL_321:
      if (v113)
      {
        *v113 = v110;
      }

      if (v202)
      {
        CFSetRemoveValue(v202, v206);
      }

      if (v203 && a8 && ((v200 == 0) & v20) != 0)
      {
        CFDictionarySetValue(a8, v206, *v203);
      }

      if (Typed && Typed != v190)
      {
        CFAllocatorDeallocate(v189, Typed);
      }

      if (valuePtr[0])
      {
        CFRelease(valuePtr[0]);
      }

      if (v212[0])
      {
        CFRelease(v212[0]);
      }

      goto LABEL_336;
    }

    if (v205 + v23 < v51)
    {
      goto LABEL_12;
    }

    v53 = (v24 + 2);
    v54 = *v51;
    if ((*v51 & 0xF0) != 0x10)
    {
      goto LABEL_12;
    }

    LOBYTE(v20) = 0;
    v55 = v54 & 0xF;
    v56 = 1 << (v54 & 0xF);
    if (__CFADD__(v56, v53) || &v51[v56] > v205 + v23)
    {
      goto LABEL_13;
    }

    if (v56 > 3u)
    {
      if (v56 == 4)
      {
        v52 = bswap32(*(v24 + 2));
        goto LABEL_180;
      }

      if (v56 == 8)
      {
        v52 = bswap64(*(v24 + 2));
        goto LABEL_179;
      }
    }

    else
    {
      if (v56 == 1)
      {
        v52 = *v53;
        goto LABEL_180;
      }

      if (v56 == 2)
      {
        v52 = __rev16(*(v24 + 2));
LABEL_180:
        v51 = &v53[v56];
        goto LABEL_181;
      }
    }

    if (v55 > 7)
    {
      v52 = 0;
      goto LABEL_180;
    }

    v52 = 0;
    v71 = v56;
    v72 = (v24 + 2);
    do
    {
      v73 = *v72++;
      v52 = v73 | (v52 << 8);
      --v71;
    }

    while (v71);
LABEL_179:
    if ((v52 & 0x8000000000000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_180;
  }

  if (v26 != 13)
  {
    goto LABEL_13;
  }

  if (v24 == -1)
  {
    goto LABEL_12;
  }

  v38 = (v24 + 1);
  v39 = v25 & 0xF;
  if ((v25 & 0xF) != 0xF)
  {
    goto LABEL_361;
  }

  if (v205 + v23 < v38)
  {
    goto LABEL_12;
  }

  v40 = (v24 + 2);
  if ((*v38 & 0xF0) != 0x10)
  {
    goto LABEL_12;
  }

  LOBYTE(v20) = 0;
  v41 = *v38 & 0xF;
  v42 = 1 << v41;
  if (__CFADD__(1 << v41, v40) || &v38[v42] > v205 + v23)
  {
    goto LABEL_13;
  }

  v43 = (1 << v41);
  if (v43 > 3)
  {
    if (v43 == 4)
    {
      v39 = bswap32(*(v24 + 2));
      goto LABEL_360;
    }

    if (v43 == 8)
    {
      v39 = bswap64(*(v24 + 2));
      goto LABEL_359;
    }

LABEL_307:
    if (v41 > 7)
    {
      v39 = 0;
      goto LABEL_360;
    }

    v39 = 0;
    v146 = v42;
    v147 = (v24 + 2);
    do
    {
      v148 = *v147++;
      v39 = v148 | (v39 << 8);
      --v146;
    }

    while (v146);
LABEL_359:
    if ((v39 & 0x8000000000000000) != 0)
    {
      goto LABEL_12;
    }

    goto LABEL_360;
  }

  if (v43 == 1)
  {
    v39 = *v40;
    goto LABEL_360;
  }

  if (v43 != 2)
  {
    goto LABEL_307;
  }

  v39 = __rev16(*(v24 + 2));
LABEL_360:
  v38 = &v40[v42];
LABEL_361:
  if (v39)
  {
    v150 = (a4 + 7);
    v149 = *(a4 + 7);
    if (!is_mul_ok(2 * v39, v149))
    {
      goto LABEL_12;
    }

    v198 = 2 * v39;
    v151 = 2 * v39 * v149;
  }

  else
  {
    v151 = 0;
    v198 = 0;
    v150 = (a4 + 7);
  }

  LOBYTE(v20) = 0;
  if (__CFADD__(v151, v38))
  {
    goto LABEL_13;
  }

  Typed = v38;
  if (v205 + v23 < &v38[v151 - 1])
  {
    goto LABEL_13;
  }

  if (v39)
  {
    v152 = v198;
    if (v198 >> 61)
    {
      goto LABEL_12;
    }

    v194 = v150;
    v197 = (8 * v198);
  }

  else
  {
    v194 = v150;
    v197 = 0;
    v152 = v198;
  }

  v195 = &v186;
  MEMORY[0x1EEE9AC00](Value, v23);
  v20 = &v186 - v154;
  if (v153 >= 0x200)
  {
    v155 = 512;
  }

  else
  {
    v155 = v153;
  }

  bzero(&v186 - v154, v155);
  v193 = v20;
  if (v203)
  {
    if (v152 >= 257)
    {
      v20 = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, v197, 0xC0040B8AA526DLL, 0);
      if (!v20)
      {
        goto LABEL_13;
      }
    }
  }

  else
  {
    v20 = 0;
  }

  v197 = v20;
  v156 = 0;
  v157 = v194;
  if (v202)
  {
    v158 = v199;
  }

  else
  {
    v158 = v199;
    if (a10 >= 16)
    {
      v156 = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, 0);
      v202 = v156;
    }
  }

  v199 = v156;
  if (v202)
  {
    CFSetAddValue(v202, v206);
  }

  if (v158)
  {
    v159 = v158;
    v160 = v204;
    FilteredDictionary = __CFPropertyListCreateFilteredDictionary(v204, v159, v205, a2, a3, a4, v203 == 0, v200, a7, SHIDWORD(a7), a8, v202, a10);
    v162 = FilteredDictionary;
    if (v203 && FilteredDictionary)
    {
      if ((v200 - 1) < 2)
      {
        *v203 = FilteredDictionary;
LABEL_457:
        LODWORD(v20) = 1;
        goto LABEL_458;
      }

      v182 = CFDictionaryCreateCopy(v160, FilteredDictionary);
      *v203 = v182;
    }

    else if (!FilteredDictionary)
    {
      LODWORD(v20) = 0;
LABEL_458:
      if (v202)
      {
        CFSetRemoveValue(v202, v206);
      }

      if (v200)
      {
        v185 = 0;
      }

      else
      {
        v185 = v20;
      }

      if (v203 && a8 && v185)
      {
        CFDictionarySetValue(a8, v206, *v203);
      }

      if (v197 && v197 != v193)
      {
        CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v197);
      }

      goto LABEL_470;
    }

    CFRelease(v162);
    goto LABEL_457;
  }

  v192 = v198 >> 1;
  v163 = Typed;
  if (v198 < 1)
  {
LABEL_427:
    if (v203)
    {
      if (v200)
      {
        v177 = CFDictionaryCreateMutable(v204, v192, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v178 = v192;
        if (v192 >= 1)
        {
          v179 = v197;
          v180 = v192;
          do
          {
            CFDictionaryAddValue(v177, *v179, v179[v178]);
            ++v179;
            --v180;
          }

          while (v180);
        }

        if (v198 >= 1)
        {
          v181 = v197;
          do
          {
            CFRelease(*v181++);
            --v198;
          }

          while (v198);
        }
      }

      else
      {
        v177 = __CFDictionaryCreateTransfer(v204, v197, &v197[v192], v192);
      }

      *v203 = v177;
    }

    if (v201)
    {
      *v201 = 18;
    }

    goto LABEL_457;
  }

  v164 = 0;
  v190 = (a10 + 1);
  v191 = v205 + 8;
  v165 = valuePtr;
  if (!v203)
  {
    v165 = 0;
  }

  v189 = v165;
  v166 = -1;
  while (v191 <= v163)
  {
    v167 = v163;
    v168 = v205 + *(a4 + 24);
    v169 = *(a4 + 7);
    if (v168 - v169 < v167)
    {
      break;
    }

    if (*(a4 + 7) <= 1u)
    {
      v170 = *(a4 + 7);
      if (!*(a4 + 7))
      {
        goto LABEL_408;
      }

      if (v169 == 1)
      {
        v170 = *v167;
        goto LABEL_408;
      }
    }

    else
    {
      switch(v169)
      {
        case 2:
          v170 = __rev16(*v167);
          goto LABEL_408;
        case 4:
          v170 = bswap32(*v167);
          goto LABEL_408;
        case 8:
          v170 = bswap64(*v167);
          goto LABEL_408;
      }
    }

    v170 = 0;
    v171 = v167;
    do
    {
      v172 = *v171;
      v171 = (v171 + 1);
      v170 = v172 | (v170 << 8);
      --v169;
    }

    while (v169);
LABEL_408:
    if (*(a4 + 8) <= v170)
    {
      break;
    }

    v173 = *(a4 + 6);
    v174 = (v168 + v170 * v173);
    if (*(a4 + 6) <= 1u)
    {
      if (!*(a4 + 6))
      {
        goto LABEL_421;
      }

      if (v173 == 1)
      {
        LODWORD(v173) = *v174;
        goto LABEL_421;
      }
    }

    else
    {
      switch(v173)
      {
        case 2:
          LODWORD(v173) = __rev16(*v174);
          goto LABEL_421;
        case 4:
          LODWORD(v173) = bswap32(*v174);
          goto LABEL_421;
        case 8:
          LODWORD(v173) = bswap64(*v174);
          goto LABEL_421;
      }
    }

    v175 = *(a4 + 6);
    LODWORD(v173) = 0;
    do
    {
      v176 = *v174;
      v174 = (v174 + 1);
      LODWORD(v173) = v176 | (v173 << 8);
      --v175;
    }

    while (v175);
LABEL_421:
    valuePtr[0] = 0;
    v212[0] = 0;
    if (!__CFBinaryPlistCreateObjectFiltered(v205, a2, v173, a4, v204, a6, a7, a8, v202, v190, 0, v189, v212) || v164 < v192 && v212[0] != 7)
    {
      if (valuePtr[0])
      {
        CFRelease(valuePtr[0]);
      }

      if (v197)
      {
        while (v166 != -1)
        {
          v184 = v197[v166--];
          CFRelease(v184);
        }

        if (v197 != v193)
        {
          goto LABEL_451;
        }
      }

      goto LABEL_452;
    }

    if (v197)
    {
      v197[v164] = valuePtr[0];
    }

    v163 = (v167 + *v157);
    ++v164;
    ++v166;
    if (v164 == v198)
    {
      goto LABEL_427;
    }
  }

  if (v197)
  {
    while (v166 != -1)
    {
      v183 = v197[v166--];
      CFRelease(v183);
    }

    if (v197 != v193)
    {
LABEL_451:
      CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v197);
    }
  }

LABEL_452:
  LOBYTE(v20) = 0;
LABEL_470:
  if (v199)
  {
    CFRelease(v199);
  }

LABEL_13:
  v21 = *MEMORY[0x1E69E9840];
  return v20 & 1;
}

void sub_183118D64(_Unwind_Exception *exception_object)
{
  if (*(v1 + 104))
  {
    CFRelease(*(v1 + 104));
  }

  _Unwind_Resume(exception_object);
}

void __CFPropertyListCreateSplitKeypaths(const __CFAllocator *a1, CFSetRef theSet, __CFSet **a3, __CFSet **a4)
{
  v4 = a4;
  v5 = a3;
  v38 = a1;
  v39 = *MEMORY[0x1E69E9840];
  if (theSet)
  {
    Count = CFSetGetCount(theSet);
    if (Count >> 60)
    {
      __CFPropertyListCreateSplitKeypaths_cold_4();
    }

    v9 = Count;
    if (Count <= 1)
    {
      v10 = 1;
    }

    else
    {
      v10 = Count;
    }

    MEMORY[0x1EEE9AC00](Count, v8);
    v13 = (&v34 - v12);
    if (v11 >= 0x200)
    {
      v14 = 512;
    }

    else
    {
      v14 = v11;
    }

    bzero(&v34 - v12, v14);
    if (v9 >= 0x101)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * v10, 0xC0040B8AA526DLL, 0);
      if (!Typed)
      {
        __CFPropertyListCreateSplitKeypaths_cold_1();
      }

      v13 = Typed;
      CFSetGetValues(theSet, Typed);
    }

    else
    {
      bzero(v13, 8 * v10);
      CFSetGetValues(theSet, v13);
      if (!v9)
      {
        Mutable = 0;
        v16 = 0;
LABEL_36:
        *v5 = Mutable;
        *v4 = v16;
        goto LABEL_37;
      }
    }

    v34 = &v34;
    v35 = v5;
    Mutable = 0;
    v16 = 0;
    v18 = 0;
    v36 = v4;
    v37 = &__kCFAllocatorSystemDefault;
    do
    {
      v19 = v13[v18];
      v20 = CFArrayGetCount(v19);
      if (v20 >= 1)
      {
        v21 = v20;
        if (!Mutable)
        {
          Mutable = CFSetCreateMutable(v38, 0, &kCFTypeSetCallBacks);
        }

        ValueAtIndex = CFArrayGetValueAtIndex(v19, 0);
        CFSetAddValue(Mutable, ValueAtIndex);
        v25 = v21 - 1;
        if (v21 != 1)
        {
          if (!v16)
          {
            v23 = CFSetCreateMutable(v38, 0, &kCFTypeSetCallBacks);
            v16 = v23;
          }

          if (v25 >> 60)
          {
            __CFPropertyListCreateSplitKeypaths_cold_3();
          }

          MEMORY[0x1EEE9AC00](v23, v24);
          v28 = &v34 - v27;
          if (v26 >= 0x200)
          {
            v29 = 512;
          }

          else
          {
            v29 = v26;
          }

          bzero(&v34 - v27, v29);
          v30 = 8 * v25;
          if (v21 > 0x101)
          {
            v28 = CFAllocatorAllocateTyped(v37, v30, 0xC0040B8AA526DLL, 0);
            if (!v28)
            {
              __CFPropertyListCreateSplitKeypaths_cold_2();
            }
          }

          else
          {
            bzero(v28, v30);
          }

          v40.length = CFArrayGetCount(v19) - 1;
          v40.location = 1;
          CFArrayGetValues(v19, v40, v28);
          v31 = CFArrayGetCount(v19);
          v32 = CFArrayCreate(v38, v28, v31 - 1, &kCFTypeArrayCallBacks);
          CFSetAddValue(v16, v32);
          if (v32)
          {
            CFRelease(v32);
          }

          if (v21 >= 0x102)
          {
            CFAllocatorDeallocate(v37, v28);
          }
        }
      }

      ++v18;
    }

    while (v9 != v18);
    v5 = v35;
    v4 = v36;
    if (v9 >= 0x101)
    {
      CFAllocatorDeallocate(v37, v13);
    }

    goto LABEL_36;
  }

  *a3 = 0;
  *a4 = 0;
LABEL_37:
  v33 = *MEMORY[0x1E69E9840];
}

CFURLRef CFURLCopyAbsoluteURL(CFURLRef relativeURL)
{
  v20[18] = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCopyAbsoluteURL_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    v2 = [(__CFURL *)relativeURL absoluteURL];
    v3 = *MEMORY[0x1E69E9840];

    return v2;
  }

  v5 = CFGetAllocator(relativeURL);
  v19 = 0;
  v18 = 0;
  if (CF_IS_OBJC(0x1DuLL, relativeURL))
  {
    v6 = [(__CFURL *)relativeURL absoluteURL];
    v7 = v6;
    if (v6)
    {
      CFRetain(v6);
    }

    goto LABEL_25;
  }

  v8 = *(relativeURL + 4);
  if (v8)
  {
    if (CFURLIsFileReferenceURL(*(relativeURL + 4)) && !CFURLHasDirectoryPath(v8))
    {
      v17 = CFURLCreateFilePathURL(v5, v8, 0);
      if (!v17)
      {
        v7 = 0;
        goto LABEL_25;
      }

      v8 = v17;
      v9 = 0;
    }

    else
    {
      v9 = 1;
    }

    if (CF_IS_OBJC(0x1DuLL, v8))
    {
      v10 = CFURLGetString(v8);
      v19 = 0;
      v11 = v20;
      _parseComponents(v10, 0, &v19, v20, &v18);
    }

    else
    {
      v10 = atomic_load((v8 + 24));
      v19 = *(v8 + 16);
      v11 = (v8 + 56);
    }

    v13 = atomic_load(relativeURL + 3);
    v14 = resolveAbsoluteURLString(v5, v13, *(relativeURL + 4), relativeURL + 56, v10, v19, v11);
    if (v14)
    {
      v15 = v14;
      v7 = _CFURLCreateWithArbitraryString(v5, v14, 0);
      CFRelease(v15);
      *(v7 + 5) = *(relativeURL + 5);
      if (v9)
      {
        goto LABEL_25;
      }
    }

    else
    {
      v7 = 0;
      if (v9)
      {
LABEL_25:
        v16 = *MEMORY[0x1E69E9840];
        return v7;
      }
    }

    CFRelease(v8);
    goto LABEL_25;
  }

  v12 = *MEMORY[0x1E69E9840];

  return CFRetain(relativeURL);
}

Boolean CFStringGetFileSystemRepresentation(CFStringRef string, char *buffer, CFIndex maxBufLen)
{
  if (CFStringGetLength(string))
  {
    return [(__CFString *)string getFileSystemRepresentation:buffer maxLength:maxBufLen];
  }

  if (!maxBufLen)
  {
    return 0;
  }

  *buffer = 0;
  return 1;
}

uint64_t CanonicalFileURLStringToFileSystemRepresentation(const __CFString *a1, _BYTE *a2, uint64_t a3)
{
  v3 = 0;
  v26 = *MEMORY[0x1E69E9840];
  if (a2 && a3)
  {
    v5 = a2;
    Length = CFStringGetLength(a1);
    v8 = Length - 7;
    if (Length == 7)
    {
      *v5 = 0;
      v3 = 1;
    }

    else
    {
      usedBufLen = 0;
      if (v8 >= 1025)
      {
        v9 = malloc_type_malloc(3 * v8, 0x100004077774924uLL);
        if (!v9)
        {
          v3 = 0;
          goto LABEL_34;
        }
      }

      else
      {
        v9 = buffer;
      }

      v27.location = 7;
      v27.length = v8;
      if (CFStringGetBytes(a1, v27, 0x8000100u, 0, 0, v9, 3 * v8, &usedBufLen))
      {
        v10 = usedBufLen;
        if (usedBufLen >= 1)
        {
          v11 = 0;
          v12 = 0;
          v13 = 0;
          v14 = v9;
          while (1)
          {
            if (a3 == v13)
            {
              v3 = 0;
              goto LABEL_31;
            }

            LODWORD(v15) = *v14;
            if (v15 != 37)
            {
              break;
            }

            v12 += 2;
            if (v12 < v10)
            {
              v16 = CanonicalFileURLStringToFileSystemRepresentation_hexvalues[v14[1]];
              v5[v13] = 16 * v16;
              v15 = v14[2];
              v14 += 3;
              LOBYTE(v15) = CanonicalFileURLStringToFileSystemRepresentation_hexvalues[v15] + 16 * v16;
LABEL_16:
              v5[v13] = v15;
              v11 = v15 == 47;
            }

            ++v13;
            if (++v12 >= v10)
            {
              v17 = &v5[v13];
              v19 = v11 && v13 != 1;
              v20 = v19 << 63 >> 63;
              goto LABEL_27;
            }
          }

          ++v14;
          goto LABEL_16;
        }

        v20 = 0;
        v17 = v5;
LABEL_27:
        v21 = &v5[a3];
        v5 = &v17[v20];
        v3 = 1;
        if (&v17[v20] < v21)
        {
LABEL_31:
          *v5 = 0;
        }
      }

      else
      {
        v3 = 0;
      }

      if (v9 != buffer)
      {
        free(v9);
      }
    }
  }

LABEL_34:
  v22 = *MEMORY[0x1E69E9840];
  return v3;
}

void CFStringAppendCharacters(CFMutableStringRef theString, const UniChar *chars, CFIndex numChars)
{
  v46 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(7uLL, theString))
  {
    v6 = *MEMORY[0x1E69E9840];

    [(__CFString *)theString appendCharacters:chars length:numChars];
    return;
  }

  p_info = &theString->info;
  v8 = atomic_load(&theString->info);
  if ((v8 & 1) == 0)
  {
    v9 = _CFOSLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_FAULT))
    {
      CFStringAppendCharacters_cold_1(v9, v10, v11, v12, v13, v14, v15, v16);
    }

LABEL_8:
    v17 = *MEMORY[0x1E69E9840];
    return;
  }

  v18 = atomic_load(p_info);
  v19 = v18 & 5;
  v20 = atomic_load(p_info);
  v21 = v20 & 0x60;
  if (v19 == 4)
  {
    p_data = &theString->data;
    if (v21)
    {
      v23 = *p_data;
    }

    else
    {
      v25 = atomic_load(&theString->info);
      v23 = &p_data[(v25 & 5) != 4];
    }

    length = *v23;
  }

  else if ((v20 & 0x60) != 0)
  {
    length = theString->length;
  }

  else
  {
    length = theString->data;
  }

  v26 = atomic_load(&theString->info);
  if ((v26 & 0x10) == 0)
  {
    if (numChars < 1)
    {
      v44 = length;
      v45 = 0;
      __CFStringChangeSizeMultiple(theString, &v44, 1, numChars, 0);
    }

    else
    {
      v27 = 0;
      do
      {
        v28 = chars[v27++];
      }

      while (v28 <= 0x7F && v27 < numChars);
      v44 = length;
      v45 = 0;
      __CFStringChangeSizeMultiple(theString, &v44, 1, numChars, v28 > 0x7F);
      if (v28 >= 0x80)
      {
        v30 = &theString->info;
        v31 = atomic_load(&theString->info);
        v32 = &theString->data;
        if ((v31 & 0x60) == 0)
        {
          goto LABEL_33;
        }

        goto LABEL_28;
      }
    }

    v35 = atomic_load(&theString->info);
    v36 = &theString->data;
    if ((v35 & 0x60) != 0)
    {
      v37 = *v36;
    }

    else
    {
      v40 = atomic_load(&theString->info);
      v37 = &v36[(v40 & 5) != 4];
    }

    v41 = atomic_load(&theString->info);
    if (numChars >= 1)
    {
      v42 = &v37[length + ((v41 >> 2) & 1)];
      do
      {
        v43 = *chars++;
        *v42++ = v43;
        --numChars;
      }

      while (numChars);
    }

    goto LABEL_8;
  }

  v44 = length;
  v45 = 0;
  __CFStringChangeSizeMultiple(theString, &v44, 1, numChars, 1);
  v33 = atomic_load(&theString->info);
  v32 = &theString->data;
  if ((v33 & 0x60) == 0)
  {
    v30 = &theString->info;
LABEL_33:
    v38 = atomic_load(v30);
    v34 = &v32[(v38 & 5) != 4];
    goto LABEL_34;
  }

LABEL_28:
  v34 = *v32;
LABEL_34:
  v39 = *MEMORY[0x1E69E9840];

  memmove(&v34[2 * length], chars, 2 * numChars);
}

uint64_t _CFXNotificationRegistrarFindObject(uint64_t a1, uint64_t a2, CFTypeRef cf1, unint64_t a4, int a5, _DWORD *a6)
{
  v6 = *(a2 + 8);
  if (!v6)
  {
    return 0;
  }

  v7 = *(*a2 + 4 * (a4 % v6));
  if (v7 == -1)
  {
    return 0;
  }

  while (1)
  {
    v12 = *(a1 + 120) + 32 * v7;
    v13 = *(v12 + 8);
    if (v13 == cf1 || a5 && CFEqual(cf1, v13))
    {
      break;
    }

    v7 = *(v12 + 4);
    if (v7 == -1)
    {
      return 0;
    }
  }

  if (a6)
  {
    *a6 = v7;
  }

  return v12;
}

uint64_t CFStringFileSystemEncoding()
{
  if ((__CFDefaultFileSystemEncoding & 1) == 0)
  {
    __CFDefaultFileSystemEncoding = 1;
  }

  return 134217984;
}

void *__CFDictionaryCreateTransfer(__objc2_class **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v17[10] = *MEMORY[0x1E69E9840];
  Transfer = __NSCFDictionaryCreateTransfer(a1, a2, a3, a4);
  if (!Transfer)
  {
    v17[0] = __CFTypeCollectionRetain;
    v17[1] = __CFTypeCollectionRetain;
    v17[2] = __CFTypeCollectionRelease;
    v17[3] = __CFTypeCollectionRelease;
    v17[4] = CFEqual;
    v17[5] = CFEqual;
    v17[6] = CFHash;
    v17[7] = 0;
    v17[8] = CFCopyDescription;
    v17[9] = CFCopyDescription;
    Transfer = CFBasicHashCreate(a1, 0x2001u, v17);
    CFBasicHashSuppressRC(Transfer);
    if (v4 >= 1)
    {
      CFBasicHashSetCapacity(Transfer, v4);
      do
      {
        v10 = *v6++;
        v9 = v10;
        v11 = *v5++;
        CFBasicHashAddValue(Transfer, v9, v11);
        --v4;
      }

      while (v4);
    }

    CFBasicHashUnsuppressRC(Transfer);
    v12 = atomic_load(Transfer + 1);
    v13 = v12;
    do
    {
      atomic_compare_exchange_strong(Transfer + 1, &v13, v12 | 0x40);
      v14 = v13 == v12;
      v12 = v13;
    }

    while (!v14);
    _CFRuntimeSetInstanceTypeIDAndIsa(Transfer, 0x12uLL);
    if (__CFOASafe)
    {
      __CFSetLastAllocationEventName();
    }
  }

  v15 = *MEMORY[0x1E69E9840];
  return Transfer;
}

CFSetRef CFSetCreate(CFAllocatorRef allocator, const void **values, CFIndex numValues, const CFSetCallBacks *callBacks)
{
  Generic = __CFSetCreateGeneric(allocator, callBacks);
  v7 = Generic;
  if (Generic)
  {
    if (numValues >= 1)
    {
      CFBasicHashSetCapacity(Generic, numValues);
      do
      {
        v8 = *values++;
        CFBasicHashAddValue(v7, v8, v8);
        --numValues;
      }

      while (numValues);
    }

    v9 = atomic_load(v7 + 1);
    v10 = v9;
    do
    {
      atomic_compare_exchange_strong(v7 + 1, &v10, v9 | 0x40);
      v11 = v10 == v9;
      v9 = v10;
    }

    while (!v11);
    _CFRuntimeSetInstanceTypeIDAndIsa(v7, 0x11uLL);
    if (__CFOASafe)
    {
      __CFSetLastAllocationEventName();
    }
  }

  return v7;
}

Boolean CFSetGetValueIfPresent(CFSetRef theSet, const void *candidate, const void **value)
{
  v10 = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x11uLL, theSet))
  {
    result = [(__CFSet *)theSet __getValue:value forObj:candidate];
  }

  else
  {
    v8 = 0u;
    v9 = 0u;
    CFBasicHashFindBucket(theSet, candidate, &v8);
    if (*(&v9 + 1))
    {
      if (value)
      {
        *value = v9;
      }

      result = 1;
    }

    else
    {
      result = 0;
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return result;
}

CFArrayRef CFStringCreateArrayWithFindResults(CFAllocatorRef alloc, CFStringRef theString, CFStringRef stringToFind, CFRange rangeToSearch, CFStringCompareFlags compareOptions)
{
  length = rangeToSearch.length;
  location = rangeToSearch.location;
  v25 = *MEMORY[0x1E69E9840];
  allocator = alloc;
  if (!alloc)
  {
    v9 = _CFGetTSD(1u);
    v10 = &__kCFAllocatorSystemDefault;
    if (v9)
    {
      v10 = v9;
    }

    allocator = v10;
  }

  if (length < 1)
  {
LABEL_21:
    v18 = 0;
  }

  else
  {
    v11 = 0;
    Mutable = 0;
    v13 = 0;
    v14 = 0;
    v15 = 0;
    result.location = 0;
    result.length = 0;
    v16 = (location + length);
    while (1)
    {
      v26.location = location;
      v26.length = length;
      if (!CFStringFindWithOptionsAndLocale(theString, stringToFind, v26, compareOptions, 0, &result))
      {
        break;
      }

      if ((compareOptions & 4) != 0)
      {
        length = result.location - location;
      }

      else
      {
        location = result.length + result.location;
        length = v16 - (result.length + result.location);
      }

      if (v14 >= v13)
      {
        if (!Mutable)
        {
          Mutable = CFDataCreateMutable(allocator, 0);
        }

        v13 = 2 * v13 + 8;
        CFDataSetLength(Mutable, 24 * v13);
        v15 = &CFDataGetMutableBytePtr(Mutable)[v11];
      }

      *v15 = result;
      v15[1].location = Mutable;
      v15 = (v15 + 24);
      ++v14;
      v11 += 24;
      if (length <= 0)
      {
        goto LABEL_18;
      }
    }

    if (!v14)
    {
      goto LABEL_21;
    }

LABEL_18:
    callBacks = *byte_1EF066788;
    CFDataSetLength(Mutable, 24 * v14);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    v18 = CFArrayCreateMutable(allocator, 8 * v14, &callBacks);
    do
    {
      CFArrayAppendValue(v18, MutableBytePtr);
      MutableBytePtr += 24;
      --v14;
    }

    while (v14);
    CFRelease(Mutable);
  }

  v19 = *MEMORY[0x1E69E9840];
  return v18;
}

uint64_t _NSIsNSOrderedSet(uint64_t a1)
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

  return MethodImplementation(v1, sel_isNSOrderedSet__);
}

BOOL _hasDrive(const __CFString *a1)
{
  result = 0;
  if (CFStringGetLength(a1) >= 2)
  {
    CharacterAtIndex = CFStringGetCharacterAtIndex(a1, 0);
    if (CFStringGetCharacterAtIndex(a1, 1) == 58 && (CharacterAtIndex & 0xFFFFFFDF) - 65 < 0x1A)
    {
      return 1;
    }
  }

  return result;
}

unint64_t CFXNotificationRegistrarAdd(uint64_t a1, __CFString *cf, CFTypeRef cf1, __CFString *a4, int a5, void *a6, const void *a7)
{
  v38 = *MEMORY[0x1E69E9840];
  v10 = *(a1 + 24);
  if (cf)
  {
    v11 = cf;
    if (@"kCFNotificationAnyName" != cf && CFEqual(cf, @"kCFNotificationAnyName"))
    {
      v11 = @"kCFNotificationAnyName";
    }
  }

  else
  {
    v11 = @"kCFNotificationAnyName";
  }

  v12 = (v10 >> 1) & 1;
  if (cf1)
  {
    if (v12 && @"kCFNotificationAnyObject" != cf1 && CFEqual(cf1, @"kCFNotificationAnyObject"))
    {
      cf1 = @"kCFNotificationAnyObject";
    }
  }

  else
  {
    cf1 = @"kCFNotificationAnyObject";
  }

  if (!a4)
  {
    a4 = @"kCFNotificationAnyObserver";
  }

  v13 = CFHash(v11);
  if (v12)
  {
    v14 = CFHash(cf1);
  }

  else
  {
    v14 = (cf1 >> 5) & 0x7F;
  }

  v15 = atomic_fetch_add((a1 + 168), 1u) << 32;
  v35 = -1;
  v36 = -1;
  v34 = -1;
  memset(v37, 0, sizeof(v37));
  os_unfair_lock_lock((a1 + 16));
  if (v11 == @"kCFNotificationAnyName")
  {
    if (cf1 == @"kCFNotificationAnyObject")
    {
      v29 = v15;
      v30 = -1;
      v19 = (a1 + 80);
      v20 = a1;
      v21 = a6;
      v22 = a7;
      v18 = -1;
      goto LABEL_25;
    }

    v17 = _CFXNotificationRegistrarAddObject(a1, a1 + 48, cf1, v14, &v35, -1, v12);
    v18 = v35;
    LODWORD(v30) = -1;
    HIDWORD(v30) = v35;
  }

  else
  {
    if (cf1 == @"kCFNotificationAnyObject")
    {
      v25 = _CFXNotificationRegistrarAddName(a1, a1 + 64, v11, v13, &v36, 1);
      v18 = v36;
      v30 = __PAIR64__(v35, v36);
      v29 = v15;
      v19 = (v25 + 24);
      v22 = a7;
      v24 = a5 | 0x800;
      v20 = a1;
      v21 = a6;
      v23 = a4;
      goto LABEL_27;
    }

    v16 = _CFXNotificationRegistrarAddName(a1, a1 + 32, v11, v13, &v36, 0);
    v17 = _CFXNotificationRegistrarAddObject(a1, v16 + 24, cf1, v14, &v35, v36, v12);
    v18 = v35;
    v30 = __PAIR64__(v35, v36);
  }

  v29 = v15;
  v19 = (v17 + 16);
  v20 = a1;
  v21 = a6;
  v22 = a7;
LABEL_25:
  v23 = a4;
  v24 = a5;
LABEL_27:
  _CFXNotificationRegistrarAddObserver(v20, v19, v21, v22, v18, v23, &v34, v24, v29, v30, SHIDWORD(v30), v37);
  v26 = v34;
  os_unfair_lock_unlock((a1 + 16));
  _CFXNotificationDisposalListRelease(v37);
  v27 = *MEMORY[0x1E69E9840];
  return v15 | v26;
}

uint64_t _CFXNotificationRegistrarAddName(uint64_t a1, uint64_t a2, const void *a3, unint64_t a4, unsigned int *a5, int a6)
{
  Name = _CFXNotificationRegistrarFindName(a1, a2, a3, a4, a5);
  if (Name)
  {
    return Name;
  }

  v13 = *(a1 + 112);
  if (v13 == -1)
  {
    v15 = malloc_good_size(40 * (*(a1 + 108) + 1)) / 0x28;
    v16 = *(a1 + 108);
    v17 = *(a1 + 96);
    if (v17)
    {
      v14 = malloc_type_realloc(v17, 40 * v15, 0xCD87958FuLL);
    }

    else
    {
      v14 = malloc_type_malloc(40 * v15, 0x82DB78C4uLL);
    }

    *(a1 + 108) = v15;
    *(a1 + 96) = v14;
    if (v16 < v15)
    {
      v18 = 40 * v16 + 36;
      do
      {
        v19 = *(a1 + 96);
        v20 = *(a1 + 112);
        if (v20 != -1)
        {
          *(v19 + 40 * v20) = v16;
        }

        v21 = v19 + v18;
        *(v21 - 36) = -1;
        *(v21 - 32) = v20;
        *(a1 + 112) = v16;
        *(v21 - 28) = 0;
        *(v21 - 4) = 0;
        *(*(a1 + 96) + v18 - 12) = 0;
        *(*(a1 + 96) + v18) = 0;
        ++v16;
        v18 += 40;
      }

      while (v15 != v16);
      v14 = *(a1 + 96);
    }

    v13 = *(a1 + 112);
    if (v13 == -1)
    {
      goto LABEL_18;
    }
  }

  else
  {
    v14 = *(a1 + 96);
  }

  v22 = &v14[10 * v13];
  v23 = *v22;
  v24 = v22[1];
  *(a1 + 112) = v24;
  if (v23 != -1)
  {
    v14[10 * v23 + 1] = v24;
  }

  if (v24 != -1)
  {
    v14[10 * v24] = v23;
  }

LABEL_18:
  ++*(a1 + 104);
  *a5 = v13;
  Name = &v14[10 * v13];
  _CFXNotificationRegistrarAddCachedName(a3, (Name + 8));
  if (a6 == 1)
  {
    *(Name + 24) = 0xFFFFFFFFLL;
  }

  else
  {
    *(Name + 24) = 0;
    *(Name + 32) = 0;
  }

  v25 = *a5;
  v26 = 31 - __clz(*(a2 + 12) + 1);
  if (v26 <= 1)
  {
    v26 = 1;
  }

  v27 = malloc_good_size(4 * v26);
  v28 = v27 >> 2;
  if (!(v27 >> 2))
  {
    _CFXNotificationRegistrarAddName_cold_1();
  }

  v29 = *a2;
  if (*(a2 + 8) >= v28)
  {
    v32 = *a2;
  }

  else
  {
    v30 = v27;
    v31 = malloc_type_malloc(v27 & 0x3FFFFFFFCLL, 0x82DB78C4uLL);
    v32 = v31;
    if (v29)
    {
      memset(v31, 255, v30 & 0x3FFFFFFFCLL);
      v33 = *a2;
      v34 = *(a2 + 8);
      if (v34)
      {
        v35 = 0;
        v36 = *(a2 + 8);
        do
        {
          v37 = v33[v35];
          if (v37 != -1)
          {
            v38 = *(a1 + 96);
            do
            {
              v39 = (v38 + 40 * v37);
              v40 = *(v39 + 2);
              v41 = v39[1];
              if (v33)
              {
                v42 = *v39;
                if (v33[v40 % v34] == v37)
                {
                  v33[v40 % v34] = v41;
                }

                if (v42 != -1)
                {
                  *(v38 + 40 * v42 + 4) = v41;
                }

                if (v41 != 0xFFFFFFFFLL)
                {
                  *(v38 + 40 * v41) = v42;
                }
              }

              if (v32)
              {
                v43 = v40 % (v30 >> 2);
                v44 = v32[v43];
                if (v44 != -1)
                {
                  *(v38 + 40 * v44) = v37;
                }

                *v39 = -1;
                v39[1] = v44;
                v32[v43] = v37;
              }

              v37 = v41;
            }

            while (v41 != 0xFFFFFFFFLL);
            v36 = *(a2 + 8);
          }

          ++v35;
        }

        while (v35 < v36);
      }

      *a2 = v32;
      *(a2 + 8) = v28;
      free(v33);
      v32 = *a2;
    }

    else
    {
      *a2 = v31;
      *(a2 + 8) = v28;
      memset(v31, 255, v30 & 0x3FFFFFFFCLL);
    }
  }

  v45 = *(a2 + 8);
  *(Name + 16) = a4;
  if (v25 != -1 && v32)
  {
    v46 = a4 % v45;
    v47 = *(a1 + 96);
    v48 = v32[v46];
    if (v48 != -1)
    {
      *(v47 + 40 * v48) = v25;
    }

    v49 = (v47 + 40 * v25);
    *v49 = -1;
    v49[1] = v48;
    v32[v46] = v25;
  }

  ++*(a2 + 12);
  return Name;
}

__CFArray *_copyResourceURLsFromBundle(uint64_t a1, const __CFURL *a2, const __CFArray *a3, const __CFString *a4, const __CFString *a5, const __CFString *a6, const __CFString *a7, int a8, char a9, char a10, uint64_t a11)
{
  v75 = *MEMORY[0x1E69E9840];
  v74 = 0;
  Mutable = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
  cf = 0;
  theString = a4;
  MutableCopy = CFStringCreateMutableCopy(0, 0, a4);
  v19 = MutableCopy;
  v20 = a2;
  v68 = a3;
  v69 = a1;
  if (a10 == 1)
  {
    Length = CFStringGetLength(MutableCopy);
    _CFAppendPathComponent2(v19, @"Non-localized Resources");
    Table = _copyQueryTable(a1, a2, a3, v19, a5);
    v23 = Table;
    v24 = a5;
    if (a11)
    {
      _CFBundleFindResourcesWithPredicate(Mutable, Table, a11, &v74);
    }

    else
    {
      cf = CFDictionaryGetValue(Table, a6);
    }

    v76.length = CFStringGetLength(v19) - Length;
    v76.location = Length;
    CFStringDelete(v19, v76);
    if (cf || v74)
    {
      goto LABEL_12;
    }

    a1 = v69;
    if (v23)
    {
      CFRelease(v23);
    }
  }

  v25 = _copyQueryTable(a1, v20, a3, v19, a5);
  v23 = v25;
  v24 = a5;
  if (a11)
  {
    _CFBundleFindResourcesWithPredicate(Mutable, v25, a11, &v74);
  }

  else
  {
    cf = CFDictionaryGetValue(v25, a6);
  }

LABEL_12:
  if (v24)
  {
    v26 = CFStringGetLength(v24) > 0;
  }

  else
  {
    v26 = 0;
  }

  v67 = v20;
  if (a7)
  {
    v27 = CFStringGetLength(a7) > 0;
  }

  else
  {
    v27 = 0;
  }

  if (!a9 || !cf)
  {
    if (cf)
    {
      v29 = CFGetTypeID(cf);
      if (v29 == CFArrayGetTypeID())
      {
        v77.length = CFArrayGetCount(cf);
        v77.location = 0;
        CFArrayAppendArray(Mutable, cf, v77);
      }

      else
      {
        CFArrayAppendValue(Mutable, cf);
      }
    }

    goto LABEL_52;
  }

  v28 = CFGetTypeID(cf);
  if (v28 == CFStringGetTypeID())
  {
    cf = CFArrayCreate(&__kCFAllocatorSystemDefault, &cf, 1, &kCFTypeArrayCallBacks);
  }

  else
  {
    CFRetain(cf);
  }

  result.location = 0;
  result.length = 0;
  if (a8)
  {
    Count = CFArrayGetCount(cf);
    if (Count <= 0)
    {
      CFRelease(cf);
LABEL_52:
      v36 = v68;
      goto LABEL_53;
    }
  }

  else
  {
    Count = 1;
  }

  v65 = v19;
  for (i = 0; Count != i; ++i)
  {
    ValueAtIndex = CFArrayGetValueAtIndex(cf, i);
    v33 = CFStringGetLength(ValueAtIndex);
    v34 = v33;
    if (v26)
    {
      v78.location = 0;
      v78.length = v33;
      if (CFStringFindWithOptions(ValueAtIndex, v24, v78, 0, &result))
      {
        v35 = result.location == 0;
      }

      else
      {
        v35 = 1;
      }

      if (v35)
      {
        goto LABEL_46;
      }
    }

    else
    {
      if (!v33)
      {
        goto LABEL_46;
      }

      v79.location = 0;
      v79.length = v33;
      if (!CFStringFindWithOptions(ValueAtIndex, @".lproj", v79, 0, &result) || result.location + 7 >= v34)
      {
        goto LABEL_46;
      }
    }

    if (!a7)
    {
      break;
    }

    if (CFStringGetLength(a7) < 1)
    {
      break;
    }

    v80.location = 0;
    v80.length = v34;
    if (!CFStringFindWithOptions(ValueAtIndex, a7, v80, 8uLL, &result))
    {
      break;
    }

    v81.location = result.length + result.location;
    v81.length = 1;
    if (!CFStringFindWithOptions(ValueAtIndex, @".", v81, 0, &result))
    {
      break;
    }

    v27 = 0;
LABEL_46:
    CFArrayAppendValue(Mutable, ValueAtIndex);
  }

  CFRelease(cf);
  v36 = v68;
  if (!a8 && CFArrayGetCount(Mutable))
  {
    v27 = 0;
  }

  v19 = v65;
LABEL_53:
  cf = 0;
  CFRelease(v23);
  if (v27)
  {
    v37 = CFStringCreateMutableCopy(0, 0, a7);
    _CFAppendPathExtension2(v37, @"lproj");
    if (v24 && CFStringGetLength(v24) >= 1)
    {
      _CFAppendPathComponent2(v37, v24);
    }

    v38 = _copyQueryTable(v69, v67, v36, v19, v37);
    CFRelease(v37);
    Value = CFDictionaryGetValue(v38, a6);
    cf = Value;
    if (Value)
    {
      v40 = CFGetTypeID(Value);
      TypeID = CFStringGetTypeID();
      v42 = cf;
      if (v40 == TypeID)
      {
        CFArrayAppendValue(Mutable, cf);
      }

      else
      {
        v82.length = CFArrayGetCount(cf);
        v82.location = 0;
        CFArrayAppendArray(Mutable, v42, v82);
      }
    }

    CFRelease(v38);
  }

  if (CFArrayGetCount(Mutable) < 1)
  {
    if (a8)
    {
      v45 = CFRetain(Mutable);
    }

    else
    {
      v45 = 0;
    }
  }

  else
  {
    v43 = _CFGetSlash();
    if (v69)
    {
      v44 = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, *(v69 + 192));
    }

    else
    {
      v46 = CFURLCopyAbsoluteURL(v67);
      v47 = CFURLCopyFileSystemPath(v46, kCFURLPOSIXPathStyle);
      v44 = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v47);
      CFRelease(v46);
      CFRelease(v47);
    }

    if (theString && CFStringGetLength(theString))
    {
      _CFAppendPathComponent2(v44, theString);
    }

    _CFAppendTrailingPathSlash2(v44);
    if (a8)
    {
      v48 = v19;
      v49 = CFArrayGetCount(Mutable);
      v50 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v44, kCFURLPOSIXPathStyle, 1u);
      v45 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
      if (v49 >= 1)
      {
        for (j = 0; j != v49; ++j)
        {
          v52 = CFArrayGetValueAtIndex(Mutable, j);
          v53 = _CFGetSlashStr();
          RelativeURLFromBaseAndPath = _CFBundleCreateRelativeURLFromBaseAndPath(v52, v50, v43, v53);
          CFArrayAppendValue(v45, RelativeURLFromBaseAndPath);
          CFRelease(RelativeURLFromBaseAndPath);
        }
      }

      CFRelease(v50);
      v19 = v48;
    }

    else
    {
      HasPrefix = CFStringHasPrefix(a6, @"_CFBT_");
      v56 = CFStringHasPrefix(a6, @"_CFBAF_") | HasPrefix;
      v57 = CFArrayGetValueAtIndex(Mutable, 0);
      if (v56)
      {
        v58 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v44, kCFURLPOSIXPathStyle, 1u);
        v59 = _CFGetSlashStr();
        v45 = _CFBundleCreateRelativeURLFromBaseAndPath(v57, v58, v43, v59);
        CFRelease(v58);
      }

      else
      {
        CFStringAppend(v44, v57);
        v60 = CFStringGetLength(v57);
        if (CFStringGetCharacterAtIndex(v57, v60 - 1) == v43)
        {
          v61 = v44;
          v62 = 1;
        }

        else
        {
          v61 = v44;
          v62 = 0;
        }

        v45 = CFURLCreateWithFileSystemPath(&__kCFAllocatorSystemDefault, v61, kCFURLPOSIXPathStyle, v62);
      }
    }

    CFRelease(v44);
  }

  if (v19)
  {
    CFRelease(v19);
  }

  CFRelease(Mutable);
  v63 = *MEMORY[0x1E69E9840];
  return v45;
}

uint64_t _CFXNotificationRegistrarAddObject(uint64_t a1, uint64_t a2, const void *a3, unint64_t a4, int *a5, int a6, int a7)
{
  v10 = a4;
  v12 = a2;
  Object = _CFXNotificationRegistrarFindObject(a1, a2, a3, a4, a7, a5);
  if (Object)
  {
    return Object;
  }

  v15 = *(a1 + 136);
  if (v15 == -1)
  {
    v17 = v10;
    v18 = malloc_good_size(32 * (*(a1 + 132) + 1));
    v19 = v18 >> 5;
    v20 = *(a1 + 132);
    v21 = *(a1 + 120);
    if (v21)
    {
      v16 = malloc_type_realloc(v21, v18 & 0x1FFFFFFFE0, 0xCD87958FuLL);
    }

    else
    {
      v16 = malloc_type_malloc(v18 & 0x1FFFFFFFE0, 0x82DB78C4uLL);
    }

    *(a1 + 132) = v19;
    *(a1 + 120) = v16;
    if (v20 < v19)
    {
      v22 = &v16[8 * v20 + 4];
      do
      {
        v23 = *(a1 + 136);
        if (v23 != -1)
        {
          v16[8 * v23] = v20;
        }

        *(v22 - 16) = -1;
        *(v22 - 12) = v23;
        *(a1 + 136) = v20;
        *(v22 + 8) = -1;
        ++v20;
        *(v22 - 8) = 0;
        *v22 = 0xFFFFFFFFLL;
        v22 += 32;
      }

      while ((v18 >> 5) != v20);
    }

    v15 = *(a1 + 136);
    v10 = v17;
    if (v15 == -1)
    {
      goto LABEL_17;
    }
  }

  else
  {
    v16 = *(a1 + 120);
  }

  v24 = &v16[8 * v15];
  v25 = *v24;
  v26 = v24[1];
  *(a1 + 136) = v26;
  if (v25 != -1)
  {
    v16[8 * v25 + 1] = v26;
  }

  if (v26 != -1)
  {
    v16[8 * v26] = v25;
  }

LABEL_17:
  ++*(a1 + 128);
  *a5 = v15;
  Object = &v16[8 * v15];
  *(Object + 24) = -1;
  *(Object + 16) = 0xFFFFFFFFLL;
  if (a7)
  {
    _CFXNotificationRegistrarAddCachedName(a3, (Object + 8));
  }

  else
  {
    *(Object + 8) = a3;
  }

  *(Object + 24) = a6;
  v27 = *a5;
  v28 = 31 - __clz(*(v12 + 12) + 1);
  if (v28 <= 1)
  {
    v28 = 1;
  }

  v29 = malloc_good_size(4 * v28);
  v30 = v29 >> 2;
  if (!(v29 >> 2))
  {
    _CFXNotificationRegistrarAddObject_cold_1();
  }

  v31 = *v12;
  if (*(v12 + 8) >= v30)
  {
    v34 = *v12;
  }

  else
  {
    v32 = v29;
    v33 = malloc_type_malloc(v29 & 0x3FFFFFFFCLL, 0x82DB78C4uLL);
    v34 = v33;
    if (v31)
    {
      v48 = v30;
      v49 = v27;
      memset(v33, 255, v32 & 0x3FFFFFFFCLL);
      v35 = *v12;
      v50 = v12;
      v36 = *(v12 + 8);
      if (v36)
      {
        v37 = 0;
        v38 = (v32 >> 2);
        do
        {
          v39 = v35[v37];
          if (v39 != -1)
          {
            do
            {
              v40 = *(a1 + 120) + 32 * v39;
              v41 = *(v40 + 8);
              if (a7)
              {
                v42 = CFHash(v41);
              }

              else
              {
                v42 = (v41 >> 5) & 0x7F;
              }

              v43 = *(v40 + 4);
              v44 = v34[v42 % v38];
              *v40 = -1;
              *(v40 + 4) = v44;
              if (v44 != -1)
              {
                *(*(a1 + 120) + 32 * v44) = v39;
              }

              v34[v42 % v38] = v39;
              v39 = v43;
            }

            while (v43 != 0xFFFFFFFFLL);
            v36 = *(v50 + 8);
          }

          ++v37;
        }

        while (v37 < v36);
      }

      v12 = v50;
      *v50 = v34;
      *(v50 + 8) = v48;
      free(v35);
      v34 = *v50;
      v27 = v49;
    }

    else
    {
      *v12 = v33;
      *(v12 + 8) = v30;
      memset(v33, 255, v32 & 0x3FFFFFFFCLL);
    }
  }

  v45 = v10 % *(v12 + 8);
  v46 = v34[v45];
  if (v46 != -1)
  {
    *(*(a1 + 120) + 32 * v46) = v27;
  }

  *Object = -1;
  *(Object + 4) = v46;
  v34[v45] = v27;
  ++*(v12 + 12);
  return Object;
}

uint64_t __initWithArrayDontCopyItems(__objc2_class **a1, void *a2)
{
  v4 = objc_opt_class();
  if (v4 != __NSArrayI && v4 != __NSArrayM && v4 != __NSFrozenArrayM)
  {
    return 0;
  }

  if (a1 == &___mutablePlaceholderArray)
  {

    return [a2 mutableCopyWithZone:0];
  }

  else
  {
    if (a1 != &___immutablePlaceholderArray)
    {
      return 0;
    }

    return [a2 copyWithZone:0];
  }
}

unint64_t _CFStringCreateIndirectASCIITaggedPointerString(unint64_t a1, unint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (!a2)
  {
    result = &stru_1EF068AA8;
    goto LABEL_20;
  }

  if (!__CFTaggedStringClass)
  {
    goto LABEL_18;
  }

  if (a2 > 7)
  {
    if (a2 <= 0xB)
    {
      if (a2 >= 0xA)
      {
        v6 = 0;
        v10 = a2;
        v11 = a1;
        while (1)
        {
          v12 = charToSixBitLookup_0[*v11];
          if (v12 > 0x1F)
          {
            break;
          }

          v6 = v12 | (32 * v6);
          ++v11;
          if (!--v10)
          {
LABEL_16:
            result = (v6 << 7) | (8 * a2) | 0x8000000000000002;
            v5 = result ^ *MEMORY[0x1E69E5910];
            if ((~v5 & 0xC000000000000007) == 0)
            {
              goto LABEL_20;
            }

            goto LABEL_17;
          }
        }
      }

      else
      {
        v6 = 0;
        v7 = a2;
        v8 = a1;
        while (1)
        {
          v9 = charToSixBitLookup_0[*v8];
          if (v9 > 0x3F)
          {
            break;
          }

          v6 = v9 | (v6 << 6);
          ++v8;
          if (!--v7)
          {
            goto LABEL_16;
          }
        }
      }
    }

LABEL_18:
    if ((a1 & 0xF00000000000000) != 0)
    {
      result = 0;
    }

    else
    {
      v14 = dyld_program_sdk_at_least();
      result = 0;
      if (!(a2 >> 13))
      {
        if (v14)
        {
          result = (a2 << 50) | (8 * (a1 & 0x7FFFFFFFFFFFLL)) | 0x8000000000000000;
          v15 = *MEMORY[0x1E69E5910] ^ result;
          if ((~v15 & 0xC000000000000007) != 0)
          {
            result = v15 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (*MEMORY[0x1E69E5910] & 7));
          }
        }
      }
    }

    goto LABEL_20;
  }

  __memmove_chk();
  result = (8 * a2) | 0x8000000000000002;
  v5 = *MEMORY[0x1E69E5910] ^ result;
  if ((~v5 & 0xC000000000000007) == 0)
  {
    goto LABEL_20;
  }

LABEL_17:
  result = v5 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v5 & 7));
  if (!result)
  {
    goto LABEL_18;
  }

LABEL_20:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void CFSetGetValues(CFSetRef theSet, const void **values)
{
  if (CF_IS_OBJC(0x11uLL, theSet))
  {

    [(__CFSet *)theSet getObjects:values];
  }

  else
  {
    Count = CFSetGetCount(theSet);

    CFBasicHashGetElements(theSet, Count, 0, values);
  }
}

uint64_t CFSetApply(void *a1, uint64_t a2)
{
  v7[5] = *MEMORY[0x1E69E9840];
  if (CF_IS_OBJC(0x11uLL, a1))
  {
    v4 = *MEMORY[0x1E69E9840];

    return [a1 enumerateObjectsWithOptions:0 usingBlock:a2];
  }

  else
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __CFSetApply_block_invoke;
    v7[3] = &unk_1E6D7D948;
    v7[4] = a2;
    result = CFBasicHashApply(a1, v7);
    v6 = *MEMORY[0x1E69E9840];
  }

  return result;
}

BOOL __CFPropertyListKeyBufferMatchesFilterBuffer(unsigned __int8 *a1, uint64_t a2, _BYTE *__s2, uint64_t __n)
{
  v4 = __n - 1;
  if (__n != 1)
  {
    if (__n >= 2 && __s2[v4] == 42)
    {
      if (v4 <= a2)
      {
        v7 = __s2;
        v8 = __n - 1;
        return memcmp(a1, v7, v8) == 0;
      }
    }

    else if (a2 == __n)
    {
      v7 = __s2;
      v8 = __n;
      return memcmp(a1, v7, v8) == 0;
    }

    return 0;
  }

  v5 = *__s2;
  if (v5 == 42)
  {
    return 1;
  }

  if (a2 != 1)
  {
    return 0;
  }

  return v5 == *a1;
}

unint64_t *__CFArrayCreateTransfer(__objc2_class **a1, const void *a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 8 * a3;
  Instance = _CFRuntimeCreateInstance(a1, 0x13uLL, (8 * a3 + 32), 0, a5, a6, a7, a8);
  v12 = Instance;
  if (Instance)
  {
    v13 = atomic_load(Instance + 1);
    v14 = v13;
    do
    {
      atomic_compare_exchange_strong(Instance + 1, &v14, v13 & 0xFFFFFFFFFFFFFF80 | 4);
      v15 = v14 == v13;
      v13 = v14;
    }

    while (!v15);
    Instance[2] = a3;
    v16 = atomic_load(Instance + 1);
    v17 = v16 & 3;
    if (v17 == 2)
    {
      v20 = (Instance[5] + 8 * *Instance[5] + 16);
    }

    else if (v17)
    {
      v20 = 0;
    }

    else
    {
      v18 = atomic_load(Instance + 1);
      v15 = (~v18 & 0xC) == 0;
      v19 = 6;
      if (v15)
      {
        v19 = 11;
      }

      v20 = &Instance[v19];
    }

    memmove(v20, a2, v10);
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }
  }

  return v12;
}

void __NSArrayEnumerate(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v48 = *MEMORY[0x1E69E9840];
  if ([a1 count])
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      v7 = [a4 firstIndex];
      v34 = [a4 lastIndex];
    }

    else
    {
      v7 = 0;
      v34 = [a1 count] - 1;
    }

    if (v7 != 0x7FFFFFFFFFFFFFFFLL && v34 != 0x7FFFFFFFFFFFFFFFLL)
    {
      if (a3)
      {
        v8 = __CFActiveProcessorCount();
        if (v8 < 2)
        {
          a3 &= ~1uLL;
        }
      }

      else
      {
        v8 = 1;
      }

      if ((a3 & 3) != 0)
      {
        v9 = (v34 - v7 + 1) / v8 / v8;
        if (v9 >= 0x10)
        {
          if (v9 <= 0x1000)
          {
            v10 = (v9 + 15) & 0x3FF0;
          }

          else
          {
            v10 = 4096;
          }
        }

        else
        {
          v10 = 16;
        }

        v18 = v10 + v34 - v7;
        v39 = 0;
        v40 = &v39;
        v41 = 0x2020000000;
        v42 = 0x7FFFFFFFFFFFFFFFLL;
        if (a3)
        {
          v37[0] = 0;
          v37[1] = v37;
          v37[2] = 0x2020000000;
          v38 = 0;
          block[0] = MEMORY[0x1E69E9820];
          block[1] = 3221225472;
          block[2] = ____NSArrayEnumerate_block_invoke;
          block[3] = &unk_1E6D82388;
          block[10] = v10;
          block[11] = v34;
          block[12] = a3;
          block[4] = a1;
          block[5] = a4;
          block[6] = a2;
          block[7] = v37;
          block[8] = &v39;
          block[9] = v7;
          dispatch_apply(v18 / v10, 0, block);
          _Block_object_dispose(v37, 8);
        }

        else
        {
          v31 = a2;
          v33 = a1;
          if (v10 <= v18)
          {
            v19 = v7;
            v20 = 0;
            v21 = v10 - 1;
            v22 = 1;
            v23 = v19;
            v24 = v34;
            v25 = v18 / v10;
            do
            {
              if ((a3 & 2) != 0)
              {
                if (v21 >= v24 - v19)
                {
                  v27 = v19;
                }

                else
                {
                  v27 = 1 - v10 + v24;
                }

                v26 = v24;
              }

              else
              {
                if (v21 >= v24 - v19)
                {
                  v26 = v34;
                }

                else
                {
                  v26 = v21 + v20 * v10 + v19;
                }

                v27 = v23;
              }

              v28 = __NSArrayChunkIterate(v33, a3, v27, v26, a4, v31, v40 + 3, 0, 0);
              ++v20;
              v29 = v22 >= v25;
              v24 -= v10;
              v23 += v10;
              ++v22;
            }

            while (((v29 | v28) & 1) == 0);
          }
        }

        _Block_object_dispose(&v39, 8);
      }

      else
      {
        v32 = v7;
        v11 = _CFAutoreleasePoolPush();
        LOBYTE(v37[0]) = 0;
        v44 = 0u;
        v45 = 0u;
        v46 = 0u;
        v47 = 0u;
        v12 = [a1 countByEnumeratingWithState:&v44 objects:v43 count:16];
        if (v12)
        {
          v13 = 0;
          v14 = 0;
          v15 = *v45;
          do
          {
            for (i = 0; i != v12; ++i)
            {
              if (*v45 != v15)
              {
                objc_enumerationMutation(a1);
              }

              v17 = *(*(&v44 + 1) + 8 * i);
              if ((a3 & 0x1000000000000000) == 0 || v32 <= v14 && v14 <= v34 && [a4 containsIndex:v14])
              {
                __NSARRAY_IS_CALLING_OUT_TO_A_BLOCK__(a2);
                if (v13 < 0x3FF)
                {
                  ++v13;
                }

                else
                {
                  _CFAutoreleasePoolPop(v11);
                  v11 = _CFAutoreleasePoolPush();
                  v13 = 0;
                }
              }

              ++v14;
            }

            v12 = [a1 countByEnumeratingWithState:&v44 objects:v43 count:16];
          }

          while (v12);
        }

        _CFAutoreleasePoolPop(v11);
      }
    }
  }

  v30 = *MEMORY[0x1E69E9840];
}

CFStringRef CFURLGetString(CFURLRef anURL)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLGetString_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1 || CF_IS_OBJC(0x1DuLL, anURL))
  {

    return [(__CFURL *)anURL relativeString];
  }

  else if (*(anURL + 18))
  {
    return atomic_load(anURL + 3);
  }

  else
  {
    v3 = *(anURL + 5);
    if (v3)
    {
      return *(v3 + 8);
    }

    else
    {
      return 0;
    }
  }
}

CFURLRef CFBundleCopyResourceURL(CFURLRef bundle, CFStringRef resourceName, CFStringRef resourceType, CFStringRef subDirName)
{
  if (bundle)
  {
    return _CFBundleCopyFindResources(bundle, 0, resourceType, resourceName, resourceType, subDirName, 0, 0, 0, 0);
  }

  return bundle;
}

CFStringRef _CFCreateLastPathComponent(const __CFAllocator *a1, CFStringRef theString, void *a3)
{
  Length = CFStringGetLength(theString);
  if (Length < 2)
  {
LABEL_16:
    if (a3)
    {
      *a3 = -1;
    }

    return CFRetain(theString);
  }

  else
  {
    v7 = Length;
    v8 = 0;
    while (v7 + v8 >= 1)
    {
      if (CFStringGetCharacterAtIndex(theString, --v8 + v7) == 47)
      {
        v9 = v7 + v8;
        if (a3)
        {
          *a3 = v9;
        }

        v10.location = v9 + 1;
        v10.length = ~v8;
        v11 = a1;
        v12 = theString;
        goto LABEL_13;
      }
    }

    v13 = v7 - 2;
    if (!v13 || !_hasDrive(theString))
    {
      goto LABEL_16;
    }

    if (a3)
    {
      *a3 = -1;
    }

    v11 = a1;
    v12 = theString;
    v10.location = 2;
    v10.length = v13;
LABEL_13:

    return CFStringCreateWithSubstring(v11, v12, v10);
  }
}

void CFBasicHashSetCapacity(uint64_t a1, uint64_t a2)
{
  v2 = atomic_load((a1 + 8));
  if ((v2 & 0x40) != 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a1 + 20);
    v4 = a2 <= v3;
    v5 = a2 - v3;
    if (!v4)
    {
      ++*(a1 + 16);
      __CFBasicHashRehash(a1, v5);
    }
  }
}

void _CFDictionarySetCapacity(unint64_t a1, uint64_t a2)
{
  if (!CF_IS_OBJC(0x12uLL, a1))
  {

    CFBasicHashSetCapacity(a1, a2);
  }
}

void *__NSSingleEntryDictionaryI_new(unint64_t a1, unint64_t a2, char a3)
{
  v27[1] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v13 = _os_log_pack_size();
    v15 = v27 - ((MEMORY[0x1EEE9AC00](v13, v14) + 15) & 0xFFFFFFFFFFFFFFF0);
    v16 = _os_log_pack_fill();
    *v16 = 136315138;
    *(v16 + 4) = "__NSSingleEntryDictionaryI_new";
    v17 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: key cannot be nil", "__NSSingleEntryDictionaryI_new");
    v18 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v17) osLogPack:0 size:v15, v13];
    objc_exception_throw(v18);
  }

  if (!a2)
  {
    v19 = _os_log_pack_size();
    v21 = v27 - ((MEMORY[0x1EEE9AC00](v19, v20) + 15) & 0xFFFFFFFFFFFFFFF0);
    v22 = _os_log_pack_fill();
    *v22 = 136315138;
    *(v22 + 4) = "__NSSingleEntryDictionaryI_new";
    v23 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"*** %s: object cannot be nil", "__NSSingleEntryDictionaryI_new");
    v24 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v23) osLogPack:0 size:v21, v19];
    objc_exception_throw(v24);
  }

  v6 = objc_opt_self();
  v7 = __CFAllocateObject(v6, 0);
  if (v7)
  {
    if (a3)
    {
      v9 = [a1 copyWithZone:0];
      v7[2] = v9;
      if (!v9)
      {
        v25 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"NSDictionary: -copyWithZone: for key %@ returned nil", a1);
        v26 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v25), 0];
        objc_exception_throw(v26);
      }
    }

    else
    {
      if ((a3 & 8) == 0 && (a1 & 0x8000000000000000) == 0)
      {
        v8 = a1;
      }

      v7[2] = a1;
    }

    v7[1] = a2;
    if ((a2 & 0x8000000000000000) == 0 && (a3 & 4) == 0)
    {
      v10 = a2;
    }
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

void sub_18311C3B4(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    if (v2 >= 1)
    {
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

BOOL _CFSetIsMutable(unint64_t a1)
{
  if (CF_IS_OBJC(0x11uLL, a1))
  {
    return 0;
  }

  v3 = atomic_load((a1 + 8));
  return ((v3 >> 6) & 1) == 0;
}

uint64_t CFBasicHashGetElements(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v21 = *MEMORY[0x1E69E9840];
  v4 = *(result + 20);
  v5 = __CFBasicHashTableSizes[*(result + 26)];
  if (v4)
  {
    v6 = v5 < 1;
  }

  else
  {
    v6 = 1;
  }

  if (!v6 && a2 >= 1)
  {
    v11 = result;
    v12 = 0;
    v13 = 0;
    do
    {
      v19 = 0u;
      v20 = 0u;
      result = CFBasicHashGetBucket(v11, v12, &v19);
      if (*(&v20 + 1))
      {
        --v4;
        if (v13 < a2)
        {
          v15 = *(&v19 + 1);
          v14 = v20;
          v16 = *(&v20 + 1) - 1;
          do
          {
            if (a3)
            {
              *(a3 + 8 * v13) = v14;
            }

            if (a4)
            {
              *(a4 + 8 * v13) = v15;
            }

            ++v13;
            v17 = v16-- != 0;
          }

          while (v17 && v13 < a2);
        }
      }

      if (v4 < 1)
      {
        break;
      }

      if (++v12 >= v5)
      {
        break;
      }
    }

    while (v13 < a2);
  }

  v18 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFSet *__CFPropertyListCreateTopLevelKeyPaths(const __CFAllocator *a1, CFSetRef theSet)
{
  Mutable = theSet;
  v18[1] = *MEMORY[0x1E69E9840];
  if (theSet)
  {
    Count = CFSetGetCount(theSet);
    if (Count >> 60)
    {
      __CFPropertyListCreateTopLevelKeyPaths_cold_2();
    }

    v6 = Count;
    if (Count <= 1)
    {
      v7 = 1;
    }

    else
    {
      v7 = Count;
    }

    MEMORY[0x1EEE9AC00](Count, v5);
    Typed = v18 - v9;
    if (v8 >= 0x200)
    {
      v11 = 512;
    }

    else
    {
      v11 = v8;
    }

    bzero(v18 - v9, v11);
    if (v6 > 0x100)
    {
      Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 8 * v7, 0xC0040B8AA526DLL, 0);
      if (!Typed)
      {
        __CFPropertyListCreateTopLevelKeyPaths_cold_1();
      }
    }

    else
    {
      bzero(Typed, 8 * v7);
    }

    CFSetGetValues(Mutable, Typed);
    Mutable = CFSetCreateMutable(a1, v6, &kCFTypeSetCallBacks);
    if (v6)
    {
      for (i = 0; i != v6; ++i)
      {
        v13 = CFGetTypeID(*&Typed[8 * i]);
        v14 = *&Typed[8 * i];
        if (v13 == 19)
        {
          CFSetAddValue(Mutable, v14);
        }

        else
        {
          ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a1, v14, @":");
          CFSetAddValue(Mutable, ArrayBySeparatingStrings);
          if (ArrayBySeparatingStrings)
          {
            CFRelease(ArrayBySeparatingStrings);
          }
        }
      }

      if (v6 >= 0x101)
      {
        CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
      }
    }
  }

  v16 = *MEMORY[0x1E69E9840];
  return Mutable;
}

CFArrayRef CFStringCreateArrayBySeparatingStrings(CFAllocatorRef alloc, CFStringRef theString, CFStringRef separatorString)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v18[0] = theString;
  Length = CFStringGetLength(theString);
  v21.location = 0;
  v21.length = Length;
  Results = CFStringCreateArrayWithFindResults(alloc, theString, separatorString, v21, 0);
  if (Results)
  {
    v8 = Results;
    Count = CFArrayGetCount(Results);
    Mutable = CFArrayCreateMutable(alloc, Count + 2, &kCFTypeArrayCallBacks);
    if (Count < 1)
    {
      v12 = 0;
    }

    else
    {
      v11 = 0;
      v12 = 0;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v8, v11);
        v19.length = *ValueAtIndex - v12;
        v19.location = v12;
        v14 = CFStringCreateWithSubstring(alloc, theString, v19);
        CFArrayAppendValue(Mutable, v14);
        CFRelease(v14);
        v12 = ValueAtIndex[1] + *ValueAtIndex;
        ++v11;
      }

      while (Count != v11);
    }

    v20.length = Length - v12;
    v20.location = v12;
    v15 = CFStringCreateWithSubstring(alloc, theString, v20);
    CFArrayAppendValue(Mutable, v15);
    CFRelease(v15);
    CFRelease(v8);
  }

  else
  {
    Mutable = CFArrayCreate(alloc, v18, 1, &kCFTypeArrayCallBacks);
  }

  v16 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t __CFToBytesCheapEightBitWrapper(unsigned int (***a1)(uint64_t, void, char *), uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
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
    while ((**a1)(a2, *(a3 + 2 * v15), &v18))
    {
      if (a6)
      {
        *(a5 + v15) = v18;
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

__objc2_class **__NSCFDictionaryCreateTransfer(__objc2_class **a1, uint64_t *a2, uint64_t *a3, unint64_t a4)
{
  if (__FoundationPresent_static_init_0 != -1)
  {
    __NSCFDictionaryCreateTransfer_cold_1();
  }

  if (!__FoundationPresent_present_0 || &__kCFAllocatorSystemDefault != a1 && (a1 || &__kCFAllocatorSystemDefault != CFAllocatorGetDefault()))
  {
    return 0;
  }

  if (a4 == 1)
  {
    v9 = *a2;
    v10 = *a3;

    return __NSSingleEntryDictionaryI_new(v9, v10, 12);
  }

  else if (a4)
  {

    return __NSDictionaryI_new(a2, a3, 0, a4, 12);
  }

  else
  {

    return &__NSDictionary0__struct;
  }
}

CFMutableDictionaryRef __CFPropertyListCreateFilteredDictionary(const __CFAllocator *a1, const __CFSet *a2, uint64_t a3, int a4, unint64_t a5, uint64_t a6, int a7, int a8, int a9, int a10, int a11, const __CFSet *a12, uint64_t a13)
{
  v88 = *MEMORY[0x1E69E9840];
  cf = 0;
  theSet = 0;
  __CFPropertyListCreateSplitKeypaths(&__kCFAllocatorSystemDefault, a2, &theSet, &cf);
  if (!theSet)
  {
LABEL_39:
    Mutable = 0;
    goto LABEL_40;
  }

  if (a5 < 8)
  {
    goto LABEL_37;
  }

  v20 = *(a6 + 24) - 1;
  if (v20 < a5)
  {
    goto LABEL_37;
  }

  v21 = (a3 + a5);
  if (a3 + a5 == -1)
  {
    goto LABEL_37;
  }

  v22 = *v21;
  if ((*v21 & 0xF0) != 0xD0)
  {
    goto LABEL_37;
  }

  v23 = (v21 + 1);
  v24 = v22 & 0xF;
  if ((v22 & 0xF) != 0xF)
  {
    goto LABEL_26;
  }

  if (a3 + v20 < v23)
  {
    goto LABEL_37;
  }

  v25 = v21 + 2;
  v26 = *v23;
  if ((*v23 & 0xF0) != 0x10)
  {
    goto LABEL_37;
  }

  v27 = v26 & 0xF;
  v28 = 1 << (v26 & 0xF);
  if (__CFADD__(v28, v25) || v23 + v28 > a3 + v20)
  {
    goto LABEL_37;
  }

  if (v28 > 3u)
  {
    if (v28 == 4)
    {
      v24 = bswap32(*(v23 + 1));
      goto LABEL_25;
    }

    if (v28 == 8)
    {
      v24 = bswap64(*(v23 + 1));
      goto LABEL_24;
    }

LABEL_18:
    if (v27 > 7)
    {
      v24 = 0;
      goto LABEL_25;
    }

    v24 = 0;
    v29 = v28;
    v30 = v23 + 1;
    do
    {
      v31 = *v30++;
      v24 = v31 | (v24 << 8);
      --v29;
    }

    while (v29);
LABEL_24:
    if ((v24 & 0x8000000000000000) != 0)
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

  if (v28 == 1)
  {
    v24 = *v25;
    goto LABEL_25;
  }

  if (v28 != 2)
  {
    goto LABEL_18;
  }

  v24 = __rev16(*(v23 + 1));
LABEL_25:
  v23 = &v25[v28];
LABEL_26:
  if (v24)
  {
    if (!is_mul_ok(2 * v24, *(a6 + 7)))
    {
      goto LABEL_37;
    }

    v32 = 2 * v24 * *(a6 + 7);
    v73 = v24;
  }

  else
  {
    v73 = 0;
    v32 = 0;
  }

  if (__CFADD__(v32, v23) || a3 + v20 < v23 + v32 - 1)
  {
LABEL_37:
    CFRelease(theSet);
    if (cf)
    {
      CFRelease(cf);
    }

    goto LABEL_39;
  }

  v74 = *(a6 + 7);
  v77 = 0;
  v78 = &v77;
  v79 = 0x2020000000;
  Count = CFSetGetCount(theSet);
  v76[0] = MEMORY[0x1E69E9820];
  v76[1] = 3221225472;
  v76[2] = ____CFPropertyListCreateFilteredDictionary_block_invoke;
  v76[3] = &unk_1E6D7D4A0;
  v76[4] = &v77;
  CFSetApply(theSet, v76);
  *buffer = 0;
  v87 = 0;
  if (CFSetGetCount(theSet) != 1)
  {
    goto LABEL_41;
  }

  values[0] = 0;
  CFSetGetValues(theSet, values);
  CStringPtr = CFStringGetCStringPtr(values[0], 0);
  if (!CStringPtr)
  {
    if (CFStringGetCString(values[0], buffer, 16, 0))
    {
      CStringPtr = buffer;
      goto LABEL_36;
    }

LABEL_41:
    v70 = 0;
    v71 = 0;
    goto LABEL_42;
  }

LABEL_36:
  v71 = CStringPtr;
  v70 = strlen(CStringPtr);
LABEL_42:
  Mutable = CFDictionaryCreateMutable(a1, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (v24)
  {
    v37 = 0;
    v69 = v24 * v74;
    v75 = a3 + 8;
    if (v70)
    {
      v38 = v71 == 0;
    }

    else
    {
      v38 = 1;
    }

    v39 = v38;
    v72 = v39;
    if (a7)
    {
      v40 = 0;
    }

    else
    {
      v40 = values;
    }

    v68 = v40;
    do
    {
      if (!v78[3])
      {
        break;
      }

      if (v75 > v23 || (v41 = v37, v42 = *(a6 + 24), v43 = *(a6 + 7), a3 + v42 - v43 < v23))
      {
LABEL_137:
        CFRelease(Mutable);
LABEL_139:
        Mutable = 0;
        break;
      }

      if (*(a6 + 7) <= 1u)
      {
        v44 = *(a6 + 7);
        if (!*(a6 + 7))
        {
          goto LABEL_68;
        }

        if (v43 == 1)
        {
          v44 = *v23;
          goto LABEL_68;
        }
      }

      else
      {
        switch(v43)
        {
          case 2:
            v44 = __rev16(*v23);
            goto LABEL_68;
          case 4:
            v44 = bswap32(*v23);
            goto LABEL_68;
          case 8:
            v44 = bswap64(*v23);
            goto LABEL_68;
        }
      }

      v44 = 0;
      v45 = v23;
      do
      {
        v46 = *v45;
        v45 = (v45 + 1);
        v44 = v46 | (v44 << 8);
        --v43;
      }

      while (v43);
LABEL_68:
      if (*(a6 + 8) <= v44)
      {
        goto LABEL_137;
      }

      v47 = *(a6 + 6);
      v48 = (a3 + v42 + v44 * v47);
      if (*(a6 + 6) <= 1u)
      {
        if (!*(a6 + 6))
        {
          goto LABEL_81;
        }

        if (v47 == 1)
        {
          v47 = *v48;
          goto LABEL_81;
        }
      }

      else
      {
        switch(v47)
        {
          case 2:
            v47 = __rev16(*v48);
            goto LABEL_81;
          case 4:
            v47 = bswap32(*v48);
            goto LABEL_81;
          case 8:
            v47 = bswap64(*v48);
            goto LABEL_81;
        }
      }

      v49 = *(a6 + 6);
      v47 = 0;
      do
      {
        v50 = *v48;
        v48 = (v48 + 1);
        v47 = v50 | (v47 << 8);
        --v49;
      }

      while (v49);
LABEL_81:
      v51 = theSet;
      Copy = 0;
      if ((v72 & 1) == 0 && (*(a3 + v47) & 0xF0) == 0x50)
      {
        Copy = 0;
        values[0] = MEMORY[0x1E69E9820];
        values[1] = 3221225472;
        values[2] = ____CFPropertyListTryFilteredDictionaryASCIIFastPath_block_invoke;
        values[3] = &__block_descriptor_64_e12_B24__0r_8q16l;
        values[4] = v71;
        values[5] = v70;
        values[6] = &Copy;
        values[7] = a1;
        v52 = __CFBinaryPlistParseASCIIString(a3, v42 - 1, (a3 + v47), values) ^ 1;
        goto LABEL_97;
      }

      values[0] = 0;
      v83 = 0;
      if (__CFBinaryPlistCreateObjectFiltered(a3, a4, v47, a6, &__kCFAllocatorSystemDefault, 0x80000000, a9, a11, a12, 0, 0, values, &v83))
      {
        if ((v83 - 17) >= 3 && v83 != 0)
        {
          if (v83 == 7 && __CFPropertyListKeyPassesFilterSet(values[0], v51))
          {
            Copy = CFStringCreateCopy(a1, values[0]);
          }

          if (values[0])
          {
            CFRelease(values[0]);
          }

          v52 = 0;
LABEL_97:
          v54 = Copy;
          if (Copy)
          {
            goto LABEL_99;
          }

          goto LABEL_98;
        }
      }

      v54 = 0;
      v52 = 1;
LABEL_98:
      if (v52)
      {
        goto LABEL_137;
      }

LABEL_99:
      v55 = v41;
      if (!v54)
      {
        goto LABEL_133;
      }

      v56 = (v23 + v69);
      if (v75 > v23 + v69 || (v57 = a3 + *(a6 + 24), v58 = *(a6 + 7), v57 - v58 < v56))
      {
LABEL_138:
        CFRelease(v54);
        CFRelease(Mutable);
        goto LABEL_139;
      }

      if (*(a6 + 7) <= 1u)
      {
        v59 = *(a6 + 7);
        if (!*(a6 + 7))
        {
          goto LABEL_114;
        }

        if (v58 == 1)
        {
          v59 = *v56;
          goto LABEL_114;
        }
      }

      else
      {
        switch(v58)
        {
          case 2:
            v59 = __rev16(*v56);
            goto LABEL_114;
          case 4:
            v59 = bswap32(*v56);
            goto LABEL_114;
          case 8:
            v59 = bswap64(*v56);
            goto LABEL_114;
        }
      }

      v59 = 0;
      do
      {
        v60 = *v56;
        v56 = (v56 + 1);
        v59 = v60 | (v59 << 8);
        --v58;
      }

      while (v58);
LABEL_114:
      if (*(a6 + 8) <= v59)
      {
        goto LABEL_138;
      }

      v61 = *(a6 + 6);
      v62 = (v57 + v59 * v61);
      if (*(a6 + 6) <= 1u)
      {
        if (*(a6 + 6))
        {
          if (v61 != 1)
          {
LABEL_125:
            v63 = *(a6 + 6);
            LODWORD(v61) = 0;
            do
            {
              v64 = *v62;
              v62 = (v62 + 1);
              LODWORD(v61) = v64 | (v61 << 8);
              --v63;
            }

            while (v63);
            goto LABEL_127;
          }

          LODWORD(v61) = *v62;
        }
      }

      else
      {
        switch(v61)
        {
          case 2:
            LODWORD(v61) = __rev16(*v62);
            break;
          case 4:
            LODWORD(v61) = bswap32(*v62);
            break;
          case 8:
            LODWORD(v61) = bswap64(*v62);
            break;
          default:
            goto LABEL_125;
        }
      }

LABEL_127:
      values[0] = 0;
      if (!__CFBinaryPlistCreateObjectFiltered(a3, a4, v61, a6, a1, a8, a9, a11, a12, a13 + 1, cf, v68, 0))
      {
        goto LABEL_138;
      }

      v65 = v78[3];
      v66 = v65 < 1;
      v67 = v65 - 1;
      if (!v66)
      {
        v78[3] = v67;
      }

      if (values[0])
      {
        CFDictionarySetValue(Mutable, v54, values[0]);
        CFRelease(values[0]);
      }

      CFRelease(v54);
      v55 = v41;
LABEL_133:
      v23 = (v23 + *(a6 + 7));
      v37 = v55 + 1;
    }

    while (v37 != v73);
  }

  if (theSet)
  {
    CFRelease(theSet);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  _Block_object_dispose(&v77, 8);
LABEL_40:
  v35 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t _CFPropertyListCreateWithData(__objc2_class **a1, CFDataRef theData, unsigned int a3, CFErrorRef *a4, char a5, void *a6, const __CFSet *a7, CFDateRef *a8)
{
  v10 = BYTE1(a3) | (a3 >> 9) | (a3 >> 10);
  if (BYTE1(a3) & 1 | ((a3 & 0x200) != 0) | ((a3 & 0x400) != 0))
  {
    v11 = (a3 >> 10) & 1;
  }

  else
  {
    v11 = 1;
  }

  if (BYTE1(a3) & 1 | ((a3 & 0x200) != 0) | ((a3 & 0x400) != 0))
  {
    v12 = (a3 >> 8) & 1;
  }

  else
  {
    v12 = 1;
  }

  if (!theData || !CFDataGetLength(theData))
  {
    if (!a4)
    {
      return 0;
    }

    Error = __CFPropertyListCreateError(3840, @"Cannot parse a NULL or zero-length data");
LABEL_17:
    v18 = 0;
    *a4 = Error;
    return v18;
  }

  if (((a3 & 0x200) != 0 || (v10 & 1) == 0) && __CFTryParseBinaryPlist(a1, theData, a3, a8, 0))
  {
    if (a6)
    {
      *a6 = 200;
    }

    return 1;
  }

  if (!(v11 | v12))
  {
    if (!a4)
    {
      return 0;
    }

    Error = __CFPropertyListCreateError(3840, @"Unsupported property list");
    goto LABEL_17;
  }

  v48 = a5;
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  v22 = Length;
  if (Length < 5)
  {
    if (Length != 4)
    {
      if (Length < 3)
      {
LABEL_51:
        v26 = 0;
        goto LABEL_52;
      }

      v23 = *BytePtr;
LABEL_36:
      switch(v23)
      {
        case 0:
          goto LABEL_54;
        case 254:
          v25 = BytePtr[1];
          if (v25 == 255)
          {
            v47 = a6;
            v24 = 268435712;
            goto LABEL_55;
          }

          break;
        case 255:
          v25 = BytePtr[1];
          if (v25 == 254)
          {
            v47 = a6;
LABEL_44:
            v24 = 335544576;
LABEL_55:
            v28 = 2;
            goto LABEL_56;
          }

          break;
        default:
          v25 = BytePtr[1];
          break;
      }

      goto LABEL_48;
    }

    v23 = *BytePtr;
  }

  else
  {
    v23 = *BytePtr;
    if (v23 == 255)
    {
      v25 = BytePtr[1];
      if (v25 == 254)
      {
        v47 = a6;
        if (!BytePtr[2] && !BytePtr[3])
        {
          v24 = 469762304;
          goto LABEL_86;
        }

        goto LABEL_44;
      }

LABEL_48:
      if (v25)
      {
        goto LABEL_49;
      }

LABEL_54:
      v47 = a6;
      v24 = 256;
      goto LABEL_55;
    }

    if (!*BytePtr)
    {
      if (!BytePtr[1] && BytePtr[2] == 254 && BytePtr[3] == 255)
      {
        v47 = a6;
        v24 = 402653440;
LABEL_86:
        v28 = 4;
        goto LABEL_56;
      }

      goto LABEL_54;
    }
  }

  if (v23 != 239)
  {
    goto LABEL_36;
  }

  v25 = BytePtr[1];
  if (v25 != 187)
  {
    goto LABEL_48;
  }

  if (BytePtr[2] == 191)
  {
    v26 = 3;
LABEL_52:
    v27 = v48;
    return _CFPropertyListCreateFromUTF8Data(a1, theData, v26, 0, 0x8000100u, a3, a4, v27, a6, a7, a8, v11, v12);
  }

LABEL_49:
  if (Length < 5 || strncmp(BytePtr, "<?xml", 5uLL))
  {
    goto LABEL_51;
  }

  i = (BytePtr + 5);
  v35 = v22;
  v36 = &BytePtr[v22];
  if (v22 >= 6uLL)
  {
    v37 = *i;
    v27 = v48;
    if ((v37 & 0xFE) != 0x3E)
    {
      for (i = (BytePtr + 14); i < v36; ++i)
      {
        v38 = *(i - 8);
        if (v37 == 101 && v38 == 110 && *(i - 7) == 99 && *(i - 6) == 111 && *(i - 5) == 100 && *(i - 4) == 105 && *(i - 3) == 110 && *(i - 2) == 103 && *(i - 1) == 61)
        {
          goto LABEL_76;
        }

        v26 = 0;
        v37 = v38;
        if ((v38 & 0xFE) == 0x3E)
        {
          return _CFPropertyListCreateFromUTF8Data(a1, theData, v26, 0, 0x8000100u, a3, a4, v27, a6, a7, a8, v11, v12);
        }
      }

      v43 = __CFPropertyListCreateError(3840, @"End of buffer while looking for encoding name", v26);
      goto LABEL_88;
    }

LABEL_84:
    v26 = 0;
    return _CFPropertyListCreateFromUTF8Data(a1, theData, v26, 0, 0x8000100u, a3, a4, v27, a6, a7, a8, v11, v12);
  }

LABEL_76:
  v27 = v48;
  if (i >= v36)
  {
    goto LABEL_84;
  }

  v39 = *i;
  if (v39 != 39 && v39 != 34)
  {
    goto LABEL_84;
  }

  v40 = (i + 1);
  if (i + 1 >= v36)
  {
    goto LABEL_84;
  }

  v41 = 0;
  v42 = &BytePtr[v35 + ~i];
  while (v40[v41] != v39)
  {
    v26 = 0;
    if (v42 == ++v41)
    {
      return _CFPropertyListCreateFromUTF8Data(a1, theData, v26, 0, 0x8000100u, a3, a4, v27, a6, a7, a8, v11, v12);
    }
  }

  v47 = a6;
  if (v41 == 5 && (*v40 | 0x20) == 0x75 && (*(i + 2) | 0x20) == 0x74 && (*(i + 3) | 0x20) == 0x66 && *(i + 4) == 45 && *(i + 5) == 56)
  {
    goto LABEL_113;
  }

  v44 = CFStringCreateWithBytes(&__kCFAllocatorSystemDefault, v40, v41, 0x201u, 0);
  v45 = CFStringConvertIANACharSetNameToEncoding(v44);
  if (v45 == -1)
  {
    v43 = __CFPropertyListCreateError(3840, @"Encountered unknown encoding (%@)", v44);
    if (v44)
    {
      CFRelease(v44);
    }

    goto LABEL_88;
  }

  v24 = v45;
  if (v44)
  {
    CFRelease(v44);
  }

  if (v24 == 134217984)
  {
LABEL_113:
    v26 = 0;
    a6 = v47;
    return _CFPropertyListCreateFromUTF8Data(a1, theData, v26, 0, 0x8000100u, a3, a4, v27, a6, a7, a8, v11, v12);
  }

  v43 = 0;
  v28 = 0;
  if (v24)
  {
LABEL_56:
    v29 = CFDataGetBytePtr(theData);
    v30 = CFDataGetLength(theData);
    v31 = CFStringCreateWithBytes(a1, &v29[v28], v30 - v28, v24, 0);
    if (v31)
    {
      v32 = v31;
      UTF8DataFromString = _createUTF8DataFromString(a1, v31);
      v18 = _CFPropertyListCreateFromUTF8Data(a1, UTF8DataFromString, 0, v32, 0, a3, a4, v48, v47, a7, a8, v11, v12);
      CFRelease(v32);
      if (UTF8DataFromString)
      {
        CFRelease(UTF8DataFromString);
      }

      return v18;
    }

    if (a4)
    {
      Error = __CFPropertyListCreateError(3840, @"Could not determine the encoding of the XML data (string creation failed)");
      goto LABEL_17;
    }

    return 0;
  }

LABEL_88:
  if (a4 && !v43)
  {
    Error = __CFPropertyListCreateError(3840, @"Could not determine the encoding of the XML data");
    goto LABEL_17;
  }

  if (a4 && v43)
  {
    v18 = 0;
    *a4 = v43;
    return v18;
  }

  v18 = 0;
  if (!a4 && v43)
  {
    CFRelease(v43);
    return 0;
  }

  return v18;
}

unint64_t _CFArrayFastEnumeration(unint64_t *a1, void *a2)
{
  if (!a1[2])
  {
    return 0;
  }

  v2 = atomic_load(a1 + 1);
  v3 = v2 & 3;
  if (v3 != 2)
  {
    if (!v3 && !*a2)
    {
      *a2 = 1;
      a2[2] = &_CFArrayFastEnumeration_const_mu;
      v4 = atomic_load(a1 + 1);
      v5 = v4 & 3;
      if (v5 != 2)
      {
        if (!v5)
        {
LABEL_7:
          v6 = atomic_load(a1 + 1);
          v7 = (~v6 & 0xC) == 0;
          v8 = 6;
          if (v7)
          {
            v8 = 11;
          }

          v9 = &a1[v8];
          goto LABEL_16;
        }

        goto LABEL_14;
      }

LABEL_15:
      v9 = a1[5] + 8 * *a1[5] + 16;
      goto LABEL_16;
    }

    return 0;
  }

  if (*a2)
  {
    return 0;
  }

  *a2 = 1;
  a2[2] = a1 + 3;
  v11 = atomic_load(a1 + 1);
  v12 = v11 & 3;
  if (v12 == 2)
  {
    goto LABEL_15;
  }

  if (!v12)
  {
    goto LABEL_7;
  }

LABEL_14:
  v9 = 0;
LABEL_16:
  a2[1] = v9;
  return a1[2];
}

unint64_t _CFDataGetBytePtrNonObjC(uint64_t a1)
{
  v1 = atomic_load((a1 + 8));
  if ((v1 & 4) != 0)
  {
    return (a1 + 63) & 0xFFFFFFFFFFFFFFF0;
  }

  else
  {
    return *(a1 + 40);
  }
}

CFMutableBagRef CFBagCreateMutable(CFAllocatorRef allocator, CFIndex capacity, const CFBagCallBacks *callBacks)
{
  Generic = __CFBagCreateGeneric(allocator, callBacks);
  v4 = Generic;
  if (Generic)
  {
    _CFRuntimeSetInstanceTypeIDAndIsa(Generic, 4uLL);
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }
  }

  return v4;
}

CFPropertyListRef CFPropertyListCreateWithData(CFAllocatorRef allocator, CFDataRef data, CFOptionFlags options, CFPropertyListFormat *format, CFErrorRef *error)
{
  v7[1] = *MEMORY[0x1E69E9840];
  v7[0] = 0;
  _CFPropertyListCreateWithData(allocator, data, options, error, 1, format, 0, v7);
  result = v7[0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

CFSetRef _CFPropertyListCopyTopLevelKeys(const __CFAllocator *a1, CFDataRef theData, unsigned int a3, CFErrorRef *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  if (theData)
  {
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    if (Length >= 8)
    {
      v10 = Length;
      v20 = 0;
      *cf = 0u;
      v22 = 0u;
      v19 = 0;
      if (__CFDataGetBinaryPlistTopLevelInfo(theData, &v20, &v19, cf))
      {
        v11 = __CFBinaryPlistCopyTopLevelKeys(a1, BytePtr, v10, v19, cf);
        if (!a4)
        {
          goto LABEL_21;
        }

        goto LABEL_19;
      }
    }

    cf[0] = 0;
    _CFPropertyListCreateWithData(a1, theData, a3, a4, 1, 0, 0, cf);
    v12 = cf[0];
    if (cf[0])
    {
      if (CFGetTypeID(cf[0]) == 18)
      {
        Count = CFDictionaryGetCount(v12);
        v14 = malloc_type_malloc(8 * Count, 0xC0040B8AA526DuLL);
        if (v14)
        {
          v15 = v14;
          CFDictionaryGetKeysAndValues(v12, v14, 0);
          v11 = CFSetCreate(a1, v15, Count, &kCFTypeSetCallBacks);
          free(v15);
          goto LABEL_18;
        }

        if (a4)
        {
          Error = __CFPropertyListCreateError(3840, @"Unable to convert string to correct encoding");
          goto LABEL_16;
        }
      }

      else if (a4)
      {
        Error = __CFPropertyListCreateError(3840, @"Cannot copy top-level keys for plist with non-dictionary root object");
LABEL_16:
        v11 = 0;
        *a4 = Error;
        goto LABEL_18;
      }

      v11 = 0;
LABEL_18:
      CFRelease(v12);
      if (!a4)
      {
        goto LABEL_21;
      }

      goto LABEL_19;
    }
  }

  v11 = 0;
  if (!a4)
  {
    goto LABEL_21;
  }

LABEL_19:
  if (!v11)
  {
    *a4 = __CFPropertyListCreateError(3840, @"Unable to extract top-level keys");
  }

LABEL_21:
  v17 = *MEMORY[0x1E69E9840];
  return v11;
}

CFSetRef __CFBinaryPlistCopyTopLevelKeys(const __CFAllocator *a1, uint64_t a2, int a3, unint64_t a4, uint64_t a5)
{
  v5 = 0;
  v43[1] = *MEMORY[0x1E69E9840];
  if (a4 < 8)
  {
    goto LABEL_77;
  }

  v7 = *(a5 + 24) - 1;
  if (v7 < a4)
  {
    goto LABEL_77;
  }

  v5 = 0;
  v9 = (a2 + a4);
  if (a2 + a4 == -1)
  {
    goto LABEL_77;
  }

  v10 = *v9;
  if ((*v9 & 0xF0) != 0xD0)
  {
    goto LABEL_77;
  }

  v13 = (v9 + 1);
  v14 = v10 & 0xF;
  if ((v10 & 0xF) == 0xF)
  {
    if (a2 + v7 < v13)
    {
      goto LABEL_76;
    }

    v15 = v9 + 2;
    v16 = *v13;
    if ((*v13 & 0xF0) != 0x10)
    {
      goto LABEL_76;
    }

    v5 = 0;
    v17 = v16 & 0xF;
    v18 = 1 << (v16 & 0xF);
    if (__CFADD__(v18, v15) || v13 + v18 > a2 + v7)
    {
      goto LABEL_77;
    }

    if (v18 > 3u)
    {
      if (v18 == 4)
      {
        v14 = bswap32(*(v13 + 1));
        goto LABEL_24;
      }

      if (v18 == 8)
      {
        v14 = bswap64(*(v13 + 1));
        goto LABEL_23;
      }
    }

    else
    {
      if (v18 == 1)
      {
        v14 = *v15;
        goto LABEL_24;
      }

      if (v18 == 2)
      {
        v14 = __rev16(*(v13 + 1));
LABEL_24:
        v13 = &v15[v18];
        goto LABEL_25;
      }
    }

    if (v17 > 7)
    {
      v14 = 0;
      goto LABEL_24;
    }

    v14 = 0;
    v19 = v18;
    v20 = v13 + 1;
    do
    {
      v21 = *v20++;
      v14 = v21 | (v14 << 8);
      --v19;
    }

    while (v19);
LABEL_23:
    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_76;
    }

    goto LABEL_24;
  }

LABEL_25:
  if (v14)
  {
    v22 = 2 * v14;
    if (!is_mul_ok(2 * v14, *(a5 + 7)))
    {
      goto LABEL_76;
    }

    v23 = v22 * *(a5 + 7);
  }

  else
  {
    v23 = 0;
    v22 = 0;
  }

  v5 = 0;
  if (__CFADD__(v23, v13) || a2 + v7 < v13 + v23 - 1)
  {
    goto LABEL_77;
  }

  if (v22 >= 0x402)
  {
    v24 = 512;
  }

  else
  {
    v24 = v22 >> 1;
  }

  v25 = malloc_type_malloc(8 * v24, 0x6004044C4A2DFuLL);
  if (!v25)
  {
LABEL_76:
    v5 = 0;
    goto LABEL_77;
  }

  v26 = v25;
  if (!v22)
  {
LABEL_75:
    v5 = CFSetCreate(a1, v26, v22, &kCFTypeSetCallBacks);
    v27 = v22;
    goto LABEL_81;
  }

  v27 = 0;
  if (v22 >> 1 <= 1)
  {
    v22 = 1;
  }

  else
  {
    v22 >>= 1;
  }

  while (1)
  {
    if (v27 >= v24)
    {
      v24 = (3 * v24) >> 1;
      v28 = malloc_type_realloc(v26, 8 * v24, 0x6004044C4A2DFuLL);
      if (!v28)
      {
        break;
      }

      v26 = v28;
    }

    if (a2 + 8 > v13)
    {
      break;
    }

    v29 = a2 + *(a5 + 24);
    v30 = *(a5 + 7);
    if (v29 - v30 < v13)
    {
      break;
    }

    if (*(a5 + 7) <= 1u)
    {
      v31 = *(a5 + 7);
      if (!*(a5 + 7))
      {
        goto LABEL_56;
      }

      if (v30 == 1)
      {
        v31 = *v13;
        goto LABEL_56;
      }
    }

    else
    {
      switch(v30)
      {
        case 2:
          v31 = __rev16(*v13);
          goto LABEL_56;
        case 4:
          v31 = bswap32(*v13);
          goto LABEL_56;
        case 8:
          v31 = bswap64(*v13);
          goto LABEL_56;
      }
    }

    v31 = 0;
    v32 = v13;
    do
    {
      v33 = *v32;
      v32 = (v32 + 1);
      v31 = v33 | (v31 << 8);
      --v30;
    }

    while (v30);
LABEL_56:
    if (*(a5 + 8) <= v31)
    {
      break;
    }

    v34 = *(a5 + 6);
    v35 = (v29 + v31 * v34);
    if (*(a5 + 6) <= 1u)
    {
      if (*(a5 + 6))
      {
        if (v34 != 1)
        {
LABEL_67:
          v36 = *(a5 + 6);
          v34 = 0;
          do
          {
            v37 = *v35;
            v35 = (v35 + 1);
            v34 = v37 | (v34 << 8);
            --v36;
          }

          while (v36);
          goto LABEL_69;
        }

        v34 = *v35;
      }
    }

    else
    {
      switch(v34)
      {
        case 2:
          v34 = __rev16(*v35);
          break;
        case 4:
          v34 = bswap32(*v35);
          break;
        case 8:
          v34 = bswap64(*v35);
          break;
        default:
          goto LABEL_67;
      }
    }

LABEL_69:
    v42 = 0;
    v43[0] = 0;
    if (__CFBinaryPlistCreateObjectFiltered(a2, a3, v34, a5, a1, 0, 0, 0, 0, 0, 0, v43, &v42))
    {
      v38 = v42 == 7;
    }

    else
    {
      v38 = 0;
    }

    if (!v38)
    {
      if (v43[0])
      {
        CFRelease(v43[0]);
      }

      break;
    }

    v26[v27++] = v43[0];
    v13 = (v13 + *(a5 + 7));
    if (v27 == v22)
    {
      goto LABEL_75;
    }
  }

  v5 = 0;
LABEL_81:
  if (v27)
  {
    v41 = v26;
    do
    {
      if (*v41)
      {
        CFRelease(*v41);
      }

      ++v41;
      --v27;
    }

    while (v27);
  }

  free(v26);
LABEL_77:
  v39 = *MEMORY[0x1E69E9840];
  return v5;
}

uint64_t _CFPropertyListCreateFiltered(const __CFAllocator *a1, CFDataRef theData, uint64_t a3, const __CFSet *a4, CFTypeRef *a5, CFErrorRef *a6)
{
  v6 = 0;
  v25 = *MEMORY[0x1E69E9840];
  if (theData && a4)
  {
    v23 = 0;
    memset(v24, 0, sizeof(v24));
    v22 = 0;
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    cf = 0;
    if (Length >= 8 && (v15 = Length, __CFDataGetBinaryPlistTopLevelInfo(theData, &v23, &v22, v24)))
    {
      v16 = v22;
      TopLevelKeyPaths = __CFPropertyListCreateTopLevelKeyPaths(a1, a4);
      Mutable = CFDictionaryCreateMutable(a1, 0, 0, &kCFTypeDictionaryValueCallBacks);
      v6 = __CFBinaryPlistCreateObjectFiltered(BytePtr, v15, v16, v24, a1, a3, theData & (a3 << 47 >> 63), Mutable, 0, 0, TopLevelKeyPaths, &cf, 0);
      CFRelease(TopLevelKeyPaths);
      CFRelease(Mutable);
    }

    else
    {
      v6 = _CFPropertyListCreateWithData(a1, theData, a3, a6, 1, 0, a4, &cf);
    }

    if (a5 && (v6 & 1) != 0)
    {
      *a5 = cf;
    }

    else if (cf)
    {
      CFRelease(cf);
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return v6 & 1;
}

BOOL __CFSetApply_block_invoke(uint64_t a1, uint64_t a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v2 = *(a2 + 8);
  (*(*(a1 + 32) + 16))();
  result = v5 == 0;
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFTryParseBinaryPlist(__objc2_class **a1, CFDataRef theData, uint64_t a3, void *a4, CFTypeRef *a5)
{
  v21 = *MEMORY[0x1E69E9840];
  BytePtr = CFDataGetBytePtr(theData);
  Length = CFDataGetLength(theData);
  if (Length >= 8 && (v12 = Length, v19 = 0, memset(v20, 0, sizeof(v20)), *v18 = 0, __CFDataGetBinaryPlistTopLevelInfo(theData, &v19, v18, v20)))
  {
    Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, 0, &kCFTypeDictionaryValueCallBacks);
    _CFDictionarySetCapacity(Mutable, *(&v20[0] + 1));
    v17 = 0;
    v14 = __CFBinaryPlistCreateObjectFiltered(BytePtr, v12, *v18, v20, a1, a3, 0, Mutable, 0, 0, 0, &v17, 0);
    if (v14)
    {
      if (a4)
      {
        *a4 = v17;
      }
    }

    else
    {
      if (a4)
      {
        *a4 = 0;
      }

      if (a5)
      {
        *a5 = CFRetain(@"binary data is corrupt");
      }
    }

    CFRelease(Mutable);
  }

  else
  {
    v14 = 0;
  }

  v15 = *MEMORY[0x1E69E9840];
  return v14;
}

CFMutableArrayRef _CFBundleCopyFindResources(uint64_t a1, const __CFURL *a2, uint64_t a3, const __CFString *a4, const __CFString *a5, const __CFString *a6, const __CFString *a7, int a8, char a9, uint64_t a10)
{
  v104 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    __CFCheckCFInfoPACSignature(a1);
    v17 = _CFGetNonObjCTypeID(a1);
    if (v17 != 31)
    {
      _CFAssertMismatchedTypeID(0x1FuLL, v17);
    }
  }

  v95 = a5;
  v18 = dyld_program_sdk_at_least();
  v96 = a8;
  v91 = a7;
  theString = a4;
  if (!a6 || !v18)
  {
LABEL_16:
    if (!a4)
    {
      goto LABEL_42;
    }

    goto LABEL_17;
  }

  cf2 = a2;
  ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(&__kCFAllocatorSystemDefault, a6, @"/");
  Count = CFArrayGetCount(ArrayBySeparatingStrings);
  if (Count < 1)
  {
    CFRelease(ArrayBySeparatingStrings);
    a2 = cf2;
    if (!a4)
    {
LABEL_42:
      v93 = 0;
      v89 = 1;
      v28 = a5;
      if (!a5)
      {
        goto LABEL_55;
      }

      goto LABEL_50;
    }

LABEL_17:
    range = -1;
    Copy = _CFCreateLastPathComponent(&__kCFAllocatorSystemDefault, a4, &range);
    v27.length = range;
    v28 = a5;
    if (range < 1)
    {
      a4 = 0;
    }

    else
    {
      v27.location = 0;
      a4 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, a4, v27);
      if (range >= 1 && !CFStringGetLength(Copy))
      {
        v29 = range;
        if (v29 == CFStringGetLength(theString) - 1)
        {
          CFRelease(Copy);
          Copy = CFStringCreateCopy(&__kCFAllocatorSystemDefault, a4);
        }

        v28 = a5;
      }
    }

    if (CFStringGetFileSystemRepresentation(Copy, buffer, 1026))
    {
      CFRelease(Copy);
      v30 = CFStringCreateWithFileSystemRepresentation(&__kCFAllocatorSystemDefault, buffer);
    }

    else
    {
      v30 = Copy;
    }

    if (v30)
    {
      v93 = v30;
      Length = CFStringGetLength(v30);
      if (v28 && Length >= 1 && CFStringGetLength(v28) >= 1)
      {
        MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v93);
        if (CFStringGetCharacterAtIndex(v28, 0) != 46)
        {
          CFStringAppendCharacters(MutableCopy, _CFBundleCopyFindResources_extensionSep, 1);
        }

        CFStringAppend(MutableCopy, v28);
LABEL_36:
        v89 = 0;
        if (a6)
        {
          goto LABEL_56;
        }

        goto LABEL_37;
      }

      if (CFStringGetLength(v93) >= 1)
      {
        MutableCopy = CFRetain(v93);
        goto LABEL_36;
      }

      v89 = 0;
      if (!v28)
      {
        goto LABEL_55;
      }
    }

    else
    {
      v93 = 0;
      v89 = 1;
      if (!v28)
      {
        goto LABEL_55;
      }
    }

LABEL_50:
    if (CFStringGetLength(v28) >= 1)
    {
      MutableCopy = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, @"_CFBT_");
      if (CFStringGetCharacterAtIndex(v28, 0) != 46)
      {
        CFStringAppendCharacters(MutableCopy, _CFBundleCopyFindResources_extensionSep, 1);
      }

      CFStringAppend(MutableCopy, v28);
      if (a6)
      {
LABEL_56:
        v33 = CFStringGetLength(a6) != 0;
        if (a4)
        {
          goto LABEL_57;
        }

        goto LABEL_38;
      }

LABEL_37:
      v33 = 0;
      if (a4)
      {
LABEL_57:
        v34 = CFStringGetLength(a4) != 0;
        goto LABEL_58;
      }

LABEL_38:
      v34 = 0;
LABEL_58:
      if (!v33 || v34)
      {
        v38 = !v34;
        if ((v33 | v38))
        {
          if ((!v33 | v38))
          {
            v39 = 0;
          }

          else
          {
            v47 = CFStringCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, a6);
            _CFAppendPathComponent2(v47, a4);
            v39 = v47;
          }

          goto LABEL_66;
        }

        v37 = a4;
      }

      else
      {
        v37 = a6;
      }

      v39 = CFRetain(v37);
LABEL_66:
      cf1 = v39;
      if (a1)
      {
        v40 = _CFBundleLayoutVersion(a1);
      }

      else
      {
        v40 = 0;
      }

      LOBYTE(range) = v40;
      if (a2)
      {
        v41 = _CFBundleCopyLanguageSearchListInDirectory(a2, &range);
        v40 = range;
      }

      else
      {
        v41 = 0;
      }

      v42 = a4;
      if (v40 <= 1)
      {
        if (!v40)
        {
          v43 = @"Resources";
          goto LABEL_84;
        }

        if (v40 == 1)
        {
          v43 = @"Support Files/Resources";
          goto LABEL_84;
        }
      }

      else
      {
        switch(v40)
        {
          case 13:
            v43 = @"WrappedBundle";
            goto LABEL_84;
          case 12:
            v43 = @"WrappedBundle/Contents/Resources";
            goto LABEL_84;
          case 2:
            v43 = @"Contents/Resources";
            goto LABEL_84;
        }
      }

      v43 = &stru_1EF068AA8;
LABEL_84:
      cf = v41;
      v44 = _copyResourceURLsFromBundle(a1, a2, v41, v43, cf1, MutableCopy, a7, a8, a9, v40, a10);
      v45 = v44;
      if (v44)
      {
        v46 = CFGetTypeID(v44);
        if (v46 != CFArrayGetTypeID())
        {
          a8 = v96;
          goto LABEL_123;
        }

        a8 = v96;
        if (CFArrayGetCount(v45))
        {
          goto LABEL_123;
        }
      }

      if ((range & 0xFD) != 0)
      {
        goto LABEL_123;
      }

      if (a1)
      {
        cf2a = *(a1 + 192);
        CFRetain(cf2a);
      }

      else
      {
        v48 = CFURLCopyAbsoluteURL(a2);
        cf2a = CFURLCopyFileSystemPath(v48, kCFURLPOSIXPathStyle);
        v49 = v48;
        a8 = v96;
        CFRelease(v49);
      }

      if (range && !CFEqual(@"/Library/Spotlight", cf2a))
      {
LABEL_122:
        CFRelease(cf2a);
LABEL_123:
        v60 = theString;
        v59 = v93;
        if (a1)
        {
          os_unfair_lock_lock((a1 + 200));
          v61 = *(a1 + 208);
          if (v61 && (a8 || !v45))
          {
            v63 = CFDictionaryGetCount(v61);
            v64 = malloc_type_malloc(8 * v63, 0xC0040B8AA526DuLL);
            v65 = malloc_type_malloc(8 * v63, 0xC0040B8AA526DuLL);
            v84 = v64;
            CFDictionaryGetKeysAndValues(*(a1 + 208), v64, v65);
            v83 = v65;
            if (v63 < 1)
            {
              v66 = v45;
              v62 = v89;
              v72 = v84;
            }

            else
            {
              v66 = 0;
              v67 = v65;
              v68 = v96;
              do
              {
                LOBYTE(v82) = a9;
                Resources = _CFBundleCopyFindResources(*v67, 0);
                if (Resources)
                {
                  v70 = v68;
                  v71 = Resources;
                  if (!v70)
                  {
                    goto LABEL_139;
                  }

                  if (!v66)
                  {
                    v66 = CFArrayCreateMutableCopy(&__kCFAllocatorSystemDefault, 0, v45);
                  }

                  v107.length = CFArrayGetCount(v71);
                  v107.location = 0;
                  CFArrayAppendArray(v66, v71, v107);
                  CFRelease(v71);
                }

                ++v67;
                --v63;
                v68 = v96;
              }

              while (v63);
              v71 = v45;
LABEL_139:
              v28 = v95;
              v72 = v84;
              if (v66)
              {
                if (v71)
                {
                  CFRelease(v71);
                }
              }

              else
              {
                v66 = v71;
              }

              v62 = v89;
            }

            free(v72);
            free(v83);
            v45 = v66;
            v60 = theString;
          }

          else
          {
            v62 = v89;
          }

          os_unfair_lock_unlock((a1 + 200));
          v59 = v93;
          if (v62)
          {
            goto LABEL_148;
          }
        }

        else if (v89)
        {
          goto LABEL_148;
        }

        CFRelease(v59);
LABEL_148:
        if (cf1)
        {
          CFRelease(cf1);
        }

        if (v42)
        {
          CFRelease(v42);
        }

        if (cf)
        {
          CFRelease(cf);
        }

        CFRelease(MutableCopy);
        v73 = _CFBundleResourceLogger();
        if (os_log_type_enabled(v73, OS_LOG_TYPE_DEBUG))
        {
          Mutable = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
          v75 = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
          v76 = CFStringCreateMutable(&__kCFAllocatorSystemDefault, 0);
          if (a1)
          {
            CFStringAppendFormat(Mutable, 0, @"%@", a1);
          }

          else if (a2)
          {
            CFStringAppendFormat(Mutable, 0, @"CFURL %@", a2);
          }

          if (v60)
          {
            CFStringAppend(v75, v60);
          }

          if (v28)
          {
            CFStringAppendFormat(v75, 0, @" type: %@", v28);
          }

          if (a6)
          {
            CFStringAppendFormat(v75, 0, @" path: %@", a6);
          }

          if (v91)
          {
            CFStringAppendFormat(v75, 0, @" localization: %@", v91);
          }

          if (v45)
          {
            v77 = CFGetTypeID(v45);
            if (v77 == CFArrayGetTypeID())
            {
              if (CFArrayGetCount(v45) >= 1)
              {
                v78 = 0;
                do
                {
                  ValueAtIndex = CFArrayGetValueAtIndex(v45, v78);
                  CFStringAppendFormat(v76, 0, @"%@, ", ValueAtIndex);
                  ++v78;
                }

                while (v78 < CFArrayGetCount(v45));
              }
            }

            else
            {
              CFStringAppendFormat(v76, 0, @"%@", v45);
            }
          }

          else
          {
            CFStringAppendFormat(v76, 0, @"None", v82);
          }

          v80 = _CFBundleResourceLogger();
          if (os_log_type_enabled(v80, OS_LOG_TYPE_DEBUG))
          {
            *buffer = 138478339;
            v99 = Mutable;
            v100 = 2114;
            v101 = v75;
            v102 = 2114;
            v103 = v76;
            _os_log_debug_impl(&dword_1830E6000, v80, OS_LOG_TYPE_DEBUG, "Resource lookup at %{private}@\n\tRequest       : %{public}@\n\tResult        : %{public}@\n", buffer, 0x20u);
          }

          CFRelease(Mutable);
          CFRelease(v75);
          CFRelease(v76);
        }

        goto LABEL_178;
      }

      if (v45)
      {
        CFRelease(v45);
      }

      v50 = range;
      if (!range)
      {
        v51 = cf1;
        if (!cf1)
        {
LABEL_103:
          v52 = cf;
          if (v50 == 2 && v51)
          {
            if (CFEqual(v51, @"Contents/Resources"))
            {
              goto LABEL_106;
            }

            v50 = range;
            v51 = cf1;
            v52 = cf;
          }

          if (!v50 && v51 && (v54 = CFStringGetLength(v51), v52 = cf, v51 = cf1, v54 >= 11) && (HasPrefix = CFStringHasPrefix(cf1, @"Resources/"), v52 = cf, v51 = cf1, HasPrefix))
          {
            v86 = a6;
            v56 = -10;
            v57 = 10;
          }

          else
          {
            if (range != 2 || !v51)
            {
              v43 = &stru_1EF068AA8;
              v53 = v51;
              goto LABEL_121;
            }

            v53 = v51;
            if (CFStringGetLength(v51) < 20)
            {
              v43 = &stru_1EF068AA8;
              goto LABEL_120;
            }

            if (!CFStringHasPrefix(v53, @"Contents/Resources/"))
            {
              v43 = &stru_1EF068AA8;
              v53 = cf1;
              goto LABEL_120;
            }

            v86 = a6;
            v56 = -19;
            v57 = 19;
            v51 = cf1;
          }

          v58 = v51;
          v106.length = CFStringGetLength(v51) + v56;
          v106.location = v57;
          v53 = CFStringCreateWithSubstring(&__kCFAllocatorSystemDefault, v58, v106);
          a6 = v86;
          v28 = v95;
LABEL_119:
          CFRelease(cf1);
          a8 = v96;
LABEL_120:
          v52 = cf;
LABEL_121:
          cf1 = v53;
          v45 = _copyResourceURLsFromBundle(a1, a2, v52, v43, v53, MutableCopy, v91, a8, a9, range, a10);
          goto LABEL_122;
        }

        if (CFEqual(cf1, @"Resources"))
        {
LABEL_106:
          v53 = &stru_1EF068AA8;
          goto LABEL_119;
        }

        v50 = range;
      }

      v51 = cf1;
      goto LABEL_103;
    }

LABEL_55:
    MutableCopy = CFRetain(@"_CFBAF_");
    if (a6)
    {
      goto LABEL_56;
    }

    goto LABEL_37;
  }

  v21 = Count;
  v85 = a6;
  v22 = 0;
  v23 = 0;
  do
  {
    v24 = CFArrayGetValueAtIndex(ArrayBySeparatingStrings, v22);
    v25 = v24;
    if (v22 || CFStringCompare(v24, &stru_1EF068AA8, 0))
    {
      if (CFStringCompare(v25, @".", 0))
      {
        if (CFStringCompare(v25, @"..", 0))
        {
          ++v23;
        }

        else
        {
          --v23;
        }

        if (v23 < 0)
        {
          CFRelease(ArrayBySeparatingStrings);
          goto LABEL_45;
        }
      }
    }

    ++v22;
  }

  while (v21 != v22);
  CFRelease(ArrayBySeparatingStrings);
  a4 = theString;
  a6 = v85;
  a2 = cf2;
  if ((v23 & 0x80000000) == 0)
  {
    goto LABEL_16;
  }

LABEL_45:
  if (!a8)
  {
    v45 = 0;
LABEL_178:
    v81 = *MEMORY[0x1E69E9840];
    return v45;
  }

  v35 = *MEMORY[0x1E69E9840];

  return CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
}

void _CFNotificationCenterInitializeDependentNotificationIfNecessary(uint64_t a1)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v12[0] = a1;
  os_unfair_lock_lock(&_dependentNotificationLock);
  for (i = 0; i != 8; ++i)
  {
    v2 = (&_unprocessedDependentNotificationLists)[i];
    if (!v2)
    {
      break;
    }

    v3 = *v2;
    if (*v2)
    {
      v4 = v2 + 1;
      do
      {
        v5 = _dependentNotifications;
        if (!_dependentNotifications)
        {
          *&callBacks.version = xmmword_1EF065740;
          *&callBacks.release = *algn_1EF065750;
          *&callBacks.equal = xmmword_1EF065760;
          v5 = CFSetCreateMutable(&__kCFAllocatorSystemDefault, 0, &callBacks);
          _dependentNotifications = v5;
        }

        CFSetAddValue(v5, v3);
        v6 = *v4++;
        v3 = v6;
      }

      while (v6);
    }

    (&_unprocessedDependentNotificationLists)[i] = 0;
  }

  memset(&callBacks.retain, 0, sizeof(CFSetCallBacks));
  callBacks.version = v12;
  Value = CFSetGetValue(_dependentNotifications, &callBacks);
  os_unfair_lock_unlock(&_dependentNotificationLock);
  if (Value)
  {
    v8 = *(Value + 1);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = ___CFNotificationCenterInitializeDependentNotificationIfNecessary_block_invoke;
    block[3] = &__block_descriptor_40_e5_v8__0l;
    block[4] = Value;
    if (*v8 != -1)
    {
      dispatch_once(v8, block);
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

CFStringRef CFStringCreateWithFileSystemRepresentation(CFAllocatorRef alloc, const char *buffer)
{
  v4 = CFStringFileSystemEncoding();

  return CFStringCreateWithCString(alloc, buffer, v4);
}

CFDictionaryRef _copyQueryTable(uint64_t a1, CFURLRef relativeURL, const __CFArray *cf, const __CFString *a4, const __CFString *a5)
{
  v7 = cf;
  if (a1 && !cf)
  {
    v7 = _CFBundleCopyLanguageSearchListInBundle(a1);
    goto LABEL_7;
  }

  if (cf)
  {
    CFRetain(cf);
  }

  if (a1)
  {
LABEL_7:
    if (a5)
    {
      MutableCopy = CFStringCreateMutableCopy(0, 0, a4);
      _CFAppendPathComponent2(MutableCopy, a5);
    }

    else
    {
      MutableCopy = CFRetain(a4);
    }

    os_unfair_lock_lock((a1 + 176));
    v11 = *(a1 + 184);
    if (v11)
    {
      Value = CFDictionaryGetValue(v11, MutableCopy);
      if (Value)
      {
        QueryTableAtPath = Value;
        CFRetain(Value);
LABEL_15:
        os_unfair_lock_unlock((a1 + 176));
        goto LABEL_16;
      }
    }

    else
    {
      *(a1 + 184) = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    }

    QueryTableAtPath = _createQueryTableAtPath(*(a1 + 192), v7, a4, a5, *(a1 + 55));
    CFDictionarySetValue(*(a1 + 184), MutableCopy, QueryTableAtPath);
    goto LABEL_15;
  }

  v15 = CFURLCopyAbsoluteURL(relativeURL);
  MutableCopy = CFURLCopyFileSystemPath(v15, kCFURLPOSIXPathStyle);
  CFRelease(v15);
  QueryTableAtPath = _createQueryTableAtPath(MutableCopy, v7, a4, a5, 0);
LABEL_16:
  CFRelease(MutableCopy);
  if (v7)
  {
    CFRelease(v7);
  }

  if (QueryTableAtPath)
  {
    return QueryTableAtPath;
  }

  return CFDictionaryCreate(&__kCFAllocatorSystemDefault, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
}

CFMutableArrayRef CFArrayCreateMutableCopy(CFAllocatorRef allocator, CFIndex capacity, CFArrayRef theArray)
{
  if (CF_IS_OBJC(0x13uLL, theArray))
  {
    goto LABEL_2;
  }

  if (__CFArrayGetCallBacks(theArray) != &kCFTypeArrayCallBacks || &__kCFAllocatorSystemDefault != allocator && (allocator || &__kCFAllocatorSystemDefault != CFAllocatorGetDefault()))
  {
    goto LABEL_6;
  }

  if (__FoundationPresent_static_init != -1)
  {
    CFArrayCreateMutableCopy_cold_1();
  }

  if (__FoundationPresent_present)
  {
LABEL_2:
    v6 = [NSMutableArray alloc];

    return [(NSArray *)v6 initWithArray:theArray copyItems:0];
  }

  else
  {
LABEL_6:

    return __CFArrayCreateMutableCopy0(allocator, capacity, theArray);
  }
}

void CFBagRemoveValue(CFMutableBagRef theBag, const void *value)
{
  v10 = atomic_load(theBag + 1);
  if ((v10 & 0x40) != 0)
  {
    CFLog(3, @"%s(): immutable collection %p given to mutating function", v2, v3, v4, v5, v6, v7, "void CFBagRemoveValue(CFMutableBagRef, const void *)");
  }

  CFBasicHashRemoveValue(theBag, value);
}

CFURLRef CFURLCreateCopyAppendingPathComponent(CFAllocatorRef allocator, CFURLRef url, CFStringRef pathComponent, Boolean isDirectory)
{
  v4 = isDirectory;
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLCreateCopyAppendingPathComponent_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, url))
    {
      url = [(__CFURL *)url _cfurl];
    }

    v8 = [(__CFURL *)url _URLByAppendingPathComponent:pathComponent isDirectory:v4 != 0 encodingSlashes:0];

    return v8;
  }

  else
  {

    return __CFURLCreateCopyAppendingPathComponent(allocator, url, pathComponent, v4, @";?");
  }
}

void CFStringSetExternalCharactersNoCopy(CFMutableStringRef theString, UniChar *chars, CFIndex length, CFIndex capacity)
{
  v4 = atomic_load(&theString->info);
  if (v4)
  {
    theString->data = chars;
    v13 = atomic_load(&theString->info);
    v14 = (v13 & 0x60) == 0;
    v15 = 24;
    if (v14)
    {
      v15 = 16;
    }

    *(&theString->isa + v15) = length;
    v16 = theString[1].info | 8;
    theString[1].isa = (2 * capacity);
    theString[1].info = v16;
  }

  else
  {
    v5 = _CFOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      CFStringSetExternalCharactersNoCopy_cold_1(v5, v6, v7, v8, v9, v10, v11, v12);
    }
  }
}

objc_class *__NSDictionaryParameterCheckIterate(objc_class *result, const char *a2, uint64_t a3)
{
  if (!a3)
  {
    v3 = __CFExceptionProem(result, a2);
    v4 = CFStringCreateWithFormat(&__kCFAllocatorSystemDefault, 0, @"%@: block is nil", v3);
    v5 = [NSException exceptionWithName:@"NSInvalidArgumentException" reason:_CFAutoreleasePoolAddObject(0 userInfo:v4), 0];
    objc_exception_throw(v5);
  }

  return result;
}

void _CFErrorSetCallStackReturnAddresses(void *a1, id value)
{
  if (value)
  {

    objc_setAssociatedObject(a1, "CFErrorCallStacks", value, 0x303);
  }

  else if (atomic_load_explicit(_CFErrorCallStackCaptureEnabled, memory_order_acquire))
  {
    _CFErrorSetCallStackReturnAddresses_cold_1(a1);
  }
}

CFSetRef CFSetCreateCopy(CFAllocatorRef allocator, CFSetRef theSet)
{
  if (CF_IS_OBJC(0x11uLL, theSet))
  {

    return [(__CFSet *)theSet copyWithZone:0];
  }

  else
  {
    Copy = CFBasicHashCreateCopy(allocator, theSet, v4, v5, v6, v7, v8, v9);
    v12 = Copy;
    if (Copy)
    {
      v13 = atomic_load(Copy + 1);
      v14 = v13;
      do
      {
        atomic_compare_exchange_strong(Copy + 1, &v14, v13 | 0x40);
        v15 = v14 == v13;
        v13 = v14;
      }

      while (!v15);
      _CFRuntimeSetInstanceTypeIDAndIsa(Copy, 0x11uLL);
      if (__CFOASafe == 1)
      {
        __CFSetLastAllocationEventName();
      }
    }

    return v12;
  }
}

uint64_t CFBasicHashCreateCopy(__objc2_class **a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *(a2 + 18);
  v11 = 56;
  if ((v10 & 4) == 0)
  {
    v11 = 48;
  }

  if ((v10 & 0x18) != 0)
  {
    v12 = v11 + 8;
  }

  else
  {
    v12 = v11;
  }

  v13 = __CFBasicHashTableSizes[*(a2 + 26)];
  if (v13 < 1)
  {
    v17 = 0;
    v16 = 0;
    v15 = 0;
    goto LABEL_23;
  }

  if (v13 >> 60)
  {
    goto LABEL_82;
  }

  Typed = CFAllocatorAllocateTyped(a1, 8 * v13, 3792533832, 0);
  if (!Typed)
  {
    return 0;
  }

  v15 = Typed;
  if (__CFOASafe == 1)
  {
    __CFSetLastAllocationEventName();
  }

  if ((*(a2 + 18) & 4) != 0)
  {
    v18 = CFAllocatorAllocateTyped(a1, 8 * v13, 3792533832, 0);
    if (!v18)
    {
      return 0;
    }

    v16 = v18;
    if (__CFOASafe == 1)
    {
      __CFSetLastAllocationEventName();
    }
  }

  else
  {
    v16 = 0;
  }

  v19 = *(a2 + 18);
  if ((v19 & 0x18) == 0)
  {
    v17 = 0;
    goto LABEL_23;
  }

  v20 = CFAllocatorAllocateTyped(a1, v13 << ((v19 >> 5) & 3), 3792533832, 0);
  if (!v20)
  {
    return 0;
  }

  v17 = v20;
  if (__CFOASafe == 1)
  {
    __CFSetLastAllocationEventName();
  }

LABEL_23:
  Instance = _CFRuntimeCreateInstance(a1, 3uLL, v12 - 16, 0, a5, a6, a7, a8);
  v21 = Instance;
  if (Instance)
  {
    v23 = *(a2 + 32);
    *(Instance + 16) = *(a2 + 16);
    *(Instance + 32) = v23 & 0xFFFFFFFFFFFFFFF7;
    *(Instance + 16) = 1;
    if (v13)
    {
      v24 = *(a2 + 40);
      v25 = *(a2 + 18);
      if ((v25 & 4) != 0)
      {
        v26 = *(a2 + 48);
      }

      else
      {
        v26 = 0;
      }

      if ((v25 & 0x18) != 0)
      {
        v27 = *(a2 + 40 + (v25 & 0x18));
      }

      else
      {
        v27 = 0;
      }

      *(Instance + 40) = v15;
      v28 = (Instance + 40);
      if (v16)
      {
        v28[(*(Instance + 18) >> 2) & 1] = v16;
      }

      __src = v27;
      if (v17)
      {
        *(v28 + (*(Instance + 18) & 0x18)) = v17;
      }

      if (v13 >= 1)
      {
        v29 = 0;
        v45 = (Instance - 16);
        do
        {
          v30 = *(v24 + 8 * v29);
          if ((v30 - 1) > 0xFFFFFFFFFFFFFFFDLL)
          {
            *(*v28 + 8 * v29) = v30;
            if (v16)
            {
              if ((*(v21 + 18) & 4) == 0)
              {
                goto LABEL_81;
              }

              *(*(v21 + 48) + 8 * v29) = v30;
            }
          }

          else
          {
            if (v30 == 2814029233)
            {
              v30 = 0;
            }

            if (v30 == 2780474809)
            {
              v31 = -1;
            }

            else
            {
              v31 = v30;
            }

            v32 = *(CFBasicHashCallBackPtrs[(*(v21 + 24) >> 39) & 0x1FLL] + 8 * ((*(v21 + 24) >> 34) & 0x1FLL));
            if (v32 && (*(v21 + 32) & 2) == 0)
            {
              v33 = &kCFAllocatorSystemDefault;
              if ((v21 & 0x8000000000000000) == 0)
              {
                v34 = atomic_load((v21 + 8));
                v35 = (v34 & 0x80) == 0;
                v33 = v45;
                if (!v35)
                {
                  v33 = &kCFAllocatorSystemDefault;
                }
              }

              v31 = v32(*v33, v31);
            }

            if (v31)
            {
              v36 = v31;
            }

            else
            {
              v36 = 2814029233;
            }

            if (v36 == -1)
            {
              v36 = 2780474809;
            }

            *(*v28 + 8 * v29) = v36;
            if (v16)
            {
              v37 = *(v26 + 8 * v29);
              if (v37 == 2814029233)
              {
                v37 = 0;
              }

              if (v37 == 2780474809)
              {
                v38 = -1;
              }

              else
              {
                v38 = v37;
              }

              v39 = *(CFBasicHashCallBackPtrs[(*(v21 + 24) >> 29) & 0x1FLL] + 8 * ((*(v21 + 24) >> 24) & 0x1FLL));
              if (v39 && (*(v21 + 32) & 2) == 0)
              {
                v40 = &kCFAllocatorSystemDefault;
                if ((v21 & 0x8000000000000000) == 0)
                {
                  v41 = atomic_load((v21 + 8));
                  v35 = (v41 & 0x80) == 0;
                  v40 = v45;
                  if (!v35)
                  {
                    v40 = &kCFAllocatorSystemDefault;
                  }
                }

                v38 = v39(*v40, v38);
              }

              if ((*(v21 + 18) & 4) == 0)
              {
LABEL_81:
                __break(1u);
LABEL_82:
                CFBasicHashCreateCopy_cold_1();
              }

              if (v38)
              {
                v42 = v38;
              }

              else
              {
                v42 = 2814029233;
              }

              if (v42 == -1)
              {
                v42 = 2780474809;
              }

              *(*(v21 + 48) + 8 * v29) = v42;
            }
          }

          ++v29;
        }

        while (v13 != v29);
      }

      if (v17 && __src)
      {
        memmove(v17, __src, v13 << ((*(v21 + 18) >> 5) & 3));
      }
    }
  }

  return v21;
}

void CFRunLoopAddObserver(CFRunLoopRef rl, CFRunLoopObserverRef observer, CFRunLoopMode mode)
{
  context[2] = *MEMORY[0x1E69E9840];
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
    CFRunLoopAddObserver_cold_1(rl);
  }

  v8 = atomic_load(rl + 1);
  if ((v8 & 4) == 0)
  {
    v9 = atomic_load(observer + 1);
    if ((v9 & 8) != 0)
    {
      v10 = *(observer + 10);
      if (!v10 || v10 == rl)
      {
        pthread_mutex_lock((rl + 16));
        if (mode == @"kCFRunLoopCommonModes")
        {
          v17 = *(rl + 330);
          if (v17)
          {
            Copy = CFSetCreateCopy(&__kCFAllocatorSystemDefault, v17);
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

          CFSetAddValue(Mutable, observer);
          if (!Copy)
          {
            goto LABEL_30;
          }

          context[0] = rl;
          context[1] = observer;
          CFSetApplyFunction(Copy, __CFRunLoopAddItemToCommonModes, context);
        }

        else
        {
          v11 = __CFRunLoopCopyMode(rl, mode, 1);
          if (!v11)
          {
LABEL_30:
            pthread_mutex_unlock((rl + 16));
            goto LABEL_31;
          }

          Copy = v11;
          pthread_mutex_lock((v11 + 16));
          v13 = *(Copy + 14);
          if (!v13)
          {
            v13 = CFArrayCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFTypeArrayCallBacks);
            *(Copy + 14) = v13;
          }

          v21.length = CFArrayGetCount(v13);
          v21.location = 0;
          if (!CFArrayContainsValue(v13, v21, observer))
          {
            v14 = CFArrayGetCount(*(Copy + 14)) + 1;
            do
            {
              v15 = v14 - 1;
              if (v14 == 1)
              {
                break;
              }

              ValueAtIndex = CFArrayGetValueAtIndex(*(Copy + 14), v14 - 2);
              v14 = v15;
            }

            while (ValueAtIndex[13] > *(observer + 13));
            CFArrayInsertValueAtIndex(*(Copy + 14), v15, observer);
            *(Copy + 18) |= *(observer + 12);
            __CFRunLoopObserverSchedule(observer, rl);
          }

          pthread_mutex_unlock((Copy + 16));
        }

        CFRelease(Copy);
        goto LABEL_30;
      }
    }
  }

LABEL_31:
  v19 = *MEMORY[0x1E69E9840];
}

Boolean CFArrayContainsValue(CFArrayRef theArray, CFRange range, const void *value)
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
  if (length < 1)
  {
    return 0;
  }

  while (1)
  {
    v8 = [(__CFArray *)theArray objectAtIndex:location];
    if (v8 == value)
    {
      break;
    }

    equal = v7->equal;
    if (equal)
    {
      if (equal(value, v8))
      {
        break;
      }
    }

    ++location;
    if (!--length)
    {
      return 0;
    }
  }

  return 1;
}

CFIndex _CFNonObjCStringGetBytes(uint64_t theString, CFRange range, uint64_t a3, unsigned int a4, int a5, UniChar *buffer, uint64_t a7, CFIndex *a8)
{
  length = range.length;
  location = range.location;
  v16 = atomic_load((theString + 8));
  if ((v16 & 0x10) == 0)
  {
    v17 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v17 = __CFStringComputeEightBitStringEncoding();
    }

    if (v17 == a3)
    {
LABEL_5:
      v18 = atomic_load((theString + 8));
      v19 = (theString + 16);
      if ((v18 & 0x60) != 0)
      {
        v20 = *v19;
        if (buffer)
        {
LABEL_7:
          if (length >= a7)
          {
            length = a7;
          }

          v21 = atomic_load((theString + 8));
          memmove(buffer, &v20[location + ((v21 >> 2) & 1)], length);
        }
      }

      else
      {
        v24 = atomic_load((theString + 8));
        v20 = &v19[(v24 & 5) != 4];
        if (buffer)
        {
          goto LABEL_7;
        }
      }

      if (a8)
      {
        *a8 = length;
      }

      return length;
    }

    v23 = __CFDefaultEightBitStringEncoding;
    if (__CFDefaultEightBitStringEncoding == -1)
    {
      v23 = __CFStringComputeEightBitStringEncoding();
    }

    if (v23 == 1536)
    {
      if (BYTE1(a3) <= 7u)
      {
        if (BYTE1(a3) <= 1u)
        {
          if (BYTE1(a3))
          {
            if (a3 == 134217984)
            {
              goto LABEL_5;
            }
          }

          else if ((a3 > 0x22 || ((1 << a3) & 0x600000032) == 0) && a3 != 152)
          {
            goto LABEL_5;
          }

          goto LABEL_45;
        }

        if (BYTE1(a3) == 2)
        {
          if (a3 != 518)
          {
            goto LABEL_5;
          }

          goto LABEL_45;
        }

        if (BYTE1(a3) == 6)
        {
          if (a3 == 1536)
          {
            goto LABEL_5;
          }

          goto LABEL_45;
        }

LABEL_34:
        if ((a3 & 0xFF00u) <= 0xC00)
        {
          goto LABEL_5;
        }

        goto LABEL_45;
      }

      if (BYTE1(a3) > 0xAu)
      {
        if (BYTE1(a3) != 11)
        {
          if (BYTE1(a3) == 12)
          {
            goto LABEL_45;
          }

          goto LABEL_34;
        }

        if ((a3 - 3059) > 0xC)
        {
          goto LABEL_5;
        }

        v25 = 1 << (a3 + 13);
        v26 = 4099;
      }

      else
      {
        if (BYTE1(a3) == 8)
        {
          goto LABEL_45;
        }

        if (BYTE1(a3) != 10)
        {
          goto LABEL_34;
        }

        if ((a3 - 2561) > 0xF)
        {
          goto LABEL_5;
        }

        v25 = 1 << (a3 - 1);
        v26 = 32785;
      }

      if ((v25 & v26) == 0)
      {
        goto LABEL_5;
      }
    }
  }

LABEL_45:
  v27.location = location;
  v27.length = length;

  return __CFStringEncodeByteStream(theString, v27, a5, a3, a4, buffer, a7, a8);
}

CFErrorRef CFErrorCreateWithUserInfoKeysAndValues(CFAllocatorRef allocator, CFErrorDomain domain, CFIndex code, const void *const *userInfoKeys, const void *const *userInfoValues, CFIndex numUserInfoValues)
{
  result = CFDictionaryCreate(allocator, userInfoKeys, userInfoValues, numUserInfoValues, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  if (result)
  {
    v10 = result;
    v11 = CFErrorCreate(allocator, domain, code, result);
    CFRelease(v10);
    return v11;
  }

  return result;
}

uint64_t __CFRunLoopObserverSchedule(uint64_t a1, uint64_t a2)
{
  pthread_mutex_lock((a1 + 16));
  v4 = *(a1 + 88);
  if (!v4)
  {
    *(a1 + 80) = a2;
  }

  *(a1 + 88) = v4 + 1;

  return pthread_mutex_unlock((a1 + 16));
}

CFDictionaryRef _CFErrorCreateEmptyDictionary(CFAllocatorRef allocator)
{
  if (allocator)
  {
    v1 = allocator;
  }

  else
  {
    v2 = _CFGetTSD(1u);
    if (v2)
    {
      v1 = v2;
    }

    else
    {
      v1 = &__kCFAllocatorSystemDefault;
    }
  }

  if (&__kCFAllocatorSystemDefault == v1 || !v1 && &__kCFAllocatorSystemDefault == CFAllocatorGetDefault())
  {

    return CFRetain(&__NSDictionary0__struct);
  }

  else
  {

    return CFDictionaryCreate(v1, 0, 0, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }
}

void __NSDictionaryEnumerate(void *a1, char a2, uint64_t a3)
{
  v41 = *MEMORY[0x1E69E9840];
  v6 = [a1 count];
  if (v6)
  {
    v7 = v6;
    if ((a2 & 1) == 0)
    {
      goto LABEL_20;
    }

    v16 = __CFActiveProcessorCount();
    if (v16 < 2)
    {
      a2 = 0;
    }

    if (a2)
    {
      v8 = 32;
      v9 = 16;
      v10 = 4;
      if (v7 < 4 * v16)
      {
        v10 = 1;
      }

      if (v7 < 16 * v16)
      {
        v9 = v10;
      }

      if (v7 < 32 * v16)
      {
        v8 = v9;
      }

      if (48 * v16 > v7)
      {
        v11 = v8;
      }

      else
      {
        v11 = 48;
      }

      if (v7 < v16 << 6)
      {
        v12 = v11;
      }

      else
      {
        v12 = 64;
      }

      v13 = (v7 + v12 - 1) / v12;
      v14 = _CFAutoreleasePoolPush();
      v15 = [a1 keyEnumerator];
      v39 = 0u;
      v38 = 0u;
      v37 = 0u;
      v40 = 0;
      v36 = 850045857;
      v34[0] = 0;
      v34[1] = v34;
      v34[2] = 0x2020000000;
      v35 = 0;
      block[0] = MEMORY[0x1E69E9820];
      block[1] = 3221225472;
      block[2] = ____NSDictionaryEnumerate_block_invoke;
      block[3] = &unk_1E6D81EE8;
      block[8] = v12;
      block[9] = &v36;
      block[6] = a3;
      block[7] = v34;
      block[4] = v15;
      block[5] = a1;
      dispatch_apply(v13, 0, block);
      _CFAutoreleasePoolPop(v14);
      _Block_object_dispose(v34, 8);
    }

    else
    {
LABEL_20:
      v17 = _CFAutoreleasePoolPush();
      objc_lookUpClass("__NSCFDictionary");
      if (objc_opt_isKindOfClass())
      {
        v32[0] = MEMORY[0x1E69E9820];
        v32[1] = 3221225472;
        v32[2] = ____NSDictionaryEnumerate_block_invoke_2;
        v32[3] = &unk_1E6D7D948;
        v32[4] = a3;
        CFBasicHashApply(a1, v32);
      }

      else
      {
        if (((v7 >> 59) & 0xF) != 0)
        {
          v30 = CFStringCreateWithFormat(0, 0, @"*** attempt to create a temporary id buffer which is too large or with a negative count (%lu) -- possibly data is corrupt", 2 * v7);
          v31 = [NSException exceptionWithName:@"NSGenericException" reason:v30 userInfo:0];
          CFRelease(v30);
          objc_exception_throw(v31);
        }

        if (2 * v7 <= 1)
        {
          v19 = 1;
        }

        else
        {
          v19 = 2 * v7;
        }

        v20 = MEMORY[0x1EEE9AC00](v19, v18);
        v22 = (v32 - v21);
        v36 = 0;
        if (v23 >= 0x101)
        {
          v22 = _CFCreateArrayStorage(v20, 0, &v36);
          v24 = v22;
        }

        else
        {
          v24 = 0;
        }

        [a1 getObjects:&v22[v7] andKeys:v22 count:v7];
        LOBYTE(v34[0]) = 0;
        v25 = v7 - 1;
        do
        {
          v26 = v25;
          v27 = *v22;
          v28 = v22[v7];
          __NSDICTIONARY_IS_CALLING_OUT_TO_A_BLOCK__(a3);
          if (v34[0])
          {
            break;
          }

          v25 = v26 - 1;
          ++v22;
        }

        while (v26);
        free(v24);
      }

      _CFAutoreleasePoolPop(v17);
    }
  }

  v29 = *MEMORY[0x1E69E9840];
}

uint64_t _CFNonObjCEqual(unint64_t *a1, unint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a2)
  {
    _CFNonObjCEqual_cold_1();
  }

  if ((a2 & 0x8000000000000000) == 0)
  {
    v11 = atomic_load((a2 + 8));
    v12 = (v11 >> 8) & 0x3FF;
    goto LABEL_33;
  }

  v4 = 0;
  v5 = *MEMORY[0x1E69E5910];
  if ((~a2 & 0xC000000000000007) == 0)
  {
    v5 = 0;
  }

  v6 = v5 ^ a2;
  do
  {
    if ((v6 & 7) == *(MEMORY[0x1E69E5900] + v4))
    {
      break;
    }

    ++v4;
  }

  while (v4 != 7);
  v7 = v4 | v6;
  v8 = v4 & 7;
  v9 = (v7 >> 55) + 8;
  if (v8 == 7)
  {
    LODWORD(v8) = v9;
  }

  if (v8 > 4)
  {
    if (v8 > 19)
    {
      if (v8 != 20)
      {
        if (v8 != 22)
        {
LABEL_32:
          v12 = [a2 _cfTypeID];
          goto LABEL_33;
        }

LABEL_26:
        v12 = 7;
        goto LABEL_33;
      }
    }

    else if (v8 != 5)
    {
      if (v8 == 6)
      {
        v12 = 42;
        goto LABEL_33;
      }

      goto LABEL_32;
    }

LABEL_27:
    v12 = 1;
    goto LABEL_33;
  }

  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v12 = 22;
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  if (v8)
  {
    if (v8 != 2)
    {
      goto LABEL_32;
    }

    goto LABEL_26;
  }

  if (dyld_program_sdk_at_least())
  {
    v12 = 7;
  }

  else
  {
    v12 = 1;
  }

LABEL_33:
  if (CF_IS_OBJC(v12, a2))
  {
    return [a2 isEqual:a1];
  }

  __CFCheckCFInfoPACSignature_Bridged(a1);
  __CFCheckCFInfoPACSignature_Bridged(a2);
  if ((a1 & 0x8000000000000000) == 0)
  {
    v19 = atomic_load(a1 + 1);
    v20 = (v19 >> 8) & 0x3FF;
    goto LABEL_64;
  }

  v13 = 0;
  v14 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v14 = 0;
  }

  v15 = v14 ^ a1;
  do
  {
    if ((v15 & 7) == *(MEMORY[0x1E69E5900] + v13))
    {
      break;
    }

    ++v13;
  }

  while (v13 != 7);
  v16 = v13 | v15;
  v17 = v13 & 7;
  v18 = (v16 >> 55) + 8;
  if (v17 == 7)
  {
    LODWORD(v17) = v18;
  }

  if (v17 > 4)
  {
    if (v17 > 19)
    {
      if (v17 != 20)
      {
        if (v17 != 22)
        {
LABEL_63:
          v20 = [a1 _cfTypeID];
          goto LABEL_64;
        }

LABEL_57:
        v20 = 7;
        goto LABEL_64;
      }
    }

    else if (v17 != 5)
    {
      if (v17 == 6)
      {
        v20 = 42;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

LABEL_58:
    v20 = 1;
    goto LABEL_64;
  }

  if (v17 > 2)
  {
    if (v17 == 3)
    {
      v20 = 22;
      goto LABEL_64;
    }

    goto LABEL_58;
  }

  if (v17)
  {
    if (v17 != 2)
    {
      goto LABEL_63;
    }

    goto LABEL_57;
  }

  if (dyld_program_sdk_at_least())
  {
    v20 = 7;
  }

  else
  {
    v20 = 1;
  }

LABEL_64:
  if ((a2 & 0x8000000000000000) == 0)
  {
    v27 = atomic_load((a2 + 8));
    v28 = (v27 >> 8) & 0x3FF;
    goto LABEL_93;
  }

  v21 = 0;
  v22 = *MEMORY[0x1E69E5910];
  if ((~a2 & 0xC000000000000007) == 0)
  {
    v22 = 0;
  }

  v23 = v22 ^ a2;
  do
  {
    if ((v23 & 7) == *(MEMORY[0x1E69E5900] + v21))
    {
      break;
    }

    ++v21;
  }

  while (v21 != 7);
  v24 = v21 | v23;
  v25 = v21 & 7;
  v26 = (v24 >> 55) + 8;
  if (v25 == 7)
  {
    LODWORD(v25) = v26;
  }

  if (v25 > 4)
  {
    if (v25 > 19)
    {
      if (v25 != 20)
      {
        if (v25 != 22)
        {
LABEL_92:
          v28 = [a2 _cfTypeID];
          goto LABEL_93;
        }

LABEL_86:
        v28 = 7;
        goto LABEL_93;
      }
    }

    else if (v25 != 5)
    {
      if (v25 == 6)
      {
        v28 = 42;
        goto LABEL_93;
      }

      goto LABEL_92;
    }

LABEL_87:
    v28 = 1;
    goto LABEL_93;
  }

  if (v25 > 2)
  {
    if (v25 == 3)
    {
      v28 = 22;
      goto LABEL_93;
    }

    goto LABEL_87;
  }

  if (v25)
  {
    if (v25 != 2)
    {
      goto LABEL_92;
    }

    goto LABEL_86;
  }

  if (dyld_program_sdk_at_least())
  {
    v28 = 7;
  }

  else
  {
    v28 = 1;
  }

LABEL_93:
  if (v20 != v28)
  {
    return 0;
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    v35 = atomic_load(a1 + 1);
    v36 = (v35 >> 8) & 0x3FF;
    goto LABEL_108;
  }

  v29 = 0;
  v30 = *MEMORY[0x1E69E5910];
  if ((~a1 & 0xC000000000000007) == 0)
  {
    v30 = 0;
  }

  v31 = v30 ^ a1;
  do
  {
    if ((v31 & 7) == *(MEMORY[0x1E69E5900] + v29))
    {
      break;
    }

    ++v29;
  }

  while (v29 != 7);
  v32 = v29 | v31;
  v33 = v29 & 7;
  v34 = (v32 >> 55) + 8;
  if (v33 == 7)
  {
    LODWORD(v33) = v34;
  }

  if (v33 <= 4)
  {
    if (v33 <= 2)
    {
      if (!v33)
      {
        if (dyld_program_sdk_at_least())
        {
          v36 = 7;
        }

        else
        {
          v36 = 1;
        }

        goto LABEL_124;
      }

      if (v33 != 2)
      {
        goto LABEL_130;
      }

LABEL_118:
      v36 = 7;
      goto LABEL_124;
    }

    if (v33 == 3)
    {
      v36 = 22;
      goto LABEL_124;
    }

LABEL_119:
    v36 = 1;
    goto LABEL_124;
  }

  if (v33 <= 19)
  {
    if (v33 != 5)
    {
      if (v33 == 6)
      {
        v36 = 42;
        goto LABEL_124;
      }

      goto LABEL_130;
    }

    goto LABEL_119;
  }

  if (v33 == 20)
  {
    goto LABEL_119;
  }

  if (v33 == 22)
  {
    goto LABEL_118;
  }

LABEL_130:
  v36 = [a1 _cfTypeID];
LABEL_108:
  if (v36 > 0x47)
  {
    v37 = (__CFRuntimeClassTables[(v36 - 72) >> 6] + 8 * ((v36 - 72) & 0x3F));
    goto LABEL_125;
  }

LABEL_124:
  v37 = &__CFRuntimeBuiltinClassTable + v36;
LABEL_125:
  v38 = *(*v37 + 5);
  if (!v38)
  {
    return 0;
  }

  return v38(a1, a2);
}