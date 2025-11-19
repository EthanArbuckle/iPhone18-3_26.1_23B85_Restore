BOOL amfi_developer_mode_status()
{
  v2 = 0;
  v3 = 8;
  return !sysctlbyname("security.mac.amfi.developer_mode_status", &v2, &v3, 0, 0) && v2 == 1;
}

uint64_t AMFIExecutionPreflight(void *a1, int a2, void *a3, AMFIError **a4)
{
  v66 = *MEMORY[0x277D85DE8];
  v7 = a1;
  v8 = a3;
  if ((a2 - 2) < 4 || a2 == 11)
  {
    v9 = v7;
    v10 = v8;
    v11 = v10;
    v57 = v8;
    v58 = a4;
    v56 = v9;
    if (!v10 || ![v10 count])
    {
      v18 = [[AMFIPathValidator_ios alloc] initWithURL:v9];
      v19 = 0;
      v20 = 0;
      v21 = 0;
      v22 = 0;
      v23 = 0;
      goto LABEL_13;
    }

    v55 = v9;
    v54 = v11;
    v12 = [v54 objectForKey:@"sliceOffset"];
    objc_opt_class();
    v13 = v12;
    if (objc_opt_isKindOfClass())
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v15 = v14;

    if (v13 && !v14)
    {
      v16 = [[AMFIError alloc] initWithAMFIErrorCode:-404 withURL:v55];
      v17 = +[AMFIFMKLog generic];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        AMFIExecutionPreflight_cold_4();
      }

      goto LABEL_50;
    }

    v30 = [v54 objectForKey:@"cpuType"];

    objc_opt_class();
    v13 = v30;
    if (objc_opt_isKindOfClass())
    {
      v31 = v13;
    }

    else
    {
      v31 = 0;
    }

    v32 = v31;

    if (v13 && !v31)
    {
      v16 = [[AMFIError alloc] initWithAMFIErrorCode:-404 withURL:v55];
      v17 = +[AMFIFMKLog generic];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        AMFIExecutionPreflight_cold_3();
      }

      goto LABEL_50;
    }

    v33 = [v54 objectForKey:@"cpuSubType"];

    objc_opt_class();
    v34 = v33;
    if (objc_opt_isKindOfClass())
    {
      v35 = v34;
    }

    else
    {
      v35 = 0;
    }

    v36 = v35;

    if (v34 && !v31)
    {
      v16 = [[AMFIError alloc] initWithAMFIErrorCode:-404 withURL:v55];
      v17 = +[AMFIFMKLog generic];
      if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
      {
        AMFIExecutionPreflight_cold_2();
      }

      v13 = v34;
      goto LABEL_50;
    }

    v37 = [v54 objectForKey:{@"flags", v35}];

    objc_opt_class();
    v38 = v37;
    if (objc_opt_isKindOfClass())
    {
      v39 = v38;
    }

    else
    {
      v39 = 0;
    }

    v40 = v39;

    if (v38)
    {
      v41 = v53;
      if (!v31)
      {
        v16 = [[AMFIError alloc] initWithAMFIErrorCode:-404 withURL:v55];
        v17 = +[AMFIFMKLog generic];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          AMFIExecutionPreflight_cold_1();
        }

LABEL_49:
        v13 = v38;
LABEL_50:
        v38 = v13;

        v43 = v16;
        v14 = 0;
        v13 = 0;
        v34 = 0;
        v39 = 0;
        v42 = 0;
LABEL_51:

        v22 = v14;
        v21 = v13;
        v20 = v34;
        v19 = v39;
        v23 = v16;
        if (!v42)
        {
LABEL_55:
          a4 = v58;
LABEL_56:
          v47 = v23;
          v27 = 0;
          v26 = v23;
LABEL_57:

          v29 = v26;
          v8 = v57;
          if (!a4)
          {
            goto LABEL_60;
          }

          goto LABEL_58;
        }

        if (v22)
        {
          v44 = [AMFIPathValidator_ios alloc];
          v45 = [v22 unsignedLongLongValue];
          if (v19)
          {
            v46 = -[AMFIPathValidator_ios initWithURL:withFileOffset:withFlags:](v44, "initWithURL:withFileOffset:withFlags:", v55, v45, [v19 intValue]);
          }

          else
          {
            v46 = [(AMFIPathValidator_ios *)v44 initWithURL:v55 withFileOffset:v45];
          }

          v18 = v46;
LABEL_13:
          v24 = v23;
          *buf = v23;
          v25 = [(AMFIPathValidator_ios *)v18 validateWithError:buf];
          v23 = *buf;

          if (v25)
          {
            v26 = 0;
            v27 = 1;
            a4 = v58;
            goto LABEL_57;
          }

          goto LABEL_55;
        }

        if (v21)
        {
          v50 = [[AMFIError alloc] initWithAMFIErrorCode:-404 withURL:v55];

          v51 = +[AMFIFMKLog generic];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            AMFIExecutionPreflight_cold_5();
          }
        }

        else
        {
          if (v19)
          {
            v18 = -[AMFIPathValidator_ios initWithURL:withFlags:]([AMFIPathValidator_ios alloc], "initWithURL:withFlags:", v55, [v19 intValue]);
            v21 = 0;
            v22 = 0;
            goto LABEL_13;
          }

          v50 = [[AMFIError alloc] initWithAMFIErrorCode:-404 withURL:v55];

          v51 = +[AMFIFMKLog generic];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            AMFIExecutionPreflight_cold_5();
          }

          v19 = 0;
        }

        a4 = v58;

        v22 = 0;
        v23 = v50;
        goto LABEL_56;
      }
    }

    else
    {
      v41 = v53;
      if (!v31)
      {
        if (!v53)
        {
          v13 = 0;
          v34 = 0;
          v16 = 0;
          v38 = 0;
          goto LABEL_45;
        }

LABEL_47:
        v16 = [[AMFIError alloc] initWithAMFIErrorCode:-404 withURL:v55];
        v17 = +[AMFIFMKLog generic];
        if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
        {
          v52 = [v55 path];
          *buf = 138413058;
          *&buf[4] = v31;
          v60 = 2112;
          v61 = v53;
          v62 = 2112;
          v63 = v14;
          v64 = 2112;
          v65 = v52;
          _os_log_error_impl(&dword_240EEA000, v17, OS_LOG_TYPE_ERROR, "Invalid options combination cpuType: (%@) cpuSubType: (%@) sliceOffset: (%@) for: %@", buf, 0x2Au);
        }

        goto LABEL_49;
      }
    }

    if (v41 && !v14)
    {
      v16 = 0;
LABEL_45:
      v42 = 1;
      goto LABEL_51;
    }

    goto LABEL_47;
  }

  v28 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
  {
    AMFIExecutionPreflight_cold_7(v7);
  }

  v29 = [[AMFIError alloc] initWithAMFIErrorCode:-403 withURL:v7];
  v27 = 0;
  if (a4)
  {
LABEL_58:
    if ((v27 & 1) == 0)
    {
      v29 = v29;
      *a4 = v29;
    }
  }

LABEL_60:

  v48 = *MEMORY[0x277D85DE8];
  return v27;
}

id hexStringForData(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (v1 && (v3 = [v1 length], v4 = objc_msgSend(v2, "bytes"), (v5 = malloc_type_calloc((2 * v3) | 1, 1uLL, 0xE2E4DAF2uLL)) != 0))
  {
    v6 = v5;
    if (v3)
    {
      v7 = v5;
      do
      {
        v8 = *v4++;
        sprintf(v7, "%2.2x", v8);
        v7 += 2;
        --v3;
      }

      while (v3);
    }

    v9 = [MEMORY[0x277CCACA8] stringWithUTF8String:v6];
    free(v6);
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

uint64_t NSErrorToAMFIReturn(void *a1)
{
  v1 = a1;
  v2 = v1;
  if (!v1)
  {
    v6 = 0;
    goto LABEL_12;
  }

  v3 = [v1 domain];
  v4 = [v3 isEqualToString:@"AppleMobileFileIntegrityError"];

  if (v4)
  {
    v5 = [v2 code];
    if (v5 <= -409)
    {
      if (v5 == -440)
      {
        v6 = 14;
        goto LABEL_12;
      }

      if (v5 == -409)
      {
        v6 = 13;
        goto LABEL_12;
      }
    }

    else
    {
      switch(v5)
      {
        case -408:
          v6 = 8;
          goto LABEL_12;
        case -406:
          v6 = 7;
          goto LABEL_12;
        case -407:
          v6 = 12;
          goto LABEL_12;
      }
    }

    v6 = 1;
    goto LABEL_12;
  }

  v7 = [v2 domain];
  v8 = [v7 isEqualToString:*MEMORY[0x277CCA050]];

  if (v8)
  {
    v6 = 9;
  }

  else
  {
    v6 = 1;
  }

LABEL_12:

  return v6;
}

uint64_t matchIn(uint64_t a1, char *__s2)
{
  v2 = *(a1 + 8);
  if (!v2)
  {
    return 0;
  }

  for (i = a1; *i == 1; i += 16)
  {
    v5 = strlen(v2);
    if (!strncmp(v2, __s2, v5))
    {
      return 1;
    }

LABEL_7:
    v2 = *(i + 24);
    if (!v2)
    {
      return 0;
    }
  }

  if (strcmp(v2, __s2))
  {
    goto LABEL_7;
  }

  return 1;
}

CFIndex AMFICopySwiftPlaygroundsSigningKey(__SecKey **a1)
{
  v2 = SecKeyCopySystemKey();
  if (v2)
  {
    v3 = v2;
    v4 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_240EEA000, v4, OS_LOG_TYPE_DEFAULT, "found local signing key as a system key", buf, 2u);
    }

    goto LABEL_5;
  }

  *buf = 0;
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
  if (Mutable)
  {
    v8 = Mutable;
    CFDictionaryAddValue(Mutable, *MEMORY[0x277CDC228], *MEMORY[0x277CDC250]);
    v9 = *MEMORY[0x277CBED28];
    CFDictionaryAddValue(v8, *MEMORY[0x277CDBF68], *MEMORY[0x277CBED28]);
    CFDictionaryAddValue(v8, *MEMORY[0x277CDC568], v9);
    CFDictionaryAddValue(v8, *MEMORY[0x277CDC080], @"com.apple.swift-playgrounds.local-signing-key");
    CFDictionaryAddValue(v8, *MEMORY[0x277CDBEC8], @"com.apple.local-signing");
    CFDictionaryAddValue(v8, *MEMORY[0x277CDC5C8], v9);
    v10 = SecItemCopyMatching(v8, buf);
    if (v10)
    {
      v11 = v10;
      v12 = +[AMFIFMKLog generic];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
      {
        AMFICopySwiftPlaygroundsSigningKey_cold_1();
      }

LABEL_14:

      CFRelease(v8);
      ValueAtIndex = 0;
      goto LABEL_39;
    }

    v15 = CFGetTypeID(*buf);
    TypeID = CFArrayGetTypeID();
    v17 = *buf;
    if (v15 == TypeID)
    {
      *buf = 0;
      Count = CFArrayGetCount(v17);
      if (!Count)
      {
        v21 = +[AMFIFMKLog generic];
        if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
        {
          AMFICopySwiftPlaygroundsSigningKey_cold_4();
        }

        ValueAtIndex = 0;
        v11 = -25300;
        goto LABEL_37;
      }

      if (Count >= 2)
      {
        v19 = +[AMFIFMKLog generic];
        if (os_log_type_enabled(v19, OS_LOG_TYPE_ERROR))
        {
          AMFICopySwiftPlaygroundsSigningKey_cold_3();
        }

        v11 = -67843;

        ValueAtIndex = 0;
LABEL_37:
        CFRelease(v8);
        if (v17)
        {
          CFRelease(v17);
        }

        goto LABEL_39;
      }

      ValueAtIndex = CFArrayGetValueAtIndex(v17, 0);
      CFRetain(ValueAtIndex);
    }

    else
    {
      v20 = CFGetTypeID(*buf);
      if (v20 != SecKeyGetTypeID())
      {
        v11 = -67843;
        v12 = +[AMFIFMKLog generic];
        if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
        {
          AMFICopySwiftPlaygroundsSigningKey_cold_2();
        }

        goto LABEL_14;
      }

      v17 = 0;
      ValueAtIndex = *buf;
      *buf = 0;
    }

    CFRetain(ValueAtIndex);
    v22 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      *valuePtr = 0;
      _os_log_impl(&dword_240EEA000, v22, OS_LOG_TYPE_DEFAULT, "successfully copied local signing private key from keychain", valuePtr, 2u);
    }

    if (ValueAtIndex)
    {
      CFRelease(ValueAtIndex);
    }

    v11 = 0;
    goto LABEL_37;
  }

  v14 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
  {
    AMFICopySwiftPlaygroundsSigningKey_cold_5();
  }

  ValueAtIndex = 0;
  v11 = -26276;
