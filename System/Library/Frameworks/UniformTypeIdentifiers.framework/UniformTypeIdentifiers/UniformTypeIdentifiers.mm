__objc2_class **__UTFindCoreTypesConstantWithIdentifier(__CFString *a1, unint64_t a2)
{
  v12[5] = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v8 = [MEMORY[0x1E696AAA8] currentHandler];
    v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"CFTypeRef __UTFindCoreTypesConstantWithIdentifier(NSString *const __strong _Nonnull, NSInteger)"}];
    [v8 handleFailureInFunction:v9 file:@"UTCoreTypes.mm" lineNumber:241 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];

    if ((a2 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_11:
    v4 = 0;
    goto LABEL_12;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_11;
  }

LABEL_3:
  if (a2 > 0xAD || (v4 = &UniformTypeIdentifiers::CoreTypes::constants + 4 * a2, [v4 identifier], v5 = objc_claimAutoreleasedReturnValue(), v6 = _UTIdentifiersAreEqual(a1, v5), v5, !v6))
  {
    if (qword_1ED40DC30 != -1)
    {
      dispatch_once(&qword_1ED40DC30, &__block_literal_global_3);
    }

    v12[2] = a1;
    v12[3] = 0;
    v12[0] = _UTCoreType;
    v7 = [qword_1ED40DC28 indexOfObject:v12];
    if (v7 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v4 = 0;
    }

    else
    {
      v4 = &UniformTypeIdentifiers::CoreTypes::constants + 4 * v7;
    }
  }

LABEL_12:
  v10 = *MEMORY[0x1E69E9840];
  return v4;
}

id _UTTypeGetForIdentifier(__CFString *a1, int a2)
{
  if (!a1)
  {
    v7 = [MEMORY[0x1E696AAA8] currentHandler];
    v8 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"UTType *_UTTypeGetForIdentifier(NSString *const __strong, BOOL)"}];
    [v7 handleFailureInFunction:v8 file:@"UTType.mm" lineNumber:101 description:{@"Invalid parameter not satisfying: %@", @"identifier != nil"}];
  }

  v4 = __UTFindCoreTypesConstantWithIdentifier(a1, 0x7FFFFFFFFFFFFFFFuLL);
  if (!v4)
  {
    if (a2)
    {
      [MEMORY[0x1E69636B0] typeRecordWithPotentiallyUndeclaredIdentifier:a1];
    }

    else
    {
      [MEMORY[0x1E69636B0] typeRecordWithIdentifier:a1];
    }
    v5 = ;
    if (v5)
    {
      v4 = [UTType _typeWithTypeRecord:v5 detachTypeRecord:1 findConstant:0];
    }

    else
    {
      v4 = 0;
    }
  }

  return v4;
}

void sub_1AC1AF498(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

id _UTGetAllCoreTypesConstants()
{
  v0 = v5;
  v1 = &UniformTypeIdentifiers::CoreTypes::constants;
  v2 = 5568;
  do
  {
    *v0++ = v1;
    v1 += 4;
    v2 -= 32;
  }

  while (v2);
  v3 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:v5 count:174];

  return v3;
}

