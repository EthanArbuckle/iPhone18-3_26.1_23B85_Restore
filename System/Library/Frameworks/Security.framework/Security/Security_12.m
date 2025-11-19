uint64_t SecCurve448PrivateKeyBlockSize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == &kSecEd448PrivateKeyDescriptor || v1 == &kSecEd448PublicKeyDescriptor)
  {
    return 57;
  }

  else
  {
    return 56;
  }
}

uint64_t SecCurve448PrivateKeyDestroy(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return cc_clear();
}

uint64_t SecCurve448PrivateKeyInit(uint64_t a1, const void *a2, size_t a3, int a4)
{
  v23 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  if (a4 == 5)
  {
    v8 = *(a1 + 16);
    if (v8 == &kSecEd448PublicKeyDescriptor || v8 == &kSecEd448PrivateKeyDescriptor)
    {
      v21 = 0u;
      memset(v22, 0, sizeof(v22));
      v20 = 0u;
      ccrng();
      key_pair = cced448_make_key_pair();
      if (!key_pair)
      {
LABEL_19:
        cc_clear();
        goto LABEL_20;
      }

      v16 = key_pair;
      v14 = _SECKEY_LOG_10207();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
LABEL_25:

        goto LABEL_26;
      }

      *buf = 67109120;
      v19 = v16;
      v15 = "cced448_make_key_pair() failed, error %d";
    }

    else
    {
      v21 = 0u;
      memset(v22, 0, 24);
      v20 = 0u;
      ccrng();
      v12 = cccurve448_make_key_pair();
      if (!v12)
      {
        goto LABEL_19;
      }

      v17 = v12;
      v14 = _SECKEY_LOG_10207();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_25;
      }

      *buf = 67109120;
      v19 = v17;
      v15 = "ccec448_make_key_pair() failed, error %d";
    }

    _os_log_error_impl(&dword_1887D2000, v14, OS_LOG_TYPE_ERROR, v15, buf, 8u);
    goto LABEL_25;
  }

  if (a4 == 7)
  {
    v5 = *(a1 + 16);
    v6 = v5 == &kSecEd448PrivateKeyDescriptor || v5 == &kSecEd448PublicKeyDescriptor;
    v7 = 56;
    if (v6)
    {
      v7 = 57;
    }

    if (v7 == a3)
    {
      memcpy(*(a1 + 24), a2, a3);
LABEL_20:
      result = 0;
      goto LABEL_21;
    }

LABEL_26:
    result = 4294941021;
    goto LABEL_21;
  }

  result = 4294899625;
LABEL_21:
  v13 = *MEMORY[0x1E69E9840];
  return result;
}

id _SECKEY_LOG_10207()
{
  if (_SECKEY_LOG_once_10210 != -1)
  {
    dispatch_once(&_SECKEY_LOG_once_10210, &__block_literal_global_10211);
  }

  v1 = _SECKEY_LOG_log_10212;

  return v1;
}

CFDataRef SecCurve448PublicKeyCopyExternalRepresentation(void *a1)
{
  v2 = a1[3];
  v3 = CFGetAllocator(a1);
  v4 = a1[2];
  if (v4 == &kSecEd448PrivateKeyDescriptor || v4 == &kSecEd448PublicKeyDescriptor)
  {
    v6 = 57;
  }

  else
  {
    v6 = 56;
  }

  return CFDataCreate(v3, v2, v6);
}

uint64_t SecCurve448PublicKeyCopyPublicOctets(void *a1, CFDataRef *a2)
{
  v4 = a1[3];
  v5 = CFGetAllocator(a1);
  v6 = a1[2];
  if (v6 == &kSecEd448PrivateKeyDescriptor || v6 == &kSecEd448PublicKeyDescriptor)
  {
    v8 = 57;
  }

  else
  {
    v8 = 56;
  }

  v9 = CFDataCreate(v5, v4, v8);
  *a2 = v9;
  if (v9)
  {
    return 0;
  }

  else
  {
    return 4294941021;
  }
}

uint64_t SecCurve448KeyGetAlgorithmID(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == &kSecEd448PrivateKeyDescriptor || v1 == &kSecEd448PublicKeyDescriptor)
  {
    return 6;
  }

  else
  {
    return 7;
  }
}

uint64_t SecCurve448PublicKeyCopyKeyDescription(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x1E696AEC0];
  AlgorithmId = SecKeyGetAlgorithmId(a1);
  v5 = *(a1 + 16);
  v6 = *(v5 + 1);
  v7 = *v5;
  _SecKeyCheck(a1, "SecKeyGetBlockSize");
  v8 = *(*(a1 + 16) + 80);
  if (v8)
  {
    v8 = (8 * v8(a1));
  }

  v9 = v2 == &kSecEd448PrivateKeyDescriptor || v2 == &kSecEd448PublicKeyDescriptor;
  v10 = "kSecX448";
  if (v9)
  {
    v10 = "kSecEd448";
  }

  [v3 stringWithFormat:@"<SecKeyRef curve type: %s, algorithm id: %lu, key type: %s, version: %d, block size: %zu bits, addr: %p>", v10, AlgorithmId, v6, v7, v8, a1];
  return objc_claimAutoreleasedReturnValue();
}

__CFDictionary *SecCurve448PublicKeyCopyAttributeDictionary(void *a1)
{
  v1 = a1[2];
  if (v1 == &kSecEd448PrivateKeyDescriptor || v1 == &kSecEd448PublicKeyDescriptor)
  {
    v3 = @"107";
  }

  else
  {
    v3 = @"108";
  }

  v4 = SecKeyCopyAttributeDictionaryWithLocalKey(a1, v3, 0);
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, v4);
  CFDictionarySetValue(MutableCopy, @"drve", *MEMORY[0x1E695E4C0]);
  if (v4)
  {
    CFRelease(v4);
  }

  return MutableCopy;
}

uint64_t SecCurve448PublicKeyBlockSize(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 == &kSecEd448PrivateKeyDescriptor || v1 == &kSecEd448PublicKeyDescriptor)
  {
    return 57;
  }

  else
  {
    return 56;
  }
}

uint64_t SecCurve448PublicKeyDestroy(uint64_t a1)
{
  v2 = *(a1 + 16);
  v1 = *(a1 + 24);
  return cc_clear();
}

uint64_t SecCurve448PublicKeyInit(uint64_t a1, void *__src, size_t a3, int a4)
{
  v20 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 24);
  if (a4 == 6)
  {
    v9 = *(a1 + 16);
    v10 = v9 == &kSecEd448PublicKeyDescriptor || v9 == &kSecEd448PrivateKeyDescriptor;
    v11 = v10;
    v12 = 56;
    if (v10)
    {
      v12 = 57;
    }

    if (v12 != a3)
    {
      goto LABEL_28;
    }

    ccrng();
    if (v11)
    {
      result = cced448_make_pub();
      if (!result)
      {
        goto LABEL_25;
      }

      v13 = result;
      v14 = _SECKEY_LOG_10207();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v18 = 67109120;
      v19 = v13;
      v15 = "cced448_make_pub() failed, error %d";
    }

    else
    {
      result = cccurve448_make_pub();
      if (!result)
      {
        goto LABEL_25;
      }

      v17 = result;
      v14 = _SECKEY_LOG_10207();
      if (!os_log_type_enabled(v14, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_27;
      }

      v18 = 67109120;
      v19 = v17;
      v15 = "cccurve448_make_pub() failed, error %d";
    }

    _os_log_error_impl(&dword_1887D2000, v14, OS_LOG_TYPE_ERROR, v15, &v18, 8u);
LABEL_27:

    goto LABEL_28;
  }

  if (a4 != 7)
  {
    result = 4294967246;
    goto LABEL_25;
  }

  v5 = *(a1 + 16);
  v6 = v5 == &kSecEd448PrivateKeyDescriptor || v5 == &kSecEd448PublicKeyDescriptor;
  v7 = 56;
  if (v6)
  {
    v7 = 57;
  }

  if (v7 != a3)
  {
LABEL_28:
    result = 4294941021;
    goto LABEL_25;
  }

  memcpy(*(a1 + 24), __src, a3);
  result = 0;
LABEL_25:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t curve448KeyGeneratePair(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  v8 = SecCFAllocatorZeroize_sAllocator;
  if (a4 == 6)
  {
    v9 = &kSecEd448PrivateKeyDescriptor;
  }

  else
  {
    v9 = &kSecX448PrivateKeyDescriptor;
  }

  v10 = SecKeyCreate(SecCFAllocatorZeroize_sAllocator, v9, a1, 0, 5);
  if (!v10)
  {
    return 4294967246;
  }

  v11 = v10;
  if (a4 == 6)
  {
    v12 = &kSecEd448PublicKeyDescriptor;
  }

  else
  {
    v12 = &kSecX448PublicKeyDescriptor;
  }

  if (a4 == 6)
  {
    v13 = 57;
  }

  else
  {
    v13 = 56;
  }

  v14 = SecKeyCreate(v8, v12, v10[3], v13, 6);
  if (!v14)
  {
    v15 = 4294967246;
LABEL_21:
    CFRelease(v11);
    return v15;
  }

  if (a2)
  {
    *a2 = v14;
    v14 = 0;
  }

  if (a3)
  {
    *a3 = v11;
    v11 = 0;
  }

  if (v14)
  {
    CFRelease(v14);
  }

  v15 = 0;
  result = 0;
  if (v11)
  {
    goto LABEL_21;
  }

  return result;
}

id SecEMCSCreateDerivedEMCSKey(void *a1, void *a2)
{
  v3 = a2;
  valuePtr = 0xAAAAAAAAAAAAAAAALL;
  v4 = a1;
  Value = CFDictionaryGetValue(v4, @"salt");
  v6 = CFDictionaryGetValue(v4, @"iter");
  v7 = CFDictionaryGetValue(v4, @"wkey");

  if (!Value)
  {
LABEL_10:
    v9 = 0;
    goto LABEL_11;
  }

  v8 = CFGetTypeID(Value);
  v9 = 0;
  if (v8 == CFDataGetTypeID())
  {
    if (v6)
    {
      v10 = CFGetTypeID(v6);
      v9 = 0;
      if (v10 == CFNumberGetTypeID())
      {
        if (v7)
        {
          v11 = CFGetTypeID(v7);
          if (v11 == CFDataGetTypeID())
          {
            if (CFNumberGetValue(v6, kCFNumberLongType, &valuePtr))
            {
              DerivedKey = CreateDerivedKey(Value, valuePtr, v3);
              if (DerivedKey)
              {
                v13 = DerivedKey;
                v9 = CopyUnwrappedKey(DerivedKey, v7);
                CFRelease(v13);
                goto LABEL_11;
              }
            }
          }

          goto LABEL_10;
        }
      }
    }
  }

LABEL_11:

  return v9;
}

__CFData *CreateDerivedKey(const __CFData *a1, uint64_t a2, void *a3)
{
  v5 = a3;
  if (a2 < 1000 || CFDataGetLength(a1) < 16)
  {
    goto LABEL_8;
  }

  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  Mutable = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 16);
  v7 = Mutable;
  if (Mutable)
  {
    CFDataSetLength(Mutable, 16);
    ccsha256_di();
    strlen([v5 UTF8String]);
    [v5 UTF8String];
    CFDataGetLength(a1);
    CFDataGetBytePtr(a1);
    CFDataGetMutableBytePtr(v7);
    if (ccpbkdf2_hmac())
    {
      CFRelease(v7);
LABEL_8:
      v7 = 0;
    }
  }

  return v7;
}

__CFData *CopyUnwrappedKey(const __CFData *a1, const __CFData *a2)
{
  v14[1] = *MEMORY[0x1E69E9840];
  ccaes_ecb_decrypt_mode();
  v4 = ccecb_context_size();
  MEMORY[0x1EEE9AC00](v4);
  if (v6 >= 0x10)
  {
    v7 = (v14 - v5);
    do
    {
      *v7 = 0xAAAAAAAAAAAAAAAALL;
      v7[1] = 0xAAAAAAAAAAAAAAAALL;
      v7 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  if (CFDataGetLength(a2) < 8 || CFDataGetLength(a1) != 16)
  {
    goto LABEL_11;
  }

  CFDataGetLength(a1);
  CFDataGetBytePtr(a1);
  ccecb_init();
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  v8 = SecCFAllocatorZeroize_sAllocator;
  CFDataGetLength(a2);
  v9 = ccwrap_unwrapped_size();
  Mutable = CFDataCreateMutable(v8, 0);
  CFDataSetLength(Mutable, v9);
  if (Mutable)
  {
    v14[0] = 0;
    CFDataGetLength(a2);
    CFDataGetBytePtr(a2);
    [(__CFData *)Mutable mutableBytes];
    if (ccwrap_auth_decrypt())
    {

LABEL_11:
      Mutable = 0;
      goto LABEL_14;
    }

    v11 = v14[0];
    if (v11 != [(__CFData *)Mutable length])
    {
      __security_simulatecrash(@"Execution has encountered an unexpected state", 1405091854);
    }
  }

LABEL_14:
  ccecb_context_size();
  cc_clear();
  v12 = *MEMORY[0x1E69E9840];

  return Mutable;
}

__CFData *SecEMCSCreateNewiDMSKey(void *a1, void *a2, void *a3, void *a4)
{
  keys[3] = *MEMORY[0x1E69E9840];
  v7 = a1;
  v8 = a2;
  v9 = a3;
  v23 = 1000;
  if (a4)
  {
    *a4 = 0;
  }

  if (v8)
  {
    v10 = CFGetTypeID(v8);
    if (v10 != CFDataGetTypeID() || CFDataGetLength(v8) != 16)
    {
      v15 = 0;
      goto LABEL_13;
    }
  }

  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, 16);
  if (!Mutable)
  {
    v13 = 0;
    goto LABEL_12;
  }

  CFDataGetLength(Mutable);
  CFDataGetMutableBytePtr(Mutable);
  v12 = *MEMORY[0x1E69E94D8];
  if (!CCRandomCopyBytes())
  {
    v18 = CFNumberCreate(0, kCFNumberLongType, &v23);
    if (v18)
    {
      v19 = v18;
      if (SecCFAllocatorZeroize_sOnce != -1)
      {
        dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
      }

      if (v8)
      {
        MutableCopy = CFDataCreateMutableCopy(SecCFAllocatorZeroize_sAllocator, 0, v8);
      }

      else
      {
        MutableCopy = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
        CFDataSetLength(MutableCopy, 16);
        if (!MutableCopy || (CFDataGetLength(MutableCopy), CFDataGetMutableBytePtr(MutableCopy), CCRandomCopyBytes()))
        {
          v14 = 0;
          goto LABEL_29;
        }
      }

      DerivedKey = CreateDerivedKey(Mutable, 1000, v9);
      v13 = DerivedKey;
      if (!DerivedKey)
      {
        v14 = 0;
        goto LABEL_31;
      }

      v14 = CopyWrappedKey(DerivedKey, MutableCopy);
      CFRelease(v13);
      if (v14)
      {
        keys[0] = @"salt";
        keys[1] = @"iter";
        keys[2] = @"wkey";
        values[0] = Mutable;
        values[1] = v19;
        values[2] = v14;
        v22 = CFDictionaryCreate(0, keys, values, 3, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
        v13 = v22;
        if (a4 && v22)
        {
          *a4 = CFRetain(MutableCopy);
        }

LABEL_31:
        CFRelease(Mutable);
        CFRelease(v19);
        if (MutableCopy)
        {
          CFRelease(MutableCopy);
        }

        if (!v14)
        {
          goto LABEL_12;
        }

        goto LABEL_9;
      }

LABEL_29:
      v13 = 0;
      goto LABEL_31;
    }
  }

  v13 = 0;
  v14 = Mutable;
LABEL_9:
  CFRelease(v14);
LABEL_12:
  v15 = v13;
LABEL_13:

  v16 = *MEMORY[0x1E69E9840];

  return v15;
}

__CFData *CopyWrappedKey(const __CFData *a1, const __CFData *a2)
{
  v13[1] = *MEMORY[0x1E69E9840];
  ccaes_ecb_encrypt_mode();
  v4 = ccecb_context_size();
  MEMORY[0x1EEE9AC00](v4);
  if (v6 >= 0x10)
  {
    v7 = (v13 - v5);
    do
    {
      *v7 = 0xAAAAAAAAAAAAAAAALL;
      v7[1] = 0xAAAAAAAAAAAAAAAALL;
      v7 += 2;
      v5 -= 16;
    }

    while (v5);
  }

  if (CFDataGetLength(a1) != 16)
  {
    goto LABEL_8;
  }

  CFDataGetLength(a1);
  CFDataGetBytePtr(a1);
  ccecb_init();
  CFDataGetLength(a2);
  v8 = ccwrap_wrapped_size();
  Mutable = CFDataCreateMutable(0, 0);
  CFDataSetLength(Mutable, v8);
  v13[0] = 0;
  CFDataGetLength(a2);
  CFDataGetBytePtr(a2);
  CFDataGetMutableBytePtr(Mutable);
  if (ccwrap_auth_encrypt())
  {
    if (Mutable)
    {
      CFRelease(Mutable);
LABEL_8:
      Mutable = 0;
    }
  }

  else
  {
    v10 = v13[0];
    if (v10 != CFDataGetLength(Mutable))
    {
      __security_simulatecrash(@"Execution has encountered an unexpected state", 1405091854);
    }
  }

  ccecb_context_size();
  cc_clear();
  v11 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t SecKyberPublicKeyCopyOperationResult(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __CFString **a8)
{
  v23[2] = *MEMORY[0x1E69E9840];
  if (a2 != 5 || !CFEqual(cf1, @"algid:kem:kyber"))
  {
    v11 = MEMORY[0x1E695E738];
    goto LABEL_6;
  }

  if (a5)
  {
    v11 = MEMORY[0x1E695E4D0];
LABEL_6:
    v12 = *v11;
    goto LABEL_7;
  }

  v15 = *(a1 + 24);
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  v16 = SecCFAllocatorZeroize_sAllocator;
  v17 = cckem_shared_key_nbytes_ctx();
  Mutable = CFDataCreateMutable(v16, 0);
  CFDataSetLength(Mutable, v17);
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  v19 = SecCFAllocatorZeroize_sAllocator;
  v20 = cckem_encapsulated_key_nbytes_ctx();
  v21 = CFDataCreateMutable(v19, 0);
  CFDataSetLength(v21, v20);
  [(__CFData *)v21 length];
  [(__CFData *)v21 mutableBytes];
  [(__CFData *)Mutable length];
  [(__CFData *)Mutable mutableBytes];
  ccrng();
  v22 = cckem_encapsulate();
  if (v22)
  {
    SecError(-26275, a8, @"Key encapsulation failed, err=%d for key %@", v22, a1);
  }

  v23[0] = v21;
  v23[1] = Mutable;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:2];

LABEL_7:
  v13 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t SecKyberPublicKeyCopyPublicOctets(uint64_t a1, __CFData **a2)
{
  v3 = SecKEMPublicKeyCopyData(*(a1 + 24), 0);
  *a2 = v3;
  if (v3)
  {
    return 0;
  }

  else
  {
    return 4294941021;
  }
}

uint64_t SecKyberPublicKeyCopyKeyDescription(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = cckem_pubkey_nbytes_ctx();
  cckem_kyber768();
  if (v3 == cckem_pubkey_nbytes_info())
  {
    v4 = @"Kyber-768-pubKey";
  }

  else
  {
    v5 = cckem_pubkey_nbytes_ctx();
    cckem_kyber1024();
    if (v5 == cckem_pubkey_nbytes_info())
    {
      v4 = @"Kyber-1024-pubKey";
    }

    else
    {
      v4 = @"Kyber";
    }
  }

  v6 = SecKEMGenerateHexDump();
  v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<SecKeyRef %@ algorithm id: %lu, key type: %s, version: %d, bytes: %@, addr: %p>", v4, 8, *(*(a1 + 16) + 8), **(a1 + 16), v6, a1];

  return v7;
}

__CFString *SecKyberPublicKeyCopyAttributeDictionary(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1)
  {
    v2 = *(a1 + 24);
    v3 = cckem_pubkey_nbytes_ctx();
    cckem_kyber768();
    if (v3 == cckem_pubkey_nbytes_info())
    {
      v4 = @"768";
    }

    else
    {
      v6 = cckem_pubkey_nbytes_ctx();
      cckem_kyber1024();
      if (v6 != cckem_pubkey_nbytes_info())
      {
        v8 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          *v12 = 0;
          _os_log_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEFAULT, "unknown Kyber type detected", v12, 2u);
        }

        v4 = &unk_1EFAAC748;
        goto LABEL_13;
      }

      v4 = @"1024";
    }

    v7 = v4;
LABEL_13:
    v9 = SecKEMPublicKeyCopyData(v1, 0);
    v10 = SecSHA1DigestCreate(*MEMORY[0x1E695E480], [(__CFData *)v9 bytes], [(__CFData *)v9 length]);
    v5 = SecKEMCreateKeyAttributeDictionary(@"109", v4, @"0", v10, v9);

    goto LABEL_14;
  }

  v4 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "Invalid key data: The provided key does not contain a valid KEM context.", buf, 2u);
  }

  v5 = &stru_1EFA8C6C8;
LABEL_14:

  return v5;
}

uint64_t SecKyberPublicKeyInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    cckem_kyber768();
    if (cckem_pubkey_nbytes_info() == a3)
    {
      cckem_kyber768();
    }

    else
    {
      cckem_kyber1024();
      if (cckem_pubkey_nbytes_info() != a3)
      {
        v8 = secLogObjForScope("SecWarning");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 67109120;
          v14 = a3;
          v9 = "Kyber pubkey size=%dbytes is invalid";
          v10 = v8;
          v11 = 8;
          goto LABEL_13;
        }

LABEL_14:

        goto LABEL_15;
      }

      cckem_kyber1024();
    }

    v6 = cckem_sizeof_pub_ctx();
    *(a1 + 24) = malloc_type_calloc(1uLL, v6, 0x773AC145uLL);
    result = cckem_import_pubkey();
    if (result)
    {
      v7 = result;
      v8 = secLogObjForScope("SecWarning");
      if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
      {
        v13 = 67109376;
        v14 = a3;
        v15 = 1024;
        v16 = v7;
        v9 = "Kyber pubkey size=%dbytes import failed: %d";
        v10 = v8;
        v11 = 14;
LABEL_13:
        _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, v9, &v13, v11);
        goto LABEL_14;
      }

      goto LABEL_14;
    }
  }

  else
  {
    if (!a2)
    {
LABEL_15:
      result = 4294967246;
      goto LABEL_16;
    }

    result = 0;
    *(a1 + 24) = a2;
  }

LABEL_16:
  v12 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SecKyberPrivateKeyCopyOperationResult(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, __CFString **a8)
{
  if (a2 == 6 && CFEqual(cf1, @"algid:kem:kyber"))
  {
    if (a5 == 1)
    {
      v13 = MEMORY[0x1E695E4D0];
      return *v13;
    }

    if (!a5)
    {
      SecKEMDecapsulateSharedKey(a1, a6, a8);
      return objc_claimAutoreleasedReturnValue();
    }
  }

  v13 = MEMORY[0x1E695E738];
  return *v13;
}

uint64_t SecKyberPrivateKeyCopyPublicOctets(uint64_t a1, __CFData **a2)
{
  v3 = *(a1 + 24);
  v4 = cckem_public_ctx();
  v5 = SecKEMPublicKeyCopyData(v4, 0);
  *a2 = v5;
  if (v5)
  {
    return 0;
  }

  else
  {
    return 4294941021;
  }
}

uint64_t SecKyberPrivateKeyCopyKeyDescription(uint64_t a1)
{
  v2 = *(a1 + 24);
  cckem_public_ctx();
  v3 = cckem_privkey_nbytes_ctx();
  cckem_kyber768();
  if (v3 == cckem_privkey_nbytes_info())
  {
    v4 = @"Kyber-768-privKey";
  }

  else
  {
    cckem_public_ctx();
    v5 = cckem_privkey_nbytes_ctx();
    cckem_kyber1024();
    v6 = cckem_privkey_nbytes_info();
    v4 = @"Kyber";
    if (v5 == v6)
    {
      v4 = @"Kyber-1024-privKey";
    }
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"<SecKeyRef %@ algorithm id: %lu, key type: %s, version: %d, addr: %p>", v4, 8, *(*(a1 + 16) + 8), **(a1 + 16), a1];
  return objc_claimAutoreleasedReturnValue();
}

uint64_t SecKyberPrivateKeyCopyAttributeDictionary(uint64_t a1)
{
  v2 = *(a1 + 24);
  cckem_public_ctx();
  v3 = cckem_privkey_nbytes_ctx();
  cckem_kyber768();
  if (v3 == cckem_privkey_nbytes_info())
  {
    v4 = @"768";
LABEL_5:
    v6 = v4;
    goto LABEL_9;
  }

  cckem_public_ctx();
  v5 = cckem_privkey_nbytes_ctx();
  cckem_kyber1024();
  if (v5 == cckem_privkey_nbytes_info())
  {
    v4 = @"1024";
    goto LABEL_5;
  }

  v7 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v18 = 0;
    _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "unknown Kyber type detected", v18, 2u);
  }

  v4 = &unk_1EFAAC748;
LABEL_9:
  v8 = *(a1 + 24);
  v9 = cckem_public_ctx();
  v10 = SecKEMPublicKeyCopyData(v9, 0);
  if (v10 && (v11 = v10, v12 = SecSHA1DigestCreate(*MEMORY[0x1E695E480], [(__CFData *)v10 bytes], [(__CFData *)v10 length]), v11, v12))
  {
    v13 = 0;
    v14 = v12;
  }

  else
  {
    v14 = [MEMORY[0x1E695DEF0] data];
    v12 = 0;
    v13 = 1;
  }

  v15 = SecKEMPrivateKeyCopyExternalRepresentation(a1, 0);
  v16 = SecKEMCreateKeyAttributeDictionary(@"109", v4, @"1", v14, v15);

  if (v13)
  {
  }

  return v16;
}

uint64_t SecKyberPrivateKeyInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    cckem_kyber768();
    v5 = cckem_pubkey_nbytes_info();
    cckem_kyber768();
    if (cckem_privkey_nbytes_info() + v5 == a3)
    {
      cckem_kyber768();
    }

    else
    {
      cckem_kyber1024();
      v7 = cckem_pubkey_nbytes_info();
      cckem_kyber1024();
      if (cckem_privkey_nbytes_info() + v7 != a3)
      {
        v11 = secLogObjForScope("SecWarning");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 67109120;
          v18 = a3;
          v12 = "Kyber pubkey size=%dbytes is invalid";
          v14 = v11;
          v15 = 8;
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      cckem_kyber1024();
    }

    v8 = cckem_sizeof_full_ctx();
    *(a1 + 24) = malloc_type_calloc(1uLL, v8, 0xFE012729uLL);
    cckem_pubkey_nbytes_info();
    v9 = cckem_import_privkey();
    if (v9)
    {
      v10 = v9;
      v11 = secLogObjForScope("SecWarning");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 67109376;
        v18 = a3;
        v19 = 1024;
        v20 = v10;
        v12 = "Kyber privkey size=%dbytes import of priv part failed: %d";
LABEL_14:
        v14 = v11;
        v15 = 14;
LABEL_17:
        _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, v12, &v17, v15);
        goto LABEL_18;
      }

      goto LABEL_18;
    }

    cckem_public_ctx();
    result = cckem_import_pubkey();
    if (result)
    {
      v13 = result;
      v11 = secLogObjForScope("SecWarning");
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v17 = 67109376;
        v18 = a3;
        v19 = 1024;
        v20 = v13;
        v12 = "Kyber privkey size=%dbytes import of pub part failed: %d";
        goto LABEL_14;
      }

LABEL_18:

      goto LABEL_19;
    }
  }

  else
  {
    if (!a2)
    {
LABEL_19:
      result = 4294967246;
      goto LABEL_20;
    }

    result = 0;
    *(a1 + 24) = a2;
  }

LABEL_20:
  v16 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t SecKyberKeyGeneratePair(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  cckem_kyber768();
  v6 = [a1 objectForKeyedSubscript:@"bsiz"];
  v7 = v6;
  if (!v6)
  {
LABEL_6:
    v10 = cckem_sizeof_full_ctx();
    v11 = malloc_type_calloc(1uLL, v10, 0x506D6625uLL);
    cckem_full_ctx_init();
    ccrng();
    key = cckem_generate_key();
    if (key)
    {
      v13 = key;
      free(v11);
      v14 = secLogObjForScope("SecWarning");
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        v26 = 67109120;
        LODWORD(v27) = v13;
        _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "Failed to generate Kyber key: err %d", &v26, 8u);
      }

      v15 = 4294941021;
    }

    else
    {
      if (SecCFAllocatorZeroize_sOnce != -1)
      {
        dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
      }

      v16 = SecKeyCreate(SecCFAllocatorZeroize_sAllocator, &kSecKyberPrivateKeyDescriptor, v11, 0, 0);
      if (v16)
      {
        v17 = cckem_sizeof_pub_ctx();
        v18 = malloc_type_calloc(1uLL, v17, 0x1991FCEBuLL);
        v19 = cckem_public_ctx();
        v20 = cckem_sizeof_pub_ctx();
        memcpy(v18, v19, v20);
        v21 = SecKeyCreate(*MEMORY[0x1E695E480], &kSecKyberPublicKeyDescriptor, v18, 0, 0);
        v22 = v21;
        if (v21)
        {
          if (a2)
          {
            *a2 = v21;
          }

          v15 = 0;
          if (a3)
          {
            *a3 = v16;
          }
        }

        else
        {
          v15 = 4294967246;
        }
      }

      else
      {
        v15 = 4294967246;
      }
    }

    goto LABEL_25;
  }

  v8 = [v6 integerValue];
  if (v8 == [@"768" integerValue])
  {
    cckem_kyber768();
    goto LABEL_6;
  }

  v9 = [v7 integerValue];
  if (v9 == [@"1024" integerValue])
  {
    cckem_kyber1024();
    goto LABEL_6;
  }

  v23 = secLogObjForScope("SecWarning");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = v7;
    _os_log_impl(&dword_1887D2000, v23, OS_LOG_TYPE_DEFAULT, "Invalid kyber type %@ requested for Kyber key generation", &v26, 0xCu);
  }

  v15 = 4294967246;
LABEL_25:

  v24 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __SecIdentityGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

uint64_t SecIdentityCompare(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a2)
  {
    return 0;
  }

  result = CFEqual(*(a1 + 16), *(a2 + 16));
  if (result)
  {
    return CFEqual(*(a1 + 24), *(a2 + 24)) != 0;
  }

  return result;
}

