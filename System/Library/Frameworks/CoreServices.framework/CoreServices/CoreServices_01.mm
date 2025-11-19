id _LSMakeNSErrorImpl(void *a1, uint64_t a2, void *a3, const char *a4, char *a5, uint64_t a6)
{
  v11 = a1;
  v12 = a3;
  v13 = _LSMakeNSErrorDomainUserInfoWithExtras(a4, a5, a6);
  v14 = v13;
  if (v12)
  {
    [v13 addEntriesFromDictionary:v12];
  }

  if ([v11 isEqual:*MEMORY[0x1E696A5A0]])
  {
    v15 = mach_error_string(a2);
    if (v15)
    {
      v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v15];
      [v14 setObject:v16 forKeyedSubscript:@"_LSErrorMessage"];
    }
  }

  v17 = [objc_alloc(MEMORY[0x1E696ABC0]) initWithDomain:v11 code:a2 userInfo:v14];

  return v17;
}

id _LSErrorLog(void)
{
  if (_LSErrorLog(void)::once != -1)
  {
    _LSErrorLog();
  }

  v1 = _LSErrorLog(void)::result;

  return v1;
}

void ___ZL23findPluginDataInContextP9LSContextP6NSUUIDP6FSNodeP8NSStringbjPjPU15__autoreleasingP7NSError_block_invoke(uint64_t a1)
{
  v2 = **(a1 + 72);
  v3 = [*(a1 + 32) UUIDString];
  v4 = *(a1 + 92);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = *(a1 + 88);
  v8 = *(a1 + 80);
  v9 = *(*(a1 + 64) + 8);
  obj = *(v9 + 40);
  v10 = _LSPluginFindWithPlatformInfo(v2, v3, v5, v4 | 3u, v6, v7, v8, &obj);
  objc_storeStrong((v9 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v10;
}

uint64_t findPluginDataInContext(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5, int a6, uint64_t a7, void *a8)
{
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__0;
  v23 = __Block_byref_object_dispose__0;
  v24 = 0;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 0;
  if (a5)
  {
    v9 = 4;
  }

  else
  {
    v9 = 0;
  }

  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___ZL23findPluginDataInContextP9LSContextP6NSUUIDP6FSNodeP8NSStringbjPjPU15__autoreleasingP7NSError_block_invoke;
  v12[3] = &unk_1E6A18E40;
  v12[4] = a2;
  v12[5] = a4;
  v14 = v9;
  v12[6] = a3;
  v12[7] = &v15;
  v13 = a6;
  v12[9] = a1;
  v12[10] = a7;
  v12[8] = &v19;
  __LSRECORD_IS_PERFORMING_IO_FOR_A_CALLER__(v12);
  if (a8)
  {
    *a8 = v20[5];
  }

  v10 = v16[3];
  _Block_object_dispose(&v15, 8);
  _Block_object_dispose(&v19, 8);

  return v10;
}

void sub_18164165C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 64), 8);

  _Unwind_Resume(a1);
}

uint64_t XCFBufInit(uint64_t result)
{
  *(result + 28) = 0;
  *result = result + 28;
  *(result + 8) = 0;
  *(result + 24) = 127;
  *(result + 16) = 0;
  return result;
}

id _LSLazyLoadObjectWithLock(id *a1, os_unfair_lock_s *a2, void *a3)
{
  v5 = a3;
  os_unfair_lock_lock(a2);
  v6 = *a1;
  if (!v6)
  {
    v6 = v5[2](v5);
    v7 = *a1;
    *a1 = v6;
  }

  os_unfair_lock_unlock(a2);

  return v6;
}

void sub_181641750(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v2);

  _Unwind_Resume(a1);
}

uint64_t _LSCopyRationalizedGroupContainerURLDict(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    goto LABEL_3;
  }

  v3 = [MEMORY[0x1E695DF90] dictionaryWithCapacity:{objc_msgSend(v1, "count")}];
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = ___LSCopyRationalizedGroupContainerURLDict_block_invoke;
  v7[3] = &unk_1E6A1B468;
  v8 = v3;
  v4 = v3;
  [v2 enumerateKeysAndObjectsUsingBlock:v7];
  v5 = [v4 copy];

  if (!v5)
  {
LABEL_3:
    v5 = MEMORY[0x1E695E0F8];
  }

  return v5;
}

BOOL _LSIsNewsBundleIdentifier(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v3 = [v1 caseInsensitiveCompare:@"com.apple.news"] == 0;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t _LSPluginFindWithPlatformInfo(void *a1, const __CFString *a2, const __CFString *a3, char a4, void *a5, int a6, _DWORD *a7, void *a8)
{
  v103 = *MEMORY[0x1E69E9840];
  v13 = a1;
  v14 = a5;
  v68 = 0;
  v69 = &v68;
  v70 = 0x2020000000;
  v71 = 0;
  v64 = 0;
  v65 = &v64;
  v66 = 0x2020000000;
  v67 = 0;
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 0;
  v56 = 0;
  v57 = &v56;
  v58 = 0x2020000000;
  v59 = 0;
  v54[0] = 0;
  v54[1] = v54;
  v54[2] = 0x3032000000;
  v54[3] = __Block_byref_object_copy__37;
  v54[4] = __Block_byref_object_dispose__37;
  v55 = 0;
  if (!v13)
  {
    v42 = [MEMORY[0x1E696AAA8] currentHandler];
    v43 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"const LSPluginData *_LSPluginFindWithPlatformInfo(__strong LSDatabaseRef, CFStringRef, CFStringRef, LSPluginFindOptions, FSNode *__strong, dyld_platform_t, LSPluginID *, NSError *__autoreleasing *)"}];
    [v42 handleFailureInFunction:v43 file:@"LSPluginBundle.mm" lineNumber:556 description:{@"Invalid parameter not satisfying: %@", @"inDB != NULL"}];
  }

  if (a2 && (v15 = CFGetTypeID(a2), v15 == CFStringGetTypeID()))
  {
    Length = CFStringGetLength(a2);
    XCFBufInitWithCFStringRange(v102, a2, 0, Length, 0);
  }

  else
  {
    XCFBufInit(v102);
  }

  if (a3 && (v17 = CFGetTypeID(a3), v17 == CFStringGetTypeID()))
  {
    v18 = CFStringGetLength(a3);
    XCFBufInitWithCFStringRange(v101, a3, 0, v18, 0);
  }

  else
  {
    XCFBufInit(v101);
  }

  if (v14)
  {
    v19 = [v14 pathWithError:0];
  }

  else
  {
    v19 = 0;
  }

  v53 = 0;
  v52 = 0;
  if (DWORD2(v101[0]))
  {
    v20 = v13;
    [(_LSDatabase *)v13 store];
    v21 = v13;
    [(_LSDatabase *)v13 schema];
    CSStringBindingFindStringAndBindings();
  }

  if (DWORD2(v102[0]))
  {
    v22 = v13;
    [(_LSDatabase *)v13 store];
    v23 = v13;
    [(_LSDatabase *)v13 schema];
    CSStringBindingFindStringAndBindings();
  }

  if (v19)
  {
    v24 = HIDWORD(v53) == 0;
  }

  else
  {
    v24 = 0;
  }

  v25 = v24;
  v26 = v13;
  if (v25)
  {
    [(_LSDatabase *)v13 store];
    v27 = v13;
    v28 = *([(_LSDatabase *)v13 schema]+ 1588);
    v50 = a6;
    v46 = v13;
    v51 = (a4 & 4) != 0;
    v47 = v19;
    v48 = &v60;
    v49 = &v56;
    _CSStoreEnumerateUnits();

    v29 = &v46;
  }

  else
  {
    [(_LSDatabase *)v13 store];
    v73[3] = MEMORY[0x1E69E9820];
    v73[4] = 3221225472;
    v73[5] = ___LSPluginFindWithPlatformInfo_block_invoke_2;
    v73[6] = &unk_1E6A1D650;
    v30 = v13;
    v95 = a6;
    v81 = v101[6];
    v82 = v101[7];
    v83 = v101[8];
    v84 = v101[9];
    v77 = v101[2];
    v78 = v101[3];
    v79 = v101[4];
    v80 = v101[5];
    v75 = v101[0];
    v76 = v101[1];
    v91 = v102[6];
    v92 = v102[7];
    v93 = v102[8];
    v94 = v102[9];
    v87 = v102[2];
    v88 = v102[3];
    v89 = v102[4];
    v90 = v102[5];
    v85 = v102[0];
    v86 = v102[1];
    v96 = v52;
    v97 = v53;
    v98 = (a4 & 2) != 0;
    v74[0] = v30;
    v74[1] = v54;
    v99 = (a4 & 4) != 0;
    v100 = a4 & 1;
    v74[2] = &v68;
    v74[3] = &v64;
    v74[4] = &v60;
    v74[5] = &v56;
    _CSArrayEnumerateAllValues();
    v29 = v74;
    if (a4)
    {
      v31 = *(v69 + 6);
      if (v31)
      {
        v32 = v65[3];
        if (v32)
        {
          *(v61 + 6) = v31;
          v57[3] = v32;
        }
      }
    }
  }

  v33 = *(v61 + 6);
  if (v33)
  {
    if (a7)
    {
      *a7 = v33;
    }
  }

  else
  {
    v34 = @"UNKNOWN";
    if (v19)
    {
      v34 = v19;
    }

    if (a2)
    {
      v34 = a2;
    }

    if (a3)
    {
      v34 = a3;
    }

    v35 = v34;
    v36 = v35;
    if (a8)
    {
      v72[0] = *MEMORY[0x1E696A278];
      v72[1] = @"SK";
      v73[0] = @"Unable to find this application extension record in the Launch Services database.";
      v73[1] = v35;
      v72[2] = @"IS";
      v37 = [MEMORY[0x1E696AD98] numberWithBool:{objc_msgSend(__LSDefaultsGetSharedInstance(), "isServer")}];
      v73[2] = v37;
      v38 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v73 forKeys:v72 count:3];
      *a8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10814, v38, "_LSPluginFindWithPlatformInfo", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSPluginBundle.mm", 692);
    }
  }

  XCFBufDestroy(v102);
  XCFBufDestroy(v101);
  v39 = v57[3];

  _Block_object_dispose(v54, 8);
  _Block_object_dispose(&v56, 8);
  _Block_object_dispose(&v60, 8);
  _Block_object_dispose(&v64, 8);
  _Block_object_dispose(&v68, 8);

  v40 = *MEMORY[0x1E69E9840];
  return v39;
}

void sub_1816426C0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, id a32, char a33, uint64_t a34, uint64_t a35, uint64_t a36, char a37, uint64_t a38, uint64_t a39, uint64_t a40, char a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45)
{
  _Block_object_dispose(&a27, 8);

  _Block_object_dispose(&a33, 8);
  _Block_object_dispose(&a37, 8);
  _Block_object_dispose(&a41, 8);
  _Block_object_dispose(&a45, 8);

  _Unwind_Resume(a1);
}

uint64_t _LSExtensionPointFindWithStringID(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _DWORD *a5, void *a6)
{
  v30 = *MEMORY[0x1E69E9840];
  v24 = 0;
  v25 = &v24;
  v26 = 0x2020000000;
  v27 = 0;
  v20 = 0;
  v21 = &v20;
  v22 = 0x2020000000;
  v23 = 0;
  v8 = a1;
  _LSDatabaseEnumeratingBindingMap(v8);
  v9 = *(v25 + 6);
  if (!v9)
  {
    v10 = v8;
    [(_LSDatabase *)v8 store];
    v11 = _CSStringCopyCFString();
    v12 = _LSDefaultLog();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v29 = v11;
      _os_log_impl(&dword_18162D000, v12, OS_LOG_TYPE_DEFAULT, "Extension point %@ not in the binding map, scanning all extension points", buf, 0xCu);
    }

    v13 = v8;
    [(_LSDatabase *)v8 store];
    v14 = v8;
    v15 = *([(_LSDatabase *)v8 schema]+ 1592);
    _CSStoreEnumerateUnits();

    v9 = *(v25 + 6);
    if (!v9)
    {
      goto LABEL_10;
    }
  }

  v16 = v21[3];
  if (v16)
  {
    if (a5)
    {
      *a5 = v9;
    }

    v17 = 0;
    if (a6)
    {
      *a6 = v16;
    }
  }

  else
  {
LABEL_10:
    v17 = 4294956482;
  }

  _Block_object_dispose(&v20, 8);
  _Block_object_dispose(&v24, 8);

  v18 = *MEMORY[0x1E69E9840];
  return v17;
}

void sub_181642A28(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, void *a21, uint64_t a22, uint64_t a23, uint64_t a24, char a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a25, 8);
  _Block_object_dispose(&a29, 8);

  _Unwind_Resume(a1);
}

uint64_t _LSContextInitReturningError(id *a1, void *a2)
{
  v4 = +[_LSDServiceDomain defaultServiceDomain];
  inited = _LSContextInitCommon(a1, v4, 0, a2);

  return inited;
}

id _LSDNCBalanceBiDiControlCharacters(NSString *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1)
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v7 = 0;
    v8 = &v7;
    v9 = 0x2020000000;
    v10 = 0;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___ZL34_LSDNCBalanceBiDiControlCharactersP8NSString_block_invoke;
    v6[3] = &unk_1E6A1C010;
    v6[4] = &v11;
    v6[5] = &v7;
    _LSDNCWithInlineBuffer(v1, v6);
    v3 = _LSDNCBalanceBiDiControlCharacterInString(8236, v2, v12[3]);

    v4 = _LSDNCBalanceBiDiControlCharacterInString(8297, v3, v8[3]);

    _Block_object_dispose(&v7, 8);
    _Block_object_dispose(&v11, 8);
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

void sub_181642ED4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 64), 8);

  _Unwind_Resume(a1);
}

void _LSDNCWithInlineBuffer(void *a1, void *a2)
{
  v3 = a1;
  v4 = a2;
  v5 = [(__CFString *)v3 length];
  v8 = v3;
  v11 = 0;
  v12 = v5;
  if (CFStringGetCharactersPtr(v3))
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(v3, 0x600u);
  }

  v13 = 0;
  v14 = 0;
  v10 = CStringPtr;
  v4[2](v4, v7, v5);
}

void ___ZL34_LSDNCBalanceBiDiControlCharactersP8NSString_block_invoke(uint64_t a1, UniChar *buffer, uint64_t a3)
{
  if (a3)
  {
    v5 = 0;
    v6 = 0;
    v7 = a1 + 40;
    v8 = a1 + 32;
    for (i = 64; ; ++i)
    {
      if (v6 >= 4)
      {
        v10 = 4;
      }

      else
      {
        v10 = v6;
      }

      if (v6 < 0)
      {
        goto LABEL_27;
      }

      v11 = *(buffer + 20);
      if (v11 <= v6)
      {
        goto LABEL_27;
      }

      v12 = *(buffer + 17);
      if (v12)
      {
        break;
      }

      v15 = *(buffer + 18);
      if (!v15)
      {
        if (*(buffer + 22) <= v6 || (v19 = *(buffer + 21), v19 > v6))
        {
          v20 = -v10;
          v21 = v10 + v5;
          v22 = i - v10;
          v23 = v6 + v20;
          v24 = v23 + 64;
          if (v23 + 64 >= v11)
          {
            v24 = *(buffer + 20);
          }

          *(buffer + 21) = v23;
          *(buffer + 22) = v24;
          if (v11 >= v22)
          {
            v11 = v22;
          }

          v25.location = v23 + *(buffer + 19);
          v25.length = v11 + v21;
          CFStringGetCharacters(*(buffer + 16), v25, buffer);
          v19 = *(buffer + 21);
        }

        v13 = &buffer[-v19];
        goto LABEL_10;
      }

      v14 = *(v15 + *(buffer + 19) + v6);
LABEL_13:
      if (v14 > 0x2065u)
      {
        if (v14 - 8294 < 3)
        {
          v17 = -1;
          v18 = v7;
          goto LABEL_26;
        }

        if (v14 == 8297)
        {
          v18 = v7;
LABEL_25:
          v17 = 1;
          goto LABEL_26;
        }
      }

      else
      {
        if (v14 - 8234 < 2 || v14 - 8237 < 2)
        {
          v17 = -1;
          v18 = v8;
LABEL_26:
          *(*(*v18 + 8) + 24) += v17;
          goto LABEL_27;
        }

        if (v14 == 8236)
        {
          v18 = v8;
          goto LABEL_25;
        }
      }

LABEL_27:
      ++v6;
      --v5;
      if (a3 == v6)
      {
        return;
      }
    }

    v13 = (v12 + 2 * *(buffer + 19));
LABEL_10:
    v14 = v13[v6];
    goto LABEL_13;
  }
}

NSString *_LSDNCBalanceBiDiControlCharacterInString(__int16 a1, NSString *a2, uint64_t a3)
{
  v14 = a1;
  v4 = a2;
  v5 = v4;
  v6 = v4;
  if (a3)
  {
    v7 = [(NSString *)v4 mutableCopy];
    v6 = v5;
    if (v7)
    {
      if (a3 <= 0)
      {
        do
        {
          [v7 appendCharacters:&v14 length:1];
        }

        while (!__CFADD__(a3++, 1));
      }

      else
      {
        v8 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithCharacters:&v14 length:1];
        v9 = a3 + 1;
        do
        {
          v11 = [v7 rangeOfString:v8 options:4];
          if (v11 != 0x7FFFFFFFFFFFFFFFLL)
          {
            [v7 deleteCharactersInRange:{v11, v10}];
          }

          --v9;
        }

        while (v9 > 1);
      }

      v6 = [v7 copy];
    }
  }

  return v6;
}

NSString *_LSDNCReplaceForbiddenCharacters(NSString *a1, char a2)
{
  v3 = a1;
  v4 = _LSDNCGetForbiddenCharacters(a2);
  v14 = 0;
  v15 = &v14;
  v16 = 0x3032000000;
  v17 = __Block_byref_object_copy__21;
  v18 = __Block_byref_object_dispose__21;
  v19 = 0;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZL32_LSDNCReplaceForbiddenCharactersP8NSStringj_block_invoke;
  v10[3] = &unk_1E6A1BFE8;
  v5 = v4;
  v11 = v5;
  v13 = &v14;
  v6 = v3;
  v12 = v6;
  _LSDNCWithInlineBuffer(v6, v10);
  v7 = v15[5];
  v8 = v6;
  if (v7)
  {
    v8 = v7;
  }

  _Block_object_dispose(&v14, 8);

  return v8;
}

void sub_18164340C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, id a22)
{
  _Block_object_dispose(&a17, 8);

  _Unwind_Resume(a1);
}

id _LSDNCGetForbiddenCharacters(char a1)
{
  if (_LSDNCGetForbiddenCharacters::once != -1)
  {
    _LSDNCGetForbiddenCharacters();
  }

  v2 = &_LSDNCGetForbiddenCharacters::forbiddenWithNewlines;
  if (a1)
  {
    v2 = &_LSDNCGetForbiddenCharacters::forbiddenWithoutNewlines;
  }

  v3 = *v2;

  return v3;
}

uint64_t _LSDNCCharacterSetContainsCharacterFromInlineBuffer(NSCharacterSet *a1, uint64_t a2, CFStringInlineBuffer *a3, uint64_t a4)
{
  v7 = a1;
  if (![(NSCharacterSet *)v7 characterIsMember:a2])
  {
    if ((a2 & 0xF800 | 0x400) != 0xDC00)
    {
      v8 = 0;
      goto LABEL_23;
    }

    if (a4 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v16 = [MEMORY[0x1E696AAA8] currentHandler];
      v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSDNCCharacterSetContainsCharacterFromInlineBuffer(NSCharacterSet *__strong, unichar, CFStringInlineBuffer *, CFIndex)"}];
      [v16 handleFailureInFunction:v17 file:@"LSDisplayNameConstructor.mm" lineNumber:1704 description:@"Insanely long string for display name"];
    }

    else if (a4 >= -1)
    {
      v9 = a4 + 1;
      length = a3->rangeToBuffer.length;
      if (length > a4 + 1)
      {
        directUniCharBuffer = a3->directUniCharBuffer;
        if (directUniCharBuffer)
        {
          v12 = directUniCharBuffer[a3->rangeToBuffer.location + v9];
        }

        else
        {
          directCStringBuffer = a3->directCStringBuffer;
          if (directCStringBuffer)
          {
            v12 = directCStringBuffer[a3->rangeToBuffer.location + v9];
          }

          else
          {
            if (a3->bufferedRangeEnd <= v9 || (bufferedRangeStart = a3->bufferedRangeStart, bufferedRangeStart > v9))
            {
              v15 = a4 - 3;
              if (v9 < 4)
              {
                v15 = 0;
              }

              if (v15 + 64 < length)
              {
                length = v15 + 64;
              }

              a3->bufferedRangeStart = v15;
              a3->bufferedRangeEnd = length;
              v19.length = length - v15;
              v19.location = a3->rangeToBuffer.location + v15;
              CFStringGetCharacters(a3->theString, v19, a3->buffer);
              bufferedRangeStart = a3->bufferedRangeStart;
            }

            v12 = a3->buffer[v9 - bufferedRangeStart];
          }
        }

        goto LABEL_22;
      }
    }

    v12 = 0;
LABEL_22:
    v8 = [(NSCharacterSet *)v7 longCharacterIsMember:(a2 << 10) + v12 - 56613888];
    goto LABEL_23;
  }

  v8 = 1;
LABEL_23:

  return v8;
}

uint64_t ___ZL32_LSDNCReplaceForbiddenCharactersP8NSStringj_block_invoke(uint64_t result, CFStringInlineBuffer *a2, uint64_t a3)
{
  if (a3)
  {
    v5 = result;
    v6 = 0;
    v7 = 0;
    v8 = 64;
    do
    {
      if (v7 >= 4)
      {
        v9 = 4;
      }

      else
      {
        v9 = v7;
      }

      if (v7 < 0 || (v10 = a2->rangeToBuffer.length, v10 <= v7))
      {
        v13 = 0;
      }

      else
      {
        directUniCharBuffer = a2->directUniCharBuffer;
        if (directUniCharBuffer)
        {
          v12 = &directUniCharBuffer[a2->rangeToBuffer.location];
        }

        else
        {
          directCStringBuffer = a2->directCStringBuffer;
          if (directCStringBuffer)
          {
            v13 = directCStringBuffer[a2->rangeToBuffer.location + v7];
            goto LABEL_12;
          }

          if (a2->bufferedRangeEnd <= v7 || (bufferedRangeStart = a2->bufferedRangeStart, bufferedRangeStart > v7))
          {
            v20 = -v9;
            v21 = v9 + v6;
            v22 = v8 - v9;
            v23 = v7 + v20;
            length = v23 + 64;
            if (v23 + 64 >= v10)
            {
              length = a2->rangeToBuffer.length;
            }

            a2->bufferedRangeStart = v23;
            a2->bufferedRangeEnd = length;
            if (v10 >= v22)
            {
              v10 = v22;
            }

            v25.location = v23 + a2->rangeToBuffer.location;
            v25.length = v10 + v21;
            CFStringGetCharacters(a2->theString, v25, a2->buffer);
            bufferedRangeStart = a2->bufferedRangeStart;
          }

          v12 = &a2->buffer[-bufferedRangeStart];
        }

        v13 = v12[v7];
      }

LABEL_12:
      result = _LSDNCCharacterSetContainsCharacterFromInlineBuffer(*(v5 + 32), v13, a2, v7);
      if (result)
      {
        v14 = *(*(*(v5 + 48) + 8) + 40);
        if (!v14)
        {
          v15 = [*(v5 + 40) mutableCopy];
          v16 = *(*(v5 + 48) + 8);
          v17 = *(v16 + 40);
          *(v16 + 40) = v15;

          v14 = *(*(*(v5 + 48) + 8) + 40);
        }

        result = [v14 replaceCharactersInRange:v7 withCharacters:1 length:{&_LSDisplayNameConstructorForbiddenCharacterSubstitute, 1}];
      }

      ++v7;
      --v6;
      ++v8;
    }

    while (a3 != v7);
  }

  return result;
}

id postprocessLocalizedNameishStringFromStringRecord(LSBundleRecord *a1, NSString *a2)
{
  v3 = a2;
  v4 = v3;
  if (!v3 || ![(NSString *)v3 length])
  {
    v5 = [(LSBundleRecord *)a1 _fallbackLocalizedName];

    v4 = v5;
  }

  return v4;
}

uint64_t _LSGetAuditTokenForSelf()
{
  if (_LSGetAuditTokenForSelf::once != -1)
  {
    _LSGetAuditTokenForSelf_cold_1();
  }

  return _LSGetAuditTokenForSelf::result;
}

id _LSGetMainBundleURL()
{
  if (_LSGetMainBundleURL::once != -1)
  {
    _LSGetMainBundleURL_cold_1();
  }

  v1 = _LSGetMainBundleURL::result;

  return v1;
}

uint64_t _LSCopyBundleURLForAuditToken(_OWORD *a1, int a2)
{
  if (!a1)
  {
    return 0;
  }

  if (a2 != 1)
  {
    goto LABEL_6;
  }

  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    goto LABEL_6;
  }

  v3 = getpid();
  pidp = 0;
  v4 = a1[1];
  *atoken.val = *a1;
  *&atoken.val[4] = v4;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  if (v3 != pidp || (_LSGetMainBundleURL(), (v5 = objc_claimAutoreleasedReturnValue()) == 0))
  {
LABEL_6:
    v6 = _LSCopyExecutableURLForAuditToken(a1);
    if (v6)
    {
      v7 = v6;
      v8 = _CFBundleCopyBundleURLForExecutableURL();
      v9 = v8;
      if (v8)
      {
        v10 = CFURLCopyPathExtension(v8);
        v11 = v10;
        if (v10)
        {
          if (CFStringGetLength(v10) <= 0)
          {
            CFRelease(v11);
          }

          else
          {
            v5 = CFRetain(v9);
            CFRelease(v11);
            if (v5)
            {
              goto LABEL_15;
            }
          }
        }
      }

      v5 = CFRetain(v7);
      if (!v9)
      {
LABEL_16:
        CFRelease(v7);
        return v5;
      }

LABEL_15:
      CFRelease(v9);
      goto LABEL_16;
    }

    return 0;
  }

  return v5;
}

void sub_1816440E4(_Unwind_Exception *a1)
{
  CFRelease(v2);
  CFRelease(v1);
  _Unwind_Resume(a1);
}

uint64_t _FSNodeGetSimpleBoolValue(FSNode *a1, NSString *a2, uint64_t a3, uint64_t a4)
{
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_9:
    v11 = [MEMORY[0x1E696AAA8] currentHandler];
    v12 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _FSNodeGetSimpleBoolValue(FSNode *const __strong, const __strong NSURLResourceKey, CFURLResourcePropertyFlags, CFURLVolumePropertyFlags)"}];
    [v11 handleFailureInFunction:v12 file:@"FSUtils.mm" lineNumber:657 description:{@"Invalid parameter not satisfying: %@", @"inKey != nil"}];

    if (!a1)
    {
      goto LABEL_10;
    }

    goto LABEL_4;
  }

  v9 = [MEMORY[0x1E696AAA8] currentHandler];
  v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _FSNodeGetSimpleBoolValue(FSNode *const __strong, const __strong NSURLResourceKey, CFURLResourcePropertyFlags, CFURLVolumePropertyFlags)"}];
  [v9 handleFailureInFunction:v10 file:@"FSUtils.mm" lineNumber:656 description:{@"Invalid parameter not satisfying: %@", @"inNode != nil"}];

  if (!a2)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (!a1)
  {
    goto LABEL_10;
  }

LABEL_4:
  if (a4 | a3)
  {
    if ((*(a1 + 24) & 8) != 0)
    {
      url = a1->_url;
      if (__CFURLResourceInfoPtr())
      {
        v15 = 0;
        MEMORY[0x1865D5CA0]();
      }
    }
  }

LABEL_10:
  v15 = 0;
  if ([(FSNode *)a1 getResourceValue:&v15 forKey:a2 options:1 error:0])
  {
    v13 = [v15 BOOLValue];
  }

  else
  {
    v13 = 0;
  }

  return v13;
}