unint64_t _UTIdentifierGetHashCode(void *a1)
{
  __p[128] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 maximumLengthOfBytesUsingEncoding:4];
  v3 = v2 + 1;
  if (v2 == -1)
  {
    v10 = [MEMORY[0x1E696AAA8] currentHandler];
    v11 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void withFastBuffer(NSUInteger, const FunctionType &) [ElementType = char, ArraySize = 1024UL, FunctionType = (lambda at /Library/Caches/com.apple.xbs/Sources/UniformTypeIdentifiers/Framework/UTType.mm:1206:34)]"}];
    [v10 handleFailureInFunction:v11 file:@"UTType.mm" lineNumber:1190 description:{@"Invalid parameter not satisfying: %@", @"count > 0"}];
  }

  else if (v3 > 0x400)
  {
    LOBYTE(v12) = 0;
    std::vector<char>::vector[abi:ne200100](__p, v3);
  }

  bzero(__p, 0x400uLL);
  v12 = 0;
  if ([v1 getBytes:__p maxLength:v3 usedLength:&v12 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v1, "length"), 0}])
  {
    v4 = v12;
    if (v12)
    {
      v5 = __p;
      do
      {
        *v5 = __tolower(*v5);
        v5 = (v5 + 1);
        --v4;
      }

      while (v4);
      v6 = v12;
    }

    else
    {
      v6 = 0;
    }

    v7 = std::__string_view_hash<char>::operator()[abi:ne200100](__p, v6);
  }

  else
  {
    v7 = 0;
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

BOOL _UTIdentifiersAreEqual(__CFString *theString, __CFString *a2)
{
  v22[128] = *MEMORY[0x1E69E9840];
  if (theString == a2)
  {
    v3 = 1;
  }

  else
  {
    v3 = 0;
    if (theString && a2)
    {
      CStringPtr = CFStringGetCStringPtr(theString, 0x8000100u);
      v6 = CFStringGetCStringPtr(a2, 0x8000100u);
      if (CStringPtr && (v7 = v6) != 0)
      {
        v8 = CStringPtr;
      }

      else
      {
        v11 = [(__CFString *)theString maximumLengthOfBytesUsingEncoding:4];
        v12 = [(__CFString *)a2 maximumLengthOfBytesUsingEncoding:4]+ 1;
        v13 = __CFADD__(v11, 1);
        v14 = v11 + 1;
        if (v13)
        {
          v15 = [MEMORY[0x1E696AAA8] currentHandler];
          v16 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void withFastBuffer(NSUInteger, const FunctionType &) [ElementType = char, ArraySize = 1024UL, FunctionType = (lambda at /Library/Caches/com.apple.xbs/Sources/UniformTypeIdentifiers/Framework/UTType.mm:871:37)]"}];
          [v15 handleFailureInFunction:v16 file:@"UTType.mm" lineNumber:1190 description:{@"Invalid parameter not satisfying: %@", @"count > 0"}];
        }

        else if (v14 > 0x400)
        {
          LOBYTE(v22[0]) = 0;
          std::vector<char>::vector[abi:ne200100](&v21, v14);
        }

        bzero(&v21, 0x400uLL);
        if (v12)
        {
          if (v12 > 0x400)
          {
            LOBYTE(v20) = 0;
            std::vector<char>::vector[abi:ne200100](v22, v12);
          }
        }

        else
        {
          v17 = [MEMORY[0x1E696AAA8] currentHandler];
          v18 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void withFastBuffer(NSUInteger, const FunctionType &) [ElementType = char, ArraySize = 1024UL, FunctionType = (lambda at /Library/Caches/com.apple.xbs/Sources/UniformTypeIdentifiers/Framework/UTType.mm:871:91)]"}];
          [v17 handleFailureInFunction:v18 file:@"UTType.mm" lineNumber:1190 description:{@"Invalid parameter not satisfying: %@", @"count > 0"}];
        }

        bzero(v22, 0x400uLL);
        v19 = 0;
        v20 = 0;
        if (![(__CFString *)theString getBytes:&v21 maxLength:v14 usedLength:&v20 encoding:4 options:0 range:0 remainingRange:[(__CFString *)theString length], 0]|| ![(__CFString *)a2 getBytes:v22 maxLength:v12 usedLength:&v19 encoding:4 options:0 range:0 remainingRange:[(__CFString *)a2 length], 0]|| v20 != v19)
        {
          v3 = 0;
          goto LABEL_9;
        }

        v8 = &v21;
        v7 = v22;
      }

      v3 = strcasecmp(v8, v7) == 0;
    }
  }

LABEL_9:
  v9 = *MEMORY[0x1E69E9840];
  return v3;
}

void sub_1AC1AFD44(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *__p)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

unint64_t std::__string_view_hash<char>::operator()[abi:ne200100](uint64_t *a1, unint64_t a2)
{
  if (a2 > 0x20)
  {
    if (a2 <= 0x40)
    {
      v5 = *(a1 + a2 - 16);
      v6 = *a1 - 0x3C5A37A36834CED9 * (v5 + a2);
      v8 = a1[2];
      v7 = a1[3];
      v9 = __ROR8__(v6 + v7, 52);
      v10 = v6 + a1[1];
      v11 = __ROR8__(v10, 7);
      v12 = v10 + v8;
      v13 = *(a1 + a2 - 32) + v8;
      v14 = *(a1 + a2 - 8) + v7;
      v15 = __ROR8__(v14 + v13, 52);
      v16 = v11 + __ROR8__(*a1 - 0x3C5A37A36834CED9 * (v5 + a2), 37) + v9;
      v17 = __ROR8__(v13, 37);
      v18 = *(a1 + a2 - 24) + v13;
      v19 = __ROR8__(v18, 7);
      v20 = v16 + __ROR8__(v12, 31);
      v21 = v18 + v5;
      v22 = v21 + v14;
      v23 = 0x9AE16A3B2F90404FLL;
      v24 = 0xC3A5C85C97CB3127 * (v22 + v20) - 0x651E95C4D06FBFB1 * (v12 + v7 + v17 + v19 + v15 + __ROR8__(v21, 31));
      v25 = v20 - 0x3C5A37A36834CED9 * (v24 ^ (v24 >> 47));
      return (v25 ^ (v25 >> 47)) * v23;
    }

    v4 = 0x9DDFEA08EB382D69;
    v32 = *(a1 + a2 - 48);
    v33 = *(a1 + a2 - 40);
    v34 = *(a1 + a2 - 24);
    v35 = *(a1 + a2 - 56);
    v36 = *(a1 + a2 - 16);
    v37 = *(a1 + a2 - 8);
    v38 = v35 + v36;
    v39 = 0x9DDFEA08EB382D69 * (v34 ^ ((0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))) >> 47) ^ (0x9DDFEA08EB382D69 * (v34 ^ (v32 + a2))));
    v40 = 0x9DDFEA08EB382D69 * (v39 ^ (v39 >> 47));
    v41 = *(a1 + a2 - 64) + a2;
    v42 = v32 + v35 + v41;
    v43 = __ROR8__(v42, 44) + v41;
    v44 = __ROR8__(v41 + v33 + v40, 21);
    v45 = v42 + v33;
    v46 = v43 + v44;
    v47 = v38 + *(a1 + a2 - 32) - 0x4B6D499041670D8DLL;
    v48 = v34 + v36 + v47;
    v49 = v48 + v37;
    v50 = __ROR8__(v48, 44) + v47 + __ROR8__(v47 + v33 + v37, 21);
    v52 = *a1;
    v51 = a1 + 4;
    v53 = v52 - 0x4B6D499041670D8DLL * v33;
    v54 = -((a2 - 1) & 0xFFFFFFFFFFFFFFC0);
    do
    {
      v55 = *(v51 - 3);
      v56 = v53 + v45 + v38 + v55;
      v57 = v51[2];
      v58 = v51[3];
      v59 = v51[1];
      v38 = v59 + v45 - 0x4B6D499041670D8DLL * __ROR8__(v38 + v46 + v57, 42);
      v60 = v40 + v49;
      v61 = *(v51 - 2);
      v62 = *(v51 - 1);
      v63 = *(v51 - 4) - 0x4B6D499041670D8DLL * v46;
      v64 = v63 + v49 + v62;
      v65 = v63 + v55 + v61;
      v45 = v65 + v62;
      v66 = __ROR8__(v65, 44) + v63;
      v67 = (0xB492B66FBE98F273 * __ROR8__(v56, 37)) ^ v50;
      v53 = 0xB492B66FBE98F273 * __ROR8__(v60, 33);
      v46 = v66 + __ROR8__(v64 + v67, 21);
      v68 = v53 + v50 + *v51;
      v49 = v59 + v57 + v68 + v58;
      v50 = __ROR8__(v59 + v57 + v68, 44) + v68 + __ROR8__(v38 + v61 + v68 + v58, 21);
      v51 += 8;
      v40 = v67;
      v54 += 64;
    }

    while (v54);
    v69 = v67 - 0x4B6D499041670D8DLL * (v38 ^ (v38 >> 47)) - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) ^ ((0x9DDFEA08EB382D69 * (v49 ^ ((0x9DDFEA08EB382D69 * (v49 ^ v45)) >> 47) ^ (0x9DDFEA08EB382D69 * (v49 ^ v45)))) >> 47));
    v70 = v53 - 0x622015F714C7D297 * ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) ^ ((0x9DDFEA08EB382D69 * (v50 ^ ((0x9DDFEA08EB382D69 * (v50 ^ v46)) >> 47) ^ (0x9DDFEA08EB382D69 * (v50 ^ v46)))) >> 47));
    v71 = 0x9DDFEA08EB382D69 * (v70 ^ ((0x9DDFEA08EB382D69 * (v70 ^ v69)) >> 47) ^ (0x9DDFEA08EB382D69 * (v70 ^ v69)));
    goto LABEL_13;
  }

  if (a2 > 0x10)
  {
    v26 = a1[1];
    v27 = 0xB492B66FBE98F273 * *a1;
    v28 = __ROR8__(0x9AE16A3B2F90404FLL * *(a1 + a2 - 8), 30) + __ROR8__(v27 - v26, 43);
    v29 = v27 + a2 + __ROR8__(v26 ^ 0xC949D7C7509E6557, 20) - 0x9AE16A3B2F90404FLL * *(a1 + a2 - 8);
    v23 = 0x9DDFEA08EB382D69;
    v30 = 0x9DDFEA08EB382D69 * ((v28 - 0x3C5A37A36834CED9 * *(a1 + a2 - 16)) ^ v29);
    v31 = v29 ^ (v30 >> 47) ^ v30;
LABEL_8:
    v25 = 0x9DDFEA08EB382D69 * v31;
    return (v25 ^ (v25 >> 47)) * v23;
  }

  if (a2 < 9)
  {
    if (a2 >= 4)
    {
      v73 = *(a1 + a2 - 4);
      v23 = 0x9DDFEA08EB382D69;
      v74 = 0x9DDFEA08EB382D69 * ((a2 + (8 * *a1)) ^ v73);
      v31 = v73 ^ (v74 >> 47) ^ v74;
      goto LABEL_8;
    }

    v4 = 0x9AE16A3B2F90404FLL;
    if (a1 == (a1 + a2))
    {
      return v4;
    }

    v71 = (0xC949D7C7509E6557 * (a2 | (4 * *(a1 + a2 - 1)))) ^ (0x9AE16A3B2F90404FLL * (*a1 | (*(a1 + (a2 >> 1)) << 8)));
LABEL_13:
    v4 *= v71 ^ (v71 >> 47);
    return v4;
  }

  v2 = *(a1 + a2 - 8);
  v3 = __ROR8__(v2 + a2, a2);
  return (0x9DDFEA08EB382D69 * ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) ^ ((0x9DDFEA08EB382D69 * (v3 ^ ((0x9DDFEA08EB382D69 * (v3 ^ *a1)) >> 47) ^ (0x9DDFEA08EB382D69 * (v3 ^ *a1)))) >> 47))) ^ v2;
}

uint64_t UniformTypeIdentifiers::Type::isTagValid(UniformTypeIdentifiers::Type *this, __CFString *a2, NSString *a3)
{
  if (this)
  {
    if (a2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v6 = [MEMORY[0x1E696AAA8] currentHandler];
    v7 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL isTagValid(NSString *const __strong, NSString *const __strong)"}];
    [v6 handleFailureInFunction:v7 file:@"UTType.mm" lineNumber:1042 description:{@"Invalid parameter not satisfying: %@", @"tag != nil"}];

    if (a2)
    {
      goto LABEL_3;
    }
  }

  v8 = [MEMORY[0x1E696AAA8] currentHandler];
  v9 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"BOOL isTagValid(NSString *const __strong, NSString *const __strong)"}];
  [v8 handleFailureInFunction:v9 file:@"UTType.mm" lineNumber:1043 description:{@"Invalid parameter not satisfying: %@", @"tagClass != nil"}];

