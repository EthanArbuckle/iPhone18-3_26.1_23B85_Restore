const __CFURL *_CFURLCopyPromiseURLOfLogicalURL(const __CFURL *a1)
{
  v1 = a1;
  if (a1)
  {
    v2 = _CFURLCopyPromiseNameOfLogicalURL(a1);
    if (v2)
    {
      v3 = v2;
      PathComponent = CFURLCreateCopyDeletingLastPathComponent(&__kCFAllocatorSystemDefault, v1);
      if (PathComponent)
      {
        v5 = PathComponent;
        v1 = CFURLCreateCopyAppendingPathComponent(&__kCFAllocatorSystemDefault, PathComponent, v3, 0);
        CFRelease(v5);
      }

      else
      {
        v1 = 0;
      }

      CFRelease(v3);
    }

    else
    {
      return 0;
    }
  }

  return v1;
}

uint64_t _CFURLPromiseCopyResourcePropertyForKey(const __CFURL *a1, CFTypeRef cf1, void *a3, CFErrorRef *a4)
{
  if (CFEqual(cf1, @"_NSURLPromiseLogicalNameKey") || CFEqual(cf1, @"_NSURLCloudDocsPlaceholderLogicalNameKey"))
  {
    if (_CFURLIsItemPromiseAtURL(a1))
    {
      result = _CFURLCopyLogicalNameOfPromiseAtURL(a1, a4);
      if (!result)
      {
        return result;
      }

      goto LABEL_12;
    }

    goto LABEL_11;
  }

  if (!CFEqual(cf1, @"_NSURLPromisePropertiesKey") && !CFEqual(cf1, @"_NSURLCloudDocsPlaceholderDictionaryKey"))
  {
    return 1;
  }

  if (!_CFURLIsItemPromiseAtURL(a1))
  {
LABEL_11:
    result = 0;
    goto LABEL_12;
  }

  result = _CFURLCopyPropertiesOfPromiseAtURL(a1, a4);
  if (result)
  {
LABEL_12:
    *a3 = result;
    return 1;
  }

  return result;
}

double _CFAuditTokenForSelf@<D0>(_OWORD *a1@<X8>)
{
  if (_CFAuditTokenForSelf_onceToken != -1)
  {
    _CFAuditTokenForSelf_cold_1();
  }

  result = *&_CFAuditTokenForSelf_auditToken;
  v3 = unk_1ED40B8E0;
  *a1 = _CFAuditTokenForSelf_auditToken;
  a1[1] = v3;
  return result;
}

CFStringRef _CFPrefsCopyUserConstantForUserName(const __CFString *a1)
{
  if (CFEqual(a1, @"kCFPreferencesCurrentUser"))
  {
    return @"kCFPreferencesCurrentUser";
  }

  v2 = @"kCFPreferencesAnyUser";
  if (CFEqual(a1, @"kCFPreferencesAnyUser"))
  {
    return v2;
  }

  v3 = CFCopyUserName();
  v4 = CFEqual(a1, v3);
  CFRelease(v3);
  v5 = !@"kCFPreferencesCurrentUser" || v4 == 0;
  v2 = @"kCFPreferencesCurrentUser";
  if (!v5)
  {
    return v2;
  }

  return CFStringCreateCopy(&__kCFAllocatorSystemDefault, a1);
}

uint64_t _CFPrefsValidateValueForKey(const void *a1, uint64_t a2)
{
  if (a1 && !CFPropertyListIsValid(a1, kCFPropertyListBinaryFormat_v1_0))
  {
    _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
    v5 = _CFPrefsClientLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_FAULT))
    {
      _CFPrefsValidateValueForKey_cold_1();
    }

    _CFSetTSD(0xFu, 0, 0);
    if (_CFPreferencesDoesNSUserDefaultsExist())
    {
      _CFSetTSD(0xFu, &__kCFBooleanTrue, 0);
      _CFThrowFormattedException(@"NSInvalidArgumentException", @"Attempt to insert non-property list object %@ for key %@", a1, a2);
    }

    _CFPrefsValidateValueForKey_cold_2();
  }

  return 1;
}

void sub_18320ED80(void *a1)
{
  objc_begin_catch(a1);
  _CFSetTSD(0xFu, 0, 0);
  objc_exception_rethrow();
}

void sub_18320EFFC(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x18320F008);
}

void sub_18320F71C(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18320F720);
  }

  objc_terminate();
}

void sub_18320F72C(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    v4 = *(v3 - 184);
    v5 = *(v3 - 160);
    if (!v2)
    {
      JUMPOUT(0x18320F528);
    }

    JUMPOUT(0x18320F510);
  }

  JUMPOUT(0x18320F714);
}

void sub_18320FC0C(_Unwind_Exception *a1)
{
  free(*(v2 - 152));
  free(v1);
  _Unwind_Resume(a1);
}

void sub_18320FC78(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x18320FC7CLL);
  }

  objc_terminate();
}

void sub_18320FC88(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    v3 = *(v2 - 152);
    JUMPOUT(0x18320FAC8);
  }

  JUMPOUT(0x18320FC70);
}

void sub_1832106BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_183210E10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  objc_end_catch();
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

CFStringRef __CFURLCopyDescription(unint64_t *cf)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    __CFURLCopyDescription_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled != 1)
  {
    v4 = CFGetAllocator(cf);
    v5 = CFURLCopyScheme(cf);
    if (v5 && (v6 = v5, v7 = CFStringCompare(v5, @"data", 1uLL), CFRelease(v6), v7 == kCFCompareEqualTo))
    {
      v14 = atomic_load(cf + 3);
      TruncatedURLString = CreateTruncatedURLString(v4, v14);
      v15 = cf[4];
      if (v15)
      {
        v16 = CFCopyDescription(v15);
        v12 = CFStringCreateWithFormat(v4, 0, @"<CFURL %p [%p]>{string = %@, encoding = %u\n\tbase = %@}", cf, v4, TruncatedURLString, *(cf + 5), v16);
        CFRelease(v16);
        goto LABEL_15;
      }

      v11 = CFStringCreateWithFormat(v4, 0, @"<CFURL %p [%p]>{string = %@, encoding = %u, base = (null)}", cf, v4, TruncatedURLString, *(cf + 5));
    }

    else
    {
      v8 = cf[4];
      if (!v8)
      {
        v13 = atomic_load(cf + 3);
        return CFStringCreateWithFormat(v4, 0, @"<CFURL %p [%p]>{string = %@, encoding = %u, base = (null)}", cf, v4, v13, *(cf + 5));
      }

      TruncatedURLString = CFCopyDescription(v8);
      v10 = atomic_load(cf + 3);
      v11 = CFStringCreateWithFormat(v4, 0, @"<CFURL %p [%p]>{string = %@, encoding = %u\n\tbase = %@}", cf, v4, v10, *(cf + 5), TruncatedURLString);
    }

    v12 = v11;
LABEL_15:
    CFRelease(TruncatedURLString);
    return v12;
  }

  v2 = [cf description];

  return CFRetain(v2);
}

size_t CFShowURL(unint64_t a1)
{
  v1 = MEMORY[0x1E69E9858];
  v2 = *MEMORY[0x1E69E9858];
  if (!a1)
  {
    v4 = "(null)\n";
    v5 = 7;
    goto LABEL_8;
  }

  fprintf(v2, "<CFURL %p>{", a1);
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFShowURL_cold_1();
  }

  if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, a1))
  {
    v2 = *v1;
    v4 = "ObjC bridged object}\n";
    v5 = 21;
LABEL_8:

    return fwrite(v4, v5, 1uLL, v2);
  }

  fwrite("\n\tRelative string: ", 0x13uLL, 1uLL, *v1);
  v7 = atomic_load((a1 + 24));
  CFShow(v7);
  fwrite("\tBase URL: ", 0xBuLL, 1uLL, *v1);
  v8 = *v1;
  if (*(a1 + 32))
  {
    fprintf(v8, "<%p> ", *(a1 + 32));
    CFShow(*(a1 + 32));
  }

  else
  {
    fwrite("(null)\n", 7uLL, 1uLL, v8);
  }

  return fprintf(*v1, "\tFlags: 0x%x\n}\n", *(a1 + 16));
}

uint64_t _CFURLGetEncoding(unsigned int *a1)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    _CFURLGetEncoding_cold_1();
  }

  if (_foundation_swift_nsurl_feature_enabled_featureEnabled != 1)
  {
    return a1[5];
  }

  if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) != 0 || CF_IS_OBJC(0x1DuLL, a1))
  {
    a1 = [a1 _cfurl];
  }

  return [a1 _encoding];
}

CFIndex CFURLGetBytesUsingEncoding(unint64_t *a1, UInt8 *a2, CFIndex a3, CFStringEncoding a4)
{
  usedBufLen[1] = *MEMORY[0x1E69E9840];
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    CFURLGetBytesUsingEncoding_cold_1();
  }

  usedBufLen[0] = 0;
  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    v8 = [a1 _originalString];
LABEL_7:
    v9 = v8;
    goto LABEL_8;
  }

  if (CF_IS_OBJC(0x1DuLL, a1))
  {
    v8 = CFURLGetString(a1);
    goto LABEL_7;
  }

  v9 = atomic_load(a1 + 3);
LABEL_8:
  Length = CFStringGetLength(v9);
  v14.location = 0;
  v14.length = Length;
  if (CFStringGetBytes(v9, v14, a4, 0, 0, a2, a3, usedBufLen) == Length)
  {
    result = usedBufLen[0];
  }

  else
  {
    result = -1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef CFURLCopyStrictPath(CFURLRef anURL, Boolean *isAbsolute)
{
  v3 = CFURLCopyPath(anURL);
  if (!v3)
  {
    goto LABEL_8;
  }

  v4 = v3;
  if (!CFStringGetLength(v3))
  {
    CFRelease(v4);
LABEL_8:
    v4 = 0;
    goto LABEL_9;
  }

  if (CFStringGetCharacterAtIndex(v4, 0) == 47)
  {
    if (isAbsolute)
    {
      *isAbsolute = 1;
    }

    v5 = CFGetAllocator(v4);
    v8.length = CFStringGetLength(v4) - 1;
    v8.location = 1;
    v6 = CFStringCreateWithSubstring(v5, v4, v8);
    CFRelease(v4);
    return v6;
  }

LABEL_9:
  if (isAbsolute)
  {
    *isAbsolute = 0;
  }

  return v4;
}

void __CFURLCopyParameterString_block_invoke(uint64_t a1)
{
  v2 = _CFOSLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEBUG))
  {
    __CFURLCopyParameterString_block_invoke_cold_1(a1, v2);
  }
}

const __CFString *_CFURLCopyQueryString(CFURLRef anURL, int a2)
{
  v2 = anURL;
  if (a2)
  {
    v3 = &stru_1EF068AA8;
LABEL_7:

    return CFURLCopyQueryString(anURL, v3);
  }

  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    _CFURLCopyQueryString_cold_1();
  }

  anURL = v2;
  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    v3 = 0;
    goto LABEL_7;
  }

  return _unescapedQueryString(v2);
}

const __CFString *_CFURLCopyFragment(CFURLRef anURL, int a2)
{
  v2 = anURL;
  if (a2)
  {
    v3 = &stru_1EF068AA8;
LABEL_7:

    return CFURLCopyFragment(anURL, v3);
  }

  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    _CFURLCopyFragment_cold_1();
  }

  anURL = v2;
  if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
  {
    v3 = 0;
    goto LABEL_7;
  }

  return _unescapedFragment(v2);
}