LABEL_39:
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (!v11)
  {
    goto LABEL_74;
  }

  if (v11 == -67843)
  {
    Code = 4294899453;
    v23 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      AMFICopySwiftPlaygroundsSigningKey_cold_6();
    }

LABEL_73:
    v3 = 0;
    goto LABEL_77;
  }

  v54 = 1;
  *valuePtr = 384;
  *buf = 0;
  v24 = *MEMORY[0x277CBECE8];
  v25 = CFNumberCreate(*MEMORY[0x277CBECE8], kCFNumberIntType, valuePtr);
  if (!v25)
  {
    v36 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v36, OS_LOG_TYPE_ERROR))
    {
      AMFICopySwiftPlaygroundsSigningKey_cold_13();
    }

    goto LABEL_60;
  }

  v26 = v25;
  v27 = SecAccessControlCreateWithFlags(v24, *MEMORY[0x277CDBEE8], 0, 0);
  if (!v27)
  {
    v37 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v37, OS_LOG_TYPE_ERROR))
    {
      AMFICopySwiftPlaygroundsSigningKey_cold_12();
    }

    CFRelease(v26);
LABEL_60:
    Code = 4294941020;
    goto LABEL_68;
  }

  v28 = v27;
  v29 = CFNumberCreate(v24, kCFNumberIntType, &v54);
  if (v29)
  {
    v30 = CFDictionaryCreateMutable(0, 0, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    if (v30)
    {
      v31 = v30;
      CFDictionaryAddValue(v30, *MEMORY[0x277CDC028], *MEMORY[0x277CDC040]);
      CFDictionaryAddValue(v31, *MEMORY[0x277CDC018], v26);
      v32 = *MEMORY[0x277CBED28];
      CFDictionaryAddValue(v31, *MEMORY[0x277CDBFD0], *MEMORY[0x277CBED28]);
      CFDictionaryAddValue(v31, *MEMORY[0x277CDC080], @"com.apple.swift-playgrounds.local-signing-key");
      CFDictionaryAddValue(v31, *MEMORY[0x277CDBEC8], @"com.apple.local-signing");
      CFDictionaryAddValue(v31, *MEMORY[0x277CDC5C8], v32);
      CFDictionaryAddValue(v31, *MEMORY[0x277CDBEC0], v28);
      CFDictionaryAddValue(v31, *MEMORY[0x277CDC150], v29);
      RandomKey = SecKeyCreateRandomKey(v31, buf);
      if (RandomKey)
      {
        v34 = RandomKey;
        CFRetain(RandomKey);
        v35 = +[AMFIFMKLog generic];
        if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
        {
          *v53 = 0;
          _os_log_impl(&dword_240EEA000, v35, OS_LOG_TYPE_DEFAULT, "successfully created local signing private key in keychain", v53, 2u);
        }

        CFRelease(v34);
        Code = 0;
        ValueAtIndex = v34;
      }

      else
      {
        v47 = *buf;
        if (*buf)
        {
          v48 = CFErrorCopyFailureReason(*buf);
          Code = CFErrorGetCode(v47);
          if (v48)
          {
            CStringPtr = CFStringGetCStringPtr(v48, 0x8000100u);
            v50 = +[AMFIFMKLog generic];
            if (os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              AMFICopySwiftPlaygroundsSigningKey_cold_7(CStringPtr, Code, v50);
            }

            CFRelease(v48);
          }

          else
          {
            v52 = +[AMFIFMKLog generic];
            if (os_log_type_enabled(v52, OS_LOG_TYPE_ERROR))
            {
              AMFICopySwiftPlaygroundsSigningKey_cold_8();
            }
          }
        }

        else
        {
          v51 = +[AMFIFMKLog generic];
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            AMFICopySwiftPlaygroundsSigningKey_cold_9();
          }

          Code = 4294941020;
        }
      }

      CFRelease(v31);
      goto LABEL_66;
    }

    v38 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      AMFICopySwiftPlaygroundsSigningKey_cold_10();
    }
  }

  else
  {
    v38 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v38, OS_LOG_TYPE_ERROR))
    {
      AMFICopySwiftPlaygroundsSigningKey_cold_11();
    }
  }

  Code = 4294941020;
LABEL_66:
  CFRelease(v28);
  CFRelease(v26);
  if (v29)
  {
    CFRelease(v29);
  }

LABEL_68:
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (Code)
  {
    v23 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_ERROR))
    {
      AMFICopySwiftPlaygroundsSigningKey_cold_14();
    }

    goto LABEL_73;
  }

LABEL_74:
  v3 = ValueAtIndex;
  CFRetain(ValueAtIndex);
  v23 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_240EEA000, v23, OS_LOG_TYPE_DEFAULT, "successfully copied local signing private key", buf, 2u);
  }

  Code = 0;
LABEL_77:

  if (ValueAtIndex)
  {
    CFRelease(ValueAtIndex);
  }

  if (Code)
  {
    v39 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      AMFICopySwiftPlaygroundsSigningKey_cold_15();
    }

    goto LABEL_101;
  }

  *buf = 0;
  v40 = SecKeyCopyPublicKey(v3);
  if (!v40)
  {
    v44 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
    {
      AMFICopySwiftPlaygroundsSigningKey_cold_19();
    }

    Code = 4294941020;
    goto LABEL_99;
  }

  v41 = v40;
  v42 = SecKeyCopyPublicBytes();
  if (v42)
  {
    Code = v42;
    v43 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      AMFICopySwiftPlaygroundsSigningKey_cold_16();
    }

    goto LABEL_96;
  }

  if (CFDataGetLength(*buf) != 97)
  {
    v43 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v43, OS_LOG_TYPE_ERROR))
    {
      AMFICopySwiftPlaygroundsSigningKey_cold_17();
    }

    goto LABEL_95;
  }

  BytePtr = CFDataGetBytePtr(*buf);
  Code = amfi_interface_set_local_signing_public_key(BytePtr);
  v46 = +[AMFIFMKLog generic];
  v43 = v46;
  if (Code)
  {
    if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
    {
      AMFICopySwiftPlaygroundsSigningKey_cold_18(v43);
    }

LABEL_95:
    Code = 4294941020;
    goto LABEL_96;
  }

  if (os_log_type_enabled(v46, OS_LOG_TYPE_DEFAULT))
  {
    *valuePtr = 0;
    _os_log_impl(&dword_240EEA000, v43, OS_LOG_TYPE_DEFAULT, "added local signing public key to AMFI", valuePtr, 2u);
    Code = 0;
  }

LABEL_96:

  CFRelease(v41);
  if (*buf)
  {
    CFRelease(*buf);
  }

  if (Code)
  {
LABEL_99:
    v39 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v39, OS_LOG_TYPE_ERROR))
    {
      AMFICopySwiftPlaygroundsSigningKey_cold_20();
    }

LABEL_101:

    if (!v3)
    {
      return Code;
    }

    goto LABEL_8;
  }

LABEL_5:
  if (a1)
  {
    *a1 = v3;
    CFRetain(v3);
  }

  Code = 0;
  if (v3)
  {
LABEL_8:
    CFRelease(v3);
  }

  return Code;
}

__CFString *errorStringForAMFIErrorCode(uint64_t a1)
{
  if ((a1 + 430) > 0x1D)
  {
    return @"An unknown error was encountered";
  }

  else
  {
    return off_278CBB9C8[a1 + 430];
  }
}

uint64_t errorCodeForMISError(int a1)
{
  if (a1 + 402620399) < 0xE && ((0x2237u >> (a1 - 17)))
  {
    return qword_240EF6E48[a1 + 402620399];
  }

  v3 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
  {
    errorCodeForMISError_cold_1(a1, v3);
  }

  return -400;
}

uint64_t AMFIShouldShowDeveloperModeSettings()
{
  if (amfi_developer_mode_status())
  {
    return 1;
  }

  v0 = [MEMORY[0x277CCAA00] defaultManager];
  v1 = [v0 fileExistsAtPath:@"/private/var/tmp/show_dev_mode"];

  if (v1)
  {
    return 1;
  }

  v4 = 0;
  v5 = &v4;
  v6 = 0x2020000000;
  v7 = 0;
  v2 = !MISEnumerateMatchingProfiles() && (v5[3] & 1) != 0;
  _Block_object_dispose(&v4, 8);
  return v2;
}

void sub_240EED6B8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __AMFIShouldShowDeveloperModeSettings_block_invoke(uint64_t a1, _BYTE *a2)
{
  if (a2[16] & 1) != 0 || (a2[17])
  {
    return 1;
  }

  result = 1;
  if ((a2[20] & 1) == 0)
  {
    *(*(*(a1 + 32) + 8) + 24) = 1;
    return 0;
  }

  return result;
}

