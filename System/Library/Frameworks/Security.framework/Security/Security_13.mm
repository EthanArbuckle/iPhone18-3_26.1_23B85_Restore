uint64_t SecKEMPublicKeyBlockSize(uint64_t a1)
{
  if (a1)
  {

    return cckem_pubkey_nbytes_ctx();
  }

  else
  {
    v6 = v1;
    v7 = v2;
    v4 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      *v5 = 0;
      _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "Invalid key data: The provided key does not contain a valid KEM context.", v5, 2u);
    }

    return 0;
  }
}

void SecKEMPrivateKeyDestroy(uint64_t *a1)
{
  if (a1)
  {
    v2 = *a1;
    cckem_sizeof_full_ctx();

    free(a1);
  }
}

uint64_t SecKEMPrivateKeyBlockSize(uint64_t a1)
{
  if (a1)
  {
    cckem_public_ctx();

    return cckem_privkey_nbytes_ctx();
  }

  else
  {
    v2 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
    {
      *v3 = 0;
      _os_log_impl(&dword_1887D2000, v2, OS_LOG_TYPE_DEFAULT, "Invalid key data: The provided key does not contain a valid KEM context.", v3, 2u);
    }

    return 0;
  }
}

__CFData *SecKEMPrivateKeyCopyExternalRepresentation(uint64_t a1, __CFString **a2)
{
  if (*(a1 + 24))
  {
    v4 = *(a1 + 24);
    cckem_public_ctx();
    v5 = cckem_pubkey_nbytes_ctx();
    if (SecCFAllocatorZeroize_sOnce != -1)
    {
      dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
    }

    v6 = SecCFAllocatorZeroize_sAllocator;
    v7 = cckem_privkey_nbytes_ctx();
    Mutable = CFDataCreateMutable(v6, 0);
    CFDataSetLength(Mutable, v7 + v5);
    v12 = [(__CFData *)Mutable length];
    cckem_public_ctx();
    [(__CFData *)Mutable mutableBytes];
    if (cckem_export_pubkey())
    {
      SecError(-26275, a2, @"Failed to export public part of %@", a1);
    }

    else
    {
      v11 = [(__CFData *)Mutable length]- v12;
      [(__CFData *)Mutable mutableBytes];
      if (!cckem_export_privkey())
      {
        [(__CFData *)Mutable setLength:v11 + v12];
        v9 = Mutable;
        goto LABEL_10;
      }

      SecError(-26275, a2, @"Failed to export %@", a1);
    }

    v9 = 0;
LABEL_10:

    return v9;
  }

  SecError(-50, a2, @"Invalid key data: The provided key does not contain a valid KEM context.");
  return 0;
}

__CFString *SecKEMGenerateHexDump()
{
  v15 = *MEMORY[0x1E69E9840];
  v0 = cckem_pubkey_nbytes_ctx();
  v1 = [MEMORY[0x1E696AD60] stringWithCapacity:2 * v0];
  v2 = *MEMORY[0x1E695E480];
  v3 = cckem_pubkey_nbytes_ctx();
  Mutable = CFDataCreateMutable(v2, 0);
  CFDataSetLength(Mutable, v3);
  v12 = [(__CFData *)Mutable length];
  [(__CFData *)Mutable mutableBytes];
  v5 = cckem_export_pubkey();
  if (v5)
  {
    v6 = v5;
    v7 = secLogObjForScope("SecWarning");
    if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 67109120;
      v14 = v6;
      _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "Failed to export public key: error code %d.", buf, 8u);
    }

    v8 = &stru_1EFA8C6C8;
  }

  else
  {
    [(__CFData *)Mutable setLength:v12];
    if (v0)
    {
      for (i = 0; i != v0; ++i)
      {
        [v1 appendFormat:@"%02X", *(-[__CFData bytes](Mutable, "bytes") + i)];
      }
    }

    v8 = v1;
  }

  v10 = *MEMORY[0x1E69E9840];

  return v8;
}

id SecKEMCreateKeyAttributeDictionary(void *a1, void *a2, void *a3, void *a4, void *a5)
{
  v20[23] = *MEMORY[0x1E69E9840];
  v9 = a1;
  v10 = a2;
  v11 = a3;
  v12 = a4;
  v13 = a5;
  v19[0] = @"class";
  v19[1] = @"type";
  v20[0] = @"keys";
  v20[1] = v9;
  v19[2] = @"bsiz";
  v19[3] = @"esiz";
  v20[2] = v10;
  v20[3] = v10;
  v19[4] = @"kcls";
  v19[5] = @"klbl";
  v14 = v12;
  v20[4] = v11;
  if (!v12)
  {
    v14 = [MEMORY[0x1E695DEF0] data];
  }

  v20[5] = v14;
  v20[6] = MEMORY[0x1E695E118];
  v19[6] = @"perm";
  v19[7] = @"priv";
  v20[7] = MEMORY[0x1E695E118];
  v20[8] = MEMORY[0x1E695E118];
  v19[8] = @"modi";
  v19[9] = @"sens";
  v20[9] = MEMORY[0x1E695E110];
  v20[10] = MEMORY[0x1E695E110];
  v19[10] = @"asen";
  v19[11] = @"extr";
  v20[11] = MEMORY[0x1E695E118];
  v20[12] = MEMORY[0x1E695E110];
  v19[12] = @"next";
  v19[13] = @"encr";
  v20[13] = MEMORY[0x1E695E110];
  v20[14] = MEMORY[0x1E695E110];
  v19[14] = @"decr";
  v19[15] = @"drve";
  v20[15] = MEMORY[0x1E695E110];
  v20[16] = MEMORY[0x1E695E110];
  v19[16] = @"sign";
  v19[17] = @"vrfy";
  v20[17] = MEMORY[0x1E695E110];
  v20[18] = MEMORY[0x1E695E110];
  v19[18] = @"snrc";
  v19[19] = @"vyrc";
  v20[19] = MEMORY[0x1E695E110];
  v20[20] = MEMORY[0x1E695E110];
  v19[20] = @"wrap";
  v19[21] = @"unwp";
  v20[21] = MEMORY[0x1E695E110];
  v15 = v13;
  v19[22] = @"v_Data";
  if (!v13)
  {
    v15 = [MEMORY[0x1E695DEF0] data];
  }

  v20[22] = v15;
  v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:v20 forKeys:v19 count:23];
  if (v13)
  {
    if (v12)
    {
      goto LABEL_7;
    }
  }

  else
  {

    if (v12)
    {
      goto LABEL_7;
    }
  }

LABEL_7:
  v17 = *MEMORY[0x1E69E9840];

  return v16;
}

__CFData *SecKEMDecapsulateSharedKey(uint64_t a1, void *a2, __CFString **a3)
{
  v4 = *(a1 + 24);
  if (v4)
  {
    v6 = a2;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && (v7 = [v6 length], v8 = *v4, v7 == cckem_encapsulated_key_nbytes_info()))
    {
      if (SecCFAllocatorZeroize_sOnce != -1)
      {
        dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
      }

      v9 = SecCFAllocatorZeroize_sAllocator;
      v10 = *v4;
      v11 = cckem_shared_key_nbytes_info();
      Mutable = CFDataCreateMutable(v9, 0);
      CFDataSetLength(Mutable, v11);
      [v6 length];
      [v6 bytes];
      [(__CFData *)Mutable length];
      [(__CFData *)Mutable mutableBytes];
      v13 = cckem_decapsulate();
      if (v13)
      {
        SecError(-26275, a3, @"KEM Key decapsulation failed, err=%d for key %@", v13, a1);
      }
    }

    else
    {
      v14 = *v4;
      v15 = cckem_encapsulated_key_nbytes_info();
      SecError(-50, a3, @"KEM decapsulation failed: expecting input data of size %dbytes", v15);
      Mutable = 0;
    }
  }

  else
  {
    SecError(-50, a3, @"Invalid key data: The provided key does not contain a valid KEM context.");
    Mutable = 0;
  }

  return Mutable;
}

void SecOTRAppendDHMessage(uint64_t a1, __CFData *a2)
{
  if (a1)
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    if (Mutable)
    {
      v5 = Mutable;
      *bytes = 512;
      CFDataAppendBytes(a2, bytes, 2);
      v12 = 2;
      CFDataAppendBytes(a2, &v12, 1);
      SecFDHKAppendPublicSerialization(*(a1 + 80), v5);
      Length = CFDataGetLength(v5);
      if (Length)
      {
        v7 = Length;
        BytePtr = CFDataGetBytePtr(v5);
        *v13 = bswap32(v7);
        CFDataAppendBytes(a2, v13, 4);
        v9 = CFDataGetLength(a2);
        CFDataIncreaseLength(a2, v7);
        MutableBytePtr = CFDataGetMutableBytePtr(a2);
        AES_CTR_Transform(16, a1 + 40, &kIVZero, v7, BytePtr, &MutableBytePtr[v9]);
        *v14 = 0x20000000;
        CFDataAppendBytes(a2, v14, 4);
        CFDataGetLength(a2);
        CFDataIncreaseLength(a2, 32);
        CFDataGetMutableBytePtr(a2);
        ccsha256_di();
        ccdigest();
      }

      CFRelease(v5);
    }
  }
}

uint64_t SecOTRAppendDHKeyMessage(uint64_t a1, CFMutableDataRef theData)
{
  *bytes = 512;
  CFDataAppendBytes(theData, bytes, 2);
  v6 = 10;
  CFDataAppendBytes(theData, &v6, 1);
  return SecFDHKAppendPublicSerialization(*(a1 + 80), theData);
}

void SecOTRAppendRevealSignatureMessage(uint64_t a1, CFMutableDataRef theData)
{
  *bytes = 512;
  CFDataAppendBytes(theData, bytes, 2);
  v6 = 17;
  CFDataAppendBytes(theData, &v6, 1);
  *v7 = 0x10000000;
  CFDataAppendBytes(theData, v7, 4);
  Length = CFDataGetLength(theData);
  CFDataIncreaseLength(theData, 16);
  *&CFDataGetMutableBytePtr(theData)[Length] = *(a1 + 40);
  AppendMACedEncryptedSignature(a1, 0, theData);
}