uint64_t _LSGetBundleClassForNode(uint64_t *a1, void *a2)
{
  v3 = a2;
  if (([v3 isVolume] & 1) == 0 && ((objc_msgSend(v3, "isDirectory") & 1) != 0 || (objc_msgSend(v3, "isResolvable") & 1) == 0))
  {
    v28 = 0;
    v5 = [v3 extensionWithError:&v28];
    v6 = v28;
    v7 = v6;
    if (!v5 && _LSGetOSStatusFromNSError(v6))
    {
      goto LABEL_37;
    }

    v8 = [(__CFString *)v5 length];
    v9 = v8;
    if (!v8)
    {
LABEL_31:
      if (![v3 isDirectory])
      {
        goto LABEL_42;
      }

      v17 = [v3 hasPackageBit] ^ 1;
      if (v9)
      {
        LOBYTE(v17) = 0;
      }

      if ((v17 & 1) == 0)
      {
LABEL_42:
        v20[0] = 0;
        if ([v3 getHFSType:v20 creator:0 error:0])
        {
          v4 = _LSGetBundleClassForHFSType(v20[0]);
LABEL_38:

          goto LABEL_39;
        }
      }

LABEL_37:
      v4 = 0;
      goto LABEL_38;
    }

    v21 = v5;
    v24 = 0;
    v25 = v8;
    if (CFStringGetCharactersPtr(v5))
    {
      CStringPtr = 0;
    }

    else
    {
      CStringPtr = CFStringGetCStringPtr(v5, 0x600u);
    }

    v23 = CStringPtr;
    v26 = 0;
    v27 = 0;
    v11 = _LSGetBundleClassForExtensionInlineBuffer(v20);
    v4 = v11;
    if (v11)
    {
      if (v11 == 1)
      {
        v12 = [v3 pathWithError:0];
        v13 = v12;
        if (v12 && ![v12 caseInsensitiveCompare:@"/System/Library/CoreServices/MobileCoreTypes.bundle"])
        {

          v4 = 11;
        }

        else
        {

          v4 = 1;
        }
      }

      goto LABEL_38;
    }

    if ([v3 isDirectory])
    {
      if (a1 && _LSIsKnownExtensionInlineBuffer(a1, v20))
      {
        goto LABEL_37;
      }

      goto LABEL_31;
    }

    v19 = 1061109567;
    if (a1)
    {
      v14 = v5;
      v15 = v14;
      if (v5 && [(__CFString *)v14 length]== 3)
      {
        v16 = [(__CFString *)v15 caseInsensitiveCompare:@"exe"];

        if (!v16)
        {
          goto LABEL_28;
        }
      }

      else
      {
      }

      if (_LSIsKnownExtensionInlineBuffer(a1, v20))
      {
        goto LABEL_37;
      }
    }

LABEL_28:
    if (![v3 getHFSType:&v19 creator:0 error:0] || v19 == 1061109567 || !v19)
    {
      goto LABEL_37;
    }

    goto LABEL_31;
  }

  v4 = 0;
LABEL_39:

  return v4;
}

const void *_LSCreateResolvedURL(const void *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  if (!CFURLGetFileSystemRepresentation(a1, 1u, buffer, 1024))
  {
    v9 = CFGetAllocator(a1);
    v7 = CFErrorCreate(v9, *MEMORY[0x1E695E628], 4, 0);
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      _LSCreateResolvedURL_cold_2();
    }

    goto LABEL_7;
  }

  v16 = 0;
  v15 = xmmword_1817E8D88;
  memset(v17, 0, 512);
  v2 = getattrlist(buffer, &v15, v17, 0x40CuLL, 0x21u);
  v3 = CFGetAllocator(a1);
  v4 = v3;
  if (v2)
  {
    v5 = *MEMORY[0x1E695E640];
    v6 = __error();
    v7 = CFErrorCreate(v4, v5, *v6, 0);
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
    {
      _LSCreateResolvedURL_cold_1();
    }

LABEL_7:

    goto LABEL_8;
  }

  v13 = CFStringCreateWithFileSystemRepresentation(v3, v17 + SDWORD1(v17[0]) + 4);
  if (v13)
  {
    v14 = v13;
    v7 = CFURLCreateWithFileSystemPath(*MEMORY[0x1E695E480], v13, kCFURLPOSIXPathStyle, 1u);
    CFRelease(v14);
    if (v7)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v7 = 0;
  }

LABEL_8:
  v10 = _LSDefaultLog();
  if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
  {
    _LSCreateResolvedURL_cold_3();
  }

  if (v7)
  {
    CFRelease(v7);
  }

  v7 = CFRetain(a1);
LABEL_13:
  v11 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t _LSBundleFindWithNode(uint64_t *a1, void *a2, _DWORD *a3, void *a4)
{
  v57 = *MEMORY[0x1E69E9840];
  v7 = a2;
  v48 = 0;
  v49 = &v48;
  v50 = 0x2020000000;
  v51 = 0;
  v44 = 0;
  v45 = &v44;
  v46 = 0x2020000000;
  v47 = 0;
  v40 = 0;
  v41 = &v40;
  v42 = 0x2020000000;
  v43 = 0;
  v38 = 0;
  v39 = 0;
  v8 = [v7 nameWithError:&v38];
  v9 = v38;
  v10 = v9;
  if (v8)
  {
  }

  else
  {
    v14 = _LSGetOSStatusFromNSError(v9);

    if (v14)
    {
      goto LABEL_9;
    }
  }

  v37 = 0;
  v11 = [v7 getVolumeIdentifier:&v39 error:&v37];
  v12 = v37;
  v13 = v12;
  if (v11)
  {
  }

  else
  {
    v14 = _LSGetOSStatusFromNSError(v12);

    if (v14)
    {
      goto LABEL_9;
    }
  }

  if (!*(v49 + 24))
  {
    memset(v52, 0, sizeof(v52));
    LaunchServices::BindingEvaluator::CreateWithBundleInfo(0, v8, 0, 0, v52, v56);
    v33[0] = MEMORY[0x1E69E9820];
    v33[1] = 3221225472;
    v33[2] = ___LSBundleFindWithNode_block_invoke;
    v33[3] = &unk_1E6A1AA58;
    v35 = a1;
    v19 = v7;
    v34 = v19;
    v36 = v39;
    LaunchServices::BindingEvaluator::setFilter(v56, @"bundle unit matches input node", v33);
    LaunchServices::BindingEvaluator::setOptions(v56, 32910);
    LaunchServices::BindingEvaluator::getBestBinding(v56);
    if (v55 == 1)
    {
      *(v45 + 6) = v52[0];
      v41[3] = *(&v52[0] + 1);
      *(v49 + 24) = 1;
    }

    else
    {
      v21 = _LSDefaultLog();
      if (os_log_type_enabled(v21, OS_LOG_TYPE_DEBUG))
      {
        _LSBundleFindWithNode_cold_1(v19, v21);
      }

      [(_LSDatabase *)*a1 store];
      v22 = *([(_LSDatabase *)*a1 schema]+ 4);
      v26[1] = MEMORY[0x1E69E9820];
      v26[2] = 3221225472;
      v26[3] = ___LSBundleFindWithNode_block_invoke_137;
      v26[4] = &unk_1E6A1AA80;
      v28 = &v44;
      v29 = &v40;
      v31 = a1;
      v23 = v19;
      v32 = v39;
      v27 = v23;
      v30 = &v48;
      _CSStoreEnumerateUnits();
    }

    if (v55 == 1)
    {
    }

    LaunchServices::BindingEvaluator::~BindingEvaluator(v56);
    v15 = 0;
    goto LABEL_23;
  }

  v14 = 0;
LABEL_9:
  if (*(v49 + 24))
  {
    v15 = 0;
    goto LABEL_24;
  }

  v26[0] = 0;
  v16 = [v7 pathWithError:v26];
  v17 = v26[0];
  v18 = v17;
  if (v16)
  {
  }

  else
  {
    v14 = _LSGetOSStatusFromNSError(v17);

    if (v14)
    {
      v15 = 0;
      goto LABEL_30;
    }
  }

  [(_LSDatabase *)*a1 store];
  v20 = *([(_LSDatabase *)*a1 schema]+ 4);
  v15 = v16;
  _CSStoreEnumerateUnits();

LABEL_23:
  v14 = 0;
LABEL_24:
  if (*(v49 + 24))
  {
    if (a3)
    {
      *a3 = *(v45 + 6);
    }

    if (a4)
    {
      *a4 = v41[3];
    }
  }

  else
  {
    v14 = 4294957797;
  }

LABEL_30:

  _Block_object_dispose(&v40, 8);
  _Block_object_dispose(&v44, 8);
  _Block_object_dispose(&v48, 8);

  v24 = *MEMORY[0x1E69E9840];
  return v14;
}

void sub_181645130(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, void *a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, void *a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, char a39, uint64_t a40, uint64_t a41, uint64_t a42, char a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, uint64_t a51, uint64_t a52, uint64_t a53, uint64_t a54, id a55, id a56, uint64_t a57, char a58, uint64_t a59, char a60)
{
  if (a58 == 1)
  {
  }

  LaunchServices::BindingEvaluator::~BindingEvaluator(&a60);
  _Block_object_dispose(&a39, 8);
  _Block_object_dispose(&a43, 8);
  _Block_object_dispose(&a47, 8);

  _Unwind_Resume(a1);
}

void LaunchServices::BindingEvaluator::setFilter(uint64_t a1, void *a2, void *a3)
{
  v5 = [a3 copy];
  v6 = *(a1 + 136);
  *(a1 + 136) = v5;

  v7 = [a2 copy];
  v8 = *(a1 + 144);
  *(a1 + 144) = v7;
}

uint64_t _LSAliasCompareToNode(void *a1, int a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = a5;
  v8 = _LSAliasGet(a1, a2);
  v9 = v8;
  if (v8)
  {
    v10 = _LSAliasMatchesNode(v8, v7);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

uint64_t _LSBundleMatchesNode(void *a1, int a2, uint64_t a3, void *a4, uint64_t a5)
{
  v9 = a1;
  v10 = a4;
  v11 = v10;
  v12 = 0;
  if (a2 && a3 && v10)
  {
    v12 = _LSAliasAndInodeOnContainerMatchesNode(v9, *a3, 0, *(a3 + 4), v10, a5);
  }

  return v12;
}

uint64_t _LSAliasAndInodeOnContainerMatchesNode(void *a1, int a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  v11 = a1;
  v12 = a5;
  v13 = _LSContainerGet(v11);
  if (v13)
  {
    v18 = 0;
    v17 = 0;
    v14 = _LSContainerCheckState(v11, a4, v13, &v18, &v17);
    v15 = 0;
    if (!v14 && v18 == 1 && v17 == a6)
    {
      v15 = _LSAliasCompareToNode(v11, a2, a6, a3, v12);
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

uint64_t _LSAliasMatchesNode(void *a1, void *a2)
{
  v3 = a1;
  v4 = objc_autoreleasePoolPush();
  v5 = [a2 canonicalPathWithError:0];
  v6 = v5;
  v7 = 0;
  if (v3 && v5)
  {
    v7 = _LSAliasDataMatchesPath_NoIO(v3, v5, 0);
  }

  objc_autoreleasePoolPop(v4);
  return v7;
}

uint64_t _LSAliasDataMatchesPath_NoIO(void *a1, void *a2, uint64_t a3)
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
    v13 = [MEMORY[0x1E696AAA8] currentHandler];
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSAliasDataMatchesPath_NoIO(NSData *__strong, NSString *__strong, LSPathMatchType)"}];
    [v13 handleFailureInFunction:v14 file:@"LSUtils.mm" lineNumber:829 description:{@"Invalid parameter not satisfying: %@", @"inAlias != nil"}];

    if (v7)
    {
      goto LABEL_3;
    }
  }

  v15 = [MEMORY[0x1E696AAA8] currentHandler];
  v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL _LSAliasDataMatchesPath_NoIO(NSData *__strong, NSString *__strong, LSPathMatchType)"}];
  [v15 handleFailureInFunction:v16 file:@"LSUtils.mm" lineNumber:830 description:{@"Invalid parameter not satisfying: %@", @"inPath != nil"}];

LABEL_3:
  v8 = objc_autoreleasePoolPush();
  v9 = [FSNode pathForBookmarkData:v5 error:0];
  v10 = v9;
  if (v9)
  {
    v11 = _LSPathMatchesPath_NoIO(v9, v7, a3);
  }

  else
  {
    v11 = 0;
  }

  objc_autoreleasePoolPop(v8);
  return v11;
}

uint64_t _UTTypeGetTypeWindowsExecutable(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"com.microsoft.windows-executable", (*(v2 + 1616) + 96));

  return CachedType;
}

uint64_t _UTTypeGetCachedType(_LSDatabase *a1, const __CFString *a2, unsigned int *a3)
{
  v5 = a1;
  v6 = v5;
  v7 = *a3;
  if (!v7)
  {
    _UTGetActiveTypeForCFStringIdentifier(v5, a2, a3);
    v7 = *a3;
  }

  return v7;
}

void ___ZL35_LSSessionInitMemoryWarningListenerv_block_invoke_2()
{
  v0 = objc_autoreleasePoolPush();
  os_unfair_recursive_lock_lock_with_options();
  for (i = *(_LSGetSessions() + 16); i; i = *i)
  {
    v2 = i[3];
    if (v2)
    {
      v3 = *(v2 + 24);
      v4 = v3;
      if (v3)
      {
        v5 = v3;
        _LSSchemaClearLocalizedCaches(v4 + 48);
      }
    }
  }

  os_unfair_recursive_lock_unlock();

  objc_autoreleasePoolPop(v0);
}

void _LSSchemaCacheWrite(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (v3)
    {
      v4 = *(a1 + 1616);
      if (v4)
      {
        v5 = v3;
        os_unfair_lock_lock(v4);
        v5[2](v5, v4);
        os_unfair_lock_unlock(v4);
        v3 = v5;
      }
    }
  }
}

void sub_181645978(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10);

  _Unwind_Resume(a1);
}

uint64_t LaunchServices::URLPropertyProvider::copyValues(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4, void **a5, uint64_t a6)
{
  if (a6 < 1)
  {
    return 1;
  }

  v6 = a6;
  do
  {
    v10 = MEMORY[0x1865D5CC0](a2, **a5, a4);
    if (!v10)
    {
      break;
    }

    if (*a4)
    {
      CFRetain(*a4);
    }

    ++a4;
    ++a5;
    --v6;
  }

  while (v6);
  return v10;
}

__n128 std::allocator_traits<LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::construct[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::ExtendedBinding,void,0>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  *a2 = *a3;
  *(a2 + 16) = v3;
  v4 = *(a3 + 32);
  *(a3 + 32) = 0u;
  *(a2 + 32) = v4;
  *(a2 + 48) = *(a3 + 48);
  *(a2 + 56) = *(a3 + 56);
  result = *(a3 + 64);
  *(a3 + 64) = 0u;
  *(a2 + 64) = result;
  *(a2 + 80) = *(a3 + 80);
  v6 = *(a3 + 88);
  *(a3 + 88) = 0;
  *(a2 + 88) = v6;
  *(a2 + 96) = *(a3 + 96);
  return result;
}

uint64_t LaunchServices::BindingEvaluation::compareBindings(LaunchServices::BindingEvaluation *this, LaunchServices::BindingEvaluation::State *a2, const LaunchServices::BindingEvaluation::ExtendedBinding *a3, const LaunchServices::BindingEvaluation::ExtendedBinding *a4, const LaunchServices::BindingEvaluation::ExtendedBinding *a5)
{
  v55 = *MEMORY[0x1E69E9840];
  if ((*(this + 116) & 0x40) == 0 || (v8 = LaunchServices::BindingEvaluation::compareVendorsAndBundleClass(this, 1, a2, a3, a5), LOBYTE(v9) = v8, !v8))
  {
    if (*(a2 + 57) == *(a3 + 57))
    {
      v10 = *(a2 + 3);
      if (v10)
      {
        v11 = *(v10 + 8) ^ 1;
      }

      else
      {
        v11 = 1;
      }

      v19 = *(a3 + 3);
      if (v19)
      {
        LODWORD(v19) = *(v19 + 8);
      }

      if (((v11 | v19) & 1) == 0)
      {
        v21 = "Apple default";
        LOBYTE(v9) = 1;
        v22 = this;
        v23 = a2;
        v24 = a3;
        v25 = 1;
LABEL_38:
        LaunchServices::BindingEvaluation::logComparison(v22, v23, v24, v21, v25);
        goto LABEL_39;
      }

      v20 = v11 & v19;
      LaunchServices::BindingEvaluation::logComparison(this, a2, a3, "Apple default", ((v11 & v19) << 31) >> 31);
      if (v20)
      {
LABEL_19:
        LOBYTE(v9) = -1;
        goto LABEL_39;
      }
    }

    else
    {
      LaunchServices::BindingEvaluation::logComparison(this, a2, a3, "Apple default", 0);
    }

    v12 = *(a2 + 3);
    if (v12)
    {
      if (*(a3 + 3))
      {
        v13 = _LSClaimFlagsAreWildcard(*(v12 + 8));
        v14 = _LSClaimFlagsAreWildcard(*(*(a3 + 3) + 8));
        if (!v13 == v14)
        {
          if (v14 && !v13)
          {
            LODWORD(v9) = 1;
          }

          else
          {
            LODWORD(v9) = -1;
          }

          v21 = "wildcard";
          v22 = this;
          v23 = a2;
          v24 = a3;
          v25 = v9;
          goto LABEL_38;
        }
      }
    }

    LaunchServices::BindingEvaluation::logComparison(this, a2, a3, "wildcard", 0);
    v15 = *(a2 + 3);
    if (v15)
    {
      v16 = *(a3 + 3);
      if (v16)
      {
        v17 = *(v15 + 12);
        v18 = *(v16 + 12);
        if (v17 > v18)
        {
          LOBYTE(v9) = 1;
LABEL_30:
          v21 = "handler rank";
LABEL_37:
          v25 = v9;
          v22 = this;
          v23 = a2;
          v24 = a3;
          goto LABEL_38;
        }

        if (v17 < v18)
        {
          LOBYTE(v9) = -1;
          goto LABEL_30;
        }
      }
    }

    LaunchServices::BindingEvaluation::logComparison(this, a2, a3, "handler rank", 0);
    if (*(a2 + 56) == 1)
    {
      if ((*(a3 + 56) & 1) == 0)
      {
        LOBYTE(v9) = 1;
LABEL_36:
        v21 = "legacy claim";
        goto LABEL_37;
      }
    }

    else if (*(a3 + 56))
    {
      LOBYTE(v9) = -1;
      goto LABEL_36;
    }

    LaunchServices::BindingEvaluation::logComparison(this, a2, a3, "legacy claim", 0);
    v29 = LaunchServices::BindingEvaluation::compareDirectoryClasses(LaunchServices::BindingEvaluation::State &,LaunchServices::BindingEvaluation::ExtendedBinding const&,LaunchServices::BindingEvaluation::ExtendedBinding const&)::priority[*(*(a2 + 1) + 148)];
    v30 = LaunchServices::BindingEvaluation::compareDirectoryClasses(LaunchServices::BindingEvaluation::State &,LaunchServices::BindingEvaluation::ExtendedBinding const&,LaunchServices::BindingEvaluation::ExtendedBinding const&)::priority[*(*(a3 + 1) + 148)];
    v31 = v29 >= v30;
    v32 = v29 > v30;
    if (v31)
    {
      LODWORD(v9) = v32;
    }

    else
    {
      LODWORD(v9) = -1;
    }

    LaunchServices::BindingEvaluation::logComparison(this, a2, a3, "dir class", v9);
    if ((*(this + 116) & 0x40) == 0 && !v9)
    {
      LOBYTE(v9) = LaunchServices::BindingEvaluation::compareVendorsAndBundleClass(this, 0, a2, a3, v33);
    }

    if (!v9)
    {
      v34 = *(a2 + 1);
      v35 = *(a3 + 1);
      if (*(v34 + 304) == *(v35 + 304))
      {
        v36 = *(v34 + 44);
        v54[0] = *(v34 + 28);
        v54[1] = v36;
        v37 = *(v35 + 44);
        v53[0] = *(v35 + 28);
        v53[1] = v37;
        v38 = _LSVersionNumberCompare(v54, v53);
        if (v38 == 1)
        {
          LaunchServices::BindingEvaluation::logComparison(this, a2, a3, "bundle version", 1);
          LOBYTE(v9) = 1;
          goto LABEL_39;
        }

        v39 = v38 == -1;
        if (v38 == -1)
        {
          v40 = -1;
        }

        else
        {
          v40 = 0;
        }

        LaunchServices::BindingEvaluation::logComparison(this, a2, a3, "bundle version", v40);
        if (v39)
        {
          goto LABEL_19;
        }
      }

      else
      {
        LaunchServices::BindingEvaluation::logComparison(this, a2, a3, "bundle version", 0);
      }

      v41 = *(*(a2 + 1) + 304);
      [(_LSDatabase *)**this store];
      v42 = _CSStringCopyCFString();
      v9 = *(*(a3 + 1) + 304);
      [(_LSDatabase *)**this store];
      v43 = _CSStringCopyCFString();
      v44 = v43;
      LOBYTE(v9) = 0;
      if (v42 && v43)
      {
        v45 = [v42 compare:v43];
        if (v45 == -1)
        {
          LOBYTE(v9) = -1;
        }

        else
        {
          LOBYTE(v9) = v45 == 1;
        }
      }

      LaunchServices::BindingEvaluation::logComparison(this, a2, a3, "desperation (bundle ID)", v9);
      if (!v9)
      {
        v47 = LaunchServices::BindingEvaluation::getBindingPath(this, a2, v46);
        v49 = LaunchServices::BindingEvaluation::getBindingPath(this, a3, v48);
        v50 = v49;
        LOBYTE(v9) = 0;
        if (v47 && v49)
        {
          v51 = [v47 caseInsensitiveCompare:v49];
          if (v51 == 1)
          {
            v52 = -1;
          }

          else
          {
            v52 = 0;
          }

          if (v51 == -1)
          {
            LOBYTE(v9) = 1;
          }

          else
          {
            LOBYTE(v9) = v52;
          }
        }

        LaunchServices::BindingEvaluation::logComparison(this, a2, a3, "last resort", v9);
      }
    }
  }

LABEL_39:
  v27 = *MEMORY[0x1E69E9840];
  return v9;
}

void LaunchServices::BindingEvaluation::logComparison(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v5 = a5;
  switch(a5)
  {
    case -1:
      v10 = 60;
      break;
    case 0:
      return;
    case 1:
      v10 = 62;
      break;
    default:
      v10 = 63;
      break;
  }

  v11 = [[_LSBindingForLog alloc] initWithState:a1 binding:a2];
  v12 = [[_LSBindingForLog alloc] initWithState:a1 binding:a3];
  LaunchServices::BindingEvaluation::logToFile(@"%s: %@ %c %@", v13, a4, v11, v10, v12);

  if ((LaunchServices::BindingEvaluation::gIsReasonTrackingEnabled & 1) != 0 || (*(a1 + 118) & 2) != 0)
  {
    v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
    v15 = *(a2 + 88);
    *(a2 + 88) = v14;

    *(a2 + 80) = v5;
    v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:a4];
    v17 = *(a3 + 88);
    *(a3 + 88) = v16;

    *(a3 + 80) = -v5;
  }
}

void std::swap[abi:nn200100]<LaunchServices::BindingEvaluation::ExtendedBinding>(__int128 *a1, __int128 *a2)
{
  v29 = *a1;
  v30 = a1[1];
  v4 = *(a1 + 4);
  v5 = *(a1 + 5);
  a1[2] = 0u;
  v6 = *(a1 + 6);
  v7 = *(a1 + 28);
  v9 = *(a1 + 8);
  v8 = *(a1 + 9);
  a1[4] = 0u;
  v10 = *(a1 + 80);
  v11 = *(a1 + 11);
  *(a1 + 11) = 0;
  v28 = *(a1 + 24);
  v12 = a2[1];
  *a1 = *a2;
  a1[1] = v12;
  v13 = *(a2 + 4);
  *(a2 + 4) = 0;
  v14 = *(a1 + 4);
  *(a1 + 4) = v13;

  v15 = *(a2 + 5);
  *(a2 + 5) = 0;
  v16 = *(a1 + 5);
  *(a1 + 5) = v15;

  *(a1 + 6) = *(a2 + 6);
  *(a1 + 28) = *(a2 + 28);
  v17 = *(a2 + 8);
  *(a2 + 8) = 0;
  v18 = *(a1 + 8);
  *(a1 + 8) = v17;

  v19 = *(a2 + 9);
  *(a2 + 9) = 0;
  v20 = *(a1 + 9);
  *(a1 + 9) = v19;

  *(a1 + 80) = *(a2 + 80);
  v21 = *(a2 + 11);
  *(a2 + 11) = 0;
  v22 = *(a1 + 11);
  *(a1 + 11) = v21;

  *(a1 + 24) = *(a2 + 24);
  *a2 = v29;
  a2[1] = v30;
  v23 = *(a2 + 4);
  *(a2 + 4) = v4;

  v24 = *(a2 + 5);
  *(a2 + 5) = v5;

  *(a2 + 6) = v6;
  *(a2 + 28) = v7;
  v25 = *(a2 + 8);
  *(a2 + 8) = v9;

  v26 = *(a2 + 9);
  *(a2 + 9) = v8;

  *(a2 + 80) = v10;
  v27 = *(a2 + 11);
  *(a2 + 11) = v11;

  *(a2 + 24) = v28;
}

void std::__sift_down[abi:nn200100]<std::_ClassicAlgPolicy,LaunchServices::BindingEvaluation::sort(LaunchServices::BindingEvaluation::State &)::$_0 &,std::__wrap_iter<LaunchServices::BindingEvaluation::ExtendedBinding *>>(uint64_t a1, LaunchServices::BindingEvaluation **a2, uint64_t a3, const LaunchServices::BindingEvaluation::ExtendedBinding *a4)
{
  v4 = a3 - 2;
  if (a3 < 2)
  {
    return;
  }

  v5 = a4;
  v77 = v4 >> 1;
  if ((v4 >> 1) < 0x4EC4EC4EC4EC4EC5 * ((a4 - a1) >> 3))
  {
    return;
  }

  v9 = (0x9D89D89D89D89D8ALL * ((a4 - a1) >> 3)) | 1;
  v10 = (a1 + 104 * v9);
  v11 = 0x9D89D89D89D89D8ALL * ((a4 - a1) >> 3) + 2;
  if (v11 < a3)
  {
    v12 = objc_autoreleasePoolPush();
    v15 = LaunchServices::BindingEvaluation::compareBindings(*a2, (a1 + 104 * v9), (v10 + 104), v13, v14);
    isBindingOK = LaunchServices::BindingEvaluation::isBindingOK(*a2, (a1 + 104 * v9), v16);
    v19 = isBindingOK;
    if (v15 != 1)
    {
      if (v15 == 255)
      {
        if (isBindingOK)
        {
          goto LABEL_7;
        }
      }

      else if (isBindingOK)
      {
LABEL_7:
        v20 = LaunchServices::BindingEvaluation::isBindingOK(*a2, (v10 + 104), v18);
        objc_autoreleasePoolPop(v12);
        if (v20)
        {
          goto LABEL_13;
        }

        goto LABEL_10;
      }

      objc_autoreleasePoolPop(v12);
      goto LABEL_13;
    }

    objc_autoreleasePoolPop(v12);
    if (v19)
    {
LABEL_10:
      v10 = (v10 + 104);
      v9 = v11;
    }
  }

LABEL_13:
  v21 = objc_autoreleasePoolPush();
  v24 = LaunchServices::BindingEvaluation::compareBindings(*a2, v10, v5, v22, v23);
  v26 = LaunchServices::BindingEvaluation::isBindingOK(*a2, v10, v25);
  v28 = v26;
  if (v24 != 1)
  {
    if (v24 == 255)
    {
      if (v26)
      {
        goto LABEL_16;
      }
    }

    else if (v26)
    {
LABEL_16:
      v29 = LaunchServices::BindingEvaluation::isBindingOK(*a2, v5, v27);
      objc_autoreleasePoolPop(v21);
      if ((v29 & 1) == 0)
      {
        return;
      }

      goto LABEL_22;
    }

    objc_autoreleasePoolPop(v21);
LABEL_22:
    v30 = *(v5 + 1);
    v78 = *v5;
    v79 = v30;
    v31 = *(v5 + 2);
    *(v5 + 2) = 0u;
    v80 = v31;
    v81 = *(v5 + 6);
    v82 = *(v5 + 28);
    v32 = *(v5 + 4);
    *(v5 + 4) = 0u;
    v84 = *(v5 + 80);
    v33 = *(v5 + 11);
    *(v5 + 11) = 0;
    v85 = v33;
    v86 = *(v5 + 24);
    v83 = v32;
    while (1)
    {
      v34 = v5;
      v5 = v10;
      v35 = v10[1];
      *v34 = *v10;
      *(v34 + 1) = v35;
      v36 = *(v10 + 4);
      *(v10 + 4) = 0;
      v37 = *(v34 + 4);
      *(v34 + 4) = v36;

      v38 = *(v10 + 5);
      *(v10 + 5) = 0;
      v39 = *(v34 + 5);
      *(v34 + 5) = v38;

      *(v34 + 6) = *(v10 + 6);
      *(v34 + 28) = *(v10 + 28);
      v40 = *(v10 + 8);
      *(v10 + 8) = 0;
      v41 = *(v34 + 8);
      *(v34 + 8) = v40;

      v42 = *(v10 + 9);
      *(v10 + 9) = 0;
      v43 = *(v34 + 9);
      *(v34 + 9) = v42;

      *(v34 + 80) = *(v10 + 80);
      v44 = *(v10 + 11);
      *(v10 + 11) = 0;
      v45 = *(v34 + 11);
      *(v34 + 11) = v44;

      *(v34 + 24) = *(v10 + 24);
      if (v77 < v9)
      {
LABEL_43:
        v66 = v79;
        *v5 = v78;
        *(v5 + 1) = v66;
        v67 = v80;
        *&v80 = 0;
        v68 = *(v5 + 4);
        *(v5 + 4) = v67;

        v69 = *(&v80 + 1);
        *(&v80 + 1) = 0;
        v70 = *(v5 + 5);
        *(v5 + 5) = v69;

        *(v5 + 6) = v81;
        *(v5 + 28) = v82;
        v71 = v83;
        *&v83 = 0;
        v72 = *(v5 + 8);
        *(v5 + 8) = v71;

        v73 = *(&v83 + 1);
        *(&v83 + 1) = 0;
        v74 = *(v5 + 9);
        *(v5 + 9) = v73;

        *(v5 + 80) = v84;
        v75 = v85;
        v85 = 0;
        v76 = *(v5 + 11);
        *(v5 + 11) = v75;

        *(v5 + 24) = v86;
        return;
      }

      v46 = 2 * v9;
      v9 = (2 * v9) | 1;
      v10 = (a1 + 104 * v9);
      v47 = v46 + 2;
      if (v46 + 2 >= a3)
      {
        goto LABEL_34;
      }

      v48 = objc_autoreleasePoolPush();
      v51 = LaunchServices::BindingEvaluation::compareBindings(*a2, (a1 + 104 * v9), (v10 + 104), v49, v50);
      v53 = LaunchServices::BindingEvaluation::isBindingOK(*a2, (a1 + 104 * v9), v52);
      v55 = v53;
      if (v51 != 1)
      {
        break;
      }

      objc_autoreleasePoolPop(v48);
      if (v55)
      {
        goto LABEL_31;
      }

LABEL_34:
      v57 = objc_autoreleasePoolPush();
      v60 = LaunchServices::BindingEvaluation::compareBindings(*a2, v10, &v78, v58, v59);
      v62 = LaunchServices::BindingEvaluation::isBindingOK(*a2, v10, v61);
      v64 = v62;
      if (v60 == 1)
      {
        objc_autoreleasePoolPop(v57);
        if (v64)
        {
          goto LABEL_43;
        }
      }

      else if (v60 == 255)
      {
        if ((v62 & 1) == 0)
        {
          goto LABEL_42;
        }

LABEL_37:
        v65 = LaunchServices::BindingEvaluation::isBindingOK(*a2, &v78, v63);
        objc_autoreleasePoolPop(v57);
        if ((v65 & 1) == 0)
        {
          goto LABEL_43;
        }
      }

      else
      {
        if (v62)
        {
          goto LABEL_37;
        }

LABEL_42:
        objc_autoreleasePoolPop(v57);
      }
    }

    if (v51 == 255)
    {
      if ((v53 & 1) == 0)
      {
        goto LABEL_33;
      }
    }

    else if (!v53)
    {
LABEL_33:
      objc_autoreleasePoolPop(v48);
      goto LABEL_34;
    }

    v56 = LaunchServices::BindingEvaluation::isBindingOK(*a2, (v10 + 104), v54);
    objc_autoreleasePoolPop(v48);
    if (v56)
    {
      goto LABEL_34;
    }

LABEL_31:
    v10 = (v10 + 104);
    v9 = v47;
    goto LABEL_34;
  }

  objc_autoreleasePoolPop(v21);
  if ((v28 & 1) == 0)
  {
    goto LABEL_22;
  }
}

