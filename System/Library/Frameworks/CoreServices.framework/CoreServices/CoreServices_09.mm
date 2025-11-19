void sub_1817840A4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, uint64_t a18, void *a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34)
{
  CFRelease(v35);
  CFRelease(v34);

  _Unwind_Resume(a1);
}

uint64_t ___ZL34_LSCreateRegistrationDataForBundleP9LSContextP18LSRegistrationInfoPK7__CFURLPK14__CFDictionaryPPK9__CFArray_block_invoke(uint64_t a1, const void *a2, const void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  if (!CFDictionaryContainsKey(*(a1 + 32), a2))
  {
    v8 = _LSRegistrationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v14 = 138543618;
      v15 = a2;
      v16 = 2114;
      v17 = a3;
      v9 = "REGISTRATION CACHE ERROR: Missing, %{public}@   %{public}@";
      v10 = v8;
      v11 = 22;
LABEL_8:
      _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_ERROR, v9, &v14, v11);
    }

LABEL_9:

    result = 0;
    goto LABEL_10;
  }

  Value = CFDictionaryGetValue(*(a1 + 32), a2);
  if (!CFEqual(a3, Value))
  {
    v8 = _LSRegistrationLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      v12 = CFDictionaryGetValue(*(a1 + 32), a2);
      v14 = 138543874;
      v15 = a2;
      v16 = 2114;
      v17 = a3;
      v18 = 2114;
      v19 = v12;
      v9 = "REGISTRATION CACHE ERROR: Difference, %{public}@   %{public}@ vs (wrong) %{public}@";
      v10 = v8;
      v11 = 32;
      goto LABEL_8;
    }

    goto LABEL_9;
  }

  result = 1;
LABEL_10:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

void _LSAddBundleLibraryInfo(LSContext *a1, const __CFURL *a2, _LSBundleProvider *a3, LSRegistrationInfo *a4, __CFDictionary *a5, int a6, const __CFArray **a7)
{
  v13 = a3;
  v14 = a4;
  if ((v14->options & 0x10000000) != 0)
  {
    v31 = 0;
    if (FSNodeCreateWithURL(a2, 1, &v31))
    {
LABEL_31:

      goto LABEL_32;
    }

    if (a6)
    {
      v15 = [MEMORY[0x1E696AD98] numberWithUnsignedChar:_LSGetDirectoryClassForNode(v31)];
      CFDictionaryAddValue(a5, @"_LSDirectoryClass", v15);
    }

    v30 = 0;
    *cf = 0u;
    *v29 = 0u;
    v16 = CFRetain(a2);
    if (v16)
    {
      cf[0] = v16;
    }

    v17 = CFRetain(a5);
    v18 = v29[0];
    if (v29[0] != v17)
    {
      v29[0] = v17;
      v17 = v18;
    }

    if (v17)
    {
      CFRelease(v17);
    }

    objc_storeStrong(&v30, a4);
    if (v13)
    {
      v19 = *[(_LSBundleProvider *)v13 provider];
      if (v19)
      {
        v20 = CFRetain(v19);
        v21 = v20;
        if (v20)
        {
          v22 = XCFURLCopyRelativeFileSystemPath(v20, a2, kCFURLPOSIXPathStyle);
          if (!v22)
          {
            CFRelease(v21);
            if (a7)
            {
LABEL_22:
              v25 = v29[1];
              if (v29[1])
              {
                v25 = CFRetain(v29[1]);
              }

              *a7 = v25;
            }

LABEL_25:

            if (v29[1])
            {
              CFRelease(v29[1]);
            }

            v29[1] = 0;
            if (v29[0])
            {
              CFRelease(v29[0]);
            }

            v29[0] = 0;
            if (cf[0])
            {
              CFRelease(cf[0]);
            }

            goto LABEL_31;
          }

          CFDictionarySetValue(a5, @"_LSBundleLibraryPath", v22);
          CFRelease(v22);
          CFRelease(v21);
        }
      }
    }

    if ((v14->options & 0x10000000) != 0)
    {
      v26 = xmmword_1817E8F08;
      v27 = 1;
      cf[1] = &v26;
      _LSHoistLibraryItems(a1, cf);
    }

    else
    {
      v23 = &kLibrarySubfolders;
      v24 = 240;
      do
      {
        cf[1] = v23;
        _LSHoistLibraryItems(a1, cf);
        v23 += 24;
        v24 -= 24;
      }

      while (v24);
    }

    if (a7)
    {
      goto LABEL_22;
    }

    goto LABEL_25;
  }

LABEL_32:
}

void sub_1817847D4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, id a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  CFRelease(v20);
  CFRelease(v21);
  _LSHoistingState::~_LSHoistingState(&a13);

  _Unwind_Resume(a1);
}

BOOL LSUseLegacyLocalizationList(const __CFDictionary *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = [(__CFDictionary *)a1 objectForKey:@"LSExecutablePlatformKey"];
  v4 = v3;
  if (v2)
  {
    v5 = v3 == 0;
  }

  else
  {
    v5 = 1;
  }

  if (!v5 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v4 = 0;
  }

  v6 = [v4 unsignedIntegerValue];

  v7 = objc_opt_class();
  v8 = [(__CFDictionary *)a1 objectForKey:@"LSExecutableSDKVersion"];
  v9 = v8;
  if (v7 && v8)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_14:
      v10 = 0;
      goto LABEL_17;
    }
  }

  else if (!v8)
  {
    goto LABEL_14;
  }

  v13 = 0u;
  v14 = 0u;
  _LSVersionNumberMakeWithString(&v13, v9);
  v16 = v13;
  v17 = v14;
  memset(v15, 0, sizeof(v15));
  if (_LSVersionNumberCompare(&v16, v15))
  {
    v16 = v13;
    v17 = v14;
    v10 = [_LSStringLocalizer useLegacyLocalizationListForPlatform:v6 sdkVersion:_LSVersionNumberGetDYLDVersion(&v16)];
  }

  else
  {
    v10 = 0;
  }

LABEL_17:
  v11 = *MEMORY[0x1E69E9840];
  return v10;
}

void _LSPathifyIconKey(_LSBundleProvider *a1, __CFDictionary *a2, const __CFString *a3, const __CFString *a4)
{
  v19 = a1;
  if (!a2 || !a3)
  {
    CFStringGetTypeID();
    goto LABEL_13;
  }

  Value = CFDictionaryGetValue(a2, a3);
  TypeID = CFStringGetTypeID();
  if (Value && (!TypeID || CFGetTypeID(Value) == TypeID))
  {
    v8 = LSBundleProvider::copyIconResourceURL([(_LSBundleProvider *)v19 provider], Value, 0);
    v9 = v8;
    v10 = gLogRegistrationErrors;
    if (v8 || !gLogRegistrationErrors)
    {
      if (v8)
      {
        v12 = CFURLCopyFileSystemPath(v8, kCFURLPOSIXPathStyle);
        if (v12)
        {
          v13 = CFURLCopyFileSystemPath(*[(_LSBundleProvider *)v19 provider], kCFURLPOSIXPathStyle);
          if (v13)
          {
            v14 = [FSNode relativePathToFullPath:v12 fromBasePath:v13];
            if (v14)
            {
              CFDictionarySetValue(a2, @"_LSIconPath", v14);
              CFRelease(v14);
            }

            CFRelease(v13);
          }

          goto LABEL_28;
        }

LABEL_29:
        CFRelease(v9);
        goto LABEL_13;
      }
    }

    else
    {
      v11 = LSBundleProvider::CFBundleCopyResourceURL([(_LSBundleProvider *)v19 provider], Value, 0, 0);
      if (v11 || (v11 = LSBundleProvider::CFBundleCopyResourceURL([(_LSBundleProvider *)v19 provider], Value, @"icns", 0)) != 0)
      {
        CFRelease(v11);
      }

      else
      {
        v18 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"Can't find referenced icon resource %@.", Value);
        if (v18)
        {
          _LSRegistrationWarningPath([(_LSBundleProvider *)v19 bundlePath], v18);
          CFRelease(v18);
        }
      }

      v10 = gLogRegistrationErrors;
    }

    if (v10)
    {
      CFGetTypeID(Value);
      ClassWithTypeID = _CFRuntimeGetClassWithTypeID();
      v16 = "<unknown>";
      if (ClassWithTypeID)
      {
        v17 = *(ClassWithTypeID + 8);
        if (v17)
        {
          v16 = v17;
        }
      }

      v9 = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"For plist key %@, value has class %s (should be CFString).", a3, v16);
      if (v9)
      {
        v12 = CFURLCopyFileSystemPath(*[(_LSBundleProvider *)v19 provider], kCFURLPOSIXPathStyle);
        _LSRegistrationWarningPath(v12, v9);
        if (v12)
        {
LABEL_28:
          CFRelease(v12);
          goto LABEL_29;
        }

        goto LABEL_29;
      }
    }
  }

LABEL_13:
}

void _LSPathifyIconKeysInPlistKey(_LSBundleProvider *a1, __CFDictionary *a2, const __CFString *a3, const __CFString *a4, const __CFString *a5)
{
  v16 = a1;
  if (a2 && a3)
  {
    Value = CFDictionaryGetValue(a2, a3);
    TypeID = CFArrayGetTypeID();
    if (Value && (!TypeID || CFGetTypeID(Value) == TypeID))
    {
      v10 = CFArrayGetTypeID();
      if (v10 == CFGetTypeID(Value))
      {
        Count = CFArrayGetCount(Value);
        if (Count >= 1)
        {
          for (i = 0; i != Count; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
            v14 = CFDictionaryGetTypeID();
            if (ValueAtIndex && (!v14 || CFGetTypeID(ValueAtIndex) == v14))
            {
              _LSPathifyIconKey(v16, ValueAtIndex, a4, v15);
            }
          }
        }
      }
    }
  }

  else
  {
    CFArrayGetTypeID();
  }
}

void _LSPathifyReferenceAccessorysInTypeDeclarationsForKey(LSBundleProvider *a1, __CFDictionary *a2, const __CFString *a3)
{
  v39 = *MEMORY[0x1E69E9840];
  TypeID = CFArrayGetTypeID();
  Value = CFDictionaryGetValue(a2, a3);
  if (Value)
  {
    v8 = Value;
    if (CFGetTypeID(Value) == TypeID)
    {
      v9 = v8;
    }

    else
    {
      v9 = 0;
    }
  }

  else
  {
    v9 = 0;
  }

  v29 = v9;
  if ([v29 count])
  {
    v27 = a2;
    v28 = a3;
    v26 = v29;
    v10 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v11 = v26;
    v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
    v13 = v12;
    if (v12)
    {
      v14 = *v35;
      do
      {
        v15 = 0;
        do
        {
          if (*v35 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v34 + 1) + 8 * v15);
          v12 = ___ZL51_LSPathifyReferenceAccessorysInTypeDeclarationsListP16LSBundleProviderP7NSArray_block_invoke(v12, v16);
          if (v12)
          {
            v12 = [v10 addObject:v16];
          }

          ++v15;
        }

        while (v13 != v15);
        v12 = [v11 countByEnumeratingWithState:&v34 objects:v38 count:16];
        v13 = v12;
      }

      while (v12);
    }

    v30[0] = MEMORY[0x1E69E9820];
    v30[1] = 3221225472;
    v31 = ___ZL51_LSPathifyReferenceAccessorysInTypeDeclarationsListP16LSBundleProviderP7NSArray_block_invoke_2;
    v32 = &__block_descriptor_40_e36___NSDictionary_16__0__NSDictionary_8l;
    v33 = a1;
    v17 = v10;
    v18 = v30;
    v19 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(v17, "count")}];
    v36 = 0u;
    v37 = 0u;
    v34 = 0u;
    v35 = 0u;
    v20 = v17;
    v21 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
    if (v21)
    {
      v22 = *v35;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v35 != v22)
          {
            objc_enumerationMutation(v20);
          }

          v24 = v31(v18, *(*(&v34 + 1) + 8 * i));
          [v19 addObject:v24];
        }

        v21 = [v20 countByEnumeratingWithState:&v34 objects:v38 count:16];
      }

      while (v21);
    }

    CFDictionarySetValue(v27, v28, v19);
  }

  v25 = *MEMORY[0x1E69E9840];
}

uint64_t ___ZL51_LSPathifyReferenceAccessorysInTypeDeclarationsListP16LSBundleProviderP7NSArray_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  return isKindOfClass & 1;
}

id ___ZL51_LSPathifyReferenceAccessorysInTypeDeclarationsListP16LSBundleProviderP7NSArray_block_invoke_2(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = *(a1 + 32);
  v5 = v3;
  v6 = [v5 objectForKey:@"UTTypeReferenceAccessoryFile"];
  v7 = v5;
  if (v6)
  {
    v8 = [v5 mutableCopy];
    [v8 removeObjectForKey:@"UTTypeReferenceAccessoryFile"];
    v9 = LSBundleProvider::copyResourceRelativePath(v4, v6, 0, 0);
    if (v9)
    {
      [v8 setObject:v9 forKey:@"_LSReferenceAccessoryResourcePath"];
    }

    v7 = [v8 mutableCopy];
  }

  return v7;
}

uint64_t (*init_GSIsDocumentRevision(const __CFURL *a1))(const __CFURL *)
{
  v2 = GenerationalStorageLibrary(void)::frameworkLibrary;
  if (!GenerationalStorageLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/GenerationalStorage.framework/GenerationalStorage", 2);
    GenerationalStorageLibrary(void)::frameworkLibrary = v2;
  }

  result = dlsym(v2, "_GSIsDocumentRevision");
  softLink_GSIsDocumentRevision = result;
  if (result)
  {

    return result(a1);
  }

  return result;
}

void _LSHoistLibraryItems(LSContext *a1, _LSHoistingState *a2)
{
  v4 = *(*(a2 + 1) + 8);
  if (!v4)
  {
    if (!*a2)
    {
      return;
    }

    v8 = CFRetain(*a2);
    if (!v8)
    {
      return;
    }

    goto LABEL_10;
  }

  v5 = strlen(v4);
  v6 = MEMORY[0x1865D5760](*MEMORY[0x1E695E480], v4, v5, 1, *a2);
  v7 = v6;
  if (v6)
  {
    v8 = CFURLResourceIsReachable(v6, 0) ? CFRetain(v7) : 0;
    CFRelease(v7);
    if (v8)
    {
LABEL_10:
      if (_LSGetBasicURLPropertyKeys(void)::once != -1)
      {
        _LSHoistLibraryItems();
      }

      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = ___ZL20_LSHoistLibraryItemsP9LSContextP16_LSHoistingState_block_invoke;
      v9[3] = &__block_descriptor_48_e59_v40__0____CFURLEnumerator__8____CFURL__16____CFError__24_32l;
      v9[4] = a1;
      v9[5] = a2;
      XCFURLEnumerate(v8, 0, _LSGetBasicURLPropertyKeys(void)::result, v9);
      CFRelease(v8);
    }
  }
}

void sub_181785498(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    CFRelease(v1);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL20_LSHoistLibraryItemsP9LSContextP16_LSHoistingState_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    v4 = [[FSNode alloc] initWithURL:a3 flags:0 error:0];
    v5 = v4;
    if (v4)
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = ___ZL20_LSHoistLibraryItemsP9LSContextP16_LSHoistingState_block_invoke_2;
      v12[3] = &unk_1E6A1DEE8;
      v14 = *(a1 + 32);
      v6 = v4;
      v7 = *(a1 + 40);
      v13 = v6;
      v15 = v7;
      v8 = MEMORY[0x1865D71B0](v12);
      if ([__LSDefaultsGetSharedInstance() isServer] && !*(a1 + 32))
      {
        v9 = +[LSDBExecutionContext sharedServerInstance];
        v10[0] = MEMORY[0x1E69E9820];
        v10[1] = 3221225472;
        v10[2] = ___ZL20_LSHoistLibraryItemsP9LSContextP16_LSHoistingState_block_invoke_3;
        v10[3] = &unk_1E6A1A660;
        v11 = v8;
        [(LSDBExecutionContext *)v9 syncWrite:v10];
      }

      else
      {
        v8[2](v8);
      }
    }
  }
}

void ___ZL20_LSHoistLibraryItemsP9LSContextP16_LSHoistingState_block_invoke_2(uint64_t a1)
{
  v36 = *MEMORY[0x1E69E9840];
  v30 = *(a1 + 40);
  v31 = 0;
  v32 = 0;
  v33 = 0;
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(&v30, v2, 0);

  if (v3 && (![*(a1 + 32) isDirectory] || _LSGetBundleClassForNode(v3, *(a1 + 32)) || _LSNodeIsPackage(v3, *(a1 + 32), 0)))
  {
    v4 = *(a1 + 48);
    v5 = *(a1 + 32);
    v6 = *v4;
    v7 = [v5 URL];
    v8 = XCFURLCopyRelativeFileSystemPath(v6, v7, kCFURLPOSIXPathStyle);

    if (!v8)
    {
LABEL_44:

      goto LABEL_45;
    }

    v9 = v4[2];
    v10 = MEMORY[0x1E695E480];
    if (v9)
    {
      Value = CFDictionaryGetValue(v9, @"_LSBundleLibraryItems");
      TypeID = CFArrayGetTypeID();
      if (Value && (!TypeID || CFGetTypeID(Value) == TypeID))
      {
        v13 = CFArrayGetTypeID();
        if (v13 == CFGetTypeID(Value))
        {
LABEL_14:
          CFArrayAppendValue(Value, v8);
          v14 = _LSGetBundleClassForNode(v3, v5);
          if (!v14)
          {
            v15 = v5;
            if ((*(v4[4] + 19) & 0x10) == 0 || ![__LSDefaultsGetSharedInstance() isAppleInternal] || !objc_msgSend(v15, "isSymbolicLink"))
            {
              goto LABEL_22;
            }

            v16 = _LSRegistrationLog();
            if (os_log_type_enabled(v16, OS_LOG_TYPE_INFO))
            {
              *buf = 138412290;
              v35 = v15;
              _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_INFO, "Symlink %@ will be hoisted into Core Types.", buf, 0xCu);
            }

            v15 = [v15 resolvedNodeWithFlags:0 error:0];
            if (v15)
            {
              v14 = _LSGetBundleClassForNode(v3, v15);
            }

            else
            {
LABEL_22:
              v14 = 0;
            }
          }

          v17 = *v10;
          v18 = MEMORY[0x1865D5790](v17, v8, 0, 1, *v4);
          v19 = v18;
          if (!v18)
          {
            goto LABEL_42;
          }

          v20 = CFURLCopyAbsoluteURL(v18);
          v21 = v20;
          if (v14 != 2 || !v20)
          {
LABEL_34:
            if (v14 && v14 == *(v4[1] + 4))
            {
              LSBundleProvider::LSBundleProvider(buf, v21);
              if (LSBundleProvider::bundleRef(buf, 1, "checking for validity"))
              {
                InfoDictionaryRef = LSBundleProvider::GetInfoDictionaryRef(buf);
                v26 = copyDeepMutableDictionary(InfoDictionaryRef);
                if (v26)
                {
                  _LSPathifyReferenceAccessorysInTypeDeclarationsForKey(buf, v26, @"UTExportedTypeDeclarations");
                  _LSPathifyReferenceAccessorysInTypeDeclarationsForKey(buf, v26, @"UTImportedTypeDeclarations");
                  _LSHoistDelegateDictionaries(v4[2], v26, @"UTExportedTypeDeclarations", v8);
                  _LSHoistDelegateDictionaries(v4[2], v26, @"UTImportedTypeDeclarations", v8);
                  _LSHoistDelegateDictionaries(v4[2], v26, *MEMORY[0x1E695E128], v8);
                  _LSHoistDelegateDictionaries(v4[2], v26, *MEMORY[0x1E695E198], v8);
                  CFRelease(v26);
                }
              }

              LSBundleProvider::~LSBundleProvider(buf);
            }

            if (v21)
            {
              CFRelease(v21);
            }

LABEL_42:
            CFRelease(v8);
            if (v19)
            {
              CFRelease(v19);
            }

            goto LABEL_44;
          }

          Mutable = v4[3];
          if (!Mutable)
          {
            Mutable = CFArrayCreateMutable(v17, 0, MEMORY[0x1E695E9C0]);
            v23 = Mutable;
            v24 = v4[3];
            if (v24 != Mutable)
            {
              v4[3] = Mutable;
              if (!v24)
              {
                goto LABEL_33;
              }

              goto LABEL_32;
            }

            Mutable = v4[3];
            v24 = v23;
            if (v23)
            {
LABEL_32:
              CFRelease(v24);
              Mutable = v4[3];
            }
          }

LABEL_33:
          CFArrayAppendValue(Mutable, v21);
          goto LABEL_34;
        }
      }
    }

    else
    {
      CFArrayGetTypeID();
    }

    Value = CFArrayCreateMutable(*v10, 0, MEMORY[0x1E695E9C0]);
    CFDictionarySetValue(v4[2], @"_LSBundleLibraryItems", Value);
    CFRelease(Value);
    goto LABEL_14;
  }

LABEL_45:
  if (v30 && v32 == 1)
  {
    _LSContextDestroy(v30);
  }

  v27 = v31;
  v30 = 0;
  v31 = 0;

  v32 = 0;
  v28 = v33;
  v33 = 0;

  v29 = *MEMORY[0x1E69E9840];
}

CFArrayRef ___ZL26_LSGetBasicURLPropertyKeysv_block_invoke()
{
  v3[3] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695EB28];
  v3[0] = *MEMORY[0x1E695EBE8];
  v3[1] = v0;
  v3[2] = *MEMORY[0x1E695EB18];
  result = CFArrayCreate(*MEMORY[0x1E695E480], v3, 3, MEMORY[0x1E695E9C0]);
  _LSGetBasicURLPropertyKeys(void)::result = result;
  v2 = *MEMORY[0x1E69E9840];
  return result;
}

void _LSHoistDelegateDictionaries(__CFDictionary *a1, CFDictionaryRef theDict, const __CFString *key, const __CFString *a4)
{
  if (theDict && key)
  {
    Value = CFDictionaryGetValue(theDict, key);
    TypeID = CFArrayGetTypeID();
    if (!Value || TypeID && CFGetTypeID(Value) != TypeID)
    {
      return;
    }

    v10 = CFGetTypeID(Value);
    if (v10 != CFArrayGetTypeID())
    {
      return;
    }

    if (a1)
    {
      Mutable = CFDictionaryGetValue(a1, key);
      v12 = CFArrayGetTypeID();
      if (Mutable && (!v12 || CFGetTypeID(Mutable) == v12))
      {
        v13 = CFGetTypeID(Mutable);
        if (v13 != CFArrayGetTypeID())
        {
          return;
        }

LABEL_18:
        v14 = *MEMORY[0x1E695E4F0];
        if (*MEMORY[0x1E695E4F0])
        {
          v15 = CFDictionaryGetValue(theDict, *MEMORY[0x1E695E4F0]);
          v16 = CFStringGetTypeID();
          if (!v15)
          {
            goto LABEL_27;
          }

          if (!v16 || CFGetTypeID(v15) == v16)
          {
            v17 = CFGetTypeID(v15);
            if (v17 != CFStringGetTypeID())
            {
              v15 = 0;
            }

            goto LABEL_27;
          }
        }

        else
        {
          CFStringGetTypeID();
        }

        v15 = 0;
LABEL_27:
        Count = CFArrayGetCount(Value);
        if (Count >= 1)
        {
          v19 = Count;
          for (i = 0; i != v19; ++i)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Value, i);
            v22 = CFDictionaryGetTypeID();
            if (ValueAtIndex && (!v22 || CFGetTypeID(ValueAtIndex) == v22))
            {
              CFDictionarySetValue(ValueAtIndex, @"_LSBundleLibraryDelegate", a4);
              if (v15)
              {
                CFDictionarySetValue(ValueAtIndex, v14, v15);
              }

              CFArrayAppendValue(Mutable, ValueAtIndex);
            }
          }
        }

        return;
      }
    }

    else
    {
      CFArrayGetTypeID();
    }

    Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
    CFDictionarySetValue(a1, key, Mutable);
    CFRelease(Mutable);
    goto LABEL_18;
  }

  CFArrayGetTypeID();
}

void _LSHoistingState::~_LSHoistingState(id *this)
{
  v2 = this[3];
  if (v2)
  {
    CFRelease(v2);
  }

  this[3] = 0;
  v3 = this[2];
  if (v3)
  {
    CFRelease(v3);
  }

  this[2] = 0;
  if (*this)
  {
    CFRelease(*this);
  }

  *this = 0;
}

uint64_t (*initINSchemaURLsForIntentNamesWithBundle(__CFBundle *a1))(__CFBundle *)
{
  v2 = IntentsLibrary(void)::frameworkLibrary;
  if (!IntentsLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/Frameworks/Intents.framework/Intents", 2);
    IntentsLibrary(void)::frameworkLibrary = v2;
  }

  v3 = dlsym(v2, "INSchemaURLsForIntentNamesWithBundle");
  softLinkINSchemaURLsForIntentNamesWithBundle = v3;
  if (v3)
  {
    v3 = v3(a1);
  }

  return v3;
}

{
  v2 = IntentsLibrary(void)::frameworkLibrary;
  if (!IntentsLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/Frameworks/Intents.framework/Intents", 2);
    IntentsLibrary(void)::frameworkLibrary = v2;
  }

  v3 = dlsym(v2, "INSchemaURLsForIntentNamesWithBundle");
  softLinkINSchemaURLsForIntentNamesWithBundle = v3;
  if (v3)
  {
    v3 = v3(a1);
  }

  return v3;
}

uint64_t (*initLNIsLinkEnabled(__CFBundle *a1))(__CFBundle *)
{
  v2 = LinkServicesLibrary(void)::frameworkLibrary;
  if (!LinkServicesLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/LinkServices.framework/LinkServices", 2);
    LinkServicesLibrary(void)::frameworkLibrary = v2;
  }

  result = dlsym(v2, "LNIsLinkEnabled");
  softLinkLNIsLinkEnabled = result;
  if (result)
  {

    return result(a1);
  }

  return result;
}

CFTypeRef __Block_byref_object_copy__619(uint64_t a1, uint64_t a2)
{
  result = *(a2 + 48);
  *(a1 + 48) = result;
  if (result)
  {
    return CFRetain(result);
  }

  return result;
}

void __Block_byref_object_dispose__620(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 48) = 0;
}

void ___ZL31createInstallationDictForPluginPK10__CFString_block_invoke(uint64_t a1, void *a2)
{
  v8 = a2;
  v3 = [v8 objectForKey:*MEMORY[0x1E695E4F0]];
  v4 = [v3 isEqualToString:*(a1 + 40)];

  if (v4)
  {
    v5 = v8;
    v6 = *(*(a1 + 32) + 8);
    v7 = *(v6 + 48);
    if (v7 != v5)
    {
      *(v6 + 48) = v5;
      v5 = v7;
    }

    if (v5)
    {
      CFRelease(v5);
    }
  }
}

id init_ISIconDataForResourceProxy_1(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = IconServicesLibrary_frameworkLibrary_3;
  if (!IconServicesLibrary_frameworkLibrary_3)
  {
    v6 = dlopen("/System/Library/PrivateFrameworks/IconServices.framework/IconServices", 2);
    IconServicesLibrary_frameworkLibrary_3 = v6;
  }

  softLink_ISIconDataForResourceProxy_1 = dlsym(v6, "_ISIconDataForResourceProxy");
  v7 = (softLink_ISIconDataForResourceProxy_1)(v5, a2, a3);

  return v7;
}