uint64_t amfi_interface_cdhash_in_trustcache(__int128 *a1, uint64_t a2, void *a3)
{
  v9 = *MEMORY[0x277D85DE8];
  result = 22;
  if (a1 && a2 == 20 && a3)
  {
    *a3 = 0;
    v7 = *a1;
    v8 = *(a1 + 4);
    result = __sandbox_ms();
    if (result)
    {
      result = *__error();
    }

    else
    {
      *a3 = 0;
    }
  }

  v6 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t amfi_interface_query_bootarg_state(void *a1)
{
  if (!a1)
  {
    return 22;
  }

  *a1 = 0;
  result = __sandbox_ms();
  if (result)
  {
    return *__error();
  }

  *a1 = 0;
  return result;
}

uint64_t amfi_interface_get_local_signing_private_key(_BYTE *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 0;
  memset(__s2, 0, sizeof(__s2));
  if (a1)
  {
    a1[144] = 0;
    *(a1 + 7) = 0uLL;
    *(a1 + 8) = 0uLL;
    *(a1 + 5) = 0uLL;
    *(a1 + 6) = 0uLL;
    *(a1 + 3) = 0uLL;
    *(a1 + 4) = 0uLL;
    *(a1 + 1) = 0uLL;
    *(a1 + 2) = 0uLL;
    *a1 = 0uLL;
    result = __sandbox_ms();
    if (!result)
    {
      result = 2 * (memcmp(a1, __s2, 0x91uLL) == 0);
    }
  }

  else
  {
    result = 22;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t amfi_interface_get_local_signing_public_key(_BYTE *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  v5 = 0;
  memset(__s2, 0, sizeof(__s2));
  if (a1)
  {
    a1[96] = 0;
    *(a1 + 4) = 0uLL;
    *(a1 + 5) = 0uLL;
    *(a1 + 2) = 0uLL;
    *(a1 + 3) = 0uLL;
    *a1 = 0uLL;
    *(a1 + 1) = 0uLL;
    result = __sandbox_ms();
    if (!result)
    {
      result = 2 * (memcmp(a1, __s2, 0x61uLL) == 0);
    }
  }

  else
  {
    result = 22;
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t amfi_interface_set_local_signing_public_key(_OWORD *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v12 = 0;
  memset(__s2, 0, sizeof(__s2));
  if (!a1 || !memcmp(a1, __s2, 0x61uLL))
  {
    result = 22;
  }

  else
  {
    v8 = a1[4];
    v9 = a1[5];
    v10 = *(a1 + 96);
    v4 = *a1;
    v5 = a1[1];
    v6 = a1[2];
    v7 = a1[3];
    result = __sandbox_ms();
  }

  v3 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t amfi_interface_authorize_local_signing(__int128 *a1)
{
  v5 = *MEMORY[0x277D85DE8];
  v3 = *a1;
  v4 = *(a1 + 4);
  result = __sandbox_ms();
  v2 = *MEMORY[0x277D85DE8];
  return result;
}

BOOL amfi_developer_mode_resolved()
{
  v2 = 0;
  v3 = 8;
  return !sysctlbyname("security.mac.amfi.developer_mode_resolved", &v2, &v3, 0, 0) && v2 == 1;
}

uint64_t amfi_launch_constraint_set_spawnattr(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1 && a2 && (a3 - 1) <= 0x3FFE)
  {
    return MEMORY[0x282203E88]();
  }

  else
  {
    return 22;
  }
}

uint64_t amfi_launch_constraint_matches_process(__int128 *a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a4;
  v11[128] = *MEMORY[0x277D85DE8];
  if (!a2 || !a3)
  {
    if (a4)
    {
      result = 0;
      *a4 = 5;
      strcpy((a4 + 4), "No Constraint provided");
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (a3 <= 0x4000)
  {
    bzero(v11, 0x400uLL);
    v10 = 5;
    if (!v4)
    {
      v4 = &v10;
    }

    v8 = *a1;
    v9 = a1[1];
    if (!__sandbox_ms() && !*v4)
    {
      result = 1;
      goto LABEL_13;
    }

    goto LABEL_12;
  }

  if (!a4)
  {
LABEL_12:
    result = 0;
    goto LABEL_13;
  }

  result = 0;
  *a4 = 5;
  strcpy((a4 + 4), "Constraint too large");
LABEL_13:
  v7 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t validateCodeSigningFlags(void (**a1)(int *, uint64_t), uint64_t a2)
{
  v2 = *a1;
  if ((*a1 - 1) >= 2)
  {
    if (v2 == 8)
    {
      v3 = -738426648;
      goto LABEL_6;
    }

    if (v2 != 4)
    {
      v4 = 15;
      goto LABEL_10;
    }
  }

  v3 = -3203661632;
LABEL_6:
  if ((a2 & v3) == 0)
  {
    return 1;
  }

  v4 = 14;
LABEL_10:
  a1[9](a1, v4);
  return 0;
}

const char *LWCRTypeVerificationBackend_errorStringForCode(int a1)
{
  if ((a1 - 1) > 0xE)
  {
    return "Success";
  }

  else
  {
    return off_278CBBD10[a1 - 1];
  }
}

uint64_t verifyAndOrDictionary(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *a3 = 0;
  if ((*(a1 + 16))(a2) != 32)
  {
    (*(a1 + 72))(a1, 3);
    goto LABEL_5;
  }

  v6 = *(a1 + 4) + 1;
  *(a1 + 4) = v6;
  if (v6 >= 6)
  {
    (*(a1 + 72))(a1, 13);
LABEL_5:
    v7 = 0;
    return v7 & 1;
  }

  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 1;
  v12 = 0;
  v13 = &v12;
  v14 = 0x2000000000;
  v15 = 0;
  v8 = *(a1 + 40);
  v11[0] = MEMORY[0x277D85DD0];
  v11[1] = 0x40000000;
  v11[2] = __verifyAndOrDictionary_block_invoke;
  v11[3] = &unk_278CBBB88;
  v11[5] = &v16;
  v11[6] = a1;
  v11[4] = &v12;
  v8(a2, v11);
  v9 = *(v13 + 6);
  if (v9 == 1)
  {
    *a3 = 1;
  }

  else if (!v9 && (v17[3] & 1) != 0)
  {
    *(v17 + 24) = 0;
    (*(a1 + 72))(a1, 12);
  }

  --*(a1 + 4);
  v7 = *(v17 + 24);
  _Block_object_dispose(&v12, 8);
  _Block_object_dispose(&v16, 8);
  return v7 & 1;
}

uint64_t LWCRTypeVerificationBackend_verifyLWCR(uint64_t a1, uint64_t a2)
{
  if ((*(a1 + 16))(a2) == 32)
  {
    v17 = 0;
    v18 = &v17;
    v19 = 0x2000000000;
    v20 = 1;
    v13 = 0;
    v14 = &v13;
    v15 = 0x2000000000;
    v16 = 0;
    v9 = 0;
    v10 = &v9;
    v11 = 0x2000000000;
    v12 = 0;
    v4 = *(a1 + 40);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = __LWCRTypeVerificationBackend_verifyLWCR_block_invoke;
    v8[3] = &unk_278CBBB60;
    v8[4] = &v17;
    v8[5] = &v13;
    v8[6] = &v9;
    v8[7] = a1;
    v4(a2, v8);
    v5 = 0;
    if (*(v18 + 24) == 1)
    {
      v6 = v14[3];
      if (!v6 || (v5 = 1, v6 == 127) && *a1 == 2)
      {
        if (v10[3])
        {
          v5 = 1;
        }

        else
        {
          (*(a1 + 56))(a1, "ccat");
          *(v18 + 24) = 0;
          (*(a1 + 72))(a1, 12);
          v5 = *(v18 + 24);
        }
      }
    }

    _Block_object_dispose(&v9, 8);
    _Block_object_dispose(&v13, 8);
    _Block_object_dispose(&v17, 8);
  }

  else
  {
    (*(a1 + 72))(a1, 2);
    v5 = 0;
  }

  return v5 & 1;
}

uint64_t __verifyAndOrDictionary_block_invoke(void *a1, char *a2, uint64_t a3)
{
  (*(a1[6] + 56))();
  v9 = 0;
  if (*a2 != 36)
  {
    if (verifyFactName(a1[6], a2, a3, &v9))
    {
      goto LABEL_3;
    }

LABEL_5:
    *(*(a1[5] + 8) + 24) = 0;
    v6 = *(*(a1[5] + 8) + 24);
    return v6 & 1;
  }

  if (!verifyFactLessOperator(a1[6], a2, a3, &v9, &v8))
  {
    goto LABEL_5;
  }

LABEL_3:
  (*(a1[6] + 64))();
  ++*(*(a1[4] + 8) + 24);
  v6 = 1;
  return v6 & 1;
}

uint64_t verifyFactLessOperator(uint64_t a1, char *a2, uint64_t a3, _BYTE *a4, _BYTE *a5)
{
  *a4 = 0;
  *a5 = 0;
  if (!keyIsKnownFactlessDictOperator(a2) && !keyIsKnownOperatorArrayOperator(a2))
  {
    IsKnownForCategory = keyIsKnownForCategory(a2, *a1);
    if (IsKnownForCategory == 1)
    {
      *a4 = 1;
    }

    else if (!IsKnownForCategory)
    {
      (*(a1 + 72))(a1, 4);
      goto LABEL_23;
    }

    (*(a1 + 72))(a1, 1);
    goto LABEL_23;
  }

  if (keyIsKnownBooleanOperator(a2))
  {

    return verifyAndOrDictionary(a1, a3, a5);
  }

  if (strcmp(a2, "$optional"))
  {
    if (keyIsKnownOperatorArrayOperator(a2))
    {
      if ((*(a1 + 16))(a3) == 16)
      {
        v19 = 0;
        v20 = &v19;
        v21 = 0x2000000000;
        v22 = 1;
        v15 = 0;
        v16 = &v15;
        v17 = 0x2000000000;
        v18 = 0;
        v11 = *(a1 + 48);
        v14[0] = MEMORY[0x277D85DD0];
        v14[1] = 0x40000000;
        v14[2] = __verifyOperatorArray_block_invoke;
        v14[3] = &unk_278CBBC50;
        v14[5] = &v15;
        v14[6] = a1;
        v14[4] = &v19;
        v11(a3, v14);
        if (*(v16 + 6) == 1)
        {
          *a5 = 1;
        }

        v12 = *(v20 + 24);
        _Block_object_dispose(&v15, 8);
        _Block_object_dispose(&v19, 8);
        return v12 & 1;
      }

      (*(a1 + 72))(a1, 3);
    }

    else
    {
      (*(a1 + 72))(a1, 10);
    }

LABEL_23:
    v12 = 0;
    return v12 & 1;
  }

  return verifyOptionalDictionary(a1, a3, 0);
}

uint64_t verifyFactName(uint64_t a1, char *__s1, uint64_t a3, _BYTE *a4)
{
  *a4 = 0;
  v26 = 0;
  v8 = *a1;
  IsKnownForCategory = factIsKnownForCategory(__s1, *a1, &v26);
  if (IsKnownForCategory != 1)
  {
    v10 = IsKnownForCategory;
    if (!IsKnownForCategory)
    {
      v11 = v26;
      v12 = *(v26 + 3);
      if (v12 <= 3)
      {
        if (v12 != 1)
        {
          if (v12 == 2)
          {
            v18 = (*(a1 + 16))(a3, IsKnownForCategory);
            if ((v18 & 2) == 0)
            {
              if (v18 == 32)
              {
                v14 = a1;
                v15 = a3;
                v16 = 2;
                goto LABEL_25;
              }

              goto LABEL_30;
            }

            goto LABEL_31;
          }

LABEL_32:
          if (!__s1 || strcmp(__s1, kKnownQueryFacts))
          {
            goto LABEL_20;
          }

          if ((*(a1 + 16))(a3) == 32)
          {
            v24 = *(a1 + 4) + 1;
            *(a1 + 4) = v24;
            if (v24 < 6)
            {
              v32[0] = 0;
              v32[1] = v32;
              v32[2] = 0x2000000000;
              v33 = 0;
              v28 = 0;
              v29 = &v28;
              v30 = 0x2000000000;
              v31 = 1;
              v25 = *(a1 + 40);
              v27[0] = MEMORY[0x277D85DD0];
              v27[1] = 0x40000000;
              v27[2] = __verifyQueryTypeFact_block_invoke;
              v27[3] = &unk_278CBBCA0;
              v27[5] = &v28;
              v27[6] = a1;
              v27[4] = v32;
              v25(a3, v27);
              --*(a1 + 4);
              v19 = *(v29 + 24);
              _Block_object_dispose(&v28, 8);
              _Block_object_dispose(v32, 8);
              return v19 & 1;
            }

            (*(a1 + 72))(a1, 13);
            goto LABEL_20;
          }

          goto LABEL_30;
        }

        if ((*(a1 + 16))(a3, IsKnownForCategory))
        {
          goto LABEL_31;
        }
      }

      else
      {
        switch(v12)
        {
          case 4:
            v21 = (*(a1 + 16))(a3, IsKnownForCategory);
            if (v21 == 4)
            {
              goto LABEL_31;
            }

            if (v21 == 32)
            {
              v14 = a1;
              v15 = a3;
              v16 = 4;
              goto LABEL_25;
            }

            break;
          case 64:
            if ((*(a1 + 16))(a3, IsKnownForCategory) == 32)
            {
              v14 = a1;
              v15 = a3;
              v16 = 64;
              v22 = a4;
              v23 = v11;
              goto LABEL_28;
            }

            break;
          case 8:
            v13 = (*(a1 + 16))(a3, IsKnownForCategory);
            if (v13 != 8)
            {
              if (v13 == 32)
              {
                v14 = a1;
                v15 = a3;
                v16 = 8;
LABEL_25:
                v22 = a4;
                v23 = 0;
LABEL_28:
                v19 = verifyFactOperatorDictionary(v14, v15, v16, v22, 0, v23);
                return v19 & 1;
              }

              break;
            }

LABEL_31:
            v19 = 1;
            return v19 & 1;
          default:
            goto LABEL_32;
        }
      }

LABEL_30:
      (*(a1 + 72))(a1, 3);
      goto LABEL_20;
    }

    goto LABEL_19;
  }

  v17 = keyIsKnownForCategory(__s1, v8);
  v10 = v17;
  if (v17 == 1)
  {
    *a4 = 1;
    goto LABEL_19;
  }

  if (v17)
  {
LABEL_19:
    (*(a1 + 72))(a1, v10);
    goto LABEL_20;
  }

  (*(a1 + 72))(a1, 4);
LABEL_20:
  v19 = 0;
  return v19 & 1;
}

BOOL keyIsKnownBooleanOperator(_BOOL8 __s1)
{
  if (__s1)
  {
    v1 = __s1;
    v2 = 0;
    do
    {
      v3 = strcmp(v1, (&kKnownBooleanOperators)[v2]) == 0;
      __s1 = v3;
      v3 = v3 || v2++ == 1;
    }

    while (!v3);
  }

  return __s1;
}

uint64_t verifyOptionalDictionary(uint64_t a1, uint64_t a2, int a3)
{
  if ((*(a1 + 16))(a2) != 32)
  {
    (*(a1 + 72))(a1, 3);
    goto LABEL_5;
  }

  v6 = *(a1 + 4) + 1;
  *(a1 + 4) = v6;
  if (v6 < 6)
  {
    v19 = 0;
    v20 = &v19;
    v21 = 0x2000000000;
    v22[0] = 0;
    v15 = 0;
    v16 = &v15;
    v17 = 0x2000000000;
    v18 = 1;
    v13[0] = 0;
    v13[1] = v13;
    v13[2] = 0x2000000000;
    v14 = 0;
    if (a3)
    {
      if (verifyFactOperatorDictionary(a1, a2, a3, v22, 1, 0))
      {
        --*(a1 + 4);
        v7 = 1;
LABEL_14:
        _Block_object_dispose(v13, 8);
        _Block_object_dispose(&v15, 8);
        _Block_object_dispose(&v19, 8);
        return v7 & 1;
      }

      if (*(v20 + 24) == 1)
      {
        (*(a1 + 64))(a1);
        v9 = *(a1 + 40);
        v11[0] = MEMORY[0x277D85DD0];
        v11[1] = 0x40000000;
        v11[2] = __verifyOptionalDictionary_block_invoke_2;
        v11[3] = &unk_278CBBBD8;
        v11[4] = v13;
        v11[5] = &v15;
        v11[6] = a1;
        v9(a2, v11);
      }

      else
      {
        *(v16 + 24) = 0;
      }
    }

    else
    {
      v8 = *(a1 + 40);
      v12[0] = MEMORY[0x277D85DD0];
      v12[1] = 0x40000000;
      v12[2] = __verifyOptionalDictionary_block_invoke;
      v12[3] = &unk_278CBBBB0;
      v12[4] = v13;
      v12[5] = &v15;
      v12[6] = &v19;
      v12[7] = a1;
      v8(a2, v12);
    }

    --*(a1 + 4);
    v7 = *(v16 + 24);
    goto LABEL_14;
  }

  (*(a1 + 72))(a1, 13);
LABEL_5:
  v7 = 0;
  return v7 & 1;
}

BOOL keyIsKnownOperatorArrayOperator(_BOOL8 __s1)
{
  if (__s1)
  {
    v1 = __s1;
    v2 = 0;
    do
    {
      v3 = strcmp(v1, (&kKnownOperatorArrayOperators)[v2]) == 0;
      __s1 = v3;
      v3 = v3 || v2++ == 1;
    }

    while (!v3);
  }

  return __s1;
}

uint64_t keyIsKnownForCategory(char *a1, int a2)
{
  v4 = 0;
  result = factIsKnownForCategory(a1, a2, &v4);
  if (result == 1)
  {
    return !keyIsKnownOperator(a1);
  }

  return result;
}

uint64_t __verifyOptionalDictionary_block_invoke(void *a1, char *a2, uint64_t a3)
{
  (*(a1[7] + 56))();
  if (*(*(a1[4] + 8) + 24) >= 1)
  {
    v6 = *(a1[7] + 72);
LABEL_3:
    v6();
LABEL_4:
    result = 0;
    *(*(a1[5] + 8) + 24) = 0;
    return result;
  }

  if (*a2 == 36)
  {
    if (keyIsKnownOperator(a2))
    {
      v6 = *(a1[7] + 72);
      goto LABEL_3;
    }
  }

  else if ((verifyFactName(a1[7], a2, a3, (*(a1[6] + 8) + 24)) & 1) == 0 && (*(*(a1[6] + 8) + 24) & 1) == 0)
  {
    goto LABEL_4;
  }

  (*(a1[7] + 64))();
  ++*(*(a1[4] + 8) + 24);
  return 1;
}

BOOL keyIsKnownOperator(const char *a1)
{
  if (keyIsKnownNumericOnlyOperator(a1))
  {
    return 1;
  }

  if (a1)
  {
    v2 = 0;
    while (strcmp(a1, (&kKnownMultiUseFactOperators)[v2]))
    {
      if (++v2 == 2)
      {
        goto LABEL_6;
      }
    }

    return 1;
  }

LABEL_6:
  if (!strcmp(a1, "$query") || keyIsKnownFactlessDictOperator(a1))
  {
    return 1;
  }

  return keyIsKnownOperatorArrayOperator(a1);
}

uint64_t verifyFactOperatorDictionary(uint64_t a1, uint64_t a2, int a3, _BYTE *a4, char a5, uint64_t a6)
{
  *a4 = 0;
  if ((*(a1 + 16))(a2) == 32)
  {
    v12 = *(a1 + 4) + 1;
    *(a1 + 4) = v12;
    if (v12 < 6)
    {
      v23[0] = 0;
      v23[1] = v23;
      v23[2] = 0x2000000000;
      v24 = 0;
      v19 = 0;
      v20 = &v19;
      v21 = 0x2000000000;
      v22 = 1;
      v14 = *(a1 + 40);
      v16[0] = MEMORY[0x277D85DD0];
      v16[1] = 0x40000000;
      v16[2] = __verifyFactOperatorDictionary_block_invoke;
      v16[3] = &unk_278CBBC00;
      v16[4] = v23;
      v16[5] = &v19;
      v18 = a5;
      v17 = a3;
      v16[6] = a1;
      v16[7] = a4;
      v16[8] = a6;
      v14(a2, v16);
      --*(a1 + 4);
      v13 = *(v20 + 24);
      _Block_object_dispose(&v19, 8);
      _Block_object_dispose(v23, 8);
      return v13 & 1;
    }

    (*(a1 + 72))(a1, 13);
  }

  else
  {
    (*(a1 + 72))(a1, 3);
  }

  v13 = 0;
  return v13 & 1;
}

uint64_t __verifyOptionalDictionary_block_invoke_2(void *a1, const char *a2)
{
  (*(a1[6] + 56))();
  if (*(*(a1[4] + 8) + 24) >= 1)
  {
    v4 = *(a1[6] + 72);
LABEL_7:
    v4();
    result = 0;
    *(*(a1[5] + 8) + 24) = 0;
    return result;
  }

  if (*a2 != 36 || keyIsKnownFactlessDictOperator(a2) || keyIsKnownOperatorArrayOperator(a2))
  {
    v4 = *(a1[6] + 72);
    goto LABEL_7;
  }

  (*(a1[6] + 64))();
  ++*(*(a1[4] + 8) + 24);
  return 1;
}

BOOL keyIsKnownNumericOnlyOperator(_BOOL8 __s1)
{
  if (__s1)
  {
    v1 = __s1;
    v2 = 0;
    do
    {
      v3 = strcmp(v1, (&kKnownNumericOnlyOperators)[v2]) == 0;
      __s1 = v3;
      v3 = v3 || v2++ == 3;
    }

    while (!v3);
  }

  return __s1;
}

uint64_t __verifyFactOperatorDictionary_block_invoke(uint64_t a1, char *a2, uint64_t a3)
{
  (*(*(a1 + 48) + 56))();
  if (*(*(*(a1 + 32) + 8) + 24) >= 1)
  {
    v6 = *(a1 + 48);
    *(*(*(a1 + 40) + 8) + 24) = 0;
    v7 = *(v6 + 72);
LABEL_3:
    v7();
    return 0;
  }

  if (!strcmp(a2, "$optional"))
  {
    if (*(a1 + 76) == 1)
    {
      v11 = *(a1 + 48);
      *(*(*(a1 + 40) + 8) + 24) = 0;
LABEL_29:
      v7 = *(v11 + 72);
      goto LABEL_3;
    }

    result = verifyOptionalDictionary(*(a1 + 48), a3, *(a1 + 72));
    if (!result)
    {
      goto LABEL_37;
    }

    goto LABEL_25;
  }

  v9 = *(a1 + 72);
  if ((v9 & 0xE) == 0)
  {
    if ((v9 & 0x40) == 0)
    {
      goto LABEL_36;
    }

    if (!a2 || strcmp(a2, kKnownFlagSetOnlyOperators))
    {
      v12 = *(a1 + 48);
      goto LABEL_26;
    }

    if (((*(*(a1 + 48) + 16))(a3) & 2) == 0)
    {
      goto LABEL_39;
    }

    if (*(a1 + 64))
    {
      v20 = (*(*(a1 + 48) + 24))(a3);
      if (((*(*(a1 + 64) + 16))(*(a1 + 48), v20) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

LABEL_25:
    (*(*(a1 + 48) + 64))();
    ++*(*(*(a1 + 32) + 8) + 24);
    return 1;
  }

  if (!strcmp(a2, "$in"))
  {
    v13 = *(a1 + 48);
    if ((*(v13 + 16))(a3) != 16)
    {
      (*(v13 + 72))(v13, 3);
      goto LABEL_36;
    }

    v23 = 0;
    v24 = &v23;
    v25 = 0x2000000000;
    v26 = 1;
    (*(v13 + 56))(v13, "Array");
    v14 = *(v13 + 48);
    v21[0] = MEMORY[0x277D85DD0];
    v21[1] = 0x40000000;
    v21[2] = __verifyInArray_block_invoke;
    v21[3] = &unk_278CBBC28;
    v22 = v9;
    v21[4] = &v23;
    v21[5] = v13;
    v14(a3, v21);
    if ((v24[3] & 1) == 0)
    {
      _Block_object_dispose(&v23, 8);
      goto LABEL_36;
    }

    (*(v13 + 64))(v13);
    v15 = *(v24 + 24);
    _Block_object_dispose(&v23, 8);
    if ((v15 & 1) == 0)
    {
      goto LABEL_36;
    }

    goto LABEL_25;
  }

  if ((v9 & 2) != 0)
  {
    IsKnownNumericOnlyOperator = keyIsKnownNumericOnlyOperator(a2);
    v12 = *(a1 + 48);
    if (IsKnownNumericOnlyOperator)
    {
      if ((*(a1 + 72) & (*(v12 + 16))(a3)) != 0)
      {
        goto LABEL_25;
      }

LABEL_39:
      v19 = *(a1 + 48);
      *(*(*(a1 + 40) + 8) + 24) = 0;
      v7 = *(v19 + 72);
      goto LABEL_3;
    }

LABEL_26:
    IsKnownForCategory = keyIsKnownForCategory(a2, *v12);
    *(*(*(a1 + 40) + 8) + 24) = 0;
    if (IsKnownForCategory == 1)
    {
      **(a1 + 56) = 1;
    }

    else if (!IsKnownForCategory)
    {
      v11 = *(a1 + 48);
      goto LABEL_29;
    }

    v7 = *(*(a1 + 48) + 72);
    goto LABEL_3;
  }

  v10 = keyIsKnownForCategory(a2, **(a1 + 48));
  if (v10 == 1)
  {
    **(a1 + 56) = 1;
    goto LABEL_34;
  }

  if (v10)
  {
LABEL_34:
    v18 = *(*(*(a1 + 40) + 8) + 24);
    (*(*(a1 + 48) + 72))();
    goto LABEL_36;
  }

  (*(*(a1 + 48) + 72))(*(a1 + 48), 6);
LABEL_36:
  result = 0;
LABEL_37:
  *(*(*(a1 + 40) + 8) + 24) = 0;
  return result;
}

BOOL __verifyInArray_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 48) & (*(*(a1 + 40) + 16))(a2);
  if (!v3)
  {
    v4 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = 0;
    (*(v4 + 72))();
  }

  return v3 != 0;
}

uint64_t __verifyOperatorArray_block_invoke(void *a1, uint64_t a2)
{
  v4 = a1[6];
  if ((*(v4 + 16))(a2) == 16)
  {
    v14[0] = 0;
    v14[1] = v14;
    v14[2] = 0x2000000000;
    v15 = 0;
    v10 = 0;
    v11 = &v10;
    v12 = 0x2000000000;
    v13 = 1;
    v9[0] = 0;
    v9[1] = v9;
    v9[2] = 0x2000000000;
    v9[3] = 0;
    v5 = *(v4 + 48);
    v8[0] = MEMORY[0x277D85DD0];
    v8[1] = 0x40000000;
    v8[2] = __verifyOperatorArrayTuple_block_invoke;
    v8[3] = &unk_278CBBC78;
    v8[4] = v14;
    v8[5] = &v10;
    v8[6] = v9;
    v8[7] = v4;
    v5(a2, v8);
    v6 = *(v11 + 24);
    _Block_object_dispose(v9, 8);
    _Block_object_dispose(&v10, 8);
    _Block_object_dispose(v14, 8);
    if (v6)
    {
      ++*(*(a1[5] + 8) + 24);
      return 1;
    }
  }

  else
  {
    (*(v4 + 72))(v4, 3);
  }

  result = 0;
  *(*(a1[4] + 8) + 24) = 0;
  return result;
}

uint64_t __verifyOperatorArrayTuple_block_invoke(void *a1, uint64_t a2)
{
  v4 = (*(a1[7] + 16))(a2);
  v5 = *(*(a1[4] + 8) + 24);
  if (v5 != 1)
  {
    if (!v5)
    {
      v6 = a1[7];
      if (v4 == 4)
      {
        *(*(a1[6] + 8) + 24) = (*(v6 + 32))(a2);
        v7 = *(*(a1[6] + 8) + 24);
        IsKnownFactlessDictOperator = keyIsKnownFactlessDictOperator(v7);
        v9 = a1[7];
        if (IsKnownFactlessDictOperator)
        {
          (*(v9 + 56))(v9, v7);
LABEL_9:
          ++*(*(a1[4] + 8) + 24);
          return 1;
        }

        if (keyIsKnownForCategory(v7, *v9))
        {
          v12 = 1;
        }

        else
        {
          v12 = 4;
        }

        (*(a1[7] + 72))(a1[7], v12);
      }

      else
      {
        (*(v6 + 72))(a1[7], 2);
      }

      goto LABEL_18;
    }

    v11 = *(a1[7] + 72);
LABEL_13:
    v11();
LABEL_18:
    result = 0;
    *(*(a1[5] + 8) + 24) = 0;
    return result;
  }

  if (v4 != 32)
  {
    v11 = *(a1[7] + 72);
    goto LABEL_13;
  }

  *(*(a1[5] + 8) + 24) = verifyFactLessOperator(a1[7], *(*(a1[6] + 8) + 24), a2, &v14, &v13);
  if (*(*(a1[5] + 8) + 24) == 1)
  {
    (*(a1[7] + 64))();
    goto LABEL_9;
  }

  return 0;
}

uint64_t factIsKnownForCategory(char *__s1, int a2, char ***a3)
{
  result = 10;
  if (__s1 && a3)
  {
    v7 = &kKnownFacts;
    v8 = 23;
    while (strcmp(__s1, *v7))
    {
      v7 += 3;
      if (!--v8)
      {
        return 1;
      }
    }

    if ((v7[1] & a2) != 0)
    {
      result = 0;
      *a3 = v7;
    }

    else
    {
      return 9;
    }
  }

  return result;
}

uint64_t __verifyQueryTypeFact_block_invoke(void *a1, const char *a2, uint64_t a3)
{
  (*(a1[6] + 56))();
  if (*(*(a1[4] + 8) + 24) >= 1)
  {
    v6 = a1[6];
    *(*(a1[5] + 8) + 24) = 0;
    v7 = *(v6 + 72);
LABEL_5:
    v7();
    return 0;
  }

  if (strcmp(a2, "$query"))
  {
    v8 = a1[6];
    *(*(a1[5] + 8) + 24) = 0;
    v7 = *(v8 + 72);
    goto LABEL_5;
  }

  v10 = a1[6];
  v11 = (*(v10 + 16))(a3);
  (*(v10 + 56))(v10, "Query Array");
  if (v11 == 16)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2000000000;
    v18 = 1;
    v12 = *(v10 + 48);
    v14[0] = MEMORY[0x277D85DD0];
    v14[1] = 0x40000000;
    v14[2] = __verifyQueryArray_block_invoke;
    v14[3] = &unk_278CBBCC8;
    v14[4] = &v15;
    v14[5] = v10;
    v12(a3, v14);
    if (v16[3])
    {
      (*(v10 + 64))(v10);
      v13 = *(v16 + 24);
      _Block_object_dispose(&v15, 8);
      if (v13)
      {
        ++*(*(a1[4] + 8) + 24);
        (*(a1[6] + 64))();
        return 1;
      }
    }

    else
    {
      _Block_object_dispose(&v15, 8);
    }
  }

  else
  {
    (*(v10 + 72))(v10, 3);
  }

  result = 0;
  *(*(a1[5] + 8) + 24) = 0;
  return result;
}

uint64_t __verifyQueryArray_block_invoke(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 + 40) + 16))(a2) != 16)
  {
    v7 = *(a1 + 40);
    *(*(*(a1 + 32) + 8) + 24) = 0;
    (*(v7 + 72))();
LABEL_11:
    v8 = 0;
    return v8 & 1;
  }

  (*(*(a1 + 40) + 56))();
  v4 = *(a1 + 40);
  if ((*(v4 + 16))(a2) == 16)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2000000000;
    v18 = 1;
    v11 = 0;
    v12 = &v11;
    v13 = 0x2000000000;
    v14 = 0;
    v5 = *(v4 + 48);
    v10[0] = MEMORY[0x277D85DD0];
    v10[1] = 0x40000000;
    v10[2] = __verifyQueryTuple_block_invoke;
    v10[3] = &unk_278CBBCF0;
    v10[4] = &v11;
    v10[5] = &v15;
    v10[6] = v4;
    v5(a2, v10);
    if (*(v12 + 6) == 2)
    {
      v6 = *(v16 + 24);
    }

    else
    {
      v6 = 0;
      *(v16 + 24) = 0;
    }

    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(&v15, 8);
  }

  else
  {
    (*(v4 + 72))(v4, 2);
    v6 = 0;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6 & 1;
  if (*(*(*(a1 + 32) + 8) + 24) != 1)
  {
    goto LABEL_11;
  }

  (*(*(a1 + 40) + 64))();
  v8 = *(*(*(a1 + 32) + 8) + 24);
  return v8 & 1;
}

uint64_t __verifyQueryTuple_block_invoke(void *a1, uint64_t a2)
{
  if (*(*(a1[4] + 8) + 24) < 2)
  {
    v5 = (*(a1[6] + 16))(a2);
    v6 = *(a1[4] + 8);
    v7 = *(v6 + 24);
    if (v7 | v5 & 2)
    {
      *(v6 + 24) = v7 + 1;
      v9 = 1;
      return v9 & 1;
    }

    v8 = a1[6];
    *(*(a1[5] + 8) + 24) = 0;
    v4 = *(v8 + 72);
  }

  else
  {
    v3 = a1[6];
    *(*(a1[5] + 8) + 24) = 0;
    v4 = *(v3 + 72);
  }

  v4();
  v9 = *(*(a1[5] + 8) + 24);
  return v9 & 1;
}

uint64_t AMFIInitiateDataMigration()
{
  v0 = +[AMFIConnection newConnection];
  v1 = [v0 initiateDataMigration];
  v2 = NSErrorToAMFIReturn(v1);

  return v2;
}

uint64_t AMFIGetSEPDeviceState(uint64_t a1)
{
  v18 = *MEMORY[0x277D85DE8];
  v2 = +[AMFIConnection newConnection];
  v9 = 0;
  if (v2)
  {
    v3 = v2;
    [v2 getSEPStateWithError:&v9];
    v4 = v9;
    v14 = v10;
    v15 = v11;
    v16 = v12;
    v17 = v13;

    if (v4)
    {
      v5 = NSErrorToAMFIReturn(v4);

      goto LABEL_7;
    }
  }

  else
  {
    v17 = 0;
    v15 = 0u;
    v16 = 0u;
    v14 = 0u;
  }

  v5 = 0;
  if (a1)
  {
    v6 = v15;
    *a1 = v14;
    *(a1 + 16) = v6;
    *(a1 + 32) = v16;
    *(a1 + 48) = v17;
  }

LABEL_7:
  v7 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t AMFIProfileRequiresReboot(void *a1, _BYTE *a2)
{
  v16 = *MEMORY[0x277D85DE8];
  v3 = a1;
  if (!v3)
  {
    v6 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      AMFIProfileRequiresReboot_cold_4();
    }

    goto LABEL_11;
  }

  if (!a2)
  {
    v6 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
    {
      AMFIProfileRequiresReboot_cold_3();
    }

LABEL_11:

    v7 = 0;
    v8 = 7;
    goto LABEL_15;
  }

  *a2 = 0;
  v4 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315394;
    v13 = "AMFIProfileRequiresReboot";
    v14 = 2112;
    v15 = v3;
    _os_log_impl(&dword_240EEA000, v4, OS_LOG_TYPE_DEFAULT, "[%s] request for profile: %@", buf, 0x16u);
  }

  v5 = v3;
  MISCopyProvisioningProfile();
  v9 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
  {
    AMFIProfileRequiresReboot_cold_1();
  }

  v7 = 0;
  v8 = 0;
LABEL_15:

  v10 = *MEMORY[0x277D85DE8];
  return v8;
}

void sub_240EF00B0(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMFIProfileScheduleTrust(void *a1)
{
  v15 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v10 = 0;
  v2 = +[AMFIFMKLog generic];
  v3 = v2;
  if (v1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      v12 = "AMFIProfileScheduleTrust";
      v13 = 2112;
      v14 = v1;
      _os_log_impl(&dword_240EEA000, v3, OS_LOG_TYPE_DEFAULT, "%s: attempting to schedule profile: %@", buf, 0x16u);
    }

    v4 = AMFIProfileRequiresReboot(v1, &v10);
    if (v4)
    {
      v5 = v4;
      v3 = +[AMFIFMKLog generic];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        AMFIProfileScheduleTrust_cold_1();
      }
    }

    else if (v10)
    {
      v8 = +[AMFIConnection newConnection];
      v3 = [v8 stageProfileForUuid:v1];

      if (!v3)
      {
        v5 = 0;
        goto LABEL_11;
      }

      v9 = +[AMFIFMKLog generic];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        AMFIProfileScheduleTrust_cold_2();
      }

      v5 = NSErrorToAMFIReturn(v3);
    }

    else
    {
      v3 = +[AMFIFMKLog generic];
      if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
      {
        AMFIProfileScheduleTrust_cold_3();
      }

      v5 = 11;
    }
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      AMFIProfileScheduleTrust_cold_4();
    }

    v5 = 7;
  }

LABEL_11:
  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

uint64_t AMFIProfileGetScheduledProfile(uint64_t a1)
{
  cf = 0;
  if (!a1)
  {
    v9 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      AMFIProfileGetScheduledProfile_cold_5();
    }

    v3 = 0;
    v7 = 0;
    v8 = 0;
    v6 = 7;
    goto LABEL_23;
  }

  v2 = +[AMFIConnection newConnection];
  v14 = 0;
  v3 = [v2 getStagedProfileWithError:&v14];
  v4 = v14;

  if (!v4)
  {
    if (MISCopyProvisioningProfile())
    {
      v10 = 1;
    }

    else
    {
      v10 = cf == 0;
    }

    if (v10)
    {
      v9 = +[AMFIFMKLog generic];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        AMFIProfileGetScheduledProfile_cold_2();
      }
    }

    else
    {
      v11 = MISProvisioningProfileGetTeamIdentifier();
      v8 = v11;
      if (v11)
      {
        v12 = MISProfileGetValue();
        if (v12)
        {
          objc_storeStrong(a1, v3);
          objc_storeStrong((a1 + 8), v8);
          v7 = v12;
          v6 = 0;
          v9 = *(a1 + 16);
          *(a1 + 16) = v7;
LABEL_23:

          v4 = 0;
          goto LABEL_24;
        }

        v9 = +[AMFIFMKLog generic];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
        {
          AMFIProfileGetScheduledProfile_cold_3();
        }

        v7 = 0;
LABEL_22:
        v6 = 5;
        goto LABEL_23;
      }

      v9 = +[AMFIFMKLog generic];
      if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
      {
        AMFIProfileGetScheduledProfile_cold_4();
      }
    }

    v7 = 0;
    v8 = 0;
    goto LABEL_22;
  }

  v5 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    AMFIProfileGetScheduledProfile_cold_1();
  }

  v6 = NSErrorToAMFIReturn(v4);
  v7 = 0;
  v8 = 0;