void AppendMACedEncryptedSignature(uint64_t a1, int a2, const __CFData *a3)
{
  v41 = *MEMORY[0x1E69E9840];
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v37[10] = v5;
  v37[11] = v5;
  v37[8] = v5;
  v37[9] = v5;
  v37[6] = v5;
  v37[7] = v5;
  v37[4] = v5;
  v37[5] = v5;
  v37[2] = v5;
  v37[3] = v5;
  v37[0] = v5;
  v37[1] = v5;
  v6 = *(a1 + 80);
  v7 = *(a1 + 112);
  ccn_zero();
  *bytes = 192;
  ccec_compute_key();
  CFDataGetLength(a3);
  v8 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v10 = CFDataCreateMutable(v8, 0);
  v11 = CFDataCreateMutable(v8, 0);
  SecFDHKAppendPublicSerialization(*(a1 + 80), v10);
  AppendECPublicKeyAsDATA(v10, (*(a1 + 112) + 16));
  Length = CFDataGetLength(v10);
  v13 = SecOTRPublicIdentityCopyFromPrivate(v8, *(a1 + 24), 0);
  *bytes = 240;
  CFDataAppendBytes(v10, bytes, 2);
  v14 = CFDataCreateMutable(v8, 0);
  SecOTRPIAppendSerialization(v13, v14, 0);
  v15 = CFDataGetLength(v14);
  BytePtr = CFDataGetBytePtr(v14);
  *bytes = bswap32(v15);
  CFDataAppendBytes(v10, bytes, 4);
  CFDataAppendBytes(v10, BytePtr, v15);
  if (v14)
  {
    CFRelease(v14);
  }

  if (v13)
  {
    CFRelease(v13);
  }

  *bytes = bswap32(*(a1 + 72));
  CFDataAppendBytes(v10, bytes, 4);
  CFDataGetLength(v10);
  CFDataGetBytePtr(v10);
  *&v17 = 0xAAAAAAAAAAAAAAAALL;
  *(&v17 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *bytes = v17;
  v40 = v17;
  if (a2)
  {
    v18 = 4;
  }

  else
  {
    v18 = 2;
  }

  HashMPIWithPrefix(v18, 24, v37, bytes);
  CFDataGetLength(v11);
  CFDataIncreaseLength(v11, 32);
  CFDataGetMutableBytePtr(v11);
  ccsha256_di();
  cchmac();
  v42.location = 0;
  v42.length = Length;
  CFDataDeleteBytes(v10, v42);
  v19 = *(a1 + 24);
  Size = SecKeyGetSize(*(v19 + 16), 1);
  v21 = CFDataGetLength(v11);
  v22 = CFDataGetBytePtr(v11);
  v23 = CFDataGetLength(Mutable);
  if ((Size & 0x8000000000000000) == 0)
  {
    CFDataIncreaseLength(Mutable, Size + 1);
    v24 = &CFDataGetMutableBytePtr(Mutable)[v23];
    *bytes = Size;
    if (!SecKeyDigestAndSign(*(v19 + 24), kOTRSignatureAlgIDPtr, v22, v21, v24 + 1, bytes))
    {
      v25 = *bytes;
      if (*bytes <= 0xFFuLL)
      {
        *v24 = bytes[0];
        v23 += v25 + 1;
      }
    }
  }

  CFDataSetLength(Mutable, v23);
  if (v11)
  {
    CFRelease(v11);
  }

  v26 = CFDataGetLength(Mutable);
  v27 = CFDataGetBytePtr(Mutable);
  *bytes = bswap32(v26);
  CFDataAppendBytes(v10, bytes, 4);
  CFDataAppendBytes(v10, v27, v26);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  v28 = CFDataGetLength(v10);
  CFDataGetLength(a3);
  *bytes = bswap32(v28);
  CFDataAppendBytes(a3, bytes, 4);
  v29 = CFDataGetLength(a3);
  CFDataIncreaseLength(a3, v28);
  MutableBytePtr = CFDataGetMutableBytePtr(a3);
  *&v38 = 0xAAAAAAAAAAAAAAAALL;
  *(&v38 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v31 = 0xAAAAAAAAAAAAAAAALL;
  *(&v31 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *bytes = v31;
  v40 = v31;
  HashMPIWithPrefix(1u, 24, v37, bytes);
  v38 = *bytes;
  v32 = CFDataGetBytePtr(v10);
  AES_CTR_Transform(16, &v38, &kIVZero, v28, v32, &MutableBytePtr[v29]);
  v38 = 0uLL;
  if (v10)
  {
    CFRelease(v10);
  }

  CFDataGetMutableBytePtr(a3);
  CFDataGetLength(a3);
  *&v33 = 0xAAAAAAAAAAAAAAAALL;
  *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *bytes = v33;
  v40 = v33;
  if (a2)
  {
    v34 = 5;
  }

  else
  {
    v34 = 3;
  }

  HashMPIWithPrefix(v34, 24, v37, bytes);
  CFDataGetLength(a3);
  CFDataIncreaseLength(a3, 32);
  CFDataGetMutableBytePtr(a3);
  ccsha256_di();
  cchmac();
  v43.location = CFDataGetLength(a3) - 12;
  v43.length = 12;
  CFDataDeleteBytes(a3, v43);
  v35 = *MEMORY[0x1E69E9840];
}

void SecOTRAppendSignatureMessage(uint64_t a1, CFMutableDataRef theData)
{
  *bytes = 512;
  CFDataAppendBytes(theData, bytes, 2);
  v5 = 18;
  CFDataAppendBytes(theData, &v5, 1);
  AppendMACedEncryptedSignature(a1, 1, theData);
}

uint64_t SecOTRPublicIdentityGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecOTRPublicIdentityGetTypeID_block_invoke;
  block[3] = &__block_descriptor_tmp_12502;
  block[4] = &SecOTRPublicIdentityGetTypeID_sSecOTRPublicIdentityGetTypeIDSingleton;
  if (SecOTRPublicIdentityGetTypeID_sSecOTRPublicIdentityGetTypeIDOnce != -1)
  {
    dispatch_once(&SecOTRPublicIdentityGetTypeID_sSecOTRPublicIdentityGetTypeIDOnce, block);
  }

  return SecOTRPublicIdentityGetTypeID_sSecOTRPublicIdentityGetTypeIDSingleton;
}

uint64_t __SecOTRPublicIdentityGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef SecOTRPublicIdentityCopyDescription(unsigned __int8 *a1)
{
  SecGetDebugDescriptionFormatOptions();

  return SecOTRPublicIdentityCopyFormatDescription(a1);
}

void SecOTRPublicIdentityDestroy(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    *(a1 + 16) = 0;
    CFRelease(v2);
  }
}

void *SecOTRPublicIdentityCopyFromPrivate(uint64_t a1, uint64_t a2, CFErrorRef *a3)
{
  SecOTRPublicIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (EnsureOTRAlgIDInited_kSignatureAlgID_ONCE != -1)
  {
    dispatch_once(&EnsureOTRAlgIDInited_kSignatureAlgID_ONCE, &__block_literal_global_12412);
  }

  v6 = *(a2 + 16);
  Instance[2] = v6;
  CFRetain(v6);
  if ((SecOTRPICacheHash(Instance, a3) & 1) == 0)
  {
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

uint64_t SecOTRPICacheHash(uint64_t a1, CFErrorRef *a2)
{
  Mutable = CFDataCreateMutable(0, 0);
  v5 = SecOTRPIAppendSerialization(a1, Mutable, a2);
  if (v5)
  {
    CFDataGetBytePtr(Mutable);
    CFDataGetLength(Mutable);
    CCDigest();
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v5;
}

uint64_t SecOTRPIAppendSerialization(uint64_t a1, CFDataRef theData, CFErrorRef *a3)
{
  Length = CFDataGetLength(theData);
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  if (appendPublicOctetsAndSize(*(a1 + 16), Mutable))
  {
    goto LABEL_11;
  }

  CFDataGetLength(Mutable);
  ccder_sizeof();
  if (sAdvertiseHashes == 1)
  {
    ccder_sizeof();
  }

  v8 = ccder_sizeof();
  CFDataIncreaseLength(theData, v8);
  v9 = &CFDataGetMutableBytePtr(theData)[Length];
  CFDataGetLength(Mutable);
  CFDataGetBytePtr(Mutable);
  if (sAdvertiseHashes == 1)
  {
    ccder_encode_implicit_raw_octet_string();
  }

  ccder_encode_implicit_raw_octet_string();
  if (ccder_encode_constructed_tl() != v9)
  {
LABEL_11:
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    CFDataSetLength(theData, Length);
    SecOTRCreateError(0, -10, @"Unable to create public key bytes", 0, a3);
    return 0;
  }

  else
  {
    if (Mutable)
    {
      CFRelease(Mutable);
    }

    return 1;
  }
}

CFTypeRef *SecOTRPublicIdentityCreateFromSecKeyRef(uint64_t a1, const void *a2, CFErrorRef *a3)
{
  SecOTRPublicIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  Instance[2] = a2;
  CFRetain(a2);
  if ((SecOTRPICacheHash(Instance, a3) & 1) == 0)
  {
    CFRelease(Instance[2]);
    CFRelease(Instance);
    return 0;
  }

  return Instance;
}

uint64_t SecOTRPublicIdentityCreateFromBytes(uint64_t a1, uint64_t *a2, void *a3, CFErrorRef *a4)
{
  cf = 0;
  SecOTRPublicIdentityGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (EnsureOTRAlgIDInited_kSignatureAlgID_ONCE != -1)
  {
    dispatch_once(&EnsureOTRAlgIDInited_kSignatureAlgID_ONCE, &__block_literal_global_12412);
  }

  v12 = *a2 + *a3;
  if (!ccder_decode_sequence_tl())
  {
    SecOTRCreateError(0, -9, @"Error creating public identity from bytes", 0, a4);
    if (!Instance)
    {
      return Instance;
    }

    goto LABEL_16;
  }

  v8 = *a2;
  v14 = 0xAAAAAAAAAAAAAAAALL;
  v15 = ccder_decode_tl();
  v9 = CreateECPublicKeyFrom(&v15, &v14);
  if (!v9 || v14)
  {
    if (v9)
    {
      CFRelease(v9);
    }

    v11 = 0;
    *(Instance + 16) = 0;
    goto LABEL_15;
  }

  *(Instance + 16) = v9;
  *(Instance + 24) = ccder_decode_tl() != 0;
  if ((SecOTRPICacheHash(Instance, &cf) & 1) == 0)
  {
    v11 = cf;
LABEL_15:
    SecOTRCreateError(0, -9, @"Error creating public identity from bytes", v11, a4);
LABEL_16:
    CFRelease(Instance);
    return 0;
  }

  *a2 += v12 - v8;
  *a3 -= v12 - v8;
  return Instance;
}

uint64_t SecOTRPublicIdentityCreateFromData(uint64_t a1, CFDataRef theData, CFErrorRef *a3)
{
  if (!theData)
  {
    return 0;
  }

  Length = CFDataGetLength(theData);
  BytePtr = CFDataGetBytePtr(theData);
  return SecOTRPublicIdentityCreateFromBytes(a1, &BytePtr, &Length, a3);
}

void __SecOTRPIEqualToBytes_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v10 = MEMORY[0x1E69E9820];
  v11 = 0x40000000;
  v12 = __SecOTRPIEqualToBytes_block_invoke_2;
  v13 = &__block_descriptor_tmp_5_12526;
  v14 = a2;
  if (v2)
  {
    v3 = *MEMORY[0x1E695E480];
    Length = CFDataGetLength(v2);
    Mutable = CFStringCreateMutable(v3, 2 * Length);
    BytePtr = CFDataGetBytePtr(v2);
    v7 = CFDataGetLength(v2);
    if (v7 >= 1)
    {
      v8 = v7;
      do
      {
        v9 = *BytePtr++;
        CFStringAppendFormat(Mutable, 0, @"%02X", v9, v10, v11);
        --v8;
      }

      while (v8);
    }
  }

  else
  {
    Mutable = @"(null)";
  }

  v12(&v10, Mutable);
  CFRelease(Mutable);
}

void __SecOTRPIEqualToBytes_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("otr");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = a2;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "ID Comparison failed: d: %@ id: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t SecOTRPIRecreateSignature(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v16[3] = *MEMORY[0x1E69E9840];
  v8 = MEMORY[0x18CFD9EA0]();
  v9 = *v8;
  v10 = 8 * *v8;
  MEMORY[0x1EEE9AC00](v8);
  v11 = (v10 + 15) & 0xFFFFFFFFFFFFFFF0;
  if (v9)
  {
    v12 = memset(v16 - v11, 170, v10);
    MEMORY[0x1EEE9AC00](v12);
    memset(v16 - v11, 170, v10);
  }

  v16[1] = a1 + a2;
  ccder_decode_sequence_tl();
  mp_decode_forced_uint();
  mp_decode_forced_uint();
  v13 = *a3 + *a4;
  ccder_encode_integer();
  ccder_encode_integer();
  result = ccder_encode_constructed_tl();
  *a3 = result;
  *a4 = (v13 - result) & ~((v13 - result) >> 63);
  v15 = *MEMORY[0x1E69E9840];
  return result;
}

uint64_t mp_decode_forced_uint()
{
  result = ccder_decode_tl();
  if (result)
  {
    v1 = result;
    if ((ccn_read_uint() & 0x80000000) != 0)
    {
      return 0;
    }

    else
    {
      return v1 - 0x5555555555555556;
    }
  }

  return result;
}

void sub_1888E9438(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1888E9A88(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy__12633(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

id SecRemoteKeyCopyOperationResult(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v15 = [MEMORY[0x1E695E0F0] mutableCopy];
  v16 = v15;
  if (a6)
  {
    [v15 addObject:a6];
    if (a7)
    {
      [v16 addObject:a7];
    }
  }

  v21 = 0;
  v22 = &v21;
  v23 = 0x3032000000;
  v24 = __Block_byref_object_copy__12633;
  v25 = __Block_byref_object_dispose__12634;
  v26 = 0;
  v17 = [SecKeyProxy targetForKey:a1 error:a8];
  v20[0] = MEMORY[0x1E69E9820];
  v20[1] = 3221225472;
  v20[2] = __SecRemoteKeyCopyOperationResult_block_invoke;
  v20[3] = &unk_1E70E0C58;
  v20[4] = &v21;
  v20[5] = a8;
  [v17 performOperation:a2 mode:a5 algorithm:a3 parameters:v16 reply:v20];

  v18 = v22[5];
  _Block_object_dispose(&v21, 8);

  return v18;
}

void sub_1888E9D2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __SecRemoteKeyCopyOperationResult_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v9 = a2;
  v5 = a3;
  if ([v9 count])
  {
    v6 = [v9 objectAtIndexedSubscript:0];
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else if (*(a1 + 40))
  {
    **(a1 + 40) = v5;
  }
}

id SecRemoteKeyCopyPublicKey(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__12633;
  v9 = __Block_byref_object_dispose__12634;
  v10 = 0;
  v1 = [SecKeyProxy targetForKey:a1 error:0];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SecRemoteKeyCopyPublicKey_block_invoke;
  v4[3] = &unk_1E70E0C30;
  v4[4] = &v5;
  [v1 getPublicKey:v4];

  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1888E9ED8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SecRemoteKeyCopyPublicKey_block_invoke(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    v2 = result;
    v3 = [SecKeyProxy createKeyFromEndpoint:a2 error:0];
    v4 = *(*(v2 + 32) + 8);
    v5 = *(v4 + 40);
    *(v4 + 40) = v3;

    return MEMORY[0x1EEE66BB8]();
  }

  return result;
}

id SecRemoteKeyCopyExternalRepresentation(uint64_t a1, void *a2)
{
  v15 = 0;
  v16 = &v15;
  v17 = 0x3032000000;
  v18 = __Block_byref_object_copy__12633;
  v19 = __Block_byref_object_dispose__12634;
  v20 = 0;
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__12633;
  v13 = __Block_byref_object_dispose__12634;
  v14 = 0;
  v3 = [SecKeyProxy targetForKey:a1 error:a2];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __SecRemoteKeyCopyExternalRepresentation_block_invoke;
  v8[3] = &unk_1E70E0C08;
  v8[4] = &v15;
  v8[5] = &v9;
  [v3 getExternalRepresentationWithReply:v8];

  v4 = v16;
  v5 = v16[5];
  if (a2 && !v5)
  {
    *a2 = v10[5];
    v5 = v4[5];
  }

  v6 = v5;
  _Block_object_dispose(&v9, 8);

  _Block_object_dispose(&v15, 8);
  return v6;
}

void sub_1888EA0B4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v7 - 80), 8);
  _Unwind_Resume(a1);
}

void __SecRemoteKeyCopyExternalRepresentation_block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = *(*(a1 + 32) + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v5;
  v11 = v5;

  v9 = *(*(a1 + 40) + 8);
  v10 = *(v9 + 40);
  *(v9 + 40) = v6;
}

uint64_t SecRemoteKeyGetAlgorithmID(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = [SecKeyProxy targetForKey:a1 error:0];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SecRemoteKeyGetAlgorithmID_block_invoke;
  v4[3] = &unk_1E70E0BE0;
  v4[4] = &v5;
  [v1 getAlgorithmIDWithReply:v4];

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1888EA224(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

id SecRemoteKeyCopyDescription(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x3032000000;
  v8 = __Block_byref_object_copy__12633;
  v9 = __Block_byref_object_dispose__12634;
  v10 = 0;
  v1 = [SecKeyProxy targetForKey:a1 error:0];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SecRemoteKeyCopyDescription_block_invoke;
  v4[3] = &unk_1E70E0BB8;
  v4[4] = &v5;
  [v1 getDescriptionWithReply:v4];

  v2 = v6[5];
  _Block_object_dispose(&v5, 8);

  return v2;
}

void sub_1888EA344(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SecRemoteKeyCopyDescription_block_invoke(uint64_t a1, uint64_t a2)
{
  v3 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<SecKeyRef remoteKey: %@>", a2];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t SecRemoteKeyCopyAttributeDictionary(uint64_t a1)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x3032000000;
  v12 = __Block_byref_object_copy__12633;
  v13 = __Block_byref_object_dispose__12634;
  v14 = 0;
  v1 = [SecKeyProxy targetForKey:a1 error:0];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __SecRemoteKeyCopyAttributeDictionary_block_invoke;
  v8[3] = &unk_1E70E0B90;
  v8[4] = &v9;
  [v1 getAttributesWithReply:v8];

  v2 = [v10[5] objectForKeyedSubscript:@"accc"];
  if (v2)
  {
    v7 = 0;
    v3 = SecAccessControlCreateFromData(*MEMORY[0x1E695E480], v2, &v7);
    v4 = v10[5];
    if (v3)
    {
      [v4 setObject:v3 forKeyedSubscript:@"accc"];
    }

    else
    {
      [v4 removeObjectForKey:@"accc"];
    }
  }

  v5 = [v10[5] copy];

  _Block_object_dispose(&v9, 8);
  return v5;
}

void sub_1888EA534(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __SecRemoteKeyCopyAttributeDictionary_block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 mutableCopy];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  return MEMORY[0x1EEE66BB8]();
}

uint64_t SecRemoteKeyBlockSize(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2020000000;
  v8 = 0;
  v1 = [SecKeyProxy targetForKey:a1 error:0];
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 3221225472;
  v4[2] = __SecRemoteKeyBlockSize_block_invoke;
  v4[3] = &unk_1E70E0B68;
  v4[4] = &v5;
  [v1 getBlockSizeWithReply:v4];

  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void sub_1888EA660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void SecRemoteKeyDestroy(uint64_t a1)
{
  v1 = *(a1 + 24);
  [v1 invalidate];
}

uint64_t SecOTRSessionGetTypeID()
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecOTRSessionGetTypeID_block_invoke;
  block[3] = &__block_descriptor_tmp_12700;
  block[4] = &SecOTRSessionGetTypeID_sSecOTRSessionGetTypeIDSingleton;
  if (SecOTRSessionGetTypeID_sSecOTRSessionGetTypeIDOnce != -1)
  {
    dispatch_once(&SecOTRSessionGetTypeID_sSecOTRSessionGetTypeIDOnce, block);
  }

  return SecOTRSessionGetTypeID_sSecOTRSessionGetTypeIDSingleton;
}

uint64_t __SecOTRSessionGetTypeID_block_invoke(uint64_t a1)
{
  result = _CFRuntimeRegisterClass();
  **(a1 + 32) = result;
  return result;
}

CFStringRef SecOTRSessionCopyDescription(uint64_t a1)
{
  SecGetDebugDescriptionFormatOptions();

  return SecOTRSessionCopyFormatDescription(a1);
}

CFStringRef SecOTRSessionCopyFormatDescription(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 16);
  if (v3 > 4)
  {
    v4 = "InvalidState";
  }

  else
  {
    v4 = off_1E70E0F88[v3];
  }

  v5 = *(a1 + 672);
  v6 = "e";
  if (v5 != 0.0 && v5 > Current)
  {
    v6 = "E";
  }

  v8 = "s";
  if (*(a1 + 664))
  {
    v8 = "S";
  }

  v9 = "r";
  v10 = "m";
  if (*(a1 + 681))
  {
    v9 = "R";
  }

  if (*(a1 + 680))
  {
    v10 = "M";
  }

  v11 = "t";
  if (*(a1 + 112))
  {
    v11 = "T";
  }

  if (*(a1 + 104))
  {
    v12 = "P";
  }

  else
  {
    v12 = "p";
  }

  if (*(a1 + 64))
  {
    v13 = "K";
  }

  else
  {
    v13 = "k";
  }

  if (*(a1 + 56))
  {
    v14 = "D";
  }

  else
  {
    v14 = "d";
  }

  if (*(a1 + 32))
  {
    v15 = "P";
  }

  else
  {
    v15 = "p";
  }

  if (*(a1 + 24))
  {
    v16 = "F";
  }

  else
  {
    v16 = "f";
  }

  if (*(a1 + 650))
  {
    v17 = "I";
  }

  else
  {
    v17 = "i";
  }

  if (*(a1 + 649))
  {
    v18 = "C";
  }

  else
  {
    v18 = "c";
  }

  return CFStringCreateWithFormat(*MEMORY[0x1E695E480], 0, @"<%s %s %s %s%s%s%s %d:%d %s%s %llu %s%s%s%s>", Current, v4, v18, v17, v16, v15, v14, v13, *(a1 + 72), *(a1 + 96), v12, v11, *(a1 + 656), v10, v9, v8, v6);
}

void SecOTRSessionDestroy(void *a1)
{
  v2 = a1[7];
  if (v2)
  {
    a1[7] = 0;
    CFRelease(v2);
  }

  v3 = a1[8];
  if (v3)
  {
    a1[8] = 0;
    CFRelease(v3);
  }

  v4 = a1[3];
  if (v4)
  {
    a1[3] = 0;
    CFRelease(v4);
  }

  v5 = a1[10];
  if (v5)
  {
    a1[10] = 0;
    CFRelease(v5);
  }

  v6 = a1[11];
  if (v6)
  {
    a1[11] = 0;
    CFRelease(v6);
  }

  v7 = a1[4];
  if (v7)
  {
    a1[4] = 0;
    CFRelease(v7);
  }

  v8 = a1[14];
  if (v8)
  {
    a1[14] = 0;
    CFRelease(v8);
  }

  v9 = a1[13];
  if (v9)
  {
    a1[13] = 0;
    CFRelease(v9);
  }

  v10 = a1[15];
  if (v10)
  {
    a1[15] = 0;
    CFRelease(v10);
  }

  v11 = a1[16];

  dispatch_release(v11);
}

const char *SecOTRPacketTypeString(const __CFData *a1)
{
  if (!a1)
  {
    return "NoMessage";
  }

  v1 = SecOTRSGetMessageType(a1);
  if (v1 > 0x1F)
  {
    if (v1 <= 47)
    {
      if (v1 == 32)
      {
        return "kEvenCompactDatamessage (0x20)";
      }

      if (v1 == 33)
      {
        return "kOddCompactDataMessage (0x21)";
      }
    }

    else
    {
      switch(v1)
      {
        case 48:
          return "kEvenCompactDatamessage (0x30)";
        case 49:
          return "kOddCompactDataMessage (0x31)";
        case 255:
          return "InvalidMessage (0xFF)";
      }
    }
  }

  else if (v1 <= 9)
  {
    if (v1 == 2)
    {
      return "DHMessage (0x02)";
    }

    if (v1 == 3)
    {
      return "DataMessage (0x03)";
    }
  }

  else
  {
    switch(v1)
    {
      case 10:
        return "DHKeyMessage (0x0A)";
      case 17:
        return "RevealSignatureMessage (0x11)";
      case 18:
        return "SignatureMessage (0x12)";
    }
  }

  return "UnknownMessage";
}

uint64_t SecOTRSGetMessageType(const __CFData *a1)
{
  v1 = SecOTRCopyIncomingBytes(a1);
  BytePtr = CFDataGetBytePtr(v1);
  if (CFDataGetLength(v1) > 2 && __rev16(*BytePtr) == 2)
  {
    v3 = BytePtr[2];
  }

  else
  {
    v3 = *CFDataGetBytePtr(v1);
    if (v3 > 0x31 || ((1 << v3) & 0x3000300000000) == 0)
    {
      v3 = 255;
    }
  }

  if (v1)
  {
    CFRelease(v1);
  }

  return v3;
}

double SecOTRSessionResetInternal(uint64_t a1)
{
  *(a1 + 16) = 0;
  v2 = *(a1 + 56);
  if (v2)
  {
    *(a1 + 56) = 0;
    CFRelease(v2);
  }

  v3 = *(a1 + 64);
  if (v3)
  {
    *(a1 + 64) = 0;
    CFRelease(v3);
  }

  *(a1 + 72) = 0;
  v4 = *(a1 + 80);
  if (v4)
  {
    *(a1 + 80) = 0;
    CFRelease(v4);
  }

  v5 = *(a1 + 88);
  if (v5)
  {
    *(a1 + 88) = 0;
    CFRelease(v5);
  }

  *(a1 + 96) = 0;
  v6 = *(a1 + 112);
  if (v6)
  {
    *(a1 + 112) = 0;
    CFRelease(v6);
  }

  v7 = *(a1 + 104);
  if (v7)
  {
    *(a1 + 104) = 0;
    CFRelease(v7);
  }

  v8 = *(a1 + 120);
  if (v8)
  {
    *(a1 + 120) = 0;
    CFRelease(v8);
  }

  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  result = 0.0;
  *(a1 + 136) = 0u;
  v11 = (a1 + 136);
  *(v11 - 2) = Mutable;
  v11[1] = 0u;
  v11[2] = 0u;
  v11[3] = 0u;
  v11[4] = 0u;
  v11[5] = 0u;
  v11[6] = 0u;
  v11[7] = 0u;
  v11[8] = 0u;
  v11[9] = 0u;
  v11[10] = 0u;
  v11[11] = 0u;
  v11[12] = 0u;
  v11[13] = 0u;
  v11[14] = 0u;
  v11[15] = 0u;
  v11[16] = 0u;
  v11[17] = 0u;
  v11[18] = 0u;
  v11[19] = 0u;
  v11[20] = 0u;
  v11[21] = 0u;
  v11[22] = 0u;
  v11[23] = 0u;
  v11[24] = 0u;
  v11[25] = 0u;
  v11[26] = 0u;
  v11[27] = 0u;
  v11[28] = 0u;
  v11[29] = 0u;
  v11[30] = 0u;
  v11[31] = 0u;
  return result;
}

uint64_t SecOTRSessionCreateFromID(uint64_t a1, const void *a2, const void *a3)
{
  SecOTRSessionGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  if (SecOTRGetDefaultsWriteSeconds_sdOnceToken != -1)
  {
    dispatch_once(&SecOTRGetDefaultsWriteSeconds_sdOnceToken, &__block_literal_global_12746);
  }

  *(Instance + 128) = dispatch_queue_create("OTRSession", 0);
  if (a2)
  {
    CFRetain(a2);
  }

  *(Instance + 24) = a2;
  if (a3)
  {
    CFRetain(a3);
  }

  *(Instance + 32) = a3;
  *(Instance + 648) = 0;
  *(Instance + 650) = 0;
  *(Instance + 672) = 0;
  *(Instance + 664) = 0;
  *(Instance + 656) = 0;
  *(Instance + 56) = 0;
  *(Instance + 64) = 0;
  *(Instance + 80) = 0;
  *(Instance + 88) = 0;
  *(Instance + 112) = 0;
  *(Instance + 120) = 0;
  *(Instance + 104) = 0;
  *(Instance + 680) = 1;
  SecOTRSessionResetInternal(Instance);
  v6 = SecOTRPublicIdentityCopyFromPrivate(*MEMORY[0x1E695E480], *(Instance + 24), 0);
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __SecOTRSessionCreateFromID_block_invoke;
  v8[3] = &__block_descriptor_tmp_18_12748;
  v8[4] = Instance;
  SecOTRPIPerformWithSerializationString(v6, v8);
  if (v6)
  {
    CFRelease(v6);
  }

  return Instance;
}

void __SecOTRSessionCreateFromID_block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(v2 + 32);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SecOTRSessionCreateFromID_block_invoke_2;
  v4[3] = &__block_descriptor_tmp_17_12756;
  v4[4] = v2;
  v4[5] = a2;
  SecOTRPIPerformWithSerializationString(v3, v4);
}

void SecOTRPIPerformWithSerializationString(uint64_t a1, uint64_t a2)
{
  v4 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  SecOTRPIAppendSerialization(a1, Mutable, 0);
  if (Mutable)
  {
    Length = CFDataGetLength(Mutable);
    v7 = CFStringCreateMutable(v4, 2 * Length);
    BytePtr = CFDataGetBytePtr(Mutable);
    v9 = CFDataGetLength(Mutable);
    if (v9 >= 1)
    {
      v10 = v9;
      do
      {
        v11 = *BytePtr++;
        CFStringAppendFormat(v7, 0, @"%02X", v11);
        --v10;
      }

      while (v10);
    }

    (*(a2 + 16))(a2, v7);
    CFRelease(v7);
  }

  else
  {
    Mutable = @"(null)";
    (*(a2 + 16))(a2, @"(null)");
  }

  CFRelease(Mutable);
}

void __SecOTRSessionCreateFromID_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("otr");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = a2;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "%@ Creating with M: %@, T: %@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

CFIndex __SecOTRGetDefaultsWriteSeconds_block_invoke()
{
  keyExistsAndHasValidFormat = 0;
  result = CFPreferencesGetAppIntegerValue(@"OTR", @"com.apple.security", &keyExistsAndHasValidFormat);
  v1 = 900;
  if (keyExistsAndHasValidFormat)
  {
    v1 = result;
  }

  SecOTRGetDefaultsWriteSeconds_seconds = v1;
  return result;
}

uint64_t SecOTRSessionCreateFromIDAndFlags(uint64_t a1, const void *a2, const void *a3, char a4)
{
  if (SecOTRGetDefaultsWriteSeconds_sdOnceToken != -1)
  {
    dispatch_once(&SecOTRGetDefaultsWriteSeconds_sdOnceToken, &__block_literal_global_12746);
  }

  v8 = SecOTRGetDefaultsWriteSeconds_seconds;
  result = SecOTRSessionCreateFromID(a1, a2, a3);
  if (a4)
  {
    *(result + 648) = 1;
    if ((a4 & 2) == 0)
    {
LABEL_5:
      if ((a4 & 4) == 0)
      {
        goto LABEL_6;
      }

      goto LABEL_11;
    }
  }

  else if ((a4 & 2) == 0)
  {
    goto LABEL_5;
  }

  *(result + 649) = 1;
  if ((a4 & 4) == 0)
  {
LABEL_6:
    if ((a4 & 8) == 0)
    {
      return result;
    }

    goto LABEL_7;
  }

LABEL_11:
  *(result + 650) = 1;
  if ((a4 & 8) == 0)
  {
    return result;
  }

LABEL_7:
  *(result + 656) = v8;
  return result;
}

uint64_t SecOTRSessionCreateFromData(uint64_t a1, const __CFData *a2)
{
  if (!a2)
  {
    return 0;
  }

  SecOTRSessionGetTypeID();
  Instance = _CFRuntimeCreateInstance();
  BytePtr = CFDataGetBytePtr(a2);
  bytes = BytePtr;
  Length = CFDataGetLength(a2);
  v68 = Length;
  if (SecOTRGetDefaultsWriteSeconds_sdOnceToken != -1)
  {
    dispatch_once(&SecOTRGetDefaultsWriteSeconds_sdOnceToken, &__block_literal_global_12746);
  }

  v6 = dispatch_queue_create("OTRSession", 0);
  *(Instance + 104) = 0;
  *(Instance + 128) = v6;
  *(Instance + 80) = 0;
  *(Instance + 56) = 0;
  *(Instance + 648) = 0;
  *(Instance + 672) = 0;
  *(Instance + 664) = 0;
  *(Instance + 656) = 0;
  *(Instance + 24) = 0;
  *(Instance + 32) = 0;
  *(Instance + 64) = 0;
  *(Instance + 88) = 0;
  *(Instance + 112) = 0;
  *(Instance + 680) = 1;
  *(Instance + 232) = 0u;
  *(Instance + 248) = 0u;
  *(Instance + 200) = 0u;
  *(Instance + 216) = 0u;
  *(Instance + 168) = 0u;
  *(Instance + 184) = 0u;
  *(Instance + 152) = 0u;
  *(Instance + 136) = 0u;
  *(Instance + 616) = 0u;
  *(Instance + 632) = 0u;
  *(Instance + 584) = 0u;
  *(Instance + 600) = 0u;
  *(Instance + 552) = 0u;
  *(Instance + 568) = 0u;
  *(Instance + 520) = 0u;
  *(Instance + 536) = 0u;
  *(Instance + 488) = 0u;
  *(Instance + 504) = 0u;
  *(Instance + 456) = 0u;
  *(Instance + 472) = 0u;
  *(Instance + 424) = 0u;
  *(Instance + 440) = 0u;
  *(Instance + 392) = 0u;
  *(Instance + 408) = 0u;
  *(Instance + 360) = 0u;
  *(Instance + 376) = 0u;
  *(Instance + 328) = 0u;
  *(Instance + 344) = 0u;
  *(Instance + 296) = 0u;
  *(Instance + 312) = 0u;
  *(Instance + 264) = 0u;
  *(Instance + 280) = 0u;
  if (!Length)
  {
    goto LABEL_76;
  }

  v7 = *BytePtr;
  bytes = BytePtr + 1;
  v68 = Length - 1;
  if (v7 > 6)
  {
    goto LABEL_76;
  }

  if (Length < 5)
  {
    goto LABEL_76;
  }

  *(Instance + 16) = bswap32(*(BytePtr + 1));
  v68 = Length - 5;
  bytes = BytePtr + 5;
  v8 = *MEMORY[0x1E695E480];
  v9 = SecOTRFullIdentityCreateFromBytes(*MEMORY[0x1E695E480], &bytes, &v68, 0);
  *(Instance + 24) = v9;
  if (!v9)
  {
    goto LABEL_76;
  }

  v10 = SecOTRPublicIdentityCreateFromBytes(v8, &bytes, &v68, 0);
  *(Instance + 32) = v10;
  if (!v10)
  {
    goto LABEL_76;
  }

  v11 = v68;
  v12 = v68 - 17;
  if (v68 < 0x11)
  {
    goto LABEL_76;
  }

  v13 = bytes;
  *(Instance + 40) = *bytes;
  v14 = v13[16];
  v15 = v13 + 17;
  v68 = v12;
  bytes = v13 + 17;
  if (v14)
  {
    if (v12 < 4 || (v16 = bswap32(*(v13 + 17)), v15 = v13 + 21, v12 = v11 - 21, v68 = v11 - 21, bytes = v13 + 21, v11 - 21 < v16))
    {
      Mutable = 0;
    }

    else
    {
      Mutable = CFDataCreateMutable(v8, 0);
      CFDataAppendBytes(Mutable, bytes, v16);
      v15 = &bytes[v16];
      v12 = v68 - v16;
      v68 -= v16;
      bytes += v16;
    }

    *(Instance + 56) = Mutable;
  }

  if (v7 < 2)
  {
    goto LABEL_25;
  }

  if (v12)
  {
    v18 = v15 + 1;
    v19 = *v15;
    v20 = v12 - 1;
    v68 = v12 - 1;
    bytes = v15 + 1;
    if (v19)
    {
      v21 = v12 >= 5;
      v22 = v12 - 5;
      if (v21)
      {
        v23 = bswap32(*(v15 + 1));
        v18 = v15 + 5;
        v68 = v22;
        bytes = v15 + 5;
        if (v22 < v23)
        {
          v66 = 0;
          v20 = v22;
        }

        else
        {
          v66 = CFDataCreateMutable(v8, 0);
          CFDataAppendBytes(v66, bytes, v23);
          v18 = &bytes[v23];
          v20 = v68 - v23;
          v68 -= v23;
          bytes += v23;
        }
      }

      else
      {
        v66 = 0;
      }

      *(Instance + 64) = v66;
    }

    v15 = v18;
  }

  else
  {
    v20 = 0;
  }

  v12 = v20;
  if (v7 == 2)
  {
LABEL_25:
    if (!v12)
    {
      goto LABEL_76;
    }

    v24 = *v15++;
    v20 = v12 - 1;
    v68 = v12 - 1;
    bytes = v15;
    if (v24 && !*(Instance + 16))
    {
      *(Instance + 16) = 4;
    }
  }

  v25 = v20 - 4;
  if (v20 < 4)
  {
    goto LABEL_76;
  }

  v26 = bswap32(*v15);
  *(Instance + 72) = v26;
  v68 = v25;
  bytes = v15 + 4;
  if (v26)
  {
    v27 = SecOTRFullDHKCreateFromBytes(v8, &bytes, &v68);
    *(Instance + 80) = v27;
    if (!v27)
    {
      goto LABEL_76;
    }

    v28 = SecOTRFullDHKCreateFromBytes(v8, &bytes, &v68);
    *(Instance + 88) = v28;
    if (!v28)
    {
      goto LABEL_76;
    }

    v25 = v68;
  }

  if (!v25 || (v29 = bytes, v30 = *bytes, ++bytes, v68 = v25 - 1, v31 = v25 - 5, v25 < 5))
  {
LABEL_76:
    CFRelease(Instance);
    return 0;
  }

  v32 = bswap32(*(v29 + 1));
  *(Instance + 96) = v32;
  v68 = v31;
  bytes = v29 + 5;
  if (v7 > 4)
  {
    if (!v30)
    {
      goto LABEL_44;
    }

    if (v30 == 1)
    {
      goto LABEL_43;
    }

    goto LABEL_42;
  }

  if (!v32)
  {
    goto LABEL_44;
  }

  if (v32 != 1)
  {
LABEL_42:
    v33 = SecOTRPublicDHKCreateFromSerialization(v8, &bytes, &v68);
    *(Instance + 104) = v33;
    if (!v33)
    {
      goto LABEL_76;
    }
  }

LABEL_43:
  v34 = SecOTRPublicDHKCreateFromSerialization(v8, &bytes, &v68);
  *(Instance + 112) = v34;
  if (!v34)
  {
    goto LABEL_76;
  }

LABEL_44:
  v67 = 0xAAAAAAAAAAAAAAAALL;
  SecOTRSFindKeysForMessage(Instance, *(Instance + 80), *(Instance + 112), 0, 0, 0, &v67);
  if (!v67)
  {
    goto LABEL_76;
  }

  v35 = v68 - 8;
  if (v68 < 8)
  {
    goto LABEL_76;
  }

  v36 = bytes + 8;
  *v67 = bswap64(*bytes);
  v68 = v35;
  bytes = v36;
  SecOTRSFindKeysForMessage(Instance, *(Instance + 80), *(Instance + 112), 1, 0, 0, &v67);
  if (!v67)
  {
    goto LABEL_76;
  }

  v37 = v68 - 8;
  if (v68 < 8)
  {
    goto LABEL_76;
  }

  v38 = bytes + 8;
  *v67 = bswap64(*bytes);
  v68 = v37;
  bytes = v38;
  SecOTRSFindKeysForMessage(Instance, *(Instance + 80), *(Instance + 104), 0, 0, 0, &v67);
  if (!v67)
  {
    goto LABEL_76;
  }

  v39 = v68 - 8;
  if (v68 < 8)
  {
    goto LABEL_76;
  }

  v40 = bytes + 8;
  *v67 = bswap64(*bytes);
  v68 = v39;
  bytes = v40;
  SecOTRSFindKeysForMessage(Instance, *(Instance + 80), *(Instance + 104), 1, 0, 0, &v67);
  if (!v67)
  {
    goto LABEL_76;
  }

  v41 = v68 - 8;
  if (v68 < 8)
  {
    goto LABEL_76;
  }

  v42 = bytes + 8;
  *v67 = bswap64(*bytes);
  v68 = v41;
  bytes = v42;
  SecOTRSFindKeysForMessage(Instance, *(Instance + 88), *(Instance + 112), 0, 0, 0, &v67);
  if (!v67)
  {
    goto LABEL_76;
  }

  v43 = v68 - 8;
  if (v68 < 8)
  {
    goto LABEL_76;
  }

  v44 = bytes + 8;
  *v67 = bswap64(*bytes);
  v68 = v43;
  bytes = v44;
  SecOTRSFindKeysForMessage(Instance, *(Instance + 88), *(Instance + 112), 1, 0, 0, &v67);
  if (!v67)
  {
    goto LABEL_76;
  }

  v45 = v68 - 8;
  if (v68 < 8)
  {
    goto LABEL_76;
  }

  v46 = bytes + 8;
  *v67 = bswap64(*bytes);
  v68 = v45;
  bytes = v46;
  SecOTRSFindKeysForMessage(Instance, *(Instance + 88), *(Instance + 104), 0, 0, 0, &v67);
  if (!v67)
  {
    goto LABEL_76;
  }

  v47 = v68 - 8;
  if (v68 < 8)
  {
    goto LABEL_76;
  }

  v48 = bytes + 8;
  *v67 = bswap64(*bytes);
  v68 = v47;
  bytes = v48;
  SecOTRSFindKeysForMessage(Instance, *(Instance + 88), *(Instance + 104), 1, 0, 0, &v67);
  if (!v67)
  {
    goto LABEL_76;
  }

  v49 = v68;
  v50 = v68 - 8;
  if (v68 < 8)
  {
    goto LABEL_76;
  }

  v51 = bytes;
  v52 = bytes + 8;
  *v67 = bswap64(*bytes);
  v68 = v50;
  bytes = v52;
  if (v50 < 4 || (v53 = bswap32(*(v51 + 2)), v68 = v49 - 12, bytes = v51 + 12, v49 - 12 < v53))
  {
    *(Instance + 120) = 0;
    goto LABEL_76;
  }

  v54 = CFDataCreateMutable(v8, 0);
  CFDataAppendBytes(v54, bytes, v53);
  v55 = v68;
  v56 = &bytes[v53];
  v57 = v68 - v53;
  v68 -= v53;
  bytes += v53;
  *(Instance + 120) = v54;
  if (!v54 || v55 == v53)
  {
    goto LABEL_76;
  }

  v58 = *v56;
  bytes = v56 + 1;
  v68 = v57 - 1;
  *(Instance + 648) = v58 != 0;
  if (v7 < 4)
  {
    return Instance;
  }

  if (v57 == 1)
  {
    goto LABEL_76;
  }

  v59 = v56[1];
  bytes = v56 + 2;
  v68 = v57 - 2;
  *(Instance + 649) = v59 != 0;
  if (v7 == 4)
  {
    return Instance;
  }

  if (v57 == 2)
  {
    goto LABEL_76;
  }

  v60 = v56[2];
  bytes = v56 + 3;
  v68 = v57 - 3;
  *(Instance + 650) = v60 != 0;
  if (v7 == 6)
  {
    if ((v57 - 3) >= 8)
    {
      *(Instance + 656) = bswap64(*(v56 + 3));
      v68 = v57 - 11;
      bytes = v56 + 11;
      if (v57 != 11)
      {
        v61 = v56[11];
        bytes = v56 + 12;
        v68 = v57 - 12;
        *(Instance + 664) = v61 != 0;
        if ((v57 - 12) >= 8)
        {
          v62 = *(v56 + 12);
          bytes = v56 + 20;
          v68 = v57 - 20;
          if (v57 != 20)
          {
            v63 = v56[20];
            v64 = v56 + 21;
            *(Instance + 680) = v63 != 0;
            v68 = v57 - 21;
            bytes = v64;
            if (v57 != 21)
            {
              *(Instance + 681) = *v64 != 0;
              *(Instance + 672) = bswap64(v62);
              return Instance;
            }
          }
        }
      }
    }

    goto LABEL_76;
  }

  return Instance;
}

void SecOTRSFindKeysForMessage(uint64_t a1, uint64_t a2, uint64_t a3, int a4, void *a5, void *a6, uint64_t **a7)
{
  if (a2 && a3)
  {
    v28 = a7;
    v11 = 0;
    v12 = 0;
    v13 = (a1 + 136);
    v14 = a1 + 156;
    v15 = a1 + 136;
    while (1)
    {
      v16 = &v13[8 * v11];
      if (!timingsafe_bcmp(v16, (a2 + 160), 0x14uLL) && !timingsafe_bcmp(v16 + 20, (a3 + 128), 0x14uLL))
      {
        break;
      }

      if (!v12)
      {
        v17 = 0;
        do
        {
          v18 = *(v15 + v17);
          if (v17 > 0x12)
          {
            break;
          }

          ++v17;
        }

        while (!v18);
        if (v18)
        {
          v12 = 0;
        }

        else
        {
          v19 = 0;
          do
          {
            v20 = *(v14 + v19);
            if (v19 > 0x12)
            {
              break;
            }

            ++v19;
          }

          while (!v20);
          if (v20)
          {
            v12 = 0;
          }

          else
          {
            v12 = &v13[8 * v11];
          }
        }
      }

      ++v11;
      v15 += 128;
      v14 += 128;
      if (v11 == 4)
      {
        if (v12)
        {
          v16 = v12;
        }

        else
        {
          v16 = v13;
        }

        v21 = *(a2 + 160);
        *(v16 + 4) = *(a2 + 176);
        *v16 = v21;
        v22 = *(a3 + 128);
        *(v16 + 9) = *(a3 + 144);
        *(v16 + 20) = v22;
        *(v16 + 14) = 0;
        *(v16 + 15) = 0;
        SecOTRDHKGenerateOTRKeys(a2, a3, v16 + 60, v16 + 40, (v16 + 6), v16 + 76);
        break;
      }
    }

    a7 = v28;
    if (a5)
    {
      v23 = 96;
      if (a4)
      {
        v23 = 60;
      }

      *a5 = v16 + v23;
    }

    if (a6)
    {
      v24 = 76;
      if (a4)
      {
        v24 = 40;
      }

      *a6 = v16 + v24;
    }

    if (v28)
    {
      v25 = 120;
      if (a4)
      {
        v25 = 112;
      }

      v26 = (v16 + v25);
      goto LABEL_41;
    }
  }

  else
  {
    if (a5)
    {
      *a5 = 0;
    }

    if (a6)
    {
      *a6 = 0;
    }

    if (a7)
    {
      v26 = &constant_zero;
LABEL_41:
      *a7 = v26;
    }
  }
}

uint64_t SecOTRSAppendSerialization(uint64_t a1, CFDataRef theData)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v2 = 4294967246;
  v12 = -50;
  if (a1 && theData)
  {
    Length = CFDataGetLength(theData);
    v6 = *(a1 + 128);
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 0x40000000;
    block[2] = __SecOTRSAppendSerialization_block_invoke;
    block[3] = &unk_1E70E0CE0;
    block[5] = theData;
    block[6] = a1;
    block[4] = &v9;
    dispatch_sync(v6, block);
    if (*(v10 + 6))
    {
      CFDataSetLength(theData, Length);
      v2 = *(v10 + 6);
    }

    else
    {
      v2 = 0;
    }
  }

  _Block_object_dispose(&v9, 8);
  return v2;
}

void __SecOTRSAppendSerialization_block_invoke(uint64_t a1)
{
  v58 = *MEMORY[0x1E69E9840];
  bytes = 6;
  CFDataAppendBytes(*(a1 + 40), &bytes, 1);
  v2 = *(a1 + 40);
  *v57 = bswap32(*(*(a1 + 48) + 16));
  CFDataAppendBytes(v2, v57, 4);
  if (SecOTRFIAppendSerialization(*(*(a1 + 48) + 24), *(a1 + 40), 0))
  {
    v3 = 0;
  }

  else
  {
    v3 = -50;
  }

  *(*(*(a1 + 32) + 8) + 24) = v3;
  if (!*(*(*(a1 + 32) + 8) + 24))
  {
    v4 = SecOTRPIAppendSerialization(*(*(a1 + 48) + 32), *(a1 + 40), 0) ? 0 : -50;
    *(*(*(a1 + 32) + 8) + 24) = v4;
    if (!*(*(*(a1 + 32) + 8) + 24))
    {
      CFDataAppendBytes(*(a1 + 40), (*(a1 + 48) + 40), 16);
      v5 = *(a1 + 40);
      if (*(*(a1 + 48) + 56))
      {
        v57[0] = 1;
        CFDataAppendBytes(v5, v57, 1);
        v6 = *(a1 + 40);
        v7 = *(*(a1 + 48) + 56);
        Length = CFDataGetLength(v7);
        BytePtr = CFDataGetBytePtr(v7);
        *v57 = bswap32(Length);
        CFDataAppendBytes(v6, v57, 4);
        v5 = v6;
        v10 = BytePtr;
        v11 = Length;
      }

      else
      {
        v57[0] = 0;
        v10 = v57;
        v11 = 1;
      }

      CFDataAppendBytes(v5, v10, v11);
      v12 = *(a1 + 40);
      if (*(*(a1 + 48) + 64))
      {
        v57[0] = 1;
        CFDataAppendBytes(v12, v57, 1);
        v13 = *(a1 + 40);
        v14 = *(*(a1 + 48) + 64);
        v15 = CFDataGetLength(v14);
        v16 = CFDataGetBytePtr(v14);
        *v57 = bswap32(v15);
        CFDataAppendBytes(v13, v57, 4);
        v12 = v13;
        v17 = v16;
        v18 = v15;
      }

      else
      {
        v57[0] = 0;
        v17 = v57;
        v18 = 1;
      }

      CFDataAppendBytes(v12, v17, v18);
      v19 = *(a1 + 40);
      *v57 = bswap32(*(*(a1 + 48) + 72));
      CFDataAppendBytes(v19, v57, 4);
      v20 = *(a1 + 48);
      if (*(v20 + 72))
      {
        SecFDHKAppendSerialization(*(v20 + 80), *(a1 + 40));
        SecFDHKAppendSerialization(*(*(a1 + 48) + 88), *(a1 + 40));
        v20 = *(a1 + 48);
      }

      v22 = *(v20 + 104);
      v21 = *(v20 + 112);
      v23 = v22 == 0;
      v24 = v22 != 0;
      if (v23)
      {
        v25 = 1;
      }

      else
      {
        v25 = 2;
      }

      if (v21)
      {
        v26 = v25;
      }

      else
      {
        v26 = v24;
      }

      v27 = *(a1 + 40);
      v57[0] = v26;
      CFDataAppendBytes(v27, v57, 1);
      v28 = *(a1 + 40);
      *v57 = bswap32(*(*(a1 + 48) + 96));
      CFDataAppendBytes(v28, v57, 4);
      v29 = *(a1 + 48);
      v30 = v29[13];
      if (v30)
      {
        AppendECPublicKeyAsDATA(*(a1 + 40), (v30 + 16));
        v29 = *(a1 + 48);
      }

      v31 = v29[14];
      if (v31)
      {
        AppendECPublicKeyAsDATA(*(a1 + 40), (v31 + 16));
        v29 = *(a1 + 48);
        v32 = v29[14];
      }

      else
      {
        v32 = 0;
      }

      v55 = 0xAAAAAAAAAAAAAAAALL;
      SecOTRSFindKeysForMessage(v29, v29[10], v32, 0, 0, 0, &v55);
      v33 = *(a1 + 40);
      *v57 = bswap64(*v55);
      CFDataAppendBytes(v33, v57, 8);
      SecOTRSFindKeysForMessage(*(a1 + 48), *(*(a1 + 48) + 80), *(*(a1 + 48) + 112), 1, 0, 0, &v55);
      v34 = *(a1 + 40);
      *v57 = bswap64(*v55);
      CFDataAppendBytes(v34, v57, 8);
      SecOTRSFindKeysForMessage(*(a1 + 48), *(*(a1 + 48) + 80), *(*(a1 + 48) + 104), 0, 0, 0, &v55);
      v35 = *(a1 + 40);
      *v57 = bswap64(*v55);
      CFDataAppendBytes(v35, v57, 8);
      SecOTRSFindKeysForMessage(*(a1 + 48), *(*(a1 + 48) + 80), *(*(a1 + 48) + 104), 1, 0, 0, &v55);
      v36 = *(a1 + 40);
      *v57 = bswap64(*v55);
      CFDataAppendBytes(v36, v57, 8);
      SecOTRSFindKeysForMessage(*(a1 + 48), *(*(a1 + 48) + 88), *(*(a1 + 48) + 112), 0, 0, 0, &v55);
      v37 = *(a1 + 40);
      *v57 = bswap64(*v55);
      CFDataAppendBytes(v37, v57, 8);
      SecOTRSFindKeysForMessage(*(a1 + 48), *(*(a1 + 48) + 88), *(*(a1 + 48) + 112), 1, 0, 0, &v55);
      v38 = *(a1 + 40);
      *v57 = bswap64(*v55);
      CFDataAppendBytes(v38, v57, 8);
      SecOTRSFindKeysForMessage(*(a1 + 48), *(*(a1 + 48) + 88), *(*(a1 + 48) + 104), 0, 0, 0, &v55);
      v39 = *(a1 + 40);
      *v57 = bswap64(*v55);
      CFDataAppendBytes(v39, v57, 8);
      SecOTRSFindKeysForMessage(*(a1 + 48), *(*(a1 + 48) + 88), *(*(a1 + 48) + 104), 1, 0, 0, &v55);
      v40 = *(a1 + 40);
      *v57 = bswap64(*v55);
      CFDataAppendBytes(v40, v57, 8);
      v41 = *(a1 + 40);
      v42 = *(*(a1 + 48) + 120);
      v43 = CFDataGetLength(v42);
      v44 = CFDataGetBytePtr(v42);
      *v57 = bswap32(v43);
      CFDataAppendBytes(v41, v57, 4);
      CFDataAppendBytes(v41, v44, v43);
      v45 = *(a1 + 40);
      v57[0] = *(*(a1 + 48) + 648);
      CFDataAppendBytes(v45, v57, 1);
      v46 = *(a1 + 40);
      v57[0] = *(*(a1 + 48) + 649);
      CFDataAppendBytes(v46, v57, 1);
      v47 = *(a1 + 40);
      v57[0] = *(*(a1 + 48) + 650);
      CFDataAppendBytes(v47, v57, 1);
      v48 = *(a1 + 40);
      v49 = *(*(a1 + 48) + 656);
      if (!v49)
      {
        v49 = constant_zero;
      }

      *v57 = bswap64(v49);
      CFDataAppendBytes(v48, v57, 8);
      v50 = *(a1 + 40);
      v57[0] = *(*(a1 + 48) + 664);
      CFDataAppendBytes(v50, v57, 1);
      v51 = *(a1 + 40);
      *v57 = bswap64(*(*(a1 + 48) + 672));
      CFDataAppendBytes(v51, v57, 8);
      v52 = *(a1 + 40);
      v57[0] = *(*(a1 + 48) + 680);
      CFDataAppendBytes(v52, v57, 1);
      v53 = *(a1 + 40);
      v57[0] = *(*(a1 + 48) + 681);
      CFDataAppendBytes(v53, v57, 1);
    }
  }

  v54 = *MEMORY[0x1E69E9840];
}

uint64_t SecOTRSIsForKeys(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v10 = 0;
  v3 = *(a1 + 128);
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v6[2] = __SecOTRSIsForKeys_block_invoke;
  v6[3] = &unk_1E70E0D08;
  v6[4] = &v7;
  v6[5] = a1;
  v6[6] = a2;
  v6[7] = a3;
  dispatch_sync(v3, v6);
  v4 = *(v8 + 24);
  _Block_object_dispose(&v7, 8);
  return v4;
}

const void *__SecOTRSIsForKeys_block_invoke(void *a1)
{
  v3 = a1[5];
  v2 = a1[6];
  result = *(*(v3 + 24) + 16);
  if (v2)
  {
    v5 = result == 0;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
    if (result == v2)
    {
      goto LABEL_10;
    }

LABEL_16:
    v8 = 0;
    goto LABEL_17;
  }

  result = CFEqual(result, v2);
  if (!result)
  {
    goto LABEL_16;
  }

  v3 = a1[5];
LABEL_10:
  v6 = a1[7];
  result = *(*(v3 + 32) + 16);
  if (v6)
  {
    v7 = result == 0;
  }

  else
  {
    v7 = 1;
  }

  if (v7)
  {
    v8 = result == v6;
  }

  else
  {
    result = CFEqual(result, v6);
    v8 = result != 0;
  }

LABEL_17:
  *(*(a1[4] + 8) + 24) = v8;
  return result;
}

uint64_t SecOTRSGetIsReadyForMessages(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = -86;
  v1 = *(a1 + 128);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SecOTRSGetIsReadyForMessages_block_invoke;
  v4[3] = &unk_1E70E0D30;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

uint64_t SecOTRSGetIsIdle(uint64_t a1)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = -86;
  v1 = *(a1 + 128);
  v4[0] = MEMORY[0x1E69E9820];
  v4[1] = 0x40000000;
  v4[2] = __SecOTRSGetIsIdle_block_invoke;
  v4[3] = &unk_1E70E0D58;
  v4[4] = &v5;
  v4[5] = a1;
  dispatch_sync(v1, v4);
  v2 = *(v6 + 24);
  _Block_object_dispose(&v5, 8);
  return v2;
}

void SecOTRSPrecalculateKeysInternal(uint64_t *a1)
{
  SecOTRSPrecalculateForPair(a1, a1[10], a1[14]);
  SecOTRSPrecalculateForPair(a1, a1[11], a1[14]);
  SecOTRSPrecalculateForPair(a1, a1[10], a1[13]);
  v2 = a1[11];
  v3 = a1[13];

  SecOTRSPrecalculateForPair(a1, v2, v3);
}

void SecOTRSPrecalculateForPair(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 && a3)
  {
    SecOTRSFindKeysForMessage(a1, a2, a3, 1, 0, 0, 0);

    SecOTRSFindKeysForMessage(a1, a2, a3, 0, 0, 0, 0);
  }
}