void _LSSchemaTransferCache(uint64_t a1, uint64_t a2)
{
  v2[0] = MEMORY[0x1E69E9820];
  v2[1] = 3221225472;
  v2[2] = ___LSSchemaTransferCache_block_invoke;
  v2[3] = &__block_descriptor_40_e9_v16__0_v8l;
  v2[4] = a2;
  _LSSchemaCacheWrite(a1, v2);
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::clear(uint64_t a1)
{
  if (*(a1 + 24))
  {
    std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::__deallocate_node(a1, *(a1 + 16));
    *(a1 + 16) = 0;
    v2 = *(a1 + 8);
    if (v2)
    {
      for (i = 0; i != v2; ++i)
      {
        *(*a1 + 8 * i) = 0;
      }
    }

    *(a1 + 24) = 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::__deallocate_node(uint64_t a1, void *a2)
{
  if (a2)
  {
    v2 = a2;
    do
    {
      v3 = *v2;
      std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table((v2 + 3));
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }
}

void *std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(void *result)
{
  if (result[3])
  {
    v1 = result;
    result = result[2];
    if (result)
    {
      do
      {
        v2 = *result;
        operator delete(result);
        result = v2;
      }

      while (v2);
    }

    v1[2] = 0;
    v3 = v1[1];
    if (v3)
    {
      for (i = 0; i != v3; ++i)
      {
        *(*v1 + 8 * i) = 0;
      }
    }

    v1[3] = 0;
  }

  return result;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::~__hash_table(uint64_t a1)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::__deallocate_node(a1, *(a1 + 16));
  v2 = *a1;
  *a1 = 0;
  if (v2)
  {
    operator delete(v2);
  }

  return a1;
}

void std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::__move_assign(uint64_t a1, uint64_t *a2)
{
  std::__hash_table<std::__hash_value_type<unsigned int,unsigned int>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,unsigned int>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,unsigned int>>>::clear(a1);
  v4 = *a2;
  *a2 = 0;
  v5 = *a1;
  *a1 = v4;
  if (v5)
  {
    operator delete(v5);
  }

  v8 = a2[2];
  v7 = a2 + 2;
  v6 = v8;
  v9 = *(v7 - 1);
  *(a1 + 16) = v8;
  *(a1 + 8) = v9;
  *(v7 - 1) = 0;
  v10 = v7[1];
  *(a1 + 24) = v10;
  *(a1 + 32) = *(v7 + 4);
  if (v10)
  {
    v11 = *(v6 + 8);
    v12 = *(a1 + 8);
    if ((v12 & (v12 - 1)) != 0)
    {
      if (v11 >= v12)
      {
        v11 %= v12;
      }
    }

    else
    {
      v11 &= v12 - 1;
    }

    *(*a1 + 8 * v11) = a1 + 16;
    *v7 = 0;
    v7[1] = 0;
  }
}

void _LSSchemeApprovalUsePreferenceOrPromptWithCompletionHandler(void *a1, void *a2, void *a3, void *a4, uint64_t a5, void *a6)
{
  v10 = a1;
  v11 = a2;
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = v10;
  v16 = v11;
  v65 = v13;
  if (v16)
  {
    v17 = v16;
LABEL_3:
    v18 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-->%@", v17, v65];

    goto LABEL_7;
  }

  v19 = [v15 _xpcConnection];
  v20 = _LSCopyBundleURLForXPCConnection(v19, 0);

  if (v20)
  {
    v17 = [v20 path];

    if (v17)
    {
      goto LABEL_3;
    }
  }

  v18 = 0;
LABEL_7:

  if (v18)
  {
    v63 = CFPreferencesCopyValue(v18, @"com.apple.launchservices.schemeapproval", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    if (v63 && _NSIsNSString() && ([v63 isEqual:v12] & 1) != 0)
    {
      v14[2](v14, 1, 0);
LABEL_46:

      goto LABEL_47;
    }

    v61 = v14;
    v62 = v15;
    v21 = _LSSchemeApprovalGetBouncebackHistory();
    objc_sync_enter(v21);
    v60 = v12;
    v22 = [v21 count];
    v23 = v22 - 2;
    if (v22 >= 2)
    {
      v24 = [v21 objectAtIndexedSubscript:v22 - 1];
      v25 = [v21 objectAtIndexedSubscript:v23];
      v26 = [v24 objectAtIndexedSubscript:0];
      v27 = [v25 objectAtIndexedSubscript:1];
      if ([v26 isEqual:v27])
      {
        v28 = [v24 objectAtIndexedSubscript:1];
        v29 = [v25 objectAtIndexedSubscript:0];
        v30 = [v28 isEqual:v29];

        objc_sync_exit(v21);
        v12 = v60;
        if (v30)
        {
          v14 = v61;
          v15 = v62;
          v61[2](v61, 1, 0);
          goto LABEL_46;
        }

LABEL_19:
        v14 = v61;
        v15 = v62;
        if ((a5 & 1) == 0)
        {
          v32 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -2026, 0, "_LSSchemeApprovalUsePreferenceOrPromptWithCompletionHandler", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSSchemeApproval.mm", 287);
          (v61)[2](v61, 0, v32);

          goto LABEL_46;
        }

        v66[0] = MEMORY[0x1E69E9820];
        v66[1] = 3221225472;
        v67 = ___ZL59_LSSchemeApprovalUsePreferenceOrPromptWithCompletionHandlerP15NSXPCConnectionP8NSStringS2_S2_mU13block_pointerFvbP7NSErrorE_block_invoke;
        v68 = &unk_1E6A1D448;
        v69 = v18;
        v70 = v12;
        v71 = v61;
        v54 = v62;
        v33 = v16;
        v59 = v70;
        v53 = v65;
        v56 = v33;
        v57 = v66;
        if (!v16)
        {
          v58 = 0;
LABEL_30:
          v55 = applicationBundleNameForIdentifier(v59);
          if (v55)
          {
            if (v58)
            {
              v39 = _LSSchemeApprovalGetLocalizedString(&cfstr_WantsToOpen.isa, &cfstr_SchemeApproval.isa);
              [MEMORY[0x1E696AEC0] stringWithFormat:v39, v58, v55];
            }

            else
            {
              v39 = _LSSchemeApprovalGetLocalizedString(&cfstr_OpenIn.isa, &cfstr_SchemeApproval_0.isa);
              [MEMORY[0x1E696AEC0] stringWithFormat:v39, v55];
            }
            v43 = ;

            if (_LSSchemeApprovalDebugMode(void)::once != -1)
            {
              _LSSchemeApprovalUsePreferenceOrPromptWithCompletionHandler();
            }

            if (_LSSchemeApprovalDebugMode(void)::result)
            {
              v44 = MEMORY[0x1E696AEC0];
              v45 = [v54 description];
              v46 = v56;
              if (!v16)
              {
                v15 = [v54 _xpcConnection];
                v46 = _LSCopyBundleURLForXPCConnection(v15, 0);
              }

              v47 = [v44 stringWithFormat:@"[Internal Build Detected]\n\nSource XPC: %@\nSource: %@\nTarget: %@\nScheme: %@\nOptions: %llx", v45, v46, v59, v53, a5];
              if (!v16)
              {
              }
            }

            else
            {
              v47 = 0;
            }

            v48 = _LSSchemeApprovalGetLocalizedString(&cfstr_Open.isa, &cfstr_SchemeApproval_1.isa);
            v49 = _LSSchemeApprovalGetLocalizedString(&cfstr_Cancel.isa, &cfstr_SchemeApproval_2.isa);
            v72[0] = MEMORY[0x1E69E9820];
            v72[1] = 3221225472;
            v72[2] = ___ZL44_LSSchemeApprovalPromptWithCompletionHandlerP15NSXPCConnectionP8NSStringS2_S2_mU13block_pointerFvbP7NSErrorE_block_invoke;
            v72[3] = &unk_1E6A1DFF8;
            v40 = v43;
            v73 = v40;
            v50 = v47;
            v74 = v50;
            v51 = v48;
            v75 = v51;
            v76 = v49;
            v77 = v57;
            v78 = a5;
            v52 = v49;
            _LSAskForScreenUnlock(0, v72);

            v14 = v61;
            v15 = v62;
            v42 = v56;
            v41 = v54;
          }

          else
          {
            v40 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, 0, "_LSSchemeApprovalPromptWithCompletionHandler", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSSchemeApproval.mm", 416);
            v67(v57, 0, v40);
            v41 = v54;
            v42 = v56;
          }

          v12 = v60;
          goto LABEL_46;
        }

        v34 = [LSApplicationProxy applicationProxyForIdentifier:v33 placeholder:0];
        v35 = v34;
        if (v34)
        {
          v36 = [v34 applicationType];
          if ([v36 isEqual:@"Hidden"])
          {

LABEL_27:
            v58 = 0;
LABEL_29:

            goto LABEL_30;
          }

          v37 = [v35 appTags];
          v38 = [v37 containsObject:@"hidden"];

          if (v38)
          {
            goto LABEL_27;
          }
        }

        v58 = applicationBundleNameForIdentifier(v56);
        goto LABEL_29;
      }

      v12 = v60;
    }

    objc_sync_exit(v21);

    goto LABEL_19;
  }

  v31 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -4960, 0, "_LSSchemeApprovalUsePreferenceOrPromptWithCompletionHandler", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSSchemeApproval.mm", 291);
  (v14)[2](v14, 0, v31);

LABEL_47:
}

void ___ZL59_LSSchemeApprovalUsePreferenceOrPromptWithCompletionHandlerP15NSXPCConnectionP8NSStringS2_S2_mU13block_pointerFvbP7NSErrorE_block_invoke(uint64_t a1, int a2, void *a3)
{
  v5 = a3;
  if (a2)
  {
    CFPreferencesSetValue(*(a1 + 32), *(a1 + 40), @"com.apple.launchservices.schemeapproval", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  }

  (*(*(a1 + 48) + 16))();
}

id applicationBundleNameForIdentifier(NSString *a1)
{
  v1 = a1;
  v2 = [[LSApplicationRecord alloc] initWithBundleIdentifier:v1 allowPlaceholder:1 error:0];
  if (v2 || (v2 = [[LSApplicationRecord alloc] initWithBundleIdentifierOfSystemPlaceholder:v1 error:0]) != 0)
  {
    v3 = [(LSBundleRecord *)v2 localizedName];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

__CFString *_LSSchemeApprovalGetLocalizedString(NSString *a1, NSString *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = _LSGetBundle();
  v6 = CFBundleCopyLocalizedString(v5, v4, v4, @"SchemeApproval");
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v3;
  }

  v9 = v8;

  return v8;
}

void ___ZL44_LSSchemeApprovalPromptWithCompletionHandlerP15NSXPCConnectionP8NSStringS2_S2_mU13block_pointerFvbP7NSErrorE_block_invoke(uint64_t a1, int a2)
{
  if (a2)
  {
    MEMORY[0x1865D7C40]();
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 3221225472;
    v13[2] = ___ZL44_LSSchemeApprovalPromptWithCompletionHandlerP15NSXPCConnectionP8NSStringS2_S2_mU13block_pointerFvbP7NSErrorE_block_invoke_2;
    v13[3] = &unk_1E6A1DFD0;
    v3 = *(a1 + 32);
    v4 = *(a1 + 40);
    v5 = *(a1 + 48);
    v6 = *(a1 + 56);
    *&v7 = v5;
    *(&v7 + 1) = v6;
    *&v8 = v3;
    *(&v8 + 1) = v4;
    v14 = v8;
    v15 = v7;
    v16 = *(a1 + 64);
    v9 = MEMORY[0x1865D71B0](v13);
    v10 = *(a1 + 72);
    v11 = _LSSchemeApprovalGetPromptQueue();
    v12 = v11;
    if ((v10 & 2) != 0)
    {
      dispatch_async(v11, v9);
    }

    else
    {
      dispatch_sync(v11, v9);
    }
  }
}

uint64_t ___ZL44_LSSchemeApprovalPromptWithCompletionHandlerP15NSXPCConnectionP8NSStringS2_S2_mU13block_pointerFvbP7NSErrorE_block_invoke_2(uint64_t a1)
{
  v7 = 0;
  if (CFUserNotificationDisplayAlert(0.0, 0, 0, 0, 0, *(a1 + 32), *(a1 + 40), *(a1 + 48), *(a1 + 56), 0, &v7))
  {
    v2 = *(a1 + 64);
LABEL_4:
    v3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10826, 0, "_LSSchemeApprovalPromptWithCompletionHandler_block_invoke_2", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSSchemeApproval.mm", 399);
    v4 = 0;
    goto LABEL_5;
  }

  v2 = *(a1 + 64);
  if ((v7 & 3) != 0)
  {
    goto LABEL_4;
  }

  v3 = 0;
  v4 = 1;
LABEL_5:
  v5 = (*(v2 + 16))(v2, v4, v3);
  if ((v4 & 1) == 0)
  {
  }

  return MEMORY[0x1865D7C50](v5);
}

void sub_181787DC8(_Unwind_Exception *exception_object)
{
  if ((v2 & 1) == 0)
  {
  }

  _Unwind_Resume(exception_object);
}

id _LSSchemeApprovalGetPromptQueue(void)
{
  if (_LSSchemeApprovalGetPromptQueue(void)::once != -1)
  {
    _LSSchemeApprovalGetPromptQueue();
  }

  v1 = _LSSchemeApprovalGetPromptQueue(void)::result;

  return v1;
}

void ___ZL26_LSSchemeApprovalDebugModev_block_invoke()
{
  v0 = CFPreferencesCopyValue(@"_DebugMode", @"com.apple.launchservices.schemeapproval", *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
  v1 = v0;
  if (v0)
  {
    v3 = v0;
    v2 = objc_opt_respondsToSelector();
    v1 = v3;
    if (v2)
    {
      _LSSchemeApprovalDebugMode(void)::result = [v3 BOOLValue];
      v1 = v3;
    }
  }
}

void ___ZL31_LSSchemeApprovalGetPromptQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(MEMORY[0x1E69E96A8], DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("LS scheme approval prompt queue", v2);
  v1 = _LSSchemeApprovalGetPromptQueue(void)::result;
  _LSSchemeApprovalGetPromptQueue(void)::result = v0;
}

void ___ZL37_LSSchemeApprovalGetBouncebackHistoryv_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:3];
  v1 = _LSSchemeApprovalGetBouncebackHistory(void)::result;
  _LSSchemeApprovalGetBouncebackHistory(void)::result = v0;

  if ((atomic_load_explicit(&_ZGVZZL37_LSSchemeApprovalGetBouncebackHistoryvEUb_E14backlightToken, memory_order_acquire) & 1) == 0)
  {
    ___ZL37_LSSchemeApprovalGetBouncebackHistoryv_block_invoke_cold_1();
  }

  v2 = dispatch_get_global_queue(0, 0);
  LaunchServices::notifyd::NotifyToken::RegisterDispatch(@"com.apple.backboardd.backlight.changed", v2, &__block_literal_global_64, &v5);
  LaunchServices::notifyd::NotifyToken::operator=(_ZZZL37_LSSchemeApprovalGetBouncebackHistoryvEUb_E14backlightToken, &v5);
  LaunchServices::notifyd::NotifyToken::~NotifyToken(&v5);
  if (FrontBoardServicesLibrary(void)::frameworkLibrary || (FrontBoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2)) != 0)
  {
    v3 = [objc_alloc(getFBSDisplayLayoutMonitorClass()) initWithDisplayType:0 handler:&__block_literal_global_67];
    v4 = _ZZZL37_LSSchemeApprovalGetBouncebackHistoryvEUb_E7monitor;
    _ZZZL37_LSSchemeApprovalGetBouncebackHistoryvEUb_E7monitor = v3;
  }
}

void sub_181788034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11)
{
  LaunchServices::notifyd::NotifyToken::~NotifyToken(&a11);

  _Unwind_Resume(a1);
}

void ___ZL37_LSSchemeApprovalGetBouncebackHistoryv_block_invoke_2()
{
  State = LaunchServices::notifyd::NotifyToken::getState(_ZZZL37_LSSchemeApprovalGetBouncebackHistoryvEUb_E14backlightToken);
  if ((v1 & 1) != 0 && !State)
  {

    _LSSchemeApprovalClearBouncebackHistory();
  }
}

void _LSSchemeApprovalClearBouncebackHistory(void)
{
  obj = _LSSchemeApprovalGetBouncebackHistory();
  objc_sync_enter(obj);
  [obj removeAllObjects];
  objc_sync_exit(obj);
}

void sub_1817880F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj)
{
  objc_sync_exit(obj);

  _Unwind_Resume(a1);
}

Class initFBSDisplayLayoutMonitor(void)
{
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    FrontBoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
  }

  result = objc_getClass("FBSDisplayLayoutMonitor");
  classFBSDisplayLayoutMonitor = result;
  getFBSDisplayLayoutMonitorClass = FBSDisplayLayoutMonitorFunction;
  return result;
}

void _LSAskForScreenUnlock(void *a1, void *a2)
{
  v16[2] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  _LSAssertRunningInServer("void _LSAskForScreenUnlock(__strong dispatch_queue_t _Nullable, void (^__strong _Nonnull)(BOOL, NSError *__strong))");
  if (v3)
  {
    v5 = MEMORY[0x1865D71B0](v4);
    v12[0] = MEMORY[0x1E69E9820];
    v12[1] = 3221225472;
    v12[2] = ___LSAskForScreenUnlock_block_invoke;
    v12[3] = &unk_1E6A1E068;
    v13 = v3;
    v14 = v5;
    v6 = v5;
    v7 = MEMORY[0x1865D71B0](v12);

    v4 = v7;
  }

  if (softLinkSBSGetScreenLockStatus(0))
  {
    v8 = objc_alloc_init(_LSSpringBoardCall);
    [(_LSSpringBoardCall *)v8 setBundleIdentifier:@"com.apple.springboard"];
    v15[0] = getFBSOpenApplicationOptionKeyPromptUnlockDevice();
    v9 = MEMORY[0x1E695E118];
    v16[0] = MEMORY[0x1E695E118];
    v15[1] = getFBSOpenApplicationOptionKeyUnlockDevice();
    v16[1] = v9;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v16 forKeys:v15 count:2];
    [(_LSSpringBoardCall *)v8 setLaunchOptions:v10];

    [(_LSSpringBoardCall *)v8 setClientXPCConnection:0];
    [(_LSSpringBoardCall *)v8 setCallCompletionHandlerWhenFullyComplete:1];
    [(_LSSpringBoardCall *)v8 callWithCompletionHandler:v4];
  }

  else
  {
    (*(v4 + 2))(v4, 1, 0);
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_181788364(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

uint64_t initSBSGetScreenLockStatus(unsigned __int8 *a1)
{
  v2 = SpringBoardServicesLibrary(void)::frameworkLibrary;
  if (!SpringBoardServicesLibrary(void)::frameworkLibrary)
  {
    v2 = dlopen("/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices", 2);
    SpringBoardServicesLibrary(void)::frameworkLibrary = v2;
  }

  v3 = dlsym(v2, "SBSGetScreenLockStatus");
  softLinkSBSGetScreenLockStatus = v3;

  return v3(a1);
}

uint64_t initFBSOpenApplicationOptionKeyPromptUnlockDevice(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyPromptUnlockDevice");
  constantFBSOpenApplicationOptionKeyPromptUnlockDevice = result;
  getFBSOpenApplicationOptionKeyPromptUnlockDevice = FBSOpenApplicationOptionKeyPromptUnlockDeviceFunction;
  return result;
}

uint64_t initFBSOpenApplicationOptionKeyUnlockDevice(void)
{
  v0 = FrontBoardServicesLibrary(void)::frameworkLibrary;
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
    FrontBoardServicesLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "FBSOpenApplicationOptionKeyUnlockDevice");
  constantFBSOpenApplicationOptionKeyUnlockDevice = result;
  getFBSOpenApplicationOptionKeyUnlockDevice = FBSOpenApplicationOptionKeyUnlockDeviceFunction;
  return result;
}

id _LSServer_GetIOQueue()
{
  if (_LSServer_GetIOQueue::once != -1)
  {
    _LSServer_GetIOQueue_cold_1();
  }

  v1 = _LSServer_GetIOQueue::result;

  return v1;
}

id _LSServer_GetAsyncWorkQueue()
{
  if (_LSServer_GetAsyncWorkQueue::once != -1)
  {
    _LSServer_GetAsyncWorkQueue_cold_1();
  }

  v1 = _LSServer_GetAsyncWorkQueue::result;

  return v1;
}

uint64_t _LSServer_SetDatabaseIsSeeded(int a1)
{
  v4 = 0;
  _LSDatabaseSessionSetSeedingInProgress(a1 == 0);
  if (_LSContextInit(&v4))
  {
    v2 = 0;
  }

  else
  {
    if (v4 && [(_LSDatabase *)v4 isSeeded]!= a1)
    {
      [(_LSDatabase *)v4 setSeeded:?];
      _LSDatabaseCommit(v4);
      v2 = 1;
    }

    else
    {
      v2 = 0;
    }

    _LSContextDestroy(&v4);
  }

  return v2;
}

uint64_t _LSServer_RegisterItemInfo(void *a1, void *a2, void *a3, const __CFDictionary *a4, int *a5, uint64_t a6, _BYTE *a7, CFTypeRef *a8)
{
  v47 = *MEMORY[0x1E69E9840];
  v15 = a1;
  v16 = a2;
  v44 = 0;
  v43 = 0;
  v42 = 0;
  _LSLogStepStart(v16, 0, 0, v17);
  _LSDatabaseSentinelIncrement();
  if (v15)
  {
    if (v15[2] == 7)
    {
      goto LABEL_6;
    }

    v18 = _LSDefaultLog();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_ERROR))
    {
      _LSServer_RegisterItemInfo_cold_1(v15, v18);
    }

    if (v15[2] == 7)
    {
LABEL_6:
      v19 = _LSContextInit(&v44);
      if (v19)
      {
        v29 = 0;
      }

      else
      {
        v19 = _LSServerItemInfoRegistration(&v44, v15, v16, a3, a4, &v43, a6, &v42, a7);
        if (v19)
        {
          goto LABEL_24;
        }

        v20 = _LSServer_CopyLocalDatabase(0);
        v21 = v20 == v44;

        if (!v21)
        {
          v35 = [MEMORY[0x1E696AAA8] currentHandler];
          v36 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"OSStatus _LSServer_RegisterItemInfo(const LSRegistrationInfo *__strong, NSData *__strong, CFDictionaryRef, CFDictionaryRef, CSStoreUnitID *, CSStoreUnitID *, Boolean *, CFStringRef *)"}];
          [v35 handleFailureInFunction:v36 file:@"LSServerInterface.mm" lineNumber:112 description:@"server local database differed from context after registration?"];
        }

        _LSDatabaseCommit(v44);
        if (v15[3] != 203 || v43 == 0)
        {
          goto LABEL_24;
        }

        if (v42)
        {
          v23 = objc_autoreleasePoolPush();
          v24 = _LSBundleGetRegistrationNotification(v44, v43, v15[4], @"com.apple.LaunchServices.applicationRegistered");
          if (v24)
          {
            v25 = _LSServer_GetIOQueue();
            block = MEMORY[0x1E69E9820];
            v38 = 3221225472;
            v39 = ___LSServer_RegisterItemInfo_block_invoke;
            v40 = &unk_1E6A1A830;
            v41 = v24;
            dispatch_async(v25, &block);
          }

          objc_autoreleasePoolPop(v23);
        }

        else
        {
          v26 = _LSRegistrationLog();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 134217984;
            v46 = v43;
            _os_log_impl(&dword_18162D000, v26, OS_LOG_TYPE_DEFAULT, "Registration succeeded, but did not actually register anything new; returning existing bundle 0x%llx and not sending app-registered notification.", buf, 0xCu);
          }
        }

        if (!a8 || (v27 = _LSBundleGet(v44, v43)) == 0)
        {
LABEL_24:
          v29 = 0;
        }

        else
        {
          v28 = *(v27 + 12);
          [(_LSDatabase *)v44 store];
          v29 = _CSStringCopyCFString();
        }

        _LSContextDestroy(&v44);
        if (a8 && v29)
        {
          *a8 = CFRetain(v29);
        }

        if (a5)
        {
          *a5 = v43;
        }
      }
    }

    else
    {
      v29 = 0;
      v19 = 4294956474;
    }
  }

  else
  {
    v29 = 0;
    v19 = 4294967246;
  }

  v30 = v29;
  v31 = [MEMORY[0x1E696AD98] numberWithInt:v19];
  _LSLogStepFinished(v31, v19 == 0, v30, v32, v31, block, v38, v39, v40);

  _LSDatabaseSentinelDecrement();
  if (v30)
  {
    CFRelease(v30);
  }

  v33 = *MEMORY[0x1E69E9840];
  return v19;
}

void _LSIfCanModifyDefaultHandler(void *a1, void *a2, _DWORD *a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v14 = 0;
  LODWORD(a2) = _LSCanModifyDefaultHandler(a1, a2, v9, &v14);
  v11 = v14;
  v12 = v11;
  if (a2)
  {
    v13 = v10[2](v10);
  }

  else
  {
    v13 = _LSGetOSStatusFromNSError(v11);
  }

  *a3 = v13;
}

uint64_t _LSCanModifyDefaultHandler(void *a1, void *a2, void *a3, uint64_t a4)
{
  v24[1] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  if (v7 && ![v7 caseInsensitiveCompare:@"file"])
  {
    if (!a4)
    {
      goto LABEL_20;
    }

    v23 = *MEMORY[0x1E696A278];
    v24[0] = @"inScheme";
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
    v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v15, "_LSCanModifyDefaultHandler", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSServerInterface.mm", 195);
LABEL_19:
    *a4 = v16;

    a4 = 0;
    goto LABEL_20;
  }

  if (_LSCheckXPCConnectionEntitlementForChangingDefaultHandler(v9, v7, v8))
  {
    _LSArmSaveTimer(3);
    a4 = 1;
    goto LABEL_20;
  }

  if (v7)
  {
    v10 = _LSDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      pid = xpc_connection_get_pid(v9);
      _LSCanModifyDefaultHandler_cold_1(v7, v22, pid);
    }
  }

  if (v8)
  {
    v12 = _LSDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      v13 = xpc_connection_get_pid(v9);
      _LSCanModifyDefaultHandler_cold_2(v8, v21, v13);
    }
  }

  if (a4)
  {
    v19 = *MEMORY[0x1E696A278];
    v14 = @"com.apple.private.launchservices.changedefaulthandlers";
    if (!@"com.apple.private.launchservices.changedefaulthandlers")
    {
      v14 = @"unknown entitlement";
    }

    v20 = v14;
    v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v15, "_LSCanModifyDefaultHandler", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSServerInterface.mm", 207);
    goto LABEL_19;
  }

LABEL_20:

  v17 = *MEMORY[0x1E69E9840];
  return a4;
}

uint64_t _LSEffectivePreferenceRolesMaskForMask(uint64_t a1)
{
  v1 = a1;
  v9 = *MEMORY[0x1E69E9840];
  if (a1 != -1 && (~a1 & 0xE) == 0)
  {
    v2 = _LSDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v5 = 134218240;
      v6 = v1;
      v7 = 2048;
      v8 = 0xFFFFFFFFLL;
      _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "Upgrading requested roles mask for preference write from %lx to %lx", &v5, 0x16u);
    }

    v1 = 0xFFFFFFFFLL;
  }

  v3 = *MEMORY[0x1E69E9840];
  return v1;
}

uint64_t _LSServer_SetContentTypeHandler(LSContext *a1, uint64_t a2, const __CFString *a3, __int128 *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  v16 = 0;
  v15 = 0;
  v7 = _LSEffectivePreferenceRolesMaskForMask(a2);
  v9 = _LSContextInit(&v16);
  if (!v9)
  {
    if (!a1)
    {
      goto LABEL_9;
    }

    if (!LSHandlerPref::ValidateHandler(v16, @"com.apple.uniform-type-identifier", a1, a3, v8))
    {
      v9 = 4294967242;
      goto LABEL_7;
    }

    v10 = LSHandlerPref::CreateTagForContentType(v16, a1, &v15);
    if (!v10)
    {
      v9 = 4294967246;
      goto LABEL_7;
    }

    StringForCFString = _LSDatabaseCreateStringForCFString(v16, a3, 0);
    if (StringForCFString)
    {
      v12 = a4[1];
      v17[0] = *a4;
      v17[1] = v12;
      LSHandlerPref::SetRoleHandlerForTag(v16, v10, v15, v7, StringForCFString, v17);
      _LSDatabaseCommit(v16);
      v9 = 0;
    }

    else
    {
LABEL_9:
      v9 = 4294956479;
    }

LABEL_7:
    [(_LSDatabase *)v16 store];
    _CSStringRelease();
    [(_LSDatabase *)v16 store];
    _CSStringRelease();
    _LSContextDestroy(&v16);
  }

  v13 = *MEMORY[0x1E69E9840];
  return v9;
}

uint64_t _LSServer_RemoveContentTypeHandler(const __CFString *a1, uint64_t a2)
{
  v8 = 0;
  v7 = 0;
  v3 = _LSEffectivePreferenceRolesMaskForMask(a2);
  v4 = _LSContextInit(&v8);
  if (!v4)
  {
    if (a1)
    {
      TagForContentType = LSHandlerPref::GetTagForContentType(v8, a1, &v7);
      if (TagForContentType)
      {
        LSHandlerPref::RemoveRoleHandlerForTag(v8, TagForContentType, v7, v3);
        _LSDatabaseCommit(v8);
        v4 = 0;
      }

      else
      {
        v4 = 4294967246;
      }
    }

    else
    {
      v4 = 4294956479;
    }

    _LSContextDestroy(&v8);
  }

  return v4;
}