LABEL_24:

  if (cf)
  {
    CFRelease(cf);
  }

  return v6;
}

void sub_240EF051C(_Unwind_Exception *exception_object, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, CFTypeRef cf)
{
  if (cf)
  {
    CFRelease(cf);
  }

  _Unwind_Resume(exception_object);
}

uint64_t AMFIProfileCommitProfile(void *a1)
{
  v17 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = +[AMFIFMKLog generic];
  v3 = os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT);
  if (v1)
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v13 = 136315394;
    v14 = "AMFIProfileCommitProfile";
    v15 = 2112;
    v16 = v1;
    v4 = "[%s] attempting to commit profile: %@";
    v5 = v2;
    v6 = 22;
  }

  else
  {
    if (!v3)
    {
      goto LABEL_7;
    }

    v13 = 136315138;
    v14 = "AMFIProfileCommitProfile";
    v4 = "[%s] attempting to remove staged profile";
    v5 = v2;
    v6 = 12;
  }

  _os_log_impl(&dword_240EEA000, v5, OS_LOG_TYPE_DEFAULT, v4, &v13, v6);
LABEL_7:

  v7 = +[AMFIConnection newConnection];
  v8 = [v7 commitProfileForUuid:v1];

  if (v8)
  {
    v9 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v9, OS_LOG_TYPE_ERROR))
    {
      AMFIProfileCommitProfile_cold_1();
    }

    v10 = NSErrorToAMFIReturn(v8);
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