LABEL_3:
  result = [(UniformTypeIdentifiers::Type *)this length];
  if (result)
  {
    if (_UTIdentifiersAreEqual(a2, @"public.filename-extension"))
    {
      return ([(UniformTypeIdentifiers::Type *)this containsString:@"."]& 1) == 0 && _CFExtensionIsValidToAppend() != 0;
    }

    else if (_UTIdentifiersAreEqual(a2, @"public.mime-type"))
    {

      return [(UniformTypeIdentifiers::Type *)this containsString:@"/"];
    }

    else
    {
      return 1;
    }
  }

  return result;
}

void sub_1AC1B04C4(void *a1)
{
  objc_begin_catch(a1);
  os_unfair_recursive_lock_unlock();
  objc_exception_rethrow();
}

void _UTDetachTypeRecords(uint64_t a1, uint64_t a2)
{
  if (!a2)
  {
    v5 = [MEMORY[0x1E696AAA8] currentHandler];
    v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void _UTDetachTypeRecords(UTTypeRecord *const __unsafe_unretained *const, NSUInteger)"}];
    [v5 handleFailureInFunction:v6 file:@"UTType.mm" lineNumber:1028 description:{@"Invalid parameter not satisfying: %@", @"count > 0"}];
  }

  if (qword_1ED40DC18 != -1)
  {
    dispatch_once(&qword_1ED40DC18, &__block_literal_global_2);
  }

  if (_MergedGlobals_2 == 1)
  {
    v4 = MEMORY[0x1E6963688];

    [v4 resolveAllPropertiesOfRecords:a1 count:a2 andDetachOnQueue:0];
  }
}

void ___ZN22UniformTypeIdentifiers4TypeL23shouldDetachTypeRecordsEv_block_invoke()
{
  v0 = getenv("_UTShouldDetachTypeRecords");
  if (v0)
  {
    v1 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v0];
    _MergedGlobals_2 = [v1 BOOLValue];
  }

  else
  {
    _MergedGlobals_2 = [MEMORY[0x1E6963688] hasDatabaseAccess];
  }
}

id _UTTaggedTypeCreate(void *a1)
{
  if (!a1)
  {
    v16 = [MEMORY[0x1E696AAA8] currentHandler];
    v17 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"_UTTaggedType *_UTTaggedTypeCreate(UTTypeRecord *const __strong _Nonnull)"];
    [v16 handleFailureInFunction:v17 file:@"UTTaggedType.mm" lineNumber:276 description:{@"Invalid parameter not satisfying: %@", @"typeRecord != nil"}];
  }

  if ([a1 isDynamic])
  {
    if (qword_1ED40DBF8 != -1)
    {
      dispatch_once(&qword_1ED40DBF8, &__block_literal_global_0);
    }

    if (_MergedGlobals_0 == 1)
    {
      v2 = [a1 preferredTagOfClass:@"public.filename-extension"];
      if (v2)
      {
        v3 = [(_UTConstantType *)&off_1ED40C640 identifier];
        v4 = [a1 isChildOfTypeIdentifier:v3];

        if (v4)
        {
          v5 = 0;
        }

        else
        {
          v7 = [(_UTConstantType *)&off_1ED40D260 identifier];
          v8 = [a1 isChildOfTypeIdentifier:v7];

          if (!v8)
          {
            goto LABEL_21;
          }

          v5 = 1;
        }

        *(v19 + 3) = 0;
        v19[0] = 0;
        v18 = xmmword_1AC1BBCA0;
        v9 = [v2 getBytes:v19 maxLength:6 usedLength:0 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v2, "length"), &v18}];
        if (*(&v18 + 1))
        {
          v10 = 0;
        }

        else
        {
          v10 = v9;
        }

        if (v10 == 1)
        {
          v11 = BYTE2(v19[1]) & 0xFE | v5;
          BYTE2(v19[1]) = BYTE2(v19[1]) & 0xFE | v5;
          v12 = v19[0] | ((LOWORD(v19[1]) | (v11 << 16)) << 32);
          if (v12)
          {
            v13 = (8 * (v12 & 0xFFFFFFFFFFFFFLL)) | 0x8680000000000007;
            v14 = *MEMORY[0x1E69E5910] ^ v13;
            if ((~v14 & 0xC000000000000007) != 0)
            {
              v13 = v14 & 0xFFFFFFFFFFFFFFF8 | *(MEMORY[0x1E69E5900] + (v14 & 7));
            }

            v6 = v13;
            goto LABEL_22;
          }
        }
      }

LABEL_21:
      v6 = 0;
LABEL_22:

      return v6;
    }
  }

  return 0;
}

uint64_t __UTGetDeclarationStatusFromInfoPlist(void *a1, int a2, void *a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  if (a3)
  {
    v9 = a3;
  }

  else
  {
    v9 = [MEMORY[0x1E696AAE8] mainBundle];
  }

  v10 = v9;
  v11 = [v9 objectForInfoDictionaryKey:*MEMORY[0x1E69636F8]];
  v12 = [v10 objectForInfoDictionaryKey:*MEMORY[0x1E6963700]];
  v13 = v12;
  if (a2)
  {
    v12 = v11;
    v14 = v13;
  }

  else
  {
    v14 = v11;
  }

  v35 = 0;
  v36 = &v35;
  v37 = 0x2020000000;
  v38 = 1;
  v33[0] = MEMORY[0x1E69E9820];
  v33[1] = 3221225472;
  v33[2] = ___ZN22UniformTypeIdentifiers13RuntimeIssuesL27checkListsForTypeIdentifierEP8NSStringP7NSArrayIP12NSDictionaryIS2_P11objc_objectEESA__block_invoke;
  v33[3] = &unk_1E796EFF0;
  v33[4] = a1;
  v33[5] = &v35;
  UniformTypeIdentifiers::RuntimeIssues::enumerateTypeIdentifiersInDeclarationsArray(v12, v33);
  if (*(v36 + 6))
  {
    v34[0] = MEMORY[0x1E69E9820];
    v34[1] = 3221225472;
    v34[2] = ___ZN22UniformTypeIdentifiers13RuntimeIssuesL27checkListsForTypeIdentifierEP8NSStringP7NSArrayIP12NSDictionaryIS2_P11objc_objectEESA__block_invoke_2;
    v34[3] = &unk_1E796EFF0;
    v34[4] = a1;
    v34[5] = &v35;
    UniformTypeIdentifiers::RuntimeIssues::enumerateTypeIdentifiersInDeclarationsArray(v14, v34);
    v15 = *(v36 + 6);
  }

  else
  {
    v15 = 0;
  }

  _Block_object_dispose(&v35, 8);

  objc_autoreleasePoolPop(v8);
  if (v15 && (_UTEnableAllRuntimeIssues & 1) == 0)
  {
    if (a4)
    {
      v17 = dyld_image_header_containing_address();
    }

    else
    {
      v17 = 0;
    }

    if (!UniformTypeIdentifiers::RuntimeIssues::isBinaryTheCaller(v17, v16))
    {
      v18 = backtrace(v33, 8);
      if (v18 < 1)
      {
LABEL_24:
        v17 = 0;
      }

      else
      {
        v20 = v18;
        v21 = v33;
        while (1)
        {
          if (*v21 != a4)
          {
            v17 = *v21 ? dyld_image_header_containing_address() : 0;
            if (UniformTypeIdentifiers::RuntimeIssues::isBinaryTheCaller(v17, v19))
            {
              break;
            }
          }

          ++v21;
          if (!--v20)
          {
            goto LABEL_24;
          }
        }
      }
    }

    if (!v17)
    {
      return 0;
    }

    if (_dyld_get_prog_image_header() != v17)
    {
      v22 = dyld_image_path_containing_address();
      if (v22)
      {
        v23 = v22;
        v24 = objc_autoreleasePoolPush();
        v25 = [MEMORY[0x1E696AAE8] mainBundle];
        v26 = [v25 bundleURL];

        v27 = [objc_alloc(MEMORY[0x1E695DFF8]) initFileURLWithFileSystemRepresentation:v23 isDirectory:0 relativeToURL:0];
        v28 = v27;
        if (v26 && v27 && [v26 hasDirectoryPath])
        {
          v29 = [v28 path];
          v30 = [v26 path];
          v31 = [v29 hasPrefix:v30];

          objc_autoreleasePoolPop(v24);
          if (v31)
          {
            return v15;
          }
        }

        else
        {

          objc_autoreleasePoolPop(v24);
        }
      }

      return 0;
    }
  }

  return v15;
}