uint64_t _LSServer_SetSchemeHandler(__CFString *a1, const __CFString *a2, __int128 *a3)
{
  v15 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v7 = _LSContextInit(&v13);
  if (!v7)
  {
    if (LSHandlerPref::ValidateHandler(v13, @"public.url-scheme", a1, a2, v6))
    {
      StringForCFString = _LSDatabaseCreateStringForCFString(v13, a1, 1);
      if (StringForCFString && (v9 = _LSDatabaseCreateStringForCFString(v13, a2, 0)) != 0)
      {
        v10 = a3[1];
        v14[0] = *a3;
        v14[1] = v10;
        LSHandlerPref::SetRoleHandlerForTag(v13, StringForCFString, 5, 0xFFFFFFFF, v9, v14);
        _LSDatabaseCommit(v13);
        v7 = 0;
      }

      else
      {
        v7 = 4294956479;
      }
    }

    else
    {
      v7 = 4294967242;
    }

    [(_LSDatabase *)v13 store];
    _CSStringRelease();
    [(_LSDatabase *)v13 store];
    _CSStringRelease();
    _LSContextDestroy(&v13);
  }

  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t _LSServer_RemoveSchemeHandler(const __CFString *a1)
{
  v5 = 0;
  v2 = _LSContextInit(&v5);
  if (!v2)
  {
    StringForCFString = _LSDatabaseGetStringForCFString(v5, a1, 1);
    if (StringForCFString)
    {
      LSHandlerPref::RemoveHandlersForTag(v5, StringForCFString, 5);
      _LSDatabaseCommit(v5);
      v2 = 0;
    }

    else
    {
      v2 = 4294956479;
    }

    _LSContextDestroy(&v5);
  }

  return v2;
}

BOOL _LSServer_RemoveAllHandlers(void *a1)
{
  v14 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(&v11, v2, 0);

  if (v3)
  {
    LSHandlerPref::RemoveAll(*v3, v4);
    _LSDatabaseCommit(*v3);
    _LSArmSaveTimer(3);
  }

  else if (a1)
  {
    v5 = +[_LSDServiceDomain defaultServiceDomain];
    v6 = LaunchServices::Database::Context::_get(&v11, v5, 0);

    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v14;
    }

    *a1 = v7;
  }

  if (v11 && v13 == 1)
  {
    _LSContextDestroy(v11);
  }

  v8 = v12;
  v11 = 0;
  v12 = 0;

  v13 = 0;
  v9 = v14;
  v14 = 0;

  return v3 != 0;
}

void _LSLogStep(uint64_t a1, uint64_t a2, void *a3, void *a4, uint64_t a5)
{
  v11 = a3;
  v9 = a4;
  if (v9)
  {
    v10 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:v9 arguments:a5];
  }

  else
  {
    v10 = 0;
  }

  [getAITransactionLogClass() logStep:4 byParty:5 phase:a1 success:a2 forBundleID:v11 description:v10];
}

BOOL LaunchServices::LSDefaultAppsExtraStateManager::validatePlist(LaunchServices::LSDefaultAppsExtraStateManager *this, objc_object *a2)
{
  v2 = this;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [(LaunchServices::LSDefaultAppsExtraStateManager *)v2 objectForKey:@"PreviouslySetCategories"];
    v5 = 1;
    if (v3)
    {
      v4 = objc_opt_class();
      if (!_LSIsArrayWithValuesOfClass(v3, v4))
      {
        v5 = 0;
      }
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

id LaunchServices::LSDefaultAppsExtraStateManager::plistFromState(void *a1)
{
  v8[1] = *MEMORY[0x1E69E9840];
  v7 = @"PreviouslySetCategories";
  if (a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = [MEMORY[0x1E695DFD8] set];
  }

  v3 = [v2 allObjects];
  v8[0] = v3;
  v4 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v8 forKeys:&v7 count:1];

  if (!a1)
  {
  }

  v5 = *MEMORY[0x1E69E9840];

  return v4;
}

uint64_t LaunchServices::LSDefaultAppsExtraStateManager::stateFromValidatedPlist(LaunchServices::LSDefaultAppsExtraStateManager *this, objc_object *a2)
{
  v2 = this;
  v3 = [(LaunchServices::LSDefaultAppsExtraStateManager *)v2 objectForKey:@"PreviouslySetCategories"];
  v4 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:v3];
  v5 = [v4 copy];

  return v5;
}

void sub_181789B08(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void LaunchServices::LSDefaultAppsExtraStateManager::read(uint64_t a1@<X0>, void *a2@<X1>, _BYTE *a3@<X8>)
{
  *a3 = 0;
  a3[8] = 0;
  v4 = LaunchServices::LSStatePlist::read(a1, a2);
  if (v4)
  {
    v6 = v4;
    *a3 = LaunchServices::LSDefaultAppsExtraStateManager::stateFromValidatedPlist(v4, v5);
    a3[8] = 1;
    v4 = v6;
  }
}

id LaunchServices::LSDefaultAppsExtraStateManager::modify(uint64_t a1, uint64_t a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1EEF64090;
  v5[1] = a2;
  v5[3] = v5;
  v2 = LaunchServices::LSStatePlist::modify(a1, v5);
  std::__function::__value_func<objc_object * ()(objc_object *,NSError *)>::~__value_func[abi:nn200100](v5);
  v3 = *MEMORY[0x1E69E9840];

  return v2;
}

void sub_181789C4C(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<objc_object * ()(objc_object *,NSError *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t LaunchServices::_LSServer_DefaultAppsExtraStateManager(LaunchServices *this)
{
  if (LaunchServices::_LSServer_DefaultAppsExtraStateManager(void)::onceToken != -1)
  {
    LaunchServices::_LSServer_DefaultAppsExtraStateManager();
  }

  return LaunchServices::_LSServer_DefaultAppsExtraStateManager(void)::result;
}

LaunchServices::LSDefaultAppsExtraStateManager *LaunchServices::LSDefaultAppsExtraStateManager::LSDefaultAppsExtraStateManager(LaunchServices::LSDefaultAppsExtraStateManager *this, NSURL *a2)
{
  v5[4] = *MEMORY[0x1E69E9840];
  v5[0] = &unk_1EEF61C50;
  v5[1] = LaunchServices::LSDefaultAppsExtraStateManager::validatePlist;
  v5[3] = v5;
  LaunchServices::LSStatePlist::LSStatePlist(this, a2, v5);
  std::__function::__value_func<BOOL ()(objc_object *)>::~__value_func[abi:nn200100](v5);
  v3 = *MEMORY[0x1E69E9840];
  return this;
}

void sub_181789DE0(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__function::__value_func<BOOL ()(objc_object *)>::~__value_func[abi:nn200100](va);
  _Unwind_Resume(a1);
}

uint64_t std::__function::__func<LaunchServices::LSDefaultAppsExtraStateManager::modify(std::function<LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)> const&)::$_0,std::allocator<LaunchServices::LSDefaultAppsExtraStateManager::modify(std::function<LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)> const&)::$_0>,objc_object * ()(objc_object *,NSError *)>::__clone(uint64_t result, void *a2)
{
  v2 = *(result + 8);
  *a2 = &unk_1EEF64090;
  a2[1] = v2;
  return result;
}

id std::__function::__func<LaunchServices::LSDefaultAppsExtraStateManager::modify(std::function<LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)> const&)::$_0,std::allocator<LaunchServices::LSDefaultAppsExtraStateManager::modify(std::function<LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)> const&)::$_0>,objc_object * ()(objc_object *,NSError *)>::operator()(uint64_t a1, id *a2, void **a3)
{
  v4 = *a3;
  v5 = *a2;
  v7 = v4;
  if (v5)
  {
    v8 = LaunchServices::LSDefaultAppsExtraStateManager::stateFromValidatedPlist(v5, v6);
    v9 = *(a1 + 8);
    v10 = v8;
    v15 = v10;
    v16 = 1;
  }

  else
  {
    v10 = 0;
    v9 = *(a1 + 8);
    LOBYTE(v15) = 0;
    v16 = 0;
  }

  v11 = std::function<LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)>::operator()(v9, &v15, v7);
  if (v16 == 1)
  {
  }

  v12 = v11;
  v13 = LaunchServices::LSDefaultAppsExtraStateManager::plistFromState(v11);

  if (v5)
  {
  }

  return v13;
}

uint64_t std::function<LaunchServices::LSDefaultAppsExtraState ()(std::optional<LaunchServices::LSDefaultAppsExtraState>,NSError *)>::operator()(uint64_t a1, uint64_t a2, void *a3)
{
  v9 = a3;
  v5 = *(a1 + 24);
  if (!v5)
  {
    v8 = std::__throw_bad_function_call[abi:nn200100]();

    _Unwind_Resume(v8);
  }

  v6 = (*(*v5 + 48))(v5, a2, &v9);

  return v6;
}

void _LSServerCleanEphemeralMobileContainersForFirstBoot(uint64_t *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = _LSDefaultLog();
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v2, OS_LOG_TYPE_DEFAULT, "Cleaning ephemeral mobile containers", buf, 2u);
  }

  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [(_LSDatabase *)*a1 store];
  v4 = *([(_LSDatabase *)*a1 schema]+ 1580);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = ___LSServerCleanEphemeralMobileContainersForFirstBoot_block_invoke;
  v19 = &unk_1E6A1E090;
  v21 = a1;
  v5 = v3;
  v20 = v5;
  _CSStoreEnumerateUnits();
  if ([v5 count])
  {
    _LSDatabaseSentinelIncrement();
    v14 = 0u;
    v15 = 0u;
    v12 = 0u;
    v13 = 0u;
    v6 = v5;
    v7 = [v6 countByEnumeratingWithState:&v12 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v13;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v13 != v9)
          {
            objc_enumerationMutation(v6);
          }

          _LSContainerRemove(a1, [*(*(&v12 + 1) + 8 * i) unsignedIntegerValue]);
        }

        v8 = [v6 countByEnumeratingWithState:&v12 objects:v23 count:16];
      }

      while (v8);
    }

    _LSArmSaveTimer(1);
    _LSDatabaseSentinelDecrement();
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t _LSServerMain(int a1, uint64_t a2)
{
  v112 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  [MEMORY[0x1E696ABC0] _setFileNameLocalizationEnabled:0];
  if (setiopolicy_np(9, 0, 1) < 0)
  {
    v4 = *__error();
    v5 = _LSDefaultLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      _LSServerMain_cold_1();
    }
  }

  [__LSDefaultsGetSharedInstance() setServer:1];
  if (a1 < 2)
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    v7 = a1 - 1;
    v8 = (a2 + 8);
    do
    {
      v9 = *v8++;
      v6 |= strcasecmp(v9, "systemSessionDaemon") == 0;
      --v7;
    }

    while (v7);
  }

  [__LSDefaultsGetSharedInstance() setLightweightSystemServer:v6 & 1];
  v10 = _LSDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136446722;
    *&buf[4] = getprogname();
    *&buf[12] = 2048;
    *&buf[14] = [__LSDefaultsGetSharedInstance() currentSchemaVersion];
    *&buf[22] = 2048;
    v106 = _CFGetEUID();
    _os_log_impl(&dword_18162D000, v10, OS_LOG_TYPE_DEFAULT, "%{public}s starting with schema version %llu for effective user %llu", buf, 0x20u);
  }

  if (listenForSigterm_onceToken != -1)
  {
    _LSServerMain_cold_2();
  }

  if (!_LSServerHasDoneFirstBootWork())
  {
    v11 = _LSDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "migrating old preference files on first start after reboot...", buf, 2u);
    }

    v12 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/private/var/mobile/Library/Preferences/com.apple.MobileCoreServices/com.apple.launchservices.secure.plist" isDirectory:0];
    v13 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/private/var/mobile/Library/Preferences/com.apple.MobileCoreServices/com.apple.LaunchServices.plist" isDirectory:0];
    v14 = [MEMORY[0x1E696AC08] defaultManager];
    v15 = [v12 path];
    v16 = [v14 fileExistsAtPath:v15];

    if (v16)
    {
      v17 = [__LSDefaultsGetSharedInstance() securePreferencesFileURL];
      moveItemAtURLToURL(v12, v17);
    }

    v18 = [MEMORY[0x1E696AC08] defaultManager];
    v19 = [v13 path];
    v20 = [v18 fileExistsAtPath:v19];

    if (v20)
    {
      v21 = [__LSDefaultsGetSharedInstance() preferencesFileURL];
      moveItemAtURLToURL(v13, v21);
    }

    if (([__LSDefaultsGetSharedInstance() isInEducationMode] & 1) == 0)
    {
      v22 = [MEMORY[0x1E696AC08] defaultManager];
      v23 = [__LSDefaultsGetSharedInstance() preSydroFSecurePreferencesFileURL];
      v24 = [v23 path];
      v25 = [v22 fileExistsAtPath:v24];

      if (v25)
      {
        v26 = [__LSDefaultsGetSharedInstance() preSydroFSecurePreferencesFileURL];
        v27 = [__LSDefaultsGetSharedInstance() securePreferencesFileURL];
        moveItemAtURLToURL(v26, v27);

        v28 = [__LSDefaultsGetSharedInstance() securePreferencesFileURL];
        *&v108 = *MEMORY[0x1E695DAF0];
        *buf = *MEMORY[0x1E695DAF8];
        v29 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v108 count:1];
        *v102 = 0;
        v30 = [v28 setResourceValues:v29 error:v102];
        v31 = *v102;

        if ((v30 & 1) == 0)
        {
          v32 = _LSDefaultLog();
          if (os_log_type_enabled(v32, OS_LOG_TYPE_FAULT))
          {
            _LSServerMain_cold_3();
          }
        }
      }
    }

    v33 = [MEMORY[0x1E696AC08] defaultManager];
    v34 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/private/var/db/lsd/com.apple.lsdschemes.plist" isDirectory:0];
    [v33 removeItemAtURL:v34 error:0];

    v35 = _LSDefaultLog();
    if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
    {
      *v101 = 0;
      _os_log_impl(&dword_18162D000, v35, OS_LOG_TYPE_DEFAULT, "Done migrating old preference files.", v101, 2u);
    }
  }

  v36 = objc_autoreleasePoolPush();
  v37 = [__LSDefaultsGetSharedInstance() systemContainerURL];
  v38 = [v37 path];

  v39 = [MEMORY[0x1E696AC08] defaultManager];
  v40 = [v39 fileExistsAtPath:v38];

  if ((v40 & 1) == 0)
  {
    v41 = [MEMORY[0x1E696AC08] defaultManager];
    *&v108 = *MEMORY[0x1E696A370];
    *buf = &unk_1EEF8F098;
    v42 = [MEMORY[0x1E695DF20] dictionaryWithObjects:buf forKeys:&v108 count:1];
    [v41 createDirectoryAtPath:v38 withIntermediateDirectories:1 attributes:v42 error:0];
  }

  objc_autoreleasePoolPop(v36);
  v97 = [MEMORY[0x1E696AC08] defaultManager];
  v43 = [__LSDefaultsGetSharedInstance() databaseContainerDirectoryURL];
  v44 = [MEMORY[0x1E695DEC8] array];
  *v101 = 0;
  v96 = [v97 contentsOfDirectoryAtURL:v43 includingPropertiesForKeys:v44 options:0 error:v101];
  v99 = *v101;

  if (v99)
  {
    v45 = _LSDefaultLog();
    v46 = v45;
    if (os_log_type_enabled(v45, OS_LOG_TYPE_ERROR))
    {
      _LSServerMain_cold_4();
      v46 = v45;
    }

    goto LABEL_56;
  }

  v47 = getenv("LS_NAME_PREFIX");
  v48 = "com.apple.LaunchServices";
  if (v47)
  {
    v48 = v47;
  }

  v98 = v48;
  v49 = MEMORY[0x1E695DFD8];
  v50 = [__LSDefaultsGetSharedInstance() databaseStoreFileURL];
  v51 = [v50 lastPathComponent];
  v52 = [__LSDefaultsGetSharedInstance() systemContentDatabaseStoreFileURL];
  v53 = [v52 lastPathComponent];
  v99 = [v49 setWithObjects:{v51, v53, 0}];

  v110 = 0u;
  v111 = 0u;
  v108 = 0u;
  v109 = 0u;
  v46 = v96;
  v54 = [v46 countByEnumeratingWithState:&v108 objects:buf count:16];
  if (v54)
  {
    v55 = *v109;
    do
    {
      for (i = 0; i != v54; ++i)
      {
        if (*v109 != v55)
        {
          objc_enumerationMutation(v46);
        }

        v57 = *(*(&v108 + 1) + 8 * i);
        v58 = [v57 pathExtension];
        if (![v58 isEqualToString:@"csstore"])
        {
          goto LABEL_53;
        }

        v59 = [v57 lastPathComponent];
        v60 = [v99 containsObject:v59];

        if (v60)
        {
          continue;
        }

        v58 = [MEMORY[0x1E696AEC0] stringWithFormat:@"SystemDataOnly-%s-", v98];
        v61 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s-", v98];
        v62 = [v57 lastPathComponent];
        if ([v62 hasPrefix:v58])
        {

LABEL_48:
          v100 = 0;
          [v97 removeItemAtURL:v57 error:&v100];
          v65 = v100;
          if (v65)
          {
            v66 = v65;
            v67 = _LSDefaultLog();
            if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
            {
              v68 = [v57 path];
              *v102 = 138412546;
              *&v102[4] = v68;
              v103 = 2112;
              v104 = v66;
              _os_log_error_impl(&dword_18162D000, v67, OS_LOG_TYPE_ERROR, "Error removing stale db file at path: %@ %@", v102, 0x16u);
            }
          }

          goto LABEL_52;
        }

        v63 = [v57 lastPathComponent];
        v64 = [v63 hasPrefix:v61];

        if (v64)
        {
          goto LABEL_48;
        }

LABEL_52:

LABEL_53:
      }

      v54 = [v46 countByEnumeratingWithState:&v108 objects:buf count:16];
    }

    while (v54);
  }

LABEL_56:

  v69 = objc_autoreleasePoolPush();
  v70 = [__LSDefaultsGetSharedInstance() systemContainerURL];
  setBackupAttributesForURL(v70);

  if (([__LSDefaultsGetSharedInstance() isLightweightSystemServer] & 1) == 0)
  {
    v71 = [__LSDefaultsGetSharedInstance() userContainerURL];
    setBackupAttributesForURL(v71);
  }

  objc_autoreleasePoolPop(v69);
  v72 = objc_autoreleasePoolPush();
  *&v108 = 0;
  *(&v108 + 1) = &v108;
  *&v109 = 0x2020000000;
  BYTE8(v109) = 0;
  SyncInterrupted = _LSDatabaseGetSyncInterrupted();
  _LSDatabaseClearSyncInterrupted();
  if (SyncInterrupted)
  {
    v74 = _LSDefaultLog();
    if (os_log_type_enabled(v74, OS_LOG_TYPE_ERROR))
    {
      _LSServerMain_cold_5();
    }

    v75 = [__LSDefaultsGetSharedInstance() dbRecoveryFileURL];
    _LSDatabaseDeleteRecoveryFile(v75);
  }

  v76 = +[LSDBExecutionContext sharedServerInstance];
  _LSServer_SetDatabaseExecutionContext(v76);

  v77 = _LSServer_DatabaseExecutionContext();
  *buf = MEMORY[0x1E69E9820];
  *&buf[8] = 3221225472;
  *&buf[16] = __seedDatabase_block_invoke;
  v106 = &unk_1E6A19988;
  v107 = &v108;
  [(LSDBExecutionContext *)v77 beginServerDBBootstrap:buf];

  if ((*(*(&v108 + 1) + 24) & 1) == 0 && (SyncInterrupted || _LSDatabaseSentinelGet()))
  {
    v78 = _LSServer_GetIOQueue();
    dispatch_async(v78, &__block_literal_global_38_0);
  }

  _Block_object_dispose(&v108, 8);
  objc_autoreleasePoolPop(v72);
  if (!_LSServerHasDoneFirstBootWork())
  {
    v79 = _LSDefaultLog();
    if (os_log_type_enabled(v79, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v79, OS_LOG_TYPE_DEFAULT, "Reboot detected, performing first boot work.", buf, 2u);
    }

    v80 = _LSServer_DatabaseExecutionContext();
    [(LSDBExecutionContext *)v80 syncWrite:?];

    v81 = _LSDefaultLog();
    if (os_log_type_enabled(v81, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v81, OS_LOG_TYPE_DEFAULT, "Cleaning ephemeral mobile containers", buf, 2u);
    }

    LSNoteFirstBootForRestrictions();
    v82 = _LSDefaultLog();
    if (os_log_type_enabled(v82, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_18162D000, v82, OS_LOG_TYPE_DEFAULT, "First boot work complete!", buf, 2u);
    }

    v83 = sem_open("com.apple.lsd.firstboot", 512, 256, 0);
    if (v83 == -1)
    {
      v84 = _LSDefaultLog();
      if (os_log_type_enabled(v84, OS_LOG_TYPE_ERROR))
      {
        _LSServerMain_cold_6();
      }
    }

    else
    {
      sem_close(v83);
    }
  }

  if (_os_feature_enabled_impl())
  {
    v85 = _LSServer_DatabaseExecutionContext();
    [(LSDBExecutionContext *)v85 syncWrite:?];
  }

  v86 = _LSServer_DatabaseExecutionContext();
  [(LSDBExecutionContext *)v86 syncWrite:?];

  v87 = objc_autoreleasePoolPush();
  _LSDServiceStartAllServices();
  v88 = +[LSDatabaseBlockingFetchServer sharedInstance];
  [v88 startRunningIfNecessary];

  if (([__LSDefaultsGetSharedInstance() isLightweightSystemServer] & 1) == 0)
  {
    +[_LSInstallProgressService beginListening];
    v89 = +[_LSPersonaDatabase sharedInstance];
    if (ExtensionFoundationLibrary_frameworkLibrary || (ExtensionFoundationLibrary_frameworkLibrary = dlopen("/System/Library/Frameworks/ExtensionFoundation.framework/ExtensionFoundation", 2)) != 0)
    {
      softLink_EXStartService[0]();
    }

    _LSServer_BeginProvidingVisualizationArchives();
  }

  objc_autoreleasePoolPop(v87);
  DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
  CFNotificationCenterAddObserver(DarwinNotifyCenter, 0, languagePrefChanged, @"AppleLanguagePreferencesChangedNotification", 0, CFNotificationSuspensionBehaviorDeliverImmediately);
  _LSAppsAnalyticsStartListening();
  objc_autoreleasePoolPop(context);
  if ([__LSDefaultsGetSharedInstance() isLightweightSystemServer])
  {
    v91 = runLightweightServerMainRunLoop;
  }

  else
  {
    v91 = runServerMainRunLoop;
  }

  v92 = std::__function::__func<BOOL (*)(objc_object *),std::allocator<BOOL (*)(objc_object *)>,BOOL ()(objc_object *)>::~__func(v91);
  (v91)(v92);
  v93 = *MEMORY[0x1E69E9840];
  return 0;
}

void __listenForSigterm_block_invoke()
{
  listenForSigterm_sigtermSet = 0x4000;
  if (sigprocmask(1, &listenForSigterm_sigtermSet, 0))
  {
    v0 = _LSDefaultLog();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      __listenForSigterm_block_invoke_cold_1();
    }
  }

  v1 = dispatch_queue_create("com.apple.lsd.sigact", 0);
  v2 = listenForSigterm_handlerQueue;
  listenForSigterm_handlerQueue = v1;

  v3 = dispatch_source_create(MEMORY[0x1E69E9700], 0xFuLL, 0, listenForSigterm_handlerQueue);
  v4 = listenForSigterm_sigtermSource;
  listenForSigterm_sigtermSource = v3;

  dispatch_source_set_event_handler(listenForSigterm_sigtermSource, &__block_literal_global_9);
  dispatch_resume(listenForSigterm_sigtermSource);
}

void __listenForSigterm_block_invoke_7()
{
  v0 = _LSDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v0, OS_LOG_TYPE_DEFAULT, "Received SIGTERM.", buf, 2u);
  }

  _LSServer_NoteTerminationRequestForMISync();
  v6 = 0;
  if (sigpending(&v6))
  {
    v1 = _LSDefaultLog();
    if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
    {
      __listenForSigterm_block_invoke_7_cold_1();
    }
  }

  if (sigprocmask(2, &listenForSigterm_sigtermSet, 0))
  {
    v2 = _LSDefaultLog();
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      __listenForSigterm_block_invoke_7_cold_2();
    }
  }

  if ((v6 & 0x4000) == 0)
  {
    v3 = _LSDefaultLog();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_18162D000, v3, OS_LOG_TYPE_DEFAULT, "SIGTERM was consumed. Taking it upon ourselves to deliver it.", v5, 2u);
    }

    v4 = getpid();
    kill(v4, 15);
  }

  dispatch_source_cancel(listenForSigterm_sigtermSource);
}

BOOL _LSServerHasDoneFirstBootWork()
{
  v0 = sem_open("com.apple.lsd.firstboot", 0);
  v1 = v0;
  if (v0 != -1)
  {
    sem_close(v0);
  }

  return v1 != -1;
}

void moveItemAtURLToURL(void *a1, void *a2)
{
  v29 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = v4;
  if (!v3 || !v4)
  {
    v14 = _LSDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      v26 = v3;
      v27 = 2112;
      v28 = v5;
      v15 = "LaunchServices: failed trying to migrate file %@ to %@";
      v16 = v14;
      v17 = 22;
LABEL_10:
      _os_log_impl(&dword_18162D000, v16, OS_LOG_TYPE_DEFAULT, v15, buf, v17);
    }

LABEL_11:
    v18 = 0;
LABEL_12:

    goto LABEL_13;
  }

  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v3 path];
  v8 = [v6 fileExistsAtPath:v7];

  if (!v8)
  {
    v14 = _LSDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v3;
      v15 = "LaunchServices: No file to migrate at URL %@";
      v16 = v14;
      v17 = 12;
      goto LABEL_10;
    }

    goto LABEL_11;
  }

  v9 = [MEMORY[0x1E696AC08] defaultManager];
  v10 = [v5 path];
  v11 = [v9 fileExistsAtPath:v10];

  if (v11)
  {
    v12 = 0;
    v13 = 1;
  }

  else
  {
    v20 = [MEMORY[0x1E696AC08] defaultManager];
    v24 = 0;
    v13 = [v20 copyItemAtURL:v3 toURL:v5 error:&v24];
    v12 = v24;
  }

  v21 = [MEMORY[0x1E696AC08] defaultManager];
  v23 = v12;
  v22 = [v21 removeItemAtURL:v3 error:&v23];
  v18 = v23;

  if ((!v22 || (v13 & 1) == 0) && [v18 code] != 4)
  {
    v14 = _LSDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v26 = v18;
      _os_log_impl(&dword_18162D000, v14, OS_LOG_TYPE_DEFAULT, "LaunchServices: Migration move item step failed with error: %@", buf, 0xCu);
    }

    goto LABEL_12;
  }

LABEL_13:

  v19 = *MEMORY[0x1E69E9840];
}

void setBackupAttributesForURL(void *a1)
{
  v17 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = *MEMORY[0x1E695DB80];
    v10 = 0;
    v4 = [v1 setResourceValue:MEMORY[0x1E695E118] forKey:v3 error:&v10];
    v5 = v10;
    if ((v4 & 1) == 0)
    {
      v6 = _LSDefaultLog();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
      {
        v7 = [v5 domain];
        v8 = [v5 code];
        *buf = 138478339;
        v12 = v2;
        v13 = 2114;
        v14 = v7;
        v15 = 2048;
        v16 = v8;
        _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "Error excluding %{private}@ from backup: %{public}@ %lli", buf, 0x20u);
      }
    }
  }

  v9 = *MEMORY[0x1E69E9840];
}

void __seedDatabase_block_invoke(uint64_t a1)
{
  v2 = [LSDatabaseBuilder alloc];
  v3 = _LSServer_GetIOQueue();
  v7 = [(LSDatabaseBuilder *)v2 initWithIOQueue:v3];

  [(LSDatabaseBuilder *)v7 createAndSeedLocalDatabase:*(*(a1 + 32) + 8) + 24];
  v4 = *(*(a1 + 32) + 8);
  v6 = *(v4 + 24);
  v5 = v4 + 24;
  if ((v6 & 1) == 0)
  {
    [(LSDatabaseBuilder *)v7 seedCryptexContentIfNeeded:v5];
  }
}

void __performFirstBootWorkIfNecessary_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v9 = 0;
  v10 = 0;
  inited = _LSContextInitReturningError(&v10, &v9);
  v7 = v9;
  if (inited)
  {
    _LSServerCleanEphemeralMobileContainersForFirstBoot(&v10);
    _LSServer_LSDatabaseRemoveNonexistentCryptexBundlesForReboot(&v10);
  }

  else
  {
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      __performFirstBootWorkIfNecessary_block_invoke_cold_1();
    }
  }
}

void __migrateDefaultAppsToNewWorld_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  v10 = 0;
  v11 = 0;
  inited = _LSContextInitReturningError(&v11, &v10);
  v7 = v10;
  if (inited)
  {
    v8 = _LSServer_LSMigratePreferencesForDefaultApps(&v11);
  }

  else
  {
    v9 = _LSDefaultLog();
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      __migrateDefaultAppsToNewWorld_block_invoke_cold_1();
    }
  }
}

uint64_t (*init_EXStartService())()
{
  v0 = ExtensionFoundationLibrary_frameworkLibrary;
  if (!ExtensionFoundationLibrary_frameworkLibrary)
  {
    v0 = dlopen("/System/Library/Frameworks/ExtensionFoundation.framework/ExtensionFoundation", 2);
    ExtensionFoundationLibrary_frameworkLibrary = v0;
  }

  result = dlsym(v0, "_EXStartService");
  softLink_EXStartService[0] = result;
  if (result)
  {

    return result();
  }

  return result;
}

void languagePrefChanged()
{
  MEMORY[0x1865D7C40]();
  v0 = _LSDatabaseGetSeedingGroup();
  dispatch_group_wait(v0, 0xFFFFFFFFFFFFFFFFLL);

  v1 = _LSDatabaseGetInstallingGroup();
  dispatch_group_wait(v1, 0xFFFFFFFFFFFFFFFFLL);

  v2 = _LSDatabaseGetMobileInstallSyncupGroup();
  dispatch_group_wait(v2, 0xFFFFFFFFFFFFFFFFLL);

  v3 = _LSServer_DatabaseExecutionContext();
  [(LSDBExecutionContext *)v3 syncWrite:?];
}