void sub_181646680(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, ...)
{
  va_start(va, a3);
  LaunchServices::BindingEvaluation::ExtendedBinding::~ExtendedBinding(va);
  _Unwind_Resume(a1);
}

CFURLRef _LSCopyExecutableURLForAuditToken(uint64_t a1)
{
  v1 = MEMORY[0x1EEE9AC00](a1);
  v10 = *MEMORY[0x1E69E9840];
  if (v1 && (v2 = v1[1], *v8.val = *v1, *&v8.val[4] = v2, proc_pidpath_audittoken(&v8, buffer, 0x1000u) >= 1) && (v3 = *MEMORY[0x1E695E480], (v4 = CFStringCreateWithFileSystemRepresentation(*MEMORY[0x1E695E480], buffer)) != 0))
  {
    v5 = CFURLCreateWithFileSystemPath(v3, v4, kCFURLPOSIXPathStyle, 0);
    CFRelease(v4);
  }

  else
  {
    v5 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void ___ZL16getPropertyTablev_block_invoke_cold_2()
{
  if (__cxa_guard_acquire(&qword_1ED445340))
  {
    v0 = *MEMORY[0x1E695E2C0];
    qword_1ED4454C0 = *MEMORY[0x1E695EBE8];
    unk_1ED4454C8 = v0;
    v1 = *MEMORY[0x1E695EB38];
    qword_1ED4454D0 = *MEMORY[0x1E695EB28];
    unk_1ED4454D8 = v1;
    v2 = *MEMORY[0x1E695E398];
    qword_1ED4454E0 = *MEMORY[0x1E695EBF8];
    unk_1ED4454E8 = v2;
    v3 = *MEMORY[0x1E695EB18];
    qword_1ED4454F0 = *MEMORY[0x1E695E3C0];
    unk_1ED4454F8 = v3;
    v4 = *MEMORY[0x1E695EA38];
    qword_1ED445500 = *MEMORY[0x1E695EB98];
    unk_1ED445508 = v4;

    __cxa_guard_release(&qword_1ED445340);
  }
}

void ___ZL16getPropertyTablev_block_invoke_cold_5()
{
  if (__cxa_guard_acquire(&qword_1ED445360))
  {
    qword_1ED445358 = *MEMORY[0x1E695EBC8];

    __cxa_guard_release(&qword_1ED445360);
  }
}

void ___ZL16getPropertyTablev_block_invoke_cold_6()
{
  if (__cxa_guard_acquire(&qword_1ED445370))
  {
    qword_1ED445368 = *MEMORY[0x1E695EB20];

    __cxa_guard_release(&qword_1ED445370);
  }
}

void _LSRegisterFilePropertyProvider()
{
  __p = 0;
  v11 = 0;
  v12 = 0;
  if (getPropertyTable(void)::onceToken != -1)
  {
    _LSRegisterFilePropertyProvider_cold_1();
  }

  v0 = 0;
  v1 = *LaunchServices::URLPropertyProvider::propertyTable;
  v2 = *(LaunchServices::URLPropertyProvider::propertyTable + 8);
  do
  {
    if (v0 >= v12)
    {
      v3 = (v0 - __p) >> 3;
      if ((v3 + 1) >> 61)
      {
        std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
      }

      v4 = (v12 - __p) >> 2;
      if (v4 <= v3 + 1)
      {
        v4 = v3 + 1;
      }

      if (v12 - __p >= 0x7FFFFFFFFFFFFFF8)
      {
        v5 = 0x1FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v5 = v4;
      }

      if (v5)
      {
        std::allocator<__CFString const*>::allocate_at_least[abi:nn200100](&__p, v5);
      }

      *(8 * v3) = *v1;
      v0 = (8 * v3 + 8);
      v6 = (8 * v3 - (v11 - __p));
      memcpy(v6, __p, v11 - __p);
      v7 = __p;
      __p = v6;
      v11 = v0;
      v12 = 0;
      if (v7)
      {
        operator delete(v7);
      }
    }

    else
    {
      *v0 = *v1;
      v0 += 8;
    }

    v11 = v0;
    v1 += 7;
  }

  while (v1 != v2);
  MEMORY[0x1865D5D20](LaunchServices::URLPropertyProvider::kLSPropertyProviderCallbacks, 0);
  v8 = *LaunchServices::URLPropertyProvider::propertyTable;
  v9 = *(LaunchServices::URLPropertyProvider::propertyTable + 8);
  while (v8 != v9)
  {
    MEMORY[0x1865D5D30](*v8, v8[1], v8[5], v8[6], v8);
    v8 += 7;
  }

  if (__p)
  {
    v11 = __p;
    operator delete(__p);
  }
}

void sub_181646AAC(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL16getPropertyTablev_block_invoke()
{
  v133 = *MEMORY[0x1E69E9840];
  if ((atomic_load_explicit(&_MergedGlobals_3, memory_order_acquire) & 1) == 0)
  {
    ___ZL16getPropertyTablev_block_invoke_cold_1();
  }

  if ((atomic_load_explicit(&qword_1ED445340, memory_order_acquire) & 1) == 0)
  {
    ___ZL16getPropertyTablev_block_invoke_cold_2();
  }

  if ((atomic_load_explicit(&qword_1ED445348, memory_order_acquire) & 1) == 0)
  {
    ___ZL16getPropertyTablev_block_invoke_cold_3();
  }

  if ((atomic_load_explicit(&qword_1ED445350, memory_order_acquire) & 1) == 0)
  {
    ___ZL16getPropertyTablev_block_invoke_cold_4();
  }

  if ((atomic_load_explicit(&qword_1ED445360, memory_order_acquire) & 1) == 0)
  {
    ___ZL16getPropertyTablev_block_invoke_cold_5();
  }

  if ((atomic_load_explicit(&qword_1ED445370, memory_order_acquire) & 1) == 0)
  {
    ___ZL16getPropertyTablev_block_invoke_cold_6();
  }

  if ((atomic_load_explicit(&qword_1ED445378, memory_order_acquire) & 1) == 0)
  {
    ___ZL16getPropertyTablev_block_invoke_cold_7();
  }

  if ((atomic_load_explicit(&qword_1ED445388, memory_order_acquire) & 1) == 0)
  {
    ___ZL16getPropertyTablev_block_invoke_cold_8();
  }

  if ((atomic_load_explicit(&qword_1ED445398, memory_order_acquire) & 1) == 0)
  {
    ___ZL16getPropertyTablev_block_invoke_cold_9();
  }

  if ((atomic_load_explicit(&qword_1ED4453A0, memory_order_acquire) & 1) == 0)
  {
    ___ZL16getPropertyTablev_block_invoke_cold_10();
  }

  if ((atomic_load_explicit(&qword_1ED4453A8, memory_order_acquire) & 1) == 0)
  {
    ___ZL16getPropertyTablev_block_invoke_cold_11();
  }

  v6[0] = *MEMORY[0x1E695EB50];
  v6[1] = 1;
  v6[2] = LaunchServices::URLPropertyProvider::prepareIsPackageValue;
  v6[3] = LaunchServices::URLPropertyProvider::prepareIsPackageMimic;
  v6[4] = LaunchServices::URLPropertyProvider::setIsPackageValue;
  v6[5] = &qword_1ED445470;
  v0 = *MEMORY[0x1E695EB20];
  v6[6] = 10;
  v6[7] = v0;
  v6[8] = 0;
  v6[9] = LaunchServices::URLPropertyProvider::prepareIsApplicationValue;
  v6[10] = LaunchServices::URLPropertyProvider::prepareIsApplicationMimic;
  v6[11] = 0;
  v6[12] = &qword_1ED4454C0;
  v6[13] = 10;
  v6[14] = *MEMORY[0x1E695E228];
  v6[15] = 0;
  v6[16] = LaunchServices::URLPropertyProvider::prepareApplicationFlags;
  v6[17] = LaunchServices::URLPropertyProvider::prepareAppFlagsMimic;
  v6[18] = 0;
  v6[19] = &qword_1ED445470;
  v6[20] = 10;
  v6[21] = *MEMORY[0x1E695E220];
  v6[22] = 0;
  v6[23] = LaunchServices::URLPropertyProvider::prepareApplicationFlags;
  v6[24] = LaunchServices::URLPropertyProvider::prepareAppFlagsMimic;
  v6[25] = 0;
  v6[26] = &qword_1ED445470;
  v1 = *MEMORY[0x1E695EBC8];
  v6[27] = 10;
  v6[28] = v1;
  v6[29] = 1;
  v6[30] = LaunchServices::URLPropertyProvider::prepareLocalizedNameValue;
  v6[31] = LaunchServices::URLPropertyProvider::prepareDNCMimic;
  v6[32] = 0;
  v6[33] = &qword_1ED445470;
  v6[34] = 10;
  v6[35] = *MEMORY[0x1E695E280];
  v6[36] = 0;
  v7 = 0u;
  v6[37] = LaunchServices::URLPropertyProvider::prepareDistinctLocalizedNameValue;
  v8 = &qword_1ED4453B0;
  v2 = *MEMORY[0x1E695E378];
  v9 = 2;
  v10 = v2;
  v11 = 0;
  v12 = LaunchServices::URLPropertyProvider::prepareLocalizedNameDictionaryValue;
  v13 = LaunchServices::URLPropertyProvider::prepareDNCMimic;
  v14 = 0;
  v15 = &qword_1ED445470;
  v3 = *MEMORY[0x1E695E380];
  v16 = 10;
  v17 = v3;
  v18 = 0;
  v19 = LaunchServices::URLPropertyProvider::prepareLocalizedNameDictionaryValue;
  v20 = LaunchServices::URLPropertyProvider::prepareDNCMimic;
  v21 = 0;
  v22 = &qword_1ED445470;
  v23 = 10;
  v24 = *MEMORY[0x1E695E370];
  v25 = 0;
  v26 = LaunchServices::URLPropertyProvider::prepareLocalizedNameComponentsValue;
  v27 = LaunchServices::URLPropertyProvider::prepareDNCMimic;
  v28 = 0;
  v29 = &qword_1ED445470;
  v4 = *MEMORY[0x1E695E250];
  v30 = 10;
  v31 = v4;
  v32 = 0;
  v33 = LaunchServices::URLPropertyProvider::prepareCanSetHiddenExtensionValue;
  v34 = LaunchServices::URLPropertyProvider::prepareDNCMimic;
  v35 = 0;
  v36 = &qword_1ED445358;
  v37 = 1;
  v38 = *MEMORY[0x1E695EC28];
  v39 = 1;
  v40 = LaunchServices::URLPropertyProvider::prepareTypeIdentifierAndObjectValue;
  v41 = LaunchServices::URLPropertyProvider::prepareTypeMimic;
  v42 = 0;
  v43 = &qword_1ED445400;
  v44 = 7;
  v45 = *MEMORY[0x1E695E268];
  v46 = 1;
  v47 = LaunchServices::URLPropertyProvider::prepareTypeIdentifierAndObjectValue;
  v48 = LaunchServices::URLPropertyProvider::prepareTypeMimic;
  v49 = 0;
  v50 = &qword_1ED445400;
  v51 = 7;
  v52 = *MEMORY[0x1E695EBD0];
  v53 = 1;
  v54 = LaunchServices::URLPropertyProvider::prepareLocalizedTypeDescriptionValue;
  v55 = LaunchServices::URLPropertyProvider::prepareBindingMimic;
  v56 = 0;
  v57 = &qword_1ED445380;
  v58 = 1;
  v59 = *MEMORY[0x1E695E388];
  v60 = 0;
  v61 = LaunchServices::URLPropertyProvider::prepareLocalizedTypeDescriptionDictionaryValue;
  v62 = LaunchServices::URLPropertyProvider::prepareBindingMimic;
  v63 = 0;
  v64 = &qword_1ED445380;
  v65 = 1;
  v66 = *MEMORY[0x1E695E248];
  v67 = 0;
  v68 = LaunchServices::URLPropertyProvider::prepareBundleIdentifierValue;
  v69 = LaunchServices::URLPropertyProvider::prepareMimicForBundleLookup;
  v70 = 0;
  v71 = &qword_1ED445470;
  v72 = 10;
  v73 = *MEMORY[0x1E695E2D8];
  v74 = 0;
  v75 = LaunchServices::URLPropertyProvider::prepareHFSTypeCodeValue;
  v76 = LaunchServices::URLPropertyProvider::prepareMimicForBundleLookup;
  v77 = 0;
  v78 = &qword_1ED445470;
  v79 = 10;
  v80 = *MEMORY[0x1E695E238];
  v81 = 0;
  v82 = LaunchServices::URLPropertyProvider::prepareArchitecturesValue;
  v83 = LaunchServices::URLPropertyProvider::prepareMimicForBundleLookup;
  v84 = 0;
  v85 = &qword_1ED445390;
  v86 = 1;
  v87 = *MEMORY[0x1E695E210];
  v88 = 0;
  v89 = LaunchServices::URLPropertyProvider::prepareArchitecturesValue;
  v90 = LaunchServices::URLPropertyProvider::prepareMimicForBundleLookup;
  v91 = 0;
  v92 = &qword_1ED445390;
  v93 = 1;
  v94 = @"_NSURLCanSetStrongBindingKey";
  v95 = 0;
  v96 = LaunchServices::URLPropertyProvider::prepareCanSetStrongBindingValue;
  v97 = 0u;
  v98 = &qword_1ED445438;
  v99 = 7;
  v100 = @"_NSURLStrongBindingKey";
  v101 = 0;
  v102 = LaunchServices::URLPropertyProvider::prepareStrongBindingValue;
  v103 = 0;
  v104 = LaunchServices::URLPropertyProvider::setStrongBindingValue;
  v105 = &qword_1ED4453C0;
  v106 = 2;
  v107 = *MEMORY[0x1E695ED60];
  v108 = 0;
  v109 = LaunchServices::URLPropertyProvider::prepareVolumeLocalizedNameValue;
  v110 = 0u;
  v111 = &qword_1ED4453D0;
  v112 = 6;
  v113 = @"_NSURLIsHiddenBySystemKey";
  v114 = 0;
  v115 = LaunchServices::URLPropertyProvider::prepareIsHiddenBySystemValue;
  v116 = LaunchServices::URLPropertyProvider::prepareMimicForBundleLookup;
  v117 = 0;
  v118 = &qword_1ED445368;
  v119 = 1;
  v120 = @"_NSURLIsHiddenBySystemChangedNotificationsKey";
  v121 = 0;
  v122 = LaunchServices::URLPropertyProvider::prepareIsHiddenBySystemNotificationsValue;
  v123 = LaunchServices::URLPropertyProvider::prepareMimicForBundleLookup;
  v124 = 0;
  v125 = &qword_1ED445368;
  v126 = 1;
  v127 = *MEMORY[0x1E695E218];
  v128 = 0;
  v129 = LaunchServices::URLPropertyProvider::prepareApplicationDeviceManagementPolicyValue;
  v130 = 0u;
  v131 = &qword_1ED445470;
  v132 = 10;
  std::vector<LaunchServices::URLPropertyProvider::FileProperty>::vector[abi:nn200100](&v5, v6, 0x18uLL);
  operator new();
}

void sub_181647164(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(exception_object);
}

void ___ZL16getPropertyTablev_block_invoke_cold_1()
{
  if (__cxa_guard_acquire(&_MergedGlobals_3))
  {
    v0 = *MEMORY[0x1E695E2C0];
    qword_1ED445470 = *MEMORY[0x1E695EBE8];
    unk_1ED445478 = v0;
    v1 = *MEMORY[0x1E695EB38];
    qword_1ED445480 = *MEMORY[0x1E695EB28];
    unk_1ED445488 = v1;
    v2 = *MEMORY[0x1E695E398];
    qword_1ED445490 = *MEMORY[0x1E695EBF8];
    unk_1ED445498 = v2;
    v3 = *MEMORY[0x1E695EB18];
    qword_1ED4454A0 = *MEMORY[0x1E695E3C0];
    unk_1ED4454A8 = v3;
    v4 = *MEMORY[0x1E695EB10];
    qword_1ED4454B0 = *MEMORY[0x1E695EB98];
    unk_1ED4454B8 = v4;

    __cxa_guard_release(&_MergedGlobals_3);
  }
}

void ___ZL16getPropertyTablev_block_invoke_cold_3()
{
  if (__cxa_guard_acquire(&qword_1ED445348))
  {
    v0 = *MEMORY[0x1E695EBC8];
    qword_1ED4453B0 = *MEMORY[0x1E695EBE8];
    unk_1ED4453B8 = v0;

    __cxa_guard_release(&qword_1ED445348);
  }
}

void ___ZL16getPropertyTablev_block_invoke_cold_4()
{
  if (__cxa_guard_acquire(&qword_1ED445350))
  {
    v0 = *MEMORY[0x1E695ED78];
    qword_1ED4453D0 = *MEMORY[0x1E695EE48];
    unk_1ED4453D8 = v0;
    v1 = *MEMORY[0x1E695EB98];
    qword_1ED4453E0 = *MEMORY[0x1E695EBE8];
    unk_1ED4453E8 = v1;
    v2 = *MEMORY[0x1E695EB28];
    qword_1ED4453F0 = *MEMORY[0x1E695EB48];
    unk_1ED4453F8 = v2;

    __cxa_guard_release(&qword_1ED445350);
  }
}

void ___ZL16getPropertyTablev_block_invoke_cold_7()
{
  if (__cxa_guard_acquire(&qword_1ED445378))
  {
    v0 = *MEMORY[0x1E695E2C0];
    qword_1ED445400 = *MEMORY[0x1E695EBE8];
    unk_1ED445408 = v0;
    v1 = *MEMORY[0x1E695EBF8];
    qword_1ED445410 = *MEMORY[0x1E695E310];
    unk_1ED445418 = v1;
    v2 = *MEMORY[0x1E695E398];
    qword_1ED445420 = *MEMORY[0x1E695EA38];
    unk_1ED445428 = v2;
    qword_1ED445430 = *MEMORY[0x1E695E3C0];

    __cxa_guard_release(&qword_1ED445378);
  }
}

void ___ZL16getPropertyTablev_block_invoke_cold_8()
{
  if (__cxa_guard_acquire(&qword_1ED445388))
  {
    qword_1ED445380 = *MEMORY[0x1E695EC28];

    __cxa_guard_release(&qword_1ED445388);
  }
}

void ___ZL16getPropertyTablev_block_invoke_cold_9()
{
  if (__cxa_guard_acquire(&qword_1ED445398))
  {
    qword_1ED445390 = *MEMORY[0x1E695EB20];

    __cxa_guard_release(&qword_1ED445398);
  }
}

void ___ZL16getPropertyTablev_block_invoke_cold_10()
{
  if (__cxa_guard_acquire(&qword_1ED4453A0))
  {
    v0 = *MEMORY[0x1E695EB68];
    qword_1ED445438 = *MEMORY[0x1E695EB50];
    unk_1ED445440 = v0;
    v1 = *MEMORY[0x1E695EB48];
    qword_1ED445448 = *MEMORY[0x1E695EB98];
    unk_1ED445450 = v1;
    v2 = *MEMORY[0x1E695EBE8];
    qword_1ED445458 = *MEMORY[0x1E695EB18];
    unk_1ED445460 = v2;
    qword_1ED445468 = *MEMORY[0x1E695EB20];

    __cxa_guard_release(&qword_1ED4453A0);
  }
}

void ___ZL16getPropertyTablev_block_invoke_cold_11()
{
  if (__cxa_guard_acquire(&qword_1ED4453A8))
  {
    v0 = *MEMORY[0x1E695EBF8];
    qword_1ED4453C0 = @"_NSURLCanSetStrongBindingKey";
    unk_1ED4453C8 = v0;

    __cxa_guard_release(&qword_1ED4453A8);
  }
}

void *std::vector<LaunchServices::URLPropertyProvider::FileProperty>::vector[abi:nn200100](void *result, uint64_t a2, unint64_t a3)
{
  *result = 0;
  result[1] = 0;
  result[2] = 0;
  if (a3)
  {
    std::vector<LaunchServices::URLPropertyProvider::FileProperty>::__vallocate[abi:nn200100](result, a3);
  }

  return result;
}

void std::vector<LaunchServices::URLPropertyProvider::FileProperty>::__vallocate[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    std::allocator<LaunchServices::URLPropertyProvider::FileProperty>::allocate_at_least[abi:nn200100](a1, a2);
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void std::allocator<LaunchServices::URLPropertyProvider::FileProperty>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (a2 < 0x492492492492493)
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

void std::allocator<__CFString const*>::allocate_at_least[abi:nn200100](uint64_t a1, unint64_t a2)
{
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
}

uint64_t _LSBundleFindWithInfo(uint64_t a1, NSString *a2, void *a3, int a4, _OWORD *a5, int a6, int a7, _DWORD *a8, void *a9)
{
  v18 = *MEMORY[0x1E69E9840];
  v9 = a5[1];
  v17[0] = *a5;
  v17[1] = v9;
  v16 = 0;
  v10 = _LSBundleFindWithInfoAndNo_IOFilter(a1, a2, a3, a4 != 0, v17, a6, a7, 0, 0, a8, a9, &v16);
  v11 = v16;
  v12 = v11;
  if (v10)
  {
    v13 = 0;
  }

  else
  {
    v13 = _LSGetOSStatusFromNSError(v11);
  }

  v14 = *MEMORY[0x1E69E9840];
  return v13;
}

uint64_t _LSLogAppRecordInitsForDataSeparation()
{
  if (_LSLogAppRecordInitsForDataSeparation::onceToken != -1)
  {
    _LSLogAppRecordInitsForDataSeparation_cold_1();
  }

  return _LSLogAppRecordInitsForDataSeparation::result;
}

void LaunchServices::BindingEvaluator::CreateWithApplicationIdentifier(LaunchServices::BindingEvaluator *this@<X0>, NSString *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  LaunchServices::BindingEvaluator::BindingEvaluator(a3);
  LaunchServices::BindingEvaluation::logToFile(@"Creating binding evaluator for application identifier %@", v6, this);
  v11 = 0;
  v12 = 0;
  _LSSplitApplicationIdentifier(this, &v12, &v11);
  v7 = [v11 copy];
  v8 = *(a3 + 32);
  *(a3 + 32) = v7;

  if (v12)
  {
    v9 = [(LaunchServices::BindingEvaluator *)this copy];
    v10 = *(a3 + 80);
    *(a3 + 80) = v9;
  }

  *(a3 + 88) = 1;
  *(a3 + 89) = v3;
}

void _LSSplitApplicationIdentifier(void *a1, void **a2, id *a3)
{
  v13 = a1;
  if (a2)
  {
    v6 = *a2;
    *a2 = 0;
  }

  if (a3)
  {
    objc_storeStrong(a3, a1);
  }

  if ([v13 length] >= 0xC && objc_msgSend(v13, "rangeOfString:", @".") == 10)
  {
    v8 = v7;
    if (a2)
    {
      v9 = [v13 substringToIndex:10];
      v10 = *a2;
      *a2 = v9;
    }

    if (a3)
    {
      v11 = [v13 substringFromIndex:v8 + 10];
      v12 = *a3;
      *a3 = v11;
    }
  }
}

void _LSAssertRunningInServer(uint64_t a1)
{
  if (([__LSDefaultsGetSharedInstance() isServer] & 1) == 0)
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v2 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void _LSAssertRunningInServer(const char *)"];
    [v3 handleFailureInFunction:v2 file:@"LSUtils.mm" lineNumber:1105 description:{@"Must call %s from within the Launch Services daemon.", a1}];
  }
}

Class initUMUserManager()
{
  if (!UserManagementLibrary_frameworkLibrary)
  {
    UserManagementLibrary_frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  }

  result = objc_getClass("UMUserManager");
  classUMUserManager = result;
  getUMUserManagerClass[0] = UMUserManagerFunction;
  return result;
}

Class initUMUserManager_0()
{
  if (!UserManagementLibrary_frameworkLibrary_0)
  {
    UserManagementLibrary_frameworkLibrary_0 = dlopen("/System/Library/PrivateFrameworks/UserManagement.framework/UserManagement", 2);
  }

  result = objc_getClass("UMUserManager");
  classUMUserManager_0 = result;
  getUMUserManagerClass_0 = UMUserManagerFunction_0;
  return result;
}

void _LSIsAuditTokenSandboxed(__int128 *a1, _BYTE *a2, BOOL *a3)
{
  v14 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    goto LABEL_16;
  }

  v12 = *a1;
  v13 = a1[1];
  v6 = sandbox_check_by_audit_token();
  if (v6 < 0)
  {
    if ([__LSDefaultsGetSharedInstance() isServer])
    {
      v7 = *__error();
      v8 = _LSDefaultLog();
      if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
      {
        _LSIsAuditTokenSandboxed_cold_1(v7, v8);
      }
    }
  }

  else if (!v6)
  {
    if (a2)
    {
      *a2 = 0;
    }

    if (a3)
    {
      *a3 = 0;
    }

    goto LABEL_16;
  }

  if (a2)
  {
    *a2 = 1;
  }

  if (a3)
  {
    v10 = *a1;
    v11 = a1[1];
    *a3 = sandbox_container_path_for_audit_token() == 0;
  }

LABEL_16:
  v9 = *MEMORY[0x1E69E9840];
}

__int128 *_LSAuditTokenMayMapDatabase(__int128 *result)
{
  if (result)
  {
    v1 = result;
    v2 = 0;
    _LSIsAuditTokenSandboxed(result, 0, &v2);
    if (v2)
    {
      return _LSCheckEntitlementForAuditTokenWithDefault(v1, @"com.apple.private.coreservices.canmaplsdatabase", 0);
    }

    else
    {
      return 1;
    }
  }

  return result;
}

BOOL _LSCheckEntitlementForAuditTokenWithDefault(__int128 *a1, void *a2, _BOOL8 a3)
{
  if (a1)
  {
    v4 = _LSCopyEntitlementValueForAuditToken(a1, a2);
    v5 = v4;
    if (v4)
    {
      a3 = _LSGetBooleanValueForEntitlementValue(v4, a3);
    }
  }

  return a3;
}

id _LSCopyEntitlementValueForAuditToken(__int128 *a1, void *a2)
{
  v2 = 0;
  if (a1 && a2)
  {
    v5 = objc_autoreleasePoolPush();
    if (![a2 UTF8String])
    {
      v7 = [MEMORY[0x1E696AAA8] currentHandler];
      v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"xpc_object_t _LSCopyEntitlementValueForAuditToken(const audit_token_t *, CFStringRef)"}];
      [v7 handleFailureInFunction:v8 file:@"LSEntitlements.mm" lineNumber:1027 description:{@"Couldn't get C string from entitlement name '%@'", a2}];
    }

    v9 = *a1;
    v10 = a1[1];
    v2 = xpc_copy_entitlement_for_token();
    objc_autoreleasePoolPop(v5);
  }

  return v2;
}