uint64_t SecOTRSGetMessageKind(uint64_t a1, const __CFData *a2)
{
  v2 = SecOTRSGetMessageType(a2);
  if (v2 > 0x31u)
  {
    return 2;
  }

  if (((1 << v2) & 0x3000300000008) != 0)
  {
    return 1;
  }

  if (((1 << v2) & 0x60404) != 0)
  {
    return 0;
  }

  else
  {
    return 2;
  }
}

uint64_t SecOTRSSignAndProtectMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = 0;
  v8 = &v7;
  v9 = 0x2000000000;
  v3 = 4294967246;
  v10 = -50;
  if (a1 && a2 && a3 && *(a1 + 16) == 4)
  {
    v4 = *(a1 + 128);
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __SecOTRSSignAndProtectMessage_block_invoke;
    v6[3] = &unk_1E70E0D80;
    v6[4] = &v7;
    v6[5] = a1;
    v6[6] = a3;
    v6[7] = a2;
    dispatch_sync(v4, v6);
    v3 = *(v8 + 6);
  }

  _Block_object_dispose(&v7, 8);
  return v3;
}

void __SecOTRSSignAndProtectMessage_block_invoke(uint64_t a1)
{
  v24 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  if (*(v2 + 80))
  {
    v3 = *(v2 + 112);
    if (v3)
    {
      memset(v22, 170, sizeof(v22));
      v4 = *(v2 + 96);
      SecOTRSRollIfTime(v2);
      v5 = *(a1 + 40);
      if (*(v5 + 664) == 1 && *(v5 + 104))
      {
        v4 = *(v5 + 96) - 1;
        v3 = *(v5 + 104);
      }

      SecOTRSFindKeysForMessage(v5, *(v5 + 80), v3, 1, &v22[2], &v22[1], v22);
      if ((*(*(a1 + 40) + 648) & 1) != 0 || (Mutable = *(a1 + 48)) == 0)
      {
        Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
      }

      else
      {
        CFRetain(*(a1 + 48));
      }

      v7 = *(a1 + 40);
      v8 = *(a1 + 56);
      v9 = v22[2];
      v10 = v22[0];
      if (*(v7 + 649) == 1)
      {
        SecOTRSSignAndProtectCompact_locked(*(a1 + 40), *(a1 + 56), Mutable, v22[2], v22[1], v22[0], v4, v3);
      }

      else
      {
        CFDataGetLength(Mutable);
        *bytes = 512;
        CFDataAppendBytes(Mutable, bytes, 2);
        bytes[0] = 3;
        CFDataAppendBytes(Mutable, bytes, 1);
        bytes[0] = 0;
        CFDataAppendBytes(Mutable, bytes, 1);
        *bytes = bswap32(*(v7 + 72));
        CFDataAppendBytes(Mutable, bytes, 4);
        *bytes = bswap32(v4);
        CFDataAppendBytes(Mutable, bytes, 4);
        SecFDHKAppendPublicSerialization(*(v7 + 88), Mutable);
        v11 = *v10 + 1;
        *v10 = v11;
        *bytes = bswap64(v11);
        CFDataAppendBytes(Mutable, bytes, 8);
        Length = CFDataGetLength(v8);
        *bytes = bswap32(Length);
        CFDataAppendBytes(Mutable, bytes, 4);
        v13 = CFDataGetLength(Mutable);
        CFDataIncreaseLength(Mutable, Length);
        MutableBytePtr = CFDataGetMutableBytePtr(Mutable);
        v15 = *v10;
        BytePtr = CFDataGetBytePtr(v8);
        AES_CTR_HighHalf_Transform(16, v9, v15, Length, BytePtr, &MutableBytePtr[v13]);
        CFDataGetLength(Mutable);
        CFDataGetLength(Mutable);
        CFDataIncreaseLength(Mutable, 20);
        CFDataGetMutableBytePtr(Mutable);
        ccsha1_di();
        CFDataGetBytePtr(Mutable);
        cchmac();
        v17 = *(v7 + 120);
        v18 = CFDataGetBytePtr(v17);
        v19 = CFDataGetLength(v17);
        CFDataAppendBytes(Mutable, v18, v19);
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
      if (!*(*(*(a1 + 32) + 8) + 24))
      {
        v20 = *(a1 + 40);
        if (*(v20 + 648) == 1)
        {
          SecOTRPrepareOutgoingBytes(Mutable, *(a1 + 48));
          v20 = *(a1 + 40);
        }

        CFDataSetLength(*(v20 + 120), 0);
      }

      if (Mutable)
      {
        CFRelease(Mutable);
      }

      *(*(*(a1 + 32) + 8) + 24) = 0;
    }
  }

  v21 = *MEMORY[0x1E69E9840];
}

void SecOTRSRollIfTime(uint64_t a1)
{
  Current = CFAbsoluteTimeGetCurrent();
  v3 = *(a1 + 672);
  if (v3 < Current || v3 > Current + *(a1 + 656))
  {
    *(a1 + 664) = 0;
    if (*(a1 + 681) == 1)
    {
      SecOTRGenerateNewProposedKey(a1);
      v4 = 0;
      *(a1 + 681) = 0;
    }

    else
    {
      v4 = 1;
    }

    *(a1 + 680) = v4;
    *(a1 + 672) = 0;
  }
}

void SecOTRSSignAndProtectCompact_locked(uint64_t a1, const __CFData *a2, CFDataRef theData, uint64_t a4, uint64_t a5, uint64_t *a6, char a7, uint64_t a8)
{
  v34 = a8;
  v35 = a5;
  v38 = *MEMORY[0x1E69E9840];
  CFDataGetLength(theData);
  v14 = *(a1 + 650);
  if (*(a1 + 650))
  {
    v15 = 48;
  }

  else
  {
    v15 = 32;
  }

  bytes[0] = v15 & 0xFE | a7 & 1;
  CFDataAppendBytes(theData, bytes, 1);
  SecFDHKAppendCompactPublicSerialization(*(a1 + 88), theData);
  v16 = *a6 + 1;
  *a6 = v16;
  v17 = &v37;
  memset(bytes, 170, sizeof(bytes));
  v37 = v16 & 0x7F;
  if (v16 >= 0x80)
  {
    do
    {
      v18 = v16 >> 14;
      v16 >>= 7;
      *--v17 = v16 | 0x80;
    }

    while (v18);
  }

  CFDataAppendBytes(theData, v17, bytes - v17 + 10);
  Length = CFDataGetLength(a2);
  v20 = CFDataGetLength(theData);
  CFDataIncreaseLength(theData, Length);
  MutableBytePtr = CFDataGetMutableBytePtr(theData);
  v22 = *a6;
  BytePtr = CFDataGetBytePtr(a2);
  AES_CTR_HighHalf_Transform(16, a4, v22, Length, BytePtr, &MutableBytePtr[v20]);
  if (v14)
  {
    v24 = CFDataGetLength(theData);
    CFDataIncreaseLength(theData, 20);
    v25 = &CFDataGetMutableBytePtr(theData)[v24];
    v26 = *(a1 + 80);
    v27 = *(v26 + 176);
    *v25 = *(v26 + 160);
    *(v25 + 4) = v27;
    v28 = CFDataGetLength(theData);
    CFDataIncreaseLength(theData, 20);
    v29 = &CFDataGetMutableBytePtr(theData)[v28];
    v30 = *(v34 + 144);
    *v29 = *(v34 + 128);
    *(v29 + 4) = v30;
  }

  v31 = CFDataGetLength(theData);
  MEMORY[0x1EEE9AC00](v31);
  memset(v33, 170, 20);
  ccsha1_di();
  CFDataGetBytePtr(theData);
  cchmac();
  CFDataAppendBytes(theData, v33, 16);
  v32 = *MEMORY[0x1E69E9840];
}

uint64_t SecOTRGenerateNewProposedKey(uint64_t a1)
{
  v2 = *(a1 + 80);
  v3 = (a1 + 136);
  v4 = 4;
  do
  {
    if (!timingsafe_bcmp(v3, (v2 + 160), 0x14uLL))
    {
      CFDataAppendBytes(*(a1 + 120), v3 + 76, 20);
      *(v3 + 6) = 0u;
      *(v3 + 7) = 0u;
      *(v3 + 4) = 0u;
      *(v3 + 5) = 0u;
      *(v3 + 2) = 0u;
      *(v3 + 3) = 0u;
      *v3 = 0u;
      *(v3 + 1) = 0u;
    }

    v3 += 128;
    --v4;
  }

  while (v4);
  v5 = *(a1 + 80);
  *(a1 + 80) = vextq_s8(v5, v5, 8uLL);
  result = SecFDHKNewKey(v5.i64[0]);
  ++*(a1 + 72);
  return result;
}

uint64_t SecOTRSetupInitialRemoteKey(uint64_t a1, uint64_t a2)
{
  *(a1 + 136) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 152) = 0u;
  v4 = *(a1 + 104);
  if (v4)
  {
    *(a1 + 104) = 0;
    CFRelease(v4);
  }

  v5 = *(a1 + 112);
  if (v5)
  {
    CFRelease(v5);
  }

  *(a1 + 112) = a2;
  *(a1 + 96) = 1;
  return 0;
}

uint64_t SOSOTRSRoll(uint64_t result)
{
  v1 = result;
  *(result + 664) = 0;
  if (*(result + 681) == 1)
  {
    result = SecOTRGenerateNewProposedKey(result);
    v2 = 0;
    *(v1 + 681) = 0;
  }

  else
  {
    v2 = 1;
  }

  *(v1 + 680) = v2;
  return result;
}

uint64_t SecOTRSVerifyAndExposeMessage(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  v11 = 0;
  v12 = &v11;
  v13 = 0x2000000000;
  v3 = 4294967246;
  v14 = -50;
  if (a1 && a2 && a3)
  {
    if (*(a1 + 16) == 4)
    {
      v6 = *(a1 + 128);
      v10[0] = MEMORY[0x1E69E9820];
      v10[1] = 0x40000000;
      v10[2] = __SecOTRSVerifyAndExposeMessage_block_invoke;
      v10[3] = &unk_1E70E0DA8;
      v10[4] = &v11;
      v10[5] = a2;
      v10[6] = a1;
      v10[7] = a3;
      dispatch_sync(v6, v10);
      v3 = *(v12 + 6);
    }

    else
    {
      v7 = secLogObjForScope("OTR");
      if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 134218498;
        v16 = a1;
        v17 = 2112;
        v18 = a2;
        v19 = 2112;
        v20 = a1;
        _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "session[%p]Cannot process message:%@, session is not done negotiating, session state: %@", buf, 0x20u);
      }

      v3 = 4294941965;
      *(v12 + 6) = -25331;
    }
  }

  _Block_object_dispose(&v11, 8);
  v8 = *MEMORY[0x1E69E9840];
  return v3;
}

void __SecOTRSVerifyAndExposeMessage_block_invoke(uint64_t a1)
{
  v1 = a1;
  v94[3] = *MEMORY[0x1E69E9840];
  v2 = SecOTRCopyIncomingBytes(*(a1 + 40));
  v3 = SecOTRSGetMessageType(v2);
  v4 = -25256;
  if (v3 > 0x31u)
  {
    goto LABEL_85;
  }

  if (((1 << v3) & 0x3000300000000) == 0)
  {
    if (v3 != 3)
    {
      goto LABEL_85;
    }

    v29 = v1[6];
    v30 = v1[7];
    BytePtr = CFDataGetBytePtr(v2);
    Length = CFDataGetLength(v2);
    if (Length >= 2)
    {
      if (__rev16(*BytePtr) != 2)
      {
        v34 = 0;
        v35 = 0;
        goto LABEL_105;
      }

      v33 = Length;
      if (Length != 2)
      {
        v34 = 0;
        v4 = -26275;
        if (Length == 3)
        {
          v35 = 0;
          goto LABEL_93;
        }

        v35 = 0;
        if (BytePtr[2] != 3)
        {
LABEL_93:
          *__b1 = MEMORY[0x1E69E9820];
          *&__b1[8] = 0x40000000;
          *&__b1[16] = __SecOTRVerifyAndExposeRaw_locked_block_invoke;
          v88 = &__block_descriptor_tmp_72_12775;
          v89 = v29;
          v90 = v34;
          v91 = v35;
          if (v2)
          {
            v67 = *MEMORY[0x1E695E480];
            v68 = CFDataGetLength(v2);
            Mutable = CFStringCreateMutable(v67, 2 * v68);
            v70 = CFDataGetBytePtr(v2);
            v71 = CFDataGetLength(v2);
            if (v71 >= 1)
            {
              v72 = v71;
              do
              {
                v73 = *v70++;
                CFStringAppendFormat(Mutable, 0, @"%02X", v73);
                --v72;
              }

              while (v72);
            }
          }

          else
          {
            Mutable = @"(null)";
          }

          (*&__b1[16])(__b1, Mutable);
          v64 = Mutable;
          goto LABEL_84;
        }

        if (BytePtr[3])
        {
          v34 = 0;
          v35 = 0;
          goto LABEL_93;
        }

        theDataa = v30;
        v36 = Length & 0xFFFFFFFFFFFFFFFCLL;
        if ((Length & 0xFFFFFFFFFFFFFFFCLL) != 4)
        {
          v37 = bswap32(*(BytePtr + 1));
          v38 = *(v29 + 96);
          if (v37 != v38 && (v37 != v38 - 1 || !*(v29 + 104)))
          {
            v34 = 0;
            v35 = 0;
            v66 = v37 + 1 >= v38;
            goto LABEL_90;
          }

          if (v36 != 8)
          {
            v39 = bswap32(*(BytePtr + 2));
            v40 = *(v29 + 72);
            if (v39 == v40 || v39 == v40 + 1 && *(v29 + 88))
            {
              v94[0] = 0xAAAAAAAAAAAAAAAALL;
              v85 = 0xAAAAAAAAAAAAAAAALL;
              v86 = 0xAAAAAAAAAAAAAAAALL;
              v10 = v39 == v40;
              v41 = 88;
              if (v10)
              {
                v41 = 80;
              }

              v35 = *(v29 + v41);
              v10 = v37 == v38;
              v42 = 104;
              if (v10)
              {
                v42 = 112;
              }

              v34 = *(v29 + v42);
              SecOTRSFindKeysForMessage(v29, v35, v34, 0, v94, &v86, &v85);
              if (v36 != 12)
              {
                v43 = bswap32(*(BytePtr + 3));
                v44 = v33 - 16 - v43;
                if (v33 - 16 >= v43)
                {
                  v84[1] = (BytePtr + 16);
                  v84[2] = v43;
                  if (v44 >= 8)
                  {
                    v45 = v43 + (BytePtr + 16);
                    v46 = bswap64(*v45);
                    if (v46 <= *v85)
                    {
                      v4 = -25328;
                      goto LABEL_93;
                    }

                    v79 = v39;
                    if ((v44 & 0xFFFFFFFFFFFFFFFCLL) != 8)
                    {
                      v47 = bswap32(*(v45 + 2));
                      v48 = v44 - 12;
                      v66 = v48 >= v47;
                      v49 = v48 - v47;
                      if (v66)
                      {
                        v77 = v35;
                        v83 = v1;
                        memset(__b1, 170, 20);
                        if (v49 < 0x14)
                        {
                          v4 = -26275;
                        }

                        else
                        {
                          v50 = (v45 + 12);
                          v51 = &v45[v47 + 12];
                          ccsha1_di();
                          cchmac();
                          if (!timingsafe_bcmp(__b1, v51, 0x14uLL))
                          {
                            v52 = CFDataGetLength(theDataa);
                            CFDataIncreaseLength(theDataa, v47);
                            MutableBytePtr = CFDataGetMutableBytePtr(theDataa);
                            AES_CTR_HighHalf_Transform(16, v94[0], v46, v47, v50, &MutableBytePtr[v52]);
                            *v85 = v46;
                            v54 = SecOTRPublicDHKCreateFromBytes(*MEMORY[0x1E695E480], &v84[1], &v84[2]);
                            if (v54 && v37 == *(v29 + 96))
                            {
                              SecOTRAcceptNewRemoteKey(v29, v54);
                            }

                            v1 = v83;
                            if (v79 == *(v29 + 72) + 1)
                            {
                              SecOTRSHandleProposalAcknowledge(v29);
                            }

                            SecOTRSRollIfTime(v29);
                            SecOTRSPrecalculateForPair(v29, *(v29 + 80), *(v29 + 112));
                            if (v54)
                            {
                              CFRelease(v54);
                            }

                            v4 = 0;
                            goto LABEL_85;
                          }

                          v4 = -25293;
                        }

                        v1 = v83;
                        v35 = v77;
                        goto LABEL_93;
                      }

                      goto LABEL_105;
                    }
                  }

                  goto LABEL_102;
                }

LABEL_105:
                v4 = -26275;
                goto LABEL_93;
              }

LABEL_102:
              v4 = -50;
              goto LABEL_93;
            }

            v34 = 0;
            v35 = 0;
            v66 = v39 >= v40;
LABEL_90:
            if (v66)
            {
              v4 = -25329;
            }

            else
            {
              v4 = -25328;
            }

            goto LABEL_93;
          }
        }
      }
    }

    v34 = 0;
    v35 = 0;
    goto LABEL_102;
  }

  v5 = v1[6];
  v6 = v1[7];
  v7 = CFDataGetBytePtr(v2);
  v86 = v7;
  v8 = CFDataGetLength(v2);
  v85 = v8;
  if (!v8)
  {
    LOBYTE(v9) = 0;
    v15 = 0;
    v13 = 0;
    v18 = 0;
    v4 = -50;
    goto LABEL_69;
  }

  v9 = *v7;
  v86 = v7 + 1;
  v85 = (v8 - 1);
  v10 = v9 > 0x31 || ((1 << v9) & 0x3000300000000) == 0;
  if (v10)
  {
    v15 = 0;
    v13 = 0;
LABEL_67:
    v18 = 0;
LABEL_68:
    v4 = -26275;
LABEL_69:
    *__b1 = MEMORY[0x1E69E9820];
    *&__b1[8] = 0x40000000;
    *&__b1[16] = __SecOTRVerifyAndExposeRawCompact_locked_block_invoke;
    v88 = &__block_descriptor_tmp_75_12776;
    v89 = v5;
    v90 = v18;
    v91 = v13;
    v92 = v15;
    v93 = v9;
    if (v2)
    {
      v55 = *MEMORY[0x1E695E480];
      v56 = CFDataGetLength(v2);
      v57 = CFStringCreateMutable(v55, 2 * v56);
      v58 = CFDataGetBytePtr(v2);
      v59 = CFDataGetLength(v2);
      if (v59 >= 1)
      {
        v60 = v59;
        do
        {
          v61 = *v58++;
          CFStringAppendFormat(v57, 0, @"%02X", v61);
          --v60;
        }

        while (v60);
      }
    }

    else
    {
      v57 = @"(null)";
    }

    (*&__b1[16])(__b1, v57);
    CFRelease(v57);
    if (!v15)
    {
      goto LABEL_85;
    }

LABEL_83:
    v64 = v15;
LABEL_84:
    CFRelease(v64);
    goto LABEL_85;
  }

  v11 = ((v9 & 0xFFFFFFEF) != 32) ^ *(v5 + 72);
  v12 = 80;
  if (v11)
  {
    v12 = 88;
  }

  v13 = *(v5 + v12);
  if (!v13)
  {
    v15 = 0;
    goto LABEL_67;
  }

  v14 = SecOTRPublicDHKCreateFromCompactSerialization(*MEMORY[0x1E695E480], &v86, &v85);
  v15 = v14;
  if (!v14)
  {
    goto LABEL_67;
  }

  v16 = *(v5 + 112);
  if (!v16)
  {
    goto LABEL_67;
  }

  v76 = v11;
  v78 = v6;
  v75 = CFEqual(v14, v16);
  v17 = 104;
  if (!v75)
  {
    v17 = 112;
  }

  v18 = *(v5 + v17);
  if (!v18)
  {
    goto LABEL_68;
  }

  v19 = v9 & 0xFE;
  memset(v84, 170, sizeof(v84));
  theData = v13;
  SecOTRSFindKeysForMessage(v5, v13, v18, 0, &v84[2], &v84[1], v84);
  v20 = 0;
  v21 = v85;
  v22 = v86;
  v23 = v85 + v86;
  do
  {
    if (!v21)
    {
      v85 = 0;
      v86 = v23;
      v4 = -26275;
      goto LABEL_65;
    }

    v24 = *v22++;
    v25 = v24 & 0x7F | (v20 << 7);
    v21 = (v21 - 1);
    v20 = v25;
  }

  while (v24 < 0);
  v85 = v21;
  v86 = v22;
  if (v25 <= *v84[0])
  {
    v4 = -25328;
    goto LABEL_65;
  }

  v82 = v1;
  v26 = 16;
  if (v19 == 48)
  {
    v26 = 56;
  }

  v27 = 0x1FFFFFFFFFFFFFFELL;
  if (v19 == 48)
  {
    v27 = 0x1FFFFFFFFFFFFFF9;
  }

  extraLength = &v21[v27];
  v28 = &v21[v27] + v22;
  v85 = v26;
  v86 = v28;
  if (v19 != 48)
  {
    memset(v94, 170, 20);
    goto LABEL_77;
  }

  v28 += 40;
  v85 = (v26 - 40);
  v86 = v28;
  memset(v94, 170, 20);
  if (v26 != 56)
  {
    v4 = -26275;
    goto LABEL_110;
  }

LABEL_77:
  ccsha1_di();
  cchmac();
  if (timingsafe_bcmp(v94, v28, 0x10uLL))
  {
    v4 = -25293;
LABEL_110:
    v1 = v82;
LABEL_65:
    v13 = theData;
    goto LABEL_69;
  }

  v62 = CFDataGetLength(v78);
  CFDataIncreaseLength(v78, extraLength);
  v63 = CFDataGetMutableBytePtr(v78);
  AES_CTR_HighHalf_Transform(16, v84[2], v25, extraLength, v22, &v63[v62]);
  v1 = v82;
  *v84[0] = v25;
  if (!v75)
  {
    SecOTRAcceptNewRemoteKey(v5, v15);
  }

  if (v76)
  {
    SecOTRSHandleProposalAcknowledge(v5);
  }

  SecOTRSRollIfTime(v5);
  SecOTRSPrecalculateForPair(v5, *(v5 + 80), *(v5 + 112));
  v4 = 0;
  if (v15)
  {
    goto LABEL_83;
  }

LABEL_85:
  *(*(v1[4] + 8) + 24) = v4;
  if (v2)
  {
    CFRelease(v2);
  }

  v65 = *MEMORY[0x1E69E9840];
}

void SecOTRAcceptNewRemoteKey(uint64_t a1, CFTypeRef cf)
{
  v4 = *(a1 + 104);
  if (v4)
  {
    v5 = a1 + 212;
    v6 = 4;
    do
    {
      if (!timingsafe_bcmp((v5 - 56), (v4 + 128), 0x14uLL))
      {
        CFDataAppendBytes(*(a1 + 120), v5, 20);
        *(v5 + 20) = 0u;
        *(v5 + 36) = 0u;
        *(v5 - 12) = 0u;
        *(v5 + 4) = 0u;
        *(v5 - 44) = 0u;
        *(v5 - 28) = 0u;
        *(v5 - 76) = 0u;
        *(v5 - 60) = 0u;
      }

      v5 += 128;
      --v6;
    }

    while (v6);
    v7 = *(a1 + 104);
    if (v7)
    {
      *(a1 + 104) = 0;
      CFRelease(v7);
    }
  }

  *(a1 + 104) = *(a1 + 112);
  CFRetain(cf);
  *(a1 + 112) = cf;
  *(a1 + 664) = 1;
  ++*(a1 + 96);
  v8 = CFAbsoluteTimeGetCurrent() + *(a1 + 656);
  v9 = *(a1 + 672);
  if (v9 == 0.0 || v9 > v8)
  {
    *(a1 + 672) = v8;
  }
}