void __languagePrefChanged_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = a3;
  _LSSaveImmediately(1);
  MEMORY[0x1865D7C50]();
  v6 = _LSDefaultLog();
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v7 = 0;
    _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "LaunchServices: received languagePrefChanged notification, exiting.", v7, 2u);
  }

  exit(0);
}

void sub_18178BD40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  objc_sync_exit(v10);

  _Unwind_Resume(a1);
}

Class initFBSOpenApplicationOptions(void)
{
  if (!FrontBoardServicesLibrary(void)::frameworkLibrary)
  {
    FrontBoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/FrontBoardServices.framework/FrontBoardServices", 2);
  }

  result = objc_getClass("FBSOpenApplicationOptions");
  classFBSOpenApplicationOptions = result;
  getFBSOpenApplicationOptionsClass = FBSOpenApplicationOptionsFunction;
  return result;
}

void sub_18178F8FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id a31)
{
  _Block_object_dispose(&a26, 8);

  _Unwind_Resume(a1);
}

void _LSStringLocalizerPrewarmAllLocalizations(_LSStringLocalizer *a1)
{
  v1 = a1;
  stringsContent = v1->_stringsContent;
  p_isa = &v1->super.isa;
  v3 = [(_LSStringLocalizer *)v1 bundleProvider];
  v4 = LSBundleProvider::bundleRef([v3 provider], 1, 0);
  [(_LSStringsFileContent *)stringsContent prewarmAllLocalizationsWithBundle:v4 forLocalizations:p_isa[3]];
}

id UTTypeDescriptionKeys(void)
{
  v3[1] = *MEMORY[0x1E69E9840];
  v3[0] = @"UTTypeDescription";
  v0 = [MEMORY[0x1E695DEC8] arrayWithObjects:v3 count:1];
  v1 = *MEMORY[0x1E69E9840];

  return v0;
}

void sub_181790448(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, id a33)
{
  _Block_object_dispose(&a28, 8);

  _Unwind_Resume(a1);
}

void sub_181791E7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Unwind_Resume(a1);
}

void sub_18179201C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void sub_18179244C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  v32 = v30;

  _Block_object_dispose(&a23, 8);
  _Unwind_Resume(a1);
}

void sub_181792A2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, char a18)
{
  if (a18 == 1)
  {
  }

  _Unwind_Resume(a1);
}

void ___ZL18_LSSetCrashMessageP8NSString_block_invoke_1(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = v1;
  if (v1)
  {
    v3 = strdup([v1 UTF8String]);
    v4 = _LSDefaultLog();
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
    {
      ___ZL18_LSSetCrashMessageP8NSString_block_invoke_cold_1(v3, v4);
    }
  }

  else
  {
    v3 = 0;
  }

  v5 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
  v6 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
  atomic_compare_exchange_strong_explicit(&_LSSetCrashReporterMessage(NSString *)::messagePtr, &v6, v3, memory_order_relaxed, memory_order_relaxed);
  if (v6 == v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  free(v7);
  qword_1ED444C70 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
}

void ___ZL15_LSLoggingQueuev_block_invoke_1()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.launchservices.logging", v2);
  v1 = _LSLoggingQueue(void)::logQueue;
  _LSLoggingQueue(void)::logQueue = v0;
}

void ___ZL20_LSClearCrashMessagev_block_invoke()
{
  v0 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
  v1 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
  atomic_compare_exchange_strong_explicit(&_LSSetCrashReporterMessage(NSString *)::messagePtr, &v1, 0, memory_order_relaxed, memory_order_relaxed);
  if (v1 == v0)
  {
    v2 = v0;
  }

  else
  {
    v2 = 0;
  }

  free(v2);
  qword_1ED444C70 = _LSSetCrashReporterMessage(NSString *)::messagePtr;
}

void ___ZL35enumerateProductPlatformKeySuffixesIU8__strongP8NSStringZL46checkPlatformKeysForKeysForSubscriptedLoctableP5NSSetIS1_EP12NSDictionaryIS1_P11objc_objectEE3__0ENSt3__18optionalIT_EES1_RKT0__block_invoke()
{
  v0 = _LSGetProductNameSuffix();
  v1 = [v0 stringByAppendingString:_LSGetPlatformNameSuffix()];
  v2 = enumerateProductPlatformKeySuffixes<NSString * {__strong},checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0>(NSString *,checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0 const&)::productThenPlatformSuffix;
  enumerateProductPlatformKeySuffixes<NSString * {__strong},checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0>(NSString *,checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0 const&)::productThenPlatformSuffix = v1;

  v3 = _LSGetPlatformNameSuffix();
  v4 = [(__CFString *)v3 stringByAppendingString:_LSGetProductNameSuffix()];
  v5 = enumerateProductPlatformKeySuffixes<NSString * {__strong},checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0>(NSString *,checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0 const&)::platformThenProductSuffix;
  enumerateProductPlatformKeySuffixes<NSString * {__strong},checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0>(NSString *,checkPlatformKeysForKeysForSubscriptedLoctable(NSSet<NSString *> *,NSDictionary<NSString *,objc_object *> *)::$_0 const&)::platformThenProductSuffix = v4;
}

void ___ZL35enumerateProductPlatformKeySuffixesIU8__strongP12NSDictionaryIP8NSStringP11objc_objectEZ53___LSStringsFileContent_subscriptLoctableWithLocale__E3__1ENSt3__18optionalIT_EES2_RKT0__block_invoke()
{
  v0 = _LSGetProductNameSuffix();
  v1 = [v0 stringByAppendingString:_LSGetPlatformNameSuffix()];
  v2 = enumerateProductPlatformKeySuffixes<NSDictionary<NSString *,objc_object *> * {__strong},[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1>(NSString *,[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1 const&)::productThenPlatformSuffix;
  enumerateProductPlatformKeySuffixes<NSDictionary<NSString *,objc_object *> * {__strong},[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1>(NSString *,[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1 const&)::productThenPlatformSuffix = v1;

  v3 = _LSGetPlatformNameSuffix();
  v4 = [(__CFString *)v3 stringByAppendingString:_LSGetProductNameSuffix()];
  v5 = enumerateProductPlatformKeySuffixes<NSDictionary<NSString *,objc_object *> * {__strong},[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1>(NSString *,[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1 const&)::platformThenProductSuffix;
  enumerateProductPlatformKeySuffixes<NSDictionary<NSString *,objc_object *> * {__strong},[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1>(NSString *,[_LSStringsFileContent subscriptLoctableWithLocale:]::$_1 const&)::platformThenProductSuffix = v4;
}

void ___ZL35enumerateProductPlatformKeySuffixesIU8__strongP8NSStringZ60___LSStringsFileContent__queryLoadedPlist_forRawKey_locale__E3__2ENSt3__18optionalIT_EES1_RKT0__block_invoke()
{
  v0 = _LSGetProductNameSuffix();
  v1 = [v0 stringByAppendingString:_LSGetPlatformNameSuffix()];
  v2 = enumerateProductPlatformKeySuffixes<NSString * {__strong},[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2>(NSString *,[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2 const&)::productThenPlatformSuffix;
  enumerateProductPlatformKeySuffixes<NSString * {__strong},[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2>(NSString *,[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2 const&)::productThenPlatformSuffix = v1;

  v3 = _LSGetPlatformNameSuffix();
  v4 = [(__CFString *)v3 stringByAppendingString:_LSGetProductNameSuffix()];
  v5 = enumerateProductPlatformKeySuffixes<NSString * {__strong},[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2>(NSString *,[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2 const&)::platformThenProductSuffix;
  enumerateProductPlatformKeySuffixes<NSString * {__strong},[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2>(NSString *,[_LSStringsFileContent _queryLoadedPlist:forRawKey:locale:]::$_2 const&)::platformThenProductSuffix = v4;
}

void LSBundleProvider::LSBundleProvider(LSBundleProvider *this, CFTypeRef cf)
{
  v13 = *MEMORY[0x1E69E9840];
  if (cf)
  {
    CFRetain(cf);
    *this = cf;
    *(this + 1) = 0;
    *(this + 5) = 0;
    *(this + 16) = 1;
    v4 = *MEMORY[0x1E695E480];
    Unique = _CFBundleCreateUnique();
    v6 = *(this + 1);
    v7 = Unique;
    if (v6 != Unique)
    {
      *(this + 1) = Unique;
      v7 = v6;
    }

    if (v7)
    {
      CFRelease(v7);
      Unique = *(this + 1);
    }

    if (!Unique)
    {
      v8 = _LSRegistrationLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
      {
        v9 = *this;
        v11 = 138477827;
        v12 = v9;
        _os_log_impl(&dword_18162D000, v8, OS_LOG_TYPE_ERROR, "Unable to create bundleRef for %{private}@", &v11, 0xCu);
      }
    }
  }

  else
  {
    *(this + 5) = 0;
    *this = 0;
    *(this + 1) = 0;
    *(this + 16) = 0;
  }

  v10 = *MEMORY[0x1E69E9840];
}

{
  LSBundleProvider::LSBundleProvider(this, cf);
}

void LSBundleProvider::LSBundleProvider(LSBundleProvider *this, void *cf)
{
  *(this + 5) = 0;
  *this = 0;
  *(this + 1) = 0;
  if (cf)
  {
    CFRetain(cf);
    v4 = *(this + 1);
    v5 = cf;
    if (v4 == cf || (*(this + 1) = cf, (v5 = v4) != 0))
    {
      CFRelease(v5);
    }

    v6 = CFBundleCopyBundleURL(cf);
    v7 = *this;
    if (*this != v6)
    {
      *this = v6;
      v6 = v7;
    }

    if (v6)
    {
      CFRelease(v6);
    }
  }
}

void sub_18179345C(_Unwind_Exception *exception_object)
{
  v3 = *(v1 + 8);
  if (v3)
  {
    CFRelease(v3);
  }

  *(v1 + 8) = 0;
  if (*v1)
  {
    CFRelease(*v1);
  }

  *v1 = 0;
  _Unwind_Resume(exception_object);
}

void LSBundleProvider::~LSBundleProvider(LSBundleProvider *this)
{
  v2 = *(this + 1);
  if (v2)
  {
    CFRelease(v2);
  }

  *(this + 1) = 0;
  if (*this)
  {
    CFRelease(*this);
  }

  *this = 0;
}

__CFBundle *LSBundleProvider::bundleIdentifier(LSBundleProvider *this)
{
  Identifier = *(this + 1);
  if (Identifier)
  {
    Identifier = CFBundleGetIdentifier(Identifier);
    v1 = vars8;
  }

  return Identifier;
}

__CFBundle *LSBundleProvider::infoDictionary(LSBundleProvider *this)
{
  InfoDictionary = *(this + 1);
  if (InfoDictionary)
  {
    InfoDictionary = CFBundleGetInfoDictionary(InfoDictionary);
    v1 = vars8;
  }

  return InfoDictionary;
}

__CFBundle *LSBundleProvider::CFBundleCopyExecutableURL(LSBundleProvider *this)
{
  result = *(this + 1);
  if (result)
  {
    return CFBundleCopyExecutableURL(result);
  }

  return result;
}

__CFBundle *LSBundleProvider::CFBundleCopyResourceURL(LSBundleProvider *this, const __CFString *a2, const __CFString *a3, const __CFString *a4)
{
  result = *(this + 1);
  if (result)
  {
    return CFBundleCopyResourceURL(result, a2, a3, a4);
  }

  return result;
}

id LSBundleProvider::copyResourceRelativePath(LSBundleProvider *this, NSString *a2, NSString *a3, NSString *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  v10 = *(this + 1);
  if (v10 && (v11 = CFBundleCopyResourceURL(v10, v7, v8, v9)) != 0)
  {
    v12 = CFURLCopyFileSystemPath(*this, kCFURLPOSIXPathStyle);
    v13 = CFURLCopyFileSystemPath(v11, kCFURLPOSIXPathStyle);
    v14 = v13;
    v15 = 0;
    if (v12 && v13)
    {
      v15 = [FSNode relativePathToFullPath:v13 fromBasePath:v12];
    }

    CFRelease(v11);
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

void sub_181793658(_Unwind_Exception *a1)
{
  CFRelease(v4);

  _Unwind_Resume(a1);
}

CFStringRef LSBundleProvider::CFBundleCopyDevelopmentRegion(LSBundleProvider *this)
{
  v1 = *(this + 1);
  if (!v1)
  {
    return 0;
  }

  DevelopmentRegion = CFBundleGetDevelopmentRegion(v1);
  v3 = DevelopmentRegion;
  if (DevelopmentRegion)
  {
    CFRetain(DevelopmentRegion);
  }

  return v3;
}

__CFBundle *LSBundleProvider::CFBundleCopyBundleLocalizations(LSBundleProvider *this)
{
  result = *(this + 1);
  if (result)
  {
    return CFBundleCopyBundleLocalizations(result);
  }

  return result;
}

__CFBundle *LSBundleProvider::copyIconResourceURL(LSBundleProvider *this, const __CFString *a2, const __CFString *a3)
{
  result = *(this + 1);
  if (result)
  {
    result = CFBundleCopyResourceURLForLocalization(result, a2, a3, 0, 0);
    if (!(a3 | result))
    {
      v7 = *(this + 1);

      return CFBundleCopyResourceURLForLocalization(v7, a2, @"icns", 0, 0);
    }
  }

  return result;
}

id LSBundleProvider::intentURLPaths(LSBundleProvider *this)
{
  v2 = *(this + 1);
  if (!v2)
  {
LABEL_4:

    return v2;
  }

  if (softLinkINSchemaURLsForIntentNamesWithBundle)
  {
    v2 = softLinkINSchemaURLsForIntentNamesWithBundle(v2);
    v1 = vars8;
    goto LABEL_4;
  }

  v2 = 0;

  return v2;
}

__CFBundle *LSBundleProvider::XCFBundleCopyFolderURL(LSBundleProvider *this, const __CFString *a2)
{
  result = *(this + 1);
  if (result)
  {
    return XCFBundleCopyFolderURL(result, a2);
  }

  return result;
}

void sub_181793930(_Unwind_Exception *a1)
{
  MEMORY[0x1865D6250](v2, 0x1060C40D21511CDLL);

  _Unwind_Resume(a1);
}

void sub_1817939FC(_Unwind_Exception *a1)
{
  v4 = v3;
  MEMORY[0x1865D6250](v4, 0x1060C40D21511CDLL);

  _Unwind_Resume(a1);
}

void sub_181793DEC(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2 + 10);

  _Unwind_Resume(a1);
}

void sub_181794034(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, void *a18)
{
  os_unfair_lock_unlock(v18 + 10);

  _Unwind_Resume(a1);
}

uint64_t std::optional<NSError * {__strong}>::operator=[abi:nn200100]<NSError * {__strong}&,void>(uint64_t a1, id *a2)
{
  v3 = *(a1 + 8);
  v4 = *a2;
  if (v3 == 1)
  {
    v5 = *a1;
    *a1 = v4;
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = 1;
  }

  return a1;
}

void sub_181795120(_Unwind_Exception *a1)
{
  LaunchServices::Database::Context::~Context((v5 - 160));

  _Unwind_Resume(a1);
}

id registrationCleanupQueue(void)
{
  if (registrationCleanupQueue(void)::onceToken != -1)
  {
    registrationCleanupQueue();
  }

  v1 = registrationCleanupQueue(void)::queue;

  return v1;
}

void sub_181795898(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, id a34)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v36 - 128), 8);

  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__136(uint64_t a1, uint64_t a2)
{
  result = MEMORY[0x1865D71B0](*(a2 + 40));
  *(a1 + 40) = result;
  return result;
}

void sub_18179627C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32)
{
  _Block_object_dispose(&a21, 8);

  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v34 - 144), 8);

  _Block_object_dispose((v34 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1817969F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id a24)
{
  _Block_object_dispose(&a19, 8);

  _Block_object_dispose((v26 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_181797350(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, void *a16, uint64_t a17, void *a18, void *a19, uint64_t a20, uint64_t a21, char a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, id a27)
{
  _Block_object_dispose(&a22, 8);

  _Unwind_Resume(a1);
}

void sub_181797F38(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, void *a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, void *a17, void *a18, void *a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, id a40)
{
  _Block_object_dispose(&a23, 8);

  _Block_object_dispose(&a35, 8);
  _Unwind_Resume(a1);
}

void sub_181798710(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_181798C34(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, void *a9, void *a10, void *a11, void *a12, void *a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, void *a37, void *a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, id a51, uint64_t a52, char a53, uint64_t a54, uint64_t a55, uint64_t a56, char a57)
{
  _Block_object_dispose(&a43, 8);

  _Block_object_dispose(&a53, 8);
  _Block_object_dispose(&a57, 8);

  _Unwind_Resume(a1);
}

void sub_18179AC28(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, void *a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, void *__p, uint64_t a23)
{
  _Block_object_dispose(&a16, 8);
  if (__p)
  {
    a23 = __p;
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__286(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void __Block_byref_object_dispose__287(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void ___ZL24registrationCleanupQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("com.apple.lsd.registration.postprocessing", v2);
  v1 = registrationCleanupQueue(void)::queue;
  registrationCleanupQueue(void)::queue = v0;
}

uint64_t LaunchServices::StrongBinding::isAllowedForNode(LaunchServices::Database::Context *a1, void *a2, _BYTE *a3, void *a4)
{
  v23[1] = *MEMORY[0x1E69E9840];
  v7 = a2;
  v8 = v7;
  if (!v7)
  {
    if (a4)
    {
      v22 = *MEMORY[0x1E696A278];
      v23[0] = @"inNode";
      v15 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v23 forKeys:&v22 count:1];
      *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v15, "isAllowedForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 353);
    }

    goto LABEL_11;
  }

  v21 = 0;
  if ([v7 getResourceValue:&v21 forKey:@"_NSURLCanSetStrongBindingKey" options:0 error:0])
  {
    IsPackage = [v21 BOOLValue];
    goto LABEL_4;
  }

  if (_LSGetBundleClassForNode(0, v8) == 2 || ([v8 isVolume] & 1) != 0)
  {
LABEL_14:
    LOBYTE(v10) = 0;
    goto LABEL_15;
  }

  if (![v8 isRegularFile])
  {
    if (![v8 isDirectory])
    {
      goto LABEL_14;
    }

    v19 = LaunchServices::Database::Context::operator LSContext *(a1);
    if (v19)
    {
      IsPackage = _LSNodeIsPackage(v19, v8, 0);
LABEL_4:
      LOBYTE(v10) = IsPackage;
      if (IsPackage)
      {
        goto LABEL_5;
      }

      goto LABEL_15;
    }

    if (a4)
    {
      *a4 = LaunchServices::Database::Context::error(a1);
    }

LABEL_11:
    v16 = 0;
    goto LABEL_18;
  }

  if ([v8 isResolvable])
  {
    goto LABEL_14;
  }

  v10 = [v8 isSideFault] ^ 1;
  if (v10)
  {
LABEL_5:
    v11 = +[_LSDServiceDomain defaultServiceDomain];
    v12 = LaunchServices::Database::Context::_get(a1, v11, 0);

    LaunchServices::TypeEvaluator::TypeEvaluator(v20, v8);
    v14 = LaunchServices::TypeEvaluator::getTypeIdentifier(v20, v12, 0);
    if (v14 && !LaunchServices::BindingEvaluator::ContentTypeBindingAllowsOverride(v12, v14, v13))
    {
      LOBYTE(v10) = 0;
    }
  }

LABEL_15:

  if (a3)
  {
    *a3 = v10;
  }

  v16 = 1;
LABEL_18:

  v17 = *MEMORY[0x1E69E9840];
  return v16;
}

uint64_t LaunchServices::CopyStrongBindingForNode(id *a1, void *a2, int a3, id *a4, uint64_t a5, void *a6)
{
  v65 = *MEMORY[0x1E69E9840];
  v10 = a2;
  v11 = v10;
  if (!v10)
  {
    if (a6)
    {
      v56 = *MEMORY[0x1E696A278];
      v57 = @"inNode";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v57 forKeys:&v56 count:1];
      *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v18, "CopyStrongBindingForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 140);
    }

    goto LABEL_72;
  }

  v51 = a1;
  v12 = v10;
  if (a4)
  {
    v13 = *a4;
    *a4 = 0;
  }

  if (a5)
  {
    *a5 = 0;
    *(a5 + 8) = 0;
    *(a5 + 16) = 0;
    v14 = *(a5 + 32);
    *(a5 + 24) = 0;
    *(a5 + 32) = 0;

    v15 = *(a5 + 40);
    *(a5 + 40) = 0;

    *(a5 + 48) = 0;
  }

  v16 = v12;
  *&v63 = 0;
  if ([v16 getTemporaryResourceValue:&v63 forKey:@"com.apple.LSStrongBindingDictionaryKey"])
  {
    if (_NSIsNSDictionary())
    {
      v17 = v63;
    }

    else if (a6)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A798], 93, 0, "getDictionaryFromAttributeOfNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 409);
      *a6 = v17 = 0;
    }

    else
    {
      v17 = 0;
    }

    goto LABEL_35;
  }

  v19 = [v16 extendedAttributeWithName:@"com.apple.LaunchServices.OpenWith" options:1 error:a6];
  if (!v19)
  {
    goto LABEL_31;
  }

  v20 = [MEMORY[0x1E696AE40] propertyListWithData:v19 options:0 format:0 error:a6];
  if (!v20)
  {
    goto LABEL_30;
  }

  if (!_NSIsNSDictionary())
  {
    if (a6)
    {
      v24 = 431;
      v25 = -10817;
LABEL_29:
      *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v25, 0, "getDictionaryFromAttributeOfNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", v24);
    }

LABEL_30:

LABEL_31:
    v28 = [MEMORY[0x1E695DFB0] null];
    v17 = 0;
    v27 = 1;
    goto LABEL_32;
  }

  v17 = v20;
  v21 = objc_opt_class();
  v22 = [v17 objectForKey:@"version"];
  v23 = v22;
  if (v21 && v22)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

LABEL_26:
LABEL_27:
      if (a6)
      {
        v24 = 427;
        v25 = -10650;
        goto LABEL_29;
      }

      goto LABEL_30;
    }
  }

  else if (!v22)
  {
    goto LABEL_26;
  }

  v26 = [v23 unsignedLongLongValue] == 0;

  if (!v26)
  {
    goto LABEL_27;
  }

  v27 = 0;
  v28 = v17;
LABEL_32:
  [v16 setTemporaryResourceValue:v28 forKey:@"com.apple.LSStrongBindingDictionaryKey"];
  if (v27)
  {
  }

LABEL_35:
  if (!v17)
  {

    goto LABEL_72;
  }

  v53 = v17;
  if (!(a4 | a5))
  {
    if (a6)
    {
      v58 = *MEMORY[0x1E696A278];
      v59 = @"invalid input parameters";
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v59 forKeys:&v58 count:1];
      *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v38, "copyResolvedApplication", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 532);
    }

    else
    {
    }

    goto LABEL_72;
  }

  v60 = kLSVersionNumberNull;
  v61 = unk_1817E90C0;
  v29 = objc_opt_class();
  v30 = [v53 objectForKey:@"bundleidentifier"];
  v31 = v30;
  if (v29 && v30 && (objc_opt_isKindOfClass() & 1) == 0)
  {

    v31 = 0;
  }

  v32 = +[_LSDServiceDomain defaultServiceDomain];
  v33 = LaunchServices::Database::Context::_get(v51, v32, 0);

  if (!v33)
  {
    if (a6)
    {
      v39 = +[_LSDServiceDomain defaultServiceDomain];
      v40 = LaunchServices::Database::Context::_get(v51, v39, 0);

      if (v40)
      {
        v41 = 0;
      }

      else
      {
        v41 = v51[3];
      }

      *a6 = v41;
    }

    goto LABEL_72;
  }

  v55 = 0;
  v54 = 0;
  v63 = v60;
  v64 = v61;
  v34 = _LSBundleFindWithInfo(v33, 0, v31, 0, &v63, 2, a3, &v55, &v54);
  if (v34)
  {
    v63 = v60;
    v64 = v61;
    memset(v62, 0, sizeof(v62));
    if (!_LSVersionNumberCompare(&v63, v62) || (v63 = kLSVersionNumberNull, v64 = unk_1817E90C0, (v34 = _LSBundleFindWithInfo(v33, 0, v31, 0, &v63, 2, a3, &v55, &v54)) != 0))
    {
      if (a6)
      {
        v35 = [MEMORY[0x1E695DF90] dictionary];
        v36 = *MEMORY[0x1E696A768];
        v37 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v34, 0, "copyResolvedApplication", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 522);
        [v35 setObject:v37 forKeyedSubscript:*MEMORY[0x1E696AA08]];

        *a6 = _LSMakeNSErrorImpl(v36, -10814, 0, "copyResolvedApplication", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 524);
      }

      goto LABEL_72;
    }
  }

  *&v63 = 0;
  v42 = _LSBundleCopyNode(*v33, v55, 0, 1, &v63);
  if (v42)
  {
    if (a6)
    {
      *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v42, 0, "copyResolvedApplication", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 515);
    }
  }

  else
  {
    if (a4)
    {
      objc_storeStrong(a4, v63);
    }

    if (a5)
    {
      v43 = v54;
      *a5 = v55;
      *(a5 + 8) = v43;
      *(a5 + 16) = 0;
      v44 = *(a5 + 32);
      *(a5 + 24) = 0;
      *(a5 + 32) = 0;

      v45 = *(a5 + 40);
      *(a5 + 40) = 0;

      *(a5 + 48) = 2;
    }
  }

  if (v42)
  {
    goto LABEL_72;
  }

  LOBYTE(v63) = 0;
  isAllowedForNode = LaunchServices::StrongBinding::isAllowedForNode(v51, v16, &v63, a6);
  v47 = isAllowedForNode;
  if (v63)
  {
    v48 = 0;
  }

  else
  {
    v48 = isAllowedForNode;
  }

  if (v48 == 1)
  {
    if (a6)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, 0, "CopyStrongBindingForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 134);
      *a6 = v47 = 0;
      goto LABEL_73;
    }

LABEL_72:
    v47 = 0;
  }

LABEL_73:

  v49 = *MEMORY[0x1E69E9840];
  return v47;
}

uint64_t LaunchServices::SetStrongBindingForNode(id *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v35[1] = *MEMORY[0x1E69E9840];
  v8 = a2;
  v9 = a4;
  if (!v8)
  {
    if (a5)
    {
      v34 = *MEMORY[0x1E696A278];
      v35[0] = @"inNode";
      v13 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:&v34 count:1];
      *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v13, "SetStrongBindingForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 170);
    }

    goto LABEL_18;
  }

  v31 = 0;
  isAllowedForNode = LaunchServices::StrongBinding::isAllowedForNode(a1, v8, &v31, a5);
  if (v31)
  {
    v11 = 0;
  }

  else
  {
    v11 = isAllowedForNode;
  }

  if (v11 != 1)
  {
    if (!isAllowedForNode)
    {
      goto LABEL_18;
    }

    v14 = v8;
    v15 = v9;
    v16 = v15;
    if (v15)
    {
      v30 = [v15 pathWithError:a5];
      if (v30)
      {
        v17 = [MEMORY[0x1E695DF90] dictionary];
        v18 = v17;
        if (v17)
        {
          [v17 setObject:&unk_1EEF8F0B0 forKeyedSubscript:@"version"];
          v19 = +[_LSDServiceDomain defaultServiceDomain];
          v20 = LaunchServices::Database::Context::_get(a1, v19, 0);

          if (v20)
          {
            v33 = 0;
            v32 = 0;
            v21 = _LSBundleFindWithNode(v20, v16, &v33, &v32);
            if (v21)
            {
              if (a5)
              {
                *a5 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v21, 0, "setForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 632);
              }
            }

            else
            {
              v27 = *(v32 + 12);
              [(_LSDatabase *)*v20 store];
              v28 = _CSStringCopyCFString();
              if (v28)
              {
                [v18 setObject:v28 forKeyedSubscript:@"bundleidentifier"];
              }
            }

            v29 = [MEMORY[0x1E696AE40] dataWithPropertyList:v18 format:200 options:0 error:a5];
            if (v29)
            {
              v12 = [v14 setExtendedAttribute:v29 name:@"com.apple.LaunchServices.OpenWith" options:1 error:a5];
            }

            else
            {
              v12 = 1;
            }

            goto LABEL_37;
          }

          if (a5)
          {
            v25 = +[_LSDServiceDomain defaultServiceDomain];
            v26 = LaunchServices::Database::Context::_get(a1, v25, 0);

            if (v26)
            {
              v24 = 0;
            }

            else
            {
              v24 = a1[3];
            }

            goto LABEL_36;
          }
        }

        else if (a5)
        {
          v24 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -41, 0, "setForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 658);
LABEL_36:
          v12 = 0;
          *a5 = v24;
          goto LABEL_37;
        }

        v12 = 0;
LABEL_37:

        goto LABEL_38;
      }

      v12 = 0;
    }

    else
    {
      v12 = [v14 setExtendedAttribute:0 name:@"com.apple.LaunchServices.OpenWith" options:1 error:a5];
    }

LABEL_38:
    [v14 removeCachedResourceValueForKey:@"com.apple.LSStrongBindingDictionaryKey"];

    goto LABEL_19;
  }

  if (!a5)
  {
LABEL_18:
    v12 = 0;
    goto LABEL_19;
  }

  _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10823, 0, "SetStrongBindingForNode", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSStrongBinding.mm", 162);
  *a5 = v12 = 0;
LABEL_19:

  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t LaunchServices::Database::Context::operator LSContext *(LaunchServices::Database::Context *a1)
{
  v2 = +[_LSDServiceDomain defaultServiceDomain];
  v3 = LaunchServices::Database::Context::_get(a1, v2, 0);

  return v3;
}

BOOL _LSIsSWCAvailable()
{
  if (SharedWebCredentialsLibrary(void)::frameworkLibrary)
  {
    return 1;
  }

  SharedWebCredentialsLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/SharedWebCredentials.framework/SharedWebCredentials", 2);
  return SharedWebCredentialsLibrary(void)::frameworkLibrary != 0;
}

uint64_t init_SWCServiceTypeActivityContinuation(void)
{
  v0 = SharedWebCredentialsLibrary(void)::frameworkLibrary;
  if (!SharedWebCredentialsLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/SharedWebCredentials.framework/SharedWebCredentials", 2);
    SharedWebCredentialsLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "_SWCServiceTypeActivityContinuation");
  constant_SWCServiceTypeActivityContinuation = result;
  get_SWCServiceTypeActivityContinuation = _SWCServiceTypeActivityContinuationFunction;
  return result;
}

uint64_t init_SWCServiceTypeAppLinks(void)
{
  v0 = SharedWebCredentialsLibrary(void)::frameworkLibrary;
  if (!SharedWebCredentialsLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/SharedWebCredentials.framework/SharedWebCredentials", 2);
    SharedWebCredentialsLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "_SWCServiceTypeAppLinks");
  constant_SWCServiceTypeAppLinks = result;
  get_SWCServiceTypeAppLinks = _SWCServiceTypeAppLinksFunction;
  return result;
}

uint64_t init_SWCErrorDomain(void)
{
  v0 = SharedWebCredentialsLibrary(void)::frameworkLibrary;
  if (!SharedWebCredentialsLibrary(void)::frameworkLibrary)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/SharedWebCredentials.framework/SharedWebCredentials", 2);
    SharedWebCredentialsLibrary(void)::frameworkLibrary = v0;
  }

  result = *dlsym(v0, "_SWCErrorDomain");
  constant_SWCErrorDomain = result;
  get_SWCErrorDomain = _SWCErrorDomainFunction;
  return result;
}

Class init_SWCServiceDetails(void)
{
  if (!SharedWebCredentialsLibrary(void)::frameworkLibrary)
  {
    SharedWebCredentialsLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/SharedWebCredentials.framework/SharedWebCredentials", 2);
  }

  result = objc_getClass("_SWCServiceDetails");
  class_SWCServiceDetails = result;
  get_SWCServiceDetailsClass = _SWCServiceDetailsFunction;
  return result;
}

Class init_SWCServiceSettings(void)
{
  if (!SharedWebCredentialsLibrary(void)::frameworkLibrary)
  {
    SharedWebCredentialsLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/SharedWebCredentials.framework/SharedWebCredentials", 2);
  }

  result = objc_getClass("_SWCServiceSettings");
  class_SWCServiceSettings = result;
  get_SWCServiceSettingsClass = _SWCServiceSettingsFunction;
  return result;
}

Class init_SWCServiceSpecifier(void)
{
  if (!SharedWebCredentialsLibrary(void)::frameworkLibrary)
  {
    SharedWebCredentialsLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/SharedWebCredentials.framework/SharedWebCredentials", 2);
  }

  result = objc_getClass("_SWCServiceSpecifier");
  class_SWCServiceSpecifier = result;
  get_SWCServiceSpecifierClass = _SWCServiceSpecifierFunction;
  return result;
}

void sub_18179CF40(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v12 = v11;

  _Unwind_Resume(a1);
}

id _LSServer_GetiCloudHostNames()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/var/mobile/Library/Caches/CloudKit/com.apple.cloudkit.launchservices.hostnames.plist" isDirectory:0];
  v1 = LaunchServices::URLOverrides::getLog(v0);
  if (os_log_type_enabled(v1, OS_LOG_TYPE_DEBUG))
  {
    _LSServer_GetiCloudHostNames_cold_1();
  }

  v3 = LaunchServices::URLOverrides::getiCloudHostNamesFromPlistAtURL(v0, v2);
  if (!v3)
  {
    v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithPath:@"/System/Library/CoreServices/com.apple.cloudkit.launchservices.hostnames.plist" isDirectory:0];
    v5 = LaunchServices::URLOverrides::getLog(v4);
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      _LSServer_GetiCloudHostNames_cold_1();
    }

    v3 = LaunchServices::URLOverrides::getiCloudHostNamesFromPlistAtURL(v4, v6);

    if (!v3)
    {
      v8 = LaunchServices::URLOverrides::getLog(v7);
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
      {
        _LSServer_GetiCloudHostNames_cold_3();
      }

      v3 = [MEMORY[0x1E695DFD8] setWithArray:&unk_1EEF8F268];
    }
  }

  return v3;
}

id LaunchServices::URLOverrides::getiCloudHostNamesFromPlistAtURL(LaunchServices::URLOverrides *this, NSURL *a2)
{
  v2 = this;
  v12 = 0;
  v3 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfURL:v2 error:&v12];
  v4 = v12;
  v5 = v4;
  if (!v3)
  {
    v9 = LaunchServices::URLOverrides::getLog(v4);
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::URLOverrides::getiCloudHostNamesFromPlistAtURL();
    }

    goto LABEL_12;
  }

  v6 = objc_opt_class();
  v7 = [v3 objectForKey:@"host-names"];
  v8 = v7;
  if (v6 && v7)
  {
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {

      goto LABEL_10;
    }

LABEL_9:
    v9 = [(LaunchServices::URLOverrides *)v8 valueForKey:@"lowercaseString"];

    v10 = [MEMORY[0x1E695DFD8] setWithArray:v9];
    goto LABEL_13;
  }

  if (v7)
  {
    goto LABEL_9;
  }

LABEL_10:
  v9 = LaunchServices::URLOverrides::getLog(v7);
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    LaunchServices::URLOverrides::getiCloudHostNamesFromPlistAtURL();
  }

LABEL_12:
  v10 = 0;
LABEL_13:

  return v10;
}