OSStatus SecPKCS12Import(CFDataRef pkcs12_data, CFDictionaryRef options, CFArrayRef *items)
{
  coder = 0;
  cf = 0;
  theDict = 0;
  SecAsn1CoderCreate(&coder);
  if (options)
  {
    Value = CFDictionaryGetValue(options, @"passphrase");
    cf = Value;
    if (Value)
    {
      CFRetain(Value);
    }
  }

  if (!cf)
  {
    cf = CFStringCreateWithCString(0, &unk_188967DD7, 0x8000100u);
  }

  theDict = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v52 = 0;
  v50 = 0u;
  v51 = 0u;
  v49 = 0u;
  Length = CFDataGetLength(pkcs12_data);
  BytePtr = CFDataGetBytePtr(pkcs12_data);
  v9 = 1;
  if (!coder || !BytePtr)
  {
    goto LABEL_26;
  }

  v10 = SEC_ASN1Decode(*coder, &v49, &NSS_P12_DecodedPFXTemplate, BytePtr, Length);
  v11 = v52;
  if (v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = v51 == 1;
  }

  if (!v12 || v52 == 0)
  {
    goto LABEL_81;
  }

  *&context = v52[1];
  *(&context + 1) = *v52;
  if (DEROidCompare(&oidSha1, &context))
  {
    v14 = 0;
    v15 = 20;
LABEL_19:
    v16 = 64;
    goto LABEL_20;
  }

  if (DEROidCompare(&oidSha256, &context))
  {
    v14 = 2;
    v15 = 32;
    goto LABEL_19;
  }

  if (DEROidCompare(&oidSha384, &context))
  {
    v14 = 3;
    v15 = 48;
  }

  else
  {
    if (!DEROidCompare(&oidSha512, &context))
    {
      if (!DEROidCompare(&oidSha224, &context))
      {
        goto LABEL_24;
      }

      v14 = 5;
      v15 = 28;
      goto LABEL_19;
    }

    v14 = 4;
    v15 = 64;
  }

  v16 = 128;
LABEL_20:
  if (!*(&context + 1))
  {
LABEL_24:
    v19 = 0;
LABEL_25:
    free(v19);
    v9 = 2;
LABEL_26:
    LODWORD(v53) = v9;
    goto LABEL_60;
  }

  v17 = v11[8];
  if (!v17)
  {
    goto LABEL_32;
  }

  v18 = v11[9];
  if (!v18)
  {
    goto LABEL_32;
  }

  if (v17 > 4)
  {
    goto LABEL_24;
  }

  v20 = 0;
  do
  {
    v21 = *v18++;
    v20 = v21 | (v20 << 8);
    --v17;
  }

  while (v17);
  if (!v20)
  {
LABEL_32:
    v20 = 1;
  }

  v22 = v15;
  v19 = malloc_type_malloc(v15, 0x100004077774924uLL);
  if (p12_pbe_gen(cf, v11[7], v11[6], v20, 3, v19, v22, v16, v22))
  {
    goto LABEL_25;
  }

  v23 = 0xAAAAAAAAAAAAAAAALL;
  v53 = 0xAAAAAAAAAAAAAAAALL;
  v54 = 0xAAAAAAAAAAAAAAAALL;
  if (coder)
  {
    v23 = PORT_ArenaAlloc(*coder, v22);
    v54 = v23;
    if (v23)
    {
      v53 = v22;
    }
  }

  CCHmac(v14, v19, v22, *(*(&v51 + 1) + 8), **(&v51 + 1), v23);
  if (!nssCompareSecAsn1Items(&v53, v11 + 4))
  {
    goto LABEL_25;
  }

  free(v19);
  v53 = 0;
  if (!coder || (v24 = *(*(&v51 + 1) + 8)) == 0 || SEC_ASN1Decode(*coder, &v53, &NSS_P12_AuthenticatedSafeTemplate, v24, **(&v51 + 1)))
  {
LABEL_81:
    v9 = 1;
    goto LABEL_26;
  }

  if (v53)
  {
    if (*v53)
    {
      v25 = 0;
        ;
      }

      if (v25)
      {
        v27 = 0;
        v28 = 8 * v25;
        while (1)
        {
          v29 = v53[v27 / 8];
          v30 = *(v29 + 16);
          if (v30 == 6)
          {
            break;
          }

          if (v30 == 1)
          {
            v31 = *(v29 + 24);
            v32 = *v31;
            v33 = v31[1];
            goto LABEL_52;
          }

LABEL_53:
          v27 += 8;
          if (v28 == v27)
          {
            goto LABEL_54;
          }
        }

        context = 0uLL;
        p12Decrypt(&coder, (*(v29 + 24) + 32), *(v29 + 24) + 64, &context);
        if (v34)
        {
          goto LABEL_81;
        }

        v33 = *(&context + 1);
        v32 = context;
LABEL_52:
        if (safeContentsParse(&coder, v32, v33))
        {
          goto LABEL_81;
        }

        goto LABEL_53;
      }
    }
  }

LABEL_54:
  LODWORD(v53) = 0;
  v35 = MEMORY[0x1E695E9C0];
  Mutable = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v37 = CFArrayCreateMutable(0, 0, v35);
  *&context = Mutable;
  *(&context + 1) = &v53;
  CFDictionaryApplyFunction(theDict, collect_certs, &context);
  if (!v53)
  {
    v38 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
    *&v49 = v38;
    *(&v49 + 1) = v37;
    *&v50 = Mutable;
    *(&v50 + 1) = &v53;
    CFDictionaryApplyFunction(theDict, build_trust_chains, &v49);
    *items = v38;
  }

  if (v37)
  {
    CFRelease(v37);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_60:
  if (theDict)
  {
    CFRelease(theDict);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  SecAsn1CoderRelease(coder);
  if (v53)
  {
    if (v53 == 2)
    {
      return -25293;
    }

    else if (v53 == 1)
    {
      return -26275;
    }

    else
    {
      return -26276;
    }
  }

  else if (options)
  {
    v40 = CFDictionaryGetValue(options, @"nleg");
    v39 = 0;
    if (v40 && v40 != *MEMORY[0x1E695E4C0])
    {
      *&context = 0;
      *(&context + 1) = &context;
      v47 = 0x2000000000;
      v48 = 0;
      v41 = *items;
      *&v49 = MEMORY[0x1E69E9820];
      *(&v49 + 1) = 0x40000000;
      *&v50 = __SecPKCS12ImportToModernKeychain_block_invoke;
      *(&v50 + 1) = &unk_1E70DEA00;
      *&v51 = &context;
      *(&v51 + 1) = options;
      v55.length = CFArrayGetCount(v41);
      v55.location = 0;
      CFArrayApplyFunction(v41, v55, apply_block_1_10321, &v49);
      v39 = *(*(&context + 1) + 24);
      _Block_object_dispose(&context, 8);
    }
  }

  else
  {
    return 0;
  }

  return v39;
}

uint64_t __SecPKCS12ImportToModernKeychain_block_invoke(uint64_t a1, CFTypeRef cf)
{
  v3 = a1;
  v42 = *MEMORY[0x1E69E9840];
  v4 = *(a1 + 40);
  v5 = CFGetTypeID(cf);
  result = CFDictionaryGetTypeID();
  if (v5 != result)
  {
    goto LABEL_39;
  }

  if (CFDictionaryContainsKey(cf, @"identity"))
  {
    result = CFDictionaryGetValue(cf, @"identity");
    if (!result || (v7 = result, v8 = CFGetTypeID(result), result = SecIdentityGetTypeID(), v8 != result))
    {
LABEL_35:
      v11 = -26276;
LABEL_38:
      *(*(*(v3 + 32) + 8) + 24) = v11;
      goto LABEL_39;
    }

    v9 = secItemOptionsFromPKCS12Options(v4);
    CFDictionaryAddValue(v9, @"nleg", *MEMORY[0x1E695E4D0]);
    CFDictionaryAddValue(v9, @"class", @"idnt");
    CFDictionaryAddValue(v9, @"v_Ref", v7);
    v10 = SecItemAdd(v9, 0);
    if (v10 == -25299)
    {
      v12 = secLogObjForScope("p12Decode");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = "skipping dup cert";
        goto LABEL_12;
      }
    }

    else
    {
      v11 = v10;
      if (v10)
      {
        v37 = secLogObjForScope("SecError");
        if (os_log_type_enabled(v37, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 67109120;
          v41 = v11;
          _os_log_impl(&dword_1887D2000, v37, OS_LOG_TYPE_DEFAULT, "p12Decode: Error %d adding identity to keychain", buf, 8u);
        }

        goto LABEL_14;
      }

      v12 = secLogObjForScope("p12Decode");
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 0;
        v13 = "cert added to keychain";
LABEL_12:
        _os_log_impl(&dword_1887D2000, v12, OS_LOG_TYPE_DEFAULT, v13, buf, 2u);
      }
    }

    v11 = 0;
LABEL_14:
    if (v9)
    {
      CFRelease(v9);
    }

    goto LABEL_16;
  }

  v11 = 0;
LABEL_16:
  result = CFDictionaryContainsKey(cf, @"chain");
  if (result)
  {
    result = CFDictionaryGetValue(cf, @"chain");
    if (result)
    {
      v14 = result;
      v15 = CFGetTypeID(result);
      result = CFArrayGetTypeID();
      if (v15 == result)
      {
        v38 = v3;
        v16 = 0;
        v17 = @"nleg";
        v18 = @"class";
        v19 = @"cert";
        v20 = *MEMORY[0x1E695E4D0];
        v21 = @"v_Ref";
        v39 = v14;
        while (1)
        {
          result = CFArrayGetCount(v14);
          if (result <= v16)
          {
            goto LABEL_37;
          }

          v22 = v16;
          ValueAtIndex = CFArrayGetValueAtIndex(v14, v16);
          v24 = secItemOptionsFromPKCS12Options(v4);
          CFDictionaryAddValue(v24, v17, v20);
          CFDictionaryAddValue(v24, v18, v19);
          CFDictionaryAddValue(v24, v21, ValueAtIndex);
          v25 = SecItemAdd(v24, 0);
          if (v25 == -25299)
          {
            break;
          }

          v11 = v25;
          if (!v25)
          {
            v26 = secLogObjForScope("p12Decode");
            if (os_log_type_enabled(v26, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 0;
              v27 = v26;
              v28 = "cert added to keychain";
              goto LABEL_27;
            }

            goto LABEL_28;
          }

          v30 = v20;
          v31 = v21;
          v32 = v19;
          v33 = v18;
          v34 = v17;
          v35 = secLogObjForScope("SecError");
          if (os_log_type_enabled(v35, OS_LOG_TYPE_DEFAULT))
          {
            *buf = 67109120;
            v41 = v11;
            _os_log_impl(&dword_1887D2000, v35, OS_LOG_TYPE_DEFAULT, "p12Decode: Error %d adding identity to keychain", buf, 8u);
          }

          v17 = v34;
          v18 = v33;
          v19 = v32;
          v21 = v31;
          v20 = v30;
          v14 = v39;
          if (v24)
          {
            goto LABEL_29;
          }

LABEL_30:
          v16 = v22 + 1;
        }

        v29 = secLogObjForScope("p12Decode");
        if (os_log_type_enabled(v29, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 0;
          v27 = v29;
          v28 = "skipping dup cert";
LABEL_27:
          _os_log_impl(&dword_1887D2000, v27, OS_LOG_TYPE_DEFAULT, v28, buf, 2u);
        }

LABEL_28:
        v11 = 0;
        if (!v24)
        {
          goto LABEL_30;
        }

LABEL_29:
        CFRelease(v24);
        goto LABEL_30;
      }
    }

    goto LABEL_35;
  }

  v38 = v3;
LABEL_37:
  v3 = v38;
  if (v11)
  {
    goto LABEL_38;
  }

LABEL_39:
  v36 = *MEMORY[0x1E69E9840];
  return result;
}

__CFDictionary *secItemOptionsFromPKCS12Options(CFDictionaryRef theDict)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, theDict);
  CFDictionaryRemoveValue(MutableCopy, @"passphrase");
  CFDictionaryRemoveValue(MutableCopy, @"memory");
  return MutableCopy;
}

void build_trust_chains(uint64_t a1, const __CFDictionary *a2, uint64_t a3)
{
  v5 = *MEMORY[0x1E695E480];
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  trust = 0;
  Value = CFDictionaryGetValue(a2, @"key");
  if (!Value)
  {
    goto LABEL_34;
  }

  v8 = CFDictionaryGetValue(a2, @"cert");
  if (!v8)
  {
    v15 = 0;
    v17 = 0;
    BasicX509 = 0;
    v13 = 0;
    Value = 0;
    goto LABEL_17;
  }

  v9 = CFDictionaryGetValue(a2, @"algid");
  v19[0] = CFDataGetBytePtr(v9);
  v19[1] = CFDataGetLength(v9);
  if (DEROidCompare(&oidEcPubKey, v19))
  {
    BytePtr = CFDataGetBytePtr(Value);
    Length = CFDataGetLength(Value);
    v12 = &kSecECPrivateKeyDescriptor;
  }

  else
  {
    if (!DEROidCompare(&oidRsa, v19))
    {
      v15 = 0;
      v17 = 0;
      BasicX509 = 0;
      v13 = 0;
      v8 = 0;
      Value = 0;
LABEL_16:
      **(a3 + 24) = 1;
      goto LABEL_17;
    }

    BytePtr = CFDataGetBytePtr(Value);
    Length = CFDataGetLength(Value);
    v12 = &kSecRSAPrivateKeyDescriptor;
  }

  Value = SecKeyCreate(v5, v12, BytePtr, Length, 1);
  if (!Value)
  {
LABEL_34:
    v15 = 0;
    v17 = 0;
    BasicX509 = 0;
    v13 = 0;
    v8 = 0;
    goto LABEL_17;
  }

  v8 = SecCertificateCreateWithData(v5, v8);
  if (!v8)
  {
    v15 = 0;
    v17 = 0;
    BasicX509 = 0;
    v13 = 0;
    goto LABEL_16;
  }

  v13 = SecIdentityCreate(v5, v8, Value);
  if (!v13)
  {
    v15 = 0;
    v17 = 0;
    BasicX509 = 0;
    goto LABEL_16;
  }

  CFDictionarySetValue(Mutable, @"identity", v13);
  v14 = CFArrayCreateMutable(0, 0, MEMORY[0x1E695E9C0]);
  v15 = v14;
  if (v14)
  {
    CFArrayAppendValue(v14, v8);
    v21.length = CFArrayGetCount(*(a3 + 16));
    v21.location = 0;
    CFArrayAppendArray(v15, *(a3 + 16), v21);
    BasicX509 = SecPolicyCreateBasicX509();
    if (BasicX509 && (v18 = -1431655766, SecTrustCreateWithCertificates(v15, BasicX509, &trust), trust))
    {
      SecTrustEvaluateInternal(trust, &v18);
      CFDictionarySetValue(Mutable, @"trust", trust);
      v17 = SecTrustCopyCertificateChain(trust);
      if (v17)
      {
        CFDictionarySetValue(Mutable, @"chain", v17);
        CFArrayAppendValue(*a3, Mutable);
      }
    }

    else
    {
      v17 = 0;
    }
  }

  else
  {
    v17 = 0;
    BasicX509 = 0;
  }

LABEL_17:
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  if (Value)
  {
    CFRelease(Value);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (BasicX509)
  {
    CFRelease(BasicX509);
  }

  if (v17)
  {
    CFRelease(v17);
  }

  if (v15)
  {
    CFRelease(v15);
  }

  if (trust)
  {
    CFRelease(trust);
  }
}

void collect_certs(int a1, CFDictionaryRef theDict, uint64_t a3)
{
  if (!CFDictionaryContainsKey(theDict, @"key"))
  {
    Value = CFDictionaryGetValue(theDict, @"cert");
    if (Value)
    {
      v6 = SecCertificateCreateWithData(*MEMORY[0x1E695E480], Value);
      if (v6)
      {
        v7 = v6;
        CFArrayAppendValue(*a3, v6);

        CFRelease(v7);
      }

      else
      {
        **(a3 + 8) = 1;
      }
    }
  }
}

uint64_t osstatus_for_kern_return(uint64_t a1)
{
  v1 = a1 + 63;
  if ((a1 + 536870207) > 0x21)
  {
    goto LABEL_8;
  }

  if (((1 << v1) & 0x20000000DLL) != 0)
  {
    return 4294941988;
  }

  if (((1 << v1) & 0x6000) != 0)
  {
    return 4294942003;
  }

  if (a1 == -536870206)
  {
    return 4294967246;
  }

LABEL_8:
  if (a1)
  {
    v3 = -25291;
  }

  else
  {
    v3 = 0;
  }

  if (a1 == -536870212)
  {
    return 4294941021;
  }

  else
  {
    return v3;
  }
}

const void *SecCopyLastError(int a1)
{
  if (getLastErrorKey_onceToken != -1)
  {
    dispatch_once(&getLastErrorKey_onceToken, &__block_literal_global_100);
  }

  if (getLastErrorKey_haveKey != 1)
  {
    return 0;
  }

  v2 = pthread_getspecific(getLastErrorKey_key);
  v3 = v2;
  if (v2)
  {
    if (!a1 || SecErrorGetOSStatus(v2) == a1)
    {
      CFRetain(v3);
      return v3;
    }

    return 0;
  }

  return v3;
}

__CFData *_SecItemCreatePersistentRef(const __CFString *a1, unint64_t a2, CFDictionaryRef theDict)
{
  v15 = *MEMORY[0x1E69E9840];
  if (theDict && (TokenPersistentRefData = CreateTokenPersistentRefData(a1, theDict)) != 0)
  {
    v6 = TokenPersistentRefData;
    v7 = *MEMORY[0x1E695E480];
    Length = CFDataGetLength(TokenPersistentRefData);
    Mutable = CFDataCreateMutable(v7, Length + 4);
    CFDataAppendBytes(Mutable, "tkpr", 4);
    BytePtr = CFDataGetBytePtr(v6);
    v11 = CFDataGetLength(v6);
    CFDataAppendBytes(Mutable, BytePtr, v11);
    CFRelease(v6);
  }

  else if ((a2 & 0x8000000000000000) != 0 || (memset(buffer, 170, 12), !CFStringGetCString(a1, buffer, 5, 0x8000100u)))
  {
    Mutable = 0;
  }

  else
  {
    *&buffer[4] = bswap64(a2);
    Mutable = CFDataCreate(0, buffer, 12);
  }

  v12 = *MEMORY[0x1E69E9840];
  return Mutable;
}

uint64_t __Block_byref_object_copy__10431(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void SecItemAuthMaxAttemptsReached(const __CFArray *a1, __CFString **a2)
{
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  Count = CFArrayGetCount(a1);
  if (Count >= 1)
  {
    v6 = Count;
    for (i = 0; i != v6; ++i)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(a1, i);
      v9 = CFArrayGetValueAtIndex(ValueAtIndex, 0);
      Length = CFDataGetLength(v9);
      v11 = CFStringCreateMutable(v3, 2 * Length);
      BytePtr = CFDataGetBytePtr(v9);
      v13 = CFDataGetLength(v9);
      if (v13 >= 1)
      {
        v14 = v13;
        do
        {
          v15 = *BytePtr++;
          CFStringAppendFormat(v11, 0, @"%02X", v15);
          --v14;
        }

        while (v14);
      }

      v16 = CFArrayGetValueAtIndex(ValueAtIndex, 1);
      v17 = CFStringCreateWithFormat(v3, 0, @"operation: %@ acl:%@\n", v16, v11);
      CFStringAppend(Mutable, v17);
      CFRelease(v11);
      CFRelease(v17);
    }
  }

  v18 = CFStringCreateWithFormat(v3, 0, @"Reached maximum count of authentication attempts\n %@", Mutable);
  SecError(-25293, a2, @"%@", v18);
  __security_simulatecrash(v18, 1405091846);
  CFRelease(v18);

  CFRelease(Mutable);
}

void *__getTKClientTokenParameterForceSystemSessionSymbolLoc_block_invoke_10461(uint64_t a1)
{
  v2 = CryptoTokenKitLibrary();
  result = dlsym(v2, "TKClientTokenParameterForceSystemSession");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTKClientTokenParameterForceSystemSessionSymbolLoc_ptr_10460 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

CFMutableDictionaryRef __SecTokenSessionCreate_block_invoke()
{
  result = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  SecTokenSessionCreate_sharedLAContexts = result;
  return result;
}

CFDictionaryRef SecItemCopyAttributeDictionary(void *a1, int a2)
{
  v4 = CFGetTypeID(a1);
  if (v4 == SecKeyGetTypeID())
  {
    v5 = SecKeyCopyAttributes(a1);
    v6 = v5;
    if (v5 && a2)
    {
      MutableCopy = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v5);
      v8 = MutableCopy;
      if (MutableCopy)
      {
        CFDictionaryRemoveValue(MutableCopy, @"sign");
        CFDictionaryRemoveValue(v8, @"vrfy");
        CFDictionaryRemoveValue(v8, @"encr");
        CFDictionaryRemoveValue(v8, @"decr");
        CFDictionaryRemoveValue(v8, @"drve");
        CFDictionaryRemoveValue(v8, @"wrap");
        CFDictionaryRemoveValue(v8, @"unwp");
        CFDictionaryRemoveValue(v8, @"snrc");
        CFDictionaryRemoveValue(v8, @"vyrc");
        CFDictionaryRemoveValue(v8, @"perm");
      }

LABEL_23:
      CFRelease(v6);
      return v8;
    }

    return v5;
  }

  if (v4 != SecCertificateGetTypeID())
  {
    if (v4 != SecIdentityGetTypeID())
    {
      return 0;
    }

    __security_simulatecrash(@"Execution has encountered an unexpected state", 1405091854);
    v10 = a1[2];
    CFRetain(v10);
    v6 = a1[3];
    CFRetain(v6);
    v11 = SecCertificateCopyData(v10);
    v12 = SecKeyCopyAttributes(v6);
    v13 = v12;
    if (v12 && v11)
    {
      v14 = CFDictionaryCreateMutableCopy(*MEMORY[0x1E695E480], 0, v12);
      CFDictionarySetValue(v14, @"certdata", v11);
    }

    else
    {
      v14 = 0;
      v8 = 0;
      if (!v12)
      {
        goto LABEL_18;
      }
    }

    CFRelease(v13);
    v8 = v14;
LABEL_18:
    if (v11)
    {
      CFRelease(v11);
    }

    if (v10)
    {
      CFRelease(v10);
    }

    if (!v6)
    {
      return v8;
    }

    goto LABEL_23;
  }

  return SecCertificateCopyAttributeDictionary(a1);
}

uint64_t SecItemAttributesSpecifySystemKeychain(void *a1)
{
  v1 = a1;
  v2 = [v1 objectForKeyedSubscript:@"u_SystemKeychainAlways"];
  v3 = [v2 BOOLValue];

  if (SecIsEduMode_once != -1)
  {
    dispatch_once(&SecIsEduMode_once, &__block_literal_global_16871);
  }

  if (v3 & 1 | ((SecIsEduMode_result & 1) == 0))
  {
    v4 = SecIsEduMode_result | v3;
  }

  else
  {
    v5 = [v1 objectForKeyedSubscript:@"u_SystemKeychain"];
    v4 = [v5 BOOLValue];
  }

  return v4 & 1;
}

void __SecItemAttributesPrepare_block_invoke(uint64_t a1, const void *a2, const void *a3)
{
  v5 = SecCFDictionaryCOWGetMutable(*(a1 + 32));

  CFDictionaryAddValue(v5, a2, a3);
}

uint64_t SecItemShareWithGroup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = objc_autoreleasePoolPush();
  v14 = 0;
  v15 = &v14;
  v16 = 0x2020000000;
  v17 = 0;
  v12 = a1;
  cf = 0;
  v7 = _os_activity_create(&dword_1887D2000, "SecItemShareWithGroup", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v7, &state);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __SecItemShareWithGroup_block_invoke;
  v10[3] = &unk_1E70DEAE8;
  v10[4] = &v14;
  v10[5] = a2;
  SecItemAuthDoQuery(&v12, 0, SecItemShareWithGroup, a3, v10);
  if (cf)
  {
    CFRelease(cf);
  }

  v8 = v15[3];
  os_activity_scope_leave(&state);

  _Block_object_dispose(&v14, 8);
  objc_autoreleasePoolPop(v6);
  return v8;
}

void sub_1888D4450(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, os_activity_scope_state_s state, uint64_t a16, uint64_t a17, char a18)
{
  os_activity_scope_leave(&state);
  _Block_object_dispose(&a18, 8);
  _Unwind_Resume(a1);
}

uint64_t __SecItemShareWithGroup_block_invoke(uint64_t a1, void *a2, const __CFDictionary *a3, uint64_t a4, const __CFDictionary *a5, CFTypeRef *a6)
{
  v10 = a2;
  if ((isModifyingAPIRateWithinLimits() & 1) == 0)
  {
    __security_simulatecrash(@"BUG IN CLIENT OF SECITEM: too many writes. See https://at.apple.com/secitemratelimit", 1405091855);
  }

  if (!v10)
  {
    if (gSecurityd && (v12 = *(gSecurityd + 104)) != 0)
    {
      v13 = *(a1 + 40);
      v14 = SecSecurityClientGet();
      v15 = v12(a3, v13, v14, a6);
      if (!v15)
      {
LABEL_8:
        v11 = 0;
        goto LABEL_11;
      }
    }

    else
    {
      v16 = *(a1 + 40);
      SecSecurityClientGet();
      v20 = 0;
      v21 = &v20;
      v22 = 0x2020000000;
      v23 = 0;
      v19[0] = MEMORY[0x1E69E9820];
      v19[1] = 3221225472;
      v19[2] = __share_with_group_request_block_invoke;
      v19[3] = &__block_descriptor_48_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
      v19[4] = a3;
      v19[5] = v16;
      v18[0] = MEMORY[0x1E69E9820];
      v18[1] = 3221225472;
      v18[2] = __share_with_group_request_block_invoke_2;
      v18[3] = &unk_1E70DEAC0;
      v18[4] = &v20;
      securityd_send_sync_and_do(0x83u, a6, v19, v18);
      v15 = v21[3];
      _Block_object_dispose(&v20, 8);
      if (!v15)
      {
        goto LABEL_8;
      }
    }

    v11 = SecItemResultProcess(a3, a5, 0, v15, (*(*(a1 + 32) + 8) + 24), a6);
    CFRelease(v15);
    goto LABEL_11;
  }

  v11 = SecError(-50, a6, @"Can't share token-protected items");
LABEL_11:

  return v11;
}

BOOL __share_with_group_request_block_invoke(uint64_t a1, void *a2, __CFString **a3)
{
  v5 = a2;
  if (SecXPCDictionarySetPListWithRepair(v5, "query", *(a1 + 32), a3, v6, v7, v8, v9))
  {
    v10 = SecXPCDictionarySetString(v5, "sharingGroup", *(a1 + 40), a3);
  }

  else
  {
    v10 = 0;
  }

  return v10;
}