uint64_t __CFURLReservedPtr(uint64_t a1)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
  {
    __CFURLReservedPtr_cold_1();
  }

  result = 0;
  if (a1 && (_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) == 0)
  {
    v3 = *(a1 + 40);
    if (v3)
    {
      return *v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void __CFURLSetReservedPtr(void *a1, uint64_t a2)
{
  if (_foundation_swift_nsurl_feature_enabled_onceToken == -1)
  {
    if (!a1)
    {
      return;
    }
  }

  else
  {
    __CFURLSetReservedPtr_cold_1();
    if (!a1)
    {
      return;
    }
  }

  if ((_foundation_swift_nsurl_feature_enabled_featureEnabled & 1) == 0)
  {
    v4 = a1[5];
    if (a2 && !v4)
    {
      _CFURLAllocateExtraDataspace(a1);
      v4 = a1[5];
    }

    if (v4)
    {
      *v4 = a2;
    }
  }
}

unint64_t *_CFURLCreateWithFileSystemPathCachingResourcePropertiesForKeys(const __CFAllocator *a1, const __CFString *a2, const __CFArray *a3, CFErrorRef *a4)
{
  error[1] = *MEMORY[0x1E69E9840];
  error[0] = 0;
  v8 = _CFURLCreateWithFileSystemPath(a1, a2, 0, 0, 0);
  if (v8)
  {
    v9 = v8;
    if (a3 && (Count = CFArrayGetCount(a3)) != 0)
    {
      v11 = Count;
      v25.location = 0;
      v25.length = Count;
      if (!CFArrayContainsValue(a3, v25, @"NSURLIsDirectoryKey"))
      {
        MutableCopy = CFArrayCreateMutableCopy(0, v11 + 1, a3);
        if (MutableCopy)
        {
          v22 = MutableCopy;
          CFArrayAppendValue(MutableCopy, @"NSURLIsDirectoryKey");
          Copy = CFArrayCreateCopy(0, v22);
          CFRelease(v22);
        }

        else
        {
          Copy = 0;
        }

LABEL_8:
        if (_CFURLCacheResourcePropertiesForKeys(v9) && (propertyValueTypeRefPtr = 0, CFURLCopyResourcePropertyForKey(v9, @"NSURLIsDirectoryKey", &propertyValueTypeRefPtr, error)))
        {
          if (propertyValueTypeRefPtr)
          {
            if (CFBooleanGetValue(propertyValueTypeRefPtr) && (v14 = _CFURLCreateWithFileSystemPath(a1, a2, 0, 1, 0)) != 0)
            {
              v15 = v14;
              if (atomic_load(v9 + 6))
              {
                if (_foundation_swift_nsurl_feature_enabled_onceToken != -1)
                {
                  _CFURLCreateWithFileSystemPathCachingResourcePropertiesForKeys_cold_1();
                }

                if (_foundation_swift_nsurl_feature_enabled_featureEnabled == 1)
                {
                  ShallowCopy = _FileCacheCreateShallowCopy();
                  __CFURLSetResourceInfoPtr(v15, ShallowCopy);
                }

                else
                {
                  atomic_store(_FileCacheCreateShallowCopy(), v15 + 6);
                }
              }

              CFRelease(v9);
            }

            else
            {
              v15 = v9;
            }

            CFRelease(propertyValueTypeRefPtr);
            v9 = v15;
            if (!Copy)
            {
LABEL_21:
              if (v9)
              {
                goto LABEL_29;
              }

              goto LABEL_22;
            }

LABEL_20:
            CFRelease(Copy);
            goto LABEL_21;
          }
        }

        else
        {
          CFRelease(v9);
          v9 = 0;
        }

        if (!Copy)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

      IsDirectoryKeyArray = CFRetain(a3);
    }

    else
    {
      IsDirectoryKeyArray = _CopyIsDirectoryKeyArray();
    }

    Copy = IsDirectoryKeyArray;
    goto LABEL_8;
  }

LABEL_22:
  v18 = error[0];
  if (a4)
  {
    if (!error[0])
    {
      v18 = CFErrorCreate(0, @"NSPOSIXErrorDomain", 12, 0);
    }

    v9 = 0;
    *a4 = v18;
  }

  else
  {
    if (error[0])
    {
      CFRelease(error[0]);
    }

    v9 = 0;
  }

LABEL_29:
  v19 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _CFURLCacheResourcePropertiesForKeys(const __CFURL *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  if (_CFURLHasFileURLScheme(a1, &v11))
  {
    __CFURLResourceInfoPtr(a1);
    _FSURLCacheResourcePropertiesForKeys();
  }

  else if (!v11)
  {
    CFLog(4, @"_CFURLCacheResourcePropertiesForKeys failed because it was passed a URL which has no scheme", v2, v3, v4, v5, v6, v7, v10);
  }

  result = 1;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFURLCreateDisplayPathComponentsArray(const __CFURL *a1, CFErrorRef *a2)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (!_CFURLHasFileURLScheme(a1, &v14))
  {
    if (v14)
    {
      if (a2)
      {
LABEL_7:
        v10 = CFErrorCreate(0, @"NSCocoaErrorDomain", 262, 0);
        v9 = 0;
        goto LABEL_8;
      }
    }

    else
    {
      CFLog(4, @"_CFURLCreateDisplayPathComponentsArray failed because it was passed a URL which has no scheme", v3, v4, v5, v6, v7, v8, v13);
      if (a2)
      {
        goto LABEL_7;
      }
    }

    v9 = 0;
    goto LABEL_11;
  }

  v9 = _FileURLCreateDisplayPathComponentsArray();
  if (!v9 && a2)
  {
    v10 = CFErrorCreate(0, @"NSCocoaErrorDomain", 4, 0);
LABEL_8:
    *a2 = v10;
  }

LABEL_11:
  v11 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _CFURLGetResourcePropertyFlags(const __CFURL *a1, uint64_t a2, void *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v14 = 0;
  if (!_CFURLHasFileURLScheme(a1, &v14))
  {
    if (!v14)
    {
      CFLog(4, @"_CFURLGetResourcePropertyFlags failed because it was passed a URL which has no scheme", v5, v6, v7, v8, v9, v10, v13);
    }

    goto LABEL_6;
  }

  __CFURLResourceInfoPtr(a1);
  result = _FSURLGetResourcePropertyFlags();
  if (!result)
  {
LABEL_6:
    *a3 = 0;
    result = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFURLCopyResourcePropertiesForKeysFromCache(const void *a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  HIBYTE(v11[0]) = 0;
  if (_CFURLHasFileURLScheme(a1, v11 + 7))
  {
    __CFURLResourceInfoPtr(a1);
    result = _FSURLCopyResourcePropertiesForKeysFromCache();
  }

  else
  {
    if (!HIBYTE(v11[0]))
    {
      CFLog(4, @"_CFURLCopyResourcePropertiesForKeysFromCache failed because it was passed a URL which has no scheme", v2, v3, v4, v5, v6, v7, v11[0]);
    }

    v9 = CFGetAllocator(a1);
    result = CFDictionaryCreate(v9, 0, 0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  }

  v10 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFURLCacheResourcePropertyForKey(const __CFURL *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v11 = 0;
  if (_CFURLHasFileURLScheme(a1, &v11))
  {
    __CFURLResourceInfoPtr(a1);
    _FSURLCacheResourcePropertyForKey();
  }

  else if (!v11)
  {
    CFLog(4, @"_CFURLCacheResourcePropertyForKey failed because it was passed a URL which has no scheme", v2, v3, v4, v5, v6, v7, v10);
  }

  result = 1;
  v9 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFURLCacheGetAutoFlushingEnabled(uint64_t a1)
{
  v2 = __CFURLResourceInfoPtr(a1);

  return MEMORY[0x1EEE006D8](a1, v2);
}

uint64_t _CFURLNoteSecurityScopedResourceMoved(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (_CFURLNoteSecurityScopedResourceMoved_onceToken != -1)
  {
    _CFURLNoteSecurityScopedResourceMoved_cold_1();
  }

  v8 = _CFURLNoteSecurityScopedResourceMoved__NS_FSURLNoteSecurityScopedResourceMovedWithFileIdentifier;
  if (_CFURLNoteSecurityScopedResourceMoved__NS_FSURLNoteSecurityScopedResourceMovedWithFileIdentifier)
  {

    return v8(a1, a2, a3, a4);
  }

  else
  {

    return MEMORY[0x1EEE006F8](a1, a2);
  }
}

CFStringRef CreateTruncatedURLString(const __CFAllocator *a1, CFStringRef theString)
{
  Length = CFStringGetLength(theString);
  if (Length > 128)
  {
    v6 = Length;
    v11.location = 0;
    v11.length = 120;
    v7 = CFStringCreateWithSubstring(a1, theString, v11);
    v12.location = v6 - 8;
    v12.length = 8;
    v8 = CFStringCreateWithSubstring(a1, theString, v12);
    v9 = CFStringCreateWithFormat(a1, 0, @"%@ ... %@", v7, v8);
    if (v7)
    {
      CFRelease(v7);
    }

    if (v8)
    {
      CFRelease(v8);
    }

    return v9;
  }

  else
  {

    return CFStringCreateCopy(a1, theString);
  }
}

CFStringRef WindowsPathToURLPath(const __CFString *a1, const __CFAllocator *a2, int a3, int a4)
{
  v33 = *MEMORY[0x1E69E9840];
  if (CFStringGetLength(a1))
  {
    MutableCopy = CFStringCreateMutableCopy(a2, 0, a1);
    v35.length = CFStringGetLength(MutableCopy);
    v35.location = 0;
    CFStringFindAndReplace(MutableCopy, @"/", @"\", v35, 0);
    ArrayBySeparatingStrings = CFStringCreateArrayBySeparatingStrings(a2, MutableCopy, @"\");
    CFRelease(MutableCopy);
    v10 = CFArrayCreateMutableCopy(a2, 0, ArrayBySeparatingStrings);
    CFRelease(ArrayBySeparatingStrings);
    if (!a3)
    {
      v11 = CFArrayGetCount(v10) - 1;
      ValueAtIndex = CFArrayGetValueAtIndex(v10, v11);
      if (CFEqual(ValueAtIndex, &stru_1EF068AA8))
      {
        CFArrayRemoveValueAtIndex(v10, v11);
      }
    }

    v13 = CFArrayGetValueAtIndex(v10, 0);
    v31 = a3;
    v15 = a4 && (v14 = v13, CFStringGetLength(v13) == 2) && CFStringGetCharacterAtIndex(v14, 1) == 58;
    Count = CFArrayGetCount(v10);
    if (v15 >= Count)
    {
LABEL_25:
      if (v31)
      {
        v25 = CFArrayGetCount(v10);
        v26 = CFArrayGetValueAtIndex(v10, v25 - 1);
        if (CFStringGetLength(v26))
        {
          CFArrayAppendValue(v10, &stru_1EF068AA8);
        }
      }

      if (a4)
      {
        CFArrayInsertValueAtIndex(v10, 0, @"file://");
      }

      if (v10)
      {
        v27 = CFStringCreateByCombiningStrings(a2, v10, @"/");
        CFRelease(v10);
LABEL_37:
        v30 = *MEMORY[0x1E69E9840];
        return v27;
      }
    }

    else
    {
      v17 = Count;
      while (1)
      {
        v18 = CFArrayGetValueAtIndex(v10, v15);
        Length = CFStringGetLength(v18);
        if (Length <= 1)
        {
          Length = 1;
        }

        MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
        v21 = MaximumSizeForEncoding;
        if (MaximumSizeForEncoding >= 1024)
        {
          v22 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
        }

        else
        {
          v22 = buffer;
        }

        if (CFStringGetCString(v18, v22, v21 + 1, 0x8000100u))
        {
          v23 = strlen(v22);
          StringFromFileSystemRepresentationByAddingPercentEscapes = CreateStringFromFileSystemRepresentationByAddingPercentEscapes(0, v22, v23, 0, 0, 1, 0);
        }

        else
        {
          StringFromFileSystemRepresentationByAddingPercentEscapes = 0;
        }

        if (v22 != buffer)
        {
          free(v22);
        }

        if (!StringFromFileSystemRepresentationByAddingPercentEscapes)
        {
          break;
        }

        if (StringFromFileSystemRepresentationByAddingPercentEscapes != v18)
        {
          CFArraySetValueAtIndex(v10, v15, StringFromFileSystemRepresentationByAddingPercentEscapes);
        }

        CFRelease(StringFromFileSystemRepresentationByAddingPercentEscapes);
        if (v17 == ++v15)
        {
          goto LABEL_25;
        }
      }

      CFRelease(v10);
    }

    v27 = CFStringCreateWithCString(a2, "", 0x600u);
    goto LABEL_37;
  }

  v28 = *MEMORY[0x1E69E9840];

  return CFStringCreateWithCString(a2, "", 0x600u);
}

uint64_t _CopyIsDirectoryKeyArray()
{
  v9 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___CopyIsDirectoryKeyArray_block_invoke;
  v4[3] = &unk_1E6D82120;
  v4[4] = &v5;
  if (_CopyIsDirectoryKeyArray_onceToken != -1)
  {
    dispatch_once(&_CopyIsDirectoryKeyArray_onceToken, v4);
  }

  v0 = v6[3];
  if (v0)
  {
    CFRetain(v0);
    v1 = v6[3];
  }

  else
  {
    v1 = 0;
  }

  _Block_object_dispose(&v5, 8);
  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

void sub_183212920(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _CFDataURLCreateDataAndPropertiesFromResource(const __CFAllocator *a1, CFTypeRef cf, __CFString *a3, const __CFArray *a4, CFDictionaryRef *a5, uint64_t *a6)
{
  v6 = a6;
  v132 = a1;
  v149 = *MEMORY[0x1E69E9840];
  if (a6)
  {
    *a6 = 0;
  }

  v11 = CFGetAllocator(cf);
  v12 = CFURLCopyResourceSpecifier(cf);
  if (!v12)
  {
    goto LABEL_202;
  }

  v13 = v12;
  location = CFStringFind(v12, @",", 0).location;
  if (location == -1)
  {
    CFRelease(v13);
    goto LABEL_202;
  }

  v155.length = location;
  v127 = v13;
  v128 = v6;
  v155.location = 0;
  v15 = CFStringCreateWithSubstring(v11, v13, v155);
  v16 = CFURLCreateStringByReplacingPercentEscapes(v11, v15, &stru_1EF068AA8);
  if (v16)
  {
    v17 = v16;
    MutableCopy = CFStringCreateMutableCopy(v11, 0, v16);
    CFRelease(v17);
  }

  else
  {
    MutableCopy = CFStringCreateMutableCopy(v11, 0, v15);
  }

  CFRelease(v15);
  CFStringTrimWhitespace(MutableCopy);
  Length = CFStringGetLength(MutableCopy);
  Predefined = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
  v142 = MutableCopy;
  v145 = 0;
  v146 = Length;
  CharactersPtr = CFStringGetCharactersPtr(MutableCopy);
  CStringPtr = 0;
  v143 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(MutableCopy, 0x600u);
  }

  v130 = v11;
  v131 = MutableCopy;
  v147 = 0;
  v148 = 0;
  v144 = CStringPtr;
  v129 = a5;
  if (Length < 1)
  {
    v41 = 0;
    goto LABEL_54;
  }

  v124 = Length - 1;
  v125 = a4;
  v126 = a3;
  v23 = 0;
  v24 = 0;
  v140 = 0u;
  v141 = 0u;
  v138 = 0u;
  v139 = 0u;
  v136 = 0u;
  v137 = 0u;
  v25 = -1;
  v26 = 64;
  v27 = -1;
  v134 = 0u;
  v135 = 0u;
  do
  {
    if (v24 >= 4)
    {
      v28 = 4;
    }

    else
    {
      v28 = v24;
    }

    v29 = v146;
    if (v146 <= v24)
    {
      v31 = 0;
      goto LABEL_24;
    }

    if (v143)
    {
      v30 = &v143[v145];
LABEL_19:
      v31 = v30[v24];
      goto LABEL_23;
    }

    if (!v144)
    {
      v35 = v147;
      if (v148 <= v24 || v147 > v24)
      {
        v37 = v28 + v23;
        v38 = v26 - v28;
        v39 = v24 - v28;
        v40 = v39 + 64;
        if (v39 + 64 >= v146)
        {
          v40 = v146;
        }

        v147 = v39;
        v148 = v40;
        if (v146 >= v38)
        {
          v29 = v38;
        }

        v150.location = v145 + v39;
        v150.length = v29 + v37;
        CFStringGetCharacters(v142, v150, &v134);
        v35 = v147;
      }

      v30 = &v134 - v35;
      goto LABEL_19;
    }

    v31 = v144[v145 + v24];
LABEL_23:
    if (v31 == 59)
    {
      break;
    }

LABEL_24:
    IsCharacterMember = CFCharacterSetIsCharacterMember(Predefined, v31);
    if (IsCharacterMember)
    {
      v33 = v27;
    }

    else
    {
      v33 = v24;
    }

    if (IsCharacterMember)
    {
      v34 = -1;
    }

    else
    {
      v34 = v24;
    }

    if (v25 == -1)
    {
      v25 = v34;
    }

    else
    {
      v27 = v33;
    }

    ++v24;
    --v23;
    ++v26;
  }

  while (Length != v24);
  v41 = 0;
  if (v25 == -1)
  {
    a4 = v125;
    a3 = v126;
  }

  else
  {
    a4 = v125;
    a3 = v126;
    if (v27 != -1)
    {
      v42 = CFGetAllocator(v131);
      v43 = CFStringCreateMutableCopy(v42, Length, v131);
      v41 = v43;
      if (v27 != v124)
      {
        v151.location = v27 + 1;
        v151.length = Length + ~v27;
        CFStringDelete(v43, v151);
      }

      if (v25 >= 1)
      {
        v152.location = 0;
        v152.length = v25;
        CFStringDelete(v41, v152);
      }

      CFStringLowercase(v41, 0);
    }
  }

LABEL_54:
  *&v134 = 0;
  *(&v134 + 1) = 0;
  v44 = v131;
  v45 = CFStringGetLength(v131);
  v156.location = 0;
  v156.length = v45;
  v46 = 0;
  if (CFStringFindWithOptions(v131, @"charset=", v156, 1uLL, &v134) && *(&v134 + 1))
  {
    v47 = CFCharacterSetGetPredefined(kCFCharacterSetWhitespace);
    v48 = *(&v134 + 1) + v134;
    if (*(&v134 + 1) + v134 >= v45)
    {
      v46 = 0;
    }

    else
    {
      v49 = v47;
      v126 = a3;
      v50 = -1;
      v51 = -1;
      do
      {
        CharacterAtIndex = CFStringGetCharacterAtIndex(v131, v48);
        if (CharacterAtIndex == 44 || CharacterAtIndex == 59)
        {
          break;
        }

        if (CFCharacterSetIsCharacterMember(v49, CharacterAtIndex))
        {
          v53 = -1;
        }

        else
        {
          v51 = v48;
          v53 = v48;
        }

        if (v50 == -1)
        {
          v50 = v53;
        }

        ++v48;
      }

      while (v48 < v45);
      if (v50 != -1)
      {
        v44 = v131;
        v54 = CFGetAllocator(v131);
        v55 = CFStringCreateMutableCopy(v54, v45, v131);
        v46 = v55;
        if (v51 != v45)
        {
          v153.location = v51 + 1;
          v153.length = v45 + ~v51;
          CFStringDelete(v55, v153);
        }

        v154.location = 0;
        v154.length = v50;
        CFStringDelete(v46, v154);
        CFStringLowercase(v46, 0);
        a3 = v126;
        goto LABEL_73;
      }

      v46 = 0;
      a3 = v126;
    }

    v44 = v131;
  }

LABEL_73:
  v126 = v46;
  v56 = CFStringFind(v44, @";base64", 1uLL).location;
  if (!v41)
  {
    v41 = CFRetain(@"text/plain");
  }

  v57 = CFURLGetBytes(cf, 0, 0);
  v58 = malloc_type_malloc(v57, 0x100004077774924uLL);
  CFURLGetBytes(cf, v58, v57);
  v61 = CFURLGetByteRangeForComponent(cf, kCFURLComponentResourceSpecifier, 0);
  v60 = v61.length;
  v59 = v61.location;
  if (v58[v61.location] == 44)
  {
    v62 = v61.location;
    v63 = v130;
  }

  else
  {
    v63 = v130;
    do
    {
      v62 = v59 + 1;
      --v60;
      v64 = v58[++v59];
    }

    while (v64 != 44);
  }

  v65 = v60 - 1;
  if (v56 == -1)
  {
    v71 = percentEscapeDecodeBuffer(v63, v58, v62 + 1, v65, 0);
    goto LABEL_185;
  }

  v66 = 1;
  v67 = percentEscapeDecodeBuffer(v63, v58, v62 + 1, v65, 1);
  if (!v67)
  {
    v71 = 0;
    v130 = 0;
    v73 = 0;
    v6 = v128;
LABEL_189:
    v99 = v126;
    goto LABEL_195;
  }

  v68 = v67;
  BytePtr = CFDataGetBytePtr(v67);
  v70 = CFDataGetLength(v68);
  if ((v70 & 3) != 0)
  {
    v71 = 0;
    v72 = 0;
LABEL_83:
    free(v72);
  }

  else
  {
    v74 = v70;
    if (v70 < 1025)
    {
      if (v70 <= 0)
      {
        v71 = CFDataCreate(v63, &v134, 0);
        goto LABEL_184;
      }

      v72 = &v134;
    }

    else
    {
      v72 = malloc_type_malloc(v70, 0x100004077774924uLL);
    }

    v75 = 0;
    v76 = 0;
    do
    {
      v77 = BytePtr[v76];
      if (((v77 & 0xDF) - 65) >= 0x1Au && v77 != 43 && (v77 - 47) > 0xAu)
      {
        goto LABEL_180;
      }

      v79 = &BytePtr[v76];
      v80 = BytePtr[v76 + 1];
      if (((v80 & 0xDF) - 65) >= 0x1Au && v80 != 43 && (v80 - 47) > 0xAu)
      {
        goto LABEL_180;
      }

      v82 = v79[2];
      v83 = (v82 - 47) >= 0xBu && ((v82 & 0xDF) - 65) >= 0x1Au;
      if (v83 && (v84 = v79[2], v84 != 61) && v84 != 43 || (v85 = BytePtr[v76 + 3], (v85 - 47) >= 0xBu) && ((v85 & 0xDF) - 65) >= 0x1Au && (v86 = BytePtr[v76 + 3], v86 != 43) && v86 != 61)
      {
LABEL_180:
        if (v72 != &v134)
        {
          free(v72);
        }

        v71 = 0;
        goto LABEL_184;
      }

      v87 = v77 - 65;
      if ((v77 - 65) >= 0x1A)
      {
        if ((v77 - 97) > 0x19)
        {
          if ((v77 - 48) > 9)
          {
            if (v77 == 47)
            {
              v87 = 63;
            }

            else
            {
              v87 = 0;
            }

            if (v77 == 43)
            {
              v87 = 62;
            }
          }

          else
          {
            v87 = v77 + 4;
          }
        }

        else
        {
          v87 = v77 - 71;
        }
      }

      v88 = v80 - 65;
      if ((v80 - 65) >= 0x1A)
      {
        if ((v80 - 97) > 0x19)
        {
          if ((v80 - 48) > 9)
          {
            if (v80 == 47)
            {
              v88 = 63;
            }

            else
            {
              v88 = 0;
            }

            if (v80 == 43)
            {
              v88 = 62;
            }
          }

          else
          {
            v88 = v80 + 4;
          }
        }

        else
        {
          v88 = v80 - 71;
        }
      }

      v89 = v75 + 1;
      *(&v72->location + v75) = 4 * v87 + ((v88 & 0xF0) >> 4);
      v90 = v79[2];
      if (v90 != 61)
      {
        v91 = v79[1];
        v92 = v91 - 65;
        if ((v91 - 65) >= 0x1A)
        {
          if ((v91 - 97) > 0x19)
          {
            if ((v91 - 48) > 9)
            {
              if (v91 == 47)
              {
                v92 = 63;
              }

              else
              {
                v92 = 0;
              }

              if (v91 == 43)
              {
                v92 = 62;
              }
            }

            else
            {
              v92 = v91 + 4;
            }
          }

          else
          {
            v92 = v91 - 71;
          }
        }

        v93 = v90 - 65;
        if ((v90 - 65) >= 0x1A)
        {
          if ((v90 - 97) > 0x19)
          {
            if ((v90 - 48) > 9)
            {
              if (v90 == 47)
              {
                v93 = 63;
              }

              else
              {
                v93 = 0;
              }

              if (v90 == 43)
              {
                v93 = 62;
              }
            }

            else
            {
              v93 = v90 + 4;
            }
          }

          else
          {
            v93 = v90 - 71;
          }
        }

        *(&v72->location + v89) = 16 * v92 + ((v93 & 0xFC) >> 2);
        v89 = v75 + 2;
      }

      v94 = BytePtr[v76 + 3];
      if (v94 == 61)
      {
        v75 = v89;
      }

      else
      {
        v95 = v79[2];
        v96 = v95 - 65;
        if ((v95 - 65) >= 0x1A)
        {
          if ((v95 - 97) > 0x19)
          {
            if ((v95 - 48) > 9)
            {
              if (v95 == 47)
              {
                v96 = 63;
              }

              else
              {
                v96 = 0;
              }

              if (v95 == 43)
              {
                v96 = 62;
              }
            }

            else
            {
              v96 = v95 + 4;
            }
          }

          else
          {
            v96 = v95 - 71;
          }
        }

        v97 = v94 - 65;
        if ((v94 - 65) >= 0x1A)
        {
          if ((v94 - 97) > 0x19)
          {
            if ((v94 - 48) > 9)
            {
              if (v94 == 47)
              {
                v97 = 63;
              }

              else
              {
                v97 = 0;
              }

              if (v94 == 43)
              {
                v97 = 62;
              }
            }

            else
            {
              v97 = v94 + 4;
            }
          }

          else
          {
            v97 = v94 - 71;
          }
        }

        v75 = v89 + 1;
        *(&v72->location + v89) = v97 + (v96 << 6);
      }

      v76 += 4;
    }

    while (v76 < v74);
    v71 = CFDataCreate(v63, v72, v75);
    if (v72 != &v134)
    {
      goto LABEL_83;
    }
  }

LABEL_184:
  CFRelease(v68);
LABEL_185:
  v6 = v128;
  if (!v71)
  {
    v130 = 0;
    v73 = 0;
    v66 = 1;
    goto LABEL_189;
  }

  if (v41)
  {
    Copy = CFStringCreateCopy(v63, v41);
  }

  else
  {
    Copy = 0;
  }

  v130 = Copy;
  v99 = v126;
  if (v126)
  {
    v73 = CFStringCreateCopy(v63, v126);
  }

  else
  {
    v73 = 0;
  }

  v66 = 0;
LABEL_195:
  free(v58);
  v100 = v129;
  if (v131)
  {
    CFRelease(v131);
  }

  if (v41)
  {
    CFRelease(v41);
  }

  if (v99)
  {
    CFRelease(v99);
  }

  CFRelease(v127);
  if (v66)
  {
LABEL_202:
    if (v6)
    {
      *v6 = -10;
    }

    v103 = 0;
    if (a3)
    {
      a3->isa = 0;
    }

    goto LABEL_206;
  }

  if (a3)
  {
    v101 = CFDataCreateCopy(v132, v71);
    a3->isa = v101;
  }

  if (v100)
  {
    v131 = v73;
    v134 = xmmword_1E6DCF1F8;
    *&v135 = @"kCFDataURLTextEncodingName";
    if (!a4)
    {
      a4 = _CFDataURLCreateDataAndPropertiesFromResource_sAllProps;
      if (!_CFDataURLCreateDataAndPropertiesFromResource_sAllProps)
      {
        v101 = CFArrayCreate(&__kCFAllocatorSystemDefault, &v134, 3, &kCFTypeArrayCallBacks);
        a4 = v101;
        _CFDataURLCreateDataAndPropertiesFromResource_sAllProps = v101;
      }
    }

    v128 = &v124;
    v106 = MEMORY[0x1EEE9AC00](v101, v102);
    v107 = v123;
    memset(v123, 0, 24);
    MEMORY[0x1EEE9AC00](v106, v108);
    memset(v122, 0, 24);
    Count = CFArrayGetCount(a4);
    if (Count >= 1)
    {
      v110 = Count;
      v111 = a4;
      v112 = 0;
      v113 = 0;
      while (1)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v111, v112);
        if (CFEqual(ValueAtIndex, @"kCFDataURLDataLength"))
        {
          v133 = CFDataGetLength(v71);
          v122[v113] = ValueAtIndex;
          v115 = CFNumberCreate(v132, kCFNumberCFIndexType, &v133);
        }

        else
        {
          if (CFEqual(ValueAtIndex, @"kCFDataURLMimeType"))
          {
            v116 = v130;
            if (!v130)
            {
              goto LABEL_224;
            }
          }

          else
          {
            if (!CFEqual(ValueAtIndex, @"kCFDataURLTextEncodingName"))
            {
              goto LABEL_224;
            }

            v116 = v131;
            if (!v131)
            {
              goto LABEL_224;
            }
          }

          v122[v113] = ValueAtIndex;
          v115 = CFStringCreateCopy(v132, v116);
        }

        v123[v113++] = v115;
LABEL_224:
        if (v110 == ++v112)
        {
          goto LABEL_228;
        }
      }
    }

    v113 = 0;
LABEL_228:
    v117 = v113;
    v118 = CFDictionaryCreate(v132, v122, v123, v113, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
    v119 = v129;
    *v129 = v118;
    if (v113 < 1)
    {
      v73 = v131;
    }

    else
    {
      v73 = v131;
      do
      {
        v120 = *v107++;
        CFRelease(v120);
        --v117;
      }

      while (v117);
      v118 = *v119;
    }

    v103 = v118 != 0;
  }

  else
  {
    v103 = 1;
  }

  v121 = v130;
  if (v71)
  {
    CFRelease(v71);
    v121 = v130;
  }

  if (v121)
  {
    CFRelease(v121);
  }

  if (v73)
  {
    CFRelease(v73);
  }

LABEL_206:
  v104 = *MEMORY[0x1E69E9840];
  return v103;
}

CFTypeRef CFURLCreatePropertyFromResource(CFAllocatorRef alloc, CFURLRef url, CFStringRef property, SInt32 *errorCode)
{
  values[1] = *MEMORY[0x1E69E9840];
  values[0] = property;
  v7 = CFArrayCreate(alloc, values, 1, &kCFTypeArrayCallBacks);
  properties = 0;
  if (CFURLCreateDataAndPropertiesFromResource(alloc, url, 0, &properties, v7, errorCode))
  {
    Value = CFDictionaryGetValue(properties, values[0]);
    v9 = Value;
    if (Value)
    {
      CFRetain(Value);
    }

    CFRelease(v7);
    v7 = properties;
  }

  else
  {
    if (properties)
    {
      CFRelease(properties);
    }

    v9 = 0;
  }

  CFRelease(v7);
  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

Boolean CFURLWriteDataAndPropertiesToResource(CFURLRef url, CFDataRef dataToWrite, CFDictionaryRef propertiesToWrite, SInt32 *errorCode)
{
  v37[9] = *MEMORY[0x1E69E9840];
  v8 = CFURLCopyScheme(url);
  if (!v8)
  {
    if (errorCode)
    {
      LOBYTE(v11) = 0;
      v12 = -15;
LABEL_22:
      *errorCode = v12;
      goto LABEL_62;
    }

    goto LABEL_61;
  }

  v9 = v8;
  v10 = CFStringCompare(v8, @"file", 0);
  CFRelease(v9);
  if (v10 == kCFCompareEqualTo)
  {
    if (errorCode)
    {
      *errorCode = 0;
    }

    if (!dataToWrite)
    {
      LOBYTE(v11) = 1;
      if (!propertiesToWrite)
      {
        goto LABEL_62;
      }

      goto LABEL_36;
    }

    if (CFURLHasDirectoryPath(url))
    {
      if (!CFURLGetFileSystemRepresentation(url, 1u, buffer, 1026))
      {
        if (!errorCode)
        {
          LOBYTE(v11) = 0;
          if (!propertiesToWrite)
          {
            goto LABEL_62;
          }

          goto LABEL_36;
        }

        v14 = -15;
        goto LABEL_29;
      }

      v13 = _CFCreateDirectory(buffer);
      LOBYTE(v11) = v13;
      if (errorCode && !v13)
      {
        v14 = -10;
LABEL_29:
        LOBYTE(v11) = 0;
LABEL_34:
        *errorCode = v14;
      }
    }

    else
    {
      Length = CFDataGetLength(dataToWrite);
      if (Length)
      {
        BytePtr = CFDataGetBytePtr(dataToWrite);
      }

      else
      {
        BytePtr = "";
      }

      v17 = _CFWriteBytesToFile(url, BytePtr, Length);
      LOBYTE(v11) = v17;
      if (errorCode && !v17)
      {
        v14 = -10;
        goto LABEL_34;
      }
    }

    if (!propertiesToWrite)
    {
      goto LABEL_62;
    }

LABEL_36:
    memset(v37, 0, 64);
    memset(keys, 0, sizeof(keys));
    if (!CFURLGetFileSystemRepresentation(url, 1u, buffer, 1026))
    {
      if (!errorCode)
      {
        goto LABEL_61;
      }

      v22 = 0;
      v23 = -15;
      goto LABEL_59;
    }

    Count = CFDictionaryGetCount(propertiesToWrite);
    if (Count >= 8)
    {
      cf = url;
      v24 = CFGetAllocator(url);
      v20 = Count & 0x7FFFFFFF;
      Typed = CFAllocatorAllocateTyped(v24, 16 * v20, 0x80040B8603338, 0);
      v19 = &Typed[v20];
      CFDictionaryGetKeysAndValues(propertiesToWrite, Typed, v19);
    }

    else
    {
      v19 = v37;
      CFDictionaryGetKeysAndValues(propertiesToWrite, keys, v37);
      if (Count < 1)
      {
        v22 = 1;
        if (errorCode)
        {
LABEL_56:
          if (v22)
          {
            v23 = 0;
          }

          else
          {
            v23 = -10;
          }

LABEL_59:
          *errorCode = v23;
        }

LABEL_60:
        if (v22)
        {
          goto LABEL_62;
        }

        goto LABEL_61;
      }

      cf = url;
      v20 = Count & 0x7FFFFFFF;
      Typed = keys;
    }

    v25 = 0;
    v22 = 1;
    do
    {
      v26 = Typed[v25];
      v27 = v19[v25];
      if (v26 == @"kCFURLFilePOSIXMode" || CFEqual(@"kCFURLFilePOSIXMode", v26))
      {
        valuePtr = 0;
        TypeID = CFNumberGetTypeID();
        if (TypeID == CFGetTypeID(v27))
        {
          CFNumberGetValue(v27, kCFNumberSInt32Type, &valuePtr);
          v29 = valuePtr;
        }

        else
        {
          v29 = *CFDataGetBytePtr(v27);
          valuePtr = v29;
        }

        if (chmod(buffer, v29))
        {
          v22 = 0;
        }
      }

      else
      {
        v22 = 0;
      }

      ++v25;
    }

    while (v20 != v25);
    if (Typed != keys)
    {
      v30 = CFGetAllocator(cf);
      CFAllocatorDeallocate(v30, Typed);
    }

    if (errorCode)
    {
      goto LABEL_56;
    }

    goto LABEL_60;
  }

  if (__CFNetwork__CFURLWriteDataAndPropertiesToResource_onceToken != -1)
  {
    CFURLWriteDataAndPropertiesToResource_cold_1();
  }

  if (!__CFNetwork__CFURLWriteDataAndPropertiesToResource_dyfunc)
  {
    if (errorCode)
    {
      v11 = 0;
      *errorCode = -15;
      goto LABEL_20;
    }

LABEL_61:
    LOBYTE(v11) = 0;
    goto LABEL_62;
  }

  v11 = __CFNetwork__CFURLWriteDataAndPropertiesToResource_dyfunc(url, dataToWrite, propertiesToWrite, errorCode);
  if (!errorCode)
  {
    goto LABEL_62;
  }

LABEL_20:
  if (!v11)
  {
    v12 = -11;
    goto LABEL_22;
  }

LABEL_62:
  v31 = *MEMORY[0x1E69E9840];
  return v11;
}

Boolean CFURLDestroyResource(CFURLRef url, SInt32 *errorCode)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = CFURLCopyScheme(url);
  if (!v4)
  {
LABEL_11:
    if (errorCode)
    {
      v7 = -15;
LABEL_22:
      *errorCode = v7;
      goto LABEL_23;
    }

    goto LABEL_23;
  }

  v5 = v4;
  v6 = CFStringCompare(v4, @"file", 0);
  CFRelease(v5);
  if (v6 == kCFCompareEqualTo)
  {
    LODWORD(v4) = CFURLGetFileSystemRepresentation(url, 1u, buffer, 1026);
    if (v4)
    {
      if (CFURLHasDirectoryPath(url))
      {
        LODWORD(v4) = _CFRemoveDirectory(buffer);
      }

      else
      {
        LODWORD(v4) = _CFDeleteFile(buffer);
      }

      v8 = v4 == 0;
      LOBYTE(v4) = v4 != 0;
      if (v8)
      {
        v7 = -10;
      }

      else
      {
        v7 = 0;
      }

      if (errorCode)
      {
        goto LABEL_22;
      }

      goto LABEL_23;
    }

    goto LABEL_11;
  }

  if (__CFNetwork__CFURLDestroyResource_onceToken != -1)
  {
    CFURLDestroyResource_cold_1();
  }

  if (__CFNetwork__CFURLDestroyResource_dyfunc)
  {
    LODWORD(v4) = __CFNetwork__CFURLDestroyResource_dyfunc(url, errorCode);
    if (!errorCode)
    {
      goto LABEL_23;
    }
  }

  else
  {
    LODWORD(v4) = 0;
    if (!errorCode)
    {
      goto LABEL_23;
    }

    *errorCode = -15;
  }

  if (!v4)
  {
    v7 = -11;
    goto LABEL_22;
  }

LABEL_23:
  v9 = *MEMORY[0x1E69E9840];
  return v4;
}

CFDataRef percentEscapeDecodeBuffer(const __CFAllocator *a1, uint64_t a2, uint64_t a3, int64_t size, int a5)
{
  v35 = *MEMORY[0x1E69E9840];
  if (size < 1025)
  {
    if (size <= 0)
    {
      v30 = CFDataCreate(a1, bytes, 0);
      goto LABEL_47;
    }

    allocator = a1;
    v9 = bytes;
  }

  else
  {
    allocator = a1;
    v9 = malloc_type_malloc(size, 0x100004077774924uLL);
  }

  v10 = 0;
  v11 = a3 + size;
  v12 = MEMORY[0x1E69E9830];
  do
  {
    v13 = *(a2 + a3);
    if (v13 != 37)
    {
      goto LABEL_36;
    }

    v14 = a3 + 2;
    if (v11 <= a3 + 2 || (v15 = *(a2 + a3 + 1), v16 = v15 - 48, (v15 - 48) >= 0xAu) && (*(a2 + a3 + 1) - 65 <= 0x25 ? (v17 = ((1 << (v15 - 65)) & 0x3F0000003FLL) == 0) : (v17 = 1), v17) || (v18 = *(a2 + v14), v19 = v18 - 48, v20 = (v18 - 48), v20 >= 0xA) && (*(a2 + v14) - 65 <= 0x25 ? (v21 = ((1 << (v18 - 65)) & 0x3F0000003FLL) == 0) : (v21 = 1), v21))
    {
      LOBYTE(v13) = 37;
LABEL_36:
      v14 = a3;
      if (!a5)
      {
        goto LABEL_39;
      }

      goto LABEL_37;
    }

    v22 = v18 - 65;
    v23 = (v15 - 65);
    if ((v15 - 97) >= 6u)
    {
      v24 = 0;
    }

    else
    {
      v24 = v15 - 87;
    }

    v25 = v15 - 55;
    if (v23 > 5)
    {
      v25 = v24;
    }

    if (v16 >= 0xAu)
    {
      v16 = v25;
    }

    v26 = 16 * v16;
    if ((v18 - 97) >= 6u)
    {
      v27 = 0;
    }

    else
    {
      v27 = v18 - 87;
    }

    v28 = v18 - 55;
    if (v22 <= 5u)
    {
      v29 = v28;
    }

    else
    {
      v29 = v27;
    }

    if (v20 < 0xA)
    {
      v29 = v19;
    }

    LOBYTE(v13) = v29 + v26;
    if (!a5)
    {
      goto LABEL_39;
    }

LABEL_37:
    if ((v13 & 0x80) == 0)
    {
      if ((*(v12 + 4 * v13 + 60) & 0x4000) != 0)
      {
        goto LABEL_40;
      }

LABEL_39:
      v9[v10++] = v13;
      goto LABEL_40;
    }

    if (!__maskrune(v13, 0x4000uLL))
    {
      goto LABEL_39;
    }

LABEL_40:
    a3 = v14 + 1;
  }

  while (v14 + 1 < v11);
  v30 = CFDataCreate(allocator, v9, v10);
  if (v9 != bytes)
  {
    free(v9);
  }

LABEL_47:
  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

uint64_t CFUniCharMapTo(unsigned int a1, __int16 *a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  v5 = a2;
  v14 = *MEMORY[0x1E69E9840];
  if (a4 == 4)
  {
    if (a1 >= 0x80 && CFUniCharIsMemberOf(a1, 0x65u))
    {
      result = CFUniCharDecomposeCharacter(a1, v13, 10);
      if (result >= 1)
      {
        v8 = v13;
        v9 = result;
        do
        {
          v10 = *v8++;
          *v5++ = v10;
          --v9;
        }

        while (v9);
      }
    }

    else
    {
      *v5 = a1;
      result = 1;
    }

    v12 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v11 = *MEMORY[0x1E69E9840];

    return CFUniCharMapCaseTo(a1, a2, a3, a4, a5, 0);
  }

  return result;
}

uint64_t CFUniCharGetUnicodeProperty(int a1, int a2)
{
  if (a2 == 1)
  {
    if (BYTE2(a1) > 0xEu)
    {
      return 1;
    }

    v2 = *(&__CFUniCharBidiProperty + BYTE2(a1));
    if (!v2)
    {
      return 1;
    }

    v3 = *(v2 + BYTE1(a1));
    if (v3 >= 0x13)
    {
      v4 = -4864;
      return *(v2 + ((v4 + (v3 << 8)) & 0xFFFFFF00) + a1 + 256);
    }
  }

  else
  {
    if (a2)
    {
      return 0;
    }

    if (BYTE2(a1) > 1u)
    {
      return 0;
    }

    v2 = *(&__CFUniCharCombiningPriorityTable + BYTE2(a1));
    if (!v2)
    {
      return 0;
    }

    else
    {
      v3 = *(v2 + BYTE1(a1));
      if (*(v2 + BYTE1(a1)))
      {
        v4 = -256;
        return *(v2 + ((v4 + (v3 << 8)) & 0xFFFFFF00) + a1 + 256);
      }
    }
  }

  return v3;
}

uint64_t CFUniCharFillDestinationBuffer(unsigned int *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t *a5, int a6)
{
  v6 = *a5;
  v7 = *a3;
  if (a6 != 2)
  {
    if (a6)
    {
      if (a2 >= 1)
      {
        v11 = v6 + a2;
        v20 = a2 + 1;
        do
        {
          v22 = *a1++;
          v21 = v22;
          if (a4)
          {
            if (v6 >= a4)
            {
              return 0;
            }

            *v7 = v21;
            v7 += 4;
          }

          --v20;
          ++v6;
        }

        while (v20 > 1);
        goto LABEL_49;
      }
    }

    else if (a2 >= 1)
    {
      v8 = a2 + 1;
      do
      {
        v10 = *a1++;
        v9 = v10;
        if (v10 < 0x10000)
        {
          v11 = v6 + 1;
          if (a4)
          {
            if (v6 >= a4)
            {
              return 0;
            }

            *v7 = v9;
            v7 += 2;
          }
        }

        else
        {
          v11 = v6 + 2;
          if (a4)
          {
            if (v11 > a4)
            {
              return 0;
            }

            *v7 = ((v9 + 67043328) >> 10) - 10240;
            *(v7 + 2) = v9 & 0x3FF | 0xDC00;
            v7 += 4;
          }
        }

        --v8;
        v6 = v11;
      }

      while (v8 >= 2);
      goto LABEL_49;
    }

LABEL_48:
    v11 = *a5;
LABEL_49:
    *a3 = v7;
    *a5 = v11;
    return 1;
  }

  if (a2 < 1)
  {
    goto LABEL_48;
  }

  v12 = a2 + 1;
  v11 = *a5;
  while (1)
  {
    v14 = *a1++;
    v13 = v14;
    v15 = v14 >= 0x200000;
    if (v14 >= 0x200000)
    {
      v16 = 65533;
    }

    else
    {
      v16 = v13;
    }

    if (v15)
    {
      v17 = 2;
    }

    else
    {
      v17 = 4;
    }

    if (v13 < 0x10000)
    {
      v16 = v13;
      v17 = 3;
    }

    if (v13 < 0x800)
    {
      v16 = v13;
      v17 = 2;
    }

    if (v13 >= 0x80)
    {
      v18 = v17;
    }

    else
    {
      v16 = v13;
      v18 = 1;
    }

    v11 += v18;
    if (!a4)
    {
      goto LABEL_39;
    }

    if (v11 > a4)
    {
      return 0;
    }

    v19 = v7 + v18;
    if (v18 > 2)
    {
      if (v18 != 3)
      {
        *--v19 = v16 & 0x3F | 0x80;
        v16 >>= 6;
      }

      *--v19 = v16 & 0x3F | 0x80;
      v16 >>= 6;
    }

    else if (v18 == 1)
    {
      goto LABEL_38;
    }

    *--v19 = v16 & 0x3F | 0x80;
    v16 >>= 6;
LABEL_38:
    *(v19 - 1) = CFUniCharFillDestinationBuffer_firstByteMark[v18] | v16;
    v7 = v19 - 1 + v18;
LABEL_39:
    if (--v12 < 2)
    {
      goto LABEL_49;
    }
  }
}

BOOL CFUniCharDecomposeWithErrorLocation(unsigned __int16 *a1, uint64_t a2, void *a3, unsigned int *a4, uint64_t a5, void *a6, int a7, int a8, char a9, uint64_t *a10)
{
  v12 = a6;
  v13 = a5;
  v14 = a3;
  v15 = a2;
  v55 = *MEMORY[0x1E69E9840];
  v52 = 0;
  v53 = a4;
  if (a10)
  {
    *a10 = -1;
  }

  v16 = a2;
  if (a2 < 1)
  {
    goto LABEL_90;
  }

  v17 = 0;
  v18 = 0;
  if (a9)
  {
    v19 = &__CFUniCharHfsPlusDecomposableCharacterSetBitmapPlane0_0;
  }

  else
  {
    v19 = &__CFUniCharCanonicalDecomposableCharacterSetBitmapPlane0_0;
  }

  v50 = v19;
  v44 = 32;
  v20 = a2;
  v21 = v54;
  v22 = a1;
  v16 = a2;
LABEL_8:
  v23 = v22;
  while (1)
  {
    v25 = *v22++;
    v24 = v25;
    if (v25 <= 0x7F)
    {
      if (v18 < 1)
      {
        v20 = v16;
      }

      else
      {
        if (v18 != 1)
        {
          __CFUniCharPrioritySort(v21, v18);
        }

        if (!CFUniCharFillDestinationBuffer(v21, v18, &v53, v13, &v52, a8))
        {
LABEL_74:
          v14 = a3;
          v12 = a6;
          v15 = a2;
          goto LABEL_80;
        }

        v18 = 0;
        v17 = 0;
      }

      v33 = v52;
      if (v13 < 1)
      {
        goto LABEL_65;
      }

      if (v52 >= v13)
      {
        v16 = v20;
LABEL_87:
        v14 = a3;
        v12 = a6;
        v15 = a2;
        goto LABEL_88;
      }

      if (a8)
      {
        if (a8 != 3)
        {
          if (a8 == 2)
          {
            *v53 = v24;
            v53 = (v53 + 1);
            v33 = v52;
          }

          goto LABEL_65;
        }

        v37 = v53;
        *v53 = v24;
        v38 = v37 + 1;
      }

      else
      {
        v39 = v53;
        *v53 = v24;
        v38 = (v39 + 2);
      }

      v53 = v38;
LABEL_65:
      v16 = v20 - 1;
      v52 = v33 + 1;
      goto LABEL_71;
    }

    if ((v24 & 0xFC00) == 0xD800)
    {
      break;
    }

    if ((v24 & 0xFC00) == 0xDC00 && a8 != 0)
    {
      goto LABEL_76;
    }

LABEL_20:
    if (a7)
    {
      if (!(v24 >> 17))
      {
        v28 = *(&__CFUniCharCombiningPriorityTable_0 + HIWORD(v24));
        if (*(v28 + BYTE1(v24)))
        {
          if (*(v28 + (*(v28 + BYTE1(v24)) << 8) - 256 + v24 + 256))
          {
            v32 = v44;
            if (v18 + 1 >= v44)
            {
              v32 = v44 + 32;
              Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 4 * (v44 + 32), 0x100004052888210, 0);
              v35 = 4 * v44;
              v45 = Typed;
              memmove(Typed, v21, v35);
              if (v21 != v54)
              {
                CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v21);
              }

              v21 = v45;
            }

            BitmapPtrForPlane = v50;
            if (v24 < 0x10000 || (BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(9u, HIWORD(v24))) != 0) && ((*(BitmapPtrForPlane + (v24 >> 3)) >> (v24 & 7)))
            {
              v18 += CFUniCharDecomposeCharacter(v24, &v21[v18], v32 - v18);
            }

            else
            {
              v21[v18++] = v24;
            }

            v13 = a5;
LABEL_68:
            v40 = 1;
            if (HIWORD(v24))
            {
              v40 = 2;
            }

            v17 += v40;
            v44 = v32;
LABEL_71:
            v20 = v16 - v17;
            if (v16 > v17)
            {
              goto LABEL_8;
            }

            goto LABEL_79;
          }
        }
      }
    }

    if (v18 < 1)
    {
      v20 = v16;
      v13 = a5;
    }

    else
    {
      v13 = a5;
      if (v18 != 1)
      {
        __CFUniCharPrioritySort(v21, v18);
      }

      if (!CFUniCharFillDestinationBuffer(v21, v18, &v53, a5, &v52, a8))
      {
        goto LABEL_74;
      }

      v17 = 0;
    }

    v29 = v50;
    if (v24 < 0x10000 || (v29 = CFUniCharGetBitmapPtrForPlane(9u, BYTE2(v24))) != 0) && ((*(v29 + (v24 >> 3)) >> (v24 & 7)))
    {
      v30 = CFUniCharDecomposeCharacter(v24, v21, 32);
      v18 = v30;
      if (a7 && v30 != 1)
      {
        v16 = v20;
        v32 = v44;
        goto LABEL_68;
      }
    }

    else
    {
      *v21 = v24;
      v18 = 1;
    }

    if (!CFUniCharFillDestinationBuffer(v21, v18, &v53, v13, &v52, a8))
    {
      v16 = v20;
      goto LABEL_79;
    }

    v18 = 0;
    v31 = -2;
    if (!HIWORD(v24))
    {
      v31 = -1;
    }

    v16 = v20 + v31;
    v23 = v22;
    v20 = v16 - v17;
    if (v16 <= v17)
    {
      goto LABEL_87;
    }
  }

  if (v20 != 1)
  {
    v27 = *v22;
    if ((v27 & 0xFC00) == 0xDC00)
    {
      v22 = v23 + 2;
      v24 = v27 + (v24 << 10) - 56613888;
      goto LABEL_20;
    }
  }

  if (!a8)
  {
    goto LABEL_20;
  }

  v23 = v22;
LABEL_76:
  if (a10)
  {
    *a10 = v23 - a1;
  }

  v13 = a5;
LABEL_79:
  v14 = a3;
  v12 = a6;
  v15 = a2;
  if (v18 < 1)
  {
    goto LABEL_88;
  }

LABEL_80:
  if (v18 >= 2)
  {
    __CFUniCharPrioritySort(v21, v18);
  }

  if (CFUniCharFillDestinationBuffer(v21, v18, &v53, v13, &v52, a8))
  {
    v41 = v17;
  }

  else
  {
    v41 = 0;
  }

  v16 -= v41;
LABEL_88:
  if (v21 != v54)
  {
    CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, v21);
  }

LABEL_90:
  if (v14)
  {
    *v14 = v15 - v16;
  }

  if (v12)
  {
    *v12 = v52;
  }

  result = v16 < 1;
  v43 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t (**__CFStringEncodingGetTraditionalChineseConverterDefinition(int a1, uint64_t (*a2)(uint64_t)))()
{
  if (!__CFStringEncodingIsDecomposableCharacter_1)
  {
    __CFStringEncodingIsDecomposableCharacter_1 = a2(1);
    __CFStringEncodingDecomposeCharacter_1 = a2(2);
    __CFStringEncodingIsValidCombiningCharacterForLatin1_3 = a2(3);
    __CFStringEncodingPrecomposeLatinCharacter_5 = a2(4);
  }

  v4 = __CFConverterMacTraditionalChinese;
  if (a1 != 2)
  {
    v4 = 0;
  }

  if (a1 == 2563)
  {
    return __CFConverterBig5;
  }

  else
  {
    return v4;
  }
}

uint64_t __CFToBig5(uint64_t a1, unsigned int a2, _BYTE *a3)
{
  LOBYTE(v4) = a2;
  if (a2 < 0x80)
  {
    v5 = 1;
LABEL_6:
    *a3 = v4;
    return v5;
  }

  v4 = __CFToBig5Core(a2);
  if (v4 != 65533)
  {
    *a3++ = BYTE1(v4);
    v5 = 2;
    goto LABEL_6;
  }

  return 0;
}

uint64_t __CFFromBig5(uint64_t a1, char *a2, uint64_t a3, unsigned __int16 *a4)
{
  v4 = *a2;
  if ((*a2 & 0x80000000) == 0)
  {
    *a4 = v4;
    return 1;
  }

  if (a3 < 2)
  {
    return 0;
  }

  v6 = a2[1] | (v4 << 8);
  if ((v6 + 1566) < 0xA75Eu)
  {
    goto LABEL_11;
  }

  v7 = &__CFFromBig5CharMap;
  v8 = (&__CFFromBig5CharMap + 28248);
  while (1)
  {
    v9 = &v7[33 * ((0xF83E0F83E0F83E1 * (v8 - v7)) >> 1)];
    v10 = *v9;
    if (v10 <= v6)
    {
      break;
    }

    v8 = v9 - 33;
LABEL_10:
    if (v7 > v8)
    {
      goto LABEL_11;
    }
  }

  if (v10 + 32 <= v6)
  {
    v7 = v9 + 33;
    goto LABEL_10;
  }

  v11 = v9[v6 - v10 + 1];
  if (!v11)
  {
LABEL_11:
    *a4 = -3;
    return 0;
  }

  *a4 = v11;
  if (v11 == 65533)
  {
    return 0;
  }

  return 2;
}

uint64_t __CFToBig5Len(uint64_t a1, unsigned __int16 *a2, uint64_t a3)
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

uint64_t __CFFromBig5Len(uint64_t a1, char *a2, uint64_t a3)
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

uint64_t __CFToBig5Precompose(uint64_t a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  v9 = *a2;
  if (v9 <= 0x7F)
  {
    v10 = __CFStringEncodingPrecomposeLatinCharacter_5(a2, a3, 0);
    goto LABEL_3;
  }

  v14 = a2[1];
  v10 = -3;
  if (v14 > 0x3098)
  {
    if (v14 == 12441)
    {
      if (v9 == 12454)
      {
        v10 = 12532;
        goto LABEL_29;
      }

      v10 = v9 + 1;
    }

    else
    {
      if (v14 != 12442)
      {
        goto LABEL_29;
      }

      v10 = v9 + 2;
    }

LABEL_3:
    if (v10 < 0x80u)
    {
      v11 = &v23;
      goto LABEL_5;
    }

LABEL_25:
    if (v10 < 0xA2u)
    {
      return 0;
    }

    goto LABEL_29;
  }

  if (v14 == 774)
  {
    if ((v9 & 0xFFFFFFDF) == 0x418)
    {
      v10 = v9 | 1;
      goto LABEL_25;
    }
  }

  else
  {
    if (v9 == 1077)
    {
      v15 = 1105;
    }

    else
    {
      v15 = -3;
    }

    if (v9 == 1045)
    {
      v16 = 1025;
    }

    else
    {
      v16 = v15;
    }

    if (v14 == 776)
    {
      v10 = v16;
    }

    else
    {
      v10 = -3;
    }
  }

LABEL_29:
  v17 = &__CFToBig5CharMap;
  v18 = (&__CFToBig5CharMap + 42642);
  while (1)
  {
    v19 = &v17[9 * ((0x8E38E38E38E38E39 * (v18 - v17)) >> 1)];
    v20 = *v19;
    if (v20 <= v10)
    {
      break;
    }

    v18 = v19 - 9;
LABEL_34:
    if (v17 > v18)
    {
      return 0;
    }
  }

  if (v20 + 8 <= v10)
  {
    v17 = v19 + 9;
    goto LABEL_34;
  }

  v10 = v19[v10 - v20 + 1];
  if (v10)
  {
    v21 = v10 == 65533;
  }

  else
  {
    v21 = 1;
  }

  if (v21)
  {
    return 0;
  }

  v23 = HIBYTE(v10);
  v11 = &v22;
LABEL_5:
  *v11 = v10;
  v12 = v23;
  if (!v23)
  {
    return 0;
  }

  result = 2;
  *a6 = 2;
  if (a5)
  {
    if (a5 >= 2)
    {
      *a4 = v12;
      a4[1] = v22;
      return 2;
    }

    return 0;
  }

  return result;
}

uint64_t __CFIsValidCombiningCharTraditionalChinese(int a1)
{
  if ((a1 - 774) <= 0x32 && ((1 << (a1 - 6)) & 0x4000000000005) != 0 || (a1 - 12441) < 2)
  {
    return 1;
  }

  else
  {
    return __CFStringEncodingIsValidCombiningCharacterForLatin1_3();
  }
}

uint64_t __CFToBig5Core(unsigned int a1)
{
  if (a1 < 0xA2)
  {
    return -3;
  }

  v1 = &__CFToBig5CharMap;
  v2 = (&__CFToBig5CharMap + 42642);
  while (1)
  {
    v3 = &v1[9 * ((0x8E38E38E38E38E39 * (v2 - v1)) >> 1)];
    v4 = *v3;
    if (v4 <= a1)
    {
      break;
    }

    v2 = v3 - 9;
LABEL_7:
    if (v1 > v2)
    {
      return -3;
    }
  }

  if (v4 + 8 <= a1)
  {
    v1 = v3 + 9;
    goto LABEL_7;
  }

  v5 = v3[a1 - v4 + 1];
  if (!v5)
  {
    return -3;
  }

  return v5;
}

uint64_t __CFToMacTraditionalChinese(char a1, unsigned __int16 *a2, uint64_t a3, _BYTE *a4, uint64_t a5, void *a6)
{
  if (a3 < 1)
  {
    v12 = 0;
    v11 = 0;
    goto LABEL_171;
  }

  v11 = 0;
  v12 = 0;
  v13 = &unk_1EA849000;
  v14 = 0xA692u;
  while (1)
  {
    if (a5 && v11 >= a5)
    {
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_171;
      }

      v15 = *a2;
      if ((v15 & 0xFFF0) != 0xF870)
      {
        goto LABEL_171;
      }
    }

    else
    {
      v15 = *a2;
    }

    if (v15 < 0x80 || v15 == 160 || a1 < 0 && (v15 - 131) <= 0x1Cu)
    {
      ++v11;
      if (a5)
      {
        *a4++ = v15;
      }

      goto LABEL_15;
    }

    if ((v15 + 1918) < 0x827u)
    {
      break;
    }

    v16 = &__CFToMacTraditionalChineseMap;
    v17 = &unk_18342CC7A;
    while (1)
    {
      v18 = &v16[2 * ((v17 - v16) >> 3)];
      v19 = *v18;
      if (v19 <= v15)
      {
        break;
      }

      v17 = v18 - 2;
LABEL_23:
      if (v16 > v17)
      {
        goto LABEL_24;
      }
    }

    if (v19 < v15)
    {
      v16 = v18 + 2;
      goto LABEL_23;
    }

    v24 = v18[1];
    if (v24 > 0xFF)
    {
      if (a5)
      {
        if (v11 + 2 > a5)
        {
          goto LABEL_171;
        }

        *a4 = BYTE1(v24);
        a4[1] = v24;
        a4 += 2;
      }

      v11 += 2;
      goto LABEL_15;
    }

    ++v11;
    if (a5)
    {
      *a4++ = v24;
    }

LABEL_15:
    ++a2;
    if (++v12 == a3)
    {
      v12 = a3;
      goto LABEL_171;
    }
  }

LABEL_24:
  if (v15 < 0xA2)
  {
    goto LABEL_40;
  }

  v20 = (&__CFToBig5CharMap + v14);
  v21 = &__CFToBig5CharMap;
  while (2)
  {
    v22 = &v21[9 * ((0x8E38E38E38E38E39 * (v20 - v21)) >> 1)];
    v23 = *v22;
    if (v23 > v15)
    {
      v20 = v22 - 9;
      goto LABEL_30;
    }

    if (v23 + 8 <= v15)
    {
      v21 = v22 + 9;
LABEL_30:
      if (v21 > v20)
      {
        goto LABEL_40;
      }

      continue;
    }

    break;
  }

  if (v22[(v15 - v23) + 1])
  {
    v25 = v22[(v15 - v23) + 1] == 65533;
  }

  else
  {
    v25 = 1;
  }

  if (!v25)
  {
    if (a5)
    {
      if (v11 + 2 > a5)
      {
        goto LABEL_171;
      }

      *a4 = bswap32(v22[(v15 - v23) + 1]) >> 16;
      a4 += 2;
    }

    v11 += 2;
    goto LABEL_15;
  }

LABEL_40:
  if ((a1 & 8) != 0 || !v12)
  {
    goto LABEL_171;
  }

  if ((a1 & 0x10) == 0)
  {
    goto LABEL_15;
  }

  if (((v15 - 774) > 0x32 || ((1 << (v15 - 6)) & 0x4000000000005) == 0) && (v15 - 12441) >= 2)
  {
    v41 = a6;
    if (v13[431](v15))
    {
      LODWORD(v15) = *a2;
      a6 = v41;
      v13 = &unk_1EA849000;
      v14 = 42642;
      goto LABEL_46;
    }

    a6 = v41;
    v14 = 42642;
    if (v15 <= 63613)
    {
      v13 = &unk_1EA849000;
      v29 = -95;
      if (v15 != 63612)
      {
        if (v15 != 63613)
        {
          goto LABEL_171;
        }

        v30 = *(a2 - 1);
        if (v30 <= 0xFF0D)
        {
          switch(v30)
          {
            case 0x3001u:
              v31 = 78;
              if (!a5)
              {
                goto LABEL_15;
              }

              break;
            case 0xFF01u:
              v31 = 84;
              if (!a5)
              {
                goto LABEL_15;
              }

              break;
            case 0xFF0Cu:
              v31 = 77;
              if (!a5)
              {
                goto LABEL_15;
              }

              break;
            default:
              goto LABEL_171;
          }
        }

        else if (*(a2 - 1) > 0xFF1Au)
        {
          if (v30 == 65307)
          {
            v31 = 81;
            if (!a5)
            {
              goto LABEL_15;
            }
          }

          else
          {
            if (v30 != 65311)
            {
              goto LABEL_171;
            }

            v31 = 83;
            if (!a5)
            {
              goto LABEL_15;
            }
          }
        }

        else if (v30 == 65294)
        {
          v31 = 79;
          if (!a5)
          {
            goto LABEL_15;
          }
        }

        else
        {
          if (v30 != 65306)
          {
            goto LABEL_171;
          }

          v31 = 82;
          if (!a5)
          {
            goto LABEL_15;
          }
        }

        goto LABEL_165;
      }

      v39 = *(a2 - 1);
      switch(v39)
      {
        case 8254:
          v31 = -61;
          break;
        case 65343:
          v31 = -59;
          break;
        case 65099:
          v31 = -53;
          break;
        default:
          goto LABEL_171;
      }

      goto LABEL_164;
    }

    v13 = &unk_1EA849000;
    if (v15 == 63614)
    {
      if (*(a2 - 1) != -242)
      {
        goto LABEL_171;
      }

      if (a5)
      {
        *(a4 - 1) = 20641;
      }

      goto LABEL_15;
    }

    if (v15 != 63615)
    {
      goto LABEL_171;
    }

    v38 = *(a2 - 1);
    if (v38 <= 0xFF07)
    {
      if (*(a2 - 1) > 0x3014u)
      {
        if (v38 != 12309)
        {
          if (v38 == 21313)
          {
            v31 = -52;
          }

          else
          {
            if (v38 != 21317)
            {
              goto LABEL_171;
            }

            v31 = -50;
          }

          v29 = -94;
          if (!a5)
          {
            goto LABEL_15;
          }

          goto LABEL_165;
        }

        v31 = -92;
        v29 = -95;
        goto LABEL_164;
      }

      if (v38 == 92)
      {
        if (!a5)
        {
          goto LABEL_15;
        }

        v31 = 0x80;
LABEL_166:
        *(a4 - 1) = v31;
        goto LABEL_15;
      }

      if (v38 == 9474)
      {
        v31 = 121;
LABEL_163:
        v29 = -94;
LABEL_164:
        if (!a5)
        {
          goto LABEL_15;
        }

LABEL_165:
        *(a4 - 2) = v29;
        goto LABEL_166;
      }

      if (v38 != 12308)
      {
        goto LABEL_171;
      }

      v31 = -93;
    }

    else if (*(a2 - 1) <= 0xFF3Bu)
    {
      if (v38 != 65288)
      {
        if (v38 == 65289)
        {
          v31 = 126;
        }

        else
        {
          if (v38 != 65295)
          {
            goto LABEL_171;
          }

          v31 = -2;
        }

LABEL_160:
        v29 = -95;
        if (!a5)
        {
          goto LABEL_15;
        }

        goto LABEL_165;
      }

      v31 = 125;
    }

    else
    {
      if (*(a2 - 1) <= 0xFF5Au)
      {
        if (v38 != 65340)
        {
          if (v38 != 65343)
          {
            goto LABEL_171;
          }

          v31 = 90;
          goto LABEL_160;
        }

        v31 = 64;
        goto LABEL_163;
      }

      if (v38 == 65371)
      {
        v29 = -95;
        v31 = -95;
        goto LABEL_164;
      }

      if (v38 != 65373)
      {
        goto LABEL_171;
      }

      v31 = -94;
    }

    v29 = -95;
    goto LABEL_164;
  }

LABEL_46:
  v26 = *(a2 - 1);
  if (v15 <= 823)
  {
    if (v15 == 774)
    {
      if ((v26 & 0xFFFFFFDF) == 0x418)
      {
        v27 = v26 | 1;
        goto LABEL_87;
      }
    }

    else if (v15 == 776)
    {
      if (v26 == 1077)
      {
        v28 = 1105;
      }

      else
      {
        v28 = -3;
      }

      if (v26 == 1045)
      {
        v27 = 1025;
      }

      else
      {
        v27 = v28;
      }

      goto LABEL_87;
    }

    goto LABEL_71;
  }

  if (v15 == 824)
  {
    if (v26 == 61)
    {
      v27 = 8800;
      goto LABEL_87;
    }

    goto LABEL_71;
  }

  if (v15 != 12441)
  {
    if (v15 == 12442)
    {
      v27 = v26 + 2;
LABEL_86:
      if (v27 < 0xA2u)
      {
        goto LABEL_171;
      }

      goto LABEL_87;
    }

LABEL_71:
    v27 = -3;
    goto LABEL_87;
  }

  if (v26 != 12454)
  {
    v27 = v26 + 1;
    goto LABEL_86;
  }

  v27 = 12532;
LABEL_87:
  v32 = (&__CFToBig5CharMap + v14);
  v33 = &__CFToBig5CharMap;
  while (2)
  {
    v34 = &v33[9 * ((0x8E38E38E38E38E39 * (v32 - v33)) >> 1)];
    v35 = *v34;
    if (v35 > v27)
    {
      v32 = v34 - 9;
      goto LABEL_92;
    }

    if (v35 + 8 <= v27)
    {
      v33 = v34 + 9;
LABEL_92:
      if (v33 > v32)
      {
        goto LABEL_171;
      }

      continue;
    }

    break;
  }

  v36 = v34[v27 - v35 + 1];
  if (v36)
  {
    v37 = v36 == 65533;
  }

  else
  {
    v37 = 1;
  }

  if (!v37)
  {
    if (a5)
    {
      *(a4 - 1) = bswap32(v36) >> 16;
    }

    goto LABEL_15;
  }

LABEL_171:
  *a6 = v11;
  return v12;
}

uint64_t __CFFromMacTraditionalChinese(uint64_t a1, char *a2, uint64_t a3, __int16 *a4, uint64_t a5, uint64_t *a6)
{
  v42 = *MEMORY[0x1E69E9840];
  *a6 = 0;
  if (a3 < 1)
  {
    v13 = 0;
    goto LABEL_176;
  }

  v9 = a3;
  v12 = 0;
  v13 = 0;
  v14 = a1 & 0xC0;
  if ((a1 & 0x200) != 0)
  {
    v15 = 1;
  }

  else
  {
    v15 = 2;
  }

  v16 = 0x6E58u;
  v17 = &unk_1EA849000;
LABEL_6:
  if (a5 && v12 >= a5)
  {
    goto LABEL_176;
  }

  v18 = *a2;
  if ((*a2 & 0x80000000) == 0 || v18 == 160 || (a1 & 0x80) != 0 && (v18 - 131) <= 0x1C)
  {
    goto LABEL_12;
  }

  if (v18 != 128)
  {
    if ((v18 - 253) <= 0xFFFFFF85)
    {
      if (*a2 > 0xFCu)
      {
        if (v18 == 253)
        {
          LOWORD(v18) = 169;
        }

        else if (v18 == 254)
        {
          LOWORD(v18) = 8482;
        }

        else
        {
          LOWORD(v18) = 8230;
        }

        goto LABEL_12;
      }

      if (v18 == 129)
      {
        if ((a1 & 0x200) == 0)
        {
          LOWORD(v18) = -1920;
          goto LABEL_12;
        }
      }

      else if (v18 == 130 && (a1 & 0x200) == 0)
      {
        LOWORD(v18) = -1919;
LABEL_12:
        if (a5)
        {
          *a4++ = v18;
        }

        ++v12;
        goto LABEL_15;
      }

      v19 = 1;
      goto LABEL_17;
    }

    if (v9 == 1)
    {
      goto LABEL_176;
    }

    v21 = a2[1];
    if (v18 == 162)
    {
      if (a2[1] > 0xCBu)
      {
        if (v21 == 204)
        {
          if ((a1 & 0x200) != 0)
          {
            v24 = 21313;
            goto LABEL_171;
          }

          v22 = 1396832383;
          goto LABEL_80;
        }

        if (v21 == 206)
        {
          if ((a1 & 0x200) != 0)
          {
            v24 = 21317;
            goto LABEL_171;
          }

          v22 = 1397094527;
          goto LABEL_80;
        }
      }

      else
      {
        if (v21 == 64)
        {
          if ((a1 & 0x200) != 0)
          {
            v24 = -196;
            goto LABEL_171;
          }

          v22 = -12781441;
          goto LABEL_80;
        }

        if (v21 == 121)
        {
          if ((a1 & 0x200) != 0)
          {
            v24 = 9474;
            goto LABEL_171;
          }

          v22 = 620951679;
          goto LABEL_80;
        }
      }
    }

    else if (v18 == 161)
    {
      if (a2[1] > 0x7Cu)
      {
        if (a2[1] <= 0xA3u)
        {
          if (a2[1] > 0xA0u)
          {
            if (v21 == 161)
            {
              if ((a1 & 0x200) == 0)
              {
                v22 = -10749825;
                goto LABEL_80;
              }

              v24 = -165;
            }

            else
            {
              if (v21 != 162)
              {
                if ((a1 & 0x200) != 0)
                {
                  v24 = 12308;
                  goto LABEL_171;
                }

                v22 = 806680703;
                goto LABEL_80;
              }

              if ((a1 & 0x200) == 0)
              {
                v22 = -10618753;
                goto LABEL_80;
              }

              v24 = -163;
            }

            goto LABEL_171;
          }

          if (v21 == 125)
          {
            if ((a1 & 0x200) == 0)
            {
              v22 = -16189313;
              goto LABEL_80;
            }

            v24 = -248;
            goto LABEL_171;
          }

          if (v21 == 126)
          {
            if ((a1 & 0x200) == 0)
            {
              v22 = -16123777;
              goto LABEL_80;
            }

            v24 = -247;
            goto LABEL_171;
          }
        }

        else if (a2[1] > 0xCAu)
        {
          switch(v21)
          {
            case 203:
              if ((a1 & 0x200) == 0)
              {
                v22 = -28575620;
                goto LABEL_80;
              }

              v24 = -437;
              goto LABEL_171;
            case 242:
              v24 = 8853;
              goto LABEL_171;
            case 254:
              if ((a1 & 0x200) == 0)
              {
                v22 = -15730561;
                goto LABEL_80;
              }

              v24 = -241;
              goto LABEL_171;
          }
        }

        else
        {
          switch(v21)
          {
            case 164:
              if ((a1 & 0x200) == 0)
              {
                v22 = 806746239;
                goto LABEL_80;
              }

              v24 = 12309;
              goto LABEL_171;
            case 195:
              if ((a1 & 0x200) == 0)
              {
                v22 = 540997756;
                goto LABEL_80;
              }

              v24 = 8254;
              goto LABEL_171;
            case 197:
              if ((a1 & 0x200) != 0)
              {
                goto LABEL_146;
              }

              v22 = -12584836;
LABEL_80:
              v12 += 2;
              if (!a5)
              {
                goto LABEL_174;
              }

              if (v12 <= a5)
              {
                HIDWORD(v23) = v22;
                LODWORD(v23) = v22;
                *a4 = v23 >> 16;
                a4 += 2;
                goto LABEL_174;
              }

              goto LABEL_176;
          }
        }
      }

      else if (a2[1] <= 0x4Fu)
      {
        if (a2[1] > 0x4Cu)
        {
          if (v21 == 77)
          {
            if ((a1 & 0x200) == 0)
            {
              v22 = -15927171;
              goto LABEL_80;
            }

            v24 = -244;
            goto LABEL_171;
          }

          if (v21 == 78)
          {
            if ((a1 & 0x200) == 0)
            {
              v22 = 805435517;
              goto LABEL_80;
            }

            v24 = 12289;
            goto LABEL_171;
          }

          if ((a1 & 0x200) == 0)
          {
            v22 = -15796099;
            goto LABEL_80;
          }

          goto LABEL_149;
        }

        if (v21 == 69)
        {
          v24 = 183;
          goto LABEL_171;
        }

        if (v21 == 75)
        {
          v24 = 8943;
          goto LABEL_171;
        }
      }

      else
      {
        if (a2[1] <= 0x52u)
        {
          if (v21 != 80)
          {
            if (v21 != 81)
            {
              if ((a1 & 0x200) != 0)
              {
                v24 = -230;
                goto LABEL_171;
              }

              v22 = -15009667;
              goto LABEL_80;
            }

            if ((a1 & 0x200) == 0)
            {
              v22 = -14944131;
              goto LABEL_80;
            }

            v24 = -229;
LABEL_171:
            if (a5)
            {
              *a4++ = v24;
            }

            goto LABEL_173;
          }

          if ((a1 & 0x200) == 0)
          {
            v22 = -15796098;
            goto LABEL_80;
          }

LABEL_149:
          v24 = -242;
          goto LABEL_171;
        }

        switch(v21)
        {
          case 'S':
            if ((a1 & 0x200) == 0)
            {
              v22 = -14681987;
              goto LABEL_80;
            }

            v24 = -225;
            goto LABEL_171;
          case 'T':
            if ((a1 & 0x200) == 0)
            {
              v22 = -16648067;
              goto LABEL_80;
            }

            v24 = -255;
            goto LABEL_171;
          case 'Z':
            if ((a1 & 0x200) == 0)
            {
              v22 = -12584833;
              goto LABEL_80;
            }

LABEL_146:
            v24 = -193;
            goto LABEL_171;
        }
      }
    }

    v25 = v21 | (v18 << 8);
    if ((v25 + 1566) < 0xA75Eu)
    {
      goto LABEL_176;
    }

    v26 = (&__CFFromBig5CharMap + v16);
    v27 = &__CFFromBig5CharMap;
    while (1)
    {
      v28 = &v27[33 * ((0xF83E0F83E0F83E1 * (v26 - v27)) >> 1)];
      v29 = *v28;
      if (v29 <= v25)
      {
        if (v29 + 32 > v25)
        {
          v30 = v28[v25 - v29 + 1];
          if (v30)
          {
            v31 = v30 == 65533;
          }

          else
          {
            v31 = 1;
          }

          if (v31)
          {
            goto LABEL_176;
          }

          if (v14 != 64 || (v40 = v15, v32 = (*(v17 + 436))(v30, 0, 65533), v17 = &unk_1EA849000, v16 = 28248, v15 = v40, v14 = 64, !v32))
          {
            if (a5)
            {
              *a4++ = v30;
            }

            v12 = *a6;
LABEL_173:
            ++v12;
LABEL_174:
            v19 = 2;
LABEL_16:
            *a6 = v12;
            goto LABEL_17;
          }

          v33 = __CFStringEncodingDecomposeCharacter_1(a1, v30, v41, 0x1EA849000, 4279040125, 4279957629, 327680, 4282382460);
          v34 = *a6;
          v12 = *a6 + v33;
          *a6 = v12;
          if (!a5)
          {
            goto LABEL_127;
          }

          if (v12 > a5)
          {
            *a6 = v34;
            goto LABEL_176;
          }

          if (v33 < 1)
          {
LABEL_127:
            v19 = 2;
            v14 = 64;
            v15 = v40;
            v16 = 28248;
            v17 = &unk_1EA849000;
            goto LABEL_17;
          }

          v35 = v33 + 1;
          v36 = v41;
          v14 = 64;
          v15 = v40;
          v16 = 28248;
          v17 = &unk_1EA849000;
          do
          {
            v37 = *v36++;
            *a4++ = v37;
            --v35;
          }

          while (v35 > 1);
          v19 = 2;
LABEL_17:
          v13 += v19;
          a2 += v19;
          v20 = v9 <= v19;
          v9 -= v19;
          if (v20)
          {
            goto LABEL_176;
          }

          goto LABEL_6;
        }

        v27 = v28 + 33;
      }

      else
      {
        v26 = v28 - 33;
      }

      if (v27 > v26)
      {
        goto LABEL_176;
      }
    }
  }

  v12 += v15;
  if (!a5)
  {
LABEL_15:
    v19 = 1;
    goto LABEL_16;
  }

  if (v12 <= a5)
  {
    *a4 = 92;
    if ((a1 & 0x200) != 0)
    {
      ++a4;
    }

    else
    {
      a4[1] = -1921;
      a4 += 2;
    }

    goto LABEL_15;
  }

LABEL_176:
  v38 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t __CFFromMacTraditionalChineseLen(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  if (a3 < 1)
  {
    return 0;
  }

  result = 0;
  do
  {
    if ((*a2 & 0x80) == 0 || (*a2 - 129 <= 0x1F ? (v4 = ((1 << (*a2 + 127)) & 0x80000003) == 0) : (v4 = 1), v4 ? (v5 = a3 == 1) : (v5 = 1), v5 || *a2 >= 0xFDu))
    {
      ++a2;
      --a3;
    }

    else
    {
      v6 = *a2;
      v7 = a3 - 1;
      if (v6 == 128)
      {
        v8 = a2 + 1;
      }

      else
      {
        v8 = a2 + 2;
      }

      if (v6 == 128)
      {
        v9 = result + 1;
      }

      else
      {
        v7 = a3 - 2;
        v9 = result;
      }

      if (v6 == 161)
      {
        a2 += 2;
      }

      else
      {
        a2 = v8;
      }

      if (v6 == 161)
      {
        a3 -= 2;
      }

      else
      {
        a3 = v7;
      }

      if (v6 == 161)
      {
        ++result;
      }

      else
      {
        result = v9;
      }
    }

    ++result;
  }

  while (a3 > 0);
  return result;
}

uint64_t CFUniCharPrecomposeCharacter(unsigned int a1, unsigned int a2)
{
  if (a2 - 93544 < 0xFFFE9598)
  {
    return 65533;
  }

  v2 = &__CFUniCharPrecompSourceTable;
  v3 = &unk_1832B3BB8;
  while (1)
  {
    v4 = &v2[2 * ((v3 - v2) >> 4)];
    if (*v4 <= a2)
    {
      break;
    }

    v3 = v4 - 2;
LABEL_7:
    if (v2 > v3)
    {
      return 65533;
    }
  }

  if (*v4 < a2)
  {
    v2 = v4 + 2;
    goto LABEL_7;
  }

  v6 = v4[1];
  if (!v6)
  {
    return 65533;
  }

  if ((v6 & 0x80000000) != 0)
  {
    v11 = &__CFUniCharNonBMPPrecompDestinationTable + 4 * v6;
    if (*v11 > a1)
    {
      return 65533;
    }

    v12 = &v11[8 * (HIWORD(v6) & 0x7FFF) - 8];
    if (*v12 < a1)
    {
      return 65533;
    }

    while (1)
    {
      v13 = &v11[8 * ((v12 - v11) >> 4)];
      if (*v13 <= a1)
      {
        if (*v13 >= a1)
        {
          result = *(v13 + 1);
LABEL_30:
          if (!result)
          {
            return 65533;
          }

          return result;
        }

        v11 = v13 + 8;
      }

      else
      {
        v12 = v13 - 8;
      }

      if (v11 > v12)
      {
        return 65533;
      }
    }
  }

  v7 = &__CFUniCharBMPPrecompDestinationTable + 4 * v6;
  if (*v7 <= a1)
  {
    v8 = &v7[4 * HIWORD(v6) - 4];
    if (*v8 >= a1)
    {
      do
      {
        v9 = &v7[4 * ((v8 - v7) >> 3)];
        v10 = *v9;
        if (v10 <= a1)
        {
          if (v10 >= a1)
          {
            result = v9[1];
            goto LABEL_30;
          }

          v7 = (v9 + 2);
        }

        else
        {
          v8 = v9 - 2;
        }
      }

      while (v7 <= v8);
    }
  }

  return 65533;
}

uint64_t CFUniCharPrecompose(unsigned __int16 *a1, uint64_t a2, void *a3, char *a4, uint64_t a5, void *a6)
{
  v6 = a6;
  v7 = a3;
  if (a2 < 1)
  {
    v27 = 0;
    v11 = a2;
    if (a3)
    {
LABEL_100:
      *v7 = a2 - v11;
    }

    goto LABEL_101;
  }

  v9 = 0;
  v51 = a4;
  v52 = 0;
  v10 = 0;
  v49 = 1;
  v11 = a2;
  v12 = 65533;
  v13 = a4;
  while (1)
  {
    while (1)
    {
      v14 = *a1;
      if (v11 != 1 && (v14 & 0xFC00) == 0xD800)
      {
        break;
      }

      --v11;
      ++a1;
      if (v10)
      {
        goto LABEL_14;
      }

LABEL_30:
      v22 = v14 - 4352 > 0xFE || v11 == 0;
      v23 = v22 || v14 > 0x13;
      if (v23 || (v29 = *a1 - 4449, v29 > 0x15))
      {
        v24 = v14;
        v25 = v51;
      }

      else
      {
        v30 = a1 + 1;
        if (v11 < 2)
        {
          v11 = 0;
          v33 = 0;
        }

        else
        {
          v31 = *v30 - 4519;
          v32 = (*v30 - 4519);
          if (v31 <= 0x1C)
          {
            v11 -= 2;
          }

          else
          {
            --v11;
          }

          if (v31 > 0x1C)
          {
            v33 = 0;
          }

          else
          {
            v30 = a1 + 2;
            v33 = v32;
          }
        }

        v25 = v51;
        v24 = v33 + 28 * (v29 + 21 * v14) + 44032;
        a1 = v30;
      }

      if (v12 == 65533)
      {
        v26 = v52;
      }

      else if (v49)
      {
        if (v10 < 0x10000)
        {
          v26 = v52;
        }

        else
        {
          v26 = v52 - 1;
          memmove(v25 + 2, v25 + 4, v13 - (v25 + 4));
        }

        *v25 = v12;
      }

      else
      {
        if (HIWORD(v10))
        {
          v26 = v52;
        }

        else
        {
          if (v52 >= a5)
          {
            v21 = v12;
            ++v52;
            v14 = v24;
LABEL_87:
            v7 = a3;
            v6 = a6;
            goto LABEL_88;
          }

          if (v13 - v25 - 2 >= 1)
          {
            v34 = v13;
            v35 = v13 - v25 + 2;
            v36 = v13;
            do
            {
              v37 = *(v36 - 1);
              v36 -= 2;
              *v34 = v37;
              v35 -= 2;
              v34 = v36;
            }

            while (v35 > 4);
          }

          v26 = v52 + 1;
        }

        *v25 = ((v12 + 67043328) >> 10) - 10240;
        *(v25 + 1) = v12 & 0x3FF | 0xDC00;
      }

      v14 = v24 - 0x10000;
      if (v24 < 0x10000)
      {
        v27 = v26 + 1;
        if (v26 >= a5)
        {
LABEL_80:
          v7 = a3;
          v6 = a6;
          if (a3)
          {
            goto LABEL_100;
          }

          goto LABEL_101;
        }

        UnicodeProperty = 0;
        *v13 = v24;
        v28 = v13 + 2;
        v49 = 1;
        v12 = 65533;
        v14 = v24;
      }

      else
      {
        v27 = v26 + 2;
        if (v26 + 2 > a5)
        {
          goto LABEL_80;
        }

        UnicodeProperty = 0;
        v49 = 0;
        *v13 = (v14 >> 10) - 10240;
        v28 = v13 + 4;
        *(v13 + 1) = v24 & 0x3FF | 0xDC00;
        v12 = 65533;
      }

      v10 = v24;
      v51 = v13;
LABEL_74:
      v9 = UnicodeProperty;
      v52 = v27;
      v13 = v28;
      if (v11 <= 0)
      {
        goto LABEL_83;
      }
    }

    v15 = a1[1];
    v16 = v15 & 0xFC00;
    v17 = v15 + (v14 << 10) - 56613888;
    if (v16 == 56320)
    {
      v14 = v17;
      v11 -= 2;
    }

    else
    {
      --v11;
    }

    if (v16 == 56320)
    {
      a1 += 2;
    }

    else
    {
      ++a1;
    }

    if (!v10)
    {
      goto LABEL_30;
    }

LABEL_14:
    BitmapPtrForPlane = &__CFUniCharNonBaseCharacterSetBitmapPlane0_0;
    if (v14 >= 0x10000)
    {
      BitmapPtrForPlane = CFUniCharGetBitmapPtrForPlane(8u, BYTE2(v14));
      if (!BitmapPtrForPlane)
      {
        goto LABEL_30;
      }
    }

    if (((BitmapPtrForPlane[v14 >> 3] >> (v14 & 7)) & 1) == 0)
    {
      goto LABEL_30;
    }

    if (v12 != 65533)
    {
      v10 = v12;
    }

    if (v14 >= 0x10000)
    {
      UnicodeProperty = CFUniCharGetUnicodeProperty(v14, 0);
      if (v9)
      {
        goto LABEL_26;
      }

      goto LABEL_27;
    }

    if (!__CFUniCharCombiningPriorityTablePlane0_1[v14 >> 8])
    {
      break;
    }

    UnicodeProperty = __CFUniCharCombiningPriorityTablePlane0_1[256 * __CFUniCharCombiningPriorityTablePlane0_1[v14 >> 8] + v14];
    if (v9)
    {
      goto LABEL_26;
    }

LABEL_27:
    v20 = CFUniCharPrecomposeCharacter(v10, v14);
    if (v20 == 65533)
    {
      goto LABEL_45;
    }

    v21 = v20;
    v12 = v20;
    if (v11 < 1)
    {
      goto LABEL_87;
    }
  }

  UnicodeProperty = 0;
  if (!v9)
  {
    goto LABEL_27;
  }

LABEL_26:
  if (UnicodeProperty > v9)
  {
    goto LABEL_27;
  }

  UnicodeProperty = v9;
LABEL_45:
  if (v14 >= 0x10000)
  {
    v27 = v52 + 2;
    if (v52 + 2 > a5)
    {
      goto LABEL_82;
    }

    *v13 = ((v14 - 0x10000) >> 10) - 10240;
    v28 = v13 + 4;
    *(v13 + 1) = v14 & 0x3FF | 0xDC00;
    v14 -= 0x10000;
    goto LABEL_74;
  }

  v27 = v52 + 1;
  if (v52 < a5)
  {
    *v13 = v14;
    v28 = v13 + 2;
    goto LABEL_74;
  }

LABEL_82:
  v28 = v13;
LABEL_83:
  v13 = v28;
  v21 = v12;
  v52 = v27;
  v22 = v12 == 65533;
  v7 = a3;
  v6 = a6;
  if (v22)
  {
    goto LABEL_99;
  }

LABEL_88:
  if (v14 < 0x10000)
  {
    if (v10 < 0x10000)
    {
      v43 = v52;
    }

    else
    {
      v43 = v52 - 1;
      memmove(v51 + 2, v51 + 4, v13 - (v51 + 4));
    }

    *v51 = v21;
    v27 = v43;
    if (v7)
    {
      goto LABEL_100;
    }

LABEL_101:
    v44 = 1;
    result = 1;
    if (v6)
    {
LABEL_102:
      *v6 = v27;
      return v44;
    }

    return result;
  }

  if (HIWORD(v10))
  {
    v42 = v52;
    goto LABEL_98;
  }

  v27 = v52 + 1;
  if (v52 < a5)
  {
    if (v13 - v51 - 2 >= 1)
    {
      v38 = v13;
      v39 = v13 - v51 + 2;
      v40 = v13;
      do
      {
        v41 = *(v40 - 1);
        v40 -= 2;
        *v38 = v41;
        v39 -= 2;
        v38 = v40;
      }

      while (v39 > 4);
    }

    v42 = v52 + 1;
LABEL_98:
    *v51 = ((v21 + 67043328) >> 10) - 10240;
    *(v51 + 1) = v21 & 0x3FF | 0xDC00;
    v27 = v42;
LABEL_99:
    if (!v7)
    {
      goto LABEL_101;
    }

    goto LABEL_100;
  }

  if (v7)
  {
    *v7 = a2 - v11;
  }

  v44 = 0;
  result = 0;
  if (v6)
  {
    goto LABEL_102;
  }

  return result;
}

void __CFUserNotificationDeallocate(uint64_t a1)
{
  v2 = atomic_exchange((a1 + 64), 0);
  if (v2)
  {
    CFMachPortInvalidate(v2);
    CFRelease(v2);
  }

  else
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      mach_port_mod_refs(*MEMORY[0x1E69E9A60], v3, 1u, -1);
    }
  }

  v4 = *(a1 + 48);
  if (v4)
  {
    CFRelease(v4);
  }

  v5 = *(a1 + 56);
  if (v5)
  {

    CFRelease(v5);
  }
}

__CFString *__CFUserNotificationCopyDescription(const void *a1)
{
  v2 = CFGetAllocator(a1);
  Mutable = CFStringCreateMutable(v2, 0);
  CFStringAppendFormat(Mutable, 0, @"<CFUserNotification %p>", a1);
  return Mutable;
}

CFUserNotificationRef CFUserNotificationCreate(CFAllocatorRef allocator, CFTimeInterval timeout, CFOptionFlags flags, SInt32 *error, CFDictionaryRef dictionary)
{
  v35 = *MEMORY[0x1E69E9840];
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  v10 = getpid();
  v11 = _getNextToken_tokenCounter++;
  if (dictionary)
  {
    Value = CFDictionaryGetValue(dictionary, @"SessionID");
  }

  else
  {
    Value = 0;
  }

  name = 0;
  if (!allocator)
  {
    v13 = _CFGetTSD(1u);
    if (v13)
    {
      allocator = v13;
    }

    else
    {
      allocator = &__kCFAllocatorSystemDefault;
    }
  }

  v14 = v11 | (v10 << 16);
  options.reserved[1] = 0;
  *&options.flags = xmmword_183430E80;
  v15 = MEMORY[0x1E69E9A60];
  v20 = mach_port_construct(*MEMORY[0x1E69E9A60], &options, 0, &name);
  if (v20)
  {
    v21 = 1;
  }

  else
  {
    v21 = name == 0;
  }

  if (!v21)
  {
    v20 = _CFUserNotificationSendRequest(allocator, Value, name, v14, flags, dictionary, timeout);
  }

  if (v20)
  {
    if (dictionary)
    {
      v22 = CFDictionaryGetValue(dictionary, @"AlertHeader");
      CFDictionaryGetValue(dictionary, @"AlertMessage");
      CFLog(3, @"%@:  %@", v23, v24, v25, v26, v27, v28, v22);
    }
  }

  else
  {
    Instance = _CFRuntimeCreateInstance(allocator, 0x36uLL, 64, 0, v16, v17, v18, v19);
    if (Instance)
    {
      v30 = Instance;
      *(Instance + 16) = name;
      *(Instance + 20) = v14;
      *(Instance + 24) = timeout;
      *(Instance + 32) = flags;
      if (Value)
      {
        v20 = 0;
        *(Instance + 48) = CFStringCreateCopy(allocator, Value);
        if (!error)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v20 = 0;
        if (!error)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_28;
    }

    v20 = 49164;
  }

  if (name)
  {
    mach_port_mod_refs(*v15, name, 1u, -1);
  }

  v30 = 0;
  if (error)
  {
LABEL_28:
    *error = v20;
  }

LABEL_29:
  v31 = *MEMORY[0x1E69E9840];
  return v30;
}

uint64_t _CFUserNotificationSendRequest(const __CFAllocator *a1, const __CFString *a2, int a3, int a4, int a5, const __CFDictionary *a6, double a7)
{
  v54 = *MEMORY[0x1E69E9840];
  v49 = 0;
  special_port = 0;
  if (a7 >= 2147483650.0 || a7 <= 0.0)
  {
    v14 = 0;
  }

  else
  {
    v14 = a7;
  }

  usedBufLen = 0;
  __strlcpy_chk();
  if (a2)
  {
    v55.length = CFStringGetLength(a2);
    v55.location = 0;
    CFStringGetBytes(a2, v55, 0x8000100u, 0, 0, buffer, 24, &usedBufLen);
    v53 = 0;
    __strlcat_chk();
    __strlcat_chk();
  }

  v15 = task_get_special_port(*MEMORY[0x1E69E9A60], 4, &special_port);
  if (v15)
  {
    v16 = 1;
  }

  else
  {
    v16 = special_port == 0;
  }

  if (!v16)
  {
    v15 = bootstrap_look_up2();
    if (!v15)
    {
      if (v49)
      {
        v17 = _CFProcessNameString();
        valuePtr = v14;
        *buffer = a4;
        Mutable = CFDictionaryCreateMutable(a1, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        v19 = CFNumberCreate(a1, kCFNumberSInt32Type, buffer);
        v20 = CFNumberCreate(a1, kCFNumberSInt32Type, &valuePtr);
        if (a6)
        {
          CFDictionaryApplyFunction(a6, _CFUserNotificationAddToDictionary, Mutable);
        }

        if (v17)
        {
          CFDictionaryAddValue(Mutable, @"AlertSource", v17);
        }

        if (v19)
        {
          CFDictionaryAddValue(Mutable, @"Token", v19);
          CFRelease(v19);
        }

        if (v20)
        {
          CFDictionaryAddValue(Mutable, @"Timeout", v20);
          CFRelease(v20);
        }

        Value = CFDictionaryGetValue(Mutable, @"IconURL");
        if (Value)
        {
          v22 = Value;
          v23 = CFGetTypeID(Value);
          if (v23 == CFURLGetTypeID())
          {
            v24 = CFURLCopyAbsoluteURL(v22);
            CFDictionaryRemoveValue(Mutable, @"IconURL");
            v25 = CFURLCopyFileSystemPath(v24, kCFURLPOSIXPathStyle);
            CFDictionaryAddValue(Mutable, @"IconPath", v25);
            CFRelease(v24);
            CFRelease(v25);
          }
        }

        v26 = CFDictionaryGetValue(Mutable, @"SoundURL");
        if (v26)
        {
          v27 = v26;
          v28 = CFGetTypeID(v26);
          if (v28 == CFURLGetTypeID())
          {
            v29 = CFURLCopyAbsoluteURL(v27);
            CFDictionaryRemoveValue(Mutable, @"SoundURL");
            v30 = CFURLCopyFileSystemPath(v29, kCFURLPOSIXPathStyle);
            CFDictionaryAddValue(Mutable, @"SoundPath", v30);
            CFRelease(v29);
            CFRelease(v30);
          }
        }

        v31 = CFDictionaryGetValue(Mutable, @"LocalizationURL");
        if (v31)
        {
          v32 = v31;
          v33 = CFGetTypeID(v31);
          if (v33 == CFURLGetTypeID())
          {
            v34 = CFURLCopyAbsoluteURL(v32);
            CFDictionaryRemoveValue(Mutable, @"LocalizationURL");
            v35 = CFURLCopyFileSystemPath(v34, kCFURLPOSIXPathStyle);
            CFDictionaryAddValue(Mutable, @"LocalizationPath", v35);
            CFRelease(v34);
            CFRelease(v35);
          }
        }

        v36 = CFDictionaryGetValue(Mutable, @"HelpBundleURL");
        if (v36)
        {
          v37 = v36;
          v38 = CFGetTypeID(v36);
          if (v38 == CFURLGetTypeID())
          {
            v39 = CFURLCopyAbsoluteURL(v37);
            CFDictionaryRemoveValue(Mutable, @"HelpBundleURL");
            v40 = CFURLCopyFileSystemPath(v39, kCFURLPOSIXPathStyle);
            CFDictionaryAddValue(Mutable, @"HelpBundlePath", v40);
            CFRelease(v39);
            CFRelease(v40);
          }
        }

        if (Mutable)
        {
          Data = CFPropertyListCreateData(a1, Mutable, kCFPropertyListXMLFormat_v1_0, 0, 0);
          if (Data)
          {
            v42 = Data;
            usedBufLen = ((CFDataGetLength(Data) + 3) & 0xFFFFFFFFFFFFFFFCLL) + 28;
            Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, usedBufLen, 0x100004027586B93, 0);
            if (__CFOASafe == 1)
            {
              __CFSetLastAllocationEventName();
            }

            if (Typed)
            {
              bzero(Typed, usedBufLen);
              if (a3)
              {
                v44 = 5395;
              }

              else
              {
                v44 = 19;
              }

              *Typed = v44;
              v45 = v49;
              Typed[1] = usedBufLen;
              Typed[2] = v45;
              Typed[3] = a3;
              Typed[5] = a5;
              Typed[6] = 0;
              v56.length = CFDataGetLength(v42);
              v56.location = 0;
              CFDataGetBytes(v42, v56, Typed + 28);
              v15 = mach_msg(Typed, 17, usedBufLen, 0, 0, 0x64u, 0);
              CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
            }

            else
            {
              v15 = 49164;
            }

            CFRelease(v42);
          }

          else
          {
            v15 = 49164;
          }

          CFRelease(Mutable);
        }

        else
        {
          v15 = 49164;
        }
      }
    }
  }

  v46 = *MEMORY[0x1E69E9840];
  return v15;
}

SInt32 CFUserNotificationReceiveResponse(CFUserNotificationRef userNotification, CFTimeInterval timeout, CFOptionFlags *responseFlags)
{
  if (userNotification)
  {
    __CFCheckCFInfoPACSignature(userNotification);
    v6 = _CFGetNonObjCTypeID(userNotification);
    if (v6 != 54)
    {
      _CFAssertMismatchedTypeID(0x36uLL, v6);
    }
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (timeout <= 0.0 || timeout * 1000.0 >= 2147483650.0)
  {
    v7 = 0;
    if (!userNotification)
    {
      return 0;
    }
  }

  else
  {
    v7 = (timeout * 1000.0);
    if (!userNotification)
    {
      return 0;
    }
  }

  if (!*(userNotification + 4))
  {
    return 0;
  }

  Typed = CFAllocatorAllocateTyped(&__kCFAllocatorSystemDefault, 0x4000, 0x100004027586B93, 0);
  if (__CFOASafe == 1)
  {
    __CFSetLastAllocationEventName();
  }

  if (!Typed)
  {
    return 49164;
  }

  bzero(Typed, 0x4000uLL);
  *(Typed + 4) = 0x4000;
  if (v7)
  {
    v9 = 258;
    v10 = v7;
  }

  else
  {
    v9 = 2;
    v10 = 0;
  }

  v11 = mach_msg(Typed, v9, 0, 0x4000u, *(userNotification + 4), v10, 0);
  if (!v11)
  {
    if (responseFlags)
    {
      *responseFlags = *(Typed + 20);
    }

    v12 = *(Typed + 4);
    if (v12 >= 0x1D)
    {
      v13 = CFDataCreate(&__kCFAllocatorSystemDefault, (Typed + 28), v12 - 28);
      if (v13)
      {
        v14 = v13;
        *(userNotification + 7) = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, v13, 0, 0, 0);
        CFRelease(v14);
      }
    }

    v15 = atomic_exchange(userNotification + 8, 0);
    if (v15)
    {
      CFMachPortInvalidate(v15);
      CFRelease(v15);
    }

    mach_port_mod_refs(*MEMORY[0x1E69E9A60], *(userNotification + 4), 1u, -1);
    *(userNotification + 4) = 0;
  }

  CFAllocatorDeallocate(&__kCFAllocatorSystemDefault, Typed);
  return v11;
}

CFStringRef CFUserNotificationGetResponseValue(CFUserNotificationRef userNotification, CFStringRef key, CFIndex idx)
{
  if (userNotification)
  {
    __CFCheckCFInfoPACSignature(userNotification);
    v6 = _CFGetNonObjCTypeID(userNotification);
    if (v6 != 54)
    {
      _CFAssertMismatchedTypeID(0x36uLL, v6);
    }
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (!userNotification)
  {
    return 0;
  }

  result = *(userNotification + 7);
  if (result)
  {
    result = CFDictionaryGetValue(result, key);
    if (result)
    {
      v8 = result;
      v9 = CFGetTypeID(result);
      if (v9 == CFStringGetTypeID())
      {
        if (idx)
        {
          return 0;
        }

        else
        {
          return v8;
        }
      }

      v10 = CFGetTypeID(v8);
      TypeID = CFArrayGetTypeID();
      result = 0;
      if ((idx & 0x8000000000000000) == 0 && v10 == TypeID)
      {
        if (CFArrayGetCount(v8) > idx)
        {

          return CFArrayGetValueAtIndex(v8, idx);
        }

        return 0;
      }
    }
  }

  return result;
}

CFDictionaryRef CFUserNotificationGetResponseDictionary(CFUserNotificationRef userNotification)
{
  if (userNotification)
  {
    __CFCheckCFInfoPACSignature(userNotification);
    v2 = _CFGetNonObjCTypeID(userNotification);
    if (v2 != 54)
    {
      _CFAssertMismatchedTypeID(0x36uLL, v2);
    }
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (userNotification)
  {
    return *(userNotification + 7);
  }

  else
  {
    return 0;
  }
}

SInt32 CFUserNotificationUpdate(CFUserNotificationRef userNotification, CFTimeInterval timeout, CFOptionFlags flags, CFDictionaryRef dictionary)
{
  v5 = flags;
  if (userNotification)
  {
    __CFCheckCFInfoPACSignature(userNotification);
    v8 = _CFGetNonObjCTypeID(userNotification);
    if (v8 != 54)
    {
      _CFAssertMismatchedTypeID(0x36uLL, v8);
    }
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (!userNotification || !*(userNotification + 4))
  {
    return 0;
  }

  v9 = CFGetAllocator(userNotification);
  v10 = *(userNotification + 6);
  v11 = *(userNotification + 5);

  return _CFUserNotificationSendRequest(v9, v10, 0, v11, v5 | 0x10u, dictionary, timeout);
}

SInt32 CFUserNotificationCancel(CFUserNotificationRef userNotification)
{
  if (userNotification)
  {
    __CFCheckCFInfoPACSignature(userNotification);
    v2 = _CFGetNonObjCTypeID(userNotification);
    if (v2 != 54)
    {
      _CFAssertMismatchedTypeID(0x36uLL, v2);
    }
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (!userNotification || !*(userNotification + 4))
  {
    return 0;
  }

  v3 = CFGetAllocator(userNotification);
  v4 = *(userNotification + 6);
  v5 = *(userNotification + 5);

  return _CFUserNotificationSendRequest(v3, v4, 0, v5, 8, 0, 0.0);
}

CFRunLoopSourceRef CFUserNotificationCreateRunLoopSource(CFAllocatorRef allocator, CFUserNotificationRef userNotification, CFUserNotificationCallBack callout, CFIndex order)
{
  v16 = *MEMORY[0x1E69E9840];
  if (userNotification)
  {
    __CFCheckCFInfoPACSignature(userNotification);
    v8 = _CFGetNonObjCTypeID(userNotification);
    if (v8 != 54)
    {
      _CFAssertMismatchedTypeID(0x36uLL, v8);
    }
  }

  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  if (userNotification && callout)
  {
    v9 = atomic_load(userNotification + 8);
    if (!v9 && *(userNotification + 4))
    {
      v15.version = 0;
      memset(&v15.retain, 0, 24);
      v15.info = userNotification;
      v10 = CFGetAllocator(userNotification);
      atomic_store(CFMachPortCreateWithPort(v10, *(userNotification + 4), _CFUserNotificationMachPortCallBack, &v15, 0), userNotification + 8);
    }
  }

  else if (!userNotification)
  {
LABEL_15:
    result = 0;
    goto LABEL_16;
  }

  if (!atomic_load(userNotification + 8))
  {
    goto LABEL_15;
  }

  v12 = atomic_load(userNotification + 8);
  result = CFMachPortCreateRunLoopSource(allocator, v12, order);
  *(userNotification + 9) = callout;
LABEL_16:
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFUserNotificationMachPortCallBack(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 20);
  v6 = *(a2 + 4);
  if (v6 >= 0x1D)
  {
    v7 = CFDataCreate(&__kCFAllocatorSystemDefault, (a2 + 28), v6 - 28);
    if (v7)
    {
      v8 = v7;
      *(a4 + 56) = CFPropertyListCreateWithData(&__kCFAllocatorSystemDefault, v7, 0, 0, 0);
      CFRelease(v8);
    }
  }

  v9 = atomic_exchange((a4 + 64), 0);
  if (v9)
  {
    CFMachPortInvalidate(v9);
    CFRelease(v9);
  }

  mach_port_mod_refs(*MEMORY[0x1E69E9A60], *(a4 + 16), 1u, -1);
  *(a4 + 16) = 0;
  v10 = *(a4 + 72);

  return v10(a4, v5);
}

SInt32 CFUserNotificationDisplayNotice(CFTimeInterval timeout, CFOptionFlags flags, CFURLRef iconURL, CFURLRef soundURL, CFURLRef localizationURL, CFStringRef alertHeader, CFStringRef alertMessage, CFStringRef defaultButtonTitle)
{
  v14 = flags;
  if ((__CF_FORK_STATE & 2) == 0)
  {
    __CF_USED();
  }

  if (__CF_FORK_STATE)
  {
    __THE_PROCESS_HAS_FORKED_AND_YOU_CANNOT_USE_THIS_COREFOUNDATION_FUNCTIONALITY___YOU_MUST_EXEC__();
  }

  Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v17 = Mutable;
  if (iconURL)
  {
    CFDictionaryAddValue(Mutable, @"IconURL", iconURL);
  }

  if (soundURL)
  {
    CFDictionaryAddValue(v17, @"SoundURL", soundURL);
  }

  if (localizationURL)
  {
    CFDictionaryAddValue(v17, @"LocalizationURL", localizationURL);
  }

  if (alertHeader)
  {
    CFDictionaryAddValue(v17, @"AlertHeader", alertHeader);
  }

  if (alertMessage)
  {
    CFDictionaryAddValue(v17, @"AlertMessage", alertMessage);
  }

  if (defaultButtonTitle)
  {
    CFDictionaryAddValue(v17, @"DefaultButtonTitle", defaultButtonTitle);
  }

  v18 = _CFGetTSD(1u);
  if (v18)
  {
    v19 = v18;
  }

  else
  {
    v19 = &__kCFAllocatorSystemDefault;
  }

  v20 = getpid();
  v21 = _getNextToken_tokenCounter++;
  v28 = _CFUserNotificationSendRequest(v19, 0, 0, v21 | (v20 << 16), v14, v17, timeout);
  if (v28)
  {
    CFLog(3, @"%@:  %@", v22, v23, v24, v25, v26, v27, alertHeader);
  }

  CFRelease(v17);
  return v28;
}

SInt32 CFUserNotificationDisplayAlert(CFTimeInterval timeout, CFOptionFlags flags, CFURLRef iconURL, CFURLRef soundURL, CFURLRef localizationURL, CFStringRef alertHeader, CFStringRef alertMessage, CFStringRef defaultButtonTitle, CFStringRef alternateButtonTitle, CFStringRef otherButtonTitle, CFOptionFlags *responseFlags)
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

  error = 0;
  Mutable = CFDictionaryCreateMutable(&__kCFAllocatorSystemDefault, 0, &kCFCopyStringDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v21 = Mutable;
  if (iconURL)
  {
    CFDictionaryAddValue(Mutable, @"IconURL", iconURL);
  }

  if (soundURL)
  {
    CFDictionaryAddValue(v21, @"SoundURL", soundURL);
  }

  if (localizationURL)
  {
    CFDictionaryAddValue(v21, @"LocalizationURL", localizationURL);
  }

  if (alertHeader)
  {
    CFDictionaryAddValue(v21, @"AlertHeader", alertHeader);
  }

  if (alertMessage)
  {
    CFDictionaryAddValue(v21, @"AlertMessage", alertMessage);
  }

  if (defaultButtonTitle)
  {
    CFDictionaryAddValue(v21, @"DefaultButtonTitle", defaultButtonTitle);
  }

  if (alternateButtonTitle)
  {
    CFDictionaryAddValue(v21, @"AlternateButtonTitle", alternateButtonTitle);
  }

  if (otherButtonTitle)
  {
    CFDictionaryAddValue(v21, @"OtherButtonTitle", otherButtonTitle);
  }

  v22 = CFUserNotificationCreate(&__kCFAllocatorSystemDefault, timeout, flags, &error, v21);
  if (v22)
  {
    v23 = v22;
    v24 = pthread_self();
    if (pthread_equal(v24, __CFUserNotificationWarningThread))
    {
      CFLog(3, @"%@:  %@", v25, v26, v27, v28, v29, v30, @"CFUserNotificationDisplayAlert");
    }

    error = CFUserNotificationReceiveResponse(v23, timeout, responseFlags);
    if (error == 268451843)
    {
      error = CFUserNotificationCancel(v23);
      if (responseFlags)
      {
        *responseFlags = 3;
      }
    }

    CFRelease(v23);
  }

  CFRelease(v21);
  result = error;
  v32 = *MEMORY[0x1E69E9840];
  return result;
}

void _CFUserNotificationAddToDictionary(const void *a1, const void *a2, __CFDictionary *a3)
{
  v6 = CFGetTypeID(a1);
  if (v6 == CFStringGetTypeID())
  {

    CFDictionarySetValue(a3, a1, a2);
  }
}

uint64_t _CFMethodSignatureROMLog()
{
  if (_CFMethodSignatureROMLog_onceToken != -1)
  {
    _CFMethodSignatureROMLog_cold_1();
  }

  return _CFMethodSignatureROMLog_logger;
}

uint64_t _CFRuntimeIssuesLog()
{
  if (_CFRuntimeIssuesLog_onceToken != -1)
  {
    _CFRuntimeIssuesLog_cold_1();
  }

  return _CFRuntimeIssuesLog_logger;
}

uint64_t _CFFoundationRuntimeIssuesLog()
{
  if (_CFFoundationRuntimeIssuesLog_onceToken != -1)
  {
    _CFFoundationRuntimeIssuesLog_cold_1();
  }

  return _CFFoundationRuntimeIssuesLog_logger;
}

uint64_t CFBSearch(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, unint64_t, uint64_t), uint64_t a6)
{
  v8 = a3;
  if (a4 >= 1)
  {
    v11 = a4;
    v8 = a3;
    while (1)
    {
      v13 = v11 >> 1;
      v14 = a5(a1, v8 + (v11 >> 1) * a2, a6);
      if (!v14)
      {
        break;
      }

      if (v14 < 0)
      {
        v15 = 0;
      }

      else
      {
        v8 += (v11 >> 1) * a2 + a2;
        v15 = (v11 & 1) - 1;
      }

      v11 = v13 + v15;
      if (((v13 + v15) < 0) ^ __OFADD__(v13, v15) | (v13 + v15 == 0))
      {
        return (v8 - a3) / a2;
      }
    }

    v8 += (v11 >> 1) * a2;
  }

  return (v8 - a3) / a2;
}

mach_vm_address_t __CFFindPointer(uint64_t a1, mach_vm_address_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E69E9A60];
  size = 0;
  address = a2;
  v15 = 0;
  *info = 0u;
  for (i = 0u; ; i = 0u)
  {
    object_name = 0;
    infoCnt = 9;
    if (mach_vm_region(v4, &address, &size, 9, info, &infoCnt, &object_name))
    {
      result = 0;
      goto LABEL_12;
    }

    result = address;
    if ((info[0] & 2) == 0)
    {
      v6 = address + size;
      goto LABEL_10;
    }

    v6 = size + address;
    if (address < size + address)
    {
      break;
    }

LABEL_10:
    size = 0;
    address = v6;
    v15 = 0;
    *info = 0u;
  }

  v7 = address;
  while (v7 < a2 || *v7 != a1)
  {
    ++v7;
    result += 8;
    if (v7 >= v6)
    {
      goto LABEL_10;
    }
  }

LABEL_12:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t __CFDumpAllPointerLocations(uint64_t a1)
{
  v2 = 0;
  do
  {
    v2 = __CFFindPointer(a1, v2 + 8);
    result = printf("%p\n", v2);
  }

  while (v2);
  return result;
}

double _CFOperatingSystemVersionGetCurrent@<D0>(uint64_t a1@<X8>)
{
  if (_CFOperatingSystemVersionGetCurrent_onceToken != -1)
  {
    _CFOperatingSystemVersionGetCurrent_cold_1();
  }

  result = *&_CFOperatingSystemVersionGetCurrent_version;
  *a1 = _CFOperatingSystemVersionGetCurrent_version;
  *(a1 + 16) = qword_1ED40B788;
  return result;
}

void *__CFLookupCFNetworkFunction(char *__symbol)
{
  if (__CFLookupCFNetworkFunction_onceToken != -1)
  {
    __CFLookupCFNetworkFunction_cold_1();
  }

  result = __CFLookupCFNetworkFunction_image;
  if (__CFLookupCFNetworkFunction_image)
  {

    return dlsym(result, __symbol);
  }

  return result;
}

uint64_t __CFProcessorCount()
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 0;
  *v6 = 0x300000006;
  v4 = 4;
  v0 = sysctl(v6, 2u, &v5, &v4, 0, 0);
  v1 = v5;
  if (v0)
  {
    v1 = 0;
  }

  v2 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t __CFMemorySize()
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 0;
  *v4 = 0x1800000006;
  v2 = 8;
  if (sysctl(v4, 2u, &v3, &v2, 0, 0))
  {
    result = 0;
  }

  else
  {
    result = v3;
  }

  v1 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFGetEGID()
{
  v3 = *MEMORY[0x1E69E9840];
  v2 = 0;
  __CFGetUGIDs(0, &v2);
  result = v2;
  v1 = *MEMORY[0x1E69E9840];
  return result;
}

_BYTE *_CFPrintForDebugger(const void *a1)
{
  maxBufLen[1] = *MEMORY[0x1E69E9840];
  maxBufLen[0] = 0;
  free(_CFPrintForDebugger_result);
  _CFPrintForDebugger_result = 0;
  if (a1)
  {
    v2 = CFGetTypeID(a1);
    if (v2 == CFStringGetTypeID())
    {
      v3 = __CFCopyFormattingDescription(a1, 0);
      if (v3)
      {
        goto LABEL_7;
      }
    }

    v4 = CFCopyDescription(a1);
  }

  else
  {
    v4 = CFRetain(@"(null)");
  }

  v3 = v4;
  if (!v4)
  {
    result = malloc_type_malloc(2uLL, 0x100004077774924uLL);
    _CFPrintForDebugger_result = result;
    *result = 0;
    goto LABEL_9;
  }

LABEL_7:
  v8.length = CFStringGetLength(v3);
  v8.location = 0;
  CFStringGetBytes(v3, v8, 0x8000100u, 0, 0, 0, 0, maxBufLen);
  _CFPrintForDebugger_result = malloc_type_malloc(maxBufLen[0] + 2, 0x100004077774924uLL);
  v9.length = CFStringGetLength(v3);
  v9.location = 0;
  CFStringGetBytes(v3, v9, 0x8000100u, 0, 0, _CFPrintForDebugger_result, maxBufLen[0], maxBufLen);
  *(_CFPrintForDebugger_result + maxBufLen[0]) = 0;
  CFRelease(v3);
  result = _CFPrintForDebugger_result;
LABEL_9:
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

void _CFShowToFile(FILE *a1, CFTypeRef cf)
{
  v42 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    v4 = CFGetTypeID(cf);
    if (v4 == CFStringGetTypeID())
    {
      v5 = __CFCopyFormattingDescription(cf, 0);
      if (v5)
      {
        goto LABEL_7;
      }
    }

    v6 = CFCopyDescription(cf);
  }

  else
  {
    v6 = CFRetain(@"(null)");
  }

  v5 = v6;
LABEL_7:
  Length = CFStringGetLength(v5);
  theString = v5;
  v38 = 0;
  v39 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v5);
  CStringPtr = 0;
  v36 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v29 = 0u;
  v30 = 0u;
  *buffer = 0u;
  v28 = 0u;
  v40 = 0;
  v41 = 0;
  v37 = CStringPtr;
  if (Length < 1)
  {
LABEL_35:
    fprintf_l(a1, 0, "\n");
    fflush(a1);
    goto LABEL_36;
  }

  cfa = v5;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 64;
  do
  {
    if (v11 >= 4)
    {
      v14 = 4;
    }

    else
    {
      v14 = v11;
    }

    if (v36)
    {
      v15 = &v36[v38];
LABEL_16:
      v16 = v15[v11];
      goto LABEL_19;
    }

    if (!v37)
    {
      v18 = v40;
      if (v41 <= v11 || v40 > v11)
      {
        v20 = -v14;
        v21 = v14 + v10;
        v22 = v13 - v14;
        v23 = v11 + v20;
        v24 = v23 + 64;
        if (v23 + 64 >= v39)
        {
          v24 = v39;
        }

        v40 = v23;
        v41 = v24;
        if (v39 < v22)
        {
          v22 = v39;
        }

        v43.location = v23 + v38;
        v43.length = v22 + v21;
        CFStringGetCharacters(theString, v43, buffer);
        v18 = v40;
      }

      v15 = &buffer[-v18];
      goto LABEL_16;
    }

    v16 = v37[v38 + v11];
LABEL_19:
    v17 = v16;
    if (v16 > 0x7Fu)
    {
      fprintf_l(a1, 0, "\\u%04x", v16);
    }

    else
    {
      fprintf_l(a1, 0, "%c", v16);
      v12 = v17 == 10;
    }

    ++v11;
    --v10;
    ++v13;
  }

  while (Length != v11);
  v5 = cfa;
  if (!v12)
  {
    goto LABEL_35;
  }

LABEL_36:
  if (v5)
  {
    CFRelease(v5);
  }

  v25 = *MEMORY[0x1E69E9840];
}

void __CFLogCStringLegacy(int a1, const char *a2, uint64_t a3, int a4)
{
  __s[1] = *MEMORY[0x1E69E9840];
  value = 0;
  __s[0] = 0;
  v12 = 0;
  v13 = 0;
  if (a4)
  {
    _populateBanner(__s, &value, &v12);
  }

  v11 = 0;
  __CFGetUGIDs(&v11, 0);
  asprintf(&v13, "%d", v11);
  v7 = "com.apple.console";
  if (__CFBundleMainID && *__CFBundleMainID)
  {
    v7 = __CFBundleMainID;
  }

  v8 = asl_open(0, v7, 2u);
  v9 = asl_new(0);
  asl_set(v9, "CFLog Local Time", value);
  asl_set(v9, "CFLog Thread", v12);
  asl_set(v9, "ReadUID", v13);
  asl_set(v9, "Level", __CFLogCStringLegacy_levstr[a1]);
  asl_set(v9, "Message", a2);
  asl_send(v8, v9);
  MEMORY[0x1865E1F80](v9);
  MEMORY[0x1865E1F70](v8);
  if (also_do_stderr(1))
  {
    _logToStderr(__s[0], a2, a3);
  }

  if (v12)
  {
    free(v12);
  }

  if (value)
  {
    free(value);
  }

  if (__s[0])
  {
    free(__s[0]);
  }

  if (v13)
  {
    free(v13);
  }

  v10 = *MEMORY[0x1E69E9840];
}

void CFLogTest(char a1, CFStringRef format, ...)
{
  va_start(va, format);
  *&v22[6] = *MEMORY[0x1E69E9840];
  v3 = CFLogTest_file;
  if (!CFLogTest_file)
  {
    if (a1)
    {
      v7 = __stpcpy_chk();
      if (v7)
      {
        goto LABEL_11;
      }
    }

    else
    {
      v4 = CFCopySearchPathForDirectoriesInDomains(5, 1, 1);
      if (v4)
      {
        v5 = v4;
        if (CFArrayGetCount(v4) >= 1 && (ValueAtIndex = CFArrayGetValueAtIndex(v5, 0), CFURLGetFileSystemRepresentation(ValueAtIndex, 1u, buffer, 1026)))
        {
          v7 = buffer + strlen(buffer);
        }

        else
        {
          v7 = 0;
        }

        CFRelease(v5);
        if (v7)
        {
LABEL_11:
          snprintf(v7, &v22[-v7], "/Logs");
          mkdir(buffer, 0x1FFu);
          v8 = (v7 + strlen(v7));
          v9 = *_CFGetProgname();
          v10 = getpid();
          snprintf(v8, v22 - v8, "/%s_%d.selftest.txt", v9, v10);
          CFLogTest_file = fopen(buffer, "w");
          if (!CFLogTest_file)
          {
            CFLog(3, @"Couldn't write to self test log file %s", v11, v12, v13, v14, v15, v16, buffer);
            CFLogTest_file = -1;
          }
        }
      }
    }

    v3 = CFLogTest_file;
  }

  if (v3 != -1)
  {
    va_copy(v20, va);
    v17 = CFStringCreateWithFormatAndArguments(&__kCFAllocatorSystemDefault, 0, format, va);
    v19.tv_sec = 0;
    *&v19.tv_usec = 0;
    memset(buffer, 0, 56);
    gettimeofday(&v19, 0);
    gmtime_r(&v19.tv_sec, buffer);
    fprintf_l(CFLogTest_file, 0, "%04d-%02d-%02d %02d:%02d:%02d ", buffer[0].tm_year + 1900, buffer[0].tm_mon + 1, buffer[0].tm_mday, buffer[0].tm_hour, buffer[0].tm_min, buffer[0].tm_sec);
    _CFShowToFile(CFLogTest_file, v17);
    CFRelease(v17);
  }

  v18 = *MEMORY[0x1E69E9840];
}

uint64_t _CFDiscorporateMemoryAllocate(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3;
  if (((a2 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8]) != 0)
  {
    v5 = (a2 + *MEMORY[0x1E69E9AC8] - 1) & -*MEMORY[0x1E69E9AC8];
  }

  else
  {
    v5 = *MEMORY[0x1E69E9AC8];
  }

  *(a1 + 32) = 0;
  *(a1 + 16) = 0u;
  v6 = (a1 + 16);
  v7 = MEMORY[0x1E69E9A60];
  *a1 = 0u;
  if (a3)
  {
    v8 = 687865859;
  }

  else
  {
    v8 = 687865857;
  }

  result = mach_vm_allocate(*v7, v6, v5, v8);
  if (result)
  {
    *v6 = 0;
  }

  else
  {
    *a1 = *(a1 + 16);
    *(a1 + 8) = v5;
    *(a1 + 24) = v3;
  }

  return result;
}

uint64_t _CFDiscorporateMemoryDeallocate(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = mach_vm_deallocate(*MEMORY[0x1E69E9A60], v2, *(a1 + 8));
    v4 = v3;
    if (v3)
    {
      v5 = mach_error_string(v3);
      CFLog(3, @"CFDiscorporateMemoryDeallocate: mach_vm_deallocate returned %s", v6, v7, v8, v9, v10, v11, v5);
    }
  }

  else
  {
    v4 = 0;
  }

  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 24) = 0;
  *(a1 + 16) = 0;
  return v4;
}

uint64_t _CFDiscorporateMemoryDematerialize(uint64_t *a1)
{
  v6 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v5 = 1;
  if (v1)
  {
    MEMORY[0x1865E4390](*MEMORY[0x1E69E9A60], v1, 0, &v5);
    result = 0;
    *a1 = 0;
  }

  else
  {
    result = 34;
  }

  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFDiscorporateMemoryMaterialize(uint64_t *a1)
{
  v7 = *MEMORY[0x1E69E9840];
  v1 = *a1;
  v6 = 0;
  if (v1)
  {
    v2 = 0;
    LODWORD(result) = 34;
  }

  else
  {
    LODWORD(result) = MEMORY[0x1865E4390](*MEMORY[0x1E69E9A60], a1[2], 0, &v6);
    if (result)
    {
      v2 = 0;
    }

    else
    {
      *a1 = a1[2];
      v2 = 1;
    }
  }

  if ((v2 & (v6 == 2)) != 0)
  {
    result = 2;
  }

  else
  {
    result = result;
  }

  v5 = *MEMORY[0x1E69E9840];
  return result;
}

CFErrorRef _CFErrorWithFilePathCodeDomain(const __CFString *a1, CFIndex a2, void *a3)
{
  values[1] = *MEMORY[0x1E69E9840];
  keys = @"NSFilePath";
  values[0] = a3;
  v5 = CFDictionaryCreate(&__kCFAllocatorSystemDefault, &keys, values, 1, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
  v6 = CFErrorCreate(&__kCFAllocatorSystemDefault, a1, a2, v5);
  CFRelease(v5);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void _CFGetPathExtensionRangesFromPathComponentUniChars(const __CFString *a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v105 = *MEMORY[0x1E69E9840];
  theString[0] = 0;
  v101 = 0u;
  v98 = 0u;
  v99 = 0u;
  v96 = 0u;
  v97 = 0u;
  v94 = 0u;
  v95 = 0u;
  *buffer = 0u;
  v93 = 0u;
  v102 = a2;
  v103 = 0;
  theString[1] = a1;
  length = 0;
  if (!(a3 | a4))
  {
    goto LABEL_65;
  }

  v4 = a3;
  if (a2 < 2)
  {
    goto LABEL_58;
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = a2 - 1;
  v10 = 1 - a2;
  v11 = a2 + 63;
  v12 = &buffer[a2 - 1];
  v13 = 2 - 2 * a2;
  while (1)
  {
    if (v9 >= 0x3F)
    {
      v14 = 63;
    }

    else
    {
      v14 = v9;
    }

    if (theString[1])
    {
      v15 = theString[1] + *(&v101 + 1) + a2 - 1;
LABEL_9:
      v16 = v15[v7];
      goto LABEL_12;
    }

    if (!v101)
    {
      v25 = a2 + v7 - 1;
      v26 = length > v25 && v8 <= v25;
      if (!v26)
      {
        v27 = ~v14;
        v28 = v14 ^ 0x3F;
        v29 = v11 - v14;
        v30 = v14 + v6;
        v31 = a2 + v7 + v27;
        v32 = a2 + v7 + v28;
        if (v32 >= v102)
        {
          v32 = v102;
        }

        v103 = v31;
        length = v32;
        if (v102 < v29)
        {
          v29 = v102;
        }

        v106.location = v31 + *(&v101 + 1);
        v106.length = v10 + v30 + v29;
        v91 = a4;
        v33 = v10;
        v34 = v4;
        v35 = v12;
        CFStringGetCharacters(theString[0], v106, buffer);
        v12 = v35;
        v4 = v34;
        v10 = v33;
        a4 = v91;
        v8 = v103;
      }

      v15 = &v12[-v8];
      goto LABEL_9;
    }

    v16 = *(v101 + *(&v101 + 1) + a2 + v7 - 1);
LABEL_12:
    v17 = 0;
    v18 = v16;
    v19 = -1;
    if (v18 > 8233)
    {
      v20 = v18 - 8234;
      v26 = v20 > 0x3F;
      v21 = (1 << v20) & 0xF00000000000001FLL;
      v22 = v26 || v21 == 0;
      v23 = 0;
      v24 = -1;
      if (!v22)
      {
        goto LABEL_61;
      }

      goto LABEL_25;
    }

    if (v18 > 1563)
    {
      if ((v18 - 8206) < 2)
      {
LABEL_37:
        v23 = 0;
        goto LABEL_60;
      }

      v23 = 0;
      v24 = -1;
      if (v18 == 1564)
      {
        goto LABEL_61;
      }

      goto LABEL_25;
    }

    if (v18 == 32)
    {
      goto LABEL_37;
    }

    if (v18 == 46)
    {
      break;
    }

    v23 = 0;
    v24 = -1;
    if (v18 == 47)
    {
      goto LABEL_61;
    }

LABEL_25:
    --v9;
    v13 += 2;
    --v11;
    --v7;
    ++v6;
    if (a2 + v7 <= 1)
    {
      v17 = 0;
      v23 = 0;
LABEL_89:
      v19 = -1;
      goto LABEL_61;
    }
  }

  if (!v7)
  {
    v17 = 0;
    v23 = 0;
    goto LABEL_60;
  }

  v36 = a2 + v7;
  v37 = a2 + v7 - 1;
  if (v37 > 2)
  {
    goto LABEL_66;
  }

  if (theString[1])
  {
    v38 = theString[1] + *(&v101 + 1);
  }

  else
  {
    if (v37 > length || v8 >= 1)
    {
      if (v102 >= 64)
      {
        v39.length = 64;
      }

      else
      {
        v39.length = v102;
      }

      v103 = 0;
      length = v39.length;
      v39.location = *(&v101 + 1);
      if (v101)
      {
        if (v102)
        {
          v40 = (v101 + *(&v101 + 1));
          v41 = buffer;
          do
          {
            v42 = *v40++;
            *v41++ = v42;
            --v39.length;
          }

          while (v39.length);
        }

        v8 = 0;
      }

      else
      {
        v43 = a4;
        v44 = v10;
        CFStringGetCharacters(theString[0], v39, buffer);
        v10 = v44;
        a4 = v43;
        v8 = v103;
      }
    }

    v38 = &buffer[-v8];
  }

  if (*v38 != 46)
  {
    goto LABEL_66;
  }

  v17 = v36 - 2;
  if (v36 == 2)
  {
    goto LABEL_59;
  }

  if (v38[1] != 46)
  {
LABEL_66:
    v24 = a2 + v7;
    v23 = -v7;
    if (!a4)
    {
LABEL_88:
      v17 = 0;
      goto LABEL_89;
    }

    v46 = v36 + 63;
    v47 = v10 - v7;
    while (1)
    {
      if (v37 >= 0x40)
      {
        v48 = 64;
      }

      else
      {
        v48 = v37;
      }

      v49 = v36 - 1;
      if (v36 - 1 < 2)
      {
        goto LABEL_88;
      }

      if (theString[1])
      {
        v50 = theString[1] + *(&v101 + 1);
      }

      else
      {
        if (v101)
        {
          v51 = *(v101 + *(&v101 + 1) + v36 - 2);
          goto LABEL_77;
        }

        if (length < v49 || v8 >= v49)
        {
          v52 = -v48;
          v53 = v48 + v47;
          v54 = v46 - v48;
          v55 = v36 + v52;
          v56 = v55 + 63;
          if (v55 + 63 >= v102)
          {
            v56 = v102;
          }

          v103 = v55 - 1;
          length = v56;
          v57.location = v55 + *(&v101 + 1) - 1;
          if (v102 >= v54)
          {
            v58 = v54;
          }

          else
          {
            v58 = v102;
          }

          v57.length = v58 + v53;
          v59 = a4;
          CFStringGetCharacters(theString[0], v57, buffer);
          a4 = v59;
          v8 = v103;
        }

        v50 = &buffer[-v8];
      }

      v51 = v50[v36 - 2];
LABEL_77:
      v13 += 2;
      ++v47;
      --v46;
      --v37;
      --v36;
      if (v51 != 32)
      {
        v60 = 0;
        v61 = 1 - v49;
        v62 = buffer - v13;
        v63 = v49 + 63;
        v64 = v49 - 1;
        while (1)
        {
          v65 = v64 >= 0x3F ? 63 : v64;
          if (theString[1])
          {
            v66 = *(&theString[1]->isa + *(&v101 + 1) + v64);
          }

          else if (v101)
          {
            v66 = *(v101 + *(&v101 + 1) + v64);
          }

          else
          {
            if (length <= v64 || v8 > v64)
            {
              v68 = -v65;
              v69 = v65 + v61;
              v70 = v63 - v65;
              v71 = v64 + v68;
              v72 = v71 + 64;
              if (v71 + 64 >= v102)
              {
                v72 = v102;
              }

              v103 = v71;
              length = v72;
              if (v102 < v70)
              {
                v70 = v102;
              }

              v107.location = v71 + *(&v101 + 1);
              v107.length = v70 + v69;
              v73 = a4;
              CFStringGetCharacters(theString[0], v107, buffer);
              a4 = v73;
              v8 = v103;
            }

            v66 = *&v62[-2 * v8];
          }

          if (v66 == 32 || v66 == 46)
          {
            break;
          }

          ++v60;
          --v63;
          v62 -= 2;
          ++v61;
          v19 = -1;
          v26 = v64-- <= 1;
          if (v26)
          {
LABEL_133:
            v17 = 0;
            goto LABEL_61;
          }
        }

        v91 = (v64 + 1);
        v74 = -v64;
        v75 = v64 + 64;
        while (1)
        {
          v76 = v64 >= 0x3F ? 63 : v64;
          if (theString[1])
          {
            v77 = *(&theString[1]->isa + *(&v101 + 1) + v64);
          }

          else if (v101)
          {
            v77 = *(v101 + *(&v101 + 1) + v64);
          }

          else
          {
            if (length <= v64 || v8 > v64)
            {
              v79 = -v76;
              v80 = v76 + v74;
              v81 = v75 - v76;
              v82 = v64 + v79;
              v83 = v82 + 64;
              if (v82 + 64 >= v102)
              {
                v83 = v102;
              }

              v103 = v82;
              length = v83;
              if (v102 < v81)
              {
                v81 = v102;
              }

              v108.location = v82 + *(&v101 + 1);
              v108.length = v81 + v80;
              v84 = a4;
              CFStringGetCharacters(theString[0], v108, buffer);
              a4 = v84;
              v8 = v103;
            }

            v77 = *&v62[-2 * v8];
          }

          if (v77 != 32)
          {
            break;
          }

          --v75;
          v62 -= 2;
          ++v74;
          v19 = -1;
          v26 = v64-- <= 1;
          if (v26)
          {
            goto LABEL_133;
          }
        }

        if (theString[1])
        {
          v85 = *(&theString[1]->isa + *(&v101 + 1) + v64);
        }

        else if (v101)
        {
          v85 = *(v101 + *(&v101 + 1) + v64);
        }

        else
        {
          v86 = a4;
          if (length <= v64 || v8 > v64)
          {
            v87 = 63;
            if (v64 < 0x3F)
            {
              v87 = v64;
            }

            v88 = v64 - v87 + 64;
            v89 = v102;
            if (v88 >= v102)
            {
              v88 = v102;
            }

            v103 = v64 - v87;
            length = v88;
            if (v102 >= v75 - v87)
            {
              v89 = v75 - v87;
            }

            v109.length = v87 + v89 - v64;
            v109.location = v64 - v87 + *(&v101 + 1);
            CFStringGetCharacters(theString[0], v109, buffer);
            v8 = v103;
          }

          v85 = *&v62[-2 * v8];
          a4 = v86;
        }

        if (v85 == 46)
        {
          v17 = v60;
        }

        else
        {
          v17 = 0;
        }

        if (v60)
        {
          v90 = v85 == 46;
        }

        else
        {
          v90 = 0;
        }

        if (v90)
        {
          v19 = v91;
        }

        else
        {
          v19 = -1;
        }

        goto LABEL_61;
      }
    }
  }

LABEL_58:
  v17 = 0;
LABEL_59:
  v23 = 0;
  v19 = -1;
LABEL_60:
  v24 = -1;
LABEL_61:
  if (v4)
  {
    *v4 = v24;
    v4[1] = v23;
  }

  if (a4)
  {
    *a4 = v19;
    a4[1] = v17;
  }

LABEL_65:
  v45 = *MEMORY[0x1E69E9840];
}

uint64_t _CFExtensionUniCharsIsValidToAppend(const __CFString *a1, uint64_t a2)
{
  v40 = *MEMORY[0x1E69E9840];
  theString[0] = 0;
  v36 = 0u;
  memset(v34, 0, sizeof(v34));
  v37 = a2;
  v38 = 0;
  theString[1] = a1;
  v39 = 0;
  if (!a2)
  {
    goto LABEL_59;
  }

  v2 = a2 - 1;
  if (a2 < 1)
  {
    goto LABEL_60;
  }

  v3 = 0;
  v4 = 1 - a2;
  v5 = a2 + 63;
  v6 = a2 - 1;
  while (1)
  {
    if (v6 >= 0x3F)
    {
      v7 = 63;
    }

    else
    {
      v7 = v6;
    }

    if (theString[1])
    {
      v8 = theString[1] + 2 * *(&v36 + 1);
LABEL_9:
      v9 = *&v8[2 * v6];
      goto LABEL_12;
    }

    if (!v36)
    {
      v14 = v39 > v6 && v3 <= v6;
      if (!v14)
      {
        v15 = -v7;
        v16 = v7 + v4;
        v17 = v5 - v7;
        v18 = v6 + v15;
        v19 = v18 + 64;
        if (v18 + 64 >= v37)
        {
          v19 = v37;
        }

        v38 = v18;
        v39 = v19;
        if (v37 < v17)
        {
          v17 = v37;
        }

        v41.location = v18 + *(&v36 + 1);
        v41.length = v17 + v16;
        CFStringGetCharacters(theString[0], v41, v34);
        v3 = v38;
      }

      v8 = v34 - 2 * v3;
      goto LABEL_9;
    }

    v9 = *(v36 + *(&v36 + 1) + v6);
LABEL_12:
    result = 0;
    if (v9 <= 0x2029u)
    {
      break;
    }

    v11 = v9 - 8234;
    v14 = v11 > 0x3F;
    v12 = (1 << v11) & 0xF00000000000001FLL;
    if (!v14 && v12 != 0)
    {
      goto LABEL_61;
    }

LABEL_25:
    ++v4;
    --v5;
    v14 = v6-- <= 0;
    if (v14)
    {
      goto LABEL_60;
    }
  }

  if (v9 > 0x61Bu)
  {
    if (v9 - 8206 < 2 || v9 == 1564)
    {
      goto LABEL_61;
    }

    goto LABEL_25;
  }

  if (v9 == 32)
  {
    goto LABEL_61;
  }

  if (v9 != 46)
  {
    if (v9 == 47)
    {
      goto LABEL_61;
    }

    goto LABEL_25;
  }

  if (v6 >= v2)
  {
LABEL_59:
    result = 0;
    goto LABEL_61;
  }

  v20 = v6 + 64;
  v21 = -v6;
  v22 = v6 + 1;
  while (1)
  {
    v23 = v6 >= 0x40 ? 64 : v6;
    v24 = v22 - 1;
    if (v22 - 1 < 1)
    {
      break;
    }

    if (theString[1])
    {
      v25 = *(theString[1] + *(&v36 + 1) + v22 - 2);
    }

    else if (v36)
    {
      v25 = *(v36 + *(&v36 + 1) + v22 - 2);
    }

    else
    {
      if (v39 < v24 || v3 >= v24)
      {
        v26 = -v23;
        v27 = v23 + v21;
        v28 = v20 - v23;
        v29 = v22 + v26;
        v30 = v29 + 63;
        if (v29 + 63 >= v37)
        {
          v30 = v37;
        }

        v38 = v29 - 1;
        v39 = v30;
        v31.location = v29 + *(&v36 + 1) - 1;
        if (v37 >= v28)
        {
          v32 = v28;
        }

        else
        {
          v32 = v37;
        }

        v31.length = v32 + v27;
        CFStringGetCharacters(theString[0], v31, v34);
        v3 = v38;
      }

      v25 = *(&v34[-1] + v22 - v3 + 6);
    }

    result = 0;
    ++v21;
    --v20;
    --v6;
    --v22;
    if (v25 == 47)
    {
      goto LABEL_61;
    }
  }

LABEL_60:
  result = 1;
LABEL_61:
  v33 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL _CFOperatingSystemVersionIsAtLeastVersion(void *a1)
{
  if (_CFOperatingSystemVersionGetCurrent_onceToken != -1)
  {
    _CFOperatingSystemVersionIsAtLeastVersion_cold_1();
  }

  if (_CFOperatingSystemVersionGetCurrent_version < *a1)
  {
    return 0;
  }

  if (_CFOperatingSystemVersionGetCurrent_version > *a1)
  {
    return 1;
  }

  v3 = a1[1];
  if (*(&_CFOperatingSystemVersionGetCurrent_version + 1) < v3)
  {
    return 0;
  }

  return *(&_CFOperatingSystemVersionGetCurrent_version + 1) > v3 || qword_1ED40B788 >= a1[2];
}

uint64_t _CFAppVersionLessThan(CFTypeRef cf2, double a2)
{
  if (_bundleInfo_onceToken != -1)
  {
    _CFAppVersionLessThan_cold_1();
  }

  result = CFEqual(_bundleInfo_info_0, cf2);
  if (result)
  {
    return *&_bundleInfo_info_2 < a2 || a2 < 0.0;
  }

  return result;
}

const char *_CFGetExecutableLinkedLibraryVersion@<X0>(const char *result@<X0>, uint64_t a2@<X8>)
{
  *(a2 + 16) = 0;
  *a2 = xmmword_183430F18;
  if (result)
  {
    result = NSVersionOfLinkTimeLibrary(result);
    if (result != -1)
    {
      *a2 = result >> 16;
      *(a2 + 8) = BYTE1(result);
      *(a2 + 16) = result;
    }
  }

  return result;
}

uint64_t _CFLibraryVersionCompare(void *a1, void *a2)
{
  v2 = (*a1 & 0x8000000000000000) == 0 && (a1[1] & 0x8000000000000000) == 0 && a1[2] >= 0;
  if ((*a2 & 0x8000000000000000) != 0 || (a2[1] & 0x8000000000000000) != 0 || (a2[2] >= 0 ? (v3 = v2) : (v3 = 0), !v3))
  {
    if (v2)
    {
      return -1;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    v4 = (*a1 << 16) | (*(a1 + 2) << 8) | *(a1 + 16);
    v5 = (*a2 << 16) | (a2[1] << 8) | a2[2];
    v6 = v4 == v5;
    v7 = v4 > v5;
    v8 = 1;
    if (!v7)
    {
      v8 = -1;
    }

    if (v6)
    {
      return 0;
    }

    else
    {
      return v8;
    }
  }
}

BOOL _CFLinkedOnOrAfter(__int128 *a1, uint64_t a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = *a1;
  v6 = *(a1 + 2);
  v4[1] = 0;
  v4[2] = 0;
  v4[0] = a2;
  result = _CFLibraryVersionCompare(&v5, v4) != -1;
  v3 = *MEMORY[0x1E69E9840];
  return result;
}

void _VolumeObserverFinalize(uint64_t a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = *(a1 + 16);
    atomic_compare_exchange_strong((a1 + 16), &v2, 0);
    if (v2 == v1)
    {
      global_queue = dispatch_get_global_queue(25, 0);
      v5[0] = MEMORY[0x1E69E9820];
      v5[1] = 0x40000000;
      v5[2] = ___VolumeObserverFinalize_block_invoke;
      v5[3] = &__block_descriptor_tmp_8_0;
      v5[4] = v1;
      dispatch_async(global_queue, v5);
    }
  }

  v4 = *MEMORY[0x1E69E9840];
}

CFStringRef _VolumeObserverCopyDebugDesc(void *cf)
{
  v2 = cf[2];
  if (v2 && *v2)
  {
    v3 = CFGetAllocator(cf);
    v4 = *(v2 + 8);
    v5 = *(v2 + 32);
    return CFStringCreateWithFormat(v3, 0, @"<CFVolumeObserver %p> {queue = %p, eventsToObserve = 0x%lx, options = 0x%lx, observer = %p}", cf, v4, *(v2 + 24), v5, *(v2 + 40));
  }

  else
  {
    v7 = CFGetAllocator(cf);
    return CFStringCreateWithFormat(v7, 0, @"<CFVolumeObserver %p> { INVALIDATED }", cf);
  }
}

uint64_t _CFVolumeObserverGetTypeID()
{
  if (qword_1EA84A270 != -1)
  {
    _CFVolumeObserverGetTypeID_cold_1();
  }

  return 65;
}

void _VolumeObserverDiskAppearedCallback(const void *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*a2)
    {
      v4 = __CFDiskArbitration_DADiskCopyDescription(a1);
      if (v4)
      {
        v5 = v4;
        Value = CFDictionaryGetValue(v4, __CFDiskArbitration_kDADiskDescriptionVolumePathKey);
        if (!Value)
        {
          goto LABEL_18;
        }

        v7 = Value;
        Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
        if (!Mutable)
        {
          goto LABEL_18;
        }

        v9 = Mutable;
        CFDictionarySetValue(Mutable, __CFDiskArbitration_kDADiskDescriptionVolumePathKey, v7);
        v10 = CFDictionaryGetValue(v5, __CFDiskArbitration_kDADiskDescriptionVolumeNameKey);
        if (v10)
        {
          v11 = v10;
          CFRetain(v10);
        }

        else
        {
          v13[0] = 0;
          CFURLCopyResourcePropertyForKey(v7, @"NSURLVolumeNameKey", v13, 0);
          v11 = v13[0];
          if (!v13[0])
          {
LABEL_10:
            CFDictionarySetValue(*(a2 + 56), a1, v9);
            if ((*(a2 + 32) & 2) == 0 && _VolumeIsAutomounted(v7))
            {
              if (CFSetContainsValue(*(a2 + 72), v7))
              {
LABEL_17:
                CFRelease(v9);
LABEL_18:
                CFRelease(v5);
                goto LABEL_19;
              }

              CFSetAddValue(*(a2 + 72), v7);
            }

            if (*(a2 + 80) && (*(a2 + 24) & 1) != 0)
            {
              (*(*(a2 + 40) + 16))();
            }

            goto LABEL_17;
          }
        }

        CFDictionarySetValue(v9, __CFDiskArbitration_kDADiskDescriptionVolumeNameKey, v11);
        CFRelease(v11);
        goto LABEL_10;
      }
    }
  }

LABEL_19:
  v12 = *MEMORY[0x1E69E9840];
}

void _VolumeObserverDiskDescriptionChangedCallback(const void *a1, CFArrayRef theArray, uint64_t a3)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    if (*a3)
    {
      Count = CFArrayGetCount(theArray);
      v28.location = 0;
      v28.length = Count;
      v7 = CFArrayContainsValue(theArray, v28, __CFDiskArbitration_kDADiskDescriptionVolumePathKey);
      v29.location = 0;
      v29.length = Count;
      v8 = CFArrayContainsValue(theArray, v29, __CFDiskArbitration_kDADiskDescriptionVolumeNameKey);
      if (v7 | v8)
      {
        v9 = v8;
        v10 = __CFDiskArbitration_DADiskCopyDescription(a1);
        if (v10)
        {
          v11 = v10;
          Value = CFDictionaryGetValue(v10, __CFDiskArbitration_kDADiskDescriptionVolumePathKey);
          v13 = CFDictionaryGetValue(*(a3 + 56), a1);
          Mutable = v13;
          if (!Value)
          {
            if (v13)
            {
              v15 = CFDictionaryGetValue(v13, __CFDiskArbitration_kDADiskDescriptionVolumeNameKey);
              v16 = CFDictionaryGetValue(Mutable, __CFDiskArbitration_kDADiskDescriptionVolumePathKey);
              if (((*(a3 + 32) & 2) != 0 || !CFSetContainsValue(*(a3 + 72), v16)) && (*(a3 + 24) & 8) != 0)
              {
                v17 = _CFOSLog();
                if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
                {
                  *v24 = 138543619;
                  *&v24[4] = a1;
                  v25 = 2113;
                  v26 = v15;
                  _os_log_impl(&dword_1830E6000, v17, OS_LOG_TYPE_INFO, "CFVolumeObserver: Notifying client about disk %{public}@ (%{private}@) because it's path changed to NULL.", v24, 0x16u);
                }

                (*(*(a3 + 40) + 16))();
              }

              CFSetRemoveValue(*(a3 + 72), v16);
              CFDictionaryRemoveValue(*(a3 + 56), a1);
              v18 = *(a3 + 64);
              v30.length = CFArrayGetCount(v18);
              v30.location = 0;
              FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v18, v30, a1);
              if (FirstIndexOfValue != -1)
              {
                CFArrayRemoveValueAtIndex(*(a3 + 64), FirstIndexOfValue);
              }
            }

            goto LABEL_34;
          }

          if (v13)
          {
            CFRetain(v13);
          }

          else
          {
            Mutable = CFDictionaryCreateMutable(0, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
            if (!Mutable)
            {
LABEL_34:
              CFRelease(v11);
              goto LABEL_35;
            }
          }

          CFDictionarySetValue(Mutable, __CFDiskArbitration_kDADiskDescriptionVolumePathKey, Value);
          v20 = CFDictionaryGetValue(v11, __CFDiskArbitration_kDADiskDescriptionVolumeNameKey);
          if (v20)
          {
            v21 = v20;
            CFRetain(v20);
          }

          else
          {
            *v24 = 0;
            CFURLCopyResourcePropertyForKey(Value, @"NSURLVolumeNameKey", v24, 0);
            v21 = *v24;
            if (!*v24)
            {
              goto LABEL_22;
            }
          }

          CFDictionarySetValue(Mutable, __CFDiskArbitration_kDADiskDescriptionVolumeNameKey, v21);
          CFRelease(v21);
LABEL_22:
          v22 = CFDictionaryContainsKey(*(a3 + 56), a1);
          CFDictionarySetValue(*(a3 + 56), a1, Mutable);
          if (v9)
          {
            if ((*(a3 + 24) & 0x10) != 0)
            {
LABEL_32:
              (*(*(a3 + 40) + 16))();
            }

LABEL_33:
            CFRelease(Mutable);
            goto LABEL_34;
          }

          if (!v22 && (*(a3 + 32) & 2) == 0 && _VolumeIsAutomounted(Value))
          {
            if (CFSetContainsValue(*(a3 + 72), Value))
            {
              goto LABEL_33;
            }

            CFSetAddValue(*(a3 + 72), Value);
          }

          if (!*(a3 + 80) || (*(a3 + 24) & 1) == 0)
          {
            goto LABEL_33;
          }

          goto LABEL_32;
        }
      }
    }
  }

LABEL_35:
  v23 = *MEMORY[0x1E69E9840];
}

void _VolumeObserverDiskDisappearedCallback(void *key, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    if (*a2)
    {
      Value = CFDictionaryGetValue(*(a2 + 56), key);
      if (Value)
      {
        v5 = Value;
        v6 = CFDictionaryGetValue(Value, __CFDiskArbitration_kDADiskDescriptionVolumePathKey);
        v7 = CFDictionaryGetValue(v5, __CFDiskArbitration_kDADiskDescriptionVolumeNameKey);
        if (((*(a2 + 32) & 2) != 0 || !CFSetContainsValue(*(a2 + 72), v6)) && (*(a2 + 24) & 8) != 0)
        {
          v8 = _CFOSLog();
          if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
          {
            v12 = 138543619;
            v13 = key;
            v14 = 2113;
            v15 = v7;
            _os_log_impl(&dword_1830E6000, v8, OS_LOG_TYPE_INFO, "CFVolumeObserver: Notifying client about disk %{public}@ (%{private}@) being unmounted because it disappeared.", &v12, 0x16u);
          }

          (*(*(a2 + 40) + 16))();
        }

        CFSetRemoveValue(*(a2 + 72), v6);
        CFDictionaryRemoveValue(*(a2 + 56), key);
        v9 = *(a2 + 64);
        v17.length = CFArrayGetCount(v9);
        v17.location = 0;
        FirstIndexOfValue = CFArrayGetFirstIndexOfValue(v9, v17, key);
        if (FirstIndexOfValue != -1)
        {
          CFArrayRemoveValueAtIndex(*(a2 + 64), FirstIndexOfValue);
        }
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

const void *_VolumeObserverDiskUnmountApprovalCallback(void *key, uint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (!*a2)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(a2 + 56), key);
  if (!Value)
  {
    return 0;
  }

  v5 = Value;
  CFArrayAppendValue(*(a2 + 64), key);
  v6 = CFDictionaryGetValue(v5, __CFDiskArbitration_kDADiskDescriptionVolumePathKey);
  CFDictionaryGetValue(v5, __CFDiskArbitration_kDADiskDescriptionVolumeNameKey);
  if (((*(a2 + 32) & 2) != 0 || !CFSetContainsValue(*(a2 + 72), v6)) && (*(a2 + 24) & 2) != 0)
  {
    (*(*(a2 + 40) + 16))();
  }

  v7 = CFDictionaryGetValue(v5, @"_kCFVolumeObserverDissenterKey");
  v8 = v7;
  if (v7)
  {
    CFRetain(v7);
  }

  return v8;
}

void _VolumeObserverIdleCallback(uint64_t a1)
{
  if (a1 && *a1)
  {
    if ((*(a1 + 24) & 0x20) != 0)
    {
      v2 = *(a1 + 40);
      (*(*(a1 + 40) + 16))();
      *(a1 + 24) &= ~0x20uLL;
    }

    *(a1 + 80) = 1;
    Count = CFArrayGetCount(*(a1 + 64));
    if (Count)
    {
      v4 = Count - 1;
      do
      {
        ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 64), v4);
        Value = CFDictionaryGetValue(*(a1 + 56), ValueAtIndex);
        if (Value)
        {
          v7 = Value;
          CFDictionaryGetValue(Value, __CFDiskArbitration_kDADiskDescriptionVolumePathKey);
          CFDictionaryGetValue(v7, __CFDiskArbitration_kDADiskDescriptionVolumeNameKey);
          if ((*(a1 + 24) & 4) != 0)
          {
            (*(*(a1 + 40) + 16))();
          }
        }

        --v4;
      }

      while (v4 != -1);
    }

    v8 = *(a1 + 64);

    CFArrayRemoveAllValues(v8);
  }
}

void __CFDiskArbitration_DASessionSetDispatchQueue(uint64_t a1, uint64_t a2)
{
  if (__CFDiskArbitration_DASessionSetDispatchQueue_onceToken != -1)
  {
    __CFDiskArbitration_DASessionSetDispatchQueue_cold_1();
  }

  v4 = __CFDiskArbitration_DASessionSetDispatchQueue_dyfunc;
  if (__CFDiskArbitration_DASessionSetDispatchQueue_dyfunc)
  {

    v4(a1, a2);
  }
}

void _CFVolumeObserverInvalidate(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = v2;
    atomic_compare_exchange_strong((a1 + 16), &v3, 0);
    if (v3 == v2)
    {
      _VolumeObserverInvalidate(v2);
    }
  }
}

void _VolumeObserverInvalidate(uint64_t a1)
{
  v5[5] = *MEMORY[0x1E69E9840];
  *a1 = 0;
  v2 = *(a1 + 16);
  if (v2)
  {
    dispatch_source_cancel(v2);
  }

  __CFDiskArbitration_DASessionSetDispatchQueue(*(a1 + 48), 0);
  v3 = *(a1 + 8);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___VolumeObserverInvalidate_block_invoke;
  v5[3] = &__block_descriptor_tmp_57;
  v5[4] = a1;
  dispatch_barrier_sync(v3, v5);
  dispatch_release(v3);
  v4 = *MEMORY[0x1E69E9840];
}

void _CFVolumeObserverInvalidateWithCompletionHandler(uint64_t a1, void (**aBlock)(void *))
{
  block[6] = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 16);
  if (!v2)
  {
    goto LABEL_11;
  }

  v3 = *(a1 + 16);
  atomic_compare_exchange_strong((a1 + 16), &v3, 0);
  if (v3 == v2)
  {
    if (aBlock)
    {
      v4 = _Block_copy(aBlock);
    }

    else
    {
      v4 = 0;
    }

    global_queue = dispatch_get_global_queue(25, 0);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = ___CFVolumeObserverInvalidateWithCompletionHandler_block_invoke;
    block[3] = &unk_1E6DCFAA0;
    block[4] = v4;
    block[5] = v2;
    dispatch_async(global_queue, block);
    goto LABEL_11;
  }

  if (!aBlock)
  {
LABEL_11:
    v8 = *MEMORY[0x1E69E9840];
    return;
  }

  v5 = aBlock[2];
  v6 = *MEMORY[0x1E69E9840];

  v5(aBlock);
}

void _CFVolumeObserverSetUnmountDissenterForDisk(uint64_t a1, const void *a2, const void *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    if (*v3)
    {
      Value = CFDictionaryGetValue(*(v3 + 56), a2);
      if (Value)
      {
        if (a3)
        {

          CFDictionarySetValue(Value, @"_kCFVolumeObserverDissenterKey", a3);
        }

        else
        {

          CFDictionaryRemoveValue(Value, @"_kCFVolumeObserverDissenterKey");
        }
      }
    }
  }
}

const void *_CFVolumeObserverGetUnmountDissenterForDisk(uint64_t a1, const void *a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  if (!*v2)
  {
    return 0;
  }

  Value = CFDictionaryGetValue(*(v2 + 56), a2);
  if (!Value)
  {
    return 0;
  }

  return CFDictionaryGetValue(Value, @"_kCFVolumeObserverDissenterKey");
}

void *_CFLookupDiskArbitrationFunction(char *__symbol)
{
  if (_CFLookupDiskArbitrationFunction_onceToken != -1)
  {
    _CFLookupDiskArbitrationFunction_cold_1();
  }

  result = _CFLookupDiskArbitrationFunction_image;
  if (_CFLookupDiskArbitrationFunction_image)
  {

    return dlsym(result, __symbol);
  }

  return result;
}

uint64_t __CFDiskArbitration_DADiskCopyDescription(uint64_t a1)
{
  if (__CFDiskArbitration_DADiskCopyDescription_onceToken != -1)
  {
    __CFDiskArbitration_DADiskCopyDescription_cold_1();
  }

  v2 = __CFDiskArbitration_DADiskCopyDescription_dyfunc;
  if (!__CFDiskArbitration_DADiskCopyDescription_dyfunc)
  {
    return 0;
  }

  return v2(a1);
}

uint64_t _VolumeIsAutomounted(const __CFURL *a1)
{
  BOOLean[1] = *MEMORY[0x1E69E9840];
  BOOLean[0] = 0;
  if (CFURLCopyResourcePropertyForKey(a1, @"NSURLVolumeIsAutomountedKey", BOOLean, 0))
  {
    v1 = BOOLean[0] == 0;
  }

  else
  {
    v1 = 1;
  }

  if (v1)
  {
    Value = 0;
  }

  else
  {
    Value = CFBooleanGetValue(BOOLean[0]);
    CFRelease(BOOLean[0]);
  }

  v3 = *MEMORY[0x1E69E9840];
  return Value;
}

uint64_t _CFBundleGrokObjCImageInfoFromMainExecutable(_DWORD *a1, _DWORD *a2)
{
  v9[1] = *MEMORY[0x1E69E9840];
  v9[0] = 0;
  result = getsegbyname("__DATA");
  if (!result)
  {
    v6 = 0;
    v7 = 0;
    goto LABEL_7;
  }

  SectData = _CFBundleGetSectData("__DATA", "__objc_imageinfo", v9);
  result = 0;
  if (SectData)
  {
    v6 = 0;
    v7 = 0;
    if (v9[0] >= 8)
    {
      v6 = *SectData->sectname;
      v7 = *&SectData->sectname[4];
      result = 1;
      if (!a1)
      {
        goto LABEL_9;
      }

LABEL_8:
      *a1 = v6;
      goto LABEL_9;
    }

LABEL_7:
    if (!a1)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  v6 = 0;
  v7 = 0;
  if (a1)
  {
    goto LABEL_8;
  }

LABEL_9:
  if (a2)
  {
    *a2 = v7;
  }

  v8 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef _CFBundleCopyFileTypeForFileURL(const __CFURL *a1, double a2, int8x8_t a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  _CFBundleGrokFileType(a1, 0, v5, 0, 0, 0, 0, 0, a2, a3, 0);
  result = v5[0];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFStringRef _CFBundleCopyFileTypeForFileData(const __CFData *a1, double a2, int8x8_t a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  _CFBundleGrokFileType(0, a1, v5, 0, 0, 0, 0, 0, a2, a3, 0);
  result = v5[0];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

CFMutableDictionaryRef _CFBundleCopyInfoDictionaryForExecutableFileData(const __CFData *a1, BOOL *a2, double a3, int8x8_t a4)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v8[0] = 0;
  v7 = 0;
  _CFBundleGrokFileType(0, a1, 0, &v7, 0, v8, 0, 0, a3, a4, 0);
  if (a2)
  {
    *a2 = (v7 & 0xFFFFFFFB) == 2;
  }

  result = v8[0];
  v6 = *MEMORY[0x1E69E9840];
  return result;
}

const __CFArray *_CFBundleCopyArchitecturesForExecutable(const __CFURL *a1, double a2, int8x8_t a3)
{
  v5[1] = *MEMORY[0x1E69E9840];
  v5[0] = 0;
  _CFBundleGrokFileType(a1, 0, 0, 0, v5, 0, 0, 0, a2, a3, 0);
  result = v5[0];
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t _CFBundleGetObjCImageInfo(__CFBundle *a1, _DWORD *a2, _DWORD *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13 = 0;
  v5 = CFBundleCopyExecutableURL(a1);
  if (v5)
  {
    v8 = v5;
    v14 = 0;
    _CFBundleGrokFileType(v5, 0, 0, 0, 0, 0, &v14, &v13, v6, v7, &v12);
    v9 = v14;
    CFRelease(v8);
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v9 = 0;
  if (a2)
  {
LABEL_3:
    *a2 = v13;
  }

LABEL_4:
  if (a3)
  {
    *a3 = v12;
  }

  v10 = *MEMORY[0x1E69E9840];
  return v9;
}

const char *_CFBundleGrokFileTypeForZipFile(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = a1;
  if (a3 < 31)
  {
    v57 = 0;
    v58 = 0;
    v56 = 0uLL;
    v59 = 0;
    LODWORD(v8) = 0;
    v10 = "zip";
    goto LABEL_128;
  }

  v57 = 0;
  v58 = 0;
  v56 = 0uLL;
  v59 = 0;
  v8 = 0;
  v9 = 0;
  v54 = a2 + a3;
  v10 = "zip";
  while (1)
  {
    v11 = a2 + v9;
    if (*(a2 + v9) != 80 || *(v11 + 1) != 75)
    {
      goto LABEL_12;
    }

    v12 = *(v11 + 2);
    if (v12 != 3)
    {
      if (v12 == 1 && *(v11 + 3) == 2)
      {
        LOBYTE(v13) = 0;
        v14 = 46;
        v15 = 28;
        goto LABEL_11;
      }

      goto LABEL_12;
    }

    v13 = 1;
    if (*(v11 + 3) == 4)
    {
      break;
    }

LABEL_13:
    v17 = v9 + 31;
    ++v9;
    if (v17 >= a3)
    {
      goto LABEL_127;
    }
  }

  v14 = 30;
  v15 = 26;
LABEL_11:
  v16 = *(v11 + v15);
  if (v9 + v14 + v16 > a3)
  {
LABEL_12:
    v13 = 1;
    goto LABEL_13;
  }

  v18 = v14;
  v19 = v13 ^ 1;
  if (v16 != 8)
  {
    v19 = 1;
  }

  if (v19)
  {
    if (*(v11 + v15) <= 0x12u)
    {
      if (v16 == 9)
      {
        if (!strncasecmp_l((v11 + v14), "META-INF/", 9uLL, 0))
        {
          v13 = 1;
          LODWORD(v56) = 1;
          goto LABEL_81;
        }
      }

      else
      {
        if (v16 != 11)
        {
          goto LABEL_77;
        }

        if (!strncasecmp_l((v11 + v14), "content.xml", 0xBuLL, 0))
        {
          v13 = 1;
          DWORD1(v56) = 1;
          goto LABEL_81;
        }

        if (!strncasecmp_l((v11 + v18), "_rels/.rels", 0xBuLL, 0))
        {
          v13 = 1;
          LODWORD(v59) = 1;
          goto LABEL_81;
        }
      }
    }

    else
    {
      switch(v16)
      {
        case 0x13:
          if (!strncasecmp_l((v11 + v14), "[Content_Types].xml", 0x13uLL, 0))
          {
            v13 = 1;
            HIDWORD(v59) = 1;
            goto LABEL_81;
          }

          break;
        case 0x14:
          if (!strncasecmp_l((v11 + v14), "META-INF/MANIFEST.MF", 0x14uLL, 0))
          {
            v13 = 1;
            v8 = 1;
            goto LABEL_81;
          }

          break;
        case 0x15:
          if (!strncasecmp_l((v11 + v14), "META-INF/manifest.xml", 0x15uLL, 0))
          {
            v13 = 1;
            DWORD2(v56) = 1;
            goto LABEL_81;
          }

          break;
        default:
LABEL_77:
          if (v16 < 5)
          {
            goto LABEL_78;
          }

          break;
      }
    }

LABEL_19:
    v53 = v10;
    v20 = a4;
    v21 = v8;
    v22 = (v11 + v18);
    v23 = v11 + v18 + v16;
    if (!strncasecmp_l((v23 - 4), ".opf", 4uLL, 0))
    {
      v13 = 1;
      LODWORD(v58) = 1;
      goto LABEL_63;
    }

    if (strncasecmp_l((v23 - 4), ".sml", 4uLL, 0))
    {
      if (v16 < 6)
      {
        goto LABEL_40;
      }

      if (strncasecmp_l((v23 - 5), ".smil", 5uLL, 0))
      {
        if (v16 >= 8)
        {
          if (!strncasecmp_l(v22, "xl/", 3uLL, 0) && !strncasecmp_l((v23 - 4), ".xml", 4uLL, 0))
          {
            goto LABEL_107;
          }

          if (v16 == 8)
          {
            goto LABEL_40;
          }

          if (!strncasecmp_l(v22, "ppt/", 4uLL, 0) && !strncasecmp_l((v23 - 4), ".xml", 4uLL, 0))
          {
            v13 = 1;
            HIDWORD(v56) = 1;
            goto LABEL_63;
          }

          if (v16 < 0xA)
          {
            goto LABEL_40;
          }

          if (!strncasecmp_l(v22, "word/", 5uLL, 0) && !strncasecmp_l((v23 - 4), ".xml", 4uLL, 0))
          {
            v13 = 1;
            HIDWORD(v58) = 1;
            goto LABEL_63;
          }

          if (v16 == 10)
          {
            goto LABEL_40;
          }

          if (!strncasecmp_l(v22, "excel/", 6uLL, 0) && !strncasecmp_l((v23 - 4), ".xml", 4uLL, 0))
          {
LABEL_107:
            v13 = 1;
            LODWORD(v57) = 1;
            goto LABEL_63;
          }

          if (v16 >= 0x10 && !strncasecmp_l(v22, "powerpoint/", 0xBuLL, 0))
          {
            v24 = strncasecmp_l((v23 - 4), ".xml", 4uLL, 0);
            v25 = HIDWORD(v56);
            if (!v24)
            {
              v25 = 1;
            }

            HIDWORD(v56) = v25;
          }
        }

LABEL_40:
        v13 = 1;
LABEL_63:
        v8 = v21;
        a4 = v20;
        v10 = v53;
        goto LABEL_81;
      }
    }

    v13 = 1;
    HIDWORD(v57) = 1;
    goto LABEL_63;
  }

  if (strncasecmp_l((v11 + v14), "mimetype", 8uLL, 0))
  {
    goto LABEL_19;
  }

  v26 = v8;
  v27 = v11 + *(v11 + 26) + *(v11 + 28);
  v28 = v27 + 30;
  if (v27 + 30 <= v11 || v27 + 86 > v54 || *(v11 + 8) || strncasecmp_l(v28, "application/vnd.", 0x10uLL, 0) && strncasecmp_l(v28, "application/x-vnd.", 0x12uLL, 0))
  {
    if (v28 > v11 && v28 + 41 <= v54 && *(v11 + 8) == 8 && *v28 == -936891317 && *(v28 + 4) == 743328969)
    {
      v13 = 1;
      v10 = "odt";
    }

    else
    {
      if (v28 > v11 && v28 + 29 <= v54 && !strncasecmp_l(v28, "application/oebps-package+xml", 0x1DuLL, 0))
      {
        goto LABEL_79;
      }

      v13 = 1;
      if (v28 <= v11 || v28 + 20 > v54)
      {
        goto LABEL_80;
      }

      if (strncasecmp_l(v28, "application/epub+zip", 0x14uLL, 0))
      {
        v13 = 1;
      }

      else
      {
LABEL_79:
        v13 = 0;
        v10 = "epub";
      }
    }

LABEL_80:
    v8 = v26;
    goto LABEL_81;
  }

  v29 = 16;
  if (*(v28 + 15) != 46)
  {
    v29 = 18;
  }

  v30 = (v28 + v29);
  if (!strncasecmp_l((v28 + v29), "sun.xml.", 8uLL, 0))
  {
    v8 = v26;
    if (strncasecmp_l(v30 + 8, "calc", 4uLL, 0))
    {
      if (strncasecmp_l(v30 + 8, "draw", 4uLL, 0))
      {
        if (strncasecmp_l(v30 + 8, "writer.global", 0xDuLL, 0))
        {
          if (strncasecmp_l(v30 + 8, "impress", 7uLL, 0))
          {
            if (strncasecmp_l(v30 + 8, "math", 4uLL, 0))
            {
              if (strncasecmp_l(v30 + 8, "writer", 6uLL, 0))
              {
                goto LABEL_78;
              }

              v31 = 25;
            }

            else
            {
              v31 = 20;
            }
          }

          else
          {
            v31 = 15;
          }
        }

        else
        {
          v31 = 10;
        }
      }

      else
      {
        v31 = 5;
      }
    }

    else
    {
      v31 = 0;
    }

    v13 = 0;
    v32 = "sxc";
    goto LABEL_125;
  }

  v8 = v26;
  if (strncasecmp_l(v30, "oasis.opendocument.", 0x13uLL, 0))
  {
    goto LABEL_78;
  }

  if (!strncasecmp_l(v30 + 19, "chart", 5uLL, 0))
  {
    v31 = 0;
LABEL_124:
    v13 = 0;
    v32 = &unk_1834311AC;
LABEL_125:
    v10 = &v32[v31];
    goto LABEL_81;
  }

  if (!strncasecmp_l(v30 + 19, "formula", 7uLL, 0))
  {
    v31 = 5;
    goto LABEL_124;
  }

  if (!strncasecmp_l(v30 + 19, "graphics", 8uLL, 0))
  {
    v31 = 10;
    goto LABEL_124;
  }

  if (!strncasecmp_l(v30 + 19, "text-web", 8uLL, 0))
  {
    v31 = 15;
    goto LABEL_124;
  }

  if (!strncasecmp_l(v30 + 19, "image", 5uLL, 0))
  {
    v31 = 20;
    goto LABEL_124;
  }

  if (!strncasecmp_l(v30 + 19, "text-master", 0xBuLL, 0))
  {
    v31 = 25;
    goto LABEL_124;
  }

  if (!strncasecmp_l(v30 + 19, "presentation", 0xCuLL, 0))
  {
    v31 = 30;
    goto LABEL_124;
  }

  if (!strncasecmp_l(v30 + 19, "spreadsheet", 0xBuLL, 0))
  {
    v31 = 35;
    goto LABEL_124;
  }

  if (!strncasecmp_l(v30 + 19, "text", 4uLL, 0))
  {
    v31 = 40;
    goto LABEL_124;
  }

LABEL_78:
  v13 = 1;
LABEL_81:
  v9 += (v18 + v16 - 1);
  if (v13)
  {
    goto LABEL_13;
  }

LABEL_127:
  v7 = a1;
  if (v13)
  {
LABEL_128:
    v33 = a4 < 1024;
    v34 = a4 - 1024;
    if (!v33)
    {
      if (v7 < 0 || lseek(v7, v34, 0) != v34)
      {
        if (a3 >= 1024)
        {
          v38 = 0;
          v36 = a2 + a3 - 1024;
          goto LABEL_136;
        }
      }

      else
      {
        v35 = malloc_type_malloc(0x400uLL, 0x100004077774924uLL);
        if (v35)
        {
          v36 = v35;
          v37 = read(v7, v35, 0x400uLL);
          v38 = v36;
          if (v37 <= 1023)
          {
            v38 = v36;
            goto LABEL_195;
          }

LABEL_136:
          v39 = 0;
          while (2)
          {
            v40 = v36 + v39;
            if (*(v36 + v39) != 80 || *(v39 + v36 + 1) != 75)
            {
              goto LABEL_188;
            }

            v41 = *(v39 + v36 + 2);
            if (v41 != 3)
            {
              if (v41 == 1 && *(v39 + v36 + 3) == 2)
              {
                v42 = 46;
                v43 = 28;
                goto LABEL_145;
              }

              goto LABEL_188;
            }

            if (*(v39 + v36 + 3) != 4)
            {
              goto LABEL_188;
            }

            v42 = 30;
            v43 = 26;
LABEL_145:
            v44 = *(v40 + v43);
            if (v39 + v42 + v44 > 1024)
            {
LABEL_188:
              v33 = v39++ < 993;
              if (!v33)
              {
                goto LABEL_195;
              }

              continue;
            }

            break;
          }

          v45 = v42;
          if (*(v40 + v43) <= 0x12u)
          {
            if (v44 == 9)
            {
              if (!strncasecmp_l((v40 + v42), "META-INF/", 9uLL, 0))
              {
                LODWORD(v56) = 1;
                goto LABEL_187;
              }

              goto LABEL_164;
            }

            if (v44 == 11)
            {
              if (!strncasecmp_l((v40 + v42), "content.xml", 0xBuLL, 0))
              {
                DWORD1(v56) = 1;
                goto LABEL_187;
              }

              if (!strncasecmp_l((v40 + v45), "_rels/.rels", 0xBuLL, 0))
              {
                LODWORD(v59) = 1;
                goto LABEL_187;
              }

              goto LABEL_164;
            }
          }

          else
          {
            switch(v44)
            {
              case 0x13:
                if (!strncasecmp_l((v40 + v42), "[Content_Types].xml", 0x13uLL, 0))
                {
                  HIDWORD(v59) = 1;
                  goto LABEL_187;
                }

                goto LABEL_164;
              case 0x14:
                if (!strncasecmp_l((v40 + v42), "META-INF/MANIFEST.MF", 0x14uLL, 0))
                {
                  LODWORD(v8) = 1;
                  goto LABEL_187;
                }

                goto LABEL_164;
              case 0x15:
                if (!strncasecmp_l((v40 + v42), "META-INF/manifest.xml", 0x15uLL, 0))
                {
                  DWORD2(v56) = 1;
                  goto LABEL_187;
                }

LABEL_164:
                v46 = (v40 + v45);
                v47 = v40 + v45 + v44;
                if (!strncasecmp_l((v47 - 4), ".opf", 4uLL, 0))
                {
                  LODWORD(v58) = 1;
                  goto LABEL_187;
                }

                if (!strncasecmp_l((v47 - 4), ".sml", 4uLL, 0))
                {
                  goto LABEL_185;
                }

                if (v44 < 6)
                {
                  goto LABEL_187;
                }

                if (!strncasecmp_l((v47 - 5), ".smil", 5uLL, 0))
                {
LABEL_185:
                  HIDWORD(v57) = 1;
                  goto LABEL_187;
                }

                if (v44 < 8)
                {
                  goto LABEL_187;
                }

                if (strncasecmp_l(v46, "xl/", 3uLL, 0) || strncasecmp_l((v47 - 4), ".xml", 4uLL, 0))
                {
                  if (v44 == 8)
                  {
                    goto LABEL_187;
                  }

                  if (!strncasecmp_l(v46, "ppt/", 4uLL, 0) && !strncasecmp_l((v47 - 4), ".xml", 4uLL, 0))
                  {
                    v49 = 1;
LABEL_192:
                    HIDWORD(v56) = v49;
                    goto LABEL_187;
                  }

                  if (v44 < 0xA)
                  {
                    goto LABEL_187;
                  }

                  if (!strncasecmp_l(v46, "word/", 5uLL, 0) && !strncasecmp_l((v47 - 4), ".xml", 4uLL, 0))
                  {
                    HIDWORD(v58) = 1;
                    goto LABEL_187;
                  }

                  if (v44 == 10)
                  {
LABEL_187:
                    v39 += (v45 + v44 - 1);
                    goto LABEL_188;
                  }

                  if (strncasecmp_l(v46, "excel/", 6uLL, 0) || strncasecmp_l((v47 - 4), ".xml", 4uLL, 0))
                  {
                    if (v44 < 0x10 || strncasecmp_l(v46, "powerpoint/", 0xBuLL, 0))
                    {
                      goto LABEL_187;
                    }

                    v48 = strncasecmp_l((v47 - 4), ".xml", 4uLL, 0);
                    v49 = HIDWORD(v56);
                    if (!v48)
                    {
                      v49 = 1;
                    }

                    goto LABEL_192;
                  }
                }

                LODWORD(v57) = 1;
                goto LABEL_187;
            }
          }

          if (v44 < 5)
          {
            goto LABEL_187;
          }

          goto LABEL_164;
        }
      }
    }

    v38 = 0;
LABEL_195:
    if (v8)
    {
LABEL_196:
      v10 = "jar";
    }

    else
    {
      v50 = v59 != 0;
      if (v59 && HIDWORD(v58))
      {
        v10 = "docx";
      }

      else
      {
        if (v57)
        {
          v51 = v59 != 0;
        }

        else
        {
          v51 = 0;
        }

        if (v51)
        {
          v10 = "xlsx";
        }

        else
        {
          if (!BYTE12(v56))
          {
            v50 = 0;
          }

          if (v50)
          {
            v10 = "pptx";
          }

          else if (*(&v56 + 4))
          {
            v10 = "odt";
          }

          else
          {
            if (v56)
            {
              goto LABEL_196;
            }

            if (v58 && HIDWORD(v57))
            {
              v10 = "dtb";
            }

            else if (v58)
            {
              v10 = "oeb";
            }
          }
        }
      }
    }

    if (v38)
    {
      free(v38);
    }
  }

  return v10;
}

const char *_CFBundleGrokFileTypeForOLEFile(int a1, uint64_t a2, off_t a3, off_t a4)
{
  if (a1 < 0 || lseek(a1, a4, 0) != a4)
  {
    v11 = "ole";
    if (a4 + 512 > a3 || !a2)
    {
      return v11;
    }

    v9 = 0;
    v10 = (a2 + a4);
  }

  else
  {
    v8 = malloc_type_malloc(0x200uLL, 0x100004077774924uLL);
    if (!v8)
    {
      return "ole";
    }

    v9 = v8;
    if (read(a1, v8, 0x200uLL) <= 511)
    {
      v11 = "ole";
      goto LABEL_60;
    }

    v10 = v9;
  }

  v12 = 0;
  v11 = "xls";
  while (1)
  {
    v13 = v12 << 7;
    v14 = v10[128 * v12 + 64];
    v15 = ((v14 + (v14 >> 7)) << 24) >> 25;
    v16 = v14 & 0xFE;
    if (v16 <= 25)
    {
      if (v16 == 10)
      {
        v29 = (v15 - 1);
        if (v15 == 1)
        {
          goto LABEL_56;
        }

        v30 = 0;
        v31 = 0;
        v32 = &v10[v13];
        do
        {
          v33 = v32[v30 & 0xFFFFFFFE];
          v34 = aBook[v31++];
          v30 += 2;
        }

        while (v33 == v34 && v31 < v29);
        if (v33 == v34)
        {
          goto LABEL_56;
        }
      }

      else if (v16 == 18)
      {
        v17 = (v15 - 1);
        if (!v17)
        {
          goto LABEL_56;
        }

        v18 = 0;
        v19 = 0;
        do
        {
          v20 = v10[v13 + (v18 & 0xFFFFFFFE)];
          v21 = aWorkbook[v19++];
          v18 += 2;
          v22 = v20 != v21 || v19 >= v17;
        }

        while (!v22);
        if (v20 == v21)
        {
          goto LABEL_56;
        }
      }

      goto LABEL_50;
    }

    if (v16 != 40)
    {
      break;
    }

    v36 = v15 - 1;
    if (!v36)
    {
      goto LABEL_55;
    }

    v37 = 0;
    v38 = 0;
    v39 = &v10[v13];
    do
    {
      v40 = v39[v37 & 0xFFFFFFFE];
      v41 = aPowerpointDocu[v38++];
      v37 += 2;
    }

    while (v40 == v41 && v38 < v36);
    if (v40 == v41)
    {
LABEL_55:
      v11 = "ppt";
LABEL_56:
      if (v9)
      {
        goto LABEL_60;
      }

      return v11;
    }

LABEL_50:
    v22 = v12++ >= 3;
    if (v22)
    {
      v11 = "ole";
      if (v9)
      {
        goto LABEL_60;
      }

      return v11;
    }
  }

  if (v16 != 26)
  {
    goto LABEL_50;
  }

  v23 = v15 - 1;
  if (v23)
  {
    v24 = 0;
    v25 = 0;
    do
    {
      v26 = v10[v13 + (v24 & 0xFFFFFFFE)];
      v27 = aWorddocument[v25++];
      v24 += 2;
    }

    while (v26 == v27 && v25 < v23);
    if (v26 != v27)
    {
      goto LABEL_50;
    }
  }

  v11 = "doc";
  if (!v9)
  {
    return v11;
  }

LABEL_60:
  free(v9);
  return v11;
}

BOOL _CFBundleGrokX11FromFile(int a1, uint64_t a2, uint64_t a3, unsigned int a4, int a5, int a6)
{
  v11 = a4;
  if (a1 < 0 || lseek(a1, a4, 0) != a4)
  {
    v16 = 0;
    if (a2 && a4 + 4096 <= a3)
    {
      v40 = 0;
      v15 = (a2 + v11);
LABEL_9:
      v17 = v15[5];
      v18 = bswap32(v15[4]);
      v19 = bswap32(v17);
      if (a5)
      {
        v20 = v18;
      }

      else
      {
        v20 = v15[4];
      }

      if (a5)
      {
        v21 = v19;
      }

      else
      {
        v21 = v17;
      }

      if (a6)
      {
        v16 = 0;
        if (v21 <= 0xFE0)
        {
          v22 = v21 + 32;
        }

        else
        {
          v22 = 4096;
        }

        if (v20 && v22 >= 0x21)
        {
          v23 = (v15 + 8);
          v24 = 1;
          v25 = 32;
          while (1)
          {
            v26 = *v23;
            if (a5)
            {
              break;
            }

            if (v26 == 12)
            {
              v27 = v23[2];
LABEL_27:
              v28 = v15 + v25 + v27;
              v16 = v28 + 20 <= v15 + v22 && strncmp(v28, "/usr/X11R6/lib/libX", 0x13uLL) == 0;
              v29 = v23[1];
              if (a5)
              {
                goto LABEL_32;
              }

              goto LABEL_33;
            }

            v16 = 0;
            v29 = v23[1];
LABEL_34:
            if (v24 < v20)
            {
              v25 += v29;
              v23 = (v15 + v25);
              ++v24;
              if (v25 < v22)
              {
                continue;
              }
            }

            goto LABEL_46;
          }

          if (v26 == 201326592)
          {
            v27 = bswap32(v23[2]);
            goto LABEL_27;
          }

          v16 = 0;
          v29 = v23[1];
LABEL_32:
          v29 = bswap32(v29);
LABEL_33:
          if (v16)
          {
            goto LABEL_46;
          }

          goto LABEL_34;
        }

LABEL_46:
        v14 = v40;
        if (!v40)
        {
          return v16;
        }

        goto LABEL_50;
      }

      if (v21 <= 0xFE4)
      {
        v30 = v21 + 28;
      }

      else
      {
        v30 = 4096;
      }

      if (v20)
      {
        v31 = v30 >= 0x1D;
      }

      else
      {
        v31 = 0;
      }

      if (!v31)
      {
        v16 = 0;
        goto LABEL_46;
      }

      v33 = (v15 + 7);
      v34 = 1;
      v35 = 28;
      while (1)
      {
        v36 = *v33;
        if (a5)
        {
          break;
        }

        if (v36 == 12)
        {
          v37 = v33[2];
LABEL_58:
          v38 = v15 + v35 + v37;
          v16 = v38 + 20 <= v15 + v30 && strncmp(v38, "/usr/X11R6/lib/libX", 0x13uLL) == 0;
          v39 = v33[1];
          if (a5)
          {
            goto LABEL_63;
          }

          goto LABEL_64;
        }

        v16 = 0;
        v39 = v33[1];
LABEL_65:
        if (v34 < v20)
        {
          v35 += v39;
          v33 = (v15 + v35);
          ++v34;
          if (v35 < v30)
          {
            continue;
          }
        }

        goto LABEL_46;
      }

      if (v36 == 201326592)
      {
        v37 = bswap32(v33[2]);
        goto LABEL_58;
      }

      v16 = 0;
      v39 = v33[1];
LABEL_63:
      v39 = bswap32(v39);
LABEL_64:
      if (v16)
      {
        goto LABEL_46;
      }

      goto LABEL_65;
    }
  }

  else
  {
    v13 = malloc_type_malloc(0x1000uLL, 0xE5D6D15CuLL);
    if (v13)
    {
      v14 = v13;
      if (read(a1, v13, 0x1000uLL) <= 4095)
      {
        v16 = 0;
LABEL_50:
        free(v14);
        return v16;
      }

      v40 = v14;
      v15 = v14;
      goto LABEL_9;
    }

    return 0;
  }

  return v16;
}

void _CFBundleGrokObjcImageInfoFromFile(int a1, uint64_t a2, uint64_t a3, unsigned int a4, __int32 a5, int a6, char *a7, _DWORD *a8, double a9, int8x8_t a10, _DWORD *a11)
{
  v79[1] = *MEMORY[0x1E69E9840];
  v19 = a4;
  if (a1 < 0 || lseek(a1, a4, 0) != a4)
  {
    v24 = 0;
    v22 = 0;
    if (!a2 || a4 + 4096 > a3)
    {
      goto LABEL_104;
    }

    v70 = a1;
    v21 = 0;
    v23 = (a2 + v19);
  }

  else
  {
    v70 = a1;
    v20 = malloc_type_malloc(0x1000uLL, 0x6C64075AuLL);
    if (!v20)
    {
      v24 = 0;
      v22 = 0;
      goto LABEL_104;
    }

    v21 = v20;
    if (read(v70, v20, 0x1000uLL) <= 4095)
    {
      v24 = 0;
      v22 = 0;
      goto LABEL_103;
    }

    v23 = v21;
  }

  v25 = v23[5];
  v26 = bswap32(v23[4]);
  v27 = bswap32(v25);
  if (a5)
  {
    v28 = v27;
  }

  else
  {
    v26 = v23[4];
    v28 = v25;
  }

  v73 = v26;
  v74 = a5;
  v77 = v23;
  if (!a6)
  {
    v66 = a4;
    v64 = v19;
    v65 = a2;
    if (v28 <= 0xFE4)
    {
      v45 = v28 + 28;
    }

    else
    {
      v45 = 4096;
    }

    if (v26)
    {
      v46 = v45 >= 0x1D;
    }

    else
    {
      v46 = 0;
    }

    if (!v46)
    {
      v24 = 0;
      goto LABEL_101;
    }

    v63 = a3;
    v67 = v21;
    v68 = a7;
    v69 = a8;
    LODWORD(v72) = 0;
    v71 = 0;
    v47 = 0;
    v24 = 0;
    v48 = (v23 + 7);
    v76 = v23 + 14;
    v49 = 28;
    while (1)
    {
      v50 = *v48;
      if (a5)
      {
        break;
      }

      if (v50 == 1)
      {
        v51 = v48[12];
        if (v51)
        {
LABEL_68:
          if (v49 + 56 < v45)
          {
            v52 = v76 + v49;
            v53 = v49 + 124;
            v54 = 1;
            while (1)
            {
              v55 = strncmp((v52 + 16), "__OBJC", 0x10uLL);
              if (!v55)
              {
                v24 = 1;
              }

              if (!(strncmp(v52, "__image_info", 0x10uLL) | v55))
              {
                break;
              }

              if (v54 < v51)
              {
                v52 += 68;
                ++v54;
                v43 = v53 >= v45;
                v53 += 68;
                if (!v43)
                {
                  continue;
                }
              }

              goto LABEL_76;
            }

            a5 = v74;
            v23 = v77;
            if (!v74)
            {
              LODWORD(v72) = *(v52 + 36);
              v71 = *(v52 + 40);
              v59 = v48[1];
              goto LABEL_93;
            }

            v57 = 0;
            LODWORD(v72) = bswap32(*(v52 + 36));
            v71 = bswap32(*(v52 + 40));
            v26 = v73;
LABEL_82:
            v56 = v48[1];
LABEL_83:
            v56 = bswap32(v56);
LABEL_84:
            if (!v57)
            {
              goto LABEL_93;
            }

            goto LABEL_85;
          }
        }

LABEL_76:
        v56 = v48[1];
        v57 = 1;
        v26 = v73;
        a5 = v74;
        v23 = v77;
        if (v74)
        {
          goto LABEL_83;
        }

        goto LABEL_84;
      }

      v56 = v48[1];
LABEL_85:
      if (++v47 < v26)
      {
        v49 += v56;
        v48 = (v23 + v49);
        if (v49 >= 0x1C && v49 < v45)
        {
          continue;
        }
      }

      goto LABEL_93;
    }

    if (v50 != 0x1000000)
    {
      v57 = 1;
      goto LABEL_82;
    }

    v51 = bswap32(v48[12]);
    if (v51)
    {
      goto LABEL_68;
    }

    goto LABEL_76;
  }

  v24 = 0;
  if (v28 <= 0xFE0)
  {
    v29 = v28 + 32;
  }

  else
  {
    v29 = 4096;
  }

  v22 = 0;
  if (!v26 || v29 < 0x21)
  {
LABEL_102:
    if (!v21)
    {
      goto LABEL_104;
    }

    goto LABEL_103;
  }

  v66 = a4;
  v63 = a3;
  v64 = v19;
  v65 = a2;
  v67 = v21;
  v68 = a7;
  v69 = a8;
  LODWORD(v72) = 0;
  v71 = 0;
  v30 = 0;
  v24 = 0;
  v31 = (v23 + 8);
  v32 = 32;
  while (1)
  {
    v33 = *v31;
    if (a5)
    {
      break;
    }

    if (v33 == 25)
    {
      v34 = v31[16];
      goto LABEL_24;
    }

    v42 = v31[1];
LABEL_43:
    if (++v30 < v26)
    {
      v32 += v42;
      v31 = (v23 + v32);
      v43 = v32 < 0x20 || v32 >= v29;
      if (!v43)
      {
        continue;
      }
    }

    goto LABEL_93;
  }

  if (v33 != 419430400)
  {
    v41 = 1;
LABEL_38:
    v42 = v31[1];
LABEL_41:
    v42 = bswap32(v42);
LABEL_42:
    if (!v41)
    {
      goto LABEL_93;
    }

    goto LABEL_43;
  }

  v34 = bswap32(v31[16]);
LABEL_24:
  v75 = v30;
  if (!v34 || v32 + 72 >= v29)
  {
LABEL_40:
    v42 = v31[1];
    v41 = 1;
    v26 = v73;
    a5 = v74;
    v30 = v75;
    if (!v74)
    {
      goto LABEL_42;
    }

    goto LABEL_41;
  }

  v35 = v32 + 152;
  v36 = 1;
  while (1)
  {
    v37 = v29;
    v38 = v23 + v35;
    v39 = v23 + v35 - 80;
    v40 = strncmp(v23 + v35 - 64, "__DATA", 0x10uLL);
    if (!v40)
    {
      v24 = 1;
    }

    if (!(strncmp(v39, "__objc_imageinfo", 0x10uLL) | v40))
    {
      break;
    }

    if (v36 >= v34)
    {
      v23 = v77;
      v29 = v37;
      goto LABEL_40;
    }

    ++v36;
    v29 = v37;
    v43 = v35 >= v37;
    v35 += 80;
    v23 = v77;
    if (v43)
    {
      goto LABEL_40;
    }
  }

  a5 = v74;
  if (v74)
  {
    v41 = 0;
    LODWORD(v72) = bswap64(*(v38 - 5));
    v23 = v77;
    v71 = bswap32(*(v77 + v35 - 32));
    v26 = v73;
    v29 = v37;
    v30 = v75;
    goto LABEL_38;
  }

  v71 = *(v77 + v35 - 32);
  v44 = v31[1];
  v72 = *(v38 - 5);
LABEL_93:
  if (v72 < 8)
  {
    v22 = 0;
    a7 = v68;
    a8 = v69;
    v21 = v67;
    if (!v67)
    {
      goto LABEL_104;
    }

LABEL_103:
    v78 = v22;
    free(v21);
    v22 = v78;
    goto LABEL_104;
  }

  a7 = v68;
  a8 = v69;
  v21 = v67;
  if ((v70 & 0x80000000) == 0 && lseek(v70, v71 + v66, 0) == v71 + v66 && read(v70, v79, 8uLL) >= 8)
  {
    v22.i32[0] = 0;
    a10.i32[0] = a5;
    v60 = vdup_lane_s8(vceq_s8(a10, v22), 0);
    v61 = v79[0];
    goto LABEL_112;
  }

  if (v66 + v71 + 8 > v63)
  {
LABEL_101:
    v22 = 0;
    goto LABEL_102;
  }

  v22.i32[0] = 0;
  a10.i32[0] = a5;
  v60 = vdup_lane_s8(vceq_s8(a10, v22), 0);
  v61 = *(v65 + v64 + v71);
LABEL_112:
  v22 = vbsl_s8(v60, v61, vrev32_s8(v61));
  if (v67)
  {
    goto LABEL_103;
  }

LABEL_104:
  if (a7)
  {
    *a7 = v24;
  }

  if (a8)
  {
    *a8 = v22.i32[0];
  }

  if (a11)
  {
    *a11 = v22.i32[1];
  }

  v62 = *MEMORY[0x1E69E9840];
}