id LaunchServices::URLOverrides::getURLOverrideCommon(LaunchServices::URLOverrides *this, NSURL *a2)
{
  v3 = this;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__50;
  v23 = __Block_byref_object_dispose__50;
  v24 = 0;
  v4 = _os_feature_enabled_impl();
  if (v4)
  {
    p_super = LaunchServices::URLOverrides::getLog(v4);
    if (os_log_type_enabled(p_super, OS_LOG_TYPE_DEBUG))
    {
      [_LSURLOverride initWithOriginalURL:checkingForAvailableApplications:];
    }
  }

  else if (_LSCurrentProcessMayMapDatabase() && ([__LSDefaultsGetSharedInstance() isServer] & 1) == 0)
  {
    v8 = [[_LSURLOverride alloc] initWithOriginalURL:v3];
    p_super = &v8->super;
    if (v8)
    {
      v9 = [(_LSURLOverride *)v8 overrideURL];
      v10 = v20[5];
      v20[5] = v9;
    }
  }

  else
  {
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = ___ZN14LaunchServices12URLOverridesL20getURLOverrideCommonEP5NSURL_block_invoke;
    v17[3] = &unk_1E6A192C8;
    v6 = v3;
    v18 = v6;
    v7 = [(_LSDService *)_LSDOpenService synchronousXPCProxyWithErrorHandler:v17];
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___ZN14LaunchServices12URLOverridesL20getURLOverrideCommonEP5NSURL_block_invoke_233;
    v14[3] = &unk_1E6A1E578;
    v16 = &v19;
    v15 = v6;
    [v7 getURLOverrideForURL:v15 completionHandler:v14];

    p_super = v18;
  }

  v11 = v20[5];
  if (!v11)
  {
    objc_storeStrong(v20 + 5, this);
    v11 = v20[5];
  }

  v12 = v11;
  _Block_object_dispose(&v19, 8);

  return v12;
}

void sub_18179D5D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

BOOL LaunchServices::URLOverrides::State::pathHasCaseInsensitivePrefix(id *this, NSString *a2)
{
  v3 = a2;
  v4 = [*this path];
  v5 = v4;
  if (v4)
  {
    v6 = [v4 rangeOfString:v3 options:9] != 0x7FFFFFFFFFFFFFFFLL;
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

void sub_18179DB0C(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

LaunchServices::URLOverrides::State *LaunchServices::URLOverrides::State::State(LaunchServices::URLOverrides::State *this, NSURL *a2, char a3)
{
  v5 = a2;
  *this = 0;
  *(this + 6) = 0;
  v6 = [objc_alloc(MEMORY[0x1E696AF20]) initWithURL:v5 resolvingAgainstBaseURL:1];
  if (!v6)
  {
    v6 = objc_alloc_init(MEMORY[0x1E696AF20]);
  }

  LaunchServices::URLOverrides::State::State(&obj, v6, a3);
  objc_storeStrong(this, obj);
  *(this + 2) = v9;
  *(this + 6) = v10;

  return this;
}

uint64_t LaunchServices::URLOverrides::State::isNooverride(id *this)
{
  v1 = [*this fragment];
  v2 = v1;
  if (v1)
  {
    v3 = [v1 hasSuffix:@":nooverride"];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

void ___ZN14LaunchServices12URLOverridesL6getLogEv_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "urloverrides");
  v1 = LaunchServices::URLOverrides::getLog(void)::result;
  LaunchServices::URLOverrides::getLog(void)::result = v0;
}

void ___ZN14LaunchServices12URLOverridesL20getURLOverrideCommonEP5NSURL_block_invoke(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = LaunchServices::URLOverrides::getLog(v3);
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    ___ZN14LaunchServices12URLOverridesL20getURLOverrideCommonEP5NSURL_block_invoke_cold_1(a1);
  }
}

void ___ZN14LaunchServices12URLOverridesL20getURLOverrideCommonEP5NSURL_block_invoke_233(uint64_t a1, void *a2, void *a3)
{
  v6 = a2;
  v7 = a3;
  v8 = v7;
  if (v6)
  {
    objc_storeStrong((*(*(a1 + 40) + 8) + 40), a2);
  }

  else
  {
    v9 = LaunchServices::URLOverrides::getLog(v7);
    v10 = v9;
    if (v8)
    {
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        ___ZN14LaunchServices12URLOverridesL20getURLOverrideCommonEP5NSURL_block_invoke_233_cold_1(a1);
      }
    }

    else if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
    {
      ___ZN14LaunchServices12URLOverridesL20getURLOverrideCommonEP5NSURL_block_invoke_233_cold_2(a1);
    }
  }
}

void ___ZN14LaunchServices12URLOverridesL18checkForiCloudHostEP15NSURLComponents_block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  v3 = _LSDefaultLog();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    ___ZN14LaunchServices12URLOverridesL18checkForiCloudHostEP15NSURLComponents_block_invoke_cold_1();
  }

  v4 = [v2 copy];
  v5 = LaunchServices::URLOverrides::checkForiCloudHost(NSURLComponents *)::cachedICloudHosts;
  LaunchServices::URLOverrides::checkForiCloudHost(NSURLComponents *)::cachedICloudHosts = v4;
}

id _LSReplaceURLPropertyValueForEncoding(void *a1)
{
  v1 = a1;
  if (LaunchServices::URLPropertyProvider::getUTTypeClass(v1) && (objc_opt_isKindOfClass() & 1) != 0 && [v1 _shouldURLPropertyProviderEncodeTypeRecord])
  {
    v2 = [v1 _typeRecord];

    v1 = v2;
  }

  return v1;
}

LaunchServices::URLPropertyProvider *_LSReplaceURLPropertyValueForDecoding(void *a1)
{
  v1 = a1;
  UTTypeClass = LaunchServices::URLPropertyProvider::getUTTypeClass(v1);
  if (UTTypeClass)
  {
    v3 = UTTypeClass;
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v4 = [v3 _typeForURLPropertyProviderWithTypeRecord:v1];

      v1 = v4;
    }
  }

  return v1;
}

uint64_t LaunchServices::URLPropertyProvider::setIsPackageValue(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, const __CFString *a5, uint64_t a6, uint64_t a7)
{
  v15 = *MEMORY[0x1E69E9840];
  if (a5 && [a2 isDirectory])
  {
    result = [a2 getFinderInfo:v13 error:a7];
    if (result)
    {
      v11 = _LSGetBooleanFromCFType(a5) != 0;
      v14 = v14 & 0xDFFF | (v11 << 13);
      result = [a2 setFinderInfo:v13 error:a7];
    }
  }

  else
  {
    result = 1;
  }

  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t LaunchServices::URLPropertyProvider::prepareDistinctLocalizedNameValue(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if ([a2 canIssueIO])
  {
    v21 = 0;
    v22 = 0;
    if ([a2 getResourceValue:&v22 forKey:*MEMORY[0x1E695DC30] options:1 error:a6] && objc_msgSend(a2, "getResourceValue:forKey:options:error:", &v21, *MEMORY[0x1E695DC10], 1, a6))
    {
      if ([v22 isEqual:v21])
      {
        v9 = 0;
      }

      else
      {
        v9 = v21;
      }

      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E280], v9);
      a6 = 1;
    }

    else
    {
      a6 = 0;
    }
  }

  else
  {
    v10 = _LSDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::URLPropertyProvider::prepareDistinctLocalizedNameValue(v10, v11, v12, v13, v14, v15, v16, v17);
    }

    if (a6)
    {
      v23 = *MEMORY[0x1E696A278];
      v24[0] = @"can't provide with mimic";
      v18 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v18, "prepareDistinctLocalizedNameValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 788);

      a6 = 0;
    }
  }

  v19 = *MEMORY[0x1E69E9840];
  return a6;
}

uint64_t LaunchServices::URLPropertyProvider::prepareLocalizedNameComponentsValue(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = LaunchServices::URLPropertyProvider::getDisplayNameConstructor(a1, a2, a5, a6);
  if (v8)
  {
    v9 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
    if (v9)
    {
      v17 = 0;
      v15 = 0;
      v16 = 0;
      [v8 getUnlocalizedBaseName:&v16 extension:&v15 requiresAdditionalBiDiControlCharacters:&v17];
      v10 = v16;
      v11 = v15;
      if (v10)
      {
        [v9 addObject:v10];
      }

      if (v11)
      {
        [v9 addObject:v11];
      }

      v12 = [v9 copy];
      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E370], v12);

      v13 = 1;
    }

    else if (a6)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -41, 0, "prepareLocalizedNameComponentsValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 907);
      *a6 = v13 = 0;
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t LaunchServices::URLPropertyProvider::prepareLocalizedTypeDescriptionValue(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v20 = *MEMORY[0x1E69E9840];
  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(a1, v10, 0);

  if (v11)
  {
    LaunchServices::BindingEvaluator::CreateWithNode(a2, v19);
    v12 = LaunchServices::BindingEvaluator::getLocalizedKindString(v19, v11, 0, a6);
    if (v12)
    {
      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695EBD0], v12);
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    LaunchServices::BindingEvaluator::~BindingEvaluator(v19);
  }

  else if (a6)
  {
    v14 = +[_LSDServiceDomain defaultServiceDomain];
    v15 = LaunchServices::Database::Context::_get(a1, v14, 0);

    if (v15)
    {
      v16 = 0;
    }

    else
    {
      v16 = a1[3];
    }

    v13 = 0;
    *a6 = v16;
  }

  else
  {
    v13 = 0;
  }

  v17 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t LaunchServices::URLPropertyProvider::prepareLocalizedTypeDescriptionDictionaryValue(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if (([a2 canIssueIO] & 1) == 0)
  {
    v14 = _LSDefaultLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::URLPropertyProvider::prepareLocalizedTypeDescriptionDictionaryValue(v14, v15, v16, v17, v18, v19, v20, v21);
    }

    if (a6)
    {
      v29 = *MEMORY[0x1E696A278];
      v30[0] = @"can't provide with mimic";
      v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
      *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v22, "prepareLocalizedTypeDescriptionDictionaryValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 1239);
    }

    goto LABEL_9;
  }

  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(a1, v10, 0);

  if (v11)
  {
    LaunchServices::BindingEvaluator::CreateWithNode(a2, v28);
    v12 = LaunchServices::BindingEvaluator::getLocalizedKindStringDictionary(v28, v11, a6);
    if (v12)
    {
      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E388], v12);
      v13 = 1;
    }

    else
    {
      v13 = 0;
    }

    LaunchServices::BindingEvaluator::~BindingEvaluator(v28);
    goto LABEL_17;
  }

  if (!a6)
  {
LABEL_9:
    v13 = 0;
    goto LABEL_17;
  }

  v23 = +[_LSDServiceDomain defaultServiceDomain];
  v24 = LaunchServices::Database::Context::_get(a1, v23, 0);

  if (v24)
  {
    v25 = 0;
  }

  else
  {
    v25 = a1[3];
  }

  v13 = 0;
  *a6 = v25;
LABEL_17:
  v26 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t LaunchServices::URLPropertyProvider::prepareBundleIdentifierValue(LaunchServices::Database::Context *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(a1, v10, 0);

  if (!v11)
  {
    if (a6)
    {
      v15 = +[_LSDServiceDomain defaultServiceDomain];
      v16 = LaunchServices::Database::Context::_get(a1, v15, 0);

      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(a1 + 3);
        v20 = v17;
      }

      goto LABEL_14;
    }

    return 0;
  }

  v22 = 0;
  v21 = 0;
  v12 = _LSFindOrFindOrRegisterBundleNode(v11, a2, 0, 0x2000000u, 0, &v22, &v21);
  if (v12 == -10811)
  {
    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E248], 0);
    return 1;
  }

  if (!v12)
  {
    exactIdentifier = v21->base.exactIdentifier;
    [(_LSDatabase *)*v11 store];
    v14 = _CSStringCopyCFString();
    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E248], v14);

    return 1;
  }

  if (!a6)
  {
    return 0;
  }

  v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v12, 0, "prepareBundleIdentifierValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 1558);
  v19 = v17;
LABEL_14:
  result = 0;
  *a6 = v17;
  return result;
}

uint64_t LaunchServices::URLPropertyProvider::prepareHFSTypeCodeValue(LaunchServices::Database::Context *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  valuePtr = 0;
  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(a1, v10, 0);

  if (v11 && (_LSGetNodeTypeCreatorInfo(v11, a2, 0, &valuePtr + 1, &valuePtr), (v12 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberSInt32Type, &valuePtr + 4)) != 0))
  {
    v13 = v12;
    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E2D8], v12);
    CFRelease(v13);
    return 1;
  }

  else
  {
    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E2D8], 0);
    if (a6)
    {
      v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -41, 0, "prepareHFSTypeCodeValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 1586);
      v16 = v15;
      result = 0;
      *a6 = v15;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t LaunchServices::URLPropertyProvider::prepareArchitecturesValue(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v37[1] = *MEMORY[0x1E69E9840];
  if ([a2 canIssueIO])
  {
    v35 = 0;
    v10 = [a2 getResourceValue:&v35 forKey:*MEMORY[0x1E695DB70] options:3 error:0];
    if (!v35)
    {
      v10 = 0;
    }

    if (v10 == 1 && [v35 BOOLValue])
    {
      v11 = +[_LSDServiceDomain defaultServiceDomain];
      v12 = LaunchServices::Database::Context::_get(a1, v11, 0);

      if (!v12)
      {
        if (a6)
        {
          v31 = +[_LSDServiceDomain defaultServiceDomain];
          v32 = LaunchServices::Database::Context::_get(a1, v31, 0);

          if (v32)
          {
            v33 = 0;
          }

          else
          {
            v33 = a1[3];
          }

          goto LABEL_31;
        }

LABEL_27:
        v28 = 0;
        goto LABEL_19;
      }

      v34 = 0;
      v13 = _LSFindOrRegisterBundleNode(v12, a2, 0, 0x2000000u, 0, &v34, 0);
      if (v13 != -10811)
      {
        if (!v13)
        {
          v14 = _LSBundleCopyArchitecturesAvailable(*v12, v34);
          v15 = _LSBundleCopyArchitecturesValidOnCurrentSystem(*v12, v34);
          v16 = v15;
          v17 = *MEMORY[0x1E695E210];
          if (v14 && v15)
          {
            MEMORY[0x1865D5CD0](a3, v17, v14);
            v18 = v16;
          }

          else
          {
            v18 = MEMORY[0x1E695E0F0];
            MEMORY[0x1865D5CD0](a3, v17, MEMORY[0x1E695E0F0]);
          }

          MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E238], v18);

          goto LABEL_18;
        }

        if (a6)
        {
          v33 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v13, 0, "prepareArchitecturesValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2030);
LABEL_31:
          v28 = 0;
          *a6 = v33;
          goto LABEL_19;
        }

        goto LABEL_27;
      }

      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E210], 0);
      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E238], 0);
    }

    else
    {
      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E210], 0);
      MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E238], 0);
    }

LABEL_18:
    v28 = 1;
LABEL_19:

    goto LABEL_20;
  }

  v19 = _LSDefaultLog();
  if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
  {
    LaunchServices::URLPropertyProvider::prepareArchitecturesValue(v19, v20, v21, v22, v23, v24, v25, v26);
  }

  if (a6)
  {
    v36 = *MEMORY[0x1E696A278];
    v37[0] = @"can't provide with mimic";
    v27 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:&v36 count:1];
    *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v27, "prepareArchitecturesValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 1982);
  }

  v28 = 0;
LABEL_20:
  v29 = *MEMORY[0x1E69E9840];
  return v28;
}

uint64_t LaunchServices::URLPropertyProvider::prepareCanSetStrongBindingValue(LaunchServices::Database::Context *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v24[1] = *MEMORY[0x1E69E9840];
  if ([a2 canIssueIO])
  {
    if (!_LSCurrentProcessMayMapDatabase())
    {
      MEMORY[0x1865D5CD0](a3, @"_NSURLCanSetStrongBindingKey", *MEMORY[0x1E695E4C0]);
LABEL_13:
      result = 1;
      goto LABEL_14;
    }

    v22 = 0;
    result = LaunchServices::IsStrongBindingAllowedForNode(a1, a2, 0, &v22, a6);
    if (result)
    {
      v11 = MEMORY[0x1E695E4D0];
      if (!v22)
      {
        v11 = MEMORY[0x1E695E4C0];
      }

      MEMORY[0x1865D5CD0](a3, @"_NSURLCanSetStrongBindingKey", *v11);
      goto LABEL_13;
    }
  }

  else
  {
    v12 = _LSDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::URLPropertyProvider::prepareCanSetStrongBindingValue(v12, v13, v14, v15, v16, v17, v18, v19);
    }

    if (a6)
    {
      v23 = *MEMORY[0x1E696A278];
      v24[0] = @"can't provide with mimic";
      v20 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v24 forKeys:&v23 count:1];
      *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v20, "prepareCanSetStrongBindingValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2053);
    }

    result = 0;
  }

LABEL_14:
  v21 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t LaunchServices::URLPropertyProvider::prepareStrongBindingValue(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v30[1] = *MEMORY[0x1E69E9840];
  if ([a2 canIssueIO])
  {
    v27 = 0;
    v28 = 0;
    v10 = LaunchServices::CopyStrongBindingForNode(a1, a2, 0, &v28, 0, &v27);
    v11 = v27;
    v12 = v11;
    if (v10)
    {
      if (v28)
      {
        v13 = [v28 URL];
        MEMORY[0x1865D5CD0](a3, @"_NSURLStrongBindingKey", v13);

LABEL_12:
        v23 = 1;
LABEL_18:

        goto LABEL_19;
      }

      if (a6)
      {
        _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, 0, "prepareStrongBindingValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2100);
        *a6 = v23 = 0;
        goto LABEL_18;
      }
    }

    else
    {
      if (_LSGetOSStatusFromNSError(v11) == -10814)
      {
        MEMORY[0x1865D5CD0](a3, @"_NSURLStrongBindingKey", 0);
        goto LABEL_12;
      }

      if (a6)
      {
        v24 = v12;
        v23 = 0;
        *a6 = v12;
        goto LABEL_18;
      }
    }

    v23 = 0;
    goto LABEL_18;
  }

  v14 = _LSDefaultLog();
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    LaunchServices::URLPropertyProvider::prepareStrongBindingValue(v14, v15, v16, v17, v18, v19, v20, v21);
  }

  if (a6)
  {
    v29 = *MEMORY[0x1E696A278];
    v30[0] = @"can't provide with mimic";
    v22 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v30 forKeys:&v29 count:1];
    *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v22, "prepareStrongBindingValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2083);
  }

  v23 = 0;
LABEL_19:
  v25 = *MEMORY[0x1E69E9840];
  return v23;
}

uint64_t LaunchServices::URLPropertyProvider::setStrongBindingValue(id *a1, void *a2, uint64_t a3, uint64_t a4, const void *a5, uint64_t a6, uint64_t a7)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if (a5)
  {
    TypeID = CFNullGetTypeID();
    if (TypeID == CFGetTypeID(a5))
    {
      a7 = LaunchServices::SetStrongBindingForNode(a1, a2, 0, 0, a7);
    }

    else
    {
      v12 = CFURLGetTypeID();
      if (v12 == CFGetTypeID(a5))
      {
        v13 = [[FSNode alloc] initWithURL:a5 flags:16 error:a7];
        if (v13)
        {
          a7 = LaunchServices::SetStrongBindingForNode(a1, a2, 0, v13, a7);
        }

        else
        {
          a7 = 0;
        }
      }

      else if (a7)
      {
        v17 = *MEMORY[0x1E696A278];
        v18[0] = @"value";
        v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v18 forKeys:&v17 count:1];
        *a7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v14, "setStrongBindingValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2135);

        a7 = 0;
      }
    }
  }

  else
  {
    a7 = 1;
  }

  v15 = *MEMORY[0x1E69E9840];
  return a7;
}

uint64_t LaunchServices::URLPropertyProvider::prepareIsHiddenBySystemValue(LaunchServices::Database::Context *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  {
    LaunchServices::URLPropertyProvider::prepareIsHiddenBySystemValue();
  }

  if (LaunchServices::URLPropertyProvider::beginTranslatingHiddenBySystemNotifications(void)::onceToken != -1)
  {
    LaunchServices::URLPropertyProvider::prepareIsHiddenBySystemValue();
  }

  if ([0 BOOLValue])
  {
    MEMORY[0x1865D5CD0](a3, a4, *MEMORY[0x1E695E4D0]);
    return 1;
  }

  v12 = +[_LSDServiceDomain defaultServiceDomain];
  v13 = LaunchServices::Database::Context::_get(a1, v12, 0);

  if (v13)
  {
    v32 = 0;
    v31 = 0;
    v14 = _LSFindOrFindOrRegisterBundleNode(v13, a2, 0, 0x2000000u, 0, &v31, &v32);
    if (v14 == -10811)
    {
      MEMORY[0x1865D5CD0](a3, a4, 0);
      return 1;
    }

    if (!v14)
    {
      bundleFlags_high = HIDWORD(v32->_bundleFlags);
      v16 = MEMORY[0x1E695E4D0];
      if ((bundleFlags_high & 0x2000000) != 0)
      {
        v23 = +[LSEligibilityPredicateEvaluator sharedCachingEligibilityPredicateEvaluator];
        v24 = [v23 evaluateBundle:v31 bundleData:v32 database:*v13 error:a6];

        v18 = v24 != 0;
        if (v24)
        {
          v25 = [v24 BOOLValue];
          v26 = MEMORY[0x1E695E4C0];
          if (!v25)
          {
            v26 = v16;
          }

          v17 = *v26;
        }

        else
        {
          v17 = 0;
        }

        bundleFlags_high = HIDWORD(v32->_bundleFlags);
      }

      else
      {
        v17 = 0;
        v18 = 1;
      }

      if ((bundleFlags_high & 0x4000000) != 0 && v18 && (v28 = *v16, v17 != *v16))
      {
        v29 = +[LSFeatureFlagPredicateEvaluator defaultEvaluator];
        v30 = [v29 evaluateBundle:v31 bundleData:v32 database:*v13 error:a6];

        if (v30)
        {
          if ([v30 BOOLValue])
          {
            v17 = *MEMORY[0x1E695E4C0];
          }

          else
          {
            v17 = v28;
          }

          goto LABEL_37;
        }
      }

      else if (v18)
      {
LABEL_37:
        MEMORY[0x1865D5CD0](a3, a4, v17);
        return 1;
      }

      return 0;
    }

    if (a6)
    {
      v21 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v14, 0, "prepareIsHiddenBySystemValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2281);
      v22 = v21;
LABEL_24:
      result = 0;
      *a6 = v21;
      return result;
    }
  }

  else if (a6)
  {
    v19 = +[_LSDServiceDomain defaultServiceDomain];
    v20 = LaunchServices::Database::Context::_get(a1, v19, 0);

    if (v20)
    {
      v21 = 0;
    }

    else
    {
      v21 = *(a1 + 3);
      v27 = v21;
    }

    goto LABEL_24;
  }

  return 0;
}