uint64_t AMFIProfileSetTrust(unsigned int a1, void *a2)
{
  v3 = a2;
  v4 = AMFIProfileSetTrustWithOptions(v3, a1, 0);

  return v4;
}

uint64_t AMFIProfileSetTrustWithOptions(void *a1, unsigned int a2, void *a3)
{
  v5 = a1;
  v6 = objc_opt_new();
  v7 = [v6 teamIDWithProfileUUID:v5];
  v8 = a3;
  v9 = AMFIProfileSetTeamIDTrustWithOptions(v7, a2, a3);

  return v9;
}

uint64_t AMFIProfileSetTeamIDTrustWithOptions(void *a1, uint64_t a2, void *a3)
{
  v36 = *MEMORY[0x277D85DE8];
  v5 = a1;
  if (!v5)
  {
    v12 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      AMFIProfileSetTeamIDTrustWithOptions_cold_4();
    }

    goto LABEL_11;
  }

  if ((a2 - 1) >= 2)
  {
    v12 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v12, OS_LOG_TYPE_ERROR))
    {
      AMFIProfileSetTeamIDTrustWithOptions_cold_1();
    }

LABEL_11:

    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 7;
    goto LABEL_26;
  }

  v6 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 136315650;
    *&buf[4] = "AMFIProfileSetTeamIDTrustWithOptions";
    v32 = 2112;
    v33 = v5;
    v34 = 1024;
    v35 = a2;
    _os_log_impl(&dword_240EEA000, v6, OS_LOG_TYPE_DEFAULT, "[%s] attempting to set trust for team ID: %@ | %u", buf, 0x1Cu);
  }

  v7 = v5;
  v8 = objc_opt_new();
  v9 = [v8 teamIDSupportsAuxiliarySignature:v7];
  if (v9)
  {
    v10 = [v8 auxiliarySignatureWithTeamID:v7];
    v11 = v10;
  }

  else
  {
    v17 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 136315394;
      *&buf[4] = "_getTeamIDAuxiliarySignature";
      v32 = 2112;
      v33 = v7;
      _os_log_impl(&dword_240EEA000, v17, OS_LOG_TYPE_DEFAULT, "[%s] auxiliary signature unsupported: %@", buf, 0x16u);
    }

    v10 = 0;
  }

  v14 = v10;
  if (v9)
  {
    v18 = a3;
    if (a3)
    {
      v13 = v18;
    }

    else
    {
      v30 = v7;
      v29 = v14;
      v19 = +[AMFIConnection newConnection];
      *buf = 0;
      v20 = [v19 signTeamID:v30 withSignType:a2 withLAContext:0 withError:buf];
      v21 = *buf;

      v22 = v20;
      if (!v20)
      {
        v22 = v29;
        if (!v29)
        {
          v22 = 0;
          if (v21)
          {
            v27 = NSErrorToAMFIReturn(v21);
            v22 = 0;
            if (v27 != 13)
            {
              v28 = +[AMFIFMKLog generic];
              if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
              {
                AMFIProfileSetTeamIDTrustWithOptions_cold_2();
              }

              v22 = 0;
            }
          }
        }
      }

      v13 = v22;
    }
  }

  else
  {
    v13 = 0;
  }

  v23 = +[AMFIConnection newConnection];
  v15 = [v23 setTrustForTeamID:v7 withSignature:v13 withSignType:a2];

  if (v15)
  {
    v24 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v24, OS_LOG_TYPE_ERROR))
    {
      AMFIProfileSetTeamIDTrustWithOptions_cold_3();
    }

    v16 = NSErrorToAMFIReturn(v15);
  }

  else
  {
    v16 = 0;
  }