void getTKTokenNotFoundAndRegistered_10505()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v0 = getTKTokenNotFoundAndRegisteredSymbolLoc_ptr_10507;
  v8 = getTKTokenNotFoundAndRegisteredSymbolLoc_ptr_10507;
  if (!getTKTokenNotFoundAndRegisteredSymbolLoc_ptr_10507)
  {
    v1 = CryptoTokenKitLibrary();
    v6[3] = dlsym(v1, "TKTokenNotFoundAndRegistered");
    getTKTokenNotFoundAndRegisteredSymbolLoc_ptr_10507 = v6[3];
    v0 = v6[3];
  }

  _Block_object_dispose(&v5, 8);
  if (v0)
  {
    v2 = *v0;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"TKErrorCode getTKTokenNotFoundAndRegistered(void)"];
    [v3 handleFailureInFunction:v4 file:@"SecSoftLink.h" lineNumber:43 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

void sub_1888D481C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getTKTokenNotFoundAndRegisteredSymbolLoc_block_invoke_10508(uint64_t a1)
{
  v2 = CryptoTokenKitLibrary();
  result = dlsym(v2, "TKTokenNotFoundAndRegistered");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTKTokenNotFoundAndRegisteredSymbolLoc_ptr_10507 = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

uint64_t __SecItemDelete_block_invoke_3(uint64_t a1, CFDictionaryRef theDict, uint64_t a3, CFTypeRef *a4)
{
  Value = CFDictionaryGetValue(theDict, @"oid");
  v8 = *(a1 + 32);
  v20 = 0;
  v9 = [v8 deleteObject:Value error:&v20];
  v10 = v20;
  if (v9)
  {
    goto LABEL_6;
  }

  if (CryptoTokenKitLibraryCore() && getTKErrorDomainSymbolLoc())
  {
    v11 = [v10 domain];
    v12 = getTKErrorDomain();
    if ([v11 isEqual:v12])
    {
      v13 = [v10 code];

      if (v13 == -6)
      {
LABEL_6:
        if (gSecurityd && (v14 = *(gSecurityd + 24)) != 0)
        {
          v15 = SecSecurityClientGet();
          v16 = v14(a3, v15, a4);
        }

        else
        {
          SecSecurityClientGet();
          v21[0] = MEMORY[0x1E69E9820];
          v21[1] = 3221225472;
          v21[2] = __dict_to_error_request_block_invoke;
          v21[3] = &__block_descriptor_40_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
          v21[4] = a3;
          v16 = securityd_send_sync_and_do(3u, a4, v21, 0);
        }

        v17 = v16;
        goto LABEL_18;
      }
    }

    else
    {
    }
  }

  v18 = v10;
  if (v18)
  {
    if (a4 && !*a4)
    {
      *a4 = v18;
    }

    else
    {
      CFRelease(v18);
    }
  }

  SecTokenProcessError(@"odel", *(a1 + 32), Value, a4);
  v17 = 0;
LABEL_18:

  return v17;
}

uint64_t SecTokenItemForEachMatching(const __CFDictionary *a1, CFTypeRef *a2, void *a3)
{
  v32 = a3;
  cf = 0;
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1);
  if (!CFDictionaryGetValue(MutableCopy, @"m_Limit"))
  {
    CFDictionarySetValue(MutableCopy, @"m_Limit", @"m_LimitAll");
  }

  v4 = *MEMORY[0x1E695E4D0];
  CFDictionarySetValue(MutableCopy, @"r_Data", *MEMORY[0x1E695E4D0]);
  CFDictionarySetValue(MutableCopy, @"r_PersistentRef", v4);
  if (gSecurityd && (v5 = *(gSecurityd + 8)) != 0)
  {
    v6 = SecSecurityClientGet();
    if ((v5(MutableCopy, v6, &cf, a2) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  else
  {
    SecSecurityClientGet();
    if (!cftype_to_BOOL_cftype_error_request(1u, MutableCopy, &cf, a2))
    {
LABEL_6:
      Mutable = 0;
      v8 = 0;
      v9 = 0;
      if (!MutableCopy)
      {
        goto LABEL_28;
      }

LABEL_27:
      CFRelease(MutableCopy);
      goto LABEL_28;
    }
  }

  v10 = CFGetTypeID(cf);
  TypeID = CFArrayGetTypeID();
  v19 = cf;
  if (v10 != TypeID)
  {
    v19 = CFArrayCreateForCFTypes(0, v12, v13, v14, v15, v16, v17, v18, cf);
    if (cf)
    {
      CFRelease(cf);
    }

    cf = v19;
  }

  Count = CFArrayGetCount(v19);
  if (Count < 1)
  {
    Mutable = 0;
    v8 = 0;
    v9 = 1;
    if (MutableCopy)
    {
      goto LABEL_27;
    }
  }

  else
  {
    v21 = Count;
    v30 = MutableCopy;
    v22 = 0;
    v23 = 0;
    v24 = 0;
    while (1)
    {
      ValueAtIndex = CFArrayGetValueAtIndex(cf, v22);
      Value = CFDictionaryGetValue(ValueAtIndex, @"v_Data");
      if (!Value)
      {
        SecError(-26276, a2, @"value not present for token item");
        v9 = 0;
        Mutable = v24;
        v8 = v23;
        goto LABEL_26;
      }

      v8 = SecTokenItemValueCopy(Value, a2);
      if (v23)
      {
        CFRelease(v23);
      }

      if (!v8)
      {
        v9 = 0;
        Mutable = v24;
        goto LABEL_26;
      }

      Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
      if (v24)
      {
        CFRelease(v24);
      }

      v27 = CFDictionaryGetValue(ValueAtIndex, @"v_PersistentRef");
      CFDictionarySetValue(Mutable, @"v_PersistentRef", v27);
      v28 = CFDictionaryGetValue(a1, @"u_SystemKeychain");
      if (v28)
      {
        CFDictionarySetValue(Mutable, @"u_SystemKeychain", v28);
      }

      if ((v32[2](v32, v8, Mutable, a2) & 1) == 0)
      {
        break;
      }

      ++v22;
      v23 = v8;
      v24 = Mutable;
      if (v21 == v22)
      {
        v9 = 1;
        goto LABEL_26;
      }
    }

    v9 = 0;
LABEL_26:
    MutableCopy = v30;
    if (v30)
    {
      goto LABEL_27;
    }
  }

LABEL_28:
  if (cf)
  {
    CFRelease(cf);
  }

  if (v8)
  {
    CFRelease(v8);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v9;
}

void SecTokenProcessError(uint64_t a1, void *a2, uint64_t a3, CFErrorRef *a4)
{
  valuePtr[1] = *MEMORY[0x1E69E9840];
  v6 = a2;
  if (CryptoTokenKitLibraryCore() && getTKErrorDomainSymbolLoc())
  {
    Domain = CFErrorGetDomain(*a4);
    getTKErrorDomain();
    if (Domain && v8)
    {
      if (!CFEqual(Domain, v8))
      {
        goto LABEL_16;
      }
    }

    else if (Domain != v8)
    {
      goto LABEL_16;
    }

    if (CFErrorGetCode(*a4) == -9)
    {
      v31 = 0;
      v9 = [v6 objectForObjectID:a3 error:&v31];
      v10 = v31;
      v11 = v10;
      if (!v9)
      {
        *a4 = v10;
      }

      v12 = [v9 accessControl];

      if (v12)
      {
        v13 = [v9 accessControl];
        v21 = CFArrayCreateForCFTypes(0, v14, v15, v16, v17, v18, v19, v20, v13);
        userInfoValues = CFArrayCreateForCFTypes(0, v22, v23, v24, v25, v26, v27, v28, v21);
        valuePtr[0] = -25330;
        valuePtr[0] = CFNumberCreate(0, kCFNumberCFIndexType, valuePtr);
        v29 = CFErrorCreateWithUserInfoKeysAndValues(0, *MEMORY[0x1E695E638], -25330, valuePtr, &userInfoValues, 1);
        if (*a4)
        {
          CFRelease(*a4);
        }

        *a4 = v29;
        CFRelease(valuePtr[0]);
        CFRelease(userInfoValues);
        CFRelease(v21);
      }
    }
  }

LABEL_16:

  v30 = *MEMORY[0x1E69E9840];
}

uint64_t __SecTokenItemUpdate_block_invoke(uint64_t a1, const __CFDictionary *a2, const __CFString *a3, CFErrorRef *a4)
{
  MutableCopy = CFDictionaryCreateMutableCopy(0, 0, *(a1 + 40));
  v9 = *(a1 + 32);
  Value = CFDictionaryGetValue(a2, @"oid");
  v11 = SecTokenCopyUpdatedObjectID(v9, Value, MutableCopy, a4);
  if (!v11)
  {
    v13 = 0;
    if (!MutableCopy)
    {
      return v13;
    }

    goto LABEL_3;
  }

  v12 = v11;
  v13 = SecItemRawUpdate(a3, MutableCopy, a4);
  CFRelease(v12);
  if (MutableCopy)
  {
LABEL_3:
    CFRelease(MutableCopy);
  }

  return v13;
}

void *SecTokenCopyUpdatedObjectID(void *a1, uint64_t a2, const __CFDictionary *a3, CFErrorRef *a4)
{
  v42 = *MEMORY[0x1E69E9840];
  v7 = a1;
  Copy = CFDictionaryCreateCopy(*MEMORY[0x1E695E480], a3);
  if (a2)
  {
    v39 = 0;
    v9 = &v39;
    v10 = [v7 objectForObjectID:a2 error:&v39];
  }

  else
  {
    v40 = 0;
    v9 = &v40;
    v10 = [v7 createObjectWithAttributes:a3 error:&v40];
  }

  v11 = v10;
  v12 = *v9;
  v13 = v12;
  if (a4 && !v11)
  {
    *a4 = v12;
LABEL_7:
    if (a2)
    {
      v14 = a2;
    }

    else
    {
      v14 = a3;
    }

    SecTokenProcessError(@"oe", v7, v14, a4);
    v15 = 0;
    goto LABEL_28;
  }

  if (!v11)
  {
    goto LABEL_7;
  }

  v33 = v12;
  CFDictionaryRemoveAllValues(a3);
  v16 = [v11 keychainAttributes];
  [(__CFDictionary *)a3 addEntriesFromDictionary:v16];

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v34 = Copy;
  v17 = Copy;
  v18 = [(__CFDictionary *)v17 countByEnumeratingWithState:&v35 objects:v41 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = *v36;
    do
    {
      for (i = 0; i != v19; ++i)
      {
        if (*v36 != v20)
        {
          objc_enumerationMutation(v17);
        }

        v22 = *(*(&v35 + 1) + 8 * i);
        if (([v22 isEqualToString:{@"v_Data", v33}] & 1) == 0)
        {
          CFDictionaryAddValue(a3, v22, [(__CFDictionary *)v17 objectForKey:v22]);
        }
      }

      v19 = [(__CFDictionary *)v17 countByEnumeratingWithState:&v35 objects:v41 count:16];
    }

    while (v19);
  }

  v23 = [v11 accessControl];
  v24 = [v11 objectID];
  Value = CFDictionaryGetValue(a3, @"v_Data");
  v30 = SecTokenItemValueCreate(v24, v23, Value, a4, v26, v27, v28, v29);

  if (v30)
  {
    CFDictionarySetValue(a3, @"v_Data", v30);
    CFDictionaryRemoveValue(a3, @"accc");
    v15 = [v11 objectID];

    if (v15)
    {
      CFRetain(v15);
    }

    if (!v23)
    {
      goto LABEL_26;
    }

    goto LABEL_25;
  }

  v15 = 0;
  if (v23)
  {
LABEL_25:
    CFRelease(v23);
  }

LABEL_26:
  v13 = v33;
  Copy = v34;
  if (v30)
  {
    CFRelease(v30);
  }

LABEL_28:
  if (Copy)
  {
    CFRelease(Copy);
  }

  v31 = *MEMORY[0x1E69E9840];
  return v15;
}

__CFData *SecTokenItemValueCreate(uint64_t a1, int a2, const void *a3, CFTypeRef *a4, int a5, int a6, int a7, int a8)
{
  MutableForCFTypesWith_10537 = CFDictionaryCreateMutableForCFTypesWith_10537(a1, a2, a3, a4, a5, a6, a7, a8, @"oid", a1);
  v16 = MutableForCFTypesWith_10537;
  if (a3)
  {
    CFDictionarySetValue(MutableForCFTypesWith_10537, @"data", a3);
  }

  DERData = CFPropertyListCreateDERData(MutableForCFTypesWith_10537, v16, a4, v11, v12, v13, v14, v15);
  CFRelease(v16);
  return DERData;
}

__CFDictionary *CFDictionaryCreateMutableForCFTypesWith_10537(int a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, void *key, uint64_t a10)
{
  Mutable = CFDictionaryCreateMutable(0, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  v14 = &a10;
  v11 = key;
  if (key)
  {
    do
    {
      CFDictionarySetValue(Mutable, v11, *v14);
      v12 = v14 + 1;
      v14 += 2;
      v11 = *v12;
    }

    while (*v12);
  }

  return Mutable;
}

void __SecTokenItemAdd_block_invoke(uint64_t a1, CFTypeRef cf1, const void *a3)
{
  if (!CFEqual(cf1, @"v_Data") && !CFEqual(cf1, @"toid") && !CFEqual(cf1, @"accc"))
  {
    v6 = *(a1 + 32);

    CFDictionaryAddValue(v6, cf1, a3);
  }
}

uint64_t SecDeleteItemsOnSignOut(CFTypeRef *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&dword_1887D2000, "SecDeleteItemsOnSignOut", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v3, &state);
  if (gSecurityd)
  {
    v4 = *(gSecurityd + 112);
    v5 = SecSecurityClientGet();
    v6 = v4(v5, a1);
  }

  else
  {
    v9 = 0;
    v10 = &v9;
    v11 = 0x2020000000;
    v12 = 0;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = __SecDeleteItemsOnSignOut_block_invoke;
    v8[3] = &unk_1E70DEAC0;
    v8[4] = &v9;
    securityd_send_sync_and_do(0x84u, a1, 0, v8);
    v6 = *(v10 + 24);
    _Block_object_dispose(&v9, 8);
  }

  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v2);
  return v6 & 1;
}

uint64_t _SecKeychainForceUpgradeIfNeeded()
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = -26276;
  v0 = objc_autoreleasePoolPush();
  v1 = SecuritydXPCProxyObject(1, &__block_literal_global_45_10546);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = ___SecKeychainForceUpgradeIfNeeded_block_invoke_46;
  v4[3] = &unk_1E70DEC08;
  v4[4] = &v5;
  [v1 secKeychainForceUpgradeIfNeeded:v4];

  objc_autoreleasePoolPop(v0);
  v2 = *(v6 + 6);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1888D56E8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t SecKeychainCopyDatabasePath(uint64_t *a1)
{
  v19 = *MEMORY[0x1E69E9840];
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v2 = objc_autoreleasePoolPush();
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = __SecKeychainCopyDatabasePath_block_invoke;
  v12[3] = &__block_descriptor_40_e17_v16__0__NSError_8l;
  v12[4] = a1;
  v3 = SecuritydXPCProxyObject(1, v12);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __SecKeychainCopyDatabasePath_block_invoke_50;
  v11[3] = &unk_1E70DEC30;
  v11[4] = &v13;
  v11[5] = a1;
  [v3 secKeychainCopyDatabasePath:v11];

  objc_autoreleasePoolPop(v2);
  v4 = secLogObjForScope("xpc");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEBUG))
  {
    v9 = v14[3];
    *buf = 138412290;
    v18 = v9;
    _os_log_debug_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEBUG, "returning keychain database path as: %@", buf, 0xCu);
  }

  if (a1)
  {
    v5 = secLogObjForScope("xpc");
    if (os_log_type_enabled(v5, OS_LOG_TYPE_DEBUG))
    {
      v10 = *a1;
      *buf = 138412290;
      v18 = v10;
      _os_log_debug_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEBUG, "returning keychain database path error: %@", buf, 0xCu);
    }
  }

  v6 = v14[3];
  _Block_object_dispose(&v13, 8);
  v7 = *MEMORY[0x1E69E9840];
  return v6;
}

void sub_1888D5A94(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SecKeychainCopyDatabasePath_block_invoke(uint64_t a1, void *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "xpc: failure to obtain XPC proxy object for SecCopyKeychainDatabasePath %@", &v6, 0xCu);
  }

  if (*(a1 + 32))
  {
    **(a1 + 32) = v3;
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __SecKeychainCopyDatabasePath_block_invoke_50(uint64_t a1, void *a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a2;
  v6 = a3;
  v7 = secLogObjForScope("xpc");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v6;
    _os_log_debug_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEBUG, "keychain database path: %@", &v10, 0xCu);
  }

  v8 = secLogObjForScope("xpc");
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEBUG))
  {
    v10 = 138412290;
    v11 = v5;
    _os_log_debug_impl(&dword_1887D2000, v8, OS_LOG_TYPE_DEBUG, "keychain database path xpc status error: %@", &v10, 0xCu);
  }

  if (*(a1 + 40))
  {
    **(a1 + 40) = v5;
  }

  *(*(*(a1 + 32) + 8) + 24) = v6;

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t SecItemDeleteAll()
{
  v0 = objc_autoreleasePoolPush();
  v1 = SecOSStatusWith(&__block_literal_global_53);
  objc_autoreleasePoolPop(v0);
  return v1;
}

uint64_t __SecItemDeleteAll_block_invoke(uint64_t a1, __CFString **a2)
{
  if (gSecurityd)
  {
    if ((*(gSecurityd + 32))(a2))
    {
      return 1;
    }

    else
    {

      return SecError(-26276, a2, @"sec_item_delete_all is NULL");
    }
  }

  else
  {

    return securityd_send_sync_and_do(7u, a2, 0, 0);
  }
}

uint64_t _SecItemUpdateTokenItemsForAccessGroups(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = _os_activity_create(&dword_1887D2000, "SecItemUpdateTokenItemsForAccessGroups", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v9, &state);
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 3221225472;
  v12[2] = ___SecItemUpdateTokenItemsForAccessGroups_block_invoke;
  v12[3] = &__block_descriptor_57_e20_B16__0_____CFError_8l;
  v12[4] = a3;
  v12[5] = a1;
  v13 = a4;
  v12[6] = a2;
  v10 = SecOSStatusWith(v12);
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v8);
  return v10;
}

BOOL __cfstring_array_array_to_error_request_block_invoke(void *a1, void *a2, __CFString **a3)
{
  v5 = a2;
  v10 = v5;
  v11 = a1[4];
  v14 = 0;
  if (!v11 || SecXPCDictionarySetString(v5, "cfstring", v11, a3))
  {
    v12 = a1[5];
    if (!v12 || SecXPCDictionarySetPListWithRepair(v10, "cfarray", v12, a3, v6, v7, v8, v9))
    {
      v13 = a1[6];
      if (!v13 || SecXPCDictionarySetPListWithRepair(v10, "query", v13, a3, v6, v7, v8, v9))
      {
        v14 = 1;
      }
    }
  }

  return v14;
}

uint64_t _SecKeychainSyncUpdateMessage(uint64_t a1, uint64_t a2)
{
  v4 = objc_autoreleasePoolPush();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2020000000;
  v11 = 0xAAAAAAAAAAAAAAAALL;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 3221225472;
  activity_block[2] = ___SecKeychainSyncUpdateMessage_block_invoke;
  activity_block[3] = &unk_1E70DEC78;
  activity_block[4] = &v8;
  activity_block[5] = a1;
  activity_block[6] = a2;
  _os_activity_initiate(&dword_1887D2000, "_SecKeychainSyncUpdateMessage", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v5 = v9[3];
  _Block_object_dispose(&v8, 8);
  objc_autoreleasePoolPop(v4);
  return v5;
}

uint64_t _SecKeychainRollKeys(uint64_t a1, CFTypeRef *a2)
{
  v4 = objc_autoreleasePoolPush();
  if (gSecurityd && (v5 = *(gSecurityd + 72)) != 0)
  {
    v6 = v5(a1, a2);
  }

  else
  {
    v11 = 0;
    v12 = &v11;
    v13 = 0x2020000000;
    v14 = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 3221225472;
    v9[2] = ___SecKeychainRollKeys_block_invoke;
    v9[3] = &__block_descriptor_33_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
    v10 = a1;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 3221225472;
    v8[2] = ___SecKeychainRollKeys_block_invoke_2;
    v8[3] = &unk_1E70DEAC0;
    v8[4] = &v11;
    securityd_send_sync_and_do(0x1Du, a2, v9, v8);
    v6 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
  }

  objc_autoreleasePoolPop(v4);
  return v6 & 1;
}

uint64_t SecItemCertificateExists(uint64_t a1, uint64_t a2, uint64_t a3, CFTypeRef *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = _os_activity_create(&dword_1887D2000, "SecItemCertificateExists", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v13.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  v13.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v9, &v13);
  if (gSecurityd && (v10 = *(gSecurityd + 48)) != 0)
  {
    v11 = v10(a1, a2, a3, a4);
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __data_data_array_to_BOOL_error_request_block_invoke;
    v15[3] = &__block_descriptor_56_e48_B24__0__NSObject_OS_xpc_object__8_____CFError_16l;
    v15[4] = a1;
    v15[5] = a2;
    v15[6] = a3;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __data_data_array_to_BOOL_error_request_block_invoke_2;
    v14[3] = &unk_1E70DEAC0;
    v14[4] = &v16;
    securityd_send_sync_and_do(0x6Eu, a4, v15, v14);
    v11 = *(v17 + 24);
    _Block_object_dispose(&v16, 8);
  }

  os_activity_scope_leave(&v13);

  objc_autoreleasePoolPop(v8);
  return v11 & 1;
}

uint64_t _SecItemAddAndNotifyOnSync(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v16 = 0;
  v17 = &v16;
  v18 = 0x3010000000;
  v19 = &unk_1889A0E76;
  v20 = a1;
  v21 = 0;
  v6 = _os_activity_create(&dword_1887D2000, "_SecItemAddAndNotifyOnSync", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v6, &state);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___SecItemAddAndNotifyOnSync_block_invoke;
  v11[3] = &unk_1E70DED60;
  v13 = &v16;
  v7 = v5;
  v12 = v7;
  v14 = a2;
  v8 = SecOSStatusWith(v11);
  v9 = v17[5];
  if (v9)
  {
    v17[5] = 0;
    CFRelease(v9);
  }

  os_activity_scope_leave(&state);
  _Block_object_dispose(&v16, 8);

  return v8;
}

void sub_1888D6A1C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, os_activity_scope_state_s state, char a18)
{
  os_activity_scope_leave(&state);
  _Block_object_dispose(&a18, 8);
  _Unwind_Resume(a1);
}

void sub_1888D6DA0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose((v27 - 128), 8);
  _Unwind_Resume(a1);
}

void SecItemSetCurrentItemAcrossAllDevices(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8)
{
  v12 = a8;
  v13 = _os_activity_create(&dword_1887D2000, "SecItemSetCurrentItemAcrossAllDevices", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v13, &state);
  v14 = objc_autoreleasePoolPush();
  v23[0] = MEMORY[0x1E69E9820];
  v23[1] = 3221225472;
  v23[2] = __SecItemSetCurrentItemAcrossAllDevices_block_invoke;
  v23[3] = &unk_1E70DECC0;
  v15 = v12;
  v24 = v15;
  v16 = SecuritydXPCProxyObject(0, v23);
  v21[0] = MEMORY[0x1E69E9820];
  v21[1] = 3221225472;
  v21[2] = __SecItemSetCurrentItemAcrossAllDevices_block_invoke_2;
  v21[3] = &unk_1E70DECC0;
  v17 = v15;
  v22 = v17;
  [v16 secItemSetCurrentItemAcrossAllDevices:a4 newCurrentItemHash:a5 accessGroup:a1 identifier:a2 viewHint:a3 oldCurrentItemReference:a6 oldCurrentItemHash:a7 complete:v21];

  objc_autoreleasePoolPop(v14);
  os_activity_scope_leave(&state);
}

void SecItemUnsetCurrentItemsAcrossAllDevices(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v7 = a4;
  v8 = _os_activity_create(&dword_1887D2000, "SecItemUnsetCurrentItemsAcrossAllDevices", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  v9 = objc_autoreleasePoolPush();
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 3221225472;
  v15[2] = __SecItemUnsetCurrentItemsAcrossAllDevices_block_invoke;
  v15[3] = &unk_1E70DECC0;
  v10 = v7;
  v16 = v10;
  v11 = SecuritydXPCProxyObject(0, v15);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __SecItemUnsetCurrentItemsAcrossAllDevices_block_invoke_2;
  v13[3] = &unk_1E70DECC0;
  v12 = v10;
  v14 = v12;
  [v11 secItemUnsetCurrentItemsAcrossAllDevices:a1 identifiers:a2 viewHint:a3 complete:v13];

  objc_autoreleasePoolPop(v9);
  os_activity_scope_leave(&state);
}

void SecItemFetchCurrentItemAcrossAllDevices(void *a1, void *a2, void *a3, uint64_t a4, void *a5)
{
  v9 = a5;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __SecItemFetchCurrentItemAcrossAllDevices_block_invoke;
  v11[3] = &unk_1E70DED88;
  v12 = v9;
  v10 = v9;
  SecItemFetchCurrentItemDataAcrossAllDevices(a1, a2, a3, a4, v11);
}

void __SecItemFetchCurrentItemAcrossAllDevices_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v4 = *(a1 + 32);
  v5 = a3;
  v6 = [a2 persistentRef];
  (*(v4 + 16))(v4, v6, v5);
}

void _SecItemFetchDigests(void *a1, void *a2, void *a3)
{
  v5 = a1;
  v6 = a2;
  v7 = a3;
  v8 = _os_activity_create(&dword_1887D2000, "_SecItemFetchDigests", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v8, &state);
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = ___SecItemFetchDigests_block_invoke;
  v11[3] = &unk_1E70DECC0;
  v9 = v7;
  v12 = v9;
  v10 = SecuritydXPCProxyObject(0, v11);
  [v10 secItemDigest:v5 accessGroup:v6 complete:v9];

  os_activity_scope_leave(&state);
}

void _SecKeychainDeleteMultiUser(void *a1, void *a2)
{
  v33[1] = *MEMORY[0x1E69E9840];
  v3 = a1;
  v4 = a2;
  v5 = _os_activity_create(&dword_1887D2000, "_SecKeychainDeleteMultiUser", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v5, &state);
  v6 = [objc_alloc(MEMORY[0x1E696AFB0]) initWithUUIDString:v3];
  v7 = v6;
  if (v6)
  {
    v32[0] = 0xAAAAAAAAAAAAAAAALL;
    v32[1] = 0xAAAAAAAAAAAAAAAALL;
    [v6 getUUIDBytes:v32];
    v25[0] = MEMORY[0x1E69E9820];
    v25[1] = 3221225472;
    v26 = ___SecKeychainDeleteMultiUser_block_invoke;
    v27 = &unk_1E70DECC0;
    v8 = v4;
    v28 = v8;
    v9 = v25;
    if (gSecurityd && *(gSecurityd + 704))
    {
      v10 = objc_alloc_init(FakeSecuritydXPCClient);
    }

    else
    {
      v10 = [[SecuritydXPCClient alloc] initTargetingSession:0];
    }

    v11 = v10;
    if (v10)
    {

      v23[0] = MEMORY[0x1E69E9820];
      v23[1] = 3221225472;
      v23[2] = ___SecKeychainDeleteMultiUser_block_invoke_2;
      v23[3] = &unk_1E70DECC0;
      v12 = v8;
      v24 = v12;
      v13 = [(FakeSecuritydXPCClient *)v11 protocolWithSync:0 errorHandler:v23];
      if (v13)
      {
        cf[0] = 0;
        cf[1] = cf;
        cf[2] = 0x3032000000;
        cf[3] = __Block_byref_object_copy__10431;
        cf[4] = __Block_byref_object_dispose__10432;
        v31 = v11;
        v14 = [MEMORY[0x1E695DEF0] dataWithBytes:v32 length:16];
        v20[0] = MEMORY[0x1E69E9820];
        v20[1] = 3221225472;
        v20[2] = ___SecKeychainDeleteMultiUser_block_invoke_90;
        v20[3] = &unk_1E70DEDD8;
        v21 = v12;
        v22 = cf;
        [v13 secKeychainDeleteMultiuser:v14 complete:v20];

        _Block_object_dispose(cf, 8);
      }
    }

    else
    {
      v16 = MEMORY[0x1E696ABC0];
      v33[0] = *MEMORY[0x1E696A578];
      cf[0] = @"Could not create SecuritydXPCClientObject";
      v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:cf forKeys:v33 count:1];
      v18 = [v16 errorWithDomain:@"securityd" code:-1 userInfo:v17];
      (v26)(v9, v18);
    }
  }

  else
  {
    cf[0] = 0;
    SecError(-50, cf, @"_SecKeychainDeleteMultiUser: invalid UUID %@", v3);
    (*(v4 + 2))(v4, 0, cf[0]);
    v15 = cf[0];
    if (cf[0])
    {
      cf[0] = 0;
      CFRelease(v15);
    }
  }

  os_activity_scope_leave(&state);
  v19 = *MEMORY[0x1E69E9840];
}

uint64_t SecItemDeleteKeychainItemsForAppClip(uint64_t a1)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2020000000;
  v10 = -26276;
  v2 = objc_autoreleasePoolPush();
  v3 = SecuritydXPCProxyObject(1, &__block_literal_global_92);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __SecItemDeleteKeychainItemsForAppClip_block_invoke_93;
  v6[3] = &unk_1E70DEC08;
  v6[4] = &v7;
  [v3 secItemDeleteForAppClipApplicationIdentifier:a1 completion:v6];

  objc_autoreleasePoolPop(v2);
  v4 = *(v8 + 6);
  _Block_object_dispose(&v7, 8);
  return v4;
}

void sub_1888D7A30(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SecItemDeleteKeychainItemsForAppClip_block_invoke_93(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("xpc");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "app clip deletion result: %i", v6, 8u);
  }

  if (!a2 || a2 == -34018)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __SecItemDeleteKeychainItemsForAppClip_block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "xpc: failure to obtain XPC proxy object for app clip deletion, %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

uint64_t SecItemPersistKeychainWritesAtHighPerformanceCost(void *a1)
{
  v2 = _os_activity_create(&dword_1887D2000, "SecItemPersistKeychainWritesAtHighPerformanceCost", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v2, &state);
  v17 = 0;
  v18 = &v17;
  v19 = 0x2020000000;
  v20 = -26276;
  v13 = 0;
  v14 = &v13;
  v15 = 0x2020000000;
  v16 = 0;
  v3 = objc_autoreleasePoolPush();
  v4 = secLogObjForScope("xpc");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "This process is requesting a expensive full keychain database checkpoint", buf, 2u);
  }

  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __SecItemPersistKeychainWritesAtHighPerformanceCost_block_invoke;
  v11[3] = &unk_1E70E0B18;
  v11[4] = &v13;
  v5 = SecuritydXPCProxyObject(1, v11);
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 3221225472;
  v10[2] = __SecItemPersistKeychainWritesAtHighPerformanceCost_block_invoke_94;
  v10[3] = &unk_1E70DEE00;
  v10[4] = &v13;
  v10[5] = &v17;
  [v5 secItemPersistKeychainWritesAtHighPerformanceCost:v10];

  objc_autoreleasePoolPop(v3);
  v6 = v14;
  v7 = v14[3];
  if (v7)
  {
    if (!a1 || (CFRetain(v14[3]), *a1 = v7, v6 = v14, (v7 = v14[3]) != 0))
    {
      v6[3] = 0;
      CFRelease(v7);
    }
  }

  v8 = *(v18 + 6);
  _Block_object_dispose(&v13, 8);
  _Block_object_dispose(&v17, 8);
  os_activity_scope_leave(&state);

  return v8;
}

void sub_1888D7DE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 112), 8);
  os_activity_scope_leave((v15 - 80));
  _Unwind_Resume(a1);
}

void __SecItemPersistKeychainWritesAtHighPerformanceCost_block_invoke(uint64_t a1, void *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = a2;
  v4 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v7 = 138412290;
    v8 = v3;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "xpc: failure to obtain XPC proxy object for Item Persistence, %@", &v7, 0xCu);
  }

  v5 = v3;
  *(*(*(a1 + 32) + 8) + 24) = v5;

  v6 = *MEMORY[0x1E69E9840];
}

void __SecItemPersistKeychainWritesAtHighPerformanceCost_block_invoke_94(uint64_t a1, int a2, void *a3)
{
  v12 = *MEMORY[0x1E69E9840];
  v5 = a3;
  if (a2)
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      v9[0] = 67109378;
      v9[1] = a2;
      v10 = 2112;
      v11 = v5;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "xpc: Failed to persist keychain writes: %d %@", v9, 0x12u);
    }

    *(*(*(a1 + 32) + 8) + 24) = v5;
  }

  else
  {
    v7 = secLogObjForScope("xpc");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      LOWORD(v9[0]) = 0;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "Successfully persisted keychain data to disk", v9, 2u);
    }
  }

  *(*(*(a1 + 40) + 8) + 24) = a2;

  v8 = *MEMORY[0x1E69E9840];
}

uint64_t SecItemPromoteAppClipItemsToParentApp(uint64_t a1, uint64_t a2)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2020000000;
  v12 = -26276;
  v4 = objc_autoreleasePoolPush();
  v5 = SecuritydXPCProxyObject(1, &__block_literal_global_97);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __SecItemPromoteAppClipItemsToParentApp_block_invoke_98;
  v8[3] = &unk_1E70DEC08;
  v8[4] = &v9;
  [v5 secItemPromoteItemsForAppClip:a1 toParentApp:a2 completion:v8];

  objc_autoreleasePoolPop(v4);
  v6 = *(v10 + 6);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void sub_1888D8120(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SecItemPromoteAppClipItemsToParentApp_block_invoke_98(uint64_t a1, int a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("xpc");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a2;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "app clip promotion result: %i", v6, 8u);
  }

  if (a2 == -34018 || !a2 || a2 == -25308)
  {
    *(*(*(a1 + 32) + 8) + 24) = a2;
  }

  v5 = *MEMORY[0x1E69E9840];
}

void __SecItemPromoteAppClipItemsToParentApp_block_invoke(uint64_t a1, void *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v2 = a2;
  v3 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v5 = 138412290;
    v6 = v2;
    _os_log_impl(&dword_1887D2000, v3, OS_LOG_TYPE_DEFAULT, "xpc: failure to obtain XPC proxy object for app clip promotion, %@", &v5, 0xCu);
  }

  v4 = *MEMORY[0x1E69E9840];
}