uint64_t LaunchServices::URLPropertyProvider::prepareIsHiddenBySystemNotificationsValue(LaunchServices::Database::Context *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v11 = +[_LSDServiceDomain defaultServiceDomain];
  v12 = LaunchServices::Database::Context::_get(a1, v11, 0);

  if (!v12)
  {
    if (a6)
    {
      v15 = +[_LSDServiceDomain defaultServiceDomain];
      v16 = LaunchServices::Database::Context::_get(a1, v15, 0);

      if (v16)
      {
        v17 = 0;
      }

      else
      {
        v17 = *(a1 + 3);
        v20 = v17;
      }

      goto LABEL_17;
    }

    return 0;
  }

  v22 = 0;
  v21 = 0;
  v13 = _LSFindOrFindOrRegisterBundleNode(v12, a2, 0, 0x2000000u, 0, &v21, &v22);
  if (v13 == -10811)
  {
    MEMORY[0x1865D5CD0](a3, a4, 0);
    return 1;
  }

  if (!v13)
  {
    if ((v22->_bundleFlags & 0x200000000000000) != 0)
    {
      v14 = [MEMORY[0x1E695E0F0] arrayByAddingObject:@"kLSHiddenAppsEligibilityChangedNotification"];
    }

    else
    {
      v14 = MEMORY[0x1E695E0F0];
    }

    MEMORY[0x1865D5CD0](a3, @"_NSURLIsHiddenBySystemChangedNotificationsKey", v14);

    return 1;
  }

  if (!a6)
  {
    return 0;
  }

  v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v13, 0, "prepareIsHiddenBySystemNotificationsValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2319);
  v18 = v17;
LABEL_17:
  result = 0;
  *a6 = v17;
  return result;
}

uint64_t LaunchServices::URLPropertyProvider::prepareApplicationDeviceManagementPolicyValue(id *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v33[1] = *MEMORY[0x1E69E9840];
  if (([a2 canIssueIO] & 1) == 0)
  {
    v17 = _LSDefaultLog();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
    {
      LaunchServices::URLPropertyProvider::prepareApplicationDeviceManagementPolicyValue(v17, v18, v19, v20, v21, v22, v23, v24);
    }

    if (a6)
    {
      v32 = *MEMORY[0x1E696A278];
      v33[0] = @"can't provide with mimic";
      v25 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v33 forKeys:&v32 count:1];
      *a6 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v25, "prepareApplicationDeviceManagementPolicyValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2335);
    }

    goto LABEL_11;
  }

  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(a1, v10, 0);

  if (!v11)
  {
    if (a6)
    {
      v26 = +[_LSDServiceDomain defaultServiceDomain];
      v27 = LaunchServices::Database::Context::_get(a1, v26, 0);

      if (v27)
      {
        v28 = 0;
      }

      else
      {
        v28 = a1[3];
      }

      goto LABEL_19;
    }

LABEL_11:
    v16 = 0;
    goto LABEL_22;
  }

  v31 = 0;
  v12 = _LSFindOrFindOrRegisterBundleNode(v11, a2, 0, 0x2000000u, 0, 0, &v31);
  if (v12 == -10811)
  {
    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E218], 0);
    v16 = 1;
    goto LABEL_22;
  }

  if (v12)
  {
    if (a6)
    {
      v28 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], v12, 0, "prepareApplicationDeviceManagementPolicyValue", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 2361);
LABEL_19:
      v16 = 0;
      *a6 = v28;
      goto LABEL_22;
    }

    goto LABEL_11;
  }

  exactIdentifier = v31->base.exactIdentifier;
  [(_LSDatabase *)*v11 store];
  v14 = _CSStringCopyCFString();
  v15 = _LSGetDMFPolicyNoCache(v14, a6);

  if (v15)
  {
    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695E218], v15);
    v16 = 1;
  }

  else
  {
    v16 = 0;
  }

LABEL_22:
  v29 = *MEMORY[0x1E69E9840];
  return v16;
}

void ___ZN14LaunchServices19URLPropertyProviderL43beginTranslatingHiddenBySystemNotificationsEv_block_invoke()
{
  v0 = _LSDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_18162D000, v0, OS_LOG_TYPE_DEFAULT, "Starting listening to hidden-by-system notifications", buf, 2u);
  }

  v1 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v2 = dispatch_queue_create("com.apple.launchservices.hiddenPreferenceNotification", v1);
  v3 = LaunchServices::URLPropertyProvider::beginTranslatingHiddenBySystemNotifications(void)::hiddenPreferenceNotificationQueue;
  LaunchServices::URLPropertyProvider::beginTranslatingHiddenBySystemNotifications(void)::hiddenPreferenceNotificationQueue = v2;

  LaunchServices::notifyd::NotifyToken::RegisterDispatch(@"com.apple.launchservices.setsystemhidden", LaunchServices::URLPropertyProvider::beginTranslatingHiddenBySystemNotifications(void)::hiddenPreferenceNotificationQueue, &__block_literal_global_65, &v8);
  LaunchServices::notifyd::NotifyToken::operator=(LaunchServices::URLPropertyProvider::beginTranslatingHiddenBySystemNotifications(void)::preferenceDistributedNotificationToken, &v8);
  LaunchServices::notifyd::NotifyToken::~NotifyToken(&v8);
  v5 = LaunchServices::EligibilityCache::shared(v4);
  v6 = LaunchServices::EligibilityCache::addEligibilityChangedListener(v5, &__block_literal_global_71);
  v7 = LaunchServices::URLPropertyProvider::beginTranslatingHiddenBySystemNotifications(void)::eligibilityChangeListenerToken;
  LaunchServices::URLPropertyProvider::beginTranslatingHiddenBySystemNotifications(void)::eligibilityChangeListenerToken = v6;
}

void ___ZN14LaunchServices19URLPropertyProviderL43beginTranslatingHiddenBySystemNotificationsEv_block_invoke_63()
{
  v0 = _LSDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_18162D000, v0, OS_LOG_TYPE_DEFAULT, "Received com.apple.launchservices.setsystemhidden, reposting eligibility notification", v2, 2u);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kLSHiddenAppsEligibilityChangedNotification", 0, 0, 1u);
}

void ___ZN14LaunchServices19URLPropertyProviderL43beginTranslatingHiddenBySystemNotificationsEv_block_invoke_69()
{
  v0 = _LSDefaultLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    *v2 = 0;
    _os_log_impl(&dword_18162D000, v0, OS_LOG_TYPE_DEFAULT, "Eligibility changed, reposting eligibility notification", v2, 2u);
  }

  LocalCenter = CFNotificationCenterGetLocalCenter();
  CFNotificationCenterPostNotification(LocalCenter, @"kLSHiddenAppsEligibilityChangedNotification", 0, 0, 1u);
}

void LaunchServices::URLPropertyProvider::normalizeError(const void *a1, uint64_t a2, id *a3)
{
  if (a1 && a3)
  {
    v6 = *a3;
    v11 = v6;
    if (v6)
    {
      v7 = [v6 domain];
      v8 = [v7 isEqual:*MEMORY[0x1E696A250]];

      if ((v8 & 1) == 0)
      {
        v9 = CFGetAllocator(a1);
        v10 = [v11 domain];
        *a3 = MEMORY[0x1865D5C70](v9, v10, [v11 code], a2, a1, 0);
      }
    }

    else
    {
      *a3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10810, 0, "normalizeError", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Info/LSURLPropertyProvider.mm", 222);
    }
  }
}

void _LSRegistrationWarning(void *a1, void *a2)
{
  v17 = *MEMORY[0x1E69E9840];
  v4 = a1;
  if (_LSRegistrationWarning::lastNode != v4)
  {
    objc_storeStrong(&_LSRegistrationWarning::lastNode, a1);
    if (v4)
    {
      v5 = [v4 pathWithError:0];
      v6 = v5;
      v7 = @"<unknown>";
      if (v5)
      {
        v7 = v5;
      }

      v8 = v7;

      v9 = _LSDefaultLog();
      if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
      {
        v15 = 138477827;
        v16 = v8;
        _os_log_impl(&dword_18162D000, v9, OS_LOG_TYPE_DEFAULT, "*** Registration warnings for %{private}@:", &v15, 0xCu);
      }
    }
  }

  if (a2)
  {
    v10 = objc_autoreleasePoolPush();
    v11 = _LSDefaultLog();
    if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
    {
      v12 = a2;
      v13 = [a2 UTF8String];
      v15 = 136446210;
      v16 = v13;
      _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_DEFAULT, "    %{public}s", &v15, 0xCu);
    }

    objc_autoreleasePoolPop(v10);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void _LSRegistrationWarningPath(uint64_t a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = _LSDefaultLog();
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v10 = 138477827;
    v11 = a1;
    _os_log_impl(&dword_18162D000, v4, OS_LOG_TYPE_DEFAULT, "*** Registration warnings for %{private}@:", &v10, 0xCu);
  }

  if (a2)
  {
    v5 = objc_autoreleasePoolPush();
    v6 = _LSDefaultLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v7 = a2;
      v8 = [a2 UTF8String];
      v10 = 136446210;
      v11 = v8;
      _os_log_impl(&dword_18162D000, v6, OS_LOG_TYPE_DEFAULT, "    %{public}s", &v10, 0xCu);
    }

    objc_autoreleasePoolPop(v5);
  }

  v9 = *MEMORY[0x1E69E9840];
}

const __CFString *_LSGetBooleanFromCFType(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    v2 = CFGetTypeID(result);
    if (v2 != CFBooleanGetTypeID())
    {
      if (v2 == CFStringGetTypeID())
      {
        result = CFStringGetLength(v1);
        if (!result)
        {
          return result;
        }

        result = CFStringCompare(v1, @"NO", 1uLL);
        if (!result)
        {
          return result;
        }

        result = CFStringCompare(v1, @"0", 0x40uLL);
        if (!result)
        {
          return result;
        }

        v3 = CFStringCompare(v1, @"FALSE", 1uLL) == kCFCompareEqualTo;
      }

      else
      {
        if (v2 != CFNumberGetTypeID())
        {
          return 0;
        }

        valuePtr = 0;
        CFNumberGetValue(v1, kCFNumberLongType, &valuePtr);
        v3 = valuePtr == 0;
      }

      return !v3;
    }

    return CFBooleanGetValue(v1);
  }

  return result;
}

const __CFString *_LSGetBooleanFromDict(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);

  return _LSGetBooleanFromCFType(Value);
}

const __CFString *_LSGetRawOSTypeForPossibleString(const __CFString *result)
{
  *buffer = 0;
  if (result)
  {
    v1 = result;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v1) && ((Length = CFStringGetLength(v1), Length >= 4) ? (v4 = 4) : (v4 = Length), v6.location = 0, v6.length = v4, v4 == CFStringGetBytes(v1, v6, 0, 0, 0, buffer, 4, 0)))
    {
      return bswap32(*buffer);
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t _LSPathMatchesPath_NoIO(void *a1, void *a2, uint64_t a3)
{
  v5 = a1;
  v6 = a2;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v19 = [MEMORY[0x1E696AAA8] currentHandler];
    v20 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSPathMatchesPath_NoIO(NSString *__strong, NSString *__strong, LSPathMatchType)"}];
    [v19 handleFailureInFunction:v20 file:@"LSUtils.mm" lineNumber:790 description:{@"Invalid parameter not satisfying: %@", @"path1 != nil"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v21 = [MEMORY[0x1E696AAA8] currentHandler];
  v22 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSPathMatchesPath_NoIO(NSString *__strong, NSString *__strong, LSPathMatchType)"}];
  [v21 handleFailureInFunction:v22 file:@"LSUtils.mm" lineNumber:791 description:{@"Invalid parameter not satisfying: %@", @"path2 != nil"}];

LABEL_3:
  v8 = objc_autoreleasePoolPush();
  if (a3)
  {
    v9 = v7;
  }

  else
  {
    while (([v5 hasSuffix:@"/"] & 1) != 0)
    {
      v10 = [v5 stringByReplacingCharactersInRange:objc_msgSend(v5 withString:{"length") - 1, 1, &stru_1EEF65710}];

      v5 = v10;
    }

    for (i = v7; [i hasSuffix:@"/"]; i = v12)
    {
      v12 = [i stringByReplacingCharactersInRange:objc_msgSend(i withString:{"length") - 1, 1, &stru_1EEF65710}];
    }

    v9 = i;
  }

  v13 = v5;
  v14 = v5;
  v15 = v9;
  if (a3 == 2)
  {
    goto LABEL_16;
  }

  if (a3 == 1)
  {
    v14 = v9;
    v15 = v5;
LABEL_16:
    v16 = [v14 hasPrefix:v15];
    goto LABEL_17;
  }

  if (a3)
  {
    v17 = 0;
    goto LABEL_19;
  }

  v16 = [v5 isEqual:v9];
LABEL_17:
  v17 = v16;
LABEL_19:
  objc_autoreleasePoolPop(v8);

  return v17;
}

uint64_t _LSGetBundle()
{
  if (_LSGetBundle::once != -1)
  {
    _LSGetBundle_cold_1();
  }

  return _LSGetBundle::gBundleRef;
}

uint64_t _LSGetDirectoryClassForNode(void *a1)
{
  v1 = a1;
  if (![(FSNode *)v1 isOnLocalVolume])
  {
    goto LABEL_21;
  }

  if (_LSNodeIsInDirectoryPath(v1, "/System/Cryptexes/App/System/Applications"))
  {
    v2 = 1;
    goto LABEL_22;
  }

  if (_LSNodeIsInDirectoryPath(v1, "/System/Cryptexes/App/System/Library/CoreServices") & 1) != 0 || (_LSNodeIsInDirectoryPath(v1, "/System/Library/CoreServices/"))
  {
    v2 = 4;
    goto LABEL_22;
  }

  if (_LSNodeIsInSearchPath(v1, NSLibraryDirectory, 8))
  {
    v2 = 3;
    goto LABEL_22;
  }

  if (_LSNodeIsInSearchPath(v1, NSApplicationDirectory, 2))
  {
    v2 = 0;
    goto LABEL_22;
  }

  if (_LSNodeIsInSearchPath(v1, NSLibraryDirectory, 2))
  {
    v2 = 2;
    goto LABEL_22;
  }

  if (_LSNodeIsInSearchPath(v1, NSApplicationDirectory, 1))
  {
    v2 = 5;
    goto LABEL_22;
  }

  if (_LSNodeIsInSearchPath(v1, NSLibraryDirectory, 1))
  {
    v2 = 6;
    goto LABEL_22;
  }

  if (![__LSDefaultsGetSharedInstance() isAppleInternal])
  {
LABEL_21:
    v2 = -1;
    goto LABEL_22;
  }

  if (_LSNodeIsInDirectoryPath(v1, "/AppleInternal/"))
  {
    v2 = 8;
  }

  else
  {
    v2 = -1;
  }

LABEL_22:

  return v2;
}

uint64_t _LSNodeIsInDirectoryPath(FSNode *a1, const char *a2)
{
  v3 = a1;
  v4 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:a2 isDirectory:1 relativeToURL:0];
  v5 = _LSNodeIsInDirectoryURL(v3, v4);

  return v5;
}

uint64_t _LSNodeIsInSearchPath(FSNode *a1, NSSearchPathDirectory a2, uint64_t a3)
{
  v5 = a1;
  v6 = [MEMORY[0x1E696AC08] defaultManager];
  v7 = [v6 URLsForDirectory:a2 inDomains:a3];
  v8 = [v7 firstObject];

  v9 = _LSNodeIsInDirectoryURL(v5, v8);
  return v9;
}

void sub_1817A27EC(_Unwind_Exception *a1)
{
  v3 = v2;

  _Unwind_Resume(a1);
}

BOOL _LSIconDictionarySupportsAssetCatalogs(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [a1 objectForKey:@"CFBundlePrimaryIcon"];
  if (_NSIsNSString())
  {
    v4 = 1;
  }

  else if (_NSIsNSDictionary())
  {
    v5 = [v3 objectForKey:@"CFBundleIconName"];
    v4 = v5 != 0;
  }

  else
  {
    v4 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v4;
}

id _LSIconDictionaryGetPrimaryIconName(void *a1)
{
  v1 = [a1 objectForKey:@"CFBundlePrimaryIcon"];
  if (_NSIsNSDictionary())
  {
    v2 = [v1 objectForKey:@"CFBundleIconName"];
LABEL_5:
    v3 = v2;
    goto LABEL_7;
  }

  if (_NSIsNSString())
  {
    v2 = v1;
    goto LABEL_5;
  }

  v3 = 0;
LABEL_7:

  return v3;
}

uint64_t _LSGetProductNameSuffix()
{
  if (_LSGetProductNameSuffix::onceToken != -1)
  {
    _LSGetProductNameSuffix_cold_1();
  }

  return _LSGetProductNameSuffix::suffix;
}

uint64_t _LSEntitledForPluginQuery()
{
  if (!_LSCurrentProcessMayMapDatabase() && _LSEntitledForPluginQuery::onceToken != -1)
  {
    _LSEntitledForPluginQuery_cold_1();
  }

  if (!_os_feature_enabled_impl() || _LSCurrentProcessMayMapDatabase())
  {
    return 1;
  }

  v1 = _LSDefaultLog();
  if (os_log_type_enabled(v1, OS_LOG_TYPE_ERROR))
  {
    _LSEntitledForPluginQuery_cold_2(v1);
  }

  result = _os_feature_enabled_impl();
  if (result)
  {
    abort();
  }

  return result;
}

id _LSGetDataForUserActivity(void *a1, void *a2)
{
  v22 = 0;
  v23 = &v22;
  v24 = 0x3032000000;
  v25 = __Block_byref_object_copy__52;
  v26 = __Block_byref_object_dispose__52;
  v27 = 0;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3032000000;
  v19 = __Block_byref_object_copy__52;
  v20 = __Block_byref_object_dispose__52;
  v21 = 0;
  v3 = a1;
  v4 = dispatch_semaphore_create(0);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___LSGetDataForUserActivity_block_invoke;
  v12[3] = &unk_1E6A1E6A8;
  v14 = &v22;
  v15 = &v16;
  v5 = v4;
  v13 = v5;
  v6 = [v3 _createUserActivityDataWithOptions:0 completionHandler:v12];

  if (v6)
  {
    dispatch_semaphore_wait(v5, 0xFFFFFFFFFFFFFFFFLL);
  }

  else
  {
    v7 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10817, 0, "_LSGetDataForUserActivity", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Base/LSUtils.mm", 1716);
    v8 = v17[5];
    v17[5] = v7;
  }

  v9 = v23[5];
  if (a2 && !v9)
  {
    *a2 = v17[5];
    v9 = v23[5];
  }

  v10 = v9;

  _Block_object_dispose(&v16, 8);
  _Block_object_dispose(&v22, 8);

  return v10;
}

void sub_1817A3078(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Block_object_dispose((v23 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t _LSNodeIsInDirectoryURL(FSNode *a1, NSURL *a2)
{
  v3 = a1;
  v4 = a2;
  v10 = 2;
  if (v4)
  {
    v5 = [MEMORY[0x1E696AC08] defaultManager];
    v6 = [(FSNode *)v3 URL];
    v7 = [v5 getRelationship:&v10 ofDirectoryAtURL:v4 toItemAtURL:v6 error:0];

    if (v10 < 2)
    {
      v8 = v7;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

void sub_1817A3214(_Unwind_Exception *a1)
{
  v5 = v4;

  _Unwind_Resume(a1);
}

int *___ZL17_LSGetProductNamev_block_invoke()
{
  v11 = *MEMORY[0x1E69E9840];
  v0 = getenv("CLASSIC_SUFFIX");
  if (v0)
  {
    v1 = v0;
    result = strncmp(v0, "iphone", 6uLL);
    if (!result)
    {
      goto LABEL_13;
    }

    result = strncmp(v1, "ipad", 4uLL);
    if (!result)
    {
LABEL_34:
      v4 = @"ipad";
      goto LABEL_36;
    }
  }

  memset(v10, 0, sizeof(v10));
  v9 = 256;
  result = sysctlbyname("hw.machine", v10, &v9, 0, 0);
  if (result)
  {
    if (result != -1)
    {
      goto LABEL_37;
    }

    result = __error();
    if (*result != 12)
    {
      goto LABEL_37;
    }
  }

  if (v9 >= 6)
  {
    if (LODWORD(v10[0]) != 1869107305 || WORD2(v10[0]) != 25966)
    {
      goto LABEL_15;
    }

LABEL_13:
    v4 = @"iphone";
LABEL_36:
    _LSGetProductName(void)::_cfBundlePlatform = v4;
    goto LABEL_37;
  }

  if (v9 < 4)
  {
    goto LABEL_37;
  }

LABEL_15:
  if (LODWORD(v10[0]) == 1685016681)
  {
    v4 = @"ipod";
    goto LABEL_36;
  }

  if (LODWORD(v10[0]) == 1684099177)
  {
    goto LABEL_34;
  }

  if (v9 < 5)
  {
    goto LABEL_37;
  }

  if (LODWORD(v10[0]) == 1668571479 && BYTE4(v10[0]) == 104)
  {
    v4 = @"watch";
    goto LABEL_36;
  }

  if (v9 < 7)
  {
    goto LABEL_37;
  }

  if (LODWORD(v10[0]) == 1819308097 && *(v10 + 3) == 1448371564)
  {
    v4 = @"appletv";
    goto LABEL_36;
  }

  if (v9 >= 0xD && *&v10[0] == 0x447974696C616552 && *(v10 + 5) == 0x6563697665447974)
  {
    v4 = @"reality";
    goto LABEL_36;
  }

LABEL_37:
  v8 = *MEMORY[0x1E69E9840];
  return result;
}

void sub_1817A39CC(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

double _LSVersionNumberGetCurrentSystemVersion@<D0>(_OWORD *a1@<X8>)
{
  if (_LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::once != -1)
  {
    _LSVersionNumberGetCurrentSystemVersion_cold_1();
  }

  result = *&_LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedSystemVersion;
  v3 = *algn_1ED444F90;
  *a1 = _LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedSystemVersion;
  a1[1] = v3;
  return result;
}

CFStringRef _LSVersionNumberCopyStringRepresentation(_OWORD *a1)
{
  v1 = a1[1];
  v3[0] = *a1;
  v3[1] = v1;
  return LaunchServices::VersionNumber::copyStringRepresentation(v3);
}

uint64_t _LSMakeVersionNumber@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  a4[3] = 0;
  return result;
}

uint64_t _LSVersionNumberMakeWithDYLDVersion@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  *a2 = WORD1(result);
  a2[1] = BYTE1(result);
  a2[2] = result;
  a2[3] = 0;
  return result;
}

uint64_t _LSVersionNumberGetDYLDVersion(uint64x2_t *a1)
{
  v1 = a1[1].u64[0];
  if (v1 >= 0xFF)
  {
    LODWORD(v1) = 255;
  }

  v2 = vshlq_u64(vbslq_s8(vcgtq_u64(xmmword_1817E9090, *a1), *a1, xmmword_1817E9090), xmmword_1817E90A0);
  return vorrq_s8(vdupq_laneq_s64(v2, 1), v2).u32[0] | v1;
}

double _LSGetCurrentCryptexVersion@<D0>(_OWORD *a1@<X8>)
{
  if (_LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::once != -1)
  {
    _LSVersionNumberGetCurrentSystemVersion_cold_1();
  }

  result = *&_LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedCryptexVersion;
  v3 = unk_1EA8313E8;
  *a1 = _LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedCryptexVersion;
  a1[1] = v3;
  return result;
}

uint64_t _LSGetCurrentCryptexBuildVersionString()
{
  if (_LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::once != -1)
  {
    _LSVersionNumberGetCurrentSystemVersion_cold_1();
  }

  return _LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedCryptexBuildVersion;
}

void _LSGetVersionForArchitecture(const __CFDictionary *a1@<X0>, const void *a2@<X1>, _OWORD *a3@<X8>)
{
  *a3 = 0u;
  a3[1] = 0u;
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    v5 = Value;
    TypeID = CFStringGetTypeID();
    if (TypeID == CFGetTypeID(v5))
    {

      _LSGetVersionFromString(v5, a3);
    }
  }
}

uint64_t _LSIsDictionaryWithKeysAndValuesOfClass(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v8 = a3;
  v9 = a2;
  if (a2)
  {
    a2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v9 count:{1, v8}];
  }

  if (a3)
  {
    a3 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v8 count:1];
  }

  v6 = _LSIsDictionaryWithKeysAndValuesOfClasses(v5, a2, a3);

  return v6;
}

CFStringRef _UTTypeCreateDynamicIdentifierForTaggedPointerObject(__CFString *a1, int a2)
{
  v2 = &kUTTypePackage;
  if (!a2)
  {
    v2 = &kUTTypeData;
  }

  return _UTTypeCreateDynamicIdentifierForTagCommon(@"public.filename-extension", a1, *v2, 1);
}

void _UTDynamicEnumerateTagsFoundInDatabase(uint64_t a1, const __CFString *a2, uint64_t a3)
{
  TagSpecification = _UTDynamicGetTagSpecification(a2);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___UTDynamicEnumerateTagsFoundInDatabase_block_invoke;
  v6[3] = &unk_1E6A1E720;
  v6[4] = a1;
  v6[5] = a3;
  [TagSpecification enumerateKeysAndObjectsUsingBlock:v6];
}

uint64_t _UTDynamicGetParentIdentifiers(const __CFString *a1)
{
  v2 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v3 = v2;
  if (v2)
  {
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___UTDynamicGetParentIdentifiers_block_invoke;
    v7[3] = &unk_1E6A1E748;
    v4 = v2;
    v8 = v4;
    _UTDynamicEnumerateParentIdentifiers(a1, v7);
    if ([v4 count])
    {
      v5 = [v4 copy];
    }

    else
    {
      v5 = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

CFArrayRef UTTypeCreateAllIdentifiersForTag(CFStringRef inTagClass, CFStringRef inTag, CFStringRef inConformingToUTI)
{
  v3 = 0;
  v21 = *MEMORY[0x1E69E9840];
  if (inTagClass && inTag)
  {
    v7 = objc_autoreleasePoolPush();
    v8 = [UTTypeRecord typeRecordsWithTag:inTag ofClass:inTagClass conformingToIdentifier:inConformingToUTI];
    if (v8)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v9 = v8;
      v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v10)
      {
        v11 = *v17;
        do
        {
          for (i = 0; i != v10; ++i)
          {
            if (*v17 != v11)
            {
              objc_enumerationMutation(v9);
            }

            v13 = [*(*(&v16 + 1) + 8 * i) identifier];
            [v3 addObject:v13];
          }

          v10 = [v9 countByEnumeratingWithState:&v16 objects:v20 count:16];
        }

        while (v10);
      }
    }

    else
    {
      v3 = 0;
    }

    objc_autoreleasePoolPop(v7);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v3;
}

CFStringRef _UTTypeCreateSuggestedFilename(__CFString *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = 0;
  if (a1 && a2)
  {
    v6 = [_LSGetUTTypeClass() typeWithIdentifier:a2];
    if (v6)
    {
      v5 = [(__CFString *)a1 stringByAppendingPathExtensionForType:v6];
    }

    else
    {
      v5 = 0;
    }
  }

  objc_autoreleasePoolPop(v4);
  if (!a1 || v5)
  {
    return v5;
  }

  v7 = *MEMORY[0x1E695E480];

  return CFStringCreateCopy(v7, a1);
}

void _UTTypePrecachePropertiesOfIdentifiers()
{
  if ([__LSDefaultsGetSharedInstance() isAppleInternal])
  {
    v0 = _LSDefaultLog();
    if (os_log_type_enabled(v0, OS_LOG_TYPE_ERROR))
    {
      _UTTypePrecachePropertiesOfIdentifiers_cold_1(v0);
    }
  }
}

uint64_t _UTTypeIsWildcard(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 isWildcard];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v5;
}

uint64_t UTTypeCopyChildIdentifiers(const __CFString *a1)
{
  if (!a1 || !_UTTypeIdentifierIsDeclarable(a1))
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 childTypeIdentifiers];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 allObjects];
    }

    else
    {
      v7 = 0;
    }
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v7;
}

CFStringRef UTTypeCopyDescription(CFStringRef inUTI)
{
  if (!inUTI || !_UTTypeIdentifierIsDeclarable(inUTI))
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:inUTI];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 localizedDescription];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v5;
}

uint64_t _UTTypeGetStatus(const __CFString *a1)
{
  if (!_UTTypeIdentifierIsValid(a1))
  {
    return -1;
  }

  if (_UTTypeIdentifierIsDynamic(a1))
  {
    return 2;
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [UTTypeRecord typeRecordWithIdentifier:a1];
  v5 = v4;
  if (v4)
  {
    v2 = [v4 isDeclared];
  }

  else
  {
    v2 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v2;
}

CFURLRef UTTypeCopyDeclaringBundleURL(CFStringRef inUTI)
{
  if (!inUTI || !_UTTypeIdentifierIsDeclarable(inUTI))
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:inUTI];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _resolvedPropertyValueForGetter:sel_declaringBundleRecord];
    v6 = v5;
    if (v5)
    {
      v7 = [v5 URL];
    }

    else
    {
      v8 = [v4 _declaringBundleBookmark];
      if (v8 && (v9 = [[FSNode alloc] initByResolvingBookmarkData:v8 relativeToNode:0 bookmarkDataIsStale:0 error:0]) != 0)
      {
        v10 = [v4 _delegatePath];
        if (v10)
        {
          v11 = [v9 childNodeWithRelativePath:v10 flags:8 error:0];

          v9 = v11;
        }

        v7 = [v9 URL];
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v7;
}

uint64_t _UTTypeCopyGlyphName(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 iconDictionary];
    v6 = [v5 objectForKeyedSubscript:@"UTTypeGlyphName"];
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

uint64_t _UTTypeCopyIconName(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 iconDictionary];
    v6 = [v5 objectForKeyedSubscript:@"UTTypeIconName"];
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

CFArrayRef _UTTypeCopyDynamicIdentifiersForTags(__CFString *a1)
{
  values = a1;
  if (_UTTypeIdentifierIsDynamic(a1))
  {
    return CFArrayCreate(*MEMORY[0x1E695E480], &values, 1, MEMORY[0x1E695E9C0]);
  }

  v3 = objc_autoreleasePoolPush();
  v4 = [UTTypeRecord typeRecordWithIdentifier:a1];
  if (v4)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DFA8]);
    v6 = @"public.data";
    if (([v4 conformsToTypeIdentifier:@"public.data"] & 1) == 0)
    {
      v6 = @"com.apple.package";
      if (([v4 conformsToTypeIdentifier:@"com.apple.package"] & 1) == 0)
      {
        if ([v4 conformsToTypeIdentifier:@"public.folder"])
        {
          v6 = @"public.folder";
        }

        else
        {
          v6 = 0;
        }
      }
    }

    v7 = [v4 tagSpecification];
    v8 = [v7 _expensiveDictionaryRepresentation];

    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___UTTypeCopyDynamicIdentifiersForTags_block_invoke;
    v11[3] = &unk_1E6A1E7C0;
    v13 = v6;
    v9 = v5;
    v12 = v9;
    [v8 enumerateKeysAndObjectsUsingBlock:v11];
    if ([v9 count])
    {
      v2 = [v9 allObjects];
    }

    else
    {
      v2 = 0;
    }
  }

  else
  {
    v2 = 0;
  }

  objc_autoreleasePoolPop(v3);
  return v2;
}