BOOL _LSGetBooleanValueForEntitlementValue(void *a1, _BOOL8 value)
{
  v3 = a1;
  v4 = v3;
  if (v3)
  {
    Class = object_getClass(v3);
    if (Class == MEMORY[0x1E69E9E58])
    {
      value = xpc_BOOL_get_value(v4);
      goto LABEL_14;
    }

    if (Class == MEMORY[0x1E69E9EB0])
    {
      v7 = xpc_int64_get_value(v4);
    }

    else
    {
      if (Class != MEMORY[0x1E69E9F18])
      {
        if (Class != MEMORY[0x1E69E9E88])
        {
          goto LABEL_14;
        }

        v6 = xpc_double_get_value(v4) == 0;
        goto LABEL_11;
      }

      v7 = xpc_uint64_get_value(v4);
    }

    v6 = v7 == 0;
LABEL_11:
    value = !v6;
  }

LABEL_14:

  return value;
}

void ___ZL11_LSErrorLogv_block_invoke()
{
  v0 = os_log_create("com.apple.launchservices", "error");
  v1 = _LSErrorLog(void)::result;
  _LSErrorLog(void)::result = v0;
}

void LaunchServices::notifyd::NotifyToken::RegisterCheck(LaunchServices::notifyd::NotifyToken *this@<X0>, unsigned int *a2@<X8>)
{
  v4 = this;
  *a2 = -1;
  v5 = objc_autoreleasePoolPush();
  out_token = -1;
  if (!notify_register_check([(LaunchServices::notifyd::NotifyToken *)v4 UTF8String], &out_token))
  {
    atomic_store(out_token, a2);
  }

  objc_autoreleasePoolPop(v5);
}

void sub_1816486B0(_Unwind_Exception *a1)
{
  LaunchServices::notifyd::NotifyToken::~NotifyToken(v2);

  _Unwind_Resume(a1);
}

void LaunchServices::notifyd::NotifyToken::~NotifyToken(LaunchServices::notifyd::NotifyToken *this)
{
  v2 = atomic_load(this);
  if (notify_is_valid_token(v2))
  {
    v3 = atomic_load(this);
    notify_cancel(v3);
  }
}

