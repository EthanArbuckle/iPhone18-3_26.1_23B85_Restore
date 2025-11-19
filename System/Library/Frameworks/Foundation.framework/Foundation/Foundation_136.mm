const char *_NSPrintForDebugger(void *a1)
{
  if (!a1)
  {
    return "<nil>";
  }

  if ((objc_opt_respondsToSelector() & 1) == 0 && (objc_opt_respondsToSelector() & 1) == 0)
  {
    return "<not an object or object does not respond to description method>";
  }

  _CFAutoreleasePoolPush();
  if (_NSPrintForDebugger_result)
  {
    free(_NSPrintForDebugger_result);
    _NSPrintForDebugger_result = 0;
  }

  if (objc_opt_respondsToSelector())
  {
    v2 = [a1 debugDescription];
  }

  else
  {
    v2 = [a1 description];
  }

  v4 = v2;
  if (v2 && ![v2 isEqual:&stru_1EEEFDF90])
  {
    v5 = [v4 dataUsingEncoding:4 allowLossyConversion:1];
    _NSPrintForDebugger_result = malloc_type_malloc([v5 length] + 1, 0x100004077774924uLL);
    memmove(_NSPrintForDebugger_result, [v5 bytes], objc_msgSend(v5, "length"));
    v6 = _NSPrintForDebugger_result;
    *(v6 + [v5 length]) = 0;
    _CFAutoreleasePoolPop();
    return _NSPrintForDebugger_result;
  }

  else
  {
    _CFAutoreleasePoolPop();
    return "<object returned empty description>";
  }
}

uint64_t NSRecordAllocationEvent(uint64_t result)
{
  if (result <= 0x16)
  {
    if (((1 << result) & 0x50) != 0)
    {
      result = 12;
    }

    else if (((1 << result) & 0xA0) != 0)
    {
      result = 13;
    }

    else if (((1 << result) & 0x400008) == 0)
    {
      return result;
    }

    if (*MEMORY[0x1E695E0C0] == 1)
    {
      return __CFRecordAllocationEvent();
    }
  }

  return result;
}

void sub_18105BEB4(_Unwind_Exception *a1)
{
  free(v1);
  free(v2);
  _Unwind_Resume(a1);
}

void sub_18105C518(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x18105C4F4);
  }

  JUMPOUT(0x18105C548);
}

uint64_t equalBoundPath(id *a1, id *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  v4 = objc_opt_class();
  if (v4 == objc_opt_class() && (v5 = [a1 rootObject], v5 == objc_msgSend(a2, "rootObject")))
  {
    return [a1[2] isEqualToString:a2[2]];
  }

  else
  {
    return 0;
  }
}

void _NSKVO1AdaptorSlowDeliver(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6)
{
  v12 = [a6 objectForKey:@"new"];
  if (a3)
  {
    v13 = [a6 objectForKey:@"old"];
    v14 = [a6 objectForKey:@"indexes"];
    v15 = [objc_msgSend(a6 objectForKey:{@"kind", "unsignedIntegerValue"}];
  }

  else
  {
    v14 = 0;
    v13 = 0;
    v15 = 1;
  }

  if (v12 == *MEMORY[0x1E695E738])
  {
    v16 = 0;
  }

  else
  {
    v16 = v12;
  }

  if (v13 == *MEMORY[0x1E695E738])
  {
    v17 = 0;
  }

  else
  {
    v17 = v13;
  }

  _NSKVO1AdaptorDeliver(a1, a2, a3, v16, v17, v14, v15, a4, a5);
}

void _NSKVO1AdaptorDeliver(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v38[1] = *MEMORY[0x1E69E9840];
  if (!a3)
  {
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v30 = ___NSKVO1AdaptorDeliver_block_invoke_3;
    v31 = &unk_1E69F30D8;
    v32 = a2;
    v38[0] = 0;
    StackObservedValueClassAndBoxSize = getStackObservedValueClassAndBoxSize(v38);
    MEMORY[0x1EEE9AC00](StackObservedValueClassAndBoxSize);
    v20 = objc_constructInstance(v19, v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
    v20[6] = 1;
    *(v20 + 1) = a4;
    *(v20 + 2) = a1;
    v30(v29, v20);
    return;
  }

  if ((_NSIsNSArray() & 1) != 0 || (_NSIsNSOrderedSet() & 1) != 0 || (_NSIsNSArray() & 1) != 0 || _NSIsNSOrderedSet())
  {
    if (_NSIsNSArray())
    {
      v16 = [[NSArrayChanges alloc] initWithArray:a5];
    }

    else
    {
      v16 = [[NSOrderedSetChanges alloc] initWithOrderedSet:a5];
    }

    v21 = v16;
    v37[0] = MEMORY[0x1E69E9820];
    v37[1] = 3221225472;
    v37[2] = ___NSKVO1AdaptorDeliver_block_invoke;
    v37[3] = &unk_1E69F30B0;
    v37[4] = a9;
    v37[5] = a8;
    v37[6] = v16;
    v37[7] = a7;
    [a6 enumerateIndexesUsingBlock:v37];
    goto LABEL_11;
  }

  if ((_NSIsNSSet() & 1) != 0 || _NSIsNSSet())
  {
    v21 = 0;
    if (a7 <= 2)
    {
      if (a7 != 1)
      {
        if (a7 == 2)
        {
          v26 = [NSSetChanges alloc];
          if (!a5)
          {
            a5 = [MEMORY[0x1E695DFD8] set];
          }

          v21 = [(NSSetChanges *)v26 initWithSet:a5];
          [(NSSetChanges *)v21 unionSet:a4];
        }

        goto LABEL_11;
      }

LABEL_22:
      v27 = [NSSetChanges alloc];
      if (!a5)
      {
        a5 = [MEMORY[0x1E695DFD8] set];
      }

      v21 = [(NSSetChanges *)v27 initWithSet:a5];
      [(NSSetChanges *)v21 setSet:a4];
      goto LABEL_11;
    }

    if (a7 == 3)
    {
      v28 = [NSSetChanges alloc];
      if (!a4)
      {
        a4 = [MEMORY[0x1E695DFD8] set];
      }

      v21 = [(NSSetChanges *)v28 initWithSet:a4];
      [(NSSetChanges *)v21 minusSet:a5];
      goto LABEL_11;
    }

    if (a7 == 4)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v21 = 0;
  }

LABEL_11:
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v34 = ___NSKVO1AdaptorDeliver_block_invoke_2;
  v35 = &unk_1E69F30D8;
  v36 = a2;
  v38[0] = 0;
  v22 = getStackObservedValueClassAndBoxSize(v38);
  MEMORY[0x1EEE9AC00](v22);
  v25 = objc_constructInstance(v24, v29 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25[6] = 1;
  *(v25 + 1) = v21;
  *(v25 + 2) = a1;
  v34(v33, v25);
}

void *_variantPermutations(void *a1)
{
  v1 = a1;
  v19 = *MEMORY[0x1E69E9840];
  v2 = [a1 count];
  if (v2 >= 2)
  {
    v3 = v2;
    if (v2 < 5)
    {
      v5 = [v1 firstObject];
      v6 = _variantPermutations([v1 subarrayWithRange:{1, v3 - 1}]);
      v1 = [MEMORY[0x1E695DF70] arrayWithCapacity:{(2 * objc_msgSend(v6, "count")) | 1}];
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
      if (v7)
      {
        v8 = v7;
        v9 = *v14;
        do
        {
          v10 = 0;
          do
          {
            if (*v14 != v9)
            {
              objc_enumerationMutation(v6);
            }

            [v1 addObject:{objc_msgSend(v5, "stringByAppendingString:", *(*(&v13 + 1) + 8 * v10++))}];
          }

          while (v8 != v10);
          v8 = [v6 countByEnumeratingWithState:&v13 objects:v12 count:16];
        }

        while (v8);
      }

      [v1 addObject:v5];
      [v1 addObjectsFromArray:v6];
    }

    else
    {
      v4 = _NSOSLog();
      if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v18 = v1;
        _os_log_impl(&dword_18075C000, v4, OS_LOG_TYPE_DEFAULT, "Too many variant permutations to compute: %@", buf, 0xCu);
      }

      return MEMORY[0x1E695E0F0];
    }
  }

  return v1;
}

void WebNSErrorExtrasInit()
{
  if (!descriptions)
  {
    _CFAutoreleasePoolPush();
    descriptions = objc_alloc_init(MEMORY[0x1E695DF90]);

    _CFAutoreleasePoolPop();
  }
}

NSError *_NSErrorWithFilePath(uint64_t a1, uint64_t a2)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v5 = &NSURLErrorKey;
  if ((isKindOfClass & 1) == 0)
  {
    v5 = &NSFilePathErrorKey;
  }

  v6 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a2, *v5, 0}];

  return [NSError errorWithDomain:@"NSCocoaErrorDomain" code:a1 userInfo:v6];
}

NSError *_NSErrorWithFilePathAndEncoding(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  v7 = &NSURLErrorKey;
  if ((isKindOfClass & 1) == 0)
  {
    v7 = &NSFilePathErrorKey;
  }

  v8 = [MEMORY[0x1E695DF20] dictionaryWithObjectsAndKeys:{a2, *v7, +[NSNumber numberWithUnsignedInteger:](NSNumber, "numberWithUnsignedInteger:", a3), @"NSStringEncoding", 0}];

  return [NSError errorWithDomain:@"NSCocoaErrorDomain" code:a1 userInfo:v8];
}

NSString *encodingName(void *a1)
{
  result = +[NSString localizedNameOfStringEncoding:](NSString, "localizedNameOfStringEncoding:", [a1 unsignedIntegerValue]);
  if (result)
  {
    v2 = result;
    if ([(NSString *)result length])
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

NSString *validationValue(uint64_t a1)
{
  if (_NSIsNSNumber())
  {
    return [NSString localizedStringWithFormat:@"%@", a1];
  }

  else
  {
    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"\\U201c%@\\U201d" value:&stru_1EEEFDF90 table:@"FoundationErrors"], a1);
  }
}

NSError *_NSErrorWithCloudSharingError(void *a1, void *a2)
{
  if (!a1 || ([objc_msgSend(a1 "domain")] & 1) != 0)
  {
    return a1;
  }

  if ([objc_msgSend(a1 "domain")])
  {
    v5 = a1;
LABEL_6:
    v6 = _cocoaDomainCodeFromCloudKitError(v5);
    goto LABEL_17;
  }

  v7 = [a1 domain];
  if (![v7 isEqualToString:off_1ED4397F8[0]()])
  {
LABEL_16:
    v6 = 5375;
    goto LABEL_17;
  }

  v8 = [a1 code];
  v6 = 4;
  if (v8 <= 22)
  {
    if (v8 == 5)
    {
      goto LABEL_17;
    }

    if (v8 == 17)
    {
      v5 = [objc_msgSend(a1 "userInfo")];
      goto LABEL_6;
    }

    goto LABEL_16;
  }

  if (v8 == 23)
  {
    v6 = 3072;
    goto LABEL_17;
  }

  if (v8 != 24)
  {
    if (v8 == 34)
    {
      v6 = 640;
      goto LABEL_17;
    }

    goto LABEL_16;
  }

LABEL_17:
  v9 = [MEMORY[0x1E695DF90] dictionaryWithObject:a1 forKey:@"NSUnderlyingError"];
  v10 = [a2 _variantSubstrings];
  if ([v10 count])
  {
    [v9 setObject:objc_msgSend(v10 forKey:{"componentsJoinedByString:", @", "), @"NSUserStringVariant"}];
  }

  return [NSError errorWithDomain:@"NSCocoaErrorDomain" code:v6 userInfo:v9];
}

uint64_t _cocoaDomainCodeFromCloudKitError(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  v2 = [a1 code];
  v3 = 5120;
  if (v2 > 13)
  {
    if (v2 <= 24)
    {
      if (v2 == 14)
      {
        return 5123;
      }

      if (v2 == 20)
      {
        return 3072;
      }

      if (v2 != 23)
      {
        return 5375;
      }

      return v3;
    }

    if (v2 == 25)
    {
      return 5121;
    }

    if (v2 == 29)
    {
      return 5122;
    }

    if (v2 != 32)
    {
      return 5375;
    }

    return 5124;
  }

  if (v2 > 5)
  {
    if ((v2 - 6) < 2)
    {
      return v3;
    }

    if (v2 != 10)
    {
      return 5375;
    }

    return 5124;
  }

  if ((v2 - 3) >= 2)
  {
    if (v2 == 2)
    {
      v7 = 0;
      v8 = &v7;
      v9 = 0x2020000000;
      v10 = 5375;
      v4 = [objc_msgSend(a1 "userInfo")];
      v6[0] = MEMORY[0x1E69E9820];
      v6[1] = 3221225472;
      v6[2] = ___cocoaDomainCodeFromCloudKitError_block_invoke;
      v6[3] = &unk_1E69F3298;
      v6[4] = &v7;
      [v4 enumerateKeysAndObjectsUsingBlock:v6];
      v3 = v8[3];
      _Block_object_dispose(&v7, 8);
      return v3;
    }

    return 5375;
  }

  return v3;
}

void sub_18106204C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t initUTTypeConformsTo(uint64_t a1, uint64_t a2)
{
  v4 = MobileCoreServicesLibrary_frameworkLibrary;
  if (!MobileCoreServicesLibrary_frameworkLibrary)
  {
    v4 = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 2);
    MobileCoreServicesLibrary_frameworkLibrary = v4;
    if (!v4)
    {
      __assert_rtn("MobileCoreServicesLibrary", "NSError_Private.m", 32, "frameworkLibrary");
    }
  }

  v5 = dlsym(v4, "UTTypeConformsTo");
  softLinkUTTypeConformsTo = v5;
  if (!v5)
  {
    __assert_rtn("initUTTypeConformsTo", "NSError_Private.m", 33, "softLinkUTTypeConformsTo");
  }

  return (v5)(a1, a2);
}

uint64_t initCKErrorDomain()
{
  v0 = CloudKitLibrary();
  v1 = dlsym(v0, "CKErrorDomain");
  if (!v1)
  {
    __assert_rtn("initCKErrorDomain", "NSError_Private.m", 45, "constant");
  }

  result = *v1;
  constantCKErrorDomain = result;
  _MergedGlobals_84[0] = CKErrorDomainFunction;
  return result;
}

void *CloudKitLibrary()
{
  result = CloudKitLibrary_frameworkLibrary;
  if (!CloudKitLibrary_frameworkLibrary)
  {
    result = dlopen("/System/Library/Frameworks/CloudKit.framework/CloudKit", 2);
    CloudKitLibrary_frameworkLibrary = result;
    if (!result)
    {
      __assert_rtn("CloudKitLibrary", "NSError_Private.m", 43, "frameworkLibrary");
    }
  }

  return result;
}

uint64_t ___cocoaDomainCodeFromCloudKitError_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  result = _cocoaDomainCodeFromCloudKitError(a3);
  *(*(*(a1 + 32) + 8) + 24) = result;
  if (*(*(*(a1 + 32) + 8) + 24) != 5375)
  {
    *a4 = 1;
  }

  return result;
}

uint64_t initCKPartialErrorsByItemIDKey()
{
  v0 = CloudKitLibrary();
  v1 = dlsym(v0, "CKPartialErrorsByItemIDKey");
  if (!v1)
  {
    __assert_rtn("initCKPartialErrorsByItemIDKey", "NSError_Private.m", 44, "constant");
  }

  result = *v1;
  constantCKPartialErrorsByItemIDKey = result;
  getCKPartialErrorsByItemIDKey = CKPartialErrorsByItemIDKeyFunction;
  return result;
}

uint64_t initBRCloudDocsErrorDomain()
{
  v0 = qword_1ED43E6D0;
  if (!qword_1ED43E6D0)
  {
    v0 = dlopen("/System/Library/PrivateFrameworks/CloudDocs.framework/CloudDocs", 2);
    qword_1ED43E6D0 = v0;
    if (!v0)
    {
      __assert_rtn("CloudDocsLibrary", "NSError_Private.m", 46, "frameworkLibrary");
    }
  }

  v1 = dlsym(v0, "BRCloudDocsErrorDomain");
  if (!v1)
  {
    __assert_rtn("initBRCloudDocsErrorDomain", "NSError_Private.m", 47, "constant");
  }

  result = *v1;
  qword_1ED43E6C8 = result;
  off_1ED4397F8[0] = BRCloudDocsErrorDomainFunction;
  return result;
}

void *_userInfoForFileAndLine(uint64_t a1, uint64_t a2)
{
  if (!a1 && !a2)
  {
    return 0;
  }

  v5 = [MEMORY[0x1E695DF90] dictionary];
  v4 = v5;
  if (a1)
  {
    [v5 setObject:a1 forKey:@"NSAssertFile"];
  }

  if (a2)
  {
    [v4 setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", a2), @"NSAssertLine"}];
  }

  return v4;
}

void sub_181064668()
{
  if (v0)
  {
    *v0 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  }

  JUMPOUT(0x181064638);
}

void sub_181064840()
{
  if (v0)
  {
    *v0 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  }

  JUMPOUT(0x181064810);
}

void sub_181064A24()
{
  if (v0)
  {
    *v0 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  }

  JUMPOUT(0x1810649F4);
}

void sub_181064C04()
{
  if (v0)
  {
    *v0 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  }

  JUMPOUT(0x181064BD4);
}

void sub_181064DE4()
{
  if (v0)
  {
    *v0 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  }

  JUMPOUT(0x181064DB4);
}

void sub_181064FC8()
{
  if (v0)
  {
    *v0 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  }

  JUMPOUT(0x181064F98);
}

void sub_1810651AC()
{
  if (v0)
  {
    *v0 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  }

  JUMPOUT(0x18106517CLL);
}

void sub_181065388()
{
  if (v0)
  {
    *v0 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  }

  JUMPOUT(0x181065358);
}

void sub_181065564()
{
  if (v0)
  {
    *v0 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  }

  JUMPOUT(0x181065534);
}

void sub_1810663E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _NSFrameworkHandleForLibrarianSymbols()
{
  if (qword_1ED43F308 != -1)
  {
    dispatch_once(&qword_1ED43F308, &__block_literal_global_10);
  }

  return qword_1ED43F300;
}

uint64_t _NSFileProtectionValueForPath(const char *a1)
{
  v3[3] = *MEMORY[0x1E69E9840];
  v2 = 0;
  v3[1] = 0;
  v3[2] = 0;
  v3[0] = 0x4000000000000005;
  if (getattrlist(a1, v3, &v2, 8uLL, 1u))
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return HIDWORD(v2);
  }
}

CFMutableDictionaryRef _fillDictionary(int *a1, unsigned __int8 *a2, uint64_t a3, int a4)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v9 = [NSNumber numberWithUnsignedLongLong:*(a1 + 12)];
  if (v9)
  {
    [(__CFDictionary *)Mutable setObject:v9 forKey:@"NSFileSize"];
  }

  v10 = [MEMORY[0x1E695DF00] dateWithTimeIntervalSinceReferenceDate:*(a1 + 6) - *MEMORY[0x1E695E468] + *(a1 + 7) * 0.000000001];
  if (v10)
  {
    [(__CFDictionary *)Mutable setObject:v10 forKey:@"NSFileModificationDate"];
  }

  v11 = [NSNumber numberWithUnsignedLong:a1[1] & 0xFFF];
  if (v11)
  {
    [(__CFDictionary *)Mutable setObject:v11 forKey:@"NSFilePosixPermissions"];
  }

  v12 = [NSNumber numberWithUnsignedLong:*(a1 + 3)];
  if (v12)
  {
    [(__CFDictionary *)Mutable setObject:v12 forKey:@"NSFileReferenceCount"];
  }

  v13 = [NSNumber numberWithUnsignedLong:*a1];
  if (v13)
  {
    [(__CFDictionary *)Mutable setObject:v13 forKey:@"NSFileSystemNumber"];
  }

  v14 = [NSNumber numberWithUnsignedLong:*(a1 + 1)];
  if (v14)
  {
    [(__CFDictionary *)Mutable setObject:v14 forKey:@"NSFileSystemFileNumber"];
  }

  v15 = __NSUserAccountNumberToName(a1[4]);
  if (v15)
  {
    [(__CFDictionary *)Mutable setObject:v15 forKey:@"NSFileOwnerAccountName"];
  }

  v16 = __NSGroupAccountNumberToName(a1[5]);
  if (v16)
  {
    [(__CFDictionary *)Mutable setObject:v16 forKey:@"NSFileGroupOwnerAccountName"];
  }

  [(__CFDictionary *)Mutable setObject:NSStatFileType(*(a1 + 2)) forKey:@"NSFileType"];
  if ((a1[1] & 0xB000 | 0x4000) == 0x6000)
  {
    [(__CFDictionary *)Mutable setObject:[NSNumber forKey:"numberWithUnsignedLong:" numberWithUnsignedLong:?], @"NSFileDeviceIdentifier"];
  }

  if (a2[16])
  {
    v17 = [NSNumber numberWithBool:*a2];
    if (v17)
    {
      [(__CFDictionary *)Mutable setObject:v17 forKey:@"NSFileExtensionHidden"];
    }
  }

  if ((a2[16] & 2) != 0)
  {
    v18 = *(a2 + 1);
    if (v18)
    {
      [(__CFDictionary *)Mutable setObject:v18 forKey:@"NSFileCreationDate"];
    }
  }

  v19 = a1[29];
  if ((v19 & 0x20002) != 0)
  {
    [(__CFDictionary *)Mutable setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:?], @"NSFileImmutable"];
    v19 = a1[29];
  }

  if ((v19 & 0x40004) != 0)
  {
    [(__CFDictionary *)Mutable setObject:[NSNumber forKey:"numberWithInteger:" numberWithInteger:?], @"NSFileAppendOnly"];
  }

  [(__CFDictionary *)Mutable setObject:[NSNumber forKey:"numberWithUnsignedLong:" numberWithUnsignedLong:?], @"NSFileOwnerAccountID"];
  [(__CFDictionary *)Mutable setObject:[NSNumber forKey:"numberWithUnsignedLong:" numberWithUnsignedLong:?], @"NSFileGroupOwnerAccountID"];
  if (a3)
  {
    [(__CFDictionary *)Mutable setObject:a3 forKey:@"NSFileExtendedAttributes"];
  }

  v20 = a4 - 1;
  if (a4 - 1) <= 6 && ((0x4Fu >> v20))
  {
    [(__CFDictionary *)Mutable setObject:off_1E69F3A70[v20] forKey:@"NSFileProtectionKey"];
  }

  return Mutable;
}

__CFString *NSStatFileType(unsigned __int16 a1)
{
  if ((a1 & 0x1000) != 0)
  {
    return @"NSFileTypeUnknown";
  }

  v1 = (a1 >> 13) - 1;
  if (v1 > 5)
  {
    return @"NSFileTypeUnknown";
  }

  else
  {
    return off_1E69F3AE0[v1];
  }
}

NSString *__NSUserAccountNumberToName(uid_t a1)
{
  v1 = getpwuid(a1);
  if (!v1 || !v1->pw_name)
  {
    return 0;
  }

  return [NSString stringWithUTF8String:?];
}

NSString *__NSGroupAccountNumberToName(gid_t a1)
{
  v1 = getgrgid(a1);
  if (!v1 || !v1->gr_name)
  {
    return 0;
  }

  return [NSString stringWithUTF8String:?];
}

void sub_18106A12C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18106A30C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18106C004(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSError *_cocoaDomainErrorForLibrarianError(uint64_t a1, void *a2, int a3)
{
  v6 = [a2 domain];
  if ([v6 isEqualToString:@"NSCocoaErrorDomain"])
  {
    v7 = a2;

    return v7;
  }

  else if ([v6 isEqualToString:@"NSPOSIXErrorDomain"])
  {
    v9 = [a2 code];
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObject:a2 forKey:@"NSUnderlyingError"];

    return _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(v9, a1, a3, 0, v10);
  }

  else
  {
    if (a3)
    {
      v11 = 256;
    }

    else
    {
      v11 = 512;
    }

    v12 = [MEMORY[0x1E695DF90] dictionaryWithObjectsAndKeys:{a2, @"NSUnderlyingError", a1, @"NSURL", 0}];

    return [NSError errorWithDomain:@"NSCocoaErrorDomain" code:v11 userInfo:v12];
  }
}

NSError *_librarianMissingError(int a1)
{
  if (a1)
  {
    v1 = 256;
  }

  else
  {
    v1 = 512;
  }

  v2 = [MEMORY[0x1E695DF20] dictionaryWithObject:objc_msgSend(_NSFoundationBundle() forKey:{"localizedStringForKey:value:table:", @"This feature is not enabled on this machine.", &stru_1EEEFDF90, @"Document", @"NSLocalizedDescription"}];

  return [NSError errorWithDomain:@"NSCocoaErrorDomain" code:v1 userInfo:v2];
}

void sub_18106C48C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18106C668(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18106CB40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18106CD5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18106D07C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 136), 8);
  _Unwind_Resume(a1);
}

void _postUbqiuityAccountChangeNotification()
{
  if (off_1ED43F3D0 && off_1ED43F3D0())
  {
    Main = CFRunLoopGetMain();
    CFRunLoopPerformBlock(Main, *MEMORY[0x1E695E8D0], &__block_literal_global_679);
    v1 = CFRunLoopGetMain();

    CFRunLoopWakeUp(v1);
  }
}

void sub_18106E06C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37)
{
  _Block_object_dispose(&a19, 8);
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a31, 8);
  _Block_object_dispose(&a37, 8);
  _Unwind_Resume(a1);
}

void sub_18106E484(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 88), 8);
  _Unwind_Resume(a1);
}

void ___postUbqiuityAccountChangeNotification_block_invoke()
{
  v0 = objc_autoreleasePoolPush();
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:" object:@"NSUbiquityIdentityDidChangeNotification", 0];

  objc_autoreleasePoolPop(v0);
}

uint64_t int_sort(void *a1, void *a2)
{
  if (*a1 < *a2)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return *a2 < *a1;
  }
}

void sub_181072A48(_Unwind_Exception *a1)
{
  free(*(v1 + 72));
  v3 = *(v1 + 88);
  if (v3)
  {
    [*(v1 + 88) invalidate];
  }

  _Unwind_Resume(a1);
}

os_log_t __getNSFESignpostLog_block_invoke(uint64_t a1)
{
  result = os_log_create(*(a1 + 32), *(a1 + 40));
  qword_1EA821EB8 = result;
  return result;
}

void *wrapInCheapMutableString(const char *a1)
{
  v2 = [objc_allocWithZone(NSCheapMutableString) init];
  [v2 setContentsNoCopy:a1 length:strlen(a1) freeWhenDone:0 isUnicode:0];
  return v2;
}

void *isSelectorAllowed(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  result = [*(_CFPredicatePolicyData() + 48) objectForKey:a1];
  if (result)
  {
    v7 = [result objectForKey:a2];
    return (v7 && ([v7 isEqualToNumber:a3] & 1) != 0);
  }

  return result;
}

void sub_181074070(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);
  _Unwind_Resume(a1);
}

void sub_18107430C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t initNSDocumentTypeDocumentAttribute()
{
  v0 = UIFoundationLibrary();
  v1 = dlsym(v0, "NSDocumentTypeDocumentAttribute");
  if (!v1)
  {
    __assert_rtn("initNSDocumentTypeDocumentAttribute", "NSExtensionItem.m", 34, "constant");
  }

  result = *v1;
  constantNSDocumentTypeDocumentAttribute = result;
  _MergedGlobals_85[0] = NSDocumentTypeDocumentAttributeFunction;
  return result;
}

uint64_t initNSRTFTextDocumentType()
{
  v0 = UIFoundationLibrary();
  v1 = dlsym(v0, "NSRTFTextDocumentType");
  if (!v1)
  {
    __assert_rtn("initNSRTFTextDocumentType", "NSExtensionItem.m", 35, "constant");
  }

  result = *v1;
  constantNSRTFTextDocumentType = result;
  off_1ED439808[0] = NSRTFTextDocumentTypeFunction;
  return result;
}

uint64_t initNSRTFDTextDocumentType()
{
  v0 = UIFoundationLibrary();
  v1 = dlsym(v0, "NSRTFDTextDocumentType");
  if (!v1)
  {
    __assert_rtn("initNSRTFDTextDocumentType", "NSExtensionItem.m", 36, "constant");
  }

  result = *v1;
  constantNSRTFDTextDocumentType = result;
  off_1ED439810[0] = NSRTFDTextDocumentTypeFunction;
  return result;
}

void *UIFoundationLibrary()
{
  result = UIFoundationLibrary_frameworkLibrary;
  if (!UIFoundationLibrary_frameworkLibrary)
  {
    result = dlopen("/System/Library/PrivateFrameworks/UIFoundation.framework/UIFoundation", 2);
    UIFoundationLibrary_frameworkLibrary = result;
    if (!result)
    {
      __assert_rtn("UIFoundationLibrary", "NSExtensionItem.m", 33, "frameworkLibrary");
    }
  }

  return result;
}

uint64_t initkUTTypeFileURL()
{
  v0 = CoreServicesLibrary();
  v1 = dlsym(v0, "kUTTypeFileURL");
  if (!v1)
  {
    __assert_rtn("initkUTTypeFileURL", "NSExtensionItem.m", 41, "constant");
  }

  result = *v1;
  constantkUTTypeFileURL = result;
  off_1ED439818[0] = kUTTypeFileURLFunction;
  return result;
}

void *CoreServicesLibrary()
{
  result = CoreServicesLibrary_frameworkLibrary;
  if (!CoreServicesLibrary_frameworkLibrary)
  {
    result = dlopen("/System/Library/Frameworks/CoreServices.framework/CoreServices", 2);
    CoreServicesLibrary_frameworkLibrary = result;
    if (!result)
    {
      __assert_rtn("CoreServicesLibrary", "NSExtensionItem.m", 38, "frameworkLibrary");
    }
  }

  return result;
}

uint64_t initFPCopyExtensionMatchingDictionaryForItem(uint64_t a1, uint64_t a2)
{
  v4 = FileProviderLibrary_frameworkLibrary;
  if (!FileProviderLibrary_frameworkLibrary)
  {
    v4 = dlopen("/System/Library/Frameworks/FileProvider.framework/FileProvider", 2);
    FileProviderLibrary_frameworkLibrary = v4;
    if (!v4)
    {
      __assert_rtn("FileProviderLibrary", "NSExtensionItem.m", 55, "frameworkLibrary");
    }
  }

  v5 = dlsym(v4, "FPCopyExtensionMatchingDictionaryForItem");
  off_1ED439830[0] = v5;
  if (!v5)
  {
    __assert_rtn("initFPCopyExtensionMatchingDictionaryForItem", "NSExtensionItem.m", 57, "softLinkFPCopyExtensionMatchingDictionaryForItem");
  }

  return (v5)(a1, a2);
}

uint64_t initkUTTypeData()
{
  v0 = CoreServicesLibrary();
  v1 = dlsym(v0, "kUTTypeData");
  if (!v1)
  {
    __assert_rtn("initkUTTypeData", "NSExtensionItem.m", 40, "constant");
  }

  result = *v1;
  constantkUTTypeData = result;
  off_1ED439828[0] = kUTTypeDataFunction;
  return result;
}

NSRect NSOffsetRect(NSRect aRect, CGFloat dX, CGFloat dY)
{
  v3 = aRect.origin.x + dX;
  v4 = aRect.origin.y + dY;
  aRect.origin.y = v4;
  aRect.origin.x = v3;
  return aRect;
}

NSRect NSInsetRect(NSRect aRect, CGFloat dX, CGFloat dY)
{
  v3 = aRect.origin.x + dX;
  v4 = aRect.origin.y + dY;
  v5 = aRect.size.width - dX - dX;
  v6 = aRect.size.height - dY - dY;
  result.size.height = v6;
  result.size.width = v5;
  result.origin.y = v4;
  result.origin.x = v3;
  return result;
}

NSRect NSIntegralRect(NSRect aRect)
{
  height = aRect.size.height;
  v2 = 0.0;
  if (aRect.size.width <= 0.0)
  {
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
  }

  else
  {
    width = aRect.size.width;
    y = aRect.origin.y;
    x = aRect.origin.x;
    v6 = 0.0;
    v7 = 0.0;
    v8 = 0.0;
    if (height > 0.0)
    {
      v8 = floor(x);
      v7 = floor(y);
      v6 = ceil(x + width) - v8;
      v2 = ceil(y + height) - v7;
    }
  }

  result.size.height = v2;
  result.size.width = v6;
  result.origin.y = v7;
  result.origin.x = v8;
  return result;
}

NSRect NSUnionRect(NSRect aRect, NSRect bRect)
{
  v2 = fmin(bRect.size.width, bRect.size.height) <= 0.0;
  if (aRect.size.width <= 0.0 || aRect.size.height <= 0.0)
  {
    aRect.origin.x = 0.0;
    aRect.origin.y = 0.0;
    aRect.size.width = 0.0;
    aRect.size.height = 0.0;
    if (!v2)
    {
      return bRect;
    }
  }

  else if (!v2)
  {
    v3 = aRect.origin.x + aRect.size.width;
    if (aRect.origin.x >= bRect.origin.x)
    {
      aRect.origin.x = bRect.origin.x;
    }

    v4 = aRect.origin.y + aRect.size.height;
    if (aRect.origin.y >= bRect.origin.y)
    {
      aRect.origin.y = bRect.origin.y;
    }

    v5 = bRect.origin.x + bRect.size.width;
    if (v3 <= v5)
    {
      v3 = v5;
    }

    aRect.size.width = v3 - aRect.origin.x;
    if (v4 <= bRect.origin.y + bRect.size.height)
    {
      v4 = bRect.origin.y + bRect.size.height;
    }

    aRect.size.height = v4 - aRect.origin.y;
  }

  return aRect;
}

NSRect NSIntersectionRect(NSRect aRect, NSRect bRect)
{
  height = aRect.size.height;
  v3 = 0.0;
  if (aRect.size.width <= 0.0 || bRect.size.width <= 0.0 || height <= 0.0 || bRect.size.height <= 0.0 || (aRect.origin.x <= bRect.origin.x ? (x = bRect.origin.x) : (x = aRect.origin.x), (v5 = aRect.origin.x + aRect.size.width, v5 >= bRect.origin.x + bRect.size.width) ? (v6 = bRect.origin.x + bRect.size.width) : (v6 = v5), v6 <= x))
  {
    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
  }

  else
  {
    if (aRect.origin.y <= bRect.origin.y)
    {
      y = bRect.origin.y;
    }

    else
    {
      y = aRect.origin.y;
    }

    if (aRect.origin.y + height >= bRect.origin.y + bRect.size.height)
    {
      v8 = bRect.origin.y + bRect.size.height;
    }

    else
    {
      v8 = aRect.origin.y + height;
    }

    v9 = 0.0;
    v10 = 0.0;
    v11 = 0.0;
    if (v8 > y)
    {
      v9 = v6 - x;
      v3 = v8 - y;
      v10 = y;
      v11 = x;
    }
  }

  result.size.height = v3;
  result.size.width = v9;
  result.origin.y = v10;
  result.origin.x = v11;
  return result;
}

void NSDivideRect(NSRect inRect, NSRect *slice, NSRect *rem, CGFloat amount, NSRectEdge edge)
{
  *slice = inRect;
  p_y = &slice->origin.y;
  p_width = &slice->size.width;
  *rem = inRect;
  if ((edge | 2) == 2)
  {
    if (inRect.size.width >= amount)
    {
      width = amount;
    }

    else
    {
      width = inRect.size.width;
    }

    slice->size.width = width;
    v8 = rem->size.width - width;
    rem->size.width = v8;
    if (edge)
    {
      p_width = &slice->origin.x;
      inRect.origin.x = v8;
      p_y = slice;
    }

    else
    {
      p_y = rem;
    }
  }

  else
  {
    if (inRect.size.height >= amount)
    {
      height = amount;
    }

    else
    {
      height = inRect.size.height;
    }

    slice->size.height = height;
    inRect.origin.x = rem->size.height - height;
    rem->size.height = inRect.origin.x;
    if (edge == NSRectEdgeMinY)
    {
      p_width = &slice->size.height;
    }

    else
    {
      p_width = &slice->origin.y;
    }

    if (edge == NSRectEdgeMinY)
    {
      inRect.origin.x = inRect.origin.y;
      p_y = &rem->origin.y;
    }
  }

  p_y->origin.x = inRect.origin.x + *p_width;
}

BOOL NSMouseInRect(NSPoint aPoint, NSRect aRect, BOOL flipped)
{
  v3 = aRect.origin.x + aRect.size.width;
  if (aPoint.x < aRect.origin.x || aPoint.x >= v3)
  {
    return 0;
  }

  v6 = aRect.origin.y + aRect.size.height;
  if (flipped)
  {
    return aPoint.y < v6 && aPoint.y >= aRect.origin.y;
  }

  else
  {
    return aPoint.y <= v6 && aPoint.y > aRect.origin.y;
  }
}

BOOL NSIntersectsRect(NSRect aRect, NSRect bRect)
{
  result = 0;
  if (aRect.size.width > 0.0 && bRect.size.width > 0.0 && aRect.size.height > 0.0 && bRect.size.height > 0.0)
  {
    if (aRect.origin.x >= bRect.origin.x)
    {
      if (bRect.origin.x + bRect.size.width <= aRect.origin.x)
      {
        return 0;
      }
    }

    else if (aRect.origin.x + aRect.size.width <= bRect.origin.x)
    {
      return 0;
    }

    if (aRect.origin.y >= bRect.origin.y)
    {
      if (bRect.origin.y + bRect.size.height <= aRect.origin.y)
      {
        return 0;
      }
    }

    else if (aRect.origin.y + aRect.size.height <= bRect.origin.y)
    {
      return 0;
    }

    return 1;
  }

  return result;
}

BOOL NSContainsRect(NSRect aRect, NSRect bRect)
{
  result = 0;
  if (aRect.size.width > 0.0 && aRect.size.height > 0.0 && bRect.size.width > 0.0 && bRect.size.height > 0.0 && aRect.origin.x <= bRect.origin.x && aRect.origin.y <= bRect.origin.y)
  {
    return aRect.origin.x + aRect.size.width >= bRect.origin.x + bRect.size.width && aRect.origin.y + aRect.size.height >= bRect.origin.y + bRect.size.height;
  }

  return result;
}

NSPoint NSPointFromString(NSString *aString)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 0.0;
  v4 = 0.0;
  parseFloats(aString, 2, &v3);
  v1 = v3;
  v2 = v4;
  result.y = v2;
  result.x = v1;
  return result;
}

uint64_t _foundation_swift_format_string_validation_enabled()
{
  if (qword_1ED43F5D8 != -1)
  {
    dispatch_once(&qword_1ED43F5D8, &__block_literal_global_5);
  }

  return byte_1ED43F5C9;
}

uint64_t ___foundation_swift_format_string_validation_enabled_block_invoke()
{
  result = _os_feature_enabled_impl();
  if (result)
  {
    v1 = 1;
  }

  else
  {
    result = getenv("NSSwiftFormatStringValidation");
    v1 = result != 0;
  }

  byte_1ED43F5C9 = v1;
  return result;
}

void raiseError(uint64_t a1, const char *a2)
{
  v3 = objc_alloc(MEMORY[0x1E695DF30]);
  Name = sel_getName(a2);
  v5 = [v3 initWithName:@"NSHashTableAbstractImplementationError" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"abstract method %s called directly on class %@", Name, objc_opt_class()), 0}];
  objc_exception_throw(v5);
}

void sub_18107ADC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void NSFreeHashTable(NSHashTable *table)
{
  if (table)
  {
  }

  else
  {
    v2 = table;
    NSLog(@"%s: hash table argument is NULL", "void NSFreeHashTable(NSHashTable * _Nonnull)");
    table = v2;
  }
}

void NSResetHashTable(NSHashTable *table)
{
  if (!table)
  {
    NSLog(@"%s: hash table argument is NULL", "void NSResetHashTable(NSHashTable * _Nonnull)");
  }

  [(NSHashTable *)table removeAllItems];
}

BOOL NSCompareHashTables(NSHashTable *table1, NSHashTable *table2)
{
  if (table1)
  {
    if (table2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    NSLog(@"%s: first hash table argument is NULL", "BOOL NSCompareHashTables(NSHashTable * _Nonnull, NSHashTable * _Nonnull)");
    if (table2)
    {
      goto LABEL_3;
    }
  }

  NSLog(@"%s: second hash table argument is NULL", "BOOL NSCompareHashTables(NSHashTable * _Nonnull, NSHashTable * _Nonnull)");
LABEL_3:

  return [(NSHashTable *)table1 isEqual:table2];
}

NSHashTable *__cdecl NSCopyHashTableWithZone(NSHashTable *table, NSZone *zone)
{
  if (!table)
  {
    NSLog(@"%s: hash table argument is NULL", zone, "NSHashTable * _Nonnull NSCopyHashTableWithZone(NSHashTable * _Nonnull, NSZone * _Nullable)");
  }

  return [(NSHashTable *)table copy];
}

NSHashEnumerator *__cdecl NSEnumerateHashTable(NSHashEnumerator *__return_ptr retstr, NSHashTable *table)
{
  v7[1] = *MEMORY[0x1E69E9840];
  if (!table)
  {
    NSLog(@"%s: hash table argument is NULL", "NSHashEnumerator NSEnumerateHashTable(NSHashTable * _Nonnull)");
  }

  v4 = [(NSHashTable *)table count];
  retstr->_si = 0;
  v5 = malloc_type_calloc(v4, 8uLL, 0x80040B8603338uLL);
  retstr->_bs = v5;
  v7[0] = 0;
  result = [(NSHashTable *)table getKeys:v5 count:v7];
  retstr->_pi = v7[0];
  return result;
}

void *__cdecl NSNextHashEnumeratorItem(NSHashEnumerator *enumerator)
{
  if (!enumerator)
  {
    NSLog(@"%s: state argument is NULL", "void * _Nullable NSNextHashEnumeratorItem(NSHashEnumerator * _Nonnull)");
  }

  si = enumerator->_si;
  result = enumerator->_bs;
  if (enumerator->_pi <= si)
  {
    if (result)
    {
      free(result);
      result = 0;
      enumerator->_bs = 0;
    }
  }

  else
  {
    result = *(result + si);
    enumerator->_si = si + 1;
  }

  return result;
}

void NSEndHashTableEnumeration(NSHashEnumerator *enumerator)
{
  if (!enumerator)
  {
    NSLog(@"%s: state argument is NULL", "void NSEndHashTableEnumeration(NSHashEnumerator * _Nonnull)");
  }

  enumerator->_si = enumerator->_pi;
  free(enumerator->_bs);
  enumerator->_bs = 0;
}

NSString *__cdecl NSStringFromHashTable(NSHashTable *table)
{
  if (!table)
  {
    NSLog(@"%s: hash table argument is NULL", "NSString * _Nonnull NSStringFromHashTable(NSHashTable * _Nonnull)");
  }

  return [(NSHashTable *)table description];
}

NSArray *__cdecl NSAllHashTableObjects(NSHashTable *table)
{
  if (!table)
  {
    NSLog(@"%s: hash table argument is NULL", "NSArray * _Nonnull NSAllHashTableObjects(NSHashTable * _Nonnull)");
  }

  return [(NSHashTable *)table allObjects];
}

uint64_t isEqualObjectHT(uint64_t a1, void *a2, void *a3)
{
  if (a2 == a3)
  {
    return 1;
  }

  else
  {
    return [a2 isEqual:?];
  }
}

void _NSLexiconIterateFormsOfWord(void *a1, uint64_t a2, uint64_t a3)
{
  v37 = *MEMORY[0x1E69E9840];
  v36 = 0;
  (*(a3 + 16))(a3, a1, &__block_literal_global_5_0, &v36);
  if ((v36 & 1) == 0)
  {
    v35[0] = 0;
    v35[1] = v35;
    v35[2] = 0x3052000000;
    v35[3] = __Block_byref_object_copy__6;
    v35[4] = __Block_byref_object_dispose__6;
    v35[5] = 0;
    v29[0] = MEMORY[0x1E69E9820];
    v29[1] = 3221225472;
    v30 = ___NSLexiconIterateFormsOfWord_block_invoke_6;
    v31 = &unk_1E69F3ED0;
    v33 = a2;
    v34 = v35;
    v32 = a1;
    v28[0] = 0;
    v28[1] = v28;
    v28[2] = 0x3052000000;
    v28[3] = __Block_byref_object_copy__6;
    v28[4] = __Block_byref_object_dispose__6;
    v28[5] = 0;
    v21[5] = 0;
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v23 = ___NSLexiconIterateFormsOfWord_block_invoke_2;
    v24 = &unk_1E69F3ED0;
    v26 = a2;
    v27 = v28;
    v25 = a1;
    v21[0] = 0;
    v21[1] = v21;
    v21[2] = 0x3052000000;
    v21[3] = __Block_byref_object_copy__6;
    v21[4] = __Block_byref_object_dispose__6;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v16 = ___NSLexiconIterateFormsOfWord_block_invoke_3;
    v17 = &unk_1E69F3ED0;
    v19 = a2;
    v20 = v21;
    v18 = a1;
    v6 = [a1 lowercaseStringWithLocale:a2];
    *(v34[1] + 40) = v6;
    if ([a1 isEqual:*(v34[1] + 40)])
    {
      v7 = v14;
      v14[0] = MEMORY[0x1E69E9820];
      v14[1] = 3221225472;
      v8 = ___NSLexiconIterateFormsOfWord_block_invoke_4;
    }

    else if ([a1 isEqual:v23(v22)])
    {
      v7 = v13;
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v8 = ___NSLexiconIterateFormsOfWord_block_invoke_5;
    }

    else
    {
      if (![a1 isEqual:v16(v15)])
      {
LABEL_14:
        _Block_object_dispose(v21, 8);
        _Block_object_dispose(v28, 8);
        _Block_object_dispose(v35, 8);
        return;
      }

      v7 = v12;
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v8 = ___NSLexiconIterateFormsOfWord_block_invoke_6;
    }

    v7[2] = v8;
    v7[3] = &unk_1E69F3EF8;
    v7[4] = a2;
    if (([a1 isEqual:v30(v29)] & 1) != 0 || (v9 = v30(v29), (*(a3 + 16))(a3, v9, v7, &v36), (v36 & 1) == 0))
    {
      if (([a1 isEqual:v16(v15)] & 1) != 0 || (v10 = v16(v15), (*(a3 + 16))(a3, v10, v7, &v36), (v36 & 1) == 0))
      {
        if (([a1 isEqual:v23(v22)] & 1) == 0)
        {
          v11 = v23(v22);
          (*(a3 + 16))(a3, v11, v7, &v36);
        }
      }
    }

    goto LABEL_14;
  }
}

void sub_18107C304(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id _NSGroupIndexesIntoSimpleRanges(uint64_t *a1, uint64_t a2)
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (a2)
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v8 = *a1++;
      v7 = v8;
      if (v6 + v5 == v8)
      {
        ++v6;
      }

      else
      {
        if (v6)
        {
          [v4 addObject:{+[NSValue valueWithRange:](NSValue, "valueWithRange:")}];
        }

        v6 = 1;
        v5 = v7;
      }

      --a2;
    }

    while (a2);
    if (v6)
    {
      [v4 addObject:{+[NSValue valueWithRange:](NSValue, "valueWithRange:", v5)}];
    }
  }

  return v4;
}

void sub_181081DF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 56), 8);
  _Unwind_Resume(a1);
}

void sub_18108205C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 72), 8);
  _Unwind_Resume(a1);
}

void sub_1810822EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 72), 8);
  _Unwind_Resume(a1);
}

uint64_t _bitfieldSetRangesCount(uint64_t result)
{
  if (result)
  {
    v1 = result;
    v2 = ~result;
    result = 1;
    v3 = v1;
    while (1)
    {
      v4 = (-1 << __clz(__rbit64(v3))) & v2;
      if (!v4)
      {
        break;
      }

      ++result;
      v3 = (-1 << __clz(__rbit64(v4))) & v1;
      if (!v3)
      {
        return --result;
      }
    }
  }

  return result;
}

void sub_181084444(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 88), 8);
  _Unwind_Resume(a1);
}

void sub_1810846F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v11 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __NSIndexSetChunkIterate(void *a1, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7, unint64_t *a8)
{
  v13 = a3;
  v44 = *MEMORY[0x1E69E9840];
  if ((a2 & 0x2000000000000000) != 0)
  {
    v16 = atomic_load(a8);
    if (v16 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v17 = v16 >= a3;
      v18 = v16 <= a4;
      if ((a2 & 2) == 0)
      {
        v18 = v17;
      }

      if (!v18)
      {
        return 0;
      }
    }
  }

  if ((a2 & 0x4000000000000000) != 0)
  {
    _CFAutoreleasePoolPush();
    v43 = 0;
    if (a4 >= v13)
    {
      v30 = a5 + a6;
      do
      {
        v31 = [a1 rangeAtIndex:v13];
        if (v31 + v32 >= v30)
        {
          v33 = a5 + a6;
        }

        else
        {
          v33 = v31 + v32;
        }

        if (a5 > v31 || v31 >= v30)
        {
          v34 = v33 - a5;
          if (a5 >= v31 + v32)
          {
            v34 = 0;
          }

          if (v31 <= a5)
          {
            v35 = v34;
          }

          else
          {
            v35 = 0;
          }

          if (!v35)
          {
            goto LABEL_44;
          }
        }

        else if (v33 == v31)
        {
          goto LABEL_44;
        }

        __NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(a7);
LABEL_44:
        if (v43 == 1)
        {
          _CFAutoreleasePoolPop();
          return 1;
        }

        ++v13;
      }

      while (v13 <= a4);
    }

    return 0;
  }

  v19 = a4 - a3;
  v20 = MEMORY[0x1EEE9AC00](a1);
  v22 = v41 - v21;
  if (![a1 __getContainmentVector:v41 - v21 inRange:{v13, a4 - v13 + 1, v20}])
  {
    return 0;
  }

  v41[1] = v41;
  v41[0] = _CFAutoreleasePoolPush();
  if (a4 - v13 == -1)
  {
    return 0;
  }

  v23 = 0;
  for (i = a4; ; --i)
  {
    if ((a2 & 2) != 0)
    {
      v25 = v19;
    }

    else
    {
      v25 = v23;
    }

    if (v22[v25] != 1)
    {
      goto LABEL_26;
    }

    if ((a2 & 2) != 0)
    {
      v26 = i;
    }

    else
    {
      v26 = v13 + v23;
    }

    v42 = 0;
    if ((a2 & 0x2000000000000000) == 0)
    {
      __NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(a7);
      if (v42)
      {
        goto LABEL_49;
      }

      goto LABEL_26;
    }

    if (__NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(a7))
    {
      break;
    }

    if (v42)
    {
LABEL_49:
      v36 = 1;
      goto LABEL_56;
    }

    v27 = atomic_load(a8);
    if (v27 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v28 = v27 >= v13;
      v29 = v27 <= a4;
      if ((a2 & 2) == 0)
      {
        v29 = v28;
      }

      if (!v29)
      {
        v36 = 0;
        goto LABEL_56;
      }
    }

LABEL_26:
    ++v23;
    if (--v19 == -1)
    {
      return 0;
    }
  }

  do
  {
    v37 = atomic_load(a8);
    if (v37 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v38 = v37 < v26;
      if ((a2 & 2) == 0)
      {
        v38 = v26 < v37;
      }

      if (!v38)
      {
        break;
      }
    }

    v39 = v37;
    atomic_compare_exchange_strong_explicit(a8, &v39, v26, memory_order_relaxed, memory_order_relaxed);
  }

  while (v39 != v37);
  v36 = 0;
LABEL_56:
  _CFAutoreleasePoolPop();
  return v36;
}

void sub_181087720(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [v1 invalidate];
  }

  _Unwind_Resume(exception_object);
}

void sub_181087854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181087A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _NSPerformInflectionsWithObserverAndInflectionRule(void *a1, NSInflectionRule *a2, uint64_t a3)
{
  v9[5] = *MEMORY[0x1E69E9840];
  v6 = _NSInflectionObserver;
  v7 = a1;
  _NSInflectionObserver = a1;
  if (!a2 || +[NSInflectionRule automaticRule]== a2)
  {
    (*(a3 + 16))(a3);
  }

  else
  {
    v8 = [[_NSAttributedStringGrammarInflection alloc] initWithInflectionRule:a2];
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___NSPerformInflectionsWithObserverAndInflectionRule_block_invoke;
    v9[3] = &unk_1E69F40C0;
    v9[4] = a3;
    [(_NSAttributedStringGrammarInflection *)v8 _useInsteadOfUserInflectionInBlock:v9];
  }

  _NSInflectionObserver = v6;
}

uint64_t _NSInflectionGrammarWithLensAndRange(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (*(a1 + 16))(a1, @"NSMorphology", a2, a3);
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v7 = (*(a1 + 16))(a1, @"NSGrammar", a2, a3);
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      return v7;
    }

    else
    {
      return 0;
    }
  }

  return v6;
}

void sub_18108BEA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 72), 8);
  _Unwind_Resume(a1);
}

void sub_18108C164(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 72), 8);
  _Unwind_Resume(a1);
}

void sub_18108C98C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 72), 8);
  _Unwind_Resume(a1);
}

void sub_18108CD40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va1, a10);
  va_start(va, a10);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose((v10 - 88), 8);
  _Unwind_Resume(a1);
}

void sub_18108D0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 72), 8);
  _Unwind_Resume(a1);
}

uint64_t ___virtualizeURLKeysForAccessingFault_block_invoke(uint64_t a1, void *a2, uint64_t a3)
{
  result = [a2 isEqualToString:*MEMORY[0x1E695DB90]];
  v7 = *MEMORY[0x1E695E298];
  if (result)
  {
    v8 = v7 == a2;
  }

  else
  {
    v8 = 1;
  }

  if (!v8)
  {
    v9 = *(*(*(a1 + 40) + 8) + 40);
    if (!v9)
    {
      *(*(*(a1 + 40) + 8) + 40) = [*(a1 + 32) mutableCopy];
      v9 = *(*(*(a1 + 40) + 8) + 40);
    }

    return [v9 replaceObjectAtIndex:a3 withObject:v7];
  }

  return result;
}

uint64_t _NSGetVoidValueWithMethod(uint64_t a1, int a2, Method m)
{
  Implementation = method_getImplementation(m);
  Name = method_getName(m);
  (Implementation)(a1, Name);
  return 0;
}

id _NSGetCharValueWithMethod(uint64_t a1, uint64_t a2, objc_method *a3)
{
  v5 = objc_allocWithZone(NSNumber);
  Implementation = method_getImplementation(a3);
  Name = method_getName(a3);
  v8 = [v5 initWithChar:{(Implementation)(a1, Name)}];

  return v8;
}

id _NSGetLongValueWithMethod(uint64_t a1, uint64_t a2, objc_method *a3)
{
  v5 = objc_allocWithZone(NSNumber);
  Implementation = method_getImplementation(a3);
  Name = method_getName(a3);
  v8 = [v5 initWithLong:{(Implementation)(a1, Name)}];

  return v8;
}

id _NSGetUnsignedLongValueWithMethod(uint64_t a1, uint64_t a2, objc_method *a3)
{
  v5 = objc_allocWithZone(NSNumber);
  Implementation = method_getImplementation(a3);
  Name = method_getName(a3);
  v8 = [v5 initWithUnsignedLong:{(Implementation)(a1, Name)}];

  return v8;
}

NSValue *_NSGetRangeValueWithMethod(uint64_t a1, int a2, Method m)
{
  Implementation = method_getImplementation(m);
  Name = method_getName(m);
  v8 = (Implementation)(a1, Name);

  return [NSValue valueWithRange:v8, v7];
}

id _NSGetObjectGetWeakValueInIvar(uint64_t a1, int a2, Ivar v)
{
  v3 = (a1 + ivar_getOffset(v));

  return objc_loadWeak(v3);
}

id _NSGetCharValueInIvar(uint64_t a1, uint64_t a2, objc_ivar *a3)
{
  v3 = [objc_allocWithZone(NSNumber) initWithChar:*(a1 + ivar_getOffset(a3))];

  return v3;
}

id _NSGetUnsignedCharValueInIvar(uint64_t a1, uint64_t a2, objc_ivar *a3)
{
  v3 = [objc_allocWithZone(NSNumber) initWithUnsignedChar:*(a1 + ivar_getOffset(a3))];

  return v3;
}

id _NSGetDoubleValueInIvar(uint64_t a1, uint64_t a2, objc_ivar *a3)
{
  v3 = [objc_allocWithZone(NSNumber) initWithDouble:*(a1 + ivar_getOffset(a3))];

  return v3;
}

id _NSGetFloatValueInIvar(uint64_t a1, uint64_t a2, objc_ivar *a3)
{
  v5 = objc_allocWithZone(NSNumber);
  LODWORD(v6) = *(a1 + ivar_getOffset(a3));
  v7 = [v5 initWithFloat:v6];

  return v7;
}

id _NSGetIntValueInIvar(uint64_t a1, uint64_t a2, objc_ivar *a3)
{
  v3 = [objc_allocWithZone(NSNumber) initWithInt:*(a1 + ivar_getOffset(a3))];

  return v3;
}

id _NSGetUnsignedIntValueInIvar(uint64_t a1, uint64_t a2, objc_ivar *a3)
{
  v3 = [objc_allocWithZone(NSNumber) initWithUnsignedInt:*(a1 + ivar_getOffset(a3))];

  return v3;
}

id _NSGetLongValueInIvar(uint64_t a1, uint64_t a2, objc_ivar *a3)
{
  v3 = [objc_allocWithZone(NSNumber) initWithLong:*(a1 + ivar_getOffset(a3))];

  return v3;
}

id _NSGetUnsignedLongValueInIvar(uint64_t a1, uint64_t a2, objc_ivar *a3)
{
  v3 = [objc_allocWithZone(NSNumber) initWithUnsignedLong:*(a1 + ivar_getOffset(a3))];

  return v3;
}

id _NSGetUnsignedLongLongValueInIvar(uint64_t a1, uint64_t a2, objc_ivar *a3)
{
  v3 = [objc_allocWithZone(NSNumber) initWithUnsignedLongLong:*(a1 + ivar_getOffset(a3))];

  return v3;
}

id _NSGetShortValueInIvar(uint64_t a1, uint64_t a2, objc_ivar *a3)
{
  v3 = [objc_allocWithZone(NSNumber) initWithShort:*(a1 + ivar_getOffset(a3))];

  return v3;
}

id _NSGetUnsignedShortValueInIvar(uint64_t a1, uint64_t a2, objc_ivar *a3)
{
  v3 = [objc_allocWithZone(NSNumber) initWithUnsignedShort:*(a1 + ivar_getOffset(a3))];

  return v3;
}

NSValue *_NSGetPointValueInIvar(uint64_t a1, int a2, Ivar v)
{
  v3 = (a1 + ivar_getOffset(v));
  v4 = *v3;
  v5 = v3[1];

  return [NSValue valueWithPoint:v4, v5];
}

NSValue *_NSGetRangeValueInIvar(uint64_t a1, int a2, Ivar v)
{
  v3 = (a1 + ivar_getOffset(v));
  v4 = *v3;
  v5 = v3[1];

  return [NSValue valueWithRange:v4, v5];
}

NSValue *_NSGetRectValueInIvar(uint64_t a1, int a2, Ivar v)
{
  v3 = (a1 + ivar_getOffset(v));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];

  return [NSValue valueWithRect:v4, v5, v6, v7];
}

NSValue *_NSGetSizeValueInIvar(uint64_t a1, int a2, Ivar v)
{
  v3 = (a1 + ivar_getOffset(v));
  v4 = *v3;
  v5 = v3[1];

  return [NSValue valueWithSize:v4, v5];
}

NSValue *_NSGetValueInIvar(uint64_t a1, int a2, Ivar v)
{
  v14[1] = *MEMORY[0x1E69E9840];
  TypeEncoding = ivar_getTypeEncoding(v);
  v6 = strlen(TypeEncoding);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  if (v7)
  {
    v10 = 0;
    do
    {
      v12 = *TypeEncoding++;
      v11 = v12;
      if (v12 == 34)
      {
        v10 ^= 1u;
      }

      else if (v10)
      {
        v10 = 1;
      }

      else
      {
        v10 = 0;
        v8[v9++] = v11;
      }

      --v7;
    }

    while (v7);
  }

  v8[v9] = 0;
  return [NSValue valueWithBytes:a1 + ivar_getOffset(v) objCType:v8];
}

uint64_t _NSSetCharValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    v9 = [a3 charValue];

    return (Implementation)(a1, Name, v9);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

uint64_t _NSSetLongValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    v9 = [a3 longValue];

    return (Implementation)(a1, Name, v9);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

uint64_t _NSSetUnsignedLongValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    v9 = [a3 unsignedLongValue];

    return (Implementation)(a1, Name, v9);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

uint64_t _NSSetRangeValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    v10 = [a3 rangeValue];

    return (Implementation)(a1, Name, v10, v9);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

uint64_t _NSSetSizeValueForKeyWithMethod(void *a1, int a2, void *a3, uint64_t a4, Method m)
{
  if (a3)
  {
    Implementation = method_getImplementation(m);
    Name = method_getName(m);
    [a3 sizeValue];

    return (Implementation)(a1, Name);
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

id _NSSetObjectSetManualValueForKeyInIvar(uint64_t a1, int a2, void *a3, int a4, Ivar v)
{
  Offset = ivar_getOffset(v);
  v8 = *(a1 + Offset);
  result = a3;
  *(a1 + Offset) = result;
  return result;
}

id _NSSetObjectSetWeakValueForKeyInIvar(uint64_t a1, int a2, void *a3, int a4, Ivar v)
{
  v6 = (a1 + ivar_getOffset(v));

  return objc_storeWeak(v6, a3);
}

ptrdiff_t _NSSetObjectSetAssignValueForKeyInIvar(uint64_t a1, int a2, uint64_t a3, int a4, Ivar v)
{
  result = ivar_getOffset(v);
  *(a1 + result) = a3;
  return result;
}

ptrdiff_t _NSSetCharValueForKeyInIvar(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, objc_ivar *a5)
{
  if (a3)
  {
    v7 = [a3 charValue];
    result = ivar_getOffset(a5);
    a1[result] = v7;
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }

  return result;
}

ptrdiff_t _NSSetUnsignedCharValueForKeyInIvar(_BYTE *a1, uint64_t a2, void *a3, uint64_t a4, objc_ivar *a5)
{
  if (a3)
  {
    v7 = [a3 unsignedCharValue];
    result = ivar_getOffset(a5);
    a1[result] = v7;
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }

  return result;
}

ptrdiff_t _NSSetFloatValueForKeyInIvar(char *a1, uint64_t a2, void *a3, uint64_t a4, objc_ivar *a5)
{
  if (a3)
  {
    [a3 floatValue];
    v8 = v7;
    result = ivar_getOffset(a5);
    *&a1[result] = v8;
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }

  return result;
}

ptrdiff_t _NSSetIntValueForKeyInIvar(char *a1, uint64_t a2, void *a3, uint64_t a4, objc_ivar *a5)
{
  if (a3)
  {
    v7 = [a3 intValue];
    result = ivar_getOffset(a5);
    *&a1[result] = v7;
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }

  return result;
}

ptrdiff_t _NSSetUnsignedIntValueForKeyInIvar(char *a1, uint64_t a2, void *a3, uint64_t a4, objc_ivar *a5)
{
  if (a3)
  {
    v7 = [a3 unsignedIntValue];
    result = ivar_getOffset(a5);
    *&a1[result] = v7;
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }

  return result;
}

ptrdiff_t _NSSetLongValueForKeyInIvar(char *a1, uint64_t a2, void *a3, uint64_t a4, objc_ivar *a5)
{
  if (a3)
  {
    v7 = [a3 longValue];
    result = ivar_getOffset(a5);
    *&a1[result] = v7;
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }

  return result;
}

ptrdiff_t _NSSetUnsignedLongValueForKeyInIvar(char *a1, uint64_t a2, void *a3, uint64_t a4, objc_ivar *a5)
{
  if (a3)
  {
    v7 = [a3 unsignedLongValue];
    result = ivar_getOffset(a5);
    *&a1[result] = v7;
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }

  return result;
}

ptrdiff_t _NSSetShortValueForKeyInIvar(char *a1, uint64_t a2, void *a3, uint64_t a4, objc_ivar *a5)
{
  if (a3)
  {
    v7 = [a3 shortValue];
    result = ivar_getOffset(a5);
    *&a1[result] = v7;
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }

  return result;
}

ptrdiff_t _NSSetUnsignedShortValueForKeyInIvar(char *a1, uint64_t a2, void *a3, uint64_t a4, objc_ivar *a5)
{
  if (a3)
  {
    v7 = [a3 unsignedShortValue];
    result = ivar_getOffset(a5);
    *&a1[result] = v7;
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }

  return result;
}

uint64_t _NSSetPointValueForKeyInIvar(char *a1, int a2, void *a3, uint64_t a4, Ivar v)
{
  if (a3)
  {
    v6 = &a1[ivar_getOffset(v)];
    result = [a3 pointValue];
    *v6 = v8;
    *(v6 + 1) = v9;
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }

  return result;
}

uint64_t _NSSetRangeValueForKeyInIvar(char *a1, int a2, void *a3, uint64_t a4, Ivar v)
{
  if (a3)
  {
    v6 = &a1[ivar_getOffset(v)];
    result = [a3 rangeValue];
    *v6 = result;
    *(v6 + 1) = v8;
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }

  return result;
}

uint64_t _NSSetRectValueForKeyInIvar(char *a1, int a2, void *a3, uint64_t a4, Ivar v)
{
  if (a3)
  {
    v6 = &a1[ivar_getOffset(v)];
    result = [a3 rectValue];
    *v6 = v8;
    *(v6 + 1) = v9;
    *(v6 + 2) = v10;
    *(v6 + 3) = v11;
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }

  return result;
}

uint64_t _NSSetSizeValueForKeyInIvar(char *a1, int a2, void *a3, uint64_t a4, Ivar v)
{
  if (a3)
  {
    v6 = &a1[ivar_getOffset(v)];
    result = [a3 sizeValue];
    *v6 = v8;
    *(v6 + 1) = v9;
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }

  return result;
}

uint64_t _NSSetValueInIvar(void *a1, int a2, void *a3, uint64_t a4, Ivar v)
{
  if (a3)
  {
    v6 = a1 + ivar_getOffset(v);

    return [a3 getValue:v6];
  }

  else
  {

    return [a1 setNilValueForKey:a4];
  }
}

id _NSKeyValueGetterForClassAndKey(const void *(__cdecl *a1)(CFAllocatorRef, const void *), const void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&NSKeyValueCachedAccessorLock);
  v6 = _MergedGlobals_98;
  if (!_MergedGlobals_98)
  {
    v7 = *(MEMORY[0x1E695E9F8] + 16);
    *&v11.version = *MEMORY[0x1E695E9F8];
    *&v11.release = v7;
    v11.equal = NSKeyValueAccessorIsEqual;
    v11.hash = NSKeyValueAccessorHash;
    v6 = CFSetCreateMutable(0, 0, &v11);
    _MergedGlobals_98 = v6;
  }

  v11.version = 0;
  v11.retain = a1;
  *&v11.release = a2;
  if (a2)
  {
    v8 = CFHash(a2);
    v6 = _MergedGlobals_98;
  }

  else
  {
    v8 = 0;
  }

  v11.copyDescription = (v8 ^ a1);
  Value = CFSetGetValue(v6, &v11);
  if (!Value)
  {
    Value = [a3 _createValueGetterWithContainerClassID_key_];
    CFSetAddValue(_MergedGlobals_98, Value);
  }

  os_unfair_lock_unlock(&NSKeyValueCachedAccessorLock);
  return Value;
}

void sub_1810972A0(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(&NSKeyValueCachedAccessorLock);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

id _NSKeyValuePrimitiveGetterForClassAndKey(const void *(__cdecl *a1)(CFAllocatorRef, const void *), const void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&NSKeyValueCachedAccessorLock);
  v6 = qword_1ED43F618;
  if (!qword_1ED43F618)
  {
    v7 = *(MEMORY[0x1E695E9F8] + 16);
    *&v11.version = *MEMORY[0x1E695E9F8];
    *&v11.release = v7;
    v11.equal = NSKeyValueAccessorIsEqual;
    v11.hash = NSKeyValueAccessorHash;
    v6 = CFSetCreateMutable(0, 0, &v11);
    qword_1ED43F618 = v6;
  }

  v11.version = 0;
  v11.retain = a1;
  *&v11.release = a2;
  if (a2)
  {
    v8 = CFHash(a2);
    v6 = qword_1ED43F618;
  }

  else
  {
    v8 = 0;
  }

  v11.copyDescription = (v8 ^ a1);
  Value = CFSetGetValue(v6, &v11);
  if (!Value)
  {
    Value = [a3 _createValuePrimitiveGetterWithContainerClassID_key_];
    CFSetAddValue(qword_1ED43F618, Value);
  }

  os_unfair_lock_unlock(&NSKeyValueCachedAccessorLock);
  return Value;
}

void sub_181097424(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(&NSKeyValueCachedAccessorLock);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

id _NSKeyValuePrimitiveSetterForClassAndKey(const void *(__cdecl *a1)(CFAllocatorRef, const void *), const void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&NSKeyValueCachedAccessorLock);
  v6 = qword_1ED43F620;
  if (!qword_1ED43F620)
  {
    v7 = *(MEMORY[0x1E695E9F8] + 16);
    *&v11.version = *MEMORY[0x1E695E9F8];
    *&v11.release = v7;
    v11.equal = NSKeyValueAccessorIsEqual;
    v11.hash = NSKeyValueAccessorHash;
    v6 = CFSetCreateMutable(0, 0, &v11);
    qword_1ED43F620 = v6;
  }

  v11.version = 0;
  v11.retain = a1;
  *&v11.release = a2;
  if (a2)
  {
    v8 = CFHash(a2);
    v6 = qword_1ED43F620;
  }

  else
  {
    v8 = 0;
  }

  v11.copyDescription = (v8 ^ a1);
  Value = CFSetGetValue(v6, &v11);
  if (!Value)
  {
    Value = [a3 _createValuePrimitiveSetterWithContainerClassID_key_];
    CFSetAddValue(qword_1ED43F620, Value);
  }

  os_unfair_lock_unlock(&NSKeyValueCachedAccessorLock);
  return Value;
}

void sub_1810975A8(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(&NSKeyValueCachedAccessorLock);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void _NSKeyValueInvalidateAllCachesForContainerAndKey(uint64_t a1, const void *a2)
{
  v8[7] = *MEMORY[0x1E69E9840];
  os_unfair_lock_lock(&NSKeyValueCachedAccessorLock);
  v7[0] = 0;
  v7[1] = a1;
  v7[2] = a2;
  if (a2)
  {
    v4 = CFHash(a2);
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
  v7[3] = v4 ^ a1;
  v8[0] = _MergedGlobals_98;
  v8[1] = NSKeyValueCachedSetters;
  v8[2] = NSKeyValueCachedMutableArrayGetters;
  v8[3] = NSKeyValueCachedMutableOrderedSetGetters;
  v8[4] = NSKeyValueCachedMutableSetGetters;
  v8[5] = qword_1ED43F618;
  v8[6] = qword_1ED43F620;
  do
  {
    v6 = v8[v5];
    if (v6)
    {
      CFSetRemoveValue(v6, v7);
    }

    ++v5;
  }

  while (v5 != 7);
  os_unfair_lock_unlock(&NSKeyValueCachedAccessorLock);
}

uint64_t _NSSetValueAndNotifyForUndefinedKey(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void *, uint64_t, uint64_t, uint64_t))
{
  [a1 willChangeValueForKey:a4];
  a5(a1, a2, a3, a4);

  return [a1 didChangeValueForKey:a4];
}

void NSKVODeallocateBreak(uint64_t a1)
{
  if (!a1)
  {
    NSLog(@" ", v1, v2);
  }
}

void NSKVOInsertObjectAtIndexAndNotify(void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  Class = object_getClass(a1);
  IndexedIvars = object_getIndexedIvars(Class);
  os_unfair_recursive_lock_lock_with_options();
  v10 = [CFDictionaryGetValue(IndexedIvars[3] a2)];
  os_unfair_recursive_lock_unlock();
  v9 = [[NSIndexSet alloc] initWithIndex:a4];
  [a1 willChange:2 valuesAtIndexes:v9 forKey:v10];
  class_getInstanceMethod(*IndexedIvars, a2);
  method_invoke();
  [a1 didChange:2 valuesAtIndexes:v9 forKey:v10];
}

void NSKVOInsertObjectsAtIndexesAndNotify(void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  Class = object_getClass(a1);
  IndexedIvars = object_getIndexedIvars(Class);
  os_unfair_recursive_lock_lock_with_options();
  v11 = [CFDictionaryGetValue(IndexedIvars[3] a2)];
  os_unfair_recursive_lock_unlock();
  [a1 willChange:2 valuesAtIndexes:a4 forKey:v11];
  MethodImplementation = class_getMethodImplementation(*IndexedIvars, a2);
  (MethodImplementation)(a1, a2, a3, a4);
  [a1 didChange:2 valuesAtIndexes:a4 forKey:v11];
}

void NSKVORemoveObjectAtIndexAndNotify(void *a1, const void *a2, uint64_t a3)
{
  Class = object_getClass(a1);
  IndexedIvars = object_getIndexedIvars(Class);
  os_unfair_recursive_lock_lock_with_options();
  v9 = [CFDictionaryGetValue(IndexedIvars[3] a2)];
  os_unfair_recursive_lock_unlock();
  v8 = [[NSIndexSet alloc] initWithIndex:a3];
  [a1 willChange:3 valuesAtIndexes:v8 forKey:v9];
  class_getInstanceMethod(*IndexedIvars, a2);
  method_invoke();
  [a1 didChange:3 valuesAtIndexes:v8 forKey:v9];
}

void NSKVORemoveObjectsAtIndexesAndNotify(void *a1, const void *a2, uint64_t a3)
{
  Class = object_getClass(a1);
  IndexedIvars = object_getIndexedIvars(Class);
  os_unfair_recursive_lock_lock_with_options();
  v9 = [CFDictionaryGetValue(IndexedIvars[3] a2)];
  os_unfair_recursive_lock_unlock();
  [a1 willChange:3 valuesAtIndexes:a3 forKey:v9];
  MethodImplementation = class_getMethodImplementation(*IndexedIvars, a2);
  (MethodImplementation)(a1, a2, a3);
  [a1 didChange:3 valuesAtIndexes:a3 forKey:v9];
}

void NSKVOReplaceObjectAtIndexAndNotify(void *a1, const void *a2, uint64_t a3)
{
  Class = object_getClass(a1);
  IndexedIvars = object_getIndexedIvars(Class);
  os_unfair_recursive_lock_lock_with_options();
  v9 = [CFDictionaryGetValue(IndexedIvars[3] a2)];
  os_unfair_recursive_lock_unlock();
  v8 = [[NSIndexSet alloc] initWithIndex:a3];
  [a1 willChange:4 valuesAtIndexes:v8 forKey:v9];
  class_getInstanceMethod(*IndexedIvars, a2);
  method_invoke();
  [a1 didChange:4 valuesAtIndexes:v8 forKey:v9];
}

void NSKVOReplaceObjectsAtIndexesAndNotify(void *a1, const void *a2, uint64_t a3)
{
  Class = object_getClass(a1);
  IndexedIvars = object_getIndexedIvars(Class);
  os_unfair_recursive_lock_lock_with_options();
  v8 = [CFDictionaryGetValue(IndexedIvars[3] a2)];
  os_unfair_recursive_lock_unlock();
  [a1 willChange:4 valuesAtIndexes:a3 forKey:v8];
  class_getInstanceMethod(*IndexedIvars, a2);
  method_invoke();
  [a1 didChange:4 valuesAtIndexes:a3 forKey:v8];
}

void NSKVOAddObjectAndNotify(void *a1, const void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  Class = object_getClass(a1);
  IndexedIvars = object_getIndexedIvars(Class);
  os_unfair_recursive_lock_lock_with_options();
  v7 = [CFDictionaryGetValue(IndexedIvars[3] a2)];
  os_unfair_recursive_lock_unlock();
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v9 count:1];
  [a1 willChangeValueForKey:v7 withSetMutation:1 usingObjects:v8];
  class_getInstanceMethod(*IndexedIvars, a2);
  method_invoke();
  [a1 didChangeValueForKey:v7 withSetMutation:1 usingObjects:v8];
}

void NSKVOIntersectSetAndNotify(void *a1, const void *a2, uint64_t a3)
{
  Class = object_getClass(a1);
  IndexedIvars = object_getIndexedIvars(Class);
  os_unfair_recursive_lock_lock_with_options();
  v8 = [CFDictionaryGetValue(IndexedIvars[3] a2)];
  os_unfair_recursive_lock_unlock();
  [a1 willChangeValueForKey:v8 withSetMutation:3 usingObjects:a3];
  class_getInstanceMethod(*IndexedIvars, a2);
  method_invoke();
  [a1 didChangeValueForKey:v8 withSetMutation:3 usingObjects:a3];
}

void NSKVOMinusSetAndNotify(void *a1, const void *a2, uint64_t a3)
{
  Class = object_getClass(a1);
  IndexedIvars = object_getIndexedIvars(Class);
  os_unfair_recursive_lock_lock_with_options();
  v8 = [CFDictionaryGetValue(IndexedIvars[3] a2)];
  os_unfair_recursive_lock_unlock();
  [a1 willChangeValueForKey:v8 withSetMutation:2 usingObjects:a3];
  class_getInstanceMethod(*IndexedIvars, a2);
  method_invoke();
  [a1 didChangeValueForKey:v8 withSetMutation:2 usingObjects:a3];
}

void NSKVORemoveObjectAndNotify(void *a1, const void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = a3;
  Class = object_getClass(a1);
  IndexedIvars = object_getIndexedIvars(Class);
  os_unfair_recursive_lock_lock_with_options();
  v7 = [CFDictionaryGetValue(IndexedIvars[3] a2)];
  os_unfair_recursive_lock_unlock();
  v8 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v9 count:1];
  [a1 willChangeValueForKey:v7 withSetMutation:2 usingObjects:v8];
  class_getInstanceMethod(*IndexedIvars, a2);
  method_invoke();
  [a1 didChangeValueForKey:v7 withSetMutation:2 usingObjects:v8];
}

void NSKVOUnionSetAndNotify(void *a1, const void *a2, uint64_t a3)
{
  Class = object_getClass(a1);
  IndexedIvars = object_getIndexedIvars(Class);
  os_unfair_recursive_lock_lock_with_options();
  v8 = [CFDictionaryGetValue(IndexedIvars[3] a2)];
  os_unfair_recursive_lock_unlock();
  [a1 willChangeValueForKey:v8 withSetMutation:1 usingObjects:a3];
  class_getInstanceMethod(*IndexedIvars, a2);
  method_invoke();
  [a1 didChangeValueForKey:v8 withSetMutation:1 usingObjects:a3];
}

void _NSSetCharValueAndNotify(void *a1, const void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v8 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v9 = [CFDictionaryGetValue(v8[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v8[5])
    {
      [a1 willChangeValueForKey:v9];
      MethodImplementation = class_getMethodImplementation(*v8, a2);
      (MethodImplementation)(a1, a2, a3);
      [a1 didChangeValueForKey:v9];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = ___NSSetCharValueAndNotify_block_invoke;
      v11[3] = &unk_1E69F4668;
      v11[5] = v8;
      v11[6] = a2;
      v11[4] = a1;
      v12 = a3;
      [a1 _changeValueForKey:v9 key:0 key:0 usingBlock:v11];
    }
  }

  else
  {

    [a1 a2];
  }
}

void _NSSetUnsignedCharValueAndNotify(void *a1, const void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v8 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v9 = [CFDictionaryGetValue(v8[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v8[5])
    {
      [a1 willChangeValueForKey:v9];
      MethodImplementation = class_getMethodImplementation(*v8, a2);
      (MethodImplementation)(a1, a2, a3);
      [a1 didChangeValueForKey:v9];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = ___NSSetUnsignedCharValueAndNotify_block_invoke;
      v11[3] = &unk_1E69F4668;
      v11[5] = v8;
      v11[6] = a2;
      v11[4] = a1;
      v12 = a3;
      [a1 _changeValueForKey:v9 key:0 key:0 usingBlock:v11];
    }
  }

  else
  {

    [a1 a2];
  }
}

void _NSSetFloatValueAndNotify(void *a1, const void *a2, float a3)
{
  v14 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v9 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v10 = [CFDictionaryGetValue(v9[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v9[5])
    {
      [a1 willChangeValueForKey:v10];
      MethodImplementation = class_getMethodImplementation(*v9, a2);
      (MethodImplementation)(a1, a2, a3);
      [a1 didChangeValueForKey:v10];
    }

    else
    {
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = ___NSSetFloatValueAndNotify_block_invoke;
      v12[3] = &unk_1E69F34C0;
      v12[5] = v9;
      v12[6] = a2;
      v12[4] = a1;
      v13 = a3;
      [a1 _changeValueForKey:v10 key:0 key:0 usingBlock:v12];
    }
  }

  else
  {
    *&v7 = a3;

    [a1 a2];
  }
}

void _NSSetIntValueAndNotify(void *a1, const void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v8 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v9 = [CFDictionaryGetValue(v8[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v8[5])
    {
      [a1 willChangeValueForKey:v9];
      MethodImplementation = class_getMethodImplementation(*v8, a2);
      (MethodImplementation)(a1, a2, a3);
      [a1 didChangeValueForKey:v9];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = ___NSSetIntValueAndNotify_block_invoke;
      v11[3] = &unk_1E69F34C0;
      v11[5] = v8;
      v11[6] = a2;
      v11[4] = a1;
      v12 = a3;
      [a1 _changeValueForKey:v9 key:0 key:0 usingBlock:v11];
    }
  }

  else
  {

    [a1 a2];
  }
}

void _NSSetUnsignedIntValueAndNotify(void *a1, const void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v8 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v9 = [CFDictionaryGetValue(v8[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v8[5])
    {
      [a1 willChangeValueForKey:v9];
      MethodImplementation = class_getMethodImplementation(*v8, a2);
      (MethodImplementation)(a1, a2, a3);
      [a1 didChangeValueForKey:v9];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = ___NSSetUnsignedIntValueAndNotify_block_invoke;
      v11[3] = &unk_1E69F34C0;
      v11[5] = v8;
      v11[6] = a2;
      v11[4] = a1;
      v12 = a3;
      [a1 _changeValueForKey:v9 key:0 key:0 usingBlock:v11];
    }
  }

  else
  {

    [a1 a2];
  }
}

void _NSSetLongValueAndNotify(void *a1, const void *a2, uint64_t a3)
{
  v11[8] = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v8 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v9 = [CFDictionaryGetValue(v8[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v8[5])
    {
      [a1 willChangeValueForKey:v9];
      MethodImplementation = class_getMethodImplementation(*v8, a2);
      (MethodImplementation)(a1, a2, a3);
      [a1 didChangeValueForKey:v9];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = ___NSSetLongValueAndNotify_block_invoke;
      v11[3] = &unk_1E69F4690;
      v11[4] = a1;
      v11[5] = v8;
      v11[6] = a2;
      v11[7] = a3;
      [a1 _changeValueForKey:v9 key:0 key:0 usingBlock:v11];
    }
  }

  else
  {

    [a1 a2];
  }
}

void _NSSetUnsignedLongValueAndNotify(void *a1, const void *a2, uint64_t a3)
{
  v11[8] = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v8 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v9 = [CFDictionaryGetValue(v8[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v8[5])
    {
      [a1 willChangeValueForKey:v9];
      MethodImplementation = class_getMethodImplementation(*v8, a2);
      (MethodImplementation)(a1, a2, a3);
      [a1 didChangeValueForKey:v9];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = ___NSSetUnsignedLongValueAndNotify_block_invoke;
      v11[3] = &unk_1E69F4690;
      v11[4] = a1;
      v11[5] = v8;
      v11[6] = a2;
      v11[7] = a3;
      [a1 _changeValueForKey:v9 key:0 key:0 usingBlock:v11];
    }
  }

  else
  {

    [a1 a2];
  }
}

void _NSSetShortValueAndNotify(void *a1, const void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v8 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v9 = [CFDictionaryGetValue(v8[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v8[5])
    {
      [a1 willChangeValueForKey:v9];
      MethodImplementation = class_getMethodImplementation(*v8, a2);
      (MethodImplementation)(a1, a2, a3);
      [a1 didChangeValueForKey:v9];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = ___NSSetShortValueAndNotify_block_invoke;
      v11[3] = &unk_1E69F46B8;
      v11[5] = v8;
      v11[6] = a2;
      v11[4] = a1;
      v12 = a3;
      [a1 _changeValueForKey:v9 key:0 key:0 usingBlock:v11];
    }
  }

  else
  {

    [a1 a2];
  }
}

void _NSSetUnsignedShortValueAndNotify(void *a1, const void *a2, uint64_t a3)
{
  v13 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v8 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v9 = [CFDictionaryGetValue(v8[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v8[5])
    {
      [a1 willChangeValueForKey:v9];
      MethodImplementation = class_getMethodImplementation(*v8, a2);
      (MethodImplementation)(a1, a2, a3);
      [a1 didChangeValueForKey:v9];
    }

    else
    {
      v11[0] = MEMORY[0x1E69E9820];
      v11[1] = 3221225472;
      v11[2] = ___NSSetUnsignedShortValueAndNotify_block_invoke;
      v11[3] = &unk_1E69F46B8;
      v11[5] = v8;
      v11[6] = a2;
      v11[4] = a1;
      v12 = a3;
      [a1 _changeValueForKey:v9 key:0 key:0 usingBlock:v11];
    }
  }

  else
  {

    [a1 a2];
  }
}

void _NSSetRangeValueAndNotify(void *a1, const void *a2, uint64_t a3, uint64_t a4)
{
  v13[9] = *MEMORY[0x1E69E9840];
  Class = object_getClass(a1);
  if (class_getMethodImplementation(Class, sel__isKVOA) == NSKVOIsAutonotifying && (IndexedIvars = object_getIndexedIvars(Class)) != 0)
  {
    v10 = IndexedIvars;
    os_unfair_recursive_lock_lock_with_options();
    v11 = [CFDictionaryGetValue(v10[3] a2)];
    os_unfair_recursive_lock_unlock();
    if (v10[5])
    {
      [a1 willChangeValueForKey:v11];
      MethodImplementation = class_getMethodImplementation(*v10, a2);
      (MethodImplementation)(a1, a2, a3, a4);
      [a1 didChangeValueForKey:v11];
    }

    else
    {
      v13[0] = MEMORY[0x1E69E9820];
      v13[1] = 3221225472;
      v13[2] = ___NSSetRangeValueAndNotify_block_invoke;
      v13[3] = &unk_1E69F46E0;
      v13[4] = a1;
      v13[5] = v10;
      v13[6] = a2;
      v13[7] = a3;
      v13[8] = a4;
      [a1 _changeValueForKey:v11 key:0 key:0 usingBlock:v13];
    }
  }

  else
  {

    [a1 a2];
  }
}

uint64_t getStackObservedValueClassAndBoxSize(void *a1)
{
  if (qword_1ED43F6C8 != -1)
  {
    dispatch_once(&qword_1ED43F6C8, &__block_literal_global_19);
  }

  *a1 = _MergedGlobals_102;
  return qword_1ED43F6C0;
}

size_t __getStackObservedValueClassAndBoxSize_block_invoke()
{
  qword_1ED43F6C0 = objc_opt_class();
  result = class_getInstanceSize(qword_1ED43F6C0);
  _MergedGlobals_102 = result;
  return result;
}

void sub_1810A2240(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, int a9)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    v12 = _NSKeyValueRetainedObservationInfoForObject(v9, *(v10 + 8));
    _NSKeyValueReplaceObservationInfoForObject(v9, *(v10 + 8), v12, v11);
    if (v12)
    {
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1810A22F0(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    JUMPOUT(0x1810A21E8);
  }

  _Unwind_Resume(a1);
}

void sub_1810A230C(_Unwind_Exception *a1)
{
  if (v1)
  {
    JUMPOUT(0x1810A2314);
  }

  _Unwind_Resume(a1);
}

void sub_1810A231C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1810A2328);
}

void sub_1810A25BC(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    v5 = _NSKeyValueRetainedObservationInfoForObject(v2, *(v3 + 8));
    _NSKeyValueReplaceObservationInfoForObject(v2, *(v3 + 8), v5, v4);
    if (v5)
    {
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exc_buf);
}

void sub_1810A2600(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    objc_begin_catch(a1);
    JUMPOUT(0x1810A24E0);
  }

  _Unwind_Resume(a1);
}

void sub_1810A2620(_Unwind_Exception *a1)
{
  if (v1)
  {
    JUMPOUT(0x1810A2628);
  }

  _Unwind_Resume(a1);
}

void sub_1810A2630(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1810A263CLL);
}

void sub_1810A2910(void *a1)
{
  objc_begin_catch(a1);
  *(v2 + 32) = v1;
  *(v2 + 40) = v7;
  *(v2 + 48) = v6;
  *(v2 + 56) = v5;
  *(v2 + 64) = v4;
  *(v2 + 72) = v3;
  objc_exception_rethrow();
}

void sub_1810A29F0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_1810A2B1C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void sub_1810A2CE0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, int a14, char a15)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  *(v15 + 32) = a9;
  *(v15 + 40) = a10;
  *(v15 + 48) = a11;
  *(v15 + 56) = a12;
  *(v15 + 64) = a13;
  *(v15 + 72) = a15;
  objc_exception_rethrow();
}

void sub_1810A2E24(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

uint64_t NSKeyValueWillChangeByOrderedToManyMutation@<X0>(void *a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, _BYTE *a6@<X5>, void *a7@<X8>)
{
  if (a3)
  {
    v13 = a5[1];
    v14 = _CFGetTSD();
    if (v14 && (v15 = v14, v16 = _CFGetTSD(), v15 == a2) && v16 == a1)
    {
      v17 = 0;
      v18 = 0;
      v19 = 0;
    }

    else
    {
      _CFSetTSD();
      _CFSetTSD();
      v17 = [a1 valueForKey:a2];
      _CFSetTSD();
      _CFSetTSD();
      if (v17 && _NSIsNSOrderedSet())
      {
        v21 = *a5;
        if (*a5 != 4 && v21 != 2)
        {
          v19 = 0;
          v18 = 1;
          if ((a4 & 2) == 0)
          {
            goto LABEL_20;
          }

LABEL_19:
          if (v21 != 2)
          {
            v23 = v17;
            if ((v18 & 1) == 0)
            {
              v23 = [a1 valueForKey:a2];
            }

            result = [v23 objectsAtIndexes:v13];
            v21 = *a5;
            goto LABEL_24;
          }

LABEL_20:
          result = 0;
LABEL_24:
          v24 = v17 & (a4 << 58 >> 63);
          if (result)
          {
            v24 = result;
          }

          *a7 = v21;
          a7[1] = v24;
          a7[2] = 0;
          a7[3] = v13;
          a7[4] = v19;
          goto LABEL_27;
        }

        v22 = [v17 count];
        v19 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:8 * v22];
        [v17 getObjects:objc_msgSend(v19 range:{"mutableBytes"), 0, v22}];
      }

      else
      {
        v19 = 0;
      }

      v18 = 1;
    }

    v21 = *a5;
    if ((a4 & 2) == 0)
    {
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  if ((a4 & 2) != 0)
  {
    result = [a1 valueForKeyPath:a2];
    if (!result)
    {
      result = [MEMORY[0x1E695DFB0] null];
    }
  }

  else
  {
    result = 0;
  }

  *a7 = 1;
  a7[1] = result;
  a7[3] = 0;
  a7[4] = 0;
  a7[2] = 0;
LABEL_27:
  *a6 = 0;
  return result;
}

__n128 NSKeyValueDidChangeByOrderedToManyMutation@<Q0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, int a4@<W3>, char a5@<W4>, __int128 *a6@<X5>, uint64_t a7@<X8>)
{
  v36 = *MEMORY[0x1E69E9840];
  if (!a4)
  {
    v18 = a6[1];
    v32 = *a6;
    v33 = v18;
    v34 = *(a6 + 4);
    NSKeyValueDidChangeBySetting(a1, a2, a3, a5, &v32, a7);
    return result;
  }

  v12 = *(a6 + 3);
  v13 = _CFGetTSD();
  if (v13 && (v14 = v13, v15 = _CFGetTSD(), v14 == a2) && v15 == a1)
  {
    v16 = 0;
    v17 = 0;
    if ((a5 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  else
  {
    _CFSetTSD();
    _CFSetTSD();
    v17 = [a1 valueForKey:a2];
    _CFSetTSD();
    _CFSetTSD();
    if (v17 && _NSIsNSOrderedSet())
    {
      v20 = *a6;
      if (*a6 == 4)
      {
        *&v32 = 0;
        *(&v32 + 1) = &v32;
        *&v33 = 0x3052000000;
        *(&v33 + 1) = __Block_byref_object_copy__10;
        v34 = __Block_byref_object_dispose__10;
        v35 = 0;
        v21 = [*(a6 + 4) bytes];
        v31[0] = MEMORY[0x1E69E9820];
        v31[1] = 3221225472;
        v31[2] = __NSKeyValueDidChangeByOrderedToManyMutation_block_invoke;
        v31[3] = &unk_1E69F48A0;
        v31[6] = &v32;
        v31[7] = v21;
        v31[4] = v17;
        v31[5] = v12;
        [v12 enumerateIndexesUsingBlock:v31];
        v22 = *(*(&v32 + 1) + 40);
        if (v22)
        {
          v12 = v22;
        }

        *(a6 + 4) = 0;
        _Block_object_dispose(&v32, 8);
        v20 = *a6;
      }

      if (v20 == 2)
      {
        *&v32 = 0;
        *(&v32 + 1) = &v32;
        *&v33 = 0x3052000000;
        *(&v33 + 1) = __Block_byref_object_copy__10;
        v34 = __Block_byref_object_dispose__10;
        v35 = 0;
        v23 = [*(a6 + 4) bytes];
        v24 = [*(a6 + 4) length];
        v25 = [v17 count];
        v30[0] = 0;
        v30[1] = v30;
        v30[2] = 0x2020000000;
        v30[3] = 0;
        v29[0] = MEMORY[0x1E69E9820];
        v29[1] = 3221225472;
        v29[2] = __NSKeyValueDidChangeByOrderedToManyMutation_block_invoke_2;
        v29[3] = &unk_1E69F48C8;
        v29[8] = v24 >> 3;
        v29[9] = v23;
        v29[10] = v25;
        v29[6] = v30;
        v29[7] = &v32;
        v29[4] = v17;
        v29[5] = v12;
        [v12 enumerateIndexesUsingBlock:v29];
        v26 = *(*(&v32 + 1) + 40);
        if (v26)
        {
          v12 = v26;
        }

        *(a6 + 4) = 0;
        _Block_object_dispose(v30, 8);
        _Block_object_dispose(&v32, 8);
      }
    }

    v16 = 1;
    if ((a5 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  if (*a6 != 3)
  {
    if ((v16 & 1) == 0)
    {
      v17 = [a1 valueForKey:a2];
    }

    v27 = [v17 objectsAtIndexes:v12];
    goto LABEL_24;
  }

LABEL_20:
  v27 = 0;
LABEL_24:
  result = a6[1];
  *a7 = *a6;
  *(a7 + 16) = result;
  v28 = *(a6 + 4);
  *(a7 + 24) = v12;
  *(a7 + 32) = v28;
  *(a7 + 16) = v27;
  return result;
}

uint64_t _NSKVOIsObservableBeingDeallocated(const void *a1)
{
  result = _CFGetTSD();
  if (result)
  {
    v3 = *(result + 80);
    if (v3)
    {
      v4.length = CFArrayGetCount(*(result + 80));
      v4.location = 0;
      return CFArrayContainsValue(v3, v4, a1) != 0;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t __NSKeyValueDidChangeByOrderedToManyMutation_block_invoke(uint64_t a1, uint64_t a2)
{
  v4 = *(*(a1 + 56) + 8 * a2);
  result = [*(a1 + 32) objectAtIndex:a2];
  if (v4 == result)
  {
    v6 = *(*(*(a1 + 48) + 8) + 40);
    if (!v6)
    {
      *(*(*(a1 + 48) + 8) + 40) = [*(a1 + 40) mutableCopy];
      v6 = *(*(*(a1 + 48) + 8) + 40);
    }

    return [v6 removeIndex:a2];
  }

  return result;
}

uint64_t __NSKeyValueDidChangeByOrderedToManyMutation_block_invoke_2(uint64_t a1, unint64_t a2)
{
  v4 = a2 - *(*(*(a1 + 48) + 8) + 24);
  if (v4 >= *(a1 + 64))
  {
    v5 = 0;
  }

  else
  {
    v5 = *(*(a1 + 72) + 8 * v4);
  }

  if (*(a1 + 80) <= a2)
  {
    result = 0;
  }

  else
  {
    result = [*(a1 + 32) objectAtIndex:a2];
  }

  if (v5 == result)
  {
    v7 = *(*(*(a1 + 56) + 8) + 40);
    if (!v7)
    {
      *(*(*(a1 + 56) + 8) + 40) = [*(a1 + 40) mutableCopy];
      v7 = *(*(*(a1 + 56) + 8) + 40);
    }

    return [v7 removeIndex:a2];
  }

  else
  {
    ++*(*(*(a1 + 48) + 8) + 24);
  }

  return result;
}

void sub_1810A5744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1810A5B5C(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1810A6EE0(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21)
{
  if (a2 == 2)
  {
    if ([objc_msgSend(objc_begin_catch(exc_buf) "name")])
    {
      objc_opt_class();
      [v23 keyPath];
      objc_opt_class();
      objc_opt_class();
      v29 = [NSString stringWithFormat:@"Cannot remove an observer <%@ %p> for the key path %@ from <%@ %p>, most likely because the value for the key %@ has changed without an appropriate KVO notification being sent. Check the KVO-compliance of the %@ class."];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v29 userInfo:0]);
    }

    objc_exception_rethrow();
  }

  objc_begin_catch(exc_buf);
  *v21 = v26;
  *(v21 + 8) = v24;
  *(v21 + 16) = v22;
  *(v21 + 24) = v27;
  *(v21 + 32) = v25;
  *(v21 + 40) = *(v28 - 84);
  os_unfair_recursive_lock_lock_with_options();
  objc_exception_rethrow();
}

void sub_1810A72E0(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v28 = v25;
  v29 = *(v27 - 92);
  if (a2 == 2)
  {
    if ([objc_msgSend(objc_begin_catch(exc_buf) "name")])
    {
      objc_opt_class();
      [v23 keyPath];
      objc_opt_class();
      objc_opt_class();
      v30 = [NSString stringWithFormat:@"Cannot update for observer <%@ %p> for the key path %@ from <%@ %p>, most likely because the value for the key %@ has changed without an appropriate KVO notification being sent. Check the KVO-compliance of the %@ class."];
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:v30 userInfo:0]);
    }

    objc_exception_rethrow();
  }

  objc_begin_catch(exc_buf);
  *v22 = a22;
  *(v22 + 8) = v28;
  *(v22 + 16) = *(v27 - 88);
  *(v22 + 24) = v24;
  *(v22 + 32) = v26;
  *(v22 + 40) = v29;
  objc_exception_rethrow();
}

void sub_1810A73F4(void *a1)
{
  objc_begin_catch(a1);
  *v1 = v2;
  v1[1] = v3;
  objc_exception_rethrow();
}

void sub_1810A8038(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v2 - 80));
  _Unwind_Resume(a1);
}

uint64_t initBKSProcessAssertionSetExpirationHandler(uint64_t a1, uint64_t a2)
{
  v4 = AssertionServicesLibrary();
  v5 = dlsym(v4, "BKSProcessAssertionSetExpirationHandler");
  softLinkBKSProcessAssertionSetExpirationHandler = v5;
  if (!v5)
  {
    __assert_rtn("initBKSProcessAssertionSetExpirationHandler", "NSProcessInfo_Helpers.m", 79, "softLinkBKSProcessAssertionSetExpirationHandler");
  }

  return (v5)(a1, a2);
}

void *AssertionServicesLibrary()
{
  result = AssertionServicesLibrary_frameworkLibrary;
  if (!AssertionServicesLibrary_frameworkLibrary)
  {
    result = dlopen("/System/Library/PrivateFrameworks/AssertionServices.framework/AssertionServices", 2);
    AssertionServicesLibrary_frameworkLibrary = result;
    if (!result)
    {
      __assert_rtn("AssertionServicesLibrary", "NSProcessInfo_Helpers.m", 77, "frameworkLibrary");
    }
  }

  return result;
}

Class initBKSProcessAssertion()
{
  AssertionServicesLibrary();
  result = objc_getClass("BKSProcessAssertion");
  classBKSProcessAssertion = result;
  if (!result)
  {
    __assert_rtn("initBKSProcessAssertion", "NSProcessInfo_Helpers.m", 78, "classBKSProcessAssertion");
  }

  getBKSProcessAssertionClass = BKSProcessAssertionFunction;
  return result;
}

void sub_1810A8E1C(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, __CFString *a12, NSString *a13, __CFString *a14, uint64_t a15)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v17 = objc_begin_catch(exc_buf);
      if (v15)
      {
        v18 = v17;
        a11 = 0;
        if ((objc_opt_isKindOfClass() & 1) != 0 && ([v16 __categorizeException:v18 intoError:&a11], a11))
        {
          a14 = @"NSUnderlyingError";
          a15 = a11;
          v19 = &a14;
          v20 = &a15;
        }

        else
        {
          a12 = @"NSDebugDescription";
          [v18 debugDescription];
          a13 = [NSString stringWithFormat:@"Caught exception during archival: %@"];
          v19 = &a12;
          v20 = &a13;
        }

        *v15 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4866, [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:1]);
      }

      objc_end_catch();
      JUMPOUT(0x1810A8DA0);
    }

    objc_begin_catch(exc_buf);
    JUMPOUT(0x1810A8DA4);
  }

  JUMPOUT(0x1810A8E10);
}

void sub_1810AC1FC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    JUMPOUT(0x1810ABEC0);
  }

  _Unwind_Resume(a1);
}

void sub_1810AC244(uint64_t a1, int a2)
{
  if (!a2)
  {
    JUMPOUT(0x1810AC24CLL);
  }

  objc_terminate();
}

void sub_1810AC770(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1810AC6FCLL);
  }

  JUMPOUT(0x1810AC764);
}

void sub_1810ACA0C(void *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1810AC998);
  }

  JUMPOUT(0x1810ACA00);
}

void sub_1810AD0A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1810AECB4(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x1810AEC10);
  }

  _Unwind_Resume(exc_buf);
}

uint64_t _decodeObjectXML(uint64_t a1, const void *a2, void *a3)
{
  v72 = *MEMORY[0x1E69E9840];
  Count = CFArrayGetCount(*(a1 + 80));
  ValueAtIndex = CFArrayGetValueAtIndex(*(a1 + 80), Count - 1);
  if (CFGetTypeID(ValueAtIndex) == 19)
  {
    v8 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
    v9 = v8;
    CFArrayRemoveValueAtIndex(ValueAtIndex, 0);
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v8 = CFDictionaryGetValue(ValueAtIndex, a2);
    v10 = v8;
    if (!v8)
    {
      goto LABEL_11;
    }
  }

  v11 = CFGetTypeID(v8);
  if (v11 != _CFKeyedArchiverUIDGetTypeID())
  {
    v59 = _NSMethodExceptionProem(a1, sel_decodeObjectForKey_);
    v14 = @"%@: value is not a reference as expected";
    goto LABEL_10;
  }

  result = _CFKeyedArchiverUIDGetValue();
  if (!result)
  {
LABEL_12:
    *a3 = 0;
    return result;
  }

  v13 = result;
  if (_decodeObjectReference(a1, 100, a2, result, a3))
  {
    return *a3 != 0;
  }

  if (CFArrayGetCount(*(a1 + 88)) <= v13)
  {
LABEL_52:
    v59 = _NSMethodExceptionProem(a1, sel_decodeObjectForKey_);
    v14 = @"%@: invalid object reference";
    goto LABEL_10;
  }

  v15 = v13;
  v16 = CFArrayGetValueAtIndex(*(a1 + 88), v13);
  if (!v16)
  {
    v59 = _NSMethodExceptionProem(a1, sel_decodeObjectForKey_);
    v14 = @"%@: wrong object format";
    goto LABEL_10;
  }

  v17 = v16;
  if (CFGetTypeID(v16) == 7 && CFEqual(@"$null", v17))
  {
    *a3 = 0;
    return 1;
  }

  if (CFGetTypeID(v17) != 7 && CFGetTypeID(v17) != 21 && CFGetTypeID(v17) != 22 && CFGetTypeID(v17) != 20)
  {
    if (CFGetTypeID(v17) != 18)
    {
      v59 = _NSMethodExceptionProem(a1, sel_decodeObjectForKey_);
      v14 = @"%@: wrong object format format";
      goto LABEL_10;
    }

    v20 = CFDictionaryGetValue(v17, @"$class");
    if (!v20 || (v21 = CFGetTypeID(v20), v21 != _CFKeyedArchiverUIDGetTypeID()))
    {
      v59 = _NSMethodExceptionProem(a1, sel_decodeObjectForKey_);
      v14 = @"%@: missing class information for object or wrong format";
      goto LABEL_10;
    }

    v22 = _CFKeyedArchiverUIDGetValue();
    if (!v22)
    {
      v59 = _NSMethodExceptionProem(a1, sel_decodeObjectForKey_);
      v14 = @"%@: null class for object";
      goto LABEL_10;
    }

    v23 = v22;
    if (CFArrayGetCount(*(a1 + 88)) > v22)
    {
      v24 = CFArrayGetValueAtIndex(*(a1 + 88), v23);
      if (v24 && (v25 = v24, CFGetTypeID(v24) == 18))
      {
        v26 = CFDictionaryGetValue(v25, @"$classname");
        if (v26)
        {
          v27 = v26;
          if ((_NSIsNSString() & 1) == 0)
          {
            [a1 __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:{@"%@: cannot decode object of class (%@) for key (%@); the archive appears to be corrupt (non-string class name)", _NSMethodExceptionProem(a1, sel_decodeObjectForKey_), v27, a2}];
            goto LABEL_11;
          }

          obj = CFDictionaryGetValue(v25, @"$classhints");
          v65 = CFDictionaryGetValue(v25, @"$classes");
          if (!obj || _NSIsNSArray()) && (!v65 || (_NSIsNSArray()))
          {
            v28 = [a1 classForClassName:v27];
            if (v28 || (v28 = [objc_opt_class() classForClassName:v27]) != 0 || (v28 = NSClassFromString(v27)) != 0)
            {
              v29 = v28;
LABEL_45:
              if (([*(a1 + 120) classNameAllowed:v29] & 1) == 0)
              {
                v31 = @"%@: data to unarchive contains class (%@) which has not been allowed";
                goto LABEL_62;
              }

LABEL_46:
              if (_coderValidateClassValidToMessageForUnarchiving(v29))
              {
                goto LABEL_47;
              }

              v31 = @"%@: unexpected non-objectlike class (%@)";
LABEL_62:
              v32 = _NSMethodExceptionProem(a1, sel_decodeObjectForKey_);
              [a1 __failWithExceptionName:*MEMORY[0x1E695D940] errorCode:4864 format:{v31, v32, NSStringFromClass(v29)}];
              goto LABEL_63;
            }

            v70 = 0u;
            v71 = 0u;
            v68 = 0u;
            v69 = 0u;
            v63 = [obj countByEnumeratingWithState:&v68 objects:value count:16];
            if (v63)
            {
              v62 = *v69;
              do
              {
                for (i = 0; i != v63; ++i)
                {
                  if (*v69 != v62)
                  {
                    objc_enumerationMutation(obj);
                  }

                  v29 = NSClassFromString(*(*(&v68 + 1) + 8 * i));
                  if (v29)
                  {
                    goto LABEL_45;
                  }
                }

                v63 = [obj countByEnumeratingWithState:&v68 objects:value count:16];
              }

              while (v63);
            }

            if (*(a1 + 8) && (objc_opt_respondsToSelector() & 1) != 0)
            {
              v29 = [*(a1 + 8) unarchiver:a1 cannotDecodeObjectOfClassName:v27 originalClasses:v65];
              if (v29)
              {
                goto LABEL_46;
              }
            }

            else
            {
              v29 = 0;
            }

LABEL_47:
            v30 = [(objc_class *)v29 classForKeyedUnarchiver];
            if (v30)
            {
              if ([a1 requiresSecureCoding])
              {
                if (a2)
                {
                  if ([a1 validateAllowedClass:v30 forKey:a2])
                  {
                    goto LABEL_78;
                  }

LABEL_11:
                  result = 0;
                  goto LABEL_12;
                }

                [a1 validateClassSupportsSecureCoding:v30];
              }

LABEL_78:
              _NSCoderCheckPotentiallyMangledClassNameAndWarn(v30, 0);
              v34 = *(a1 + 120);
              if ([(NSCoder *)a1 _isPossibleNestedCollectionClass:v30]&& *(v34 + 40) == 1)
              {
                if (*(v34 + 41) == 1)
                {
                  *(v34 + 40) = 0;
                  [a1 __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:{@"%1$@: value for key (%2$@) contains too many nested (%3$@)s", _NSMethodExceptionProem(a1, sel_decodeObjectForKey_), a2, v27}];
                  goto LABEL_11;
                }

                *(v34 + 41) = 1;
              }

              LOBYTE(v68) = 1;
              v35 = coderAllocateClassForUnarchival(a1, v30, &v68);
              if ((v68 & 1) == 0)
              {
                goto LABEL_11;
              }

              v36 = v35;
              v66 = *(a1 + 64);
              *(a1 + 64) = 0;
              CFRetain(v17);
              CFArrayAppendValue(*(a1 + 80), v17);
              v37 = CFGetTypeID(v17);
              v38 = atomic_load((a1 + 16));
              v39 = *(a1 + 136);
              if (v37 == 19)
              {
                if (v38 != v39)
                {
                  goto LABEL_112;
                }

                v40 = atomic_load((a1 + 16));
                v41 = v40 | 1;
              }

              else
              {
                if (v38 != v39)
                {
                  goto LABEL_112;
                }

                v42 = atomic_load((a1 + 16));
                v41 = v42 & 0xFFFFFFFFFFFFFFFELL;
              }

              atomic_store(v41, (a1 + 16));
              v43 = atomic_load((a1 + 16));
              *(a1 + 136) = v43;
              CFDictionarySetValue(*(a1 + 48), v13, v36);
              v44 = [objc_msgSend(v36 initWithCoder:{a1), "awakeAfterUsingCoder:", a1}];
              *(*(a1 + 120) + 16) = v13;
              v45 = CFArrayGetCount(*(a1 + 80));
              v46 = CFArrayGetValueAtIndex(*(a1 + 80), v45 - 1);
              CFArrayRemoveValueAtIndex(*(a1 + 80), v45 - 1);
              CFRelease(v46);
              if (v45 < 2)
              {
LABEL_96:
                *(a1 + 64) = v66;
                if (v44)
                {
                  value[0] = v44;
                  v55 = *(a1 + 32);
                  if (v55 && CFDictionaryGetValueIfPresent(v55, v44, value))
                  {
                    if (value[0] != v44)
                    {

                      v56 = value[0];
                    }
                  }

                  else
                  {
                    v57 = v44;
                    if (*(a1 + 8) && (objc_opt_respondsToSelector() & 1) != 0)
                    {
                      v58 = [*(a1 + 8) unarchiver:a1 didDecodeObject:v44];
                      value[0] = v58;
                    }

                    else
                    {
                      v58 = value[0];
                    }

                    if (v58)
                    {
                      [a1 _replaceObject:v44 withObject:?];
                    }

                    else
                    {
                      value[0] = v44;
                    }
                  }

                  v44 = value[0];
                  CFDictionarySetValue(*(a1 + 24), value[0], v15);
                  CFDictionarySetValue(*(a1 + 56), v15, v44);
                }

                CFDictionaryRemoveValue(*(a1 + 48), v15);
                *a3 = v44;
                return 1;
              }

              v47 = CFArrayGetValueAtIndex(*(a1 + 80), v45 - 2);
              v48 = CFGetTypeID(v47);
              v49 = atomic_load((a1 + 16));
              v50 = *(a1 + 136);
              if (v48 == 19)
              {
                if (v49 == v50)
                {
                  v51 = atomic_load((a1 + 16));
                  v52 = v51 | 1;
LABEL_95:
                  atomic_store(v52, (a1 + 16));
                  v54 = atomic_load((a1 + 16));
                  *(a1 + 136) = v54;
                  goto LABEL_96;
                }
              }

              else if (v49 == v50)
              {
                v53 = atomic_load((a1 + 16));
                v52 = v53 & 0xFFFFFFFFFFFFFFFELL;
                goto LABEL_95;
              }

LABEL_112:
              __NSPoisoned();
            }

LABEL_63:
            [a1 __failWithExceptionName:@"NSInvalidUnarchiveOperationException" errorCode:4864 format:{@"%1$@: cannot decode object of class (%2$@) for key (%3$@) because no class named %2$@ was found; the class needs to be defined in source code or linked in from a library (ensure the class is part of the correct target). If the class was renamed, use setClassName:forClass: to add a class translation mapping to NSKeyedUnarchiver", _NSMethodExceptionProem(a1, sel_decodeObjectForKey_), v27, a2}];
            goto LABEL_11;
          }

          v59 = _NSMethodExceptionProem(a1, sel_decodeObjectForKey_);
          v14 = @"%@: wrong class format";
        }

        else
        {
          v59 = _NSMethodExceptionProem(a1, sel_decodeObjectForKey_);
          v14 = @"%@: missing class name for class";
        }
      }

      else
      {
        v59 = _NSMethodExceptionProem(a1, sel_decodeObjectForKey_);
        v14 = @"%@: wrong class container format";
      }

LABEL_10:
      [a1 __failWithExceptionName:@"NSArchiverArchiveInconsistency" errorCode:4864 format:{v14, v59, v60, v61}];
      goto LABEL_11;
    }

    goto LABEL_52;
  }

  v18 = atomic_load((a1 + 16));
  if (v18 != *(a1 + 136))
  {
    goto LABEL_112;
  }

  v19 = atomic_load((a1 + 16));
  if ((v19 & 4) != 0 && (-[NSKeyedUnarchiver _validatePropertyListClass:forKey:](a1, [v17 classForCoder], a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  *a3 = v17;
  return 1;
}

void sub_1810AF7D0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    CFDictionaryRemoveValue(*(v17 + 48), v18);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1810B06D8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 128), 8);
  _Unwind_Resume(a1);
}

uint64_t __NSKeyedUnarchiverUnarchiveObject(void *a1, const char *a2, uint64_t a3)
{
  if (a3)
  {
    return [a1 unarchiveTopLevelObjectWithData:a2 error:a3];
  }

  else
  {
    return [a1 unarchiveObjectWithData:a2];
  }
}

NSDictionary *__NSKeyedUnarchiverSecureUnarchivedDictionaryOfKeysOfClassesObjectsOfClasses(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = [MEMORY[0x1E695DFD8] setWithArray:a1];
  v8 = [MEMORY[0x1E695DFD8] setWithArray:a2];

  return [NSKeyedUnarchiver unarchivedDictionaryWithKeysOfClasses:v7 objectsOfClasses:v8 fromData:a3 error:a4];
}

void YOU_HAVE_A_CYCLE_IN_YOUR_OBJECT_GRAPH__THIS_ISNT_A_FOUNDATION_BUG__SEE_ERROR_MESSAGE_()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = _NSOSLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_18075C000, v0, OS_LOG_TYPE_FAULT, "Decoder with secure coding enabled is decoding a cycle. See rdar://105473537 for help\n", v1, 2u);
  }
}

void _SetPreferredLanguages(void *a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] array];
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v23 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v20 objects:v19 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v21;
    do
    {
      v6 = 0;
      do
      {
        if (*v21 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v20 + 1) + 8 * v6);
        if ((_NSIsNSString() & 1) == 0)
        {
          [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"NSLocale.m", 258, @"Unexpected language identifier object type: %@", v7];
        }

        v8 = _NormalizedLanguageIDFromString(v7);
        [v2 addObject:v8];
        if (([v7 isEqualToString:v8] & 1) == 0)
        {
          v9 = _NSOSLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412290;
            v18 = v7;
            _os_log_error_impl(&dword_18075C000, v9, OS_LOG_TYPE_ERROR, "Warning: Language identifier is not in canonical form: %@", buf, 0xCu);
          }
        }

        ++v6;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v20 objects:v19 count:16];
    }

    while (v4);
  }

  v10 = _CFLocaleCopyPreferredLanguagesForCurrentUser();
  if (!v10 || (v11 = v10, v12 = [v10 isEqualToArray:v2], CFRelease(v11), (v12 & 1) == 0))
  {
    v13 = *MEMORY[0x1E695E890];
    v14 = *MEMORY[0x1E695E8B8];
    v15 = *MEMORY[0x1E695E898];
    CFPreferencesSetValue(@"AppleLanguages", v2, *MEMORY[0x1E695E890], *MEMORY[0x1E695E8B8], *MEMORY[0x1E695E898]);
    CFPreferencesSynchronize(v13, v14, v15);
    DarwinNotifyCenter = CFNotificationCenterGetDarwinNotifyCenter();
    CFNotificationCenterPostNotification(DarwinNotifyCenter, @"AppleLanguagePreferencesChangedNotification", 0, 0, 1u);
  }
}

uint64_t _NormalizedLanguageIDFromString(uint64_t a1)
{
  if (qword_1ED43F790 != -1)
  {
    dispatch_once(&qword_1ED43F790, &__block_literal_global_23);
  }

  result = [_MergedGlobals_106 objectForKey:a1];
  if (!result)
  {
    v3 = [MEMORY[0x1E695DF58] canonicalLanguageIdentifierFromString:a1];
    result = a1;
    if (v3)
    {
      result = [qword_1ED43F788 objectForKey:v3];
      if (!result)
      {
        return v3;
      }
    }
  }

  return result;
}

void raiseError_0(uint64_t a1, const char *a2)
{
  v3 = objc_alloc(MEMORY[0x1E695DF30]);
  Name = sel_getName(a2);
  v5 = [v3 initWithName:@"NSMapTableAbstractImplementationError" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"abstract method %s called directly on class %@", Name, objc_opt_class()), 0}];
  objc_exception_throw(v5);
}

void sub_1810B8294(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 56), 8);
  _Unwind_Resume(a1);
}

BOOL NSCompareMapTables(NSMapTable *table1, NSMapTable *table2)
{
  if (table1)
  {
    if (table2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    NSLog(@"%s: first map table argument is NULL", "BOOL NSCompareMapTables(NSMapTable * _Nonnull, NSMapTable * _Nonnull)");
    if (table2)
    {
      goto LABEL_3;
    }
  }

  NSLog(@"%s: second map table argument is NULL", "BOOL NSCompareMapTables(NSMapTable * _Nonnull, NSMapTable * _Nonnull)");
LABEL_3:

  return [(NSMapTable *)table1 isEqual:table2];
}

void NSFreeMapTable(NSMapTable *table)
{
  if (table)
  {
  }

  else
  {
    v2 = table;
    NSLog(@"%s: map table argument is NULL", "void NSFreeMapTable(NSMapTable * _Nonnull)");
    table = v2;
  }
}

void NSResetMapTable(NSMapTable *table)
{
  if (!table)
  {
    NSLog(@"%s: map table argument is NULL", "void NSResetMapTable(NSMapTable * _Nonnull)");
  }

  [(NSMapTable *)table removeAllItems];
}

NSMapTable *__cdecl NSCopyMapTableWithZone(NSMapTable *table, NSZone *zone)
{
  if (!table)
  {
    NSLog(@"%s: map table argument is NULL", zone, "NSMapTable * _Nonnull NSCopyMapTableWithZone(NSMapTable * _Nonnull, NSZone * _Nullable)");
  }

  return [(NSMapTable *)table copy];
}

void *__cdecl NSMapInsertIfAbsent(NSMapTable *table, const void *key, const void *value)
{
  if (!table)
  {
    NSLog(@"%s: map table argument is NULL", "void * _Nullable NSMapInsertIfAbsent(NSMapTable * _Nonnull, const void * _Nullable, const void * _Nullable)");
  }

  return [(NSMapTable *)table existingItemForSetItem:value forAbsentKey:key];
}

NSString *__cdecl NSStringFromMapTable(NSMapTable *table)
{
  if (!table)
  {
    NSLog(@"%s: map table argument is NULL", "NSString * _Nonnull NSStringFromMapTable(NSMapTable * _Nonnull)");
  }

  return [(NSMapTable *)table description];
}

CFTypeRef __NSMDVretain(int a1, CFTypeRef cf)
{
  if (cf)
  {
    return CFRetain(cf);
  }

  else
  {
    return 0;
  }
}

void __NSMDVrelease(int a1, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }
}

CFTypeRef __NSMDVcopyDesc(void *a1)
{
  if (a1)
  {
    v2 = [a1 description];
  }

  else
  {
    v2 = @"<NULL>";
  }

  return CFRetain(v2);
}

uint64_t __NSMDVequal(void *a1, void *a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  result = 0;
  if (a1)
  {
    if (a2)
    {
      return [a1 isEqual:{a2, v2, v3}];
    }
  }

  return result;
}

CFTypeRef __NSMetadataCreateResult(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = [[NSMetadataItem alloc] _init:a2];
  if ((*(a3 + 8) & 0x20) != 0)
  {
    v4 = [*(a3 + 88) metadataQuery:a3 replacementObjectForResultObject:v4];
  }

  if (objc_opt_isKindOfClass())
  {
    [v4 _setQuery:a3];
  }

  if (!v4)
  {
    return 0;
  }

  return CFRetain(v4);
}

CFTypeRef __NSMetadataCreateValue(int a1, uint64_t a2, CFTypeRef cf, uint64_t a4)
{
  v5 = cf;
  if ((*(a4 + 8) & 0x40) != 0)
  {
    v5 = [*(a4 + 88) metadataQuery:a4 replacementValueForAttribute:a2 value:cf];
    v4 = vars8;
  }

  if (!v5)
  {
    return 0;
  }

  return CFRetain(v5);
}

uint64_t __NSMetadataSortCompare(void *a1, void *a2, void *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  if (!a3[9])
  {
    a3[9] = objc_opt_new();
  }

  if (!a3[10])
  {
    a3[10] = objc_opt_new();
  }

  v16 = 0u;
  v17 = 0u;
  v14 = 0u;
  v15 = 0u;
  v6 = a3[4];
  result = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
  if (result)
  {
    v8 = result;
    v9 = *v15;
    while (2)
    {
      v10 = 0;
      do
      {
        if (*v15 != v9)
        {
          objc_enumerationMutation(v6);
        }

        v11 = *(*(&v14 + 1) + 8 * v10);
        *(a3[9] + 8) = *a1;
        *(a3[10] + 8) = *a2;
        v12 = [v11 compareObject:a3[9] toObject:a3[10]];
        if (v12)
        {
          if (v12 == -1)
          {
            return -1;
          }

          else
          {
            return 1;
          }
        }

        ++a2;
        ++a1;
        ++v10;
      }

      while (v8 != v10);
      result = [v6 countByEnumeratingWithState:&v14 objects:v13 count:16];
      v8 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

Class ___loadQueryFramework_block_invoke()
{
  _NSFrameworkHandleForLibrarianSymbols();
  result = objc_lookUpClass("BRQuery");
  _MergedGlobals_7 = result != 0;
  return result;
}

uint64_t NSCopyStringFromSelector(const char *a1)
{
  if (!a1)
  {
    return 0;
  }

  Name = sel_getName(a1);
  if (!Name)
  {
    return 0;
  }

  v2 = Name;
  v3 = [NSString alloc];
  v4 = strlen(v2);

  return [(NSString *)v3 initWithBytesNoCopy:v2 length:v4 encoding:4 freeWhenDone:0];
}

BOOL _NSRequiresMorphunInflectionForLanguageIdentifier(void *a1)
{
  if (_NSLanguageIdentifierBeginsWithLanguageCode(a1, @"en") || _NSLanguageIdentifierBeginsWithLanguageCode(a1, @"es") || _NSLanguageIdentifierBeginsWithLanguageCode(a1, @"it") || _NSLanguageIdentifierBeginsWithLanguageCode(a1, @"fr") || _NSLanguageIdentifierBeginsWithLanguageCode(a1, @"pt") || _NSLanguageIdentifierBeginsWithLanguageCode(a1, @"de") || _NSLanguageIdentifierBeginsWithLanguageCode(a1, @"ko") || _NSLanguageIdentifierBeginsWithLanguageCode(a1, @"hi"))
  {
    return 1;
  }

  return _NSLanguageIdentifierBeginsWithLanguageCode(a1, @"nl");
}

BOOL _NSLanguageIdentifierBeginsWithLanguageCode(void *a1, void *a2)
{
  v4 = [a1 length];
  if (v4 < [a2 length] || objc_msgSend(a1, "compare:options:range:", a2, 1, 0, objc_msgSend(a2, "length")))
  {
    return 0;
  }

  v6 = [a1 length];
  return v6 == [a2 length] || objc_msgSend(a1, "characterAtIndex:", objc_msgSend(a2, "length")) == 45 || objc_msgSend(a1, "characterAtIndex:", objc_msgSend(a2, "length")) == 95;
}

uint64_t _NSLexiconInflectedStringUsingMorphun(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, void *a7)
{
  v66 = *MEMORY[0x1E69E9840];
  if (qword_1ED43F908 != -1)
  {
    dispatch_once(&qword_1ED43F908, &__block_literal_global_30);
  }

  if (!off_1ED43F7D8)
  {
    return 0;
  }

  v13 = [MEMORY[0x1E695DF58] localeWithLocaleIdentifier:a4];
  if (!v13)
  {
    return 0;
  }

  v14 = v13;
  if (![a7 count])
  {
    v54 = a5;
    v55 = v14;
    v53 = a6;
LABEL_29:
    v22 = 0;
    goto LABEL_30;
  }

  v15 = [+[NSCharacterSet whitespaceAndNewlineCharacterSet](NSCharacterSet invertedSet];
  v16 = [a1 rangeOfCharacterFromSet:v15];
  if (v16 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v19 = v16;
  v54 = a5;
  v55 = v14;
  v53 = a6;
  v64 = 0u;
  v65 = 0u;
  v62 = 0u;
  v63 = 0u;
  v20 = [a7 countByEnumeratingWithState:&v62 objects:v61 count:16];
  if (!v20)
  {
    goto LABEL_29;
  }

  v21 = v20;
  v22 = 0;
  v23 = v19 + a2;
  v24 = *v63;
  do
  {
    for (i = 0; i != v21; ++i)
    {
      if (*v63 != v24)
      {
        objc_enumerationMutation(a7);
      }

      v26 = *(*(&v62 + 1) + 8 * i);
      if ([v26 replacementKind] != 1)
      {
        [v26 argument];
        if (!_NSIsNSNumber())
        {
          continue;
        }
      }

      if ([v26 replacementRangeInResult] == v23)
      {
        v28 = v27;
        if (v27 >= [a1 length])
        {
          return 0;
        }

        v29 = [a1 rangeOfCharacterFromSet:v15 options:0 range:{v28 + v19, objc_msgSend(a1, "length") - (v28 + v19)}];
        if (v29 <= v28 + v19)
        {
          v30 = v28 + v19;
        }

        else
        {
          v30 = v29;
        }

        if (v29 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = v28 + v19;
        }

        else
        {
          v31 = v30;
        }

        v22 = [a1 substringWithRange:{0, v31}];
        a1 = [a1 substringFromIndex:v31];
      }
    }

    v21 = [a7 countByEnumeratingWithState:&v62 objects:v61 count:16];
  }

  while (v21);
LABEL_30:
  cf = 0;
  v32 = off_1ED43F7D8(&cf);
  if (cf)
  {
    if (_NSInflectionLog_onceToken != -1)
    {
      dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
    }

    v33 = _NSInflectionLog_log;
    if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v58 = "mlccfp_getDefaultCommonConceptFactoryProvider(&error)";
      v59 = 2112;
      v60 = cf;
      _os_log_error_impl(&dword_18075C000, v33, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
    }

    v34 = cf;
  }

  else
  {
    v34 = 0;
  }

  v17 = 0;
  if (!v32 || v34)
  {
    goto LABEL_123;
  }

  cf = 0;
  v35 = off_1ED43F7E0(v32, v55, &cf);
  if (cf)
  {
    if (_NSInflectionLog_onceToken != -1)
    {
      dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
    }

    v36 = _NSInflectionLog_log;
    if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v58 = "mlccfp_getCommonConceptFactory(provider, (CFLocaleRef)locale, &error)";
      v59 = 2112;
      v60 = cf;
      _os_log_error_impl(&dword_18075C000, v36, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
    }

    v34 = cf;
  }

  else
  {
    v34 = 0;
  }

  v17 = 0;
  if (!v35 || v34)
  {
    goto LABEL_123;
  }

  cf = 0;
  v37 = off_1ED43F7E8(v35, &cf);
  if (cf)
  {
    if (_NSInflectionLog_onceToken != -1)
    {
      dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
    }

    v38 = _NSInflectionLog_log;
    if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v58 = "mccf_getSemanticFeatureModel(factory, &error)";
      v59 = 2112;
      v60 = cf;
      _os_log_error_impl(&dword_18075C000, v38, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
    }

    v34 = cf;
  }

  else
  {
    v34 = 0;
  }

  v17 = 0;
  if (!v37 || v34)
  {
    goto LABEL_123;
  }

  cf = 0;
  v39 = off_1ED43F7F0(a1, &cf);
  if (cf)
  {
    if (_NSInflectionLog_onceToken != -1)
    {
      dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
    }

    v40 = _NSInflectionLog_log;
    if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
    {
      *buf = 136315394;
      v58 = "mss_create((CFStringRef)stringToInflect, &error)";
      v59 = 2112;
      v60 = cf;
      _os_log_error_impl(&dword_18075C000, v40, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
    }

    v34 = cf;
  }

  else
  {
    v34 = 0;
  }

  if (v39 && !v34)
  {
    cf = 0;
    v41 = off_1ED43F7F8(v37, v39, &cf);
    if (cf)
    {
      if (_NSInflectionLog_onceToken != -1)
      {
        dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
      }

      v42 = _NSInflectionLog_log;
      if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
      {
        *buf = 136315394;
        v58 = "minf_create(model, speakableSource, &error)";
        v59 = 2112;
        v60 = cf;
        _os_log_error_impl(&dword_18075C000, v42, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
      }

      v34 = cf;
    }

    else
    {
      v34 = 0;
    }

    if (!v41 || v34)
    {
      v43 = 0;
      if (!v41)
      {
        goto LABEL_122;
      }

      goto LABEL_121;
    }

    if ([v54 addConstraintsTo:v41])
    {
      cf = 0;
      v44 = off_1ED43F800(v41, &cf);
      if (cf)
      {
        if (_NSInflectionLog_onceToken != -1)
        {
          dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
        }

        v45 = _NSInflectionLog_log;
        if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
        {
          *buf = 136315394;
          v58 = "minf_isExists(inflectable, &error)";
          v59 = 2112;
          v60 = cf;
          _os_log_error_impl(&dword_18075C000, v45, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
        }

        v34 = cf;
      }

      else
      {
        v34 = 0;
      }

      if (v34)
      {
        v47 = 0;
      }

      else
      {
        v47 = v44;
      }

      if ((v47 & 1) == 0)
      {
        v43 = 0;
        goto LABEL_121;
      }

      v46 = v53;
      if (!v53)
      {
        cf = 0;
        v48 = off_1ED43F810(v41, &cf);
        if (cf)
        {
          if (_NSInflectionLog_onceToken != -1)
          {
            dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
          }

          v49 = _NSInflectionLog_log;
          if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
          {
            goto LABEL_98;
          }

          *buf = 136315394;
          v58 = "minf_toSpeakableString(inflectable, &error)";
          v59 = 2112;
          v60 = cf;
          goto LABEL_126;
        }

LABEL_105:
        v34 = 0;
LABEL_106:
        if (!v48 || v34)
        {
          v43 = 0;
          if (!v48)
          {
            goto LABEL_121;
          }
        }

        else
        {
          cf = 0;
          v50 = off_1ED43F818(v48, &cf);
          if (cf)
          {
            if (_NSInflectionLog_onceToken != -1)
            {
              dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
            }

            v51 = _NSInflectionLog_log;
            if (os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
            {
              *buf = 136315394;
              v58 = "mss_createPrintCopy(speakableResult, &error)";
              v59 = 2112;
              v60 = cf;
              _os_log_error_impl(&dword_18075C000, v51, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
            }

            v34 = cf;
          }

          else
          {
            v34 = 0;
          }

          v52 = v50;
          v43 = v52;
          if (v22 && v52)
          {
            v43 = [v22 stringByAppendingString:v52];
          }
        }

        off_1ED43F820(v48);
LABEL_121:
        off_1ED43F828(v41);
        goto LABEL_122;
      }
    }

    else
    {
      v46 = v53;
      if (!v53)
      {
        v43 = 0;
        v34 = 0;
        goto LABEL_121;
      }
    }

    cf = 0;
    v48 = off_1ED43F808(v41, v46, &cf);
    if (cf)
    {
      if (_NSInflectionLog_onceToken != -1)
      {
        dispatch_once(&_NSInflectionLog_onceToken, &__block_literal_global_13);
      }

      v49 = _NSInflectionLog_log;
      if (!os_log_type_enabled(_NSInflectionLog_log, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_98;
      }

      *buf = 136315394;
      v58 = "minf_getFeatureValueByNameCopy(inflectable,(CFStringRef)featureName, &error)";
      v59 = 2112;
      v60 = cf;
LABEL_126:
      _os_log_error_impl(&dword_18075C000, v49, OS_LOG_TYPE_ERROR, "Inflection engine reported an error for '%s' while attempting to inflect: %@", buf, 0x16u);
LABEL_98:
      v34 = cf;
      goto LABEL_106;
    }

    goto LABEL_105;
  }

  v43 = 0;
  v17 = 0;
  if (v39)
  {
LABEL_122:
    off_1ED43F820(v39);
    v17 = v43;
  }

LABEL_123:
  if (v34)
  {
    CFRelease(v34);
  }

  return v17;
}

void sub_1810C9DE0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id NSCopyObject(id object, NSUInteger extraBytes, NSZone *zone)
{
  if (!object)
  {
    return 0;
  }

  v3 = object_copy(object, extraBytes);
  v4 = objc_opt_class();
  object_setClass(v3, v4);
  if (*MEMORY[0x1E695E0C0] == 1)
  {
    object_getClassName(v3);
    __CFSetLastAllocationEventName();
  }

  return v3;
}

void NSIncrementExtraRefCount(id object)
{
  if (object)
  {
    _objc_rootRetain();
    if (*MEMORY[0x1E695E0C0] == 1)
    {

      __CFRecordAllocationEvent();
    }
  }
}

BOOL NSDecrementExtraRefCountWasZero(id object)
{
  if (object)
  {
    v1 = object;
    if (*MEMORY[0x1E695E0C0] == 1)
    {
      __CFRecordAllocationEvent();
    }

    LOBYTE(object) = MEMORY[0x1EEE66850](v1);
  }

  return object;
}

NSUInteger NSExtraRefCount(NSUInteger object)
{
  if (object)
  {
    v1 = _objc_rootRetainCount();
    if (v1)
    {
      return v1 - 1;
    }

    else
    {
      return 0;
    }
  }

  return object;
}

void __iop_cancel_block_invoke_2(uint64_t a1)
{
  os_unfair_lock_lock((*(a1 + 32) + 224));
  v2 = *(a1 + 32);
  *(v2 + 48) = 0;

  os_unfair_lock_unlock((v2 + 224));
}

double __iop_setThreadPriority_block_invoke(uint64_t a1)
{
  result = *(a1 + 40);
  *(*(a1 + 32) + 80) = result;
  return result;
}

void sub_1810D06BC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void _NSAbbreviatePathWithTilde(unsigned __int16 *a1, uint64_t *a2)
{
  v20[1] = *MEMORY[0x1E69E9840];
  if (*a2 >= 1 && (*a2 != 1 || *a1 != 47))
  {
    v4 = NSHomeDirectoryForUser(0);
    v5 = [(NSString *)v4 length];
    if (*a2 >= v5)
    {
      v6 = v5;
      MEMORY[0x1EEE9AC00](v5);
      v8 = (v20 - v7);
      v10 = 2 * v9;
      if (v11 > 0x100)
      {
        v8 = malloc_type_malloc(v10, 0x1000040BDFB0063uLL);
      }

      else
      {
        bzero(v20 - v7, v10);
      }

      [(NSString *)v4 getCharacters:v8 range:0, v6];
      if (v6 < 1)
      {
        v16 = 0;
        v17 = 0;
      }

      else if (*a1 == *v8)
      {
        v12 = 1;
        while (1)
        {
          v13 = v12;
          if (v6 == v12)
          {
            break;
          }

          v14 = a1[v12];
          v15 = v8[v12++];
          if (v14 != v15)
          {
            v16 = v13;
            goto LABEL_17;
          }
        }

        v16 = v6;
LABEL_17:
        v17 = v13 < v6;
      }

      else
      {
        v16 = 0;
        v17 = 1;
      }

      if (v6 >= 0x101)
      {
        free(v8);
      }

      if (!v17)
      {
        if (*a2 == v16)
        {
          *a1 = 126;
          v18 = 1;
        }

        else
        {
          v19 = &a1[v16];
          if (*v19 != 47)
          {
            return;
          }

          memmove(a1 + 1, v19, 2 * (*a2 - v16));
          *a1 = 126;
          v18 = *a2 - v16 + 1;
        }

        *a2 = v18;
      }
    }
  }
}

__CFString *_NSFindCommonPrefixInStringArray(void *a1, int a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v4 = [a1 count];
  if (!v4)
  {
    return &stru_1EEEFDF90;
  }

  v5 = v4;
  v6 = v4 - 1;
  if (v4 != 1)
  {
    if (v4 >= 257)
    {
      v9 = NSAllocateObjectArray(v4);
    }

    else
    {
      v9 = v21;
    }

    [a1 getObjects:v9 range:{0, v5}];
    v10 = *v9;
    v18 = v9;
    v19 = [*v9 length];
    if (v19 < 1)
    {
      v8 = &stru_1EEEFDF90;
    }

    else
    {
      v11 = 0;
      if (a2)
      {
        v12 = 8;
      }

      else
      {
        v12 = 9;
      }

      v20 = v9 + 1;
      v8 = &stru_1EEEFDF90;
      while (1)
      {
        v13 = v8;
        [v10 rangeOfComposedCharacterSequenceAtIndex:v11];
        v11 += v14;
        v8 = [v10 substringWithRange:{0, v11}];
        v15 = v6;
        v16 = v20;
        if (v5 >= 2)
        {
          break;
        }

LABEL_18:
        v6 = v15;
        if (v11 >= v19)
        {
          goto LABEL_22;
        }
      }

      while (1)
      {
        [*v16 rangeOfString:v8 options:v12 range:{0, objc_msgSend(*v16, "length")}];
        if (!v17)
        {
          break;
        }

        ++v16;
        if (!--v6)
        {
          goto LABEL_18;
        }
      }

      v8 = v13;
    }

LABEL_22:
    if (v18 != v21)
    {
      free(v18);
    }

    return v8;
  }

  return [a1 objectAtIndex:0];
}

NSString *NSUserName(void)
{
  v0 = CFCopyUserName();

  return v0;
}

NSString *NSFullUserName(void)
{
  if (geteuid())
  {
    v0 = geteuid();
  }

  else
  {
    v0 = getuid();
  }

  result = getpwuid(v0);
  if (result)
  {
    if (result[5].super.isa)
    {
      result = [objc_allocWithZone(NSString) initWithBytes:result[5].super.isa length:strlen(result[5].super.isa) encoding:4];
    }

    else
    {
      result = 0;
    }
  }

  if (!result)
  {
    return &stru_1EEEFDF90;
  }

  return result;
}

NSString *NSOpenStepRootDirectory(void)
{
  if (issetugid())
  {
    return @"/";
  }

  v1 = getenv("NEXT_ROOT");
  if (!v1 || !*v1)
  {
    return @"/";
  }

  v2 = [+[NSFileManager defaultManager](NSFileManager stringWithFileSystemRepresentation:"stringWithFileSystemRepresentation:length:" length:v1, strlen(v1)];

  return [(NSString *)v2 stringByStandardizingPath];
}

uint64_t _NSPreferredChunkSizeForFileDescriptor(int a1)
{
  v13 = *MEMORY[0x1E69E9840];
  memset(&v12, 0, 512);
  memset(&v11, 0, sizeof(v11));
  if (fstatfs(a1, &v12) == -1)
  {
    if (fstat(a1, &v11) == -1)
    {
      if (qword_1ED43F960 != -1)
      {
        dispatch_once(&qword_1ED43F960, &__block_literal_global_34);
      }

      v4 = _MergedGlobals_110;
      if (os_log_type_enabled(_MergedGlobals_110, OS_LOG_TYPE_ERROR))
      {
        v5 = *__error();
        v6 = __error();
        v7 = strerror(*v6);
        v8[0] = 67109378;
        v8[1] = v5;
        v9 = 2080;
        v10 = v7;
        _os_log_error_impl(&dword_18075C000, v4, OS_LOG_TYPE_ERROR, "Encountered fstat failure %d %s", v8, 0x12u);
      }

      return -1;
    }

    st_blksize = v11.st_blksize;
  }

  else
  {
    st_blksize = v12.f_iosize;
  }

  if (st_blksize > 0)
  {
    return st_blksize;
  }

  return -1;
}

uint64_t _NSReadExtendedAttributesFromFileDescriptor(int a1, void *a2, int a3, int *a4)
{
  v5 = a2;
  v33 = *MEMORY[0x1E69E9840];
  v29 = 0u;
  v30 = 0u;
  v31 = 0u;
  v32 = 0u;
  v7 = [a2 countByEnumeratingWithState:&v29 objects:v28 count:16];
  if (!v7)
  {
    return [MEMORY[0x1E695DF20] dictionary];
  }

  v8 = v7;
  v23 = a4;
  v9 = 0;
  v10 = *v30;
  v11 = 0x1E695D000uLL;
  v25 = *v30;
  while (2)
  {
    for (i = 0; i != v8; ++i)
    {
      if (*v30 != v10)
      {
        objc_enumerationMutation(v5);
      }

      v13 = *(*(&v29 + 1) + 8 * i);
      v14 = v27;
      if (([v13 getCString:v27 maxLength:200 encoding:4] & 1) == 0)
      {
        v14 = [v13 UTF8String];
      }

      v15 = fgetxattr(a1, v14, value, 0x3E8uLL, 0, 0);
      if (v15 != -1)
      {
        v16 = [objc_alloc(*(v11 + 3824)) initWithBytes:value length:v15];
        if (!v16)
        {
          continue;
        }

LABEL_10:
        if (!v9)
        {
          v9 = [MEMORY[0x1E695DF90] dictionary];
        }

        [v9 setObject:v16 forKey:v13];

        continue;
      }

      if (*__error() != 34)
      {
        continue;
      }

      v17 = v9;
      v18 = v5;
      v19 = v11;
      v20 = fgetxattr(a1, v14, 0, 0, 0, 0);
      if (v20 == -1)
      {
        v5 = v18;
        v9 = v17;
        v10 = v25;
        continue;
      }

      v21 = v20;
      v16 = [objc_alloc(MEMORY[0x1E695DF88]) initWithLength:v20];
      if (fgetxattr(a1, v14, [v16 mutableBytes], v21, 0, 0) == v21)
      {
        v11 = v19;
        v5 = v18;
        v9 = v17;
        v10 = v25;
        if (!v16)
        {
          continue;
        }

        goto LABEL_10;
      }

      v11 = v19;
      v5 = v18;
      v9 = v17;
      v10 = v25;
      if (a3)
      {
        if (v23)
        {
          *v23 = *__error();
        }

        return 0;
      }
    }

    v8 = [v5 countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v8)
    {
      continue;
    }

    break;
  }

  if (!v9)
  {
    return [MEMORY[0x1E695DF20] dictionary];
  }

  return v9;
}

uint64_t _NSCleanupTemporaryDirectory(uint64_t result)
{
  if (result)
  {
    v1 = result;
    result = rmdir([result fileSystemRepresentation]);
    if (result)
    {
      v2 = +[NSFileManager defaultManager];

      return [(NSFileManager *)v2 removeItemAtPath:v1 error:0];
    }
  }

  return result;
}

uint64_t _NSCreateTemporaryFile(void *a1, NSString **a2, int *a3, id *a4, NSError **a5)
{
  v34 = *MEMORY[0x1E69E9840];
  getpid();
  if (!sandbox_check())
  {
    *a4 = 0;
    v16 = [a1 stringByDeletingLastPathComponent];
    if ([v16 isEqual:&stru_1EEEFDF90])
    {
      __s[0] = 0;
    }

    else if (([v16 getFileSystemRepresentation:__s maxLength:1024] & 1) == 0)
    {
      if (a5)
      {
        v28 = _NSErrorWithFilePath(514, a1);
        goto LABEL_32;
      }

      return 0;
    }

    v17 = strlen(__s);
    v18 = v17;
    if (v17 >= 1 && __s[v17 - 1] != 47)
    {
      if ((v17 & 0x7FFFFFFF) == 0x418)
      {
        goto LABEL_18;
      }

      v18 = v17 + 1;
      __s[v17 & 0x7FFFFFFF] = 47;
    }

    v19 = getpid();
    snprintf(__str, 6uLL, "%04x", v19);
    if ((v18 - 1027) >= 0xFFFFFFFFFFFFFBE7)
    {
      do
      {
        __s[v18] = 0;
        _NSFastMultiCStringConcat(&__s[v18], v20, v21, v22, v23, v24, v25, v26, ".dat.nosync", __str);
        if (!mktemp(__s))
        {
          break;
        }

        v30 = open(__s, 2562, 438);
        if ((v30 & 0x80000000) == 0)
        {
          v15 = v30;
          v13 = [NSString stringWithUTF8String:__s];
          if (a2)
          {
            goto LABEL_5;
          }

          goto LABEL_6;
        }
      }

      while (*__error() == 17);
LABEL_19:
      if (a5)
      {
        v27 = __error();
        v28 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(*v27, a1, 0, 0, 0);
LABEL_32:
        *a5 = v28;
        return 0;
      }

      return 0;
    }

LABEL_18:
    *__error() = 63;
    goto LABEL_19;
  }

  v10 = +[NSFileManager defaultManager];
  *__s = 0;
  v11 = -[NSURL path](-[NSFileManager URLForDirectory:inDomain:appropriateForURL:create:error:](v10, "URLForDirectory:inDomain:appropriateForURL:create:error:", 99, 1, [MEMORY[0x1E695DFF8] fileURLWithPath:a1 isDirectory:0], 1, __s), "path");
  *a4 = v11;
  if (!v11)
  {
    if (a5)
    {
      *a5 = *__s;
    }

    return 0;
  }

  v12 = _NSDataWritingOptionsForRelocatedAtomicWrite(0, a1);
  v13 = [*a4 stringByAppendingPathComponent:{objc_msgSend(a1, "lastPathComponent")}];
  v14 = _NSOpenFileDescriptor_Protected([(NSString *)v13 fileSystemRepresentation], 2562, v12, 438);
  if (v14 < 0)
  {
    if (a5)
    {
      v29 = __error();
      *a5 = _NSErrorWithFilePathErrnoVariantAndExtraUserInfo(*v29, a1, 0, 0, 0);
    }

    _NSCleanupTemporaryDirectory(*a4);
    *a4 = 0;
    return 0;
  }

  v15 = v14;
  if (a2)
  {
LABEL_5:
    *a2 = v13;
  }

LABEL_6:
  if (a3)
  {
    *a3 = v15;
  }

  else
  {
    close(v15);
  }

  return 1;
}

uint64_t _NSMoveTemporaryFileToDestination(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  result = [a2 getFileSystemRepresentation:&__to maxLength:{1024, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0}];
  if (result)
  {
    result = [a1 getFileSystemRepresentation:&__from maxLength:1024];
    if (result)
    {
      if (lstat(&__to, &v9))
      {
        if (*__error() != 2)
        {
          return 0;
        }

        rename(&__from, &__to, v5);
        if (!v6)
        {
          return 1;
        }
      }

      else
      {
        st_mode = v9.st_mode;
        rename(&__from, &__to, v4);
        if (!v8)
        {
          chmod(&__to, st_mode);
          return 1;
        }
      }

      unlink(&__from);
      return 0;
    }
  }

  return result;
}

uint64_t _NSWriteExtendedAttributesToFileDescriptor(int a1, void *a2, int a3, int *a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [a2 countByEnumeratingWithState:&v19 objects:v18 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v20;
    while (2)
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v20 != v10)
        {
          objc_enumerationMutation(a2);
        }

        v12 = *(*(&v19 + 1) + 8 * i);
        v13 = v17;
        if (([v12 getCString:v17 maxLength:200 encoding:4] & 1) == 0)
        {
          v13 = [v12 UTF8String];
        }

        v14 = [a2 objectForKey:v12];
        if (fsetxattr(a1, v13, [v14 bytes], objc_msgSend(v14, "length"), 0, 0))
        {
          v15 = a3 == 0;
        }

        else
        {
          v15 = 1;
        }

        if (!v15)
        {
          if (a4)
          {
            *a4 = *__error();
          }

          return 0;
        }
      }

      v9 = [a2 countByEnumeratingWithState:&v19 objects:v18 count:16];
      if (v9)
      {
        continue;
      }

      break;
    }
  }

  return 1;
}

uint64_t _NSXPCLongMessageLog()
{
  if (qword_1ED43F990 != -1)
  {
    dispatch_once(&qword_1ED43F990, &__block_literal_global_43_1);
  }

  return qword_1ED43F988;
}

void *NSReallocateScannedUncollectable(void *a1, size_t a2)
{
  if (a1)
  {
    v4 = malloc_zone_from_ptr(a1);

    return malloc_type_zone_realloc(v4, a1, a2, 0xCD0314BDuLL);
  }

  else
  {
    v6 = malloc_default_zone();

    return malloc_type_zone_calloc(v6, 1uLL, a2, 0x2C221C3EuLL);
  }
}

void NSSetZoneName(NSZone *zone, NSString *name)
{
  v3 = zone;
  if (!zone)
  {
    v3 = malloc_default_zone();
  }

  v4 = [(NSString *)name UTF8String];

  malloc_set_zone_name(v3, v4);
}

NSString *__cdecl NSZoneName(NSZone *zone)
{
  if (!zone)
  {
    zone = malloc_default_zone();
  }

  zone_name = malloc_get_zone_name(zone);
  if (zone_name)
  {
    v2 = zone_name;
  }

  else
  {
    v2 = "";
  }

  return [NSString stringWithUTF8String:v2];
}

void NSZoneReallyFree(malloc_zone_t *a1, void *a2)
{
  if (a1)
  {
    malloc_zone_free(a1, a2);
  }

  else
  {
    free(a2);
  }
}

NSUInteger NSLogPageSize(void)
{
  v0 = flsl(*MEMORY[0x1E69E9AC8]) - 1;
  if (v0 > 0x40)
  {
    return 0;
  }

  return v0;
}

void NSCopyMemoryPages(const void *source, void *dest, NSUInteger bytes)
{
  if (vm_copy(*MEMORY[0x1E69E9A60], source, bytes, dest))
  {

    memmove(dest, source, bytes);
  }
}

NSUInteger NSRealMemoryAvailable(void)
{
  v4 = *MEMORY[0x1E69E9840];
  result = _NSRealMemory;
  if (!_NSRealMemory)
  {
    v2 = 0;
    *v3 = 0x500000006;
    v1 = 8;
    if (sysctl(v3, 2u, &v2, &v1, 0, 0) == -1)
    {
      return _NSRealMemory;
    }

    else
    {
      result = v2;
      _NSRealMemory = v2;
    }
  }

  return result;
}

void *_NSFaultInObjectWithCleanup(atomic_ullong *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    result = (*(a2 + 16))(a2);
    v6 = 0;
    atomic_compare_exchange_strong(a1, &v6, result);
    if (v6)
    {
      [result performSelector:a3];
      return *a1;
    }
  }

  return result;
}

void raiseError_1(uint64_t a1, const char *a2)
{
  v3 = objc_alloc(MEMORY[0x1E695DF30]);
  Name = sel_getName(a2);
  v5 = [v3 initWithName:@"NSPointerFunctionsAbstractImplementationError" reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"abstract method %s called directly on class %@", Name, objc_opt_class()), 0}];
  objc_exception_throw(v5);
}

void _NSXPCConnectionInitRemoteXPC()
{
  if (_MergedGlobals_111 != -1)
  {
    dispatch_once(&_MergedGlobals_111, &__block_literal_global_36);
  }
}

vm_address_t machAcquire(vm_address_t a1, uint64_t (*a2)(vm_address_t), int a3)
{
  v3 = a1;
  dest_address[1] = *MEMORY[0x1E69E9840];
  if (a3)
  {
    dest_address[0] = 0;
    v4 = a2(a1);
    v5 = v4 % *MEMORY[0x1E69E9AC8];
    if (v5)
    {
      v6 = *MEMORY[0x1E69E9AC8] - v5;
    }

    else
    {
      v6 = 0;
    }

    v7 = MEMORY[0x1E69E9A60];
    v8 = vm_allocate(*MEMORY[0x1E69E9A60], dest_address, v6 + v4, 1);
    v9 = 0;
    if (!v8)
    {
      if (vm_copy(*v7, v3, v6 + v4, dest_address[0]))
      {
        mach_vm_deallocate(*v7, dest_address[0], v6 + v4);
        return 0;
      }

      else
      {
        return dest_address[0];
      }
    }

    return v9;
  }

  return v3;
}

uint64_t machRelinquish(mach_vm_address_t a1, uint64_t (*a2)(void))
{
  v3 = a2();
  v4 = v3 % *MEMORY[0x1E69E9AC8];
  if (v4)
  {
    v5 = *MEMORY[0x1E69E9AC8] - v4;
  }

  else
  {
    v5 = 0;
  }

  v6 = v5 + v3;
  v7 = *MEMORY[0x1E69E9A60];

  return mach_vm_deallocate(v7, a1, v6);
}

uint64_t valueHash(char *a1, uint64_t (*a2)(void))
{
  result = a2();
  if (result >= 1)
  {
    v4 = &a1[result];
    do
    {
      v5 = *a1++;
      result += 17 * v5;
    }

    while (a1 < v4);
  }

  return result;
}

void *_NSPointerFunctionCoding_bufferForCount(unint64_t a1)
{
  if (a1 >> 61)
  {
    return 0;
  }

  result = malloc_type_malloc(8 * a1, 0x665F25FuLL);
  if (result)
  {
    if (__CFADD__(result, a1))
    {
      free(result);
      return 0;
    }
  }

  return result;
}

uint64_t __NSFireMachPort(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 + 8);
  _CFAutoreleasePoolPush();
  if (objc_opt_respondsToSelector())
  {
    [v5 handleMachMessage:a2];
  }

  return _CFAutoreleasePoolPop();
}

uint64_t __NSDescribeNSMachPortCallout(uint64_t a1, uint64_t a2, char *a3, size_t a4, char *a5, size_t a6)
{
  v17 = *MEMORY[0x1E69E9840];
  ClassName = object_getClassName(*(a2 + 8));
  Class = object_getClass(*(a2 + 8));
  v13 = "<unknown name>";
  if (ClassName)
  {
    v13 = ClassName;
  }

  snprintf(a5, a6, "(NSMachPort) %s", v13);
  memset(&v16, 0, sizeof(v16));
  result = dladdr(Class, &v16);
  if (result)
  {
    dli_fname = v16.dli_fname;
    if (!v16.dli_fname)
    {
      dli_fname = "<unknown library>";
    }

    return snprintf(a3, a4, "%s", dli_fname);
  }

  return result;
}

void __destroyPortContext(void *ptr)
{
  if ((ptr[4] ^ ptr[3]) == -1)
  {
    ptr[1] = 0;
    _cfmp_record_nsmachport_deallocation();
    *&v2 = 0xFAFAFAFAFAFAFAFALL;
    *(&v2 + 1) = 0xFAFAFAFAFAFAFAFALL;
    *(ptr + 1) = v2;
    *(ptr + 2) = v2;
    *ptr = v2;

    free(ptr);
  }

  else if (malloc_size(ptr))
  {
    NSLog(@"*** __destroyPortContext() called with invalid context %p:{%p, %p, %p, %p, %p, %p}}:\n%@", ptr, *ptr, ptr[1], ptr[2], ptr[3], ptr[4], ptr[5], +[NSThread callStackSymbols]);
  }

  else
  {
    NSLog(@"*** __destroyPortContext() called with invalid context %p:\n%@", ptr, +[NSThread callStackSymbols]);
  }
}

uint64_t _NSPortDeathNotify(uint64_t a1)
{
  _CFAutoreleasePoolPush();
  [+[NSNotificationCenter defaultCenter](NSNotificationCenter postNotificationName:"postNotificationName:object:userInfo:" object:@"NSPortDidBecomeInvalidNotification" userInfo:a1, 0];

  return _CFAutoreleasePoolPop();
}

uint64_t __NSFireMessagePort(uint64_t a1, unsigned int a2, const __CFData *a3, uint64_t a4)
{
  if (objc_opt_respondsToSelector())
  {
    v7 = CFPropertyListCreateWithData(0, a3, 0, 0, 0);
    if (v7)
    {
      v8 = v7;
      Value = CFDictionaryGetValue(v7, @"NSMessagePortReplyName");
      if (Value)
      {
        v10 = [objc_allocWithZone(NSMessagePort) initWithRemoteName:Value];
      }

      else
      {
        v10 = 0;
      }

      v11 = CFDictionaryGetValue(v8, @"NSMessagePortComponents");
      _CFAutoreleasePoolPush();
      v12 = [MEMORY[0x1E695DF70] array];
      v13 = [v11 count];
      if (v13)
      {
        v14 = v13;
        for (i = 0; i != v14; ++i)
        {
          v16 = [v11 objectAtIndex:i];
          if (_NSIsNSString())
          {
            v17 = [objc_allocWithZone(NSMessagePort) initWithRemoteName:v16];
            if (v17)
            {
              v18 = v17;
              [v12 addObject:v17];
            }

            else
            {
              NSLog(@"[NSMessagePort parseMessage:]: could not create port component; this is very bad");
            }
          }

          else
          {
            [v12 addObject:v16];
          }
        }
      }

      v19 = [objc_allocWithZone(NSPortMessage) initWithSendPort:v10 receivePort:a4 components:v12];

      CFRelease(v8);
      [v19 setMsgid:a2];
      [*(a4 + 32) handlePortMessage:v19];

      _CFAutoreleasePoolPop();
    }
  }

  return 0;
}

NSString *_NSProgressFractionDescription(unint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = 0.0;
  if ((*a1 & 0x8000000000000000) == 0 && (v1 & 0x8000000000000000) == 0 && v1 | v2)
  {
    if (v1)
    {
      v3 = v2 / v1;
    }

    else
    {
      v3 = 1.0;
    }
  }

  return [NSString stringWithFormat:@"%lld / %lld (%0.6f)", v2, v1, *&v3];
}

__CFString *_NSIndentSpace(uint64_t a1)
{
  if (!a1)
  {
    return &stru_1EEEFDF90;
  }

  v1 = a1;
  result = &stru_1EEEFDF90;
  do
  {
    result = [(__CFString *)result stringByAppendingString:@"    "];
    --v1;
  }

  while (v1);
  return result;
}

uint64_t _NSFastMultiCStringConcat(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unsigned __int8 *a9, uint64_t a10)
{
  v10 = (result - 1);
    ;
  }

  v17 = &a10;
  for (i = a9; i; i = *v16)
  {
    v13 = *i;
    *v10 = v13;
    if (v13)
    {
      v14 = i + 1;
      do
      {
        v15 = *v14++;
        *++v10 = v15;
      }

      while (v15);
    }

    v16 = v17++;
  }

  return result;
}

const char *_NSNameOfClass(objc_class *a1)
{
  if (a1)
  {
    return class_getName(a1);
  }

  else
  {
    return "nil";
  }
}

uint64_t _NSCStringToUnsignedLong(char *a1, char **a2)
{
  v3 = MEMORY[0x1E69E9830];
  do
  {
    while (1)
    {
      v5 = *a1++;
      v4 = v5;
      if ((v5 & 0x80000000) != 0)
      {
        break;
      }

      if ((*(v3 + 4 * v4 + 60) & 0x4000) == 0)
      {
        goto LABEL_6;
      }
    }
  }

  while (__maskrune(v4, 0x4000uLL));
LABEL_6:
  if (v4 == 43)
  {
    v17 = 0;
  }

  else
  {
    if (v4 != 45)
    {
      v17 = 0;
      goto LABEL_12;
    }

    v17 = 1;
  }

  v6 = *a1++;
  LOBYTE(v4) = v6;
LABEL_12:
  if (v4 == 48)
  {
    if ((*a1 | 0x20) == 0x78)
    {
      LOBYTE(v4) = a1[1];
      a1 += 2;
      v7 = 16;
    }

    else
    {
      LOBYTE(v4) = 48;
      v7 = 8;
    }
  }

  else
  {
    v7 = 10;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0xFFFFFFFFFFFFFFFFLL / v7;
  for (i = a1 - 1; ; ++i)
  {
    LODWORD(v12) = v4 - 48;
    if (v12 > 9)
    {
      if (v4 < 0)
      {
        if (!__maskrune(v4, 0x100uLL))
        {
          break;
        }

        v13 = __maskrune(v4, 0x8000uLL);
      }

      else
      {
        if ((*(v3 + 4 * v4 + 60) & 0x100) == 0)
        {
          break;
        }

        v13 = *(v3 + 4 * v4 + 60) & 0x8000;
      }

      if (v13)
      {
        v14 = -55;
      }

      else
      {
        v14 = -87;
      }

      LOBYTE(v12) = v14 + v4;
    }

    if (v7 <= v12)
    {
      break;
    }

    if (v9 & 1 | (v8 > v10))
    {
      v9 = 1;
    }

    else
    {
      v12 = v12;
      if (v8 == v10 && v12 > ~(0xFFFFFFFFFFFFFFFFLL / v7 * v7))
      {
        v9 = 1;
        v8 = 0xFFFFFFFFFFFFFFFFLL / v7;
      }

      else
      {
        v9 = 0;
        v8 = v12 + v8 * v7;
      }
    }

    v15 = i[1];
    LOBYTE(v4) = v15;
  }

  if (v9)
  {
    *__error() = 34;
    result = -1;
  }

  else if (v17)
  {
    result = -v8;
  }

  else
  {
    result = v8;
  }

  if (a2)
  {
    *a2 = i;
  }

  return result;
}

void freeenv(void **a1, uint64_t a2)
{
  if (a2)
  {
    v3 = a2;
    v4 = a1;
    do
    {
      v5 = *v4++;
      free(v5);
      --v3;
    }

    while (v3);
  }

  free(a1);
}

uint64_t _getCurrentNSHostName()
{
  v0 = [MEMORY[0x1E695AC10] currentHost];

  return [v0 name];
}

uint64_t _NSRemoteUndoLogger()
{
  if (qword_1ED43FA20 != -1)
  {
    dispatch_once(&qword_1ED43FA20, &__block_literal_global_40);
  }

  return _MergedGlobals_115;
}

NSString *_NSRemoteUndoStateCopyDescription(uint64_t a1)
{
  if (*a1 != 1)
  {
    if (*(a1 + 8))
    {
      v3 = [NSString alloc];
      v6 = [*(a1 + 8) allKeys];
      v4 = @"_NSRemoteUndoState{type = main, connections = %@}";
      return [(NSString *)v3 initWithFormat:v4, v6];
    }

    return 0;
  }

  if (*(a1 + 8) == 1)
  {
    if (*(a1 + 24))
    {
      return [[NSString alloc] initWithFormat:@"_NSRemoteUndoState{type = in-process auxiliary, connected = YES, connectionUUID = %@}", *(a1 + 24)];
    }

    return 0;
  }

  if (*(a1 + 32))
  {
    v3 = [NSString alloc];
    v6 = [objc_msgSend(*(a1 + 32) "exportedObject")];
    v4 = @"_NSRemoteUndoState{type = XPC auxiliary, connected = YES, connectionUUID = %@}";
    return [(NSString *)v3 initWithFormat:v4, v6];
  }

  if (!*(a1 + 24))
  {
    return 0;
  }

  v5 = [NSString alloc];

  return [(NSString *)v5 initWithFormat:@"_NSRemoteUndoState{type = auxiliary, connected = NO}"];
}

void sub_1810E3910(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1810E436C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id location)
{
  objc_destroyWeak((v22 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t _ASCII_recognize(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  a1[4] += a3;
  v8 = [a1 maxSkipBytes];
  if (a3)
  {
    v9 = v8;
    v10 = 0;
    do
    {
      while (1)
      {
        v11 = *(a2 + v10);
        if ((v11 - 32) >= 0x5Fu && (*(a2 + v10) > 0xDu || ((1 << v11) & 0x3700) == 0))
        {
          break;
        }

        ++a1[17];
        [a4 appendByte:v11];
        if (++v10 == a3)
        {
          goto LABEL_15;
        }
      }

      [a4 appendPlaceholder];
      v13 = a1[8] + 1;
      a1[8] = v13;
      ++v10;
    }

    while (v13 <= v9 && v10 != a3);
  }

LABEL_15:
  a1[12] = a1[8];
  result = a1[17];
  a1[5] = result;
  return result;
}

uint64_t _BigE_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v27 = *MEMORY[0x1E69E9840];
  *(a1 + 32) += a3;
  v8 = [a1 maxSkipBytes];
  if (a3)
  {
    v9 = v8;
    v10 = 0;
    v24 = 0;
    contentsDeallocator = *MEMORY[0x1E695E498];
    while (1)
    {
      v11 = v10;
      while (1)
      {
        v12 = *(a2 + v11);
        if ((v12 - 32) >= 0x5Fu && (*(a2 + v11) > 0xDu || ((1 << v12) & 0x3700) == 0))
        {
          break;
        }

        ++v11;
        ++*(a1 + 56);
        [a4 appendByte:v12];
        if (v11 >= a3)
        {
          goto LABEL_31;
        }
      }

      v10 = v11 + 1;
      if (v11 + 1 >= a3)
      {
        goto LABEL_29;
      }

      v14 = *(a2 + v11 + 1);
      v15 = (v12 + 95);
      if ((v15 > 0x5D || (v14 - 64) >= 0x3Fu) && (v15 > 0x5D || (v14 + 95) >= 0x5Eu) && ((v12 + 114) > 0x12u || (v14 - 64) >= 0xBFu) && ((v12 + 127) > 5u || (v14 - 64) > 0x9Fu))
      {
        goto LABEL_29;
      }

      v20 = *(a2 + v11 + 1);
      v21 = qword_1ED43FA40;
      v16 = CFStringCreateWithBytesNoCopy(0, (a2 + v11), 2, *(a1 + 24), 0, contentsDeallocator);
      if (!v16)
      {
        break;
      }

      cf = v16;
      CharacterAtIndex = CFStringGetCharacterAtIndex(v16, 0);
      if ([v21 indexForKey:&CharacterAtIndex length:1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++*(a1 + 80);
      }

      CFRelease(cf);
      v22 = CharacterAtIndex;
      if (!CharacterAtIndex)
      {
        break;
      }

      if (v24)
      {
        v26[0] = v24;
        v26[1] = CharacterAtIndex;
        if ([qword_1ED43FA48 indexForKey:v26 length:2] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++*(a1 + 88);
        }
      }

      v10 = v11 + 2;
      ++*(a1 + 48);
      [a4 appendByte1:v12 byte2:v20];
      v24 = v22;
LABEL_30:
      if (v10 >= a3)
      {
        goto LABEL_31;
      }
    }

    v24 = 0;
LABEL_29:
    [a4 appendPlaceholder];
    ++*(a1 + 96);
    v17 = *(a1 + 64) + 1;
    *(a1 + 64) = v17;
    if (v17 > v9)
    {
      goto LABEL_31;
    }

    goto LABEL_30;
  }

LABEL_31:
  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t _Big5HKSCS_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  *(a1 + 32) += a3;
  v8 = [a1 maxSkipBytes];
  if (a3)
  {
    v9 = v8;
    v10 = 0;
    v23 = 0;
    contentsDeallocator = *MEMORY[0x1E695E498];
    while (1)
    {
      v11 = v10;
      while (1)
      {
        v12 = *(a2 + v11);
        if ((v12 - 32) >= 0x5Fu && (*(a2 + v11) > 0xDu || ((1 << v12) & 0x3700) == 0))
        {
          break;
        }

        ++v11;
        ++*(a1 + 56);
        [a4 appendByte:v12];
        if (v11 >= a3)
        {
          goto LABEL_26;
        }
      }

      v10 = v11 + 1;
      if (v11 + 1 >= a3)
      {
        goto LABEL_24;
      }

      if ((v12 + 121) > 0x77u)
      {
        goto LABEL_24;
      }

      v14 = *(a2 + v11 + 1);
      if ((v14 - 40) >= 0x57 && (v14 + 95) > 0x5Du)
      {
        goto LABEL_24;
      }

      v19 = *(a2 + v11 + 1);
      v20 = qword_1ED43FA40;
      v15 = CFStringCreateWithBytesNoCopy(0, (a2 + v11), 2, *(a1 + 24), 0, contentsDeallocator);
      if (!v15)
      {
        break;
      }

      cf = v15;
      CharacterAtIndex = CFStringGetCharacterAtIndex(v15, 0);
      if ([v20 indexForKey:&CharacterAtIndex length:1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++*(a1 + 80);
      }

      CFRelease(cf);
      v21 = CharacterAtIndex;
      if (!CharacterAtIndex)
      {
        break;
      }

      if (v23)
      {
        v25[0] = v23;
        v25[1] = CharacterAtIndex;
        if ([qword_1ED43FA48 indexForKey:v25 length:2] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++*(a1 + 88);
        }
      }

      v10 = v11 + 2;
      ++*(a1 + 48);
      [a4 appendByte1:v12 byte2:v19];
      v23 = v21;
LABEL_25:
      if (v10 >= a3)
      {
        goto LABEL_26;
      }
    }

    v23 = 0;
LABEL_24:
    [a4 appendPlaceholder];
    ++*(a1 + 96);
    v16 = *(a1 + 64) + 1;
    *(a1 + 64) = v16;
    if (v16 > v9)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t _Big5_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  *(a1 + 32) += a3;
  v8 = [a1 maxSkipBytes];
  if (a3)
  {
    v9 = v8;
    v10 = 0;
    v23 = 0;
    contentsDeallocator = *MEMORY[0x1E695E498];
    while (1)
    {
      v11 = v10;
      while (1)
      {
        v12 = *(a2 + v11);
        if ((v12 - 32) >= 0x5Fu && (*(a2 + v11) > 0xDu || ((1 << v12) & 0x3700) == 0))
        {
          break;
        }

        ++v11;
        ++*(a1 + 56);
        [a4 appendByte:v12];
        if (v11 >= a3)
        {
          goto LABEL_26;
        }
      }

      v10 = v11 + 1;
      if (v11 + 1 >= a3)
      {
        goto LABEL_24;
      }

      if ((v12 + 95) > 0x5Du)
      {
        goto LABEL_24;
      }

      v14 = *(a2 + v11 + 1);
      if ((v14 - 64) >= 0x3F && (v14 + 95) > 0x5Du)
      {
        goto LABEL_24;
      }

      v19 = *(a2 + v11 + 1);
      v20 = qword_1ED43FA40;
      v15 = CFStringCreateWithBytesNoCopy(0, (a2 + v11), 2, *(a1 + 24), 0, contentsDeallocator);
      if (!v15)
      {
        break;
      }

      cf = v15;
      CharacterAtIndex = CFStringGetCharacterAtIndex(v15, 0);
      if ([v20 indexForKey:&CharacterAtIndex length:1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++*(a1 + 80);
      }

      CFRelease(cf);
      v21 = CharacterAtIndex;
      if (!CharacterAtIndex)
      {
        break;
      }

      if (v23)
      {
        v25[0] = v23;
        v25[1] = CharacterAtIndex;
        if ([qword_1ED43FA48 indexForKey:v25 length:2] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++*(a1 + 88);
        }
      }

      v10 = v11 + 2;
      ++*(a1 + 48);
      [a4 appendByte1:v12 byte2:v19];
      v23 = v21;
LABEL_25:
      if (v10 >= a3)
      {
        goto LABEL_26;
      }
    }

    v23 = 0;
LABEL_24:
    [a4 appendPlaceholder];
    ++*(a1 + 96);
    v16 = *(a1 + 64) + 1;
    *(a1 + 64) = v16;
    if (v16 > v9)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t _WINDOWS936_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  *(a1 + 32) += a3;
  v8 = [a1 maxSkipBytes];
  if (a3)
  {
    v9 = v8;
    v10 = 0;
    v22 = 0;
    contentsDeallocator = *MEMORY[0x1E695E498];
    while (1)
    {
      v11 = v10;
      while (1)
      {
        v12 = *(a2 + v11);
        if ((v12 - 32) >= 0x61u && (*(a2 + v11) > 0xDu || ((1 << v12) & 0x3700) == 0))
        {
          break;
        }

        ++v11;
        ++*(a1 + 56);
        [a4 appendByte:v12];
        if (v11 >= a3)
        {
          goto LABEL_25;
        }
      }

      v10 = v11 + 1;
      if (v11 + 1 >= a3 || (v12 + 127) > 0x7Du || (*(a2 + v11 + 1) - 64) > 0xBEu)
      {
        goto LABEL_23;
      }

      v18 = *(a2 + v11 + 1);
      v19 = qword_1ED43FA40;
      v14 = CFStringCreateWithBytesNoCopy(0, (a2 + v11), 2, *(a1 + 24), 0, contentsDeallocator);
      if (!v14)
      {
        break;
      }

      cf = v14;
      CharacterAtIndex = CFStringGetCharacterAtIndex(v14, 0);
      if ([v19 indexForKey:&CharacterAtIndex length:1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++*(a1 + 80);
      }

      CFRelease(cf);
      v20 = CharacterAtIndex;
      if (!CharacterAtIndex)
      {
        break;
      }

      if (v22)
      {
        v24[0] = v22;
        v24[1] = CharacterAtIndex;
        if ([qword_1ED43FA48 indexForKey:v24 length:2] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++*(a1 + 88);
        }
      }

      v10 = v11 + 2;
      ++*(a1 + 48);
      [a4 appendByte1:v12 byte2:v18];
      v22 = v20;
LABEL_24:
      if (v10 >= a3)
      {
        goto LABEL_25;
      }
    }

    v22 = 0;
LABEL_23:
    [a4 appendPlaceholder];
    ++*(a1 + 96);
    v15 = *(a1 + 64) + 1;
    *(a1 + 64) = v15;
    if (v15 > v9)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_25:
  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t _WINDOWS950_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  *(a1 + 32) += a3;
  v8 = [a1 maxSkipBytes];
  if (a3)
  {
    v9 = v8;
    v10 = 0;
    v22 = 0;
    contentsDeallocator = *MEMORY[0x1E695E498];
    while (1)
    {
      v11 = v10;
      while (1)
      {
        v12 = *(a2 + v11);
        if ((v12 - 32) >= 0x5Fu && (*(a2 + v11) > 0xDu || ((1 << v12) & 0x3700) == 0))
        {
          break;
        }

        ++v11;
        ++*(a1 + 56);
        [a4 appendByte:v12];
        if (v11 >= a3)
        {
          goto LABEL_26;
        }
      }

      v10 = v11 + 1;
      if (v11 + 1 >= a3 || (v12 + 55) > 0xFDu || (v12 + 95) > 0x58u || (*(a2 + v11 + 1) - 64) > 0xBEu)
      {
        goto LABEL_24;
      }

      v18 = *(a2 + v11 + 1);
      v19 = qword_1ED43FA40;
      v14 = CFStringCreateWithBytesNoCopy(0, (a2 + v11), 2, *(a1 + 24), 0, contentsDeallocator);
      if (!v14)
      {
        break;
      }

      cf = v14;
      CharacterAtIndex = CFStringGetCharacterAtIndex(v14, 0);
      if ([v19 indexForKey:&CharacterAtIndex length:1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++*(a1 + 80);
      }

      CFRelease(cf);
      v20 = CharacterAtIndex;
      if (!CharacterAtIndex)
      {
        break;
      }

      if (v22)
      {
        v24[0] = v22;
        v24[1] = CharacterAtIndex;
        if ([qword_1ED43FA48 indexForKey:v24 length:2] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++*(a1 + 88);
        }
      }

      v10 = v11 + 2;
      ++*(a1 + 48);
      [a4 appendByte1:v12 byte2:v18];
      v22 = v20;
LABEL_25:
      if (v10 >= a3)
      {
        goto LABEL_26;
      }
    }

    v22 = 0;
LABEL_24:
    [a4 appendPlaceholder];
    ++*(a1 + 96);
    v15 = *(a1 + 64) + 1;
    *(a1 + 64) = v15;
    if (v15 > v9)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

LABEL_26:
  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t _WINDOWS932_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  *(a1 + 32) += a3;
  v8 = [a1 maxSkipBytes];
  if (a3)
  {
    v9 = v8;
    v10 = 0;
    v23 = 0;
    contentsDeallocator = *MEMORY[0x1E695E498];
    while (1)
    {
      v11 = v10;
      while (1)
      {
        v12 = *(a2 + v11);
        if ((v12 - 32) >= 0x5Fu && (v12 + 95) >= 0x3Fu && (*(a2 + v11) > 0xDu || ((1 << v12) & 0x3700) == 0))
        {
          break;
        }

        ++v11;
        ++*(a1 + 56);
        [a4 appendByte:v12];
        if (v11 >= a3)
        {
          goto LABEL_29;
        }
      }

      v10 = v11 + 1;
      if (v11 + 1 >= a3)
      {
        goto LABEL_27;
      }

      v14 = *(a2 + v11 + 1);
      if ((v12 + 6) >= 3u && (v12 + 127) >= 0x1Fu && (v12 & 0xF0) != 0xE0)
      {
        goto LABEL_27;
      }

      if (v14 >= -3 && (v14 - 64) > 0x3Eu)
      {
        goto LABEL_27;
      }

      bytes[0] = *(a2 + v11);
      v19 = v14;
      bytes[1] = v14;
      v20 = qword_1ED43FA50;
      v15 = CFStringCreateWithBytesNoCopy(0, bytes, 2, *(a1 + 24), 0, contentsDeallocator);
      if (!v15)
      {
        break;
      }

      cf = v15;
      v25[0] = CFStringGetCharacterAtIndex(v15, 0);
      if ([v20 indexForKey:v25 length:1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++*(a1 + 80);
      }

      CFRelease(cf);
      v21 = v25[0];
      if (!v25[0])
      {
        break;
      }

      if (v23)
      {
        v25[0] = v23;
        v25[1] = v21;
        if ([qword_1ED43FA58 indexForKey:v25 length:2] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++*(a1 + 88);
        }
      }

      v10 = v11 + 2;
      ++*(a1 + 48);
      [a4 appendByte1:v12 byte2:v19];
      v23 = v21;
LABEL_28:
      if (v10 >= a3)
      {
        goto LABEL_29;
      }
    }

    v23 = 0;
LABEL_27:
    [a4 appendPlaceholder];
    ++*(a1 + 96);
    v16 = *(a1 + 64) + 1;
    *(a1 + 64) = v16;
    if (v16 > v9)
    {
      goto LABEL_29;
    }

    goto LABEL_28;
  }

LABEL_29:
  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t _WINDOWS949_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  *(a1 + 32) += a3;
  v8 = [a1 maxSkipBytes];
  if (a3)
  {
    v9 = v8;
    v10 = 0;
    v22 = 0;
    contentsDeallocator = *MEMORY[0x1E695E498];
    while (1)
    {
      v11 = v10;
      while (1)
      {
        v12 = *(a2 + v11);
        if ((v12 - 32) >= 0x5Fu && (*(a2 + v11) > 0xDu || ((1 << v12) & 0x3700) == 0))
        {
          break;
        }

        ++v11;
        ++*(a1 + 56);
        [a4 appendByte:v12];
        if (v11 >= a3)
        {
          goto LABEL_25;
        }
      }

      v10 = v11 + 1;
      if (v11 + 1 >= a3 || (v12 + 127) > 0x7Du || (*(a2 + v11 + 1) - 65) > 0xBDu)
      {
        goto LABEL_23;
      }

      v18 = *(a2 + v11 + 1);
      v19 = qword_1ED43FA60;
      v14 = CFStringCreateWithBytesNoCopy(0, (a2 + v11), 2, *(a1 + 24), 0, contentsDeallocator);
      if (!v14)
      {
        break;
      }

      cf = v14;
      CharacterAtIndex = CFStringGetCharacterAtIndex(v14, 0);
      if ([v19 indexForKey:&CharacterAtIndex length:1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++*(a1 + 80);
      }

      CFRelease(cf);
      v20 = CharacterAtIndex;
      if (!CharacterAtIndex)
      {
        break;
      }

      if (v22)
      {
        v24[0] = v22;
        v24[1] = CharacterAtIndex;
        if ([qword_1ED43FA68 indexForKey:v24 length:2] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++*(a1 + 88);
        }
      }

      v10 = v11 + 2;
      ++*(a1 + 48);
      [a4 appendByte1:v12 byte2:v18];
      v22 = v20;
LABEL_24:
      if (v10 >= a3)
      {
        goto LABEL_25;
      }
    }

    v22 = 0;
LABEL_23:
    [a4 appendPlaceholder];
    ++*(a1 + 96);
    v15 = *(a1 + 64) + 1;
    *(a1 + 64) = v15;
    if (v15 > v9)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_25:
  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t _WINDOWS874_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v17 = [a1 maxSkipBytes];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    do
    {
      v11 = *a2++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0)
      {
        if ((iso8859_11Frqchars[(v10 >> 3) & 0xF] >> (v12 & 7)))
        {
          ++a1[10];
        }
      }

      else if (v12 > 0x1F)
      {
        if (v12 == 127)
        {
LABEL_20:
          ++a1[18];
LABEL_21:
          v18[0] = v9;
          v18[1] = v8;
          v18[2] = v12;
          if ([qword_1ED43FA70 indexForBytes:v18 length:3] != 0x7FFFFFFFFFFFFFFFLL)
          {
            ++a1[16];
          }
        }

        else
        {
LABEL_13:
          ++a1[17];
          if (v8 > 0x7Eu || v9 >= 0x7Fu)
          {
            goto LABEL_21;
          }
        }

        [a4 appendByte:v12];
        goto LABEL_24;
      }

      if (v12 <= 0xD && ((1 << v12) & 0x3700) != 0)
      {
        goto LABEL_13;
      }

      if ((v12 + 96) < 0x3Bu || (v12 + 33) < 0x1Du)
      {
        goto LABEL_20;
      }

      [a4 appendPlaceholder];
      v15 = a1[8] + 1;
      a1[8] = v15;
      if (v15 > v17)
      {
        break;
      }

      v8 = 0;
      LOBYTE(v12) = 0;
LABEL_24:
      v9 = v8;
      v8 = v12;
      --v5;
    }

    while (v5);
  }

  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _EUCGB2312_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  *(a1 + 32) += a3;
  v8 = [a1 maxSkipBytes];
  if (a3)
  {
    v9 = v8;
    v10 = 0;
    v22 = 0;
    contentsDeallocator = *MEMORY[0x1E695E498];
    while (1)
    {
      v11 = v10;
      while (1)
      {
        v12 = *(a2 + v11);
        if ((v12 - 32) >= 0x5Fu && (*(a2 + v11) > 0xDu || ((1 << v12) & 0x3700) == 0))
        {
          break;
        }

        ++v11;
        ++*(a1 + 56);
        [a4 appendByte:v12];
        if (v11 >= a3)
        {
          goto LABEL_25;
        }
      }

      v10 = v11 + 1;
      if (v11 + 1 >= a3 || (v12 + 95) > 0x5Du || (*(a2 + v11 + 1) + 95) > 0x5Du)
      {
        goto LABEL_23;
      }

      v18 = *(a2 + v11 + 1);
      v19 = qword_1ED43FA40;
      v14 = CFStringCreateWithBytesNoCopy(0, (a2 + v11), 2, *(a1 + 24), 0, contentsDeallocator);
      if (!v14)
      {
        break;
      }

      cf = v14;
      CharacterAtIndex = CFStringGetCharacterAtIndex(v14, 0);
      if ([v19 indexForKey:&CharacterAtIndex length:1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++*(a1 + 80);
      }

      CFRelease(cf);
      v20 = CharacterAtIndex;
      if (!CharacterAtIndex)
      {
        break;
      }

      if (v22)
      {
        v24[0] = v22;
        v24[1] = CharacterAtIndex;
        if ([qword_1ED43FA48 indexForKey:v24 length:2] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++*(a1 + 88);
        }
      }

      v10 = v11 + 2;
      ++*(a1 + 48);
      [a4 appendByte1:v12 byte2:v18];
      v22 = v20;
LABEL_24:
      if (v10 >= a3)
      {
        goto LABEL_25;
      }
    }

    v22 = 0;
LABEL_23:
    [a4 appendPlaceholder];
    ++*(a1 + 96);
    v15 = *(a1 + 64) + 1;
    *(a1 + 64) = v15;
    if (v15 > v9)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_25:
  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t _EUCJP_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  *(a1 + 32) += a3;
  v32 = [a1 maxSkipBytes];
  if (a3)
  {
    v8 = 0;
    v9 = 0;
    LOBYTE(v31) = 0;
    contentsDeallocator = *MEMORY[0x1E695E498];
    v10 = a2 + 1;
    do
    {
      v11 = v8;
      while (1)
      {
        v12 = *(v10 + v11 - 1);
        if ((v12 - 32) >= 0x5Fu && (*(v10 + v11 - 1) > 0xDu || ((1 << v12) & 0x3700) == 0))
        {
          break;
        }

        ++v11;
        ++*(a1 + 56);
        [a4 appendByte:v12];
        if (v11 >= a3)
        {
          goto LABEL_49;
        }
      }

      v8 = v11 + 1;
      if (v11 + 1 >= a3)
      {
        goto LABEL_32;
      }

      v31 = *(v10 + v11);
      if ((v12 + 95) <= 0x5Du && (v31 + 95) <= 0x5Du)
      {
        bytes = *(v10 + v11 - 1);
        v34 = v31;
        v26 = qword_1ED43FA50;
        v14 = CFStringCreateWithBytesNoCopy(0, &bytes, 2, *(a1 + 24), 0, contentsDeallocator);
        if (!v14)
        {
          goto LABEL_46;
        }

        cf = v14;
        CharacterAtIndex = CFStringGetCharacterAtIndex(v14, 0);
        if ([v26 indexForKey:&CharacterAtIndex length:1] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++*(a1 + 80);
        }

        CFRelease(cf);
        v27 = CharacterAtIndex;
        if (!CharacterAtIndex)
        {
          goto LABEL_46;
        }

        if (v9)
        {
          CharacterAtIndex = v9;
          v37 = v27;
          if ([qword_1ED43FA58 indexForKey:&CharacterAtIndex length:2] != 0x7FFFFFFFFFFFFFFFLL)
          {
            ++*(a1 + 88);
          }
        }

        ++*(a1 + 48);
        v8 = v11 + 2;
        [a4 appendByte1:v12 byte2:v31];
        v15 = v27;
        goto LABEL_48;
      }

      if (*(v10 + v11 - 1) == 142 && (v31 + 95) <= 0x3Eu)
      {
        bytes = -114;
        v34 = v31;
        v28 = qword_1ED43FA50;
        v16 = CFStringCreateWithBytesNoCopy(0, &bytes, 2, *(a1 + 24), 0, contentsDeallocator);
        if (!v16)
        {
          goto LABEL_46;
        }

        v17 = v16;
        CharacterAtIndex = CFStringGetCharacterAtIndex(v16, 0);
        if ([v28 indexForKey:&CharacterAtIndex length:1] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++*(a1 + 80);
        }

        CFRelease(v17);
        v15 = CharacterAtIndex;
        if (!CharacterAtIndex)
        {
          goto LABEL_46;
        }

        if (v9)
        {
          CharacterAtIndex = v9;
          v37 = v15;
          if ([qword_1ED43FA58 indexForKey:&CharacterAtIndex length:2] != 0x7FFFFFFFFFFFFFFFLL)
          {
            ++*(a1 + 88);
          }
        }

        ++*(a1 + 48);
        v8 = v11 + 2;
        [a4 appendByte1:142 byte2:v31];
      }

      else
      {
LABEL_32:
        if (*(v10 + v11 - 1) != 143 || v11 + 2 >= a3)
        {
          goto LABEL_47;
        }

        if ((v31 + 95) > 0x5Du)
        {
          goto LABEL_47;
        }

        v19 = *(v10 + v11 + 1);
        if ((v19 + 95) > 0x5Du)
        {
          goto LABEL_47;
        }

        bytes = -113;
        v34 = v31;
        cfa = v19;
        v35 = v19;
        v29 = qword_1ED43FA50;
        v20 = CFStringCreateWithBytesNoCopy(0, &bytes, 3, *(a1 + 24), 0, contentsDeallocator);
        if (!v20)
        {
          goto LABEL_46;
        }

        v21 = v20;
        CharacterAtIndex = CFStringGetCharacterAtIndex(v20, 0);
        if ([v29 indexForKey:&CharacterAtIndex length:1] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++*(a1 + 80);
        }

        CFRelease(v21);
        v15 = CharacterAtIndex;
        if (!CharacterAtIndex)
        {
LABEL_46:
          v9 = 0;
LABEL_47:
          [a4 appendPlaceholder];
          ++*(a1 + 96);
          v22 = *(a1 + 64) + 1;
          *(a1 + 64) = v22;
          v15 = v9;
          if (v22 > v32)
          {
            break;
          }

          goto LABEL_48;
        }

        if (v9)
        {
          CharacterAtIndex = v9;
          v37 = v15;
          if ([qword_1ED43FA58 indexForKey:&CharacterAtIndex length:2] != 0x7FFFFFFFFFFFFFFFLL)
          {
            ++*(a1 + 88);
          }
        }

        ++*(a1 + 48);
        v8 = v11 + 3;
        [a4 appendByte1:143 byte2:v31 byte3:cfa];
      }

LABEL_48:
      v9 = v15;
    }

    while (v8 < a3);
  }

LABEL_49:
  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t _EUCKR_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v25 = *MEMORY[0x1E69E9840];
  *(a1 + 32) += a3;
  v8 = [a1 maxSkipBytes];
  if (a3)
  {
    v9 = v8;
    v10 = 0;
    v22 = 0;
    contentsDeallocator = *MEMORY[0x1E695E498];
    while (1)
    {
      v11 = v10;
      while (1)
      {
        v12 = *(a2 + v11);
        if ((v12 - 32) >= 0x5Fu && (*(a2 + v11) > 0xDu || ((1 << v12) & 0x3700) == 0))
        {
          break;
        }

        ++v11;
        ++*(a1 + 56);
        [a4 appendByte:v12];
        if (v11 >= a3)
        {
          goto LABEL_25;
        }
      }

      v10 = v11 + 1;
      if (v11 + 1 >= a3 || (v12 + 95) > 0x5Du || (*(a2 + v11 + 1) + 95) > 0x5Du)
      {
        goto LABEL_23;
      }

      v18 = *(a2 + v11 + 1);
      v19 = qword_1ED43FA60;
      v14 = CFStringCreateWithBytesNoCopy(0, (a2 + v11), 2, *(a1 + 24), 0, contentsDeallocator);
      if (!v14)
      {
        break;
      }

      cf = v14;
      CharacterAtIndex = CFStringGetCharacterAtIndex(v14, 0);
      if ([v19 indexForKey:&CharacterAtIndex length:1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++*(a1 + 80);
      }

      CFRelease(cf);
      v20 = CharacterAtIndex;
      if (!CharacterAtIndex)
      {
        break;
      }

      if (v22)
      {
        v24[0] = v22;
        v24[1] = CharacterAtIndex;
        if ([qword_1ED43FA68 indexForKey:v24 length:2] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++*(a1 + 88);
        }
      }

      v10 = v11 + 2;
      [a4 appendByte1:v12 byte2:v18];
      ++*(a1 + 48);
      v22 = v20;
LABEL_24:
      if (v10 >= a3)
      {
        goto LABEL_25;
      }
    }

    v22 = 0;
LABEL_23:
    [a4 appendPlaceholder];
    ++*(a1 + 96);
    v15 = *(a1 + 64) + 1;
    *(a1 + 64) = v15;
    if (v15 > v9)
    {
      goto LABEL_25;
    }

    goto LABEL_24;
  }

LABEL_25:
  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t _EUCTW_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v34 = *MEMORY[0x1E69E9840];
  *(a1 + 32) += a3;
  v8 = [a1 maxSkipBytes];
  if (a3)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    contentsDeallocator = *MEMORY[0x1E695E498];
    do
    {
      v10 += 4;
      while (1)
      {
        v12 = *(a2 + v10 - 4);
        if ((v12 - 32) >= 0x5Fu && (*(a2 + v10 - 4) > 0xDu || ((1 << v12) & 0x3700) == 0))
        {
          break;
        }

        ++*(a1 + 56);
        [a4 appendByte:v12];
        v14 = v10 - 3;
        ++v10;
        if (v14 >= a3)
        {
          goto LABEL_40;
        }
      }

      v15 = (a2 + v10 - 4);
      if (v10 - 3 < a3 && (v12 + 95) <= 0x5Du && (*(a2 + v10 - 3) + 95) <= 0x5Du)
      {
        v25 = *(a2 + v10 - 3);
        v28 = qword_1ED43FA40;
        v16 = CFStringCreateWithBytesNoCopy(0, v15, 2, *(a1 + 24), 0, contentsDeallocator);
        if (v16)
        {
          cf = v16;
          CharacterAtIndex = CFStringGetCharacterAtIndex(v16, 0);
          if ([v28 indexForKey:&CharacterAtIndex length:1] != 0x7FFFFFFFFFFFFFFFLL)
          {
            ++*(a1 + 80);
          }

          CFRelease(cf);
          v17 = CharacterAtIndex;
          if (CharacterAtIndex)
          {
            v30 = CharacterAtIndex;
            if (v11)
            {
              CharacterAtIndex = v11;
              v33 = v17;
              if ([qword_1ED43FA48 indexForKey:&CharacterAtIndex length:2] != 0x7FFFFFFFFFFFFFFFLL)
              {
                ++*(a1 + 88);
              }
            }

            v10 -= 2;
            ++*(a1 + 48);
            [a4 appendByte1:v12 byte2:{v25, cf}];
            goto LABEL_36;
          }
        }

        v11 = 0;
        v15 = (a2 + v10 - 4);
      }

      if (v10 - 1 >= a3)
      {
        goto LABEL_38;
      }

      if (v12 != 142)
      {
        goto LABEL_38;
      }

      v18 = a2 + v10;
      v19 = *(a2 + v10 - 3);
      if ((v19 + 95) > 0x4Fu || (*(v18 - 2) + 95) > 0x5Du || (*(v18 - 1) + 95) > 0x5Du)
      {
        goto LABEL_38;
      }

      v26 = *(v18 - 1);
      bytes = *(v18 - 2);
      v29 = qword_1ED43FA40;
      v20 = CFStringCreateWithBytesNoCopy(0, v15, 4, *(a1 + 24), 0, contentsDeallocator);
      if (!v20)
      {
        goto LABEL_37;
      }

      cf = v20;
      CharacterAtIndex = CFStringGetCharacterAtIndex(v20, 0);
      if ([v29 indexForKey:&CharacterAtIndex length:1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++*(a1 + 80);
      }

      CFRelease(cf);
      v21 = CharacterAtIndex;
      if (!CharacterAtIndex)
      {
LABEL_37:
        v11 = 0;
LABEL_38:
        [a4 appendPlaceholder];
        ++*(a1 + 96);
        v22 = *(a1 + 64) + 1;
        *(a1 + 64) = v22;
        v10 -= 3;
        if (v22 > v9)
        {
          break;
        }

        continue;
      }

      v30 = CharacterAtIndex;
      if (v11)
      {
        CharacterAtIndex = v11;
        v33 = v21;
        if ([qword_1ED43FA48 indexForKey:&CharacterAtIndex length:2] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++*(a1 + 88);
        }
      }

      ++*(a1 + 48);
      [a4 appendByte1:142 byte2:v19 byte3:bytes byte4:{v26, cf}];
LABEL_36:
      v11 = v30;
    }

    while (v10 < a3);
  }

LABEL_40:
  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t _GB18030_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v36 = *MEMORY[0x1E69E9840];
  *(a1 + 32) += a3;
  v8 = [a1 maxSkipBytes];
  if (a3)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    contentsDeallocator = *MEMORY[0x1E695E498];
    do
    {
      v10 += 4;
      while (1)
      {
        v12 = *(a2 + v10 - 4);
        if (v12 <= 31 && (*(a2 + v10 - 4) > 0xDu || ((1 << v12) & 0x3700) == 0))
        {
          break;
        }

        ++*(a1 + 56);
        [a4 appendByte:v12];
        v14 = v10 - 3;
        ++v10;
        if (v14 >= a3)
        {
          goto LABEL_41;
        }
      }

      v15 = (a2 + v10 - 4);
      if (v10 - 3 < a3 && (v12 + 127) <= 0x7Du)
      {
        v16 = *(a2 + v10 - 3);
        if (v16 < -1 || (v16 - 64) <= 0x3Eu)
        {
          v27 = *(a2 + v10 - 3);
          v30 = qword_1ED43FA40;
          v17 = CFStringCreateWithBytesNoCopy(0, v15, 2, *(a1 + 24), 0, contentsDeallocator);
          if (v17)
          {
            cf = v17;
            CharacterAtIndex = CFStringGetCharacterAtIndex(v17, 0);
            if ([v30 indexForKey:&CharacterAtIndex length:1] != 0x7FFFFFFFFFFFFFFFLL)
            {
              ++*(a1 + 80);
            }

            CFRelease(cf);
            v18 = CharacterAtIndex;
            if (CharacterAtIndex)
            {
              v32 = CharacterAtIndex;
              if (v11)
              {
                CharacterAtIndex = v11;
                v35 = v18;
                if ([qword_1ED43FA48 indexForKey:&CharacterAtIndex length:2] != 0x7FFFFFFFFFFFFFFFLL)
                {
                  ++*(a1 + 88);
                }
              }

              v10 -= 2;
              ++*(a1 + 48);
              [a4 appendByte1:v12 byte2:v27];
              goto LABEL_37;
            }
          }

          v11 = 0;
          v15 = (a2 + v10 - 4);
        }
      }

      if (v10 - 1 >= a3)
      {
        goto LABEL_39;
      }

      if ((v12 + 127) > 0x7Du)
      {
        goto LABEL_39;
      }

      v19 = a2 + v10;
      if ((*(a2 + v10 - 3) - 48) > 9u || (*(v19 - 2) + 127) > 0x7Du || (*(v19 - 1) - 48) > 9u)
      {
        goto LABEL_39;
      }

      cfa = *(v19 - 1);
      v28 = *(v19 - 2);
      bytes = *(a2 + v10 - 3);
      v31 = qword_1ED43FA40;
      v20 = CFStringCreateWithBytesNoCopy(0, v15, 4, *(a1 + 24), 0, contentsDeallocator);
      if (!v20)
      {
        goto LABEL_38;
      }

      v24 = v20;
      CharacterAtIndex = CFStringGetCharacterAtIndex(v20, 0);
      if ([v31 indexForKey:&CharacterAtIndex length:1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++*(a1 + 80);
      }

      CFRelease(v24);
      v21 = CharacterAtIndex;
      if (!CharacterAtIndex)
      {
LABEL_38:
        v11 = 0;
LABEL_39:
        [a4 appendPlaceholder];
        ++*(a1 + 96);
        v22 = *(a1 + 64) + 1;
        *(a1 + 64) = v22;
        v10 -= 3;
        if (v22 > v9)
        {
          break;
        }

        continue;
      }

      v32 = CharacterAtIndex;
      if (v11)
      {
        CharacterAtIndex = v11;
        v35 = v21;
        if ([qword_1ED43FA48 indexForKey:&CharacterAtIndex length:2] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++*(a1 + 88);
        }
      }

      ++*(a1 + 48);
      [a4 appendByte1:v12 byte2:bytes byte3:v28 byte4:cfa];
LABEL_37:
      v11 = v32;
    }

    while (v10 < a3);
  }

LABEL_41:
  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t _GBK_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  *(a1 + 32) += a3;
  v8 = [a1 maxSkipBytes];
  if (a3)
  {
    v9 = v8;
    v10 = 0;
    v29 = 0;
    contentsDeallocator = *MEMORY[0x1E695E498];
    while (1)
    {
      v11 = v10;
      while (1)
      {
        v12 = *(a2 + v11);
        if (v12 <= 31 && (*(a2 + v11) > 0xDu || ((1 << v12) & 0x3700) == 0))
        {
          break;
        }

        ++v11;
        ++*(a1 + 56);
        [a4 appendByte:v12];
        if (v11 >= a3)
        {
          goto LABEL_54;
        }
      }

      v10 = v11 + 1;
      if (v11 + 1 >= a3)
      {
        goto LABEL_36;
      }

      v14 = *(a2 + v11 + 1);
      if (((v12 + 95) > 8u || (v14 + 95) >= 0x5Eu) && ((v12 + 80) > 0x47u || (v14 + 95) >= 0x5Eu) && ((v12 + 127) > 0x1Fu || v14 == 127 || (v14 - 64) >= 0xBFu))
      {
        v15 = (v12 + 86);
        v16 = v14 == 127 || (v14 - 64) >= 0x61u;
        v17 = !v16;
        if (v15 > 0x54 || !v17)
        {
          v20 = v15 >= 6 || (v14 + 95) >= 0x5Eu;
          v21 = !v20;
          if (((v12 & 0xFE) != 168 || !v17) && !v21)
          {
            v22 = (v14 + 95) >= 0x5Eu || (v12 + 8) >= 7u;
            if (v22 && ((*(a2 + v11) + 95) >= 7u || !v17))
            {
              goto LABEL_36;
            }
          }
        }
      }

      v25 = *(a2 + v11 + 1);
      v26 = qword_1ED43FA40;
      v18 = CFStringCreateWithBytesNoCopy(0, (a2 + v11), 2, *(a1 + 24), 0, contentsDeallocator);
      if (!v18)
      {
        break;
      }

      cf = v18;
      CharacterAtIndex = CFStringGetCharacterAtIndex(v18, 0);
      if ([v26 indexForKey:&CharacterAtIndex length:1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++*(a1 + 80);
      }

      CFRelease(cf);
      v27 = CharacterAtIndex;
      if (!CharacterAtIndex)
      {
        break;
      }

      if (v29)
      {
        v31[0] = v29;
        v31[1] = CharacterAtIndex;
        if ([qword_1ED43FA48 indexForKey:v31 length:2] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++*(a1 + 88);
        }
      }

      ++*(a1 + 48);
      v10 = v11 + 2;
      [a4 appendByte1:v12 byte2:v25];
      v29 = v27;
LABEL_37:
      if (v10 >= a3)
      {
        goto LABEL_54;
      }
    }

    v29 = 0;
LABEL_36:
    [a4 appendPlaceholder];
    ++*(a1 + 96);
    v19 = *(a1 + 64) + 1;
    *(a1 + 64) = v19;
    if (v19 > v9)
    {
      goto LABEL_54;
    }

    goto LABEL_37;
  }

LABEL_54:
  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t _HZGB2312_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v31 = *MEMORY[0x1E69E9840];
  *(a1 + 32) += a3;
  *bytes = 31614;
  v29 = 32126;
  v8 = [a1 maxSkipBytes];
  v9 = 0;
  v25 = 0;
  v10 = 0;
  contentsDeallocator = *MEMORY[0x1E695E498];
  while (v10 < a3)
  {
    v11 = *(a2 + v10);
    if (v11 != 126 || v10 + 1 >= a3)
    {
      goto LABEL_15;
    }

    v13 = *(a2 + v10 + 1);
    if (v13 > 0x7C)
    {
      if (v13 == 126)
      {
LABEL_12:
        ++*(a1 + 48);
        v10 += 2;
        [a4 appendByte1:126 byte2:?];
      }

      else
      {
        if (v13 != 125)
        {
          goto LABEL_15;
        }

        v10 += 2;
        ++*(a1 + 120);
        [a4 appendByte1:126 byte2:?];
        v9 = 0;
      }
    }

    else
    {
      if (v13 == 10)
      {
        goto LABEL_12;
      }

      if (v13 == 123)
      {
        v10 += 2;
        ++*(a1 + 120);
        [a4 appendByte1:126 byte2:?];
        v9 = 1;
      }

      else
      {
LABEL_15:
        if (v9)
        {
          v14 = v10 + 1;
          if (v10 + 1 >= a3)
          {
            goto LABEL_32;
          }

          if ((v11 - 33) > 0x56u)
          {
            goto LABEL_32;
          }

          v15 = *(a2 + v10 + 1);
          if ((v15 - 33) > 0x5Du)
          {
            goto LABEL_32;
          }

          v27 = *(a2 + v10);
          v28 = v15;
          v22 = qword_1ED43FA40;
          v23 = v8;
          v16 = CFStringCreateWithBytesNoCopy(0, bytes, 6, *(a1 + 24), 0, contentsDeallocator);
          if (!v16)
          {
            goto LABEL_23;
          }

          v17 = v16;
          v30[0] = CFStringGetCharacterAtIndex(v16, 0);
          if ([v22 indexForKey:v30 length:1] != 0x7FFFFFFFFFFFFFFFLL)
          {
            ++*(a1 + 80);
          }

          CFRelease(v17);
          v18 = v30[0];
          if (!v30[0])
          {
LABEL_23:
            v25 = 0;
            v8 = v23;
            goto LABEL_32;
          }

          if (v25)
          {
            v30[0] = v25;
            v30[1] = v18;
            if ([qword_1ED43FA48 indexForKey:v30 length:2] != 0x7FFFFFFFFFFFFFFFLL)
            {
              ++*(a1 + 88);
            }
          }

          ++*(a1 + 48);
          v10 += 2;
          [a4 appendByte1:v11 byte2:{v15, v22}];
          v9 = 1;
          v25 = v18;
          v8 = v23;
        }

        else if ((v11 - 32) >= 0x5Fu && (*(a2 + v10) <= 0xDu ? (v19 = ((1 << v11) & 0x3700) == 0) : (v19 = 1), v19))
        {
          v14 = v10 + 1;
LABEL_32:
          [a4 appendPlaceholder];
          ++*(a1 + 96);
          v20 = *(a1 + 64) + 1;
          *(a1 + 64) = v20;
          v10 = v14;
          if (v20 > v8)
          {
            break;
          }
        }

        else
        {
          ++v10;
          ++*(a1 + 56);
          [a4 appendByte:v11];
          v9 = 0;
        }
      }
    }
  }

  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t _ISO2022CN_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v38 = *MEMORY[0x1E69E9840];
  *(a1 + 32) += a3;
  v34 = 14;
  v37 = 15;
  v8 = [a1 maxSkipBytes];
  if (a3)
  {
    v9 = v8;
    v10 = 0;
    v29 = 0;
    v11 = 0;
    contentsDeallocator = *MEMORY[0x1E695E498];
    v27 = v8;
    v28 = a4;
    while (1)
    {
      v12 = a2 + v10;
      v13 = *(a2 + v10);
      if (v13 == 15)
      {
        break;
      }

      if (v13 == 14)
      {
        ++v10;
        ++*(a1 + 120);
        [a4 appendByte:14];
        v11 = 1;
      }

      else
      {
        if ((v11 & 1) == 0)
        {
          if ((v13 - 32) >= 0xDFu && (v13 > 0xD || ((1 << v13) & 0x3700) == 0))
          {
            goto LABEL_25;
          }

          ++v10;
          ++*(a1 + 56);
          v20 = a4;
          v21 = v13;
          goto LABEL_39;
        }

        if (v10 + 1 >= a3)
        {
          goto LABEL_25;
        }

        v14 = *(a2 + v10 + 1);
        if ((v13 - 33) > 0xDDu || (v14 - 33) > 0xDDu)
        {
          if (v13 != 27 || (v14 & 0xFE) != 0x4E)
          {
            goto LABEL_25;
          }

          v10 += 2;
          ++*(a1 + 120);
          [a4 appendByte1:27 byte2:v14];
          v11 = 1;
        }

        else
        {
          v35 = *(a2 + v10);
          v36 = v14;
          v15 = qword_1ED43FA40;
          v16 = CFStringCreateWithBytesNoCopy(0, bytes, 8, *(a1 + 24), 0, contentsDeallocator);
          if (!v16)
          {
            v29 = 0;
            a4 = v28;
            goto LABEL_24;
          }

          v17 = v16;
          v30[0] = CFStringGetCharacterAtIndex(v16, 0);
          if ([v15 indexForKey:v30 length:1] != 0x7FFFFFFFFFFFFFFFLL)
          {
            ++*(a1 + 80);
          }

          CFRelease(v17);
          v18 = v30[0];
          a4 = v28;
          if (!v30[0])
          {
            v29 = 0;
LABEL_24:
            v9 = v27;
LABEL_25:
            if (v10 + 3 < a3 && v13 == 27 && *(v12 + 1) == 36 && (v22 = *(v12 + 2), (v22 - 41) <= 2u) && ((v23 = *(a2 + v10 + 3), (v23 - 71) < 7) || v23 == 69 || v23 == 65))
            {
              *bytes = 9243;
              v32 = v22;
              v33 = v23;
              v10 += 4;
              ++*(a1 + 120);
              [a4 appendByte1:27 byte2:36 byte3:contentsDeallocator byte4:?];
            }

            else
            {
              [a4 appendPlaceholder];
              ++*(a1 + 96);
              v24 = *(a1 + 64) + 1;
              *(a1 + 64) = v24;
              if (v24 > v9)
              {
                goto LABEL_45;
              }

              ++v10;
            }

            goto LABEL_35;
          }

          if (v29)
          {
            v30[0] = v29;
            v30[1] = v18;
            if ([qword_1ED43FA48 indexForKey:v30 length:2] != 0x7FFFFFFFFFFFFFFFLL)
            {
              ++*(a1 + 88);
            }
          }

          v10 += 2;
          ++*(a1 + 48);
          [v28 appendByte1:v13 byte2:{v14, contentsDeallocator}];
          v11 = 1;
          v29 = v18;
          v9 = v27;
        }
      }

LABEL_35:
      if (v10 >= a3)
      {
        goto LABEL_45;
      }
    }

    ++v10;
    ++*(a1 + 120);
    v20 = a4;
    v21 = 15;
LABEL_39:
    [v20 appendByte:{v21, contentsDeallocator}];
    v11 = 0;
    goto LABEL_35;
  }

LABEL_45:
  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t _ISO2022KR_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v32 = *MEMORY[0x1E69E9840];
  *(a1 + 32) += a3;
  *bytes = 1126769691;
  v8 = [a1 maxSkipBytes];
  v9 = 0;
  v26 = 0;
  v10 = 0;
  contentsDeallocator = *MEMORY[0x1E695E498];
  while (1)
  {
    v11 = v10;
LABEL_3:
    if (v11 >= a3)
    {
      goto LABEL_41;
    }

    v10 = v11 + 2;
    while (1)
    {
      v12 = *(a2 + v10 - 2);
      if (v12 != 27)
      {
        break;
      }

      if (v10 + 1 >= a3 || *(a2 + v10 - 1) != 36 || *(a2 + v10) != 41 || *(a2 + v10 + 1) != 67)
      {
        goto LABEL_14;
      }

      ++*(a1 + 120);
      v13 = v10 + 2;
      [a4 appendBytes:v10 + 2 + a2 count:4];
      v10 += 4;
      if (v13 >= a3)
      {
        goto LABEL_41;
      }
    }

    if (v12 == 14)
    {
      --v10;
      ++*(a1 + 120);
      v28 = 14;
      [a4 appendByte:14];
      v9 = 1;
      continue;
    }

    if (v12 == 15)
    {
      --v10;
      ++*(a1 + 120);
      v28 = 15;
      v20 = a4;
      v21 = 15;
      goto LABEL_36;
    }

LABEL_14:
    if ((v9 & 1) == 0)
    {
      if ((v12 - 32) >= 0x5F && (v12 > 0xD || ((1 << v12) & 0x3700) == 0))
      {
        v11 = v10 - 1;
        goto LABEL_31;
      }

      --v10;
      ++*(a1 + 56);
      v20 = a4;
      v21 = v12;
LABEL_36:
      [v20 appendByte:v21];
      v9 = 0;
      continue;
    }

    v11 = v10 - 1;
    if (v10 - 1 >= a3)
    {
      goto LABEL_31;
    }

    if ((v12 - 33) > 0x5D)
    {
      goto LABEL_31;
    }

    v14 = *(a2 + v10 - 1);
    if ((v14 - 33) > 0x5Du)
    {
      goto LABEL_31;
    }

    v29 = *(a2 + v10 - 2);
    v30 = v14;
    v23 = qword_1ED43FA60;
    v24 = v8;
    v15 = CFStringCreateWithBytesNoCopy(0, bytes, 7, *(a1 + 24), 0, contentsDeallocator);
    if (!v15)
    {
      break;
    }

    v16 = v15;
    v31[0] = CFStringGetCharacterAtIndex(v15, 0);
    if ([v23 indexForKey:v31 length:1] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++*(a1 + 80);
    }

    CFRelease(v16);
    v17 = v31[0];
    if (!v31[0])
    {
      break;
    }

    if (v26)
    {
      v31[0] = v26;
      v31[1] = v17;
      if ([qword_1ED43FA68 indexForKey:v31 length:2] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++*(a1 + 88);
      }
    }

    ++*(a1 + 48);
    [a4 appendByte1:v12 byte2:{v14, v23}];
    v9 = 1;
    v26 = v17;
    v8 = v24;
  }

  v26 = 0;
  v8 = v24;
LABEL_31:
  [a4 appendPlaceholder];
  ++*(a1 + 96);
  v19 = *(a1 + 64) + 1;
  *(a1 + 64) = v19;
  if (v19 <= v8)
  {
    goto LABEL_3;
  }

LABEL_41:
  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t _ISOLATIN1_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v17 = [a1 maxSkipBytes];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0)
      {
        if ((isolatin1FrqChars[(v10 >> 3) & 0xF] >> (v12 & 7)))
        {
          v13 = 0;
          ++a1[10];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = v12 != 127;
        if ((v12 - 32) < 0x5F)
        {
          break;
        }
      }

      v14 = v12 > 0xD || ((1 << v12) & 0x3700) == 0;
      if (!v14 || v12 >= 0xA0)
      {
        break;
      }

      [a4 appendPlaceholder];
      v15 = a1[8] + 1;
      a1[8] = v15;
      if (v15 > v17)
      {
        goto LABEL_26;
      }

      v8 = 0;
      LOBYTE(v12) = 0;
LABEL_21:
      v9 = v8;
      v8 = v12;
      if (!--v5)
      {
        goto LABEL_26;
      }
    }

    if (v13)
    {
      ++a1[17];
      if (v8 <= 0x7Eu && v9 < 0x7Fu)
      {
LABEL_20:
        [a4 appendByte:v12];
        goto LABEL_21;
      }
    }

    else
    {
      ++a1[18];
    }

    v18[0] = v9;
    v18[1] = v8;
    v18[2] = v12;
    if ([qword_1ED43FA78 indexForBytes:v18 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_20;
  }

LABEL_26:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _ISOLATIN10_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v17 = [a1 maxSkipBytes];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0)
      {
        if ((isolatin10FrqChars[(v10 >> 3) & 0xF] >> (v12 & 7)))
        {
          v13 = 0;
          ++a1[10];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = v12 != 127;
        if ((v12 - 32) < 0x5F)
        {
          break;
        }
      }

      v14 = v12 > 0xD || ((1 << v12) & 0x3700) == 0;
      if (!v14 || v12 >= 0xA0)
      {
        break;
      }

      [a4 appendPlaceholder];
      v15 = a1[8] + 1;
      a1[8] = v15;
      if (v15 > v17)
      {
        goto LABEL_26;
      }

      v8 = 0;
      LOBYTE(v12) = 0;
LABEL_21:
      v9 = v8;
      v8 = v12;
      if (!--v5)
      {
        goto LABEL_26;
      }
    }

    if (v13)
    {
      ++a1[17];
      if (v8 <= 0x7Eu && v9 < 0x7Fu)
      {
LABEL_20:
        [a4 appendByte:v12];
        goto LABEL_21;
      }
    }

    else
    {
      ++a1[18];
    }

    v18[0] = v9;
    v18[1] = v8;
    v18[2] = v12;
    if ([qword_1ED43FA80 indexForBytes:v18 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_20;
  }

LABEL_26:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _ISOLATIN2_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v18 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v8 = [a1 maxSkipBytes];
  if (v5)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v13 = *a2++;
      v12 = v13;
      v14 = v13;
      if (v13 < 0 && ((isolatin2FrqChars[(v12 >> 3) & 0xF] >> (v14 & 7)) & 1) != 0)
      {
        ++a1[10];
      }

      if ((vmaxv_u16(vceq_s16(vdup_n_s16(v14), 0x9000C000A000DLL)) & 1) == 0 && v11 != 8 && v14 <= 0x9F && (v14 - 32) > 0x5Eu)
      {
        [a4 appendPlaceholder];
        v15 = a1[8] + 1;
        a1[8] = v15;
        if (v15 > v9)
        {
          goto LABEL_21;
        }

        v10 = 0;
        LOBYTE(v14) = 0;
        goto LABEL_20;
      }

      if (v14 >= 0x7F)
      {
        break;
      }

      ++a1[17];
      if (v10 > 0x7Eu || v11 >= 0x7Fu)
      {
        goto LABEL_17;
      }

LABEL_19:
      [a4 appendByte:v14];
LABEL_20:
      v11 = v10;
      v10 = v14;
      if (!--v5)
      {
        goto LABEL_21;
      }
    }

    ++a1[18];
LABEL_17:
    v17[0] = v11;
    v17[1] = v10;
    v17[2] = v14;
    if ([qword_1ED43FA88 indexForBytes:v17 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_19;
  }

LABEL_21:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _ISOLATIN3_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v21 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v8 = [a1 maxSkipBytes];
  if (v5)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    do
    {
      v13 = *a2++;
      v12 = v13;
      v14 = v13;
      if (v13 < 0)
      {
        if ((isolatin3FrqChars[(v12 >> 3) & 0xF] >> (v14 & 7)))
        {
          v15 = 0;
          ++a1[10];
        }

        else
        {
          v15 = 0;
        }
      }

      else
      {
        v15 = v14 != 127;
        if ((v14 - 32) < 0x5F)
        {
          goto LABEL_13;
        }
      }

      v16 = v14 > 0xD || ((1 << v14) & 0x3700) == 0;
      if (v16 && (v14 < 0xA0 || v14 == 165))
      {
LABEL_18:
        [a4 appendPlaceholder];
        v18 = a1[8] + 1;
        a1[8] = v18;
        if (v18 > v9)
        {
          break;
        }

        v10 = 0;
        LOBYTE(v14) = 0;
        goto LABEL_20;
      }

LABEL_13:
      if ((v14 & 0xFFFFFFEF) == 0xAE)
      {
        goto LABEL_18;
      }

      if ((v14 - 195) <= 0x2D && ((1 << (v14 + 61)) & 0x200100002001) != 0)
      {
        goto LABEL_18;
      }

      if (!v15)
      {
        ++a1[18];
LABEL_30:
        v20[0] = v11;
        v20[1] = v10;
        v20[2] = v14;
        if ([qword_1ED43FA90 indexForBytes:v20 length:3] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++a1[16];
        }

        goto LABEL_32;
      }

      ++a1[17];
      if (v10 > 0x7Eu || v11 >= 0x7Fu)
      {
        goto LABEL_30;
      }

LABEL_32:
      [a4 appendByte:v14];
LABEL_20:
      v11 = v10;
      v10 = v14;
      --v5;
    }

    while (v5);
  }

  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _ISOLATIN4_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v17 = [a1 maxSkipBytes];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0)
      {
        if ((isolatin4FrqChars[(v10 >> 3) & 0xF] >> (v12 & 7)))
        {
          v13 = 0;
          ++a1[10];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = v12 != 127;
        if ((v12 - 32) < 0x5F)
        {
          break;
        }
      }

      v14 = v12 > 0xD || ((1 << v12) & 0x3700) == 0;
      if (!v14 || v12 >= 0xA0)
      {
        break;
      }

      [a4 appendPlaceholder];
      v15 = a1[8] + 1;
      a1[8] = v15;
      if (v15 > v17)
      {
        goto LABEL_26;
      }

      v8 = 0;
      LOBYTE(v12) = 0;
LABEL_21:
      v9 = v8;
      v8 = v12;
      if (!--v5)
      {
        goto LABEL_26;
      }
    }

    if (v13)
    {
      ++a1[17];
      if (v8 <= 0x7Eu && v9 < 0x7Fu)
      {
LABEL_20:
        [a4 appendByte:v12];
        goto LABEL_21;
      }
    }

    else
    {
      ++a1[18];
    }

    v18[0] = v9;
    v18[1] = v8;
    v18[2] = v12;
    if ([qword_1ED43FA98 indexForBytes:v18 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_20;
  }

LABEL_26:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _ISOLATIN5_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v17 = [a1 maxSkipBytes];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0)
      {
        if ((isolatin5FrqChars[(v10 >> 3) & 0xF] >> (v12 & 7)))
        {
          v13 = 0;
          ++a1[10];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = v12 != 127;
        if ((v12 - 32) < 0x5F)
        {
          break;
        }
      }

      v14 = v12 > 0xD || ((1 << v12) & 0x3700) == 0;
      if (!v14 || v12 >= 0xA0)
      {
        break;
      }

      [a4 appendPlaceholder];
      v15 = a1[8] + 1;
      a1[8] = v15;
      if (v15 > v17)
      {
        goto LABEL_26;
      }

      v8 = 0;
      LOBYTE(v12) = 0;
LABEL_21:
      v9 = v8;
      v8 = v12;
      if (!--v5)
      {
        goto LABEL_26;
      }
    }

    if (v13)
    {
      ++a1[17];
      if (v8 <= 0x7Eu && v9 < 0x7Fu)
      {
LABEL_20:
        [a4 appendByte:v12];
        goto LABEL_21;
      }
    }

    else
    {
      ++a1[18];
    }

    v18[0] = v9;
    v18[1] = v8;
    v18[2] = v12;
    if ([qword_1ED43FAA0 indexForBytes:v18 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_20;
  }

LABEL_26:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _ISOLATIN6_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v17 = [a1 maxSkipBytes];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0)
      {
        if ((isolatin6FrqChars[(v10 >> 3) & 0xF] >> (v12 & 7)))
        {
          v13 = 0;
          ++a1[10];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = v12 != 127;
        if ((v12 - 32) < 0x5F)
        {
          break;
        }
      }

      v14 = v12 > 0xD || ((1 << v12) & 0x3700) == 0;
      if (!v14 || v12 >= 0xA0)
      {
        break;
      }

      [a4 appendPlaceholder];
      v15 = a1[8] + 1;
      a1[8] = v15;
      if (v15 > v17)
      {
        goto LABEL_26;
      }

      v8 = 0;
      LOBYTE(v12) = 0;
LABEL_21:
      v9 = v8;
      v8 = v12;
      if (!--v5)
      {
        goto LABEL_26;
      }
    }

    if (v13)
    {
      ++a1[17];
      if (v8 <= 0x7Eu && v9 < 0x7Fu)
      {
LABEL_20:
        [a4 appendByte:v12];
        goto LABEL_21;
      }
    }

    else
    {
      ++a1[18];
    }

    v18[0] = v9;
    v18[1] = v8;
    v18[2] = v12;
    if ([qword_1ED43FAA8 indexForBytes:v18 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_20;
  }

LABEL_26:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _ISOLATIN7_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v17 = [a1 maxSkipBytes];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0)
      {
        if ((isolatin7FrqChars[(v10 >> 3) & 0xF] >> (v12 & 7)))
        {
          v13 = 0;
          ++a1[10];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = v12 != 127;
        if ((v12 - 32) < 0x5F)
        {
          break;
        }
      }

      v14 = v12 > 0xD || ((1 << v12) & 0x3700) == 0;
      if (!v14 || v12 >= 0xA0)
      {
        break;
      }

      [a4 appendPlaceholder];
      v15 = a1[8] + 1;
      a1[8] = v15;
      if (v15 > v17)
      {
        goto LABEL_26;
      }

      v8 = 0;
      LOBYTE(v12) = 0;
LABEL_21:
      v9 = v8;
      v8 = v12;
      if (!--v5)
      {
        goto LABEL_26;
      }
    }

    if (v13)
    {
      ++a1[17];
      if (v8 <= 0x7Eu && v9 < 0x7Fu)
      {
LABEL_20:
        [a4 appendByte:v12];
        goto LABEL_21;
      }
    }

    else
    {
      ++a1[18];
    }

    v18[0] = v9;
    v18[1] = v8;
    v18[2] = v12;
    if ([qword_1ED43FAB0 indexForBytes:v18 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_20;
  }

LABEL_26:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _ISOLATIN8_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v17 = [a1 maxSkipBytes];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0)
      {
        if ((isolatin8FrqChars[(v10 >> 3) & 0xF] >> (v12 & 7)))
        {
          v13 = 0;
          ++a1[10];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = v12 != 127;
        if ((v12 - 32) < 0x5F)
        {
          break;
        }
      }

      v14 = v12 > 0xD || ((1 << v12) & 0x3700) == 0;
      if (!v14 || v12 >= 0xA0)
      {
        break;
      }

      [a4 appendPlaceholder];
      v15 = a1[8] + 1;
      a1[8] = v15;
      if (v15 > v17)
      {
        goto LABEL_26;
      }

      v8 = 0;
      LOBYTE(v12) = 0;
LABEL_21:
      v9 = v8;
      v8 = v12;
      if (!--v5)
      {
        goto LABEL_26;
      }
    }

    if (v13)
    {
      ++a1[17];
      if (v8 <= 0x7Eu && v9 < 0x7Fu)
      {
LABEL_20:
        [a4 appendByte:v12];
        goto LABEL_21;
      }
    }

    else
    {
      ++a1[18];
    }

    v18[0] = v9;
    v18[1] = v8;
    v18[2] = v12;
    if ([qword_1ED43FAB8 indexForBytes:v18 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_20;
  }

LABEL_26:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _ISOLATIN9_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v17 = [a1 maxSkipBytes];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0)
      {
        if ((isolatin9FrqChars[(v10 >> 3) & 0xF] >> (v12 & 7)))
        {
          v13 = 0;
          ++a1[10];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = v12 != 127;
        if ((v12 - 32) < 0x5F)
        {
          break;
        }
      }

      v14 = v12 > 0xD || ((1 << v12) & 0x3700) == 0;
      if (!v14 || v12 >= 0xA0)
      {
        break;
      }

      [a4 appendPlaceholder];
      v15 = a1[8] + 1;
      a1[8] = v15;
      if (v15 > v17)
      {
        goto LABEL_26;
      }

      v8 = 0;
      LOBYTE(v12) = 0;
LABEL_21:
      v9 = v8;
      v8 = v12;
      if (!--v5)
      {
        goto LABEL_26;
      }
    }

    if (v13)
    {
      ++a1[17];
      if (v8 <= 0x7Eu && v9 < 0x7Fu)
      {
LABEL_20:
        [a4 appendByte:v12];
        goto LABEL_21;
      }
    }

    else
    {
      ++a1[18];
    }

    v18[0] = v9;
    v18[1] = v8;
    v18[2] = v12;
    if ([qword_1ED43FAC0 indexForBytes:v18 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_20;
  }

LABEL_26:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _ISO88596_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v21 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v19 = [a1 maxSkipBytes];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0)
      {
        if ((iso8859_6FrqChars[(v10 >> 3) & 0xF] >> (v12 & 7)))
        {
          v13 = 0;
          ++a1[10];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = v12 != 127;
        if ((v12 - 32) < 0x5F)
        {
          break;
        }
      }

      v14 = v12 > 0xD || ((1 << v12) & 0x3700) == 0;
      v15 = v14 && (v12 + 63) >= 0x1Au;
      v16 = v15 && (v12 + 32) >= 0x13u;
      if (!v16 || (v12 - 160) <= 0x1F && ((1 << (v12 + 96)) & 0x88003011) != 0)
      {
        break;
      }

      [a4 appendPlaceholder];
      v17 = a1[8] + 1;
      a1[8] = v17;
      if (v17 > v19)
      {
        goto LABEL_33;
      }

      v8 = 0;
      LOBYTE(v12) = 0;
LABEL_27:
      v9 = v8;
      v8 = v12;
      if (!--v5)
      {
        goto LABEL_33;
      }
    }

    if (v13)
    {
      ++a1[17];
      if (v8 <= 0x7Eu && v9 < 0x7Fu)
      {
LABEL_26:
        [a4 appendByte:v12];
        goto LABEL_27;
      }
    }

    else
    {
      ++a1[18];
    }

    v20[0] = v9;
    v20[1] = v8;
    v20[2] = v12;
    if ([qword_1ED43FAC8 indexForBytes:v20 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_26;
  }

LABEL_33:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _ISO88595_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v17 = [a1 maxSkipBytes];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0)
      {
        if ((iso8859_5FrqChars[(v10 >> 3) & 0xF] >> (v12 & 7)))
        {
          v13 = 0;
          ++a1[10];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = v12 != 127;
        if ((v12 - 32) < 0x5F)
        {
          break;
        }
      }

      v14 = v12 > 0xD || ((1 << v12) & 0x3700) == 0;
      if (!v14 || v12 >= 0xA0)
      {
        break;
      }

      [a4 appendPlaceholder];
      v15 = a1[8] + 1;
      a1[8] = v15;
      if (v15 > v17)
      {
        goto LABEL_26;
      }

      v8 = 0;
      LOBYTE(v12) = 0;
LABEL_21:
      v9 = v8;
      v8 = v12;
      if (!--v5)
      {
        goto LABEL_26;
      }
    }

    if (v13)
    {
      ++a1[17];
      if (v8 <= 0x7Eu && v9 < 0x7Fu)
      {
LABEL_20:
        [a4 appendByte:v12];
        goto LABEL_21;
      }
    }

    else
    {
      ++a1[18];
    }

    v18[0] = v9;
    v18[1] = v8;
    v18[2] = v12;
    if ([qword_1ED43FAD0 indexForBytes:v18 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_20;
  }

LABEL_26:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _ISO88597_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v17 = [a1 maxSkipBytes];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0)
      {
        if ((windows1253[(v10 >> 3) & 0xF] >> (v12 & 7)))
        {
          v13 = 0;
          ++a1[10];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = v12 != 127;
        if ((v12 - 32) < 0x5F)
        {
          break;
        }
      }

      v14 = v12 > 0xD || ((1 << v12) & 0x3700) == 0;
      if (!v14 || (v12 + 1) >= 0xA1u && v12 != 174 && v12 != 210)
      {
        break;
      }

      [a4 appendPlaceholder];
      v15 = a1[8] + 1;
      a1[8] = v15;
      if (v15 > v17)
      {
        goto LABEL_28;
      }

      v8 = 0;
      LOBYTE(v12) = 0;
LABEL_21:
      v9 = v8;
      v8 = v12;
      if (!--v5)
      {
        goto LABEL_28;
      }
    }

    if (v13)
    {
      ++a1[17];
      if (v8 <= 0x7Eu && v9 < 0x7Fu)
      {
LABEL_20:
        [a4 appendByte:v12];
        goto LABEL_21;
      }
    }

    else
    {
      ++a1[18];
    }

    v18[0] = v9;
    v18[1] = v8;
    v18[2] = v12;
    if ([qword_1ED43FAD8 indexForBytes:v18 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_20;
  }

LABEL_28:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _ISO88598_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v19 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v17 = [a1 maxSkipBytes];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0)
      {
        if ((iso8859_8FrqChars[(v10 >> 3) & 0xF] >> (v12 & 7)))
        {
          v13 = 0;
          ++a1[10];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = v12 != 127;
        if ((v12 - 32) < 0x5F)
        {
          break;
        }
      }

      if (v12 <= 0xD && ((1 << v12) & 0x3700) != 0)
      {
        break;
      }

      if ((v12 + 96) >= 0x1Fu)
      {
        if ((v12 + 33) <= 0x1Fu && (v12 + 3) < 0xFEu)
        {
          break;
        }
      }

      else if (v12 != 161)
      {
        break;
      }

      [a4 appendPlaceholder];
      v15 = a1[8] + 1;
      a1[8] = v15;
      if (v15 > v17)
      {
        goto LABEL_30;
      }

      v8 = 0;
      LOBYTE(v12) = 0;
LABEL_21:
      v9 = v8;
      v8 = v12;
      if (!--v5)
      {
        goto LABEL_30;
      }
    }

    if (v13)
    {
      ++a1[17];
      if (v8 <= 0x7Eu && v9 < 0x7Fu)
      {
LABEL_20:
        [a4 appendByte:v12];
        goto LABEL_21;
      }
    }

    else
    {
      ++a1[18];
    }

    v18[0] = v9;
    v18[1] = v8;
    v18[2] = v12;
    if ([qword_1ED43FAE0 indexForBytes:v18 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_20;
  }

LABEL_30:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _ISO885911_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v20 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v18 = [a1 maxSkipBytes];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0)
      {
        if ((iso8859_11Frqchars[(v10 >> 3) & 0xF] >> (v12 & 7)))
        {
          v13 = 0;
          ++a1[10];
        }

        else
        {
          v13 = 0;
        }
      }

      else
      {
        v13 = v12 != 127;
        if ((v12 - 32) < 0x5F)
        {
          break;
        }
      }

      if (v12 <= 0xD && ((1 << v12) & 0x3700) != 0)
      {
        break;
      }

      if ((v12 + 96) < 0x3Bu || (v12 + 33) <= 0x1Cu)
      {
        break;
      }

      [a4 appendPlaceholder];
      v16 = a1[8] + 1;
      a1[8] = v16;
      if (v16 > v18)
      {
        goto LABEL_30;
      }

      v8 = 0;
      LOBYTE(v12) = 0;
LABEL_21:
      v9 = v8;
      v8 = v12;
      if (!--v5)
      {
        goto LABEL_30;
      }
    }

    if (v13)
    {
      ++a1[17];
      if (v8 <= 0x7Eu && v9 < 0x7Fu)
      {
LABEL_20:
        [a4 appendByte:v12];
        goto LABEL_21;
      }
    }

    else
    {
      ++a1[18];
    }

    v19[0] = v9;
    v19[1] = v8;
    v19[2] = v12;
    if ([qword_1ED43FAE8 indexForBytes:v19 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_20;
  }

LABEL_30:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _SHIFTJISX0213_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v26 = *MEMORY[0x1E69E9840];
  *(a1 + 32) += a3;
  v8 = [a1 maxSkipBytes];
  if (a3)
  {
    v9 = v8;
    v10 = 0;
    v23 = 0;
    contentsDeallocator = *MEMORY[0x1E695E498];
    while (1)
    {
      v11 = v10;
      while (1)
      {
        v12 = *(a2 + v11);
        if ((v12 - 32) >= 0x5Fu && (v12 + 95) >= 0x3Fu && (*(a2 + v11) > 0xDu || ((1 << v12) & 0x3700) == 0))
        {
          break;
        }

        ++v11;
        ++*(a1 + 56);
        [a4 appendByte:v12];
        if (v11 >= a3)
        {
          goto LABEL_28;
        }
      }

      v10 = v11 + 1;
      if (v11 + 1 >= a3)
      {
        goto LABEL_26;
      }

      v14 = *(a2 + v11 + 1);
      if ((v12 + 127) >= 0x1Fu && (v12 & 0xF0) != 0xE0)
      {
        goto LABEL_26;
      }

      if (v14 >= -3 && (v14 - 64) > 0x3Eu)
      {
        goto LABEL_26;
      }

      bytes[0] = *(a2 + v11);
      v19 = v14;
      bytes[1] = v14;
      v20 = qword_1ED43FA50;
      v15 = CFStringCreateWithBytesNoCopy(0, bytes, 2, *(a1 + 24), 0, contentsDeallocator);
      if (!v15)
      {
        break;
      }

      cf = v15;
      v25[0] = CFStringGetCharacterAtIndex(v15, 0);
      if ([v20 indexForKey:v25 length:1] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++*(a1 + 80);
      }

      CFRelease(cf);
      v21 = v25[0];
      if (!v25[0])
      {
        break;
      }

      if (v23)
      {
        v25[0] = v23;
        v25[1] = v21;
        if ([qword_1ED43FA58 indexForKey:v25 length:2] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++*(a1 + 88);
        }
      }

      ++*(a1 + 48);
      v10 = v11 + 2;
      [a4 appendByte1:v12 byte2:v19];
      v23 = v21;
LABEL_27:
      if (v10 >= a3)
      {
        goto LABEL_28;
      }
    }

    v23 = 0;
LABEL_26:
    [a4 appendPlaceholder];
    ++*(a1 + 96);
    v16 = *(a1 + 64) + 1;
    *(a1 + 64) = v16;
    if (v16 > v9)
    {
      goto LABEL_28;
    }

    goto LABEL_27;
  }

LABEL_28:
  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

unint64_t _UTF16_recognize(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  *(a1 + 32) += a3;
  if (a3 < 2)
  {
    return 0;
  }

  if (*a2 == -2)
  {
    v5 = 1;
    *(a1 + 161) = 1;
  }

  else
  {
    v5 = *(a1 + 161);
  }

  return recognizeUTF16(a2, a3, v5 & 1, (a1 + 40), (a1 + 48), (a1 + 64), (a1 + 96), (a1 + 162), a4, (a1 + 72));
}

unint64_t _UTF16BE_recognize(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  *(a1 + 32) += a3;
  if (a3 < 2)
  {
    return 0;
  }

  *(a1 + 161) = 1;
  return recognizeUTF16(a2, a3, 1, (a1 + 40), (a1 + 48), (a1 + 64), (a1 + 96), (a1 + 162), a4, (a1 + 72));
}

unint64_t _UTF16LE_recognize(uint64_t a1, unsigned __int16 *a2, unint64_t a3, void *a4)
{
  *(a1 + 32) += a3;
  if (a3 < 2)
  {
    return 0;
  }

  *(a1 + 161) = 0;
  return recognizeUTF16(a2, a3, 0, (a1 + 40), (a1 + 48), (a1 + 64), (a1 + 96), (a1 + 162), a4, (a1 + 72));
}

unint64_t _UTF32_recognize(uint64_t a1, _DWORD *a2, unint64_t a3, void *a4)
{
  *(a1 + 32) += a3;
  if (a3 < 4)
  {
    return 0;
  }

  *(a1 + 161) = *a2 == 65534;
  [a4 appendUTF32Char:65279];
  v10 = *(a1 + 161);

  return recognizeUTF32(a2, a3, v10, (a1 + 40), (a1 + 64), (a1 + 96), (a1 + 162), a4);
}

unint64_t _UTF32BE_recognize(uint64_t a1, _DWORD *a2, unint64_t a3, void *a4)
{
  *(a1 + 32) += a3;
  if (a3 < 4)
  {
    return 0;
  }

  *(a1 + 161) = 1;
  return recognizeUTF32(a2, a3, 1, (a1 + 40), (a1 + 64), (a1 + 96), (a1 + 162), a4);
}

unint64_t _UTF32LE_recognize(uint64_t a1, _DWORD *a2, unint64_t a3, void *a4)
{
  *(a1 + 32) += a3;
  if (a3 < 4)
  {
    return 0;
  }

  *(a1 + 161) = 0;
  return recognizeUTF32(a2, a3, 0, (a1 + 40), (a1 + 64), (a1 + 96), (a1 + 162), a4);
}

uint64_t _UTF7_recognize(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  *(a1 + 32) += a3;
  v8 = [a1 maxSkipBytes];
  if (a3)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v12 = *(a2 + v10);
      v13 = v10 + 1;
      if (v12 == 43 && v13 < a3)
      {
        v18 = *(a2 + v13);
        if (v18 == 45)
        {
          goto LABEL_34;
        }

        v19 = (v18 - 48) >= 0xA && (v18 & 0xFFFFFFDF) - 65 >= 0x1A;
        if (!v19 || (v18 | 4) == 0x2F)
        {
          break;
        }
      }

      if (v11)
      {
        if (((v12 & 0xDF) - 65) < 0x1Au || (v12 != 43 ? (v15 = (v12 - 47) > 0xAu) : (v15 = 0), !v15))
        {
          v13 = v10 + 1;
          ++*(a1 + 112);
          v11 = 1;
          goto LABEL_47;
        }

        v22 = (v12 - 32) < 0x5E || (v12 - 9) < 2 || v12 == 13;
        if (v12 != 45 && v22)
        {
          goto LABEL_46;
        }

        if (v12 == 45)
        {
          v13 = v10 + 1;
          if (v10 + 1 < a3 && *(a2 + v13) == 45)
          {
            v13 = v10 + 2;
            *(a1 + 112) += 2;
            [a4 appendByte:45];
            v11 = 0;
            v12 = *(a2 + v10 + 3);
          }

          else
          {
            ++*(a1 + 112);
            v11 = 1;
            v12 = 45;
          }

          goto LABEL_47;
        }
      }

      else
      {
        v16 = (v12 - 32) >= 0x5Eu || v12 == 92;
        if (!v16 || (v12 <= 0xD ? (v17 = ((1 << v12) & 0x2600) == 0) : (v17 = 1), !v17))
        {
LABEL_46:
          v11 = 0;
          v13 = v10 + 1;
          ++*(a1 + 104);
          goto LABEL_47;
        }
      }

      [a4 appendPlaceholder];
      v23 = *(a1 + 64) + 1;
      *(a1 + 64) = v23;
      if (v23 > v9)
      {
        goto LABEL_57;
      }

      v13 = v10 + 1;
LABEL_48:
      v10 = v13;
      if (v13 >= a3)
      {
        goto LABEL_57;
      }
    }

    v11 = 1;
    *(a1 + 160) = 1;
LABEL_34:
    v12 = 43;
LABEL_47:
    [a4 appendByte:v12];
    goto LABEL_48;
  }

LABEL_57:
  *(a1 + 96) = *(a1 + 64);
  result = *(a1 + 112) + *(a1 + 104);
  *(a1 + 40) = result;
  return result;
}

uint64_t _UTF8_recognize(uint64_t a1, unsigned __int8 *a2, unint64_t a3, void *a4)
{
  *(a1 + 32) += a3;
  if (a3 < 3)
  {
    *(a1 + 162) = 0;
    v8 = [a1 maxSkipBytes];
    if (!a3)
    {
      goto LABEL_60;
    }
  }

  else
  {
    v7 = *a2 == 239 && a2[1] == 187 && a2[2] == 191;
    *(a1 + 162) = v7;
    v8 = [a1 maxSkipBytes];
  }

  v9 = v8;
  v10 = 0;
  v11 = 0;
  LOBYTE(v12) = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = *(a1 + 64);
  while (v16 <= v9)
  {
    v17 = v13;
    v13 = v12;
    v12 = a2[v14];
    if ((v11 - 1) >= 4)
    {
      if (v11 == 5)
      {
        v11 = 0;
        if (v12 < 0 && (v12 + 64) >= 0x37u)
        {
          if (v14 + 1 >= a3 || a2[v14 + 1] < 0 && a2[v14 + 1] - 192 > 0x36)
          {
            *(a1 + 64) = v16 + 1;
            v23 = 5;
          }

          else
          {
            v23 = 0;
            *(a1 + 64) = v16 + 1;
          }

          goto LABEL_49;
        }
      }

      else
      {
        if (v16 != v15)
        {
          [a4 appendPlaceholder];
          ++*(a1 + 96);
          v16 = *(a1 + 64);
        }

        if ((v12 & 0x80000000) == 0)
        {
          ++*(a1 + 56);
          [a4 appendByte:v12];
          v10 = 0;
          v23 = 0;
          goto LABEL_48;
        }

        if ((v12 + 64) <= 0x36)
        {
          v10 = expectMap[v12 >> 4];
          v23 = 1;
LABEL_48:
          v15 = v16;
LABEL_49:
          v16 = *(a1 + 64);
          if (v16 - v15 == 4)
          {
            v11 = 0;
          }

          else
          {
            v11 = v23;
          }

          ++v14;
          goto LABEL_53;
        }

        v15 = v16;
        v11 = 5;
        v10 = 5;
      }
    }

    else
    {
      if (v12 <= -65)
      {
        v18 = 4;
        if (v11 != 3)
        {
          v18 = 0;
        }

        v19 = 2;
        if (v11 != 1)
        {
          v19 = 3;
        }

        v20 = v11 <= 2;
        v21 = v11 <= 2 && v11 != 1;
        v22 = v11 > 2 && v11 != 3;
        if (v20)
        {
          v23 = v19;
        }

        else
        {
          v23 = v18;
        }

        if (v10 == 3 && v21 && v17 == 237 && (v13 & 0xE0) == 0xA0)
        {
          v23 = 0;
          *(a1 + 64) = v16 + 3;
          v10 = 3;
        }

        else if (((v10 != v23) & ~v22) == 0)
        {
          ++*(a1 + 48);
          [a4 appendBytes:&a2[v14 - v23 + 1] count:?];
          v23 = 0;
        }

        goto LABEL_49;
      }

      v16 += v11;
      *(a1 + 64) = v16;
      v11 = 5;
    }

LABEL_53:
    if (v14 >= a3)
    {
      break;
    }
  }

  if (v11)
  {
    v24 = v16 + v11;
    *(a1 + 64) = v24;
    if (v24 != v15)
    {
      [a4 appendPlaceholder];
      ++*(a1 + 96);
    }
  }

LABEL_60:
  result = *(a1 + 48) + *(a1 + 56);
  *(a1 + 40) = result;
  return result;
}

uint64_t _WINDOWS1256_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v18 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v16 = [a1 maxSkipBytes];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0)
      {
        break;
      }

      if (v12 > 0x1F)
      {
        if (v12 != 127)
        {
LABEL_16:
          ++a1[17];
          if (v8 <= 0x7Eu && v9 < 0x7Fu)
          {
LABEL_18:
            [a4 appendByte:v12];
            goto LABEL_19;
          }

LABEL_10:
          v17[0] = v9;
          v17[1] = v8;
          v17[2] = v12;
          if ([qword_1ED43FAF0 indexForBytes:v17 length:3] != 0x7FFFFFFFFFFFFFFFLL)
          {
            ++a1[16];
          }

          goto LABEL_18;
        }

LABEL_9:
        ++a1[18];
        goto LABEL_10;
      }

      if (v12 <= 0xD && ((1 << v12) & 0x3700) != 0)
      {
        goto LABEL_16;
      }

      [a4 appendPlaceholder];
      v14 = a1[8] + 1;
      a1[8] = v14;
      if (v14 > v16)
      {
        goto LABEL_23;
      }

      v8 = 0;
      LOBYTE(v12) = 0;
LABEL_19:
      v9 = v8;
      v8 = v12;
      if (!--v5)
      {
        goto LABEL_23;
      }
    }

    if ((windows1256[(v10 >> 3) & 0xF] >> (v12 & 7)))
    {
      ++a1[10];
    }

    goto LABEL_9;
  }

LABEL_23:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _WINDOWS1257_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v21 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v19 = [a1 maxSkipBytes];
  if (v5)
  {
    v9 = 0;
    v10 = 0;
    while (1)
    {
      v12 = *a2++;
      v11 = v12;
      v13 = v12;
      if (v12 < 0 && ((windows1257[(v11 >> 3) & 0xF] >> (v13 & 7)) & 1) != 0)
      {
        ++a1[10];
      }

      v14 = vand_s8(vdup_n_s32(v13), 0xFB000000F7);
      v8.i8[0] = v13 & 0xFD;
      v8.i8[1] = v13;
      v8.i8[2] = v14.i8[0];
      v8.i8[3] = v14.i8[4];
      v8.i8[8] = v13 & 0xFD;
      v8.i8[9] = v13;
      v8.i8[10] = v14.i8[0];
      v8.i8[11] = v14.i8[4];
      v15 = vceq_s8(vqtbl1_s8(v8, 0x301010102010000), 0xA19F9C9A908C8881);
      v15.i8[0] = vmaxv_u8(v15);
      if (((v13 > 0x1F) & ~v15.i32[0]) != 0)
      {
        break;
      }

      if (v13 <= 0xD && ((1 << v13) & 0x3700) != 0)
      {
        goto LABEL_11;
      }

      [a4 appendPlaceholder];
      v17 = a1[8] + 1;
      a1[8] = v17;
      if (v17 > v19)
      {
        goto LABEL_22;
      }

      v9 = 0;
      LOBYTE(v13) = 0;
LABEL_18:
      v10 = v9;
      v9 = v13;
      if (!--v5)
      {
        goto LABEL_22;
      }
    }

    v16 = a1 + 17;
    if ((v13 - 32) >= 0x5F)
    {
LABEL_11:
      v16 = a1 + 18;
    }

    ++*v16;
    if (v9 > 0x7Eu || v10 > 0x7Eu || v13 >= 0x7F)
    {
      v20[0] = v10;
      v20[1] = v9;
      v20[2] = v13;
      if ([qword_1ED43FAF8 indexForBytes:v20 length:3] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++a1[16];
      }
    }

    [a4 appendByte:v13];
    goto LABEL_18;
  }

LABEL_22:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _WINDOWS1251_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v18 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v16 = [a1 maxSkipBytes];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0 && ((windows1251[(v10 >> 3) & 0xF] >> (v12 & 7)) & 1) != 0)
      {
        ++a1[10];
      }

      if (v12 >= 0x20 && v12 != 152)
      {
        break;
      }

      if (v12 <= 0xD && ((1 << v12) & 0x3700) != 0)
      {
        goto LABEL_14;
      }

      [a4 appendPlaceholder];
      v14 = a1[8] + 1;
      a1[8] = v14;
      if (v14 > v16)
      {
        goto LABEL_23;
      }

      v8 = 0;
      LOBYTE(v12) = 0;
LABEL_19:
      v9 = v8;
      v8 = v12;
      if (!--v5)
      {
        goto LABEL_23;
      }
    }

    if (v12 < 0x7F)
    {
LABEL_14:
      ++a1[17];
      if (v8 <= 0x7Eu && v9 < 0x7Fu)
      {
LABEL_18:
        [a4 appendByte:v12];
        goto LABEL_19;
      }
    }

    else
    {
      ++a1[18];
    }

    v17[0] = v9;
    v17[1] = v8;
    v17[2] = v12;
    if ([qword_1ED43FB00 indexForBytes:v17 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_18;
  }

LABEL_23:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _WINDOWS1253_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v23 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v8 = [a1 maxSkipBytes];
  if (v5)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v13 = *a2++;
      v12 = v13;
      v14 = v13;
      if (v13 < 0 && ((windows1253[(v12 >> 3) & 0xF] >> (v14 & 7)) & 1) != 0)
      {
        ++a1[10];
      }

      v18 = (v14 - 32) < 0xDFu || v14 == 10 || v14 == 13 || (v14 & 0xFFFFFFFB) == 8 || v14 == 9;
      if (!v18 || ((v14 - 129) <= 0x19 ? (v19 = ((1 << (v14 + 127)) & 0x280FA81) == 0) : (v19 = 1), !v19 || (v14 & 0xFC) == 0x9C || v14 == 170 || v14 == 210))
      {
        [a4 appendPlaceholder];
        v20 = a1[8] + 1;
        a1[8] = v20;
        if (v20 > v9)
        {
          goto LABEL_39;
        }

        v10 = 0;
        LOBYTE(v14) = 0;
        goto LABEL_26;
      }

      if (v14 >= 0x7F)
      {
        break;
      }

      ++a1[17];
      if (v10 > 0x7Eu || v11 >= 0x7Fu)
      {
        goto LABEL_36;
      }

LABEL_38:
      [a4 appendByte:v14];
LABEL_26:
      v11 = v10;
      v10 = v14;
      if (!--v5)
      {
        goto LABEL_39;
      }
    }

    ++a1[18];
LABEL_36:
    v22[0] = v11;
    v22[1] = v10;
    v22[2] = v14;
    if ([qword_1ED43FB08 indexForBytes:v22 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_38;
  }

LABEL_39:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _WINDOWS1255_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v23 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v8 = [a1 maxSkipBytes];
  if (v5)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v13 = *a2++;
      v12 = v13;
      v14 = v13;
      if (v13 < 0 && ((windows1255[(v12 >> 3) & 0xF] >> (v14 & 7)) & 1) != 0)
      {
        ++a1[10];
      }

      v18 = (v14 - 32) < 0xDFu || v14 == 10 || v14 == 13 || (v14 & 0xFFFFFFFB) == 8 || v14 == 9;
      if (!v18 || ((v14 - 129) <= 0x19 ? (v19 = ((1 << (v14 + 127)) & 0x200FA81) == 0) : (v19 = 1), !v19 || v14 == 202 || (v14 & 0xFC) == 0x9C || (v14 - 217) < 7 || (v14 - 251) < 2))
      {
        [a4 appendPlaceholder];
        v20 = a1[8] + 1;
        a1[8] = v20;
        if (v20 > v9)
        {
          goto LABEL_40;
        }

        v10 = 0;
        LOBYTE(v14) = 0;
        goto LABEL_26;
      }

      if (v14 >= 0x7F)
      {
        break;
      }

      ++a1[17];
      if (v10 > 0x7Eu || v11 >= 0x7Fu)
      {
        goto LABEL_37;
      }

LABEL_39:
      [a4 appendByte:v14];
LABEL_26:
      v11 = v10;
      v10 = v14;
      if (!--v5)
      {
        goto LABEL_40;
      }
    }

    ++a1[18];
LABEL_37:
    v22[0] = v11;
    v22[1] = v10;
    v22[2] = v14;
    if ([qword_1ED43FB10 indexForBytes:v22 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_39;
  }

LABEL_40:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _WINDOWS1252_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v20 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v8 = [a1 maxSkipBytes];
  if (v5)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    do
    {
      v13 = *a2++;
      v12 = v13;
      v14 = v13;
      if (v13 < 0)
      {
        if ((windows1252[(v12 >> 3) & 0xF] >> (v14 & 7)))
        {
          ++a1[10];
        }
      }

      else if (v14 <= 0x1F)
      {
        if (v14 > 0xD || ((1 << v14) & 0x3700) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_9;
      }

      if ((v14 - 129) <= 0x1C && ((1 << (v14 + 127)) & 0x1000D001) != 0)
      {
LABEL_18:
        [a4 appendPlaceholder];
        v17 = a1[8] + 1;
        a1[8] = v17;
        if (v17 > v9)
        {
          break;
        }

        v10 = 0;
        LOBYTE(v14) = 0;
        goto LABEL_25;
      }

      if (v14 >= 0x7F)
      {
        ++a1[18];
LABEL_22:
        v19[0] = v11;
        v19[1] = v10;
        v19[2] = v14;
        if ([qword_1ED43FB18 indexForBytes:v19 length:3] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++a1[16];
        }

        goto LABEL_24;
      }

LABEL_9:
      ++a1[17];
      if (v10 > 0x7Eu || v11 >= 0x7Fu)
      {
        goto LABEL_22;
      }

LABEL_24:
      [a4 appendByte:v14];
LABEL_25:
      v11 = v10;
      v10 = v14;
      --v5;
    }

    while (v5);
  }

  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _WINDOWS1250_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v20 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v8 = [a1 maxSkipBytes];
  if (v5)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    do
    {
      v13 = *a2++;
      v12 = v13;
      v14 = v13;
      if (v13 < 0)
      {
        if ((windows1250[(v12 >> 3) & 0xF] >> (v14 & 7)))
        {
          ++a1[10];
        }
      }

      else if (v14 <= 0x1F)
      {
        if (v14 > 0xD || ((1 << v14) & 0x3700) == 0)
        {
          goto LABEL_18;
        }

        goto LABEL_9;
      }

      if ((v14 - 129) <= 0x17 && ((1 << (v14 + 127)) & 0x808085) != 0)
      {
LABEL_18:
        [a4 appendPlaceholder];
        v17 = a1[8] + 1;
        a1[8] = v17;
        if (v17 > v9)
        {
          break;
        }

        v10 = 0;
        LOBYTE(v14) = 0;
        goto LABEL_25;
      }

      if (v14 >= 0x7F)
      {
        ++a1[18];
LABEL_22:
        v19[0] = v11;
        v19[1] = v10;
        v19[2] = v14;
        if ([qword_1ED43FB20 indexForBytes:v19 length:3] != 0x7FFFFFFFFFFFFFFFLL)
        {
          ++a1[16];
        }

        goto LABEL_24;
      }

LABEL_9:
      ++a1[17];
      if (v10 > 0x7Eu || v11 >= 0x7Fu)
      {
        goto LABEL_22;
      }

LABEL_24:
      [a4 appendByte:v14];
LABEL_25:
      v11 = v10;
      v10 = v14;
      --v5;
    }

    while (v5);
  }

  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _WINDOWS1254_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v25 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v8 = [a1 maxSkipBytes];
  if (v5)
  {
    v9 = v8;
    v10 = 0;
    v11 = 0;
    while (1)
    {
      v13 = *a2++;
      v12 = v13;
      v14 = v13;
      if (v13 < 0 && ((windows1254[(v12 >> 3) & 0xF] >> (v14 & 7)) & 1) != 0)
      {
        ++a1[10];
      }

      v19 = v14 == 13 || v14 == 10 || (v14 - 32) < 0xDFu || (v14 & 0xFFFFFFFB) == 8 || v14 == 9;
      v20 = v14 == 129 || !v19;
      if (v20 || ((v14 - 141) <= 0x11 ? (v21 = ((1 << (v14 + 115)) & 0x3000F) == 0) : (v21 = 1), !v21))
      {
        [a4 appendPlaceholder];
        v22 = a1[8] + 1;
        a1[8] = v22;
        if (v22 > v9)
        {
          goto LABEL_41;
        }

        v10 = 0;
        LOBYTE(v14) = 0;
        goto LABEL_31;
      }

      if (v14 >= 0x7F)
      {
        break;
      }

      ++a1[17];
      if (v10 > 0x7Eu || v11 >= 0x7Fu)
      {
        goto LABEL_38;
      }

LABEL_40:
      [a4 appendByte:v14];
LABEL_31:
      v11 = v10;
      v10 = v14;
      if (!--v5)
      {
        goto LABEL_41;
      }
    }

    ++a1[18];
LABEL_38:
    v24[0] = v11;
    v24[1] = v10;
    v24[2] = v14;
    if ([qword_1ED43FB28 indexForBytes:v24 length:3] != 0x7FFFFFFFFFFFFFFFLL)
    {
      ++a1[16];
    }

    goto LABEL_40;
  }

LABEL_41:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

uint64_t _WINDOWS1258_recognize(void *a1, char *a2, uint64_t a3, void *a4)
{
  v5 = a3;
  v23 = *MEMORY[0x1E69E9840];
  a1[4] += a3;
  v21 = [a1 maxSkipBytes];
  if (v5)
  {
    v8 = 0;
    v9 = 0;
    while (1)
    {
      v11 = *a2++;
      v10 = v11;
      v12 = v11;
      if (v11 < 0 && ((windows1258[(v10 >> 3) & 0xF] >> (v12 & 7)) & 1) != 0)
      {
        ++a1[10];
      }

      v13 = (v12 + 111) >= 0xFCu || v12 == 138;
      v14 = v13 || v12 == 129;
      v15 = v14 || v12 == 154;
      v16 = v15 || (v12 + 97) >= 0xFEu;
      if (!v16 && v12 > 0x1F)
      {
        break;
      }

      if (v12 <= 0xD && ((1 << v12) & 0x3700) != 0)
      {
        goto LABEL_27;
      }

      [a4 appendPlaceholder];
      v19 = a1[8] + 1;
      a1[8] = v19;
      if (v19 > v21)
      {
        goto LABEL_38;
      }

      v8 = 0;
      LOBYTE(v12) = 0;
LABEL_34:
      v9 = v8;
      v8 = v12;
      if (!--v5)
      {
        goto LABEL_38;
      }
    }

    v18 = a1 + 17;
    if ((v12 - 32) >= 0x5F)
    {
LABEL_27:
      v18 = a1 + 18;
    }

    ++*v18;
    if (v8 > 0x7Eu || v9 > 0x7Eu || v12 >= 0x7F)
    {
      v22[0] = v9;
      v22[1] = v8;
      v22[2] = v12;
      if ([qword_1ED43FB30 indexForBytes:v22 length:3] != 0x7FFFFFFFFFFFFFFFLL)
      {
        ++a1[16];
      }
    }

    [a4 appendByte:v12];
    goto LABEL_34;
  }

LABEL_38:
  a1[12] = a1[8];
  result = a1[18] + a1[17];
  a1[5] = result;
  return result;
}

NSString *generateStringWithEncoding(void *a1, uint64_t a2, uint64_t a3, int a4, int a5, uint64_t a6, BOOL *a7)
{
  v26[1] = *MEMORY[0x1E69E9840];
  if (a4)
  {
    v13 = -[NSString initWithBytes:length:encoding:]([NSString alloc], "initWithBytes:length:encoding:", a2, a3, [a1 nsEncoding]);
    if (!a7)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v13 = 0;
  if (a7)
  {
LABEL_5:
    *a7 = 0;
  }

LABEL_6:
  if (a6 && !v13 && a5)
  {
    v14 = [NSEncodingDetectionPlaceholder placeholderForDetector:a1];
    v15 = a1[8];
    v16 = [v14 bytesLength];
    v26[0] = v26;
    v17 = a3 + (v16 + 7) * v15;
    MEMORY[0x1EEE9AC00](v16);
    v18 = [NSEncodingDetectionBuffer alloc];
    v19 = [a1 nsEncoding];
    v20 = [a1 cfEncoding];
    if (v17 < 0x101)
    {
      v21 = &v25;
      v22 = 256;
    }

    else
    {
      v21 = 0;
      v22 = v17;
    }

    v23 = [(NSEncodingDetectionBuffer *)v18 initWithNSStringEncoding:v19 CFStringEncoding:v20 stackBuffer:v21 bufferLength:v22 placeholder:v14];
    [a1 softReset];
    [a1 recognizeString:a2 withDataLength:a3 intoBuffer:v23];
    v13 = [(NSEncodingDetectionBuffer *)v23 stringWithLossySubsitutionString:a6];

    if (a7)
    {
      *a7 = a1[12] != 0;
    }
  }

  return v13;
}

uint64_t checkSuggestedEncodings(uint64_t a1, uint64_t a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v6 = 0;
  v7 = &v6;
  v8 = 0x3052000000;
  v9 = __Block_byref_object_copy__13;
  v10 = __Block_byref_object_dispose__13;
  v11 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __checkSuggestedEncodings_block_invoke;
  v5[3] = &unk_1E69F5650;
  v5[5] = a1;
  v5[6] = a2;
  v5[4] = &v6;
  [a3 enumerateKeysAndObjectsUsingBlock:v5];
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);
  return v3;
}

void sub_1810EE744(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t increaseWeightsOfEncodings(uint64_t result, unsigned int *a2, uint64_t a3)
{
  if (a3 >= 1)
  {
    v15 = v10;
    v16 = v9;
    v17 = v6;
    v18 = v5;
    v19 = v4;
    v20 = v3;
    v21 = v7;
    v22 = v8;
    v11 = a3;
    v13 = result;
    do
    {
      v14 = *a2++;
      result = [v13 objectForKey:{+[NSNumber numberWithUnsignedInt:](NSNumber, "numberWithUnsignedInt:", v14, v15, v16, v17, v18, v19, v20, v21, v22)}];
      if (result)
      {
        *(result + 152) = *(result + 152) * 5.0;
      }

      --v11;
    }

    while (v11);
  }

  return result;
}

uint64_t compareTwoDetectors(uint64_t a1, uint64_t a2)
{
  v2 = *(*a1 + 164);
  v3 = *(*a2 + 164);
  v4 = v2 > v3;
  v5 = v2 < v3;
  if (v4)
  {
    return 0xFFFFFFFFLL;
  }

  else
  {
    return v5;
  }
}

uint64_t recognizeISO2022JP(uint64_t a1, unint64_t a2, void *a3, void *a4, void *a5, void *a6, unint64_t *a7, uint64_t a8, unint64_t a9, unint64_t a10, char *a11, uint64_t a12, CFStringEncoding a13, void *a14, void *a15, void *a16, void *a17, unint64_t a18)
{
  v19 = 0;
  v56 = 0;
  v20 = 0;
  v48 = 0;
  v51 = 0;
  v53 = 0;
  v21 = 0;
  v42 = 0;
  v55 = 0;
  v64 = *MEMORY[0x1E69E9840];
  bytes = 27;
  v59 = 0;
  contentsDeallocator = *MEMORY[0x1E695E498];
LABEL_2:
  v22 = 0;
LABEL_3:
  v54 = v21;
  v52 = v21 + 1;
  v49 = v20;
LABEL_4:
  if (v19 <= a2)
  {
    v23 = a2;
  }

  else
  {
    v23 = v19;
  }

  v50 = v19;
  while (v19 != v23)
  {
    v24 = a1 + v19;
    v25 = *(a1 + v19);
    if (v25 == 27)
    {
      if (a8 && v19 + 2 < a2)
      {
        v26 = 0;
        v27 = *(v24 + 1);
        v28 = *(a1 + v19 + 2);
        while (__PAIR64__(v28, v27) != __PAIR64__(*(a8 + v26 + 1), *(a8 + v26)))
        {
          v29 = v26 + 3;
          v26 += 2;
          if (v29 >= a9)
          {
            goto LABEL_16;
          }
        }

        v22 = v26 > a10;
        LOBYTE(v61) = *(v24 + 1);
        HIBYTE(v61) = v28;
        v19 += 3;
        [a17 appendByte1:27 byte2:v27 byte3:v28];
        LOBYTE(v59) = 27;
        BYTE1(v59) = v27;
        v21 = 3;
        BYTE2(v59) = v28;
        goto LABEL_49;
      }

LABEL_16:
      if (a11 && v19 + 3 < a2 && a12)
      {
        v30 = *(a1 + v19 + 3);
        v32 = *(v24 + 1) == 36 && *(v24 + 2) == 40;
        v33 = a11;
        v34 = a12;
        while (!v32 || v30 != *v33)
        {
          ++v33;
          if (!--v34)
          {
            goto LABEL_29;
          }
        }

        v61 = 10276;
        v62 = v30;
        v19 += 4;
        [a17 appendByte1:27 byte2:36 byte3:40 byte4:v30];
        LOWORD(v59) = 9243;
        BYTE2(v59) = 40;
        v22 = 1;
        v21 = 4;
        HIBYTE(v59) = v30;
LABEL_49:
        ++v53;
        v56 = 1;
        v55 = v21;
        goto LABEL_3;
      }
    }

LABEL_29:
    if (!v22 && ((v25 - 32) < 0x5Fu || *(a1 + v19) <= 0xDu && ((1 << v25) & 0x3700) != 0))
    {
      ++v19;
      ++v51;
      [a17 appendByte:v25];
      v21 = v54;
      goto LABEL_2;
    }

    if ((v56 & 1) != 0 && (v25 - 33) <= 0x5Du && v22 && v19 + 1 < a2)
    {
      v35 = *(a1 + v19 + 1);
      if ((v35 - 33) <= 0x5D)
      {
        *(&bytes + v54) = v25;
        *(&bytes + v52) = v35;
        v40 = qword_1ED43FA50;
        v36 = CFStringCreateWithBytesNoCopy(0, &bytes, v54 + 2, a13, 0, contentsDeallocator);
        if (v36)
        {
          v37 = v36;
          v63[0] = CFStringGetCharacterAtIndex(v36, 0);
          if ([v40 indexForKey:v63 length:1] != 0x7FFFFFFFFFFFFFFFLL)
          {
            ++*a14;
          }

          CFRelease(v37);
          v38 = v63[0];
          if (v63[0])
          {
            if (v42)
            {
              v63[0] = v42;
              v63[1] = v38;
              if ([qword_1ED43FA58 indexForKey:v63 length:2] != 0x7FFFFFFFFFFFFFFFLL)
              {
                ++*a15;
              }
            }

            v19 += 2;
            ++v48;
            [a17 appendByte1:v25 byte2:v35];
            v56 = 1;
            v49 = v20;
            v42 = v38;
            goto LABEL_4;
          }
        }

        v42 = 0;
      }
    }

    [a17 appendPlaceholder];
    [a17 appendBytes:&v59 count:v55];
    ++*a16;
    ++v20;
    ++v19;
    if (v20 > a18)
    {
      goto LABEL_52;
    }
  }

  v20 = v49 + v23 - v50;
LABEL_52:
  result = v48 + v51;
  *a3 += v48 + v51;
  *a7 = v20;
  *a4 = v48;
  *a5 = v51;
  *a6 = v53;
  return result;
}

unint64_t recognizeUTF16(unsigned __int16 *a1, unint64_t a2, int a3, void *a4, void *a5, void *a6, void *a7, _BYTE *a8, void *a9, void *a10)
{
  v16 = *a1;
  v17 = v16 == 65534 || v16 == 65279;
  if (v17)
  {
    [a9 appendUTF16Char:?];
    v19 = 1;
    *a8 = 1;
  }

  else
  {
    v19 = 0;
  }

  if (v19 < a2 >> 1)
  {
    v32 = a5;
    v34 = 0;
    v20 = a2 >> 1;
    v21 = v19;
    while (1)
    {
      v22 = __rev16(a1[v21]);
      if (!a3)
      {
        v22 = a1[v21];
      }

      if (v22 <= 0xFFFD)
      {
        v23 = v22 & 0xFC00;
        if ((v22 + 560) >= 0x20u && v23 != 56320)
        {
          if (v23 == 55296)
          {
            v25 = v21 + 1;
            if (v21 + 1 >= v20)
            {
              goto LABEL_18;
            }

            v26 = bswap32(a1[v25]) >> 16;
            if (!a3)
            {
              LOWORD(v26) = a1[v25];
            }

            if (v26 >> 10 == 55)
            {
              v27 = 0;
              v28 = v26 & 0xDFFE;
              while (v28 != 57342 || v22 != invalidUTF16Chars[v27])
              {
                if (++v27 == 16)
                {
                  ++v19;
                  ++*v32;
                  v29 = v21 + 2;
                  [a9 appendUTF16Char:a1[v29]];
                  [a9 appendUTF16Char:a1[v25]];
                  v25 = v29;
                  goto LABEL_18;
                }
              }
            }
          }

          else if (((v22 + 0x2000) >> 11) <= 0x1Eu)
          {
            v17 = v22 == 0;
            v30 = v34;
            if (v17)
            {
              v30 = v34 + 1;
            }

            v34 = v30;
            ++v19;
            [a9 appendUTF16Char:v32];
            v25 = v21 + 1;
            goto LABEL_18;
          }
        }
      }

      [a9 appendPlaceholder];
      ++*a7;
      *a6 += 2;
      v25 = v21 + 2;
LABEL_18:
      v21 = v25;
      if (v25 >= v20)
      {
        goto LABEL_35;
      }
    }
  }

  v34 = 0;
  v19 = 1;
LABEL_35:
  *a4 += v19;
  *a10 = v34;
  return v19;
}

unint64_t recognizeUTF32(_DWORD *a1, unint64_t a2, int a3, void *a4, void *a5, void *a6, _BYTE *a7, void *a8)
{
  if (*a1 == 65534 || *a1 == 65279)
  {
    [a8 appendUTF32Char:?];
    v17 = 1;
    *a7 = 1;
  }

  else
  {
    v17 = 0;
  }

  v18 = a2 >> 2;
  v19 = 0;
  v20 = v18 - v17;
  if (v18 <= v17)
  {
    v17 = 1;
  }

  else
  {
    v21 = &a1[v17];
    do
    {
      v23 = *v21++;
      v22 = v23;
      v24 = bswap32(v23);
      if (!a3)
      {
        v24 = v22;
      }

      if (v24 >> 11 < 0x1B || (v24 - 57344) >> 13 <= 0x80)
      {
        ++v17;
        [a8 appendUTF32Char:?];
      }

      else
      {
        [a8 appendPlaceholder];
        ++*a6;
        v19 += 4;
      }

      --v20;
    }

    while (v20);
  }

  *a4 += v17;
  *a5 = v19;
  return v17;
}

id __initializeResources_block_invoke()
{
  result = [MEMORY[0x1E695DF20] sharedKeySetForKeys:&unk_1EEF57F20];
  _MergedGlobals_117 = result;
  return result;
}

void *__initializeDics_block_invoke()
{
  qword_1ED43FA40 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FA50 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FA60 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FA48 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FA58 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FA68 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FA78 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FA88 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FA90 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FA98 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FAA0 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FAA8 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FAB0 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FAB8 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FAC0 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FA80 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FAD0 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FAC8 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FAD8 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FAE0 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FAE8 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FA70 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FB00 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FB18 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FB20 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FB08 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FB28 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FB10 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FAF0 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FAF8 = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  result = [[_NSSharedKeySetS alloc] initWithConfiguration:?];
  qword_1ED43FB30 = result;
  return result;
}

uint64_t __checkSuggestedEncodings_block_invoke(uint64_t result, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  if (*(a3 + 152) > 1.0)
  {
    v7 = result;
    if ([a3 recognizeString:*(result + 40) withDataLength:*(result + 48) intoBuffer:0] && !*(a3 + 64))
    {
      *(*(*(v7 + 32) + 8) + 40) = a3;
      *a4 = 1;
    }

    return [a3 softReset];
  }

  return result;
}

void sub_1810F0A10(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose((v33 - 176), 8);
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1810F0FB4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 112));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1810F18EC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 64));
  objc_destroyWeak((v2 - 112));
  objc_destroyWeak((v2 - 104));
  _Unwind_Resume(a1);
}

void sub_1810F260C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 136));
  _Unwind_Resume(a1);
}

void sub_1810F2AAC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 104));
  objc_destroyWeak((v1 + 96));
  _Unwind_Resume(a1);
}

void sub_1810F2C60(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 40));
  _Unwind_Resume(a1);
}

void sub_1810F3280(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, id *location)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v12 - 160));
  _Unwind_Resume(a1);
}

void sub_1810F3984(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, id *location)
{
  objc_destroyWeak(location);
  objc_destroyWeak((v11 - 160));
  _Unwind_Resume(a1);
}

uint64_t _bestMatchConformingToTypes(void *a1, void *a2)
{
  v35 = *MEMORY[0x1E69E9840];
  v31 = 0u;
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v4 = [a1 countByEnumeratingWithState:&v31 objects:v30 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v32;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v32 != v6)
      {
        objc_enumerationMutation(a1);
      }

      v8 = *(*(&v31 + 1) + 8 * v7);
      if ([a2 containsObject:v8])
      {
        break;
      }

      if (v5 == ++v7)
      {
        v5 = [a1 countByEnumeratingWithState:&v31 objects:v30 count:16];
        if (v5)
        {
          goto LABEL_3;
        }

        goto LABEL_9;
      }
    }
  }

  else
  {
LABEL_9:
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    v9 = [a1 countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v27;
      v19 = *v27;
      while (2)
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v27 != v11)
          {
            objc_enumerationMutation(a1);
          }

          v13 = *(*(&v26 + 1) + 8 * i);
          v21 = 0u;
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v14 = [a2 countByEnumeratingWithState:&v21 objects:v20 count:16];
          if (v14)
          {
            v15 = v14;
            v16 = *v22;
LABEL_16:
            v17 = 0;
            while (1)
            {
              if (*v22 != v16)
              {
                objc_enumerationMutation(a2);
              }

              v8 = *(*(&v21 + 1) + 8 * v17);
              if ((off_1ED439850)(v8, v13))
              {
                return v8;
              }

              if (v15 == ++v17)
              {
                v15 = [a2 countByEnumeratingWithState:&v21 objects:v20 count:16];
                if (v15)
                {
                  goto LABEL_16;
                }

                break;
              }
            }
          }

          v11 = v19;
        }

        v10 = [a1 countByEnumeratingWithState:&v26 objects:v25 count:16];
        v8 = 0;
        if (v10)
        {
          continue;
        }

        break;
      }
    }

    else
    {
      return 0;
    }
  }

  return v8;
}

void sub_1810F4AE4(_Unwind_Exception *a1)
{
  objc_destroyWeak(v2);
  objc_destroyWeak(v1);
  objc_destroyWeak((v3 - 160));
  objc_destroyWeak((v3 - 152));
  _Unwind_Resume(a1);
}

void sub_1810F5D80(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void _asyncDispatchBlockWithOptions(void *a1, void *a2)
{
  if ([objc_msgSend(a1 objectForKeyedSubscript:{@"NSItemProviderOptionsDispatchMode", "isEqualToString:", @"NSItemProviderOptionsDispatchModeAsynchronous"}])
  {
    global_queue = dispatch_get_global_queue(0, 0);
  }

  else
  {
    global_queue = MEMORY[0x1E69E96A0];
  }

  dispatch_async(global_queue, a2);
}

void sub_1810F8570(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, id location)
{
  objc_destroyWeak(v31);
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t initUTTypeConformsTo_0(uint64_t a1, uint64_t a2)
{
  v4 = MobileCoreServicesLibrary();
  v5 = dlsym(v4, "UTTypeConformsTo");
  off_1ED439850 = v5;
  if (!v5)
  {
    __assert_rtn("initUTTypeConformsTo", "NSItemProvider.m", 25, "softLinkUTTypeConformsTo");
  }

  return (v5)(a1, a2);
}

uint64_t initFPIsFileProviderBookmark(uint64_t a1, uint64_t a2)
{
  v4 = FileProviderLibrary_frameworkLibrary_0;
  if (!FileProviderLibrary_frameworkLibrary_0)
  {
    v4 = dlopen("/System/Library/PrivateFrameworks/FileProvider.framework/FileProvider", 2);
    FileProviderLibrary_frameworkLibrary_0 = v4;
    if (!v4)
    {
      __assert_rtn("FileProviderLibrary", "NSItemProvider.m", 48, "frameworkLibrary");
    }
  }

  v5 = dlsym(v4, "FPIsFileProviderBookmark");
  softLinkFPIsFileProviderBookmark = v5;
  if (!v5)
  {
    __assert_rtn("initFPIsFileProviderBookmark", "NSItemProvider.m", 49, "softLinkFPIsFileProviderBookmark");
  }

  return (v5)(a1, a2);
}

uint64_t initUTTypeCreatePreferredIdentifierForTag(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = MobileCoreServicesLibrary();
  v7 = dlsym(v6, "UTTypeCreatePreferredIdentifierForTag");
  off_1ED439858[0] = v7;
  if (!v7)
  {
    __assert_rtn("initUTTypeCreatePreferredIdentifierForTag", "NSItemProvider.m", 26, "softLinkUTTypeCreatePreferredIdentifierForTag");
  }

  return (v7)(a1, a2, a3);
}

uint64_t initkUTTagClassFilenameExtension()
{
  v0 = MobileCoreServicesLibrary();
  v1 = dlsym(v0, "kUTTagClassFilenameExtension");
  if (!v1)
  {
    __assert_rtn("initkUTTagClassFilenameExtension", "NSItemProvider.m", 27, "constant");
  }

  result = *v1;
  constantkUTTagClassFilenameExtension = result;
  _MergedGlobals_86[0] = kUTTagClassFilenameExtensionFunction;
  return result;
}

uint64_t initkUTTypeData_0()
{
  v0 = MobileCoreServicesLibrary();
  v1 = dlsym(v0, "kUTTypeData");
  if (!v1)
  {
    __assert_rtn("initkUTTypeData", "NSItemProvider.m", 28, "constant");
  }

  result = *v1;
  constantkUTTypeData_0 = result;
  off_1ED439840[0] = kUTTypeDataFunction_0;
  return result;
}

uint64_t _bestMatchType(uint64_t a1, void *a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if ([a2 containsObject:a1])
  {
    return a1;
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  v7 = [a2 countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (!v7)
  {
    return 0;
  }

  v8 = v7;
  v9 = *v14;
LABEL_5:
  v10 = 0;
  while (1)
  {
    if (*v14 != v9)
    {
      objc_enumerationMutation(a2);
    }

    v6 = *(*(&v13 + 1) + 8 * v10);
    if ((*(a3 + 16))(a3, a1, v6))
    {
      return v6;
    }

    if (v8 == ++v10)
    {
      v8 = [a2 countByEnumeratingWithState:&v13 objects:v12 count:16];
      v6 = 0;
      if (v8)
      {
        goto LABEL_5;
      }

      return v6;
    }
  }
}

id ___synchronousCoordinatedRead_block_invoke(void *a1)
{
  result = (*(a1[4] + 16))();
  *(*(a1[5] + 8) + 40) = result;
  *(*(a1[6] + 8) + 24) = 1;
  return result;
}

SEL __methodDescriptionForSelector(Class cls, SEL name)
{
  v18 = *MEMORY[0x1E69E9840];
  if (cls)
  {
    Superclass = cls;
    while (1)
    {
      outCount = 0;
      v5 = class_copyProtocolList(Superclass, &outCount);
      v6 = v5;
      if (outCount)
      {
        break;
      }

      if (v5)
      {
LABEL_10:
        free(v6);
      }

      Superclass = class_getSuperclass(Superclass);
      if (!Superclass)
      {
        goto LABEL_12;
      }
    }

    v7 = 0;
    while (1)
    {
      v8 = v6[v7];
      isMetaClass = class_isMetaClass(Superclass);
      v10 = protocol_getMethodDescription(v8, name, 1, !isMetaClass).name;
      if (v10)
      {
        break;
      }

      v11 = v6[v7];
      v12 = class_isMetaClass(Superclass);
      v10 = protocol_getMethodDescription(v11, name, 0, !v12).name;
      if (v10)
      {
        break;
      }

      if (++v7 >= outCount)
      {
        goto LABEL_10;
      }
    }

    v15 = v10;
    free(v6);
  }

  else
  {
LABEL_12:
    InstanceMethod = class_getInstanceMethod(cls, name);
    if (InstanceMethod)
    {
      v14 = InstanceMethod;
      v15 = method_getName(InstanceMethod);
      method_getTypeEncoding(v14);
    }

    else
    {
      return 0;
    }
  }

  return v15;
}

uint64_t _NSIPLogger()
{
  if (qword_1ED439A68 != -1)
  {
    dispatch_once(&qword_1ED439A68, &__block_literal_global_44);
  }

  return _MergedGlobals_1;
}

BOOL _NSIPGetExpectedClassFromCompletionBlock(void *a1, void *a2, NSError **a3)
{
  has_signature = _Block_has_signature(a1);
  if (has_signature)
  {
    v7 = [MEMORY[0x1E695DF68] signatureWithObjCTypes:_Block_signature(a1)];
    if (a2)
    {
      *a2 = [v7 _classForObjectAtArgumentIndex:1];
    }
  }

  else if (a3)
  {
    v8 = [_NSFoundationBundle() localizedStringForKey:@"Unable to get block signature." value:&stru_1EEEFDF90 table:@"Extension"];
    *a3 = _makeError(-1, v8, 0);
  }

  return has_signature;
}

void _NSIPDispatchAsyncCallback(dispatch_block_t block)
{
  if (qword_1ED439A88 != -1)
  {
    dispatch_once(&qword_1ED439A88, &__block_literal_global_91);
  }

  v2 = qword_1ED439A80;

  dispatch_async(v2, block);
}

uint64_t _NSIPItemQueue()
{
  if (qword_1ED439A78 != -1)
  {
    dispatch_once(&qword_1ED439A78, &__block_literal_global_4_1);
  }

  return qword_1ED439A70;
}

NSProgress *_NSIPCoordinatedRead(uint64_t a1, uint64_t a2)
{
  v4 = [NSFileAccessIntent readingIntentWithURL:a1 options:1];

  return _coordinatedFileAccess(v4, a1, a2);
}

NSProgress *_coordinatedFileAccess(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8[8] = *MEMORY[0x1E69E9840];
  v6 = [NSProgress discreteProgressWithTotalUnitCount:100];
  if (qword_1ED439A98 != -1)
  {
    dispatch_once(&qword_1ED439A98, &__block_literal_global_98);
  }

  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = ___coordinatedFileAccess_block_invoke;
  v8[3] = &unk_1E69F5E10;
  v8[4] = a2;
  v8[5] = a1;
  v8[6] = v6;
  v8[7] = a3;
  [qword_1ED439A90 addOperationWithBlock:v8];
  return v6;
}

NSProgress *_NSIPCoordinatedReadForUploading(uint64_t a1, uint64_t a2)
{
  v4 = [NSFileAccessIntent readingIntentWithURL:a1 options:8];

  return _coordinatedFileAccess(v4, a1, a2);
}

NSProgress *_NSIPCoordinatedDelete(uint64_t a1, uint64_t a2)
{
  v4 = [NSFileAccessIntent writingIntentWithURL:a1 options:1];

  return _coordinatedFileAccess(v4, a1, a2);
}

uint64_t _NSIPTemporaryFileName(__CFString *a1, NSError **a2)
{
  v3 = a1;
  v15 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    v4 = _MergedGlobals_87[0]();
    v3 = (off_1ED439868[0])(v3, v4);
  }

  [[(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:+[NSString stringWithFormat:](NSString UTF8String:@".%@.XXXXXX"];
  __strlcpy_chk();
  v5 = mkstemp(v14);
  if (v5 == -1)
  {
    v10 = __error();
    v11 = [NSString stringWithFormat:@"%s", strerror(*v10)];
    TemporaryFileError = _NSIPCannotCreateTemporaryFileError(v11, 0);
    v9 = 0;
    if (a2 && TemporaryFileError)
    {
      v9 = 0;
      *a2 = TemporaryFileError;
    }
  }

  else
  {
    v6 = v5;
    if (v3)
    {
      v7 = v3;
    }

    else
    {
      v7 = @"tmp";
    }

    v8 = [[NSString stringWithUTF8String:?], "stringByAppendingPathExtension:", v7];
    v9 = [MEMORY[0x1E695DFF8] fileURLWithPath:v8 isDirectory:0 relativeToURL:0];
    unlink(v14);
    close(v6);
  }

  return v9;
}

NSError *_NSIPCannotCreateTemporaryFileError(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"Cannot create a temporary file. Error: %@" value:&stru_1EEEFDF90 table:@"Extension"], a1);
  }

  else
  {
    v3 = [_NSFoundationBundle() localizedStringForKey:@"Cannot create a temporary file." value:&stru_1EEEFDF90 table:@"Extension"];
  }

  return _makeError(-1, v3, a2);
}

uint64_t _NSIPCloneToTemporaryDir(void *a1, __CFString *a2, NSError **a3)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v11[0] = 0;
  v5 = _NSIPTemporaryFileName(a2, v11);
  v6 = v11[0];
  if (!v5 || v11[0])
  {
    if (v5 | v11[0])
    {
      goto LABEL_8;
    }

    v9 = a1;
    v8 = 0;
LABEL_7:
    v6 = _NSIPCannotCopyFileError(v9, v8, 0);
LABEL_8:
    v5 = 0;
    if (!a3)
    {
      return v5;
    }

    goto LABEL_9;
  }

  if (copyfile([objc_msgSend(a1 "path")], objc_msgSend(objc_msgSend(v5, "path"), "fileSystemRepresentation"), 0, 0x10C800Fu))
  {
    v7 = __error();
    v8 = [NSString stringWithFormat:@"%s", strerror(*v7)];
    v9 = a1;
    goto LABEL_7;
  }

  v6 = v11[0];
  if (!a3)
  {
    return v5;
  }

LABEL_9:
  if (v6)
  {
    *a3 = v6;
  }

  return v5;
}

NSError *_NSIPCannotCopyFileError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
    v6 = _NSFoundationBundle();
    if (a1)
    {
      v7 = [v6 localizedStringForKey:@"Cannot copy file at URL %@. Error: %@" value:&stru_1EEEFDF90 table:@"Extension"];
      v10 = a1;
      v11 = a2;
    }

    else
    {
      v7 = [v6 localizedStringForKey:@"Cannot copy file. Error: %@" value:&stru_1EEEFDF90 table:@"Extension"];
      v10 = a2;
    }

    v8 = [NSString stringWithFormat:v7, v10, v11];
  }

  else if (a1)
  {
    v8 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"Cannot copy file at URL %@." value:&stru_1EEEFDF90 table:@"Extension"], a1, v11);
  }

  else
  {
    v8 = [_NSFoundationBundle() localizedStringForKey:@"Cannot copy file." value:&stru_1EEEFDF90 table:@"Extension"];
  }

  return _makeError(-1, v8, a3);
}

char *_NSIPCreateTemporaryFolder()
{
  v2 = *MEMORY[0x1E69E9840];
  [[(NSString *)NSTemporaryDirectory() stringByAppendingPathComponent:[NSString stringWithFormat:?]], "getFileSystemRepresentation:maxLength:", v1, 1024];
  [+[NSFileManager defaultManager](NSFileManager createDirectoryAtPath:"createDirectoryAtPath:withIntermediateDirectories:attributes:error:" withIntermediateDirectories:NSTemporaryDirectory() attributes:1 error:0, 0];
  result = mkdtemp(v1);
  if (result)
  {
    return [MEMORY[0x1E695DFF8] fileURLWithFileSystemRepresentation:v1 isDirectory:1 relativeToURL:0];
  }

  return result;
}

id _NSIPFilenameWithProperExtension(void *a1, uint64_t a2)
{
  v3 = [a1 copy];
  if (![v3 length])
  {
    v3 = softLinkUTTypeCopyDescription(a2);
  }

  if (![v3 length])
  {
    v4 = getkUTTypeItem();
    v3 = softLinkUTTypeCopyDescription(v4);
  }

  SuggestedFilename = softLink_UTTypeCreateSuggestedFilename(v3, a2);

  return SuggestedFilename;
}

NSString *_NSIPSanitizedFilename(void *a1)
{
  v5 = *MEMORY[0x1E69E9840];
  result = [a1 length];
  if (result)
  {
    if ([a1 isEqualToString:@"."] & 1) != 0 || (objc_msgSend(a1, "isEqualToString:", @".."))
    {
      return 0;
    }

    v3 = [a1 stringByReplacingOccurrencesOfString:@"/" withString:@":"];
    if (([v3 hasPrefix:@"."] & 1) != 0 || objc_msgSend(v3, "hasPrefix:", @"~"))
    {
      v3 = [v3 stringByReplacingCharactersInRange:0 withString:{1, @"_"}];
    }

    if (![v3 getFileSystemRepresentation:__s1 maxLength:256])
    {
      return 0;
    }

    else
    {
      return [+[NSFileManager defaultManager](NSFileManager stringWithFileSystemRepresentation:"stringWithFileSystemRepresentation:length:" length:__s1, strnlen(__s1, 0xFFuLL)];
    }
  }

  return result;
}

void *_NSIPCloneURLToTemporaryFolder(void *a1, uint64_t a2, void *a3, char **a4, NSError **a5)
{
  v10 = _NSIPCreateTemporaryFolder();
  if (!v10)
  {
    __assert_rtn("_NSIPCloneURLToTemporaryFolder", "_NSItemProviderUtilities_Internal.m", 306, "tempFolderURL");
  }

  v11 = v10;
  if (a3)
  {
    v12 = a3;
  }

  else
  {
    v12 = [a1 lastPathComponent];
  }

  v13 = [v11 URLByAppendingPathComponent:{_NSIPFilenameWithProperExtension(v12, a2)}];
  if (copyfile([objc_msgSend(a1 "path")], objc_msgSend(objc_msgSend(v13, "path"), "fileSystemRepresentation"), 0, 0x10C800Fu))
  {
    v14 = __error();
    v15 = [NSString stringWithUTF8String:strerror(*v14)];
    [+[NSFileManager defaultManager](NSFileManager removeItemAtURL:"removeItemAtURL:error:" error:v11, 0];
    TemporaryFileError = _NSIPCannotCreateTemporaryFileError(v15, 0);
    v13 = 0;
    if (a5 && TemporaryFileError)
    {
      v13 = 0;
      *a5 = TemporaryFileError;
    }
  }

  else if (a4)
  {
    *a4 = v11;
  }

  return v13;
}

NSError *_NSIPCannotLoadRepresentationError(uint64_t a1, uint64_t a2)
{
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"Cannot load representation of type %@" value:&stru_1EEEFDF90 table:@"Extension"], a1);

  return _makeError(-1000, v3, a2);
}

NSError *_makeError(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [MEMORY[0x1E695DF90] dictionary];
  v7 = v6;
  if (a2)
  {
    [v6 setObject:a2 forKeyedSubscript:@"NSLocalizedDescription"];
  }

  if (a3)
  {
    [v7 setObject:a3 forKeyedSubscript:@"NSUnderlyingError"];
  }

  return [NSError errorWithDomain:@"NSItemProviderErrorDomain" code:a1 userInfo:v7];
}

NSError *_NSIPDataTransferCancelledError(uint64_t a1)
{
  v2 = [_NSFoundationBundle() localizedStringForKey:@"Data transfer has been cancelled." value:&stru_1EEEFDF90 table:@"Extension"];

  return _makeError(-1000, v2, a1);
}

NSError *_NSIPNoLoaderAvailableError(uint64_t a1, uint64_t a2)
{
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"No loader block available for type %@." value:&stru_1EEEFDF90 table:@"Extension"], a1);

  return _makeError(-1000, v3, a2);
}

NSError *_NSIPCannotLoadPreviewError(uint64_t a1)
{
  v2 = [_NSFoundationBundle() localizedStringForKey:@"Cannot load preview." value:&stru_1EEEFDF90 table:@"Extension"];

  return _makeError(-1000, v2, a1);
}

NSError *_NSIPUnexpectedValueClassError(uint64_t a1, uint64_t a2)
{
  v3 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [_NSFoundationBundle() localizedStringForKey:@"Cannot load an object of class %@" value:&stru_1EEEFDF90 table:@"Extension"], a1);

  return _makeError(-1100, v3, a2);
}

NSError *_NSIPUnavailableCoercionError(objc_class *a1, objc_class *a2, uint64_t a3)
{
  v6 = _NSFoundationBundle();
  if (a1)
  {
    v7 = [v6 localizedStringForKey:@"Could not coerce an item from class %@ to class %@" value:&stru_1EEEFDF90 table:@"Extension"];
    v8 = NSStringFromClass(a1);
    v9 = [NSString stringWithFormat:v7, v8, NSStringFromClass(a2)];
  }

  else
  {
    v9 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", [v6 localizedStringForKey:@"Could not coerce an item to class %@" value:&stru_1EEEFDF90 table:@"Extension"], NSStringFromClass(a2), v11);
  }

  return _makeError(-1200, v9, a3);
}

NSError *_NSIPCocoaErrorWithCode(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  if (a3)
  {
    v12 = [a3 mutableCopy];
  }

  else
  {
    v12 = [MEMORY[0x1E695DF90] dictionary];
  }

  v13 = v12;
  if (a4)
  {
    v17 = &a9;
    v14 = [[NSString alloc] initWithFormat:a4 arguments:&a9];
    [v13 setObject:v14 forKeyedSubscript:@"NSDebugDescription"];
  }

  if (a2)
  {
    [v13 setObject:a2 forKeyedSubscript:@"NSUnderlyingError"];
  }

  if ([v13 count])
  {
    v15 = v13;
  }

  else
  {
    v15 = 0;
  }

  return [NSError errorWithDomain:@"NSCocoaErrorDomain" code:a1 userInfo:v15];
}

dispatch_queue_t __callbackQueue_block_invoke()
{
  result = dispatch_queue_create("com.apple.Foundation.NSItemProvider-callback-queue", 0);
  qword_1ED439A80 = result;
  return result;
}

void ___coordinatedFileAccess_block_invoke(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = [*(a1 + 32) startAccessingSecurityScopedResource];
  v3 = [[NSFileCoordinator alloc] initWithFilePresenter:0];
  v11[0] = *(a1 + 40);
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  if (qword_1ED439A98 != -1)
  {
    dispatch_once(&qword_1ED439A98, &__block_literal_global_98);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = ___coordinatedFileAccess_block_invoke_2;
  v6[3] = &unk_1E69F5DE8;
  v5 = *(a1 + 56);
  v7 = vextq_s8(*(a1 + 40), *(a1 + 40), 8uLL);
  v10 = v2;
  v8 = *(a1 + 32);
  v9 = v5;
  [(NSFileCoordinator *)v3 coordinateAccessWithIntents:v4 queue:qword_1ED439A90 byAccessor:v6];
}

uint64_t ___coordinatedFileAccess_block_invoke_2(uint64_t a1, uint64_t a2)
{
  [*(a1 + 32) setCompletedUnitCount:{objc_msgSend(*(a1 + 32), "totalUnitCount")}];
  result = (*(*(a1 + 56) + 16))(*(a1 + 56), [*(a1 + 40) URL], a2);
  if (*(a1 + 64) == 1)
  {
    v5 = *(a1 + 48);

    return [v5 stopAccessingSecurityScopedResource];
  }

  return result;
}

NSOperationQueue *___coordinationQueue_block_invoke()
{
  result = objc_alloc_init(NSOperationQueue);
  qword_1ED439A90 = result;
  return result;
}

uint64_t initUTTypeCopyPreferredTagWithClass(uint64_t a1, uint64_t a2)
{
  v4 = MobileCoreServicesLibrary_0();
  v5 = dlsym(v4, "UTTypeCopyPreferredTagWithClass");
  off_1ED439868[0] = v5;
  if (!v5)
  {
    __assert_rtn("initUTTypeCopyPreferredTagWithClass", "_NSItemProviderUtilities_Internal.m", 35, "softLinkUTTypeCopyPreferredTagWithClass");
  }

  return (v5)(a1, a2);
}

uint64_t initkUTTagClassFilenameExtension_0()
{
  v0 = MobileCoreServicesLibrary_0();
  v1 = dlsym(v0, "kUTTagClassFilenameExtension");
  if (!v1)
  {
    __assert_rtn("initkUTTagClassFilenameExtension", "_NSItemProviderUtilities_Internal.m", 38, "constant");
  }

  result = *v1;
  constantkUTTagClassFilenameExtension_0 = result;
  _MergedGlobals_87[0] = kUTTagClassFilenameExtensionFunction_0;
  return result;
}

uint64_t initUTTypeCopyDescription(uint64_t a1)
{
  v2 = MobileCoreServicesLibrary_0();
  v3 = dlsym(v2, "UTTypeCopyDescription");
  softLinkUTTypeCopyDescription = v3;
  if (!v3)
  {
    __assert_rtn("initUTTypeCopyDescription", "_NSItemProviderUtilities_Internal.m", 36, "softLinkUTTypeCopyDescription");
  }

  return (v3)(a1);
}

uint64_t initkUTTypeItem()
{
  v0 = MobileCoreServicesLibrary_0();
  v1 = dlsym(v0, "kUTTypeItem");
  if (!v1)
  {
    __assert_rtn("initkUTTypeItem", "_NSItemProviderUtilities_Internal.m", 42, "constant");
  }

  result = *v1;
  constantkUTTypeItem = result;
  getkUTTypeItem = kUTTypeItemFunction;
  return result;
}

uint64_t init_UTTypeCreateSuggestedFilename(uint64_t a1, uint64_t a2)
{
  v4 = MobileCoreServicesLibrary_0();
  v5 = dlsym(v4, "_UTTypeCreateSuggestedFilename");
  softLink_UTTypeCreateSuggestedFilename = v5;
  if (!v5)
  {
    __assert_rtn("init_UTTypeCreateSuggestedFilename", "_NSItemProviderUtilities_Internal.m", 37, "softLink_UTTypeCreateSuggestedFilename");
  }

  return (v5)(a1, a2);
}

uint64_t __NSURLGetTopLevelDomain(void *a1)
{
  [a1 cStringUsingEncoding:4];
  [a1 length];
  result = _CFHostGetTopLevelDomain();
  if (result)
  {
    v3 = result;
    v4 = [NSString alloc];

    return [(NSString *)v4 initWithCString:v3 encoding:4];
  }

  return result;
}

NSRange NSUnionRange(NSRange range1, NSRange range2)
{
  v2 = range1.location + range1.length;
  if (range1.location + range1.length <= range2.location + range2.length)
  {
    v2 = range2.location + range2.length;
  }

  if (range1.location >= range2.location)
  {
    range1.location = range2.location;
  }

  range1.length = v2 - range1.location;
  return range1;
}

NSRange NSIntersectionRange(NSRange range1, NSRange range2)
{
  v2 = range1.location + range1.length;
  if (range1.location + range1.length >= range2.location + range2.length)
  {
    v3 = range2.location + range2.length;
  }

  else
  {
    v3 = range1.location + range1.length;
  }

  if (range2.location > range1.location || range1.location >= range2.location + range2.length)
  {
    v4 = v3 - range2.location;
    v5 = range2.location >= v2;
    if (range2.location < v2)
    {
      location = range2.location;
    }

    else
    {
      location = 0;
    }

    if (v5)
    {
      v4 = 0;
    }

    v7 = range1.location > range2.location;
    if (range1.location <= range2.location)
    {
      range1.location = location;
    }

    else
    {
      range1.location = 0;
    }

    if (v7)
    {
      range1.length = 0;
    }

    else
    {
      range1.length = v4;
    }
  }

  else
  {
    range1.length = v3 - range1.location;
  }

  return range1;
}

unint64_t NSSubtractRange(unint64_t result, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t *a5, unint64_t *a6)
{
  v6 = result + a2;
  v7 = a3 + a4;
  v8 = a3 + a4 > result && v6 > a3;
  if (v8)
  {
    if (a3 <= result)
    {
      v10 = v6 >= v7;
      v11 = v6 - v7;
      if (!v10)
      {
        v11 = 0;
      }

      *a5 = v7;
      a5[1] = v11;
    }

    else
    {
      *a5 = result;
      a5[1] = a3 - result;
      v8 = v6 > v7;
      v9 = v6 - v7;
      if (v8)
      {
        *a6 = v7;
        a6[1] = v9;
        return result;
      }
    }
  }

  else
  {
    *a5 = 0;
    a5[1] = 0;
  }

  *a6 = 0;
  a6[1] = 0;
  return result;
}

NSRange NSRangeFromString(NSString *aString)
{
  v1 = aString;
  v13 = *MEMORY[0x1E69E9840];
  if (aString)
  {
    v11 = 0;
    v2 = v12;
    if (![(NSString *)aString getCString:v12 maxLength:100 encoding:4])
    {
      v2 = [v1 UTF8String];
    }

    v3 = *v2;
    if (*v2)
    {
      v4 = 0;
      while (v3 != 43 && (v3 - 58) <= 0xFFFFFFF5)
      {
        v5 = v4 + 1;
        v3 = *(v2 + 1 + v4++);
        if (!v3)
        {
          goto LABEL_13;
        }
      }

      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

LABEL_13:
    v1 = _NSCStringToUnsignedLong((v2 + v5), &v11);
    v7 = &v11[-v2];
    v8 = *v11;
    if (*v11)
    {
      while (v8 != 43 && (v8 - 58) <= 0xFFFFFFF5)
      {
        v9 = v7 + 1;
        v8 = (v7++)[v2 + 1];
        if (!v8)
        {
          goto LABEL_19;
        }
      }
    }

    v9 = v7;
LABEL_19:
    v6 = _NSCStringToUnsignedLong(&v9[v2], &v11);
  }

  else
  {
    v6 = 0;
  }

  v10 = v1;
  result.length = v6;
  result.location = v10;
  return result;
}

SEL _selectorForCoercion(uint64_t a1, void *a2)
{
  v2 = _coercionClassStringFromClass(a2);
  v3 = objc_opt_class();
  v4 = [NSString stringWithFormat:@"_NSItemProviderTypeCoercion_coerced%@ValueFrom%@Value:error:", v2, _coercionClassStringFromClass(v3)];

  return NSSelectorFromString(v4);
}

NSString *_coercionClassStringFromClass(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  if (qword_1ED43FB50 != -1)
  {
    dispatch_once(&qword_1ED43FB50, &__block_literal_global_45);
  }

  v11 = 0u;
  v12 = 0u;
  v9 = 0u;
  v10 = 0u;
  v2 = _MergedGlobals_118;
  result = [_MergedGlobals_118 countByEnumeratingWithState:&v9 objects:v8 count:16];
  if (result)
  {
    v4 = result;
    v5 = *v10;
    while (2)
    {
      v6 = 0;
      do
      {
        if (*v10 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(*(&v9 + 1) + 8 * v6);
        if ([a1 isSubclassOfClass:v7])
        {
          return NSStringFromClass(v7);
        }

        v6 = (v6 + 1);
      }

      while (v4 != v6);
      result = [v2 countByEnumeratingWithState:&v9 objects:v8 count:16];
      v4 = result;
      if (result)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

id ___coercionClassStringFromClass_block_invoke()
{
  v13 = *MEMORY[0x1E69E9840];
  Class = objc_getClass("UIImage");
  v1 = objc_opt_class();
  if (Class)
  {
    v9 = v1;
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = Class;
    v2 = MEMORY[0x1E695DEC8];
    v3 = &v9;
    v4 = 4;
  }

  else
  {
    v6 = v1;
    v7 = objc_opt_class();
    v8 = objc_opt_class();
    v2 = MEMORY[0x1E695DEC8];
    v3 = &v6;
    v4 = 3;
  }

  _MergedGlobals_118 = [v2 arrayWithObjects:v3 count:{v4, v6, v7, v8, v9, v10, v11, v12, v13}];
  return _MergedGlobals_118;
}

void sub_1810FDC70(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16)
{
  objc_sync_exit(v16);
  _Block_object_dispose(&a16, 8);
  _Unwind_Resume(a1);
}

void sub_1810FDFE8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 88), 8);
  objc_sync_exit(v10);
  _Unwind_Resume(a1);
}

uint64_t __NSDescribeDelayedPerformCallout(uint64_t a1, uint64_t a2, char *a3, size_t a4, char *a5, size_t a6, uint64_t *a7)
{
  v22 = *MEMORY[0x1E69E9840];
  v12 = *a2;
  v13 = *(a2 + 8);
  ClassName = object_getClassName(*a2);
  Name = sel_getName(v13);
  if (a7)
  {
    *a7 = object_getMethodImplementation();
  }

  v16 = "<unknown name>";
  if (ClassName)
  {
    v16 = ClassName;
  }

  v17 = "<unknown selector>";
  if (Name)
  {
    v17 = Name;
  }

  snprintf(a5, a6, "(Delayed Perform) %s %s", v16, v17);
  Class = object_getClass(v12);
  memset(&v21, 0, sizeof(v21));
  result = dladdr(Class, &v21);
  if (result)
  {
    dli_fname = v21.dli_fname;
    if (!v21.dli_fname)
    {
      dli_fname = "<unknown library>";
    }

    return snprintf(a3, a4, "%s", dli_fname);
  }

  return result;
}

uint64_t _NSScanHexDoubleFromString(void *a1, void *a2, void *a3, unint64_t *a4, void *a5)
{
  v44 = *MEMORY[0x1E69E9840];
  v9 = [a5 objectForKey:*MEMORY[0x1E695D990]];
  if (v9 || (v9 = [a5 objectForKey:@"NSDecimalSeparator"]) != 0)
  {
    v10 = v9;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      v10 = 0;
      goto LABEL_10;
    }

    v10 = [a5 decimalSeparator];
    if (!v10)
    {
      goto LABEL_10;
    }
  }

  if (![v10 length])
  {
LABEL_10:
    v11 = 46;
    goto LABEL_11;
  }

  v11 = [v10 characterAtIndex:0];
LABEL_11:
  v43 = 0u;
  v41 = 0u;
  memset(v42, 0, sizeof(v42));
  v40 = 0u;
  v12 = *a4;
  v13 = [a1 length];
  *(&v41 + 1) = v13;
  *&v42[0] = v12;
  *&v41 = a1;
  if (v13 <= v12)
  {
    *&v40 = 0;
    v15 = 0xFFFF;
  }

  else
  {
    if (v13 - v12 >= 0x20)
    {
      v14 = 32;
    }

    else
    {
      v14 = v13 - v12;
    }

    *&v40 = v14;
    [a1 getUid("getCharacters:v42 + 8 range:{v12, v14}")];
    v15 = WORD4(v42[0]);
  }

  WORD4(v43) = v15;
  v16 = 1;
  *(&v40 + 1) = 1;
  if (a2)
  {
    if ([a2 characterIsMember:?])
    {
      do
      {
        v17 = *(&v40 + 1);
        if (*(&v40 + 1) - 1 >= v40)
        {
          break;
        }

        if (*(&v40 + 1) >= v40)
        {
          v19 = *&v42[0] + v40;
          if (*(&v41 + 1) > *&v42[0] + v40)
          {
            if (*(&v41 + 1) - (*&v42[0] + v40) >= 0x20uLL)
            {
              v20 = 32;
            }

            else
            {
              v20 = *(&v41 + 1) - (*&v42[0] + v40);
            }

            *&v42[0] += v40;
            *&v40 = v20;
            [v41 getUid("getCharacters:v42 + 8 range:{v19, v20}")];
            WORD4(v43) = WORD4(v42[0]);
            *(&v40 + 1) = 1;
            continue;
          }

          *(&v40 + 1) = v40 + 1;
          v18 = -1;
        }

        else
        {
          ++*(&v40 + 1);
          v18 = *(v42 + v17 + 4);
        }

        WORD4(v43) = v18;
      }

      while (([a2 characterIsMember:?] & 1) != 0);
    }

    v15 = WORD4(v43);
    v16 = *(&v40 + 1);
  }

  v21 = *a4;
  v37 = v15;
  if (v15 <= 0x7F && (*(MEMORY[0x1E69E9830] + 4 * v15 + 60) & 0x4000) != 0)
  {
    return 0;
  }

  v22 = 0;
  v33 = v16 + *&v42[0] + ~v21;
  while (_NSCheckDecimalSeparator(&v40, &v37, v11, v10))
  {
    if (v22 >= 0x3F)
    {
      goto LABEL_49;
    }

    v23 = 46;
LABEL_39:
    *(&v38 + v22) = v23;
    v24 = *(&v40 + 1);
    if (*(&v40 + 1) < v40)
    {
      ++*(&v40 + 1);
      v25 = *(v42 + v24 + 4);
LABEL_47:
      WORD4(v43) = v25;
      goto LABEL_48;
    }

    v26 = *&v42[0] + v40;
    if (*(&v41 + 1) <= *&v42[0] + v40)
    {
      *(&v40 + 1) = v40 + 1;
      v25 = -1;
      goto LABEL_47;
    }

    if (*(&v41 + 1) - (*&v42[0] + v40) >= 0x20uLL)
    {
      v27 = 32;
    }

    else
    {
      v27 = *(&v41 + 1) - (*&v42[0] + v40);
    }

    *&v42[0] += v40;
    *&v40 = v27;
    [v41 getUid("getCharacters:v42 + 8 range:{v26, v27}")];
    v25 = WORD4(v42[0]);
    WORD4(v43) = WORD4(v42[0]);
    *(&v40 + 1) = 1;
LABEL_48:
    v37 = v25;
    ++v22;
  }

  v23 = v37;
  if (v37 <= 0x7Fu && v22 <= 0x3E)
  {
    goto LABEL_39;
  }

LABEL_49:
  v28 = &v38;
  *(&v38 + v22) = 0;
  v36 = 0;
  v35 = 0;
  v29 = v38;
  if (v38 == 45 || v38 == 43)
  {
    v28 = &v39;
    v29 = v39;
  }

  if (v29 != 48 || (v28[1] | 0x20) != 0x78)
  {
    return 0;
  }

  v30 = v28[2];
  if ((v30 - 48) >= 0xA)
  {
    result = 0;
    v32 = v30 - 65;
    if (v32 > 0x25 || ((1 << v32) & 0x3F0000003FLL) == 0)
    {
      return result;
    }
  }

  if (sscanf_l(&v38, 0, "%la%n", &v36, &v35) < 1)
  {
    return 0;
  }

  *a4 += v33 + v35;
  if (a3)
  {
    *a3 = v36;
  }

  return 1;
}

uint64_t _NSExtensionClass()
{
  if (qword_1ED43FB60 != -1)
  {
    dispatch_once(&qword_1ED43FB60, &__block_literal_global_47);
  }

  return _MergedGlobals_119;
}

uint64_t sub_1811027C4()
{
  v1 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  v2 = *(v0 + 16);

  return v2(v0, 0, v1);
}

uint64_t sub_181102854()
{
  if (v0)
  {
    *v0 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  }

  return 0;
}

uint64_t sub_1811028CC()
{
  v1 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  v2 = *(v0 + 16);

  return v2(v0, 0, v1);
}

uint64_t sub_18110295C()
{
  v1 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  v2 = *(v0 + 16);

  return v2(v0, 0, v1);
}

uint64_t sub_1811029EC()
{
  v1 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  v2 = *(v0 + 16);

  return v2(v0, 0, v1);
}

uint64_t sub_181102B0C()
{
  if (v0)
  {
    *v0 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  }

  return 0;
}

uint64_t sub_181102B84()
{
  if (v0)
  {
    *v0 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  }

  return 0;
}

uint64_t sub_181102CD0()
{
  v1 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  v2 = *(v0 + 16);

  return v2(v0, v1);
}

uint64_t sub_181102D5C()
{
  v1 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:3072 userInfo:0];
  v2 = *(v0 + 16);

  return v2(v0, v1);
}

uint64_t preferredTermOfAddressForLanguageFromList(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  result = [a2 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (result)
  {
    v5 = result;
    v6 = *v11;
LABEL_3:
    v7 = 0;
    while (1)
    {
      if (*v11 != v6)
      {
        objc_enumerationMutation(a2);
      }

      v8 = *(*(&v10 + 1) + 8 * v7);
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        if ([v8 _isSupportedInLanguage:a1])
        {
          result = [v8 _withExtrapolatedPronouns];
          if (result)
          {
            break;
          }
        }
      }

      if (v5 == ++v7)
      {
        result = [a2 countByEnumeratingWithState:&v10 objects:v9 count:16];
        v5 = result;
        if (result)
        {
          goto LABEL_3;
        }

        return result;
      }
    }
  }

  return result;
}

NSXPCInterface *_NSBundleResourceRequestServerInterface()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&unk_1EEF9CE98];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v0, "setClasses:forSelector:argumentIndex:ofReply:", [v1 setWithObjects:{v2, v3, objc_opt_class(), 0}], sel_tagStateInBundle_completionHandler_, 0, 1);
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v0, "setClasses:forSelector:argumentIndex:ofReply:", [v4 setWithObjects:{v5, objc_opt_class(), 0}], sel_beginODRSessionWithBundleURL_completionHandler_, 0, 1);
  v6 = MEMORY[0x1E695DFD8];
  v7 = objc_opt_class();
  -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v0, "setClasses:forSelector:argumentIndex:ofReply:", [v6 setWithObjects:{v7, objc_opt_class(), 0}], sel_beginWithBundleURL_completionHandler_, 0, 1);
  v8 = MEMORY[0x1E695DFD8];
  v9 = objc_opt_class();
  -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v0, "setClasses:forSelector:argumentIndex:ofReply:", [v8 setWithObjects:{v9, objc_opt_class(), 0}], sel_pinTags_inBundle_priority_completionHandler_, 0, 0);
  v10 = MEMORY[0x1E695DFD8];
  v11 = objc_opt_class();
  v12 = objc_opt_class();
  -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v0, "setClasses:forSelector:argumentIndex:ofReply:", [v10 setWithObjects:{v11, v12, objc_opt_class(), 0}], sel_pinTags_inBundle_priority_completionHandler_, 0, 1);
  v13 = MEMORY[0x1E695DFD8];
  v14 = objc_opt_class();
  -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v0, "setClasses:forSelector:argumentIndex:ofReply:", [v13 setWithObjects:{v14, objc_opt_class(), 0}], sel_conditionallyPinTags_inBundle_completionHandler_, 0, 0);
  v15 = MEMORY[0x1E695DFD8];
  v16 = objc_opt_class();
  v17 = objc_opt_class();
  -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v0, "setClasses:forSelector:argumentIndex:ofReply:", [v15 setWithObjects:{v16, v17, objc_opt_class(), 0}], sel_conditionallyPinTags_inBundle_completionHandler_, 1, 1);
  v18 = MEMORY[0x1E695DFD8];
  v19 = objc_opt_class();
  -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v0, "setClasses:forSelector:argumentIndex:ofReply:", [v18 setWithObjects:{v19, objc_opt_class(), 0}], sel_setLoadingPriority_forTags_inBundle_, 1, 0);
  v20 = MEMORY[0x1E695DFD8];
  v21 = objc_opt_class();
  -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v0, "setClasses:forSelector:argumentIndex:ofReply:", [v20 setWithObjects:{v21, objc_opt_class(), 0}], sel_unpinTags_inBundle_completionHandler_, 0, 0);
  v22 = MEMORY[0x1E695DFD8];
  v23 = objc_opt_class();
  v24 = objc_opt_class();
  -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v0, "setClasses:forSelector:argumentIndex:ofReply:", [v22 setWithObjects:{v23, v24, objc_opt_class(), 0}], sel_unpinTags_inBundle_completionHandler_, 0, 1);
  v25 = MEMORY[0x1E695DFD8];
  v26 = objc_opt_class();
  -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v0, "setClasses:forSelector:argumentIndex:ofReply:", [v25 setWithObjects:{v26, objc_opt_class(), 0}], sel_okToPurgeAssetPacks_, 0, 0);
  v27 = MEMORY[0x1E695DFD8];
  v28 = objc_opt_class();
  -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v0, "setClasses:forSelector:argumentIndex:ofReply:", [v27 setWithObjects:{v28, objc_opt_class(), 0}], sel_setPreservationPriority_forTags_inBundle_, 1, 0);
  v29 = MEMORY[0x1E695DFD8];
  v30 = objc_opt_class();
  -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v0, "setClasses:forSelector:argumentIndex:ofReply:", [v29 setWithObjects:{v30, objc_opt_class(), 0}], sel_setAlwaysPreserved_forTags_inBundle_, 1, 0);
  return v0;
}

void sub_18110504C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 88), 8);
  _Unwind_Resume(a1);
}

void sub_181105494(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 88), 8);
  _Unwind_Resume(a1);
}

void _setupConnection(void *a1)
{
  v11 = *MEMORY[0x1E69E9840];
  [a1 setRemoteObjectInterface:_NSBundleResourceRequestServerInterface()];
  [a1 setExportedInterface:{+[NSXPCInterface interfaceWithProtocol:](NSXPCInterface, "interfaceWithProtocol:", &unk_1EEF80730)}];
  [a1 setExportedObject:objc_opt_new()];
  [a1 resume];
  v6 = 0;
  v7 = &v6;
  v8 = 0x2020000000;
  v9 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = ___setupConnection_block_invoke;
  v5[3] = &unk_1E69F39B0;
  v5[4] = &v6;
  v2 = [a1 synchronousRemoteObjectProxyWithErrorHandler:v5];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___setupConnection_block_invoke_2;
  v4[3] = &unk_1E69F6218;
  v4[4] = &v6;
  [v2 hello:v4];
  if ((v7[3] & 1) == 0)
  {
    if (qword_1ED439B00 != -1)
    {
      dispatch_once(&qword_1ED439B00, &__block_literal_global_349);
    }

    v3 = qword_1ED439AF8;
    if (os_log_type_enabled(qword_1ED439AF8, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_error_impl(&dword_18075C000, v3, OS_LOG_TYPE_ERROR, "NSBundleResourceRequest could not connect to its helper daemon", buf, 2u);
    }
  }

  _Block_object_dispose(&v6, 8);
}

void sub_181106BB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSXPCInterface *_appExtensionInterface()
{
  v0 = [NSXPCInterface interfaceWithProtocol:&unk_1EEF80898];
  v1 = MEMORY[0x1E695DFD8];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v0, "setClasses:forSelector:argumentIndex:ofReply:", [v1 setWithObjects:{v2, v3, objc_opt_class(), 0}], sel_hostApplicationAssetPacksBecameAvailable_, 0, 0);
  v4 = MEMORY[0x1E695DFD8];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  -[NSXPCInterface setClasses:forSelector:argumentIndex:ofReply:](v0, "setClasses:forSelector:argumentIndex:ofReply:", [v4 setWithObjects:{v5, v6, objc_opt_class(), 0}], sel_hostApplicationAssetPacksBecameUnavailable_, 0, 0);
  return v0;
}

void ___endAccessingResources_block_invoke(uint64_t a1)
{
  v2 = *(a1 + 40);
}

void ___endAccessingResources_block_invoke_2(uint64_t a1, void *a2)
{
  [*(a1 + 32) assetPacksBecameUnavailable:a2 error:0];
  [objc_msgSend(*(a1 + 40) "remoteObjectProxy")];

  v4 = *(a1 + 56);
}

void sub_18110A10C(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [v1 invalidate];
  }

  _Unwind_Resume(exception_object);
}

uint64_t isEqualCStringToString(unsigned __int8 *a1, unint64_t a2, void *a3)
{
  v4 = a2;
  v21 = *MEMORY[0x1E69E9840];
  if ([a3 length] != a2)
  {
    return 0;
  }

  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v17 = a3;
  v18 = v4;
  if (v4)
  {
    if (v4 >= 0x20)
    {
      v6 = 32;
    }

    else
    {
      v6 = v4;
    }

    v16 = v6;
    [a3 getUid("getCharacters:v19 range:{0, v6}")];
    v7 = LOWORD(v19[0]);
    LOWORD(v20) = v19[0];
    v8 = _NSCStringCharToUnicharTable;
    v9 = 1;
    while (1)
    {
      v10 = *a1++;
      v11 = *(v8 + 2 * v10);
      v12 = v11 == v7;
      if (v11 != v7)
      {
        return v12;
      }

      if (v9 >= v16)
      {
        v13 = *(&v18 + 1) + v16;
        if (v18 > *(&v18 + 1) + v16)
        {
          if (v18 - (*(&v18 + 1) + v16) >= 0x20)
          {
            v14 = 32;
          }

          else
          {
            v14 = v18 - (*(&v18 + 1) + v16);
          }

          *(&v18 + 1) += v16;
          v16 = v14;
          [v17 getUid("getCharacters:v19 range:{v13, v14}")];
          v7 = LOWORD(v19[0]);
          LOWORD(v20) = v19[0];
          v8 = _NSCStringCharToUnicharTable;
          v9 = 1;
          goto LABEL_17;
        }

        v9 = v16 + 1;
        v7 = 0xFFFF;
      }

      else
      {
        v7 = *(v19 + v9++);
      }

      LOWORD(v20) = v7;
LABEL_17:
      if (!--v4)
      {
        return v12;
      }
    }
  }

  return 1;
}

uint64_t initUTTypeConformsTo_1(uint64_t a1, uint64_t a2)
{
  v4 = MobileCoreServicesLibrary_1();
  v5 = dlsym(v4, "UTTypeConformsTo");
  off_1ED4398A0[0] = v5;
  if (!v5)
  {
    __assert_rtn("initUTTypeConformsTo", "NSString+NSItemProvider.m", 23, "softLinkUTTypeConformsTo");
  }

  return (v5)(a1, a2);
}

uint64_t initkUTTypeFileURL_0()
{
  v0 = MobileCoreServicesLibrary_1();
  v1 = dlsym(v0, "kUTTypeFileURL");
  if (!v1)
  {
    __assert_rtn("initkUTTypeFileURL", "NSString+NSItemProvider.m", 18, "constant");
  }

  result = *v1;
  constantkUTTypeFileURL_0 = result;
  off_1ED439898[0] = kUTTypeFileURLFunction_0;
  return result;
}

uint64_t _NSNullCompare(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    return -1;
  }

  else
  {
    return 0;
  }
}

void _inputStreamCallbackFunc(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 retainedDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 stream:a1 handleEvent:a2];
  }
}

void _outputStreamCallbackFunc(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = [a3 retainedDelegate];
  if (objc_opt_respondsToSelector())
  {
    [v5 stream:a1 handleEvent:a2];
  }
}

void sub_18111239C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 88), 8);
  _Unwind_Resume(a1);
}

uint64_t _NSEncodingToNewDataForExtendedAttribute(unint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = CFStringConvertNSStringEncodingToEncoding(a1);
  if (v1 == -1)
  {
    return 0;
  }

  v2 = v1;
  usedBufLen = 0;
  v3 = CFStringConvertEncodingToIANACharSetName(v1);
  if (v3)
  {
    v4 = v3;
    v10.length = CFStringGetLength(v3);
    v10.location = 0;
    if (CFStringGetBytes(v4, v10, 0x8000100u, 0x3Fu, 1u, buffer, 70, &usedBufLen))
    {
      v5 = usedBufLen;
    }

    else
    {
      v5 = 0;
      usedBufLen = 0;
    }
  }

  else
  {
    v5 = 0;
  }

  snprintf_l(&buffer[v5], 0x63uLL, 0, ";%u", v2);
  return [objc_alloc(MEMORY[0x1E695DEF0]) initWithBytes:buffer length:strlen(buffer)];
}

uint64_t _NSEncodingFromDataForExtendedAttribute(void *a1)
{
  v15 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    return 0xFFFFFFFFLL;
  }

  v2 = [a1 bytes];
  v3 = [a1 length];
  v4 = &v2[v3];
  v5 = v2;
  if (v3 >= 1)
  {
    v5 = v2;
    do
    {
      if (*v5 == 59)
      {
        break;
      }

      ++v5;
    }

    while (v5 < v4);
  }

  if (v5 >= v4 - 1 || ((v6 = v4 - (v5 + 1), v6 >= 0x63) ? (v7 = 99) : (v7 = v6), (__memcpy_chk(), v14[v7] = 0, encoding = 0, sscanf_l(v14, 0, "%u", &encoding) != 1) || !CFStringIsEncodingAvailable(encoding) || (v8 = CFStringConvertEncodingToNSStringEncoding(encoding), v8 == 0xFFFFFFFF)))
  {
    if (v5 > v2)
    {
      v9 = CFStringCreateWithBytes(0, v2, v5 - v2, 0x8000100u, 1u);
      if (v9)
      {
        v10 = v9;
        v11 = CFStringConvertIANACharSetNameToEncoding(v9);
        if (v11 == -1)
        {
          v8 = 0xFFFFFFFFLL;
        }

        else
        {
          v8 = CFStringConvertEncodingToNSStringEncoding(v11);
        }

        CFRelease(v10);
        return v8;
      }
    }

    return 0xFFFFFFFFLL;
  }

  return v8;
}

uint64_t writeStringToURLOrPath(void *a1, void *a2, unsigned int a3, uint64_t a4, NSError **a5)
{
  v13[1] = *MEMORY[0x1E69E9840];
  v12 = 0;
  v13[0] = 0;
  result = [a1 getExternalRepresentation:v13 extendedAttributes:&v12 forWritingToURLOrPath:a2 usingEncoding:a4 error:a5];
  if (result)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (([a2 isFileURL] & 1) == 0)
      {
        return [v13[0] writeToURL:a2 options:a3 error:a5];
      }

      v9 = [a2 path];
      if (!v9)
      {
        if (!a5)
        {
          return 0;
        }

        v10 = _NSErrorWithFilePath(4, a2);
        result = 0;
        *a5 = v10;
        return result;
      }
    }

    else
    {
      v9 = a2;
    }

    v11 = [v12 objectForKey:@"com.apple.TextEncoding"];
    if (v11)
    {
      return [MEMORY[0x1E695DEF0] _writeDataToPath:v9 data:v13[0] options:a3 stringEncodingAttributeData:v11 reportProgress:0 error:a5];
    }

    else
    {
      return [MEMORY[0x1E695DEF0] _writeDataToPath:v9 data:v13[0] options:a3 reportProgress:0 error:a5];
    }
  }

  return result;
}

CFStringRef _NSNewInlineCString(const UInt8 *a1, CFIndex a2)
{
  v4 = *MEMORY[0x1E695E480];
  SystemEncoding = CFStringGetSystemEncoding();

  return CFStringCreateWithBytes(v4, a1, a2, SystemEncoding, 0);
}

uint64_t NSCompareCharacters@<X0>(unsigned __int16 *a1@<X0>, unsigned __int16 *a2@<X1>, unint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if (a3 >= a4)
  {
    v6 = a4;
  }

  else
  {
    v6 = a3;
  }

  if (v6)
  {
    while (1)
    {
      v8 = *a1++;
      v7 = v8;
      v10 = *a2++;
      v9 = v10;
      if (a5)
      {
        if ((v7 - 97) < 0x1A)
        {
          LOWORD(v7) = v7 - 32;
        }

        if ((v9 - 97) < 0x1A)
        {
          LOWORD(v9) = v9 - 32;
        }
      }

      if (v7 > v9)
      {
        a6 = 1;
      }

      if (v7 < v9)
      {
        a6 = -1;
      }

      if (v7 != v9)
      {
        break;
      }

      if (!--v6)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_16:
    a6 = a3 > a4;
    if (a3 < a4)
    {
      return -1;
    }
  }

  return a6;
}

uint64_t NSCompareCString(unsigned __int8 *a1, unsigned __int8 *a2, unint64_t a3, unint64_t a4, char a5)
{
  if (a3 >= a4)
  {
    v5 = a4;
  }

  else
  {
    v5 = a3;
  }

  if (v5)
  {
    v6 = &_MergedGlobals_143;
    while (1)
    {
      v7 = *a1++;
      v8 = *(_NSCStringCharToUnicharTable + 2 * v7);
      v9 = *a2++;
      v10 = *(_NSCStringCharToUnicharTable + 2 * v9);
      if (a5)
      {
        if ((v8 - 97) < 0x1A)
        {
          LOWORD(v8) = v8 - 32;
        }

        if ((v10 - 97) < 0x1A)
        {
          LOWORD(v10) = v10 - 32;
        }
      }

      if (v8 > v10)
      {
        v6 = 1;
      }

      if (v8 < v10)
      {
        v6 = -1;
      }

      if (v8 != v10)
      {
        break;
      }

      if (!--v5)
      {
        goto LABEL_17;
      }
    }
  }

  else
  {
LABEL_17:
    v6 = a3 > a4;
    if (a3 < a4)
    {
      return -1;
    }
  }

  return v6;
}

uint64_t __NSCharToUnicharCFWrapper(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v4 = 0;
  v1 = (*MEMORY[0x1E695E0A0])(0, a1, &v4);
  v2 = v4;
  if (!v1)
  {
    return -3;
  }

  return v2;
}

uint64_t _NSConvertToASCIIorUnicode(unsigned __int16 *a1, size_t a2, unint64_t a3, void *a4, void *a5, _BYTE *a6, malloc_zone_t *zone)
{
  v7 = zone;
  v21 = *MEMORY[0x1E69E9840];
  v19 = 0u;
  memset(v20, 0, 496);
  v11 = _NSConvertToASCIIorUnicode2(a1, a2, a3, 0, &v19, zone);
  if (v11)
  {
    v12 = v19;
    v13 = 16;
    if (v19)
    {
      v13 = 8;
    }

    v14 = *(&v20[-1] + v13);
    if (BYTE1(v19) == 1)
    {
      *a4 = v14;
    }

    else if (v14)
    {
      v15 = *(&v20[0] + 1) << (v19 ^ 1u);
      if (!v7)
      {
        v7 = malloc_default_zone();
      }

      v16 = malloc_type_zone_malloc(v7, v15, 0x409734D7uLL);
      *a4 = v16;
      v17 = v20;
      if (v19)
      {
        v17 = &v19 + 1;
      }

      memmove(v16, *v17, *(&v20[0] + 1) << (v19 ^ 1u));
      v12 = v19;
    }

    else
    {
      *a4 = 0;
    }

    *a5 = *(&v20[0] + 1);
    *a6 = v12;
  }

  return v11;
}

void sub_18111960C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  if (a12)
  {
    [a12 invalidate];
  }

  _Unwind_Resume(exception_object);
}

void COPY_SETTER_IMPL(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = atomic_load((a1 + 56));
  if ((v4 & 0x100000000) != 0)
  {
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
    v8 = @"task already launched";
    goto LABEL_8;
  }

  if (!a2)
  {
    v8 = [NSString stringWithFormat:@"%@", a4];
    v6 = MEMORY[0x1E695DF30];
    v7 = *MEMORY[0x1E695D940];
LABEL_8:
    objc_exception_throw([v6 exceptionWithName:v7 reason:v8 userInfo:0]);
  }

  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = __COPY_SETTER_IMPL_block_invoke;
  v11 = &unk_1E69F6418;
  v12 = a2;
  v13 = a3;
  os_unfair_lock_lock((a1 + 8));
  if (!*(a1 + 16))
  {
    *(a1 + 16) = +[NSTask currentTaskDictionary];
  }

  (v10)(v9);
  os_unfair_lock_unlock((a1 + 8));
}

id COPY_GETTER_IMPL(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__16;
  v14 = __Block_byref_object_dispose__16;
  v15 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __COPY_GETTER_IMPL_block_invoke;
  v7 = &unk_1E69F6440;
  v8 = a2;
  v9 = &v10;
  os_unfair_lock_lock((a1 + 8));
  if (!*(a1 + 16))
  {
    *(a1 + 16) = +[NSTask currentTaskDictionary];
  }

  (v6)(v5);
  os_unfair_lock_unlock((a1 + 8));
  v3 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v3;
}

void sub_18111CFDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id GETTER_IMPL(uint64_t a1, uint64_t a2)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x3052000000;
  v13 = __Block_byref_object_copy__16;
  v14 = __Block_byref_object_dispose__16;
  v15 = 0;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __GETTER_IMPL_block_invoke;
  v7 = &unk_1E69F6440;
  v8 = a2;
  v9 = &v10;
  os_unfair_lock_lock((a1 + 8));
  if (!*(a1 + 16))
  {
    *(a1 + 16) = +[NSTask currentTaskDictionary];
  }

  (v6)(v5);
  os_unfair_lock_unlock((a1 + 8));
  v3 = v11[5];
  _Block_object_dispose(&v10, 8);
  return v3;
}

void sub_18111D1A0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void NOCOPY_SETTER_IMPL(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = atomic_load((a1 + 56));
  if ((v3 & 0x100000000) != 0)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"task already launched" userInfo:0]);
  }

  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v6 = __NOCOPY_SETTER_IMPL_block_invoke;
  v7 = &unk_1E69F6418;
  v8 = a2;
  v9 = a3;
  os_unfair_lock_lock((a1 + 8));
  if (!*(a1 + 16))
  {
    *(a1 + 16) = +[NSTask currentTaskDictionary];
  }

  (v6)(v5);
  os_unfair_lock_unlock((a1 + 8));
}

void sub_18111D6AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

unint64_t *_signalRunningTask(unint64_t *result, const char *a2)
{
  v2 = atomic_load(result + 7);
  if ((v2 & 0x100000000) == 0)
  {
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"%@: task not launched", _NSMethodExceptionProem(result, a2)), 0}];
    objc_exception_throw(v3);
  }

  return result;
}

void __PTHREAD_SPAWN_EAGAIN_OVERLIMIT__()
{
  v2 = *MEMORY[0x1E69E9840];
  v0 = _NSOSLog();
  if (os_log_type_enabled(v0, OS_LOG_TYPE_FAULT))
  {
    *v1 = 0;
    _os_log_fault_impl(&dword_18075C000, v0, OS_LOG_TYPE_FAULT, "NSTask: Failed to spawn task due to receieving EAGAIN many times despite retrying; this means the system could not spawn a new process.", v1, 2u);
  }
}

uint64_t __NSThread__block_start__(void *a1)
{
  if (qword_1ED43F458 != -1)
  {
    dispatch_once(&qword_1ED43F458, &__block_literal_global_250);
  }

  pthread_setspecific(qword_1ED43F450, a1);
  v2 = objc_autoreleasePoolPush();
  (*(a1 + 2))(a1);
  objc_autoreleasePoolPop(v2);
  return 0;
}

void __NSDescribeTimerCallout(uint64_t a1, uint64_t a2, char *a3, size_t a4, char *a5, size_t a6, uint64_t *a7)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a2)
  {
    v12 = *(a2 + 8);
    v13 = *(a2 + 16);
    ClassName = object_getClassName(v12);
    Name = sel_getName(v13);
    *a7 = object_getMethodImplementation();
    v16 = "<unknown class name>";
    if (ClassName)
    {
      v16 = ClassName;
    }

    v17 = "<unknown selector>";
    if (Name)
    {
      v17 = Name;
    }

    snprintf(a5, a6, "(NSTimer) [%s %s]", v16, v17);
    Class = object_getClass(v12);
    memset(&v20, 0, sizeof(v20));
    if (dladdr(Class, &v20))
    {
      dli_fname = v20.dli_fname;
      if (!v20.dli_fname)
      {
        dli_fname = "<unknown library>";
      }

      snprintf(a3, a4, "%s", dli_fname);
    }
  }
}

void sub_181125400(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, ...)
{
  va_start(va, a12);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181127540(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 104), 8);
  _Unwind_Resume(a1);
}

void sub_181127858(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id sub_181129A08(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17.receiver = v15;
  v17.super_class = NSURLComponents;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_181129A98(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17.receiver = v15;
  v17.super_class = NSURLComponents;
  return objc_msgSendSuper2(&v17, sel_init);
}

id sub_181129B28(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, objc_super a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v17.receiver = v15;
  v17.super_class = NSURLComponents;
  return objc_msgSendSuper2(&v17, sel_init);
}

uint64_t __swifturlClass_block_invoke()
{
  result = objc_opt_class();
  qword_1ED43FC10 = result;
  return result;
}

uint64_t NSURLReportAssertionFailure(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *MEMORY[0x1E69E9848];
  if (a4)
  {
    return fprintf(v4, "=================\nASSERTION FAILED: %s (%s:%ld %s)\n=================\n");
  }

  else
  {
    return fprintf(v4, "=================\nSHOULD NEVER BE REACHED (%s:%ld %s)\n=================\n");
  }
}

uint64_t NSURLReportAssertionFailureWithMessage(const char *a1, uint64_t a2, const char *a3, const char *a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v14 = MEMORY[0x1E69E9848];
  fwrite("=================\nASSERTION FAILED: ", 0x24uLL, 1uLL, *MEMORY[0x1E69E9848]);
  vfprintf_l(*v14, 0, a5, &a9);
  return fprintf(*v14, "\n%s (%s:%ld %s)\n=================\n", a4, a1, a2, a3);
}

uint64_t NSURLReportFatalError(const char *a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = MEMORY[0x1E69E9848];
  fwrite("=================\nFATAL ERROR: ", 0x1FuLL, 1uLL, *MEMORY[0x1E69E9848]);
  vfprintf_l(*v13, 0, a4, &a9);
  return fprintf(*v13, "\n(%s:%ld %s)\n=================\n", a1, a2, a3);
}

uint64_t NSURLReportError(const char *a1, uint64_t a2, const char *a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v13 = MEMORY[0x1E69E9848];
  fwrite("=================\nERROR: ", 0x19uLL, 1uLL, *MEMORY[0x1E69E9848]);
  vfprintf_l(*v13, 0, a4, &a9);
  return fprintf(*v13, "\n(%s:%ld %s)\n=================\n", a1, a2, a3);
}

void NSURLLog(const char *a1, uint64_t a2, const char *a3, uint64_t a4, const char *a5, uint64_t a6, uint64_t a7, uint64_t a8, char a9)
{
  v18[1] = *MEMORY[0x1E69E9840];
  v13 = *(a4 + 16);
  if (!v13)
  {
    *(a4 + 16) = 1;
    v15 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if (v15)
    {
      v16 = v15;
      LODWORD(v18[0]) = 0;
      if (![[NSScanner scannerWithString:?], "scanHexInt:", v18])
      {
        NSLog(@"unable to parse hex value for %s (%@), logging is off", *(a4 + 8), v16);
      }

      if ((*a4 & ~LODWORD(v18[0])) == 0)
      {
        *(a4 + 16) = 2;
      }
    }

    v13 = *(a4 + 16);
  }

  if (v13 == 2)
  {
    v17 = MEMORY[0x1E69E9848];
    fprintf(*MEMORY[0x1E69E9848], "- %s:%ld %s - ", a1, a2, a3);
    v18[0] = &a9;
    vfprintf_l(*v17, 0, a5, &a9);
    if (a5[strlen(a5) - 1] != 10)
    {
      putc(10, *v17);
    }
  }
}

Class UTTypeClass()
{
  result = NSClassFromString(@"UTType");
  if (!result)
  {
    if (UTTypeClass_predicate != -1)
    {
      dispatch_once(&UTTypeClass_predicate, &__block_literal_global_1699);
    }

    return NSClassFromString(@"UTType");
  }

  return result;
}

NSLock *NSURLHostNameAddressInfoInit()
{
  qword_1ED43FC38 = objc_alloc_init(MEMORY[0x1E695DF90]);
  result = objc_alloc_init(NSLock);
  _MergedGlobals_125 = result;
  return result;
}

uint64_t resolveHostName(void *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  pthread_setname_np("com.apple.NSURLHostNameAddressInfo.resolving");
  _CFAutoreleasePoolPush();
  v2 = [a1 host];
  v7 = 0;
  v3 = [NSString stringWithCharacters:&v7 length:1];
  if (v2 && [v2 rangeOfString:v3 options:2] == 0x7FFFFFFFFFFFFFFFLL)
  {
    v4 = [v2 UTF8String];
    v5 = doResolveHostName(v2, v4, 2);
    if (!v5)
    {
      v5 = doResolveHostName(v2, v4, 30);
    }
  }

  else
  {
    v5 = 0;
  }

  [a1 hostNameResolved:v5];

  _CFAutoreleasePoolPop();
  return 0;
}

hostent *doResolveHostName(uint64_t a1, char *a2, int a3)
{
  v24 = *MEMORY[0x1E69E9840];
  v23 = 0;
  v4 = getipnodebyname(a2, a3, 0, &v23);
  v5 = v4;
  if (!v4)
  {
    return v5;
  }

  h_addrtype = v4->h_addrtype;
  v7 = h_addrtype == 30 || h_addrtype == 2;
  if (!v7 || !*v4->h_addr_list)
  {
LABEL_26:
    freehostent(v5);
    return 0;
  }

  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
LABEL_9:
  v12 = v9;
  v13 = v8;
  v14 = v10;
  do
  {
    v15 = malloc_type_calloc(1uLL, 0x30uLL, 0x1030040D19128EAuLL);
    v9 = v15;
    v8 = v15;
    if (v13)
    {
      v12->ai_next = v15;
      v8 = v13;
    }

    v16 = v5->h_addrtype;
    v15->ai_family = v16;
    *&v15->ai_socktype = 0x600000001;
    if (v16 != 2)
    {
      v15->ai_addrlen = 28;
      v19 = malloc_type_calloc(1uLL, 0x1CuLL, 0x594C0A2FuLL);
      *v19 = v9->ai_addrlen;
      v19[1] = 30;
      *(v19 + 8) = *v5->h_addr_list[v14];
      goto LABEL_18;
    }

    v17 = *v5->h_addr_list[v14];
    if (v17 != -1)
    {
      v15->ai_addrlen = 16;
      v19 = malloc_type_calloc(1uLL, 0x10uLL, 0x9415AA69uLL);
      *v19 = v9->ai_addrlen;
      v19[1] = 2;
      *(v19 + 1) = v17;
LABEL_18:
      v9->ai_addr = v19;
      v9->ai_canonname = strdup(v5->h_name);
      v10 = v14 + 1;
      v11 = 1;
      if (v5->h_addr_list[v14 + 1])
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }

    free(v15);
    v18 = &v5->h_addr_list[v14++];
    v13 = v8;
  }

  while (*(v18 + 8));
  if ((v11 & 1) == 0)
  {
    if (v8)
    {
      freeaddrinfo(v8);
    }

    goto LABEL_26;
  }

LABEL_21:
  freehostent(v5);
  if (!v8)
  {
    return 0;
  }

  v20 = [[NSURLHostNameAddressInfo alloc] _initWithAddressInfo:v8];
  v5 = v20;
  if (v20)
  {
    v21 = v20;
    [_MergedGlobals_125 lock];
    [qword_1ED43FC38 removeObjectForKey:a1];
    [qword_1ED43FC38 setObject:v5 forKey:a1];
    [_MergedGlobals_125 unlock];
  }

  return v5;
}

uint64_t _hash_compare(void *a1, void *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t NSURLLocalizedString(const char *a1)
{
  v2 = _NSFoundationBundle();
  v3 = CFStringCreateWithCStringNoCopy(0, a1, 0x8000100u, *MEMORY[0x1E695E498]);
  v4 = [v2 localizedStringForKey:v3 value:0 table:@"URL"];
  CFRelease(v3);
  return v4;
}

unint64_t escapeChars(unsigned __int8 *a1, uint64_t a2)
{
  v3 = &a1[a2];
  if (a2 >= 1)
  {
    v4 = a1;
    do
    {
      v5 = *v4;
      if ((v5 - 127) > 0xFFFFFFA1)
      {
        ++v4;
      }

      else
      {
        memmove(v4 + 3, v4 + 1, v3 - v4);
        *v4 = 37;
        v4[1] = a0123456789abcd[v5 >> 4];
        v4[2] = a0123456789abcd[v5 & 0xF];
        v3 += 2;
        v4 += 3;
      }
    }

    while (v4 < v3);
  }

  return v3 - a1;
}

void _NSUserDefaults_Log_Nonsensical_Suites(uint64_t a1)
{
  v1[5] = *MEMORY[0x1E69E9840];
  v1[0] = MEMORY[0x1E69E9820];
  v1[1] = 3221225472;
  v1[2] = ___NSUserDefaults_Log_Nonsensical_Suites_block_invoke;
  v1[3] = &unk_1E69F2C00;
  v1[4] = a1;
  if (_NSUserDefaults_Log_Nonsensical_Suites_onceToken != -1)
  {
    dispatch_once(&_NSUserDefaults_Log_Nonsensical_Suites_onceToken, v1);
  }
}

uint64_t findUnit(uint64_t *a1, double a2)
{
  v4 = malloc_type_malloc(0x40uLL, 0x1000040451B5BE8uLL);
  for (i = 0; i != 64; i += 16)
  {
    v6 = *a1++;
    v7 = convertUnitFromMeters(v6, a2);
    v8 = &v4[i];
    *v8 = v7;
    *(v8 + 1) = v6;
  }

  qsort(v4, 4uLL, 0x10uLL, compare);
  v9 = 0;
  do
  {
    v10 = v9 + 16;
    if (*&v4[v9] > 1.0)
    {
      break;
    }

    v11 = v9 == 48;
    v9 += 16;
  }

  while (!v11);
  v12 = *&v4[v10 - 8];
  free(v4);
  return v12;
}

double convertUnitFromMeters(uint64_t a1, double a2)
{
  v2 = 0.0;
  if (a1 > 1280)
  {
    if (a1 > 1282)
    {
      if (a1 == 1284)
      {
        v4 = 0.00062137;
      }

      else
      {
        if (a1 != 1283)
        {
          return v2;
        }

        v4 = 1.0936;
      }
    }

    else if (a1 == 1281)
    {
      v4 = 39.3701;
    }

    else
    {
      v4 = 3.28084;
    }

    return a2 * v4;
  }

  if (a1 > 10)
  {
    if (a1 == 11)
    {
      return a2;
    }

    if (a1 == 14)
    {
      v3 = 1000.0;
      return a2 / v3;
    }
  }

  else
  {
    if (a1 == 8)
    {
      v3 = 0.001;
      return a2 / v3;
    }

    if (a1 == 9)
    {
      v3 = 0.01;
      return a2 / v3;
    }
  }

  return v2;
}

uint64_t compare(double *a1, double *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

NSString *_stringFromEdgeInsets(void *a1)
{
  v4 = *MEMORY[0x1E69E9840];
  v2 = 0u;
  v3 = 0u;
  [a1 getValue:&v2];
  return [NSString stringWithFormat:@"{%.*g, %.*g, %.*g, %.*g}", 17, v2, 17, *(&v2 + 1), 17, v3, 17, *(&v3 + 1)];
}

void sub_181135024(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x181134FECLL);
  }

  _Unwind_Resume(a1);
}

void sub_181135190(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x18113509CLL);
  }

  _Unwind_Resume(a1);
}

void sub_1811353AC(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x181135340);
  }

  _Unwind_Resume(a1);
}

void sub_18113546C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x18113543CLL);
  }

  _Unwind_Resume(a1);
}

void sub_181135950(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x18113595CLL);
}

void sub_181138864(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x181138870);
}

void sub_1811389B4(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_begin_catch(a1);
    objc_end_catch();
    JUMPOUT(0x181138928);
  }

  _Unwind_Resume(a1);
}

uint64_t mungeUnionsAndStructures(unsigned __int8 **a1)
{
  for (i = *a1; ; i = v3 + 1)
  {
    v2 = *i;
    if (v2 > 0x7A)
    {
      break;
    }

    v3 = i;
    if (v2 == 40)
    {
      while (v2)
      {
        if (v2 == 61)
        {
          goto LABEL_18;
        }

        v4 = *++v3;
        LOBYTE(v2) = v4;
        if (v4 == 41)
        {
          goto LABEL_17;
        }
      }

      return 0;
    }

    if (v2 != 41)
    {
      goto LABEL_20;
    }

LABEL_17:
    v3 = i;
LABEL_18:
    ;
  }

  if (v2 == 123)
  {
    v3 = i;
    while (v2)
    {
      if (v2 == 61)
      {
        goto LABEL_18;
      }

      v5 = *++v3;
      LOBYTE(v2) = v5;
      if (v5 == 125)
      {
        goto LABEL_17;
      }
    }

    return 0;
  }

  if (v2 == 125)
  {
    goto LABEL_17;
  }

LABEL_20:
  *a1 = i;
  return 1;
}

void sub_18113AC84(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [v1 invalidate];
  }

  _Unwind_Resume(exception_object);
}

void sub_18113B2A0(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [v1 invalidate];
  }

  _Unwind_Resume(exception_object);
}

uint64_t __ExtensionFoundationLibraryCore_block_invoke()
{
  result = _sl_dlopen();
  qword_1ED43FC98 = result;
  return result;
}

uint64_t updateOffsetsForPosition(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, int64x2_t *a5)
{
  if (a3 < 1 || a4 <= 0 || ((v5.f64[0] = NAN, v5.f64[1] = NAN, v6 = vnegq_f64(v5), (vmaxv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a5, v6), vceqq_s64(a5[1], v6)))) & 1) != 0) || ((v8 = a5[2].i64[0], v7 = a5[2].i64[1], v8 >= 1) ? (v9 = v7 <= 0) : (v9 = 1), v9) ? (v10 = 0, v12 = 0, v13 = 0, v11 = 0, *a5 = 0u, a5[1] = 0u, v8 = 1, a5[2] = vdupq_n_s64(1uLL), v7 = 1) : (v10 = a5->i64[1], v11 = a5->i64[0], v13 = a5[1].i64[1], v12 = a5[1].i64[0]), v11 >= a2))
  {
LABEL_39:
    v21.f64[0] = NAN;
    v21.f64[1] = NAN;
    v22 = vnegq_f64(v21);
    *a5 = v22;
    a5[1] = v22;
    a5[2].i64[0] = a3;
    a5[2].i64[1] = a4;
    return result;
  }

  v14 = (result + v11);
  while (1)
  {
    v15 = &v14[-result];
    if (&v14[-result] == v12)
    {
      v16 = *v14;
      v17 = trailingBytesForUTF8[v16];
      v10 += v13;
      v13 = v16 < 0xF0 ? 1 : 2;
      v12 += v17 + 1;
      if (v17 == -1)
      {
        v13 = 0;
      }
    }

    if (v8 != a3)
    {
      v18 = a2 - v15;
      if (v18)
      {
        v19 = *v14;
        if (v19 == 10)
        {
          v18 = 1;
        }

        else if (v19 == 13)
        {
          if (v18 != 1)
          {
            if (v14[1] == 10)
            {
              v18 = 2;
            }

            else
            {
              v18 = 1;
            }
          }
        }

        else
        {
          v18 = 0;
        }
      }

      if (v18 <= 1)
      {
        v20 = 1;
      }

      else
      {
        v20 = v18;
      }

      if (v18)
      {
        v7 = 1;
      }

      else
      {
        ++v7;
      }

      v14 += v20;
      if (v18)
      {
        ++v8;
      }

      goto LABEL_38;
    }

    if (v7 == a4)
    {
      break;
    }

    ++v7;
    ++v14;
    v8 = a3;
LABEL_38:
    if (v14 >= result + a2)
    {
      goto LABEL_39;
    }
  }

  a5[2].i64[0] = a3;
  a5[2].i64[1] = a4;
  a5->i64[0] = v15;
  a5->i64[1] = v10;
  a5[1].i64[0] = v12;
  a5[1].i64[1] = v13;
  return result;
}

uint64_t __attributesFromKnownAttributeKeys_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [_NSAttributeDescriptor descriptorForAttributeKey:a2];
  if (v6)
  {
    v7 = v6;
    result = [v6 attributeValueFromValue:a3];
    if (!result)
    {
      return result;
    }

    v9 = result;
    v10 = *(a1 + 32);
    v11 = [v7 name];
    v12 = v10;
    v13 = v9;
  }

  else
  {
    v12 = *(a1 + 32);
    v13 = a3;
    v11 = a2;
  }

  return [v12 setObject:v13 forKeyedSubscript:v11];
}

uint64_t compare_0(double *a1, double *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

uint64_t initUTTypeConformsTo_2(uint64_t a1, uint64_t a2)
{
  v4 = MobileCoreServicesLibrary_2();
  v5 = dlsym(v4, "UTTypeConformsTo");
  off_1ED4398B8 = v5;
  if (!v5)
  {
    __assert_rtn("initUTTypeConformsTo", "NSURL+NSItemProvider.m", 20, "softLinkUTTypeConformsTo");
  }

  return (v5)(a1, a2);
}

uint64_t initkUTTypeFileURL_1()
{
  v0 = MobileCoreServicesLibrary_2();
  v1 = dlsym(v0, "kUTTypeFileURL");
  if (!v1)
  {
    __assert_rtn("initkUTTypeFileURL", "NSURL+NSItemProvider.m", 19, "constant");
  }

  result = *v1;
  constantkUTTypeFileURL_1 = result;
  off_1ED4398B0[0] = kUTTypeFileURLFunction_1;
  return result;
}

void _NSSetupLibXML()
{
  if (_NSSetupLibXML_xmlInitGuard != -1)
  {
    dispatch_once(&_NSSetupLibXML_xmlInitGuard, &__block_literal_global_57);
  }
}

uint64_t _xmlExternalEntityLoader(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = +[NSXMLParser currentParser];
  if (v6)
  {
    if (v6[120])
    {
      return 0;
    }

    else
    {
      v8 = __originalLoader;

      return [v6 _xmlExternalEntityWithURL:a1 identifier:a2 context:a3 originalLoaderFunction:v8];
    }
  }

  else
  {
    v9 = __originalLoader;

    return v9(a1, a2, a3);
  }
}

NSError *_NSErrorFromXMLError(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 72))
  {
    v4 = 0;
  }

  else
  {
    v4 = [MEMORY[0x1E695DF90] dictionary];
    if ((*(a2 + 72) & 1) == 0)
    {
      [v4 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", *(a1 + 32)), @"NSXMLParserErrorLineNumber"}];
      [v4 setObject:+[NSNumber numberWithInt:](NSNumber forKey:{"numberWithInt:", *(a1 + 68)), @"NSXMLParserErrorColumn"}];
      if (*(a1 + 8))
      {
        v5 = [[NSString alloc] initWithUTF8String:*(a1 + 8)];
        if (v5)
        {
          v6 = v5;
          [v4 setObject:v5 forKey:@"NSXMLParserErrorMessage"];
        }
      }
    }
  }

  if (*(a2 + 72))
  {
    v7 = 512;
  }

  else
  {
    v7 = *(a1 + 4);
  }

  return [NSError errorWithDomain:@"NSXMLParserErrorDomain" code:v7 userInfo:v4];
}

xmlEntityPtr _getEntity(uint64_t a1, xmlChar *a2)
{
  if (a1 && (*(a1 + 120) & 1) != 0)
  {
    return 0;
  }

  v5 = *(a1 + 32);
  v6 = [a1 delegate];
  result = xmlGetPredefinedEntity(a2);
  if (!result)
  {
    result = xmlSAX2GetEntity(v5, a2);
    if (result)
    {
      if (*(v5 + 272) == 7)
      {
        *(v5 + 424) = 1;
      }
    }

    else
    {
      if ((objc_opt_respondsToSelector() & 1) == 0)
      {
        return 0;
      }

      if (a2)
      {
        Value = CFDictionaryGetValue(*(a1 + 64), a2);
        if (!Value)
        {
          Value = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), a2);
        }
      }

      else
      {
        Value = 0;
      }

      result = [v6 parser:a1 resolveExternalEntityName:Value systemID:0];
      if (result)
      {
        if (*(v5 + 16))
        {
          v8 = [[NSString alloc] initWithData:result encoding:4];
          v9 = [(NSString *)v8 UTF8String];
          if (v9)
          {
            v10 = v9;
            v11 = strlen(v9);
            _characters(a1, v10, v11);
          }
        }

        return 0;
      }
    }
  }

  return result;
}

uint64_t _entityDecl(uint64_t result, xmlChar *a2, int a3, xmlChar *a4, xmlChar *a5, xmlChar *a6)
{
  v11 = result;
  if (result && (*(result + 120) & 1) != 0)
  {
    return result;
  }

  v12 = [result delegate];
  xmlSAX2EntityDecl(*(v11 + 32), a2, a3, a4, a5, a6);
  if (a6)
  {
    Value = CFDictionaryGetValue(*(v11 + 64), a6);
    if (!Value)
    {
      Value = __SlowPathNSXMLParserNSStringFromBytes(*(v11 + 64), a6);
    }

    if (a2)
    {
      goto LABEL_7;
    }
  }

  else
  {
    Value = 0;
    if (a2)
    {
LABEL_7:
      v14 = CFDictionaryGetValue(*(v11 + 64), a2);
      if (!v14)
      {
        v14 = __SlowPathNSXMLParserNSStringFromBytes(*(v11 + 64), a2);
      }

      goto LABEL_11;
    }
  }

  v14 = 0;
LABEL_11:
  if ([Value length])
  {
    result = objc_opt_respondsToSelector();
    if (result)
    {

      return [v12 parser:v11 foundInternalEntityDeclarationWithName:v14 value:Value];
    }
  }

  else
  {
    result = [v11 shouldResolveExternalEntities];
    if (result)
    {
      result = objc_opt_respondsToSelector();
      if (result)
      {
        if (a4)
        {
          v15 = CFDictionaryGetValue(*(v11 + 64), a4);
          if (!v15)
          {
            v15 = __SlowPathNSXMLParserNSStringFromBytes(*(v11 + 64), a4);
          }
        }

        else
        {
          v15 = 0;
        }

        if (a5)
        {
          v16 = CFDictionaryGetValue(*(v11 + 64), a5);
          if (!v16)
          {
            v16 = __SlowPathNSXMLParserNSStringFromBytes(*(v11 + 64), a5);
          }
        }

        else
        {
          v16 = 0;
        }

        return [v12 parser:v11 foundExternalEntityDeclarationWithName:v14 publicID:v15 systemID:v16];
      }
    }
  }

  return result;
}

uint64_t _notationDecl(uint64_t result, void *a2, void *a3, void *a4)
{
  v7 = result;
  if (!result || (*(result + 120) & 1) == 0)
  {
    v8 = [result delegate];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      if (a2)
      {
        Value = CFDictionaryGetValue(*(v7 + 64), a2);
        if (!Value)
        {
          Value = __SlowPathNSXMLParserNSStringFromBytes(*(v7 + 64), a2);
        }

        if (a3)
        {
LABEL_8:
          v10 = CFDictionaryGetValue(*(v7 + 64), a3);
          if (!v10)
          {
            v10 = __SlowPathNSXMLParserNSStringFromBytes(*(v7 + 64), a3);
          }

          if (a4)
          {
            goto LABEL_11;
          }

          goto LABEL_16;
        }
      }

      else
      {
        Value = 0;
        if (a3)
        {
          goto LABEL_8;
        }
      }

      v10 = 0;
      if (a4)
      {
LABEL_11:
        v11 = CFDictionaryGetValue(*(v7 + 64), a4);
        if (!v11)
        {
          v11 = __SlowPathNSXMLParserNSStringFromBytes(*(v7 + 64), a4);
        }

        goto LABEL_17;
      }

LABEL_16:
      v11 = 0;
LABEL_17:

      return [v8 parser:v7 foundNotationDeclarationWithName:Value publicID:v10 systemID:v11];
    }
  }

  return result;
}

void _attributeDecl(uint64_t a1, void *a2, void *a3, uint64_t a4, uint64_t a5, void *a6, xmlEnumeration *a7)
{
  if (a1 && (*(a1 + 120) & 1) != 0)
  {
    return;
  }

  v12 = [a1 delegate];
  if (objc_opt_respondsToSelector())
  {
    if (a2)
    {
      Value = CFDictionaryGetValue(*(a1 + 64), a2);
      if (!Value)
      {
        Value = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), a2);
      }

      if (a3)
      {
LABEL_8:
        v14 = CFDictionaryGetValue(*(a1 + 64), a3);
        if (!v14)
        {
          v14 = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), a3);
        }

        if (a6)
        {
          goto LABEL_11;
        }

        goto LABEL_15;
      }
    }

    else
    {
      Value = 0;
      if (a3)
      {
        goto LABEL_8;
      }
    }

    v14 = 0;
    if (a6)
    {
LABEL_11:
      v15 = CFDictionaryGetValue(*(a1 + 64), a6);
      if (!v15)
      {
        v15 = __SlowPathNSXMLParserNSStringFromBytes(*(a1 + 64), a6);
      }

      goto LABEL_16;
    }

LABEL_15:
    v15 = 0;
LABEL_16:
    [v12 parser:a1 foundAttributeDeclarationWithName:v14 forElement:Value type:&stru_1EEEFDF90 defaultValue:v15];
  }

  xmlFreeEnumeration(a7);
}

uint64_t _elementDecl(uint64_t result, void *a2)
{
  v3 = result;
  if (!result || (*(result + 120) & 1) == 0)
  {
    v4 = [result delegate];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      if (a2)
      {
        Value = CFDictionaryGetValue(*(v3 + 64), a2);
        if (!Value)
        {
          Value = __SlowPathNSXMLParserNSStringFromBytes(*(v3 + 64), a2);
        }
      }

      else
      {
        Value = 0;
      }

      return [v4 parser:v3 foundElementDeclarationWithName:Value model:&stru_1EEEFDF90];
    }
  }

  return result;
}

uint64_t _unparsedEntityDecl(uint64_t result, xmlChar *a2, xmlChar *a3, xmlChar *a4, xmlChar *a5)
{
  v9 = result;
  if (!result || (*(result + 120) & 1) == 0)
  {
    v10 = [result delegate];
    xmlSAX2UnparsedEntityDecl(*(v9 + 32), a2, a3, a4, a5);
    result = objc_opt_respondsToSelector();
    if (result)
    {
      if (a2)
      {
        Value = CFDictionaryGetValue(*(v9 + 64), a2);
        if (!Value)
        {
          Value = __SlowPathNSXMLParserNSStringFromBytes(*(v9 + 64), a2);
        }

        if (a3)
        {
LABEL_8:
          v12 = CFDictionaryGetValue(*(v9 + 64), a3);
          if (!v12)
          {
            v12 = __SlowPathNSXMLParserNSStringFromBytes(*(v9 + 64), a3);
          }

          if (a4)
          {
LABEL_11:
            v13 = CFDictionaryGetValue(*(v9 + 64), a4);
            if (!v13)
            {
              v13 = __SlowPathNSXMLParserNSStringFromBytes(*(v9 + 64), a4);
            }

            if (a5)
            {
              goto LABEL_14;
            }

            goto LABEL_20;
          }

LABEL_19:
          v13 = 0;
          if (a5)
          {
LABEL_14:
            v14 = CFDictionaryGetValue(*(v9 + 64), a5);
            if (!v14)
            {
              v14 = __SlowPathNSXMLParserNSStringFromBytes(*(v9 + 64), a5);
            }

            goto LABEL_21;
          }

LABEL_20:
          v14 = 0;
LABEL_21:

          return [v10 parser:v9 foundUnparsedEntityDeclarationWithName:Value publicID:v12 systemID:v13 notationName:v14];
        }
      }

      else
      {
        Value = 0;
        if (a3)
        {
          goto LABEL_8;
        }
      }

      v12 = 0;
      if (a4)
      {
        goto LABEL_11;
      }

      goto LABEL_19;
    }
  }

  return result;
}

void _characters(uint64_t a1, const UInt8 *a2, int a3)
{
  if (!a1 || (*(a1 + 120) & 1) == 0)
  {
    v4 = *(a1 + 32);
    if (*(v4 + 424) == 1)
    {
      *(v4 + 424) = 0;
    }

    else if (*(a1 + 40) >> 31)
    {
      v5 = *(a1 + 8);
      v6 = CFStringCreateWithBytes(*MEMORY[0x1E695E480], a2, a3, 0x8000100u, 0);
      if (v6)
      {
        v7 = v6;
        [v5 parser:a1 foundCharacters:v6];

        CFRelease(v7);
      }
    }
  }
}

uint64_t _processingInstruction(uint64_t result, void *a2, void *a3)
{
  v5 = result;
  if (!result || (*(result + 120) & 1) == 0)
  {
    v6 = [result delegate];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      if (a2)
      {
        Value = CFDictionaryGetValue(*(v5 + 64), a2);
        if (!Value)
        {
          Value = __SlowPathNSXMLParserNSStringFromBytes(*(v5 + 64), a2);
        }

        if (a3)
        {
          goto LABEL_8;
        }
      }

      else
      {
        Value = 0;
        if (a3)
        {
LABEL_8:
          v8 = CFDictionaryGetValue(*(v5 + 64), a3);
          if (!v8)
          {
            v8 = __SlowPathNSXMLParserNSStringFromBytes(*(v5 + 64), a3);
          }

          goto LABEL_13;
        }
      }

      v8 = 0;
LABEL_13:

      return [v6 parser:v5 foundProcessingInstructionWithTarget:Value data:v8];
    }
  }

  return result;
}

void _errorCallback(uint64_t a1)
{
  LastError = xmlCtxtGetLastError(*(a1 + 32));

  _reportError(LastError, a1, 0);
}

void _cdataBlock(_BYTE *a1, const UInt8 *a2, int a3)
{
  if (!a1 || (a1[120] & 1) == 0)
  {
    v6 = [a1 delegate];
    if (objc_opt_respondsToSelector())
    {
      v7 = [objc_allocWithZone(MEMORY[0x1E695DEF0]) initWithBytes:a2 length:a3];
      [v6 parser:a1 foundCDATA:v7];
    }

    else
    {

      _characters(a1, a2, a3);
    }
  }
}

uint64_t _comment(uint64_t result, void *a2)
{
  v3 = result;
  if (!result || (*(result + 120) & 1) == 0)
  {
    v4 = [result delegate];
    result = objc_opt_respondsToSelector();
    if (result)
    {
      if (a2)
      {
        Value = CFDictionaryGetValue(*(v3 + 64), a2);
        if (!Value)
        {
          Value = __SlowPathNSXMLParserNSStringFromBytes(*(v3 + 64), a2);
        }
      }

      else
      {
        Value = 0;
      }

      return [v4 parser:v3 foundComment:Value];
    }
  }

  return result;
}

void *_cachedColonSeparatedStringFromPrefixAndSuffix(const void *a1, size_t a2, const void *a3, size_t a4, uint64_t a5)
{
  v16[1] = *MEMORY[0x1E69E9840];
  v10 = a2 + a4 + 2;
  MEMORY[0x1EEE9AC00](a1);
  v12 = v16 - v11;
  if (v10 >= 0x101)
  {
    v12 = malloc_type_malloc(v10, 0x100004077774924uLL);
  }

  memmove(v12, a1, a2);
  v13 = &v12[a2];
  *v13++ = 58;
  memmove(v13, a3, a4);
  v13[a4] = 0;
  Value = CFDictionaryGetValue(*(a5 + 64), v12);
  if (!Value)
  {
    Value = __SlowPathNSXMLParserNSStringFromBytes(*(a5 + 64), v12);
  }

  if (v10 >= 0x101)
  {
    free(v12);
  }

  return Value;
}

void _reportError(uint64_t a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (*(a1 + 16) == 3)
    {
      v6 = [a2 delegate];
      if ((*(a2 + 120) & 1) == 0)
      {
        v7 = v6;
        v8 = _NSErrorFromXMLError(a1, a2);
        if (objc_opt_respondsToSelector())
        {
          [v7 parser:a2 parseErrorOccurred:v8];
        }

        [a2 _setExpandedParserError:v8];
        if (([a2 shouldContinueAfterFatalError] & 1) == 0 && *(a1 + 16) == 3 && (*(a2 + 72) & 1) == 0)
        {
          if (a3 && dyld_program_sdk_at_least())
          {
            *(a2 + 120) = 1;
          }

          else
          {
            v9 = *(a2 + 32);

            xmlStopParser(v9);
          }
        }
      }
    }
  }
}

void _localeDidChange()
{
  v0 = qword_1ED43FCB8;
  v1 = qword_1ED43FCB8;
  atomic_compare_exchange_strong(&qword_1ED43FCB8, &v1, 0);
  if (v1 == v0)
  {
    CFRelease(+[_NSPredicateOperatorUtilities retainedLocale]);
    if (v0)
    {
      if (v0 != qword_1ED43FCB8)
      {

        CFRelease(v0);
      }
    }
  }
}

void sub_181140F78(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    if (v3)
    {
      free(v2);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_181141608(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    objc_begin_catch(exception_object);
    if (v3)
    {
      free(v2);
    }

    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_181142BDC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      NSLog(@"THIS SHOULD NOT HAVE HAPPENED: %@");
      objc_exception_rethrow();
    }

    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v9 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_18114325C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    if (a2 == 1)
    {
      objc_begin_catch(exception_object);
      NSLog(@"THIS SHOULD NOT HAVE HAPPENED: %@");
      objc_exception_rethrow();
    }

    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v9 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_181143538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181144354(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      NSLog(@"THIS SHOULD NOT HAVE HAPPENED: %@");
      objc_exception_rethrow();
    }

    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v9 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1811446C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1811448C0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9)
{
  if (a2)
  {
    if (a2 == 2)
    {
      objc_begin_catch(exception_object);
      NSLog(@"THIS SHOULD NOT HAVE HAPPENED: %@");
      objc_exception_rethrow();
    }

    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v9 + 2);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

NSFunctionExpression *HandleCastingOperation(void *a1)
{
  if ([a1 count] <= 1)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"CAST() requires two args." userInfo:0]);
  }

  v2 = [a1 objectAtIndex:0];
  v3 = [a1 objectAtIndex:1];
  if ((objc_opt_isKindOfClass() & 1) != 0 && (objc_opt_isKindOfClass() & 1) != 0 && ([objc_msgSend(v3 "constantValue")] & 1) == 0)
  {
    v5 = [NSConstantValueExpression alloc];
    v6 = +[_NSPredicateUtilities castObject:toType:](_NSPredicateUtilities, "castObject:toType:", [v2 constantValue], objc_msgSend(objc_msgSend(v3, "constantValue"), "description"));

    return [(NSConstantValueExpression *)v5 initWithObject:v6];
  }

  else
  {

    return CreateFunctionExpression(@"castObject:toType:", a1);
  }
}

NSComparisonPredicate *HandleBetweenPredicate(uint64_t a1, uint64_t a2)
{
  v4 = [NSPredicateOperator _newOperatorWithType:100 modifier:0 options:0];
  v5 = [[NSComparisonPredicate alloc] initWithPredicateOperator:v4 leftExpression:a1 rightExpression:a2];

  return v5;
}

NSConstantValueExpression *expressionByReplacingArray(void *a1)
{
  if ([a1 expressionType])
  {
    return a1;
  }

  v2 = [a1 constantValue];
  if (!_NSIsNSArray())
  {
    return a1;
  }

  v3 = [[NSConstantValueExpression alloc] initWithObject:v2];

  return v3;
}

NSSetExpression *CreateSetExpression(void *a1, uint64_t a2, void *a3)
{
  v5 = expressionByReplacingArray(a1);
  v6 = expressionByReplacingArray(a3);
  if ((a2 - 5) > 2)
  {
    v7 = 0;
  }

  else
  {
    v7 = [[NSSetExpression alloc] initWithType:a2 leftExpression:v5 rightExpression:v6];
  }

  if (!v7)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"Unknown expression type %ld", a2), 0}]);
  }

  return v7;
}

uint64_t CreateFetchExpression(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_lookUpClass("NSFetchRequestExpression");
  if (!v6)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"Can't find class for NSFetchRequestExpression" userInfo:0]);
  }

  v7 = [v6 alloc];

  return [v7 initForFetch:a1 context:a2 countOnly:a3 != 0];
}

__objc2_class **_popFront(uint64_t a1)
{
  if (!*(a1 + 64))
  {
    return &_emptyValue;
  }

  pthread_mutex_lock((a1 + 72));
  v2 = [*(a1 + 136) objectAtIndex:0];
  [*(a1 + 136) removeObjectAtIndex:0];
  updated = updateState(a1);
  pthread_mutex_unlock((a1 + 72));
  if (updated == 2)
  {
    if ([a1 bufferFullHandler])
    {
      v4 = 0;
      goto LABEL_9;
    }
  }

  else if (updated == 1 && [a1 bufferFullHandler])
  {
    v4 = 1;
LABEL_9:
    v6 = [a1 bufferFullHandler];
    (*(v6 + 16))(v6, v4);
  }

  return v2;
}

uint64_t updateState(uint64_t a1)
{
  v6[5] = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __updateState_block_invoke;
  v6[3] = &unk_1E69F6A38;
  v6[4] = a1;
  v1 = *(a1 + 64);
  switch(v1)
  {
    case 2:
      v2 = fullToEmpty;
      v3 = fullToNormal;
      v4 = fullToFull;
      return __updateState_block_invoke(v6, v2, v3, v4);
    case 1:
      v2 = normalToEmpty;
      v3 = normalToNormal;
      v4 = normalToFull;
      return __updateState_block_invoke(v6, v2, v3, v4);
    case 0:
      v2 = emptyToEmpty;
      v3 = emptyToNormal;
      v4 = emptyToFull;
      return __updateState_block_invoke(v6, v2, v3, v4);
  }

  return 0;
}

uint64_t __updateState_block_invoke(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t))
{
  v5 = [*(*(a1 + 32) + 136) count];
  v6 = *(a1 + 32);
  if (v5)
  {
    v7 = v5;
    if (_pressureSensitiveMaxCount_onceToken != -1)
    {
      dispatch_once(&_pressureSensitiveMaxCount_onceToken, &__block_literal_global_59);
    }

    [v6 isMemoryPressureSensitive];
    v8 = *(a1 + 32);
    if (v7 >= v6[18])
    {
      v9 = a4;
    }

    else
    {
      v9 = a3;
    }
  }

  else
  {
    v8 = *(a1 + 32);
    v9 = a2;
  }

  return v9(v8);
}

uint64_t emptyToNormal(_DWORD *a1)
{
  a1[16] = 1;
  if ([a1 automaticallyEmitsObjects])
  {
    [a1 emitObject];
  }

  return 0;
}

uint64_t emptyToFull(uint64_t a1)
{
  *(a1 + 64) = 2;
  dispatch_suspend(*(a1 + 40));
  if ([a1 automaticallyEmitsObjects])
  {
    [a1 emitObject];
  }

  return 0;
}

uint64_t normalToNormal(void *a1)
{
  if ([a1 automaticallyEmitsObjects])
  {
    [a1 emitObject];
  }

  return 0;
}

uint64_t normalToFull(uint64_t a1)
{
  *(a1 + 64) = 2;
  dispatch_suspend(*(a1 + 40));
  if ([a1 automaticallyEmitsObjects])
  {
    [a1 emitObject];
  }

  return 1;
}

uint64_t fullToEmpty(uint64_t a1)
{
  *(a1 + 64) = 0;
  dispatch_resume(*(a1 + 40));
  return 2;
}

uint64_t fullToNormal(uint64_t a1)
{
  *(a1 + 64) = 1;
  dispatch_resume(*(a1 + 40));
  if ([a1 automaticallyEmitsObjects])
  {
    [a1 emitObject];
  }

  return 2;
}

uint64_t fullToFull(void *a1)
{
  if ([a1 automaticallyEmitsObjects])
  {
    [a1 emitObject];
  }

  return 0;
}

void ___pressureSensitiveMaxCount_block_invoke()
{
  pressureSource = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 2uLL, 0);
  dispatch_source_set_event_handler(pressureSource, &__block_literal_global_66);
  v0 = pressureSource;

  dispatch_resume(v0);
}

void __setupPressureTracking_block_invoke()
{
  mask = dispatch_source_get_mask(pressureSource);
  if ((mask & 1) == 0)
  {
    NSLog(@"Unknown memory pressure status %lu", mask);
  }
}

void sub_18114B764(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t FormatterCacheKeyEqual(void *a1, void *a2)
{
  result = [a1 isEqual:a2];
  if (result)
  {
    result = [objc_msgSend(a1 "decimalSeparator")];
    if (result)
    {
      return [objc_msgSend(a1 "groupingSeparator")];
    }
  }

  return result;
}

uint64_t FormatterCacheKeyHash(void *a1)
{
  v2 = [a1 hash];
  v3 = [objc_msgSend(a1 "decimalSeparator")] ^ v2;
  return v3 ^ [objc_msgSend(a1 "groupingSeparator")];
}

int *_qfqp2_init_buffer(uint64_t a1, FILE *a2)
{
  v4 = *__error();
  v5 = yy_buffer_stack;
  if (a1)
  {
    *(a1 + 32) = 0;
    **(a1 + 8) = 0;
    *(*(a1 + 8) + 1) = 0;
    *(a1 + 16) = *(a1 + 8);
    *(a1 + 48) = 1;
    *(a1 + 64) = 0;
    v6 = v5 ? *v5 : 0;
    if (v6 == a1)
    {
      v7 = *v5;
      yy_n_chars = *(*v5 + 32);
      yy_c_buf_p = v7[2];
      _qfqp2text = yy_c_buf_p;
      _qfqp2in = *v7;
      yy_hold_char = *yy_c_buf_p;
      *a1 = a2;
      *(a1 + 60) = 1;
      goto LABEL_9;
    }
  }

  *a1 = a2;
  *(a1 + 60) = 1;
  if (v5)
  {
LABEL_9:
    v5 = *v5;
  }

  if (v5 != a1)
  {
    *(a1 + 52) = 1;
  }

  if (a2)
  {
    v8 = fileno(a2);
    v9 = isatty(v8) > 0;
  }

  else
  {
    v9 = 0;
  }

  *(a1 + 44) = v9;
  result = __error();
  *result = v4;
  return result;
}

unint64_t NSOrthographyFlagsForScriptAndOrthographyIndexes(uint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if ((a1 - 32) < 0xFFFFFFFFFFFFFFE1)
  {
    return 0;
  }

  v6 = 0;
  if (a6 <= 0x1F && a6 - 11 >= 2 && a6 != 8 && a6 != a1 && a6 != 6)
  {
    if (a1 == 6 && !a2 || a1 == 8 && !a3 || a1 == 11 && !a4 || a1 == 12 && !a5)
    {
      return 0;
    }

    if (a2 >= 2)
    {
      if (a2 - 128 < 0xFFFFFFFFFFFFFF86)
      {
        return 0;
      }

      LODWORD(a2) = a2 - 4;
    }

    if (a3 >= 2)
    {
      if (a3 - 148 < 0xFFFFFFFFFFFFFFECLL)
      {
        return 0;
      }

      LOBYTE(a3) = a3 - 126;
    }

    if (a4 >= 2)
    {
      if (a4 - 188 < 0xFFFFFFFFFFFFFFE4)
      {
        return 0;
      }

      LOBYTE(a4) = a4 + 98;
    }

    if (a5 < 2)
    {
      return ((a6 << 22) | (a1 << 27)) + a2 + ((a3 & 0x1F) << 8) + ((a4 & 0x1F) << 13) + ((a5 & 0xF) << 18);
    }

    if (a5 - 206 >= 0xFFFFFFFFFFFFFFF2)
    {
      LOBYTE(a5) = a5 + 66;
      return ((a6 << 22) | (a1 << 27)) + a2 + ((a3 & 0x1F) << 8) + ((a4 & 0x1F) << 13) + ((a5 & 0xF) << 18);
    }

    return 0;
  }

  return v6;
}

unint64_t NSOrthographyGetScriptAndOrthographyIndexesForFlags(unint64_t result, void *a2, unint64_t *a3, unint64_t *a4, unint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  if (a2)
  {
    *a2 = result >> 27;
  }

  if (a7)
  {
    *a7 = (result >> 22) & 0x1F;
  }

  if (a3)
  {
    v7 = result;
    if (result > 0x7BuLL)
    {
      v7 = 1;
    }

    if (v7 > 1)
    {
      v7 += 4;
    }

    *a3 = v7;
  }

  if (a4)
  {
    v8 = (result >> 8) & 0x1F;
    if (v8 > 0x15)
    {
      v8 = 1;
    }

    if (v8 > 1)
    {
      v8 += 126;
    }

    *a4 = v8;
  }

  if (a5)
  {
    v9 = (result >> 13) & 0x1F;
    if (v9 > 0x1D)
    {
      v9 = 1;
    }

    if (v9 > 1)
    {
      v9 += 158;
    }

    *a5 = v9;
  }

  if (a6)
  {
    v10 = (result >> 18) & 0xF;
    if (((result >> 18) & 0xE) != 0)
    {
      v10 += 190;
    }

    *a6 = v10;
  }

  return result;
}

uint64_t NSOrthographyFlagsForDominantScriptAndLanguageMap(uint64_t a1, void *a2)
{
  v37 = *MEMORY[0x1E69E9840];
  v4 = [a2 objectForKey:a1];
  v5 = [a2 objectForKey:@"Latn"];
  v6 = [a2 objectForKey:@"Cyrl"];
  v7 = [a2 objectForKey:@"Arab"];
  v8 = [a2 objectForKey:@"Deva"];
  v9 = [&unk_1EEF59C78 indexOfObject:a1];
  if ((v9 - 32) < 0xFFFFFFFFFFFFFFE1)
  {
    return 0;
  }

  v10 = v9;
  if (v4)
  {
    if ([v4 count] != 1)
    {
      return 0;
    }
  }

  if (v5 && [v5 count] != 1 || v6 && objc_msgSend(v6, "count") != 1 || v7 && objc_msgSend(v7, "count") != 1 || v8 && objc_msgSend(v8, "count") != 1)
  {
    return 0;
  }

  v11 = [v4 objectAtIndex:0];
  if (!v11 || v10 <= 0xC && ((1 << v10) & 0x1940) != 0 || (result = [v11 isEqualToString:NSOrthographyDefaultLanguageForScriptIndex(v10)], result))
  {
    v35 = 0u;
    v36 = 0u;
    v33 = 0u;
    v34 = 0u;
    v12 = [a2 countByEnumeratingWithState:&v33 objects:v32 count:16];
    if (v12)
    {
      v13 = v12;
      v31 = v5;
      v28 = v7;
      v29 = v8;
      v30 = v10;
      v14 = 0;
      v15 = *v34;
      do
      {
        for (i = 0; i != v13; ++i)
        {
          if (*v34 != v15)
          {
            objc_enumerationMutation(a2);
          }

          v17 = *(*(&v33 + 1) + 8 * i);
          if (([v17 isEqualToString:a1] & 1) == 0 && (objc_msgSend(v17, "isEqualToString:", @"Latn") & 1) == 0 && (objc_msgSend(v17, "isEqualToString:", @"Cyrl") & 1) == 0 && (objc_msgSend(v17, "isEqualToString:", @"Arab") & 1) == 0 && (objc_msgSend(v17, "isEqualToString:", @"Deva") & 1) == 0)
          {
            if (v14)
            {
              result = [v17 isEqualToString:v14];
              if (!result)
              {
                return result;
              }
            }

            else
            {
              v14 = v17;
            }
          }
        }

        v13 = [a2 countByEnumeratingWithState:&v33 objects:v32 count:16];
      }

      while (v13);
      if (v14)
      {
        v19 = [a2 objectForKey:v14];
        v20 = v19;
        v5 = v31;
        if (v19 && [v19 count] != 1)
        {
          return 0;
        }

        v21 = [&unk_1EEF59C90 indexOfObject:v14];
        if ((v21 - 32) < 0xFFFFFFFFFFFFFFE1)
        {
          return 0;
        }

        v22 = v21;
        v27 = [v20 objectAtIndex:0];
        if (v27)
        {
          result = [v27 isEqualToString:NSOrthographyDefaultLanguageForScriptIndex(v22)];
          v8 = v29;
          v10 = v30;
          v7 = v28;
          if (!result)
          {
            return result;
          }
        }

        else
        {
          v8 = v29;
          v10 = v30;
          v7 = v28;
        }
      }

      else
      {
        v22 = 0;
        v8 = v29;
        v10 = v30;
        v7 = v28;
        v5 = v31;
      }
    }

    else
    {
      v22 = 0;
    }

    if (v5)
    {
      v23 = [&unk_1EEF59CA8 indexOfObject:{objc_msgSend(v5, "objectAtIndex:", 0)}];
      if (v6)
      {
        goto LABEL_41;
      }
    }

    else
    {
      v23 = v10 == 6;
      if (v6)
      {
LABEL_41:
        v24 = [&unk_1EEF59CC0 indexOfObject:{objc_msgSend(v6, "objectAtIndex:", 0)}];
        if (v7)
        {
          goto LABEL_42;
        }

        goto LABEL_46;
      }
    }

    v24 = v10 == 8;
    if (v7)
    {
LABEL_42:
      v25 = [&unk_1EEF59CD8 indexOfObject:{objc_msgSend(v7, "objectAtIndex:", 0)}];
      if (v8)
      {
LABEL_43:
        v26 = [&unk_1EEF59CF0 indexOfObject:{objc_msgSend(v8, "objectAtIndex:", 0)}];
        return NSOrthographyFlagsForScriptAndOrthographyIndexes(v10, v23, v24, v25, v26, v22);
      }

LABEL_47:
      v26 = v10 == 12;
      return NSOrthographyFlagsForScriptAndOrthographyIndexes(v10, v23, v24, v25, v26, v22);
    }

LABEL_46:
    v25 = v10 == 11;
    if (v8)
    {
      goto LABEL_43;
    }

    goto LABEL_47;
  }

  return result;
}

__CFString *NSOrthographyDefaultLanguageForScriptIndex(uint64_t a1)
{
  v1 = a1;
  if ((a1 - 2) <= 4)
  {
    v2 = &unk_1EEF59E28;
    return [v2 objectAtIndex:v1];
  }

  if (a1 == 29)
  {
    v2 = &unk_1EEF59E40;
    v1 = 208;
    return [v2 objectAtIndex:v1];
  }

  if ((a1 - 7) <= 0x18)
  {
    v2 = &unk_1EEF59E58;
    v1 += 217;
    return [v2 objectAtIndex:v1];
  }

  return @"und";
}

__CFString *NSOrthographyDominantScriptForFlags(unsigned int a1)
{
  if (!(a1 >> 27))
  {
    return 0;
  }

  if (a1 >> 27 == 1)
  {
    return @"Zyyy";
  }

  return [&unk_1EEF59E70 objectAtIndex:?];
}

__CFString *NSOrthographyDominantLanguageForFlagsAndScript(unsigned int a1, uint64_t a2)
{
  v3 = [&unk_1EEF59D08 indexOfObject:a2];

  return NSOrthographyDominantLanguageForFlagsAndScriptIndex(a1, v3);
}

__CFString *NSOrthographyDominantLanguageForFlagsAndScriptIndex(unsigned int a1, uint64_t a2)
{
  if (a2 <= 7)
  {
    if (!a2)
    {
      return 0;
    }

    if (a2 == 6)
    {
      if (a1 > 0x7Bu)
      {
        v4 = 1;
      }

      else
      {
        v4 = a1;
      }

      if (v4 <= 1)
      {
        v5 = v4;
      }

      else
      {
        v5 = v4 + 4;
      }

      if (v5)
      {
        v3 = &unk_1EEF59E88;
        return [v3 objectAtIndex:?];
      }

      return 0;
    }
  }

  else
  {
    switch(a2)
    {
      case 8:
        LODWORD(v7) = (a1 >> 8) & 0x1F;
        if (v7 > 0x15)
        {
          v7 = 1;
        }

        else
        {
          v7 = v7;
        }

        if (v7 <= 1)
        {
          v8 = v7;
        }

        else
        {
          v8 = v7 + 126;
        }

        if (v8)
        {
          v3 = &unk_1EEF59EA0;
          return [v3 objectAtIndex:?];
        }

        return 0;
      case 11:
        LODWORD(v9) = (a1 >> 13) & 0x1F;
        if (v9 > 0x1D)
        {
          v9 = 1;
        }

        else
        {
          v9 = v9;
        }

        if (v9 <= 1)
        {
          v10 = v9;
        }

        else
        {
          v10 = v9 + 158;
        }

        if (v10)
        {
          v3 = &unk_1EEF59EB8;
          return [v3 objectAtIndex:?];
        }

        return 0;
      case 12:
        if (((a1 >> 18) & 0xE) != 0)
        {
          v2 = ((a1 >> 18) & 0xF) + 190;
        }

        else
        {
          v2 = (a1 >> 18) & 0xF;
        }

        if (v2)
        {
          v3 = &unk_1EEF59ED0;
          return [v3 objectAtIndex:?];
        }

        return 0;
    }
  }

  if (a1 >> 27 != a2 && ((a1 >> 22) & 0x1F) != a2)
  {
    return 0;
  }

  return NSOrthographyDefaultLanguageForScriptIndex(a2);
}

void *NSOrthographyAllScriptsForFlags(unsigned int a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = a1 >> 27;
  if (v3 == 1)
  {
    v4 = (a1 >> 22) & 0x1F;
    v5 = @"Zyyy";
    v3 = 1;
LABEL_6:
    [v2 addObject:v5];
    goto LABEL_7;
  }

  if (!v3)
  {
    v3 = 0;
    v4 = (a1 >> 22) & 0x1F;
    goto LABEL_8;
  }

  v5 = [&unk_1EEF59E70 objectAtIndex:a1 >> 27];
  v4 = (a1 >> 22) & 0x1F;
  if (v5)
  {
    goto LABEL_6;
  }

LABEL_7:
  if (v3 != 6)
  {
LABEL_8:
    if (a1)
    {
      [v2 addObject:{objc_msgSend(&unk_1EEF59D20, "objectAtIndex:", 6)}];
    }

    if (v3 == 8)
    {
      goto LABEL_14;
    }
  }

  if ((a1 & 0x1F00) != 0)
  {
    [v2 addObject:{objc_msgSend(&unk_1EEF59D38, "objectAtIndex:", 8)}];
  }

  if (v3 == 11)
  {
    goto LABEL_17;
  }

LABEL_14:
  if ((a1 & 0x3E000) != 0)
  {
    [v2 addObject:{objc_msgSend(&unk_1EEF59D50, "objectAtIndex:", 11)}];
  }

  if (v3 != 12)
  {
LABEL_17:
    if ((a1 & 0x3C0000) != 0)
    {
      [v2 addObject:{objc_msgSend(&unk_1EEF59D68, "objectAtIndex:", 12)}];
    }
  }

  if (v4 && v4 != v3)
  {
    if (v4 > 0xC)
    {
      goto LABEL_26;
    }

    if (((1 << v4) & 0x1940) != 0)
    {
      return v2;
    }

    if (v4 == 1)
    {
      v7 = @"Zyyy";
    }

    else
    {
LABEL_26:
      v7 = [&unk_1EEF59E70 objectAtIndex:v4];
      if (!v7)
      {
        return v2;
      }
    }

    if (([v2 containsObject:v7] & 1) == 0)
    {
      [v2 addObject:v7];
    }
  }

  return v2;
}

void *NSOrthographyAllLanguagesForFlags(unsigned int a1)
{
  v2 = [MEMORY[0x1E695DF70] array];
  v3 = a1 >> 27;
  v4 = NSOrthographyDominantLanguageForFlagsAndScriptIndex(a1, a1 >> 27);
  v5 = (a1 >> 22) & 0x1F;
  if (v4)
  {
    [v2 addObject:v4];
  }

  if (v3 == 6)
  {
    goto LABEL_25;
  }

  if (a1 > 0x7Bu)
  {
    v6 = 1;
  }

  else
  {
    v6 = a1;
  }

  if (v6 <= 1)
  {
    v7 = v6;
  }

  else
  {
    v7 = v6 + 4;
  }

  if (v7)
  {
    v8 = [&unk_1EEF59E88 objectAtIndex:?];
    if (v8)
    {
      v9 = v8;
      if (([v2 containsObject:v8] & 1) == 0)
      {
        [v2 addObject:v9];
      }
    }
  }

  if (v3 != 8)
  {
LABEL_25:
    LODWORD(v10) = (a1 >> 8) & 0x1F;
    if (v10 > 0x15)
    {
      v10 = 1;
    }

    else
    {
      v10 = v10;
    }

    if (v10 <= 1)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 126;
    }

    if (v11)
    {
      v12 = [&unk_1EEF59EA0 objectAtIndex:?];
      if (v12)
      {
        v13 = v12;
        if (([v2 containsObject:v12] & 1) == 0)
        {
          [v2 addObject:v13];
        }
      }
    }

    if (v3 == 11)
    {
      goto LABEL_37;
    }
  }

  LODWORD(v14) = (a1 >> 13) & 0x1F;
  if (v14 > 0x1D)
  {
    v14 = 1;
  }

  else
  {
    v14 = v14;
  }

  if (v14 <= 1)
  {
    v15 = v14;
  }

  else
  {
    v15 = v14 + 158;
  }

  if (v15)
  {
    v16 = [&unk_1EEF59EB8 objectAtIndex:?];
    if (v16)
    {
      v17 = v16;
      if (([v2 containsObject:v16] & 1) == 0)
      {
        [v2 addObject:v17];
      }
    }
  }

  if (v3 != 12)
  {
LABEL_37:
    if (((a1 >> 18) & 0xE) != 0)
    {
      v18 = ((a1 >> 18) & 0xF) + 190;
    }

    else
    {
      v18 = (a1 >> 18) & 0xF;
    }

    if (v18)
    {
      v19 = [&unk_1EEF59ED0 objectAtIndex:?];
      if (v19)
      {
        v20 = v19;
        if (([v2 containsObject:v19] & 1) == 0)
        {
          [v2 addObject:v20];
        }
      }
    }
  }

  if (v5 && v5 != v3 && (v5 > 0xC || ((1 << v5) & 0x1940) == 0))
  {
    v22 = NSOrthographyDominantLanguageForFlagsAndScriptIndex(a1, (a1 >> 22) & 0x1F);
    if (v22)
    {
      v23 = v22;
      if (([v2 containsObject:v22] & 1) == 0)
      {
        [v2 addObject:v23];
      }
    }
  }

  return v2;
}

void *NSOrthographyLanguageMapForFlags(unsigned int a1)
{
  v2 = [MEMORY[0x1E695DF90] dictionary];
  v3 = a1 >> 27;
  if (a1 >> 27)
  {
    if (v3 == 1)
    {
      v4 = @"Zyyy";
    }

    else
    {
      v4 = [&unk_1EEF59E70 objectAtIndex:a1 >> 27];
    }
  }

  else
  {
    v4 = 0;
  }

  v5 = NSOrthographyDominantLanguageForFlagsAndScriptIndex(a1, a1 >> 27);
  v6 = (a1 >> 22) & 0x1F;
  if (v4 && v5)
  {
    [v2 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObject:", v5), v4}];
  }

  if (v3 == 6)
  {
    goto LABEL_29;
  }

  if (a1 > 0x7Bu)
  {
    v7 = 1;
  }

  else
  {
    v7 = a1;
  }

  if (v7 <= 1)
  {
    v8 = v7;
  }

  else
  {
    v8 = v7 + 4;
  }

  if (v8)
  {
    v9 = [&unk_1EEF59E88 objectAtIndex:?];
    if (v9)
    {
      [v2 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObject:", v9), objc_msgSend(&unk_1EEF59D80, "objectAtIndex:", 6)}];
    }
  }

  if (v3 != 8)
  {
LABEL_29:
    LODWORD(v10) = (a1 >> 8) & 0x1F;
    if (v10 > 0x15)
    {
      v10 = 1;
    }

    else
    {
      v10 = v10;
    }

    if (v10 <= 1)
    {
      v11 = v10;
    }

    else
    {
      v11 = v10 + 126;
    }

    if (v11)
    {
      v12 = [&unk_1EEF59EA0 objectAtIndex:?];
      if (v12)
      {
        [v2 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObject:", v12), objc_msgSend(&unk_1EEF59D98, "objectAtIndex:", 8)}];
      }
    }

    if (v3 == 11)
    {
      goto LABEL_40;
    }
  }

  LODWORD(v13) = (a1 >> 13) & 0x1F;
  if (v13 > 0x1D)
  {
    v13 = 1;
  }

  else
  {
    v13 = v13;
  }

  if (v13 <= 1)
  {
    v14 = v13;
  }

  else
  {
    v14 = v13 + 158;
  }

  if (v14)
  {
    v15 = [&unk_1EEF59EB8 objectAtIndex:?];
    if (v15)
    {
      [v2 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObject:", v15), objc_msgSend(&unk_1EEF59DB0, "objectAtIndex:", 11)}];
    }
  }

  if (v3 != 12)
  {
LABEL_40:
    if (((a1 >> 18) & 0xE) != 0)
    {
      v16 = ((a1 >> 18) & 0xF) + 190;
    }

    else
    {
      v16 = (a1 >> 18) & 0xF;
    }

    if (v16)
    {
      v17 = [&unk_1EEF59ED0 objectAtIndex:?];
      if (v17)
      {
        [v2 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObject:", v17), objc_msgSend(&unk_1EEF59DC8, "objectAtIndex:", 12)}];
      }
    }
  }

  if (v6 && v6 != v3)
  {
    if (v6 > 0xC)
    {
      goto LABEL_52;
    }

    if (((1 << v6) & 0x1940) != 0)
    {
      return v2;
    }

    if (v6 == 1)
    {
      v18 = @"Zyyy";
    }

    else
    {
LABEL_52:
      v18 = [&unk_1EEF59E70 objectAtIndex:(a1 >> 22) & 0x1F];
      if (!v18)
      {
        return v2;
      }
    }

    v19 = NSOrthographyDominantLanguageForFlagsAndScriptIndex(a1, (a1 >> 22) & 0x1F);
    if (v19)
    {
      [v2 setObject:objc_msgSend(MEMORY[0x1E695DEC8] forKey:{"arrayWithObject:", v19), v18}];
    }
  }

  return v2;
}

void *orthoIndexesForLanguageCodes()
{
  result = orthoIndexesForLanguageCodes_result;
  if (!orthoIndexesForLanguageCodes_result)
  {
    v1 = numberOfLanguageCodes_numCodes;
    if (numberOfLanguageCodes_numCodes < 0)
    {
      v1 = langid_numlanguages();
      numberOfLanguageCodes_numCodes = v1;
    }

    if (v1 > 0)
    {
      v2 = v1;
      result = malloc_type_calloc(v1, 1uLL, 0x100004077774924uLL);
      orthoIndexesForLanguageCodes_result = result;
      if (!result)
      {
        return result;
      }

      for (i = 0; i != v2; ++i)
      {
        v4 = langid_languagecode();
        if (v4)
        {
          v5 = v4;
          v6 = 0;
          v7 = orthoIndexesForLanguageCodes_result;
          do
          {
            if (!strcmp(v5, langidLanguageCodes[v6]))
            {
              *(v7 + i) = langidOrthoIndexes[v6];
            }

            ++v6;
          }

          while (v6 != 33);
        }
      }
    }

    return orthoIndexesForLanguageCodes_result;
  }

  return result;
}

unint64_t scoreOrthographyForCharacters(unint64_t result, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = result;
  v80 = *MEMORY[0x1E69E9840];
  if (a3 == 8)
  {
    if ((byte_1ED43FD89 & 1) == 0)
    {
      result = _NSLinguisticDataPath();
      if (result)
      {
        v21 = result;
        qword_1ED43FDA0 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:objc_msgSend(result options:"stringByAppendingPathComponent:" error:{@"Cyrl/Dict1.dat", 1, 0}];
        result = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:objc_msgSend(v21 options:"stringByAppendingPathComponent:" error:{@"Cyrl/Dict2.dat", 1, 0}];
        qword_1ED43FDA8 = result;
      }

      byte_1ED43FD89 = 1;
    }

    v10 = qword_1ED43FDA0;
    v9 = qword_1ED43FDA8;
  }

  else
  {
    if (a3 != 6)
    {
      return result;
    }

    if ((_MergedGlobals_137 & 1) == 0)
    {
      result = _NSLinguisticDataPath();
      if (result)
      {
        v8 = result;
        qword_1ED43FD90 = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:objc_msgSend(result options:"stringByAppendingPathComponent:" error:{@"Latn/Dict1.dat", 1, 0}];
        result = [objc_alloc(MEMORY[0x1E695DEF0]) initWithContentsOfFile:objc_msgSend(v8 options:"stringByAppendingPathComponent:" error:{@"Latn/Dict2.dat", 1, 0}];
        qword_1ED43FD98 = result;
      }

      _MergedGlobals_137 = 1;
    }

    if (a2 < 2)
    {
      return result;
    }

    v10 = qword_1ED43FD90;
    v9 = qword_1ED43FD98;
    v11 = *v7;
    v12 = v11 - 65;
    v13 = v11 - 192;
    v14 = v11 - 216;
    v15 = v12 >= 0x1A && v13 >= 0x17;
    if (!v15 || v14 <= 6)
    {
      v17 = v7[1];
      if ((v17 - 216) >= 7 && (v17 - 192) >= 0x17 && (v17 - 65) >= 0x1A)
      {
        v20 = 225;
      }

      else
      {
        v20 = 450;
      }

      goto LABEL_30;
    }
  }

  v20 = 450;
LABEL_30:
  if (a2 < 2)
  {
    return result;
  }

  if (!v10 || v9 == 0)
  {
    return result;
  }

  v23 = [v10 bytes];
  v24 = [v9 bytes];
  v25 = [v10 length] / 5uLL;
  result = [v9 length];
  if (a3 != 6)
  {
    v26 = 0;
    v27 = 1;
    while (1)
    {
      v29 = *v7++;
      v28 = v29;
      if (v29 - 65 <= 0x19)
      {
        break;
      }

      if ((v28 - 97) <= 0x19)
      {
        goto LABEL_47;
      }

      if ((v28 - 1040) <= 0x1F)
      {
        v30 = v28 | 0xC0;
        v31 = v28 == 1049;
LABEL_44:
        if (v31)
        {
          LOBYTE(v28) = -40;
        }

        else
        {
          LOBYTE(v28) = v30;
        }

LABEL_47:
        v79[v26++] = v28;
        goto LABEL_48;
      }

      if ((v28 - 1072) <= 0x1F)
      {
        v30 = v28 - 96;
        v31 = v28 == 1081;
        goto LABEL_44;
      }

      if ((v28 & 0xFFF0) == 0x450 || (v28 & 0xFFF0) == 0x400)
      {
        if (v28 <= 0x410)
        {
          v32 = -1024;
        }

        else
        {
          v32 = -1104;
        }

        v28 += v32;
        if (((0xF1FBuLL >> v28) & 1) == 0)
        {
          goto LABEL_48;
        }

        LOBYTE(v28) = cyrl1[v28];
        goto LABEL_47;
      }

      LODWORD(v28) = v28 - 1162;
      if (v28 <= 0xF)
      {
        LOBYTE(v28) = cyrl2[v28];
        goto LABEL_47;
      }

LABEL_48:
      if (v27 < a2)
      {
        ++v27;
        if (v26 < 0x40)
        {
          continue;
        }
      }

      goto LABEL_89;
    }

    LOBYTE(v28) = v28 | 0x20;
    goto LABEL_47;
  }

  v33 = 0;
  v34 = 0;
  do
  {
    v35 = v7[v34];
    if ((v35 - 65) <= 0x19)
    {
      LOBYTE(v36) = v35 | 0x20;
LABEL_65:
      v26 = v33 + 1;
      v79[v33] = v36;
      goto LABEL_66;
    }

    if ((v35 - 97) <= 0x19)
    {
      LOBYTE(v36) = v7[v34];
      goto LABEL_65;
    }

    if ((v35 - 192) > 0x23F || (v36 = latin1[v35 - 192], v36 == 32))
    {
LABEL_86:
      v26 = v33;
      goto LABEL_66;
    }

    if (v36 != 42)
    {
      goto LABEL_65;
    }

    if ((v35 & 0x3DF) == 0xC6)
    {
      v37 = "ae";
    }

    else if ((v35 & 0x3DF) == 0xDE)
    {
      v37 = "th";
    }

    else
    {
      v37 = "ss";
      if (v35 != 223)
      {
        v40 = v35 & 0x3FE;
        switch(v40)
        {
          case 306:
            v37 = "ij";
            break;
          case 330:
            v37 = "ng";
            break;
          case 338:
            v37 = "oe";
            break;
          default:
            goto LABEL_86;
        }
      }
    }

    v38 = 0;
    v39 = 1;
    do
    {
      v26 = v33 + 1;
      v79[v33] = v37[v38];
      if ((v39 & 1) == 0)
      {
        break;
      }

      v39 = 0;
      v38 = 1;
      v15 = v33++ >= 0x3F;
    }

    while (!v15);
LABEL_66:
    if (++v34 >= a2)
    {
      break;
    }

    v33 = v26;
  }

  while (v26 < 0x40);
LABEL_89:
  if (v26 - 1 > 0x3E)
  {
    v54 = 0;
    if (v25)
    {
      goto LABEL_120;
    }
  }

  else
  {
    v41 = -1640531527;
    v42 = v79;
    if (v26 < 0xC)
    {
      v45 = -1640531527;
      v44 = -1640531527;
      v43 = v26;
    }

    else
    {
      v43 = v26;
      v44 = -1640531527;
      v45 = -1640531527;
      do
      {
        v46 = *(v42 + 1) + v45;
        v47 = *(v42 + 2) + v44;
        v48 = (*v42 + v41 - (v46 + v47)) ^ (v47 >> 13);
        v49 = (v46 - v47 - v48) ^ (v48 << 8);
        v50 = (v47 - v48 - v49) ^ (v49 >> 13);
        v51 = (v48 - v49 - v50) ^ (v50 >> 12);
        v52 = (v49 - v50 - v51) ^ (v51 << 16);
        v53 = (v50 - v51 - v52) ^ (v52 >> 5);
        v41 = (v51 - v52 - v53) ^ (v53 >> 3);
        v45 = (v52 - v53 - v41) ^ (v41 << 10);
        v44 = (v53 - v41 - v45) ^ (v45 >> 15);
        v42 += 12;
        v43 -= 12;
      }

      while (v43 > 0xB);
    }

    v55 = v44 + v26;
    if (v43 > 5)
    {
      if (v43 > 8)
      {
        if (v43 != 9)
        {
          if (v43 != 10)
          {
            v55 += v42[10] << 24;
          }

          v55 += v42[9] << 16;
        }

        v55 += v42[8] << 8;
LABEL_111:
        v45 += v42[7] << 24;
LABEL_112:
        v45 += v42[6] << 16;
      }

      else if (v43 != 6)
      {
        if (v43 != 7)
        {
          goto LABEL_111;
        }

        goto LABEL_112;
      }

      v45 += v42[5] << 8;
LABEL_114:
      v45 += v42[4];
LABEL_115:
      v41 += v42[3] << 24;
      goto LABEL_116;
    }

    if (v43 <= 2)
    {
      if (v43 == 1)
      {
        goto LABEL_118;
      }

      if (v43 == 2)
      {
        goto LABEL_117;
      }
    }

    else
    {
      if (v43 != 3)
      {
        if (v43 != 4)
        {
          goto LABEL_114;
        }

        goto LABEL_115;
      }

LABEL_116:
      v41 += v42[2] << 16;
LABEL_117:
      v41 += v42[1] << 8;
LABEL_118:
      v41 += *v42;
    }

    v56 = (v41 - v45 - v55) ^ (v55 >> 13);
    v57 = (v45 - v55 - v56) ^ (v56 << 8);
    v58 = (v55 - v56 - v57) ^ (v57 >> 13);
    v59 = (v56 - v57 - v58) ^ (v58 >> 12);
    v60 = (v57 - v58 - v59) ^ (v59 << 16);
    v61 = (v58 - v59 - v60) ^ (v60 >> 5);
    v62 = (v59 - v60 - v61) ^ (v61 >> 3);
    v54 = (v61 - v62 - ((v60 - v61 - v62) ^ (v62 << 10))) ^ (((v60 - v61 - v62) ^ (v62 << 10)) >> 15);
    if (v25)
    {
LABEL_120:
      v63 = result >> 3;
      if ((result >> 3))
      {
        v64 = (v54 - 1) / 4294967300.0;
        v65 = (v64 * v25);
        if (bswap32(*(v23 + 4 * v65)) <= v54)
        {
          do
          {
            v68 = v65 + 1;
            if (v65 >= (v25 - 1))
            {
              break;
            }

            v69 = bswap32(*(v23 + 4 * v65++));
          }

          while (v69 < v54);
          v66 = (v68 - 1);
          v67 = bswap32(*(v23 + 4 * v66));
        }

        else
        {
          do
          {
            v66 = v65;
            v67 = bswap32(*(v23 + 4 * v65));
            v15 = v65 != 0;
            LODWORD(v65) = v65 - 1;
          }

          while (v15 && v67 > v54);
        }

        if (v67 == v54)
        {
          v70 = *(v23 + 4 * v25 + v66);
          if (*(v23 + 4 * v25 + v66))
          {
            goto LABEL_154;
          }
        }

        v71 = (v64 * v63);
        if (bswap32(*(v24 + 4 * v71)) <= v54)
        {
          do
          {
            v74 = v71 + 1;
            if (v71 >= (v63 - 1))
            {
              break;
            }

            v75 = bswap32(*(v24 + 4 * v71++));
          }

          while (v75 < v54);
          v72 = (v74 - 1);
          v73 = bswap32(*(v24 + 4 * v72));
        }

        else
        {
          do
          {
            v72 = v71;
            v73 = bswap32(*(v24 + 4 * v71));
            v15 = v71 != 0;
            LODWORD(v71) = v71 - 1;
          }

          while (v15 && v73 > v54);
        }

        if (v73 == v54)
        {
          v76 = *(v24 + 4 * v63 + 4 * v72);
        }

        else
        {
          v76 = 0;
        }

        v70 = HIBYTE(v76);
        v77 = (v20 * 0.75);
        v78 = vcvtd_n_f64_u64(v20, 1uLL);
        if (!BYTE2(v76))
        {
          v77 = v20;
        }

        if (v70)
        {
          v20 = v78;
        }

        else
        {
          v20 = v77;
        }

        if (v76)
        {
          *(a4 + 8 * v76) += v20;
        }

        if (BYTE1(v76))
        {
          *(a4 + 8 * BYTE1(v76)) += v20;
        }

        if (BYTE2(v76))
        {
          *(a4 + 8 * BYTE2(v76)) += v20;
        }

        if (v70)
        {
LABEL_154:
          *(a4 + 8 * v70) += v20;
        }
      }
    }
  }

  return result;
}

unint64_t orthographyFlagsForScores(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = 0;
  v5 = 0;
  v6 = a1[2];
  v7 = a1[6];
  v8 = a1[8];
  v9 = 2;
  v11 = a1[11];
  v10 = a1[12];
  do
  {
    if (a1[v9] > v5)
    {
      v5 = a1[v9];
      v4 = v9;
    }

    ++v9;
  }

  while (v9 != 32);
  if (!v4)
  {
    return 0x8000000;
  }

  v12 = 0;
  for (i = 2; i != 32; ++i)
  {
    if (a1[i])
    {
      v14 = v4 == i;
    }

    else
    {
      v14 = 1;
    }

    if (!v14 && (i > 0xC || ((1 << i) & 0x1940) == 0))
    {
      v12 = i;
    }
  }

  if (v6)
  {
    if (v6 < 5)
    {
      v16 = 1;
    }

    else
    {
      v15 = 0;
      v16 = 1;
      for (j = 2; j != 6; ++j)
      {
        if (*(a3 + 8 * j) > v15)
        {
          v16 = j;
          v15 = *(a3 + 8 * j);
        }
      }
    }

    if (v4 == 2)
    {
      v4 = v16;
    }

    if (v12 == 2)
    {
      v12 = v16;
    }
  }

  if (!v7)
  {
    v20 = 0;
    goto LABEL_37;
  }

  if (*(a2 + 48) >= 2uLL)
  {
    v19 = 0;
    v20 = 1;
    for (k = 6; k != 128; ++k)
    {
      if (*(a3 + 8 * k) > v19)
      {
        v20 = k;
        v19 = *(a3 + 8 * k);
      }
    }

LABEL_37:
    if (!v8)
    {
      goto LABEL_47;
    }

LABEL_40:
    if (*(a2 + 64))
    {
      v22 = 0;
      v8 = 1;
      for (m = 128; m != 148; ++m)
      {
        if (*(a3 + 8 * m) > v22)
        {
          v8 = m;
          v22 = *(a3 + 8 * m);
        }
      }
    }

    else
    {
      v8 = 1;
    }

    goto LABEL_47;
  }

  v20 = 1;
  if (v8)
  {
    goto LABEL_40;
  }

LABEL_47:
  if (v11)
  {
    v24 = 160;
  }

  else
  {
    v24 = 0;
  }

  if (v10)
  {
    v25 = 192;
  }

  else
  {
    v25 = 0;
  }

  return NSOrthographyFlagsForScriptAndOrthographyIndexes(v4, v20, v8, v24, v25, v12);
}

void sub_181158E30(_Unwind_Exception *exc_buf, int a2)
{
  if (a2)
  {
    objc_begin_catch(exc_buf);
    JUMPOUT(0x181158DA8);
  }

  _Unwind_Resume(exc_buf);
}

void sub_181159A30(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    [v1 invalidate];
  }

  _Unwind_Resume(exception_object);
}

uint64_t __NSMeasurementConvertedForFileSizeDescription(void *a1, int a2, int a3, uint64_t a4, uint64_t *a5)
{
  if (a2)
  {
    v9 = a2;
  }

  else
  {
    v9 = 65472;
  }

  v10 = [&unk_1EEF59F90 count];
  v11 = a4;
  v12 = __clz(__rbit64(v9));
  v24 = v10;
  if (v10 <= v12)
  {
    v13 = v12;
  }

  else
  {
    v13 = v10;
  }

  v14 = 0x7FFFFFFFFFFFFFFFLL;
  do
  {
    if (v13 == v12)
    {
      break;
    }

    if ((v9 & (1 << v12)) != 0)
    {
      v14 = v12;
    }

    [objc_msgSend(a1 measurementByConvertingToUnit:{informationStorageUnitFromAllowedUnit(v9 & (1 << v12), a3)), "doubleValue"}];
    v16 = *&v15;
    if ((a2 & 0x400000) != 0)
    {
      v17 = 0.0;
      if (v16 >= 1.0e-20 && v16 < 100.0)
      {
        v17 = (2 - vcvtmd_s64_f64(log10(v16)));
      }
    }

    else
    {
      LOBYTE(v15) = numberOfFractionDigits[v12];
      v17 = v15;
    }

    v19 = __exp10(v17);
    ++v12;
  }

  while (fabs(round(v16 * v19) / v19) >= v11 || v14 == 0x7FFFFFFFFFFFFFFFLL);
  v21 = v24 - 1;
  if (v14 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v21 = v14;
  }

  if (a5)
  {
    *a5 = v21;
  }

  v22 = informationStorageUnitFromAllowedUnit(1 << v21, a3);

  return [a1 measurementByConvertingToUnit:v22];
}

NSUnitInformationStorage *informationStorageUnitFromAllowedUnit(uint64_t a1, int a2)
{
  if (a1 > 15)
  {
    if (a1 > 63)
    {
      if (a1 == 64)
      {
        if (a2)
        {
          return +[NSUnitInformationStorage exabytes];
        }

        else
        {
          return +[NSUnitInformationStorage exbibytes];
        }
      }

      else
      {
        if (a1 != 128)
        {
          goto LABEL_27;
        }

        if (a2)
        {
          return +[NSUnitInformationStorage zettabytes];
        }

        else
        {
          return +[NSUnitInformationStorage zebibytes];
        }
      }
    }

    else if (a1 == 16)
    {
      if (a2)
      {
        return +[NSUnitInformationStorage terabytes];
      }

      else
      {
        return +[NSUnitInformationStorage tebibytes];
      }
    }

    else
    {
      if (a1 != 32)
      {
        goto LABEL_27;
      }

      if (a2)
      {
        return +[NSUnitInformationStorage petabytes];
      }

      else
      {
        return +[NSUnitInformationStorage pebibytes];
      }
    }
  }

  else
  {
    if (a1 <= 3)
    {
      if (a1 == 1)
      {
        return +[NSUnitInformationStorage bytes];
      }

      if (a1 == 2)
      {
        if (a2)
        {
          return +[NSUnitInformationStorage kilobytes];
        }

        else
        {
          return +[NSUnitInformationStorage kibibytes];
        }
      }

      goto LABEL_27;
    }

    if (a1 != 4)
    {
      if (a1 == 8)
      {
        if (a2)
        {
          return +[NSUnitInformationStorage gigabytes];
        }

        else
        {
          return +[NSUnitInformationStorage gibibytes];
        }
      }

LABEL_27:
      if (a2)
      {
        return +[NSUnitInformationStorage yottabytes];
      }

      else
      {
        return +[NSUnitInformationStorage yobibytes];
      }
    }

    if (a2)
    {
      return +[NSUnitInformationStorage megabytes];
    }

    else
    {
      return +[NSUnitInformationStorage mebibytes];
    }
  }
}

NSString *__NSLocalizedFileSizeDescriptionWithMeasurement(void *a1, unint64_t a2, uint64_t a3)
{
  v18[1] = *MEMORY[0x1E69E9840];
  if ((a2 & 0x180000) != 0)
  {
    v6 = (a2 >> 18) & 1;
  }

  else
  {
    v6 = 1;
  }

  if (v6)
  {
    v7 = 1000;
  }

  else
  {
    v7 = 1024;
  }

  v8 = [objc_msgSend(a1 "unit")];
  v9 = a1;
  if ((v8 & 1) == 0)
  {
    v9 = [a1 measurementByConvertingToUnit:{+[NSUnitInformationStorage bytes](NSUnitInformationStorage, "bytes")}];
  }

  [v9 doubleValue];
  v11 = v10;
  if ((*&v10 & 0x7FFFFFFFFFFFFFFFuLL) < 0x7FF0000000000000)
  {
    if (fabs(v10) <= 9.22337204e18)
    {
      v16 = 0x7FFFFFFFFFFFFFFFLL;
      if (v10 != 9.22337204e18)
      {
        v16 = v10;
      }

      if (v10 == -9.22337204e18)
      {
        v17 = 0x8000000000000000;
      }

      else
      {
        v17 = v16;
      }

      return __NSLocalizedFileSizeDescription(v17, v7, a2, a3);
    }

    else
    {
      v18[0] = 0;
      [__NSMeasurementConvertedForFileSizeDescription(a1 a2];
      v15 = [NSNumber numberWithDouble:?];
      return __NSLocalizedFileSizeDescriptionFormatNumber(v15, v18[0], [NSNumber numberWithDouble:v11], a2, a3);
    }
  }

  else
  {
    v12 = [NSNumber numberWithDouble:v10];
    v13 = [NSNumber numberWithDouble:v11];

    return __NSLocalizedFileSizeDescriptionFormatNumber(v12, 0, v13, a2, a3);
  }
}

void sub_18115C274(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, char a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, char a59, uint64_t a60, uint64_t a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a35, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a59, 8);
  _Block_object_dispose(&a65, 8);
  _Block_object_dispose(&a69, 8);
  _Unwind_Resume(a1);
}

uint64_t ___diffStr_block_invoke(uint64_t a1)
{
  [*(a1 + 32) appendFormat:@"%lu", *(*(*(a1 + 40) + 8) + 24) + 1];
  v2 = *(*(*(a1 + 48) + 8) + 24);
  if (*(*(*(a1 + 40) + 8) + 24) != v2)
  {
    [*(a1 + 32) appendFormat:@", %lu", v2 + 1];
  }

  [*(a1 + 32) appendString:@"c"];
  [*(a1 + 32) appendFormat:@"%lu", *(*(*(a1 + 56) + 8) + 24) + 1];
  v3 = *(*(*(a1 + 64) + 8) + 24);
  if (*(*(*(a1 + 56) + 8) + 24) != v3)
  {
    [*(a1 + 32) appendFormat:@", %lu", v3 + 1];
  }

  [*(a1 + 32) appendString:@"\n"];
  result = [*(a1 + 32) appendString:*(*(*(a1 + 72) + 8) + 40)];
  *(*(*(a1 + 72) + 8) + 40) = 0;
  return result;
}

uint64_t ___diffStr_block_invoke_2(void *a1, void *a2)
{
  v4 = [a2 changeType];
  v5 = [a2 index];
  v6 = v5;
  if (v4 == 1)
  {
    v7 = *(*(a1[5] + 8) + 24) + 1;
  }

  else
  {
    v8 = *(*(a1[7] + 8) + 24) != 1 || *(*(a1[8] + 8) + 24) != 1;
    v7 = v8 + *(*(a1[6] + 8) + 24);
  }

  v9 = *(*(a1[9] + 8) + 40);
  if (v9)
  {
    v10 = v5 == v7;
  }

  else
  {
    v10 = 1;
  }

  if (!v10)
  {
    (*(a1[4] + 16))();
    v9 = *(*(a1[9] + 8) + 40);
  }

  if (!v9)
  {
    *(*(a1[9] + 8) + 40) = objc_opt_new();
    if (v4 == 1)
    {
      *(*(a1[5] + 8) + 24) = v6;
      *(*(a1[10] + 8) + 24) = v6;
      v11 = v6 - *(*(a1[12] + 8) + 24) + *(*(a1[13] + 8) + 24);
      v12 = 1;
    }

    else
    {
      v12 = 0;
      v13 = *(*(a1[12] + 8) + 24) + v6 - *(*(a1[13] + 8) + 24);
      *(*(a1[5] + 8) + 24) = v13;
      *(*(a1[10] + 8) + 24) = v13;
      v11 = v6;
    }

    *(*(a1[6] + 8) + 24) = v11;
    *(*(a1[11] + 8) + 24) = v11;
    *(*(a1[8] + 8) + 24) = v12;
    *(*(a1[7] + 8) + 24) = 1;
  }

  if (v4 == 1)
  {
    result = [*(*(a1[9] + 8) + 40) appendFormat:@"< %@\n", objc_msgSend(a2, "object")];
    ++*(*(a1[12] + 8) + 24);
    v15 = 5;
  }

  else
  {
    v16 = *(a1[8] + 8);
    if (*(v16 + 24) != v4)
    {
      *(v16 + 24) = v4;
      [*(*(a1[9] + 8) + 40) appendString:@"---\n"];
    }

    ++*(*(a1[13] + 8) + 24);
    result = [*(*(a1[9] + 8) + 40) appendFormat:@"> %@\n", objc_msgSend(a2, "object")];
    v15 = 6;
  }

  *(*(a1[v15] + 8) + 24) = v6;
  return result;
}

void *___loadCrashReporterSupport_block_invoke()
{
  result = dlopen("/System/Library/PrivateFrameworks/CrashReporterSupport.framework/CrashReporterSupport", 256);
  if (result)
  {
    result = dlsym(result, "SimulateCrash");
    off_1ED43FDD0 = result;
  }

  return result;
}

Class ___loadAssertionServices_block_invoke()
{
  dlopen("/System/Library/PrivateFrameworks/AssertionServices.framework/AssertionServices", 256);
  result = objc_lookUpClass("BKSProcessAssertion");
  _MergedGlobals_138 = result != 0;
  return result;
}

CFStringRef __CFBasicHashNullCallback(uint64_t a1, int a2, const __CFString *a3, const __CFString *a4)
{
  result = a3;
  if (a2 <= 13)
  {
    if ((a2 - 10) < 4)
    {
      return result;
    }

    if (a2 == 8)
    {
      return &CFBasicHashNullCallbacks;
    }

    return 0;
  }

  if (a2 > 0x1B)
  {
    return 0;
  }

  if (((1 << a2) & 0x3C0000) != 0)
  {
    return (a3 == a4);
  }

  if (((1 << a2) & 0xF000000) != 0)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E4A8], 0, @"<%p>", a3);
  }

  if (((1 << a2) & 0xC00000) == 0)
  {
    return 0;
  }

  return result;
}

void *CFBasicHashGetBucket@<X0>(void *result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = result + 5;
  v4 = result[5];
  *a3 = a2;
  v5 = *(v4 + 8 * a2);
  a3[3] = v5;
  v6 = result[2];
  v7 = result[3];
  if ((v6 & 4) != 0)
  {
    v8 = *(result[6] + 8 * a2);
  }

  else
  {
    v8 = 0;
  }

  a3[4] = v8;
  if ((v6 & 0x18) != 0)
  {
    v9 = (v6 >> 3) & 3;
    if (!v9)
    {
      goto LABEL_25;
    }

    v5 = *(v3[v9] + 8 * a2);
  }

  a3[1] = v5;
  if ((v6 & 0x60) != 0)
  {
    v10 = (v6 >> 5) & 3;
    if (!v10)
    {
      goto LABEL_25;
    }

    v11 = *(v3[v10] + 8 * a2);
  }

  else
  {
    v11 = 0;
  }

  a3[2] = v11;
  if ((v6 & 0x380) != 0)
  {
    v12 = (v6 >> 7) & 7;
    if (!v12)
    {
      goto LABEL_25;
    }

    v13 = *(v3[v12] + 8 * a2);
  }

  else
  {
    v14 = (v7 << 32) & 0xFFFFFF0000000000;
    v16 = v5 == v14;
    v15 = v5 ^ v14;
    v16 = v16 || v15 == -1;
    v13 = !v16;
  }

  a3[5] = v13;
  if ((v6 & 0x1C00) == 0)
  {
    v18 = 0;
    goto LABEL_24;
  }

  v17 = (v6 >> 10) & 7;
  if (v17)
  {
    v18 = *(v3[v17] + 8 * a2);
LABEL_24:
    a3[6] = v18;
    return result;
  }

LABEL_25:
  __break(1u);
  return result;
}

uint64_t CFBasicHashesAreEqual(void *a1, void *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  Count = CFBasicHashGetCount(a1);
  if (Count != CFBasicHashGetCount(a2))
  {
    return 0;
  }

  v5 = 1;
  if (Count)
  {
    v8 = 0;
    v9 = &v8;
    v10 = 0x2020000000;
    v11 = 1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = __CFBasicHashesAreEqual_block_invoke;
    v7[3] = &unk_1E69F6D50;
    v7[4] = &v8;
    v7[5] = a2;
    v7[6] = a1;
    CFBasicHashApply(a1, v7);
    v5 = *(v9 + 24);
    _Block_object_dispose(&v8, 8);
  }

  return v5;
}

void sub_18115E17C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __CFBasicHashesAreEqual_block_invoke(void *a1, void *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  memset(v10, 0, sizeof(v10));
  result = a1[5];
  v5 = *(result + 16);
  if ((v5 & 0x3F0000) != 0)
  {
    v6 = a2[1];
    v7 = v5 & 3;
    if (v7 <= 1)
    {
      if (v7 != 1)
      {
        __break(1u);
        return result;
      }

      ___CFBasicHashFindBucket1(result, v6, 0, v10);
    }

    else if (v7 == 2)
    {
      ___CFBasicHashFindBucket2(result, v6, 0, v10);
    }

    else
    {
      ___CFBasicHashFindBucket3(result, v6, 0, v10);
    }
  }

  else
  {
    memset(&v10[24], 0, 32);
  }

  if (a2[5] == *&v10[40])
  {
    v8 = a1[6];
    if ((*(v8 + 16) & 0x18) == 0)
    {
      return 1;
    }

    v9 = a2[3];
    if (v9 == *&v10[24] || (**(v8 + 32))(v8, 18, v9))
    {
      return 1;
    }
  }

  result = 0;
  *(*(a1[4] + 8) + 24) = 0;
  return result;
}

uint64_t __CFBasicHashReplaceValue(uint64_t a1, void *a2, uint64_t a3)
{
  *(a1 + 30) = ((*(a1 + 30) << 48) + 0x1000000000000) >> 48;
  v6 = (**(a1 + 32))();
  v7 = v6;
  v8 = *(a1 + 16);
  if ((v8 & 0x18) != 0)
  {
    v9 = (**(a1 + 32))(a1, 12, a3, 0);
    v8 = *(a1 + 16);
    if ((v8 & 4) == 0)
    {
LABEL_3:
      v10 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v9 = v6;
    if ((v8 & 4) == 0)
    {
      goto LABEL_3;
    }
  }

  v10 = (**(a1 + 32))(a1, 11, 0, 0);
  v8 = *(a1 + 16);
LABEL_6:
  if ((v8 & 0x60) != 0)
  {
    v11 = (**(a1 + 32))(a1, 13, 0, 0);
  }

  else
  {
    v11 = 0;
  }

  v12 = (*(a1 + 24) << 32) & 0xFFFFFF0000000000;
  if (v9 == v12 || (v12 ^ v9) == -1)
  {
    __CFBasicHashFindNewMarker(a1, v9);
  }

  v15 = a1 + 40;
  v14 = *(a1 + 40);
  v16 = *(v14 + 8 * *a2);
  *(v14 + 8 * *a2) = v7;
  result = (**(a1 + 32))(a1, 14, v16, 0);
  v18 = *(a1 + 16);
  if ((v18 & 4) != 0)
  {
    v19 = *(a1 + 48);
    v20 = *(v19 + 8 * *a2);
    *(v19 + 8 * *a2) = v10;
    result = (**(a1 + 32))(a1, 15, v20, 0);
    v18 = *(a1 + 16);
  }

  if ((v18 & 0x18) != 0)
  {
    v21 = (v18 >> 3) & 3;
    if (!v21)
    {
      goto LABEL_26;
    }

    v22 = *(v15 + 8 * v21);
    v23 = *(v22 + 8 * *a2);
    *(v22 + 8 * *a2) = v9;
    result = (**(a1 + 32))(a1, 16, v23, 0);
    v18 = *(a1 + 16);
  }

  if ((v18 & 0x60) == 0)
  {
    return result;
  }

  v24 = (v18 >> 5) & 3;
  if (!v24)
  {
LABEL_26:
    __break(1u);
    return result;
  }

  v25 = *(v15 + 8 * v24);
  v26 = *(v25 + 8 * *a2);
  *(v25 + 8 * *a2) = v11;
  v27 = **(a1 + 32);

  return v27(a1, 17, v26, 0);
}

uint64_t __CFBasicHashCopyDescription_block_invoke(uint64_t a1, uint64_t *a2)
{
  if (*(a1 + 56))
  {
    v4 = **(*(a1 + 32) + 32);
  }

  else
  {
    v4 = __CFBasicHashNullCallback;
  }

  v5 = v4();
  v6 = *(a1 + 32);
  v7 = *(v6 + 16);
  if ((v7 & 0x18) != 0)
  {
    v8 = (v4)(v6, 26, a2[1], 0, *(v6 + 32));
    v7 = *(*(a1 + 32) + 16);
  }

  else
  {
    v8 = 0;
  }

  v9 = v7 & 0x18;
  v10 = v7 & 0x380;
  v11 = *(a1 + 40);
  v12 = *(a1 + 48);
  v13 = *a2;
  if (v9)
  {
    v14 = v10 == 0;
  }

  else
  {
    v14 = 1;
  }

  if (v14)
  {
    if (v9)
    {
      CFStringAppendFormat(v11, 0, @"%@%ld : %@ = %@\n", v12, v13, v8, v5);
    }

    else if (v10)
    {
      CFStringAppendFormat(v11, 0, @"%@%ld : %@ (%ld)\n", v12, v13, v5, a2[5]);
    }

    else
    {
      CFStringAppendFormat(v11, 0, @"%@%ld : %@\n", v12, *a2, v5);
    }
  }

  else
  {
    CFStringAppendFormat(v11, 0, @"%@%ld : %@ = %@ (%ld)\n", v12, v13, v8, v5, a2[5]);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  return 1;
}

CFStringRef __CFBasicHashCopyDescription(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *MEMORY[0x1E695E4A8];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E4A8], 0);
  v4 = a1[2];
  if ((v4 & 0x380) != 0)
  {
    v5 = "multi";
  }

  else
  {
    v5 = "";
  }

  if ((v4 & 0x18) != 0)
  {
    v6 = "dict";
  }

  else
  {
    v6 = "set";
  }

  Count = CFBasicHashGetCount(a1);
  CFStringAppendFormat(Mutable, 0, @"%@{type = %s %s%s, count = %ld,\n", &stru_1EEEFDF90, "mutable", v5, v6, Count);
  CFStringAppendFormat(Mutable, 0, @"%@entries =>\n", &stru_1EEEFDF90);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __CFBasicHashCopyDescription_block_invoke;
  v11[3] = &__block_descriptor_57_e18_C64__0___qQQQQQQ_8l;
  v12 = 1;
  v11[4] = a1;
  v11[5] = Mutable;
  v11[6] = @"\t";
  CFBasicHashApply(a1, v11);
  CFStringAppendFormat(Mutable, 0, @"%@}\n", &stru_1EEEFDF90);
  v8 = CFGetAllocator(a1);
  v9 = CFStringCreateWithFormat(v2, 0, @"<CFBasicHash %p [%p]>%@", a1, v8, Mutable);
  CFRelease(Mutable);
  return v9;
}

unint64_t ___CFBasicHashFindBucket2@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  result = (**(a1 + 32))();
  v8 = *(a1 + 16);
  if ((v8 & 0x18) != 0)
  {
    v9 = (v8 >> 3) & 3;
    if (!v9)
    {
      goto LABEL_54;
    }

    v10 = (a1 + 8 * v9 + 40);
  }

  else
  {
    v10 = (a1 + 40);
  }

  v11 = *v10;
  if ((v8 & 0xE000) == 0)
  {
    v12 = 0;
    goto LABEL_9;
  }

  if (!(v8 >> 13))
  {
LABEL_54:
    __break(1u);
    return result;
  }

  v12 = *(a1 + 8 * (v8 >> 13) + 40);
LABEL_9:
  v13 = (*(a1 + 24) << 32) & 0xFFFFFF0000000000;
  v14 = ~v13;
  v15 = __CFBasicHashTableSizes[(v8 >> 16) & 0x3F];
  a4[1] = ~v13;
  a4[2] = 0;
  v16 = result % v15;
  if (v15 <= 1)
  {
    v17 = 1;
  }

  else
  {
    v17 = v15;
  }

  a4[3] = v14;
  a4[4] = 0;
  if (result / v15 % v15)
  {
    v18 = result / v15 % v15;
  }

  else
  {
    v18 = v15 - 1;
  }

  a4[5] = 0;
  a4[6] = 0;
  v19 = -1;
  while (1)
  {
    v20 = *(v11 + 8 * v16);
    if (v20 == v13)
    {
      *a4 = v19;
      if (v19 == -1)
      {
        a4[3] = v13;
        *a4 = v16;
        a4[1] = v13;
      }

      return result;
    }

    if (a3)
    {
      goto LABEL_18;
    }

    if (v20 == v14)
    {
      if (v19 == -1)
      {
        v19 = v16;
      }

      goto LABEL_18;
    }

    if (v20 == a2)
    {
      break;
    }

    if (!v12 || *(v12 + 8 * v16) == result)
    {
      v35 = v12;
      v36 = result;
      v33 = v19;
      v34 = v14;
      v22 = (**(a1 + 32))(a1, 20, v20, a2);
      v19 = v33;
      v14 = v34;
      v23 = v22 == 0;
      v12 = v35;
      result = v36;
      if (!v23)
      {
        goto LABEL_36;
      }
    }

LABEL_18:
    if (v15 <= v16 + v18)
    {
      v21 = v15;
    }

    else
    {
      v21 = 0;
    }

    v16 = v16 + v18 - v21;
    if (!--v17)
    {
      *a4 = v19;
      return result;
    }
  }

  v20 = a2;
LABEL_36:
  *a4 = v16;
  v24 = *(a1 + 16);
  v25 = v20;
  if ((v24 & 0x18) != 0)
  {
    v25 = *(*(a1 + 40) + 8 * v16);
  }

  a4[3] = v25;
  if ((v24 & 4) != 0)
  {
    v26 = *(*(a1 + 48) + 8 * v16);
  }

  else
  {
    v26 = 0;
  }

  a4[4] = v26;
  a4[1] = v20;
  if ((v24 & 0x60) != 0)
  {
    v27 = (v24 >> 5) & 3;
    if (!v27)
    {
      goto LABEL_54;
    }

    v28 = *(*(a1 + 8 * v27 + 40) + 8 * v16);
  }

  else
  {
    v28 = 0;
  }

  a4[2] = v28;
  if ((v24 & 0x380) != 0)
  {
    v29 = (v24 >> 7) & 7;
    if (!v29)
    {
      goto LABEL_54;
    }

    v30 = *(*(a1 + 8 * v29 + 40) + 8 * v16);
  }

  else
  {
    v30 = 1;
  }

  a4[5] = v30;
  if ((v24 & 0x1C00) != 0)
  {
    v31 = (v24 >> 10) & 7;
    if (!v31)
    {
      goto LABEL_54;
    }

    v32 = *(*(a1 + 8 * v31 + 40) + 8 * v16);
  }

  else
  {
    v32 = 1;
  }

  a4[6] = v32;
  return result;
}

unint64_t ___CFBasicHashFindBucket3@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t *a4@<X8>)
{
  result = (**(a1 + 32))();
  v7 = a1;
  v8 = *(a1 + 16);
  if ((v8 & 0x18) != 0)
  {
    v9 = (v8 >> 3) & 3;
    if (!v9)
    {
      goto LABEL_55;
    }

    v10 = (a1 + 8 * v9 + 40);
  }

  else
  {
    v10 = (a1 + 40);
  }

  v11 = *v10;
  if ((v8 & 0xE000) == 0)
  {
    v12 = 0;
    goto LABEL_9;
  }

  if (!(v8 >> 13))
  {
LABEL_55:
    __break(1u);
    return result;
  }

  v12 = *(a1 + 8 * (v8 >> 13) + 40);
LABEL_9:
  v13 = (*(a1 + 24) << 32) & 0xFFFFFF0000000000;
  v14 = ~v13;
  v15 = (v8 >> 16) & 0x3F;
  v16 = __CFBasicHashTableSizes[v15];
  a4[1] = ~v13;
  a4[2] = 0;
  v17 = result % v16;
  if (v16 <= 1)
  {
    v18 = 1;
  }

  else
  {
    v18 = v16;
  }

  if (result / v16 % v16)
  {
    v19 = result / v16 % v16;
  }

  else
  {
    v19 = v16 - 1;
  }

  a4[5] = 0;
  a4[6] = 0;
  a4[3] = v14;
  a4[4] = 0;
  v43 = a4;
  v20 = __CFBasicHashPrimitiveRoots[v15];
  v21 = -1;
  v22 = v20;
  v23 = result % v16;
  v24 = a3;
  while (1)
  {
    v25 = *(v11 + 8 * v23);
    if (v25 == v13)
    {
      *v43 = v21;
      if (v21 == -1)
      {
        v43[3] = v13;
        *v43 = v23;
        v43[1] = v13;
      }

      return result;
    }

    if (v24)
    {
      goto LABEL_18;
    }

    if (v25 == v14)
    {
      if (v21 == -1)
      {
        v21 = v23;
      }

      goto LABEL_18;
    }

    if (v25 == a2)
    {
      break;
    }

    if (!v12 || *(v12 + 8 * v23) == result)
    {
      v40 = result;
      v41 = v7;
      v38 = v14;
      v39 = v12;
      v37 = v21;
      v26 = (**(v7 + 32))(v7, 20, v25, a2);
      v21 = v37;
      v14 = v38;
      v24 = a3;
      v27 = v26 == 0;
      v12 = v39;
      result = v40;
      v7 = v41;
      if (!v27)
      {
        goto LABEL_37;
      }
    }

LABEL_18:
    v23 = v17 + v22 * v19;
    if (v16 <= v23)
    {
      v23 %= v16;
    }

    v22 *= v20;
    if (v16 <= v22)
    {
      v22 %= v16;
    }

    if (!--v18)
    {
      *v43 = v21;
      return result;
    }
  }

  v25 = a2;
LABEL_37:
  *v43 = v23;
  v28 = *(v7 + 16);
  v29 = v25;
  if ((v28 & 0x18) != 0)
  {
    v29 = *(*(v7 + 40) + 8 * v23);
  }

  v43[3] = v29;
  if ((v28 & 4) != 0)
  {
    v30 = *(*(v7 + 48) + 8 * v23);
  }

  else
  {
    v30 = 0;
  }

  v43[4] = v30;
  v43[1] = v25;
  if ((v28 & 0x60) != 0)
  {
    v31 = (v28 >> 5) & 3;
    if (!v31)
    {
      goto LABEL_55;
    }

    v32 = *(*(v7 + 8 * v31 + 40) + 8 * v23);
  }

  else
  {
    v32 = 0;
  }

  v43[2] = v32;
  if ((v28 & 0x380) != 0)
  {
    v33 = (v28 >> 7) & 7;
    if (!v33)
    {
      goto LABEL_55;
    }

    v34 = *(*(v7 + 8 * v33 + 40) + 8 * v23);
  }

  else
  {
    v34 = 1;
  }

  v43[5] = v34;
  if ((v28 & 0x1C00) != 0)
  {
    v35 = (v28 >> 10) & 7;
    if (!v35)
    {
      goto LABEL_55;
    }

    v36 = *(*(v7 + 8 * v35 + 40) + 8 * v23);
  }

  else
  {
    v36 = 1;
  }

  v43[6] = v36;
  return result;
}

uint64_t __CFBasicHashFindNewMarker(uint64_t result, uint64_t a2)
{
  v8 = *(result + 16);
  v9 = *(result + 24);
  if ((v8 & 0x18) == 0)
  {
    v11 = (result + 40);
    v12 = 4;
    goto LABEL_5;
  }

  v10 = (v8 >> 3) & 3;
  if (v10)
  {
    v11 = (result + 8 * v10 + 40);
    v12 = 6;
LABEL_5:
    v10 = v9 >> 8 << 40;
    v2 = *v11;
    v7 = (v8 >> 16) & 0x3F;
    v8 = 4097;
    if (v9 >> 8)
    {
      v8 = (v9 >> 8) + 1;
    }

    v3 = (1 << v12) & v9;
    if (__CFBasicHashTableSizes[v7] <= 1)
    {
      v4 = 1;
    }

    else
    {
      v4 = __CFBasicHashTableSizes[v7];
    }

    do
    {
      v5 = v8 << 40;
      if (v8 << 40 != a2)
      {
        v6 = ~(v8 << 40);
        if (v6 != a2)
        {
          if (!v7 || v7 == 63)
          {
            goto LABEL_35;
          }

          v13 = v4;
          v14 = v2;
          while (*v14 != v5 && *v14 != v6)
          {
            ++v14;
            if (!--v13)
            {
              goto LABEL_23;
            }
          }
        }
      }

      ++v8;
    }

    while (v8 != 0x4000000);
  }

  __break(1u);
LABEL_23:
  if (v7 && v7 != 63)
  {
    while (1)
    {
      if (v3)
      {
        if (v10 != *v2)
        {
          v16 = v10 ^ *v2;
          goto LABEL_31;
        }
      }

      else if (*v2 != v10)
      {
        v16 = *v2 ^ v10;
LABEL_31:
        if (v16 == -1)
        {
          *v2 = v6;
        }

        goto LABEL_33;
      }

      *v2 = v5;
LABEL_33:
      ++v2;
      if (!--v4)
      {
        v9 = *(result + 24);
        break;
      }
    }
  }

LABEL_35:
  *(result + 24) = v9 & 0xFFFFFFFF000000FFLL | ((v8 & 0xFFFFFF) << 8);
  return result;
}

void *initUAContinuityErrorDomain()
{
  result = qword_1ED43FE30;
  if (qword_1ED43FE30 || (result = dlopen("/System/Library/PrivateFrameworks/UserActivity.framework/UserActivity", 2), (qword_1ED43FE30 = result) != 0))
  {
    result = *dlsym(result, "UAContinuityErrorDomain");
    qword_1ED43FE40 = result;
    getUAContinuityErrorDomain = UAContinuityErrorDomainFunction;
  }

  return result;
}

uint64_t skipJSON5Comment(uint64_t *a1, char a2, void *a3)
{
  v20[2] = *MEMORY[0x1E69E9840];
  v4 = a1[2];
  v5 = a1[3];
  if (a2)
  {
    if (v4 > v5)
    {
      v6 = *a1;
      v7 = v5 + 1;
      while (1)
      {
        v8 = *(v6 + v7 - 1);
        a1[3] = v7;
        if (v8 == 13)
        {
          break;
        }

        if (v8 == 10)
        {
          goto LABEL_24;
        }

        if (++v7 - v4 == 1)
        {
          goto LABEL_20;
        }
      }

      if (v4 > v7 && *(v6 + v7) == 10)
      {
        a1[3] = ++v7;
      }

LABEL_24:
      ++a1[5];
      a1[6] = v7;
      return 1;
    }

LABEL_20:
    a1[3] = v4;
    return 1;
  }

  v10 = v5 + 1;
  if (v4 > v10)
  {
    v11 = *a1;
    while (*(v11 + v10 - 1) != 42 || *(v11 + v10) != 47)
    {
      a1[3] = v10++;
      if (v4 == v10)
      {
        goto LABEL_13;
      }
    }

    v4 = v10 + 1;
    goto LABEL_20;
  }

LABEL_13:
  a1[3] = v4;
  if (a3)
  {
    v12 = a1[6];
    v13 = v4 >= v12;
    v14 = v4 - v12;
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v15 = 0;
    }

    v16 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Unterminated block comment", a1[5], v15];
    v17 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
    v19[0] = @"NSDebugDescription";
    v19[1] = @"NSJSONSerializationErrorIndex";
    v20[0] = v16;
    v20[1] = v17;
    *a3 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:2]);
  }

  return 0;
}

uint64_t __newJSONString_block_invoke()
{
  v2 = *MEMORY[0x1E69E9840];
  [@"[[:Lu:][:Ll:][:Lt:][:Lm:][:Lo:][:Nl:]]" getCharacters:{&v1 - ((2 * objc_msgSend(@"[[:Lu:][:Ll:][:Lt:][:Lm:][:Lo:][:Nl:]]", "length") + 17) & 0xFFFFFFFFFFFFFFF0)}];
  HIDWORD(v1) = 0;
  [@"[[:Lu:][:Ll:][:Lt:][:Lm:][:Lo:][:Nl:]]" length];
  result = uset_openPattern();
  qword_1ED43FE50 = result;
  if (SHIDWORD(v1) >= 1)
  {
    qword_1EA7BB378 = "Unable to open unicode pattern";
    __break(1u);
  }

  return result;
}

void __newJSONString_block_invoke_2(uint64_t a1, void *a2, _BYTE *a3)
{
  free(a2);
  *a3 = 1;
  *(*(*(a1 + 32) + 8) + 24) = 1;
}

uint64_t newJSON5InfinityOrNaN(uint64_t *a1, void *a2)
{
  v37[2] = *MEMORY[0x1E69E9840];
  v4 = a1[3];
  v5 = *a1;
  v6 = *(*a1 + v4);
  if (v6 == 45 || v6 == 43)
  {
    v7 = v4 + 1;
    if (a1[2] <= v4 + 1)
    {
      if (a2)
      {
        v9 = a1[6];
        v10 = v4 >= v9;
        v11 = v4 - v9;
        if (v10)
        {
          v12 = v11;
        }

        else
        {
          v12 = 0;
        }

        v13 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Partial negative infinity or NaN around character %lu (EoF).", a1[5], v12];
        goto LABEL_48;
      }

      return 0;
    }

    a1[3] = v7;
    v8 = *(v5 + v7);
  }

  else
  {
    v8 = *(*a1 + v4);
    v7 = a1[3];
  }

  v14 = v5 + v7;
  if (v8 == 78)
  {
    if (a1[2] <= v7 + 2)
    {
      a1[3] = v7;
      if (a2)
      {
        v26 = a1[6];
        v10 = v7 >= v26;
        v27 = v7 - v26;
        if (v10)
        {
          v28 = v27;
        }

        else
        {
          v28 = 0;
        }

        v13 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Partial NaN around character %lu (EoF).", a1[5], v28];
        goto LABEL_48;
      }

      return 0;
    }

    a1[3] = v7 + 2;
    if (*v14 != 78 || *(v14 + 1) != 97 || *(v14 + 2) != 78)
    {
      a1[3] = v7;
      if (a2)
      {
        v29 = a1[6];
        v10 = v7 >= v29;
        v30 = v7 - v29;
        if (v10)
        {
          v31 = v30;
        }

        else
        {
          v31 = 0;
        }

        v13 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Invalid NaN around character %lu (EoF).", a1[5], v31];
        goto LABEL_48;
      }

      return 0;
    }

    if (v6 == 45)
    {
      v18 = NAN;
    }

    else
    {
      v18 = NAN;
    }

    v19 = v7 + 3;
  }

  else
  {
    if (v8 != 73)
    {
      a1[3] = v7;
      if (a2)
      {
        v20 = a1[6];
        v10 = v7 >= v20;
        v21 = v7 - v20;
        if (v10)
        {
          v22 = v21;
        }

        else
        {
          v22 = 0;
        }

        v13 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Invalid Infinity or NaN", a1[5], v22];
        goto LABEL_48;
      }

      return 0;
    }

    if (a1[2] <= v7 + 7)
    {
      a1[3] = v7;
      if (a2)
      {
        v23 = a1[6];
        v10 = v7 >= v23;
        v24 = v7 - v23;
        if (v10)
        {
          v25 = v24;
        }

        else
        {
          v25 = 0;
        }

        v13 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Partial infinity around character %lu (EoF).", a1[5], v25];
        goto LABEL_48;
      }

      return 0;
    }

    a1[3] = v7 + 7;
    if (strncmp(v14, "Infinity", 8uLL))
    {
      a1[3] = v7;
      if (a2)
      {
        v15 = a1[6];
        v10 = v7 >= v15;
        v16 = v7 - v15;
        if (v10)
        {
          v17 = v16;
        }

        else
        {
          v17 = 0;
        }

        v13 = [[NSString alloc] initWithFormat:@"%@ around line %lu, column %lu.", @"Invalid infinity around character %lu (EoF).", a1[5], v17];
LABEL_48:
        v32 = v13;
        v33 = [[NSNumber alloc] initWithUnsignedInteger:a1[3]];
        v36[0] = @"NSDebugDescription";
        v36[1] = @"NSJSONSerializationErrorIndex";
        v37[0] = v32;
        v37[1] = v33;
        *a2 = +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 3840, [MEMORY[0x1E695DF20] dictionaryWithObjects:v37 forKeys:v36 count:2]);

        return 0;
      }

      return 0;
    }

    if (v6 == 45)
    {
      v18 = -INFINITY;
    }

    else
    {
      v18 = INFINITY;
    }

    v19 = v7 + 8;
  }

  a1[3] = v19;
  v35 = [NSNumber alloc];

  return [(NSNumber *)v35 initWithDouble:v18];
}

uint64_t _NSLinguisticDataPath()
{
  v16 = *MEMORY[0x1E69E9840];
  result = _NSLinguisticDataPath_dataPath;
  if (!_NSLinguisticDataPath_dataPath)
  {
    v1 = [objc_msgSend(MEMORY[0x1E695E000] "standardUserDefaults")];
    if (!v1 || (_NSIsNSString() & 1) == 0)
    {
      v2 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
      v12 = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v3)
      {
        v4 = v3;
        v5 = *v13;
        while (2)
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v13 != v5)
            {
              objc_enumerationMutation(v2);
            }

            v7 = [*(*(&v12 + 1) + 8 * i) stringByAppendingPathComponent:@"LinguisticData"];
            if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
            {
              v1 = v7;
              goto LABEL_14;
            }
          }

          v4 = [(NSArray *)v2 countByEnumeratingWithState:&v12 objects:v11 count:16];
          if (v4)
          {
            continue;
          }

          break;
        }
      }

LABEL_14:
      if (!v1)
      {
        v1 = @"/System/Library/LinguisticData";
      }
    }

    if (getenv("IPHONE_SIMULATOR_ROOT") && (v8 = [NSString stringWithUTF8String:?]) != 0)
    {
      v9 = [(NSString *)v8 stringByAppendingPathComponent:v1];
    }

    else
    {
      v9 = [NSString stringWithString:v1];
    }

    _NSLinguisticDataPath_dataPath = v9;
    v10 = v9;
    return _NSLinguisticDataPath_dataPath;
  }

  return result;
}

uint64_t joinTokensInRange(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result)
  {
    if (a3 >= 2)
    {
      v3 = a2 + a3;
      v4 = qword_1ED43FF60;
      if (a2 + a3 <= qword_1ED43FF60)
      {
        v5 = (result + 16 * v3);
        v6 = (result + 16 * a2);
        v6[2] = *(v5 - 14) + *(v5 - 16) - *v6;
        if (v3 < v4)
        {
          v7 = v6 + 16;
          do
          {
            v8 = *v5++;
            *v7++ = v8;
            ++v3;
          }

          while (v3 < v4);
        }

        qword_1ED43FF60 = v4 - a3 + 1;
      }
    }
  }

  return result;
}

uint64_t sentenceRangeAtIndexInTokens(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t *a6)
{
  result = 0x7FFFFFFFFFFFFFFFLL;
  if (a5)
  {
    v8 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    v10 = 0x7FFFFFFFFFFFFFFFLL;
    while (2)
    {
      v11 = v9;
      v12 = 0x7FFFFFFFFFFFFFFFLL;
      v9 = v8;
      v13 = (a4 + 16 * v8);
      while (1)
      {
        if (v9)
        {
          v14 = *v13;
        }

        else
        {
          v14 = 0;
        }

        v15 = v9 + 1;
        v16 = a3;
        if (v9 + 1 < a5)
        {
          v16 = v13[8];
        }

        v17 = v14 + a2;
        if (v16 + a2 > a1 && v17 <= a1)
        {
          v12 = v9;
        }

        if (*(v13 + 3) == 2)
        {
          break;
        }

        v13 += 8;
        ++v9;
        if (a5 == v15)
        {
          v9 = 0x7FFFFFFFFFFFFFFFLL;
          if (v12 == 0x7FFFFFFFFFFFFFFFLL)
          {
            v19 = 0;
            goto LABEL_22;
          }

          goto LABEL_27;
        }
      }

      if (v12 == 0x7FFFFFFFFFFFFFFFLL)
      {
        v8 = v9 + 1;
        v10 = v11;
        if (a5 - 1 != v9)
        {
          continue;
        }

        v19 = 0;
        v9 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_22:
        result = 0x7FFFFFFFFFFFFFFFLL;
        if (a6)
        {
          goto LABEL_25;
        }

        return result;
      }

      break;
    }

LABEL_27:
    if (v11 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v20 = 0x7FFFFFFFFFFFFFFFLL;
    }

    else
    {
      if (a5 <= v11 + 1)
      {
        v21 = v11 + 1;
      }

      else
      {
        v21 = a5;
      }

      v22 = v21 - 1;
      v23 = (a4 + 16 * v11 + 16);
      while (1)
      {
        v24 = v11++;
        if (v11 >= a5)
        {
          break;
        }

        v16 = *v23;
        if (*(v23 - 14) + *(v23 - 8) == v16)
        {
          v25 = *(v23 + 3) - 14;
          v23 += 8;
          if (v25 > 0xFFFFFFF4)
          {
            continue;
          }
        }

        goto LABEL_38;
      }

      v24 = v22;
      v16 = a3;
LABEL_38:
      if (v16 > a1)
      {
        v20 = 0x7FFFFFFFFFFFFFFFLL;
        if (v10 != 0x7FFFFFFFFFFFFFFFLL)
        {
          if (a5 <= v10 + 1)
          {
            v26 = v10 + 1;
          }

          else
          {
            v26 = a5;
          }

          v27 = v26 - 1;
          v28 = (a4 + 16 * v10 + 16);
          while (1)
          {
            v20 = v10++;
            if (v10 >= a5)
            {
              break;
            }

            v16 = *v28;
            if (*(v28 - 14) + *(v28 - 8) == v16)
            {
              v29 = *(v28 + 3) - 14;
              v28 += 8;
              if (v29 > 0xFFFFFFF4)
              {
                continue;
              }
            }

            goto LABEL_50;
          }

          v16 = a3;
          v20 = v27;
        }

LABEL_50:
        if (v20 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v9 = 0;
        }

        else
        {
          v9 = v20 + 1;
        }

        if (v20 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v30 = 0;
        }

        else
        {
          v30 = v16;
        }

        result = v30 + a2;
        if (v24 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v31 = a5;
        }

        else
        {
          v32 = v24 + 1;
          if (a5 <= v24 + 1)
          {
            v33 = v24 + 1;
          }

          else
          {
            v33 = a5;
          }

          v34 = (a4 + 16 * v24 + 16);
          while (v32 < a5)
          {
            v31 = v32;
            if (*(v34 - 14) + *(v34 - 8) == *v34)
            {
              v35 = *(v34 + 3) - 14;
              v34 += 8;
              ++v32;
              if (v35 > 0xFFFFFFF4)
              {
                continue;
              }
            }

            goto LABEL_67;
          }

          v31 = v33;
        }

LABEL_67:
        v19 = v31 - v9;
        if (v19 < 0x101)
        {
          if (a6)
          {
            goto LABEL_25;
          }
        }

        else if (v12 >= v9 + 256 && (v36 = (v12 - v9) & 0xFFFFFFFFFFFFFF00, v9 += v36, v19 -= v36, result = a2 + *(a4 + 16 * v9), v19 < 0x101))
        {
          if (a6)
          {
            goto LABEL_25;
          }
        }

        else
        {
          v19 = 256;
          if (a6)
          {
            goto LABEL_25;
          }
        }

        return result;
      }

      v20 = v24;
    }

    v24 = v9;
    goto LABEL_50;
  }

  v19 = 0;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  if (a6)
  {
LABEL_25:
    *a6 = v9;
    a6[1] = v19;
  }

  return result;
}

id tagForNLTag(void *a1)
{
  if (qword_1ED43FFA8 == -1)
  {
    if (a1)
    {
      goto LABEL_3;
    }

    return 0;
  }

  dispatch_once(&qword_1ED43FFA8, &__block_literal_global_598);
  if (!a1)
  {
    return 0;
  }

LABEL_3:
  result = [qword_1ED43FFA0 objectForKey:a1];
  if (!result)
  {
    v3 = a1;

    return v3;
  }

  return result;
}

void sub_181168EC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18116BD08(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __loadNLTagger_block_invoke()
{
  v0 = [objc_msgSend(objc_msgSend(_NSLinguisticDataPath() "stringByDeletingLastPathComponent")];
  v1 = dlopen(v0, 256);
  if (v1)
  {
    v2 = v1;
    off_1ED43FE78 = dlsym(v1, "NLTaggerCreate");
    off_1ED43FF10 = dlsym(v2, "NLTaggerSetString");
    off_1ED43FF20 = dlsym(v2, "NLTaggerSetLocaleForRange");
    off_1ED43FF18 = dlsym(v2, "NLTaggerSetStringEditedInRange");
    off_1ED43FF40 = dlsym(v2, "NLTaggerEnumerateTokens");
    off_1ED43FF48 = dlsym(v2, "NLTaggerCopyTagForCurrentToken");
    off_1ED43FF38 = dlsym(v2, "NLTaggerGetTokenAtIndex");
    off_1ED43FF28 = dlsym(v2, "NLTaggerCopyTagAtIndex");
    off_1ED43FE60 = dlsym(v2, "NLTaggerCopyAvailableTagSchemes");
    off_1ED43FF30 = dlsym(v2, "NLTaggerCopyLanguageMapAtIndex");
  }

  if (off_1ED43FE78)
  {
    v3 = off_1ED43FF10 == 0;
  }

  else
  {
    v3 = 1;
  }

  if (v3 || off_1ED43FF20 == 0 || off_1ED43FF18 == 0 || off_1ED43FF40 == 0 || off_1ED43FF48 == 0 || off_1ED43FF38 == 0 || off_1ED43FF28 == 0 || off_1ED43FE60 == 0)
  {
    _MergedGlobals_142 = 0;
    v11 = off_1ED43FF30;
  }

  else
  {
    _MergedGlobals_142 = off_1ED43FF30 != 0;
    if (off_1ED43FF30)
    {
      return;
    }

    v11 = 0;
  }

  NSLog(@"NSLinguisticTagger failed to load NLTagger, results %p %p %p %p %p %p %p %p %p %p", off_1ED43FE78, off_1ED43FF10, off_1ED43FF20, off_1ED43FF18, off_1ED43FF40, off_1ED43FF48, off_1ED43FF38, off_1ED43FF28, off_1ED43FE60, v11);
}

id __tagForNLTag_block_invoke()
{
  v2[31] = *MEMORY[0x1E69E9840];
  v1[0] = @"Word";
  v1[1] = @"Punctuation";
  v2[0] = @"Word";
  v2[1] = @"Punctuation";
  v1[2] = @"Whitespace";
  v1[3] = @"Other";
  v2[2] = @"Whitespace";
  v2[3] = @"Other";
  v1[4] = @"Noun";
  v1[5] = @"Verb";
  v2[4] = @"Noun";
  v2[5] = @"Verb";
  v1[6] = @"Adjective";
  v1[7] = @"Adverb";
  v2[6] = @"Adjective";
  v2[7] = @"Adverb";
  v1[8] = @"Pronoun";
  v1[9] = @"Determiner";
  v2[8] = @"Pronoun";
  v2[9] = @"Determiner";
  v1[10] = @"Particle";
  v1[11] = @"Preposition";
  v2[10] = @"Particle";
  v2[11] = @"Preposition";
  v1[12] = @"Number";
  v1[13] = @"Conjunction";
  v2[12] = @"Number";
  v2[13] = @"Conjunction";
  v1[14] = @"Interjection";
  v1[15] = @"Classifier";
  v2[14] = @"Interjection";
  v2[15] = @"Classifier";
  v1[16] = @"Idiom";
  v1[17] = @"OtherWord";
  v2[16] = @"Idiom";
  v2[17] = @"OtherWord";
  v1[18] = @"SentenceTerminator";
  v1[19] = @"OpenQuote";
  v2[18] = @"SentenceTerminator";
  v2[19] = @"OpenQuote";
  v1[20] = @"CloseQuote";
  v1[21] = @"OpenParenthesis";
  v2[20] = @"CloseQuote";
  v2[21] = @"OpenParenthesis";
  v1[22] = @"CloseParenthesis";
  v1[23] = @"WordJoiner";
  v2[22] = @"CloseParenthesis";
  v2[23] = @"WordJoiner";
  v1[24] = @"Dash";
  v1[25] = @"Punctuation";
  v2[24] = @"Dash";
  v2[25] = @"Punctuation";
  v1[26] = @"ParagraphBreak";
  v1[27] = @"Whitespace";
  v2[26] = @"ParagraphBreak";
  v2[27] = @"Whitespace";
  v1[28] = @"PersonalName";
  v1[29] = @"PlaceName";
  v2[28] = @"PersonalName";
  v2[29] = @"PlaceName";
  v1[30] = @"OrganizationName";
  v2[30] = @"OrganizationName";
  result = [MEMORY[0x1E695DF20] dictionaryWithObjects:v2 forKeys:v1 count:31];
  qword_1ED43FFA0 = result;
  return result;
}

const void *getLXLemmatizer(__CFString *a1)
{
  if (!a1)
  {
    return 0;
  }

  v1 = a1;
  if ([(__CFString *)a1 isEqualToString:@"en"])
  {
    v1 = @"en_US";
  }

  if ([(__CFString *)v1 isEqualToString:@"es"])
  {
    v1 = @"es_ES";
  }

  if ([(__CFString *)v1 isEqualToString:@"pt"])
  {
    v1 = @"pt_BR";
  }

  if (qword_1ED43FFB8 != -1)
  {
    dispatch_once(&qword_1ED43FFB8, &__block_literal_global_846);
  }

  Value = 0;
  if (off_1ED43FFC0 && off_1ED43FFC8)
  {
    [qword_1ED43FFD0 lock];
    Mutable = qword_1ED43FFB0;
    if (!qword_1ED43FFB0)
    {
      Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], 0);
      qword_1ED43FFB0 = Mutable;
    }

    Value = CFDictionaryGetValue(Mutable, v1);
    if (!Value)
    {
      Value = off_1ED43FFC0(v1, 0);
      if (Value)
      {
        v4 = v1;
        v5 = Value;
      }

      else
      {
        v5 = *MEMORY[0x1E695E738];
        v4 = v1;
      }

      CFDictionaryAddValue(qword_1ED43FFB0, v4, v5);
    }

    v6 = CFGetTypeID(Value);
    if (v6 == CFNullGetTypeID())
    {
      Value = 0;
    }

    [qword_1ED43FFD0 unlock];
  }

  return Value;
}

NSString *lemmatizerLemmaForStringWithCategory(uint64_t a1, void *a2, int a3)
{
  v21 = *MEMORY[0x1E69E9840];
  [qword_1ED43FFD0 lock];
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  if ((a3 - 16) > 0x45)
  {
    v6 = 12;
  }

  else
  {
    v6 = byte_181453814[(a3 - 16)];
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __lemmatizerLemmaForStringWithCategory_block_invoke;
  v11[3] = &unk_1E69F72B8;
  v11[5] = &v17;
  v11[6] = a1;
  v12 = v6;
  v11[4] = &v13;
  enumerateNormalizedStrings(a2, v11);
  if (v18[3] || v14[3])
  {
    v7 = [NSString stringWithString:?];
    v8 = v18[3];
    if (v8)
    {
      CFRelease(v8);
    }
  }

  else
  {
    v7 = 0;
  }

  v9 = v14[3];
  if (v9)
  {
    CFRelease(v9);
  }

  [qword_1ED43FFD0 unlock];
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  return v7;
}

void sub_18116C500(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 72), 8);
  _Unwind_Resume(a1);
}

uint64_t lemmatizerAddTagsForString(uint64_t a1, void *a2, uint64_t a3)
{
  v7[6] = *MEMORY[0x1E69E9840];
  [qword_1ED43FFD0 lock];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __lemmatizerAddTagsForString_block_invoke;
  v7[3] = &unk_1E69F7330;
  v7[4] = a3;
  v7[5] = a1;
  enumerateNormalizedStrings(a2, v7);
  return [qword_1ED43FFD0 unlock];
}

uint64_t __tagForWordToken_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 integerValue];
  if (v5 == [a3 integerValue])
  {
    return 0;
  }

  v7 = [a2 integerValue];
  if (v7 > [a3 integerValue])
  {
    return -1;
  }

  else
  {
    return 1;
  }
}

NSLock *__getLXLemmatizer_block_invoke()
{
  v0 = [objc_msgSend(objc_msgSend(_NSLinguisticDataPath() "stringByDeletingLastPathComponent")];
  v1 = dlopen(v0, 256);
  if (v1)
  {
    v2 = v1;
    off_1ED43FFC0 = dlsym(v1, "LXLemmatizerCreate");
    off_1ED43FFC8 = dlsym(v2, "LXLemmatizerEnumerateLemmasforString");
  }

  result = objc_alloc_init(NSLock);
  qword_1ED43FFD0 = result;
  return result;
}

uint64_t enumerateNormalizedStrings(void *a1, uint64_t a2)
{
  v13 = *MEMORY[0x1E69E9840];
  if ((byte_1ED43FE59 & 1) == 0)
  {
    v12 = 0x20182019201C201DLL;
    qword_1ED43FFD8 = [[NSString alloc] initWithCharacters:&v12 + 6 length:1];
    qword_1ED43FFE0 = [[NSString alloc] initWithCharacters:&v12 + 4 length:1];
    qword_1ED43FFE8 = [[NSString alloc] initWithCharacters:&v12 + 2 length:1];
    qword_1ED43FFF0 = [[NSString alloc] initWithCharacters:&v12 length:1];
    v4 = objc_alloc(MEMORY[0x1E695DF20]);
    qword_1ED43FFF8 = [v4 initWithObjectsAndKeys:{@"not", @"n't", @"have", @"'ve", @"will", @"'ll", @"am", @"'m", @"are", @"'re", @"had", @"'d", 0, v12, v13}];
    byte_1ED43FE59 = 1;
  }

  [a1 rangeOfString:qword_1ED43FFD8];
  if (v5)
  {
    a1 = [a1 stringByReplacingOccurrencesOfString:qword_1ED43FFD8 withString:@"'"];
  }

  [a1 rangeOfString:qword_1ED43FFE0];
  if (v6)
  {
    a1 = [a1 stringByReplacingOccurrencesOfString:qword_1ED43FFE0 withString:@"'"];
  }

  [a1 rangeOfString:qword_1ED43FFE8];
  if (v7)
  {
    a1 = [a1 stringByReplacingOccurrencesOfString:qword_1ED43FFE8 withString:@""];
  }

  [a1 rangeOfString:qword_1ED43FFF0];
  if (v8)
  {
    a1 = [a1 stringByReplacingOccurrencesOfString:qword_1ED43FFF0 withString:@""];
  }

  BYTE6(v12) = 0;
  result = (*(a2 + 16))(a2, a1, &v12 + 6);
  if (!BYTE6(v12))
  {
    v10 = [a1 lowercaseString];
    if (([v10 isEqualToString:a1] & 1) != 0 || (result = (*(a2 + 16))(a2, v10, &v12 + 6), !BYTE6(v12)))
    {
      v11 = [v10 capitalizedString];
      if (([v11 isEqualToString:a1] & 1) != 0 || (result = (*(a2 + 16))(a2, v11, &v12 + 6), !BYTE6(v12)))
      {
        result = [qword_1ED43FFF8 objectForKey:v10];
        if (result)
        {
          return (*(a2 + 16))(a2, result, &v12 + 6);
        }
      }
    }
  }

  return result;
}

uint64_t __lemmatizerLemmaForStringWithCategory_block_invoke(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = *(a1 + 48);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __lemmatizerLemmaForStringWithCategory_block_invoke_2;
  v8[3] = &unk_1E69F7290;
  v10 = *(a1 + 56);
  v9 = *(a1 + 32);
  result = off_1ED43FFC8(v5, a2, v8);
  if (*(*(*(a1 + 40) + 8) + 24))
  {
    v7 = 1;
  }

  else
  {
    v7 = *(*(*(a1 + 32) + 8) + 24) != 0;
  }

  *a3 = v7;
  return result;
}

void *__lemmatizerLemmaForStringWithCategory_block_invoke_2(void *result, CFTypeRef cf, int a3, _BYTE *a4)
{
  v7 = result;
  if (!*(*(result[4] + 8) + 24))
  {
    result = CFRetain(cf);
    *(*(v7[4] + 8) + 24) = result;
  }

  if (*(v7 + 48) == a3)
  {
    result = CFRetain(cf);
    *(*(v7[5] + 8) + 24) = result;
    *a4 = 1;
  }

  return result;
}

void __lemmatizerAddTagsForString_block_invoke(uint64_t a1, uint64_t a2, BOOL *a3)
{
  v14[4] = *MEMORY[0x1E69E9840];
  v14[0] = 0;
  v14[1] = v14;
  v14[2] = 0x2020000000;
  v14[3] = 0;
  v10 = 0;
  v11 = &v10;
  v12 = 0x2020000000;
  v13 = 0;
  v6 = *(a1 + 40);
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v9[2] = __lemmatizerAddTagsForString_block_invoke_2;
  v9[3] = &unk_1E69F72E0;
  v9[4] = &v10;
  off_1ED43FFC8(v6, a2, v9);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __lemmatizerAddTagsForString_block_invoke_3;
  v8[3] = &unk_1E69F7308;
  v7 = *(a1 + 40);
  v8[4] = *(a1 + 32);
  v8[5] = &v10;
  v8[6] = v14;
  off_1ED43FFC8(v7, a2, v8);
  *a3 = v11[3] > 0;
  _Block_object_dispose(&v10, 8);
  _Block_object_dispose(v14, 8);
}

void sub_18116CCDC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, ...)
{
  va_start(va, a14);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v14 - 120), 8);
  _Unwind_Resume(a1);
}

uint64_t __lemmatizerAddTagsForString_block_invoke_3(uint64_t a1, uint64_t a2, int a3)
{
  if ((a3 - 1) > 0xA)
  {
    v4 = @"OtherWord";
  }

  else
  {
    v4 = off_1E69F7590[(a3 - 1)];
  }

  v5 = [*(a1 + 32) objectForKey:v4];
  v6 = *(*(*(a1 + 40) + 8) + 24) - *(*(*(a1 + 48) + 8) + 24);
  if (v5)
  {
    v6 += [v5 integerValue];
  }

  result = [*(a1 + 32) setObject:+[NSNumber numberWithInteger:](NSNumber forKey:{"numberWithInteger:", v6), v4}];
  ++*(*(*(a1 + 48) + 8) + 24);
  return result;
}

uint64_t _validateFilename(void *a1)
{
  v1 = [a1 pathComponents];
  v2 = [v1 count];
  if ((v2 - 3) < 0xFFFFFFFFFFFFFFFELL)
  {
    return 0;
  }

  v3 = v2;
  v4 = [v1 firstObject];
  if ([v4 isEqualToString:@"/"] & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"..") & 1) != 0 || (objc_msgSend(v4, "isEqualToString:", @"."))
  {
    return 0;
  }

  if (v3 == 1)
  {
    return 1;
  }

  v6 = [v1 objectAtIndexedSubscript:1];

  return [v6 isEqualToString:@"/"];
}

uint64_t NSFileWrapperChildNameHash_CFDictionary(void *a1)
{
  v1 = [a1 lowercaseString];

  return [v1 hash];
}

uint64_t _NSDescribeFileContentsInstance(void *a1, id *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v37 = *MEMORY[0x1E69E9840];
  v10 = [a2 preferredFilename];
  v11 = v10;
  if (a3 && ([v10 isEqualToString:a3] & 1) == 0)
  {
    v12 = [NSString stringWithFormat:@" (%@)", a3];
    if (a5)
    {
      goto LABEL_4;
    }

LABEL_15:
    v16 = 0;
    goto LABEL_23;
  }

  v12 = &stru_1EEEFDF90;
  if (!a5)
  {
    goto LABEL_15;
  }

LABEL_4:
  if ((4 * a4 + 4) >= 0x3E8)
  {
    v13 = 1000;
  }

  else
  {
    v13 = 4 * a4 + 4;
  }

  if (a2[1])
  {
    bzero(__b, 0x3E9uLL);
    if (4 * a4 != -4)
    {
      if (v13 <= 1)
      {
        v14 = 1;
      }

      else
      {
        v14 = v13;
      }

      memset(__b, 32, v14);
    }

    __b[v13] = 0;
    v15 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%@%@", +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", __b, 4), +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"Type: %@, mode:0%ho, mod time: %@", [a2[1] fileType], objc_msgSend(a2[1], "filePosixPermissions"), objc_msgSend(a2[1], "fileModificationDate")));
  }

  else
  {
    bzero(__b, 0x3E9uLL);
    if (4 * a4 != -4)
    {
      if (v13 <= 1)
      {
        v17 = 1;
      }

      else
      {
        v17 = v13;
      }

      memset(__b, 32, v17);
    }

    __b[v13] = 0;
    v15 = [NSString stringWithFormat:@"%@(No file attribute information.)", [NSString stringWithCString:__b encoding:4], v32];
  }

  v16 = v15;
LABEL_23:
  if ([a2 isDirectory])
  {
    bzero(__b, 0x3E9uLL);
    if ((4 * a4) >= 0x3E8)
    {
      v18 = 1000;
    }

    else
    {
      v18 = 4 * a4;
    }

    if (4 * a4)
    {
      if (v18 <= 1)
      {
        v19 = 1;
      }

      else
      {
        v19 = v18;
      }

      memset(__b, 32, v19);
    }

    __b[v18] = 0;
    [a1 appendFormat:@"%@Directory %@%@ <%p>: %@ children.  %@ icon.\n", +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", __b, 4), v11, v12, a2, +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"%lu", objc_msgSend(objc_msgSend(a2, "fileWrappers"), "count")), @"No"];
    if (v16)
    {
      [a1 appendFormat:@"%@\n", v16];
    }

    v20 = [a2 fileWrappers];
    v21 = [v20 keyEnumerator];
    result = [v21 nextObject];
    if (result)
    {
      v23 = result;
      do
      {
        _NSDescribeFileContentsInstance(a1, [v20 objectForKey:v23], v23, a4 + 1, a5);
        result = [v21 nextObject];
        v23 = result;
      }

      while (result);
    }

    return result;
  }

  if ([a2 isSymbolicLink])
  {
    bzero(__b, 0x3E9uLL);
    v24 = 4 * a4;
    if ((4 * a4) >= 0x3E8)
    {
      v25 = 1000;
    }

    else
    {
      v25 = 4 * a4;
    }

    if (v24)
    {
      if (v25 <= 1)
      {
        v26 = 1;
      }

      else
      {
        v26 = v25;
      }

      memset(__b, 32, v26);
    }

    __b[v25] = 0;
    result = [a1 appendFormat:@"%@Symbolic link %@%@ <%p>: destination '%@'.  %@ icon.\n", +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", __b, 4), v11, v12, a2, objc_msgSend(a2, "symbolicLinkDestinationURL"), @"No"];
LABEL_58:
    if (v16)
    {
      return [a1 appendFormat:@"%@", v16, v33, v34, v35];
    }

    return result;
  }

  v27 = [a2 isRegularFile];
  v28 = 4 * a4;
  if (v28 >= 0x3E8)
  {
    v29 = 1000;
  }

  else
  {
    v29 = v28;
  }

  if (v27)
  {
    bzero(__b, 0x3E9uLL);
    if (v28)
    {
      if (v29 <= 1)
      {
        v30 = 1;
      }

      else
      {
        v30 = v29;
      }

      memset(__b, 32, v30);
    }

    __b[v29] = 0;
    result = [a1 appendFormat:@"%@Regular file %@%@ <%p>: length %lu.  %@ icon.\n", +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", __b, 4), v11, v12, a2, objc_msgSend(objc_msgSend(a2, "regularFileContents"), "length"), @"No"];
    goto LABEL_58;
  }

  bzero(__b, 0x3E9uLL);
  if (v28)
  {
    if (v29 <= 1)
    {
      v31 = 1;
    }

    else
    {
      v31 = v29;
    }

    memset(__b, 32, v31);
  }

  __b[v29] = 0;
  return [a1 appendFormat:@"%@!!! %@%@ <%p> is not a directory, symlink, or file! So what the hell is it?\n", +[NSString stringWithCString:encoding:](NSString, "stringWithCString:encoding:", __b, 4), v11, v12, a2];
}

uint64_t _NXCurrentWorkingDir()
{
  v0 = +[NSFileManager defaultManager];

  return [(NSFileManager *)v0 currentDirectoryPath];
}

uint64_t _NXAccessFile(uint64_t a1, uint64_t a2)
{
  v4 = +[NSFileManager defaultManager];
  v5 = v4;
  if (!a2)
  {
    v6 = [(NSFileManager *)v4 fileExistsAtPath:a1];
    return v6 - 1;
  }

  if ((a2 & 4) == 0)
  {
    v6 = 1;
    if ((a2 & 2) == 0)
    {
      goto LABEL_9;
    }

LABEL_7:
    if (v6)
    {
      v6 = [(NSFileManager *)v5 isWritableFileAtPath:a1];
    }

    goto LABEL_9;
  }

  v6 = [(NSFileManager *)v4 isReadableFileAtPath:a1];
  if ((a2 & 2) != 0)
  {
    goto LABEL_7;
  }

LABEL_9:
  if ((a2 & 1) != 0 && v6)
  {
    v6 = [(NSFileManager *)v5 isExecutableFileAtPath:a1];
  }

  return v6 - 1;
}

uint64_t _NXChmodFile(uint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(NSNumber) initWithInt:a2];
  v4 = [objc_allocWithZone(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v3, @"NSFilePosixPermissions", 0}];
  LODWORD(a1) = [+[NSFileManager defaultManager](NSFileManager changeFileAttributes:"changeFileAttributes:atPath:" atPath:v4, a1];

  return a1 - 1;
}

uint64_t _NXMakeDirs(void *a1, uint64_t a2)
{
  if (([a1 isEqualToString:&stru_1EEEFDF90] & 1) != 0 || -[NSFileManager fileExistsAtPath:](+[NSFileManager defaultManager](NSFileManager, "defaultManager"), "fileExistsAtPath:", a1))
  {
    return 0;
  }

  if (_NXMakeDirs([a1 stringByDeletingLastPathComponent], a2))
  {
    return -1;
  }

  v5 = [objc_allocWithZone(NSNumber) initWithInt:a2];
  v6 = [objc_allocWithZone(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{v5, @"NSFilePosixPermissions", 0}];
  v7 = [+[NSFileManager defaultManager](NSFileManager createDirectoryAtPath:"createDirectoryAtPath:attributes:" attributes:a1, v6];

  return v7 - 1;
}

uint64_t _NXRemoveDocument(uint64_t a1)
{
  if ([+[NSFileManager fileExistsAtPath:"fileExistsAtPath:"]
  {
    return [+[NSFileManager defaultManager](NSFileManager removeItemAtPath:"removeItemAtPath:error:" error:a1, 0]- 1;
  }

  else
  {
    return 0;
  }
}

NSDocInfo *_NSDocInfoFromFileAttributes(NSDocInfo *result, int a2)
{
  if (result)
  {
    v3 = result;
    v4 = objc_alloc_init(NSDocInfo);
    v5 = [(NSDocInfo *)v3 fileModificationDate];
    v6 = 0;
    if (a2 && v5)
    {
      [v5 timeIntervalSince1970];
      v6 = v7;
    }

    v4->time = v6;
    v4->mode = [(NSDocInfo *)v3 filePosixPermissions];
    v8 = [(NSDocInfo *)v3 fileType];
    if (v8)
    {
      v9 = v8;
      *(&v4->mode + 1) = *(&v4->mode + 1) & 0xFFFE | [v8 isEqualToString:@"NSFileTypeDirectory"];
      if ([v9 isEqualToString:@"NSFileTypeSymbolicLink"])
      {
        v10 = 4;
      }

      else
      {
        v10 = 0;
      }

      *(&v4->mode + 1) = *(&v4->mode + 1) & 0xFFF9 | v10;
    }

    return v4;
  }

  return result;
}

uint64_t unallocate(mach_vm_address_t address, mach_vm_size_t size)
{
  result = mach_vm_deallocate(*MEMORY[0x1E69E9A60], address, size);
  if (result)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSOtherSerializationException" reason:@"can't deallocate" userInfo:0]);
  }

  return result;
}

vm_address_t extendStreamFor(vm_address_t result, uint64_t a2)
{
  v2 = *(result + 24);
  v3 = *(result + 16) + a2;
  if (v3 <= v2)
  {
    return result;
  }

  v4 = result;
  if (v2)
  {
    v5 = *(result + 24);
  }

  else
  {
    v5 = 4;
  }

  do
  {
    v6 = v5;
    v5 *= 2;
  }

  while (v6 < v3);
  v7 = MEMORY[0x1E69E9AC8];
  v8 = v6 + *MEMORY[0x1E69E9AC8] - 1;
  if ((v8 & -*MEMORY[0x1E69E9AC8]) <= v6)
  {
    v9 = v6;
  }

  else
  {
    v9 = v8 & -*MEMORY[0x1E69E9AC8];
  }

  v10 = *(result + 8);
  result = allocate(v9);
  v11 = result;
  if (v10)
  {
    v12 = v10;
    v13 = v2;
    if (v2 >= 0x80000)
    {
      v13 = v2;
      v12 = v10;
      if (((*v7 - 1) & (result | v10)) != 0)
      {
        goto LABEL_15;
      }

      malloc_default_zone();
      v14 = malloc_zone_claimed_address();
      result = v11;
      v13 = v2;
      v12 = v10;
      if (v14)
      {
        goto LABEL_15;
      }

      v15 = v2 & -*v7;
      NSCopyMemoryPages(v10, v11, v15);
      v12 = (v10 + v15);
      result = v11 + v15;
      v13 = v2 - v15;
    }

    if (!v13)
    {
LABEL_16:
      result = unallocate(v10, v2);
      goto LABEL_17;
    }

LABEL_15:
    memmove(result, v12, v13);
    goto LABEL_16;
  }

LABEL_17:
  *(v4 + 8) = v11;
  if (!v11)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSOtherSerializationException" reason:@"can't allocate" userInfo:0]);
  }

  *(v4 + 24) = v9;
  return result;
}

vm_address_t allocate(vm_size_t size)
{
  v2[1] = *MEMORY[0x1E69E9840];
  v2[0] = 0;
  if (vm_allocate(*MEMORY[0x1E69E9A60], v2, size, 1))
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:@"NSOtherSerializationException" reason:@"can't allocate" userInfo:0]);
  }

  return v2[0];
}

void sub_181174280(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 104), 8);
  _Unwind_Resume(a1);
}

void sub_181174AA4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  if (a2 == 1)
  {
    v11 = objc_begin_catch(exception_object);
    objc_opt_class();
    [v11 name];
    [v11 reason];
    NSLog(@"*** %@: Deserialization error %@: %@\n");
    [v11 raise];
    objc_end_catch();
    JUMPOUT(0x181174A30);
  }

  _Unwind_Resume(exception_object);
}

uint64_t newLeafDocument(uint64_t a1, char a2, uint64_t a3)
{
  if ((a2 & 4) != 0)
  {
    v7 = [+[NSFileManager defaultManager](NSFileManager pathContentOfSymbolicLinkAtPath:"pathContentOfSymbolicLinkAtPath:", a1];
    v8 = [(NSData *)NSPageData allocWithZone:a3];
    v9 = [(NSString *)v7 dataUsingEncoding:4 allowLossyConversion:1];

    return [(NSPageData *)v8 initWithData:v9];
  }

  else
  {
    v5 = [(NSData *)NSPageData allocWithZone:a3];

    return [(NSPageData *)v5 initWithContentsOfMappedFile:a1];
  }
}

void __initializeUnitDict_block_invoke()
{
  v0 = [MEMORY[0x1E695DF20] sharedKeySetForKeys:&unk_1EEF59FC0];
  _MergedGlobals_8 = [MEMORY[0x1E695DF90] dictionaryWithSharedKeySet:v0];
  v1 = [&unk_1EEF59FC0 count];
  v2 = malloc_type_malloc(8 * v1, 0x80040B8603338uLL);
  v3 = malloc_type_malloc(8 * v1, 0x80040B8603338uLL);
  [&unk_1EEF59FC0 getObjects:v2 range:{0, v1}];
  [&unk_1EEF59FD8 getObjects:v3 range:{0, v1}];
  if (v1 >= 1)
  {
    v4 = v3;
    v5 = v2;
    do
    {
      v7 = *v4++;
      v6 = v7;
      v8 = *v5++;
      [_MergedGlobals_8 setObject:v6 forKey:v8];
      --v1;
    }

    while (v1);
  }

  free(v2);

  free(v3);
}

void *convertInvocationToMethodSignature(void *a1, void *a2, int a3)
{
  sizep[1] = *MEMORY[0x1E69E9840];
  v5 = [a1 methodSignature];
  v6 = *([v5 _argInfo:0] + 34);
  v24 = a2;
  v7 = [MEMORY[0x1E695DF50] invocationWithMethodSignature:a2];
  [v7 setTarget:{objc_msgSend(a1, "target")}];
  if (v6 < 0)
  {
    v8 = 1;
  }

  else
  {
    [v7 setSelector:{objc_msgSend(a1, "selector")}];
    v8 = 2;
  }

  if (a3)
  {
    v9 = [v5 methodReturnType];
    v10 = [a2 methodReturnType];
    if ((*v10 | 0x20) != 0x76)
    {
      performInvocationTypeConversion(a1, v7, v9, v10, -1);
    }
  }

  v11 = [v5 numberOfArguments];
  if (v8 < v11)
  {
    v12 = v11;
    while (1)
    {
      v13 = [v5 getArgumentTypeAtIndex:v8];
      v14 = [v24 getArgumentTypeAtIndex:v8];
      v15 = strspn(v14, "norNOR");
      v16 = v14[v15];
      v17 = v16 == 94;
      if (v16 == 94 && (v18 = v15, !memchr(v14, 78, v15)))
      {
        v19 = memchr(v14, 110, v18) == 0;
        v17 = memchr(v14, 111, v18) != 0;
      }

      else
      {
        v19 = v16 != 94;
      }

      if (a3)
      {
        break;
      }

      if (v16 != 94 || !v17 || !v19)
      {
        goto LABEL_18;
      }

      v20 = strspn(v14, "^norNOR");
      sizep[0] = 0;
      NSGetSizeAndAlignment(&v14[v20], sizep, 0);
      v21 = [MEMORY[0x1E695DF88] dataWithLength:sizep[0] + 32];
      v26 = [v21 mutableBytes];
      [v7 setArgument:&v26 atIndex:v8];
      [v7 _addAttachedObject:v21];
LABEL_19:
      if (v12 == ++v8)
      {
        return v7;
      }
    }

    if (v16 != 94 || !v19 && !v17)
    {
      goto LABEL_19;
    }

LABEL_18:
    performInvocationTypeConversion(v23, v7, v13, v14, v8);
    goto LABEL_19;
  }

  return v7;
}

void performInvocationTypeConversion(void *a1, void *a2, char *a3, char *__s, uint64_t a5)
{
  v23[1] = *MEMORY[0x1E69E9840];
  if (__s[strspn(__s, "norNOR")] == 94)
  {
    v23[0] = 0;
    [a1 getArgument:v23 atIndex:a5];
    if (v23[0])
    {
      v10 = strspn(a3, "^norNOR");
      v11 = strspn(__s, "^norNOR");
      sizep = 0;
      NSGetSizeAndAlignment(&a3[v10], &sizep, 0);
      v21 = 0;
      NSGetSizeAndAlignment(&__s[v11], &v21, 0);
      v12 = sizep;
      if (sizep <= v21)
      {
        v12 = v21;
      }

      v13 = [MEMORY[0x1E695DF88] dataWithLength:v12 + 32];
      v14 = [v13 mutableBytes];
      memmove(v14, v23[0], sizep);
      convertDataByTypeEncodings(&a3[v10], &__s[v11], v23[0], v14);
      v20 = v14;
      [a2 setArgument:&v20 atIndex:a5];
      [a2 _addAttachedObject:v13];
    }

    else
    {
      [a2 setArgument:v23 atIndex:a5];
    }
  }

  else
  {
    v23[0] = 0;
    NSGetSizeAndAlignment(a3, v23, 0);
    sizep = 0;
    NSGetSizeAndAlignment(__s, &sizep, 0);
    if (v23[0] <= sizep)
    {
      v15 = sizep;
    }

    else
    {
      v15 = v23[0];
    }

    v16 = malloc_type_calloc(v15 + 32, 1uLL, 0x100004077774924uLL);
    v17 = malloc_type_calloc(v15 + 32, 1uLL, 0x100004077774924uLL);
    if (v16)
    {
      v18 = v17 == 0;
    }

    else
    {
      v18 = 1;
    }

    if (v18)
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"Unable to allocate bytes" userInfo:0]);
    }

    v19 = v17;
    [a1 getArgument:v16 atIndex:a5];
    memmove(v19, v16, v15 + 32);
    convertDataByTypeEncodings(a3, __s, v16, v19);
    [a2 setArgument:v19 atIndex:a5];
    free(v16);
    free(v19);
  }
}

void appendArgumentInfoToDescription(void *a1, uint64_t a2, uint64_t *a3, int a4, void *a5)
{
  v7 = a3;
  v18[1] = *MEMORY[0x1E69E9840];
  [a5 appendFormat:@"{%s} ", a3 + 37];
  v10 = *(v7 + 4);
  if (v10)
  {
    for (i = *(v7 + 17); (i & 0x80) != 0; i = *(v7 + 17))
    {
      v7 = *v7;
      [a5 appendFormat:@"{%s} ", v7 + 37];
      v10 = *(v7 + 4);
      if (!v10)
      {
        goto LABEL_11;
      }
    }

    if ((i & 0x2000) != 0)
    {
      v18[0] = 0;
      if (a4)
      {
        [a1 getReturnValue:v18];
      }

      else
      {
        [a1 getArgument:v18 atIndex:a2];
      }

      [a5 appendFormat:@"%p", v18[0]];
      if (*(v7 + 17) < 0)
      {
        [a5 appendFormat:@" (block)"];
      }

      v12 = @"\n";
      goto LABEL_28;
    }

    if ((i & 0x1000) != 0)
    {
      v18[0] = 0;
      if (a4)
      {
        [a1 getReturnValue:v18];
      }

      else
      {
        [a1 getArgument:v18 atIndex:a2];
      }

      [a5 appendFormat:@"%p\n", v18[0]];
      return;
    }

    if ((i & 0x4000) != 0 || *(v7 + 36) == 58)
    {
      v18[0] = 0;
      if (a4)
      {
        [a1 getReturnValue:v18];
      }

      else
      {
        [a1 getArgument:v18 atIndex:a2];
      }

      v13 = v18[0];
      if (!v18[0])
      {
        v13 = "null";
      }

      v16 = v13;
      v12 = @"%s\n";
LABEL_28:
      [a5 appendFormat:v12, v16];
      return;
    }

    v14 = malloc_type_malloc(v10, 0x100004077774924uLL);
    bzero(v14, *(v7 + 4));
    if (a4)
    {
      [a1 getReturnValue:v14];
    }

    else
    {
      [a1 getArgument:v14 atIndex:a2];
    }

    v15 = *(v7 + 36);
    if (v15 <= 0x63)
    {
      if (*(v7 + 36) > 0x50u)
      {
        if (v15 == 81)
        {
          [a5 appendFormat:@"%llu", *v14, v17];
          goto LABEL_57;
        }

        if (v15 == 83)
        {
          [a5 appendFormat:@"%hu", *v14, v17];
          goto LABEL_57;
        }

        if (v15 != 99)
        {
          goto LABEL_60;
        }
      }

      else if (v15 - 66 >= 2)
      {
        if (v15 == 73)
        {
          [a5 appendFormat:@"%u", *v14, v17];
          goto LABEL_57;
        }

        if (v15 == 76)
        {
          [a5 appendFormat:@"%lu", *v14, v17];
LABEL_57:
          [a5 appendString:@"\n"];

          free(v14);
          return;
        }

        goto LABEL_60;
      }

      [a5 appendFormat:@"%d '%c'", *v14, *v14];
      goto LABEL_57;
    }

    if (*(v7 + 36) > 0x6Bu)
    {
      switch(v15)
      {
        case 'l':
          [a5 appendFormat:@"%ld", *v14, v17];
          goto LABEL_57;
        case 'q':
          [a5 appendFormat:@"%lld", *v14, v17];
          goto LABEL_57;
        case 's':
          [a5 appendFormat:@"%hd", *v14, v17];
          goto LABEL_57;
      }
    }

    else
    {
      if (v15 == 100 || v15 == 102)
      {
        [a5 appendFormat:@"%f", *v14, v17];
        goto LABEL_57;
      }

      if (v15 == 105)
      {
        [a5 appendFormat:@"%d", *v14, v17];
        goto LABEL_57;
      }
    }

LABEL_60:
    [a5 appendString:{objc_msgSend(objc_msgSend(MEMORY[0x1E695DEF0], "dataWithBytes:length:", v14, *(v7 + 4)), "debugDescription")}];
    goto LABEL_57;
  }

LABEL_11:

  [a5 appendFormat:@"void\n"];
}

void convertDataByTypeEncodings(char *a1, char *a2, int *a3, void *a4)
{
  v7 = a1;
  sizep[1] = *MEMORY[0x1E69E9840];
  while (2)
  {
    v8 = *a1;
    switch(*a1)
    {
      case 'I':
      case 'L':
      case 'i':
      case 'l':
        if (!memchr("lLqQ", *a2, 5uLL))
        {
          goto LABEL_31;
        }

        v20 = memchr("ilq", v8, 4uLL);
        v21 = *a3;
        if (!v20)
        {
          v21 = v21;
        }

        goto LABEL_36;
      case 'J':
      case 'K':
      case 'M':
      case 'P':
      case 'S':
      case 'T':
      case 'U':
      case 'W':
      case 'X':
      case 'Y':
      case 'Z':
      case '[':
      case '\\':
      case ']':
      case '_':
      case 'a':
      case 'b':
      case 'e':
      case 'g':
      case 'h':
      case 'j':
      case 'k':
      case 'm':
      case 'p':
        return;
      case 'N':
      case 'O':
      case 'R':
      case 'V':
      case 'n':
      case 'o':
      case 'r':
        goto LABEL_3;
      case 'Q':
      case 'q':
        if (!memchr("iIlL", *a2, 5uLL))
        {
          goto LABEL_35;
        }

        *a4 = 0;
        v22 = *a3;
        if (v8 == 113)
        {
          v23 = 0x7FFFFFFF;
          if (v22 > 0x7FFFFFFF)
          {
LABEL_24:
            *a4 = v23;
            NSLog(@"Warning - conversion from 64 bit to 32 bit integral value requested within NSPortCoder, but the 64 bit value %lld cannot be represented by a 32 bit value", v22);
            return;
          }

          if (v22 < 0xFFFFFFFF80000000)
          {
            v23 = 0x80000000;
            goto LABEL_24;
          }
        }

        else if (HIDWORD(v22))
        {
          *a4 = -1;
          NSLog(@"Warning - conversion from 64 bit to 32 bit integral value requested within NSPortCoder, but the 64 bit value %llu cannot be represented by a 32 bit value", v22);
          return;
        }

        *a4 = v22;
        return;
      case '^':
        if (strcmp(a1, a2))
        {
          NSLog(@"Pointer conversions not handled yet");
        }

        return;
      case 'c':
        if (*a2 == 66)
        {
          *a4 = *a3 != 0;
        }

        return;
      case 'd':
        if (*a2 == 102)
        {
          v24 = *a3;
          v25 = *a3;
          if ((*a3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
          {
            *a4 = 0;
            *a4 = v25;
            return;
          }

          if (v24 >= -3.40282347e38)
          {
            if (v24 <= 3.40282347e38)
            {
              if (v24 <= 0.0 || v25 != 0.0)
              {
                *a4 = 0;
                *a4 = v25;
                if (v24 >= 0.0 || v25 != 0.0)
                {
                  return;
                }

LABEL_46:
                NSLog(@"Warning - conversion from double to float value requested within NSPortCoder, but the double value %g is outside the range of a float.", *&v24);
                return;
              }

LABEL_45:
              *a4 = 0;
              *a4 = v25;
              goto LABEL_46;
            }

            v26 = 2139095039;
          }

          else
          {
            v26 = -8388609;
          }

          v25 = *&v26;
          goto LABEL_45;
        }

LABEL_35:
        v21 = *a3;
LABEL_36:
        *a4 = v21;
        return;
      case 'f':
        if (*a2 == 100)
        {
          *a4 = *a3;
        }

        else
        {
LABEL_31:
          *a4 = *a3;
        }

        return;
      default:
        if (v8 != 43)
        {
          if (v8 == 123)
          {
            v9 = strchr(a1, 61);
            v10 = strchr(a2, 61);
            if (!v9 || !v10)
            {
              v27 = [NSString stringWithFormat:@"Unable to parse structs within encoding: %s", v7];
              objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v27 userInfo:0]);
            }

            v11 = 0;
            v12 = 0;
            v13 = v9 + 1;
            v14 = v10 + 1;
            while (*v13 && *v13 != 125)
            {
              alignp = 0;
              sizep[0] = 0;
              v28 = 0;
              v29 = 0;
              v15 = NSGetSizeAndAlignment(v13, sizep, &alignp);
              v16 = NSGetSizeAndAlignment(v14, &v29, &v28);
              v17 = (alignp + (a3 + v11) / alignp * alignp - (a3 + v11)) % alignp + v11;
              v18 = (v28 + (a4 + v12) / v28 * v28 - (a4 + v12)) % v28 + v12;
              if (v29 <= sizep[0])
              {
                v19 = sizep[0];
              }

              else
              {
                v19 = v29;
              }

              memmove(a4 + v18, a3 + v17, v19);
              convertDataByTypeEncodings(v13, v14, a3 + v17, a4 + v18);
              v11 = sizep[0] + v17;
              v12 = v29 + v18;
              v14 = v16;
              v13 = v15;
            }
          }

          return;
        }

LABEL_3:
        a2 += 2;
        a1 += 2;
        continue;
    }
  }
}

uint64_t encodingsAreCompatible(const char *a1, const char *a2)
{
  if (!strcmp(a1, a2))
  {
    return 1;
  }

  v4 = strlen(a1);
  v5 = strlen(a2);
  result = 1;
  if (v4 && v5)
  {
    v7 = 0;
    v8 = 0;
    while (1)
    {
      v9 = a1[v7];
      v10 = a2[v8];
      if (v9 == 123 && v10 == 123)
      {
        v7 += strcspn(&a1[v7], "=");
        v8 += strcspn(&a2[v8], "=");
        if ((v7 != v4) == (v8 == v5))
        {
          return 0;
        }

        goto LABEL_28;
      }

      v11 = v10;
      if (v9 == v10 || memchr("ilq", a1[v7], 4uLL) && memchr("ilq", v11, 4uLL) || memchr("ILQ", v9, 4uLL) && memchr("ILQ", v11, 4uLL))
      {
        goto LABEL_28;
      }

      result = 0;
      if (v9 <= 0x62u)
      {
        if (!v9)
        {
          goto LABEL_25;
        }

        if (v9 != 66)
        {
          return result;
        }
      }

      else if (v9 != 99)
      {
        if (v9 != 102 && v9 != 100)
        {
          return result;
        }

LABEL_25:
        if (!v11 || v11 == 100 || v11 == 102)
        {
          goto LABEL_28;
        }

        if (v9 && v9 != 99 && v9 != 66)
        {
          return 0;
        }
      }

      if (v11 && v11 != 99 && v11 != 66)
      {
        return 0;
      }

LABEL_28:
      ++v7;
      result = 1;
      if (v7 < v4 && ++v8 < v5)
      {
        continue;
      }

      return result;
    }
  }

  return result;
}

NSMutableString *escapedString(NSMutableString *a1, uint64_t a2)
{
  v3 = [NSCharacterSet characterSetWithCharactersInString:a2];
  v4 = [(NSString *)a1 rangeOfCharacterFromSet:v3];
  if (a1)
  {
    v6 = v5;
    if (v5)
    {
      v7 = v4;
      a1 = [(NSString *)NSMutableString stringWithString:a1];
      do
      {
        [(NSMutableString *)a1 insertString:@"\" atIndex:v7];
        if (v7 + v6 + 1 >= [(NSString *)a1 length])
        {
          break;
        }

        v7 = [(NSString *)a1 rangeOfCharacterFromSet:v3 options:0 range:?];
        v6 = v8;
      }

      while (v8);
    }
  }

  return a1;
}

void sub_18117BF94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18117C0C8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18117C20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18117DAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 184), 8);
  _Unwind_Resume(a1);
}

uint64_t regexMatchCallback(_BYTE *a1)
{
  if (a1)
  {
    (*(*a1 + 16))();
    a1[16] = 0;
  }

  return 1;
}

uint64_t regexFindProgressCallback(uint64_t *a1, unint64_t a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = 0;
  if (!a1)
  {
    goto LABEL_9;
  }

  v3 = a1[1];
  if (v3 == 0x7FFFFFFFFFFFFFFFLL || v3 >= a2)
  {
    v5 = *a1;
    if (*a1)
    {
      (*(v5 + 16))(v5, 0, 1, &v9);
      v6 = v9;
      *(a1 + 16) = v9;
      v7 = v6 ^ 1;
      return v7 & 1;
    }

LABEL_9:
    v7 = 1;
    return v7 & 1;
  }

  v7 = 0;
  *(a1 + 17) = 1;
  return v7 & 1;
}

CFIndex addAddressResultsToComponents(uint64_t a1, void *a2)
{
  result = off_1ED4400A8();
  v4 = result;
  if (!qword_1ED4400E0)
  {
    result = [objc_alloc(MEMORY[0x1E695DF20]) initWithObjectsAndKeys:{@"Contact", @"Name", @"ContactName", @"Name", @"AddressBookContactName", @"JobTitle", @"JobTitle", @"Organization", @"CompanyName", @"Street", @"Street", @"City", @"City", @"State", @"State", @"ZIP", @"ZipCode", @"Country", @"Country", @"Airline", @"AirlineName", @"Flight", @"FlightNumber", 0}];
    qword_1ED4400E0 = result;
  }

  if (v4)
  {
    result = CFArrayGetCount(v4);
    if (result >= 1)
    {
      v5 = result;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v4, i);
        v8 = [qword_1ED4400E0 objectForKey:off_1ED440098()];
        if (v8)
        {
          v9 = v8;
          v10 = off_1ED4400B0(ValueAtIndex);
          if (v10)
          {
            v11 = v10;
            TypeID = CFStringGetTypeID();
            if (TypeID == CFGetTypeID(v11))
            {
              [a2 setObject:v11 forKey:v9];
            }
          }
        }

        result = addAddressResultsToComponents(ValueAtIndex, a2);
      }
    }
  }

  return result;
}

void NSFileCoordinationDestroyTSD(uint64_t a1)
{
  if (a1)
  {
    v2 = *(a1 + 32);
    if (v2)
    {
      CFRelease(v2);
    }

    free(a1);
  }
}

void sub_18117EF40(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, char a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30)
{
  _Block_object_dispose(&a24, 8);
  _Block_object_dispose(&a30, 8);
  _Block_object_dispose((v30 - 152), 8);
  _Unwind_Resume(a1);
}

void -[NSFileCoordinator _blockOnAccessClaim:withAccessArbiter:](NSFileCoordinator *self, SEL a2, id a3, id a4)
{
  v19 = *MEMORY[0x1E69E9840];
  v7 = [a3 claimID];
  v13 = 0;
  v14 = &v13;
  v15 = 0x3052000000;
  v16 = __Block_byref_object_copy__25;
  v17 = __Block_byref_object_dispose__25;
  v18 = 0;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __70__NSFileCoordinator_NSPrivate___blockOnAccessClaim_withAccessArbiter___block_invoke;
  v12[3] = &unk_1E69F64B0;
  v12[5] = a3;
  v12[6] = &v13;
  v12[4] = a4;
  [(NSFileCoordinator *)self _requestAccessClaim:a3 withProcedure:v12];
  v8 = v14;
  if (v14[5])
  {
    if (_NSFCIP == 1)
    {
      v9 = [objc_msgSend(a3 "purposeID")];
      v8 = v14;
      if ((v9 & 1) == 0)
      {
        v10 = v14[5];
        v11 = dispatch_time(0, 10000000000);
        if (!dispatch_semaphore_wait(v10, v11))
        {
LABEL_7:
          dispatch_release(v14[5]);
          goto LABEL_8;
        }

        NSLog(@"Possible NSFileCoordinator deadlock detected. Requesting debug information...");
        [NSFileCoordinator _getDebugInfoWithCompletionHandler:&__block_literal_global_104_0];
        v8 = v14;
      }
    }

    dispatch_semaphore_wait(v8[5], 0xFFFFFFFFFFFFFFFFLL);
    goto LABEL_7;
  }

LABEL_8:
  [(NSFileCoordinator *)self _forgetAccessClaimForID:v7];
  _Block_object_dispose(&v13, 8);
}

void sub_18117FC7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181180854(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, char a32)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose(&a32, 8);
  _Block_object_dispose((v32 - 216), 8);
  _Unwind_Resume(a1);
}

void sub_181180DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a33, 8);
  _Unwind_Resume(a1);
}

void sub_1811814DC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, char a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, char a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, char a46)
{
  _Block_object_dispose(&a34, 8);
  _Block_object_dispose(&a40, 8);
  _Block_object_dispose(&a46, 8);
  _Block_object_dispose((v46 - 232), 8);
  _Unwind_Resume(a1);
}

void sub_181181C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39)
{
  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose((v39 - 224), 8);
  _Unwind_Resume(a1);
}

void sub_181185B7C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181185CD4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

BOOL _NSFCShouldLog(int a1)
{
  v1 = atomic_load(&_NSFCSubarbitrationCount);
  if (v1 < 1)
  {
    return 1;
  }

  v3 = atomic_load(_NSFCDisableLogSuppression);
  if (v3)
  {
    return 1;
  }

  v4 = 0xFFFFFFFFLL;
  if (a1 == 2)
  {
    v4 = 100;
  }

  if (a1 == 1)
  {
    v4 = 200;
  }

  v5 = atomic_load(&_NSFCSubarbitratedClaimCount);
  return v5 < v4;
}

uint64_t _NSGetFSIDAndFileID(void *a1, void *a2, void *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  result = [a1 fileSystemRepresentation];
  if (result)
  {
    *&v7[16] = 0;
    *v7 = __const__NSGetFSIDAndFileID_request;
    v9 = 0;
    memset(v8, 0, sizeof(v8));
    if (!getattrlist(result, v7, v8, 0x28uLL, 1u) && *&v7[4] == *(v8 + 4) && *&v7[20] == DWORD1(v8[1]))
    {
      v6 = v9;
      *a2 = *(&v8[1] + 1);
      *a3 = v6;
      return 1;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

void sub_181189ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26)
{
  _Block_object_dispose(&a26, 8);
  _Block_object_dispose((v26 - 104), 8);
  _Unwind_Resume(a1);
}

uint64_t initUTTypeCopyDescription_0(uint64_t a1)
{
  v2 = MobileCoreServicesLibrary_frameworkLibrary_4;
  if (!MobileCoreServicesLibrary_frameworkLibrary_4)
  {
    v2 = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 2);
    MobileCoreServicesLibrary_frameworkLibrary_4 = v2;
    if (!v2)
    {
      __assert_rtn("MobileCoreServicesLibrary", "NSItemProviderRepresentation.m", 19, "frameworkLibrary");
    }
  }

  v3 = dlsym(v2, "UTTypeCopyDescription");
  softLinkUTTypeCopyDescription_0 = v3;
  if (!v3)
  {
    __assert_rtn("initUTTypeCopyDescription", "NSItemProviderRepresentation.m", 20, "softLinkUTTypeCopyDescription");
  }

  return (v3)(a1);
}

uint64_t NSByteCountFormatterAssertValidMeasurement(void *a1)
{
  [a1 unit];
  result = objc_opt_isKindOfClass();
  if ((result & 1) == 0)
  {
    [a1 unit];
    v3 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"NSByteCountFormatter only supports measurements of dimension NSUnitInformationStorage -- got invalid unit '%@'", objc_opt_class()), 0}];
    objc_exception_throw(v3);
  }

  return result;
}

void sub_18118E03C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18118F1E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_181190170(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_181190558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1811922C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *pairsForURLs(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a1, "count")}];
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v3 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      v6 = 0;
      do
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(a1);
        }

        v7 = *(*(&v10 + 1) + 8 * v6);
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v7 = [NSURLPromisePair pairWithURL:v7];
        }

        [v2 addObject:v7];
        ++v6;
      }

      while (v4 != v6);
      v4 = [a1 countByEnumeratingWithState:&v10 objects:v9 count:16];
    }

    while (v4);
  }

  return v2;
}

void sub_18119A02C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_18119D138(_Unwind_Exception *a1)
{
  _Block_object_dispose(&STACK[0x210], 8);
  _Block_object_dispose(&STACK[0x2A8], 8);
  _Block_object_dispose(&STACK[0x300], 8);
  _Unwind_Resume(a1);
}

uint64_t _NSFCGetFileProviderUIDFOrURL(void *a1, uid_t *a2, uint64_t *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  if (qword_1ED43DAF8 != -1)
  {
    dispatch_once(&qword_1ED43DAF8, &__block_literal_global_873);
  }

  if (off_1ED43DAF0 && !off_1ED43DAF0(a1, a2, a3))
  {
    v6 = _NSFCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      v8 = *a3;
      *fileSec = 138412290;
      *&fileSec[4] = v8;
      _os_log_error_impl(&dword_18075C000, v6, OS_LOG_TYPE_ERROR, "Failure to acquire UID from fault xattrs: %@", fileSec, 0xCu);
    }
  }

  if (*a2)
  {
    return 1;
  }

  *fileSec = 0;
  if ([a1 getResourceValue:fileSec forKey:*MEMORY[0x1E695DB48] error:a3])
  {
    if (CFFileSecurityGetOwner(*fileSec, a2))
    {
      return 1;
    }

    *a3 = [NSError errorWithDomain:@"NSCocoaErrorDomain" code:256 userInfo:0];
  }

  return 0;
}

void sub_1811A0C5C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1811A0EF8(_Unwind_Exception *exception_object, int a2)
{
  if (a2 == 1)
  {
    v4 = objc_begin_catch(exception_object);
    v5 = _NSOSLog();
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      v6 = [v4 callStackSymbols];
      v7 = v3 - 128;
      *(v3 - 128) = 138412546;
      *(v7 + 4) = v4;
      *(v3 - 116) = 2112;
      *(v7 + 14) = v6;
      _os_log_error_impl(&dword_18075C000, v5, OS_LOG_TYPE_ERROR, "An exception occurred while attempting to gather debug information: %@\n%@", (v3 - 128), 0x16u);
    }

    (*(v2 + 16))(v2, 0);
    objc_end_catch();
    JUMPOUT(0x1811A0EBCLL);
  }

  _Unwind_Resume(exception_object);
}

void sub_1811A1B20(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, int buf, __int128 a12, uint64_t a13)
{
  if (a2 == 1)
  {
    v13 = objc_begin_catch(a1);
    v14 = _NSOSLog();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
    {
      v15 = [v13 callStackSymbols];
      buf = 138412802;
      WORD2(a12) = 2112;
      *(&a12 + 6) = v13;
      HIWORD(a12) = 2112;
      a13 = v15;
      _os_log_error_impl(&dword_18075C000, v14, OS_LOG_TYPE_ERROR, "Failed to write filecoordinationd dump file to %@. Received exception: %@\n%@", &buf, 0x20u);
    }

    objc_end_catch();
    JUMPOUT(0x1811A1A8CLL);
  }

  _Unwind_Resume(a1);
}

NSError *_secureCodingScreenedError(NSError *a1)
{
  v41 = *MEMORY[0x1E69E9840];
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v36[0] = MEMORY[0x1E69E9820];
  v36[1] = 3221225472;
  v37 = ___secureCodingScreenedError_block_invoke;
  v38 = &unk_1E69F95F8;
  v39 = v2;
  v40 = v3;
  v30 = 0;
  v31 = &v30;
  v32 = 0x3052000000;
  v33 = __Block_byref_object_copy__28;
  v34 = __Block_byref_object_dispose__28;
  v35 = 0;
  v26[0] = MEMORY[0x1E69E9820];
  v26[1] = 3221225472;
  v27 = ___secureCodingScreenedError_block_invoke_2;
  v28 = &unk_1E69F9620;
  v29 = &v30;
  InstanceMethod = class_getInstanceMethod(v2, sel_localizedDescription);
  if (InstanceMethod == class_getInstanceMethod(v40, sel_localizedDescription))
  {
    v5 = [(NSDictionary *)[(NSError *)a1 userInfo] objectForKey:@"NSLocalizedDescription"];
  }

  else
  {
    v5 = [(NSError *)a1 localizedDescription];
  }

  v6 = v5;
  if (v5)
  {
    v27(v26, @"NSLocalizedDescription", v5);
  }

  if ((v37)(v36, sel_localizedFailureReason, v6))
  {
    v7 = [(NSError *)a1 localizedFailureReason];
  }

  else
  {
    v7 = [(NSDictionary *)[(NSError *)a1 userInfo] objectForKey:@"NSLocalizedFailureReason"];
  }

  v8 = v7;
  if (v7)
  {
    v27(v26, @"NSLocalizedFailureReason", v7);
  }

  if (![(NSError *)a1 localizedRecoveryOptions]&& ![(NSError *)a1 recoveryAttempter])
  {
    if ((v37)(v36, sel_localizedRecoverySuggestion))
    {
      v9 = [(NSError *)a1 localizedRecoverySuggestion];
      if (v9)
      {
        v27(v26, @"NSLocalizedRecoverySuggestion", v9);
      }
    }
  }

  if ([(NSDictionary *)[(NSError *)a1 userInfo] objectForKey:@"NSUnderlyingError"])
  {
    v10 = _secureCodingScreenedError();
    if (v10)
    {
      v27(v26, @"NSUnderlyingError", v10);
    }
  }

  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v22 = ___secureCodingScreenedError_block_invoke_3;
  v23 = &unk_1E69F9648;
  v24 = a1;
  v25 = v26;
  v11 = [(NSDictionary *)[(NSError *)a1 userInfo] objectForKey:@"NSHelpAnchor"];
  if (v11)
  {
    (v25[2])(v25, @"NSHelpAnchor", v11);
  }

  (v22)(v21, @"NSURL", v11);
  v22(v21, @"NSFilePath");
  v17 = ___secureCodingScreenedError_block_invoke_4;
  v18 = &unk_1E69F9648;
  v19 = a1;
  v20 = v26;
  if ([(NSDictionary *)[(NSError *)a1 userInfo:MEMORY[0x1E69E9820]] objectForKey:@"NSRecoveryAttempter"])
  {
    (v20[2])(v20, @"NSRecoveryAttempter", 0);
  }

  v17(&v16, @"NSLocalizedRecoveryOptions");
  v12 = v31[5];
  if (v12 && ([v12 isEqualToDictionary:{-[NSError userInfo](a1, "userInfo")}] & 1) == 0)
  {
    v13 = [(NSError *)a1 domain];
    v14 = [(NSError *)a1 code];
    a1 = [NSError errorWithDomain:v13 code:v14 userInfo:v31[5]];
  }

  _Block_object_dispose(&v30, 8);
  return a1;
}

void sub_1811A68B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

NSUUID *_uniqueFileProviderID(void *a1)
{
  AssociatedObject = objc_getAssociatedObject(a1, "_fileProviderID");
  if (!AssociatedObject)
  {
    AssociatedObject = +[NSUUID UUID];
    objc_setAssociatedObject(a1, "_fileProviderID", AssociatedObject, 0x301);
  }

  return AssociatedObject;
}

void sub_1811A6FF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1811A7148(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t ___secureCodingScreenedError_block_invoke_2(uint64_t result, uint64_t a2, uint64_t a3)
{
  v5 = result;
  if (*(*(*(result + 32) + 8) + 40))
  {
    if (!a3)
    {
      return result;
    }
  }

  else
  {
    result = objc_opt_new();
    *(*(*(v5 + 32) + 8) + 40) = result;
    if (!a3)
    {
      return result;
    }
  }

  v6 = *(*(*(v5 + 32) + 8) + 40);

  return [v6 setObject:a3 forKey:a2];
}

uint64_t ___secureCodingScreenedError_block_invoke_3(uint64_t a1, uint64_t a2)
{
  result = [objc_msgSend(*(a1 + 32) "userInfo")];
  if (result)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

uint64_t ___secureCodingScreenedError_block_invoke_4(uint64_t a1, uint64_t a2)
{
  result = [objc_msgSend(*(a1 + 32) "userInfo")];
  if (result)
  {
    v4 = *(*(a1 + 40) + 16);

    return v4();
  }

  return result;
}

uint64_t ___nearestPresenterInterestedInSubitemPresenters_block_invoke(uint64_t result, uint64_t a2)
{
  if (*(a2 + 112) >> 31)
  {
    *(*(*(result + 32) + 8) + 40) = a2;
  }

  return result;
}

id ___messageToResponsesTable_block_invoke()
{
  v3[5] = *MEMORY[0x1E69E9840];
  v0 = objc_msgSend(MEMORY[0x1E695DF20], "sharedKeySetForKeys:", +[(WC allKeys](&unk_1EEF5A570, "allKeys"));
  v1 = [MEMORY[0x1E695DF90] dictionaryWithSharedKeySet:v0];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 3221225472;
  v3[2] = ___messageToResponsesTable_block_invoke_410;
  v3[3] = &unk_1E69F3270;
  v3[4] = v1;
  [((WC *)&unk_1EEF5A570 enumerateKeysAndObjectsUsingBlock:v3];
  result = v1;
  _MergedGlobals_3_1 = result;
  return result;
}

uint64_t gsDefaultStorageManager()
{
  if (qword_1ED440210 != -1)
  {
    dispatch_once(&qword_1ED440210, &__block_literal_global_277);
  }

  v1 = qword_1ED4401F8;

  return [v1 manager];
}

void sub_1811C4860(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, char a31)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a31, 8);
  _Unwind_Resume(a1);
}

void sub_1811C5158(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__initializeFileProvider_block_invoke()
{
  v0 = [objc_msgSend(pathToSystemFramework(@"FileProvider.framework") stringByAppendingString:{@"/FileProvider", "fileSystemRepresentation"}];
  result = dlopen(v0, 256);
  qword_1ED440200 = result;
  return result;
}

uint64_t pathToSystemFramework(uint64_t a1)
{
  v2 = +[NSFileManager defaultManager];
  v3 = NSSearchPathForDirectoriesInDomains(NSLibraryDirectory, 8uLL, 1);
  v4 = [(NSArray *)v3 count];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  while (1)
  {
    v7 = [(NSArray *)v3 objectAtIndex:v6];
    v8 = [objc_msgSend(v7 stringByAppendingPathComponent:{@"Frameworks", "stringByAppendingPathComponent:", a1}];
    if ([(NSFileManager *)v2 fileExistsAtPath:v8])
    {
      break;
    }

    v8 = [objc_msgSend(v7 stringByAppendingPathComponent:{@"PrivateFrameworks", "stringByAppendingPathComponent:", a1}];
    if ([(NSFileManager *)v2 fileExistsAtPath:v8])
    {
      break;
    }

    if (v5 == ++v6)
    {
      return 0;
    }
  }

  return v8;
}

void *__initializeUbiquityStuff_block_invoke()
{
  result = [pathToSystemFramework(@"GenerationalStorage.framework") stringByAppendingString:@"/GenerationalStorage"];
  if (result)
  {
    result = dlopen([result fileSystemRepresentation], 256);
    if (result)
    {
      v1 = result;
      _MergedGlobals_149 = *dlsym(result, "GSGenerationalStorageErrorDomain");
      qword_1ED4401E0 = *dlsym(v1, "GSAdditionCreationNameSpaceKey");
      qword_1ED4401E8 = *dlsym(v1, "GSAdditionCreationNameKey");
      qword_1ED4401F0 = *dlsym(v1, "GSAdditionCreationUserInfoKey");
      result = objc_lookUpClass("GSStorageManager");
      qword_1ED4401F8 = result;
    }
  }

  return result;
}

uint64_t eventStreamCallback(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7[7] = *MEMORY[0x1E69E9840];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __eventStreamCallback_block_invoke;
  v7[3] = &unk_1E69FA128;
  v7[5] = a5;
  v7[6] = a6;
  v7[4] = a2;
  return [a4 enumerateObjectsUsingBlock:v7];
}

void sub_1811C7DB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__initializeFSEvents_block_invoke()
{
  result = dlopen("/System/Library/Frameworks/MobileCoreServices.framework/MobileCoreServices", 256);
  if (result)
  {
    v1 = result;
    off_1ED440260 = dlsym(result, "FSEventStreamCreate");
    off_1ED440258 = dlsym(v1, "FSEventStreamInvalidate");
    off_1ED440248 = dlsym(v1, "FSEventStreamRelease");
    off_1ED440268 = dlsym(v1, "FSEventStreamSetDispatchQueue");
    off_1ED440270 = dlsym(v1, "FSEventStreamStart");
    result = dlsym(v1, "FSEventStreamStop");
    off_1ED440250 = result;
  }

  return result;
}

void clearAllObservers(uint64_t a1)
{
  v1 = (a1 + 24);
  if (atomic_load((a1 + 24)))
  {
    os_unfair_lock_lock_with_options();
    v4 = atomic_load(v1);
    if (v4 < 2)
    {
      Weak = 0;
    }

    else
    {
      Weak = objc_loadWeak((a1 + 16));
    }

    atomic_store(0, (a1 + 24));
    objc_storeWeak((a1 + 16), 0);
    os_unfair_lock_unlock((a1 + 28));
  }
}

void addObserver(uint64_t a1, void *a2)
{
  os_unfair_lock_lock_with_options();
  add = atomic_fetch_add((a1 + 24), 1u);
  v5 = (a1 + 16);
  if (add == 1)
  {
    Weak = objc_loadWeak(v5);
    v7 = [[NSHashTable alloc] initWithOptions:517 capacity:0];
    objc_storeWeak((a1 + 16), v7);
    [(NSHashTable *)v7 addObject:Weak];
  }

  else
  {
    if (!add)
    {
      objc_storeWeak(v5, a2);
      goto LABEL_7;
    }

    v7 = objc_loadWeak(v5);
  }

  [(NSHashTable *)v7 addObject:a2];
LABEL_7:

  os_unfair_lock_unlock((a1 + 28));
}

void removeObservation(uint64_t a1, uint64_t a2)
{
  v2 = (a1 + 24);
  if (!atomic_load((a1 + 24)))
  {
    return;
  }

  os_unfair_lock_lock_with_options();
  add = atomic_fetch_add(v2, 0xFFFFFFFF);
  v7 = add - 1;
  if (add == 1)
  {
    v9 = 0;
    Weak = 0;
  }

  else
  {
    Weak = objc_loadWeak((a1 + 16));
    [Weak removeObject:a2];
    if (v7 != 1)
    {
      Weak = 0;
      goto LABEL_9;
    }

    v9 = [Weak anyObject];
  }

  objc_storeWeak((a1 + 16), v9);
LABEL_9:
  os_unfair_lock_unlock((a1 + 28));
}

void withUnlockedObservers(uint64_t a1, uint64_t a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = objc_autoreleasePoolPush();
  v5 = v4;
  if (atomic_load((a1 + 24)))
  {
    v18 = v4;
    v7 = os_unfair_lock_lock_with_options();
    v17 = &v17;
    v8 = atomic_load((a1 + 24));
    MEMORY[0x1EEE9AC00](v7);
    v10 = (&v17 - v9);
    v20 = 0;
    if (v8 >= 0x101)
    {
      v10 = _CFCreateArrayStorage();
      v19 = v10;
    }

    else
    {
      v19 = 0;
      if (!v8)
      {
LABEL_19:
        os_unfair_lock_unlock((a1 + 28));
        (*(a2 + 16))(a2, v10, v8);
        free(v19);
        v5 = v18;
        goto LABEL_20;
      }
    }

    if (v8 == 1)
    {
      *v10 = objc_loadWeak((a1 + 16));
    }

    else
    {
      v24 = 0u;
      v25 = 0u;
      v22 = 0u;
      v23 = 0u;
      Weak = objc_loadWeak((a1 + 16));
      v12 = [Weak countByEnumeratingWithState:&v22 objects:v21 count:{16, v17}];
      if (v12)
      {
        v13 = 0;
        v14 = *v23;
        do
        {
          v15 = 0;
          if (v8 >= v13)
          {
            v16 = v8 - v13;
          }

          else
          {
            v16 = 0;
          }

          do
          {
            if (*v23 != v14)
            {
              objc_enumerationMutation(Weak);
            }

            if (v16 == v15)
            {
              __assert_rtn("withUnlockedObservers", "_NSObserverList.m", 41, "idx < count");
            }

            v10[v13++] = *(*(&v22 + 1) + 8 * v15++);
          }

          while (v12 != v15);
          v12 = [Weak countByEnumeratingWithState:&v22 objects:v21 count:16];
        }

        while (v12);
      }
    }

    goto LABEL_19;
  }

  (*(a2 + 16))(a2, 0, 0);
LABEL_20:
  objc_autoreleasePoolPop(v5);
}

void sub_1811C9684(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1811C9B38(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, int buf, __int128 a20, uint64_t a21)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v22 = objc_begin_catch(a1);
      v23 = _NSXPCLongMessageLog();
      if (os_log_type_enabled(v23, OS_LOG_TYPE_FAULT))
      {
        if (*(v21 + 32))
        {
          v24 = *(v21 + 32);
        }

        else
        {
          v24 = 0;
        }

        Name = sel_getName(v24);
        v26 = [v22 debugDescription];
        buf = 138543874;
        WORD2(a20) = 2082;
        *(&a20 + 6) = Name;
        HIWORD(a20) = 2114;
        a21 = v26;
        _os_log_fault_impl(&dword_18075C000, v23, OS_LOG_TYPE_FAULT, "%{public}@: Exception caught during invocation of reply block to message '%{public}s'.\n\nException: %{public}@", &buf, 0x20u);
      }

      if (dyld_program_sdk_at_least())
      {
        objc_exception_throw(v22);
      }

      objc_end_catch();
      JUMPOUT(0x1811C9A24);
    }

    objc_begin_catch(a1);
    JUMPOUT(0x1811C9A28);
  }

  _Unwind_Resume(a1);
}

void sub_1811C9C2C(_Unwind_Exception *a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1811C9C40);
  }

  _Unwind_Resume(a1);
}

void sub_1811C9C50(_Unwind_Exception *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, __CFString *a17, uint64_t a18, __int128 buf, int a20, __int16 a21, __int16 a22, uint64_t a23)
{
  if (a2 == 2)
  {
    v25 = objc_begin_catch(a1);
    v26 = _NSXPCLongMessageLog();
    if (os_log_type_enabled(v26, OS_LOG_TYPE_FAULT))
    {
      if (v23[4])
      {
        v30 = v23[4];
      }

      else
      {
        v30 = 0;
      }

      Name = sel_getName(v30);
      v32 = [v25 debugDescription];
      LODWORD(buf) = 138543874;
      *(&buf + 4) = v24;
      WORD6(buf) = 2082;
      *(&buf + 14) = Name;
      a22 = 2114;
      a23 = v32;
      _os_log_fault_impl(&dword_18075C000, v26, OS_LOG_TYPE_FAULT, "%{public}@: Exception caught during decoding of reply to message '%{public}s', dropping incoming message and calling failure block.\n\nIgnored Exception: %{public}@", &buf, 0x20u);
    }

    if (objc_getProperty(v23, v27, 16, 1))
    {
      Property = objc_getProperty(v23, v28, 16, 1);
      a17 = @"NSDebugDescription";
      a18 = [v24 _errorDescription];
      +[NSError errorWithDomain:code:userInfo:](NSError, "errorWithDomain:code:userInfo:", @"NSCocoaErrorDomain", 4101, [MEMORY[0x1E695DF20] dictionaryWithObjects:&a18 forKeys:&a17 count:1]);
      __NSINDEXSET_IS_CALLING_OUT_TO_A_RANGE_BLOCK__(Property);
    }

    [(_NSXPCConnectionExpectedReplyInfo *)v23 cleanup];
    objc_end_catch();
    JUMPOUT(0x1811C9A44);
  }

  _Unwind_Resume(a1);
}

void sub_1811CAAA0(void *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *exc_buf, uint64_t a16, int a17, int a18)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v21 = objc_begin_catch(a1);
      v22 = _NSXPCLongMessageLog();
      if (os_log_type_enabled(v22, OS_LOG_TYPE_FAULT))
      {
        v23 = *(v20 - 200);
        if (v23)
        {
          Name = sel_getName(v23);
        }

        else
        {
          Name = "(unknown selector)";
        }

        v25 = [v21 debugDescription];
        *(v20 - 192) = 138544130;
        v26 = v20 - 192;
        *(v26 + 4) = v18;
        *(v20 - 180) = 2082;
        *(v26 + 14) = Name;
        *(v20 - 170) = 2114;
        *(v20 - 168) = v21;
        *(v20 - 160) = 2114;
        *(v26 + 34) = v25;
        _os_log_fault_impl(&dword_18075C000, v22, OS_LOG_TYPE_FAULT, "%{public}@: Warning: Exception caught during invocation of selector %{public}s, dropping incoming message and invalidating the connection.\nException: %{public}@\n%{public}@", (v20 - 192), 0x2Au);
      }

      [v18 invalidate];
      if (dyld_program_sdk_at_least())
      {
        objc_exception_throw(v21);
      }

      objc_end_catch();
    }

    else
    {
      objc_begin_catch(a1);
    }

    if ((v19 & 1) == 0)
    {
      JUMPOUT(0x1811CA560);
    }

    JUMPOUT(0x1811CA568);
  }

  JUMPOUT(0x1811CAD84);
}

void sub_1811CABE8(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1811CAC04);
  }

  JUMPOUT(0x1811CAD84);
}

void sub_1811CAC4C(uint64_t a1, int a2)
{
  if (a2)
  {
    JUMPOUT(0x1811CAC58);
  }

  JUMPOUT(0x1811CAD84);
}

void sub_1811CAD30(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_end_catch();
    JUMPOUT(0x1811CAD48);
  }

  JUMPOUT(0x1811CAD84);
}

void sub_1811CAD8C(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1811CAD84);
}

void sub_1811CEDB4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1811CF330(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1811D1DB8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 56), 8);
  _Unwind_Resume(a1);
}

uint64_t _NSPNCSettings(void *a1)
{
  result = [a1 copy];
  _overriddenSettings = result;
  return result;
}

void sub_1811D2F18(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v8 - 72), 8);
  _Unwind_Resume(a1);
}

void sub_1811D316C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, ...)
{
  va_start(va, a6);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *initNPNameParser()
{
  if (qword_1ED43F510 || (result = dlopen("/System/Library/PrivateFrameworks/CoreNameParser.framework/CoreNameParser", 1), (qword_1ED43F510 = result) != 0))
  {
    result = objc_getClass("NPNameParser");
    qword_1ED43F508 = result;
    getNPNameParserClass = NPNameParserFunction;
  }

  return result;
}

void sub_1811D5E7C(void *a1)
{
  objc_begin_catch(a1);
  if (!v1)
  {
    JUMPOUT(0x1811D5DE8);
  }

  JUMPOUT(0x1811D5DC4);
}

void sub_1811D5F24(void *a1)
{
  objc_begin_catch(a1);
  if (!v1)
  {
    JUMPOUT(0x1811D5EF4);
  }

  JUMPOUT(0x1811D5ED0);
}

void sub_1811D7164(void *a1)
{
  objc_begin_catch(a1);
  *(v1 + v2) = 0;
  objc_exception_rethrow();
}

uint64_t compare_1(double *a1, double *a2)
{
  if (*a1 >= *a2)
  {
    v2 = 0;
  }

  else
  {
    v2 = -1;
  }

  if (*a1 > *a2)
  {
    return 1;
  }

  else
  {
    return v2;
  }
}

void service_connection_handler_make_remote_connection(void *a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v5 = -[NSXPCConnection _initWithRemotePeerConnection:name:options:]([NSXPCConnection alloc], a2, [a1 serviceName]);
  [a1 delegate];
  if ((objc_opt_respondsToSelector() & 1) == 0 || ([objc_msgSend(a1 "delegate")] & 1) == 0)
  {
    [v5 invalidate];
  }

  objc_autoreleasePoolPop(v4);
}

void ___setupRemoteListenerConnection_block_invoke(uint64_t a1, id a2)
{
  v10 = *MEMORY[0x1E69E9840];
  Class = object_getClass(a2);
  if (Class == _XPC_TYPE_REMOTE_CONNECTION)
  {
    v7 = *(a1 + 32);

    service_connection_handler_make_remote_connection(v7, a2);
  }

  else if (Class != MEMORY[0x1E69E9E98])
  {
    v5 = MEMORY[0x1865D3A50](a2);
    v6 = _NSXPCLog();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_FAULT))
    {
      v8 = 136446210;
      v9 = v5;
      _os_log_fault_impl(&dword_18075C000, v6, OS_LOG_TYPE_FAULT, "NSXPCListener: received error or other non-connection type in handler for remote listener: %{public}s", &v8, 0xCu);
    }

    free(v5);
  }
}

const char *_NSXPCInterfaceDebugDescriptionHelper(const char *result, uint64_t a2, void *a3)
{
  if (a2)
  {
    Name = sel_getName(result);
    v6 = [*(a2 + 16) count];
    v7 = @"0";
    v8 = *(a2 + 44) ? @">=1" : @"0";
    [a3 appendFormat:@"SEL: %s (%ld arguments, %@ proxies)\n Classes: %@\n", Name, v6, v8, descriptionForClassArray(*(a2 + 16))];
    v9 = *(a2 + 40);
    result = [*a2 _typeString];
    v10 = result;
    if (v9 || result)
    {
      v11 = [*(a2 + 8) count];
      if (*(a2 + 45))
      {
        v7 = @">=1";
      }

      return [a3 appendFormat:@" Reply block: (arg #%d, (%ld arguments, %@ proxies), signature '%@') %@\n", v9, v11, v7, v10, descriptionForClassArray(*(a2 + 8))];
    }
  }

  return result;
}

void sub_1811D9478(_Unwind_Exception *exception_object, int a2)
{
  if (a2)
  {
    objc_begin_catch(exception_object);
    os_unfair_lock_unlock(v2 + 12);
    objc_exception_rethrow();
  }

  _Unwind_Resume(exception_object);
}

void sub_1811D94B0(uint64_t a1, int a2)
{
  if (a2)
  {
    objc_terminate();
  }

  JUMPOUT(0x1811D94BCLL);
}

void sub_1811D97B4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 12);
  objc_exception_rethrow();
}

void sub_1811D9DD0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 12);
  objc_exception_rethrow();
}

void sub_1811DA0A8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 12);
  objc_exception_rethrow();
}

void sub_1811DA3A8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 12);
  objc_exception_rethrow();
}

void sub_1811DA674(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 12);
  objc_exception_rethrow();
}

void sub_1811DA8E8(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 12);
  objc_exception_rethrow();
}

void sub_1811DAA58(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 12);
  objc_exception_rethrow();
}

void sub_1811DABC4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 12);
  objc_exception_rethrow();
}

void _maxVersionFinder(uint64_t a1, uint64_t a2, unint64_t *a3)
{
  if (a2)
  {
    v3 = *(a2 + 24);
  }

  else
  {
    v3 = 1;
  }

  if (v3 > *a3)
  {
    *a3 = v3;
  }
}

void sub_1811DAD1C(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 12);
  objc_exception_rethrow();
}

void sub_1811DAFA0(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 12);
  objc_exception_rethrow();
}

void sub_1811DB078(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 12);
  objc_exception_rethrow();
}

void sub_1811DB150(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 12);
  objc_exception_rethrow();
}

void sub_1811DB234(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 12);
  objc_exception_rethrow();
}

void sub_1811DB2BC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 12);
  objc_exception_rethrow();
}

void sub_1811DB3EC(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_lock_unlock(v1 + 12);
  objc_exception_rethrow();
}

__CFString *descriptionForClassArray(void *a1)
{
  if (![a1 count])
  {
    return @"[]";
  }

  v2 = [(NSString *)NSMutableString stringWithString:@"["];
  -[NSMutableString appendString:](v2, "appendString:", descriptionForArgumentEntry([a1 objectAtIndex:0]));
  if ([a1 count] >= 2 && objc_msgSend(a1, "count") >= 2)
  {
    v3 = 1;
    do
    {
      -[NSMutableString appendFormat:](v2, "appendFormat:", @", %@", descriptionForArgumentEntry([a1 objectAtIndex:v3++]));
    }

    while (v3 < [a1 count]);
  }

  [(NSMutableString *)v2 appendFormat:@"]"];
  return v2;
}

NSString *descriptionForArgumentEntry(void *a1)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    if (![a1 count])
    {
      return @"{}";
    }

    v2 = [(NSString *)NSMutableString stringWithString:@"{"];
    v3 = [a1 allObjects];
    -[NSMutableString appendFormat:](v2, "appendFormat:", @"%s", class_getName([v3 objectAtIndex:0]));
    if ([v3 count] >= 2 && objc_msgSend(v3, "count") >= 2)
    {
      v4 = 1;
      do
      {
        -[NSMutableString appendFormat:](v2, "appendFormat:", @", %s", class_getName([v3 objectAtIndex:v4++]));
      }

      while (v4 < [v3 count]);
    }

    [(NSMutableString *)v2 appendFormat:@"}"];
    return v2;
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [a1 protocol];
    if (v5)
    {
      Name = protocol_getName(v5);
    }

    else
    {
      Name = "(none set)";
    }

    return [NSString stringWithFormat:@"NSXPCInterface (%p) / %s", a1, Name];
  }

  else
  {
    if ([a1 isEqual:{objc_msgSend(MEMORY[0x1E695DFB0], "null")}])
    {
      return @"{None}";
    }

    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      if (a1)
      {
        v8 = a1[1];
      }

      else
      {
        v8 = 0;
      }

      return [NSString stringWithFormat:@"XPC Type: %@", v8, v9];
    }

    else
    {
      return [NSString stringWithFormat:@"%@", objc_opt_class(), v9];
    }
  }
}

void NSProgressTSDDestroy(uint64_t a1)
{
  if (a1)
  {
    if (*(a1 + 8))
    {
      NSProgressTSDDestroy();
    }

    free(a1);
  }
}

void sub_1811DF49C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 136), 8);
  _Block_object_dispose((v1 - 104), 8);
  _Unwind_Resume(a1);
}

void sub_1811DF72C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 136), 8);
  _Block_object_dispose((v1 - 104), 8);
  _Unwind_Resume(a1);
}

void sub_1811DF994(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 136), 8);
  _Block_object_dispose((v1 - 104), 8);
  _Unwind_Resume(a1);
}

void sub_1811DFC0C(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 136), 8);
  _Block_object_dispose((v1 - 104), 8);
  _Unwind_Resume(a1);
}

void sub_1811DFEA0(_Unwind_Exception *a1)
{
  _Block_object_dispose((v1 - 136), 8);
  _Block_object_dispose((v1 - 104), 8);
  _Unwind_Resume(a1);
}

uint64_t ___lockedLocalizedDescriptionForNotFile_block_invoke()
{
  qword_1ED43F118 = objc_alloc_init(NSNumberFormatter);
  [qword_1ED43F118 setFormatterBehavior:1040];
  [qword_1ED43F118 setNumberStyle:3];
  [qword_1ED43F118 setMaximumFractionDigits:0];
  [qword_1ED43F118 setMinimumFractionDigits:0];
  [qword_1ED43F118 setLocale:{objc_msgSend(MEMORY[0x1E695DF58], "currentLocale")}];
  v0 = qword_1ED43F118;

  return [v0 setRoundingMode:1];
}

uint64_t _lockedLocalizedTimeRemaining(uint64_t a1)
{
  v2 = [*(a1 + 8) objectForKey:@"NSProgressEstimatedTimeRemainingKey"];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  if (!_NSIsNSNumber())
  {
    return 0;
  }

  v4 = [*(a1 + 8) objectForKey:@"NSProgressLocalizedDescriptionTimeRemainingFormatterKey"];
  if (!v4 || (v5 = v4, (objc_opt_isKindOfClass() & 1) == 0))
  {
    if (qword_1ED43F128 != -1)
    {
      dispatch_once(&qword_1ED43F128, &__block_literal_global_836);
    }

    v5 = qword_1ED43F120;
  }

  [v3 doubleValue];

  return [v5 stringFromTimeInterval:?];
}

NSString *_localizedAppendedTimeRemaining(NSString *result)
{
  if (result)
  {
    return +[NSString stringWithFormat:](NSString, "stringWithFormat:", [_NSFoundationBundle() localizedStringForKey:@" — %@" value:&stru_1EEEFDF90 table:@"Progress"], result);
  }

  return result;
}

uint64_t ___lockedLocalizedTimeRemaining_block_invoke()
{
  qword_1ED43F120 = objc_alloc_init(NSDateComponentsFormatter);
  [qword_1ED43F120 setUnitsStyle:3];
  [qword_1ED43F120 setIncludesTimeRemainingPhrase:1];
  v0 = qword_1ED43F120;

  return [v0 setIncludesApproximationPhrase:1];
}

uint64_t ___lockedLocalizedAdditionalDescriptionForNotFile_block_invoke()
{
  qword_1ED43F138 = objc_alloc_init(NSNumberFormatter);
  [qword_1ED43F138 setFormatterBehavior:1040];
  [qword_1ED43F138 setNumberStyle:1];
  [qword_1ED43F138 setUsesGroupingSeparator:1];
  v0 = qword_1ED43F138;
  v1 = [MEMORY[0x1E695DF58] currentLocale];

  return [v0 setLocale:v1];
}

void sub_1811E566C(void *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v9 = objc_begin_catch(exc_buf);
      v10 = _NSOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v9 description];
        LODWORD(a9) = 138412290;
        *(&a9 + 4) = v11;
        _os_log_error_impl(&dword_18075C000, v10, OS_LOG_TYPE_ERROR, "NSProgress Exception caught: %@", &a9, 0xCu);
      }

      objc_end_catch();
      JUMPOUT(0x1811E55F8);
    }

    objc_begin_catch(exc_buf);
    JUMPOUT(0x1811E55FCLL);
  }

  JUMPOUT(0x1811E5660);
}

void sub_1811E5864(_Unwind_Exception *exc_buf, int a2, int a3, int a4, int a5, int a6, int a7, int a8, __int128 a9)
{
  if (a2)
  {
    if (a2 == 2)
    {
      v9 = objc_begin_catch(exc_buf);
      v10 = _NSOSLog();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        v11 = [v9 description];
        LODWORD(a9) = 138412290;
        *(&a9 + 4) = v11;
        _os_log_error_impl(&dword_18075C000, v10, OS_LOG_TYPE_ERROR, "NSProgress Exception caught: %@", &a9, 0xCu);
      }

      objc_end_catch();
      JUMPOUT(0x1811E5814);
    }

    objc_begin_catch(exc_buf);
    JUMPOUT(0x1811E5818);
  }

  _Unwind_Resume(exc_buf);
}

void _NSOrderedChangesRelease(uint64_t a1)
{
  for (i = *(a1 + 40); i != 0x7FFFFFFFFFFFFFFFLL; i = *(v3 + 32))
  {
    v3 = *(a1 + 16) + 40 * i;
  }

  v4 = *(a1 + 16);
  if (v4)
  {
    free(v4);
  }

  v5 = *a1;
}

uint64_t _NSOrderedChangesCopy(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  result = [*a1 copy];
  *a2 = result;
  *(a2 + 8) = 0;
  v5.f64[0] = NAN;
  v5.f64[1] = NAN;
  *(a2 + 40) = vnegq_f64(v5);
  *(a2 + 16) = 0;
  *(a2 + 24) = xmmword_181406480;
  *(a2 + 56) = 0;
  v13 = 0;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = ___NSOrderedChangesCopy_block_invoke;
  v11 = &__block_descriptor_40_e21_v48__0Q8Q16Q24_32_B40l;
  v12 = a2;
  if (*(a1 + 56))
  {
    v6 = *(a1 + 40);
    if (v6 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
      do
      {
        if (v7 > *(a1 + 56))
        {
          [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"void __NSOrderedChangeListEnumerate(NSOrderedChangeList * stringWithUTF8String:_NSOrderedChangeEnumerator)"], @"NSOrderedChanges.m", 257, @"overstepped bounds of enumeration"];
        }

        v8 = (*(a1 + 16) + 40 * v6);
        result = (v10)(v9, *v8, v8[1], v8[2], v8[3], &v13);
        if (v13)
        {
          break;
        }

        ++v7;
        v6 = v8[4];
      }

      while (v6 != 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  return result;
}

uint64_t _NSOrderedChangesEnumerateChanges(uint64_t result, uint64_t a2, _BYTE *a3, uint64_t a4)
{
  v14 = *MEMORY[0x1E69E9840];
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 3221225472;
  v10 = ___NSOrderedChangesEnumerateChanges_block_invoke;
  v11 = &unk_1E69FA990;
  v12 = a4;
  v13 = a2;
  if (*(result + 56))
  {
    v4 = result;
    v5 = *(result + 40);
    if (v5 != 0x7FFFFFFFFFFFFFFFLL)
    {
      v7 = 0;
      do
      {
        if (v7 > *(v4 + 56))
        {
          [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"void __NSOrderedChangeListEnumerate(NSOrderedChangeList * stringWithUTF8String:_NSOrderedChangeEnumerator)"], @"NSOrderedChanges.m", 257, @"overstepped bounds of enumeration"];
        }

        v8 = (*(v4 + 16) + 40 * v5);
        result = (v10)(v9, *v8, v8[1], v8[2], v8[3], a3);
        if (*a3)
        {
          break;
        }

        ++v7;
        v5 = v8[4];
      }

      while (v5 != 0x7FFFFFFFFFFFFFFFLL);
    }
  }

  return result;
}

id _NSOrderedChangesAddChange(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  if ((*(a1 + 8) & 1) == 0)
  {
    v10 = [*a1 mutableCopy];

    *a1 = v10;
    *(a1 + 8) = 1;
  }

  if (a2 > 3)
  {
    if (a2 == 4)
    {
      [*a1 replaceObjectAtIndex:a4 withObject:a5];
    }

    else if (a2 == 5)
    {
      [*a1 moveObjectsAtIndexes:+[NSIndexSet indexSetWithIndex:](NSIndexSet toIndex:{"indexSetWithIndex:", a3), a4}];
      if (a3 == 0x7FFFFFFFFFFFFFFFLL)
      {
        [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString lineNumber:"stringWithUTF8String:" description:"void __NSOrderedChangeListAppend(NSOrderedChanges * stringWithUTF8String:NSUInteger, NSUInteger, id)"], @"NSOrderedChanges.m", 187, @"move sources not found"];
      }
    }
  }

  else if (a2 == 2)
  {
    [*a1 insertObject:a5 atIndex:a4];
  }

  else if (a2 == 3)
  {
    [*a1 removeObjectAtIndex:a4];
  }

  v11 = *(a1 + 24);
  if (v11 != 0x7FFFFFFFFFFFFFFFLL)
  {
    v14 = *(a1 + 16);
    goto LABEL_25;
  }

  v12 = *(a1 + 32);
  if (v12)
  {
    v13 = malloc_good_size(40 * v12 + 40) / 0x28;
    if (v13 <= *(a1 + 32))
    {
      [+[NSAssertionHandler currentHandler](NSAssertionHandler handleFailureInFunction:"handleFailureInFunction:file:lineNumber:description:" file:[NSString stringWithUTF8String:?], @"NSOrderedChanges.m", 154, @"capacity should be larger than previously requested"];
    }
  }

  else
  {
    v13 = 32;
  }

  v15 = *(a1 + 16);
  if (!v15)
  {
    v14 = malloc_type_malloc(40 * v13, 0x1080040A84C04D1uLL);
    if (v14)
    {
      goto LABEL_21;
    }

LABEL_31:
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695DA18] reason:@"Unable to allocate underlying buffer for change list" userInfo:0]);
  }

  v14 = MEMORY[0x1865CFE30](v15, 40 * v13, 0x1080040A84C04D1, 0);
  if (!v14)
  {
    goto LABEL_31;
  }

LABEL_21:
  v16 = *(a1 + 32);
  if (v16 < v13)
  {
    v17 = &v14[40 * v16 + 32];
    v18 = 0x7FFFFFFFFFFFFFFFLL;
    do
    {
      *(v17 - 1) = 0;
      *v17 = v18;
      v18 = v16++;
      v17 += 5;
    }

    while (v13 != v16);
  }

  v11 = v13 - 1;
  *(a1 + 16) = v14;
  *(a1 + 24) = v13 - 1;
  *(a1 + 32) = v13;
LABEL_25:
  v19 = &v14[40 * v11];
  v19[1] = a3;
  v19[2] = a4;
  result = a5;
  *v19 = a2;
  v19[3] = result;
  v19[4] = 0x7FFFFFFFFFFFFFFFLL;
  *(a1 + 24) = 0x7FFFFFFFFFFFFFFFLL;
  if (*(a1 + 40) == 0x7FFFFFFFFFFFFFFFLL)
  {
    *(a1 + 40) = v11;
  }

  v21 = *(a1 + 48);
  if (v21 != 0x7FFFFFFFFFFFFFFFLL)
  {
    *(*(a1 + 16) + 40 * v21 + 32) = v11;
  }

  v22 = *(a1 + 56) + 1;
  *(a1 + 48) = v11;
  *(a1 + 56) = v22;
  return result;
}

void _NSOrderedChangesSort(id *a1, uint64_t a2, unint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3 >= 2)
  {
    v6 = v16;
    bzero(v16, 0x800uLL);
    if (2 * a3 >= 0x101)
    {
      v6 = malloc_type_malloc(16 * a3, 0x100004000313F17uLL);
    }

    CFSortIndexes();
    v7 = 0;
    do
    {
      v8 = *&v6[8 * v7];
      if (v8 == v7)
      {
        v9 = v7 + 1;
      }

      else
      {
        v10 = v8 + a2;
        v11 = v7 + a2;
        _NSOrderedChangesAddChange(a1, 5, v8 + a2, v7 + a2, [*a1 objectAtIndex:v8 + a2]);
        v9 = v7 + 1;
        if (v7 + 1 < a3)
        {
          v12 = a3 - 1 - v7;
          v13 = &v6[8 * v7 + 8];
          do
          {
            v14 = *v13 - (*v13 >= v10);
            if (*v13 >= v10 || v14 >= v11)
            {
              if (v14 >= v11)
              {
                ++v14;
              }

              *v13 = v14;
            }

            ++v13;
            --v12;
          }

          while (v12);
        }
      }

      v7 = v9;
    }

    while (v9 != a3);
    if (v6 != v16)
    {
      free(v6);
    }
  }
}

uint64_t _NSXPCSerializationDebugInfoForReadData(uint64_t *a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v8 = xmmword_18147CB40;
  v2 = *a1;
  v3 = a1[1];
  DWORD2(v8) = *(*a1 + 8) & 0xF0;
  v4 = [NSString stringWithFormat:@"%.8s %llu bytes (-%llu bytes)\n", v2, v3, _NSXPCSerializationDebugSizeForObject(a1, &v8) - a1[1] + 8];
  v6 = _NSXPCSerializationDebugInfoForObject(a1, &v8, 2, 2, v5);

  return [(NSString *)v4 stringByAppendingString:v6];
}

uint64_t _NSXPCSerializationDebugSizeForObject(uint64_t *a1, uint64_t a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  v2 = *a2;
  if (*a2 >= a1[1])
  {
    return 0;
  }

  v5 = *(a2 + 8);
  v11 = 0;
  v12 = &v11;
  v13 = 0x2020000000;
  v14[0] = 0;
  switch(v5)
  {
    case 208:
      v14[0] = 9;
      v9[0] = MEMORY[0x1E69E9820];
      v9[1] = 3221225472;
      v9[2] = ___NSXPCSerializationDebugSizeForObject_block_invoke_2;
      v9[3] = &unk_1E69FAAA8;
      v9[4] = &v11;
      v9[5] = a1;
      _iterateDictionaryKeysAndValues(a1, a2, v9);
      break;
    case 160:
      v14[0] = 9;
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 3221225472;
      v10[2] = ___NSXPCSerializationDebugSizeForObject_block_invoke;
      v10[3] = &unk_1E69FAA80;
      v10[4] = &v11;
      v10[5] = a1;
      _NSXPCSerializationIterateArrayObject(a1, a2, v10);
      break;
    case 128:
      if (_getReferenceAtMarker(a1, a2, v2, v14))
      {
        *(a2 + 8) = *(*a1 + *a2) & 0xF0;
        v6 = _NSXPCSerializationDebugSizeForObject(a1);
        v12[3] = v6;
      }

      break;
    default:
      if (_getLastByteOfValueIncludingMarker(a1, v2, v14))
      {
        v12[3] = v12[3] - v2 + 1;
      }

      break;
  }

  v7 = v12[3];
  _Block_object_dispose(&v11, 8);
  return v7;
}

NSString *_NSXPCSerializationDebugInfoForObject(uint64_t *a1, char **a2, uint64_t a3, uint64_t a4, double a5)
{
  v26[1] = *MEMORY[0x1E69E9840];
  v5 = *a2;
  if (*a2 >= a1[1])
  {
    return &stru_1EEEFDF90;
  }

  HIDWORD(v9) = *(a2 + 2) - 16;
  LODWORD(v9) = HIDWORD(v9);
  v8 = v9 >> 4;
  if (v8 <= 8)
  {
    if (v8 <= 4)
    {
      if (v8 >= 2)
      {
        if (v8 == 3)
        {
          v10 = _NSXPCSerializationDataForObject(a1, a2);
          v11 = *a2;
          if (!v10)
          {
            v20 = v11;
            v12 = @"<bad data @%lld>";
            return [NSString stringWithFormat:v12, v20, v21];
          }

LABEL_24:
          v20 = v11;
          v21 = [v10 debugDescription];
          v12 = @"(@%lld) %@";
          return [NSString stringWithFormat:v12, v20, v21];
        }

        return [NSString stringWithFormat:@"<invalid object @%lld>", *a2, v21];
      }

LABEL_23:
      v10 = _NSXPCSerializationNumberForObject(a1, a2, a5);
      v11 = *a2;
      if (!v10)
      {
        v20 = v11;
        v12 = @"<bad number @%lld>";
        return [NSString stringWithFormat:v12, v20, v21];
      }

      goto LABEL_24;
    }

    switch(v8)
    {
      case 5:
        v24[0] = 0;
        if (_getStringAtMarker(a1, v24, v5, v26) && v24[0])
        {
          return [NSString stringWithFormat:@"(@%lld) %@", *a2, v24[0]];
        }

        else
        {
          return [NSString stringWithFormat:@"<bad string @%lld>", *a2];
        }

      case 6:
        v24[0] = 0;
        if (_getASCIIStringAtMarker(a1, v24, v5, &v25, v26))
        {
          return [NSString stringWithFormat:@"(@%lld) %s", v5, v24[0]];
        }

        else
        {
          return [NSString stringWithFormat:@"<bad ASCII string @%lld>", v5, v21];
        }

      case 7:
        v24[0] = 0;
        if (_getReferenceAtMarker(a1, v24, v5, v26) && v24[0])
        {
          return [NSString stringWithFormat:@"(@%lld) ref #%lld", v5, v24[0]];
        }

        else
        {
          return [NSString stringWithFormat:@"<bad reference @%lld>", v5, v21];
        }

      default:
        return [NSString stringWithFormat:@"<invalid object @%lld>", *a2, v21];
    }
  }

  if (v8 > 11)
  {
    if (v8 != 12)
    {
      if (v8 == 13)
      {
        return [NSString stringWithFormat:@"(@%lld) <null>", *a2, v21];
      }

      if (v8 != 14)
      {
        return [NSString stringWithFormat:@"<invalid object @%lld>", *a2, v21];
      }

      goto LABEL_23;
    }

    v13 = +[(NSString *)NSMutableString];
    [(NSString *)v13 appendFormat:@"(@%lld) {\n", *a2];
    v22[0] = MEMORY[0x1E69E9820];
    v22[1] = 3221225472;
    v22[2] = ___NSXPCSerializationDebugInfoForObject_block_invoke_2;
    v22[3] = &unk_1E69FAAF8;
    v22[4] = v13;
    v22[5] = a3;
    v22[6] = a1;
    v22[7] = a4;
    _iterateDictionaryKeysAndValues(a1, a2, v22);
    v19 = a3 - a4;
    if (a3 != a4)
    {
      do
      {
        [(NSString *)v13 appendString:@" "];
        --v19;
      }

      while (v19);
    }

    [(NSString *)v13 appendString:@"}"];
    return v13;
  }

  if (v8 == 9)
  {
    v13 = +[(NSString *)NSMutableString];
    [(NSString *)v13 appendFormat:@"(@%lld) [\n", *a2];
    v24[0] = 0;
    v24[1] = v24;
    v24[2] = 0x2020000000;
    v24[3] = 0;
    v23[0] = MEMORY[0x1E69E9820];
    v23[1] = 3221225472;
    v23[2] = ___NSXPCSerializationDebugInfoForObject_block_invoke;
    v23[3] = &unk_1E69FAAD0;
    v23[4] = v13;
    v23[5] = v24;
    v23[6] = a3;
    v23[7] = a1;
    v23[8] = a4;
    _NSXPCSerializationIterateArrayObject(a1, a2, v23);
    v18 = a3 - a4;
    if (a3 != a4)
    {
      do
      {
        [(NSString *)v13 appendString:@" "];
        --v18;
      }

      while (v18);
    }

    [(NSString *)v13 appendString:@"]"];
    _Block_object_dispose(v24, 8);
    return v13;
  }

  if (v8 == 10)
  {
    return [NSString stringWithFormat:@"(@%lld) YES", *a2, v21];
  }

  else
  {
    return [NSString stringWithFormat:@"(@%lld) NO", *a2, v21];
  }
}

void NSRequestConcreteImplementation(uint64_t a1, const char *a2, objc_class *a3)
{
  v5 = objc_opt_class();
  Name = sel_getName(a2);
  if (v5 == a3)
  {
    v7 = [NSString stringWithFormat:@"*** -%s cannot be sent to an abstract object of class %s: Create a concrete instance!", Name, class_getName(a3), v10];
  }

  else
  {
    v8 = objc_opt_class();
    v9 = _NSNameOfClass(v8);
    v7 = [NSString stringWithFormat:@"*** -%s only defined for abstract class.  Define [%s %s]!", Name, v9, sel_getName(a2)];
  }

  objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:v7 userInfo:0]);
}

void _NSRequestConcreteObject(int a1, SEL sel)
{
  Name = sel_getName(sel);
  v3 = objc_opt_class();
  v4 = [MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:+[NSString stringWithFormat:](NSString userInfo:{"stringWithFormat:", @"*** initialization method -%s cannot be sent to an abstract object of class %s: Create a concrete instance!", Name, _NSNameOfClass(v3)), 0}];
  objc_exception_throw(v4);
}

uint64_t BigString.UnicodeScalarView.subscript.getter()
{
  return MEMORY[0x1EEDF5AA8]();
}

{
  return MEMORY[0x1EEDF5AB0]();
}

uint64_t BigString.UTF8View.subscript.getter()
{
  return MEMORY[0x1EEDF5B48]();
}

{
  return MEMORY[0x1EEDF5B50]();
}

uint64_t BigString.subscript.getter()
{
  return MEMORY[0x1EEDF5BB0]();
}

{
  return MEMORY[0x1EEDF5BE0]();
}

uint64_t BigString.init(_:)()
{
  return MEMORY[0x1EEDF5BB8]();
}

{
  return MEMORY[0x1EEDF5BC0]();
}

{
  return MEMORY[0x1EEDF5BD0]();
}

{
  return MEMORY[0x1EEDF5BD8]();
}

uint64_t dispatch thunk of BinaryFloatingPoint.init(_:)()
{
  return MEMORY[0x1EEE68720]();
}

{
  return MEMORY[0x1EEE68728]();
}

Swift::String __swiftcall Character.lowercased()()
{
  v0 = MEMORY[0x1EEE68AC0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x1EEE68DA0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = MEMORY[0x1EEE68DB0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t String.init(_:)()
{
  return MEMORY[0x1EEDF5BE8]();
}

{
  return MEMORY[0x1EEDF5BF0]();
}

{
  return MEMORY[0x1EEDF5BF8]();
}

{
  return MEMORY[0x1EEE690C8]();
}

{
  return MEMORY[0x1EEE690D0]();
}

{
  return MEMORY[0x1EEE690D8]();
}

Swift::String __swiftcall String.init(_builtinStringLiteral:utf8CodeUnitCount:isASCII:)(Builtin::RawPointer _builtinStringLiteral, Builtin::Word utf8CodeUnitCount, Builtin::Int1 isASCII)
{
  v3 = MEMORY[0x1EEE68EB8](_builtinStringLiteral, utf8CodeUnitCount, isASCII);
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

Swift::Void __swiftcall String.append(_:)(Swift::String a1)
{
  MEMORY[0x1EEE68F80](a1._countAndFlagsBits, a1._object);
}

{
  MEMORY[0x1EEE68F88](a1._countAndFlagsBits, a1._object);
}

uint64_t String.init(cString:)()
{
  return MEMORY[0x1EEE68FB0]();
}

{
  return MEMORY[0x1EEE68FB8]();
}

Swift::String_optional __swiftcall String.Iterator.next()()
{
  v0 = MEMORY[0x1EEE68FC8]();
  result.value._object = v1;
  result.value._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall String.init(repeating:count:)(Swift::String repeating, Swift::Int count)
{
  v2 = MEMORY[0x1EEE690A0](repeating._countAndFlagsBits, repeating._object, count);
  result._object = v3;
  result._countAndFlagsBits = v2;
  return result;
}

uint64_t String.subscript.getter()
{
  return MEMORY[0x1EEE690B8]();
}

{
  return MEMORY[0x1EEE69100]();
}

uint64_t String.init<A>(_:)()
{
  return MEMORY[0x1EEE690E8]();
}

{
  return MEMORY[0x1EEE690F0]();
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return MEMORY[0x1EEE692E0]();
}

{
  return MEMORY[0x1EEE692F8]();
}

{
  return MEMORY[0x1EEE69300]();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return MEMORY[0x1EEE69360]();
}

{
  return MEMORY[0x1EEE69378]();
}

{
  return MEMORY[0x1EEE69380]();
}

Swift::String __swiftcall Substring.lowercased()()
{
  v0 = MEMORY[0x1EEE69C98]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

Swift::String __swiftcall Substring.uppercased()()
{
  v0 = MEMORY[0x1EEE69CA8]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t Substring.init(_:)()
{
  return MEMORY[0x1EEE69D80]();
}

{
  return MEMORY[0x1EEE69D90]();
}

uint64_t Substring.subscript.getter()
{
  return MEMORY[0x1EEE69D88]();
}

{
  return MEMORY[0x1EEE69D98]();
}

uint64_t static DecodingError.dataCorruptedError(in:debugDescription:)()
{
  return MEMORY[0x1EEE6A440]();
}

{
  return MEMORY[0x1EEE6A448]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6AC50]();
}

{
  return MEMORY[0x1EEE6AC58]();
}

{
  return MEMORY[0x1EEE6AC60]();
}

{
  return MEMORY[0x1EEE6AC70]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACD0]();
}

{
  return MEMORY[0x1EEE6ACD8]();
}

{
  return MEMORY[0x1EEE6ACE0]();
}

{
  return MEMORY[0x1EEE6ACE8]();
}

{
  return MEMORY[0x1EEE6ACF0]();
}

{
  return MEMORY[0x1EEE6AD10]();
}

{
  return MEMORY[0x1EEE6AD18]();
}

{
  return MEMORY[0x1EEE6AD30]();
}

{
  return MEMORY[0x1EEE6AD38]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6AD90]();
}

{
  return MEMORY[0x1EEE6AD98]();
}

{
  return MEMORY[0x1EEE6ADA0]();
}

{
  return MEMORY[0x1EEE6ADB0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE08]();
}

{
  return MEMORY[0x1EEE6AE10]();
}

{
  return MEMORY[0x1EEE6AE18]();
}

{
  return MEMORY[0x1EEE6AE20]();
}

{
  return MEMORY[0x1EEE6AE28]();
}

{
  return MEMORY[0x1EEE6AE48]();
}

{
  return MEMORY[0x1EEE6AE50]();
}

{
  return MEMORY[0x1EEE6AE68]();
}

{
  return MEMORY[0x1EEE6AE70]();
}

uint64_t dispatch thunk of UnkeyedDecodingContainer.decode(_:)()
{
  return MEMORY[0x1EEE6AF40]();
}

{
  return MEMORY[0x1EEE6AF60]();
}

{
  return MEMORY[0x1EEE6AF80]();
}

{
  return MEMORY[0x1EEE6AF88]();
}

uint64_t UnkeyedDecodingContainer.decodeIfPresent(_:)()
{
  return MEMORY[0x1EEE6AFB0]();
}

{
  return MEMORY[0x1EEE6AFB8]();
}

{
  return MEMORY[0x1EEE6AFC0]();
}

{
  return MEMORY[0x1EEE6AFC8]();
}

{
  return MEMORY[0x1EEE6AFD0]();
}

{
  return MEMORY[0x1EEE6AFE0]();
}

{
  return MEMORY[0x1EEE6AFE8]();
}

uint64_t UnkeyedDecodingContainer.decode(_:)()
{
  return MEMORY[0x1EEE6AFF0]();
}

{
  return MEMORY[0x1EEE6AFF8]();
}

uint64_t dispatch thunk of UnkeyedEncodingContainer.encode<A>(contentsOf:)()
{
  return MEMORY[0x1EEE6B020]();
}

{
  return MEMORY[0x1EEE6B028]();
}

uint64_t dispatch thunk of UnkeyedEncodingContainer.encode(_:)()
{
  return MEMORY[0x1EEE6B030]();
}

{
  return MEMORY[0x1EEE6B050]();
}

{
  return MEMORY[0x1EEE6B070]();
}

uint64_t UnkeyedEncodingContainer.encode<A>(contentsOf:)()
{
  return MEMORY[0x1EEE6B098]();
}

{
  return MEMORY[0x1EEE6B0A0]();
}

{
  return MEMORY[0x1EEE6B0A8]();
}

{
  return MEMORY[0x1EEE6B0B0]();
}

{
  return MEMORY[0x1EEE6B0B8]();
}

{
  return MEMORY[0x1EEE6B0C0]();
}

{
  return MEMORY[0x1EEE6B0C8]();
}

{
  return MEMORY[0x1EEE6B0D0]();
}

{
  return MEMORY[0x1EEE6B0D8]();
}

{
  return MEMORY[0x1EEE6B0E0]();
}

{
  return MEMORY[0x1EEE6B0E8]();
}

{
  return MEMORY[0x1EEE6B0F0]();
}

{
  return MEMORY[0x1EEE6B0F8]();
}

{
  return MEMORY[0x1EEE6B100]();
}

{
  return MEMORY[0x1EEE6B108]();
}

{
  return MEMORY[0x1EEE6B110]();
}

{
  return MEMORY[0x1EEE6B118]();
}

uint64_t UnkeyedEncodingContainer.encode(_:)()
{
  return MEMORY[0x1EEE6B120]();
}

{
  return MEMORY[0x1EEE6B128]();
}

uint64_t dispatch thunk of SingleValueDecodingContainer.decode(_:)()
{
  return MEMORY[0x1EEE6B1F8]();
}

{
  return MEMORY[0x1EEE6B200]();
}

{
  return MEMORY[0x1EEE6B208]();
}

{
  return MEMORY[0x1EEE6B218]();
}

{
  return MEMORY[0x1EEE6B220]();
}

uint64_t SingleValueDecodingContainer.decode(_:)()
{
  return MEMORY[0x1EEE6B270]();
}

{
  return MEMORY[0x1EEE6B278]();
}

uint64_t dispatch thunk of SingleValueEncodingContainer.encode(_:)()
{
  return MEMORY[0x1EEE6B288]();
}

{
  return MEMORY[0x1EEE6B290]();
}

{
  return MEMORY[0x1EEE6B298]();
}

{
  return MEMORY[0x1EEE6B2A8]();
}

{
  return MEMORY[0x1EEE6B2B0]();
}

uint64_t SingleValueEncodingContainer.encode(_:)()
{
  return MEMORY[0x1EEE6B308]();
}

{
  return MEMORY[0x1EEE6B310]();
}

uint64_t KeyedDecodingContainerProtocol.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6B378]();
}

{
  return MEMORY[0x1EEE6B380]();
}

{
  return MEMORY[0x1EEE6B388]();
}

{
  return MEMORY[0x1EEE6B390]();
}

{
  return MEMORY[0x1EEE6B398]();
}

{
  return MEMORY[0x1EEE6B3A8]();
}

{
  return MEMORY[0x1EEE6B3B0]();
}

uint64_t KeyedDecodingContainerProtocol.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6B3B8]();
}

{
  return MEMORY[0x1EEE6B3C0]();
}

uint64_t KeyedEncodingContainerProtocol.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x1EEE6B3E0]();
}

{
  return MEMORY[0x1EEE6B3E8]();
}

{
  return MEMORY[0x1EEE6B3F0]();
}

{
  return MEMORY[0x1EEE6B3F8]();
}

{
  return MEMORY[0x1EEE6B400]();
}

{
  return MEMORY[0x1EEE6B410]();
}

{
  return MEMORY[0x1EEE6B418]();
}

{
  return MEMORY[0x1EEE6B420]();
}

{
  return MEMORY[0x1EEE6B428]();
}

uint64_t KeyedEncodingContainerProtocol.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6B438]();
}

{
  return MEMORY[0x1EEE6B440]();
}

CFGregorianDate CFAbsoluteTimeGetGregorianDate(CFAbsoluteTime at, CFTimeZoneRef tz)
{
  v2 = MEMORY[0x1EEDB65A8](tz, at);
  result.second = v3;
  result.year = v2;
  result.month = BYTE4(v2);
  result.day = BYTE5(v2);
  result.hour = BYTE6(v2);
  result.minute = HIBYTE(v2);
  return result;
}

CFStreamError CFReadStreamGetError(CFReadStreamRef stream)
{
  v1 = MEMORY[0x1EEDB7470](stream);
  result.error = v2;
  result.domain = v1;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

CFRange CFStringTokenizerGetCurrentTokenRange(CFStringTokenizerRef tokenizer)
{
  v1 = MEMORY[0x1EEDB7B38](tokenizer);
  result.length = v2;
  result.location = v1;
  return result;
}

CFRange CFURLGetByteRangeForComponent(CFURLRef url, CFURLComponentType component, CFRange *rangeIncludingSeparators)
{
  v3 = MEMORY[0x1EEDB7D88](url, component, rangeIncludingSeparators);
  result.length = v4;
  result.location = v3;
  return result;
}

CFStreamError CFWriteStreamGetError(CFWriteStreamRef stream)
{
  v1 = MEMORY[0x1EEDB7F38](stream);
  result.error = v2;
  result.domain = v1;
  return result;
}

__double2 __sincos_stret(double a1)
{
  MEMORY[0x1EEE73570](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}

objc_method_description protocol_getMethodDescription(Protocol *p, SEL aSel, BOOL isRequiredMethod, BOOL isInstanceMethod)
{
  v4 = MEMORY[0x1EEE66EC8](p, aSel, isRequiredMethod, isInstanceMethod);
  result.types = v5;
  result.name = v4;
  return result;
}

uint64_t cmark_find_syntax_extension_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE646F8]();
}

uint64_t cmark_gfm_core_extensions_ensure_registered_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64700]();
}

uint64_t cmark_gfm_extensions_get_table_alignments_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64708]();
}

uint64_t cmark_gfm_extensions_get_table_columns_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64710]();
}

uint64_t cmark_gfm_extensions_get_table_row_is_header_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64718]();
}

uint64_t cmark_iter_free_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64720]();
}

uint64_t cmark_iter_get_node_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64728]();
}

uint64_t cmark_iter_new_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64730]();
}

uint64_t cmark_iter_next_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64738]();
}

uint64_t cmark_node_free_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64740]();
}

uint64_t cmark_node_get_attributes_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64748]();
}

uint64_t cmark_node_get_end_column_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64750]();
}

uint64_t cmark_node_get_end_line_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64758]();
}

uint64_t cmark_node_get_fence_info_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64760]();
}

uint64_t cmark_node_get_heading_level_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64768]();
}

uint64_t cmark_node_get_list_delim_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64770]();
}

uint64_t cmark_node_get_list_marker_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64778]();
}

uint64_t cmark_node_get_list_start_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64780]();
}

uint64_t cmark_node_get_list_type_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64788]();
}

uint64_t cmark_node_get_literal_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64790]();
}

uint64_t cmark_node_get_start_column_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE64798]();
}

uint64_t cmark_node_get_start_line_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE647A0]();
}

uint64_t cmark_node_get_title_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE647A8]();
}

uint64_t cmark_node_get_type_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE647B0]();
}

uint64_t cmark_node_get_url_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE647B8]();
}

uint64_t cmark_node_get_user_data_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE647C0]();
}

uint64_t cmark_node_set_user_data_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE647C8]();
}

uint64_t cmark_parser_attach_syntax_extension_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE647D0]();
}

uint64_t cmark_parser_feed_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE647D8]();
}

uint64_t cmark_parser_finish_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE647E0]();
}

uint64_t cmark_parser_free_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE647E8]();
}

uint64_t cmark_parser_new_delayInitStub(double a1)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    dlopenHelper_libcmark_gfm_dylib(a1);
  }

  return MEMORY[0x1EEE647F0]();
}

double gotLoadHelper_x8__CMARK_NODE_STRIKETHROUGH(double result)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    return dlopenHelper_libcmark_gfm_dylib(result);
  }

  return result;
}

double gotLoadHelper_x8__CMARK_NODE_TABLE(double result)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    return dlopenHelper_libcmark_gfm_dylib(result);
  }

  return result;
}

double gotLoadHelper_x8__CMARK_NODE_TABLE_CELL(double result)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    return dlopenHelper_libcmark_gfm_dylib(result);
  }

  return result;
}

double gotLoadHelper_x8__CMARK_NODE_TABLE_ROW(double result)
{
  if (!atomic_load(&dlopenHelperFlag_libcmark_gfm_dylib))
  {
    return dlopenHelper_libcmark_gfm_dylib(result);
  }

  return result;
}

double __spoils<X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> dlopenHelper_libcmark_gfm_dylib(double a1)
{
  dlopen("/usr/lib/libcmark-gfm.dylib", 0);
  atomic_store(1u, &dlopenHelperFlag_libcmark_gfm_dylib);
  return a1;
}