void SecOTRSHandleProposalAcknowledge(uint64_t a1)
{
  if (*(a1 + 680) == 1)
  {
    SecOTRGenerateNewProposedKey(a1);
    *(a1 + 680) = 0;
  }

  else
  {
    *(a1 + 681) = 1;
    v2 = CFAbsoluteTimeGetCurrent() + *(a1 + 656);
    v3 = *(a1 + 672);
    if (v3 == 0.0 || v3 > v2)
    {
      *(a1 + 672) = v2;
    }
  }
}

uint64_t SecOTRSessionCreateRemote(uint64_t a1, uint64_t a2)
{
  v5 = 0;
  v6 = &v5;
  v7 = 0x2000000000;
  v8 = 0xAAAAAAAAAAAAAAAALL;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = __SecOTRSessionCreateRemote_block_invoke;
  activity_block[3] = &unk_1E70E0DD0;
  activity_block[4] = &v5;
  activity_block[5] = a1;
  activity_block[6] = a2;
  _os_activity_initiate(&dword_1887D2000, "SecOTRSessionCreateRemote", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v2 = v6[3];
  _Block_object_dispose(&v5, 8);
  return v2;
}

void __SecOTRSessionCreateRemote_block_invoke(void *a1)
{
  if (SecOTRGetDefaultsWriteSeconds_sdOnceToken != -1)
  {
    dispatch_once(&SecOTRGetDefaultsWriteSeconds_sdOnceToken, &__block_literal_global_12746);
  }

  if (gSecurityd && (v2 = *(gSecurityd + 184)) != 0)
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
    v7[2] = __data_to_data_error_request_block_invoke;
    v7[3] = &__block_descriptor_tmp_77_12787;
    v7[4] = v5;
    v6[0] = MEMORY[0x1E69E9820];
    v6[1] = 0x40000000;
    v6[2] = __data_to_data_error_request_block_invoke_2;
    v6[3] = &unk_1E70E0F20;
    v6[4] = &v8;
    securityd_send_sync_and_do(0x15u, v4, v7, v6);
    v3 = v9[3];
    _Block_object_dispose(&v8, 8);
  }

  *(*(a1[4] + 8) + 24) = v3;
}

BOOL __data_to_data_error_request_block_invoke_2(uint64_t a1, void *a2, __CFString **a3)
{
  v4 = SecXPCDictionaryCopyData(a2, "status", a3);
  *(*(*(a1 + 32) + 8) + 24) = v4;
  return v4 != 0;
}

uint64_t SecOTRSessionProcessPacketRemote(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = 0;
  v10 = &v9;
  v11 = 0x2000000000;
  v12 = -86;
  activity_block[0] = MEMORY[0x1E69E9820];
  activity_block[1] = 0x40000000;
  activity_block[2] = __SecOTRSessionProcessPacketRemote_block_invoke;
  activity_block[3] = &unk_1E70E0DF8;
  activity_block[4] = &v9;
  activity_block[5] = a1;
  activity_block[6] = a2;
  activity_block[7] = a3;
  activity_block[8] = a4;
  activity_block[9] = a5;
  activity_block[10] = a6;
  _os_activity_initiate(&dword_1887D2000, "SecOTRSessionProcessPacketRemote", OS_ACTIVITY_FLAG_DEFAULT, activity_block);
  v6 = *(v10 + 24);
  _Block_object_dispose(&v9, 8);
  return v6;
}

void __SecOTRSessionProcessPacketRemote_block_invoke(void *a1)
{
  if (gSecurityd && (v2 = *(gSecurityd + 192)) != 0)
  {
    v3 = v2(a1[5], a1[6], a1[7], a1[8], a1[9], a1[10]);
  }

  else
  {
    v5 = a1[7];
    v4 = a1[8];
    v7 = a1[9];
    v6 = a1[10];
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
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __data_data_to_data_data_BOOL_error_request_block_invoke;
    v9[3] = &__block_descriptor_tmp_79_12792;
    v10 = *(a1 + 5);
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 0x40000000;
    v8[2] = __data_data_to_data_data_BOOL_error_request_block_invoke_2;
    v8[3] = &unk_1E70E0F68;
    v8[4] = &v19;
    v8[5] = &v15;
    v8[6] = &v11;
    v3 = securityd_send_sync_and_do(0x16u, v6, v9, v8);
    *v5 = v20[3];
    *v4 = v16[3];
    *v7 = *(v12 + 24);
    _Block_object_dispose(&v11, 8);
    _Block_object_dispose(&v15, 8);
    _Block_object_dispose(&v19, 8);
  }

  *(*(a1[4] + 8) + 24) = v3;
}

uint64_t SecOTRSessionIsSessionInAwaitingState(uint64_t a1)
{
  v3 = *(a1 + 16);
  if (v3 >= 5)
  {
    v9 = v1;
    v10 = v2;
    v5 = secLogObjForScope("otrtimer");
    v6 = os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT);
    LOBYTE(v4) = 0;
    if (v6)
    {
      *v8 = 0;
      _os_log_impl(&dword_1887D2000, v5, OS_LOG_TYPE_DEFAULT, "unknown otr auth state", v8, 2u);
      LOBYTE(v4) = 0;
    }
  }

  else
  {
    v4 = 0xFu >> v3;
  }

  return v4 & 1;
}

uint64_t SecOTRSAppendStartPacket(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 128);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecOTRSAppendStartPacket_block_invoke;
  block[3] = &unk_1E70E0FD8;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __SecOTRSAppendStartPacket_block_invoke(void *a1)
{
  v2 = a1[5];
  *(v2 + 16) = 1;
  SecOTRInitMyDHKeys(v2);
  v3 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  v5 = a1[5];
  v6 = *MEMORY[0x1E69E94D8];
  *(*(a1[4] + 8) + 24) = CCRandomCopyBytes();
  if (!*(*(a1[4] + 8) + 24))
  {
    SecOTRAppendDHMessage(a1[5], Mutable);
  }

  v17 = MEMORY[0x1E69E9820];
  v18 = 0x40000000;
  v19 = __SecOTRSAppendStartPacket_block_invoke_2;
  v20 = &__block_descriptor_tmp_12798;
  v21 = a1[5];
  if (Mutable)
  {
    Length = CFDataGetLength(Mutable);
    v8 = CFStringCreateMutable(v3, 2 * Length);
    BytePtr = CFDataGetBytePtr(Mutable);
    v10 = CFDataGetLength(Mutable);
    if (v10 >= 1)
    {
      v11 = v10;
      do
      {
        v12 = *BytePtr++;
        CFStringAppendFormat(v8, 0, @"%02X", v12, v17, v18);
        --v11;
      }

      while (v11);
    }
  }

  else
  {
    v8 = @"(null)";
  }

  v19(&v17, v8);
  CFRelease(v8);
  v13 = a1[5];
  v14 = a1[6];
  if (*(v13 + 648) != 1)
  {
    v15 = CFDataGetBytePtr(Mutable);
    v16 = CFDataGetLength(Mutable);
    CFDataAppendBytes(v14, v15, v16);
    if (!Mutable)
    {
      return;
    }

    goto LABEL_13;
  }

  SecOTRPrepareOutgoingBytes(Mutable, v14);
  if (Mutable)
  {
LABEL_13:
    CFRelease(Mutable);
  }
}

void SecOTRInitMyDHKeys(uint64_t a1)
{
  v13 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  if (v2)
  {
    *(a1 + 80) = 0;
    CFRelease(v2);
  }

  v3 = *MEMORY[0x1E695E480];
  *(a1 + 80) = SecOTRFullDHKCreate();
  v4 = *(a1 + 88);
  if (v4)
  {
    *(a1 + 88) = 0;
    CFRelease(v4);
  }

  v5 = SecOTRFullDHKCreate();
  *(a1 + 136) = 0u;
  *(a1 + 88) = v5;
  *(a1 + 72) = 1;
  *(a1 + 680) = 1;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0u;
  *(a1 + 200) = 0u;
  *(a1 + 216) = 0u;
  *(a1 + 232) = 0u;
  *(a1 + 248) = 0u;
  *(a1 + 264) = 0u;
  *(a1 + 280) = 0u;
  *(a1 + 296) = 0u;
  *(a1 + 312) = 0u;
  *(a1 + 328) = 0u;
  *(a1 + 344) = 0u;
  *(a1 + 360) = 0u;
  *(a1 + 376) = 0u;
  *(a1 + 392) = 0u;
  *(a1 + 408) = 0u;
  *(a1 + 424) = 0u;
  *(a1 + 440) = 0u;
  *(a1 + 456) = 0u;
  *(a1 + 472) = 0u;
  *(a1 + 488) = 0u;
  *(a1 + 504) = 0u;
  *(a1 + 520) = 0u;
  *(a1 + 536) = 0u;
  *(a1 + 552) = 0u;
  *(a1 + 568) = 0u;
  *(a1 + 584) = 0u;
  *(a1 + 600) = 0u;
  *(a1 + 616) = 0u;
  *(a1 + 632) = 0u;
  v6 = secLogObjForScope("otr");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    v7 = *(a1 + 80);
    v9 = 138412546;
    v10 = a1;
    v11 = 2112;
    v12 = v7;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "%@ Reinitializing DH Keys, first: %@", &v9, 0x16u);
  }

  v8 = *MEMORY[0x1E69E9840];
}

void __SecOTRSAppendStartPacket_block_invoke_2(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("otr");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = a2;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "%@ Start packet: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t SecOTRSAppendRestartPacket(uint64_t a1, uint64_t a2)
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x2000000000;
  v9 = 0;
  v2 = *(a1 + 128);
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 0x40000000;
  block[2] = __SecOTRSAppendRestartPacket_block_invoke;
  block[3] = &unk_1E70E1020;
  block[4] = &v6;
  block[5] = a1;
  block[6] = a2;
  dispatch_sync(v2, block);
  v3 = *(v7 + 6);
  _Block_object_dispose(&v6, 8);
  return v3;
}

void __SecOTRSAppendRestartPacket_block_invoke(void *a1)
{
  if (*(a1[5] + 80))
  {
    v2 = *MEMORY[0x1E695E480];
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
    v4 = a1[5];
    *(v4 + 16) = 1;
    v5 = *(v4 + 56);
    if (v5)
    {
      *(v4 + 56) = 0;
      CFRelease(v5);
      v4 = a1[5];
    }

    v6 = *(v4 + 64);
    if (v6)
    {
      *(v4 + 64) = 0;
      CFRelease(v6);
      v4 = a1[5];
    }

    SecOTRAppendDHMessage(v4, Mutable);
    v18 = MEMORY[0x1E69E9820];
    v19 = 0x40000000;
    v20 = __SecOTRSAppendRestartPacket_block_invoke_6;
    v21 = &__block_descriptor_tmp_7_12812;
    v22 = a1[5];
    if (Mutable)
    {
      Length = CFDataGetLength(Mutable);
      v8 = CFStringCreateMutable(v2, 2 * Length);
      BytePtr = CFDataGetBytePtr(Mutable);
      v10 = CFDataGetLength(Mutable);
      if (v10 >= 1)
      {
        v11 = v10;
        do
        {
          v12 = *BytePtr++;
          CFStringAppendFormat(v8, 0, @"%02X", v12, v18, v19);
          --v11;
        }

        while (v11);
      }
    }

    else
    {
      v8 = @"(null)";
    }

    v20(&v18, v8);
    CFRelease(v8);
    v14 = a1[5];
    v15 = a1[6];
    if (*(v14 + 648) == 1)
    {
      SecOTRPrepareOutgoingBytes(Mutable, v15);
      if (!Mutable)
      {
        return;
      }
    }

    else
    {
      v16 = CFDataGetBytePtr(Mutable);
      v17 = CFDataGetLength(Mutable);
      CFDataAppendBytes(v15, v16, v17);
      if (!Mutable)
      {
        return;
      }
    }

    CFRelease(Mutable);
    return;
  }

  v13 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 0;
    _os_log_impl(&dword_1887D2000, v13, OS_LOG_TYPE_DEFAULT, "_myKey is NULL, avoiding crash", buf, 2u);
  }

  *(*(a1[4] + 8) + 24) = -26275;
}

void __SecOTRSAppendRestartPacket_block_invoke_6(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("otr");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = a2;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "%@ Restart packet: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

uint64_t SecOTRSProcessPacket(uint64_t a1, CFDataRef theData, uint64_t a3)
{
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = -50;
  if (CFDataGetLength(theData) >= 1)
  {
    v6 = *(a1 + 128);
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 0x40000000;
    v9[2] = __SecOTRSProcessPacket_block_invoke;
    v9[3] = &unk_1E70E1098;
    v9[6] = a1;
    v9[7] = a3;
    v9[4] = &v10;
    v9[5] = theData;
    dispatch_sync(v6, v9);
  }

  v7 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  return v7;
}

void __SecOTRSProcessPacket_block_invoke_2(uint64_t a1)
{
  v117 = *MEMORY[0x1E69E9840];
  v2 = SecOTRCopyIncomingBytes(*(a1 + 40));
  BytePtr = CFDataGetBytePtr(v2);
  Length = CFDataGetLength(v2);
  if (Length >= 2 && ((v5 = __rev16(*BytePtr), Length != 2) ? (v6 = v5 == 2) : (v6 = 0), v6))
  {
    v7 = BytePtr[2];
  }

  else
  {
    v7 = 255;
  }

  if (*(*(a1 + 48) + 648) == 1)
  {
    Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  }

  else
  {
    Mutable = *(a1 + 56);
    if (Mutable)
    {
      CFRetain(*(a1 + 56));
    }
  }

  v9 = -26275;
  if (v7 <= 16)
  {
    if (v7 != 2)
    {
      if (v7 != 10)
      {
        goto LABEL_137;
      }

      v10 = *(a1 + 48);
      v11 = CFDataGetBytePtr(v2);
      v12 = CFDataGetLength(v2);
      if (v12 > 2 && __rev16(*v11) == 2 && (v13 = v11[2], v104 = (v12 - 3), *buf = v11 + 3, v13 == 10))
      {
        v14 = SecOTRSetupTheirKeyFrom(v10, buf, &v104);
        if (v14)
        {
          v9 = v14;
        }

        else
        {
          v15 = *(v10 + 16);
          v16 = @"Ignoring DHKey message";
          v9 = -25308;
          if (v15 > 1)
          {
            if (v15 == 2)
            {
              goto LABEL_101;
            }

            if (v15 != 3)
            {
              if (v15 != 4)
              {
                goto LABEL_120;
              }

LABEL_101:
              *buf = MEMORY[0x1E69E9820];
              *&buf[8] = 0x40000000;
              *&buf[16] = __SecOTRSProcessDHKeyMessage_block_invoke;
              *&buf[24] = &__block_descriptor_tmp_44_12827;
              *&v106 = v10;
              *(&v106 + 1) = v16;
              if (Mutable)
              {
                v71 = *MEMORY[0x1E695E480];
                v72 = CFDataGetLength(Mutable);
                v48 = CFStringCreateMutable(v71, 2 * v72);
                v73 = CFDataGetBytePtr(Mutable);
                v74 = CFDataGetLength(Mutable);
                if (v74 >= 1)
                {
                  v75 = v74;
                  do
                  {
                    v76 = *v73++;
                    CFStringAppendFormat(v48, 0, @"%02X", v76);
                    --v75;
                  }

                  while (v75);
                }

                goto LABEL_107;
              }

LABEL_106:
              v48 = @"(null)";
LABEL_107:
              (*&buf[16])(buf, v48);
              CFRelease(v48);
              goto LABEL_108;
            }

            v62 = *(v10 + 64);
            if (v2 && v62)
            {
              if (CFEqual(v2, v62))
              {
LABEL_90:
                SecOTRAppendRevealSignatureMessage(v10, Mutable);
                v16 = @"Resending reveal signature";
                goto LABEL_101;
              }
            }

            else if (v62 == v2)
            {
              goto LABEL_90;
            }

            v16 = @"Ignoring new DHKey message";
            goto LABEL_101;
          }

          if (!v15)
          {
            goto LABEL_101;
          }

          if (v15 == 1)
          {
            v53 = *(v10 + 64);
            if (v53)
            {
              *(v10 + 64) = 0;
              CFRelease(v53);
            }

            SecOTRAppendRevealSignatureMessage(v10, Mutable);
            *(v10 + 16) = 3;
            *(v10 + 64) = CFDataCreateCopy(*MEMORY[0x1E695E480], v2);
            v16 = @"Sending reveal signature";
            goto LABEL_101;
          }
        }
      }

      else
      {
        v9 = -50;
      }

LABEL_120:
      v61 = secLogObjForScope("otr");
      if (!os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
      {
        goto LABEL_137;
      }

      *buf = 138412546;
      *&buf[4] = v10;
      *&buf[12] = 1024;
      *&buf[14] = v9;
      goto LABEL_122;
    }

    v23 = *(a1 + 48);
    v24 = *(v23 + 16);
    v25 = &stru_1EFA8C6C8;
    if (v24 > 2)
    {
      if ((v24 - 3) >= 2)
      {
LABEL_85:
        v61 = secLogObjForScope("otr");
        v9 = -25308;
        if (!os_log_type_enabled(v61, OS_LOG_TYPE_DEFAULT))
        {
          goto LABEL_137;
        }

        *buf = 138412546;
        *&buf[4] = v23;
        *&buf[12] = 1024;
        *&buf[14] = -25308;
LABEL_122:
        _os_log_impl(&dword_1887D2000, v61, OS_LOG_TYPE_DEFAULT, "%@ Process DH failed %d", buf, 0x12u);
        goto LABEL_137;
      }
    }

    else if (v24)
    {
      if (v24 != 1)
      {
        if (v24 != 2)
        {
          goto LABEL_85;
        }

        goto LABEL_63;
      }

      v46 = *MEMORY[0x1E695E480];
      v54 = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
      SecOTRAppendDHMessage(v23, v54);
      GXHash = FindGXHash(v54);
      v56 = FindGXHash(v2);
      v57 = 0;
      if (GXHash && v56)
      {
        v58 = bswap64(*GXHash);
        v59 = bswap64(*v56);
        if (v58 == v59 && (v58 = bswap64(GXHash[1]), v59 = bswap64(v56[1]), v58 == v59) && (v58 = bswap64(GXHash[2]), v59 = bswap64(v56[2]), v58 == v59) && (v58 = bswap64(GXHash[3]), v59 = bswap64(v56[3]), v58 == v59))
        {
          v60 = 0;
        }

        else if (v58 < v59)
        {
          v60 = -1;
        }

        else
        {
          v60 = 1;
        }

        v57 = v60 > 0;
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __SecOTRMyGXHashIsBigger_block_invoke;
        *&buf[24] = &__block_descriptor_tmp_31_12818;
        *&v106 = v56;
        v63 = CFDataCreateWithBytesNoCopy(v46, GXHash, 32, *MEMORY[0x1E695E498]);
        if (v63)
        {
          v64 = v63;
          v94 = v57;
          v65 = CFDataGetLength(v63);
          v66 = CFStringCreateMutable(v46, 2 * v65);
          v67 = CFDataGetBytePtr(v64);
          v68 = CFDataGetLength(v64);
          if (v68 >= 1)
          {
            v69 = v68;
            do
            {
              v70 = *v67++;
              CFStringAppendFormat(v66, 0, @"%02X", v70);
              --v69;
            }

            while (v69);
          }

          (*&buf[16])(buf, v66);
          CFRelease(v66);
          v57 = v94;
        }

        else
        {
          v64 = @"(null)";
          (*&buf[16])(buf, @"(null)");
        }

        CFRelease(v64);
        v7 = 2;
      }

      if (v54)
      {
        CFRelease(v54);
      }

      if (v57)
      {
        v77 = *(v23 + 56);
        if (v77)
        {
          *(v23 + 56) = 0;
          CFRelease(v77);
        }

        SecOTRAppendDHMessage(v23, Mutable);
        v25 = @"Our GX is bigger, resending DH";
LABEL_66:
        *buf = MEMORY[0x1E69E9820];
        *&buf[8] = 0x40000000;
        *&buf[16] = __SecOTRSProcessDHMessage_block_invoke;
        *&buf[24] = &__block_descriptor_tmp_29_12821;
        *&v106 = v23;
        *(&v106 + 1) = v25;
        if (Mutable)
        {
          v47 = CFDataGetLength(Mutable);
          v48 = CFStringCreateMutable(v46, 2 * v47);
          v49 = CFDataGetBytePtr(Mutable);
          v50 = CFDataGetLength(Mutable);
          if (v50 >= 1)
          {
            v51 = v50;
            do
            {
              v52 = *v49++;
              CFStringAppendFormat(v48, 0, @"%02X", v52);
              --v51;
            }

            while (v51);
          }

          goto LABEL_107;
        }

        goto LABEL_106;
      }

      v25 = @"Our GX is smaller, sending DHKey";
    }

    SecOTRInitMyDHKeys(v23);
LABEL_63:
    SecOTRAppendDHKeyMessage(v23, Mutable);
    v45 = *(v23 + 56);
    if (v45)
    {
      *(v23 + 56) = 0;
      CFRelease(v45);
    }

    v46 = *MEMORY[0x1E695E480];
    *(v23 + 56) = CFDataCreateCopy(*MEMORY[0x1E695E480], v2);
    *(v23 + 16) = 2;
    goto LABEL_66;
  }

  if (v7 == 17)
  {
    v26 = *(a1 + 48);
    if (*(v26 + 16) != 2)
    {
LABEL_108:
      v9 = 0;
      goto LABEL_137;
    }

    v27 = CFDataGetBytePtr(v2);
    v102 = v27;
    v28 = CFDataGetLength(v2);
    v101 = v28;
    v29 = *(v26 + 56);
    if (!v29)
    {
      goto LABEL_129;
    }

    if (v28 < 2)
    {
      goto LABEL_129;
    }

    v30 = *v27;
    v102 = v27 + 2;
    v101 = v28 - 2;
    if (v28 == 2)
    {
      goto LABEL_129;
    }

    if (__rev16(v30) != 2)
    {
      goto LABEL_129;
    }

    v31 = v27[2];
    v101 = v28 - 3;
    v102 = v27 + 3;
    if (v28 - 3 < 4)
    {
      goto LABEL_129;
    }

    if (v31 != 17)
    {
      goto LABEL_129;
    }

    v32 = bswap32(*(v27 + 3));
    v101 = v28 - 7;
    v102 = v27 + 7;
    if (v32 != 16)
    {
      goto LABEL_129;
    }

    *(v26 + 40) = *(v27 + 7);
    v101 = v28 - 23;
    v102 = v27 + 23;
    *&v33 = 0xAAAAAAAAAAAAAAAALL;
    *(&v33 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v33;
    *&buf[16] = v33;
    v106 = v33;
    v107 = v33;
    v108 = v33;
    v109 = v33;
    v110 = v33;
    v111 = v33;
    v112 = v33;
    v113 = v33;
    v114 = v33;
    v115 = v33;
    v116 = -1431655766;
    v104 = buf;
    v34 = CFDataGetBytePtr(v29);
    v35 = CFDataGetLength(*(v26 + 56));
    if (v35 >= 2)
    {
      if (__rev16(*v34) != 2)
      {
        goto LABEL_126;
      }

      if (v35 != 2)
      {
        if (v34[2] != 2)
        {
          goto LABEL_126;
        }

        if (v35 - 3 >= 4)
        {
          v36 = bswap32(*(v34 + 3));
          v103 = v36;
          if (v36 < 0xC5)
          {
            AES_CTR_Transform(16, v26 + 40, &kIVZero, v36, (v34 + 7), buf);
            v37 = SecOTRSetupTheirKeyFrom(v26, &v104, &v103);
            if (!v37)
            {
              v37 = SecVerifySignatureAndMac(v26, 0, &v102, &v101);
              if (!v37)
              {
                SecOTRAppendSignatureMessage(v26, Mutable);
                *(v26 + 16) = 4;
                *buf = MEMORY[0x1E69E9820];
                *&buf[8] = 0x40000000;
                *&buf[16] = __SecOTRSProcessRevealSignatureMessage_block_invoke;
                *&buf[24] = &__block_descriptor_tmp_45_12829;
                *&v106 = v26;
                if (Mutable)
                {
                  v38 = *MEMORY[0x1E695E480];
                  v39 = CFDataGetLength(Mutable);
                  v40 = CFStringCreateMutable(v38, 2 * v39);
                  v41 = CFDataGetBytePtr(Mutable);
                  v42 = CFDataGetLength(Mutable);
                  if (v42 >= 1)
                  {
                    v43 = v42;
                    do
                    {
                      v44 = *v41++;
                      CFStringAppendFormat(v40, 0, @"%02X", v44);
                      --v43;
                    }

                    while (v43);
                  }
                }

                else
                {
                  v40 = @"(null)";
                }

                (*&buf[16])(buf, v40);
                v9 = 0;
LABEL_136:
                CFRelease(v40);
                goto LABEL_137;
              }
            }

            v9 = v37;
LABEL_129:
            *buf = MEMORY[0x1E69E9820];
            *&buf[8] = 0x40000000;
            *&buf[16] = __SecOTRSProcessRevealSignatureMessage_block_invoke_46;
            *&buf[24] = &__block_descriptor_tmp_47_12830;
            *&v106 = v26;
            DWORD2(v106) = v9;
            if (v2)
            {
              v78 = *MEMORY[0x1E695E480];
              v79 = CFDataGetLength(v2);
              v40 = CFStringCreateMutable(v78, 2 * v79);
              v80 = CFDataGetBytePtr(v2);
              v81 = CFDataGetLength(v2);
              if (v81 >= 1)
              {
                v82 = v81;
                do
                {
                  v83 = *v80++;
                  CFStringAppendFormat(v40, 0, @"%02X", v83);
                  --v82;
                }

                while (v82);
              }
            }

            else
            {
              v40 = @"(null)";
            }

            (*&buf[16])(buf, v40);
            goto LABEL_136;
          }

LABEL_126:
          v9 = -26275;
          goto LABEL_129;
        }
      }
    }

    v9 = -50;
    goto LABEL_129;
  }

  if (v7 != 18)
  {
    goto LABEL_137;
  }

  v17 = *(a1 + 48);
  if (*(v17 + 16) != 3)
  {
    goto LABEL_108;
  }

  v18 = CFDataGetBytePtr(v2);
  v19 = CFDataGetLength(v2);
  if (v19 < 2)
  {
    goto LABEL_123;
  }

  if (__rev16(*v18) != 2)
  {
LABEL_124:
    v9 = -26275;
    goto LABEL_137;
  }

  if (v19 == 2)
  {
LABEL_123:
    v9 = -50;
    goto LABEL_137;
  }

  v20 = v18[2];
  v104 = (v19 - 3);
  *buf = v18 + 3;
  if (v20 != 18)
  {
    goto LABEL_124;
  }

  v21 = SecVerifySignatureAndMac(v17, 1, buf, &v104);
  if (v21)
  {
    v9 = v21;
  }

  else
  {
    v22 = *(v17 + 64);
    if (v22)
    {
      *(v17 + 64) = 0;
      CFRelease(v22);
    }

    v9 = 0;
    *(v17 + 16) = 4;
  }

LABEL_137:
  *(*(*(a1 + 32) + 8) + 24) = v9;
  v84 = *(a1 + 32);
  v85 = *(a1 + 48);
  if (*(*(v84 + 8) + 24))
  {
    v95[0] = MEMORY[0x1E69E9820];
    v95[1] = 0x40000000;
    v96 = __SecOTRSProcessPacket_block_invoke_3;
    v97 = &unk_1E70E1048;
    v98 = v84;
    v99 = v85;
    v100 = v7;
    if (v2)
    {
      v86 = *MEMORY[0x1E695E480];
      v87 = CFDataGetLength(v2);
      v88 = CFStringCreateMutable(v86, 2 * v87);
      v89 = CFDataGetBytePtr(v2);
      v90 = CFDataGetLength(v2);
      if (v90 >= 1)
      {
        v91 = v90;
        do
        {
          v92 = *v89++;
          CFStringAppendFormat(v88, 0, @"%02X", v92);
          --v91;
        }

        while (v91);
      }
    }

    else
    {
      v88 = @"(null)";
    }

    v96(v95, v88);
    CFRelease(v88);
    v85 = *(a1 + 48);
  }

  if (*(v85 + 648) == 1)
  {
    SecOTRPrepareOutgoingBytes(Mutable, *(a1 + 56));
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  if (v2)
  {
    CFRelease(v2);
  }

  v93 = *MEMORY[0x1E69E9840];
}

const UInt8 *FindGXHash(const __CFData *a1)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  if (Length < 2)
  {
    return 0;
  }

  v4 = Length;
  result = 0;
  if (v4 != 2 && __rev16(*BytePtr) == 2)
  {
    result = 0;
    if (v4 - 3 >= 4 && BytePtr[2] == 2)
    {
      v6 = bswap32(*(BytePtr + 3));
      v7 = v4 - 7;
      v8 = v7 >= v6;
      v9 = v7 - v6;
      if (!v8)
      {
        return 0;
      }

      v8 = v9 >= 4;
      v10 = v9 - 4;
      if (!v8)
      {
        return 0;
      }

      v11 = &BytePtr[v6];
      v12 = bswap32(*(v11 + 7));
      v13 = v11 + 11;
      if (v10 >= v12 && v12 == 32)
      {
        return v13;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

void __SecOTRMyGXHashIsBigger_block_invoke(uint64_t a1)
{
  v1 = *MEMORY[0x1E695E480];
  v2 = CFDataCreateWithBytesNoCopy(*MEMORY[0x1E695E480], *(a1 + 32), 32, *MEMORY[0x1E695E498]);
  if (v2)
  {
    v3 = v2;
    Length = CFDataGetLength(v2);
    Mutable = CFStringCreateMutable(v1, 2 * Length);
    BytePtr = CFDataGetBytePtr(v3);
    v7 = CFDataGetLength(v3);
    if (v7 >= 1)
    {
      v8 = v7;
      do
      {
        v9 = *BytePtr++;
        CFStringAppendFormat(Mutable, 0, @"%02X", v9);
        --v8;
      }

      while (v8);
    }

    CFRelease(Mutable);
  }

  else
  {
    v3 = @"(null)";
  }

  CFRelease(v3);
}

void __SecOTRSProcessDHMessage_block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("otr");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = a2;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "%@ %@: %@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t SecOTRSetupTheirKeyFrom(uint64_t a1, unsigned int **a2, unint64_t *a3)
{
  v4 = SecOTRPublicDHKCreateFromSerialization(*MEMORY[0x1E695E480], a2, a3);
  if (!v4)
  {
    return 4294941021;
  }

  SecOTRSetupInitialRemoteKey(a1, v4);
  return 0;
}

void __SecOTRSProcessDHKeyMessage_block_invoke(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("otr");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 138412802;
    v9 = v5;
    v10 = 2112;
    v11 = v6;
    v12 = 2112;
    v13 = a2;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "%@ %@: %@", &v8, 0x20u);
  }

  v7 = *MEMORY[0x1E69E9840];
}

uint64_t SecVerifySignatureAndMac(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v16 = *MEMORY[0x1E69E9840];
  v10 = 0;
  v11 = &v10;
  v12 = 0x2000000000;
  v13 = -26275;
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 0x40000000;
  v8[2] = __SecVerifySignatureAndMac_block_invoke;
  v8[3] = &unk_1E70E11D8;
  v9 = a2;
  v8[4] = &v10;
  v8[5] = a1;
  v8[6] = a3;
  v8[7] = a4;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 0x40000000;
  v14[2] = __PerformWithBufferAndClear_block_invoke;
  v14[3] = &unk_1E70E46A8;
  v14[4] = v8;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v15[0] = v4;
  v15[1] = v4;
  __PerformWithBufferAndClear_block_invoke(v14, 0x20uLL, v15);
  v5 = *(v11 + 6);
  _Block_object_dispose(&v10, 8);
  v6 = *MEMORY[0x1E69E9840];
  return v5;
}

void __SecOTRSProcessRevealSignatureMessage_block_invoke(uint64_t a1, uint64_t a2)
{
  v11 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("otr");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v7 = 138412546;
    v8 = v5;
    v9 = 2112;
    v10 = a2;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "%@ Sending Signature message: %@", &v7, 0x16u);
  }

  v6 = *MEMORY[0x1E69E9840];
}

void __SecOTRSProcessRevealSignatureMessage_block_invoke_46(uint64_t a1, uint64_t a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("otr");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v8 = 138412802;
    v9 = v5;
    v10 = 1024;
    v11 = v6;
    v12 = 2112;
    v13 = a2;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "%@ Failed to process reveal sig message (%d): %@", &v8, 0x1Cu);
  }

  v7 = *MEMORY[0x1E69E9840];
}

void __SecOTRSProcessPacket_block_invoke_3(uint64_t a1, uint64_t a2)
{
  v38 = *MEMORY[0x1E69E9840];
  v4 = secLogObjForScope("session");
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = *(a1 + 40);
    v6 = *(*(*(a1 + 32) + 8) + 24);
    v7 = *(a1 + 48);
    v8 = *(v5 + 16);
    v9 = *(v5 + 72);
    v10 = *(v5 + 80);
    v11 = *(v5 + 88);
    v12 = *(v5 + 96);
    v14 = *(v5 + 104);
    v13 = *(v5 + 112);
    v16 = 138414850;
    v17 = v5;
    v18 = 1024;
    v19 = v6;
    v20 = 1024;
    v21 = v7;
    v22 = 1024;
    v23 = v8;
    v24 = 1024;
    v25 = v9;
    v26 = 2048;
    v27 = v10;
    v28 = 2048;
    v29 = v11;
    v30 = 1024;
    v31 = v12;
    v32 = 2048;
    v33 = v13;
    v34 = 2048;
    v35 = v14;
    v36 = 2112;
    v37 = a2;
    _os_log_impl(&dword_1887D2000, v4, OS_LOG_TYPE_DEFAULT, "%@ Error %d processing packet type %d, session state %d, keyid %d, myKey %p, myNextKey %p, theirKeyId %d, theirKey %p, theirPreviousKey %p, bytes %@", &v16, 0x5Cu);
  }

  v15 = *MEMORY[0x1E69E9840];
}