void UniformTypeIdentifiers::RuntimeIssues::enumerateTypeIdentifiersInDeclarationsArray(void *a1, uint64_t a2)
{
  v18 = *MEMORY[0x1E69E9840];
  if (_NSIsNSArray() && [a1 count])
  {
    v15 = 0u;
    v16 = 0u;
    v13 = 0u;
    v14 = 0u;
    v4 = a1;
    v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
    if (v5)
    {
      v6 = *v14;
      v7 = *MEMORY[0x1E69637F0];
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v14 != v6)
          {
            objc_enumerationMutation(v4);
          }

          v9 = *(*(&v13 + 1) + 8 * i);
          if (_NSIsNSDictionary())
          {
            v10 = [v9 objectForKeyedSubscript:v7];
            if (_NSIsNSString())
            {
              v12 = 0;
              (*(a2 + 16))(a2, v10, &v12);
              if (v12)
              {

                goto LABEL_16;
              }
            }
          }
        }

        v5 = [v4 countByEnumeratingWithState:&v13 objects:v17 count:16];
        if (v5)
        {
          continue;
        }

        break;
      }
    }

LABEL_16:
  }

  v11 = *MEMORY[0x1E69E9840];
}

BOOL ___ZN22UniformTypeIdentifiers13RuntimeIssuesL27checkListsForTypeIdentifierEP8NSStringP7NSArrayIP12NSDictionaryIS2_P11objc_objectEESA__block_invoke(uint64_t a1, __CFString *a2, _BYTE *a3)
{
  result = _UTIdentifiersAreEqual(*(a1 + 32), a2);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 0;
    *a3 = 1;
  }

  return result;
}

id UniformTypeIdentifiers::Type::getImportedType(UniformTypeIdentifiers::Type *this, NSString *a2, UTType *a3, NSBundle *a4)
{
  v6 = MEMORY[0x1E69636B0];
  v7 = [(NSString *)a2 identifier:a3];
  v8 = [v6 typeRecordForImportedTypeWithIdentifier:this conformingToIdentifier:v7];

  if (v8)
  {
    v9 = [UTType _typeWithTypeRecord:v8 detachTypeRecord:1 findConstant:1];
  }

  else
  {
    v10 = a3;
    if (!a3)
    {
      v10 = [MEMORY[0x1E696AAE8] mainBundle];
    }

    v9 = [_UTRuntimeConstantType typeWithIdentifier:this bundle:v10 infoPlistKey:*MEMORY[0x1E6963700]];
    if (!a3)
    {
    }
  }

  return v9;
}

void sub_1AC1B10A0(_Unwind_Exception *a1)
{
  if (!v1)
  {
  }

  _Unwind_Resume(a1);
}

BOOL _UTCoreTypesConstantSetTypeRecordIfNil(uint64_t a1, void *a2)
{
  os_unfair_recursive_lock_lock_with_options();
  v6 = *(a1 + 8);
  v4 = (a1 + 8);
  v5 = v6;
  if (!v6)
  {
    objc_storeStrong(v4, a2);
  }

  os_unfair_recursive_lock_unlock();
  return v5 == 0;
}

uint64_t ___ZN22UniformTypeIdentifiers14TaggedPointersL26registerTaggedPointerClassEv_block_invoke()
{
  if (*MEMORY[0x1E69E5908])
  {
    objc_lookUpClass("_UTTaggedType");
    result = _objc_registerTaggedPointerClass();
    _MergedGlobals_0 = 1;
  }

  return result;
}

id UniformTypeIdentifiers::Type::getExportedType(__CFString *this, NSString *a2, UTType *a3, NSBundle *a4)
{
  v6 = __UTFindCoreTypesConstantWithIdentifier(this, 0x7FFFFFFFFFFFFFFFuLL);
  if (!v6)
  {
    v7 = a2;
    if (!a2)
    {
      v7 = [MEMORY[0x1E696AAE8] mainBundle];
    }

    v6 = [_UTRuntimeConstantType typeWithIdentifier:this bundle:v7 infoPlistKey:*MEMORY[0x1E69636F8]];
    if (!a2)
    {
    }
  }

  return v6;
}

void sub_1AC1B127C(_Unwind_Exception *exception_object)
{
  if (!v1)
  {
  }

  _Unwind_Resume(exception_object);
}

BOOL ___ZN22UniformTypeIdentifiers13RuntimeIssuesL27checkListsForTypeIdentifierEP8NSStringP7NSArrayIP12NSDictionaryIS2_P11objc_objectEESA__block_invoke_2(uint64_t a1, __CFString *a2, _BYTE *a3)
{
  result = _UTIdentifiersAreEqual(*(a1 + 32), a2);
  if (result)
  {
    *(*(*(a1 + 40) + 8) + 24) = 2;
    *a3 = 1;
  }

  return result;
}

BOOL UniformTypeIdentifiers::RuntimeIssues::isBinaryTheCaller(UniformTypeIdentifiers::RuntimeIssues *this, const mach_header *a2)
{
  result = 0;
  if (this && this != &dword_1AC1AE000)
  {
    if (os_unfair_lock_trylock(&_MergedGlobals_4))
    {
      v4 = qword_1ED40DC80;
      if (!qword_1ED40DC80)
      {
        v4 = [(objc_class *)objc_getClass("_UTSwiftOverlayRuntimeIssuesAssistant") dsoHandle];
        qword_1ED40DC80 = v4;
      }

      os_unfair_lock_unlock(&_MergedGlobals_4);
    }

    else
    {
      v4 = [(objc_class *)objc_getClass("_UTSwiftOverlayRuntimeIssuesAssistant") dsoHandle];
    }

    return v4 != this;
  }

  return result;
}

void sub_1AC1B1418(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, objc_super a9)
{
  a9.super_class = _UTRuntimeConstantType;
  [(_Unwind_Exception *)&a9 dealloc];
  _Unwind_Resume(a1);
}

uint64_t ___ZN22UniformTypeIdentifiers9ModelCodeL20getModelCodeOverrideEPU8__strongP8NSStringPNSt3__18optionalI15UTHardwareColorEE_block_invoke()
{
  result = os_variant_has_internal_content();
  _MergedGlobals = result;
  return result;
}

id UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(UniformTypeIdentifiers::ModelCode *a1, UniformTypeIdentifiers::ModelCode *a2, char a3)
{
  v5 = a1;
  v31[1] = *MEMORY[0x1E69E9840];
  if ((a3 & 2) != 0)
  {
    if (!a1 || (v31[0] = a1, [MEMORY[0x1E695DEC8] arrayWithObjects:v31 count:1], a1 = objc_claimAutoreleasedReturnValue(), (v7 = a1) == 0))
    {
      a1 = UniformTypeIdentifiers::ModelCode::getCurrentDeviceModelCodes(a1);
      v7 = a1;
      if (!a1)
      {
        if ((a3 & 1) == 0)
        {
          goto LABEL_35;
        }

LABEL_26:
        if (qword_1ED40DBC0 != -1)
        {
          dispatch_once(&qword_1ED40DBC0, &__block_literal_global_68);
        }

        v15 = UniformTypeIdentifiers::ModelCode::log(a1);
        v16 = os_log_type_enabled(v15, OS_LOG_TYPE_DEBUG);
        if (v16)
        {
          v20 = v5;
          if (!v5)
          {
            v20 = UniformTypeIdentifiers::ModelCode::getCurrentDeviceModelCodes(v16);
          }

          *buf = 138412802;
          *&buf[4] = v20;
          v26 = 2114;
          v27 = qword_1ED40DBB8;
          v28 = 2048;
          v29 = UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(NSString *,std::optional<UTHardwareColor> const&,UniformTypeIdentifiers::ModelCode::Options)::deviceClass;
          _os_log_debug_impl(&dword_1AC1AE000, v15, OS_LOG_TYPE_DEBUG, "Current device model code %@ is unknown: falling back to device class %{public}@ / %lli", buf, 0x20u);
          if (!v5)
          {
          }
        }

        v14 = _UTTypeDevice;
        if (UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(NSString *,std::optional<UTHardwareColor> const&,UniformTypeIdentifiers::ModelCode::Options)::deviceClass <= 4)
        {
          if (UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(NSString *,std::optional<UTHardwareColor> const&,UniformTypeIdentifiers::ModelCode::Options)::deviceClass <= 1)
          {
            if (UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(NSString *,std::optional<UTHardwareColor> const&,UniformTypeIdentifiers::ModelCode::Options)::deviceClass == -1)
            {
              goto LABEL_55;
            }

            if (UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(NSString *,std::optional<UTHardwareColor> const&,UniformTypeIdentifiers::ModelCode::Options)::deviceClass != 1)
            {
              goto LABEL_54;
            }

            v17 = &_UTTypeiPhone;
          }

          else
          {
            switch(UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(NSString *,std::optional<UTHardwareColor> const&,UniformTypeIdentifiers::ModelCode::Options)::deviceClass)
            {
              case 2:
                v17 = &_UTTypeiPodTouch;
                break;
              case 3:
                v17 = &_UTTypeiPad;
                break;
              case 4:
                v17 = &_UTTypeAppleTV;
                break;
              default:
                goto LABEL_54;
            }
          }
        }

        else if (UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(NSString *,std::optional<UTHardwareColor> const&,UniformTypeIdentifiers::ModelCode::Options)::deviceClass > 7)
        {
          switch(UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(NSString *,std::optional<UTHardwareColor> const&,UniformTypeIdentifiers::ModelCode::Options)::deviceClass)
          {
            case 8:
              goto LABEL_55;
            case 9:
              v17 = &_UTTypeMac;
              break;
            case 11:
              v17 = &_UTTypeAppleVisionPro;
              break;
            default:
              goto LABEL_54;
          }
        }

        else
        {
          if (UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(NSString *,std::optional<UTHardwareColor> const&,UniformTypeIdentifiers::ModelCode::Options)::deviceClass == 5)
          {
            goto LABEL_55;
          }

          if (UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(NSString *,std::optional<UTHardwareColor> const&,UniformTypeIdentifiers::ModelCode::Options)::deviceClass != 6)
          {
            if (UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(NSString *,std::optional<UTHardwareColor> const&,UniformTypeIdentifiers::ModelCode::Options)::deviceClass == 7)
            {
              v17 = &_UTTypeHomePod;
              goto LABEL_52;
            }

LABEL_54:
            if (qword_1ED40DBC8 == -1)
            {
              goto LABEL_55;
            }

            dispatch_once(&qword_1ED40DBC8, &__block_literal_global_77);
            goto LABEL_53;
          }

          v17 = &_UTTypeAppleWatch;
        }

LABEL_52:
        v6 = *v17;
        if (v6)
        {
          goto LABEL_56;
        }

LABEL_53:
        v14 = _UTTypeDevice;
        goto LABEL_55;
      }
    }

    *buf = *a2;
    *&buf[8] = *(a2 + 2);
    if ((buf[8] & 1) == 0)
    {
      HardwareColorForCurrentDevice = UniformTypeIdentifiers::ModelCode::getHardwareColorForCurrentDevice(a1);
      if (v9)
      {
        buf[8] = 1;
        *buf = HardwareColorForCurrentDevice;
      }
    }

    v23 = 0u;
    v24 = 0u;
    v21 = 0u;
    v22 = 0u;
    v10 = v7;
    v11 = [(UniformTypeIdentifiers::ModelCode *)v10 countByEnumeratingWithState:&v21 objects:v30 count:16];
    if (v11)
    {
      v12 = *v22;
LABEL_12:
      v13 = 0;
      while (1)
      {
        if (*v22 != v12)
        {
          objc_enumerationMutation(v10);
        }

        v6 = UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCodeAndHardwareColorWithoutResolvingCurrentDevice(*(*(&v21 + 1) + 8 * v13), buf);
        if (v6)
        {
          break;
        }

        if (v11 == ++v13)
        {
          v11 = [(UniformTypeIdentifiers::ModelCode *)v10 countByEnumeratingWithState:&v21 objects:v30 count:16];
          if (v11)
          {
            goto LABEL_12;
          }

          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_18:
      v6 = 0;
    }
  }

  else
  {
    if (!a1)
    {
LABEL_35:
      v6 = 0;
      goto LABEL_56;
    }

    a1 = UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCodeAndHardwareColorWithoutResolvingCurrentDevice(a1, a2);
    v6 = a1;
  }

  if (v6)
  {
    goto LABEL_56;
  }

  if ((a3 & 1) == 0)
  {
    goto LABEL_35;
  }

  if ((a3 & 2) != 0)
  {
    goto LABEL_26;
  }

  if (!v5)
  {
    goto LABEL_35;
  }

  v14 = &_UTTypeAppleDevice;
LABEL_55:
  v6 = *v14;
LABEL_56:
  v18 = *MEMORY[0x1E69E9840];

  return v6;
}

id UniformTypeIdentifiers::ModelCode::getCurrentDeviceModelCodes(UniformTypeIdentifiers::ModelCode *this)
{
  if (qword_1ED40DBB0 != -1)
  {
    dispatch_once(&qword_1ED40DBB0, &__block_literal_global_57);
  }

  v2 = qword_1ED40DBA8;

  return v2;
}

void ___ZN22UniformTypeIdentifiers9ModelCodeL26getCurrentDeviceModelCodesEv_block_invoke()
{
  v4 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (v4)
  {
    v0 = MGCopyAnswer();
    if (v0)
    {
      [v4 addObject:v0];
    }

    v1 = MGCopyAnswer();
    if (v1)
    {
      [v4 addObject:v1];
    }

    if ([v4 count])
    {
      v2 = [v4 copy];
      v3 = qword_1ED40DBA8;
      qword_1ED40DBA8 = v2;
    }
  }
}

void sub_1AC1B1BE0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  v11 = v10;

  _Unwind_Resume(a1);
}

uint64_t UniformTypeIdentifiers::ModelCode::getHardwareColorForCurrentDevice(UniformTypeIdentifiers::ModelCode *this)
{
  if (qword_1ED40DBA0 != -1)
  {
    dispatch_once(&qword_1ED40DBA0, &__block_literal_global_49);
  }

  return qword_1ED40DBE0;
}

void ___ZN22UniformTypeIdentifiers9ModelCodeL32getHardwareColorForCurrentDeviceEv_block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0)
  {
    v2 = [v0 unsignedLongLongValue];
    v3 = 0;
    v4 = (v2 << 32) & 0xFF0000000000 | (v2 << 48) | (BYTE2(v2) << 32);
    v5 = 1;
  }

  else
  {
    v6 = MGCopyAnswer();
    v7 = v6;
    if (v6)
    {
      v4 = [v6 longLongValue] << 32;
      v3 = 1;
      v5 = 1;
    }

    else
    {
      v3 = 0;
      v5 = 0;
      v4 = 0;
    }
  }

  qword_1ED40DBE0 = v4 | v3;
  LOBYTE(dword_1ED40DBE8) = v5;
}

id UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCodeAndHardwareColorWithoutResolvingCurrentDevice(void *a1, UniformTypeIdentifiers::ModelCode *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  if (a1)
  {
    if (*(a2 + 8) == 1)
    {
      v17 = UniformTypeIdentifiers::ModelCode::getHardwareColorSuffix(a2, a2);
    }

    else
    {
      v17 = 0;
    }

    v4 = [a1 mutableCopy];
    if (v4)
    {
      while ([v4 length])
      {
        if (v17)
        {
          v5 = [v4 stringByAppendingString:?];
          if (!v5)
          {
            goto LABEL_38;
          }
        }

        else
        {
          v5 = v4;
        }

        v18 = v5;
        v19 = [UTType typeWithTag:"typeWithTag:tagClass:conformingToType:" tagClass:? conformingToType:?];
        if (v19 && ([v19 isDeclared] & 1) != 0)
        {
          v3 = v19;
        }

        else if (*(a2 + 8) == 1)
        {
          v24 = 0u;
          v25 = 0u;
          v22 = 0u;
          v23 = 0u;
          obj = [UTType typesWithTag:v4 tagClass:@"com.apple.device-model-code" conformingToType:&off_1ED40D980];
          v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
          if (v6)
          {
            v7 = *v23;
LABEL_18:
            v8 = 0;
            while (1)
            {
              if (*v23 != v7)
              {
                objc_enumerationMutation(obj);
              }

              v9 = *(*(&v22 + 1) + 8 * v8);
              if (v9)
              {
                if ([*(*(&v22 + 1) + 8 * v8) isDeclared])
                {
                  v10 = [v9 _getEnclosureColors:v21 count:16];
                  if (v10)
                  {
                    v11 = 0;
                    do
                    {
                      if ((*(a2 + 8) & 1) == 0)
                      {
                        std::__throw_bad_optional_access[abi:ne200100]();
                      }

                      if (_UTHardwareColorsAreEqual(v21[v11], *a2))
                      {
                        v3 = v9;
                      }

                      else
                      {
                        v3 = 0;
                      }

                      ++v11;
                    }

                    while (v11 < v10 && !v3);
                    if (v3)
                    {
                      break;
                    }
                  }
                }
              }

              if (++v8 == v6)
              {
                v6 = [obj countByEnumeratingWithState:&v22 objects:v26 count:16];
                if (v6)
                {
                  goto LABEL_18;
                }

                goto LABEL_34;
              }
            }
          }

          else
          {
LABEL_34:
            v3 = 0;
          }
        }

        else
        {
          v3 = 0;
        }

        if (v3)
        {

          goto LABEL_43;
        }

LABEL_38:
        [v4 deleteCharactersInRange:{objc_msgSend(v4, "length", v5) - 1, 1}];
      }
    }

    if (*(a2 + 8) == 1)
    {
      v26[0] = 0;
      v26[8] = 0;
      v12 = v17;
      v3 = UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCodeAndHardwareColorWithoutResolvingCurrentDevice(v16, v26);
    }

    else
    {
      v3 = 0;
LABEL_43:
      v12 = v17;
    }
  }

  else
  {
    v3 = 0;
  }

  v13 = *MEMORY[0x1E69E9840];

  return v3;
}

id UniformTypeIdentifiers::ModelCode::getHardwareColorSuffix(UniformTypeIdentifiers::ModelCode *this, const UTHardwareColor *a2)
{
  if (*this == 1)
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"@ECOLOR=%llu", *(this + 1), v4, v5];
  }

  else if (*this)
  {
    v2 = 0;
  }

  else
  {
    v2 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithFormat:@"@ECOLOR=%i, %i, %i", *(this + 4), *(this + 5), *(this + 6)];
  }

  return v2;
}

BOOL _UTHardwareColorsAreEqual(unint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    return 0;
  }

  if (a1 != 1)
  {
    if (!a1)
    {
      return WORD2(a1) == WORD2(a2) && BYTE6(a1) == BYTE6(a2);
    }

    return 0;
  }

  return (a2 ^ a1) >> 32 == 0;
}

void _UTPrintModelCodesForCurrentDevice(UniformTypeIdentifiers::ModelCode *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v2 = UniformTypeIdentifiers::ModelCode::getCurrentDeviceModelCodes(a1);
  HardwareColorForCurrentDevice = UniformTypeIdentifiers::ModelCode::getHardwareColorForCurrentDevice(v2);
  v17 = v3;
  if (v3)
  {
    v4 = UniformTypeIdentifiers::ModelCode::getHardwareColorSuffix(&HardwareColorForCurrentDevice, v3);
    if (v4)
    {
      goto LABEL_6;
    }
  }

  else
  {
    fputs("No enclosure color. If this hardware has different enclosure colors, please file a firmware radar.\n", a1);
  }

  v4 = &stru_1F20ECC30;
LABEL_6:
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = v2;
  v6 = [(UniformTypeIdentifiers::ModelCode *)v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v6)
  {
    v7 = *v13;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = [*(*(&v12 + 1) + 8 * i) UTF8String];
        v10 = v4;
        fprintf(a1, "%s%s\n", v9, [(__CFString *)v4 UTF8String]);
      }

      v6 = [(UniformTypeIdentifiers::ModelCode *)v5 countByEnumeratingWithState:&v12 objects:v18 count:16];
    }

    while (v6);
  }

  v11 = *MEMORY[0x1E69E9840];
}

uint64_t _UTHardwareColorGetCurrentEnclosureColor(UniformTypeIdentifiers::ModelCode *a1)
{
  HardwareColorForCurrentDevice = UniformTypeIdentifiers::ModelCode::getHardwareColorForCurrentDevice(a1);
  if (a1 && (v3 & 1) != 0)
  {
    *a1 = HardwareColorForCurrentDevice;
  }

  return v3 & 1;
}

void std::__throw_bad_optional_access[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  *exception = MEMORY[0x1E69E55D8] + 16;
}

void ___ZN22UniformTypeIdentifiers9ModelCodeL26getDeviceTypeWithModelCodeEP8NSStringRKNSt3__18optionalI15UTHardwareColorEENS0_7OptionsE_block_invoke()
{
  v0 = MGCopyAnswer();
  v1 = v0;
  if (v0)
  {
    UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(NSString *,std::optional<UTHardwareColor> const&,UniformTypeIdentifiers::ModelCode::Options)::deviceClass = [v0 unsignedLongLongValue];
  }

  v2 = MGCopyAnswer();
  v3 = qword_1ED40DBB8;
  qword_1ED40DBB8 = v2;
}

id UniformTypeIdentifiers::ModelCode::log(UniformTypeIdentifiers::ModelCode *this)
{
  if (qword_1ED40DBD8 != -1)
  {
    dispatch_once(&qword_1ED40DBD8, &__block_literal_global_79);
  }

  v2 = qword_1ED40DBD0;

  return v2;
}

void ___ZN22UniformTypeIdentifiers9ModelCodeL26getDeviceTypeWithModelCodeEP8NSStringRKNSt3__18optionalI15UTHardwareColorEENS0_7OptionsE_block_invoke_75(UniformTypeIdentifiers::ModelCode *a1)
{
  v12 = *MEMORY[0x1E69E9840];
  v1 = qword_1ED40DBB8;
  v2 = UniformTypeIdentifiers::ModelCode::log(a1);
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_ERROR);
  if (v1)
  {
    if (v3)
    {
      v8 = 138543618;
      v9 = qword_1ED40DBB8;
      v10 = 2048;
      v11 = UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(NSString *,std::optional<UTHardwareColor> const&,UniformTypeIdentifiers::ModelCode::Options)::deviceClass;
      v4 = "Unknown device class %{public}@ / %lli -- please send a bug report to UniformTypeIdentifiers to add support.";
      v5 = v2;
      v6 = 22;
LABEL_7:
      _os_log_error_impl(&dword_1AC1AE000, v5, OS_LOG_TYPE_ERROR, v4, &v8, v6);
    }
  }

  else if (v3)
  {
    v8 = 134217984;
    v9 = UniformTypeIdentifiers::ModelCode::getDeviceTypeWithModelCode(NSString *,std::optional<UTHardwareColor> const&,UniformTypeIdentifiers::ModelCode::Options)::deviceClass;
    v4 = "Unknown device class %lli -- please send a bug report to UniformTypeIdentifiers to add support.";
    v5 = v2;
    v6 = 12;
    goto LABEL_7;
  }

  v7 = *MEMORY[0x1E69E9840];
}

void ___ZN22UniformTypeIdentifiers9ModelCodeL3logEv_block_invoke()
{
  v0 = os_log_create("com.apple.uti", "modelcode");
  v1 = qword_1ED40DBD0;
  qword_1ED40DBD0 = v0;
}