LABEL_26:

  v25 = *MEMORY[0x277D85DE8];
  return v16;
}

uint64_t AMFIProfileRemoveTrust(void *a1)
{
  v1 = a1;
  v2 = objc_opt_new();
  v3 = [v2 teamIDWithProfileUUID:v1];

  v4 = AMFIProfileRemoveTeamIDTrust(v3);
  return v4;
}

uint64_t AMFIProfileRemoveTeamIDTrust(void *a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = +[AMFIFMKLog generic];
  v3 = v2;
  if (v1)
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      v9 = 136315394;
      v10 = "AMFIProfileRemoveTeamIDTrust";
      v11 = 2112;
      v12 = v1;
      _os_log_impl(&dword_240EEA000, v3, OS_LOG_TYPE_DEFAULT, "[%s] attempting to remove trust for team ID: %@", &v9, 0x16u);
    }

    v4 = +[AMFIConnection newConnection];
    v3 = [v4 removeTrustforTeamID:v1];

    if (!v3)
    {
      v6 = 0;
      goto LABEL_13;
    }

    v5 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AMFIProfileRemoveTeamIDTrust_cold_1();
    }

    v6 = NSErrorToAMFIReturn(v3);
  }

  else
  {
    if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
    {
      AMFIProfileRemoveTeamIDTrust_cold_2();
    }

    v6 = 7;
  }