void *__loadUIKit_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 isMacCatalystApp];

  if (v1)
  {
    v2 = "/System/Library/iOSSupport/System/Library/Frameworks/UIKit.framework/UIKit";
  }

  else
  {
    v2 = "/System/Library/Frameworks/UIKit.framework/UIKit";
  }

  result = dlopen(v2, 1);
  if (result)
  {
    result = NSClassFromString(&cfstr_Uiapplication.isa);
    kUIApplicationClass = result;
  }

  return result;
}

void *__loadAuthenticationServices_block_invoke()
{
  v0 = [MEMORY[0x1E696AE30] processInfo];
  v1 = [v0 isMacCatalystApp];

  if (v1)
  {
    v2 = "/System/iOSSupport/System/Library/Frameworks/AuthenticationServices.framework/AuthenticationServices";
  }

  else
  {
    v2 = "/System/Library/Frameworks/AuthenticationServices.framework/AuthenticationServices";
  }

  result = dlopen(v2, 1);
  if (result)
  {
    kASAuthorizationControllerClass = NSClassFromString(&cfstr_Asauthorizatio.isa);
    kASAuthorizationPasswordProviderClass = NSClassFromString(&cfstr_Asauthorizatio_0.isa);
    result = NSClassFromString(&cfstr_Aspasswordcred.isa);
    kASPasswordCredentialClass = result;
  }

  return result;
}

uint64_t _SecKeychainCopyOTABackup()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2000000000;
  v6 = 0xAAAAAAAAAAAAAAAALL;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = ___SecKeychainCopyOTABackup_block_invoke;
  activity_block[3] = &unk_1E70DEEF8;
  activity_block[4] = &v3;
  _os_activity_initiate(&dword_1887D2000, "_SecKeychainCopyOTABackup", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v0 = v4[3];
  _Block_object_dispose(&v3, 8);
  return v0;
}

uint64_t client_data_data_BOOL_to_data_error_request(uint64_t a1, uint64_t a2, char a3)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __client_data_data_BOOL_to_data_error_request_block_invoke;
  v6[3] = &__block_descriptor_tmp_33_10705;
  v6[4] = a1;
  v6[5] = a2;
  v7 = a3;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __client_data_data_BOOL_to_data_error_request_block_invoke_2;
  v5[3] = &unk_1E70DF308;
  v5[4] = &v8;
  securityd_send_sync_and_do(9u, 0, v6, v5);
  v3 = v9[3];
  _Block_object_dispose(&v8, 8);
  return v3;
}