void __SecVerifySignatureAndMac_block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 0x40000000;
  v3 = *(a1 + 48);
  v7 = *(a1 + 32);
  v6[2] = __SecVerifySignatureAndMac_block_invoke_2;
  v6[3] = &unk_1E70E11B0;
  v11 = *(a1 + 64);
  v8 = a2;
  v9 = a3;
  v10 = v3;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 0x40000000;
  v12[2] = __PerformWithBufferAndClear_block_invoke;
  v12[3] = &unk_1E70E46A8;
  v12[4] = v6;
  *&v4 = 0xAAAAAAAAAAAAAAAALL;
  *(&v4 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v13[0] = v4;
  v13[1] = v4;
  __PerformWithBufferAndClear_block_invoke(v12, 0x20uLL, v13);
  v5 = *MEMORY[0x1E69E9840];
}

void __SecVerifySignatureAndMac_block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v14[2] = *MEMORY[0x1E69E9840];
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 0x40000000;
  v5[2] = __SecVerifySignatureAndMac_block_invoke_3;
  v5[3] = &unk_1E70E1188;
  v12 = *(a1 + 80);
  v3 = *(a1 + 56);
  v7 = *(a1 + 48);
  v8 = v3;
  v9 = a2;
  v10 = a3;
  v6 = *(a1 + 32);
  v11 = *(a1 + 64);
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 0x40000000;
  v13[2] = __PerformWithBufferAndClear_block_invoke;
  v13[3] = &unk_1E70E46A8;
  v13[4] = v5;
  v14[0] = 0xAAAAAAAAAAAAAAAALL;
  v14[1] = 0xAAAAAAAAAAAAAAAALL;
  __PerformWithBufferAndClear_block_invoke(v13, 0x10uLL, v14);
  v4 = *MEMORY[0x1E69E9840];
}

void __SecVerifySignatureAndMac_block_invoke_3(uint64_t a1, unint64_t a2, void *a3)
{
  v48 = *MEMORY[0x1E69E9840];
  *&v6 = 0xAAAAAAAAAAAAAAAALL;
  *(&v6 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v44 = v6;
  v45 = v6;
  v42 = v6;
  v43 = v6;
  v40 = v6;
  v41 = v6;
  v38 = v6;
  v39 = v6;
  v36 = v6;
  v37 = v6;
  v34 = v6;
  v35 = v6;
  v7 = *(a1 + 40);
  v8 = *(v7 + 80);
  v9 = *(v7 + 112);
  ccn_zero();
  *&__src = 192;
  ccec_compute_key();
  if (*(a1 + 96))
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  HashMPIWithPrefix(v10, 24, &v34, *(a1 + 56));
  if (*(a1 + 96))
  {
    v11 = 5;
  }

  else
  {
    v11 = 3;
  }

  HashMPIWithPrefix(v11, 24, &v34, *(a1 + 72));
  v12 = *(a1 + 96);
  if (v12)
  {
    v13 = a3;
  }

  else
  {
    v13 = 0;
  }

  *&v14 = 0xAAAAAAAAAAAAAAAALL;
  *(&v14 + 1) = 0xAAAAAAAAAAAAAAAALL;
  __src = v14;
  v47 = v14;
  HashMPIWithPrefix(1u, 24, &v34, &__src);
  if (a3 && (v12 & 1) == 0)
  {
    if (a2 >= 0x10)
    {
      v15 = 16;
    }

    else
    {
      v15 = a2;
    }

    memcpy(a3, &__src, v15);
  }

  if (v13)
  {
    if (a2 >= 0x10)
    {
      v16 = 16;
    }

    else
    {
      v16 = a2;
    }

    memcpy(v13, &__src, v16);
  }

  v17 = *(a1 + 80);
  v18 = *(a1 + 88);
  v19 = *v17;
  if (v18 && (v20 = *v18 - 4, *v18 >= 4))
  {
    v21 = 0;
    v22 = bswap32(*v19);
    *v17 = v19 + 1;
    *v18 = v20;
  }

  else
  {
    v22 = 0;
    v21 = -50;
  }

  *(*(*(a1 + 32) + 8) + 24) = v21;
  v23 = *(*(a1 + 32) + 8);
  if (!*(v23 + 24))
  {
    if (v22 > 4 && **(a1 + 88) >= v22)
    {
      *&v24 = 0xAAAAAAAAAAAAAAAALL;
      *(&v24 + 1) = 0xAAAAAAAAAAAAAAAALL;
      __src = v24;
      v47 = v24;
      ccsha256_di();
      v25 = *(a1 + 64);
      v26 = *(a1 + 72);
      cchmac();
      if (**(a1 + 88) >= (v22 + 20))
      {
        v27 = **(a1 + 80);
        if (!cc_cmp_safe())
        {
          v32[0] = MEMORY[0x1E69E9820];
          v32[1] = 0x40000000;
          v32[2] = __SecVerifySignatureAndMac_block_invoke_4;
          v32[3] = &unk_1E70E1160;
          v28 = *(a1 + 48);
          v30 = *(a1 + 32);
          v29 = *(a1 + 40);
          v32[6] = *(a1 + 56);
          v32[7] = v29;
          v32[8] = a2;
          v32[9] = a3;
          v33 = v22;
          v32[10] = *(a1 + 80);
          v32[4] = v30;
          v32[5] = v28;
          *&v34 = MEMORY[0x1E69E9820];
          *(&v34 + 1) = 0x40000000;
          *&v35 = __PerformWithBufferAndClear_block_invoke;
          *(&v35 + 1) = &unk_1E70E46A8;
          *&v36 = v32;
          PerformWithBuffer(v22, &v34);
          goto LABEL_30;
        }
      }

      v23 = *(*(a1 + 32) + 8);
    }

    *(v23 + 24) = -26275;
  }

LABEL_30:
  v31 = *MEMORY[0x1E69E9840];
}

void __SecVerifySignatureAndMac_block_invoke_4(uint64_t a1, uint64_t a2, const UInt8 *a3)
{
  v58 = *MEMORY[0x1E69E9840];
  v5 = *(ccsha256_di() + 8);
  v6 = (v5 + *(ccsha256_di() + 16) + 19) & 0xFFFFFFFFFFFFFFF8;
  v7 = ccsha256_di();
  v8 = *(v7 + 8) + v6 + 7;
  MEMORY[0x1EEE9AC00](v7);
  if (v11 >= 8)
  {
    memset(v53 - v10, 170, v9);
  }

  ccsha256_di();
  v12 = *(a1 + 40);
  v13 = *(a1 + 48);
  cchmac_init();
  v14 = *MEMORY[0x1E695E480];
  Mutable = CFDataCreateMutable(*MEMORY[0x1E695E480], 0);
  AppendECPublicKeyAsDATA(Mutable, (*(*(a1 + 56) + 112) + 16));
  SecFDHKAppendPublicSerialization(*(*(a1 + 56) + 80), Mutable);
  ccsha256_di();
  CFDataGetLength(Mutable);
  CFDataGetBytePtr(Mutable);
  cchmac_update();
  if (Mutable)
  {
    CFRelease(Mutable);
  }

  AES_CTR_Transform(*(a1 + 64), *(a1 + 72), &kIVZero, *(a1 + 88), **(a1 + 80), a3);
  v16 = *(a1 + 88);
  if (v16 < 2)
  {
    v19 = 0;
    v17 = -50;
    v18 = a3;
  }

  else
  {
    v17 = 0;
    v18 = a3 + 2;
    v16 -= 2;
    v19 = __rev16(*a3) == 61440;
  }

  *(*(*(a1 + 32) + 8) + 24) = v17;
  v20 = *(*(a1 + 32) + 8);
  if (*(v20 + 24))
  {
    goto LABEL_43;
  }

  if (!v19)
  {
    v50 = -4;
LABEL_49:
    *(v20 + 24) = v50;
    goto LABEL_43;
  }

  if (v16 < 4)
  {
    v21 = -50;
    v23 = -1431655766;
  }

  else
  {
    v21 = 0;
    v22 = *v18;
    v18 += 4;
    v23 = bswap32(v22);
    v16 -= 4;
  }

  *(v20 + 24) = v21;
  v20 = *(*(a1 + 32) + 8);
  if (*(v20 + 24))
  {
    goto LABEL_43;
  }

  if (v16 < v23)
  {
    v50 = -26275;
    goto LABEL_49;
  }

  v24 = v23;
  ccsha256_di();
  cchmac_update();
  *&v25 = 0xAAAAAAAAAAAAAAAALL;
  *(&v25 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v57[0] = v25;
  v57[1] = v25;
  ccsha256_di();
  cchmac_final();
  v26 = *(*(a1 + 56) + 32);
  v27 = CFDataCreateWithBytesNoCopy(v14, v18, v24, *MEMORY[0x1E695E498]);
  v28 = CFDataCreateMutable(v14, 0);
  SecOTRPIAppendSerialization(v26, v28, 0);
  if (v27 && v28)
  {
    if (CFEqual(v27, v28))
    {
      v29 = 1;
LABEL_27:
      CFRelease(v27);
      goto LABEL_28;
    }

    goto LABEL_18;
  }

  if (v27 != v28)
  {
LABEL_18:
    v54[0] = MEMORY[0x1E69E9820];
    v54[1] = 0x40000000;
    v55[0] = __SecOTRPIEqualToBytes_block_invoke;
    v55[1] = &__block_descriptor_tmp_6_12518;
    v55[2] = v28;
    if (v27)
    {
      Length = CFDataGetLength(v27);
      v31 = CFStringCreateMutable(v14, 2 * Length);
      BytePtr = CFDataGetBytePtr(v27);
      v33 = CFDataGetLength(v27);
      if (v33 >= 1)
      {
        v34 = v33;
        v53[1] = v55;
        do
        {
          v35 = *BytePtr++;
          CFStringAppendFormat(v31, 0, @"%02X", v35);
          --v34;
        }

        while (v34);
      }
    }

    else
    {
      v31 = @"(null)";
    }

    (v55[0])(v54, v31);
    CFRelease(v31);
    v29 = 0;
    if (v27)
    {
      goto LABEL_27;
    }

    goto LABEL_28;
  }

  v29 = 1;
  if (v27)
  {
    goto LABEL_27;
  }

LABEL_28:
  if (v28)
  {
    CFRelease(v28);
  }

  if ((v29 & 1) == 0)
  {
    v20 = *(*(a1 + 32) + 8);
    v50 = -25293;
    goto LABEL_49;
  }

  v36 = &v18[v24];
  v37 = v16 - v24;
  v38 = *(a1 + 56);
  if (v16 - v24 < 4)
  {
    v39 = -50;
  }

  else
  {
    v39 = 0;
    v40 = *v36++;
    *(v38 + 96) = bswap32(v40);
    v37 = v16 - v24 - 4;
  }

  *(*(*(a1 + 32) + 8) + 24) = v39;
  v41 = *(*(a1 + 32) + 8);
  if (!*(v41 + 24))
  {
    if (v37 < 4)
    {
      v42 = -50;
      v44 = 2863311530;
    }

    else
    {
      v42 = 0;
      v43 = *v36++;
      v44 = bswap32(v43);
      v37 -= 4;
    }

    *(v41 + 24) = v42;
    v45 = *(*(a1 + 32) + 8);
    if (!*(v45 + 24))
    {
      if (v37 < v44)
      {
        *(v45 + 24) = -26275;
        goto LABEL_43;
      }

      v46 = *(v38 + 32);
      if (v44)
      {
        v47 = *v36;
        if (v44 - 1 == v47)
        {
          v36 = (v36 + 1);
          if (!SecKeyDigestAndVerify(*(v46 + 16), kOTRSignatureAlgIDPtr, v57, 32, v36, v47))
          {
            goto LABEL_41;
          }
        }

        else
        {
          v47 = v44;
        }
      }

      else
      {
        v47 = 0;
      }

      v51 = malloc_type_malloc(v47 + 3, 0x833C4C3DuLL);
      v52 = v51;
      if (!v51 || (v54[0] = 8, v56 = v51, SecOTRPIRecreateSignature(v36, v47, &v56, v54), !v56) || SecKeyDigestAndVerify(*(v46 + 16), kOTRSignatureAlgIDPtr, v57, 32, v56, v54[0]))
      {
        free(v52);
        v48 = -26275;
        goto LABEL_42;
      }

      free(v52);
LABEL_41:
      v48 = 0;
LABEL_42:
      *(*(*(a1 + 32) + 8) + 24) = v48;
    }
  }

LABEL_43:
  v49 = *MEMORY[0x1E69E9840];
}

void SecOTRCreateError(int a1, CFIndex code, void *a3, CFTypeRef cf, CFErrorRef *a5)
{
  userInfoKeys[2] = *MEMORY[0x1E69E9840];
  if (a5 && !*a5)
  {
    v7 = *MEMORY[0x1E695E670];
    userInfoKeys[0] = *MEMORY[0x1E695E620];
    userInfoKeys[1] = v7;
    userInfoValues[0] = a3;
    userInfoValues[1] = cf;
    if (a1)
    {
      v8 = *MEMORY[0x1E695E638];
    }

    else
    {
      v8 = @"com.apple.security.otr.error";
    }

    if (cf)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    *a5 = CFErrorCreateWithUserInfoKeysAndValues(*MEMORY[0x1E695E480], v8, code, userInfoKeys, userInfoValues, v9);
    goto LABEL_14;
  }

  if (!cf)
  {
LABEL_14:
    v10 = *MEMORY[0x1E69E9840];
    return;
  }

  v5 = *MEMORY[0x1E69E9840];

  CFRelease(cf);
}

uint64_t appendSizeAndData(const __CFData *a1, __CFData *a2)
{
  Length = CFDataGetLength(a1);
  if (Length >= 0xFFFF)
  {
    return 4294942005;
  }

  *bytes = bswap32(Length) >> 16;
  CFDataAppendBytes(a2, bytes, 2);
  BytePtr = CFDataGetBytePtr(a1);
  v6 = CFDataGetLength(a1);
  CFDataAppendBytes(a2, BytePtr, v6);
  return 0;
}

uint64_t appendPublicOctetsAndSize(uint64_t a1, __CFData *a2)
{
  cf = 0;
  if (SecKeyCopyPublicBytes(a1, &cf))
  {
    appended = 4294941021;
  }

  else
  {
    if (!cf)
    {
      return 4294941021;
    }

    appended = appendSizeAndData(cf, a2);
  }

  v4 = cf;
  if (cf)
  {
    cf = 0;
    CFRelease(v4);
  }

  return appended;
}

void *CreateECPublicKeyFrom(const UInt8 **a1, unint64_t *a2)
{
  v3 = 0;
  LODWORD(v4) = 0;
  if (a1 && a2)
  {
    v5 = *a2 - 2;
    if (*a2 < 2)
    {
      LODWORD(v4) = 0;
LABEL_9:
      v3 = 0;
      goto LABEL_7;
    }

    v3 = *a1 + 2;
    v4 = __rev16(**a1);
    *a2 = v5;
    *a1 = v3;
    v6 = v5 >= v4;
    v7 = v5 - v4;
    if (!v6)
    {
      goto LABEL_9;
    }

    *a2 = v7;
    *a1 = &v3[v4];
  }

LABEL_7:
  v8 = *MEMORY[0x1E695E480];
  v9 = CFDataCreate(*MEMORY[0x1E695E480], v3, v4);
  v10 = SecKeyCreateFromPublicData(v8, 3, v9);
  CFRelease(v9);
  return v10;
}

uint64_t SecOTRCopyIncomingBytes(const __CFData *a1)
{
  v16 = 0;
  v17 = &v16;
  v18 = 0x2000000000;
  v19 = 0;
  v2 = *MEMORY[0x1E695E480];
  ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x1E695E480], @"?OTR:", 0x8000100u, 0x3Fu);
  v20.length = CFDataGetLength(a1);
  v20.location = 0;
  v4 = CFDataFind(a1, ExternalRepresentation, v20, 0);
  if (v4.location == -1)
  {
    v11 = v17;
    v12 = v17[3];
    if (v12 != a1)
    {
      if (!a1 || (CFRetain(a1), (v12 = v11[3]) != 0))
      {
        CFRelease(v12);
      }

      v11[3] = a1;
    }
  }

  else
  {
    v5 = CFStringCreateExternalRepresentation(v2, @".", 0x8000100u, 0x3Fu);
    v21.length = CFDataGetLength(a1);
    v21.location = 0;
    v6 = CFDataFind(a1, v5, v21, 0).location - v4.length;
    BytePtr = CFDataGetBytePtr(a1);
    v8 = CFDataCreateWithBytesNoCopy(v2, &BytePtr[v4.length], v6, *MEMORY[0x1E695E498]);
    CFDataGetBytePtr(v8);
    Length = CFDataGetLength(v8);
    v10 = Length >> 2;
    if ((Length & 3) != 0)
    {
      ++v10;
    }

    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 0x40000000;
    v15[2] = __SecOTRCopyIncomingBytes_block_invoke;
    v15[3] = &unk_1E70E1200;
    v15[4] = &v16;
    v15[5] = v8;
    PerformWithBuffer(3 * v10, v15);
    CFRelease(v8);
    CFRelease(v5);
  }

  CFRelease(ExternalRepresentation);
  v13 = v17[3];
  _Block_object_dispose(&v16, 8);
  return v13;
}

char *__SecOTRCopyIncomingBytes_block_invoke(uint64_t a1, unint64_t a2, UInt8 *a3)
{
  BytePtr = CFDataGetBytePtr(*(a1 + 40));
  Length = CFDataGetLength(*(a1 + 40));
  result = SecBase64Decode_(BytePtr, Length, a3, a2, 0, &v10, &v9);
  if ((result - 1) < a2)
  {
    result = CFDataCreate(*MEMORY[0x1E695E480], a3, result);
    *(*(*(a1 + 32) + 8) + 24) = result;
  }

  return result;
}

void SecOTRPrepareOutgoingBytes(const __CFData *a1, __CFData *a2)
{
  v27 = *MEMORY[0x1E69E9840];
  v4 = *MEMORY[0x1E695E480];
  ExternalRepresentation = CFStringCreateExternalRepresentation(*MEMORY[0x1E695E480], @"?OTR:", 0x8000100u, 0x3Fu);
  v6 = CFStringCreateExternalRepresentation(v4, @".", 0x8000100u, 0x3Fu);
  CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v8 = (2 * (((Length + 2) * 0xAAAAAAAAAAAAAAABLL) >> 64)) & 0xFFFFFFFFFFFFFFFCLL;
  MEMORY[0x1EEE9AC00](Length);
  v10 = &v25[-v9];
  if (v8)
  {
    memset(&v25[-v9], 170, v8);
    BytePtr = CFDataGetBytePtr(a1);
    v12 = CFDataGetLength(a1);
    v13 = BytePtr;
    v14 = v10;
    v15 = v8;
  }

  else
  {
    v16 = CFDataGetBytePtr(a1);
    v12 = CFDataGetLength(a1);
    v13 = v16;
    v14 = v10;
    v15 = 0;
  }

  SecBase64Encode_(v13, v12, v14, v15, 0, &v26);
  v17 = CFDataCreateWithBytesNoCopy(v4, v10, v8, *MEMORY[0x1E695E498]);
  v18 = CFDataGetBytePtr(ExternalRepresentation);
  v19 = CFDataGetLength(ExternalRepresentation);
  CFDataAppendBytes(a2, v18, v19);
  v20 = CFDataGetBytePtr(v17);
  v21 = CFDataGetLength(v17);
  CFDataAppendBytes(a2, v20, v21);
  v22 = CFDataGetBytePtr(v6);
  v23 = CFDataGetLength(v6);
  CFDataAppendBytes(a2, v22, v23);
  CFRelease(ExternalRepresentation);
  CFRelease(v6);
  CFRelease(v17);
  v24 = *MEMORY[0x1E69E9840];
}

void hmac_sha1_PRF(void *key, size_t keyLength, const void *a3, size_t a4, void *a5)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v9.ctx[88] = v8;
  *&v9.ctx[92] = v8;
  *&v9.ctx[80] = v8;
  *&v9.ctx[84] = v8;
  *&v9.ctx[72] = v8;
  *&v9.ctx[76] = v8;
  *&v9.ctx[64] = v8;
  *&v9.ctx[68] = v8;
  *&v9.ctx[56] = v8;
  *&v9.ctx[60] = v8;
  *&v9.ctx[48] = v8;
  *&v9.ctx[52] = v8;
  *&v9.ctx[40] = v8;
  *&v9.ctx[44] = v8;
  *&v9.ctx[32] = v8;
  *&v9.ctx[36] = v8;
  *&v9.ctx[24] = v8;
  *&v9.ctx[28] = v8;
  *&v9.ctx[16] = v8;
  *&v9.ctx[20] = v8;
  *&v9.ctx[8] = v8;
  *&v9.ctx[12] = v8;
  *v9.ctx = v8;
  *&v9.ctx[4] = v8;
  CCHmacInit(&v9, 0, key, keyLength);
  CCHmacUpdate(&v9, a3, a4);
  CCHmacFinal(&v9, a5);
}

void hmac_sha256_PRF(void *key, size_t keyLength, const void *a3, size_t a4, void *a5)
{
  *&v8 = 0xAAAAAAAAAAAAAAAALL;
  *(&v8 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *&v9.ctx[88] = v8;
  *&v9.ctx[92] = v8;
  *&v9.ctx[80] = v8;
  *&v9.ctx[84] = v8;
  *&v9.ctx[72] = v8;
  *&v9.ctx[76] = v8;
  *&v9.ctx[64] = v8;
  *&v9.ctx[68] = v8;
  *&v9.ctx[56] = v8;
  *&v9.ctx[60] = v8;
  *&v9.ctx[48] = v8;
  *&v9.ctx[52] = v8;
  *&v9.ctx[40] = v8;
  *&v9.ctx[44] = v8;
  *&v9.ctx[32] = v8;
  *&v9.ctx[36] = v8;
  *&v9.ctx[24] = v8;
  *&v9.ctx[28] = v8;
  *&v9.ctx[16] = v8;
  *&v9.ctx[20] = v8;
  *&v9.ctx[8] = v8;
  *&v9.ctx[12] = v8;
  *v9.ctx = v8;
  *&v9.ctx[4] = v8;
  CCHmacInit(&v9, 2u, key, keyLength);
  CCHmacUpdate(&v9, a3, a4);
  CCHmacFinal(&v9, a5);
}

uint64_t pbkdf2_hmac_sha1(uint64_t a1, uint64_t a2, void *a3, size_t a4, unsigned int a5, char *a6, unint64_t a7)
{
  v14 = malloc_type_malloc(a4 + 60, 0xD2D54DD7uLL);
  if (!v14)
  {
    return 4294899624;
  }

  v15 = v14;
  pbkdf2(hmac_sha1_PRF, 0x14uLL, a1, a2, a3, a4, a5, a6, a7, v14);
  bzero(v15, a4 + 60);
  return 0;
}

uint64_t pbkdf2_hmac_sha256(uint64_t a1, uint64_t a2, void *a3, size_t a4, unsigned int a5, char *a6, unint64_t a7)
{
  v14 = malloc_type_malloc(a4 + 96, 0xEA704FE0uLL);
  if (!v14)
  {
    return 4294899624;
  }

  v15 = v14;
  pbkdf2(hmac_sha256_PRF, 0x20uLL, a1, a2, a3, a4, a5, a6, a7, v14);
  bzero(v15, a4 + 96);
  return 0;
}

uint64_t SecKeyFromPassphraseDataHMACSHA1(const __CFData *a1, const __CFData *a2, unsigned int a3, __CFData *a4)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v10 = CFDataGetBytePtr(a2);
  v11 = CFDataGetLength(a2);
  MutableBytePtr = CFDataGetMutableBytePtr(a4);
  v13 = CFDataGetLength(a4);

  return pbkdf2_hmac_sha1(BytePtr, Length, v10, v11, a3, MutableBytePtr, v13);
}

uint64_t SecKeyFromPassphraseDataHMACSHA256(const __CFData *a1, const __CFData *a2, unsigned int a3, __CFData *a4)
{
  BytePtr = CFDataGetBytePtr(a1);
  Length = CFDataGetLength(a1);
  v10 = CFDataGetBytePtr(a2);
  v11 = CFDataGetLength(a2);
  MutableBytePtr = CFDataGetMutableBytePtr(a4);
  v13 = CFDataGetLength(a4);

  return pbkdf2_hmac_sha256(BytePtr, Length, v10, v11, a3, MutableBytePtr, v13);
}

uint64_t SecMLKEMPublicKeyCopyOperationResult(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __CFString **a8)
{
  v23[2] = *MEMORY[0x1E69E9840];
  if (a2 != 5 || !CFEqual(cf1, @"algid:kem:ML-KEM"))
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

uint64_t SecMLKEMPublicKeyCopyPublicOctets(uint64_t a1, __CFData **a2)
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

__CFString *SecMLKEMPublicKeyCopyKeyDescription(uint64_t a1)
{
  if (*(a1 + 24))
  {
    v2 = *(a1 + 24);
    v3 = SecKEMGenerateHexDump();
    v4 = cckem_pubkey_nbytes_ctx();
    cckem_mlkem768();
    if (v4 == cckem_pubkey_nbytes_info())
    {
      v5 = @"ML-KEM-768-pubKey";
    }

    else
    {
      v8 = cckem_pubkey_nbytes_ctx();
      cckem_mlkem1024();
      v9 = cckem_pubkey_nbytes_info();
      v5 = @"ML-KEM";
      if (v8 == v9)
      {
        v5 = @"ML-KEM-1024-pubKey";
      }
    }

    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@"<SecKeyRef %@ algorithm id: %lu, key type: %s, version: %d, bytes: %@, addr: %p>", v5, 9, *(*(a1 + 16) + 8), **(a1 + 16), v3, a1];
  }

  else
  {
    v6 = secLogObjForScope("SecError");
    if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 0;
      _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "Invalid key data: The provided key does not contain a valid KEM context.", buf, 2u);
    }

    return &stru_1EFA8C6C8;
  }

  return v7;
}

uint64_t SecMLKEMPublicKeyCopyAttributeDictionary(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = cckem_pubkey_nbytes_ctx();
  cckem_mlkem768();
  if (v2 == cckem_pubkey_nbytes_info())
  {
    v3 = @"768";
LABEL_5:
    v5 = v3;
    goto LABEL_9;
  }

  v4 = cckem_pubkey_nbytes_ctx();
  cckem_mlkem1024();
  if (v4 == cckem_pubkey_nbytes_info())
  {
    v3 = @"1024";
    goto LABEL_5;
  }

  v6 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v6, OS_LOG_TYPE_DEFAULT))
  {
    *v11 = 0;
    _os_log_impl(&dword_1887D2000, v6, OS_LOG_TYPE_DEFAULT, "unknown ML-KEM type detected", v11, 2u);
  }

  v3 = &unk_1EFAAC778;
LABEL_9:
  v7 = SecKEMPublicKeyCopyData(v1, 0);
  v8 = SecSHA1DigestCreate(*MEMORY[0x1E695E480], [(__CFData *)v7 bytes], [(__CFData *)v7 length]);
  v9 = SecKEMCreateKeyAttributeDictionary(@"110", v3, @"0", v8, v7);

  return v9;
}

uint64_t SecMLKEMPublicKeyInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v17 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    cckem_mlkem768();
    if (cckem_pubkey_nbytes_info() == a3)
    {
      cckem_mlkem768();
    }

    else
    {
      cckem_mlkem1024();
      if (cckem_pubkey_nbytes_info() != a3)
      {
        v8 = secLogObjForScope("SecWarning");
        if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
        {
          v13 = 67109120;
          v14 = a3;
          v9 = "ML-KEM pubkey size=%dbytes is invalid";
          v10 = v8;
          v11 = 8;
          goto LABEL_13;
        }

LABEL_14:

        goto LABEL_15;
      }

      cckem_mlkem1024();
    }

    v6 = cckem_sizeof_pub_ctx();
    *(a1 + 24) = malloc_type_calloc(1uLL, v6, 0xB0FAC541uLL);
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
        v9 = "ML-KEM pubkey size=%dbytes import failed: %d";
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