LABEL_13:
  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t AMFISupervisedModeSetState(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "AMFISupervisedModeSetState";
    v11 = 1024;
    v12 = a1;
    _os_log_impl(&dword_240EEA000, v2, OS_LOG_TYPE_DEFAULT, "[%s] setting supervised state: %u", &v9, 0x12u);
  }

  v3 = +[AMFIConnection newConnection];
  v4 = [v3 setSupervisedState:a1];

  if (v4)
  {
    v5 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AMFISupervisedModeSetState_cold_1();
    }

    v6 = NSErrorToAMFIReturn(v4);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t AMFIDemoModeSetState(uint64_t a1)
{
  v13 = *MEMORY[0x277D85DE8];
  v2 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315394;
    v10 = "AMFIDemoModeSetState";
    v11 = 1024;
    v12 = a1;
    _os_log_impl(&dword_240EEA000, v2, OS_LOG_TYPE_DEFAULT, "[%s] setting demo state: %u", &v9, 0x12u);
  }

  v3 = +[AMFIConnection newConnection];
  v4 = [v3 setDemoState:a1];

  if (v4)
  {
    v5 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AMFIDemoModeSetState_cold_1();
    }

    v6 = NSErrorToAMFIReturn(v4);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t AMFIMDMModeEnroll(void *a1)
{
  v11 = *MEMORY[0x277D85DE8];
  v1 = a1;
  v2 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    v9 = 136315138;
    v10 = "AMFIMDMModeEnroll";
    _os_log_impl(&dword_240EEA000, v2, OS_LOG_TYPE_DEFAULT, "[%s] enabling MDM state", &v9, 0xCu);
  }

  v3 = +[AMFIConnection newConnection];
  v4 = [v3 setManagedState:v1];

  if (v4)
  {
    v5 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
    {
      AMFIMDMModeEnroll_cold_1();
    }

    v6 = NSErrorToAMFIReturn(v4);
  }

  else
  {
    v6 = 0;
  }

  v7 = *MEMORY[0x277D85DE8];
  return v6;
}

uint64_t AMFIMDMModeRemove()
{
  v9 = *MEMORY[0x277D85DE8];
  v0 = +[AMFIFMKLog generic];
  if (os_log_type_enabled(v0, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 136315138;
    v8 = "AMFIMDMModeRemove";
    _os_log_impl(&dword_240EEA000, v0, OS_LOG_TYPE_DEFAULT, "[%s] removing MDM state", &v7, 0xCu);
  }

  v1 = +[AMFIConnection newConnection];
  v2 = [v1 removeManagedState];

  if (v2)
  {
    v3 = +[AMFIFMKLog generic];
    if (os_log_type_enabled(v3, OS_LOG_TYPE_ERROR))
    {
      AMFIMDMModeRemove_cold_1();
    }

    v4 = NSErrorToAMFIReturn(v2);
  }

  else
  {
    v4 = 0;
  }

  v5 = *MEMORY[0x277D85DE8];
  return v4;
}

uint64_t LWCRTypeVerificationNSDictionary(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = objc_opt_new();
  v9[0] = a2;
  v9[1] = 0;
  v10 = v6;
  v11 = typeMaskForNSType;
  v12 = integerValueForNSNumber;
  v13 = stringValueForNSString;
  v14 = iterateDictionary;
  v15 = iterateArray;
  v16 = pushKeyContext;
  v17 = popKeyContext;
  v18 = setError;
  v7 = LWCRTypeVerificationBackend_verifyLWCR(v9, v5);

  if (a3 && (v7 & 1) == 0)
  {
    *a3 = [v6 synthesizeError];
  }

  return v7;
}

uint64_t typeMaskForNSType(void *a1)
{
  v1 = a1;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = 32;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v2 = 16;
    }

    else
    {
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v2 = 4;
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v2 = 8;
        }

        else
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            if ([v1 longLongValue] >= 2)
            {
              v2 = 2;
            }

            else
            {
              v2 = 3;
            }
          }

          else
          {
            v2 = 0;
          }
        }
      }
    }
  }

  return v2;
}

uint64_t stringValueForNSString(void *a1)
{
  v1 = a1;

  return [v1 UTF8String];
}

void iterateDictionary(void *a1, void *a2)
{
  v3 = a2;
  v5[0] = MEMORY[0x277D85DD0];
  v5[1] = 3221225472;
  v5[2] = __iterateDictionary_block_invoke;
  v5[3] = &unk_278CBBD90;
  v6 = v3;
  v4 = v3;
  [a1 enumerateKeysAndObjectsUsingBlock:v5];
}

void iterateArray(void *a1, void *a2)
{
  v15 = *MEMORY[0x277D85DE8];
  v3 = a2;
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v4 = a1;
  v5 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v11;
LABEL_3:
    v8 = 0;
    while (1)
    {
      if (*v11 != v7)
      {
        objc_enumerationMutation(v4);
      }

      if (!v3[2](v3, *(*(&v10 + 1) + 8 * v8)))
      {
        break;
      }

      if (v6 == ++v8)
      {
        v6 = [v4 countByEnumeratingWithState:&v10 objects:v14 count:16];
        if (v6)
        {
          goto LABEL_3;
        }

        break;
      }
    }
  }

  v9 = *MEMORY[0x277D85DE8];
}

void pushKeyContext(uint64_t a1, uint64_t a2)
{
  v3 = MEMORY[0x277CCACA8];
  v4 = *(a1 + 8);
  v5 = [v3 stringWithUTF8String:a2];
  [v4 pushKey:v5];
}

uint64_t LWCRTypeVerificationNSDictionary_RequirementsOnly(void *a1, int a2, void *a3)
{
  v5 = a1;
  v6 = objc_opt_new();
  v9[0] = a2;
  v9[1] = 0;
  v10 = v6;
  v11 = typeMaskForNSType;
  v12 = integerValueForNSNumber;
  v13 = stringValueForNSString;
  v14 = iterateDictionary;
  v15 = iterateArray;
  v16 = pushKeyContext;
  v17 = popKeyContext;
  v18 = setError;
  v7 = LWCRTypeVerificationBackend_verifyRequirements(v9, v5);

  if (a3 && (v7 & 1) == 0)
  {
    *a3 = [v6 synthesizeError];
  }

  return v7;
}

void __iterateDictionary_block_invoke(uint64_t a1, void *a2, void *a3, _BYTE *a4)
{
  v10 = a2;
  v7 = *(a1 + 32);
  v8 = v10;
  v9 = a3;
  LOBYTE(v7) = (*(v7 + 16))(v7, [v10 UTF8String], v9);

  *a4 = v7 ^ 1;
}

uint64_t __AMFIGetSecurityBootModeWithPath(void *a1, void *a2)
{
  v3 = IORegistryEntryFromPath(*MEMORY[0x277CD2898], [a1 cStringUsingEncoding:4]);
  if (!v3)
  {
    CFProperty = 0;
    goto LABEL_6;
  }

  v4 = v3;
  CFProperty = IORegistryEntryCreateCFProperty(v3, @"security-mode-change-enable", *MEMORY[0x277CBECE8], 0);
  IOObjectRelease(v4);
  if (!CFProperty)
  {
LABEL_6:
    v7 = 5;
    goto LABEL_7;
  }

  if (a2)
  {
    v6 = CFProperty;
    v7 = 0;
    *a2 = CFProperty;
  }

  else
  {
    v7 = 0;
  }

LABEL_7:

  return v7;
}

uint64_t AMFICompleteSecurityBootMode(unsigned int a1)
{
  connect = 0;
  v10 = a1;
  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  v5 = MatchingService;
  if (MatchingService)
  {
    v6 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
    if (!v6)
    {
      v6 = IOConnectCallScalarMethod(connect, 0x10u, &v10, 1u, 0, 0);
      if (a1 - 1 <= 1)
      {
        v7 = +[AMFIConnection newConnection];
        v8 = [v7 initiateDeveloperModeDaemons];
      }
    }
  }

  else
  {
    v6 = -536870212;
  }

  if (connect)
  {
    IOServiceClose(connect);
  }

  if (v5)
  {
    IOObjectRelease(v5);
  }

  return 4 * (v6 != 0);
}

uint64_t AMFIArmSecurityBootMode(unsigned int a1)
{
  connect = 0;
  v9 = a1;
  v1 = *MEMORY[0x277CD2898];
  v2 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(v1, v2);
  if (!MatchingService)
  {
    return 4;
  }

  v4 = MatchingService;
  v5 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
  v6 = connect;
  if (!v5)
  {
    v7 = 4 * (IOConnectCallScalarMethod(connect, 0xBu, &v9, 1u, 0, 0) != 0);
    v6 = connect;
    if (!connect)
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v7 = 4;
  if (connect)
  {
LABEL_4:
    IOServiceClose(v6);
  }

LABEL_5:
  IOObjectRelease(v4);
  return v7;
}

uint64_t AMFIGetSecurityBootMode(_DWORD *a1)
{
  v7 = 0;
  v6 = 0;
  v2 = __AMFIGetSecurityBootModeWithPath(@"IODeviceTree:/chosen", &v6);
  v3 = v6;
  v4 = v3;
  if (!v2)
  {
    if ([v3 length] == 4)
    {
      [v4 getBytes:&v7 length:4];
      v2 = 0;
      if (a1)
      {
        *a1 = v7;
      }
    }

    else
    {
      v2 = 6;
    }
  }

  return v2;
}

uint64_t AMFIGetSecurityBootModeArmed(int *a1)
{
  v11 = 0;
  v2 = __AMFIGetSecurityBootModeWithPath(@"IODeviceTree:/options", &v11);
  v3 = v11;
  if (v2)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v3 encoding:4];
    *__error() = 0;
    v6 = strtoul([v5 cStringUsingEncoding:4], 0, 0);
    v7 = *__error();
    v8 = -1;
    if (v6 < 0xFFFFFFFF)
    {
      v8 = v6;
    }

    if (v7)
    {
      v2 = 3;
    }

    else
    {
      v2 = 0;
    }

    if (v7)
    {
      v4 = 0;
    }

    else
    {
      v4 = v8;
    }
  }

  if (v2 == 5)
  {
    v9 = 0;
  }

  else
  {
    v9 = v2;
  }

  if (a1 && !v9)
  {
    if (v2 == 5)
    {
      v4 = 0;
    }

    *a1 = v4;
  }

  return v9;
}