uint64_t _UTTypeCopyPedigree(const __CFString *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _UTTypeCopyPedigreeSet(a1);
  if (v3)
  {
    v4 = v3;
    if ([v3 count] == 1 && _UTTypeIdentifierIsDynamic(a1))
    {

LABEL_7:
      v4 = [MEMORY[0x1E695DFD8] set];
    }
  }

  else
  {
    if (!a1)
    {
      goto LABEL_7;
    }

    if (_UTTypeIdentifierIsValid(a1))
    {
      goto LABEL_7;
    }

    v4 = [MEMORY[0x1E695DFD8] setWithObject:a1];
    if (!v4)
    {
      goto LABEL_7;
    }
  }

  v5 = [v4 allObjects];

  objc_autoreleasePoolPop(v2);
  return v5;
}

uint64_t _UTTypeCopyPedigreeSet(uint64_t a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 pedigree];
  }

  else
  {
    v5 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v5;
}

void **_UTCopyDeclaredTypeIdentifiers()
{
  v0 = objc_autoreleasePoolPush();
  if (_LSCurrentProcessMayMapDatabase())
  {
    v15 = 0;
    v12 = 0;
    v13 = 0;
    v14 = 0;
    v1 = +[_LSDServiceDomain defaultServiceDomain];
    v2 = LaunchServices::Database::Context::_get(&v12, v1, 0);

    if (v2)
    {
      v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
      v4 = *v2;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = ___UTCopyDeclaredTypeIdentifiers_block_invoke;
      v9[3] = &unk_1E6A1E7E8;
      v11 = v2;
      v5 = v3;
      v10 = v5;
      _UTEnumerateActiveTypes(v4, v9);
      v2 = v5;
    }

    if (v12 && v14 == 1)
    {
      _LSContextDestroy(v12);
    }

    v6 = v13;
    v12 = 0;
    v13 = 0;

    v14 = 0;
    v7 = v15;
    v15 = 0;
  }

  else
  {
    v2 = 0;
  }

  objc_autoreleasePoolPop(v0);
  return v2;
}

void *_UTTypeCopyDescriptionLocalizationDictionary(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = objc_autoreleasePoolPush();
  v3 = [UTTypeRecord typeRecordWithIdentifier:a1];
  v4 = v3;
  if (v3)
  {
    v5 = [v3 _localizedDescription];
    v6 = [v5 allStringValues];

    if (v6)
    {
      v7 = v6;
    }
  }

  else
  {
    v6 = 0;
  }

  objc_autoreleasePoolPop(v2);
  return v6;
}

uint64_t _UTTypeCopyKindStringForNonMaterializedItem(LaunchServices::BindingEvaluator *a1, void *a2, void *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6 = objc_autoreleasePoolPush();
  LaunchServices::BindingEvaluator::CreateWithUTI(a1, 0, v13);
  v12 = 0;
  v7 = LaunchServices::BindingEvaluator::getLocalizedKindString(v13, 0, a2, &v12);
  v8 = v12;
  v9 = v8;
  if (a3 && !v7)
  {
    *a3 = v8;
  }

  LaunchServices::BindingEvaluator::~BindingEvaluator(v13);
  objc_autoreleasePoolPop(v6);

  v10 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t _UTTypeCopyKindStringDictionaryForNonMaterializedItem(LaunchServices::BindingEvaluator *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  LaunchServices::BindingEvaluator::CreateWithUTI(a1, 0, v11);
  v10 = 0;
  v5 = LaunchServices::BindingEvaluator::getLocalizedKindStringDictionary(v11, 0, &v10);
  v6 = v10;
  v7 = v6;
  if (a2 && !v5)
  {
    *a2 = v6;
  }

  LaunchServices::BindingEvaluator::~BindingEvaluator(v11);
  objc_autoreleasePoolPop(v4);

  v8 = *MEMORY[0x1E69E9840];
  return v5;
}

CFTypeRef _LSCreateDeviceTypeIdentifierWithModelCodeAndColorComponents(uint64_t a1, unsigned __int8 *a2)
{
  v4 = _LSGetUTTypeClass();
  if (v4)
  {
    v5 = v4;
    if (a1)
    {
      if (a2)
      {
        v6 = softLink_UTHardwareColorMakeWithRGBComponents ? softLink_UTHardwareColorMakeWithRGBComponents(*a2, a2[1], a2[2]) : 0;
        v7 = [v5 _typeWithDeviceModelCode:a1 enclosureColor:v6];
      }

      else
      {
        v7 = [v4 _typeWithDeviceModelCode:a1];
      }
    }

    else
    {
      v7 = [v4 _typeOfCurrentDevice];
    }

    v8 = v7;
    if (v7)
    {
      v9 = [v7 identifier];

      if (v9)
      {
        return v9;
      }
    }
  }

  return CFRetain(@"public.device");
}

uint64_t (*init_UTHardwareColorMakeWithRGBComponents(uint64_t a1, uint64_t a2, uint64_t a3))(unsigned __int8, unsigned __int8, unsigned __int8)
{
  v6 = UniformTypeIdentifiersLibrary(void)::frameworkLibrary;
  if (!UniformTypeIdentifiersLibrary(void)::frameworkLibrary)
  {
    v6 = dlopen("/System/Library/Frameworks/UniformTypeIdentifiers.framework/UniformTypeIdentifiers", 2);
    UniformTypeIdentifiersLibrary(void)::frameworkLibrary = v6;
  }

  result = dlsym(v6, "_UTHardwareColorMakeWithRGBComponents");
  softLink_UTHardwareColorMakeWithRGBComponents = result;
  if (result)
  {

    return result(a1, a2, a3);
  }

  return result;
}

id LSGetCSUIAUpcallManager(void *a1)
{
  if (LSGetCSUIAUpcallManager_onceToken != -1)
  {
    LSGetCSUIAUpcallManager_cold_1();
  }

  v2 = LSGetCSUIAUpcallManager_manager;
  if (a1 && !LSGetCSUIAUpcallManager_manager)
  {
    *a1 = LSGetCSUIAUpcallManager_error;
    v2 = LSGetCSUIAUpcallManager_manager;
  }

  return v2;
}

void __LSGetCSUIAUpcallManager_block_invoke()
{
  v17[1] = *MEMORY[0x1E69E9840];
  v0 = [MEMORY[0x1E696AAE8] bundleWithPath:@"/System/Library/CoreServices/CSUIAUpcallBundle.bundle"];
  v1 = [v0 principalClass];
  if (!v1)
  {
    v10 = *MEMORY[0x1E696A798];
    v16 = *MEMORY[0x1E696A278];
    v17[0] = @"couldn't load upcall bundle principal class";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v17 forKeys:&v16 count:1];
    v6 = v10;
    v7 = 5;
    v8 = v5;
    v9 = 20;
    goto LABEL_5;
  }

  v2 = objc_alloc_init(v1);
  v3 = LSGetCSUIAUpcallManager_manager;
  LSGetCSUIAUpcallManager_manager = v2;

  if (!LSGetCSUIAUpcallManager_manager)
  {
    v4 = *MEMORY[0x1E696A798];
    v14 = *MEMORY[0x1E696A278];
    v15 = @"couldn't instantiate upcall bundle principal class";
    v5 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v15 forKeys:&v14 count:1];
    v6 = v4;
    v7 = 45;
    v8 = v5;
    v9 = 25;
LABEL_5:
    v11 = _LSMakeNSErrorImpl(v6, v7, v8, "LSGetCSUIAUpcallManager_block_invoke", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/CSUIUpcall/CoreServicesUIUpcallEmbedded.m", v9);
    v12 = LSGetCSUIAUpcallManager_error;
    LSGetCSUIAUpcallManager_error = v11;
  }

  v13 = *MEMORY[0x1E69E9840];
}

uint64_t _UTTypeAdd(void *a1, __int128 *a2, _DWORD *a3)
{
  v5 = a1;
  v6 = v5;
  if (v5 && [(_LSDatabase *)v5 store])
  {
    v13 = a2[2];
    v14 = a2[3];
    v15 = a2[4];
    v16 = a2[5];
    v11 = *a2;
    v12 = a2[1];
    [(_LSDatabase *)v6 store];
    [(_LSDatabase *)v6 schema];
    CSBindableKeyMapNextKey();
    [(_LSDatabase *)v6 store];
    v7 = *([(_LSDatabase *)v6 schema]+ 16);
    v8 = CSStoreAllocUnitWithData();
    if (v8)
    {
      [(_LSDatabase *)v6 store];
      [(_LSDatabase *)v6 schema];
      CSMapSetValue();
      [(_LSDatabase *)v6 setTypeDeclarationsChanged:?];
      if (a3)
      {
        *a3 = v8;
      }

      if ((*(a2 + 8) & 0x20) != 0)
      {
        [(_LSDatabase *)v6 store];
        _CSStoreGarbageCollect();
      }

      v9 = 0;
    }

    else
    {
      v9 = 4294957803;
    }
  }

  else
  {
    v9 = 4294967246;
  }

  return v9;
}

uint64_t _UTTypeAddWithDeclarationDictionary()
{
  v0 = MEMORY[0x1EEE9AC00]();
  v120 = v1;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  cf = v8;
  v152 = *MEMORY[0x1E69E9840];
  v9 = v0;
  v121 = v7;
  v139 = 0;
  v149 = kLSVersionNumberNull;
  v150 = unk_1817E90C0;
  v122 = v9;
  if ((v5 & 0x2000) != 0)
  {
    v10 = _LSGetPlugin(v9, v3);
    if (!v10)
    {
      goto LABEL_5;
    }

    goto LABEL_3;
  }

  v10 = _LSBundleGet(v9, v3);
  if (v10)
  {
LABEL_3:
    v11 = *(v10 + 76);
    v149 = *(v10 + 60);
    v150 = v11;
    v119 = *(v10 + 12);
  }

LABEL_5:
  _LSBindingListBufferInit(v9, v138);
  v136 = 0u;
  v137 = 0u;
  v134 = 0u;
  v135 = 0u;
  *v132 = 0u;
  v133 = 0u;
  if (!cf || (v12 = CFGetTypeID(cf), v12 != CFDictionaryGetTypeID()))
  {
    active = 0;
    goto LABEL_134;
  }

  v132[2] = v5;
  TypeID = CFStringGetTypeID();
  Value = CFDictionaryGetValue(cf, @"UTTypeIdentifier");
  v15 = Value;
  if (!Value || CFGetTypeID(Value) != TypeID || !_UTTypeIdentifierIsDeclarable(v15))
  {
    goto LABEL_133;
  }

  v132[3] = _LSDatabaseCreateStringForCFString(v9, v15, 1);
  if ((v132[2] & 0x20) != 0)
  {
    v16 = v9;
    [(_LSDatabase *)v9 store];
    _CSStringMakeConst();
  }

  v17 = &dword_1E6A1EDC8;
  v18 = 48;
  do
  {
    v19 = *(v17 - 1);
    Length = CFStringGetLength(v19);
    if (CFStringGetLength(v15) > Length)
    {
      v153.location = 0;
      v153.length = Length;
      if (CFStringCompareWithOptions(v15, v19, v153, 1uLL) == kCFCompareEqualTo)
      {
        v132[2] |= *v17;
      }
    }

    v17 += 4;
    v18 -= 16;
  }

  while (v18);
  v21 = CFNumberGetTypeID();
  v22 = CFDictionaryGetValue(cf, @"UTTypeVersion");
  v23 = v22;
  if (v22 && CFGetTypeID(v22) == v21)
  {
    LODWORD(v140) = 0;
    CFNumberGetValue(v23, kCFNumberSInt32Type, &v140);
    LODWORD(v133) = v140;
    v132[2] |= 0x100u;
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_26;
    }
  }

  else
  {
    LODWORD(v133) = 0;
    if ((v5 & 0x20) == 0)
    {
      goto LABEL_26;
    }
  }

  v24 = CFBooleanGetTypeID();
  v25 = CFDictionaryGetValue(cf, @"UTTypeIsWildcard");
  v26 = v25;
  if (v25 && CFGetTypeID(v25) == v24 && CFBooleanGetValue(v26))
  {
    v132[2] |= 0x200u;
  }

LABEL_26:
  v27 = CFDictionaryGetValue(cf, @"UTTypeOneTapOpenable");
  v28 = v27;
  if (v27)
  {
    v29 = CFGetTypeID(v27);
    v30 = v29 == CFBooleanGetTypeID() && CFBooleanGetValue(v28) != 0;
    v31 = CFGetTypeID(v28);
    if (v31 == CFArrayGetTypeID())
    {
      v32 = MEMORY[0x1E696AD98];
      dyld_get_active_platform();
      v33 = [v32 numberWithUnsignedInt:dyld_get_base_platform()];
      v34 = [(__CFBoolean *)v28 containsObject:v33];

      if (((v34 | v30) & 1) == 0)
      {
        goto LABEL_35;
      }

      goto LABEL_34;
    }

    if (v30)
    {
LABEL_34:
      v132[2] |= 0x8000u;
    }
  }

LABEL_35:
  v35 = CFArrayGetTypeID();
  v36 = CFDictionaryGetValue(cf, @"UTTypeIconFiles");
  v37 = v36;
  if (v36 && CFGetTypeID(v36) == v35)
  {
    Count = CFArrayGetCount(v37);
    if (Count >= 1)
    {
      v39 = 0;
      v40 = 1;
      do
      {
        v41 = CFStringGetTypeID();
        ValueAtIndex = CFArrayGetValueAtIndex(v37, v40 - 1);
        v43 = ValueAtIndex;
        if (ValueAtIndex && CFGetTypeID(ValueAtIndex) == v41)
        {
          *(&v133 + v39++ + 3) = _LSDatabaseCreateStringForCFString(v122, v43, 0);
        }

        if (v40 >= Count)
        {
          break;
        }

        ++v40;
      }

      while (v39 < 8);
    }
  }

  else
  {
    v44 = CFStringGetTypeID();
    v45 = CFDictionaryGetValue(cf, @"UTTypeIconFile");
    v46 = v45;
    if (v45 && CFGetTypeID(v45) == v44)
    {
      HIDWORD(v133) = _LSDatabaseCreateStringForCFString(v122, v46, 0);
    }
  }

  v47 = CFStringGetTypeID();
  v48 = CFDictionaryGetValue(cf, @"UTTypeIconName");
  v49 = v48;
  if (v48 && CFGetTypeID(v48) == v47)
  {
    HIDWORD(v135) = _LSDatabaseCreateStringForCFString(v122, v49, 0);
  }

  v50 = CFStringGetTypeID();
  v51 = CFDictionaryGetValue(cf, @"UTTypeGlyphName");
  v52 = v51;
  if (v51 && CFGetTypeID(v51) == v50)
  {
    LODWORD(v136) = _LSDatabaseCreateStringForCFString(v122, v52, 0);
  }

  v53 = CFDictionaryGetTypeID();
  v54 = CFDictionaryGetValue(cf, @"UTTypeIcons");
  v55 = v54;
  if (v54)
  {
    if (CFGetTypeID(v54) == v53)
    {
      v56 = v55;
    }

    else
    {
      v56 = 0;
    }
  }

  else
  {
    v56 = 0;
  }

  DWORD1(v136) = _LSPlistAdd(v122, v56);
  v57 = v122;
  v58 = v121;
  v59 = v57;
  v60 = v58;
  v61 = CFStringGetTypeID();
  v62 = CFDictionaryGetValue(cf, @"UTTypeDescription");
  v63 = v62;
  if (v62 && CFGetTypeID(v62) == v61)
  {
    v64 = v63;
    v65 = [v60 objectForKeyedSubscript:v64];
    v66 = LaunchServices::LocalizedString::Add(v59, v65, v64);
  }

  else
  {
    v66 = 0;
  }

  *(&v133 + 4) = __PAIR64__(v66, v3);
  v67 = CFDictionaryGetValue(cf, @"_LSBundleLibraryDelegate");
  v68 = CFDictionaryGetValue(cf, @"UTKEXTIdentifier");
  if (v68)
  {
    v132[2] |= 0x80u;
  }

  DWORD2(v136) = _LSDatabaseCreateStringForCFString(v59, v67, 0);
  HIDWORD(v136) = _LSDatabaseCreateStringForCFString(v59, v68, 0);
  if (DWORD2(v136))
  {
    v69 = CFStringGetTypeID();
    v70 = CFDictionaryGetValue(cf, *MEMORY[0x1E695E4F0]);
    v71 = v70;
    if (v70 && CFGetTypeID(v70) == v69)
    {
      v72 = v132[2];
      v73 = CFStringGetLength(v71);
      if (v73 > CFStringGetLength(@"com.apple."))
      {
        v154.length = CFStringGetLength(@"com.apple.");
        v154.location = 0;
        if (CFStringCompareWithOptions(v71, @"com.apple.", v154, 1uLL) == kCFCompareEqualTo)
        {
          v74 = v132[2] | 4;
LABEL_73:
          v132[2] = v74;
          goto LABEL_74;
        }
      }
    }

    else
    {
      v72 = v132[2];
    }

    v74 = v72 & 0xFFFFFFFB;
    goto LABEL_73;
  }

LABEL_74:
  *&v137 = 0;
  v75 = CFDictionaryGetTypeID();
  v76 = CFDictionaryGetValue(cf, @"UTTypeTagSpecification");
  v77 = v76;
  if (!v76 || CFGetTypeID(v76) != v75)
  {
    LOBYTE(v78) = 0;
LABEL_97:
    _LSBindingListBufferReset(v59, v138);
    v95 = CFDictionaryGetValue(cf, @"UTTypeConformsTo");
    if (!v95)
    {
      goto LABEL_113;
    }

    v96 = v59;
    v97 = *([(_LSDatabase *)v59 schema]+ 216);
    v98 = CFGetTypeID(v95);
    if (v98 == CFStringGetTypeID())
    {
      if ((_LSBindingListBufferAppendNSString(v59, v138, v97, v95, 1) & 1) == 0)
      {
        goto LABEL_133;
      }

      v99 = 1;
      if ((v78 & 1) == 0)
      {
        goto LABEL_121;
      }

      goto LABEL_114;
    }

    v100 = CFGetTypeID(v95);
    if (v100 == CFArrayGetTypeID())
    {
      v126 = 0u;
      v127 = 0u;
      v124 = 0u;
      v125 = 0u;
      v101 = v95;
      v102 = [v101 countByEnumeratingWithState:&v124 objects:v147 count:16];
      v99 = v102 != 0;
      if (v102)
      {
        v103 = *v125;
        while (2)
        {
          for (i = 0; i != v102; ++i)
          {
            if (*v125 != v103)
            {
              objc_enumerationMutation(v101);
            }

            if ((_LSBindingListBufferAppendNSString(v59, v138, v97, *(*(&v124 + 1) + 8 * i), 1) & 1) == 0)
            {

              goto LABEL_133;
            }
          }

          v102 = [v101 countByEnumeratingWithState:&v124 objects:v147 count:16];
          if (v102)
          {
            continue;
          }

          break;
        }
      }

      if ((v78 & 1) == 0)
      {
        goto LABEL_121;
      }
    }

    else
    {
LABEL_113:
      v99 = 0;
      if ((v78 & 1) == 0)
      {
        goto LABEL_121;
      }
    }

LABEL_114:
    if ((v132[2] & 4) != 0 || (_LSMakeVersionNumber(13, 1, 0, v146), v140 = v149, v141 = v150, v151[0] = v146[0], v151[1] = v146[1], _LSVersionNumberCompare(&v140, v151) != -1) || v99)
    {
LABEL_121:
      active = _LSBindingListCreate(v59, v138, &v137 + 1);
      if (!active)
      {
        v110 = CFStringGetTypeID();
        v111 = CFDictionaryGetValue(cf, @"UTTypeReferenceURL");
        v112 = v111;
        if (v111 && CFGetTypeID(v111) == v110)
        {
          DWORD2(v137) = _LSDatabaseCreateStringForCFString(v59, v112, 0);
        }

        v113 = CFStringGetTypeID();
        v114 = CFDictionaryGetValue(cf, @"_LSReferenceAccessoryResourcePath");
        v115 = v114;
        if (v114 && CFGetTypeID(v114) == v113)
        {
          HIDWORD(v137) = _LSDatabaseCreateStringForCFString(v59, v115, 0);
        }

        v142 = v134;
        v143 = v135;
        v144 = v136;
        v145 = v137;
        v140 = *v132;
        v141 = v133;
        active = _UTTypeAdd(v59, &v140, &v139);
        if (!active)
        {
          active = _LSBindableActivate(v59, v139);
          if (!active)
          {
            active = _UTUpdateActiveTypeForIdentifier(v59, v132[3]);
          }
        }
      }

      goto LABEL_134;
    }

    v105 = _LSDefaultLog();
    if (os_log_type_enabled(v105, OS_LOG_TYPE_ERROR))
    {
      v106 = _LSDatabaseGetNSStringFromString(v59);
      v107 = _LSDatabaseGetNSStringFromString(v59);
      _UTTypeAddWithDeclarationDictionary_cold_1(v106, v107, v151, v105);
    }

    v108 = v59;
    v109 = [(_LSDatabase *)v59 schema];
    if (_LSBindingListBufferAppendNSString(v59, v138, *(v109 + 216), @"public.data", 1))
    {
      v132[2] |= 0x400u;
      goto LABEL_121;
    }

LABEL_133:
    active = 4294956479;
    goto LABEL_134;
  }

  v78 = 0;
  v79 = 1;
  v118 = v77;
  do
  {
    v80 = v59;
    v81 = *([(_LSDatabase *)v59 schema]+ 104 * v79 + 216);
    v82 = v59;
    v83 = *([(_LSDatabase *)v59 schema]+ 104 * v79 + 220);
    v84 = v59;
    [(_LSDatabase *)v59 store];
    v85 = _CSStringCopyCFString();
    if (v85)
    {
      v86 = CFDictionaryGetValue(v77, v85);
      v87 = v86;
      if (v86)
      {
        v88 = CFGetTypeID(v86);
        if (v88 == CFStringGetTypeID())
        {
          if ((_LSBindingListBufferAppendNSString(v59, v138, v81, v87, v83 != 0) & 1) == 0)
          {
LABEL_132:
            CFRelease(v85);
            goto LABEL_133;
          }

          v78 |= v79 == 1;
        }

        else
        {
          v89 = CFGetTypeID(v87);
          if (v89 == CFArrayGetTypeID())
          {
            v130 = 0u;
            v131 = 0u;
            v128 = 0u;
            v129 = 0u;
            v90 = v87;
            v91 = [v90 countByEnumeratingWithState:&v128 objects:v148 count:16];
            if (v91)
            {
              v92 = *v129;
              while (2)
              {
                for (j = 0; j != v91; ++j)
                {
                  if (*v129 != v92)
                  {
                    objc_enumerationMutation(v90);
                  }

                  if ((_LSBindingListBufferAppendNSString(v59, v138, v81, *(*(&v128 + 1) + 8 * j), v83 != 0) & 1) == 0)
                  {

                    goto LABEL_132;
                  }

                  v78 |= v79 == 1;
                }

                v91 = [v90 countByEnumeratingWithState:&v128 objects:v148 count:16];
                if (v91)
                {
                  continue;
                }

                break;
              }
            }

            v77 = v118;
          }
        }
      }

      CFRelease(v85);
    }

    ++v79;
  }

  while (v79 != 5);
  active = _LSBindingListCreate(v59, v138, &v137);
  if (!active)
  {
    goto LABEL_97;
  }

LABEL_134:
  if (v120)
  {
    *v120 = v139;
  }

  _LSBindingListBufferReset(v122, v138);

  v116 = *MEMORY[0x1E69E9840];
  return active;
}

uint64_t _UTUpdateActiveTypeForIdentifier(void *a1, int a2)
{
  v3 = a1;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v36 = 0;
  v37 = &v36;
  v38 = 0x2020000000;
  v39 = 0;
  v32 = 0;
  v33 = &v32;
  v34 = 0x2020000000;
  v35 = 0;
  v28 = 0;
  v29 = &v28;
  v30 = 0x2020000000;
  v31 = 0;
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = ___UTUpdateActiveTypeForIdentifier_block_invoke;
  v23[3] = &unk_1E6A1EE98;
  v23[4] = &v28;
  v23[5] = &v24;
  v23[6] = &v36;
  v23[7] = &v32;
  v23[8] = &v40;
  _UTEnumerateTypesForIdentifier(v3, a2, v23);
  v4 = *(v37 + 6);
  if (!v4)
  {
    goto LABEL_22;
  }

  if (*(v29 + 6))
  {
    v5 = v33;
    v6 = *(v33 + 6);
    if ((v6 & 0x820) == 0)
    {
      v7 = v6 | 0x800;
      *(v33 + 6) = v7;
      *(v5 + 6) = v25[3] & 0x8000 | v7;
      [(_LSDatabase *)v3 store];
      v8 = *([(_LSDatabase *)v3 schema]+ 16);
      v9 = *(v37 + 6);
      _CSStoreWriteToUnit();
      v4 = *(v37 + 6);
    }
  }

  if (v4 == *(v41 + 6))
  {
LABEL_22:
    v13 = 0;
    goto LABEL_23;
  }

  v10 = v3;
  v11 = _UTTypeGet(v10);
  if (!v11)
  {
    goto LABEL_34;
  }

  v12 = v11[2];
  if (v12)
  {

LABEL_18:
    if (*(v41 + 6))
    {
      v16 = v10;
      v17 = _UTTypeGet(v16);
      if (v17)
      {
        v18 = v17[2];
        if ((v18 & 1) == 0)
        {
          v13 = 0;
          goto LABEL_33;
        }

        v45 = v18 & 0xFFFFFFFE;
        if (!v17[20])
        {
          goto LABEL_37;
        }

        v13 = _LSBindingListDeactivate();
        if (v13)
        {
          goto LABEL_33;
        }

        v17 = _UTTypeGet(v16);
        if (v17)
        {
LABEL_37:
          if (!v17[21] || (v13 = _LSBindingListDeactivate(), !v13))
          {
            v21 = objc_autoreleasePoolPush();
            v44 = 0;
            [(_LSDatabase *)v16 store];
            v22 = *([(_LSDatabase *)v16 schema]+ 16);
            if (_CSStoreWriteToUnit())
            {
              v13 = 0;
            }

            else
            {
              v13 = _LSGetOSStatusFromNSError(v44);
            }

            objc_autoreleasePoolPop(v21);
          }

          goto LABEL_33;
        }
      }

      goto LABEL_34;
    }

    goto LABEL_22;
  }

  v45 = v12 | 1;
  if (v11[20])
  {
    v13 = _LSBindingListActivate();
    if (v13)
    {
LABEL_33:

      goto LABEL_23;
    }

    v11 = _UTTypeGet(v10);
    if (!v11)
    {
LABEL_34:
      v13 = 4294956481;
      goto LABEL_33;
    }
  }

  if (v11[21])
  {
    v13 = _LSBindingListActivate();
    if (v13)
    {
      goto LABEL_33;
    }
  }

  v14 = objc_autoreleasePoolPush();
  v44 = 0;
  [(_LSDatabase *)v10 store];
  v15 = *([(_LSDatabase *)v10 schema]+ 16);
  if (_CSStoreWriteToUnit())
  {
    v13 = 0;
  }

  else
  {
    v13 = _LSGetOSStatusFromNSError(v44);
  }

  objc_autoreleasePoolPop(v14);
  if (!v13)
  {
    goto LABEL_18;
  }

LABEL_23:
  v19 = [(_LSDatabase *)v3 schema];
  _LSSchemaCacheWrite(v19, &__block_literal_global_77);
  _Block_object_dispose(&v24, 8);
  _Block_object_dispose(&v28, 8);
  _Block_object_dispose(&v32, 8);
  _Block_object_dispose(&v36, 8);
  _Block_object_dispose(&v40, 8);

  return v13;
}