uint64_t SecMLKEMPrivateKeyCopyOperationResult(uint64_t a1, uint64_t a2, CFTypeRef cf1, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, __CFString **a8)
{
  if (a2 == 6 && CFEqual(cf1, @"algid:kem:ML-KEM"))
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

uint64_t SecMLKEMPrivateKeyCopyPublicOctets(uint64_t a1, __CFData **a2)
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

uint64_t SecMLKEMPrivateKeyCopyKeyDescription(uint64_t a1)
{
  v2 = *(a1 + 24);
  cckem_public_ctx();
  v3 = cckem_privkey_nbytes_ctx();
  cckem_mlkem768();
  if (v3 == cckem_privkey_nbytes_info())
  {
    v4 = @"ML-KEM-768-privKey";
  }

  else
  {
    cckem_public_ctx();
    v5 = cckem_privkey_nbytes_ctx();
    cckem_mlkem1024();
    v6 = cckem_privkey_nbytes_info();
    v4 = @"ML-KEM";
    if (v5 == v6)
    {
      v4 = @"ML-KEM-1024-privKey";
    }
  }

  [MEMORY[0x1E696AEC0] stringWithFormat:@"<SecKeyRef %@ algorithm id: %lu, key type: %s, version: %d, addr: %p>", v4, 9, *(*(a1 + 16) + 8), **(a1 + 16), a1];
  return objc_claimAutoreleasedReturnValue();
}

uint64_t SecMLKEMPrivateKeyCopyAttributeDictionary(uint64_t a1)
{
  v2 = *(a1 + 24);
  cckem_public_ctx();
  v3 = cckem_privkey_nbytes_ctx();
  cckem_mlkem768();
  if (v3 == cckem_privkey_nbytes_info())
  {
    v4 = @"768";
LABEL_5:
    v6 = v4;
    goto LABEL_9;
  }

  cckem_public_ctx();
  v5 = cckem_privkey_nbytes_ctx();
  cckem_mlkem1024();
  if (v5 == cckem_privkey_nbytes_info())
  {
    v4 = @"1024";
    goto LABEL_5;
  }

  v7 = secLogObjForScope("SecError");
  if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
  {
    *v19 = 0;
    _os_log_impl(&dword_1887D2000, v7, OS_LOG_TYPE_DEFAULT, "unknown ML-KEM type detected", v19, 2u);
  }

  v4 = &unk_1EFAAC778;
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
  if (v15)
  {
    v16 = SecKEMCreateKeyAttributeDictionary(@"110", v4, @"1", v14, v15);
  }

  else
  {
    v17 = [MEMORY[0x1E695DEF0] data];
    v16 = SecKEMCreateKeyAttributeDictionary(@"110", v4, @"1", v14, v17);
  }

  if (v13)
  {
  }

  return v16;
}

uint64_t SecMLKEMPrivateKeyInit(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = *MEMORY[0x1E69E9840];
  if (a3)
  {
    cckem_mlkem768();
    v5 = cckem_pubkey_nbytes_info();
    cckem_mlkem768();
    if (cckem_privkey_nbytes_info() + v5 == a3)
    {
      cckem_mlkem768();
    }

    else
    {
      cckem_mlkem1024();
      v7 = cckem_pubkey_nbytes_info();
      cckem_mlkem1024();
      if (cckem_privkey_nbytes_info() + v7 != a3)
      {
        v11 = secLogObjForScope("SecWarning");
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          v17 = 67109120;
          v18 = a3;
          v12 = "ML-KEM pubkey size=%dbytes is invalid";
          v14 = v11;
          v15 = 8;
          goto LABEL_17;
        }

        goto LABEL_18;
      }

      cckem_mlkem1024();
    }

    v8 = cckem_sizeof_full_ctx();
    *(a1 + 24) = malloc_type_calloc(1uLL, v8, 0x90FBF96FuLL);
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
        v12 = "ML-KEM privkey size=%dbytes import of priv part failed: %d";
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
        v12 = "ML-KEM privkey size=%dbytes import of pub part failed: %d";
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

uint64_t SecMLKEMKeyGeneratePair(void *a1, void *a2, void *a3)
{
  v28 = *MEMORY[0x1E69E9840];
  cckem_mlkem768();
  v6 = [a1 objectForKeyedSubscript:@"bsiz"];
  v7 = v6;
  if (!v6)
  {
LABEL_6:
    v10 = cckem_sizeof_full_ctx();
    v11 = malloc_type_calloc(1uLL, v10, 0x7DE17BA8uLL);
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
        _os_log_impl(&dword_1887D2000, v14, OS_LOG_TYPE_DEFAULT, "Failed to generate ML-KEM key: err %d", &v26, 8u);
      }

      v15 = 4294941021;
    }

    else
    {
      if (SecCFAllocatorZeroize_sOnce != -1)
      {
        dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
      }

      v16 = SecKeyCreate(SecCFAllocatorZeroize_sAllocator, &kSecMLKEMPrivateKeyDescriptor, v11, 0, 0);
      if (v16)
      {
        v17 = cckem_sizeof_pub_ctx();
        v18 = malloc_type_calloc(1uLL, v17, 0x619CB1D7uLL);
        v19 = cckem_public_ctx();
        v20 = cckem_sizeof_pub_ctx();
        memcpy(v18, v19, v20);
        v21 = SecKeyCreate(*MEMORY[0x1E695E480], &kSecMLKEMPublicKeyDescriptor, v18, 0, 0);
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
    cckem_mlkem768();
    goto LABEL_6;
  }

  v9 = [v7 integerValue];
  if (v9 == [@"1024" integerValue])
  {
    cckem_mlkem1024();
    goto LABEL_6;
  }

  v23 = secLogObjForScope("SecWarning");
  if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
  {
    v26 = 138412290;
    v27 = v7;
    _os_log_impl(&dword_1887D2000, v23, OS_LOG_TYPE_DEFAULT, "Invalid ML-KEM type %@ requested for ML-KEM key generation", &v26, 0xCu);
  }

  v15 = 4294967246;
LABEL_25:

  v24 = *MEMORY[0x1E69E9840];
  return v15;
}

uint64_t __CryptoTokenKitLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  CryptoTokenKitLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *CryptoTokenKitLibrary()
{
  v0 = CryptoTokenKitLibraryCore();
  if (v0)
  {
    return v0;
  }

  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *CryptoTokenKitLibrary(void)"];
  [v1 handleFailureInFunction:v3 file:@"SecSoftLink.m" lineNumber:26 description:{@"%s", 0}];

  __break(1u);
  free(v4);
  return v1;
}

void __getTKClientTokenClass_block_invoke(uint64_t a1)
{
  CryptoTokenKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TKClientToken");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTKClientTokenClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTKClientTokenClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"SecSoftLink.m" lineNumber:27 description:{@"Unable to find class %s", "TKClientToken"}];

    __break(1u);
  }
}

void __getTKClientTokenSessionClass_block_invoke(uint64_t a1)
{
  CryptoTokenKitLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("TKClientTokenSession");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getTKClientTokenSessionClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getTKClientTokenSessionClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"SecSoftLink.m" lineNumber:28 description:{@"Unable to find class %s", "TKClientTokenSession"}];

    __break(1u);
  }
}

uint64_t getTKErrorDomainSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getTKErrorDomainSymbolLoc_ptr;
  v6 = getTKErrorDomainSymbolLoc_ptr;
  if (!getTKErrorDomainSymbolLoc_ptr)
  {
    v1 = CryptoTokenKitLibrary();
    v4[3] = dlsym(v1, "TKErrorDomain");
    getTKErrorDomainSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1888F32AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getTKErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = CryptoTokenKitLibrary();
  result = dlsym(v2, "TKErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getTKErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getTKErrorDomain()
{
  TKErrorDomainSymbolLoc = getTKErrorDomainSymbolLoc();
  if (TKErrorDomainSymbolLoc)
  {
    v1 = *TKErrorDomainSymbolLoc;

    v2 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (TKErrorDomain) (*)(void))0)()) getTKErrorDomain(void)"];
    [v3 handleFailureInFunction:v4 file:@"SecSoftLink.m" lineNumber:29 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

uint64_t LocalAuthenticationLibraryCore()
{
  v12 = *MEMORY[0x1E69E9840];
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = LocalAuthenticationLibraryCore_frameworkLibrary;
  v6 = LocalAuthenticationLibraryCore_frameworkLibrary;
  if (!LocalAuthenticationLibraryCore_frameworkLibrary)
  {
    v7 = "/System/Library/Frameworks/LocalAuthentication.framework/LocalAuthentication";
    v8 = "/System/Library/PrivateFrameworks/LocalAuthentication.framework/LocalAuthentication";
    v9 = "/AppleInternal/Library/Frameworks/LocalAuthentication.framework/LocalAuthentication";
    v10 = "/System/AppleInternal/Library/Frameworks/LocalAuthentication.framework/LocalAuthentication";
    v11 = 0;
    v4[3] = _sl_dlopen();
    LocalAuthenticationLibraryCore_frameworkLibrary = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  v1 = *MEMORY[0x1E69E9840];
  return v0;
}

void sub_1888F34E0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __LocalAuthenticationLibraryCore_block_invoke(uint64_t a1)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  result = _sl_dlopen();
  *(*(*(a1 + 32) + 8) + 24) = result;
  LocalAuthenticationLibraryCore_frameworkLibrary = *(*(*(a1 + 32) + 8) + 24);
  v4 = *MEMORY[0x1E69E9840];
  return result;
}

void *LocalAuthenticationLibrary()
{
  v0 = LocalAuthenticationLibraryCore();
  if (v0)
  {
    return v0;
  }

  v1 = [MEMORY[0x1E696AAA8] currentHandler];
  v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"void *LocalAuthenticationLibrary(void)"];
  [v1 handleFailureInFunction:v3 file:@"SecSoftLink.m" lineNumber:30 description:{@"%s", 0}];

  __break(1u);
  free(v4);
  return v1;
}

id getLAContextClass()
{
  v4 = 0;
  v5 = &v4;
  v6 = 0x2050000000;
  v0 = getLAContextClass_softClass;
  v7 = getLAContextClass_softClass;
  if (!getLAContextClass_softClass)
  {
    v3[0] = MEMORY[0x1E69E9820];
    v3[1] = 3221225472;
    v3[2] = __getLAContextClass_block_invoke;
    v3[3] = &unk_1E70E1270;
    v3[4] = &v4;
    __getLAContextClass_block_invoke(v3);
    v0 = v5[3];
  }

  v1 = v0;
  _Block_object_dispose(&v4, 8);

  return v1;
}

void sub_1888F371C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void __getLAContextClass_block_invoke(uint64_t a1)
{
  LocalAuthenticationLibrary();
  *(*(*(a1 + 32) + 8) + 24) = objc_getClass("LAContext");
  if (*(*(*(a1 + 32) + 8) + 24))
  {
    getLAContextClass_softClass = *(*(*(a1 + 32) + 8) + 24);
  }

  else
  {
    v2 = [MEMORY[0x1E696AAA8] currentHandler];
    v3 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"Class getLAContextClass(void)_block_invoke"];
    [v2 handleFailureInFunction:v3 file:@"SecSoftLink.m" lineNumber:31 description:{@"Unable to find class %s", "LAContext"}];

    __break(1u);
  }
}

uint64_t getLAErrorDomainSymbolLoc()
{
  v3 = 0;
  v4 = &v3;
  v5 = 0x2020000000;
  v0 = getLAErrorDomainSymbolLoc_ptr;
  v6 = getLAErrorDomainSymbolLoc_ptr;
  if (!getLAErrorDomainSymbolLoc_ptr)
  {
    v1 = LocalAuthenticationLibrary();
    v4[3] = dlsym(v1, "LAErrorDomain");
    getLAErrorDomainSymbolLoc_ptr = v4[3];
    v0 = v4[3];
  }

  _Block_object_dispose(&v3, 8);
  return v0;
}

void sub_1888F38D0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void *__getLAErrorDomainSymbolLoc_block_invoke(uint64_t a1)
{
  v2 = LocalAuthenticationLibrary();
  result = dlsym(v2, "LAErrorDomain");
  *(*(*(a1 + 32) + 8) + 24) = result;
  getLAErrorDomainSymbolLoc_ptr = *(*(*(a1 + 32) + 8) + 24);
  return result;
}

void getLAErrorDomain()
{
  LAErrorDomainSymbolLoc = getLAErrorDomainSymbolLoc();
  if (LAErrorDomainSymbolLoc)
  {
    v1 = *LAErrorDomainSymbolLoc;

    v2 = v1;
  }

  else
  {
    v3 = [MEMORY[0x1E696AAA8] currentHandler];
    v4 = [MEMORY[0x1E696AEC0] stringWithUTF8String:"typeof (((typeof (LAErrorDomain) (*)(void))0)()) getLAErrorDomain(void)"];
    [v3 handleFailureInFunction:v4 file:@"SecSoftLink.m" lineNumber:32 description:{@"%s", dlerror()}];

    __break(1u);
  }
}

const __CFString *SecPasswordCreateWithRandomDigits(int a1, CFErrorRef *a2)
{
  v8 = a1;
  valuePtr = a1;
  uppercaseLetterCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetUppercaseLetter);
  lowercaseLetterCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetLowercaseLetter);
  decimalDigitCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  punctuationCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
  v3 = CFNumberCreate(0, kCFNumberIntType, &valuePtr);
  v4 = CFNumberCreate(0, kCFNumberIntType, &v8);
  Mutable = CFDictionaryCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, kSecPasswordMinLengthKey, v3);
  CFDictionaryAddValue(Mutable, kSecPasswordMaxLengthKey, v4);
  CFDictionaryAddValue(Mutable, kSecPasswordAllowedCharactersKey, @"0123456789");
  v6 = SecPasswordGenerate(3, a2, Mutable);
  if (v3)
  {
    CFRelease(v3);
  }

  if (v4)
  {
    CFRelease(v4);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return v6;
}

const __CFString *SecPasswordGenerate(int a1, CFErrorRef *a2, CFDictionaryRef theDict)
{
  v163 = 0;
  v164 = 0;
  v161 = 0;
  number = 0;
  range = 0;
  v160 = 0xAAAAAAAAAAAAAAAALL;
  v158 = 0xAAAAAAAAAAAAAAAALL;
  value[0] = 0;
  v3 = MEMORY[0x1E695E480];
  if (!theDict)
  {
    goto LABEL_121;
  }

  if (CFDictionaryGetValueIfPresent(theDict, kSecPasswordDefaultForType, value))
  {
    if (value[0])
    {
      v6 = CFGetTypeID(value[0]);
      if (v6 == CFStringGetTypeID() && CFStringCompare(value[0], @"true", 0) == kCFCompareEqualTo)
      {
LABEL_111:
        if (!CFDictionaryGetValueIfPresent(theDict, kSecPasswordDefaultForType, &v163) || !v163 || (v48 = CFGetTypeID(v163), v48 != CFStringGetTypeID()) || CFStringCompare(v163, @"true", 0))
        {
          v49 = *v3;
          Mutable = CFArrayCreateMutable(*v3, 0, MEMORY[0x1E695E9C0]);
          v169[3] = 0xAAAAAAAAAAAAAAAALL;
          memset(v169, 0, 24);
          memset(v168, 0, sizeof(v168));
          v167[2] = 0;
          v167[3] = 0;
          v51 = CFDictionaryGetValue(theDict, kSecPasswordMinLengthKey);
          v52 = CFDictionaryGetValue(theDict, kSecPasswordMaxLengthKey);
          CFNumberGetValue(v51, kCFNumberSInt64Type, &v169[3]);
          v53 = v169[3];
          CFNumberGetValue(v52, kCFNumberSInt64Type, &v169[3]);
          v54 = v169[3];
          if (a1 != 3)
          {
            v67 = v53 != 0;
            if (v169[3] == 20)
            {
              v67 = 0;
            }

            if (v169[3] != v53)
            {
              v67 = 0;
            }

            if (v169[3] < 20)
            {
              v67 = 1;
            }

            v68 = 20;
            if (v53 > 20)
            {
              v68 = v53;
            }

            v69 = v169[3] != 0 && v67;
            v91 = v69 == 0;
            v70 = v69 | (v53 > 20);
            if (v91)
            {
              v54 = v68;
            }

            if (v70)
            {
              v55 = @"false";
            }

            else
            {
              v55 = @"true";
            }

            v71 = CFDictionaryGetValue(theDict, kSecPasswordAllowedCharactersKey);
            v72 = v71;
            if (v71)
            {
              CFRetain(v71);
            }

            v73 = CFDictionaryGetValue(theDict, kSecPasswordRequiredCharactersKey);
            if (v73)
            {
              v74 = v73;
              for (i = 0; i < CFArrayGetCount(v74); ++i)
              {
                ValueAtIndex = CFArrayGetValueAtIndex(v74, i);
                if (ValueAtIndex)
                {
                  v77 = ValueAtIndex;
                  v171.length = CFStringGetLength(v72);
                  v171.location = 0;
                  if (CFStringFindCharacterFromSet(v72, v77, v171, 0, 0))
                  {
                    CFArrayAppendValue(Mutable, v77);
                  }
                }
              }

LABEL_188:
              if (!CFDictionaryGetValueIfPresent(theDict, kSecPasswordDisallowedCharacters, &v169[2]))
              {
                v169[2] = 0;
              }

              if (!CFDictionaryGetValueIfPresent(theDict, kSecPasswordCantEndWithChars, &v169[1]))
              {
                v169[1] = 0;
              }

              if (!CFDictionaryGetValueIfPresent(theDict, kSecPasswordCantStartWithChars, v169))
              {
                v169[0] = 0;
              }

              if (!CFDictionaryGetValueIfPresent(theDict, kSecPasswordGroupSize, &v168[3]))
              {
                v168[3] = 0;
              }

              if (!CFDictionaryGetValueIfPresent(theDict, kSecPasswordNumberOfGroups, &v168[2]))
              {
                v168[2] = 0;
              }

              if (!CFDictionaryGetValueIfPresent(theDict, kSecPasswordSeparator, &v168[1]))
              {
                v168[1] = 0;
              }

              if (!CFDictionaryGetValueIfPresent(theDict, kSecPasswordContainsNoMoreThanNSpecificCharacters, v168))
              {
                v168[0] = 0;
              }

              if (!CFDictionaryGetValueIfPresent(theDict, kSecPasswordContainsAtLeastNSpecificCharacters, &v167[3]))
              {
                v167[3] = 0;
              }

              if (CFDictionaryGetValueIfPresent(theDict, kSecPasswordContainsNoMoreThanNConsecutiveIdenticalCharacters, &v167[2]))
              {
                if (v72)
                {
                  goto LABEL_206;
                }
              }

              else
              {
                v167[2] = 0;
                if (v72)
                {
LABEL_206:
                  v172.length = CFStringGetLength(v72);
                  v172.location = 0;
                  if (!CFStringFindWithOptions(v72, @"-", v172, 1uLL, 0))
                  {
LABEL_211:
                    Length = CFStringGetLength(v72);
                    MutableCopy = CFStringCreateMutableCopy(v49, Length, v72);
                    v180.length = CFStringGetLength(v72);
                    v180.location = 0;
                    CFStringFindAndReplace(MutableCopy, @"-", &stru_1EFA8C6C8, v180, 1uLL);
                    CFRelease(v72);
                    v55 = @"false";
                    v72 = MutableCopy;
LABEL_212:
                    if (CFArrayGetCount(Mutable) > v54 && Mutable)
                    {
                      CFRelease(Mutable);
                      Mutable = 0;
                    }

                    value[0] = v54;
                    v94 = CFNumberCreate(v49, kCFNumberCFIndexType, value);
                    v86 = CFDictionaryCreateMutable(v49, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
                    CFDictionaryAddValue(v86, @"UseDefaultPasswordFormat", v55);
                    CFDictionarySetValue(v86, @"NumberOfRequiredRandomCharacters", v94);
                    CFDictionaryAddValue(v86, @"AllowedCharacters", v72);
                    if (Mutable)
                    {
                      CFDictionaryAddValue(v86, @"RequiredCharacterSets", Mutable);
                    }

                    if (v169[2])
                    {
                      CFDictionaryAddValue(v86, kSecPasswordDisallowedCharacters, v169[2]);
                    }

                    if (v169[1])
                    {
                      CFDictionaryAddValue(v86, kSecPasswordCantEndWithChars, v169[1]);
                    }

                    if (v169[0])
                    {
                      CFDictionaryAddValue(v86, kSecPasswordCantStartWithChars, v169[0]);
                    }

                    if (v168[3])
                    {
                      CFDictionaryAddValue(v86, kSecPasswordGroupSize, v168[3]);
                    }

                    if (v168[2])
                    {
                      CFDictionaryAddValue(v86, kSecPasswordNumberOfGroups, v168[2]);
                    }

                    if (v168[1])
                    {
                      CFDictionaryAddValue(v86, kSecPasswordSeparator, v168[1]);
                    }

                    if (v168[0])
                    {
                      CFDictionaryAddValue(v86, kSecPasswordContainsNoMoreThanNSpecificCharacters, v168[0]);
                    }

                    if (v167[3])
                    {
                      CFDictionaryAddValue(v86, kSecPasswordContainsAtLeastNSpecificCharacters, v167[3]);
                    }

                    if (v167[2])
                    {
                      CFDictionaryAddValue(v86, kSecPasswordContainsNoMoreThanNConsecutiveIdenticalCharacters, v167[2]);
                    }

                    CFRelease(v55);
                    if (v94)
                    {
                      CFRelease(v94);
                    }

                    if (v72)
                    {
                      CFRelease(v72);
                    }

                    if (!Mutable)
                    {
                      goto LABEL_242;
                    }

                    v90 = Mutable;
LABEL_241:
                    CFRelease(v90);
LABEL_242:
                    if (!v86)
                    {
                      return 0;
                    }

                    v95 = CFDictionaryGetValue(v86, @"NumberOfRequiredRandomCharacters");
                    if (v95 && (v96 = v95, v97 = CFGetTypeID(v95), v97 == CFNumberGetTypeID()))
                    {
                      if (CFNumberGetValue(v96, kCFNumberSInt64Type, &v160))
                      {
                        v98 = v160;
                      }

                      else
                      {
                        v98 = 0;
                      }
                    }

                    else
                    {
                      v98 = 0;
                    }

                    v99 = CFDictionaryGetValue(v86, @"NumberOfChecksumCharacters");
                    if (v99 && (v100 = v99, v101 = CFGetTypeID(v99), v101 == CFNumberGetTypeID()))
                    {
                      v102 = CFNumberGetValue(v100, kCFNumberSInt64Type, &v160);
                      v103 = v160;
                      if (!v102)
                      {
                        v103 = 0;
                      }

                      v156 = v103;
                    }

                    else
                    {
                      v156 = 0;
                    }

                    if (CFDictionaryGetValueIfPresent(v86, kSecPasswordGroupSize, &number))
                    {
                      CFNumberGetValue(number, kCFNumberSInt64Type, &range);
                    }

                    else
                    {
                      number = 0;
                    }

                    if (!CFDictionaryGetValueIfPresent(v86, kSecPasswordNumberOfGroups, &v161))
                    {
                      v161 = 0;
                      if (v98)
                      {
                        goto LABEL_262;
                      }

                      goto LABEL_359;
                    }

                    CFNumberGetValue(v161, kCFNumberSInt64Type, &v158);
                    if (!v98)
                    {
LABEL_359:
                      v154 = v86;
LABEL_360:
                      CFRelease(v154);
                      return 0;
                    }

LABEL_262:
                    v104 = CFDictionaryGetValue(v86, @"AllowedCharacters");
                    v105 = malloc_type_malloc(v98, 0x53C9F594uLL);
                    v106 = malloc_type_malloc(v98, 0x92B250B4uLL);
                    v107 = v106;
                    if (!v105 || !v106)
                    {
                      free(v105);
                      free(v107);
                      goto LABEL_359;
                    }

                    v108 = CFStringGetLength(v104);
                    getUniformRandomNumbers(v105, v98, v108);
                    value[0] = 0;
                    if (!CFDictionaryGetValueIfPresent(v86, kSecPasswordDisallowedCharacters, value))
                    {
                      value[0] = 0;
                    }

                    if (v98 < 1)
                    {
LABEL_278:
                      v115 = CFStringCreateWithBytes(v49, v107, v98, 0x8000100u, 0);
                      free(v107);
                      free(v105);
                      if (!v161 || !number)
                      {
                        Copy = CFStringCreateCopy(v49, v115);
                        goto LABEL_301;
                      }

                      v116 = CFStringCreateMutable(v49, 0);
                      if (!CFDictionaryGetValueIfPresent(v86, kSecPasswordSeparator, &v164) || !v164)
                      {
                        v164 = @"-";
                      }

                      v117 = 0;
                      v118.length = range;
                      while (1)
                      {
                        if (v118.length + v117 >= v98)
                        {
                          if (v118.length + v117 != v98)
                          {
                            v174.length = v98 - v117;
                            v174.location = v117;
                            v122 = CFStringCreateWithSubstring(v49, v115, v174);
                            CFStringAppend(v116, v122);
                            if (v122)
                            {
                              CFRelease(v122);
                            }

LABEL_296:
                            if (v156)
                            {
                              Checksum = CreateChecksum(a1, v115, v156, v104);
                              CFStringAppend(v116, Checksum);
                              if (Checksum)
                              {
                                CFRelease(Checksum);
                              }
                            }

                            Copy = CFStringCreateCopy(v49, v116);
                            if (v116)
                            {
                              CFRelease(v116);
                            }

LABEL_301:
                            if (v115)
                            {
                              CFRelease(v115);
                            }

                            value[0] = 0;
                            v168[3] = 0xAAAAAAAAAAAAAAAALL;
                            memset(v169, 0, sizeof(v169));
                            v124 = CFDictionaryGetValue(v86, @"RequiredCharacterSets");
                            if (!CFDictionaryGetValueIfPresent(v86, kSecPasswordCantEndWithChars, &v169[3]))
                            {
                              v169[3] = 0;
                            }

                            if (!CFDictionaryGetValueIfPresent(v86, kSecPasswordCantStartWithChars, &v169[2]))
                            {
                              v169[2] = 0;
                            }

                            if (!CFDictionaryGetValueIfPresent(v86, kSecPasswordContainsAtLeastNSpecificCharacters, &v169[1]))
                            {
                              v169[1] = 0;
                            }

                            if (!CFDictionaryGetValueIfPresent(v86, kSecPasswordContainsNoMoreThanNSpecificCharacters, v169))
                            {
                              v169[0] = 0;
                            }

                            if (CFDictionaryGetValueIfPresent(v86, kSecPasswordContainsNoMoreThanNConsecutiveIdenticalCharacters, value))
                            {
                              CFNumberGetValue(value[0], kCFNumberSInt64Type, &v168[3]);
                              v125 = v168[3];
                            }

                            else
                            {
                              v125 = 0;
                              value[0] = 0;
                            }

                            v126 = v169[3];
                            if (!v169[3])
                            {
                              goto LABEL_339;
                            }

                            v127 = CFCharacterSetCreateWithCharactersInString(v49, v169[3]);
                            v128 = CFStringGetLength(Copy);
                            v129 = v128 - CFStringGetLength(v126);
                            v175.length = CFStringGetLength(v126);
                            v175.location = v129;
                            v130 = CFStringCompareWithOptions(Copy, v126, v175, 0);
                            if (v127)
                            {
                              CFRelease(v127);
                            }

                            if (v130)
                            {
LABEL_339:
                              v131 = v169[2];
                              if (!v169[2])
                              {
                                goto LABEL_391;
                              }

                              v132 = CFCharacterSetCreateWithCharactersInString(v49, v169[2]);
                              v176.length = CFStringGetLength(v131);
                              v176.location = 0;
                              v133 = CFStringCompareWithOptions(Copy, v131, v176, 0);
                              if (v132)
                              {
                                CFRelease(v132);
                              }

                              if (v133)
                              {
LABEL_391:
                                if (!v169[1])
                                {
                                  goto LABEL_392;
                                }

                                v134 = CFDictionaryGetValue(v169[1], kSecPasswordCharacterCount);
                                v135 = CFDictionaryGetValue(v169[1], kSecPasswordCharacters);
                                CFNumberGetValue(v134, kCFNumberSInt64Type, &v168[3]);
                                v136 = v168[3];
                                v137 = CFCharacterSetCreateWithCharactersInString(v49, v135);
                                v138 = 0;
                                v139 = 0;
                                while (v138 < CFStringGetLength(Copy))
                                {
                                  v177.location = v138;
                                  v177.length = 1;
                                  if (CFStringFindCharacterFromSet(Copy, v137, v177, 0, 0))
                                  {
                                    ++v139;
                                  }

                                  ++v138;
                                }

                                if (v137)
                                {
                                  CFRelease(v137);
                                }

                                if (v139 >= v136)
                                {
LABEL_392:
                                  if (!v169[0])
                                  {
                                    goto LABEL_340;
                                  }

                                  v140 = CFDictionaryGetValue(v169[0], kSecPasswordCharacterCount);
                                  v141 = CFDictionaryGetValue(v169[0], kSecPasswordCharacters);
                                  CFNumberGetValue(v140, kCFNumberSInt64Type, &v168[3]);
                                  v142 = v168[3];
                                  v143 = CFCharacterSetCreateWithCharactersInString(v49, v141);
                                  v144 = 0;
                                  v145 = 0;
                                  while (v144 < CFStringGetLength(Copy))
                                  {
                                    v178.location = v144;
                                    v178.length = 1;
                                    if (CFStringFindCharacterFromSet(Copy, v143, v178, 0, 0))
                                    {
                                      ++v145;
                                    }

                                    ++v144;
                                  }

                                  if (v143)
                                  {
                                    CFRelease(v143);
                                  }

                                  if (v145 <= v142)
                                  {
LABEL_340:
                                    if (value[0])
                                    {
                                      LODWORD(v146) = 0;
                                      for (j = 0; j < CFStringGetLength(Copy); ++j)
                                      {
                                        CharacterAtIndex = CFStringGetCharacterAtIndex(Copy, j);
                                        v146 = v146;
                                        for (k = j; k < CFStringGetLength(Copy); ++k)
                                        {
                                          v150 = CFStringGetCharacterAtIndex(Copy, k);
                                          if (v146 > v125)
                                          {
                                            goto LABEL_353;
                                          }

                                          if (v150 != CharacterAtIndex)
                                          {
                                            LODWORD(v146) = 0;
                                            break;
                                          }

                                          ++v146;
                                        }
                                      }
                                    }

                                    v151 = 0;
                                    while (v151 < CFArrayGetCount(v124))
                                    {
                                      v152 = CFArrayGetValueAtIndex(v124, v151);
                                      v179.length = CFStringGetLength(Copy);
                                      v179.location = 0;
                                      ++v151;
                                      if (!CFStringFindCharacterFromSet(Copy, v152, v179, 0, 0))
                                      {
                                        goto LABEL_353;
                                      }
                                    }

                                    if (!SecPasswordIsPasswordWeak2(a1 == 3, Copy))
                                    {
                                      CFRelease(v86);
                                      return Copy;
                                    }
                                  }
                                }
                              }
                            }

LABEL_353:
                            if (Copy)
                            {
                              CFRelease(Copy);
                            }

                            goto LABEL_262;
                          }

                          v118.location = v117;
                          v119 = CFStringCreateWithSubstring(v49, v115, v118);
                          v121 = v116;
                          v120 = v119;
                        }

                        else
                        {
                          v118.location = v117;
                          v119 = CFStringCreateWithSubstring(v49, v115, v118);
                          CFStringAppend(v116, v119);
                          v120 = v164;
                          v121 = v116;
                        }

                        CFStringAppend(v121, v120);
                        if (v119)
                        {
                          CFRelease(v119);
                        }

                        v118.length = range;
                        v117 += range;
                        if (v117 == v98)
                        {
                          goto LABEL_296;
                        }
                      }
                    }

                    v109 = 0;
                    while (1)
                    {
                      LOWORD(v169[3]) = -21846;
                      v110 = CFStringGetCharacterAtIndex(v104, v105[v109]);
                      LOWORD(v169[3]) = v110;
                      if (!value[0])
                      {
                        goto LABEL_276;
                      }

                      v111 = CFStringCreateWithCharacters(v49, &v169[3], 1);
                      v112 = CFCharacterSetCreateWithCharactersInString(v49, value[0]);
                      v173.length = CFStringGetLength(v111);
                      v173.location = 0;
                      CharacterFromSet = CFStringFindCharacterFromSet(v111, v112, v173, 0, 0);
                      if (v112)
                      {
                        CFRelease(v112);
                      }

                      if (v111)
                      {
                        CFRelease(v111);
                      }

                      if (!CharacterFromSet)
                      {
                        break;
                      }

                      v114 = CFStringGetLength(v104);
                      getUniformRandomNumbers(v105, v98, v114);
LABEL_277:
                      if (v109 >= v98)
                      {
                        goto LABEL_278;
                      }
                    }

                    LOBYTE(v110) = v169[3];
LABEL_276:
                    *(v107 + v109++) = v110;
                    goto LABEL_277;
                  }

LABEL_210:
                  if (v55 != @"false")
                  {
                    goto LABEL_212;
                  }

                  goto LABEL_211;
                }
              }

              v72 = @"abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ123456789";
              CFRetain(@"abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ123456789");
              goto LABEL_210;
            }

            uppercaseLetterCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetUppercaseLetter);
            lowercaseLetterCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetLowercaseLetter);
            decimalDigitCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
            CFArrayAppendValue(Mutable, uppercaseLetterCharacterSet);
            CFArrayAppendValue(Mutable, lowercaseLetterCharacterSet);
LABEL_187:
            CFArrayAppendValue(Mutable, decimalDigitCharacterSet);
            goto LABEL_188;
          }

          if (!v169[3] || !v53)
          {
            if (!v169[3] && v53)
            {
              v55 = @"false";
              v54 = v53;
LABEL_186:
              v72 = @"0123456789";
              goto LABEL_187;
            }

            if (v169[3])
            {
              v91 = v53 == 0;
            }

            else
            {
              v91 = 0;
            }

            if (!v91)
            {
              v54 = 4;
            }
          }

          v55 = @"false";
          goto LABEL_186;
        }

LABEL_121:
        v49 = *v3;
        v56 = CFArrayCreateMutable(*v3, 0, MEMORY[0x1E695E9C0]);
        v169[2] = 0xAAAAAAAAAAAAAAAALL;
        v169[3] = 0xAAAAAAAAAAAAAAAALL;
        if (a1 > 2)
        {
          if (a1 != 3)
          {
            if (a1 == 4)
            {
              v169[3] = 4;
              v169[2] = 7;
              value[0] = 26;
              v59 = CFNumberCreate(v49, kCFNumberCFIndexType, value);
              value[0] = 2;
              v78 = CFNumberCreate(v49, kCFNumberCFIndexType, value);
              v57 = CFNumberCreate(0, kCFNumberCFIndexType, &v169[3]);
              v58 = CFNumberCreate(0, kCFNumberCFIndexType, &v169[2]);
              uppercaseLetterCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetUppercaseLetter);
              decimalDigitCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
              CFArrayAppendValue(v56, uppercaseLetterCharacterSet);
              CFArrayAppendValue(v56, decimalDigitCharacterSet);
              v86 = CFDictionaryCreateForCFTypes(v49, v79, v80, v81, v82, v83, v84, v85, @"UseDefaultPasswordFormat", @"true");
              if (!v59)
              {
                goto LABEL_172;
              }

              goto LABEL_171;
            }

LABEL_167:
            v169[3] = 4;
            v169[2] = 6;
            v57 = CFNumberCreate(0, kCFNumberCFIndexType, &v169[3]);
            v58 = CFNumberCreate(0, kCFNumberCFIndexType, &v169[2]);
            uppercaseLetterCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetUppercaseLetter);
            lowercaseLetterCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetLowercaseLetter);
            decimalDigitCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
            CFArrayAppendValue(v56, uppercaseLetterCharacterSet);
            CFArrayAppendValue(v56, lowercaseLetterCharacterSet);
            CFArrayAppendValue(v56, decimalDigitCharacterSet);
            value[0] = 20;
            v59 = CFNumberCreate(v49, kCFNumberCFIndexType, value);
            goto LABEL_170;
          }

          value[0] = 4;
          v59 = CFNumberCreate(v49, kCFNumberCFIndexType, value);
          v169[2] = 1;
          v169[3] = 4;
          v57 = CFNumberCreate(0, kCFNumberCFIndexType, &v169[3]);
          v58 = CFNumberCreate(0, kCFNumberCFIndexType, &v169[2]);
          decimalDigitCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
          CFArrayAppendValue(v56, decimalDigitCharacterSet);
        }

        else
        {
          if (a1 != 1)
          {
            if (a1 == 2)
            {
              v169[3] = 4;
              v169[2] = 3;
              v57 = CFNumberCreate(0, kCFNumberCFIndexType, &v169[3]);
              v58 = CFNumberCreate(0, kCFNumberCFIndexType, &v169[2]);
              lowercaseLetterCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetLowercaseLetter);
              decimalDigitCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
              value[0] = 12;
              v59 = CFNumberCreate(v49, kCFNumberCFIndexType, value);
              CFArrayAppendValue(v56, lowercaseLetterCharacterSet);
              CFArrayAppendValue(v56, decimalDigitCharacterSet);
              goto LABEL_170;
            }

            goto LABEL_167;
          }

          value[0] = 24;
          v59 = CFNumberCreate(v49, kCFNumberCFIndexType, value);
          v169[3] = 4;
          v169[2] = 6;
          v57 = CFNumberCreate(0, kCFNumberCFIndexType, &v169[3]);
          v58 = CFNumberCreate(0, kCFNumberCFIndexType, &v169[2]);
          uppercaseLetterCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetUppercaseLetter);
          decimalDigitCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
          CFArrayAppendValue(v56, uppercaseLetterCharacterSet);
          CFArrayAppendValue(v56, decimalDigitCharacterSet);
        }