void sub_1AC1B3574(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, char a10)
{
  for (i = 16; i != -8; i -= 8)
  {
  }

  _Unwind_Resume(a1);
}

id UniformTypeIdentifiers::Accessory::log(UniformTypeIdentifiers::Accessory *this)
{
  if (qword_1ED40DC08 != -1)
  {
    dispatch_once(&qword_1ED40DC08, &__block_literal_global_1);
  }

  v2 = _MergedGlobals_1;

  return v2;
}

void ___ZN22UniformTypeIdentifiers9AccessoryL3logEv_block_invoke()
{
  v0 = os_log_create("com.apple.uti", "accessory");
  v1 = _MergedGlobals_1;
  _MergedGlobals_1 = v0;
}

void sub_1AC1B4420(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, char a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, void *a31, uint64_t a32, void *__p, uint64_t a34)
{
  if (__p)
  {
    a34 = __p;
    operator delete(__p);
  }

  _Block_object_dispose(&a26, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1AC1B4EB8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void UniformTypeIdentifiers::Type::detachTypeRecordsInTypes<NSMutableSet<UTType *> * {__strong}>(void *a1)
{
  v18 = *MEMORY[0x1E69E9840];
  v1 = a1;
  if (qword_1ED40DC18 != -1)
  {
    dispatch_once(&qword_1ED40DC18, &__block_literal_global_2);
  }

  if (_MergedGlobals_2 == 1)
  {
    v2 = [v1 count];
    if (v2)
    {
      if (v2 > 0x80)
      {
        v16[0] = 0;
        std::vector<UTTypeRecord *>::vector[abi:ne200100](__p, v2);
      }

      bzero(v16, 0x400uLL);
      *__p = 0u;
      v13 = 0u;
      v14 = 0u;
      v15 = 0u;
      v3 = v1;
      v4 = [v3 countByEnumeratingWithState:__p objects:&v17 count:16];
      if (v4)
      {
        v5 = 0;
        v6 = *v13;
        do
        {
          for (i = 0; i != v4; ++i)
          {
            if (*v13 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(__p[1] + i);
            v9 = v8;
            if ((v8 & 0x8000000000000000) == 0 && [v8 _constantIndex] < 0)
            {
              v10 = [v9 _typeRecord];
              if (v10)
              {
                v16[v5++] = v10;
              }
            }
          }

          v4 = [v3 countByEnumeratingWithState:__p objects:&v17 count:16];
        }

        while (v4);

        if (v5)
        {
          _UTDetachTypeRecords(v16, v5);
        }
      }

      else
      {
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void sub_1AC1B5438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *__p, uint64_t a10)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

void sub_1AC1B67F0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, void *__p, uint64_t a16)
{
  if (__p)
  {
    operator delete(__p);
  }

  _Unwind_Resume(a1);
}

id _UTIdentifierGetCanonicalRepresentation(void *a1)
{
  __p[128] = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [v1 maximumLengthOfBytesUsingEncoding:4];
  v3 = v2 + 1;
  if (v2 == -1)
  {
    v9 = [MEMORY[0x1E696AAA8] currentHandler];
    v10 = [MEMORY[0x1E696AEC0] stringWithUTF8String:{"void withFastBuffer(NSUInteger, const FunctionType &) [ElementType = char, ArraySize = 1024UL, FunctionType = (lambda at /Library/Caches/com.apple.xbs/Sources/UniformTypeIdentifiers/Framework/UTType.mm:1206:34)]"}];
    [v9 handleFailureInFunction:v10 file:@"UTType.mm" lineNumber:1190 description:{@"Invalid parameter not satisfying: %@", @"count > 0"}];
  }

  else if (v3 > 0x400)
  {
    LOBYTE(v11) = 0;
    std::vector<char>::vector[abi:ne200100](__p, v3);
  }

  bzero(__p, 0x400uLL);
  v11 = 0;
  if ([v1 getBytes:__p maxLength:v3 usedLength:&v11 encoding:4 options:0 range:0 remainingRange:{objc_msgSend(v1, "length"), 0}])
  {
    v4 = v11;
    if (v11)
    {
      v5 = __p;
      do
      {
        *v5 = __tolower(*v5);
        v5 = (v5 + 1);
        --v4;
      }

      while (v4);
      v4 = v11;
    }

    v6 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithBytes:__p length:v4 encoding:4];
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x1E69E9840];

  return v6;
}

void sub_1AC1B77E8(_Unwind_Exception *a1)
{
  v4 = v3;

  _Unwind_Resume(a1);
}

void std::vector<UTTypeRecord *>::vector[abi:ne200100](void *a1, unint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if (!(a2 >> 61))
  {
    operator new();
  }

  std::vector<UTTypeRecord *>::__throw_length_error[abi:ne200100]();
}

void sub_1AC1B79A4(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void std::__throw_length_error[abi:ne200100](const char *a1)
{
  exception = __cxa_allocate_exception(0x10uLL);
  std::length_error::length_error[abi:ne200100](exception, a1);
}

std::logic_error *std::length_error::length_error[abi:ne200100](std::logic_error *a1, const char *a2)
{
  result = std::logic_error::logic_error(a1, a2);
  result->__vftable = (MEMORY[0x1E69E55B0] + 16);
  return result;
}

void std::__throw_bad_array_new_length[abi:ne200100]()
{
  exception = __cxa_allocate_exception(8uLL);
  v1 = std::bad_array_new_length::bad_array_new_length(exception);
}

void std::vector<char>::vector[abi:ne200100](void *a1, uint64_t a2)
{
  *a1 = 0;
  a1[1] = 0;
  a1[2] = 0;
  if ((a2 & 0x8000000000000000) == 0)
  {
    operator new();
  }

  std::vector<UTTypeRecord *>::__throw_length_error[abi:ne200100]();
}

void sub_1AC1B7B2C(_Unwind_Exception *exception_object)
{
  v3 = *v1;
  if (*v1)
  {
    *(v1 + 8) = v3;
    operator delete(v3);
  }

  _Unwind_Resume(exception_object);
}

void sub_1AC1B8028(_Unwind_Exception *exception_object)
{
  if (v1)
  {
    operator delete(v1);
  }

  _Unwind_Resume(exception_object);
}

id UniformTypeIdentifiers::CoreTypes::log(UniformTypeIdentifiers::CoreTypes *this)
{
  if (qword_1ED40DC48 != -1)
  {
    dispatch_once(&qword_1ED40DC48, &__block_literal_global_801);
  }

  v2 = qword_1ED40DC40;

  return v2;
}

void __UNIFORM_TYPE_IDENTIFIERS_FAILED_TO_REALIZE_A_COMPILE_TIME_CONSTANT_TYPE_OBJECT__(void *a1)
{
  v21 = *MEMORY[0x1E69E9840];
  v2 = a1[2];
  isKindOfClass = objc_opt_isKindOfClass();
  if (isKindOfClass)
  {
    v4 = UniformTypeIdentifiers::CoreTypes::log(isKindOfClass);
    if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
    {
      *buf = 134218242;
      v14 = a1;
      v15 = 2114;
      v16 = v2;
      _os_log_error_impl(&dword_1AC1AE000, v4, OS_LOG_TYPE_ERROR, "Failed to realize static UTType instance %p for identifier %{public}@. Please file a bug. The type should be present in Core Types.", buf, 0x16u);
    }
  }

  else
  {
    v5 = dladdr(a1, &__s);
    if (v5 && __s.dli_fname)
    {
      v6 = [MEMORY[0x1E696AC08] defaultManager];
      v7 = [v6 stringWithFileSystemRepresentation:__s.dli_fname length:strlen(__s.dli_fname)];

      v8 = [v7 lastPathComponent];
      v9 = [v7 stringByDeletingLastPathComponent];
      v10 = UniformTypeIdentifiers::CoreTypes::log(v9);
      if (os_log_type_enabled(v10, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218754;
        v14 = a1;
        v15 = 2114;
        v16 = v2;
        v17 = 2112;
        v18 = v9;
        v19 = 2114;
        v20 = v8;
        _os_log_error_impl(&dword_1AC1AE000, v10, OS_LOG_TYPE_ERROR, "Failed to realize static UTType instance %p for identifier %{public}@. The type was defined in the binary %@/%{public}@. If that is an Apple binary, please file a bug.", buf, 0x2Au);
      }
    }

    else
    {
      v7 = UniformTypeIdentifiers::CoreTypes::log(v5);
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        *buf = 134218242;
        v14 = a1;
        v15 = 2114;
        v16 = v2;
        _os_log_error_impl(&dword_1AC1AE000, v7, OS_LOG_TYPE_ERROR, "Failed to realize static UTType instance %p for identifier %{public}@. The faulting component was unknown at runtime.", buf, 0x16u);
      }
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

void ___ZN22UniformTypeIdentifiers9CoreTypesL3logEv_block_invoke()
{
  v0 = os_log_create("com.apple.uti", "static");
  v1 = qword_1ED40DC40;
  qword_1ED40DC40 = v0;
}

id _typeIdentifierFromUTType(void *a1)
{
  v1 = a1;
  v2 = [v1 identifier];
  if (![v2 length])
  {
    v4 = [MEMORY[0x1E696AAA8] currentHandler];
    v5 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"NSString *_typeIdentifierFromUTType(UTType *__strong)"];
    [v4 handleFailureInFunction:v5 file:@"NSItemProvider+UTType.m" lineNumber:17 description:{@"Content type %@ has an invalid type identifier.", v1}];
  }

  return v2;
}

id _utTypesFromTypeIdentifiers(void *a1)
{
  v22 = *MEMORY[0x1E69E9840];
  v1 = a1;
  v2 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(v1, "count")}];
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v18 = 0u;
  v3 = v1;
  v4 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v16;
    v8 = MEMORY[0x1E69E9C10];
    *&v5 = 138543362;
    v14 = v5;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v16 != v7)
        {
          objc_enumerationMutation(v3);
        }

        v10 = *(*(&v15 + 1) + 8 * i);
        v11 = [UTType _typeWithIdentifier:v10 allowUndeclared:1, v14, v15];
        if (v11)
        {
          [v2 addObject:v11];
        }

        else if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
        {
          *buf = v14;
          v20 = v10;
          _os_log_error_impl(&dword_1AC1AE000, v8, OS_LOG_TYPE_ERROR, "NSItemProvider contains an invalid type identifier “%{public}@” which will be ignored.", buf, 0xCu);
        }
      }

      v6 = [v3 countByEnumeratingWithState:&v15 objects:v21 count:16];
    }

    while (v6);
  }

  v12 = *MEMORY[0x1E69E9840];

  return v2;
}

void _UTSetRuntimeIssueCatcher(uint64_t a1)
{
  if (qword_1ED40DC68 != -1)
  {
    dispatch_once(&qword_1ED40DC68, &__block_literal_global_4);
  }

  v2 = MEMORY[0x1AC5AE3C0](a1);
  v3 = qword_1ED40DC58;
  qword_1ED40DC58 = v2;
}

void __UNIFORM_TYPE_IDENTIFIER_WAS_NOT_DECLARED_IN_INFO_PLIST_OF_BUNDLE__(uint64_t a1, int a2, void *a3, int a4)
{
  v28 = *MEMORY[0x1E69E9840];
  v7 = a3;
  v8 = v7;
  if (!v7)
  {
    v7 = [MEMORY[0x1E696AAE8] mainBundle];
    v8 = v7;
  }

  v9 = UniformTypeIdentifiers::RuntimeIssues::runtimeIssueLog(v7);
  v10 = os_log_type_enabled(v9, OS_LOG_TYPE_FAULT);
  if (a4 == 2)
  {
    if (v10)
    {
      if (a2)
      {
        v11 = "exported";
      }

      else
      {
        v11 = "imported";
      }

      v12 = [(UniformTypeIdentifiers::RuntimeIssues *)v8 bundleURL];
      v13 = [v12 lastPathComponent];
      v14 = v13;
      if (a2)
      {
        v15 = "imported";
      }

      else
      {
        v15 = "exported";
      }

      v20 = 138544130;
      v21 = a1;
      v22 = 2082;
      v23 = v11;
      v24 = 2114;
      v25 = v13;
      v26 = 2082;
      v27 = v15;
      _os_log_fault_impl(&dword_1AC1AE000, v9, OS_LOG_TYPE_FAULT, "Type %{public}@ was expected to be %{public}s in the Info.plist of %{public}@, but it was %{public}s instead.", &v20, 0x2Au);
    }
  }

  else if (v10)
  {
    if (a2)
    {
      v17 = "exported";
    }

    else
    {
      v17 = "imported";
    }

    v18 = [(UniformTypeIdentifiers::RuntimeIssues *)v8 bundleURL];
    v19 = [v18 lastPathComponent];
    v20 = 138543874;
    v21 = a1;
    v22 = 2082;
    v23 = v17;
    v24 = 2114;
    v25 = v19;
    _os_log_fault_impl(&dword_1AC1AE000, v9, OS_LOG_TYPE_FAULT, "Type %{public}@ was expected to be declared and %{public}s in the Info.plist of %{public}@, but it was not found.", &v20, 0x20u);
  }

  v16 = *MEMORY[0x1E69E9840];
}

id UniformTypeIdentifiers::RuntimeIssues::runtimeIssueLog(UniformTypeIdentifiers::RuntimeIssues *this)
{
  if (qword_1ED40DC78 != -1)
  {
    dispatch_once(&qword_1ED40DC78, &__block_literal_global_6);
  }

  v2 = qword_1ED40DC70;

  return v2;
}

void _ZZZ25_UTSetRuntimeIssueCatcherEUb_EN3__08__invokeEP28os_log_fault_callback_info_s(UniformTypeIdentifiers::RuntimeIssues *a1)
{
  v1 = a1;
  if (off_1ED40DC60)
  {
    a1 = off_1ED40DC60(a1);
  }

  if (qword_1ED40DC58)
  {
    v2 = *(v1 + 1);
    v3 = UniformTypeIdentifiers::RuntimeIssues::runtimeIssueLog(a1);

    if (v2 == v3)
    {
      v4 = qword_1ED40DC58;
      v5 = *(v1 + 5);
      if (v5)
      {
        v6 = [MEMORY[0x1E696AEC0] stringWithUTF8String:v5];
      }

      else
      {
        v6 = @"?";
      }

      v7 = v6;
      (*(v4 + 16))(v4);
      if (v5)
      {
      }
    }
  }
}

void sub_1AC1BA1B4(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, id a10)
{
  if (v10)
  {
  }

  _Unwind_Resume(exception_object);
}

void ___ZN22UniformTypeIdentifiers13RuntimeIssuesL15runtimeIssueLogEv_block_invoke()
{
  v0 = os_log_create("com.apple.runtime-issues", "Type Declaration Issues");
  v1 = qword_1ED40DC70;
  qword_1ED40DC70 = v0;
}

id _UTHardwareColorGetDebugDescription(unint64_t a1)
{
  v2 = a1 >> 40;
  v3 = HIWORD(a1);
  v4 = HIBYTE(a1);
  v5 = objc_alloc(MEMORY[0x1E696AEC0]);
  if (a1 == 1)
  {
    v6 = [v5 initWithFormat:@"<indexed hardware color> { %li }", (v4 << 24) | (v3 << 16) | (v2 << 8) | BYTE4(a1), v8, v9];
  }

  else if (a1)
  {
    v6 = [v5 initWithFormat:@"<hardware color type %u> { %016llx }", a1, a1 | (((v4 << 24) | (v3 << 16) | (v2 << 8) | BYTE4(a1)) << 32), v9];
  }

  else
  {
    v6 = [v5 initWithFormat:@"<RGB hardware color> { r = %u, g = %u, b = %u }", BYTE4(a1), BYTE5(a1), BYTE6(a1)];
  }

  return v6;
}

uint64_t __Block_byref_object_copy__0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}

void operator delete(void *__p)
{
    ;
  }
}

void *__cdecl operator new(size_t __sz, const std::nothrow_t *a2)
{
    ;
  }
}

void operator new()
{
    ;
  }
}