uint64_t _SecKeychainCopyBackup(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = ___SecKeychainCopyBackup_block_invoke;
  activity_block[3] = &unk_1E70DEF20;
  activity_block[4] = &v5;
  activity_block[5] = a1;
  activity_block[6] = a2;
  _os_activity_initiate(&dword_1887D2000, "_SecKeychainCopyBackup", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t _SecKeychainCopyEMCSBackup(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0xAAAAAAAAAAAAAAAALL;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = ___SecKeychainCopyEMCSBackup_block_invoke;
  v3[3] = &unk_1E70DEF48;
  v3[4] = &v4;
  v3[5] = a1;
  _os_activity_initiate(&dword_1887D2000, "_SecKeychainCopyEMCSBackup", OS_ACTIVITY_FLAG_DEFAULT, v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

uint64_t _SecKeychainWriteBackupToFileDescriptor(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = ___SecKeychainWriteBackupToFileDescriptor_block_invoke;
  activity_block[3] = &unk_1E70DEFB8;
  activity_block[6] = a1;
  activity_block[7] = a2;
  v7 = a3;
  activity_block[4] = &v8;
  activity_block[5] = a4;
  _os_activity_initiate(&dword_1887D2000, "_SecKeychainWriteBackupToFile", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t _SecKeychainRestoreBackupFromFileDescriptor(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = -86;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = ___SecKeychainRestoreBackupFromFileDescriptor_block_invoke;
  activity_block[3] = &unk_1E70DF028;
  v7 = a1;
  activity_block[6] = a2;
  activity_block[7] = a3;
  activity_block[4] = &v8;
  activity_block[5] = a4;
  _os_activity_initiate(&dword_1887D2000, "_SecKeychainRestoreBackup", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v4 = *(v9 + 24);
  _Block_object_dispose(&v8, 8);
  return v4;
}

uint64_t _SecKeychainCopyKeybagUUIDFromFileDescriptor(int a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = ___SecKeychainCopyKeybagUUIDFromFileDescriptor_block_invoke;
  activity_block[3] = &unk_1E70DF098;
  v5 = a1;
  activity_block[4] = &v6;
  activity_block[5] = a2;
  _os_activity_initiate(&dword_1887D2000, "_SecKeychainCopyKeybagUUID", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v2 = v7[3];
  _Block_object_dispose(&v6, 8);
  return v2;
}

uint64_t _SecKeychainRestoreBackup(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = -1431655766;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___SecKeychainRestoreBackup_block_invoke;
  v5[3] = &unk_1E70DF0E0;
  v5[4] = &v6;
  v5[5] = a1;
  v5[6] = a2;
  v5[7] = a3;
  _os_activity_initiate(&dword_1887D2000, "_SecKeychainRestoreBackup", OS_ACTIVITY_FLAG_DEFAULT, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

BOOL __data_client_data_data_to_error_request_block_invoke(CFDataRef *a1, void *a2, __CFString **a3)
{
  result = SecXPCDictionarySetData(a2, "backup", a1[4], a3);
  if (result)
  {
    result = SecXPCDictionarySetData(a2, "keybag", a1[5], a3);
    if (result)
    {
      v7 = a1[6];
      if (v7)
      {

        return SecXPCDictionarySetData(a2, "password", v7, a3);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

CFMutableDataRef SecItemBackupCreateManifest(const __CFDictionary *a1)
{
  if (a1)
  {
    Count = CFDictionaryGetCount(a1);
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 20 * Count);
    context[0] = MEMORY[0x1E69E9820];
    context[1] = 0x40000000;
    context[2] = __SecItemBackupCreateManifest_block_invoke;
    context[3] = &__block_descriptor_tmp_19_10728;
    context[4] = Mutable;
    CFDictionaryApplyFunction(a1, apply_block_2_10730, context);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    Length = CFDataGetLength(Mutable);
    qsort(MutableBytePtr, Length / 20, 0x14uLL, compareDigests);
    return Mutable;
  }

  else
  {
    v8 = *MEMORY[0x1E695E480];

    return CFDataCreateMutable(v8, 0);
  }
}

void __SecItemBackupCreateManifest_block_invoke(uint64_t a1, int a2, CFTypeRef cf)
{
  v24 = *MEMORY[0x1E69E9840];
  if (!cf || (v5 = CFGetTypeID(cf), v5 != CFDictionaryGetTypeID()))
  {
LABEL_16:
    v21 = *MEMORY[0x1E69E9840];
    return;
  }

  Value = CFDictionaryGetValue(cf, @"hash");
  v7 = Value;
  if (!Value || (v8 = CFGetTypeID(Value), v8 != CFDataGetTypeID()) || CFDataGetLength(v7) != 20)
  {
    v13 = *MEMORY[0x1E695E480];
    Length = CFDataGetLength(v7);
    Mutable = CFStringCreateMutable(v13, 2 * Length);
    BytePtr = CFDataGetBytePtr(v7);
    v17 = CFDataGetLength(v7);
    if (v17 >= 1)
    {
      v18 = v17;
      do
      {
        v19 = *BytePtr++;
        CFStringAppendFormat(Mutable, 0, @"%02X", v19);
        --v18;
      }

      while (v18);
    }

    v20 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v23 = Mutable;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "bad hash %@ in backup", buf, 0xCu);
    }

    if (Mutable)
    {
      CFRelease(Mutable);
    }

    goto LABEL_16;
  }

  v9 = *(a1 + 32);
  v10 = CFDataGetBytePtr(v7);
  v11 = CFDataGetLength(v7);
  v12 = *MEMORY[0x1E69E9840];

  CFDataAppendBytes(v9, v10, v11);
}

uint64_t compareDigests(uint64_t a1, uint64_t a2)
{
  v2 = bswap64(*a1);
  v3 = bswap64(*a2);
  if (v2 == v3)
  {
    v2 = bswap64(*(a1 + 8));
    v3 = bswap64(*(a2 + 8));
    if (v2 == v3)
    {
      v2 = bswap32(*(a1 + 16));
      v3 = bswap32(*(a2 + 16));
      if (v2 == v3)
      {
        return 0;
      }
    }
  }

  if (v2 < v3)
  {
    return 0xFFFFFFFFLL;
  }

  return 1;
}

uint64_t _SecKeychainBackupSyncable(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___SecKeychainBackupSyncable_block_invoke;
  v5[3] = &__block_descriptor_tmp_20_10740;
  v5[4] = a4;
  v5[5] = a3;
  v5[6] = a1;
  v5[7] = a2;
  return SecOSStatusWith(v5);
}

uint64_t __data_data_dict_to_dict_error_request_block_invoke(uint64_t a1, void *a2, __CFString **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v11 = *(a1 + 32);
  if (!v11 || (result = SecXPCDictionarySetPListWithRepair(a2, "backup", v11, a3, a5, a6, a7, a8), result))
  {
    result = SecXPCDictionarySetData(a2, "keybag", *(a1 + 40), a3);
    if (result)
    {
      v13 = *(a1 + 48);
      if (v13)
      {

        return SecXPCDictionarySetData(a2, "password", v13, a3);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL __data_data_dict_to_dict_error_request_block_invoke_2(uint64_t a1, void *a2, __CFString **a3)
{
  v4 = SecXPCDictionaryCopyDictionaryAndPossiblyMutateMessage(1, a2, "status", a3);
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return v4 != 0;
}

uint64_t _SecKeychainRestoreSyncable(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = -1431655766;
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = ___SecKeychainRestoreSyncable_block_invoke;
  v5[3] = &unk_1E70DF168;
  v5[4] = &v6;
  v5[5] = a3;
  v5[6] = a1;
  v5[7] = a2;
  _os_activity_initiate(&dword_1887D2000, "_SecKeychainRestoreSyncable", OS_ACTIVITY_FLAG_DEFAULT, v5);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

uint64_t __dict_data_data_to_error_request_block_invoke(uint64_t a1, void *a2, __CFString **a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  result = SecXPCDictionarySetPListWithRepair(a2, "backup", *(a1 + 32), a3, a5, a6, a7, a8);
  if (result)
  {
    result = SecXPCDictionarySetData(a2, "keybag", *(a1 + 40), a3);
    if (result)
    {
      v12 = *(a1 + 48);
      if (v12)
      {

        return SecXPCDictionarySetData(a2, "password", v12, a3);
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

BOOL SecItemBackupWithRegisteredBackups(uint64_t a1, uint64_t a2)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = 0xAAAAAAAAAAAAAAAALL;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 0x40000000;
  v9[2] = __SecItemBackupCopyNames_block_invoke;
  v9[3] = &unk_1E70DF3B8;
  v9[4] = &v10;
  v9[5] = a1;
  _os_activity_initiate(&dword_1887D2000, "SecItemBackupCopyNames", OS_ACTIVITY_FLAG_DEFAULT, v9);
  v3 = v11[3];
  _Block_object_dispose(&v10, 8);
  if (v3)
  {
    Count = CFArrayGetCount(v3);
    if (Count >= 1)
    {
      v5 = Count;
      for (i = 0; i != v5; ++i)
      {
        ValueAtIndex = CFArrayGetValueAtIndex(v3, i);
        (*(a2 + 16))(a2, ValueAtIndex);
      }
    }

    CFRelease(v3);
  }

  return v3 != 0;
}

void __SecItemBackupCopyNames_block_invoke(uint64_t a1)
{
  if (gSecurityd && (v2 = *(gSecurityd + 144)) != 0)
  {
    v3 = v2(*(a1 + 40));
  }

  else
  {
    v4 = *(a1 + 40);
    v6 = 0;
    v7 = &v6;
    v8 = 0x2000000000;
    v9 = 0;
    v5[0] = MEMORY[0x1E69E9820];
    v5[1] = 0x40000000;
    v5[2] = __to_array_error_request_block_invoke_2;
    v5[3] = &unk_1E70DF400;
    v5[4] = &v6;
    securityd_send_sync_and_do(0xDu, v4, &__block_literal_global_10750, v5);
    v3 = v7[3];
    _Block_object_dispose(&v6, 8);
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
}

BOOL __to_array_error_request_block_invoke_2(uint64_t a1, xpc_object_t xdict, __CFString **a3)
{
  v4 = SecXPCDictionaryCopyArray(xdict, "status", a3);
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return v4 != 0;
}

BOOL SecItemBackupWithRegisteredViewBackup(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = __SecItemBackupViewAndCopyBackupPeerID_block_invoke;
  activity_block[3] = &unk_1E70DF428;
  activity_block[4] = &v5;
  activity_block[5] = a1;
  activity_block[6] = a2;
  _os_activity_initiate(&dword_1887D2000, "SecItemBackupViewAndCopyBackupPeerID", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  if (v2)
  {
    CFRelease(v2);
  }

  return v2 != 0;
}

void __SecItemBackupViewAndCopyBackupPeerID_block_invoke(void *a1)
{
  if (gSecurityd && (v2 = *(gSecurityd + 152)) != 0)
  {
    v3 = v2(a1[5], a1[6]);
  }

  else
  {
    v5 = a1[5];
    v4 = a1[6];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = 0;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __string_to_string_error_request_block_invoke;
    v7[3] = &__block_descriptor_tmp_46_10755;
    v7[4] = v5;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __string_to_string_error_request_block_invoke_2;
    v6[3] = &unk_1E70DF470;
    v6[4] = &v8;
    securityd_send_sync_and_do(0xEu, v4, v7, v6);
    v3 = v9[3];
    _Block_object_dispose(&v8, 8);
  }

  *(*(a1[4] + 8) + 24) = v3;
}

BOOL __string_to_string_error_request_block_invoke_2(uint64_t a1, void *a2, __CFString **a3)
{
  v4 = SecXPCDictionaryCopyString(a2, a3);
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return v4 != 0;
}

uint64_t SecItemBackupWithChanges(uint64_t a1, void *a2, uint64_t a3)
{
  v65 = *MEMORY[0x1E69E9840];
  v59 = 0;
  v60 = &v59;
  v61 = 0x2000000000;
  v62 = 1;
  v55 = 0;
  v56 = &v55;
  v57 = 0x2000000000;
  v58 = 0;
  v49[0] = MEMORY[0x1E69E9820];
  v49[1] = 0x40000000;
  v50 = __SecItemBackupWithChanges_block_invoke;
  v51 = &unk_1E70DF190;
  v53 = &v59;
  v54 = &v55;
  v52 = a3;
  *buf = 0;
  *&buf[8] = buf;
  *&buf[16] = 0x2000000000;
  *&buf[24] = -1;
  *&activity_block.st_dev = MEMORY[0x1E69E9820];
  activity_block.st_ino = 0x40000000;
  *&activity_block.st_uid = __SecItemBackupHandoffFD_block_invoke;
  *&activity_block.st_rdev = &unk_1E70DF498;
  activity_block.st_atimespec.tv_sec = buf;
  activity_block.st_atimespec.tv_nsec = a1;
  activity_block.st_mtimespec.tv_sec = &v58;
  _os_activity_initiate(&dword_1887D2000, "SecItemBackupHandoffFD", OS_ACTIVITY_FLAG_DEFAULT, &activity_block);
  v6 = *(*&buf[8] + 24);
  _Block_object_dispose(buf, 8);
  if (v6 < 0)
  {
    v14 = secLogObjForScope("backup");
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
    {
      activity_block.st_dev = 67109378;
      *&activity_block.st_mode = v6;
      LOWORD(activity_block.st_ino) = 2112;
      *(&activity_block.st_ino + 2) = v58;
      _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "SecItemBackupHandoffFD returned %d: %@", &activity_block, 0x12u);
    }

    goto LABEL_7;
  }

  v7 = lseek(v6, 0, 0);
  if (v7)
  {
    v13 = @"lseek";
    goto LABEL_4;
  }

  v16 = fdopen(v6, "r");
  if (!v16)
  {
    v32 = secLogObjForScope("backup");
    v33 = os_log_type_enabled(v32, OS_LOG_TYPE_DEFAULT);
    if (v33)
    {
      v39 = *__error();
      activity_block.st_dev = 138412546;
      *&activity_block.st_mode = a1;
      WORD2(activity_block.st_ino) = 1024;
      *(&activity_block.st_ino + 6) = v39;
      _os_log_impl(&dword_1887D2000, v32, OS_LOG_TYPE_DEFAULT, "Receiving file for %@ failed, %d", &activity_block, 0x12u);
    }

    SecCheckErrno(v33, &v58, @"fdopen", v34, v35, v36, v37, v38, v48);
    if (!close(v6))
    {
      goto LABEL_7;
    }

    v40 = secLogObjForScope("backup");
    v7 = os_log_type_enabled(v40, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      v41 = *__error();
      activity_block.st_dev = 138412546;
      *&activity_block.st_mode = a1;
      WORD2(activity_block.st_ino) = 1024;
      *(&activity_block.st_ino + 6) = v41;
      _os_log_impl(&dword_1887D2000, v40, OS_LOG_TYPE_DEFAULT, "Encountered error closing file %@: %d", &activity_block, 0x12u);
    }

    v13 = @"close";
    goto LABEL_4;
  }

  v17 = v16;
  v18.tv_sec = 0xAAAAAAAAAAAAAAAALL;
  v18.tv_nsec = 0xAAAAAAAAAAAAAAAALL;
  *&activity_block.st_blksize = v18;
  *activity_block.st_qspare = v18;
  activity_block.st_birthtimespec = v18;
  *&activity_block.st_size = v18;
  activity_block.st_mtimespec = v18;
  activity_block.st_ctimespec = v18;
  *&activity_block.st_uid = v18;
  activity_block.st_atimespec = v18;
  *&activity_block.st_dev = v18;
  v19 = fstat(v6, &activity_block);
  v20 = secLogObjForScope("backup");
  v21 = os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
  if (v19)
  {
    if (v21)
    {
      *buf = 138412546;
      *&buf[4] = a1;
      *&buf[12] = 1024;
      *&buf[14] = v6;
      _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "Unable to get file metadata for %@, fd %d", buf, 0x12u);
    }

    SecCheckErrno(v21, &v58, @"fstat", v22, v23, v24, v25, v26, v48);
    if (!fclose(v17))
    {
      goto LABEL_7;
    }

    v27 = secLogObjForScope("backup");
    v7 = os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT);
    if (v7)
    {
      v28 = *__error();
      *buf = 138412546;
      *&buf[4] = a1;
      *&buf[12] = 1024;
      *&buf[14] = v28;
      _os_log_impl(&dword_1887D2000, v27, OS_LOG_TYPE_DEFAULT, "Encountered error closing file %@: %d", buf, 0x12u);
    }

    v13 = @"fclose";
LABEL_4:
    SecCheckErrno(v7, &v58, v13, v8, v9, v10, v11, v12, v48);
LABEL_7:
    *(v60 + 24) = 0;
LABEL_8:
    (*(a3 + 16))(a3, 3, 0, 0);
    v15 = v56[3];
    if (v15)
    {
      if (a2 && !*a2)
      {
        *a2 = v15;
      }

      else
      {
        CFRelease(v15);
      }
    }

    goto LABEL_21;
  }

  if (v21)
  {
    *buf = 138412802;
    *&buf[4] = a1;
    *&buf[12] = 1024;
    *&buf[14] = v6;
    *&buf[18] = 2048;
    *&buf[20] = activity_block.st_size;
    _os_log_impl(&dword_1887D2000, v20, OS_LOG_TYPE_DEFAULT, "Receiving file for %@ with fd %d of size %llu", buf, 0x1Cu);
  }

  v50(v49, v17);
  v42 = fclose(v17);
  if (v42)
  {
    SecCheckErrno(v42, &v58, @"fclose", v43, v44, v45, v46, v47, v48);
  }

  if (!*(v60 + 24))
  {
    goto LABEL_8;
  }

LABEL_21:
  v29 = *(v60 + 24);
  _Block_object_dispose(&v55, 8);
  _Block_object_dispose(&v59, 8);
  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

void __SecItemBackupWithChanges_block_invoke(void *a1, FILE *a2)
{
  v3 = *(a1[6] + 8);
  v4 = a1[4];
  v5 = malloc_type_malloc(0x10uLL, 0xD0202418uLL);
  v6 = 0;
  allocator = *MEMORY[0x1E695E480];
  v7 = 1;
  v8 = 16;
  while (1)
  {
    v9 = fread(&v5[v6], 1uLL, 16 - v6, a2);
    if (!v9)
    {
      break;
    }

    v10 = v9 + v6;
    v11 = &v5[v9 + v6];
    v12 = ccder_decode_tag();
    if (v12)
    {
      v13 = v12 >= v11;
    }

    else
    {
      v13 = 1;
    }

    if (v13)
    {
LABEL_29:
      v37 = SecError(-26275, (v3 + 24), @"failed to decode backup event header");
      goto LABEL_30;
    }

    v14 = v12 + 1;
    v15 = *v12;
    if ((v15 & 0x8000000000000000) != 0)
    {
      if (v15 == -125)
      {
        if (v11 - v14 < 3)
        {
          goto LABEL_29;
        }

        v14 = v12 + 4;
        v15 = (v12[1] << 16) | (v12[2] << 8) | v12[3];
      }

      else
      {
        v20 = *v12;
        if (v20 == 130)
        {
          if (v11 - v14 < 2)
          {
            goto LABEL_29;
          }

          v14 = v12 + 3;
          v15 = __rev16(*(v12 + 1));
        }

        else
        {
          if (v20 != 129 || v11 - v14 < 1)
          {
            goto LABEL_29;
          }

          v14 = v12 + 2;
          v15 = v12[1];
        }
      }
    }

    v16 = v14 - v5;
    v17 = v16 + v15;
    v18 = v16 + v15 - v10;
    if (v16 + v15 > v10)
    {
      if (v8 >= v17)
      {
        v19 = v5;
      }

      else
      {
        v19 = malloc_type_realloc(v5, v16 + v15, 0xD1EDD9C0uLL);
        v8 = v17;
        if (!v19)
        {
          v37 = SecError(-108, (v3 + 24), @"realloc buf failed");
LABEL_30:
          v7 = v37;
          goto LABEL_37;
        }
      }

      v21 = fread(&v19[v10], 1uLL, v18, a2);
      if (v21 < v18)
      {
        v30 = v21;
        v31 = feof(a2);
        if (v31)
        {
          v7 = SecError(-26275, (v3 + 24), @"unexpected end of event file %zu of %zu bytes read", v30, v18);
        }

        else
        {
          SecCheckErrno(v31, (v3 + 24), @"failed to read event body", v32, v33, v34, v35, v36, v38);
          v7 = 0;
        }

        v5 = v19;
        goto LABEL_37;
      }

      v5 = v19;
    }

    v22 = &v5[v17];
    ccder_decode_tag();
    v23 = SecError(-26275, (v3 + 24), @"unsupported event tag: %lu", 0xAAAAAAAAAAAAAAAALL);
    if (v17 >= v10)
    {
      v6 = 0;
    }

    else
    {
      v6 = v10 - v17;
      memmove(v5, v22, v6);
    }

    v7 &= v23;
  }

  v24 = feof(a2);
  if (!v24)
  {
    SecCheckErrno(v24, (v3 + 24), @"read backup event header", v25, v26, v27, v28, v29, v38);
    v7 = 0;
  }

LABEL_37:
  free(v5);
  *(*(a1[5] + 8) + 24) &= v7;
}

void __SecItemBackupHandoffFD_block_invoke(void *a1)
{
  if (gSecurityd && (v2 = *(gSecurityd + 160)) != 0)
  {
    v3 = v2(a1[5], a1[6]);
  }

  else
  {
    v5 = a1[5];
    v4 = a1[6];
    v8 = 0;
    v9 = &v8;
    v10 = 0x2000000000;
    v11 = -1;
    v7[0] = MEMORY[0x1E69E9820];
    v7[1] = 0x40000000;
    v7[2] = __string_to_fd_error_request_block_invoke;
    v7[3] = &__block_descriptor_tmp_66_10783;
    v7[4] = v5;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __string_to_fd_error_request_block_invoke_2;
    v6[3] = &unk_1E70DF4E0;
    v6[4] = &v8;
    securityd_send_sync_and_do(0xFu, v4, v7, v6);
    v3 = *(v9 + 6);
    _Block_object_dispose(&v8, 8);
  }

  *(*(a1[4] + 8) + 24) = v3;
}

uint64_t __string_to_fd_error_request_block_invoke_2(uint64_t a1, xpc_object_t xdict, __CFString **a3)
{
  v5 = xpc_dictionary_dup_fd(xdict, "status");
  if (v5 < 0)
  {
    SecError(-50, a3, @"missing fd for key %s", "status");
  }

  *(*(*(a1 + 32) + 8) + 24) = v5;
  return 1;
}

uint64_t SecItemBackupSetConfirmedManifest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = -86;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = __SecItemBackupSetConfirmedManifest_block_invoke;
  activity_block[3] = &unk_1E70DF1B8;
  activity_block[4] = &v7;
  activity_block[5] = a1;
  activity_block[6] = a2;
  activity_block[7] = a3;
  activity_block[8] = a4;
  _os_activity_initiate(&dword_1887D2000, "SecItemBackupSetConfirmedManifest", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __SecItemBackupSetConfirmedManifest_block_invoke(void *a1)
{
  if (gSecurityd && (v2 = *(gSecurityd + 168)) != 0)
  {
    result = v2(a1[5], a1[6], a1[7], a1[8]);
  }

  else
  {
    v5 = a1[7];
    v4 = a1[8];
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __string_data_data_to_BOOL_error_request_block_invoke;
    v6[3] = &__block_descriptor_tmp_104_10824;
    v7 = *(a1 + 5);
    v8 = v5;
    result = securityd_send_sync_and_do(0x10u, v4, v6, &__block_literal_global_107);
  }

  *(*(a1[4] + 8) + 24) = result;
  return result;
}

void SecItemBackupRestore(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = 0;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __SecItemBackupRestore_block_invoke;
  v8[3] = &unk_1E70DF1E0;
  v8[6] = a2;
  v8[7] = a3;
  v8[8] = a4;
  v8[9] = a5;
  v8[4] = &v9;
  v8[5] = a1;
  _os_activity_initiate(&dword_1887D2000, "SecItemBackupRestore", OS_ACTIVITY_FLAG_DEFAULT, v8);
  (*(a6 + 16))(a6, v10[3]);
  v7 = v10[3];
  if (v7)
  {
    CFRelease(v7);
  }

  _Block_object_dispose(&v9, 8);
}

uint64_t __SecItemBackupRestore_block_invoke(void *a1)
{
  if (gSecurityd && (v3 = *(gSecurityd + 176)) != 0)
  {
    v4 = a1[6];
    v5 = a1[7];
    v6 = a1[8];
    v7 = a1[9];
    v8 = *(a1[4] + 8) + 24;
    v9 = a1[5];

    return v3(v9, v4, v5, v6, v7, v8);
  }

  else
  {
    v18 = v1;
    v19 = v2;
    v11 = a1[9];
    v12 = *(a1[4] + 8);
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 0x40000000;
    v14[2] = __string_string_data_data_data_to_BOOL_error_request_block_invoke;
    v14[3] = &__block_descriptor_tmp_108_10827;
    v13 = *(a1 + 7);
    v15 = *(a1 + 5);
    v16 = v13;
    v17 = v11;
    return securityd_send_sync_and_do(0x11u, (v12 + 24), v14, &__block_literal_global_111_10828);
  }
}

uint64_t SecBackupKeybagAdd(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = __SecBackupKeybagAdd_block_invoke;
  activity_block[3] = &unk_1E70DF250;
  activity_block[4] = &v7;
  activity_block[5] = a4;
  activity_block[6] = a1;
  activity_block[7] = a2;
  activity_block[8] = a3;
  _os_activity_initiate(&dword_1887D2000, "SecServerBackupKeybagAdd", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

uint64_t __SecBackupKeybagAdd_block_invoke(uint64_t a1)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __SecBackupKeybagAdd_block_invoke_2;
  v5[3] = &__block_descriptor_tmp_27_10832;
  v1 = *(a1 + 40);
  v5[4] = *(a1 + 48);
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SecBackupKeybagAdd_block_invoke_3;
  v3[3] = &unk_1E70DF228;
  v3[4] = *(a1 + 32);
  v4 = *(a1 + 56);
  return securityd_send_sync_and_do(0x6Fu, v1, v5, v3);
}

uint64_t __SecBackupKeybagAdd_block_invoke_3(void *a1, xpc_object_t xdict, __CFString **a3)
{
  v6 = a1[5];
  length = 0;
  if (xpc_dictionary_get_data(xdict, "backupKeybagID", &length))
  {
    v7 = SecXPCDictionaryCopyData(xdict, "backupKeybagID", a3);
    *v6 = v7;
    if (!v7)
    {
      goto LABEL_12;
    }
  }

  else
  {
    *v6 = 0;
  }

  v8 = a1[6];
  length = 0;
  if (!xpc_dictionary_get_data(xdict, "backupKeybagPath", &length))
  {
    *v8 = 0;
LABEL_11:
    LOBYTE(v7) = xpc_dictionary_get_BOOL(xdict, "status");
    goto LABEL_12;
  }

  v9 = SecXPCDictionaryCopyData(xdict, "backupKeybagPath", a3);
  if (v9)
  {
    v10 = v9;
    v11 = *MEMORY[0x1E695E480];
    BytePtr = CFDataGetBytePtr(v9);
    v13 = CFDataGetLength(v10);
    *v8 = CFURLCreateWithBytes(v11, BytePtr, v13, 0x8000100u, 0);
    CFRelease(v10);
  }

  if (*v8)
  {
    goto LABEL_11;
  }

  LOBYTE(v7) = 0;
LABEL_12:
  *(*(a1[4] + 8) + 24) = v7;
  return *(*(a1[4] + 8) + 24);
}

uint64_t SecBackupKeybagDelete(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = __SecBackupKeybagDelete_block_invoke;
  activity_block[3] = &unk_1E70DF2C0;
  activity_block[5] = a2;
  activity_block[6] = a1;
  activity_block[4] = &v5;
  _os_activity_initiate(&dword_1887D2000, "_SecBackupKeybagDelete", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t __SecBackupKeybagDelete_block_invoke(void *a1)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SecBackupKeybagDelete_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_30_10834;
  v1 = a1[5];
  v4[4] = a1[6];
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SecBackupKeybagDelete_block_invoke_3;
  v3[3] = &unk_1E70DF298;
  v3[4] = a1[4];
  return securityd_send_sync_and_do(0x70u, v1, v4, v3);
}

__CFData *SecKeyCopyPublicKeyHash(const void *a1)
{
  theData = 0;
  v2 = SecKeyCopyPublicBytes(a1, &theData);
  v3 = 0;
  v4 = theData;
  if (!v2 && theData)
  {
    v5 = CFGetAllocator(a1);
    BytePtr = CFDataGetBytePtr(theData);
    Length = CFDataGetLength(theData);
    v3 = SecSHA1DigestCreate(v5, BytePtr, Length);
    v4 = theData;
  }

  if (v4)
  {
    theData = 0;
    CFRelease(v4);
  }

  return v3;
}

id _SECKEY_LOG_11460()
{
  if (_SECKEY_LOG_once_11465 != -1)
  {
    dispatch_once(&_SECKEY_LOG_once_11465, &__block_literal_global_11466);
  }

  v1 = _SECKEY_LOG_log_11467;

  return v1;
}

CFStringRef SecKeyCopyDescription(uint64_t a1)
{
  v2 = *(*(a1 + 16) + 96);
  if (!v2)
  {
    return CFStringCreateWithFormat(*MEMORY[0x1E695E480], v2, @"<SecKeyRef: %p>", a1);
  }

  return v2();
}

uint64_t SecKeyEqual(uint64_t a1, uint64_t a2)
{
  if (a1 == a2)
  {
    return 1;
  }

  if (!a2)
  {
    return 0;
  }

  v3 = *(a1 + 16);
  if (v3 != *(a2 + 16))
  {
    return 0;
  }

  if (*v3 >= 4u && (v5 = *(v3 + 160)) != 0)
  {

    return v5();
  }

  else
  {
    v6 = *(v3 + 16);
    if (v6)
    {
      return memcmp(*(a1 + 24), *(a2 + 24), v6) == 0;
    }

    else
    {
      v7 = SecKeyCopyAttributes(a1);
      v8 = SecKeyCopyAttributes(a2);
      v9 = v8;
      if (!v7 || !v8)
      {
        if (v7)
        {
          CFRelease(v7);
        }

        if (v9)
        {
          CFRelease(v9);
        }

        return 0;
      }

      v10 = CFEqual(v7, v8);
      CFRelease(v7);
      CFRelease(v9);
      return v10;
    }
  }
}

OSStatus SecKeyGeneratePair(CFDictionaryRef parameters, SecKeyRef *publicKey, SecKeyRef *privateKey)
{
  error = 0;
  v5 = SecKeyCreateRandomKey(parameters, &error);
  v6 = v5;
  if (v5)
  {
    if (privateKey)
    {
      *privateKey = v5;
    }

    Code = 0;
    if (publicKey)
    {
      *publicKey = SecKeyCopyPublicKey(v6);
    }
  }

  else
  {
    Code = CFErrorGetCode(error);
    if (error)
    {
      CFRelease(error);
    }
  }

  return Code;
}

SecKeyRef SecKeyCreateRandomKey(CFDictionaryRef parameters, CFErrorRef *error)
{
  v48 = *MEMORY[0x1E69E9840];
  context = objc_autoreleasePoolPush();
  v4 = _os_activity_create(&dword_1887D2000, "SecKeyCreateRandomKey", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v4, &state);
  key = 0;
  v41 = 0;
  cf = 0;
  v5 = merge_params(parameters, @"public");
  v6 = merge_params(parameters, @"private");
  Value = CFDictionaryGetValue(parameters, @"type");
  if (CFDictionaryGetValue(parameters, @"tkid"))
  {
    v8 = [(__CFDictionary *)parameters mutableCopy];
    v9 = [v8 objectForKeyedSubscript:@"private"];
    v10 = v9;
    v11 = MEMORY[0x1E695E0F8];
    if (v9)
    {
      v11 = v9;
    }

    v12 = v11;

    [v8 removeObjectForKey:@"private"];
    [v8 removeObjectForKey:@"public"];
    v13 = [v12 mutableCopy];
    [v13 addEntriesFromDictionary:v8];
    v14 = [SecCTKKey alloc];
    *buf = 0;
    v15 = [(SecCTKKey *)v14 initWithAttributes:v13 error:buf];
    v16 = *buf;
    v17 = v16;
    if (v15)
    {
      v18 = SecKeyCreate(*MEMORY[0x1E695E480], &kSecCTKKeyDescriptor, 0, 0, 0);
      *(v18 + 3) = v15;
    }

    else
    {
      v18 = 0;
      v41 = v16;
    }

    key = v18;
    OSStatus = SecErrorGetOSStatus(v41);
    SecError(OSStatus, &v41, @"Failed to generate keypair", contexta);
    goto LABEL_15;
  }

  if (!Value)
  {
    goto LABEL_56;
  }

  if (CFEqual(Value, @"73"))
  {
    v19 = SecECKeyGeneratePair(parameters, &cf, &key);
    goto LABEL_9;
  }

  if (!CFEqual(Value, @"42"))
  {
    if (CFEqual(Value, @"105"))
    {
      v32 = 4;
LABEL_40:
      v19 = curve25519KeyGeneratePair(parameters, &cf, &key, v32);
      goto LABEL_9;
    }

    if (CFEqual(Value, @"106"))
    {
      v32 = 5;
      goto LABEL_40;
    }

    if (CFEqual(Value, @"107"))
    {
      v34 = 6;
LABEL_45:
      v19 = curve448KeyGeneratePair(parameters, &cf, &key, v34);
      goto LABEL_9;
    }

    if (CFEqual(Value, @"108"))
    {
      v34 = 7;
      goto LABEL_45;
    }

    if (CFEqual(Value, @"109"))
    {
      v19 = SecKyberKeyGeneratePair(parameters, &cf, &key);
      goto LABEL_9;
    }

    if (CFEqual(Value, @"110"))
    {
      v19 = SecMLKEMKeyGeneratePair(parameters, &cf, &key);
      goto LABEL_9;
    }

    if (CFEqual(Value, @"111"))
    {
      v19 = SecMLDSAKeyGeneratePair(parameters, &cf, &key);
LABEL_9:
      v20 = v19;
      if (!v19)
      {
        goto LABEL_16;
      }

      goto LABEL_10;
    }

LABEL_56:
    SecError(-50, error, @"incorrect or missing kSecAttrKeyType in key generation request", context);
LABEL_15:
    v20 = 0;
    goto LABEL_16;
  }

  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  v28 = SecCFAllocatorZeroize_sAllocator;
  v29 = SecKeyCreate(SecCFAllocatorZeroize_sAllocator, &kSecRSAPrivateKeyDescriptor, parameters, 0, 5);
  if (v29)
  {
    v30 = v29;
    v31 = SecKeyCreate(v28, &kSecRSAPublicKeyDescriptor, *(v29 + 3), 0, 6);
    if (v31)
    {
      v20 = 0;
      cf = v31;
      key = v30;
      goto LABEL_17;
    }

    CFRelease(v30);
  }

  v20 = -50;
LABEL_10:
  v21 = _SECKEY_LOG_11460();
  if (os_log_type_enabled(v21, OS_LOG_TYPE_ERROR))
  {
    v33 = CFDictionaryGetValue(parameters, @"bsiz");
    *buf = 138543874;
    *&buf[4] = Value;
    v44 = 2114;
    v45 = v33;
    v46 = 1024;
    v47 = v20;
    _os_log_error_impl(&dword_1887D2000, v21, OS_LOG_TYPE_ERROR, "Failed to generate software key %{public}@:%{public}@, error: %d", buf, 0x1Cu);
  }

LABEL_16:
  if (!key)
  {
    goto LABEL_23;
  }

LABEL_17:
  if (getBoolForKey(v5, 0))
  {
    CFDictionaryRemoveValue(v5, @"tkid");
    v23 = cf;
    if (!cf)
    {
      v23 = SecKeyCopyPublicKey(key);
      cf = v23;
    }

    if (!add_key(v23, v5, &v41))
    {
      v35 = key;
      if (!key)
      {
        goto LABEL_23;
      }

      goto LABEL_49;
    }
  }

  v24 = CFDictionaryContainsKey(v6, @"tkid") != 0;
  if (getBoolForKey(v6, v24) && !add_key(key, v6, &v41))
  {
    v35 = key;
    if (key)
    {
LABEL_49:
      key = 0;
      CFRelease(v35);
    }
  }

LABEL_23:
  SecError(v20, &v41, @"failed to generate key", context);
  _SecKeyErrorPropagate(key != 0, "SecKeyCreateRandomKey", v41, error);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v6)
  {
    CFRelease(v6);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  v25 = key;
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(contextb);
  v26 = *MEMORY[0x1E69E9840];
  return v25;
}

CFMutableDictionaryRef merge_params(const __CFDictionary *a1, const void *a2)
{
  Value = CFDictionaryGetValue(a1, a2);
  if (Value)
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, Value);
    CFDictionaryApplyFunction(a1, merge_params_applier, MutableCopy);
  }

  else
  {
    MutableCopy = CFDictionaryCreateMutableCopy(0, 0, a1);
  }

  CFDictionaryRemoveValue(MutableCopy, @"public");
  CFDictionaryRemoveValue(MutableCopy, @"private");
  CFDictionaryRemoveValue(MutableCopy, @"type");
  CFDictionaryRemoveValue(MutableCopy, @"bsiz");
  return MutableCopy;
}

BOOL getBoolForKey(const __CFDictionary *a1, _BOOL8 a2)
{
  v13 = *MEMORY[0x1E69E9840];
  Value = CFDictionaryGetValue(a1, @"perm");
  if (Value)
  {
    v4 = Value;
    v5 = CFGetTypeID(Value);
    if (v5 == CFBooleanGetTypeID())
    {
      a2 = CFBooleanGetValue(v4) != 0;
    }

    else
    {
      v6 = _SECKEY_LOG_11460();
      if (os_log_type_enabled(v6, OS_LOG_TYPE_ERROR))
      {
        v9 = 138543618;
        v10 = v4;
        v11 = 2114;
        v12 = @"perm";
        _os_log_error_impl(&dword_1887D2000, v6, OS_LOG_TYPE_ERROR, "Value %{public}@ for key %{public}@ is not BOOL", &v9, 0x16u);
      }
    }
  }

  v7 = *MEMORY[0x1E69E9840];
  return a2;
}

BOOL add_key(void *value, CFMutableDictionaryRef theDict, __CFString **a3)
{
  CFDictionarySetValue(theDict, @"v_Ref", value);
  v6 = SecKeyCopyAttributes(value);
  if (v6)
  {
    v7 = v6;
    if (CFDictionaryContainsKey(v6, @"accc"))
    {
      CFDictionaryRemoveValue(theDict, @"accc");
    }

    CFRelease(v7);
  }

  CFDictionaryRemoveValue(theDict, @"applepay");
  CFDictionaryRemoveValue(theDict, @"osbound");
  CFDictionaryRemoveValue(theDict, @"sealedhashesbound");
  v8 = SecItemAdd(theDict, 0);
  return SecError(v8, a3, @"failed to add key to keychain: %@", value);
}

CFDictionaryRef CreatePrivateKeyMatchingQuery(const void *a1)
{
  v1 = SecKeyCopyPublicKeyHash(a1);
  v11 = *MEMORY[0x1E695E4D0];
  v9 = CFDictionaryCreateForCFTypes(*MEMORY[0x1E695E480], v2, v3, v4, v5, v6, v7, v8, @"class", @"keys");
  if (v1)
  {
    CFRelease(v1);
  }

  return v9;
}

CFTypeRef SecKeyCreatePersistentRefToMatchingPrivateKey(const void *a1, __CFString **a2)
{
  result = 0;
  PrivateKeyMatchingQuery = CreatePrivateKeyMatchingQuery(a1);
  v5 = SecItemCopyMatching(PrivateKeyMatchingQuery, &result);
  SecError(v5, a2, @"Error finding persistent ref to key from public: %@", a1);
  if (PrivateKeyMatchingQuery)
  {
    CFRelease(PrivateKeyMatchingQuery);
  }

  return result;
}

CFTypeRef SecKeyCopyMatchingPrivateKey(const void *a1, __CFString **a2)
{
  result = 0;
  if (!a1)
  {
    SecError(-50, a2, @"Null Public Key");
    return 0;
  }

  PrivateKeyMatchingQuery = CreatePrivateKeyMatchingQuery(a1);
  v5 = SecItemCopyMatching(PrivateKeyMatchingQuery, &result);
  if (!SecError(v5, a2, @"Error finding private key from public: %@", a1) || (v6 = CFGetTypeID(result), v6 != SecKeyGetTypeID()))
  {
    v7 = 0;
    if (!PrivateKeyMatchingQuery)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  v7 = result;
  result = 0;
  if (PrivateKeyMatchingQuery)
  {
LABEL_7:
    CFRelease(PrivateKeyMatchingQuery);
  }

LABEL_8:
  v8 = result;
  if (result)
  {
    result = 0;
    CFRelease(v8);
  }

  return v7;
}

uint64_t SecKeyGetMatchingPrivateKeyStatus(const void *a1, __CFString **a2)
{
  result = 0;
  if (a1)
  {
    PrivateKeyMatchingQuery = CreatePrivateKeyMatchingQuery(a1);
    v3 = SecItemCopyMatching(PrivateKeyMatchingQuery, &result);
    if (!v3)
    {
      v4 = CFGetTypeID(result);
      if (v4 == SecKeyGetTypeID())
      {
        v3 = 0;
      }

      else
      {
        v3 = 4294965226;
      }
    }

    if (PrivateKeyMatchingQuery)
    {
      CFRelease(PrivateKeyMatchingQuery);
    }

    v5 = result;
    if (result)
    {
      result = 0;
      CFRelease(v5);
    }
  }

  else
  {
    v3 = 4294967246;
    SecError(-50, a2, 0, @"Null Public Key");
  }

  return v3;
}

void *SecKeyCreatePublicFromDER(uint64_t a1, SecAsn1Oid *oid1, uint64_t *a3, uint64_t *a4)
{
  if (SecAsn1OidCompare(oid1, &CSSMOID_RSA))
  {
    v9 = *a4;
    v8 = a4[1];

    return SecKeyCreate(a1, &kSecRSAPublicKeyDescriptor, v8, v9, 1);
  }

  else if (SecAsn1OidCompare(oid1, &CSSMOID_ecPublicKey))
  {
    Length = oid1->Length;
    v15[0] = oid1->Data;
    v15[1] = Length;
    v16 = 0;
    v17 = 0;
    v12 = *a4;
    v18 = a4[1];
    v19 = v12;
    if (a3)
    {
      v13 = *a3;
      v16 = a3[1];
      v17 = v13;
    }

    return SecKeyCreate(a1, &kSecECPublicKeyDescriptor, v15, 48, 4);
  }

  else
  {
    v14 = _SECKEY_LOG_11460();
    if (os_log_type_enabled(v14, OS_LOG_TYPE_DEBUG))
    {
      LOWORD(v15[0]) = 0;
      _os_log_debug_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEBUG, "Unsupported algorithm oid", v15, 2u);
    }

    return 0;
  }
}

OSStatus SecKeyRawSign(SecKeyRef key, SecPadding padding, const uint8_t *dataToSign, size_t dataToSignLen, uint8_t *sig, size_t *sigLen)
{
  SignatureAlgorithmForPadding = SecKeyGetSignatureAlgorithmForPadding(key, padding, dataToSignLen);
  if (!SignatureAlgorithmForPadding)
  {
    return -50;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __SecKeyRawSign_block_invoke;
  v13[3] = &__block_descriptor_48_e58__v40__0____CFData__8____CFData__16____qq_24_____CFError_32l;
  v13[4] = key;
  v13[5] = SignatureAlgorithmForPadding;
  return SecKeyPerformLegacyOperation(dataToSign, dataToSignLen, 0, 0, sig, sigLen, v13);
}

__CFString *SecKeyGetSignatureAlgorithmForPadding(uint64_t a1, int a2, uint64_t a3)
{
  AlgorithmId = SecKeyGetAlgorithmId(a1);
  if (AlgorithmId == 3)
  {
    if (a2 == 0x4000)
    {
      return @"algid:sign:ECDSA:digest-RFC4754";
    }

    if (a2 != 1)
    {
      return @"algid:sign:ECDSA:digest-X962";
    }

    if (*ccsha1_di() == a3)
    {
      return @"algid:sign:ECDSA:digest-X962:SHA1";
    }

    if (*ccsha224_di() == a3)
    {
      return @"algid:sign:ECDSA:digest-X962:SHA224";
    }

    if (*ccsha256_di() == a3)
    {
      return @"algid:sign:ECDSA:digest-X962:SHA256";
    }

    if (*ccsha384_di() == a3)
    {
      return @"algid:sign:ECDSA:digest-X962:SHA384";
    }

    if (*ccsha512_di() == a3)
    {
      return @"algid:sign:ECDSA:digest-X962:SHA512";
    }

    else
    {
      return @"algid:sign:ECDSA:digest-X962";
    }
  }

  else if (AlgorithmId == 1)
  {
    v6 = @"algid:sign:RSA:digest-PKCS1v15:SHA512";
    if (a2 != 32774)
    {
      v6 = 0;
    }

    if (a2 == 32773)
    {
      v7 = @"algid:sign:RSA:digest-PKCS1v15:SHA384";
    }

    else
    {
      v7 = v6;
    }

    v8 = @"algid:sign:RSA:digest-PKCS1v15:SHA256";
    if (a2 != 32772)
    {
      v8 = 0;
    }

    if (a2 == 32771)
    {
      v9 = @"algid:sign:RSA:digest-PKCS1v15:SHA224";
    }

    else
    {
      v9 = v8;
    }

    if (a2 <= 32772)
    {
      v10 = v9;
    }

    else
    {
      v10 = v7;
    }

    v11 = @"algid:sign:RSA:raw";
    v12 = @"algid:sign:RSA:digest-PKCS1v15";
    v13 = @"algid:sign:RSA:digest-PKCS1v15:SHA1";
    if (a2 != 32770)
    {
      v13 = 0;
    }

    if (a2 != 1)
    {
      v12 = v13;
    }

    if (a2)
    {
      v11 = v12;
    }

    if (a2 <= 32770)
    {
      return v11;
    }

    else
    {
      return v10;
    }
  }

  else
  {
    return 0;
  }
}

OSStatus SecKeyRawVerify(SecKeyRef key, SecPadding padding, const uint8_t *signedData, size_t signedDataLen, const uint8_t *sig, size_t sigLen)
{
  SignatureAlgorithmForPadding = SecKeyGetSignatureAlgorithmForPadding(key, padding, signedDataLen);
  if (!SignatureAlgorithmForPadding)
  {
    return -50;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __SecKeyRawVerify_block_invoke;
  v13[3] = &__block_descriptor_48_e58__v40__0____CFData__8____CFData__16____qq_24_____CFError_32l;
  v13[4] = key;
  v13[5] = SignatureAlgorithmForPadding;
  return SecKeyPerformLegacyOperation(signedData, signedDataLen, sig, sigLen, 0, 0, v13);
}

uint64_t __SecKeyRawVerify_block_invoke(uint64_t a1, CFDataRef signedData, CFDataRef signature, uint64_t a4, CFErrorRef *a5)
{
  if (SecKeyVerifySignature(*(a1 + 32), *(a1 + 40), signedData, signature, a5))
  {
    return *MEMORY[0x1E695E4D0];
  }

  else
  {
    return 0;
  }
}

OSStatus SecKeyEncrypt(SecKeyRef key, SecPadding padding, const uint8_t *plainText, size_t plainTextLen, uint8_t *cipherText, size_t *cipherTextLen)
{
  AlgorithmId = SecKeyGetAlgorithmId(key);
  result = -50;
  if (AlgorithmId == 1 && padding <= 2)
  {
    v14 = off_1E70E5260[padding];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __SecKeyEncrypt_block_invoke;
    v15[3] = &__block_descriptor_48_e58__v40__0____CFData__8____CFData__16____qq_24_____CFError_32l;
    v15[4] = key;
    v15[5] = v14;
    return SecKeyPerformLegacyOperation(plainText, plainTextLen, 0, 0, cipherText, cipherTextLen, v15);
  }

  return result;
}

__CFData *SecKeyCreateEncryptedDataWithParameters(uint64_t a1, const void *a2, const __CFData *a3, const __CFData *a4, void *a5)
{
  v10 = objc_autoreleasePoolPush();
  v11 = _os_activity_create(&dword_1887D2000, "SecKeyCreateEncryptedDataWithParameters", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v11, &state);
  _SecKeyCheck(a1, "SecKeyCreateEncryptedDataWithParameters");
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"SecKeyCreateEncryptedData() called with NULL plaintext"];
  }

  v19 = 0;
  v16[0] = a1;
  v16[1] = 2;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, a2);
  cf = Mutable;
  v18 = 0;
  v13 = SecKeyRunAlgorithmAndCopyResult(v16, a3, a4, &v19);
  v14 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v14);
  }

  _SecKeyErrorPropagate(v13 != 0, "SecKeyCreateEncryptedDataWithParameters", v19, a5);
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v10);
  return v13;
}

OSStatus SecKeyDecrypt(SecKeyRef key, SecPadding padding, const uint8_t *cipherText, size_t cipherTextLen, uint8_t *plainText, size_t *plainTextLen)
{
  AlgorithmId = SecKeyGetAlgorithmId(key);
  result = -50;
  if (AlgorithmId == 1 && padding <= 2)
  {
    v14 = off_1E70E5278[padding];
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __SecKeyDecrypt_block_invoke;
    v15[3] = &__block_descriptor_48_e58__v40__0____CFData__8____CFData__16____qq_24_____CFError_32l;
    v15[4] = key;
    v15[5] = v14;
    return SecKeyPerformLegacyOperation(cipherText, cipherTextLen, 0, 0, plainText, plainTextLen, v15);
  }

  return result;
}

__CFData *SecKeyCreateDecryptedDataWithParameters(uint64_t a1, const void *a2, const __CFData *a3, const __CFData *a4, void *a5)
{
  v10 = objc_autoreleasePoolPush();
  v11 = _os_activity_create(&dword_1887D2000, "SecKeyCreateDecryptedDataWithParameters", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v11, &state);
  _SecKeyCheck(a1, "SecKeyCreateDecryptedDataWithParameters");
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"SecKeyCreateDecryptedData() called with NULL ciphertext"];
  }

  v19 = 0;
  v16[0] = a1;
  v16[1] = 3;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, a2);
  cf = Mutable;
  v18 = 0;
  v13 = SecKeyRunAlgorithmAndCopyResult(v16, a3, a4, &v19);
  v14 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v14);
  }

  _SecKeyErrorPropagate(v13 != 0, "SecKeyCreateDecryptedDataWithParameters", v19, a5);
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v10);
  return v13;
}

uint64_t SecKeyDigestAndSign(uint64_t a1, const SecAsn1Oid *a2, const UInt8 *a3, CFIndex a4, UInt8 *a5, CFIndex *a6)
{
  AlgorithmForSecAsn1AlgId = SecKeyGetAlgorithmForSecAsn1AlgId(a1, a2, 1u);
  if (!AlgorithmForSecAsn1AlgId)
  {
    return 4294967292;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __SecKeyDigestAndSign_block_invoke;
  v13[3] = &__block_descriptor_48_e58__v40__0____CFData__8____CFData__16____qq_24_____CFError_32l;
  v13[4] = a1;
  v13[5] = AlgorithmForSecAsn1AlgId;
  return SecKeyPerformLegacyOperation(a3, a4, 0, 0, a5, a6, v13);
}

uint64_t SecKeyVerifyDigest(uint64_t a1, const SecAsn1Oid *a2, const UInt8 *a3, CFIndex a4, const UInt8 *a5, CFIndex a6)
{
  AlgorithmForSecAsn1AlgId = SecKeyGetAlgorithmForSecAsn1AlgId(a1, a2, 0);
  if (!AlgorithmForSecAsn1AlgId)
  {
    return 4294967292;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __SecKeyVerifyDigest_block_invoke;
  v13[3] = &__block_descriptor_48_e58__v40__0____CFData__8____CFData__16____qq_24_____CFError_32l;
  v13[4] = a1;
  v13[5] = AlgorithmForSecAsn1AlgId;
  return SecKeyPerformLegacyOperation(a3, a4, a5, a6, 0, 0, v13);
}

uint64_t __SecKeyVerifyDigest_block_invoke(uint64_t a1, CFDataRef signedData, CFDataRef signature, uint64_t a4, CFErrorRef *a5)
{
  if (SecKeyVerifySignature(*(a1 + 32), *(a1 + 40), signedData, signature, a5))
  {
    return *MEMORY[0x1E695E4D0];
  }

  else
  {
    return 0;
  }
}

uint64_t SecKeySignDigest(uint64_t a1, const SecAsn1Oid *a2, const UInt8 *a3, CFIndex a4, UInt8 *a5, CFIndex *a6)
{
  AlgorithmForSecAsn1AlgId = SecKeyGetAlgorithmForSecAsn1AlgId(a1, a2, 0);
  if (!AlgorithmForSecAsn1AlgId)
  {
    return 4294967292;
  }

  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __SecKeySignDigest_block_invoke;
  v13[3] = &__block_descriptor_48_e58__v40__0____CFData__8____CFData__16____qq_24_____CFError_32l;
  v13[4] = a1;
  v13[5] = AlgorithmForSecAsn1AlgId;
  return SecKeyPerformLegacyOperation(a3, a4, 0, 0, a5, a6, v13);
}

uint64_t SecKeyFindWithPersistentRef(uint64_t a1, CFTypeRef *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v9 = CFDictionaryCreateForCFTypes(*MEMORY[0x1E695E480], a2, a3, a4, a5, a6, a7, a8, @"r_Ref", *MEMORY[0x1E695E4D0]);
  result = 0;
  v10 = SecItemCopyMatching(v9, &result);
  if (!v10)
  {
    v11 = CFGetTypeID(result);
    if (v11 == SecKeyGetTypeID())
    {
      v10 = 0;
      *a2 = result;
      result = 0;
      goto LABEL_7;
    }

    v10 = 4294941996;
  }

  if (result)
  {
    CFRelease(result);
  }

LABEL_7:
  if (v9)
  {
    CFRelease(v9);
  }

  return v10;
}

uint64_t SecKeyCopyPersistentRef(uint64_t a1, CFTypeRef *a2, int a3, int a4, int a5, int a6, int a7, int a8)
{
  v26 = *MEMORY[0x1E69E9840];
  if (!a1)
  {
    v16 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "SecKeyCopyPersistentRef: Need a key reference for this to work";
LABEL_14:
      _os_log_impl(&dword_1887D2000, v16, OS_LOG_TYPE_DEFAULT, v17, buf, 2u);
    }

LABEL_15:

    v12 = 4294967246;
    goto LABEL_25;
  }

  if (!a2)
  {
    v16 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v16, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      v17 = "SecKeyCopyPersistentRef: Need a persistentRef pointer for this to work";
      goto LABEL_14;
    }

    goto LABEL_15;
  }

  v10 = CFDictionaryCreateForCFTypes(*MEMORY[0x1E695E480], a2, a3, a4, a5, a6, a7, a8, @"r_PersistentRef", *MEMORY[0x1E695E4D0]);
  result = 0;
  v11 = SecItemCopyMatching(v10, &result);
  if (v11)
  {
    v12 = v11;
    v13 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109378;
      *v25 = v12;
      *&v25[4] = 2112;
      *&v25[6] = a1;
      _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "SecKeyCopyPersistentRef: received status %i for key %@", buf, 0x12u);
    }

    v14 = CFStringCreateWithFormat(0, 0, @"Expected to find persistentref for key %@", a1);
    v15 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v15, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412546;
      *v25 = v14;
      *&v25[8] = 1024;
      *&v25[10] = v12;
      _os_log_impl(&dword_1887D2000, v15, OS_LOG_TYPE_DEFAULT, "stackshot report, reason: %@, code=%08x", buf, 0x12u);
    }

    WriteStackshotReport();
    if (v14)
    {
      CFRelease(v14);
    }

LABEL_21:
    if (result)
    {
      CFRelease(result);
    }

    goto LABEL_23;
  }

  v18 = CFGetTypeID(result);
  if (v18 != CFDataGetTypeID())
  {
    v19 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v19, OS_LOG_TYPE_DEFAULT))
    {
      v20 = CFGetTypeID(result);
      *buf = 134218242;
      *v25 = v20;
      *&v25[8] = 2112;
      *&v25[10] = a1;
      _os_log_impl(&dword_1887D2000, v19, OS_LOG_TYPE_DEFAULT, "SecKeyCopyPersistentRef: SecItemCopyMatching returned success, but we got type %lu instead of CFData for key %@.", buf, 0x16u);
    }

    v12 = 4294941996;
    goto LABEL_21;
  }

  v12 = 0;
  *a2 = result;
  result = 0;
LABEL_23:
  if (v10)
  {
    CFRelease(v10);
  }

LABEL_25:
  v21 = *MEMORY[0x1E69E9840];
  return v12;
}

uint64_t _SecKeyCopyWrapKey(uint64_t a1, int a2, int a3, int a4, void *a5, __CFString **a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v7 = *(a1 + 16);
  if (*v7 >= 3u && (v8 = *(v7 + 120)) != 0)
  {

    return v8();
  }

  else
  {
    SecError(-4, a6, @"No key wrap supported for key %@", a1);
    return 0;
  }
}

uint64_t _SecKeyCopyUnwrapKey(uint64_t a1, int a2, int a3, int a4, void *a5, __CFString **a6)
{
  if (a6)
  {
    *a6 = 0;
  }

  if (a5)
  {
    *a5 = 0;
  }

  v7 = *(a1 + 16);
  if (*v7 >= 3u && (v8 = *(v7 + 128)) != 0)
  {

    return v8();
  }

  else
  {
    SecError(-4, a6, @"No key unwrap for key %@", a1);
    return 0;
  }
}

CFTypeRef SecKeyCreateDuplicate(void *a1)
{
  v2 = objc_autoreleasePoolPush();
  v3 = _os_activity_create(&dword_1887D2000, "SecKeyCreateDuplicate", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  v9.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  v9.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v3, &v9);
  _SecKeyCheck(a1, "SecKeyCreateDuplicate");
  v4 = a1[2];
  if (*v4 >= 4u && (v5 = *(v4 + 168)) != 0)
  {
    v6 = v5(a1);
  }

  else
  {
    v6 = CFRetain(a1);
  }

  v7 = v6;
  os_activity_scope_leave(&v9);

  objc_autoreleasePoolPop(v2);
  return v7;
}

BOOL SecKeySetParameter(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = _os_activity_create(&dword_1887D2000, "SecKeySetParameter", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v9, &state);
  _SecKeyCheck(a1, "SecKeySetParameter");
  v10 = *(a1 + 16);
  if (*v10 >= 4u && (v11 = *(v10 + 176)) != 0)
  {
    v14 = 0;
    v12 = v11(a1, a2, a3, &v14) != 0;
    _SecKeyErrorPropagate(v12, "SecKeySetParameter", v14, a4);
  }

  else
  {
    if (a4)
    {
      *a4 = 0;
    }

    v12 = SecError(-4, a4, @"setParameter not implemented for %@", a1);
  }

  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v8);
  return v12;
}

CFDataRef SecKeyCopyKeyExchangeResult(SecKeyRef privateKey, SecKeyAlgorithm algorithm, SecKeyRef publicKey, CFDictionaryRef parameters, CFErrorRef *error)
{
  v10 = objc_autoreleasePoolPush();
  v11 = _os_activity_create(&dword_1887D2000, "SecKeyCopyKeyExchangeResult", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v11, &state);
  _SecKeyCheck(privateKey, "SecKeyCopyKeyExchangeResult");
  if (!publicKey)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"SecKeyCopyKeyExchangeResult() called with NULL publicKey"];
  }

  v19 = 0;
  v16[0] = privateKey;
  v16[1] = 4;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, algorithm);
  cf = Mutable;
  v18 = 0;
  v13 = SecKeyCopyExternalRepresentation(publicKey, error);
  if (!v13)
  {
    v14 = 0;
    if (!Mutable)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v14 = SecKeyRunAlgorithmAndCopyResult(v16, v13, parameters, &v19);
  _SecKeyErrorPropagate(v14 != 0, "SecKeyCopyKeyExchangeResult", v19, error);
  CFRelease(v13);
  Mutable = cf;
  if (cf)
  {
LABEL_5:
    cf = 0;
    CFRelease(Mutable);
  }

LABEL_6:
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v10);
  return v14;
}

uint64_t SecKeyCreateEncapsulatedKey(uint64_t a1, const void *a2, uint64_t *a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = _os_activity_create(&dword_1887D2000, "SecKeyCreateEncapsulatedKey", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v9, &state);
  _SecKeyCheck(a1, "SecKeyCreateEncapsulatedKey");
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"SecKeyCreateEncapsulatedKey() requires sharedKey output parameter"];
  }

  v18 = 0;
  v15[0] = a1;
  v15[1] = 5;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, a2);
  cf = Mutable;
  v17 = 0;
  v11 = SecKeyRunAlgorithmAndCopyResult(v15, 0, 0, &v18);
  v12 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v12);
  }

  _SecKeyErrorPropagate(v11 != 0, "SecKeyCreateEncapsulatedKey", v18, a4);
  if (v11)
  {
    *a3 = [(__CFData *)v11 objectAtIndexedSubscript:1];
    v13 = [(__CFData *)v11 objectAtIndexedSubscript:0];
  }

  else
  {
    v13 = 0;
  }

  os_activity_scope_leave(&state);
  objc_autoreleasePoolPop(v8);
  return v13;
}