void sub_1817A7718(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Block_object_dispose((v29 - 112), 8);

  _Unwind_Resume(a1);
}

uint64_t _UTTypeRemove(void *a1, int a2)
{
  v3 = a1;
  [(_LSDatabase *)v3 store];
  v4 = _UTTypeGet(v3);
  if (v4)
  {
    v5 = v4[3];
    v16 = v4[2];
    v17 = v5;
    v6 = v4[5];
    v18 = v4[4];
    v19 = v6;
    v14 = *v4;
    *v15 = v4[1];
    [(_LSDatabase *)v3 store];
    [(_LSDatabase *)v3 schema];
    CSMapRemoveValue();
    if (HIDWORD(v14))
    {
      active = _LSBindableDeactivate(v3, a2);
      if (BYTE8(v14))
      {
        active = _UTUpdateActiveTypeForIdentifier(v3, SHIDWORD(v14));
      }

      v8 = active;
    }

    else
    {
      v8 = 0;
    }

    if (v19)
    {
      v8 = _LSBindingListDeactivate();
      _LSBindingListDestroy();
    }

    if (DWORD1(v19))
    {
      v8 = _LSBindingListDeactivate();
      _LSBindingListDestroy();
    }

    [(_LSDatabase *)v3 store];
    _CSStringRelease();
    v9 = v3;
    v10 = v9;
    if (BYTE10(v14))
    {
      [(_LSDatabase *)v9 store];
      v20 = MEMORY[0x1E69E9820];
      v21 = 3221225472;
      v22 = ___ZN14LaunchServicesL47UTTypeReleaseLocalizedDescriptionOrDescriptionsEP11_LSDatabasePK11_UTTypeData_block_invoke;
      v23 = &unk_1E6A18FC8;
      v24 = v10;
      _CSArrayEnumerateAllValues();
      [(_LSDatabase *)v24 store];
      _CSArrayDispose();
    }

    else
    {
      LaunchServices::LocalizedString::Remove(v9, LODWORD(v15[1]));
    }

    for (i = 0; i != 32 && *(&v15[1] + i + 4); i += 4)
    {
      [(_LSDatabase *)v10 store];
      _CSStringRelease();
    }

    [(_LSDatabase *)v10 store];
    _CSStringRelease();
    [(_LSDatabase *)v10 store];
    _CSStringRelease();
    [(_LSDatabase *)v10 store];
    _CSStringRelease();
    [(_LSDatabase *)v10 store];
    _CSStringRelease();
    if (DWORD1(v18))
    {
      _LSPlistRemove(v10, SDWORD1(v18));
    }

    v12 = *([(_LSDatabase *)v10 schema]+ 16);
    CSStoreFreeUnit();
    [(_LSDatabase *)v10 setTypeDeclarationsChanged:?];
  }

  else
  {
    v8 = 4294957797;
  }

  return v8;
}

uint64_t _UTTypeComparePriority(void *a1, _DWORD *a2, void *a3, _DWORD *a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a3;
  if (a2 == a4)
  {
LABEL_36:
    v11 = 0;
    goto LABEL_37;
  }

  v9 = a2[2];
  v10 = a4[2];
  if ((v9 & 0x1000) != 0 && (v10 & 0x1000) == 0)
  {
    goto LABEL_4;
  }

  if ((v9 & 0x1000) == 0 && (v10 & 0x1000) != 0)
  {
LABEL_7:
    v11 = 1;
    goto LABEL_37;
  }

  if (((v10 ^ v9) & 0x40) != 0)
  {
    v16 = (a2[2] & 0x40) == 0;
    goto LABEL_17;
  }

  v12 = a2[2] & 0x820;
  v13 = v10 & 0x820;
  if (a2[3] != a4[3])
  {
    goto LABEL_23;
  }

  v14 = a2[2] & 0x10;
  v15 = v10 & 0x10;
  if (v14 != v15)
  {
    if (!v12 || v14)
    {
      if (!v13 || v15)
      {
        goto LABEL_11;
      }

      if (v14)
      {
        if (_UTTypeTagsAreSuperset(v7, a2, a4))
        {
          goto LABEL_7;
        }

        if (!v12)
        {
          goto LABEL_24;
        }

        goto LABEL_32;
      }
    }

    if ((_UTTypeTagsAreSuperset(v7, a4, a2) & 1) == 0)
    {
      goto LABEL_23;
    }

LABEL_4:
    v11 = -1;
    goto LABEL_37;
  }

LABEL_11:
  if (v14 && !v15)
  {
    goto LABEL_7;
  }

  if (v15 && !v14)
  {
    goto LABEL_4;
  }

LABEL_23:
  if ((v12 != 0) != (v13 != 0))
  {
LABEL_24:
    if (v12)
    {
      v11 = 1;
    }

    else
    {
      v11 = -1;
    }

    goto LABEL_37;
  }

LABEL_32:
  v17 = a4[2] ^ a2[2];
  if ((v17 & 2) != 0)
  {
    v16 = (a2[2] & 2) == 0;
    goto LABEL_17;
  }

  if ((v17 & 4) != 0)
  {
    v16 = (a2[2] & 4) == 0;
LABEL_17:
    if (v16)
    {
      v11 = -1;
    }

    else
    {
      v11 = 1;
    }

    goto LABEL_37;
  }

  if (a2[5] == a4[5] && (v17 & 0x2000) == 0)
  {
    goto LABEL_36;
  }

  LaunchServices::BindingEvaluator::BindingEvaluator(v27);
  v20 = v7;
  v26.db = v20;
  v25 = 0;
  UltimateDeclaringBundle = _UTTypeGetUltimateDeclaringBundle(v20, a2, &v25);
  v24 = 0;
  v22 = _UTTypeGetUltimateDeclaringBundle(v8, a4, &v24);
  if (UltimateDeclaringBundle && v22)
  {
    v11 = LaunchServices::BindingEvaluator::compareBundles(v27, &v26, v25, UltimateDeclaringBundle, v24, v22);

    LaunchServices::BindingEvaluator::~BindingEvaluator(v27);
    goto LABEL_37;
  }

  v23 = (UltimateDeclaringBundle | v22) != 0;
  v11 = UltimateDeclaringBundle ? 1 : -1;

  LaunchServices::BindingEvaluator::~BindingEvaluator(v27);
  if (!v23)
  {
    goto LABEL_36;
  }

LABEL_37:

  v18 = *MEMORY[0x1E69E9840];
  return v11;
}

void sub_1817A7D1C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, ...)
{
  va_start(va, a4);

  LaunchServices::BindingEvaluator::~BindingEvaluator(va);
  _Unwind_Resume(a1);
}

uint64_t _UTTypeTagsAreSuperset(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  v17[0] = 0;
  v17[1] = v17;
  v17[2] = 0x5812000000;
  v17[3] = __Block_byref_object_copy__54;
  v17[4] = __Block_byref_object_dispose__54;
  v17[5] = &unk_1818533FF;
  memset(v18, 0, sizeof(v18));
  v19 = 1065353216;
  v7 = *(a2 + 80);
  if (v7)
  {
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 3221225472;
    v16[2] = ___UTTypeTagsAreSuperset_block_invoke;
    v16[3] = &unk_1E6A1C740;
    v16[4] = v17;
    _LSBindingListEnumerate(v5, v7, v16);
  }

  v12 = 0;
  v13 = &v12;
  v14 = 0x2020000000;
  v8 = 1;
  v15 = 1;
  v9 = *(a3 + 80);
  if (v9)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___UTTypeTagsAreSuperset_block_invoke_2;
    v11[3] = &unk_1E6A1EFB0;
    v11[4] = v17;
    v11[5] = &v12;
    _LSBindingListEnumerate(v6, v9, v11);
    v8 = *(v13 + 24);
  }

  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(v17, 8);
  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::~__hash_table(v18);

  return v8 & 1;
}

void sub_1817A7EF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va1, a7);
  va_start(va, a7);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  v19 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  std::__hash_table<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,std::unordered_map<unsigned int,BOOL>>>>::~__hash_table(v8 + 48);

  _Unwind_Resume(a1);
}

uint64_t _UTTypeGetUltimateDeclaringBundle(void *a1, uint64_t a2, int *a3)
{
  v5 = a1;
  v6 = v5;
  v7 = (a2 + 20);
  if ((*(a2 + 9) & 0x20) != 0)
  {
    v7 = (_LSGetPlugin(v5, *v7) + 224);
  }

  v8 = *v7;
  if (!*v7)
  {
    v9 = 0;
    if (!a3)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v9 = _LSBundleGet(v6, *v7);
  if (a3)
  {
LABEL_5:
    *a3 = v8;
  }

LABEL_6:

  return v9;
}

uint64_t _UTGetActiveTypeWithIconForNSStringIdentifier(void *a1, void *a2, _DWORD *a3)
{
  v5 = a1;
  v6 = a2;
  v19 = 0;
  v20 = &v19;
  v21 = 0x2020000000;
  v22 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  active = _UTGetActiveTypeForCFStringIdentifier(v5, v6, &v22);
  v7 = v16[3];
  if (v7 && !*(v7 + 28))
  {
    v8 = _UTTypeSearchConformsToTypesCommon(v5, *(v20 + 6), 32, typeHasIconFile, 0, v20 + 6);
    v16[3] = v8;
  }

  else if (UTTypeIsDynamic(v6))
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___UTGetActiveTypeWithIconForNSStringIdentifier_block_invoke;
    v11[3] = &unk_1E6A1EE70;
    v13 = &v15;
    v12 = v5;
    v14 = &v19;
    _UTDynamicEnumerateParentIdentifiers(v6, v11);
  }

  v9 = v16[3];
  if (v9 && !*(v9 + 28))
  {
    v9 = 0;
    v16[3] = 0;
  }

  else if (a3)
  {
    *a3 = *(v20 + 6);
  }

  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v9;
}

void sub_1817A816C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t _UTTypeGetTypeUnixExecutable(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"public.unix-executable", (*(v2 + 1616) + 92));

  return CachedType;
}

uint64_t _UTTypeGetTypeLocalizableNameBundle(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"com.apple.localizable-name-bundle", (*(v2 + 1616) + 100));

  return CachedType;
}

uint64_t _UTTypeGetTypePackage(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"com.apple.package", (*(v2 + 1616) + 112));

  return CachedType;
}

uint64_t _UTTypeGetTypeResolvable(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"com.apple.resolvable", (*(v2 + 1616) + 120));

  return CachedType;
}

uint64_t _UTTypeGetTypeAVCHDCollection(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"public.avchd-collection", (*(v2 + 1616) + 128));

  return CachedType;
}

uint64_t _UTTypeGetTypeVolume(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"public.volume", (*(v2 + 1616) + 136));

  return CachedType;
}

uint64_t _UTTypeGetTypeSymbolicLink(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"public.symlink", (*(v2 + 1616) + 140));

  return CachedType;
}

uint64_t _UTTypeGetTypeAliasFile(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"com.apple.alias-file", (*(v2 + 1616) + 144));

  return CachedType;
}

uint64_t _UTTypeSetGeneration(void *a1, uint64_t a2, int a3)
{
  result = _UTTypeGet(a1);
  if (result)
  {
    *(result + 4) = a3;
  }

  return result;
}

void _UTEnumerateActiveTypes(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  [(_LSDatabase *)v3 store];
  v5 = *([(_LSDatabase *)v3 schema]+ 16);
  v6 = v4;
  _CSStoreEnumerateUnits();
}

void _UTTypeGetVisualizationFunctions(unsigned int *(**a1)(void **this, LSContext *a2)@<X8>)
{
  *a1 = LaunchServices::UTIs::getSummary;
  a1[1] = LaunchServices::UTIs::display;
  a1[2] = LaunchServices::UTIs::copyBindingForVisualization;
}

unsigned int *LaunchServices::UTIs::getSummary(void **this, LSContext *a2)
{
  v3 = _UTTypeGet(*this);
  if (v3)
  {
    v4 = v3[3];
    [(_LSDatabase *)*this store];
    v3 = _CSStringCopyCFString();
  }

  return v3;
}

BOOL LaunchServices::UTIs::display(void **this, LSContext *a2, unsigned int a3, void *a4, CSStoreAttributedStringWriter *a5)
{
  v6 = a4;
  v7 = _UTTypeGet(*this);
  if (v7)
  {
    v8 = *this;
    if ((*(v7 + 9) & 0x20) != 0)
    {
      v9 = [v6 link:*(-[_LSDatabase schema](v8) + 1588) unit:*(v7 + 20)];
      [v6 write:@"plugin" string:v9];
    }

    else
    {
      v9 = [v6 link:*(-[_LSDatabase schema](v8) + 4) unit:*(v7 + 20)];
      [v6 write:@"bundle" string:v9];
    }

    [v6 write:@"uti" stringID:*(v7 + 12)];
    v10 = [MEMORY[0x1E696AD98] numberWithInt:*(v7 + 16)];
    [v6 write:@"version" number:v10];

    v11 = *this;
    v26 = MEMORY[0x1E69E9820];
    v27 = 3221225472;
    v28 = ___ZN14LaunchServices4UTIsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke;
    v29 = &unk_1E6A1EFD8;
    v12 = v6;
    v30 = v12;
    v31 = this;
    v32 = MEMORY[0x1865D71B0](&v26);
    v13 = v11;
    v14 = v13;
    if (*(v7 + 10))
    {
      [(_LSDatabase *)v13 store];
      v15 = *(v7 + 24);
      if (_CSArrayGetCount() != 1)
      {
        v23 = [MEMORY[0x1E696AAA8] currentHandler];
        v24 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void LaunchServices::UTTypeEnumerateFlavoredDisplayNames(__strong LSDatabaseRef, const _UTTypeData *, const F &) [F = void (^)(unsigned int, const LaunchServices::UTTypeDisplayNameFlavor &, unsigned char *)]"}];
        [(_LSDatabase *)v14 store];
        v25 = *(v7 + 24);
        [v23 handleFailureInFunction:v24 file:@"UTTypeCore.mm" lineNumber:143 description:{@"bogus array in %s, %zu elements", "UTTypeEnumerateFlavoredDisplayNames", _CSArrayGetCount(), v26, v27, v28, v29}];
      }

      [(_LSDatabase *)v14 store];
      v16 = *(v7 + 24);
      v33[0] = MEMORY[0x1E69E9820];
      v33[1] = 3221225472;
      v33[2] = ___ZN14LaunchServicesL35UTTypeEnumerateFlavoredDisplayNamesIU8__strongU13block_pointerFvjRKNS_23UTTypeDisplayNameFlavorEPhEEEvP11_LSDatabasePK11_UTTypeDataRKT__block_invoke;
      v33[3] = &__block_descriptor_40_e14_v24__0I8I12_16l;
      v33[4] = &v32;
      _CSArrayEnumerateAllValues();
    }

    else
    {
      LOBYTE(v33[0]) = 0;
      (v32)[2](v32, *(v7 + 24), &LaunchServices::_UTTypeAllDisplayNameFlavors, v33);
    }

    v17 = v12;
    [v17 beginFlags:@"flags" flags:*(v7 + 8)];
    [v17 flag:16 name:@"exported"];
    [v17 missingFlag:16 name:@"imported"];
    [v17 flag:1 name:@"active" color:32512];
    [v17 missingFlag:1 name:@"inactive" color:8355711];
    [v17 flag:2 name:@"public"];
    [v17 flag:32 name:@"core"];
    [v17 flag:4 name:@"apple-internal" color:255];
    [v17 flag:64 name:@"trusted" color:32512];
    [v17 missingFlag:64 name:@"untrusted" color:16711680];
    [v17 flag:8 name:@"rel-icon-path"];
    [v17 flag:128 name:@"KEXT-icon"];
    [v17 flag:256 name:@"has-version"];
    [v17 flag:512 name:@"is-wildcard"];
    [v17 flag:1024 name:@"synth-conformance" color:16744192];
    [v17 flag:2048 name:@"overrides-core-types" color:32614];
    [v17 flag:4096 name:@"invalid-redeclaration" color:16711680];
    [v17 flag:0x2000 name:@"declared-by-extension" color:16776960];
    [v17 flag:0x4000 name:@"vocabulary" color:0xFFFFLL];
    [v17 flag:0x8000 name:@"one-tap-openable" color:16711935];
    [v17 flag:0x10000 name:@"multiple-descriptions" color:16753920];
    [v17 endFlags];

    [v17 write:@"iconFiles" arrayIDs:v7 + 28 count:8];
    [v17 write:@"iconName" stringID:*(v7 + 60)];
    [v17 write:@"glyphName" stringID:*(v7 + 64)];
    [v17 childUnit:@"icons" table:*(-[_LSDatabase schema](*this) + 1600) unit:*(v7 + 68)];
    [v17 write:@"referenceAccessoryPath" stringID:*(v7 + 92)];
    [v17 write:@"delegate" stringID:*(v7 + 72)];
    [v17 write:@"kextName" stringID:*(v7 + 76)];
    if (!*(v7 + 88))
    {
      goto LABEL_17;
    }

    [(_LSDatabase *)*this store];
    v18 = _CSStringCopyCFString();
    if (v18)
    {
      v19 = [objc_alloc(MEMORY[0x1E695DFF8]) initWithString:v18];
      v20 = v18;
      if (v19)
      {
        v21 = [v17 linkURL:{v19, v18}];
        [v17 write:@"reference URL" string:v21];

LABEL_16:
LABEL_17:
        [v17 childUnit:@"conforms to" table:*(-[_LSDatabase schema](*this) + 1596) unit:*(v7 + 84)];
        [v17 childUnit:@"tags" table:*(-[_LSDatabase schema](*this) + 1596) unit:*(v7 + 80)];

        goto LABEL_18;
      }
    }

    else
    {
      v20 = @"-nil-";
    }

    [v17 write:@"reference URL" string:v20];
    goto LABEL_16;
  }

LABEL_18:

  return v7 != 0;
}

void ___ZN14LaunchServicesL47UTTypeReleaseLocalizedDescriptionOrDescriptionsEP11_LSDatabasePK11_UTTypeData_block_invoke(uint64_t a1, int a2, _LSDatabase *a3)
{
  if (a3)
  {
    LaunchServices::LocalizedString::Remove(*(a1 + 32), a3);
  }
}

uint64_t ___ZN14LaunchServicesL35UTTypeEnumerateFlavoredDisplayNamesIZNS_L54UTTypeEnumerateAvailableAndPresentFlavoredDisplayNamesIZL30_UTGetLocalizedDescriptionImplPK16UTTypeSearchInfoE3__0EEvP11_LSDatabasePK11_UTTypeDataRKT_EUljRKNS_23UTTypeDisplayNameFlavorEPhE_EEvS7_SA_SD__block_invoke(uint64_t result, int a2, _LSDatabase *a3, _BYTE *a4)
{
  if (a3)
  {
    v5 = a3;
    v6 = **(result + 32);
    result = LaunchServices::LocalizedString::Get(***v6, a3);
    if (result)
    {
      **(v6 + 8) = v5;
      *a4 = 1;
    }
  }

  return result;
}

void ___ZN14LaunchServices4UTIsL7displayEP9LSContextjjP29CSStoreAttributedStringWriter_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"localizedDescription%s", *(a3 + 16)];
  [*(a1 + 32) childUnit:v5 table:*(-[_LSDatabase schema](**(a1 + 40)) + 1604) unit:a2];
}

id LaunchServices::TypeEvaluator::Result::getTypeRecord(LaunchServices::TypeEvaluator::Result *this, LSContext *a2)
{
  if (*this)
  {
    v2 = [(LSRecord *)[_UTDeclaredTypeRecord alloc] _initWithContext:a2 tableID:*([(_LSDatabase *)a2->db schema]+ 16) unitID:*this];
  }

  else
  {
    v2 = [[_UTDynamicTypeRecord alloc] _initWithContext:a2 dynamicUTI:*(this + 2)];
  }

  return v2;
}

void LaunchServices::TypeEvaluator::setSniffIfNeeded(LaunchServices::TypeEvaluator *this, int a2)
{
  if (a2)
  {
    v2 = a2;
    if ([*this canIssueIO])
    {
      *(this + 8) = v2;
    }

    else
    {
      v4 = _LSDefaultLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_FAULT))
      {
        LaunchServices::TypeEvaluator::setSniffIfNeeded(v4);
      }
    }
  }
}

uint64_t LaunchServices::TypeEvaluator::getTypeUnit(uint64_t a1, void **a2, _DWORD *a3, void *a4)
{
  LaunchServices::TypeEvaluation::runEvaluator(a2, a1, a4, &v9);
  v6 = v12;
  if (v12 == 1)
  {
    if (a3)
    {
      *a3 = v9;
    }

    v7 = v10;
    v6 = 1;
    if (a4 && !v10)
    {
      _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -9499, 0, "getTypeUnit", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Type/UTTypeEvaluator.mm", 139);
      *a4 = v7 = 0;
      if ((v12 & 1) == 0)
      {
        return v7;
      }

      goto LABEL_10;
    }
  }

  else
  {
    v7 = 0;
  }

  if (v6)
  {
LABEL_10:
  }

  return v7;
}

void sub_1817A9380(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, uint64_t a13, char a14)
{
  if (a14 == 1)
  {
  }

  _Unwind_Resume(exception_object);
}

id LaunchServices::TypeEvaluator::getTypeIdentifier(uint64_t a1, void **a2, void *a3)
{
  v17 = a2;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v5 = +[_LSDServiceDomain defaultServiceDomain];
  v6 = LaunchServices::Database::Context::_get(&v17, v5, 0);

  if (!v6)
  {
    if (a3)
    {
      v8 = +[_LSDServiceDomain defaultServiceDomain];
      v9 = LaunchServices::Database::Context::_get(&v17, v8, 0);

      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = v20;
      }

      v7 = 0;
      *a3 = v10;
      goto LABEL_11;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_11;
  }

  LaunchServices::TypeEvaluation::runEvaluator(&v6->db, a1, a3, v14);
  if (v16 != 1)
  {
    goto LABEL_8;
  }

  v7 = LaunchServices::TypeEvaluator::Result::getTypeIdentifier(v14, v6);
  if (v16)
  {
  }

LABEL_11:
  if (v17 && v19 == 1)
  {
    _LSContextDestroy(v17);
  }

  v11 = v18;
  v17 = 0;
  v18 = 0;

  v19 = 0;
  v12 = v20;
  v20 = 0;

  return v7;
}

void sub_1817A9508(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

id LaunchServices::TypeEvaluator::getTypeRecord(uint64_t a1, void **a2, void *a3)
{
  v17 = a2;
  v18 = 0;
  v19 = 0;
  v20 = 0;
  v5 = +[_LSDServiceDomain defaultServiceDomain];
  v6 = LaunchServices::Database::Context::_get(&v17, v5, 0);

  if (!v6)
  {
    if (a3)
    {
      v8 = +[_LSDServiceDomain defaultServiceDomain];
      v9 = LaunchServices::Database::Context::_get(&v17, v8, 0);

      if (v9)
      {
        v10 = 0;
      }

      else
      {
        v10 = v20;
      }

      v7 = 0;
      *a3 = v10;
      goto LABEL_11;
    }

LABEL_8:
    v7 = 0;
    goto LABEL_11;
  }

  LaunchServices::TypeEvaluation::runEvaluator(&v6->db, a1, a3, v14);
  if (v16 != 1)
  {
    goto LABEL_8;
  }

  v7 = LaunchServices::TypeEvaluator::Result::getTypeRecord(v14, v6);
  if (v16)
  {
  }

LABEL_11:
  if (v17 && v19 == 1)
  {
    _LSContextDestroy(v17);
  }

  v11 = v18;
  v17 = 0;
  v18 = 0;

  v19 = 0;
  v12 = v20;
  v20 = 0;

  return v7;
}

void sub_1817A96D4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  LaunchServices::Database::Context::~Context(va);
  _Unwind_Resume(a1);
}

void ___ZN14LaunchServices14TypeEvaluationL15resolveBaseTypeERNS0_5StateEPU15__autoreleasingP7NSError_block_invoke()
{
  v6[4] = *MEMORY[0x1E69E9840];
  v0 = *MEMORY[0x1E695DB10];
  v5[0] = *MEMORY[0x1E695DB28];
  v5[1] = v0;
  v6[0] = @"public.named-pipe";
  v6[1] = @"public.character-special";
  v1 = *MEMORY[0x1E695DB38];
  v5[2] = *MEMORY[0x1E695DB08];
  v5[3] = v1;
  v6[2] = @"public.block-special";
  v6[3] = @"public.socket";
  v2 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v6 forKeys:v5 count:4];
  v3 = LaunchServices::TypeEvaluation::resolveBaseType(LaunchServices::TypeEvaluation::State &,NSError * {__autoreleasing}*)::posixUTIs;
  LaunchServices::TypeEvaluation::resolveBaseType(LaunchServices::TypeEvaluation::State &,NSError * {__autoreleasing}*)::posixUTIs = v2;

  v4 = *MEMORY[0x1E69E9840];
}

void ___ZN14LaunchServices14TypeEvaluationL14gnitsFileNamesEv_block_invoke()
{
  v0 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithArray:&unk_1EEF8F280];
  v1 = LaunchServices::TypeEvaluation::gnitsFileNames(void)::result;
  LaunchServices::TypeEvaluation::gnitsFileNames(void)::result = v0;
}

void sub_1817AA5E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, void *a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);

  LaunchServices::Database::Context::~Context(va);
  _Block_object_dispose((v15 - 96), 8);

  _Unwind_Resume(a1);
}

void sub_1817AAAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, id a26)
{
  LaunchServices::Database::Context::~Context(&a17);
  _Block_object_dispose(&a21, 8);

  _Unwind_Resume(a1);
}

void sub_1817AACC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  LaunchServices::Database::Context::~Context(&a9);

  _Unwind_Resume(a1);
}

void sub_1817AB500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  *(v27 + 120) = v26;
  std::vector<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier>::__destroy_vector::operator()[abi:nn200100]((v28 - 96));
  _Block_object_dispose((v28 - 144), 8);

  _Unwind_Resume(a1);
}

__n128 __Block_byref_object_copy__23(__n128 *a1, __n128 *a2)
{
  a1[3].n128_u64[0] = 0;
  a1[3].n128_u64[1] = 0;
  a1[4].n128_u64[0] = 0;
  result = a2[3];
  a1[3] = result;
  a1[4].n128_u64[0] = a2[4].n128_u64[0];
  a2[3].n128_u64[0] = 0;
  a2[3].n128_u64[1] = 0;
  a2[4].n128_u64[0] = 0;
  return result;
}

void sub_1817ABAA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1817ADAF0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1817AE1AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1817AE4D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39)
{
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose(&a33, 8);
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(&a39);
  _Unwind_Resume(a1);
}

void sub_1817AEED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, char a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id a20)
{
  _Block_object_dispose(&a15, 8);

  _Unwind_Resume(a1);
}

void sub_1817AF114(_Unwind_Exception *a1)
{
  v7 = v6;

  _Unwind_Resume(a1);
}

void sub_1817B1AAC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1817B237C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location, id a17)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak((v17 + 40));
  objc_destroyWeak(&location);
  objc_destroyWeak(&a17);
  _Unwind_Resume(a1);
}

void sub_1817B2644(_Unwind_Exception *a1)
{
  objc_sync_exit(v1);
  _Block_object_dispose((v2 - 96), 8);
  _Unwind_Resume(a1);
}

unint64_t computeEffectiveUnitsForPhase(uint64_t a1, unint64_t a2, void *a3, double a4)
{
  v7 = a3;
  v8 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v9 = [v7 objectForKeyedSubscript:v8];

  if (a4 > 0.0 && v9)
  {
    v10 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
    v11 = [v7 objectForKeyedSubscript:v10];
    [v11 doubleValue];
    v13 = v12;

    v14 = v13 / a4 * 100.0;
    if (v14 <= 1)
    {
      v15 = 1;
    }

    else
    {
      v15 = v14;
    }

    if (v13 <= 0.0)
    {
      a2 = v14;
    }

    else
    {
      a2 = v15;
    }
  }

  return a2;
}

void sub_1817B3614(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id obj, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char a22)
{
  objc_sync_exit(obj);
  _Block_object_dispose(&a22, 8);
  _Unwind_Resume(a1);
}