LABEL_170:
        v86 = CFDictionaryCreateForCFTypes(v49, v60, v61, v62, v63, v64, v65, v66, @"UseDefaultPasswordFormat", @"true");
        v78 = 0;
        if (!v59)
        {
LABEL_172:
          if (v56)
          {
            CFRelease(v56);
          }

          if (v57)
          {
            CFRelease(v57);
          }

          if (v58)
          {
            CFRelease(v58);
          }

          if (!v78)
          {
            goto LABEL_242;
          }

          v90 = v78;
          goto LABEL_241;
        }

LABEL_171:
        CFRelease(v59);
        goto LABEL_172;
      }
    }
  }

  if (a1 == 3)
  {
    v169[2] = 0;
    v169[3] = 0;
    v169[1] = 0xAAAAAAAAAAAAAAAALL;
    if (CFDictionaryGetValueIfPresent(theDict, kSecPasswordDefaultForType, value))
    {
      if (value[0])
      {
        v7 = CFGetTypeID(value[0]);
        if (v7 == CFStringGetTypeID() && CFStringCompare(value[0], @"true", 0) == kCFCompareEqualTo)
        {
          goto LABEL_111;
        }
      }
    }

    if (!CFDictionaryGetValueIfPresent(theDict, kSecPasswordMaxLengthKey, &v169[2]))
    {
      goto LABEL_393;
    }

    if (!v169[2])
    {
      goto LABEL_377;
    }

    v8 = CFGetTypeID(v169[2]);
    if (v8 == CFNullGetTypeID())
    {
      v87 = @"To generate a password, need a max length";
      goto LABEL_163;
    }

    if (v169[2] && (v9 = CFGetTypeID(v169[2]), v9 == CFNumberGetTypeID()))
    {
LABEL_393:
      if (CFDictionaryGetValueIfPresent(theDict, kSecPasswordMinLengthKey, &v169[3]))
      {
        if (!v169[3])
        {
          goto LABEL_388;
        }

        v10 = CFGetTypeID(v169[3]);
        if (v10 == CFNullGetTypeID())
        {
          v87 = @"To generate a password, need a min length";
          goto LABEL_163;
        }

        if (!v169[3] || (v11 = CFGetTypeID(v169[3]), v11 != CFNumberGetTypeID()))
        {
LABEL_388:
          v87 = @"The password's min length must be a CFNumberRef";
          goto LABEL_163;
        }
      }

      if (v169[2])
      {
        CFNumberGetValue(v169[2], kCFNumberSInt64Type, &v169[1]);
        v12 = v169[1];
      }

      else
      {
        v12 = 0;
      }

      if (v169[3])
      {
        CFNumberGetValue(v169[3], kCFNumberSInt64Type, &v169[1]);
        v87 = @"The password's length parameters make no sense(is max < min ?)";
        if (v169[1])
        {
          if (v12)
          {
            if (v169[1] <= v12)
            {
              v88 = 0;
              if (v169[1] > 3 || v12 > 3)
              {
LABEL_164:
                if (v88)
                {
                  goto LABEL_165;
                }

                goto LABEL_111;
              }
            }
          }
        }
      }

      else
      {
        v87 = @"The password's length parameters make no sense(is max < min ?)";
      }
    }

    else
    {
LABEL_377:
      v87 = @"The password's max length must be a CFNumberRef";
    }

LABEL_163:
    v88 = CFErrorCreate(*v3, v87, -909, 0);
    goto LABEL_164;
  }

  memset(v169, 170, sizeof(v169));
  memset(v168, 170, sizeof(v168));
  memset(v167, 170, sizeof(v167));
  memset(cf, 170, sizeof(cf));
  v165 = 0xAAAAAAAAAAAAAAAALL;
  if (!CFDictionaryGetValueIfPresent(theDict, kSecPasswordAllowedCharactersKey, &v169[3]))
  {
    goto LABEL_366;
  }

  if (!CFDictionaryGetValueIfPresent(theDict, kSecPasswordMaxLengthKey, &v169[2]))
  {
    goto LABEL_375;
  }

  if (!CFDictionaryGetValueIfPresent(theDict, kSecPasswordMinLengthKey, &v169[1]))
  {
LABEL_376:
    v155 = @"To generate a password, need a min length";
    goto LABEL_383;
  }

  if (!CFDictionaryGetValueIfPresent(theDict, kSecPasswordRequiredCharactersKey, v169))
  {
LABEL_367:
    v155 = @"Need an array of character sets, password must have at least 1 character from each set";
    goto LABEL_383;
  }

  if (v169[3])
  {
    v13 = CFGetTypeID(v169[3]);
    if (v13 == CFNullGetTypeID())
    {
LABEL_366:
      v155 = @"Need a string of characters; password must only contain characters in this string";
      goto LABEL_383;
    }
  }

  if (v169[2])
  {
    v14 = CFGetTypeID(v169[2]);
    if (v14 == CFNullGetTypeID())
    {
LABEL_375:
      v155 = @"To generate a password, need a max length";
      goto LABEL_383;
    }
  }

  if (v169[1])
  {
    v15 = CFGetTypeID(v169[1]);
    if (v15 == CFNullGetTypeID())
    {
      goto LABEL_376;
    }
  }

  if (v169[0])
  {
    v16 = CFGetTypeID(v169[0]);
    if (v16 == CFNullGetTypeID())
    {
      goto LABEL_367;
    }
  }

  if (!v169[3] || (v17 = CFGetTypeID(v169[3]), v17 != CFStringGetTypeID()))
  {
    v155 = @"The password's allowed characters must be a CFStringRef";
    goto LABEL_383;
  }

  if (!v169[2] || (v18 = CFGetTypeID(v169[2]), v18 != CFNumberGetTypeID()))
  {
    v155 = @"The password's max length must be a CFNumberRef";
    goto LABEL_383;
  }

  if (!v169[1] || (v19 = CFGetTypeID(v169[1]), v19 != CFNumberGetTypeID()))
  {
    v155 = @"The password's min length must be a CFNumberRef";
    goto LABEL_383;
  }

  if (!v169[0] || (v20 = CFGetTypeID(v169[0]), v20 != CFArrayGetTypeID()))
  {
    v155 = @"The password's required characters must be an array of CFCharacterSetRefs";
    goto LABEL_383;
  }

  CFNumberGetValue(v169[1], kCFNumberSInt64Type, &v165);
  v21 = v165;
  CFNumberGetValue(v169[2], kCFNumberSInt64Type, &v165);
  if (v21 > v165)
  {
    v155 = @"The password's length parameters make no sense(is max < min ?)";
    goto LABEL_383;
  }

  if (!CFStringGetLength(v169[3]))
  {
    goto LABEL_366;
  }

  if (!CFArrayGetCount(v169[0]))
  {
    goto LABEL_367;
  }

  if (CFDictionaryGetValueIfPresent(theDict, kSecPasswordDisallowedCharacters, &v168[3]))
  {
    if (!v168[3] || (v22 = CFGetTypeID(v168[3]), v22 == CFNullGetTypeID()) || !v168[3] || (v23 = CFGetTypeID(v168[3]), v23 != CFStringGetTypeID()))
    {
      v155 = @"Disallowed Characters dictionary parameter is either null or not a string";
      goto LABEL_383;
    }
  }

  if (CFDictionaryGetValueIfPresent(theDict, kSecPasswordCantEndWithChars, &v168[2]))
  {
    if (!v168[2] || (v24 = CFGetTypeID(v168[2]), v24 == CFNullGetTypeID()) || !v168[2] || (v25 = CFGetTypeID(v168[2]), v25 != CFStringGetTypeID()))
    {
      v155 = @"The dictionary parameter 'EndWith' is either null or not a string";
      goto LABEL_383;
    }
  }

  if (CFDictionaryGetValueIfPresent(theDict, kSecPasswordCantStartWithChars, &v168[1]))
  {
    if (!v168[1] || (v26 = CFGetTypeID(v168[1]), v26 == CFNullGetTypeID()) || !v168[1] || (v27 = CFGetTypeID(v168[1]), v27 != CFStringGetTypeID()))
    {
      v155 = @"The dictionary parameter 'StartWith' is either null or not a string";
      goto LABEL_383;
    }
  }

  if (CFDictionaryGetValueIfPresent(theDict, kSecPasswordGroupSize, v168))
  {
    if (!v168[0] || (v28 = CFGetTypeID(v168[0]), v28 == CFNullGetTypeID()) || !v168[0] || (v29 = CFGetTypeID(v168[0]), v29 != CFNumberGetTypeID()))
    {
      v155 = @"The dictionary parameter 'groupsize' is either null or not a number";
      goto LABEL_383;
    }
  }

  if (CFDictionaryGetValueIfPresent(theDict, kSecPasswordNumberOfGroups, &v167[3]))
  {
    if (!v167[3] || (v30 = CFGetTypeID(v167[3]), v30 == CFNullGetTypeID()) || !v167[3] || (v31 = CFGetTypeID(v167[3]), v31 != CFNumberGetTypeID()))
    {
      v155 = @"The dictionary parameter 'number of groupds' is either null or not a number";
      goto LABEL_383;
    }
  }

  if (CFDictionaryGetValueIfPresent(theDict, kSecPasswordSeparator, &v167[2]))
  {
    if (!v167[2] || (v32 = CFGetTypeID(v167[2]), v32 == CFNullGetTypeID()) || !v167[2] || (v33 = CFGetTypeID(v167[2]), v33 != CFStringGetTypeID()))
    {
      v155 = @"The dictionary parameter 'password separator character' is either null or not a string";
      goto LABEL_383;
    }
  }

  if (CFDictionaryGetValueIfPresent(theDict, kSecPasswordContainsNoMoreThanNSpecificCharacters, &v167[1]))
  {
    if (!v167[1])
    {
      goto LABEL_364;
    }

    v34 = CFGetTypeID(v167[1]);
    if (v34 == CFNullGetTypeID())
    {
      goto LABEL_364;
    }

    if (!v167[1])
    {
      goto LABEL_364;
    }

    v35 = CFGetTypeID(v167[1]);
    if (v35 != CFDictionaryGetTypeID() || !CFDictionaryGetValueIfPresent(v167[1], kSecPasswordCharacterCount, &cf[2]))
    {
      goto LABEL_364;
    }

    if (!cf[2])
    {
      goto LABEL_362;
    }

    v36 = CFGetTypeID(cf[2]);
    if (v36 == CFNullGetTypeID())
    {
      goto LABEL_362;
    }

    if (!cf[2])
    {
      goto LABEL_362;
    }

    v37 = CFGetTypeID(cf[2]);
    if (v37 != CFNumberGetTypeID())
    {
      goto LABEL_362;
    }

    if (!CFDictionaryGetValueIfPresent(v167[1], kSecPasswordCharacters, cf))
    {
LABEL_364:
      v155 = @"The dictionary parameter 'At Most N Characters' is either null or not a string";
      goto LABEL_383;
    }

    if (!cf[0])
    {
      goto LABEL_363;
    }

    v38 = CFGetTypeID(cf[0]);
    if (v38 == CFNullGetTypeID())
    {
      goto LABEL_363;
    }

    if (!cf[0])
    {
      goto LABEL_363;
    }

    v39 = CFGetTypeID(cf[0]);
    if (v39 != CFStringGetTypeID())
    {
      goto LABEL_363;
    }
  }

  if (CFDictionaryGetValueIfPresent(theDict, kSecPasswordContainsAtLeastNSpecificCharacters, v167))
  {
    if (!v167[0])
    {
      goto LABEL_365;
    }

    v40 = CFGetTypeID(v167[0]);
    if (v40 == CFNullGetTypeID())
    {
      goto LABEL_365;
    }

    if (!v167[0])
    {
      goto LABEL_365;
    }

    v41 = CFGetTypeID(v167[0]);
    if (v41 != CFDictionaryGetTypeID() || !CFDictionaryGetValueIfPresent(v167[0], kSecPasswordCharacterCount, &cf[2]))
    {
      goto LABEL_365;
    }

    if (cf[2])
    {
      v42 = CFGetTypeID(cf[2]);
      if (v42 != CFNullGetTypeID())
      {
        if (cf[2])
        {
          v43 = CFGetTypeID(cf[2]);
          if (v43 == CFNumberGetTypeID())
          {
            if (CFDictionaryGetValueIfPresent(v167[0], kSecPasswordCharacters, cf))
            {
              if (cf[0])
              {
                v44 = CFGetTypeID(cf[0]);
                if (v44 != CFNullGetTypeID())
                {
                  if (cf[0])
                  {
                    v45 = CFGetTypeID(cf[0]);
                    if (v45 == CFStringGetTypeID())
                    {
                      goto LABEL_106;
                    }
                  }
                }
              }

LABEL_363:
              v155 = @"The dictionary parameter 'Characters' is either null or not a string";
              goto LABEL_383;
            }

LABEL_365:
            v155 = @"The dictionary parameter 'At Least N Characters' is either null or not a string";
            goto LABEL_383;
          }
        }
      }
    }

LABEL_362:
    v155 = @"The dictionary parameter 'characters' is either null or not a number";
    goto LABEL_383;
  }

LABEL_106:
  if (!CFDictionaryGetValueIfPresent(theDict, kSecPasswordContainsNoMoreThanNConsecutiveIdenticalCharacters, &cf[1]))
  {
    goto LABEL_111;
  }

  if (cf[1])
  {
    v46 = CFGetTypeID(cf[1]);
    if (v46 != CFNullGetTypeID())
    {
      if (cf[1])
      {
        v47 = CFGetTypeID(cf[1]);
        if (v47 == CFNumberGetTypeID())
        {
          goto LABEL_111;
        }
      }
    }
  }

  v155 = @"The dictionary parameter 'Identical Consecutive Characters' is either null or not a number";
LABEL_383:
  v88 = CFErrorCreate(*v3, v155, -909, 0);
  if (!v88)
  {
    goto LABEL_111;
  }

LABEL_165:
  CFRetain(v88);
  CFRelease(v88);
  if (!a2)
  {
    v154 = v88;
    goto LABEL_360;
  }

  Copy = 0;
  *a2 = v88;
  return Copy;
}

uint64_t getUniformRandomNumbers(uint64_t a1, unint64_t a2, unsigned int a3)
{
  v6 = 0;
  v7 = (0xFF % a3) ^ 0xFF;
  v8 = *MEMORY[0x1E69E94D8];
  do
  {
    do
    {
      result = CCRandomCopyBytes();
    }

    while (result == -1);
    v10 = a2 - v6;
    if (a2 > v6)
    {
      v11 = (a1 + v6);
      do
      {
        v13 = *v11++;
        v12 = v13;
        if (v13 < v7)
        {
          *(a1 + v6++) = v12 % a3;
        }

        --v10;
      }

      while (v10);
    }
  }

  while (a2 > v6);
  return result;
}

__CFString *CreateChecksum(int a1, CFStringRef theString, uint64_t a3, const __CFString *a4)
{
  v18 = *MEMORY[0x1E69E9840];
  if (a1 != 4)
  {
    goto LABEL_12;
  }

  v4 = a3;
  *&v5 = 0xAAAAAAAAAAAAAAAALL;
  *(&v5 + 1) = 0xAAAAAAAAAAAAAAAALL;
  v17[0] = v5;
  v17[1] = v5;
  if (a3 > 32)
  {
    goto LABEL_12;
  }

  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  ExternalRepresentation = CFStringCreateExternalRepresentation(SecCFAllocatorZeroize_sAllocator, theString, 0x8000100u, 0);
  if (ExternalRepresentation)
  {
    v9 = ExternalRepresentation;
    ccsha256_di();
    CFDataGetLength(v9);
    CFDataGetBytePtr(v9);
    ccdigest();
    CFRelease(v9);
    Length = CFStringGetLength(a4);
    if (SecCFAllocatorZeroize_sOnce != -1)
    {
      dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
    }

    Mutable = CFStringCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
    if (v4 >= 1)
    {
      v12 = v17;
      do
      {
        v13 = *v12++;
        chars = CFStringGetCharacterAtIndex(a4, v13 % Length);
        CFStringAppendCharacters(Mutable, &chars, 1);
        --v4;
      }

      while (v4);
    }
  }

  else
  {
LABEL_12:
    Mutable = 0;
  }

  v14 = *MEMORY[0x1E69E9840];
  return Mutable;
}

BOOL SecPasswordIsPasswordWeak2(char a1, const __CFString *a2)
{
  uppercaseLetterCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetUppercaseLetter);
  lowercaseLetterCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetLowercaseLetter);
  decimalDigitCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  punctuationCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
  if (CFStringGetLength(a2) < 4)
  {
    return 1;
  }

  v4 = 0;
  do
  {
    if (v4 >= CFStringGetLength(a2))
    {
      if (a1)
      {
        if (CFStringGetLength(a2) == 4)
        {
          if (a2)
          {
            CFRetain(a2);
            Length = CFStringGetLength(a2);
            MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
            v12 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
            if (!CFStringGetCString(a2, v12, MaximumSizeForEncoding + 1, 0x8000100u))
            {
              *v12 = 0;
            }

            CFRelease(a2);
          }

          else
          {
            v12 = strdup(&unk_188967DD7);
          }

          if (!in_word_set(v12))
          {
            v41 = *v12;
            v42 = v12[1];
            if (((v41 == v42) == v12[2]) != v12[3])
            {
              v43 = v12[2];
              v44 = v12[3];
              if ((v41 != v42 || v43 != v44) && (v41 != v43 || v42 != v44))
              {
                v45 = 0;
                while (strcmp(blacklist[v45], v12))
                {
                  if (++v45 == 7)
                  {
                    goto LABEL_97;
                  }
                }
              }
            }
          }

          goto LABEL_95;
        }

        if (CFStringGetLength(a2) != 6)
        {
          return 0;
        }

        if (a2)
        {
          CFRetain(a2);
          v19 = CFStringGetLength(a2);
          v20 = CFStringGetMaximumSizeForEncoding(v19, 0x8000100u);
          v12 = malloc_type_malloc(v20 + 1, 0x100004077774924uLL);
          if (!CFStringGetCString(a2, v12, v20 + 1, 0x8000100u))
          {
            *v12 = 0;
          }

          CFRelease(a2);
        }

        else
        {
          v12 = strdup(&unk_188967DD7);
        }

        v46 = 0;
        do
        {
          if (CFStringGetLength(a2) <= v46)
          {
            break;
          }

          if (v46 == CFStringGetLength(a2) - 1)
          {
            goto LABEL_95;
          }

          v54 = &v12[v46];
          v55 = v12[v46++];
        }

        while (v55 == v54[1]);
        if (isTopTenSixDigitPasscode(a2, v47, v48, v49, v50, v51, v52, v53) || SecPasswordIsPalindrome(a2) || SecPasswordHasRepeatingGroups(a2))
        {
LABEL_95:
          free(v12);
          return 1;
        }
      }

      else
      {
        if (a2)
        {
          CFRetain(a2);
          v13 = CFStringGetLength(a2);
          v14 = CFStringGetMaximumSizeForEncoding(v13, 0x8000100u);
          v12 = malloc_type_malloc(v14 + 1, 0x100004077774924uLL);
          if (!CFStringGetCString(a2, v12, v14 + 1, 0x8000100u))
          {
            *v12 = 0;
          }

          CFRelease(a2);
        }

        else
        {
          v12 = strdup(&unk_188967DD7);
        }

        valuePtr = 1;
        v21 = CFStringGetLength(a2);
        v22 = *MEMORY[0x1E695E480];
        Mutable = CFArrayCreateMutable(*MEMORY[0x1E695E480], 0, MEMORY[0x1E695E9C0]);
        if (v21 > 0)
        {
          if (v21 != 1)
          {
            for (i = 1; i != v21; ++i)
            {
              CharacterAtIndex = CFStringGetCharacterAtIndex(a2, i - 1);
              v26 = CFStringGetCharacterAtIndex(a2, i);
              v27 = valuePtr;
              if (CharacterAtIndex == v26)
              {
                v27 = valuePtr + 1;
              }

              else if (valuePtr != 1)
              {
                v28 = CFNumberCreate(v22, kCFNumberIntType, &valuePtr);
                CFArrayAppendValue(Mutable, v28);
                if (v28)
                {
                  CFRelease(v28);
                }

                v27 = 1;
              }

              valuePtr = v27;
            }
          }

          v29 = CFNumberCreate(v22, kCFNumberIntType, &valuePtr);
          CFArrayAppendValue(Mutable, v29);
          if (v29)
          {
            CFRelease(v29);
          }
        }

        v30 = 0;
        v31 = 0;
        while (CFArrayGetCount(Mutable) > v30)
        {
          if (v30)
          {
            ValueAtIndex = CFArrayGetValueAtIndex(Mutable, v30);
            if (CFNumberCompare(ValueAtIndex, v31, 0) == kCFCompareGreaterThan)
            {
              v31 = ValueAtIndex;
            }
          }

          else
          {
            v31 = CFArrayGetValueAtIndex(Mutable, 0);
          }

          ++v30;
        }

        v56 = 0;
        if (v31)
        {
          CFNumberGetValue(v31, kCFNumberIntType, &v56);
        }

        if (Mutable)
        {
          CFRelease(Mutable);
        }

        v33 = v56;
        if (v33 >= CFStringGetLength(a2) / 2 || SecPasswordIsPalindrome(a2) || isTopTenSixDigitPasscode(a2, v34, v35, v36, v37, v38, v39, v40) || SecPasswordHasRepeatingGroups(a2) && CFStringGetLength(a2) >= 6)
        {
          goto LABEL_95;
        }
      }

      if (!SecPasswordIsPasscodeIncrementingOrDecrementingDigits(a2) && !SecPasswordIsPasswordRepeatingTwoNumbers(a2))
      {
LABEL_97:
        if (v12)
        {
          free(v12);
        }

        return 0;
      }

      goto LABEL_95;
    }

    v58.location = v4;
    v58.length = 1;
    ++v4;
  }

  while (CFStringFindCharacterFromSet(a2, decimalDigitCharacterSet, v58, 0, 0));
  if (a1)
  {
    return 0;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = 0;
  v9 = 0;
  while (v7 < CFStringGetLength(a2))
  {
    v59.location = v7;
    v59.length = 1;
    if (CFStringFindCharacterFromSet(a2, uppercaseLetterCharacterSet, v59, 4uLL, 0))
    {
      ++v9;
    }

    else
    {
      v60.location = v7;
      v60.length = 1;
      if (CFStringFindCharacterFromSet(a2, lowercaseLetterCharacterSet, v60, 4uLL, 0))
      {
        ++v8;
      }

      else
      {
        v61.location = v7;
        v61.length = 1;
        if (CFStringFindCharacterFromSet(a2, decimalDigitCharacterSet, v61, 4uLL, 0))
        {
          ++v5;
        }

        else
        {
          v62.location = v7;
          v62.length = 1;
          if (CFStringFindCharacterFromSet(a2, punctuationCharacterSet, v62, 4uLL, 0))
          {
            ++v6;
          }
        }
      }
    }

    ++v7;
  }

  if (v9 <= 0)
  {
    v15 = 0;
  }

  else
  {
    v15 = 26;
  }

  if (v8 > 0)
  {
    v15 += 26;
  }

  if (v5 > 0)
  {
    v15 += 10;
  }

  if (v6 <= 0)
  {
    v16 = v15;
  }

  else
  {
    v16 = v15 + 33;
  }

  v17 = CFStringGetLength(a2);
  return log2(v16) * v17 < 35.0;
}

const char *in_word_set(unsigned __int8 *a1)
{
  v1 = pinhash_asso_values[a1[3] + 9];
  v2 = pinhash_asso_values[a1[2]];
  v3 = *a1;
  v5 = a1[1];
  v4 = (a1 + 1);
  v6 = v1 + v2 + pinhash_asso_values[v5] + pinhash_asso_values[v3 + 3] + 4;
  if (v6 > 0x113)
  {
    return 0;
  }

  v7 = *(&in_word_set_wordlist + v6);
  if (v3 != *v7 || strcmp(v4, v7 + 1))
  {
    return 0;
  }

  return v7;
}