__CFData *SecKeyCreateDecapsulatedKey(uint64_t a1, const void *a2, const __CFData *a3, void *a4)
{
  v8 = objc_autoreleasePoolPush();
  v9 = _os_activity_create(&dword_1887D2000, "SecKeyCreateDecapsulatedKey", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v9, &state);
  _SecKeyCheck(a1, "SecKeyCreateDecapsulatedKey");
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"SecKeyCreateDecapsulatedKey() requires encapsulatedKey input parameter"];
  }

  v17 = 0;
  v14[0] = a1;
  v14[1] = 6;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, a2);
  cf = Mutable;
  v16 = 0;
  v11 = SecKeyRunAlgorithmAndCopyResult(v14, a3, 0, &v17);
  v12 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v12);
  }

  _SecKeyErrorPropagate(v11 != 0, "SecKeyCreateDecapsulatedKey", v17, a4);
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v8);
  return v11;
}

__CFData *SecKeyCreateMLDSASignature(uint64_t a1, const void *a2, const __CFData *a3, const __CFData *a4, void *a5)
{
  v10 = objc_autoreleasePoolPush();
  v11 = _os_activity_create(&dword_1887D2000, "SecKeyCreateMLDSASignature", MEMORY[0x1E69E9C00], OS_ACTIVITY_FLAG_DEFAULT);
  state.opaque[0] = 0xAAAAAAAAAAAAAAAALL;
  state.opaque[1] = 0xAAAAAAAAAAAAAAAALL;
  os_activity_scope_enter(v11, &state);
  _SecKeyCheck(a1, "SecKeyCreateMLDSASignature");
  if (!a3)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"SecKeyCreateMLDSASignature() called with NULL dataToSign"];
  }

  if (SecKeyGetAlgorithmId(a1) != 10)
  {
    [MEMORY[0x1E695DF30] raise:*MEMORY[0x1E695D940] format:@"SecKeyCreateMLDSASignature() requires an ML-DSA key"];
  }

  v19 = 0;
  v16[0] = a1;
  v16[1] = 0;
  Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
  CFArrayAppendValue(Mutable, a2);
  cf = Mutable;
  v18 = 0;
  v13 = SecKeyRunAlgorithmAndCopyResult(v16, a3, a4, &v19);
  v14 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v14);
  }

  _SecKeyErrorPropagate(v13 != 0, "SecKeyCreateMLDSASignature", v19, a5);
  os_activity_scope_leave(&state);

  objc_autoreleasePoolPop(v10);
  return v13;
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_KeyExchange_ECDHCofactorX963SHA512(uint64_t a1, const __CFData *a2, const __CFDictionary *a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:keyexchange:ECDHC");
  v8 = ccsha512_di();

  return SecKeyECDHCopyX963Result(a1, v8, a2, a3, a4);
}