uint64_t AMFIDeveloperModeCommit(int a1)
{
  connect = 0;
  if (a1)
  {
    v1 = 14;
  }

  else
  {
    v1 = 12;
  }

  v2 = *MEMORY[0x277CD2898];
  v3 = IOServiceMatching("AppleMobileFileIntegrity");
  MatchingService = IOServiceGetMatchingService(v2, v3);
  if (!MatchingService)
  {
    return 4;
  }

  v5 = MatchingService;
  v6 = IOServiceOpen(MatchingService, *MEMORY[0x277D85F48], 0, &connect);
  v7 = connect;
  if (!v6)
  {
    v8 = 4 * (IOConnectCallScalarMethod(connect, v1, 0, 0, 0, 0) != 0);
    v7 = connect;
    if (!connect)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v8 = 4;
  if (connect)
  {
LABEL_7:
    IOServiceClose(v7);
  }

LABEL_8:
  IOObjectRelease(v5);
  return v8;
}

uint64_t LWCRTypeVerificationXPCDictionary(uint64_t a1, int a2, char **a3)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = a2;
  v8[1] = 0;
  v9 = &v18;
  v10 = typeMaskForXPCObj;
  v11 = integerValueForXPCObj;
  v12 = stringValueForXPCObj;
  v13 = iterateDictionary_0;
  v14 = iterateArray_0;
  v15 = pushKeyContext_0;
  v16 = popKeyContext_0;
  v17 = setError_0;
  v18 = 0;
  v19 = xpc_array_create(0, 0);
  LODWORD(v20) = 0;
  v5 = LWCRTypeVerificationBackend_verifyLWCR(v8, a1);
  v6 = v5;
  if (a3 && (v5 & 1) == 0)
  {
    *a3 = LWCRTypeErrorContextSynthesizeError(&v18);
  }

  xpc_release(v19);
  return v6;
}

uint64_t typeMaskForXPCObj()
{
  v0 = MEMORY[0x245CD3760]();
  if (v0 == MEMORY[0x277D86468])
  {
    return 32;
  }

  if (v0 == MEMORY[0x277D86440])
  {
    return 16;
  }

  if (v0 == MEMORY[0x277D864C0])
  {
    return 4;
  }

  if (v0 == MEMORY[0x277D86458])
  {
    return 8;
  }

  if (v0 == MEMORY[0x277D86448])
  {
    return 1;
  }

  return 2 * (v0 == MEMORY[0x277D86498]);
}

BOOL iterateDictionary_0(void *a1, uint64_t a2)
{
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 0x40000000;
  applier[2] = __iterateDictionary_block_invoke_0;
  applier[3] = &unk_278CBBDB8;
  applier[4] = a2;
  return xpc_dictionary_apply(a1, applier);
}

BOOL iterateArray_0(void *a1, uint64_t a2)
{
  applier[0] = MEMORY[0x277D85DD0];
  applier[1] = 0x40000000;
  applier[2] = __iterateArray_block_invoke;
  applier[3] = &unk_278CBBDE0;
  applier[4] = a2;
  return xpc_array_apply(a1, applier);
}

void pushKeyContext_0(uint64_t a1, const char *a2)
{
  if (a2)
  {
    v2 = *(a1 + 8);
    if (v2)
    {
      count = xpc_array_get_count(*(v2 + 8));
      v5 = *(v2 + 8);
      if (*v2 >= count)
      {
        v6 = -1;
      }

      else
      {
        v6 = *v2;
      }

      xpc_array_set_string(*(v2 + 8), v6, a2);
      ++*v2;
    }
  }
}

uint64_t popKeyContext_0(uint64_t result)
{
  v1 = *(result + 8);
  if (v1)
  {
    if (*v1)
    {
      --*v1;
    }
  }

  return result;
}

uint64_t setError_0(uint64_t result, int a2)
{
  v2 = *(result + 8);
  if (v2)
  {
    *(v2 + 16) = a2;
  }

  return result;
}

char *LWCRTypeErrorContextSynthesizeError(uint64_t a1)
{
  if (!a1)
  {
    return 0;
  }

  v2 = malloc_type_calloc(1uLL, 0x804uLL, 0x10000406A7154B6uLL);
  if (v2)
  {
    v3 = *(a1 + 16);
    *v2 = v3;
    v4 = LWCRTypeVerificationBackend_errorStringForCode(v3);
    v5 = snprintf(v2 + 4, 0x800uLL, "Error: %s, Context: ", v4);
    if (*a1)
    {
      if (v5 <= 0x7FF)
      {
        v6 = 0;
        do
        {
          if (v6 && __strlcat_chk() > 0x7FF)
          {
            break;
          }

          xpc_array_get_string(*(a1 + 8), v6);
          v7 = __strlcat_chk();
          if (++v6 >= *a1)
          {
            break;
          }
        }

        while (v7 < 0x800);
      }
    }
  }

  return v2;
}

uint64_t LWCRTypeVerificationXPCDictionary_RequirementsOnly(uint64_t a1, int a2, char **a3)
{
  v19 = 0xAAAAAAAAAAAAAAAALL;
  v20 = 0xAAAAAAAAAAAAAAAALL;
  v8[0] = a2;
  v8[1] = 0;
  v9 = &v18;
  v10 = typeMaskForXPCObj;
  v11 = integerValueForXPCObj;
  v12 = stringValueForXPCObj;
  v13 = iterateDictionary_0;
  v14 = iterateArray_0;
  v15 = pushKeyContext_0;
  v16 = popKeyContext_0;
  v17 = setError_0;
  v18 = 0;
  v19 = xpc_array_create(0, 0);
  LODWORD(v20) = 0;
  v5 = LWCRTypeVerificationBackend_verifyRequirements(v8, a1);
  v6 = v5;
  if (a3 && (v5 & 1) == 0)
  {
    *a3 = LWCRTypeErrorContextSynthesizeError(&v18);
  }

  xpc_release(v19);
  return v6;
}

void sub_240EF2738(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_240EF29A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_240EF2C84(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_240EF2F4C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 128), 8);
  _Unwind_Resume(a1);
}

void sub_240EF31CC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_240EF3424(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v13 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_240EF36A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_240EF38C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_240EF3AC0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_240EF3CB0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_240EF3EA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_240EF409C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_240EF4284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_1_1(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint8_t a9)
{

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, &a9, 0x16u);
}

void AMFIExecutionPreflight_cold_1()
{
  OUTLINED_FUNCTION_3();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_2(v1 v2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void AMFIExecutionPreflight_cold_2()
{
  OUTLINED_FUNCTION_3();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_2(v1 v2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void AMFIExecutionPreflight_cold_3()
{
  OUTLINED_FUNCTION_3();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_2(v1 v2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void AMFIExecutionPreflight_cold_4()
{
  OUTLINED_FUNCTION_3();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_2(v1 v2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void AMFIExecutionPreflight_cold_5()
{
  OUTLINED_FUNCTION_3();
  v0 = *MEMORY[0x277D85DE8];
  v3 = [OUTLINED_FUNCTION_2(v1 v2)];
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x277D85DE8];
}

void AMFIExecutionPreflight_cold_7(void *a1)
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = [a1 path];
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x12u);

  v6 = *MEMORY[0x277D85DE8];
}

void AMFICopySwiftPlaygroundsSigningKey_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFICopySwiftPlaygroundsSigningKey_cold_2()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void AMFICopySwiftPlaygroundsSigningKey_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFICopySwiftPlaygroundsSigningKey_cold_4()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void AMFICopySwiftPlaygroundsSigningKey_cold_5()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void AMFICopySwiftPlaygroundsSigningKey_cold_6()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void AMFICopySwiftPlaygroundsSigningKey_cold_7(uint64_t a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x277D85DE8];
  v4 = 134218242;
  v5 = a2;
  v6 = 2080;
  v7 = a1;
  _os_log_error_impl(&dword_240EEA000, log, OS_LOG_TYPE_ERROR, "SecKeyCreate error: %ld (%s)", &v4, 0x16u);
  v3 = *MEMORY[0x277D85DE8];
}

void AMFICopySwiftPlaygroundsSigningKey_cold_8()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFICopySwiftPlaygroundsSigningKey_cold_9()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void AMFICopySwiftPlaygroundsSigningKey_cold_10()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void AMFICopySwiftPlaygroundsSigningKey_cold_11()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void AMFICopySwiftPlaygroundsSigningKey_cold_12()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void AMFICopySwiftPlaygroundsSigningKey_cold_13()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void AMFICopySwiftPlaygroundsSigningKey_cold_14()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFICopySwiftPlaygroundsSigningKey_cold_15()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void AMFICopySwiftPlaygroundsSigningKey_cold_16()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 8u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFICopySwiftPlaygroundsSigningKey_cold_17()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFICopySwiftPlaygroundsSigningKey_cold_18(NSObject *a1)
{
  v9 = *MEMORY[0x277D85DE8];
  v2 = *__error();
  v3 = __error();
  v4 = strerror(*v3);
  v6[0] = 67109378;
  v6[1] = v2;
  v7 = 2080;
  v8 = v4;
  _os_log_error_impl(&dword_240EEA000, a1, OS_LOG_TYPE_ERROR, "unable to add public key to AMFI: %d (%s)", v6, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFICopySwiftPlaygroundsSigningKey_cold_19()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void AMFICopySwiftPlaygroundsSigningKey_cold_20()
{
  OUTLINED_FUNCTION_1_0();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void errorCodeForMISError_cold_1(int a1, NSObject *a2)
{
  v8 = *MEMORY[0x277D85DE8];
  v5[0] = 67109378;
  v5[1] = a1;
  v6 = 2112;
  v7 = MISCopyErrorStringForErrorCode();
  v3 = v7;
  _os_log_error_impl(&dword_240EEA000, a2, OS_LOG_TYPE_ERROR, "Unexpected MISError (0x%x): %@", v5, 0x12u);

  v4 = *MEMORY[0x277D85DE8];
}

void AMFIProfileRequiresReboot_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileRequiresReboot_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileRequiresReboot_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileRequiresReboot_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileScheduleTrust_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileScheduleTrust_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileScheduleTrust_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileScheduleTrust_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileGetScheduledProfile_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileGetScheduledProfile_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileGetScheduledProfile_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileGetScheduledProfile_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileGetScheduledProfile_cold_5()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileCommitProfile_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileSetTeamIDTrustWithOptions_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileSetTeamIDTrustWithOptions_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_2_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileSetTeamIDTrustWithOptions_cold_3()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileSetTeamIDTrustWithOptions_cold_4()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileRemoveTeamIDTrust_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIProfileRemoveTeamIDTrust_cold_2()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFISupervisedModeSetState_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIDemoModeSetState_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIMDMModeEnroll_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}

void AMFIMDMModeRemove_cold_1()
{
  v6 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_1();
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x277D85DE8];
}