BOOL isTopTenSixDigitPasscode(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MutableForCFTypesWith = CFArrayCreateMutableForCFTypesWith(*MEMORY[0x1E695E480], a2, a3, a4, a5, a6, a7, a8, @"030379", @"101471");
  for (i = 0; ; ++i)
  {
    Count = CFArrayGetCount(MutableForCFTypesWith);
    if (i >= Count)
    {
      break;
    }

    ValueAtIndex = CFArrayGetValueAtIndex(MutableForCFTypesWith, i);
    if (a1 && ValueAtIndex)
    {
      if (CFEqual(a1, ValueAtIndex))
      {
        break;
      }
    }

    else if (ValueAtIndex == a1)
    {
      break;
    }
  }

  if (MutableForCFTypesWith)
  {
    CFRelease(MutableForCFTypesWith);
  }

  return i < Count;
}

uint64_t SecPasswordIsPalindrome(const __CFString *cf)
{
  if (cf)
  {
    CFRetain(cf);
    Length = CFStringGetLength(cf);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    if (!CFStringGetCString(cf, v4, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      *v4 = 0;
    }

    CFRelease(cf);
  }

  else
  {
    v4 = strdup(&unk_188967DD7);
  }

  v5 = CFStringGetLength(cf);
  v6 = 0;
  if (v5 >= 0)
  {
    v7 = v5 & 1;
  }

  else
  {
    v7 = -(v5 & 1);
  }

  v8 = v5 - 1;
  while (CFStringGetLength(cf) > v6)
  {
    if (v7 == 1 && v8 == v6)
    {
      goto LABEL_18;
    }

    v9 = v4[v6];
    v10 = v4[v8];
    if (!v7 && v8 - 1 == v6)
    {
      if (v9 == v10)
      {
LABEL_18:
        free(v4);
        return 1;
      }

      break;
    }

    ++v6;
    --v8;
    if (v9 != v10)
    {
      break;
    }
  }

  free(v4);
  return 0;
}

uint64_t SecPasswordHasRepeatingGroups(const __CFString *cf)
{
  if (cf)
  {
    CFRetain(cf);
    Length = CFStringGetLength(cf);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    if (!CFStringGetCString(cf, v4, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      *v4 = 0;
    }

    CFRelease(cf);
  }

  else
  {
    v4 = strdup(&unk_188967DD7);
  }

  v5 = 0;
  while (CFStringGetLength(cf) > v5)
  {
    v6 = CFStringGetLength(cf);
    v7 = v4[v5];
    v8 = v4[v5 + 3];
    if (v6 == v5 + 4)
    {
      if (v7 == v8)
      {
        free(v4);
        return 1;
      }

      break;
    }

    ++v5;
    if (v7 != v8)
    {
      break;
    }
  }

  free(v4);
  return 0;
}

uint64_t SecPasswordIsPasscodeIncrementingOrDecrementingDigits(const __CFString *cf)
{
  if (cf)
  {
    CFRetain(cf);
    Length = CFStringGetLength(cf);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    if (!CFStringGetCString(cf, v4, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      *v4 = 0;
    }

    CFRelease(cf);
  }

  else
  {
    v4 = strdup(&unk_188967DD7);
  }

  v5 = 0;
  do
  {
    if (CFStringGetLength(cf) <= v5)
    {
      break;
    }

    if (v5 == CFStringGetLength(cf) - 1)
    {
LABEL_18:
      v10 = 1;
      goto LABEL_20;
    }

    v6 = &v4[v5];
    v7 = v4[v5++] + 1;
  }

  while (v7 == v6[1]);
  v8 = 0;
  v9 = v4 + 1;
  while (CFStringGetLength(cf) > v8)
  {
    if (v8 == CFStringGetLength(cf) - 1)
    {
      goto LABEL_18;
    }

    if (*v9 + 1 != *(v9 - 1))
    {
      v10 = 0;
      if (v8 || *(v9 - 1) != 48 || *v9 != 57)
      {
        goto LABEL_20;
      }
    }

    ++v9;
    ++v8;
  }

  v10 = 0;
LABEL_20:
  free(v4);
  return v10;
}

uint64_t SecPasswordIsPasswordRepeatingTwoNumbers(const __CFString *cf)
{
  if (cf)
  {
    CFRetain(cf);
    Length = CFStringGetLength(cf);
    MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(Length, 0x8000100u);
    v4 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
    if (!CFStringGetCString(cf, v4, MaximumSizeForEncoding + 1, 0x8000100u))
    {
      *v4 = 0;
    }

    CFRelease(cf);
  }

  else
  {
    v4 = strdup(&unk_188967DD7);
  }

  v5 = 0;
  while (1)
  {
    if (CFStringGetLength(cf) <= v5)
    {
LABEL_10:
      v8 = 0;
      goto LABEL_12;
    }

    if (CFStringGetLength(cf) == v5 + 3)
    {
      break;
    }

    v6 = v4[v5];
    v7 = v4[v5++ + 2];
    if (v6 != v7)
    {
      goto LABEL_10;
    }
  }

  v8 = 1;
LABEL_12:
  free(v4);
  return v8;
}

__CFArray *CFArrayCreateMutableForCFTypesWith(const __CFAllocator *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, const void *a9, uint64_t a10)
{
  v16 = &a10;
  v10 = 0;
  v11 = a9;
  if (a9)
  {
    do
    {
      v12 = v16++;
      ++v10;
    }

    while (*v12);
  }

  Mutable = CFArrayCreateMutable(a1, v10, MEMORY[0x1E695E9C0]);
  v17 = &a10;
  if (a9)
  {
    do
    {
      CFArrayAppendValue(Mutable, v11);
      v14 = v17++;
      v11 = *v14;
    }

    while (*v14);
  }

  return Mutable;
}

BOOL SecPasswordIsPasswordWeak(const __CFString *a1)
{
  uppercaseLetterCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetUppercaseLetter);
  lowercaseLetterCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetLowercaseLetter);
  decimalDigitCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetDecimalDigit);
  punctuationCharacterSet = CFCharacterSetGetPredefined(kCFCharacterSetPunctuation);
  if (CFStringGetLength(a1) < 4)
  {
    return 1;
  }

  for (i = 0; i < CFStringGetLength(a1); ++i)
  {
    v33.location = i;
    v33.length = 1;
    if (!CFStringFindCharacterFromSet(a1, decimalDigitCharacterSet, v33, 0, 0))
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v6 = 0;
      for (j = 0; j < CFStringGetLength(a1); ++j)
      {
        v34.location = j;
        v34.length = 1;
        if (CFStringFindCharacterFromSet(a1, uppercaseLetterCharacterSet, v34, 4uLL, 0))
        {
          ++v3;
        }

        else
        {
          v35.location = j;
          v35.length = 1;
          if (CFStringFindCharacterFromSet(a1, lowercaseLetterCharacterSet, v35, 4uLL, 0))
          {
            ++v4;
          }

          else
          {
            v36.location = j;
            v36.length = 1;
            if (CFStringFindCharacterFromSet(a1, decimalDigitCharacterSet, v36, 4uLL, 0))
            {
              ++v5;
            }

            else
            {
              v37.location = j;
              v37.length = 1;
              if (CFStringFindCharacterFromSet(a1, punctuationCharacterSet, v37, 4uLL, 0))
              {
                ++v6;
              }
            }
          }
        }
      }

      if (v3 <= 0)
      {
        v11 = 0;
      }

      else
      {
        v11 = 26;
      }

      if (v4 > 0)
      {
        v11 += 26;
      }

      if (v5 > 0)
      {
        v11 += 10;
      }

      if (v6 <= 0)
      {
        v12 = v11;
      }

      else
      {
        v12 = v11 + 33;
      }

      Length = CFStringGetLength(a1);
      return log2(v12) * Length < 35.0;
    }
  }

  if (CFStringGetLength(a1) == 4)
  {
    if (a1)
    {
      CFRetain(a1);
      v8 = CFStringGetLength(a1);
      MaximumSizeForEncoding = CFStringGetMaximumSizeForEncoding(v8, 0x8000100u);
      v10 = malloc_type_malloc(MaximumSizeForEncoding + 1, 0x100004077774924uLL);
      if (!CFStringGetCString(a1, v10, MaximumSizeForEncoding + 1, 0x8000100u))
      {
        *v10 = 0;
      }

      CFRelease(a1);
    }

    else
    {
      v10 = strdup(&unk_188967DD7);
    }

    if (!in_word_set(v10))
    {
      v17 = *v10;
      v18 = v10[1];
      if (((v17 == v18) == v10[2]) != v10[3])
      {
        v19 = v10[2];
        v20 = v10[3];
        if ((v17 != v18 || v19 != v20) && (v17 != v19 || v18 != v20))
        {
          v28 = 0;
          do
          {
            if (CFStringGetLength(a1) <= v28)
            {
              break;
            }

            if (v28 == CFStringGetLength(a1) - 1)
            {
              goto LABEL_43;
            }

            v29 = &v10[v28];
            v30 = v10[v28++] + 1;
          }

          while (v30 == v29[1]);
          for (k = 0; CFStringGetLength(a1) > k; ++k)
          {
            if (k == CFStringGetLength(a1) - 1)
            {
              goto LABEL_43;
            }

            if (v10[k + 1] + 1 != v10[k] && (k || v10[k] != 48 || v10[k + 1] != 57))
            {
              break;
            }
          }

          v32 = 0;
          while (strcmp(blacklist[v32], v10))
          {
            if (++v32 == 7)
            {
              goto LABEL_77;
            }
          }
        }
      }
    }

LABEL_43:
    free(v10);
    return 1;
  }

  if (a1)
  {
    CFRetain(a1);
    v15 = CFStringGetLength(a1);
    v16 = CFStringGetMaximumSizeForEncoding(v15, 0x8000100u);
    v10 = malloc_type_malloc(v16 + 1, 0x100004077774924uLL);
    if (!CFStringGetCString(a1, v10, v16 + 1, 0x8000100u))
    {
      *v10 = 0;
    }

    CFRelease(a1);
  }

  else
  {
    v10 = strdup(&unk_188967DD7);
  }

  v21 = 0;
  do
  {
    if (CFStringGetLength(a1) <= v21)
    {
      break;
    }

    if (CFStringGetLength(a1) <= v21 + 1)
    {
      goto LABEL_43;
    }

    v22 = v10[v21];
    v23 = v10[++v21];
  }

  while (v22 == v23);
  v24 = 0;
  do
  {
    if (CFStringGetLength(a1) <= v24)
    {
      break;
    }

    if (v24 == CFStringGetLength(a1) - 1)
    {
      goto LABEL_43;
    }

    v25 = &v10[v24];
    v26 = v10[v24++] + 1;
  }

  while (v26 == v25[1]);
  for (m = 0; CFStringGetLength(a1) > m; ++m)
  {
    if (m == CFStringGetLength(a1) - 1)
    {
      goto LABEL_43;
    }

    if (v10[m + 1] + 1 != v10[m] && (m || v10[m] != 48 || v10[m + 1] != 57))
    {
      goto LABEL_78;
    }
  }

LABEL_77:
  if (!v10)
  {
    return 0;
  }

LABEL_78:
  free(v10);
  return 0;
}

CFDictionaryRef SecPasswordCopyDefaultPasswordLength(int a1, __CFString **a2)
{
  if (a1 <= 1)
  {
    if (!a1)
    {
      valuePtr = 4;
      v2 = 5;
      goto LABEL_12;
    }

    if (a1 == 1)
    {
      valuePtr = 4;
      v2 = 6;
      goto LABEL_12;
    }

LABEL_18:
    SecError(-909, a2, @"Password type does not exist.");
    return 0;
  }

  if (a1 == 2)
  {
    valuePtr = 4;
    v2 = 3;
    goto LABEL_12;
  }

  if (a1 == 3)
  {
    valuePtr = 4;
    v2 = 1;
    goto LABEL_12;
  }

  if (a1 != 4)
  {
    goto LABEL_18;
  }

  valuePtr = 4;
  v2 = 7;
LABEL_12:
  v9 = v2;
  v3 = *MEMORY[0x1E695E480];
  v4 = CFNumberCreate(*MEMORY[0x1E695E480], kCFNumberCFIndexType, &valuePtr);
  v5 = CFNumberCreate(v3, kCFNumberCFIndexType, &v9);
  Mutable = CFDictionaryCreateMutable(v3, 0, MEMORY[0x1E695E9D8], MEMORY[0x1E695E9E8]);
  CFDictionaryAddValue(Mutable, kSecPasswordGroupSize, v4);
  CFDictionaryAddValue(Mutable, kSecPasswordNumberOfGroups, v5);
  Copy = CFDictionaryCreateCopy(v3, Mutable);
  if (v4)
  {
    CFRelease(v4);
  }

  if (v5)
  {
    CFRelease(v5);
  }

  if (Mutable)
  {
    CFRelease(Mutable);
  }

  return Copy;
}

BOOL SecPasswordValidatePasswordFormat(int a1, CFStringRef theString, __CFString **a3)
{
  switch(a1)
  {
    case 4:
      v6 = 0;
      v7 = 7;
      range = 2;
      v5 = @"ABCDEFGHJKLMNPQRSTUVWXYZ23456789";
      break;
    case 3:
      v5 = 0;
      range = 0;
      v6 = 1;
      v7 = 1;
      break;
    case 1:
      v5 = 0;
      range = 0;
      v6 = 1;
      v7 = 6;
      break;
    default:
      SecError(-909, a3, @"Password type does not exist.");
      return 0;
  }

  v8 = 5 * v7;
  if (CFStringGetLength(theString) != 5 * v7 - 1)
  {
    return 0;
  }

  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  Mutable = CFStringCreateMutable(SecCFAllocatorZeroize_sAllocator, 0);
  if (!Mutable)
  {
    return 0;
  }

  v10 = Mutable;
  v24 = v5;
  v11 = 0;
  v12 = 4 * v7;
  do
  {
    if (v11)
    {
      v13 = v11;
      if (CFStringGetCharacterAtIndex(theString, v11 - 1) != 45)
      {
        goto LABEL_33;
      }
    }

    else
    {
      v13 = 0;
    }

    if (SecCFAllocatorZeroize_sOnce != -1)
    {
      dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
    }

    v26.location = v13;
    v26.length = 4;
    v14 = CFStringCreateWithSubstring(SecCFAllocatorZeroize_sAllocator, theString, v26);
    CFStringAppend(v10, v14);
    if (v14)
    {
      CFRelease(v14);
    }

    v11 += 5;
  }

  while (v8 != v11);
  if (v6)
  {
    CFRelease(v10);
    return 1;
  }

  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  v27.length = range;
  v27.location = v12 - range;
  v16 = CFStringCreateWithSubstring(SecCFAllocatorZeroize_sAllocator, v10, v27);
  if (!v16)
  {
LABEL_33:
    v22 = v10;
LABEL_34:
    CFRelease(v22);
    return 0;
  }

  v17 = v16;
  if (SecCFAllocatorZeroize_sOnce != -1)
  {
    dispatch_once(&SecCFAllocatorZeroize_sOnce, &__block_literal_global_9069);
  }

  v28.location = 0;
  v28.length = v12 - range;
  v18 = CFStringCreateWithSubstring(SecCFAllocatorZeroize_sAllocator, v10, v28);
  if (!v18)
  {
    CFRelease(v10);
    v22 = v17;
    goto LABEL_34;
  }

  v19 = v18;
  Checksum = CreateChecksum(a1, v18, range, v24);
  if (Checksum)
  {
    v21 = Checksum;
    v15 = CFEqual(Checksum, v17) != 0;
    CFRelease(v10);
    v10 = v21;
  }

  else
  {
    v15 = 0;
  }

  CFRelease(v10);
  CFRelease(v17);
  CFRelease(v19);
  return v15;
}

__CFString *SecPolicyCopyDescription(void *a1)
{
  SecGetDebugDescriptionFormatOptions();

  return SecPolicyCopyFormatDescription(a1);
}

__CFString *SecPolicyCopyFormatDescription(void *a1)
{
  Mutable = CFStringCreateMutable(*MEMORY[0x1E695E480], 0);
  v3 = CFGetTypeID(a1);
  v4 = CFCopyTypeIDDescription(v3);
  v5 = v4;
  v6 = a1[3];
  if (!v6)
  {
    v6 = &stru_1EFA8C6C8;
  }

  CFStringAppendFormat(Mutable, 0, @"<%@: oid: %@ name: %@ options %@", v4, a1[2], v6, a1[4]);
  CFRelease(v5);
  CFStringAppend(Mutable, @" >");
  return Mutable;
}

CFHashCode SecPolicyHash(CFTypeRef *a1)
{
  v2 = a1[3];
  v3 = CFHash(a1[2]);
  if (v2)
  {
    v3 += CFHash(a1[3]);
  }

  return v3 + CFHash(a1[4]);
}

uint64_t SecPolicyCompare(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24) && *(a2 + 24))
  {
    result = CFEqual(*(a1 + 16), *(a2 + 16));
    if (!result)
    {
      return result;
    }

    v5 = *(a1 + 24);
    v6 = *(a2 + 24);
  }

  else
  {
    v5 = *(a1 + 16);
    v6 = *(a2 + 16);
  }

  result = CFEqual(v5, v6);
  if (result)
  {
    return CFEqual(*(a1 + 32), *(a2 + 32)) != 0;
  }

  return result;
}

uint64_t SecPolicyUsesConstrainedAnchors(uint64_t cf2)
{
  if (cf2)
  {
    v1 = cf2;
    if (CFEqual(@"1.2.840.113635.100.1.2", cf2) || CFEqual(@"1.2.840.113635.100.1.3", v1) || CFEqual(@"1.2.840.113635.100.1.8", v1) || CFEqual(@"1.2.840.113635.100.1.9", v1))
    {
      return 0;
    }

    if (!CFEqual(@"1.2.840.113635.100.1.10", v1))
    {
      if (CFEqual(@"1.2.840.113635.100.1.11", v1) || CFEqual(@"1.2.840.113635.100.1.16", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.17", v1) || CFEqual(@"1.2.840.113635.100.1.18", v1) || CFEqual(@"1.2.840.113635.100.1.19", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.20", v1) || CFEqual(@"1.2.840.113635.100.1.21", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.22", v1) || CFEqual(@"1.2.840.113635.100.1.23", v1) || CFEqual(@"1.2.840.113635.100.1.24", v1) || CFEqual(@"1.2.840.113635.100.1.25", v1) || CFEqual(@"1.2.840.113635.100.1.26", v1) || CFEqual(@"1.2.840.113635.100.1.27", v1) || CFEqual(@"1.2.840.113635.100.1.30", v1) || CFEqual(@"1.2.840.113635.100.1.30", v1) || CFEqual(@"1.2.840.113635.100.1.31", v1) || CFEqual(@"1.2.840.113635.100.1.32", v1) || CFEqual(@"1.2.840.113635.100.1.33", v1) || CFEqual(@"1.2.840.113635.100.1.34", v1) || CFEqual(@"1.2.840.113635.100.1.35", v1) || CFEqual(@"1.2.840.113635.100.1.36", v1) || CFEqual(@"1.2.840.113635.100.1.39", v1) || CFEqual(@"1.2.840.113635.100.1.40", v1) || CFEqual(@"1.2.840.113635.100.1.41", v1) || CFEqual(@"1.2.840.113635.100.1.42", v1) || CFEqual(@"1.2.840.113635.100.1.43", v1) || CFEqual(@"1.2.840.113635.100.1.44", v1) || CFEqual(@"1.2.840.113635.100.1.45", v1) || CFEqual(@"1.2.840.113635.100.1.46", v1) || CFEqual(@"1.2.840.113635.100.1.47", v1) || CFEqual(@"1.2.840.113635.100.1.48", v1) || CFEqual(@"1.2.840.113635.100.1.49", v1) || CFEqual(@"1.2.840.113635.100.1.50", v1) || CFEqual(@"1.2.840.113635.100.1.51", v1) || CFEqual(@"1.2.840.113635.100.1.52", v1) || CFEqual(@"1.2.840.113635.100.1.53", v1) || CFEqual(@"1.2.840.113635.100.1.54", v1) || CFEqual(@"1.2.840.113635.100.1.55", v1) || CFEqual(@"1.2.840.113635.100.1.56", v1) || CFEqual(@"1.2.840.113635.100.1.57", v1) || CFEqual(@"1.2.840.113635.100.1.58", v1) || CFEqual(@"1.2.840.113635.100.1.59", v1) || CFEqual(@"1.2.840.113635.100.1.60", v1) || CFEqual(@"1.2.840.113635.100.1.61", v1) || CFEqual(@"1.2.840.113635.100.1.62", v1) || CFEqual(@"1.2.840.113635.100.1.63", v1) || CFEqual(@"1.2.840.113635.100.1.64", v1) || CFEqual(@"1.2.840.113635.100.1.65", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.66", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.67", v1) || CFEqual(@"1.2.840.113635.100.1.68", v1) || CFEqual(@"1.2.840.113635.100.1.69", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.70", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.71", v1) || CFEqual(@"1.2.840.113635.100.1.72", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.73", v1) || CFEqual(@"1.2.840.113635.100.1.74", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.75", v1) || CFEqual(@"1.2.840.113635.100.1.76", v1) || CFEqual(@"1.2.840.113635.100.1.77", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.78", v1) || CFEqual(@"1.2.840.113635.100.1.80", v1))
      {
        return 0;
      }

      if (!CFEqual(@"1.2.840.113635.100.1.81", v1) && !CFEqual(@"1.2.840.113635.100.1.82", v1) && !CFEqual(@"1.2.840.113635.100.1.83", v1) && !CFEqual(@"1.2.840.113635.100.1.84", v1) && !CFEqual(@"1.2.840.113635.100.1.85", v1) && !CFEqual(@"1.2.840.113635.100.1.86", v1) && !CFEqual(@"1.2.840.113635.100.1.87", v1) && !CFEqual(@"1.2.840.113635.100.1.88", v1) && !CFEqual(@"1.2.840.113635.100.1.89", v1) && !CFEqual(@"1.2.840.113635.100.1.90", v1) && !CFEqual(@"1.2.840.113635.100.1.91", v1) && !CFEqual(@"1.2.840.113635.100.1.92", v1) && !CFEqual(@"1.2.840.113635.100.1.93", v1) && !CFEqual(@"1.2.840.113635.100.1.95", v1) && !CFEqual(@"1.2.840.113635.100.1.96", v1) && !CFEqual(@"1.2.840.113635.100.1.97", v1) && !CFEqual(@"1.2.840.113635.100.1.98", v1) && !CFEqual(@"1.2.840.113635.100.1.99", v1) && !CFEqual(@"1.2.840.113635.100.1.100", v1) && !CFEqual(@"1.2.840.113635.100.1.101", v1) && !CFEqual(@"1.2.840.113635.100.1.102", v1) && !CFEqual(@"1.2.840.113635.100.1.103", v1) && !CFEqual(@"1.2.840.113635.100.1.104", v1) && !CFEqual(@"1.2.840.113635.100.1.105", v1) && !CFEqual(@"1.2.840.113635.100.1.106", v1) && !CFEqual(@"1.2.840.113635.100.1.107", v1) && !CFEqual(@"1.2.840.113635.100.1.108", v1) && !CFEqual(@"1.2.840.113635.100.1.109", v1) && !CFEqual(@"1.2.840.113635.100.1.110", v1) && !CFEqual(@"1.2.840.113635.100.1.111", v1) && !CFEqual(@"1.2.840.113635.100.1.112", v1) && !CFEqual(@"1.2.840.113635.100.1.113", v1) && !CFEqual(@"1.2.840.113635.100.1.114", v1) && !CFEqual(@"1.2.840.113635.100.1.115", v1) && !CFEqual(@"1.2.840.113635.100.1.116", v1) && !CFEqual(@"1.2.840.113635.100.1.117", v1) && !CFEqual(@"1.2.840.113635.100.1.118", v1) && !CFEqual(@"1.2.840.113635.100.1.119", v1) && !CFEqual(@"1.2.840.113635.100.1.120", v1) && !CFEqual(@"1.2.840.113635.100.1.121", v1) && !CFEqual(@"1.2.840.113635.100.1.122", v1) && !CFEqual(@"1.2.840.113635.100.1.123", v1) && !CFEqual(@"1.2.840.113635.100.1.124", v1))
      {
        if (!CFEqual(@"1.2.840.113635.100.1.3.1", v1) && !CFEqual(@"1.2.840.113635.100.1.3.2", v1) && !CFEqual(@"1.2.840.113635.100.1.9.1", v1) && !CFEqual(@"1.2.840.113635.100.1.9.2", v1) && !CFEqual(@"1.2.840.113635.100.1.11.1", v1))
        {
          CFEqual(@"1.2.840.113635.100.1.11.2", v1);
        }

        return 0;
      }
    }

    return 1;
  }

  return cf2;
}

BOOL SecPolicyUsesAppleAnchors(_BOOL8 cf2)
{
  if (cf2)
  {
    v1 = cf2;
    if (CFEqual(@"1.2.840.113635.100.1.2", cf2) || CFEqual(@"1.2.840.113635.100.1.3", v1) || CFEqual(@"1.2.840.113635.100.1.8", v1) || CFEqual(@"1.2.840.113635.100.1.9", v1))
    {
      return 0;
    }

    if (!CFEqual(@"1.2.840.113635.100.1.10", v1))
    {
      if (CFEqual(@"1.2.840.113635.100.1.11", v1) || CFEqual(@"1.2.840.113635.100.1.16", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.17", v1) || CFEqual(@"1.2.840.113635.100.1.18", v1) || CFEqual(@"1.2.840.113635.100.1.19", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.20", v1) || CFEqual(@"1.2.840.113635.100.1.21", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.22", v1) || CFEqual(@"1.2.840.113635.100.1.23", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.24", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.25", v1) || CFEqual(@"1.2.840.113635.100.1.26", v1) || CFEqual(@"1.2.840.113635.100.1.27", v1) || CFEqual(@"1.2.840.113635.100.1.30", v1) || CFEqual(@"1.2.840.113635.100.1.30", v1) || CFEqual(@"1.2.840.113635.100.1.31", v1) || CFEqual(@"1.2.840.113635.100.1.32", v1) || CFEqual(@"1.2.840.113635.100.1.33", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.34", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.35", v1) || CFEqual(@"1.2.840.113635.100.1.36", v1) || CFEqual(@"1.2.840.113635.100.1.39", v1) || CFEqual(@"1.2.840.113635.100.1.40", v1) || CFEqual(@"1.2.840.113635.100.1.41", v1) || CFEqual(@"1.2.840.113635.100.1.42", v1) || CFEqual(@"1.2.840.113635.100.1.43", v1) || CFEqual(@"1.2.840.113635.100.1.44", v1) || CFEqual(@"1.2.840.113635.100.1.45", v1) || CFEqual(@"1.2.840.113635.100.1.46", v1) || CFEqual(@"1.2.840.113635.100.1.47", v1) || CFEqual(@"1.2.840.113635.100.1.48", v1) || CFEqual(@"1.2.840.113635.100.1.49", v1) || CFEqual(@"1.2.840.113635.100.1.50", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.51", v1) || CFEqual(@"1.2.840.113635.100.1.52", v1) || CFEqual(@"1.2.840.113635.100.1.53", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.54", v1) || CFEqual(@"1.2.840.113635.100.1.55", v1) || CFEqual(@"1.2.840.113635.100.1.56", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.57", v1) || CFEqual(@"1.2.840.113635.100.1.58", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.59", v1) || CFEqual(@"1.2.840.113635.100.1.60", v1) || CFEqual(@"1.2.840.113635.100.1.61", v1) || CFEqual(@"1.2.840.113635.100.1.62", v1) || CFEqual(@"1.2.840.113635.100.1.63", v1) || CFEqual(@"1.2.840.113635.100.1.64", v1) || CFEqual(@"1.2.840.113635.100.1.65", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.66", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.67", v1) || CFEqual(@"1.2.840.113635.100.1.68", v1) || CFEqual(@"1.2.840.113635.100.1.69", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.70", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.71", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.72", v1) || CFEqual(@"1.2.840.113635.100.1.73", v1) || CFEqual(@"1.2.840.113635.100.1.74", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.75", v1) || CFEqual(@"1.2.840.113635.100.1.76", v1) || CFEqual(@"1.2.840.113635.100.1.77", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.78", v1) || CFEqual(@"1.2.840.113635.100.1.80", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.81", v1) || CFEqual(@"1.2.840.113635.100.1.82", v1) || CFEqual(@"1.2.840.113635.100.1.83", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.84", v1) || CFEqual(@"1.2.840.113635.100.1.85", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.86", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.87", v1) || CFEqual(@"1.2.840.113635.100.1.88", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.89", v1) || CFEqual(@"1.2.840.113635.100.1.90", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.91", v1) || CFEqual(@"1.2.840.113635.100.1.92", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.93", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.95", v1) || CFEqual(@"1.2.840.113635.100.1.96", v1) || CFEqual(@"1.2.840.113635.100.1.97", v1) || CFEqual(@"1.2.840.113635.100.1.98", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.99", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.100", v1) || CFEqual(@"1.2.840.113635.100.1.101", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.102", v1) || CFEqual(@"1.2.840.113635.100.1.103", v1) || CFEqual(@"1.2.840.113635.100.1.104", v1) || CFEqual(@"1.2.840.113635.100.1.105", v1) || CFEqual(@"1.2.840.113635.100.1.106", v1) || CFEqual(@"1.2.840.113635.100.1.107", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.108", v1))
      {
        return 0;
      }

      if (CFEqual(@"1.2.840.113635.100.1.109", v1) || CFEqual(@"1.2.840.113635.100.1.110", v1))
      {
        return 1;
      }

      if (CFEqual(@"1.2.840.113635.100.1.111", v1))
      {
        return 0;
      }

      if (!CFEqual(@"1.2.840.113635.100.1.112", v1) && !CFEqual(@"1.2.840.113635.100.1.113", v1) && !CFEqual(@"1.2.840.113635.100.1.114", v1))
      {
        if (!CFEqual(@"1.2.840.113635.100.1.115", v1) && !CFEqual(@"1.2.840.113635.100.1.116", v1) && !CFEqual(@"1.2.840.113635.100.1.117", v1) && !CFEqual(@"1.2.840.113635.100.1.118", v1) && !CFEqual(@"1.2.840.113635.100.1.119", v1) && !CFEqual(@"1.2.840.113635.100.1.120", v1) && !CFEqual(@"1.2.840.113635.100.1.121", v1) && !CFEqual(@"1.2.840.113635.100.1.122", v1) && !CFEqual(@"1.2.840.113635.100.1.123", v1))
        {
          return CFEqual(@"1.2.840.113635.100.1.124", v1) != 0;
        }

        return 0;
      }
    }

    return 1;
  }

  return cf2;
}