__CFData *SecKeyECDHCopyX963Result(uint64_t *a1, uint64_t a2, const __CFData *a3, const __CFDictionary *a4, __CFString **a5)
{
  v8 = SecKeyRunAlgorithmAndCopyResult(a1, a3, 0, a5);
  if (!v8)
  {
    return 0;
  }

  v9 = v8;
  if (!a1[3])
  {
    valuePtr = 0;
    Value = CFDictionaryGetValue(a4, @"requestedSize");
    if (Value && (v12 = Value, v13 = CFGetTypeID(Value), v13 == CFNumberGetTypeID()) && CFNumberGetValue(v12, kCFNumberCFIndexType, &valuePtr))
    {
      v14 = CFDictionaryGetValue(a4, @"sharedInfo");
      if (!v14)
      {
LABEL_10:
        if (SecCFAllocatorZeroize_sOnce != -1)
        {
          dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
        }

        v17 = valuePtr;
        Mutable = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
        CFDataSetLength(Mutable, v17);
        CFDataGetLength(v9);
        CFDataGetBytePtr(v9);
        CFDataGetMutableBytePtr(Mutable);
        v18 = ccansikdf_x963();
        if (!v18)
        {
          goto LABEL_13;
        }

        v20 = v18;
        if (Mutable)
        {
          CFRelease(Mutable);
        }

        SecError(-50, a5, @"ECDHKeyExchange wrong input (%d)", v20);
        goto LABEL_21;
      }

      v15 = v14;
      v16 = CFGetTypeID(v14);
      if (v16 == CFDataGetTypeID())
      {
        CFDataGetBytePtr(v15);
        CFDataGetLength(v15);
        goto LABEL_10;
      }

      SecError(-50, a5, @"ECDHKeyExchange wrong sharedInfo type (must be CFData/NSData)");
    }

    else
    {
      SecError(-50, a5, @"kSecKeyKeyExchangeParameterRequestedSize is missing");
    }

LABEL_21:
    Mutable = 0;
    goto LABEL_13;
  }

  CFRetain(v8);
  Mutable = v9;
LABEL_13:
  CFRelease(v9);
  return Mutable;
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_KeyExchange_ECDHCofactorX963SHA384(uint64_t a1, const __CFData *a2, const __CFDictionary *a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:keyexchange:ECDHC");
  v8 = ccsha384_di();

  return SecKeyECDHCopyX963Result(a1, v8, a2, a3, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_KeyExchange_ECDHCofactorX963SHA256(uint64_t a1, const __CFData *a2, const __CFDictionary *a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:keyexchange:ECDHC");
  v8 = ccsha256_di();

  return SecKeyECDHCopyX963Result(a1, v8, a2, a3, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_KeyExchange_ECDHCofactorX963SHA224(uint64_t a1, const __CFData *a2, const __CFDictionary *a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:keyexchange:ECDHC");
  v8 = ccsha224_di();

  return SecKeyECDHCopyX963Result(a1, v8, a2, a3, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_KeyExchange_ECDHCofactorX963SHA1(uint64_t a1, const __CFData *a2, const __CFDictionary *a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:keyexchange:ECDHC");
  v8 = ccsha1_di();

  return SecKeyECDHCopyX963Result(a1, v8, a2, a3, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_KeyExchange_ECDHStandardX963SHA512(uint64_t a1, const __CFData *a2, const __CFDictionary *a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:keyexchange:ECDH");
  v8 = ccsha512_di();

  return SecKeyECDHCopyX963Result(a1, v8, a2, a3, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_KeyExchange_ECDHStandardX963SHA384(uint64_t a1, const __CFData *a2, const __CFDictionary *a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:keyexchange:ECDH");
  v8 = ccsha384_di();

  return SecKeyECDHCopyX963Result(a1, v8, a2, a3, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_KeyExchange_ECDHStandardX963SHA256(uint64_t a1, const __CFData *a2, const __CFDictionary *a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:keyexchange:ECDH");
  v8 = ccsha256_di();

  return SecKeyECDHCopyX963Result(a1, v8, a2, a3, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_KeyExchange_ECDHStandardX963SHA224(uint64_t a1, const __CFData *a2, const __CFDictionary *a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:keyexchange:ECDH");
  v8 = ccsha224_di();

  return SecKeyECDHCopyX963Result(a1, v8, a2, a3, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_KeyExchange_ECDHStandardX963SHA1(uint64_t a1, const __CFData *a2, const __CFDictionary *a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:keyexchange:ECDH");
  v8 = ccsha1_di();

  return SecKeyECDHCopyX963Result(a1, v8, a2, a3, a4);
}

CFTypeRef SecKeyECIESCopyDecryptedData(void *a1, uint64_t a2, uint64_t (*a3)(void *, uint64_t, void, CFDataRef, CFDataRef, uint64_t, uint64_t, __CFString **), uint64_t (*a4)(const void *, CFDataRef, uint64_t, __CFString **), uint64_t a5, const __CFData *a6, uint64_t a7, __CFString **a8)
{
  v14 = SecKeyCopyAttributes(*a1);
  if (!v14)
  {
    SecError(-50, a8, @"Unable to export key parameters");
    return 0;
  }

  v15 = v14;
  Value = CFDictionaryGetValue(v14, @"type");
  if (!CFEqual(Value, @"73") && (v17 = CFDictionaryGetValue(v15, @"type"), !CFEqual(v17, @"106")) && (v18 = CFDictionaryGetValue(v15, @"type"), !CFEqual(v18, @"108")) || (v19 = CFDictionaryGetValue(v15, @"kcls"), !CFEqual(v19, @"1")))
  {
    v34 = *MEMORY[0x1E695E738];
LABEL_37:
    v38 = v15;
    goto LABEL_31;
  }

  theData = a6;
  v41 = a4;
  if (a1[3])
  {
    v20 = 0;
    v21 = 0;
    cf = 0;
    v22 = 0;
    v23 = 0;
    goto LABEL_17;
  }

  v24 = CFDictionaryGetValue(v15, @"type");
  v25 = CFEqual(v24, @"73");
  v26 = CFDictionaryGetValue(v15, @"bsiz");
  CFIndexFromRef = SecKeyGetCFIndexFromRef(v26);
  v28 = CFIndexFromRef + 7;
  if (CFIndexFromRef < -7)
  {
    v28 = CFIndexFromRef + 14;
  }

  v29 = v28 >> 3;
  if (v25)
  {
    v20 = 2 * v29 + 1;
  }

  else
  {
    v20 = v29;
  }

  if (CFDataGetLength(a6) < v20)
  {
    SecError(-50, a8, @"%@: too small input packet for ECIES decrypt", *a1, a6);
    v34 = 0;
    goto LABEL_37;
  }

  BytePtr = CFDataGetBytePtr(a6);
  v23 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], BytePtr, v20, *MEMORY[0x1E695E498]);
  v31 = SecKeyCopyPublicKey(*a1);
  if (!v31)
  {
    SecError(-50, a8, @"%@: Unable to get public key", *a1);
    v35 = 0;
    cf = 0;
    v22 = 0;
LABEL_40:
    v33 = 0;
    goto LABEL_41;
  }

  cf = v31;
  v22 = SecKeyCopyExternalRepresentation(v31, a8);
  if (!v22)
  {
    v35 = 0;
    goto LABEL_40;
  }

  v21 = &BytePtr[v20];
LABEL_17:
  v32 = a3(a1, a2, 0, v23, v22, a5, a7, a8);
  v33 = v32;
  if (!v32)
  {
    v35 = 0;
LABEL_41:
    v34 = 0;
    goto LABEL_21;
  }

  if (a1[3])
  {
    v34 = CFRetain(v32);
    v35 = 0;
  }

  else
  {
    v36 = *MEMORY[0x1E695E480];
    Length = CFDataGetLength(theData);
    v35 = CFDataCreateWithBytesNoCopy(v36, v21, Length - v20, *MEMORY[0x1E695E498]);
    v34 = v41(v33, v35, a7, a8);
  }

LABEL_21:
  CFRelease(v15);
  if (v23)
  {
    CFRelease(v23);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v22)
  {
    CFRelease(v22);
  }

  if (cf)
  {
    CFRelease(cf);
  }

  if (v35)
  {
    v38 = v35;
LABEL_31:
    CFRelease(v38);
  }

  return v34;
}

uint64_t SecKeyGetCFIndexFromRef(const __CFString *a1)
{
  valuePtr = 0;
  v2 = CFGetTypeID(a1);
  if (v2 == CFNumberGetTypeID())
  {
    if (CFNumberGetValue(a1, kCFNumberCFIndexType, &valuePtr))
    {
      return valuePtr;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v4 = CFGetTypeID(a1);
    if (v4 == CFStringGetTypeID())
    {
      return CFStringGetIntValue(a1);
    }

    else
    {
      return 0;
    }
  }
}

__CFData *SecKeyECIESDecryptAESCBCCopyResult(const __CFData *a1, CFDataRef theData)
{
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  v4 = SecCFAllocatorZeroize_sAllocator;
  Length = CFDataGetLength(theData);
  Mutable = CFDataCreateMutable(v4, 0);
  CFDataSetLength(Mutable, Length);
  ccaes_cbc_decrypt_mode();
  CFDataGetLength(a1);
  CFDataGetBytePtr(a1);
  CFDataGetLength(a1);
  CFDataGetBytePtr(theData);
  CFDataGetMutableBytePtr(Mutable);
  cccbc_one_shot();
  return Mutable;
}

__CFData *SecKeyECIESKeyExchangeSHA2562PubKeysCopyResult(uint64_t a1, const void *a2, uint64_t a3, const __CFData *a4, const __CFData *a5, uint64_t a6, uint64_t a7, __CFString **a8)
{
  v24[1] = *MEMORY[0x1E69E9840];
  CFArrayAppendValue(*(a1 + 16), a2);
  *(a1 + 8) = 4;
  v12 = SecKeyRunAlgorithmAndCopyResult(a1, a4, 0, a8);
  if (v12 && !*(a1 + 24))
  {
    v13 = ccsha256_di();
    v14 = *(v13 + 8) + *(v13 + 16) + 19;
    MEMORY[0x1EEE9AC00](v13);
    v17 = v24 - v16;
    if (v18 >= 8)
    {
      memset(v24 - v16, 170, v15);
    }

    ccdigest_init();
    CFDataGetLength(v12);
    CFDataGetBytePtr(v12);
    ccdigest_update();
    CFDataGetLength(a4);
    CFDataGetBytePtr(a4);
    ccdigest_update();
    CFDataGetLength(a5);
    CFDataGetBytePtr(a5);
    ccdigest_update();
    v19 = *v13;
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    CFDataSetLength(Mutable, v19);
    CFRelease(v12);
    MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
    (*(v13 + 56))(v13, v17, MutableBytePtr);
    v12 = Mutable;
  }

  v22 = *MEMORY[0x1E69E9840];
  return v12;
}

CFTypeRef SecKeyECIESDecryptAESGCMCopyResult(const __CFData *a1, CFDataRef theData, const __CFDictionary *a3, __CFString **a4)
{
  if (CFDataGetLength(theData) <= 15)
  {
    SecError(-50, a4, @"ECIES: Input data too short");
    return 0;
  }

  v20 = a4;
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  v8 = SecCFAllocatorZeroize_sAllocator;
  v9 = CFDataGetLength(theData) - 16;
  Mutable = CFDataCreateMutable(v8, 0);
  CFDataSetLength(Mutable, v9);
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  v11 = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
  CFDataSetLength(v11, 16);
  v12 = CFDataGetLength(theData) - 16;
  MutableBytePtr = CFDataGetMutableBytePtr(v11);
  v21.location = v12;
  v21.length = 16;
  CFDataGetBytes(theData, v21, MutableBytePtr);
  CFDataGetLength(a1);
  CFDataGetBytePtr(a1);
  if (a3)
  {
    Value = CFDictionaryGetValue(a3, @"aad");
  }

  else
  {
    Value = 0;
  }

  ccaes_gcm_decrypt_mode();
  CFDataGetBytePtr(a1);
  if (Value)
  {
    CFDataGetLength(Value);
    CFDataGetBytePtr(Value);
  }

  CFDataGetLength(Mutable);
  CFDataGetBytePtr(theData);
  v15 = CFDataGetMutableBytePtr(Mutable);
  v19 = CFDataGetMutableBytePtr(v11);
  v16 = ccgcm_one_shot();
  if (!v16)
  {
    v17 = CFRetain(Mutable);
    if (!Mutable)
    {
      goto LABEL_14;
    }

    goto LABEL_13;
  }

  SecError(-50, v20, @"ECIES: Failed to aes-gcm decrypt data (err %d)", v16, v15, 16, v19);
  v17 = 0;
  if (Mutable)
  {
LABEL_13:
    CFRelease(Mutable);
  }

LABEL_14:
  if (v11)
  {
    CFRelease(v11);
  }

  return v17;
}

id SecKeyECIESKeyExchangeKDFX963CopyResult(uint64_t a1, const void *a2, int a3, void *a4, const __CFData *a5, int a6, void *a7, __CFString **a8)
{
  v35[2] = *MEMORY[0x1E69E9840];
  v15 = a7;
  CFArrayAppendValue(*(a1 + 16), a2);
  *(a1 + 8) = 4;
  if (*(a1 + 24))
  {
    v16 = 0;
    v17 = 0;
  }

  else
  {
    *v32 = a8;
    v33 = v15;
    v18 = [v15 objectForKeyedSubscript:@"symKeySize"];
    if (v18)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        SecError(-50, a8, @"Bad requested kSecKeyEncryptionParameterSymmetricKeySizeInBits: %@", v18);

        v29 = 0;
        v15 = v33;
        goto LABEL_22;
      }

      v19 = [v18 integerValue] / 8;
    }

    else
    {
      Length = CFDataGetLength(a5);
      v19 = 16;
      if (Length > 66)
      {
        v19 = 32;
      }
    }

    if (a6)
    {
      v21 = v19 + 16;
    }

    else
    {
      v21 = v19;
    }

    v16 = [a4 mutableCopy];
    v22 = [v33 objectForKeyedSubscript:@"sharedInfo"];
    if (v22)
    {
      [v16 appendData:v22];
    }

    v34[0] = @"sharedInfo";
    v34[1] = @"requestedSize";
    v35[0] = v16;
    v23 = [MEMORY[0x1E696AD98] numberWithInteger:v21];
    v35[1] = v23;
    v17 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v35 forKeys:v34 count:2];

    a8 = *v32;
    v15 = v33;
  }

  if (a3)
  {
    v24 = a5;
  }

  else
  {
    v24 = a4;
  }

  v25 = SecKeyRunAlgorithmAndCopyResult(a1, v24, v17, a8);
  v26 = v25;
  if (!*(a1 + 24) && (a6 & 1) == 0 && v25)
  {
    v27 = [(__CFData *)v25 mutableCopy];
    [v27 appendBytes:&kSecKeyIESIV length:16];
    v28 = [MEMORY[0x1E695DEF0] dataWithData:v27];

    v26 = v28;
  }

  v29 = v26;

LABEL_22:
  v30 = *MEMORY[0x1E69E9840];
  return v29;
}

void *SecKeyRSAAESGCMCopyDecryptedData(uint64_t *a1, const void *a2, const __CFData *a3, __CFString **a4)
{
  v8 = SecKeyCopyAttributes(*a1);
  if (!v8)
  {
    SecError(-50, a4, @"Unable to export key parameters");
    return 0;
  }

  v9 = v8;
  Value = CFDictionaryGetValue(v8, @"type");
  if (!CFEqual(Value, @"42") || (v11 = CFDictionaryGetValue(v9, @"kcls"), !CFEqual(v11, @"1")))
  {
    v31 = *MEMORY[0x1E695E738];
LABEL_34:
    v32 = v9;
    goto LABEL_28;
  }

  CFArrayAppendValue(a1[2], a2);
  if (a1[3])
  {
    v31 = SecKeyRunAlgorithmAndCopyResult(a1, 0, 0, a4);
    goto LABEL_34;
  }

  v12 = SecKeyCopyPublicKey(*a1);
  if (!v12)
  {
    SecError(-50, a4, @"%@: unable to get public key", *a1);
    v31 = 0;
    goto LABEL_34;
  }

  v13 = v12;
  theData = SecKeyCopyExternalRepresentation(v12, a4);
  if (!theData)
  {
    CFRelease(v9);
    CFRelease(v13);
    return 0;
  }

  v14 = *a1;
  _SecKeyCheck(*a1, "SecKeyGetBlockSize");
  v15 = *(*(v14 + 2) + 80);
  if (v15)
  {
    v16 = v15(v14);
  }

  else
  {
    v16 = 0;
  }

  if (CFDataGetLength(a3) < v16 + 16)
  {
    SecError(-50, a4, @"RSA-WRAP too short input data");
LABEL_38:
    Mutable = 0;
    v31 = 0;
LABEL_25:
    CFRelease(v9);
    goto LABEL_26;
  }

  v17 = *MEMORY[0x1E695E480];
  BytePtr = CFDataGetBytePtr(a3);
  v19 = CFDataCreateWithBytesNoCopy(v17, BytePtr, v16, *MEMORY[0x1E695E498]);
  v20 = SecKeyRunAlgorithmAndCopyResult(a1, v19, 0, a4);
  if (v19)
  {
    CFRelease(v19);
  }

  if (!v20)
  {
    goto LABEL_38;
  }

  v21 = CFDictionaryGetValue(v9, @"bsiz");
  if (SecKeyGetCFIndexFromRef(v21) <= 4095)
  {
    v22 = 16;
  }

  else
  {
    v22 = 32;
  }

  if (CFDataGetLength(v20) == v22)
  {
    if (SecCFAllocatorZeroize_sOnce != -1)
    {
      dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
    }

    v23 = SecCFAllocatorZeroize_sAllocator;
    v24 = CFDataGetLength(a3) - v16 - 16;
    Mutable = CFDataCreateMutable(v23, 0);
    CFDataSetLength(Mutable, v24);
    if (SecCFAllocatorZeroize_sOnce != -1)
    {
      dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
    }

    v26 = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
    CFDataSetLength(v26, 16);
    v27 = CFDataGetLength(a3) - 16;
    MutableBytePtr = CFDataGetMutableBytePtr(v26);
    v36.location = v27;
    v36.length = 16;
    CFDataGetBytes(a3, v36, MutableBytePtr);
    CFDataGetBytePtr(a3);
    ccaes_gcm_decrypt_mode();
    CFDataGetLength(v20);
    CFDataGetBytePtr(v20);
    CFDataGetLength(theData);
    CFDataGetBytePtr(theData);
    CFDataGetLength(Mutable);
    v29 = CFDataGetMutableBytePtr(Mutable);
    v34 = CFDataGetMutableBytePtr(v26);
    v30 = ccgcm_one_shot();
    if (v30)
    {
      SecError(-50, a4, @"RSA-WRAP: Failed to aes-gcm decrypt data (err %d)", v30, v29, 16, v34);
      v31 = 0;
    }

    else
    {
      v31 = CFRetain(Mutable);
    }
  }

  else
  {
    SecError(-50, a4, @"RSA-WRAP bad ciphertext, unexpected session key size");
    v26 = 0;
    Mutable = 0;
    v31 = 0;
  }

  CFRelease(v9);
  CFRelease(v20);
  v9 = v26;
  if (v26)
  {
    goto LABEL_25;
  }

LABEL_26:
  CFRelease(theData);
  CFRelease(v13);
  if (Mutable)
  {
    v32 = Mutable;
LABEL_28:
    CFRelease(v32);
  }

  return v31;
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Decrypt_RSAEncryptionOAEPSHA512(uint64_t a1, const __CFData *a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha512_di();

  return SecKeyRSACopyDecryptedWithPadding(a1, v7, a2, a4);
}

__CFData *SecKeyRSACopyDecryptedWithPadding(uint64_t a1, void *a2, const __CFData *a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:encrypt:RSA:raw-cc");
  if (a2)
  {
    v8 = 2 * *a2 + 2;
  }

  else
  {
    v8 = 11;
  }

  v9 = *a1;
  _SecKeyCheck(*a1, "SecKeyGetBlockSize");
  v10 = *(*(v9 + 16) + 80);
  if (v10)
  {
    v11 = v10(v9);
  }

  else
  {
    v11 = 0;
  }

  if (v11 < v8)
  {
    return *MEMORY[0x1E695E738];
  }

  if (*(a1 + 24) != 1)
  {
    v18 = 0;
    v19 = &v18;
    v20 = 0x2020000000;
    v21 = 0;
    v14 = *a1;
    _SecKeyCheck(*a1, "SecKeyGetBlockSize");
    v15 = *(*(v14 + 16) + 80);
    if (v15)
    {
      v16 = v15(v14);
    }

    else
    {
      v16 = 0;
    }

    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 3221225472;
    v17[2] = __SecKeyRSACopyDecryptedWithPadding_block_invoke;
    v17[3] = &unk_1E70E0818;
    v17[4] = &v18;
    v17[5] = a1;
    v17[6] = a4;
    v17[7] = a2;
    PerformWithBigEndianToCCUnit(a3, v16, v17);
    v12 = v19[3];
    _Block_object_dispose(&v18, 8);
    return v12;
  }

  return SecKeyRunAlgorithmAndCopyResult(a1, 0, 0, a4);
}

void sub_1888E164C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SecKeyRSACopyDecryptedWithPadding_block_invoke(uint64_t a1, const __CFData *a2)
{
  v3 = SecKeyRunAlgorithmAndCopyResult(*(a1 + 40), a2, 0, *(a1 + 48));
  if (v3)
  {
    v4 = v3;
    v5 = **(a1 + 40);
    _SecKeyCheck(v5, "SecKeyGetBlockSize");
    v6 = *(*(v5 + 16) + 80);
    if (v6)
    {
      v7 = v6(v5);
    }

    else
    {
      v7 = 0;
    }

    length = v7;
    Mutable = CFDataCreateMutable(0, 0);
    CFDataSetLength(Mutable, v7);
    *(*(*(a1 + 32) + 8) + 24) = Mutable;
    if (*(a1 + 56))
    {
      CFDataGetMutableBytePtr(*(*(*(a1 + 32) + 8) + 24));
      CFDataGetBytePtr(v4);
      v9 = ccrsa_oaep_decode();
    }

    else
    {
      v10 = **(a1 + 40);
      if (*(v10 + 16) == &kSecRSAPrivateKeyDescriptor)
      {
        v11 = *(v10 + 24);
        CFDataGetMutableBytePtr(*(*(*(a1 + 32) + 8) + 24));
        CFDataGetBytePtr(v4);
        v9 = ccrsa_eme_pkcs1v15_decode_safe();
      }

      else
      {
        CFDataGetMutableBytePtr(*(*(*(a1 + 32) + 8) + 24));
        CFDataGetBytePtr(v4);
        v9 = ccrsa_eme_pkcs1v15_decode();
      }
    }

    v12 = v9;
    v13 = *(*(a1 + 32) + 8);
    v14 = *(v13 + 24);
    if (v12)
    {
      if (v14)
      {
        *(v13 + 24) = 0;
        CFRelease(v14);
      }

      SecError(-50, *(a1 + 48), @"RSAdecrypt wrong input (err %d)", v12, length);
    }

    else
    {
      CFDataSetLength(v14, length);
    }

    CFRelease(v4);
  }
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Decrypt_RSAEncryptionOAEPSHA384(uint64_t a1, const __CFData *a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha384_di();

  return SecKeyRSACopyDecryptedWithPadding(a1, v7, a2, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Decrypt_RSAEncryptionOAEPSHA256(uint64_t a1, const __CFData *a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha256_di();

  return SecKeyRSACopyDecryptedWithPadding(a1, v7, a2, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Decrypt_RSAEncryptionOAEPSHA224(uint64_t a1, const __CFData *a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha224_di();

  return SecKeyRSACopyDecryptedWithPadding(a1, v7, a2, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Decrypt_RSAEncryptionOAEPSHA1(uint64_t a1, const __CFData *a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha1_di();

  return SecKeyRSACopyDecryptedWithPadding(a1, v7, a2, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_EncryptDecrypt_RSAEncryptionRawCCUnit(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:encrypt:RSA:raw");

  return SecKeyAlgorithmAdaptorCopyCCUnitToBigEndian(a1, a2, a3, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyCCUnitToBigEndian(uint64_t *a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  if (a1[3] == 1)
  {

    return SecKeyRunAlgorithmAndCopyResult(a1, 0, 0, a4);
  }

  else
  {
    v16 = 0;
    v17 = &v16;
    v18 = 0x2020000000;
    v19 = 0;
    v9 = *a1;
    _SecKeyCheck(*a1, "SecKeyGetBlockSize");
    v10 = *(*(v9 + 16) + 80);
    if (v10)
    {
      v11 = v10(v9);
    }

    else
    {
      v11 = 0;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 3221225472;
    v15[2] = __SecKeyAlgorithmAdaptorCopyCCUnitToBigEndian_block_invoke;
    v15[3] = &unk_1E70E0818;
    v15[4] = &v16;
    v15[5] = a1;
    v15[6] = a3;
    v15[7] = a4;
    v12 = v15;
    v13 = v12;
    if (a2)
    {
      v20[0] = MEMORY[0x1E69E9820];
      v20[1] = 3221225472;
      v20[2] = __PerformWithCCUnitToBigEndian_block_invoke;
      v20[3] = &unk_1E70E0868;
      v22 = a2;
      v23 = v11;
      v21 = v12;
      PerformWithCFDataBuffer(v11, v20);
    }

    else
    {
      __SecKeyAlgorithmAdaptorCopyCCUnitToBigEndian_block_invoke(v12, 0);
    }

    v14 = v17[3];
    _Block_object_dispose(&v16, 8);
    return v14;
  }
}

void sub_1888E1BAC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{
  va_start(va, a10);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SecKeyAlgorithmAdaptorCopyCCUnitToBigEndian_block_invoke(uint64_t a1, const __CFData *a2)
{
  *(*(*(a1 + 32) + 8) + 24) = SecKeyRunAlgorithmAndCopyResult(*(a1 + 40), a2, *(a1 + 48), *(a1 + 56));
  v3 = *(*(a1 + 32) + 8);
  v4 = *(v3 + 24);
  if (v4)
  {
    v5 = **(a1 + 40);
    _SecKeyCheck(v5, "SecKeyGetBlockSize");
    v6 = *(*(v5 + 16) + 80);
    if (v6)
    {
      v7 = v6(v5);
    }

    else
    {
      v7 = 0;
    }

    Length = CFDataGetLength(v4);
    if (Length > v7)
    {
      v7 = Length;
    }

    if (SecCFAllocatorZeroize_sOnce != -1)
    {
      dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
    }

    v9 = v7 + 7;
    Mutable = CFDataCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
    CFDataSetLength(Mutable, v9 & 0xFFFFFFFFFFFFFFF8);
    CFDataGetMutableBytePtr(Mutable);
    CFDataGetBytePtr(v4);
    ccn_read_uint();
    v11 = *(v3 + 24);
    if (v11)
    {
      CFRelease(v11);
    }

    *(v3 + 24) = Mutable;
  }
}

uint64_t __PerformWithCCUnitToBigEndian_block_invoke(uint64_t a1)
{
  CFDataGetLength(*(a1 + 40));
  CFDataGetBytePtr(*(a1 + 40));
  v2 = *(a1 + 48);
  ccn_write_uint_padded();
  v3 = *(*(a1 + 32) + 16);

  return v3();
}

CFTypeRef SecKeyECIESCopyEncryptedData(uint64_t a1, const void *a2, int a3, const __CFData *a4, void *a5, __CFString **a6)
{
  v11 = *a1;
  v12 = SecKeyCopyAttributes(*a1);
  if (!v12)
  {
    SecError(-50, a6, @"Unable to export key parameters");
    v37 = 0;
    goto LABEL_34;
  }

  v13 = v12;
  theData = a4;
  Value = CFDictionaryGetValue(v12, @"type");
  v49 = v11;
  if ((CFEqual(Value, @"73") || (v15 = CFDictionaryGetValue(v13, @"type"), CFEqual(v15, @"106")) || (v16 = CFDictionaryGetValue(v13, @"type"), CFEqual(v16, @"108"))) && (v17 = CFDictionaryGetValue(v13, @"kcls"), CFEqual(v17, @"0")))
  {
    v50 = SecKeyCopyExternalRepresentation(*a1, a6);
    if (v50)
    {
      v18 = *MEMORY[0x1E695E480];
      v19 = CFDictionaryGetValue(v13, @"type");
      CFDictionaryGetValue(v13, @"bsiz");
      v27 = CFDictionaryCreateForCFTypes(v18, v20, v21, v22, v23, v24, v25, v26, @"type", v19);
      v28 = v13;
      v13 = v27;
      CFRelease(v28);
      RandomKey = SecKeyCreateRandomKey(v13, a6);
      v30 = RandomKey;
      if (RandomKey)
      {
        v31 = SecKeyCopyPublicKey(RandomKey);
        v32 = v31;
        v33 = v50;
        if (v31)
        {
          v34 = SecKeyCopyExternalRepresentation(v31, a6);
          if (v34)
          {
            *a1 = v30;
            v35 = SecKeyECIESKeyExchangeKDFX963CopyResult(a1, a2, 1, v34, v50, a3, a5, a6);
            v36 = v35;
            if (v35)
            {
              if (*(a1 + 24))
              {
                v37 = CFRetain(v35);
                MutableCopy = 0;
              }

              else
              {
                v45 = v13;
                v39 = a5;
                MutableCopy = CFDataCreateMutableCopy(v18, 0, v34);
                Length = CFDataGetLength(MutableCopy);
                v41 = CFDataGetLength(theData);
                CFDataSetLength(MutableCopy, Length + v41 + 16);
                v46 = &CFDataGetMutableBytePtr(MutableCopy)[Length];
                v42 = CFDataGetLength(theData);
                CFDataGetLength(v36);
                CFDataGetBytePtr(v36);
                if (a5)
                {
                  v39 = CFDictionaryGetValue(a5, @"aad");
                }

                ccaes_gcm_encrypt_mode();
                CFDataGetBytePtr(v36);
                if (v39)
                {
                  CFDataGetLength(v39);
                  CFDataGetBytePtr(v39);
                }

                CFDataGetLength(theData);
                CFDataGetBytePtr(theData);
                v43 = ccgcm_one_shot();
                if (v43)
                {
                  SecError(-50, a6, @"ECIES: Failed to aes-gcm encrypt data (err %d)", v43, v46, 16, &v46[v42], 0);
                  v37 = 0;
                }

                else
                {
                  v37 = CFRetain(MutableCopy);
                }

                v33 = v50;
                v13 = v45;
              }
            }

            else
            {
              MutableCopy = 0;
              v37 = 0;
            }
          }

          else
          {
            MutableCopy = 0;
            v37 = 0;
            v36 = 0;
          }
        }

        else
        {
          SecError(-50, a6, @"Unable to get public key from generated ECkey");
          MutableCopy = 0;
          v37 = 0;
          v36 = 0;
          v34 = 0;
        }
      }

      else
      {
        MutableCopy = 0;
        v37 = 0;
        v36 = 0;
        v34 = 0;
        v32 = 0;
        v33 = v50;
      }

      if (!v13)
      {
        goto LABEL_22;
      }
    }

    else
    {
      v30 = 0;
      v32 = 0;
      v33 = 0;
      v34 = 0;
      v36 = 0;
      v37 = 0;
      MutableCopy = 0;
    }
  }

  else
  {
    v30 = 0;
    v32 = 0;
    v33 = 0;
    v34 = 0;
    v36 = 0;
    MutableCopy = 0;
    v37 = *MEMORY[0x1E695E738];
  }

  CFRelease(v13);
LABEL_22:
  if (v30)
  {
    CFRelease(v30);
  }

  if (v32)
  {
    CFRelease(v32);
  }

  if (v33)
  {
    CFRelease(v33);
  }

  if (v34)
  {
    CFRelease(v34);
  }

  if (v36)
  {
    CFRelease(v36);
  }

  v11 = v49;
  if (MutableCopy)
  {
    CFRelease(MutableCopy);
  }

LABEL_34:
  *a1 = v11;
  return v37;
}

void *SecKeyRSAAESGCMCopyEncryptedData(uint64_t a1, const void *a2, const __CFData *a3, __CFString **a4)
{
  v8 = SecKeyCopyAttributes(*a1);
  if (!v8)
  {
    SecError(-50, a4, @"Unable to export key parameters");
    return 0;
  }

  v9 = v8;
  Value = CFDictionaryGetValue(v8, @"type");
  if (!CFEqual(Value, @"42") || (v11 = CFDictionaryGetValue(v9, @"kcls"), !CFEqual(v11, @"0")))
  {
    v27 = *MEMORY[0x1E695E738];
LABEL_26:
    v28 = v9;
    goto LABEL_20;
  }

  CFArrayAppendValue(*(a1 + 16), a2);
  if (*(a1 + 24))
  {
    v27 = SecKeyRunAlgorithmAndCopyResult(a1, 0, 0, a4);
    goto LABEL_26;
  }

  v12 = SecKeyCopyExternalRepresentation(*a1, a4);
  if (!v12)
  {
    v27 = 0;
    goto LABEL_26;
  }

  v13 = v12;
  v14 = CFDictionaryGetValue(v9, @"bsiz");
  if (SecKeyGetCFIndexFromRef(v14) <= 4095)
  {
    v15 = 16;
  }

  else
  {
    v15 = 32;
  }

  v16 = CFDataCreateWithRandomBytes(v15);
  if (v16)
  {
    v17 = SecKeyRunAlgorithmAndCopyResult(a1, v16, 0, a4);
    v18 = v17;
    if (v17)
    {
      v30 = v9;
      v19 = *MEMORY[0x1E695E480];
      Length = CFDataGetLength(v17);
      v21 = Length + CFDataGetLength(a3);
      Mutable = CFDataCreateMutable(v19, 0);
      CFDataSetLength(Mutable, v21 + 16);
      MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
      v31.length = CFDataGetLength(v18);
      v31.location = 0;
      CFDataGetBytes(v18, v31, MutableBytePtr);
      v24 = &MutableBytePtr[CFDataGetLength(v18)];
      v25 = &v24[CFDataGetLength(a3)];
      ccaes_gcm_encrypt_mode();
      CFDataGetLength(v16);
      CFDataGetBytePtr(v16);
      CFDataGetLength(v13);
      CFDataGetBytePtr(v13);
      CFDataGetLength(a3);
      CFDataGetBytePtr(a3);
      v26 = ccgcm_one_shot();
      if (v26)
      {
        SecError(-50, a4, @"RSAWRAP: Failed to aes-gcm encrypt data (err %d)", v26, v24, 16, v25);
        v27 = 0;
      }

      else
      {
        v27 = CFRetain(Mutable);
      }

      v9 = v30;
    }

    else
    {
      v27 = 0;
      Mutable = 0;
    }
  }

  else
  {
    SecError(-50, a4, @"Failed to generate session key");
    v27 = 0;
    Mutable = 0;
    v18 = 0;
  }

  CFRelease(v9);
  CFRelease(v13);
  if (v18)
  {
    CFRelease(v18);
  }

  if (v16)
  {
    CFRelease(v16);
  }

  if (Mutable)
  {
    v28 = Mutable;
LABEL_20:
    CFRelease(v28);
  }

  return v27;
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Encrypt_RSAEncryptionOAEPSHA512(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha512_di();

  return SecKeyRSACopyEncryptedWithPadding(a1, v7, a2, a4);
}

__CFData *SecKeyRSACopyEncryptedWithPadding(uint64_t a1, void *a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:encrypt:RSA:raw-cc");
  v8 = *a1;
  _SecKeyCheck(*a1, "SecKeyGetBlockSize");
  v9 = *(*(v8 + 16) + 80);
  if (v9)
  {
    v10 = v9(v8);
    if (a2)
    {
LABEL_3:
      v11 = 2 * *a2 + 2;
      goto LABEL_6;
    }
  }

  else
  {
    v10 = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v11 = 11;
LABEL_6:
  if (v10 < v11)
  {
    return *MEMORY[0x1E695E738];
  }

  if (*(a1 + 24) != 1)
  {
    v15 = 0;
    v16 = &v15;
    v17 = 0x2020000000;
    v18 = 0;
    v14[0] = MEMORY[0x1E69E9820];
    v14[1] = 3221225472;
    v14[2] = __SecKeyRSACopyEncryptedWithPadding_block_invoke;
    v14[3] = &unk_1E70E0890;
    v14[6] = v10;
    v14[7] = a3;
    v14[4] = &v15;
    v14[5] = a2;
    v14[8] = a4;
    v14[9] = a1;
    PerformWithCFDataBuffer((v10 + 7) & 0xFFFFFFFFFFFFFFF8, v14);
    v12 = v16[3];
    _Block_object_dispose(&v15, 8);
    return v12;
  }

  return SecKeyRunAlgorithmAndCopyResult(a1, 0, 0, a4);
}

void __SecKeyRSACopyEncryptedWithPadding_block_invoke(uint64_t a1, uint64_t a2, const __CFData *a3)
{
  v5 = *(a1 + 40);
  ccrng();
  v6 = *(a1 + 48);
  CFDataGetLength(*(a1 + 56));
  CFDataGetBytePtr(*(a1 + 56));
  if (v5)
  {
    v7 = ccrsa_oaep_encode();
    if (!v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    SecError(-50, *(a1 + 64), @"RSAencrypt wrong input size (err %d)", v7);
    return;
  }

  v7 = ccrsa_eme_pkcs1v15_encode();
  if (v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  v8 = *(a1 + 48);
  cc_clear();
  v9 = SecKeyRunAlgorithmAndCopyResult(*(a1 + 72), a3, 0, *(a1 + 64));
  *(*(*(a1 + 32) + 8) + 24) = v9;
  if (v9)
  {
    v10 = *(*(a1 + 32) + 8);
    v11 = *(v10 + 24);
    v12 = **(a1 + 72);
    _SecKeyCheck(v12, "SecKeyGetBlockSize");
    v13 = *(*(v12 + 16) + 80);
    if (v13)
    {
      v14 = v13(v12);
    }

    else
    {
      v14 = 0;
    }

    v15 = SecKeyRSACopyCCUnitToBigEndian(v11, v14);
    v16 = *(v10 + 24);
    if (v16)
    {
      CFRelease(v16);
    }

    *(v10 + 24) = v15;
  }
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Encrypt_RSAEncryptionOAEPSHA384(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha384_di();

  return SecKeyRSACopyEncryptedWithPadding(a1, v7, a2, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Encrypt_RSAEncryptionOAEPSHA256(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha256_di();

  return SecKeyRSACopyEncryptedWithPadding(a1, v7, a2, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Encrypt_RSAEncryptionOAEPSHA224(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha224_di();

  return SecKeyRSACopyEncryptedWithPadding(a1, v7, a2, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Encrypt_RSAEncryptionOAEPSHA1(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha1_di();

  return SecKeyRSACopyEncryptedWithPadding(a1, v7, a2, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_ECDSASignatureRFC4754(uint64_t a1, const __CFData *a2, const __CFData *a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:ECDSA:digest-RFC4754");

  return SecKeyRunAlgorithmAndCopyResult(a1, a2, a3, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Verify_ECDSASignatureRFC4754Converted(uint64_t a1, const void *a2, const __CFData *a3, const __CFData *a4, __CFString **a5)
{
  v25 = *MEMORY[0x1E69E9840];
  CFArrayAppendValue(*(a1 + 16), a2);
  if (*(a1 + 24) != 1)
  {
    v11 = *a1;
    v12 = _SecKeyCheck(*a1, "SecKeyGetBlockSize");
    v13 = *(*(v11 + 16) + 80);
    if (v13)
    {
      v14 = v13(v11);
      v15 = (8 * ((v14 + 7) >> 3) + 15) & 0xFFFFFFFFFFFFFFF0;
      v12 = MEMORY[0x1EEE9AC00](v14);
      if (v16 > 7)
      {
        v24 = a3;
        v17 = (v14 - 1) & 0xFFFFFFFFFFFFFFF8;
        v18 = memset(&v23 - v15, 170, v17 + 8);
        MEMORY[0x1EEE9AC00](v18);
        a3 = v24;
        memset(&v23 - v15, 170, v17 + 8);
LABEL_10:
        CFDataGetBytePtr(a4);
        if (CFDataGetLength(a4) != 2 * v14 || ccn_read_uint() || ccn_read_uint())
        {
          SecError(-67808, a5, @"Wrong ECDSA RFC4754 signature");
        }

        else
        {
          ccder_sizeof_integer();
          ccder_sizeof_integer();
          v21 = ccder_sizeof();
          Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
          CFDataSetLength(Mutable, v21);
          CFDataGetMutableBytePtr(Mutable);
          ccder_encode_integer();
          ccder_encode_integer();
          if (ccder_encode_constructed_tl())
          {
            if (Mutable)
            {
              v19 = SecKeyRunAlgorithmAndCopyResult(a1, a3, Mutable, a5);
              CFRelease(Mutable);
              goto LABEL_15;
            }
          }

          else
          {
            SecError(-26276, a5, @"Failed to encode X962 signature");
            if (Mutable)
            {
              CFRelease(Mutable);
            }
          }
        }

        v19 = 0;
LABEL_15:
        v20 = *MEMORY[0x1E69E9840];
        return v19;
      }
    }

    else
    {
      v14 = 0;
    }

    MEMORY[0x1EEE9AC00](v12);
    goto LABEL_10;
  }

  v9 = *MEMORY[0x1E69E9840];

  return SecKeyRunAlgorithmAndCopyResult(a1, 0, 0, a5);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_ECDSASignatureMessageRFC4754SHA512(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:ECDSA:digest-RFC4754:SHA512");
  v8 = ccsha512_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_ECDSASignatureMessageRFC4754SHA384(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:ECDSA:digest-RFC4754:SHA384");
  v8 = ccsha384_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_ECDSASignatureMessageRFC4754SHA256(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:ECDSA:digest-RFC4754:SHA256");
  v8 = ccsha256_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_ECDSASignatureMessageRFC4754SHA224(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:ECDSA:digest-RFC4754:SHA224");
  v8 = ccsha224_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_ECDSASignatureMessageRFC4754SHA1(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:ECDSA:digest-RFC4754:SHA1");
  v8 = ccsha1_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_ECDSASignatureDigestX962SHA512(uint64_t a1, const __CFData *a2, const __CFData *a3, __CFString **a4)
{
  v8 = ccsha512_di();

  return SecKeyCopyECDSASignatureForDigest(a1, a2, a3, @"algid:sign:ECDSA:digest-X962:SHA512", v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_ECDSASignatureDigestX962SHA224(uint64_t a1, const __CFData *a2, const __CFData *a3, __CFString **a4)
{
  v8 = ccsha224_di();

  return SecKeyCopyECDSASignatureForDigest(a1, a2, a3, @"algid:sign:ECDSA:digest-X962:SHA224", v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_ECDSASignatureDigestX962SHA1(uint64_t a1, const __CFData *a2, const __CFData *a3, __CFString **a4)
{
  v8 = ccsha1_di();

  return SecKeyCopyECDSASignatureForDigest(a1, a2, a3, @"algid:sign:ECDSA:digest-X962:SHA1", v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_ECDSASignatureMessageX962SHA512(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:ECDSA:digest-X962:SHA512");
  v8 = ccsha512_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_ECDSASignatureMessageX962SHA224(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:ECDSA:digest-X962:SHA224");
  v8 = ccsha224_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_ECDSASignatureMessageX962SHA1(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:ECDSA:digest-X962:SHA1");
  v8 = ccsha1_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_RSASignatureMessagePSSSHA512(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:RSA:digest-PSS:SHA512:SHA512:64");
  v8 = ccsha512_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_RSASignatureMessagePSSSHA384(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:RSA:digest-PSS:SHA384:SHA384:48");
  v8 = ccsha384_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_RSASignatureMessagePSSSHA256(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:RSA:digest-PSS:SHA256:SHA256:32");
  v8 = ccsha256_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_RSASignatureMessagePSSSHA224(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:RSA:digest-PSS:SHA224:SHA224:24");
  v8 = ccsha224_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_RSASignatureMessagePSSSHA1(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:RSA:digest-PSS:SHA1:SHA1:20");
  v8 = ccsha1_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_RSASignatureMessagePKCS1v15MD5(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:RSA:digest-PKCS1v15:MD5");
  v8 = ccmd5_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_RSASignatureMessagePKCS1v15SHA512(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:RSA:digest-PKCS1v15:SHA512");
  v8 = ccsha512_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_RSASignatureMessagePKCS1v15SHA224(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:RSA:digest-PKCS1v15:SHA224");
  v8 = ccsha224_di();

  return SecKeyCopyDigestForMessage(a1, a2, a3, v8, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPSSSHA512(uint64_t a1, uint64_t a2, const __CFData *a3, __CFString **a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPSSSHA512_block_invoke;
  v5[3] = &__block_descriptor_48_e19_C16__0____CFData__8l;
  v5[4] = a1;
  v5[5] = a2;
  return SecKeyRSAVerifyAdaptorCopyResult(a1, a3, a4, v5);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPSSSHA384(uint64_t a1, uint64_t a2, const __CFData *a3, __CFString **a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPSSSHA384_block_invoke;
  v5[3] = &__block_descriptor_48_e19_C16__0____CFData__8l;
  v5[4] = a1;
  v5[5] = a2;
  return SecKeyRSAVerifyAdaptorCopyResult(a1, a3, a4, v5);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPSSSHA256(uint64_t a1, uint64_t a2, const __CFData *a3, __CFString **a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPSSSHA256_block_invoke;
  v5[3] = &__block_descriptor_48_e19_C16__0____CFData__8l;
  v5[4] = a1;
  v5[5] = a2;
  return SecKeyRSAVerifyAdaptorCopyResult(a1, a3, a4, v5);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPSSSHA224(uint64_t a1, uint64_t a2, const __CFData *a3, __CFString **a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPSSSHA224_block_invoke;
  v5[3] = &__block_descriptor_48_e19_C16__0____CFData__8l;
  v5[4] = a1;
  v5[5] = a2;
  return SecKeyRSAVerifyAdaptorCopyResult(a1, a3, a4, v5);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPSSSHA1(uint64_t a1, uint64_t a2, const __CFData *a3, __CFString **a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPSSSHA1_block_invoke;
  v5[3] = &__block_descriptor_48_e19_C16__0____CFData__8l;
  v5[4] = a1;
  v5[5] = a2;
  return SecKeyRSAVerifyAdaptorCopyResult(a1, a3, a4, v5);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15MD5(uint64_t a1, uint64_t a2, const __CFData *a3, __CFString **a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15MD5_block_invoke;
  v5[3] = &__block_descriptor_40_e19_C16__0____CFData__8l;
  v5[4] = a2;
  return SecKeyRSAVerifyAdaptorCopyResult(a1, a3, a4, v5);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15Raw(uint64_t a1, uint64_t a2, const __CFData *a3, __CFString **a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15Raw_block_invoke;
  v5[3] = &__block_descriptor_40_e19_C16__0____CFData__8l;
  v5[4] = a2;
  return SecKeyRSAVerifyAdaptorCopyResult(a1, a3, a4, v5);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA512(uint64_t a1, uint64_t a2, const __CFData *a3, __CFString **a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA512_block_invoke;
  v5[3] = &__block_descriptor_40_e19_C16__0____CFData__8l;
  v5[4] = a2;
  return SecKeyRSAVerifyAdaptorCopyResult(a1, a3, a4, v5);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA224(uint64_t a1, uint64_t a2, const __CFData *a3, __CFString **a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureDigestPKCS1v15SHA224_block_invoke;
  v5[3] = &__block_descriptor_40_e19_C16__0____CFData__8l;
  v5[4] = a2;
  return SecKeyRSAVerifyAdaptorCopyResult(a1, a3, a4, v5);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureRaw(uint64_t a1, uint64_t a2, const __CFData *a3, __CFString **a4)
{
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __SecKeyAlgorithmAdaptorCopyResult_Verify_RSASignatureRaw_block_invoke;
  v5[3] = &__block_descriptor_40_e19_C16__0____CFData__8l;
  v5[4] = a2;
  return SecKeyRSAVerifyAdaptorCopyResult(a1, a3, a4, v5);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Sign_ECDSASignatureRFC4754Converted(uint64_t a1, const void *a2, const __CFData *a3, const __CFData *a4, __CFString **a5)
{
  v26 = *MEMORY[0x1E69E9840];
  CFArrayAppendValue(*(a1 + 16), a2);
  if (*(a1 + 24) != 1)
  {
    v11 = SecKeyRunAlgorithmAndCopyResult(a1, a3, a4, a5);
    v12 = v11;
    if (!v11 || CFEqual(v11, *MEMORY[0x1E695E738]))
    {
LABEL_16:
      v24 = *MEMORY[0x1E69E9840];
      return v12;
    }

    v13 = *a1;
    v14 = _SecKeyCheck(v13, "SecKeyGetBlockSize");
    v15 = *(*(v13 + 16) + 80);
    if (v15)
    {
      v16 = v15(v13);
      v17 = (8 * ((v16 + 7) >> 3) + 15) & 0xFFFFFFFFFFFFFFF0;
      v14 = MEMORY[0x1EEE9AC00](v16);
      if (v18 > 7)
      {
        v19 = (v16 - 1) & 0xFFFFFFFFFFFFFFF8;
        v20 = memset(&v25[-v17], 170, v19 + 8);
        MEMORY[0x1EEE9AC00](v20);
        memset(&v25[-v17], 170, v19 + 8);
LABEL_12:
        BytePtr = CFDataGetBytePtr(v12);
        v22 = &BytePtr[CFDataGetLength(v12)];
        if (ccder_decode_seqii() == v22)
        {
          Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
          CFDataSetLength(Mutable, 2 * v16);
          CFDataGetMutableBytePtr(Mutable);
          ccn_write_uint_padded();
          ccn_write_uint_padded();
        }

        else
        {
          SecError(-50, a5, @"Wrong ECDSA X962 signature");
          Mutable = 0;
        }

        CFRelease(v12);
        v12 = Mutable;
        goto LABEL_16;
      }
    }

    else
    {
      v16 = 0;
    }

    MEMORY[0x1EEE9AC00](v14);
    goto LABEL_12;
  }

  v9 = *MEMORY[0x1E69E9840];

  return SecKeyRunAlgorithmAndCopyResult(a1, 0, 0, a5);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_RSASignatureRawCCUnit(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:RSA:raw");

  return SecKeyAlgorithmAdaptorCopyCCUnitToBigEndian(a1, a2, a3, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_SignVerify_RSASignatureRaw(uint64_t a1, const __CFData *a2, uint64_t a3, __CFString **a4)
{
  CFArrayAppendValue(*(a1 + 16), @"algid:sign:RSA:raw-cc");

  return SecKeyAlgorithmAdaptorCopyBigEndianToCCUnit(a1, a2, a3, a4);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Sign_RSASignatureDigestPSSSHA512(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha512_di();

  return SecKeyRSACopyEMSASignature(a1, a2, a4, 1, v7);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Sign_RSASignatureDigestPSSSHA384(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha384_di();

  return SecKeyRSACopyEMSASignature(a1, a2, a4, 1, v7);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Sign_RSASignatureDigestPSSSHA256(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha256_di();

  return SecKeyRSACopyEMSASignature(a1, a2, a4, 1, v7);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Sign_RSASignatureDigestPSSSHA224(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha224_di();

  return SecKeyRSACopyEMSASignature(a1, a2, a4, 1, v7);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Sign_RSASignatureDigestPSSSHA1(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha1_di();

  return SecKeyRSACopyEMSASignature(a1, a2, a4, 1, v7);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Sign_RSASignatureDigestPKCS1v15MD5(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v7 = ccmd5_di();

  return SecKeyRSACopyEMSASignature(a1, a2, a4, 0, v7);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Sign_RSASignatureDigestPKCS1v15SHA512(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha512_di();

  return SecKeyRSACopyEMSASignature(a1, a2, a4, 0, v7);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Sign_RSASignatureDigestPKCS1v15SHA384(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha384_di();

  return SecKeyRSACopyEMSASignature(a1, a2, a4, 0, v7);
}

__CFData *SecKeyAlgorithmAdaptorCopyResult_Sign_RSASignatureDigestPKCS1v15SHA224(uint64_t a1, uint64_t a2, uint64_t a3, __CFString **a4)
{
  v7 = ccsha224_di();

  return SecKeyRSACopyEMSASignature(a1, a2, a4, 0, v7);
}

uint64_t SecOTRFullDHKeyGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecOTRFullDHKeyGetTypeID_block_invoke;
  block[3] = &__block_descriptor_tmp_12386;
  block[4] = &SecOTRFullDHKeyGetTypeID_sSecOTRFullDHKeyGetTypeIDSingleton;
  if (SecOTRFullDHKeyGetTypeID_sSecOTRFullDHKeyGetTypeIDOnce != -1)
  {
    dispatch_once(&SecOTRFullDHKeyGetTypeID_sSecOTRFullDHKeyGetTypeIDOnce, block);
  }

  return SecOTRFullDHKeyGetTypeID_sSecOTRFullDHKeyGetTypeIDSingleton;
}

uint64_t __SecOTRFullDHKeyGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

uint64_t SecOTRFullDHKeyCopyDescription(uint64_t a1)
{
  SecGetDebugDescriptionFormatOptions();

  return SecOTRFullDHKeyCopyFormatDescription(a1);
}

uint64_t SecOTRFullDHKeyCopyFormatDescription(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SecOTRFullDHKeyCopyFormatDescription_block_invoke;
  v3[3] = &unk_1E70E0970;
  v3[4] = &v4;
  v3[5] = a1;
  withXandY((a1 + 16), v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void __SecOTRFullDHKeyCopyFormatDescription_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SecOTRFullDHKeyCopyFormatDescription_block_invoke_2;
  v4[3] = &unk_1E70E0948;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v4[5] = v3;
  v4[6] = a2;
  v4[7] = a3;
  BufferPerformWithHexString((v3 + 160), 20, v4);
}

void withXandY(uint64_t **a1, uint64_t a2)
{
  v4 = **a1;
  v5 = CCNCopyAsHex();
  v6 = **a1;
  v7 = CCNCopyAsHex();
  (*(a2 + 16))(a2, v5, v7);
  if (v5)
  {
    CFRelease(v5);
  }

  if (v7)
  {

    CFRelease(v7);
  }
}

uint64_t CCNCopyAsHex()
{
  v12 = *MEMORY[0x1E69E9840];
  v0 = ccn_write_uint_size();
  v1 = MEMORY[0x1EEE9AC00](v0);
  v3 = v7 - v2;
  if (v1)
  {
    memset(v7 - v2, 170, v0);
  }

  ccn_write_uint();
  v8 = 0;
  v9 = &v8;
  v10 = 0x2000000000;
  v11 = 0;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 0x40000000;
  v7[2] = __CCNCopyAsHex_block_invoke;
  v7[3] = &unk_1E70E0998;
  v7[4] = &v8;
  BufferPerformWithHexString(v3, v0, v7);
  v4 = v9[3];
  _Block_object_dispose(&v8, 8);
  v5 = *MEMORY[0x1E69E9840];
  return v4;
}

CFTypeRef __CCNCopyAsHex_block_invoke(CFTypeRef result, CFTypeRef cf)
{
  v3 = result;
  if (cf)
  {
    result = CFRetain(cf);
  }

  *(*(*(v3 + 32) + 8) + 24) = cf;
  return result;
}

void BufferPerformWithHexString(UInt8 *bytes, CFIndex length, uint64_t a3)
{
  v4 = *MEMORY[0x1E695E480];
  v5 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], bytes, length, *MEMORY[0x1E695E498]);
  if (v5)
  {
    v6 = v5;
    v7 = CFDataGetLength(v5);
    Mutable = CFStringCreateMutable(v4, 2 * v7);
    BytePtr = CFDataGetBytePtr(v6);
    v10 = CFDataGetLength(v6);
    if (v10 >= 1)
    {
      v11 = v10;
      do
      {
        v12 = *BytePtr++;
        CFStringAppendFormat(Mutable, 0, @"%02X", v12);
        --v11;
      }

      while (v11);
    }

    (*(a3 + 16))(a3, Mutable);
    CFRelease(Mutable);
  }

  else
  {
    v6 = @"(null)";
    (*(a3 + 16))(a3, @"(null)");
  }

  CFRelease(v6);
}

CFStringRef __SecOTRFullDHKeyCopyFormatDescription_block_invoke_2(void *a1, uint64_t a2)
{
  result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<SecOTRFullDHKeyRef@%p: x: %@ y: %@ [%@]>", a1[5], a1[6], a1[7], a2);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

double SecOTRFullDHKeyDestroy(_OWORD *a1)
{
  result = 0.0;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t SecOTRFullDHKCreate()
{
  SecOTRFullDHKeyGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  SecFDHKNewKey(Instance);
  return Instance;
}

uint64_t SecFDHKNewKey(uint64_t a1)
{
  ccrng();
  MEMORY[0x18CFD9EA0]();
  ccec_compact_generate_key();

  return GenerateHashForKey((a1 + 16));
}

uint64_t GenerateHashForKey(uint64_t *a1)
{
  v1 = *a1;
  v2 = cczp_bitlen();
  v3 = malloc_type_malloc(((v2 + 7) >> 2) | 1, 0x977C0B8FuLL);
  if (!v3)
  {
    return 4294899624;
  }

  v4 = v3;
  ccec_export_pub();
  ccsha1_di();
  ccdigest();
  free(v4);
  return 0;
}

uint64_t *SecOTRFullDHKCreateFromBytes(uint64_t a1, unsigned int **a2, unint64_t *a3)
{
  SecOTRFullDHKeyGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  Instance[2] = MEMORY[0x18CFD9EA0]();
  if (!a2)
  {
    goto LABEL_10;
  }

  if (!a3)
  {
    goto LABEL_10;
  }

  v6 = *a3 - 4;
  if (*a3 < 4)
  {
    goto LABEL_10;
  }

  v7 = bswap32(*(*a2)++);
  *a3 = v6;
  if (v6 < v7)
  {
    goto LABEL_10;
  }

  if (MEMORY[0x18CFD9F40]())
  {
    goto LABEL_10;
  }

  v8 = *a3 - v7;
  *a3 = v8;
  v9 = (*a2 + v7);
  *a2 = v9;
  if (v8 < 5)
  {
    goto LABEL_10;
  }

  v10 = *Instance[2];
  v11 = bswap32(*v9);
  *a2 = v9 + 1;
  v12 = v8 - 4;
  *a3 = v12;
  if (v12 < v11 || (ccn_read_uint(), *a2 = (*a2 + v11), *a3 -= v11, GenerateHashForKey(Instance + 2)))
  {
LABEL_10:
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

uint64_t SecFDHKAppendSerialization(uint64_t a1, __CFData *a2)
{
  AppendECPublicKeyAsDATA(a2, (a1 + 16));
  v4 = **(a1 + 16);
  v5 = ccn_write_uint_size();
  *bytes = bswap32(v5);
  CFDataAppendBytes(a2, bytes, 4);
  CFDataGetLength(a2);
  CFDataIncreaseLength(a2, v5);
  CFDataGetMutableBytePtr(a2);
  return ccn_write_uint();
}

uint64_t AppendECPublicKeyAsDATA(__CFData *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = cczp_bitlen();
  v5 = ((v4 + 7) >> 2) | 1;
  bytes[0] = (v4 + 7) >> 26;
  bytes[1] = (v4 + 7) >> 18;
  bytes[2] = (v4 + 7) >> 10;
  bytes[3] = ((v4 + 7) >> 2) | 1;
  CFDataAppendBytes(a1, bytes, 4);
  CFDataGetLength(a1);
  CFDataIncreaseLength(a1, v5);
  CFDataGetMutableBytePtr(a1);
  return ccec_export_pub();
}

uint64_t SecFDHKAppendPublicSerialization(uint64_t a1, __CFData *a2)
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  result = cczp_bitlen();
  if (result == 256)
  {

    return AppendECPublicKeyAsDATA(a2, v4);
  }

  return result;
}

uint64_t SecFDHKAppendCompactPublicSerialization(uint64_t a1, const __CFData *a2)
{
  v4 = (a1 + 16);
  v3 = *(a1 + 16);
  result = cczp_bitlen();
  if (result == 256)
  {
    v6 = *v4;
    v7 = (cczp_bitlen() + 7) >> 3;
    CFDataGetLength(a2);
    CFDataIncreaseLength(a2, v7);
    CFDataGetMutableBytePtr(a2);

    return ccec_compact_export();
  }

  return result;
}

uint64_t SecOTRPublicDHKeyGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecOTRPublicDHKeyGetTypeID_block_invoke;
  block[3] = &__block_descriptor_tmp_3_12403;
  block[4] = &SecOTRPublicDHKeyGetTypeID_sSecOTRPublicDHKeyGetTypeIDSingleton;
  if (SecOTRPublicDHKeyGetTypeID_sSecOTRPublicDHKeyGetTypeIDOnce != -1)
  {
    dispatch_once(&SecOTRPublicDHKeyGetTypeID_sSecOTRPublicDHKeyGetTypeIDOnce, block);
  }

  return SecOTRPublicDHKeyGetTypeID_sSecOTRPublicDHKeyGetTypeIDSingleton;
}

uint64_t __SecOTRPublicDHKeyGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

uint64_t SecOTRPublicDHKeyCopyDescription(uint64_t a1)
{
  SecGetDebugDescriptionFormatOptions();

  return SecOTRPublicDHKeyCopyFormatDescription(a1);
}

uint64_t SecOTRPublicDHKeyCopyFormatDescription(uint64_t a1)
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2000000000;
  v7 = 0;
  v3[0] = MEMORY[0x1E69E9820];
  v3[1] = 0x40000000;
  v3[2] = __SecOTRPublicDHKeyCopyFormatDescription_block_invoke;
  v3[3] = &unk_1E70E09E8;
  v3[4] = &v4;
  v3[5] = a1;
  withXandY((a1 + 16), v3);
  v1 = v5[3];
  _Block_object_dispose(&v4, 8);
  return v1;
}

void __SecOTRPublicDHKeyCopyFormatDescription_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SecOTRPublicDHKeyCopyFormatDescription_block_invoke_2;
  v4[3] = &unk_1E70E09C0;
  v3 = *(a1 + 40);
  v4[4] = *(a1 + 32);
  v4[5] = v3;
  v4[6] = a2;
  v4[7] = a3;
  BufferPerformWithHexString((v3 + 128), 20, v4);
}

CFStringRef __SecOTRPublicDHKeyCopyFormatDescription_block_invoke_2(void *a1, uint64_t a2)
{
  result = CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<SecOTRPublicDHKeyRef@%p: x: %@ y: %@ [%@]>", a1[5], a1[6], a1[7], a2);
  *(*(a1[4] + 8) + 24) = result;
  return result;
}

uint64_t SecOTRPublicDHKCreateFromFullKey(uint64_t a1, uint64_t a2)
{
  SecOTRPublicDHKeyGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v4 = *(a2 + 16);
  a2 += 16;
  memcpy((Instance + 16), a2, 24 * *v4 + 16);
  v5 = *(a2 + 160);
  *(Instance + 128) = *(a2 + 144);
  *(Instance + 144) = v5;
  return Instance;
}

uint64_t *SecOTRPublicDHKCreateFromSerialization(uint64_t a1, unsigned int **a2, unint64_t *a3)
{
  v5 = 0;
  if (a2 && a3)
  {
    v6 = *a3 - 4;
    if (*a3 < 4)
    {
      return 0;
    }

    else
    {
      v11[1] = v3;
      v11[2] = v4;
      v7 = bswap32(*(*a2)++);
      *a3 = v6;
      v11[0] = v7;
      v8 = v6 >= v7;
      v9 = v6 - v7;
      if (v8)
      {
        *a3 = v9;
        return SecOTRPublicDHKCreateFromBytes(a1, a2, v11);
      }

      else
      {
        return 0;
      }
    }
  }

  return v5;
}

uint64_t *SecOTRPublicDHKCreateFromBytes(uint64_t a1, void *a2, void *a3)
{
  SecOTRPublicDHKeyGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v6 = MEMORY[0x18CFD9EA0]();
  if (MEMORY[0x18CFD9F40](v6, *a3, *a2, Instance + 2) || (*a2 += *a3, *a3 = 0, GenerateHashForKey(Instance + 2)))
  {
    if (Instance)
    {
      CFRelease(Instance);
      return 0;
    }
  }

  return Instance;
}

uint64_t *SecOTRPublicDHKCreateFromCompactSerialization(uint64_t a1, uint64_t *a2, unint64_t *a3)
{
  SecOTRPublicDHKeyGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  MEMORY[0x18CFD9EA0]();
  v6 = (cczp_bitlen() + 7) >> 3;
  if (v6 > *a3 || (v7 = *a2, ccec_compact_import_pub()) || (*a3 -= v6, *a2 += v6, GenerateHashForKey(Instance + 2)))
  {
    if (Instance)
    {
      CFRelease(Instance);
      return 0;
    }
  }

  return Instance;
}

BOOL SecDHKIsGreater(uint64_t a1, uint64_t a2)
{
  v22 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 16);
  v4 = cczp_bitlen();
  v5 = *(a2 + 16);
  v6 = v4 + 7;
  v7 = ((v4 + 7) >> 2) | 1;
  v8 = ((cczp_bitlen() + 7) >> 2) | 1;
  if (v7 == v8)
  {
    if (v6 < 0x108)
    {
      v21 = -86;
      *&v12 = 0xAAAAAAAAAAAAAAAALL;
      *(&v12 + 1) = 0xAAAAAAAAAAAAAAAALL;
      v19 = v12;
      v20 = v12;
      *buf = v12;
      v18 = v12;
      v16 = -86;
      v15[2] = v12;
      v15[3] = v12;
      v15[0] = v12;
      v15[1] = v12;
      ccec_export_pub();
      ccec_export_pub();
      v11 = memcmp(buf, v15, v7);
    }

    else
    {
      v9 = secLogObjForScope("SecError");
      v10 = os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT);
      v11 = 0;
      if (v10)
      {
        *buf = 0;
        _os_log_impl(&dword_1887D2000, v9, OS_LOG_TYPE_DEFAULT, "The size of an SecOTRDHKey is larger than 65 bytes.                      This is not supported in SecOTR and will result in malformed ciphertexts.", buf, 2u);
        v11 = 0;
      }
    }
  }

  else if (v8 < v7)
  {
    v11 = -1;
  }

  else
  {
    v11 = 1;
  }

  result = v11 > 0;
  v14 = *MEMORY[0x1E69E9840];
  return result;
}

void SecOTRDHKGenerateOTRKeys(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v31 = *MEMORY[0x1E69E9840];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  *&v13 = 0xAAAAAAAAAAAAAAAALL;
  *(&v13 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v29 = v13;
  v30 = v13;
  v27 = v13;
  v28 = v13;
  v25 = v13;
  v26 = v13;
  v23 = v13;
  v24 = v13;
  v21 = v13;
  v22 = v13;
  v19 = v13;
  v20 = v13;
  ccn_zero();
  *bytes = 192;
  ccec_compute_key();
  if (SecDHKIsGreater(a1, a2))
  {
    v14 = 1;
  }

  else
  {
    v14 = 2;
  }

  bytes[0] = v14;
  CFDataAppendBytes(Mutable, bytes, 1);
  v15 = ccn_write_uint_size();
  *bytes = bswap32(v15);
  CFDataAppendBytes(Mutable, bytes, 4);
  CFDataGetLength(Mutable);
  CFDataIncreaseLength(Mutable, v15);
  CFDataGetMutableBytePtr(Mutable);
  ccn_write_uint();
  ccn_zero();
  DeriveKeys(Mutable, a5, a6);
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  *MutableBytePtr ^= 3u;
  DeriveKeys(Mutable, a3, a4);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v17 = *MEMORY[0x1E69E9840];
}

uint64_t DeriveKeys(uint64_t result, unint64_t a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  if (a2 | a3)
  {
    v5 = result;
    memset(v7, 170, sizeof(v7));
    ccsha1_di();
    CFDataGetLength(v5);
    CFDataGetBytePtr(v5);
    result = ccdigest();
    if (a2)
    {
      *a2 = *v7;
    }

    if (a3)
    {
      ccsha1_di();
      result = ccdigest();
    }
  }

  v6 = *MEMORY[0x1E69E9840];
  return result;
}

double __EnsureOTRAlgIDInited_block_invoke()
{
  result = *&CSSMOID_ECDSA_WithSHA1.Length;
  EnsureOTRAlgIDInited_kOTRECSignatureAlgID = CSSMOID_ECDSA_WithSHA1;
  kOTRSignatureAlgIDPtr = &EnsureOTRAlgIDInited_kOTRECSignatureAlgID;
  return result;
}

uint64_t SecOTRFullIdentityGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecOTRFullIdentityGetTypeID_block_invoke;
  block[3] = &__block_descriptor_tmp_2_12416;
  block[4] = &SecOTRFullIdentityGetTypeID_sSecOTRFullIdentityGetTypeIDSingleton;
  if (SecOTRFullIdentityGetTypeID_sSecOTRFullIdentityGetTypeIDOnce != -1)
  {
    dispatch_once(&SecOTRFullIdentityGetTypeID_sSecOTRFullIdentityGetTypeIDOnce, block);
  }

  return SecOTRFullIdentityGetTypeID_sSecOTRFullIdentityGetTypeIDSingleton;
}

uint64_t __SecOTRFullIdentityGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef SecOTRFullIdentityCopyDescription(unsigned __int8 *a1)
{
  SecGetDebugDescriptionFormatOptions();

  return SecOTRFullIdentityCopyFormatDescription(a1);
}

void SecOTRFullIdentityDestroy(void *a1)
{
  v2 = a1[3];
  if (v2)
  {
    a1[3] = 0;
    CFRelease(v2);
  }

  v3 = a1[2];
  if (v3)
  {
    a1[2] = 0;
    CFRelease(v3);
  }

  v4 = a1[4];
  if (v4)
  {
    a1[4] = 0;

    CFRelease(v4);
  }
}

uint64_t SecOTRFullIdentityCreate(const __CFAllocator *a1, __CFString **a2)
{
  keys[5] = *MEMORY[0x1E69E9840];
  privateKey = 0;
  publicKey = 0;
  valuePtr = 256;
  v4 = CFNumberCreate(a1, kCFNumberIntType, &valuePtr);
  keys[0] = @"type";
  keys[1] = @"bsiz";
  keys[2] = @"perm";
  keys[3] = @"pdmn";
  keys[4] = @"labl";
  values[0] = @"73";
  values[1] = v4;
  values[2] = *MEMORY[0x1E695E4D0];
  values[3] = @"dku";
  values[4] = @"OTR Signing Key";
  v5 = CFDictionaryCreate(a1, keys, values, 5, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  if (v4)
  {
    CFRelease(v4);
  }

  if (SecKeyGeneratePair(v5, &publicKey, &privateKey))
  {
    v10 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
    {
      *v11 = 0;
      _os_log_impl(&dword_1887D2000, v10, OS_LOG_TYPE_DEFAULT, "keygen failed", v11, 2u);
    }
  }

  else
  {
    SecOTRFIPurgeFromKeychainByValue(publicKey);
    if (v5)
    {
      CFRelease(v5);
    }
  }

  v6 = privateKey;
  v7 = SecOTRFullIdentityCreateFromSecKeyRefSOS(a1, privateKey, a2);
  if (v6)
  {
    CFRelease(v6);
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

uint64_t SecOTRFIPurgeFromKeychainByValue(void *a1)
{
  keys[3] = *MEMORY[0x1E69E9840];
  keys[0] = @"class";
  keys[1] = @"labl";
  keys[2] = @"v_Ref";
  values[0] = @"keys";
  values[1] = @"OTR Signing Key";
  values[2] = a1;
  v1 = CFDictionaryCreate(0, keys, values, 3, 0, 0);
  v2 = SecItemDelete(v1);
  if (v1)
  {
    CFRelease(v1);
  }

  v3 = *MEMORY[0x1E69E9840];
  return v2;
}

uint64_t SecOTRFullIdentityCreateFromSecKeyRefSOS(uint64_t a1, void *a2, __CFString **a3)
{
  v5 = SecOTRFullIdentityCreateFromSecKeyRef(a1, a2, a3);
  v15 = 0;
  v12 = SecKeyCopyPersistentRef(a2, &v15, v6, v7, v8, v9, v10, v11);
  if (v12)
  {
    SecError(v12, a3, @"failed to find persistent ref for key: %d", v12);
  }

  v13 = v15;
  *(v5 + 32) = v15;
  if (v13)
  {
    *(v5 + 40) = 0;
  }

  else
  {
    CFRelease(v5);
    return 0;
  }

  return v5;
}

uint64_t SecOTRFullIdentityCreateFromSecKeyRef(uint64_t a1, void *a2, __CFString **a3)
{
  SecOTRFullIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  v6 = *(Instance + 24);
  if (v6 != a2)
  {
    if (!a2 || (CFRetain(a2), (v6 = *(Instance + 24)) != 0))
    {
      CFRelease(v6);
    }

    *(Instance + 24) = a2;
  }

  v7 = SecKeyCopyPublicKey(a2);
  *(Instance + 16) = v7;
  if (!v7)
  {
    SecError(-2070, a3, @"Failed to extract public key from private key");
    goto LABEL_10;
  }

  *(Instance + 32) = 0;
  *(Instance + 40) = 1;
  if (!SecOTRFICachePublicHash(Instance, a3))
  {
LABEL_10:
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

BOOL SecOTRFICachePublicHash(uint64_t a1, CFErrorRef *a2)
{
  v3 = SecOTRPublicIdentityCopyFromPrivate(0, a1, a2);
  v4 = v3;
  if (v3)
  {
    v5 = *(v3 + 25);
    *(a1 + 57) = *(v3 + 41);
    *(a1 + 41) = v5;
    CFRelease(v3);
  }

  return v4 != 0;
}

uint64_t SecOTRFullIdentityCreateFromBytes(const __CFAllocator *a1, const UInt8 **a2, unint64_t *a3, CFErrorRef *a4)
{
  SecOTRFullIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (EnsureOTRAlgIDInited_kSignatureAlgID_ONCE != -1)
  {
    dispatch_once(&EnsureOTRAlgIDInited_kSignatureAlgID_ONCE, &__block_literal_global_12412);
  }

  v9 = *a3;
  if (!*a3)
  {
    goto LABEL_28;
  }

  v10 = *a2;
  v11 = **a2;
  switch(v11)
  {
    case 3:
      *a2 = v10 + 1;
      *a3 = v9 - 1;
      v19 = v9 >= 3;
      v20 = v9 - 3;
      if (v19)
      {
        v21 = __rev16(*(v10 + 1));
        *a3 = v20;
        *a2 = v10 + 3;
        LODWORD(valuePtr) = 256;
        v22 = CFNumberCreate(0, kCFNumberSInt32Type, &valuePtr);
        v23 = CFDataCreate(a1, *a2, v21);
        v42 = *MEMORY[0x1E695E4C0];
        v31 = CFDictionaryCreateForCFTypes(*MEMORY[0x1E695E480], v24, v25, v26, v27, v28, v29, v30, @"type", @"73");
        error = 0xAAAAAAAAAAAAAAAALL;
        v32 = SecKeyCreateWithData(v23, v31, &error);
        if (v31)
        {
          CFRelease(v31);
        }

        if (v23)
        {
          CFRelease(v23);
        }

        if (v22)
        {
          CFRelease(v22);
        }

        if (v32)
        {
          *(Instance + 40) = 1;
          *(Instance + 24) = v32;
          *(Instance + 32) = 0;
          *(Instance + 16) = SecKeyCopyPublicKey(v32);
LABEL_23:
          if (!SecOTRFICachePublicHash(Instance, a4))
          {
            goto LABEL_29;
          }

          return Instance;
        }

        CFRelease(error);
      }

      SecError(-67673, a4, @"failed to decode v3 otr session: %d", 4294899623);
      goto LABEL_28;
    case 2:
      *a2 = v10 + 1;
      *a3 = v9 - 1;
      valuePtr = 0;
      error = 0;
      v16 = SecOTRFICreatePrivateKeyReadPersistentRef(a2, a3, &error, &valuePtr);
      if (v16)
      {
        v34 = v16;
      }

      else
      {
        ECPublicKeyFrom = CreateECPublicKeyFrom(a2, a3);
        *(Instance + 16) = ECPublicKeyFrom;
        if (ECPublicKeyFrom)
        {
          v18 = valuePtr;
          *(Instance + 24) = error;
          *(Instance + 32) = v18;
          *(Instance + 40) = 0;
          goto LABEL_23;
        }

        v34 = 4294965226;
      }

      if (error)
      {
        CFRelease(error);
      }

      if (valuePtr)
      {
        CFRelease(valuePtr);
      }

      v36 = *(Instance + 32);
      if (v36)
      {
        *(Instance + 32) = 0;
        CFRelease(v36);
      }

      v37 = *(Instance + 16);
      if (v37)
      {
        *(Instance + 16) = 0;
        CFRelease(v37);
      }

      v38 = *(Instance + 24);
      if (v38)
      {
        *(Instance + 24) = 0;
        CFRelease(v38);
      }

      SecError(v34, a4, @"failed to decode v2 otr session: %d", v34);
      goto LABEL_29;
    case 1:
      *a2 = v10 + 1;
      *a3 = v9 - 1;
      valuePtr = 0;
      error = 0;
      v12 = SecOTRFICreatePrivateKeyReadPersistentRef(a2, a3, &error, &valuePtr);
      if (v12)
      {
        v35 = v12;
        v13 = error;
      }

      else
      {
        v13 = error;
        v14 = SecKeyCopyPublicKey(error);
        *(Instance + 16) = v14;
        if (v14)
        {
          v15 = valuePtr;
          *(Instance + 24) = v13;
          *(Instance + 32) = v15;
          goto LABEL_23;
        }

        v35 = 4294965226;
      }

      if (v13)
      {
        CFRelease(v13);
      }

      if (valuePtr)
      {
        CFRelease(valuePtr);
      }

      v39 = *(Instance + 16);
      if (v39)
      {
        *(Instance + 16) = 0;
        CFRelease(v39);
      }

      v40 = *(Instance + 24);
      if (v40)
      {
        *(Instance + 24) = 0;
        CFRelease(v40);
      }

      v41 = *(Instance + 32);
      if (v41)
      {
        *(Instance + 32) = 0;
        CFRelease(v41);
      }

      SecError(v35, a4, @"failed to decode v1 otr session: %d", v35);
      goto LABEL_29;
  }

  SecError(-50, a4, @"unknown otr session version %hhu", **a2);
LABEL_28:
  if (Instance)
  {
LABEL_29:
    SecOTRFIPurgeFromKeychain(Instance, 0);
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

uint64_t SecOTRFICreatePrivateKeyReadPersistentRef(const UInt8 **a1, unint64_t *a2, CFTypeRef *a3, CFDataRef *a4)
{
  if (!a4)
  {
    return 4294967246;
  }

  v5 = 4294967246;
  if (a1)
  {
    if (a2)
    {
      v7 = *a2 - 2;
      if (*a2 >= 2)
      {
        v8 = *a1 + 2;
        v9 = __rev16(**a1);
        *a2 = v7;
        *a1 = v8;
        if (v7 >= v9)
        {
          v12 = CFDataCreate(*MEMORY[0x1E695E480], v8, v9);
          if (v12)
          {
            v19 = v12;
            v5 = SecKeyFindWithPersistentRef(v12, a3, v13, v14, v15, v16, v17, v18);
            if (v5)
            {
              CFRelease(v19);
            }

            else
            {
              *a1 += v9;
              *a2 -= v9;
              *a4 = v19;
            }
          }
        }
      }
    }
  }

  return v5;
}

BOOL SecOTRFIPurgeFromKeychain(uint64_t a1, CFErrorRef *a2)
{
  v3 = SecOTRFIPurgeFromKeychainByValue(*(a1 + 24));
  v4 = v3;
  if (v3)
  {
    SecOTRCreateError(1, v3, @"OSStatus returned in error code", 0, a2);
  }

  return v4 == 0;
}

uint64_t SecOTRFullIdentityCreateFromData(const __CFAllocator *a1, CFDataRef theData, CFErrorRef *a3)
{
  if (!theData)
  {
    return 0;
  }

  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  return SecOTRFullIdentityCreateFromBytes(a1, &BytePtr, &Length, a3);
}

BOOL SecOTRFIPurgeAllFromKeychain(CFErrorRef *a1)
{
  keys[3] = *MEMORY[0x1E69E9840];
  keys[0] = @"class";
  keys[1] = @"kcls";
  keys[2] = @"labl";
  values[0] = @"keys";
  values[1] = @"1";
  values[2] = @"OTR Signing Key";
  v2 = CFDictionaryCreate(0, keys, values, 3, 0, 0);
  v3 = 0;
  v4 = 500;
  do
  {
    v5 = SecItemDelete(v2);
    v3 |= v5 == 0;
    v6 = v4-- != 0;
  }

  while (!v5 && v4 != 0 && v6);
  if (v2)
  {
    CFRelease(v2);
  }

  if (v3)
  {
    v7 = 0;
  }

  else
  {
    v7 = -25300;
  }

  if (v5 == -25300)
  {
    v8 = v7;
  }

  else
  {
    v8 = v5;
  }

  if (v8)
  {
    SecOTRCreateError(1, v8, @"OSStatus returned in error code", 0, a1);
  }

  result = v8 == 0;
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

BOOL SecOTRFIAppendSerialization(uint64_t a1, CFDataRef theData, CFErrorRef *a3)
{
  if (*(a1 + 40) != 1)
  {
    v13 = 2;
    Length = CFDataGetLength(theData);
    CFDataAppendBytes(theData, &v13, 1);
    appendSizeAndData(*(a1 + 32), theData);
    if (!appendPublicOctetsAndSize(*(a1 + 16), theData))
    {
      goto LABEL_5;
    }

LABEL_7:
    CFDataSetLength(theData, Length);
    v9 = -50;
    SecOTRCreateError(1, -50, @"OSStatus returned in error code", 0, a3);
    return v9 == 0;
  }

  bytes = 3;
  Length = CFDataGetLength(theData);
  CFDataAppendBytes(theData, &bytes, 1);
  v11 = 0;
  v7 = SecKeyCopyExternalRepresentation(*(a1 + 24), &v11);
  if (!v7)
  {
    goto LABEL_7;
  }

  v8 = v7;
  appendSizeAndData(v7, theData);
  CFRelease(v8);
LABEL_5:
  v9 = 0;
  return v9 == 0;
}

uint64_t AES_CTR_HighHalf_Transform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = *MEMORY[0x1E69E9840];
  v8[0] = HIBYTE(a3);
  v8[1] = BYTE6(a3);
  v8[2] = BYTE5(a3);
  v8[3] = BYTE4(a3);
  v8[4] = BYTE3(a3);
  v8[5] = BYTE2(a3);
  v8[6] = BYTE1(a3);
  v8[7] = a3;
  v9 = 0;
  result = AES_CTR_Transform(a1, a2, v8, a4, a5, a6);
  v7 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t AES_CTR_Transform(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v20[1] = *MEMORY[0x1E69E9840];
  v12 = ccaes_ctr_crypt_mode();
  v13 = *v12 + 15;
  MEMORY[0x1EEE9AC00](v12);
  v15 = v20 - v14;
  if (v16 >= 0x10)
  {
    v17 = (v20 - v14);
    do
    {
      *v17 = 0xAAAAAAAAAAAAAAAALL;
      v17[1] = 0xAAAAAAAAAAAAAAAALL;
      v17 += 2;
      v14 -= 16;
    }

    while (v14);
  }

  (*(v12 + 24))(v12, v15, a1, a2, a3);
  result = (*(v12 + 40))(v15, a4, a5, a6);
  v19 = *MEMORY[0x1E69E9840];
  return result;
}

void HashMPIWithPrefix(UInt8 a1, uint64_t a2, uint64_t a3, unsigned __int8 *a4)
{
  bytes = a1;
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  CFDataAppendBytes(Mutable, &bytes, 1);
  v6 = ccn_write_uint_size();
  *v10 = bswap32(v6);
  CFDataAppendBytes(Mutable, v10, 4);
  CFDataGetLength(Mutable);
  CFDataIncreaseLength(Mutable, v6);
  CFDataGetMutableBytePtr(Mutable);
  ccn_write_uint();
  MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
  Length = CFDataGetLength(Mutable);
  CC_SHA256(MutableBytePtr, Length, a4);
  bzero(MutableBytePtr, Length);
  if (Mutable)
  {
    CFRelease(Mutable);
  }
}

void DeriveOTR128BitPairFromS(UInt8 a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5, unint64_t a6, void *a7)
{
  v16 = *MEMORY[0x1E69E9840];
  *&v11 = 0xAAAAAAAAAAAAAAAALL;
  *(&v11 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[0] = v11;
  v15[1] = v11;
  HashMPIWithPrefix(a1, a2, a3, v15);
  if (a5)
  {
    if (a4 >= 0x10)
    {
      v12 = 16;
    }

    else
    {
      v12 = a4;
    }

    memcpy(a5, v15, v12);
  }

  if (a7)
  {
    if (a6 >= 0x10)
    {
      v13 = 16;
    }

    else
    {
      v13 = a6;
    }

    memcpy(a7, v15, v13);
  }

  v14 = *MEMORY[0x1E69E9840];
}

void *DeriveOTR64BitsFromS(UInt8 a1, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v12 = *MEMORY[0x1E69E9840];
  *&v7 = 0xAAAAAAAAAAAAAAAALL;
  *(&v7 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v11[0] = v7;
  v11[1] = v7;
  HashMPIWithPrefix(a1, a2, a3, v11);
  if (a4 >= 0x10)
  {
    v8 = 16;
  }

  else
  {
    v8 = a4;
  }

  result = memcpy(a5, v11, v8);
  v10 = *MEMORY[0x1E69E9840];
  return result;
}

void SecKEMPublicKeyDestroy(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    cckem_sizeof_pub_ctx();

    free(a1);
  }
}

__CFData *SecKEMPublicKeyCopyData(uint64_t a1, __CFString **a2)
{
  v3 = *MEMORY[0x1E695E480];
  v4 = cckem_pubkey_nbytes_ctx();
  Mutable = CFDataCreateMutable(v3, 0);
  CFDataSetLength(Mutable, v4);
  v8 = [(__CFData *)Mutable length];
  [(__CFData *)Mutable mutableBytes];
  if (cckem_export_pubkey())
  {
    SecError(-26275, a2, @"Failed to export ML-KEM pubkey");
    v6 = 0;
  }

  else
  {
    [(__CFData *)Mutable setLength:v8];
    v6 = Mutable;
  }

  return v6;
}