uint64_t _LSCopyServerStore(void *a1, char a2, id *a3, void *a4, id *a5)
{
  v106 = *MEMORY[0x1E69E9840];
  v7 = 0;
  v58 = a1;
  v53 = *MEMORY[0x1E696A798];
  v57 = *MEMORY[0x1E696A768];
  v56 = *MEMORY[0x1E696A250];
  if (sLastCallToMapDatabaseFailed)
  {
    v9 = 0;
  }

  else
  {
    v9 = 100000;
  }

  v55 = v9;
  *&v8 = 138478339;
  v51 = v8;
  while (1)
  {
    location = 0;
    v10 = v58;
    v85 = 0;
    v86 = 0;
    v87 = &v86;
    v88 = 0x2020000000;
    v89 = 0;
    v80 = 0;
    v81 = &v80;
    v82 = 0x3032000000;
    v83 = __Block_byref_object_copy__26;
    v84 = __Block_byref_object_dispose__26;
    v77 = 0;
    v78[0] = &v77;
    v78[1] = 0x3032000000;
    v78[2] = __Block_byref_object_copy__26;
    v78[3] = __Block_byref_object_dispose__26;
    v79 = 0;
    v71 = 0;
    v72 = &v71;
    v73 = 0x3032000000;
    v74 = __Block_byref_object_copy__26;
    v75 = __Block_byref_object_dispose__26;
    v76 = 0;
    v67 = 0;
    v68 = &v67;
    v69 = 0x2020000000;
    v70 = 0;
    v64 = 0;
    v65[0] = &v64;
    v65[1] = 0x3032000000;
    v65[2] = __Block_byref_object_copy__26;
    v65[3] = __Block_byref_object_dispose__26;
    v66 = 0;
    v11 = objc_autoreleasePoolPush();
    *v96 = MEMORY[0x1E69E9820];
    v97 = 3221225472;
    v98 = ___LSCopyStoreFromServer_block_invoke;
    v99 = &unk_1E6A1CA70;
    v100 = &v80;
    v101 = &v77;
    v102 = &v71;
    v103 = &v67;
    v104 = &v64;
    v105 = &v86;
    v12 = MEMORY[0x1865D71B0](v96);
    v13 = objc_opt_class();
    v14 = _LSDServiceGetXPCConnection(v13, v10);
    v62[0] = MEMORY[0x1E69E9820];
    v62[1] = 3221225472;
    v62[2] = ___LSCopyStoreFromServer_block_invoke_2;
    v62[3] = &unk_1E6A19A70;
    v15 = v12;
    v63 = v15;
    v16 = [v14 synchronousRemoteObjectProxyWithErrorHandler:v62];

    [v16 getServerStoreNonBlockingWithCompletionHandler:v15];
    v17 = v72[5];
    if ((v87[3] & 1) == 0 && (a2 & 1) == 0 && v17)
    {
      v18 = _LSDefaultLog();
      if (os_log_type_enabled(v18, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        _os_log_impl(&dword_18162D000, v18, OS_LOG_TYPE_DEFAULT, "Database was seeding; client will retry and block. This is not an error.", buf, 2u);
      }

      LSResetDatabaseKnownAvailable(v10);
      v19 = objc_alloc(MEMORY[0x1E696B0B8]);
      v20 = [v19 initWithListenerEndpoint:v72[5]];
      v21 = LSDatabaseBlockingFetchInterface();
      [v20 setRemoteObjectInterface:v21];

      v22 = [v20 synchronousRemoteObjectProxyWithErrorHandler:&__block_literal_global_37];
      [v20 resume];
      v60[0] = MEMORY[0x1E69E9820];
      v60[1] = 3221225472;
      v60[2] = ___LSCopyStoreFromServer_block_invoke_73;
      v60[3] = &unk_1E6A1CA98;
      v61 = v15;
      v23 = MEMORY[0x1865D71B0](v60);
      if (_LSCopyStoreFromServer_onceToken != -1)
      {
        _LSCopyServerStore_cold_1();
      }

      v24 = [MEMORY[0x1E696AF00] isMainThread];
      v25 = *(v68 + 24);
      if (v24)
      {
        if (*(v68 + 24))
        {
          __LAUNCH_SERVICES_IS_WAITING_ON_THE_MAIN_QUEUE_DUE_TO_A_MANUAL_REBUILD__(v22, v23);
        }

        else
        {
          __LAUNCH_SERVICES_WAS_ASKED_TO_PERFORM_BLOCKING_IO_ON_THE_MAIN_QUEUE__(v22, v23);
        }
      }

      else if (*(v68 + 24))
      {
        __LAUNCH_SERVICES_IS_RESEEDING_ITS_DATABASE_DUE_TO_A_MANUAL_REBUILD_AND_MAY_BLOCK__(v22, v23);
      }

      else
      {
        __LAUNCH_SERVICES_IS_RESEEDING_ITS_DATABASE_AND_MAY_BLOCK__(v22, v23);
      }

      [v20 invalidate];

      goto LABEL_23;
    }

    if ((a2 & 1) != 0 && v17)
    {
      v26 = _LSMakeNSErrorImpl(v53, 36, 0, "_LSCopyStoreFromServer", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDXPCClient.m", 463);
      v20 = *(v65[0] + 40);
      *(v65[0] + 40) = v26;
LABEL_23:
    }

    objc_autoreleasePoolPop(v11);
    if (*(v87 + 24) != 1)
    {
      v30 = _LSDefaultLog();
      if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
      {
        v42 = v81[5];
        v43 = *(v78[0] + 40);
        v44 = *(v65[0] + 40);
        *buf = v51;
        v91 = v42;
        v92 = 2113;
        v93 = v43;
        v94 = 2114;
        v95 = v44;
        _os_log_error_impl(&dword_18162D000, v30, OS_LOG_TYPE_ERROR, "LaunchServices: store %{private}@ or url %{private}@ was nil: %{public}@", buf, 0x20u);
      }

      p_location = &location;
      v28 = v65;
LABEL_32:
      objc_storeStrong(p_location, *(*v28 + 40));
      goto LABEL_33;
    }

    if (a4)
    {
      v27 = v81[5];
      _CSStoreSetMutable();
      *a4 = v27;
    }

    v28 = v78;
    p_location = a3;
    if (a3)
    {
      goto LABEL_32;
    }

LABEL_33:
    v31 = *(v87 + 24);
    _Block_object_dispose(&v64, 8);

    _Block_object_dispose(&v67, 8);
    _Block_object_dispose(&v71, 8);

    _Block_object_dispose(&v77, 8);
    _Block_object_dispose(&v80, 8);

    _Block_object_dispose(&v86, 8);
    if (v31)
    {
      sLastCallToMapDatabaseFailed = 0;
      v32 = location;
      goto LABEL_69;
    }

    v32 = location;
    if (a5)
    {
      objc_storeStrong(a5, location);
    }

    sLastCallToMapDatabaseFailed = 1;
    v33 = [v32 domain];
    if ([v33 isEqual:v57] && objc_msgSend(v32, "code") == -54)
    {
      v34 = _LSCurrentProcessMayMapDatabase() == 0;

      if (v34)
      {
        v46 = _LSDefaultLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          _LSCopyServerStore_cold_5();
        }

        goto LABEL_68;
      }
    }

    else
    {
    }

    if (a2)
    {
      v35 = [v32 domain];
      if ([v35 isEqual:v53])
      {
        v36 = [v32 code] == 36;

        if (v36)
        {
          v46 = _LSDefaultLog();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
          {
            _LSCopyServerStore_cold_2();
          }

          goto LABEL_68;
        }
      }

      else
      {
      }
    }

    if (!v7)
    {
      v37 = _LSGetAuditTokenForSelf();
      v38 = objc_opt_class();
      if (!_LSCheckLSDServiceAccessForAuditToken(v37, v38))
      {
        break;
      }
    }

    v39 = [v32 domain];
    if ([v39 isEqual:v56])
    {
      v40 = [v32 code] == 4099;

      if (v40)
      {
        v46 = _LSDefaultLog();
        if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
        {
          _LSCopyServerStore_cold_3();
        }

        goto LABEL_68;
      }
    }

    else
    {
    }

    v41 = _LSDefaultLog();
    if (os_log_type_enabled(v41, OS_LOG_TYPE_ERROR))
    {
      *v96 = 67109120;
      *&v96[4] = v7;
      _os_log_error_impl(&dword_18162D000, v41, OS_LOG_TYPE_ERROR, "LaunchServices: Database mapping failed, retries = %d", v96, 8u);
    }

    usleep(v55);
    if (++v7 == 10)
    {
      goto LABEL_70;
    }
  }

  v46 = _LSDefaultLog();
  if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
  {
    _LSCopyServerStore_cold_4();
  }

LABEL_68:

LABEL_69:
LABEL_70:

  v49 = *MEMORY[0x1E69E9840];
  return v31;
}

void sub_181649378(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, char a45, uint64_t a46, uint64_t a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51, uint64_t a52, uint64_t a53, uint64_t a54, char a55, uint64_t a56, uint64_t a57, uint64_t a58, uint64_t a59, uint64_t a60, char a61, uint64_t a62, uint64_t a63)
{
  _Block_object_dispose(&a45, 8);
  _Block_object_dispose(&a51, 8);
  _Block_object_dispose(&a55, 8);
  _Block_object_dispose(&a61, 8);
  _Block_object_dispose(&a67, 8);
  _Block_object_dispose(&STACK[0x200], 8);
  _Unwind_Resume(a1);
}

id _LSDServiceGetXPCConnection(void *a1, uint64_t a2)
{
  if (objc_opt_class() == a1)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSXPCConnection *_LSDServiceGetXPCConnection(__unsafe_unretained Class _Nonnull, _LSDServiceDomain *const __strong _Nonnull)"}];
    [v9 handleFailureInFunction:v10 file:@"LSDService.mm" lineNumber:405 description:{@"Invalid parameter not satisfying: %@", @"self != [_LSDService class]"}];
  }

  if (_LSDServiceGetXPCConnection::once != -1)
  {
    _LSDServiceGetXPCConnection_cold_1();
  }

  [(_LSDServiceDomain *)a2 connectionConfigurationStateForServiceClass:a1, &v17];
  v4 = v19;
  v5 = _LSDServiceGetXPCConnection::serverConnections;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3321888768;
  v11[2] = ___LSDServiceGetXPCConnection_block_invoke_2;
  v11[3] = &unk_1EEF63140;
  v11[4] = a2;
  v13 = a1;
  v14 = v17;
  v15 = v18;
  v6 = v4;
  v16 = v6;
  v12 = v6;
  v7 = LaunchServices::_LSLazyLoadObjectForKeyWithLock(v5, v6, &_LSDServiceGetXPCConnection::serverConnectionsLock, v11);

  return v7;
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__1(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__3(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__5(__n128 *a1, __n128 *a2)
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

__n128 __Block_byref_object_copy__6(uint64_t a1, uint64_t a2)
{
  *(a1 + 48) = *(a2 + 48);
  LaunchServices::BindingEvaluator::BindingEvaluator((a1 + 56), (a2 + 56));
  *(a1 + 232) = 0;
  *(a1 + 240) = 0;
  *(a1 + 248) = 0;
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 248) = *(a2 + 248);
  *(a2 + 240) = 0;
  *(a2 + 248) = 0;
  *(a2 + 232) = 0;
  *(a1 + 256) = *(a2 + 256);
  v4 = *(a2 + 264);
  *(a2 + 264) = 0;
  *(a1 + 264) = v4;
  LOBYTE(v4) = *(a2 + 288);
  *(a1 + 272) = *(a2 + 272);
  *(a1 + 288) = v4;
  v5 = *(a2 + 296);
  *(a2 + 296) = 0;
  *(a1 + 296) = v5;
  *(a1 + 304) = *(a2 + 304);
  v6 = *(a2 + 312);
  *(a2 + 312) = 0;
  *(a1 + 312) = v6;
  result = *(a2 + 320);
  *(a1 + 320) = result;
  return result;
}

uint64_t __Block_byref_object_copy__7(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__8(__n128 *a1, __n128 *a2)
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

uint64_t __Block_byref_object_copy__9(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__11(__n128 *a1, __n128 *a2)
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

uint64_t __Block_byref_object_copy__12(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__13(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__14(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__15(__n128 *a1, __n128 *a2)
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

uint64_t __Block_byref_object_copy__16(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__17(__n128 *a1, __n128 *a2)
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

uint64_t __Block_byref_object_copy__18(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__19(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__20(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__21(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__22(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__23(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__24(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__25(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__26(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__27(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  v5 = *(a2 + 64);
  v3 = a2 + 64;
  v4 = v5;
  v6 = *(v3 - 8);
  *(result + 64) = v5;
  *(result + 56) = v6;
  *(v3 - 8) = 0;
  v7 = *(v3 + 8);
  *(result + 72) = v7;
  *(result + 80) = *(v3 + 16);
  if (v7)
  {
    v8 = *(v4 + 8);
    v9 = *(result + 56);
    if ((v9 & (v9 - 1)) != 0)
    {
      if (v8 >= v9)
      {
        v8 %= v9;
      }
    }

    else
    {
      v8 &= v9 - 1;
    }

    *(v2 + 8 * v8) = result + 64;
    *v3 = 0;
    *(v3 + 8) = 0;
  }

  return result;
}

uint64_t __Block_byref_object_copy__28(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__29(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__30(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__31(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

__n128 __Block_byref_object_copy__32(__n128 *a1, __n128 *a2)
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

uint64_t __Block_byref_object_copy__33(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 52) = *(a2 + 52);
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_copy__34(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(result + 56) = *(a2 + 56);
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_copy__35(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__36(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_copy__37(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__38(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__39(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

uint64_t __Block_byref_object_copy__40(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__41(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 48);
  *(a2 + 48) = 0;
  *(result + 48) = v2;
  return result;
}

__n128 __Block_byref_object_copy__42(__n128 *a1, __n128 *a2)
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

uint64_t __Block_byref_object_copy__43(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__44(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__45(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__46(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__47(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__48(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__49(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__50(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__51(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__52(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__53(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__55(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

uint64_t __Block_byref_object_copy__56(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id LaunchServices::_LSLazyLoadObjectForKeyWithLock(void *a1, void *a2, os_unfair_lock_s *a3, void *a4)
{
  v7 = a1;
  v8 = a2;
  v9 = v7;
  v10 = v8;
  v11 = a4;
  os_unfair_lock_lock(a3);
  v12 = [v9 objectForKey:v10];
  if (!v12)
  {
    v12 = v11[2](v11);
    [v9 setObject:v12 forKey:v10];
  }

  os_unfair_lock_unlock(a3);

  return v12;
}

void sub_181649C14(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(v3);

  _Unwind_Resume(a1);
}

id _FSNodeGetClasses()
{
  v0 = [__LSDefaultsGetSharedInstance() classesWithNameForXCTests:"FSNode"];
  if (!v0)
  {
    v0 = [MEMORY[0x1E695DFD8] setWithObject:objc_opt_class()];
  }

  return v0;
}

void ___ZL35_LSSessionInitMemoryWarningListenerv_block_invoke()
{
  v0 = dispatch_source_create(MEMORY[0x1E69E96E8], 0, 6uLL, 0);
  v1 = _LSSessionInitMemoryWarningListener(void)::memPressureSource;
  _LSSessionInitMemoryWarningListener(void)::memPressureSource = v0;

  dispatch_source_set_event_handler(_LSSessionInitMemoryWarningListener(void)::memPressureSource, &__block_literal_global_228);
  v2 = _LSSessionInitMemoryWarningListener(void)::memPressureSource;

  dispatch_resume(v2);
}

uint64_t LaunchServices::notifyd::NotifyToken::_moveFrom(atomic_uint *this, atomic_uint *a2)
{
  v4 = atomic_exchange(this, 0xFFFFFFFF);
  result = notify_is_valid_token(v4);
  if (result)
  {
    result = notify_cancel(v4);
  }

  atomic_store(atomic_exchange(a2, 0xFFFFFFFF), this);
  return result;
}

id _LSDatabaseGetLog()
{
  if (_LSDatabaseGetLog_once != -1)
  {
    _LSDatabaseGetLog_cold_1();
  }

  v1 = _LSDatabaseGetLog_result;

  return v1;
}

id XNSGetPropertyListClasses()
{
  if (XNSGetPropertyListClasses_once != -1)
  {
    XNSGetPropertyListClasses_cold_1();
  }

  v1 = XNSGetPropertyListClasses_result;

  return v1;
}

id _LSGetURLPropertyClasses()
{
  v8[4] = *MEMORY[0x1E69E9840];
  v0 = XNSGetPropertyListClasses();
  v8[0] = objc_opt_class();
  v8[1] = objc_opt_class();
  v8[2] = objc_opt_class();
  v8[3] = objc_opt_class();
  v1 = [MEMORY[0x1E695DEC8] arrayWithObjects:v8 count:4];
  v2 = [v0 setByAddingObjectsFromArray:v1];

  UTTypeClass = LaunchServices::URLPropertyProvider::getUTTypeClass(v3);
  if (UTTypeClass)
  {
    v5 = [v2 setByAddingObject:UTTypeClass];

    v2 = v5;
  }

  v6 = *MEMORY[0x1E69E9840];

  return v2;
}

void __XNSGetPropertyListClasses_block_invoke()
{
  v0 = objc_alloc(MEMORY[0x1E695DFD8]);
  v1 = objc_opt_class();
  v2 = objc_opt_class();
  v3 = objc_opt_class();
  v4 = objc_opt_class();
  v5 = objc_opt_class();
  v6 = [v0 initWithObjects:{v1, v2, v3, v4, v5, objc_opt_class(), 0}];
  v7 = XNSGetPropertyListClasses_result;
  XNSGetPropertyListClasses_result = v6;
}

id LaunchServices::URLPropertyProvider::getUTTypeClass(LaunchServices::URLPropertyProvider *this)
{
  if (LaunchServices::URLPropertyProvider::getUTTypeClass(void)::once != -1)
  {
    LaunchServices::URLPropertyProvider::getUTTypeClass();
  }

  v2 = LaunchServices::URLPropertyProvider::getUTTypeClass(void)::result;

  return v2;
}

void *___ZN14LaunchServices19URLPropertyProviderL14getUTTypeClassEv_block_invoke()
{
  result = objc_getClass("UTType");
  LaunchServices::URLPropertyProvider::getUTTypeClass(void)::result = result;
  if (!result)
  {
    if (UniformTypeIdentifiersLibrary(void)::frameworkLibrary || (result = dlopen("/System/Library/Frameworks/UniformTypeIdentifiers.framework/UniformTypeIdentifiers", 2), (UniformTypeIdentifiersLibrary(void)::frameworkLibrary = result) != 0))
    {
      result = objc_getClass("UTType");
      LaunchServices::URLPropertyProvider::getUTTypeClass(void)::result = result;
    }
  }

  return result;
}

uint64_t _UTTypeGet(void *a1)
{
  v1 = a1;
  [(_LSDatabase *)v1 store];
  v2 = *([(_LSDatabase *)v1 schema]+ 16);
  Unit = CSStoreGetUnit();

  return Unit;
}

void _LSEnumerateTypesInBindingList(uint64_t *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = a4;
  if (a1)
  {
    if (a2)
    {
      goto LABEL_3;
    }

LABEL_6:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSEnumerateTypesInBindingList(LSContext * _Nonnull, LSBindingListID, const LSClaimData * _Nullable, void (^__strong _Nonnull)(NSString *__strong))"}];
    [v12 handleFailureInFunction:v13 file:@"LSClaimedTypes.mm" lineNumber:69 description:{@"Invalid parameter not satisfying: %@", @"inBindingList != kCSStoreNullID"}];

    if (v6)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = [MEMORY[0x1E696AAA8] currentHandler];
    v15 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSEnumerateTypesInBindingList(LSContext * _Nonnull, LSBindingListID, const LSClaimData * _Nullable, void (^__strong _Nonnull)(NSString *__strong))"}];
    [v14 handleFailureInFunction:v15 file:@"LSClaimedTypes.mm" lineNumber:70 description:{@"Invalid parameter not satisfying: %@", @"inBlock != nil"}];

    goto LABEL_4;
  }

  v10 = [MEMORY[0x1E696AAA8] currentHandler];
  v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _LSEnumerateTypesInBindingList(LSContext * _Nonnull, LSBindingListID, const LSClaimData * _Nullable, void (^__strong _Nonnull)(NSString *__strong))"}];
  [v10 handleFailureInFunction:v11 file:@"LSClaimedTypes.mm" lineNumber:68 description:{@"Invalid parameter not satisfying: %@", @"inContext != NULL"}];

  if (!a2)
  {
    goto LABEL_6;
  }

LABEL_3:
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_4:
  v7 = *([(_LSDatabase *)*a1 schema]+ 216);
  [(_LSDatabase *)*a1 schema];
  v20[0] = 0;
  v20[1] = v20;
  v20[2] = 0x2020000000;
  v21 = 0;
  v8 = *a1;
  v16[0] = MEMORY[0x1E69E9820];
  v16[1] = 3221225472;
  v16[2] = ___LSEnumerateTypesInBindingList_block_invoke;
  v16[3] = &unk_1E6A1B188;
  v18 = v20;
  v19 = a1;
  v9 = v6;
  v17 = v9;
  _LSBindingListEnumerateEntryWithClass(v8, a2, v7, v16);

  _Block_object_dispose(v20, 8);
}

uint64_t _LSGetExtensionPointData(void *a1, int a2)
{
  v3 = a1;
  v4 = v3;
  Unit = 0;
  if (v3 && a2)
  {
    [(_LSDatabase *)v3 store];
    v6 = *([(_LSDatabase *)v4 schema]+ 1592);
    Unit = CSStoreGetUnit();
  }

  return Unit;
}

void ___ZL37_LSSchemeApprovalGetBouncebackHistoryv_block_invoke_3(uint64_t a1, void *a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = [MEMORY[0x1E695DFA8] set];
  if (SpringBoardServicesLibrary(void)::frameworkLibrary || (SpringBoardServicesLibrary(void)::frameworkLibrary = dlopen("/System/Library/PrivateFrameworks/SpringBoardServices.framework/SpringBoardServices", 2)) != 0)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v4 = [v2 elements];
    v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v5)
    {
      v6 = *v18;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v18 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v8 = *(*(&v17 + 1) + 8 * i);
          if ([v8 isUIApplicationElement] && (objc_msgSend(v8, "layoutRole") - 1) < 2)
          {
            v9 = [v8 bundleIdentifier];
            if (v9)
            {
              [v3 addObject:v9];
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v5);
    }
  }

  v10 = _LSSchemeApprovalGetBouncebackHistory();
  objc_sync_enter(v10);
  v11 = [v10 count];
  if (v11)
  {
    v12 = [v10 objectAtIndexedSubscript:v11 - 1];
    v13 = [v12 objectAtIndexedSubscript:0];
    if ([v3 containsObject:v13])
    {
    }

    else
    {
      v14 = [v12 objectAtIndexedSubscript:1];
      v15 = [v3 containsObject:v14];

      if ((v15 & 1) == 0)
      {
        _LSSchemeApprovalClearBouncebackHistory();
      }
    }
  }

  objc_sync_exit(v10);

  v16 = *MEMORY[0x1E69E9840];
}

void sub_18164BC74(_Unwind_Exception *a1)
{
  objc_sync_exit(v3);

  _Unwind_Resume(a1);
}

id _LSSchemeApprovalGetBouncebackHistory(void)
{
  if (_LSSchemeApprovalGetBouncebackHistory(void)::once != -1)
  {
    _LSSchemeApprovalGetBouncebackHistory();
  }

  v1 = _LSSchemeApprovalGetBouncebackHistory(void)::result;

  return v1;
}

Boolean UTTypeEqual(CFStringRef inUTI1, CFStringRef inUTI2)
{
  if (inUTI1 && inUTI1 == inUTI2)
  {
    return 1;
  }

  v2 = 0;
  if (!inUTI1 || !inUTI2)
  {
    return v2;
  }

  return off_1EEF61AE0(inUTI1, inUTI2);
}

void _LSGetSessions()
{
  dispatch_once(&_LSSessionInitMemoryWarningListener(void)::once, &__block_literal_global_226);
}

{
  dispatch_once(&_LSGetSessions(void)::once, &__block_literal_global_224);
}

void sub_18164BFCC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10)
{
  objc_end_catch();

  _Unwind_Resume(a1);
}

uint64_t _LSPluginGetSDKDictionaryDataUnit(void *a1, int a2, uint64_t a3)
{
  v5 = a1;
  v6 = v5;
  if (a3 || (a3 = _LSGetPlugin(v5, a2)) != 0)
  {
    v9 = 0;
    v8 = 0;
    if (_LSExtensionPointFindWithStringID(v6, *(a3 + 180), *(a3 + 20), 0, &v9, &v8))
    {
      a3 = 0;
    }

    else
    {
      a3 = *(v8 + 48);
    }
  }

  return a3;
}

void ___ZZ31__LSRecord_compatibilityObject_ENK3__0clEP9LSContextjjPKv_block_invoke(uint64_t a1)
{
  v2 = [**(a1 + 40) _compatibilityObjectWithContext:*(a1 + 48) tableID:*(a1 + 64) unitID:*(a1 + 68) unitBytes:*(a1 + 56)];
  v3 = *(a1 + 32);
  v4 = *v3;
  *v3 = v2;
}

id _LSPlistHintCopy(void *a1)
{
  v1 = [a1 copy];

  return v1;
}

const __CFString *_UTTypeIdentifierIsDynamic(const __CFString *result)
{
  if (result)
  {
    v1 = result;
    if (CFStringGetLength(result) < 5)
    {
      return 0;
    }

    else
    {
      v2.location = 0;
      v2.length = 4;
      return (CFStringCompareWithOptions(v1, @"dyn.", v2, 1uLL) == kCFCompareEqualTo);
    }
  }

  return result;
}

uint64_t _UTGetActiveTypeForCFStringIdentifier(void *a1, const __CFString *a2, _DWORD *a3)
{
  v5 = a1;
  StringForCFString = _LSDatabaseGetStringForCFString(v5, a2, 1);
  if (StringForCFString)
  {
    active = _UTGetActiveTypeForIdentifier(v5, StringForCFString, a3);
  }

  else
  {
    active = 0;
  }

  return active;
}

uint64_t _UTGetActiveTypeForIdentifier(void *a1, int a2, _DWORD *a3)
{
  v5 = a1;
  v6 = v5;
  v21 = 0;
  v22 = &v21;
  v23 = 0x2020000000;
  v24 = 0;
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = 0;
  if (v5)
  {
    if (a2)
    {
      v7 = [(_LSDatabase *)v5 schema];
      v15[0] = MEMORY[0x1E69E9820];
      v15[1] = 3221225472;
      v15[2] = ___UTGetActiveTypeForIdentifier_block_invoke;
      v15[3] = &unk_1E6A1EDF8;
      v16 = a2;
      v15[4] = &v17;
      _LSSchemaCacheRead(v7, v15);
      if (!*(v18 + 6) || (v8 = _UTTypeGet(v6), v22[3] = v8, !*(v18 + 6)) || !v22[3])
      {
        v14[0] = MEMORY[0x1E69E9820];
        v14[1] = 3221225472;
        v14[2] = ___UTGetActiveTypeForIdentifier_block_invoke_2;
        v14[3] = &unk_1E6A1EE20;
        v14[4] = &v17;
        v14[5] = &v21;
        _UTEnumerateTypesForIdentifier(v6, a2, v14);
        if (*(v18 + 6))
        {
          v9 = [(_LSDatabase *)v6 schema];
          v12[0] = MEMORY[0x1E69E9820];
          v12[1] = 3221225472;
          v12[2] = ___UTGetActiveTypeForIdentifier_block_invoke_3;
          v12[3] = &unk_1E6A1EE48;
          v13 = a2;
          v12[4] = &v17;
          _LSSchemaCacheWrite(v9, v12);
        }
      }
    }
  }

  if (a3)
  {
    *a3 = *(v18 + 6);
  }

  v10 = v22[3];
  _Block_object_dispose(&v17, 8);
  _Block_object_dispose(&v21, 8);

  return v10;
}

void sub_18164C820(_Unwind_Exception *a1)
{
  _Block_object_dispose((v2 - 112), 8);
  _Block_object_dispose((v2 - 80), 8);

  _Unwind_Resume(a1);
}

void _LSSchemaCacheRead(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    if (v3)
    {
      v4 = *(a1 + 1616);
      if (v4)
      {
        v5 = v3;
        os_unfair_lock_lock(v4);
        v5[2](v5, v4);
        os_unfair_lock_unlock(v4);
        v3 = v5;
      }
    }
  }
}

void sub_18164C8C0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  os_unfair_lock_unlock(v10);

  _Unwind_Resume(a1);
}

uint64_t _UTTypeConformsTo(void *a1, int a2, unsigned int a3)
{
  v5 = a1;
  v6 = v5;
  v22 = 0;
  v23 = &v22;
  v24 = 0x2020000000;
  v25 = 0;
  if (a2 == a3)
  {
    v7 = 1;
    v25 = 1;
  }

  else
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v8 = [(_LSDatabase *)v5 schema];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = ___UTTypeConformsTo_block_invoke;
    v15[3] = &unk_1E6A1EEE8;
    v16 = a2;
    v17 = a3;
    v15[4] = &v22;
    v15[5] = &v18;
    _LSSchemaCacheRead(v8, v15);
    if (!*(v19 + 24))
    {
      v9 = _UTTypeSearchConformsToTypesCommon(v6, a2, 32, _UTTypeSearchEqual, a3, 0) != 0;
      *(v23 + 24) = v9;
      v10 = [(_LSDatabase *)v6 schema];
      v12[0] = MEMORY[0x1E69E9820];
      v12[1] = 3221225472;
      v12[2] = ___UTTypeConformsTo_block_invoke_2;
      v12[3] = &unk_1E6A1EF10;
      v13 = a2;
      v14 = a3;
      v12[4] = &v22;
      _LSSchemaCacheWrite(v10, v12);
    }

    _Block_object_dispose(&v18, 8);
    v7 = *(v23 + 24);
  }

  _Block_object_dispose(&v22, 8);

  return v7;
}

void sub_18164CAC8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v16 - 80), 8);

  _Unwind_Resume(a1);
}

void LaunchServices::BindingEvaluator::CreateWithUTI(LaunchServices::BindingEvaluator *this@<X0>, NSString *a2@<X1>, LaunchServices::BindingEvaluator *a3@<X8>)
{
  v16 = *MEMORY[0x1E69E9840];
  LaunchServices::BindingEvaluator::BindingEvaluator(a3);
  v7 = _LSBindingLog();
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    *buf = 138543362;
    v15 = this;
    _os_log_impl(&dword_18162D000, v7, OS_LOG_TYPE_DEBUG, "BindingEvaluator::CreateWithUTI(%{public}@)", buf, 0xCu);
  }

  LaunchServices::BindingEvaluation::logToFile(@"Creating binding evaluator for UTI %@", v8, this);
  v9 = [(LaunchServices::BindingEvaluator *)this copy];
  v10 = *(a3 + 2);
  *(a3 + 2) = v9;

  v11 = [(NSString *)a2 copy];
  v12 = *(a3 + 3);
  *(a3 + 3) = v11;

  v13 = *MEMORY[0x1E69E9840];
}

id LaunchServices::BindingEvaluator::getFilter_NoIO(LaunchServices::BindingEvaluator *this, NSString **a2)
{
  if (a2)
  {
    *a2 = *(this + 20);
  }

  v2 = MEMORY[0x1865D71B0](*(this + 19));

  return v2;
}

void std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::__destroy_vector::operator()[abi:nn200100](void ***a1)
{
  v2 = *a1;
  if (*v2)
  {
    std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>::clear[abi:nn200100](v2);
    v3 = **a1;

    operator delete(v3);
  }
}

uint64_t _UTTypeIsDenylistedForBinding(void *a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (_UTTypeIsDenylistedForBinding::once != -1)
  {
    _UTTypeIsDenylistedForBinding_cold_1();
  }

  if (v1)
  {
    v10 = 0u;
    v11 = 0u;
    v8 = 0u;
    v9 = 0u;
    v2 = _UTTypeIsDenylistedForBinding::denyListedTypes;
    v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
    if (v3)
    {
      v4 = *v9;
      while (2)
      {
        for (i = 0; i != v3; ++i)
        {
          if (*v9 != v4)
          {
            objc_enumerationMutation(v2);
          }

          if (UTTypeEqual(v1, *(*(&v8 + 1) + 8 * i)))
          {
            v3 = 1;
            goto LABEL_14;
          }
        }

        v3 = [v2 countByEnumeratingWithState:&v8 objects:v12 count:16];
        if (v3)
        {
          continue;
        }

        break;
      }
    }

LABEL_14:
  }

  else
  {
    v3 = 0;
  }

  v6 = *MEMORY[0x1E69E9840];
  return v3;
}

uint64_t LaunchServices::BindingEvaluation::conformsTo(void ***this, const LaunchServices::BindingEvaluation::State *a2, CFStringRef inConformsToUTI, const __CFString *a4)
{
  v5 = a2;
  v11 = a2;
  v7 = *(this + 56);
  if (v7)
  {
    v8 = **this;
    if (!v5)
    {
      result = _UTGetActiveTypeForCFStringIdentifier(v8, inConformsToUTI, &v11);
      if (!result)
      {
        return result;
      }

      v8 = **this;
      v7 = *(this + 56);
      v5 = v11;
    }

    v10 = _UTTypeConformsTo(v8, v7, v5);
    return v10 != 0;
  }

  if (*(this + 240) == 1)
  {
    v10 = UTTypeConformsTo(this[27], inConformsToUTI);
    return v10 != 0;
  }

  return 0;
}

uint64_t LSHandlerPref::GetOrAddHandlerPref(void *a1, int a2, int a3, int a4, _DWORD *a5)
{
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v9 = a1;
  _LSDatabaseEnumeratingBindingMap(v9);
  v10 = v14[3];
  if (a4 && !v10)
  {
    v11 = LSHandlerPref::Add(v9, a2, a3);
    if (a5)
    {
      *a5 = v11;
    }

    v10 = LSHandlerPref::Get(v9, v11);
  }

  _Block_object_dispose(&v13, 8);
  return v10;
}

void sub_18164D084(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

char *LSDefaultAppCategoryGetInfoForTypeIdentifierOrSubordinateTypeIdentifier(void *a1)
{
  v1 = a1;
  v2 = 0;
  while (1)
  {
    v3 = &LSDefaultAppCategoryInfos + v2;
    if ([*(&LSDefaultAppCategoryInfos + v2 + 8) isEqualToString:v1])
    {
      break;
    }

    v4 = *(v3 + 6);
    if (v4)
    {
      v5 = *(v3 + 5) + 8;
      while ((*(v5 + 8) & 1) != 0 || *(v5 - 8) != 1 || strcmp(*v5, [v1 UTF8String]))
      {
        v5 += 24;
        if (!--v4)
        {
          goto LABEL_9;
        }
      }

      break;
    }

LABEL_9:
    v2 += 64;
    if (v2 == 640)
    {
      v3 = 0;
      break;
    }
  }

  return v3;
}

void LaunchServices::BindingEvaluation::addClaimsInBindingMap(uint64_t **a1, unsigned int a2, int a3)
{
  if (a3)
  {
    v4 = _LSDatabaseGetBindingMapDebugName(**a1, a2);
    [(_LSDatabase *)**a1 store];
    v5 = _CSStringCopyCFString();
    LaunchServices::BindingEvaluation::logToFile(@"Adding claims for %@ %@", v6, v4, v5);

    _LSDatabaseEnumeratingBindingMap(**a1);
  }
}

void LaunchServices::BindingEvaluation::addClaims(LaunchServices::BindingEvaluation *this, NSString *a2)
{
  v3 = *(this + 29);
  if (v3)
  {
    LaunchServices::BindingEvaluation::addClaimsInBindingMap(this, 0, *(v3 + 12));
  }

  if ((LaunchServices::BindingEvaluation::State::shouldBindToTagClaims(this, a2) & 1) == 0)
  {
    LaunchServices::BindingEvaluation::logToFile(@"Skipping tag claims because the item is not a regular file or package and any UTI has no tags", v4);
    goto LABEL_12;
  }

  v5 = *(this + 1);
  if (v5)
  {

    goto LABEL_6;
  }

  if (!*(this + 27))
  {
LABEL_6:
    if (*(this + 1))
    {
      v7 = LaunchServices::BindingEvaluation::State::getExtension(this);
      v8 = v7;
      if (v7 && [(__CFString *)v7 length])
      {
        StringForCFString = _LSDatabaseGetStringForCFString(**this, v8, 1);
        LaunchServices::BindingEvaluation::addClaimsInBindingMap(this, 1u, StringForCFString);
      }
    }

    goto LABEL_12;
  }

  v25[0] = 0;
  v25[1] = v25;
  v25[2] = 0x2020000000;
  v26 = 0;
  v23[0] = 0;
  v23[1] = v23;
  v23[2] = 0x2020000000;
  v24 = -1;
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = ___ZN14LaunchServices17BindingEvaluationL27addExtensionAndOSTypeClaimsERNS0_5StateE_block_invoke;
  v19 = &unk_1E6A1A8C0;
  v20 = v25;
  v21 = v23;
  v22 = this;
  v14 = MEMORY[0x1865D71B0](&v16);
  v15 = *(this + 29);
  if (v15)
  {
    _LSBindingListEnumerate(**this, *(v15 + 80), v14);
  }

  else if (*(this + 240) == 1)
  {
    _UTDynamicEnumerateTagsFoundInDatabase(**this, *(this + 27), v14);
  }

  _Block_object_dispose(v23, 8);
  _Block_object_dispose(v25, 8);
LABEL_12:
  if (!*(this + 1))
  {
    v6 = *(this + 2);
    if (v6)
    {
      v10 = _LSDatabaseGetStringForCFString(**this, v6, 1);
      LaunchServices::BindingEvaluation::addClaimsInBindingMap(this, 5u, v10);
    }
  }

  if ((*(this + 117) & 0x20) == 0)
  {
    v11 = @"Skipping legacy wildcard document claims";
LABEL_23:
    LaunchServices::BindingEvaluation::logToFile(v11, &v6->isa);
    goto LABEL_24;
  }

  if (!*(this + 27))
  {
    v11 = @"Skipping wildcard document claims because we are not binding to a UTI";
    goto LABEL_23;
  }

  LaunchServices::BindingEvaluation::logToFile(@"Adding wildcard document claims from all applications", &v6->isa);
  [(_LSDatabase *)**this store];
  v12 = *([(_LSDatabase *)**this schema]+ 4);
  v16 = MEMORY[0x1E69E9820];
  v17 = 3221225472;
  v18 = ___ZN14LaunchServices17BindingEvaluationL17addWildcardClaimsERNS0_5StateE_block_invoke;
  v19 = &__block_descriptor_40_e19_v32__0I8r_v12I20_24l;
  v20 = this;
  _CSStoreEnumerateUnits();
LABEL_24:
  LaunchServices::BindingEvaluation::logToFile(@"%llu bindings found", v13, 0x4EC4EC4EC4EC4EC5 * ((*(this + 24) - *(this + 23)) >> 3));
}

void sub_18164D558(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Block_object_dispose((v10 - 48), 8);
  _Unwind_Resume(a1);
}

void ___ZN14LaunchServices17BindingEvaluationL21addClaimsInBindingMapERNS0_5StateE14LSBindingMapIDjb_block_invoke(uint64_t a1, uint64_t a2, int a3)
{
  v3 = a3 & 0xFFFFFFFC;
  if ((a3 & 3) == 2 && v3 != 0)
  {
    v6 = _LSClaimGet(***(a1 + 32));
    if (v6)
    {
      v7 = v6;
      v8 = *(v6 + 16);
      if (v8)
      {
        v9 = _LSBundleGet(***(a1 + 32), v8);
        if (v9)
        {
          v19 = 0;
          v17 = 0u;
          v18 = 0u;
          v15 = 0u;
          v16 = 0u;
          v13 = 0u;
          *&v14 = v3;
          *(&v14 + 1) = v7;
          LODWORD(v13) = *(v7 + 16);
          *(&v13 + 1) = v9;
          v10 = *(a1 + 32);
          if ((LaunchServices::BindingEvaluation::gIsReasonTrackingEnabled & 1) != 0 || (*(v10 + 118) & 2) != 0)
          {
            v11 = _LSDatabaseGetBindingMapDebugName(**v10, *(a1 + 40));
            if (*(a1 + 44))
            {
              v12 = @"Parent of claim in binding map ";
            }

            else
            {
              v12 = @"Claim in binding map ";
            }

            *(&v15 + 1) = [(__CFString *)v12 stringByAppendingString:v11, v13, v14, v15];

            v10 = *(a1 + 32);
          }

          *&v16 = 1;
          BYTE8(v16) = *(a1 + 40) == 0;
          BYTE9(v16) = *(a1 + 44);
          LaunchServices::BindingEvaluation::pushBackBinding(v10, (v10 + 184), &v13);
        }
      }
    }
  }
}

uint64_t LaunchServices::BindingEvaluation::State::shouldBindToTagClaims(void ***this, NSString *a2)
{
  if (*(this + 257))
  {
    goto LABEL_28;
  }

  if (this[29] || *(this + 240) == 1)
  {
    TypeData = _UTTypeGetTypeData(**this);
    v5 = LaunchServices::BindingEvaluation::conformsTo(this, TypeData, @"public.data", v4);
    v6 = **this;
    if (v5)
    {
      TypeResolvable = _UTTypeGetTypeResolvable(v6);
      IsPackage = LaunchServices::BindingEvaluation::conformsTo(this, TypeResolvable, @"com.apple.resolvable", v8);
LABEL_6:
      v10 = 0;
      v11 = 0;
      v12 = 0;
      v13 = 1;
      goto LABEL_24;
    }

    TypeDirectory = _UTTypeGetTypeDirectory(v6);
    if (LaunchServices::BindingEvaluation::conformsTo(this, TypeDirectory, @"public.directory", v15))
    {
      TypePackage = _UTTypeGetTypePackage(**this);
      IsPackage = LaunchServices::BindingEvaluation::conformsTo(this, TypePackage, @"com.apple.package", v17);
      if (IsPackage)
      {
        TypeAVCHDCollection = _UTTypeGetTypeAVCHDCollection(**this);
        v11 = LaunchServices::BindingEvaluation::conformsTo(this, TypeAVCHDCollection, @"public.avchd-collection", v19);
        v13 = 0;
        IsPackage = 0;
        v12 = 0;
LABEL_19:
        v10 = 1;
        goto LABEL_24;
      }

LABEL_20:
      v13 = 0;
      goto LABEL_21;
    }

    if (this[1])
    {
      v13 = 0;
      IsPackage = 0;
LABEL_21:
      v10 = 0;
      v11 = 0;
      v12 = 0;
      goto LABEL_24;
    }

    v20 = this[29];
    if (v20)
    {
      v21 = *(v20 + 20);
      EntryCount = _LSBindingListGetEntryCount(**this);
      v13 = 0;
      IsPackage = 0;
      v10 = 0;
      v11 = 0;
      v12 = EntryCount != 0;
      goto LABEL_24;
    }

    TagSpecification = _UTDynamicGetTagSpecification(this[27]);
    v12 = TagSpecification != 0;
  }

  else
  {
    v12 = this[1];
    if (v12)
    {
      if ([this[1] isRegularFile])
      {
        IsPackage = [v12 isResolvable];
        goto LABEL_6;
      }

      IsPackage = _LSNodeIsPackage(*this, v12, 0);
      if (IsPackage)
      {
        IsAVCHDCollection = _LSNodeIsAVCHDCollection(v12);
        v13 = 0;
        IsPackage = 0;
        v12 = 0;
        v11 = IsAVCHDCollection != 0;
        goto LABEL_19;
      }

      goto LABEL_20;
    }
  }

  v13 = 0;
  IsPackage = 0;
  v10 = 0;
  v11 = 0;
LABEL_24:
  *(this + 128) = v12 | ~((IsPackage | ~v13) & (v11 | ~v10)) | 0x100;
  if (v12 | ~((IsPackage | ~v13) & (v11 | ~v10)))
  {
    v25 = "";
  }

  else
  {
    v25 = " NOT";
  }

  LaunchServices::BindingEvaluation::logToFile(@"Will%s bind to tag claims (regular file? %i; resolvable? %i; package? %i; AVCHD? %i; tagged UTI? %i)", a2, v25, v13, IsPackage, v10, v11, v12);
  if ((*(this + 257) & 1) == 0)
  {
    v26 = 1;
    return v26 & 1;
  }

LABEL_28:
  v26 = *(this + 256);
  return v26 & 1;
}

uint64_t _UTTypeGetTypeData(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"public.data", (*(v2 + 1616) + 104));

  return CachedType;
}

uint64_t _UTTypeGetTypeDirectory(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"public.directory", (*(v2 + 1616) + 124));

  return CachedType;
}

void LaunchServices::BindingEvaluation::addAlternateUTIClaims(LaunchServices::BindingEvaluation *this, NSString *a2)
{
  if ((*(this + 118) & 4) != 0)
  {
    v10 = @"Skipping alternate UTI claims due to options";
  }

  else if (*(this + 27))
  {
    v3 = LaunchServices::BindingEvaluation::State::getExtension(this);
    if (v3)
    {
      v4 = v3;
      if ([(__CFString *)v3 length])
      {
        TypePackage = _UTTypeGetTypePackage(**this);
        TypeData = _UTTypeGetTypeData(**this);
        if (LaunchServices::BindingEvaluation::conformsTo(this, TypePackage, @"com.apple.package", v7))
        {
          LaunchServices::BindingEvaluation::logToFile(@"Base type of UTI %@ was com.apple.package; looking for alternate UTI claims", v8, *(this + 27));
          LODWORD(TypeData) = TypePackage;
          if (!TypePackage)
          {
            return;
          }
        }

        else
        {
          v11 = LaunchServices::BindingEvaluation::conformsTo(this, TypeData, @"public.data", v9);
          v13 = *(this + 27);
          if (!v11)
          {
            LaunchServices::BindingEvaluation::logToFile(@"Base type of UTI %@ was not public.data or com.apple.package; skipping alternate UTI claims", v12, *(this + 27));
            return;
          }

          LaunchServices::BindingEvaluation::logToFile(@"Base type of UTI %@ was public.data; looking for alternate UTI claims", v12, *(this + 27));
          if (!TypeData)
          {
            return;
          }
        }

        v14 = **this;
        v15[0] = MEMORY[0x1E69E9820];
        v15[1] = 3221225472;
        v15[2] = ___ZN14LaunchServices17BindingEvaluationL21addAlternateUTIClaimsERNS0_5StateE_block_invoke;
        v15[3] = &__block_descriptor_52_e42_v32__0I8I12r____IIIIiII_8I_IIIIIIIII_16_24lu40l8;
        v16 = TypeData;
        v15[4] = this;
        v15[5] = v4;
        _UTEnumerateTypesForTag(v14, @"public.filename-extension", v4, v15);
        return;
      }
    }

    v10 = @"Skipping alternate UTI claims (no path extension)";
  }

  else
  {
    v10 = @"Skipping alternate UTI claims (no UTI!)";
  }

  LaunchServices::BindingEvaluation::logToFile(v10, a2);
}

void LaunchServices::BindingEvaluation::addParentUTIClaims(LaunchServices::BindingEvaluation *this, NSString *a2)
{
  if (*(this + 117))
  {
    v4 = @"Skipping parent UTI claims due to options";
    goto LABEL_5;
  }

  v3 = *(this + 56);
  if (v3 == _UTTypeGetTypeWindowsExecutable(**this))
  {
    v4 = @"Skipping parent UTI claims because the type is a Windows executable";
LABEL_5:

    LaunchServices::BindingEvaluation::logToFile(v4, a2);
    return;
  }

  if (*(this + 29))
  {
    LaunchServices::BindingEvaluation::logToFile(@"Adding claims for parent UTIs of %@", a2, *(this + 27));
    _UTTypeSearchConformsToTypes(**this, *(this + 56), LaunchServices::BindingEvaluation::searchParentUTIsForClaims, this, 0);
  }

  else if (*(this + 240) == 1)
  {
    LaunchServices::BindingEvaluation::logToFile(@"Adding claims for parent UTIs of dynamic %@", a2, *(this + 27));
    v5 = *(this + 27);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 3221225472;
    v6[2] = ___ZN14LaunchServices17BindingEvaluationL18addParentUTIClaimsERNS0_5StateE_block_invoke;
    v6[3] = &__block_descriptor_40_e22_v24__0__NSString_8_B16l;
    v6[4] = this;
    _UTDynamicEnumerateParentIdentifiers(v5, v6);
  }

  LaunchServices::BindingEvaluation::logToFile(@"%llu bindings found", a2, 0x4EC4EC4EC4EC4EC5 * ((*(this + 24) - *(this + 23)) >> 3));
}

uint64_t ___ZL32_UTTypeSearchConformsToTypesCoreP14UTTypeSearchPB_block_invoke(uint64_t a1, uint64_t a2, int a3, _BYTE *a4)
{
  *(*(a1 + 48) + 64) = _UTGetActiveTypeForIdentifier(*(a1 + 32), a3, (*(a1 + 48) + 56));
  result = *(a1 + 48);
  if (*(result + 64))
  {
    result = _UTTypeSearchConformsToTypesCore();
    if (result)
    {
      *(*(*(a1 + 40) + 8) + 24) = 1;
      *a4 = 1;
    }
  }

  return result;
}

id _UTTypeGetIconNames(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = 0;
  if (v3 && a2)
  {
    v4 = [MEMORY[0x1E695DF70] array];
    v5 = 0;
    v6 = a2 + 28;
    do
    {
      if (!*(v6 + v5))
      {
        break;
      }

      [(_LSDatabase *)v3 store];
      v7 = _CSStringCopyCFString();
      if (v7)
      {
        [v4 addObject:v7];
      }

      v5 += 4;
    }

    while (v5 != 32);
  }

  return v4;
}

id LaunchServices::ClaimBindingConfiguration::FilterStack::buildFilter(LaunchServices::ClaimBindingConfiguration::FilterStack *this)
{
  if (*(this + 1) != *this)
  {
    std::allocate_shared[abi:nn200100]<std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>,std::allocator<std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>>>,std::vector<std::pair<BOOL({block_pointer} {__strong})(LSContext *,LSBinding const&),NSString * {__strong}>> const&,0>();
  }

  return 0;
}

void sub_18164E078(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, std::__shared_weak_count *a15)
{
  if (a15)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](a15);
  }

  v17 = *(v15 - 32);
  if (v17)
  {
    std::__shared_weak_count::__release_shared[abi:nn200100](v17);
  }

  _Unwind_Resume(exception_object);
}

void std::vector<unsigned int>::push_back[abi:nn200100](const void **a1, _DWORD *a2)
{
  v5 = a1[1];
  v4 = a1[2];
  if (v5 >= v4)
  {
    v7 = *a1;
    v8 = v5 - *a1;
    v9 = (v8 >> 2) + 1;
    if (v9 >> 62)
    {
      std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
    }

    v10 = v4 - v7;
    if (v10 >> 1 > v9)
    {
      v9 = v10 >> 1;
    }

    v11 = v10 >= 0x7FFFFFFFFFFFFFFCLL;
    v12 = 0x3FFFFFFFFFFFFFFFLL;
    if (!v11)
    {
      v12 = v9;
    }

    if (v12)
    {
      std::allocator<unsigned int>::allocate_at_least[abi:nn200100](a1, v12);
    }

    v13 = (4 * (v8 >> 2));
    *v13 = *a2;
    v6 = v13 + 1;
    memcpy(0, v7, v8);
    v14 = *a1;
    *a1 = 0;
    a1[1] = v6;
    a1[2] = 0;
    if (v14)
    {
      operator delete(v14);
    }
  }

  else
  {
    *v5 = *a2;
    v6 = v5 + 1;
  }

  a1[1] = v6;
}

uint64_t _UTTypeGetTypeApplication(void *a1)
{
  v1 = a1;
  v2 = [(_LSDatabase *)v1 schema];
  CachedType = _UTTypeGetCachedType(v1, @"com.apple.application", (*(v2 + 1616) + 88));

  return CachedType;
}

uint64_t LSHandlerPref::GetOrCreateTagForContentType(void *a1, const __CFString *a2, int a3, int *a4)
{
  v7 = a1;
  v8 = 0;
  if (v7 && a2 && a4)
  {
    *a4 = -1;
    if (_UTTypeIdentifierIsValid(a2))
    {
      if (_UTTypeIdentifierIsDynamic(a2))
      {
        FirstTag = _UTDynamicGetFirstTag(a2, @"public.filename-extension");
        if (FirstTag)
        {
          v10 = 1;
        }

        else
        {
          FirstTag = _UTDynamicGetFirstTag(a2, @"public.mime-type");
          if (!FirstTag)
          {
            v12 = 0;
            if (*a4 == -1)
            {
              v8 = 0;
LABEL_18:

              goto LABEL_21;
            }

LABEL_14:
            if (a3)
            {
              StringForCFString = _LSDatabaseCreateStringForCFString(v7, v12, 0);
            }

            else
            {
              StringForCFString = _LSDatabaseGetStringForCFString(v7, v12, 0);
            }

            v8 = StringForCFString;
            goto LABEL_18;
          }

          v10 = 2;
        }

        *a4 = v10;
        v12 = FirstTag;
        goto LABEL_14;
      }

      *a4 = 0;
      if (a3)
      {
        v11 = _LSDatabaseCreateStringForCFString(v7, a2, 1);
      }

      else
      {
        v11 = _LSDatabaseGetStringForCFString(v7, a2, 1);
      }

      v8 = v11;
    }

    else
    {
      v8 = 0;
    }
  }

LABEL_21:

  return v8;
}

const __CFString *_UTTypeIdentifierIsValid(const __CFString *result)
{
  if (!result)
  {
    return result;
  }

  v1 = result;
  Length = CFStringGetLength(result);
  if (Length < 3)
  {
    return 0;
  }

  v3 = Length;
  theString = v1;
  v49 = 0;
  v50 = Length;
  CharactersPtr = CFStringGetCharactersPtr(v1);
  CStringPtr = 0;
  v47 = CharactersPtr;
  if (!CharactersPtr)
  {
    CStringPtr = CFStringGetCStringPtr(v1, 0x600u);
  }

  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = v3 - 1;
  v51 = 0;
  v52 = 0;
  v48 = CStringPtr;
  while (2)
  {
    v10 = v8;
    if (v8 < 0 || (v11 = v50, v50 <= v8))
    {
      v12 = 0;
    }

    else if (v47)
    {
      v12 = v47[v49 + v8];
    }

    else if (v48)
    {
      v12 = v48[v49 + v8];
    }

    else
    {
      if (v52 <= v8 || v6 > v8)
      {
        v34 = v8 - 4;
        if (v8 < 4)
        {
          v34 = 0;
        }

        if (v34 + 64 < v50)
        {
          v11 = v34 + 64;
        }

        v51 = v34;
        v52 = v11;
        v54.length = v11 - v34;
        v54.location = v49 + v34;
        v35 = v7;
        v36 = v9;
        CFStringGetCharacters(theString, v54, buffer);
        v9 = v36;
        v7 = v35;
        v6 = v51;
      }

      v12 = buffer[v8 - v6];
    }

    if ((v12 - 58) <= 0xFFF5u && ((v12 & 0xFFDF) - 91) < 0xFFE6u)
    {
      goto LABEL_78;
    }

    v13 = v8 + 1;
    if (v3 <= v13)
    {
      v24 = v8 + 1;
      if ((v8 & 0x80000000) == 0)
      {
        break;
      }

      goto LABEL_69;
    }

    v14 = 0;
    v15 = 2 * v13;
    v16 = -v13;
    v17 = v8 + 65;
    v18 = v8 + 1;
    v19 = &buffer[v13];
    while (1)
    {
      if (v18 >= 4)
      {
        v20 = 4;
      }

      else
      {
        v20 = v18;
      }

      if (v8 + v14 < -1 || (v21 = v13 + v14, v22 = v50, v50 <= v13 + v14))
      {
        v12 = 0;
LABEL_24:
        if (v12 != 45 && (v12 - 58) < 0xFFF6u)
        {
          goto LABEL_78;
        }

        goto LABEL_31;
      }

      if (v47)
      {
        v23 = (&v47[v49] + v15);
LABEL_22:
        v12 = v23[v14];
        goto LABEL_29;
      }

      if (!v48)
      {
        if (v52 <= v21 || v6 > v21)
        {
          v25 = v13 - v20;
          v26 = v20 + v16;
          v27 = v17 - v20;
          v28 = v14 + v25;
          v29 = v28 + 64;
          if (v28 + 64 >= v50)
          {
            v29 = v50;
          }

          v51 = v28;
          v52 = v29;
          if (v50 >= v27)
          {
            v22 = v27;
          }

          v53.location = v28 + v49;
          v53.length = v22 + v26;
          v43 = v19;
          v44 = v15;
          v30 = v7;
          v31 = v9;
          CFStringGetCharacters(theString, v53, buffer);
          v19 = v43;
          v15 = v44;
          v9 = v31;
          v7 = v30;
          v6 = v51;
        }

        v23 = &v19[-v6];
        goto LABEL_22;
      }

      v12 = v48[v49 + v13 + v14];
LABEL_29:
      if (v12 == 46)
      {
        break;
      }

      if (((v12 & 0xFFDF) - 91) <= 0xFFE5u)
      {
        goto LABEL_24;
      }

LABEL_31:
      ++v18;
      ++v14;
      --v16;
      ++v17;
      v24 = v13 + v14;
      if (v3 <= v13 + v14)
      {
        v8 += v14;
        goto LABEL_46;
      }
    }

    v24 = v13 + v14;
    v8 += v14;
    v12 = 46;
LABEL_46:
    v10 = v8;
    LODWORD(v13) = v24;
    if (v8 < 0)
    {
LABEL_69:
      v40 = v12 == 46;
      v41 = v9 > v24;
      if (v40 && v41)
      {
        v7 = 1;
      }

      else
      {
        v7 = v7;
      }

      if (v40 && v41)
      {
        v8 += 2;
      }

      else
      {
        v8 = v13;
      }

      if (v3 <= v8)
      {
        v42 = 1;
        goto LABEL_79;
      }

      continue;
    }

    break;
  }

  v32 = v50;
  if (v50 <= v10)
  {
    goto LABEL_69;
  }

  if (v47)
  {
    v33 = v47[v49 + v10];
  }

  else if (v48)
  {
    v33 = v48[v49 + v10];
  }

  else
  {
    if (v52 <= v10 || v6 > v10)
    {
      v37 = v10 - 4;
      if (v8 < 4)
      {
        v37 = 0;
      }

      if (v37 + 64 < v50)
      {
        v32 = v37 + 64;
      }

      v51 = v37;
      v52 = v32;
      v55.length = v32 - v37;
      v55.location = v49 + v37;
      v38 = v7;
      v39 = v9;
      CFStringGetCharacters(theString, v55, buffer);
      v9 = v39;
      LODWORD(v7) = v38;
      v6 = v51;
    }

    v33 = buffer[v10 - v6];
  }

  if (v33 != 45)
  {
    goto LABEL_69;
  }

LABEL_78:
  v42 = 0;
LABEL_79:
  if (v7)
  {
    return v42;
  }

  else
  {
    return 0;
  }
}

id LaunchServices::BindingEvaluation::State::getExtension(LaunchServices::BindingEvaluation::State *this)
{
  v2 = *(this + 31);
  if (!v2)
  {
    v3 = *(this + 1);
    if (v3)
    {
      v4 = [v3 extensionWithError:0];
      v6 = v4;
      if (v4)
      {
        LaunchServices::BindingEvaluation::logToFile(@"Got extension .%@ from file URL.", v5, v4);
      }
    }

    else
    {
      v7 = *(this + 4);
      if (v7)
      {
        v8 = [v7 pathExtension];
        v9 = [v8 lowercaseString];

        if (v9)
        {
          LaunchServices::BindingEvaluation::logToFile(@"Got extension .%@ from caller-supplied filename. This is less accurate than passing a file URL.", v10, v9);
          v6 = v9;
        }

        else
        {
          v6 = &stru_1EEF65710;
        }
      }

      else
      {
        v6 = &stru_1EEF65710;
      }
    }

    v11 = *(this + 31);
    *(this + 31) = v6;

    v2 = *(this + 31);
  }

  return v2;
}

uint64_t _UTTypeSearchConformsToTypesCommon(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, _DWORD *a6)
{
  v12 = _UTTypeGet(a1);
  if (!v12)
  {
    return 0;
  }

  memset(v16, 0, sizeof(v16));
  v17 = 1065353216;
  v18 = a1;
  v19 = a5;
  v20 = a2;
  v21 = v12;
  v22 = a4;
  v23 = 0;
  v13 = 32;
  if (a3 >= 0)
  {
    v13 = a3;
  }

  v24 = v13;
  if (!_UTTypeSearchConformsToTypesCore(v16))
  {
    std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(v16);
    return 0;
  }

  if (a6)
  {
    *a6 = v20;
  }

  v14 = v21;
  std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(v16);
  return v14;
}

uint64_t *std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int &>(void *a1, unsigned int *a2)
{
  v2 = *a2;
  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_18;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = *a2;
    if (*&v3 <= v2)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v8 = v7[1];
    if (v8 == v2)
    {
      break;
    }

    if (v4.u32[0] > 1uLL)
    {
      if (v8 >= *&v3)
      {
        v8 %= *&v3;
      }
    }

    else
    {
      v8 &= *&v3 - 1;
    }

    if (v8 != v5)
    {
      goto LABEL_18;
    }

LABEL_17:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_18;
    }
  }

  if (*(v7 + 4) != v2)
  {
    goto LABEL_17;
  }

  return v7;
}

uint64_t std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecordUpdateAvailability>>>::~__hash_table(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    do
    {
      v3 = *v2;
      operator delete(v2);
      v2 = v3;
    }

    while (v3);
  }

  v4 = *a1;
  *a1 = 0;
  if (v4)
  {
    operator delete(v4);
  }

  return a1;
}

id _UTTypeGetIconName(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3 && a2)
  {
    if (*(a2 + 60))
    {
      [(_LSDatabase *)v3 store];
      v5 = _CSStringCopyCFString();
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

id _UTTypeGetGlyphName(void *a1, uint64_t a2)
{
  v3 = a1;
  v4 = v3;
  v5 = 0;
  if (v3 && a2)
  {
    if (*(a2 + 64))
    {
      [(_LSDatabase *)v3 store];
      v5 = _CSStringCopyCFString();
    }

    else
    {
      v5 = 0;
    }
  }

  return v5;
}

id LaunchServices::BindingEvaluation::State::getTypeRecord(LaunchServices::BindingEvaluation::State *this)
{
  if (*(this + 240) == 1)
  {
    v1 = [[_UTDynamicTypeRecord alloc] _initWithContext:*this dynamicUTI:*(this + 27)];
  }

  else if (*(this + 56))
  {
    v1 = [(LSRecord *)[_UTDeclaredTypeRecord alloc] _initWithContext:*this tableID:*([(_LSDatabase *)**this schema]+ 16) unitID:*(this + 56)];
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t ___ZN13LSHandlerPref19GetOrAddHandlerPrefEP11_LSDatabasej14LSBindingMapIDhPj_block_invoke(uint64_t result, uint64_t a2, int a3, _BYTE *a4)
{
  v4 = (a3 & 0xFFFFFFFC);
  if ((a3 & 3) == 1 && v4 != 0)
  {
    v7 = result;
    v8 = *(result + 48);
    if (v8)
    {
      *v8 = v4;
    }

    result = LSHandlerPref::Get(*(result + 32), v4);
    *(*(*(v7 + 40) + 8) + 24) = result;
    *a4 = 1;
  }

  return result;
}

uint64_t _LSBindingListGetEntryCount(void *a1)
{
  v1 = a1;
  [(_LSDatabase *)v1 store];
  v2 = *([(_LSDatabase *)v1 schema]+ 1596);
  Unit = CSStoreGetUnit();
  if (Unit)
  {
    v4 = *Unit;
  }

  else
  {
    v4 = 0;
  }

  return v4;
}

uint64_t _UTTypeSearchConformsToTypesCore(uint64_t a1)
{
  if (std::__hash_table<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::__unordered_map_hasher<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::hash<unsigned int>,std::equal_to<unsigned int>,true>,std::__unordered_map_equal<unsigned int,std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>,std::equal_to<unsigned int>,std::hash<unsigned int>,true>,std::allocator<std::__hash_value_type<unsigned int,LSApplicationRecord * {__strong}>>>::find<unsigned int>(a1, (a1 + 56)))
  {
    return 0;
  }

  std::__hash_table<unsigned int,std::hash<unsigned int>,std::equal_to<unsigned int>,std::allocator<unsigned int>>::__emplace_unique_key_args<unsigned int,unsigned int &>(a1, (a1 + 56));
  *(a1 + 72) = *(a1 + 88);
  if ((*(a1 + 80))(a1 + 40))
  {
    return 1;
  }

  if (!*(*(a1 + 64) + 84) || *(a1 + 96) <= *(a1 + 88))
  {
    return 0;
  }

  v4 = *(a1 + 40);
  v5 = *(a1 + 56);
  v6 = *(a1 + 64);
  ++*(a1 + 88);
  v7 = *([(_LSDatabase *)v4 schema]+ 216);
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v8 = *(*(a1 + 64) + 84);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = ___ZL32_UTTypeSearchConformsToTypesCoreP14UTTypeSearchPB_block_invoke;
  v10[3] = &unk_1E6A19430;
  v13 = a1;
  v9 = v4;
  v11 = v9;
  v12 = &v14;
  _LSBindingListEnumerateEntryWithClass(v9, v8, v7, v10);
  if (v15[3])
  {

    _Block_object_dispose(&v14, 8);
    v2 = 1;
  }

  else
  {
    --*(a1 + 88);
    *(a1 + 56) = v5;
    *(a1 + 64) = v6;

    _Block_object_dispose(&v14, 8);
    v2 = 0;
  }

  return v2;
}

void sub_18164F080(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);

  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void LaunchServices::BindingEvaluation::addClaimsForParentUTI(uint64_t a1, uint64_t a2)
{
  if ((*(a2 + 9) & 2) == 0 || (*(a1 + 116) & 0x20) != 0)
  {
    v4 = *(a2 + 12);

    LaunchServices::BindingEvaluation::addClaimsInBindingMap(a1, 0, v4);
  }

  else
  {
    v2 = *(a2 + 12);
    [(_LSDatabase *)**a1 store];
    v5 = _CSStringCopyCFString();
    LaunchServices::BindingEvaluation::logToFile(@"Skipping parent UTI claim for %@ due to options (wildcard UTIs not requested)", v3, v5);
  }
}

NSObject *LaunchServices::LocalizedString::localizeUnsafely(uint64_t a1, void *a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  v5 = a2;
  prefArray = a3;
  v32 = v5;
  if (!v5)
  {
    v27 = [MEMORY[0x1E696AAA8] currentHandler];
    v28 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"NSString *LaunchServices::LocalizedString::localizeUnsafely(_LSDatabase *__strong _Nonnull, NSArray<NSString *> *__strong _Nullable) const"}];
    [v27 handleFailureInFunction:v28 file:@"LSLocalizedString.mm" lineNumber:163 description:{@"Invalid parameter not satisfying: %@", @"db != nil"}];
  }

  context = objc_autoreleasePoolPush();
  if ((*(a1 + 8) & 2) != 0)
  {
    v21 = *(a1 + 4);
    [(_LSDatabase *)v5 store];
    v22 = _CSStringCopyCFString();
    if (*(a1 + 8))
    {
      v23 = @"✴️";
    }

    else
    {
      v23 = @"🔂";
    }

    v13 = v22;
  }

  else
  {
    if (!*a1 || (v31 = *(a1 + 4), !v31))
    {
      v13 = 0;
      goto LABEL_47;
    }

    if (!prefArray)
    {
      prefArray = [__LSDefaultsGetSharedInstance() preferredLocalizations];
    }

    v6 = _LSDatabaseGetStringArray(v5);
    v7 = 0;
    if (prefArray && v6)
    {
      v7 = CFBundleCopyLocalizationsForPreferences(v6, prefArray);
    }

    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    v8 = v7;
    v9 = [(__CFArray *)v8 countByEnumeratingWithState:&v35 objects:v47 count:16];
    if (v9)
    {
      v10 = *v36;
      do
      {
        v11 = 0;
        do
        {
          if (*v36 != v10)
          {
            objc_enumerationMutation(v8);
          }

          v12 = *(*(&v35 + 1) + 8 * v11);
          if ([(__CFArray *)v12 isEqual:@"LSDefaultLocalizedValue"])
          {
            v13 = _LSDefaultLog();
            if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
            {
              LaunchServices::LocalizedString::localizeUnsafely(&v33, v34, v13);
            }
          }

          else
          {
            v14 = [(__CFArray *)v6 indexOfObject:v12];
            if (v14 == 0x7FFFFFFFFFFFFFFFLL || v14 >= [(__CFArray *)v6 count])
            {
              v13 = _LSDefaultLog();
              if (os_log_type_enabled(v13, OS_LOG_TYPE_DEBUG))
              {
                *buf = 138543618;
                v40 = v12;
                v41 = 2114;
                v42 = v6;
                _os_log_debug_impl(&dword_18162D000, v13, OS_LOG_TYPE_DEBUG, "Unexpected: localization %{public}@ was not found in bundle localizations list %{public}@", buf, 0x16u);
              }
            }

            else
            {
              v15 = v32;
              [(_LSDatabase *)v32 store];
              ValueAtIndex = _CSArrayGetValueAtIndex();
              v17 = v32;
              [(_LSDatabase *)v32 store];
              v18 = _CSStringCopyCFString();
              v13 = v18;
              if (v18)
              {
                if ([v18 length])
                {

                  goto LABEL_41;
                }
              }

              else
              {
                if (!ValueAtIndex)
                {
                  goto LABEL_33;
                }

                v19 = _LSDefaultLog();
                if (os_log_type_enabled(v19, OS_LOG_TYPE_DEBUG))
                {
                  *buf = 134218754;
                  v40 = v14;
                  v41 = 2114;
                  v42 = v12;
                  v43 = 2048;
                  v44 = v31;
                  v45 = 2048;
                  v46 = v31;
                  _os_log_debug_impl(&dword_18162D000, v19, OS_LOG_TYPE_DEBUG, "Unexpected: could not get value #%lu (key %{public}@) from localized name array %llu(%llx)", buf, 0x2Au);
                }
              }
            }
          }

          ++v11;
        }

        while (v9 != v11);
        v20 = [(__CFArray *)v8 countByEnumeratingWithState:&v35 objects:v47 count:16];
        v9 = v20;
      }

      while (v20);
    }

LABEL_33:

    if ([(__CFArray *)v8 count]&& [(__CFArray *)v6 indexOfObject:@"LSDefaultLocalizedValue"]!= 0x7FFFFFFFFFFFFFFFLL)
    {
      v13 = _LSDatabaseGetNSStringFromArray(v32);
      v23 = @"🔴";
    }

    else
    {
      v13 = 0;
LABEL_41:
      v23 = @"❇️";
    }
  }

  if (v13 && [__LSDefaultsGetSharedInstance() markLocalizationsStoredInDatabase])
  {
    v24 = [v13 stringByAppendingString:v23];

    v13 = v24;
  }

LABEL_47:
  objc_autoreleasePoolPop(context);

  v25 = *MEMORY[0x1E69E9840];

  return v13;
}

id _LSDatabaseGetNSStringFromArray(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v2 = v1[5];
  }

  _CSArrayGetValueAtIndex();
  v3 = v1;
  if (v1)
  {
    v4 = v1[5];
  }

  v5 = _CSStringCopyCFString();

  return v5;
}

id _LSLazyLoadObjectOnQueue(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__20;
  v23 = __Block_byref_object_dispose__20;
  v24 = 0;
  if (!a1)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id _LSLazyLoadObjectOnQueue(__strong id volatile *, __strong dispatch_queue_t _Nonnull, NS_NOESCAPE _LSLazyLoadGenerator __strong)"}];
    [v10 handleFailureInFunction:v11 file:@"LSDispatchUtils.mm" lineNumber:164 description:{@"Invalid parameter not satisfying: %@", @"ioAddress != NULL"}];

    if (v5)
    {
      goto LABEL_3;
    }

LABEL_10:
    v12 = [MEMORY[0x1E696AAA8] currentHandler];
    v13 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"id _LSLazyLoadObjectOnQueue(__strong id volatile *, __strong dispatch_queue_t _Nonnull, NS_NOESCAPE _LSLazyLoadGenerator __strong)"}];
    [v12 handleFailureInFunction:v13 file:@"LSDispatchUtils.mm" lineNumber:165 description:{@"Invalid parameter not satisfying: %@", @"inQueue != NULL"}];

    goto LABEL_3;
  }

  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_3:
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = ___LSLazyLoadObjectOnQueue_block_invoke;
  block[3] = &unk_1E6A1BE80;
  block[4] = &v19;
  block[5] = a1;
  dispatch_sync(v5, block);
  v7 = v20[5];
  if (v6 && !v7)
  {
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = ___LSLazyLoadObjectOnQueue_block_invoke_2;
    v14[3] = &unk_1E6A1BEA8;
    v17 = a1;
    v15 = v6;
    v16 = &v19;
    dispatch_barrier_sync(v5, v14);

    v7 = v20[5];
  }

  v8 = v7;
  _Block_object_dispose(&v19, 8);

  return v8;
}

void sub_18164FFD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, id a28)
{
  _Block_object_dispose(&a23, 8);

  _Unwind_Resume(a1);
}

id _LSExtensionsLog()
{
  if (_LSExtensionsLog_onceToken != -1)
  {
    _LSExtensionsLog_cold_1();
  }

  v1 = _LSExtensionsLog_log;

  return v1;
}

id _LSDataSeparationLog()
{
  if (_LSDataSeparationLog_onceToken != -1)
  {
    _LSDataSeparationLog_cold_1();
  }

  v1 = _LSDataSeparationLog_log;

  return v1;
}

id LaunchServices::URLPropertyProvider::prepareValues(__CFURL const*,__FileCache *,__CFString const* const*,void const**,long,void const*,__CFError **)::$_0::operator()(void ***a1)
{
  v2 = **a1;
  if (v2)
  {
    goto LABEL_15;
  }

  v3 = a1[3];
  if (os_unfair_lock_trylock(&LaunchServices::URLPropertyProvider::reusableNodeLock))
  {
    if (LaunchServices::URLPropertyProvider::reusableNode)
    {
      v4 = LaunchServices::URLPropertyProvider::reusableNode;
      v5 = LaunchServices::URLPropertyProvider::reusableNode;
      LaunchServices::URLPropertyProvider::reusableNode = 0;

      os_unfair_lock_unlock(&LaunchServices::URLPropertyProvider::reusableNodeLock);
      v6 = [v4 initWithURL:v3 flags:64 error:0];
      v7 = v6;
      if (v6)
      {
        v8 = v6;
      }

      goto LABEL_9;
    }

    os_unfair_lock_unlock(&LaunchServices::URLPropertyProvider::reusableNodeLock);
  }

  v7 = 0;
LABEL_9:
  v9 = **a1;
  **a1 = v7;

  v2 = **a1;
  if (!v2)
  {
    v10 = [FSNode alloc];
    v11 = a1[3];
    if (a1[2] && (v12 = a1[1]) != 0)
    {
      obj = *v12;
      v13 = [(FSNode *)v10 initWithURL:v11 flags:64 error:&obj];
      objc_storeStrong(v12, obj);
    }

    else
    {
      v13 = [(FSNode *)v10 initWithURL:v11 flags:64 error:0];
    }

    v14 = **a1;
    **a1 = v13;

    v2 = **a1;
  }

LABEL_15:

  return v2;
}

uint64_t LaunchServices::TypeEvaluator::PrepareMimicForTypeEvaluation(void *a1, uint64_t a2)
{
  result = _LSPrepareMimicForBundleClass(a1, a2);
  if (result)
  {
    v8[0] = sel_isSymbolicLink;
    v8[1] = sel_isAliasFile;
    v8[2] = sel_isRegularFile;
    v8[3] = sel_nameWithError_;
    v8[4] = sel_isExecutable;
    v5 = a1;
    v6 = 0;
    LOBYTE(v7) = 1;
    do
    {
      while (!v7)
      {
        LOBYTE(v7) = 0;
        if (++v6 == 5)
        {

          return 0;
        }
      }

      v7 = [v5 populateSimpleSelector:v8[v6++] error:a2];
    }

    while (v6 != 5);

    if (v7)
    {
      return [v5 populateValueForKey:*MEMORY[0x1E695DB20] error:a2];
    }

    return 0;
  }

  return result;
}

uint64_t _LSPrepareMimicForBundleClass(void *a1, uint64_t a2)
{
  v3 = a1;
  if (_LSPrepareMimicForIsPackage(v3, a2))
  {
    v8[0] = sel_isResolvable;
    v8[1] = sel_pathWithError_;
    v8[2] = sel_getInodeNumber_error_;
    v4 = v3;
    v5 = 0;
    LOBYTE(v6) = 1;
    do
    {
      if (v6)
      {
        v6 = [v4 populateSimpleSelector:v8[v5] error:a2];
      }

      else
      {
        v6 = 0;
      }

      ++v5;
    }

    while (v5 != 3);
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

uint64_t LaunchServices::URLPropertyProvider::prepareValues(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, void **a7)
{
  v73 = 0;
  v74 = &v73;
  v75 = 0x2020000000;
  v76 = 1;
  location = 0;
  v11 = objc_autoreleasePoolPush();
  v71 = 0;
  v70 = 0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v63[0] = 0;
  v65 = 0;
  v66 = 0;
  v62 = 0;
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v61 = 0;
    [a1 getResourceValue:&v61 forKey:@"_LSMimicKey" error:0];
    v12 = v61;
  }

  else
  {
    v12 = 0;
  }

  v60[0] = &v71;
  v60[1] = &location;
  v60[2] = a7;
  v60[3] = a1;
  v49 = a1;
  v13 = getenv("LS_FORCE_URL_PROPERTY_PREP_OOP");
  if (!v13)
  {
    if (!_LSCurrentProcessMayMapDatabase())
    {
      goto LABEL_6;
    }

LABEL_31:
    v16 = 0;
    goto LABEL_43;
  }

  v14 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v13];
  v15 = [v14 BOOLValue];

  if ((v15 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_6:
  v46 = v11;
  v47 = v12;
  if (a5 >= 1)
  {
    v50 = 0;
    v16 = 0;
    p_obj = &obj;
    if (!a7)
    {
      p_obj = 0;
    }

    v48 = p_obj;
    v18 = a3;
    v19 = a4;
    v20 = a5;
    while (1)
    {
      if (!*(v74 + 24))
      {
        goto LABEL_33;
      }

      v21 = *v19;
      if (*(*v19 + 24))
      {
        v22 = *v18;
        if (!MEMORY[0x1865D5CC0](a2, *v18, &v62))
        {
          break;
        }
      }

LABEL_27:
      ++v19;
      ++v18;
      if (!--v20)
      {
        goto LABEL_33;
      }
    }

    if (v50)
    {
      if (v16)
      {
LABEL_15:
        v16 = v16;
        goto LABEL_21;
      }
    }

    else
    {
      v50 = objc_alloc_init(MEMORY[0x1E695DFA8]);
      if (v16)
      {
        goto LABEL_15;
      }
    }

    v23 = LaunchServices::URLPropertyProvider::prepareValues(__CFURL const*,__FileCache *,__CFString const* const*,void const**,long,void const*,__CFError **)::$_0::operator()(v60);
    if (v23)
    {
      v24 = [[FSMimicPopulator alloc] initWithNode:v23];
    }

    else
    {
      v24 = 0;
    }

    v16 = v24;
    if (!v16)
    {
      *(v74 + 24) = 0;
LABEL_26:

      goto LABEL_27;
    }

LABEL_21:
    v25 = *(v21 + 24);
    if (a7)
    {
      obj = location;
    }

    v26 = v25(v16, a2, v22, v63, v48);
    if (a7)
    {
      objc_storeStrong(&location, obj);
    }

    *(v74 + 24) = v26;
    [v50 addObject:{v22, v46}];
    goto LABEL_26;
  }

  v16 = 0;
  v50 = 0;
LABEL_33:
  v12 = v47;
  if (*(v74 + 24))
  {
    v11 = v46;
    if ([v50 count])
    {
      v57[0] = 0;
      v57[1] = v57;
      v57[2] = 0x3032000000;
      v57[3] = __Block_byref_object_copy__51;
      v57[4] = __Block_byref_object_dispose__51;
      v58 = 0;
      v56[0] = MEMORY[0x1E69E9820];
      v56[1] = 3221225472;
      v56[2] = ___ZN14LaunchServices19URLPropertyProviderL13prepareValuesEPK7__CFURLP11__FileCachePKPK10__CFStringPPKvlSC_PP9__CFError_block_invoke;
      v56[3] = &unk_1E6A18DF0;
      v56[4] = v57;
      v27 = [(_LSDService *)_LSDReadService synchronousXPCProxyWithErrorHandler:v56];
      if (!v16)
      {
        v28 = LaunchServices::URLPropertyProvider::prepareValues(__CFURL const*,__FileCache *,__CFString const* const*,void const**,long,void const*,__CFError **)::$_0::operator()(v60);
        if (v28)
        {
          v16 = [[FSMimicPopulator alloc] initWithNode:v28];
        }

        else
        {
          v16 = 0;
        }
      }

      v16 = v16;
      v29 = [(FSMimicPopulator *)v16 mimic];
      v30 = [__LSDefaultsGetSharedInstance() preferredLocalizations];
      v55[0] = MEMORY[0x1E69E9820];
      v55[1] = 3221225472;
      v55[2] = ___ZN14LaunchServices19URLPropertyProviderL13prepareValuesEPK7__CFURLP11__FileCachePKPK10__CFStringPPKvlSC_PP9__CFError_block_invoke_2;
      v55[3] = &unk_1E6A1E608;
      v55[4] = &v73;
      v55[5] = v57;
      v55[6] = a2;
      [v27 getResourceValuesForKeys:v50 mimic:v29 preferredLocalizations:v30 completionHandler:v55];

      _Block_object_dispose(v57, 8);
    }
  }

  else
  {
    v11 = v46;
  }

LABEL_43:
  if (a5 >= 1)
  {
    if (a7)
    {
      v31 = &v54;
    }

    else
    {
      v31 = 0;
    }

    do
    {
      if (!*(v74 + 24))
      {
        break;
      }

      v32 = *a4;
      if (*(*a4 + 16))
      {
        v33 = *a3;
        if (!MEMORY[0x1865D5CC0](a2, *a3, &v62))
        {
          v34 = v12;
          if (v12)
          {
            v35 = v34;
            v36 = v74;
          }

          else
          {
            v37 = LaunchServices::URLPropertyProvider::prepareValues(__CFURL const*,__FileCache *,__CFString const* const*,void const**,long,void const*,__CFError **)::$_0::operator()(v60);
            v36 = v74;
            if (v37)
            {
              v35 = v37;
            }

            else
            {
              v35 = 0;
              *(v74 + 24) = 0;
            }
          }

          if (*(v36 + 24))
          {
            if (a7)
            {
              v54 = location;
            }

            v38 = (*(v32 + 16))(&v67, v35, a2, v33, v63, v31);
            if (a7)
            {
              objc_storeStrong(&location, v54);
            }

            if (!v38)
            {
              *(v74 + 24) = 0;
            }
          }
        }
      }

      ++a4;
      ++a3;
      --a5;
    }

    while (a5);
  }

  v39 = v71;
  v40 = v71;
  if (v40 && os_unfair_lock_trylock(&LaunchServices::URLPropertyProvider::reusableNodeLock))
  {
    if (!LaunchServices::URLPropertyProvider::reusableNode)
    {
      [v40 prepareForReuse];
      objc_storeStrong(&LaunchServices::URLPropertyProvider::reusableNode, v39);
    }

    os_unfair_lock_unlock(&LaunchServices::URLPropertyProvider::reusableNodeLock);
  }

  v41 = v71;
  v71 = 0;

  if (a7 && !*(v74 + 24))
  {
    v53 = location;
    LaunchServices::URLPropertyProvider::normalizeError(v49, 0, &v53);
    objc_storeStrong(&location, v53);
    *a7 = location;
  }

  if (v65 == 1)
  {
  }

  if (v67 && v69 == 1)
  {
    _LSContextDestroy(v67);
  }

  v42 = v68;
  v67 = 0;
  v68 = 0;

  v69 = 0;
  v43 = v70;
  v70 = 0;

  objc_autoreleasePoolPop(v11);
  v44 = *(v74 + 24);

  _Block_object_dispose(&v73, 8);
  return v44;
}

void sub_181650B44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, void *a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, char a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, id a35)
{
  _Block_object_dispose(&a30, 8);

  if (*(v36 - 208) == 1)
  {
  }

  LaunchServices::Database::Context::~Context((v36 - 192));

  _Block_object_dispose((v36 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t _LSPrepareMimicForIsPackage(void *a1, uint64_t a2)
{
  v8[0] = sel_isDirectory;
  v8[1] = sel_isVolume;
  v8[2] = sel_hasPackageBit;
  v8[3] = sel_extensionWithError_;
  v8[4] = sel_isAVCHDCollection;
  v3 = a1;
  v4 = 0;
  LOBYTE(v5) = 1;
  do
  {
    while (!v5)
    {
      LOBYTE(v5) = 0;
      if (++v4 == 5)
      {

        goto LABEL_9;
      }
    }

    v5 = [v3 populateSimpleSelector:v8[v4++] error:a2];
  }

  while (v4 != 5);

  if (v5)
  {
    v6 = [v3 populateHFSTypeAndCreatorWithError:a2];
    goto LABEL_10;
  }

LABEL_9:
  v6 = 0;
LABEL_10:

  return v6;
}

void *std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::__emplace_unique_key_args<_opaque_pthread_t *,std::piecewise_construct_t const&,std::tuple<_opaque_pthread_t *&&>,std::tuple<std::shared_ptr<LaunchServices::PerThreadContext>&&>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t _LSIsKindOfClasses(void *a1, void *a2)
{
  v19 = *MEMORY[0x1E69E9840];
  v3 = a1;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v4 = a2;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v15;
    while (2)
    {
      v8 = 0;
      do
      {
        if (*v15 != v7)
        {
          objc_enumerationMutation(v4);
        }

        v9 = *(*(&v14 + 1) + 8 * v8);
        if (objc_opt_isKindOfClass())
        {

          isKindOfClass = 1;
          goto LABEL_15;
        }

        ++v8;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

  if (_LSClassListContainsBundleRecord(v4))
  {
    v10 = _LSDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEBUG))
    {
      _LSIsKindOfClasses_cold_1(v10);
    }

    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();
  }

  else
  {
    isKindOfClass = 0;
  }

LABEL_15:

  v12 = *MEMORY[0x1E69E9840];
  return isKindOfClass & 1;
}

double ___ZL27_FSNodeInfoLifetimeAbsolutev_block_invoke()
{
  v0 = _LSGetMachTimebase();
  result = 5000000000.0 / (v0 / HIDWORD(v0));
  _FSNodeInfoLifetimeAbsolute(void)::nodeInfoLifetimeAbsolute = result;
  return result;
}

uint64_t _LSGetMachTimebase()
{
  if (_LSGetMachTimebase::once != -1)
  {
    _LSGetMachTimebase_cold_1();
  }

  return _LSGetMachTimebase::info;
}

uint64_t _LSDatabaseGetSessionStatus()
{
  os_unfair_recursive_lock_lock_with_options();
  v0 = _LSServer_SelfSessionKey();
  v1 = _LSGetSession(v0);
  v2 = v1;
  if (*(v1 + 20))
  {
    v3 = 128;
  }

  else
  {
    v3 = 0;
  }

  v4 = v3 & 0xFFFFFBFF | ((((*(v1 + 20) & 2) >> 1) & 1) << 10);
  v5 = *(v1 + 24);
  if (v5)
  {
    v6 = v5;
    v7 = [(_LSDatabase *)*(v2 + 24) isSeedingComplete];

    if (v7)
    {
      v4 = v4;
    }

    else
    {
      v4 = v4 | 0x200;
    }
  }

  v8 = *(v2 + 24);
  if (v8)
  {
    v9 = v8;
    v10 = [(_LSDatabase *)*(v2 + 24) isSeeded];

    if (v10)
    {
      v4 = v4 | 0x100;
    }

    else
    {
      v4 = v4;
    }
  }

  os_unfair_recursive_lock_unlock();
  return v4;
}

void sub_181651814(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, void *__p, uint64_t a11, int a12, __int16 a13, char a14, char a15)
{
  if (a15 < 0)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void LSDBHeader::GetCurrentBuildVersion(std::string *a1@<X8>)
{
  a1->__r_.__value_.__r.__words[0] = 0;
  a1->__r_.__value_.__l.__size_ = 0;
  a1->__r_.__value_.__r.__words[2] = 0;
  v5 = _LSGetCurrentSystemBuildVersionString();
  if (v5)
  {
    v3 = [v5 UTF8String];
    if (v3)
    {
      v4 = v3;
    }

    else
    {
      v4 = "";
    }

    std::string::__assign_external(a1, v4);
  }
}

void sub_181651A2C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (*(v10 + 23) < 0)
  {
    operator delete(*v10);
  }

  _Unwind_Resume(a1);
}

uint64_t _LSServer_CopyLocalDatabase(void *a1)
{
  v2 = _LSServer_DatabaseExecutionContext();
  v3 = v2;
  if (v2)
  {
    [(LSDBExecutionContext *)v2 assertActiveForThisThread];
    v4 = [(LSDBExecutionContext *)v3 getPerThreadDatabaseWithError:a1];
  }

  else
  {
    v5 = _LSServer_SelfSessionKey();
    v4 = _LSCopyLocalDatabase(v5, a1);
  }

  v6 = v4;

  return v6;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s)
{
  v4 = strlen(__s);

  return std::string::__assign_external(this, __s, v4);
}

id _LSPrivacyLog()
{
  if (_LSPrivacyLog_onceToken != -1)
  {
    _LSPrivacyLog_cold_1();
  }

  v1 = _LSPrivacyLog_log;

  return v1;
}

void __Block_byref_object_dispose__4(uint64_t a1)
{
}

{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void __Block_byref_object_dispose__6(id *a1)
{
  v3 = a1 + 29;
  std::vector<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::MallocZoneAllocator<LaunchServices::BindingEvaluation::ExtendedBinding,LaunchServices::BindingEvaluation::BindingMallocZone>>::__destroy_vector::operator()[abi:nn200100](&v3);
  LaunchServices::BindingEvaluator::~BindingEvaluator(a1 + 7, v2);
}

void __Block_byref_object_dispose__7(uint64_t a1)
{
}

{
}

void __Block_byref_object_dispose__8(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void __Block_byref_object_dispose__11(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void __Block_byref_object_dispose__15(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void __Block_byref_object_dispose__17(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void __Block_byref_object_dispose__24(uint64_t a1)
{
}

{
  v1 = (a1 + 48);
  std::vector<LaunchServices::Types::EnumeratedTypeUnitOrDynamicTypeIdentifier>::__destroy_vector::operator()[abi:nn200100](&v1);
}

void __Block_byref_object_dispose__28(uint64_t a1)
{
}

{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void __Block_byref_object_dispose__29(uint64_t a1)
{
}

{
}

void __Block_byref_object_dispose__32(uint64_t a1)
{
  v1 = (a1 + 48);
  std::vector<LaunchServices::FeatureFlagPredicateEvaluation::FeatureFlagSpecifier>::__destroy_vector::operator()[abi:nn200100](&v1);
}

{
}

void __Block_byref_object_dispose__42(uint64_t a1)
{
  v2 = *(a1 + 48);
  if (v2)
  {
    *(a1 + 56) = v2;
    operator delete(v2);
  }
}

void __Block_byref_object_dispose__43(uint64_t a1)
{
}

{
  v2 = *(a1 + 48);
  if (v2)
  {
    CFRelease(v2);
  }

  *(a1 + 48) = 0;
}

void __Block_byref_object_dispose__53(uint64_t a1)
{
}

{
}

uint64_t _LSGetCurrentSystemBuildVersionString()
{
  if (_LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::once != -1)
  {
    _LSVersionNumberGetCurrentSystemVersion_cold_1();
  }

  return _LSGetCurrentSystemIOSSupportAndBuildVersions(LSVersionNumber *,LSVersionNumber *,__CFString const**,LSVersionNumber *,__CFString const**)::cachedBuildVersion;
}

_LSDatabase *_LSDatabaseCreate(void *a1, LSSessionKey a2, const void *a3, void *a4)
{
  v7 = a1;
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    v8 = _LSServer_DatabaseExecutionContext();
    v9 = [(LSDBExecutionContext *)v8 rawWriteAccessContextForDBInit];
  }

  else
  {
    v9 = 0;
  }

  v10 = a2;
  v11 = _LSDatabaseCreateWithAccessContext(v7, v10, a3, v9, a4);

  return v11;
}

_LSDatabase *_LSDatabaseCreateWithAccessContext(void *a1, LSSessionKey a2, const void *a3, uint64_t a4, void *a5)
{
  v89 = *MEMORY[0x1E69E9840];
  v65 = a1;
  v67 = 0;
  if (!a3)
  {
    v72 = *MEMORY[0x1E696A278];
    v73 = @"inStore";
    v14 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v73 forKeys:&v72 count:1];
    v15 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, v14, "_LSDatabaseCreateWithAccessContext", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 1390);
    v16 = v67;
    v67 = v15;

    goto LABEL_53;
  }

  v9 = [[_LSDatabase alloc] _init];
  v10 = v9;
  if (!v9)
  {
    v17 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -41, 0, "_LSDatabaseCreateWithAccessContext", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 1385);
    v18 = v67;
    v67 = v17;

    goto LABEL_53;
  }

  objc_storeStrong(v9 + 1, a1);
  v10->sessionKey = a2;
  if (![__LSDefaultsGetSharedInstance() isServer])
  {
    v19 = CFRetain(a3);
    v10->_store = v19;
    goto LABEL_12;
  }

  MutableCopy = CSStoreCreateMutableCopy();
  v10->_store = MutableCopy;
  p_store = &v10->_store;
  if (!MutableCopy)
  {
    v20 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v20, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseCreateWithAccessContext_cold_1(&v67);
    }

    v10 = 0;
    v19 = MEMORY[0x28];
LABEL_12:
    p_store = &v10->_store;
    v13 = v10;
    if (!v19)
    {
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v13 = v10;
LABEL_13:
  if ([__LSDefaultsGetSharedInstance() isServer])
  {
    objc_initWeak(location, v13);
    v21 = *p_store;
    objc_copyWeak(&v66, location);
    _CSStoreSetUnitIdentifierExhaustionHandler();
    objc_destroyWeak(&v66);
    objc_destroyWeak(location);
  }

LABEL_15:
  v22 = *p_store;
  if (*p_store)
  {
    p_schema = &v13->_schema;
    v24 = v67;
    v71 = 0;
    v25 = _LSSchemaConfigureTable(v22, @"DB Header", &v13->_schema.headerTable, &v71);
    v26 = v71;
    if (!v25)
    {
LABEL_37:
      v39 = v26;
      goto LABEL_44;
    }

    LODWORD(v70) = 0;
    headerTable = p_schema->headerTable;
    Header = CSStoreGetHeader();
    v29 = Header;
    if (!Header)
    {
      v39 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10817, &unk_1EEF8F150, "_LSSchemaConfigureForStore", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 507);
LABEL_43:

      goto LABEL_44;
    }

    if (v70 == 208)
    {
      v30 = *Header;
      if (v30 != [__LSDefaultsGetSharedInstance() currentSchemaVersion])
      {
        *buf = @"WrongSchemaVersion";
        v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:*v29];
        v75 = @"CurrentSchemaVersion";
        location[0] = v55;
        v56 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(__LSDefaultsGetSharedInstance(), "currentSchemaVersion")}];
        location[1] = v56;
        v58 = [MEMORY[0x1E695DF20] dictionaryWithObjects:location forKeys:buf count:2];
        v39 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10817, v58, "_LSSchemaConfigureForStore", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 487);

        v26 = v58;
        goto LABEL_42;
      }

      if (v29[1] == 208)
      {
        v31 = &unk_1E6A1B768;
        v32 = 192;
        while (1)
        {
          v33 = *(v31 - 1);
          v34 = *v31;
          v70 = v26;
          v35 = _LSSchemaConfigureTable(v22, v33, (&p_schema->headerTable + v34), &v70);
          v36 = v70;

          v26 = v36;
          if (!v35)
          {
            goto LABEL_37;
          }

          v31 += 2;
          v32 -= 16;
          if (!v32)
          {
            v37 = CSBindableKeyMapInit();
            v69 = v36;
            v38 = _LSGetNSErrorFromOSStatusImpl(v37, &v69, 0, "_LSSchemaConfigureForStore", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 524);
            v39 = v69;

            if (v38)
            {
              v40 = 0;
              bindingMaps = v13->_schema.bindingMaps;
              v42 = &byte_1E6A1B510;
              v64 = *MEMORY[0x1E696A768];
              v43 = v39;
              do
              {
                v68 = v43;
                v44 = *(v42 - 1);
                if (!v44 || (v45 = strlen(*(v42 - 1)), _CSGetStringForCharacters()))
                {
                  v49 = *(v42 - 2);
                  v50 = *v42;
                  v51 = CSStringBindingStoreInit();
                  v48 = _LSGetNSErrorFromOSStatusImpl(v51, &v68, 0, "_LSSchemaConfigureBindingMap", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 452);
                }

                else
                {
                  *buf = @"BindingClassName";
                  v46 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v44];
                  location[0] = v46;
                  v47 = [MEMORY[0x1E695DF20] dictionaryWithObjects:location forKeys:buf count:1];
                  v68 = _LSMakeNSErrorImpl(v64, -10817, v47, "_LSSchemaConfigureBindingMap", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 447);

                  v48 = 0;
                }

                v39 = v68;

                v53 = v40++ < 0xD && v48;
                ++bindingMaps;
                v42 += 32;
                v43 = v39;
              }

              while (v53);
              if (v48)
              {
                v54 = 1;
                goto LABEL_45;
              }
            }

            goto LABEL_44;
          }
        }
      }

      *buf = @"WrongHeaderLength";
      v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      v75 = @"ExpectedHeaderLength";
      location[0] = v55;
      location[1] = &unk_1EEF8EF18;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:location forKeys:buf count:2];
      v57 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10817, v56, "_LSSchemaConfigureForStore", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 491);
    }

    else
    {
      *buf = @"WrongHeaderLength";
      v55 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
      v75 = @"ExpectedHeaderLength";
      location[0] = v55;
      location[1] = &unk_1EEF8EF18;
      v56 = [MEMORY[0x1E695DF20] dictionaryWithObjects:location forKeys:buf count:2];
      v57 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10817, v56, "_LSSchemaConfigureForStore", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 483);
    }

    v39 = v57;
LABEL_42:

    v26 = v55;
    goto LABEL_43;
  }

  v39 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -50, 0, "_LSSchemaConfigureForStore", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 468);
LABEL_44:
  v59 = v39;
  v54 = 0;
  v24 = v39;
LABEL_45:

  objc_storeStrong(&v67, v24);
  if (v54)
  {
    if (v13)
    {
      [_LSDatabase setAccessContext:v13];
      v60 = _LSDatabaseGetLog();
      if (os_log_type_enabled(v60, OS_LOG_TYPE_DEBUG))
      {
        v87 = 0u;
        v88 = 0u;
        v85 = 0u;
        v86 = 0u;
        v83 = 0u;
        v84 = 0u;
        v81 = 0u;
        v82 = 0u;
        v79 = 0u;
        v80 = 0u;
        v77 = 0u;
        v78 = 0u;
        *location = 0u;
        _LSDatabaseGetHeader(v13, location);
        _LSDatabaseCreateWithAccessContext_cold_3(location, buf, v60);
      }

      goto LABEL_55;
    }
  }

  else
  {
    v61 = _LSDatabaseGetLog();
    if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
    {
      _LSDatabaseCreateWithAccessContext_cold_2(&v67);
    }
  }

LABEL_53:
  v13 = 0;
  if (a5)
  {
    *a5 = v67;
  }

LABEL_55:

  v62 = *MEMORY[0x1E69E9840];
  return v13;
}

_BYTE *std::string::basic_string[abi:nn200100]<0>(_BYTE *a1, char *__s)
{
  v4 = strlen(__s);
  if (v4 >= 0x7FFFFFFFFFFFFFF8)
  {
    std::vector<os_eligibility_answer_t>::__throw_length_error[abi:nn200100]();
  }

  v5 = v4;
  if (v4 >= 0x17)
  {
    operator new();
  }

  a1[23] = v4;
  if (v4)
  {
    memmove(a1, __s, v4);
  }

  a1[v5] = 0;
  return a1;
}

std::string *__cdecl std::string::__assign_external(std::string *this, const std::string::value_type *__s, std::string::size_type __n)
{
  size = SHIBYTE(this->__r_.__value_.__r.__words[2]);
  if ((size & 0x8000000000000000) != 0)
  {
    v9 = this->__r_.__value_.__r.__words[2];
    v8 = (v9 & 0x7FFFFFFFFFFFFFFFLL) - 1;
    if (v8 < __n)
    {
      size = this->__r_.__value_.__l.__size_;
      goto LABEL_6;
    }

    size = HIBYTE(v9);
    v7 = this->__r_.__value_.__r.__words[0];
  }

  else
  {
    v7 = this;
    if (__n > 0x16)
    {
      v8 = 22;
LABEL_6:
      std::string::__grow_by_and_replace(this, v8, __n - v8, size, 0, size, __n, __s);
      return this;
    }
  }

  if (__n)
  {
    memmove(v7, __s, __n);
    LOBYTE(size) = *(&this->__r_.__value_.__s + 23);
  }

  if ((size & 0x80) != 0)
  {
    this->__r_.__value_.__l.__size_ = __n;
  }

  else
  {
    *(&this->__r_.__value_.__s + 23) = __n & 0x7F;
  }

  v7->__r_.__value_.__s.__data_[__n] = 0;
  return this;
}

void sub_181652CBC(_Unwind_Exception *a1)
{
  v3 = v2;
  MEMORY[0x1865D6250](v3, 0x10A0C40C3103133);

  _Unwind_Resume(a1);
}

void _LSSchemaCache::_LSSchemaCache(_LSSchemaCache *this)
{
  *this = 0;
  *(this + 8) = 0u;
  *(this + 24) = 0u;
  *(this + 10) = 1065353216;
  *(this + 3) = 0u;
  *(this + 4) = 0u;
  *(this + 20) = 1065353216;
  *(this + 88) = 0u;
  *(this + 104) = 0u;
  *(this + 120) = 0u;
  *(this + 132) = 0u;
}

void _LSServer_GetServerStoreForConnectionWithCompletionHandler(void *a1, void *a2)
{
  v29[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  _LSAssertRunningInServer("void _LSServer_GetServerStoreForConnectionWithCompletionHandler(NSXPCConnection *__strong, void (^__strong)(__strong id, FSNode *__strong, NSError *__strong))");
  v5 = _LSServer_DatabaseExecutionContext();
  [(LSDBExecutionContext *)v5 assertActiveForThisThread];

  v6 = [v3 _xpcConnection];
  v7 = _LSXPCConnectionMayMapDatabase(v6);

  if (v7)
  {
    v21 = 0;
    v8 = _LSServer_CopyLocalDatabase(&v21);
    v9 = v21;
    if (v8 && ([(_LSDatabase *)v8 isSeeded]& 1) != 0)
    {
      goto LABEL_7;
    }

    v10 = _LSDefaultLog();
    if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
    {
      v18 = [(_LSDatabase *)v8 isSeeded];
      *buf = 138412802;
      v23 = v8;
      v24 = 1024;
      v25 = v18;
      v26 = 2114;
      v27 = v9;
      _os_log_error_impl(&dword_18162D000, v10, OS_LOG_TYPE_ERROR, "_LSServer_CopyLocalDatabase returned db %@ (seeded? %d) error %{public}@", buf, 0x1Cu);
    }

    v11 = os_transaction_create();
    v12 = _LSServer_GetIOQueue();
    v19[0] = MEMORY[0x1E69E9820];
    v19[1] = 3221225472;
    v19[2] = ___LSServer_GetServerStoreForConnectionWithCompletionHandler_block_invoke;
    v19[3] = &unk_1E6A1A830;
    v20 = v11;
    v13 = v11;
    dispatch_async(v12, v19);

    if (v8)
    {
LABEL_7:
      v14 = v8;
      v15 = [(_LSDatabase *)v8 store];
      v16 = _LSDatabaseGetNode(v8);
      v4[2](v4, v15, v16, 0);
    }

    else
    {
      (v4)[2](v4, 0, 0, v9);
    }
  }

  else
  {
    v28 = *MEMORY[0x1E696A278];
    v29[0] = @"process may not map database";
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v29 forKeys:&v28 count:1];
    v8 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -54, v9, "_LSServer_GetServerStoreForConnectionWithCompletionHandler", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDReadService.mm", 72);
    (v4)[2](v4, 0, 0, v8);
  }

  v17 = *MEMORY[0x1E69E9840];
}

BOOL _LSSchemaConfigureTable(uint64_t a1, uint64_t a2, _DWORD *a3, void *a4)
{
  v13[1] = *MEMORY[0x1E69E9840];
  TableWithName = _CSStoreGetTableWithName();
  v8 = TableWithName;
  if (TableWithName)
  {
    *a3 = TableWithName;
  }

  else if (a4)
  {
    v12 = @"TableName";
    v13[0] = a2;
    v9 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v13 forKeys:&v12 count:1];
    *a4 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -9499, v9, "_LSSchemaConfigureTable", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSDatabase.mm", 430);
  }

  result = v8 != 0;
  v11 = *MEMORY[0x1E69E9840];
  return result;
}

__int128 *_LSXPCConnectionMayMapDatabase(void *a1)
{
  v1 = a1;
  if (v1)
  {
    xpc_connection_get_audit_token();
    v2 = _LSAuditTokenMayMapDatabase(&v4);
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

id _LSGetDispatchTokenQueue(void)
{
  if (_LSGetDispatchTokenQueue(void)::once != -1)
  {
    _LSGetDispatchTokenQueue();
  }

  v1 = _LSGetDispatchTokenQueue(void)::result;

  return v1;
}

void ___ZL24_LSGetDispatchTokenQueuev_block_invoke()
{
  v2 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
  v0 = dispatch_queue_create("LS database changed notification queue", v2);
  v1 = _LSGetDispatchTokenQueue(void)::result;
  _LSGetDispatchTokenQueue(void)::result = v0;
}

id _LSDServiceReplaceObject(objc_object *a1)
{
  v1 = a1;
  objc_opt_class();
  v2 = v1;
  if (objc_opt_isKindOfClass())
  {
    v2 = v1;
    if (([(objc_object *)v1 isMemberOfClass:objc_opt_class()]& 1) == 0)
    {
      v3 = objc_alloc(MEMORY[0x1E695DFF8]);
      v4 = [(objc_object *)v1 absoluteString];
      v2 = [v3 initWithString:v4];
    }
  }

  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = [(objc_object *)v1 backtraceString];

    v2 = v5;
  }

  return v2;
}

void *availabilityStateForServiceDomain(_LSDServiceDomain *a1)
{
  v1 = a1;
  if (availabilityStateForServiceDomain(_LSDServiceDomain *)::onceToken != -1)
  {
    availabilityStateForServiceDomain();
  }

  os_unfair_lock_lock(&availabilityStateForServiceDomain(_LSDServiceDomain *)::m);
  v2 = availabilityStateForServiceDomain(_LSDServiceDomain *)::sessionQuickAvailabilityMap;
  v5[0] = [(_LSDServiceDomain *)v1 resolvedSessionKey];
  v5[2] = v5;
  v3 = std::__hash_table<std::__hash_value_type<LSSessionKey,LSQuickSessionAvailabilityState>,std::__unordered_map_hasher<LSSessionKey,std::__hash_value_type<LSSessionKey,LSQuickSessionAvailabilityState>,LSSessionKeyHasher,LSSessionKeyComparator,true>,std::__unordered_map_equal<LSSessionKey,std::__hash_value_type<LSSessionKey,LSQuickSessionAvailabilityState>,LSSessionKeyComparator,LSSessionKeyHasher,true>,std::allocator<std::__hash_value_type<LSSessionKey,LSQuickSessionAvailabilityState>>>::__emplace_unique_key_args<LSSessionKey,std::piecewise_construct_t const&,std::tuple<LSSessionKey&&>,std::tuple<>>(v2, v5);
  os_unfair_lock_unlock(&availabilityStateForServiceDomain(_LSDServiceDomain *)::m);

  return v3 + 3;
}

void sub_181653530(_Unwind_Exception *a1)
{
  os_unfair_lock_unlock(&availabilityStateForServiceDomain(_LSDServiceDomain *)::m);

  _Unwind_Resume(a1);
}

void _LSSetLocalDatabase(void *a1)
{
  v3 = a1;
  os_unfair_recursive_lock_lock_with_options();
  sessionKey = v3->sessionKey;
  v2 = _LSGetSession(sessionKey);
  LSSession::setDatabase(v2, v3);
  os_unfair_recursive_lock_unlock();
}

void _LSContextInitCommon()
{
  dispatch_once(&_LSDatabaseGetNoServerLock::once, &__block_literal_global_116);
}

{
  v8 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4_0();
  OUTLINED_FUNCTION_1(&dword_18162D000, v0, v1, "Client database updated - seq#: %llu", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

{
  dispatch_once(&_LSLoggingQueue(void)::onceToken, &__block_literal_global_230);
}

uint64_t std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::erase(void *a1, uint64_t *a2)
{
  v2 = *a2;
  std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::remove(a1, a2, &__p);
  v3 = __p;
  __p = 0;
  if (v3)
  {
    std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,void *>>>::operator()[abi:nn200100](&v6, v3);
  }

  return v2;
}

void ___ZL27_LSBundleRecordMaybeLogInitP6FSNodeP8NSString_block_invoke()
{
  v0 = _LSPrivacyLog();
  v1 = os_log_type_enabled(v0, OS_LOG_TYPE_INFO);

  if (v1)
  {
    v2 = [MEMORY[0x1E696AAE8] mainBundle];
    v3 = [v2 bundleURL];
    v10 = [v3 lastPathComponent];

    if (([v10 hasSuffix:@".app"] & 1) != 0 || objc_msgSend(v10, "hasSuffix:", @".appex"))
    {
      v4 = [MEMORY[0x1E696AAE8] mainBundle];
      v5 = [v4 bundleIdentifier];
      v6 = [v5 hasPrefix:@"com.apple."];

      if (v6)
      {
        v7 = [MEMORY[0x1E696AAE8] mainBundle];
        v8 = [v7 bundleIdentifier];
        v9 = _LSBundleRecordMaybeLogInit(FSNode *,NSString *)::myBundleIDIfEnabledAndFirstParty;
        _LSBundleRecordMaybeLogInit(FSNode *,NSString *)::myBundleIDIfEnabledAndFirstParty = v8;
      }
    }
  }
}

uint64_t _LSGetBundleClassForHFSType(int a1)
{
  result = 2;
  if (a1 <= 1128547669)
  {
    if ((a1 - 1095782467) <= 9 && ((1 << (a1 - 67)) & 0x207) != 0)
    {
      return result;
    }

    return a1 == 1112425548;
  }

  if (a1 <= 1634758756)
  {
    if (a1 == 1128547670)
    {
      return result;
    }

    if (a1 == 1179473739)
    {
      return 3;
    }

    return 0;
  }

  if (a1 != 1634758757 && a1 != 1667523958 && a1 != 1684433260)
  {
    return 0;
  }

  return result;
}

void ***_ZZZN14LaunchServices15DatabaseContextL26getPerThreadStateReferenceEvEUb_EN3__08__invokeEPv(void ***result)
{
  if (result)
  {
    v1 = result;
    v2 = *result;
    if (v2 && *(v1 + 16) == 1)
    {
      _LSContextDestroy(v2);
    }

    v3 = v1[1];
    *v1 = 0;
    v1[1] = 0;

    *(v1 + 16) = 0;
    v4 = v1[3];
    v1[3] = 0;

    JUMPOUT(0x1865D6250);
  }

  return result;
}

id __LAUNCH_SERVICES_IS_GETTING_ENTITLEMENTS_FROM_THE_KERNEL__(uint64_t a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v3 = xpc_copy_entitlements_data_for_token();
  v4 = v3;
  if (!v3 || object_getClass(v3) != MEMORY[0x1E69E9E70])
  {
    v5 = 0;
    goto LABEL_17;
  }

  v6 = objc_alloc(MEMORY[0x1E695DEF0]);
  bytes_ptr = xpc_data_get_bytes_ptr(v4);
  v8 = [v6 initWithBytesNoCopy:bytes_ptr length:xpc_data_get_length(v4) freeWhenDone:0];
  if (v8)
  {
    v16 = 0;
    v9 = [MEMORY[0x1E696AE40] propertyListWithData:v8 options:0 format:0 error:&v16];
    v10 = v16;
    if (v9)
    {
      if (_NSIsNSDictionary())
      {
        v5 = [_LSLazyPropertyList lazyPropertyListWithPropertyList:v9];
LABEL_15:

        goto LABEL_16;
      }

      v11 = _LSRecordLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        v13 = objc_opt_class();
        *buf = 138412546;
        v18 = a1;
        v19 = 2114;
        v20 = v13;
        v12 = "Entitlements for audit-token-based bundle record %@ were of type %{public}@ instead of NSDictionary. Please file a radar.";
        goto LABEL_13;
      }
    }

    else
    {
      v11 = _LSRecordLog();
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        *buf = 138412546;
        v18 = a1;
        v19 = 2112;
        v20 = v10;
        v12 = "Error reading entitlements from data blob for audit-token-based bundle record %@: %@";
LABEL_13:
        _os_log_impl(&dword_18162D000, v11, OS_LOG_TYPE_ERROR, v12, buf, 0x16u);
      }
    }

    v5 = 0;
    goto LABEL_15;
  }

  v5 = 0;
LABEL_16:

LABEL_17:
  v14 = *MEMORY[0x1E69E9840];

  return v5;
}

void LSSession::setDatabase(LSSession *this, _LSDatabase *a2)
{
  v9 = a2;
  objc_storeStrong(this + 3, a2);
  v4 = *(this + 4);
  v5 = *(this + 5);
  if (v4 != v5)
  {
    do
    {
      v6 = MEMORY[0x1865D71B0](*v4);
      v7 = objc_autoreleasePoolPush();
      v6[2](v6, 0, 0, 0);
      objc_autoreleasePoolPop(v7);

      ++v4;
    }

    while (v4 != v5);
    v4 = *(this + 4);
    v5 = *(this + 5);
  }

  while (v5 != v4)
  {
    v8 = *--v5;
  }

  *(this + 5) = v4;
  std::vector<void({block_pointer} {__strong})(BOOL,_LSDatabase *,NSError *),std::allocator<void({block_pointer} {__strong})(BOOL,_LSDatabase *,NSError *)>>::shrink_to_fit(this + 4);
}

void ___ZL23yieldAppsMatchingSearchU13block_pointerFbP14_LSQueryResultP7NSErrorEU13block_pointerFbP11_LSDatabasejPK12LSBundleDataE_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, _BYTE *a4)
{
  v8 = objc_autoreleasePoolPush();
  if (*(a3 + 12))
  {
    v9 = **(a1 + 48);
    if ((*(*(a1 + 32) + 16))())
    {
      v10 = [LSApplicationProxy applicationProxyWithBundleUnitID:a2 withContext:*(a1 + 48)];
      if (v10)
      {
        *a4 = (*(*(a1 + 40) + 16))() ^ 1;
      }
    }
  }

  objc_autoreleasePoolPop(v8);
}

void LaunchServices::PerThreadContext::initialize(LaunchServices::PerThreadContext *this)
{
  if ((*(this + 17) & 1) == 0)
  {
    v2 = _LSServer_SelfSessionKey();
    v7 = 0;
    v3 = _LSCopyLocalDatabase(v2, &v7);
    v4 = v7;
    v5 = *this;
    *this = v3;

    v6 = *(this + 1);
    *(this + 1) = v4;

    *(this + 17) = 1;
  }
}

uint64_t _LSDatabaseIsMutable(void *a1)
{
  v1 = a1;
  if (v1)
  {
    v1 = v1[5];
  }

  return MEMORY[0x1EEE00998](v1);
}

uint64_t _LSClassListContainsBundleRecord(void *a1)
{
  v14 = *MEMORY[0x1E69E9840];
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v1 = a1;
  v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
  if (v2)
  {
    v3 = *v10;
    while (2)
    {
      for (i = 0; i != v2; ++i)
      {
        if (*v10 != v3)
        {
          objc_enumerationMutation(v1);
        }

        v5 = *(*(&v9 + 1) + 8 * i);
        if (v5 == LSRecord || v5 == LSBundleRecord)
        {
          v2 = 1;
          goto LABEL_14;
        }
      }

      v2 = [v1 countByEnumeratingWithState:&v9 objects:v13 count:16];
      if (v2)
      {
        continue;
      }

      break;
    }
  }

LABEL_14:

  v7 = *MEMORY[0x1E69E9840];
  return v2;
}

void LaunchServices::notifyd::NotifyToken::RegisterDispatch(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, unsigned int *a4@<X8>)
{
  v7 = a1;
  v8 = a2;
  v9 = a3;
  *a4 = -1;
  v10 = objc_autoreleasePoolPush();
  out_token = -1;
  v14 = MEMORY[0x1E69E9820];
  v15 = 3221225472;
  v16 = ___ZN14LaunchServices7notifyd11NotifyToken16RegisterDispatchEP8NSStringPU28objcproto17OS_dispatch_queue8NSObjectU13block_pointerFvvE_block_invoke;
  v17 = &unk_1E6A1D350;
  v11 = v9;
  v18 = v11;
  v12 = MEMORY[0x1865D71B0](&v14);
  v13 = v7;
  if (!notify_register_dispatch([v13 UTF8String], &out_token, v8, v12))
  {
    atomic_store(out_token, a4);
  }

  objc_autoreleasePoolPop(v10);
}

void sub_1816543F8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  LaunchServices::notifyd::NotifyToken::~NotifyToken(v15);

  _Unwind_Resume(a1);
}

uint64_t *std::vector<void({block_pointer} {__strong})(BOOL,_LSDatabase *,NSError *),std::allocator<void({block_pointer} {__strong})(BOOL,_LSDatabase *,NSError *)>>::shrink_to_fit(uint64_t *result)
{
  v1 = result[1];
  v2 = *result;
  v3 = result[2] - *result;
  v4 = v1 - *result;
  if (v3 > v4)
  {
    v5 = v4 >> 3;
    v6[4] = result;
    if (v1 != v2)
    {
      std::allocator<LSApplicationRecord * {__strong}>::allocate_at_least[abi:nn200100](result, v4 >> 3);
    }

    v6[0] = 0;
    v6[1] = 8 * v5;
    v6[2] = 8 * v5;
    v6[3] = 0;
    if (v3 >> 3)
    {
      std::vector<LSApplicationRecord * {__strong}>::__swap_out_circular_buffer(result, v6);
    }

    return std::__split_buffer<LSApplicationRecord * {__strong}>::~__split_buffer(v6);
  }

  return result;
}

void sub_1816544CC(_Unwind_Exception *a1, uint64_t a2, ...)
{
  va_start(va, a2);
  std::__split_buffer<LSApplicationRecord * {__strong}>::~__split_buffer(va);
  _Unwind_Resume(a1);
}

void LaunchServices::PerThreadContext::releaseDatabase(LaunchServices::PerThreadContext *this)
{
  v2 = *this;
  *this = 0;

  if (!*(this + 1))
  {
    v3 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10813, MEMORY[0x1E695E0F8], "releaseDatabase", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Database/LSServerDBExecutionContext.mm", 60);
    v4 = *(this + 1);
    *(this + 1) = v3;
  }
}

uint64_t *std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::__erase_unique<_opaque_pthread_t *>(void *a1, void *a2)
{
  result = std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::find<_opaque_pthread_t *>(a1, a2);
  if (result)
  {
    std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::erase(a1, result);
    return 1;
  }

  return result;
}

id _LSServer_DatabaseExecutionContext()
{
  v0 = sharedContext;
  if (!sharedContext)
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"LSDBExecutionContext *_LSServer_DatabaseExecutionContext()"];
    [v2 handleFailureInFunction:v3 file:@"LSDatabase.mm" lineNumber:268 description:@"no execution context in server?"];

    v0 = sharedContext;
  }

  return v0;
}

uint64_t _LSServer_SelfSessionKey()
{
  _LSAssertRunningInServer("LSSessionKey _LSServer_SelfSessionKey()");
  if ([__LSDefaultsGetSharedInstance() isLightweightSystemServer])
  {
    return 0x100000000;
  }

  else
  {
    return _CFGetEUID();
  }
}

id LaunchServices::PerThreadContext::getDatabase(id *a1, void *a2)
{
  LaunchServices::PerThreadContext::initialize(a1);
  v4 = *a1;
  if (a2 && !v4)
  {
    *a2 = a1[1];
    v4 = *a1;
  }

  return v4;
}

void *std::__hash_table<std::__hash_value_type<LSSessionKey,LSQuickSessionAvailabilityState>,std::__unordered_map_hasher<LSSessionKey,std::__hash_value_type<LSSessionKey,LSQuickSessionAvailabilityState>,LSSessionKeyHasher,LSSessionKeyComparator,true>,std::__unordered_map_equal<LSSessionKey,std::__hash_value_type<LSSessionKey,LSQuickSessionAvailabilityState>,LSSessionKeyComparator,LSSessionKeyHasher,true>,std::allocator<std::__hash_value_type<LSSessionKey,LSQuickSessionAvailabilityState>>>::__emplace_unique_key_args<LSSessionKey,std::piecewise_construct_t const&,std::tuple<LSSessionKey&&>,std::tuple<>>(void *a1, unsigned int *a2)
{
  if (*(a2 + 4))
  {
    v2 = 1;
  }

  else
  {
    v2 = *a2;
  }

  v3 = a1[1];
  if (!*&v3)
  {
    goto LABEL_29;
  }

  v4 = vcnt_s8(v3);
  v4.i16[0] = vaddlv_u8(v4);
  if (v4.u32[0] > 1uLL)
  {
    v5 = v2;
    if (v2 >= *&v3)
    {
      v5 = v2 % v3.i32[0];
    }
  }

  else
  {
    v5 = (v3.i32[0] - 1) & v2;
  }

  v6 = *(*a1 + 8 * v5);
  if (!v6 || (v7 = *v6) == 0)
  {
LABEL_29:
    operator new();
  }

  v8 = *a2;
  while (1)
  {
    v9 = v7[1];
    if (v9 != v2)
    {
      if (v4.u32[0] > 1uLL)
      {
        if (v9 >= *&v3)
        {
          v9 %= *&v3;
        }
      }

      else
      {
        v9 &= *&v3 - 1;
      }

      if (v9 != v5)
      {
        goto LABEL_29;
      }

      goto LABEL_28;
    }

    v10 = v7[2];
    if ((v10 & 0x100000000) != 0)
    {
      if ((v8 & 0x100000000) != 0)
      {
        return v7;
      }

      goto LABEL_28;
    }

    if (v10 == v8 && (v8 & 0x100000000) == 0)
    {
      return v7;
    }

LABEL_28:
    v7 = *v7;
    if (!v7)
    {
      goto LABEL_29;
    }
  }
}

void std::__hash_node_destructor<std::allocator<std::__hash_node<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,void *>>>::operator()[abi:nn200100](uint64_t a1, void *__p)
{
  if (*(a1 + 8) == 1)
  {
    v3 = __p[4];
    if (v3)
    {
      std::__shared_weak_count::__release_shared[abi:nn200100](v3);
    }
  }

  else if (!__p)
  {
    return;
  }

  operator delete(__p);
}

void std::__shared_weak_count::__release_shared[abi:nn200100](std::__shared_weak_count *a1)
{
  if (!atomic_fetch_add(&a1->__shared_owners_, 0xFFFFFFFFFFFFFFFFLL))
  {
    (a1->__on_zero_shared)(a1);

    std::__shared_weak_count::__release_weak(a1);
  }
}

void *std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::remove@<X0>(void *result@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v3 = result[1];
  v4 = a2[1];
  v5 = vcnt_s8(v3);
  v5.i16[0] = vaddlv_u8(v5);
  if (v5.u32[0] > 1uLL)
  {
    if (v4 >= *&v3)
    {
      v4 %= *&v3;
    }
  }

  else
  {
    v4 &= *&v3 - 1;
  }

  v6 = *(*result + 8 * v4);
  do
  {
    v7 = v6;
    v6 = *v6;
  }

  while (v6 != a2);
  if (v7 == result + 2)
  {
    goto LABEL_18;
  }

  v8 = v7[1];
  if (v5.u32[0] > 1uLL)
  {
    if (v8 >= *&v3)
    {
      v8 %= *&v3;
    }
  }

  else
  {
    v8 &= *&v3 - 1;
  }

  if (v8 != v4)
  {
LABEL_18:
    if (!*a2)
    {
      goto LABEL_19;
    }

    v9 = *(*a2 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v9 >= *&v3)
      {
        v9 %= *&v3;
      }
    }

    else
    {
      v9 &= *&v3 - 1;
    }

    if (v9 != v4)
    {
LABEL_19:
      *(*result + 8 * v4) = 0;
    }
  }

  v10 = *a2;
  if (*a2)
  {
    v11 = *(v10 + 8);
    if (v5.u32[0] > 1uLL)
    {
      if (v11 >= *&v3)
      {
        v11 %= *&v3;
      }
    }

    else
    {
      v11 &= *&v3 - 1;
    }

    if (v11 != v4)
    {
      *(*result + 8 * v11) = v7;
      v10 = *a2;
    }
  }

  *v7 = v10;
  *a2 = 0;
  --result[3];
  *a3 = a2;
  *(a3 + 8) = result;
  *(a3 + 16) = 1;
  *(a3 + 17) = 0;
  *(a3 + 20) = 0;
  return result;
}

void std::__shared_ptr_emplace<LaunchServices::PerThreadContext>::__on_zero_shared(uint64_t a1)
{
  v2 = *(a1 + 24);
}

uint64_t _LSGetPIDFromToken(_OWORD *a1)
{
  pidp = 0;
  v1 = a1[1];
  *atoken.val = *a1;
  *&atoken.val[4] = v1;
  audit_token_to_au32(&atoken, 0, 0, 0, 0, 0, &pidp, 0, 0);
  return pidp;
}

void (**_LSDServiceGetXPCProxyForServiceClass(void *a1, uint64_t a2, int a3, void (**a4)(void, void)))(void, void)
{
  v6 = _LSDServiceGetXPCConnection(a1, a2);
  v7 = v6;
  if (v6)
  {
    if (a3)
    {
      [v6 synchronousRemoteObjectProxyWithErrorHandler:a4];
    }

    else
    {
      [v6 remoteObjectProxyWithErrorHandler:a4];
    }
    a4 = ;
  }

  else if (a4)
  {
    v8 = _LSDefaultLog();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
    {
      _LSDServiceGetXPCProxyForServiceClass_cold_1(v8, v9, v10, v11, v12, v13, v14, v15);
    }

    v16 = _LSMakeNSErrorImpl(*MEMORY[0x1E696A768], -10822, 0, "_LSDServiceGetXPCProxyForServiceClass", "/Library/Caches/com.apple.xbs/Sources/CoreServices/LaunchServices.subprj/Source/LaunchServices/Server/LSDService.mm", 480);
    (a4)[2](a4, v16);

    a4 = 0;
  }

  return a4;
}

void __LAUNCH_SERVICES_IS_WAITING_FOR_THE_DATABASE_TO_FINISH_SEEDING__(void)
{
  v0 = _LSDatabaseGetSeedingGroup();
  dispatch_group_wait(v0, 0xFFFFFFFFFFFFFFFFLL);
}

id _LSRetryForConnectionInterrupted(void *a1)
{
  v1 = a1;
  v2 = 0;
  v3 = 9;
  do
  {
    v4 = v1[2](v1);

    IsXPCConnectionInterrupted = _LSNSErrorIsXPCConnectionInterrupted(v4);
    v7 = v3-- != 0;
    v2 = v4;
  }

  while (IsXPCConnectionInterrupted && v7);

  return v4;
}

id _LSDatabaseGetSeedingGroup()
{
  if ([__LSDefaultsGetSharedInstance() isServer] && _LSDatabaseGetSeedingGroup::once != -1)
  {
    _LSDatabaseGetSeedingGroup_cold_1();
  }

  v0 = _LSDatabaseGetSeedingGroup::seedingGroup;

  return v0;
}

uint64_t categorizeSelector(objc_selector *a1)
{
  v15 = a1;
  os_unfair_lock_lock(&categorizeSelector(objc_selector *)::categoryCacheMutex);
  if (!categorizeSelector(objc_selector *)::categoryCache)
  {
    operator new();
  }

  v1 = std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::find<_opaque_pthread_t *>(categorizeSelector(objc_selector *)::categoryCache, &v15);
  if (!v1)
  {
    v2 = categorizeSelector(objc_selector *)::categoryCache;
    aSelector = v15;
    if (_lock_categorizeSelectorWithRuntime(objc_selector *)::onceToken != -1)
    {
      categorizeSelector();
    }

    if (std::__hash_table<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::__unordered_map_hasher<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::hash<_opaque_pthread_t *>,std::equal_to<_opaque_pthread_t *>,true>,std::__unordered_map_equal<_opaque_pthread_t *,std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>,std::equal_to<_opaque_pthread_t *>,std::hash<_opaque_pthread_t *>,true>,std::allocator<std::__hash_value_type<_opaque_pthread_t *,std::shared_ptr<LaunchServices::PerThreadContext>>>>::find<_opaque_pthread_t *>(_lock_categorizeSelectorWithRuntime(objc_selector *)::knownExceptions, &aSelector))
    {
      v3 = 5;
LABEL_29:
      v14[0] = v15;
      v14[1] = v3;
      v1 = std::__hash_table<std::__hash_value_type<objc_selector *,FSSelectorCategory>,std::__unordered_map_hasher<objc_selector *,std::__hash_value_type<objc_selector *,FSSelectorCategory>,std::hash<objc_selector *>,std::equal_to<objc_selector *>,true>,std::__unordered_map_equal<objc_selector *,std::__hash_value_type<objc_selector *,FSSelectorCategory>,std::equal_to<objc_selector *>,std::hash<objc_selector *>,true>,std::allocator<std::__hash_value_type<objc_selector *,FSSelectorCategory>>>::__emplace_unique_key_args<objc_selector *,std::pair<objc_selector *,FSSelectorCategory>>(v2, v14);
      goto LABEL_30;
    }

    v4 = NSStringFromSelector(aSelector);
    v5 = objc_opt_class();
    InstanceMethod = class_getInstanceMethod(v5, aSelector);
    v7 = method_copyReturnType(InstanceMethod);
    NumberOfArguments = method_getNumberOfArguments(InstanceMethod);
    v9 = *v7;
    if (v9 == 64)
    {
      v3 = 6;
      if (!v7[1] && NumberOfArguments == 3)
      {
        if ([v4 hasSuffix:@"WithError:"])
        {
          v3 = 1;
        }

        else
        {
          v3 = 6;
        }
      }

      goto LABEL_28;
    }

    if (v9 != 66)
    {
      goto LABEL_27;
    }

    if (!v7[1] && NumberOfArguments == 2)
    {
      v3 = 0;
LABEL_28:
      free(v7);

      goto LABEL_29;
    }

    v3 = 6;
    if (v7[1] || NumberOfArguments != 4)
    {
      goto LABEL_28;
    }

    if (![v4 hasSuffix:@":error:"])
    {
LABEL_27:
      v3 = 6;
      goto LABEL_28;
    }

    v10 = method_copyArgumentType(InstanceMethod, 2u);
    if (*v10 == 94)
    {
      v11 = v10[1];
      if (v11 == 100)
      {
        if (v10[2])
        {
          v3 = 6;
        }

        else
        {
          v3 = 4;
        }

        goto LABEL_33;
      }

      if (v11 == 81)
      {
        if (!v10[2])
        {
          v3 = 3;
          goto LABEL_33;
        }
      }

      else if (v11 == 73 && !v10[2])
      {
        v3 = 2;
LABEL_33:
        free(v10);
        goto LABEL_28;
      }
    }

    v3 = 6;
    goto LABEL_33;
  }

LABEL_30:
  v12 = v1[3];
  os_unfair_lock_unlock(&categorizeSelector(objc_selector *)::categoryCacheMutex);
  return v12;
}

void sub_181655360(_Unwind_Exception *a1)
{
  free(v2);

  os_unfair_lock_unlock(&categorizeSelector(objc_selector *)::categoryCacheMutex);
  _Unwind_Resume(a1);
}

void *std::__hash_table<objc_selector *,std::hash<objc_selector *>,std::equal_to<objc_selector *>,std::allocator<objc_selector *>>::__emplace_unique_key_args<objc_selector *,objc_selector * const&>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

uint64_t std::unordered_set<objc_selector *>::unordered_set(uint64_t a1, void *a2, uint64_t a3)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 1065353216;
  if (a3)
  {
    v5 = 8 * a3;
    do
    {
      std::__hash_table<objc_selector *,std::hash<objc_selector *>,std::equal_to<objc_selector *>,std::allocator<objc_selector *>>::__emplace_unique_key_args<objc_selector *,objc_selector * const&>(a1, a2++);
      v5 -= 8;
    }

    while (v5);
  }

  return a1;
}

void *std::__hash_table<std::__hash_value_type<objc_selector *,FSSelectorCategory>,std::__unordered_map_hasher<objc_selector *,std::__hash_value_type<objc_selector *,FSSelectorCategory>,std::hash<objc_selector *>,std::equal_to<objc_selector *>,true>,std::__unordered_map_equal<objc_selector *,std::__hash_value_type<objc_selector *,FSSelectorCategory>,std::equal_to<objc_selector *>,std::hash<objc_selector *>,true>,std::allocator<std::__hash_value_type<objc_selector *,FSSelectorCategory>>>::__emplace_unique_key_args<objc_selector *,std::pair<objc_selector *,FSSelectorCategory>>(void *a1, void *a2)
{
  v2 = 0x9DDFEA08EB382D69 * ((8 * (*a2 & 0x1FFFFFFFLL) + 8) ^ HIDWORD(*a2));
  v3 = 0x9DDFEA08EB382D69 * (HIDWORD(*a2) ^ (v2 >> 47) ^ v2);
  v4 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
  v5 = a1[1];
  if (!*&v5)
  {
    goto LABEL_18;
  }

  v6 = vcnt_s8(v5);
  v6.i16[0] = vaddlv_u8(v6);
  if (v6.u32[0] > 1uLL)
  {
    v7 = 0x9DDFEA08EB382D69 * (v3 ^ (v3 >> 47));
    if (v4 >= *&v5)
    {
      v7 = v4 % *&v5;
    }
  }

  else
  {
    v7 = v4 & (*&v5 - 1);
  }

  v8 = *(*a1 + 8 * v7);
  if (!v8 || (v9 = *v8) == 0)
  {
LABEL_18:
    operator new();
  }

  while (1)
  {
    v10 = v9[1];
    if (v10 == v4)
    {
      break;
    }

    if (v6.u32[0] > 1uLL)
    {
      if (v10 >= *&v5)
      {
        v10 %= *&v5;
      }
    }

    else
    {
      v10 &= *&v5 - 1;
    }

    if (v10 != v7)
    {
      goto LABEL_18;
    }

LABEL_17:
    v9 = *v9;
    if (!v9)
    {
      goto LABEL_18;
    }
  }

  if (v9[2] != *a2)
  {
    goto LABEL_17;
  }

  return v9;
}

void ___ZL30_LSPlistCreateTransformedValueP11objc_objectPFP8NSStringS2_PbES3__block_invoke_2(uint64_t a1, void *a2)
{
  v6 = a2;
  v3 = _NSIsNSString();
  v4 = v6;
  if (v3)
  {
    v5 = (*(a1 + 48))(v6, *(*(a1 + 40) + 8) + 24);

    v4 = v5;
  }

  v7 = v4;
  [*(a1 + 32) addObject:?];
}

uint64_t LaunchServices::URLPropertyProvider::prepareIsPackageValue(LaunchServices::Database::Context *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = +[_LSDServiceDomain defaultServiceDomain];
  v11 = LaunchServices::Database::Context::_get(a1, v10, 0);

  if (v11)
  {
    IsPackage = _LSNodeIsPackage(v11, a2, 0);
    v13 = MEMORY[0x1E695E4D0];
    if (!IsPackage)
    {
      v13 = MEMORY[0x1E695E4C0];
    }

    MEMORY[0x1865D5CD0](a3, *MEMORY[0x1E695EB50], *v13);
    return 1;
  }

  else if (a6)
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
      v18 = v17;
    }

    result = 0;
    *a6 = v17;
  }

  else
  {
    return 0;
  }

  return result;
}

id _LSEncodeURLPropertyDictionary(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:*MEMORY[0x1E695E268]];

  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(v1, "count")}];
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 3221225472;
    v7[2] = ___LSEncodeURLPropertyDictionary_block_invoke;
    v7[3] = &unk_1E6A1AF50;
    v4 = v3;
    v8 = v4;
    [v1 enumerateKeysAndObjectsUsingBlock:v7];
    v5 = [v4 copy];

    v1 = v5;
  }

  return v1;
}

uint64_t _LSIsDictionaryWithKeysAndValuesOfClasses(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = &v15;
  v15 = 0;
  v16 = &v15;
  v17 = 0x2020000000;
  v18 = 1;
  if (!v5)
  {
    goto LABEL_6;
  }

  if ((_NSIsNSDictionary() & 1) == 0)
  {
    v8 = v16;
LABEL_6:
    *(v8 + 24) = 0;
    goto LABEL_7;
  }

  if (v6 | v7)
  {
    v11[0] = MEMORY[0x1E69E9820];
    v11[1] = 3221225472;
    v11[2] = ___LSIsDictionaryWithKeysAndValuesOfClasses_block_invoke;
    v11[3] = &unk_1E6A1E6D0;
    v12 = v6;
    v13 = v7;
    v14 = &v15;
    [v5 enumerateKeysAndObjectsUsingBlock:v11];
  }

LABEL_7:
  v9 = *(v16 + 24);
  _Block_object_dispose(&v15, 8);

  return v9;
}

void sub_1816561E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t _LSIsSetWithValuesOfClass(void *a1, void *a2)
{
  v3 = a1;
  v6 = a2;
  if (a2)
  {
    a2 = [objc_alloc(MEMORY[0x1E695DFD8]) initWithObjects:&v6 count:1];
  }

  v4 = _LSIsSetWithValuesOfClasses(v3, a2);

  return v4;
}

uint64_t _LSIsSetWithValuesOfClasses(void *a1, void *a2)
{
  v3 = a2;
  v4 = a1;
  v5 = objc_opt_class();
  v6 = _LSIsSequenceOfClassWithValuesOfClasses(v4, v5, v3);

  return v6;
}

uint64_t _LSIsSequenceOfClassWithValuesOfClasses(void *a1, uint64_t a2, void *a3)
{
  v20 = *MEMORY[0x1E69E9840];
  v5 = a1;
  v6 = a3;
  if (v5 && (!a2 || (objc_opt_isKindOfClass() & 1) != 0))
  {
    if (v6)
    {
      v17 = 0u;
      v18 = 0u;
      v15 = 0u;
      v16 = 0u;
      v7 = v5;
      v8 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v16;
        while (2)
        {
          v11 = 0;
          do
          {
            if (*v16 != v10)
            {
              objc_enumerationMutation(v7);
            }

            if (!_LSIsKindOfClasses(*(*(&v15 + 1) + 8 * v11), v6))
            {
              v12 = 0;
              goto LABEL_16;
            }

            ++v11;
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v15 objects:v19 count:16];
          if (v9)
          {
            continue;
          }

          break;
        }
      }

      v12 = 1;
LABEL_16:
    }

    else
    {
      v12 = 1;
    }
  }

  else
  {
    v12 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];
  return v12;
}